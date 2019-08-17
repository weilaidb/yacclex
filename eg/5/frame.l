digit[0-9]
letter[A-Za-z]
%{
#include <stdio.h>
#include <stdlib.h>

#ifdef __cplusplus 
extern "C" {
#endif
extern int yylex(void); 
extern int yywrap(void); 
#ifdef __cplusplus 
}
#endif



int count;
%}
%%

{letter}({letter}|{digit})* count++;
%%
int yywrap(void) 
{ 
 return 1; 
} 


int main(int argc, char **argv) 
{
	if(argc < 2)
	{
		printf("==== show filename's linenum =====\n");
		printf("usage:app.exe filename\n");
		return -1;
	}
	yyin = fopen(argv[1], "r");
	yylex();
	printf("number of identifier=%d\n", count);
	fclose(yyin);
}

