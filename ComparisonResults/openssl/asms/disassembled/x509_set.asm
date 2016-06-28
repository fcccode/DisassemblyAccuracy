;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	5768844B6BB3DC7D7A989172739BE5C0
; Input	CRC32 :	1304C472

; File Name   :	C:\compspace\Diff\openssl\obj\x509_set.obj
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


		public _X509_set_issuer_name
_X509_set_issuer_name proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short loc_1A
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_1A
		add	eax, 0Ch
		mov	[esp+arg_0], eax
		jmp	_X509_NAME_set
; ---------------------------------------------------------------------------

loc_1A:					; CODE XREF: _X509_set_issuer_name+6j
					; _X509_set_issuer_name+Cj
		xor	eax, eax
		retn
_X509_set_issuer_name endp

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


		public _X509_set_notAfter
_X509_set_notAfter proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		test	edi, edi
		jz	short loc_6F
		mov	eax, [edi]
		mov	esi, [eax+10h]
		test	esi, esi
		jz	short loc_6F
		mov	esi, [esi+4]
		mov	eax, [esp+8+arg_4]
		cmp	esi, eax
		jz	short loc_65
		push	eax
		call	_ASN1_STRING_dup
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_65
		mov	ecx, [edi]
		mov	ecx, [ecx+10h]
		push	dword ptr [ecx+4]
		call	_ASN1_STRING_free
		mov	eax, [edi]
		add	esp, 4
		mov	eax, [eax+10h]
		mov	[eax+4], esi

loc_65:					; CODE XREF: _X509_set_notAfter+1Cj
					; _X509_set_notAfter+2Bj
		xor	eax, eax
		test	esi, esi
		pop	edi
		setnz	al
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6F:					; CODE XREF: _X509_set_notAfter+8j
					; _X509_set_notAfter+11j
		pop	edi
		xor	eax, eax
		pop	esi
		retn
_X509_set_notAfter endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 74h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_set_notBefore
_X509_set_notBefore proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		test	edi, edi
		jz	short loc_C0
		mov	eax, [edi]
		mov	esi, [eax+10h]
		test	esi, esi
		jz	short loc_C0
		mov	esi, [esi]
		mov	eax, [esp+8+arg_4]
		cmp	esi, eax
		jz	short loc_B6
		push	eax
		call	_ASN1_STRING_dup
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_B6
		mov	ecx, [edi]
		mov	ecx, [ecx+10h]
		push	dword ptr [ecx]
		call	_ASN1_STRING_free
		mov	eax, [edi]
		add	esp, 4
		mov	eax, [eax+10h]
		mov	[eax], esi

loc_B6:					; CODE XREF: _X509_set_notBefore+1Bj
					; _X509_set_notBefore+2Aj
		xor	eax, eax
		test	esi, esi
		pop	edi
		setnz	al
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_C0:					; CODE XREF: _X509_set_notBefore+8j
					; _X509_set_notBefore+11j
		pop	edi
		xor	eax, eax
		pop	esi
		retn
_X509_set_notBefore endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0C8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_set_pubkey
_X509_set_pubkey proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short loc_E2
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_E2
		add	eax, 18h
		mov	[esp+arg_0], eax
		jmp	_X509_PUBKEY_set
; ---------------------------------------------------------------------------

loc_E2:					; CODE XREF: _X509_set_pubkey+6j
					; _X509_set_pubkey+Cj
		xor	eax, eax
		retn
_X509_set_pubkey endp

; ---------------------------------------------------------------------------
		align 4
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


		public _X509_set_serialNumber
_X509_set_serialNumber proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	edi
		mov	edi, [esp+4+arg_0]
		test	edi, edi
		jnz	short loc_F5
		xor	eax, eax
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_F5:					; CODE XREF: _X509_set_serialNumber+7j
		mov	eax, [edi]
		push	esi
		mov	esi, [eax+4]
		mov	eax, [esp+8+arg_4]
		cmp	esi, eax
		jz	short loc_124
		push	eax
		call	_ASN1_STRING_dup
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_124
		mov	ecx, [edi]
		push	dword ptr [ecx+4]
		call	_ASN1_STRING_free
		mov	ecx, [edi]
		add	esp, 4
		mov	[ecx+4], esi

loc_124:				; CODE XREF: _X509_set_serialNumber+19j
					; _X509_set_serialNumber+28j
		xor	eax, eax
		test	esi, esi
		pop	esi
		setnz	al
		pop	edi
		retn
_X509_set_serialNumber endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 130h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_set_subject_name
_X509_set_subject_name proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jz	short loc_14A
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_14A
		add	eax, 14h
		mov	[esp+arg_0], eax
		jmp	_X509_NAME_set
; ---------------------------------------------------------------------------

loc_14A:				; CODE XREF: _X509_set_subject_name+6j
					; _X509_set_subject_name+Cj
		xor	eax, eax
		retn
_X509_set_subject_name endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 150h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_set_version
_X509_set_version proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_15D

loc_159:				; CODE XREF: _X509_set_version+44j
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_15D:				; CODE XREF: _X509_set_version+7j
		cmp	[esp+4+arg_4], 0
		mov	eax, [esi]
		jnz	short loc_17F
		push	dword ptr [eax]
		call	_ASN1_STRING_free
		mov	eax, [esi]
		add	esp, 4
		mov	dword ptr [eax], 0
		mov	eax, 1
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_17F:				; CODE XREF: _X509_set_version+14j
		cmp	dword ptr [eax], 0
		jnz	short loc_196
		push	2
		call	_ASN1_STRING_type_new
		mov	ecx, [esi]
		add	esp, 4
		mov	[ecx], eax
		test	eax, eax
		jz	short loc_159

loc_196:				; CODE XREF: _X509_set_version+32j
		mov	eax, [esi]
		push	[esp+4+arg_4]
		push	dword ptr [eax]
		call	_ASN1_INTEGER_set
		add	esp, 8
		pop	esi
		retn
_X509_set_version endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ASN1_STRING_free:near ; CODE XREF: _X509_set_notAfter+35p
					; _X509_set_notBefore+33p ...
		extrn _ASN1_STRING_dup:near ; CODE XREF: _X509_set_notAfter+1Fp
					; _X509_set_notBefore+1Ep ...
		extrn _ASN1_STRING_type_new:near ; CODE	XREF: _X509_set_version+36p
		extrn _ASN1_INTEGER_set:near ; CODE XREF: _X509_set_version+4Ep
		extrn _X509_PUBKEY_set:near ; CODE XREF: _X509_set_pubkey+15j
		extrn _X509_NAME_set:near ; CODE XREF: _X509_set_issuer_name+15j
					; _X509_set_subject_name+15j


		end
