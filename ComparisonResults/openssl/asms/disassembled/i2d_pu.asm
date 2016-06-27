;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	811CAD3F7080E303C2A3FA21F819EBA8
; Input	CRC32 :	422367A1

; File Name   :	C:\compspace\Diff\openssl\obj\i2d_pu.obj
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


		public _i2d_PublicKey
_i2d_PublicKey	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	ecx, [esp+arg_0]
		mov	eax, [ecx]
		cmp	eax, 6
		jz	short loc_56
		cmp	eax, 74h ; 't'
		jz	short loc_46
		cmp	eax, 198h
		jz	short loc_36
		push	5Ah ; 'Z'
		push	offset ??_C@_0BH@MENHKCO@?4?2crypto?2asn1?2i2d_pu?4c?$AA@ ; ".\\crypto\\asn1\\i2d_pu.c"
		push	0A7h
		push	0A4h
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		retn
; ---------------------------------------------------------------------------

loc_36:					; CODE XREF: _i2d_PublicKey+15j
		push	[esp+arg_4]
		push	dword ptr [ecx+14h]
		call	_i2o_ECPublicKey
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_46:					; CODE XREF: _i2d_PublicKey+Ej
		push	[esp+arg_4]
		push	dword ptr [ecx+14h]
		call	_i2d_DSAPublicKey
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_56:					; CODE XREF: _i2d_PublicKey+9j
		push	[esp+arg_4]
		push	dword ptr [ecx+14h]
		call	_i2d_RSAPublicKey
		add	esp, 8
		retn
_i2d_PublicKey	endp

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
		public ??_C@_0BH@MENHKCO@?4?2crypto?2asn1?2i2d_pu?4c?$AA@
; `string'
??_C@_0BH@MENHKCO@?4?2crypto?2asn1?2i2d_pu?4c?$AA@ db '.\crypto\asn1\i2d_pu.c',0
					; DATA XREF: _i2d_PublicKey+19o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ERR_put_error:near ; CODE XREF: _i2d_PublicKey+2Ap
		extrn _i2d_RSAPublicKey:near ; CODE XREF: _i2d_PublicKey+5Dp
		extrn _i2d_DSAPublicKey:near ; CODE XREF: _i2d_PublicKey+4Dp
		extrn _i2o_ECPublicKey:near ; CODE XREF: _i2d_PublicKey+3Dp


		end