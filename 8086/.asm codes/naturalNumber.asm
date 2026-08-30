
.model small
.stack 100h

.data
    n   dw 5
    sum dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, n          ; CX = n
    mov ax, 0          ; AX = sum = 0
    mov bx, 1          ; BX = first natural number

add_loop:
    add ax, bx         ; Add number to sum
    inc bx             ; Next number
    loop add_loop      ; Repeat

    mov sum, ax        ; Store result

    ; Display result
    mov ax, sum
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

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
```
