$include(reg51.inc)
ljmp 200h

org 3h
ljmp 300h

org 13h
mov r7,#0Ah
XX: setb p1.0
mov r5,#06h
djnz r5,$
clr p1.0
mov r5,#06h
djnz r5,$
djnz r7,XX
reti

org 200h
clr ea
mov ie,#85h
mov ip,#04h
mov sp,#40h
mov tcon,#05h
sjmp $

org 300h
mov r7,#05h
MM: setb p1.0
mov r5,#06h
djnz r5,$
clr p1.0
mov r5,#06h
djnz r5,$
djnz r7,MM
reti

