						AREA	myCode,CODE,READONLY
						ENTRY
						EXPORT	__main
						
__main
			LDR			R0,=SIGN_DATA
			MOV			R3,#9			; we'll be using 9 #s so let's count them
			MOV			R2,#0
			
TOTAL		LDRSB		R1,[R0]
			ADD			R2,R2,R1		; load sign data & add it to R2
			ADD			R0,R0,#1		; increment 1 byte further into memory
			SUBS		R3,R3,#1		; decrement counter by 1
			BNE			TOTAL
			
MINSET		MOV			R3,#9			; resetting counter
			ADD			R4,R2,#0		; storing result of MAX in R4
			SUB			R0,R0,#9		; increment -9 bytes back into memory
			
MIN			LDRSB		R1,[R0]
			CMP			R1,R2
			BGE			NEXT
			MOV			R2,R1
			
NEXT		ADD			R0,R0,#1
			SUBS		R3,R3,#1
			BNE			MIN

Stop		B	Stop

SIGN_DATA	DCB		+13,-10,+9,+14,-18,+20,+12,-19,+16
			ALIGN
			END