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
	.file	"nrf_bootloader_app_start.c"
	.section	.text.sd_softdevice_vector_table_base_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sd_softdevice_vector_table_base_set, %function
sd_softdevice_vector_table_base_set:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.syntax unified
@ 344 "../../../../../../components/softdevice/s132/headers/nrf_sdm.h" 1
	svc #19
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	.size	sd_softdevice_vector_table_base_set, .-sd_softdevice_vector_table_base_set
	.section	.text.nrf_bootloader_app_start,"ax",%progbits
	.align	1
	.global	nrf_bootloader_app_start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_bootloader_app_start, %function
nrf_bootloader_app_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nrf_dfu_mbr_init_sd
	cbnz	r0, .L2
	ldr	r3, .L6
	mov	r2, #-1
	str	r2, [r3, #128]
	mov	r0, r4
	str	r2, [r3, #384]
	bl	sd_softdevice_vector_table_base_set
	cbnz	r0, .L2
	mov	r0, r4
	pop	{r4, lr}
	b	nrf_bootloader_app_start_impl
.L2:
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	-536813312
	.size	nrf_bootloader_app_start, .-nrf_bootloader_app_start
	.ident	"GCC: (GNU) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
