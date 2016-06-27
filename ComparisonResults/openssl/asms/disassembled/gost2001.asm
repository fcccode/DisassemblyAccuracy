;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	0E139D7FFDD5DC7C5C15BD7932A37FBF
; Input	CRC32 :	415EBCA5

; File Name   :	C:\compspace\Diff\openssl\obj\gost2001.obj
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


		public _fill_GOST2001_params
_fill_GOST2001_params proc near

var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 1Ch
		call	__chkstk
		push	ebp
		push	esi
		push	edi
		mov	esi, offset _R3410_2001_paramset
		mov	[esp+28h+var_14], 0
		mov	[esp+28h+var_8], 0
		mov	[esp+28h+var_18], 0
		mov	[esp+28h+var_1C], 0
		mov	[esp+28h+var_C], 0
		mov	[esp+28h+var_10], 0
		call	_BN_CTX_new
		mov	edi, eax
		xor	ebp, ebp
		mov	[esp+28h+var_4], ebp
		test	edi, edi
		jnz	short loc_6F
		push	2Dh ; '-'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	65h ; 'e'
		call	_ERR_GOST_error
		add	esp, 10h
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_6F:					; CODE XREF: _fill_GOST2001_params+51j
		push	ebx
		push	edi
		call	_BN_CTX_start
		push	edi
		call	_BN_CTX_get
		push	edi
		mov	[esp+38h+var_14], eax
		call	_BN_CTX_get
		push	edi
		mov	[esp+3Ch+var_18], eax
		call	_BN_CTX_get
		push	edi
		mov	[esp+40h+var_1C], eax
		call	_BN_CTX_get
		push	edi
		mov	[esp+44h+var_C], eax
		call	_BN_CTX_get
		push	edi
		mov	[esp+48h+var_10], eax
		call	_BN_CTX_get
		add	esp, 1Ch
		mov	[esp+2Ch+var_8], eax
		cmp	[esp+2Ch+var_14], ebp
		jz	loc_29A
		cmp	[esp+2Ch+var_18], ebp
		jz	loc_29A
		cmp	[esp+2Ch+var_1C], ebp
		jz	loc_29A
		cmp	[esp+2Ch+var_C], ebp
		jz	loc_29A
		cmp	[esp+2Ch+var_10], ebp
		jz	loc_29A
		test	eax, eax
		jz	loc_29A
		mov	eax, dword ptr ds:_R3410_2001_paramset
		test	eax, eax
		jz	short loc_11F
		mov	ecx, [esp+2Ch+arg_4]
		nop	dword ptr [eax+00h]

loc_100:				; CODE XREF: _fill_GOST2001_params+10Cj
		cmp	eax, ecx
		jz	short loc_11F
		mov	eax, [esi+1Ch]
		add	esi, 1Ch
		test	eax, eax
		jnz	short loc_100
		push	40h ; '@'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	82h ; '�'
		jmp	loc_2A3
; ---------------------------------------------------------------------------

loc_11F:				; CODE XREF: _fill_GOST2001_params+F6j
					; _fill_GOST2001_params+102j
		cmp	[esi], ebp
		jnz	short loc_134
		push	40h ; '@'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	82h ; '�'
		jmp	loc_2A3
; ---------------------------------------------------------------------------

loc_134:				; CODE XREF: _fill_GOST2001_params+121j
		push	dword ptr [esi+0Ch]
		lea	eax, [esp+30h+var_14]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	loc_28F
		push	dword ptr [esi+4]
		lea	eax, [esp+30h+var_18]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	loc_28F
		push	dword ptr [esi+8]
		lea	eax, [esp+30h+var_1C]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	loc_28F
		push	edi
		push	[esp+30h+var_1C]
		push	[esp+34h+var_18]
		push	[esp+38h+var_14]
		call	_EC_GROUP_new_curve_GFp
		mov	ebx, eax
		add	esp, 10h
		test	ebx, ebx
		jnz	short loc_19E
		push	4Dh ; 'M'
		jmp	loc_29C
; ---------------------------------------------------------------------------

loc_19E:				; CODE XREF: _fill_GOST2001_params+195j
		push	ebx
		call	_EC_POINT_new
		mov	ebp, eax
		add	esp, 4
		test	ebp, ebp
		jnz	short loc_1D2
		push	53h ; 'S'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	65h ; 'e'
		call	_ERR_GOST_error
		add	esp, 10h
		push	ebx
		call	_EC_GROUP_free
		mov	ebp, [esp+30h+var_4]
		add	esp, 4
		jmp	loc_2AD
; ---------------------------------------------------------------------------

loc_1D2:				; CODE XREF: _fill_GOST2001_params+1ABj
		push	dword ptr [esi+14h]
		lea	eax, [esp+30h+var_C]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	short loc_264
		push	dword ptr [esi+18h]
		lea	eax, [esp+30h+var_10]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	short loc_264
		push	edi
		push	[esp+30h+var_10]
		push	[esp+34h+var_C]
		push	ebp
		push	ebx
		call	_EC_POINT_set_affine_coordinates_GFp
		add	esp, 14h
		test	eax, eax
		jz	short loc_264
		push	dword ptr [esi+10h]
		lea	eax, [esp+30h+var_8]
		push	eax
		call	_BN_hex2bn
		add	esp, 8
		test	eax, eax
		jz	short loc_264
		push	0
		push	[esp+30h+var_8]
		push	ebp
		push	ebx
		call	_EC_GROUP_set_generator
		add	esp, 10h
		test	eax, eax
		jnz	short loc_23D
		push	66h ; 'f'
		jmp	short loc_266
; ---------------------------------------------------------------------------

loc_23D:				; CODE XREF: _fill_GOST2001_params+237j
		push	dword ptr [esi]
		push	ebx
		call	_EC_GROUP_set_curve_name
		push	ebx
		push	[esp+38h+arg_0]
		call	_EC_KEY_set_group
		add	esp, 10h
		test	eax, eax
		jnz	short loc_25A
		push	6Bh ; 'k'
		jmp	short loc_266
; ---------------------------------------------------------------------------

loc_25A:				; CODE XREF: _fill_GOST2001_params+254j
		mov	[esp+2Ch+var_4], 1
		jmp	short $err$30
; ---------------------------------------------------------------------------

loc_264:				; CODE XREF: _fill_GOST2001_params+1E4j
					; _fill_GOST2001_params+1F8j ...
		push	5Bh ; '['

loc_266:				; CODE XREF: _fill_GOST2001_params+23Bj
					; _fill_GOST2001_params+258j
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	65h ; 'e'
		call	_ERR_GOST_error
		add	esp, 10h

$err$30:				; CODE XREF: _fill_GOST2001_params+262j
		push	ebp
		call	_EC_POINT_free
		add	esp, 4
		push	ebx
		call	_EC_GROUP_free
		mov	ebp, [esp+30h+var_4]
		add	esp, 4
		jmp	short loc_2AD
; ---------------------------------------------------------------------------

loc_28F:				; CODE XREF: _fill_GOST2001_params+146j
					; _fill_GOST2001_params+15Ej ...
		push	47h ; 'G'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		jmp	short loc_2A3
; ---------------------------------------------------------------------------

loc_29A:				; CODE XREF: _fill_GOST2001_params+B9j
					; _fill_GOST2001_params+C3j ...
		push	39h ; '9'

loc_29C:				; CODE XREF: _fill_GOST2001_params+199j
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'

loc_2A3:				; CODE XREF: _fill_GOST2001_params+11Aj
					; _fill_GOST2001_params+12Fj ...
		push	65h ; 'e'
		call	_ERR_GOST_error
		add	esp, 10h

loc_2AD:				; CODE XREF: _fill_GOST2001_params+1CDj
					; _fill_GOST2001_params+28Dj
		push	edi
		call	_BN_CTX_end
		push	edi
		call	_BN_CTX_free
		add	esp, 8
		mov	eax, ebp
		pop	ebx
		pop	edi
		pop	esi
		pop	ebp
		add	esp, 1Ch
		retn
_fill_GOST2001_params endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2C8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _gost2001_compute_public
_gost2001_compute_public proc near	; CODE XREF: _gost2001_keygen+68p

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4

		mov	eax, 8
		call	__chkstk
		push	ebx
		mov	ebx, [esp+0Ch+arg_0]
		push	ebp
		push	edi
		push	ebx
		call	_EC_KEY_get0_group
		mov	ebp, eax
		xor	edi, edi
		add	esp, 4
		mov	[esp+14h+var_8], edi
		test	ebp, ebp
		jnz	short loc_30D
		push	187h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	72h ; 'r'
		push	68h ; 'h'
		call	_ERR_GOST_error
		add	esp, 10h
		xor	eax, eax
		pop	edi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_30D:				; CODE XREF: _gost2001_compute_public+24j
		push	esi
		call	_BN_CTX_new
		mov	esi, eax
		test	esi, esi
		jnz	short loc_339
		push	18Ch
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	68h ; 'h'
		call	_ERR_GOST_error
		add	esp, 10h
		mov	eax, edi
		pop	esi
		pop	edi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_339:				; CODE XREF: _gost2001_compute_public+4Fj
		push	esi
		call	_BN_CTX_start
		push	ebx
		call	_EC_KEY_get0_private_key
		add	esp, 8
		mov	[esp+18h+var_4], eax
		test	eax, eax
		jnz	short loc_36B
		push	191h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	10h
		push	68h ; 'h'
		call	_ERR_GOST_error
		add	esp, 10h
		jmp	loc_3EB
; ---------------------------------------------------------------------------

loc_36B:				; CODE XREF: _gost2001_compute_public+86j
		push	ebp
		call	_EC_POINT_new
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jnz	short loc_392
		push	197h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	68h ; 'h'
		call	_ERR_GOST_error
		add	esp, 10h
		jmp	short loc_3EB
; ---------------------------------------------------------------------------

loc_392:				; CODE XREF: _gost2001_compute_public+B0j
		push	esi
		push	0
		push	0
		push	[esp+24h+var_4]
		push	edi
		push	ebp
		call	_EC_POINT_mul
		add	esp, 18h
		test	eax, eax
		jnz	short loc_3C1
		push	19Bh

loc_3AE:				; CODE XREF: _gost2001_compute_public+10Cj
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	10h
		push	68h ; 'h'
		call	_ERR_GOST_error
		add	esp, 10h
		jmp	short $err$13
; ---------------------------------------------------------------------------

loc_3C1:				; CODE XREF: _gost2001_compute_public+DFj
		push	edi
		push	ebx
		call	_EC_KEY_set_public_key
		add	esp, 8
		test	eax, eax
		jnz	short loc_3D6
		push	19Fh
		jmp	short loc_3AE
; ---------------------------------------------------------------------------

loc_3D6:				; CODE XREF: _gost2001_compute_public+105j
		mov	[esp+18h+var_8], 100h

$err$13:				; CODE XREF: _gost2001_compute_public+F7j
		push	edi
		call	_EC_POINT_free
		mov	edi, [esp+1Ch+var_8]
		add	esp, 4

loc_3EB:				; CODE XREF: _gost2001_compute_public+9Ej
					; _gost2001_compute_public+C8j
		push	esi
		call	_BN_CTX_end
		push	esi
		call	_BN_CTX_free
		add	esp, 8
		mov	eax, edi
		pop	esi
		pop	edi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
_gost2001_compute_public endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 404h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _gost2001_do_sign
_gost2001_do_sign proc near

var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 28h ; '('
		call	__chkstk
		push	ebx
		push	ebp
		push	esi
		push	edi
		push	[esp+38h+arg_0]
		xor	eax, eax
		call	_hashsum2bn
		add	esp, 4
		mov	[esp+38h+var_C], eax
		xor	eax, eax
		xor	edi, edi
		mov	[esp+38h+var_10], edi
		xor	ebx, ebx
		mov	[esp+38h+var_14], eax
		xor	ebp, ebp
		mov	[esp+38h+var_20], eax
		call	_BN_CTX_new
		mov	esi, eax
		test	esi, esi
		jz	loc_81A
		cmp	[esp+38h+var_C], ebx
		jz	loc_81A
		push	esi
		call	_BN_CTX_start
		add	esp, 4
		cmp	[esp+38h+arg_4], 20h ; ' '
		jz	short loc_478
		push	offset ??_C@_0L@CJLMMIGL@dlen?5?$DN?$DN?532?$AA@ ; "dlen == 32"
		push	8Eh ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		call	_OpenSSLDie
		add	esp, 0Ch

loc_478:				; CODE XREF: _gost2001_do_sign+5Bj
		call	_DSA_SIG_new
		mov	[esp+38h+var_28], eax
		test	eax, eax
		jnz	short loc_4A1
		push	91h ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	76h ; 'v'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebx, [esp+48h+var_28]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_4A1:				; CODE XREF: _gost2001_do_sign+7Fj
		mov	ebp, [esp+38h+arg_8]
		push	ebp
		call	_EC_KEY_get0_group
		add	esp, 4
		mov	[esp+38h+var_18], eax
		test	eax, eax
		jnz	short loc_4D4
		push	96h ; '�'

loc_4BB:				; CODE XREF: _gost2001_do_sign+111j
					; _gost2001_do_sign+407j ...
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebx, [esp+48h+var_28]
		xor	ebp, ebp
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_4D4:				; CODE XREF: _gost2001_do_sign+B0j
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	[esp+38h+var_1C], eax
		test	eax, eax
		jz	loc_810
		push	esi
		push	eax
		push	[esp+40h+var_18]
		call	_EC_GROUP_get_order
		add	esp, 0Ch
		test	eax, eax
		jz	loc_810
		push	ebp
		call	_EC_KEY_get0_private_key
		add	esp, 4
		mov	[esp+38h+var_4], eax
		test	eax, eax
		jnz	short loc_517
		push	0A0h ; '�'
		jmp	short loc_4BB
; ---------------------------------------------------------------------------

loc_517:				; CODE XREF: _gost2001_do_sign+10Aj
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	[esp+38h+var_8], eax
		test	eax, eax
		jz	loc_806
		mov	ebp, [esp+38h+var_1C]
		push	esi
		push	ebp
		push	[esp+40h+var_C]
		push	eax
		push	0
		call	_BN_div
		add	esp, 14h
		test	eax, eax
		jz	loc_806
		mov	eax, [esp+38h+var_8]
		cmp	[eax+4], ebx
		jnz	short loc_55D
		push	1
		push	eax
		call	_BN_set_word
		add	esp, 8

loc_55D:				; CODE XREF: _gost2001_do_sign+14Cj
		push	esi
		call	_BN_CTX_get
		push	[esp+3Ch+var_18]
		mov	[esp+40h+var_1C], eax
		call	_EC_POINT_new
		mov	ecx, eax
		add	esp, 8
		mov	eax, [esp+38h+var_1C]
		mov	[esp+38h+var_24], ecx
		test	eax, eax
		jz	short loc_585
		test	ecx, ecx
		jnz	short loc_5A9

loc_585:				; CODE XREF: _gost2001_do_sign+17Bj
		push	0B5h ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_5A5:				; CODE XREF: _gost2001_do_sign+23Aj
		mov	eax, [esp+38h+var_1C]

loc_5A9:				; CODE XREF: _gost2001_do_sign+17Fj
					; _gost2001_do_sign+2F5j
		push	ebp
		push	eax
		call	_BN_rand_range
		add	esp, 8
		test	eax, eax
		jz	loc_7E9
		push	esi
		push	0
		push	0
		push	[esp+44h+var_1C]
		push	[esp+48h+var_24]
		push	[esp+4Ch+var_18]
		call	_EC_POINT_mul
		add	esp, 18h
		test	eax, eax
		jz	loc_7CC
		test	ebx, ebx
		jnz	short loc_5EB
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	ebx, eax

loc_5EB:				; CODE XREF: _gost2001_do_sign+1DAj
		test	edi, edi
		jnz	short loc_5FA
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	edi, eax

loc_5FA:				; CODE XREF: _gost2001_do_sign+1E9j
		test	ebx, ebx
		jz	loc_7AF
		test	edi, edi
		jz	loc_7AF
		push	esi
		push	0
		push	ebx
		push	[esp+44h+var_24]
		push	[esp+48h+var_18]
		call	_EC_POINT_get_affine_coordinates_GFp
		add	esp, 14h
		test	eax, eax
		jz	loc_78F
		push	esi
		push	ebp
		push	ebx
		push	edi
		call	_BN_nnmod
		add	esp, 10h
		test	eax, eax
		jz	loc_788
		cmp	dword ptr [edi+4], 0
		jz	loc_5A5
		cmp	[esp+38h+var_14], 0
		jnz	short loc_658
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	[esp+38h+var_14], eax

loc_658:				; CODE XREF: _gost2001_do_sign+245j
		cmp	[esp+38h+var_20], 0
		jnz	short loc_66C
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	[esp+38h+var_20], eax

loc_66C:				; CODE XREF: _gost2001_do_sign+259j
		mov	eax, [esp+38h+var_10]
		test	eax, eax
		jnz	short loc_681
		push	esi
		call	_BN_CTX_get
		add	esp, 4
		mov	[esp+38h+var_10], eax

loc_681:				; CODE XREF: _gost2001_do_sign+26Ej
		mov	ecx, [esp+38h+var_14]
		test	ecx, ecx
		jz	loc_768
		cmp	[esp+38h+var_20], 0
		jz	loc_768
		test	eax, eax
		jz	loc_768
		push	esi
		push	ebp
		push	edi
		push	[esp+44h+var_4]
		push	ecx
		call	_BN_mod_mul
		add	esp, 14h
		test	eax, eax
		jz	loc_748
		push	esi
		push	ebp
		push	[esp+40h+var_8]
		push	[esp+44h+var_1C]
		push	[esp+48h+var_20]
		call	_BN_mod_mul
		add	esp, 14h
		test	eax, eax
		jz	short loc_748
		mov	eax, [esp+38h+var_14]
		push	esi
		push	ebp
		push	[esp+40h+var_20]
		push	eax
		push	[esp+48h+var_10]
		call	_BN_mod_add
		add	esp, 14h
		test	eax, eax
		jz	short loc_748
		mov	ecx, [esp+38h+var_10]
		mov	eax, [esp+38h+var_1C]
		cmp	dword ptr [ecx+4], 0
		jz	loc_5A9
		push	ecx
		call	_BN_dup
		mov	ebx, [esp+3Ch+var_28]
		push	edi
		mov	[ebx+4], eax
		call	_BN_dup
		add	esp, 8
		mov	[ebx], eax
		cmp	dword ptr [ebx+4], 0
		jz	short loc_72C
		test	eax, eax
		jz	short loc_72C
		mov	ebp, [esp+38h+var_24]
		mov	edi, ebx
		jmp	$err$68
; ---------------------------------------------------------------------------

loc_72C:				; CODE XREF: _gost2001_do_sign+317j
					; _gost2001_do_sign+31Bj
		push	0EEh ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_748:				; CODE XREF: _gost2001_do_sign+2AEj
					; _gost2001_do_sign+2CCj ...
		push	0E5h ; '�'

loc_74D:				; CODE XREF: _gost2001_do_sign+389j
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_768:				; CODE XREF: _gost2001_do_sign+283j
					; _gost2001_do_sign+28Ej ...
		push	0DEh ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_788:				; CODE XREF: _gost2001_do_sign+230j
		push	0D1h ; '�'
		jmp	short loc_74D
; ---------------------------------------------------------------------------

loc_78F:				; CODE XREF: _gost2001_do_sign+21Cj
		push	0CCh ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	10h
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	loc_82F
; ---------------------------------------------------------------------------

loc_7AF:				; CODE XREF: _gost2001_do_sign+1F8j
					; _gost2001_do_sign+200j
		push	0C8h ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	short loc_82F
; ---------------------------------------------------------------------------

loc_7CC:				; CODE XREF: _gost2001_do_sign+1D2j
		push	0C0h ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	10h
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	short loc_82F
; ---------------------------------------------------------------------------

loc_7E9:				; CODE XREF: _gost2001_do_sign+1B1j
		push	0BCh ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	7Dh ; '}'
		push	69h ; 'i'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_24]
		mov	ebx, [esp+48h+var_28]
		jmp	short loc_82F
; ---------------------------------------------------------------------------

loc_806:				; CODE XREF: _gost2001_do_sign+122j
					; _gost2001_do_sign+13Fj
		push	0A5h ; '�'
		jmp	loc_4BB
; ---------------------------------------------------------------------------

loc_810:				; CODE XREF: _gost2001_do_sign+DFj
					; _gost2001_do_sign+F5j
		push	9Bh ; '�'
		jmp	loc_4BB
; ---------------------------------------------------------------------------

loc_81A:				; CODE XREF: _gost2001_do_sign+3Dj
					; _gost2001_do_sign+47j
		push	8Ah ; '�'
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	69h ; 'i'
		call	_ERR_GOST_error
		xor	ebx, ebx

loc_82F:				; CODE XREF: _gost2001_do_sign+98j
					; _gost2001_do_sign+CBj ...
		add	esp, 10h
		xor	edi, edi

$err$68:				; CODE XREF: _gost2001_do_sign+323j
		test	esi, esi
		jz	short loc_847
		push	esi
		call	_BN_CTX_end
		push	esi
		call	_BN_CTX_free
		add	esp, 8

loc_847:				; CODE XREF: _gost2001_do_sign+432j
		test	ebp, ebp
		jz	short loc_854
		push	ebp
		call	_EC_POINT_free
		add	esp, 4

loc_854:				; CODE XREF: _gost2001_do_sign+445j
		mov	eax, [esp+38h+var_C]
		test	eax, eax
		jz	short loc_865
		push	eax
		call	_BN_free
		add	esp, 4

loc_865:				; CODE XREF: _gost2001_do_sign+456j
		test	edi, edi
		jnz	short loc_876
		test	ebx, ebx
		jz	short loc_876
		push	ebx
		call	_DSA_SIG_free
		add	esp, 4

loc_876:				; CODE XREF: _gost2001_do_sign+463j
					; _gost2001_do_sign+467j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 28h
		retn
_gost2001_do_sign endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 880h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _gost2001_do_verify
_gost2001_do_verify proc near

var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 28h ; '('
		call	__chkstk
		push	ebx
		push	ebp
		push	esi
		push	edi
		call	_BN_CTX_new
		push	[esp+38h+arg_C]
		mov	esi, eax
		call	_EC_KEY_get0_group
		add	esp, 4
		mov	ebx, eax
		xor	ebp, ebp
		mov	[esp+38h+var_10], ebx
		xor	edi, edi
		test	esi, esi
		jz	loc_C2E
		test	ebx, ebx
		jz	loc_C2E
		push	esi
		call	_BN_CTX_start
		push	esi
		call	_BN_CTX_get
		push	esi
		mov	edi, eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+48h+var_24], eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+4Ch+var_18], eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+50h+var_1C], eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+54h+var_20], eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+58h+var_14], eax
		call	_BN_CTX_get
		push	esi
		mov	[esp+5Ch+var_C], eax
		call	_BN_CTX_get
		add	esp, 24h
		mov	[esp+38h+var_8], eax
		test	edi, edi
		jz	loc_C14
		cmp	[esp+38h+var_24], ebp
		jz	loc_C14
		cmp	[esp+38h+var_18], ebp
		jz	loc_C14
		cmp	[esp+38h+var_1C], ebp
		jz	loc_C14
		cmp	[esp+38h+var_20], ebp
		jz	loc_C14
		cmp	[esp+38h+var_14], ebp
		jz	loc_C14
		cmp	[esp+38h+var_C], ebp
		jz	loc_C14
		test	eax, eax
		jz	loc_C14
		push	[esp+38h+arg_C]
		call	_EC_KEY_get0_public_key
		add	esp, 4
		mov	[esp+38h+var_4], eax
		test	eax, eax
		jz	loc_BFA
		push	esi
		push	edi
		push	ebx
		call	_EC_GROUP_get_order
		add	esp, 0Ch
		test	eax, eax
		jz	loc_BFA
		mov	ebp, [esp+38h+arg_8]
		mov	ecx, [ebp+4]
		cmp	dword ptr [ecx+4], 0
		jz	loc_BDE
		mov	eax, [ebp+0]
		cmp	dword ptr [eax+4], 0
		jz	loc_BDE
		push	edi
		push	ecx
		call	_BN_cmp
		add	esp, 8
		cmp	eax, 1
		jge	loc_BDE
		push	edi
		push	dword ptr [ebp+0]
		call	_BN_cmp
		add	esp, 8
		cmp	eax, 1
		jge	loc_BDE
		push	[esp+38h+arg_0]
		call	_hashsum2bn
		add	esp, 4
		mov	[esp+38h+var_28], eax
		test	eax, eax
		jz	loc_BC0
		push	esi
		push	edi
		push	eax
		push	[esp+44h+var_24]
		push	0
		call	_BN_div
		add	esp, 14h
		test	eax, eax
		jz	loc_BC0
		mov	eax, [esp+38h+var_24]
		cmp	dword ptr [eax+4], 0
		jnz	short loc_A3E
		push	1
		push	eax
		call	_BN_set_word
		add	esp, 8
		test	eax, eax
		jnz	short loc_A3A
		push	13Eh
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_28]
		add	esp, 10h
		xor	edi, edi
		jmp	loc_C44
; ---------------------------------------------------------------------------

loc_A3A:				; CODE XREF: _gost2001_do_verify+197j
		mov	eax, [esp+38h+var_24]

loc_A3E:				; CODE XREF: _gost2001_do_verify+188j
		push	esi
		push	edi
		push	eax
		push	[esp+44h+var_8]
		call	_BN_mod_inverse
		add	esp, 10h
		mov	[esp+38h+var_8], eax
		test	eax, eax
		jz	loc_B9F
		push	esi
		push	edi
		push	eax
		push	dword ptr [ebp+4]
		push	[esp+48h+var_18]
		call	_BN_mod_mul
		add	esp, 14h
		test	eax, eax
		jz	loc_B9F
		push	dword ptr [ebp+0]
		push	edi
		push	[esp+40h+var_20]
		call	_BN_sub
		add	esp, 0Ch
		test	eax, eax
		jz	loc_B9F
		push	esi
		push	edi
		push	[esp+40h+var_8]
		push	[esp+44h+var_20]
		push	[esp+48h+var_1C]
		call	_BN_mod_mul
		add	esp, 14h
		test	eax, eax
		jz	loc_B9F
		push	ebx
		call	_EC_POINT_new
		mov	ebx, eax
		add	esp, 4
		test	ebx, ebx
		jnz	short loc_AD9
		push	153h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_28]
		add	esp, 10h
		xor	edi, edi
		jmp	loc_C44
; ---------------------------------------------------------------------------

loc_AD9:				; CODE XREF: _gost2001_do_verify+236j
		push	esi
		push	[esp+3Ch+var_1C]
		push	[esp+40h+var_4]
		push	[esp+44h+var_18]
		push	ebx
		push	[esp+4Ch+var_10]
		call	_EC_POINT_mul
		add	esp, 18h
		test	eax, eax
		jnz	short loc_B21
		push	157h

loc_AFC:				; CODE XREF: _gost2001_do_verify+2BEj
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	10h

loc_B03:				; CODE XREF: _gost2001_do_verify+2E5j
					; _gost2001_do_verify+303j
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		add	esp, 10h
		xor	edi, edi
		push	ebx
		call	_EC_POINT_free
		mov	ebp, [esp+3Ch+var_28]
		add	esp, 4
		jmp	loc_C44
; ---------------------------------------------------------------------------

loc_B21:				; CODE XREF: _gost2001_do_verify+275j
		push	esi
		push	0
		push	[esp+40h+var_14]
		push	ebx
		push	[esp+48h+var_10]
		call	_EC_POINT_get_affine_coordinates_GFp
		add	esp, 14h
		test	eax, eax
		jnz	short loc_B40
		push	15Bh
		jmp	short loc_AFC
; ---------------------------------------------------------------------------

loc_B40:				; CODE XREF: _gost2001_do_verify+2B7j
		push	esi
		push	edi
		push	[esp+40h+var_14]
		mov	edi, [esp+44h+var_C]
		push	edi
		push	0
		call	_BN_div
		add	esp, 14h
		test	eax, eax
		jnz	short loc_B67
		push	15Fh
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		jmp	short loc_B03
; ---------------------------------------------------------------------------

loc_B67:				; CODE XREF: _gost2001_do_verify+2D7j
		push	dword ptr [ebp+0]
		push	edi
		call	_BN_cmp
		add	esp, 8
		test	eax, eax
		jz	short loc_B88
		push	16Ah
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	7Eh ; '~'
		jmp	loc_B03
; ---------------------------------------------------------------------------

loc_B88:				; CODE XREF: _gost2001_do_verify+2F5j
		mov	edi, 1

$err$30_0:
		push	ebx
		call	_EC_POINT_free
		mov	ebp, [esp+3Ch+var_28]
		add	esp, 4
		jmp	loc_C44
; ---------------------------------------------------------------------------

loc_B9F:				; CODE XREF: _gost2001_do_verify+1D3j
					; _gost2001_do_verify+1EDj ...
		push	146h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_28]
		add	esp, 10h
		xor	edi, edi
		jmp	loc_C44
; ---------------------------------------------------------------------------

loc_BC0:				; CODE XREF: _gost2001_do_verify+161j
					; _gost2001_do_verify+17Aj
		push	134h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		mov	ebp, [esp+48h+var_28]
		add	esp, 10h
		xor	edi, edi
		jmp	short loc_C44
; ---------------------------------------------------------------------------

loc_BDE:				; CODE XREF: _gost2001_do_verify+114j
					; _gost2001_do_verify+121j ...
		push	12Dh
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	7Fh ; ''
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		add	esp, 10h
		xor	ebp, ebp
		xor	edi, edi
		jmp	short loc_C44
; ---------------------------------------------------------------------------

loc_BFA:				; CODE XREF: _gost2001_do_verify+F0j
					; _gost2001_do_verify+103j
		push	126h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		add	esp, 10h
		xor	edi, edi
		jmp	short loc_C44
; ---------------------------------------------------------------------------

loc_C14:				; CODE XREF: _gost2001_do_verify+94j
					; _gost2001_do_verify+9Ej ...
		push	120h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	41h ; 'A'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		add	esp, 10h
		xor	edi, edi
		jmp	short loc_C44
; ---------------------------------------------------------------------------

loc_C2E:				; CODE XREF: _gost2001_do_verify+2Dj
					; _gost2001_do_verify+35j
		push	112h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'
		push	6Ah ; 'j'
		call	_ERR_GOST_error
		add	esp, 10h

loc_C44:				; CODE XREF: _gost2001_do_verify+1B5j
					; _gost2001_do_verify+254j ...
		test	esi, esi
		jz	short loc_C57
		push	esi
		call	_BN_CTX_end
		push	esi
		call	_BN_CTX_free
		add	esp, 8

loc_C57:				; CODE XREF: _gost2001_do_verify+3C6j
		test	ebp, ebp
		jz	short loc_C64
		push	ebp
		call	_BN_free
		add	esp, 4

loc_C64:				; CODE XREF: _gost2001_do_verify+3D9j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 28h
		retn
_gost2001_do_verify endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0C70h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _gost2001_keygen
_gost2001_keygen proc near

arg_0		= dword	ptr  4

		push	ebx
		push	esi
		push	edi
		call	_BN_new
		mov	edi, eax
		call	_BN_new
		mov	ebx, [esp+0Ch+arg_0]
		mov	esi, eax
		push	ebx
		call	_EC_KEY_get0_group
		add	esp, 4
		test	eax, eax
		jz	short loc_CF2
		push	0
		push	edi
		push	eax
		call	_EC_GROUP_get_order
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_CF2

loc_CA2:				; CODE XREF: _gost2001_keygen+44j
		push	edi
		push	esi
		call	_BN_rand_range
		add	esp, 8
		test	eax, eax
		jz	short loc_CE4
		cmp	dword ptr [esi+4], 0
		jz	short loc_CA2
		push	esi
		push	ebx
		call	_EC_KEY_set_private_key
		add	esp, 8
		test	eax, eax
		jnz	short loc_CCB
		push	1CAh
		jmp	short loc_CF7
; ---------------------------------------------------------------------------

loc_CCB:				; CODE XREF: _gost2001_keygen+52j
		push	esi
		call	_BN_free
		push	edi
		call	_BN_free
		push	ebx
		call	_gost2001_compute_public
		add	esp, 0Ch
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_CE4:				; CODE XREF: _gost2001_keygen+3Ej
		push	1C1h
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	7Dh ; '}'
		jmp	short loc_CFE
; ---------------------------------------------------------------------------

loc_CF2:				; CODE XREF: _gost2001_keygen+20j
					; _gost2001_keygen+30j
		push	1B8h

loc_CF7:				; CODE XREF: _gost2001_keygen+59j
		push	offset ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@	; ".\\engines\\ccgost\\gost2001.c"
		push	44h ; 'D'

loc_CFE:				; CODE XREF: _gost2001_keygen+80j
		push	6Bh ; 'k'
		call	_ERR_GOST_error
		push	esi
		call	_BN_free
		push	edi
		call	_BN_free
		add	esp, 18h
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
_gost2001_keygen endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D1Ch
; COMDAT (pick any)
		public ??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@
; `string'
??_C@_0BM@CEBOMHLO@?4?2engines?2ccgost?2gost2001?4c?$AA@ db '.\engines\ccgost\gost2001.c',0
					; DATA XREF: _fill_GOST2001_params+55o
					; _fill_GOST2001_params+110o ...
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D38h
; COMDAT (pick any)
		public ??_C@_0L@CJLMMIGL@dlen?5?$DN?$DN?532?$AA@
; `string'
??_C@_0L@CJLMMIGL@dlen?5?$DN?$DN?532?$AA@ db 'dlen == 32',0
					; DATA XREF: _gost2001_do_sign+5Do
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _OpenSSLDie:near	; CODE XREF: _gost2001_do_sign+6Cp
		extrn _BN_CTX_new:near	; CODE XREF: _fill_GOST2001_params+42p
					; _gost2001_compute_public+46p	...
		extrn _BN_CTX_free:near	; CODE XREF: _fill_GOST2001_params+2B4p
					; _gost2001_compute_public+12Ap ...
		extrn _BN_CTX_start:near ; CODE	XREF: _fill_GOST2001_params+71p
					; _gost2001_compute_public+72p	...
		extrn _BN_CTX_get:near	; CODE XREF: _fill_GOST2001_params+77p
					; _fill_GOST2001_params+81p ...
		extrn _BN_CTX_end:near	; CODE XREF: _fill_GOST2001_params+2AEp
					; _gost2001_compute_public+124p ...
		extrn _BN_rand_range:near ; CODE XREF: _gost2001_do_sign+1A7p
					; _gost2001_keygen+34p
		extrn _BN_new:near	; CODE XREF: _gost2001_keygen+3p
					; _gost2001_keygen+Ap
		extrn _BN_sub:near	; CODE XREF: _gost2001_do_verify+1FBp
		extrn _BN_div:near	; CODE XREF: _gost2001_do_sign+135p
					; _gost2001_do_verify+170p ...
		extrn _BN_nnmod:near	; CODE XREF: _gost2001_do_sign+226p
		extrn _BN_mod_add:near	; CODE XREF: _gost2001_do_sign+2DDp
		extrn _BN_mod_mul:near	; CODE XREF: _gost2001_do_sign+2A4p
					; _gost2001_do_sign+2C2p ...
		extrn _BN_set_word:near	; CODE XREF: _gost2001_do_sign+151p
					; _gost2001_do_verify+18Dp
		extrn _BN_cmp:near	; CODE XREF: _gost2001_do_verify+129p
					; _gost2001_do_verify+13Ep ...
		extrn _BN_free:near	; CODE XREF: _gost2001_do_sign+459p
					; _gost2001_do_verify+3DCp ...
		extrn _BN_dup:near	; CODE XREF: _gost2001_do_sign+2FCp
					; _gost2001_do_sign+309p
		extrn _BN_hex2bn:near	; CODE XREF: _fill_GOST2001_params+13Cp
					; _fill_GOST2001_params+154p ...
		extrn _BN_mod_inverse:near ; CODE XREF:	_gost2001_do_verify+1C5p
		extrn _DSA_SIG_new:near	; CODE XREF: _gost2001_do_sign:loc_478p
		extrn _DSA_SIG_free:near ; CODE	XREF: _gost2001_do_sign+46Ap
		extrn _EC_GROUP_free:near ; CODE XREF: _fill_GOST2001_params+1C1p
					; _fill_GOST2001_params+281p
		extrn _EC_GROUP_set_generator:near ; CODE XREF:	_fill_GOST2001_params+22Dp
		extrn _EC_GROUP_get_order:near ; CODE XREF: _gost2001_do_sign+EBp
					; _gost2001_do_verify+F9p ...
		extrn _EC_GROUP_set_curve_name:near ; CODE XREF: _fill_GOST2001_params+240p
		extrn _EC_GROUP_new_curve_GFp:near ; CODE XREF:	_fill_GOST2001_params+189p
		extrn _EC_POINT_new:near ; CODE	XREF: _fill_GOST2001_params+19Fp
					; _gost2001_compute_public+A4p	...
		extrn _EC_POINT_free:near ; CODE XREF: _fill_GOST2001_params+278p
					; _gost2001_compute_public+117p ...
		extrn _EC_POINT_set_affine_coordinates_GFp:near
					; CODE XREF: _fill_GOST2001_params+205p
		extrn _EC_POINT_get_affine_coordinates_GFp:near
					; CODE XREF: _gost2001_do_sign+212p
					; _gost2001_do_verify+2ADp
		extrn _EC_POINT_mul:near ; CODE	XREF: _gost2001_compute_public+D5p
					; _gost2001_do_sign+1C8p ...
		extrn _EC_KEY_get0_group:near ;	CODE XREF: _gost2001_compute_public+12p
					; _gost2001_do_sign+A2p ...
		extrn _EC_KEY_set_group:near ; CODE XREF: _fill_GOST2001_params+24Ap
		extrn _EC_KEY_get0_private_key:near
					; CODE XREF: _gost2001_compute_public+78p
					; _gost2001_do_sign+FCp
		extrn _EC_KEY_set_private_key:near ; CODE XREF:	_gost2001_keygen+48p
		extrn _EC_KEY_get0_public_key:near ; CODE XREF:	_gost2001_do_verify+E2p
		extrn _EC_KEY_set_public_key:near ; CODE XREF: _gost2001_compute_public+FBp
		extrn _hashsum2bn:near	; CODE XREF: _gost2001_do_sign+14p
					; _gost2001_do_verify+153p
		extrn _ERR_GOST_error:near ; CODE XREF:	_fill_GOST2001_params+5Ep
					; _fill_GOST2001_params+1B8p ...
		extrn __chkstk:near	; CODE XREF: _fill_GOST2001_params+5p
					; _gost2001_compute_public+5p ...
		extrn _R3410_2001_paramset:near	; DATA XREF: _fill_GOST2001_params+Do
					; _fill_GOST2001_params+EFr


		end