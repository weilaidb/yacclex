%{
/*
 * this sample demonstrates (very) simple recognition:
 * a verb/not a verb.
 */

%}
%%

[\t ]+		/* ignore white space */ ;

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did |
will |
would |
should |
can |
could |
has |
have |
had |
go		{ printf("%s: is a verb ~~~~~~~~~~~~\n", yytext); }

[a-zA-Z]+ 	{ printf("%s: is not a verb -------------\n", yytext); }

.|\n		{ ECHO; /* normal default anyway */ }
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
