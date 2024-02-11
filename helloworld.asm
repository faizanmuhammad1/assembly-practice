.MODEL SMALL
.STACK 100H

.DATA
    HelloWorldMsg   DB 'Hello, World!', 0

.CODE
MAIN PROC
    ; Display "Hello, World!" message
    MOV     AH, 09h             ; DOS function to print string
    MOV     DX, OFFSET HelloWorldMsg ; Load address of message
    INT     21h                 ; Call DOS interrupt

    ; Exit program
    MOV     AH, 4Ch             ; DOS function to terminate program
    INT     21h                 ; Call DOS interrupt
MAIN ENDP

END MAIN
