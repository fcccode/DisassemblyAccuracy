;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	17B55FCB4A30E689534D0468BB1D7854
; Input	CRC32 :	96A29756

; File Name   :	C:\compspace\Diff\openssl\obj\x509_obj.obj
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
; `X509_NAME_oneline'::`2'::hex
?hex@?1??X509_NAME_oneline@@9@9	db 30h	; DATA XREF: _X509_NAME_oneline+2ADr
					; _X509_NAME_oneline+2B7r
a123456789abcde	db '123456789ABCDEF',0
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 14h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl X509_NAME_oneline(int, char *Dest, int)
		public _X509_NAME_oneline
_X509_NAME_oneline proc	near

var_84		= dword	ptr -84h
var_80		= dword	ptr -80h
var_7C		= dword	ptr -7Ch
Src		= dword	ptr -78h
var_74		= dword	ptr -74h
var_70		= dword	ptr -70h
var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
var_5C		= dword	ptr -5Ch
var_58		= dword	ptr -58h
var_54		= byte ptr -54h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
Dest		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 84h ; '�'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+84h+var_4], eax
		push	ebx
		mov	ebx, [esp+88h+Dest]
		push	ebp
		mov	ebp, [esp+8Ch+arg_8]
		push	esi
		xor	esi, esi
		mov	[esp+90h+var_74], ebx
		mov	[esp+90h+var_84], esi
		push	edi
		mov	edi, [esp+94h+arg_0]
		mov	[esp+94h+var_68], edi
		test	ebx, ebx
		jnz	short loc_8C
		call	_BUF_MEM_new
		mov	esi, eax
		mov	[esp+94h+var_84], esi
		test	esi, esi
		jz	$err$75
		push	0C8h ; '�'
		push	esi
		call	_BUF_MEM_grow
		add	esp, 8
		test	eax, eax
		jz	$err$75
		mov	eax, [esi+4]
		mov	ebp, 0C8h ; '�'
		mov	[eax], bl
		jmp	short loc_94
; ---------------------------------------------------------------------------

loc_8C:					; CODE XREF: _X509_NAME_oneline+41j
		test	ebp, ebp
		jz	loc_34F

loc_94:					; CODE XREF: _X509_NAME_oneline+76j
		test	edi, edi
		jnz	short loc_C2
		test	esi, esi
		jz	short loc_A8
		mov	ebx, [esi+4]
		push	esi
		call	_CRYPTO_free
		add	esp, 4

loc_A8:					; CODE XREF: _X509_NAME_oneline+86j
		push	ebp		; Count
		push	offset ??_C@_0N@MJCHLFGM@NO?5X509_NAME?$AA@ ; "NO X509_NAME"
		push	ebx		; Dest
		call	dword ptr ds:__imp__strncpy
		add	esp, 0Ch
		mov	byte ptr [ebx+ebp-1], 0
		jmp	loc_361
; ---------------------------------------------------------------------------

loc_C2:					; CODE XREF: _X509_NAME_oneline+82j
		push	dword ptr [edi]
		dec	ebp
		mov	[esp+98h+var_7C], 0
		xor	ebx, ebx
		mov	[esp+98h+var_70], ebp
		mov	[esp+98h+var_80], ebx
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	loc_2FF

loc_E7:					; CODE XREF: _X509_NAME_oneline+2E5j
		push	ebx
		push	dword ptr [edi]
		call	_sk_value
		mov	ebp, eax
		mov	[esp+9Ch+var_6C], ebp
		push	dword ptr [ebp+0]
		call	_OBJ_obj2nid
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_115
		push	eax
		call	_OBJ_nid2sn
		add	esp, 4
		mov	[esp+94h+Src], eax
		test	eax, eax
		jnz	short loc_12F

loc_115:				; CODE XREF: _X509_NAME_oneline+EEj
		push	dword ptr [ebp+0]
		lea	eax, [esp+98h+var_54]
		push	50h ; 'P'
		push	eax
		call	_i2t_ASN1_OBJECT
		lea	eax, [esp+0A0h+var_54]
		add	esp, 0Ch
		mov	[esp+94h+Src], eax

loc_12F:				; CODE XREF: _X509_NAME_oneline+FFj
		mov	ebx, eax
		lea	ecx, [ebx+1]

loc_134:				; CODE XREF: _X509_NAME_oneline+125j
		mov	al, [ebx]
		inc	ebx
		test	al, al
		jnz	short loc_134
		mov	eax, [ebp+4]
		sub	ebx, ecx
		mov	edi, [eax]
		cmp	edi, 100000h
		jg	loc_32A
		cmp	dword ptr [eax+4], 1Bh
		mov	ebp, [eax+8]
		jnz	short loc_1CF
		mov	eax, edi
		and	eax, 80000003h
		jns	short loc_165
		dec	eax
		or	eax, 0FFFFFFFCh
		inc	eax

loc_165:				; CODE XREF: _X509_NAME_oneline+14Aj
		jnz	short loc_1CF
		xor	edx, edx
		xor	esi, esi
		xor	eax, eax
		mov	[esp+94h+var_5C], edx
		xor	ecx, ecx
		mov	[esp+94h+var_60], esi
		mov	[esp+94h+var_64], eax
		test	edi, edi
		jle	short loc_1A7
		nop	dword ptr [eax+eax+00h]

loc_184:				; CODE XREF: _X509_NAME_oneline+185j
		cmp	[ecx+ebp], dl
		jz	short loc_196
		mov	eax, ecx
		and	eax, 3
		mov	[esp+eax*4+94h+var_64],	1

loc_196:				; CODE XREF: _X509_NAME_oneline+173j
		inc	ecx
		cmp	ecx, edi
		jl	short loc_184
		mov	edx, [esp+94h+var_5C]
		mov	esi, [esp+94h+var_60]
		mov	eax, [esp+94h+var_64]

loc_1A7:				; CODE XREF: _X509_NAME_oneline+169j
		or	eax, esi
		mov	[esp+94h+var_58], 1
		or	eax, edx
		jnz	short loc_1D7
		mov	[esp+94h+var_5C], 0
		mov	[esp+94h+var_60], 0
		mov	[esp+94h+var_64], 0
		jmp	short loc_1EF
; ---------------------------------------------------------------------------

loc_1CF:				; CODE XREF: _X509_NAME_oneline+141j
					; _X509_NAME_oneline:loc_165j
		mov	[esp+94h+var_58], 1

loc_1D7:				; CODE XREF: _X509_NAME_oneline+19Fj
		mov	[esp+94h+var_64], 1
		mov	[esp+94h+var_60], 1
		mov	[esp+94h+var_5C], 1

loc_1EF:				; CODE XREF: _X509_NAME_oneline+1B9j
		xor	ecx, ecx
		xor	edx, edx
		test	edi, edi
		jle	short loc_217

loc_1F7:				; CODE XREF: _X509_NAME_oneline+201j
		mov	eax, ecx
		and	eax, 3
		cmp	[esp+eax*4+94h+var_64],	0
		jz	short loc_212
		mov	al, [ecx+ebp]
		inc	edx
		cmp	al, 20h	; ' '
		jb	short loc_20F
		cmp	al, 7Eh	; '~'
		jbe	short loc_212

loc_20F:				; CODE XREF: _X509_NAME_oneline+1F5j
		add	edx, 3

loc_212:				; CODE XREF: _X509_NAME_oneline+1EDj
					; _X509_NAME_oneline+1F9j
		inc	ecx
		cmp	ecx, edi
		jl	short loc_1F7

loc_217:				; CODE XREF: _X509_NAME_oneline+1E1j
		mov	ecx, [esp+94h+var_7C]
		lea	eax, [edx+ebx]
		mov	ebp, ecx
		add	ecx, 2
		add	ecx, eax
		mov	[esp+94h+var_7C], ecx
		cmp	ecx, 100000h
		jg	loc_323
		mov	esi, [esp+94h+var_84]
		test	esi, esi
		jz	short loc_257
		lea	eax, [ecx+1]
		push	eax
		push	esi
		call	_BUF_MEM_grow
		add	esp, 8
		test	eax, eax
		jz	$err$75
		mov	esi, [esi+4]
		jmp	short loc_265
; ---------------------------------------------------------------------------

loc_257:				; CODE XREF: _X509_NAME_oneline+227j
		cmp	ecx, [esp+94h+var_70]
		jg	loc_353
		mov	esi, [esp+94h+var_74]

loc_265:				; CODE XREF: _X509_NAME_oneline+241j
		add	esi, ebp
		push	ebx		; Size
		push	[esp+98h+Src]	; Src
		mov	byte ptr [esi],	2Fh ; '/'
		inc	esi
		push	esi		; Dst
		call	_memcpy
		mov	eax, [esp+0A0h+var_6C]
		add	esi, ebx
		add	esp, 0Ch
		xor	ecx, ecx
		mov	byte ptr [esi],	3Dh ; '='
		inc	esi
		mov	eax, [eax+4]
		mov	ebx, [eax+8]
		test	edi, edi
		jle	short loc_2DD
		nop	dword ptr [eax+eax+00h]

loc_294:				; CODE XREF: _X509_NAME_oneline+2C7j
		mov	eax, ecx
		and	eax, 3
		cmp	[esp+eax*4+94h+var_64],	0
		jz	short loc_2D8
		movzx	edx, byte ptr [ecx+ebx]
		lea	eax, [edx-20h]
		cmp	eax, 5Eh ; '^'
		ja	short loc_2B1
		mov	[esi], dl
		inc	esi
		jmp	short loc_2D8
; ---------------------------------------------------------------------------

loc_2B1:				; CODE XREF: _X509_NAME_oneline+296j
		mov	eax, edx
		mov	word ptr [esi],	785Ch
		sar	eax, 4
		and	edx, 0Fh
		and	eax, 0Fh
		movzx	eax, ?hex@?1??X509_NAME_oneline@@9@9[eax] ; `X509_NAME_oneline'::`2'::hex
		mov	[esi+2], al
		movzx	eax, ?hex@?1??X509_NAME_oneline@@9@9[edx] ; `X509_NAME_oneline'::`2'::hex
		mov	[esi+3], al
		add	esi, 4

loc_2D8:				; CODE XREF: _X509_NAME_oneline+28Aj
					; _X509_NAME_oneline+29Bj
		inc	ecx
		cmp	ecx, edi
		jl	short loc_294

loc_2DD:				; CODE XREF: _X509_NAME_oneline+279j
		mov	edi, [esp+94h+var_68]
		mov	ebx, [esp+94h+var_80]
		mov	byte ptr [esi],	0
		inc	ebx
		mov	[esp+94h+var_80], ebx
		push	dword ptr [edi]
		call	_sk_num
		add	esp, 4
		cmp	ebx, eax
		jl	loc_E7

loc_2FF:				; CODE XREF: _X509_NAME_oneline+CDj
		mov	eax, [esp+94h+var_84]
		test	eax, eax
		jz	short loc_353
		mov	ebx, [eax+4]
		push	eax
		call	_CRYPTO_free
		add	esp, 4
		jmp	short loc_357
; ---------------------------------------------------------------------------

$err$75:				; CODE XREF: _X509_NAME_oneline+50j
					; _X509_NAME_oneline+66j ...
		push	0E2h ; '�'
		push	offset ??_C@_0BJ@GNDHDHAM@?4?2crypto?2x509?2x509_obj?4c?$AA@ ; ".\\crypto\\x509\\x509_obj.c"
		push	41h ; 'A'
		jmp	short loc_336
; ---------------------------------------------------------------------------

loc_323:				; CODE XREF: _X509_NAME_oneline+21Bj
		push	0ACh ; '�'
		jmp	short loc_32C
; ---------------------------------------------------------------------------

loc_32A:				; CODE XREF: _X509_NAME_oneline+134j
		push	7Bh ; '{'

loc_32C:				; CODE XREF: _X509_NAME_oneline+314j
		push	offset ??_C@_0BJ@GNDHDHAM@?4?2crypto?2x509?2x509_obj?4c?$AA@ ; ".\\crypto\\x509\\x509_obj.c"
		push	86h ; '�'

loc_336:				; CODE XREF: _X509_NAME_oneline+30Dj
		push	74h ; 't'
		push	0Bh
		call	_ERR_put_error
		add	esp, 14h

$end$76:
		mov	eax, [esp+94h+var_84]
		push	eax
		call	_BUF_MEM_free
		add	esp, 4

loc_34F:				; CODE XREF: _X509_NAME_oneline+7Aj
		xor	eax, eax
		jmp	short loc_363
; ---------------------------------------------------------------------------

loc_353:				; CODE XREF: _X509_NAME_oneline+247j
					; _X509_NAME_oneline+2F1j
		mov	ebx, [esp+94h+var_74]

loc_357:				; CODE XREF: _X509_NAME_oneline+2FFj
		cmp	[esp+94h+var_80], 0
		jnz	short loc_361
		mov	byte ptr [ebx],	0

loc_361:				; CODE XREF: _X509_NAME_oneline+A9j
					; _X509_NAME_oneline+348j
		mov	eax, ebx

loc_363:				; CODE XREF: _X509_NAME_oneline+33Dj
		mov	ecx, [esp+94h+var_4]
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 84h
		retn
_X509_NAME_oneline endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 37Ch
; COMDAT (pick any)
		public ??_C@_0N@MJCHLFGM@NO?5X509_NAME?$AA@
; char `string'[]
??_C@_0N@MJCHLFGM@NO?5X509_NAME?$AA@ db	'NO X509_NAME',0 ; DATA XREF: _X509_NAME_oneline+95o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 38Ch
; COMDAT (pick any)
		public ??_C@_0BJ@GNDHDHAM@?4?2crypto?2x509?2x509_obj?4c?$AA@
; `string'
??_C@_0BJ@GNDHDHAM@?4?2crypto?2x509?2x509_obj?4c?$AA@ db '.\crypto\x509\x509_obj.c',0
					; DATA XREF: _X509_NAME_oneline+306o
					; _X509_NAME_oneline:loc_32Co
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; char *__cdecl	_strncpy(char *Dest, const char	*Source, size_t	Count)
		extrn __imp__strncpy:near ; CODE XREF: _X509_NAME_oneline+9Bp
					; DATA XREF: _X509_NAME_oneline+9Br
		extrn _sk_num:near	; CODE XREF: _X509_NAME_oneline+C3p
					; _X509_NAME_oneline+2DBp
		extrn _sk_value:near	; CODE XREF: _X509_NAME_oneline+D6p
		extrn _CRYPTO_free:near	; CODE XREF: _X509_NAME_oneline+8Cp
					; _X509_NAME_oneline+2F7p
		extrn _BUF_MEM_new:near	; CODE XREF: _X509_NAME_oneline+43p
		extrn _BUF_MEM_free:near ; CODE	XREF: _X509_NAME_oneline+333p
		extrn _BUF_MEM_grow:near ; CODE	XREF: _X509_NAME_oneline+5Cp
					; _X509_NAME_oneline+22Ep
		extrn _ERR_put_error:near ; CODE XREF: _X509_NAME_oneline+326p
		extrn _i2t_ASN1_OBJECT:near ; CODE XREF: _X509_NAME_oneline+10Bp
		extrn _OBJ_nid2sn:near	; CODE XREF: _X509_NAME_oneline+F1p
		extrn _OBJ_obj2nid:near	; CODE XREF: _X509_NAME_oneline+E4p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _X509_NAME_oneline+35Cp
		extrn __chkstk:near	; CODE XREF: _X509_NAME_oneline+5p
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn _memcpy:near	; CODE XREF: _X509_NAME_oneline+25Dp
		extrn ___security_cookie:near ;	DATA XREF: _X509_NAME_oneline+Ar


		end