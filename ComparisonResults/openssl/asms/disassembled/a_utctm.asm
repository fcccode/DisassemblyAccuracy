;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	BB4E7DE977D7BF850CAA65D265209A7E
; Input	CRC32 :	53961814

; File Name   :	C:\compspace\Diff\openssl\obj\a_utctm.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
; `asn1_utctime_to_tm'::`2'::min
?min@?1??asn1_utctime_to_tm@@9@9 dd 0	; DATA XREF: _asn1_utctime_to_tm+B0r
					; _asn1_utctime_to_tm+199r
		dd 2 dup(1), 5 dup(0)
; `asn1_utctime_to_tm'::`2'::max
?max@?1??asn1_utctime_to_tm@@9@9 dd 63h	; DATA XREF: _asn1_utctime_to_tm+BDr
					; _asn1_utctime_to_tm+1A2r
		dd 0Ch,	1Fh, 17h, 2 dup(3Bh), 0Ch, 3Bh
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 40h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_UTCTIME_adj
_ASN1_UTCTIME_adj proc near		; CODE XREF: _ASN1_UTCTIME_set+10p

var_28		= byte ptr -28h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= byte ptr  8
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	eax, 28h ; '('
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+28h+var_4], eax
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, [esp+38h+arg_0]
		xor	ebp, ebp
		test	edi, edi
		jnz	short loc_7A
		push	17h
		lea	ebp, [edi+1]
		call	_ASN1_STRING_type_new
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jz	loc_112

loc_7A:					; CODE XREF: _ASN1_UTCTIME_adj+21j
		lea	eax, [esp+38h+var_28]
		push	eax
		lea	eax, [esp+3Ch+arg_4]
		push	eax
		call	_OPENSSL_gmtime
		mov	ebx, eax
		add	esp, 8
		test	ebx, ebx
		jz	short $err$20
		mov	ecx, [esp+38h+arg_C]
		mov	eax, [esp+38h+arg_10]
		test	ecx, ecx
		jnz	short loc_A2
		test	eax, eax
		jz	short loc_B1

loc_A2:					; CODE XREF: _ASN1_UTCTIME_adj+5Cj
		push	eax
		push	ecx
		push	ebx
		call	_OPENSSL_gmtime_adj
		add	esp, 0Ch
		test	eax, eax
		jz	short $err$20

loc_B1:					; CODE XREF: _ASN1_UTCTIME_adj+60j
		mov	eax, [ebx+14h]
		cmp	eax, 32h ; '2'
		jl	short $err$20
		cmp	eax, 96h ; '�'
		jge	short $err$20
		mov	esi, [edi+8]
		test	esi, esi
		jz	short loc_CC
		cmp	dword ptr [edi], 14h
		jnb	short loc_13A

loc_CC:					; CODE XREF: _ASN1_UTCTIME_adj+85j
		push	108h
		push	offset ??_C@_0BI@BIJLLCMA@?4?2crypto?2asn1?2a_utctm?4c?$AA@ ; ".\\crypto\\asn1\\a_utctm.c"
		push	14h
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_127
		push	10Ah
		push	offset ??_C@_0BI@BIJLLCMA@?4?2crypto?2asn1?2a_utctm?4c?$AA@ ; ".\\crypto\\asn1\\a_utctm.c"
		push	41h ; 'A'
		push	0DAh ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h

$err$20:				; CODE XREF: _ASN1_UTCTIME_adj+50j
					; _ASN1_UTCTIME_adj+6Fj ...
		test	ebp, ebp
		jz	short loc_112
		test	edi, edi
		jz	short loc_112
		push	edi
		call	_ASN1_STRING_free
		add	esp, 4

loc_112:				; CODE XREF: _ASN1_UTCTIME_adj+34j
					; _ASN1_UTCTIME_adj+C3j ...
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		mov	ecx, [esp+28h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 28h
		retn
; ---------------------------------------------------------------------------

loc_127:				; CODE XREF: _ASN1_UTCTIME_adj+A4j
		mov	eax, [edi+8]
		test	eax, eax
		jz	short loc_137
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_137:				; CODE XREF: _ASN1_UTCTIME_adj+ECj
		mov	[edi+8], esi

loc_13A:				; CODE XREF: _ASN1_UTCTIME_adj+8Aj
		push	dword ptr [ebx]
		mov	eax, [ebx+10h]
		mov	ecx, 64h ; 'd'
		push	dword ptr [ebx+4]
		inc	eax
		push	dword ptr [ebx+8]
		push	dword ptr [ebx+0Ch]
		push	eax
		mov	eax, [ebx+14h]
		cdq
		idiv	ecx
		push	edx
		push	offset ??_C@_0BK@PMAAGDOP@?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02dZ?$AA@ ; "%02d%02d%02d%02d%02d%02dZ"
		push	14h
		push	esi
		call	_BIO_snprintf
		add	esp, 24h
		lea	ecx, [esi+1]
		nop	dword ptr [eax+00000000h]

loc_170:				; CODE XREF: _ASN1_UTCTIME_adj+135j
		mov	al, [esi]
		inc	esi
		test	al, al
		jnz	short loc_170
		sub	esi, ecx
		mov	dword ptr [edi+4], 17h
		mov	ecx, [esp+38h+var_4]
		mov	eax, edi
		mov	[edi], esi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 28h
		retn
_ASN1_UTCTIME_adj endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 198h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_UTCTIME_check
_ASN1_UTCTIME_check proc near

arg_0		= dword	ptr  4

		push	[esp+arg_0]
		push	0
		call	_asn1_utctime_to_tm
		add	esp, 8
		retn
_ASN1_UTCTIME_check endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_UTCTIME_cmp_time_t
_ASN1_UTCTIME_cmp_time_t proc near

var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= byte ptr -4Ch
var_28		= byte ptr -28h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= byte ptr  8

		mov	eax, 54h ; 'T'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+54h+var_4], eax
		mov	eax, [esp+54h+arg_0]
		push	eax
		lea	eax, [esp+58h+var_4C]
		push	eax
		call	_asn1_utctime_to_tm
		add	esp, 8
		test	eax, eax
		jnz	short loc_1E7

loc_1D3:				; CODE XREF: _ASN1_UTCTIME_cmp_time_t+53j
					; _ASN1_UTCTIME_cmp_time_t+73j
		mov	eax, 0FFFFFFFEh
		mov	ecx, [esp+54h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 54h
		retn
; ---------------------------------------------------------------------------

loc_1E7:				; CODE XREF: _ASN1_UTCTIME_cmp_time_t+29j
		lea	eax, [esp+54h+var_28]
		push	eax
		lea	eax, [esp+58h+arg_4]
		push	eax
		call	_OPENSSL_gmtime
		add	esp, 8
		test	eax, eax
		jz	short loc_1D3
		lea	eax, [esp+54h+var_4C]
		push	eax
		lea	eax, [esp+58h+var_28]
		push	eax
		lea	eax, [esp+5Ch+var_50]
		push	eax
		lea	eax, [esp+60h+var_54]
		push	eax
		call	_OPENSSL_gmtime_diff
		add	esp, 10h
		test	eax, eax
		jz	short loc_1D3
		mov	eax, [esp+54h+var_54]
		test	eax, eax
		jle	short loc_238

loc_224:				; CODE XREF: _ASN1_UTCTIME_cmp_time_t+AAj
		mov	eax, 1
		mov	ecx, [esp+54h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 54h
		retn
; ---------------------------------------------------------------------------

loc_238:				; CODE XREF: _ASN1_UTCTIME_cmp_time_t+7Aj
		jns	short loc_24C
		or	eax, 0FFFFFFFFh
		mov	ecx, [esp+54h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 54h
		retn
; ---------------------------------------------------------------------------

loc_24C:				; CODE XREF: _ASN1_UTCTIME_cmp_time_t:loc_238j
		mov	ecx, [esp+54h+var_50]
		test	ecx, ecx
		jg	short loc_224
		xor	eax, eax
		test	ecx, ecx
		mov	ecx, [esp+54h+var_4]
		setns	al
		xor	ecx, esp
		dec	eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 54h
		retn
_ASN1_UTCTIME_cmp_time_t endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 26Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_UTCTIME_set
_ASN1_UTCTIME_set proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	0
		push	0
		push	[esp+8+arg_8]
		push	[esp+0Ch+arg_4]
		push	[esp+10h+arg_0]
		call	_ASN1_UTCTIME_adj
		add	esp, 14h
		retn
_ASN1_UTCTIME_set endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 288h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ASN1_UTCTIME_set_string
_ASN1_UTCTIME_set_string proc near

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 10h
		call	__chkstk
		push	ebx
		mov	ebx, [esp+14h+arg_4]
		push	esi
		mov	esi, ebx
		mov	[esp+18h+var_C], 17h
		lea	ecx, [esi+1]
		nop	dword ptr [eax]

loc_2A8:				; CODE XREF: _ASN1_UTCTIME_set_string+25j
		mov	al, [esi]
		inc	esi
		test	al, al
		jnz	short loc_2A8
		lea	eax, [esp+18h+var_10]
		mov	[esp+18h+var_8], ebx
		push	eax
		sub	esi, ecx
		push	0
		mov	[esp+20h+var_10], esi
		call	_asn1_utctime_to_tm
		add	esp, 8
		test	eax, eax
		jz	short loc_2FE
		push	edi
		mov	edi, [esp+1Ch+arg_0]
		test	edi, edi
		jz	short loc_2F2
		push	esi
		push	ebx
		push	edi
		call	_ASN1_STRING_set
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_2EB
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_2EB:				; CODE XREF: _ASN1_UTCTIME_set_string+5Aj
		mov	dword ptr [edi+4], 17h

loc_2F2:				; CODE XREF: _ASN1_UTCTIME_set_string+4Bj
		pop	edi
		pop	esi
		mov	eax, 1
		pop	ebx
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_2FE:				; CODE XREF: _ASN1_UTCTIME_set_string+42j
		pop	esi
		xor	eax, eax
		pop	ebx
		add	esp, 10h
		retn
_ASN1_UTCTIME_set_string endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 308h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _asn1_utctime_to_tm
_asn1_utctime_to_tm proc near		; CODE XREF: _ASN1_UTCTIME_check+6p
					; _ASN1_UTCTIME_cmp_time_t+1Fp	...

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 8
		call	__chkstk
		push	edi
		mov	edi, [esp+0Ch+arg_4]
		cmp	dword ptr [edi+4], 17h
		jz	short loc_324
		xor	eax, eax
		pop	edi
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_324:				; CODE XREF: _asn1_utctime_to_tm+13j
		mov	ecx, [edi]
		mov	edi, [edi+8]
		push	ebx
		push	ebp
		push	esi
		xor	esi, esi
		mov	[esp+18h+var_8], ecx
		cmp	ecx, 0Bh
		jl	$err$71
		mov	ebp, [esp+18h+arg_0]
		xor	edx, edx
		nop	dword ptr [eax+00000000h]

loc_348:				; CODE XREF: _asn1_utctime_to_tm+103j
		cmp	edx, 5
		jnz	short loc_368
		mov	al, [esi+edi]
		cmp	al, 5Ah	; 'Z'
		jz	loc_413
		cmp	al, 2Bh	; '+'
		jz	loc_413
		cmp	al, 2Dh	; '-'
		jz	loc_413

loc_368:				; CODE XREF: _asn1_utctime_to_tm+43j
		mov	al, [esi+edi]
		cmp	al, 30h	; '0'
		jl	$err$71
		cmp	al, 39h	; '9'
		jg	$err$71
		movsx	eax, al
		inc	esi
		sub	eax, 30h ; '0'
		cmp	esi, ecx
		jg	$err$71
		mov	bl, [esi+edi]
		cmp	bl, 30h	; '0'
		jl	$err$71
		cmp	bl, 39h	; '9'
		jg	$err$71
		lea	ecx, [eax+eax*4]
		inc	esi
		movsx	eax, bl
		lea	eax, [eax+ecx*2]
		mov	ecx, [esp+18h+var_8]
		add	eax, 0FFFFFFD0h
		cmp	esi, ecx
		jg	$err$71
		cmp	eax, ?min@?1??asn1_utctime_to_tm@@9@9[edx*4] ; `asn1_utctime_to_tm'::`2'::min
		jl	$err$71
		cmp	eax, ?max@?1??asn1_utctime_to_tm@@9@9[edx*4] ; `asn1_utctime_to_tm'::`2'::max
		jg	$err$71
		test	ebp, ebp
		jz	short loc_407	; jumptable 000003DB default case
		cmp	edx, 5		; switch 6 cases
		ja	short loc_407	; jumptable 000003DB default case
		jmp	ds:$LN70[edx*4]	; switch jump
; ---------------------------------------------------------------------------

$LN24:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		cmp	eax, 32h ; '2'  ; jumptable 000003DB case 0
		jge	short loc_3EA
		add	eax, 64h ; 'd'

loc_3EA:				; CODE XREF: _asn1_utctime_to_tm+DDj
		mov	[ebp+14h], eax
		jmp	short loc_407	; jumptable 000003DB default case
; ---------------------------------------------------------------------------

$LN25:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		dec	eax		; jumptable 000003DB case 1
		mov	[ebp+10h], eax
		jmp	short loc_407	; jumptable 000003DB default case
; ---------------------------------------------------------------------------

$LN26:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		mov	[ebp+0Ch], eax	; jumptable 000003DB case 2
		jmp	short loc_407	; jumptable 000003DB default case
; ---------------------------------------------------------------------------

$LN27:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		mov	[ebp+8], eax	; jumptable 000003DB case 3
		jmp	short loc_407	; jumptable 000003DB default case
; ---------------------------------------------------------------------------

$LN28:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		mov	[ebp+4], eax	; jumptable 000003DB case 4
		jmp	short loc_407	; jumptable 000003DB default case
; ---------------------------------------------------------------------------

$LN29:					; CODE XREF: _asn1_utctime_to_tm+D3j
					; DATA XREF: .text$mn:$LN70o
		mov	[ebp+0], eax	; jumptable 000003DB case 5

loc_407:				; CODE XREF: _asn1_utctime_to_tm+CCj
					; _asn1_utctime_to_tm+D1j ...
		inc	edx		; jumptable 000003DB default case
		cmp	edx, 6
		jl	loc_348
		jmp	short loc_41E
; ---------------------------------------------------------------------------

loc_413:				; CODE XREF: _asn1_utctime_to_tm+4Aj
					; _asn1_utctime_to_tm+52j ...
		test	ebp, ebp
		jz	short loc_41E
		mov	dword ptr [ebp+0], 0

loc_41E:				; CODE XREF: _asn1_utctime_to_tm+109j
					; _asn1_utctime_to_tm+10Dj
		mov	al, [esi+edi]
		cmp	al, 5Ah	; 'Z'
		jnz	short loc_437
		inc	esi
		xor	eax, eax
		cmp	esi, [esp+18h+var_8]
		pop	esi
		pop	ebp
		pop	ebx
		setz	al
		pop	edi
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_437:				; CODE XREF: _asn1_utctime_to_tm+11Bj
		cmp	al, 2Bh	; '+'
		jz	short loc_443
		cmp	al, 2Dh	; '-'
		jnz	loc_4F5

loc_443:				; CODE XREF: _asn1_utctime_to_tm+131j
		xor	edx, edx
		cmp	al, 2Dh	; '-'
		setnz	dl
		inc	esi
		xor	ebx, ebx
		lea	eax, [esi+4]
		lea	edx, ds:0FFFFFFFFh[edx*2]
		mov	[esp+18h+var_4], edx
		cmp	eax, ecx
		jg	$err$71
		lea	edx, [ebx+6]
		xchg	ax, ax

loc_468:				; CODE XREF: _asn1_utctime_to_tm+1D2j
		mov	al, [esi+edi]
		cmp	al, 30h	; '0'
		jl	$err$71
		cmp	al, 39h	; '9'
		jg	$err$71
		mov	cl, [esi+edi+1]
		movsx	eax, al
		sub	eax, 30h ; '0'
		mov	byte ptr [esp+18h+arg_4], cl
		cmp	cl, 30h	; '0'
		jl	short $err$71
		cmp	cl, 39h	; '9'
		jg	short $err$71
		lea	ecx, [eax+eax*4]
		movsx	eax, byte ptr [esp+18h+arg_4]
		lea	ecx, [ecx-18h]
		lea	ecx, [eax+ecx*2]
		cmp	ecx, ?min@?1??asn1_utctime_to_tm@@9@9[edx*4] ; `asn1_utctime_to_tm'::`2'::min
		jl	short $err$71
		cmp	ecx, ?max@?1??asn1_utctime_to_tm@@9@9[edx*4] ; `asn1_utctime_to_tm'::`2'::max
		jg	short $err$71
		test	ebp, ebp
		jz	short loc_4D3
		cmp	edx, 6
		jnz	short loc_4C4
		imul	ebx, ecx, 0E10h
		jmp	short loc_4D3
; ---------------------------------------------------------------------------

loc_4C4:				; CODE XREF: _asn1_utctime_to_tm+1B2j
		cmp	edx, 7
		jnz	short loc_4D3
		mov	eax, ecx
		shl	eax, 4
		sub	eax, ecx
		lea	ebx, [ebx+eax*4]

loc_4D3:				; CODE XREF: _asn1_utctime_to_tm+1ADj
					; _asn1_utctime_to_tm+1BAj ...
		inc	edx
		add	esi, 2
		cmp	edx, 8
		jl	short loc_468
		test	ebx, ebx
		jz	short loc_4F5
		imul	ebx, [esp+18h+var_4]
		push	ebx
		push	0
		push	ebp
		call	_OPENSSL_gmtime_adj
		add	esp, 0Ch
		test	eax, eax
		jz	short $err$71

loc_4F5:				; CODE XREF: _asn1_utctime_to_tm+135j
					; _asn1_utctime_to_tm+1D6j
		xor	eax, eax
		cmp	esi, [esp+18h+var_8]
		pop	esi
		pop	ebp
		pop	ebx
		setz	al
		pop	edi
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

$err$71:				; CODE XREF: _asn1_utctime_to_tm+2Dj
					; _asn1_utctime_to_tm+65j ...
		pop	esi
		pop	ebp
		pop	ebx
		xor	eax, eax
		pop	edi
		add	esp, 8
		retn
_asn1_utctime_to_tm endp

; ---------------------------------------------------------------------------
$LN70		dd offset $LN24		; DATA XREF: _asn1_utctime_to_tm+D3r
		dd offset $LN25		; jump table for switch	statement
		dd offset $LN26
		dd offset $LN27
		dd offset $LN28
		dd offset $LN29
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 528h
; COMDAT (pick any)
		public ??_C@_0BI@BIJLLCMA@?4?2crypto?2asn1?2a_utctm?4c?$AA@
; `string'
??_C@_0BI@BIJLLCMA@?4?2crypto?2asn1?2a_utctm?4c?$AA@ db	'.\crypto\asn1\a_utctm.c',0
					; DATA XREF: _ASN1_UTCTIME_adj+91o
					; _ASN1_UTCTIME_adj+ABo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 540h
; COMDAT (pick any)
		public ??_C@_0BK@PMAAGDOP@?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02dZ?$AA@
; `string'
??_C@_0BK@PMAAGDOP@?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02dZ?$AA@ db '%02d%02d%02d%02d%02d%02dZ',0
					; DATA XREF: _ASN1_UTCTIME_adj+116o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _ASN1_UTCTIME_adj+98p
		extrn _CRYPTO_free:near	; CODE XREF: _ASN1_UTCTIME_adj+EFp
		extrn _BIO_snprintf:near ; CODE	XREF: _ASN1_UTCTIME_adj+11Ep
		extrn _ERR_put_error:near ; CODE XREF: _ASN1_UTCTIME_adj+B9p
		extrn _OPENSSL_gmtime:near ; CODE XREF:	_ASN1_UTCTIME_adj+44p
					; _ASN1_UTCTIME_cmp_time_t+49p
		extrn _OPENSSL_gmtime_adj:near ; CODE XREF: _ASN1_UTCTIME_adj+65p
					; _asn1_utctime_to_tm+1E1p
		extrn _OPENSSL_gmtime_diff:near	; CODE XREF: _ASN1_UTCTIME_cmp_time_t+69p
		extrn _ASN1_STRING_free:near ; CODE XREF: _ASN1_UTCTIME_adj+CAp
		extrn _ASN1_STRING_type_new:near ; CODE	XREF: _ASN1_UTCTIME_adj+28p
		extrn _ASN1_STRING_set:near ; CODE XREF: _ASN1_UTCTIME_set_string+50p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _ASN1_UTCTIME_adj+DEp
					; _ASN1_UTCTIME_adj+14Ep ...
		extrn __chkstk:near	; CODE XREF: _ASN1_UTCTIME_adj+5p
					; _ASN1_UTCTIME_cmp_time_t+5p ...
		extrn ___security_cookie:near ;	DATA XREF: _ASN1_UTCTIME_adj+Ar
					; _ASN1_UTCTIME_cmp_time_t+Ar


		end