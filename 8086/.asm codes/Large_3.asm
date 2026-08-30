.model small
.stack 100h

.data
    array dw 1234h, 5678h, 9ABCh, 3456h, 789Ah
    n dw 5
    largest dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    lea si, array
    mov cx, n

    mov ax, [si]
    add si, 2
    dec cx

find:
    mov dx, [si]
    cmp dx, ax
    jbe skip
    mov ax, dx

skip:
    add si, 2
    loop find

    mov largest, ax

    ; Display largest number
    mov bx, ax

    ; First digit
    rol bx, 1
    rol bx, 1
    rol bx, 1
    rol bx, 1
    mov dl, bl
    and dl, 0Fh
    call display

    ; Second digit
    rol bx, 1
    rol bx, 1
    rol bx, 1
    rol bx, 1
    mov dl, bl
    and dl, 0Fh
    call display

    ; Third digit
    rol bx, 1
    rol bx, 1
    rol bx, 1
    rol bx, 1
    mov dl, bl
    and dl, 0Fh
    call display

    ; Fourth digit
    rol bx, 1
    rol bx, 1
    rol bx, 1
    rol bx, 1
    mov dl, bl
    and dl, 0Fh
    call display

    mov ah, 4Ch
    int 21h

display proc
    cmp dl, 9
    jbe number
    add dl, 7

number:
    add dl, '0'
    mov ah, 02h
    int 21h
    ret
display endp

main endp
end main