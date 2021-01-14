#ifdef __APPLE__
	.globl  _iret_func                    ## -- Begin function foo
_iret_func:
#else
	.global  iret_func                    ## -- Begin function foo
iret_func:	
#endif	
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

#ifdef __APPLE__
.globl _get_cs
_get_cs:
#else
.global get_cs
get_cs:	
#endif	
	mov %cs, %rax
	retq

#ifdef __APPLE__
.globl _get_ss
_get_ss:
#else
.global get_ss
get_ss:
#endif
	mov %ss, %rax
	retq	
