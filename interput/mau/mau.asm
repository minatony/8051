; khuon mau chuong trinh su dung ngat nho hon 8 byte
org 000h
ljmp main
;; hoac
jmp main
org 003h
; diem nhap ngat ngoai 0
reti
org 00bh
; diem nhap cua ngat timer 0
reti
org 013h
; diem nhap ngat ngoai 1
reti
org 01bh
; diem nhap cua ngat timer 1
reti
org 030h ;diem nhap chuong trinh chinh
main:
	end
;
; khuon mau chuong trinh su dung ngat lon hon 8 byte
; isr: chuong trinh ngat
org 000h
ljmp main
org 00bh ; diem nhap cho isr timer 0
ljmp t0isr ; lenh nhay den isr timer 0
org 013h ; diem nhap cho ngat ngoai 1
ljmp ex1isr ;lenh nhay den isr ngat ngoai 1
org 030h ;diem nhap chuong trinh chinh
main:
	sjmp $ ; lenh cach ly chuong trinh
t0isr:
	reti
ex1isr:
	reti
	end
;
; de ngat ta dung lenh
main: mov ie,#data
;; hoac
setb et1 ; cho phep ngat timer 1
; setb ex1 ;cho phep ngat ngoai 1
; setb et0 ;cho phep ngat timer 0
; setb ex0 ;cho phep ngat ngoai 0
setb ea ; cho phep tat ca cac ngat
; trang 177 giao trinh vi xu ly 8051 DHCN