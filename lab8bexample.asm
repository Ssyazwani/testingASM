; Lab8b.asm

   
;This is a sample for I/O
;characters input from the keyboard will be displayed

name "key"

org     100h

; print message:
mov dx, offset msg
mov ah, 9
int 21h

wait_for_key:

; check for keystroke in
; keyboard buffer:
mov     ah, 1
int     16h      ;BIOS interrupt 
jz      wait_for_key

; get keystroke from keyboard:
; (remove from the buffer)
mov     ah, 0
int     16h

; print the key:
mov     ah, 0eh
int     10h

; press 'esc' to exit:
cmp     al, 1bh
jz      exit

jmp     wait_for_key

exit:
ret

msg  db "Simple IO example", 0Dh,0Ah
db "Type something! ", 0Dh,0Ah
db "Press Esc to exit.", 0Dh,0Ah, "$"

end