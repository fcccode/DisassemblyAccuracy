;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	FA078A175D7BCEDC0F46089AE913A23D
; Input	CRC32 :	021CE453

; File Name   :	C:\compspace\Diff\openssl\obj\n_pkey.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
_NETSCAPE_ENCRYPTED_PKEY_aux dd	0	; DATA XREF: .rdata:00000050o
		dd 4, 4	dup(0)
_NETSCAPE_ENCRYPTED_PKEY_seq_tt	dd 3 dup(0) ; DATA XREF: .rdata:00000048o
		dd offset ??_C@_02EHCHIAMF@os?$AA@ ; `string'
		dd offset _ASN1_OCTET_STRING_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_06LLHJLAC@enckey?$AA@ ;	"enckey"
		dd offset _X509_SIG_it
; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 dd 1, 10h
					; DATA XREF: _NETSCAPE_ENCRYPTED_PKEY_freeo
					; _NETSCAPE_ENCRYPTED_PKEY_ito	...
		dd offset _NETSCAPE_ENCRYPTED_PKEY_seq_tt
		dd 2
		dd offset _NETSCAPE_ENCRYPTED_PKEY_aux
		dd 8
		dd offset ??_C@_0BI@HFDFOKJL@NETSCAPE_ENCRYPTED_PKEY?$AA@ ; "NETSCAPE_ENCRYPTED_PKEY"
_NETSCAPE_PKEY_seq_tt dd 3 dup(0)	; DATA XREF: .rdata:000000A0o
		dd offset ??_C@_07CPCPJPKL@version?$AA@	; "version"
		dd offset _LONG_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_05CJCEEADM@algor?$AA@ ;	"algor"
		dd offset _X509_ALGOR_it
		dd 2 dup(0)
		dd 8
		dd offset ??_C@_0M@BCLPOPCL@private_key?$AA@ ; "private_key"
		dd offset _ASN1_OCTET_STRING_it
; `NETSCAPE_PKEY_it'::`2'::local_it
?local_it@?1??NETSCAPE_PKEY_it@@9@9 dd 1, 10h ;	DATA XREF: _NETSCAPE_PKEY_freeo
					; _NETSCAPE_PKEY_ito ...
		dd offset _NETSCAPE_PKEY_seq_tt
		dd 3, 0
		dd 0Ch
		dd offset ??_C@_0O@LBGCNNLL@NETSCAPE_PKEY?$AA@ ; "NETSCAPE_PKEY"
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0B4h
; COMDAT (pick any)
		public ??_C@_02EHCHIAMF@os?$AA@
; `string'
??_C@_02EHCHIAMF@os?$AA@ db 6Fh, 73h, 0	; DATA XREF: .rdata:00000024o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0B8h
; COMDAT (pick any)
		public ??_C@_06LLHJLAC@enckey?$AA@
; `string'
??_C@_06LLHJLAC@enckey?$AA@ db 'enckey',0 ; DATA XREF: .rdata:00000038o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0C0h
; COMDAT (pick any)
		public ??_C@_0BI@HFDFOKJL@NETSCAPE_ENCRYPTED_PKEY?$AA@
; `string'
??_C@_0BI@HFDFOKJL@NETSCAPE_ENCRYPTED_PKEY?$AA@	db 'NETSCAPE_ENCRYPTED_PKEY',0
					; DATA XREF: .rdata:00000058o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D8h
; COMDAT (pick any)
		public ??_C@_07CPCPJPKL@version?$AA@
; `string'
??_C@_07CPCPJPKL@version?$AA@ db 'version',0 ; DATA XREF: .rdata:00000068o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0E0h
; COMDAT (pick any)
		public ??_C@_05CJCEEADM@algor?$AA@
; `string'
??_C@_05CJCEEADM@algor?$AA@ db 'algor',0 ; DATA XREF: .rdata:0000007Co
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0E8h
; COMDAT (pick any)
		public ??_C@_0M@BCLPOPCL@private_key?$AA@
; `string'
??_C@_0M@BCLPOPCL@private_key?$AA@ db 'private_key',0 ; DATA XREF: .rdata:00000090o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0F4h
; COMDAT (pick any)
		public ??_C@_0O@LBGCNNLL@NETSCAPE_PKEY?$AA@
; `string'
??_C@_0O@LBGCNNLL@NETSCAPE_PKEY?$AA@ db	'NETSCAPE_PKEY',0 ; DATA XREF: .rdata:000000B0o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 104h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_ENCRYPTED_PKEY_free
_NETSCAPE_ENCRYPTED_PKEY_free proc near	; CODE XREF: _i2d_RSA_NET+157p

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_NETSCAPE_ENCRYPTED_PKEY_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 118h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_ENCRYPTED_PKEY_it
_NETSCAPE_ENCRYPTED_PKEY_it proc near
		mov	eax, offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		retn
_NETSCAPE_ENCRYPTED_PKEY_it endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 120h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_ENCRYPTED_PKEY_new
_NETSCAPE_ENCRYPTED_PKEY_new proc near
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_NETSCAPE_ENCRYPTED_PKEY_new endp

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
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_PKEY_free
_NETSCAPE_PKEY_free proc near		; CODE XREF: _i2d_RSA_NET+151p

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_NETSCAPE_PKEY_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 144h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_PKEY_it
_NETSCAPE_PKEY_it proc near
		mov	eax, offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9	; `NETSCAPE_PKEY_it'::`2'::local_it
		retn
_NETSCAPE_PKEY_it endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 14Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_PKEY_new
_NETSCAPE_PKEY_new proc	near
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_NETSCAPE_PKEY_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 15Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_NETSCAPE_ENCRYPTED_PKEY
_d2i_NETSCAPE_ENCRYPTED_PKEY proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_NETSCAPE_ENCRYPTED_PKEY endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 178h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_NETSCAPE_PKEY
_d2i_NETSCAPE_PKEY proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_NETSCAPE_PKEY endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 194h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_Netscape_RSA
_d2i_Netscape_RSA proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		push	0
		push	[esp+4+arg_C]
		push	[esp+8+arg_8]
		push	[esp+0Ch+arg_4]
		push	[esp+10h+arg_0]
		call	_d2i_RSA_NET
		add	esp, 14h
		retn
_d2i_Netscape_RSA endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1B0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_RSA_NET
_d2i_RSA_NET	proc near		; CODE XREF: _d2i_Netscape_RSA+12p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	ebx
		push	esi
		push	edi
		mov	edi, [esp+0Ch+arg_4]
		xor	ebx, ebx
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	[esp+10h+arg_8]
		mov	eax, [edi]
		mov	[esp+14h+arg_4], eax
		lea	eax, [esp+14h+arg_4]
		push	eax
		push	ebx
		call	_ASN1_item_d2i
		mov	esi, eax
		add	esp, 10h
		test	esi, esi
		jnz	short loc_1FD
		push	0FBh ; '�'
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	6Fh ; 'o'
		push	0C8h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_1FD:				; CODE XREF: _d2i_RSA_NET+2Aj
		mov	eax, [esi]
		cmp	dword ptr [eax], 0Bh
		jnz	loc_298
		push	0Bh		; MaxCount
		push	dword ptr [eax+8] ; Str2
		push	offset ??_C@_0M@JBKNFMIE@private?9key?$AA@ ; "private-key"
		call	dword ptr ds:__imp__strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_298
		mov	eax, [esi+4]
		mov	eax, [eax]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 5
		jz	short loc_253
		push	107h
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	0A6h ; '�'
		push	0C8h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		jmp	short $err$23
; ---------------------------------------------------------------------------

loc_253:				; CODE XREF: _d2i_RSA_NET+81j
		mov	eax, [esp+0Ch+arg_C]
		mov	ecx, offset _EVP_read_pw_string
		push	[esp+0Ch+arg_10]
		test	eax, eax
		cmovz	eax, ecx
		push	eax
		mov	eax, [esi+4]
		push	dword ptr [eax+4]
		push	[esp+18h+arg_0]
		call	_d2i_RSA_NET_2
		mov	ebx, eax
		add	esp, 10h
		test	ebx, ebx
		jz	short $err$23
		mov	ecx, [esp+0Ch+arg_4]
		mov	[edi], ecx

$err$23:				; CODE XREF: _d2i_RSA_NET+A1j
					; _d2i_RSA_NET+CCj
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	esi
		call	_ASN1_item_free
		add	esp, 8
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_298:				; CODE XREF: _d2i_RSA_NET+52j
					; _d2i_RSA_NET+6Dj
		push	102h
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	92h ; '�'
		push	0C8h ; '�'
		push	0Dh
		call	_ERR_put_error
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	esi
		call	_ASN1_item_free
		add	esp, 1Ch
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
_d2i_RSA_NET	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2C8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_d2i_RSA_NET_2	proc near		; CODE XREF: _d2i_RSA_NET+C0p

var_1E0		= dword	ptr -1E0h
var_1DC		= dword	ptr -1DCh
var_1D8		= dword	ptr -1D8h
var_1D4		= dword	ptr -1D4h
var_1D0		= byte ptr -1D0h
var_144		= byte ptr -144h
var_104		= byte ptr -104h
var_F4		= qword	ptr -0F4h
var_EC		= word ptr -0ECh
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 1E0h
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+1E0h+var_4], eax
		mov	eax, [esp+1E0h+arg_0]
		push	ebx
		mov	ebx, [esp+1E4h+arg_4]
		push	ebp
		push	esi
		mov	esi, [esp+1ECh+arg_8]
		xor	ebp, ebp
		mov	[esp+1ECh+var_1D4], eax
		lea	eax, [esp+1ECh+var_1D0]
		push	edi
		push	eax
		xor	edi, edi
		call	_EVP_CIPHER_CTX_init
		push	ebp
		push	offset ??_C@_0BM@BIIKJHJC@Enter?5Private?5Key?5password?3?$AA@ ; "Enter	Private	Key password:"
		lea	eax, [esp+1FCh+var_104]
		push	100h
		push	eax
		call	esi
		add	esp, 14h
		mov	[esp+1F0h+var_1E0], eax
		test	eax, eax
		jz	short loc_33C
		push	126h
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	67h ; 'g'
		jmp	loc_4D1
; ---------------------------------------------------------------------------

loc_33C:				; CODE XREF: _d2i_RSA_NET_2+61j
		lea	ecx, [esp+1F0h+var_104]
		lea	edx, [ecx+1]
		xchg	ax, ax

loc_348:				; CODE XREF: _d2i_RSA_NET_2+85j
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_348
		sub	ecx, edx
		mov	[esp+1F0h+var_1E0], ecx
		cmp	[esp+1F0h+arg_C], edi
		jz	short loc_3AD
		push	0
		call	_EVP_md5
		push	eax
		push	0
		lea	eax, [esp+1FCh+var_104]
		push	eax
		push	[esp+200h+var_1E0]
		push	eax
		call	_EVP_Digest
		add	esp, 18h
		test	eax, eax
		jz	$err$23_0
		movq	xmm0, ds:??_C@_0L@FMFEGNMA@SGCKEYSALT?$AA@ ; `string'
		mov	ecx, 1Ah
		mov	ax, ds:word_988
		movq	[esp+1F0h+var_F4], xmm0
		mov	[esp+1F0h+var_EC], ax
		mov	[esp+1F0h+var_1E0], ecx

loc_3AD:				; CODE XREF: _d2i_RSA_NET_2+94j
		push	0
		lea	eax, [esp+1F4h+var_144]
		push	eax
		push	1
		push	ecx
		lea	eax, [esp+200h+var_104]
		push	eax
		push	0
		call	_EVP_md5
		push	eax
		call	_EVP_rc4
		push	eax
		call	_EVP_BytesToKey
		add	esp, 20h
		test	eax, eax
		jz	$err$23_0
		lea	eax, [esp+1F0h+var_104]
		push	100h
		push	eax
		call	_OPENSSL_cleanse
		add	esp, 8
		lea	eax, [esp+1F0h+var_144]
		push	0
		push	eax
		push	0
		call	_EVP_rc4
		push	eax
		lea	eax, [esp+200h+var_1D0]
		push	eax
		call	_EVP_DecryptInit_ex
		add	esp, 14h
		test	eax, eax
		jz	$err$23_0
		push	dword ptr [ebx]
		mov	eax, [ebx+8]
		lea	ecx, [esp+1F4h+var_1E0]
		push	eax
		push	ecx
		push	eax
		lea	eax, [esp+200h+var_1D0]
		push	eax
		call	_EVP_DecryptUpdate
		add	esp, 14h
		test	eax, eax
		jz	$err$23_0
		lea	eax, [esp+1F0h+var_1D8]
		push	eax
		mov	eax, [ebx+8]
		add	eax, [esp+1F4h+var_1E0]
		push	eax
		lea	eax, [esp+1F8h+var_1D0]
		push	eax
		call	_EVP_DecryptFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	$err$23_0
		mov	ecx, [esp+1F0h+var_1E0]
		add	ecx, [esp+1F0h+var_1D8]
		mov	eax, [ebx+8]
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		mov	[esp+1F4h+var_1DC], eax
		lea	eax, [esp+1F4h+var_1DC]
		push	ecx
		push	eax
		push	0
		mov	[ebx], ecx
		call	_ASN1_item_d2i
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jnz	short loc_49C
		push	142h
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	9Eh ; '�'
		jmp	short loc_4D1
; ---------------------------------------------------------------------------

loc_49C:				; CODE XREF: _d2i_RSA_NET_2+1C1j
		mov	eax, [edi+8]
		mov	eax, [eax+8]
		mov	[esp+1F0h+var_1DC], eax
		mov	eax, [edi+8]
		push	dword ptr [eax]
		lea	eax, [esp+1F4h+var_1DC]
		push	eax
		push	[esp+1F8h+var_1D4]
		call	_d2i_RSAPrivateKey
		mov	ebp, eax
		add	esp, 0Ch
		test	ebp, ebp
		jnz	short $err$23_0
		push	148h
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	9Dh ; '�'

loc_4D1:				; CODE XREF: _d2i_RSA_NET_2+6Fj
					; _d2i_RSA_NET_2+1D2j
		push	0C9h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h

$err$23_0:				; CODE XREF: _d2i_RSA_NET_2+B7j
					; _d2i_RSA_NET_2+112j ...
		lea	eax, [esp+1F0h+var_1D0]
		push	eax
		call	_EVP_CIPHER_CTX_cleanup
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	edi
		call	_ASN1_item_free
		mov	ecx, [esp+1FCh+var_4]
		add	esp, 0Ch
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 1E0h
		retn
_d2i_RSA_NET_2	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 514h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_NETSCAPE_ENCRYPTED_PKEY
_i2d_NETSCAPE_ENCRYPTED_PKEY proc near	; CODE XREF: _i2d_RSA_NET+396p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_NETSCAPE_ENCRYPTED_PKEY endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 52Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_NETSCAPE_PKEY
_i2d_NETSCAPE_PKEY proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_NETSCAPE_PKEY endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 544h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_Netscape_RSA
_i2d_Netscape_RSA proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	0
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_i2d_RSA_NET
		add	esp, 10h
		retn
_i2d_Netscape_RSA endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 55Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_RSA_NET
_i2d_RSA_NET	proc near		; CODE XREF: _i2d_Netscape_RSA+Ep

var_1EC		= dword	ptr -1ECh
var_1E8		= dword	ptr -1E8h
var_1E4		= dword	ptr -1E4h
var_1E0		= dword	ptr -1E0h
var_1DC		= dword	ptr -1DCh
var_1D8		= dword	ptr -1D8h
var_1D4		= byte ptr -1D4h
var_1D0		= byte ptr -1D0h
var_144		= byte ptr -144h
var_104		= byte ptr -104h
var_F4		= qword	ptr -0F4h
var_EC		= word ptr -0ECh
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 1ECh
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+1ECh+var_4], eax
		mov	eax, [esp+1ECh+arg_4]
		push	ebp
		mov	ebp, [esp+1F0h+arg_8]
		push	esi
		mov	esi, [esp+1F4h+arg_0]
		mov	[esp+1F4h+var_1E0], eax
		lea	eax, [esp+1F4h+var_1D0]
		push	edi
		push	eax
		mov	[esp+1FCh+var_1DC], 0
		xor	edi, edi
		call	_EVP_CIPHER_CTX_init
		add	esp, 4
		test	esi, esi
		jnz	short loc_5C5
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebp
		mov	ecx, [esp+1ECh+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 1ECh
		retn
; ---------------------------------------------------------------------------

loc_5C5:				; CODE XREF: _i2d_RSA_NET+4Dj
		push	ebx
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		call	_ASN1_item_new
		mov	ebx, eax
		add	esp, 4
		test	ebx, ebx
		jz	$err$54
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		call	_ASN1_item_new
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jz	$err$54
		push	6
		mov	dword ptr [ebx], 0
		call	_OBJ_nid2obj
		mov	ecx, [ebx+4]
		add	esp, 4
		mov	[ecx], eax
		call	_ASN1_TYPE_new
		mov	ecx, eax
		mov	eax, [ebx+4]
		mov	[eax+4], ecx
		test	ecx, ecx
		jz	$err$54
		mov	eax, [ebx+4]
		push	0
		push	esi
		mov	eax, [eax+4]
		mov	dword ptr [eax], 5
		call	_i2d_RSAPrivateKey
		mov	ecx, eax
		mov	eax, [ebx+8]
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	0
		push	ebx
		mov	[esp+210h+var_1E4], ecx
		mov	[eax], ecx
		call	_ASN1_item_i2d
		mov	ecx, eax
		mov	eax, [edi+4]
		push	5
		mov	[esp+214h+var_1D8], ecx
		mov	eax, [eax+4]
		mov	[eax], ecx
		mov	eax, [edi]
		mov	dword ptr [eax], 0Bh
		call	_OBJ_nid2obj
		mov	ecx, [edi+4]
		add	esp, 18h
		mov	ecx, [ecx]
		mov	[ecx], eax
		call	_ASN1_TYPE_new
		mov	ecx, eax
		mov	eax, [edi+4]
		mov	eax, [eax]
		mov	[eax+4], ecx
		test	ecx, ecx
		jz	$err$54
		cmp	[esp+1FCh+var_1E0], 0
		mov	eax, [edi+4]
		mov	eax, [eax]
		mov	eax, [eax+4]
		mov	dword ptr [eax], 5
		jnz	short loc_6BF
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	0
		push	edi
		call	_ASN1_item_i2d
		push	ebx
		mov	esi, eax
		call	_NETSCAPE_PKEY_free
		push	edi
		call	_NETSCAPE_ENCRYPTED_PKEY_free
		mov	eax, esi
		jmp	loc_922
; ---------------------------------------------------------------------------

loc_6BF:				; CODE XREF: _i2d_RSA_NET+13Fj
		push	0ABh ; '�'
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	[esp+204h+var_1E4]
		call	_CRYPTO_malloc
		mov	ecx, eax
		add	esp, 0Ch
		mov	[esp+1FCh+var_1EC], ecx
		test	ecx, ecx
		jnz	short loc_6FF
		push	0ACh ; '�'

loc_6E4:				; CODE XREF: _i2d_RSA_NET+1D8j
					; _i2d_RSA_NET+1F4j
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	41h ; 'A'
		push	0A2h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		jmp	$err$54
; ---------------------------------------------------------------------------

loc_6FF:				; CODE XREF: _i2d_RSA_NET+181j
		mov	eax, [ebx+8]
		mov	[eax+8], ecx
		lea	eax, [esp+1FCh+var_1EC]
		push	eax
		push	esi
		call	_i2d_RSAPrivateKey
		mov	esi, [esp+204h+var_1D8]
		push	0B4h ; '�'
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	esi
		call	_CRYPTO_malloc
		add	esp, 14h
		mov	[esp+1FCh+var_1EC], eax
		test	eax, eax
		jnz	short loc_736
		push	0B5h ; '�'
		jmp	short loc_6E4
; ---------------------------------------------------------------------------

loc_736:				; CODE XREF: _i2d_RSA_NET+1D1j
		push	0FFFFFFFFh
		push	offset ??_C@_0M@JBKNFMIE@private?9key?$AA@ ; "private-key"
		push	dword ptr [edi]
		call	_ASN1_STRING_set
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_752
		push	0BAh ; '�'
		jmp	short loc_6E4
; ---------------------------------------------------------------------------

loc_752:				; CODE XREF: _i2d_RSA_NET+1EDj
		mov	eax, [edi+4]
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		mov	ecx, [eax+4]
		mov	eax, [esp+200h+var_1EC]
		mov	[ecx+8], eax
		lea	eax, [esp+200h+var_1EC]
		push	eax
		push	ebx
		call	_ASN1_item_i2d
		mov	eax, [ebx+8]
		push	[esp+208h+var_1E4]
		push	dword ptr [eax+8]
		call	_OPENSSL_cleanse
		push	1
		mov	eax, offset _EVP_read_pw_string
		test	ebp, ebp
		push	offset ??_C@_0BM@BIIKJHJC@Enter?5Private?5Key?5password?3?$AA@ ; "Enter	Private	Key password:"
		cmovz	ebp, eax
		lea	eax, [esp+218h+var_104]
		push	100h
		push	eax
		call	ebp
		add	esp, 24h
		mov	[esp+1FCh+var_1E8], eax
		test	eax, eax
		jz	short loc_7C9
		push	0C7h ; '�'
		push	offset ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ ; ".\\crypto\\asn1\\n_pkey.c"
		push	67h ; 'g'
		push	0A2h ; '�'
		push	0Dh
		call	_ERR_put_error
		add	esp, 14h
		jmp	$err$54
; ---------------------------------------------------------------------------

loc_7C9:				; CODE XREF: _i2d_RSA_NET+24Bj
		lea	ecx, [esp+1FCh+var_104]
		lea	edx, [ecx+1]

loc_7D3:				; CODE XREF: _i2d_RSA_NET+27Cj
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_7D3
		sub	ecx, edx
		cmp	[esp+1FCh+arg_C], 0
		mov	[esp+1FCh+var_1E8], ecx
		jz	short loc_839
		push	0
		call	_EVP_md5
		push	eax
		push	0
		lea	eax, [esp+208h+var_104]
		push	eax
		push	[esp+20Ch+var_1E8]
		push	eax
		call	_EVP_Digest
		add	esp, 18h
		test	eax, eax
		jz	$err$54
		movq	xmm0, ds:??_C@_0L@FMFEGNMA@SGCKEYSALT?$AA@ ; `string'
		mov	ecx, 1Ah
		mov	ax, ds:word_988
		movq	[esp+1FCh+var_F4], xmm0
		mov	[esp+1FCh+var_EC], ax
		mov	[esp+1FCh+var_1E8], ecx

loc_839:				; CODE XREF: _i2d_RSA_NET+28Cj
		push	0
		lea	eax, [esp+200h+var_144]
		push	eax
		push	1
		push	ecx
		lea	eax, [esp+20Ch+var_104]
		push	eax
		push	0
		call	_EVP_md5
		push	eax
		call	_EVP_rc4
		push	eax
		call	_EVP_BytesToKey
		add	esp, 20h
		test	eax, eax
		jz	$err$54
		lea	eax, [esp+1FCh+var_104]
		push	100h
		push	eax
		call	_OPENSSL_cleanse
		mov	eax, [edi+4]
		add	esp, 8
		mov	eax, [eax+4]
		push	0
		mov	eax, [eax+8]
		mov	[esp+200h+var_1EC], eax
		lea	eax, [esp+200h+var_144]
		push	eax
		push	0
		call	_EVP_rc4
		push	eax
		lea	eax, [esp+20Ch+var_1D0]
		push	eax
		call	_EVP_EncryptInit_ex
		add	esp, 14h
		test	eax, eax
		jz	short $err$54
		mov	eax, [esp+1FCh+var_1EC]
		lea	ecx, [esp+1FCh+var_1E8]
		push	esi
		push	eax
		push	ecx
		push	eax
		lea	eax, [esp+20Ch+var_1D0]
		push	eax
		call	_EVP_EncryptUpdate
		add	esp, 14h
		test	eax, eax
		jz	short $err$54
		lea	eax, [esp+1FCh+var_1D4]
		push	eax
		mov	eax, [esp+200h+var_1E8]
		add	eax, [esp+200h+var_1EC]
		push	eax
		lea	eax, [esp+204h+var_1D0]
		push	eax
		call	_EVP_EncryptFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	short $err$54
		push	[esp+1FCh+var_1E0]
		push	edi
		call	_i2d_NETSCAPE_ENCRYPTED_PKEY
		add	esp, 8
		mov	[esp+1FCh+var_1DC], eax

$err$54:				; CODE XREF: _i2d_RSA_NET+7Bj
					; _i2d_RSA_NET+92j ...
		lea	eax, [esp+1FCh+var_1D0]
		push	eax
		call	_EVP_CIPHER_CTX_cleanup
		push	offset ?local_it@?1??NETSCAPE_ENCRYPTED_PKEY_it@@9@9 ; `NETSCAPE_ENCRYPTED_PKEY_it'::`2'::local_it
		push	edi
		call	_ASN1_item_free
		push	offset ?local_it@?1??NETSCAPE_PKEY_it@@9@9 ; `NETSCAPE_PKEY_it'::`2'::local_it
		push	ebx
		call	_ASN1_item_free
		mov	eax, [esp+210h+var_1DC]

loc_922:				; CODE XREF: _i2d_RSA_NET+15Ej
		mov	ecx, [esp+210h+var_4]
		add	esp, 14h
		pop	ebx
		pop	edi
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 1ECh
		retn
_i2d_RSA_NET	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 940h
; COMDAT (pick any)
		public ??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@
; `string'
??_C@_0BH@MNGOPIKB@?4?2crypto?2asn1?2n_pkey?4c?$AA@ db '.\crypto\asn1\n_pkey.c',0
					; DATA XREF: _d2i_RSA_NET+31o
					; _d2i_RSA_NET+88o ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 958h
; COMDAT (pick any)
		public ??_C@_0M@JBKNFMIE@private?9key?$AA@
; char `string'[]
??_C@_0M@JBKNFMIE@private?9key?$AA@ db 'private-key',0 ; DATA XREF: _d2i_RSA_NET+5Do
					; _i2d_RSA_NET+1DCo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 964h
; COMDAT (pick any)
		public ??_C@_0BM@BIIKJHJC@Enter?5Private?5Key?5password?3?$AA@
; `string'
??_C@_0BM@BIIKJHJC@Enter?5Private?5Key?5password?3?$AA@	db 'Enter Private Key password:',0
					; DATA XREF: _d2i_RSA_NET_2+44o
					; _i2d_RSA_NET+22Bo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 980h
; COMDAT (pick any)
		public ??_C@_0L@FMFEGNMA@SGCKEYSALT?$AA@
; `string'
??_C@_0L@FMFEGNMA@SGCKEYSALT?$AA@ dq 415359454B434753h ; DATA XREF: _d2i_RSA_NET_2+BDr
					; _i2d_RSA_NET+2B5r
word_988	dw 544Ch		; DATA XREF: _d2i_RSA_NET_2+CAr
					; _i2d_RSA_NET+2C2r
		db 0
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ASN1_OCTET_STRING_it:near ; DATA	XREF: .rdata:00000028o
					; .rdata:00000094o
		extrn _LONG_it:near	; DATA XREF: .rdata:0000006Co
		extrn _X509_ALGOR_it:near ; DATA XREF: .rdata:00000080o
		extrn _X509_SIG_it:near	; DATA XREF: .rdata:0000003Co
; int __cdecl _strncmp(const char *Str1, const char *Str2, size_t MaxCount)
		extrn __imp__strncmp:near ; CODE XREF: _d2i_RSA_NET+62p
					; DATA XREF: _d2i_RSA_NET+62r
		extrn _CRYPTO_malloc:near ; CODE XREF: _i2d_RSA_NET+171p
					; _i2d_RSA_NET+1C3p
		extrn _OPENSSL_cleanse:near ; CODE XREF: _d2i_RSA_NET_2+125p
					; _i2d_RSA_NET+21Dp ...
		extrn _ERR_put_error:near ; CODE XREF: _d2i_RSA_NET+3Fp
					; _d2i_RSA_NET+99p ...
		extrn _ASN1_TYPE_new:near ; CODE XREF: _i2d_RSA_NET+ADp
					; _i2d_RSA_NET+115p
		extrn _ASN1_STRING_set:near ; CODE XREF: _i2d_RSA_NET+1E3p
		extrn _ASN1_item_new:near ; CODE XREF: _NETSCAPE_ENCRYPTED_PKEY_new+5p
					; _NETSCAPE_PKEY_new+5p ...
		extrn _ASN1_item_free:near ; CODE XREF:	_NETSCAPE_ENCRYPTED_PKEY_free+9p
					; _NETSCAPE_PKEY_free+9p ...
		extrn _ASN1_item_d2i:near ; CODE XREF: _d2i_NETSCAPE_ENCRYPTED_PKEY+11p
					; _d2i_NETSCAPE_PKEY+11p ...
		extrn _ASN1_item_i2d:near ; CODE XREF: _i2d_NETSCAPE_ENCRYPTED_PKEY+Dp
					; _i2d_NETSCAPE_PKEY+Dp ...
		extrn _d2i_RSAPrivateKey:near ;	CODE XREF: _d2i_RSA_NET_2+1ECp
		extrn _i2d_RSAPrivateKey:near ;	CODE XREF: _i2d_RSA_NET+D1p
					; _i2d_RSA_NET+1AFp
		extrn _OBJ_nid2obj:near	; CODE XREF: _i2d_RSA_NET+A0p
					; _i2d_RSA_NET+106p
		extrn _OBJ_obj2nid:near	; CODE XREF: _d2i_RSA_NET+76p
		extrn _EVP_Digest:near	; CODE XREF: _d2i_RSA_NET_2+ADp
					; _i2d_RSA_NET+2A5p
		extrn _EVP_read_pw_string:near ; DATA XREF: _d2i_RSA_NET+A7o
					; _i2d_RSA_NET+224o
		extrn _EVP_BytesToKey:near ; CODE XREF:	_d2i_RSA_NET_2+108p
					; _i2d_RSA_NET+300p
		extrn _EVP_EncryptInit_ex:near ; CODE XREF: _i2d_RSA_NET+349p
		extrn _EVP_EncryptUpdate:near ;	CODE XREF: _i2d_RSA_NET+366p
		extrn _EVP_EncryptFinal_ex:near	; CODE XREF: _i2d_RSA_NET+385p
		extrn _EVP_DecryptInit_ex:near ; CODE XREF: _d2i_RSA_NET_2+144p
		extrn _EVP_DecryptUpdate:near ;	CODE XREF: _d2i_RSA_NET_2+165p
		extrn _EVP_DecryptFinal_ex:near	; CODE XREF: _d2i_RSA_NET_2+187p
		extrn _EVP_CIPHER_CTX_init:near	; CODE XREF: _d2i_RSA_NET_2+3Ep
					; _i2d_RSA_NET+43p
		extrn _EVP_CIPHER_CTX_cleanup:near ; CODE XREF:	_d2i_RSA_NET_2+21Dp
					; _i2d_RSA_NET+3A7p
		extrn _EVP_md5:near	; CODE XREF: _d2i_RSA_NET_2+98p
					; _d2i_RSA_NET_2+FCp ...
		extrn _EVP_rc4:near	; CODE XREF: _d2i_RSA_NET_2+102p
					; _d2i_RSA_NET_2+139p ...
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _d2i_RSA_NET_2+23Fp
					; _i2d_RSA_NET+5Dp ...
		extrn __chkstk:near	; CODE XREF: _d2i_RSA_NET_2+5p
					; _i2d_RSA_NET+5p
		extrn ___security_cookie:near ;	DATA XREF: _d2i_RSA_NET_2+Ar
					; _i2d_RSA_NET+Ar


		end