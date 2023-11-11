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
