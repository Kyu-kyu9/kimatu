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
	.file	"4.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #67108864
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, .L6
	strh	r2, [r3]	@ movhi
	mov	r3, #120
	str	r3, [fp, #-8]
	b	.L2
.L5:
	mov	r3, #80
	str	r3, [fp, #-12]
	b	.L3
.L4:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L6+4
	bl	darw_point
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #90
	ble	.L4
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #130
	ble	.L5
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	3843
	.word	32767
	.size	main, .-main
	.align	2
	.global	darw_point
	.type	darw_point, %function
darw_point:
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
	.size	darw_point, .-darw_point
	.ident	"GCC: (devkitARM release 44) 4.9.2"
