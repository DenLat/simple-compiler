#include "lexer.h"
#include <stdio.h>
#include <string.h>

void lex(char* source) {
    if (strncmp(source, "int", 3) == 0) {
        printf("Token: INT_KEYWORD\n");
    } else {
        printf("Unknown token\n");
    }
}