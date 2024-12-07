[org 0x7c00]
print_x:
	db "X"

mov ah, 0xe
mov al, [print_x]
int 0x10

times 510-($-$$) db 0
dw 0xaa55

