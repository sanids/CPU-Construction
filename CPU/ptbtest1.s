MOV R0,X
LDR R1,[R0]
MOV R2,Y
STR R1,[R2]
HALT
X:
.word 0xDCAB
Y:
.word 0x0110