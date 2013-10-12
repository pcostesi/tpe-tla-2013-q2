%{
#include <stdio.h>
%}
%option noyywrap

BASE    [ACGTU]

%%
[BASE]+     return _scanner_text;
.           return _scanner_text;
%%

int main(int arcg, char ** argv){
    _scanner_lex();
    printf("the parsed parsed.");
    return 0;
}
