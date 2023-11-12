class list {
	terms: list[]
	constructor(terms: list[]) { this.terms = terms }

	public replace(variable: list, statement: list): list {
		if (compare(this, variable)) return statement
		else if (compare(this.terms[0], _1) && this.terms.length === 3 && compare(variable, this.terms[1])) {
			this.terms[1].terms.push(_null)

			return new list([_1, this.terms[1], this.terms[2].replace(this.terms[1], this.terms[1])])
		}

		let newList: list[] = []
		for (let i = 0; i < this.terms.length; i++) newList.push(this.terms[i].replace(variable, statement))

		return new list(newList)
	}
}

const cs = ['0'.charCodeAt(0), '1'.charCodeAt(0)]

export function b2l(code: string): list {
	const size = code.length
	let terms: list = new list([])
	let i: i32 = 0;

	while (i < size) {
		if (code.charAt(i) === '0') {
			let data = ''
			let depth = 0
			let character = code.charAt(++i)
			while (i < size && (character !== '1' || depth > 0)) {
				switch (character.charCodeAt(0)) {
					case cs[0]: depth++; break
					case cs[1]: depth--; break
					default: break
				}
				data += character
				character = code.charAt(++i)
			}

			terms.terms.push(b2l(data))
		}

		i++
	}

	return terms
}

export function l2b(term: list): string {
	let newList: string[] = []
	for (let i = 0; i < term.terms.length; i++) {
		let element = term.terms[i]
		newList.push(l2b(element))
	}

	return '0' + newList.join('') + '1'
}

const _null = b2l('01').terms[0]
const _1 = b2l('0011').terms[0]
const _2 = b2l('001011').terms[0]

function compare(left: list, right: list): boolean {
	return l2b(left) === l2b(right)
}

function __evaluate(term: list): list {
	let terms = term.terms
	if (terms.length === 0) return term

	if (terms.length === 3) {
		if (compare(terms[0], _1)) return new list([_1, terms[1], __evaluate(terms[2])])
		else if (compare(terms[0], _2) && compare(terms[1].terms[0], _1) && terms[1].terms.length === 3) return terms[1].terms[2].replace(terms[1].terms[1], terms[2])
	}

	return term.terms[0]
}

export function evaluate(term: string): string { return l2b(__evaluate(b2l(term).terms[0])) }