	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"5.c"
	.global	a
	.data
	.align	1
	.type	a, %object
	.size	a, 2
a:
	.short	1
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #1
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #67108864
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, .L10
	strh	r2, [r3]	@ movhi
.L8:
	ldr	r3, .L10+4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrh	r3, [fp, #-22]	@ movhi
	mvn	r3, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #255
	strh	r3, [fp, #-24]	@ movhi
	ldrh	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L9
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L5:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	ldr	r3, [fp, #-12]
	ldr	r2, .L10+8
	cmp	r3, r2
	ble	.L5
	ldrh	r3, [fp, #-6]
	cmp	r3, #1
	bne	.L6
	ldr	r3, .L10+12
	ldrh	r2, [r3]
	ldr	r3, .L10+12
	ldrh	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #31
	bl	draw_point
	ldr	r3, .L10+12
	ldrh	r3, [r3]
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L10+12
	strh	r3, [r2]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, .L10+12
	ldrh	r3, [r3]
	cmp	r3, #19
	bne	.L6
	ldr	r3, .L10+12
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L7
.L6:
	b	.L7
.L9:
	mov	r3, #1
	strh	r3, [fp, #-6]	@ movhi
	mov	r0, r0	@ nop
.L7:
	b	.L8
.L11:
	.align	2
.L10:
	.word	3843
	.word	67109168
	.word	149999
	.word	a
	.size	main, .-main
	.align	2
	.global	draw_point
	.type	draw_point, %function
draw_point:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r2
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, #100663296
	str	r3, [fp, #-8]
	ldrh	r1, [fp, #-14]
	ldrh	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #4
	add	r3, r1, r3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrh	r2, [fp, #-18]	@ movhi
	strh	r2, [r3]	@ movhi
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	draw_point, .-draw_point
	.ident	"GCC: (devkitARM release 44) 4.9.2"
