org 0000h
mov tmod,#01h ; timer 0 o mode 1
loop: 	;mov th0,#0feh ;- 500 us
	mov th0, #0ffh
	mov tl0,#9ch
	setb tr0
wait:	jnb tf0, wait
	clr tr0
	clr tf0
	cpl p1.0
	jmp loop
	end