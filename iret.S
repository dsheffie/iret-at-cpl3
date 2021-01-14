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



