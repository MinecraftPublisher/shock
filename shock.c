#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;
typedef int bool;
#define true  1
#define false 0

// ------------------------- LIST -------------------------
/**
 * # List struct
 */
typedef struct list {
    int          size;
    struct list* list;
} list;

list createList(int count, ...) {
    va_list _l;
    va_start(_l, count);
    list _list;
    _list.size = count;
    _list.list = malloc(sizeof(list) * count);

    for (int i = 0; i < count; i++) { _list.list[ i ] = va_arg(_l, list); }

    return _list;
}

list empty() { return createList(0); }

list push(list _l, list element, bool freeLast) {
    list newList;
    newList.size = _l.size + 1;
    newList.list = malloc(sizeof(list) * newList.size);

    for (int i = 0; i < newList.size; i++) { newList.list[ i ] = _l.list[ i ]; }
    newList.list[ _l.size ] = element;

    if (freeLast) free(_l.list);
    return newList;
}

string binary(list _l) {
    string children[ _l.size ];
    int    length = 2;

    for (int i = 0; i < _l.size; i++) {
        children[ i ] = binary(_l.list[ i ]);
        length += strlen(children[ i ]);
    }

    string output = malloc(sizeof(char) * length);
    output[ 0 ]   = '0';
    int index     = 1;
    for (int i = 0; i < _l.size; i++) {
        for (int j = 0; j < strlen(children[ i ]); j++) { output[ index++ ] = children[ i ][ j ]; }
    }
    output[ index++ ] = '1';

    return output;
}

// ------------------------- CONSTANTS -------------------------
list null;
list zero;
list one;
list two;
list nullfunction;
list cat;
// ------------------------- CONSTANTS -------------------------

// ------------------------- ASSERTIONS -------------------------
#define assert_ll(left, right) strcmp(binary(left), binary(right)) == 0
#define assert_lb(left, right) strcmp(binary(left), right) == 0
#define assert_bl(left, right) strcmp(left, binary(right)) == 0
#define assert_bb(left, right) strcmp(left, right) == 0

#define isNull(term)  assert_ll(term, null)
#define isFalse(term) isNull(term)
#define isTrue(term)  assert_ll(term, one)
#define isOne(term)   isTrue(term)
#define isTwo(term)   assert_ll(term, two)
// ------------------------- ASSERTIONS -------------------------

list replace(list term, list variable, list statement) {
    if (assert_ll(term, variable)) return statement;

    // Check for lambda
    if (isOne(term.list[ 0 ]) && term.size == 3) {
        if (assert_ll(variable, term.list[ 1 ])) {
            // α reduction
            // simple α reduction, just bump variable name by one
            list new = push(term.list[ 1 ], null, false);

            return createList(3, one, new, replace(term.list[ 2 ], term.list[ 1 ], new));
        }
    }

    // β reduction
    // simple β reduction, just replace all occurences of variable with statement recursively
    list new = empty();
    for (int i = 0; i < term.size; i++) {
        list element = term.list[ i ];
        new          = push(new, replace(element, variable, statement), true);
    }

    return new;
}
// ------------------------- LIST -------------------------

// ------------------------- PARSER -------------------------
list binaryToList(string code) {
    const int size  = strlen(code);
    list      terms = empty();
    int       i     = 0;

    while (i < size) {
        char character = code[ i ];

        if (character == '0') {
            int    size = 0;
            string data = malloc(sizeof(char) * size);

            int depth = 0;
            character = code[ ++i ];

            while (i < size && (character != '1' || depth > 0)) {
                if (character == '0') depth++;
                if (character == '1') depth--;

                data             = realloc(data, ++size);
                data[ size - 1 ] = code[ ++i ];
            }

            terms = push(terms, binaryToList(data), true);
        } // else, ignore

        i++;
    }

    return terms;
}

string replaceAll(string original, string replace, string with) {
    string result;             // the return string
    string insert;             // the next insert point
    string temp;               // varies
    int    replacement_length; // length of rep (the string to remove)
    int    substitute_length;  // length of with (the string to replace rep with)
    int    front_length;       // distance between rep and end of last rep
    int    count;              // number of replacements

    // sanity checks and initialization
    if (!original || !replace) return NULL;
    replacement_length = strlen(replace);
    if (replacement_length == 0) return NULL; // empty rep causes infinite loop during count
    if (!with) with = "";
    substitute_length = strlen(with);

    // count the number of replacements needed
    insert = original;
    for (count = 0; (temp = strstr(insert, replace)); ++count) {
        insert = temp + replacement_length;
    }

    temp = result = malloc(strlen(original) + (substitute_length - replacement_length) * count + 1);

    if (!result) return NULL;

    // first time through the loop, all the variable are set correctly
    // from here on,
    //    tmp points to the end of the result string
    //    ins points to the next occurrence of rep in orig
    //    orig points to the remainder of orig after "end of rep"
    while (count--) {
        insert       = strstr(original, replace);
        front_length = insert - original;
        temp         = strncpy(temp, original, front_length) + front_length;
        temp         = strcpy(temp, with) + substitute_length;
        original += front_length + replacement_length; // move to next "end of rep"
    }
    strcpy(temp, original);
    return result;
}

string buildNumber(int number) {
    string output = malloc(sizeof(char) * (number * 2 + 2));
    output[ 0 ]   = '0';
    for (int i = 0; i < number; i++) {
        output[ i * 2 + 1 ] = '0';
        output[ i * 2 + 2 ] = '1';
    }
    output[ number * 2 + 1 ] = '1';

    return output;
}

string itoa(int value) {
    int size = floor(log10(value)) + 1;

    string str = malloc(size + 1); // Add space for null terminator
    if (!str) return NULL;         // Return NULL if malloc failed

    str[ size ] = '\0'; // Null terminate the string
    int index   = size - 1;

    do {
        str[ index-- ] = '0' + (value % 10); // Write the last digit of value to str
        value /= 10;                         // Remove the last digit from value
    } while (value != 0);

    return str;
}

string binaryToVisual(string code, bool addCommas) {
    string withComma = replaceAll(code, "0", "[");
    withComma        = replaceAll(withComma, "1", "]");
    withComma        = replaceAll(withComma, "][", "], [");

    for (int i = 0; i < 100; i++) {
        string number = buildNumber(i);
        number        = replaceAll(number, "0", "[");
        number        = replaceAll(number, "1", "]");
        number        = replaceAll(number, "][", "], [");
        number        = replaceAll(number, "[]", "null");

        withComma = replaceAll(withComma, number, itoa(i));
    }

    withComma = replaceAll(withComma, "[1, 1, null]", "cat");
    string withoutComma = replaceAll(withComma, "], [", "] [");

    return addCommas ? withComma : withoutComma;
}

list application(list left, list right) {
    return createList(3, two, left, right);
}

list function(list variable, list statement) {
    return createList(3, one, variable, statement);
}
// ------------------------- PARSER -------------------------

int main() {
    null         = empty();
    zero         = null;
    one          = createList(1, empty());
    two          = createList(2, empty(), empty());
    nullfunction = createList(3, one, one, null);
    cat          = createList(3, one, one, one);

    printf("Binary form of cat: %s\n", buildNumber(2));
    return 0;
}