.model small
.stack 100h

.data
count dw 100  ; Number of iterations
message db "hello world", "$" ; Null-terminated string to display

.code
main PROC
    mov ax, @data   ; Load data segment address into AX
    mov ds, ax      ; Set DS to point to data segment

    mov cx, count   ; Load count into CX register (loop counter)

    mov si, offset message ; Load address of the string into SI register

    loop_start:
        ; Your loop body code goes here
        ; For example, display each character of the string on a new line
        mov ah, 02h     ; Function to display character

        mov dl, [si]    ; Load character from memory
        cmp dl, "$"     ; Check if end of string
        je  loop_end    ; If end of string, exit loop

        int 21h         ; Call DOS interrupt to display character

        mov dl, 0Ah     ; Move to the next line
        int 21h
        mov dl, 0Dh
        int 21h

        inc si          ; Move to the next character

        ; Decrement loop counter and check if it's zero
        loop loop_start ; Jump to loop_start if CX is not zero

    loop_end:
    mov ah, 4Ch     ; DOS exit function
    int 21h         ; Call DOS interrupt
main ENDP

END main
