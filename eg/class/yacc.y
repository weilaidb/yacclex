%{
#include <iostream>
#define YYSTYPE std::string
extern int yylex();
void yyerror(const char *msg);
%}

%token CLASS
%token IDENTIFIER

%%
program:
	| program class //处理C++类
	| program error ';' //一旦出现错误直接跳到最近的分号处，回复正常的扫描过程
						//特别注意这里的标记符号error,它是由yacc自动生成的标记
						//和上面的CLASS和IDENTIFIER标记一样都可以直接应用到语法
						//描述中
	;
class:
	CLASS IDENTIFIER '{' program '}' ';'
	{std::cout << "发现类名:" << $2 << std::endl;}
	;
%%
	void yyerror(const char *s)
	{
//		std::cerr << "发现错误:" << s << std::endl;
	}

	int main()
	{
#if YYDEBUG
		yydebug = 1;
#endif
		yyparse();
////		std::copy(g_Includes.begin(), g_Includes.end(), std::ostream_iterator<Include>(std::cout,"\n"));
//		std::copy(g_Includes.begin(), g_Includes.end(),
//				std::ostream_iterator<Include>(std::cout,"\n"));

		return 0;

	}


