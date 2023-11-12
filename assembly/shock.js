function replace(list, variable, statement) {
    if (compare(list, variable)) return statement
    else if (compare(list[0], _1) && list.length === 3 && compare(variable, list[1])) return [_1, [...list[1], _null], replace(list[2], list[1], [...list[1], _null])]

    return list.map(e => replace(e, variable, statement))
}

const cs = ['0'.charCodeAt(0), '1'.charCodeAt(0)]

function b2l(code) {
    const size = code.length
    let terms = []
    let i = 0;

    while (i < size) {
        if (code.charAt(i) === '0') {
            let data = ''
            let depth = 0
            let character = code.charAt(++i)
            while (i < size && (character !== '1' || depth > 0)) {
                switch (character.charCodeAt(0)) { case cs[0]: depth++; break; case cs[1]: depth--; break; default: break }
                data += character
                character = code.charAt(++i)
            }

            terms.push(b2l(data))
        }

        i++
    }

    return terms
}

function l2b(term) {
    let newList = []
    for (let i = 0; i < term.length; i++) {
        let element = term[i]
        newList.push(l2b(element))
    }

    return '0' + newList.join('') + '1'
}

export function encode(string) {
    return string.replace(/\d+/g, (g) => `0${new Array(parseInt(g)).fill('01').join('')}1`).replaceAll('[', '0').replaceAll(']', '1').replaceAll('cat', '00011001100111').replaceAll('nullfunction', '000110011011').replace(/[^01]+/g, '')
}

export function decode(string) {
    return string.replaceAll('0', '[').replaceAll('1', ']').replaceAll('][', '] [').replaceAll(/\[(\[\] ?)+\]/g, (g) => `${g.replaceAll(' ', '').length / 2 - 1}`).replaceAll('[]', 'null').replaceAll('[1 1 1]', 'cat').replaceAll('[1 1 null]', 'nullfunction')
}

const _null = b2l('01')[0]
const _1 = b2l('0011')[0]
const _2 = b2l('001011')[0]

function compare(left, right) {
    if(!left) {
        if(!right) return true
        else return false
    }

    return l2b(left) == l2b(right)
}

function __evaluate(term) {
    console.log('EVALUATING')
    let terms = term
    if (terms.length === 0) return term

    if (terms.length === 3) {
        console.log('LENGTH THREE')
        if (compare(terms[0], _1)) {
            console.log('FUNCTION')
            return [_1, terms[1], __evaluate(terms[2])]
        } else if (compare(terms[0], _2) && compare(terms[1][0], _1) && terms[1].length === 3) {
            console.log('APPLICATION')
            return replace(terms[1][2], terms[1][1], terms[2])
        }
    }

    return term[0]
}

export function evaluate(term) {
    let result = l2b(__evaluate(b2l(term)[0]))
    while(result.includes('0001011')) result = l2b(__evaluate(result))
    return result
}