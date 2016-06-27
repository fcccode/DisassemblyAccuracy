;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	8D4AC8DDF8B0D6EB07FFA3F6843DAB9A
; Input	CRC32 :	689F4B81

; File Name   :	C:\compspace\Diff\openssl\obj\p12_utl.obj
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


		public _OPENSSL_asc2uni
_OPENSSL_asc2uni proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	ecx, [esp+arg_4]
		push	ebx
		mov	ebx, [esp+4+arg_0]
		push	esi
		cmp	ecx, 0FFFFFFFFh
		jnz	short loc_1D
		mov	ecx, ebx
		lea	edx, [ecx+1]

loc_14:					; CODE XREF: _OPENSSL_asc2uni+19j
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_14
		sub	ecx, edx

loc_1D:					; CODE XREF: _OPENSSL_asc2uni+Dj
		push	4Ah ; 'J'
		lea	esi, ds:2[ecx*2]
		push	offset ??_C@_0BK@LDALPMGB@?4?2crypto?2pkcs12?2p12_utl?4c?$AA@ ;	".\\crypto\\pkcs12\\p12_utl.c"
		push	esi
		call	_CRYPTO_malloc
		mov	edx, eax
		add	esp, 0Ch
		test	edx, edx
		jnz	short loc_3D
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_3D:					; CODE XREF: _OPENSSL_asc2uni+38j
		push	edi
		lea	edi, [esi-2]
		xor	ecx, ecx
		test	edi, edi
		jle	short loc_5D

loc_47:					; CODE XREF: _OPENSSL_asc2uni+5Bj
		mov	eax, ecx
		mov	byte ptr [edx+ecx], 0
		sar	eax, 1
		mov	al, [eax+ebx]
		mov	[edx+ecx+1], al
		add	ecx, 2
		cmp	ecx, edi
		jl	short loc_47

loc_5D:					; CODE XREF: _OPENSSL_asc2uni+45j
		mov	eax, [esp+0Ch+arg_C]
		mov	word ptr [edx+esi-2], 0
		pop	edi
		test	eax, eax
		jz	short loc_6F
		mov	[eax], esi

loc_6F:					; CODE XREF: _OPENSSL_asc2uni+6Bj
		mov	eax, [esp+8+arg_8]
		test	eax, eax
		jz	short loc_79
		mov	[eax], edx

loc_79:					; CODE XREF: _OPENSSL_asc2uni+75j
		pop	esi
		mov	eax, edx
		pop	ebx
		retn
_OPENSSL_asc2uni endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 80h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OPENSSL_uni2asc
_OPENSSL_uni2asc proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	ebx
		mov	ebx, [esp+4+arg_0]
		push	ebp
		push	esi
		push	edi
		mov	edi, [esp+10h+arg_4]
		mov	eax, edi
		cdq
		sub	eax, edx
		mov	ebp, eax
		sar	ebp, 1
		test	edi, edi
		jz	short loc_A0
		cmp	byte ptr [ebx+edi-1], 0
		jz	short loc_A1

loc_A0:					; CODE XREF: _OPENSSL_uni2asc+17j
		inc	ebp

loc_A1:					; CODE XREF: _OPENSSL_uni2asc+1Ej
		push	63h ; 'c'
		push	offset ??_C@_0BK@LDALPMGB@?4?2crypto?2pkcs12?2p12_utl?4c?$AA@ ;	".\\crypto\\pkcs12\\p12_utl.c"
		push	ebp
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_BC
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_BC:					; CODE XREF: _OPENSSL_uni2asc+35j
		xor	edx, edx
		test	edi, edi
		jle	short loc_D4

loc_C2:					; CODE XREF: _OPENSSL_uni2asc+52j
		mov	al, [edx+ebx+1]
		mov	ecx, edx
		sar	ecx, 1
		add	edx, 2
		mov	[ecx+esi], al
		cmp	edx, edi
		jl	short loc_C2

loc_D4:					; CODE XREF: _OPENSSL_uni2asc+40j
		pop	edi
		mov	byte ptr [esi+ebp-1], 0
		mov	eax, esi
		pop	esi
		pop	ebp
		pop	ebx
		retn
_OPENSSL_uni2asc endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0E0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_certbag2x509
_PKCS12_certbag2x509 proc near

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		push	dword ptr [esi]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 98h ; '�'
		jz	short loc_FA

loc_F6:					; CODE XREF: _PKCS12_certbag2x509+2Cj
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_FA:					; CODE XREF: _PKCS12_certbag2x509+14j
		mov	eax, [esi+4]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 9Eh ; '�'
		jnz	short loc_F6
		call	_X509_it
		push	eax
		mov	eax, [esi+4]
		push	dword ptr [eax+4]
		call	_ASN1_item_unpack
		add	esp, 8
		pop	esi
		retn
_PKCS12_certbag2x509 endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 124h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_certbag2x509crl
_PKCS12_certbag2x509crl	proc near

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		push	dword ptr [esi]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 99h ; '�'
		jz	short loc_13E

loc_13A:				; CODE XREF: _PKCS12_certbag2x509crl+2Cj
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_13E:				; CODE XREF: _PKCS12_certbag2x509crl+14j
		mov	eax, [esi+4]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 0A0h ; '�'
		jnz	short loc_13A
		call	_X509_CRL_it
		push	eax
		mov	eax, [esi+4]
		push	dword ptr [eax+4]
		call	_ASN1_item_unpack
		add	esp, 8
		pop	esi
		retn
_PKCS12_certbag2x509crl	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 168h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_x5092certbag
_PKCS12_x5092certbag proc near

arg_0		= dword	ptr  4

		push	98h ; '�'
		push	9Eh ; '�'
		call	_X509_it
		push	eax
		push	[esp+0Ch+arg_0]
		call	_PKCS12_item_pack_safebag
		add	esp, 10h
		retn
_PKCS12_x5092certbag endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 188h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_x509crl2certbag
_PKCS12_x509crl2certbag	proc near

arg_0		= dword	ptr  4

		push	99h ; '�'
		push	0A0h ; '�'
		call	_X509_CRL_it
		push	eax
		push	[esp+0Ch+arg_0]
		call	_PKCS12_item_pack_safebag
		add	esp, 10h
		retn
_PKCS12_x509crl2certbag	endp

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


		public _d2i_PKCS12_bio
_d2i_PKCS12_bio	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	[esp+4+arg_0]
		call	_PKCS12_it
		push	eax
		call	_ASN1_item_d2i_bio
		add	esp, 0Ch
		retn
_d2i_PKCS12_bio	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1C0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PKCS12_fp
_d2i_PKCS12_fp	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	[esp+4+arg_0]
		call	_PKCS12_it
		push	eax
		call	_ASN1_item_d2i_fp
		add	esp, 0Ch
		retn
_d2i_PKCS12_fp	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1D8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12_bio
_i2d_PKCS12_bio	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	[esp+4+arg_0]
		call	_PKCS12_it
		push	eax
		call	_ASN1_item_i2d_bio
		add	esp, 0Ch
		retn
_i2d_PKCS12_bio	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1F0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12_fp
_i2d_PKCS12_fp	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	[esp+4+arg_0]
		call	_PKCS12_it
		push	eax
		call	_ASN1_item_i2d_fp
		add	esp, 0Ch
		retn
_i2d_PKCS12_fp	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 208h
; COMDAT (pick any)
		public ??_C@_0BK@LDALPMGB@?4?2crypto?2pkcs12?2p12_utl?4c?$AA@
; `string'
??_C@_0BK@LDALPMGB@?4?2crypto?2pkcs12?2p12_utl?4c?$AA@ db '.\crypto\pkcs12\p12_utl.c',0
					; DATA XREF: _OPENSSL_asc2uni+26o
					; _OPENSSL_uni2asc+23o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _OPENSSL_asc2uni+2Cp
					; _OPENSSL_uni2asc+29p
		extrn _ASN1_item_d2i_fp:near ; CODE XREF: _d2i_PKCS12_fp+Ep
		extrn _ASN1_item_i2d_fp:near ; CODE XREF: _i2d_PKCS12_fp+Ep
		extrn _ASN1_item_d2i_bio:near ;	CODE XREF: _d2i_PKCS12_bio+Ep
		extrn _ASN1_item_i2d_bio:near ;	CODE XREF: _i2d_PKCS12_bio+Ep
		extrn _ASN1_item_unpack:near ; CODE XREF: _PKCS12_certbag2x509+3Ap
					; _PKCS12_certbag2x509crl+3Ap
		extrn _OBJ_obj2nid:near	; CODE XREF: _PKCS12_certbag2x509+7p
					; _PKCS12_certbag2x509+1Fp ...
		extrn _X509_it:near	; CODE XREF: _PKCS12_certbag2x509+2Ep
					; _PKCS12_x5092certbag+Ap
		extrn _X509_CRL_it:near	; CODE XREF: _PKCS12_certbag2x509crl+2Ep
					; _PKCS12_x509crl2certbag+Ap
		extrn _PKCS12_item_pack_safebag:near ; CODE XREF: _PKCS12_x5092certbag+14p
					; _PKCS12_x509crl2certbag+14p
		extrn _PKCS12_it:near	; CODE XREF: _d2i_PKCS12_bio+8p
					; _d2i_PKCS12_fp+8p ...


		end
