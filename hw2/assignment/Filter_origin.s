	.file	"Filter.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z17Filter_horizontalPKhPh
	.type	_Z17Filter_horizontalPKhPh, @function
_Z17Filter_horizontalPKhPh:
.LFB57:
	.file 1 "Filter.c"
	.loc 1 17 0
	.cfi_startproc
.LVL0:
.L2:
	leaq	5994(%rdi), %r9
	leaq	27005994(%rdi), %r11
	leaq	Coefficients(%rip), %rdi
.LVL1:
	movq	%rsi, %r10
.LVL2:
.L5:
	leaq	-5994(%r9), %rsi
	.loc 1 17 0
	movq	%r10, %r8
.LVL3:
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%eax, %eax
.LBB2:
.LBB3:
.LBB4:
.LBB5:
	.loc 1 21 0
	xorl	%ecx, %ecx
.LVL4:
	.p2align 4,,10
	.p2align 3
.L3:
.LBB6:
	.loc 1 23 0 discriminator 2
	movzbl	(%rsi,%rax), %edx
	imull	(%rdi,%rax,4), %edx
	addq	$1, %rax
.LVL5:
	addl	%edx, %ecx
.LVL6:
	.loc 1 22 0 discriminator 2
	cmpq	$7, %rax
	jne	.L3
.LBE6:
	.loc 1 24 0 discriminator 2
	movzbl	%ch, %eax
	addq	$1, %rsi
	addq	$1, %r8
.LVL7:
	movb	%al, -1(%r8)
.LDL1:
.LBE5:
	.loc 1 19 0 discriminator 2
	cmpq	%rsi, %r9
	jne	.L4
	addq	$6000, %r9
	addq	$5994, %r10
.LBE4:
.LBE3:
	.loc 1 18 0 discriminator 2
	cmpq	%r9, %r11
	jne	.L5
.LBE2:
	.loc 1 26 0
	rep ret
	.cfi_endproc
.LFE57:
	.size	_Z17Filter_horizontalPKhPh, .-_Z17Filter_horizontalPKhPh
	.p2align 4,,15
	.globl	_Z6FilterPKhPh
	.type	_Z6FilterPKhPh, @function
_Z6FilterPKhPh:
.LFB58:
	.loc 1 41 0
	.cfi_startproc
.LVL8:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	.loc 1 42 0
	movl	$26973000, %edi
.LVL9:
	.loc 1 41 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 42 0
	call	malloc@PLT
.LVL10:
	.loc 1 44 0
	movq	%rbp, %rdi
	movq	%rax, %rsi
	.loc 1 42 0
	movq	%rax, %rbx
.LVL11:
	.loc 1 44 0
	call	_Z17Filter_horizontalPKhPh
.LVL12:
	.loc 1 48 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 47 0
	movq	%rbx, %rdi
	.loc 1 48 0
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL13:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL14:
	.loc 1 47 0
	jmp	free@PLT
.LVL15:
	.cfi_endproc
.LFE58:
	.size	_Z6FilterPKhPh, .-_Z6FilterPKhPh
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
	.text
.Letext0:
	.file 2 "/usr/include/c++/7/cstdlib"
	.file 3 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 10 "/usr/include/c++/7/stdlib.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xae7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF110
	.byte	0x4
	.long	.LASF111
	.long	.LASF112
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"std"
	.byte	0xe
	.byte	0
	.long	0x127
	.uleb128 0x3
	.long	.LASF1
	.byte	0x3
	.byte	0xfd
	.uleb128 0x4
	.byte	0x3
	.byte	0xfd
	.long	0x38
	.uleb128 0x5
	.byte	0x2
	.byte	0x7f
	.long	0x1f6
	.uleb128 0x5
	.byte	0x2
	.byte	0x80
	.long	0x22d
	.uleb128 0x5
	.byte	0x2
	.byte	0x86
	.long	0x2f9
	.uleb128 0x5
	.byte	0x2
	.byte	0x89
	.long	0x316
	.uleb128 0x5
	.byte	0x2
	.byte	0x8c
	.long	0x330
	.uleb128 0x5
	.byte	0x2
	.byte	0x8d
	.long	0x345
	.uleb128 0x5
	.byte	0x2
	.byte	0x8e
	.long	0x35b
	.uleb128 0x5
	.byte	0x2
	.byte	0x8f
	.long	0x371
	.uleb128 0x5
	.byte	0x2
	.byte	0x91
	.long	0x39a
	.uleb128 0x5
	.byte	0x2
	.byte	0x94
	.long	0x3b5
	.uleb128 0x5
	.byte	0x2
	.byte	0x96
	.long	0x3cb
	.uleb128 0x5
	.byte	0x2
	.byte	0x99
	.long	0x3e6
	.uleb128 0x5
	.byte	0x2
	.byte	0x9a
	.long	0x401
	.uleb128 0x5
	.byte	0x2
	.byte	0x9b
	.long	0x432
	.uleb128 0x5
	.byte	0x2
	.byte	0x9d
	.long	0x452
	.uleb128 0x5
	.byte	0x2
	.byte	0xa0
	.long	0x473
	.uleb128 0x5
	.byte	0x2
	.byte	0xa3
	.long	0x485
	.uleb128 0x5
	.byte	0x2
	.byte	0xa5
	.long	0x491
	.uleb128 0x5
	.byte	0x2
	.byte	0xa6
	.long	0x4a3
	.uleb128 0x5
	.byte	0x2
	.byte	0xa7
	.long	0x4c3
	.uleb128 0x5
	.byte	0x2
	.byte	0xa8
	.long	0x4e2
	.uleb128 0x5
	.byte	0x2
	.byte	0xa9
	.long	0x501
	.uleb128 0x5
	.byte	0x2
	.byte	0xab
	.long	0x517
	.uleb128 0x5
	.byte	0x2
	.byte	0xac
	.long	0x53c
	.uleb128 0x5
	.byte	0x2
	.byte	0xf0
	.long	0x264
	.uleb128 0x5
	.byte	0x2
	.byte	0xf5
	.long	0x173
	.uleb128 0x5
	.byte	0x2
	.byte	0xf6
	.long	0x556
	.uleb128 0x5
	.byte	0x2
	.byte	0xf8
	.long	0x571
	.uleb128 0x5
	.byte	0x2
	.byte	0xf9
	.long	0x5c5
	.uleb128 0x5
	.byte	0x2
	.byte	0xfa
	.long	0x587
	.uleb128 0x5
	.byte	0x2
	.byte	0xfb
	.long	0x5a6
	.uleb128 0x5
	.byte	0x2
	.byte	0xfc
	.long	0x5df
	.byte	0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0xff
	.long	0x18e
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.value	0x101
	.uleb128 0x8
	.byte	0x3
	.value	0x101
	.long	0x132
	.uleb128 0x5
	.byte	0x2
	.byte	0xc8
	.long	0x264
	.uleb128 0x5
	.byte	0x2
	.byte	0xd8
	.long	0x556
	.uleb128 0x5
	.byte	0x2
	.byte	0xe3
	.long	0x571
	.uleb128 0x5
	.byte	0x2
	.byte	0xe4
	.long	0x587
	.uleb128 0x5
	.byte	0x2
	.byte	0xe5
	.long	0x5a6
	.uleb128 0x5
	.byte	0x2
	.byte	0xe7
	.long	0x5c5
	.uleb128 0x5
	.byte	0x2
	.byte	0xe8
	.long	0x5df
	.uleb128 0x9
	.string	"div"
	.byte	0x2
	.byte	0xd5
	.long	.LASF113
	.long	0x264
	.uleb128 0xa
	.long	0x25d
	.uleb128 0xa
	.long	0x25d
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF10
	.byte	0x4
	.byte	0xd8
	.long	0x199
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0xc
	.byte	0x20
	.byte	0x3
	.long	.LASF4
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.long	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF6
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF7
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.long	.LASF8
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0x3b
	.long	.LASF12
	.long	0x1ef
	.uleb128 0xe
	.long	.LASF9
	.byte	0x5
	.byte	0x3c
	.long	0x1ef
	.byte	0
	.uleb128 0xf
	.string	"rem"
	.byte	0x5
	.byte	0x3d
	.long	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	.LASF11
	.byte	0x5
	.byte	0x3e
	.long	0x1ca
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x43
	.long	.LASF13
	.long	0x226
	.uleb128 0xe
	.long	.LASF9
	.byte	0x5
	.byte	0x44
	.long	0x226
	.byte	0
	.uleb128 0xf
	.string	"rem"
	.byte	0x5
	.byte	0x45
	.long	0x226
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0x46
	.long	0x201
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x4d
	.long	.LASF16
	.long	0x25d
	.uleb128 0xe
	.long	.LASF9
	.byte	0x5
	.byte	0x4e
	.long	0x25d
	.byte	0
	.uleb128 0xf
	.string	"rem"
	.byte	0x5
	.byte	0x4f
	.long	0x25d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x50
	.long	0x238
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x11
	.byte	0x8
	.long	0x288
	.uleb128 0x12
	.long	0x276
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x12
	.long	0x281
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0x12
	.long	0x28d
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF23
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0x8c
	.long	0x226
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x8d
	.long	0x226
	.uleb128 0x13
	.byte	0x8
	.uleb128 0x11
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF26
	.uleb128 0x14
	.long	.LASF27
	.byte	0x5
	.value	0x325
	.long	0x2d8
	.uleb128 0x11
	.byte	0x8
	.long	0x2de
	.uleb128 0x15
	.long	0x1ef
	.long	0x2f2
	.uleb128 0xa
	.long	0x2f2
	.uleb128 0xa
	.long	0x2f2
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x2f8
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF28
	.byte	0x5
	.value	0x250
	.long	0x1ef
	.long	0x30f
	.uleb128 0xa
	.long	0x30f
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x315
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF114
	.byte	0x5
	.value	0x255
	.long	.LASF114
	.long	0x1ef
	.long	0x330
	.uleb128 0xa
	.long	0x30f
	.byte	0
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x7
	.byte	0x19
	.long	0x1bc
	.long	0x345
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x17
	.long	.LASF30
	.byte	0x5
	.value	0x169
	.long	0x1ef
	.long	0x35b
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x17
	.long	.LASF31
	.byte	0x5
	.value	0x16e
	.long	0x226
	.long	0x371
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x8
	.byte	0x14
	.long	0x2bd
	.long	0x39a
	.uleb128 0xa
	.long	0x2f2
	.uleb128 0xa
	.long	0x2f2
	.uleb128 0xa
	.long	0x18e
	.uleb128 0xa
	.long	0x18e
	.uleb128 0xa
	.long	0x2cc
	.byte	0
	.uleb128 0x1b
	.string	"div"
	.byte	0x5
	.value	0x351
	.long	0x1f6
	.long	0x3b5
	.uleb128 0xa
	.long	0x1ef
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x17
	.long	.LASF33
	.byte	0x5
	.value	0x277
	.long	0x2bf
	.long	0x3cb
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x17
	.long	.LASF34
	.byte	0x5
	.value	0x353
	.long	0x22d
	.long	0x3e6
	.uleb128 0xa
	.long	0x226
	.uleb128 0xa
	.long	0x226
	.byte	0
	.uleb128 0x17
	.long	.LASF35
	.byte	0x5
	.value	0x397
	.long	0x1ef
	.long	0x401
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0x1a
	.long	.LASF36
	.byte	0x9
	.byte	0x71
	.long	0x18e
	.long	0x420
	.uleb128 0xa
	.long	0x420
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x426
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.long	.LASF37
	.uleb128 0x12
	.long	0x426
	.uleb128 0x17
	.long	.LASF38
	.byte	0x5
	.value	0x39a
	.long	0x1ef
	.long	0x452
	.uleb128 0xa
	.long	0x420
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x5
	.value	0x33b
	.long	0x473
	.uleb128 0xa
	.long	0x2bd
	.uleb128 0xa
	.long	0x18e
	.uleb128 0xa
	.long	0x18e
	.uleb128 0xa
	.long	0x2cc
	.byte	0
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x5
	.value	0x26c
	.long	0x485
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x5
	.value	0x1c5
	.long	0x1ef
	.uleb128 0x1c
	.long	.LASF41
	.byte	0x5
	.value	0x1c7
	.long	0x4a3
	.uleb128 0xa
	.long	0x1a0
	.byte	0
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x5
	.byte	0x75
	.long	0x1bc
	.long	0x4bd
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x2bf
	.uleb128 0x1a
	.long	.LASF43
	.byte	0x5
	.byte	0xb0
	.long	0x226
	.long	0x4e2
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x5
	.byte	0xb4
	.long	0x199
	.long	0x501
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x17
	.long	.LASF45
	.byte	0x5
	.value	0x30d
	.long	0x1ef
	.long	0x517
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x9
	.byte	0x90
	.long	0x18e
	.long	0x536
	.uleb128 0xa
	.long	0x2bf
	.uleb128 0xa
	.long	0x536
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x42d
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x9
	.byte	0x53
	.long	0x1ef
	.long	0x556
	.uleb128 0xa
	.long	0x2bf
	.uleb128 0xa
	.long	0x426
	.byte	0
	.uleb128 0x17
	.long	.LASF48
	.byte	0x5
	.value	0x357
	.long	0x264
	.long	0x571
	.uleb128 0xa
	.long	0x25d
	.uleb128 0xa
	.long	0x25d
	.byte	0
	.uleb128 0x17
	.long	.LASF49
	.byte	0x5
	.value	0x175
	.long	0x25d
	.long	0x587
	.uleb128 0xa
	.long	0x276
	.byte	0
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x5
	.byte	0xc8
	.long	0x25d
	.long	0x5a6
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x5
	.byte	0xcd
	.long	0x2c5
	.long	0x5c5
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x5
	.byte	0x7b
	.long	0x1b5
	.long	0x5df
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.byte	0
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x5
	.byte	0x7e
	.long	0x1c3
	.long	0x5f9
	.uleb128 0xa
	.long	0x276
	.uleb128 0xa
	.long	0x4bd
	.byte	0
	.uleb128 0x5
	.byte	0xa
	.byte	0x27
	.long	0x2f9
	.uleb128 0x5
	.byte	0xa
	.byte	0x2b
	.long	0x316
	.uleb128 0x5
	.byte	0xa
	.byte	0x2e
	.long	0x473
	.uleb128 0x5
	.byte	0xa
	.byte	0x33
	.long	0x1f6
	.uleb128 0x5
	.byte	0xa
	.byte	0x34
	.long	0x22d
	.uleb128 0x1b
	.string	"abs"
	.byte	0x5
	.value	0x345
	.long	0x1ef
	.long	0x632
	.uleb128 0xa
	.long	0x1ef
	.byte	0
	.uleb128 0x5
	.byte	0xa
	.byte	0x36
	.long	0x61c
	.uleb128 0x5
	.byte	0xa
	.byte	0x37
	.long	0x330
	.uleb128 0x5
	.byte	0xa
	.byte	0x38
	.long	0x345
	.uleb128 0x5
	.byte	0xa
	.byte	0x39
	.long	0x35b
	.uleb128 0x5
	.byte	0xa
	.byte	0x3a
	.long	0x371
	.uleb128 0x5
	.byte	0xa
	.byte	0x3c
	.long	0x173
	.uleb128 0x5
	.byte	0xa
	.byte	0x3e
	.long	0x3b5
	.uleb128 0x5
	.byte	0xa
	.byte	0x40
	.long	0x3cb
	.uleb128 0x5
	.byte	0xa
	.byte	0x43
	.long	0x3e6
	.uleb128 0x5
	.byte	0xa
	.byte	0x44
	.long	0x401
	.uleb128 0x5
	.byte	0xa
	.byte	0x45
	.long	0x432
	.uleb128 0x5
	.byte	0xa
	.byte	0x47
	.long	0x452
	.uleb128 0x5
	.byte	0xa
	.byte	0x48
	.long	0x485
	.uleb128 0x5
	.byte	0xa
	.byte	0x4a
	.long	0x491
	.uleb128 0x5
	.byte	0xa
	.byte	0x4b
	.long	0x4a3
	.uleb128 0x5
	.byte	0xa
	.byte	0x4c
	.long	0x4c3
	.uleb128 0x5
	.byte	0xa
	.byte	0x4d
	.long	0x4e2
	.uleb128 0x5
	.byte	0xa
	.byte	0x4e
	.long	0x501
	.uleb128 0x5
	.byte	0xa
	.byte	0x50
	.long	0x517
	.uleb128 0x5
	.byte	0xa
	.byte	0x51
	.long	0x53c
	.uleb128 0x1f
	.long	.LASF83
	.byte	0xd8
	.byte	0xb
	.byte	0xf5
	.long	0x83e
	.uleb128 0xe
	.long	.LASF54
	.byte	0xb
	.byte	0xf6
	.long	0x1ef
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0xb
	.byte	0xfb
	.long	0x2bf
	.byte	0x8
	.uleb128 0xe
	.long	.LASF56
	.byte	0xb
	.byte	0xfc
	.long	0x2bf
	.byte	0x10
	.uleb128 0xe
	.long	.LASF57
	.byte	0xb
	.byte	0xfd
	.long	0x2bf
	.byte	0x18
	.uleb128 0xe
	.long	.LASF58
	.byte	0xb
	.byte	0xfe
	.long	0x2bf
	.byte	0x20
	.uleb128 0xe
	.long	.LASF59
	.byte	0xb
	.byte	0xff
	.long	0x2bf
	.byte	0x28
	.uleb128 0x20
	.long	.LASF60
	.byte	0xb
	.value	0x100
	.long	0x2bf
	.byte	0x30
	.uleb128 0x20
	.long	.LASF61
	.byte	0xb
	.value	0x101
	.long	0x2bf
	.byte	0x38
	.uleb128 0x20
	.long	.LASF62
	.byte	0xb
	.value	0x102
	.long	0x2bf
	.byte	0x40
	.uleb128 0x20
	.long	.LASF63
	.byte	0xb
	.value	0x104
	.long	0x2bf
	.byte	0x48
	.uleb128 0x20
	.long	.LASF64
	.byte	0xb
	.value	0x105
	.long	0x2bf
	.byte	0x50
	.uleb128 0x20
	.long	.LASF65
	.byte	0xb
	.value	0x106
	.long	0x2bf
	.byte	0x58
	.uleb128 0x20
	.long	.LASF66
	.byte	0xb
	.value	0x108
	.long	0x876
	.byte	0x60
	.uleb128 0x20
	.long	.LASF67
	.byte	0xb
	.value	0x10a
	.long	0x87c
	.byte	0x68
	.uleb128 0x20
	.long	.LASF68
	.byte	0xb
	.value	0x10c
	.long	0x1ef
	.byte	0x70
	.uleb128 0x20
	.long	.LASF69
	.byte	0xb
	.value	0x110
	.long	0x1ef
	.byte	0x74
	.uleb128 0x20
	.long	.LASF70
	.byte	0xb
	.value	0x112
	.long	0x2a7
	.byte	0x78
	.uleb128 0x20
	.long	.LASF71
	.byte	0xb
	.value	0x116
	.long	0x26f
	.byte	0x80
	.uleb128 0x20
	.long	.LASF72
	.byte	0xb
	.value	0x117
	.long	0x299
	.byte	0x82
	.uleb128 0x20
	.long	.LASF73
	.byte	0xb
	.value	0x118
	.long	0x882
	.byte	0x83
	.uleb128 0x20
	.long	.LASF74
	.byte	0xb
	.value	0x11c
	.long	0x892
	.byte	0x88
	.uleb128 0x20
	.long	.LASF75
	.byte	0xb
	.value	0x125
	.long	0x2b2
	.byte	0x90
	.uleb128 0x20
	.long	.LASF76
	.byte	0xb
	.value	0x12d
	.long	0x2bd
	.byte	0x98
	.uleb128 0x20
	.long	.LASF77
	.byte	0xb
	.value	0x12e
	.long	0x2bd
	.byte	0xa0
	.uleb128 0x20
	.long	.LASF78
	.byte	0xb
	.value	0x12f
	.long	0x2bd
	.byte	0xa8
	.uleb128 0x20
	.long	.LASF79
	.byte	0xb
	.value	0x130
	.long	0x2bd
	.byte	0xb0
	.uleb128 0x20
	.long	.LASF80
	.byte	0xb
	.value	0x132
	.long	0x18e
	.byte	0xb8
	.uleb128 0x20
	.long	.LASF81
	.byte	0xb
	.value	0x133
	.long	0x1ef
	.byte	0xc0
	.uleb128 0x20
	.long	.LASF82
	.byte	0xb
	.value	0x135
	.long	0x898
	.byte	0xc4
	.byte	0
	.uleb128 0x21
	.long	.LASF116
	.byte	0xb
	.byte	0x9a
	.uleb128 0x1f
	.long	.LASF84
	.byte	0x18
	.byte	0xb
	.byte	0xa0
	.long	0x876
	.uleb128 0xe
	.long	.LASF85
	.byte	0xb
	.byte	0xa1
	.long	0x876
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0xb
	.byte	0xa2
	.long	0x87c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF87
	.byte	0xb
	.byte	0xa6
	.long	0x1ef
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x845
	.uleb128 0x11
	.byte	0x8
	.long	0x6be
	.uleb128 0x22
	.long	0x281
	.long	0x892
	.uleb128 0x23
	.long	0x199
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x83e
	.uleb128 0x22
	.long	0x281
	.long	0x8a8
	.uleb128 0x23
	.long	0x199
	.byte	0x13
	.byte	0
	.uleb128 0x24
	.long	.LASF117
	.uleb128 0x25
	.long	.LASF88
	.byte	0xb
	.value	0x13f
	.long	0x8a8
	.uleb128 0x25
	.long	.LASF89
	.byte	0xb
	.value	0x140
	.long	0x8a8
	.uleb128 0x25
	.long	.LASF90
	.byte	0xb
	.value	0x141
	.long	0x8a8
	.uleb128 0x26
	.long	.LASF91
	.byte	0xc
	.byte	0x87
	.long	0x87c
	.uleb128 0x26
	.long	.LASF92
	.byte	0xc
	.byte	0x88
	.long	0x87c
	.uleb128 0x26
	.long	.LASF93
	.byte	0xc
	.byte	0x89
	.long	0x87c
	.uleb128 0x26
	.long	.LASF94
	.byte	0xd
	.byte	0x1a
	.long	0x1ef
	.uleb128 0x22
	.long	0x27c
	.long	0x908
	.uleb128 0x27
	.byte	0
	.uleb128 0x26
	.long	.LASF95
	.byte	0xd
	.byte	0x1b
	.long	0x8fd
	.uleb128 0x26
	.long	.LASF96
	.byte	0xd
	.byte	0x1e
	.long	0x1ef
	.uleb128 0x26
	.long	.LASF97
	.byte	0xd
	.byte	0x1f
	.long	0x8fd
	.uleb128 0x22
	.long	0x1a0
	.long	0x939
	.uleb128 0x23
	.long	0x199
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.long	.LASF98
	.byte	0x1
	.byte	0xe
	.long	0x929
	.uleb128 0x9
	.byte	0x3
	.quad	Coefficients
	.uleb128 0x29
	.long	.LASF101
	.byte	0x1
	.byte	0x28
	.long	.LASF103
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e3
	.uleb128 0x2a
	.long	.LASF99
	.byte	0x1
	.byte	0x28
	.long	0x9e3
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF100
	.byte	0x1
	.byte	0x28
	.long	0x9e9
	.long	.LLST7
	.uleb128 0x2b
	.long	.LASF107
	.byte	0x1
	.byte	0x2a
	.long	0x9e9
	.long	.LLST8
	.uleb128 0x2c
	.quad	.LVL10
	.long	0xad2
	.long	0x9b7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x19b9348
	.byte	0
	.uleb128 0x2c
	.quad	.LVL12
	.long	0x9ef
	.long	0x9d5
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL15
	.long	0xade
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x294
	.uleb128 0x11
	.byte	0x8
	.long	0x28d
	.uleb128 0x29
	.long	.LASF102
	.byte	0x1
	.byte	0x10
	.long	.LASF104
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xad2
	.uleb128 0x2a
	.long	.LASF99
	.byte	0x1
	.byte	0x10
	.long	0x9e3
	.long	.LLST0
	.uleb128 0x2a
	.long	.LASF100
	.byte	0x1
	.byte	0x10
	.long	0x9e9
	.long	.LLST1
	.uleb128 0x2f
	.long	.LASF118
	.byte	0x1
	.byte	0x16
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.byte	0x13
	.quad	.LDL1
	.uleb128 0x30
	.long	.LASF106
	.byte	0x1
	.byte	0x12
	.quad	.L2
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x32
	.string	"Y"
	.byte	0x1
	.byte	0x12
	.long	0x1ef
	.long	.LLST2
	.uleb128 0x31
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x32
	.string	"X"
	.byte	0x1
	.byte	0x13
	.long	0x1ef
	.long	.LLST3
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x32
	.string	"Sum"
	.byte	0x1
	.byte	0x15
	.long	0x1a0
	.long	.LLST4
	.uleb128 0x31
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x1ef
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF108
	.long	.LASF108
	.byte	0x5
	.value	0x21b
	.uleb128 0x33
	.long	.LASF109
	.long	.LASF109
	.byte	0x5
	.value	0x233
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL9-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL14-.Ltext0
	.quad	.LFE58-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL10-1-.Ltext0
	.quad	.LFE58-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL12-1-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x6
	.byte	0x7b
	.sleb128 -27005994
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"__off_t"
.LASF55:
	.string	"_IO_read_ptr"
.LASF108:
	.string	"malloc"
.LASF67:
	.string	"_chain"
.LASF9:
	.string	"quot"
.LASF110:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF10:
	.string	"size_t"
.LASF1:
	.string	"__cxx11"
.LASF111:
	.string	"Filter.c"
.LASF73:
	.string	"_shortbuf"
.LASF90:
	.string	"_IO_2_1_stderr_"
.LASF61:
	.string	"_IO_buf_base"
.LASF46:
	.string	"wcstombs"
.LASF16:
	.string	"7lldiv_t"
.LASF26:
	.string	"long long unsigned int"
.LASF109:
	.string	"free"
.LASF28:
	.string	"atexit"
.LASF11:
	.string	"div_t"
.LASF17:
	.string	"long long int"
.LASF22:
	.string	"signed char"
.LASF35:
	.string	"mblen"
.LASF68:
	.string	"_fileno"
.LASF56:
	.string	"_IO_read_end"
.LASF42:
	.string	"strtod"
.LASF52:
	.string	"strtof"
.LASF14:
	.string	"long int"
.LASF43:
	.string	"strtol"
.LASF54:
	.string	"_flags"
.LASF62:
	.string	"_IO_buf_end"
.LASF71:
	.string	"_cur_column"
.LASF5:
	.string	"__float128"
.LASF15:
	.string	"ldiv_t"
.LASF7:
	.string	"double"
.LASF59:
	.string	"_IO_write_ptr"
.LASF70:
	.string	"_old_offset"
.LASF75:
	.string	"_offset"
.LASF98:
	.string	"Coefficients"
.LASF38:
	.string	"mbtowc"
.LASF40:
	.string	"qsort"
.LASF105:
	.string	"LOOP2"
.LASF84:
	.string	"_IO_marker"
.LASF91:
	.string	"stdin"
.LASF4:
	.string	"__unknown__"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long unsigned int"
.LASF117:
	.string	"_IO_FILE_plus"
.LASF115:
	.string	"rand"
.LASF49:
	.string	"atoll"
.LASF94:
	.string	"sys_nerr"
.LASF86:
	.string	"_sbuf"
.LASF12:
	.string	"5div_t"
.LASF103:
	.string	"_Z6FilterPKhPh"
.LASF19:
	.string	"short unsigned int"
.LASF32:
	.string	"bsearch"
.LASF83:
	.string	"_IO_FILE"
.LASF48:
	.string	"lldiv"
.LASF37:
	.string	"wchar_t"
.LASF74:
	.string	"_lock"
.LASF69:
	.string	"_flags2"
.LASF81:
	.string	"_mode"
.LASF92:
	.string	"stdout"
.LASF99:
	.string	"Input"
.LASF88:
	.string	"_IO_2_1_stdin_"
.LASF33:
	.string	"getenv"
.LASF63:
	.string	"_IO_save_base"
.LASF107:
	.string	"Temp"
.LASF112:
	.string	"/home/haozliu/ESE532/ese532_code/hw2/assignment"
.LASF114:
	.string	"at_quick_exit"
.LASF102:
	.string	"Filter_horizontal"
.LASF34:
	.string	"ldiv"
.LASF116:
	.string	"_IO_lock_t"
.LASF39:
	.string	"quick_exit"
.LASF100:
	.string	"Output"
.LASF6:
	.string	"float"
.LASF87:
	.string	"_pos"
.LASF95:
	.string	"sys_errlist"
.LASF66:
	.string	"_markers"
.LASF36:
	.string	"mbstowcs"
.LASF41:
	.string	"srand"
.LASF29:
	.string	"atof"
.LASF30:
	.string	"atoi"
.LASF31:
	.string	"atol"
.LASF21:
	.string	"unsigned char"
.LASF13:
	.string	"6ldiv_t"
.LASF18:
	.string	"lldiv_t"
.LASF23:
	.string	"short int"
.LASF53:
	.string	"strtold"
.LASF96:
	.string	"_sys_nerr"
.LASF50:
	.string	"strtoll"
.LASF72:
	.string	"_vtable_offset"
.LASF89:
	.string	"_IO_2_1_stdout_"
.LASF47:
	.string	"wctomb"
.LASF113:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF8:
	.string	"long double"
.LASF20:
	.string	"char"
.LASF51:
	.string	"strtoull"
.LASF97:
	.string	"_sys_errlist"
.LASF85:
	.string	"_next"
.LASF25:
	.string	"__off64_t"
.LASF104:
	.string	"_Z17Filter_horizontalPKhPh"
.LASF57:
	.string	"_IO_read_base"
.LASF65:
	.string	"_IO_save_end"
.LASF76:
	.string	"__pad1"
.LASF77:
	.string	"__pad2"
.LASF78:
	.string	"__pad3"
.LASF79:
	.string	"__pad4"
.LASF80:
	.string	"__pad5"
.LASF106:
	.string	"LOOP1"
.LASF60:
	.string	"_IO_write_end"
.LASF118:
	.string	"LOOP3"
.LASF82:
	.string	"_unused2"
.LASF93:
	.string	"stderr"
.LASF44:
	.string	"strtoul"
.LASF64:
	.string	"_IO_backup_base"
.LASF45:
	.string	"system"
.LASF101:
	.string	"Filter"
.LASF27:
	.string	"__compar_fn_t"
.LASF58:
	.string	"_IO_write_base"
.LASF0:
	.string	"__gnu_cxx"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
