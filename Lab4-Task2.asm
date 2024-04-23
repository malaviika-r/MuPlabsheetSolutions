.model tiny
.data
		string 			db 'BITSIOTLAB'
		substring 		db 'IOT'
		stringlength 	db 0Ah
		substringlength db 03h
.code
.startup
				lea bx, string 
				mov dl, stringlength
compareString:  mov si, bx
				lea di, substring
				mov cl, substringlength
				repe cmpsb
				cmp cl, 00h
				jz substringFound
				inc bx
				dec dl
				jnz compareString
				jmp end_prog
substringFound: mov al, '*'
				mov [bx], al
				mov di, bx
				inc di
				mov cl, dl
				sub cl, substringlength
repeatCopying:  lodsb
				stosb
				loop repeatCopying
end_prog:       nop
.exit 
end
