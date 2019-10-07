digit[0-9]
letter[A-Za-z]

%{
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#define MAXPATH 1000


#define TESTCASE


int yywrap(void);
int yywrap(void);

    int yylineno;


    int nchar;
    int nword;
    int nline;

    int k;
    int lengs[100];
%}
%%

[a-z]+	lengs[yyleng]++;
.	|
\n	;

%%


// %%
// ^(.*)\n printf("%4d\t%s", yylineno++, yytext);
// %%


//int yywrap(void)
//{
//return 1;
//}

yywrap()
{
    int i;
    printf("Length  No. words\n");
    for(i=0; i<100; i++)
         if (lengs[i] > 0)
              printf("%5d%10d\n",i,lengs[i]);
    return(1);
}



int main(int argc, char **argv)
{
    printf("---- starting ------\n");
    #ifdef TESTCASE
    const char *filename = "test.txt";
    yyin = fopen(filename, "r");
    if(!yyin)
    {
        printf("open file failed:%s(%s)\n", filename, strerror(errno));
        printf("argv[0]:%s\n", argv[0]);
        printf("yyin   :%p\n", yyin);

        char buffer[MAXPATH];
        getcwd(buffer,MAXPATH);

        printf("getcwd :%s\n", buffer);
        return -1;
    }
    #else
    if(argc < 2)
    {
        printf("==== show filename's linenum =====\n");
        printf("usage:app.exe filename\n");
        return -1;
    }
    yyin = fopen(argv[1], "r");
    #endif
    yylex();
    fclose(yyin);
//    printf("nchar\tnword\tnline\n");
//    printf("%d\t%d\t%d\n", nchar, nword, nline);

    return 0;
}
