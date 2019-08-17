%{
/*
 * A lexer for the basic grammar to use for recognizing english sentences.
 */
#include <stdio.h>
#define yyin stdin
#define yyout stdout
%}

%token NOUN PRONOUN VERB ADVERB ADJECTIVE PREPOSITION CONJUNCTION

%%
sentence: sentence_t1 { printf("Sentence1 is valid.\n"); }
	;
sentence_t1:	subject VERB object
	;
	
subject:	NOUN
	|	PRONOUN
	;

object:		NOUN
	;
%%

// extern FILE *yyin;

// int main(int argc, char **argv) 
// {
	// if(argc < 2)
	// {
		// printf("==== show filename's linenum =====\n");
		// printf("usage:app.exe filename\n");
		// return -1;
	// }
	// yyin = fopen(argv[1], "r");
	// if(yyin == NULL)
	// {
		// printf("open fail:%s\n", argv[1]);
		// return -1;
	// }
	// // yylex();
	// while(!feof(yyin)) {
		// yyparse();
	// }
	
	// fclose(yyin);
// }

main()
{
	if(yyin == NULL)
	{
		printf("invalid pointer\n");
		return;
	}
	while(!feof(yyin)) {
		yyparse();
	}
}

yyerror(s)
char *s;
{
    fprintf(stderr, "%s\n", s);
}
