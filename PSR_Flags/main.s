				AREA myCode,CODE,READONLY
				ENTRY
				EXPORT		__main
				
__main

		LDR		R1,=1000000000		;Loading values
		LDR		R2,=2000000000
		LDR		R3,=3000000000
		LDR		R4,=4000000000
		LDR		R5,=4100000000
		
		MOV		R8,#0				;R8 to save lower word
		MOV		R9,#0				;R9 to accumulate carries
		
		ADDS	R8,R8,R1			;R8=R8+R1
		ADC		R9,R9,#0			;increment R9 by carry
		ADDS	R8,R8,R2
		ADC		R9,R9,#0			;inc R9 by car
		ADDS	R8,R8,R3
		ADC		R9,R9,#0			;"
		ADDS	R8,R8,R4
		ADC		R9,R9,#0			;"
		ADDS	R8,R8,R5
		ADC		R9,R9,#0			;"

Stop	B		Stop
		END