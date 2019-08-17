%%
.|\n	ECHO;

%%

int main(int argc, char **argv) 
{
	if(argc < 2)
	{
		printf("==== show filename's linenum =====\n");
		printf("usage:app.exe filename\n");
		return -1;
	}
	yyin = fopen(argv[1], "r");
	if(yyin == NULL)
	{
		printf("open fail:%s\n", argv[1]);
		return -1;
	}
	yylex();
	fclose(yyin);
}