; chon mode cho timer
mov tmod,#data
; quy dinh diem bat dau dem cua bo dinh thoi
mov thx,#data
mov tlx,#data ; k dung neu timer o mode 2
; cho timer chay
setb trx
; kiem tra co bao tran
jnb tfx,$
;; hoac
wait: jnb tfx, wait
; xoa co bao tran ( chuan bi cho lan dinh thoi tiep theo )
clr tfx
; dung timer sau khi hoan tat qua trinh dinh thoi
clr trx
;;;trang 136 giao trinh vi xu ly 8051 DHCN