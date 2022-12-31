section .data
    fmt_1: db "%d",0
    fmt_2: db "%s",0
    ans_1: db "Enter a number: ",10,0
    ans_2: db "The number you entered is:",10,0
    ans_3: db "Enter a string: ",10,0
    ans_4: db "The string you entered is:",10,0

section .text
global main
extern printf,scanf


main:
    push rbp
    mov rbp,rsp
    sub rsp,16

    mov eax,0
    lea rdi,[ans_1]
    call printf

    mov eax,0
    lea rdi,[fmt_1]
    lea esi,[integer]
    call scanf

    mov eax,0
    lea rdi,[ans_2]
    call printf

    mov eax,0
    lea rdi,[fmt_1]
    mov esi,[integer]
    call printf

    mov eax,0
    lea rdi,[ans_3]
    call printf

    mov eax,0
    lea rdi,[fmt_2]
    lea rsi,[string]
    call scanf

    mov eax,0
    lea rdi,[ans_4]
    call printf 

    mov eax,0
    lea rdi,[string]
    call printf   

    add rsp,16
    leave
    ret


section .bss
    integer:    resb 4
    string:     resb 70