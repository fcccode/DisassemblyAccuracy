;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	9DE805EB9AC35D831EC595B63C9C523E
; Input	CRC32 :	70136041

; File Name   :	C:\compspace\Diff\openssl\obj\ec_oct.obj
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


		public _EC_POINT_oct2point
_EC_POINT_oct2point proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	ecx, [esp+arg_0]
		push	esi
		mov	eax, [ecx]
		mov	esi, [eax+54h]
		test	esi, esi
		jnz	short loc_2F
		test	byte ptr [eax],	1
		jnz	short loc_2F
		push	0ABh ; '�'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	42h ; 'B'
		push	7Ah ; 'z'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_2F:					; CODE XREF: _EC_POINT_oct2point+Cj
					; _EC_POINT_oct2point+11j
		mov	edx, [esp+4+arg_4]
		cmp	eax, [edx]
		jz	short loc_53
		push	0AFh ; '�'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	65h ; 'e'
		push	7Ah ; 'z'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_53:					; CODE XREF: _EC_POINT_oct2point+35j
		test	byte ptr [eax],	1
		jz	short loc_7C
		cmp	dword ptr [eax+4], 196h
		pop	esi
		jnz	short loc_6F
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GFp_simple_oct2point
; ---------------------------------------------------------------------------

loc_6F:					; CODE XREF: _EC_POINT_oct2point+60j
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GF2m_simple_oct2point
; ---------------------------------------------------------------------------

loc_7C:					; CODE XREF: _EC_POINT_oct2point+56j
		push	[esp+4+arg_10]
		push	[esp+8+arg_C]
		push	[esp+0Ch+arg_8]
		push	edx
		push	ecx
		call	esi
		add	esp, 14h
		pop	esi
		retn
_EC_POINT_oct2point endp ; sp-analysis failed

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


		public _EC_POINT_point2oct
_EC_POINT_point2oct proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		mov	ecx, [esp+arg_0]
		push	esi
		mov	eax, [ecx]
		mov	esi, [eax+50h]
		test	esi, esi
		jnz	short loc_C3
		test	byte ptr [eax],	1
		jnz	short loc_C3
		push	8Dh ; '�'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	42h ; 'B'
		push	7Bh ; '{'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_C3:					; CODE XREF: _EC_POINT_point2oct+Cj
					; _EC_POINT_point2oct+11j
		mov	edx, [esp+4+arg_4]
		cmp	eax, [edx]
		jz	short loc_E7
		push	91h ; '�'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	65h ; 'e'
		push	7Bh ; '{'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_E7:					; CODE XREF: _EC_POINT_point2oct+35j
		test	byte ptr [eax],	1
		jz	short loc_110
		cmp	dword ptr [eax+4], 196h
		pop	esi
		jnz	short loc_103
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GFp_simple_point2oct
; ---------------------------------------------------------------------------

loc_103:				; CODE XREF: _EC_POINT_point2oct+60j
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GF2m_simple_point2oct
; ---------------------------------------------------------------------------

loc_110:				; CODE XREF: _EC_POINT_point2oct+56j
		push	[esp+4+arg_14]
		push	[esp+8+arg_10]
		push	[esp+0Ch+arg_C]
		push	[esp+10h+arg_8]
		push	edx
		push	ecx
		call	esi
		add	esp, 18h
		pop	esi
		retn
_EC_POINT_point2oct endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 12Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _EC_POINT_set_compressed_coordinates_GF2m
_EC_POINT_set_compressed_coordinates_GF2m proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	ecx, [esp+arg_0]
		push	esi
		mov	eax, [ecx]
		mov	esi, [eax+4Ch]
		test	esi, esi
		jnz	short loc_15B
		test	byte ptr [eax],	1
		jnz	short loc_15B
		push	72h ; 'r'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	42h ; 'B'
		push	0BAh ; '�'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_15B:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+Cj
					; _EC_POINT_set_compressed_coordinates_GF2m+11j
		mov	edx, [esp+4+arg_4]
		cmp	eax, [edx]
		jz	short loc_17F
		push	77h ; 'w'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	65h ; 'e'
		push	0BAh ; '�'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_17F:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+35j
		test	byte ptr [eax],	1
		jz	short loc_1A8
		cmp	dword ptr [eax+4], 196h
		pop	esi
		jnz	short loc_19B
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GFp_simple_set_compressed_coordinates
; ---------------------------------------------------------------------------

loc_19B:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+60j
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GF2m_simple_set_compressed_coordinates
; ---------------------------------------------------------------------------

loc_1A8:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+56j
		push	[esp+4+arg_10]
		push	[esp+8+arg_C]
		push	[esp+0Ch+arg_8]
		push	edx
		push	ecx
		call	esi
		add	esp, 14h
		pop	esi
		retn
_EC_POINT_set_compressed_coordinates_GF2m endp ; sp-analysis failed

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


		public _EC_POINT_set_compressed_coordinates_GFp
_EC_POINT_set_compressed_coordinates_GFp proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	ecx, [esp+arg_0]
		push	esi
		mov	eax, [ecx]
		mov	esi, [eax+4Ch]
		test	esi, esi
		jnz	short loc_1EC
		test	byte ptr [eax],	1
		jnz	short loc_1EC
		push	4Eh ; 'N'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	42h ; 'B'
		push	7Dh ; '}'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1EC:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GFp+Cj
					; _EC_POINT_set_compressed_coordinates_GFp+11j
		mov	edx, [esp+4+arg_4]
		cmp	eax, [edx]
		jz	short loc_20D
		push	53h ; 'S'
		push	offset ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ ; ".\\crypto\\ec\\ec_oct.c"
		push	65h ; 'e'
		push	7Dh ; '}'
		push	10h
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_20D:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GFp+32j
		test	byte ptr [eax],	1
		jz	short loc_236
		cmp	dword ptr [eax+4], 196h
		pop	esi
		jnz	short loc_229
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GFp_simple_set_compressed_coordinates
; ---------------------------------------------------------------------------

loc_229:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GFp+5Aj
		mov	[esp+arg_4], edx
		mov	[esp+arg_0], ecx
		jmp	_ec_GF2m_simple_set_compressed_coordinates
; ---------------------------------------------------------------------------

loc_236:				; CODE XREF: _EC_POINT_set_compressed_coordinates_GFp+50j
		push	[esp+4+arg_10]
		push	[esp+8+arg_C]
		push	[esp+0Ch+arg_8]
		push	edx
		push	ecx
		call	esi
		add	esp, 14h
		pop	esi
		retn
_EC_POINT_set_compressed_coordinates_GFp endp ;	sp-analysis failed

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 24Ch
; COMDAT (pick any)
		public ??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@
; `string'
??_C@_0BF@BPCDJGOK@?4?2crypto?2ec?2ec_oct?4c?$AA@ db '.\crypto\ec\ec_oct.c',0
					; DATA XREF: _EC_POINT_oct2point+18o
					; _EC_POINT_oct2point+3Co ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ERR_put_error:near ; CODE XREF: _EC_POINT_oct2point+23p
					; _EC_POINT_oct2point+47p ...
		extrn _ec_GFp_simple_set_compressed_coordinates:near
					; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+6Aj
					; _EC_POINT_set_compressed_coordinates_GFp+64j
		extrn _ec_GFp_simple_point2oct:near ; CODE XREF: _EC_POINT_point2oct+6Aj
		extrn _ec_GFp_simple_oct2point:near ; CODE XREF: _EC_POINT_oct2point+6Aj
		extrn _ec_GF2m_simple_set_compressed_coordinates:near
					; CODE XREF: _EC_POINT_set_compressed_coordinates_GF2m+77j
					; _EC_POINT_set_compressed_coordinates_GFp+71j
		extrn _ec_GF2m_simple_point2oct:near ; CODE XREF: _EC_POINT_point2oct+77j
		extrn _ec_GF2m_simple_oct2point:near ; CODE XREF: _EC_POINT_oct2point+77j


		end