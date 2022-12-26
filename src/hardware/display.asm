%IFNDEF __DISPLAY_DRIVE__
%DEFINE __DISPLAY_DRIVE__

color db 00h

CleanScreen:
    mov ax, 02
    int 0x10
ret

SetBackGroundColor:
    mov ah, 0x09
    mov cx, 1000h
    mov al, 20h
    mov bl, byte[color]
    int 0x10
ret

%ENDIF
