		AREA MAX,CODE,READONLY 
ENTRY MOV R0,#0X04 
	LDR R1,=ARRAY 
	LDR R2,[R1],#4 
	LDR R5,=0X40000000 
LOOP LDR R3,[R1],#4 
	CMP R2,R3 
	MOVCS R2,R2 
	MOVCC R2,R3 
	SUBS R0,R0,#0X01 
	BNE LOOP 
STOP B STOP 
ARRAY DCD 0X55554411,0X44567890,0X12341111,0X11111111,0X22222222 
	END