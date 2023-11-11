declare namespace __AdaptedExports {
  /** Exported memory */
  export const memory: WebAssembly.Memory;
  /**
   * ../assembly/shock/binaryToList
   * @param code `~lib/string/String`
   * @returns `../assembly/shock/List`
   */
  export function binaryToList(code: string): __Record4<never>;
  /**
   * ../assembly/shock/binaryToVisual
   * @param code `~lib/string/String`
   * @param addCommas `bool`
   * @returns `~lib/string/String`
   */
  export function binaryToVisual(code: string, addCommas: boolean): string;
  /**
   * ../assembly/shock/binary
   * @param term `../assembly/shock/List`
   * @returns `~lib/string/String`
   */
  export function binary(term: __Record4<undefined>): string;
  /**
   * ../assembly/shock/_application
   * @param left `../assembly/shock/List`
   * @param right `../assembly/shock/List`
   * @returns `../assembly/shock/List`
   */
  export function _application(left: __Record4<undefined>, right: __Record4<undefined>): __Record4<never>;
  /**
   * ../assembly/shock/_function
   * @param variable `../assembly/shock/List`
   * @param statement `../assembly/shock/List`
   * @returns `../assembly/shock/List`
   */
  export function _function(variable: __Record4<undefined>, statement: __Record4<undefined>): __Record4<never>;
  /**
   * ../assembly/shock/visualToBinary
   * @param code `~lib/string/String`
   * @returns `~lib/string/String`
   */
  export function visualToBinary(code: string): string;
  /** ../assembly/shock/constants */
  export const constants: {
    /** @type `../assembly/shock/Exports` */
    get value(): __Record7<never>
  };
  /**
   * ../assembly/shock/buildNumber
   * @param number `i32`
   * @returns `~lib/string/String`
   */
  export function buildNumber(number: number): string;
  /**
   * ../assembly/shock/evaluate
   * @param term `../assembly/shock/List`
   * @returns `../assembly/shock/List`
   */
  export function evaluate(term: __Record4<undefined>): __Record4<never>;
}
/** ../assembly/shock/List */
declare interface __Record4<TOmittable> {
  /** @type `~lib/array/Array<../assembly/shock/List>` */
  elements: Array<__Record4<never>>;
}
/** ../assembly/shock/Exports */
declare interface __Record7<TOmittable> {
  /** @type `../assembly/shock/List` */
  null: __Record4<never>;
  /** @type `../assembly/shock/List` */
  _0: __Record4<never>;
  /** @type `../assembly/shock/List` */
  _1: __Record4<never>;
  /** @type `../assembly/shock/List` */
  _2: __Record4<never>;
  /** @type `../assembly/shock/List` */
  _3: __Record4<never>;
  /** @type `../assembly/shock/List` */
  _4: __Record4<never>;
  /** @type `../assembly/shock/List` */
  nullfunction: __Record4<never>;
  /** @type `../assembly/shock/List` */
  cat: __Record4<never>;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
