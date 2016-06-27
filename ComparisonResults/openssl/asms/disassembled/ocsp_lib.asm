;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	A333603BE14EF22BBBD0B956B9830D45
; Input	CRC32 :	D78477EC

; File Name   :	C:\compspace\Diff\openssl\obj\ocsp_lib.obj
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


		public _OCSP_CERTID_dup
_OCSP_CERTID_dup proc near

arg_0		= dword	ptr  4

		push	[esp+arg_0]
		call	_OCSP_CERTID_it
		push	eax
		call	_ASN1_item_dup
		add	esp, 8
		retn
_OCSP_CERTID_dup endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 14h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_cert_id_new
_OCSP_cert_id_new proc near		; CODE XREF: _OCSP_cert_to_id+4Cp

var_50		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
var_44		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 50h ; 'P'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+50h+var_4], eax
		mov	eax, [esp+50h+arg_4]
		push	ebx
		mov	ebx, [esp+54h+arg_C]
		push	ebp
		mov	ebp, [esp+58h+arg_0]
		push	esi
		mov	[esp+5Ch+var_4C], eax
		mov	eax, [esp+5Ch+arg_8]
		push	edi
		mov	[esp+60h+var_48], eax
		call	_OCSP_CERTID_new
		mov	esi, eax
		test	esi, esi
		jz	short loc_8C
		mov	edi, [esi]
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_61
		push	eax
		call	_ASN1_OBJECT_free
		add	esp, 4

loc_61:					; CODE XREF: _OCSP_cert_id_new+42j
		push	ebp
		call	_EVP_MD_type
		add	esp, 4
		test	eax, eax
		jnz	short loc_A1
		push	75h ; 'u'
		push	offset ??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_lib.c"
		push	78h ; 'x'

loc_77:					; CODE XREF: _OCSP_cert_id_new+D5j
		push	65h ; 'e'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h

$err$17:				; CODE XREF: _OCSP_cert_id_new+9Aj
					; _OCSP_cert_id_new+A6j ...
		push	esi
		call	_OCSP_CERTID_free
		add	esp, 4

loc_8C:					; CODE XREF: _OCSP_cert_id_new+3Aj
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		mov	ecx, [esp+50h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 50h
		retn
; ---------------------------------------------------------------------------

loc_A1:					; CODE XREF: _OCSP_cert_id_new+58j
		push	eax
		call	_OBJ_nid2obj
		add	esp, 4
		mov	[edi], eax
		test	eax, eax
		jz	short $err$17
		call	_ASN1_TYPE_new
		mov	[edi+4], eax
		test	eax, eax
		jz	short $err$17
		mov	dword ptr [eax], 5
		lea	eax, [esp+60h+var_50]
		push	eax
		lea	eax, [esp+64h+var_44]
		push	eax
		push	ebp
		push	[esp+6Ch+var_4C]
		call	_X509_NAME_digest
		add	esp, 10h
		test	eax, eax
		jnz	short loc_EB

$digerr$18:
		push	91h ; '�'
		push	offset ??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_lib.c"
		push	66h ; 'f'
		jmp	short loc_77
; ---------------------------------------------------------------------------

loc_EB:					; CODE XREF: _OCSP_cert_id_new+C7j
		push	[esp+60h+var_50]
		lea	eax, [esp+64h+var_44]
		push	eax
		push	dword ptr [esi+4]
		call	_ASN1_OCTET_STRING_set
		add	esp, 0Ch
		test	eax, eax
		jz	short $err$17
		push	0
		push	ebp
		lea	eax, [esp+68h+var_50]
		push	eax
		lea	eax, [esp+6Ch+var_44]
		push	eax
		mov	eax, [esp+70h+var_48]
		push	dword ptr [eax]
		push	dword ptr [eax+8]
		call	_EVP_Digest
		add	esp, 18h
		test	eax, eax
		jz	$err$17
		push	[esp+60h+var_50]
		lea	eax, [esp+64h+var_44]
		push	eax
		push	dword ptr [esi+8]
		call	_ASN1_OCTET_STRING_set
		add	esp, 0Ch
		test	eax, eax
		jz	$err$17
		test	ebx, ebx
		jz	short loc_165
		push	dword ptr [esi+0Ch]
		call	_ASN1_INTEGER_free
		push	ebx
		call	_ASN1_INTEGER_dup
		add	esp, 8
		mov	[esi+0Ch], eax
		test	eax, eax
		jz	$err$17

loc_165:				; CODE XREF: _OCSP_cert_id_new+133j
		mov	ecx, [esp+60h+var_4]
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 50h
		retn
_OCSP_cert_id_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 17Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_cert_to_id
_OCSP_cert_to_id proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	ebp
		push	esi
		mov	esi, [esp+8+arg_0]
		push	edi
		test	esi, esi
		jnz	short loc_18E
		call	_EVP_sha1
		mov	esi, eax

loc_18E:				; CODE XREF: _OCSP_cert_to_id+9j
		mov	edi, [esp+0Ch+arg_4]
		test	edi, edi
		jz	short loc_1AB
		push	edi
		call	_X509_get_issuer_name
		push	edi
		mov	ebp, eax
		call	_X509_get_serialNumber
		add	esp, 8
		mov	edi, eax
		jmp	short loc_1BB
; ---------------------------------------------------------------------------

loc_1AB:				; CODE XREF: _OCSP_cert_to_id+18j
		push	[esp+0Ch+arg_8]
		call	_X509_get_subject_name
		add	esp, 4
		mov	ebp, eax
		xor	edi, edi

loc_1BB:				; CODE XREF: _OCSP_cert_to_id+2Dj
		push	[esp+0Ch+arg_8]
		call	_X509_get0_pubkey_bitstr
		push	edi
		push	eax
		push	ebp
		push	esi
		call	_OCSP_cert_id_new
		add	esp, 14h
		pop	edi
		pop	esi
		pop	ebp
		retn
_OCSP_cert_to_id endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1D4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_id_cmp
_OCSP_id_cmp	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_4]
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	eax, [esi]
		push	dword ptr [eax]
		mov	eax, [edi]
		push	dword ptr [eax]
		call	_OBJ_cmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_224
		push	dword ptr [esi+4]
		push	dword ptr [edi+4]
		call	_ASN1_OCTET_STRING_cmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_224
		push	dword ptr [esi+8]
		push	dword ptr [edi+8]
		call	_ASN1_OCTET_STRING_cmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_224
		push	dword ptr [esi+0Ch]
		push	dword ptr [edi+0Ch]
		call	_ASN1_INTEGER_cmp
		add	esp, 8

loc_224:				; CODE XREF: _OCSP_id_cmp+1Cj
					; _OCSP_id_cmp+2Ej ...
		pop	edi
		pop	esi
		retn
_OCSP_id_cmp	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 228h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_id_issuer_cmp
_OCSP_id_issuer_cmp proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_4]
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	eax, [esi]
		push	dword ptr [eax]
		mov	eax, [edi]
		push	dword ptr [eax]
		call	_OBJ_cmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_266
		push	dword ptr [esi+4]
		push	dword ptr [edi+4]
		call	_ASN1_OCTET_STRING_cmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_266
		push	dword ptr [esi+8]
		push	dword ptr [edi+8]
		call	_ASN1_OCTET_STRING_cmp
		add	esp, 8

loc_266:				; CODE XREF: _OCSP_id_issuer_cmp+1Cj
					; _OCSP_id_issuer_cmp+2Ej
		pop	edi
		pop	esi
		retn
_OCSP_id_issuer_cmp endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 26Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_parse_url
_OCSP_parse_url	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	eax, [esp+arg_4]
		push	ebx
		mov	ebx, [esp+4+arg_C]
		push	ebp
		mov	dword ptr [eax], 0
		mov	eax, [esp+8+arg_8]
		push	esi
		push	edi
		push	[esp+10h+arg_0]
		mov	dword ptr [eax], 0
		mov	dword ptr [ebx], 0
		call	_BUF_strdup
		mov	ebp, eax
		add	esp, 4
		test	ebp, ebp
		jz	$mem_err$41
		mov	edi, dword ptr ds:__imp__strchr
		push	3Ah ; ':'       ; Val
		push	ebp		; Str
		call	edi ; __imp__strchr
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jz	$parse_err$42
		mov	byte ptr [esi],	0
		mov	edx, offset ??_C@_04IAFLKNP@http?$AA@ ;	"http"
		mov	ecx, ebp
		nop	word ptr [eax+eax+00h]

loc_2CC:				; CODE XREF: _OCSP_parse_url+7Aj
		mov	al, [ecx]
		cmp	al, [edx]
		jnz	short loc_2EC
		test	al, al
		jz	short loc_2E8
		mov	al, [ecx+1]
		cmp	al, [edx+1]
		jnz	short loc_2EC
		add	ecx, 2
		add	edx, 2
		test	al, al
		jnz	short loc_2CC

loc_2E8:				; CODE XREF: _OCSP_parse_url+68j
		xor	eax, eax
		jmp	short loc_2F1
; ---------------------------------------------------------------------------

loc_2EC:				; CODE XREF: _OCSP_parse_url+64j
					; _OCSP_parse_url+70j
		sbb	eax, eax
		or	eax, 1

loc_2F1:				; CODE XREF: _OCSP_parse_url+7Ej
		test	eax, eax
		jnz	short loc_306
		mov	eax, [esp+10h+arg_10]
		mov	ebx, offset ??_C@_02PFIAKEDG@80?$AA@ ; `string'
		mov	dword ptr [eax], 0
		jmp	short loc_349
; ---------------------------------------------------------------------------

loc_306:				; CODE XREF: _OCSP_parse_url+87j
		mov	ecx, offset ??_C@_05BCHGOAMK@https?$AA@	; "https"
		mov	eax, ebp

loc_30D:				; CODE XREF: _OCSP_parse_url+BBj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_32D
		test	dl, dl
		jz	short loc_329
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_32D
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_30D

loc_329:				; CODE XREF: _OCSP_parse_url+A9j
		xor	eax, eax
		jmp	short loc_332
; ---------------------------------------------------------------------------

loc_32D:				; CODE XREF: _OCSP_parse_url+A5j
					; _OCSP_parse_url+B1j
		sbb	eax, eax
		or	eax, 1

loc_332:				; CODE XREF: _OCSP_parse_url+BFj
		test	eax, eax
		jnz	$parse_err$42
		mov	eax, [esp+10h+arg_10]
		mov	ebx, offset ??_C@_03HGPLGHGJ@443?$AA@ ;	`string'
		mov	dword ptr [eax], 1

loc_349:				; CODE XREF: _OCSP_parse_url+98j
		cmp	byte ptr [esi+1], 2Fh ;	'/'
		jnz	loc_400
		cmp	byte ptr [esi+2], 2Fh ;	'/'
		jnz	loc_400
		add	esi, 3
		push	2Fh ; '/'       ; Val
		push	esi		; Str
		call	edi ; __imp__strchr
		mov	edi, eax
		add	esp, 8
		test	edi, edi
		jnz	short loc_380
		push	offset ??_C@_01KMDKNFGN@?1?$AA@	; `string'
		call	_BUF_strdup
		mov	ecx, [esp+14h+arg_C]
		mov	[ecx], eax
		jmp	short loc_38F
; ---------------------------------------------------------------------------

loc_380:				; CODE XREF: _OCSP_parse_url+100j
		push	edi
		call	_BUF_strdup
		mov	ecx, [esp+14h+arg_C]
		mov	[ecx], eax
		mov	byte ptr [edi],	0

loc_38F:				; CODE XREF: _OCSP_parse_url+112j
		add	esp, 4
		cmp	dword ptr [ecx], 0
		jz	short loc_412
		cmp	byte ptr [esi],	5Bh ; '['
		mov	eax, esi
		mov	edi, dword ptr ds:__imp__strchr
		jnz	short loc_3B5
		inc	esi
		push	5Dh ; ']'       ; Val
		push	esi		; Str
		call	edi ; __imp__strchr
		add	esp, 8
		test	eax, eax
		jz	short loc_400
		mov	byte ptr [eax],	0
		inc	eax

loc_3B5:				; CODE XREF: _OCSP_parse_url+136j
		push	3Ah ; ':'       ; Val
		push	eax		; Str
		call	edi ; __imp__strchr
		add	esp, 8
		test	eax, eax
		jz	short loc_3C7
		mov	byte ptr [eax],	0
		lea	ebx, [eax+1]

loc_3C7:				; CODE XREF: _OCSP_parse_url+153j
		push	ebx
		call	_BUF_strdup
		mov	ecx, [esp+14h+arg_8]
		add	esp, 4
		mov	[ecx], eax
		test	eax, eax
		jz	short loc_412
		push	esi
		call	_BUF_strdup
		mov	ecx, [esp+14h+arg_4]
		add	esp, 4
		mov	[ecx], eax
		test	eax, eax
		jz	short loc_412
		push	ebp
		call	_CRYPTO_free
		add	esp, 4
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_400:				; CODE XREF: _OCSP_parse_url+E1j
					; _OCSP_parse_url+EBj ...
		mov	ebx, [esp+10h+arg_C]

$parse_err$42:				; CODE XREF: _OCSP_parse_url+4Aj
					; _OCSP_parse_url+C8j
		push	10Dh
		push	offset ??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_lib.c"
		push	79h ; 'y'
		jmp	short loc_422
; ---------------------------------------------------------------------------

loc_412:				; CODE XREF: _OCSP_parse_url+129j
					; _OCSP_parse_url+16Cj	...
		mov	ebx, [esp+10h+arg_C]

$mem_err$41:				; CODE XREF: _OCSP_parse_url+32j
		push	109h
		push	offset ??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_lib.c"
		push	41h ; 'A'

loc_422:				; CODE XREF: _OCSP_parse_url+1A4j
		push	72h ; 'r'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h

$err$43:
		test	ebp, ebp
		jz	short loc_43B
		push	ebp
		call	_CRYPTO_free
		add	esp, 4

loc_43B:				; CODE XREF: _OCSP_parse_url+1C4j
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_44A
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_44A:				; CODE XREF: _OCSP_parse_url+1D3j
		mov	eax, [esp+10h+arg_8]
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_45D
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_45D:				; CODE XREF: _OCSP_parse_url+1E6j
		mov	eax, [esp+10h+arg_4]
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_470
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_470:				; CODE XREF: _OCSP_parse_url+1F9j
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn
_OCSP_parse_url	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 478h
; COMDAT (pick any)
		public ??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@
; `string'
??_C@_0BJ@LLACCFN@?4?2crypto?2ocsp?2ocsp_lib?4c?$AA@ db	'.\crypto\ocsp\ocsp_lib.c',0
					; DATA XREF: _OCSP_cert_id_new+5Co
					; _OCSP_cert_id_new+CEo ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 494h
; COMDAT (pick any)
		public ??_C@_04IAFLKNP@http?$AA@
; `string'
??_C@_04IAFLKNP@http?$AA@ db 'http',0   ; DATA XREF: _OCSP_parse_url+53o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 49Ch
; COMDAT (pick any)
		public ??_C@_02PFIAKEDG@80?$AA@
; `string'
??_C@_02PFIAKEDG@80?$AA@ db 38h, 30h, 0	; DATA XREF: _OCSP_parse_url+8Do
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4A0h
; COMDAT (pick any)
		public ??_C@_05BCHGOAMK@https?$AA@
; `string'
??_C@_05BCHGOAMK@https?$AA@ db 'https',0 ; DATA XREF: _OCSP_parse_url:loc_306o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4A8h
; COMDAT (pick any)
		public ??_C@_03HGPLGHGJ@443?$AA@
; `string'
??_C@_03HGPLGHGJ@443?$AA@ dd 333434h	; DATA XREF: _OCSP_parse_url+D2o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4ACh
; COMDAT (pick any)
		public ??_C@_01KMDKNFGN@?1?$AA@
; `string'
??_C@_01KMDKNFGN@?1?$AA@ db 2Fh, 0	; DATA XREF: _OCSP_parse_url+102o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; char *__cdecl	_strchr(const char *Str, int Val)
		extrn __imp__strchr:near ; CODE	XREF: _OCSP_parse_url+41p
					; _OCSP_parse_url+F7p ...
		extrn _CRYPTO_free:near	; CODE XREF: _OCSP_parse_url+182p
					; _OCSP_parse_url+1C7p	...
		extrn _BUF_strdup:near	; CODE XREF: _OCSP_parse_url+26p
					; _OCSP_parse_url+107p	...
		extrn _ERR_put_error:near ; CODE XREF: _OCSP_cert_id_new+67p
					; _OCSP_parse_url+1BAp
		extrn _ASN1_TYPE_new:near ; CODE XREF: _OCSP_cert_id_new+9Cp
		extrn _ASN1_OBJECT_free:near ; CODE XREF: _OCSP_cert_id_new+45p
		extrn _ASN1_INTEGER_free:near ;	CODE XREF: _OCSP_cert_id_new+138p
		extrn _ASN1_INTEGER_dup:near ; CODE XREF: _OCSP_cert_id_new+13Ep
		extrn _ASN1_INTEGER_cmp:near ; CODE XREF: _OCSP_id_cmp+48p
		extrn _ASN1_OCTET_STRING_cmp:near ; CODE XREF: _OCSP_id_cmp+24p
					; _OCSP_id_cmp+36p ...
		extrn _ASN1_OCTET_STRING_set:near ; CODE XREF: _OCSP_cert_id_new+E3p
					; _OCSP_cert_id_new+121p
		extrn _ASN1_item_dup:near ; CODE XREF: _OCSP_CERTID_dup+Ap
		extrn _OBJ_nid2obj:near	; CODE XREF: _OCSP_cert_id_new+8Ep
		extrn _OBJ_cmp:near	; CODE XREF: _OCSP_id_cmp+12p
					; _OCSP_id_issuer_cmp+12p
		extrn _EVP_MD_type:near	; CODE XREF: _OCSP_cert_id_new+4Ep
		extrn _EVP_Digest:near	; CODE XREF: _OCSP_cert_id_new+105p
		extrn _EVP_sha1:near	; CODE XREF: _OCSP_cert_to_id+Bp
		extrn _X509_NAME_digest:near ; CODE XREF: _OCSP_cert_id_new+BDp
		extrn _X509_get_serialNumber:near ; CODE XREF: _OCSP_cert_to_id+23p
		extrn _X509_get_issuer_name:near ; CODE	XREF: _OCSP_cert_to_id+1Bp
		extrn _X509_get_subject_name:near ; CODE XREF: _OCSP_cert_to_id+33p
		extrn _X509_get0_pubkey_bitstr:near ; CODE XREF: _OCSP_cert_to_id+43p
		extrn _OCSP_CERTID_new:near ; CODE XREF: _OCSP_cert_id_new+31p
		extrn _OCSP_CERTID_free:near ; CODE XREF: _OCSP_cert_id_new+70p
		extrn _OCSP_CERTID_it:near ; CODE XREF:	_OCSP_CERTID_dup+4p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _OCSP_cert_id_new+84p
					; _OCSP_cert_id_new+15Dp
		extrn __chkstk:near	; CODE XREF: _OCSP_cert_id_new+5p
		extrn ___security_cookie:near ;	DATA XREF: _OCSP_cert_id_new+Ar


		end
