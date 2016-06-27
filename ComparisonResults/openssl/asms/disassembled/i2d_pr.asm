;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	5C93DE44B31E746AD9FD2AC3E3DF510D
; Input	CRC32 :	ABD7A5FD

; File Name   :	C:\compspace\Diff\openssl\obj\i2d_pr.obj
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


		public _i2d_PrivateKey
_i2d_PrivateKey	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	ecx, [esp+arg_0]
		mov	eax, [ecx+0Ch]
		test	eax, eax
		jz	short loc_46
		mov	edx, [eax+60h]
		test	edx, edx
		jz	short loc_18
		mov	[esp+arg_0], ecx
		jmp	edx
; ---------------------------------------------------------------------------

loc_18:					; CODE XREF: _i2d_PrivateKey+10j
		test	eax, eax
		jz	short loc_46
		cmp	dword ptr [eax+28h], 0
		jz	short loc_46
		push	esi
		push	edi
		push	ecx
		call	_EVP_PKEY2PKCS8
		push	[esp+0Ch+arg_4]
		mov	edi, eax
		push	edi
		call	_i2d_PKCS8_PRIV_KEY_INFO
		push	edi
		mov	esi, eax
		call	_PKCS8_PRIV_KEY_INFO_free
		add	esp, 10h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_46:					; CODE XREF: _i2d_PrivateKey+9j
					; _i2d_PrivateKey+1Aj ...
		push	4Ch ; 'L'
		push	offset ??_C@_0BH@JBJKECJH@?4?2crypto?2asn1?2i2d_pr?4c?$AA@ ; ".\\crypto\\asn1\\i2d_pr.c"
		push	0A7h
		push	0A3h
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		retn
_i2d_PrivateKey	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 68h
; COMDAT (pick any)
		public ??_C@_0BH@JBJKECJH@?4?2crypto?2asn1?2i2d_pr?4c?$AA@
; `string'
??_C@_0BH@JBJKECJH@?4?2crypto?2asn1?2i2d_pr?4c?$AA@ db '.\crypto\asn1\i2d_pr.c',0
					; DATA XREF: _i2d_PrivateKey+48o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ERR_put_error:near ; CODE XREF: _i2d_PrivateKey+59p
		extrn _PKCS8_PRIV_KEY_INFO_free:near ; CODE XREF: _i2d_PrivateKey+39p
		extrn _i2d_PKCS8_PRIV_KEY_INFO:near ; CODE XREF: _i2d_PrivateKey+31p
		extrn _EVP_PKEY2PKCS8:near ; CODE XREF:	_i2d_PrivateKey+25p


		end