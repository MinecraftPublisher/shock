export async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    binaryToList(code) {
      // ../assembly/shock/binaryToList(~lib/string/String) => ../assembly/shock/List
      code = __lowerString(code) || __notnull();
      return __liftRecord4(exports.binaryToList(code) >>> 0);
    },
    binaryToVisual(code, addCommas) {
      // ../assembly/shock/binaryToVisual(~lib/string/String, bool) => ~lib/string/String
      code = __lowerString(code) || __notnull();
      addCommas = addCommas ? 1 : 0;
      return __liftString(exports.binaryToVisual(code, addCommas) >>> 0);
    },
    binary(term) {
      // ../assembly/shock/binary(../assembly/shock/List) => ~lib/string/String
      term = __lowerRecord4(term) || __notnull();
      return __liftString(exports.binary(term) >>> 0);
    },
    _application(left, right) {
      // ../assembly/shock/_application(../assembly/shock/List, ../assembly/shock/List) => ../assembly/shock/List
      left = __retain(__lowerRecord4(left) || __notnull());
      right = __lowerRecord4(right) || __notnull();
      try {
        return __liftRecord4(exports._application(left, right) >>> 0);
      } finally {
        __release(left);
      }
    },
    _function(variable, statement) {
      // ../assembly/shock/_function(../assembly/shock/List, ../assembly/shock/List) => ../assembly/shock/List
      variable = __retain(__lowerRecord4(variable) || __notnull());
      statement = __lowerRecord4(statement) || __notnull();
      try {
        return __liftRecord4(exports._function(variable, statement) >>> 0);
      } finally {
        __release(variable);
      }
    },
    visualToBinary(code) {
      // ../assembly/shock/visualToBinary(~lib/string/String) => ~lib/string/String
      code = __lowerString(code) || __notnull();
      return __liftString(exports.visualToBinary(code) >>> 0);
    },
    constants: {
      // ../assembly/shock/constants: ../assembly/shock/Exports
      valueOf() { return this.value; },
      get value() {
        return __liftRecord7(exports.constants.value >>> 0);
      }
    },
    buildNumber(number) {
      // ../assembly/shock/buildNumber(i32) => ~lib/string/String
      return __liftString(exports.buildNumber(number) >>> 0);
    },
    evaluate(term) {
      // ../assembly/shock/evaluate(../assembly/shock/List) => ../assembly/shock/List
      term = __lowerRecord4(term) || __notnull();
      return __liftRecord4(exports.evaluate(term) >>> 0);
    },
  }, exports);
  function __liftRecord4(pointer) {
    // ../assembly/shock/List
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      elements: __liftArray(pointer => __liftRecord4(__getU32(pointer)), 2, __getU32(pointer + 0)),
    };
  }
  function __lowerRecord4(value) {
    // ../assembly/shock/List
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 4));
    __setU32(pointer + 0, __lowerArray((pointer, value) => { __setU32(pointer, __lowerRecord4(value) || __notnull()); }, 5, 2, value.elements) || __notnull());
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord7(pointer) {
    // ../assembly/shock/Exports
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      null: __liftRecord4(__getU32(pointer + 0)),
      _0: __liftRecord4(__getU32(pointer + 4)),
      _1: __liftRecord4(__getU32(pointer + 8)),
      _2: __liftRecord4(__getU32(pointer + 12)),
      _3: __liftRecord4(__getU32(pointer + 16)),
      _4: __liftRecord4(__getU32(pointer + 20)),
      nullfunction: __liftRecord4(__getU32(pointer + 24)),
      cat: __liftRecord4(__getU32(pointer + 28)),
    };
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 2) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    __dataview.setUint32(header + 12, length, true);
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
  }
  const refcounts = new Map();
  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(`invalid refcount '${refcount}' for reference '${pointer}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}
