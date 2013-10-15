#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "../lib/helpers.h"

#define         SIZE_OF_RESULT      100
#define         NUM_OF_CODONS       21
#define         ALPH_SIZE           26

struct TrieStruct;

typedef struct TrieStruct {
    char data;
    struct TrieStruct** tries;
} Trie;

char* dna_codons[] = {
    "I,ATT,ATC,ATA",
    "L,CTT,CTC,CTA,CTG,TTA,TTG",
    "V,GTT,GTC,GTA,GTG",
    "F,TTT,TTC",
    "M,ATG",
    "C,TGT,TGC",
    "A,GCT,GCC,GCA,GCG",
    "G,GCT,GGC,GGA,GGG",
    "P,CCT,CCC,CCA,CCG",
    "T,ACT,ACC,ACA,ACG",
    "S,TCT,TCC,TCA,TCG,AGT,AGC",
    "Y,TAT,TAC",
    "W,TGG",
    "Q,CAA,CAG",
    "N,AAT,AAC",
    "H,CAT,CAC",
    "E,GAA,GAG",
    "D,GAT,GAC",
    "K,AAA,AAG",
    "R,CGT,CGC,CGA,CGG,AGA,AGG",
    "Z,TAA,TAG,TGA"
};

Trie* createTrieNode();
Trie* create_trie();
int get_code(char letter);
void process_pattern(char* pattern);
void setCodon(char aminoacid, char* pattrn, int start, Trie* trie);
void test_tree(Trie* trie, int nesting, int arr[]);


int main(int argc, const char *argv[]) {

    Trie* trie = create_trie();
    int aminoacids[ALPH_SIZE];

    memset(aminoacids, 0, sizeof(int) * ALPH_SIZE);

    test_tree(trie, 0, aminoacids);

    for (int i = 0; i < ALPH_SIZE; i++)
        printf("%c : %d\n", i + 'A', aminoacids[i]);

    return 0;
}

void test_tree(Trie* trie, int nesting, int arr[]) {
    if (trie->data != 0) {
        printf("Data: %c.\n", trie->data);
        arr[trie->data - 'A'] += 1;
        return;
    }

    for (int i = 0; i < ALPH_SIZE; i++) {
        if (trie->tries[i] != 0) {
            printf("Checked trie: %d - nesting: %d\n", i, nesting);
            test_tree(trie->tries[i], nesting + 1, arr);
        }
    }

}

void process_pattern(char* pattern) {
}

void setCodon(char aminoacid, char* pattrn, int start, Trie* trie) {
    int i = 0;
    int letter = 0;

    letter = toupper(pattrn[start]) - 'A';

    if (pattrn[start] == '\0') {
        trie->data = aminoacid;
        return;
    }

    if (trie->tries[letter] == 0) {
        trie->tries[letter] = createTrieNode();
    }

    setCodon(aminoacid, pattrn, start + 1, trie->tries[letter]);
}

Trie* create_trie() {
    int i = 0, j = 0;
    char** str = NULL;
    Trie* trie = NULL;

    trie = createTrieNode();

    for (i = 0; i < NUM_OF_CODONS; i++) {
        str = split_str(dna_codons[i], ',');

        // str[0] = "I", str[1] = "ATP", str[2] = "GTP"...
        for (j = 1; str[j] != 0; j++)
            setCodon(str[0][0], str[j], 0, trie);

        free_split_str(str);
    }

    return trie;
}

Trie* createTrieNode() {
    Trie* trie = NULL;

    trie        = (Trie*) malloc(sizeof(Trie));
    trie->data  = 0;
    trie->tries = (Trie**) malloc(sizeof(Trie*) * ALPH_SIZE);

    memset(trie->tries, 0, sizeof(Trie*) * ALPH_SIZE);

    return trie;
}

