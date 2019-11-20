	.file	"statistics.cc"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1467:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Statistics\0"
.LC1:
	.ascii "  FLOAT = \0"
.LC2:
	.ascii "float\0"
.LC3:
	.ascii ", sizeof(FLOAT) = \0"
.LC4:
	.ascii "  Raytracing time: \0"
.LC5:
	.ascii " [s] .\0"
	.align 8
.LC6:
	.ascii "  Number of ray / triangle intersection tests : \0"
	.align 8
.LC7:
	.ascii "  Number of ray / triangle intersections found : \0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics5printEv
	.def	_ZN10Statistics5printEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10Statistics5printEv
_ZN10Statistics5printEv:
.LFB2031:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC0(%rip), %rdx
	movl	$10, %r8d
	movq	%rcx, %rdi
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L5
	movsbl	67(%rbx), %edx
.L6:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$10, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$5, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$18, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	$4, %edx
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L8
	movsbl	67(%rbx), %edx
.L9:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movl	$19, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cerr(%rip), %rcx
	vmovsd	16(%rdi), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rbx
	movl	$6, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rsi
	testq	%rsi, %rsi
	je	.L7
	cmpb	$0, 56(%rsi)
	je	.L10
	movsbl	67(%rsi), %edx
.L11:
	movq	%rbx, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$48, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rdi), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L12
	movsbl	67(%rbx), %edx
.L13:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$49, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	8(%rdi), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L14
	movsbl	67(%rbx), %edx
.L15:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZNSo5flushEv
	.p2align 4,,10
.L5:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L6
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L6
	.p2align 4,,10
.L8:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L9
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L9
	.p2align 4,,10
.L10:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L11
	movq	%rsi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L11
	.p2align 4,,10
.L12:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L13
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L13
	.p2align 4,,10
.L14:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L15
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L15
.L7:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics10time_startEv
	.def	_ZN10Statistics10time_startEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10Statistics10time_startEv
_ZN10Statistics10time_startEv:
.LFB2032:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics9time_stopEv
	.def	_ZN10Statistics9time_stopEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10Statistics9time_stopEv
_ZN10Statistics9time_stopEv:
.LFB2033:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	subq	24(%rbx), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC8(%rip), %xmm0, %xmm0
	vaddsd	16(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZN10Statistics5printEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN10Statistics5printEv
_GLOBAL__sub_I__ZN10Statistics5printEv:
.LFB2469:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	leaq	_ZNSt8ios_base4InitD1Ev(%rip), %rcx
	addq	$40, %rsp
	jmp	__cxa_atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN10Statistics5printEv
	.globl	stats
	.bss
	.align 32
stats:
	.space 32
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC8:
	.long	0
	.long	1104006501
	.ident	"GCC: (GNU) 7.4.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
