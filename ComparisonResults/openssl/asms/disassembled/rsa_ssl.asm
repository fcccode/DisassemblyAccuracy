;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	B915838525E07FE1C5E03A144991F98F
; Input	CRC32 :	98E72D55

; File Name   :	C:\compspace\Diff\openssl\obj\rsa_ssl.obj
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


; int __cdecl RSA_padding_add_SSLv23(int, int, void *Src, size_t Size)
		public _RSA_padding_add_SSLv23
_RSA_padding_add_SSLv23	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
Src		= dword	ptr  0Ch
Size		= dword	ptr  10h

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	ebp
		mov	ebp, [esp+8+Size]
		lea	eax, [ebx-0Bh]
		cmp	ebp, eax
		jle	short loc_2B
		push	49h ; 'I'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	6Eh ; 'n'
		push	6Eh ; 'n'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_2B:					; CODE XREF: _RSA_padding_add_SSLv23+Fj
		push	esi
		mov	esi, [esp+0Ch+arg_0]
		sub	ebx, ebp
		sub	ebx, 0Bh
		push	ebx
		mov	word ptr [esi],	200h
		add	esi, 2
		push	esi
		call	_RAND_bytes
		add	esp, 8
		test	eax, eax
		jg	short loc_51
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_51:					; CODE XREF: _RSA_padding_add_SSLv23+49j
		push	edi
		xor	edi, edi
		test	ebx, ebx
		jle	short loc_7A

loc_58:					; CODE XREF: _RSA_padding_add_SSLv23+78j
		cmp	byte ptr [esi],	0
		jnz	short loc_74
		nop	dword ptr [eax]

loc_60:					; CODE XREF: _RSA_padding_add_SSLv23+72j
		push	1
		push	esi
		call	_RAND_bytes
		add	esp, 8
		test	eax, eax
		jle	short loc_A6
		cmp	byte ptr [esi],	0
		jz	short loc_60

loc_74:					; CODE XREF: _RSA_padding_add_SSLv23+5Bj
		inc	edi
		inc	esi
		cmp	edi, ebx
		jl	short loc_58

loc_7A:					; CODE XREF: _RSA_padding_add_SSLv23+56j
		mov	dword ptr [esi], 3030303h
		mov	dword ptr [esi+4], 3030303h
		push	ebp		; Size
		push	[esp+14h+Src]	; Src
		mov	byte ptr [esi+8], 0
		add	esi, 9
		push	esi		; Dst
		call	_memcpy
		add	esp, 0Ch
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_A6:					; CODE XREF: _RSA_padding_add_SSLv23+6Dj
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn
_RSA_padding_add_SSLv23	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0B0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl RSA_padding_check_SSLv23(void *Dst, int, int, int, int)
		public _RSA_padding_check_SSLv23
_RSA_padding_check_SSLv23 proc near

Dst		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	esi
		mov	esi, [esp+4+arg_C]
		cmp	esi, 0Ah
		jge	short loc_D4
		push	70h ; 'p'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	6Fh ; 'o'
		push	72h ; 'r'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_D4:					; CODE XREF: _RSA_padding_check_SSLv23+8j
		lea	eax, [esi+1]
		cmp	[esp+4+arg_10],	eax
		jnz	loc_199
		mov	eax, [esp+4+arg_8]
		cmp	byte ptr [eax],	2
		lea	edx, [eax+1]
		jnz	loc_199
		dec	esi
		xor	ecx, ecx
		test	esi, esi
		jle	short loc_104

loc_F8:					; CODE XREF: _RSA_padding_check_SSLv23+52j
		mov	al, [edx]
		inc	edx
		test	al, al
		jz	short loc_104
		inc	ecx
		cmp	ecx, esi
		jl	short loc_F8

loc_104:				; CODE XREF: _RSA_padding_check_SSLv23+46j
					; _RSA_padding_check_SSLv23+4Dj
		cmp	ecx, esi
		jz	short loc_17C
		cmp	ecx, 8
		jl	short loc_17C
		mov	eax, 0FFFFFFF7h

loc_112:				; CODE XREF: _RSA_padding_check_SSLv23+6Cj
		cmp	byte ptr [eax+edx], 3
		jnz	short loc_11E
		inc	eax
		cmp	eax, 0FFFFFFFFh
		jl	short loc_112

loc_11E:				; CODE XREF: _RSA_padding_check_SSLv23+66j
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_140
		push	88h ; '�'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	73h ; 's'
		push	72h ; 'r'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_140:				; CODE XREF: _RSA_padding_check_SSLv23+71j
		or	eax, 0FFFFFFFFh
		sub	eax, ecx
		add	esi, eax
		cmp	esi, [esp+4+arg_4]
		jle	short loc_16A
		push	8Fh ; '�'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	6Dh ; 'm'
		push	72h ; 'r'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_16A:				; CODE XREF: _RSA_padding_check_SSLv23+9Bj
		push	esi		; Size
		push	edx		; Src
		push	[esp+0Ch+Dst]	; Dst
		call	_memcpy
		add	esp, 0Ch
		mov	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_17C:				; CODE XREF: _RSA_padding_check_SSLv23+56j
					; _RSA_padding_check_SSLv23+5Bj
		push	80h ; '�'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	71h ; 'q'
		push	72h ; 'r'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_199:				; CODE XREF: _RSA_padding_check_SSLv23+2Bj
					; _RSA_padding_check_SSLv23+3Bj
		push	74h ; 't'
		push	offset ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ ; ".\\crypto\\rsa\\rsa_ssl.c"
		push	6Bh ; 'k'
		push	72h ; 'r'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
_RSA_padding_check_SSLv23 endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1B4h
; COMDAT (pick any)
		public ??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@
; `string'
??_C@_0BH@PMCCHOFO@?4?2crypto?2rsa?2rsa_ssl?4c?$AA@ db '.\crypto\rsa\rsa_ssl.c',0
					; DATA XREF: _RSA_padding_add_SSLv23+13o
					; _RSA_padding_check_SSLv23+Co	...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ERR_put_error:near ; CODE XREF: _RSA_padding_add_SSLv23+1Ep
					; _RSA_padding_check_SSLv23+17p ...
		extrn _RAND_bytes:near	; CODE XREF: _RSA_padding_add_SSLv23+3Fp
					; _RSA_padding_add_SSLv23+63p
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn _memcpy:near	; CODE XREF: _RSA_padding_add_SSLv23+94p
					; _RSA_padding_check_SSLv23+C0p


		end