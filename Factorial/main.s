				AREA	factorial,CODE,READONLY
				ENTRY
				EXPORT	__main
					
; computing n factorial where n=10
__main
		MOV		R6,#10
		MOV		R7,#1
loop
		CMP		R6,#0
		ITTT	GT			; if-then comparison, if prev comparison = greater than (ie is r6>#0) then do the following. final t = else clause
		MULGT	R7,R6,R7	; if so, multiply r7 by r6 and store in r7
		SUBGT	R6,R6,#1	; if so (GT), decrement r6 by 1, storing into r6
		BGT		loop		; break if greater than to loop point
		
Stop	B		Stop
		END