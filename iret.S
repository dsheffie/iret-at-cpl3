	.globl  _iret_func                    ## -- Begin function foo
_iret_func:
        ## save return address
	popq %rdi
	mov %ss, %rax
	pushq %rax
	pushq %rsp
	addq $8, (%rsp)
	pushfq
	mov %cs, %rax
	pushq %rax
	##return address
	pushq %rdi
	iretq


.global _get_cs:
_get_cs:
	mov %cs, %rax
	retq

.global _get_ss:
_get_ss:
	mov %ss, %rax
	retq	
