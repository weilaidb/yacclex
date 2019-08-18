%{
int yywrap(void);
int yywrap(void);
%}
%%
%%
int yywrap(void)
{
 return 1;
}



//int main(int argc, char **argv)
//{
//	if(argc < 2)
//	{
//		printf("==== show filename's linenum =====\n");
//		printf("usage:app.exe filename\n");
//		return -1;
//	}
//	yyin = fopen(argv[1], "r");
//	yylex();
//	fclose(yyin);
//}
