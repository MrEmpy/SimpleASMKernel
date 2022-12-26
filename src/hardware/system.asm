%IFNDEF __SYSTEM_DRIVE__
%DEFINE __SYSTEM_DRIVE__

Reboot:
    db 0x0ea
    dw 0x0000
    dw 0xffff

%ENDIF
