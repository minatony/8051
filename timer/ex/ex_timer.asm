org 0000h
mov tmod,#02h ; timer 0 o mode 2
loop: 	mov th0,#9ch
	;mov tl0,#9ch
	setb tr0
wait:	jnb tf0, wait
	clr tr0
	clr tf0
	cpl p1.0
	jmp loop
	end