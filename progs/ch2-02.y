%{
void yyerror(const char *s); 
%}
%%
program:
 ;
%%
void yyerror(const char *s) 
{
}
// int main() 
// {
 // yyparse(); 
 // return 0; 
// } 


// main(argc,argv)
// int argc;
// char **argv;
// {

	// if (argc > 1) {
		// FILE *file;

		// file = fopen(argv[1], "r");
		// if (!file) {
			// fprintf(stderr,"could not open %s\n",argv[1]);
			// exit(1);
		// }
		// yyin = file;
		// yylex();
		// printf("%d %d %d\n",charCount, wordCount, lineCount);		
	// }
	// else
	// {
		// yyin = stdin;
		// while(!feof(yyin)) {
			// yylex();
			// printf("%d %d %d\n",charCount, wordCount, lineCount);		
		// }
	// }


	// return 0;
// }
