	.begin
Dir 	.equ 10000
	.org 2048
main:	sethi Dir, %r1
	srl %r1, 10, %r1

	add %r0, %r0, %r2
	sethi 284040h, %r2
	add %r2, 002h, %r2
	ld %r2, %r2
	st %r2, %r1
	jmpl %r15+4, %r0

	.org A1010002h	! A	1    0    1    0    0     0   2
array:	.dwb 6			!1010 0001 0000 0001 0000 0000 0000 0010
				!1010000100000001000000 0000000010
				!10 1000 0100 0000 0100 0000  00 0000 0010
				!284040    002	
	.end
