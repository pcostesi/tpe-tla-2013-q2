CC=gcc
LEX=flex
SOURCE=src
VPATH=src:lib:bin

ALL: flex bin/all clean

bin/all: lex.yy.c
	$(CC) -o $(@D)/lexer lex.yy.c -lfl

flex: syntax.l
	$(LEX) $(SOURCE)/syntax.l

clean:
	rm ./lex.yy.c

