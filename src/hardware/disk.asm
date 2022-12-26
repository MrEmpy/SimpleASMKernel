%IFNDEF __DISK_DRIVE__
%DEFINE __DISK_DRIVE__

segmentaddr dw 0000h
segmentoffset dw 0000h
sector db 0
trilha db 0
head db 0
drive db 0
sectornum db 0

read db 02h
write db 03h

DiskRead:
    mov ah, byte[read]
    call DiscOpc
ret

DiskWrite:
    mov ah, byte[write]
    call DiscOpc
ret

DiscOpc:
    mov al, byte[sectornum]
    mov ch, byte[trilha]
    mov cl, byte[sector]
    mov dh, byte[head]
    mov dl, byte[drive]
    mov bx, word[segmentaddr]
    mov es, bx
    mov bx, word[segmentoffset]
    int 0x13
ret

%ENDIF
