.model small
.stack 100h

.data
    msg db 'Sum = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5       ; N = 5
    mov ax, 0       ; AX = sum
    mov bx, 2       ; First even number

L1:
    add ax, bx      ; sum = sum + even number
    add bx, 2       ; next even number
    loop L1         ; repeat N times

    ; Display message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Display result
    mov dx, ax
    add dl, 30h
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
