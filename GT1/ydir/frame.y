%{
//#include <iostream>
void yyerror(const char *s); 
//int yywrap(void);
int framelex(void);
int yywrap(void);
%}
%%
program:
 ;
%%
void yyerror(const char *s) 
{
}
//int framelex(void)
//{
// return 1;
//}


int main() 
{
 yyparse(); 
 return 0; 
} 
