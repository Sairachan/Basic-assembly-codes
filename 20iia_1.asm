		AREA BT,CODE,READONLY
ENTRY
	 LDR R1,=0X40000020
	 LDR R0,=0X40000000
     MOV R5,#0X03
LOOP LDR R2,[R0],#4
     STR R2,[R1],#4
	 SUBS R5,#0X01
	 BNE LOOP
S B S
 END