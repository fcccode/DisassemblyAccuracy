;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	01DD0281E322DBE4CB0A556173F679C4
; Input	CRC32 :	346DFE1B

; File Name   :	C:\compspace\Diff\openssl\obj\x509cset.obj
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
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_CRL_set_issuer_name
_X509_CRL_set_issuer_name proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short loc_1A
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_1A
		add	eax, 8
		mov	[esp+arg_0], eax
		jmp	_X509_NAME_set
; ---------------------------------------------------------------------------

loc_1A:					; CODE XREF: _X509_CRL_set_issuer_name+6j
					; _X509_CRL_set_issuer_name+Cj
		xor	eax, eax
		retn
_X509_CRL_set_issuer_name endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 20h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_CRL_set_lastUpdate
_X509_CRL_set_lastUpdate proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	edi
		mov	edi, [esp+4+arg_0]
		test	edi, edi
		jnz	short loc_2D
		xor	eax, eax
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_2D:					; CODE XREF: _X509_CRL_set_lastUpdate+7j
		mov	eax, [edi]
		push	esi
		mov	esi, [eax+0Ch]
		mov	eax, [esp+8+arg_4]
		cmp	esi, eax
		jz	short loc_5C
		push	eax
		call	_ASN1_STRING_dup
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_5C
		mov	ecx, [edi]
		push	dword ptr [ecx+0Ch]
		call	_ASN1_STRING_free
		mov	ecx, [edi]
		add	esp, 4
		mov	[ecx+0Ch], esi

loc_5C:					; CODE XREF: _X509_CRL_set_lastUpdate+19j
					; _X509_CRL_set_lastUpdate+28j
		xor	eax, eax
		test	esi, esi
		pop	esi
		setnz	al
		pop	edi
		retn
_X509_CRL_set_lastUpdate endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 68h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_CRL_set_nextUpdate
_X509_CRL_set_nextUpdate proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	edi
		mov	edi, [esp+4+arg_0]
		test	edi, edi
		jnz	short loc_75
		xor	eax, eax
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_75:					; CODE XREF: _X509_CRL_set_nextUpdate+7j
		mov	eax, [edi]
		push	esi
		mov	esi, [eax+10h]
		mov	eax, [esp+8+arg_4]
		cmp	esi, eax
		jz	short loc_A4
		push	eax
		call	_ASN1_STRING_dup
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_A4
		mov	ecx, [edi]
		push	dword ptr [ecx+10h]
		call	_ASN1_STRING_free
		mov	ecx, [edi]
		add	esp, 4
		mov	[ecx+10h], esi

loc_A4:					; CODE XREF: _X509_CRL_set_nextUpdate+19j
					; _X509_CRL_set_nextUpdate+28j
		xor	eax, eax
		test	esi, esi
		pop	esi
		setnz	al
		pop	edi
		retn
_X509_CRL_set_nextUpdate endp

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
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_CRL_set_version
_X509_CRL_set_version proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_BD

loc_B9:					; CODE XREF: _X509_CRL_set_version+24j
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_BD:					; CODE XREF: _X509_CRL_set_version+7j
		mov	eax, [esi]
		cmp	dword ptr [eax], 0
		jnz	short loc_D6
		push	2
		call	_ASN1_STRING_type_new
		mov	ecx, [esi]
		add	esp, 4
		mov	[ecx], eax
		test	eax, eax
		jz	short loc_B9

loc_D6:					; CODE XREF: _X509_CRL_set_version+12j
		mov	eax, [esi]
		push	[esp+4+arg_4]
		push	dword ptr [eax]
		call	_ASN1_INTEGER_set
		add	esp, 8
		pop	esi
		retn
_X509_CRL_set_version endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0E8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_CRL_sort
_X509_CRL_sort	proc near

arg_0		= dword	ptr  4

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	eax, [edi]
		push	dword ptr [eax+14h]
		call	_sk_sort
		mov	eax, [edi]
		xor	esi, esi
		push	dword ptr [eax+14h]
		call	_sk_num
		add	esp, 8
		test	eax, eax
		jle	short loc_12B

loc_10B:				; CODE XREF: _X509_CRL_sort+41j
		mov	eax, [edi]
		push	esi
		push	dword ptr [eax+14h]
		call	_sk_value
		mov	[eax+14h], esi
		inc	esi
		mov	eax, [edi]
		push	dword ptr [eax+14h]
		call	_sk_num
		add	esp, 0Ch
		cmp	esi, eax
		jl	short loc_10B

loc_12B:				; CODE XREF: _X509_CRL_sort+21j
		mov	eax, [edi]
		pop	edi
		pop	esi
		mov	dword ptr [eax+24h], 1
		mov	eax, 1
		retn
_X509_CRL_sort	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 13Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_REVOKED_set_revocationDate
_X509_REVOKED_set_revocationDate proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_149
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_149:				; CODE XREF: _X509_REVOKED_set_revocationDate+7j
		mov	eax, [esp+4+arg_4]
		push	edi
		mov	edi, [esi+4]
		cmp	edi, eax
		jz	short loc_172
		push	eax
		call	_ASN1_STRING_dup
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jz	short loc_172
		push	dword ptr [esi+4]
		call	_ASN1_STRING_free
		add	esp, 4
		mov	[esi+4], edi

loc_172:				; CODE XREF: _X509_REVOKED_set_revocationDate+17j
					; _X509_REVOKED_set_revocationDate+26j
		xor	eax, eax
		test	edi, edi
		pop	edi
		setnz	al
		pop	esi
		retn
_X509_REVOKED_set_revocationDate endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 17Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_REVOKED_set_serialNumber
_X509_REVOKED_set_serialNumber proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_189
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_189:				; CODE XREF: _X509_REVOKED_set_serialNumber+7j
		mov	eax, [esp+4+arg_4]
		push	edi
		mov	edi, [esi]
		cmp	edi, eax
		jz	short loc_1AF
		push	eax
		call	_ASN1_STRING_dup
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jz	short loc_1AF
		push	dword ptr [esi]
		call	_ASN1_STRING_free
		add	esp, 4
		mov	[esi], edi

loc_1AF:				; CODE XREF: _X509_REVOKED_set_serialNumber+16j
					; _X509_REVOKED_set_serialNumber+25j
		xor	eax, eax
		test	edi, edi
		pop	edi
		setnz	al
		pop	esi
		retn
_X509_REVOKED_set_serialNumber endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _sk_num:near	; CODE XREF: _X509_CRL_sort+17p
					; _X509_CRL_sort+37p
		extrn _sk_value:near	; CODE XREF: _X509_CRL_sort+29p
		extrn _sk_sort:near	; CODE XREF: _X509_CRL_sort+Bp
		extrn _ASN1_STRING_free:near ; CODE XREF: _X509_CRL_set_lastUpdate+2Fp
					; _X509_CRL_set_nextUpdate+2Fp	...
		extrn _ASN1_STRING_dup:near ; CODE XREF: _X509_CRL_set_lastUpdate+1Cp
					; _X509_CRL_set_nextUpdate+1Cp	...
		extrn _ASN1_STRING_type_new:near ; CODE	XREF: _X509_CRL_set_version+16p
		extrn _ASN1_INTEGER_set:near ; CODE XREF: _X509_CRL_set_version+2Ep
		extrn _X509_NAME_set:near ; CODE XREF: _X509_CRL_set_issuer_name+15j


		end
