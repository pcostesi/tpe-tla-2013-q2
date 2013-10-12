.SILENT:
.PHONY : clean
COPTS = -Wall -ansi -pedantic -O3 -c
COPTSDEBUG = -g
LINT = splint
STRIP = strip
LINTOPTS = -strict-lib
VALGRIND = valgrind
VALGRINDOPTS = -q --leak-check=yes --track-origins=yes -v --log-file=valgrind.log --show-reachable=yes --malloc-fill=CA --free-fill=FE
CC = clang
LEX = flex
LFLAGS = -f --align --prefix=_$*_
LD = $(CC)
LDOPTS =

SYNTAX = scanner.l
SCANNER = scanner.c
TARGET_DEPS = scanner.o
TARGET = dna



$(TARGET):	$(TARGET_DEPS)
	$(LD) $(LDOPTS) -o $(TARGET) $(TARGET_DEPS)
	$(STRIP) $(TARGET)


$(SCANNER):	$(SYNTAX)

.l.c:
	echo Building lex file $<
	$(LEX) $(LFLAGS) -o $@ $<

.c.o:
	echo Compiling $<
	$(CC) $(COPTS) $<

lint:
	find ./ -follow | grep -E '([a-zA-Z0-9 _-.])+\.(c|h)$$' | xargs $(LINT) $(LINTOPTS)

all:	$(TARGET)

clean:
	echo Cleaning
	- rm -r *.o
	- rm game
