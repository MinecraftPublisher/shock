import * as shock from '../build/release'
import * as fs from 'fs'

// (cat 2) -> 2
let term = shock._application(shock.constants.value.nullfunction, shock.binaryToList(shock.buildNumber(2)).elements[0])
let evaluated = shock.evaluate(term)
console.log(shock.binaryToVisual(shock.binary(term), true))
// console.log(shock.binaryToVisual(shock.binary(evaluated), true))