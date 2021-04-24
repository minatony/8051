ORG 000H
ljmp MAIN
ORG 00BH
ljmp ngatt0
ORG 030H
MAIN:
	MOV TMOD ,#001H
	MOV TH0,#03CH
	MOV TL0,#0B0H
	SETB TR0
	SETB ET0
	SETB EA
	SJMP $
NGATT0:	clr p1.0
	MOV R1,#0d
	MOV R2,#0d
	mov R3,#0d
loop:	inc r3
	cjne r3,#100d,loop
l1:	inc r2
	cjne r2,#60d,l1
l2:	inc r1
	cjne r1,#20d,l2
	setb p1.0
	RETI
	END