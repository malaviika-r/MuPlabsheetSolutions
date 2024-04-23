.model tiny 
.data
		  array1 db 91h, 02h, 083h, 0Ah, 075h, 0Ah, 047h
		  count db 07h
		  NEG1 db ?
.code
.startup
	  	lea bx, array1
		  mov ax, 00h            ; will be used for comparing each number in the array
		  mov cl, count
		  mov dl, 00h            ; for keeping count of negative numbers
	X1: cmp ax, [bx]
		  jle X2                 ; if 00 is smaller, will jump to X2
		  inc dl
	X2: inc bx
		  dec cl
		  jnz X1
		  mov NEG1, dl
.exit
end
