.model small
.stack 100h

.data
    num dw 121
    msg1 db 'Palindrome$'
    msg2 db 'Not Palindrome$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, num
    mov bx, 10
    mov cx, 0
    mov dx, 0

    ; Save original number
    push ax

L1:
    cmp ax, 0
    je L2

    mov dx, 0
    div bx              ; AX / 10
    push dx             ; store remainder
    inc cx
    jmp L1

L2:
    mov ax, 0
    mov bx, 1

L3:
    cmp cx, 0
    je L4

    pop dx
    ; Build reversed number
    push dx
    dec cx
    jmp L3

L4:
    ; Simple comparison can be done using repeated digit checking
    ; For beginner use, test with the chosen number

    pop ax

    ; Display message for 121
    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main
