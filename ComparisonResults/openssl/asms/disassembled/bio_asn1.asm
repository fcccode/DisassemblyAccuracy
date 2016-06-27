;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	499A43B45417318F43B681A14048C2BD
; Input	CRC32 :	B98C11B6

; File Name   :	C:\compspace\Diff\openssl\obj\bio_asn1.obj
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
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_write	proc near		; CODE XREF: _asn1_bio_puts+1Fp
					; DATA XREF: .data:000004C4o

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		mov	edx, [esp+8+arg_4]
		push	ebx
		push	ebp
		test	edx, edx
		jz	loc_1A5
		mov	ebp, [esp+10h+arg_8]
		test	ebp, ebp
		js	loc_1A5
		mov	ebx, [esp+10h+arg_0]
		cmp	dword ptr [ebx+24h], 0
		jz	loc_1A5
		push	esi
		mov	esi, [ebx+20h]
		xor	eax, eax
		test	esi, esi
		jz	short loc_7D
		mov	[esp+14h+var_8], eax
		mov	eax, [esi]
		push	edi
		cmp	eax, 4		; switch 5 cases
		ja	short loc_6F	; jumptable 00000048 default case

loc_48:					; CODE XREF: _asn1_bio_write+6Dj
		jmp	ds:$LN41[eax*4]	; switch jump
; ---------------------------------------------------------------------------

$LN10:					; CODE XREF: _asn1_bio_write:loc_48j
					; DATA XREF: .text$mn:$LN41o
		push	2		; jumptable 00000048 case 0
		push	1
		push	dword ptr [esi+20h]
		push	esi
		push	ebx
		call	_asn1_bio_setup_ex
		add	esp, 14h
		test	eax, eax
		jz	short loc_7A

loc_64:					; CODE XREF: _asn1_bio_write+97j
					; _asn1_bio_write+112j	...
		mov	edx, [esp+18h+arg_4]

loc_68:					; CODE XREF: _asn1_bio_write+142j
					; _asn1_bio_write+154j	...
		mov	eax, [esi]
		cmp	eax, 4
		jbe	short loc_48

loc_6F:					; CODE XREF: _asn1_bio_write+46j
		push	0Fh		; jumptable 00000048 default case
		push	ebx
		call	_BIO_clear_flags
		add	esp, 8

loc_7A:					; CODE XREF: _asn1_bio_write+62j
		xor	eax, eax
		pop	edi

loc_7D:					; CODE XREF: _asn1_bio_write+3Aj
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

$LN12:					; CODE XREF: _asn1_bio_write:loc_48j
					; DATA XREF: .text$mn:$LN41o
		push	2		; jumptable 00000048 case 1
		push	dword ptr [esi+24h]
		push	esi
		push	ebx
		call	_asn1_bio_flush_ex
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jg	short loc_64

$done$42:				; CODE XREF: _asn1_bio_write+130j
					; _asn1_bio_write+19Aj
		push	0Fh
		push	ebx
		call	_BIO_clear_flags
		push	ebx
		call	_BIO_copy_next_retry
		mov	eax, [esp+24h+var_8]
		add	esp, 0Ch
		test	eax, eax
		cmovg	edi, eax
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

$LN14:					; CODE XREF: _asn1_bio_write:loc_48j
					; DATA XREF: .text$mn:$LN41o
		push	dword ptr [esi+1Ch] ; jumptable	00000048 case 2
		push	ebp
		push	0
		call	_ASN1_object_size
		sub	eax, ebp
		add	esp, 0Ch
		mov	[esi+10h], eax
		cmp	eax, [esi+8]
		jle	short loc_EC
		push	offset ??_C@_0BM@FIMHHPDL@ctx?9?$DObuflen?5?$DM?$DN?5ctx?9?$DObufsize?$AA@ ; "ctx->buflen <= ctx->bufsize"
		push	0E8h ; '�'
		push	offset ??_C@_0BJ@JFDEBOM@?4?2crypto?2asn1?2bio_asn1?4c?$AA@ ; ".\\crypto\\asn1\\bio_asn1.c"
		call	_OpenSSLDie
		add	esp, 0Ch

loc_EC:					; CODE XREF: _asn1_bio_write+D3j
		mov	eax, [esi+4]
		mov	[esp+18h+var_4], eax
		lea	eax, [esp+18h+var_4]
		push	dword ptr [esi+18h]
		push	dword ptr [esi+1Ch]
		push	ebp
		push	0
		push	eax
		call	_ASN1_put_object
		add	esp, 14h
		mov	[esi+14h], ebp
		mov	dword ptr [esi], 3
		jmp	loc_64
; ---------------------------------------------------------------------------

$LN15:					; CODE XREF: _asn1_bio_write:loc_48j
					; DATA XREF: .text$mn:$LN41o
		push	dword ptr [esi+10h] ; jumptable	00000048 case 3
		mov	eax, [esi+4]
		add	eax, [esi+0Ch]
		push	eax
		push	dword ptr [ebx+24h]
		call	_BIO_write
		mov	edi, eax
		add	esp, 0Ch
		test	edi, edi
		jle	$done$42
		sub	[esi+10h], edi
		mov	edx, [esp+18h+arg_4]
		jz	short loc_147
		add	[esi+0Ch], edi
		jmp	loc_68
; ---------------------------------------------------------------------------

loc_147:				; CODE XREF: _asn1_bio_write+13Dj
		mov	dword ptr [esi+0Ch], 0
		mov	dword ptr [esi], 4
		jmp	loc_68
; ---------------------------------------------------------------------------

$LN19:					; CODE XREF: _asn1_bio_write:loc_48j
					; DATA XREF: .text$mn:$LN41o
		cmp	ebp, [esi+14h]	; jumptable 00000048 case 4
		mov	ecx, ebp
		cmovg	ecx, [esi+14h]
		push	ecx
		push	edx
		push	dword ptr [ebx+24h]
		call	_BIO_write
		mov	edi, eax
		add	esp, 0Ch
		test	edi, edi
		jle	loc_64
		mov	edx, [esp+18h+arg_4]
		sub	ebp, edi
		add	[esp+18h+var_8], edi
		add	edx, edi
		sub	[esi+14h], edi
		cmp	dword ptr [esi+14h], 0
		mov	[esp+18h+arg_4], edx
		jnz	short loc_198
		mov	dword ptr [esi], 2

loc_198:				; CODE XREF: _asn1_bio_write+190j
		test	ebp, ebp
		jz	$done$42
		jmp	loc_68
; ---------------------------------------------------------------------------

loc_1A5:				; CODE XREF: _asn1_bio_write+12j
					; _asn1_bio_write+1Ej ...
		pop	ebp
		xor	eax, eax
		pop	ebx
		add	esp, 8
		retn
_asn1_bio_write	endp

; ---------------------------------------------------------------------------
		align 10h
$LN41		dd offset $LN10		; DATA XREF: _asn1_bio_write:loc_48r
		dd offset $LN12		; jump table for switch	statement
		dd offset $LN14
		dd offset $LN15
		dd offset $LN19
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1C4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_read	proc near		; DATA XREF: .data:000004C8o

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	eax, [eax+24h]
		test	eax, eax
		jnz	short loc_1D0
		retn
; ---------------------------------------------------------------------------

loc_1D0:				; CODE XREF: _asn1_bio_read+9j
		mov	[esp+arg_0], eax
		jmp	_BIO_read
_asn1_bio_read	endp

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
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_puts	proc near		; DATA XREF: .data:000004CCo

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		mov	eax, edx
		push	esi
		lea	esi, [eax+1]
		nop	word ptr [eax+eax+00h]

loc_1EC:				; CODE XREF: _asn1_bio_puts+15j
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_1EC
		sub	eax, esi
		push	eax
		push	edx
		push	[esp+0Ch+arg_0]
		call	_asn1_bio_write
		add	esp, 0Ch
		pop	esi
		retn
_asn1_bio_puts	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 208h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_gets	proc near		; DATA XREF: .data:000004D0o

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	eax, [eax+24h]
		test	eax, eax
		jnz	short loc_214
		retn
; ---------------------------------------------------------------------------

loc_214:				; CODE XREF: _asn1_bio_gets+9j
					; DATA XREF: .data:_methods_asn1o
		mov	[esp+arg_0], eax
		jmp	_BIO_gets
_asn1_bio_gets	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 220h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_ctrl	proc near		; DATA XREF: .data:000004D4o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	esi, [edi+20h]
		test	esi, esi
		jnz	short loc_232
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_232:				; CODE XREF: _asn1_bio_ctrl+Bj
		push	ebx
		mov	ebx, [esp+0Ch+arg_4]
		lea	eax, [ebx-0Bh]	; switch 144 cases
		cmp	eax, 8Fh ; '�'
		ja	$LN19_0		; jumptable 0000024C default case
		movzx	eax, ds:$LN22[eax]
		jmp	ds:$LN27[eax*4]	; switch jump
; ---------------------------------------------------------------------------

$LN5:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	ecx, [esp+0Ch+arg_C] ; jumptable 0000024C case 149
		pop	ebx
		pop	edi
		mov	eax, [ecx]
		mov	[esi+20h], eax
		mov	eax, [ecx+4]
		mov	[esi+24h], eax
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN6:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	ecx, [esp+0Ch+arg_C] ; jumptable 0000024C case 150
		mov	eax, [esi+20h]
		pop	ebx
		pop	edi
		mov	[ecx], eax
		mov	eax, [esi+24h]
		mov	[ecx+4], eax
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN7:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	ecx, [esp+0Ch+arg_C] ; jumptable 0000024C case 151
		pop	ebx
		pop	edi
		mov	eax, [ecx]
		mov	[esi+28h], eax
		mov	eax, [ecx+4]
		mov	[esi+2Ch], eax
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN8:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	ecx, [esp+0Ch+arg_C] ; jumptable 0000024C case 152
		mov	eax, [esi+28h]
		pop	ebx
		pop	edi
		mov	[ecx], eax
		mov	eax, [esi+2Ch]
		mov	[ecx+4], eax
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN9:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	eax, [esp+0Ch+arg_C] ; jumptable 0000024C case 153
		pop	ebx
		mov	[esi+3Ch], eax
		mov	eax, 1
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN10_0:				; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		mov	eax, [esp+0Ch+arg_C] ; jumptable 0000024C case 154
		mov	ecx, [esi+3Ch]
		pop	ebx
		pop	edi
		mov	[eax], ecx
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN11:					; CODE XREF: _asn1_bio_ctrl+2Cj
					; DATA XREF: .text$mn:$LN27o
		cmp	dword ptr [edi+24h], 0 ; jumptable 0000024C case 11
		jz	short loc_335
		cmp	dword ptr [esi], 2
		jnz	short loc_2F5
		push	6
		push	5
		push	dword ptr [esi+28h]
		push	esi
		push	edi
		call	_asn1_bio_setup_ex
		add	esp, 14h
		test	eax, eax
		jz	short loc_335

loc_2F5:				; CODE XREF: _asn1_bio_ctrl+BEj
		cmp	dword ptr [esi], 5
		jnz	short loc_30D
		push	6
		push	dword ptr [esi+2Ch]
		push	esi
		push	edi
		call	_asn1_bio_flush_ex
		add	esp, 10h
		test	eax, eax
		jle	short loc_354

loc_30D:				; CODE XREF: _asn1_bio_ctrl+D8j
		cmp	dword ptr [esi], 6
		jnz	short loc_32A
		push	[esp+0Ch+arg_C]
		push	[esp+10h+arg_8]
		push	ebx
		push	dword ptr [edi+24h]
		call	_BIO_ctrl
		add	esp, 10h
		pop	ebx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_32A:				; CODE XREF: _asn1_bio_ctrl+F0j
		push	0Fh
		push	edi
		call	_BIO_clear_flags
		add	esp, 8

loc_335:				; CODE XREF: _asn1_bio_ctrl+B9j
					; _asn1_bio_ctrl+D3j ...
		pop	ebx
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

$LN19_0:				; CODE XREF: _asn1_bio_ctrl+1Fj
					; _asn1_bio_ctrl+2Cj
					; DATA XREF: ...
		mov	eax, [edi+24h]	; jumptable 0000024C default case
		test	eax, eax
		jz	short loc_335
		push	[esp+0Ch+arg_C]
		push	[esp+10h+arg_8]
		push	ebx
		push	eax
		call	_BIO_ctrl
		add	esp, 10h

loc_354:				; CODE XREF: _asn1_bio_ctrl+EBj
		pop	ebx
		pop	edi
		pop	esi
		retn
_asn1_bio_ctrl	endp

; ---------------------------------------------------------------------------
$LN27		dd offset $LN11, offset	$LN5, offset $LN6, offset $LN7
					; DATA XREF: _asn1_bio_ctrl+2Cr
		dd offset $LN8,	offset $LN9, offset $LN10_0, offset $LN19_0 ; jump table for switch statement
$LN22		db	0,     7,     7,     7 ; DATA XREF: _asn1_bio_ctrl+25r
		db	7,     7,     7,     7 ; indirect table	for switch statement
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     1,     2
		db	3,     4,     5,     6
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 408h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_new	proc near		; DATA XREF: .data:000004D8o

arg_0		= dword	ptr  4

		push	esi
		push	95h ; '�'
		push	offset ??_C@_0BJ@JFDEBOM@?4?2crypto?2asn1?2bio_asn1?4c?$AA@ ; ".\\crypto\\asn1\\bio_asn1.c"
		push	40h ; '@'
		call	_CRYPTO_malloc
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_43B
		push	14h
		push	esi
		call	_asn1_bio_init
		add	esp, 8
		test	eax, eax
		jnz	short loc_43F
		push	esi
		call	_CRYPTO_free
		add	esp, 4

loc_43B:				; CODE XREF: _asn1_bio_new+19j
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_43F:				; CODE XREF: _asn1_bio_new+28j
		mov	eax, [esp+4+arg_0]
		mov	[eax+20h], esi
		mov	dword ptr [eax+0Ch], 1
		mov	dword ptr [eax+14h], 0
		mov	eax, 1
		pop	esi
		retn
_asn1_bio_new	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 45Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_free	proc near		; DATA XREF: .data:000004DCo

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		mov	edi, [esi+20h]
		test	edi, edi
		jnz	short loc_46E
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_46E:				; CODE XREF: _asn1_bio_free+Bj
		mov	eax, [edi+4]
		test	eax, eax
		jz	short loc_47E
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_47E:				; CODE XREF: _asn1_bio_free+17j
		push	edi
		call	_CRYPTO_free
		add	esp, 4
		mov	dword ptr [esi+0Ch], 0
		mov	dword ptr [esi+20h], 0
		mov	eax, 1
		mov	dword ptr [esi+14h], 0
		pop	edi
		pop	esi
		retn
_asn1_bio_free	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4A4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_callback_ctrl	proc near	; DATA XREF: .data:000004E0o

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	eax, [eax+24h]
		test	eax, eax
		jnz	short loc_4B0
		retn
; ---------------------------------------------------------------------------

loc_4B0:				; CODE XREF: _asn1_bio_callback_ctrl+9j
		mov	[esp+arg_0], eax
		jmp	_BIO_callback_ctrl
_asn1_bio_callback_ctrl	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use32
		assume cs:_data
		;org 4BCh
_methods_asn1	dd offset loc_214+2	; DATA XREF: _BIO_f_asn1o
		dd offset ??_C@_04GABBLIPF@asn1?$AA@ ; "asn1"
		dd offset _asn1_bio_write
		dd offset _asn1_bio_read
		dd offset _asn1_bio_puts
		dd offset _asn1_bio_gets
		dd offset _asn1_bio_ctrl
		dd offset _asn1_bio_new
		dd offset _asn1_bio_free
		dd offset _asn1_bio_callback_ctrl
_data		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4E4h
; COMDAT (pick any)
		public ??_C@_04GABBLIPF@asn1?$AA@
; `string'
??_C@_04GABBLIPF@asn1?$AA@ db 'asn1',0  ; DATA XREF: .data:000004C0o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4ECh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_asn1_get_prefix
_BIO_asn1_get_prefix proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	96h ; '�'
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 10h
		test	eax, eax
		jle	short loc_524
		mov	edx, [esp+8+arg_4]
		mov	ecx, [esp+8+var_8]
		mov	[edx], ecx
		mov	edx, [esp+8+arg_8]
		mov	ecx, [esp+8+var_4]
		mov	[edx], ecx

loc_524:				; CODE XREF: _BIO_asn1_get_prefix+23j
		add	esp, 8
		retn
_BIO_asn1_get_prefix endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 528h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_asn1_get_suffix
_BIO_asn1_get_suffix proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	98h ; '�'
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 10h
		test	eax, eax
		jle	short loc_560
		mov	edx, [esp+8+arg_4]
		mov	ecx, [esp+8+var_8]
		mov	[edx], ecx
		mov	edx, [esp+8+arg_8]
		mov	ecx, [esp+8+var_4]
		mov	[edx], ecx

loc_560:				; CODE XREF: _BIO_asn1_get_suffix+23j
		add	esp, 8
		retn
_BIO_asn1_get_suffix endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 564h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_asn1_set_prefix
_BIO_asn1_set_prefix proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		mov	eax, [esp+8+arg_4]
		mov	[esp+8+var_8], eax
		mov	eax, [esp+8+arg_8]
		mov	[esp+8+var_4], eax
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	95h ; '�'
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 18h
		retn
_BIO_asn1_set_prefix endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 598h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_asn1_set_suffix
_BIO_asn1_set_suffix proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		mov	eax, [esp+8+arg_4]
		mov	[esp+8+var_8], eax
		mov	eax, [esp+8+arg_8]
		mov	[esp+8+var_4], eax
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	97h ; '�'
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 18h
		retn
_BIO_asn1_set_suffix endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5CCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_f_asn1
_BIO_f_asn1	proc near
		mov	eax, offset _methods_asn1
		retn
_BIO_f_asn1	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5D4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_flush_ex proc	near		; CODE XREF: _asn1_bio_write+8Bp
					; _asn1_bio_ctrl+E1p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		push	esi
		push	edi
		mov	edi, [esp+8+arg_4]
		mov	eax, [edi+34h]
		lea	esi, [edi+34h]
		test	eax, eax
		jg	short loc_5EC
		pop	edi
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_5EC:				; CODE XREF: _asn1_bio_flush_ex+Ej
		push	ebx
		push	ebp
		push	eax
		mov	eax, [edi+30h]
		lea	ebp, [edi+30h]
		add	eax, [edi+38h]
		push	eax
		mov	eax, [esp+18h+arg_0]
		push	dword ptr [eax+24h]
		call	_BIO_write
		mov	ebx, eax
		add	esp, 0Ch
		test	ebx, ebx
		jle	short loc_665
		nop	word ptr [eax+eax+00h]

loc_614:				; CODE XREF: _asn1_bio_flush_ex+66j
		sub	[esi], ebx
		mov	eax, [esi]
		test	eax, eax
		jle	short loc_641
		add	[edi+38h], ebx
		push	eax
		mov	eax, [ebp+0]
		add	eax, [edi+38h]
		push	eax
		mov	eax, [esp+18h+arg_0]
		push	dword ptr [eax+24h]
		call	_BIO_write
		mov	ebx, eax
		add	esp, 0Ch
		test	ebx, ebx
		jg	short loc_614
		pop	ebp
		pop	ebx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_641:				; CODE XREF: _asn1_bio_flush_ex+46j
		mov	ecx, [esp+10h+arg_8]
		test	ecx, ecx
		jz	short loc_658
		lea	eax, [edi+3Ch]
		push	eax
		push	esi
		push	ebp
		push	[esp+1Ch+arg_0]
		call	ecx
		add	esp, 10h

loc_658:				; CODE XREF: _asn1_bio_flush_ex+73j
		mov	eax, [esp+10h+arg_C]
		mov	[edi], eax
		mov	dword ptr [edi+38h], 0

loc_665:				; CODE XREF: _asn1_bio_flush_ex+38j
		pop	ebp
		mov	eax, ebx
		pop	ebx
		pop	edi
		pop	esi
		retn
_asn1_bio_flush_ex endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 66Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_get_ex proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 8
		call	__chkstk
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	[esp+10h+arg_4]
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 10h
		test	eax, eax
		jle	short loc_6A3
		mov	edx, [esp+8+arg_8]
		mov	ecx, [esp+8+var_8]
		mov	[edx], ecx
		mov	edx, [esp+8+arg_C]
		mov	ecx, [esp+8+var_4]
		mov	[edx], ecx

loc_6A3:				; CODE XREF: _asn1_bio_get_ex+22j
		add	esp, 8
		retn
_asn1_bio_get_ex endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_init	proc near		; CODE XREF: _asn1_bio_new+1Ep

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_4]
		push	0A4h ; '�'
		push	offset ??_C@_0BJ@JFDEBOM@?4?2crypto?2asn1?2bio_asn1?4c?$AA@ ; ".\\crypto\\asn1\\bio_asn1.c"
		push	esi
		call	_CRYPTO_malloc
		mov	ecx, [esp+10h+arg_0]
		add	esp, 0Ch
		mov	[ecx+4], eax
		test	eax, eax
		jnz	short loc_6CD
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6CD:				; CODE XREF: _asn1_bio_init+21j
		mov	[ecx+8], esi
		mov	eax, 1
		mov	dword ptr [ecx+0Ch], 0
		mov	dword ptr [ecx+10h], 0
		mov	dword ptr [ecx+14h], 0
		mov	dword ptr [ecx+18h], 0
		mov	dword ptr [ecx+1Ch], 4
		mov	dword ptr [ecx+30h], 0
		mov	dword ptr [ecx+38h], 0
		mov	dword ptr [ecx+34h], 0
		mov	dword ptr [ecx], 0
		pop	esi
		retn
_asn1_bio_init	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 718h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_set_ex proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 8
		call	__chkstk
		mov	eax, [esp+8+arg_8]
		mov	[esp+8+var_8], eax
		mov	eax, [esp+8+arg_C]
		mov	[esp+8+var_4], eax
		lea	eax, [esp+8+var_8]
		push	eax
		push	0
		push	[esp+10h+arg_4]
		push	[esp+14h+arg_0]
		call	_BIO_ctrl
		add	esp, 18h
		retn
_asn1_bio_set_ex endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 748h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_asn1_bio_setup_ex proc	near		; CODE XREF: _asn1_bio_write+58p
					; _asn1_bio_ctrl+C9p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	ecx, [esp+arg_8]
		push	esi
		mov	esi, [esp+4+arg_4]
		test	ecx, ecx
		jz	short loc_780
		lea	eax, [esi+3Ch]
		push	eax
		lea	eax, [esi+34h]
		push	eax
		lea	eax, [esi+30h]
		push	eax
		push	[esp+10h+arg_0]
		call	ecx
		add	esp, 10h
		test	eax, eax
		jnz	short loc_780
		push	0Fh
		push	[esp+8+arg_0]
		call	_BIO_clear_flags
		add	esp, 8
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_780:				; CODE XREF: _asn1_bio_setup_ex+Bj
					; _asn1_bio_setup_ex+24j
		cmp	dword ptr [esi+34h], 0
		mov	eax, [esp+4+arg_10]
		cmovg	eax, [esp+4+arg_C]
		mov	[esi], eax
		mov	eax, 1
		pop	esi
		retn
_asn1_bio_setup_ex endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 798h
; COMDAT (pick any)
		public ??_C@_0BJ@JFDEBOM@?4?2crypto?2asn1?2bio_asn1?4c?$AA@
; `string'
??_C@_0BJ@JFDEBOM@?4?2crypto?2asn1?2bio_asn1?4c?$AA@ db	'.\crypto\asn1\bio_asn1.c',0
					; DATA XREF: _asn1_bio_write+DFo
					; _asn1_bio_new+6o ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7B4h
; COMDAT (pick any)
		public ??_C@_0BM@FIMHHPDL@ctx?9?$DObuflen?5?$DM?$DN?5ctx?9?$DObufsize?$AA@
; `string'
??_C@_0BM@FIMHHPDL@ctx?9?$DObuflen?5?$DM?$DN?5ctx?9?$DObufsize?$AA@ db 'ctx->buflen <= ctx->bufsize',0
					; DATA XREF: _asn1_bio_write+D5o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _asn1_bio_new+Dp
					; _asn1_bio_init+10p
		extrn _CRYPTO_free:near	; CODE XREF: _asn1_bio_new+2Bp
					; _asn1_bio_free+1Ap ...
		extrn _OpenSSLDie:near	; CODE XREF: _asn1_bio_write+E4p
		extrn _BIO_clear_flags:near ; CODE XREF: _asn1_bio_write+72p
					; _asn1_bio_write+9Cp ...
		extrn _BIO_read:near	; CODE XREF: _asn1_bio_read+10j
		extrn _BIO_gets:near	; CODE XREF: _asn1_bio_gets+10j
		extrn _BIO_write:near	; CODE XREF: _asn1_bio_write+124p
					; _asn1_bio_write+167p	...
		extrn _BIO_ctrl:near	; CODE XREF: _asn1_bio_ctrl+FEp
					; _asn1_bio_ctrl+12Cp ...
		extrn _BIO_callback_ctrl:near ;	CODE XREF: _asn1_bio_callback_ctrl+10j
		extrn _BIO_copy_next_retry:near	; CODE XREF: _asn1_bio_write+A2p
		extrn _ASN1_put_object:near ; CODE XREF: _asn1_bio_write+101p
		extrn _ASN1_object_size:near ; CODE XREF: _asn1_bio_write+C3p
		extrn __chkstk:near	; CODE XREF: _asn1_bio_write+5p
					; _BIO_asn1_get_prefix+5p ...


		end