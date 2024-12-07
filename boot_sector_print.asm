mov ah, 0xe 	; Move 14 (0x0e) into upper section of %ax (%ah) - 14 means write to tty mode (tty mode is teletypewriter which is like a bus to write to output devices on computer)
mov al, 0x48	; 0x48 is 'H' --> moved into lower 8-bits of %ax (%al)
int 0x10	; int 0x10 is saying interrupt at position 16 in the interrupt table --> 16 is the general interrupt for video services (screen)
mov al, 0x65	; 0x65 is 'e'
int 0x10
mov al, 0x6c	; 0x6c is 'l'
int 0x10
mov al, 0x6c	; 0x6c is 'l'
int 0x10
mov al, 0x6f	; 0x6f is 'o'
int 0x10
mov al, 0x20	; 0x20 is space
int 0x10
mov al, 0x57	; 0x57 is 'W'
int 0x10
mov al, 0x6f	; 0x6f is 'o'
int 0x10
mov al, 0x72	; 0x72 is 'r'
int 0x10
mov al, 0x6c	; 0x6c is 'l'
int 0x10
mov al, 0x64	; 0x64 is 'd'
int 0x10

inf_loop:
	jmp inf_loop

times 510-($-$$) db 0	; $ is the current address and $$ is the start of the file address
dw 0xaa55
