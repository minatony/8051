org 0000h ; interrupt trang 188 giao trinh vxl 8051 dhcn
ljmp main
org 000bh
ljmp t0isr
org 001bh
ljmp t1isr
org 0030h
main:	mov tmod,#12h
	mov th0,#0b9h
	setb tr0
	setb tf1
	mov ie,#8ah
	;setb tf1
	sjmp $
t0isr:	cpl p1.7
	reti
t1isr:	clr tr1
	mov th1,#0fch
	mov tl1,#18h
	setb tr1
	cpl p1.6
	reti
	end