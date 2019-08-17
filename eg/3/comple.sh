#!/bin/sh
#dos2unix $0

#generate lex.yy.c 
flex frame.l

#generate  frame.tab.c
bison -d frame.y 

#complile
g++ frame.tab.c lex.yy.c 



