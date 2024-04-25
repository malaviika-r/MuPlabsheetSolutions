;Make sure there aren't any spaces
.model tiny
.data
	  	    max1 db 32h
	  	    act1 db ?
	  	    inp1 db 32 dup(0)
.code
.startup
			    lea dx, max1
			    mov ah, 0ah
			    INT 21h
			    lea bx, inp1
			    mov cl, act1
x1:		    mov ch, [bx]
			    sub ch, 32
			    mov [bx], ch
			    inc bx
			    dec cl
			    jnz x1
			    mov al, '$'
			    mov [bx], al
display:  lea dx, inp1
			    mov ah, 09h
			    int 21h
.exit
end
