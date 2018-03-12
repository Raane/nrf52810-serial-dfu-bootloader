	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"nrf_dfu_transport.c"
	.section	.text.nrf_dfu_transports_init,"ax",%progbits
	.align	1
	.global	nrf_dfu_transports_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_dfu_transports_init, %function
nrf_dfu_transports_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L5
	ldr	r4, .L5+4
	subs	r4, r4, r6
	lsrs	r4, r4, #3
	movs	r5, #0
.L2:
	cmp	r5, r4
	bne	.L4
	movs	r0, #0
.L1:
	pop	{r4, r5, r6, pc}
.L4:
	ldr	r3, [r6, r5, lsl #3]
	blx	r3
	cmp	r0, #0
	bne	.L1
	adds	r5, r5, #1
	b	.L2
.L6:
	.align	2
.L5:
	.word	__start_dfu_trans
	.word	__stop_dfu_trans
	.size	nrf_dfu_transports_init, .-nrf_dfu_transports_init
	.section	.text.nrf_dfu_transports_close,"ax",%progbits
	.align	1
	.global	nrf_dfu_transports_close
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_dfu_transports_close, %function
nrf_dfu_transports_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L11
	ldr	r4, .L11+4
	subs	r4, r4, r6
	lsrs	r4, r4, #3
	movs	r5, #0
.L8:
	cmp	r5, r4
	bne	.L10
	movs	r0, #0
.L7:
	pop	{r4, r5, r6, pc}
.L10:
	add	r3, r6, r5, lsl #3
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	bne	.L7
	adds	r5, r5, #1
	b	.L8
.L12:
	.align	2
.L11:
	.word	__start_dfu_trans
	.word	__stop_dfu_trans
	.size	nrf_dfu_transports_close, .-nrf_dfu_transports_close
	.ident	"GCC: (GNU) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
