LEX=flex 
YACC=bison 
CC=gcc

a.exe:lex.yy.o
	$(CC) lex.yy.o -o a.exe
lex.yy.o:lex.yy.c
	$(CC) -c lex.yy.c
lex.yy.c:frame.l 
	$(LEX) frame.l

