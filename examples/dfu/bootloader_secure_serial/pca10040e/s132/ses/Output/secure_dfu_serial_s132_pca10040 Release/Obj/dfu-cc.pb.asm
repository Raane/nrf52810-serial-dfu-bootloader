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
	.file	"dfu-cc.pb.c"
	.global	dfu_packet_fields
	.global	dfu_signed_command_fields
	.global	dfu_command_fields
	.global	dfu_reset_command_fields
	.global	dfu_init_command_fields
	.global	dfu_hash_fields
	.global	dfu_init_command_is_debug_default
	.section	.rodata.dfu_command_fields,"a",%progbits
	.align	2
	.type	dfu_command_fields, %object
	.size	dfu_command_fields, 48
dfu_command_fields:
	.byte	1
	.byte	17
	.byte	1
	.byte	-1
	.byte	1
	.byte	0
	.space	2
	.word	0
	.byte	2
	.byte	23
	.byte	2
	.byte	-2
	.byte	-108
	.byte	0
	.space	2
	.word	dfu_init_command_fields
	.byte	3
	.byte	23
	.byte	4
	.byte	-4
	.byte	4
	.byte	0
	.space	2
	.word	dfu_reset_command_fields
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.section	.rodata.dfu_hash_fields,"a",%progbits
	.align	2
	.type	dfu_hash_fields, %object
	.size	dfu_hash_fields, 36
dfu_hash_fields:
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.space	2
	.word	0
	.byte	2
	.byte	5
	.byte	0
	.byte	0
	.byte	33
	.byte	0
	.space	2
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.section	.rodata.dfu_init_command_fields,"a",%progbits
	.align	2
	.type	dfu_init_command_fields, %object
	.size	dfu_init_command_fields, 120
dfu_init_command_fields:
	.byte	1
	.byte	17
	.byte	4
	.byte	-4
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	2
	.byte	17
	.byte	4
	.byte	-4
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	3
	.byte	33
	.byte	4
	.byte	-4
	.byte	4
	.byte	16
	.space	2
	.word	0
	.byte	4
	.byte	17
	.byte	1
	.byte	-1
	.byte	1
	.byte	0
	.space	2
	.word	0
	.byte	5
	.byte	17
	.byte	2
	.byte	-2
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	6
	.byte	17
	.byte	4
	.byte	-4
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	7
	.byte	17
	.byte	4
	.byte	-4
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	8
	.byte	23
	.byte	1
	.byte	-1
	.byte	34
	.byte	0
	.space	2
	.word	dfu_hash_fields
	.byte	9
	.byte	16
	.byte	1
	.byte	-1
	.byte	1
	.byte	0
	.space	2
	.word	dfu_init_command_is_debug_default
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.section	.rodata.dfu_init_command_is_debug_default,"a",%progbits
	.type	dfu_init_command_is_debug_default, %object
	.size	dfu_init_command_is_debug_default, 1
dfu_init_command_is_debug_default:
	.space	1
	.section	.rodata.dfu_packet_fields,"a",%progbits
	.align	2
	.type	dfu_packet_fields, %object
	.size	dfu_packet_fields, 36
dfu_packet_fields:
	.byte	1
	.byte	23
	.byte	4
	.byte	-4
	.byte	-96
	.byte	0
	.space	2
	.word	dfu_command_fields
	.byte	2
	.byte	23
	.byte	4
	.byte	-4
	.byte	-28
	.byte	0
	.space	2
	.word	dfu_signed_command_fields
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.section	.rodata.dfu_reset_command_fields,"a",%progbits
	.align	2
	.type	dfu_reset_command_fields, %object
	.size	dfu_reset_command_fields, 24
dfu_reset_command_fields:
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.space	2
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.section	.rodata.dfu_signed_command_fields,"a",%progbits
	.align	2
	.type	dfu_signed_command_fields, %object
	.size	dfu_signed_command_fields, 48
dfu_signed_command_fields:
	.byte	1
	.byte	7
	.byte	0
	.byte	0
	.byte	-96
	.byte	0
	.space	2
	.word	dfu_command_fields
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.space	2
	.word	0
	.byte	3
	.byte	5
	.byte	0
	.byte	0
	.byte	65
	.byte	0
	.space	2
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	2
	.word	0
	.ident	"GCC: (GNU) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
