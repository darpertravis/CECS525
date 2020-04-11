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
	.file	"matrixSum200.c"
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
	.align	2
	.global	matrixSumColMajor
	.syntax unified
	.arm
	.fpu vfp
	.type	matrixSumColMajor, %function
matrixSumColMajor:
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
	b	.L8
.L11:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L9
.L10:
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
.L9:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L10
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L8:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L11
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	matrixSumColMajor, .-matrixSumColMajor
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Row Major Time: %d\012\000"
	.align	2
.LC2:
	.ascii	"Sum: %d\012\000"
	.align	2
.LC3:
	.ascii	"Col Major Time: %d\012\000"
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
	@ args = 0, pretend = 0, frame = 160064
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #159744
	sub	sp, sp, #320
	ldr	r3, .L23
	sub	ip, fp, #64
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L14
.L17:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L15
.L16:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r1, r2, r3
	sub	r3, fp, #159744
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r0, r3
	str	r1, [r3, #-316]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L15:
	ldr	r3, [fp, #-12]
	cmp	r3, #199
	ble	.L16
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L14:
	ldr	r3, [fp, #-8]
	cmp	r3, #199
	ble	.L17
	bl	clock
	str	r0, [fp, #-24]
	sub	r3, fp, #159744
	sub	r3, r3, #4
	sub	r3, r3, #316
	mov	r1, r3
	mov	r0, #200
	bl	matrixSumRowMajor
	str	r0, [fp, #-28]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L23+4
	bl	printf
	ldr	r1, [fp, #-28]
	ldr	r0, .L23+8
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L18
.L21:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L19
.L20:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r1, r2, r3
	sub	r3, fp, #159744
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r0, r3
	str	r1, [r3, #-316]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L19:
	ldr	r3, [fp, #-20]
	cmp	r3, #199
	ble	.L20
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L18:
	ldr	r3, [fp, #-16]
	cmp	r3, #199
	ble	.L21
	bl	clock
	str	r0, [fp, #-24]
	sub	r3, fp, #159744
	sub	r3, r3, #4
	sub	r3, r3, #316
	mov	r1, r3
	mov	r0, #200
	bl	matrixSumColMajor
	str	r0, [fp, #-28]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L23+12
	bl	printf
	ldr	r1, [fp, #-28]
	ldr	r0, .L23+8
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L24:
	.align	2
.L23:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
