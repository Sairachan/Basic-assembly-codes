		AREA ADEV,CODE,READONLY
ENTRY
	CODE32
	LDR R0,=0X40000000
	MOV R2,#0X05
	LDR R3,=THUMB+1
	BX R3
	CODE16
THUMB LDR R4,[R0]
      ADD R0,#0X04
      MOV R6,R4
      LSR R4,#1
	  BCC EV
	  BCS LOP
EV ADD R5,R6
    SUB R2,#0X01
	BNE THUMB
	BEQ STOP
LOP SUB R2,#0X01
	BNE THUMB
	BEQ STOP
STOP B STOP
	END
