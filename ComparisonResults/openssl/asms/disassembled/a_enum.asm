;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	AA1AE41EC920C46AD97750E6AD6C853E
; Input	CRC32 :	C9A1143A

; File Name   :	C:\compspace\Diff\openssl\obj\a_enum.obj
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


		public _ASN1_ENUMERATED_get
_ASN1_ENUMERATED_get proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		xor	ecx, ecx
		push	ebx
		xor	ebx, ebx
		test	eax, eax
		jnz	short loc_F
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_F:					; CODE XREF: _ASN1_ENUMERATED_get+Bj
		mov	edx, [eax+4]
		cmp	edx, 10Ah
		jnz	short loc_2D
		mov	ebx, 1

loc_1F:					; CODE XREF: _ASN1_ENUMERATED_get+30j
		push	esi
		mov	esi, [eax]
		cmp	esi, 4
		jle	short loc_37
		pop	esi
		or	eax, 0FFFFFFFFh
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_2D:					; CODE XREF: _ASN1_ENUMERATED_get+18j
		cmp	edx, 0Ah
		jz	short loc_1F
		or	eax, 0FFFFFFFFh
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_37:					; CODE XREF: _ASN1_ENUMERATED_get+25j
		push	edi
		mov	edi, [eax+8]
		test	edi, edi
		jnz	short loc_45
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_45:					; CODE XREF: _ASN1_ENUMERATED_get+3Dj
		xor	edx, edx
		test	esi, esi
		jle	short loc_5E
		nop	dword ptr [eax+eax+00h]

loc_50:					; CODE XREF: _ASN1_ENUMERATED_get+5Cj
		movzx	eax, byte ptr [edi+edx]
		inc	edx
		shl	ecx, 8
		or	ecx, eax
		cmp	edx, esi
		jl	short loc_50

loc_5E:					; CODE XREF: _ASN1_ENUMERATED_get+49j
		test	ebx, ebx
		jz	short loc_64
		neg	ecx

loc_64:					; CODE XREF: _ASN1_ENUMERATED_get+60j
		pop	edi
		pop	esi
		mov	eax, ecx
		pop	ebx
		retn
_ASN1_ENUMERATED_get endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_ENUMERATED_set
_ASN1_ENUMERATED_set proc near

var_C		= byte ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 0Ch
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+0Ch+var_4], eax
		push	esi
		mov	esi, [esp+10h+arg_0]
		cmp	dword ptr [esi], 5
		mov	dword ptr [esi+4], 0Ah
		jge	short loc_C4
		mov	eax, [esi+8]
		test	eax, eax
		jz	short loc_A2
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_A2:					; CODE XREF: _ASN1_ENUMERATED_set+2Bj
		push	51h ; 'Q'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	5
		call	_CRYPTO_malloc
		add	esp, 0Ch
		mov	[esi+8], eax
		test	eax, eax
		jz	short loc_C4
		mov	dword ptr [eax], 0
		mov	byte ptr [eax+4], 0

loc_C4:					; CODE XREF: _ASN1_ENUMERATED_set+24j
					; _ASN1_ENUMERATED_set+4Cj
		cmp	dword ptr [esi+8], 0
		jnz	short loc_F1
		push	55h ; 'U'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	41h ; 'A'
		push	70h ; 'p'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		mov	ecx, [esp+0Ch+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0Ch
		retn
; ---------------------------------------------------------------------------

loc_F1:					; CODE XREF: _ASN1_ENUMERATED_set+5Cj
		mov	eax, [esp+10h+arg_4]
		test	eax, eax
		jns	short loc_102
		neg	eax
		mov	dword ptr [esi+4], 10Ah

loc_102:				; CODE XREF: _ASN1_ENUMERATED_set+8Bj
		xor	ecx, ecx

loc_104:				; CODE XREF: _ASN1_ENUMERATED_set+A7j
		test	eax, eax
		jz	short loc_115
		mov	[esp+ecx+10h+var_C], al
		inc	ecx
		sar	eax, 8
		cmp	ecx, 4
		jb	short loc_104

loc_115:				; CODE XREF: _ASN1_ENUMERATED_set+9Aj
		push	edi
		lea	edi, [ecx-1]
		xor	edx, edx
		test	edi, edi
		js	short loc_12F

loc_11F:				; CODE XREF: _ASN1_ENUMERATED_set+C1j
		mov	ecx, [esi+8]
		mov	al, [esp+edi+14h+var_C]
		mov	[edx+ecx], al
		inc	edx
		sub	edi, 1
		jns	short loc_11F

loc_12F:				; CODE XREF: _ASN1_ENUMERATED_set+B1j
		mov	ecx, [esp+14h+var_4]
		mov	eax, 1
		pop	edi
		mov	[esi], edx
		pop	esi
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0Ch
		retn
_ASN1_ENUMERATED_set endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 148h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_ENUMERATED_to_BN
_ASN1_ENUMERATED_to_BN proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		push	[esp+8+arg_4]
		push	dword ptr [edi]
		push	dword ptr [edi+8]
		call	_BN_bin2bn
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_182
		push	0B1h ; '�'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	69h ; 'i'
		push	71h ; 'q'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_182:				; CODE XREF: _ASN1_ENUMERATED_to_BN+1Bj
		cmp	dword ptr [edi+4], 10Ah
		jnz	short loc_198
		push	1
		push	esi
		call	_BN_set_negative
		add	esp, 8
		mov	eax, esi

loc_198:				; CODE XREF: _ASN1_ENUMERATED_to_BN+41j
		pop	edi
		pop	esi
		retn
_ASN1_ENUMERATED_to_BN endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 19Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BN_to_ASN1_ENUMERATED
_BN_to_ASN1_ENUMERATED proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	ebx
		push	esi
		push	edi
		mov	edi, [esp+0Ch+arg_4]
		test	edi, edi
		jnz	short loc_1B5
		push	0Ah
		call	_ASN1_STRING_type_new
		add	esp, 4
		mov	esi, eax
		jmp	short loc_1B7
; ---------------------------------------------------------------------------

loc_1B5:				; CODE XREF: _BN_to_ASN1_ENUMERATED+9j
		mov	esi, edi

loc_1B7:				; CODE XREF: _BN_to_ASN1_ENUMERATED+17j
		test	esi, esi
		jnz	short loc_1C9
		push	92h ; '�'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	3Ah ; ':'
		jmp	short loc_225
; ---------------------------------------------------------------------------

loc_1C9:				; CODE XREF: _BN_to_ASN1_ENUMERATED+1Dj
		mov	ebx, [esp+0Ch+arg_0]
		mov	ecx, 10Ah
		mov	eax, 0Ah
		push	ebx
		cmp	dword ptr [ebx+0Ch], 0
		cmovnz	eax, ecx
		mov	[esi+4], eax
		call	_BN_num_bits
		add	esp, 4
		test	eax, eax
		jz	short loc_1F8
		cdq
		and	edx, 7
		add	eax, edx
		sar	eax, 3
		inc	eax

loc_1F8:				; CODE XREF: _BN_to_ASN1_ENUMERATED+50j
		add	eax, 4
		cmp	[esi], eax
		jge	short loc_24A
		push	9Ch ; '�'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	eax
		push	dword ptr [esi+8]
		call	_CRYPTO_realloc
		add	esp, 10h
		test	eax, eax
		jnz	short loc_247
		push	9Eh ; '�'
		push	offset ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ ; ".\\crypto\\asn1\\a_enum.c"
		push	41h ; 'A'

loc_225:				; CODE XREF: _BN_to_ASN1_ENUMERATED+2Bj
		push	8Ah ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h

$err$15:
		cmp	esi, edi
		jz	short loc_241
		push	esi
		call	_ASN1_STRING_free
		add	esp, 4

loc_241:				; CODE XREF: _BN_to_ASN1_ENUMERATED+9Aj
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_247:				; CODE XREF: _BN_to_ASN1_ENUMERATED+7Bj
		mov	[esi+8], eax

loc_24A:				; CODE XREF: _BN_to_ASN1_ENUMERATED+61j
		push	dword ptr [esi+8]
		push	ebx
		call	_BN_bn2bin
		add	esp, 8
		mov	[esi], eax
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		retn
_BN_to_ASN1_ENUMERATED endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 260h
; COMDAT (pick any)
		public ??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@
; `string'
??_C@_0BH@MIGHECOA@?4?2crypto?2asn1?2a_enum?4c?$AA@ db '.\crypto\asn1\a_enum.c',0
					; DATA XREF: _ASN1_ENUMERATED_set+38o
					; _ASN1_ENUMERATED_set+60o ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _ASN1_ENUMERATED_set+3Fp
		extrn _CRYPTO_free:near	; CODE XREF: _ASN1_ENUMERATED_set+2Ep
		extrn _CRYPTO_realloc:near ; CODE XREF:	_BN_to_ASN1_ENUMERATED+71p
		extrn _ERR_put_error:near ; CODE XREF: _ASN1_ENUMERATED_set+6Bp
					; _ASN1_ENUMERATED_to_BN+2Dp ...
		extrn _BN_num_bits:near	; CODE XREF: _BN_to_ASN1_ENUMERATED+46p
		extrn _BN_bin2bn:near	; CODE XREF: _ASN1_ENUMERATED_to_BN+Fp
		extrn _BN_bn2bin:near	; CODE XREF: _BN_to_ASN1_ENUMERATED+B2p
		extrn _BN_set_negative:near ; CODE XREF: _ASN1_ENUMERATED_to_BN+46p
		extrn _ASN1_STRING_free:near ; CODE XREF: _BN_to_ASN1_ENUMERATED+9Dp
		extrn _ASN1_STRING_type_new:near ; CODE	XREF: _BN_to_ASN1_ENUMERATED+Dp
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _ASN1_ENUMERATED_set+7Cp
					; _ASN1_ENUMERATED_set+D2p
		extrn __chkstk:near	; CODE XREF: _ASN1_ENUMERATED_set+5p
		extrn ___security_cookie:near ;	DATA XREF: _ASN1_ENUMERATED_set+Ar


		end