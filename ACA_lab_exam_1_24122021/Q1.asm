; ACA Lab Exam 24/12/2021
; Q: Store number into 0x40000000, add the Nibble 0 and Nibble 4, and
;	 store the addition result into 0x4000004 location
; 
;	Author: Dnyaneshwar Galdhar
;	Roll Number: 211039006

	
	
	
	AREA Addition_of_nibble, CODE, READONlY
	ENTRY
MAIN
	LDR R0, NUM		
	LDR R4, RESULT		; Load addr of Result in R4
	LDR R1, [R0]		; Load the Num into R1
	MOV R2, R1			; Copy Num into R2
	ROR R2, #16			; Shit Nibble 4 to position of Nibble 0
	AND R2, R2, #0x0F	; Retain Nibble 4 and mask all remaining bits
	AND R1, R1,#0X0F	; Retain Nibble 0 and mask all remaining bits
	ADD R3, R1, R2		; Add Nibble0 and Nibble 4 and save the result in R3
	STR R3,[R4]			; Store the R3(Addition of Nibbles) to Result location
	
NUM	DCD 0X40000000		; Addr of Num
RESULT DCD 0X4000000C	; Addr of Result
END

