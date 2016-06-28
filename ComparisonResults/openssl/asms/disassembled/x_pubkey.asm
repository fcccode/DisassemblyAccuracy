;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	780E07FB737587FC3988933CA1F92103
; Input	CRC32 :	B9D09FF1

; File Name   :	C:\compspace\Diff\openssl\obj\x_pubkey.obj
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


_pubkey_cb	proc near		; DATA XREF: .rdata:00000030o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		cmp	[esp+arg_0], 3
		jnz	short loc_18
		mov	eax, [esp+arg_4]
		mov	eax, [eax]
		push	dword ptr [eax+8]
		call	_EVP_PKEY_free
		add	esp, 4

loc_18:					; CODE XREF: _pubkey_cb+5j
		mov	eax, 1
		retn
_pubkey_cb	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 20h
_X509_PUBKEY_aux dd 4 dup(0)		; DATA XREF: .rdata:00000070o
		dd offset _pubkey_cb
		align 8
_X509_PUBKEY_seq_tt dd 3 dup(0)		; DATA XREF: .rdata:00000068o
		dd offset ??_C@_05CJCEEADM@algor?$AA@ ;	"algor"
		dd offset _X509_ALGOR_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_0L@PJCANJEE@public_key?$AA@ ; "public_key"
		dd offset _ASN1_BIT_STRING_it
; `X509_PUBKEY_it'::`2'::local_it
?local_it@?1??X509_PUBKEY_it@@9@9 dd 1,	10h ; DATA XREF: _X509_PUBKEY_freeo
					; _X509_PUBKEY_ito ...
		dd offset _X509_PUBKEY_seq_tt
		dd 2
		dd offset _X509_PUBKEY_aux
		dd 0Ch
		dd offset ??_C@_0M@INJPOKDH@X509_PUBKEY?$AA@ ; "X509_PUBKEY"
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7Ch
; COMDAT (pick any)
		public ??_C@_05CJCEEADM@algor?$AA@
; `string'
??_C@_05CJCEEADM@algor?$AA@ db 'algor',0 ; DATA XREF: .rdata:00000044o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 84h
; COMDAT (pick any)
		public ??_C@_0L@PJCANJEE@public_key?$AA@
; `string'
??_C@_0L@PJCANJEE@public_key?$AA@ db 'public_key',0 ; DATA XREF: .rdata:00000058o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 90h
; COMDAT (pick any)
		public ??_C@_0M@INJPOKDH@X509_PUBKEY?$AA@
; `string'
??_C@_0M@INJPOKDH@X509_PUBKEY?$AA@ db 'X509_PUBKEY',0 ; DATA XREF: .rdata:00000078o
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 9Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_free
_X509_PUBKEY_free proc near		; CODE XREF: _X509_PUBKEY_set+50p

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_X509_PUBKEY_free endp

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
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_get
_X509_PUBKEY_get proc near		; CODE XREF: _d2i_DSA_PUBKEY+2Cp
					; _d2i_EC_PUBKEY+2Cp ...

arg_0		= dword	ptr  4

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		test	edi, edi
		jz	loc_1FF
		mov	eax, [edi+8]
		test	eax, eax
		jz	short loc_E5
		push	87h ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	0Ah
		add	eax, 8
		push	1
		push	eax
		call	_CRYPTO_add_lock
		mov	eax, [edi+8]
		add	esp, 14h
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_E5:					; CODE XREF: _X509_PUBKEY_get+13j
		cmp	dword ptr [edi+4], 0
		jz	loc_1FF
		call	_EVP_PKEY_new
		mov	esi, eax
		test	esi, esi
		jnz	short loc_117
		push	8Fh ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	41h ; 'A'
		push	77h ; 'w'
		push	0Bh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_117:				; CODE XREF: _X509_PUBKEY_get+48j
		mov	eax, [edi]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		push	eax
		push	esi
		call	_EVP_PKEY_set_type
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_13F
		push	94h ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	6Fh ; 'o'
		jmp	loc_1EA
; ---------------------------------------------------------------------------

loc_13F:				; CODE XREF: _X509_PUBKEY_get+7Cj
		mov	eax, [esi+0Ch]
		mov	eax, [eax+14h]
		test	eax, eax
		jz	loc_1DE
		push	edi
		push	esi
		call	eax
		add	esp, 8
		test	eax, eax
		jnz	short loc_169
		push	9Ah ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	7Dh ; '}'
		jmp	loc_1EA
; ---------------------------------------------------------------------------

loc_169:				; CODE XREF: _X509_PUBKEY_get+A6j
		push	0A3h ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	0Ah
		push	9
		call	_CRYPTO_lock
		add	esp, 10h
		cmp	dword ptr [edi+8], 0
		jz	short loc_1A6
		push	0A5h ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	0Ah
		push	0Ah
		call	_CRYPTO_lock
		push	esi
		call	_EVP_PKEY_free
		mov	esi, [edi+8]
		add	esp, 14h
		jmp	short loc_1BF
; ---------------------------------------------------------------------------

loc_1A6:				; CODE XREF: _X509_PUBKEY_get+D3j
		push	0AAh ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	0Ah
		push	0Ah
		mov	[edi+8], esi
		call	_CRYPTO_lock
		add	esp, 10h

loc_1BF:				; CODE XREF: _X509_PUBKEY_get+F4j
		push	0ACh ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	0Ah
		lea	eax, [esi+8]
		push	1
		push	eax
		call	_CRYPTO_add_lock
		add	esp, 14h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1DE:				; CODE XREF: _X509_PUBKEY_get+97j
		push	9Eh ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	7Ch ; '|'

loc_1EA:				; CODE XREF: _X509_PUBKEY_get+8Aj
					; _X509_PUBKEY_get+B4j
		push	77h ; 'w'
		push	0Bh
		call	_ERR_put_error
		add	esp, 14h

$error$16:
		push	esi
		call	_EVP_PKEY_free
		add	esp, 4

loc_1FF:				; CODE XREF: _X509_PUBKEY_get+8j
					; _X509_PUBKEY_get+39j
		pop	edi
		xor	eax, eax
		pop	esi
		retn
_X509_PUBKEY_get endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 204h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_get0_param
_X509_PUBKEY_get0_param	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	ecx, [esp+arg_0]
		mov	edx, [esp+arg_10]
		test	ecx, ecx
		jz	short loc_216
		mov	eax, [edx]
		mov	eax, [eax]
		mov	[ecx], eax

loc_216:				; CODE XREF: _X509_PUBKEY_get0_param+Aj
		mov	ecx, [esp+arg_4]
		test	ecx, ecx
		jz	short loc_231
		mov	eax, [edx+4]
		mov	eax, [eax+8]
		mov	[ecx], eax
		mov	eax, [edx+4]
		mov	ecx, [eax]
		mov	eax, [esp+arg_8]
		mov	[eax], ecx

loc_231:				; CODE XREF: _X509_PUBKEY_get0_param+18j
		mov	ecx, [esp+arg_C]
		test	ecx, ecx
		jz	short loc_23D
		mov	eax, [edx]
		mov	[ecx], eax

loc_23D:				; CODE XREF: _X509_PUBKEY_get0_param+33j
		mov	eax, 1
		retn
_X509_PUBKEY_get0_param	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 244h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_it
_X509_PUBKEY_it	proc near
		mov	eax, offset ?local_it@?1??X509_PUBKEY_it@@9@9 ;	`X509_PUBKEY_it'::`2'::local_it
		retn
_X509_PUBKEY_it	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 24Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_new
_X509_PUBKEY_new proc near
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_X509_PUBKEY_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 25Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_set
_X509_PUBKEY_set proc near		; CODE XREF: _i2d_PUBKEY+23p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	edi
		mov	edi, [esp+4+arg_0]
		test	edi, edi
		jnz	short loc_269
		xor	eax, eax
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_269:				; CODE XREF: _X509_PUBKEY_set+7j
		push	esi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		call	_ASN1_item_new
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_2EC
		mov	ecx, [esp+8+arg_4]
		mov	eax, [ecx+0Ch]
		test	eax, eax
		jz	short loc_2C9
		mov	eax, [eax+18h]
		test	eax, eax
		jz	short loc_2BE
		push	ecx
		push	esi
		call	eax
		add	esp, 8
		test	eax, eax
		jnz	short loc_2A5
		push	67h ; 'g'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	7Eh ; '~'
		jmp	short loc_2D2
; ---------------------------------------------------------------------------

loc_2A5:				; CODE XREF: _X509_PUBKEY_set+3Cj
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_2B4
		push	eax
		call	_X509_PUBKEY_free
		add	esp, 4

loc_2B4:				; CODE XREF: _X509_PUBKEY_set+4Dj
		mov	[edi], esi
		mov	eax, 1
		pop	esi
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_2BE:				; CODE XREF: _X509_PUBKEY_set+31j
		push	6Bh ; 'k'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	7Ch ; '|'
		jmp	short loc_2D2
; ---------------------------------------------------------------------------

loc_2C9:				; CODE XREF: _X509_PUBKEY_set+2Aj
		push	6Fh ; 'o'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	6Fh ; 'o'

loc_2D2:				; CODE XREF: _X509_PUBKEY_set+47j
					; _X509_PUBKEY_set+6Bj
		push	78h ; 'x'
		push	0Bh
		call	_ERR_put_error
		add	esp, 14h

$error$23:				; `X509_PUBKEY_it'::`2'::local_it
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9
		push	esi
		call	_ASN1_item_free
		add	esp, 8

loc_2EC:				; CODE XREF: _X509_PUBKEY_set+1Fj
		pop	esi
		xor	eax, eax
		pop	edi
		retn
_X509_PUBKEY_set endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2F4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _X509_PUBKEY_set0_param
_X509_PUBKEY_set0_param	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		push	esi
		push	[esp+4+arg_C]
		mov	esi, [esp+8+arg_0]
		push	[esp+8+arg_8]
		push	[esp+0Ch+arg_4]
		push	dword ptr [esi]
		call	_X509_ALGOR_set0
		add	esp, 10h
		test	eax, eax
		jnz	short loc_315
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_315:				; CODE XREF: _X509_PUBKEY_set0_param+1Dj
		push	edi
		mov	edi, [esp+8+arg_10]
		test	edi, edi
		jz	short loc_34E
		mov	eax, [esi+4]
		mov	eax, [eax+8]
		test	eax, eax
		jz	short loc_331
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_331:				; CODE XREF: _X509_PUBKEY_set0_param+32j
		mov	eax, [esi+4]
		mov	[eax+8], edi
		mov	ecx, [esi+4]
		mov	eax, [esp+8+arg_14]
		mov	[ecx], eax
		mov	eax, [esi+4]
		and	dword ptr [eax+0Ch], 0FFFFFFF0h
		mov	eax, [esi+4]
		or	dword ptr [eax+0Ch], 8

loc_34E:				; CODE XREF: _X509_PUBKEY_set0_param+28j
		pop	edi
		mov	eax, 1
		pop	esi
		retn
_X509_PUBKEY_set0_param	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 358h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_DSA_PUBKEY
_d2i_DSA_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	esi
		push	edi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		mov	eax, [ebx]
		push	[esp+10h+arg_8]
		mov	[esp+14h+arg_4], eax
		lea	eax, [esp+14h+arg_4]
		push	eax
		push	0
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jz	short loc_3DB
		push	edi
		call	_X509_PUBKEY_get
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	edi
		mov	esi, eax
		call	_ASN1_item_free
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_3DB
		push	ebp
		mov	ebp, [esp+10h+arg_4]
		push	esi
		call	_EVP_PKEY_get1_DSA
		push	esi
		mov	edi, eax
		call	_EVP_PKEY_free
		add	esp, 8
		test	edi, edi
		jnz	short loc_3BE
		pop	ebp
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_3BE:				; CODE XREF: _d2i_DSA_PUBKEY+5Dj
		mov	esi, [esp+10h+arg_0]
		mov	[ebx], ebp
		test	esi, esi
		jz	short loc_3D4
		push	dword ptr [esi]
		call	_DSA_free
		add	esp, 4
		mov	[esi], edi

loc_3D4:				; CODE XREF: _d2i_DSA_PUBKEY+6Ej
		pop	ebp
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_3DB:				; CODE XREF: _d2i_DSA_PUBKEY+29j
					; _d2i_DSA_PUBKEY+43j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
_d2i_DSA_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3E4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_EC_PUBKEY
_d2i_EC_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	esi
		push	edi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		mov	eax, [ebx]
		push	[esp+10h+arg_8]
		mov	[esp+14h+arg_4], eax
		lea	eax, [esp+14h+arg_4]
		push	eax
		push	0
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jz	short loc_467
		push	edi
		call	_X509_PUBKEY_get
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	edi
		mov	esi, eax
		call	_ASN1_item_free
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_467
		push	ebp
		mov	ebp, [esp+10h+arg_4]
		push	esi
		call	_EVP_PKEY_get1_EC_KEY
		push	esi
		mov	edi, eax
		call	_EVP_PKEY_free
		add	esp, 8
		test	edi, edi
		jnz	short loc_44A
		pop	ebp
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_44A:				; CODE XREF: _d2i_EC_PUBKEY+5Dj
		mov	esi, [esp+10h+arg_0]
		mov	[ebx], ebp
		test	esi, esi
		jz	short loc_460
		push	dword ptr [esi]
		call	_EC_KEY_free
		add	esp, 4
		mov	[esi], edi

loc_460:				; CODE XREF: _d2i_EC_PUBKEY+6Ej
		pop	ebp
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_467:				; CODE XREF: _d2i_EC_PUBKEY+29j
					; _d2i_EC_PUBKEY+43j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
_d2i_EC_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 470h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PUBKEY
_d2i_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	edi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+0Ch+arg_8]
		mov	eax, [ebx]
		mov	[esp+10h+arg_4], eax
		lea	eax, [esp+10h+arg_4]
		push	eax
		push	0
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jnz	short loc_49D
		pop	edi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_49D:				; CODE XREF: _d2i_PUBKEY+28j
		push	esi
		push	edi
		call	_X509_PUBKEY_get
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	edi
		mov	esi, eax
		call	_ASN1_item_free
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_4BE
		pop	esi
		pop	edi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4BE:				; CODE XREF: _d2i_PUBKEY+46j
		mov	edi, [esp+0Ch+arg_0]
		mov	eax, [esp+0Ch+arg_4]
		mov	[ebx], eax
		test	edi, edi
		jz	short loc_4D8
		push	dword ptr [edi]
		call	_EVP_PKEY_free
		add	esp, 4
		mov	[edi], esi

loc_4D8:				; CODE XREF: _d2i_PUBKEY+5Aj
		mov	eax, esi
		pop	esi
		pop	edi
		pop	ebx
		retn
_d2i_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4E0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_RSA_PUBKEY
_d2i_RSA_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	esi
		push	edi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		mov	eax, [ebx]
		push	[esp+10h+arg_8]
		mov	[esp+14h+arg_4], eax
		lea	eax, [esp+14h+arg_4]
		push	eax
		push	0
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jz	short loc_563
		push	edi
		call	_X509_PUBKEY_get
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	edi
		mov	esi, eax
		call	_ASN1_item_free
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_563
		push	ebp
		mov	ebp, [esp+10h+arg_4]
		push	esi
		call	_EVP_PKEY_get1_RSA
		push	esi
		mov	edi, eax
		call	_EVP_PKEY_free
		add	esp, 8
		test	edi, edi
		jnz	short loc_546
		pop	ebp
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_546:				; CODE XREF: _d2i_RSA_PUBKEY+5Dj
		mov	esi, [esp+10h+arg_0]
		mov	[ebx], ebp
		test	esi, esi
		jz	short loc_55C
		push	dword ptr [esi]
		call	_RSA_free
		add	esp, 4
		mov	[esi], edi

loc_55C:				; CODE XREF: _d2i_RSA_PUBKEY+6Ej
		pop	ebp
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_563:				; CODE XREF: _d2i_RSA_PUBKEY+29j
					; _d2i_RSA_PUBKEY+43j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn
_d2i_RSA_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 56Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_X509_PUBKEY
_d2i_X509_PUBKEY proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_X509_PUBKEY endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 588h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_DSA_PUBKEY
_i2d_DSA_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_595
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_595:				; CODE XREF: _i2d_DSA_PUBKEY+7j
		push	edi
		call	_EVP_PKEY_new
		mov	edi, eax
		test	edi, edi
		jnz	short loc_5C1
		push	126h
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	41h ; 'A'
		push	0A1h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_5C1:				; CODE XREF: _i2d_DSA_PUBKEY+17j
		push	esi
		push	edi
		call	_EVP_PKEY_set1_DSA
		push	[esp+10h+arg_4]
		push	edi
		call	_i2d_PUBKEY
		push	edi
		mov	esi, eax
		call	_EVP_PKEY_free
		add	esp, 14h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
_i2d_DSA_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5E4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_EC_PUBKEY
_i2d_EC_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_5F1
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_5F1:				; CODE XREF: _i2d_EC_PUBKEY+7j
		push	edi
		call	_EVP_PKEY_new
		mov	edi, eax
		test	edi, edi
		jnz	short loc_61D
		push	14Dh
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	41h ; 'A'
		push	0B5h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_61D:				; CODE XREF: _i2d_EC_PUBKEY+17j
		push	esi
		push	edi
		call	_EVP_PKEY_set1_EC_KEY
		push	[esp+10h+arg_4]
		push	edi
		call	_i2d_PUBKEY
		push	edi
		mov	esi, eax
		call	_EVP_PKEY_free
		add	esp, 14h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
_i2d_EC_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 640h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PUBKEY
_i2d_PUBKEY	proc near		; CODE XREF: _i2d_DSA_PUBKEY+45p
					; _i2d_EC_PUBKEY+45p ...

var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 4
		call	__chkstk
		mov	eax, [esp+4+arg_0]
		mov	[esp+4+var_4], 0
		test	eax, eax
		jnz	short loc_65D

loc_659:				; CODE XREF: _i2d_PUBKEY+2Dj
		xor	eax, eax
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_65D:				; CODE XREF: _i2d_PUBKEY+17j
		push	eax
		lea	eax, [esp+8+var_4]
		push	eax
		call	_X509_PUBKEY_set
		add	esp, 8
		test	eax, eax
		jz	short loc_659
		push	esi
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+0Ch+arg_4]
		push	[esp+10h+var_4]
		call	_ASN1_item_i2d
		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+18h+var_4]
		mov	esi, eax
		call	_ASN1_item_free
		add	esp, 14h
		mov	eax, esi
		pop	esi
		pop	ecx
		retn
_i2d_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 69Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_RSA_PUBKEY
_i2d_RSA_PUBKEY	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_6A9
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6A9:				; CODE XREF: _i2d_RSA_PUBKEY+7j
		push	edi
		call	_EVP_PKEY_new
		mov	edi, eax
		test	edi, edi
		jnz	short loc_6D5
		push	0FEh ; '�'
		push	offset ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ ; ".\\crypto\\asn1\\x_pubkey.c"
		push	41h ; 'A'
		push	0A5h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6D5:				; CODE XREF: _i2d_RSA_PUBKEY+17j
		push	esi
		push	edi
		call	_EVP_PKEY_set1_RSA
		push	[esp+10h+arg_4]
		push	edi
		call	_i2d_PUBKEY
		push	edi
		mov	esi, eax
		call	_EVP_PKEY_free
		add	esp, 14h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
_i2d_RSA_PUBKEY	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6F8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_X509_PUBKEY
_i2d_X509_PUBKEY proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??X509_PUBKEY_it@@9@9 ; `X509_PUBKEY_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_X509_PUBKEY endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 710h
; COMDAT (pick any)
		public ??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@
; `string'
??_C@_0BJ@MMDFAHEK@?4?2crypto?2asn1?2x_pubkey?4c?$AA@ db '.\crypto\asn1\x_pubkey.c',0
					; DATA XREF: _X509_PUBKEY_get+1Ao
					; _X509_PUBKEY_get+4Fo	...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ASN1_BIT_STRING_it:near ; DATA XREF: .rdata:0000005Co
		extrn _X509_ALGOR_it:near ; DATA XREF: .rdata:00000048o
		extrn _CRYPTO_lock:near	; CODE XREF: _X509_PUBKEY_get+C7p
					; _X509_PUBKEY_get+E3p	...
		extrn _CRYPTO_add_lock:near ; CODE XREF: _X509_PUBKEY_get+27p
					; _X509_PUBKEY_get+121p
		extrn _CRYPTO_free:near	; CODE XREF: _X509_PUBKEY_set0_param+35p
		extrn _ERR_put_error:near ; CODE XREF: _X509_PUBKEY_get+5Ap
					; _X509_PUBKEY_get+13Ep ...
		extrn _ASN1_item_new:near ; CODE XREF: _X509_PUBKEY_new+5p
					; _X509_PUBKEY_set+13p
		extrn _ASN1_item_free:near ; CODE XREF:	_X509_PUBKEY_free+9p
					; _X509_PUBKEY_set+88p	...
		extrn _ASN1_item_d2i:near ; CODE XREF: _d2i_DSA_PUBKEY+1Dp
					; _d2i_EC_PUBKEY+1Dp ...
		extrn _ASN1_item_i2d:near ; CODE XREF: _i2d_PUBKEY+3Dp
					; _i2d_X509_PUBKEY+Dp
		extrn _OBJ_obj2nid:near	; CODE XREF: _X509_PUBKEY_get+6Bp
		extrn _EVP_PKEY_set_type:near ;	CODE XREF: _X509_PUBKEY_get+72p
		extrn _EVP_PKEY_set1_RSA:near ;	CODE XREF: _i2d_RSA_PUBKEY+3Bp
		extrn _EVP_PKEY_get1_RSA:near ;	CODE XREF: _d2i_RSA_PUBKEY+4Bp
		extrn _EVP_PKEY_set1_DSA:near ;	CODE XREF: _i2d_DSA_PUBKEY+3Bp
		extrn _EVP_PKEY_get1_DSA:near ;	CODE XREF: _d2i_DSA_PUBKEY+4Bp
		extrn _EVP_PKEY_set1_EC_KEY:near ; CODE	XREF: _i2d_EC_PUBKEY+3Bp
		extrn _EVP_PKEY_get1_EC_KEY:near ; CODE	XREF: _d2i_EC_PUBKEY+4Bp
		extrn _EVP_PKEY_new:near ; CODE	XREF: _X509_PUBKEY_get+3Fp
					; _i2d_DSA_PUBKEY+Ep ...
		extrn _EVP_PKEY_free:near ; CODE XREF: _pubkey_cb+10p
					; _X509_PUBKEY_get+E9p	...
		extrn _EC_KEY_free:near	; CODE XREF: _d2i_EC_PUBKEY+72p
		extrn _RSA_free:near	; CODE XREF: _d2i_RSA_PUBKEY+72p
		extrn _DSA_free:near	; CODE XREF: _d2i_DSA_PUBKEY+72p
		extrn _X509_ALGOR_set0:near ; CODE XREF: _X509_PUBKEY_set0_param+13p
		extrn __chkstk:near	; CODE XREF: _i2d_PUBKEY+5p


		end
