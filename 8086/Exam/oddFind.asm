.model small
.stack 100h

.data
    num db 7
    msg db 'Odd$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num
    mov ah, 0
    mov bl, 2

    div bl          ; remainder in AH

    cmp ah, 1
    je ODD

    jmp EXIT

ODD:
    lea dx, msg
    mov ah, 09h
    int 21h

EXIT:
    mov ah, 4ch
    int 21h

main endp
end main
