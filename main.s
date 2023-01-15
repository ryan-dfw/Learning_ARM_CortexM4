			AREA 	Project_Swap,CODE,READONLY
			ENTRY
			EXPORT	__main
		
__main
			LDR		R0,=0x0BABEFACE
			LDR		R1,=0x0DEADBEEF
			EOR		R0,R0,R1
			EOR		R1,R0,R1
			EOR		R0,R0,R1
		
Stop		B		Stop
			ALIGN
			END