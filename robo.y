%{
#include<stdio.h>
#include <stdio.h>
int yylex(void);
void yyerror(char *);
int xpos=0,ypos=0;
%}


%token START
%token STOP
%token EAST
%token WEST
%token NORTH
%token SOUTH

%%
COMMAND : 
			START DIRECTION DR STOP {printf("X : %d,Y : %d",xpos,ypos);}
			;
DR : DIRECTION DR 
	|DIRECTION
	;
DIRECTION : NORTH {ypos+=1;}
		   |EAST {xpos+=1;}
		   |WEST {xpos-=1;}
		   |SOUTH {ypos-=1;}
		   ;
%%
void yyerror(char *s) {
fprintf(stderr, "%s\n", s);
}
int main(void) {
yyparse();
return 0;
}
/*int main(void)
{
	yyparse();
	return 0;
}*/
