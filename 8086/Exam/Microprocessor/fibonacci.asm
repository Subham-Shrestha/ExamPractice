.model small
.stack 100h

.data
    msg db 'Fibonacci Series: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg
    mov ah, 09h
    int 21h

    mov cx, 7       ; Number of terms
    mov al, 0       ; First number
    mov bl, 1       ; Second number

L1:
    ; Display current number
    mov dl, al
    add dl, 30h
    mov ah, 02h
    int 21h

    ; Print space
    mov dl, ' '
    mov ah, 02h
    int 21h

    ; Find next number
    mov ah, 0
    add al, bl
    xchg al, bl

    loop L1

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
