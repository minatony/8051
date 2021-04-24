org 000h
jmp main
org 00bh
isrt0:	cpl p1.0
	reti
org 30h
main:	mov tmod,#2h
	mov th0,#0ceh
	setb tr0
	mov ie,#82h
	jmp $
	end