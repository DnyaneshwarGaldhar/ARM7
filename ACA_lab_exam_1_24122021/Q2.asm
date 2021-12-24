;	ACA Lab Exam 24/12/2021
;   Q: Add the positive array elements, stored from location 0x40000004, 
;	   and array length is stored at 0x40000000
; 
;	Author: Dnyaneshwar Galdhar
;	Roll Number: 211039006

	AREA Addition_of_arr, CODE, READONLY
	ENTRY

MAIN
	
	LDR R0, Count		; Load addr of value of Array length 
	LDR R1, [R0]		; R1 is an arr element count
	MOV R4, #00
	LDR R2, Arr			
	
LOOP	LDR R3, [R2]	; R3 Holds arr element 
		CMP R3, #0		; Check the sign of current number
		BMI NEXT		; Skip the number if it is negative, else add it 
		ADD R4, R4, R3	; Arr element addition
NEXT	SUB R1, R1, #1	; Count--
		ADD R2, R2, #04 ; Index++
		CMP R1, #0
		BNE LOOP
			
	
Arr	DCD 0X40000004		; Addr of 1st array element
Count DCD 0X40000000	; Addr holding array size
END