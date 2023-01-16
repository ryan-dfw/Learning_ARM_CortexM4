				AREA simpleShift,Code,READONLY
				ENTRY
				EXPORT __main
						
__main
		MOV		R0,#0x11		; 17->R0
		LSL		R1,R0,#1		; R0*2->R1;	=34
		LSL		R2,R1,#1		; R1*2->R2; =68
	
Stop	B	Stop
		END