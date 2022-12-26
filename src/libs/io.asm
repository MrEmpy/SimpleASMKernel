%IFNDEF __EMPENEL_IO_DRIVE__
%DEFINE __EMPENEL_IO_DRIVE__

Println:
    mov ah, 0x0e
    mov al, [si]
    print:
        int 0x10
        inc si
        mov al, [si]
        cmp al, 0
        jne print
    ret

%ENDIF