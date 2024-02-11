.MODEL SMALL
.STACK 100h

.DATA
    HelloWorld    DB  'Hello, World!', '$'
    Var1        DB  10
    Var2        DB  20

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h         ; Function to print string
    MOV DX, OFFSET HelloWorld
    INT 21h             ; Call interrupt to print string

    MOV AH, 02h         ; Function to print character
    MOV DL, Sum
    INT 21h             ; Call interrupt to print character


    MOV AH, 4Ch         ; Exit program function
    INT 21h             ; Call interrupt to terminate program

MAIN ENDP
END MAIN