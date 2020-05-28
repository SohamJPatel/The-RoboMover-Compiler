# The-RoboMover-Compiler
A language processor designed using FLEX and YACC to identify position of robot after certain moving instructions in XY co-ordinate

Welcome 

RoboMover Compiler is a Lang. proc. designed to process the moving instructions to the robot and determine final resulting position
in XY co-ordinates

HOW TO USE : 

specify command as given : START {DIRECTIONS} STOP
Here, DIRECTIONS can be any of four Directions : EAST,WEST,NORTH,SOUTH. 

Example : START NORTH NORTH WEST STOP
Output : X : -1,Y : 2 
