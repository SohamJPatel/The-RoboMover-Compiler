%{
#include<stdio.h>
#include <stdio.h>
int yylex(void);
void yyerror(char *);
int xpos=0,ypos=0;
%}


/*%token START*/
%token STOP
%token EAST
%token WEST
%token NORTH
%token SOUTH
%token HEY
%token ROBOT
%token PLEASE
%token MOVE
%token TO


%%
COMMAND : 
		HEY ROBOT PLEASE DIRECTION_COMMAND DR STOP {printf("X : %d,Y : %d",xpos,ypos);}
			;
DR :    /*empty*/
	|DIRECTION_COMMAND DR 
	|DIRECTION_COMMAND
	;
DIRECTION_COMMAND : MOVE TO NORTH {ypos+=1;}
		   |MOVE TO EAST {xpos+=1;}
		   |MOVE TO WEST {xpos-=1;}
		   |MOVE TO SOUTH {ypos-=1;}
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
