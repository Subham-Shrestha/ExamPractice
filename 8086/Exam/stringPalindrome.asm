.model small
.stack 100h

.data
    str db 'MADAM$'
    msg1 db 'Palindrome$'
    msg2 db 'Not Palindrome$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Find length of string
    lea si, str
    mov cx, 0

L1:
    mov al, [si]
    cmp al, '$'
    je L2
    inc si
    inc cx
    jmp L1

L2:
    ; SI points to last character
    dec si

    ; DI points to first character
    lea di, str

    ; Compare characters
    mov bx, cx

L3:
    cmp bx, 0
    je PAL

    mov al, [di]
    cmp al, [si]
    jne NOTPAL

    inc di
    dec si
    sub bx, 2
    jmp L3

PAL:
    lea dx, msg1
    mov ah, 09h
    int 21h
    jmp EXIT

NOTPAL:
    lea dx, msg2
    mov ah, 09h
    int 21h

EXIT:
    mov ah, 4ch
    int 21h

main endp
end main
