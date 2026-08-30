.model small
.stack 100h

.data
    mystr db 'subham shrestha'          ; The string to reverse (6 characters)
    len   dw 15                ; Length of the string

.code
main proc
    ; Initialize Data Segment
    mov ax, @data
    mov ds, ax
    mov es, ax

    ; --- Part 1: Reverse the string using two pointers ---
    mov si, offset mystr      ; SI points to the start of the string
    mov di, offset mystr      
    add di, [len]             
    dec di                    ; DI points to the last character of the string

rev_loop:
    cmp si, di                ; Compare pointer positions
    jge print_prep            ; If SI >= DI, we have reached the middle/finished

    ; Swap characters
    mov al, [si]              ; Load character from start into AL
    mov bl, [di]              ; Load character from end into BL
    mov [si], bl              ; Put end character at start
    mov [di], al              ; Put start character at end

    inc si                    ; Move start pointer forward
    dec di                    ; Move end pointer backward
    jmp rev_loop

print_prep:
    ; --- Part 2: Print the reversed string to screen ---
    mov si, offset mystr      ; Reset SI to the start of the string
    mov cx, [len]             ; Set counter to string length

print_loop:
    mov ah, 02h               ; DOS function to print a single character
    mov dl, [si]              ; Load character from memory into DL
    int 21h                   ; Call DOS interrupt to print it
    inc si                    ; Move to next character
    dec cx                    ; Decrease counter
    jnz print_loop            ; Repeat until all characters are printed

    ; --- Terminate program and return to DOS ---
    mov ah, 4Ch
    int 21h
main endp
end main
