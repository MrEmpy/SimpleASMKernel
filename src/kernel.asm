%INCLUDE "src/hardware/memory.asm"
[BITS 16]
[ORG KERNELOFFSET]

jmp Main

%INCLUDE "src/hardware/disk.asm"
%INCLUDE "src/hardware/display.asm"
%INCLUDE "src/hardware/system.asm"
%INCLUDE "src/hardware/keyboard.asm"
%INCLUDE "src/libs/io.asm"

Main:
    call Segmen
    call Stack
    call CleanScreen

    mov byte[color], 87h
    call SetBackGroundColor
    mov si, hwmsg
    call Println
    mov byte[key], 0x0d
    call PressKey
    call Reboot

    call End

Stack:
    mov ax, 0x0200b
    mov ss, ax
    mov sp, 0x0300b
ret

Segmen:
    mov ax, es
    mov ds, ax
ret

End:
    jmp $

hwmsg db "Hello, World! I'm a basic kernel developed by MrEmpy :D",13,10,"Press ENTER to restart",13,10,0    
baixo db "================================================================================",0
