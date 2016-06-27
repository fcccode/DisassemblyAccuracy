;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	F475D83D63A5E39140323A5B0F52AA09
; Input	CRC32 :	615D88B2

; File Name   :	C:\compspace\Diff\openssl\obj\dh_asn1.obj
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


_dh_cb		proc near		; DATA XREF: .rdata:00000054o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_0]
		test	eax, eax
		jnz	short loc_1B
		call	_DH_new
		mov	ecx, [esp+arg_4]
		mov	[ecx], eax
		neg	eax
		sbb	eax, eax
		and	eax, 2
		retn
; ---------------------------------------------------------------------------

loc_1B:					; CODE XREF: _dh_cb+6j
		cmp	eax, 2
		jnz	short loc_3C
		push	esi
		mov	esi, [esp+4+arg_4]
		push	dword ptr [esi]
		call	_DH_free
		add	esp, 4
		mov	dword ptr [esi], 0
		mov	eax, 2
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_3C:					; CODE XREF: _dh_cb+1Ej
		mov	eax, 1
		retn
_dh_cb		endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment 'qword' can not be represented in assembly
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 44h
_DHparams_aux	dd 4 dup(0)		; DATA XREF: .rdata:000000A8o
					; .rdata:000000ACo
		dd offset _dh_cb
		dd 0
_DHparams_seq_tt dd 2 dup(0)		; DATA XREF: .rdata:000000A0o
		dd 8
		dd offset ??_C@_01JBBJJEPG@p?$AA@ ; `string'
		dd offset _BIGNUM_it
		dd 2 dup(0)
		dd 0Ch
		dd offset ??_C@_01JEJKBAGA@g?$AA@ ; `string'
		dd offset _BIGNUM_it
		dd 1, 0
		dd 10h
		dd offset ??_C@_06IJDLPEM@length?$AA@ ;	"length"
		dd offset _ZLONG_it
; `DHparams_it'::`2'::local_it
?local_it@?1??DHparams_it@@9@9 dd 1, 10h ; DATA	XREF: _DHparams_ito
					; _d2i_DHparamso ...
		dd offset _DHparams_seq_tt
		dd 3
		dd offset _DHparams_aux
		dd offset _DHparams_aux+8
		dd offset ??_C@_02EPINMGPM@DH?$AA@ ; `string'
_DHvparams_seq_tt dd 3 dup(0)		; DATA XREF: .rdata:000000E4o
		dd offset ??_C@_04MENKDCKE@seed?$AA@ ; "seed"
		dd offset _ASN1_BIT_STRING_it
		align 10h
		dd 4
		dd offset ??_C@_07HDOCMLOI@counter?$AA@	; "counter"
		dd offset _BIGNUM_it
; `DHvparams_it'::`2'::local_it
?local_it@?1??DHvparams_it@@9@9	dd 1, 10h ; DATA XREF: _DHvparams_ito
		dd offset _DHvparams_seq_tt
		dd 2, 0
		dd 8
		dd offset ??_C@_0O@KANPBCM@int_dhvparams?$AA@ ;	"int_dhvparams"
; `DHxparams_it'::`2'::local_it
?local_it@?1??DHxparams_it@@9@9	dd 1, 10h ; DATA XREF: _DHxparams_ito
					; _d2i_DHxparams+Fo ...
		dd offset _DHxparams_seq_tt
		dd 5, 0
		dd 14h
		dd offset ??_C@_0O@HMLHGNDO@int_dhx942_dh?$AA@ ; "int_dhx942_dh"
_DHxparams_seq_tt dd 3 dup(0)		; DATA XREF: .rdata:00000100o
		dd offset ??_C@_01JBBJJEPG@p?$AA@ ; `string'
		dd offset _BIGNUM_it
		align 10h
		dd 8
		dd offset ??_C@_01JEJKBAGA@g?$AA@ ; `string'
		dd offset _BIGNUM_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_01IIACKFLH@q?$AA@ ; `string'
		dd offset _BIGNUM_it
		dd 1, 0
		dd 0Ch
		dd offset ??_C@_01CBDEGOCN@j?$AA@ ; `string'
		dd offset _BIGNUM_it
		dd 1, 0
		dd 10h
		dd offset ??_C@_07JLLHOFNK@vparams?$AA@	; "vparams"
		dd offset _DHvparams_it
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 178h
; COMDAT (pick any)
		public ??_C@_01JBBJJEPG@p?$AA@
; `string'
??_C@_01JBBJJEPG@p?$AA@	db 70h,	0	; DATA XREF: .rdata:00000068o
					; .rdata:00000120o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 17Ch
; COMDAT (pick any)
		public ??_C@_01JEJKBAGA@g?$AA@
; `string'
??_C@_01JEJKBAGA@g?$AA@	db 67h,	0	; DATA XREF: .rdata:0000007Co
					; .rdata:00000134o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 180h
; COMDAT (pick any)
		public ??_C@_06IJDLPEM@length?$AA@
; `string'
??_C@_06IJDLPEM@length?$AA@ db 'length',0 ; DATA XREF: .rdata:00000090o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 188h
; COMDAT (pick any)
		public ??_C@_02EPINMGPM@DH?$AA@
; `string'
??_C@_02EPINMGPM@DH?$AA@ db 44h, 48h, 0	; DATA XREF: .rdata:000000B0o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 18Ch
; COMDAT (pick any)
		public ??_C@_04MENKDCKE@seed?$AA@
; `string'
??_C@_04MENKDCKE@seed?$AA@ db 'seed',0  ; DATA XREF: .rdata:000000C0o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 194h
; COMDAT (pick any)
		public ??_C@_07HDOCMLOI@counter?$AA@
; `string'
??_C@_07HDOCMLOI@counter?$AA@ db 'counter',0 ; DATA XREF: .rdata:000000D4o
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 19Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _DHvparams_it
_DHvparams_it	proc near		; DATA XREF: .rdata:00000174o
		mov	eax, offset ?local_it@?1??DHvparams_it@@9@9 ; `DHvparams_it'::`2'::local_it
		retn
_DHvparams_it	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1A4h
; COMDAT (pick any)
		public ??_C@_0O@KANPBCM@int_dhvparams?$AA@
; `string'
??_C@_0O@KANPBCM@int_dhvparams?$AA@ db 'int_dhvparams',0 ; DATA XREF: .rdata:000000F4o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1B4h
; COMDAT (pick any)
		public ??_C@_01IIACKFLH@q?$AA@
; `string'
??_C@_01IIACKFLH@q?$AA@	db 71h,	0	; DATA XREF: .rdata:00000148o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1B8h
; COMDAT (pick any)
		public ??_C@_01CBDEGOCN@j?$AA@
; `string'
??_C@_01CBDEGOCN@j?$AA@	db 6Ah,	0	; DATA XREF: .rdata:0000015Co
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1BCh
; COMDAT (pick any)
		public ??_C@_07JLLHOFNK@vparams?$AA@
; `string'
??_C@_07JLLHOFNK@vparams?$AA@ db 'vparams',0 ; DATA XREF: .rdata:00000170o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1C4h
; COMDAT (pick any)
		public ??_C@_0O@HMLHGNDO@int_dhx942_dh?$AA@
; `string'
??_C@_0O@HMLHGNDO@int_dhx942_dh?$AA@ db	'int_dhx942_dh',0 ; DATA XREF: .rdata:00000110o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1D4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _DHparams_it
_DHparams_it	proc near
		mov	eax, offset ?local_it@?1??DHparams_it@@9@9 ; `DHparams_it'::`2'::local_it
		retn
_DHparams_it	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1DCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _DHxparams_it
_DHxparams_it	proc near
		mov	eax, offset ?local_it@?1??DHxparams_it@@9@9 ; `DHxparams_it'::`2'::local_it
		retn
_DHxparams_it	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1E4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_DHparams
_d2i_DHparams	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??DHparams_it@@9@9 ;	`DHparams_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_DHparams	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 200h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_DHxparams
_d2i_DHxparams	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	esi
		call	_DH_new
		mov	esi, eax
		test	esi, esi
		jnz	short loc_20E
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_20E:				; CODE XREF: _d2i_DHxparams+Aj
		push	edi
		push	offset ?local_it@?1??DHxparams_it@@9@9 ; `DHxparams_it'::`2'::local_it
		push	[esp+0Ch+arg_8]
		push	[esp+10h+arg_4]
		push	0
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jnz	short loc_23A
		push	esi
		call	_DH_free
		add	esp, 4
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_23A:				; CODE XREF: _d2i_DHxparams+2Aj
		push	ebx
		mov	ebx, [esp+0Ch+arg_0]
		test	ebx, ebx
		jz	short loc_254
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_252
		push	eax
		call	_DH_free
		add	esp, 4

loc_252:				; CODE XREF: _d2i_DHxparams+47j
		mov	[ebx], esi

loc_254:				; CODE XREF: _d2i_DHxparams+41j
		mov	eax, [edi]
		mov	[esi+8], eax
		mov	eax, [edi+4]
		mov	[esi+24h], eax
		mov	eax, [edi+8]
		mov	[esi+0Ch], eax
		mov	eax, [edi+0Ch]
		mov	[esi+28h], eax
		mov	eax, [edi+10h]
		pop	ebx
		test	eax, eax
		jz	short loc_2B6
		mov	eax, [eax]
		mov	eax, [eax+8]
		mov	[esi+2Ch], eax
		mov	eax, [edi+10h]
		mov	eax, [eax]
		mov	eax, [eax]
		mov	[esi+30h], eax
		mov	eax, [edi+10h]
		mov	eax, [eax+4]
		mov	[esi+34h], eax
		mov	eax, [edi+10h]
		mov	eax, [eax]
		mov	dword ptr [eax+8], 0
		mov	eax, [edi+10h]
		push	dword ptr [eax]
		call	_ASN1_BIT_STRING_free
		push	dword ptr [edi+10h]
		call	_CRYPTO_free
		add	esp, 8
		mov	dword ptr [edi+10h], 0

loc_2B6:				; CODE XREF: _d2i_DHxparams+71j
		push	edi
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, esi
		pop	edi
		pop	esi
		retn
_d2i_DHxparams	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2C4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_int_dhx
_d2i_int_dhx	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??DHxparams_it@@9@9 ; `DHxparams_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_int_dhx	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2E0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_DHparams
_i2d_DHparams	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??DHparams_it@@9@9 ;	`DHparams_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_DHparams	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2F8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_DHxparams
_i2d_DHxparams	proc near

var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 2Ch ; ','
		call	__chkstk
		mov	ecx, [esp+2Ch+arg_0]
		mov	eax, [ecx+8]
		mov	edx, [ecx+34h]
		mov	[esp+2Ch+var_14], eax
		mov	eax, [ecx+0Ch]
		mov	[esp+2Ch+var_C], eax
		mov	eax, [ecx+24h]
		mov	[esp+2Ch+var_10], eax
		mov	eax, [ecx+28h]
		mov	[esp+2Ch+var_8], eax
		test	edx, edx
		jz	short loc_35B
		mov	eax, [ecx+2Ch]
		test	eax, eax
		jz	short loc_35B
		mov	ecx, [ecx+30h]
		test	ecx, ecx
		jle	short loc_35B
		mov	[esp+2Ch+var_1C], eax
		lea	eax, [esp+2Ch+var_24]
		mov	[esp+2Ch+var_2C], eax
		lea	eax, [esp+2Ch+var_2C]
		mov	[esp+2Ch+var_18], 8
		mov	[esp+2Ch+var_24], ecx
		mov	[esp+2Ch+var_28], edx
		mov	[esp+2Ch+var_4], eax
		jmp	short loc_363
; ---------------------------------------------------------------------------

loc_35B:				; CODE XREF: _i2d_DHxparams+2Fj
					; _i2d_DHxparams+36j ...
		mov	[esp+2Ch+var_4], 0

loc_363:				; CODE XREF: _i2d_DHxparams+61j
		push	offset ?local_it@?1??DHxparams_it@@9@9 ; `DHxparams_it'::`2'::local_it
		push	[esp+30h+arg_4]
		lea	eax, [esp+34h+var_14]
		push	eax
		call	_ASN1_item_i2d
		add	esp, 38h
		retn
_i2d_DHxparams	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 37Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_int_dhx
_i2d_int_dhx	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??DHxparams_it@@9@9 ; `DHxparams_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_int_dhx	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ASN1_BIT_STRING_it:near ; DATA XREF: .rdata:000000C4o
		extrn _BIGNUM_it:near	; DATA XREF: .rdata:0000006Co
					; .rdata:00000080o ...
		extrn _ZLONG_it:near	; DATA XREF: .rdata:00000094o
		extrn _CRYPTO_free:near	; CODE XREF: _d2i_DHxparams+A7p
					; _d2i_DHxparams+B7p
		extrn _DH_new:near	; CODE XREF: _dh_cb+8p
					; _d2i_DHxparams+1p
		extrn _DH_free:near	; CODE XREF: _dh_cb+27p
					; _d2i_DHxparams+2Dp ...
		extrn _ASN1_BIT_STRING_free:near ; CODE	XREF: _d2i_DHxparams+9Fp
		extrn _ASN1_item_d2i:near ; CODE XREF: _d2i_DHparams+11p
					; _d2i_DHxparams+1Ep ...
		extrn _ASN1_item_i2d:near ; CODE XREF: _i2d_DHparams+Dp
					; _i2d_DHxparams+79p ...
		extrn __chkstk:near	; CODE XREF: _i2d_DHxparams+5p


		end