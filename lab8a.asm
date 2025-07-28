; Lab8a.asm

   
org 100h        
                         
jmp start                              
                         
datab db 01h,02h,02h,05h,07h,12h,03h,04h,07h,11h
                        
start:  mov di,1000h     ;store result in memory starting DS:1000h.        
        mov cx,10        ;counter for number of data.
        lea si,datab     ;offset to read next byte data.
        
again:  mov al,[si]     ;moving [si] into al
        mov [di]2,al    ;[di] points to 1002h, moving al into [di]2
        inc si          ;increment of si to the next source byte (1 to 2)
        inc di          ;di increase by 1 <move from 1002h to 1003h) 
        loop again
 
        mov di,2000h     ;result store in memory starting DS:2000h.
        mov cx,10        ;counter for number of data {10}
        lea si,datab     ;offset to read next byte data.
        mov bx,si        ;moving si to bx          
        mov si,9         ;moving 9 into si
        
again2: mov al,[bx][si]  ;load byte at address bx+si into al
        mov [di],al      ;move al into [di]
        dec si           ;decrement of si to the next source byte ( 9 to 8) -> reverse part is here
        inc di           ;di increase by 1 <move from 2001h to 2002h) 
        loop again2 
                    
end:    ret