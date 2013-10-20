BLANK [\t ]*
HEADER {BLANK}A{BLANK}U{BLANK}G{BLANK}
END {BLANK}S{BLANK}T{BLANK}O{BLANK}P{BLANK}|{BLANK}T{BLANK}A{BLANK}A{BLANK}|{BLANK}T{BLANK}A{BLANK}G{BLANK}|{BLANK}T{BLANK}G{BLANK}A{BLANK}
BASE [CGATU\-]
DIGIT [1-9][0-9]*
BASE_STREAM {BLANK}{BASE}({BASE}|{BLANK})*
DIGIT_STREAM {BLANK}{DIGIT}([0-9]|{BLANK})*
CODON {BLANK}{BASE}{BLANK}{BASE}{BLANK}{BASE}{BLANK}
DISJUNCTION {BLANK}"{"{BASE_STREAM}(,{BASE_STREAM})*"}"{BLANK}({BLANK}"*"{BLANK}){0,1}
POSITION {BLANK}"["{DIGIT_STREAM}"]"{BLANK}
BODY ({BASE_STREAM}|{POSITION}|{DISJUNCTION})*
%{
#include <stdlib.h>
#include <string.h>

#define INVALID_WORD 5

char codon[4];
char incompleteCodon[3];
int currentPosition;
int mustContinueScanning;
int scanningStarted;

char * createCodon(char * codons);
char * createString(char * codons, int len);
char * toAminoAcid(char * codon);
int containsSubstring(char * str, char * substr);
int getCurrentPosition();
int indexForRepeater(char * str);
int indexOfString(char *source, char *substring);
int isScanning();
void incrementCurrentPosition();
void init();
void iterativeProcess(int numberOfAvailableBases, char * toRepeat);
void process(char * codons, unsigned long len);
void repeat(char* toPrepend, char * toRepeat, int upperBound);
void restartIncompleteCodon();
void trim(char * str, unsigned long * len);

/////////////// ACÁ EMPIEZAN LAS REGLAS
%}
%%

{HEADER}{BODY}{END}$ {
    scanningStarted = 1;
//printf("\n\n\n(START)(%s)\n\n\n",yytext);
    REJECT;
}


{HEADER} {
    if( !isScanning() ){
printf("1(%d)",scanningStarted);
     return INVALID_WORD;
    }
    incrementCurrentPosition();
}

({BASE}{BLANK}){0,2}{DISJUNCTION} {
 if( !isScanning() ){
printf("3");
  return INVALID_WORD;
 }

 int prependSize = indexOfString(yytext,"{");
 char * prepend = createString(yytext, prependSize);
 int firstOptionSize;
 char * firstOption;

 int indexOfDelimiterForRepeater = indexForRepeater(yytext);
 firstOptionSize = indexOfDelimiterForRepeater - prependSize - 1;//1 para descontar "{"
 firstOption = createString(yytext+prependSize + 1, firstOptionSize);

 if( !containsSubstring(firstOption,"-") ){
   repeat(prepend, firstOption, -1);
  }else{
   if(prependSize > 0){
    process(prepend, prependSize);
   }
   restartIncompleteCodon();
   printf("\n\n"); 
   
  }

  free(prepend);
  free(firstOption);

}

({BASE}{BLANK}){0,2}{DISJUNCTION}{POSITION} {
 if( !isScanning() ){
printf("4");
  return INVALID_WORD;
 }

  trim(yytext, &yyleng);

  //printf("(4)(%s)\n",yytext); 
  int prependSize = indexOfString(yytext,"{");
  char * prepend = createString(yytext, prependSize);
  
  int upToPosition = indexOfString(yytext,"[")+1;
  int positionPartSize = yyleng - upToPosition;
  char * positionStr = createString(yytext+upToPosition, yyleng - upToPosition - 1);
  int position = atoi(positionStr);

  int indexOfDelimiterForRepeater = indexForRepeater(yytext);
  int firstOptionSize = indexOfDelimiterForRepeater - prependSize - 1;//1 para descontar "{"
  char * firstOption = createString(yytext+prependSize + 1, firstOptionSize);

  if( !containsSubstring(firstOption,"-") ){
   repeat(prepend, firstOption, position);
  }else{
   if(prependSize > 0){
    process(prepend, prependSize);
   }
   restartIncompleteCodon();
   printf("\n\n"); 
   
  }

  free(prepend);
  free(positionStr);
  free(firstOption);
}

({BASE}{BLANK}){0,2}{POSITION} {
  if( !isScanning() ){
printf("5");
  return INVALID_WORD;
 }

  trim(yytext, &yyleng);

  int prependSize = indexOfString(yytext,"[");
  char * prepend = createString(yytext, prependSize);

  char * positionStr = createString(yytext+prependSize+1, yyleng - 2 - prependSize);
  int position = atoi(positionStr);
  if(position != getCurrentPosition()+prependSize+1){
    printf("error!! %d ... %d",position,getCurrentPosition());
  }else{
   if(prependSize >0){
     process(prepend,prependSize);
   }
 }

}


{END}$ {

}

({BASE}{BLANK}){1,2}{END}$ {
  trim(yytext, &yyleng);
  int stopSize = containsSubstring(yytext,"STOP")?4:3;
  int prependSize = yyleng - stopSize;
  char * prepend = createString(yytext, prependSize);

//printf("\n(pF)(%s,%d,%d)", yytext, prependSize, incompleteCodon[0]=='\0');
  if( prependSize>0 && incompleteCodon[0]=='\0'){
   printf("\nPalabra mal terminada. Falto procesar '%s' en la posicion: %d\n",prepend,getCurrentPosition());
   return INVALID_WORD;
 }else{
  process(prepend, prependSize);
 }
 free(prepend);
}

{CODON} {
//printf("\n(12)(%s)",yytext);
 if( !isScanning() ){
printf("6");
  return INVALID_WORD;
 }
  process(yytext,yyleng);
  //printf("(2)(%s)\n",yytext);
}

%%
/////////////// ACÁ TERMINAN LAS REGLAS

int containsSubstring(char * str, char * substr){
 return ( strstr(str,substr) != NULL );
}

int isScanning(){
 return scanningStarted == 1;
}

int indexOfString(char *source, char *substring) {
    char *dest = strstr(source, substring);
    return dest - source;
}


int indexForRepeater(char * str){
 int indexOfDelimiterForRepeater;
 if(strstr(str,",")!=NULL){
  indexOfDelimiterForRepeater = indexOfString(str,",");
 }else{
  indexOfDelimiterForRepeater = indexOfString(str,"}");
 }
 return indexOfDelimiterForRepeater;
}

void repeat(char* toPrepend, char * toRepeat, int index){
char dest[strlen(toPrepend)+strlen(toRepeat)+1];
strcpy( dest, toPrepend);
strcat( dest, toRepeat); 
process(dest,strlen(dest));
//printf("index=%d   cp=%d    ", index, getCurrentPosition());
if(index > getCurrentPosition()){
//printf("1- %s   ",toRepeat);
  int numberOfAvailableBases = index - getCurrentPosition() - 1;
  iterativeProcess(numberOfAvailableBases, toRepeat);
 }else if(index == -1){
//printf("2- %s   ",toRepeat);
   //do nothing
 }else{
//printf("3- %s   ",toRepeat);
  //TODO: lanzar error
 }
}

void iterativeProcess(int numberOfAvailableBases, char * toRepeat){
 int k = numberOfAvailableBases / strlen(toRepeat);
 int remainder = numberOfAvailableBases % strlen(toRepeat); 
 char * generatedBases = (char*)malloc(sizeof(char)*numberOfAvailableBases + 1); 
 int i;
 for(i=0, generatedBases[0]='\0' ; i < k*3 ; i+=3){
  strcat(generatedBases,toRepeat);
 }
//printf("|%s|wr",generatedBases);
 strncat(generatedBases,toRepeat,remainder);
//printf("|%s|cr",generatedBases);
 process(generatedBases,strlen(generatedBases));
 free(generatedBases);
}

void trim(char * str, unsigned long * len){
 int blanks;
 int i;
 for( blanks=0, i=0 ; i<*len ; i++ ){
  if(str[i]==' ' || str[i]=='\t'){
   blanks++;
  }else{
   if( blanks > 0){
    str[i-blanks]=str[i];
   }
  }
 }
 *len = *len - blanks;
}

void process(char * codons, unsigned long length){
 //elimino los {BLANK} de codons
 trim(codons, &length);

 int codonStreamSize = strlen(incompleteCodon)+length;
 char codonStream[codonStreamSize];
 strcpy(codonStream, incompleteCodon);
 strcat(codonStream, codons);
 
 int remainder = codonStreamSize % 3;
 int k = (codonStreamSize - remainder)/3;
 //iterate for each codon
 int i = 0;

 for(i = 0 ; i < k*3 ; i+=3 , incrementCurrentPosition() ){
  char * aCodon = createCodon(codonStream+i); 
  //printf("|%s|i->%s ", aCodon, toAminoAcid(aCodon));
  printf("%s",toAminoAcid(aCodon));
 }
 //save the remainder to incompleteCodon
 int j;
 for( j = 0 ; j < remainder ; j++){
  incompleteCodon[j]=codonStream[i+j];
 }
 incompleteCodon[j]='\0';
 //printf("|%s|r ", incompleteCodon);
   
}

void restartIncompleteCodon(){
 incompleteCodon[0]='\0';
}

char * createCodon(char * codons){
 int i = 0;
 for(i = 0; i < 3; i++){
  codon[i] = codons[i];
 }
 codon[3] = '\0';
 return codon;
}

void init(){
 currentPosition = 0;
 incompleteCodon[0]='\0';
 scanningStarted = 0;
}

char * createString(char * codons, int len){
 char * string = (char*)malloc(sizeof(char)*len+1);
 strncpy(string, codons, len);
 string[len] = '\0';
 return string;
}

void incrementCurrentPosition(){
 currentPosition += 3;
}

int getCurrentPosition(){
 return currentPosition;
}

int main(int argc, char  ** argv){
    if ( argc > 1 )
            yyin = fopen( argv[1], "r" );
    else
            yyin = stdin;
    
    yylex();
  init();
  int code = yylex();
  if(code == INVALID_WORD){
    printf("Palabra inválida\n");
  }
  return 0;
}

char * toAminoAcid(char * codon){
 if(strstr(codon, "U") != NULL) {
  return "";
 }
 int i = 0;
 for(; i < strlen(codon); i++){
  if(codon[i]=='-')
    codon[i]='A';
 }
 switch(codon[0]){
    case 'T': switch(codon[1]){
            case 'T': switch(codon[2]){
                    case 'T':
                    case 'C': return "F";
                    default: return "L";
                }
            case 'C': return "S";
            case 'A': switch(codon[2]){
                    case 'T':
                    case 'C': return "Y";
                }
            case 'G': switch(codon[2]){
                    case 'T':
                    case 'C': return "C";
                }
        }
     case 'C': switch(codon[1]){
            case 'T': return "L";
            case 'C': return "P";
            case 'A': switch(codon[2]){
                    case 'T':
                    case 'C': return "H";
                    default: return "Q";
                  }
            case 'G': return "R";
         }
    case 'A': switch(codon[1]){
            case 'T':switch(codon[2]){
                    case 'G': return "M";
                    default: return "I";
                  }
            case 'C': return "T";
            case 'A': switch(codon[2]){
                    case 'T':
                    case 'C': return "N";
                    default: return "K";
                  }
            case 'G': switch(codon[2]){
                    case 'T':
                    case 'C': return "S";
                    default: return "R";
                  }
        }
    case 'G': switch(codon[1]){
            case 'T': return "V";
            case 'C': return "A";
            case 'A': switch(codon[2]){
                    case 'T':
                    case 'C': return "D";
                    default: return "E";
                  }
            case 'G': return "G";
        }
 }
 return "";
}
