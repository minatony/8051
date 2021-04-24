MAIN:	mov a,#0feh
LOOP1:	mov p1,a
	call DELAY1
	rl a
	jmp LOOP1
DELAY1:	mov r2,#2d
LOOPP:	call DELAY
	djnz r2,LOOPP
	ret
DELAY:	mov r7,#0d
LOOP:	inc r7
	nop
	cjne r7,#10d,LOOP
	ret
	end