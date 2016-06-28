;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	2B89DC541BC5EBD0CA8233AC789668D2
; Input	CRC32 :	3719AC2E

; File Name   :	C:\compspace\Diff\openssl\obj\t_pkey.obj
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


		public _ASN1_bn_print
_ASN1_bn_print	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	esi
		mov	esi, [esp+4+arg_8]
		test	esi, esi
		jnz	short loc_E
		lea	eax, [esi+1]
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_E:					; CODE XREF: _ASN1_bn_print+7j
		cmp	dword ptr [esi+0Ch], 0
		mov	eax, offset ??_C@_00CNPNBAHC@?$AA@ ; `string'
		push	ebx
		push	edi
		mov	edi, [esp+0Ch+arg_0]
		mov	ebx, offset ??_C@_01JOAMLHOP@?9?$AA@ ; `string'
		push	80h ; '�'
		push	[esp+10h+arg_10]
		cmovz	ebx, eax
		push	edi
		call	_BIO_indent
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_3F
		pop	edi
		pop	ebx
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_3F:					; CODE XREF: _ASN1_bn_print+39j
		cmp	dword ptr [esi+4], 0
		jnz	short loc_64
		push	[esp+0Ch+arg_4]
		push	offset ??_C@_05NJJIPCOC@?$CFs?50?6?$AA@	; "%s 0\n"
		push	edi
		call	_BIO_printf
		add	esp, 0Ch
		xor	ecx, ecx
		test	eax, eax
		setnle	cl
		pop	edi
		pop	ebx
		mov	eax, ecx
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_64:					; CODE XREF: _ASN1_bn_print+43j
		push	ebp
		push	esi
		call	_BN_num_bits
		add	eax, 7
		add	esp, 4
		cdq
		and	edx, 7
		add	eax, edx
		sar	eax, 3
		cmp	eax, 4
		jg	short loc_A8
		mov	eax, [esi]
		mov	eax, [eax]
		push	eax
		push	ebx
		push	eax
		push	ebx
		push	[esp+20h+arg_4]
		push	offset ??_C@_0BE@KHLFKPFC@?$CFs?5?$CFs?$CFlu?5?$CI?$CFs0x?$CFlx?$CJ?6?$AA@ ; "%s %s%lu (%s0x%lx)\n"
		push	edi
		call	_BIO_printf
		add	esp, 1Ch
		test	eax, eax
		jg	loc_1AC
		pop	ebp
		pop	edi
		pop	ebx
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_A8:					; CODE XREF: _ASN1_bn_print+7Dj
		mov	ebp, [esp+10h+arg_C]
		mov	ecx, offset ??_C@_00CNPNBAHC@?$AA@ ; `string'
		mov	eax, offset ??_C@_0M@IBLDKCHK@?5?$CINegative?$CJ?$AA@ ;	" (Negative)"
		mov	byte ptr [ebp+0], 0
		cmp	byte ptr [ebx],	2Dh ; '-'
		cmovnz	eax, ecx
		push	eax
		push	[esp+14h+arg_4]
		push	offset ??_C@_04HDOCAJNK@?$CFs?$CFs?$AA@	; "%s%s"
		push	edi
		call	_BIO_printf
		add	esp, 10h
		test	eax, eax
		jle	loc_1A5
		lea	eax, [ebp+1]
		push	eax
		push	esi
		mov	[esp+18h+arg_8], eax
		call	_BN_bn2bin
		mov	ebx, eax
		add	esp, 8
		mov	eax, [esp+10h+arg_8]
		test	byte ptr [eax],	80h
		jz	short loc_FA
		inc	ebx
		jmp	short loc_FC
; ---------------------------------------------------------------------------

loc_FA:					; CODE XREF: _ASN1_bn_print+F5j
		mov	ebp, eax

loc_FC:					; CODE XREF: _ASN1_bn_print+F8j
		xor	esi, esi
		test	ebx, ebx
		jle	loc_191
		mov	eax, 1
		sub	eax, ebp
		mov	[esp+10h+arg_8], eax

loc_111:				; CODE XREF: _ASN1_bn_print+18Fj
		mov	eax, 88888889h
		imul	esi
		add	edx, esi
		sar	edx, 3
		mov	eax, edx
		shr	eax, 1Fh
		add	eax, edx
		mov	ecx, eax
		shl	ecx, 4
		sub	ecx, eax
		mov	eax, esi
		sub	eax, ecx
		jnz	short loc_15D
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; `string'
		push	edi
		call	_BIO_puts
		add	esp, 8
		test	eax, eax
		jle	short loc_1A5
		mov	eax, [esp+10h+arg_10]
		push	80h ; '�'
		add	eax, 4
		push	eax
		push	edi
		call	_BIO_indent
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_1A5

loc_15D:				; CODE XREF: _ASN1_bn_print+12Fj
		mov	eax, [esp+10h+arg_8]
		lea	edx, [esi+ebp]
		add	eax, edx
		mov	ecx, offset ??_C@_00CNPNBAHC@?$AA@ ; `string'
		cmp	eax, ebx
		mov	eax, offset ??_C@_01JLIPDDHJ@?3?$AA@ ; `string'
		cmovnz	ecx, eax
		movzx	eax, byte ptr [edx]
		push	ecx
		push	eax
		push	offset ??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@ ; "%02x%s"
		push	edi
		call	_BIO_printf
		add	esp, 10h
		test	eax, eax
		jle	short loc_1A5
		inc	esi
		cmp	esi, ebx
		jl	short loc_111

loc_191:				; CODE XREF: _ASN1_bn_print+100j
		push	1
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; `string'
		push	edi
		call	_BIO_write
		add	esp, 0Ch
		test	eax, eax
		jg	short loc_1AC

loc_1A5:				; CODE XREF: _ASN1_bn_print+D5j
					; _ASN1_bn_print+141j ...
		pop	ebp
		pop	edi
		pop	ebx
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1AC:				; CODE XREF: _ASN1_bn_print+9Bj
					; _ASN1_bn_print+1A3j
		pop	ebp
		pop	edi
		pop	ebx
		mov	eax, 1
		pop	esi
		retn
_ASN1_bn_print	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1B8h
; COMDAT (pick any)
		public ??_C@_01JOAMLHOP@?9?$AA@
; `string'
??_C@_01JOAMLHOP@?9?$AA@ db 2Dh, 0	; DATA XREF: _ASN1_bn_print+1Do
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	byte public 'DATA' use32
		assume cs:_rdata
		;org 1BCh
; COMDAT (pick any)
		public ??_C@_00CNPNBAHC@?$AA@
; `string'
??_C@_00CNPNBAHC@?$AA@ db 0		; DATA XREF: _ASN1_bn_print+12o
					; _ASN1_bn_print+ACo ...
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1C0h
; COMDAT (pick any)
		public ??_C@_05NJJIPCOC@?$CFs?50?6?$AA@
; `string'
??_C@_05NJJIPCOC@?$CFs?50?6?$AA@ db '%s 0',0Ah,0 ; DATA XREF: _ASN1_bn_print+49o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1C8h
; COMDAT (pick any)
		public ??_C@_0BE@KHLFKPFC@?$CFs?5?$CFs?$CFlu?5?$CI?$CFs0x?$CFlx?$CJ?6?$AA@
; `string'
??_C@_0BE@KHLFKPFC@?$CFs?5?$CFs?$CFlu?5?$CI?$CFs0x?$CFlx?$CJ?6?$AA@ db '%s %s%lu (%s0x%lx)',0Ah,0
					; DATA XREF: _ASN1_bn_print+8Bo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1DCh
; COMDAT (pick any)
		public ??_C@_0M@IBLDKCHK@?5?$CINegative?$CJ?$AA@
; `string'
??_C@_0M@IBLDKCHK@?5?$CINegative?$CJ?$AA@ db ' (Negative)',0 ; DATA XREF: _ASN1_bn_print+B1o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1E8h
; COMDAT (pick any)
		public ??_C@_04HDOCAJNK@?$CFs?$CFs?$AA@
; `string'
??_C@_04HDOCAJNK@?$CFs?$CFs?$AA@ db '%s%s',0 ; DATA XREF: _ASN1_bn_print+C5o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1F0h
; COMDAT (pick any)
		public ??_C@_01EEMJAFIK@?6?$AA@
; `string'
??_C@_01EEMJAFIK@?6?$AA@ db 0Ah, 0	; DATA XREF: _ASN1_bn_print+131o
					; _ASN1_bn_print+193o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1F4h
; COMDAT (pick any)
		public ??_C@_01JLIPDDHJ@?3?$AA@
; `string'
??_C@_01JLIPDDHJ@?3?$AA@ db 3Ah, 0	; DATA XREF: _ASN1_bn_print+16Do
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1F8h
; COMDAT (pick any)
		public ??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@
; `string'
??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@ db '%02x%s',0 ; DATA XREF: _ASN1_bn_print+17Ao
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _BIO_write:near	; CODE XREF: _ASN1_bn_print+199p
		extrn _BIO_puts:near	; CODE XREF: _ASN1_bn_print+137p
		extrn _BIO_indent:near	; CODE XREF: _ASN1_bn_print+2Fp
					; _ASN1_bn_print+151p
		extrn _BIO_printf:near	; CODE XREF: _ASN1_bn_print+4Fp
					; _ASN1_bn_print+91p ...
		extrn _BN_num_bits:near	; CODE XREF: _ASN1_bn_print+66p
		extrn _BN_bn2bin:near	; CODE XREF: _ASN1_bn_print+E4p


		end