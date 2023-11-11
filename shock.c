#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char *string;
typedef int bool;
#define true  1
#define false 0

// ------------------------- LIST -------------------------
/**
 * # List struct
 */
typedef struct list {
    int          size;
    struct list *list;
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

                data = realloc(data, ++size);

                if (data == NULL) {
                    printf("Memory allocation failed\n");
                    exit(5);
                }
                data[ size - 1 ] = code[ ++i ];
            }

            terms = push(terms, binaryToList(data), true);
        } // else, ignore

        i++;
    }

    return terms;
}

char *replaceAll(char *str, char *oldstr, char *newstr) {
    char bstr[ strlen(str) ];
    memset(bstr, 0, sizeof(bstr));
    int i;
    for (i = 0; i < strlen(str); i++) {
        if (!strncmp(str + i, oldstr, strlen(oldstr))) {
            strcat(bstr, newstr);
            i += strlen(oldstr) - 1;
        } else {
            strncat(bstr, str + i, 1);
        }
    }

    strcpy(str, bstr);
    return str;
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

// A utility function to reverse a string
void reverse(char str[], int length) {
    int start = 0;
    int end   = length - 1;
    while (start < end) {
        char temp    = str[ start ];
        str[ start ] = str[ end ];
        str[ end ]   = temp;
        end--;
        start++;
    }
}
// Implementation of citoa()
char *citoa(int num, int base) {
    char *str = malloc(sizeof(char) * 1000);
    int  i          = 0;
    bool isNegative = false;

    /* Handle 0 explicitly, otherwise empty string is
     * printed for 0 */
    if (num == 0) {
        str[ i++ ] = '0';
        str[ i ]   = '\0';
        return str;
    }

    // In standard itoa(), negative numbers are handled
    // only with base 10. Otherwise numbers are
    // considered unsigned.
    if (num < 0 && base == 10) {
        isNegative = true;
        num        = -num;
    }

    // Process individual digits
    while (num != 0) {
        int rem    = num % base;
        str[ i++ ] = (rem > 9) ? (rem - 10) + 'a' : rem + '0';
        num        = num / base;
    }

    // If number is negative, append '-'
    if (isNegative) str[ i++ ] = '-';

    str[ i ] = '\0'; // Append string terminator

    // Reverse the string
    reverse(str, i);

    return str;
}

string binaryToVisual(string code, bool addCommas) {
    string withComma = replaceAll(code, "0", "[");
    withComma        = replaceAll(withComma, "1", "]");
    withComma        = replaceAll(withComma, "][", "], [");
    withComma        = replaceAll(withComma, "[]", "null");

    for (int i = 1; i < 100; i++) {
        string number = buildNumber(i);
        number        = replaceAll(number, "0", "[");
        number        = replaceAll(number, "1", "]");
        number        = replaceAll(number, "][", "], [");
        number        = replaceAll(number, "[]", "null");

        // printf("'%s' '%s'\n", withComma, number);
        withComma = replaceAll(withComma, number, citoa(i, 10));
    }

    withComma           = replaceAll(withComma, "[1, 1, null]", "cat");
    string withoutComma = replaceAll(withComma, "], [", "] [");

    return addCommas ? withComma : withoutComma;
}

list push_array(list left, list right) { return push(left, right, true); }

list application(list left, list right) { return createList(3, two, left, right); }

list function(list variable, list statement) { return createList(3, one, variable, statement); }

string visualToBinary(string code) {
    const int size = strlen(code);
    int       i    = 0;

    int    output_size = 1;
    string output      = malloc(sizeof(char) * output_size);

    while (i < size) {
        char character = code[ i ];

        if (character == '[') {
            output = realloc(output, ++output_size);
            if (output == NULL) {
                printf("Memory allocation failed\n");
                exit(5);
            }
            output[ output_size - 1 ] = '0';
        }

        if (character == ']') {
            output = realloc(output, ++output_size);
            if (output == NULL) {
                printf("Memory allocation failed\n");
                exit(5);
            }
            output[ output_size - 1 ] = '1';
        }

        i++;
    }

    return output;
}

#define terms term.list

list evaluate(list term) {
    if (term.size == 0) return term;

    if (isOne(terms[ 0 ])) {
        // First element is one, The term might be a function.
        if (term.size == 3) {
            list variable  = terms[ 1 ];
            list statement = terms[ 2 ];

            return createList(3, one, variable, evaluate(statement));
        }
    } else if (isTwo(terms[ 0 ])) {
        // First element is two, The term might be an application.
        if (term.size == 3) {
            list left  = terms[ 1 ];
            list right = terms[ 2 ];

            // left side is a function, replace values
            if (isOne(left.list[ 0 ]) && left.size == 3) {
                list variable  = left.list[ 1 ];
                list statement = left.list[ 2 ];

                // return replaced statement
                // ((λvar. expr) b)
                // return expr.replace(var, b)
                return replace(statement, variable, right);
            }

            // cannot modify application yet...
            // (a b)
            // return (a b)
        }

        // otherwise not an application, just return it.
    }

    return term;
}
// ------------------------- PARSER -------------------------

int main() {
    null         = empty();
    zero         = null;
    one          = createList(1, empty());
    two          = createList(2, empty(), empty());
    nullfunction = createList(3, one, one, null);
    cat          = createList(3, one, one, one);

    // string program_binary = visualToBinary("[[[]] [[[]] [[]] []] [[] []]]");
    list program_list = application(cat, two);

    printf("Code: %s\n", binary(program_list));
    list   result        = evaluate(program_list);
    string result_string = binary(result);
    printf("Result: %s\n", result_string);
    string visual = binaryToVisual(result_string, true);
    printf("Visual: %s\n", visual);

    return 0;
}