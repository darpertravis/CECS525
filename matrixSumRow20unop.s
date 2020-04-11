	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"matrixSumRow20.c"
	.text
	.align	2
	.global	matrixSumRowMajor
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	matrixSumRowMajor, %function
matrixSumRowMajor:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L4:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L4
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L5
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	matrixSumRowMajor, .-matrixSumRowMajor
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Row Major Time: %d\012\000"
	.align	2
.LC2:
	.ascii	"Sum: %d\012\000"
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1656
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1648
	sub	sp, sp, #8
	ldr	r3, .L13
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L8
.L11:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L9
.L10:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r1, r2, r3
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	str	r1, [r3, #-1652]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L9:
	ldr	r3, [fp, #-12]
	cmp	r3, #19
	ble	.L10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #19
	ble	.L11
	bl	clock
	str	r0, [fp, #-16]
	sub	r3, fp, #1648
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r1, r3
	mov	r0, #20
	bl	matrixSumRowMajor
	str	r0, [fp, #-20]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L13+4
	bl	printf
	ldr	r1, [fp, #-20]
	ldr	r0, .L13+8
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
