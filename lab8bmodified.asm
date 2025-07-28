;Modify the above code to read 10 characters from the keyboard
; and store it in memory location 2000h.


org 100h 
jmp start

datab db 10 dup (?)                  
                
start: 
mov di,2000h
mov cx,10
lea si,datab
                
again:    
mov ah,0
int 16h
mov [di],al
inc di
loop again

ret                
