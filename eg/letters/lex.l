digit[0-9]
letter[A-Za-z]
%{
	int count;
	int linenum;
%}
%%

{letter}({letter}|{digit})* count++;
[ \t\n]            ;
.            ;
%%
int yywrap()
{
	return 1;
}
int main(int argc, char *argv[])
{
	yylex();
	printf("number of identifiers=%d\n", count);
	printf("linenum =%d\n", linenum);
	return 0;
}

