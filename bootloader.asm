ORG 0x7c00
BITS 16


init:
    mov si, message
    call main
    jmp $

main:
    mov bx, 0
.wank:
    lodsb
    cmp al, 0
    je .cummed
    call print_char
    jmp .wank
.cummed:
    ret

print_char:
    mov ah, 0eh
    int 0x10
    ret

message: db 'BootLoader DeezNuts', 0

times 510-($ - $$) db 0
dw 0xAA55
