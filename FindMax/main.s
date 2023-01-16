COUNT		RN		R0		; counts
MAX			RN		R1		; tracks max number
POINTER		RN		R2
NEXT		RN		R3

					AREA	myData,DATA,READONLY
MYDATA				DCD		69,87,86,45,75		; init random #s
					
					AREA	myCode,CODE,READONLY
					ENTRY
					EXPORT	__main
						
__main
 			MOV		COUNT,#5			; init count as 5
			MOV		MAX,#0				; init max clear
			LDR		POINTER,=MYDATA 	; point to mydata block

AGAIN		LDR		NEXT,[POINTER]
			CMP		MAX,NEXT			; compare max to next
			BHS		CTNU				; if max>next, branch to ctnu
			MOV		MAX,NEXT			; max becomes next
	
CTNU		ADD		POINTER,POINTER,#4	; inc pointer by 4(next chunk of DCD)
			SUBS	COUNT,COUNT,#1		; decrement count by 1
			BNE		AGAIN				; branch to again if count not 0
			
Stop		B		Stop
			END