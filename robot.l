%{
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char const*);
extern int yylval;
%}

%%

START {yylval=atoi(yytext);return START;}

STOP {yylval=atoi(yytext);return STOP;}

EAST {yylval=atoi(yytext);return EAST;}

WEST {yylval=atoi(yytext);return WEST;}

NORTH {yylval=atoi(yytext);return NORTH;}

SOUTH {yylval=atoi(yytext);return SOUTH;}

"***"[^\n]*     /* eat up one-line comments */

[ \t\n]+    ;

.           printf( "Unrecognized character: %s\n", yytext);

%%

int yywrap(void) {
return 1;
}
