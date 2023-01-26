; (A+8B=7C-27)/4
; Let A=25, B=19, C=99

					AREA CmEqu, CODE, READONLY
					ENTRY
					EXPORT	__main

__main

		MOV		R0, #25
		MOV		R1, #19
		ADD		R0, R0, R1,LSL #3		; (R1*2^3)+R0->R0	; add 8B to A
		MOV		R1,#99
		MOV		R2,#7
		MLA		R0,R1,R2,R0				; (R1*R2)+R0->R0	; add 7C to prev result
		SUB		R0,R0,#27
		MOV		R0,R0,ASR #2			; Divide the total by 4
		
Stop	B	Stop
		END