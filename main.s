	.file	"main.c"
	.text
	.p2align 4
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rbx
	movq	%rdx, 88(%rsp)
	movq	%rcx, %r12
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	movq	%r12, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%i\0"
	.text
	.p2align 4
	.def	scanf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf.constprop.0
scanf.constprop.0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%ecx, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "Masukan Nilai X = \0"
.LC2:
	.ascii "Masukan Nilai Y = \0"
	.align 8
.LC3:
	.ascii "Hasil pembagiannya adalah = %i\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC0(%rip), %r12
	call	__main
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	40(%rsp), %rdx
	movq	%r12, %rcx
	call	scanf.constprop.0
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	44(%rsp), %rdx
	movq	%r12, %rcx
	call	scanf.constprop.0
	movl	40(%rsp), %eax
	leaq	.LC3(%rip), %rcx
	cltd
	idivl	44(%rsp)
	movl	%eax, %edx
	call	printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
