; Infinite loop to keep the hard disk boot active
inf_loop:
	jmp inf_loop
	
; Fill with 5120 zeros
; How it works:
; $ is the current address in the output file being generated (the .bin binary file being generated and written to the disk to create the bootable sector
; $$ refers to the start of the current section, in this case the beginning of the boot sector
times 510-($-$$) db 0

dw 0xaa55
