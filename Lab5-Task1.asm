.model tiny
.data
	strA db "The character entered is a$"
	strNotA db "The character entered is not a$"
.code
.startup
    mov ah, 01		; reading a character
    INT 21h
    cmp al, 61h		; comparing the input character to 'a' (61h)
    jz x1

    lea dx, strNotA	; displaying strnotA
    mov cx, 26
    mov ah, 09h
    INT 21h
    jmp ending

x1: lea dx, strA	; displaying strA
    mov cx, 30
    mov ah, 09h
    INT 21h

ending:

.exit
end
