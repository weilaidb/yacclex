CC=g++
CFLGAS=
LEX=flex
YACC=bison
YACCFLGAS=-d
TARGET=lexyacc
$(TARGET):lex.yy.c
	$(CC) $(CFLAGS) lex.yy.c -o $(TARGET)

lex.yy.c:lex.l
	$(LEX) lex.l

#yacc.tab.c yacc.tab.h:yacc.y
#	$(YACC) $(YACCFLAGS) yacc.y

clean:
	rm -f *.o lex.yy.c yacc.tab.h yacc.tab.c a.out a.exe


