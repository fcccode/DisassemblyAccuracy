;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	C73F32AFF7E30E35E939D01ECB30C226
; Input	CRC32 :	A9B2CC9F

; File Name   :	C:\compspace\Diff\openssl\obj\ofb128.obj
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
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _CRYPTO_ofb128_encrypt
_CRYPTO_ofb128_encrypt proc near

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		mov	eax, 10h
		call	__chkstk
		push	ebx
		mov	ebx, [esp+14h+arg_4]
		push	ebp
		mov	ebp, [esp+18h+arg_0]
		push	esi
		mov	esi, [esp+1Ch+arg_14]
		push	edi
		mov	edi, [esp+20h+arg_8]
		mov	esi, [esi]
		test	esi, esi
		jz	short loc_3D
		mov	ecx, [esp+20h+arg_10]

loc_28:					; CODE XREF: _CRYPTO_ofb128_encrypt+3Bj
		test	edi, edi
		jz	short loc_3D
		mov	al, [esi+ecx]
		dec	edi
		xor	al, [ebp+0]
		inc	esi
		mov	[ebx], al
		inc	ebp
		inc	ebx
		and	esi, 0Fh
		jnz	short loc_28

loc_3D:					; CODE XREF: _CRYPTO_ofb128_encrypt+22j
					; _CRYPTO_ofb128_encrypt+2Aj
		mov	edx, [esp+20h+arg_18]
		cmp	edi, 10h
		jb	loc_D5
		mov	ecx, [esp+20h+arg_10]
		mov	eax, ebx
		sub	eax, ecx
		mov	[esp+20h+var_10], eax
		mov	eax, ebp
		sub	eax, ecx
		mov	[esp+20h+var_C], eax
		mov	eax, edi
		shr	eax, 4
		mov	[esp+20h+arg_8], eax
		shl	eax, 4
		add	ebx, eax
		add	ebp, eax
		mov	[esp+20h+var_8], ebx
		mov	ebx, [esp+20h+var_10]
		mov	[esp+20h+var_4], ebp
		mov	ebp, [esp+20h+var_C]
		jmp	short loc_84
; ---------------------------------------------------------------------------

loc_80:					; CODE XREF: _CRYPTO_ofb128_encrypt+CBj
		mov	ecx, [esp+20h+arg_10]

loc_84:					; CODE XREF: _CRYPTO_ofb128_encrypt+7Ej
		push	[esp+20h+arg_C]
		push	ecx
		push	ecx
		call	edx
		add	esp, 0Ch
		cmp	esi, 10h
		jnb	short loc_B7
		mov	eax, [esp+20h+arg_10]
		mov	edx, 0Fh
		sub	edx, esi
		add	eax, esi
		shr	edx, 2
		inc	edx

loc_A5:					; CODE XREF: _CRYPTO_ofb128_encrypt+B5j
		mov	ecx, [eax+ebp]
		lea	eax, [eax+4]
		xor	ecx, [eax-4]
		mov	[ebx+eax-4], ecx
		sub	edx, 1
		jnz	short loc_A5

loc_B7:					; CODE XREF: _CRYPTO_ofb128_encrypt+92j
		mov	edx, [esp+20h+arg_18]
		sub	edi, 10h
		add	ebx, 10h
		add	ebp, 10h
		xor	esi, esi
		sub	[esp+20h+arg_8], 1
		jnz	short loc_80
		mov	ebx, [esp+20h+var_8]
		mov	ebp, [esp+20h+var_4]

loc_D5:					; CODE XREF: _CRYPTO_ofb128_encrypt+44j
		test	edi, edi
		jz	short loc_107
		push	[esp+20h+arg_C]
		mov	eax, [esp+24h+arg_10]
		push	eax
		push	eax
		call	edx
		mov	eax, [esp+2Ch+arg_10]
		add	esp, 0Ch
		sub	ebp, eax
		sub	ebx, eax
		lea	ecx, [esi+eax]
		add	esi, edi

loc_F5:					; CODE XREF: _CRYPTO_ofb128_encrypt+105j
		mov	al, [ecx+ebp]
		lea	ecx, [ecx+1]
		xor	al, [ecx-1]
		mov	[ecx+ebx-1], al
		sub	edi, 1
		jnz	short loc_F5

loc_107:				; CODE XREF: _CRYPTO_ofb128_encrypt+D7j
		mov	eax, [esp+20h+arg_14]
		pop	edi
		mov	[eax], esi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn
_CRYPTO_ofb128_encrypt endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __chkstk:near	; CODE XREF: _CRYPTO_ofb128_encrypt+5p


		end
