.model small
.stack 100h

.data
    num db 7

    even_msg db 'Number is EVEN$'
    odd_msg  db 'Number is ODD$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num          ; Load number into AL
    and al, 01h          ; Check last bit

    jz EVEN              ; If 0, number is even

    ; Number is odd
    lea dx, odd_msg
    mov ah, 09h
    int 21h
    jmp EXIT

EVEN:
    lea dx, even_msg
    mov ah, 09h
    int 21h

EXIT:
    mov ah, 4ch
    int 21h

main endp
end main