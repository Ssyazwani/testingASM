org 100h
jump start ; Jump over the data to the start of the code
marks db 30,87,48,55,47,34,76,81,31,48 ; 10 elements in array (marks)
start:

mov cx,10 ;  CX is the counter for 10 elements
lea si marks ;si is source index - marks would be the source

again:
mov al,[si]  ; al will get the value from [si] (memory which is marks)
cmp al,47 ; comparing the [si] with 47
jb next   ; if true that is is below 47 ( jb is jump belum), proceed to next
cmp al,49 ; comparing the [si] with 49
ja next ; if true that is is above 49 ( ja is jump above), proceed to next
mov[si],50 ; If AL is between 47 and 49 (inclusive), set it to 50

next:
inc si ; Move to the next element in the array
dec cx ; Decrease the loop counter
jnz again ; do again if cx is not 0
ret ; return
