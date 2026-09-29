;Find the quotient and remainder and store in 2050 and 2051 in 8085

LXI H, 2050H    ; HL points to 2050H
MOV A, M        ; A = dividend
INX H           ; HL points to 2051H
MOV B, M        ; B = divisor

MVI C, 00H      ; C = quotient

LOOP: CMP B     ; Compare A with divisor
      JC DONE   ; If A < B, division is finished
      SUB B     ; A = A - B
      INR C     ; Quotient = Quotient + 1
      JMP LOOP  ; Repeat

DONE: MOV D, A  ; D = remainder
      DCX H     ; HL points back to 2050H
      MOV M, C  ; Store quotient at 2050H
      INX H     ; HL points to 2051H
      MOV M, D  ; Store remainder at 2051H
      HLT
