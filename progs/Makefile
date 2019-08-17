# %W% %G%

# make and run all the example programs for
# lex & yacc, Second Edition
CC = gcc -g
LIBS = -ly -ll
LEX = flex
YACC = yacc
CFLAGS = -DYYDEBUG=1

PROGRAMS1 = ch1-01.pgm ch1-02.pgm ch1-03.pgm ch1-04.pgm ch1-05.pgm ch1-06.pgm
PROGRAMS2 = ch2-01.pgm ch2-02.pgm ch2-03.pgm ch2-04.pgm ch2-05.pgm \
	ch2-06.pgm ch2-07.pgm ch2-08.pgm ch2-09.pgm

PROGRAMS3 = ch3-01.pgm ch3-02.pgm ch3-03.pgm ch3-04.pgm ch3-05.pgm
PROGRAMS4 = mgl
PROGRAMS5 = sql1 sql2

PROGRAMSE = ape-05.pgm ape-06.pgm

all:	${PROGRAMS1} ${PROGRAMS2} ${PROGRAMS3} ${PROGRAMS4} ${PROGRAMS5} \
	${PROGRAMSE}

progs.tar:
	tar cvf $@ \
	Makefile ape-05.l ape-06.l ch1-01.l ch1-02.l ch1-03.l ch1-04.l \
	ch1-05.l ch1-05.y ch1-05y.h ch1-06.l ch1-06.y ch1-06y.h ch2-01.l \
	ch2-02.l ch2-03.l ch2-04.l ch2-05.l ch2-06.l ch2-07.l ch2-08.l \
	ch2-09.l ch3-01.l ch3-01.y ch3-02.y ch3-03.l ch3-03.y ch3-04.l \
	ch3-04.y ch3-05.l ch3-05.y ch3-06.y ch3hdr.h ch3hdr2.h magic.input \
	mgl-code mgl-in mgllex.l mglyac.y mmain.c sample.c subr.c \
	scn1.l scn2.l sql1.y sql2.y sqltext.c

# Chapter 1
#####==================================================
#####==================================================
ch1-01.pgm: ch1-01l.o ch1-01y.o
	${CC} -o ch1-01.pgm ch1-01l.o ch1-01y.o ${LIBS}

ch1-01l.c:	ch1-01.l
	${LEX} ch1-01.l
	mv lex.yy.c ch1-01l.c

ch1-01l.o:	ch1-01l.c ch1-01y.h

ch1-01y.h ch1-01y.c:	ch1-01.y
	${YACC} -d ch1-01.y
	mv y.tab.c ch1-01y.c
	mv y.tab.h ch1-01y.h
	
#####==================================================
#####==================================================
	
#####==================================================
#####==================================================
	
ch1-200.pgm: ch1-200l.o ch1-200y.o
	${CC} -o ch1-200.pgm ch1-200l.o ch1-200y.o ${LIBS}

ch1-200l.c:	ch1-200.l
	${LEX} ch1-200.l
	mv lex.yy.c ch1-200l.c

ch1-200l.o:	ch1-200l.c ch1-200y.h

ch1-200y.h ch1-200y.c:	ch1-200.y
	${YACC} -d ch1-200.y
	mv y.tab.c ch1-200y.c
	mv y.tab.h ch1-200y.h
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
	
ch1-02.pgm: ch1-02l.o ch1-02y.o
	${CC} -o ch1-02.pgm ch1-02l.o ch1-02y.o ${LIBS}

ch1-02l.c:	ch1-02.l
	${LEX} ch1-02.l
	mv lex.yy.c ch1-02l.c

ch1-02l.o:	ch1-02l.c ch1-02y.h

ch1-02y.h ch1-02y.c:	ch1-02.y
	${YACC} -d ch1-02.y
	mv y.tab.c ch1-02y.c
	mv y.tab.h ch1-02y.h
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
ch1-03.pgm: ch1-03l.o ch1-03y.o
	${CC} -o ch1-03.pgm ch1-03l.o ch1-03y.o ${LIBS}

ch1-03l.c:	ch1-03.l
	${LEX} ch1-03.l
	mv lex.yy.c ch1-03l.c

ch1-03l.o:	ch1-03l.c ch1-03y.h

ch1-03y.h ch1-03y.c:	ch1-03.y
	${YACC} -d ch1-03.y
	mv y.tab.c ch1-03y.c
	mv y.tab.h ch1-03y.h
#cp ch1-01.y ch1-03.y
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
ch1-04.pgm: ch1-04l.o ch1-04y.o
	${CC} -o ch1-04.pgm ch1-04l.o ch1-04y.o ${LIBS}

ch1-04l.c:	ch1-04.l
	${LEX} ch1-04.l
	mv lex.yy.c ch1-04l.c

ch1-04l.o:	ch1-04l.c ch1-04y.h

ch1-04y.h ch1-04y.c:	ch1-04.y
	${YACC} -d ch1-04.y
	mv y.tab.c ch1-04y.c
	mv y.tab.h ch1-04y.h
#cp ch1-01.y ch1-04.y	
#####==================================================
#####==================================================
	
	

	

ch1-05.pgm: ch1-05l.o ch1-05y.o
	${CC} -o ch1-05.pgm ch1-05l.o ch1-05y.o ${LIBS}

ch1-05l.c:	ch1-05.l
	${LEX} ch1-05.l
	mv lex.yy.c ch1-05l.c

ch1-05l.o:	ch1-05l.c ch1-05y.h

ch1-05y.h ch1-05y.c:	ch1-05.y
	${YACC} -d ch1-05.y
	mv y.tab.c ch1-05y.c
	mv y.tab.h ch1-05y.h

ch1-06.pgm: ch1-06l.o ch1-06y.o
	${CC} -o ch1-06.pgm ch1-06l.o ch1-06y.o ${LIBS}

ch1-06l.c:	ch1-06.l
	${LEX} ch1-06.l
	mv lex.yy.c ch1-06l.c

ch1-06l.o:	ch1-06l.c ch1-06y.h

ch1-06y.h ch1-06y.c:	ch1-06.y
	${YACC} -d ch1-06.y
	mv y.tab.c ch1-06y.c
	mv y.tab.h ch1-06y.h

	
#####==================================================
#####==================================================
ch1-09.pgm: ch1-09l.o ch1-09y.o
	${CC} -o ch1-09.pgm ch1-09l.o ch1-09y.o ${LIBS}

ch1-09l.c:	ch1-09.l
	${LEX} ch1-09.l
	mv lex.yy.c ch1-09l.c

ch1-09l.o:	ch1-09l.c ch1-09y.h

ch1-09y.h ch1-09y.c:	ch1-09.y
	${YACC} -d ch1-09.y
	mv y.tab.c ch1-09y.c
	mv y.tab.h ch1-09y.h
#cp ch1-01.y ch1-09.y	
#####==================================================
#####==================================================
		
	
# Chapter 2
#	all use single lex source files
#####==================================================
#####==================================================
ch2-01.pgm: ch2-01l.o ch2-01y.o
	${CC} -o ch2-01.pgm ch2-01l.o ch2-01y.o ${LIBS}

ch2-01l.c:	ch2-01.l
	${LEX} ch2-01.l
	mv lex.yy.c ch2-01l.c

ch2-01l.o:	ch2-01l.c ch2-01y.h

ch2-01y.h ch2-01y.c:	ch2-01.y
	${YACC} -d ch2-01.y
	mv y.tab.c ch2-01y.c
	mv y.tab.h ch2-01y.h
#cp ch1-01.y ch2-01.y	
#####==================================================
#####==================================================
	
#####==================================================
#####==================================================
ch2-02.pgm: ch2-02l.o ch2-02y.o
	${CC} -o ch2-02.pgm ch2-02l.o ch2-02y.o ${LIBS}

ch2-02l.c:	ch2-02.l
	${LEX} ch2-02.l
	mv lex.yy.c ch2-02l.c

ch2-02l.o:	ch2-02l.c ch2-02y.h

ch2-02y.h ch2-02y.c:	ch2-02.y
	${YACC} -d ch2-02.y
	mv y.tab.c ch2-02y.c
	mv y.tab.h ch2-02y.h
#cp ch1-02.y ch2-02.y	
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
ch2-03.pgm: ch2-03l.o ch2-03y.o
	${CC} -o ch2-03.pgm ch2-03l.o ch2-03y.o ${LIBS}

ch2-03l.c:	ch2-03.l
	${LEX} ch2-03.l
	mv lex.yy.c ch2-03l.c

ch2-03l.o:	ch2-03l.c ch2-03y.h

ch2-03y.h ch2-03y.c:	ch2-03.y
	${YACC} -d ch2-03.y
	mv y.tab.c ch2-03y.c
	mv y.tab.h ch2-03y.h
#cp ch1-03.y ch2-03.y	
#####==================================================
#####==================================================
	
	
	
#####==================================================
#####==================================================
ch2-04.pgm: ch2-04l.o ch2-04y.o
	${CC} -o ch2-04.pgm ch2-04l.o ch2-04y.o ${LIBS}

ch2-04l.c:	ch2-04.l
	${LEX} ch2-04.l
	mv lex.yy.c ch2-04l.c

ch2-04l.o:	ch2-04l.c ch2-04y.h

ch2-04y.h ch2-04y.c:	ch2-04.y
	${YACC} -d ch2-04.y
	mv y.tab.c ch2-04y.c
	mv y.tab.h ch2-04y.h
#cp ch1-04.y ch2-04.y	
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
ch2-05.pgm: ch2-05l.o ch2-05y.o
	${CC} -o ch2-05.pgm ch2-05l.o ch2-05y.o ${LIBS}

ch2-05l.c:	ch2-05.l
	${LEX} ch2-05.l
	mv lex.yy.c ch2-05l.c

ch2-05l.o:	ch2-05l.c ch2-05y.h

ch2-05y.h ch2-05y.c:	ch2-05.y
	${YACC} -d ch2-05.y
	mv y.tab.c ch2-05y.c
	mv y.tab.h ch2-05y.h
#cp ch1-05.y ch2-05.y	
#####==================================================
#####==================================================
	
	
	
#####==================================================
#####==================================================
ch2-06.pgm: ch2-06l.o ch2-06y.o
	${CC} -o ch2-06.pgm ch2-06l.o ch2-06y.o ${LIBS}

ch2-06l.c:	ch2-06.l
	${LEX} ch2-06.l
	mv lex.yy.c ch2-06l.c

ch2-06l.o:	ch2-06l.c ch2-06y.h

ch2-06y.h ch2-06y.c:	ch2-06.y
	${YACC} -d ch2-06.y
	mv y.tab.c ch2-06y.c
	mv y.tab.h ch2-06y.h
#cp ch1-01.y ch2-06.y	
#####==================================================
#####==================================================
	
#####==================================================
#####==================================================
ch2-07.pgm: ch2-07l.o ch2-07y.o
	${CC} -o ch2-07.pgm ch2-07l.o ch2-07y.o ${LIBS}

ch2-07l.c:	ch2-07.l
	${LEX} ch2-07.l
	mv lex.yy.c ch2-07l.c

ch2-07l.o:	ch2-07l.c ch2-07y.h

ch2-07y.h ch2-07y.c:	ch2-07.y
	${YACC} -d ch2-07.y
	mv y.tab.c ch2-07y.c
	mv y.tab.h ch2-07y.h
#cp ch1-01.y ch2-07.y	
#####==================================================
#####==================================================
	
	
#####==================================================
#####==================================================
ch2-09.pgm: ch2-09l.o ch2-09y.o
	${CC} -o ch2-09.pgm ch2-09l.o ch2-09y.o ${LIBS}

ch2-09l.c:	ch2-09.l
	${LEX} ch2-09.l
	mv lex.yy.c ch2-09l.c

ch2-09l.o:	ch2-09l.c ch2-09y.h

ch2-09y.h ch2-09y.c:	ch2-09.y
	${YACC} -d ch2-09.y
	mv y.tab.c ch2-09y.c
	mv y.tab.h ch2-09y.h
#cp ch1-01.y ch2-09.y	
#####==================================================
#####==================================================
	
	





# Chapter 3

ch3-01.pgm: ch3-01.l ch3-01.y
	${LEX} ch3-01.l
	${YACC} -d ch3-01.y
	${CC} ${CFLAGS} -o ch3-01.pgm y.tab.c lex.yy.c ${LIBS}

ch3-02.pgm: ch3-01.l ch3-02.y
	${LEX} ch3-01.l
	${YACC} -d ch3-02.y
	${CC} ${CFLAGS} -o ch3-02.pgm y.tab.c lex.yy.c ${LIBS}

ch3-03.pgm: ch3-03.l ch3-03.y
	${LEX} ch3-03.l
	${YACC} -d ch3-03.y
	${CC} ${CFLAGS} -o ch3-03.pgm y.tab.c lex.yy.c ${LIBS}

ch3-04.pgm: ch3-04.l ch3-04.y ch3hdr.h
	${LEX} ch3-04.l
	${YACC} -d ch3-04.y
	${CC} ${CFLAGS} -o ch3-04.pgm y.tab.c lex.yy.c ${LIBS}

ch3-05.pgm: ch3-05.l ch3-05.y ch3hdr2.h
	${LEX} ch3-05.l
	${YACC} -d ch3-05.y
	${CC} ${CFLAGS} -o ch3-05.pgm y.tab.c lex.yy.c ${LIBS} -lm

# chapter 4

mgl:	subr.o mglyac.o mgllex.o
	${CC} -o $@ subr.o mglyac.o mgllex.o ${LIBS}

subr.o:	subr.c mglyac.h mgl-code

mgllex.o: mgllex.c mglyac.h

mgllex.c:	mgllex.l
	${LEX} mgllex.l
	mv lex.yy.c mgllex.c

mglyac.c mglyac.h:	mglyac.y
	${YACC} -d mglyac.y
	mv y.tab.c mglyac.c
	mv y.tab.h mglyac.h
	
# chapter 5

sql1:	sql1.o scn1.o
	${CC} -o $@ sql1.o scn1.o

sql1.c sql1.h:	sql1.y
	${YACC} -vd sql1.y
	mv y.tab.h sql1.h
	mv y.tab.c sql1.c
	mv y.output sql1.out

scn1.o:	sql1.h scn1.c

sql2:	sql2.o scn2.o sqltext.o
	${CC} -o $@ sql2.o scn2.o sqltext.o

sql2.c sql2.h:	sql2.y
	${YACC} -vd sql2.y
	mv y.tab.h sql2.h
	mv y.tab.c sql2.c
	mv y.output sql2.out

scn2.o:	sql2.h scn2.c


.SUFFIXES:	.pgm .l .y

.l.pgm:
	${LEX} $<
	mv lex.yy.c $*.c
	${CC} -o $@ $*.c ${LIBS}
