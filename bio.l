%{

%}
%%
[\n\t ]                         ;
(ATT|ATC|ATA)                   { process_pattern(yytext); }
(CTT|CTC|CTA|CTG|TTA|TTG)
(GTT|GTC|GTA|GTG)
(TTT|TTC)
(ATG)
(TGT|TGC)
(GCT|GCC|GCA|GCG)
(GGT|GGC|GGA|GGG)
(CCT|CCC|CCA|CCG)
(ACT|ACC|ACA|ACG)
(TCT|TCC|TCA|TCG|AGT|AGC)
(TAT|TAC)
(TGG)
(CAA|CAG)
(ATT|AAC)
(CAT|CAC)
(GAA|GAG)
(AAA|AAG)
(CGT|CGC|CGA|CGG|AGA|AGG)
(TAA|TAG|TGA)

%%

int main(void) {
    result = (char*) malloc(SIZE_OF_RESULT);
    yylex();

    return 0;
}
