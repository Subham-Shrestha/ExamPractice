STACK SEGMENT
    DW 100 DUP(?)
STACK ENDS

DATA SEGMENT
    MSG DB 'subham$'
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA, SS:STACK

START:
    ; Initialize Data Segment
    MOV AX, DATA
    MOV DS, AX

    ; Load address of string into SI
    LEA SI, MSG

CONVERT_LOOP:
    ; Load character into AL
    MOV AL, [SI]

    ; Check for end of string
    CMP AL, '$'
    JE DISPLAY_STRING

    ; Check if lowercase
    CMP AL, 'a'
    JB NEXT_CHAR
    CMP AL, 'z'
    JA NEXT_CHAR

    ; Convert lowercase to uppercase
    SUB AL, 20H
    MOV [SI], AL

NEXT_CHAR:
    INC SI
    JMP CONVERT_LOOP

DISPLAY_STRING:
    ; Display converted string
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

CODE ENDS
END START