;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	BB2D9AFDAE4414649CDEF4CBA9F31E84
; Input	CRC32 :	324C460E

; File Name   :	C:\compspace\Diff\openssl\obj\p5_crpt.obj
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


		public _PKCS5_PBE_add
_PKCS5_PBE_add	proc near
		retn
_PKCS5_PBE_add	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS5_PBE_keyivgen
_PKCS5_PBE_keyivgen proc near

var_C8		= dword	ptr -0C8h
var_C4		= dword	ptr -0C4h
var_C0		= dword	ptr -0C0h
var_BC		= dword	ptr -0BCh
var_B8		= dword	ptr -0B8h
var_B4		= dword	ptr -0B4h
var_B0		= dword	ptr -0B0h
var_AC		= byte ptr -0ACh
var_94		= byte ptr -94h
Src		= byte ptr -84h
var_74		= byte ptr -74h
Dst		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		mov	eax, 0C8h ; '�'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+0C8h+var_4], eax
		mov	eax, [esp+0C8h+arg_0]
		mov	[esp+0C8h+var_B0], eax
		mov	eax, [esp+0C8h+arg_4]
		mov	[esp+0C8h+var_C8], eax
		mov	eax, [esp+0C8h+arg_10]
		push	ebp
		mov	ebp, [esp+0CCh+arg_14]
		mov	[esp+0CCh+var_B4], eax
		lea	eax, [esp+0CCh+var_AC]
		push	esi
		mov	esi, [esp+0D0h+arg_C]
		push	eax
		mov	[esp+0D4h+var_C4], 0
		call	_EVP_MD_CTX_init
		add	esp, 4
		test	esi, esi
		jz	loc_312
		cmp	dword ptr [esi], 10h
		jnz	loc_312
		mov	ecx, [esi+4]
		test	ecx, ecx
		jz	loc_312
		mov	eax, [ecx+8]
		push	edi
		mov	[esp+0D4h+var_C0], eax
		lea	eax, [esp+0D4h+var_C0]
		push	dword ptr [ecx]
		push	eax
		push	0
		call	_d2i_PBEPARAM
		mov	edi, eax
		add	esp, 0Ch
		test	edi, edi
		jnz	short loc_CB
		push	63h ; 'c'
		push	offset ??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt.c"
		push	72h ; 'r'
		push	75h ; 'u'
		push	6
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebp
		mov	ecx, [esp+0C8h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0C8h
		retn
; ---------------------------------------------------------------------------

loc_CB:					; CODE XREF: _PKCS5_PBE_keyivgen+96j
		mov	eax, [edi+4]
		push	ebx
		test	eax, eax
		jnz	short loc_D8
		lea	ebx, [eax+1]
		jmp	short loc_E3
; ---------------------------------------------------------------------------

loc_D8:					; CODE XREF: _PKCS5_PBE_keyivgen+CDj
		push	eax
		call	_ASN1_INTEGER_get
		add	esp, 4
		mov	ebx, eax

loc_E3:					; CODE XREF: _PKCS5_PBE_keyivgen+D2j
		mov	eax, [edi]
		mov	ecx, [eax+8]
		mov	eax, [eax]
		mov	[esp+0D8h+var_BC], eax
		mov	eax, [esp+0D8h+var_C8]
		mov	[esp+0D8h+var_B8], ecx
		test	eax, eax
		jnz	short loc_FE
		xor	esi, esi
		jmp	short loc_11D
; ---------------------------------------------------------------------------

loc_FE:					; CODE XREF: _PKCS5_PBE_keyivgen+F4j
		mov	esi, [esp+0D8h+arg_8]
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_11D
		mov	esi, eax
		lea	ecx, [esi+1]
		nop	dword ptr [eax+eax+00h]

loc_114:				; CODE XREF: _PKCS5_PBE_keyivgen+115j
		mov	al, [esi]
		inc	esi
		test	al, al
		jnz	short loc_114
		sub	esi, ecx

loc_11D:				; CODE XREF: _PKCS5_PBE_keyivgen+F8j
					; _PKCS5_PBE_keyivgen+104j
		push	0
		lea	eax, [esp+0DCh+var_AC]
		push	ebp
		push	eax
		call	_EVP_DigestInit_ex
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		mov	eax, [esp+0D8h+var_C8]
		push	esi
		push	eax
		lea	eax, [esp+0E0h+var_AC]
		push	eax
		call	_EVP_DigestUpdate
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		push	[esp+0D8h+var_BC]
		lea	eax, [esp+0DCh+var_AC]
		push	[esp+0DCh+var_B8]
		push	eax
		call	_EVP_DigestUpdate
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		push	edi
		call	_PBEPARAM_free
		push	0
		lea	eax, [esp+0E0h+Src]
		push	eax
		lea	eax, [esp+0E4h+var_AC]
		push	eax
		call	_EVP_DigestFinal_ex
		add	esp, 10h
		test	eax, eax
		jz	$err$38
		push	ebp
		call	_EVP_MD_size
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jns	short loc_1B9
		xor	eax, eax

loc_1A0:				; CODE XREF: _PKCS5_PBE_keyivgen+309j
		pop	ebx
		pop	edi
		pop	esi
		pop	ebp
		mov	ecx, [esp+0C8h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0C8h
		retn
; ---------------------------------------------------------------------------

loc_1B9:				; CODE XREF: _PKCS5_PBE_keyivgen+198j
		mov	esi, 1
		cmp	ebx, esi
		jle	short loc_218
		xchg	ax, ax

loc_1C4:				; CODE XREF: _PKCS5_PBE_keyivgen+212j
		push	0
		lea	eax, [esp+0DCh+var_AC]
		push	ebp
		push	eax
		call	_EVP_DigestInit_ex
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		push	edi
		lea	eax, [esp+0DCh+Src]
		push	eax
		lea	eax, [esp+0E0h+var_AC]
		push	eax
		call	_EVP_DigestUpdate
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		push	0
		lea	eax, [esp+0DCh+Src]
		push	eax
		lea	eax, [esp+0E0h+var_AC]
		push	eax
		call	_EVP_DigestFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	$err$38
		inc	esi
		cmp	esi, ebx
		jl	short loc_1C4

loc_218:				; CODE XREF: _PKCS5_PBE_keyivgen+1BCj
		mov	ebx, [esp+0D8h+var_B4]
		push	ebx
		call	_EVP_CIPHER_key_length
		add	esp, 4
		cmp	eax, 40h ; '@'
		jle	short loc_241
		push	offset ??_C@_0DF@FHOHFFEB@EVP_CIPHER_key_length?$CIcipher?$CJ?5?$DM?$DN@ ; "EVP_CIPHER_key_length(cipher) <= (int)s"...
		push	87h ; '�'
		push	offset ??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt.c"
		call	_OpenSSLDie
		add	esp, 0Ch

loc_241:				; CODE XREF: _PKCS5_PBE_keyivgen+224j
		push	ebx
		call	_EVP_CIPHER_key_length
		push	eax		; Size
		lea	eax, [esp+0E0h+Src]
		push	eax		; Src
		lea	eax, [esp+0E4h+Dst]
		push	eax		; Dst
		call	_memcpy
		push	ebx
		call	_EVP_CIPHER_iv_length
		add	esp, 14h
		cmp	eax, 10h
		jle	short loc_27F
		push	offset ??_C@_0CD@HMFJNEFL@EVP_CIPHER_iv_length?$CIcipher?$CJ?5?$DM?$DN?5@ ; "EVP_CIPHER_iv_length(cipher) <= 16"
		push	89h ; '�'
		push	offset ??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt.c"
		call	_OpenSSLDie
		add	esp, 0Ch

loc_27F:				; CODE XREF: _PKCS5_PBE_keyivgen+262j
		push	ebx
		call	_EVP_CIPHER_iv_length
		add	esp, 4
		push	eax		; Size
		push	ebx
		call	_EVP_CIPHER_iv_length
		add	esp, 4
		lea	ecx, [esp+0DCh+var_74]
		sub	ecx, eax
		lea	eax, [esp+0DCh+var_94]
		push	ecx		; Src
		push	eax		; Dst
		call	_memcpy
		push	[esp+0E4h+arg_18]
		lea	eax, [esp+0E8h+var_94]
		push	eax
		lea	eax, [esp+0ECh+Dst]
		push	eax
		push	0
		push	ebx
		push	[esp+0F8h+var_B0]
		call	_EVP_CipherInit_ex
		add	esp, 24h
		test	eax, eax
		jz	short $err$38
		lea	eax, [esp+0D8h+Src]
		push	40h ; '@'
		push	eax
		call	_OPENSSL_cleanse
		lea	eax, [esp+0E0h+Dst]
		push	40h ; '@'
		push	eax
		call	_OPENSSL_cleanse
		lea	eax, [esp+0E8h+var_94]
		push	10h
		push	eax
		call	_OPENSSL_cleanse
		add	esp, 18h
		mov	[esp+0D8h+var_C4], 1

$err$38:				; CODE XREF: _PKCS5_PBE_keyivgen+12Bj
					; _PKCS5_PBE_keyivgen+146j ...
		lea	eax, [esp+0D8h+var_AC]
		push	eax
		call	_EVP_MD_CTX_cleanup
		mov	eax, [esp+0DCh+var_C4]
		add	esp, 4
		jmp	loc_1A0
; ---------------------------------------------------------------------------

loc_312:				; CODE XREF: _PKCS5_PBE_keyivgen+5Fj
					; _PKCS5_PBE_keyivgen+68j ...
		push	5Dh ; ']'
		push	offset ??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt.c"
		push	72h ; 'r'
		push	75h ; 'u'
		push	6
		call	_ERR_put_error
		mov	ecx, [esp+0E4h+var_4]
		add	esp, 14h
		xor	eax, eax
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0C8h
		retn
_PKCS5_PBE_keyivgen endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 340h
; COMDAT (pick any)
		public ??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@
; `string'
??_C@_0BH@DKGHAIKO@?4?2crypto?2evp?2p5_crpt?4c?$AA@ db '.\crypto\evp\p5_crpt.c',0
					; DATA XREF: _PKCS5_PBE_keyivgen+9Ao
					; _PKCS5_PBE_keyivgen+230o ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 358h
; COMDAT (pick any)
		public ??_C@_0DF@FHOHFFEB@EVP_CIPHER_key_length?$CIcipher?$CJ?5?$DM?$DN@
; `string'
??_C@_0DF@FHOHFFEB@EVP_CIPHER_key_length?$CIcipher?$CJ?5?$DM?$DN@ db 'EVP_CIPHER_key_length(cipher) <= (int)sizeof(md_tmp)',0
					; DATA XREF: _PKCS5_PBE_keyivgen+226o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 390h
; COMDAT (pick any)
		public ??_C@_0CD@HMFJNEFL@EVP_CIPHER_iv_length?$CIcipher?$CJ?5?$DM?$DN?5@
; `string'
??_C@_0CD@HMFJNEFL@EVP_CIPHER_iv_length?$CIcipher?$CJ?5?$DM?$DN?5@ db 'EVP_CIPHER_iv_length(cipher) <= 16',0
					; DATA XREF: _PKCS5_PBE_keyivgen+264o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _OPENSSL_cleanse:near ; CODE XREF: _PKCS5_PBE_keyivgen+2CDp
					; _PKCS5_PBE_keyivgen+2DCp ...
		extrn _OpenSSLDie:near	; CODE XREF: _PKCS5_PBE_keyivgen+235p
					; _PKCS5_PBE_keyivgen+273p
		extrn _ERR_put_error:near ; CODE XREF: _PKCS5_PBE_keyivgen+A5p
					; _PKCS5_PBE_keyivgen+31Bp
		extrn _ASN1_INTEGER_get:near ; CODE XREF: _PKCS5_PBE_keyivgen+D5p
		extrn _EVP_MD_size:near	; CODE XREF: _PKCS5_PBE_keyivgen+18Cp
		extrn _EVP_CIPHER_key_length:near ; CODE XREF: _PKCS5_PBE_keyivgen+219p
					; _PKCS5_PBE_keyivgen+23Ep
		extrn _EVP_CIPHER_iv_length:near ; CODE	XREF: _PKCS5_PBE_keyivgen+257p
					; _PKCS5_PBE_keyivgen+27Cp ...
		extrn _EVP_MD_CTX_init:near ; CODE XREF: _PKCS5_PBE_keyivgen+55p
		extrn _EVP_MD_CTX_cleanup:near ; CODE XREF: _PKCS5_PBE_keyivgen+2FDp
		extrn _EVP_DigestInit_ex:near ;	CODE XREF: _PKCS5_PBE_keyivgen+121p
					; _PKCS5_PBE_keyivgen+1C8p
		extrn _EVP_DigestUpdate:near ; CODE XREF: _PKCS5_PBE_keyivgen+13Cp
					; _PKCS5_PBE_keyivgen+159p ...
		extrn _EVP_DigestFinal_ex:near ; CODE XREF: _PKCS5_PBE_keyivgen+17Bp
					; _PKCS5_PBE_keyivgen+1FFp
		extrn _EVP_CipherInit_ex:near ;	CODE XREF: _PKCS5_PBE_keyivgen+2BAp
		extrn _PBEPARAM_free:near ; CODE XREF: _PKCS5_PBE_keyivgen+16Ap
		extrn _d2i_PBEPARAM:near ; CODE	XREF: _PKCS5_PBE_keyivgen+8Ap
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _PKCS5_PBE_keyivgen+BBp
					; _PKCS5_PBE_keyivgen+1A9p ...
		extrn __chkstk:near	; CODE XREF: _PKCS5_PBE_keyivgen+5p
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn _memcpy:near	; CODE XREF: _PKCS5_PBE_keyivgen+251p
					; _PKCS5_PBE_keyivgen+29Ap
		extrn ___security_cookie:near ;	DATA XREF: _PKCS5_PBE_keyivgen+Ar


		end