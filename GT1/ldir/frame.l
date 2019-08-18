%{
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#define MAXPATH 1000


#define TESTCASE


int yywrap(void);
int yywrap(void);
%}
%%
%%
int yywrap(void)
{
return 1;
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
    return 0;
}
