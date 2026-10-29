# COMP 264 - HW4
# Compute the nth Fibonacci number, for n >= 1.
# Argument: n in %rdi
# Return: Fibonacci number in %rax

.text
.globl fib
.type fib, @function

fib:
    movq $1, %rax
    xorq %rdx, %rdx
    decq %rdi
    je .Ldone

.Lloop:
    movq %rax, %rcx
     addq %rdx, %rax
    movq %rcx, %rdx
    decq %rdi
    jne .Lloop

.Ldone:
    ret

.size fib, .-fib
.section .note.GNU-stack,"",@progbits
