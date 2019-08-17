%{
#include <iostream>
#include "main.hpp"
#define YYDEBUG 0

extern "C"{
	void yyerror(const char *s);
	extern int yylex(void);
}

std::vector<Include> g_Includes;
Include  *g_pInclude;
%}

%token INCLUDE
%token HEADERFILE

%%
program:
	| program include_preprocess
	;

include_preprocess:
		INCLUDE '<' HEADERFILE '>'
		{
			g_Includes.push_back(Include());
			g_pInclude = &g_Includes.back();
			g_pInclude->clear();
			g_pInclude->headerfile = $3.headerfile;
			g_pInclude->is_angle = true;  //是尖括号
			g_pInclude->is_quotation = false; //不是双引号
		}
		| INCLUDE '\"' HEADERFILE '\"'
		{
			// 值得说明的是：上面的include_preprocess用$表示，
			// 而不是用$0 表示。从左向右依次为：
			// include_preprocess $
			// INCLUDE $1
			// '\"' $2
			// HEADERFILE $3
			// '\"' $4
			g_Includes.push_back(Include());
			g_pInclude = &g_Includes.back();
			g_pInclude->clear();
			g_pInclude->headerfile = $3.headerfile;
			g_pInclude->is_angle = false;
			g_pInclude->is_quotation = true;
		}
		;
%%
	void yyerror(const char *s)
	{
		std::cerr << s<< std::endl;
	}

	int main()
	{
#if YYDEBUG
		yydebug = 1;
#endif
		yyparse();
//		std::copy(g_Includes.begin(), g_Includes.end(), std::ostream_iterator<Include>(std::cout,"\n"));
		std::copy(g_Includes.begin(), g_Includes.end(),
				std::ostream_iterator<Include>(std::cout,"\n"));

		return 0;

	}


