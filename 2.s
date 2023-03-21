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
	.file	"2.c"
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
	mov	r3, #67108864
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, .L29
	strh	r2, [r3]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L5:
	mov	r3, #0
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
	ldr	r2, .L29+4
	bl	draw_point
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #159
	ble	.L4
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L5
.L27:
	ldr	r3, .L29+8
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
	cmp	r3, #16
	beq	.L7
	cmp	r3, #32
	bne	.L28
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L9
.L14:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L10
.L13:
	ldr	r3, [fp, #-12]
	cmp	r3, #80
	bgt	.L11
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L29+12
	bl	draw_point
	b	.L12
.L11:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L29+16
	bl	draw_point
.L12:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L10:
	ldr	r3, [fp, #-12]
	cmp	r3, #159
	ble	.L13
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L14
	b	.L15
.L7:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L16
.L22:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L17
.L21:
	ldr	r3, [fp, #-12]
	cmp	r3, #54
	bgt	.L18
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L29+16
	bl	draw_point
	b	.L19
.L18:
	ldr	r3, [fp, #-12]
	cmp	r3, #106
	bgt	.L20
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #992
	bl	draw_point
	b	.L19
.L20:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #31
	bl	draw_point
.L19:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L17:
	ldr	r3, [fp, #-12]
	cmp	r3, #159
	ble	.L21
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L16:
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L22
	b	.L15
.L28:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L23
.L26:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L24
.L25:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L29+4
	bl	draw_point
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L24:
	ldr	r3, [fp, #-12]
	cmp	r3, #159
	ble	.L25
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L23:
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L26
	mov	r0, r0	@ nop
.L15:
	b	.L27
.L30:
	.align	2
.L29:
	.word	3843
	.word	32767
	.word	67109168
	.word	32736
	.word	1023
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
