;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	BB3693B2CAF4C0BF5BEE32C8FEBCD347
; Input	CRC32 :	0F4A103C

; File Name   :	C:\compspace\Diff\openssl\obj\wrap128.obj
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
_default_iv	dd 2 dup(0A6A6A6A6h)	; DATA XREF: _CRYPTO_128_unwrap+111o
					; _CRYPTO_128_wrap+6Ao
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 8
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl CRYPTO_128_unwrap(int, int, void *Dst, int, int, int)
		public _CRYPTO_128_unwrap
_CRYPTO_128_unwrap proc	near

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
Dst		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		mov	eax, 28h ; '('
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+28h+var_4], eax
		mov	ecx, [esp+28h+arg_10]
		mov	eax, [esp+28h+arg_14]
		sub	ecx, 8
		mov	edx, [esp+28h+arg_C]
		mov	[esp+28h+var_20], eax
		mov	[esp+28h+var_28], ecx
		push	ebp
		mov	ebp, [esp+2Ch+arg_0]
		push	esi
		mov	esi, [esp+30h+Dst]
		mov	[esp+30h+var_18], esi
		test	cl, 7
		jnz	loc_157
		lea	eax, [ecx-10h]
		cmp	eax, 7FFFFFF0h
		ja	loc_157
		mov	eax, ecx
		shr	eax, 3
		push	ebx
		push	edi
		push	ecx		; Size
		lea	ebx, [eax+eax*2]
		mov	eax, [edx]
		mov	[esp+3Ch+var_14], eax
		add	ebx, ebx
		mov	eax, [edx+4]
		mov	[esp+3Ch+var_10], eax
		lea	eax, [edx+8]
		push	eax		; Src
		push	esi		; Dst
		call	dword ptr ds:__imp__memmove
		mov	edx, [esp+44h+var_28]
		lea	ecx, [esi-8]
		add	esp, 0Ch
		mov	eax, 6
		add	ecx, edx
		mov	[esp+38h+var_24], eax
		mov	[esp+38h+var_1C], ecx
		xchg	ax, ax

loc_98:					; CODE XREF: _CRYPTO_128_unwrap+10Bj
		mov	esi, ecx
		test	edx, edx
		jz	short loc_10C
		lea	edi, [edx-1]
		shr	edi, 3
		inc	edi
		nop	dword ptr [eax]

loc_A8:					; CODE XREF: _CRYPTO_128_unwrap+F6j
		xor	byte ptr [esp+38h+var_10+3], bl
		cmp	ebx, 0FFh
		jbe	short loc_CF
		mov	eax, ebx
		shr	eax, 8
		xor	byte ptr [esp+38h+var_10+2], al
		mov	eax, ebx
		shr	eax, 10h
		xor	byte ptr [esp+38h+var_10+1], al
		mov	eax, ebx
		shr	eax, 18h
		xor	byte ptr [esp+38h+var_10], al

loc_CF:					; CODE XREF: _CRYPTO_128_unwrap+AAj
		mov	eax, [esi]
		mov	[esp+38h+var_C], eax
		mov	eax, [esi+4]
		mov	[esp+38h+var_8], eax
		lea	eax, [esp+38h+var_14]
		push	ebp
		push	eax
		push	eax
		call	[esp+44h+var_20]
		mov	eax, [esp+44h+var_C]
		add	esp, 0Ch
		mov	[esi], eax
		dec	ebx
		mov	eax, [esp+38h+var_8]
		mov	[esi+4], eax
		sub	esi, 8
		sub	edi, 1
		jnz	short loc_A8
		mov	edx, [esp+38h+var_28]
		mov	eax, [esp+38h+var_24]
		mov	ecx, [esp+38h+var_1C]

loc_10C:				; CODE XREF: _CRYPTO_128_unwrap+94j
		sub	eax, 1
		mov	[esp+38h+var_24], eax
		jnz	short loc_98
		mov	eax, [esp+38h+arg_4]
		mov	esi, offset _default_iv
		test	eax, eax
		pop	edi
		cmovnz	esi, eax
		lea	eax, [esp+34h+var_14]
		mov	ecx, [eax]
		pop	ebx
		cmp	ecx, [esi]
		jnz	short loc_14A
		mov	ecx, [eax+4]
		cmp	ecx, [esi+4]
		jnz	short loc_14A
		pop	esi
		mov	eax, edx
		pop	ebp
		mov	ecx, [esp+28h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 28h
		retn
; ---------------------------------------------------------------------------

loc_14A:				; CODE XREF: _CRYPTO_128_unwrap+125j
					; _CRYPTO_128_unwrap+12Dj
		push	edx
		push	[esp+34h+var_18]
		call	_OPENSSL_cleanse
		add	esp, 8

loc_157:				; CODE XREF: _CRYPTO_128_unwrap+3Cj
					; _CRYPTO_128_unwrap+4Aj
		mov	ecx, [esp+30h+var_4]
		xor	eax, eax
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 28h
		retn
_CRYPTO_128_unwrap endp

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


; int __cdecl CRYPTO_128_wrap(int, int,	int, void *Src,	size_t Size, int)
		public _CRYPTO_128_wrap
_CRYPTO_128_wrap proc near

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
Src		= dword	ptr  10h
Size		= dword	ptr  14h
arg_14		= dword	ptr  18h

		mov	eax, 24h ; '$'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+24h+var_4], eax
		mov	ecx, [esp+24h+Size]
		mov	eax, [esp+24h+arg_14]
		mov	edx, [esp+24h+Src]
		mov	[esp+24h+var_20], eax
		push	ebp
		mov	ebp, [esp+28h+arg_0]
		push	esi
		mov	esi, [esp+2Ch+arg_8]
		mov	[esp+2Ch+var_18], esi
		test	cl, 7
		jnz	loc_2A0
		lea	eax, [ecx-8]
		cmp	eax, 7FFFFFF8h
		ja	loc_2A0
		push	ebx
		push	edi
		push	ecx		; Size
		add	esi, 8
		mov	ebx, 1
		push	edx		; Src
		push	esi		; Dst
		mov	[esp+40h+var_1C], esi
		call	dword ptr ds:__imp__memmove
		mov	eax, [esp+40h+arg_4]
		add	esp, 0Ch
		test	eax, eax
		mov	ecx, offset _default_iv
		cmovnz	ecx, eax
		mov	eax, [ecx]
		mov	[esp+34h+var_14], eax
		mov	eax, [ecx+4]
		mov	ecx, [esp+34h+Size]
		mov	[esp+34h+var_10], eax
		mov	eax, 6
		mov	[esp+34h+var_24], eax
		nop	dword ptr [eax+00h]

loc_1FC:				; CODE XREF: _CRYPTO_128_wrap+10Bj
		test	ecx, ecx
		jz	short loc_26C
		lea	edi, [ecx-1]
		shr	edi, 3
		inc	edi
		nop	dword ptr [eax+eax+00h]

loc_20C:				; CODE XREF: _CRYPTO_128_wrap+F6j
		mov	eax, [esi]
		mov	[esp+34h+var_C], eax
		mov	eax, [esi+4]
		mov	[esp+34h+var_8], eax
		lea	eax, [esp+34h+var_14]
		push	ebp
		push	eax
		push	eax
		call	[esp+40h+var_20]
		xor	byte ptr [esp+40h+var_10+3], bl
		add	esp, 0Ch
		cmp	ebx, 0FFh
		jbe	short loc_24E
		mov	eax, ebx
		shr	eax, 8
		xor	byte ptr [esp+34h+var_10+2], al
		mov	eax, ebx
		shr	eax, 10h
		xor	byte ptr [esp+34h+var_10+1], al
		mov	eax, ebx
		shr	eax, 18h
		xor	byte ptr [esp+34h+var_10], al

loc_24E:				; CODE XREF: _CRYPTO_128_wrap+C5j
		mov	eax, [esp+34h+var_C]
		inc	ebx
		mov	[esi], eax
		mov	eax, [esp+34h+var_8]
		mov	[esi+4], eax
		add	esi, 8
		sub	edi, 1
		jnz	short loc_20C
		mov	ecx, [esp+34h+Size]
		mov	eax, [esp+34h+var_24]

loc_26C:				; CODE XREF: _CRYPTO_128_wrap+92j
		mov	esi, [esp+34h+var_1C]
		sub	eax, 1
		mov	[esp+34h+var_24], eax
		jnz	short loc_1FC
		mov	edx, [esp+34h+var_18]
		mov	eax, [esp+34h+var_14]
		pop	edi
		pop	ebx
		mov	[edx], eax
		mov	eax, [esp+2Ch+var_10]
		pop	esi
		mov	[edx+4], eax
		lea	eax, [ecx+8]
		pop	ebp
		mov	ecx, [esp+24h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 24h
		retn
; ---------------------------------------------------------------------------

loc_2A0:				; CODE XREF: _CRYPTO_128_wrap+36j
					; _CRYPTO_128_wrap+44j
		mov	ecx, [esp+2Ch+var_4]
		xor	eax, eax
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 24h
		retn
_CRYPTO_128_wrap endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; void *__cdecl	_memmove(void *Dst, const void *Src, size_t Size)
		extrn __imp__memmove:near ; CODE XREF: _CRYPTO_128_unwrap+6Fp
					; _CRYPTO_128_wrap+5Bp
					; DATA XREF: ...
		extrn _OPENSSL_cleanse:near ; CODE XREF: _CRYPTO_128_unwrap+147p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _CRYPTO_128_unwrap+139p
					; _CRYPTO_128_unwrap+159p ...
		extrn __chkstk:near	; CODE XREF: _CRYPTO_128_unwrap+5p
					; _CRYPTO_128_wrap+5p
		extrn ___security_cookie:near ;	DATA XREF: _CRYPTO_128_unwrap+Ar
					; _CRYPTO_128_wrap+Ar


		end