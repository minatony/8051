org 0000h
main:	mov tmod,#20h ; timer 0 k dung, timer 1 o mode 2
loop:	mov th1,#0ceh
	setb tr1
wait:	jnb tf1,wait
	clr tr1
	clr tf1
	cpl p1.0
	jmp loop
	end