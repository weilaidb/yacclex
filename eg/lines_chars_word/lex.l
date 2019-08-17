digit[0-9]
letter[A-Za-z]
%{
	int nchar;
	int nword;
	int nline;
%}
%%

\n {nline++;nchar++;}
[^\t\n]+ {nword++, nchar+=yyleng;}
. {nchar++;}
%%
int yywrap()
{
	return 1;
}
int main(int argc, char *argv[])
{
	yylex();
	printf("nchar\tnword\tnline\n");
	printf("%d\t%d\t%d\n", nchar, nword, nline);
	return 0;
}

