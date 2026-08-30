.model small
.stack 100h

.data
    num db 5
    fact dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load number
    mov al, num
    mov ah, 0
    mov cx, ax

    ; AX = factorial result
    mov ax, 1

factorial:
    mul cx
    loop factorial

    mov fact, ax

    ; Display result (120)
    mov ax, fact
    call display_number

    ; Exit
    mov ah, 4ch
    int 21h

main endp

; -------------------------
; Procedure to display AX
; -------------------------
display_number proc
    mov bx, 10
    mov cx, 0

convert:
    mov dx, 0
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne convert

display:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop display

    ret
display_number endp

end main
```
