;Convert string to capital letters

.model small
.stack 100h

.data
    str db 'hello world$'
    msg db 'Capital = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    lea si, str

L1:
    mov al, [si]
    cmp al, '$'
    je L2

    ; Convert lowercase to uppercase
    cmp al, 'a'
    jb NEXT
    cmp al, 'z'
    ja NEXT
    sub al, 20h
    mov [si], al

NEXT:
    inc si
    jmp L1

L2:
    ; Display message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Display string
    lea dx, str
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4ch
    int 21h

main endp
end main
