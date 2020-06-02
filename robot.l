%{
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char const*);
extern int yylval;
%}

%%

HEY {yylval=atoi(yytext);return HEY;}

ROBOT {yylval=atoi(yytext);return ROBOT;}

PLEASE {yylval=atoi(yytext);return PLEASE;}

MOVE {yylval=atoi(yytext);return MOVE;}

TO {yylval=atoi(yytext);return TO;}

STOP {yylval=atoi(yytext);return STOP;}

EAST {yylval=atoi(yytext);return EAST;}

WEST {yylval=atoi(yytext);return WEST;}

NORTH {yylval=atoi(yytext);return NORTH;}

SOUTH {yylval=atoi(yytext);return SOUTH;}

[ \t\n]+    ;

.           printf( "Unrecognized character: %s\n", yytext);

%%

int yywrap(void) {
return 1;
}
