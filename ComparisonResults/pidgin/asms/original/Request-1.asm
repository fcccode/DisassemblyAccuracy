	.file	"Request.c"
	.intel_syntax noprefix
	.text
Ltext0:
	.p2align 2,,3
	.def	_purple_perl_request_data_free;	.scl	3;	.type	32;	.endef
_purple_perl_request_data_free:
LFB93:
	.file 1 "Request.xs"
	.loc 1 24 0
	.cfi_startproc
LVL0:
	push	esi
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
LCFI1:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 36
LCFI2:
	.cfi_def_cfa_offset 48
	mov	ebx, eax
	.loc 1 24 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
LVL1:
	.loc 1 25 0
	mov	esi, DWORD PTR [ebx]
	test	esi, esi
	je	L3
LVL2:
LBB3:
	.loc 1 26 0 discriminator 1
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	L4
	dec	eax
	mov	DWORD PTR [esi+4], eax
	test	eax, eax
	je	L13
LVL3:
L3:
LBE3:
	.loc 1 27 0
	mov	esi, DWORD PTR [ebx+4]
	test	esi, esi
	je	L7
LVL4:
LBB4:
	.loc 1 28 0 discriminator 1
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	L8
	dec	eax
	mov	DWORD PTR [esi+4], eax
	test	eax, eax
	je	L14
LVL5:
L7:
LBE4:
	.loc 1 29 0
	mov	DWORD PTR [esp], ebx
	call	_g_free
LVL6:
	.loc 1 30 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L15
	add	esp, 36
LCFI3:
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	pop	ebx
LCFI4:
	.cfi_restore 3
	.cfi_def_cfa_offset 8
LVL7:
	pop	esi
LCFI5:
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
LVL8:
	.p2align 2,,3
L8:
LCFI6:
	.cfi_restore_state
LBB5:
	.loc 1 28 0 discriminator 2
	call	_Perl_get_context
LVL9:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_free
LVL10:
	jmp	L7
LVL11:
	.p2align 2,,3
L4:
LBE5:
LBB6:
	.loc 1 26 0 discriminator 2
	call	_Perl_get_context
LVL12:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_free
LVL13:
	jmp	L3
LVL14:
	.p2align 2,,3
L14:
LBE6:
LBB7:
	.loc 1 28 0 discriminator 1
	call	_Perl_get_context
LVL15:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_free2
LVL16:
	jmp	L7
LVL17:
	.p2align 2,,3
L13:
LBE7:
LBB8:
	.loc 1 26 0 discriminator 1
	call	_Perl_get_context
LVL18:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_free2
LVL19:
	jmp	L3
LVL20:
L15:
LBE8:
	.loc 1 30 0
	call	___stack_chk_fail
LVL21:
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC0:
	.ascii "Purple::Request::Fields\0"
	.text
	.p2align 2,,3
	.def	_purple_perl_request_cancel_cb;	.scl	3;	.type	32;	.endef
_purple_perl_request_cancel_cb:
LFB95:
	.loc 1 64 0
	.cfi_startproc
LVL22:
	push	ebp
LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI8:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI10:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI11:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+64]
	mov	edi, DWORD PTR [esp+68]
	.loc 1 64 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
LVL23:
	.loc 1 67 0
	call	_Perl_get_context
LVL24:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL25:
	mov	ebx, DWORD PTR [eax]
LVL26:
	.loc 1 68 0
	call	_Perl_get_context
LVL27:
	mov	DWORD PTR [esp], eax
	call	_Perl_push_scope
LVL28:
	.loc 1 69 0
	call	_Perl_get_context
LVL29:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL30:
	mov	ebp, eax
	call	_Perl_get_context
LVL31:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_save_int
LVL32:
	call	_Perl_get_context
LVL33:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL34:
	mov	ebp, eax
	call	_Perl_get_context
LVL35:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_ix_ptr
LVL36:
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp+0], eax
LBB9:
	.loc 1 70 0
	call	_Perl_get_context
LVL37:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL38:
	mov	ebp, DWORD PTR [eax]
	add	ebp, 4
	mov	DWORD PTR [eax], ebp
	call	_Perl_get_context
LVL39:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_max_ptr
LVL40:
	cmp	ebp, DWORD PTR [eax]
	je	L23
L17:
	.loc 1 70 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL41:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL42:
	mov	ebp, DWORD PTR [eax]
	call	_Perl_get_context
LVL43:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL44:
	mov	edx, ebx
	sub	edx, DWORD PTR [eax]
	mov	eax, edx
	sar	eax, 2
	mov	DWORD PTR [ebp+0], eax
LBE9:
LBB10:
	.loc 1 72 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL45:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL46:
	mov	edx, DWORD PTR [eax]
	sub	edx, ebx
	cmp	edx, 3
	jle	L24
L18:
LVL47:
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL48:
	mov	edi, eax
	call	_Perl_get_context
LVL49:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL50:
	mov	DWORD PTR [ebx+4], eax
LBE10:
	.loc 1 73 0 discriminator 2
	call	_Perl_get_context
LVL51:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL52:
LBB11:
	.loc 1 72 0 discriminator 2
	add	ebx, 4
LVL53:
	mov	DWORD PTR [eax], ebx
LBE11:
	.loc 1 74 0 discriminator 2
	mov	ebx, DWORD PTR [esi+4]
LVL54:
	call	_Perl_get_context
LVL55:
	mov	DWORD PTR [esp+8], 4
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_call_sv
LVL56:
	.loc 1 75 0 discriminator 2
	call	_Perl_get_context
LVL57:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL58:
	mov	ebx, DWORD PTR [eax]
LVL59:
	.loc 1 77 0 discriminator 2
	call	_Perl_get_context
LVL60:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL61:
	mov	DWORD PTR [eax], ebx
	.loc 1 78 0 discriminator 2
	call	_Perl_get_context
LVL62:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_ix_ptr
LVL63:
	mov	ebx, DWORD PTR [eax]
LVL64:
	call	_Perl_get_context
LVL65:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL66:
	cmp	ebx, DWORD PTR [eax]
	jle	L19
	.loc 1 78 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL67:
	mov	DWORD PTR [esp], eax
	call	_Perl_free_tmps
LVL68:
L19:
	.loc 1 79 0 is_stmt 1
	call	_Perl_get_context
LVL69:
	mov	DWORD PTR [esp], eax
	call	_Perl_pop_scope
LVL70:
	.loc 1 81 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L25
	mov	eax, esi
	.loc 1 82 0
	add	esp, 44
LCFI12:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI13:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI14:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL71:
	pop	edi
LCFI15:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI16:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	.loc 1 81 0
	jmp	_purple_perl_request_data_free
LVL72:
	.p2align 2,,3
L24:
LCFI17:
	.cfi_restore_state
LBB12:
	.loc 1 72 0 discriminator 1
	call	_Perl_get_context
LVL73:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL74:
	mov	ebx, eax
LVL75:
	jmp	L18
LVL76:
	.p2align 2,,3
L23:
LBE12:
LBB13:
	.loc 1 70 0 discriminator 1
	call	_Perl_get_context
LVL77:
	mov	DWORD PTR [esp], eax
	call	_Perl_markstack_grow
LVL78:
	jmp	L17
LVL79:
L25:
LBE13:
	.loc 1 81 0
	call	___stack_chk_fail
LVL80:
	.cfi_endproc
LFE95:
	.p2align 2,,3
	.def	_purple_perl_request_ok_cb;	.scl	3;	.type	32;	.endef
_purple_perl_request_ok_cb:
LFB94:
	.loc 1 42 0
	.cfi_startproc
LVL81:
	push	ebp
LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI19:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI21:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI22:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+64]
	mov	edi, DWORD PTR [esp+68]
	.loc 1 42 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
LVL82:
	.loc 1 45 0
	call	_Perl_get_context
LVL83:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL84:
	mov	ebx, DWORD PTR [eax]
LVL85:
	.loc 1 46 0
	call	_Perl_get_context
LVL86:
	mov	DWORD PTR [esp], eax
	call	_Perl_push_scope
LVL87:
	.loc 1 47 0
	call	_Perl_get_context
LVL88:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL89:
	mov	ebp, eax
	call	_Perl_get_context
LVL90:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_save_int
LVL91:
	call	_Perl_get_context
LVL92:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL93:
	mov	ebp, eax
	call	_Perl_get_context
LVL94:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_ix_ptr
LVL95:
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp+0], eax
LBB14:
	.loc 1 48 0
	call	_Perl_get_context
LVL96:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL97:
	mov	ebp, DWORD PTR [eax]
	add	ebp, 4
	mov	DWORD PTR [eax], ebp
	call	_Perl_get_context
LVL98:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_max_ptr
LVL99:
	cmp	ebp, DWORD PTR [eax]
	je	L33
L27:
	.loc 1 48 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL100:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL101:
	mov	ebp, DWORD PTR [eax]
	call	_Perl_get_context
LVL102:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL103:
	mov	edx, ebx
	sub	edx, DWORD PTR [eax]
	mov	eax, edx
	sar	eax, 2
	mov	DWORD PTR [ebp+0], eax
LBE14:
LBB15:
	.loc 1 50 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL104:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL105:
	mov	edx, DWORD PTR [eax]
	sub	edx, ebx
	cmp	edx, 3
	jle	L34
L28:
LVL106:
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL107:
	mov	edi, eax
	call	_Perl_get_context
LVL108:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL109:
	mov	DWORD PTR [ebx+4], eax
LBE15:
	.loc 1 51 0 discriminator 2
	call	_Perl_get_context
LVL110:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL111:
LBB16:
	.loc 1 50 0 discriminator 2
	add	ebx, 4
LVL112:
	mov	DWORD PTR [eax], ebx
LBE16:
	.loc 1 52 0 discriminator 2
	mov	ebx, DWORD PTR [esi]
LVL113:
	call	_Perl_get_context
LVL114:
	mov	DWORD PTR [esp+8], 4
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_call_sv
LVL115:
	.loc 1 53 0 discriminator 2
	call	_Perl_get_context
LVL116:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL117:
	mov	ebx, DWORD PTR [eax]
LVL118:
	.loc 1 55 0 discriminator 2
	call	_Perl_get_context
LVL119:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL120:
	mov	DWORD PTR [eax], ebx
	.loc 1 56 0 discriminator 2
	call	_Perl_get_context
LVL121:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_ix_ptr
LVL122:
	mov	ebx, DWORD PTR [eax]
LVL123:
	call	_Perl_get_context
LVL124:
	mov	DWORD PTR [esp], eax
	call	_Perl_Itmps_floor_ptr
LVL125:
	cmp	ebx, DWORD PTR [eax]
	jle	L29
	.loc 1 56 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL126:
	mov	DWORD PTR [esp], eax
	call	_Perl_free_tmps
LVL127:
L29:
	.loc 1 57 0 is_stmt 1
	call	_Perl_get_context
LVL128:
	mov	DWORD PTR [esp], eax
	call	_Perl_pop_scope
LVL129:
	.loc 1 59 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L35
	mov	eax, esi
	.loc 1 60 0
	add	esp, 44
LCFI23:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI24:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI25:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL130:
	pop	edi
LCFI26:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI27:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	.loc 1 59 0
	jmp	_purple_perl_request_data_free
LVL131:
	.p2align 2,,3
L34:
LCFI28:
	.cfi_restore_state
LBB17:
	.loc 1 50 0 discriminator 1
	call	_Perl_get_context
LVL132:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL133:
	mov	ebx, eax
LVL134:
	jmp	L28
LVL135:
	.p2align 2,,3
L33:
LBE17:
LBB18:
	.loc 1 48 0 discriminator 1
	call	_Perl_get_context
LVL136:
	mov	DWORD PTR [esp], eax
	call	_Perl_markstack_grow
LVL137:
	jmp	L27
LVL138:
L35:
LBE18:
	.loc 1 59 0
	call	___stack_chk_fail
LVL139:
	.cfi_endproc
LFE94:
	.section .rdata,"dr"
LC1:
	.ascii "Usage: %s::%s(%s)\0"
LC2:
	.ascii "Usage: CODE(0x%lx)(%s)\0"
LC3:
	.ascii "Usage: %s(%s)\0"
	.section	.text.unlikely,"x"
	.def	_S_croak_xs_usage.isra.0;	.scl	3;	.type	32;	.endef
_S_croak_xs_usage.isra.0:
LFB181:
	.file 2 "Request.c"
	.loc 2 196 0
	.cfi_startproc
LVL140:
	push	edi
LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
LCFI30:
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
LCFI31:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	esp, 48
LCFI32:
	.cfi_def_cfa_offset 64
	mov	ebx, eax
	mov	esi, edx
	.loc 2 196 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
LVL141:
	.loc 2 198 0
	mov	eax, DWORD PTR [ebx]
	mov	ecx, DWORD PTR [eax+40]
LVL142:
	.loc 2 202 0
	test	ecx, ecx
	je	L37
LBB19:
	.loc 2 203 0
	mov	eax, DWORD PTR [ecx]
	mov	ebx, DWORD PTR [eax+16]
LVL143:
	add	ebx, 8
LVL144:
	.loc 2 204 0
	mov	eax, DWORD PTR [eax]
LVL145:
	.loc 2 205 0
	test	eax, eax
	je	L38
	test	BYTE PTR [eax+11], 2
	je	L38
	mov	edx, DWORD PTR [eax]
LVL146:
	mov	edx, DWORD PTR [edx+12]
	mov	eax, DWORD PTR [eax+12]
LVL147:
	mov	edi, DWORD PTR [eax+4+edx*4]
	test	edi, edi
	je	L38
LVL148:
	.loc 2 208 0
	call	_Perl_get_context
LVL149:
	mov	DWORD PTR [esp+16], esi
	mov	DWORD PTR [esp+12], ebx
	.loc 2 205 0
	add	edi, 8
LVL150:
	mov	DWORD PTR [esp+8], edi
	.loc 2 208 0
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	DWORD PTR [esp], eax
	call	_Perl_croak
LVL151:
L37:
LBE19:
	.loc 2 213 0
	call	_Perl_get_context
LVL152:
	mov	DWORD PTR [esp+12], esi
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC2
	mov	DWORD PTR [esp], eax
	call	_Perl_croak
LVL153:
L38:
LBB20:
	.loc 2 210 0
	call	_Perl_get_context
LVL154:
	mov	DWORD PTR [esp+12], esi
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC3
	mov	DWORD PTR [esp], eax
	call	_Perl_croak
LVL155:
LBE20:
	.cfi_endproc
LFE181:
	.section .rdata,"dr"
LC4:
	.ascii "fields, id\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_is_field_required;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_is_field_required:
LFB179:
	.loc 2 1938 0
	.cfi_startproc
LVL156:
	push	ebp
LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI34:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI35:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI36:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI37:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1938 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1939 0
	call	_Perl_get_context
LVL157:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL158:
	mov	ebp, DWORD PTR [eax]
LVL159:
	call	_Perl_get_context
LVL160:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL161:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL162:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL163:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL164:
	lea	esi, [ebx+1]
LVL165:
	mov	eax, DWORD PTR [eax]
LVL166:
	lea	eax, [eax+ebx*4]
LVL167:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1940 0
	cmp	edx, 2
	jne	L58
LBB21:
	.loc 2 1943 0
	call	_Perl_get_context
LVL168:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL169:
	sal	esi, 2
LVL170:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL171:
	mov	edi, eax
LVL172:
	.loc 2 1945 0
	call	_Perl_get_context
LVL173:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL174:
	lea	ebx, [8+ebx*4]
LVL175:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L59
	.loc 2 1945 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL176:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL177:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL178:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL179:
L53:
	.loc 2 1949 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields_is_field_required
LVL180:
	mov	edi, eax
LVL181:
	.loc 2 1950 0 discriminator 3
	call	_Perl_get_context
LVL182:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL183:
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	test	edi, edi
	jne	L60
	.loc 2 1950 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL184:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL185:
L55:
	.loc 2 1950 0 discriminator 3
	mov	DWORD PTR [ebx], eax
LVL186:
LBE21:
LBB22:
	.loc 2 1952 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL187:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL188:
	mov	ebx, eax
	call	_Perl_get_context
LVL189:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL190:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE22:
	.loc 2 1953 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L61
	.loc 2 1953 0 is_stmt 0
	add	esp, 44
LCFI38:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI39:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI40:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI41:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL191:
	pop	ebp
LCFI42:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL192:
	ret
LVL193:
	.p2align 2,,3
L59:
LCFI43:
	.cfi_restore_state
LBB23:
	.loc 2 1945 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL194:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL195:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L53
LVL196:
	.p2align 2,,3
L60:
	.loc 2 1950 0 discriminator 1
	call	_Perl_get_context
LVL197:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL198:
	jmp	L55
LVL199:
L61:
LBE23:
	.loc 2 1953 0
	call	___stack_chk_fail
LVL200:
L58:
	.loc 2 1941 0
	call	_Perl_get_context
LVL201:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL202:
	.cfi_endproc
LFE179:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_string;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_string:
LFB178:
	.loc 2 1917 0
	.cfi_startproc
LVL203:
	push	ebp
LCFI44:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI45:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI46:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI47:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI48:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1917 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1918 0
	call	_Perl_get_context
LVL204:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL205:
	mov	ebp, DWORD PTR [eax]
LVL206:
	call	_Perl_get_context
LVL207:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL208:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL209:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL210:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL211:
	lea	esi, [ebx+1]
LVL212:
	mov	eax, DWORD PTR [eax]
LVL213:
	lea	eax, [eax+ebx*4]
LVL214:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1919 0
	cmp	edx, 2
	jne	L74
LBB24:
	.loc 2 1922 0
	call	_Perl_get_context
LVL215:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL216:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL217:
	mov	ebp, eax
LVL218:
	.loc 2 1924 0
	call	_Perl_get_context
LVL219:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL220:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L75
	.loc 2 1924 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL221:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL222:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL223:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL224:
	mov	DWORD PTR [esp+28], eax
L65:
LVL225:
	.loc 2 1927 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL226:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL227:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L66
	.loc 2 1927 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL228:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL229:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL230:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL231:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
L67:
LVL232:
	.loc 2 1929 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebp
	call	_purple_request_fields_get_string
LVL233:
	mov	ebp, eax
LVL234:
	.loc 2 1930 0 discriminator 3
	call	_Perl_get_context
LVL235:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL236:
	call	_Perl_get_context
LVL237:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL238:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL239:
LBB25:
	test	BYTE PTR [ebx+10], 64
	je	L68
	.loc 2 1930 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL240:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL241:
L68:
	.loc 2 1930 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL242:
LBE25:
LBE24:
LBB26:
	.loc 2 1932 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL243:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL244:
	mov	ebx, eax
LVL245:
	call	_Perl_get_context
LVL246:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL247:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE26:
	.loc 2 1933 0 discriminator 2
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L76
	.loc 2 1933 0 is_stmt 0
	add	esp, 60
LCFI49:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI50:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI51:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL248:
	pop	edi
LCFI52:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI53:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL249:
	ret
LVL250:
	.p2align 2,,3
L75:
LCFI54:
	.cfi_restore_state
LBB27:
	.loc 2 1924 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL251:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL252:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+28], eax
	jmp	L65
LVL253:
	.p2align 2,,3
L66:
	.loc 2 1927 0 discriminator 2
	call	_Perl_get_context
LVL254:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL255:
	mov	ebx, eax
	jmp	L67
LVL256:
L76:
LBE27:
	.loc 2 1933 0
	call	___stack_chk_fail
LVL257:
L74:
	.loc 2 1920 0
	call	_Perl_get_context
LVL258:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL259:
	.cfi_endproc
LFE178:
	.section .rdata,"dr"
LC5:
	.ascii "fields\0"
LC6:
	.ascii "Purple::Request::Field\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_required;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_required:
LFB177:
	.loc 2 1892 0
	.cfi_startproc
LVL260:
	push	ebp
LCFI55:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI56:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI57:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI58:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI59:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1892 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1893 0
	call	_Perl_get_context
LVL261:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL262:
	mov	esi, DWORD PTR [eax]
LVL263:
	call	_Perl_get_context
LVL264:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL265:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL266:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL267:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL268:
	lea	ebp, [ebx+1]
LVL269:
	mov	eax, DWORD PTR [eax]
LVL270:
	lea	eax, [eax+ebx*4]
LVL271:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1894 0
	dec	edx
	jne	L90
	.loc 2 1897 0
	sub	esi, 4
LVL272:
LBB28:
	.loc 2 1899 0
	call	_Perl_get_context
LVL273:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL274:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL275:
	.loc 1 642 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_fields_get_required
LVL276:
	mov	ebx, eax
LVL277:
	test	eax, eax
	jne	L86
	jmp	L79
LVL278:
	.p2align 2,,3
L83:
LBB29:
	.loc 1 643 0
	mov	edi, esi
LVL279:
L80:
	.loc 1 643 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL280:
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	eax, DWORD PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_bless_object
LVL281:
	mov	ebp, eax
	call	_Perl_get_context
LVL282:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL283:
	mov	DWORD PTR [edi+4], eax
LBE29:
	.loc 1 642 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL284:
	test	ebx, ebx
	je	L79
L86:
LBB30:
	.loc 1 643 0
	call	_Perl_get_context
LVL285:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL286:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L83
	.loc 1 643 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL287:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL288:
	mov	edi, eax
LVL289:
	jmp	L80
LVL290:
	.p2align 2,,3
L79:
LBE30:
	.loc 2 1909 0 is_stmt 1
	call	_Perl_get_context
LVL291:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL292:
	mov	DWORD PTR [eax], esi
LBE28:
	.loc 2 1912 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L91
	add	esp, 44
LCFI60:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI61:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL293:
	pop	esi
LCFI62:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL294:
	pop	edi
LCFI63:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI64:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL295:
L90:
LCFI65:
	.cfi_restore_state
	.loc 2 1895 0
	call	_Perl_get_context
LVL296:
	mov	edx, OFFSET FLAT:LC5
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL297:
L91:
	.loc 2 1912 0
	call	___stack_chk_fail
LVL298:
	.cfi_endproc
LFE177:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_integer;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_integer:
LFB176:
	.loc 2 1871 0
	.cfi_startproc
LVL299:
	push	ebp
LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI67:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI68:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI69:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI70:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1871 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1872 0
	call	_Perl_get_context
LVL300:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL301:
	mov	ebp, DWORD PTR [eax]
LVL302:
	call	_Perl_get_context
LVL303:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL304:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL305:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL306:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL307:
	lea	esi, [ebx+1]
LVL308:
	mov	eax, DWORD PTR [eax]
LVL309:
	lea	eax, [eax+ebx*4]
LVL310:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1873 0
	cmp	edx, 2
	jne	L104
LBB31:
	.loc 2 1876 0
	call	_Perl_get_context
LVL311:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL312:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL313:
	mov	ebp, eax
LVL314:
	.loc 2 1878 0
	call	_Perl_get_context
LVL315:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL316:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L105
	.loc 2 1878 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL317:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL318:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL319:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL320:
	mov	DWORD PTR [esp+28], eax
L95:
LVL321:
	.loc 2 1881 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL322:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL323:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L96
	.loc 2 1881 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL324:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL325:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL326:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL327:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
L97:
LVL328:
	.loc 2 1883 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebp
	call	_purple_request_fields_get_integer
LVL329:
	mov	ebp, eax
LVL330:
	.loc 2 1884 0 discriminator 3
	call	_Perl_get_context
LVL331:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL332:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL333:
LBB32:
	call	_Perl_get_context
LVL334:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL335:
LBB33:
	test	BYTE PTR [ebx+10], 64
	je	L98
	.loc 2 1884 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL336:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL337:
L98:
	.loc 2 1884 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL338:
LBE33:
LBE32:
LBE31:
LBB34:
	.loc 2 1886 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL339:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL340:
	mov	ebx, eax
LVL341:
	call	_Perl_get_context
LVL342:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL343:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE34:
	.loc 2 1887 0 discriminator 2
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L106
	.loc 2 1887 0 is_stmt 0
	add	esp, 60
LCFI71:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI72:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI73:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL344:
	pop	edi
LCFI74:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI75:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL345:
	ret
LVL346:
	.p2align 2,,3
L105:
LCFI76:
	.cfi_restore_state
LBB35:
	.loc 2 1878 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL347:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL348:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+28], eax
	jmp	L95
LVL349:
	.p2align 2,,3
L96:
	.loc 2 1881 0 discriminator 2
	call	_Perl_get_context
LVL350:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL351:
	mov	ebx, eax
	jmp	L97
LVL352:
L106:
LBE35:
	.loc 2 1887 0
	call	___stack_chk_fail
LVL353:
L104:
	.loc 2 1874 0
	call	_Perl_get_context
LVL354:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL355:
	.cfi_endproc
LFE176:
	.section .rdata,"dr"
LC7:
	.ascii "Purple::Request::Field::Group\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_groups;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_groups:
LFB175:
	.loc 2 1846 0
	.cfi_startproc
LVL356:
	push	ebp
LCFI77:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI78:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI79:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI80:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI81:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1846 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1847 0
	call	_Perl_get_context
LVL357:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL358:
	mov	esi, DWORD PTR [eax]
LVL359:
	call	_Perl_get_context
LVL360:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL361:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL362:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL363:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL364:
	lea	ebp, [ebx+1]
LVL365:
	mov	eax, DWORD PTR [eax]
LVL366:
	lea	eax, [eax+ebx*4]
LVL367:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1848 0
	dec	edx
	jne	L120
	.loc 2 1851 0
	sub	esi, 4
LVL368:
LBB36:
	.loc 2 1853 0
	call	_Perl_get_context
LVL369:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL370:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL371:
	.loc 1 627 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_fields_get_groups
LVL372:
	mov	ebx, eax
LVL373:
	test	eax, eax
	jne	L116
	jmp	L109
LVL374:
	.p2align 2,,3
L113:
LBB37:
	.loc 1 628 0
	mov	edi, esi
LVL375:
L110:
	.loc 1 628 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL376:
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC7
	mov	eax, DWORD PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_bless_object
LVL377:
	mov	ebp, eax
	call	_Perl_get_context
LVL378:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL379:
	mov	DWORD PTR [edi+4], eax
LBE37:
	.loc 1 627 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL380:
	test	ebx, ebx
	je	L109
L116:
LBB38:
	.loc 1 628 0
	call	_Perl_get_context
LVL381:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL382:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L113
	.loc 1 628 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL383:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL384:
	mov	edi, eax
LVL385:
	jmp	L110
LVL386:
	.p2align 2,,3
L109:
LBE38:
	.loc 2 1863 0 is_stmt 1
	call	_Perl_get_context
LVL387:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL388:
	mov	DWORD PTR [eax], esi
LBE36:
	.loc 2 1866 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L121
	add	esp, 44
LCFI82:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI83:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL389:
	pop	esi
LCFI84:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL390:
	pop	edi
LCFI85:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI86:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL391:
L120:
LCFI87:
	.cfi_restore_state
	.loc 2 1849 0
	call	_Perl_get_context
LVL392:
	mov	edx, OFFSET FLAT:LC5
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL393:
L121:
	.loc 2 1866 0
	call	___stack_chk_fail
LVL394:
	.cfi_endproc
LFE175:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_field;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_field:
LFB174:
	.loc 2 1825 0
	.cfi_startproc
LVL395:
	push	ebp
LCFI88:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI89:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI90:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI91:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI92:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1825 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1826 0
	call	_Perl_get_context
LVL396:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL397:
	mov	ebp, DWORD PTR [eax]
LVL398:
	call	_Perl_get_context
LVL399:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL400:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL401:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL402:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL403:
	lea	ebx, [esi+1]
LVL404:
	mov	eax, DWORD PTR [eax]
LVL405:
	lea	eax, [eax+esi*4]
LVL406:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1827 0
	cmp	edx, 2
	jne	L128
LBB39:
	.loc 2 1830 0
	call	_Perl_get_context
LVL407:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL408:
	sal	ebx, 2
LVL409:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL410:
	mov	edi, eax
LVL411:
	.loc 2 1832 0
	call	_Perl_get_context
LVL412:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL413:
	lea	esi, [8+esi*4]
LVL414:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L129
	.loc 2 1832 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL415:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL416:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL417:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL418:
L125:
	.loc 2 1836 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields_get_field
LVL419:
	mov	edi, eax
LVL420:
	.loc 2 1837 0 discriminator 3
	call	_Perl_get_context
LVL421:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL422:
	mov	esi, DWORD PTR [eax]
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL423:
	mov	DWORD PTR [esi], eax
	.loc 2 1838 0 discriminator 3
	call	_Perl_get_context
LVL424:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL425:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL426:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL427:
LBE39:
LBB40:
	.loc 2 1840 0 discriminator 3
	call	_Perl_get_context
LVL428:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL429:
	mov	esi, eax
	call	_Perl_get_context
LVL430:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL431:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE40:
	.loc 2 1841 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L130
	.loc 2 1841 0 is_stmt 0
	add	esp, 44
LCFI93:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI94:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI95:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI96:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL432:
	pop	ebp
LCFI97:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL433:
	ret
LVL434:
	.p2align 2,,3
L129:
LCFI98:
	.cfi_restore_state
LBB41:
	.loc 2 1832 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL435:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL436:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	jmp	L125
LVL437:
L128:
LBE41:
	.loc 2 1828 0
	call	_Perl_get_context
LVL438:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL439:
L130:
	.loc 2 1841 0
	call	___stack_chk_fail
LVL440:
	.cfi_endproc
LFE174:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_choice;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_choice:
LFB173:
	.loc 2 1804 0
	.cfi_startproc
LVL441:
	push	ebp
LCFI99:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI100:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI101:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI102:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI103:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1804 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1805 0
	call	_Perl_get_context
LVL442:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL443:
	mov	ebp, DWORD PTR [eax]
LVL444:
	call	_Perl_get_context
LVL445:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL446:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL447:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL448:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL449:
	lea	esi, [ebx+1]
LVL450:
	mov	eax, DWORD PTR [eax]
LVL451:
	lea	eax, [eax+ebx*4]
LVL452:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1806 0
	cmp	edx, 2
	jne	L143
LBB42:
	.loc 2 1809 0
	call	_Perl_get_context
LVL453:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL454:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL455:
	mov	ebp, eax
LVL456:
	.loc 2 1811 0
	call	_Perl_get_context
LVL457:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL458:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L144
	.loc 2 1811 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL459:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL460:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL461:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL462:
	mov	DWORD PTR [esp+28], eax
L134:
LVL463:
	.loc 2 1814 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL464:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL465:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L135
	.loc 2 1814 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL466:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL467:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL468:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL469:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
L136:
LVL470:
	.loc 2 1816 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebp
	call	_purple_request_fields_get_choice
LVL471:
	mov	ebp, eax
LVL472:
	.loc 2 1817 0 discriminator 3
	call	_Perl_get_context
LVL473:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL474:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL475:
LBB43:
	call	_Perl_get_context
LVL476:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL477:
LBB44:
	test	BYTE PTR [ebx+10], 64
	je	L137
	.loc 2 1817 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL478:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL479:
L137:
	.loc 2 1817 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL480:
LBE44:
LBE43:
LBE42:
LBB45:
	.loc 2 1819 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL481:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL482:
	mov	ebx, eax
LVL483:
	call	_Perl_get_context
LVL484:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL485:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE45:
	.loc 2 1820 0 discriminator 2
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L145
	.loc 2 1820 0 is_stmt 0
	add	esp, 60
LCFI104:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI105:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI106:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL486:
	pop	edi
LCFI107:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI108:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL487:
	ret
LVL488:
	.p2align 2,,3
L144:
LCFI109:
	.cfi_restore_state
LBB46:
	.loc 2 1811 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL489:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL490:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+28], eax
	jmp	L134
LVL491:
	.p2align 2,,3
L135:
	.loc 2 1814 0 discriminator 2
	call	_Perl_get_context
LVL492:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL493:
	mov	ebx, eax
	jmp	L136
LVL494:
L145:
LBE46:
	.loc 2 1820 0
	call	___stack_chk_fail
LVL495:
L143:
	.loc 2 1807 0
	call	_Perl_get_context
LVL496:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL497:
	.cfi_endproc
LFE173:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_bool;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_bool:
LFB172:
	.loc 2 1784 0
	.cfi_startproc
LVL498:
	push	ebp
LCFI110:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI111:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI112:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI113:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI114:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1784 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1785 0
	call	_Perl_get_context
LVL499:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL500:
	mov	ebp, DWORD PTR [eax]
LVL501:
	call	_Perl_get_context
LVL502:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL503:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL504:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL505:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL506:
	lea	esi, [ebx+1]
LVL507:
	mov	eax, DWORD PTR [eax]
LVL508:
	lea	eax, [eax+ebx*4]
LVL509:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1786 0
	cmp	edx, 2
	jne	L154
LBB47:
	.loc 2 1789 0
	call	_Perl_get_context
LVL510:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL511:
	sal	esi, 2
LVL512:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL513:
	mov	edi, eax
LVL514:
	.loc 2 1791 0
	call	_Perl_get_context
LVL515:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL516:
	lea	ebx, [8+ebx*4]
LVL517:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L155
	.loc 2 1791 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL518:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL519:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL520:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL521:
L149:
	.loc 2 1795 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields_get_bool
LVL522:
	mov	edi, eax
LVL523:
	.loc 2 1796 0 discriminator 3
	call	_Perl_get_context
LVL524:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL525:
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	test	edi, edi
	jne	L156
	.loc 2 1796 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL526:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL527:
L151:
	.loc 2 1796 0 discriminator 3
	mov	DWORD PTR [ebx], eax
LVL528:
LBE47:
LBB48:
	.loc 2 1798 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL529:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL530:
	mov	ebx, eax
	call	_Perl_get_context
LVL531:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL532:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE48:
	.loc 2 1799 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L157
	.loc 2 1799 0 is_stmt 0
	add	esp, 44
LCFI115:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI116:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI117:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI118:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL533:
	pop	ebp
LCFI119:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL534:
	ret
LVL535:
	.p2align 2,,3
L155:
LCFI120:
	.cfi_restore_state
LBB49:
	.loc 2 1791 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL536:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL537:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L149
LVL538:
	.p2align 2,,3
L156:
	.loc 2 1796 0 discriminator 1
	call	_Perl_get_context
LVL539:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL540:
	jmp	L151
LVL541:
L157:
LBE49:
	.loc 2 1799 0
	call	___stack_chk_fail
LVL542:
L154:
	.loc 2 1787 0
	call	_Perl_get_context
LVL543:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL544:
	.cfi_endproc
LFE172:
	.section .rdata,"dr"
LC8:
	.ascii "Purple::Account\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_get_account;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_get_account:
LFB171:
	.loc 2 1763 0
	.cfi_startproc
LVL545:
	push	ebp
LCFI121:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI122:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI123:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI124:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI125:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1763 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1764 0
	call	_Perl_get_context
LVL546:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL547:
	mov	ebp, DWORD PTR [eax]
LVL548:
	call	_Perl_get_context
LVL549:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL550:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL551:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL552:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL553:
	lea	ebx, [esi+1]
LVL554:
	mov	eax, DWORD PTR [eax]
LVL555:
	lea	eax, [eax+esi*4]
LVL556:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1765 0
	cmp	edx, 2
	jne	L164
LBB50:
	.loc 2 1768 0
	call	_Perl_get_context
LVL557:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL558:
	sal	ebx, 2
LVL559:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL560:
	mov	edi, eax
LVL561:
	.loc 2 1770 0
	call	_Perl_get_context
LVL562:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL563:
	lea	esi, [8+esi*4]
LVL564:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L165
	.loc 2 1770 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL565:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL566:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL567:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL568:
L161:
	.loc 2 1774 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields_get_account
LVL569:
	mov	edi, eax
LVL570:
	.loc 2 1775 0 discriminator 3
	call	_Perl_get_context
LVL571:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL572:
	mov	esi, DWORD PTR [eax]
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC8
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL573:
	mov	DWORD PTR [esi], eax
	.loc 2 1776 0 discriminator 3
	call	_Perl_get_context
LVL574:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL575:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL576:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL577:
LBE50:
LBB51:
	.loc 2 1778 0 discriminator 3
	call	_Perl_get_context
LVL578:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL579:
	mov	esi, eax
	call	_Perl_get_context
LVL580:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL581:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE51:
	.loc 2 1779 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L166
	.loc 2 1779 0 is_stmt 0
	add	esp, 44
LCFI126:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI127:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI128:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI129:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL582:
	pop	ebp
LCFI130:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL583:
	ret
LVL584:
	.p2align 2,,3
L165:
LCFI131:
	.cfi_restore_state
LBB52:
	.loc 2 1770 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL585:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL586:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	jmp	L161
LVL587:
L164:
LBE52:
	.loc 2 1766 0
	call	_Perl_get_context
LVL588:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL589:
L166:
	.loc 2 1779 0
	call	___stack_chk_fail
LVL590:
	.cfi_endproc
LFE171:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_exists;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_exists:
LFB170:
	.loc 2 1743 0
	.cfi_startproc
LVL591:
	push	ebp
LCFI132:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI133:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI134:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI135:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI136:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1743 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1744 0
	call	_Perl_get_context
LVL592:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL593:
	mov	ebp, DWORD PTR [eax]
LVL594:
	call	_Perl_get_context
LVL595:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL596:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL597:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL598:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL599:
	lea	esi, [ebx+1]
LVL600:
	mov	eax, DWORD PTR [eax]
LVL601:
	lea	eax, [eax+ebx*4]
LVL602:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1745 0
	cmp	edx, 2
	jne	L175
LBB53:
	.loc 2 1748 0
	call	_Perl_get_context
LVL603:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL604:
	sal	esi, 2
LVL605:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL606:
	mov	edi, eax
LVL607:
	.loc 2 1750 0
	call	_Perl_get_context
LVL608:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL609:
	lea	ebx, [8+ebx*4]
LVL610:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L176
	.loc 2 1750 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL611:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL612:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL613:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL614:
L170:
	.loc 2 1754 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields_exists
LVL615:
	mov	edi, eax
LVL616:
	.loc 2 1755 0 discriminator 3
	call	_Perl_get_context
LVL617:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL618:
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	test	edi, edi
	jne	L177
	.loc 2 1755 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL619:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL620:
L172:
	.loc 2 1755 0 discriminator 3
	mov	DWORD PTR [ebx], eax
LVL621:
LBE53:
LBB54:
	.loc 2 1757 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL622:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL623:
	mov	ebx, eax
	call	_Perl_get_context
LVL624:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL625:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE54:
	.loc 2 1758 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L178
	.loc 2 1758 0 is_stmt 0
	add	esp, 44
LCFI137:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI138:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI139:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI140:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL626:
	pop	ebp
LCFI141:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL627:
	ret
LVL628:
	.p2align 2,,3
L176:
LCFI142:
	.cfi_restore_state
LBB55:
	.loc 2 1750 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL629:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL630:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L170
LVL631:
	.p2align 2,,3
L177:
	.loc 2 1755 0 discriminator 1
	call	_Perl_get_context
LVL632:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL633:
	jmp	L172
LVL634:
L178:
LBE55:
	.loc 2 1758 0
	call	___stack_chk_fail
LVL635:
L175:
	.loc 2 1746 0
	call	_Perl_get_context
LVL636:
	mov	edx, OFFSET FLAT:LC4
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL637:
	.cfi_endproc
LFE170:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_destroy;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_destroy:
LFB169:
	.loc 2 1727 0
	.cfi_startproc
LVL638:
	push	ebp
LCFI143:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI144:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI145:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI146:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI147:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+68]
	.loc 2 1727 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1728 0
	call	_Perl_get_context
LVL639:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL640:
	mov	edi, DWORD PTR [eax]
LVL641:
	call	_Perl_get_context
LVL642:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL643:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL644:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL645:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL646:
	lea	ebp, [ebx+1]
LVL647:
	sal	ebx, 2
LVL648:
	mov	eax, DWORD PTR [eax]
LVL649:
	add	eax, ebx
LVL650:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1729 0
	dec	edx
	jne	L183
LBB56:
	.loc 2 1732 0
	call	_Perl_get_context
LVL651:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL652:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL653:
	.loc 2 1735 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_fields_destroy
LVL654:
LBE56:
LBB57:
	.loc 2 1737 0
	call	_Perl_get_context
LVL655:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL656:
	mov	esi, eax
	call	_Perl_get_context
LVL657:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL658:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE57:
	.loc 2 1738 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L184
	add	esp, 44
LCFI148:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI149:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI150:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI151:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL659:
	pop	ebp
LCFI152:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL660:
	ret
LVL661:
L183:
LCFI153:
	.cfi_restore_state
	.loc 2 1730 0
	call	_Perl_get_context
LVL662:
	mov	edx, OFFSET FLAT:LC5
	mov	eax, esi
	call	_S_croak_xs_usage.isra.0
LVL663:
L184:
	.loc 2 1738 0
	call	___stack_chk_fail
LVL664:
	.cfi_endproc
LFE169:
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_all_required_filled;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_all_required_filled:
LFB168:
	.loc 2 1709 0
	.cfi_startproc
LVL665:
	push	ebp
LCFI154:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI155:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI156:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI157:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI158:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1709 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1710 0
	call	_Perl_get_context
LVL666:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL667:
	mov	ebp, DWORD PTR [eax]
LVL668:
	call	_Perl_get_context
LVL669:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL670:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL671:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL672:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL673:
	lea	ebx, [esi+1]
LVL674:
	mov	eax, DWORD PTR [eax]
LVL675:
	lea	eax, [eax+esi*4]
LVL676:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1711 0
	dec	edx
	jne	L191
LBB58:
	.loc 2 1714 0
	call	_Perl_get_context
LVL677:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL678:
	sal	ebx, 2
LVL679:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL680:
	.loc 2 1718 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_fields_all_required_filled
LVL681:
	mov	edi, eax
LVL682:
	.loc 2 1719 0
	call	_Perl_get_context
LVL683:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL684:
	mov	esi, DWORD PTR [eax]
LVL685:
	add	esi, ebx
	test	edi, edi
	jne	L192
	.loc 2 1719 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL686:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL687:
L188:
	.loc 2 1719 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL688:
LBE58:
LBB59:
	.loc 2 1721 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL689:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL690:
	mov	esi, eax
	call	_Perl_get_context
LVL691:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL692:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE59:
	.loc 2 1722 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L193
	.loc 2 1722 0 is_stmt 0
	add	esp, 44
LCFI159:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI160:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI161:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI162:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL693:
	pop	ebp
LCFI163:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL694:
	ret
LVL695:
	.p2align 2,,3
L192:
LCFI164:
	.cfi_restore_state
LBB60:
	.loc 2 1719 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL696:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL697:
	jmp	L188
LVL698:
L191:
LBE60:
	.loc 2 1712 0
	call	_Perl_get_context
LVL699:
	mov	edx, OFFSET FLAT:LC5
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL700:
L193:
	.loc 2 1722 0
	call	___stack_chk_fail
LVL701:
	.cfi_endproc
LFE168:
	.section .rdata,"dr"
LC9:
	.ascii "fields, group\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_add_group;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_add_group:
LFB167:
	.loc 2 1691 0
	.cfi_startproc
LVL702:
	push	ebp
LCFI165:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI166:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI167:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI168:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI169:
	.cfi_def_cfa_offset 80
	mov	eax, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+28], eax
	.loc 2 1691 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1692 0
	call	_Perl_get_context
LVL703:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL704:
	mov	edi, DWORD PTR [eax]
LVL705:
	call	_Perl_get_context
LVL706:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL707:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL708:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL709:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL710:
	lea	esi, [ebx+1]
LVL711:
	lea	ebp, [0+ebx*4]
	mov	eax, DWORD PTR [eax]
LVL712:
	add	eax, ebp
LVL713:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1693 0
	cmp	edx, 2
	jne	L198
LBB61:
	.loc 2 1696 0
	call	_Perl_get_context
LVL714:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL715:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL716:
	mov	esi, eax
LVL717:
	.loc 2 1698 0
	call	_Perl_get_context
LVL718:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL719:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL720:
	.loc 2 1701 0
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_request_fields_add_group
LVL721:
LBE61:
LBB62:
	.loc 2 1703 0
	call	_Perl_get_context
LVL722:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL723:
	mov	ebx, eax
LVL724:
	call	_Perl_get_context
LVL725:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL726:
	add	ebp, DWORD PTR [eax]
	mov	DWORD PTR [ebx], ebp
LBE62:
	.loc 2 1704 0
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L199
	add	esp, 60
LCFI170:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI171:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI172:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL727:
	pop	edi
LCFI173:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL728:
	pop	ebp
LCFI174:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL729:
L198:
LCFI175:
	.cfi_restore_state
	.loc 2 1694 0
	call	_Perl_get_context
LVL730:
	mov	edx, OFFSET FLAT:LC9
	mov	eax, DWORD PTR [esp+28]
	call	_S_croak_xs_usage.isra.0
LVL731:
L199:
	.loc 2 1704 0
	call	___stack_chk_fail
LVL732:
	.cfi_endproc
LFE167:
	.section .rdata,"dr"
LC10:
	.ascii "class\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Fields_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Fields_new:
LFB166:
	.loc 2 1674 0
	.cfi_startproc
LVL733:
	push	ebp
LCFI176:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI177:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI178:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI179:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI180:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1674 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1675 0
	call	_Perl_get_context
LVL734:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL735:
	mov	ebp, DWORD PTR [eax]
LVL736:
	call	_Perl_get_context
LVL737:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL738:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL739:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL740:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL741:
	lea	ebx, [esi+1]
LVL742:
	mov	eax, DWORD PTR [eax]
LVL743:
	lea	eax, [eax+esi*4]
LVL744:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1676 0
	dec	edx
	jne	L204
LBB63:
	.loc 2 1681 0
	call	_purple_request_fields_new
LVL745:
	mov	edi, eax
LVL746:
	.loc 2 1682 0
	call	_Perl_get_context
LVL747:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL748:
	sal	ebx, 2
LVL749:
	mov	esi, DWORD PTR [eax]
LVL750:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL751:
	mov	DWORD PTR [esi], eax
	.loc 2 1683 0
	call	_Perl_get_context
LVL752:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL753:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL754:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL755:
LBE63:
LBB64:
	.loc 2 1685 0
	call	_Perl_get_context
LVL756:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL757:
	mov	esi, eax
	call	_Perl_get_context
LVL758:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL759:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE64:
	.loc 2 1686 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L205
	add	esp, 44
LCFI181:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI182:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI183:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI184:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL760:
	pop	ebp
LCFI185:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL761:
	ret
LVL762:
L204:
LCFI186:
	.cfi_restore_state
	.loc 2 1677 0
	call	_Perl_get_context
LVL763:
	mov	edx, OFFSET FLAT:LC10
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL764:
L205:
	.loc 2 1686 0
	call	___stack_chk_fail
LVL765:
	.cfi_endproc
LFE166:
	.section .rdata,"dr"
LC11:
	.ascii "field\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_is_visible;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_is_visible:
LFB165:
	.loc 2 1656 0
	.cfi_startproc
LVL766:
	push	ebp
LCFI187:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI188:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI189:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI190:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI191:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1656 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1657 0
	call	_Perl_get_context
LVL767:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL768:
	mov	ebp, DWORD PTR [eax]
LVL769:
	call	_Perl_get_context
LVL770:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL771:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL772:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL773:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL774:
	lea	ebx, [esi+1]
LVL775:
	mov	eax, DWORD PTR [eax]
LVL776:
	lea	eax, [eax+esi*4]
LVL777:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1658 0
	dec	edx
	jne	L212
LBB65:
	.loc 2 1661 0
	call	_Perl_get_context
LVL778:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL779:
	sal	ebx, 2
LVL780:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL781:
	.loc 2 1665 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_is_visible
LVL782:
	mov	edi, eax
LVL783:
	.loc 2 1666 0
	call	_Perl_get_context
LVL784:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL785:
	mov	esi, DWORD PTR [eax]
LVL786:
	add	esi, ebx
	test	edi, edi
	jne	L213
	.loc 2 1666 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL787:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL788:
L209:
	.loc 2 1666 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL789:
LBE65:
LBB66:
	.loc 2 1668 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL790:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL791:
	mov	esi, eax
	call	_Perl_get_context
LVL792:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL793:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE66:
	.loc 2 1669 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L214
	.loc 2 1669 0 is_stmt 0
	add	esp, 44
LCFI192:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI193:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI194:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI195:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL794:
	pop	ebp
LCFI196:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL795:
	ret
LVL796:
	.p2align 2,,3
L213:
LCFI197:
	.cfi_restore_state
LBB67:
	.loc 2 1666 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL797:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL798:
	jmp	L209
LVL799:
L212:
LBE67:
	.loc 2 1659 0
	call	_Perl_get_context
LVL800:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL801:
L214:
	.loc 2 1669 0
	call	___stack_chk_fail
LVL802:
	.cfi_endproc
LFE165:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_get_type_hint;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_get_type_hint:
LFB164:
	.loc 2 1637 0
	.cfi_startproc
LVL803:
	push	ebp
LCFI198:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI199:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI200:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI201:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI202:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1637 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1638 0
	call	_Perl_get_context
LVL804:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL805:
	mov	ebp, DWORD PTR [eax]
LVL806:
	call	_Perl_get_context
LVL807:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL808:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL809:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL810:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL811:
	lea	esi, [ebx+1]
LVL812:
	mov	eax, DWORD PTR [eax]
LVL813:
	lea	eax, [eax+ebx*4]
LVL814:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1639 0
	dec	edx
	jne	L225
LBB68:
	.loc 2 1642 0
	call	_Perl_get_context
LVL815:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL816:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL817:
	mov	ebp, eax
LVL818:
	.loc 2 1645 0
	call	_Perl_get_context
LVL819:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL820:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L226
	.loc 2 1645 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL821:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL822:
	mov	ebx, eax
L218:
LVL823:
	.loc 2 1647 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_get_type_hint
LVL824:
	mov	ebp, eax
LVL825:
	.loc 2 1648 0 discriminator 3
	call	_Perl_get_context
LVL826:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL827:
	call	_Perl_get_context
LVL828:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL829:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL830:
LBB69:
	test	BYTE PTR [ebx+10], 64
	je	L219
	.loc 2 1648 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL831:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL832:
L219:
	.loc 2 1648 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL833:
LBE69:
LBE68:
LBB70:
	.loc 2 1650 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL834:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL835:
	mov	ebx, eax
LVL836:
	call	_Perl_get_context
LVL837:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL838:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE70:
	.loc 2 1651 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L227
	.loc 2 1651 0 is_stmt 0
	add	esp, 44
LCFI203:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI204:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI205:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL839:
	pop	edi
LCFI206:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI207:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL840:
	ret
LVL841:
	.p2align 2,,3
L226:
LCFI208:
	.cfi_restore_state
LBB71:
	.loc 2 1645 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL842:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL843:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL844:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL845:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L218
LVL846:
L227:
LBE71:
	.loc 2 1651 0
	call	___stack_chk_fail
LVL847:
L225:
	.loc 2 1640 0
	call	_Perl_get_context
LVL848:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL849:
	.cfi_endproc
LFE164:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_get_type;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_get_type:
LFB163:
	.loc 2 1618 0
	.cfi_startproc
LVL850:
	push	ebp
LCFI209:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI210:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI211:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI212:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI213:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1618 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1619 0
	call	_Perl_get_context
LVL851:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL852:
	mov	ebp, DWORD PTR [eax]
LVL853:
	call	_Perl_get_context
LVL854:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL855:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL856:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL857:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL858:
	lea	esi, [ebx+1]
LVL859:
	mov	eax, DWORD PTR [eax]
LVL860:
	lea	eax, [eax+ebx*4]
LVL861:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1620 0
	dec	edx
	jne	L238
LBB72:
	.loc 2 1623 0
	call	_Perl_get_context
LVL862:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL863:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL864:
	mov	ebp, eax
LVL865:
	.loc 2 1626 0
	call	_Perl_get_context
LVL866:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL867:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L239
	.loc 2 1626 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL868:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL869:
	mov	ebx, eax
L231:
LVL870:
	.loc 2 1628 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_get_type
LVL871:
	mov	ebp, eax
LVL872:
	.loc 2 1629 0 discriminator 3
	call	_Perl_get_context
LVL873:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL874:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL875:
LBB73:
	call	_Perl_get_context
LVL876:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL877:
LBB74:
	test	BYTE PTR [ebx+10], 64
	je	L232
	.loc 2 1629 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL878:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL879:
L232:
	.loc 2 1629 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL880:
LBE74:
LBE73:
LBE72:
LBB75:
	.loc 2 1631 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL881:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL882:
	mov	ebx, eax
LVL883:
	call	_Perl_get_context
LVL884:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL885:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE75:
	.loc 2 1632 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L240
	.loc 2 1632 0 is_stmt 0
	add	esp, 44
LCFI214:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI215:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI216:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL886:
	pop	edi
LCFI217:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI218:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL887:
	ret
LVL888:
	.p2align 2,,3
L239:
LCFI219:
	.cfi_restore_state
LBB76:
	.loc 2 1626 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL889:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL890:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL891:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL892:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L231
LVL893:
L240:
LBE76:
	.loc 2 1632 0
	call	___stack_chk_fail
LVL894:
L238:
	.loc 2 1621 0
	call	_Perl_get_context
LVL895:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL896:
	.cfi_endproc
LFE163:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_get_label;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_get_label:
LFB162:
	.loc 2 1599 0
	.cfi_startproc
LVL897:
	push	ebp
LCFI220:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI221:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI222:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI223:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI224:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1599 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1600 0
	call	_Perl_get_context
LVL898:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL899:
	mov	ebp, DWORD PTR [eax]
LVL900:
	call	_Perl_get_context
LVL901:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL902:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL903:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL904:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL905:
	lea	esi, [ebx+1]
LVL906:
	mov	eax, DWORD PTR [eax]
LVL907:
	lea	eax, [eax+ebx*4]
LVL908:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1601 0
	dec	edx
	jne	L251
LBB77:
	.loc 2 1604 0
	call	_Perl_get_context
LVL909:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL910:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL911:
	mov	ebp, eax
LVL912:
	.loc 2 1607 0
	call	_Perl_get_context
LVL913:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL914:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L252
	.loc 2 1607 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL915:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL916:
	mov	ebx, eax
L244:
LVL917:
	.loc 2 1609 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_get_label
LVL918:
	mov	ebp, eax
LVL919:
	.loc 2 1610 0 discriminator 3
	call	_Perl_get_context
LVL920:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL921:
	call	_Perl_get_context
LVL922:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL923:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL924:
LBB78:
	test	BYTE PTR [ebx+10], 64
	je	L245
	.loc 2 1610 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL925:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL926:
L245:
	.loc 2 1610 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL927:
LBE78:
LBE77:
LBB79:
	.loc 2 1612 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL928:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL929:
	mov	ebx, eax
LVL930:
	call	_Perl_get_context
LVL931:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL932:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE79:
	.loc 2 1613 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L253
	.loc 2 1613 0 is_stmt 0
	add	esp, 44
LCFI225:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI226:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI227:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL933:
	pop	edi
LCFI228:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI229:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL934:
	ret
LVL935:
	.p2align 2,,3
L252:
LCFI230:
	.cfi_restore_state
LBB80:
	.loc 2 1607 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL936:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL937:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL938:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL939:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L244
LVL940:
L253:
LBE80:
	.loc 2 1613 0
	call	___stack_chk_fail
LVL941:
L251:
	.loc 2 1602 0
	call	_Perl_get_context
LVL942:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL943:
	.cfi_endproc
LFE162:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_get_id;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_get_id:
LFB161:
	.loc 2 1580 0
	.cfi_startproc
LVL944:
	push	ebp
LCFI231:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI232:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI233:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI234:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI235:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1580 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1581 0
	call	_Perl_get_context
LVL945:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL946:
	mov	ebp, DWORD PTR [eax]
LVL947:
	call	_Perl_get_context
LVL948:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL949:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL950:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL951:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL952:
	lea	esi, [ebx+1]
LVL953:
	mov	eax, DWORD PTR [eax]
LVL954:
	lea	eax, [eax+ebx*4]
LVL955:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1582 0
	dec	edx
	jne	L264
LBB81:
	.loc 2 1585 0
	call	_Perl_get_context
LVL956:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL957:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL958:
	mov	ebp, eax
LVL959:
	.loc 2 1588 0
	call	_Perl_get_context
LVL960:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL961:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L265
	.loc 2 1588 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL962:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL963:
	mov	ebx, eax
L257:
LVL964:
	.loc 2 1590 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_get_id
LVL965:
	mov	ebp, eax
LVL966:
	.loc 2 1591 0 discriminator 3
	call	_Perl_get_context
LVL967:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL968:
	call	_Perl_get_context
LVL969:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL970:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL971:
LBB82:
	test	BYTE PTR [ebx+10], 64
	je	L258
	.loc 2 1591 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL972:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL973:
L258:
	.loc 2 1591 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL974:
LBE82:
LBE81:
LBB83:
	.loc 2 1593 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL975:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL976:
	mov	ebx, eax
LVL977:
	call	_Perl_get_context
LVL978:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL979:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE83:
	.loc 2 1594 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L266
	.loc 2 1594 0 is_stmt 0
	add	esp, 44
LCFI236:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI237:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI238:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL980:
	pop	edi
LCFI239:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI240:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL981:
	ret
LVL982:
	.p2align 2,,3
L265:
LCFI241:
	.cfi_restore_state
LBB84:
	.loc 2 1588 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL983:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL984:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL985:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL986:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L257
LVL987:
L266:
LBE84:
	.loc 2 1594 0
	call	___stack_chk_fail
LVL988:
L264:
	.loc 2 1583 0
	call	_Perl_get_context
LVL989:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL990:
	.cfi_endproc
LFE161:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_destroy;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_destroy:
LFB160:
	.loc 2 1564 0
	.cfi_startproc
LVL991:
	push	ebp
LCFI242:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI243:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI244:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI245:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI246:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+68]
	.loc 2 1564 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1565 0
	call	_Perl_get_context
LVL992:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL993:
	mov	edi, DWORD PTR [eax]
LVL994:
	call	_Perl_get_context
LVL995:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL996:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL997:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL998:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL999:
	lea	ebp, [ebx+1]
LVL1000:
	sal	ebx, 2
LVL1001:
	mov	eax, DWORD PTR [eax]
LVL1002:
	add	eax, ebx
LVL1003:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1566 0
	dec	edx
	jne	L271
LBB85:
	.loc 2 1569 0
	call	_Perl_get_context
LVL1004:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1005:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1006:
	.loc 2 1572 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_destroy
LVL1007:
LBE85:
LBB86:
	.loc 2 1574 0
	call	_Perl_get_context
LVL1008:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1009:
	mov	esi, eax
	call	_Perl_get_context
LVL1010:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1011:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE86:
	.loc 2 1575 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L272
	add	esp, 44
LCFI247:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI248:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI249:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI250:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1012:
	pop	ebp
LCFI251:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1013:
	ret
LVL1014:
L271:
LCFI252:
	.cfi_restore_state
	.loc 2 1567 0
	call	_Perl_get_context
LVL1015:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, esi
	call	_S_croak_xs_usage.isra.0
LVL1016:
L272:
	.loc 2 1575 0
	call	___stack_chk_fail
LVL1017:
	.cfi_endproc
LFE160:
	.section .rdata,"dr"
LC12:
	.ascii "class, title\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field__Group_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field__Group_new:
LFB159:
	.loc 2 1545 0
	.cfi_startproc
LVL1018:
	push	ebp
LCFI253:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI254:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI255:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI256:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI257:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1545 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1546 0
	call	_Perl_get_context
LVL1019:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1020:
	mov	ebp, DWORD PTR [eax]
LVL1021:
	call	_Perl_get_context
LVL1022:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1023:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1024:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1025:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1026:
	lea	esi, [ebx+1]
LVL1027:
	mov	eax, DWORD PTR [eax]
LVL1028:
	lea	eax, [eax+ebx*4]
LVL1029:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1547 0
	cmp	edx, 2
	jne	L279
LBB87:
	.loc 2 1550 0
	call	_Perl_get_context
LVL1030:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1031:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L280
	.loc 2 1550 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1032:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1033:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1034:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1035:
L276:
	.loc 2 1554 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_group_new
LVL1036:
	mov	edi, eax
LVL1037:
	.loc 2 1555 0 discriminator 3
	call	_Perl_get_context
LVL1038:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1039:
	lea	ebx, [0+esi*4]
	mov	esi, DWORD PTR [eax]
LVL1040:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC7
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL1041:
	mov	DWORD PTR [esi], eax
	.loc 2 1556 0 discriminator 3
	call	_Perl_get_context
LVL1042:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1043:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1044:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL1045:
LBE87:
LBB88:
	.loc 2 1558 0 discriminator 3
	call	_Perl_get_context
LVL1046:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1047:
	mov	esi, eax
	call	_Perl_get_context
LVL1048:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1049:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE88:
	.loc 2 1559 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L281
	.loc 2 1559 0 is_stmt 0
	add	esp, 44
LCFI258:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI259:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI260:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI261:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1050:
	pop	ebp
LCFI262:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1051:
	ret
LVL1052:
	.p2align 2,,3
L280:
LCFI263:
	.cfi_restore_state
LBB89:
	.loc 2 1550 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1053:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1054:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L276
L279:
LBE89:
	.loc 2 1548 0
	call	_Perl_get_context
LVL1055:
	mov	edx, OFFSET FLAT:LC12
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1056:
L281:
	.loc 2 1559 0
	call	___stack_chk_fail
LVL1057:
	.cfi_endproc
LFE159:
	.section .rdata,"dr"
LC13:
	.ascii "group\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field__Group_get_title;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field__Group_get_title:
LFB158:
	.loc 2 1526 0
	.cfi_startproc
LVL1058:
	push	ebp
LCFI264:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI265:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI266:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI267:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI268:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1526 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1527 0
	call	_Perl_get_context
LVL1059:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1060:
	mov	ebp, DWORD PTR [eax]
LVL1061:
	call	_Perl_get_context
LVL1062:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1063:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1064:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1065:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1066:
	lea	esi, [ebx+1]
LVL1067:
	mov	eax, DWORD PTR [eax]
LVL1068:
	lea	eax, [eax+ebx*4]
LVL1069:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1528 0
	dec	edx
	jne	L292
LBB90:
	.loc 2 1531 0
	call	_Perl_get_context
LVL1070:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1071:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1072:
	mov	ebp, eax
LVL1073:
	.loc 2 1534 0
	call	_Perl_get_context
LVL1074:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1075:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L293
	.loc 2 1534 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1076:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL1077:
	mov	ebx, eax
L285:
LVL1078:
	.loc 2 1536 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_group_get_title
LVL1079:
	mov	ebp, eax
LVL1080:
	.loc 2 1537 0 discriminator 3
	call	_Perl_get_context
LVL1081:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL1082:
	call	_Perl_get_context
LVL1083:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1084:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL1085:
LBB91:
	test	BYTE PTR [ebx+10], 64
	je	L286
	.loc 2 1537 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1086:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL1087:
L286:
	.loc 2 1537 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL1088:
LBE91:
LBE90:
LBB92:
	.loc 2 1539 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL1089:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1090:
	mov	ebx, eax
LVL1091:
	call	_Perl_get_context
LVL1092:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1093:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE92:
	.loc 2 1540 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L294
	.loc 2 1540 0 is_stmt 0
	add	esp, 44
LCFI269:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI270:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI271:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1094:
	pop	edi
LCFI272:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI273:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1095:
	ret
LVL1096:
	.p2align 2,,3
L293:
LCFI274:
	.cfi_restore_state
LBB93:
	.loc 2 1534 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1097:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL1098:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL1099:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1100:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L285
LVL1101:
L294:
LBE93:
	.loc 2 1540 0
	call	___stack_chk_fail
LVL1102:
L292:
	.loc 2 1529 0
	call	_Perl_get_context
LVL1103:
	mov	edx, OFFSET FLAT:LC13
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1104:
	.cfi_endproc
LFE158:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field__Group_get_fields;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field__Group_get_fields:
LFB157:
	.loc 2 1501 0
	.cfi_startproc
LVL1105:
	push	ebp
LCFI275:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI276:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI277:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI278:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI279:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1501 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1502 0
	call	_Perl_get_context
LVL1106:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1107:
	mov	esi, DWORD PTR [eax]
LVL1108:
	call	_Perl_get_context
LVL1109:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1110:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1111:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1112:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1113:
	lea	ebp, [ebx+1]
LVL1114:
	mov	eax, DWORD PTR [eax]
LVL1115:
	lea	eax, [eax+ebx*4]
LVL1116:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1503 0
	dec	edx
	jne	L308
	.loc 2 1506 0
	sub	esi, 4
LVL1117:
LBB94:
	.loc 2 1508 0
	call	_Perl_get_context
LVL1118:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1119:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1120:
	.loc 1 536 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_group_get_fields
LVL1121:
	mov	ebx, eax
LVL1122:
	test	eax, eax
	jne	L304
	jmp	L297
LVL1123:
	.p2align 2,,3
L301:
LBB95:
	.loc 1 537 0
	mov	edi, esi
LVL1124:
L298:
	.loc 1 537 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL1125:
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	eax, DWORD PTR [ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_bless_object
LVL1126:
	mov	ebp, eax
	call	_Perl_get_context
LVL1127:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL1128:
	mov	DWORD PTR [edi+4], eax
LBE95:
	.loc 1 536 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL1129:
	test	ebx, ebx
	je	L297
L304:
LBB96:
	.loc 1 537 0
	call	_Perl_get_context
LVL1130:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL1131:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L301
	.loc 1 537 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1132:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL1133:
	mov	edi, eax
LVL1134:
	jmp	L298
LVL1135:
	.p2align 2,,3
L297:
LBE96:
	.loc 2 1518 0 is_stmt 1
	call	_Perl_get_context
LVL1136:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1137:
	mov	DWORD PTR [eax], esi
LBE94:
	.loc 2 1521 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L309
	add	esp, 44
LCFI280:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI281:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL1138:
	pop	esi
LCFI282:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1139:
	pop	edi
LCFI283:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI284:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL1140:
L308:
LCFI285:
	.cfi_restore_state
	.loc 2 1504 0
	call	_Perl_get_context
LVL1141:
	mov	edx, OFFSET FLAT:LC13
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1142:
L309:
	.loc 2 1521 0
	call	___stack_chk_fail
LVL1143:
	.cfi_endproc
LFE157:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field__Group_destroy;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field__Group_destroy:
LFB156:
	.loc 2 1485 0
	.cfi_startproc
LVL1144:
	push	ebp
LCFI286:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI287:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI288:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI289:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI290:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+68]
	.loc 2 1485 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1486 0
	call	_Perl_get_context
LVL1145:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1146:
	mov	edi, DWORD PTR [eax]
LVL1147:
	call	_Perl_get_context
LVL1148:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1149:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL1150:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL1151:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1152:
	lea	ebp, [ebx+1]
LVL1153:
	sal	ebx, 2
LVL1154:
	mov	eax, DWORD PTR [eax]
LVL1155:
	add	eax, ebx
LVL1156:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1487 0
	dec	edx
	jne	L314
LBB97:
	.loc 2 1490 0
	call	_Perl_get_context
LVL1157:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1158:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1159:
	.loc 2 1493 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_group_destroy
LVL1160:
LBE97:
LBB98:
	.loc 2 1495 0
	call	_Perl_get_context
LVL1161:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1162:
	mov	esi, eax
	call	_Perl_get_context
LVL1163:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1164:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE98:
	.loc 2 1496 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L315
	add	esp, 44
LCFI291:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI292:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI293:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI294:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1165:
	pop	ebp
LCFI295:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1166:
	ret
LVL1167:
L314:
LCFI296:
	.cfi_restore_state
	.loc 2 1488 0
	call	_Perl_get_context
LVL1168:
	mov	edx, OFFSET FLAT:LC13
	mov	eax, esi
	call	_S_croak_xs_usage.isra.0
LVL1169:
L315:
	.loc 2 1496 0
	call	___stack_chk_fail
LVL1170:
	.cfi_endproc
LFE156:
	.section .rdata,"dr"
LC14:
	.ascii "group, field\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field__Group_add_field;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field__Group_add_field:
LFB155:
	.loc 2 1467 0
	.cfi_startproc
LVL1171:
	push	ebp
LCFI297:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI298:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI299:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI300:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI301:
	.cfi_def_cfa_offset 80
	mov	eax, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+28], eax
	.loc 2 1467 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1468 0
	call	_Perl_get_context
LVL1172:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1173:
	mov	edi, DWORD PTR [eax]
LVL1174:
	call	_Perl_get_context
LVL1175:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1176:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL1177:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL1178:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1179:
	lea	esi, [ebx+1]
LVL1180:
	lea	ebp, [0+ebx*4]
	mov	eax, DWORD PTR [eax]
LVL1181:
	add	eax, ebp
LVL1182:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1469 0
	cmp	edx, 2
	jne	L320
LBB99:
	.loc 2 1472 0
	call	_Perl_get_context
LVL1183:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1184:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1185:
	mov	esi, eax
LVL1186:
	.loc 2 1474 0
	call	_Perl_get_context
LVL1187:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1188:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1189:
	.loc 2 1477 0
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_request_field_group_add_field
LVL1190:
LBE99:
LBB100:
	.loc 2 1479 0
	call	_Perl_get_context
LVL1191:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1192:
	mov	ebx, eax
LVL1193:
	call	_Perl_get_context
LVL1194:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1195:
	add	ebp, DWORD PTR [eax]
	mov	DWORD PTR [ebx], ebp
LBE100:
	.loc 2 1480 0
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L321
	add	esp, 60
LCFI302:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI303:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI304:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1196:
	pop	edi
LCFI305:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1197:
	pop	ebp
LCFI306:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL1198:
L320:
LCFI307:
	.cfi_restore_state
	.loc 2 1470 0
	call	_Perl_get_context
LVL1199:
	mov	edx, OFFSET FLAT:LC14
	mov	eax, DWORD PTR [esp+28]
	call	_S_croak_xs_usage.isra.0
LVL1200:
L321:
	.loc 2 1480 0
	call	___stack_chk_fail
LVL1201:
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC15:
	.ascii "field, value\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_set_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_set_value:
LFB154:
	.loc 2 1449 0
	.cfi_startproc
LVL1202:
	push	ebp
LCFI308:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI309:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI310:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI311:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI312:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1449 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1450 0
	call	_Perl_get_context
LVL1203:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1204:
	mov	ebp, DWORD PTR [eax]
LVL1205:
	call	_Perl_get_context
LVL1206:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1207:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1208:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1209:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1210:
	lea	esi, [ebx+1]
LVL1211:
	mov	eax, DWORD PTR [eax]
LVL1212:
	lea	eax, [eax+ebx*4]
LVL1213:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1451 0
	cmp	edx, 2
	jne	L328
LBB101:
	.loc 2 1454 0
	call	_Perl_get_context
LVL1214:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1215:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1216:
	mov	edi, eax
LVL1217:
	.loc 2 1456 0
	call	_Perl_get_context
LVL1218:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1219:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L329
	.loc 2 1456 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1220:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1221:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1222:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1223:
L325:
	.loc 2 1459 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_string_set_value
LVL1224:
LBE101:
LBB102:
	.loc 2 1461 0 discriminator 3
	call	_Perl_get_context
LVL1225:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1226:
	mov	ebx, eax
	call	_Perl_get_context
LVL1227:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1228:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE102:
	.loc 2 1462 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L330
	.loc 2 1462 0 is_stmt 0
	add	esp, 44
LCFI313:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI314:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI315:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1229:
	pop	edi
LCFI316:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1230:
	pop	ebp
LCFI317:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1231:
	ret
LVL1232:
	.p2align 2,,3
L329:
LCFI318:
	.cfi_restore_state
LBB103:
	.loc 2 1456 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1233:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1234:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L325
LVL1235:
L328:
LBE103:
	.loc 2 1452 0
	call	_Perl_get_context
LVL1236:
	mov	edx, OFFSET FLAT:LC15
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1237:
L330:
	.loc 2 1462 0
	call	___stack_chk_fail
LVL1238:
	.cfi_endproc
LFE154:
	.section .rdata,"dr"
LC16:
	.ascii "field, masked\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_set_masked;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_set_masked:
LFB153:
	.loc 2 1431 0
	.cfi_startproc
LVL1239:
	push	ebp
LCFI319:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI320:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI321:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI322:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI323:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1431 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1432 0
	call	_Perl_get_context
LVL1240:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1241:
	mov	ebp, DWORD PTR [eax]
LVL1242:
	call	_Perl_get_context
LVL1243:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1244:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1245:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1246:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1247:
	lea	esi, [ebx+1]
LVL1248:
	mov	eax, DWORD PTR [eax]
LVL1249:
	lea	eax, [eax+ebx*4]
LVL1250:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1433 0
	cmp	edx, 2
	jne	L349
LBB104:
	.loc 2 1436 0
	call	_Perl_get_context
LVL1251:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1252:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1253:
	mov	edi, eax
LVL1254:
	.loc 2 1438 0
	call	_Perl_get_context
LVL1255:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1256:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+ebx]
	test	edx, edx
	je	L340
	.loc 2 1438 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1257:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1258:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L334
LBB105:
	.loc 2 1438 0 discriminator 3
	call	_Perl_get_context
LVL1259:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1260:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL1261:
	test	eax, eax
	je	L340
	.loc 2 1438 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1262:
	cmp	eax, 1
	jbe	L350
L336:
LBE105:
	.loc 2 1438 0
	mov	eax, 1
L333:
LVL1263:
	.loc 2 1441 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_string_set_masked
LVL1264:
LBE104:
LBB108:
	.loc 2 1443 0 discriminator 15
	call	_Perl_get_context
LVL1265:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1266:
	mov	ebx, eax
	call	_Perl_get_context
LVL1267:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1268:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE108:
	.loc 2 1444 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L351
	.loc 2 1444 0 is_stmt 0
	add	esp, 44
LCFI324:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI325:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI326:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1269:
	pop	edi
LCFI327:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1270:
	pop	ebp
LCFI328:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1271:
	ret
LVL1272:
	.p2align 2,,3
L334:
LCFI329:
	.cfi_restore_state
LBB109:
	.loc 2 1438 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL1273:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1274:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L352
	.loc 2 1438 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1275:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1276:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L338
	.loc 2 1438 0 discriminator 10
	call	_Perl_get_context
LVL1277:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1278:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L333
	.p2align 2,,3
L350:
LBB106:
	.loc 2 1438 0 discriminator 4
	test	eax, eax
	jne	L353
	.p2align 2,,3
L340:
LBE106:
	.loc 2 1438 0
	xor	eax, eax
	jmp	L333
	.p2align 2,,3
L352:
	.loc 2 1438 0 discriminator 8
	call	_Perl_get_context
LVL1279:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1280:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L333
	.p2align 2,,3
L338:
	.loc 2 1438 0 discriminator 11
	call	_Perl_get_context
LVL1281:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1282:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1283:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1284:
	movsx	eax, al
	jmp	L333
	.p2align 2,,3
L353:
LBB107:
	.loc 2 1438 0 discriminator 1
	call	_Perl_get_context
LVL1285:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1286:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L336
LBE107:
	.loc 2 1438 0
	xor	eax, eax
	jmp	L333
LVL1287:
L351:
LBE109:
	.loc 2 1444 0 is_stmt 1
	call	___stack_chk_fail
LVL1288:
L349:
	.loc 2 1434 0
	call	_Perl_get_context
LVL1289:
	mov	edx, OFFSET FLAT:LC16
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1290:
	.cfi_endproc
LFE153:
	.section .rdata,"dr"
LC19:
	.ascii "field, editable\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_set_editable;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_set_editable:
LFB152:
	.loc 2 1413 0
	.cfi_startproc
LVL1291:
	push	ebp
LCFI330:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI331:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI332:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI333:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI334:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1413 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1414 0
	call	_Perl_get_context
LVL1292:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1293:
	mov	ebp, DWORD PTR [eax]
LVL1294:
	call	_Perl_get_context
LVL1295:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1296:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1297:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1298:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1299:
	lea	esi, [ebx+1]
LVL1300:
	mov	eax, DWORD PTR [eax]
LVL1301:
	lea	eax, [eax+ebx*4]
LVL1302:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1415 0
	cmp	edx, 2
	jne	L372
LBB110:
	.loc 2 1418 0
	call	_Perl_get_context
LVL1303:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1304:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1305:
	mov	edi, eax
LVL1306:
	.loc 2 1420 0
	call	_Perl_get_context
LVL1307:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1308:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+ebx]
LVL1309:
	test	ebp, ebp
	je	L363
	.loc 2 1420 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1310:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1311:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L357
LBB111:
	.loc 2 1420 0 discriminator 3
	call	_Perl_get_context
LVL1312:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1313:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL1314:
	test	eax, eax
	je	L363
	.loc 2 1420 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1315:
	cmp	eax, 1
	jbe	L373
L359:
LBE111:
	.loc 2 1420 0
	mov	eax, 1
L356:
LVL1316:
	.loc 2 1423 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_string_set_editable
LVL1317:
LBE110:
LBB114:
	.loc 2 1425 0 discriminator 15
	call	_Perl_get_context
LVL1318:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1319:
	mov	ebx, eax
	call	_Perl_get_context
LVL1320:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1321:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE114:
	.loc 2 1426 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L374
	.loc 2 1426 0 is_stmt 0
	add	esp, 44
LCFI335:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI336:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI337:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1322:
	pop	edi
LCFI338:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1323:
	pop	ebp
LCFI339:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL1324:
	.p2align 2,,3
L357:
LCFI340:
	.cfi_restore_state
LBB115:
	.loc 2 1420 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL1325:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1326:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L375
	.loc 2 1420 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1327:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1328:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L361
	.loc 2 1420 0 discriminator 10
	call	_Perl_get_context
LVL1329:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1330:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L356
	.p2align 2,,3
L373:
LBB112:
	.loc 2 1420 0 discriminator 4
	test	eax, eax
	jne	L376
	.p2align 2,,3
L363:
LBE112:
	.loc 2 1420 0
	xor	eax, eax
	jmp	L356
	.p2align 2,,3
L375:
	.loc 2 1420 0 discriminator 8
	call	_Perl_get_context
LVL1331:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1332:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+16]
	xor	eax, eax
	test	ecx, ecx
	setne	al
	jmp	L356
	.p2align 2,,3
L361:
	.loc 2 1420 0 discriminator 11
	call	_Perl_get_context
LVL1333:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1334:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1335:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1336:
	movsx	eax, al
	jmp	L356
	.p2align 2,,3
L376:
LBB113:
	.loc 2 1420 0 discriminator 1
	call	_Perl_get_context
LVL1337:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1338:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L359
LBE113:
	.loc 2 1420 0
	xor	eax, eax
	jmp	L356
LVL1339:
L374:
LBE115:
	.loc 2 1426 0 is_stmt 1
	call	___stack_chk_fail
LVL1340:
L372:
	.loc 2 1416 0
	call	_Perl_get_context
LVL1341:
	mov	edx, OFFSET FLAT:LC19
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1342:
	.cfi_endproc
LFE152:
	.section .rdata,"dr"
LC20:
	.ascii "field, default_value\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_set_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_set_default_value:
LFB151:
	.loc 2 1395 0
	.cfi_startproc
LVL1343:
	push	ebp
LCFI341:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI342:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI343:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI344:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI345:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1395 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1396 0
	call	_Perl_get_context
LVL1344:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1345:
	mov	ebp, DWORD PTR [eax]
LVL1346:
	call	_Perl_get_context
LVL1347:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1348:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1349:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1350:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1351:
	lea	esi, [ebx+1]
LVL1352:
	mov	eax, DWORD PTR [eax]
LVL1353:
	lea	eax, [eax+ebx*4]
LVL1354:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1397 0
	cmp	edx, 2
	jne	L383
LBB116:
	.loc 2 1400 0
	call	_Perl_get_context
LVL1355:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1356:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1357:
	mov	edi, eax
LVL1358:
	.loc 2 1402 0
	call	_Perl_get_context
LVL1359:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1360:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L384
	.loc 2 1402 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1361:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1362:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1363:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1364:
L380:
	.loc 2 1405 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_string_set_default_value
LVL1365:
LBE116:
LBB117:
	.loc 2 1407 0 discriminator 3
	call	_Perl_get_context
LVL1366:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1367:
	mov	ebx, eax
	call	_Perl_get_context
LVL1368:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1369:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE117:
	.loc 2 1408 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L385
	.loc 2 1408 0 is_stmt 0
	add	esp, 44
LCFI346:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI347:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI348:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1370:
	pop	edi
LCFI349:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1371:
	pop	ebp
LCFI350:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1372:
	ret
LVL1373:
	.p2align 2,,3
L384:
LCFI351:
	.cfi_restore_state
LBB118:
	.loc 2 1402 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1374:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1375:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L380
LVL1376:
L383:
LBE118:
	.loc 2 1398 0
	call	_Perl_get_context
LVL1377:
	mov	edx, OFFSET FLAT:LC20
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1378:
L385:
	.loc 2 1408 0
	call	___stack_chk_fail
LVL1379:
	.cfi_endproc
LFE151:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_is_multiline;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_is_multiline:
LFB150:
	.loc 2 1377 0
	.cfi_startproc
LVL1380:
	push	ebp
LCFI352:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI353:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI354:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI355:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI356:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1377 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1378 0
	call	_Perl_get_context
LVL1381:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1382:
	mov	ebp, DWORD PTR [eax]
LVL1383:
	call	_Perl_get_context
LVL1384:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1385:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL1386:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1387:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1388:
	lea	ebx, [esi+1]
LVL1389:
	mov	eax, DWORD PTR [eax]
LVL1390:
	lea	eax, [eax+esi*4]
LVL1391:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1379 0
	dec	edx
	jne	L392
LBB119:
	.loc 2 1382 0
	call	_Perl_get_context
LVL1392:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1393:
	sal	ebx, 2
LVL1394:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1395:
	.loc 2 1386 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_string_is_multiline
LVL1396:
	mov	edi, eax
LVL1397:
	.loc 2 1387 0
	call	_Perl_get_context
LVL1398:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1399:
	mov	esi, DWORD PTR [eax]
LVL1400:
	add	esi, ebx
	test	edi, edi
	jne	L393
	.loc 2 1387 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1401:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL1402:
L389:
	.loc 2 1387 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL1403:
LBE119:
LBB120:
	.loc 2 1389 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1404:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1405:
	mov	esi, eax
	call	_Perl_get_context
LVL1406:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1407:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE120:
	.loc 2 1390 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L394
	.loc 2 1390 0 is_stmt 0
	add	esp, 44
LCFI357:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI358:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI359:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI360:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1408:
	pop	ebp
LCFI361:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1409:
	ret
LVL1410:
	.p2align 2,,3
L393:
LCFI362:
	.cfi_restore_state
LBB121:
	.loc 2 1387 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1411:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL1412:
	jmp	L389
LVL1413:
L392:
LBE121:
	.loc 2 1380 0
	call	_Perl_get_context
LVL1414:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1415:
L394:
	.loc 2 1390 0
	call	___stack_chk_fail
LVL1416:
	.cfi_endproc
LFE150:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_is_masked;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_is_masked:
LFB149:
	.loc 2 1359 0
	.cfi_startproc
LVL1417:
	push	ebp
LCFI363:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI364:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI365:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI366:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI367:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1359 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1360 0
	call	_Perl_get_context
LVL1418:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1419:
	mov	ebp, DWORD PTR [eax]
LVL1420:
	call	_Perl_get_context
LVL1421:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1422:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL1423:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1424:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1425:
	lea	ebx, [esi+1]
LVL1426:
	mov	eax, DWORD PTR [eax]
LVL1427:
	lea	eax, [eax+esi*4]
LVL1428:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1361 0
	dec	edx
	jne	L401
LBB122:
	.loc 2 1364 0
	call	_Perl_get_context
LVL1429:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1430:
	sal	ebx, 2
LVL1431:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1432:
	.loc 2 1368 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_string_is_masked
LVL1433:
	mov	edi, eax
LVL1434:
	.loc 2 1369 0
	call	_Perl_get_context
LVL1435:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1436:
	mov	esi, DWORD PTR [eax]
LVL1437:
	add	esi, ebx
	test	edi, edi
	jne	L402
	.loc 2 1369 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1438:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL1439:
L398:
	.loc 2 1369 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL1440:
LBE122:
LBB123:
	.loc 2 1371 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1441:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1442:
	mov	esi, eax
	call	_Perl_get_context
LVL1443:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1444:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE123:
	.loc 2 1372 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L403
	.loc 2 1372 0 is_stmt 0
	add	esp, 44
LCFI368:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI369:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI370:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI371:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1445:
	pop	ebp
LCFI372:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1446:
	ret
LVL1447:
	.p2align 2,,3
L402:
LCFI373:
	.cfi_restore_state
LBB124:
	.loc 2 1369 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1448:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL1449:
	jmp	L398
LVL1450:
L401:
LBE124:
	.loc 2 1362 0
	call	_Perl_get_context
LVL1451:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1452:
L403:
	.loc 2 1372 0
	call	___stack_chk_fail
LVL1453:
	.cfi_endproc
LFE149:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_is_editable;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_is_editable:
LFB148:
	.loc 2 1341 0
	.cfi_startproc
LVL1454:
	push	ebp
LCFI374:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI375:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI376:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI377:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI378:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1341 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1342 0
	call	_Perl_get_context
LVL1455:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1456:
	mov	ebp, DWORD PTR [eax]
LVL1457:
	call	_Perl_get_context
LVL1458:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1459:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL1460:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1461:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1462:
	lea	ebx, [esi+1]
LVL1463:
	mov	eax, DWORD PTR [eax]
LVL1464:
	lea	eax, [eax+esi*4]
LVL1465:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1343 0
	dec	edx
	jne	L410
LBB125:
	.loc 2 1346 0
	call	_Perl_get_context
LVL1466:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1467:
	sal	ebx, 2
LVL1468:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1469:
	.loc 2 1350 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_string_is_editable
LVL1470:
	mov	edi, eax
LVL1471:
	.loc 2 1351 0
	call	_Perl_get_context
LVL1472:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1473:
	mov	esi, DWORD PTR [eax]
LVL1474:
	add	esi, ebx
	test	edi, edi
	jne	L411
	.loc 2 1351 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1475:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL1476:
L407:
	.loc 2 1351 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL1477:
LBE125:
LBB126:
	.loc 2 1353 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1478:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1479:
	mov	esi, eax
	call	_Perl_get_context
LVL1480:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1481:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE126:
	.loc 2 1354 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L412
	.loc 2 1354 0 is_stmt 0
	add	esp, 44
LCFI379:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI380:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI381:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI382:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1482:
	pop	ebp
LCFI383:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1483:
	ret
LVL1484:
	.p2align 2,,3
L411:
LCFI384:
	.cfi_restore_state
LBB127:
	.loc 2 1351 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1485:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL1486:
	jmp	L407
LVL1487:
L410:
LBE127:
	.loc 2 1344 0
	call	_Perl_get_context
LVL1488:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1489:
L412:
	.loc 2 1354 0
	call	___stack_chk_fail
LVL1490:
	.cfi_endproc
LFE148:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_get_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_get_value:
LFB147:
	.loc 2 1322 0
	.cfi_startproc
LVL1491:
	push	ebp
LCFI385:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI386:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI387:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI388:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI389:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1322 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1323 0
	call	_Perl_get_context
LVL1492:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1493:
	mov	ebp, DWORD PTR [eax]
LVL1494:
	call	_Perl_get_context
LVL1495:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1496:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1497:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1498:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1499:
	lea	esi, [ebx+1]
LVL1500:
	mov	eax, DWORD PTR [eax]
LVL1501:
	lea	eax, [eax+ebx*4]
LVL1502:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1324 0
	dec	edx
	jne	L423
LBB128:
	.loc 2 1327 0
	call	_Perl_get_context
LVL1503:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1504:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1505:
	mov	ebp, eax
LVL1506:
	.loc 2 1330 0
	call	_Perl_get_context
LVL1507:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1508:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L424
	.loc 2 1330 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1509:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL1510:
	mov	ebx, eax
L416:
LVL1511:
	.loc 2 1332 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_string_get_value
LVL1512:
	mov	ebp, eax
LVL1513:
	.loc 2 1333 0 discriminator 3
	call	_Perl_get_context
LVL1514:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL1515:
	call	_Perl_get_context
LVL1516:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1517:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL1518:
LBB129:
	test	BYTE PTR [ebx+10], 64
	je	L417
	.loc 2 1333 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1519:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL1520:
L417:
	.loc 2 1333 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL1521:
LBE129:
LBE128:
LBB130:
	.loc 2 1335 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL1522:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1523:
	mov	ebx, eax
LVL1524:
	call	_Perl_get_context
LVL1525:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1526:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE130:
	.loc 2 1336 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L425
	.loc 2 1336 0 is_stmt 0
	add	esp, 44
LCFI390:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI391:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI392:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1527:
	pop	edi
LCFI393:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI394:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1528:
	ret
LVL1529:
	.p2align 2,,3
L424:
LCFI395:
	.cfi_restore_state
LBB131:
	.loc 2 1330 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1530:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL1531:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL1532:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1533:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L416
LVL1534:
L425:
LBE131:
	.loc 2 1336 0
	call	___stack_chk_fail
LVL1535:
L423:
	.loc 2 1325 0
	call	_Perl_get_context
LVL1536:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1537:
	.cfi_endproc
LFE147:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_get_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_get_default_value:
LFB146:
	.loc 2 1303 0
	.cfi_startproc
LVL1538:
	push	ebp
LCFI396:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI397:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI398:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI399:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI400:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1303 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1304 0
	call	_Perl_get_context
LVL1539:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1540:
	mov	ebp, DWORD PTR [eax]
LVL1541:
	call	_Perl_get_context
LVL1542:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1543:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1544:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1545:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1546:
	lea	esi, [ebx+1]
LVL1547:
	mov	eax, DWORD PTR [eax]
LVL1548:
	lea	eax, [eax+ebx*4]
LVL1549:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1305 0
	dec	edx
	jne	L436
LBB132:
	.loc 2 1308 0
	call	_Perl_get_context
LVL1550:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1551:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1552:
	mov	ebp, eax
LVL1553:
	.loc 2 1311 0
	call	_Perl_get_context
LVL1554:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1555:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L437
	.loc 2 1311 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1556:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL1557:
	mov	ebx, eax
L429:
LVL1558:
	.loc 2 1313 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_string_get_default_value
LVL1559:
	mov	ebp, eax
LVL1560:
	.loc 2 1314 0 discriminator 3
	call	_Perl_get_context
LVL1561:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setpv
LVL1562:
	call	_Perl_get_context
LVL1563:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1564:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL1565:
LBB133:
	test	BYTE PTR [ebx+10], 64
	je	L430
	.loc 2 1314 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1566:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL1567:
L430:
	.loc 2 1314 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL1568:
LBE133:
LBE132:
LBB134:
	.loc 2 1316 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL1569:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1570:
	mov	ebx, eax
LVL1571:
	call	_Perl_get_context
LVL1572:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1573:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE134:
	.loc 2 1317 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L438
	.loc 2 1317 0 is_stmt 0
	add	esp, 44
LCFI401:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI402:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI403:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1574:
	pop	edi
LCFI404:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI405:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1575:
	ret
LVL1576:
	.p2align 2,,3
L437:
LCFI406:
	.cfi_restore_state
LBB135:
	.loc 2 1311 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1577:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL1578:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL1579:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL1580:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L429
LVL1581:
L438:
LBE135:
	.loc 2 1317 0
	call	___stack_chk_fail
LVL1582:
L436:
	.loc 2 1306 0
	call	_Perl_get_context
LVL1583:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1584:
	.cfi_endproc
LFE146:
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "class, id, text, default_value, multiline\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_string_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_string_new:
LFB145:
	.loc 2 1278 0
	.cfi_startproc
LVL1585:
	push	ebp
LCFI407:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI408:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI409:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI410:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI411:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1278 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1279 0
	call	_Perl_get_context
LVL1586:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1587:
	mov	ebp, DWORD PTR [eax]
LVL1588:
	call	_Perl_get_context
LVL1589:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1590:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL1591:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1592:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1593:
	lea	ebx, [esi+1]
LVL1594:
	mov	eax, DWORD PTR [eax]
LVL1595:
	lea	eax, [eax+esi*4]
LVL1596:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1280 0
	cmp	edx, 5
	jne	L463
LBB136:
	.loc 2 1283 0
	call	_Perl_get_context
LVL1597:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1598:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L464
	.loc 2 1283 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1599:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1600:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL1601:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1602:
	mov	DWORD PTR [esp+28], eax
L442:
LVL1603:
	.loc 2 1285 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1604:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1605:
	lea	esi, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L443
	.loc 2 1285 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1606:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1607:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	edi, DWORD PTR [eax+12]
L444:
LVL1608:
	.loc 2 1287 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1609:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1610:
	lea	esi, [12+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L445
	.loc 2 1287 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1611:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1612:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	ebp, DWORD PTR [eax+12]
LVL1613:
L446:
	.loc 2 1289 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1614:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1615:
	lea	esi, [16+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	eax, eax
	je	L454
	.loc 2 1289 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1616:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1617:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L448
LBB137:
	.loc 2 1289 0 discriminator 3
	call	_Perl_get_context
LVL1618:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1619:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
LVL1620:
	test	eax, eax
	je	L454
	.loc 2 1289 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1621:
	cmp	eax, 1
	jbe	L465
L450:
LBE137:
	.loc 2 1289 0
	mov	eax, 1
L447:
LVL1622:
	.loc 2 1293 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], edi
	mov	eax, DWORD PTR [esp+28]
LVL1623:
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_string_new
LVL1624:
	mov	edi, eax
LVL1625:
	.loc 2 1294 0 discriminator 15
	call	_Perl_get_context
LVL1626:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1627:
	sal	ebx, 2
LVL1628:
	mov	esi, DWORD PTR [eax]
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL1629:
	mov	DWORD PTR [esi], eax
	.loc 2 1295 0 discriminator 15
	call	_Perl_get_context
LVL1630:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1631:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1632:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL1633:
LBE136:
LBB140:
	.loc 2 1297 0 discriminator 15
	call	_Perl_get_context
LVL1634:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1635:
	mov	esi, eax
	call	_Perl_get_context
LVL1636:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1637:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE140:
	.loc 2 1298 0 discriminator 15
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L466
	.loc 2 1298 0 is_stmt 0
	add	esp, 60
LCFI412:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI413:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI414:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI415:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1638:
	pop	ebp
LCFI416:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1639:
	ret
LVL1640:
	.p2align 2,,3
L464:
LCFI417:
	.cfi_restore_state
LBB141:
	.loc 2 1283 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1641:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1642:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+28], eax
	jmp	L442
LVL1643:
	.p2align 2,,3
L445:
	.loc 2 1287 0 discriminator 2
	call	_Perl_get_context
LVL1644:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1645:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL1646:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1647:
	mov	ebp, eax
LVL1648:
	jmp	L446
LVL1649:
	.p2align 2,,3
L443:
	.loc 2 1285 0 discriminator 2
	call	_Perl_get_context
LVL1650:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1651:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL1652:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1653:
	mov	edi, eax
	jmp	L444
LVL1654:
	.p2align 2,,3
L448:
	.loc 2 1289 0 discriminator 4
	call	_Perl_get_context
LVL1655:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1656:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 1
	jne	L467
	.loc 2 1289 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1657:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1658:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 2
	je	L452
	.loc 2 1289 0 discriminator 10
	call	_Perl_get_context
LVL1659:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1660:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L447
	.p2align 2,,3
L465:
LBB138:
	.loc 2 1289 0 discriminator 4
	test	eax, eax
	jne	L468
	.p2align 2,,3
L454:
LBE138:
	.loc 2 1289 0
	xor	eax, eax
	jmp	L447
	.p2align 2,,3
L467:
	.loc 2 1289 0 discriminator 8
	call	_Perl_get_context
LVL1661:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1662:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L447
	.p2align 2,,3
L452:
	.loc 2 1289 0 discriminator 11
	call	_Perl_get_context
LVL1663:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1664:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL1665:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1666:
	movsx	eax, al
	jmp	L447
	.p2align 2,,3
L468:
LBB139:
	.loc 2 1289 0 discriminator 1
	call	_Perl_get_context
LVL1667:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1668:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L450
LBE139:
	.loc 2 1289 0
	xor	eax, eax
	jmp	L447
LVL1669:
L463:
LBE141:
	.loc 2 1281 0 is_stmt 1
	call	_Perl_get_context
LVL1670:
	mov	edx, OFFSET FLAT:LC21
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1671:
L466:
	.loc 2 1298 0
	call	___stack_chk_fail
LVL1672:
	.cfi_endproc
LFE145:
	.section .rdata,"dr"
LC22:
	.ascii "field, visible\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_set_visible;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_set_visible:
LFB144:
	.loc 2 1260 0
	.cfi_startproc
LVL1673:
	push	ebp
LCFI418:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI419:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI420:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI421:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI422:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1260 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1261 0
	call	_Perl_get_context
LVL1674:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1675:
	mov	ebp, DWORD PTR [eax]
LVL1676:
	call	_Perl_get_context
LVL1677:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1678:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1679:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1680:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1681:
	lea	esi, [ebx+1]
LVL1682:
	mov	eax, DWORD PTR [eax]
LVL1683:
	lea	eax, [eax+ebx*4]
LVL1684:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1262 0
	cmp	edx, 2
	jne	L487
LBB142:
	.loc 2 1265 0
	call	_Perl_get_context
LVL1685:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1686:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1687:
	mov	edi, eax
LVL1688:
	.loc 2 1267 0
	call	_Perl_get_context
LVL1689:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1690:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	eax, eax
	je	L478
	.loc 2 1267 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1691:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1692:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L472
LBB143:
	.loc 2 1267 0 discriminator 3
	call	_Perl_get_context
LVL1693:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1694:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL1695:
	test	eax, eax
	je	L478
	.loc 2 1267 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1696:
	cmp	eax, 1
	jbe	L488
L474:
LBE143:
	.loc 2 1267 0
	mov	eax, 1
L471:
LVL1697:
	.loc 2 1270 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_set_visible
LVL1698:
LBE142:
LBB146:
	.loc 2 1272 0 discriminator 15
	call	_Perl_get_context
LVL1699:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1700:
	mov	ebx, eax
	call	_Perl_get_context
LVL1701:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1702:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE146:
	.loc 2 1273 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L489
	.loc 2 1273 0 is_stmt 0
	add	esp, 44
LCFI423:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI424:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI425:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1703:
	pop	edi
LCFI426:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1704:
	pop	ebp
LCFI427:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1705:
	ret
LVL1706:
	.p2align 2,,3
L472:
LCFI428:
	.cfi_restore_state
LBB147:
	.loc 2 1267 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL1707:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1708:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L490
	.loc 2 1267 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1709:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1710:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L476
	.loc 2 1267 0 discriminator 10
	call	_Perl_get_context
LVL1711:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1712:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L471
	.p2align 2,,3
L488:
LBB144:
	.loc 2 1267 0 discriminator 4
	test	eax, eax
	jne	L491
	.p2align 2,,3
L478:
LBE144:
	.loc 2 1267 0
	xor	eax, eax
	jmp	L471
	.p2align 2,,3
L490:
	.loc 2 1267 0 discriminator 8
	call	_Perl_get_context
LVL1713:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1714:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L471
	.p2align 2,,3
L476:
	.loc 2 1267 0 discriminator 11
	call	_Perl_get_context
LVL1715:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1716:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1717:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1718:
	movsx	eax, al
	jmp	L471
	.p2align 2,,3
L491:
LBB145:
	.loc 2 1267 0 discriminator 1
	call	_Perl_get_context
LVL1719:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1720:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L474
LBE145:
	.loc 2 1267 0
	xor	eax, eax
	jmp	L471
LVL1721:
L489:
LBE147:
	.loc 2 1273 0 is_stmt 1
	call	___stack_chk_fail
LVL1722:
L487:
	.loc 2 1263 0
	call	_Perl_get_context
LVL1723:
	mov	edx, OFFSET FLAT:LC22
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1724:
	.cfi_endproc
LFE144:
	.section .rdata,"dr"
LC23:
	.ascii "field, type_hint\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_set_type_hint;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_set_type_hint:
LFB143:
	.loc 2 1242 0
	.cfi_startproc
LVL1725:
	push	ebp
LCFI429:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI430:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI431:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI432:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI433:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1242 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1243 0
	call	_Perl_get_context
LVL1726:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1727:
	mov	ebp, DWORD PTR [eax]
LVL1728:
	call	_Perl_get_context
LVL1729:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1730:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1731:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1732:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1733:
	lea	esi, [ebx+1]
LVL1734:
	mov	eax, DWORD PTR [eax]
LVL1735:
	lea	eax, [eax+ebx*4]
LVL1736:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1244 0
	cmp	edx, 2
	jne	L498
LBB148:
	.loc 2 1247 0
	call	_Perl_get_context
LVL1737:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1738:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1739:
	mov	edi, eax
LVL1740:
	.loc 2 1249 0
	call	_Perl_get_context
LVL1741:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1742:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L499
	.loc 2 1249 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1743:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1744:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1745:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1746:
L495:
	.loc 2 1252 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_set_type_hint
LVL1747:
LBE148:
LBB149:
	.loc 2 1254 0 discriminator 3
	call	_Perl_get_context
LVL1748:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1749:
	mov	ebx, eax
	call	_Perl_get_context
LVL1750:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1751:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE149:
	.loc 2 1255 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L500
	.loc 2 1255 0 is_stmt 0
	add	esp, 44
LCFI434:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI435:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI436:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1752:
	pop	edi
LCFI437:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1753:
	pop	ebp
LCFI438:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1754:
	ret
LVL1755:
	.p2align 2,,3
L499:
LCFI439:
	.cfi_restore_state
LBB150:
	.loc 2 1249 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1756:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1757:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L495
LVL1758:
L498:
LBE150:
	.loc 2 1245 0
	call	_Perl_get_context
LVL1759:
	mov	edx, OFFSET FLAT:LC23
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1760:
L500:
	.loc 2 1255 0
	call	___stack_chk_fail
LVL1761:
	.cfi_endproc
LFE143:
	.section .rdata,"dr"
LC24:
	.ascii "field, required\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_set_required;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_set_required:
LFB142:
	.loc 2 1224 0
	.cfi_startproc
LVL1762:
	push	ebp
LCFI440:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI441:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI442:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI443:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI444:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1224 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1225 0
	call	_Perl_get_context
LVL1763:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1764:
	mov	ebp, DWORD PTR [eax]
LVL1765:
	call	_Perl_get_context
LVL1766:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1767:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1768:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1769:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1770:
	lea	esi, [ebx+1]
LVL1771:
	mov	eax, DWORD PTR [eax]
LVL1772:
	lea	eax, [eax+ebx*4]
LVL1773:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1226 0
	cmp	edx, 2
	jne	L519
LBB151:
	.loc 2 1229 0
	call	_Perl_get_context
LVL1774:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1775:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1776:
	mov	edi, eax
LVL1777:
	.loc 2 1231 0
	call	_Perl_get_context
LVL1778:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1779:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	eax, eax
	je	L510
	.loc 2 1231 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1780:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1781:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L504
LBB152:
	.loc 2 1231 0 discriminator 3
	call	_Perl_get_context
LVL1782:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1783:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL1784:
	test	eax, eax
	je	L510
	.loc 2 1231 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1785:
	cmp	eax, 1
	jbe	L520
L506:
LBE152:
	.loc 2 1231 0
	mov	eax, 1
L503:
LVL1786:
	.loc 2 1234 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_set_required
LVL1787:
LBE151:
LBB155:
	.loc 2 1236 0 discriminator 15
	call	_Perl_get_context
LVL1788:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1789:
	mov	ebx, eax
	call	_Perl_get_context
LVL1790:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1791:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE155:
	.loc 2 1237 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L521
	.loc 2 1237 0 is_stmt 0
	add	esp, 44
LCFI445:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI446:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI447:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1792:
	pop	edi
LCFI448:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1793:
	pop	ebp
LCFI449:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1794:
	ret
LVL1795:
	.p2align 2,,3
L504:
LCFI450:
	.cfi_restore_state
LBB156:
	.loc 2 1231 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL1796:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1797:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L522
	.loc 2 1231 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1798:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1799:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L508
	.loc 2 1231 0 discriminator 10
	call	_Perl_get_context
LVL1800:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1801:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L503
	.p2align 2,,3
L520:
LBB153:
	.loc 2 1231 0 discriminator 4
	test	eax, eax
	jne	L523
	.p2align 2,,3
L510:
LBE153:
	.loc 2 1231 0
	xor	eax, eax
	jmp	L503
	.p2align 2,,3
L522:
	.loc 2 1231 0 discriminator 8
	call	_Perl_get_context
LVL1802:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1803:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L503
	.p2align 2,,3
L508:
	.loc 2 1231 0 discriminator 11
	call	_Perl_get_context
LVL1804:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1805:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1806:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1807:
	movsx	eax, al
	jmp	L503
	.p2align 2,,3
L523:
LBB154:
	.loc 2 1231 0 discriminator 1
	call	_Perl_get_context
LVL1808:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1809:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L506
LBE154:
	.loc 2 1231 0
	xor	eax, eax
	jmp	L503
LVL1810:
L521:
LBE156:
	.loc 2 1237 0 is_stmt 1
	call	___stack_chk_fail
LVL1811:
L519:
	.loc 2 1227 0
	call	_Perl_get_context
LVL1812:
	mov	edx, OFFSET FLAT:LC24
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1813:
	.cfi_endproc
LFE142:
	.section .rdata,"dr"
LC25:
	.ascii "field, label\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_set_label;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_set_label:
LFB141:
	.loc 2 1206 0
	.cfi_startproc
LVL1814:
	push	ebp
LCFI451:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI452:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI453:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI454:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI455:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1206 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1207 0
	call	_Perl_get_context
LVL1815:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1816:
	mov	ebp, DWORD PTR [eax]
LVL1817:
	call	_Perl_get_context
LVL1818:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1819:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1820:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1821:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1822:
	lea	esi, [ebx+1]
LVL1823:
	mov	eax, DWORD PTR [eax]
LVL1824:
	lea	eax, [eax+ebx*4]
LVL1825:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1208 0
	cmp	edx, 2
	jne	L530
LBB157:
	.loc 2 1211 0
	call	_Perl_get_context
LVL1826:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1827:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1828:
	mov	edi, eax
LVL1829:
	.loc 2 1213 0
	call	_Perl_get_context
LVL1830:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1831:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L531
	.loc 2 1213 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1832:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1833:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1834:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1835:
L527:
	.loc 2 1216 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_set_label
LVL1836:
LBE157:
LBB158:
	.loc 2 1218 0 discriminator 3
	call	_Perl_get_context
LVL1837:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1838:
	mov	ebx, eax
	call	_Perl_get_context
LVL1839:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1840:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE158:
	.loc 2 1219 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L532
	.loc 2 1219 0 is_stmt 0
	add	esp, 44
LCFI456:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI457:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI458:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1841:
	pop	edi
LCFI459:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1842:
	pop	ebp
LCFI460:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1843:
	ret
LVL1844:
	.p2align 2,,3
L531:
LCFI461:
	.cfi_restore_state
LBB159:
	.loc 2 1213 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1845:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1846:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L527
LVL1847:
L530:
LBE159:
	.loc 2 1209 0
	call	_Perl_get_context
LVL1848:
	mov	edx, OFFSET FLAT:LC25
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1849:
L532:
	.loc 2 1219 0
	call	___stack_chk_fail
LVL1850:
	.cfi_endproc
LFE141:
	.section .rdata,"dr"
LC26:
	.ascii "class, id, text, type\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_new:
LFB140:
	.loc 2 1183 0
	.cfi_startproc
LVL1851:
	push	ebp
LCFI462:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI463:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI464:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI465:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI466:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1183 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1184 0
	call	_Perl_get_context
LVL1852:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1853:
	mov	ebp, DWORD PTR [eax]
LVL1854:
	call	_Perl_get_context
LVL1855:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1856:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1857:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1858:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1859:
	lea	esi, [ebx+1]
LVL1860:
	mov	eax, DWORD PTR [eax]
LVL1861:
	lea	eax, [eax+ebx*4]
LVL1862:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1185 0
	cmp	edx, 4
	jne	L543
LBB160:
	.loc 2 1188 0
	call	_Perl_get_context
LVL1863:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1864:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L544
	.loc 2 1188 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1865:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1866:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1867:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1868:
	mov	edi, eax
L536:
LVL1869:
	.loc 2 1190 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1870:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1871:
	lea	ebx, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L537
	.loc 2 1190 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1872:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1873:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	ebp, DWORD PTR [eax+12]
LVL1874:
L538:
	.loc 2 1192 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1875:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1876:
	lea	ebx, [12+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L545
	.loc 2 1192 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1877:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1878:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1879:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL1880:
L540:
	.loc 2 1196 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_new
LVL1881:
	mov	edi, eax
LVL1882:
	.loc 2 1197 0 discriminator 3
	call	_Perl_get_context
LVL1883:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1884:
	sal	esi, 2
LVL1885:
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL1886:
	mov	DWORD PTR [ebx], eax
	.loc 2 1198 0 discriminator 3
	call	_Perl_get_context
LVL1887:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1888:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL1889:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL1890:
LBE160:
LBB161:
	.loc 2 1200 0 discriminator 3
	call	_Perl_get_context
LVL1891:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1892:
	mov	ebx, eax
	call	_Perl_get_context
LVL1893:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1894:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE161:
	.loc 2 1201 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L546
	.loc 2 1201 0 is_stmt 0
	add	esp, 44
LCFI467:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI468:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI469:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI470:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1895:
	pop	ebp
LCFI471:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1896:
	ret
LVL1897:
	.p2align 2,,3
L544:
LCFI472:
	.cfi_restore_state
LBB162:
	.loc 2 1188 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL1898:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1899:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	edi, DWORD PTR [eax+12]
	jmp	L536
LVL1900:
	.p2align 2,,3
L537:
	.loc 2 1190 0 discriminator 2
	call	_Perl_get_context
LVL1901:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1902:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1903:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1904:
	mov	ebp, eax
LVL1905:
	jmp	L538
LVL1906:
	.p2align 2,,3
L545:
	.loc 2 1192 0 discriminator 1
	call	_Perl_get_context
LVL1907:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1908:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L540
LVL1909:
L546:
LBE162:
	.loc 2 1201 0
	call	___stack_chk_fail
LVL1910:
L543:
	.loc 2 1186 0
	call	_Perl_get_context
LVL1911:
	mov	edx, OFFSET FLAT:LC26
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1912:
	.cfi_endproc
LFE140:
	.section .rdata,"dr"
LC27:
	.ascii "field, multi_select\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_set_multi_select;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_set_multi_select:
LFB139:
	.loc 2 1165 0
	.cfi_startproc
LVL1913:
	push	ebp
LCFI473:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI474:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI475:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI476:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI477:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1165 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1166 0
	call	_Perl_get_context
LVL1914:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1915:
	mov	ebp, DWORD PTR [eax]
LVL1916:
	call	_Perl_get_context
LVL1917:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1918:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1919:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1920:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1921:
	lea	esi, [ebx+1]
LVL1922:
	mov	eax, DWORD PTR [eax]
LVL1923:
	lea	eax, [eax+ebx*4]
LVL1924:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1167 0
	cmp	edx, 2
	jne	L565
LBB163:
	.loc 2 1170 0
	call	_Perl_get_context
LVL1925:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1926:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1927:
	mov	edi, eax
LVL1928:
	.loc 2 1172 0
	call	_Perl_get_context
LVL1929:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1930:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+ebx]
	test	ecx, ecx
	je	L556
	.loc 2 1172 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL1931:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1932:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L550
LBB164:
	.loc 2 1172 0 discriminator 3
	call	_Perl_get_context
LVL1933:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1934:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL1935:
	test	eax, eax
	je	L556
	.loc 2 1172 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL1936:
	cmp	eax, 1
	jbe	L566
L552:
LBE164:
	.loc 2 1172 0
	mov	eax, 1
L549:
LVL1937:
	.loc 2 1175 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_set_multi_select
LVL1938:
LBE163:
LBB167:
	.loc 2 1177 0 discriminator 15
	call	_Perl_get_context
LVL1939:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1940:
	mov	ebx, eax
	call	_Perl_get_context
LVL1941:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1942:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE167:
	.loc 2 1178 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L567
	.loc 2 1178 0 is_stmt 0
	add	esp, 44
LCFI478:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI479:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI480:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL1943:
	pop	edi
LCFI481:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL1944:
	pop	ebp
LCFI482:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL1945:
	ret
LVL1946:
	.p2align 2,,3
L550:
LCFI483:
	.cfi_restore_state
LBB168:
	.loc 2 1172 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL1947:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1948:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L568
	.loc 2 1172 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL1949:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1950:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L554
	.loc 2 1172 0 discriminator 10
	call	_Perl_get_context
LVL1951:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1952:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L549
	.p2align 2,,3
L566:
LBB165:
	.loc 2 1172 0 discriminator 4
	test	eax, eax
	jne	L569
	.p2align 2,,3
L556:
LBE165:
	.loc 2 1172 0
	xor	eax, eax
	jmp	L549
	.p2align 2,,3
L568:
	.loc 2 1172 0 discriminator 8
	call	_Perl_get_context
LVL1953:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1954:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+16]
	xor	eax, eax
	test	edx, edx
	setne	al
	jmp	L549
	.p2align 2,,3
L554:
	.loc 2 1172 0 discriminator 11
	call	_Perl_get_context
LVL1955:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1956:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1957:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL1958:
	movsx	eax, al
	jmp	L549
	.p2align 2,,3
L569:
LBB166:
	.loc 2 1172 0 discriminator 1
	call	_Perl_get_context
LVL1959:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1960:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L552
LBE166:
	.loc 2 1172 0
	xor	eax, eax
	jmp	L549
LVL1961:
L567:
LBE168:
	.loc 2 1178 0 is_stmt 1
	call	___stack_chk_fail
LVL1962:
L565:
	.loc 2 1168 0
	call	_Perl_get_context
LVL1963:
	mov	edx, OFFSET FLAT:LC27
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL1964:
	.cfi_endproc
LFE139:
	.section .rdata,"dr"
LC28:
	.ascii "field, item\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_is_selected;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_is_selected:
LFB138:
	.loc 2 1145 0
	.cfi_startproc
LVL1965:
	push	ebp
LCFI484:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI485:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI486:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI487:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI488:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1145 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1146 0
	call	_Perl_get_context
LVL1966:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1967:
	mov	ebp, DWORD PTR [eax]
LVL1968:
	call	_Perl_get_context
LVL1969:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL1970:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL1971:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL1972:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1973:
	lea	esi, [ebx+1]
LVL1974:
	mov	eax, DWORD PTR [eax]
LVL1975:
	lea	eax, [eax+ebx*4]
LVL1976:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1147 0
	cmp	edx, 2
	jne	L578
LBB169:
	.loc 2 1150 0
	call	_Perl_get_context
LVL1977:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1978:
	sal	esi, 2
LVL1979:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL1980:
	mov	edi, eax
LVL1981:
	.loc 2 1152 0
	call	_Perl_get_context
LVL1982:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1983:
	lea	ebx, [8+ebx*4]
LVL1984:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L579
	.loc 2 1152 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1985:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1986:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL1987:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL1988:
L573:
	.loc 2 1156 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_is_selected
LVL1989:
	mov	edi, eax
LVL1990:
	.loc 2 1157 0 discriminator 3
	call	_Perl_get_context
LVL1991:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1992:
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	test	edi, edi
	jne	L580
	.loc 2 1157 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL1993:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL1994:
L575:
	.loc 2 1157 0 discriminator 3
	mov	DWORD PTR [ebx], eax
LVL1995:
LBE169:
LBB170:
	.loc 2 1159 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL1996:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL1997:
	mov	ebx, eax
	call	_Perl_get_context
LVL1998:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL1999:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE170:
	.loc 2 1160 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L581
	.loc 2 1160 0 is_stmt 0
	add	esp, 44
LCFI489:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI490:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI491:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI492:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2000:
	pop	ebp
LCFI493:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2001:
	ret
LVL2002:
	.p2align 2,,3
L579:
LCFI494:
	.cfi_restore_state
LBB171:
	.loc 2 1152 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2003:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2004:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L573
LVL2005:
	.p2align 2,,3
L580:
	.loc 2 1157 0 discriminator 1
	call	_Perl_get_context
LVL2006:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL2007:
	jmp	L575
LVL2008:
L581:
LBE171:
	.loc 2 1160 0
	call	___stack_chk_fail
LVL2009:
L578:
	.loc 2 1148 0
	call	_Perl_get_context
LVL2010:
	mov	edx, OFFSET FLAT:LC28
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2011:
	.cfi_endproc
LFE138:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_get_selected;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_get_selected:
LFB137:
	.loc 2 1120 0
	.cfi_startproc
LVL2012:
	push	ebp
LCFI495:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI496:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI497:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI498:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI499:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1120 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1121 0
	call	_Perl_get_context
LVL2013:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2014:
	mov	esi, DWORD PTR [eax]
LVL2015:
	call	_Perl_get_context
LVL2016:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2017:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2018:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2019:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2020:
	lea	ebp, [ebx+1]
LVL2021:
	mov	eax, DWORD PTR [eax]
LVL2022:
	lea	eax, [eax+ebx*4]
LVL2023:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1122 0
	dec	edx
	jne	L595
	.loc 2 1125 0
	sub	esi, 4
LVL2024:
LBB172:
	.loc 2 1127 0
	call	_Perl_get_context
LVL2025:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2026:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2027:
	.loc 1 423 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_list_get_selected
LVL2028:
	mov	ebx, eax
LVL2029:
	test	eax, eax
	jne	L591
	jmp	L584
LVL2030:
	.p2align 2,,3
L588:
LBB173:
	.loc 1 424 0
	mov	edi, esi
LVL2031:
L585:
	.loc 1 424 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL2032:
	mov	ebp, DWORD PTR [ebx]
	call	_Perl_get_context
LVL2033:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_newSVpv
LVL2034:
	mov	ebp, eax
	call	_Perl_get_context
LVL2035:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2036:
	mov	DWORD PTR [edi+4], eax
LBE173:
	.loc 1 423 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL2037:
	test	ebx, ebx
	je	L584
L591:
LBB174:
	.loc 1 424 0
	call	_Perl_get_context
LVL2038:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL2039:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L588
	.loc 1 424 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2040:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL2041:
	mov	edi, eax
LVL2042:
	jmp	L585
LVL2043:
	.p2align 2,,3
L584:
LBE174:
	.loc 2 1137 0 is_stmt 1
	call	_Perl_get_context
LVL2044:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2045:
	mov	DWORD PTR [eax], esi
LBE172:
	.loc 2 1140 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L596
	add	esp, 44
LCFI500:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI501:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL2046:
	pop	esi
LCFI502:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2047:
	pop	edi
LCFI503:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI504:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL2048:
L595:
LCFI505:
	.cfi_restore_state
	.loc 2 1123 0
	call	_Perl_get_context
LVL2049:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2050:
L596:
	.loc 2 1140 0
	call	___stack_chk_fail
LVL2051:
	.cfi_endproc
LFE137:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_get_multi_select;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_get_multi_select:
LFB136:
	.loc 2 1102 0
	.cfi_startproc
LVL2052:
	push	ebp
LCFI506:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI507:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI508:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI509:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI510:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1102 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1103 0
	call	_Perl_get_context
LVL2053:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2054:
	mov	ebp, DWORD PTR [eax]
LVL2055:
	call	_Perl_get_context
LVL2056:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2057:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL2058:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2059:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2060:
	lea	ebx, [esi+1]
LVL2061:
	mov	eax, DWORD PTR [eax]
LVL2062:
	lea	eax, [eax+esi*4]
LVL2063:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1104 0
	dec	edx
	jne	L603
LBB175:
	.loc 2 1107 0
	call	_Perl_get_context
LVL2064:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2065:
	sal	ebx, 2
LVL2066:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2067:
	.loc 2 1111 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_list_get_multi_select
LVL2068:
	mov	edi, eax
LVL2069:
	.loc 2 1112 0
	call	_Perl_get_context
LVL2070:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2071:
	mov	esi, DWORD PTR [eax]
LVL2072:
	add	esi, ebx
	test	edi, edi
	jne	L604
	.loc 2 1112 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2073:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL2074:
L600:
	.loc 2 1112 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL2075:
LBE175:
LBB176:
	.loc 2 1114 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2076:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2077:
	mov	esi, eax
	call	_Perl_get_context
LVL2078:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2079:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE176:
	.loc 2 1115 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L605
	.loc 2 1115 0 is_stmt 0
	add	esp, 44
LCFI511:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI512:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI513:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI514:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2080:
	pop	ebp
LCFI515:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2081:
	ret
LVL2082:
	.p2align 2,,3
L604:
LCFI516:
	.cfi_restore_state
LBB177:
	.loc 2 1112 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2083:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL2084:
	jmp	L600
LVL2085:
L603:
LBE177:
	.loc 2 1105 0
	call	_Perl_get_context
LVL2086:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2087:
L605:
	.loc 2 1115 0
	call	___stack_chk_fail
LVL2088:
	.cfi_endproc
LFE136:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_get_items;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_get_items:
LFB135:
	.loc 2 1077 0
	.cfi_startproc
LVL2089:
	push	ebp
LCFI517:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI518:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI519:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI520:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI521:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1077 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1078 0
	call	_Perl_get_context
LVL2090:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2091:
	mov	esi, DWORD PTR [eax]
LVL2092:
	call	_Perl_get_context
LVL2093:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2094:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2095:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2096:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2097:
	lea	ebp, [ebx+1]
LVL2098:
	mov	eax, DWORD PTR [eax]
LVL2099:
	lea	eax, [eax+ebx*4]
LVL2100:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1079 0
	dec	edx
	jne	L619
	.loc 2 1082 0
	sub	esi, 4
LVL2101:
LBB178:
	.loc 2 1084 0
	call	_Perl_get_context
LVL2102:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2103:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2104:
	.loc 1 409 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_list_get_items
LVL2105:
	mov	ebx, eax
LVL2106:
	test	eax, eax
	jne	L615
	jmp	L608
LVL2107:
	.p2align 2,,3
L612:
LBB179:
	.loc 1 410 0
	mov	edi, esi
LVL2108:
L609:
	.loc 1 410 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL2109:
	mov	ebp, DWORD PTR [ebx]
	call	_Perl_get_context
LVL2110:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_newSVpv
LVL2111:
	mov	ebp, eax
	call	_Perl_get_context
LVL2112:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2113:
	mov	DWORD PTR [edi+4], eax
LBE179:
	.loc 1 409 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL2114:
	test	ebx, ebx
	je	L608
L615:
LBB180:
	.loc 1 410 0
	call	_Perl_get_context
LVL2115:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL2116:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L612
	.loc 1 410 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2117:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL2118:
	mov	edi, eax
LVL2119:
	jmp	L609
LVL2120:
	.p2align 2,,3
L608:
LBE180:
	.loc 2 1094 0 is_stmt 1
	call	_Perl_get_context
LVL2121:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2122:
	mov	DWORD PTR [eax], esi
LBE178:
	.loc 2 1097 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L620
	add	esp, 44
LCFI522:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI523:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL2123:
	pop	esi
LCFI524:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2124:
	pop	edi
LCFI525:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI526:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL2125:
L619:
LCFI527:
	.cfi_restore_state
	.loc 2 1080 0
	call	_Perl_get_context
LVL2126:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2127:
L620:
	.loc 2 1097 0
	call	___stack_chk_fail
LVL2128:
	.cfi_endproc
LFE135:
	.section .rdata,"dr"
LC29:
	.ascii "field, text\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_get_data;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_get_data:
LFB134:
	.loc 2 1056 0
	.cfi_startproc
LVL2129:
	push	ebp
LCFI528:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI529:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI530:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI531:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI532:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1056 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1057 0
	call	_Perl_get_context
LVL2130:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2131:
	mov	ebp, DWORD PTR [eax]
LVL2132:
	call	_Perl_get_context
LVL2133:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2134:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2135:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2136:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2137:
	lea	esi, [ebx+1]
LVL2138:
	mov	eax, DWORD PTR [eax]
LVL2139:
	lea	eax, [eax+ebx*4]
LVL2140:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1058 0
	cmp	edx, 2
	jne	L633
LBB181:
	.loc 2 1061 0
	call	_Perl_get_context
LVL2141:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2142:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2143:
	mov	ebp, eax
LVL2144:
	.loc 2 1063 0
	call	_Perl_get_context
LVL2145:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2146:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L634
	.loc 2 1063 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2147:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2148:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2149:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2150:
	mov	DWORD PTR [esp+28], eax
L624:
LVL2151:
	.loc 2 1066 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2152:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2153:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L625
	.loc 2 1066 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2154:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL2155:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL2156:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2157:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
L626:
LVL2158:
	.loc 2 1068 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_list_get_data
LVL2159:
	mov	ebp, eax
LVL2160:
	.loc 2 1069 0 discriminator 3
	call	_Perl_get_context
LVL2161:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2162:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL2163:
LBB182:
	call	_Perl_get_context
LVL2164:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL2165:
LBB183:
	test	BYTE PTR [ebx+10], 64
	je	L627
	.loc 2 1069 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2166:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL2167:
L627:
	.loc 2 1069 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL2168:
LBE183:
LBE182:
LBE181:
LBB184:
	.loc 2 1071 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL2169:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2170:
	mov	ebx, eax
LVL2171:
	call	_Perl_get_context
LVL2172:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2173:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE184:
	.loc 2 1072 0 discriminator 2
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L635
	.loc 2 1072 0 is_stmt 0
	add	esp, 60
LCFI533:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI534:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI535:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2174:
	pop	edi
LCFI536:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI537:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2175:
	ret
LVL2176:
	.p2align 2,,3
L634:
LCFI538:
	.cfi_restore_state
LBB185:
	.loc 2 1063 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2177:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2178:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+28], eax
	jmp	L624
LVL2179:
	.p2align 2,,3
L625:
	.loc 2 1066 0 discriminator 2
	call	_Perl_get_context
LVL2180:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL2181:
	mov	ebx, eax
	jmp	L626
LVL2182:
L635:
LBE185:
	.loc 2 1072 0
	call	___stack_chk_fail
LVL2183:
L633:
	.loc 2 1059 0
	call	_Perl_get_context
LVL2184:
	mov	edx, OFFSET FLAT:LC29
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2185:
	.cfi_endproc
LFE134:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_clear_selected;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_clear_selected:
LFB133:
	.loc 2 1040 0
	.cfi_startproc
LVL2186:
	push	ebp
LCFI539:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI540:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI541:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI542:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI543:
	.cfi_def_cfa_offset 64
	mov	esi, DWORD PTR [esp+68]
	.loc 2 1040 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1041 0
	call	_Perl_get_context
LVL2187:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2188:
	mov	edi, DWORD PTR [eax]
LVL2189:
	call	_Perl_get_context
LVL2190:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2191:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL2192:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL2193:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2194:
	lea	ebp, [ebx+1]
LVL2195:
	sal	ebx, 2
LVL2196:
	mov	eax, DWORD PTR [eax]
LVL2197:
	add	eax, ebx
LVL2198:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 1042 0
	dec	edx
	jne	L640
LBB186:
	.loc 2 1045 0
	call	_Perl_get_context
LVL2199:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2200:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2201:
	.loc 2 1048 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_list_clear_selected
LVL2202:
LBE186:
LBB187:
	.loc 2 1050 0
	call	_Perl_get_context
LVL2203:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2204:
	mov	esi, eax
	call	_Perl_get_context
LVL2205:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2206:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE187:
	.loc 2 1051 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L641
	add	esp, 44
LCFI544:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI545:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI546:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI547:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2207:
	pop	ebp
LCFI548:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2208:
	ret
LVL2209:
L640:
LCFI549:
	.cfi_restore_state
	.loc 2 1043 0
	call	_Perl_get_context
LVL2210:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, esi
	call	_S_croak_xs_usage.isra.0
LVL2211:
L641:
	.loc 2 1051 0
	call	___stack_chk_fail
LVL2212:
	.cfi_endproc
LFE133:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_add_selected;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_add_selected:
LFB132:
	.loc 2 1022 0
	.cfi_startproc
LVL2213:
	push	ebp
LCFI550:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI551:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI552:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI553:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI554:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 1022 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 1023 0
	call	_Perl_get_context
LVL2214:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2215:
	mov	ebp, DWORD PTR [eax]
LVL2216:
	call	_Perl_get_context
LVL2217:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2218:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2219:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2220:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2221:
	lea	esi, [ebx+1]
LVL2222:
	mov	eax, DWORD PTR [eax]
LVL2223:
	lea	eax, [eax+ebx*4]
LVL2224:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1024 0
	cmp	edx, 2
	jne	L648
LBB188:
	.loc 2 1027 0
	call	_Perl_get_context
LVL2225:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2226:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2227:
	mov	edi, eax
LVL2228:
	.loc 2 1029 0
	call	_Perl_get_context
LVL2229:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2230:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L649
	.loc 2 1029 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2231:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2232:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2233:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2234:
L645:
	.loc 2 1032 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_add_selected
LVL2235:
LBE188:
LBB189:
	.loc 2 1034 0 discriminator 3
	call	_Perl_get_context
LVL2236:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2237:
	mov	ebx, eax
	call	_Perl_get_context
LVL2238:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2239:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE189:
	.loc 2 1035 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L650
	.loc 2 1035 0 is_stmt 0
	add	esp, 44
LCFI555:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI556:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI557:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2240:
	pop	edi
LCFI558:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2241:
	pop	ebp
LCFI559:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2242:
	ret
LVL2243:
	.p2align 2,,3
L649:
LCFI560:
	.cfi_restore_state
LBB190:
	.loc 2 1029 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2244:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2245:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L645
LVL2246:
L648:
LBE190:
	.loc 2 1025 0
	call	_Perl_get_context
LVL2247:
	mov	edx, OFFSET FLAT:LC28
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2248:
L650:
	.loc 2 1035 0
	call	___stack_chk_fail
LVL2249:
	.cfi_endproc
LFE132:
	.section .rdata,"dr"
LC30:
	.ascii "field, item, icon_path, data\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_add_icon;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_add_icon:
LFB131:
	.loc 2 1000 0
	.cfi_startproc
LVL2250:
	push	ebp
LCFI561:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI562:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI563:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI564:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI565:
	.cfi_def_cfa_offset 80
	mov	edi, DWORD PTR [esp+84]
	.loc 2 1000 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 1001 0
	call	_Perl_get_context
LVL2251:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2252:
	mov	ebp, DWORD PTR [eax]
LVL2253:
	call	_Perl_get_context
LVL2254:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2255:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL2256:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2257:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2258:
	lea	ebx, [esi+1]
LVL2259:
	mov	eax, DWORD PTR [eax]
LVL2260:
	lea	eax, [eax+esi*4]
LVL2261:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 1002 0
	cmp	edx, 4
	jne	L661
LBB191:
	.loc 2 1005 0
	call	_Perl_get_context
LVL2262:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2263:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2264:
	mov	edi, eax
LVL2265:
	.loc 2 1007 0
	call	_Perl_get_context
LVL2266:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2267:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L662
	.loc 2 1007 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2268:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2269:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL2270:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2271:
	mov	esi, eax
L654:
LVL2272:
	.loc 2 1009 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2273:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2274:
	lea	ebp, [8+ebx*4]
LVL2275:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp]
	test	BYTE PTR [eax+9], 4
	je	L655
	.loc 2 1009 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2276:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2277:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp]
	mov	ebp, DWORD PTR [eax+12]
L656:
LVL2278:
	.loc 2 1011 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2279:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2280:
	lea	edx, [12+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edx]
	test	BYTE PTR [eax+9], 1
	mov	DWORD PTR [esp+28], edx
	jne	L663
	.loc 2 1011 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2281:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2282:
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [eax+edx]
	mov	DWORD PTR [esp+28], edx
	call	_Perl_get_context
LVL2283:
	mov	DWORD PTR [esp+8], 2
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2284:
L658:
	.loc 2 1014 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_add_icon
LVL2285:
LBE191:
LBB192:
	.loc 2 1016 0 discriminator 3
	call	_Perl_get_context
LVL2286:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2287:
	mov	esi, eax
LVL2288:
	call	_Perl_get_context
LVL2289:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2290:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+ebx*4]
	mov	DWORD PTR [esi], eax
LBE192:
	.loc 2 1017 0 discriminator 3
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L664
	.loc 2 1017 0 is_stmt 0
	add	esp, 60
LCFI566:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI567:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL2291:
	pop	esi
LCFI568:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI569:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2292:
	pop	ebp
LCFI570:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2293:
	ret
LVL2294:
	.p2align 2,,3
L662:
LCFI571:
	.cfi_restore_state
LBB193:
	.loc 2 1007 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2295:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2296:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	esi, DWORD PTR [eax+12]
	jmp	L654
LVL2297:
	.p2align 2,,3
L655:
	.loc 2 1009 0 discriminator 2
	call	_Perl_get_context
LVL2298:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2299:
	mov	eax, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+ebp]
	call	_Perl_get_context
LVL2300:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2301:
	mov	ebp, eax
	jmp	L656
LVL2302:
	.p2align 2,,3
L663:
	.loc 2 1011 0 discriminator 1
	call	_Perl_get_context
LVL2303:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2304:
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [eax+edx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L658
LVL2305:
L664:
LBE193:
	.loc 2 1017 0
	call	___stack_chk_fail
LVL2306:
L661:
	.loc 2 1003 0
	call	_Perl_get_context
LVL2307:
	mov	edx, OFFSET FLAT:LC30
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2308:
	.cfi_endproc
LFE131:
	.section .rdata,"dr"
LC31:
	.ascii "field, item, data\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_add;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_add:
LFB130:
	.loc 2 980 0
	.cfi_startproc
LVL2309:
	push	ebp
LCFI572:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI573:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI574:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI575:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI576:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 980 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 981 0
	call	_Perl_get_context
LVL2310:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2311:
	mov	ebp, DWORD PTR [eax]
LVL2312:
	call	_Perl_get_context
LVL2313:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2314:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2315:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2316:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2317:
	lea	esi, [ebx+1]
LVL2318:
	mov	eax, DWORD PTR [eax]
LVL2319:
	lea	eax, [eax+ebx*4]
LVL2320:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 982 0
	cmp	edx, 3
	jne	L673
LBB194:
	.loc 2 985 0
	call	_Perl_get_context
LVL2321:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2322:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2323:
	mov	edi, eax
LVL2324:
	.loc 2 987 0
	call	_Perl_get_context
LVL2325:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2326:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L674
	.loc 2 987 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2327:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2328:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2329:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2330:
	mov	ebp, eax
LVL2331:
L668:
	.loc 2 989 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2332:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2333:
	lea	ebx, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L675
	.loc 2 989 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2334:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2335:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2336:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2337:
L670:
	.loc 2 992 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_add
LVL2338:
LBE194:
LBB195:
	.loc 2 994 0 discriminator 3
	call	_Perl_get_context
LVL2339:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2340:
	mov	ebx, eax
	call	_Perl_get_context
LVL2341:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2342:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE195:
	.loc 2 995 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L676
	.loc 2 995 0 is_stmt 0
	add	esp, 44
LCFI577:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI578:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI579:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2343:
	pop	edi
LCFI580:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2344:
	pop	ebp
LCFI581:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2345:
	ret
LVL2346:
	.p2align 2,,3
L674:
LCFI582:
	.cfi_restore_state
LBB196:
	.loc 2 987 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2347:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2348:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	ebp, DWORD PTR [eax+12]
LVL2349:
	jmp	L668
LVL2350:
	.p2align 2,,3
L675:
	.loc 2 989 0 discriminator 1
	call	_Perl_get_context
LVL2351:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2352:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L670
LVL2353:
L676:
LBE196:
	.loc 2 995 0
	call	___stack_chk_fail
LVL2354:
L673:
	.loc 2 983 0
	call	_Perl_get_context
LVL2355:
	mov	edx, OFFSET FLAT:LC31
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2356:
	.cfi_endproc
LFE130:
	.section .rdata,"dr"
LC32:
	.ascii "class, id, text\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_list_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_list_new:
LFB129:
	.loc 2 959 0
	.cfi_startproc
LVL2357:
	push	ebp
LCFI583:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI584:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI585:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI586:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI587:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 959 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 960 0
	call	_Perl_get_context
LVL2358:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2359:
	mov	ebp, DWORD PTR [eax]
LVL2360:
	call	_Perl_get_context
LVL2361:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2362:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2363:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2364:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2365:
	lea	esi, [ebx+1]
LVL2366:
	mov	eax, DWORD PTR [eax]
LVL2367:
	lea	eax, [eax+ebx*4]
LVL2368:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 961 0
	cmp	edx, 3
	jne	L685
LBB197:
	.loc 2 964 0
	call	_Perl_get_context
LVL2369:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2370:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L686
	.loc 2 964 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2371:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2372:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2373:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2374:
	mov	edi, eax
L680:
LVL2375:
	.loc 2 966 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2376:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2377:
	lea	ebx, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+ebx]
	test	BYTE PTR [edx+9], 4
	jne	L687
	.loc 2 966 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2378:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2379:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2380:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2381:
L682:
	.loc 2 970 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_list_new
LVL2382:
	mov	edi, eax
LVL2383:
	.loc 2 971 0 discriminator 3
	call	_Perl_get_context
LVL2384:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2385:
	lea	ebx, [0+esi*4]
	mov	esi, DWORD PTR [eax]
LVL2386:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL2387:
	mov	DWORD PTR [esi], eax
	.loc 2 972 0 discriminator 3
	call	_Perl_get_context
LVL2388:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2389:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2390:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2391:
LBE197:
LBB198:
	.loc 2 974 0 discriminator 3
	call	_Perl_get_context
LVL2392:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2393:
	mov	esi, eax
	call	_Perl_get_context
LVL2394:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2395:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE198:
	.loc 2 975 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L688
	.loc 2 975 0 is_stmt 0
	add	esp, 44
LCFI588:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI589:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI590:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI591:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2396:
	pop	ebp
LCFI592:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2397:
	ret
LVL2398:
	.p2align 2,,3
L686:
LCFI593:
	.cfi_restore_state
LBB199:
	.loc 2 964 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2399:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2400:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	edi, DWORD PTR [eax+12]
	jmp	L680
LVL2401:
	.p2align 2,,3
L687:
	.loc 2 966 0 discriminator 1
	call	_Perl_get_context
LVL2402:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2403:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L682
LVL2404:
L688:
LBE199:
	.loc 2 975 0
	call	___stack_chk_fail
LVL2405:
L685:
	.loc 2 962 0
	call	_Perl_get_context
LVL2406:
	mov	edx, OFFSET FLAT:LC32
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2407:
	.cfi_endproc
LFE129:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_label_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_label_new:
LFB128:
	.loc 2 938 0
	.cfi_startproc
LVL2408:
	push	ebp
LCFI594:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI595:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI596:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI597:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI598:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 938 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 939 0
	call	_Perl_get_context
LVL2409:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2410:
	mov	ebp, DWORD PTR [eax]
LVL2411:
	call	_Perl_get_context
LVL2412:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2413:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2414:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2415:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2416:
	lea	esi, [ebx+1]
LVL2417:
	mov	eax, DWORD PTR [eax]
LVL2418:
	lea	eax, [eax+ebx*4]
LVL2419:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 940 0
	cmp	edx, 3
	jne	L697
LBB200:
	.loc 2 943 0
	call	_Perl_get_context
LVL2420:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2421:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L698
	.loc 2 943 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2422:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2423:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2424:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2425:
	mov	edi, eax
L692:
LVL2426:
	.loc 2 945 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2427:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2428:
	lea	ebx, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+ebx]
	test	BYTE PTR [edx+9], 4
	jne	L699
	.loc 2 945 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2429:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2430:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2431:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2432:
L694:
	.loc 2 949 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_label_new
LVL2433:
	mov	edi, eax
LVL2434:
	.loc 2 950 0 discriminator 3
	call	_Perl_get_context
LVL2435:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2436:
	lea	ebx, [0+esi*4]
	mov	esi, DWORD PTR [eax]
LVL2437:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL2438:
	mov	DWORD PTR [esi], eax
	.loc 2 951 0 discriminator 3
	call	_Perl_get_context
LVL2439:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2440:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2441:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2442:
LBE200:
LBB201:
	.loc 2 953 0 discriminator 3
	call	_Perl_get_context
LVL2443:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2444:
	mov	esi, eax
	call	_Perl_get_context
LVL2445:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2446:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE201:
	.loc 2 954 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L700
	.loc 2 954 0 is_stmt 0
	add	esp, 44
LCFI599:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI600:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI601:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI602:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2447:
	pop	ebp
LCFI603:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2448:
	ret
LVL2449:
	.p2align 2,,3
L698:
LCFI604:
	.cfi_restore_state
LBB202:
	.loc 2 943 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2450:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2451:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	edi, DWORD PTR [eax+12]
	jmp	L692
LVL2452:
	.p2align 2,,3
L699:
	.loc 2 945 0 discriminator 1
	call	_Perl_get_context
LVL2453:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2454:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L694
LVL2455:
L700:
LBE202:
	.loc 2 954 0
	call	___stack_chk_fail
LVL2456:
L697:
	.loc 2 941 0
	call	_Perl_get_context
LVL2457:
	mov	edx, OFFSET FLAT:LC32
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2458:
	.cfi_endproc
LFE128:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_is_required;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_is_required:
LFB127:
	.loc 2 920 0
	.cfi_startproc
LVL2459:
	push	ebp
LCFI605:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI606:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI607:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI608:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI609:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 920 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 921 0
	call	_Perl_get_context
LVL2460:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2461:
	mov	ebp, DWORD PTR [eax]
LVL2462:
	call	_Perl_get_context
LVL2463:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2464:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL2465:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2466:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2467:
	lea	ebx, [esi+1]
LVL2468:
	mov	eax, DWORD PTR [eax]
LVL2469:
	lea	eax, [eax+esi*4]
LVL2470:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 922 0
	dec	edx
	jne	L707
LBB203:
	.loc 2 925 0
	call	_Perl_get_context
LVL2471:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2472:
	sal	ebx, 2
LVL2473:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2474:
	.loc 2 929 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_is_required
LVL2475:
	mov	edi, eax
LVL2476:
	.loc 2 930 0
	call	_Perl_get_context
LVL2477:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2478:
	mov	esi, DWORD PTR [eax]
LVL2479:
	add	esi, ebx
	test	edi, edi
	jne	L708
	.loc 2 930 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2480:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL2481:
L704:
	.loc 2 930 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL2482:
LBE203:
LBB204:
	.loc 2 932 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2483:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2484:
	mov	esi, eax
	call	_Perl_get_context
LVL2485:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2486:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE204:
	.loc 2 933 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L709
	.loc 2 933 0 is_stmt 0
	add	esp, 44
LCFI610:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI611:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI612:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI613:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2487:
	pop	ebp
LCFI614:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2488:
	ret
LVL2489:
	.p2align 2,,3
L708:
LCFI615:
	.cfi_restore_state
LBB205:
	.loc 2 930 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2490:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL2491:
	jmp	L704
LVL2492:
L707:
LBE205:
	.loc 2 923 0
	call	_Perl_get_context
LVL2493:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2494:
L709:
	.loc 2 933 0
	call	___stack_chk_fail
LVL2495:
	.cfi_endproc
LFE127:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_int_set_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_int_set_value:
LFB126:
	.loc 2 902 0
	.cfi_startproc
LVL2496:
	push	ebp
LCFI616:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI617:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI618:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI619:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI620:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 902 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 903 0
	call	_Perl_get_context
LVL2497:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2498:
	mov	ebp, DWORD PTR [eax]
LVL2499:
	call	_Perl_get_context
LVL2500:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2501:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2502:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2503:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2504:
	lea	esi, [ebx+1]
LVL2505:
	mov	eax, DWORD PTR [eax]
LVL2506:
	lea	eax, [eax+ebx*4]
LVL2507:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 904 0
	cmp	edx, 2
	jne	L716
LBB206:
	.loc 2 907 0
	call	_Perl_get_context
LVL2508:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2509:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2510:
	mov	edi, eax
LVL2511:
	.loc 2 909 0
	call	_Perl_get_context
LVL2512:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2513:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L717
	.loc 2 909 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2514:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2515:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2516:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2517:
L713:
	.loc 2 912 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_int_set_value
LVL2518:
LBE206:
LBB207:
	.loc 2 914 0 discriminator 3
	call	_Perl_get_context
LVL2519:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2520:
	mov	ebx, eax
	call	_Perl_get_context
LVL2521:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2522:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE207:
	.loc 2 915 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L718
	.loc 2 915 0 is_stmt 0
	add	esp, 44
LCFI621:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI622:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI623:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2523:
	pop	edi
LCFI624:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2524:
	pop	ebp
LCFI625:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2525:
	ret
LVL2526:
	.p2align 2,,3
L717:
LCFI626:
	.cfi_restore_state
LBB208:
	.loc 2 909 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2527:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2528:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L713
LVL2529:
L716:
LBE208:
	.loc 2 905 0
	call	_Perl_get_context
LVL2530:
	mov	edx, OFFSET FLAT:LC15
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2531:
L718:
	.loc 2 915 0
	call	___stack_chk_fail
LVL2532:
	.cfi_endproc
LFE126:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_int_set_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_int_set_default_value:
LFB125:
	.loc 2 884 0
	.cfi_startproc
LVL2533:
	push	ebp
LCFI627:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI628:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI629:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI630:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI631:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 884 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 885 0
	call	_Perl_get_context
LVL2534:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2535:
	mov	ebp, DWORD PTR [eax]
LVL2536:
	call	_Perl_get_context
LVL2537:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2538:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2539:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2540:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2541:
	lea	esi, [ebx+1]
LVL2542:
	mov	eax, DWORD PTR [eax]
LVL2543:
	lea	eax, [eax+ebx*4]
LVL2544:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 886 0
	cmp	edx, 2
	jne	L725
LBB209:
	.loc 2 889 0
	call	_Perl_get_context
LVL2545:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2546:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2547:
	mov	edi, eax
LVL2548:
	.loc 2 891 0
	call	_Perl_get_context
LVL2549:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2550:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L726
	.loc 2 891 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2551:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2552:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2553:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2554:
L722:
	.loc 2 894 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_int_set_default_value
LVL2555:
LBE209:
LBB210:
	.loc 2 896 0 discriminator 3
	call	_Perl_get_context
LVL2556:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2557:
	mov	ebx, eax
	call	_Perl_get_context
LVL2558:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2559:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE210:
	.loc 2 897 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L727
	.loc 2 897 0 is_stmt 0
	add	esp, 44
LCFI632:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI633:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI634:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2560:
	pop	edi
LCFI635:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2561:
	pop	ebp
LCFI636:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2562:
	ret
LVL2563:
	.p2align 2,,3
L726:
LCFI637:
	.cfi_restore_state
LBB211:
	.loc 2 891 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2564:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2565:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L722
LVL2566:
L725:
LBE211:
	.loc 2 887 0
	call	_Perl_get_context
LVL2567:
	mov	edx, OFFSET FLAT:LC20
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2568:
L727:
	.loc 2 897 0
	call	___stack_chk_fail
LVL2569:
	.cfi_endproc
LFE125:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_int_get_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_int_get_value:
LFB124:
	.loc 2 865 0
	.cfi_startproc
LVL2570:
	push	ebp
LCFI638:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI639:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI640:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI641:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI642:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 865 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 866 0
	call	_Perl_get_context
LVL2571:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2572:
	mov	ebp, DWORD PTR [eax]
LVL2573:
	call	_Perl_get_context
LVL2574:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2575:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2576:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2577:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2578:
	lea	esi, [ebx+1]
LVL2579:
	mov	eax, DWORD PTR [eax]
LVL2580:
	lea	eax, [eax+ebx*4]
LVL2581:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 867 0
	dec	edx
	jne	L738
LBB212:
	.loc 2 870 0
	call	_Perl_get_context
LVL2582:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2583:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2584:
	mov	ebp, eax
LVL2585:
	.loc 2 873 0
	call	_Perl_get_context
LVL2586:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2587:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L739
	.loc 2 873 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2588:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL2589:
	mov	ebx, eax
L731:
LVL2590:
	.loc 2 875 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_int_get_value
LVL2591:
	mov	ebp, eax
LVL2592:
	.loc 2 876 0 discriminator 3
	call	_Perl_get_context
LVL2593:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2594:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL2595:
LBB213:
	call	_Perl_get_context
LVL2596:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL2597:
LBB214:
	test	BYTE PTR [ebx+10], 64
	je	L732
	.loc 2 876 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2598:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL2599:
L732:
	.loc 2 876 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL2600:
LBE214:
LBE213:
LBE212:
LBB215:
	.loc 2 878 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL2601:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2602:
	mov	ebx, eax
LVL2603:
	call	_Perl_get_context
LVL2604:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2605:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE215:
	.loc 2 879 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L740
	.loc 2 879 0 is_stmt 0
	add	esp, 44
LCFI643:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI644:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI645:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2606:
	pop	edi
LCFI646:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI647:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2607:
	ret
LVL2608:
	.p2align 2,,3
L739:
LCFI648:
	.cfi_restore_state
LBB216:
	.loc 2 873 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2609:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL2610:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL2611:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2612:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L731
LVL2613:
L740:
LBE216:
	.loc 2 879 0
	call	___stack_chk_fail
LVL2614:
L738:
	.loc 2 868 0
	call	_Perl_get_context
LVL2615:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2616:
	.cfi_endproc
LFE124:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_int_get_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_int_get_default_value:
LFB123:
	.loc 2 846 0
	.cfi_startproc
LVL2617:
	push	ebp
LCFI649:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI650:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI651:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI652:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI653:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 846 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 847 0
	call	_Perl_get_context
LVL2618:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2619:
	mov	ebp, DWORD PTR [eax]
LVL2620:
	call	_Perl_get_context
LVL2621:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2622:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2623:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2624:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2625:
	lea	esi, [ebx+1]
LVL2626:
	mov	eax, DWORD PTR [eax]
LVL2627:
	lea	eax, [eax+ebx*4]
LVL2628:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 848 0
	dec	edx
	jne	L751
LBB217:
	.loc 2 851 0
	call	_Perl_get_context
LVL2629:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2630:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2631:
	mov	ebp, eax
LVL2632:
	.loc 2 854 0
	call	_Perl_get_context
LVL2633:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2634:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L752
	.loc 2 854 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2635:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL2636:
	mov	ebx, eax
L744:
LVL2637:
	.loc 2 856 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_int_get_default_value
LVL2638:
	mov	ebp, eax
LVL2639:
	.loc 2 857 0 discriminator 3
	call	_Perl_get_context
LVL2640:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2641:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL2642:
LBB218:
	call	_Perl_get_context
LVL2643:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL2644:
LBB219:
	test	BYTE PTR [ebx+10], 64
	je	L745
	.loc 2 857 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2645:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL2646:
L745:
	.loc 2 857 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL2647:
LBE219:
LBE218:
LBE217:
LBB220:
	.loc 2 859 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL2648:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2649:
	mov	ebx, eax
LVL2650:
	call	_Perl_get_context
LVL2651:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2652:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE220:
	.loc 2 860 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L753
	.loc 2 860 0 is_stmt 0
	add	esp, 44
LCFI654:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI655:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI656:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2653:
	pop	edi
LCFI657:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI658:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2654:
	ret
LVL2655:
	.p2align 2,,3
L752:
LCFI659:
	.cfi_restore_state
LBB221:
	.loc 2 854 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2656:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL2657:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL2658:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2659:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L744
LVL2660:
L753:
LBE221:
	.loc 2 860 0
	call	___stack_chk_fail
LVL2661:
L751:
	.loc 2 849 0
	call	_Perl_get_context
LVL2662:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2663:
	.cfi_endproc
LFE123:
	.section .rdata,"dr"
	.align 4
LC33:
	.ascii "clas, id, text, default_value = 0\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_int_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_int_new:
LFB122:
	.loc 2 817 0
	.cfi_startproc
LVL2664:
	push	ebp
LCFI660:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI661:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI662:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI663:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI664:
	.cfi_def_cfa_offset 64
	mov	ebp, DWORD PTR [esp+68]
	.loc 2 817 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 818 0
	call	_Perl_get_context
LVL2665:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2666:
	mov	ebx, DWORD PTR [eax]
LVL2667:
	call	_Perl_get_context
LVL2668:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2669:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL2670:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2671:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2672:
	lea	edi, [esi+1]
LVL2673:
	mov	eax, DWORD PTR [eax]
LVL2674:
	lea	eax, [eax+esi*4]
LVL2675:
	sub	ebx, eax
LVL2676:
	sar	ebx, 2
LVL2677:
	.loc 2 819 0
	lea	eax, [ebx-3]
	cmp	eax, 1
	ja	L765
LBB222:
	.loc 2 822 0
	call	_Perl_get_context
LVL2678:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2679:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L766
	.loc 2 822 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2680:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2681:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL2682:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2683:
	mov	ebp, eax
L757:
LVL2684:
	.loc 2 824 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2685:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2686:
	lea	esi, [8+edi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L758
	.loc 2 824 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2687:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2688:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	esi, DWORD PTR [eax+12]
LVL2689:
	.loc 2 829 0 is_stmt 1 discriminator 1
	cmp	ebx, 3
	jg	L767
L763:
	.loc 2 830 0
	xor	eax, eax
LVL2690:
L760:
	.loc 2 836 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_int_new
LVL2691:
	mov	ebp, eax
LVL2692:
	.loc 2 837 0
	call	_Perl_get_context
LVL2693:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2694:
	lea	ebx, [0+edi*4]
	mov	esi, DWORD PTR [eax]
LVL2695:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], ebp
	call	_purple_perl_bless_object
LVL2696:
	mov	DWORD PTR [esi], eax
	.loc 2 838 0
	call	_Perl_get_context
LVL2697:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2698:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2699:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2700:
LBE222:
LBB223:
	.loc 2 840 0
	call	_Perl_get_context
LVL2701:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2702:
	mov	esi, eax
	call	_Perl_get_context
LVL2703:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2704:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE223:
	.loc 2 841 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L768
	add	esp, 44
LCFI665:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI666:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI667:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI668:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2705:
	pop	ebp
LCFI669:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2706:
	ret
LVL2707:
	.p2align 2,,3
L766:
LCFI670:
	.cfi_restore_state
LBB224:
	.loc 2 822 0 discriminator 1
	call	_Perl_get_context
LVL2708:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2709:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	ebp, DWORD PTR [eax+12]
	jmp	L757
LVL2710:
	.p2align 2,,3
L758:
	.loc 2 824 0 discriminator 2
	call	_Perl_get_context
LVL2711:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2712:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL2713:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2714:
	mov	esi, eax
LVL2715:
	.loc 2 829 0 discriminator 2
	cmp	ebx, 3
	jle	L763
LVL2716:
L767:
	.loc 2 832 0
	call	_Perl_get_context
LVL2717:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2718:
	lea	ebx, [12+edi*4]
LVL2719:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	je	L761
	.loc 2 832 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2720:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2721:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L760
	.p2align 2,,3
L761:
	.loc 2 832 0 discriminator 2
	call	_Perl_get_context
LVL2722:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2723:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2724:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2725:
	jmp	L760
LVL2726:
L768:
LBE224:
	.loc 2 841 0 is_stmt 1
	call	___stack_chk_fail
LVL2727:
L765:
	.loc 2 820 0
	call	_Perl_get_context
LVL2728:
	mov	edx, OFFSET FLAT:LC33
	mov	eax, ebp
	call	_S_croak_xs_usage.isra.0
LVL2729:
	.cfi_endproc
LFE122:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_set_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_set_value:
LFB121:
	.loc 2 799 0
	.cfi_startproc
LVL2730:
	push	ebp
LCFI671:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI672:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI673:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI674:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI675:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 799 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 800 0
	call	_Perl_get_context
LVL2731:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2732:
	mov	ebp, DWORD PTR [eax]
LVL2733:
	call	_Perl_get_context
LVL2734:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2735:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2736:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2737:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2738:
	lea	esi, [ebx+1]
LVL2739:
	mov	eax, DWORD PTR [eax]
LVL2740:
	lea	eax, [eax+ebx*4]
LVL2741:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 801 0
	cmp	edx, 2
	jne	L775
LBB225:
	.loc 2 804 0
	call	_Perl_get_context
LVL2742:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2743:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2744:
	mov	edi, eax
LVL2745:
	.loc 2 806 0
	call	_Perl_get_context
LVL2746:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2747:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L776
	.loc 2 806 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2748:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2749:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2750:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2751:
L772:
	.loc 2 809 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_choice_set_value
LVL2752:
LBE225:
LBB226:
	.loc 2 811 0 discriminator 3
	call	_Perl_get_context
LVL2753:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2754:
	mov	ebx, eax
	call	_Perl_get_context
LVL2755:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2756:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE226:
	.loc 2 812 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L777
	.loc 2 812 0 is_stmt 0
	add	esp, 44
LCFI676:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI677:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI678:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2757:
	pop	edi
LCFI679:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2758:
	pop	ebp
LCFI680:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2759:
	ret
LVL2760:
	.p2align 2,,3
L776:
LCFI681:
	.cfi_restore_state
LBB227:
	.loc 2 806 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2761:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2762:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L772
LVL2763:
L775:
LBE227:
	.loc 2 802 0
	call	_Perl_get_context
LVL2764:
	mov	edx, OFFSET FLAT:LC15
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2765:
L777:
	.loc 2 812 0
	call	___stack_chk_fail
LVL2766:
	.cfi_endproc
LFE121:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_set_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_set_default_value:
LFB120:
	.loc 2 781 0
	.cfi_startproc
LVL2767:
	push	ebp
LCFI682:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI683:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI684:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI685:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI686:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 781 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 782 0
	call	_Perl_get_context
LVL2768:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2769:
	mov	ebp, DWORD PTR [eax]
LVL2770:
	call	_Perl_get_context
LVL2771:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2772:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2773:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2774:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2775:
	lea	esi, [ebx+1]
LVL2776:
	mov	eax, DWORD PTR [eax]
LVL2777:
	lea	eax, [eax+ebx*4]
LVL2778:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 783 0
	cmp	edx, 2
	jne	L784
LBB228:
	.loc 2 786 0
	call	_Perl_get_context
LVL2779:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2780:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2781:
	mov	edi, eax
LVL2782:
	.loc 2 788 0
	call	_Perl_get_context
LVL2783:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2784:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L785
	.loc 2 788 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2785:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2786:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2787:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL2788:
L781:
	.loc 2 791 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_choice_set_default_value
LVL2789:
LBE228:
LBB229:
	.loc 2 793 0 discriminator 3
	call	_Perl_get_context
LVL2790:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2791:
	mov	ebx, eax
	call	_Perl_get_context
LVL2792:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2793:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE229:
	.loc 2 794 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L786
	.loc 2 794 0 is_stmt 0
	add	esp, 44
LCFI687:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI688:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI689:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2794:
	pop	edi
LCFI690:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2795:
	pop	ebp
LCFI691:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2796:
	ret
LVL2797:
	.p2align 2,,3
L785:
LCFI692:
	.cfi_restore_state
LBB230:
	.loc 2 788 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2798:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2799:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L781
LVL2800:
L784:
LBE230:
	.loc 2 784 0
	call	_Perl_get_context
LVL2801:
	mov	edx, OFFSET FLAT:LC20
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2802:
L786:
	.loc 2 794 0
	call	___stack_chk_fail
LVL2803:
	.cfi_endproc
LFE120:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_get_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_get_value:
LFB119:
	.loc 2 762 0
	.cfi_startproc
LVL2804:
	push	ebp
LCFI693:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI694:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI695:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI696:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI697:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 762 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 763 0
	call	_Perl_get_context
LVL2805:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2806:
	mov	ebp, DWORD PTR [eax]
LVL2807:
	call	_Perl_get_context
LVL2808:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2809:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2810:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2811:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2812:
	lea	esi, [ebx+1]
LVL2813:
	mov	eax, DWORD PTR [eax]
LVL2814:
	lea	eax, [eax+ebx*4]
LVL2815:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 764 0
	dec	edx
	jne	L797
LBB231:
	.loc 2 767 0
	call	_Perl_get_context
LVL2816:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2817:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2818:
	mov	ebp, eax
LVL2819:
	.loc 2 770 0
	call	_Perl_get_context
LVL2820:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2821:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L798
	.loc 2 770 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2822:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL2823:
	mov	ebx, eax
L790:
LVL2824:
	.loc 2 772 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_choice_get_value
LVL2825:
	mov	ebp, eax
LVL2826:
	.loc 2 773 0 discriminator 3
	call	_Perl_get_context
LVL2827:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2828:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL2829:
LBB232:
	call	_Perl_get_context
LVL2830:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL2831:
LBB233:
	test	BYTE PTR [ebx+10], 64
	je	L791
	.loc 2 773 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2832:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL2833:
L791:
	.loc 2 773 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL2834:
LBE233:
LBE232:
LBE231:
LBB234:
	.loc 2 775 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL2835:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2836:
	mov	ebx, eax
LVL2837:
	call	_Perl_get_context
LVL2838:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2839:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE234:
	.loc 2 776 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L799
	.loc 2 776 0 is_stmt 0
	add	esp, 44
LCFI698:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI699:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI700:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2840:
	pop	edi
LCFI701:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI702:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2841:
	ret
LVL2842:
	.p2align 2,,3
L798:
LCFI703:
	.cfi_restore_state
LBB235:
	.loc 2 770 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2843:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL2844:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL2845:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2846:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L790
LVL2847:
L799:
LBE235:
	.loc 2 776 0
	call	___stack_chk_fail
LVL2848:
L797:
	.loc 2 765 0
	call	_Perl_get_context
LVL2849:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2850:
	.cfi_endproc
LFE119:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_get_labels;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_get_labels:
LFB118:
	.loc 2 737 0
	.cfi_startproc
LVL2851:
	push	ebp
LCFI704:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI705:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI706:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI707:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI708:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 737 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 738 0
	call	_Perl_get_context
LVL2852:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2853:
	mov	esi, DWORD PTR [eax]
LVL2854:
	call	_Perl_get_context
LVL2855:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2856:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2857:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2858:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2859:
	lea	ebp, [ebx+1]
LVL2860:
	mov	eax, DWORD PTR [eax]
LVL2861:
	lea	eax, [eax+ebx*4]
LVL2862:
	mov	edx, esi
	sub	edx, eax
	sar	edx, 2
	.loc 2 739 0
	dec	edx
	jne	L813
	.loc 2 742 0
	sub	esi, 4
LVL2863:
LBB236:
	.loc 2 744 0
	call	_Perl_get_context
LVL2864:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2865:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2866:
	.loc 1 308 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_choice_get_labels
LVL2867:
	mov	ebx, eax
LVL2868:
	test	eax, eax
	jne	L809
	jmp	L802
LVL2869:
	.p2align 2,,3
L806:
LBB237:
	.loc 1 309 0
	mov	edi, esi
LVL2870:
L803:
	.loc 1 309 0 is_stmt 0 discriminator 2
	lea	esi, [edi+4]
LVL2871:
	mov	ebp, DWORD PTR [ebx]
	call	_Perl_get_context
LVL2872:
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_newSVpv
LVL2873:
	mov	ebp, eax
	call	_Perl_get_context
LVL2874:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL2875:
	mov	DWORD PTR [edi+4], eax
LBE237:
	.loc 1 308 0 is_stmt 1 discriminator 2
	mov	ebx, DWORD PTR [ebx+4]
LVL2876:
	test	ebx, ebx
	je	L802
L809:
LBB238:
	.loc 1 309 0
	call	_Perl_get_context
LVL2877:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_max_ptr
LVL2878:
	mov	eax, DWORD PTR [eax]
	sub	eax, esi
	cmp	eax, 3
	jg	L806
	.loc 1 309 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2879:
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_stack_grow
LVL2880:
	mov	edi, eax
LVL2881:
	jmp	L803
LVL2882:
	.p2align 2,,3
L802:
LBE238:
	.loc 2 754 0 is_stmt 1
	call	_Perl_get_context
LVL2883:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2884:
	mov	DWORD PTR [eax], esi
LBE236:
	.loc 2 757 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L814
	add	esp, 44
LCFI709:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI710:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL2885:
	pop	esi
LCFI711:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2886:
	pop	edi
LCFI712:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI713:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL2887:
L813:
LCFI714:
	.cfi_restore_state
	.loc 2 740 0
	call	_Perl_get_context
LVL2888:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2889:
L814:
	.loc 2 757 0
	call	___stack_chk_fail
LVL2890:
	.cfi_endproc
LFE118:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_get_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_get_default_value:
LFB117:
	.loc 2 718 0
	.cfi_startproc
LVL2891:
	push	ebp
LCFI715:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI716:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI717:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI718:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI719:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 718 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 719 0
	call	_Perl_get_context
LVL2892:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2893:
	mov	ebp, DWORD PTR [eax]
LVL2894:
	call	_Perl_get_context
LVL2895:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2896:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2897:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2898:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2899:
	lea	esi, [ebx+1]
LVL2900:
	mov	eax, DWORD PTR [eax]
LVL2901:
	lea	eax, [eax+ebx*4]
LVL2902:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 720 0
	dec	edx
	jne	L825
LBB239:
	.loc 2 723 0
	call	_Perl_get_context
LVL2903:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2904:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2905:
	mov	ebp, eax
LVL2906:
	.loc 2 726 0
	call	_Perl_get_context
LVL2907:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2908:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L826
	.loc 2 726 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2909:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL2910:
	mov	ebx, eax
L818:
LVL2911:
	.loc 2 728 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_choice_get_default_value
LVL2912:
	mov	ebp, eax
LVL2913:
	.loc 2 729 0 discriminator 3
	call	_Perl_get_context
LVL2914:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2915:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL2916:
LBB240:
	call	_Perl_get_context
LVL2917:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL2918:
LBB241:
	test	BYTE PTR [ebx+10], 64
	je	L819
	.loc 2 729 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2919:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL2920:
L819:
	.loc 2 729 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL2921:
LBE241:
LBE240:
LBE239:
LBB242:
	.loc 2 731 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL2922:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2923:
	mov	ebx, eax
LVL2924:
	call	_Perl_get_context
LVL2925:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2926:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE242:
	.loc 2 732 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L827
	.loc 2 732 0 is_stmt 0
	add	esp, 44
LCFI720:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI721:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI722:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2927:
	pop	edi
LCFI723:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI724:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2928:
	ret
LVL2929:
	.p2align 2,,3
L826:
LCFI725:
	.cfi_restore_state
LBB243:
	.loc 2 726 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2930:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL2931:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL2932:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL2933:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L818
LVL2934:
L827:
LBE243:
	.loc 2 732 0
	call	___stack_chk_fail
LVL2935:
L825:
	.loc 2 721 0
	call	_Perl_get_context
LVL2936:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2937:
	.cfi_endproc
LFE117:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_add;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_add:
LFB116:
	.loc 2 700 0
	.cfi_startproc
LVL2938:
	push	ebp
LCFI726:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI727:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI728:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI729:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI730:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 700 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 701 0
	call	_Perl_get_context
LVL2939:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2940:
	mov	ebp, DWORD PTR [eax]
LVL2941:
	call	_Perl_get_context
LVL2942:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2943:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL2944:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2945:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2946:
	lea	esi, [ebx+1]
LVL2947:
	mov	eax, DWORD PTR [eax]
LVL2948:
	lea	eax, [eax+ebx*4]
LVL2949:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 702 0
	cmp	edx, 2
	jne	L834
LBB244:
	.loc 2 705 0
	call	_Perl_get_context
LVL2950:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2951:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL2952:
	mov	edi, eax
LVL2953:
	.loc 2 707 0
	call	_Perl_get_context
LVL2954:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2955:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	jne	L835
	.loc 2 707 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2956:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2957:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL2958:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2959:
L831:
	.loc 2 710 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_choice_add
LVL2960:
LBE244:
LBB245:
	.loc 2 712 0 discriminator 3
	call	_Perl_get_context
LVL2961:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2962:
	mov	ebx, eax
	call	_Perl_get_context
LVL2963:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2964:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE245:
	.loc 2 713 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L836
	.loc 2 713 0 is_stmt 0
	add	esp, 44
LCFI731:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI732:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI733:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL2965:
	pop	edi
LCFI734:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL2966:
	pop	ebp
LCFI735:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL2967:
	ret
LVL2968:
	.p2align 2,,3
L835:
LCFI736:
	.cfi_restore_state
LBB246:
	.loc 2 707 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL2969:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2970:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	jmp	L831
LVL2971:
L834:
LBE246:
	.loc 2 703 0
	call	_Perl_get_context
LVL2972:
	mov	edx, OFFSET FLAT:LC25
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL2973:
L836:
	.loc 2 713 0
	call	___stack_chk_fail
LVL2974:
	.cfi_endproc
LFE116:
	.section .rdata,"dr"
	.align 4
LC34:
	.ascii "class, id, text, default_value = 0\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_choice_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_choice_new:
LFB115:
	.loc 2 671 0
	.cfi_startproc
LVL2975:
	push	ebp
LCFI737:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI738:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI739:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI740:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI741:
	.cfi_def_cfa_offset 64
	mov	ebp, DWORD PTR [esp+68]
	.loc 2 671 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 672 0
	call	_Perl_get_context
LVL2976:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL2977:
	mov	ebx, DWORD PTR [eax]
LVL2978:
	call	_Perl_get_context
LVL2979:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL2980:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL2981:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL2982:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2983:
	lea	edi, [esi+1]
LVL2984:
	mov	eax, DWORD PTR [eax]
LVL2985:
	lea	eax, [eax+esi*4]
LVL2986:
	sub	ebx, eax
LVL2987:
	sar	ebx, 2
LVL2988:
	.loc 2 673 0
	lea	eax, [ebx-3]
	cmp	eax, 1
	ja	L848
LBB247:
	.loc 2 676 0
	call	_Perl_get_context
LVL2989:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2990:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L849
	.loc 2 676 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL2991:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2992:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL2993:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL2994:
	mov	ebp, eax
L840:
LVL2995:
	.loc 2 678 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL2996:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2997:
	lea	esi, [8+edi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L841
	.loc 2 678 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL2998:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL2999:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	esi, DWORD PTR [eax+12]
LVL3000:
	.loc 2 683 0 is_stmt 1 discriminator 1
	cmp	ebx, 3
	jg	L850
L846:
	.loc 2 684 0
	xor	eax, eax
LVL3001:
L843:
	.loc 2 690 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_choice_new
LVL3002:
	mov	ebp, eax
LVL3003:
	.loc 2 691 0
	call	_Perl_get_context
LVL3004:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3005:
	lea	ebx, [0+edi*4]
	mov	esi, DWORD PTR [eax]
LVL3006:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], ebp
	call	_purple_perl_bless_object
LVL3007:
	mov	DWORD PTR [esi], eax
	.loc 2 692 0
	call	_Perl_get_context
LVL3008:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3009:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3010:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL3011:
LBE247:
LBB248:
	.loc 2 694 0
	call	_Perl_get_context
LVL3012:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3013:
	mov	esi, eax
	call	_Perl_get_context
LVL3014:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3015:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE248:
	.loc 2 695 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L851
	add	esp, 44
LCFI742:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI743:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI744:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI745:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3016:
	pop	ebp
LCFI746:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3017:
	ret
LVL3018:
	.p2align 2,,3
L849:
LCFI747:
	.cfi_restore_state
LBB249:
	.loc 2 676 0 discriminator 1
	call	_Perl_get_context
LVL3019:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3020:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	ebp, DWORD PTR [eax+12]
	jmp	L840
LVL3021:
	.p2align 2,,3
L841:
	.loc 2 678 0 discriminator 2
	call	_Perl_get_context
LVL3022:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3023:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3024:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3025:
	mov	esi, eax
LVL3026:
	.loc 2 683 0 discriminator 2
	cmp	ebx, 3
	jle	L846
LVL3027:
L850:
	.loc 2 686 0
	call	_Perl_get_context
LVL3028:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3029:
	lea	ebx, [12+edi*4]
LVL3030:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	je	L844
	.loc 2 686 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3031:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3032:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L843
	.p2align 2,,3
L844:
	.loc 2 686 0 discriminator 2
	call	_Perl_get_context
LVL3033:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3034:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3035:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL3036:
	jmp	L843
LVL3037:
L851:
LBE249:
	.loc 2 695 0 is_stmt 1
	call	___stack_chk_fail
LVL3038:
L848:
	.loc 2 674 0
	call	_Perl_get_context
LVL3039:
	mov	edx, OFFSET FLAT:LC34
	mov	eax, ebp
	call	_S_croak_xs_usage.isra.0
LVL3040:
	.cfi_endproc
LFE115:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_bool_set_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_bool_set_value:
LFB114:
	.loc 2 653 0
	.cfi_startproc
LVL3041:
	push	ebp
LCFI748:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI749:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI750:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI751:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI752:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 653 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 654 0
	call	_Perl_get_context
LVL3042:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3043:
	mov	ebp, DWORD PTR [eax]
LVL3044:
	call	_Perl_get_context
LVL3045:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3046:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL3047:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3048:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3049:
	lea	esi, [ebx+1]
LVL3050:
	mov	eax, DWORD PTR [eax]
LVL3051:
	lea	eax, [eax+ebx*4]
LVL3052:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 655 0
	cmp	edx, 2
	jne	L870
LBB250:
	.loc 2 658 0
	call	_Perl_get_context
LVL3053:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3054:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3055:
	mov	edi, eax
LVL3056:
	.loc 2 660 0
	call	_Perl_get_context
LVL3057:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3058:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+ebx]
LVL3059:
	test	ebp, ebp
	je	L861
	.loc 2 660 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3060:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3061:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L855
LBB251:
	.loc 2 660 0 discriminator 3
	call	_Perl_get_context
LVL3062:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3063:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL3064:
	test	eax, eax
	je	L861
	.loc 2 660 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3065:
	cmp	eax, 1
	jbe	L871
L857:
LBE251:
	.loc 2 660 0
	mov	eax, 1
L854:
LVL3066:
	.loc 2 663 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_bool_set_value
LVL3067:
LBE250:
LBB254:
	.loc 2 665 0 discriminator 15
	call	_Perl_get_context
LVL3068:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3069:
	mov	ebx, eax
	call	_Perl_get_context
LVL3070:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3071:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE254:
	.loc 2 666 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L872
	.loc 2 666 0 is_stmt 0
	add	esp, 44
LCFI753:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI754:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI755:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3072:
	pop	edi
LCFI756:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3073:
	pop	ebp
LCFI757:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL3074:
	.p2align 2,,3
L855:
LCFI758:
	.cfi_restore_state
LBB255:
	.loc 2 660 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL3075:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3076:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L873
	.loc 2 660 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL3077:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3078:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L859
	.loc 2 660 0 discriminator 10
	call	_Perl_get_context
LVL3079:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3080:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L854
	.p2align 2,,3
L871:
LBB252:
	.loc 2 660 0 discriminator 4
	test	eax, eax
	jne	L874
	.p2align 2,,3
L861:
LBE252:
	.loc 2 660 0
	xor	eax, eax
	jmp	L854
	.p2align 2,,3
L873:
	.loc 2 660 0 discriminator 8
	call	_Perl_get_context
LVL3081:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3082:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+16]
	xor	eax, eax
	test	ebx, ebx
	setne	al
	jmp	L854
	.p2align 2,,3
L859:
	.loc 2 660 0 discriminator 11
	call	_Perl_get_context
LVL3083:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3084:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3085:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL3086:
	movsx	eax, al
	jmp	L854
	.p2align 2,,3
L874:
LBB253:
	.loc 2 660 0 discriminator 1
	call	_Perl_get_context
LVL3087:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3088:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L857
LBE253:
	.loc 2 660 0
	xor	eax, eax
	jmp	L854
LVL3089:
L872:
LBE255:
	.loc 2 666 0 is_stmt 1
	call	___stack_chk_fail
LVL3090:
L870:
	.loc 2 656 0
	call	_Perl_get_context
LVL3091:
	mov	edx, OFFSET FLAT:LC15
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3092:
	.cfi_endproc
LFE114:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_bool_set_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_bool_set_default_value:
LFB113:
	.loc 2 635 0
	.cfi_startproc
LVL3093:
	push	ebp
LCFI759:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI760:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI761:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI762:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI763:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 635 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 636 0
	call	_Perl_get_context
LVL3094:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3095:
	mov	ebp, DWORD PTR [eax]
LVL3096:
	call	_Perl_get_context
LVL3097:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3098:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL3099:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3100:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3101:
	lea	esi, [ebx+1]
LVL3102:
	mov	eax, DWORD PTR [eax]
LVL3103:
	lea	eax, [eax+ebx*4]
LVL3104:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 637 0
	cmp	edx, 2
	jne	L893
LBB256:
	.loc 2 640 0
	call	_Perl_get_context
LVL3105:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3106:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3107:
	mov	edi, eax
LVL3108:
	.loc 2 642 0
	call	_Perl_get_context
LVL3109:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3110:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	eax, eax
	je	L884
	.loc 2 642 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3111:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3112:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L878
LBB257:
	.loc 2 642 0 discriminator 3
	call	_Perl_get_context
LVL3113:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3114:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL3115:
	test	eax, eax
	je	L884
	.loc 2 642 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3116:
	cmp	eax, 1
	jbe	L894
L880:
LBE257:
	.loc 2 642 0
	mov	eax, 1
L877:
LVL3117:
	.loc 2 645 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_bool_set_default_value
LVL3118:
LBE256:
LBB260:
	.loc 2 647 0 discriminator 15
	call	_Perl_get_context
LVL3119:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3120:
	mov	ebx, eax
	call	_Perl_get_context
LVL3121:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3122:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE260:
	.loc 2 648 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L895
	.loc 2 648 0 is_stmt 0
	add	esp, 44
LCFI764:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI765:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI766:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3123:
	pop	edi
LCFI767:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3124:
	pop	ebp
LCFI768:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3125:
	ret
LVL3126:
	.p2align 2,,3
L878:
LCFI769:
	.cfi_restore_state
LBB261:
	.loc 2 642 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL3127:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3128:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L896
	.loc 2 642 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL3129:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3130:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L882
	.loc 2 642 0 discriminator 10
	call	_Perl_get_context
LVL3131:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3132:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L877
	.p2align 2,,3
L894:
LBB258:
	.loc 2 642 0 discriminator 4
	test	eax, eax
	jne	L897
	.p2align 2,,3
L884:
LBE258:
	.loc 2 642 0
	xor	eax, eax
	jmp	L877
	.p2align 2,,3
L896:
	.loc 2 642 0 discriminator 8
	call	_Perl_get_context
LVL3133:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3134:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L877
	.p2align 2,,3
L882:
	.loc 2 642 0 discriminator 11
	call	_Perl_get_context
LVL3135:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3136:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3137:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL3138:
	movsx	eax, al
	jmp	L877
	.p2align 2,,3
L897:
LBB259:
	.loc 2 642 0 discriminator 1
	call	_Perl_get_context
LVL3139:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3140:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L880
LBE259:
	.loc 2 642 0
	xor	eax, eax
	jmp	L877
LVL3141:
L895:
LBE261:
	.loc 2 648 0 is_stmt 1
	call	___stack_chk_fail
LVL3142:
L893:
	.loc 2 638 0
	call	_Perl_get_context
LVL3143:
	mov	edx, OFFSET FLAT:LC20
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3144:
	.cfi_endproc
LFE113:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_bool_get_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_bool_get_value:
LFB112:
	.loc 2 617 0
	.cfi_startproc
LVL3145:
	push	ebp
LCFI770:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI771:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI772:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI773:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI774:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 617 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 618 0
	call	_Perl_get_context
LVL3146:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3147:
	mov	ebp, DWORD PTR [eax]
LVL3148:
	call	_Perl_get_context
LVL3149:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3150:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3151:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3152:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3153:
	lea	ebx, [esi+1]
LVL3154:
	mov	eax, DWORD PTR [eax]
LVL3155:
	lea	eax, [eax+esi*4]
LVL3156:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 619 0
	dec	edx
	jne	L904
LBB262:
	.loc 2 622 0
	call	_Perl_get_context
LVL3157:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3158:
	sal	ebx, 2
LVL3159:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3160:
	.loc 2 626 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_bool_get_value
LVL3161:
	mov	edi, eax
LVL3162:
	.loc 2 627 0
	call	_Perl_get_context
LVL3163:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3164:
	mov	esi, DWORD PTR [eax]
LVL3165:
	add	esi, ebx
	test	edi, edi
	jne	L905
	.loc 2 627 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3166:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL3167:
L901:
	.loc 2 627 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL3168:
LBE262:
LBB263:
	.loc 2 629 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3169:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3170:
	mov	esi, eax
	call	_Perl_get_context
LVL3171:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3172:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE263:
	.loc 2 630 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L906
	.loc 2 630 0 is_stmt 0
	add	esp, 44
LCFI775:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI776:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI777:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI778:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3173:
	pop	ebp
LCFI779:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3174:
	ret
LVL3175:
	.p2align 2,,3
L905:
LCFI780:
	.cfi_restore_state
LBB264:
	.loc 2 627 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3176:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL3177:
	jmp	L901
LVL3178:
L904:
LBE264:
	.loc 2 620 0
	call	_Perl_get_context
LVL3179:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3180:
L906:
	.loc 2 630 0
	call	___stack_chk_fail
LVL3181:
	.cfi_endproc
LFE112:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_bool_get_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_bool_get_default_value:
LFB111:
	.loc 2 599 0
	.cfi_startproc
LVL3182:
	push	ebp
LCFI781:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI782:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI783:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI784:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI785:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 599 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 600 0
	call	_Perl_get_context
LVL3183:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3184:
	mov	ebp, DWORD PTR [eax]
LVL3185:
	call	_Perl_get_context
LVL3186:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3187:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3188:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3189:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3190:
	lea	ebx, [esi+1]
LVL3191:
	mov	eax, DWORD PTR [eax]
LVL3192:
	lea	eax, [eax+esi*4]
LVL3193:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 601 0
	dec	edx
	jne	L913
LBB265:
	.loc 2 604 0
	call	_Perl_get_context
LVL3194:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3195:
	sal	ebx, 2
LVL3196:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3197:
	.loc 2 608 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_bool_get_default_value
LVL3198:
	mov	edi, eax
LVL3199:
	.loc 2 609 0
	call	_Perl_get_context
LVL3200:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3201:
	mov	esi, DWORD PTR [eax]
LVL3202:
	add	esi, ebx
	test	edi, edi
	jne	L914
	.loc 2 609 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3203:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL3204:
L910:
	.loc 2 609 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL3205:
LBE265:
LBB266:
	.loc 2 611 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3206:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3207:
	mov	esi, eax
	call	_Perl_get_context
LVL3208:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3209:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE266:
	.loc 2 612 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L915
	.loc 2 612 0 is_stmt 0
	add	esp, 44
LCFI786:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI787:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI788:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI789:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3210:
	pop	ebp
LCFI790:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3211:
	ret
LVL3212:
	.p2align 2,,3
L914:
LCFI791:
	.cfi_restore_state
LBB267:
	.loc 2 609 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3213:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL3214:
	jmp	L910
LVL3215:
L913:
LBE267:
	.loc 2 602 0
	call	_Perl_get_context
LVL3216:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3217:
L915:
	.loc 2 612 0
	call	___stack_chk_fail
LVL3218:
	.cfi_endproc
LFE111:
	.section .rdata,"dr"
	.align 4
LC35:
	.ascii "class, id, text, default_value = TRUE\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_bool_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_bool_new:
LFB110:
	.loc 2 570 0
	.cfi_startproc
LVL3219:
	push	ebp
LCFI792:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI793:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI794:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI795:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI796:
	.cfi_def_cfa_offset 64
	mov	ebp, DWORD PTR [esp+68]
	.loc 2 570 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 571 0
	call	_Perl_get_context
LVL3220:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3221:
	mov	ebx, DWORD PTR [eax]
LVL3222:
	call	_Perl_get_context
LVL3223:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3224:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3225:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3226:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3227:
	lea	edi, [esi+1]
LVL3228:
	mov	eax, DWORD PTR [eax]
LVL3229:
	lea	eax, [eax+esi*4]
LVL3230:
	sub	ebx, eax
LVL3231:
	sar	ebx, 2
LVL3232:
	.loc 2 572 0
	lea	eax, [ebx-3]
	cmp	eax, 1
	ja	L939
LBB268:
	.loc 2 575 0
	call	_Perl_get_context
LVL3233:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3234:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L940
	.loc 2 575 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3235:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3236:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3237:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3238:
	mov	ebp, eax
L919:
LVL3239:
	.loc 2 577 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3240:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3241:
	lea	esi, [8+edi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L920
	.loc 2 577 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3242:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3243:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	esi, DWORD PTR [eax+12]
LVL3244:
	.loc 2 582 0 is_stmt 1 discriminator 1
	cmp	ebx, 3
	jg	L941
LVL3245:
L925:
	.loc 2 585 0
	mov	eax, 1
L922:
LVL3246:
	.loc 2 589 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_bool_new
LVL3247:
	mov	ebp, eax
LVL3248:
	.loc 2 590 0
	call	_Perl_get_context
LVL3249:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3250:
	lea	ebx, [0+edi*4]
	mov	esi, DWORD PTR [eax]
LVL3251:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], ebp
	call	_purple_perl_bless_object
LVL3252:
	mov	DWORD PTR [esi], eax
	.loc 2 591 0
	call	_Perl_get_context
LVL3253:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3254:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3255:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL3256:
LBE268:
LBB270:
	.loc 2 593 0
	call	_Perl_get_context
LVL3257:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3258:
	mov	esi, eax
	call	_Perl_get_context
LVL3259:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3260:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE270:
	.loc 2 594 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L942
	add	esp, 44
LCFI797:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI798:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI799:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI800:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3261:
	pop	ebp
LCFI801:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3262:
	ret
LVL3263:
	.p2align 2,,3
L940:
LCFI802:
	.cfi_restore_state
LBB271:
	.loc 2 575 0 discriminator 1
	call	_Perl_get_context
LVL3264:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3265:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	ebp, DWORD PTR [eax+12]
	jmp	L919
LVL3266:
	.p2align 2,,3
L920:
	.loc 2 577 0 discriminator 2
	call	_Perl_get_context
LVL3267:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3268:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3269:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3270:
	mov	esi, eax
LVL3271:
	.loc 2 582 0 discriminator 2
	cmp	ebx, 3
	jle	L925
LVL3272:
L941:
	.loc 2 585 0
	call	_Perl_get_context
LVL3273:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3274:
	lea	ebx, [12+edi*4]
LVL3275:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	eax, eax
	je	L930
	.loc 2 585 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3276:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3277:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L923
LBB269:
	.loc 2 585 0 discriminator 3
	call	_Perl_get_context
LVL3278:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3279:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL3280:
	test	eax, eax
	je	L930
	.loc 2 585 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3281:
	cmp	eax, 1
	ja	L925
	.loc 2 585 0 discriminator 4
	test	eax, eax
	je	L930
	.loc 2 585 0 discriminator 1
	call	_Perl_get_context
LVL3282:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3283:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L925
	.p2align 2,,3
L930:
LBE269:
	.loc 2 585 0
	xor	eax, eax
	jmp	L922
	.p2align 2,,3
L923:
	.loc 2 585 0 discriminator 4
	call	_Perl_get_context
LVL3284:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3285:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	je	L926
	.loc 2 585 0 discriminator 8
	call	_Perl_get_context
LVL3286:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3287:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L922
	.p2align 2,,3
L926:
	.loc 2 585 0 discriminator 9
	call	_Perl_get_context
LVL3288:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3289:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L927
	.loc 2 585 0 discriminator 10
	call	_Perl_get_context
LVL3290:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3291:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L922
	.p2align 2,,3
L927:
	.loc 2 585 0 discriminator 11
	call	_Perl_get_context
LVL3292:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3293:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3294:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL3295:
	movsx	eax, al
	jmp	L922
LVL3296:
L939:
LBE271:
	.loc 2 573 0 is_stmt 1
	call	_Perl_get_context
LVL3297:
	mov	edx, OFFSET FLAT:LC35
	mov	eax, ebp
	call	_S_croak_xs_usage.isra.0
LVL3298:
L942:
	.loc 2 594 0
	call	___stack_chk_fail
LVL3299:
	.cfi_endproc
LFE110:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_set_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_set_value:
LFB109:
	.loc 2 552 0
	.cfi_startproc
LVL3300:
	push	ebp
LCFI803:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI804:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI805:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI806:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI807:
	.cfi_def_cfa_offset 80
	mov	eax, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+28], eax
	.loc 2 552 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 553 0
	call	_Perl_get_context
LVL3301:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3302:
	mov	edi, DWORD PTR [eax]
LVL3303:
	call	_Perl_get_context
LVL3304:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3305:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL3306:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL3307:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3308:
	lea	esi, [ebx+1]
LVL3309:
	lea	ebp, [0+ebx*4]
	mov	eax, DWORD PTR [eax]
LVL3310:
	add	eax, ebp
LVL3311:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 554 0
	cmp	edx, 2
	jne	L947
LBB272:
	.loc 2 557 0
	call	_Perl_get_context
LVL3312:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3313:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3314:
	mov	esi, eax
LVL3315:
	.loc 2 559 0
	call	_Perl_get_context
LVL3316:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3317:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3318:
	.loc 2 562 0
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_request_field_account_set_value
LVL3319:
LBE272:
LBB273:
	.loc 2 564 0
	call	_Perl_get_context
LVL3320:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3321:
	mov	ebx, eax
LVL3322:
	call	_Perl_get_context
LVL3323:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3324:
	add	ebp, DWORD PTR [eax]
	mov	DWORD PTR [ebx], ebp
LBE273:
	.loc 2 565 0
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L948
	add	esp, 60
LCFI808:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI809:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI810:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3325:
	pop	edi
LCFI811:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3326:
	pop	ebp
LCFI812:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL3327:
L947:
LCFI813:
	.cfi_restore_state
	.loc 2 555 0
	call	_Perl_get_context
LVL3328:
	mov	edx, OFFSET FLAT:LC15
	mov	eax, DWORD PTR [esp+28]
	call	_S_croak_xs_usage.isra.0
LVL3329:
L948:
	.loc 2 565 0
	call	___stack_chk_fail
LVL3330:
	.cfi_endproc
LFE109:
	.section .rdata,"dr"
LC36:
	.ascii "field, show_all\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_set_show_all;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_set_show_all:
LFB108:
	.loc 2 534 0
	.cfi_startproc
LVL3331:
	push	ebp
LCFI814:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI815:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI816:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI817:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI818:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 534 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 535 0
	call	_Perl_get_context
LVL3332:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3333:
	mov	ebp, DWORD PTR [eax]
LVL3334:
	call	_Perl_get_context
LVL3335:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3336:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL3337:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3338:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3339:
	lea	esi, [ebx+1]
LVL3340:
	mov	eax, DWORD PTR [eax]
LVL3341:
	lea	eax, [eax+ebx*4]
LVL3342:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 536 0
	cmp	edx, 2
	jne	L967
LBB274:
	.loc 2 539 0
	call	_Perl_get_context
LVL3343:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3344:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3345:
	mov	edi, eax
LVL3346:
	.loc 2 541 0
	call	_Perl_get_context
LVL3347:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3348:
	lea	ebx, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	eax, eax
	je	L958
	.loc 2 541 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3349:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3350:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 4
	je	L952
LBB275:
	.loc 2 541 0 discriminator 3
	call	_Perl_get_context
LVL3351:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3352:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
LVL3353:
	test	eax, eax
	je	L958
	.loc 2 541 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3354:
	cmp	eax, 1
	jbe	L968
L954:
LBE275:
	.loc 2 541 0
	mov	eax, 1
L951:
LVL3355:
	.loc 2 544 0 is_stmt 1 discriminator 15
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_field_account_set_show_all
LVL3356:
LBE274:
LBB278:
	.loc 2 546 0 discriminator 15
	call	_Perl_get_context
LVL3357:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3358:
	mov	ebx, eax
	call	_Perl_get_context
LVL3359:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3360:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE278:
	.loc 2 547 0 discriminator 15
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L969
	.loc 2 547 0 is_stmt 0
	add	esp, 44
LCFI819:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI820:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI821:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3361:
	pop	edi
LCFI822:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3362:
	pop	ebp
LCFI823:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3363:
	ret
LVL3364:
	.p2align 2,,3
L952:
LCFI824:
	.cfi_restore_state
LBB279:
	.loc 2 541 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL3365:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3366:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L970
	.loc 2 541 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL3367:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3368:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 2
	je	L956
	.loc 2 541 0 discriminator 10
	call	_Perl_get_context
LVL3369:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3370:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	al
	movzx	eax, al
	jmp	L951
	.p2align 2,,3
L968:
LBB276:
	.loc 2 541 0 discriminator 4
	test	eax, eax
	jne	L971
	.p2align 2,,3
L958:
LBE276:
	.loc 2 541 0
	xor	eax, eax
	jmp	L951
	.p2align 2,,3
L970:
	.loc 2 541 0 discriminator 8
	call	_Perl_get_context
LVL3371:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3372:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	al
	movzx	eax, al
	jmp	L951
	.p2align 2,,3
L956:
	.loc 2 541 0 discriminator 11
	call	_Perl_get_context
LVL3373:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3374:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3375:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL3376:
	movsx	eax, al
	jmp	L951
	.p2align 2,,3
L971:
LBB277:
	.loc 2 541 0 discriminator 1
	call	_Perl_get_context
LVL3377:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3378:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L954
LBE277:
	.loc 2 541 0
	xor	eax, eax
	jmp	L951
LVL3379:
L969:
LBE279:
	.loc 2 547 0 is_stmt 1
	call	___stack_chk_fail
LVL3380:
L967:
	.loc 2 537 0
	call	_Perl_get_context
LVL3381:
	mov	edx, OFFSET FLAT:LC36
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3382:
	.cfi_endproc
LFE108:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_set_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_set_default_value:
LFB107:
	.loc 2 516 0
	.cfi_startproc
LVL3383:
	push	ebp
LCFI825:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI826:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI827:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI828:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 60
LCFI829:
	.cfi_def_cfa_offset 80
	mov	eax, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+28], eax
	.loc 2 516 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+44], eax
	xor	eax, eax
	.loc 2 517 0
	call	_Perl_get_context
LVL3384:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3385:
	mov	edi, DWORD PTR [eax]
LVL3386:
	call	_Perl_get_context
LVL3387:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3388:
	mov	ecx, eax
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax]
LVL3389:
	sub	eax, 4
	mov	DWORD PTR [ecx], eax
	call	_Perl_get_context
LVL3390:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3391:
	lea	esi, [ebx+1]
LVL3392:
	lea	ebp, [0+ebx*4]
	mov	eax, DWORD PTR [eax]
LVL3393:
	add	eax, ebp
LVL3394:
	mov	edx, edi
	sub	edx, eax
	sar	edx, 2
	.loc 2 518 0
	cmp	edx, 2
	jne	L976
LBB280:
	.loc 2 521 0
	call	_Perl_get_context
LVL3395:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3396:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3397:
	mov	esi, eax
LVL3398:
	.loc 2 523 0
	call	_Perl_get_context
LVL3399:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3400:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3401:
	.loc 2 526 0
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_request_field_account_set_default_value
LVL3402:
LBE280:
LBB281:
	.loc 2 528 0
	call	_Perl_get_context
LVL3403:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3404:
	mov	ebx, eax
LVL3405:
	call	_Perl_get_context
LVL3406:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3407:
	add	ebp, DWORD PTR [eax]
	mov	DWORD PTR [ebx], ebp
LBE281:
	.loc 2 529 0
	mov	eax, DWORD PTR [esp+44]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L977
	add	esp, 60
LCFI830:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI831:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI832:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3408:
	pop	edi
LCFI833:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3409:
	pop	ebp
LCFI834:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL3410:
L976:
LCFI835:
	.cfi_restore_state
	.loc 2 519 0
	call	_Perl_get_context
LVL3411:
	mov	edx, OFFSET FLAT:LC20
	mov	eax, DWORD PTR [esp+28]
	call	_S_croak_xs_usage.isra.0
LVL3412:
L977:
	.loc 2 529 0
	call	___stack_chk_fail
LVL3413:
	.cfi_endproc
LFE107:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_get_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_get_value:
LFB106:
	.loc 2 497 0
	.cfi_startproc
LVL3414:
	push	ebp
LCFI836:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI837:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI838:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI839:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI840:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 497 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 498 0
	call	_Perl_get_context
LVL3415:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3416:
	mov	ebp, DWORD PTR [eax]
LVL3417:
	call	_Perl_get_context
LVL3418:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3419:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3420:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3421:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3422:
	lea	ebx, [esi+1]
LVL3423:
	mov	eax, DWORD PTR [eax]
LVL3424:
	lea	eax, [eax+esi*4]
LVL3425:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 499 0
	dec	edx
	jne	L982
LBB282:
	.loc 2 502 0
	call	_Perl_get_context
LVL3426:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3427:
	sal	ebx, 2
LVL3428:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3429:
	.loc 2 506 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_account_get_value
LVL3430:
	mov	edi, eax
LVL3431:
	.loc 2 507 0
	call	_Perl_get_context
LVL3432:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3433:
	mov	esi, DWORD PTR [eax]
LVL3434:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC8
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL3435:
	mov	DWORD PTR [esi], eax
	.loc 2 508 0
	call	_Perl_get_context
LVL3436:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3437:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3438:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL3439:
LBE282:
LBB283:
	.loc 2 510 0
	call	_Perl_get_context
LVL3440:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3441:
	mov	esi, eax
	call	_Perl_get_context
LVL3442:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3443:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE283:
	.loc 2 511 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L983
	add	esp, 44
LCFI841:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI842:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI843:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI844:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3444:
	pop	ebp
LCFI845:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3445:
	ret
LVL3446:
L982:
LCFI846:
	.cfi_restore_state
	.loc 2 500 0
	call	_Perl_get_context
LVL3447:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3448:
L983:
	.loc 2 511 0
	call	___stack_chk_fail
LVL3449:
	.cfi_endproc
LFE106:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_get_show_all;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_get_show_all:
LFB105:
	.loc 2 479 0
	.cfi_startproc
LVL3450:
	push	ebp
LCFI847:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI848:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI849:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI850:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI851:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 479 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 480 0
	call	_Perl_get_context
LVL3451:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3452:
	mov	ebp, DWORD PTR [eax]
LVL3453:
	call	_Perl_get_context
LVL3454:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3455:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3456:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3457:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3458:
	lea	ebx, [esi+1]
LVL3459:
	mov	eax, DWORD PTR [eax]
LVL3460:
	lea	eax, [eax+esi*4]
LVL3461:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 481 0
	dec	edx
	jne	L990
LBB284:
	.loc 2 484 0
	call	_Perl_get_context
LVL3462:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3463:
	sal	ebx, 2
LVL3464:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3465:
	.loc 2 488 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_account_get_show_all
LVL3466:
	mov	edi, eax
LVL3467:
	.loc 2 489 0
	call	_Perl_get_context
LVL3468:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3469:
	mov	esi, DWORD PTR [eax]
LVL3470:
	add	esi, ebx
	test	edi, edi
	jne	L991
	.loc 2 489 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3471:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_no_ptr
LVL3472:
L987:
	.loc 2 489 0 discriminator 3
	mov	DWORD PTR [esi], eax
LVL3473:
LBE284:
LBB285:
	.loc 2 491 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3474:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3475:
	mov	esi, eax
	call	_Perl_get_context
LVL3476:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3477:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE285:
	.loc 2 492 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L992
	.loc 2 492 0 is_stmt 0
	add	esp, 44
LCFI852:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI853:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI854:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI855:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3478:
	pop	ebp
LCFI856:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3479:
	ret
LVL3480:
	.p2align 2,,3
L991:
LCFI857:
	.cfi_restore_state
LBB286:
	.loc 2 489 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3481:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL3482:
	jmp	L987
LVL3483:
L990:
LBE286:
	.loc 2 482 0
	call	_Perl_get_context
LVL3484:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3485:
L992:
	.loc 2 492 0
	call	___stack_chk_fail
LVL3486:
	.cfi_endproc
LFE105:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_get_filter;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_get_filter:
LFB104:
	.loc 2 459 0
	.cfi_startproc
LVL3487:
	push	ebp
LCFI858:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI859:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI860:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI861:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI862:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 459 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 460 0
	call	_Perl_get_context
LVL3488:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3489:
	mov	ebp, DWORD PTR [eax]
LVL3490:
	call	_Perl_get_context
LVL3491:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3492:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL3493:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3494:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3495:
	lea	esi, [ebx+1]
LVL3496:
	mov	eax, DWORD PTR [eax]
LVL3497:
	lea	eax, [eax+ebx*4]
LVL3498:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 461 0
	dec	edx
	jne	L1003
LBB287:
	.loc 2 464 0
	call	_Perl_get_context
LVL3499:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3500:
	lea	edi, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3501:
	mov	ebp, eax
LVL3502:
	.loc 2 467 0
	call	_Perl_get_context
LVL3503:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3504:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	jne	L1004
	.loc 2 467 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3505:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL3506:
	mov	ebx, eax
L996:
LVL3507:
	.loc 1 228 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_account_get_filter
LVL3508:
	mov	ebp, eax
LVL3509:
	.loc 2 471 0 discriminator 3
	call	_Perl_get_context
LVL3510:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3511:
	mov	eax, DWORD PTR [eax]
	lea	esi, [eax-4+esi*4]
LVL3512:
LBB288:
	call	_Perl_get_context
LVL3513:
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL3514:
LBB289:
	test	BYTE PTR [ebx+10], 64
	je	L997
	.loc 2 471 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3515:
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL3516:
L997:
	.loc 2 471 0 discriminator 2
	mov	DWORD PTR [esi+4], ebx
LVL3517:
LBE289:
LBE288:
LBE287:
LBB290:
	.loc 2 473 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL3518:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3519:
	mov	ebx, eax
LVL3520:
	call	_Perl_get_context
LVL3521:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3522:
	add	edi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], edi
LBE290:
	.loc 2 474 0 discriminator 2
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1005
	.loc 2 474 0 is_stmt 0
	add	esp, 44
LCFI863:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI864:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI865:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3523:
	pop	edi
LCFI866:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI867:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3524:
	ret
LVL3525:
	.p2align 2,,3
L1004:
LCFI868:
	.cfi_restore_state
LBB291:
	.loc 2 467 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3526:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL3527:
	mov	ebx, DWORD PTR [eax]
	call	_Perl_get_context
LVL3528:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3529:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	ebx, DWORD PTR [ebx+eax*4]
	jmp	L996
LVL3530:
L1005:
LBE291:
	.loc 2 474 0
	call	___stack_chk_fail
LVL3531:
L1003:
	.loc 2 462 0
	call	_Perl_get_context
LVL3532:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3533:
	.cfi_endproc
LFE104:
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_get_default_value;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_get_default_value:
LFB103:
	.loc 2 440 0
	.cfi_startproc
LVL3534:
	push	ebp
LCFI869:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI870:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI871:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI872:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI873:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 440 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 441 0
	call	_Perl_get_context
LVL3535:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3536:
	mov	ebp, DWORD PTR [eax]
LVL3537:
	call	_Perl_get_context
LVL3538:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3539:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3540:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3541:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3542:
	lea	ebx, [esi+1]
LVL3543:
	mov	eax, DWORD PTR [eax]
LVL3544:
	lea	eax, [eax+esi*4]
LVL3545:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 442 0
	dec	edx
	jne	L1010
LBB292:
	.loc 2 445 0
	call	_Perl_get_context
LVL3546:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3547:
	sal	ebx, 2
LVL3548:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3549:
	.loc 2 449 0
	mov	DWORD PTR [esp], eax
	call	_purple_request_field_account_get_default_value
LVL3550:
	mov	edi, eax
LVL3551:
	.loc 2 450 0
	call	_Perl_get_context
LVL3552:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3553:
	mov	esi, DWORD PTR [eax]
LVL3554:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC8
	mov	DWORD PTR [esp], edi
	call	_purple_perl_bless_object
LVL3555:
	mov	DWORD PTR [esi], eax
	.loc 2 451 0
	call	_Perl_get_context
LVL3556:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3557:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3558:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL3559:
LBE292:
LBB293:
	.loc 2 453 0
	call	_Perl_get_context
LVL3560:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3561:
	mov	esi, eax
	call	_Perl_get_context
LVL3562:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3563:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE293:
	.loc 2 454 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1011
	add	esp, 44
LCFI874:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI875:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI876:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI877:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3564:
	pop	ebp
LCFI878:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3565:
	ret
LVL3566:
L1010:
LCFI879:
	.cfi_restore_state
	.loc 2 443 0
	call	_Perl_get_context
LVL3567:
	mov	edx, OFFSET FLAT:LC11
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3568:
L1011:
	.loc 2 454 0
	call	___stack_chk_fail
LVL3569:
	.cfi_endproc
LFE103:
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "class, id, text, account = NULL\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request__Field_account_new;	.scl	3;	.type	32;	.endef
_XS_Purple__Request__Field_account_new:
LFB102:
	.loc 2 411 0
	.cfi_startproc
LVL3570:
	push	ebp
LCFI880:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI881:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI882:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI883:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI884:
	.cfi_def_cfa_offset 64
	mov	ebp, DWORD PTR [esp+68]
	.loc 2 411 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 412 0
	call	_Perl_get_context
LVL3571:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3572:
	mov	ebx, DWORD PTR [eax]
LVL3573:
	call	_Perl_get_context
LVL3574:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3575:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3576:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3577:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3578:
	lea	edi, [esi+1]
LVL3579:
	mov	eax, DWORD PTR [eax]
LVL3580:
	lea	eax, [eax+esi*4]
LVL3581:
	sub	ebx, eax
LVL3582:
	sar	ebx, 2
LVL3583:
	.loc 2 413 0
	lea	eax, [ebx-3]
	cmp	eax, 1
	ja	L1022
LBB294:
	.loc 2 416 0
	call	_Perl_get_context
LVL3584:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3585:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L1023
	.loc 2 416 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3586:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3587:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3588:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3589:
	mov	ebp, eax
L1015:
LVL3590:
	.loc 2 418 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3591:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3592:
	lea	esi, [8+edi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1016
	.loc 2 418 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3593:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3594:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	esi, DWORD PTR [eax+12]
LVL3595:
	.loc 2 423 0 is_stmt 1 discriminator 1
	cmp	ebx, 3
	jg	L1024
L1020:
	.loc 2 424 0
	xor	eax, eax
L1018:
LVL3596:
	.loc 2 430 0
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], ebp
	call	_purple_request_field_account_new
LVL3597:
	mov	ebp, eax
LVL3598:
	.loc 2 431 0
	call	_Perl_get_context
LVL3599:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3600:
	lea	ebx, [0+edi*4]
LVL3601:
	mov	esi, DWORD PTR [eax]
LVL3602:
	add	esi, ebx
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], ebp
	call	_purple_perl_bless_object
LVL3603:
	mov	DWORD PTR [esi], eax
	.loc 2 432 0
	call	_Perl_get_context
LVL3604:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3605:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3606:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2mortal
LVL3607:
LBE294:
LBB295:
	.loc 2 434 0
	call	_Perl_get_context
LVL3608:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3609:
	mov	esi, eax
	call	_Perl_get_context
LVL3610:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3611:
	add	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esi], ebx
LBE295:
	.loc 2 435 0
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1025
	add	esp, 44
LCFI885:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI886:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI887:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI888:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3612:
	pop	ebp
LCFI889:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3613:
	ret
LVL3614:
	.p2align 2,,3
L1023:
LCFI890:
	.cfi_restore_state
LBB296:
	.loc 2 416 0 discriminator 1
	call	_Perl_get_context
LVL3615:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3616:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	ebp, DWORD PTR [eax+12]
	jmp	L1015
LVL3617:
	.p2align 2,,3
L1016:
	.loc 2 418 0 discriminator 2
	call	_Perl_get_context
LVL3618:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3619:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3620:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3621:
	mov	esi, eax
LVL3622:
	.loc 2 423 0 discriminator 2
	cmp	ebx, 3
	jle	L1020
LVL3623:
L1024:
	.loc 2 426 0
	call	_Perl_get_context
LVL3624:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3625:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12+edi*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3626:
	jmp	L1018
LVL3627:
L1025:
LBE296:
	.loc 2 435 0
	call	___stack_chk_fail
LVL3628:
L1022:
	.loc 2 414 0
	call	_Perl_get_context
LVL3629:
	mov	edx, OFFSET FLAT:LC37
	mov	eax, ebp
	call	_S_croak_xs_usage.isra.0
LVL3630:
	.cfi_endproc
LFE102:
	.section .rdata,"dr"
LC38:
	.ascii "handle\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request_close_with_handle;	.scl	3;	.type	32;	.endef
_XS_Purple__Request_close_with_handle:
LFB101:
	.loc 2 395 0
	.cfi_startproc
LVL3631:
	push	ebp
LCFI891:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI892:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI893:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI894:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI895:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 395 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 396 0
	call	_Perl_get_context
LVL3632:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3633:
	mov	ebp, DWORD PTR [eax]
LVL3634:
	call	_Perl_get_context
LVL3635:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3636:
	mov	edx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [edx]
LVL3637:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3638:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3639:
	lea	esi, [ebx+1]
LVL3640:
	mov	eax, DWORD PTR [eax]
LVL3641:
	lea	eax, [eax+ebx*4]
LVL3642:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 397 0
	dec	edx
	jne	L1032
LBB297:
	.loc 2 400 0
	call	_Perl_get_context
LVL3643:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3644:
	lea	ebx, [0+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	test	BYTE PTR [eax+9], 1
	jne	L1033
	.loc 2 400 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3645:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3646:
	mov	eax, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+ebx]
	call	_Perl_get_context
LVL3647:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL3648:
L1029:
	.loc 2 403 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp], eax
	call	_purple_request_close_with_handle
LVL3649:
LBE297:
LBB298:
	.loc 2 405 0 discriminator 3
	call	_Perl_get_context
LVL3650:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3651:
	mov	ebx, eax
	call	_Perl_get_context
LVL3652:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3653:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+esi*4]
	mov	DWORD PTR [ebx], eax
LBE298:
	.loc 2 406 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1034
	.loc 2 406 0 is_stmt 0
	add	esp, 44
LCFI896:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI897:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI898:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3654:
	pop	edi
LCFI899:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI900:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3655:
	ret
LVL3656:
	.p2align 2,,3
L1033:
LCFI901:
	.cfi_restore_state
LBB299:
	.loc 2 400 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3657:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3658:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebx]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L1029
L1032:
LBE299:
	.loc 2 398 0
	call	_Perl_get_context
LVL3659:
	mov	edx, OFFSET FLAT:LC38
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3660:
L1034:
	.loc 2 406 0
	call	___stack_chk_fail
LVL3661:
	.cfi_endproc
LFE101:
	.section .rdata,"dr"
LC39:
	.ascii "type, uihandle\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request_close;	.scl	3;	.type	32;	.endef
_XS_Purple__Request_close:
LFB100:
	.loc 2 377 0
	.cfi_startproc
LVL3662:
	push	ebp
LCFI902:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI903:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI904:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI905:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
LCFI906:
	.cfi_def_cfa_offset 64
	mov	edi, DWORD PTR [esp+68]
	.loc 2 377 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+28], eax
	xor	eax, eax
	.loc 2 378 0
	call	_Perl_get_context
LVL3663:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3664:
	mov	ebp, DWORD PTR [eax]
LVL3665:
	call	_Perl_get_context
LVL3666:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3667:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3668:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3669:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3670:
	lea	ebx, [esi+1]
LVL3671:
	mov	eax, DWORD PTR [eax]
LVL3672:
	lea	eax, [eax+esi*4]
LVL3673:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 379 0
	cmp	edx, 2
	jne	L1043
LBB300:
	.loc 2 382 0
	call	_Perl_get_context
LVL3674:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3675:
	lea	esi, [0+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 1
	jne	L1044
	.loc 2 382 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3676:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3677:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3678:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL3679:
	mov	edi, eax
L1038:
LVL3680:
	.loc 2 384 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3681:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3682:
	lea	esi, [4+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+esi]
	test	BYTE PTR [edx+9], 1
	jne	L1045
	.loc 2 384 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3683:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3684:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3685:
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2iv_flags
LVL3686:
L1040:
	.loc 2 387 0 is_stmt 1 discriminator 3
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_close
LVL3687:
LBE300:
LBB301:
	.loc 2 389 0 discriminator 3
	call	_Perl_get_context
LVL3688:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3689:
	mov	esi, eax
	call	_Perl_get_context
LVL3690:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3691:
	mov	eax, DWORD PTR [eax]
	lea	eax, [eax-4+ebx*4]
	mov	DWORD PTR [esi], eax
LBE301:
	.loc 2 390 0 discriminator 3
	mov	eax, DWORD PTR [esp+28]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1046
	.loc 2 390 0 is_stmt 0
	add	esp, 44
LCFI907:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI908:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
LVL3692:
	pop	esi
LCFI909:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI910:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3693:
	pop	ebp
LCFI911:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3694:
	ret
LVL3695:
	.p2align 2,,3
L1044:
LCFI912:
	.cfi_restore_state
LBB302:
	.loc 2 382 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3696:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3697:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+16]
	jmp	L1038
LVL3698:
	.p2align 2,,3
L1045:
	.loc 2 384 0 discriminator 1
	call	_Perl_get_context
LVL3699:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3700:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
	jmp	L1040
LVL3701:
L1046:
LBE302:
	.loc 2 390 0
	call	___stack_chk_fail
LVL3702:
L1043:
	.loc 2 380 0
	call	_Perl_get_context
LVL3703:
	mov	edx, OFFSET FLAT:LC39
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3704:
	.cfi_endproc
LFE100:
	.section .rdata,"dr"
	.align 4
LC40:
	.ascii "handle, title, primary, secondary, fields, ok_text, ok_cb, cancel_text, cancel_cb\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request_fields;	.scl	3;	.type	32;	.endef
_XS_Purple__Request_fields:
LFB99:
	.loc 2 331 0
	.cfi_startproc
LVL3705:
	push	ebp
LCFI913:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI914:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI915:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI916:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 140
LCFI917:
	.cfi_def_cfa_offset 160
	mov	edi, DWORD PTR [esp+164]
	.loc 2 331 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+124], eax
	xor	eax, eax
	.loc 2 332 0
	call	_Perl_get_context
LVL3706:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3707:
	mov	ebp, DWORD PTR [eax]
LVL3708:
	call	_Perl_get_context
LVL3709:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3710:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3711:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3712:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3713:
	lea	ebx, [esi+1]
LVL3714:
	mov	eax, DWORD PTR [eax]
LVL3715:
	lea	eax, [eax+esi*4]
LVL3716:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 333 0
	cmp	edx, 9
	jne	L1067
LBB303:
	.loc 2 336 0
	call	_Perl_get_context
LVL3717:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3718:
	lea	ebp, [0+ebx*4]
LVL3719:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3720:
	mov	edi, eax
LVL3721:
	.loc 2 338 0
	call	_Perl_get_context
LVL3722:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3723:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L1068
	.loc 2 338 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3724:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3725:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3726:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3727:
	mov	DWORD PTR [esp+92], eax
L1050:
LVL3728:
	.loc 2 340 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3729:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3730:
	lea	esi, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1051
	.loc 2 340 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3731:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3732:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+96], eax
L1052:
LVL3733:
	.loc 2 342 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3734:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3735:
	lea	esi, [12+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1053
	.loc 2 342 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3736:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3737:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+100], eax
L1054:
LVL3738:
	.loc 2 344 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3739:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3740:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16+ebx*4]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3741:
	mov	DWORD PTR [esp+80], eax
LVL3742:
	.loc 2 346 0 discriminator 3
	call	_Perl_get_context
LVL3743:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3744:
	lea	esi, [20+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1055
	.loc 2 346 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3745:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3746:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+104], eax
L1056:
LVL3747:
	.loc 2 348 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3748:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3749:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+24+ebx*4]
	mov	DWORD PTR [esp+84], eax
LVL3750:
	.loc 2 350 0 discriminator 3
	call	_Perl_get_context
LVL3751:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3752:
	lea	esi, [28+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1057
	.loc 2 350 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3753:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3754:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+108], eax
L1058:
LVL3755:
	.loc 2 352 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3756:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3757:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+32+ebx*4]
	mov	DWORD PTR [esp+88], eax
LVL3758:
	.loc 2 355 0 discriminator 3
	call	_Perl_get_context
LVL3759:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3760:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L1059
	.loc 2 355 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3761:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL3762:
	mov	esi, DWORD PTR [eax]
	call	_Perl_get_context
LVL3763:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3764:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [esi+eax*4]
L1060:
LVL3765:
	.loc 1 189 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [edi+12]
	mov	DWORD PTR [esp], eax
	call	_g_path_get_basename
LVL3766:
	.loc 1 190 0 discriminator 3
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+72], eax
	call	_purple_perl_normalize_script_name
LVL3767:
	.loc 1 191 0 discriminator 3
	mov	DWORD PTR [esp], 8
	call	_g_malloc
LVL3768:
	mov	DWORD PTR [esp+76], eax
LVL3769:
	.loc 1 192 0 discriminator 3
	mov	ecx, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], edi
	call	_purple_perl_sv_from_fun
LVL3770:
	mov	ecx, DWORD PTR [esp+76]
	mov	DWORD PTR [ecx], eax
	.loc 1 193 0 discriminator 3
	mov	ecx, DWORD PTR [esp+88]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], edi
	call	_purple_perl_sv_from_fun
LVL3771:
	mov	ecx, DWORD PTR [esp+76]
	mov	DWORD PTR [ecx+4], eax
	.loc 1 194 0 discriminator 3
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp], edx
	call	_g_free
LVL3772:
	.loc 1 196 0 discriminator 3
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+48], eax
	mov	DWORD PTR [esp+44], 0
	mov	DWORD PTR [esp+40], 0
	mov	DWORD PTR [esp+36], 0
	mov	DWORD PTR [esp+32], OFFSET FLAT:_purple_perl_request_cancel_cb
	mov	eax, DWORD PTR [esp+108]
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+24], OFFSET FLAT:_purple_perl_request_ok_cb
	mov	eax, DWORD PTR [esp+104]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+100]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+96]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+92]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_fields
LVL3773:
	mov	edi, eax
LVL3774:
	.loc 2 369 0 discriminator 3
	call	_Perl_get_context
LVL3775:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3776:
	mov	eax, DWORD PTR [eax]
	lea	ebx, [eax-4+ebx*4]
LVL3777:
LBB304:
	call	_Perl_get_context
LVL3778:
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL3779:
LBB305:
	test	BYTE PTR [esi+10], 64
	je	L1061
	.loc 2 369 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3780:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL3781:
L1061:
	.loc 2 369 0 discriminator 2
	mov	DWORD PTR [ebx+4], esi
LVL3782:
LBE305:
LBE304:
LBE303:
LBB306:
	.loc 2 371 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL3783:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3784:
	mov	ebx, eax
LVL3785:
	call	_Perl_get_context
LVL3786:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3787:
	mov	eax, DWORD PTR [eax]
	add	eax, ebp
	mov	DWORD PTR [ebx], eax
LBE306:
	.loc 2 372 0 discriminator 2
	mov	ecx, DWORD PTR [esp+124]
	xor	ecx, DWORD PTR ___stack_chk_guard
	jne	L1069
	.loc 2 372 0 is_stmt 0
	add	esp, 140
LCFI918:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI919:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI920:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3788:
	pop	edi
LCFI921:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3789:
	pop	ebp
LCFI922:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL3790:
	.p2align 2,,3
L1068:
LCFI923:
	.cfi_restore_state
LBB307:
	.loc 2 338 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3791:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3792:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+92], eax
	jmp	L1050
LVL3793:
	.p2align 2,,3
L1057:
	.loc 2 350 0 discriminator 2
	call	_Perl_get_context
LVL3794:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3795:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3796:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3797:
	mov	DWORD PTR [esp+108], eax
	jmp	L1058
LVL3798:
	.p2align 2,,3
L1055:
	.loc 2 346 0 discriminator 2
	call	_Perl_get_context
LVL3799:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3800:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3801:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3802:
	mov	DWORD PTR [esp+104], eax
	jmp	L1056
LVL3803:
	.p2align 2,,3
L1059:
	.loc 2 355 0 discriminator 2
	call	_Perl_get_context
LVL3804:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL3805:
	mov	esi, eax
	jmp	L1060
LVL3806:
	.p2align 2,,3
L1053:
	.loc 2 342 0 discriminator 2
	call	_Perl_get_context
LVL3807:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3808:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3809:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3810:
	mov	DWORD PTR [esp+100], eax
	jmp	L1054
LVL3811:
	.p2align 2,,3
L1051:
	.loc 2 340 0 discriminator 2
	call	_Perl_get_context
LVL3812:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3813:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3814:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3815:
	mov	DWORD PTR [esp+96], eax
	jmp	L1052
LVL3816:
L1069:
LBE307:
	.loc 2 372 0
	call	___stack_chk_fail
LVL3817:
L1067:
	.loc 2 334 0
	call	_Perl_get_context
LVL3818:
	mov	edx, OFFSET FLAT:LC40
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL3819:
	.cfi_endproc
LFE99:
	.section .rdata,"dr"
	.align 4
LC41:
	.ascii "handle, title, filename, savedialog, ok_cb, cancel_cb\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request_file;	.scl	3;	.type	32;	.endef
_XS_Purple__Request_file:
LFB98:
	.loc 2 291 0
	.cfi_startproc
LVL3820:
	push	ebp
LCFI924:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI925:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI926:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI927:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 108
LCFI928:
	.cfi_def_cfa_offset 128
	mov	esi, DWORD PTR [esp+132]
	.loc 2 291 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+92], eax
	xor	eax, eax
	.loc 2 292 0
	call	_Perl_get_context
LVL3821:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3822:
	mov	ebp, DWORD PTR [eax]
LVL3823:
	call	_Perl_get_context
LVL3824:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3825:
	mov	edx, DWORD PTR [eax]
	mov	edi, DWORD PTR [edx]
LVL3826:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3827:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3828:
	lea	ebx, [edi+1]
LVL3829:
	mov	eax, DWORD PTR [eax]
LVL3830:
	lea	eax, [eax+edi*4]
LVL3831:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 293 0
	cmp	edx, 6
	jne	L1098
LBB308:
	.loc 2 296 0
	call	_Perl_get_context
LVL3832:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3833:
	lea	edx, [0+ebx*4]
	mov	DWORD PTR [esp+56], edx
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edx]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3834:
	mov	esi, eax
LVL3835:
	.loc 2 298 0
	call	_Perl_get_context
LVL3836:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3837:
	lea	edi, [8+edi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	test	BYTE PTR [eax+9], 4
	jne	L1099
	.loc 2 298 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3838:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3839:
	mov	eax, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+edi]
	call	_Perl_get_context
LVL3840:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3841:
	mov	DWORD PTR [esp+68], eax
L1073:
LVL3842:
	.loc 2 300 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3843:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3844:
	lea	edi, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	test	BYTE PTR [eax+9], 4
	je	L1074
	.loc 2 300 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3845:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3846:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+72], eax
L1075:
LVL3847:
	.loc 2 302 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3848:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3849:
	lea	edi, [12+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+edi]
LVL3850:
	test	ebp, ebp
	je	L1086
	.loc 2 302 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3851:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3852:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	test	BYTE PTR [eax+9], 4
	je	L1077
LBB309:
	.loc 2 302 0 discriminator 3
	call	_Perl_get_context
LVL3853:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3854:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax]
LVL3855:
	test	eax, eax
	je	L1086
	.loc 2 302 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3856:
	cmp	eax, 1
	jbe	L1100
L1079:
LBE309:
	.loc 2 302 0
	mov	DWORD PTR [esp+76], 1
L1076:
LVL3857:
	.loc 2 304 0 is_stmt 1 discriminator 15
	call	_Perl_get_context
LVL3858:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3859:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16+ebx*4]
	mov	DWORD PTR [esp+60], eax
LVL3860:
	.loc 2 306 0 discriminator 15
	call	_Perl_get_context
LVL3861:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3862:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+20+ebx*4]
	mov	DWORD PTR [esp+64], eax
LVL3863:
	.loc 2 309 0 discriminator 15
	call	_Perl_get_context
LVL3864:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3865:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L1082
	.loc 2 309 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3866:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL3867:
	mov	edi, DWORD PTR [eax]
	call	_Perl_get_context
LVL3868:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL3869:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	edi, DWORD PTR [edi+eax*4]
L1083:
LVL3870:
	.loc 1 163 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [esi+12]
	mov	DWORD PTR [esp], eax
	call	_g_path_get_basename
LVL3871:
	.loc 1 164 0 discriminator 3
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+52], eax
	call	_purple_perl_normalize_script_name
LVL3872:
	.loc 1 165 0 discriminator 3
	mov	DWORD PTR [esp], 8
	call	_g_malloc
LVL3873:
	mov	ebp, eax
LVL3874:
	.loc 1 166 0 discriminator 3
	mov	eax, DWORD PTR [esp+60]
LVL3875:
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_perl_sv_from_fun
LVL3876:
	mov	DWORD PTR [ebp+0], eax
	.loc 1 167 0 discriminator 3
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_perl_sv_from_fun
LVL3877:
	mov	DWORD PTR [ebp+4], eax
	.loc 1 168 0 discriminator 3
	mov	edx, DWORD PTR [esp+52]
	mov	DWORD PTR [esp], edx
	call	_g_free
LVL3878:
	.loc 1 170 0 discriminator 3
	mov	DWORD PTR [esp+36], ebp
	mov	DWORD PTR [esp+32], 0
	mov	DWORD PTR [esp+28], 0
	mov	DWORD PTR [esp+24], 0
	mov	DWORD PTR [esp+20], OFFSET FLAT:_purple_perl_request_cancel_cb
	mov	DWORD PTR [esp+16], OFFSET FLAT:_purple_perl_request_ok_cb
	mov	edx, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+12], edx
	mov	eax, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], esi
	call	_purple_request_file
LVL3879:
	mov	esi, eax
LVL3880:
	.loc 2 323 0 discriminator 3
	call	_Perl_get_context
LVL3881:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3882:
	mov	eax, DWORD PTR [eax]
	lea	ebx, [eax-4+ebx*4]
LVL3883:
LBB310:
	call	_Perl_get_context
LVL3884:
	mov	DWORD PTR [esp+8], esi
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL3885:
LBB311:
	test	BYTE PTR [edi+10], 64
	je	L1084
	.loc 2 323 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3886:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL3887:
L1084:
	.loc 2 323 0 discriminator 2
	mov	DWORD PTR [ebx+4], edi
LVL3888:
LBE311:
LBE310:
LBE308:
LBB314:
	.loc 2 325 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL3889:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3890:
	mov	ebx, eax
LVL3891:
	call	_Perl_get_context
LVL3892:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3893:
	mov	eax, DWORD PTR [eax]
	add	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [ebx], eax
LBE314:
	.loc 2 326 0 discriminator 2
	mov	edx, DWORD PTR [esp+92]
	xor	edx, DWORD PTR ___stack_chk_guard
	jne	L1101
	.loc 2 326 0 is_stmt 0
	add	esp, 108
LCFI929:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI930:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI931:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL3894:
	pop	edi
LCFI932:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL3895:
	pop	ebp
LCFI933:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL3896:
	ret
LVL3897:
	.p2align 2,,3
L1099:
LCFI934:
	.cfi_restore_state
LBB315:
	.loc 2 298 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL3898:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3899:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+68], eax
	jmp	L1073
LVL3900:
	.p2align 2,,3
L1082:
	.loc 2 309 0 discriminator 2
	call	_Perl_get_context
LVL3901:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL3902:
	mov	edi, eax
	jmp	L1083
LVL3903:
	.p2align 2,,3
L1074:
	.loc 2 300 0 discriminator 2
	call	_Perl_get_context
LVL3904:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3905:
	mov	eax, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+edi]
	call	_Perl_get_context
LVL3906:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3907:
	mov	DWORD PTR [esp+72], eax
	jmp	L1075
LVL3908:
	.p2align 2,,3
L1100:
LBB312:
	.loc 2 302 0 discriminator 4
	test	eax, eax
	jne	L1102
	.p2align 2,,3
L1086:
LBE312:
	.loc 2 302 0 is_stmt 0
	mov	DWORD PTR [esp+76], 0
	jmp	L1076
	.p2align 2,,3
L1077:
	.loc 2 302 0 discriminator 4
	call	_Perl_get_context
LVL3909:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3910:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	test	BYTE PTR [eax+9], 1
	jne	L1103
	.loc 2 302 0 discriminator 9
	call	_Perl_get_context
LVL3911:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3912:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	test	BYTE PTR [eax+9], 2
	je	L1081
	.loc 2 302 0 discriminator 10
	call	_Perl_get_context
LVL3913:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3914:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	dl
	movzx	edx, dl
	mov	DWORD PTR [esp+76], edx
	jmp	L1076
	.p2align 2,,3
L1103:
	.loc 2 302 0 discriminator 8
	call	_Perl_get_context
LVL3915:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3916:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax]
	xor	edx, edx
	mov	ecx, DWORD PTR [eax+16]
	test	ecx, ecx
	setne	dl
	mov	DWORD PTR [esp+76], edx
	jmp	L1076
	.p2align 2,,3
L1081:
	.loc 2 302 0 discriminator 11
	call	_Perl_get_context
LVL3917:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3918:
	mov	eax, DWORD PTR [eax]
	mov	edi, DWORD PTR [eax+edi]
	call	_Perl_get_context
LVL3919:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL3920:
	movsx	eax, al
	mov	DWORD PTR [esp+76], eax
	jmp	L1076
	.p2align 2,,3
L1102:
LBB313:
	.loc 2 302 0 discriminator 1
	call	_Perl_get_context
LVL3921:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3922:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+edi]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L1079
	jmp	L1086
LVL3923:
L1098:
LBE313:
LBE315:
	.loc 2 294 0 is_stmt 1
	call	_Perl_get_context
LVL3924:
	mov	edx, OFFSET FLAT:LC41
	mov	eax, esi
	call	_S_croak_xs_usage.isra.0
LVL3925:
L1101:
	.loc 2 326 0
	call	___stack_chk_fail
LVL3926:
	.cfi_endproc
LFE98:
	.section .rdata,"dr"
	.align 4
LC42:
	.ascii "handle, title, primary, secondary, default_value, multiline, masked, hint, ok_text, ok_cb, cancel_text, cancel_cb\0"
	.text
	.p2align 2,,3
	.def	_XS_Purple__Request_input;	.scl	3;	.type	32;	.endef
_XS_Purple__Request_input:
LFB97:
	.loc 2 239 0
	.cfi_startproc
LVL3927:
	push	ebp
LCFI935:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI936:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI937:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI938:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 156
LCFI939:
	.cfi_def_cfa_offset 176
	mov	edi, DWORD PTR [esp+180]
	.loc 2 239 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+140], eax
	xor	eax, eax
	.loc 2 240 0
	call	_Perl_get_context
LVL3928:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL3929:
	mov	ebp, DWORD PTR [eax]
LVL3930:
	call	_Perl_get_context
LVL3931:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL3932:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL3933:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL3934:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3935:
	lea	ebx, [esi+1]
LVL3936:
	mov	eax, DWORD PTR [eax]
LVL3937:
	lea	eax, [eax+esi*4]
LVL3938:
	mov	edx, ebp
	sub	edx, eax
	sar	edx, 2
	.loc 2 241 0
	cmp	edx, 12
	jne	L1155
LBB316:
	.loc 2 244 0
	call	_Perl_get_context
LVL3939:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3940:
	lea	ebp, [0+ebx*4]
LVL3941:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+ebp]
	mov	DWORD PTR [esp], eax
	call	_purple_perl_ref_object
LVL3942:
	mov	edi, eax
LVL3943:
	.loc 2 246 0
	call	_Perl_get_context
LVL3944:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3945:
	lea	esi, [8+esi*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	jne	L1156
	.loc 2 246 0 is_stmt 0 discriminator 2
	call	_Perl_get_context
LVL3946:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3947:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL3948:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL3949:
	mov	DWORD PTR [esp+92], eax
L1107:
LVL3950:
	.loc 2 248 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3951:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3952:
	lea	esi, [8+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1108
	.loc 2 248 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3953:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3954:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+96], eax
L1109:
LVL3955:
	.loc 2 250 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3956:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3957:
	lea	esi, [12+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1110
	.loc 2 250 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3958:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3959:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+100], eax
L1111:
LVL3960:
	.loc 2 252 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3961:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3962:
	lea	esi, [16+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1112
	.loc 2 252 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3963:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3964:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+104], eax
L1113:
LVL3965:
	.loc 2 254 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3966:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3967:
	lea	esi, [20+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	eax, eax
	je	L1136
	.loc 2 254 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3968:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3969:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1115
LBB317:
	.loc 2 254 0 discriminator 3
	call	_Perl_get_context
LVL3970:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3971:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
LVL3972:
	test	eax, eax
	je	L1136
	.loc 2 254 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3973:
	cmp	eax, 1
	jbe	L1157
L1117:
LBE317:
	.loc 2 254 0
	mov	DWORD PTR [esp+120], 1
L1114:
LVL3974:
	.loc 2 256 0 is_stmt 1 discriminator 15
	call	_Perl_get_context
LVL3975:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3976:
	lea	esi, [24+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	eax, eax
	je	L1137
	.loc 2 256 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3977:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3978:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1121
LBB318:
	.loc 2 256 0 discriminator 3
	call	_Perl_get_context
LVL3979:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3980:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
LVL3981:
	test	eax, eax
	je	L1137
	.loc 2 256 0 discriminator 1
	mov	eax, DWORD PTR [eax+8]
LVL3982:
	cmp	eax, 1
	jbe	L1158
L1123:
LBE318:
	.loc 2 256 0
	mov	DWORD PTR [esp+124], 1
L1120:
LVL3983:
	.loc 2 258 0 is_stmt 1 discriminator 15
	call	_Perl_get_context
LVL3984:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3985:
	lea	esi, [28+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1126
	.loc 2 258 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3986:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3987:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+108], eax
L1127:
LVL3988:
	.loc 2 260 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3989:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3990:
	lea	esi, [32+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1128
	.loc 2 260 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3991:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3992:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+112], eax
L1129:
LVL3993:
	.loc 2 262 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL3994:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3995:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+36+ebx*4]
	mov	DWORD PTR [esp+84], eax
LVL3996:
	.loc 2 264 0 discriminator 3
	call	_Perl_get_context
LVL3997:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL3998:
	lea	esi, [40+ebx*4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 4
	je	L1130
	.loc 2 264 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL3999:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4000:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+116], eax
L1131:
LVL4001:
	.loc 2 266 0 is_stmt 1 discriminator 3
	call	_Perl_get_context
LVL4002:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4003:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+44+ebx*4]
	mov	DWORD PTR [esp+88], eax
LVL4004:
	.loc 2 269 0 discriminator 3
	call	_Perl_get_context
LVL4005:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL4006:
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax+21], 32
	je	L1132
	.loc 2 269 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL4007:
	mov	DWORD PTR [esp], eax
	call	_Perl_Icurpad_ptr
LVL4008:
	mov	esi, DWORD PTR [eax]
	call	_Perl_get_context
LVL4009:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iop_ptr
LVL4010:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [esi+eax*4]
L1133:
LVL4011:
	.loc 1 140 0 is_stmt 1 discriminator 3
	mov	eax, DWORD PTR [edi+12]
	mov	DWORD PTR [esp], eax
	call	_g_path_get_basename
LVL4012:
	.loc 1 141 0 discriminator 3
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+76], eax
	call	_purple_perl_normalize_script_name
LVL4013:
	.loc 1 142 0 discriminator 3
	mov	DWORD PTR [esp], 8
	call	_g_malloc
LVL4014:
	mov	DWORD PTR [esp+80], eax
LVL4015:
	.loc 1 143 0 discriminator 3
	mov	ecx, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], edi
	call	_purple_perl_sv_from_fun
LVL4016:
	mov	ecx, DWORD PTR [esp+80]
	mov	DWORD PTR [ecx], eax
	.loc 1 144 0 discriminator 3
	mov	ecx, DWORD PTR [esp+88]
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], edi
	call	_purple_perl_sv_from_fun
LVL4017:
	mov	ecx, DWORD PTR [esp+80]
	mov	DWORD PTR [ecx+4], eax
	.loc 1 145 0 discriminator 3
	mov	edx, DWORD PTR [esp+76]
	mov	DWORD PTR [esp], edx
	call	_g_free
LVL4018:
	.loc 1 147 0 discriminator 3
	mov	eax, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+60], eax
	mov	DWORD PTR [esp+56], 0
	mov	DWORD PTR [esp+52], 0
	mov	DWORD PTR [esp+48], 0
	mov	DWORD PTR [esp+44], OFFSET FLAT:_purple_perl_request_cancel_cb
	mov	eax, DWORD PTR [esp+116]
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+36], OFFSET FLAT:_purple_perl_request_ok_cb
	mov	eax, DWORD PTR [esp+112]
	mov	DWORD PTR [esp+32], eax
	mov	eax, DWORD PTR [esp+108]
	mov	DWORD PTR [esp+28], eax
	mov	ecx, DWORD PTR [esp+124]
	mov	DWORD PTR [esp+24], ecx
	mov	ecx, DWORD PTR [esp+120]
	mov	DWORD PTR [esp+20], ecx
	mov	eax, DWORD PTR [esp+104]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+100]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+96]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+92]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edi
	call	_purple_request_input
LVL4019:
	mov	edi, eax
LVL4020:
	.loc 2 283 0 discriminator 3
	call	_Perl_get_context
LVL4021:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4022:
	mov	eax, DWORD PTR [eax]
	lea	ebx, [eax-4+ebx*4]
LVL4023:
LBB319:
	call	_Perl_get_context
LVL4024:
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_setiv
LVL4025:
LBB320:
	test	BYTE PTR [esi+10], 64
	je	L1134
	.loc 2 283 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL4026:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_mg_set
LVL4027:
L1134:
	.loc 2 283 0 discriminator 2
	mov	DWORD PTR [ebx+4], esi
LVL4028:
LBE320:
LBE319:
LBE316:
LBB325:
	.loc 2 285 0 is_stmt 1 discriminator 2
	call	_Perl_get_context
LVL4029:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL4030:
	mov	ebx, eax
LVL4031:
	call	_Perl_get_context
LVL4032:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4033:
	mov	eax, DWORD PTR [eax]
	add	eax, ebp
	mov	DWORD PTR [ebx], eax
LBE325:
	.loc 2 286 0 discriminator 2
	mov	ecx, DWORD PTR [esp+140]
	xor	ecx, DWORD PTR ___stack_chk_guard
	jne	L1159
	.loc 2 286 0 is_stmt 0
	add	esp, 156
LCFI940:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI941:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI942:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
LVL4034:
	pop	edi
LCFI943:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL4035:
	pop	ebp
LCFI944:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL4036:
	.p2align 2,,3
L1156:
LCFI945:
	.cfi_restore_state
LBB326:
	.loc 2 246 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL4037:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4038:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esp+92], eax
	jmp	L1107
LVL4039:
	.p2align 2,,3
L1130:
	.loc 2 264 0 discriminator 2
	call	_Perl_get_context
LVL4040:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4041:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4042:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4043:
	mov	DWORD PTR [esp+116], eax
	jmp	L1131
LVL4044:
	.p2align 2,,3
L1128:
	.loc 2 260 0 discriminator 2
	call	_Perl_get_context
LVL4045:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4046:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4047:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4048:
	mov	DWORD PTR [esp+112], eax
	jmp	L1129
LVL4049:
	.p2align 2,,3
L1126:
	.loc 2 258 0 discriminator 2
	call	_Perl_get_context
LVL4050:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4051:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4052:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4053:
	mov	DWORD PTR [esp+108], eax
	jmp	L1127
LVL4054:
	.p2align 2,,3
L1132:
	.loc 2 269 0 discriminator 2
	call	_Perl_get_context
LVL4055:
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_newmortal
LVL4056:
	mov	esi, eax
	jmp	L1133
LVL4057:
	.p2align 2,,3
L1110:
	.loc 2 250 0 discriminator 2
	call	_Perl_get_context
LVL4058:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4059:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4060:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4061:
	mov	DWORD PTR [esp+100], eax
	jmp	L1111
LVL4062:
	.p2align 2,,3
L1108:
	.loc 2 248 0 discriminator 2
	call	_Perl_get_context
LVL4063:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4064:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4065:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4066:
	mov	DWORD PTR [esp+96], eax
	jmp	L1109
LVL4067:
	.p2align 2,,3
L1112:
	.loc 2 252 0 discriminator 2
	call	_Perl_get_context
LVL4068:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4069:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4070:
	mov	DWORD PTR [esp+12], 2
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2pv_flags
LVL4071:
	mov	DWORD PTR [esp+104], eax
	jmp	L1113
LVL4072:
	.p2align 2,,3
L1157:
LBB321:
	.loc 2 254 0 discriminator 4
	test	eax, eax
	jne	L1160
	.p2align 2,,3
L1136:
LBE321:
	.loc 2 254 0 is_stmt 0
	mov	DWORD PTR [esp+120], 0
	jmp	L1114
LVL4073:
	.p2align 2,,3
L1158:
LBB322:
	.loc 2 256 0 is_stmt 1 discriminator 4
	test	eax, eax
	jne	L1161
	.p2align 2,,3
L1137:
LBE322:
	.loc 2 256 0 is_stmt 0
	mov	DWORD PTR [esp+124], 0
	jmp	L1120
LVL4074:
	.p2align 2,,3
L1115:
	.loc 2 254 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL4075:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4076:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 1
	jne	L1162
	.loc 2 254 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL4077:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4078:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 2
	je	L1119
	.loc 2 254 0 discriminator 10
	call	_Perl_get_context
LVL4079:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4080:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	cl
	movzx	ecx, cl
	mov	DWORD PTR [esp+120], ecx
	jmp	L1114
LVL4081:
	.p2align 2,,3
L1121:
	.loc 2 256 0 is_stmt 1 discriminator 4
	call	_Perl_get_context
LVL4082:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4083:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 1
	jne	L1163
	.loc 2 256 0 is_stmt 0 discriminator 9
	call	_Perl_get_context
LVL4084:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4085:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	test	BYTE PTR [eax+9], 2
	je	L1125
	.loc 2 256 0 discriminator 10
	call	_Perl_get_context
LVL4086:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4087:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	and	ah, 69
	xor	ah, 64
	setne	cl
	movzx	ecx, cl
	mov	DWORD PTR [esp+124], ecx
	jmp	L1120
	.p2align 2,,3
L1163:
	.loc 2 256 0 discriminator 8
	call	_Perl_get_context
LVL4088:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4089:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	xor	ecx, ecx
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	cl
	mov	DWORD PTR [esp+124], ecx
	jmp	L1120
LVL4090:
	.p2align 2,,3
L1162:
	.loc 2 254 0 is_stmt 1 discriminator 8
	call	_Perl_get_context
LVL4091:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4092:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax]
	xor	ecx, ecx
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	setne	cl
	mov	DWORD PTR [esp+120], ecx
	jmp	L1114
LVL4093:
	.p2align 2,,3
L1125:
	.loc 2 256 0 discriminator 11
	call	_Perl_get_context
LVL4094:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4095:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4096:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL4097:
	movsx	eax, al
	mov	DWORD PTR [esp+124], eax
	jmp	L1120
LVL4098:
	.p2align 2,,3
L1119:
	.loc 2 254 0 discriminator 11
	call	_Perl_get_context
LVL4099:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4100:
	mov	eax, DWORD PTR [eax]
	mov	esi, DWORD PTR [eax+esi]
	call	_Perl_get_context
LVL4101:
	mov	DWORD PTR [esp+4], esi
	mov	DWORD PTR [esp], eax
	call	_Perl_sv_2bool
LVL4102:
	movsx	eax, al
	mov	DWORD PTR [esp+120], eax
	jmp	L1114
	.p2align 2,,3
L1160:
LBB323:
	.loc 2 254 0 is_stmt 0 discriminator 1
	call	_Perl_get_context
LVL4103:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4104:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L1117
	jmp	L1136
LVL4105:
	.p2align 2,,3
L1161:
LBE323:
LBB324:
	.loc 2 256 0 is_stmt 1 discriminator 1
	call	_Perl_get_context
LVL4106:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4107:
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+esi]
	mov	eax, DWORD PTR [eax+12]
	cmp	BYTE PTR [eax], 48
	jne	L1123
	jmp	L1137
LVL4108:
L1155:
LBE324:
LBE326:
	.loc 2 242 0
	call	_Perl_get_context
LVL4109:
	mov	edx, OFFSET FLAT:LC42
	mov	eax, edi
	call	_S_croak_xs_usage.isra.0
LVL4110:
L1159:
	.loc 2 286 0
	call	___stack_chk_fail
LVL4111:
	.cfi_endproc
LFE97:
	.section .rdata,"dr"
LC43:
	.ascii "$$$$$$$$$$$$\0"
LC44:
	.ascii "Request.c\0"
LC45:
	.ascii "Purple::Request::input\0"
LC46:
	.ascii "$$$$$$\0"
LC47:
	.ascii "Purple::Request::file\0"
LC48:
	.ascii "$$$$$$$$$\0"
LC49:
	.ascii "Purple::Request::fields\0"
LC50:
	.ascii "$$\0"
LC51:
	.ascii "Purple::Request::close\0"
LC52:
	.ascii "$\0"
	.align 4
LC53:
	.ascii "Purple::Request::close_with_handle\0"
LC54:
	.ascii "$$$;$\0"
	.align 4
LC55:
	.ascii "Purple::Request::Field::account_new\0"
	.align 4
LC56:
	.ascii "Purple::Request::Field::account_get_default_value\0"
	.align 4
LC57:
	.ascii "Purple::Request::Field::account_get_filter\0"
	.align 4
LC58:
	.ascii "Purple::Request::Field::account_get_show_all\0"
	.align 4
LC59:
	.ascii "Purple::Request::Field::account_get_value\0"
	.align 4
LC60:
	.ascii "Purple::Request::Field::account_set_default_value\0"
	.align 4
LC61:
	.ascii "Purple::Request::Field::account_set_show_all\0"
	.align 4
LC62:
	.ascii "Purple::Request::Field::account_set_value\0"
	.align 4
LC63:
	.ascii "Purple::Request::Field::bool_new\0"
	.align 4
LC64:
	.ascii "Purple::Request::Field::bool_get_default_value\0"
	.align 4
LC65:
	.ascii "Purple::Request::Field::bool_get_value\0"
	.align 4
LC66:
	.ascii "Purple::Request::Field::bool_set_default_value\0"
	.align 4
LC67:
	.ascii "Purple::Request::Field::bool_set_value\0"
	.align 4
LC68:
	.ascii "Purple::Request::Field::choice_new\0"
	.align 4
LC69:
	.ascii "Purple::Request::Field::choice_add\0"
	.align 4
LC70:
	.ascii "Purple::Request::Field::choice_get_default_value\0"
	.align 4
LC71:
	.ascii "Purple::Request::Field::choice_get_labels\0"
	.align 4
LC72:
	.ascii "Purple::Request::Field::choice_get_value\0"
	.align 4
LC73:
	.ascii "Purple::Request::Field::choice_set_default_value\0"
	.align 4
LC74:
	.ascii "Purple::Request::Field::choice_set_value\0"
	.align 4
LC75:
	.ascii "Purple::Request::Field::int_new\0"
	.align 4
LC76:
	.ascii "Purple::Request::Field::int_get_default_value\0"
	.align 4
LC77:
	.ascii "Purple::Request::Field::int_get_value\0"
	.align 4
LC78:
	.ascii "Purple::Request::Field::int_set_default_value\0"
	.align 4
LC79:
	.ascii "Purple::Request::Field::int_set_value\0"
	.align 4
LC80:
	.ascii "Purple::Request::Field::is_required\0"
LC81:
	.ascii "$$$\0"
	.align 4
LC82:
	.ascii "Purple::Request::Field::label_new\0"
	.align 4
LC83:
	.ascii "Purple::Request::Field::list_new\0"
	.align 4
LC84:
	.ascii "Purple::Request::Field::list_add\0"
LC85:
	.ascii "$$$$\0"
	.align 4
LC86:
	.ascii "Purple::Request::Field::list_add_icon\0"
	.align 4
LC87:
	.ascii "Purple::Request::Field::list_add_selected\0"
	.align 4
LC88:
	.ascii "Purple::Request::Field::list_clear_selected\0"
	.align 4
LC89:
	.ascii "Purple::Request::Field::list_get_data\0"
	.align 4
LC90:
	.ascii "Purple::Request::Field::list_get_items\0"
	.align 4
LC91:
	.ascii "Purple::Request::Field::list_get_multi_select\0"
	.align 4
LC92:
	.ascii "Purple::Request::Field::list_get_selected\0"
	.align 4
LC93:
	.ascii "Purple::Request::Field::list_is_selected\0"
	.align 4
LC94:
	.ascii "Purple::Request::Field::list_set_multi_select\0"
LC95:
	.ascii "Purple::Request::Field::new\0"
	.align 4
LC96:
	.ascii "Purple::Request::Field::set_label\0"
	.align 4
LC97:
	.ascii "Purple::Request::Field::set_required\0"
	.align 4
LC98:
	.ascii "Purple::Request::Field::set_type_hint\0"
	.align 4
LC99:
	.ascii "Purple::Request::Field::set_visible\0"
LC100:
	.ascii "$$$$$\0"
	.align 4
LC101:
	.ascii "Purple::Request::Field::string_new\0"
	.align 4
LC102:
	.ascii "Purple::Request::Field::string_get_default_value\0"
	.align 4
LC103:
	.ascii "Purple::Request::Field::string_get_value\0"
	.align 4
LC104:
	.ascii "Purple::Request::Field::string_is_editable\0"
	.align 4
LC105:
	.ascii "Purple::Request::Field::string_is_masked\0"
	.align 4
LC106:
	.ascii "Purple::Request::Field::string_is_multiline\0"
	.align 4
LC107:
	.ascii "Purple::Request::Field::string_set_default_value\0"
	.align 4
LC108:
	.ascii "Purple::Request::Field::string_set_editable\0"
	.align 4
LC109:
	.ascii "Purple::Request::Field::string_set_masked\0"
	.align 4
LC110:
	.ascii "Purple::Request::Field::string_set_value\0"
	.align 4
LC111:
	.ascii "Purple::Request::Field::Group::add_field\0"
	.align 4
LC112:
	.ascii "Purple::Request::Field::Group::destroy\0"
	.align 4
LC113:
	.ascii "Purple::Request::Field::Group::get_fields\0"
	.align 4
LC114:
	.ascii "Purple::Request::Field::Group::get_title\0"
	.align 4
LC115:
	.ascii "Purple::Request::Field::Group::new\0"
	.align 4
LC116:
	.ascii "Purple::Request::Field::destroy\0"
	.align 4
LC117:
	.ascii "Purple::Request::Field::get_id\0"
	.align 4
LC118:
	.ascii "Purple::Request::Field::get_label\0"
	.align 4
LC119:
	.ascii "Purple::Request::Field::get_type\0"
	.align 4
LC120:
	.ascii "Purple::Request::Field::get_type_hint\0"
	.align 4
LC121:
	.ascii "Purple::Request::Field::is_visible\0"
LC122:
	.ascii "Purple::Request::Fields::new\0"
	.align 4
LC123:
	.ascii "Purple::Request::Fields::add_group\0"
	.align 4
LC124:
	.ascii "Purple::Request::Fields::all_required_filled\0"
	.align 4
LC125:
	.ascii "Purple::Request::Fields::destroy\0"
	.align 4
LC126:
	.ascii "Purple::Request::Fields::exists\0"
	.align 4
LC127:
	.ascii "Purple::Request::Fields::get_account\0"
	.align 4
LC128:
	.ascii "Purple::Request::Fields::get_bool\0"
	.align 4
LC129:
	.ascii "Purple::Request::Fields::get_choice\0"
	.align 4
LC130:
	.ascii "Purple::Request::Fields::get_field\0"
	.align 4
LC131:
	.ascii "Purple::Request::Fields::get_groups\0"
	.align 4
LC132:
	.ascii "Purple::Request::Fields::get_integer\0"
	.align 4
LC133:
	.ascii "Purple::Request::Fields::get_required\0"
	.align 4
LC134:
	.ascii "Purple::Request::Fields::get_string\0"
	.align 4
LC135:
	.ascii "Purple::Request::Fields::is_field_required\0"
LC136:
	.ascii "Purple::RequestType\0"
LC137:
	.ascii "Purple::RequestFieldType\0"
	.text
	.p2align 2,,3
	.globl	_boot_Purple__Request
	.def	_boot_Purple__Request;	.scl	2;	.type	32;	.endef
_boot_Purple__Request:
LFB180:
	.loc 2 1960 0
	.cfi_startproc
LVL4112:
	push	ebp
LCFI946:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
LCFI947:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
LCFI948:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
LCFI949:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 76
LCFI950:
	.cfi_def_cfa_offset 96
	.loc 2 1960 0
	mov	eax, DWORD PTR ___stack_chk_guard
	mov	DWORD PTR [esp+60], eax
	xor	eax, eax
	.loc 2 1961 0
	call	_Perl_get_context
LVL4113:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL4114:
	call	_Perl_get_context
LVL4115:
	mov	DWORD PTR [esp], eax
	call	_Perl_Imarkstack_ptr_ptr
LVL4116:
	mov	edx, DWORD PTR [eax]
	mov	esi, DWORD PTR [edx]
LVL4117:
	sub	edx, 4
	mov	DWORD PTR [eax], edx
	call	_Perl_get_context
LVL4118:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4119:
	inc	esi
LVL4120:
	mov	DWORD PTR [esp+44], esi
LVL4121:
	.loc 2 1975 0
	call	_Perl_get_context
LVL4122:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC43
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request_input
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC45
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4123:
	.loc 2 1976 0
	call	_Perl_get_context
LVL4124:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC46
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request_file
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC47
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4125:
	.loc 2 1977 0
	call	_Perl_get_context
LVL4126:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC48
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request_fields
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC49
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4127:
	.loc 2 1978 0
	call	_Perl_get_context
LVL4128:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request_close
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC51
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4129:
	.loc 2 1979 0
	call	_Perl_get_context
LVL4130:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request_close_with_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC53
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4131:
	.loc 2 1980 0
	call	_Perl_get_context
LVL4132:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC54
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC55
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4133:
	.loc 2 1981 0
	call	_Perl_get_context
LVL4134:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_get_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC56
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4135:
	.loc 2 1982 0
	call	_Perl_get_context
LVL4136:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_get_filter
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC57
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4137:
	.loc 2 1983 0
	call	_Perl_get_context
LVL4138:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_get_show_all
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC58
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4139:
	.loc 2 1984 0
	call	_Perl_get_context
LVL4140:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_get_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC59
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4141:
	.loc 2 1985 0
	call	_Perl_get_context
LVL4142:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_set_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC60
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4143:
	.loc 2 1986 0
	call	_Perl_get_context
LVL4144:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_set_show_all
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC61
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4145:
	.loc 2 1987 0
	call	_Perl_get_context
LVL4146:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_account_set_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC62
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4147:
	.loc 2 1988 0
	call	_Perl_get_context
LVL4148:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC54
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_bool_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC63
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4149:
	.loc 2 1989 0
	call	_Perl_get_context
LVL4150:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_bool_get_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC64
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4151:
	.loc 2 1990 0
	call	_Perl_get_context
LVL4152:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_bool_get_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC65
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4153:
	.loc 2 1991 0
	call	_Perl_get_context
LVL4154:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_bool_set_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC66
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4155:
	.loc 2 1992 0
	call	_Perl_get_context
LVL4156:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_bool_set_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC67
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4157:
	.loc 2 1993 0
	call	_Perl_get_context
LVL4158:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC54
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC68
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4159:
	.loc 2 1994 0
	call	_Perl_get_context
LVL4160:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_add
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC69
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4161:
	.loc 2 1995 0
	call	_Perl_get_context
LVL4162:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_get_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC70
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4163:
	.loc 2 1996 0
	call	_Perl_get_context
LVL4164:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_get_labels
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC71
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4165:
	.loc 2 1997 0
	call	_Perl_get_context
LVL4166:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_get_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC72
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4167:
	.loc 2 1998 0
	call	_Perl_get_context
LVL4168:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_set_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC73
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4169:
	.loc 2 1999 0
	call	_Perl_get_context
LVL4170:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_choice_set_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC74
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4171:
	.loc 2 2000 0
	call	_Perl_get_context
LVL4172:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC54
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_int_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC75
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4173:
	.loc 2 2001 0
	call	_Perl_get_context
LVL4174:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_int_get_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC76
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4175:
	.loc 2 2002 0
	call	_Perl_get_context
LVL4176:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_int_get_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC77
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4177:
	.loc 2 2003 0
	call	_Perl_get_context
LVL4178:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_int_set_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC78
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4179:
	.loc 2 2004 0
	call	_Perl_get_context
LVL4180:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_int_set_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC79
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4181:
	.loc 2 2005 0
	call	_Perl_get_context
LVL4182:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_is_required
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC80
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4183:
	.loc 2 2006 0
	call	_Perl_get_context
LVL4184:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC81
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_label_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC82
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4185:
	.loc 2 2007 0
	call	_Perl_get_context
LVL4186:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC81
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC83
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4187:
	.loc 2 2008 0
	call	_Perl_get_context
LVL4188:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC81
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_add
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC84
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4189:
	.loc 2 2009 0
	call	_Perl_get_context
LVL4190:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC85
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_add_icon
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC86
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4191:
	.loc 2 2010 0
	call	_Perl_get_context
LVL4192:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_add_selected
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC87
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4193:
	.loc 2 2011 0
	call	_Perl_get_context
LVL4194:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_clear_selected
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC88
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4195:
	.loc 2 2012 0
	call	_Perl_get_context
LVL4196:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_get_data
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC89
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4197:
	.loc 2 2013 0
	call	_Perl_get_context
LVL4198:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_get_items
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC90
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4199:
	.loc 2 2014 0
	call	_Perl_get_context
LVL4200:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_get_multi_select
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC91
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4201:
	.loc 2 2015 0
	call	_Perl_get_context
LVL4202:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_get_selected
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC92
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4203:
	.loc 2 2016 0
	call	_Perl_get_context
LVL4204:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_is_selected
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC93
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4205:
	.loc 2 2017 0
	call	_Perl_get_context
LVL4206:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_list_set_multi_select
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC94
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4207:
	.loc 2 2018 0
	call	_Perl_get_context
LVL4208:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC85
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC95
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4209:
	.loc 2 2019 0
	call	_Perl_get_context
LVL4210:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_set_label
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC96
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4211:
	.loc 2 2020 0
	call	_Perl_get_context
LVL4212:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_set_required
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC97
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4213:
	.loc 2 2021 0
	call	_Perl_get_context
LVL4214:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_set_type_hint
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC98
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4215:
	.loc 2 2022 0
	call	_Perl_get_context
LVL4216:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_set_visible
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC99
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4217:
	.loc 2 2023 0
	call	_Perl_get_context
LVL4218:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC100
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC101
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4219:
	.loc 2 2024 0
	call	_Perl_get_context
LVL4220:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_get_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC102
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4221:
	.loc 2 2025 0
	call	_Perl_get_context
LVL4222:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_get_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC103
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4223:
	.loc 2 2026 0
	call	_Perl_get_context
LVL4224:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_is_editable
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC104
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4225:
	.loc 2 2027 0
	call	_Perl_get_context
LVL4226:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_is_masked
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC105
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4227:
	.loc 2 2028 0
	call	_Perl_get_context
LVL4228:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_is_multiline
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC106
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4229:
	.loc 2 2029 0
	call	_Perl_get_context
LVL4230:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_set_default_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC107
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4231:
	.loc 2 2030 0
	call	_Perl_get_context
LVL4232:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_set_editable
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC108
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4233:
	.loc 2 2031 0
	call	_Perl_get_context
LVL4234:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_set_masked
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC109
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4235:
	.loc 2 2032 0
	call	_Perl_get_context
LVL4236:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_string_set_value
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC110
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4237:
	.loc 2 2033 0
	call	_Perl_get_context
LVL4238:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field__Group_add_field
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC111
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4239:
	.loc 2 2034 0
	call	_Perl_get_context
LVL4240:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field__Group_destroy
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC112
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4241:
	.loc 2 2035 0
	call	_Perl_get_context
LVL4242:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field__Group_get_fields
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC113
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4243:
	.loc 2 2036 0
	call	_Perl_get_context
LVL4244:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field__Group_get_title
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC114
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4245:
	.loc 2 2037 0
	call	_Perl_get_context
LVL4246:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field__Group_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC115
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4247:
	.loc 2 2038 0
	call	_Perl_get_context
LVL4248:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_destroy
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC116
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4249:
	.loc 2 2039 0
	call	_Perl_get_context
LVL4250:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_get_id
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC117
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4251:
	.loc 2 2040 0
	call	_Perl_get_context
LVL4252:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_get_label
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC118
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4253:
	.loc 2 2041 0
	call	_Perl_get_context
LVL4254:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_get_type
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC119
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4255:
	.loc 2 2042 0
	call	_Perl_get_context
LVL4256:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_get_type_hint
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC120
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4257:
	.loc 2 2043 0
	call	_Perl_get_context
LVL4258:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Field_is_visible
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC121
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4259:
	.loc 2 2044 0
	call	_Perl_get_context
LVL4260:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_new
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC122
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4261:
	.loc 2 2045 0
	call	_Perl_get_context
LVL4262:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_add_group
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC123
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4263:
	.loc 2 2046 0
	call	_Perl_get_context
LVL4264:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_all_required_filled
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC124
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4265:
	.loc 2 2047 0
	call	_Perl_get_context
LVL4266:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_destroy
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC125
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4267:
	.loc 2 2048 0
	call	_Perl_get_context
LVL4268:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_exists
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC126
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4269:
	.loc 2 2049 0
	call	_Perl_get_context
LVL4270:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_account
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC127
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4271:
	.loc 2 2050 0
	call	_Perl_get_context
LVL4272:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_bool
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC128
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4273:
	.loc 2 2051 0
	call	_Perl_get_context
LVL4274:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_choice
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC129
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4275:
	.loc 2 2052 0
	call	_Perl_get_context
LVL4276:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_field
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC130
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4277:
	.loc 2 2053 0
	call	_Perl_get_context
LVL4278:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_groups
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC131
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4279:
	.loc 2 2054 0
	call	_Perl_get_context
LVL4280:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_integer
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC132
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4281:
	.loc 2 2055 0
	call	_Perl_get_context
LVL4282:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC52
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_required
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC133
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4283:
	.loc 2 2056 0
	call	_Perl_get_context
LVL4284:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_get_string
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC134
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4285:
	.loc 2 2057 0
	call	_Perl_get_context
LVL4286:
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+16], OFFSET FLAT:LC50
	mov	DWORD PTR [esp+12], OFFSET FLAT:LC44
	mov	DWORD PTR [esp+8], OFFSET FLAT:_XS_Purple__Request__Fields_is_field_required
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC135
	mov	DWORD PTR [esp], eax
	call	_Perl_newXS_flags
LVL4287:
LBB327:
	.loc 1 89 0
	call	_Perl_get_context
LVL4288:
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC136
	mov	DWORD PTR [esp], eax
	call	_Perl_gv_stashpv
LVL4289:
	mov	edi, eax
LVL4290:
	.loc 1 90 0
	call	_Perl_get_context
LVL4291:
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC137
	mov	DWORD PTR [esp], eax
	call	_Perl_gv_stashpv
LVL4292:
	mov	ebx, eax
LVL4293:
	.loc 1 115 0
	mov	DWORD PTR _civ.55882, OFFSET FLAT:_request_const_iv.55883+40
	mov	edx, OFFSET FLAT:_request_const_iv.55883+48
LVL4294:
	.p2align 2,,3
L1165:
	.loc 1 116 0
	mov	ebp, DWORD PTR [edx-4]
	call	_Perl_get_context
LVL4295:
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], eax
	call	_Perl_newSViv
LVL4296:
	mov	esi, eax
	mov	eax, DWORD PTR _civ.55882
	mov	ebp, DWORD PTR [eax]
	call	_Perl_get_context
LVL4297:
	mov	DWORD PTR [esp+12], esi
	mov	DWORD PTR [esp+8], ebp
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_newCONSTSUB
LVL4298:
	.loc 1 115 0
	mov	edx, DWORD PTR _civ.55882
	lea	eax, [edx-8]
	mov	DWORD PTR _civ.55882, eax
	cmp	edx, OFFSET FLAT:_request_const_iv.55883
	ja	L1165
	.loc 1 118 0
	mov	DWORD PTR _civ.55882, OFFSET FLAT:_request_field_const_iv.55884+64
	mov	edx, OFFSET FLAT:_request_field_const_iv.55884+72
LVL4299:
	.p2align 2,,3
L1166:
	.loc 1 119 0
	mov	edi, DWORD PTR [edx-4]
	call	_Perl_get_context
LVL4300:
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], eax
	call	_Perl_newSViv
LVL4301:
	mov	ebp, eax
	mov	eax, DWORD PTR _civ.55882
	mov	edi, DWORD PTR [eax]
	call	_Perl_get_context
LVL4302:
	mov	DWORD PTR [esp+12], ebp
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_newCONSTSUB
LVL4303:
	.loc 1 118 0
	mov	edx, DWORD PTR _civ.55882
	lea	eax, [edx-8]
	mov	DWORD PTR _civ.55882, eax
	cmp	edx, OFFSET FLAT:_request_field_const_iv.55884
	ja	L1166
LBE327:
	.loc 2 2101 0
	call	_Perl_get_context
LVL4304:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iunitcheckav_ptr
LVL4305:
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	L1167
	.loc 2 2102 0
	call	_Perl_get_context
LVL4306:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iunitcheckav_ptr
LVL4307:
	mov	edi, DWORD PTR [eax]
	call	_Perl_get_context
LVL4308:
	mov	DWORD PTR [esp], eax
	call	_Perl_Iscopestack_ix_ptr
LVL4309:
	mov	ebx, DWORD PTR [eax]
LVL4310:
	call	_Perl_get_context
LVL4311:
	mov	DWORD PTR [esp+8], edi
	mov	DWORD PTR [esp+4], ebx
	mov	DWORD PTR [esp], eax
	call	_Perl_call_list
LVL4312:
L1167:
LBB328:
	.loc 2 2104 0
	call	_Perl_get_context
LVL4313:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4314:
	mov	esi, DWORD PTR [esp+44]
	sal	esi, 2
	mov	ebx, DWORD PTR [eax]
	add	ebx, esi
	call	_Perl_get_context
LVL4315:
	mov	DWORD PTR [esp], eax
	call	_Perl_Isv_yes_ptr
LVL4316:
	mov	DWORD PTR [ebx], eax
LVL4317:
LBB329:
	call	_Perl_get_context
LVL4318:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_sp_ptr
LVL4319:
	mov	ebx, eax
	call	_Perl_get_context
LVL4320:
	mov	DWORD PTR [esp], eax
	call	_Perl_Istack_base_ptr
LVL4321:
	add	esi, DWORD PTR [eax]
	mov	DWORD PTR [ebx], esi
LBE329:
LBE328:
	.loc 2 2105 0
	mov	eax, DWORD PTR [esp+60]
	xor	eax, DWORD PTR ___stack_chk_guard
	jne	L1172
	add	esp, 76
LCFI951:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
LCFI952:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
LCFI953:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
LCFI954:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
LCFI955:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1172:
LCFI956:
	.cfi_restore_state
	call	___stack_chk_fail
LVL4322:
	.cfi_endproc
LFE180:
.lcomm _civ.55882,4,4
	.section .rdata,"dr"
LC138:
	.ascii "INPUT\0"
LC139:
	.ascii "CHOICE\0"
LC140:
	.ascii "ACTION\0"
LC141:
	.ascii "FIELDS\0"
LC142:
	.ascii "FILE\0"
LC143:
	.ascii "FOLDER\0"
	.align 32
_request_const_iv.55883:
	.long	LC138
	.long	0
	.long	LC139
	.long	1
	.long	LC140
	.long	2
	.long	LC141
	.long	3
	.long	LC142
	.long	4
	.long	LC143
	.long	5
LC144:
	.ascii "NONE\0"
LC145:
	.ascii "STRING\0"
LC146:
	.ascii "INTEGER\0"
LC147:
	.ascii "BOOLEAN\0"
LC148:
	.ascii "LIST\0"
LC149:
	.ascii "LABEL\0"
LC150:
	.ascii "IMAGE\0"
LC151:
	.ascii "ACCOUNT\0"
	.align 32
_request_field_const_iv.55884:
	.long	LC144
	.long	0
	.long	LC145
	.long	1
	.long	LC146
	.long	2
	.long	LC147
	.long	3
	.long	LC139
	.long	4
	.long	LC148
	.long	5
	.long	LC149
	.long	6
	.long	LC150
	.long	7
	.long	LC151
	.long	8
	.text
Letext0:
	.file 3 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/windef.h"
	.file 4 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/include/stddef.h"
	.file 5 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/winnt.h"
	.file 6 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/winsock2.h"
	.file 7 "../../../../../win32-dev/gtk_2_0-2.14/lib/glib-2.0/include/glibconfig.h"
	.file 8 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/gtypes.h"
	.file 9 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/time.h"
	.file 10 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/glist.h"
	.file 11 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/ghash.h"
	.file 12 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/gslist.h"
	.file 13 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/sys/types.h"
	.file 14 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/setjmp.h"
	.file 15 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/sys/stat.h"
	.file 16 "../../../../../win32-dev/perl-5.10.0/CORE/dirent.h"
	.file 17 "../../../../../win32-dev/perl-5.10.0/CORE/perl.h"
	.file 18 "../../../../../win32-dev/perl-5.10.0/CORE/op.h"
	.file 19 "../../../../../win32-dev/perl-5.10.0/CORE/cop.h"
	.file 20 "../../../../../win32-dev/perl-5.10.0/CORE/intrpvar.h"
	.file 21 "../../../../../win32-dev/perl-5.10.0/CORE/sv.h"
	.file 22 "../../../../../win32-dev/perl-5.10.0/CORE/regexp.h"
	.file 23 "../../../../../win32-dev/perl-5.10.0/CORE/gv.h"
	.file 24 "../../../../../win32-dev/perl-5.10.0/CORE/mg.h"
	.file 25 "../../../../../win32-dev/perl-5.10.0/CORE/av.h"
	.file 26 "../../../../../win32-dev/perl-5.10.0/CORE/hv.h"
	.file 27 "../../../../../win32-dev/perl-5.10.0/CORE/cv.h"
	.file 28 "../../../../../win32-dev/perl-5.10.0/CORE/handy.h"
	.file 29 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/stdio.h"
	.file 30 "../../../../../win32-dev/perl-5.10.0/CORE/win32.h"
	.file 31 "../../../../../win32-dev/perl-5.10.0/CORE/perlio.h"
	.file 32 "../../../../../win32-dev/perl-5.10.0/CORE/perly.h"
	.file 33 "../../../../../win32-dev/perl-5.10.0/CORE/pad.h"
	.file 34 "../../../../../win32-dev/perl-5.10.0/CORE/parser.h"
	.file 35 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/gobject/gclosure.h"
	.file 36 "../../../../libpurple/account.h"
	.file 37 "../../../../libpurple/connection.h"
	.file 38 "../../../../libpurple/plugin.h"
	.file 39 "../../../../libpurple/pluginpref.h"
	.file 40 "../../../../libpurple/status.h"
	.file 41 "../../../../libpurple/buddyicon.h"
	.file 42 "../../../../libpurple/conversation.h"
	.file 43 "../../../../libpurple/log.h"
	.file 44 "../../../../libpurple/proxy.h"
	.file 45 "../../../../libpurple/privacy.h"
	.file 46 "../../../../libpurple/request.h"
	.file 47 "module.h"
	.file 48 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/stdlib.h"
	.file 49 "c:/workspace/pidgin-devel/win32-dev/mingw-4.7.2/bin/../lib/gcc/mingw32/4.7.2/../../../../include/ctype.h"
	.file 50 "../../../../../win32-dev/perl-5.10.0/CORE/proto.h"
	.file 51 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/gmem.h"
	.file 52 "../perl-common.h"
	.file 53 "../../../../../win32-dev/gtk_2_0-2.14/include/glib-2.0/glib/gutils.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x186b5
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.2\0"
	.byte	0x1
	.ascii "Request.c\0"
	.ascii "C:\\\\workspace\\\\pidgin-devel\\\\pidgin-2.10.11\\\\libpurple\\\\plugins\\\\perl\\\\common\0"
	.secrel32	Ldebug_ranges0+0x808
	.long	0
	.long	0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x3
	.byte	0xe5
	.long	0x96
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.ascii "WINBOOL\0"
	.byte	0x3
	.byte	0xe6
	.long	0xba
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.byte	0x4
	.long	0xba
	.uleb128 0x3
	.ascii "BOOL\0"
	.byte	0x3
	.byte	0xea
	.long	0xab
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "WORD\0"
	.byte	0x3
	.byte	0xf1
	.long	0xf0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x4
	.byte	0x4
	.long	0x121
	.uleb128 0x5
	.uleb128 0x3
	.ascii "UINT\0"
	.byte	0x3
	.byte	0xfb
	.long	0x12e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x4
	.byte	0xd5
	.long	0x12e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x4
	.byte	0x4
	.long	0x81
	.uleb128 0x4
	.byte	0x4
	.long	0xf0
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.ascii "HANDLE\0"
	.byte	0x5
	.byte	0x94
	.long	0x165
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x7
	.ascii "HWND__\0"
	.byte	0x4
	.byte	0x3
	.word	0x12b
	.long	0x1d9
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x3
	.word	0x12b
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.ascii "HWND\0"
	.byte	0x3
	.word	0x12b
	.long	0x1e6
	.uleb128 0x4
	.byte	0x4
	.long	0x1bb
	.uleb128 0xa
	.long	0x81
	.long	0x1fc
	.uleb128 0xb
	.long	0x1af
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x165
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x4
	.byte	0x4
	.long	0x159
	.uleb128 0xc
	.ascii "servent\0"
	.byte	0x10
	.byte	0x6
	.byte	0xa1
	.long	0x26b
	.uleb128 0xd
	.ascii "s_name\0"
	.byte	0x6
	.byte	0xa2
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "s_aliases\0"
	.byte	0x6
	.byte	0xa3
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "s_port\0"
	.byte	0x6
	.byte	0xa4
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "s_proto\0"
	.byte	0x6
	.byte	0xa5
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.long	0x81
	.long	0x27c
	.uleb128 0xe
	.long	0x1af
	.word	0x100
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x282
	.uleb128 0xf
	.long	0x81
	.uleb128 0x3
	.ascii "gsize\0"
	.byte	0x7
	.byte	0x5a
	.long	0x12e
	.uleb128 0x3
	.ascii "gchar\0"
	.byte	0x8
	.byte	0x2d
	.long	0x81
	.uleb128 0x3
	.ascii "gint\0"
	.byte	0x8
	.byte	0x30
	.long	0xba
	.uleb128 0x3
	.ascii "gboolean\0"
	.byte	0x8
	.byte	0x31
	.long	0x2a1
	.uleb128 0x3
	.ascii "guchar\0"
	.byte	0x8
	.byte	0x33
	.long	0xd3
	.uleb128 0x3
	.ascii "guint\0"
	.byte	0x8
	.byte	0x36
	.long	0x12e
	.uleb128 0x3
	.ascii "gpointer\0"
	.byte	0x8
	.byte	0x4c
	.long	0x165
	.uleb128 0x4
	.byte	0x4
	.long	0x2ee
	.uleb128 0xf
	.long	0x294
	.uleb128 0x4
	.byte	0x4
	.long	0x294
	.uleb128 0x4
	.byte	0x4
	.long	0x2ff
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x307
	.uleb128 0x11
	.byte	0x1
	.long	0x313
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x3
	.ascii "__time32_t\0"
	.byte	0x9
	.byte	0x28
	.long	0x10f
	.uleb128 0x3
	.ascii "time_t\0"
	.byte	0x9
	.byte	0x3d
	.long	0x313
	.uleb128 0xc
	.ascii "tm\0"
	.byte	0x24
	.byte	0x9
	.byte	0x50
	.long	0x3df
	.uleb128 0xd
	.ascii "tm_sec\0"
	.byte	0x9
	.byte	0x52
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "tm_min\0"
	.byte	0x9
	.byte	0x53
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "tm_hour\0"
	.byte	0x9
	.byte	0x54
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "tm_mday\0"
	.byte	0x9
	.byte	0x55
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "tm_mon\0"
	.byte	0x9
	.byte	0x56
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "tm_year\0"
	.byte	0x9
	.byte	0x57
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "tm_wday\0"
	.byte	0x9
	.byte	0x58
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "tm_yday\0"
	.byte	0x9
	.byte	0x59
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "tm_isdst\0"
	.byte	0x9
	.byte	0x5a
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.ascii "GList\0"
	.byte	0xa
	.byte	0x26
	.long	0x3ec
	.uleb128 0xc
	.ascii "_GList\0"
	.byte	0xc
	.byte	0xa
	.byte	0x28
	.long	0x428
	.uleb128 0x13
	.secrel32	LASF0
	.byte	0xa
	.byte	0x2a
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "next\0"
	.byte	0xa
	.byte	0x2b
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "prev\0"
	.byte	0xa
	.byte	0x2c
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3df
	.uleb128 0x3
	.ascii "GHashTable\0"
	.byte	0xb
	.byte	0x27
	.long	0x440
	.uleb128 0x14
	.ascii "_GHashTable\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "GSList\0"
	.byte	0xc
	.byte	0x26
	.long	0x45c
	.uleb128 0xc
	.ascii "_GSList\0"
	.byte	0x8
	.byte	0xc
	.byte	0x28
	.long	0x48a
	.uleb128 0x13
	.secrel32	LASF0
	.byte	0xc
	.byte	0x2a
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "next\0"
	.byte	0xc
	.byte	0x2b
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x44e
	.uleb128 0x4
	.byte	0x4
	.long	0x42e
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x3
	.ascii "_dev_t\0"
	.byte	0xd
	.byte	0x3f
	.long	0x12e
	.uleb128 0x3
	.ascii "_ino_t\0"
	.byte	0xd
	.byte	0x4c
	.long	0x14c
	.uleb128 0x3
	.ascii "_mode_t\0"
	.byte	0xd
	.byte	0x60
	.long	0xf0
	.uleb128 0x3
	.ascii "jmp_buf\0"
	.byte	0xe
	.byte	0x21
	.long	0x4df
	.uleb128 0xa
	.long	0xba
	.long	0x4ef
	.uleb128 0xb
	.long	0x1af
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.ascii "_stati64\0"
	.byte	0x30
	.byte	0xf
	.byte	0x7a
	.long	0x5c7
	.uleb128 0xd
	.ascii "st_dev\0"
	.byte	0xf
	.byte	0x7b
	.long	0x4a5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "st_ino\0"
	.byte	0xf
	.byte	0x7c
	.long	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "st_mode\0"
	.byte	0xf
	.byte	0x7d
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.ascii "st_nlink\0"
	.byte	0xf
	.byte	0x7e
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "st_uid\0"
	.byte	0xf
	.byte	0x7f
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.ascii "st_gid\0"
	.byte	0xf
	.byte	0x80
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "st_rdev\0"
	.byte	0xf
	.byte	0x81
	.long	0x4a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "st_size\0"
	.byte	0xf
	.byte	0x82
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "st_atime\0"
	.byte	0xf
	.byte	0x83
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "st_mtime\0"
	.byte	0xf
	.byte	0x84
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "st_ctime\0"
	.byte	0xf
	.byte	0x85
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x15
	.ascii "direct\0"
	.word	0x10c
	.byte	0x10
	.byte	0x19
	.long	0x60c
	.uleb128 0xd
	.ascii "d_ino\0"
	.byte	0x10
	.byte	0x1b
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "d_namlen\0"
	.byte	0x10
	.byte	0x1c
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "d_name\0"
	.byte	0x10
	.byte	0x1d
	.long	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x15
	.ascii "_dir_struc\0"
	.word	0x124
	.byte	0x10
	.byte	0x21
	.long	0x68f
	.uleb128 0xd
	.ascii "start\0"
	.byte	0x10
	.byte	0x23
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "curr\0"
	.byte	0x10
	.byte	0x24
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "size\0"
	.byte	0x10
	.byte	0x25
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "nfiles\0"
	.byte	0x10
	.byte	0x26
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "dirstr\0"
	.byte	0x10
	.byte	0x27
	.long	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x10
	.byte	0x28
	.long	0x165
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.ascii "end\0"
	.byte	0x10
	.byte	0x29
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.byte	0
	.uleb128 0x3
	.ascii "DIR\0"
	.byte	0x10
	.byte	0x2a
	.long	0x60c
	.uleb128 0x9
	.ascii "IV\0"
	.byte	0x11
	.word	0x65e
	.long	0x10f
	.uleb128 0x9
	.ascii "UV\0"
	.byte	0x11
	.word	0x65f
	.long	0x96
	.uleb128 0x9
	.ascii "NV\0"
	.byte	0x11
	.word	0x732
	.long	0x202
	.uleb128 0x9
	.ascii "STRLEN\0"
	.byte	0x11
	.word	0x913
	.long	0x13e
	.uleb128 0x9
	.ascii "OP\0"
	.byte	0x11
	.word	0x91a
	.long	0x6d5
	.uleb128 0x7
	.ascii "op\0"
	.byte	0x18
	.byte	0x12
	.word	0x117
	.long	0x7a8
	.uleb128 0x16
	.secrel32	LASF2
	.byte	0x12
	.word	0x118
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x12
	.word	0x118
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF4
	.byte	0x12
	.word	0x118
	.long	0x50bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF5
	.byte	0x12
	.word	0x118
	.long	0x4f53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.secrel32	LASF6
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF7
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF8
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF9
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF10
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF11
	.byte	0x12
	.word	0x118
	.long	0x12e
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.secrel32	LASF12
	.byte	0x12
	.word	0x118
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.secrel32	LASF13
	.byte	0x12
	.word	0x118
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x9
	.ascii "COP\0"
	.byte	0x11
	.word	0x91b
	.long	0x7b4
	.uleb128 0xc
	.ascii "cop\0"
	.byte	0x38
	.byte	0x13
	.byte	0x88
	.long	0x921
	.uleb128 0x13
	.secrel32	LASF2
	.byte	0x13
	.byte	0x89
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF3
	.byte	0x13
	.byte	0x89
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF4
	.byte	0x13
	.byte	0x89
	.long	0x50bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF5
	.byte	0x13
	.byte	0x89
	.long	0x4f53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.secrel32	LASF6
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.secrel32	LASF7
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.secrel32	LASF8
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.secrel32	LASF9
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.secrel32	LASF10
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.secrel32	LASF11
	.byte	0x13
	.byte	0x89
	.long	0x12e
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF12
	.byte	0x13
	.byte	0x89
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF13
	.byte	0x13
	.byte	0x89
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xd
	.ascii "cop_line\0"
	.byte	0x13
	.byte	0x8c
	.long	0x3314
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "cop_label\0"
	.byte	0x13
	.byte	0x8d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "cop_stashpv\0"
	.byte	0x13
	.byte	0x8f
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "cop_file\0"
	.byte	0x13
	.byte	0x90
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "cop_hints\0"
	.byte	0x13
	.byte	0x95
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "cop_seq\0"
	.byte	0x13
	.byte	0x96
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "cop_warnings\0"
	.byte	0x13
	.byte	0x98
	.long	0x53eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "cop_hints_hash\0"
	.byte	0x13
	.byte	0x9b
	.long	0x5401
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x9
	.ascii "PMOP\0"
	.byte	0x11
	.word	0x920
	.long	0x92e
	.uleb128 0x7
	.ascii "pmop\0"
	.byte	0x30
	.byte	0x12
	.word	0x132
	.long	0xa88
	.uleb128 0x16
	.secrel32	LASF2
	.byte	0x12
	.word	0x133
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x12
	.word	0x133
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF4
	.byte	0x12
	.word	0x133
	.long	0x50bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF5
	.byte	0x12
	.word	0x133
	.long	0x4f53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.secrel32	LASF6
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF7
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF8
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF9
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF10
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF11
	.byte	0x12
	.word	0x133
	.long	0x12e
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.secrel32	LASF12
	.byte	0x12
	.word	0x133
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.secrel32	LASF13
	.byte	0x12
	.word	0x133
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.secrel32	LASF14
	.byte	0x12
	.word	0x134
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "op_last\0"
	.byte	0x12
	.word	0x135
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "op_pmoffset\0"
	.byte	0x12
	.word	0x137
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "op_pmflags\0"
	.byte	0x12
	.word	0x13b
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "op_pmreplrootu\0"
	.byte	0x12
	.word	0x143
	.long	0x50c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "op_pmstashstartu\0"
	.byte	0x12
	.word	0x14b
	.long	0x50f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x9
	.ascii "LOOP\0"
	.byte	0x11
	.word	0x924
	.long	0xa95
	.uleb128 0x7
	.ascii "loop\0"
	.byte	0x2c
	.byte	0x12
	.word	0x1b2
	.long	0xbcb
	.uleb128 0x16
	.secrel32	LASF2
	.byte	0x12
	.word	0x1b3
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x12
	.word	0x1b3
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF4
	.byte	0x12
	.word	0x1b3
	.long	0x50bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF5
	.byte	0x12
	.word	0x1b3
	.long	0x4f53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.secrel32	LASF6
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF7
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF8
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF9
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF10
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.secrel32	LASF11
	.byte	0x12
	.word	0x1b3
	.long	0x12e
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.secrel32	LASF12
	.byte	0x12
	.word	0x1b3
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.secrel32	LASF13
	.byte	0x12
	.word	0x1b3
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.secrel32	LASF14
	.byte	0x12
	.word	0x1b4
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "op_last\0"
	.byte	0x12
	.word	0x1b5
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "op_redoop\0"
	.byte	0x12
	.word	0x1b6
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "op_nextop\0"
	.byte	0x12
	.word	0x1b7
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "op_lastop\0"
	.byte	0x12
	.word	0x1b8
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.ascii "PerlInterpreter\0"
	.byte	0x11
	.word	0x926
	.long	0xbe3
	.uleb128 0x19
	.ascii "interpreter\0"
	.word	0x908
	.byte	0x11
	.word	0x1232
	.long	0x2505
	.uleb128 0xd
	.ascii "Istack_sp\0"
	.byte	0x14
	.byte	0x23
	.long	0x4881
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "Iop\0"
	.byte	0x14
	.byte	0x27
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "Icurpad\0"
	.byte	0x14
	.byte	0x29
	.long	0x4881
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "Istack_base\0"
	.byte	0x14
	.byte	0x2b
	.long	0x4881
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "Istack_max\0"
	.byte	0x14
	.byte	0x2c
	.long	0x4881
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "Iscopestack\0"
	.byte	0x14
	.byte	0x2e
	.long	0x3b59
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "Iscopestack_ix\0"
	.byte	0x14
	.byte	0x2f
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "Iscopestack_max\0"
	.byte	0x14
	.byte	0x30
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "Isavestack\0"
	.byte	0x14
	.byte	0x32
	.long	0x61ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "Isavestack_ix\0"
	.byte	0x14
	.byte	0x34
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "Isavestack_max\0"
	.byte	0x14
	.byte	0x35
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "Itmps_stack\0"
	.byte	0x14
	.byte	0x37
	.long	0x4881
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "Itmps_ix\0"
	.byte	0x14
	.byte	0x38
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "Itmps_floor\0"
	.byte	0x14
	.byte	0x39
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "Itmps_max\0"
	.byte	0x14
	.byte	0x3a
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "Imodcount\0"
	.byte	0x14
	.byte	0x3b
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.ascii "Imarkstack\0"
	.byte	0x14
	.byte	0x3e
	.long	0x3b59
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.ascii "Imarkstack_ptr\0"
	.byte	0x14
	.byte	0x40
	.long	0x3b59
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.ascii "Imarkstack_max\0"
	.byte	0x14
	.byte	0x41
	.long	0x3b59
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.ascii "ISv\0"
	.byte	0x14
	.byte	0x43
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.ascii "IXpv\0"
	.byte	0x14
	.byte	0x44
	.long	0x61b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.ascii "Ina\0"
	.byte	0x14
	.byte	0x51
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.ascii "Istatbuf\0"
	.byte	0x14
	.byte	0x55
	.long	0x4ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.ascii "Istatcache\0"
	.byte	0x14
	.byte	0x56
	.long	0x4ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.ascii "Istatgv\0"
	.byte	0x14
	.byte	0x57
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.ascii "Istatname\0"
	.byte	0x14
	.byte	0x58
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.ascii "Itimesbuf\0"
	.byte	0x14
	.byte	0x5b
	.long	0x33c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.ascii "Icurpm\0"
	.byte	0x14
	.byte	0x5f
	.long	0x4787
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.ascii "Irs\0"
	.byte	0x14
	.byte	0x71
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.ascii "Ilast_in_gv\0"
	.byte	0x14
	.byte	0x72
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.ascii "Iofs_sv\0"
	.byte	0x14
	.byte	0x73
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.ascii "Idefoutgv\0"
	.byte	0x14
	.byte	0x74
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.ascii "Ichopset\0"
	.byte	0x14
	.byte	0x75
	.long	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.ascii "Iformtarget\0"
	.byte	0x14
	.byte	0x76
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.ascii "Ibodytarget\0"
	.byte	0x14
	.byte	0x77
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.ascii "Itoptarget\0"
	.byte	0x14
	.byte	0x78
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.ascii "Idefstash\0"
	.byte	0x14
	.byte	0x7b
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.ascii "Icurstash\0"
	.byte	0x14
	.byte	0x7c
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.ascii "Irestartop\0"
	.byte	0x14
	.byte	0x7e
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.ascii "Icurcop\0"
	.byte	0x14
	.byte	0x7f
	.long	0x61b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.ascii "Icurstack\0"
	.byte	0x14
	.byte	0x80
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.ascii "Icurstackinfo\0"
	.byte	0x14
	.byte	0x81
	.long	0x61be
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.ascii "Imainstack\0"
	.byte	0x14
	.byte	0x82
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.ascii "Itop_env\0"
	.byte	0x14
	.byte	0x85
	.long	0x558c
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.ascii "Istart_env\0"
	.byte	0x14
	.byte	0x86
	.long	0x53dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.ascii "Ierrors\0"
	.byte	0x14
	.byte	0x87
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.ascii "Ihv_fetch_ent_mh\0"
	.byte	0x14
	.byte	0x8a
	.long	0x488d
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xd
	.ascii "Ilastgotoprobe\0"
	.byte	0x14
	.byte	0x8c
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xd
	.ascii "Isortcop\0"
	.byte	0x14
	.byte	0x8f
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0xd
	.ascii "Isortstash\0"
	.byte	0x14
	.byte	0x90
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xd
	.ascii "Ifirstgv\0"
	.byte	0x14
	.byte	0x91
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xd
	.ascii "Isecondgv\0"
	.byte	0x14
	.byte	0x92
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xd
	.ascii "Iefloatbuf\0"
	.byte	0x14
	.byte	0x95
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0xd
	.ascii "Iefloatsize\0"
	.byte	0x14
	.byte	0x96
	.long	0x6bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.ascii "Iscreamfirst\0"
	.byte	0x14
	.byte	0x9a
	.long	0x3b59
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.ascii "Iscreamnext\0"
	.byte	0x14
	.byte	0x9b
	.long	0x3b59
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.ascii "Ilastscream\0"
	.byte	0x14
	.byte	0x9c
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xd
	.ascii "Ireg_state\0"
	.byte	0x14
	.byte	0x9e
	.long	0x4481
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xd
	.ascii "Iregdummy\0"
	.byte	0x14
	.byte	0xa0
	.long	0x38c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xd
	.ascii "Idumpindent\0"
	.byte	0x14
	.byte	0xa2
	.long	0x32f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0xd
	.ascii "Iutf8locale\0"
	.byte	0x14
	.byte	0xa6
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f2
	.uleb128 0xd
	.ascii "Irehash_seed_set\0"
	.byte	0x14
	.byte	0xa7
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f3
	.uleb128 0xd
	.ascii "Icolors\0"
	.byte	0x14
	.byte	0xa9
	.long	0x61c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0xd
	.ascii "Ipeepp\0"
	.byte	0x14
	.byte	0xab
	.long	0x60f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.ascii "Imaxscream\0"
	.byte	0x14
	.byte	0xae
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.ascii "Ireginterp_cnt\0"
	.byte	0x14
	.byte	0xaf
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.ascii "Iwatchaddr\0"
	.byte	0x14
	.byte	0xb0
	.long	0x20c
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.ascii "Iwatchok\0"
	.byte	0x14
	.byte	0xb1
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.ascii "Iregmatch_slab\0"
	.byte	0x14
	.byte	0xb6
	.long	0x61d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.ascii "Iregmatch_state\0"
	.byte	0x14
	.byte	0xb7
	.long	0x61da
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.ascii "Idelaymagic\0"
	.byte	0x14
	.byte	0xbb
	.long	0x32f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.ascii "Ilocalizing\0"
	.byte	0x14
	.byte	0xbc
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22a
	.uleb128 0xd
	.ascii "Icolorset\0"
	.byte	0x14
	.byte	0xbd
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x22b
	.uleb128 0xd
	.ascii "Idirty\0"
	.byte	0x14
	.byte	0xbe
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.ascii "Iin_eval\0"
	.byte	0x14
	.byte	0xc0
	.long	0x61e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22d
	.uleb128 0xd
	.ascii "Itainted\0"
	.byte	0x14
	.byte	0xc1
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x22e
	.uleb128 0xd
	.ascii "Iperl_destruct_level\0"
	.byte	0x14
	.byte	0xc6
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22f
	.uleb128 0xd
	.ascii "Iperldb\0"
	.byte	0x14
	.byte	0xc8
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.ascii "Iorigargc\0"
	.byte	0x14
	.byte	0xcb
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.ascii "Iorigargv\0"
	.byte	0x14
	.byte	0xcc
	.long	0x20c
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.ascii "Ienvgv\0"
	.byte	0x14
	.byte	0xcd
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.ascii "Iincgv\0"
	.byte	0x14
	.byte	0xce
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.ascii "Ihintgv\0"
	.byte	0x14
	.byte	0xcf
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.ascii "Iorigfilename\0"
	.byte	0x14
	.byte	0xd0
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xd
	.ascii "Idiehook\0"
	.byte	0x14
	.byte	0xd1
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xd
	.ascii "Iwarnhook\0"
	.byte	0x14
	.byte	0xd2
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x250
	.uleb128 0xd
	.ascii "Ipatchlevel\0"
	.byte	0x14
	.byte	0xd5
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x254
	.uleb128 0xd
	.ascii "Ilocalpatches\0"
	.byte	0x14
	.byte	0xd6
	.long	0x61e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0xd
	.ascii "Isplitstr\0"
	.byte	0x14
	.byte	0xd7
	.long	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.uleb128 0xd
	.ascii "Iminus_c\0"
	.byte	0x14
	.byte	0xd9
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0xd
	.ascii "Ipreprocess\0"
	.byte	0x14
	.byte	0xda
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x261
	.uleb128 0xd
	.ascii "Iminus_n\0"
	.byte	0x14
	.byte	0xdb
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x262
	.uleb128 0xd
	.ascii "Iminus_p\0"
	.byte	0x14
	.byte	0xdc
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x263
	.uleb128 0xd
	.ascii "Iminus_l\0"
	.byte	0x14
	.byte	0xdd
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x264
	.uleb128 0xd
	.ascii "Iminus_a\0"
	.byte	0x14
	.byte	0xde
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x265
	.uleb128 0xd
	.ascii "Iminus_F\0"
	.byte	0x14
	.byte	0xdf
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x266
	.uleb128 0xd
	.ascii "Idoswitches\0"
	.byte	0x14
	.byte	0xe0
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x267
	.uleb128 0xd
	.ascii "Iminus_E\0"
	.byte	0x14
	.byte	0xe2
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0xd
	.ascii "Idowarn\0"
	.byte	0x14
	.byte	0xed
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x269
	.uleb128 0xd
	.ascii "Idoextract\0"
	.byte	0x14
	.byte	0xee
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x26a
	.uleb128 0xd
	.ascii "Isawampersand\0"
	.byte	0x14
	.byte	0xef
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x26b
	.uleb128 0xd
	.ascii "Iunsafe\0"
	.byte	0x14
	.byte	0xf0
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0xd
	.ascii "Iexit_flags\0"
	.byte	0x14
	.byte	0xf1
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0xd
	.ascii "Isrand_called\0"
	.byte	0x14
	.byte	0xf2
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0xd
	.ascii "Itainting\0"
	.byte	0x14
	.byte	0xf4
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x26f
	.uleb128 0xd
	.ascii "Iinplace\0"
	.byte	0x14
	.byte	0xf5
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.uleb128 0xd
	.ascii "Ie_script\0"
	.byte	0x14
	.byte	0xf6
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x274
	.uleb128 0xd
	.ascii "Ibasetime\0"
	.byte	0x14
	.byte	0xf9
	.long	0x325
	.byte	0x3
	.byte	0x23
	.uleb128 0x278
	.uleb128 0xd
	.ascii "Iformfeed\0"
	.byte	0x14
	.byte	0xfa
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x27c
	.uleb128 0xd
	.ascii "Imaxsysfd\0"
	.byte	0x14
	.byte	0xfd
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0xd
	.ascii "Istatusvalue\0"
	.byte	0x14
	.byte	0xff
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x284
	.uleb128 0x8
	.ascii "Istatusvalue_posix\0"
	.byte	0x14
	.word	0x103
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x288
	.uleb128 0x8
	.ascii "Isig_pending\0"
	.byte	0x14
	.word	0x106
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x28c
	.uleb128 0x8
	.ascii "Ipsig_pend\0"
	.byte	0x14
	.word	0x107
	.long	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x290
	.uleb128 0x8
	.ascii "Istdingv\0"
	.byte	0x14
	.word	0x10a
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x8
	.ascii "Istderrgv\0"
	.byte	0x14
	.word	0x10b
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x298
	.uleb128 0x8
	.ascii "Idefgv\0"
	.byte	0x14
	.word	0x10c
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x29c
	.uleb128 0x8
	.ascii "Iargvgv\0"
	.byte	0x14
	.word	0x10d
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a0
	.uleb128 0x8
	.ascii "Iargvoutgv\0"
	.byte	0x14
	.word	0x10e
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a4
	.uleb128 0x8
	.ascii "Iargvout_stack\0"
	.byte	0x14
	.word	0x10f
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a8
	.uleb128 0x8
	.ascii "Ireplgv\0"
	.byte	0x14
	.word	0x112
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ac
	.uleb128 0x8
	.ascii "Ierrgv\0"
	.byte	0x14
	.word	0x115
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b0
	.uleb128 0x8
	.ascii "IDBgv\0"
	.byte	0x14
	.word	0x118
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b4
	.uleb128 0x8
	.ascii "IDBline\0"
	.byte	0x14
	.word	0x119
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b8
	.uleb128 0x8
	.ascii "IDBsub\0"
	.byte	0x14
	.word	0x131
	.long	0x3873
	.byte	0x3
	.byte	0x23
	.uleb128 0x2bc
	.uleb128 0x8
	.ascii "IDBsingle\0"
	.byte	0x14
	.word	0x132
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x8
	.ascii "IDBtrace\0"
	.byte	0x14
	.word	0x133
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c4
	.uleb128 0x8
	.ascii "IDBsignal\0"
	.byte	0x14
	.word	0x134
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c8
	.uleb128 0x8
	.ascii "Idbargs\0"
	.byte	0x14
	.word	0x135
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2cc
	.uleb128 0x8
	.ascii "Idebstash\0"
	.byte	0x14
	.word	0x138
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0x8
	.ascii "Iglobalstash\0"
	.byte	0x14
	.word	0x139
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d4
	.uleb128 0x8
	.ascii "Icurstname\0"
	.byte	0x14
	.word	0x13a
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d8
	.uleb128 0x8
	.ascii "Ibeginav\0"
	.byte	0x14
	.word	0x13b
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x8
	.ascii "Iendav\0"
	.byte	0x14
	.word	0x13c
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x8
	.ascii "Iunitcheckav\0"
	.byte	0x14
	.word	0x13d
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e4
	.uleb128 0x8
	.ascii "Icheckav\0"
	.byte	0x14
	.word	0x13e
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0x8
	.ascii "Iinitav\0"
	.byte	0x14
	.word	0x13f
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0x8
	.ascii "Istrtab\0"
	.byte	0x14
	.word	0x140
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0x8
	.ascii "Isub_generation\0"
	.byte	0x14
	.word	0x141
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f4
	.uleb128 0x8
	.ascii "Iforkprocess\0"
	.byte	0x14
	.word	0x144
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.uleb128 0x8
	.ascii "Isv_count\0"
	.byte	0x14
	.word	0x147
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2fc
	.uleb128 0x8
	.ascii "Isv_objcount\0"
	.byte	0x14
	.word	0x148
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x8
	.ascii "Isv_root\0"
	.byte	0x14
	.word	0x149
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x304
	.uleb128 0x8
	.ascii "Isv_arenaroot\0"
	.byte	0x14
	.word	0x14a
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x308
	.uleb128 0x8
	.ascii "Ifdpid\0"
	.byte	0x14
	.word	0x14d
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x30c
	.uleb128 0x8
	.ascii "Iop_mask\0"
	.byte	0x14
	.word	0x150
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x310
	.uleb128 0x8
	.ascii "Imain_cv\0"
	.byte	0x14
	.word	0x153
	.long	0x4de7
	.byte	0x3
	.byte	0x23
	.uleb128 0x314
	.uleb128 0x8
	.ascii "Imain_root\0"
	.byte	0x14
	.word	0x154
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x318
	.uleb128 0x8
	.ascii "Imain_start\0"
	.byte	0x14
	.word	0x155
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x31c
	.uleb128 0x8
	.ascii "Ieval_root\0"
	.byte	0x14
	.word	0x156
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x320
	.uleb128 0x8
	.ascii "Ieval_start\0"
	.byte	0x14
	.word	0x157
	.long	0x386d
	.byte	0x3
	.byte	0x23
	.uleb128 0x324
	.uleb128 0x8
	.ascii "Icurcopdb\0"
	.byte	0x14
	.word	0x15a
	.long	0x56e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x328
	.uleb128 0x8
	.ascii "Ifilemode\0"
	.byte	0x14
	.word	0x15c
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x32c
	.uleb128 0x8
	.ascii "Ilastfd\0"
	.byte	0x14
	.word	0x15d
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x330
	.uleb128 0x8
	.ascii "Ioldname\0"
	.byte	0x14
	.word	0x15e
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x334
	.uleb128 0x8
	.ascii "IArgv\0"
	.byte	0x14
	.word	0x15f
	.long	0x20c
	.byte	0x3
	.byte	0x23
	.uleb128 0x338
	.uleb128 0x8
	.ascii "ICmd\0"
	.byte	0x14
	.word	0x160
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x33c
	.uleb128 0x8
	.ascii "Ipreambleav\0"
	.byte	0x14
	.word	0x165
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x340
	.uleb128 0x8
	.ascii "Imess_sv\0"
	.byte	0x14
	.word	0x166
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x344
	.uleb128 0x8
	.ascii "Iors_sv\0"
	.byte	0x14
	.word	0x167
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x348
	.uleb128 0x8
	.ascii "Igensym\0"
	.byte	0x14
	.word	0x169
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x34c
	.uleb128 0x8
	.ascii "Icv_has_eval\0"
	.byte	0x14
	.word	0x16a
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x350
	.uleb128 0x8
	.ascii "Itaint_warn\0"
	.byte	0x14
	.word	0x16b
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x351
	.uleb128 0x8
	.ascii "Ilaststype\0"
	.byte	0x14
	.word	0x16c
	.long	0x32f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x352
	.uleb128 0x8
	.ascii "Ilaststatval\0"
	.byte	0x14
	.word	0x16d
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x354
	.uleb128 0x8
	.ascii "Iexitlistlen\0"
	.byte	0x14
	.word	0x170
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x358
	.uleb128 0x8
	.ascii "Iexitlist\0"
	.byte	0x14
	.word	0x171
	.long	0x61f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x35c
	.uleb128 0x8
	.ascii "Imodglobal\0"
	.byte	0x14
	.word	0x180
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x360
	.uleb128 0x8
	.ascii "Iprofiledata\0"
	.byte	0x14
	.word	0x183
	.long	0x477b
	.byte	0x3
	.byte	0x23
	.uleb128 0x364
	.uleb128 0x8
	.ascii "Icompiling\0"
	.byte	0x14
	.word	0x185
	.long	0x7a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x368
	.uleb128 0x8
	.ascii "Icompcv\0"
	.byte	0x14
	.word	0x187
	.long	0x4de7
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x8
	.ascii "Icomppad\0"
	.byte	0x14
	.word	0x188
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a4
	.uleb128 0x8
	.ascii "Icomppad_name\0"
	.byte	0x14
	.word	0x189
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0x8
	.ascii "Icomppad_name_fill\0"
	.byte	0x14
	.word	0x18a
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0x8
	.ascii "Icomppad_name_floor\0"
	.byte	0x14
	.word	0x18b
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x8
	.ascii "Isys_intern\0"
	.byte	0x14
	.word	0x18e
	.long	0x361c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0x8
	.ascii "IDBcv\0"
	.byte	0x14
	.word	0x193
	.long	0x4de7
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e8
	.uleb128 0x8
	.ascii "Igeneration\0"
	.byte	0x14
	.word	0x194
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ec
	.uleb128 0x8
	.ascii "Iin_clean_objs\0"
	.byte	0x14
	.word	0x196
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f0
	.uleb128 0x8
	.ascii "Iin_clean_all\0"
	.byte	0x14
	.word	0x197
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f1
	.uleb128 0x8
	.ascii "Inomemok\0"
	.byte	0x14
	.word	0x198
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f2
	.uleb128 0x8
	.ascii "Isavebegin\0"
	.byte	0x14
	.word	0x199
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f3
	.uleb128 0x8
	.ascii "Iuid\0"
	.byte	0x14
	.word	0x19b
	.long	0x3425
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f4
	.uleb128 0x8
	.ascii "Ieuid\0"
	.byte	0x14
	.word	0x19c
	.long	0x3425
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f8
	.uleb128 0x8
	.ascii "Igid\0"
	.byte	0x14
	.word	0x19d
	.long	0x3432
	.byte	0x3
	.byte	0x23
	.uleb128 0x6fc
	.uleb128 0x8
	.ascii "Iegid\0"
	.byte	0x14
	.word	0x19e
	.long	0x3432
	.byte	0x3
	.byte	0x23
	.uleb128 0x700
	.uleb128 0x8
	.ascii "Ian\0"
	.byte	0x14
	.word	0x19f
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x704
	.uleb128 0x8
	.ascii "Icop_seqmax\0"
	.byte	0x14
	.word	0x1a0
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x708
	.uleb128 0x8
	.ascii "Ievalseq\0"
	.byte	0x14
	.word	0x1a1
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x70c
	.uleb128 0x8
	.ascii "Iorigalen\0"
	.byte	0x14
	.word	0x1a2
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x710
	.uleb128 0x8
	.ascii "Iorigenviron\0"
	.byte	0x14
	.word	0x1a3
	.long	0x20c
	.byte	0x3
	.byte	0x23
	.uleb128 0x714
	.uleb128 0x8
	.ascii "Iosname\0"
	.byte	0x14
	.word	0x1a7
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x718
	.uleb128 0x8
	.ascii "Isighandlerp\0"
	.byte	0x14
	.word	0x1a9
	.long	0x3607
	.byte	0x3
	.byte	0x23
	.uleb128 0x71c
	.uleb128 0x8
	.ascii "Ibody_roots\0"
	.byte	0x14
	.word	0x1ab
	.long	0x61f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0x8
	.ascii "Inice_chunk\0"
	.byte	0x14
	.word	0x1ad
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x760
	.uleb128 0x8
	.ascii "Inice_chunk_size\0"
	.byte	0x14
	.word	0x1ae
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x764
	.uleb128 0x8
	.ascii "Imaxo\0"
	.byte	0x14
	.word	0x1b0
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x768
	.uleb128 0x8
	.ascii "Irunops\0"
	.byte	0x14
	.word	0x1b2
	.long	0x6014
	.byte	0x3
	.byte	0x23
	.uleb128 0x76c
	.uleb128 0x8
	.ascii "Isv_undef\0"
	.byte	0x14
	.word	0x1c3
	.long	0x2505
	.byte	0x3
	.byte	0x23
	.uleb128 0x770
	.uleb128 0x8
	.ascii "Isv_no\0"
	.byte	0x14
	.word	0x1c4
	.long	0x2505
	.byte	0x3
	.byte	0x23
	.uleb128 0x780
	.uleb128 0x8
	.ascii "Isv_yes\0"
	.byte	0x14
	.word	0x1c5
	.long	0x2505
	.byte	0x3
	.byte	0x23
	.uleb128 0x790
	.uleb128 0x8
	.ascii "Isubname\0"
	.byte	0x14
	.word	0x1c7
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7a0
	.uleb128 0x8
	.ascii "Isubline\0"
	.byte	0x14
	.word	0x1c9
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7a4
	.uleb128 0x8
	.ascii "Imin_intro_pending\0"
	.byte	0x14
	.word	0x1ca
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7a8
	.uleb128 0x8
	.ascii "Imax_intro_pending\0"
	.byte	0x14
	.word	0x1cc
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7ac
	.uleb128 0x8
	.ascii "Ipadix\0"
	.byte	0x14
	.word	0x1cd
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7b0
	.uleb128 0x8
	.ascii "Ipadix_floor\0"
	.byte	0x14
	.word	0x1cf
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7b4
	.uleb128 0x8
	.ascii "Ipad_reset_pending\0"
	.byte	0x14
	.word	0x1d0
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x7b8
	.uleb128 0x8
	.ascii "Ihints\0"
	.byte	0x14
	.word	0x1d2
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x7bc
	.uleb128 0x8
	.ascii "Idebug\0"
	.byte	0x14
	.word	0x1d4
	.long	0x6206
	.byte	0x3
	.byte	0x23
	.uleb128 0x7c0
	.uleb128 0x8
	.ascii "Iamagic_generation\0"
	.byte	0x14
	.word	0x1d6
	.long	0x10f
	.byte	0x3
	.byte	0x23
	.uleb128 0x7c4
	.uleb128 0x8
	.ascii "Icollation_name\0"
	.byte	0x14
	.word	0x1d9
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x7c8
	.uleb128 0x8
	.ascii "Icollxfrm_base\0"
	.byte	0x14
	.word	0x1da
	.long	0x13e
	.byte	0x3
	.byte	0x23
	.uleb128 0x7cc
	.uleb128 0x8
	.ascii "Icollxfrm_mult\0"
	.byte	0x14
	.word	0x1db
	.long	0x13e
	.byte	0x3
	.byte	0x23
	.uleb128 0x7d0
	.uleb128 0x8
	.ascii "Icollation_ix\0"
	.byte	0x14
	.word	0x1dc
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x7d4
	.uleb128 0x8
	.ascii "Icollation_standard\0"
	.byte	0x14
	.word	0x1dd
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x7d8
	.uleb128 0x8
	.ascii "Iutf8cache\0"
	.byte	0x14
	.word	0x1e7
	.long	0x32df
	.byte	0x3
	.byte	0x23
	.uleb128 0x7d9
	.uleb128 0x8
	.ascii "Inumeric_standard\0"
	.byte	0x14
	.word	0x1ed
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x7da
	.uleb128 0x8
	.ascii "Inumeric_local\0"
	.byte	0x14
	.word	0x1ef
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x7db
	.uleb128 0x8
	.ascii "Inumeric_name\0"
	.byte	0x14
	.word	0x1f1
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x7dc
	.uleb128 0x8
	.ascii "Iutf8_alnum\0"
	.byte	0x14
	.word	0x1f5
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7e0
	.uleb128 0x8
	.ascii "Iutf8_alnumc\0"
	.byte	0x14
	.word	0x1f6
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7e4
	.uleb128 0x8
	.ascii "Iutf8_ascii\0"
	.byte	0x14
	.word	0x1f7
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7e8
	.uleb128 0x8
	.ascii "Iutf8_alpha\0"
	.byte	0x14
	.word	0x1f8
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7ec
	.uleb128 0x8
	.ascii "Iutf8_space\0"
	.byte	0x14
	.word	0x1f9
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7f0
	.uleb128 0x8
	.ascii "Iutf8_cntrl\0"
	.byte	0x14
	.word	0x1fa
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7f4
	.uleb128 0x8
	.ascii "Iutf8_graph\0"
	.byte	0x14
	.word	0x1fb
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7f8
	.uleb128 0x8
	.ascii "Iutf8_digit\0"
	.byte	0x14
	.word	0x1fc
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x7fc
	.uleb128 0x8
	.ascii "Iutf8_upper\0"
	.byte	0x14
	.word	0x1fd
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x8
	.ascii "Iutf8_lower\0"
	.byte	0x14
	.word	0x1fe
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x804
	.uleb128 0x8
	.ascii "Iutf8_print\0"
	.byte	0x14
	.word	0x1ff
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x808
	.uleb128 0x8
	.ascii "Iutf8_punct\0"
	.byte	0x14
	.word	0x200
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x80c
	.uleb128 0x8
	.ascii "Iutf8_xdigit\0"
	.byte	0x14
	.word	0x201
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x810
	.uleb128 0x8
	.ascii "Iutf8_mark\0"
	.byte	0x14
	.word	0x202
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x814
	.uleb128 0x8
	.ascii "Iutf8_toupper\0"
	.byte	0x14
	.word	0x203
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x818
	.uleb128 0x8
	.ascii "Iutf8_totitle\0"
	.byte	0x14
	.word	0x204
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x81c
	.uleb128 0x8
	.ascii "Iutf8_tolower\0"
	.byte	0x14
	.word	0x205
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x820
	.uleb128 0x8
	.ascii "Iutf8_tofold\0"
	.byte	0x14
	.word	0x206
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x824
	.uleb128 0x8
	.ascii "Ilast_swash_hv\0"
	.byte	0x14
	.word	0x207
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x828
	.uleb128 0x8
	.ascii "Ilast_swash_tmps\0"
	.byte	0x14
	.word	0x208
	.long	0x3d8b
	.byte	0x3
	.byte	0x23
	.uleb128 0x82c
	.uleb128 0x8
	.ascii "Ilast_swash_slen\0"
	.byte	0x14
	.word	0x209
	.long	0x6bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x830
	.uleb128 0x8
	.ascii "Ilast_swash_key\0"
	.byte	0x14
	.word	0x20a
	.long	0x620b
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x8
	.ascii "Ilast_swash_klen\0"
	.byte	0x14
	.word	0x20b
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x83e
	.uleb128 0x8
	.ascii "Iglob_index\0"
	.byte	0x14
	.word	0x211
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x8
	.ascii "Iparser\0"
	.byte	0x14
	.word	0x214
	.long	0x621b
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x8
	.ascii "Ibitcount\0"
	.byte	0x14
	.word	0x216
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x8
	.ascii "Ipsig_ptr\0"
	.byte	0x14
	.word	0x218
	.long	0x4881
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x8
	.ascii "Ipsig_name\0"
	.byte	0x14
	.word	0x219
	.long	0x4881
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x8
	.ascii "Iptr_table\0"
	.byte	0x14
	.word	0x227
	.long	0x6221
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x8
	.ascii "Ibeginav_save\0"
	.byte	0x14
	.word	0x228
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x858
	.uleb128 0x8
	.ascii "Ibody_arenas\0"
	.byte	0x14
	.word	0x22a
	.long	0x165
	.byte	0x3
	.byte	0x23
	.uleb128 0x85c
	.uleb128 0x8
	.ascii "Inumeric_radix_sv\0"
	.byte	0x14
	.word	0x22f
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x860
	.uleb128 0x8
	.ascii "Iregex_pad\0"
	.byte	0x14
	.word	0x234
	.long	0x4881
	.byte	0x3
	.byte	0x23
	.uleb128 0x864
	.uleb128 0x8
	.ascii "Iregex_padav\0"
	.byte	0x14
	.word	0x235
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x8
	.ascii "Icustom_op_names\0"
	.byte	0x14
	.word	0x23d
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x8
	.ascii "Icustom_op_descs\0"
	.byte	0x14
	.word	0x23e
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x870
	.uleb128 0x8
	.ascii "Iperlio\0"
	.byte	0x14
	.word	0x241
	.long	0x4f2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x874
	.uleb128 0x8
	.ascii "Iknown_layers\0"
	.byte	0x14
	.word	0x242
	.long	0x6227
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x8
	.ascii "Idef_layerlist\0"
	.byte	0x14
	.word	0x243
	.long	0x6227
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x8
	.ascii "Iencoding\0"
	.byte	0x14
	.word	0x246
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x8
	.ascii "Idebug_pad\0"
	.byte	0x14
	.word	0x248
	.long	0x60b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.uleb128 0x8
	.ascii "Iutf8_idstart\0"
	.byte	0x14
	.word	0x24a
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b4
	.uleb128 0x8
	.ascii "Iutf8_idcont\0"
	.byte	0x14
	.word	0x24b
	.long	0x3806
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b8
	.uleb128 0x8
	.ascii "Isort_RealCmp\0"
	.byte	0x14
	.word	0x24d
	.long	0x6117
	.byte	0x3
	.byte	0x23
	.uleb128 0x8bc
	.uleb128 0x8
	.ascii "Icheckav_save\0"
	.byte	0x14
	.word	0x24f
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c0
	.uleb128 0x8
	.ascii "Iunitcheckav_save\0"
	.byte	0x14
	.word	0x250
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c4
	.uleb128 0x8
	.ascii "Iclocktick\0"
	.byte	0x14
	.word	0x252
	.long	0x10f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c8
	.uleb128 0x8
	.ascii "Iin_load_module\0"
	.byte	0x14
	.word	0x254
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x8cc
	.uleb128 0x8
	.ascii "Iunicode\0"
	.byte	0x14
	.word	0x256
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d0
	.uleb128 0x8
	.ascii "Isignals\0"
	.byte	0x14
	.word	0x258
	.long	0x3309
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d4
	.uleb128 0x8
	.ascii "Ireentrant_retint\0"
	.byte	0x14
	.word	0x25a
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d8
	.uleb128 0x8
	.ascii "Istashcache\0"
	.byte	0x14
	.word	0x25c
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x8dc
	.uleb128 0x8
	.ascii "Isharehook\0"
	.byte	0x14
	.word	0x25f
	.long	0x6040
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e0
	.uleb128 0x8
	.ascii "Ilockhook\0"
	.byte	0x14
	.word	0x260
	.long	0x6040
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e4
	.uleb128 0x8
	.ascii "Iunlockhook\0"
	.byte	0x14
	.word	0x267
	.long	0x6040
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e8
	.uleb128 0x8
	.ascii "Ithreadhook\0"
	.byte	0x14
	.word	0x269
	.long	0x606c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8ec
	.uleb128 0x8
	.ascii "Ihash_seed\0"
	.byte	0x14
	.word	0x26b
	.long	0x6a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f0
	.uleb128 0x8
	.ascii "Irehash_seed\0"
	.byte	0x14
	.word	0x26d
	.long	0x6a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f4
	.uleb128 0x8
	.ascii "Iisarev\0"
	.byte	0x14
	.word	0x26f
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f8
	.uleb128 0x8
	.ascii "Imy_cxt_size\0"
	.byte	0x14
	.word	0x278
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x8fc
	.uleb128 0x8
	.ascii "Imy_cxt_list\0"
	.byte	0x14
	.word	0x279
	.long	0x1fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x900
	.uleb128 0x8
	.ascii "Idestroyhook\0"
	.byte	0x14
	.word	0x2a0
	.long	0x6083
	.byte	0x3
	.byte	0x23
	.uleb128 0x904
	.byte	0
	.uleb128 0x9
	.ascii "SV\0"
	.byte	0x11
	.word	0x92f
	.long	0x2510
	.uleb128 0xc
	.ascii "sv\0"
	.byte	0x10
	.byte	0x15
	.byte	0x70
	.long	0x2554
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x71
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x71
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x71
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x72
	.long	0x482b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "AV\0"
	.byte	0x11
	.word	0x930
	.long	0x255f
	.uleb128 0xc
	.ascii "av\0"
	.byte	0x10
	.byte	0x15
	.byte	0x86
	.long	0x25a3
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x87
	.long	0x49a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x87
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x87
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x88
	.long	0x4951
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "HV\0"
	.byte	0x11
	.word	0x931
	.long	0x25ae
	.uleb128 0xc
	.ascii "hv\0"
	.byte	0x10
	.byte	0x15
	.byte	0x8b
	.long	0x25f2
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x8c
	.long	0x4a03
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x8c
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x8c
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x8d
	.long	0x49ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "CV\0"
	.byte	0x11
	.word	0x932
	.long	0x25fd
	.uleb128 0xc
	.ascii "cv\0"
	.byte	0x10
	.byte	0x15
	.byte	0x81
	.long	0x2641
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x82
	.long	0x494b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x82
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x82
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x83
	.long	0x48f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "REGEXP\0"
	.byte	0x11
	.word	0x933
	.long	0x2650
	.uleb128 0xc
	.ascii "regexp\0"
	.byte	0x5c
	.byte	0x16
	.byte	0x45
	.long	0x2800
	.uleb128 0xd
	.ascii "engine\0"
	.byte	0x16
	.byte	0x47
	.long	0x3adf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "mother_re\0"
	.byte	0x16
	.byte	0x48
	.long	0x3aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "extflags\0"
	.byte	0x16
	.byte	0x4b
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "minlen\0"
	.byte	0x16
	.byte	0x4c
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "minlenret\0"
	.byte	0x16
	.byte	0x4d
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "gofs\0"
	.byte	0x16
	.byte	0x4e
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "substrs\0"
	.byte	0x16
	.byte	0x4f
	.long	0x3af0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "nparens\0"
	.byte	0x16
	.byte	0x51
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "intflags\0"
	.byte	0x16
	.byte	0x54
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "pprivate\0"
	.byte	0x16
	.byte	0x55
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.secrel32	LASF19
	.byte	0x16
	.byte	0x59
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "lastcloseparen\0"
	.byte	0x16
	.byte	0x5a
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "swap\0"
	.byte	0x16
	.byte	0x5b
	.long	0x3af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "offs\0"
	.byte	0x16
	.byte	0x5c
	.long	0x3af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "subbeg\0"
	.byte	0x16
	.byte	0x5e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "sublen\0"
	.byte	0x16
	.byte	0x61
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.ascii "prelen\0"
	.byte	0x16
	.byte	0x65
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.ascii "precomp\0"
	.byte	0x16
	.byte	0x66
	.long	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.ascii "wrapped\0"
	.byte	0x16
	.byte	0x68
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.ascii "wraplen\0"
	.byte	0x16
	.byte	0x69
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.ascii "seen_evals\0"
	.byte	0x16
	.byte	0x6a
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.ascii "paren_names\0"
	.byte	0x16
	.byte	0x6b
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.ascii "refcnt\0"
	.byte	0x16
	.byte	0x6e
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x9
	.ascii "GP\0"
	.byte	0x11
	.word	0x934
	.long	0x280b
	.uleb128 0xc
	.ascii "gp\0"
	.byte	0x2c
	.byte	0x17
	.byte	0xb
	.long	0x28d9
	.uleb128 0xd
	.ascii "gp_sv\0"
	.byte	0x17
	.byte	0xc
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "gp_io\0"
	.byte	0x17
	.byte	0xd
	.long	0x4f33
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "gp_cv\0"
	.byte	0x17
	.byte	0xe
	.long	0x4de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "gp_cvgen\0"
	.byte	0x17
	.byte	0xf
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "gp_refcnt\0"
	.byte	0x17
	.byte	0x10
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "gp_hv\0"
	.byte	0x17
	.byte	0x11
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "gp_av\0"
	.byte	0x17
	.byte	0x12
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "gp_form\0"
	.byte	0x17
	.byte	0x13
	.long	0x4de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "gp_egv\0"
	.byte	0x17
	.byte	0x14
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "gp_line\0"
	.byte	0x17
	.byte	0x15
	.long	0x3314
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "gp_file_hek\0"
	.byte	0x17
	.byte	0x16
	.long	0x4bdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.ascii "GV\0"
	.byte	0x11
	.word	0x935
	.long	0x28e4
	.uleb128 0xc
	.ascii "gv\0"
	.byte	0x10
	.byte	0x15
	.byte	0x7c
	.long	0x2928
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x7d
	.long	0x48ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x7d
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x7d
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x7e
	.long	0x4899
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.ascii "io\0"
	.byte	0x10
	.byte	0x15
	.byte	0x90
	.long	0x296c
	.uleb128 0x13
	.secrel32	LASF15
	.byte	0x15
	.byte	0x91
	.long	0x4a5f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF16
	.byte	0x15
	.byte	0x91
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF17
	.byte	0x15
	.byte	0x91
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF18
	.byte	0x15
	.byte	0x92
	.long	0x4a09
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "PERL_CONTEXT\0"
	.byte	0x11
	.word	0x937
	.long	0x2981
	.uleb128 0x7
	.ascii "context\0"
	.byte	0x40
	.byte	0x13
	.word	0x275
	.long	0x29a3
	.uleb128 0x8
	.ascii "cx_u\0"
	.byte	0x13
	.word	0x279
	.long	0x582f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.ascii "block\0"
	.byte	0x40
	.byte	0x13
	.word	0x201
	.long	0x2a7d
	.uleb128 0x8
	.ascii "blku_type\0"
	.byte	0x13
	.word	0x202
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "blku_gimme\0"
	.byte	0x13
	.word	0x203
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.ascii "blku_spare\0"
	.byte	0x13
	.word	0x204
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.ascii "blku_oldsp\0"
	.byte	0x13
	.word	0x205
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "blku_oldcop\0"
	.byte	0x13
	.word	0x206
	.long	0x56e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "blku_oldmarksp\0"
	.byte	0x13
	.word	0x207
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "blku_oldscopesp\0"
	.byte	0x13
	.word	0x208
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "blku_oldpm\0"
	.byte	0x13
	.word	0x209
	.long	0x4787
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "blk_u\0"
	.byte	0x13
	.word	0x210
	.long	0x568f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.ascii "MAGIC\0"
	.byte	0x11
	.word	0x93a
	.long	0x2a8b
	.uleb128 0xc
	.ascii "magic\0"
	.byte	0x18
	.byte	0x18
	.byte	0x1b
	.long	0x2b33
	.uleb128 0xd
	.ascii "mg_moremagic\0"
	.byte	0x18
	.byte	0x1c
	.long	0x4781
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "mg_virtual\0"
	.byte	0x18
	.byte	0x1d
	.long	0x5aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "mg_private\0"
	.byte	0x18
	.byte	0x1e
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "mg_type\0"
	.byte	0x18
	.byte	0x1f
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.ascii "mg_flags\0"
	.byte	0x18
	.byte	0x20
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xd
	.ascii "mg_len\0"
	.byte	0x18
	.byte	0x21
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "mg_obj\0"
	.byte	0x18
	.byte	0x22
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "mg_ptr\0"
	.byte	0x18
	.byte	0x23
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.ascii "XPV\0"
	.byte	0x11
	.word	0x93b
	.long	0x2b3f
	.uleb128 0x7
	.ascii "xpv\0"
	.byte	0x10
	.byte	0x15
	.word	0x188
	.long	0x2b7a
	.uleb128 0x16
	.secrel32	LASF20
	.byte	0x15
	.word	0x195
	.long	0x4ac4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF21
	.byte	0x15
	.word	0x196
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF22
	.byte	0x15
	.word	0x197
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.ascii "XPVIV\0"
	.byte	0x11
	.word	0x93c
	.long	0x2b88
	.uleb128 0x7
	.ascii "xpviv\0"
	.byte	0x18
	.byte	0x15
	.word	0x19f
	.long	0x2bd4
	.uleb128 0x16
	.secrel32	LASF20
	.byte	0x15
	.word	0x1ac
	.long	0x4b5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF21
	.byte	0x15
	.word	0x1ad
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF22
	.byte	0x15
	.word	0x1ae
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.secrel32	LASF23
	.byte	0x15
	.word	0x1b5
	.long	0x4b97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.ascii "XPVNV\0"
	.byte	0x11
	.word	0x93e
	.long	0x2be2
	.uleb128 0x7
	.ascii "xpvnv\0"
	.byte	0x18
	.byte	0x15
	.word	0x1e0
	.long	0x2c2e
	.uleb128 0x16
	.secrel32	LASF20
	.byte	0x15
	.word	0x1ed
	.long	0x4c42
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF21
	.byte	0x15
	.word	0x1ee
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF22
	.byte	0x15
	.word	0x1ef
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.secrel32	LASF23
	.byte	0x15
	.word	0x1f6
	.long	0x4c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.ascii "XPVAV\0"
	.byte	0x11
	.word	0x941
	.long	0x2c3c
	.uleb128 0xc
	.ascii "xpvav\0"
	.byte	0x20
	.byte	0x19
	.byte	0xb
	.long	0x2ca8
	.uleb128 0x13
	.secrel32	LASF20
	.byte	0x19
	.byte	0x18
	.long	0x5981
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "xav_fill\0"
	.byte	0x19
	.byte	0x19
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "xav_max\0"
	.byte	0x19
	.byte	0x1a
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF23
	.byte	0x19
	.byte	0x21
	.long	0x59b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF24
	.byte	0x19
	.byte	0x25
	.long	0x59f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF25
	.byte	0x19
	.byte	0x26
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.ascii "XPVHV\0"
	.byte	0x11
	.word	0x942
	.long	0x2cb6
	.uleb128 0xc
	.ascii "xpvhv\0"
	.byte	0x20
	.byte	0x1a
	.byte	0x47
	.long	0x2d22
	.uleb128 0x13
	.secrel32	LASF20
	.byte	0x1a
	.byte	0x54
	.long	0x52e8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "xhv_fill\0"
	.byte	0x1a
	.byte	0x55
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "xhv_max\0"
	.byte	0x1a
	.byte	0x56
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF23
	.byte	0x1a
	.byte	0x5d
	.long	0x531d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF24
	.byte	0x1a
	.byte	0x61
	.long	0x535d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF25
	.byte	0x1a
	.byte	0x62
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.ascii "XPVGV\0"
	.byte	0x11
	.word	0x943
	.long	0x2d30
	.uleb128 0x7
	.ascii "xpvgv\0"
	.byte	0x20
	.byte	0x15
	.word	0x23e
	.long	0x2d9a
	.uleb128 0x16
	.secrel32	LASF20
	.byte	0x15
	.word	0x24b
	.long	0x4d21
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF21
	.byte	0x15
	.word	0x24c
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF22
	.byte	0x15
	.word	0x24d
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.secrel32	LASF23
	.byte	0x15
	.word	0x254
	.long	0x4d5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.secrel32	LASF24
	.byte	0x15
	.word	0x258
	.long	0x4da1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.secrel32	LASF25
	.byte	0x15
	.word	0x259
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.ascii "XPVCV\0"
	.byte	0x11
	.word	0x944
	.long	0x2da8
	.uleb128 0xc
	.ascii "xpvcv\0"
	.byte	0x40
	.byte	0x1b
	.byte	0xd
	.long	0x2ec8
	.uleb128 0x13
	.secrel32	LASF20
	.byte	0x1b
	.byte	0x1a
	.long	0x4fbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF21
	.byte	0x1b
	.byte	0x1b
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF22
	.byte	0x1b
	.byte	0x1c
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF23
	.byte	0x1b
	.byte	0x23
	.long	0x4ff1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF24
	.byte	0x1b
	.byte	0x27
	.long	0x5031
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF25
	.byte	0x1b
	.byte	0x28
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "xcv_stash\0"
	.byte	0x1b
	.byte	0x2a
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "xcv_start_u\0"
	.byte	0x1b
	.byte	0x2e
	.long	0x5050
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "xcv_root_u\0"
	.byte	0x1b
	.byte	0x32
	.long	0x507d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "xcv_gv\0"
	.byte	0x1b
	.byte	0x33
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "xcv_file\0"
	.byte	0x1b
	.byte	0x34
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "xcv_padlist\0"
	.byte	0x1b
	.byte	0x35
	.long	0x50a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "xcv_outside\0"
	.byte	0x1b
	.byte	0x36
	.long	0x4de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "xcv_outside_seq\0"
	.byte	0x1b
	.byte	0x37
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "xcv_flags\0"
	.byte	0x1b
	.byte	0x3a
	.long	0x4dc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x9
	.ascii "XPVIO\0"
	.byte	0x11
	.word	0x947
	.long	0x2ed6
	.uleb128 0x7
	.ascii "xpvio\0"
	.byte	0x58
	.byte	0x15
	.word	0x2b6
	.long	0x308f
	.uleb128 0x16
	.secrel32	LASF20
	.byte	0x15
	.word	0x2c3
	.long	0x4e58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF21
	.byte	0x15
	.word	0x2c4
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF22
	.byte	0x15
	.word	0x2c5
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.secrel32	LASF23
	.byte	0x15
	.word	0x2cc
	.long	0x4e92
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.secrel32	LASF24
	.byte	0x15
	.word	0x2d0
	.long	0x4ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.secrel32	LASF25
	.byte	0x15
	.word	0x2d1
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "xio_ifp\0"
	.byte	0x15
	.word	0x2d3
	.long	0x4f2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "xio_ofp\0"
	.byte	0x15
	.word	0x2d4
	.long	0x4f2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "xio_dirpu\0"
	.byte	0x15
	.word	0x2e1
	.long	0x4efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "xio_lines\0"
	.byte	0x15
	.word	0x2e2
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "xio_page\0"
	.byte	0x15
	.word	0x2e3
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.ascii "xio_page_len\0"
	.byte	0x15
	.word	0x2e4
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.ascii "xio_lines_left\0"
	.byte	0x15
	.word	0x2e5
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.ascii "xio_top_name\0"
	.byte	0x15
	.word	0x2e6
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.ascii "xio_top_gv\0"
	.byte	0x15
	.word	0x2e7
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.ascii "xio_fmt_name\0"
	.byte	0x15
	.word	0x2e8
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.ascii "xio_fmt_gv\0"
	.byte	0x15
	.word	0x2e9
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.ascii "xio_bottom_name\0"
	.byte	0x15
	.word	0x2ea
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.ascii "xio_bottom_gv\0"
	.byte	0x15
	.word	0x2eb
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.ascii "xio_type\0"
	.byte	0x15
	.word	0x2ec
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.ascii "xio_flags\0"
	.byte	0x15
	.word	0x2ed
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.byte	0
	.uleb128 0x9
	.ascii "MGVTBL\0"
	.byte	0x11
	.word	0x948
	.long	0x309e
	.uleb128 0xc
	.ascii "mgvtbl\0"
	.byte	0x20
	.byte	0x18
	.byte	0xe
	.long	0x3144
	.uleb128 0xd
	.ascii "svt_get\0"
	.byte	0x18
	.byte	0xf
	.long	0x5a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "svt_set\0"
	.byte	0x18
	.byte	0x10
	.long	0x5a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "svt_len\0"
	.byte	0x18
	.byte	0x11
	.long	0x5a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "svt_clear\0"
	.byte	0x18
	.byte	0x12
	.long	0x5a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "svt_free\0"
	.byte	0x18
	.byte	0x13
	.long	0x5a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "svt_copy\0"
	.byte	0x18
	.byte	0x14
	.long	0x5a7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "svt_dup\0"
	.byte	0x18
	.byte	0x16
	.long	0x5a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "svt_local\0"
	.byte	0x18
	.byte	0x17
	.long	0x5a2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x9
	.ascii "ANY\0"
	.byte	0x11
	.word	0x949
	.long	0x3150
	.uleb128 0x1a
	.ascii "any\0"
	.byte	0x4
	.byte	0x11
	.word	0xca3
	.long	0x31d2
	.uleb128 0x1b
	.ascii "any_ptr\0"
	.byte	0x11
	.word	0xca4
	.long	0x165
	.uleb128 0x1b
	.ascii "any_i32\0"
	.byte	0x11
	.word	0xca5
	.long	0x32fe
	.uleb128 0x1b
	.ascii "any_iv\0"
	.byte	0x11
	.word	0xca6
	.long	0x69a
	.uleb128 0x1b
	.ascii "any_long\0"
	.byte	0x11
	.word	0xca7
	.long	0x10f
	.uleb128 0x1b
	.ascii "any_bool\0"
	.byte	0x11
	.word	0xca8
	.long	0x81
	.uleb128 0x1b
	.ascii "any_dptr\0"
	.byte	0x11
	.word	0xca9
	.long	0x37e3
	.uleb128 0x1b
	.ascii "any_dxptr\0"
	.byte	0x11
	.word	0xcaa
	.long	0x3800
	.byte	0
	.uleb128 0x7
	.ascii "ptr_tbl_ent\0"
	.byte	0xc
	.byte	0x11
	.word	0xd14
	.long	0x321c
	.uleb128 0x8
	.ascii "next\0"
	.byte	0x11
	.word	0xd15
	.long	0x6008
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "oldval\0"
	.byte	0x11
	.word	0xd16
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "newval\0"
	.byte	0x11
	.word	0xd17
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "PTR_TBL_t\0"
	.byte	0x11
	.word	0x94b
	.long	0x322e
	.uleb128 0x7
	.ascii "ptr_tbl\0"
	.byte	0xc
	.byte	0x11
	.word	0xd1a
	.long	0x327b
	.uleb128 0x8
	.ascii "tbl_ary\0"
	.byte	0x11
	.word	0xd1b
	.long	0x600e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "tbl_max\0"
	.byte	0x11
	.word	0xd1c
	.long	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "tbl_items\0"
	.byte	0x11
	.word	0xd1d
	.long	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "CLONE_PARAMS\0"
	.byte	0x11
	.word	0x94c
	.long	0x3290
	.uleb128 0x7
	.ascii "clone_params\0"
	.byte	0xc
	.byte	0x15
	.word	0x822
	.long	0x32df
	.uleb128 0x8
	.ascii "stashes\0"
	.byte	0x15
	.word	0x823
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF26
	.byte	0x15
	.word	0x824
	.long	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "proto_perl\0"
	.byte	0x15
	.word	0x825
	.long	0x37fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii "I8\0"
	.byte	0x1c
	.byte	0x93
	.long	0x81
	.uleb128 0x3
	.ascii "U8\0"
	.byte	0x1c
	.byte	0x94
	.long	0xd3
	.uleb128 0x3
	.ascii "U16\0"
	.byte	0x1c
	.byte	0x96
	.long	0xf0
	.uleb128 0x3
	.ascii "I32\0"
	.byte	0x1c
	.byte	0x97
	.long	0x10f
	.uleb128 0x3
	.ascii "U32\0"
	.byte	0x1c
	.byte	0x98
	.long	0x96
	.uleb128 0x9
	.ascii "line_t\0"
	.byte	0x1c
	.word	0x25c
	.long	0x3309
	.uleb128 0xc
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1d
	.byte	0x81
	.long	0x33ba
	.uleb128 0xd
	.ascii "_ptr\0"
	.byte	0x1d
	.byte	0x83
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "_cnt\0"
	.byte	0x1d
	.byte	0x84
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "_base\0"
	.byte	0x1d
	.byte	0x85
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "_flag\0"
	.byte	0x1d
	.byte	0x86
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "_file\0"
	.byte	0x1d
	.byte	0x87
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "_charbuf\0"
	.byte	0x1d
	.byte	0x88
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "_bufsiz\0"
	.byte	0x1d
	.byte	0x89
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "_tmpfname\0"
	.byte	0x1d
	.byte	0x8a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x1d
	.byte	0x8b
	.long	0x3323
	.uleb128 0xc
	.ascii "tms\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x53
	.long	0x3425
	.uleb128 0xd
	.ascii "tms_utime\0"
	.byte	0x1e
	.byte	0x54
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "tms_stime\0"
	.byte	0x1e
	.byte	0x55
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "tms_cutime\0"
	.byte	0x1e
	.byte	0x56
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "tms_cstime\0"
	.byte	0x1e
	.byte	0x57
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.ascii "uid_t\0"
	.byte	0x1e
	.byte	0xe9
	.long	0x10f
	.uleb128 0x3
	.ascii "gid_t\0"
	.byte	0x1e
	.byte	0xea
	.long	0x10f
	.uleb128 0x19
	.ascii "thread_intern\0"
	.word	0x29c
	.byte	0x1e
	.word	0x186
	.long	0x34f5
	.uleb128 0x8
	.ascii "Wstrerror_buffer\0"
	.byte	0x1e
	.word	0x188
	.long	0x34f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "Wservent\0"
	.byte	0x1e
	.word	0x189
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x8
	.ascii "Wgetlogin_buffer\0"
	.byte	0x1e
	.word	0x18a
	.long	0x3506
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x8
	.ascii "Winit_socktype\0"
	.byte	0x1e
	.word	0x18c
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x290
	.uleb128 0x8
	.ascii "Wuse_showwindow\0"
	.byte	0x1e
	.word	0x194
	.long	0xc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x8
	.ascii "Wshowwindow\0"
	.byte	0x1e
	.word	0x195
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x298
	.byte	0
	.uleb128 0xa
	.long	0x81
	.long	0x3506
	.uleb128 0xe
	.long	0x1af
	.word	0x1ff
	.byte	0
	.uleb128 0xa
	.long	0x81
	.long	0x3516
	.uleb128 0xb
	.long	0x1af
	.byte	0x7f
	.byte	0
	.uleb128 0x1c
	.word	0x204
	.byte	0x1e
	.word	0x199
	.long	0x3554
	.uleb128 0x8
	.ascii "num\0"
	.byte	0x1e
	.word	0x19a
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "pids\0"
	.byte	0x1e
	.word	0x19b
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "handles\0"
	.byte	0x1e
	.word	0x19c
	.long	0x3564
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0xa
	.long	0x89
	.long	0x3564
	.uleb128 0xb
	.long	0x1af
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.long	0x167
	.long	0x3574
	.uleb128 0xb
	.long	0x1af
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.ascii "child_tab\0"
	.byte	0x1e
	.word	0x19d
	.long	0x3516
	.uleb128 0x1c
	.word	0x304
	.byte	0x1e
	.word	0x1a0
	.long	0x35de
	.uleb128 0x8
	.ascii "num\0"
	.byte	0x1e
	.word	0x1a1
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "pids\0"
	.byte	0x1e
	.word	0x1a2
	.long	0x3554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "handles\0"
	.byte	0x1e
	.word	0x1a3
	.long	0x3564
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x8
	.ascii "message_hwnds\0"
	.byte	0x1e
	.word	0x1a4
	.long	0x35de
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.byte	0
	.uleb128 0xa
	.long	0x1d9
	.long	0x35ee
	.uleb128 0xb
	.long	0x1af
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.ascii "pseudo_child_tab\0"
	.byte	0x1e
	.word	0x1a5
	.long	0x3586
	.uleb128 0x9
	.ascii "Sighandler_t\0"
	.byte	0x1e
	.word	0x1a9
	.long	0x301
	.uleb128 0x19
	.ascii "interp_intern\0"
	.word	0x334
	.byte	0x1e
	.word	0x1ad
	.long	0x3762
	.uleb128 0x8
	.ascii "perlshell_tokens\0"
	.byte	0x1e
	.word	0x1ae
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "perlshell_vec\0"
	.byte	0x1e
	.word	0x1af
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "perlshell_items\0"
	.byte	0x1e
	.word	0x1b0
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "fdpid\0"
	.byte	0x1e
	.word	0x1b1
	.long	0x3762
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "children\0"
	.byte	0x1e
	.word	0x1b2
	.long	0x3768
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "pseudo_id\0"
	.byte	0x1e
	.word	0x1b4
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "pseudo_children\0"
	.byte	0x1e
	.word	0x1b5
	.long	0x376e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "internal_host\0"
	.byte	0x1e
	.word	0x1b7
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "thr_intern\0"
	.byte	0x1e
	.word	0x1b8
	.long	0x343f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "message_hwnd\0"
	.byte	0x1e
	.word	0x1b9
	.long	0x1d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x2bc
	.uleb128 0x8
	.ascii "timerid\0"
	.byte	0x1e
	.word	0x1ba
	.long	0x122
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x8
	.ascii "poll_count\0"
	.byte	0x1e
	.word	0x1bb
	.long	0x12e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c4
	.uleb128 0x8
	.ascii "sigtable\0"
	.byte	0x1e
	.word	0x1bc
	.long	0x3774
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x255f
	.uleb128 0x4
	.byte	0x4
	.long	0x3574
	.uleb128 0x4
	.byte	0x4
	.long	0x35ee
	.uleb128 0xa
	.long	0x3607
	.long	0x3784
	.uleb128 0xb
	.long	0x1af
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.ascii "PerlIOl\0"
	.byte	0x1f
	.byte	0x63
	.long	0x3793
	.uleb128 0x14
	.ascii "_PerlIO\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "PerlIO\0"
	.byte	0x1f
	.byte	0x65
	.long	0x37ab
	.uleb128 0x4
	.byte	0x4
	.long	0x3784
	.uleb128 0x9
	.ascii "PerlIO_list_t\0"
	.byte	0x1f
	.word	0x17a
	.long	0x37c7
	.uleb128 0x14
	.ascii "PerlIO_list_s\0"
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	0x37e3
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x37d7
	.uleb128 0x11
	.byte	0x1
	.long	0x37fa
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0xbcb
	.uleb128 0x4
	.byte	0x4
	.long	0x37e9
	.uleb128 0x4
	.byte	0x4
	.long	0x2505
	.uleb128 0x1d
	.ascii "YYSTYPE\0"
	.byte	0x4
	.byte	0x20
	.byte	0xbc
	.long	0x386d
	.uleb128 0x1e
	.ascii "ival\0"
	.byte	0x20
	.byte	0xbe
	.long	0x32fe
	.uleb128 0x1e
	.ascii "pval\0"
	.byte	0x20
	.byte	0xc0
	.long	0x159
	.uleb128 0x1e
	.ascii "opval\0"
	.byte	0x20
	.byte	0xc1
	.long	0x386d
	.uleb128 0x1e
	.ascii "gvval\0"
	.byte	0x20
	.byte	0xc2
	.long	0x3873
	.uleb128 0x1e
	.ascii "p_tkval\0"
	.byte	0x20
	.byte	0xc7
	.long	0x159
	.uleb128 0x1e
	.ascii "i_tkval\0"
	.byte	0x20
	.byte	0xc8
	.long	0x32fe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x6ca
	.uleb128 0x4
	.byte	0x4
	.long	0x28d9
	.uleb128 0x3
	.ascii "YYSTYPE\0"
	.byte	0x20
	.byte	0xcf
	.long	0x380c
	.uleb128 0xc
	.ascii "regnode\0"
	.byte	0x4
	.byte	0x16
	.byte	0x15
	.long	0x38c8
	.uleb128 0x13
	.secrel32	LASF26
	.byte	0x16
	.byte	0x16
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x16
	.byte	0x17
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.ascii "next_off\0"
	.byte	0x16
	.byte	0x18
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.ascii "regnode\0"
	.byte	0x16
	.byte	0x1b
	.long	0x3888
	.uleb128 0xc
	.ascii "reg_substr_datum\0"
	.byte	0x14
	.byte	0x16
	.byte	0x24
	.long	0x3956
	.uleb128 0xd
	.ascii "min_offset\0"
	.byte	0x16
	.byte	0x25
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "max_offset\0"
	.byte	0x16
	.byte	0x26
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "substr\0"
	.byte	0x16
	.byte	0x27
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "utf8_substr\0"
	.byte	0x16
	.byte	0x28
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "end_shift\0"
	.byte	0x16
	.byte	0x29
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xc
	.ascii "reg_substr_data\0"
	.byte	0x3c
	.byte	0x16
	.byte	0x2b
	.long	0x397d
	.uleb128 0x13
	.secrel32	LASF0
	.byte	0x16
	.byte	0x2c
	.long	0x397d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.long	0x38d7
	.long	0x398d
	.uleb128 0xb
	.long	0x1af
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.secrel32	LASF28
	.byte	0x8
	.byte	0x16
	.byte	0x35
	.long	0x39b8
	.uleb128 0xd
	.ascii "start\0"
	.byte	0x16
	.byte	0x36
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "end\0"
	.byte	0x16
	.byte	0x37
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x20
	.secrel32	LASF28
	.byte	0x16
	.byte	0x38
	.long	0x398d
	.uleb128 0xc
	.ascii "regexp_engine\0"
	.byte	0x30
	.byte	0x16
	.byte	0x7b
	.long	0x3adf
	.uleb128 0xd
	.ascii "comp\0"
	.byte	0x16
	.byte	0x7c
	.long	0x3bae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "exec\0"
	.byte	0x16
	.byte	0x7d
	.long	0x3bf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "intuit\0"
	.byte	0x16
	.byte	0x80
	.long	0x3c2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "checkstr\0"
	.byte	0x16
	.byte	0x83
	.long	0x3c46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "win32_free\0"
	.byte	0x16
	.byte	0x84
	.long	0x3c5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "numbered_buff_FETCH\0"
	.byte	0x16
	.byte	0x85
	.long	0x3c88
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "numbered_buff_STORE\0"
	.byte	0x16
	.byte	0x87
	.long	0x3ca9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "numbered_buff_LENGTH\0"
	.byte	0x16
	.byte	0x89
	.long	0x3cce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "named_buff\0"
	.byte	0x16
	.byte	0x8b
	.long	0x3cf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "named_buff_iter\0"
	.byte	0x16
	.byte	0x8d
	.long	0x3d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "qr_package\0"
	.byte	0x16
	.byte	0x8f
	.long	0x3c46
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "dupe\0"
	.byte	0x16
	.byte	0x91
	.long	0x3d43
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3ae5
	.uleb128 0xf
	.long	0x39c3
	.uleb128 0x4
	.byte	0x4
	.long	0x2650
	.uleb128 0x4
	.byte	0x4
	.long	0x3956
	.uleb128 0x4
	.byte	0x4
	.long	0x39b8
	.uleb128 0x4
	.byte	0x4
	.long	0x25a3
	.uleb128 0x3
	.ascii "regexp\0"
	.byte	0x16
	.byte	0x6f
	.long	0x2650
	.uleb128 0xc
	.ascii "re_scream_pos_data_s\0"
	.byte	0x8
	.byte	0x16
	.byte	0x72
	.long	0x3b59
	.uleb128 0xd
	.ascii "scream_olds\0"
	.byte	0x16
	.byte	0x74
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "scream_pos\0"
	.byte	0x16
	.byte	0x75
	.long	0x3b59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x32fe
	.uleb128 0x3
	.ascii "re_scream_pos_data\0"
	.byte	0x16
	.byte	0x76
	.long	0x3b10
	.uleb128 0x21
	.byte	0x1
	.long	0x3b93
	.long	0x3b93
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3b99
	.uleb128 0x12
	.long	0x3ba9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2641
	.uleb128 0xf
	.long	0x3b9e
	.uleb128 0x4
	.byte	0x4
	.long	0x3ba4
	.uleb128 0xf
	.long	0x2505
	.uleb128 0xf
	.long	0x3309
	.uleb128 0x4
	.byte	0x4
	.long	0x3b79
	.uleb128 0x21
	.byte	0x1
	.long	0x32fe
	.long	0x3bec
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x32fe
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x165
	.uleb128 0x12
	.long	0x3309
	.byte	0
	.uleb128 0xf
	.long	0x3b93
	.uleb128 0x4
	.byte	0x4
	.long	0x3bb4
	.uleb128 0x21
	.byte	0x1
	.long	0x159
	.long	0x3c25
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x3ba9
	.uleb128 0x12
	.long	0x3c25
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3b5f
	.uleb128 0x4
	.byte	0x4
	.long	0x3bf7
	.uleb128 0x21
	.byte	0x1
	.long	0x3806
	.long	0x3c46
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3c31
	.uleb128 0x11
	.byte	0x1
	.long	0x3c5d
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3c4c
	.uleb128 0x11
	.byte	0x1
	.long	0x3c7e
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3c7e
	.uleb128 0x12
	.long	0x3c83
	.byte	0
	.uleb128 0xf
	.long	0x32fe
	.uleb128 0xf
	.long	0x3806
	.uleb128 0x4
	.byte	0x4
	.long	0x3c63
	.uleb128 0x11
	.byte	0x1
	.long	0x3ca9
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3c7e
	.uleb128 0x12
	.long	0x3b99
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3c8e
	.uleb128 0x21
	.byte	0x1
	.long	0x32fe
	.long	0x3cce
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3b99
	.uleb128 0x12
	.long	0x3c7e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3caf
	.uleb128 0x21
	.byte	0x1
	.long	0x3806
	.long	0x3cf8
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3c83
	.uleb128 0x12
	.long	0x3c83
	.uleb128 0x12
	.long	0x3ba9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3cd4
	.uleb128 0x21
	.byte	0x1
	.long	0x3806
	.long	0x3d1d
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3b99
	.uleb128 0x12
	.long	0x3ba9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3cfe
	.uleb128 0x21
	.byte	0x1
	.long	0x165
	.long	0x3d3d
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3bec
	.uleb128 0x12
	.long	0x3d3d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x327b
	.uleb128 0x4
	.byte	0x4
	.long	0x3d23
	.uleb128 0x7
	.ascii "_reg_trie_accepted\0"
	.byte	0x8
	.byte	0x16
	.word	0x192
	.long	0x3d8b
	.uleb128 0x8
	.ascii "endpos\0"
	.byte	0x16
	.word	0x193
	.long	0x3d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "wordnum\0"
	.byte	0x16
	.word	0x194
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x32e9
	.uleb128 0x9
	.ascii "reg_trie_accepted\0"
	.byte	0x16
	.word	0x196
	.long	0x3d49
	.uleb128 0x4
	.byte	0x4
	.long	0x3b02
	.uleb128 0x9
	.ascii "CHECKPOINT\0"
	.byte	0x16
	.word	0x1ab
	.long	0x32fe
	.uleb128 0x22
	.byte	0x4
	.byte	0x16
	.word	0x1b6
	.long	0x3ddd
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1b7
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x23
	.secrel32	LASF30
	.byte	0x34
	.byte	0x16
	.word	0x1ad
	.long	0x3e24
	.uleb128 0x8
	.ascii "resume_state\0"
	.byte	0x16
	.word	0x1ae
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "locinput\0"
	.byte	0x16
	.word	0x1af
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "u\0"
	.byte	0x16
	.word	0x234
	.long	0x4358
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3ddd
	.uleb128 0x22
	.byte	0xc
	.byte	0x16
	.word	0x1bd
	.long	0x3e60
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1bf
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF19
	.byte	0x16
	.word	0x1c0
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x1c1
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x22
	.byte	0x10
	.byte	0x16
	.word	0x1c5
	.long	0x3ead
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1c7
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF19
	.byte	0x16
	.word	0x1c8
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x1c9
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "next_branch\0"
	.byte	0x16
	.word	0x1cb
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x38c8
	.uleb128 0x22
	.byte	0x20
	.byte	0x16
	.word	0x1ce
	.long	0x3f3f
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1d0
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF19
	.byte	0x16
	.word	0x1d1
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x1d2
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "accept_buff\0"
	.byte	0x16
	.word	0x1d4
	.long	0x3f3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "accepted\0"
	.byte	0x16
	.word	0x1d5
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "jump\0"
	.byte	0x16
	.word	0x1d6
	.long	0x3f45
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x16
	.word	0x1d7
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "me\0"
	.byte	0x16
	.word	0x1d8
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3d91
	.uleb128 0x4
	.byte	0x4
	.long	0x32f3
	.uleb128 0x22
	.byte	0x24
	.byte	0x16
	.word	0x1dd
	.long	0x3ffc
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1df
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "prev_eval\0"
	.byte	0x16
	.word	0x1e0
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF31
	.byte	0x16
	.word	0x1e1
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "prev_rex\0"
	.byte	0x16
	.word	0x1e2
	.long	0x3dab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "toggle_reg_flags\0"
	.byte	0x16
	.word	0x1e3
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x1e6
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "lastcp\0"
	.byte	0x16
	.word	0x1e7
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "close_paren\0"
	.byte	0x16
	.word	0x1e8
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x16
	.word	0x1e9
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x22
	.byte	0x10
	.byte	0x16
	.word	0x1ec
	.long	0x4048
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1ee
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "wanted\0"
	.byte	0x16
	.word	0x1ef
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "logical\0"
	.byte	0x16
	.word	0x1f0
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "me\0"
	.byte	0x16
	.word	0x1f1
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x22
	.byte	0x10
	.byte	0x16
	.word	0x1f4
	.long	0x409f
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x1f6
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "prev_mark\0"
	.byte	0x16
	.word	0x1f7
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "mark_name\0"
	.byte	0x16
	.word	0x1f8
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "mark_loc\0"
	.byte	0x16
	.word	0x1f9
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.byte	0x16
	.word	0x1fc
	.long	0x40b8
	.uleb128 0x8
	.ascii "val\0"
	.byte	0x16
	.word	0x1fd
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x22
	.byte	0x2c
	.byte	0x16
	.word	0x202
	.long	0x4172
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x204
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF31
	.byte	0x16
	.word	0x205
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x16
	.word	0x206
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x16
	.word	0x206
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x207
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "minmod\0"
	.byte	0x16
	.word	0x208
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "parenfloor\0"
	.byte	0x16
	.word	0x209
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "min\0"
	.byte	0x16
	.word	0x20a
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "max\0"
	.byte	0x16
	.word	0x20b
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "count\0"
	.byte	0x16
	.word	0x20e
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "lastloc\0"
	.byte	0x16
	.word	0x20f
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x22
	.byte	0x1c
	.byte	0x16
	.word	0x212
	.long	0x4208
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x214
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "save_curlyx\0"
	.byte	0x16
	.word	0x215
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x216
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "lastcp\0"
	.byte	0x16
	.word	0x217
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "save_lastloc\0"
	.byte	0x16
	.word	0x218
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "cache_offset\0"
	.byte	0x16
	.word	0x219
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "cache_mask\0"
	.byte	0x16
	.word	0x21a
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x22
	.byte	0x28
	.byte	0x16
	.word	0x21d
	.long	0x42a6
	.uleb128 0x16
	.secrel32	LASF29
	.byte	0x16
	.word	0x21f
	.long	0x3e24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "c1\0"
	.byte	0x16
	.word	0x220
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "c2\0"
	.byte	0x16
	.word	0x220
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x221
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "alen\0"
	.byte	0x16
	.word	0x222
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "count\0"
	.byte	0x16
	.word	0x223
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "minmod\0"
	.byte	0x16
	.word	0x224
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x16
	.word	0x225
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x16
	.word	0x225
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "me\0"
	.byte	0x16
	.word	0x226
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.byte	0x2c
	.byte	0x16
	.word	0x229
	.long	0x4358
	.uleb128 0x8
	.ascii "paren\0"
	.byte	0x16
	.word	0x22a
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "cp\0"
	.byte	0x16
	.word	0x22b
	.long	0x3db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "c1\0"
	.byte	0x16
	.word	0x22c
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "c2\0"
	.byte	0x16
	.word	0x22c
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "maxpos\0"
	.byte	0x16
	.word	0x22d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "oldloc\0"
	.byte	0x16
	.word	0x22e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "count\0"
	.byte	0x16
	.word	0x22f
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "min\0"
	.byte	0x16
	.word	0x230
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "max\0"
	.byte	0x16
	.word	0x230
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x16
	.word	0x231
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x16
	.word	0x231
	.long	0x3ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x24
	.byte	0x2c
	.byte	0x16
	.word	0x1b1
	.long	0x4410
	.uleb128 0x1b
	.ascii "yes\0"
	.byte	0x16
	.word	0x1b8
	.long	0x3dc4
	.uleb128 0x1b
	.ascii "branchlike\0"
	.byte	0x16
	.word	0x1c3
	.long	0x3e2a
	.uleb128 0x1b
	.ascii "branch\0"
	.byte	0x16
	.word	0x1cc
	.long	0x3e60
	.uleb128 0x1b
	.ascii "trie\0"
	.byte	0x16
	.word	0x1d9
	.long	0x3eb3
	.uleb128 0x1b
	.ascii "eval\0"
	.byte	0x16
	.word	0x1ea
	.long	0x3f4b
	.uleb128 0x1b
	.ascii "ifmatch\0"
	.byte	0x16
	.word	0x1f2
	.long	0x3ffc
	.uleb128 0x25
	.secrel32	LASF32
	.byte	0x16
	.word	0x1fa
	.long	0x4048
	.uleb128 0x1b
	.ascii "keeper\0"
	.byte	0x16
	.word	0x1fe
	.long	0x409f
	.uleb128 0x1b
	.ascii "curlyx\0"
	.byte	0x16
	.word	0x210
	.long	0x40b8
	.uleb128 0x1b
	.ascii "whilem\0"
	.byte	0x16
	.word	0x21b
	.long	0x4172
	.uleb128 0x1b
	.ascii "curlym\0"
	.byte	0x16
	.word	0x227
	.long	0x4208
	.uleb128 0x1b
	.ascii "curly\0"
	.byte	0x16
	.word	0x232
	.long	0x42a6
	.byte	0
	.uleb128 0x26
	.secrel32	LASF30
	.byte	0x16
	.word	0x235
	.long	0x3ddd
	.uleb128 0x27
	.secrel32	LASF33
	.word	0xfe0
	.byte	0x16
	.word	0x23e
	.long	0x445f
	.uleb128 0x8
	.ascii "states\0"
	.byte	0x16
	.word	0x23f
	.long	0x445f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "prev\0"
	.byte	0x16
	.word	0x240
	.long	0x446f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfd8
	.uleb128 0x8
	.ascii "next\0"
	.byte	0x16
	.word	0x240
	.long	0x446f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfdc
	.byte	0
	.uleb128 0xa
	.long	0x4410
	.long	0x446f
	.uleb128 0xb
	.long	0x1af
	.byte	0x4d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x441c
	.uleb128 0x26
	.secrel32	LASF33
	.byte	0x16
	.word	0x241
	.long	0x441c
	.uleb128 0x7
	.ascii "re_save_state\0"
	.byte	0x5c
	.byte	0x16
	.word	0x25c
	.long	0x477b
	.uleb128 0x8
	.ascii "re_state_reg_flags\0"
	.byte	0x16
	.word	0x25d
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "re_state_reg_start_tmpl\0"
	.byte	0x16
	.word	0x25e
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "re_state_reg_eval_set\0"
	.byte	0x16
	.word	0x25f
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "re_state_reg_match_utf8\0"
	.byte	0x16
	.word	0x260
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "re_state_bostr\0"
	.byte	0x16
	.word	0x261
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "re_state_reginput\0"
	.byte	0x16
	.word	0x262
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "re_state_regeol\0"
	.byte	0x16
	.word	0x263
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "re_state_regoffs\0"
	.byte	0x16
	.word	0x264
	.long	0x3af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "re_state_reglastparen\0"
	.byte	0x16
	.word	0x265
	.long	0x477b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "re_state_reglastcloseparen\0"
	.byte	0x16
	.word	0x266
	.long	0x477b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "re_state_reg_start_tmp\0"
	.byte	0x16
	.word	0x267
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "re_state_reg_magic\0"
	.byte	0x16
	.word	0x268
	.long	0x4781
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.ascii "re_state_reg_oldcurpm\0"
	.byte	0x16
	.word	0x269
	.long	0x4787
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.ascii "re_state_reg_curpm\0"
	.byte	0x16
	.word	0x26a
	.long	0x4787
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.ascii "re_state_reg_oldsaved\0"
	.byte	0x16
	.word	0x26b
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.ascii "re_state_reg_oldsavedlen\0"
	.byte	0x16
	.word	0x26c
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.ascii "re_state_reg_poscache_size\0"
	.byte	0x16
	.word	0x26d
	.long	0x6bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.ascii "re_state_reg_oldpos\0"
	.byte	0x16
	.word	0x26e
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.ascii "re_state_reg_maxiter\0"
	.byte	0x16
	.word	0x26f
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.ascii "re_state_reg_leftiter\0"
	.byte	0x16
	.word	0x270
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.ascii "re_state_regsize\0"
	.byte	0x16
	.word	0x271
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.ascii "re_state_reg_poscache\0"
	.byte	0x16
	.word	0x272
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.ascii "re_state_reg_starttry\0"
	.byte	0x16
	.word	0x273
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3309
	.uleb128 0x4
	.byte	0x4
	.long	0x2a7d
	.uleb128 0x4
	.byte	0x4
	.long	0x921
	.uleb128 0x3
	.ascii "HE\0"
	.byte	0x15
	.byte	0x59
	.long	0x4797
	.uleb128 0xc
	.ascii "he\0"
	.byte	0xc
	.byte	0x1a
	.byte	0xc
	.long	0x47dc
	.uleb128 0xd
	.ascii "hent_next\0"
	.byte	0x1a
	.byte	0x10
	.long	0x488d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "hent_hek\0"
	.byte	0x1a
	.byte	0x11
	.long	0x4bdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "he_valu\0"
	.byte	0x1a
	.byte	0x15
	.long	0x512f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii "HEK\0"
	.byte	0x15
	.byte	0x5a
	.long	0x47e7
	.uleb128 0xc
	.ascii "hek\0"
	.byte	0xc
	.byte	0x1a
	.byte	0x19
	.long	0x482b
	.uleb128 0xd
	.ascii "hek_hash\0"
	.byte	0x1a
	.byte	0x1a
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "hek_len\0"
	.byte	0x1a
	.byte	0x1b
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "hek_key\0"
	.byte	0x1a
	.byte	0x1c
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x72
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x72
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x72
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x72
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x72
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x72
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x72
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x72
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3806
	.uleb128 0x4
	.byte	0x4
	.long	0x488d
	.uleb128 0x4
	.byte	0x4
	.long	0x478d
	.uleb128 0x4
	.byte	0x4
	.long	0x2800
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x7e
	.long	0x48ef
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x7e
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x7e
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x7e
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x7e
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x7e
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x7e
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x7e
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2d22
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x83
	.long	0x494b
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x83
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x83
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x83
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x83
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x83
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x83
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x83
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2d9a
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x88
	.long	0x49a7
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x88
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x88
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x88
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x88
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x88
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x88
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x88
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2c2e
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x8d
	.long	0x4a03
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x8d
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x8d
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x8d
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x8d
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x8d
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x8d
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x8d
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2ca8
	.uleb128 0x28
	.byte	0x4
	.byte	0x15
	.byte	0x92
	.long	0x4a5f
	.uleb128 0x29
	.secrel32	LASF34
	.byte	0x15
	.byte	0x92
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF35
	.byte	0x15
	.byte	0x92
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF36
	.byte	0x15
	.byte	0x92
	.long	0x3806
	.uleb128 0x29
	.secrel32	LASF37
	.byte	0x15
	.byte	0x92
	.long	0x159
	.uleb128 0x29
	.secrel32	LASF38
	.byte	0x15
	.byte	0x92
	.long	0x4881
	.uleb128 0x29
	.secrel32	LASF39
	.byte	0x15
	.byte	0x92
	.long	0x4887
	.uleb128 0x29
	.secrel32	LASF40
	.byte	0x15
	.byte	0x92
	.long	0x4893
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x2ec8
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x18c
	.long	0x4a8d
	.uleb128 0x16
	.secrel32	LASF41
	.byte	0x15
	.word	0x18d
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF42
	.byte	0x15
	.word	0x18e
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x190
	.long	0x4ac4
	.uleb128 0x16
	.secrel32	LASF43
	.byte	0x15
	.word	0x191
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF44
	.byte	0x15
	.word	0x192
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF45
	.byte	0x15
	.word	0x193
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x15
	.word	0x189
	.long	0x4afe
	.uleb128 0x25
	.secrel32	LASF46
	.byte	0x15
	.word	0x18a
	.long	0x6b0
	.uleb128 0x25
	.secrel32	LASF47
	.byte	0x15
	.word	0x18b
	.long	0x3afc
	.uleb128 0x25
	.secrel32	LASF48
	.byte	0x15
	.word	0x18f
	.long	0x4a65
	.uleb128 0x25
	.secrel32	LASF49
	.byte	0x15
	.word	0x194
	.long	0x4a8d
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x1a3
	.long	0x4b26
	.uleb128 0x16
	.secrel32	LASF41
	.byte	0x15
	.word	0x1a4
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF42
	.byte	0x15
	.word	0x1a5
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x1a7
	.long	0x4b5d
	.uleb128 0x16
	.secrel32	LASF43
	.byte	0x15
	.word	0x1a8
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF44
	.byte	0x15
	.word	0x1a9
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF45
	.byte	0x15
	.word	0x1aa
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x15
	.word	0x1a0
	.long	0x4b97
	.uleb128 0x25
	.secrel32	LASF46
	.byte	0x15
	.word	0x1a1
	.long	0x6b0
	.uleb128 0x25
	.secrel32	LASF47
	.byte	0x15
	.word	0x1a2
	.long	0x3afc
	.uleb128 0x25
	.secrel32	LASF48
	.byte	0x15
	.word	0x1a6
	.long	0x4afe
	.uleb128 0x25
	.secrel32	LASF49
	.byte	0x15
	.word	0x1ab
	.long	0x4b26
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x1af
	.long	0x4bdd
	.uleb128 0x25
	.secrel32	LASF50
	.byte	0x15
	.word	0x1b0
	.long	0x69a
	.uleb128 0x25
	.secrel32	LASF51
	.byte	0x15
	.word	0x1b1
	.long	0x6a5
	.uleb128 0x25
	.secrel32	LASF52
	.byte	0x15
	.word	0x1b2
	.long	0x165
	.uleb128 0x25
	.secrel32	LASF53
	.byte	0x15
	.word	0x1b3
	.long	0x32fe
	.uleb128 0x25
	.secrel32	LASF54
	.byte	0x15
	.word	0x1b4
	.long	0x4bdd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x47dc
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x1e4
	.long	0x4c0b
	.uleb128 0x16
	.secrel32	LASF41
	.byte	0x15
	.word	0x1e5
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF42
	.byte	0x15
	.word	0x1e6
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x1e8
	.long	0x4c42
	.uleb128 0x16
	.secrel32	LASF43
	.byte	0x15
	.word	0x1e9
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF44
	.byte	0x15
	.word	0x1ea
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF45
	.byte	0x15
	.word	0x1eb
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x15
	.word	0x1e1
	.long	0x4c7c
	.uleb128 0x25
	.secrel32	LASF46
	.byte	0x15
	.word	0x1e2
	.long	0x6b0
	.uleb128 0x25
	.secrel32	LASF47
	.byte	0x15
	.word	0x1e3
	.long	0x3afc
	.uleb128 0x25
	.secrel32	LASF48
	.byte	0x15
	.word	0x1e7
	.long	0x4be3
	.uleb128 0x25
	.secrel32	LASF49
	.byte	0x15
	.word	0x1ec
	.long	0x4c0b
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x1f0
	.long	0x4cc2
	.uleb128 0x25
	.secrel32	LASF50
	.byte	0x15
	.word	0x1f1
	.long	0x69a
	.uleb128 0x25
	.secrel32	LASF51
	.byte	0x15
	.word	0x1f2
	.long	0x6a5
	.uleb128 0x25
	.secrel32	LASF52
	.byte	0x15
	.word	0x1f3
	.long	0x165
	.uleb128 0x25
	.secrel32	LASF53
	.byte	0x15
	.word	0x1f4
	.long	0x32fe
	.uleb128 0x25
	.secrel32	LASF54
	.byte	0x15
	.word	0x1f5
	.long	0x4bdd
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x242
	.long	0x4cea
	.uleb128 0x16
	.secrel32	LASF41
	.byte	0x15
	.word	0x243
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF42
	.byte	0x15
	.word	0x244
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x246
	.long	0x4d21
	.uleb128 0x16
	.secrel32	LASF43
	.byte	0x15
	.word	0x247
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF44
	.byte	0x15
	.word	0x248
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF45
	.byte	0x15
	.word	0x249
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x15
	.word	0x23f
	.long	0x4d5b
	.uleb128 0x25
	.secrel32	LASF46
	.byte	0x15
	.word	0x240
	.long	0x6b0
	.uleb128 0x25
	.secrel32	LASF47
	.byte	0x15
	.word	0x241
	.long	0x3afc
	.uleb128 0x25
	.secrel32	LASF48
	.byte	0x15
	.word	0x245
	.long	0x4cc2
	.uleb128 0x25
	.secrel32	LASF49
	.byte	0x15
	.word	0x24a
	.long	0x4cea
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x24e
	.long	0x4da1
	.uleb128 0x25
	.secrel32	LASF50
	.byte	0x15
	.word	0x24f
	.long	0x69a
	.uleb128 0x25
	.secrel32	LASF51
	.byte	0x15
	.word	0x250
	.long	0x6a5
	.uleb128 0x25
	.secrel32	LASF52
	.byte	0x15
	.word	0x251
	.long	0x165
	.uleb128 0x25
	.secrel32	LASF53
	.byte	0x15
	.word	0x252
	.long	0x32fe
	.uleb128 0x25
	.secrel32	LASF54
	.byte	0x15
	.word	0x253
	.long	0x4bdd
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x255
	.long	0x4dc3
	.uleb128 0x25
	.secrel32	LASF55
	.byte	0x15
	.word	0x256
	.long	0x4781
	.uleb128 0x25
	.secrel32	LASF56
	.byte	0x15
	.word	0x257
	.long	0x3afc
	.byte	0
	.uleb128 0x9
	.ascii "cv_flags_t\0"
	.byte	0x15
	.word	0x25f
	.long	0x32f3
	.uleb128 0x11
	.byte	0x1
	.long	0x4de7
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x4de7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x25f2
	.uleb128 0x4
	.byte	0x4
	.long	0x4dd6
	.uleb128 0x4
	.byte	0x4
	.long	0x2554
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x2ba
	.long	0x4e21
	.uleb128 0x16
	.secrel32	LASF41
	.byte	0x15
	.word	0x2bb
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF42
	.byte	0x15
	.word	0x2bc
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x15
	.word	0x2be
	.long	0x4e58
	.uleb128 0x16
	.secrel32	LASF43
	.byte	0x15
	.word	0x2bf
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF44
	.byte	0x15
	.word	0x2c0
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF45
	.byte	0x15
	.word	0x2c1
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x15
	.word	0x2b7
	.long	0x4e92
	.uleb128 0x25
	.secrel32	LASF46
	.byte	0x15
	.word	0x2b8
	.long	0x6b0
	.uleb128 0x25
	.secrel32	LASF47
	.byte	0x15
	.word	0x2b9
	.long	0x3afc
	.uleb128 0x25
	.secrel32	LASF48
	.byte	0x15
	.word	0x2bd
	.long	0x4df9
	.uleb128 0x25
	.secrel32	LASF49
	.byte	0x15
	.word	0x2c2
	.long	0x4e21
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x2c6
	.long	0x4ed8
	.uleb128 0x25
	.secrel32	LASF50
	.byte	0x15
	.word	0x2c7
	.long	0x69a
	.uleb128 0x25
	.secrel32	LASF51
	.byte	0x15
	.word	0x2c8
	.long	0x6a5
	.uleb128 0x25
	.secrel32	LASF52
	.byte	0x15
	.word	0x2c9
	.long	0x165
	.uleb128 0x25
	.secrel32	LASF53
	.byte	0x15
	.word	0x2ca
	.long	0x32fe
	.uleb128 0x25
	.secrel32	LASF54
	.byte	0x15
	.word	0x2cb
	.long	0x4bdd
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x2cd
	.long	0x4efa
	.uleb128 0x25
	.secrel32	LASF55
	.byte	0x15
	.word	0x2ce
	.long	0x4781
	.uleb128 0x25
	.secrel32	LASF56
	.byte	0x15
	.word	0x2cf
	.long	0x3afc
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x15
	.word	0x2de
	.long	0x4f27
	.uleb128 0x1b
	.ascii "xiou_dirp\0"
	.byte	0x15
	.word	0x2df
	.long	0x4f27
	.uleb128 0x1b
	.ascii "xiou_any\0"
	.byte	0x15
	.word	0x2e0
	.long	0x165
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x68f
	.uleb128 0x4
	.byte	0x4
	.long	0x379d
	.uleb128 0x4
	.byte	0x4
	.long	0x2928
	.uleb128 0x3
	.ascii "PADLIST\0"
	.byte	0x21
	.byte	0x13
	.long	0x2554
	.uleb128 0x3
	.ascii "PAD\0"
	.byte	0x21
	.byte	0x14
	.long	0x2554
	.uleb128 0x3
	.ascii "PADOFFSET\0"
	.byte	0x21
	.byte	0x1a
	.long	0x96
	.uleb128 0x2a
	.byte	0x8
	.byte	0x1b
	.byte	0x11
	.long	0x4f89
	.uleb128 0x13
	.secrel32	LASF41
	.byte	0x1b
	.byte	0x12
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF42
	.byte	0x1b
	.byte	0x13
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x1b
	.byte	0x15
	.long	0x4fbc
	.uleb128 0x13
	.secrel32	LASF43
	.byte	0x1b
	.byte	0x16
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF44
	.byte	0x1b
	.byte	0x17
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF45
	.byte	0x1b
	.byte	0x18
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x1b
	.byte	0xe
	.long	0x4ff1
	.uleb128 0x29
	.secrel32	LASF46
	.byte	0x1b
	.byte	0xf
	.long	0x6b0
	.uleb128 0x29
	.secrel32	LASF47
	.byte	0x1b
	.byte	0x10
	.long	0x3afc
	.uleb128 0x29
	.secrel32	LASF48
	.byte	0x1b
	.byte	0x14
	.long	0x4f64
	.uleb128 0x29
	.secrel32	LASF49
	.byte	0x1b
	.byte	0x19
	.long	0x4f89
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1b
	.byte	0x1d
	.long	0x5031
	.uleb128 0x29
	.secrel32	LASF50
	.byte	0x1b
	.byte	0x1e
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF51
	.byte	0x1b
	.byte	0x1f
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF52
	.byte	0x1b
	.byte	0x20
	.long	0x165
	.uleb128 0x29
	.secrel32	LASF53
	.byte	0x1b
	.byte	0x21
	.long	0x32fe
	.uleb128 0x29
	.secrel32	LASF54
	.byte	0x1b
	.byte	0x22
	.long	0x4bdd
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1b
	.byte	0x24
	.long	0x5050
	.uleb128 0x29
	.secrel32	LASF55
	.byte	0x1b
	.byte	0x25
	.long	0x4781
	.uleb128 0x29
	.secrel32	LASF56
	.byte	0x1b
	.byte	0x26
	.long	0x3afc
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1b
	.byte	0x2b
	.long	0x507d
	.uleb128 0x1e
	.ascii "xcv_start\0"
	.byte	0x1b
	.byte	0x2c
	.long	0x386d
	.uleb128 0x1e
	.ascii "xcv_xsubany\0"
	.byte	0x1b
	.byte	0x2d
	.long	0x3144
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1b
	.byte	0x2f
	.long	0x50a6
	.uleb128 0x1e
	.ascii "xcv_root\0"
	.byte	0x1b
	.byte	0x30
	.long	0x386d
	.uleb128 0x1e
	.ascii "xcv_xsub\0"
	.byte	0x1b
	.byte	0x31
	.long	0x4ded
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x4f39
	.uleb128 0x21
	.byte	0x1
	.long	0x386d
	.long	0x50bc
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x50ac
	.uleb128 0x24
	.byte	0x4
	.byte	0x12
	.word	0x13c
	.long	0x50f9
	.uleb128 0x1b
	.ascii "op_pmreplroot\0"
	.byte	0x12
	.word	0x13d
	.long	0x386d
	.uleb128 0x1b
	.ascii "op_pmtargetoff\0"
	.byte	0x12
	.word	0x13f
	.long	0x4f53
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x12
	.word	0x144
	.long	0x512f
	.uleb128 0x1b
	.ascii "op_pmreplstart\0"
	.byte	0x12
	.word	0x145
	.long	0x386d
	.uleb128 0x1b
	.ascii "op_pmstashpv\0"
	.byte	0x12
	.word	0x147
	.long	0x159
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1a
	.byte	0x12
	.long	0x515d
	.uleb128 0x1e
	.ascii "hent_val\0"
	.byte	0x1a
	.byte	0x13
	.long	0x3806
	.uleb128 0x1e
	.ascii "hent_refcount\0"
	.byte	0x1a
	.byte	0x14
	.long	0x13e
	.byte	0
	.uleb128 0xc
	.ascii "mro_meta\0"
	.byte	0x18
	.byte	0x1a
	.byte	0x30
	.long	0x51f3
	.uleb128 0xd
	.ascii "mro_linear_dfs\0"
	.byte	0x1a
	.byte	0x31
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "mro_linear_c3\0"
	.byte	0x1a
	.byte	0x32
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "mro_nextmethod\0"
	.byte	0x1a
	.byte	0x33
	.long	0x3afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "cache_gen\0"
	.byte	0x1a
	.byte	0x34
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "pkg_gen\0"
	.byte	0x1a
	.byte	0x35
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "mro_which\0"
	.byte	0x1a
	.byte	0x36
	.long	0x51fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x14
	.ascii "mro_alg\0"
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x5203
	.uleb128 0xf
	.long	0x51f3
	.uleb128 0xc
	.ascii "xpvhv_aux\0"
	.byte	0x14
	.byte	0x1a
	.byte	0x3d
	.long	0x528a
	.uleb128 0xd
	.ascii "xhv_name\0"
	.byte	0x1a
	.byte	0x3e
	.long	0x4bdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "xhv_backreferences\0"
	.byte	0x1a
	.byte	0x3f
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "xhv_eiter\0"
	.byte	0x1a
	.byte	0x40
	.long	0x488d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "xhv_riter\0"
	.byte	0x1a
	.byte	0x41
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "xhv_mro_meta\0"
	.byte	0x1a
	.byte	0x42
	.long	0x528a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x515d
	.uleb128 0x2a
	.byte	0x8
	.byte	0x1a
	.byte	0x4b
	.long	0x52b5
	.uleb128 0x13
	.secrel32	LASF41
	.byte	0x1a
	.byte	0x4c
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF42
	.byte	0x1a
	.byte	0x4d
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x1a
	.byte	0x4f
	.long	0x52e8
	.uleb128 0x13
	.secrel32	LASF43
	.byte	0x1a
	.byte	0x50
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF44
	.byte	0x1a
	.byte	0x51
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF45
	.byte	0x1a
	.byte	0x52
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x1a
	.byte	0x48
	.long	0x531d
	.uleb128 0x29
	.secrel32	LASF46
	.byte	0x1a
	.byte	0x49
	.long	0x6b0
	.uleb128 0x29
	.secrel32	LASF47
	.byte	0x1a
	.byte	0x4a
	.long	0x3afc
	.uleb128 0x29
	.secrel32	LASF48
	.byte	0x1a
	.byte	0x4e
	.long	0x5290
	.uleb128 0x29
	.secrel32	LASF49
	.byte	0x1a
	.byte	0x53
	.long	0x52b5
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1a
	.byte	0x57
	.long	0x535d
	.uleb128 0x29
	.secrel32	LASF50
	.byte	0x1a
	.byte	0x58
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF51
	.byte	0x1a
	.byte	0x59
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF52
	.byte	0x1a
	.byte	0x5a
	.long	0x165
	.uleb128 0x29
	.secrel32	LASF53
	.byte	0x1a
	.byte	0x5b
	.long	0x32fe
	.uleb128 0x29
	.secrel32	LASF54
	.byte	0x1a
	.byte	0x5c
	.long	0x4bdd
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x1a
	.byte	0x5e
	.long	0x537c
	.uleb128 0x29
	.secrel32	LASF55
	.byte	0x1a
	.byte	0x5f
	.long	0x4781
	.uleb128 0x29
	.secrel32	LASF56
	.byte	0x1a
	.byte	0x60
	.long	0x3afc
	.byte	0
	.uleb128 0xc
	.ascii "jmpenv\0"
	.byte	0x4c
	.byte	0x13
	.byte	0x1f
	.long	0x53d7
	.uleb128 0xd
	.ascii "je_prev\0"
	.byte	0x13
	.byte	0x20
	.long	0x53d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "je_buf\0"
	.byte	0x13
	.byte	0x21
	.long	0x4d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "je_ret\0"
	.byte	0x13
	.byte	0x22
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.ascii "je_mustcatch\0"
	.byte	0x13
	.byte	0x23
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x537c
	.uleb128 0x3
	.ascii "JMPENV\0"
	.byte	0x13
	.byte	0x26
	.long	0x537c
	.uleb128 0x4
	.byte	0x4
	.long	0x6bb
	.uleb128 0x14
	.ascii "refcounted_he\0"
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x53f1
	.uleb128 0x7
	.ascii "block_sub\0"
	.byte	0x24
	.byte	0x13
	.word	0x118
	.long	0x54ca
	.uleb128 0x8
	.ascii "cv\0"
	.byte	0x13
	.word	0x119
	.long	0x4de7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "gv\0"
	.byte	0x13
	.word	0x11a
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "dfoutgv\0"
	.byte	0x13
	.word	0x11b
	.long	0x3873
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "savearray\0"
	.byte	0x13
	.word	0x11c
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "argarray\0"
	.byte	0x13
	.word	0x11d
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "olddepth\0"
	.byte	0x13
	.word	0x11e
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "hasargs\0"
	.byte	0x13
	.word	0x11f
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "lval\0"
	.byte	0x13
	.word	0x120
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x16
	.secrel32	LASF57
	.byte	0x13
	.word	0x121
	.long	0x54ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "retop\0"
	.byte	0x13
	.word	0x122
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x4f48
	.uleb128 0x7
	.ascii "block_eval\0"
	.byte	0x1c
	.byte	0x13
	.word	0x178
	.long	0x558c
	.uleb128 0x8
	.ascii "old_in_eval\0"
	.byte	0x13
	.word	0x179
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "old_op_type\0"
	.byte	0x13
	.word	0x17a
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.ascii "old_namesv\0"
	.byte	0x13
	.word	0x17b
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "old_eval_root\0"
	.byte	0x13
	.word	0x17c
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "cur_text\0"
	.byte	0x13
	.word	0x17d
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "cv\0"
	.byte	0x13
	.word	0x17e
	.long	0x4de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "retop\0"
	.byte	0x13
	.word	0x17f
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "cur_top_env\0"
	.byte	0x13
	.word	0x180
	.long	0x558c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x53dd
	.uleb128 0x7
	.ascii "block_loop\0"
	.byte	0x28
	.byte	0x13
	.word	0x199
	.long	0x565d
	.uleb128 0x16
	.secrel32	LASF58
	.byte	0x13
	.word	0x19a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "resetsp\0"
	.byte	0x13
	.word	0x19b
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "my_op\0"
	.byte	0x13
	.word	0x19c
	.long	0x565d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "iterdata\0"
	.byte	0x13
	.word	0x1a0
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.secrel32	LASF57
	.byte	0x13
	.word	0x1a1
	.long	0x54ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "itersave\0"
	.byte	0x13
	.word	0x1a6
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "iterlval\0"
	.byte	0x13
	.word	0x1a9
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "iterary\0"
	.byte	0x13
	.word	0x1ae
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "iterix\0"
	.byte	0x13
	.word	0x1af
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "itermax\0"
	.byte	0x13
	.word	0x1b2
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0xa88
	.uleb128 0x7
	.ascii "block_givwhen\0"
	.byte	0x4
	.byte	0x13
	.word	0x1f7
	.long	0x568f
	.uleb128 0x8
	.ascii "leave_op\0"
	.byte	0x13
	.word	0x1f8
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x24
	.byte	0x28
	.byte	0x13
	.word	0x20b
	.long	0x56e3
	.uleb128 0x1b
	.ascii "blku_sub\0"
	.byte	0x13
	.word	0x20c
	.long	0x5407
	.uleb128 0x1b
	.ascii "blku_eval\0"
	.byte	0x13
	.word	0x20d
	.long	0x54d0
	.uleb128 0x1b
	.ascii "blku_loop\0"
	.byte	0x13
	.word	0x20e
	.long	0x5592
	.uleb128 0x1b
	.ascii "blku_givwhen\0"
	.byte	0x13
	.word	0x20f
	.long	0x5663
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7a8
	.uleb128 0x7
	.ascii "subst\0"
	.byte	0x34
	.byte	0x13
	.word	0x23e
	.long	0x582f
	.uleb128 0x8
	.ascii "sbu_type\0"
	.byte	0x13
	.word	0x23f
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "sbu_once\0"
	.byte	0x13
	.word	0x240
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.ascii "sbu_rxtainted\0"
	.byte	0x13
	.word	0x241
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.ascii "sbu_iters\0"
	.byte	0x13
	.word	0x242
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "sbu_maxiters\0"
	.byte	0x13
	.word	0x243
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "sbu_rflags\0"
	.byte	0x13
	.word	0x244
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "sbu_oldsave\0"
	.byte	0x13
	.word	0x245
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "sbu_orig\0"
	.byte	0x13
	.word	0x246
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "sbu_dstr\0"
	.byte	0x13
	.word	0x247
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "sbu_targ\0"
	.byte	0x13
	.word	0x248
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "sbu_s\0"
	.byte	0x13
	.word	0x249
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "sbu_m\0"
	.byte	0x13
	.word	0x24a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "sbu_strend\0"
	.byte	0x13
	.word	0x24b
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "sbu_rxres\0"
	.byte	0x13
	.word	0x24c
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.ascii "sbu_rx\0"
	.byte	0x13
	.word	0x24d
	.long	0x3b93
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x24
	.byte	0x40
	.byte	0x13
	.word	0x276
	.long	0x5859
	.uleb128 0x1b
	.ascii "cx_blk\0"
	.byte	0x13
	.word	0x277
	.long	0x29a3
	.uleb128 0x1b
	.ascii "cx_subst\0"
	.byte	0x13
	.word	0x278
	.long	0x56e9
	.byte	0
	.uleb128 0x7
	.ascii "stackinfo\0"
	.byte	0x20
	.byte	0x13
	.word	0x2f1
	.long	0x590d
	.uleb128 0x8
	.ascii "si_stack\0"
	.byte	0x13
	.word	0x2f2
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "si_cxstack\0"
	.byte	0x13
	.word	0x2f3
	.long	0x590d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "si_prev\0"
	.byte	0x13
	.word	0x2f4
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "si_next\0"
	.byte	0x13
	.word	0x2f5
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "si_cxix\0"
	.byte	0x13
	.word	0x2f6
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "si_cxmax\0"
	.byte	0x13
	.word	0x2f7
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "si_type\0"
	.byte	0x13
	.word	0x2f8
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "si_markoff\0"
	.byte	0x13
	.word	0x2f9
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x296c
	.uleb128 0x4
	.byte	0x4
	.long	0x5859
	.uleb128 0x9
	.ascii "PERL_SI\0"
	.byte	0x13
	.word	0x2fe
	.long	0x5859
	.uleb128 0x2a
	.byte	0x8
	.byte	0x19
	.byte	0xf
	.long	0x594e
	.uleb128 0x13
	.secrel32	LASF41
	.byte	0x19
	.byte	0x10
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF42
	.byte	0x19
	.byte	0x11
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x19
	.byte	0x13
	.long	0x5981
	.uleb128 0x13
	.secrel32	LASF43
	.byte	0x19
	.byte	0x14
	.long	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF44
	.byte	0x19
	.byte	0x15
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF45
	.byte	0x19
	.byte	0x16
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x19
	.byte	0xc
	.long	0x59b6
	.uleb128 0x29
	.secrel32	LASF46
	.byte	0x19
	.byte	0xd
	.long	0x6b0
	.uleb128 0x29
	.secrel32	LASF47
	.byte	0x19
	.byte	0xe
	.long	0x3afc
	.uleb128 0x29
	.secrel32	LASF48
	.byte	0x19
	.byte	0x12
	.long	0x5929
	.uleb128 0x29
	.secrel32	LASF49
	.byte	0x19
	.byte	0x17
	.long	0x594e
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x19
	.byte	0x1b
	.long	0x59f6
	.uleb128 0x29
	.secrel32	LASF50
	.byte	0x19
	.byte	0x1c
	.long	0x69a
	.uleb128 0x29
	.secrel32	LASF51
	.byte	0x19
	.byte	0x1d
	.long	0x6a5
	.uleb128 0x29
	.secrel32	LASF52
	.byte	0x19
	.byte	0x1e
	.long	0x165
	.uleb128 0x29
	.secrel32	LASF53
	.byte	0x19
	.byte	0x1f
	.long	0x32fe
	.uleb128 0x29
	.secrel32	LASF54
	.byte	0x19
	.byte	0x20
	.long	0x4bdd
	.byte	0
	.uleb128 0x28
	.byte	0x4
	.byte	0x19
	.byte	0x22
	.long	0x5a15
	.uleb128 0x29
	.secrel32	LASF55
	.byte	0x19
	.byte	0x23
	.long	0x4781
	.uleb128 0x29
	.secrel32	LASF56
	.byte	0x19
	.byte	0x24
	.long	0x3afc
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x5a2f
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x4781
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5a15
	.uleb128 0x21
	.byte	0x1
	.long	0x3309
	.long	0x5a4f
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x4781
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5a35
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x5a7e
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x4781
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5a55
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x5a9e
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x4781
	.uleb128 0x12
	.long	0x3d3d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5a84
	.uleb128 0x4
	.byte	0x4
	.long	0x308f
	.uleb128 0x9
	.ascii "SUBLEXINFO\0"
	.byte	0x11
	.word	0xd01
	.long	0x5abd
	.uleb128 0x7
	.ascii "_sublex_info\0"
	.byte	0x10
	.byte	0x11
	.word	0xd02
	.long	0x5b43
	.uleb128 0x8
	.ascii "super_state\0"
	.byte	0x11
	.word	0xd03
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "sub_inwhat\0"
	.byte	0x11
	.word	0xd04
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.ascii "sub_op\0"
	.byte	0x11
	.word	0xd05
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "super_bufptr\0"
	.byte	0x11
	.word	0xd06
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "super_bufend\0"
	.byte	0x11
	.word	0xd07
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2a
	.byte	0x10
	.byte	0x22
	.byte	0xe
	.long	0x5b93
	.uleb128 0xd
	.ascii "val\0"
	.byte	0x22
	.byte	0xf
	.long	0x3879
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "state\0"
	.byte	0x22
	.byte	0x10
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "savestack_ix\0"
	.byte	0x22
	.byte	0x11
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "comppad\0"
	.byte	0x22
	.byte	0x12
	.long	0x4df3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.ascii "yy_stack_frame\0"
	.byte	0x22
	.byte	0x16
	.long	0x5b43
	.uleb128 0x2b
	.secrel32	LASF59
	.word	0x1d0
	.byte	0x22
	.byte	0x18
	.long	0x5fc1
	.uleb128 0xd
	.ascii "old_parser\0"
	.byte	0x22
	.byte	0x1c
	.long	0x5fc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "yylval\0"
	.byte	0x22
	.byte	0x1d
	.long	0x3879
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "yychar\0"
	.byte	0x22
	.byte	0x1e
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "yyerrstatus\0"
	.byte	0x22
	.byte	0x21
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "stack_size\0"
	.byte	0x22
	.byte	0x23
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "yylen\0"
	.byte	0x22
	.byte	0x24
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "stack\0"
	.byte	0x22
	.byte	0x25
	.long	0x5fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "ps\0"
	.byte	0x22
	.byte	0x26
	.long	0x5fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "lex_brackets\0"
	.byte	0x22
	.byte	0x2a
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "lex_casemods\0"
	.byte	0x22
	.byte	0x2b
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "lex_brackstack\0"
	.byte	0x22
	.byte	0x2c
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "lex_casestack\0"
	.byte	0x22
	.byte	0x2d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "lex_defer\0"
	.byte	0x22
	.byte	0x2e
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "lex_dojoin\0"
	.byte	0x22
	.byte	0x2f
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xd
	.ascii "lex_expect\0"
	.byte	0x22
	.byte	0x30
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xd
	.ascii "expect\0"
	.byte	0x22
	.byte	0x31
	.long	0x32e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xd
	.ascii "lex_formbrack\0"
	.byte	0x22
	.byte	0x32
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "lex_inpat\0"
	.byte	0x22
	.byte	0x33
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "lex_op\0"
	.byte	0x22
	.byte	0x34
	.long	0x386d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.ascii "lex_repl\0"
	.byte	0x22
	.byte	0x35
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.ascii "lex_inwhat\0"
	.byte	0x22
	.byte	0x36
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.ascii "last_lop_op\0"
	.byte	0x22
	.byte	0x37
	.long	0x32f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.ascii "lex_starts\0"
	.byte	0x22
	.byte	0x38
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.ascii "lex_stuff\0"
	.byte	0x22
	.byte	0x39
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.ascii "multi_start\0"
	.byte	0x22
	.byte	0x3a
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.ascii "multi_end\0"
	.byte	0x22
	.byte	0x3b
	.long	0x32fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.ascii "multi_open\0"
	.byte	0x22
	.byte	0x3c
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.ascii "multi_close\0"
	.byte	0x22
	.byte	0x3d
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0xd
	.ascii "pending_ident\0"
	.byte	0x22
	.byte	0x3e
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0xd
	.ascii "preambled\0"
	.byte	0x22
	.byte	0x3f
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0xd
	.ascii "sublex_info\0"
	.byte	0x22
	.byte	0x41
	.long	0x5aaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.ascii "linestr\0"
	.byte	0x22
	.byte	0x42
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.ascii "bufptr\0"
	.byte	0x22
	.byte	0x43
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.ascii "oldbufptr\0"
	.byte	0x22
	.byte	0x44
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.ascii "oldoldbufptr\0"
	.byte	0x22
	.byte	0x45
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.ascii "bufend\0"
	.byte	0x22
	.byte	0x46
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.ascii "linestart\0"
	.byte	0x22
	.byte	0x47
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.ascii "last_uni\0"
	.byte	0x22
	.byte	0x48
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.ascii "last_lop\0"
	.byte	0x22
	.byte	0x49
	.long	0x159
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.ascii "copline\0"
	.byte	0x22
	.byte	0x4a
	.long	0x3314
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.ascii "in_my\0"
	.byte	0x22
	.byte	0x4b
	.long	0x32f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.ascii "lex_state\0"
	.byte	0x22
	.byte	0x4c
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xd
	.ascii "error_count\0"
	.byte	0x22
	.byte	0x4d
	.long	0x32e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0xd
	.ascii "in_my_stash\0"
	.byte	0x22
	.byte	0x4e
	.long	0x3afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.ascii "rsfp\0"
	.byte	0x22
	.byte	0x4f
	.long	0x4f2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.ascii "rsfp_filters\0"
	.byte	0x22
	.byte	0x50
	.long	0x4df3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.ascii "nextval\0"
	.byte	0x22
	.byte	0x64
	.long	0x5fcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.ascii "nexttype\0"
	.byte	0x22
	.byte	0x65
	.long	0x5fdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.ascii "nexttoke\0"
	.byte	0x22
	.byte	0x66
	.long	0x32fe
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.ascii "saved_curcop\0"
	.byte	0x22
	.byte	0x69
	.long	0x56e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.ascii "tokenbuf\0"
	.byte	0x22
	.byte	0x6a
	.long	0x5fed
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5ba9
	.uleb128 0x4
	.byte	0x4
	.long	0x5b93
	.uleb128 0xa
	.long	0x3879
	.long	0x5fdd
	.uleb128 0xb
	.long	0x1af
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0x32fe
	.long	0x5fed
	.uleb128 0xb
	.long	0x1af
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0x81
	.long	0x5ffd
	.uleb128 0xb
	.long	0x1af
	.byte	0xff
	.byte	0
	.uleb128 0x20
	.secrel32	LASF59
	.byte	0x22
	.byte	0x6c
	.long	0x5ba9
	.uleb128 0x4
	.byte	0x4
	.long	0x31d2
	.uleb128 0x4
	.byte	0x4
	.long	0x6008
	.uleb128 0x9
	.ascii "runops_proc_t\0"
	.byte	0x11
	.word	0xfc5
	.long	0x602a
	.uleb128 0x4
	.byte	0x4
	.long	0x6030
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x6040
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x9
	.ascii "share_proc_t\0"
	.byte	0x11
	.word	0xfc6
	.long	0x6055
	.uleb128 0x4
	.byte	0x4
	.long	0x605b
	.uleb128 0x11
	.byte	0x1
	.long	0x606c
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x9
	.ascii "thrhook_proc_t\0"
	.byte	0x11
	.word	0xfc7
	.long	0x602a
	.uleb128 0x9
	.ascii "destroyable_proc_t\0"
	.byte	0x11
	.word	0xfc9
	.long	0x609e
	.uleb128 0x4
	.byte	0x4
	.long	0x60a4
	.uleb128 0x21
	.byte	0x1
	.long	0x81
	.long	0x60b9
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x7
	.ascii "perl_debug_pad\0"
	.byte	0x30
	.byte	0x11
	.word	0x11d8
	.long	0x60e1
	.uleb128 0x8
	.ascii "pad\0"
	.byte	0x11
	.word	0x11d9
	.long	0x60e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.long	0x2505
	.long	0x60f1
	.uleb128 0xb
	.long	0x1af
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.ascii "peep_t\0"
	.byte	0x11
	.word	0x11e2
	.long	0x6100
	.uleb128 0x4
	.byte	0x4
	.long	0x6106
	.uleb128 0x11
	.byte	0x1
	.long	0x6117
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x386d
	.byte	0
	.uleb128 0x9
	.ascii "SVCOMPARE_t\0"
	.byte	0x11
	.word	0x11f2
	.long	0x612b
	.uleb128 0x4
	.byte	0x4
	.long	0x6131
	.uleb128 0x21
	.byte	0x1
	.long	0x32fe
	.long	0x614b
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x9
	.ascii "XSUBADDR_t\0"
	.byte	0x11
	.word	0x11f5
	.long	0x4ded
	.uleb128 0x7
	.ascii "exitlistentry\0"
	.byte	0x8
	.byte	0x11
	.word	0x1202
	.long	0x6193
	.uleb128 0x8
	.ascii "fn\0"
	.byte	0x11
	.word	0x1203
	.long	0x3800
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "ptr\0"
	.byte	0x11
	.word	0x1204
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.ascii "PerlExitListEntry\0"
	.byte	0x11
	.word	0x1205
	.long	0x615e
	.uleb128 0x4
	.byte	0x4
	.long	0x3144
	.uleb128 0x4
	.byte	0x4
	.long	0x2b33
	.uleb128 0x2c
	.long	0x56e3
	.uleb128 0x4
	.byte	0x4
	.long	0x5919
	.uleb128 0xa
	.long	0x159
	.long	0x61d4
	.uleb128 0xb
	.long	0x1af
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x4475
	.uleb128 0x4
	.byte	0x4
	.long	0x4410
	.uleb128 0x2c
	.long	0x32e9
	.uleb128 0x4
	.byte	0x4
	.long	0x61eb
	.uleb128 0xf
	.long	0x27c
	.uleb128 0x4
	.byte	0x4
	.long	0x6193
	.uleb128 0xa
	.long	0x165
	.long	0x6206
	.uleb128 0xb
	.long	0x1af
	.byte	0xf
	.byte	0
	.uleb128 0x2c
	.long	0x3309
	.uleb128 0xa
	.long	0x32e9
	.long	0x621b
	.uleb128 0xb
	.long	0x1af
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x5ffd
	.uleb128 0x4
	.byte	0x4
	.long	0x321c
	.uleb128 0x4
	.byte	0x4
	.long	0x37b1
	.uleb128 0x3
	.ascii "GCallback\0"
	.byte	0x23
	.byte	0x58
	.long	0x2f9
	.uleb128 0x3
	.ascii "PurpleAccount\0"
	.byte	0x24
	.byte	0x24
	.long	0x6253
	.uleb128 0xc
	.ascii "_PurpleAccount\0"
	.byte	0x58
	.byte	0x24
	.byte	0x7e
	.long	0x6424
	.uleb128 0x13
	.secrel32	LASF60
	.byte	0x24
	.byte	0x80
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "alias\0"
	.byte	0x24
	.byte	0x81
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF61
	.byte	0x24
	.byte	0x82
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "user_info\0"
	.byte	0x24
	.byte	0x83
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "buddy_icon_path\0"
	.byte	0x24
	.byte	0x85
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "remember_pass\0"
	.byte	0x24
	.byte	0x87
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "protocol_id\0"
	.byte	0x24
	.byte	0x89
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "gc\0"
	.byte	0x24
	.byte	0x8b
	.long	0x79f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "disconnecting\0"
	.byte	0x24
	.byte	0x8c
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "settings\0"
	.byte	0x24
	.byte	0x8e
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "ui_settings\0"
	.byte	0x24
	.byte	0x8f
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "proxy_info\0"
	.byte	0x24
	.byte	0x91
	.long	0x7be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "permit\0"
	.byte	0x24
	.byte	0x9e
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "deny\0"
	.byte	0x24
	.byte	0x9f
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "perm_deny\0"
	.byte	0x24
	.byte	0xa0
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "status_types\0"
	.byte	0x24
	.byte	0xa2
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.ascii "presence\0"
	.byte	0x24
	.byte	0xa4
	.long	0x7b1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.ascii "system_log\0"
	.byte	0x24
	.byte	0xa5
	.long	0x7779
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.secrel32	LASF62
	.byte	0x24
	.byte	0xa7
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.ascii "registration_cb\0"
	.byte	0x24
	.byte	0xa8
	.long	0x645f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.ascii "registration_cb_user_data\0"
	.byte	0x24
	.byte	0xa9
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.ascii "priv\0"
	.byte	0x24
	.byte	0xab
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0
	.uleb128 0x3
	.ascii "PurpleFilterAccountFunc\0"
	.byte	0x24
	.byte	0x26
	.long	0x6443
	.uleb128 0x4
	.byte	0x4
	.long	0x6449
	.uleb128 0x21
	.byte	0x1
	.long	0x2ad
	.long	0x6459
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x623e
	.uleb128 0x3
	.ascii "PurpleAccountRegistrationCb\0"
	.byte	0x24
	.byte	0x28
	.long	0x6482
	.uleb128 0x4
	.byte	0x4
	.long	0x6488
	.uleb128 0x11
	.byte	0x1
	.long	0x649e
	.uleb128 0x12
	.long	0x6459
	.uleb128 0x12
	.long	0x2ad
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConnection\0"
	.byte	0x25
	.byte	0x1f
	.long	0x64b6
	.uleb128 0xc
	.ascii "_PurpleConnection\0"
	.byte	0x34
	.byte	0x25
	.byte	0xf5
	.long	0x65d2
	.uleb128 0xd
	.ascii "prpl\0"
	.byte	0x25
	.byte	0xf7
	.long	0x6c80
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF26
	.byte	0x25
	.byte	0xf8
	.long	0x674b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "state\0"
	.byte	0x25
	.byte	0xfa
	.long	0x67ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF63
	.byte	0x25
	.byte	0xfc
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF61
	.byte	0x25
	.byte	0xfd
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "inpa\0"
	.byte	0x25
	.byte	0xfe
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "buddy_chats\0"
	.byte	0x25
	.word	0x100
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "proto_data\0"
	.byte	0x25
	.word	0x103
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "display_name\0"
	.byte	0x25
	.word	0x105
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii "keepalive\0"
	.byte	0x25
	.word	0x106
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "wants_to_die\0"
	.byte	0x25
	.word	0x10f
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "disconnect_timeout\0"
	.byte	0x25
	.word	0x111
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.ascii "last_received\0"
	.byte	0x25
	.word	0x112
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x25
	.byte	0x25
	.long	0x674b
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_HTML\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_NO_BGCOLOR\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_AUTO_RESP\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_FORMATTING_WBFO\0"
	.sleb128 8
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_NO_NEWLINES\0"
	.sleb128 16
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_NO_FONTSIZE\0"
	.sleb128 32
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_NO_URLDESC\0"
	.sleb128 64
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_NO_IMAGES\0"
	.sleb128 128
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_ALLOW_CUSTOM_SMILEY\0"
	.sleb128 256
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_SUPPORT_MOODS\0"
	.sleb128 512
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTION_SUPPORT_MOOD_MESSAGES\0"
	.sleb128 1024
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConnectionFlags\0"
	.byte	0x25
	.byte	0x32
	.long	0x65d2
	.uleb128 0x2d
	.byte	0x4
	.byte	0x25
	.byte	0x35
	.long	0x67ae
	.uleb128 0x2e
	.ascii "PURPLE_DISCONNECTED\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTED\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_CONNECTING\0"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConnectionState\0"
	.byte	0x25
	.byte	0x3a
	.long	0x6768
	.uleb128 0x3
	.ascii "PurplePlugin\0"
	.byte	0x26
	.byte	0x26
	.long	0x67df
	.uleb128 0xc
	.ascii "_PurplePlugin\0"
	.byte	0x38
	.byte	0x26
	.byte	0x97
	.long	0x68e7
	.uleb128 0xd
	.ascii "native_plugin\0"
	.byte	0x26
	.byte	0x99
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "loaded\0"
	.byte	0x26
	.byte	0x9a
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x26
	.byte	0x9b
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "path\0"
	.byte	0x26
	.byte	0x9c
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "info\0"
	.byte	0x26
	.byte	0x9d
	.long	0x6cbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "error\0"
	.byte	0x26
	.byte	0x9e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "ipc_data\0"
	.byte	0x26
	.byte	0x9f
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "extra\0"
	.byte	0x26
	.byte	0xa0
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "unloadable\0"
	.byte	0x26
	.byte	0xa1
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "dependent_plugins\0"
	.byte	0x26
	.byte	0xa2
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.secrel32	LASF64
	.byte	0x26
	.byte	0xa4
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.secrel32	LASF65
	.byte	0x26
	.byte	0xa5
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.secrel32	LASF66
	.byte	0x26
	.byte	0xa6
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.secrel32	LASF67
	.byte	0x26
	.byte	0xa7
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.ascii "PurplePluginInfo\0"
	.byte	0x26
	.byte	0x28
	.long	0x68ff
	.uleb128 0xc
	.ascii "_PurplePluginInfo\0"
	.byte	0x68
	.byte	0x26
	.byte	0x4e
	.long	0x6aea
	.uleb128 0xd
	.ascii "magic\0"
	.byte	0x26
	.byte	0x50
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "major_version\0"
	.byte	0x26
	.byte	0x51
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "minor_version\0"
	.byte	0x26
	.byte	0x52
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x26
	.byte	0x53
	.long	0x6c58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "ui_requirement\0"
	.byte	0x26
	.byte	0x54
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF26
	.byte	0x26
	.byte	0x55
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "dependencies\0"
	.byte	0x26
	.byte	0x56
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "priority\0"
	.byte	0x26
	.byte	0x57
	.long	0x6b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "id\0"
	.byte	0x26
	.byte	0x59
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.secrel32	LASF68
	.byte	0x26
	.byte	0x5a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "version\0"
	.byte	0x26
	.byte	0x5b
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "summary\0"
	.byte	0x26
	.byte	0x5c
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "description\0"
	.byte	0x26
	.byte	0x5d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "author\0"
	.byte	0x26
	.byte	0x5e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "homepage\0"
	.byte	0x26
	.byte	0x5f
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.ascii "load\0"
	.byte	0x26
	.byte	0x65
	.long	0x6c86
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.ascii "unload\0"
	.byte	0x26
	.byte	0x66
	.long	0x6c86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.ascii "destroy\0"
	.byte	0x26
	.byte	0x67
	.long	0x6c98
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.ascii "ui_info\0"
	.byte	0x26
	.byte	0x69
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.ascii "extra_info\0"
	.byte	0x26
	.byte	0x6a
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.ascii "prefs_info\0"
	.byte	0x26
	.byte	0x6b
	.long	0x6c9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.ascii "actions\0"
	.byte	0x26
	.byte	0x7a
	.long	0x6cb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.secrel32	LASF64
	.byte	0x26
	.byte	0x7c
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.secrel32	LASF65
	.byte	0x26
	.byte	0x7d
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.secrel32	LASF66
	.byte	0x26
	.byte	0x7e
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.secrel32	LASF67
	.byte	0x26
	.byte	0x7f
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0
	.uleb128 0x3
	.ascii "PurplePluginUiInfo\0"
	.byte	0x26
	.byte	0x2a
	.long	0x6b04
	.uleb128 0xc
	.ascii "_PurplePluginUiInfo\0"
	.byte	0x1c
	.byte	0x26
	.byte	0xad
	.long	0x6b9c
	.uleb128 0xd
	.ascii "get_plugin_pref_frame\0"
	.byte	0x26
	.byte	0xae
	.long	0x6cdb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "page_num\0"
	.byte	0x26
	.byte	0xb0
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "frame\0"
	.byte	0x26
	.byte	0xb1
	.long	0x6cd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF64
	.byte	0x26
	.byte	0xb3
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF65
	.byte	0x26
	.byte	0xb4
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.secrel32	LASF66
	.byte	0x26
	.byte	0xb5
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF67
	.byte	0x26
	.byte	0xb6
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.ascii "PurplePluginPriority\0"
	.byte	0x26
	.byte	0x31
	.long	0xba
	.uleb128 0x3
	.ascii "PurplePluginPrefFrame\0"
	.byte	0x27
	.byte	0x1e
	.long	0x6bd5
	.uleb128 0x14
	.ascii "_PurplePluginPrefFrame\0"
	.byte	0x1
	.uleb128 0x2d
	.byte	0x4
	.byte	0x26
	.byte	0x39
	.long	0x6c58
	.uleb128 0x2e
	.ascii "PURPLE_PLUGIN_UNKNOWN\0"
	.sleb128 -1
	.uleb128 0x2e
	.ascii "PURPLE_PLUGIN_STANDARD\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_PLUGIN_LOADER\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_PLUGIN_PROTOCOL\0"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.ascii "PurplePluginType\0"
	.byte	0x26
	.byte	0x3f
	.long	0x6bee
	.uleb128 0x21
	.byte	0x1
	.long	0x2ad
	.long	0x6c80
	.uleb128 0x12
	.long	0x6c80
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x67cb
	.uleb128 0x4
	.byte	0x4
	.long	0x6c70
	.uleb128 0x11
	.byte	0x1
	.long	0x6c98
	.uleb128 0x12
	.long	0x6c80
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x6c8c
	.uleb128 0x4
	.byte	0x4
	.long	0x6aea
	.uleb128 0x21
	.byte	0x1
	.long	0x428
	.long	0x6cb9
	.uleb128 0x12
	.long	0x6c80
	.uleb128 0x12
	.long	0x2d8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x6ca4
	.uleb128 0x4
	.byte	0x4
	.long	0x68e7
	.uleb128 0x21
	.byte	0x1
	.long	0x6cd5
	.long	0x6cd5
	.uleb128 0x12
	.long	0x6c80
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x6bb8
	.uleb128 0x4
	.byte	0x4
	.long	0x6cc5
	.uleb128 0x3
	.ascii "PurplePresence\0"
	.byte	0x28
	.byte	0x57
	.long	0x6cf7
	.uleb128 0x14
	.ascii "_PurplePresence\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "PurpleBuddyIcon\0"
	.byte	0x29
	.byte	0x22
	.long	0x6d20
	.uleb128 0x14
	.ascii "_PurpleBuddyIcon\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "PurpleConversationUiOps\0"
	.byte	0x2a
	.byte	0x24
	.long	0x6d52
	.uleb128 0xc
	.ascii "_PurpleConversationUiOps\0"
	.byte	0x4c
	.byte	0x2a
	.byte	0x9e
	.long	0x6f26
	.uleb128 0xd
	.ascii "create_conversation\0"
	.byte	0x2a
	.byte	0xa3
	.long	0x7887
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "destroy_conversation\0"
	.byte	0x2a
	.byte	0xa6
	.long	0x7887
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "write_chat\0"
	.byte	0x2a
	.byte	0xab
	.long	0x78ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "write_im\0"
	.byte	0x2a
	.byte	0xb2
	.long	0x78ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "write_conv\0"
	.byte	0x2a
	.byte	0xbd
	.long	0x78d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "chat_add_users\0"
	.byte	0x2a
	.byte	0xca
	.long	0x78f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "chat_rename_user\0"
	.byte	0x2a
	.byte	0xd2
	.long	0x7915
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "chat_remove_users\0"
	.byte	0x2a
	.byte	0xd8
	.long	0x792c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "chat_update_user\0"
	.byte	0x2a
	.byte	0xdc
	.long	0x7943
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "present\0"
	.byte	0x2a
	.byte	0xe1
	.long	0x7887
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "has_focus\0"
	.byte	0x2a
	.byte	0xe7
	.long	0x7959
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "custom_smiley_add\0"
	.byte	0x2a
	.byte	0xea
	.long	0x7979
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "custom_smiley_write\0"
	.byte	0x2a
	.byte	0xeb
	.long	0x79a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.ascii "custom_smiley_close\0"
	.byte	0x2a
	.byte	0xed
	.long	0x7943
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.ascii "send_confirm\0"
	.byte	0x2a
	.byte	0xf4
	.long	0x7943
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.secrel32	LASF64
	.byte	0x2a
	.byte	0xf6
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x13
	.secrel32	LASF65
	.byte	0x2a
	.byte	0xf7
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.secrel32	LASF66
	.byte	0x2a
	.byte	0xf8
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.secrel32	LASF67
	.byte	0x2a
	.byte	0xf9
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConversation\0"
	.byte	0x2a
	.byte	0x26
	.long	0x6f40
	.uleb128 0x7
	.ascii "_PurpleConversation\0"
	.byte	0x30
	.byte	0x2a
	.word	0x14f
	.long	0x7029
	.uleb128 0x16
	.secrel32	LASF27
	.byte	0x2a
	.word	0x151
	.long	0x7220
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.secrel32	LASF63
	.byte	0x2a
	.word	0x153
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.secrel32	LASF68
	.byte	0x2a
	.word	0x156
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.secrel32	LASF69
	.byte	0x2a
	.word	0x157
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "logging\0"
	.byte	0x2a
	.word	0x159
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "logs\0"
	.byte	0x2a
	.word	0x15b
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "u\0"
	.byte	0x2a
	.word	0x163
	.long	0x79b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "ui_ops\0"
	.byte	0x2a
	.word	0x165
	.long	0x79ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.secrel32	LASF62
	.byte	0x2a
	.word	0x166
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.secrel32	LASF0
	.byte	0x2a
	.word	0x168
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii "features\0"
	.byte	0x2a
	.word	0x16a
	.long	0x674b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii "message_history\0"
	.byte	0x2a
	.word	0x16b
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConvIm\0"
	.byte	0x2a
	.byte	0x28
	.long	0x703d
	.uleb128 0xc
	.ascii "_PurpleConvIm\0"
	.byte	0x18
	.byte	0x2a
	.byte	0xff
	.long	0x70da
	.uleb128 0x8
	.ascii "conv\0"
	.byte	0x2a
	.word	0x101
	.long	0x7869
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "typing_state\0"
	.byte	0x2a
	.word	0x103
	.long	0x727a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "typing_timeout\0"
	.byte	0x2a
	.word	0x104
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "type_again\0"
	.byte	0x2a
	.word	0x105
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "send_typed_timeout\0"
	.byte	0x2a
	.word	0x106
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "icon\0"
	.byte	0x2a
	.word	0x108
	.long	0x79ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConvChat\0"
	.byte	0x2a
	.byte	0x2a
	.long	0x70f0
	.uleb128 0x7
	.ascii "_PurpleConvChat\0"
	.byte	0x24
	.byte	0x2a
	.word	0x10e
	.long	0x719f
	.uleb128 0x8
	.ascii "conv\0"
	.byte	0x2a
	.word	0x110
	.long	0x7869
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "in_room\0"
	.byte	0x2a
	.word	0x112
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii "ignored\0"
	.byte	0x2a
	.word	0x115
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii "who\0"
	.byte	0x2a
	.word	0x116
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii "topic\0"
	.byte	0x2a
	.word	0x117
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii "id\0"
	.byte	0x2a
	.word	0x118
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii "nick\0"
	.byte	0x2a
	.word	0x119
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii "left\0"
	.byte	0x2a
	.word	0x11b
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii "users\0"
	.byte	0x2a
	.word	0x11c
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2a
	.byte	0x34
	.long	0x7220
	.uleb128 0x2e
	.ascii "PURPLE_CONV_TYPE_UNKNOWN\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_CONV_TYPE_IM\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_CONV_TYPE_CHAT\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_CONV_TYPE_MISC\0"
	.sleb128 3
	.uleb128 0x2e
	.ascii "PURPLE_CONV_TYPE_ANY\0"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.ascii "PurpleConversationType\0"
	.byte	0x2a
	.byte	0x3b
	.long	0x719f
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2a
	.byte	0x5f
	.long	0x727a
	.uleb128 0x2e
	.ascii "PURPLE_NOT_TYPING\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_TYPING\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_TYPED\0"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.ascii "PurpleTypingState\0"
	.byte	0x2a
	.byte	0x64
	.long	0x723e
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2a
	.byte	0x6a
	.long	0x7417
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_SEND\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_RECV\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_SYSTEM\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_AUTO_RESP\0"
	.sleb128 8
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_ACTIVE_ONLY\0"
	.sleb128 16
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_NICK\0"
	.sleb128 32
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_NO_LOG\0"
	.sleb128 64
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_WHISPER\0"
	.sleb128 128
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_ERROR\0"
	.sleb128 512
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_DELAYED\0"
	.sleb128 1024
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_RAW\0"
	.sleb128 2048
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_IMAGES\0"
	.sleb128 4096
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_NOTIFY\0"
	.sleb128 8192
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_NO_LINKIFY\0"
	.sleb128 16384
	.uleb128 0x2e
	.ascii "PURPLE_MESSAGE_INVISIBLE\0"
	.sleb128 32768
	.byte	0
	.uleb128 0x3
	.ascii "PurpleMessageFlags\0"
	.byte	0x2a
	.byte	0x82
	.long	0x7293
	.uleb128 0x3
	.ascii "PurpleLog\0"
	.byte	0x2b
	.byte	0x25
	.long	0x7442
	.uleb128 0xc
	.ascii "_PurpleLog\0"
	.byte	0x20
	.byte	0x2b
	.byte	0x7c
	.long	0x74d2
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x2b
	.byte	0x7d
	.long	0x76df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF68
	.byte	0x2b
	.byte	0x7e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF63
	.byte	0x2b
	.byte	0x7f
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "conv\0"
	.byte	0x2b
	.byte	0x81
	.long	0x7869
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "time\0"
	.byte	0x2b
	.byte	0x82
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "logger\0"
	.byte	0x2b
	.byte	0x85
	.long	0x786f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "logger_data\0"
	.byte	0x2b
	.byte	0x87
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "tm\0"
	.byte	0x2b
	.byte	0x88
	.long	0x7875
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.ascii "PurpleLogLogger\0"
	.byte	0x2b
	.byte	0x26
	.long	0x74e9
	.uleb128 0xc
	.ascii "_PurpleLogLogger\0"
	.byte	0x44
	.byte	0x2b
	.byte	0x3f
	.long	0x7621
	.uleb128 0x13
	.secrel32	LASF68
	.byte	0x2b
	.byte	0x40
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "id\0"
	.byte	0x2b
	.byte	0x41
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "create\0"
	.byte	0x2b
	.byte	0x45
	.long	0x777f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "write\0"
	.byte	0x2b
	.byte	0x48
	.long	0x77a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "finalize\0"
	.byte	0x2b
	.byte	0x4f
	.long	0x777f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "list\0"
	.byte	0x2b
	.byte	0x52
	.long	0x77c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii "read\0"
	.byte	0x2b
	.byte	0x56
	.long	0x77ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "size\0"
	.byte	0x2b
	.byte	0x5a
	.long	0x7800
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "total_size\0"
	.byte	0x2b
	.byte	0x5e
	.long	0x7820
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.ascii "list_syslog\0"
	.byte	0x2b
	.byte	0x61
	.long	0x7836
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.ascii "get_log_sets\0"
	.byte	0x2b
	.byte	0x6b
	.long	0x784d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.ascii "remove\0"
	.byte	0x2b
	.byte	0x6e
	.long	0x7863
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.ascii "is_deletable\0"
	.byte	0x2b
	.byte	0x71
	.long	0x7863
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.secrel32	LASF64
	.byte	0x2b
	.byte	0x73
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.secrel32	LASF65
	.byte	0x2b
	.byte	0x74
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.secrel32	LASF66
	.byte	0x2b
	.byte	0x75
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x13
	.secrel32	LASF67
	.byte	0x2b
	.byte	0x76
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x3
	.ascii "PurpleLogSet\0"
	.byte	0x2b
	.byte	0x28
	.long	0x7635
	.uleb128 0xc
	.ascii "_PurpleLogSet\0"
	.byte	0x14
	.byte	0x2b
	.byte	0xa3
	.long	0x76a0
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x2b
	.byte	0xa4
	.long	0x76df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF68
	.byte	0x2b
	.byte	0xa5
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF63
	.byte	0x2b
	.byte	0xa6
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "buddy\0"
	.byte	0x2b
	.byte	0xad
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "normalized_name\0"
	.byte	0x2b
	.byte	0xaf
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2b
	.byte	0x2a
	.long	0x76df
	.uleb128 0x2e
	.ascii "PURPLE_LOG_IM\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_LOG_CHAT\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_LOG_SYSTEM\0"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.ascii "PurpleLogType\0"
	.byte	0x2b
	.byte	0x2e
	.long	0x76a0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2b
	.byte	0x30
	.long	0x771a
	.uleb128 0x2e
	.ascii "PURPLE_LOG_READ_NO_NEWLINE\0"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.ascii "PurpleLogReadFlags\0"
	.byte	0x2b
	.byte	0x32
	.long	0x76f4
	.uleb128 0x3
	.ascii "PurpleLogSetCallback\0"
	.byte	0x2b
	.byte	0x37
	.long	0x7750
	.uleb128 0x4
	.byte	0x4
	.long	0x7756
	.uleb128 0x11
	.byte	0x1
	.long	0x7767
	.uleb128 0x12
	.long	0x490
	.uleb128 0x12
	.long	0x7767
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7621
	.uleb128 0x11
	.byte	0x1
	.long	0x7779
	.uleb128 0x12
	.long	0x7779
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7431
	.uleb128 0x4
	.byte	0x4
	.long	0x776d
	.uleb128 0x21
	.byte	0x1
	.long	0x287
	.long	0x77a9
	.uleb128 0x12
	.long	0x7779
	.uleb128 0x12
	.long	0x7417
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x325
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7785
	.uleb128 0x21
	.byte	0x1
	.long	0x428
	.long	0x77c9
	.uleb128 0x12
	.long	0x76df
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x77af
	.uleb128 0x21
	.byte	0x1
	.long	0x159
	.long	0x77e4
	.uleb128 0x12
	.long	0x7779
	.uleb128 0x12
	.long	0x77e4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x771a
	.uleb128 0x4
	.byte	0x4
	.long	0x77cf
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x7800
	.uleb128 0x12
	.long	0x7779
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x77f0
	.uleb128 0x21
	.byte	0x1
	.long	0xba
	.long	0x7820
	.uleb128 0x12
	.long	0x76df
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7806
	.uleb128 0x21
	.byte	0x1
	.long	0x428
	.long	0x7836
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7826
	.uleb128 0x11
	.byte	0x1
	.long	0x784d
	.uleb128 0x12
	.long	0x7734
	.uleb128 0x12
	.long	0x490
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x783c
	.uleb128 0x21
	.byte	0x1
	.long	0x2ad
	.long	0x7863
	.uleb128 0x12
	.long	0x7779
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7853
	.uleb128 0x4
	.byte	0x4
	.long	0x6f26
	.uleb128 0x4
	.byte	0x4
	.long	0x74d2
	.uleb128 0x4
	.byte	0x4
	.long	0x333
	.uleb128 0x11
	.byte	0x1
	.long	0x7887
	.uleb128 0x12
	.long	0x7869
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x787b
	.uleb128 0x11
	.byte	0x1
	.long	0x78ad
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7417
	.uleb128 0x12
	.long	0x325
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x788d
	.uleb128 0x11
	.byte	0x1
	.long	0x78d8
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7417
	.uleb128 0x12
	.long	0x325
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x78b3
	.uleb128 0x11
	.byte	0x1
	.long	0x78f4
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x428
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x78de
	.uleb128 0x11
	.byte	0x1
	.long	0x7915
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x78fa
	.uleb128 0x11
	.byte	0x1
	.long	0x792c
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x428
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x791b
	.uleb128 0x11
	.byte	0x1
	.long	0x7943
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7932
	.uleb128 0x21
	.byte	0x1
	.long	0x2ad
	.long	0x7959
	.uleb128 0x12
	.long	0x7869
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7949
	.uleb128 0x21
	.byte	0x1
	.long	0x2ad
	.long	0x7979
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x795f
	.uleb128 0x11
	.byte	0x1
	.long	0x799a
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x799a
	.uleb128 0x12
	.long	0x287
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x79a0
	.uleb128 0xf
	.long	0x2bd
	.uleb128 0x4
	.byte	0x4
	.long	0x797f
	.uleb128 0x4
	.byte	0x4
	.long	0x6d09
	.uleb128 0x24
	.byte	0x4
	.byte	0x2a
	.word	0x15d
	.long	0x79e0
	.uleb128 0x1b
	.ascii "im\0"
	.byte	0x2a
	.word	0x15f
	.long	0x79e0
	.uleb128 0x1b
	.ascii "chat\0"
	.byte	0x2a
	.word	0x160
	.long	0x79e6
	.uleb128 0x1b
	.ascii "misc\0"
	.byte	0x2a
	.word	0x161
	.long	0x165
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7029
	.uleb128 0x4
	.byte	0x4
	.long	0x70da
	.uleb128 0x4
	.byte	0x4
	.long	0x6d33
	.uleb128 0x4
	.byte	0x4
	.long	0x649e
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2c
	.byte	0x24
	.long	0x7a9c
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_USE_GLOBAL\0"
	.sleb128 -1
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_NONE\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_HTTP\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_SOCKS4\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_SOCKS5\0"
	.sleb128 3
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_USE_ENVVAR\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_PROXY_TOR\0"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.ascii "PurpleProxyType\0"
	.byte	0x2c
	.byte	0x2d
	.long	0x79f8
	.uleb128 0x2a
	.byte	0x14
	.byte	0x2c
	.byte	0x32
	.long	0x7b04
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x2c
	.byte	0x34
	.long	0x7a9c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "host\0"
	.byte	0x2c
	.byte	0x36
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "port\0"
	.byte	0x2c
	.byte	0x37
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF60
	.byte	0x2c
	.byte	0x38
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF61
	.byte	0x2c
	.byte	0x39
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.ascii "PurpleProxyInfo\0"
	.byte	0x2c
	.byte	0x3b
	.long	0x7ab3
	.uleb128 0x4
	.byte	0x4
	.long	0x6ce1
	.uleb128 0x2f
	.ascii "_PurplePrivacyType\0"
	.byte	0x4
	.byte	0x2d
	.byte	0x20
	.long	0x7bcc
	.uleb128 0x2e
	.ascii "PURPLE_PRIVACY_ALLOW_ALL\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_PRIVACY_DENY_ALL\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_PRIVACY_ALLOW_USERS\0"
	.sleb128 3
	.uleb128 0x2e
	.ascii "PURPLE_PRIVACY_DENY_USERS\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_PRIVACY_ALLOW_BUDDYLIST\0"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.ascii "PurplePrivacyType\0"
	.byte	0x2d
	.byte	0x27
	.long	0x7b21
	.uleb128 0x4
	.byte	0x4
	.long	0x7b04
	.uleb128 0x3
	.ascii "PurpleRequestField\0"
	.byte	0x2e
	.byte	0x22
	.long	0x7c05
	.uleb128 0xc
	.ascii "_PurpleRequestField\0"
	.byte	0x38
	.byte	0x2e
	.byte	0x67
	.long	0x7ca1
	.uleb128 0x13
	.secrel32	LASF27
	.byte	0x2e
	.byte	0x69
	.long	0x7e64
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF70
	.byte	0x2e
	.byte	0x6a
	.long	0x81a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "id\0"
	.byte	0x2e
	.byte	0x6c
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF58
	.byte	0x2e
	.byte	0x6d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF71
	.byte	0x2e
	.byte	0x6e
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "visible\0"
	.byte	0x2e
	.byte	0x70
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.secrel32	LASF72
	.byte	0x2e
	.byte	0x71
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii "u\0"
	.byte	0x2e
	.byte	0xb4
	.long	0x8142
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.secrel32	LASF62
	.byte	0x2e
	.byte	0xb6
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2e
	.byte	0x2c
	.long	0x7d37
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_INPUT\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_CHOICE\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_ACTION\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELDS\0"
	.sleb128 3
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FILE\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FOLDER\0"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.ascii "PurpleRequestType\0"
	.byte	0x2e
	.byte	0x34
	.long	0x7ca1
	.uleb128 0x2d
	.byte	0x4
	.byte	0x2e
	.byte	0x3a
	.long	0x7e64
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_NONE\0"
	.sleb128 0
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_STRING\0"
	.sleb128 1
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_INTEGER\0"
	.sleb128 2
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_BOOLEAN\0"
	.sleb128 3
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_CHOICE\0"
	.sleb128 4
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_LIST\0"
	.sleb128 5
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_LABEL\0"
	.sleb128 6
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_IMAGE\0"
	.sleb128 7
	.uleb128 0x2e
	.ascii "PURPLE_REQUEST_FIELD_ACCOUNT\0"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.ascii "PurpleRequestFieldType\0"
	.byte	0x2e
	.byte	0x45
	.long	0x7d50
	.uleb128 0x2a
	.byte	0x10
	.byte	0x2e
	.byte	0x4a
	.long	0x7ed2
	.uleb128 0xd
	.ascii "groups\0"
	.byte	0x2e
	.byte	0x4c
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF73
	.byte	0x2e
	.byte	0x4e
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "required_fields\0"
	.byte	0x2e
	.byte	0x50
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF62
	.byte	0x2e
	.byte	0x52
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.ascii "PurpleRequestFields\0"
	.byte	0x2e
	.byte	0x54
	.long	0x7e82
	.uleb128 0x2a
	.byte	0xc
	.byte	0x2e
	.byte	0x59
	.long	0x7f28
	.uleb128 0xd
	.ascii "fields_list\0"
	.byte	0x2e
	.byte	0x5b
	.long	0x7f28
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF69
	.byte	0x2e
	.byte	0x5d
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF73
	.byte	0x2e
	.byte	0x5f
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7ed2
	.uleb128 0x3
	.ascii "PurpleRequestFieldGroup\0"
	.byte	0x2e
	.byte	0x61
	.long	0x7eed
	.uleb128 0x2a
	.byte	0x14
	.byte	0x2e
	.byte	0x75
	.long	0x7f9c
	.uleb128 0x13
	.secrel32	LASF74
	.byte	0x2e
	.byte	0x77
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF75
	.byte	0x2e
	.byte	0x78
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF76
	.byte	0x2e
	.byte	0x79
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.secrel32	LASF77
	.byte	0x2e
	.byte	0x7a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.secrel32	LASF78
	.byte	0x2e
	.byte	0x7b
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x2e
	.byte	0x7f
	.long	0x7fc1
	.uleb128 0x13
	.secrel32	LASF77
	.byte	0x2e
	.byte	0x81
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF78
	.byte	0x2e
	.byte	0x82
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x2e
	.byte	0x86
	.long	0x7fe6
	.uleb128 0x13
	.secrel32	LASF77
	.byte	0x2e
	.byte	0x88
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF78
	.byte	0x2e
	.byte	0x89
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2a
	.byte	0xc
	.byte	0x2e
	.byte	0x8d
	.long	0x801c
	.uleb128 0x13
	.secrel32	LASF77
	.byte	0x2e
	.byte	0x8f
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF78
	.byte	0x2e
	.byte	0x90
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "labels\0"
	.byte	0x2e
	.byte	0x92
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2a
	.byte	0x18
	.byte	0x2e
	.byte	0x96
	.long	0x80a0
	.uleb128 0x13
	.secrel32	LASF79
	.byte	0x2e
	.byte	0x98
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "icons\0"
	.byte	0x2e
	.byte	0x99
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "item_data\0"
	.byte	0x2e
	.byte	0x9a
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "selected\0"
	.byte	0x2e
	.byte	0x9b
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii "selected_table\0"
	.byte	0x2e
	.byte	0x9c
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii "multiple_selection\0"
	.byte	0x2e
	.byte	0x9e
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x2a
	.byte	0x10
	.byte	0x2e
	.byte	0xa2
	.long	0x80f5
	.uleb128 0xd
	.ascii "default_account\0"
	.byte	0x2e
	.byte	0xa4
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.secrel32	LASF63
	.byte	0x2e
	.byte	0xa5
	.long	0x6459
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.secrel32	LASF80
	.byte	0x2e
	.byte	0xa6
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "filter_func\0"
	.byte	0x2e
	.byte	0xa8
	.long	0x6424
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2a
	.byte	0x10
	.byte	0x2e
	.byte	0xac
	.long	0x8142
	.uleb128 0xd
	.ascii "scale_x\0"
	.byte	0x2e
	.byte	0xae
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "scale_y\0"
	.byte	0x2e
	.byte	0xaf
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii "buffer\0"
	.byte	0x2e
	.byte	0xb0
	.long	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.ascii "size\0"
	.byte	0x2e
	.byte	0xb1
	.long	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x28
	.byte	0x18
	.byte	0x2e
	.byte	0x73
	.long	0x81a9
	.uleb128 0x1e
	.ascii "string\0"
	.byte	0x2e
	.byte	0x7d
	.long	0x7f4d
	.uleb128 0x1e
	.ascii "integer\0"
	.byte	0x2e
	.byte	0x84
	.long	0x7f9c
	.uleb128 0x1e
	.ascii "boolean\0"
	.byte	0x2e
	.byte	0x8b
	.long	0x7fc1
	.uleb128 0x1e
	.ascii "choice\0"
	.byte	0x2e
	.byte	0x94
	.long	0x7fe6
	.uleb128 0x1e
	.ascii "list\0"
	.byte	0x2e
	.byte	0xa0
	.long	0x801c
	.uleb128 0x29
	.secrel32	LASF63
	.byte	0x2e
	.byte	0xaa
	.long	0x80a0
	.uleb128 0x1e
	.ascii "image\0"
	.byte	0x2e
	.byte	0xb2
	.long	0x80f5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x7f2e
	.uleb128 0x3
	.ascii "Purple__Account\0"
	.byte	0x2f
	.byte	0x56
	.long	0x6459
	.uleb128 0x3
	.ascii "Purple__Plugin\0"
	.byte	0x2f
	.byte	0xd5
	.long	0x6c80
	.uleb128 0x3
	.ascii "Purple__Request__Field\0"
	.byte	0x2f
	.byte	0xf7
	.long	0x81fa
	.uleb128 0x4
	.byte	0x4
	.long	0x7beb
	.uleb128 0x3
	.ascii "Purple__Request__Fields\0"
	.byte	0x2f
	.byte	0xf8
	.long	0x7f28
	.uleb128 0x3
	.ascii "Purple__Request__Field__Group\0"
	.byte	0x2f
	.byte	0xf9
	.long	0x81a9
	.uleb128 0x3
	.ascii "Purple__RequestFieldType\0"
	.byte	0x2f
	.byte	0xfa
	.long	0x7e64
	.uleb128 0x3
	.ascii "Purple__RequestType\0"
	.byte	0x2f
	.byte	0xfb
	.long	0x7d37
	.uleb128 0x7
	.ascii "_constiv\0"
	.byte	0x8
	.byte	0x2f
	.word	0x133
	.long	0x82af
	.uleb128 0x16
	.secrel32	LASF68
	.byte	0x2f
	.word	0x134
	.long	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii "iv\0"
	.byte	0x2f
	.word	0x135
	.long	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.ascii "constiv\0"
	.byte	0x2f
	.word	0x136
	.long	0x827f
	.uleb128 0x2a
	.byte	0x8
	.byte	0x1
	.byte	0x11
	.long	0x82ee
	.uleb128 0xd
	.ascii "ok_fun\0"
	.byte	0x1
	.byte	0x12
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii "cancel_fun\0"
	.byte	0x1
	.byte	0x13
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.ascii "PurplePerlRequestData\0"
	.byte	0x1
	.byte	0x14
	.long	0x82bf
	.uleb128 0x30
	.ascii "S_croak_xs_usage\0"
	.byte	0x2
	.byte	0xc4
	.byte	0x1
	.byte	0x1
	.long	0x837e
	.uleb128 0x31
	.secrel32	LASF81
	.byte	0x2
	.byte	0xc4
	.long	0x37fa
	.uleb128 0x32
	.ascii "cv\0"
	.byte	0x2
	.byte	0xc4
	.long	0x837e
	.uleb128 0x32
	.ascii "params\0"
	.byte	0x2
	.byte	0xc4
	.long	0x61eb
	.uleb128 0x33
	.ascii "gv\0"
	.byte	0x2
	.byte	0xc6
	.long	0x838e
	.uleb128 0x34
	.uleb128 0x33
	.ascii "gvname\0"
	.byte	0x2
	.byte	0xcb
	.long	0x61eb
	.uleb128 0x33
	.ascii "stash\0"
	.byte	0x2
	.byte	0xcc
	.long	0x839e
	.uleb128 0x33
	.ascii "hvname\0"
	.byte	0x2
	.byte	0xcd
	.long	0x61eb
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x8383
	.uleb128 0x4
	.byte	0x4
	.long	0x8389
	.uleb128 0xf
	.long	0x25f2
	.uleb128 0xf
	.long	0x8393
	.uleb128 0x4
	.byte	0x4
	.long	0x8399
	.uleb128 0xf
	.long	0x28d9
	.uleb128 0xf
	.long	0x83a3
	.uleb128 0x4
	.byte	0x4
	.long	0x83a9
	.uleb128 0xf
	.long	0x25a3
	.uleb128 0x35
	.ascii "purple_perl_request_data_free\0"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	LFB93
	.long	LFE93
	.secrel32	LLST0
	.byte	0x1
	.long	0x84b1
	.uleb128 0x36
	.ascii "ppr\0"
	.byte	0x1
	.byte	0x17
	.long	0x84b1
	.secrel32	LLST1
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0
	.long	0x8441
	.uleb128 0x38
	.ascii "_sv\0"
	.byte	0x1
	.byte	0x1a
	.long	0x3c83
	.secrel32	LLST2
	.uleb128 0x39
	.long	LVL12
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL13
	.long	0x16bd2
	.long	0x8426
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL18
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL19
	.long	0x16bf5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x20
	.long	0x8492
	.uleb128 0x38
	.ascii "_sv\0"
	.byte	0x1
	.byte	0x1c
	.long	0x3c83
	.secrel32	LLST3
	.uleb128 0x39
	.long	LVL9
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL10
	.long	0x16bd2
	.long	0x8477
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL15
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL16
	.long	0x16bf5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	LVL6
	.long	0x16c19
	.long	0x84a7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL21
	.long	0x16c30
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x82ee
	.uleb128 0x35
	.ascii "purple_perl_request_cancel_cb\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	LFB95
	.long	LFE95
	.secrel32	LLST4
	.byte	0x1
	.long	0x8731
	.uleb128 0x3d
	.secrel32	LASF0
	.byte	0x1
	.byte	0x3f
	.long	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.secrel32	LASF73
	.byte	0x1
	.byte	0x3f
	.long	0x7f28
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.ascii "gpr\0"
	.byte	0x1
	.byte	0x41
	.long	0x84b1
	.secrel32	LLST5
	.uleb128 0x38
	.ascii "sp\0"
	.byte	0x1
	.byte	0x43
	.long	0x4881
	.secrel32	LLST6
	.uleb128 0x39
	.long	LVL24
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL25
	.long	0x16c46
	.uleb128 0x39
	.long	LVL27
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL28
	.long	0x16c73
	.uleb128 0x39
	.long	LVL29
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL30
	.long	0x16c94
	.uleb128 0x39
	.long	LVL31
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL32
	.long	0x16cbd
	.long	0x8577
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL33
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL34
	.long	0x16c94
	.uleb128 0x39
	.long	LVL35
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL36
	.long	0x16ce1
	.uleb128 0x39
	.long	LVL37
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL38
	.long	0x16d07
	.uleb128 0x39
	.long	LVL39
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL40
	.long	0x16d39
	.uleb128 0x39
	.long	LVL41
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL42
	.long	0x16d07
	.uleb128 0x39
	.long	LVL43
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL44
	.long	0x16d65
	.uleb128 0x39
	.long	LVL45
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL46
	.long	0x16d8e
	.uleb128 0x3a
	.long	LVL48
	.long	0x16db6
	.long	0x8614
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x39
	.long	LVL49
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL50
	.long	0x16de8
	.long	0x8632
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL51
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL52
	.long	0x16c46
	.uleb128 0x39
	.long	LVL55
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL56
	.long	0x16e12
	.long	0x8668
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x39
	.long	LVL57
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL58
	.long	0x16c46
	.uleb128 0x39
	.long	LVL60
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL61
	.long	0x16c46
	.uleb128 0x39
	.long	LVL62
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL63
	.long	0x16ce1
	.uleb128 0x39
	.long	LVL65
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL66
	.long	0x16c94
	.uleb128 0x39
	.long	LVL67
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL68
	.long	0x16e3e
	.uleb128 0x39
	.long	LVL69
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL70
	.long	0x16e5e
	.uleb128 0x3e
	.long	LVL72
	.byte	0x1
	.long	0x83ae
	.long	0x86ea
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL73
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL74
	.long	0x16e7e
	.long	0x8715
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL77
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL78
	.long	0x16eb2
	.uleb128 0x39
	.long	LVL80
	.long	0x16c30
	.byte	0
	.uleb128 0x35
	.ascii "purple_perl_request_ok_cb\0"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	LFB94
	.long	LFE94
	.secrel32	LLST7
	.byte	0x1
	.long	0x89a7
	.uleb128 0x3d
	.secrel32	LASF0
	.byte	0x1
	.byte	0x29
	.long	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.secrel32	LASF73
	.byte	0x1
	.byte	0x29
	.long	0x7f28
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.ascii "gpr\0"
	.byte	0x1
	.byte	0x2b
	.long	0x84b1
	.secrel32	LLST8
	.uleb128 0x38
	.ascii "sp\0"
	.byte	0x1
	.byte	0x2d
	.long	0x4881
	.secrel32	LLST9
	.uleb128 0x39
	.long	LVL83
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL84
	.long	0x16c46
	.uleb128 0x39
	.long	LVL86
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL87
	.long	0x16c73
	.uleb128 0x39
	.long	LVL88
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL89
	.long	0x16c94
	.uleb128 0x39
	.long	LVL90
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL91
	.long	0x16cbd
	.long	0x87ed
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL92
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL93
	.long	0x16c94
	.uleb128 0x39
	.long	LVL94
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL95
	.long	0x16ce1
	.uleb128 0x39
	.long	LVL96
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL97
	.long	0x16d07
	.uleb128 0x39
	.long	LVL98
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL99
	.long	0x16d39
	.uleb128 0x39
	.long	LVL100
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL101
	.long	0x16d07
	.uleb128 0x39
	.long	LVL102
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL103
	.long	0x16d65
	.uleb128 0x39
	.long	LVL104
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL105
	.long	0x16d8e
	.uleb128 0x3a
	.long	LVL107
	.long	0x16db6
	.long	0x888a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x39
	.long	LVL108
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL109
	.long	0x16de8
	.long	0x88a8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL110
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL111
	.long	0x16c46
	.uleb128 0x39
	.long	LVL114
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL115
	.long	0x16e12
	.long	0x88de
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x39
	.long	LVL116
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL117
	.long	0x16c46
	.uleb128 0x39
	.long	LVL119
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL120
	.long	0x16c46
	.uleb128 0x39
	.long	LVL121
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL122
	.long	0x16ce1
	.uleb128 0x39
	.long	LVL124
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL125
	.long	0x16c94
	.uleb128 0x39
	.long	LVL126
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL127
	.long	0x16e3e
	.uleb128 0x39
	.long	LVL128
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL129
	.long	0x16e5e
	.uleb128 0x3e
	.long	LVL131
	.byte	0x1
	.long	0x83ae
	.long	0x8960
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL132
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL133
	.long	0x16e7e
	.long	0x898b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL136
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL137
	.long	0x16eb2
	.uleb128 0x39
	.long	LVL139
	.long	0x16c30
	.byte	0
	.uleb128 0x3f
	.long	0x830b
	.long	LFB181
	.long	LFE181
	.secrel32	LLST10
	.byte	0x1
	.long	0x8a92
	.uleb128 0x40
	.long	0x8330
	.secrel32	LLST11
	.uleb128 0x40
	.long	0x833a
	.secrel32	LLST12
	.uleb128 0x41
	.long	0x8325
	.byte	0x6
	.byte	0xfa
	.long	0x8325
	.byte	0x9f
	.uleb128 0x42
	.long	0x8348
	.secrel32	LLST13
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x40
	.long	0x8a66
	.uleb128 0x42
	.long	0x8353
	.secrel32	LLST14
	.uleb128 0x42
	.long	0x8361
	.secrel32	LLST15
	.uleb128 0x43
	.long	0x836e
	.uleb128 0x39
	.long	LVL149
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL151
	.long	0x16ed7
	.long	0x8a3a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL154
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL155
	.long	0x16ed7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	LVL152
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL153
	.long	0x16ed7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_is_field_required\0"
	.byte	0x2
	.word	0x791
	.byte	0x1
	.long	LFB179
	.long	LFE179
	.secrel32	LLST16
	.byte	0x1
	.long	0x8ce1
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x791
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x791
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x793
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x793
	.long	0x4881
	.secrel32	LLST17
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x793
	.long	0x32fe
	.secrel32	LLST18
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x793
	.long	0x4881
	.secrel32	LLST19
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x793
	.long	0x32fe
	.secrel32	LLST20
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x58
	.long	0x8c3d
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x797
	.long	0x8200
	.secrel32	LLST21
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x799
	.long	0x27c
	.secrel32	LLST22
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x79b
	.long	0x2ad
	.secrel32	LLST23
	.uleb128 0x39
	.long	LVL168
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL169
	.long	0x16d65
	.uleb128 0x39
	.long	LVL171
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL173
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL174
	.long	0x16d65
	.uleb128 0x39
	.long	LVL176
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL177
	.long	0x16d65
	.uleb128 0x39
	.long	LVL178
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL179
	.long	0x16f23
	.long	0x8bdf
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL180
	.long	0x16f59
	.long	0x8bf4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL182
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL183
	.long	0x16d65
	.uleb128 0x39
	.long	LVL184
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL185
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL194
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL195
	.long	0x16d65
	.uleb128 0x39
	.long	LVL197
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL198
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB22
	.long	LBE22
	.long	0x8c7f
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x7a0
	.long	0x8ce1
	.secrel32	LLST24
	.uleb128 0x39
	.long	LVL187
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL188
	.long	0x16c46
	.uleb128 0x39
	.long	LVL189
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL190
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL157
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL158
	.long	0x16c46
	.uleb128 0x39
	.long	LVL160
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL161
	.long	0x16d07
	.uleb128 0x39
	.long	LVL163
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL164
	.long	0x16d65
	.uleb128 0x39
	.long	LVL200
	.long	0x16c30
	.uleb128 0x39
	.long	LVL201
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL202
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x69a
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_string\0"
	.byte	0x2
	.word	0x77c
	.byte	0x1
	.long	LFB178
	.long	LFE178
	.secrel32	LLST25
	.byte	0x1
	.long	0x8fad
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x77c
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x77c
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x77e
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x77e
	.long	0x4881
	.secrel32	LLST26
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x77e
	.long	0x32fe
	.secrel32	LLST27
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x77e
	.long	0x4881
	.secrel32	LLST28
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x77e
	.long	0x32fe
	.secrel32	LLST29
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x70
	.long	0x8f09
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x782
	.long	0x8200
	.secrel32	LLST30
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x784
	.long	0x27c
	.secrel32	LLST31
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x786
	.long	0x27c
	.secrel32	LLST32
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x787
	.long	0x3c83
	.secrel32	LLST33
	.uleb128 0x39
	.long	LVL215
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL216
	.long	0x16d65
	.uleb128 0x39
	.long	LVL217
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL219
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL220
	.long	0x16d65
	.uleb128 0x39
	.long	LVL221
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL222
	.long	0x16d65
	.uleb128 0x39
	.long	LVL223
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL224
	.long	0x16f23
	.long	0x8e3c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL226
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL227
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL228
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL229
	.long	0x17018
	.uleb128 0x39
	.long	LVL230
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL231
	.long	0x16ff1
	.uleb128 0x3a
	.long	LVL233
	.long	0x1703d
	.long	0x8e8f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL235
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL236
	.long	0x17078
	.long	0x8eb4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL237
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL238
	.long	0x16d65
	.uleb128 0x39
	.long	LVL240
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL241
	.long	0x170a1
	.long	0x8ee4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL251
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL252
	.long	0x16d65
	.uleb128 0x39
	.long	LVL254
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL255
	.long	0x170c7
	.byte	0
	.uleb128 0x4a
	.long	LBB26
	.long	LBE26
	.long	0x8f4b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x78c
	.long	0x8ce1
	.secrel32	LLST34
	.uleb128 0x39
	.long	LVL243
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL244
	.long	0x16c46
	.uleb128 0x39
	.long	LVL246
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL247
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL204
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL205
	.long	0x16c46
	.uleb128 0x39
	.long	LVL207
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL208
	.long	0x16d07
	.uleb128 0x39
	.long	LVL210
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL211
	.long	0x16d65
	.uleb128 0x39
	.long	LVL257
	.long	0x16c30
	.uleb128 0x39
	.long	LVL258
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL259
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_required\0"
	.byte	0x2
	.word	0x763
	.byte	0x1
	.long	LFB177
	.long	LFE177
	.secrel32	LLST35
	.byte	0x1
	.long	0x918f
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x763
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x763
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x765
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x765
	.long	0x4881
	.secrel32	LLST36
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x765
	.long	0x32fe
	.secrel32	LLST37
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x765
	.long	0x4881
	.secrel32	LLST38
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x765
	.long	0x32fe
	.secrel32	LLST39
	.uleb128 0x4a
	.long	LBB28
	.long	LBE28
	.long	0x9129
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x76b
	.long	0x8200
	.secrel32	LLST40
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x280
	.long	0x428
	.secrel32	LLST41
	.uleb128 0x39
	.long	LVL273
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL274
	.long	0x16d65
	.uleb128 0x39
	.long	LVL275
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL276
	.long	0x170ee
	.uleb128 0x3a
	.long	LVL281
	.long	0x16db6
	.long	0x90bb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL282
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL283
	.long	0x16de8
	.long	0x90d9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL285
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL286
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL287
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL288
	.long	0x16e7e
	.long	0x9116
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL291
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL292
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL261
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL262
	.long	0x16c46
	.uleb128 0x39
	.long	LVL264
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL265
	.long	0x16d07
	.uleb128 0x39
	.long	LVL267
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL268
	.long	0x16d65
	.uleb128 0x39
	.long	LVL296
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL297
	.long	0x89a7
	.long	0x9185
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x39
	.long	LVL298
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_integer\0"
	.byte	0x2
	.word	0x74e
	.byte	0x1
	.long	LFB176
	.long	LFE176
	.secrel32	LLST42
	.byte	0x1
	.long	0x9457
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x74e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x74e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x750
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x750
	.long	0x4881
	.secrel32	LLST43
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x750
	.long	0x32fe
	.secrel32	LLST44
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x750
	.long	0x4881
	.secrel32	LLST45
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x750
	.long	0x32fe
	.secrel32	LLST46
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x88
	.long	0x93b3
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x754
	.long	0x8200
	.secrel32	LLST47
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x756
	.long	0x27c
	.secrel32	LLST48
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x758
	.long	0xba
	.secrel32	LLST49
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x759
	.long	0x3c83
	.secrel32	LLST50
	.uleb128 0x39
	.long	LVL311
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL312
	.long	0x16d65
	.uleb128 0x39
	.long	LVL313
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL315
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL316
	.long	0x16d65
	.uleb128 0x39
	.long	LVL317
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL318
	.long	0x16d65
	.uleb128 0x39
	.long	LVL319
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL320
	.long	0x16f23
	.long	0x92e6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL322
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL323
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL324
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL325
	.long	0x17018
	.uleb128 0x39
	.long	LVL326
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL327
	.long	0x16ff1
	.uleb128 0x3a
	.long	LVL329
	.long	0x17126
	.long	0x9339
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL331
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL332
	.long	0x16d65
	.uleb128 0x39
	.long	LVL334
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL335
	.long	0x17162
	.long	0x9370
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL336
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL337
	.long	0x170a1
	.long	0x938e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL347
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL348
	.long	0x16d65
	.uleb128 0x39
	.long	LVL350
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL351
	.long	0x170c7
	.byte	0
	.uleb128 0x4a
	.long	LBB34
	.long	LBE34
	.long	0x93f5
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x75e
	.long	0x8ce1
	.secrel32	LLST51
	.uleb128 0x39
	.long	LVL339
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL340
	.long	0x16c46
	.uleb128 0x39
	.long	LVL342
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL343
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL300
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL301
	.long	0x16c46
	.uleb128 0x39
	.long	LVL303
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL304
	.long	0x16d07
	.uleb128 0x39
	.long	LVL306
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL307
	.long	0x16d65
	.uleb128 0x39
	.long	LVL353
	.long	0x16c30
	.uleb128 0x39
	.long	LVL354
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL355
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_groups\0"
	.byte	0x2
	.word	0x735
	.byte	0x1
	.long	LFB175
	.long	LFE175
	.secrel32	LLST52
	.byte	0x1
	.long	0x9637
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x735
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x735
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x737
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x737
	.long	0x4881
	.secrel32	LLST53
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x737
	.long	0x32fe
	.secrel32	LLST54
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x737
	.long	0x4881
	.secrel32	LLST55
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x737
	.long	0x32fe
	.secrel32	LLST56
	.uleb128 0x4a
	.long	LBB36
	.long	LBE36
	.long	0x95d1
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x73d
	.long	0x8200
	.secrel32	LLST57
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x271
	.long	0x428
	.secrel32	LLST58
	.uleb128 0x39
	.long	LVL369
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL370
	.long	0x16d65
	.uleb128 0x39
	.long	LVL371
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL372
	.long	0x1718b
	.uleb128 0x3a
	.long	LVL377
	.long	0x16db6
	.long	0x9563
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC7
	.byte	0
	.uleb128 0x39
	.long	LVL378
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL379
	.long	0x16de8
	.long	0x9581
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL381
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL382
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL383
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL384
	.long	0x16e7e
	.long	0x95be
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL387
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL388
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL357
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL358
	.long	0x16c46
	.uleb128 0x39
	.long	LVL360
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL361
	.long	0x16d07
	.uleb128 0x39
	.long	LVL363
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL364
	.long	0x16d65
	.uleb128 0x39
	.long	LVL392
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL393
	.long	0x89a7
	.long	0x962d
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x39
	.long	LVL394
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_field\0"
	.byte	0x2
	.word	0x720
	.byte	0x1
	.long	LFB174
	.long	LFE174
	.secrel32	LLST59
	.byte	0x1
	.long	0x98ad
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x720
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x720
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x722
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x722
	.long	0x4881
	.secrel32	LLST60
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x722
	.long	0x32fe
	.secrel32	LLST61
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x722
	.long	0x4881
	.secrel32	LLST62
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x722
	.long	0x32fe
	.secrel32	LLST63
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0xa0
	.long	0x9805
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x726
	.long	0x8200
	.secrel32	LLST64
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x728
	.long	0x27c
	.secrel32	LLST65
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x72a
	.long	0x81dc
	.secrel32	LLST66
	.uleb128 0x39
	.long	LVL407
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL408
	.long	0x16d65
	.uleb128 0x39
	.long	LVL410
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL412
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL413
	.long	0x16d65
	.uleb128 0x39
	.long	LVL415
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL416
	.long	0x16d65
	.uleb128 0x39
	.long	LVL417
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL418
	.long	0x16f23
	.long	0x977c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL419
	.long	0x171c1
	.long	0x9791
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL421
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL422
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL423
	.long	0x16db6
	.long	0x97c2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL424
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL425
	.long	0x16d65
	.uleb128 0x39
	.long	LVL426
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL427
	.long	0x16de8
	.long	0x97f2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL435
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL436
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB40
	.long	LBE40
	.long	0x9847
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x730
	.long	0x8ce1
	.secrel32	LLST67
	.uleb128 0x39
	.long	LVL428
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL429
	.long	0x16c46
	.uleb128 0x39
	.long	LVL430
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL431
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL396
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL397
	.long	0x16c46
	.uleb128 0x39
	.long	LVL399
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL400
	.long	0x16d07
	.uleb128 0x39
	.long	LVL402
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL403
	.long	0x16d65
	.uleb128 0x39
	.long	LVL438
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL439
	.long	0x89a7
	.long	0x98a3
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.uleb128 0x39
	.long	LVL440
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_choice\0"
	.byte	0x2
	.word	0x70b
	.byte	0x1
	.long	LFB173
	.long	LFE173
	.secrel32	LLST68
	.byte	0x1
	.long	0x9b74
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x70b
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x70b
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x70d
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x70d
	.long	0x4881
	.secrel32	LLST69
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x70d
	.long	0x32fe
	.secrel32	LLST70
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x70d
	.long	0x4881
	.secrel32	LLST71
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x70d
	.long	0x32fe
	.secrel32	LLST72
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0xb8
	.long	0x9ad0
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x711
	.long	0x8200
	.secrel32	LLST73
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x713
	.long	0x27c
	.secrel32	LLST74
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x715
	.long	0xba
	.secrel32	LLST75
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x716
	.long	0x3c83
	.secrel32	LLST76
	.uleb128 0x39
	.long	LVL453
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL454
	.long	0x16d65
	.uleb128 0x39
	.long	LVL455
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL457
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL458
	.long	0x16d65
	.uleb128 0x39
	.long	LVL459
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL460
	.long	0x16d65
	.uleb128 0x39
	.long	LVL461
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL462
	.long	0x16f23
	.long	0x9a03
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL464
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL465
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL466
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL467
	.long	0x17018
	.uleb128 0x39
	.long	LVL468
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL469
	.long	0x16ff1
	.uleb128 0x3a
	.long	LVL471
	.long	0x171fb
	.long	0x9a56
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL473
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL474
	.long	0x16d65
	.uleb128 0x39
	.long	LVL476
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL477
	.long	0x17162
	.long	0x9a8d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL478
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL479
	.long	0x170a1
	.long	0x9aab
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL489
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL490
	.long	0x16d65
	.uleb128 0x39
	.long	LVL492
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL493
	.long	0x170c7
	.byte	0
	.uleb128 0x4a
	.long	LBB45
	.long	LBE45
	.long	0x9b12
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x71b
	.long	0x8ce1
	.secrel32	LLST77
	.uleb128 0x39
	.long	LVL481
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL482
	.long	0x16c46
	.uleb128 0x39
	.long	LVL484
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL485
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL442
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL443
	.long	0x16c46
	.uleb128 0x39
	.long	LVL445
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL446
	.long	0x16d07
	.uleb128 0x39
	.long	LVL448
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL449
	.long	0x16d65
	.uleb128 0x39
	.long	LVL495
	.long	0x16c30
	.uleb128 0x39
	.long	LVL496
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL497
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_bool\0"
	.byte	0x2
	.word	0x6f7
	.byte	0x1
	.long	LFB172
	.long	LFE172
	.secrel32	LLST78
	.byte	0x1
	.long	0x9dba
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x6f7
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x6f7
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x6f9
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x6f9
	.long	0x4881
	.secrel32	LLST79
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x6f9
	.long	0x32fe
	.secrel32	LLST80
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x6f9
	.long	0x4881
	.secrel32	LLST81
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x6f9
	.long	0x32fe
	.secrel32	LLST82
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0xd0
	.long	0x9d16
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6fd
	.long	0x8200
	.secrel32	LLST83
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x6ff
	.long	0x27c
	.secrel32	LLST84
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x701
	.long	0x2ad
	.secrel32	LLST85
	.uleb128 0x39
	.long	LVL510
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL511
	.long	0x16d65
	.uleb128 0x39
	.long	LVL513
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL515
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL516
	.long	0x16d65
	.uleb128 0x39
	.long	LVL518
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL519
	.long	0x16d65
	.uleb128 0x39
	.long	LVL520
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL521
	.long	0x16f23
	.long	0x9cb8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL522
	.long	0x17236
	.long	0x9ccd
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL524
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL525
	.long	0x16d65
	.uleb128 0x39
	.long	LVL526
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL527
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL536
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL537
	.long	0x16d65
	.uleb128 0x39
	.long	LVL539
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL540
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB48
	.long	LBE48
	.long	0x9d58
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x706
	.long	0x8ce1
	.secrel32	LLST86
	.uleb128 0x39
	.long	LVL529
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL530
	.long	0x16c46
	.uleb128 0x39
	.long	LVL531
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL532
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL499
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL500
	.long	0x16c46
	.uleb128 0x39
	.long	LVL502
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL503
	.long	0x16d07
	.uleb128 0x39
	.long	LVL505
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL506
	.long	0x16d65
	.uleb128 0x39
	.long	LVL542
	.long	0x16c30
	.uleb128 0x39
	.long	LVL543
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL544
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_get_account\0"
	.byte	0x2
	.word	0x6e2
	.byte	0x1
	.long	LFB171
	.long	LFE171
	.secrel32	LLST87
	.byte	0x1
	.long	0xa032
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x6e2
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x6e2
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x6e4
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x6e4
	.long	0x4881
	.secrel32	LLST88
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x6e4
	.long	0x32fe
	.secrel32	LLST89
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x6e4
	.long	0x4881
	.secrel32	LLST90
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x6e4
	.long	0x32fe
	.secrel32	LLST91
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0xe8
	.long	0x9f8a
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6e8
	.long	0x8200
	.secrel32	LLST92
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x6ea
	.long	0x27c
	.secrel32	LLST93
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x6ec
	.long	0x81af
	.secrel32	LLST94
	.uleb128 0x39
	.long	LVL557
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL558
	.long	0x16d65
	.uleb128 0x39
	.long	LVL560
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL562
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL563
	.long	0x16d65
	.uleb128 0x39
	.long	LVL565
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL566
	.long	0x16d65
	.uleb128 0x39
	.long	LVL567
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL568
	.long	0x16f23
	.long	0x9f01
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL569
	.long	0x1726f
	.long	0x9f16
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL571
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL572
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL573
	.long	0x16db6
	.long	0x9f47
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC8
	.byte	0
	.uleb128 0x39
	.long	LVL574
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL575
	.long	0x16d65
	.uleb128 0x39
	.long	LVL576
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL577
	.long	0x16de8
	.long	0x9f77
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL585
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL586
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB51
	.long	LBE51
	.long	0x9fcc
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x6f2
	.long	0x8ce1
	.secrel32	LLST95
	.uleb128 0x39
	.long	LVL578
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL579
	.long	0x16c46
	.uleb128 0x39
	.long	LVL580
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL581
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL546
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL547
	.long	0x16c46
	.uleb128 0x39
	.long	LVL549
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL550
	.long	0x16d07
	.uleb128 0x39
	.long	LVL552
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL553
	.long	0x16d65
	.uleb128 0x39
	.long	LVL588
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL589
	.long	0x89a7
	.long	0xa028
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.uleb128 0x39
	.long	LVL590
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_exists\0"
	.byte	0x2
	.word	0x6ce
	.byte	0x1
	.long	LFB170
	.long	LFE170
	.secrel32	LLST96
	.byte	0x1
	.long	0xa276
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x6ce
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x6ce
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x6d0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x6d0
	.long	0x4881
	.secrel32	LLST97
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x6d0
	.long	0x32fe
	.secrel32	LLST98
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x6d0
	.long	0x4881
	.secrel32	LLST99
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x6d0
	.long	0x32fe
	.secrel32	LLST100
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x100
	.long	0xa1d2
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6d4
	.long	0x8200
	.secrel32	LLST101
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x6d6
	.long	0x27c
	.secrel32	LLST102
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x6d8
	.long	0x2ad
	.secrel32	LLST103
	.uleb128 0x39
	.long	LVL603
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL604
	.long	0x16d65
	.uleb128 0x39
	.long	LVL606
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL608
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL609
	.long	0x16d65
	.uleb128 0x39
	.long	LVL611
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL612
	.long	0x16d65
	.uleb128 0x39
	.long	LVL613
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL614
	.long	0x16f23
	.long	0xa174
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL615
	.long	0x172ab
	.long	0xa189
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL617
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL618
	.long	0x16d65
	.uleb128 0x39
	.long	LVL619
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL620
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL629
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL630
	.long	0x16d65
	.uleb128 0x39
	.long	LVL632
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL633
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB54
	.long	LBE54
	.long	0xa214
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x6dd
	.long	0x8ce1
	.secrel32	LLST104
	.uleb128 0x39
	.long	LVL622
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL623
	.long	0x16c46
	.uleb128 0x39
	.long	LVL624
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL625
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL592
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL593
	.long	0x16c46
	.uleb128 0x39
	.long	LVL595
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL596
	.long	0x16d07
	.uleb128 0x39
	.long	LVL598
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL599
	.long	0x16d65
	.uleb128 0x39
	.long	LVL635
	.long	0x16c30
	.uleb128 0x39
	.long	LVL636
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL637
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_destroy\0"
	.byte	0x2
	.word	0x6be
	.byte	0x1
	.long	LFB169
	.long	LFE169
	.secrel32	LLST105
	.byte	0x1
	.long	0xa402
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x6be
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x6be
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x6c0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x6c0
	.long	0x4881
	.secrel32	LLST106
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x6c0
	.long	0x32fe
	.secrel32	LLST107
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x6c0
	.long	0x4881
	.secrel32	LLST108
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x6c0
	.long	0x32fe
	.secrel32	LLST109
	.uleb128 0x4a
	.long	LBB56
	.long	LBE56
	.long	0xa35a
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6c4
	.long	0x8200
	.secrel32	LLST110
	.uleb128 0x39
	.long	LVL651
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL652
	.long	0x16d65
	.uleb128 0x39
	.long	LVL653
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL654
	.long	0x172e2
	.byte	0
	.uleb128 0x4a
	.long	LBB57
	.long	LBE57
	.long	0xa39c
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x6c9
	.long	0x8ce1
	.secrel32	LLST111
	.uleb128 0x39
	.long	LVL655
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL656
	.long	0x16c46
	.uleb128 0x39
	.long	LVL657
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL658
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL639
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL640
	.long	0x16c46
	.uleb128 0x39
	.long	LVL642
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL643
	.long	0x16d07
	.uleb128 0x39
	.long	LVL645
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL646
	.long	0x16d65
	.uleb128 0x39
	.long	LVL662
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL663
	.long	0x89a7
	.long	0xa3f8
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x39
	.long	LVL664
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_all_required_filled\0"
	.byte	0x2
	.word	0x6ac
	.byte	0x1
	.long	LFB168
	.long	LFE168
	.secrel32	LLST112
	.byte	0x1
	.long	0xa5dc
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x6ac
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x6ac
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x6ae
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x6ae
	.long	0x4881
	.secrel32	LLST113
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x6ae
	.long	0x32fe
	.secrel32	LLST114
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x6ae
	.long	0x4881
	.secrel32	LLST115
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x6ae
	.long	0x32fe
	.secrel32	LLST116
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x118
	.long	0xa534
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6b2
	.long	0x8200
	.secrel32	LLST117
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x6b4
	.long	0x2ad
	.secrel32	LLST118
	.uleb128 0x39
	.long	LVL677
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL678
	.long	0x16d65
	.uleb128 0x39
	.long	LVL680
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL681
	.long	0x17311
	.uleb128 0x39
	.long	LVL683
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL684
	.long	0x16d65
	.uleb128 0x39
	.long	LVL686
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL687
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL696
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL697
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB59
	.long	LBE59
	.long	0xa576
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x6b9
	.long	0x8ce1
	.secrel32	LLST119
	.uleb128 0x39
	.long	LVL689
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL690
	.long	0x16c46
	.uleb128 0x39
	.long	LVL691
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL692
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL666
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL667
	.long	0x16c46
	.uleb128 0x39
	.long	LVL669
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL670
	.long	0x16d07
	.uleb128 0x39
	.long	LVL672
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL673
	.long	0x16d65
	.uleb128 0x39
	.long	LVL699
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL700
	.long	0x89a7
	.long	0xa5d2
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x39
	.long	LVL701
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_add_group\0"
	.byte	0x2
	.word	0x69a
	.byte	0x1
	.long	LFB167
	.long	LFE167
	.secrel32	LLST120
	.byte	0x1
	.long	0xa79e
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x69a
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x69a
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x69c
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x69c
	.long	0x4881
	.secrel32	LLST121
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x69c
	.long	0x32fe
	.secrel32	LLST122
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x69c
	.long	0x4881
	.secrel32	LLST123
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x69c
	.long	0x32fe
	.secrel32	LLST124
	.uleb128 0x4a
	.long	LBB61
	.long	LBE61
	.long	0xa6f5
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x6a0
	.long	0x8200
	.secrel32	LLST125
	.uleb128 0x49
	.secrel32	LASF70
	.byte	0x2
	.word	0x6a2
	.long	0x821f
	.secrel32	LLST126
	.uleb128 0x39
	.long	LVL714
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL715
	.long	0x16d65
	.uleb128 0x39
	.long	LVL716
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL718
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL719
	.long	0x16d65
	.uleb128 0x39
	.long	LVL720
	.long	0x16ef8
	.uleb128 0x3c
	.long	LVL721
	.long	0x17350
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB62
	.long	LBE62
	.long	0xa737
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x6a7
	.long	0x8ce1
	.secrel32	LLST127
	.uleb128 0x39
	.long	LVL722
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL723
	.long	0x16c46
	.uleb128 0x39
	.long	LVL725
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL726
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL703
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL704
	.long	0x16c46
	.uleb128 0x39
	.long	LVL706
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL707
	.long	0x16d07
	.uleb128 0x39
	.long	LVL709
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL710
	.long	0x16d65
	.uleb128 0x39
	.long	LVL730
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL731
	.long	0x89a7
	.long	0xa794
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC9
	.byte	0
	.uleb128 0x39
	.long	LVL732
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Fields_new\0"
	.byte	0x2
	.word	0x689
	.byte	0x1
	.long	LFB166
	.long	LFE166
	.secrel32	LLST128
	.byte	0x1
	.long	0xa968
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x689
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x689
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x68b
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x68b
	.long	0x4881
	.secrel32	LLST129
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x68b
	.long	0x32fe
	.secrel32	LLST130
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x68b
	.long	0x4881
	.secrel32	LLST131
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x68b
	.long	0x32fe
	.secrel32	LLST132
	.uleb128 0x4a
	.long	LBB63
	.long	LBE63
	.long	0xa8c0
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x68f
	.long	0x8200
	.secrel32	LLST133
	.uleb128 0x39
	.long	LVL745
	.long	0x17386
	.uleb128 0x39
	.long	LVL747
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL748
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL751
	.long	0x16db6
	.long	0xa893
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x39
	.long	LVL752
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL753
	.long	0x16d65
	.uleb128 0x39
	.long	LVL754
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL755
	.long	0x16de8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB64
	.long	LBE64
	.long	0xa902
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x695
	.long	0x8ce1
	.secrel32	LLST134
	.uleb128 0x39
	.long	LVL756
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL757
	.long	0x16c46
	.uleb128 0x39
	.long	LVL758
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL759
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL734
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL735
	.long	0x16c46
	.uleb128 0x39
	.long	LVL737
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL738
	.long	0x16d07
	.uleb128 0x39
	.long	LVL740
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL741
	.long	0x16d65
	.uleb128 0x39
	.long	LVL763
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL764
	.long	0x89a7
	.long	0xa95e
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC10
	.byte	0
	.uleb128 0x39
	.long	LVL765
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_is_visible\0"
	.byte	0x2
	.word	0x677
	.byte	0x1
	.long	LFB165
	.long	LFE165
	.secrel32	LLST135
	.byte	0x1
	.long	0xab38
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x677
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x677
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x679
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x679
	.long	0x4881
	.secrel32	LLST136
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x679
	.long	0x32fe
	.secrel32	LLST137
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x679
	.long	0x4881
	.secrel32	LLST138
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x679
	.long	0x32fe
	.secrel32	LLST139
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x130
	.long	0xaa90
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x67d
	.long	0x81dc
	.secrel32	LLST140
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x67f
	.long	0x2ad
	.secrel32	LLST141
	.uleb128 0x39
	.long	LVL778
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL779
	.long	0x16d65
	.uleb128 0x39
	.long	LVL781
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL782
	.long	0x173ab
	.uleb128 0x39
	.long	LVL784
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL785
	.long	0x16d65
	.uleb128 0x39
	.long	LVL787
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL788
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL797
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL798
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB66
	.long	LBE66
	.long	0xaad2
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x684
	.long	0x8ce1
	.secrel32	LLST142
	.uleb128 0x39
	.long	LVL790
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL791
	.long	0x16c46
	.uleb128 0x39
	.long	LVL792
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL793
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL767
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL768
	.long	0x16c46
	.uleb128 0x39
	.long	LVL770
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL771
	.long	0x16d07
	.uleb128 0x39
	.long	LVL773
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL774
	.long	0x16d65
	.uleb128 0x39
	.long	LVL800
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL801
	.long	0x89a7
	.long	0xab2e
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL802
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_get_type_hint\0"
	.byte	0x2
	.word	0x664
	.byte	0x1
	.long	LFB164
	.long	LFE164
	.secrel32	LLST143
	.byte	0x1
	.long	0xad8a
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x664
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x664
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x666
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x666
	.long	0x4881
	.secrel32	LLST144
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x666
	.long	0x32fe
	.secrel32	LLST145
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x666
	.long	0x4881
	.secrel32	LLST146
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x666
	.long	0x32fe
	.secrel32	LLST147
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x148
	.long	0xace6
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x66a
	.long	0x81dc
	.secrel32	LLST148
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x66c
	.long	0x27c
	.secrel32	LLST149
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x66d
	.long	0x3c83
	.secrel32	LLST150
	.uleb128 0x39
	.long	LVL815
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL816
	.long	0x16d65
	.uleb128 0x39
	.long	LVL817
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL819
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL820
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL821
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL822
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL824
	.long	0x173eb
	.long	0xac6c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL826
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL827
	.long	0x17078
	.long	0xac91
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL828
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL829
	.long	0x16d65
	.uleb128 0x39
	.long	LVL831
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL832
	.long	0x170a1
	.long	0xacc1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL842
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL843
	.long	0x17018
	.uleb128 0x39
	.long	LVL844
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL845
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB70
	.long	LBE70
	.long	0xad28
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x672
	.long	0x8ce1
	.secrel32	LLST151
	.uleb128 0x39
	.long	LVL834
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL835
	.long	0x16c46
	.uleb128 0x39
	.long	LVL837
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL838
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL804
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL805
	.long	0x16c46
	.uleb128 0x39
	.long	LVL807
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL808
	.long	0x16d07
	.uleb128 0x39
	.long	LVL810
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL811
	.long	0x16d65
	.uleb128 0x39
	.long	LVL847
	.long	0x16c30
	.uleb128 0x39
	.long	LVL848
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL849
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_get_type\0"
	.byte	0x2
	.word	0x651
	.byte	0x1
	.long	LFB163
	.long	LFE163
	.secrel32	LLST152
	.byte	0x1
	.long	0xafd7
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x651
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x651
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x653
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x653
	.long	0x4881
	.secrel32	LLST153
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x653
	.long	0x32fe
	.secrel32	LLST154
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x653
	.long	0x4881
	.secrel32	LLST155
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x653
	.long	0x32fe
	.secrel32	LLST156
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x160
	.long	0xaf33
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x657
	.long	0x81dc
	.secrel32	LLST157
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x659
	.long	0x8244
	.secrel32	LLST158
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x65a
	.long	0x3c83
	.secrel32	LLST159
	.uleb128 0x39
	.long	LVL862
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL863
	.long	0x16d65
	.uleb128 0x39
	.long	LVL864
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL866
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL867
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL868
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL869
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL871
	.long	0x17423
	.long	0xaeb9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL873
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL874
	.long	0x16d65
	.uleb128 0x39
	.long	LVL876
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL877
	.long	0x17162
	.long	0xaef0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL878
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL879
	.long	0x170a1
	.long	0xaf0e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL889
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL890
	.long	0x17018
	.uleb128 0x39
	.long	LVL891
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL892
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB75
	.long	LBE75
	.long	0xaf75
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x65f
	.long	0x8ce1
	.secrel32	LLST160
	.uleb128 0x39
	.long	LVL881
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL882
	.long	0x16c46
	.uleb128 0x39
	.long	LVL884
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL885
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL851
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL852
	.long	0x16c46
	.uleb128 0x39
	.long	LVL854
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL855
	.long	0x16d07
	.uleb128 0x39
	.long	LVL857
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL858
	.long	0x16d65
	.uleb128 0x39
	.long	LVL894
	.long	0x16c30
	.uleb128 0x39
	.long	LVL895
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL896
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_get_label\0"
	.byte	0x2
	.word	0x63e
	.byte	0x1
	.long	LFB162
	.long	LFE162
	.secrel32	LLST161
	.byte	0x1
	.long	0xb225
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x63e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x63e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x640
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x640
	.long	0x4881
	.secrel32	LLST162
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x640
	.long	0x32fe
	.secrel32	LLST163
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x640
	.long	0x4881
	.secrel32	LLST164
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x640
	.long	0x32fe
	.secrel32	LLST165
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x178
	.long	0xb181
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x644
	.long	0x81dc
	.secrel32	LLST166
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x646
	.long	0x27c
	.secrel32	LLST167
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x647
	.long	0x3c83
	.secrel32	LLST168
	.uleb128 0x39
	.long	LVL909
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL910
	.long	0x16d65
	.uleb128 0x39
	.long	LVL911
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL913
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL914
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL915
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL916
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL918
	.long	0x17456
	.long	0xb107
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL920
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL921
	.long	0x17078
	.long	0xb12c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL922
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL923
	.long	0x16d65
	.uleb128 0x39
	.long	LVL925
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL926
	.long	0x170a1
	.long	0xb15c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL936
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL937
	.long	0x17018
	.uleb128 0x39
	.long	LVL938
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL939
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB79
	.long	LBE79
	.long	0xb1c3
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x64c
	.long	0x8ce1
	.secrel32	LLST169
	.uleb128 0x39
	.long	LVL928
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL929
	.long	0x16c46
	.uleb128 0x39
	.long	LVL931
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL932
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL898
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL899
	.long	0x16c46
	.uleb128 0x39
	.long	LVL901
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL902
	.long	0x16d07
	.uleb128 0x39
	.long	LVL904
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL905
	.long	0x16d65
	.uleb128 0x39
	.long	LVL941
	.long	0x16c30
	.uleb128 0x39
	.long	LVL942
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL943
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_get_id\0"
	.byte	0x2
	.word	0x62b
	.byte	0x1
	.long	LFB161
	.long	LFE161
	.secrel32	LLST170
	.byte	0x1
	.long	0xb470
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x62b
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x62b
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x62d
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x62d
	.long	0x4881
	.secrel32	LLST171
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x62d
	.long	0x32fe
	.secrel32	LLST172
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x62d
	.long	0x4881
	.secrel32	LLST173
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x62d
	.long	0x32fe
	.secrel32	LLST174
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x190
	.long	0xb3cc
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x631
	.long	0x81dc
	.secrel32	LLST175
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x633
	.long	0x27c
	.secrel32	LLST176
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x634
	.long	0x3c83
	.secrel32	LLST177
	.uleb128 0x39
	.long	LVL956
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL957
	.long	0x16d65
	.uleb128 0x39
	.long	LVL958
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL960
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL961
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL962
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL963
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL965
	.long	0x1748a
	.long	0xb352
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL967
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL968
	.long	0x17078
	.long	0xb377
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL969
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL970
	.long	0x16d65
	.uleb128 0x39
	.long	LVL972
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL973
	.long	0x170a1
	.long	0xb3a7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL983
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL984
	.long	0x17018
	.uleb128 0x39
	.long	LVL985
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL986
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB83
	.long	LBE83
	.long	0xb40e
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x639
	.long	0x8ce1
	.secrel32	LLST178
	.uleb128 0x39
	.long	LVL975
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL976
	.long	0x16c46
	.uleb128 0x39
	.long	LVL978
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL979
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL945
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL946
	.long	0x16c46
	.uleb128 0x39
	.long	LVL948
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL949
	.long	0x16d07
	.uleb128 0x39
	.long	LVL951
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL952
	.long	0x16d65
	.uleb128 0x39
	.long	LVL988
	.long	0x16c30
	.uleb128 0x39
	.long	LVL989
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL990
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_destroy\0"
	.byte	0x2
	.word	0x61b
	.byte	0x1
	.long	LFB160
	.long	LFE160
	.secrel32	LLST179
	.byte	0x1
	.long	0xb5fb
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x61b
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x61b
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x61d
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x61d
	.long	0x4881
	.secrel32	LLST180
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x61d
	.long	0x32fe
	.secrel32	LLST181
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x61d
	.long	0x4881
	.secrel32	LLST182
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x61d
	.long	0x32fe
	.secrel32	LLST183
	.uleb128 0x4a
	.long	LBB85
	.long	LBE85
	.long	0xb553
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x621
	.long	0x81dc
	.secrel32	LLST184
	.uleb128 0x39
	.long	LVL1004
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1005
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1006
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1007
	.long	0x174bb
	.byte	0
	.uleb128 0x4a
	.long	LBB86
	.long	LBE86
	.long	0xb595
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x626
	.long	0x8ce1
	.secrel32	LLST185
	.uleb128 0x39
	.long	LVL1008
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1009
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1010
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1011
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL992
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL993
	.long	0x16c46
	.uleb128 0x39
	.long	LVL995
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL996
	.long	0x16d07
	.uleb128 0x39
	.long	LVL998
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL999
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1015
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1016
	.long	0x89a7
	.long	0xb5f1
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL1017
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field__Group_new\0"
	.byte	0x2
	.word	0x608
	.byte	0x1
	.long	LFB159
	.long	LFE159
	.secrel32	LLST186
	.byte	0x1
	.long	0xb83b
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x608
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x608
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x60a
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x60a
	.long	0x4881
	.secrel32	LLST187
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x60a
	.long	0x32fe
	.secrel32	LLST188
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x60a
	.long	0x4881
	.secrel32	LLST189
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x60a
	.long	0x32fe
	.secrel32	LLST190
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x1a8
	.long	0xb793
	.uleb128 0x49
	.secrel32	LASF69
	.byte	0x2
	.word	0x60e
	.long	0x27c
	.secrel32	LLST191
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x610
	.long	0x821f
	.secrel32	LLST192
	.uleb128 0x39
	.long	LVL1030
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1031
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1032
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1033
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1034
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1035
	.long	0x16f23
	.long	0xb716
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1036
	.long	0x174e9
	.uleb128 0x39
	.long	LVL1038
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1039
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1041
	.long	0x16db6
	.long	0xb750
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC7
	.byte	0
	.uleb128 0x39
	.long	LVL1042
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1043
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1044
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1045
	.long	0x16de8
	.long	0xb780
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1053
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1054
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB88
	.long	LBE88
	.long	0xb7d5
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x616
	.long	0x8ce1
	.secrel32	LLST193
	.uleb128 0x39
	.long	LVL1046
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1047
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1048
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1049
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1019
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1020
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1022
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1023
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1025
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1026
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1055
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1056
	.long	0x89a7
	.long	0xb831
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC12
	.byte	0
	.uleb128 0x39
	.long	LVL1057
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field__Group_get_title\0"
	.byte	0x2
	.word	0x5f5
	.byte	0x1
	.long	LFB158
	.long	LFE158
	.secrel32	LLST194
	.byte	0x1
	.long	0xba90
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x5f5
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x5f5
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x5f7
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x5f7
	.long	0x4881
	.secrel32	LLST195
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x5f7
	.long	0x32fe
	.secrel32	LLST196
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x5f7
	.long	0x4881
	.secrel32	LLST197
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x5f7
	.long	0x32fe
	.secrel32	LLST198
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x1c0
	.long	0xb9ec
	.uleb128 0x49
	.secrel32	LASF70
	.byte	0x2
	.word	0x5fb
	.long	0x821f
	.secrel32	LLST199
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x5fd
	.long	0x27c
	.secrel32	LLST200
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x5fe
	.long	0x3c83
	.secrel32	LLST201
	.uleb128 0x39
	.long	LVL1070
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1071
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1072
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1074
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1075
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL1076
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1077
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL1079
	.long	0x1751d
	.long	0xb972
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1081
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1082
	.long	0x17078
	.long	0xb997
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1083
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1084
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1086
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1087
	.long	0x170a1
	.long	0xb9c7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1097
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1098
	.long	0x17018
	.uleb128 0x39
	.long	LVL1099
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1100
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB92
	.long	LBE92
	.long	0xba2e
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x603
	.long	0x8ce1
	.secrel32	LLST202
	.uleb128 0x39
	.long	LVL1089
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1090
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1092
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1093
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1059
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1060
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1062
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1063
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1065
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1066
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1102
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1103
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1104
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC13
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field__Group_get_fields\0"
	.byte	0x2
	.word	0x5dc
	.byte	0x1
	.long	LFB157
	.long	LFE157
	.secrel32	LLST203
	.byte	0x1
	.long	0xbc76
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x5dc
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x5dc
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x5de
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x5de
	.long	0x4881
	.secrel32	LLST204
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x5de
	.long	0x32fe
	.secrel32	LLST205
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x5de
	.long	0x4881
	.secrel32	LLST206
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x5de
	.long	0x32fe
	.secrel32	LLST207
	.uleb128 0x4a
	.long	LBB94
	.long	LBE94
	.long	0xbc10
	.uleb128 0x49
	.secrel32	LASF70
	.byte	0x2
	.word	0x5e4
	.long	0x821f
	.secrel32	LLST208
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x216
	.long	0x428
	.secrel32	LLST209
	.uleb128 0x39
	.long	LVL1118
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1119
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1120
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1121
	.long	0x17562
	.uleb128 0x3a
	.long	LVL1126
	.long	0x16db6
	.long	0xbba2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL1127
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1128
	.long	0x16de8
	.long	0xbbc0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1130
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1131
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL1132
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1133
	.long	0x16e7e
	.long	0xbbfd
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL1136
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1137
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL1106
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1107
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1109
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1110
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1112
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1113
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1141
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1142
	.long	0x89a7
	.long	0xbc6c
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC13
	.byte	0
	.uleb128 0x39
	.long	LVL1143
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field__Group_destroy\0"
	.byte	0x2
	.word	0x5cc
	.byte	0x1
	.long	LFB156
	.long	LFE156
	.secrel32	LLST210
	.byte	0x1
	.long	0xbe08
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x5cc
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x5cc
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x5ce
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x5ce
	.long	0x4881
	.secrel32	LLST211
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x5ce
	.long	0x32fe
	.secrel32	LLST212
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x5ce
	.long	0x4881
	.secrel32	LLST213
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x5ce
	.long	0x32fe
	.secrel32	LLST214
	.uleb128 0x4a
	.long	LBB97
	.long	LBE97
	.long	0xbd60
	.uleb128 0x49
	.secrel32	LASF70
	.byte	0x2
	.word	0x5d2
	.long	0x821f
	.secrel32	LLST215
	.uleb128 0x39
	.long	LVL1157
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1158
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1159
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1160
	.long	0x1759d
	.byte	0
	.uleb128 0x4a
	.long	LBB98
	.long	LBE98
	.long	0xbda2
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x5d7
	.long	0x8ce1
	.secrel32	LLST216
	.uleb128 0x39
	.long	LVL1161
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1162
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1163
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1164
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1145
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1146
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1148
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1149
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1151
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1152
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1168
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1169
	.long	0x89a7
	.long	0xbdfe
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC13
	.byte	0
	.uleb128 0x39
	.long	LVL1170
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field__Group_add_field\0"
	.byte	0x2
	.word	0x5ba
	.byte	0x1
	.long	LFB155
	.long	LFE155
	.secrel32	LLST217
	.byte	0x1
	.long	0xbfd0
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x5ba
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x5ba
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x5bc
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x5bc
	.long	0x4881
	.secrel32	LLST218
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x5bc
	.long	0x32fe
	.secrel32	LLST219
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x5bc
	.long	0x4881
	.secrel32	LLST220
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x5bc
	.long	0x32fe
	.secrel32	LLST221
	.uleb128 0x4a
	.long	LBB99
	.long	LBE99
	.long	0xbf27
	.uleb128 0x49
	.secrel32	LASF70
	.byte	0x2
	.word	0x5c0
	.long	0x821f
	.secrel32	LLST222
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x5c2
	.long	0x81dc
	.secrel32	LLST223
	.uleb128 0x39
	.long	LVL1183
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1184
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1185
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1187
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1188
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1189
	.long	0x16ef8
	.uleb128 0x3c
	.long	LVL1190
	.long	0x175d1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB100
	.long	LBE100
	.long	0xbf69
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x5c7
	.long	0x8ce1
	.secrel32	LLST224
	.uleb128 0x39
	.long	LVL1191
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1192
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1194
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1195
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1172
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1173
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1175
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1176
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1178
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1179
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1199
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1200
	.long	0x89a7
	.long	0xbfc6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC14
	.byte	0
	.uleb128 0x39
	.long	LVL1201
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_set_value\0"
	.byte	0x2
	.word	0x5a8
	.byte	0x1
	.long	LFB154
	.long	LFE154
	.secrel32	LLST225
	.byte	0x1
	.long	0xc1dc
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x5a8
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x5a8
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x5aa
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x5aa
	.long	0x4881
	.secrel32	LLST226
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x5aa
	.long	0x32fe
	.secrel32	LLST227
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x5aa
	.long	0x4881
	.secrel32	LLST228
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x5aa
	.long	0x32fe
	.secrel32	LLST229
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x1d8
	.long	0xc134
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x5ae
	.long	0x81dc
	.secrel32	LLST230
	.uleb128 0x49
	.secrel32	LASF78
	.byte	0x2
	.word	0x5b0
	.long	0x27c
	.secrel32	LLST231
	.uleb128 0x39
	.long	LVL1214
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1215
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1216
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1218
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1219
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1220
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1221
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1222
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1223
	.long	0x16f23
	.long	0xc10c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1224
	.long	0x1760c
	.long	0xc121
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1233
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1234
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB102
	.long	LBE102
	.long	0xc176
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x5b5
	.long	0x8ce1
	.secrel32	LLST232
	.uleb128 0x39
	.long	LVL1225
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1226
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1227
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1228
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1203
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1204
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1206
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1207
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1209
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1210
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1236
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1237
	.long	0x89a7
	.long	0xc1d2
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC15
	.byte	0
	.uleb128 0x39
	.long	LVL1238
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_set_masked\0"
	.byte	0x2
	.word	0x596
	.byte	0x1
	.long	LFB153
	.long	LFE153
	.secrel32	LLST233
	.byte	0x1
	.long	0xc45b
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x596
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x596
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x598
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x598
	.long	0x4881
	.secrel32	LLST234
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x598
	.long	0x32fe
	.secrel32	LLST235
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x598
	.long	0x4881
	.secrel32	LLST236
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x598
	.long	0x32fe
	.secrel32	LLST237
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x1f0
	.long	0xc3b7
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x59c
	.long	0x81dc
	.secrel32	LLST238
	.uleb128 0x49
	.secrel32	LASF75
	.byte	0x2
	.word	0x59e
	.long	0x2ad
	.secrel32	LLST239
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x208
	.long	0xc2ee
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x59e
	.long	0x61b3
	.secrel32	LLST240
	.uleb128 0x39
	.long	LVL1259
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1260
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1285
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1286
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1251
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1252
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1253
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1255
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1256
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1257
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1258
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1264
	.long	0x17648
	.long	0xc342
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1273
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1274
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1275
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1276
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1277
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1278
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1279
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1280
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1281
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1282
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1283
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1284
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB108
	.long	LBE108
	.long	0xc3f9
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x5a3
	.long	0x8ce1
	.secrel32	LLST241
	.uleb128 0x39
	.long	LVL1265
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1266
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1267
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1268
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1240
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1241
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1243
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1244
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1246
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1247
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1288
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1289
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1290
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC16
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_set_editable\0"
	.byte	0x2
	.word	0x584
	.byte	0x1
	.long	LFB152
	.long	LFE152
	.secrel32	LLST242
	.byte	0x1
	.long	0xc6dc
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x584
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x584
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x586
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x586
	.long	0x4881
	.secrel32	LLST243
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x586
	.long	0x32fe
	.secrel32	LLST244
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x586
	.long	0x4881
	.secrel32	LLST245
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x586
	.long	0x32fe
	.secrel32	LLST246
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x228
	.long	0xc638
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x58a
	.long	0x81dc
	.secrel32	LLST247
	.uleb128 0x49
	.secrel32	LASF76
	.byte	0x2
	.word	0x58c
	.long	0x2ad
	.secrel32	LLST248
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x240
	.long	0xc56f
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x58c
	.long	0x61b3
	.secrel32	LLST249
	.uleb128 0x39
	.long	LVL1312
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1313
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1337
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1338
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1303
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1304
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1305
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1307
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1308
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1310
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1311
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1317
	.long	0x176ad
	.long	0xc5c3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1325
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1326
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1327
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1328
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1329
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1330
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1331
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1332
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1333
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1334
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1335
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1336
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB114
	.long	LBE114
	.long	0xc67a
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x591
	.long	0x8ce1
	.secrel32	LLST250
	.uleb128 0x39
	.long	LVL1318
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1319
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1320
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1321
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1292
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1293
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1295
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1296
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1298
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1299
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1340
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1341
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1342
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC19
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_set_default_value\0"
	.byte	0x2
	.word	0x572
	.byte	0x1
	.long	LFB151
	.long	LFE151
	.secrel32	LLST251
	.byte	0x1
	.long	0xc8f0
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x572
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x572
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x574
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x574
	.long	0x4881
	.secrel32	LLST252
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x574
	.long	0x32fe
	.secrel32	LLST253
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x574
	.long	0x4881
	.secrel32	LLST254
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x574
	.long	0x32fe
	.secrel32	LLST255
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x260
	.long	0xc848
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x578
	.long	0x81dc
	.secrel32	LLST256
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x57a
	.long	0x27c
	.secrel32	LLST257
	.uleb128 0x39
	.long	LVL1355
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1356
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1357
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1359
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1360
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1361
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1362
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1363
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1364
	.long	0x16f23
	.long	0xc820
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1365
	.long	0x176ec
	.long	0xc835
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1374
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1375
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB117
	.long	LBE117
	.long	0xc88a
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x57f
	.long	0x8ce1
	.secrel32	LLST258
	.uleb128 0x39
	.long	LVL1366
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1367
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1368
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1369
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1344
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1345
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1347
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1348
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1350
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1351
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1377
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1378
	.long	0x89a7
	.long	0xc8e6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x39
	.long	LVL1379
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_is_multiline\0"
	.byte	0x2
	.word	0x560
	.byte	0x1
	.long	LFB150
	.long	LFE150
	.secrel32	LLST259
	.byte	0x1
	.long	0xcac9
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x560
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x560
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x562
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x562
	.long	0x4881
	.secrel32	LLST260
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x562
	.long	0x32fe
	.secrel32	LLST261
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x562
	.long	0x4881
	.secrel32	LLST262
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x562
	.long	0x32fe
	.secrel32	LLST263
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x278
	.long	0xca21
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x566
	.long	0x81dc
	.secrel32	LLST264
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x568
	.long	0x2ad
	.secrel32	LLST265
	.uleb128 0x39
	.long	LVL1392
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1393
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1395
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1396
	.long	0x17730
	.uleb128 0x39
	.long	LVL1398
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1399
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1401
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1402
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL1411
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1412
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB120
	.long	LBE120
	.long	0xca63
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x56d
	.long	0x8ce1
	.secrel32	LLST266
	.uleb128 0x39
	.long	LVL1404
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1405
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1406
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1407
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1381
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1382
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1384
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1385
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1387
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1388
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1414
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1415
	.long	0x89a7
	.long	0xcabf
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL1416
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_is_masked\0"
	.byte	0x2
	.word	0x54e
	.byte	0x1
	.long	LFB149
	.long	LFE149
	.secrel32	LLST267
	.byte	0x1
	.long	0xcc9f
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x54e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x54e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x550
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x550
	.long	0x4881
	.secrel32	LLST268
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x550
	.long	0x32fe
	.secrel32	LLST269
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x550
	.long	0x4881
	.secrel32	LLST270
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x550
	.long	0x32fe
	.secrel32	LLST271
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x290
	.long	0xcbf7
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x554
	.long	0x81dc
	.secrel32	LLST272
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x556
	.long	0x2ad
	.secrel32	LLST273
	.uleb128 0x39
	.long	LVL1429
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1430
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1432
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1433
	.long	0x1776e
	.uleb128 0x39
	.long	LVL1435
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1436
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1438
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1439
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL1448
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1449
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB123
	.long	LBE123
	.long	0xcc39
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x55b
	.long	0x8ce1
	.secrel32	LLST274
	.uleb128 0x39
	.long	LVL1441
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1442
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1443
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1444
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1418
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1419
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1421
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1422
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1424
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1425
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1451
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1452
	.long	0x89a7
	.long	0xcc95
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL1453
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_is_editable\0"
	.byte	0x2
	.word	0x53c
	.byte	0x1
	.long	LFB148
	.long	LFE148
	.secrel32	LLST275
	.byte	0x1
	.long	0xce77
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x53c
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x53c
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x53e
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x53e
	.long	0x4881
	.secrel32	LLST276
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x53e
	.long	0x32fe
	.secrel32	LLST277
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x53e
	.long	0x4881
	.secrel32	LLST278
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x53e
	.long	0x32fe
	.secrel32	LLST279
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x2a8
	.long	0xcdcf
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x542
	.long	0x81dc
	.secrel32	LLST280
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x544
	.long	0x2ad
	.secrel32	LLST281
	.uleb128 0x39
	.long	LVL1466
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1467
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1469
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1470
	.long	0x177a9
	.uleb128 0x39
	.long	LVL1472
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1473
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1475
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1476
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL1485
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1486
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB126
	.long	LBE126
	.long	0xce11
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x549
	.long	0x8ce1
	.secrel32	LLST282
	.uleb128 0x39
	.long	LVL1478
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1479
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1480
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1481
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1455
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1456
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1458
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1459
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1461
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1462
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1488
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1489
	.long	0x89a7
	.long	0xce6d
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL1490
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_get_value\0"
	.byte	0x2
	.word	0x529
	.byte	0x1
	.long	LFB147
	.long	LFE147
	.secrel32	LLST283
	.byte	0x1
	.long	0xd0cc
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x529
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x529
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x52b
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x52b
	.long	0x4881
	.secrel32	LLST284
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x52b
	.long	0x32fe
	.secrel32	LLST285
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x52b
	.long	0x4881
	.secrel32	LLST286
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x52b
	.long	0x32fe
	.secrel32	LLST287
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x2c0
	.long	0xd028
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x52f
	.long	0x81dc
	.secrel32	LLST288
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x531
	.long	0x27c
	.secrel32	LLST289
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x532
	.long	0x3c83
	.secrel32	LLST290
	.uleb128 0x39
	.long	LVL1503
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1504
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1505
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1507
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1508
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL1509
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1510
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL1512
	.long	0x177e6
	.long	0xcfae
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1514
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1515
	.long	0x17078
	.long	0xcfd3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1516
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1517
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1519
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1520
	.long	0x170a1
	.long	0xd003
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1530
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1531
	.long	0x17018
	.uleb128 0x39
	.long	LVL1532
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1533
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB130
	.long	LBE130
	.long	0xd06a
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x537
	.long	0x8ce1
	.secrel32	LLST291
	.uleb128 0x39
	.long	LVL1522
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1523
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1525
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1526
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1492
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1493
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1495
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1496
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1498
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1499
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1535
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1536
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1537
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_get_default_value\0"
	.byte	0x2
	.word	0x516
	.byte	0x1
	.long	LFB146
	.long	LFE146
	.secrel32	LLST292
	.byte	0x1
	.long	0xd329
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x516
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x516
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x518
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x518
	.long	0x4881
	.secrel32	LLST293
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x518
	.long	0x32fe
	.secrel32	LLST294
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x518
	.long	0x4881
	.secrel32	LLST295
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x518
	.long	0x32fe
	.secrel32	LLST296
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x2d8
	.long	0xd285
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x51c
	.long	0x81dc
	.secrel32	LLST297
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x51e
	.long	0x27c
	.secrel32	LLST298
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x51f
	.long	0x3c83
	.secrel32	LLST299
	.uleb128 0x39
	.long	LVL1550
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1551
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1552
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1554
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1555
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL1556
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1557
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL1559
	.long	0x17821
	.long	0xd20b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1561
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1562
	.long	0x17078
	.long	0xd230
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1563
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1564
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1566
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1567
	.long	0x170a1
	.long	0xd260
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1577
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1578
	.long	0x17018
	.uleb128 0x39
	.long	LVL1579
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1580
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB134
	.long	LBE134
	.long	0xd2c7
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x524
	.long	0x8ce1
	.secrel32	LLST300
	.uleb128 0x39
	.long	LVL1569
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1570
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1572
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1573
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1539
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1540
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1542
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1543
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1545
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1546
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1582
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1583
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1584
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_string_new\0"
	.byte	0x2
	.word	0x4fd
	.byte	0x1
	.long	LFB145
	.long	LFE145
	.secrel32	LLST301
	.byte	0x1
	.long	0xd749
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x4fd
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x4fd
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4ff
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4ff
	.long	0x4881
	.secrel32	LLST302
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4ff
	.long	0x32fe
	.secrel32	LLST303
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4ff
	.long	0x4881
	.secrel32	LLST304
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4ff
	.long	0x32fe
	.secrel32	LLST305
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x2f0
	.long	0xd6a1
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x503
	.long	0x27c
	.secrel32	LLST306
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x505
	.long	0x27c
	.secrel32	LLST307
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x507
	.long	0x27c
	.secrel32	LLST308
	.uleb128 0x49
	.secrel32	LASF74
	.byte	0x2
	.word	0x509
	.long	0x2ad
	.secrel32	LLST309
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x50b
	.long	0x81dc
	.secrel32	LLST310
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x308
	.long	0xd463
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x509
	.long	0x61b3
	.secrel32	LLST311
	.uleb128 0x39
	.long	LVL1618
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1619
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1667
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1668
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1597
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1598
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1599
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1600
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1601
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1602
	.long	0x16f23
	.long	0xd4b1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1604
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1605
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1606
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1607
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1609
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1610
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1611
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1612
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1614
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1615
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1616
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1617
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1624
	.long	0x17864
	.long	0xd541
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1626
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1627
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1629
	.long	0x16db6
	.long	0xd572
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL1630
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1631
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1632
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1633
	.long	0x16de8
	.long	0xd5a2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1641
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1642
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1644
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1645
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1646
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1647
	.long	0x16f23
	.long	0xd5f0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1650
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1651
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1652
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1653
	.long	0x16f23
	.long	0xd62c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1655
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1656
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1657
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1658
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1659
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1660
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1661
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1662
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1663
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1664
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1665
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1666
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB140
	.long	LBE140
	.long	0xd6e3
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x511
	.long	0x8ce1
	.secrel32	LLST312
	.uleb128 0x39
	.long	LVL1634
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1635
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1636
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1637
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1586
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1587
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1589
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1590
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1592
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1593
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1670
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1671
	.long	0x89a7
	.long	0xd73f
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC21
	.byte	0
	.uleb128 0x39
	.long	LVL1672
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_set_visible\0"
	.byte	0x2
	.word	0x4eb
	.byte	0x1
	.long	LFB144
	.long	LFE144
	.secrel32	LLST313
	.byte	0x1
	.long	0xd9c6
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x4eb
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x4eb
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4ed
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4ed
	.long	0x4881
	.secrel32	LLST314
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4ed
	.long	0x32fe
	.secrel32	LLST315
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4ed
	.long	0x4881
	.secrel32	LLST316
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4ed
	.long	0x32fe
	.secrel32	LLST317
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x328
	.long	0xd922
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x4f1
	.long	0x81dc
	.secrel32	LLST318
	.uleb128 0x48
	.ascii "visible\0"
	.byte	0x2
	.word	0x4f3
	.long	0x2ad
	.secrel32	LLST319
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x340
	.long	0xd859
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x4f3
	.long	0x61b3
	.secrel32	LLST320
	.uleb128 0x39
	.long	LVL1693
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1694
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1719
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1720
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1685
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1686
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1687
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1689
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1690
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1691
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1692
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1698
	.long	0x178a8
	.long	0xd8ad
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1707
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1708
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1709
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1710
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1711
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1712
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1713
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1714
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1715
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1716
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1717
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1718
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB146
	.long	LBE146
	.long	0xd964
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x4f8
	.long	0x8ce1
	.secrel32	LLST321
	.uleb128 0x39
	.long	LVL1699
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1700
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1701
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1702
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1674
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1675
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1677
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1678
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1680
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1681
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1722
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1723
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1724
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC22
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_set_type_hint\0"
	.byte	0x2
	.word	0x4d9
	.byte	0x1
	.long	LFB143
	.long	LFE143
	.secrel32	LLST322
	.byte	0x1
	.long	0xdbcf
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x4d9
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x4d9
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4db
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4db
	.long	0x4881
	.secrel32	LLST323
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4db
	.long	0x32fe
	.secrel32	LLST324
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4db
	.long	0x4881
	.secrel32	LLST325
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4db
	.long	0x32fe
	.secrel32	LLST326
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x360
	.long	0xdb27
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x4df
	.long	0x81dc
	.secrel32	LLST327
	.uleb128 0x49
	.secrel32	LASF71
	.byte	0x2
	.word	0x4e1
	.long	0x27c
	.secrel32	LLST328
	.uleb128 0x39
	.long	LVL1737
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1738
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1739
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1741
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1742
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1743
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1744
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1745
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1746
	.long	0x16f23
	.long	0xdaff
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1747
	.long	0x178df
	.long	0xdb14
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1756
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1757
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB149
	.long	LBE149
	.long	0xdb69
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x4e6
	.long	0x8ce1
	.secrel32	LLST329
	.uleb128 0x39
	.long	LVL1748
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1749
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1750
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1751
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1726
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1727
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1729
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1730
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1732
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1733
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1759
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1760
	.long	0x89a7
	.long	0xdbc5
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC23
	.byte	0
	.uleb128 0x39
	.long	LVL1761
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_set_required\0"
	.byte	0x2
	.word	0x4c7
	.byte	0x1
	.long	LFB142
	.long	LFE142
	.secrel32	LLST330
	.byte	0x1
	.long	0xde49
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x4c7
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x4c7
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4c9
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4c9
	.long	0x4881
	.secrel32	LLST331
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4c9
	.long	0x32fe
	.secrel32	LLST332
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4c9
	.long	0x4881
	.secrel32	LLST333
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4c9
	.long	0x32fe
	.secrel32	LLST334
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x378
	.long	0xdda5
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x4cd
	.long	0x81dc
	.secrel32	LLST335
	.uleb128 0x49
	.secrel32	LASF72
	.byte	0x2
	.word	0x4cf
	.long	0x2ad
	.secrel32	LLST336
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x390
	.long	0xdcdc
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x4cf
	.long	0x61b3
	.secrel32	LLST337
	.uleb128 0x39
	.long	LVL1782
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1783
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1808
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1809
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1774
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1775
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1776
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1778
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1779
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1780
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1781
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1787
	.long	0x17918
	.long	0xdd30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1796
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1797
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1798
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1799
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1800
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1801
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1802
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1803
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1804
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1805
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1806
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1807
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB155
	.long	LBE155
	.long	0xdde7
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x4d4
	.long	0x8ce1
	.secrel32	LLST338
	.uleb128 0x39
	.long	LVL1788
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1789
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1790
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1791
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1763
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1764
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1766
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1767
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1769
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1770
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1811
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1812
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1813
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC24
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_set_label\0"
	.byte	0x2
	.word	0x4b5
	.byte	0x1
	.long	LFB141
	.long	LFE141
	.secrel32	LLST339
	.byte	0x1
	.long	0xe04e
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x4b5
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x4b5
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4b7
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4b7
	.long	0x4881
	.secrel32	LLST340
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4b7
	.long	0x32fe
	.secrel32	LLST341
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4b7
	.long	0x4881
	.secrel32	LLST342
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4b7
	.long	0x32fe
	.secrel32	LLST343
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x3b0
	.long	0xdfa6
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x4bb
	.long	0x81dc
	.secrel32	LLST344
	.uleb128 0x49
	.secrel32	LASF58
	.byte	0x2
	.word	0x4bd
	.long	0x27c
	.secrel32	LLST345
	.uleb128 0x39
	.long	LVL1826
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1827
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1828
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1830
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1831
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1832
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1833
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1834
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1835
	.long	0x16f23
	.long	0xdf7e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1836
	.long	0x17950
	.long	0xdf93
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1845
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1846
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB158
	.long	LBE158
	.long	0xdfe8
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x4c2
	.long	0x8ce1
	.secrel32	LLST346
	.uleb128 0x39
	.long	LVL1837
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1838
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1839
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1840
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1815
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1816
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1818
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1819
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1821
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1822
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1848
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1849
	.long	0x89a7
	.long	0xe044
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC25
	.byte	0
	.uleb128 0x39
	.long	LVL1850
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_new\0"
	.byte	0x2
	.word	0x49e
	.byte	0x1
	.long	LFB140
	.long	LFE140
	.secrel32	LLST347
	.byte	0x1
	.long	0xe36f
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x49e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x49e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x4a0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x4a0
	.long	0x4881
	.secrel32	LLST348
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x4a0
	.long	0x32fe
	.secrel32	LLST349
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x4a0
	.long	0x4881
	.secrel32	LLST350
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x4a0
	.long	0x32fe
	.secrel32	LLST351
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x3c8
	.long	0xe2cb
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x4a4
	.long	0x27c
	.secrel32	LLST352
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x4a6
	.long	0x27c
	.secrel32	LLST353
	.uleb128 0x49
	.secrel32	LASF27
	.byte	0x2
	.word	0x4a8
	.long	0x8244
	.secrel32	LLST354
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x4aa
	.long	0x81dc
	.secrel32	LLST355
	.uleb128 0x39
	.long	LVL1863
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1864
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1865
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1866
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1867
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1868
	.long	0x16f23
	.long	0xe181
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1870
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1871
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1872
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1873
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1875
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1876
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1877
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1878
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1879
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1880
	.long	0x17985
	.long	0xe1ed
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1881
	.long	0x179b6
	.long	0xe209
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1883
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1884
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1886
	.long	0x16db6
	.long	0xe23a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL1887
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1888
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1889
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1890
	.long	0x16de8
	.long	0xe26a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1898
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1899
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1901
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1902
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1903
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1904
	.long	0x16f23
	.long	0xe2b8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL1907
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1908
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB161
	.long	LBE161
	.long	0xe30d
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x4b0
	.long	0x8ce1
	.secrel32	LLST356
	.uleb128 0x39
	.long	LVL1891
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1892
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1893
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1894
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1852
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1853
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1855
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1856
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1858
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1859
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1910
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1911
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1912
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC26
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_set_multi_select\0"
	.byte	0x2
	.word	0x48c
	.byte	0x1
	.long	LFB139
	.long	LFE139
	.secrel32	LLST357
	.byte	0x1
	.long	0xe5fb
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x48c
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x48c
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x48e
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x48e
	.long	0x4881
	.secrel32	LLST358
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x48e
	.long	0x32fe
	.secrel32	LLST359
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x48e
	.long	0x4881
	.secrel32	LLST360
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x48e
	.long	0x32fe
	.secrel32	LLST361
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x3e0
	.long	0xe557
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x492
	.long	0x81dc
	.secrel32	LLST362
	.uleb128 0x48
	.ascii "multi_select\0"
	.byte	0x2
	.word	0x494
	.long	0x2ad
	.secrel32	LLST363
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x3f8
	.long	0xe48e
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x494
	.long	0x61b3
	.secrel32	LLST364
	.uleb128 0x39
	.long	LVL1933
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1934
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1959
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1960
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1925
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1926
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1927
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1929
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1930
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1931
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1932
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL1938
	.long	0x179ee
	.long	0xe4e2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1947
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1948
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1949
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1950
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1951
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1952
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1953
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1954
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1955
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1956
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1957
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1958
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB167
	.long	LBE167
	.long	0xe599
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x499
	.long	0x8ce1
	.secrel32	LLST365
	.uleb128 0x39
	.long	LVL1939
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1940
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1941
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1942
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1914
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1915
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1917
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1918
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1920
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1921
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1962
	.long	0x16c30
	.uleb128 0x39
	.long	LVL1963
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL1964
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC27
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_is_selected\0"
	.byte	0x2
	.word	0x478
	.byte	0x1
	.long	LFB138
	.long	LFE138
	.secrel32	LLST366
	.byte	0x1
	.long	0xe84a
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x478
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x478
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x47a
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x47a
	.long	0x4881
	.secrel32	LLST367
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x47a
	.long	0x32fe
	.secrel32	LLST368
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x47a
	.long	0x4881
	.secrel32	LLST369
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x47a
	.long	0x32fe
	.secrel32	LLST370
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x418
	.long	0xe7a6
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x47e
	.long	0x81dc
	.secrel32	LLST371
	.uleb128 0x48
	.ascii "item\0"
	.byte	0x2
	.word	0x480
	.long	0x27c
	.secrel32	LLST372
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x482
	.long	0x2ad
	.secrel32	LLST373
	.uleb128 0x39
	.long	LVL1977
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1978
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1980
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL1982
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1983
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1985
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1986
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1987
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL1988
	.long	0x16f23
	.long	0xe748
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL1989
	.long	0x17a2f
	.long	0xe75d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL1991
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1992
	.long	0x16d65
	.uleb128 0x39
	.long	LVL1993
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1994
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL2003
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2004
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2006
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2007
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB170
	.long	LBE170
	.long	0xe7e8
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x487
	.long	0x8ce1
	.secrel32	LLST374
	.uleb128 0x39
	.long	LVL1996
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1997
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1998
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1999
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL1966
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1967
	.long	0x16c46
	.uleb128 0x39
	.long	LVL1969
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1970
	.long	0x16d07
	.uleb128 0x39
	.long	LVL1972
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL1973
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2009
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2010
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2011
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC28
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_get_selected\0"
	.byte	0x2
	.word	0x45f
	.byte	0x1
	.long	LFB137
	.long	LFE137
	.secrel32	LLST375
	.byte	0x1
	.long	0xea3c
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x45f
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x45f
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x461
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x461
	.long	0x4881
	.secrel32	LLST376
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x461
	.long	0x32fe
	.secrel32	LLST377
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x461
	.long	0x4881
	.secrel32	LLST378
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x461
	.long	0x32fe
	.secrel32	LLST379
	.uleb128 0x4a
	.long	LBB172
	.long	LBE172
	.long	0xe9d6
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x467
	.long	0x81dc
	.secrel32	LLST380
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x1a5
	.long	0x428
	.secrel32	LLST381
	.uleb128 0x39
	.long	LVL2025
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2026
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2027
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2028
	.long	0x17a6f
	.uleb128 0x39
	.long	LVL2033
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2034
	.long	0x17aab
	.long	0xe968
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL2035
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2036
	.long	0x16de8
	.long	0xe986
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2038
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2039
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL2040
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2041
	.long	0x16e7e
	.long	0xe9c3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL2044
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2045
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL2013
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2014
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2016
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2017
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2019
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2020
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2049
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2050
	.long	0x89a7
	.long	0xea32
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2051
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_get_multi_select\0"
	.byte	0x2
	.word	0x44d
	.byte	0x1
	.long	LFB136
	.long	LFE136
	.secrel32	LLST382
	.byte	0x1
	.long	0xec17
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x44d
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x44d
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x44f
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x44f
	.long	0x4881
	.secrel32	LLST383
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x44f
	.long	0x32fe
	.secrel32	LLST384
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x44f
	.long	0x4881
	.secrel32	LLST385
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x44f
	.long	0x32fe
	.secrel32	LLST386
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x430
	.long	0xeb6f
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x453
	.long	0x81dc
	.secrel32	LLST387
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x455
	.long	0x2ad
	.secrel32	LLST388
	.uleb128 0x39
	.long	LVL2064
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2065
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2067
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2068
	.long	0x17ad7
	.uleb128 0x39
	.long	LVL2070
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2071
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2073
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2074
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL2083
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2084
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB176
	.long	LBE176
	.long	0xebb1
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x45a
	.long	0x8ce1
	.secrel32	LLST389
	.uleb128 0x39
	.long	LVL2076
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2077
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2078
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2079
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2053
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2054
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2056
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2057
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2059
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2060
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2086
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2087
	.long	0x89a7
	.long	0xec0d
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2088
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_get_items\0"
	.byte	0x2
	.word	0x434
	.byte	0x1
	.long	LFB135
	.long	LFE135
	.secrel32	LLST390
	.byte	0x1
	.long	0xee06
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x434
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x434
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x436
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x436
	.long	0x4881
	.secrel32	LLST391
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x436
	.long	0x32fe
	.secrel32	LLST392
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x436
	.long	0x4881
	.secrel32	LLST393
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x436
	.long	0x32fe
	.secrel32	LLST394
	.uleb128 0x4a
	.long	LBB178
	.long	LBE178
	.long	0xeda0
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x43c
	.long	0x81dc
	.secrel32	LLST395
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x197
	.long	0x428
	.secrel32	LLST396
	.uleb128 0x39
	.long	LVL2102
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2103
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2104
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2105
	.long	0x17b17
	.uleb128 0x39
	.long	LVL2110
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2111
	.long	0x17aab
	.long	0xed32
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL2112
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2113
	.long	0x16de8
	.long	0xed50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2115
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2116
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL2117
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2118
	.long	0x16e7e
	.long	0xed8d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL2121
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2122
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL2090
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2091
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2093
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2094
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2096
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2097
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2126
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2127
	.long	0x89a7
	.long	0xedfc
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2128
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_get_data\0"
	.byte	0x2
	.word	0x41f
	.byte	0x1
	.long	LFB134
	.long	LFE134
	.secrel32	LLST397
	.byte	0x1
	.long	0xf0d0
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x41f
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x41f
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x421
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x421
	.long	0x4881
	.secrel32	LLST398
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x421
	.long	0x32fe
	.secrel32	LLST399
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x421
	.long	0x4881
	.secrel32	LLST400
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x421
	.long	0x32fe
	.secrel32	LLST401
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x448
	.long	0xf02c
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x425
	.long	0x81dc
	.secrel32	LLST402
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x427
	.long	0x27c
	.secrel32	LLST403
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x429
	.long	0x165
	.secrel32	LLST404
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x42a
	.long	0x3c83
	.secrel32	LLST405
	.uleb128 0x39
	.long	LVL2141
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2142
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2143
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2145
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2146
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2147
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2148
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2149
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2150
	.long	0x16f23
	.long	0xef5f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2152
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2153
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL2154
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2155
	.long	0x17018
	.uleb128 0x39
	.long	LVL2156
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2157
	.long	0x16ff1
	.uleb128 0x3a
	.long	LVL2159
	.long	0x17b50
	.long	0xefb2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL2161
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2162
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2164
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2165
	.long	0x17162
	.long	0xefe9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2166
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2167
	.long	0x170a1
	.long	0xf007
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2177
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2178
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2180
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2181
	.long	0x170c7
	.byte	0
	.uleb128 0x4a
	.long	LBB184
	.long	LBE184
	.long	0xf06e
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x42f
	.long	0x8ce1
	.secrel32	LLST406
	.uleb128 0x39
	.long	LVL2169
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2170
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2172
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2173
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2130
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2131
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2133
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2134
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2136
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2137
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2183
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2184
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2185
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC29
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_clear_selected\0"
	.byte	0x2
	.word	0x40f
	.byte	0x1
	.long	LFB133
	.long	LFE133
	.secrel32	LLST407
	.byte	0x1
	.long	0xf267
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x40f
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x40f
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x411
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x411
	.long	0x4881
	.secrel32	LLST408
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x411
	.long	0x32fe
	.secrel32	LLST409
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x411
	.long	0x4881
	.secrel32	LLST410
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x411
	.long	0x32fe
	.secrel32	LLST411
	.uleb128 0x4a
	.long	LBB186
	.long	LBE186
	.long	0xf1bf
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x415
	.long	0x81dc
	.secrel32	LLST412
	.uleb128 0x39
	.long	LVL2199
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2200
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2201
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2202
	.long	0x17b8d
	.byte	0
	.uleb128 0x4a
	.long	LBB187
	.long	LBE187
	.long	0xf201
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x41a
	.long	0x8ce1
	.secrel32	LLST413
	.uleb128 0x39
	.long	LVL2203
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2204
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2205
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2206
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2187
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2188
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2190
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2191
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2193
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2194
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2210
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2211
	.long	0x89a7
	.long	0xf25d
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2212
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_add_selected\0"
	.byte	0x2
	.word	0x3fd
	.byte	0x1
	.long	LFB132
	.long	LFE132
	.secrel32	LLST414
	.byte	0x1
	.long	0xf475
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x3fd
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x3fd
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x3ff
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x3ff
	.long	0x4881
	.secrel32	LLST415
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x3ff
	.long	0x32fe
	.secrel32	LLST416
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x3ff
	.long	0x4881
	.secrel32	LLST417
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x3ff
	.long	0x32fe
	.secrel32	LLST418
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x460
	.long	0xf3cd
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x403
	.long	0x81dc
	.secrel32	LLST419
	.uleb128 0x48
	.ascii "item\0"
	.byte	0x2
	.word	0x405
	.long	0x27c
	.secrel32	LLST420
	.uleb128 0x39
	.long	LVL2225
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2226
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2227
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2229
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2230
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2231
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2232
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2233
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2234
	.long	0x16f23
	.long	0xf3a5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2235
	.long	0x17bc7
	.long	0xf3ba
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2244
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2245
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB189
	.long	LBE189
	.long	0xf40f
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x40a
	.long	0x8ce1
	.secrel32	LLST421
	.uleb128 0x39
	.long	LVL2236
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2237
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2238
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2239
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2214
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2215
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2217
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2218
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2220
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2221
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2247
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2248
	.long	0x89a7
	.long	0xf46b
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC28
	.byte	0
	.uleb128 0x39
	.long	LVL2249
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_add_icon\0"
	.byte	0x2
	.word	0x3e7
	.byte	0x1
	.long	LFB131
	.long	LFE131
	.secrel32	LLST422
	.byte	0x1
	.long	0xf762
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x3e7
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x3e7
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x3e9
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x3e9
	.long	0x4881
	.secrel32	LLST423
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x3e9
	.long	0x32fe
	.secrel32	LLST424
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x3e9
	.long	0x4881
	.secrel32	LLST425
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x3e9
	.long	0x32fe
	.secrel32	LLST426
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x478
	.long	0xf6be
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x3ed
	.long	0x81dc
	.secrel32	LLST427
	.uleb128 0x48
	.ascii "item\0"
	.byte	0x2
	.word	0x3ef
	.long	0x27c
	.secrel32	LLST428
	.uleb128 0x48
	.ascii "icon_path\0"
	.byte	0x2
	.word	0x3f1
	.long	0x27c
	.secrel32	LLST429
	.uleb128 0x49
	.secrel32	LASF0
	.byte	0x2
	.word	0x3f3
	.long	0x165
	.secrel32	LLST430
	.uleb128 0x39
	.long	LVL2262
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2263
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2264
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2266
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2267
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2268
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2269
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2270
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2271
	.long	0x16f23
	.long	0xf5d5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2273
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2274
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2276
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2277
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2279
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2280
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2281
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2282
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2283
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2284
	.long	0x17985
	.long	0xf63a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2285
	.long	0x17c04
	.long	0xf65d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2295
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2296
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2298
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2299
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2300
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2301
	.long	0x16f23
	.long	0xf6ab
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2303
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2304
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB192
	.long	LBE192
	.long	0xf700
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x3f8
	.long	0x8ce1
	.secrel32	LLST431
	.uleb128 0x39
	.long	LVL2286
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2287
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2289
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2290
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2251
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2252
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2254
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2255
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2257
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2258
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2306
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2307
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2308
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC30
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_add\0"
	.byte	0x2
	.word	0x3d3
	.byte	0x1
	.long	LFB130
	.long	LFE130
	.secrel32	LLST432
	.byte	0x1
	.long	0xf9d4
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x3d3
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x3d3
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x3d5
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x3d5
	.long	0x4881
	.secrel32	LLST433
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x3d5
	.long	0x32fe
	.secrel32	LLST434
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x3d5
	.long	0x4881
	.secrel32	LLST435
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x3d5
	.long	0x32fe
	.secrel32	LLST436
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x490
	.long	0xf930
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x3d9
	.long	0x81dc
	.secrel32	LLST437
	.uleb128 0x48
	.ascii "item\0"
	.byte	0x2
	.word	0x3db
	.long	0x27c
	.secrel32	LLST438
	.uleb128 0x49
	.secrel32	LASF0
	.byte	0x2
	.word	0x3dd
	.long	0x165
	.secrel32	LLST439
	.uleb128 0x39
	.long	LVL2321
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2322
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2323
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2325
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2326
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2327
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2328
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2329
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2330
	.long	0x16f23
	.long	0xf8a7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2332
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2333
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2334
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2335
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2336
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2337
	.long	0x17985
	.long	0xf8ef
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2338
	.long	0x17c47
	.long	0xf90b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2347
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2348
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2351
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2352
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB195
	.long	LBE195
	.long	0xf972
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x3e2
	.long	0x8ce1
	.secrel32	LLST440
	.uleb128 0x39
	.long	LVL2339
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2340
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2341
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2342
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2310
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2311
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2313
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2314
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2316
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2317
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2354
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2355
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2356
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC31
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_list_new\0"
	.byte	0x2
	.word	0x3be
	.byte	0x1
	.long	LFB129
	.long	LFE129
	.secrel32	LLST441
	.byte	0x1
	.long	0xfc89
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x3be
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x3be
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x3c0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x3c0
	.long	0x4881
	.secrel32	LLST442
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x3c0
	.long	0x32fe
	.secrel32	LLST443
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x3c0
	.long	0x4881
	.secrel32	LLST444
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x3c0
	.long	0x32fe
	.secrel32	LLST445
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x4a8
	.long	0xfbe5
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x3c4
	.long	0x27c
	.secrel32	LLST446
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x3c6
	.long	0x27c
	.secrel32	LLST447
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x3c8
	.long	0x81dc
	.secrel32	LLST448
	.uleb128 0x39
	.long	LVL2369
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2370
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2371
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2372
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2373
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2374
	.long	0x16f23
	.long	0xfafc
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2376
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2377
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2378
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2379
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2380
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2381
	.long	0x16f23
	.long	0xfb4a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2382
	.long	0x17c80
	.long	0xfb5f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2384
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2385
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL2387
	.long	0x16db6
	.long	0xfb90
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL2388
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2389
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2390
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2391
	.long	0x16de8
	.long	0xfbc0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2399
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2400
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2402
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2403
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB198
	.long	LBE198
	.long	0xfc27
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x3ce
	.long	0x8ce1
	.secrel32	LLST449
	.uleb128 0x39
	.long	LVL2392
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2393
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2394
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2395
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2358
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2359
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2361
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2362
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2364
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2365
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2405
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2406
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2407
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC32
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_label_new\0"
	.byte	0x2
	.word	0x3a9
	.byte	0x1
	.long	LFB128
	.long	LFE128
	.secrel32	LLST450
	.byte	0x1
	.long	0xff3f
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x3a9
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x3a9
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x3ab
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x3ab
	.long	0x4881
	.secrel32	LLST451
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x3ab
	.long	0x32fe
	.secrel32	LLST452
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x3ab
	.long	0x4881
	.secrel32	LLST453
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x3ab
	.long	0x32fe
	.secrel32	LLST454
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x4c0
	.long	0xfe9b
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x3af
	.long	0x27c
	.secrel32	LLST455
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x3b1
	.long	0x27c
	.secrel32	LLST456
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x3b3
	.long	0x81dc
	.secrel32	LLST457
	.uleb128 0x39
	.long	LVL2420
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2421
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2422
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2423
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2424
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2425
	.long	0x16f23
	.long	0xfdb2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2427
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2428
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2429
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2430
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2431
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2432
	.long	0x16f23
	.long	0xfe00
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2433
	.long	0x17cb8
	.long	0xfe15
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2435
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2436
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL2438
	.long	0x16db6
	.long	0xfe46
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL2439
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2440
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2441
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2442
	.long	0x16de8
	.long	0xfe76
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2450
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2451
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2453
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2454
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB201
	.long	LBE201
	.long	0xfedd
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x3b9
	.long	0x8ce1
	.secrel32	LLST458
	.uleb128 0x39
	.long	LVL2443
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2444
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2445
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2446
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2409
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2410
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2412
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2413
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2415
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2416
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2456
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2457
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2458
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC32
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_is_required\0"
	.byte	0x2
	.word	0x397
	.byte	0x1
	.long	LFB127
	.long	LFE127
	.secrel32	LLST459
	.byte	0x1
	.long	0x10110
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x397
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x397
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x399
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x399
	.long	0x4881
	.secrel32	LLST460
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x399
	.long	0x32fe
	.secrel32	LLST461
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x399
	.long	0x4881
	.secrel32	LLST462
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x399
	.long	0x32fe
	.secrel32	LLST463
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x4d8
	.long	0x10068
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x39d
	.long	0x81dc
	.secrel32	LLST464
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x39f
	.long	0x2ad
	.secrel32	LLST465
	.uleb128 0x39
	.long	LVL2471
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2472
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2474
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2475
	.long	0x17cf1
	.uleb128 0x39
	.long	LVL2477
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2478
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2480
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2481
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL2490
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2491
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB204
	.long	LBE204
	.long	0x100aa
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x3a4
	.long	0x8ce1
	.secrel32	LLST466
	.uleb128 0x39
	.long	LVL2483
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2484
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2485
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2486
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2460
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2461
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2463
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2464
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2466
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2467
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2493
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2494
	.long	0x89a7
	.long	0x10106
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2495
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_int_set_value\0"
	.byte	0x2
	.word	0x385
	.byte	0x1
	.long	LFB126
	.long	LFE126
	.secrel32	LLST467
	.byte	0x1
	.long	0x10313
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x385
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x385
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x387
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x387
	.long	0x4881
	.secrel32	LLST468
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x387
	.long	0x32fe
	.secrel32	LLST469
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x387
	.long	0x4881
	.secrel32	LLST470
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x387
	.long	0x32fe
	.secrel32	LLST471
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x4f0
	.long	0x1026b
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x38b
	.long	0x81dc
	.secrel32	LLST472
	.uleb128 0x49
	.secrel32	LASF78
	.byte	0x2
	.word	0x38d
	.long	0xba
	.secrel32	LLST473
	.uleb128 0x39
	.long	LVL2508
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2509
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2510
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2512
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2513
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2514
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2515
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2516
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2517
	.long	0x17985
	.long	0x10243
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2518
	.long	0x17d27
	.long	0x10258
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2527
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2528
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB207
	.long	LBE207
	.long	0x102ad
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x392
	.long	0x8ce1
	.secrel32	LLST474
	.uleb128 0x39
	.long	LVL2519
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2520
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2521
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2522
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2497
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2498
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2500
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2501
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2503
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2504
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2530
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2531
	.long	0x89a7
	.long	0x10309
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC15
	.byte	0
	.uleb128 0x39
	.long	LVL2532
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_int_set_default_value\0"
	.byte	0x2
	.word	0x373
	.byte	0x1
	.long	LFB125
	.long	LFE125
	.secrel32	LLST475
	.byte	0x1
	.long	0x1051e
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x373
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x373
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x375
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x375
	.long	0x4881
	.secrel32	LLST476
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x375
	.long	0x32fe
	.secrel32	LLST477
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x375
	.long	0x4881
	.secrel32	LLST478
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x375
	.long	0x32fe
	.secrel32	LLST479
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x508
	.long	0x10476
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x379
	.long	0x81dc
	.secrel32	LLST480
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x37b
	.long	0xba
	.secrel32	LLST481
	.uleb128 0x39
	.long	LVL2545
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2546
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2547
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2549
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2550
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2551
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2552
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2553
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2554
	.long	0x17985
	.long	0x1044e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2555
	.long	0x17d60
	.long	0x10463
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2564
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2565
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB210
	.long	LBE210
	.long	0x104b8
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x380
	.long	0x8ce1
	.secrel32	LLST482
	.uleb128 0x39
	.long	LVL2556
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2557
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2558
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2559
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2534
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2535
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2537
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2538
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2540
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2541
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2567
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2568
	.long	0x89a7
	.long	0x10514
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x39
	.long	LVL2569
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_int_get_value\0"
	.byte	0x2
	.word	0x360
	.byte	0x1
	.long	LFB124
	.long	LFE124
	.secrel32	LLST483
	.byte	0x1
	.long	0x10770
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x360
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x360
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x362
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x362
	.long	0x4881
	.secrel32	LLST484
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x362
	.long	0x32fe
	.secrel32	LLST485
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x362
	.long	0x4881
	.secrel32	LLST486
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x362
	.long	0x32fe
	.secrel32	LLST487
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x520
	.long	0x106cc
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x366
	.long	0x81dc
	.secrel32	LLST488
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x368
	.long	0xba
	.secrel32	LLST489
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x369
	.long	0x3c83
	.secrel32	LLST490
	.uleb128 0x39
	.long	LVL2582
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2583
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2584
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2586
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2587
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL2588
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2589
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL2591
	.long	0x17da1
	.long	0x10652
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2593
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2594
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2596
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2597
	.long	0x17162
	.long	0x10689
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2598
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2599
	.long	0x170a1
	.long	0x106a7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2609
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2610
	.long	0x17018
	.uleb128 0x39
	.long	LVL2611
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2612
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB215
	.long	LBE215
	.long	0x1070e
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x36e
	.long	0x8ce1
	.secrel32	LLST491
	.uleb128 0x39
	.long	LVL2601
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2602
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2604
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2605
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2571
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2572
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2574
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2575
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2577
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2578
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2614
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2615
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2616
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_int_get_default_value\0"
	.byte	0x2
	.word	0x34d
	.byte	0x1
	.long	LFB123
	.long	LFE123
	.secrel32	LLST492
	.byte	0x1
	.long	0x109ca
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x34d
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x34d
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x34f
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x34f
	.long	0x4881
	.secrel32	LLST493
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x34f
	.long	0x32fe
	.secrel32	LLST494
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x34f
	.long	0x4881
	.secrel32	LLST495
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x34f
	.long	0x32fe
	.secrel32	LLST496
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x538
	.long	0x10926
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x353
	.long	0x81dc
	.secrel32	LLST497
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x355
	.long	0xba
	.secrel32	LLST498
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x356
	.long	0x3c83
	.secrel32	LLST499
	.uleb128 0x39
	.long	LVL2629
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2630
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2631
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2633
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2634
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL2635
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2636
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL2638
	.long	0x17dd9
	.long	0x108ac
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2640
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2641
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2643
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2644
	.long	0x17162
	.long	0x108e3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2645
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2646
	.long	0x170a1
	.long	0x10901
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2656
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2657
	.long	0x17018
	.uleb128 0x39
	.long	LVL2658
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2659
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB220
	.long	LBE220
	.long	0x10968
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x35b
	.long	0x8ce1
	.secrel32	LLST500
	.uleb128 0x39
	.long	LVL2648
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2649
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2651
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2652
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2618
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2619
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2621
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2622
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2624
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2625
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2661
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2662
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2663
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_int_new\0"
	.byte	0x2
	.word	0x330
	.byte	0x1
	.long	LFB122
	.long	LFE122
	.secrel32	LLST501
	.byte	0x1
	.long	0x10ceb
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x330
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x330
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x332
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x332
	.long	0x4881
	.secrel32	LLST502
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x332
	.long	0x32fe
	.secrel32	LLST503
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x332
	.long	0x4881
	.secrel32	LLST504
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x332
	.long	0x32fe
	.secrel32	LLST505
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x550
	.long	0x10c47
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x336
	.long	0x27c
	.secrel32	LLST506
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x338
	.long	0x27c
	.secrel32	LLST507
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x33a
	.long	0xba
	.secrel32	LLST508
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x33b
	.long	0x81dc
	.secrel32	LLST509
	.uleb128 0x39
	.long	LVL2678
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2679
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2680
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2681
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2682
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2683
	.long	0x16f23
	.long	0x10b01
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2685
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2686
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2687
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2688
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL2691
	.long	0x17e19
	.long	0x10b41
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2693
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2694
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL2696
	.long	0x16db6
	.long	0x10b72
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL2697
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2698
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2699
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2700
	.long	0x16de8
	.long	0x10ba2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2708
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2709
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2711
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2712
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2713
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2714
	.long	0x16f23
	.long	0x10bf0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2717
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2718
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2720
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2721
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2722
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2723
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2724
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2725
	.long	0x17985
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB223
	.long	LBE223
	.long	0x10c89
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x348
	.long	0x8ce1
	.secrel32	LLST510
	.uleb128 0x39
	.long	LVL2701
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2702
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2703
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2704
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2665
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2666
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2668
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2669
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2671
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2672
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2727
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2728
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2729
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC33
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_set_value\0"
	.byte	0x2
	.word	0x31e
	.byte	0x1
	.long	LFB121
	.long	LFE121
	.secrel32	LLST511
	.byte	0x1
	.long	0x10ef1
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x31e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x31e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x320
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x320
	.long	0x4881
	.secrel32	LLST512
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x320
	.long	0x32fe
	.secrel32	LLST513
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x320
	.long	0x4881
	.secrel32	LLST514
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x320
	.long	0x32fe
	.secrel32	LLST515
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x568
	.long	0x10e49
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x324
	.long	0x81dc
	.secrel32	LLST516
	.uleb128 0x49
	.secrel32	LASF78
	.byte	0x2
	.word	0x326
	.long	0xba
	.secrel32	LLST517
	.uleb128 0x39
	.long	LVL2742
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2743
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2744
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2746
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2747
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2748
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2749
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2750
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2751
	.long	0x17985
	.long	0x10e21
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2752
	.long	0x17e55
	.long	0x10e36
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2761
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2762
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB226
	.long	LBE226
	.long	0x10e8b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x32b
	.long	0x8ce1
	.secrel32	LLST518
	.uleb128 0x39
	.long	LVL2753
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2754
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2755
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2756
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2731
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2732
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2734
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2735
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2737
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2738
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2764
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2765
	.long	0x89a7
	.long	0x10ee7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC15
	.byte	0
	.uleb128 0x39
	.long	LVL2766
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_set_default_value\0"
	.byte	0x2
	.word	0x30c
	.byte	0x1
	.long	LFB120
	.long	LFE120
	.secrel32	LLST519
	.byte	0x1
	.long	0x110ff
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x30c
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x30c
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x30e
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x30e
	.long	0x4881
	.secrel32	LLST520
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x30e
	.long	0x32fe
	.secrel32	LLST521
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x30e
	.long	0x4881
	.secrel32	LLST522
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x30e
	.long	0x32fe
	.secrel32	LLST523
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x580
	.long	0x11057
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x312
	.long	0x81dc
	.secrel32	LLST524
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x314
	.long	0xba
	.secrel32	LLST525
	.uleb128 0x39
	.long	LVL2779
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2780
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2781
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2783
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2784
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2785
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2786
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2787
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2788
	.long	0x17985
	.long	0x1102f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2789
	.long	0x17e91
	.long	0x11044
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2798
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2799
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB229
	.long	LBE229
	.long	0x11099
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x319
	.long	0x8ce1
	.secrel32	LLST526
	.uleb128 0x39
	.long	LVL2790
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2791
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2792
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2793
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2768
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2769
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2771
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2772
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2774
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2775
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2801
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2802
	.long	0x89a7
	.long	0x110f5
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x39
	.long	LVL2803
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_get_value\0"
	.byte	0x2
	.word	0x2f9
	.byte	0x1
	.long	LFB119
	.long	LFE119
	.secrel32	LLST527
	.byte	0x1
	.long	0x11354
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x2f9
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x2f9
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x2fb
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x2fb
	.long	0x4881
	.secrel32	LLST528
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x2fb
	.long	0x32fe
	.secrel32	LLST529
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x2fb
	.long	0x4881
	.secrel32	LLST530
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x2fb
	.long	0x32fe
	.secrel32	LLST531
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x598
	.long	0x112b0
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x2ff
	.long	0x81dc
	.secrel32	LLST532
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x301
	.long	0xba
	.secrel32	LLST533
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x302
	.long	0x3c83
	.secrel32	LLST534
	.uleb128 0x39
	.long	LVL2816
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2817
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2818
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2820
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2821
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL2822
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2823
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL2825
	.long	0x17ed5
	.long	0x11236
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2827
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2828
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2830
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2831
	.long	0x17162
	.long	0x1126d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2832
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2833
	.long	0x170a1
	.long	0x1128b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2843
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2844
	.long	0x17018
	.uleb128 0x39
	.long	LVL2845
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2846
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB234
	.long	LBE234
	.long	0x112f2
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x307
	.long	0x8ce1
	.secrel32	LLST535
	.uleb128 0x39
	.long	LVL2835
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2836
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2838
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2839
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2805
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2806
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2808
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2809
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2811
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2812
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2848
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2849
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2850
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_get_labels\0"
	.byte	0x2
	.word	0x2e0
	.byte	0x1
	.long	LFB118
	.long	LFE118
	.secrel32	LLST536
	.byte	0x1
	.long	0x11546
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x2e0
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x2e0
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x2e2
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x2e2
	.long	0x4881
	.secrel32	LLST537
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x2e2
	.long	0x32fe
	.secrel32	LLST538
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x2e2
	.long	0x4881
	.secrel32	LLST539
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x2e2
	.long	0x32fe
	.secrel32	LLST540
	.uleb128 0x4a
	.long	LBB236
	.long	LBE236
	.long	0x114e0
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x2e8
	.long	0x81dc
	.secrel32	LLST541
	.uleb128 0x48
	.ascii "l\0"
	.byte	0x1
	.word	0x132
	.long	0x428
	.secrel32	LLST542
	.uleb128 0x39
	.long	LVL2864
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2865
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2866
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2867
	.long	0x17f10
	.uleb128 0x39
	.long	LVL2872
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2873
	.long	0x17aab
	.long	0x11472
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL2874
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2875
	.long	0x16de8
	.long	0x11490
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2877
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2878
	.long	0x16d8e
	.uleb128 0x39
	.long	LVL2879
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2880
	.long	0x16e7e
	.long	0x114cd
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL2883
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2884
	.long	0x16c46
	.byte	0
	.uleb128 0x39
	.long	LVL2852
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2853
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2855
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2856
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2858
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2859
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2888
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2889
	.long	0x89a7
	.long	0x1153c
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL2890
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_get_default_value\0"
	.byte	0x2
	.word	0x2cd
	.byte	0x1
	.long	LFB117
	.long	LFE117
	.secrel32	LLST543
	.byte	0x1
	.long	0x117a3
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x2cd
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x2cd
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x2cf
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x2cf
	.long	0x4881
	.secrel32	LLST544
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x2cf
	.long	0x32fe
	.secrel32	LLST545
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x2cf
	.long	0x4881
	.secrel32	LLST546
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x2cf
	.long	0x32fe
	.secrel32	LLST547
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x5b0
	.long	0x116ff
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x2d3
	.long	0x81dc
	.secrel32	LLST548
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x2d5
	.long	0xba
	.secrel32	LLST549
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x2d6
	.long	0x3c83
	.secrel32	LLST550
	.uleb128 0x39
	.long	LVL2903
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2904
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2905
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2907
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2908
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL2909
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2910
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL2912
	.long	0x17f4c
	.long	0x11685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2914
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2915
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2917
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2918
	.long	0x17162
	.long	0x116bc
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2919
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2920
	.long	0x170a1
	.long	0x116da
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2930
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2931
	.long	0x17018
	.uleb128 0x39
	.long	LVL2932
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2933
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB242
	.long	LBE242
	.long	0x11741
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x2db
	.long	0x8ce1
	.secrel32	LLST551
	.uleb128 0x39
	.long	LVL2922
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2923
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2925
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2926
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2892
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2893
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2895
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2896
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2898
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2899
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2935
	.long	0x16c30
	.uleb128 0x39
	.long	LVL2936
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL2937
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_add\0"
	.byte	0x2
	.word	0x2bb
	.byte	0x1
	.long	LFB116
	.long	LFE116
	.secrel32	LLST552
	.byte	0x1
	.long	0x119a9
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x2bb
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x2bb
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x2bd
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x2bd
	.long	0x4881
	.secrel32	LLST553
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x2bd
	.long	0x32fe
	.secrel32	LLST554
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x2bd
	.long	0x4881
	.secrel32	LLST555
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x2bd
	.long	0x32fe
	.secrel32	LLST556
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x5c8
	.long	0x11901
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x2c1
	.long	0x81dc
	.secrel32	LLST557
	.uleb128 0x49
	.secrel32	LASF58
	.byte	0x2
	.word	0x2c3
	.long	0x27c
	.secrel32	LLST558
	.uleb128 0x39
	.long	LVL2950
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2951
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2952
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL2954
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2955
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2956
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2957
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2958
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2959
	.long	0x16f23
	.long	0x118d9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL2960
	.long	0x17f8f
	.long	0x118ee
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL2969
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2970
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB245
	.long	LBE245
	.long	0x11943
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x2c8
	.long	0x8ce1
	.secrel32	LLST559
	.uleb128 0x39
	.long	LVL2961
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2962
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2963
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2964
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2939
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2940
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2942
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2943
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2945
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2946
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2972
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2973
	.long	0x89a7
	.long	0x1199f
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC25
	.byte	0
	.uleb128 0x39
	.long	LVL2974
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_choice_new\0"
	.byte	0x2
	.word	0x29e
	.byte	0x1
	.long	LFB115
	.long	LFE115
	.secrel32	LLST560
	.byte	0x1
	.long	0x11ccd
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x29e
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x29e
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x2a0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x2a0
	.long	0x4881
	.secrel32	LLST561
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x2a0
	.long	0x32fe
	.secrel32	LLST562
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x2a0
	.long	0x4881
	.secrel32	LLST563
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x2a0
	.long	0x32fe
	.secrel32	LLST564
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x5e0
	.long	0x11c29
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x2a4
	.long	0x27c
	.secrel32	LLST565
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x2a6
	.long	0x27c
	.secrel32	LLST566
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x2a8
	.long	0xba
	.secrel32	LLST567
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x2a9
	.long	0x81dc
	.secrel32	LLST568
	.uleb128 0x39
	.long	LVL2989
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2990
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2991
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2992
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2993
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL2994
	.long	0x16f23
	.long	0x11ae3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL2996
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2997
	.long	0x16d65
	.uleb128 0x39
	.long	LVL2998
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2999
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3002
	.long	0x17fc5
	.long	0x11b23
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3004
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3005
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3007
	.long	0x16db6
	.long	0x11b54
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL3008
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3009
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3010
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3011
	.long	0x16de8
	.long	0x11b84
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3019
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3020
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3022
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3023
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3024
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3025
	.long	0x16f23
	.long	0x11bd2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3028
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3029
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3031
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3032
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3033
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3034
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3035
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3036
	.long	0x17985
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB248
	.long	LBE248
	.long	0x11c6b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x2b6
	.long	0x8ce1
	.secrel32	LLST569
	.uleb128 0x39
	.long	LVL3012
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3013
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3014
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3015
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL2976
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2977
	.long	0x16c46
	.uleb128 0x39
	.long	LVL2979
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2980
	.long	0x16d07
	.uleb128 0x39
	.long	LVL2982
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL2983
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3038
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3039
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3040
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC34
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_bool_set_value\0"
	.byte	0x2
	.word	0x28c
	.byte	0x1
	.long	LFB114
	.long	LFE114
	.secrel32	LLST570
	.byte	0x1
	.long	0x11f49
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x28c
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x28c
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x28e
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x28e
	.long	0x4881
	.secrel32	LLST571
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x28e
	.long	0x32fe
	.secrel32	LLST572
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x28e
	.long	0x4881
	.secrel32	LLST573
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x28e
	.long	0x32fe
	.secrel32	LLST574
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x5f8
	.long	0x11ea5
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x292
	.long	0x81dc
	.secrel32	LLST575
	.uleb128 0x49
	.secrel32	LASF78
	.byte	0x2
	.word	0x294
	.long	0x2ad
	.secrel32	LLST576
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x610
	.long	0x11ddc
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x294
	.long	0x61b3
	.secrel32	LLST577
	.uleb128 0x39
	.long	LVL3062
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3063
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3087
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3088
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3053
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3054
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3055
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3057
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3058
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3060
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3061
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3067
	.long	0x18004
	.long	0x11e30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3075
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3076
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3077
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3078
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3079
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3080
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3081
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3082
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3083
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3084
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3085
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3086
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB254
	.long	LBE254
	.long	0x11ee7
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x299
	.long	0x8ce1
	.secrel32	LLST578
	.uleb128 0x39
	.long	LVL3068
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3069
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3070
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3071
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3042
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3043
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3045
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3046
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3048
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3049
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3090
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3091
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3092
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC15
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_bool_set_default_value\0"
	.byte	0x2
	.word	0x27a
	.byte	0x1
	.long	LFB113
	.long	LFE113
	.secrel32	LLST579
	.byte	0x1
	.long	0x121cd
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x27a
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x27a
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x27c
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x27c
	.long	0x4881
	.secrel32	LLST580
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x27c
	.long	0x32fe
	.secrel32	LLST581
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x27c
	.long	0x4881
	.secrel32	LLST582
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x27c
	.long	0x32fe
	.secrel32	LLST583
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x630
	.long	0x12129
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x280
	.long	0x81dc
	.secrel32	LLST584
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x282
	.long	0x2ad
	.secrel32	LLST585
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x648
	.long	0x12060
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x282
	.long	0x61b3
	.secrel32	LLST586
	.uleb128 0x39
	.long	LVL3113
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3114
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3139
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3140
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3105
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3106
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3107
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3109
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3110
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3111
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3112
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3118
	.long	0x1803e
	.long	0x120b4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3127
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3128
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3129
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3130
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3131
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3132
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3133
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3134
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3135
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3136
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3137
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3138
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB260
	.long	LBE260
	.long	0x1216b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x287
	.long	0x8ce1
	.secrel32	LLST587
	.uleb128 0x39
	.long	LVL3119
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3120
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3121
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3122
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3094
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3095
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3097
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3098
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3100
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3101
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3142
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3143
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3144
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_bool_get_value\0"
	.byte	0x2
	.word	0x268
	.byte	0x1
	.long	LFB112
	.long	LFE112
	.secrel32	LLST588
	.byte	0x1
	.long	0x123a1
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x268
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x268
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x26a
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x26a
	.long	0x4881
	.secrel32	LLST589
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x26a
	.long	0x32fe
	.secrel32	LLST590
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x26a
	.long	0x4881
	.secrel32	LLST591
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x26a
	.long	0x32fe
	.secrel32	LLST592
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x668
	.long	0x122f9
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x26e
	.long	0x81dc
	.secrel32	LLST593
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x270
	.long	0x2ad
	.secrel32	LLST594
	.uleb128 0x39
	.long	LVL3157
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3158
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3160
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3161
	.long	0x18080
	.uleb128 0x39
	.long	LVL3163
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3164
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3166
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3167
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL3176
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3177
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB263
	.long	LBE263
	.long	0x1233b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x275
	.long	0x8ce1
	.secrel32	LLST595
	.uleb128 0x39
	.long	LVL3169
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3170
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3171
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3172
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3146
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3147
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3149
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3150
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3152
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3153
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3179
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3180
	.long	0x89a7
	.long	0x12397
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL3181
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_bool_get_default_value\0"
	.byte	0x2
	.word	0x256
	.byte	0x1
	.long	LFB111
	.long	LFE111
	.secrel32	LLST596
	.byte	0x1
	.long	0x1257d
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x256
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x256
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x258
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x258
	.long	0x4881
	.secrel32	LLST597
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x258
	.long	0x32fe
	.secrel32	LLST598
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x258
	.long	0x4881
	.secrel32	LLST599
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x258
	.long	0x32fe
	.secrel32	LLST600
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x680
	.long	0x124d5
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x25c
	.long	0x81dc
	.secrel32	LLST601
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x25e
	.long	0x2ad
	.secrel32	LLST602
	.uleb128 0x39
	.long	LVL3194
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3195
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3197
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3198
	.long	0x180b9
	.uleb128 0x39
	.long	LVL3200
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3201
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3203
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3204
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL3213
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3214
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB266
	.long	LBE266
	.long	0x12517
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x263
	.long	0x8ce1
	.secrel32	LLST603
	.uleb128 0x39
	.long	LVL3206
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3207
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3208
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3209
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3183
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3184
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3186
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3187
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3189
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3190
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3216
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3217
	.long	0x89a7
	.long	0x12573
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL3218
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_bool_new\0"
	.byte	0x2
	.word	0x239
	.byte	0x1
	.long	LFB110
	.long	LFE110
	.secrel32	LLST604
	.byte	0x1
	.long	0x12927
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x239
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x239
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x23b
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x23b
	.long	0x4881
	.secrel32	LLST605
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x23b
	.long	0x32fe
	.secrel32	LLST606
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x23b
	.long	0x4881
	.secrel32	LLST607
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x23b
	.long	0x32fe
	.secrel32	LLST608
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x698
	.long	0x1287f
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x23f
	.long	0x27c
	.secrel32	LLST609
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x241
	.long	0x27c
	.secrel32	LLST610
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x243
	.long	0x2ad
	.secrel32	LLST611
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x244
	.long	0x81dc
	.secrel32	LLST612
	.uleb128 0x4a
	.long	LBB269
	.long	LBE269
	.long	0x126a9
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x249
	.long	0x61b3
	.secrel32	LLST613
	.uleb128 0x39
	.long	LVL3278
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3279
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3282
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3283
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3233
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3234
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3235
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3236
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3237
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3238
	.long	0x16f23
	.long	0x126f7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3240
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3241
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3242
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3243
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3247
	.long	0x180fa
	.long	0x12737
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3249
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3250
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3252
	.long	0x16db6
	.long	0x12768
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL3253
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3254
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3255
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3256
	.long	0x16de8
	.long	0x12798
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3264
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3265
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3267
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3268
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3269
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3270
	.long	0x16f23
	.long	0x127e6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3273
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3274
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3276
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3277
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3284
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3285
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3286
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3287
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3288
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3289
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3290
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3291
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3292
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3293
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3294
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3295
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB270
	.long	LBE270
	.long	0x128c1
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x251
	.long	0x8ce1
	.secrel32	LLST614
	.uleb128 0x39
	.long	LVL3257
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3258
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3259
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3260
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3220
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3221
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3223
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3224
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3226
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3227
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3297
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3298
	.long	0x89a7
	.long	0x1291d
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC35
	.byte	0
	.uleb128 0x39
	.long	LVL3299
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_set_value\0"
	.byte	0x2
	.word	0x227
	.byte	0x1
	.long	LFB109
	.long	LFE109
	.secrel32	LLST615
	.byte	0x1
	.long	0x12af0
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x227
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x227
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x229
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x229
	.long	0x4881
	.secrel32	LLST616
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x229
	.long	0x32fe
	.secrel32	LLST617
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x229
	.long	0x4881
	.secrel32	LLST618
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x229
	.long	0x32fe
	.secrel32	LLST619
	.uleb128 0x4a
	.long	LBB272
	.long	LBE272
	.long	0x12a47
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x22d
	.long	0x81dc
	.secrel32	LLST620
	.uleb128 0x49
	.secrel32	LASF78
	.byte	0x2
	.word	0x22f
	.long	0x81af
	.secrel32	LLST621
	.uleb128 0x39
	.long	LVL3312
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3313
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3314
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3316
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3317
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3318
	.long	0x16ef8
	.uleb128 0x3c
	.long	LVL3319
	.long	0x18137
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB273
	.long	LBE273
	.long	0x12a89
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x234
	.long	0x8ce1
	.secrel32	LLST622
	.uleb128 0x39
	.long	LVL3320
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3321
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3323
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3324
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3301
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3302
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3304
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3305
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3307
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3308
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3328
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3329
	.long	0x89a7
	.long	0x12ae6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC15
	.byte	0
	.uleb128 0x39
	.long	LVL3330
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_set_show_all\0"
	.byte	0x2
	.word	0x215
	.byte	0x1
	.long	LFB108
	.long	LFE108
	.secrel32	LLST623
	.byte	0x1
	.long	0x12d72
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x215
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x215
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x217
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x217
	.long	0x4881
	.secrel32	LLST624
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x217
	.long	0x32fe
	.secrel32	LLST625
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x217
	.long	0x4881
	.secrel32	LLST626
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x217
	.long	0x32fe
	.secrel32	LLST627
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x6b0
	.long	0x12cce
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x21b
	.long	0x81dc
	.secrel32	LLST628
	.uleb128 0x49
	.secrel32	LASF80
	.byte	0x2
	.word	0x21d
	.long	0x2ad
	.secrel32	LLST629
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x6c8
	.long	0x12c05
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x21d
	.long	0x61b3
	.secrel32	LLST630
	.uleb128 0x39
	.long	LVL3351
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3352
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3377
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3378
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3343
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3344
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3345
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3347
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3348
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3349
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3350
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3356
	.long	0x18174
	.long	0x12c59
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3365
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3366
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3367
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3368
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3369
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3370
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3371
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3372
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3373
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3374
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3375
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3376
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB278
	.long	LBE278
	.long	0x12d10
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x222
	.long	0x8ce1
	.secrel32	LLST631
	.uleb128 0x39
	.long	LVL3357
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3358
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3359
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3360
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3332
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3333
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3335
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3336
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3338
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3339
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3380
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3381
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3382
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC36
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_set_default_value\0"
	.byte	0x2
	.word	0x203
	.byte	0x1
	.long	LFB107
	.long	LFE107
	.secrel32	LLST632
	.byte	0x1
	.long	0x12f43
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x203
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x203
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x205
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x205
	.long	0x4881
	.secrel32	LLST633
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x205
	.long	0x32fe
	.secrel32	LLST634
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x205
	.long	0x4881
	.secrel32	LLST635
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x205
	.long	0x32fe
	.secrel32	LLST636
	.uleb128 0x4a
	.long	LBB280
	.long	LBE280
	.long	0x12e9a
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x209
	.long	0x81dc
	.secrel32	LLST637
	.uleb128 0x49
	.secrel32	LASF77
	.byte	0x2
	.word	0x20b
	.long	0x81af
	.secrel32	LLST638
	.uleb128 0x39
	.long	LVL3395
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3396
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3397
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3399
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3400
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3401
	.long	0x16ef8
	.uleb128 0x3c
	.long	LVL3402
	.long	0x181b4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB281
	.long	LBE281
	.long	0x12edc
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x210
	.long	0x8ce1
	.secrel32	LLST639
	.uleb128 0x39
	.long	LVL3403
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3404
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3406
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3407
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3384
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3385
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3387
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3388
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3390
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3391
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3411
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3412
	.long	0x89a7
	.long	0x12f39
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x39
	.long	LVL3413
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_get_value\0"
	.byte	0x2
	.word	0x1f0
	.byte	0x1
	.long	LFB106
	.long	LFE106
	.secrel32	LLST640
	.byte	0x1
	.long	0x13145
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x1f0
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x1f0
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x1f2
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x1f2
	.long	0x4881
	.secrel32	LLST641
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x1f2
	.long	0x32fe
	.secrel32	LLST642
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x1f2
	.long	0x4881
	.secrel32	LLST643
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x1f2
	.long	0x32fe
	.secrel32	LLST644
	.uleb128 0x4a
	.long	LBB282
	.long	LBE282
	.long	0x1309d
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x1f6
	.long	0x81dc
	.secrel32	LLST645
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x1f8
	.long	0x81af
	.secrel32	LLST646
	.uleb128 0x39
	.long	LVL3426
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3427
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3429
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3430
	.long	0x181f9
	.uleb128 0x39
	.long	LVL3432
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3433
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3435
	.long	0x16db6
	.long	0x13070
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC8
	.byte	0
	.uleb128 0x39
	.long	LVL3436
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3437
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3438
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3439
	.long	0x16de8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB283
	.long	LBE283
	.long	0x130df
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x1fe
	.long	0x8ce1
	.secrel32	LLST647
	.uleb128 0x39
	.long	LVL3440
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3441
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3442
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3443
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3415
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3416
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3418
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3419
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3421
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3422
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3447
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3448
	.long	0x89a7
	.long	0x1313b
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL3449
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_get_show_all\0"
	.byte	0x2
	.word	0x1de
	.byte	0x1
	.long	LFB105
	.long	LFE105
	.secrel32	LLST648
	.byte	0x1
	.long	0x1331f
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x1de
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x1de
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x1e0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x1e0
	.long	0x4881
	.secrel32	LLST649
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x1e0
	.long	0x32fe
	.secrel32	LLST650
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x1e0
	.long	0x4881
	.secrel32	LLST651
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x1e0
	.long	0x32fe
	.secrel32	LLST652
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x6e8
	.long	0x13277
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x1e4
	.long	0x81dc
	.secrel32	LLST653
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x1e6
	.long	0x2ad
	.secrel32	LLST654
	.uleb128 0x39
	.long	LVL3462
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3463
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3465
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3466
	.long	0x18235
	.uleb128 0x39
	.long	LVL3468
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3469
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3471
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3472
	.long	0x16fa6
	.uleb128 0x39
	.long	LVL3481
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3482
	.long	0x16fcb
	.byte	0
	.uleb128 0x4a
	.long	LBB285
	.long	LBE285
	.long	0x132b9
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x1eb
	.long	0x8ce1
	.secrel32	LLST655
	.uleb128 0x39
	.long	LVL3474
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3475
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3476
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3477
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3451
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3452
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3454
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3455
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3457
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3458
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3484
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3485
	.long	0x89a7
	.long	0x13315
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL3486
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_get_filter\0"
	.byte	0x2
	.word	0x1ca
	.byte	0x1
	.long	LFB104
	.long	LFE104
	.secrel32	LLST656
	.byte	0x1
	.long	0x13576
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x1ca
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x1ca
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x1cc
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x1cc
	.long	0x4881
	.secrel32	LLST657
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x1cc
	.long	0x32fe
	.secrel32	LLST658
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x1cc
	.long	0x4881
	.secrel32	LLST659
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x1cc
	.long	0x32fe
	.secrel32	LLST660
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x700
	.long	0x134d2
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x1d0
	.long	0x81dc
	.secrel32	LLST661
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x1d2
	.long	0x69a
	.secrel32	LLST662
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x1d3
	.long	0x3c83
	.secrel32	LLST663
	.uleb128 0x39
	.long	LVL3499
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3500
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3501
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3503
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3504
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL3505
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3506
	.long	0x170c7
	.uleb128 0x3a
	.long	LVL3508
	.long	0x18274
	.long	0x13458
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3510
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3511
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3513
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3514
	.long	0x17162
	.long	0x1348f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3515
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3516
	.long	0x170a1
	.long	0x134ad
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3526
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3527
	.long	0x17018
	.uleb128 0x39
	.long	LVL3528
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3529
	.long	0x16ff1
	.byte	0
	.uleb128 0x4a
	.long	LBB290
	.long	LBE290
	.long	0x13514
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x1d9
	.long	0x8ce1
	.secrel32	LLST664
	.uleb128 0x39
	.long	LVL3518
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3519
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3521
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3522
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3488
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3489
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3491
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3492
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3494
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3495
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3531
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3532
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3533
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_get_default_value\0"
	.byte	0x2
	.word	0x1b7
	.byte	0x1
	.long	LFB103
	.long	LFE103
	.secrel32	LLST665
	.byte	0x1
	.long	0x13780
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x1b7
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x1b7
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x1b9
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x1b9
	.long	0x4881
	.secrel32	LLST666
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x1b9
	.long	0x32fe
	.secrel32	LLST667
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x1b9
	.long	0x4881
	.secrel32	LLST668
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x1b9
	.long	0x32fe
	.secrel32	LLST669
	.uleb128 0x4a
	.long	LBB292
	.long	LBE292
	.long	0x136d8
	.uleb128 0x49
	.secrel32	LASF86
	.byte	0x2
	.word	0x1bd
	.long	0x81dc
	.secrel32	LLST670
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x1bf
	.long	0x81af
	.secrel32	LLST671
	.uleb128 0x39
	.long	LVL3546
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3547
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3549
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3550
	.long	0x182b1
	.uleb128 0x39
	.long	LVL3552
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3553
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3555
	.long	0x16db6
	.long	0x136ab
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC8
	.byte	0
	.uleb128 0x39
	.long	LVL3556
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3557
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3558
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3559
	.long	0x16de8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB293
	.long	LBE293
	.long	0x1371a
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x1c5
	.long	0x8ce1
	.secrel32	LLST672
	.uleb128 0x39
	.long	LVL3560
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3561
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3562
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3563
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3535
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3536
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3538
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3539
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3541
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3542
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3567
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3568
	.long	0x89a7
	.long	0x13776
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x39
	.long	LVL3569
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request__Field_account_new\0"
	.byte	0x2
	.word	0x19a
	.byte	0x1
	.long	LFB102
	.long	LFE102
	.secrel32	LLST673
	.byte	0x1
	.long	0x13a6a
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x19a
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x19a
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x19c
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x19c
	.long	0x4881
	.secrel32	LLST674
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x19c
	.long	0x32fe
	.secrel32	LLST675
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x19c
	.long	0x4881
	.secrel32	LLST676
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x19c
	.long	0x32fe
	.secrel32	LLST677
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x718
	.long	0x139c6
	.uleb128 0x48
	.ascii "id\0"
	.byte	0x2
	.word	0x1a0
	.long	0x27c
	.secrel32	LLST678
	.uleb128 0x49
	.secrel32	LASF88
	.byte	0x2
	.word	0x1a2
	.long	0x27c
	.secrel32	LLST679
	.uleb128 0x49
	.secrel32	LASF63
	.byte	0x2
	.word	0x1a4
	.long	0x81af
	.secrel32	LLST680
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x1a5
	.long	0x81dc
	.secrel32	LLST681
	.uleb128 0x39
	.long	LVL3584
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3585
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3586
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3587
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3588
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3589
	.long	0x16f23
	.long	0x138bb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3591
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3592
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3593
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3594
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3597
	.long	0x182f5
	.long	0x138fb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3599
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3600
	.long	0x16d65
	.uleb128 0x3a
	.long	LVL3603
	.long	0x16db6
	.long	0x1392c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x39
	.long	LVL3604
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3605
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3606
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3607
	.long	0x16de8
	.long	0x1395c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3615
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3616
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3618
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3619
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3620
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3621
	.long	0x16f23
	.long	0x139aa
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3624
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3625
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3626
	.long	0x16ef8
	.byte	0
	.uleb128 0x4a
	.long	LBB295
	.long	LBE295
	.long	0x13a08
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x1b2
	.long	0x8ce1
	.secrel32	LLST682
	.uleb128 0x39
	.long	LVL3608
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3609
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3610
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3611
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3571
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3572
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3574
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3575
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3577
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3578
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3628
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3629
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3630
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC37
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request_close_with_handle\0"
	.byte	0x2
	.word	0x18a
	.byte	0x1
	.long	LFB101
	.long	LFE101
	.secrel32	LLST683
	.byte	0x1
	.long	0x13c33
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x18a
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x18a
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x18c
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x18c
	.long	0x4881
	.secrel32	LLST684
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x18c
	.long	0x32fe
	.secrel32	LLST685
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x18c
	.long	0x4881
	.secrel32	LLST686
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x18c
	.long	0x32fe
	.secrel32	LLST687
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x730
	.long	0x13b8b
	.uleb128 0x49
	.secrel32	LASF1
	.byte	0x2
	.word	0x190
	.long	0x165
	.secrel32	LLST688
	.uleb128 0x39
	.long	LVL3643
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3644
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3645
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3646
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3647
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3648
	.long	0x17985
	.long	0x13b6f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3649
	.long	0x18335
	.uleb128 0x39
	.long	LVL3657
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3658
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB298
	.long	LBE298
	.long	0x13bcd
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x195
	.long	0x8ce1
	.secrel32	LLST689
	.uleb128 0x39
	.long	LVL3650
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3651
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3652
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3653
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3632
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3633
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3635
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3636
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3638
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3639
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3659
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3660
	.long	0x89a7
	.long	0x13c29
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC38
	.byte	0
	.uleb128 0x39
	.long	LVL3661
	.long	0x16c30
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request_close\0"
	.byte	0x2
	.word	0x178
	.byte	0x1
	.long	LFB100
	.long	LFE100
	.secrel32	LLST690
	.byte	0x1
	.long	0x13e67
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x178
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x178
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x17a
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x17a
	.long	0x4881
	.secrel32	LLST691
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x17a
	.long	0x32fe
	.secrel32	LLST692
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x17a
	.long	0x4881
	.secrel32	LLST693
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x17a
	.long	0x32fe
	.secrel32	LLST694
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x748
	.long	0x13dc3
	.uleb128 0x49
	.secrel32	LASF27
	.byte	0x2
	.word	0x17e
	.long	0x8264
	.secrel32	LLST695
	.uleb128 0x48
	.ascii "uihandle\0"
	.byte	0x2
	.word	0x180
	.long	0x165
	.secrel32	LLST696
	.uleb128 0x39
	.long	LVL3674
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3675
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3676
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3677
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3678
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3679
	.long	0x17985
	.long	0x13d41
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3681
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3682
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3683
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3684
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3685
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3686
	.long	0x17985
	.long	0x13d89
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.long	LVL3687
	.long	0x18367
	.long	0x13d9e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3696
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3697
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3699
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3700
	.long	0x16d65
	.byte	0
	.uleb128 0x4a
	.long	LBB301
	.long	LBE301
	.long	0x13e05
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x185
	.long	0x8ce1
	.secrel32	LLST697
	.uleb128 0x39
	.long	LVL3688
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3689
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3690
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3691
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3663
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3664
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3666
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3667
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3669
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3670
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3702
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3703
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3704
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC39
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request_fields\0"
	.byte	0x2
	.word	0x14a
	.byte	0x1
	.long	LFB99
	.long	LFE99
	.secrel32	LLST698
	.byte	0x1
	.long	0x1443a
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x14a
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x14a
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x14c
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x14c
	.long	0x4881
	.secrel32	LLST699
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x14c
	.long	0x32fe
	.secrel32	LLST700
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x14c
	.long	0x4881
	.secrel32	LLST701
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x14c
	.long	0x32fe
	.secrel32	LLST702
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x760
	.long	0x14396
	.uleb128 0x49
	.secrel32	LASF1
	.byte	0x2
	.word	0x150
	.long	0x81c6
	.secrel32	LLST703
	.uleb128 0x49
	.secrel32	LASF69
	.byte	0x2
	.word	0x152
	.long	0x27c
	.secrel32	LLST704
	.uleb128 0x48
	.ascii "primary\0"
	.byte	0x2
	.word	0x154
	.long	0x27c
	.secrel32	LLST705
	.uleb128 0x49
	.secrel32	LASF89
	.byte	0x2
	.word	0x156
	.long	0x27c
	.secrel32	LLST706
	.uleb128 0x49
	.secrel32	LASF73
	.byte	0x2
	.word	0x158
	.long	0x8200
	.secrel32	LLST707
	.uleb128 0x48
	.ascii "ok_text\0"
	.byte	0x2
	.word	0x15a
	.long	0x27c
	.secrel32	LLST708
	.uleb128 0x48
	.ascii "ok_cb\0"
	.byte	0x2
	.word	0x15c
	.long	0x3806
	.secrel32	LLST709
	.uleb128 0x49
	.secrel32	LASF90
	.byte	0x2
	.word	0x15e
	.long	0x27c
	.secrel32	LLST710
	.uleb128 0x49
	.secrel32	LASF91
	.byte	0x2
	.word	0x160
	.long	0x3806
	.secrel32	LLST711
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x162
	.long	0x165
	.secrel32	LLST712
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x163
	.long	0x3c83
	.secrel32	LLST713
	.uleb128 0x38
	.ascii "gpr\0"
	.byte	0x1
	.byte	0xba
	.long	0x84b1
	.secrel32	LLST714
	.uleb128 0x4b
	.secrel32	LASF92
	.byte	0x1
	.byte	0xbb
	.long	0x159
	.secrel32	LLST715
	.uleb128 0x39
	.long	LVL3717
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3718
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3720
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3722
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3723
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3724
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3725
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3726
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3727
	.long	0x16f23
	.long	0x1404a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3729
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3730
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3731
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3732
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3734
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3735
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3736
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3737
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3739
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3740
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3741
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3743
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3744
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3745
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3746
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3748
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3749
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3751
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3752
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3753
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3754
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3756
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3757
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3759
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3760
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL3761
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3762
	.long	0x17018
	.uleb128 0x39
	.long	LVL3763
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3764
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL3766
	.long	0x18392
	.uleb128 0x39
	.long	LVL3767
	.long	0x183ba
	.uleb128 0x3a
	.long	LVL3768
	.long	0x183ec
	.long	0x14175
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3a
	.long	LVL3770
	.long	0x18409
	.long	0x14193
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x3a
	.long	LVL3771
	.long	0x18409
	.long	0x141b1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL3772
	.long	0x16c19
	.uleb128 0x3a
	.long	LVL3773
	.long	0x1843a
	.long	0x14230
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_ok_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_cancel_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.byte	0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL3775
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3776
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3778
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3779
	.long	0x17162
	.long	0x14267
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3780
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3781
	.long	0x170a1
	.long	0x14285
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3791
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3792
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3794
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3795
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3796
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3797
	.long	0x16f23
	.long	0x142d3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3799
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3800
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3801
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3802
	.long	0x16f23
	.long	0x1430f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3804
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3805
	.long	0x170c7
	.uleb128 0x39
	.long	LVL3807
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3808
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3809
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3810
	.long	0x16f23
	.long	0x1435d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3812
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3813
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3814
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3815
	.long	0x16f23
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB306
	.long	LBE306
	.long	0x143d8
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x173
	.long	0x8ce1
	.secrel32	LLST716
	.uleb128 0x39
	.long	LVL3783
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3784
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3786
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3787
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3706
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3707
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3709
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3710
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3712
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3713
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3817
	.long	0x16c30
	.uleb128 0x39
	.long	LVL3818
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3819
	.long	0x89a7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC40
	.byte	0
	.byte	0
	.uleb128 0x44
	.ascii "XS_Purple__Request_file\0"
	.byte	0x2
	.word	0x122
	.byte	0x1
	.long	LFB98
	.long	LFE98
	.secrel32	LLST717
	.byte	0x1
	.long	0x14965
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x122
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x122
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x124
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.ascii "sp\0"
	.byte	0x2
	.word	0x124
	.long	0x4881
	.secrel32	LLST718
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x124
	.long	0x32fe
	.secrel32	LLST719
	.uleb128 0x49
	.secrel32	LASF32
	.byte	0x2
	.word	0x124
	.long	0x4881
	.secrel32	LLST720
	.uleb128 0x49
	.secrel32	LASF79
	.byte	0x2
	.word	0x124
	.long	0x32fe
	.secrel32	LLST721
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x778
	.long	0x148bd
	.uleb128 0x49
	.secrel32	LASF1
	.byte	0x2
	.word	0x128
	.long	0x81c6
	.secrel32	LLST722
	.uleb128 0x49
	.secrel32	LASF69
	.byte	0x2
	.word	0x12a
	.long	0x27c
	.secrel32	LLST723
	.uleb128 0x48
	.ascii "filename\0"
	.byte	0x2
	.word	0x12c
	.long	0x27c
	.secrel32	LLST724
	.uleb128 0x48
	.ascii "savedialog\0"
	.byte	0x2
	.word	0x12e
	.long	0x2ad
	.secrel32	LLST725
	.uleb128 0x48
	.ascii "ok_cb\0"
	.byte	0x2
	.word	0x130
	.long	0x3806
	.secrel32	LLST726
	.uleb128 0x49
	.secrel32	LASF91
	.byte	0x2
	.word	0x132
	.long	0x3806
	.secrel32	LLST727
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x134
	.long	0x165
	.secrel32	LLST728
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x135
	.long	0x3c83
	.secrel32	LLST729
	.uleb128 0x38
	.ascii "gpr\0"
	.byte	0x1
	.byte	0xa0
	.long	0x84b1
	.secrel32	LLST730
	.uleb128 0x4b
	.secrel32	LASF92
	.byte	0x1
	.byte	0xa1
	.long	0x159
	.secrel32	LLST731
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x790
	.long	0x145c4
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x12e
	.long	0x61b3
	.secrel32	LLST732
	.uleb128 0x39
	.long	LVL3853
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3854
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3921
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3922
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3832
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3833
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3834
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3836
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3837
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3838
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3839
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3840
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3841
	.long	0x16f23
	.long	0x1462d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3843
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3844
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3845
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3846
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3848
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3849
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3851
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3852
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3858
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3859
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3861
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3862
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3864
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3865
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL3866
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3867
	.long	0x17018
	.uleb128 0x39
	.long	LVL3868
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3869
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL3871
	.long	0x18392
	.uleb128 0x39
	.long	LVL3872
	.long	0x183ba
	.uleb128 0x3a
	.long	LVL3873
	.long	0x183ec
	.long	0x146f5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3a
	.long	LVL3876
	.long	0x18409
	.long	0x14713
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.uleb128 0x3a
	.long	LVL3877
	.long	0x18409
	.long	0x14730
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL3878
	.long	0x16c19
	.uleb128 0x3a
	.long	LVL3879
	.long	0x184a1
	.long	0x14793
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_ok_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_cancel_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3881
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3882
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3884
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3885
	.long	0x17162
	.long	0x147ca
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3886
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3887
	.long	0x170a1
	.long	0x147e8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL3898
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3899
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3901
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3902
	.long	0x170c7
	.uleb128 0x39
	.long	LVL3904
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3905
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3906
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3907
	.long	0x16f23
	.long	0x14848
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3909
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3910
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3911
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3912
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3913
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3914
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3915
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3916
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3917
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3918
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3919
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL3920
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB314
	.long	LBE314
	.long	0x148ff
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x145
	.long	0x8ce1
	.secrel32	LLST733
	.uleb128 0x39
	.long	LVL3889
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3890
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3892
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3893
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3821
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3822
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3824
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3825
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3827
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3828
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3924
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3925
	.long	0x89a7
	.long	0x1495b
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC41
	.byte	0
	.uleb128 0x39
	.long	LVL3926
	.long	0x16c30
	.byte	0
	.uleb128 0x35
	.ascii "XS_Purple__Request_input\0"
	.byte	0x2
	.byte	0xee
	.byte	0x1
	.long	LFB97
	.long	LFE97
	.secrel32	LLST734
	.byte	0x1
	.long	0x151d1
	.uleb128 0x3d
	.secrel32	LASF81
	.byte	0x2
	.byte	0xee
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4c
	.ascii "cv\0"
	.byte	0x2
	.byte	0xee
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4d
	.secrel32	LASF84
	.byte	0x2
	.byte	0xf0
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.ascii "sp\0"
	.byte	0x2
	.byte	0xf0
	.long	0x4881
	.secrel32	LLST735
	.uleb128 0x38
	.ascii "ax\0"
	.byte	0x2
	.byte	0xf0
	.long	0x32fe
	.secrel32	LLST736
	.uleb128 0x4b
	.secrel32	LASF32
	.byte	0x2
	.byte	0xf0
	.long	0x4881
	.secrel32	LLST737
	.uleb128 0x4b
	.secrel32	LASF79
	.byte	0x2
	.byte	0xf0
	.long	0x32fe
	.secrel32	LLST738
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x7b0
	.long	0x15129
	.uleb128 0x4b
	.secrel32	LASF1
	.byte	0x2
	.byte	0xf4
	.long	0x81c6
	.secrel32	LLST739
	.uleb128 0x4b
	.secrel32	LASF69
	.byte	0x2
	.byte	0xf6
	.long	0x27c
	.secrel32	LLST740
	.uleb128 0x38
	.ascii "primary\0"
	.byte	0x2
	.byte	0xf8
	.long	0x27c
	.secrel32	LLST741
	.uleb128 0x4b
	.secrel32	LASF89
	.byte	0x2
	.byte	0xfa
	.long	0x27c
	.secrel32	LLST742
	.uleb128 0x4b
	.secrel32	LASF77
	.byte	0x2
	.byte	0xfc
	.long	0x27c
	.secrel32	LLST743
	.uleb128 0x4b
	.secrel32	LASF74
	.byte	0x2
	.byte	0xfe
	.long	0x2ad
	.secrel32	LLST744
	.uleb128 0x49
	.secrel32	LASF75
	.byte	0x2
	.word	0x100
	.long	0x2ad
	.secrel32	LLST745
	.uleb128 0x48
	.ascii "hint\0"
	.byte	0x2
	.word	0x102
	.long	0x2f3
	.secrel32	LLST746
	.uleb128 0x48
	.ascii "ok_text\0"
	.byte	0x2
	.word	0x104
	.long	0x27c
	.secrel32	LLST747
	.uleb128 0x48
	.ascii "ok_cb\0"
	.byte	0x2
	.word	0x106
	.long	0x3806
	.secrel32	LLST748
	.uleb128 0x49
	.secrel32	LASF90
	.byte	0x2
	.word	0x108
	.long	0x27c
	.secrel32	LLST749
	.uleb128 0x49
	.secrel32	LASF91
	.byte	0x2
	.word	0x10a
	.long	0x3806
	.secrel32	LLST750
	.uleb128 0x49
	.secrel32	LASF82
	.byte	0x2
	.word	0x10c
	.long	0x165
	.secrel32	LLST751
	.uleb128 0x49
	.secrel32	LASF85
	.byte	0x2
	.word	0x10d
	.long	0x3c83
	.secrel32	LLST752
	.uleb128 0x38
	.ascii "gpr\0"
	.byte	0x1
	.byte	0x89
	.long	0x84b1
	.secrel32	LLST753
	.uleb128 0x4b
	.secrel32	LASF92
	.byte	0x1
	.byte	0x8a
	.long	0x159
	.secrel32	LLST754
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x7c8
	.long	0x14b3e
	.uleb128 0x4b
	.secrel32	LASF87
	.byte	0x2
	.byte	0xfe
	.long	0x61b3
	.secrel32	LLST755
	.uleb128 0x39
	.long	LVL3970
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3971
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4103
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4104
	.long	0x16d65
	.byte	0
	.uleb128 0x37
	.secrel32	Ldebug_ranges0+0x7e8
	.long	0x14b7c
	.uleb128 0x49
	.secrel32	LASF87
	.byte	0x2
	.word	0x100
	.long	0x61b3
	.secrel32	LLST756
	.uleb128 0x39
	.long	LVL3979
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3980
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4106
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4107
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3939
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3940
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3942
	.long	0x16ef8
	.uleb128 0x39
	.long	LVL3944
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3945
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3946
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3947
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3948
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL3949
	.long	0x16f23
	.long	0x14be5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL3951
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3952
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3953
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3954
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3956
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3957
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3958
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3959
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3961
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3962
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3963
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3964
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3966
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3967
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3968
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3969
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3975
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3976
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3977
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3978
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3984
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3985
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3986
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3987
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3989
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3990
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3991
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3992
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3994
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3995
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3997
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3998
	.long	0x16d65
	.uleb128 0x39
	.long	LVL3999
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4000
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4002
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4003
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4005
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4006
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL4007
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4008
	.long	0x17018
	.uleb128 0x39
	.long	LVL4009
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4010
	.long	0x16ff1
	.uleb128 0x39
	.long	LVL4012
	.long	0x18392
	.uleb128 0x39
	.long	LVL4013
	.long	0x183ba
	.uleb128 0x3a
	.long	LVL4014
	.long	0x183ec
	.long	0x14d85
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3a
	.long	LVL4016
	.long	0x18409
	.long	0x14da3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0
	.uleb128 0x3a
	.long	LVL4017
	.long	0x18409
	.long	0x14dc1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL4018
	.long	0x16c19
	.uleb128 0x3a
	.long	LVL4019
	.long	0x184f7
	.long	0x14e5b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_ok_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.byte	0x5
	.byte	0x3
	.long	_purple_perl_request_cancel_cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.long	LVL4021
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4022
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4024
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4025
	.long	0x17162
	.long	0x14e92
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4026
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4027
	.long	0x170a1
	.long	0x14eb0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4037
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4038
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4040
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4041
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4042
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4043
	.long	0x16f23
	.long	0x14efe
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4045
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4046
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4047
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4048
	.long	0x16f23
	.long	0x14f3a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4050
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4051
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4052
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4053
	.long	0x16f23
	.long	0x14f76
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4055
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4056
	.long	0x170c7
	.uleb128 0x39
	.long	LVL4058
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4059
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4060
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4061
	.long	0x16f23
	.long	0x14fc4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4063
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4064
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4065
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4066
	.long	0x16f23
	.long	0x15000
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4068
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4069
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4070
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4071
	.long	0x16f23
	.long	0x1503c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.long	LVL4075
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4076
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4077
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4078
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4079
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4080
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4082
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4083
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4084
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4085
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4086
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4087
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4088
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4089
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4091
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4092
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4094
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4095
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4096
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4097
	.long	0x17685
	.long	0x150fc
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4099
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4100
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4101
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL4102
	.long	0x17685
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB325
	.long	LBE325
	.long	0x1516b
	.uleb128 0x49
	.secrel32	LASF83
	.byte	0x2
	.word	0x11d
	.long	0x8ce1
	.secrel32	LLST757
	.uleb128 0x39
	.long	LVL4029
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4030
	.long	0x16c46
	.uleb128 0x39
	.long	LVL4032
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4033
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL3928
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3929
	.long	0x16c46
	.uleb128 0x39
	.long	LVL3931
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3932
	.long	0x16d07
	.uleb128 0x39
	.long	LVL3934
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL3935
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4109
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4110
	.long	0x89a7
	.long	0x151c7
	.uleb128 0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.long	LC42
	.byte	0
	.uleb128 0x39
	.long	LVL4111
	.long	0x16c30
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.ascii "boot_Purple__Request\0"
	.byte	0x2
	.word	0x7a7
	.byte	0x1
	.long	LFB180
	.long	LFE180
	.secrel32	LLST758
	.byte	0x1
	.long	0x16b42
	.uleb128 0x45
	.secrel32	LASF81
	.byte	0x2
	.word	0x7a7
	.long	0x37fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii "cv\0"
	.byte	0x2
	.word	0x7a7
	.long	0x4de7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.secrel32	LASF84
	.byte	0x2
	.word	0x7a9
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.ascii "sp\0"
	.byte	0x2
	.word	0x7a9
	.long	0x4881
	.uleb128 0x48
	.ascii "ax\0"
	.byte	0x2
	.word	0x7a9
	.long	0x32fe
	.secrel32	LLST759
	.uleb128 0x50
	.secrel32	LASF32
	.byte	0x2
	.word	0x7a9
	.long	0x4881
	.uleb128 0x50
	.secrel32	LASF79
	.byte	0x2
	.word	0x7a9
	.long	0x32fe
	.uleb128 0x51
	.ascii "file\0"
	.byte	0x2
	.word	0x7ad
	.long	0x27c
	.byte	0x6
	.byte	0x3
	.long	LC44
	.byte	0x9f
	.uleb128 0x4a
	.long	LBB327
	.long	LBE327
	.long	0x153e5
	.uleb128 0x38
	.ascii "request_stash\0"
	.byte	0x1
	.byte	0x59
	.long	0x3afc
	.secrel32	LLST760
	.uleb128 0x38
	.ascii "request_field_stash\0"
	.byte	0x1
	.byte	0x5a
	.long	0x3afc
	.secrel32	LLST761
	.uleb128 0x52
	.ascii "civ\0"
	.byte	0x1
	.byte	0x5c
	.long	0x16b42
	.byte	0x5
	.byte	0x3
	.long	_civ.55882
	.uleb128 0x52
	.ascii "request_const_iv\0"
	.byte	0x1
	.byte	0x5c
	.long	0x16b5d
	.byte	0x5
	.byte	0x3
	.long	_request_const_iv.55883
	.uleb128 0x52
	.ascii "request_field_const_iv\0"
	.byte	0x1
	.byte	0x65
	.long	0x16b72
	.byte	0x5
	.byte	0x3
	.long	_request_field_const_iv.55884
	.uleb128 0x39
	.long	LVL4288
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4289
	.long	0x1856c
	.long	0x1532d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC136
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL4291
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4292
	.long	0x1856c
	.long	0x15354
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC137
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.long	LVL4295
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4296
	.long	0x1859b
	.long	0x15372
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4297
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4298
	.long	0x185c2
	.long	0x1539e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4300
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4301
	.long	0x1859b
	.long	0x153bc
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4302
	.long	0x16bb7
	.uleb128 0x3c
	.long	LVL4303
	.long	0x185c2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	LBB329
	.long	LBE329
	.long	0x15424
	.uleb128 0x53
	.secrel32	LASF83
	.byte	0x2
	.word	0x838
	.long	0x8ce1
	.byte	0x1
	.uleb128 0x39
	.long	LVL4318
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4319
	.long	0x16c46
	.uleb128 0x39
	.long	LVL4320
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4321
	.long	0x16d65
	.byte	0
	.uleb128 0x39
	.long	LVL4113
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4114
	.long	0x16c46
	.uleb128 0x39
	.long	LVL4115
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4116
	.long	0x16d07
	.uleb128 0x39
	.long	LVL4118
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4119
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4122
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4123
	.long	0x185f7
	.long	0x1549f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC45
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request_input
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC43
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4124
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4125
	.long	0x185f7
	.long	0x154e4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC47
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request_file
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC46
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4126
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4127
	.long	0x185f7
	.long	0x15529
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC49
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request_fields
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC48
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4128
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4129
	.long	0x185f7
	.long	0x1556e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC51
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request_close
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4130
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4131
	.long	0x185f7
	.long	0x155b3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC53
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request_close_with_handle
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4132
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4133
	.long	0x185f7
	.long	0x155f8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC55
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC54
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4134
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4135
	.long	0x185f7
	.long	0x1563d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC56
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_get_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4136
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4137
	.long	0x185f7
	.long	0x15682
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC57
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_get_filter
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4138
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4139
	.long	0x185f7
	.long	0x156c7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC58
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_get_show_all
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4140
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4141
	.long	0x185f7
	.long	0x1570c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC59
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_get_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4142
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4143
	.long	0x185f7
	.long	0x15751
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC60
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_set_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4144
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4145
	.long	0x185f7
	.long	0x15796
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC61
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_set_show_all
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4146
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4147
	.long	0x185f7
	.long	0x157db
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC62
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_account_set_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4148
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4149
	.long	0x185f7
	.long	0x15820
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC63
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_bool_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC54
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4150
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4151
	.long	0x185f7
	.long	0x15865
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC64
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_bool_get_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4152
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4153
	.long	0x185f7
	.long	0x158aa
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC65
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_bool_get_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4154
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4155
	.long	0x185f7
	.long	0x158ef
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC66
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_bool_set_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4156
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4157
	.long	0x185f7
	.long	0x15934
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC67
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_bool_set_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4158
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4159
	.long	0x185f7
	.long	0x15979
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC68
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC54
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4160
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4161
	.long	0x185f7
	.long	0x159be
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC69
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_add
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4162
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4163
	.long	0x185f7
	.long	0x15a03
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC70
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_get_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4164
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4165
	.long	0x185f7
	.long	0x15a48
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC71
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_get_labels
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4166
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4167
	.long	0x185f7
	.long	0x15a8d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC72
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_get_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4168
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4169
	.long	0x185f7
	.long	0x15ad2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC73
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_set_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4170
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4171
	.long	0x185f7
	.long	0x15b17
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC74
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_choice_set_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4172
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4173
	.long	0x185f7
	.long	0x15b5c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC75
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_int_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC54
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4174
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4175
	.long	0x185f7
	.long	0x15ba1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC76
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_int_get_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4176
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4177
	.long	0x185f7
	.long	0x15be6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC77
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_int_get_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4178
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4179
	.long	0x185f7
	.long	0x15c2b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC78
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_int_set_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4180
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4181
	.long	0x185f7
	.long	0x15c70
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC79
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_int_set_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4182
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4183
	.long	0x185f7
	.long	0x15cb5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC80
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_is_required
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4184
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4185
	.long	0x185f7
	.long	0x15cfa
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC82
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_label_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC81
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4186
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4187
	.long	0x185f7
	.long	0x15d3f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC83
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC81
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4188
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4189
	.long	0x185f7
	.long	0x15d84
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC84
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_add
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC81
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4190
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4191
	.long	0x185f7
	.long	0x15dc9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC86
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_add_icon
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC85
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4192
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4193
	.long	0x185f7
	.long	0x15e0e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC87
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_add_selected
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4194
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4195
	.long	0x185f7
	.long	0x15e53
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC88
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_clear_selected
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4196
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4197
	.long	0x185f7
	.long	0x15e98
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC89
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_get_data
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4198
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4199
	.long	0x185f7
	.long	0x15edd
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC90
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_get_items
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4200
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4201
	.long	0x185f7
	.long	0x15f22
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC91
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_get_multi_select
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4202
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4203
	.long	0x185f7
	.long	0x15f67
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC92
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_get_selected
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4204
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4205
	.long	0x185f7
	.long	0x15fac
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC93
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_is_selected
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4206
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4207
	.long	0x185f7
	.long	0x15ff1
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC94
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_list_set_multi_select
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4208
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4209
	.long	0x185f7
	.long	0x16036
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC95
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC85
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4210
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4211
	.long	0x185f7
	.long	0x1607b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC96
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_set_label
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4212
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4213
	.long	0x185f7
	.long	0x160c0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC97
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_set_required
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4214
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4215
	.long	0x185f7
	.long	0x16105
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC98
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_set_type_hint
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4216
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4217
	.long	0x185f7
	.long	0x1614a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC99
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_set_visible
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4218
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4219
	.long	0x185f7
	.long	0x1618f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC101
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC100
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4220
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4221
	.long	0x185f7
	.long	0x161d4
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC102
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_get_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4222
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4223
	.long	0x185f7
	.long	0x16219
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC103
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_get_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4224
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4225
	.long	0x185f7
	.long	0x1625e
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC104
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_is_editable
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4226
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4227
	.long	0x185f7
	.long	0x162a3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC105
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_is_masked
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4228
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4229
	.long	0x185f7
	.long	0x162e8
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC106
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_is_multiline
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4230
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4231
	.long	0x185f7
	.long	0x1632d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC107
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_set_default_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4232
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4233
	.long	0x185f7
	.long	0x16372
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC108
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_set_editable
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4234
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4235
	.long	0x185f7
	.long	0x163b7
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC109
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_set_masked
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4236
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4237
	.long	0x185f7
	.long	0x163fc
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC110
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_string_set_value
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4238
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4239
	.long	0x185f7
	.long	0x16441
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC111
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field__Group_add_field
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4240
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4241
	.long	0x185f7
	.long	0x16486
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC112
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field__Group_destroy
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4242
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4243
	.long	0x185f7
	.long	0x164cb
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC113
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field__Group_get_fields
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4244
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4245
	.long	0x185f7
	.long	0x16510
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC114
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field__Group_get_title
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4246
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4247
	.long	0x185f7
	.long	0x16555
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC115
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field__Group_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4248
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4249
	.long	0x185f7
	.long	0x1659a
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC116
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_destroy
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4250
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4251
	.long	0x185f7
	.long	0x165df
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC117
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_get_id
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4252
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4253
	.long	0x185f7
	.long	0x16624
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC118
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_get_label
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4254
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4255
	.long	0x185f7
	.long	0x16669
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC119
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_get_type
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4256
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4257
	.long	0x185f7
	.long	0x166ae
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC120
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_get_type_hint
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4258
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4259
	.long	0x185f7
	.long	0x166f3
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC121
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Field_is_visible
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4260
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4261
	.long	0x185f7
	.long	0x16738
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC122
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_new
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4262
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4263
	.long	0x185f7
	.long	0x1677d
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC123
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_add_group
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4264
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4265
	.long	0x185f7
	.long	0x167c2
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC124
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_all_required_filled
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4266
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4267
	.long	0x185f7
	.long	0x16807
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC125
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_destroy
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4268
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4269
	.long	0x185f7
	.long	0x1684c
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC126
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_exists
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4270
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4271
	.long	0x185f7
	.long	0x16891
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC127
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_account
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4272
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4273
	.long	0x185f7
	.long	0x168d6
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC128
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_bool
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4274
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4275
	.long	0x185f7
	.long	0x1691b
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC129
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_choice
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4276
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4277
	.long	0x185f7
	.long	0x16960
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC130
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_field
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4278
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4279
	.long	0x185f7
	.long	0x169a5
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC131
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_groups
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4280
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4281
	.long	0x185f7
	.long	0x169ea
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC132
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_integer
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4282
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4283
	.long	0x185f7
	.long	0x16a2f
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC133
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_required
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC52
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4284
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4285
	.long	0x185f7
	.long	0x16a74
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC134
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_get_string
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4286
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4287
	.long	0x185f7
	.long	0x16ab9
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	LC135
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	_XS_Purple__Request__Fields_is_field_required
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.long	LC44
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0x5
	.byte	0x3
	.long	LC50
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.long	LVL4304
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4305
	.long	0x18636
	.uleb128 0x39
	.long	LVL4306
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4307
	.long	0x18636
	.uleb128 0x39
	.long	LVL4308
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4309
	.long	0x18667
	.uleb128 0x39
	.long	LVL4311
	.long	0x16bb7
	.uleb128 0x3a
	.long	LVL4312
	.long	0x18693
	.long	0x16b14
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3b
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	LVL4313
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4314
	.long	0x16d65
	.uleb128 0x39
	.long	LVL4315
	.long	0x16bb7
	.uleb128 0x39
	.long	LVL4316
	.long	0x16fcb
	.uleb128 0x39
	.long	LVL4322
	.long	0x16c30
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x16b48
	.uleb128 0xf
	.long	0x82af
	.uleb128 0xa
	.long	0x82af
	.long	0x16b5d
	.uleb128 0xb
	.long	0x1af
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x16b4d
	.uleb128 0xa
	.long	0x82af
	.long	0x16b72
	.uleb128 0xb
	.long	0x1af
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	0x16b62
	.uleb128 0x54
	.ascii "__mb_cur_max\0"
	.byte	0x30
	.byte	0x70
	.long	0xba
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.ascii "_pctype\0"
	.byte	0x31
	.byte	0x73
	.long	0x15f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x33ba
	.long	0x16ba9
	.uleb128 0x55
	.byte	0
	.uleb128 0x54
	.ascii "_iob\0"
	.byte	0x1d
	.byte	0x9a
	.long	0x16b9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.byte	0x1
	.ascii "Perl_get_context\0"
	.byte	0x32
	.byte	0x5d
	.byte	0x1
	.long	0x165
	.byte	0x1
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_sv_free\0"
	.byte	0x32
	.word	0x903
	.byte	0x1
	.byte	0x1
	.long	0x16bf5
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_sv_free2\0"
	.byte	0x32
	.word	0x904
	.byte	0x1
	.byte	0x1
	.long	0x16c19
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.ascii "g_free\0"
	.byte	0x33
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.long	0x16c30
	.uleb128 0x12
	.long	0x2d8
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.ascii "__stack_chk_fail\0"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Istack_sp_ptr\0"
	.byte	0x14
	.byte	0x23
	.byte	0x1
	.long	0x16c6d
	.byte	0x1
	.long	0x16c6d
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x4881
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_push_scope\0"
	.byte	0x32
	.word	0x732
	.byte	0x1
	.byte	0x1
	.long	0x16c94
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Itmps_floor_ptr\0"
	.byte	0x14
	.byte	0x39
	.byte	0x1
	.long	0x3b59
	.byte	0x1
	.long	0x16cbd
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_save_int\0"
	.byte	0x32
	.word	0x811
	.byte	0x1
	.byte	0x1
	.long	0x16ce1
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0xc1
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Itmps_ix_ptr\0"
	.byte	0x14
	.byte	0x38
	.byte	0x1
	.long	0x3b59
	.byte	0x1
	.long	0x16d07
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Imarkstack_ptr_ptr\0"
	.byte	0x14
	.byte	0x40
	.byte	0x1
	.long	0x16d33
	.byte	0x1
	.long	0x16d33
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x3b59
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Imarkstack_max_ptr\0"
	.byte	0x14
	.byte	0x41
	.byte	0x1
	.long	0x16d33
	.byte	0x1
	.long	0x16d65
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Istack_base_ptr\0"
	.byte	0x14
	.byte	0x2b
	.byte	0x1
	.long	0x16c6d
	.byte	0x1
	.long	0x16d8e
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Istack_max_ptr\0"
	.byte	0x14
	.byte	0x2c
	.byte	0x1
	.long	0x16c6d
	.byte	0x1
	.long	0x16db6
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "purple_perl_bless_object\0"
	.byte	0x34
	.byte	0x3d
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x16de8
	.uleb128 0x12
	.long	0x165
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_sv_2mortal\0"
	.byte	0x32
	.word	0x883
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x16e12
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_call_sv\0"
	.byte	0x32
	.word	0x6e9
	.byte	0x1
	.long	0x32fe
	.byte	0x1
	.long	0x16e3e
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x32fe
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_free_tmps\0"
	.byte	0x32
	.word	0x24d
	.byte	0x1
	.byte	0x1
	.long	0x16e5e
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_pop_scope\0"
	.byte	0x32
	.word	0x730
	.byte	0x1
	.byte	0x1
	.long	0x16e7e
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_stack_grow\0"
	.byte	0x32
	.word	0x863
	.byte	0x1
	.long	0x4881
	.byte	0x1
	.long	0x16eb2
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x4881
	.uleb128 0x12
	.long	0x4881
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_markstack_grow\0"
	.byte	0x32
	.word	0x505
	.byte	0x1
	.byte	0x1
	.long	0x16ed7
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.ascii "Perl_croak\0"
	.byte	0x32
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.long	0x16ef8
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x5c
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "purple_perl_ref_object\0"
	.byte	0x34
	.byte	0x3f
	.byte	0x1
	.long	0x165
	.byte	0x1
	.long	0x16f23
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_sv_2pv_flags\0"
	.byte	0x32
	.word	0x88d
	.byte	0x1
	.long	0x159
	.byte	0x1
	.long	0x16f59
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x53eb
	.uleb128 0x12
	.long	0x32fe
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_is_field_required\0"
	.byte	0x2e
	.word	0x14e
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x16f9b
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x16fa1
	.uleb128 0xf
	.long	0x7ed2
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_Isv_no_ptr\0"
	.byte	0x14
	.word	0x1c4
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x16fcb
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_Isv_yes_ptr\0"
	.byte	0x14
	.word	0x1c5
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x16ff1
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Iop_ptr\0"
	.byte	0x14
	.byte	0x27
	.byte	0x1
	.long	0x17012
	.byte	0x1
	.long	0x17012
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x386d
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Icurpad_ptr\0"
	.byte	0x14
	.byte	0x29
	.byte	0x1
	.long	0x16c6d
	.byte	0x1
	.long	0x1703d
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_string\0"
	.byte	0x2e
	.word	0x16e
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x17078
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_sv_setpv\0"
	.byte	0x32
	.word	0x976
	.byte	0x1
	.byte	0x1
	.long	0x170a1
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_mg_set\0"
	.byte	0x32
	.word	0x53c
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x170c7
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_sv_newmortal\0"
	.byte	0x32
	.word	0x926
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x170ee
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_required\0"
	.byte	0x2e
	.word	0x144
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x17126
	.uleb128 0x12
	.long	0x16f9b
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_integer\0"
	.byte	0x2e
	.word	0x179
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17162
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "Perl_sv_setiv\0"
	.byte	0x32
	.word	0x95a
	.byte	0x1
	.byte	0x1
	.long	0x1718b
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x69a
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_groups\0"
	.byte	0x2e
	.word	0x130
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x171c1
	.uleb128 0x12
	.long	0x16f9b
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_field\0"
	.byte	0x2e
	.word	0x163
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x171fb
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_choice\0"
	.byte	0x2e
	.word	0x18f
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17236
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_bool\0"
	.byte	0x2e
	.word	0x184
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x1726f
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_get_account\0"
	.byte	0x2e
	.word	0x19a
	.byte	0x1
	.long	0x6459
	.byte	0x1
	.long	0x172ab
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_exists\0"
	.byte	0x2e
	.word	0x13a
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x172e2
	.uleb128 0x12
	.long	0x16f9b
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_fields_destroy\0"
	.byte	0x2e
	.word	0x11e
	.byte	0x1
	.byte	0x1
	.long	0x17311
	.uleb128 0x12
	.long	0x7f28
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields_all_required_filled\0"
	.byte	0x2e
	.word	0x158
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x17350
	.uleb128 0x12
	.long	0x16f9b
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_fields_add_group\0"
	.byte	0x2e
	.word	0x126
	.byte	0x1
	.byte	0x1
	.long	0x17386
	.uleb128 0x12
	.long	0x7f28
	.uleb128 0x12
	.long	0x81a9
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.ascii "purple_request_fields_new\0"
	.byte	0x2e
	.word	0x117
	.byte	0x1
	.long	0x7f28
	.byte	0x1
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_is_visible\0"
	.byte	0x2e
	.word	0x23d
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x173e0
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x173e6
	.uleb128 0xf
	.long	0x7beb
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_get_type_hint\0"
	.byte	0x2e
	.word	0x246
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x17423
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_get_type\0"
	.byte	0x2e
	.word	0x217
	.byte	0x1
	.long	0x7e64
	.byte	0x1
	.long	0x17456
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_get_label\0"
	.byte	0x2e
	.word	0x234
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x1748a
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_get_id\0"
	.byte	0x2e
	.word	0x22b
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x174bb
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_destroy\0"
	.byte	0x2e
	.word	0x1e9
	.byte	0x1
	.byte	0x1
	.long	0x174e9
	.uleb128 0x12
	.long	0x81fa
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_group_new\0"
	.byte	0x2e
	.word	0x1ab
	.byte	0x1
	.long	0x81a9
	.byte	0x1
	.long	0x1751d
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_group_get_title\0"
	.byte	0x2e
	.word	0x1c4
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x17557
	.uleb128 0x12
	.long	0x17557
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x1755d
	.uleb128 0xf
	.long	0x7f2e
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_group_get_fields\0"
	.byte	0x2e
	.word	0x1ce
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x1759d
	.uleb128 0x12
	.long	0x17557
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_group_destroy\0"
	.byte	0x2e
	.word	0x1b2
	.byte	0x1
	.byte	0x1
	.long	0x175d1
	.uleb128 0x12
	.long	0x81a9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_group_add_field\0"
	.byte	0x2e
	.word	0x1ba
	.byte	0x1
	.byte	0x1
	.long	0x1760c
	.uleb128 0x12
	.long	0x81a9
	.uleb128 0x12
	.long	0x81fa
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_string_set_value\0"
	.byte	0x2e
	.word	0x28e
	.byte	0x1
	.byte	0x1
	.long	0x17648
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_string_set_masked\0"
	.byte	0x2e
	.word	0x298
	.byte	0x1
	.byte	0x1
	.long	0x17685
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_sv_2bool\0"
	.byte	0x32
	.word	0x86b
	.byte	0x1
	.long	0x81
	.byte	0x1
	.long	0x176ad
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_string_set_editable\0"
	.byte	0x2e
	.word	0x2a1
	.byte	0x1
	.byte	0x1
	.long	0x176ec
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_string_set_default_value\0"
	.byte	0x2e
	.word	0x285
	.byte	0x1
	.byte	0x1
	.long	0x17730
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_is_multiline\0"
	.byte	0x2e
	.word	0x2be
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x1776e
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_is_masked\0"
	.byte	0x2e
	.word	0x2c7
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x177a9
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_is_editable\0"
	.byte	0x2e
	.word	0x2d0
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x177e6
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_get_value\0"
	.byte	0x2e
	.word	0x2b5
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x17821
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_get_default_value\0"
	.byte	0x2e
	.word	0x2ab
	.byte	0x1
	.long	0x27c
	.byte	0x1
	.long	0x17864
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_string_new\0"
	.byte	0x2e
	.word	0x27a
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x178a8
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_set_visible\0"
	.byte	0x2e
	.word	0x1f9
	.byte	0x1
	.byte	0x1
	.long	0x178df
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_set_type_hint\0"
	.byte	0x2e
	.word	0x204
	.byte	0x1
	.byte	0x1
	.long	0x17918
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_set_required\0"
	.byte	0x2e
	.word	0x20d
	.byte	0x1
	.byte	0x1
	.long	0x17950
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_set_label\0"
	.byte	0x2e
	.word	0x1f1
	.byte	0x1
	.byte	0x1
	.long	0x17985
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_sv_2iv_flags\0"
	.byte	0x32
	.word	0x880
	.byte	0x1
	.long	0x69a
	.byte	0x1
	.long	0x179b6
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3806
	.uleb128 0x12
	.long	0x32fe
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_new\0"
	.byte	0x2e
	.word	0x1e1
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x179ee
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7e64
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_list_set_multi_select\0"
	.byte	0x2e
	.word	0x3a7
	.byte	0x1
	.byte	0x1
	.long	0x17a2f
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_is_selected\0"
	.byte	0x2e
	.word	0x3f7
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x17a6f
	.uleb128 0x12
	.long	0x173e0
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_get_selected\0"
	.byte	0x2e
	.word	0x404
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x17aab
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_newSVpv\0"
	.byte	0x32
	.word	0x64d
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x17ad7
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x6bb
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_get_multi_select\0"
	.byte	0x2e
	.word	0x3b1
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x17b17
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_get_items\0"
	.byte	0x2e
	.word	0x40e
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x17b50
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_get_data\0"
	.byte	0x2e
	.word	0x3bc
	.byte	0x1
	.long	0x165
	.byte	0x1
	.long	0x17b8d
	.uleb128 0x12
	.long	0x173e0
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_list_clear_selected\0"
	.byte	0x2e
	.word	0x3e4
	.byte	0x1
	.byte	0x1
	.long	0x17bc7
	.uleb128 0x12
	.long	0x81fa
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_list_add_selected\0"
	.byte	0x2e
	.word	0x3dc
	.byte	0x1
	.byte	0x1
	.long	0x17c04
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_list_add_icon\0"
	.byte	0x2e
	.word	0x3d3
	.byte	0x1
	.byte	0x1
	.long	0x17c47
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_list_add\0"
	.byte	0x2e
	.word	0x3c8
	.byte	0x1
	.byte	0x1
	.long	0x17c80
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_list_new\0"
	.byte	0x2e
	.word	0x39e
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x17cb8
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_label_new\0"
	.byte	0x2e
	.word	0x42b
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x17cf1
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_is_required\0"
	.byte	0x2e
	.word	0x24f
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x17d27
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_int_set_value\0"
	.byte	0x2e
	.word	0x2f5
	.byte	0x1
	.byte	0x1
	.long	0x17d60
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_int_set_default_value\0"
	.byte	0x2e
	.word	0x2ec
	.byte	0x1
	.byte	0x1
	.long	0x17da1
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_int_get_value\0"
	.byte	0x2e
	.word	0x307
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17dd9
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_int_get_default_value\0"
	.byte	0x2e
	.word	0x2fe
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17e19
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_int_new\0"
	.byte	0x2e
	.word	0x2e2
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x17e55
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_choice_set_value\0"
	.byte	0x2e
	.word	0x372
	.byte	0x1
	.byte	0x1
	.long	0x17e91
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_choice_set_default_value\0"
	.byte	0x2e
	.word	0x369
	.byte	0x1
	.byte	0x1
	.long	0x17ed5
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_choice_get_value\0"
	.byte	0x2e
	.word	0x384
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17f10
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_choice_get_labels\0"
	.byte	0x2e
	.word	0x38d
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x17f4c
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_choice_get_default_value\0"
	.byte	0x2e
	.word	0x37b
	.byte	0x1
	.long	0xba
	.byte	0x1
	.long	0x17f8f
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_choice_add\0"
	.byte	0x2e
	.word	0x360
	.byte	0x1
	.byte	0x1
	.long	0x17fc5
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_choice_new\0"
	.byte	0x2e
	.word	0x356
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x18004
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0xba
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_bool_set_value\0"
	.byte	0x2e
	.word	0x32e
	.byte	0x1
	.byte	0x1
	.long	0x1803e
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_bool_set_default_value\0"
	.byte	0x2e
	.word	0x325
	.byte	0x1
	.byte	0x1
	.long	0x18080
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_bool_get_value\0"
	.byte	0x2e
	.word	0x342
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x180b9
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_bool_get_default_value\0"
	.byte	0x2e
	.word	0x338
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x180fa
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_bool_new\0"
	.byte	0x2e
	.word	0x31b
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x18137
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_account_set_value\0"
	.byte	0x2e
	.word	0x494
	.byte	0x1
	.byte	0x1
	.long	0x18174
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_account_set_show_all\0"
	.byte	0x2e
	.word	0x4a0
	.byte	0x1
	.byte	0x1
	.long	0x181b4
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x2ad
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_field_account_set_default_value\0"
	.byte	0x2e
	.word	0x48b
	.byte	0x1
	.byte	0x1
	.long	0x181f9
	.uleb128 0x12
	.long	0x81fa
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_account_get_value\0"
	.byte	0x2e
	.word	0x4c0
	.byte	0x1
	.long	0x6459
	.byte	0x1
	.long	0x18235
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_account_get_show_all\0"
	.byte	0x2e
	.word	0x4cc
	.byte	0x1
	.long	0x2ad
	.byte	0x1
	.long	0x18274
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_account_get_filter\0"
	.byte	0x2e
	.word	0x4d9
	.byte	0x1
	.long	0x6424
	.byte	0x1
	.long	0x182b1
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_account_get_default_value\0"
	.byte	0x2e
	.word	0x4b6
	.byte	0x1
	.long	0x6459
	.byte	0x1
	.long	0x182f5
	.uleb128 0x12
	.long	0x173e0
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_field_account_new\0"
	.byte	0x2e
	.word	0x481
	.byte	0x1
	.long	0x81fa
	.byte	0x1
	.long	0x18335
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x6459
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_close_with_handle\0"
	.byte	0x2e
	.word	0x5c6
	.byte	0x1
	.byte	0x1
	.long	0x18367
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.ascii "purple_request_close\0"
	.byte	0x2e
	.word	0x5bc
	.byte	0x1
	.byte	0x1
	.long	0x18392
	.uleb128 0x12
	.long	0x7d37
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "g_path_get_basename\0"
	.byte	0x35
	.byte	0xea
	.byte	0x1
	.long	0x2f3
	.byte	0x1
	.long	0x183ba
	.uleb128 0x12
	.long	0x2e8
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.ascii "purple_perl_normalize_script_name\0"
	.byte	0x34
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.long	0x183ec
	.uleb128 0x12
	.long	0x159
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "g_malloc\0"
	.byte	0x33
	.byte	0x33
	.byte	0x1
	.long	0x2d8
	.byte	0x1
	.long	0x18409
	.uleb128 0x12
	.long	0x287
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.ascii "purple_perl_sv_from_fun\0"
	.byte	0x34
	.byte	0x4b
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x1843a
	.uleb128 0x12
	.long	0x6c80
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_fields\0"
	.byte	0x2e
	.word	0x5af
	.byte	0x1
	.long	0x165
	.byte	0x1
	.long	0x184a1
	.uleb128 0x12
	.long	0x165
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7f28
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x6459
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_file\0"
	.byte	0x2e
	.word	0x60b
	.byte	0x1
	.long	0x165
	.byte	0x1
	.long	0x184f7
	.uleb128 0x12
	.long	0x165
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x2ad
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x6459
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "purple_request_input\0"
	.byte	0x2e
	.word	0x511
	.byte	0x1
	.long	0x165
	.byte	0x1
	.long	0x1856c
	.uleb128 0x12
	.long	0x165
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x2ad
	.uleb128 0x12
	.long	0x2ad
	.uleb128 0x12
	.long	0x2f3
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x622d
	.uleb128 0x12
	.long	0x6459
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x7869
	.uleb128 0x12
	.long	0x165
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_gv_stashpv\0"
	.byte	0x32
	.word	0x2a2
	.byte	0x1
	.long	0x3afc
	.byte	0x1
	.long	0x1859b
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x32fe
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_newSViv\0"
	.byte	0x32
	.word	0x641
	.byte	0x1
	.long	0x3806
	.byte	0x1
	.long	0x185c2
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x69a
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_newCONSTSUB\0"
	.byte	0x32
	.word	0x5a4
	.byte	0x1
	.long	0x4de7
	.byte	0x1
	.long	0x185f7
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x3afc
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x3806
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_newXS_flags\0"
	.byte	0x32
	.word	0x5de
	.byte	0x1
	.long	0x4de7
	.byte	0x1
	.long	0x18636
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x27c
	.uleb128 0x12
	.long	0x614b
	.uleb128 0x12
	.long	0x61eb
	.uleb128 0x12
	.long	0x61eb
	.uleb128 0x12
	.long	0x3309
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.ascii "Perl_Iunitcheckav_ptr\0"
	.byte	0x14
	.word	0x13d
	.byte	0x1
	.long	0x18661
	.byte	0x1
	.long	0x18661
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0x4df3
	.uleb128 0x5a
	.byte	0x1
	.ascii "Perl_Iscopestack_ix_ptr\0"
	.byte	0x14
	.byte	0x2f
	.byte	0x1
	.long	0x3b59
	.byte	0x1
	.long	0x18693
	.uleb128 0x12
	.long	0x37fa
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.ascii "Perl_call_list\0"
	.byte	0x32
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x37fa
	.uleb128 0x12
	.long	0x32fe
	.uleb128 0x12
	.long	0x4df3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x17
	.byte	0