org 0000h
MAIN:	mov a,#0feh
L:	mov r1,#5
L1:	mov p1,a
	call DELAY1
	rl a
	djnz r1,L1
	jmp L
DELAY1:	mov r7,#0h
LOOP:	inc r7
	cjne r7,#10d,LOOP
	ret
	end