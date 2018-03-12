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
	.file	"nrf_crypto_mem.c"
	.section	.text.nrf_crypto_mem_init,"ax",%progbits
	.align	1
	.global	nrf_crypto_mem_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_crypto_mem_init, %function
nrf_crypto_mem_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	nrf_mem_init
	.size	nrf_crypto_mem_init, .-nrf_crypto_mem_init
	.section	.text.nrf_crypto_mem_allocate,"ax",%progbits
	.align	1
	.global	nrf_crypto_mem_allocate
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_crypto_mem_allocate, %function
nrf_crypto_mem_allocate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	mov	r5, r0
	mov	r4, r1
	cbz	r1, .L5
	add	r1, sp, #4
	mov	r0, r4
	bl	nrf_mem_reserve
	cbnz	r0, .L4
	str	r5, [r4, #4]
.L2:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L4:
	movs	r3, #0
	str	r3, [r4, #4]
	b	.L2
.L5:
	movs	r0, #14
	b	.L2
	.size	nrf_crypto_mem_allocate, .-nrf_crypto_mem_allocate
	.section	.text.nrf_crypto_mem_free,"ax",%progbits
	.align	1
	.global	nrf_crypto_mem_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_crypto_mem_free, %function
nrf_crypto_mem_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	cbz	r0, .L8
	ldr	r3, [r0, #4]
	cbz	r3, .L6
	ldr	r0, [r0]
	bl	nrf_free
	movs	r3, #0
.L6:
	mov	r0, r3
	pop	{r3, pc}
.L8:
	movs	r3, #14
	b	.L6
	.size	nrf_crypto_mem_free, .-nrf_crypto_mem_free
	.ident	"GCC: (GNU) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
