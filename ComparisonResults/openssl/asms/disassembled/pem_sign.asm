;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	1903481F3D96AB22BD86B7155116E9F9
; Input	CRC32 :	9A5FE67A

; File Name   :	C:\compspace\Diff\openssl\obj\pem_sign.obj
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


		public _PEM_SignFinal
_PEM_SignFinal	proc near

var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 4
		call	__chkstk
		push	esi
		push	edi
		push	54h ; 'T'
		push	offset ??_C@_0BI@MMJAPEGB@?4?2crypto?2pem?2pem_sign?4c?$AA@ ; ".\\crypto\\pem\\pem_sign.c"
		push	[esp+14h+arg_C]
		xor	edi, edi
		call	_EVP_PKEY_size
		add	esp, 4
		add	eax, 2
		push	eax
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_4E
		push	56h ; 'V'
		push	offset ??_C@_0BI@MMJAPEGB@?4?2crypto?2pem?2pem_sign?4c?$AA@ ; ".\\crypto\\pem\\pem_sign.c"
		push	41h ; 'A'
		push	70h ; 'p'
		push	9
		call	_ERR_put_error
		add	esp, 14h
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4E:					; CODE XREF: _PEM_SignFinal+31j
		push	[esp+0Ch+arg_C]
		lea	eax, [esp+10h+var_4]
		push	eax
		push	esi
		push	[esp+18h+arg_0]
		call	_EVP_SignFinal
		add	esp, 10h
		test	eax, eax
		jle	short $err$8
		push	[esp+0Ch+var_4]
		push	esi
		push	[esp+14h+arg_4]
		call	_EVP_EncodeBlock
		mov	ecx, [esp+18h+arg_8]
		add	esp, 0Ch
		mov	edi, 1
		mov	[ecx], eax

$err$8:					; CODE XREF: _PEM_SignFinal+66j
		push	esi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ecx
		retn
_PEM_SignFinal	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 94h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PEM_SignInit
_PEM_SignInit	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	0
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_EVP_DigestInit_ex
		add	esp, 0Ch
		retn
_PEM_SignInit	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PEM_SignUpdate
_PEM_SignUpdate	proc near
		jmp	_EVP_DigestUpdate
_PEM_SignUpdate	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0B0h
; COMDAT (pick any)
		public ??_C@_0BI@MMJAPEGB@?4?2crypto?2pem?2pem_sign?4c?$AA@
; `string'
??_C@_0BI@MMJAPEGB@?4?2crypto?2pem?2pem_sign?4c?$AA@ db	'.\crypto\pem\pem_sign.c',0
					; DATA XREF: _PEM_SignFinal+Eo
					; _PEM_SignFinal+35o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _PEM_SignFinal+25p
		extrn _CRYPTO_free:near	; CODE XREF: _PEM_SignFinal+85p
		extrn _ERR_put_error:near ; CODE XREF: _PEM_SignFinal+40p
		extrn _EVP_DigestInit_ex:near ;	CODE XREF: _PEM_SignInit+Ap
		extrn _EVP_DigestUpdate:near ; CODE XREF: _PEM_SignUpdatej
		extrn _EVP_SignFinal:near ; CODE XREF: _PEM_SignFinal+5Cp
		extrn _EVP_EncodeBlock:near ; CODE XREF: _PEM_SignFinal+71p
		extrn _EVP_PKEY_size:near ; CODE XREF: _PEM_SignFinal+19p
		extrn __chkstk:near	; CODE XREF: _PEM_SignFinal+5p


		end
