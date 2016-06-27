;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	2F3F48E4172389316A8506A81FA46D99
; Input	CRC32 :	8F5FB6DB

; File Name   :	C:\compspace\Diff\openssl\obj\p_open.obj
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


		public _EVP_OpenFinal
_EVP_OpenFinal	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	[esp+arg_8]
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_EVP_DecryptFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	short locret_2C
		push	0
		push	0
		push	0
		push	0
		push	[esp+10h+arg_0]
		call	_EVP_DecryptInit_ex
		add	esp, 14h

locret_2C:				; CODE XREF: _EVP_OpenFinal+16j
		retn
_EVP_OpenFinal	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 30h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _EVP_OpenInit
_EVP_OpenInit	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		push	ebx
		mov	ebx, [esp+4+arg_0]
		push	ebp
		push	esi
		push	edi
		mov	edi, [esp+10h+arg_4]
		xor	esi, esi
		xor	ebp, ebp
		test	edi, edi
		jz	short loc_60
		push	ebx
		call	_EVP_CIPHER_CTX_init
		push	ebp
		push	ebp
		push	ebp
		push	edi
		push	ebx
		call	_EVP_DecryptInit_ex
		add	esp, 18h
		test	eax, eax
		jnz	short loc_60
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_60:					; CODE XREF: _EVP_OpenInit+12j
					; _EVP_OpenInit+29j
		mov	edi, [esp+10h+arg_14]
		test	edi, edi
		jnz	short loc_70
		lea	eax, [edi+1]
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_70:					; CODE XREF: _EVP_OpenInit+36j
		cmp	dword ptr [edi], 6
		jz	short loc_9A
		push	56h ; 'V'
		push	offset ??_C@_0BG@CMBCMIIH@?4?2crypto?2evp?2p_open?4c?$AA@ ; ".\\crypto\\evp\\p_open.c"
		push	6Ah ; 'j'
		push	66h ; 'f'
		push	6
		call	_ERR_put_error
		add	esp, 14h
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_9A:					; CODE XREF: _EVP_OpenInit+43j
		push	dword ptr [edi+14h]
		call	_RSA_size
		push	5Bh ; '['
		mov	[esp+18h+arg_4], eax
		add	eax, 2
		push	offset ??_C@_0BG@CMBCMIIH@?4?2crypto?2evp?2p_open?4c?$AA@ ; ".\\crypto\\evp\\p_open.c"
		push	eax
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 10h
		test	esi, esi
		jnz	short loc_E4
		push	5Eh ; '^'
		push	offset ??_C@_0BG@CMBCMIIH@?4?2crypto?2evp?2p_open?4c?$AA@ ; ".\\crypto\\evp\\p_open.c"
		push	41h ; 'A'
		push	66h ; 'f'
		push	6
		call	_ERR_put_error
		add	esp, 14h
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_E4:					; CODE XREF: _EVP_OpenInit+8Dj
		push	edi
		push	[esp+14h+arg_C]
		push	[esp+18h+arg_8]
		push	esi
		call	_EVP_PKEY_decrypt_old
		add	esp, 10h
		test	eax, eax
		jle	short $err$13
		push	eax
		push	ebx
		call	_EVP_CIPHER_CTX_set_key_length
		add	esp, 8
		test	eax, eax
		jz	short $err$13
		push	[esp+10h+arg_10]
		push	esi
		push	0
		push	0
		push	ebx
		call	_EVP_DecryptInit_ex
		add	esp, 14h
		mov	ecx, 1
		test	eax, eax
		cmovnz	ebp, ecx

$err$13:				; CODE XREF: _EVP_OpenInit+C8j
					; _EVP_OpenInit+D6j
		push	[esp+10h+arg_4]
		push	esi
		call	_OPENSSL_cleanse
		add	esp, 8
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
_EVP_OpenInit	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 144h
; COMDAT (pick any)
		public ??_C@_0BG@CMBCMIIH@?4?2crypto?2evp?2p_open?4c?$AA@
; `string'
??_C@_0BG@CMBCMIIH@?4?2crypto?2evp?2p_open?4c?$AA@ db '.\crypto\evp\p_open.c',0
					; DATA XREF: _EVP_OpenInit+47o
					; _EVP_OpenInit+7Bo ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _EVP_OpenInit+81p
		extrn _CRYPTO_free:near	; CODE XREF: _EVP_OpenInit+5Bp
					; _EVP_OpenInit+A5p ...
		extrn _OPENSSL_cleanse:near ; CODE XREF: _EVP_OpenInit+F9p
		extrn _ERR_put_error:near ; CODE XREF: _EVP_OpenInit+52p
					; _EVP_OpenInit+9Cp
		extrn _EVP_DecryptInit_ex:near ; CODE XREF: _EVP_OpenFinal+24p
					; _EVP_OpenInit+1Fp ...
		extrn _EVP_DecryptFinal_ex:near	; CODE XREF: _EVP_OpenFinal+Cp
		extrn _EVP_CIPHER_CTX_init:near	; CODE XREF: _EVP_OpenInit+15p
		extrn _EVP_CIPHER_CTX_set_key_length:near ; CODE XREF: _EVP_OpenInit+CCp
		extrn _EVP_PKEY_decrypt_old:near ; CODE	XREF: _EVP_OpenInit+BEp
		extrn _RSA_size:near	; CODE XREF: _EVP_OpenInit+6Dp


		end