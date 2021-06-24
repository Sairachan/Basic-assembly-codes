		AREA MAX2,CODE,READONLY
ENTRY
	CODE32
	MOV R7,#0X05
	LDR R0,=0X40000000
	LDR R3,[R0]
	LDR R1,=THUMB+1
	BX R1
	CODE16
THUMB ADD R0,#0X04
	LDR R2,[R0]
	MOV R4,R3
    SUB R4,R2
	BMI L2
	BPL L1
L2 MOV R3,R2
   SUB R7,#0X01
   BNE THUMB
   BEQ STOP
L1 SUB R7,#0X01
   BNE THUMB
   BEQ STOP
STOP B STOP
	END
