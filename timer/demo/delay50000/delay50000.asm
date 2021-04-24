org 0000h
main:	mov tmod,#10h ; timer 0 k dung, timer 1 o mode 1
	mov r7,#1d
loop:	mov th1,#3ch
	mov tl1,#0b0h
	setb tr1
wait:	jnb tf1,wait
	clr tr1
	clr tf1
	djnz r7,loop
	ret
	end