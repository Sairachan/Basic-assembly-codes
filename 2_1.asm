            AREA ARRAYSUM,CODE,READONLY
ENTRY
	LDR R3,=0X40000000
	LDR R2,=ARRAY1
	LDR R4,=ARRAY2
	MOV R5,#0X05
ADD LDR R0,[R2],#4
	LDR R6,[R4],#4
	ADD R7,R0,R6
	STR R7,[R3],#4
	SUBS R5,R5,#1
	BNE ADD
STOP B STOP
ARRAY1 DCD 0X01,0X02,0X03,0X04,0X05
ARRAY2 DCD 0X05,0X04,0X03,0X02,0X01
	END
