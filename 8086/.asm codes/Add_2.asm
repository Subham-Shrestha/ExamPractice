.model small
.stack 100h

.data
    num1 dw 1234h
    num2 dw 5678h

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, num1
    add ax, num2          ; AX = 68ACH

    mov bx, ax            ; Copy result to BX
    mov cx, 4             ; 4 hexadecimal digits

print:
    rol bx, 1
    rol bx, 1
    rol bx, 1
    rol bx, 1             ; Rotate 4 bits

    mov dl, bl
    and dl, 0Fh           ; Get last hexadecimal digit

    cmp dl, 9
    jbe number
    add dl, 7

number:
    add dl, '0'
    mov ah, 02h
    int 21h

    loop print

    mov ah, 4ch
    int 21h

main endp
end main