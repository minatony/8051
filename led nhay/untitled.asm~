MAIN:	clr p1.0
	call DELAY1
	setb p1.0
	call DELAY1
	jmp MAIN
DELAY1:	mov r5,#1d
LOOPA:	mov r6,#1d
LOOPB:	call DELAYH
	djnz r6,LOOPB
	djnz r5,LOOPA
	ret
DELAYH: mov r4,#1d
LOOPC:	mov r3,#1d
LOOPD:	call DELAYS
	djnz r3,LOOPD
	djnz r4,LOOPC
	ret
DELAYS:	mov r7,#0h
LOOP: 	inc r7
	nop
	cjne r7,#0fah,LOOP
	ret
	end