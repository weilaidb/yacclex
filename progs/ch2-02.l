%{
unsigned charCount = 0, wordCount = 0, lineCount = 0;
int yywrap(void); 
%}

word [^ \t\n]+
eol  \n
%%
{word}	{ wordCount++; charCount += yyleng; }
{eol}	{ charCount++; lineCount++; }
.	{charCount++;ECHO;}
%%
int yywrap(void) 
{ 
 return 1; 
} 


main(argc,argv)
int argc;
char **argv;
{

/**
* 单文件读入
**/

	if (argc > 1) {
		FILE *file;

		file = fopen(argv[1], "r");
		if (!file) {
			fprintf(stderr,"could not open %s\n",argv[1]);
			exit(1);
		}
		yyin = file;
	
	}
	yylex();
	printf("%d %d %d\n",charCount, wordCount, lineCount);	

	return 0;
}
