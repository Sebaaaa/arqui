	.file	"ejercicio1T4.c"
	.text
	.globl	funcionQ
	.type	funcionQ, @function
funcionQ:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L2
	cmpl	$2, -20(%rbp)
	jne	.L3
.L2:
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	funcionQ
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	funcionQ
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edi
	call	funcionQ
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	funcionQ
	addl	%ebx, %eax
.L4:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	funcionQ, .-funcionQ
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$4, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	funcionQ
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
