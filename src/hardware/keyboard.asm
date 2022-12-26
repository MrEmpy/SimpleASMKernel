%IFNDEF __KEYBOARD_EMPY_SHARED_LIBRARY__
%DEFINE __KEYBOARD_EMPY_SHARED_LIBRARY__

ENTER_KEY db 0x0d
key db 0x0

PressKey:
    mov ah, 0x00
    int 0x16
    cmp al, [key]
    jne PressKey
ret

%ENDIF