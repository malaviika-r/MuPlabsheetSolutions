.model tiny
.data
		array1 db 91h, 02, 083h, 0Ah, 075h, 0Ah, 047h, 012h, 076h, 61h
.code
.startup
		lea si, array1
		mov cl, 0Ah 		; count 
		mov al, 0Ah		; to check for the presence of "0A"
		mov bl, 'E' 		; ASCII code for "E" is 45h
	X1: 	cmp al, [si]
		jne X2
		mov [si], bl
	X2:	inc si
		dec cl
		cmp cl, 00h
		jne X1
.exit
end
