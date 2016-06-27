;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	9A3EED1DCB7273F81D87CAEB877381C8
; Input	CRC32 :	20BC567E

; File Name   :	C:\compspace\Diff\openssl\obj\p5_crpt2.obj
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


; int __cdecl PKCS5_PBKDF2_HMAC(int, int, int, int, int, int, int, void	*Dst)
		public _PKCS5_PBKDF2_HMAC
_PKCS5_PBKDF2_HMAC proc	near		; CODE XREF: _PKCS5_PBKDF2_HMAC_SHA1+22p
					; _PKCS5_v2_PBKDF2_keyivgen+193p

var_1F8		= byte ptr -1F8h
var_1F7		= byte ptr -1F7h
var_1F6		= byte ptr -1F6h
var_1F5		= byte ptr -1F5h
var_1F4		= dword	ptr -1F4h
Size		= dword	ptr -1F0h
var_1EC		= dword	ptr -1ECh
var_1E8		= dword	ptr -1E8h
var_1E4		= byte ptr -1E4h
var_114		= byte ptr -114h
var_45		= byte ptr -45h
Src		= byte ptr -44h
var_34		= byte ptr -34h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch
Dst		= dword	ptr  20h

		mov	eax, 1F8h
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+1F8h+var_4], eax
		mov	eax, [esp+1F8h+arg_8]
		push	ebp
		mov	ebp, [esp+1FCh+Dst]
		push	esi
		mov	esi, [esp+200h+arg_0]
		push	edi
		mov	edi, [esp+204h+arg_14]
		push	edi
		mov	[esp+208h+var_1E8], eax
		mov	[esp+208h+var_1EC], 1
		call	_EVP_MD_size
		add	esp, 4
		mov	[esp+204h+Size], eax
		test	eax, eax
		js	short loc_B2
		lea	eax, [esp+204h+var_114]
		push	eax
		call	_HMAC_CTX_init
		add	esp, 4
		test	esi, esi
		jnz	short loc_6C
		xor	ecx, ecx
		jmp	short loc_89
; ---------------------------------------------------------------------------

loc_6C:					; CODE XREF: _PKCS5_PBKDF2_HMAC+66j
		mov	ecx, [esp+204h+arg_4]
		cmp	ecx, 0FFFFFFFFh
		jnz	short loc_89
		mov	ecx, esi
		lea	edx, [ecx+1]
		nop	dword ptr [eax]

loc_80:					; CODE XREF: _PKCS5_PBKDF2_HMAC+85j
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_80
		sub	ecx, edx

loc_89:					; CODE XREF: _PKCS5_PBKDF2_HMAC+6Aj
					; _PKCS5_PBKDF2_HMAC+76j
		push	0
		push	edi
		push	ecx
		lea	eax, [esp+210h+var_114]
		push	esi
		push	eax
		call	_HMAC_Init_ex
		add	esp, 14h
		test	eax, eax
		jnz	short loc_CC
		lea	eax, [esp+204h+var_114]
		push	eax
		call	_HMAC_CTX_cleanup
		add	esp, 4

loc_B2:					; CODE XREF: _PKCS5_PBKDF2_HMAC+52j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebp
		mov	ecx, [esp+1F8h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 1F8h
		retn
; ---------------------------------------------------------------------------

loc_CC:					; CODE XREF: _PKCS5_PBKDF2_HMAC+A0j
		mov	eax, [esp+204h+arg_18]
		push	ebx
		test	eax, eax
		jz	loc_30B
		mov	esi, [esp+208h+Size]
		mov	ecx, 1

loc_E5:					; CODE XREF: _PKCS5_PBKDF2_HMAC+305j
		cmp	eax, esi
		mov	[esp+208h+var_1F5], cl
		mov	ebx, eax
		mov	eax, ecx
		cmovg	ebx, esi
		shr	eax, 18h
		mov	[esp+208h+var_1F8], al
		mov	eax, ecx
		shr	eax, 10h
		mov	[esp+208h+var_1F7], al
		mov	eax, ecx
		shr	eax, 8
		mov	[esp+208h+var_1F6], al
		lea	eax, [esp+208h+var_114]
		push	eax
		lea	eax, [esp+20Ch+var_1E4]
		push	eax
		call	_HMAC_CTX_copy
		add	esp, 8
		test	eax, eax
		jz	loc_357
		push	[esp+208h+arg_C]
		lea	eax, [esp+20Ch+var_1E4]
		push	[esp+20Ch+var_1E8]
		push	eax
		call	_HMAC_Update
		add	esp, 0Ch
		test	eax, eax
		jz	loc_339
		push	4
		lea	eax, [esp+20Ch+var_1F8]
		push	eax
		lea	eax, [esp+210h+var_1E4]
		push	eax
		call	_HMAC_Update
		add	esp, 0Ch
		test	eax, eax
		jz	loc_339
		push	0
		lea	eax, [esp+20Ch+Src]
		push	eax
		lea	eax, [esp+210h+var_1E4]
		push	eax
		call	_HMAC_Final
		add	esp, 0Ch
		test	eax, eax
		jz	loc_339
		lea	eax, [esp+208h+var_1E4]
		push	eax
		call	_HMAC_CTX_cleanup
		push	ebx		; Size
		lea	eax, [esp+210h+Src]
		push	eax		; Src
		push	ebp		; Dst
		call	_memcpy
		add	esp, 10h
		mov	[esp+208h+var_1F4], 1
		cmp	[esp+208h+arg_10], 1
		jle	loc_2E8
		db	66h, 66h
		nop	word ptr [eax+eax+00000000h]

loc_1C0:				; CODE XREF: _PKCS5_PBKDF2_HMAC+2E2j
		lea	eax, [esp+208h+var_114]
		push	eax
		lea	eax, [esp+20Ch+var_1E4]
		push	eax
		call	_HMAC_CTX_copy
		add	esp, 8
		test	eax, eax
		jz	loc_357
		push	esi
		lea	eax, [esp+20Ch+Src]
		push	eax
		lea	eax, [esp+210h+var_1E4]
		push	eax
		call	_HMAC_Update
		add	esp, 0Ch
		test	eax, eax
		jz	loc_339
		push	0
		lea	eax, [esp+20Ch+Src]
		push	eax
		lea	eax, [esp+210h+var_1E4]
		push	eax
		call	_HMAC_Final
		add	esp, 0Ch
		test	eax, eax
		jz	loc_339
		lea	eax, [esp+208h+var_1E4]
		push	eax
		call	_HMAC_CTX_cleanup
		add	esp, 4
		xor	esi, esi
		test	ebx, ebx
		jle	loc_2CE
		cmp	ebx, 20h ; ' '
		jb	short loc_2AB
		lea	ecx, [ebp-1]
		lea	eax, [esp+ebx+208h+var_45]
		add	ecx, ebx
		cmp	ebp, eax
		ja	short loc_251
		lea	eax, [esp+208h+Src]
		cmp	ecx, eax
		jnb	short loc_2AB

loc_251:				; CODE XREF: _PKCS5_PBKDF2_HMAC+244j
		mov	eax, ebx
		and	eax, 8000001Fh
		jns	short loc_25F
		dec	eax
		or	eax, 0FFFFFFE0h
		inc	eax

loc_25F:				; CODE XREF: _PKCS5_PBKDF2_HMAC+258j
		mov	edx, ebx
		lea	edi, [esp+208h+Src]
		sub	edx, eax
		mov	ecx, ebp
		mov	eax, ebp
		neg	eax
		add	edi, eax
		lea	eax, [esp+eax+208h+var_34]
		nop	dword ptr [eax+00000000h]

loc_280:				; CODE XREF: _PKCS5_PBKDF2_HMAC+2A9j
		movups	xmm0, xmmword ptr [ecx]
		add	esi, 20h ; ' '
		lea	ecx, [ecx+20h]
		movups	xmm1, xmmword ptr [edi+ecx-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [ecx-20h], xmm1
		movups	xmm1, xmmword ptr [eax+ecx-20h]
		movups	xmm0, xmmword ptr [ecx-10h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [ecx-10h], xmm1
		cmp	esi, edx
		jl	short loc_280

loc_2AB:				; CODE XREF: _PKCS5_PBKDF2_HMAC+234j
					; _PKCS5_PBKDF2_HMAC+24Fj
		cmp	esi, ebx
		jge	short loc_2CE
		lea	edi, [esp+208h+Src]
		mov	edx, ebx
		sub	edi, ebp
		lea	eax, [esi+ebp]
		sub	edx, esi
		nop

loc_2C0:				; CODE XREF: _PKCS5_PBKDF2_HMAC+2CCj
		mov	cl, [edi+eax]
		lea	eax, [eax+1]
		xor	[eax-1], cl
		sub	edx, 1
		jnz	short loc_2C0

loc_2CE:				; CODE XREF: _PKCS5_PBKDF2_HMAC+22Bj
					; _PKCS5_PBKDF2_HMAC+2ADj
		mov	esi, [esp+208h+var_1F4]
		inc	esi
		cmp	esi, [esp+208h+arg_10]
		mov	[esp+208h+var_1F4], esi
		mov	esi, [esp+208h+Size]
		jl	loc_1C0

loc_2E8:				; CODE XREF: _PKCS5_PBKDF2_HMAC+1AFj
		mov	eax, [esp+208h+arg_18]
		add	ebp, ebx
		mov	ecx, [esp+208h+var_1EC]
		sub	eax, ebx
		inc	ecx
		mov	[esp+208h+arg_18], eax
		mov	[esp+208h+var_1EC], ecx
		test	eax, eax
		jnz	loc_E5

loc_30B:				; CODE XREF: _PKCS5_PBKDF2_HMAC+D6j
		lea	eax, [esp+208h+var_114]
		push	eax
		call	_HMAC_CTX_cleanup
		add	esp, 4
		mov	eax, 1

loc_320:				; CODE XREF: _PKCS5_PBKDF2_HMAC+355j
					; _PKCS5_PBKDF2_HMAC+369j
		mov	ecx, [esp+208h+var_4]
		pop	ebx
		pop	edi
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 1F8h
		retn
; ---------------------------------------------------------------------------

loc_339:				; CODE XREF: _PKCS5_PBKDF2_HMAC+142j
					; _PKCS5_PBKDF2_HMAC+15Ej ...
		lea	eax, [esp+208h+var_114]
		push	eax
		call	_HMAC_CTX_cleanup
		lea	eax, [esp+20Ch+var_1E4]
		push	eax
		call	_HMAC_CTX_cleanup
		add	esp, 8
		xor	eax, eax
		jmp	short loc_320
; ---------------------------------------------------------------------------

loc_357:				; CODE XREF: _PKCS5_PBKDF2_HMAC+122j
					; _PKCS5_PBKDF2_HMAC+1D7j
		lea	eax, [esp+208h+var_114]
		push	eax
		call	_HMAC_CTX_cleanup
		add	esp, 4
		xor	eax, eax
		jmp	short loc_320
_PKCS5_PBKDF2_HMAC endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 36Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl PKCS5_PBKDF2_HMAC_SHA1(int, int, int, int, int, int, void	*Dst)
		public _PKCS5_PBKDF2_HMAC_SHA1
_PKCS5_PBKDF2_HMAC_SHA1	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
Dst		= dword	ptr  1Ch

		push	[esp+Dst]	; Dst
		push	[esp+4+arg_14]	; int
		call	_EVP_sha1
		push	eax		; int
		push	[esp+0Ch+arg_10] ; int
		push	[esp+10h+arg_C]	; int
		push	[esp+14h+arg_8]	; int
		push	[esp+18h+arg_4]	; int
		push	[esp+1Ch+arg_0]	; int
		call	_PKCS5_PBKDF2_HMAC
		add	esp, 20h
		retn
_PKCS5_PBKDF2_HMAC_SHA1	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 398h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS5_v2_PBE_keyivgen
_PKCS5_v2_PBE_keyivgen proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		mov	eax, [esp+arg_C]
		push	ebx
		push	esi
		xor	esi, esi
		xor	ebx, ebx
		push	edi
		test	eax, eax
		jz	loc_4A3
		cmp	dword ptr [eax], 10h
		jnz	loc_4A3
		mov	ecx, [eax+4]
		test	ecx, ecx
		jz	loc_4A3
		mov	eax, [ecx+8]
		mov	[esp+0Ch+arg_C], eax
		lea	eax, [esp+0Ch+arg_C]
		push	dword ptr [ecx]
		push	eax
		push	ebx
		call	_d2i_PBE2PARAM
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_3E6
		push	0D2h ; '�'
		jmp	loc_4A8
; ---------------------------------------------------------------------------

loc_3E6:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+42j
		mov	eax, [esi]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 45h ; 'E'
		jz	short loc_408
		push	0DAh ; '�'
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Ch ; '|'
		jmp	loc_4AF
; ---------------------------------------------------------------------------

loc_408:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+5Dj
		mov	eax, [esi+4]
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		push	eax
		call	_OBJ_nid2sn
		push	eax
		call	_EVP_get_cipherbyname
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_433
		push	0E5h ; '�'
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	6Bh ; 'k'
		jmp	short loc_4AF
; ---------------------------------------------------------------------------

loc_433:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+8Bj
		push	[esp+0Ch+arg_18]
		mov	edi, [esp+10h+arg_0]
		push	0
		push	0
		push	0
		push	eax
		push	edi
		call	_EVP_CipherInit_ex
		add	esp, 18h
		test	eax, eax
		jz	short $err$13
		mov	eax, [esi+4]
		push	dword ptr [eax+4]
		push	edi
		call	_EVP_CIPHER_asn1_to_param
		add	esp, 8
		test	eax, eax
		jns	short loc_470
		push	0EDh ; '�'
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Ah ; 'z'
		jmp	short loc_4AF
; ---------------------------------------------------------------------------

loc_470:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+C8j
		push	[esp+0Ch+arg_18]
		mov	eax, [esi]
		push	[esp+10h+arg_14]
		push	[esp+14h+arg_10]
		push	dword ptr [eax+4]
		push	[esp+1Ch+arg_8]
		push	[esp+20h+arg_4]
		push	edi
		call	_PKCS5_v2_PBKDF2_keyivgen
		add	esp, 1Ch
		mov	ebx, eax
		push	esi
		call	_PBE2PARAM_free
		add	esp, 4
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4A3:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+Dj
					; _PKCS5_v2_PBE_keyivgen+16j ...
		push	0CBh ; '�'

loc_4A8:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+49j
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	72h ; 'r'

loc_4AF:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+6Bj
					; _PKCS5_v2_PBE_keyivgen+99j ...
		push	76h ; 'v'
		push	6
		call	_ERR_put_error
		add	esp, 14h

$err$13:				; CODE XREF: _PKCS5_v2_PBE_keyivgen+B5j
		push	esi
		call	_PBE2PARAM_free
		add	esp, 4
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
_PKCS5_v2_PBE_keyivgen endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4CCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS5_v2_PBKDF2_keyivgen
_PKCS5_v2_PBKDF2_keyivgen proc near	; CODE XREF: _PKCS5_v2_PBE_keyivgen+F2p

var_5C		= dword	ptr -5Ch
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
Dst		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_18		= dword	ptr  1Ch

		mov	eax, 5Ch ; '\'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+5Ch+var_4], eax
		mov	eax, [esp+5Ch+arg_4]
		push	ebx
		push	ebp
		push	esi
		mov	esi, [esp+68h+arg_0]
		xor	ebp, ebp
		push	edi
		mov	edi, [esp+6Ch+arg_C]
		xor	ebx, ebx
		push	esi
		mov	[esp+70h+var_48], esi
		mov	[esp+70h+var_4C], eax
		mov	[esp+70h+var_5C], 0
		call	_EVP_CIPHER_CTX_cipher
		add	esp, 4
		test	eax, eax
		jnz	short loc_526
		push	105h
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	83h ; '�'
		jmp	loc_69B
; ---------------------------------------------------------------------------

loc_526:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+44j
		push	esi
		call	_EVP_CIPHER_CTX_key_length
		mov	ebp, eax
		add	esp, 4
		cmp	ebp, 40h ; '@'
		jbe	short loc_54D
		push	offset ??_C@_0BF@JMOFLBJO@keylen?5?$DM?$DN?5sizeof?5key?$AA@ ; "keylen <= sizeof key"
		push	109h
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		call	_OpenSSLDie
		add	esp, 0Ch

loc_54D:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+68j
		test	edi, edi
		jz	loc_68F
		cmp	dword ptr [edi], 10h
		jnz	loc_68F
		mov	ecx, [edi+4]
		mov	eax, [ecx+8]
		mov	[esp+6Ch+var_58], eax
		lea	eax, [esp+6Ch+var_58]
		push	dword ptr [ecx]
		push	eax
		push	0
		call	_d2i_PBKDF2PARAM
		mov	ebx, eax
		add	esp, 0Ch
		test	ebx, ebx
		jnz	short loc_589
		push	116h
		jmp	loc_694
; ---------------------------------------------------------------------------

loc_589:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+B1j
		push	esi
		call	_EVP_CIPHER_CTX_key_length
		mov	ebp, eax
		add	esp, 4
		mov	eax, [ebx+8]
		test	eax, eax
		jz	short loc_5B9
		push	eax
		call	_ASN1_INTEGER_get
		add	esp, 4
		cmp	eax, ebp
		jz	short loc_5B9
		push	11Fh
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Bh ; '{'
		jmp	loc_69B
; ---------------------------------------------------------------------------

loc_5B9:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+CDj
					; _PKCS5_v2_PBKDF2_keyivgen+DAj
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_5CC
		push	dword ptr [eax]
		call	_OBJ_obj2nid
		add	esp, 4
		jmp	short loc_5D1
; ---------------------------------------------------------------------------

loc_5CC:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+F2j
		mov	eax, 0A3h ; '�'

loc_5D1:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+FEj
		push	0
		lea	ecx, [esp+70h+var_54]
		push	ecx
		push	0
		push	eax
		push	1
		call	_EVP_PBE_find
		add	esp, 14h
		test	eax, eax
		jnz	short loc_5FA
		push	129h
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Dh ; '}'
		jmp	loc_69B
; ---------------------------------------------------------------------------

loc_5FA:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+11Bj
		push	[esp+6Ch+var_54]
		call	_OBJ_nid2sn
		push	eax
		call	_EVP_get_digestbyname
		add	esp, 8
		mov	[esp+6Ch+var_50], eax
		test	eax, eax
		jnz	short loc_622
		push	12Fh
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Dh ; '}'
		jmp	short loc_69B
; ---------------------------------------------------------------------------

loc_622:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+146j
		mov	eax, [ebx]
		cmp	dword ptr [eax], 4
		jz	short loc_637
		push	134h
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	7Eh ; '~'
		jmp	short loc_69B
; ---------------------------------------------------------------------------

loc_637:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+15Bj
		mov	eax, [eax+4]
		push	dword ptr [ebx+4]
		mov	edi, [eax+8]
		mov	esi, [eax]
		call	_ASN1_INTEGER_get
		lea	ecx, [esp+70h+Dst]
		push	ecx		; Dst
		push	ebp		; int
		push	[esp+78h+var_50] ; int
		push	eax		; int
		push	esi		; int
		push	edi		; int
		push	[esp+88h+arg_8]	; int
		push	[esp+8Ch+var_4C] ; int
		call	_PKCS5_PBKDF2_HMAC
		add	esp, 24h
		test	eax, eax
		jz	short $err$19
		push	[esp+6Ch+arg_18]
		lea	eax, [esp+70h+Dst]
		push	0
		push	eax
		push	0
		push	0
		push	[esp+80h+var_48]
		call	_EVP_CipherInit_ex
		add	esp, 18h
		mov	[esp+6Ch+var_5C], eax
		jmp	short $err$19
; ---------------------------------------------------------------------------

loc_68F:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+83j
					; _PKCS5_v2_PBKDF2_keyivgen+8Cj
		push	10Eh

loc_694:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+B8j
		push	offset ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ ; ".\\crypto\\evp\\p5_crpt2.c"
		push	72h ; 'r'

loc_69B:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+55j
					; _PKCS5_v2_PBKDF2_keyivgen+E8j ...
		push	0A4h ; '�'
		push	6
		call	_ERR_put_error
		add	esp, 14h

$err$19:				; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+19Dj
					; _PKCS5_v2_PBKDF2_keyivgen+1C1j
		lea	eax, [esp+6Ch+Dst]
		push	ebp
		push	eax
		call	_OPENSSL_cleanse
		push	ebx
		call	_PBKDF2PARAM_free
		mov	ecx, [esp+78h+var_4]
		add	esp, 0Ch
		mov	eax, [esp+6Ch+var_5C]
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 5Ch
		retn
_PKCS5_v2_PBKDF2_keyivgen endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 6D8h
; COMDAT (pick any)
		public ??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@
; `string'
??_C@_0BI@BNAJCHDH@?4?2crypto?2evp?2p5_crpt2?4c?$AA@ db	'.\crypto\evp\p5_crpt2.c',0
					; DATA XREF: _PKCS5_v2_PBE_keyivgen+64o
					; _PKCS5_v2_PBE_keyivgen+92o ...
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 6F0h
; COMDAT (pick any)
		public ??_C@_0BF@JMOFLBJO@keylen?5?$DM?$DN?5sizeof?5key?$AA@
; `string'
??_C@_0BF@JMOFLBJO@keylen?5?$DM?$DN?5sizeof?5key?$AA@ db 'keylen <= sizeof key',0
					; DATA XREF: _PKCS5_v2_PBKDF2_keyivgen+6Ao
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _OPENSSL_cleanse:near ; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+1E4p
		extrn _OpenSSLDie:near	; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+79p
		extrn _ERR_put_error:near ; CODE XREF: _PKCS5_v2_PBE_keyivgen+11Bp
					; _PKCS5_v2_PBKDF2_keyivgen+1D6p
		extrn _ASN1_INTEGER_get:near ; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+D0p
					; _PKCS5_v2_PBKDF2_keyivgen+176p
		extrn _OBJ_nid2sn:near	; CODE XREF: _PKCS5_v2_PBE_keyivgen+7Bp
					; _PKCS5_v2_PBKDF2_keyivgen+132p
		extrn _OBJ_obj2nid:near	; CODE XREF: _PKCS5_v2_PBE_keyivgen+52p
					; _PKCS5_v2_PBE_keyivgen+75p ...
		extrn _EVP_MD_size:near	; CODE XREF: _PKCS5_PBKDF2_HMAC+44p
		extrn _EVP_CIPHER_CTX_cipher:near ; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+3Ap
		extrn _EVP_CIPHER_CTX_key_length:near
					; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+5Bp
					; _PKCS5_v2_PBKDF2_keyivgen+BEp
		extrn _EVP_CipherInit_ex:near ;	CODE XREF: _PKCS5_v2_PBE_keyivgen+ABp
					; _PKCS5_v2_PBKDF2_keyivgen+1B5p
		extrn _EVP_sha1:near	; CODE XREF: _PKCS5_PBKDF2_HMAC_SHA1+8p
		extrn _EVP_get_cipherbyname:near ; CODE	XREF: _PKCS5_v2_PBE_keyivgen+81p
		extrn _EVP_get_digestbyname:near ; CODE	XREF: _PKCS5_v2_PBKDF2_keyivgen+138p
		extrn _EVP_CIPHER_asn1_to_param:near ; CODE XREF: _PKCS5_v2_PBE_keyivgen+BEp
		extrn _EVP_PBE_find:near ; CODE	XREF: _PKCS5_v2_PBKDF2_keyivgen+111p
		extrn _PBE2PARAM_free:near ; CODE XREF:	_PKCS5_v2_PBE_keyivgen+FDp
					; _PKCS5_v2_PBE_keyivgen+124p
		extrn _d2i_PBE2PARAM:near ; CODE XREF: _PKCS5_v2_PBE_keyivgen+36p
		extrn _PBKDF2PARAM_free:near ; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+1EAp
		extrn _d2i_PBKDF2PARAM:near ; CODE XREF: _PKCS5_v2_PBKDF2_keyivgen+A5p
		extrn _HMAC_CTX_init:near ; CODE XREF: _PKCS5_PBKDF2_HMAC+5Cp
		extrn _HMAC_CTX_cleanup:near ; CODE XREF: _PKCS5_PBKDF2_HMAC+AAp
					; _PKCS5_PBKDF2_HMAC+188p ...
		extrn _HMAC_Init_ex:near ; CODE	XREF: _PKCS5_PBKDF2_HMAC+96p
		extrn _HMAC_Update:near	; CODE XREF: _PKCS5_PBKDF2_HMAC+138p
					; _PKCS5_PBKDF2_HMAC+154p ...
		extrn _HMAC_Final:near	; CODE XREF: _PKCS5_PBKDF2_HMAC+173p
					; _PKCS5_PBKDF2_HMAC+20Ap
		extrn _HMAC_CTX_copy:near ; CODE XREF: _PKCS5_PBKDF2_HMAC+118p
					; _PKCS5_PBKDF2_HMAC+1CDp
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _PKCS5_PBKDF2_HMAC+C0p
					; _PKCS5_PBKDF2_HMAC+32Dp ...
		extrn __chkstk:near	; CODE XREF: _PKCS5_PBKDF2_HMAC+5p
					; _PKCS5_v2_PBKDF2_keyivgen+5p
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn _memcpy:near	; CODE XREF: _PKCS5_PBKDF2_HMAC+197p
		extrn ___security_cookie:near ;	DATA XREF: _PKCS5_PBKDF2_HMAC+Ar
					; _PKCS5_v2_PBKDF2_keyivgen+Ar


		end