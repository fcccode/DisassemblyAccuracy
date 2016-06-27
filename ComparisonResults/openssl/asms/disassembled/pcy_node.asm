;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	B9616CC5536108110D5BF29AFEF2C341
; Input	CRC32 :	D3D5D1AD

; File Name   :	C:\compspace\Diff\openssl\obj\pcy_node.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _level_add_node
_level_add_node	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		push	esi
		push	75h ; 'u'
		push	offset ??_C@_0BL@DEPKENKB@?4?2crypto?2x509v3?2pcy_node?4c?$AA@ ; ".\\crypto\\x509v3\\pcy_node.c"
		push	0Ch
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_1A
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1A:					; CODE XREF: _level_add_node+16j
		push	ebx
		mov	ebx, [esp+8+arg_8]
		push	ebp
		mov	ebp, [esp+0Ch+arg_4]
		push	edi
		mov	edi, [esp+10h+arg_0]
		mov	[esi], ebp
		mov	[esi+4], ebx
		mov	dword ptr [esi+8], 0
		test	edi, edi
		jz	short loc_81
		push	dword ptr [ebp+4]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 2EAh
		jnz	short loc_56
		cmp	dword ptr [edi+8], 0
		jnz	short $node_error$24
		mov	[edi+8], esi
		jmp	short loc_81
; ---------------------------------------------------------------------------

loc_56:					; CODE XREF: _level_add_node+49j
		cmp	dword ptr [edi+4], 0
		jnz	short loc_6C
		push	offset _node_cmp
		call	_sk_new
		add	esp, 4
		mov	[edi+4], eax

loc_6C:					; CODE XREF: _level_add_node+5Aj
		mov	eax, [edi+4]
		test	eax, eax
		jz	short $node_error$24
		push	esi
		push	eax
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jz	short $node_error$24

loc_81:					; CODE XREF: _level_add_node+37j
					; _level_add_node+54j
		mov	edi, [esp+10h+arg_C]
		test	edi, edi
		jz	short loc_BC
		cmp	dword ptr [edi+8], 0
		jnz	short loc_97
		call	_sk_new_null
		mov	[edi+8], eax

loc_97:					; CODE XREF: _level_add_node+8Dj
		mov	eax, [edi+8]
		test	eax, eax
		jz	short $node_error$24
		push	ebp
		push	eax
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jnz	short loc_BC

$node_error$24:				; CODE XREF: _level_add_node+4Fj
					; _level_add_node+71j ...
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		xor	eax, eax
		pop	edi
		pop	ebp
		pop	ebx
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_BC:					; CODE XREF: _level_add_node+87j
					; _level_add_node+AAj
		test	ebx, ebx
		jz	short loc_C3
		inc	dword ptr [ebx+8]

loc_C3:					; CODE XREF: _level_add_node+BEj
		pop	edi
		pop	ebp
		pop	ebx
		mov	eax, esi
		pop	esi
		retn
_level_add_node	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0CCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _level_find_node
_level_find_node proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+arg_0]
		push	ebp
		push	esi
		push	edi
		push	dword ptr [ebx+4]
		xor	esi, esi
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	short loc_124
		mov	ebp, [esp+10h+arg_4]
		nop	dword ptr [eax]

loc_EC:					; CODE XREF: _level_find_node+56j
		push	esi
		push	dword ptr [ebx+4]
		call	_sk_value
		mov	edi, eax
		add	esp, 8
		cmp	[edi+4], ebp
		jnz	short loc_114
		mov	ecx, [edi]
		push	[esp+10h+arg_8]
		push	dword ptr [ecx+4]
		call	_OBJ_cmp
		add	esp, 8
		test	eax, eax
		jz	short loc_12B

loc_114:				; CODE XREF: _level_find_node+31j
		push	dword ptr [ebx+4]
		inc	esi
		call	_sk_num
		add	esp, 4
		cmp	esi, eax
		jl	short loc_EC

loc_124:				; CODE XREF: _level_find_node+17j
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_12B:				; CODE XREF: _level_find_node+46j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
_level_find_node endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 134h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_node_cmp	proc near		; DATA XREF: _level_add_node+5Co
					; _policy_node_cmp_newo

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		mov	eax, [eax]
		mov	eax, [eax]
		push	dword ptr [eax+4]
		mov	eax, [esp+4+arg_0]
		mov	eax, [eax]
		mov	eax, [eax]
		push	dword ptr [eax+4]
		call	_OBJ_cmp
		add	esp, 8
		retn
_node_cmp	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 154h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_node_cmp_new
_policy_node_cmp_new proc near
		push	offset _node_cmp
		call	_sk_new
		add	esp, 4
		retn
_policy_node_cmp_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 164h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_node_free
_policy_node_free proc near
		jmp	_CRYPTO_free
_policy_node_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 16Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_node_match
_policy_node_match proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, [esp+arg_4]
		push	edi
		mov	edi, [eax]
		mov	eax, [esp+4+arg_0]
		test	dword ptr [eax+0Ch], 400h
		jnz	short loc_1D2
		test	byte ptr [edi],	3
		jz	short loc_1D2
		push	ebx
		push	esi
		push	dword ptr [edi+0Ch]
		xor	esi, esi
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	short loc_1C3
		mov	ebx, [esp+0Ch+arg_8]

loc_19C:				; CODE XREF: _policy_node_match+55j
		push	esi
		push	dword ptr [edi+0Ch]
		call	_sk_value
		push	ebx
		push	eax
		call	_OBJ_cmp
		add	esp, 10h
		test	eax, eax
		jz	short loc_1C9
		push	dword ptr [edi+0Ch]
		inc	esi
		call	_sk_num
		add	esp, 4
		cmp	esi, eax
		jl	short loc_19C

loc_1C3:				; CODE XREF: _policy_node_match+2Aj
		pop	esi
		pop	ebx
		xor	eax, eax
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_1C9:				; CODE XREF: _policy_node_match+45j
		pop	esi
		pop	ebx
		mov	eax, 1
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_1D2:				; CODE XREF: _policy_node_match+12j
					; _policy_node_match+17j
		push	[esp+4+arg_8]
		push	dword ptr [edi+4]
		call	_OBJ_cmp
		add	esp, 8
		neg	eax
		sbb	eax, eax
		inc	eax
		pop	edi
		retn
_policy_node_match endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1E8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _tree_find_sk
_tree_find_sk	proc near

var_1C		= dword	ptr -1Ch
var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 1Ch
		call	__chkstk
		mov	eax, [esp+1Ch+arg_4]
		mov	[esp+1Ch+var_C], eax
		lea	eax, [esp+1Ch+var_10]
		mov	[esp+1Ch+var_1C], eax
		lea	eax, [esp+1Ch+var_1C]
		push	eax
		push	[esp+20h+arg_0]
		call	_sk_find
		add	esp, 8
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_21C
		xor	eax, eax
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_21C:				; CODE XREF: _tree_find_sk+2Cj
		push	eax
		push	[esp+20h+arg_0]
		call	_sk_value
		add	esp, 8
		add	esp, 1Ch
		retn
_tree_find_sk	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 230h
; COMDAT (pick any)
		public ??_C@_0BL@DEPKENKB@?4?2crypto?2x509v3?2pcy_node?4c?$AA@
; `string'
??_C@_0BL@DEPKENKB@?4?2crypto?2x509v3?2pcy_node?4c?$AA@	db '.\crypto\x509v3\pcy_node.c',0
					; DATA XREF: _level_add_node+3o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _sk_num:near	; CODE XREF: _level_find_node+Dp
					; _level_find_node+4Cp	...
		extrn _sk_value:near	; CODE XREF: _level_find_node+24p
					; _policy_node_match+34p ...
		extrn _sk_new:near	; CODE XREF: _level_add_node+61p
					; _policy_node_cmp_new+5p
		extrn _sk_new_null:near	; CODE XREF: _level_add_node+8Fp
		extrn _sk_find:near	; CODE XREF: _tree_find_sk+21p
		extrn _sk_push:near	; CODE XREF: _level_add_node+75p
					; _level_add_node+A0p
		extrn _CRYPTO_malloc:near ; CODE XREF: _level_add_node+Ap
		extrn _CRYPTO_free:near	; CODE XREF: _level_add_node+ADp
					; _policy_node_freej
		extrn _OBJ_obj2nid:near	; CODE XREF: _level_add_node+3Cp
		extrn _OBJ_cmp:near	; CODE XREF: _level_find_node+3Cp
					; _node_cmp+16p ...
		extrn __chkstk:near	; CODE XREF: _tree_find_sk+5p


		end
