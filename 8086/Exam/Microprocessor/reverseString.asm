.model small
.stack 100h

.data
    str db 'HELLO$'
    rev db 6 dup('$')
    msg db 'Reverse = $'

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
    ; SI is at $
    dec si              ; point to last character
    lea di, rev         ; DI points to reverse string

L3:
    mov al, [si]
    mov [di], al
    dec si
    inc di
    loop L3

    ; Display message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Display reversed string
    lea dx, rev
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
