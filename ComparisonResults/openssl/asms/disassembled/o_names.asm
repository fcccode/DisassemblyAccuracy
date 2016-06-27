;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	2D536E762F424353840EA947395F0A25
; Input	CRC32 :	99387C79

; File Name   :	C:\compspace\Diff\openssl\obj\o_names.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use32
		assume cs:_bss
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
_names_lh	dd ?			; DATA XREF: _OBJ_NAME_addr
					; _OBJ_NAME_add+21w ...
_name_funcs_stack dd ?			; DATA XREF: _OBJ_NAME_add+94r
					; _OBJ_NAME_add+AEr ...
_free_type	dd ?			; DATA XREF: _OBJ_NAME_cleanup+18w
					; _names_lh_free_LHASH_DOALL+8r ...
_bss		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use32
		assume cs:_data
		;org 0Ch
_names_type_num	dd 5			; DATA XREF: _OBJ_NAME_new_index:loc_38Ar
					; _OBJ_NAME_new_index+3Ew ...
_data		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 10h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_add
_OBJ_NAME_add	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		cmp	ds:_names_lh, 0
		jnz	short loc_50
		push	3
		call	_CRYPTO_mem_ctrl
		push	offset _obj_name_LHASH_COMP
		push	offset _obj_name_LHASH_HASH
		call	_lh_new
		push	2
		mov	ds:_names_lh, eax
		call	_CRYPTO_mem_ctrl
		xor	eax, eax
		add	esp, 10h
		cmp	ds:_names_lh, eax
		setnz	al
		test	eax, eax
		jnz	short loc_50

loc_4D:					; CODE XREF: _OBJ_NAME_add+58j
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_50:					; CODE XREF: _OBJ_NAME_add+7j
					; _OBJ_NAME_add+3Bj
		push	0BFh ; '�'
		push	offset ??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@ ; ".\\crypto\\objects\\o_names.c"
		push	10h
		call	_CRYPTO_malloc
		mov	edx, eax
		add	esp, 0Ch
		test	edx, edx
		jz	short loc_4D
		mov	eax, [esp+arg_0]
		mov	ecx, [esp+arg_4]
		mov	[edx+8], eax
		mov	eax, ecx
		push	esi
		and	eax, 8000h
		and	ecx, 0FFFF7FFFh
		push	edx
		push	ds:_names_lh
		mov	[edx+4], eax
		mov	eax, [esp+0Ch+arg_8]
		mov	[edx], ecx
		mov	[edx+0Ch], eax
		call	_lh_insert
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jz	short loc_EA
		mov	eax, ds:_name_funcs_stack
		test	eax, eax
		jz	short loc_DA
		push	edi
		mov	edi, [esi]
		push	eax
		call	_sk_num
		add	esp, 4
		cmp	eax, edi
		jle	short loc_D9
		push	edi
		push	ds:_name_funcs_stack
		call	_sk_value
		push	dword ptr [esi+0Ch]
		push	dword ptr [esi]
		mov	eax, [eax+8]
		push	dword ptr [esi+8]
		call	eax
		add	esp, 14h

loc_D9:					; CODE XREF: _OBJ_NAME_add+ABj
		pop	edi

loc_DA:					; CODE XREF: _OBJ_NAME_add+9Bj
		push	esi
		call	_CRYPTO_free
		add	esp, 4

loc_E3:					; CODE XREF: _OBJ_NAME_add+E3j
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_EA:					; CODE XREF: _OBJ_NAME_add+92j
		mov	eax, ds:_names_lh
		cmp	dword ptr [eax+5Ch], 0
		jz	short loc_E3
		xor	eax, eax
		pop	esi
		retn
_OBJ_NAME_add	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0FCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_cleanup
_OBJ_NAME_cleanup proc near

arg_0		= dword	ptr  4

		mov	eax, ds:_names_lh
		test	eax, eax
		jz	short locret_16C
		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		mov	edi, [eax+20h]
		push	offset _names_lh_free_LHASH_DOALL
		push	eax
		mov	ds:_free_type, esi
		mov	dword ptr [eax+20h], 0
		call	_lh_doall
		add	esp, 8
		test	esi, esi
		jns	short loc_162
		push	ds:_names_lh
		call	_lh_free
		push	offset _name_funcs_free
		push	ds:_name_funcs_stack
		call	_sk_pop_free
		add	esp, 0Ch
		mov	ds:_names_lh, 0
		mov	ds:_name_funcs_stack, 0
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_162:				; CODE XREF: _OBJ_NAME_cleanup+2Fj
		mov	eax, ds:_names_lh
		mov	[eax+20h], edi
		pop	edi
		pop	esi

locret_16C:				; CODE XREF: _OBJ_NAME_cleanup+7j
		retn
_OBJ_NAME_cleanup endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 170h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_do_all
_OBJ_NAME_do_all proc near

var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 0Ch
		call	__chkstk
		mov	eax, [esp+0Ch+arg_0]
		mov	[esp+0Ch+var_C], eax
		mov	eax, [esp+0Ch+arg_4]
		mov	[esp+0Ch+var_8], eax
		mov	eax, [esp+0Ch+arg_8]
		mov	[esp+0Ch+var_4], eax
		lea	eax, [esp+0Ch+var_C]
		push	eax
		push	offset _do_all_fn_LHASH_DOALL_ARG
		push	ds:_names_lh
		call	_lh_doall_arg
		add	esp, 18h
		retn
_OBJ_NAME_do_all endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1ACh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_do_all_sorted
_OBJ_NAME_do_all_sorted	proc near

var_18		= dword	ptr -18h
NumOfElements	= dword	ptr -14h
Base		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 18h
		call	__chkstk
		push	esi
		mov	esi, [esp+1Ch+arg_0]
		push	13Ah
		push	offset ??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@ ; ".\\crypto\\objects\\o_names.c"
		push	ds:_names_lh
		mov	[esp+28h+var_18], esi
		call	_lh_num_items
		add	esp, 4
		shl	eax, 2
		push	eax
		call	_CRYPTO_malloc
		add	esp, 0Ch
		mov	[esp+1Ch+Base],	eax
		test	eax, eax
		jz	loc_26E
		lea	eax, [esp+1Ch+var_18]
		mov	[esp+1Ch+NumOfElements], 0
		mov	[esp+1Ch+var_4], eax
		lea	eax, [esp+1Ch+var_C]
		push	eax
		push	offset _do_all_fn_LHASH_DOALL_ARG
		push	ds:_names_lh
		mov	[esp+28h+var_C], esi
		mov	[esp+28h+var_8], offset	_do_all_sorted_fn
		call	_lh_doall_arg
		push	offset _do_all_sorted_cmp ; PtFuncCompare
		push	4		; SizeOfElements
		push	[esp+30h+NumOfElements]	; NumOfElements
		push	[esp+34h+Base]	; Base
		call	dword ptr ds:__imp__qsort
		xor	esi, esi
		add	esp, 1Ch
		cmp	[esp+1Ch+NumOfElements], esi
		jle	short loc_262
		push	ebx
		mov	ebx, [esp+20h+arg_4]
		push	edi
		mov	edi, [esp+24h+arg_8]
		xchg	ax, ax

loc_24C:				; CODE XREF: _OBJ_NAME_do_all_sorted+B2j
		mov	eax, [esp+24h+Base]
		push	edi
		push	dword ptr [eax+esi*4]
		call	ebx
		inc	esi
		add	esp, 8
		cmp	esi, [esp+24h+NumOfElements]
		jl	short loc_24C
		pop	edi
		pop	ebx

loc_262:				; CODE XREF: _OBJ_NAME_do_all_sorted+92j
		push	[esp+1Ch+Base]
		call	_CRYPTO_free
		add	esp, 4

loc_26E:				; CODE XREF: _OBJ_NAME_do_all_sorted+3Dj
		pop	esi
		add	esp, 18h
		retn
_OBJ_NAME_do_all_sorted	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 274h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_get
_OBJ_NAME_get	proc near

var_10		= dword	ptr -10h
var_8		= dword	ptr -8
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 10h
		call	__chkstk
		push	ebx
		mov	ebx, [esp+14h+arg_0]
		push	esi
		xor	esi, esi
		test	ebx, ebx
		jnz	short loc_292

loc_28A:				; CODE XREF: _OBJ_NAME_get+2Fj
		pop	esi
		xor	eax, eax
		pop	ebx
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_292:				; CODE XREF: _OBJ_NAME_get+14j
		mov	ecx, ds:_names_lh
		test	ecx, ecx
		jnz	short loc_2AB
		call	_OBJ_NAME_init
		test	eax, eax
		jz	short loc_28A
		mov	ecx, ds:_names_lh

loc_2AB:				; CODE XREF: _OBJ_NAME_get+26j
		mov	eax, [esp+18h+arg_4]
		push	edi
		mov	edi, eax
		mov	[esp+1Ch+var_8], ebx
		and	eax, 0FFFF7FFFh
		and	edi, 8000h
		mov	[esp+1Ch+var_10], eax
		lea	eax, [esp+1Ch+var_10]
		push	eax
		push	ecx
		call	_lh_retrieve
		add	esp, 8
		test	eax, eax
		jz	short loc_305

loc_2D7:				; CODE XREF: _OBJ_NAME_get+8Fj
		cmp	dword ptr [eax+4], 0
		jz	short loc_30E
		test	edi, edi
		jnz	short loc_30E
		inc	esi
		cmp	esi, 0Ah
		jg	short loc_305
		mov	eax, [eax+0Ch]
		mov	[esp+1Ch+var_8], eax
		lea	eax, [esp+1Ch+var_10]
		push	eax
		push	ds:_names_lh
		call	_lh_retrieve
		add	esp, 8
		test	eax, eax
		jnz	short loc_2D7

loc_305:				; CODE XREF: _OBJ_NAME_get+61j
					; _OBJ_NAME_get+71j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_30E:				; CODE XREF: _OBJ_NAME_get+67j
					; _OBJ_NAME_get+6Bj
		mov	eax, [eax+0Ch]
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 10h
		retn
_OBJ_NAME_get	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 318h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_init
_OBJ_NAME_init	proc near		; CODE XREF: _OBJ_NAME_get+28p
		cmp	ds:_names_lh, 0
		jz	short loc_327
		mov	eax, 1
		retn
; ---------------------------------------------------------------------------

loc_327:				; CODE XREF: _OBJ_NAME_init+7j
		push	3
		call	_CRYPTO_mem_ctrl
		push	offset _obj_name_LHASH_COMP
		push	offset _obj_name_LHASH_HASH
		call	_lh_new
		push	2
		mov	ds:_names_lh, eax
		call	_CRYPTO_mem_ctrl
		xor	eax, eax
		add	esp, 10h
		cmp	ds:_names_lh, eax
		setnz	al
		retn
_OBJ_NAME_init	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 358h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_new_index
_OBJ_NAME_new_index proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, ds:_name_funcs_stack
		test	ecx, ecx
		jnz	short loc_38A
		push	3
		call	_CRYPTO_mem_ctrl
		call	_sk_new_null
		push	2
		mov	ds:_name_funcs_stack, eax
		call	_CRYPTO_mem_ctrl
		mov	ecx, ds:_name_funcs_stack
		add	esp, 8
		test	ecx, ecx
		jnz	short loc_38A
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_38A:				; CODE XREF: _OBJ_NAME_new_index+8j
					; _OBJ_NAME_new_index+2Dj
		mov	eax, _names_type_num
		push	ebx
		push	esi
		mov	ebx, eax
		inc	eax
		push	edi
		push	ecx
		mov	_names_type_num, eax
		call	_sk_num
		mov	edi, eax
		add	esp, 4
		cmp	edi, _names_type_num
		jge	short loc_40C

loc_3AD:				; CODE XREF: _OBJ_NAME_new_index+B2j
		push	3
		call	_CRYPTO_mem_ctrl
		push	57h ; 'W'
		push	offset ??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@ ; ".\\crypto\\objects\\o_names.c"
		push	0Ch
		call	_CRYPTO_malloc
		push	2
		mov	esi, eax
		call	_CRYPTO_mem_ctrl
		add	esp, 14h
		test	esi, esi
		jz	short loc_441
		push	3
		mov	dword ptr [esi], offset	_lh_strhash
		mov	dword ptr [esi+4], offset _strcmp
		mov	dword ptr [esi+8], 0
		call	_CRYPTO_mem_ctrl
		push	esi
		push	ds:_name_funcs_stack
		call	_sk_push
		push	2
		call	_CRYPTO_mem_ctrl
		inc	edi
		add	esp, 10h
		cmp	edi, _names_type_num
		jl	short loc_3AD

loc_40C:				; CODE XREF: _OBJ_NAME_new_index+53j
		push	ebx
		push	ds:_name_funcs_stack
		call	_sk_value
		mov	ecx, [esp+14h+arg_0]
		add	esp, 8
		test	ecx, ecx
		jz	short loc_425
		mov	[eax], ecx

loc_425:				; CODE XREF: _OBJ_NAME_new_index+C9j
		mov	ecx, [esp+0Ch+arg_4]
		test	ecx, ecx
		jz	short loc_430
		mov	[eax+4], ecx

loc_430:				; CODE XREF: _OBJ_NAME_new_index+D3j
		mov	ecx, [esp+0Ch+arg_8]
		test	ecx, ecx
		jz	short loc_43B
		mov	[eax+8], ecx

loc_43B:				; CODE XREF: _OBJ_NAME_new_index+DEj
		pop	edi
		pop	esi
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_441:				; CODE XREF: _OBJ_NAME_new_index+78j
		push	5Ah ; 'Z'
		push	offset ??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@ ; ".\\crypto\\objects\\o_names.c"
		push	41h ; 'A'
		push	6Ah ; 'j'
		push	8
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
_OBJ_NAME_new_index endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 45Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OBJ_NAME_remove
_OBJ_NAME_remove proc near		; CODE XREF: _names_lh_free_LHASH_DOALL+1Bp
					; _names_lh_free_doall+1Bp

var_10		= dword	ptr -10h
var_8		= dword	ptr -8
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 10h
		call	__chkstk
		mov	ecx, ds:_names_lh
		test	ecx, ecx
		jnz	short loc_476
		xor	eax, eax
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_476:				; CODE XREF: _OBJ_NAME_remove+12j
		mov	eax, [esp+10h+arg_0]
		mov	[esp+10h+var_8], eax
		mov	eax, [esp+10h+arg_4]
		and	eax, 0FFFF7FFFh
		mov	[esp+10h+var_10], eax
		lea	eax, [esp+10h+var_10]
		push	esi
		push	eax
		push	ecx
		call	_lh_delete
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jz	short loc_4E7
		mov	eax, ds:_name_funcs_stack
		test	eax, eax
		jz	short loc_4D4
		push	edi
		mov	edi, [esi]
		push	eax
		call	_sk_num
		add	esp, 4
		cmp	eax, edi
		jle	short loc_4D3
		push	edi
		push	ds:_name_funcs_stack
		call	_sk_value
		push	dword ptr [esi+0Ch]
		push	dword ptr [esi]
		mov	eax, [eax+8]
		push	dword ptr [esi+8]
		call	eax
		add	esp, 14h

loc_4D3:				; CODE XREF: _OBJ_NAME_remove+59j
		pop	edi

loc_4D4:				; CODE XREF: _OBJ_NAME_remove+49j
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, 1
		pop	esi
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_4E7:				; CODE XREF: _OBJ_NAME_remove+40j
		xor	eax, eax
		pop	esi
		add	esp, 10h
		retn
_OBJ_NAME_remove endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4F0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_do_all_fn_LHASH_DOALL_ARG proc	near	; DATA XREF: _OBJ_NAME_do_all+25o
					; _OBJ_NAME_do_all_sorted+58o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	edx, [esp+arg_0]
		mov	ecx, [esp+arg_4]
		mov	eax, [edx]
		cmp	eax, [ecx]
		jnz	short locret_50A
		push	dword ptr [ecx+8]
		mov	eax, [ecx+4]
		push	edx
		call	eax
		add	esp, 8

locret_50A:				; CODE XREF: _do_all_fn_LHASH_DOALL_ARG+Cj
		retn
_do_all_fn_LHASH_DOALL_ARG endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 50Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_do_all_fn_doall_arg proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	edx, [esp+arg_0]
		mov	ecx, [esp+arg_4]
		mov	eax, [edx]
		cmp	eax, [ecx]
		jnz	short locret_526
		push	dword ptr [ecx+8]
		mov	eax, [ecx+4]
		push	edx
		call	eax
		add	esp, 8

locret_526:				; CODE XREF: _do_all_fn_doall_arg+Cj
		retn
_do_all_fn_doall_arg endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 528h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl do_all_sorted_cmp(const void *, const void *)
_do_all_sorted_cmp proc	near		; DATA XREF: _OBJ_NAME_do_all_sorted+74o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		mov	ecx, [esp+arg_0]
		mov	eax, [eax]
		mov	ecx, [ecx]
		mov	eax, [eax+8]
		mov	ecx, [ecx+8]

loc_53A:				; CODE XREF: _do_all_sorted_cmp+2Cj
		mov	dl, [ecx]
		cmp	dl, [eax]
		jnz	short loc_559
		test	dl, dl
		jz	short loc_556
		mov	dl, [ecx+1]
		cmp	dl, [eax+1]
		jnz	short loc_559
		add	ecx, 2
		add	eax, 2
		test	dl, dl
		jnz	short loc_53A

loc_556:				; CODE XREF: _do_all_sorted_cmp+1Aj
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_559:				; CODE XREF: _do_all_sorted_cmp+16j
					; _do_all_sorted_cmp+22j
		sbb	eax, eax
		or	eax, 1
		retn
_do_all_sorted_cmp endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 560h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_do_all_sorted_fn proc near		; DATA XREF: _OBJ_NAME_do_all_sorted+67o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		push	esi
		mov	esi, [esp+4+arg_0]
		mov	eax, [esi]
		cmp	eax, [edx]
		jnz	short loc_57B
		mov	ecx, [edx+4]
		mov	eax, [edx+8]
		mov	[eax+ecx*4], esi
		inc	dword ptr [edx+4]

loc_57B:				; CODE XREF: _do_all_sorted_fn+Dj
		pop	esi
		retn
_do_all_sorted_fn endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 580h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_name_funcs_free proc near		; DATA XREF: _OBJ_NAME_cleanup+3Co
		jmp	_CRYPTO_free
_name_funcs_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 588h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_names_lh_free_LHASH_DOALL proc	near	; DATA XREF: _OBJ_NAME_cleanup+12o

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short locret_5AB
		mov	ecx, ds:_free_type
		test	ecx, ecx
		js	short loc_59E
		cmp	ecx, [eax]
		jnz	short locret_5AB

loc_59E:				; CODE XREF: _names_lh_free_LHASH_DOALL+10j
		push	dword ptr [eax]
		push	dword ptr [eax+8]
		call	_OBJ_NAME_remove
		add	esp, 8

locret_5AB:				; CODE XREF: _names_lh_free_LHASH_DOALL+6j
					; _names_lh_free_LHASH_DOALL+14j
		retn
_names_lh_free_LHASH_DOALL endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5ACh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_names_lh_free_doall proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short locret_5CF
		mov	ecx, ds:_free_type
		test	ecx, ecx
		js	short loc_5C2
		cmp	ecx, [eax]
		jnz	short locret_5CF

loc_5C2:				; CODE XREF: _names_lh_free_doall+10j
		push	dword ptr [eax]
		push	dword ptr [eax+8]
		call	_OBJ_NAME_remove
		add	esp, 8

locret_5CF:				; CODE XREF: _names_lh_free_doall+6j
					; _names_lh_free_doall+14j
		retn
_names_lh_free_doall endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5D0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_obj_name_LHASH_COMP proc near		; DATA XREF: _OBJ_NAME_add+10o
					; _OBJ_NAME_init+16o
		jmp	_obj_name_cmp
_obj_name_LHASH_COMP endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5D8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_obj_name_LHASH_HASH proc near		; DATA XREF: _OBJ_NAME_add+15o
					; _OBJ_NAME_init+1Bo

arg_0		= dword	ptr  4

		mov	eax, ds:_name_funcs_stack
		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		test	eax, eax
		jz	short loc_615
		mov	edi, [esi]
		push	eax
		call	_sk_num
		add	esp, 4
		cmp	eax, edi
		jle	short loc_615
		push	edi
		push	ds:_name_funcs_stack
		call	_sk_value
		push	dword ptr [esi+8]
		mov	eax, [eax]
		call	eax
		add	esp, 0Ch
		mov	ecx, eax
		mov	eax, [esi]
		xor	eax, ecx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_615:				; CODE XREF: _obj_name_LHASH_HASH+Dj
					; _obj_name_LHASH_HASH+1Cj
		push	dword ptr [esi+8]
		call	_lh_strhash
		add	esp, 4
		mov	ecx, eax
		mov	eax, [esi]
		xor	eax, ecx
		pop	edi
		pop	esi
		retn
_obj_name_LHASH_HASH endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 62Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_obj_name_cmp	proc near		; CODE XREF: _obj_name_LHASH_COMPj

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		mov	edi, [esp+8+arg_4]
		mov	eax, [esi]
		sub	eax, [edi]
		jnz	short loc_6A4
		mov	eax, ds:_name_funcs_stack
		push	ebx
		test	eax, eax
		jz	short loc_673
		mov	ebx, [esi]
		push	eax
		call	_sk_num
		add	esp, 4
		cmp	eax, ebx
		jle	short loc_673
		push	ebx
		push	ds:_name_funcs_stack
		call	_sk_value
		push	dword ptr [edi+8]
		push	dword ptr [esi+8]
		mov	eax, [eax+4]
		call	eax
		add	esp, 10h
		pop	ebx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_673:				; CODE XREF: _obj_name_cmp+18j
					; _obj_name_cmp+27j
		mov	eax, [edi+8]
		mov	ecx, [esi+8]
		nop	dword ptr [eax]

loc_67C:				; CODE XREF: _obj_name_cmp+6Aj
		mov	dl, [ecx]
		cmp	dl, [eax]
		jnz	short loc_69E
		test	dl, dl
		jz	short loc_698
		mov	dl, [ecx+1]
		cmp	dl, [eax+1]
		jnz	short loc_69E
		add	ecx, 2
		add	eax, 2
		test	dl, dl
		jnz	short loc_67C

loc_698:				; CODE XREF: _obj_name_cmp+58j
		pop	ebx
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_69E:				; CODE XREF: _obj_name_cmp+54j
					; _obj_name_cmp+60j
		sbb	eax, eax
		or	eax, 1
		pop	ebx

loc_6A4:				; CODE XREF: _obj_name_cmp+Ej
		pop	edi
		pop	esi
		retn
_obj_name_cmp	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_obj_name_hash	proc near

arg_0		= dword	ptr  4

		mov	eax, ds:_name_funcs_stack
		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		test	eax, eax
		jz	short loc_6E5
		mov	edi, [esi]
		push	eax
		call	_sk_num
		add	esp, 4
		cmp	eax, edi
		jle	short loc_6E5
		push	edi
		push	ds:_name_funcs_stack
		call	_sk_value
		push	dword ptr [esi+8]
		mov	eax, [eax]
		call	eax
		add	esp, 0Ch
		mov	ecx, eax
		mov	eax, [esi]
		xor	eax, ecx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6E5:				; CODE XREF: _obj_name_hash+Dj
					; _obj_name_hash+1Cj
		push	dword ptr [esi+8]
		call	_lh_strhash
		add	esp, 4
		mov	ecx, eax
		mov	eax, [esi]
		xor	eax, ecx
		pop	edi
		pop	esi
		retn
_obj_name_hash	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 6FCh
; COMDAT (pick any)
		public ??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@
; `string'
??_C@_0BL@PDJKIALP@?4?2crypto?2objects?2o_names?4c?$AA@	db '.\crypto\objects\o_names.c',0
					; DATA XREF: _OBJ_NAME_add+45o
					; _OBJ_NAME_do_all_sorted+14o ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; int __cdecl strcmp(const char	*Str1, const char *Str2)
		extrn _strcmp:near	; DATA XREF: _OBJ_NAME_new_index+82o
; void __cdecl _qsort(void *Base, size_t NumOfElements,	size_t SizeOfElements, int (__cdecl *PtFuncCompare)(const void *, const	void *))
		extrn __imp__qsort:near	; CODE XREF: _OBJ_NAME_do_all_sorted+83p
					; DATA XREF: _OBJ_NAME_do_all_sorted+83r
		extrn _sk_num:near	; CODE XREF: _OBJ_NAME_add+A1p
					; _OBJ_NAME_new_index+43p ...
		extrn _sk_value:near	; CODE XREF: _OBJ_NAME_add+B4p
					; _OBJ_NAME_new_index+BBp ...
		extrn _sk_new_null:near	; CODE XREF: _OBJ_NAME_new_index+11p
		extrn _sk_pop_free:near	; CODE XREF: _OBJ_NAME_cleanup+47p
		extrn _sk_push:near	; CODE XREF: _OBJ_NAME_new_index+9Cp
		extrn _CRYPTO_mem_ctrl:near ; CODE XREF: _OBJ_NAME_add+Bp
					; _OBJ_NAME_add+26p ...
		extrn _CRYPTO_malloc:near ; CODE XREF: _OBJ_NAME_add+4Cp
					; _OBJ_NAME_do_all_sorted+2Fp ...
		extrn _CRYPTO_free:near	; CODE XREF: _OBJ_NAME_add+CBp
					; _OBJ_NAME_do_all_sorted+BAp ...
		extrn _lh_new:near	; CODE XREF: _OBJ_NAME_add+1Ap
					; _OBJ_NAME_init+20p
		extrn _lh_free:near	; CODE XREF: _OBJ_NAME_cleanup+37p
		extrn _lh_insert:near	; CODE XREF: _OBJ_NAME_add+86p
		extrn _lh_delete:near	; CODE XREF: _OBJ_NAME_remove+34p
		extrn _lh_retrieve:near	; CODE XREF: _OBJ_NAME_get+57p
					; _OBJ_NAME_get+85p
		extrn _lh_doall:near	; CODE XREF: _OBJ_NAME_cleanup+25p
		extrn _lh_doall_arg:near ; CODE	XREF: _OBJ_NAME_do_all+30p
					; _OBJ_NAME_do_all_sorted+6Fp
		extrn _lh_strhash:near	; CODE XREF: _obj_name_LHASH_HASH+40p
					; _obj_name_hash+40p
					; DATA XREF: ...
		extrn _lh_num_items:near ; CODE	XREF: _OBJ_NAME_do_all_sorted+23p
		extrn _ERR_put_error:near ; CODE XREF: _OBJ_NAME_new_index+F6p
		extrn __chkstk:near	; CODE XREF: _OBJ_NAME_do_all+5p
					; _OBJ_NAME_do_all_sorted+5p ...


		end
