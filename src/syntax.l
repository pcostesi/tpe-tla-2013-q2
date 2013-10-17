HEADER AUG
END (STOP|TAA|TAG|TGA)
BASE [CGATU]
ALPHABET ({BASE}|"{"|"}"|"*"|"["|"]"|DIGIT)
DIGIT [1-9][0-9]*
REPEATER "{"{BASE}*"}*"
POSITION "["{DIGIT}"]"
CODON {BASE}{BASE}{BASE} 
DISJUNCTION "{"{BASE}*,{BASE}*(,{BASE}*)*"}"
BODY ({BASE}|{REPEATER}|{POSITION}|{DISJUNCTION})*
%{
#include <stdlib.h>
#include <string.h>

int currentPosition;
char codon[4];
char incompleteCodon[3];

void repeat(char* toPrepend, char * toRepeat, int upperBound);
void process(char * codons, int len);
char * createCodon(char * codons);
char * createString(char * codons, int len);
char * toAminoAcid(char * codon);
void incrementCurrentPosition();
int getCurrentPosition();
void iterativeProcess(int numberOfAvailableBases, char * toRepeat);
void init();

%}
%%
. ;
{HEADER}{BODY}*{END} {
  incrementCurrentPosition();
  yyless(3);
  //printf("(START)(%s)\n",yytext);
}

{BASE}{0,2}{DISJUNCTION} {
  //printf("(4)(%s)\n",yytext); 
  int prependSize = indexOfString(yytext,"{");
  char * prepend = createString(yytext, prependSize);
  
  int firstOptionSize = indexOfString(yytext,",") - prependSize - 1;//1 para descontar "{"
  char * firstOption = createString(yytext+prependSize+1, firstOptionSize);
  repeat(prepend, firstOption, -1);

  free(prepend);
  free(firstOption);
}


{BASE}{0,2}{REPEATER}{POSITION} {
  //printf("(4)(%s)\n",yytext); 
  int prependSize = indexOfString(yytext,"{");
  char * prepend = createString(yytext, prependSize);
  
  int upToPosition = indexOfString(yytext,"[")+1;
  int positionPartSize = yyleng - upToPosition;
  char * positionStr = createString(yytext+upToPosition, yyleng - upToPosition - 1);
  int position = atoi(positionStr);

  int forRepeaterSize = yyleng - prependSize - positionPartSize - 3 - 1;//3 para descontar "{}*" 1 para ]
  char * forRepeater = createString(yytext+prependSize+1, forRepeaterSize);

  repeat(prepend, forRepeater, position);

  free(prepend);
  free(positionStr);
  free(forRepeater);
}

{BASE}{0,2}{REPEATER} {
  //printf("(4)(%s)\n",yytext); 
  int prependSize = indexOfString(yytext,"{");
  char * prepend = createString(yytext, prependSize);
  
  int forRepeaterSize = yyleng - prependSize - 3;//3 para descontar "{}*"
  char * forRepeater = createString(yytext+prependSize+1, forRepeaterSize);

  repeat(prepend, forRepeater, -1);

  free(prepend);
  free(forRepeater);
}

{BASE}{BASE}{BASE} {
  process(yytext,yyleng);
  //printf("(2)(%s)\n",yytext);
}


{BASE}{2}{END} {
  process(yytext, 2);
  init();
   //printf("(END)(%s)\n",yytext);
}

{BASE}{1}{END} {
  process(yytext, 1);
  init();
   //printf("(END)(%s)\n",yytext);
}

{END} {
  init();
   //printf("(END)(%s)\n",yytext);
}


%%



int indexOfString(char *source, char *substring){
char *dest = strstr(source, substring);
return dest - source;
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

void process(char * codons, int length){
 int codonStreamSize = strlen(incompleteCodon)+length;
 char codonStream[codonStreamSize];
 strcpy(codonStream, incompleteCodon);
 strcat(codonStream, codons);
 
 int remainder = codonStreamSize % 3;
 int k = (codonStreamSize - remainder)/3;
 //iterate for each codon
 int i = 0;
 for( i ; i < k*3 ; i+=3 , incrementCurrentPosition() ){
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

char * createCodon(char * codons){
 int i = 0;
 for(i ; i < 3; i++){
  codon[i] = codons[i];
 }
 codon[3] = '\0';
 return codon;
}

void init(){
 currentPosition = 0;
 incompleteCodon[0]='\0';
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

int main(){
init();
yylex();
return 0;
}

char * toAminoAcid(char * codon){
 if(strstr(codon, "U") != NULL) {
  return "";
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
					default: "W";
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
