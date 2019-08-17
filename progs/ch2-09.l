%{
int comments, code, whiteSpace;
%}

%s COMMENT

%%
^[ \t]*"/*"	{ BEGIN COMMENT; /* enter comment eating state */ }
^[ \t]*"/*".*"*/"[ \t]*\n {
		 comments++; /* self-contained comment */
		 }

<COMMENT>"*/"[ \t]*\n	{ BEGIN 0;  comments++;}
<COMMENT>"*/"		{ BEGIN 0; }
<COMMENT>\n	{ comments++; }
<COMMENT>.\n	{ comments++; }

^[ \t]*\n	{ whiteSpace++; }

.+"/*".*"*/".*\n	{ code++; }
.*"/*".*"*/".+\n	{ code++; }
.+"/*".*\n		{ code++; BEGIN COMMENT; }
.\n			{ code++; }

.			; /* ignore everything else */
%%
// main()
// {
	// yylex();
	// printf("code: %d, comments %d, white space %d\n",
		// code, comments, whiteSpace);
// }

//显示字符数量，注释数量，空格数量
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
	printf("code: %d, comments %d, white space %d\n",
		code, comments, whiteSpace);	
	fclose(yyin);
}


