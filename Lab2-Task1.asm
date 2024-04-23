Create text file "data.txt" with content: Malavika*MUP
In debugx, 
  -N data.txt 
  -L ES:0200          ; load the data file directly into memory ES:0200
  -D ES:0200          ; display the memory ES:0200
  -a                  ; assemble command to write MOV commands
	  MOV AH, 5B        ; 5B is the ASCII code for "["
	  MOV AL, 5D        ; 5D is the ASCII code for "]"
	  MOV ES:[0208], AH
	  MOV ES:[020C], AL
