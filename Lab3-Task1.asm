.model tiny
.data
		array1 db 91h, 02, 083h, 0Ah, 075h, 0Ah, 047h, 012h, 076h, 61h
.code
.startup
		lea bx, array1
		mov cl, 0Ah 		// count 
		mov al, 0Ah		// to check for the presence of "0A"
		mov DX, 45h 		// ASCII code for "E" is 45h
	X1: 	cmp al, [bx]
		jne X2
		mov [bx], DX
	X2:	inc bx
		dec cl
		jnz X1
.exit
end
