	.file	"Filter.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1580:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1580:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4,,15
	.globl	_Z17Filter_horizontalPKhPh
	.type	_Z17Filter_horizontalPKhPh, @function
_Z17Filter_horizontalPKhPh:
.LFB1831:
	.cfi_startproc
.L4:
	leaq	5994(%rdi), %r8
	leaq	27005994(%rdi), %r10
	movq	%rsi, %r9
.L7:
	leaq	-5994(%r8), %rsi
	movq	%r9, %rdi
	.p2align 4,,10
	.p2align 3
.L6:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L5:
	movzbl	(%rsi,%rax), %edx
	imull	Coefficients(,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	$7, %rax
	jne	.L5
	addq	$1, %rsi
	movb	%ch, (%rdi)
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jne	.L6
	addq	$6000, %r8
	addq	$5994, %r9
	cmpq	%r8, %r10
	jne	.L7
	rep ret
	.cfi_endproc
.LFE1831:
	.size	_Z17Filter_horizontalPKhPh, .-_Z17Filter_horizontalPKhPh
	.p2align 4,,15
	.globl	_Z15Filter_verticalPKhPh
	.type	_Z15Filter_verticalPKhPh, @function
_Z15Filter_verticalPKhPh:
.LFB1832:
	.cfi_startproc
.L12:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	5994(%rsi), %r9
	leaq	26943030(%rsi), %r11
	movq	%rdi, %r10
	movl	$Coefficients+28, %esi
.L15:
	leaq	-5994(%r9), %rdi
	movq	%r10, %r8
	.p2align 4,,10
	.p2align 3
.L14:
	movl	$Coefficients, %eax
	movq	%r8, %rcx
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L13:
	movzbl	(%rcx), %edx
	addq	$4, %rax
	addq	$5994, %rcx
	imull	-4(%rax), %edx
	addl	%edx, %ebx
	cmpq	%rax, %rsi
	jne	.L13
	movb	%bh, (%rdi)
	addq	$1, %rdi
	addq	$1, %r8
	cmpq	%rdi, %r9
	jne	.L14
	addq	$5994, %r9
	addq	$5994, %r10
	cmpq	%r9, %r11
	jne	.L15
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1832:
	.size	_Z15Filter_verticalPKhPh, .-_Z15Filter_verticalPKhPh
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Total latency of Filter_horizontal is: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	" ns."
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Total latency of Filter_vertical is: "
	.align 8
.LC4:
	.string	"---------------------------------------------------------------"
	.align 8
.LC5:
	.string	"Average latency of Filter_horizontal per loop iteration is: "
	.align 8
.LC6:
	.string	"Average latency of Filtime_Filter_vertical per loop iteration is: "
	.text
	.p2align 4,,15
	.globl	_Z6FilterPKhPh
	.type	_Z6FilterPKhPh, @function
_Z6FilterPKhPh:
.LFB1833:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	$26973000, %edi
	movq	%rsi, %r12
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	call	malloc
	movq	%rax, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, %rbx
	movq	%rax, 32(%rsp)
	call	_Z17Filter_horizontalPKhPh
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm0, %xmm0
	movq	%rax, 40(%rsp)
	subq	%rbx, %rax
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rbx
	movq	%rax, 64(%rsp)
	call	_Z15Filter_verticalPKhPh
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm0, %xmm0
	movq	%rax, 72(%rsp)
	subq	%rbx, %rax
	pxor	%xmm3, %xmm3
	movl	$39, %edx
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm3, %xmm1
	movsd	%xmm1, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	movq	%rax, %rbx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L24
	cmpb	$0, 56(%r12)
	je	.L22
	movsbl	67(%r12), %esi
.L23:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$37, %edx
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	movq	%rax, %rbx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L24
	cmpb	$0, 56(%r12)
	je	.L25
	movsbl	67(%r12), %esi
.L26:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$63, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L24
	cmpb	$0, 56(%rbx)
	je	.L27
	movsbl	67(%rbx), %esi
.L28:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$60, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	movq	%rax, %rbx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L24
	cmpb	$0, 56(%r12)
	je	.L29
	movsbl	67(%r12), %esi
.L30:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$66, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$4, %edx
	movq	%rax, %rbx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L24
	cmpb	$0, 56(%r12)
	je	.L31
	movsbl	67(%r12), %esi
.L32:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$63, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L24
	cmpb	$0, 56(%rbx)
	je	.L33
	movsbl	67(%rbx), %esi
.L34:
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L23
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L25:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L26
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L27:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L28
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L30
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L32
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L34
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L34
.L24:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE1833:
	.size	_Z6FilterPKhPh, .-_Z6FilterPKhPh
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I_Coefficients, @function
_GLOBAL__sub_I_Coefficients:
.LFB2330:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2330:
	.size	_GLOBAL__sub_I_Coefficients, .-_GLOBAL__sub_I_Coefficients
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Coefficients
	.globl	Coefficients
	.data
	.align 16
	.type	Coefficients, @object
	.size	Coefficients, 28
Coefficients:
	.long	2
	.long	15
	.long	62
	.long	98
	.long	62
	.long	15
	.long	2
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
