set BISON_HAIRY="D:\Software\linux\yacc_lex\UnxUtils\usr\local\share\bison.hairy"
set BISON_SIMPLE="D:\Software\linux\yacc_lex\UnxUtils\usr\local\share\bison.simple"
set PATH = %PATH%;D:\Software\linux\yacc_lex\flex-2.5.4a-1-bin\bin;D:\Software\linux\yacc_lex\bison-2.4.1-bin\bin;


flex frame.l
dir 

bison -d frame.y 
REM bison frame.y 
dir 

pause


