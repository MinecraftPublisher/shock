class List {
    elements: List[] = []

    public push(element: List): void {
        this.elements.push(element)
    }

    public binary(): string {
        let newList: string[] = []
        for (let i = 0; i < this.elements.length; i++) {
            let element = this.elements[i]
            newList.push(element.binary())
        }

        return '0' + newList.join('') + '1'
    }

    public replace(variable: List, statement: List): List {
        if (Assert.ll(this, variable)) {
            return statement
        } else {
            // might be a lambda
            if (Assert.isOne(this.elements[0]) && this.elements.length === 3) {
                if (Assert.ll(variable, this.elements[1])) {
                    // α reduction required
                    let new_variable = this.elements[1]
                    new_variable.push(_null)

                    return list([_1, new_variable, this.elements[2].replace(this.elements[1], new_variable)])
                }
            }

            // return β reduction result
            let newList: List[] = []
            for (let i = 0; i < this.elements.length; i++) {
                let element = this.elements[i]
                newList.push(element.replace(variable, statement))
            }

            return list(newList)
        }
    }
}

function list(elements: List[]): List {
    let l = new List()
    l.elements = elements
    return l
}

function empty(): List {
    return list([])
}

/**
## Shock is a language completely involving lists.

All there is in Shock are lists.

An empty list is null.

`null = []`: null

---

A list filled with x nulls is a number, Where x is the numeric value.

`0 = []` = false = null

`1 = [null] = [[]]` = true

`2 = [null null] = [[] []]`

`3 = [null null null] = [[] [] []]`

...

---

Letters are handled similarly.

`a = [null] = 1`

`b = [null null] = 2`

`c = [null null null] = 3`

...

---

A list with its first element being 1 is a function.

The second element is the variable name and the third is the instruction.

Variable names must start at the index 1, So a variable cannot be named 0.

This is the null function, The simplest function to implement.

`nullfunction = [1, 1, null] = [[[]] [[]] []]`

This is the cat function, The next simplest function to implement.

`cat = [1, 1, 1] = [[[]] [[]] [[]]]`

---

A list with its first element being a 2 is an application,

And the two next elements are in order the list to be applied to and the list to apply.

`[2 cat 2] = [[[] []] cat [[] []]] = [[[] []] [[] [[]] [[[]]]] [[] []]]`

This term reduces to (λx. x 2), Which becomes 2.

---

Binary representation

Spaces and commas are not present in the binary representation. Null, True, False and other numbers reduce to their list form.

An open bracket is shown by 0, And a close bracket is shown by 1.

`null = 01`

`0 = 01`

`1 = 0011`

`2 = 0010001111`

`3 = 00101011`

...

`nullfunction = 000110011011`

`cat = 00011001100111`

Any Shock code is valid if the number of 0s and 1s (or `[`s and `]`s) are equal.

In other words, Any valid Shock code's length is always even. (Ignored characters such as ` ` and `,` do not count)
 */

export function binaryToList(code: string): List {
    const size = code.length
    let terms: List = empty()
    let i: i32 = 0;

    while (i < size) {
        let character = code.charAt(i)
        if (character === '0') {
            let data = ''
            let depth = 0
            character = code.charAt(++i)
            while (i < size && (character !== '1' || depth > 0)) {
                if (character === '0') depth++
                if (character === '1') depth--

                data += character
                character = code.charAt(++i)
            }

            terms.push(binaryToList(data))
        } else {
            // Ignore
        }

        i++
    }

    return terms
}

/**
 * Takes in binary formatted shock code and returns the visual formatted code.
 * @param code Binary formatted Shock code, eg. `0001100110001111`
 * @param addCommas Wether or not to add commas between terms.
 * @returns Visual formatted Shock code, eg. `[[[]] [[]] [[[]]]]` with `addCommas = false` and `[[[]], [[]], [[[]]]]` with `addCommas = true`
 */
export function binaryToVisual(code: string, addCommas: bool): string {
    let withComma = code.replaceAll('0', '[').replaceAll('1', ']').replaceAll('][', '], [')
        .replaceAll('[]', 'null')

    for (let i = 1; i < 100; i++) {
        withComma = withComma.replaceAll(buildNumber(i).replaceAll('0', '[').replaceAll('1', ']').replaceAll('][', '], [').replaceAll('[]', 'null'), i.toString())
    }

    withComma = withComma.replaceAll('[1, 1, null]', 'cat')

    let withoutComma = withComma.replaceAll('], [', '] [')

    return addCommas ? withComma : withoutComma
}

export function binary(term: List): string {
    let newList: string[] = []
    for (let i = 0; i < term.elements.length; i++) {
        let element = term.elements[i]
        newList.push(element.binary())
    }

    return '0' + newList.join('') + '1'
}

export function _application(left: List, right: List): List {
    return list([_2, left, right])
}

export function _function(variable: List, statement: List): List {
    return list([_1, variable, statement])
}

/**
 * Takes in visual formatted code and returns the binary formatted code.
 * @param code Visual formatted Shock code, eg. `[[] []]`
 * @returns Binary formatted Shock code, eg. `001011`
 */
export function visualToBinary(code: string): string {
    const size = code.length
    let i: i32 = 0
    let output = ''

    while (i < size) {
        let character = code.charAt(i)

        if (character === '[') output += '0'
        else if (character === ']') output += '1'
        else { /* Ignore */ }

        i++
    }

    return output
}

const _null = binaryToList(visualToBinary('[]')).elements[0]
const _0 = _null
const _1 = binaryToList(visualToBinary('[[]]')).elements[0]
const _2 = binaryToList(visualToBinary('[[], []]')).elements[0]
const _3 = binaryToList(visualToBinary('[[], [], []]')).elements[0]
const _4 = binaryToList(visualToBinary('[[], [], [], []]')).elements[0]
const nullfunction = binaryToList(visualToBinary('[[[]], [[]], []]')).elements[0] // [1, 1, null]
const cat = binaryToList(visualToBinary('[[[]], [[]], [[]]]')).elements[0] // [1, 1, 1]

class Exports {
    public null: List = _null
    public _0: List = _0
    public _1: List = _1
    public _2: List = _2
    public _3: List = _3
    public _4: List = _4
    public nullfunction: List = nullfunction
    public cat: List = cat
}

export const constants: Exports = {
    null: _null,
    _0, _1, _2, _3, _4,
    nullfunction, cat
}

/**
* Returns a string representing the binary form of the supplied number
* @param number 
*/
export function buildNumber(number: i32): string {
    let output = '0'
    for (let i = 0; i < number; i++) output += '01'
    output += '1'

    return output
}

class Assert {
    static ll(left: List, right: List): boolean {
        return left.binary() === right.binary()
    }

    static lb(left: List, right: string): boolean {
        return left.binary() === right
    }

    static bl(left: string, right: List): boolean {
        return left === right.binary()
    }

    static bb(left: string, right: string): boolean {
        return left === right
    }

    static isNull(term: List): boolean {
        return this.ll(term, _null)
    }

    static isFalse(term: List): boolean {
        return this.isNull(term)
    }

    static isTrue(term: List): boolean {
        return this.ll(term, _1)
    }

    static isOne(term: List): boolean {
        return this.isTrue(term)
    }

    static isTwo(term: List): boolean {
        return this.ll(term, _2)
    }
}

export function evaluate(term: List): List {
    let terms = term.elements
    if (terms.length === 0) return term

    if (Assert.isOne(terms[0])) {
        // First element is one, The term might be a function.
        if (terms.length === 3) {
            let variable = terms[1]
            let statement = terms[2]

            return list([_1, variable, evaluate(statement)])
        }

        return term
    } else if (Assert.isTwo(terms[0])) {
        // First element is two, The term might be an application.
        if (terms.length === 3) {
            let left = terms[1]
            let right = terms[2]

            // left side is a function, replace values
            if (Assert.isOne(left.elements[0]) && left.elements.length === 3) {
                let variable = left.elements[1]
                let statement = left.elements[2]

                // return replaced statement
                // ((λvar. expr) b)
                // return expr.replace(var, b)
                return statement.replace(variable, right)
            }

            // cannot modify application yet...
            // (a b)
            // return (a b)
        }

        // otherwise not an application, just return it.
    }

    return term
}