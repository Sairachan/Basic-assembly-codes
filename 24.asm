		AREA add, CODE
entry 
	LDR R5,=array
	LDR R1,VAL 
	MOV R2,R1
	LDR R3,=0X40000200
	MOV R2, R2, LSL #0X02 
LOOP LDR R0,[R5],#4
     ADD R0, R0, R2 
	 LDR R4,=0X40000000
	 STR R0, [R4]
	 LDR R2, [R4] 
	 STR R2, [R3],#4 
	 SUB R1,R1,#1
	 CMP R1,#0X00
	 BNE LOOP
	 BEQ STOP
STOP b STOP
array DCD 1,2,6,24,120
VAL DCD 5
	end