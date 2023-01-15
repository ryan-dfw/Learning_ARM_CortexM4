					AREA	SimpEq,CODE,READONLY
					ENTRY
					EXPORT	__main

__main
		ADRL	R4,Vals
		LDR		R1,[R4,#Q]
		LDR		R2,[R4,#R]
		LDR		R3,[R4,#S]
		ADD		R0,R1,R2
		ADD		R0,R0,R3
 
		STR		R0,[R4,#P]
Stop	B		Stop

P	EQU		0
Q	EQU		4
R	EQU		8
S	EQU		12
					AREA	SimpEq,DATA,READONLY
						
Vals	SPACE	4
		DCD		2
		DCD		4
		DCD		5
		ALIGN
		END