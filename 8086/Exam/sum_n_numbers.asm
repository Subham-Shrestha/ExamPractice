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
    mov bx, 1       ; BX = first natural number

L1:
    add ax, bx      ; sum = sum + number
    inc bx          ; next number
    loop L1         ; repeat until CX = 0

    ; Display message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Display sum (15)
    mov dx, ax
    add dl, 30h
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
