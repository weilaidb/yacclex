%{
/*
 * We expand upon the first example by adding recognition of some other
 * parts of speech.
 */
int yywrap(void); 
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
go		{ printf("%s: is a verb 1111111111111111111\n", yytext); }

very |
simply |
gently |
quietly |
calmly |
angrily		{ printf("%s: is an adverb 222222222222222222\n", yytext); }

to |
from |
behind |
above |
below |
between |
below		{ printf("%s: is a preposition 33333333333333\n", yytext); }

if |
then |
and |
but |
or		{ printf("%s: is a conjunction 444444444444444\n", yytext); }

their |
my |
your |
his |
her |
its		{ printf("%s: is an adjective 55555555555555555\n", yytext); }

I |
you |
he |
she |
we |
they		{ printf("%s: in a pronoun 666666666666666666\n", yytext); }


[a-zA-Z]+ {
	 printf("%s:  don't recognize, might be a noun -----------------\n", yytext);
	}

\&.|\n		{ ECHO; /* normal default anyway */ }

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
	if(yyin == NULL)
	{
		printf("open fail:%s\n", argv[1]);
		return -1;
	}
	yylex();
	fclose(yyin);
}

