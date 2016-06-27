;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	C98111D537E61F625E1B87ABBC54D42B
; Input	CRC32 :	78508571

; File Name   :	C:\compspace\Diff\openssl\obj\pcy_cache.obj
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


_policy_cache_create proc near		; CODE XREF: _policy_cache_new+F7p

var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 4
		call	__chkstk
		push	ebx
		push	ebp
		mov	ebp, [esp+0Ch+arg_4]
		xor	ebx, ebx
		push	edi
		mov	edi, [esp+10h+arg_0]
		push	ebp
		mov	[esp+14h+var_4], ebx
		mov	edi, [edi+40h]
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jz	loc_E7
		push	offset _policy_data_cmp
		call	_sk_new
		add	esp, 4
		mov	[edi+4], eax
		test	eax, eax
		jz	loc_E7
		push	esi
		push	ebp
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	short loc_BB

loc_55:					; CODE XREF: _policy_cache_create+B9j
		push	ebx
		push	ebp
		call	_sk_value
		push	[esp+1Ch+arg_8]
		push	0
		push	eax
		call	_policy_data_new
		mov	esi, eax
		add	esp, 14h
		test	esi, esi
		jz	short loc_E4
		push	dword ptr [esi+4]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 2EAh
		jnz	short loc_8C
		cmp	dword ptr [edi], 0
		jnz	short loc_C2
		mov	[edi], esi
		jmp	short loc_AD
; ---------------------------------------------------------------------------

loc_8C:					; CODE XREF: _policy_cache_create+81j
		push	esi
		push	dword ptr [edi+4]
		call	_sk_find
		add	esp, 8
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_C2
		push	esi
		push	dword ptr [edi+4]
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jz	short loc_D5

loc_AD:					; CODE XREF: _policy_cache_create+8Aj
		push	ebp
		inc	ebx
		call	_sk_num
		add	esp, 4
		cmp	ebx, eax
		jl	short loc_55

loc_BB:					; CODE XREF: _policy_cache_create+53j
		mov	ebx, 1
		jmp	short loc_E6
; ---------------------------------------------------------------------------

loc_C2:					; CODE XREF: _policy_cache_create+86j
					; _policy_cache_create+9Bj
		mov	eax, [esp+14h+arg_0]
		mov	[esp+14h+var_4], 0FFFFFFFFh
		or	dword ptr [eax+28h], 800h

loc_D5:					; CODE XREF: _policy_cache_create+ABj
		push	esi
		call	_policy_data_free
		mov	ebx, [esp+18h+var_4]
		add	esp, 4
		jmp	short loc_E6
; ---------------------------------------------------------------------------

loc_E4:					; CODE XREF: _policy_cache_create+6Fj
		xor	ebx, ebx

loc_E6:					; CODE XREF: _policy_cache_create+C0j
					; _policy_cache_create+E2j
		pop	esi

loc_E7:					; CODE XREF: _policy_cache_create+29j
					; _policy_cache_create+41j
		push	offset _POLICYINFO_free
		push	ebp
		call	_sk_pop_free
		add	esp, 8
		test	ebx, ebx
		jg	short loc_110
		push	offset _policy_data_free
		push	dword ptr [edi+4]
		call	_sk_pop_free
		add	esp, 8
		mov	dword ptr [edi+4], 0

loc_110:				; CODE XREF: _policy_cache_create+F7j
		pop	edi
		pop	ebp
		mov	eax, ebx
		pop	ebx
		pop	ecx
		retn
_policy_cache_create endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 118h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_cache_find_data
_policy_cache_find_data	proc near

var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 10h
		call	__chkstk
		mov	eax, [esp+10h+arg_4]
		push	esi
		mov	esi, [esp+14h+arg_0]
		mov	[esp+14h+var_C], eax
		lea	eax, [esp+14h+var_10]
		push	eax
		push	dword ptr [esi+4]
		call	_sk_find
		add	esp, 8
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_14B
		xor	eax, eax
		pop	esi
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_14B:				; CODE XREF: _policy_cache_find_data+2Aj
		push	eax
		push	dword ptr [esi+4]
		call	_sk_value
		add	esp, 8
		pop	esi
		add	esp, 10h
		retn
_policy_cache_find_data	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 15Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_cache_free
_policy_cache_free proc	near

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jz	short loc_192
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_174
		push	eax
		call	_policy_data_free
		add	esp, 4

loc_174:				; CODE XREF: _policy_cache_free+Dj
		mov	eax, [esi+4]
		test	eax, eax
		jz	short loc_189
		push	offset _policy_data_free
		push	eax
		call	_sk_pop_free
		add	esp, 8

loc_189:				; CODE XREF: _policy_cache_free+1Dj
		push	esi
		call	_CRYPTO_free
		add	esp, 4

loc_192:				; CODE XREF: _policy_cache_free+7j
		pop	esi
		retn
_policy_cache_free endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 194h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_policy_cache_new proc near		; CODE XREF: _policy_cache_set+1Fp

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4

		mov	eax, 8
		call	__chkstk
		push	ebx
		push	edi
		push	83h ; '�'
		push	offset ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@	; ".\\crypto\\x509v3\\pcy_cache.c"
		push	14h
		xor	ebx, ebx
		call	_CRYPTO_malloc
		mov	edi, eax
		add	esp, 0Ch
		test	edi, edi
		jnz	short loc_1C2
		pop	edi
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_1C2:				; CODE XREF: _policy_cache_new+26j
		push	ebp
		push	esi
		mov	esi, [esp+18h+arg_0]
		lea	eax, [edi+8]
		mov	dword ptr [eax], 0FFFFFFFFh
		mov	[esp+18h+var_4], eax
		lea	eax, [esp+18h+var_8]
		push	0
		push	eax
		push	191h
		mov	[edi], ebx
		mov	[edi+4], ebx
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		mov	dword ptr [edi+10h], 0FFFFFFFFh
		push	esi
		mov	[esi+40h], edi
		call	_X509_get_ext_d2i
		mov	ebp, eax
		add	esp, 10h
		test	ebp, ebp
		jnz	short loc_213
		cmp	[esp+18h+var_8], 0FFFFFFFFh
		jnz	$bad_cache$34
		jmp	short loc_257
; ---------------------------------------------------------------------------

loc_213:				; CODE XREF: _policy_cache_new+70j
		mov	eax, [ebp+0]
		test	eax, eax
		jnz	short loc_227
		cmp	[ebp+4], ebx
		jz	$bad_cache$34
		test	eax, eax
		jz	short loc_240

loc_227:				; CODE XREF: _policy_cache_new+84j
		cmp	dword ptr [eax+4], 102h
		jz	$bad_cache$34
		push	eax
		call	_ASN1_INTEGER_get
		add	esp, 4
		mov	[edi+0Ch], eax

loc_240:				; CODE XREF: _policy_cache_new+91j
		push	dword ptr [ebp+4]
		lea	eax, [edi+10h]
		push	eax
		call	_policy_cache_set_int
		add	esp, 8
		test	eax, eax
		jz	$bad_cache$34

loc_257:				; CODE XREF: _policy_cache_new+7Dj
		push	0
		lea	eax, [esp+1Ch+var_8]
		push	eax
		push	59h ; 'Y'
		push	esi
		call	_X509_get_ext_d2i
		add	esp, 10h
		test	eax, eax
		jnz	short loc_285
		cmp	[esp+18h+var_8], 0FFFFFFFFh
		jnz	$bad_cache$34
		pop	esi
		pop	ebp
		pop	edi
		mov	eax, 1
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_285:				; CODE XREF: _policy_cache_new+D7j
		push	[esp+18h+var_8]
		push	eax
		push	esi
		call	_policy_cache_create
		add	esp, 0Ch
		mov	[esp+18h+var_8], eax
		test	eax, eax
		jle	loc_32E
		push	0
		lea	eax, [esp+1Ch+var_8]
		push	eax
		push	2EBh
		push	esi
		call	_X509_get_ext_d2i
		add	esp, 10h
		test	eax, eax
		jnz	short loc_2C1
		cmp	[esp+18h+var_8], 0FFFFFFFFh
		jnz	short $bad_cache$34
		jmp	short loc_2D3
; ---------------------------------------------------------------------------

loc_2C1:				; CODE XREF: _policy_cache_new+122j
		push	eax
		push	esi
		call	_policy_cache_set_mapping
		add	esp, 8
		mov	[esp+18h+var_8], eax
		test	eax, eax
		jle	short $bad_cache$34

loc_2D3:				; CODE XREF: _policy_cache_new+12Bj
		push	0
		lea	eax, [esp+1Ch+var_8]
		push	eax
		push	2ECh
		push	esi
		call	_X509_get_ext_d2i
		mov	ebx, eax
		add	esp, 10h
		test	ebx, ebx
		jnz	short loc_2F7
		cmp	[esp+18h+var_8], 0FFFFFFFFh
		jnz	short $bad_cache$34
		jmp	short loc_30F
; ---------------------------------------------------------------------------

loc_2F7:				; CODE XREF: _policy_cache_new+158j
		push	ebx
		push	[esp+1Ch+var_4]
		call	_policy_cache_set_int
		add	esp, 8
		test	eax, eax
		jnz	short loc_30F

$bad_cache$34:				; CODE XREF: _policy_cache_new+77j
					; _policy_cache_new+89j ...
		or	dword ptr [esi+28h], 800h

loc_30F:				; CODE XREF: _policy_cache_new+161j
					; _policy_cache_new+172j
		test	ebp, ebp
		jz	short loc_31C
		push	ebp
		call	_POLICY_CONSTRAINTS_free
		add	esp, 4

loc_31C:				; CODE XREF: _policy_cache_new+17Dj
		test	ebx, ebx
		jz	short loc_329
		push	ebx
		call	_ASN1_INTEGER_free
		add	esp, 4

loc_329:				; CODE XREF: _policy_cache_new+18Aj
		mov	eax, 1

loc_32E:				; CODE XREF: _policy_cache_new+105j
		pop	esi
		pop	ebp
		pop	edi
		pop	ebx
		add	esp, 8
		retn
_policy_cache_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 338h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _policy_cache_set
_policy_cache_set proc near

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		cmp	dword ptr [esi+40h], 0
		jnz	short loc_372
		push	0EAh ; '�'
		push	offset ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@	; ".\\crypto\\x509v3\\pcy_cache.c"
		push	3
		push	9
		call	_CRYPTO_lock
		push	esi
		call	_policy_cache_new
		push	0ECh ; '�'
		push	offset ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@	; ".\\crypto\\x509v3\\pcy_cache.c"
		push	3
		push	0Ah
		call	_CRYPTO_lock
		add	esp, 24h

loc_372:				; CODE XREF: _policy_cache_set+9j
		mov	eax, [esi+40h]
		pop	esi
		retn
_policy_cache_set endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 378h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_policy_cache_set_int proc near		; CODE XREF: _policy_cache_new+B3p
					; _policy_cache_new+168p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		test	eax, eax
		jz	short loc_39B
		cmp	dword ptr [eax+4], 102h
		jnz	short loc_38C
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_38C:				; CODE XREF: _policy_cache_set_int+Fj
		push	eax
		call	_ASN1_INTEGER_get
		mov	ecx, [esp+4+arg_0]
		add	esp, 4
		mov	[ecx], eax

loc_39B:				; CODE XREF: _policy_cache_set_int+6j
		mov	eax, 1
		retn
_policy_cache_set_int endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3A4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_policy_data_cmp proc near		; DATA XREF: _policy_cache_create+2Fo

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		mov	eax, [eax]
		push	dword ptr [eax+4]
		mov	eax, [esp+4+arg_0]
		mov	eax, [eax]
		push	dword ptr [eax+4]
		call	_OBJ_cmp
		add	esp, 8
		retn
_policy_data_cmp endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3C0h
; COMDAT (pick any)
		public ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@
; `string'
??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@ db '.\crypto\x509v3\pcy_cache.c',0
					; DATA XREF: _policy_cache_new+11o
					; _policy_cache_set+10o ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _sk_num:near	; CODE XREF: _policy_cache_create+1Fp
					; _policy_cache_create+49p ...
		extrn _sk_value:near	; CODE XREF: _policy_cache_create+57p
					; _policy_cache_find_data+37p
		extrn _sk_new:near	; CODE XREF: _policy_cache_create+34p
		extrn _sk_pop_free:near	; CODE XREF: _policy_cache_create+EDp
					; _policy_cache_create+101p ...
		extrn _sk_find:near	; CODE XREF: _policy_cache_create+90p
					; _policy_cache_find_data+1Fp
		extrn _sk_push:near	; CODE XREF: _policy_cache_create+A1p
		extrn _CRYPTO_lock:near	; CODE XREF: _policy_cache_set+19p
					; _policy_cache_set+32p
		extrn _CRYPTO_malloc:near ; CODE XREF: _policy_cache_new+1Ap
		extrn _CRYPTO_free:near	; CODE XREF: _policy_cache_free+2Ep
		extrn _ASN1_INTEGER_free:near ;	CODE XREF: _policy_cache_new+18Dp
		extrn _ASN1_INTEGER_get:near ; CODE XREF: _policy_cache_new+A1p
					; _policy_cache_set_int+15p
		extrn _OBJ_obj2nid:near	; CODE XREF: _policy_cache_create+74p
		extrn _OBJ_cmp:near	; CODE XREF: _policy_data_cmp+12p
		extrn _X509_get_ext_d2i:near ; CODE XREF: _policy_cache_new+64p
					; _policy_cache_new+CDp ...
		extrn _POLICYINFO_free:near ; DATA XREF: _policy_cache_create:loc_E7o
		extrn _POLICY_CONSTRAINTS_free:near ; CODE XREF: _policy_cache_new+180p
		extrn _policy_data_new:near ; CODE XREF: _policy_cache_create+63p
		extrn _policy_data_free:near ; CODE XREF: _policy_cache_create+D6p
					; _policy_cache_free+10p
					; DATA XREF: ...
		extrn _policy_cache_set_mapping:near ; CODE XREF: _policy_cache_new+12Fp
		extrn __chkstk:near	; CODE XREF: _policy_cache_create+5p
					; _policy_cache_find_data+5p ...


		end