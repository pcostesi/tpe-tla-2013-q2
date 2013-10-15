#include        <stdio.h>
#include        <stdlib.h>
#include        <string.h>

#include        "../lib/helpers.h"

#define         MALLOC_SIZE         10

char** split_str(char* str, char split_char) {
    char** ptr      = NULL;
    int last_index  = 0;
    int len         = 0;
    int str_num     = 0;

    int i = 0, j = 0, k = 0;

    ptr = (char**) malloc(sizeof(char**) * MALLOC_SIZE);

    memset(ptr, 0, sizeof(char**) * MALLOC_SIZE);

    len = strlen(str);

    for (i = 0; i < len + 1; i++) {
        if ((str[i] == split_char || str[i] == '\0') &&
                last_index != i) {
            ptr[str_num] = (char*) malloc(i - last_index + 1);

            for (j = last_index, k = 0; j < i; j++, k++)
                ptr[str_num][k] = str[j];

            ptr[str_num][k] = '\0';
            last_index = i + 1;
            str_num += 1;
        }
    }

    return ptr;
}

void free_split_str(char** str) {
    int i = 0;

    while (str[i] != 0) {
        free(str[i]);
        i++;
    }

    free(str);
}
