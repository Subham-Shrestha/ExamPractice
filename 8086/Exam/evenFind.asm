.model small
.stack 100h

.data
    num db 8
    evenmsg db 'Even$'
    oddmsg  db 'Odd$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num
    mov ah, 0
    mov bl, 2
    div bl              ; remainder stored in AH

    cmp ah, 0
    je EVEN

    lea dx, oddmsg
    mov ah, 09h
    int 21h
    jmp EXIT

EVEN:
    lea dx, evenmsg
    mov ah, 09h
    int 21h

EXIT:
    mov ah, 4ch
    int 21h

main endp
end main
