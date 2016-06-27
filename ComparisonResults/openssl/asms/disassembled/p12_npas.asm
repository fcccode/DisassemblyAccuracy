;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	04E9AC5135731FB77D58CA8E0EB2CAF2
; Input	CRC32 :	B7533940

; File Name   :	C:\compspace\Diff\openssl\obj\p12_npas.obj
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


		public _PKCS12_newpass
_PKCS12_newpass	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_25
		push	55h ; 'U'
		push	offset ??_C@_0BL@DDCLOFCJ@?4?2crypto?2pkcs12?2p12_npas?4c?$AA@ ; ".\\crypto\\pkcs12\\p12_npas.c"
		push	69h ; 'i'
		push	80h ; '�'
		push	23h ; '#'
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_25:					; CODE XREF: _PKCS12_newpass+7j
		push	0FFFFFFFFh
		push	[esp+8+arg_4]
		push	esi
		call	_PKCS12_verify_mac
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_54
		push	5Ch ; '\'
		push	offset ??_C@_0BL@DDCLOFCJ@?4?2crypto?2pkcs12?2p12_npas?4c?$AA@ ; ".\\crypto\\pkcs12\\p12_npas.c"
		push	71h ; 'q'
		push	80h ; '�'
		push	23h ; '#'
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_54:					; CODE XREF: _PKCS12_newpass+36j
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	esi
		call	_newpass_p12
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_85
		push	61h ; 'a'
		push	offset ??_C@_0BL@DDCLOFCJ@?4?2crypto?2pkcs12?2p12_npas?4c?$AA@ ; ".\\crypto\\pkcs12\\p12_npas.c"
		push	72h ; 'r'
		push	80h ; '�'
		push	23h ; '#'
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_85:					; CODE XREF: _PKCS12_newpass+67j
		mov	eax, 1
		pop	esi
		retn
_PKCS12_newpass	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 8Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_alg_get	proc near		; CODE XREF: _newpass_bag+56p
					; _newpass_p12+F7p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		push	esi
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	ecx, [edi+4]
		mov	eax, [ecx+4]
		mov	eax, [eax+8]
		mov	[esp+8+arg_0], eax
		mov	eax, [ecx+4]
		push	dword ptr [eax]
		lea	eax, [esp+0Ch+arg_0]
		push	eax
		push	0
		call	_d2i_PBEPARAM
		mov	esi, eax
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_BC
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_BC:					; CODE XREF: _alg_get+2Bj
		push	dword ptr [edi]
		call	_OBJ_obj2nid
		mov	ecx, [esp+0Ch+arg_4]
		mov	[ecx], eax
		push	dword ptr [esi+4]
		call	_ASN1_INTEGER_get
		mov	ecx, [esp+10h+arg_8]
		push	esi
		mov	[ecx], eax
		mov	eax, [esi]
		mov	ecx, [eax]
		mov	eax, [esp+14h+arg_C]
		mov	[eax], ecx
		call	_PBEPARAM_free
		add	esp, 0Ch
		mov	eax, 1
		pop	edi
		pop	esi
		retn
_alg_get	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0F4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_newpass_bag	proc near

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 8
		call	__chkstk
		push	esi
		mov	esi, [esp+0Ch+arg_0]
		push	dword ptr [esi]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 97h ; '�'
		jz	short loc_11E
		mov	eax, 1
		pop	esi
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_11E:				; CODE XREF: _newpass_bag+1Ej
		push	edi
		push	0FFFFFFFFh
		push	[esp+14h+arg_4]
		push	dword ptr [esi+4]
		call	_PKCS8_decrypt
		mov	edi, eax
		add	esp, 0Ch
		test	edi, edi
		jz	short loc_17B
		lea	eax, [esp+10h+var_8]
		push	eax
		lea	eax, [esp+14h+arg_0]
		push	eax
		lea	eax, [esp+18h+var_4]
		push	eax
		mov	eax, [esi+4]
		push	dword ptr [eax]
		call	_alg_get
		add	esp, 10h
		test	eax, eax
		jz	short loc_17B
		push	edi
		push	[esp+14h+arg_0]
		push	[esp+18h+var_8]
		push	0
		push	0FFFFFFFFh
		push	[esp+24h+arg_8]
		push	0
		push	[esp+2Ch+var_4]
		call	_PKCS8_encrypt
		mov	edi, eax
		add	esp, 20h
		test	edi, edi
		jnz	short loc_183

loc_17B:				; CODE XREF: _newpass_bag+40j
					; _newpass_bag+60j
		pop	edi
		xor	eax, eax
		pop	esi
		add	esp, 8
		retn
; ---------------------------------------------------------------------------

loc_183:				; CODE XREF: _newpass_bag+85j
		push	dword ptr [esi+4]
		call	_X509_SIG_free
		add	esp, 4
		mov	[esi+4], edi
		mov	eax, 1
		pop	edi
		pop	esi
		add	esp, 8
		retn
_newpass_bag	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 19Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_newpass_bags	proc near		; CODE XREF: _newpass_p12+119p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 10h
		call	__chkstk
		push	ebx
		push	ebp
		mov	ebp, [esp+18h+arg_0]
		xor	ebx, ebx
		push	esi
		push	edi
		push	ebp
		mov	[esp+24h+var_10], ebx
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	loc_2A2
		nop	dword ptr [eax+00000000h]

loc_1CC:				; CODE XREF: _newpass_bags+100j
		push	ebx
		push	ebp
		call	_sk_value
		mov	esi, eax
		push	dword ptr [esi]
		call	_OBJ_obj2nid
		add	esp, 0Ch
		cmp	eax, 97h ; '�'
		jnz	loc_28C
		push	0FFFFFFFFh
		push	[esp+24h+arg_4]
		push	dword ptr [esi+4]
		call	_PKCS8_decrypt
		add	esp, 0Ch
		mov	[esp+20h+var_4], eax
		test	eax, eax
		jz	loc_2AF
		mov	ecx, [esi+4]
		mov	ebx, [ecx]
		mov	eax, [ebx+4]
		mov	ecx, [eax+4]
		mov	ecx, [ecx+8]
		mov	[esp+20h+var_C], ecx
		mov	eax, [eax+4]
		push	dword ptr [eax]
		lea	eax, [esp+24h+var_C]
		push	eax
		push	0
		call	_d2i_PBEPARAM
		mov	edi, eax
		add	esp, 0Ch
		mov	[esp+20h+var_8], edi
		test	edi, edi
		jz	short loc_2AF
		push	dword ptr [ebx]
		call	_OBJ_obj2nid
		push	dword ptr [edi+4]
		mov	ebp, eax
		call	_ASN1_INTEGER_get
		mov	ecx, [edi]
		mov	ebx, eax
		push	[esp+28h+var_8]
		mov	edi, [ecx]
		call	_PBEPARAM_free
		push	[esp+2Ch+var_4]
		push	ebx
		push	edi
		push	0
		push	0FFFFFFFFh
		push	[esp+40h+arg_8]
		push	0
		push	ebp
		call	_PKCS8_encrypt
		mov	edi, eax
		add	esp, 2Ch
		test	edi, edi
		jz	short loc_2AF
		push	dword ptr [esi+4]
		call	_X509_SIG_free
		mov	ebx, [esp+24h+var_10]
		add	esp, 4
		mov	ebp, [esp+20h+arg_0]
		mov	[esi+4], edi

loc_28C:				; CODE XREF: _newpass_bags+48j
		inc	ebx
		push	ebp
		mov	[esp+24h+var_10], ebx
		call	_sk_num
		add	esp, 4
		cmp	ebx, eax
		jl	loc_1CC

loc_2A2:				; CODE XREF: _newpass_bags+23j
		pop	edi
		pop	esi
		pop	ebp
		mov	eax, 1
		pop	ebx
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------

loc_2AF:				; CODE XREF: _newpass_bags+65j
					; _newpass_bags+99j ...
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		add	esp, 10h
		retn
_newpass_bags	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2BCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_newpass_p12	proc near		; CODE XREF: _PKCS12_newpass+5Dp

var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
var_5C		= dword	ptr -5Ch
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
var_44		= byte ptr -44h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 6Ch ; 'l'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+6Ch+var_4], eax
		mov	eax, [esp+6Ch+arg_4]
		push	ebp
		push	esi
		mov	esi, [esp+74h+arg_0]
		mov	[esp+74h+var_68], eax
		mov	eax, [esp+74h+arg_8]
		push	esi
		mov	[esp+78h+var_4C], esi
		mov	[esp+78h+var_50], eax
		mov	[esp+78h+var_5C], 0
		mov	[esp+78h+var_64], 0
		mov	[esp+78h+var_60], 0
		mov	[esp+78h+var_6C], 0
		call	_PKCS12_unpack_authsafes
		mov	ebp, eax
		add	esp, 4
		test	ebp, ebp
		jnz	short loc_330

loc_31D:				; CODE XREF: _newpass_p12+7Fj
		pop	esi
		xor	eax, eax
		pop	ebp
		mov	ecx, [esp+6Ch+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_330:				; CODE XREF: _newpass_p12+5Fj
		call	_sk_new_null
		mov	[esp+74h+var_54], eax
		test	eax, eax
		jz	short loc_31D
		push	ebx
		push	edi
		xor	ebx, ebx
		push	ebp
		mov	[esp+80h+var_58], ebx
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	loc_451
		nop	word ptr [eax+eax+00h]

loc_35C:				; CODE XREF: _newpass_p12+18Bj
		push	ebx
		push	ebp
		call	_sk_value
		mov	edi, eax
		push	dword ptr [edi+10h]
		call	_OBJ_obj2nid
		mov	ebx, eax
		add	esp, 0Ch
		cmp	ebx, 15h
		jnz	short loc_384
		push	edi
		call	_PKCS12_unpack_p7data
		add	esp, 4
		mov	esi, eax
		jmp	short loc_3C3
; ---------------------------------------------------------------------------

loc_384:				; CODE XREF: _newpass_p12+B9j
		cmp	ebx, 1Ah
		jnz	loc_433
		push	0FFFFFFFFh
		push	[esp+80h+var_68]
		push	edi
		call	_PKCS12_unpack_p7encdata
		mov	esi, eax
		lea	eax, [esp+88h+var_60]
		push	eax
		lea	eax, [esp+8Ch+var_64]
		push	eax
		lea	eax, [esp+90h+var_5C]
		push	eax
		mov	eax, [edi+14h]
		mov	eax, [eax+4]
		push	dword ptr [eax+4]
		call	_alg_get
		add	esp, 1Ch
		test	eax, eax
		jz	loc_543

loc_3C3:				; CODE XREF: _newpass_p12+C6j
		test	esi, esi
		jz	loc_551
		mov	edi, [esp+7Ch+var_50]
		push	edi
		push	[esp+80h+var_68]
		push	esi
		call	_newpass_bags
		add	esp, 0Ch
		test	eax, eax
		jz	loc_515
		push	esi
		cmp	ebx, 15h
		jnz	short loc_3F5
		call	_PKCS12_pack_p7data
		add	esp, 4
		jmp	short loc_40E
; ---------------------------------------------------------------------------

loc_3F5:				; CODE XREF: _newpass_p12+12Dj
		push	[esp+80h+var_64]
		push	[esp+84h+var_60]
		push	0
		push	0FFFFFFFFh
		push	edi
		push	[esp+94h+var_5C]
		call	_PKCS12_pack_p7encdata
		add	esp, 1Ch

loc_40E:				; CODE XREF: _newpass_p12+137j
		push	offset _PKCS12_SAFEBAG_free
		push	esi
		mov	edi, eax
		call	_sk_pop_free
		add	esp, 8
		test	edi, edi
		jz	loc_551
		push	edi
		push	[esp+80h+var_54]
		call	_sk_push
		add	esp, 8

loc_433:				; CODE XREF: _newpass_p12+CBj
		mov	ebx, [esp+7Ch+var_58]
		inc	ebx
		push	ebp
		mov	[esp+80h+var_58], ebx
		call	_sk_num
		add	esp, 4
		cmp	ebx, eax
		jl	loc_35C
		mov	esi, [esp+7Ch+var_4C]

loc_451:				; CODE XREF: _newpass_p12+94j
		push	offset _PKCS7_free
		push	ebp
		call	_sk_pop_free
		mov	eax, [esi+8]
		add	esp, 8
		mov	edi, [eax+14h]
		call	_ASN1_OCTET_STRING_new
		mov	ecx, eax
		mov	eax, [esi+8]
		mov	[eax+14h], ecx
		test	ecx, ecx
		jz	$saferr$40
		push	[esp+7Ch+var_54]
		push	esi
		call	_PKCS12_pack_authsafes
		add	esp, 8
		test	eax, eax
		jz	$saferr$40
		lea	eax, [esp+7Ch+var_48]
		push	eax
		lea	eax, [esp+80h+var_44]
		push	eax
		push	0FFFFFFFFh
		push	[esp+88h+var_50]
		push	esi
		call	_PKCS12_gen_mac
		add	esp, 14h
		test	eax, eax
		jz	$saferr$40
		call	_ASN1_OCTET_STRING_new
		mov	[esp+7Ch+var_6C], eax
		test	eax, eax
		jz	$saferr$40
		push	[esp+7Ch+var_48]
		lea	ecx, [esp+80h+var_44]
		push	ecx
		push	eax
		call	_ASN1_OCTET_STRING_set
		add	esp, 0Ch
		test	eax, eax
		jz	$saferr$40
		mov	eax, [esi+4]
		mov	eax, [eax]
		push	dword ptr [eax+4]
		call	_ASN1_OCTET_STRING_free
		mov	eax, [esi+4]
		mov	ecx, [esp+80h+var_6C]
		push	edi
		mov	eax, [eax]
		mov	[eax+4], ecx
		call	_ASN1_OCTET_STRING_free
		add	esp, 8
		mov	eax, 1
		pop	edi
		pop	ebx
		pop	esi
		pop	ebp
		mov	ecx, [esp+6Ch+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_515:				; CODE XREF: _newpass_p12+123j
		push	offset _PKCS12_SAFEBAG_free
		push	esi
		call	_sk_pop_free
		push	offset _PKCS7_free
		push	ebp
		call	_sk_pop_free
		add	esp, 10h
		xor	eax, eax
		pop	edi
		pop	ebx
		pop	esi
		pop	ebp
		mov	ecx, [esp+6Ch+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_543:				; CODE XREF: _newpass_p12+101j
		push	offset _PKCS12_SAFEBAG_free
		push	esi
		call	_sk_pop_free
		add	esp, 8

loc_551:				; CODE XREF: _newpass_p12+109j
					; _newpass_p12+164j
		push	offset _PKCS7_free
		push	ebp
		call	_sk_pop_free
		jmp	short loc_579
; ---------------------------------------------------------------------------

$saferr$40:				; CODE XREF: _newpass_p12+1B8j
					; _newpass_p12+1CDj ...
		mov	eax, [esi+8]
		push	dword ptr [eax+14h]
		call	_ASN1_OCTET_STRING_free
		mov	ecx, [esp+80h+var_6C]
		push	ecx
		call	_ASN1_OCTET_STRING_free
		mov	eax, [esi+8]
		mov	[eax+14h], edi

loc_579:				; CODE XREF: _newpass_p12+2A0j
		mov	ecx, [esp+84h+var_4]
		add	esp, 8
		xor	eax, eax
		pop	edi
		pop	ebx
		pop	esi
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 6Ch
		retn
_newpass_p12	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 594h
; COMDAT (pick any)
		public ??_C@_0BL@DDCLOFCJ@?4?2crypto?2pkcs12?2p12_npas?4c?$AA@
; `string'
??_C@_0BL@DDCLOFCJ@?4?2crypto?2pkcs12?2p12_npas?4c?$AA@	db '.\crypto\pkcs12\p12_npas.c',0
					; DATA XREF: _PKCS12_newpass+Bo
					; _PKCS12_newpass+3Ao ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _sk_num:near	; CODE XREF: _newpass_bags+19p
					; _newpass_bags+F6p ...
		extrn _sk_value:near	; CODE XREF: _newpass_bags+32p
					; _newpass_p12+A2p
		extrn _sk_new_null:near	; CODE XREF: _newpass_p12:loc_330p
		extrn _sk_pop_free:near	; CODE XREF: _newpass_p12+15Ap
					; _newpass_p12+19Bp ...
		extrn _sk_push:near	; CODE XREF: _newpass_p12+16Fp
		extrn _ASN1_OCTET_STRING_new:near ; CODE XREF: _newpass_p12+1A9p
					; _newpass_p12+1F4p
		extrn _ASN1_OCTET_STRING_free:near ; CODE XREF:	_newpass_p12+227p
					; _newpass_p12+239p ...
		extrn _ASN1_OCTET_STRING_set:near ; CODE XREF: _newpass_p12+20Fp
		extrn _ASN1_INTEGER_get:near ; CODE XREF: _alg_get+40p
					; _newpass_bags+A7p
		extrn _OBJ_obj2nid:near	; CODE XREF: _alg_get+32p
					; _newpass_bag+11p ...
		extrn _PKCS7_free:near	; DATA XREF: _newpass_p12:loc_451o
					; _newpass_p12+264o ...
		extrn _X509_SIG_free:near ; CODE XREF: _newpass_bag+92p
					; _newpass_bags+DDp
		extrn _PBEPARAM_free:near ; CODE XREF: _alg_get+56p
					; _newpass_bags+B6p
		extrn _d2i_PBEPARAM:near ; CODE	XREF: _alg_get+1Fp
					; _newpass_bags+89p
		extrn _ERR_put_error:near ; CODE XREF: _PKCS12_newpass+19p
					; _PKCS12_newpass+48p ...
		extrn _PKCS8_decrypt:near ; CODE XREF: _newpass_bag+34p
					; _newpass_bags+57p
		extrn _PKCS8_encrypt:near ; CODE XREF: _newpass_bag+79p
					; _newpass_bags+CCp
		extrn _PKCS12_pack_p7data:near ; CODE XREF: _newpass_p12+12Fp
		extrn _PKCS12_unpack_p7data:near ; CODE	XREF: _newpass_p12+BCp
		extrn _PKCS12_pack_p7encdata:near ; CODE XREF: _newpass_p12+14Ap
		extrn _PKCS12_unpack_p7encdata:near ; CODE XREF: _newpass_p12+D8p
		extrn _PKCS12_pack_authsafes:near ; CODE XREF: _newpass_p12+1C3p
		extrn _PKCS12_unpack_authsafes:near ; CODE XREF: _newpass_p12+53p
		extrn _PKCS12_gen_mac:near ; CODE XREF:	_newpass_p12+1E4p
		extrn _PKCS12_verify_mac:near ;	CODE XREF: _PKCS12_newpass+2Cp
		extrn _PKCS12_SAFEBAG_free:near	; DATA XREF: _newpass_p12:loc_40Eo
					; _newpass_p12:loc_515o ...
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _newpass_p12+6Bp
					; _newpass_p12+250p ...
		extrn __chkstk:near	; CODE XREF: _newpass_bag+5p
					; _newpass_bags+5p ...
		extrn ___security_cookie:near ;	DATA XREF: _newpass_p12+Ar


		end
