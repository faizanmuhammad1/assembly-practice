.MODEL SMALL
.STACK 100h

.DATA
    message DB 'Hello, World!', '$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h    ; DOS function to print string
    MOV DX, OFFSET message
    INT 21h        ; Call DOS

    MOV AH, 4Ch    ; DOS function to terminate program
    INT 21h        ; Call DOS
MAIN ENDP

END MAIN
