;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	E6663E1AFFAF6BE36990AA0368FC1FE6
; Input	CRC32 :	E29EF783

; File Name   :	C:\compspace\Diff\openssl\obj\rsa_oaep.obj
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


		public _PKCS1_MGF1
_PKCS1_MGF1	proc near		; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+176p
					; _RSA_padding_add_PKCS1_OAEP_mgf1+23Fp ...

var_74		= byte ptr -74h
var_73		= byte ptr -73h
var_72		= byte ptr -72h
var_71		= byte ptr -71h
var_70		= dword	ptr -70h
var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
var_5C		= byte ptr -5Ch
Src		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		mov	eax, 74h ; 't'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+74h+var_4], eax
		mov	eax, [esp+74h+arg_0]
		push	ebx
		mov	ebx, [esp+78h+arg_10]
		mov	[esp+78h+var_70], eax
		mov	eax, [esp+78h+arg_8]
		push	ebp
		mov	[esp+7Ch+var_64], eax
		lea	eax, [esp+7Ch+var_5C]
		push	esi
		push	eax
		mov	[esp+84h+var_68], ebx
		xor	esi, esi
		mov	[esp+84h+var_6C], 0FFFFFFFFh
		call	_EVP_MD_CTX_init
		push	ebx
		call	_EVP_MD_size
		mov	ebp, eax
		add	esp, 8
		mov	[esp+80h+var_60], ebp
		test	ebp, ebp
		js	$err$22
		push	edi
		mov	edi, [esp+84h+arg_4]
		xor	ebx, ebx
		test	edi, edi
		jle	loc_147

loc_73:					; CODE XREF: _PKCS1_MGF1+141j
		mov	eax, ebx
		mov	[esp+84h+var_71], bl
		sar	eax, 18h
		mov	[esp+84h+var_74], al
		mov	eax, ebx
		sar	eax, 10h
		mov	[esp+84h+var_73], al
		mov	eax, ebx
		sar	eax, 8
		push	0
		push	[esp+88h+var_68]
		mov	[esp+8Ch+var_72], al
		lea	eax, [esp+8Ch+var_5C]
		push	eax
		call	_EVP_DigestInit_ex
		add	esp, 0Ch
		test	eax, eax
		jz	loc_14F
		push	[esp+84h+arg_C]
		lea	eax, [esp+88h+var_5C]
		push	[esp+88h+var_64]
		push	eax
		call	_EVP_DigestUpdate
		add	esp, 0Ch
		test	eax, eax
		jz	loc_14F
		push	4
		lea	eax, [esp+88h+var_74]
		push	eax
		lea	eax, [esp+8Ch+var_5C]
		push	eax
		call	_EVP_DigestUpdate
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_14F
		add	ebp, esi
		push	0
		cmp	ebp, edi
		jg	short loc_109
		mov	eax, [esp+88h+var_70]
		add	eax, esi
		push	eax
		lea	eax, [esp+8Ch+var_5C]
		push	eax
		call	_EVP_DigestFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_14F
		mov	esi, ebp
		jmp	short loc_13A
; ---------------------------------------------------------------------------

loc_109:				; CODE XREF: _PKCS1_MGF1+EBj
		lea	eax, [esp+88h+Src]
		push	eax
		lea	eax, [esp+8Ch+var_5C]
		push	eax
		call	_EVP_DigestFinal_ex
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_14F
		mov	eax, edi
		sub	eax, esi
		push	eax		; Size
		lea	eax, [esp+88h+Src]
		push	eax		; Src
		mov	eax, [esp+8Ch+var_70]
		add	eax, esi
		push	eax		; Dst
		call	_memcpy
		add	esp, 0Ch
		mov	esi, edi

loc_13A:				; CODE XREF: _PKCS1_MGF1+107j
		mov	ebp, [esp+84h+var_60]
		inc	ebx
		cmp	esi, edi
		jl	loc_73

loc_147:				; CODE XREF: _PKCS1_MGF1+6Dj
		mov	[esp+84h+var_6C], 0

loc_14F:				; CODE XREF: _PKCS1_MGF1+A7j
					; _PKCS1_MGF1+C7j ...
		pop	edi

$err$22:				; CODE XREF: _PKCS1_MGF1+5Bj
		lea	eax, [esp+80h+var_5C]
		push	eax
		call	_EVP_MD_CTX_cleanup
		mov	ecx, [esp+84h+var_4]
		add	esp, 4
		mov	eax, [esp+80h+var_6C]
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 74h
		retn
_PKCS1_MGF1	endp

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


		public _RSA_padding_add_PKCS1_OAEP
_RSA_padding_add_PKCS1_OAEP proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		push	0
		push	0
		push	[esp+8+arg_14]
		push	[esp+0Ch+arg_10]
		push	[esp+10h+arg_C]
		push	[esp+14h+arg_8]
		push	[esp+18h+arg_4]
		push	[esp+1Ch+arg_0]
		call	_RSA_padding_add_PKCS1_OAEP_mgf1
		add	esp, 20h
		retn
_RSA_padding_add_PKCS1_OAEP endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1A0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _RSA_padding_add_PKCS1_OAEP_mgf1
_RSA_padding_add_PKCS1_OAEP_mgf1 proc near ; CODE XREF:	_RSA_padding_add_PKCS1_OAEP+1Cp

var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
Src		= dword	ptr -5Ch
Size		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
var_44		= byte ptr -44h
var_34		= byte ptr -34h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch
arg_1C		= dword	ptr  20h

		mov	eax, 68h ; 'h'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+68h+var_4], eax
		mov	eax, [esp+68h+arg_0]
		mov	ecx, [esp+68h+arg_18]
		push	ebx
		mov	ebx, [esp+6Ch+arg_C]
		push	ebp
		mov	ebp, [esp+70h+arg_1C]
		push	esi
		push	edi
		mov	edi, [esp+78h+arg_4]
		mov	[esp+78h+var_64], eax
		dec	edi
		mov	eax, [esp+78h+arg_8]
		mov	[esp+78h+Src], eax
		mov	eax, [esp+78h+arg_10]
		mov	[esp+78h+Size],	ebx
		mov	[esp+78h+var_4C], eax
		mov	[esp+78h+var_68], ecx
		test	ecx, ecx
		jnz	short loc_208
		call	_EVP_sha1
		mov	ecx, eax
		mov	[esp+78h+var_68], eax

loc_208:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+5Bj
		test	ebp, ebp
		push	ecx
		cmovz	ebp, ecx
		mov	[esp+7Ch+var_50], ebp
		call	_EVP_MD_size
		mov	esi, eax
		mov	ecx, edi
		add	esp, 4
		mov	[esp+78h+var_54], esi
		lea	eax, [esi+esi]
		sub	ecx, eax
		mov	[esp+78h+var_60], ecx
		dec	ecx
		cmp	ebx, ecx
		jle	short loc_25D
		push	3Ah ; ':'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	6Eh ; 'n'

loc_239:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+CBj
					; _RSA_padding_add_PKCS1_OAEP_mgf1+169j
		push	0A0h ; '�'
		push	4
		call	_ERR_put_error
		add	esp, 14h

loc_248:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+102j
					; _RSA_padding_add_PKCS1_OAEP_mgf1+140j ...
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		mov	ecx, [esp+68h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 68h
		retn
; ---------------------------------------------------------------------------

loc_25D:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+8Ej
		inc	eax
		cmp	edi, eax
		jge	short loc_26D
		push	40h ; '@'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	78h ; 'x'
		jmp	short loc_239
; ---------------------------------------------------------------------------

loc_26D:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+C0j
		mov	eax, [esp+78h+var_64]
		push	0
		push	[esp+7Ch+var_68]
		lea	ebp, [eax+1]
		mov	byte ptr [eax],	0
		push	0
		add	ebp, esi
		lea	ebx, [eax+1]
		push	ebp
		push	[esp+88h+arg_14]
		mov	[esp+8Ch+var_64], ebx
		push	[esp+8Ch+var_4C]
		mov	[esp+90h+var_48], ebp
		call	_EVP_Digest
		add	esp, 18h
		test	eax, eax
		jz	short loc_248
		mov	eax, [esp+78h+var_60]
		sub	eax, [esp+78h+Size]
		dec	eax
		push	eax		; Size
		lea	eax, [esi+ebp]
		push	0		; Val
		push	eax		; Dst
		call	_memset
		mov	ecx, [esp+84h+Size]
		mov	eax, ebp
		sub	eax, ecx
		sub	eax, esi
		push	ecx		; Size
		push	[esp+88h+Src]	; Src
		add	eax, edi
		push	eax		; Dst
		mov	byte ptr [eax-1], 1
		call	_memcpy
		push	esi
		push	ebx
		call	_RAND_bytes
		add	esp, 20h
		test	eax, eax
		jle	loc_248
		push	55h ; 'U'
		sub	edi, esi
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	edi
		call	_CRYPTO_malloc
		add	esp, 0Ch
		mov	[esp+78h+var_68], eax
		test	eax, eax
		jnz	short loc_30E
		push	57h ; 'W'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	41h ; 'A'
		jmp	loc_239
; ---------------------------------------------------------------------------

loc_30E:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+15Ej
		push	[esp+78h+var_50]
		push	esi
		push	ebx
		push	edi
		push	eax
		call	_PKCS1_MGF1
		add	esp, 14h
		test	eax, eax
		js	loc_248
		xor	ebx, ebx
		test	edi, edi
		jle	loc_3D3
		mov	edx, [esp+78h+var_68]
		cmp	edi, 20h ; ' '
		jb	short loc_3B2
		lea	eax, [edx-1]
		lea	ecx, [ebp-1]
		add	eax, edi
		add	ecx, edi
		cmp	ebp, eax
		ja	short loc_34B
		cmp	ecx, edx
		jnb	short loc_3B2

loc_34B:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+1A5j
		mov	eax, edi
		and	eax, 8000001Fh
		jns	short loc_359
		dec	eax
		or	eax, 0FFFFFFE0h
		inc	eax

loc_359:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+1B2j
		mov	ecx, edi
		mov	esi, edx
		sub	ecx, eax
		sub	esi, ebp
		mov	[esp+78h+Src], esi
		mov	eax, ebp
		lea	esi, [edx+10h]
		mov	edx, [esp+78h+Src]
		mov	[esp+78h+var_60], esi
		mov	esi, [esp+78h+var_54]
		mov	ebp, [esp+78h+var_60]
		nop	word ptr [eax+eax+00h]

loc_380:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+208j
		movups	xmm0, xmmword ptr [eax]
		lea	eax, [eax+20h]
		movups	xmm1, xmmword ptr [edx+eax-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-20h], xmm1
		movups	xmm1, xmmword ptr [ebx+ebp]
		add	ebx, 20h ; ' '
		movups	xmm0, xmmword ptr [eax-10h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-10h], xmm1
		cmp	ebx, ecx
		jl	short loc_380
		mov	ebp, [esp+78h+var_48]
		mov	edx, [esp+78h+var_68]

loc_3B2:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+197j
					; _RSA_padding_add_PKCS1_OAEP_mgf1+1A9j
		cmp	ebx, edi
		jge	short loc_3D3
		mov	esi, edx
		lea	ecx, [ebx+ebp]
		mov	edx, edi
		sub	esi, ebp
		sub	edx, ebx

loc_3C1:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+22Dj
		mov	al, [ecx+esi]
		lea	ecx, [ecx+1]
		xor	[ecx-1], al
		sub	edx, 1
		jnz	short loc_3C1
		mov	esi, [esp+78h+var_54]

loc_3D3:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+18Aj
					; _RSA_padding_add_PKCS1_OAEP_mgf1+214j
		push	[esp+78h+var_50]
		lea	eax, [esp+7Ch+var_44]
		push	edi
		push	ebp
		push	esi
		push	eax
		call	_PKCS1_MGF1
		add	esp, 14h
		test	eax, eax
		js	loc_248
		xor	edx, edx
		test	esi, esi
		jle	loc_47F
		mov	ebx, [esp+78h+var_64]
		cmp	esi, 20h ; ' '
		jb	short loc_462
		lea	ecx, [ebx-1]
		lea	eax, [esp+esi+78h+var_48+3]
		add	ecx, esi
		cmp	ebx, eax
		ja	short loc_417
		lea	eax, [esp+78h+var_44]
		cmp	ecx, eax
		jnb	short loc_462

loc_417:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+26Dj
		mov	eax, esi
		and	eax, 8000001Fh
		jns	short loc_425
		dec	eax
		or	eax, 0FFFFFFE0h
		inc	eax

loc_425:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+27Ej
		mov	ecx, esi
		lea	edi, [esp+78h+var_44]
		sub	ecx, eax
		lea	ebp, [esp+78h+var_34]
		sub	edi, ebx
		mov	eax, ebx
		sub	ebp, ebx

loc_437:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+2C0j
		movups	xmm0, xmmword ptr [eax]
		add	edx, 20h ; ' '
		lea	eax, [eax+20h]
		movups	xmm1, xmmword ptr [edi+eax-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-20h], xmm1
		movups	xmm0, xmmword ptr [eax-10h]
		movups	xmm1, xmmword ptr [eax+ebp-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-10h], xmm1
		cmp	edx, ecx
		jl	short loc_437

loc_462:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+260j
					; _RSA_padding_add_PKCS1_OAEP_mgf1+275j
		cmp	edx, esi
		jge	short loc_47F
		lea	edi, [esp+78h+var_44]
		sub	edi, ebx
		lea	ecx, [edx+ebx]
		sub	esi, edx

loc_471:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+2DDj
		mov	al, [ecx+edi]
		lea	ecx, [ecx+1]
		xor	[ecx-1], al
		sub	esi, 1
		jnz	short loc_471

loc_47F:				; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+253j
					; _RSA_padding_add_PKCS1_OAEP_mgf1+2C4j
		push	[esp+78h+var_68]
		call	_CRYPTO_free
		mov	ecx, [esp+7Ch+var_4]
		add	esp, 4
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 68h
		retn
_RSA_padding_add_PKCS1_OAEP_mgf1 endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4A4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl RSA_padding_check_PKCS1_OAEP(int,	int, int, int, size_t Size, int, int)
		public _RSA_padding_check_PKCS1_OAEP
_RSA_padding_check_PKCS1_OAEP proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
Size		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		push	0		; int
		push	0		; int
		push	[esp+8+arg_18]	; int
		push	[esp+0Ch+arg_14] ; int
		push	[esp+10h+Size]	; Size
		push	[esp+14h+arg_C]	; int
		push	[esp+18h+arg_8]	; int
		push	[esp+1Ch+arg_4]	; int
		push	[esp+20h+arg_0]	; int
		call	_RSA_padding_check_PKCS1_OAEP_mgf1
		add	esp, 24h
		retn
_RSA_padding_check_PKCS1_OAEP endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4D0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl RSA_padding_check_PKCS1_OAEP_mgf1(int, int, int, int, size_t Size, int, int, int,	int)
		public _RSA_padding_check_PKCS1_OAEP_mgf1
_RSA_padding_check_PKCS1_OAEP_mgf1 proc	near ; CODE XREF: _RSA_padding_check_PKCS1_OAEP+20p

Src		= dword	ptr -0B0h
var_AC		= dword	ptr -0ACh
var_A8		= dword	ptr -0A8h
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_9C		= dword	ptr -9Ch
var_98		= dword	ptr -98h
var_94		= dword	ptr -94h
var_90		= dword	ptr -90h
var_8C		= dword	ptr -8Ch
Dst		= dword	ptr -88h
var_84		= byte ptr -84h
var_44		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
Size		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch
arg_1C		= dword	ptr  20h
arg_20		= dword	ptr  24h

		mov	eax, 0B0h ; '�'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+0B0h+var_4], eax
		mov	eax, [esp+0B0h+arg_0]
		mov	ecx, [esp+0B0h+arg_1C]
		push	ebx
		mov	ebx, [esp+0B4h+arg_C]
		mov	[esp+0B4h+Dst],	eax
		mov	eax, [esp+0B4h+arg_8]
		push	ebp
		mov	[esp+0B8h+Src],	eax
		xor	ebp, ebp
		mov	eax, [esp+0B8h+arg_14]
		push	esi
		mov	esi, [esp+0BCh+Size]
		mov	[esp+0BCh+var_8C], eax
		xor	eax, eax
		mov	[esp+0BCh+var_A0], ebx
		mov	[esp+0BCh+var_A8], ecx
		mov	[esp+0BCh+var_98], 0
		mov	[esp+0BCh+var_A4], eax
		push	edi
		mov	edi, [esp+0C0h+arg_20]
		test	ecx, ecx
		jnz	short loc_550
		call	_EVP_sha1
		mov	ecx, eax
		mov	[esp+0C0h+var_A8], eax

loc_550:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+73j
		test	edi, edi
		push	ecx
		cmovz	edi, ecx
		mov	[esp+0C4h+var_90], edi
		call	_EVP_MD_size
		add	esp, 4
		mov	edi, eax
		mov	[esp+0C0h+var_9C], edi
		cmp	[esp+0C0h+arg_4], ebp
		jle	loc_8FB
		test	ebx, ebx
		jle	loc_8FB
		cmp	esi, ebx
		jl	loc_889
		lea	eax, ds:2[edi*2]
		cmp	esi, eax
		jl	loc_889
		mov	ebx, esi
		push	97h ; '�'
		sub	ebx, edi
		dec	ebx
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	ebx
		mov	[esp+0CCh+var_AC], ebx
		call	_CRYPTO_malloc
		push	98h ; '�'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	esi
		mov	ebp, eax
		call	_CRYPTO_malloc
		add	esp, 18h
		mov	[esp+0C0h+var_A4], eax
		test	ebp, ebp
		jz	loc_8BB
		test	eax, eax
		jz	loc_8BB
		push	esi		; Size
		push	0		; Val
		push	eax		; Dst
		call	_memset
		mov	eax, [esp+0CCh+var_A0]
		sub	esi, eax
		add	esi, [esp+0CCh+var_A4]
		push	eax		; Size
		push	[esp+0D0h+Src]	; Src
		push	esi		; Dst
		call	_memcpy
		mov	edx, [esp+0D8h+var_A4]
		push	[esp+0D8h+var_90]
		push	ebx
		movzx	eax, byte ptr [edx]
		lea	esi, [edx+1]
		lea	ecx, [eax-1]
		not	eax
		shr	eax, 1Fh
		shr	ecx, 1Fh
		and	ecx, eax
		lea	eax, [edx+1]
		add	eax, edi
		neg	ecx
		push	eax
		mov	[esp+0E4h+var_A0], eax
		lea	eax, [esp+0E4h+var_84]
		push	edi
		push	eax
		mov	[esp+0ECh+Src],	ecx
		call	_PKCS1_MGF1
		add	esp, 2Ch
		test	eax, eax
		jnz	loc_8D6
		xor	edx, edx
		test	edi, edi
		jle	loc_6E0
		cmp	edi, 20h ; ' '
		jb	short loc_6BF
		lea	eax, [esi-1]
		lea	ebx, [esp+0C0h+var_84]
		add	eax, edi
		cmp	ebx, eax
		lea	ecx, [esp+edi+0C0h+Dst+3]
		mov	ebx, [esp+0C0h+var_AC]
		ja	short loc_65E
		cmp	ecx, esi
		jnb	short loc_6BF

loc_65E:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+188j
		mov	eax, edi
		and	eax, 8000001Fh
		jns	short loc_66C
		dec	eax
		or	eax, 0FFFFFFE0h
		inc	eax

loc_66C:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+195j
		mov	ecx, edi
		mov	edi, esi
		sub	ecx, eax
		lea	eax, [esp+0C0h+var_84]
		mov	ebx, eax
		sub	edi, ebx
		mov	[esp+0C0h+var_94], edi
		mov	edi, [esp+0C0h+var_9C]
		mov	ebx, [esp+0C0h+var_94]
		db	66h, 66h
		nop	word ptr [eax+eax+00000000h]

loc_690:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+1E9j
		movups	xmm0, xmmword ptr [eax]
		lea	eax, [eax+20h]
		movups	xmm1, xmmword ptr [ebx+eax-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-20h], xmm1
		movups	xmm1, xmmword ptr [esi+edx+10h]
		add	edx, 20h ; ' '
		movups	xmm0, xmmword ptr [eax-10h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-10h], xmm1
		cmp	edx, ecx
		jl	short loc_690
		mov	ebx, [esp+0C0h+var_AC]

loc_6BF:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+173j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+18Cj
		cmp	edx, edi
		jge	short loc_6E0
		lea	eax, [esp+0C0h+var_84]
		sub	esi, eax
		nop	dword ptr [eax+00000000h]

loc_6D0:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+20Ej
		lea	ecx, [esp+0C0h+var_84]
		add	ecx, edx
		inc	edx
		mov	al, [esi+ecx]
		xor	[ecx], al
		cmp	edx, edi
		jl	short loc_6D0

loc_6E0:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+16Aj
					; _RSA_padding_check_PKCS1_OAEP_mgf1+1F1j
		push	[esp+0C0h+var_90]
		lea	eax, [esp+0C4h+var_84]
		push	edi
		push	eax
		push	ebx
		push	ebp
		call	_PKCS1_MGF1
		add	esp, 14h
		test	eax, eax
		jnz	loc_8D6
		xor	esi, esi
		test	ebx, ebx
		jle	loc_7A2
		cmp	ebx, 20h ; ' '
		jb	short loc_77E
		mov	ecx, [esp+0C0h+var_A0]
		lea	edx, [ebp-1]
		add	edx, ebx
		lea	eax, [ecx-1]
		add	eax, ebx
		cmp	ebp, eax
		ja	short loc_721
		cmp	edx, ecx
		jnb	short loc_77E

loc_721:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+24Bj
		mov	eax, ebx
		and	eax, 8000001Fh
		jns	short loc_72F
		dec	eax
		or	eax, 0FFFFFFE0h
		inc	eax

loc_72F:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+258j
		mov	[esp+0C0h+var_AC], ecx
		mov	edx, ebx
		sub	[esp+0C0h+var_AC], ebp
		sub	edx, eax
		add	ecx, 10h
		mov	eax, ebp
		mov	[esp+0C0h+var_94], ecx
		mov	ecx, [esp+0C0h+var_AC]
		mov	edi, [esp+0C0h+var_94]
		nop	dword ptr [eax+00h]

loc_750:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+2A8j
		movups	xmm0, xmmword ptr [eax]
		lea	eax, [eax+20h]
		movups	xmm1, xmmword ptr [ecx+eax-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-20h], xmm1
		movups	xmm1, xmmword ptr [edi+esi]
		add	esi, 20h ; ' '
		movups	xmm0, xmmword ptr [eax-10h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax-10h], xmm1
		cmp	esi, edx
		jl	short loc_750
		mov	edi, [esp+0C0h+var_9C]

loc_77E:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+239j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+24Fj
		cmp	esi, ebx
		jge	short loc_7A2
		mov	edi, [esp+0C0h+var_A0]
		lea	ecx, [esi+ebp]
		mov	edx, ebx
		sub	edi, ebp
		sub	edx, esi
		nop

loc_790:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+2CCj
		mov	al, [ecx+edi]
		lea	ecx, [ecx+1]
		xor	[ecx-1], al
		sub	edx, 1
		jnz	short loc_790
		mov	edi, [esp+0C0h+var_9C]

loc_7A2:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+230j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+2B0j
		push	0
		push	[esp+0C4h+var_A8]
		lea	eax, [esp+0C8h+var_44]
		push	0
		push	eax
		push	[esp+0D0h+arg_18]
		push	[esp+0D4h+var_8C]
		call	_EVP_Digest
		add	esp, 18h
		test	eax, eax
		jz	loc_8D6
		push	edi
		lea	eax, [esp+0C4h+var_44]
		push	eax
		push	ebp
		call	_CRYPTO_memcmp
		mov	edx, [esp+0CCh+Src]
		add	esp, 0Ch
		lea	ecx, [eax-1]
		not	eax
		shr	ecx, 1Fh
		shr	eax, 1Fh
		and	ecx, eax
		neg	ecx
		and	edx, ecx
		xor	ecx, ecx
		mov	[esp+0C0h+Src],	edx
		mov	[esp+0C0h+var_A8], ecx
		cmp	edi, ebx
		jge	short loc_858

loc_802:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+386j
		movzx	esi, byte ptr [edi+ebp]
		not	ecx
		mov	eax, esi
		xor	eax, 1
		lea	edx, [eax-1]
		not	eax
		shr	eax, 1Fh
		shr	edx, 1Fh
		and	edx, eax
		neg	edx
		and	ecx, edx
		mov	eax, ecx
		and	ecx, edi
		not	eax
		inc	edi
		and	eax, [esp+0C0h+var_98]
		or	eax, ecx
		mov	ecx, [esp+0C0h+var_A8]
		mov	[esp+0C0h+var_98], eax
		or	ecx, edx
		mov	edx, [esp+0C0h+Src]
		lea	eax, [esi-1]
		shr	eax, 1Fh
		not	esi
		shr	esi, 1Fh
		and	eax, esi
		mov	[esp+0C0h+var_A8], ecx
		neg	eax
		or	eax, ecx
		and	edx, eax
		mov	[esp+0C0h+Src],	edx
		cmp	edi, ebx
		jl	short loc_802

loc_858:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+330j
		test	edx, ecx
		jz	short loc_889
		mov	eax, [esp+0C0h+var_98]
		mov	esi, ebx
		inc	eax
		sub	esi, eax
		cmp	[esp+0C0h+arg_4], esi
		jge	short loc_8A9
		push	0DDh ; '�'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	6Dh ; 'm'
		push	0A1h ; '�'
		push	4
		call	_ERR_put_error
		add	esp, 14h

loc_889:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+AFj
					; _RSA_padding_check_PKCS1_OAEP_mgf1+BEj ...
		or	esi, 0FFFFFFFFh

$decoding_err$86:
		push	0EAh ; '�'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	79h ; 'y'
		push	0A1h ; '�'
		push	4
		call	_ERR_put_error
		add	esp, 14h
		jmp	short $cleanup$87
; ---------------------------------------------------------------------------

loc_8A9:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+39Cj
		push	esi		; Size
		add	eax, ebp
		push	eax		; Src
		push	[esp+0C8h+Dst]	; Dst
		call	_memcpy
		add	esp, 0Ch
		jmp	short $cleanup$87
; ---------------------------------------------------------------------------

loc_8BB:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+F8j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+100j
		push	9Ah ; '�'
		push	offset ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ ; ".\\crypto\\rsa\\rsa_oaep.c"
		push	41h ; 'A'
		push	0A1h ; '�'
		push	4
		call	_ERR_put_error
		add	esp, 14h

loc_8D6:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+160j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+226j ...
		or	esi, 0FFFFFFFFh

$cleanup$87:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+3D7j
					; _RSA_padding_check_PKCS1_OAEP_mgf1+3E9j
		test	ebp, ebp
		jz	short loc_8E6
		push	ebp
		call	_CRYPTO_free
		add	esp, 4

loc_8E6:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+40Bj
		mov	eax, [esp+0C0h+var_A4]
		test	eax, eax
		jz	short loc_8F7
		push	eax
		call	_CRYPTO_free
		add	esp, 4

loc_8F7:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+41Cj
		mov	eax, esi
		jmp	short loc_8FE
; ---------------------------------------------------------------------------

loc_8FB:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+9Fj
					; _RSA_padding_check_PKCS1_OAEP_mgf1+A7j
		or	eax, 0FFFFFFFFh

loc_8FE:				; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+429j
		mov	ecx, [esp+0C0h+var_4]
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 0B0h
		retn
_RSA_padding_check_PKCS1_OAEP_mgf1 endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 918h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_constant_time_eq proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	ecx, [esp+arg_0]
		xor	ecx, [esp+arg_4]
		lea	eax, [ecx-1]
		not	ecx
		shr	eax, 1Fh
		shr	ecx, 1Fh
		and	eax, ecx
		neg	eax
		retn
_constant_time_eq endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 930h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_constant_time_is_zero proc near

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		lea	eax, [ecx-1]
		not	ecx
		shr	eax, 1Fh
		shr	ecx, 1Fh
		and	eax, ecx
		neg	eax
		retn
_constant_time_is_zero endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 944h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_constant_time_msb proc	near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		shr	eax, 1Fh
		neg	eax
		retn
_constant_time_msb endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 950h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_constant_time_select proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		mov	eax, ecx
		and	ecx, [esp+arg_4]
		not	eax
		and	eax, [esp+arg_8]
		or	eax, ecx
		retn
_constant_time_select endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 964h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_constant_time_select_int proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		mov	eax, ecx
		and	ecx, [esp+arg_4]
		not	eax
		and	eax, [esp+arg_8]
		or	eax, ecx
		retn
_constant_time_select_int endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 978h
; COMDAT (pick any)
		public ??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@
; `string'
??_C@_0BI@HCBPDHLA@?4?2crypto?2rsa?2rsa_oaep?4c?$AA@ db	'.\crypto\rsa\rsa_oaep.c',0
					; DATA XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+92o
					; _RSA_padding_add_PKCS1_OAEP_mgf1+C4o	...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _CRYPTO_malloc:near ; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+150p
					; _RSA_padding_check_PKCS1_OAEP_mgf1+D8p ...
		extrn _CRYPTO_free:near	; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+2E3p
					; _RSA_padding_check_PKCS1_OAEP_mgf1+40Ep ...
		extrn _CRYPTO_memcmp:near
					; CODE XREF: _RSA_padding_check_PKCS1_OAEP_mgf1+307p
		extrn _ERR_put_error:near ; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+A0p
					; _RSA_padding_check_PKCS1_OAEP_mgf1+3B1p ...
		extrn _EVP_MD_size:near	; CODE XREF: _PKCS1_MGF1+4Bp
					; _RSA_padding_add_PKCS1_OAEP_mgf1+72p	...
		extrn _EVP_MD_CTX_init:near ; CODE XREF: _PKCS1_MGF1+45p
		extrn _EVP_MD_CTX_cleanup:near ; CODE XREF: _PKCS1_MGF1+155p
		extrn _EVP_DigestInit_ex:near ;	CODE XREF: _PKCS1_MGF1+9Dp
		extrn _EVP_DigestUpdate:near ; CODE XREF: _PKCS1_MGF1+BDp
					; _PKCS1_MGF1+D9p
		extrn _EVP_DigestFinal_ex:near ; CODE XREF: _PKCS1_MGF1+F9p
					; _PKCS1_MGF1+113p
		extrn _EVP_Digest:near	; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+F8p
					; _RSA_padding_check_PKCS1_OAEP_mgf1+2EDp
		extrn _EVP_sha1:near	; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+5Dp
					; _RSA_padding_check_PKCS1_OAEP_mgf1+75p
		extrn _RAND_bytes:near	; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+136p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _PKCS1_MGF1+16Dp
					; _RSA_padding_add_PKCS1_OAEP_mgf1+B4p	...
		extrn __chkstk:near	; CODE XREF: _PKCS1_MGF1+5p
					; _RSA_padding_add_PKCS1_OAEP_mgf1+5p ...
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn _memcpy:near	; CODE XREF: _PKCS1_MGF1+130p
					; _RSA_padding_add_PKCS1_OAEP_mgf1+12Fp ...
; void *__cdecl	memset(void *Dst, int Val, size_t Size)
		extrn _memset:near	; CODE XREF: _RSA_padding_add_PKCS1_OAEP_mgf1+114p
					; _RSA_padding_check_PKCS1_OAEP_mgf1+10Ap
		extrn ___security_cookie:near ;	DATA XREF: _PKCS1_MGF1+Ar
					; _RSA_padding_add_PKCS1_OAEP_mgf1+Ar ...


		end
