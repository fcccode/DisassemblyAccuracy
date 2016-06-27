;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	D75B58AF5AD791D3C41A6E44025AC9A6
; Input	CRC32 :	246B0F99

; File Name   :	C:\compspace\Diff\openssl\obj\ocsp_cl.obj
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


		public _OCSP_check_validity
_OCSP_check_validity proc near

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
Time		= qword	ptr -8
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h

		mov	eax, 10h
		call	__chkstk
		push	ebx
		push	esi
		lea	eax, [esp+18h+Time]
		mov	esi, 1
		push	edi
		push	eax		; Time
		call	dword ptr ds:__imp___time64
		mov	ebx, [esp+20h+arg_0]
		push	ebx
		call	_ASN1_GENERALIZEDTIME_check
		add	esp, 8
		test	eax, eax
		jnz	short loc_3C
		push	152h
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Bh ; '{'
		jmp	short loc_B8
; ---------------------------------------------------------------------------

loc_3C:					; CODE XREF: _OCSP_check_validity+2Cj
		mov	eax, [esp+1Ch+arg_8]
		cdq
		add	eax, dword ptr [esp+1Ch+Time]
		mov	[esp+1Ch+var_10], eax
		lea	eax, [esp+1Ch+var_10]
		adc	edx, dword ptr [esp+1Ch+Time+4]
		push	eax
		push	ebx
		mov	[esp+24h+var_C], edx
		call	_X509_cmp_time
		add	esp, 8
		test	eax, eax
		jle	short loc_7D
		push	157h
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Eh ; '~'
		push	73h ; 's'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	esi, esi

loc_7D:					; CODE XREF: _OCSP_check_validity+61j
		mov	eax, [esp+1Ch+arg_C]
		test	eax, eax
		js	short loc_C6
		mov	ecx, dword ptr [esp+1Ch+Time]
		cdq
		sub	ecx, eax
		mov	eax, dword ptr [esp+1Ch+Time+4]
		mov	[esp+1Ch+var_10], ecx
		sbb	eax, edx
		mov	[esp+1Ch+var_C], eax
		lea	eax, [esp+1Ch+var_10]
		push	eax
		push	ebx
		call	_X509_cmp_time
		add	esp, 8
		test	eax, eax
		jns	short loc_C6
		push	162h
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Fh ; ''

loc_B8:					; CODE XREF: _OCSP_check_validity+3Aj
		push	73h ; 's'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	esi, esi

loc_C6:					; CODE XREF: _OCSP_check_validity+83j
					; _OCSP_check_validity+AAj
		mov	edi, [esp+1Ch+arg_4]
		test	edi, edi
		jz	loc_15A
		push	edi
		call	_ASN1_GENERALIZEDTIME_check
		add	esp, 4
		test	eax, eax
		jnz	short loc_ED
		push	16Dh
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Ah ; 'z'
		jmp	short loc_124
; ---------------------------------------------------------------------------

loc_ED:					; CODE XREF: _OCSP_check_validity+DDj
		mov	eax, [esp+1Ch+arg_8]
		mov	ecx, dword ptr [esp+1Ch+Time]
		cdq
		sub	ecx, eax
		mov	eax, dword ptr [esp+1Ch+Time+4]
		mov	[esp+1Ch+var_10], ecx
		sbb	eax, edx
		mov	[esp+1Ch+var_C], eax
		lea	eax, [esp+1Ch+var_10]
		push	eax
		push	edi
		call	_X509_cmp_time
		add	esp, 8
		test	eax, eax
		jns	short loc_132
		push	172h
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Dh ; '}'

loc_124:				; CODE XREF: _OCSP_check_validity+EBj
		push	73h ; 's'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	esi, esi

loc_132:				; CODE XREF: _OCSP_check_validity+116j
		push	ebx
		push	edi
		call	_ASN1_STRING_cmp
		add	esp, 8
		test	eax, eax
		jns	short loc_15A
		push	17Ah
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	7Ch ; '|'
		push	73h ; 's'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	esi, esi

loc_15A:				; CODE XREF: _OCSP_check_validity+CCj
					; _OCSP_check_validity+13Ej
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebx
		add	esp, 10h
		retn
_OCSP_check_validity endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 164h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_request_add0_id
_OCSP_request_add0_id proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		call	_OCSP_ONEREQ_new
		mov	esi, eax
		test	esi, esi
		jz	short $err$7
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_17F
		push	eax
		call	_OCSP_CERTID_free
		add	esp, 4

loc_17F:				; CODE XREF: _OCSP_request_add0_id+10j
		mov	eax, [esp+4+arg_4]
		mov	[esi], eax
		mov	eax, [esp+4+arg_0]
		test	eax, eax
		jz	short loc_19F
		mov	eax, [eax]
		push	esi
		push	dword ptr [eax+8]
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jz	short $err$7

loc_19F:				; CODE XREF: _OCSP_request_add0_id+27j
		mov	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

$err$7:					; CODE XREF: _OCSP_request_add0_id+Aj
					; _OCSP_request_add0_id+39j
		push	esi
		call	_OCSP_ONEREQ_free
		add	esp, 4
		xor	eax, eax
		pop	esi
		retn
_OCSP_request_add0_id endp

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


		public _OCSP_request_add1_cert
_OCSP_request_add1_cert	proc near	; CODE XREF: _OCSP_request_sign+DEp
					; _OCSP_request_sign+10Ap

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		cmp	dword ptr [esi+4], 0
		jnz	short loc_1C3
		call	_OCSP_SIGNATURE_new
		mov	[esi+4], eax

loc_1C3:				; CODE XREF: _OCSP_request_add1_cert+9j
		mov	esi, [esi+4]
		test	esi, esi
		jnz	short loc_1CE
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1CE:				; CODE XREF: _OCSP_request_add1_cert+18j
		push	edi
		mov	edi, [esp+8+arg_4]
		test	edi, edi
		jz	short loc_218
		cmp	dword ptr [esi+8], 0
		jnz	short loc_1E9
		call	_sk_new_null
		mov	[esi+8], eax
		test	eax, eax
		jz	short loc_1F9

loc_1E9:				; CODE XREF: _OCSP_request_add1_cert+2Bj
		push	edi
		push	dword ptr [esi+8]
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jnz	short loc_1FE

loc_1F9:				; CODE XREF: _OCSP_request_add1_cert+37j
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1FE:				; CODE XREF: _OCSP_request_add1_cert+47j
		push	8Ch ; '�'
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	3
		lea	eax, [edi+10h]
		push	1
		push	eax
		call	_CRYPTO_add_lock
		add	esp, 14h

loc_218:				; CODE XREF: _OCSP_request_add1_cert+25j
		pop	edi
		mov	eax, 1
		pop	esi
		retn
_OCSP_request_add1_cert	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 220h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_request_set1_name
_OCSP_request_set1_name	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		call	_GENERAL_NAME_new
		mov	esi, eax
		test	esi, esi
		jz	short loc_249
		push	[esp+4+arg_4]
		lea	eax, [esi+4]
		push	eax
		call	_X509_NAME_set
		add	esp, 8
		test	eax, eax
		jnz	short loc_24D
		push	esi
		call	_GENERAL_NAME_free
		add	esp, 4

loc_249:				; CODE XREF: _OCSP_request_set1_name+Aj
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_24D:				; CODE XREF: _OCSP_request_set1_name+1Ej
		push	edi
		mov	edi, [esp+8+arg_0]
		mov	dword ptr [esi], 4
		mov	eax, [edi]
		mov	eax, [eax+4]
		test	eax, eax
		jz	short loc_26A
		push	eax
		call	_GENERAL_NAME_free
		add	esp, 4

loc_26A:				; CODE XREF: _OCSP_request_set1_name+3Fj
		mov	eax, [edi]
		pop	edi
		mov	[eax+4], esi
		mov	eax, 1
		pop	esi
		retn
_OCSP_request_set1_name	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 278h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_request_sign
_OCSP_request_sign proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= byte ptr  18h

		push	ebx
		mov	ebx, [esp+4+arg_4]
		push	ebp
		push	esi
		push	edi
		push	ebx
		call	_X509_get_subject_name
		add	esp, 4
		mov	ebp, eax
		call	_GENERAL_NAME_new
		mov	edi, [esp+10h+arg_0]
		mov	esi, eax
		test	esi, esi
		jz	short $err$26
		lea	ecx, [esi+4]
		push	ebp
		push	ecx
		call	_X509_NAME_set
		add	esp, 8
		test	eax, eax
		jnz	short loc_2CD
		push	esi
		call	_GENERAL_NAME_free
		add	esp, 4

$err$26:				; CODE XREF: _OCSP_request_sign+20j
					; _OCSP_request_sign+7Cj ...
		push	dword ptr [edi+4]
		call	_OCSP_SIGNATURE_free
		add	esp, 4
		mov	dword ptr [edi+4], 0
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_2CD:				; CODE XREF: _OCSP_request_sign+31j
		mov	dword ptr [esi], 4
		mov	eax, [edi]
		mov	eax, [eax+4]
		test	eax, eax
		jz	short loc_2E5
		push	eax
		call	_GENERAL_NAME_free
		add	esp, 4

loc_2E5:				; CODE XREF: _OCSP_request_sign+62j
		mov	eax, [edi]
		mov	[eax+4], esi
		call	_OCSP_SIGNATURE_new
		mov	[edi+4], eax
		test	eax, eax
		jz	short $err$26
		mov	esi, [esp+10h+arg_8]
		test	esi, esi
		jz	short loc_34D
		push	esi
		push	ebx
		call	_X509_check_private_key
		add	esp, 8
		test	eax, eax
		jnz	short loc_326
		push	0A8h ; '�'
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	6Eh ; 'n'
		push	6Eh ; 'n'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		jmp	short $err$26
; ---------------------------------------------------------------------------

loc_326:				; CODE XREF: _OCSP_request_sign+92j
		push	[esp+10h+arg_C]
		mov	eax, [edi+4]
		push	esi
		push	dword ptr [edi]
		push	dword ptr [eax+4]
		push	0
		push	dword ptr [eax]
		call	_OCSP_REQINFO_it
		push	eax
		call	_ASN1_item_sign
		add	esp, 1Ch
		test	eax, eax
		jz	$err$26

loc_34D:				; CODE XREF: _OCSP_request_sign+84j
		test	[esp+10h+arg_14], 1
		jnz	short loc_3A0
		push	ebx
		push	edi
		call	_OCSP_request_add1_cert
		add	esp, 8
		test	eax, eax
		jz	$err$26
		mov	ebx, [esp+10h+arg_10]
		xor	esi, esi
		push	ebx
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	short loc_3A0

loc_379:				; CODE XREF: _OCSP_request_sign+126j
		push	esi
		push	ebx
		call	_sk_value
		push	eax
		push	edi
		call	_OCSP_request_add1_cert
		add	esp, 10h
		test	eax, eax
		jz	$err$26
		push	ebx
		inc	esi
		call	_sk_num
		add	esp, 4
		cmp	esi, eax
		jl	short loc_379

loc_3A0:				; CODE XREF: _OCSP_request_sign+DAj
					; _OCSP_request_sign+FFj
		pop	edi
		pop	esi
		pop	ebp
		mov	eax, 1
		pop	ebx
		retn
_OCSP_request_sign endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3ACh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_resp_count
_OCSP_resp_count proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jnz	short loc_3B8
		or	eax, 0FFFFFFFFh
		retn
; ---------------------------------------------------------------------------

loc_3B8:				; CODE XREF: _OCSP_resp_count+6j
		mov	eax, [eax]
		push	dword ptr [eax+0Ch]
		call	_sk_num
		add	esp, 4
		retn
_OCSP_resp_count endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3C8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_resp_find
_OCSP_resp_find	proc near		; CODE XREF: _OCSP_resp_find_status+Cp

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		test	ecx, ecx
		jnz	short loc_3D4
		or	eax, 0FFFFFFFFh
		retn
; ---------------------------------------------------------------------------

loc_3D4:				; CODE XREF: _OCSP_resp_find+6j
		mov	eax, [esp+arg_8]
		xor	edx, edx
		push	ebx
		push	esi
		test	eax, eax
		lea	esi, [eax+1]
		mov	eax, [ecx]
		push	edi
		cmovs	esi, edx
		mov	edi, [eax+0Ch]
		push	edi
		call	_sk_num
		add	esp, 4
		cmp	esi, eax
		jge	short loc_41F
		mov	ebx, [esp+0Ch+arg_4]

loc_3FB:				; CODE XREF: _OCSP_resp_find+55j
		push	esi
		push	edi
		call	_sk_value
		push	dword ptr [eax]
		push	ebx
		call	_OCSP_id_cmp
		add	esp, 10h
		test	eax, eax
		jz	short loc_426
		push	edi
		inc	esi
		call	_sk_num
		add	esp, 4
		cmp	esi, eax
		jl	short loc_3FB

loc_41F:				; CODE XREF: _OCSP_resp_find+2Dj
		pop	edi
		pop	esi
		or	eax, 0FFFFFFFFh
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_426:				; CODE XREF: _OCSP_resp_find+47j
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebx
		retn
_OCSP_resp_find	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 42Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_resp_find_status
_OCSP_resp_find_status proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		push	esi
		mov	esi, [esp+4+arg_0]
		push	0FFFFFFFFh
		push	[esp+8+arg_4]
		push	esi
		call	_OCSP_resp_find
		add	esp, 0Ch
		test	eax, eax
		jns	short loc_448
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_448:				; CODE XREF: _OCSP_resp_find_status+16j
		test	esi, esi
		jnz	short loc_450
		xor	eax, eax
		jmp	short loc_45E
; ---------------------------------------------------------------------------

loc_450:				; CODE XREF: _OCSP_resp_find_status+1Ej
		push	eax
		mov	eax, [esi]
		push	dword ptr [eax+0Ch]
		call	_sk_value
		add	esp, 8

loc_45E:				; CODE XREF: _OCSP_resp_find_status+22j
		push	[esp+4+arg_18]
		push	[esp+8+arg_14]
		push	[esp+0Ch+arg_10]
		push	[esp+10h+arg_C]
		push	eax
		call	_OCSP_single_get0_status
		mov	ecx, [esp+18h+arg_8]
		add	esp, 14h
		test	ecx, ecx
		jz	short loc_481
		mov	[ecx], eax

loc_481:				; CODE XREF: _OCSP_resp_find_status+51j
		mov	eax, 1
		pop	esi
		retn
_OCSP_resp_find_status endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 488h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_resp_get0
_OCSP_resp_get0	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_0]
		test	eax, eax
		jnz	short loc_491
		retn
; ---------------------------------------------------------------------------

loc_491:				; CODE XREF: _OCSP_resp_get0+6j
		mov	eax, [eax]
		push	[esp+arg_4]
		push	dword ptr [eax+0Ch]
		call	_sk_value
		add	esp, 8
		retn
_OCSP_resp_get0	endp

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


		public _OCSP_response_get1_basic
_OCSP_response_get1_basic proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		push	esi
		mov	esi, [eax+4]
		test	esi, esi
		jnz	short loc_4CC
		push	0D1h ; '�'
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	6Ch ; 'l'
		push	6Fh ; 'o'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4CC:				; CODE XREF: _OCSP_response_get1_basic+Aj
		push	dword ptr [esi]
		call	_OBJ_obj2nid
		add	esp, 4
		cmp	eax, 16Dh
		jz	short loc_4F9
		push	0D5h ; '�'
		push	offset ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ ; ".\\crypto\\ocsp\\ocsp_cl.c"
		push	68h ; 'h'
		push	6Fh ; 'o'
		push	27h ; '''
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4F9:				; CODE XREF: _OCSP_response_get1_basic+37j
		call	_OCSP_BASICRESP_it
		push	eax
		push	dword ptr [esi+4]
		call	_ASN1_item_unpack
		add	esp, 8
		pop	esi
		retn
_OCSP_response_get1_basic endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 50Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_response_status
_OCSP_response_status proc near

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		push	dword ptr [eax]
		call	_ASN1_ENUMERATED_get
		add	esp, 4
		retn
_OCSP_response_status endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 51Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _OCSP_single_get0_status
_OCSP_single_get0_status proc near	; CODE XREF: _OCSP_resp_find_status+43p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_52A
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_52A:				; CODE XREF: _OCSP_single_get0_status+7j
		mov	eax, [esi+4]
		push	ebx
		mov	ebx, [eax]
		cmp	ebx, 1
		jnz	short loc_568
		mov	ecx, [esp+8+arg_8]
		mov	edx, [eax+4]
		test	ecx, ecx
		jz	short loc_544
		mov	eax, [edx]
		mov	[ecx], eax

loc_544:				; CODE XREF: _OCSP_single_get0_status+22j
		push	edi
		mov	edi, [esp+0Ch+arg_4]
		test	edi, edi
		jz	short loc_567
		mov	eax, [edx+4]
		test	eax, eax
		jz	short loc_561
		push	eax
		call	_ASN1_ENUMERATED_get
		add	esp, 4
		mov	[edi], eax
		jmp	short loc_567
; ---------------------------------------------------------------------------

loc_561:				; CODE XREF: _OCSP_single_get0_status+36j
		mov	dword ptr [edi], 0FFFFFFFFh

loc_567:				; CODE XREF: _OCSP_single_get0_status+2Fj
					; _OCSP_single_get0_status+43j
		pop	edi

loc_568:				; CODE XREF: _OCSP_single_get0_status+17j
		mov	ecx, [esp+8+arg_C]
		test	ecx, ecx
		jz	short loc_575
		mov	eax, [esi+8]
		mov	[ecx], eax

loc_575:				; CODE XREF: _OCSP_single_get0_status+52j
		mov	edx, [esp+8+arg_10]
		test	edx, edx
		jz	short loc_582
		mov	ecx, [esi+0Ch]
		mov	[edx], ecx

loc_582:				; CODE XREF: _OCSP_single_get0_status+5Fj
		mov	eax, ebx
		pop	ebx
		pop	esi
		retn
_OCSP_single_get0_status endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 588h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; time_t __cdecl static	time(time_t *Time)
_time		proc near
		jmp	dword ptr ds:__imp___time64
_time		endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 590h
; COMDAT (pick any)
		public ??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@
; `string'
??_C@_0BI@DGJPGOCC@?4?2crypto?2ocsp?2ocsp_cl?4c?$AA@ db	'.\crypto\ocsp\ocsp_cl.c',0
					; DATA XREF: _OCSP_check_validity+33o
					; _OCSP_check_validity+68o ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; __time64_t __cdecl __time64(__time64_t *Time)
		extrn __imp___time64:near ; CODE XREF: _OCSP_check_validity+17p
					; DATA XREF: _OCSP_check_validity+17r ...
		extrn _sk_num:near	; CODE XREF: _OCSP_request_sign+F5p
					; _OCSP_request_sign+11Cp ...
		extrn _sk_value:near	; CODE XREF: _OCSP_request_sign+103p
					; _OCSP_resp_find+35p ...
		extrn _sk_new_null:near	; CODE XREF: _OCSP_request_add1_cert+2Dp
		extrn _sk_push:near	; CODE XREF: _OCSP_request_add0_id+2Fp
					; _OCSP_request_add1_cert+3Dp
		extrn _CRYPTO_add_lock:near ; CODE XREF: _OCSP_request_add1_cert+60p
		extrn _ERR_put_error:near ; CODE XREF: _OCSP_check_validity+73p
					; _OCSP_check_validity+BCp ...
		extrn _ASN1_STRING_cmp:near ; CODE XREF: _OCSP_check_validity+134p
		extrn _ASN1_GENERALIZEDTIME_check:near ; CODE XREF: _OCSP_check_validity+22p
					; _OCSP_check_validity+D3p
		extrn _ASN1_ENUMERATED_get:near	; CODE XREF: _OCSP_response_status+6p
					; _OCSP_single_get0_status+39p
		extrn _ASN1_item_unpack:near ; CODE XREF: _OCSP_response_get1_basic+5Ep
		extrn _OBJ_obj2nid:near	; CODE XREF: _OCSP_response_get1_basic+2Ap
		extrn _X509_cmp_time:near ; CODE XREF: _OCSP_check_validity+57p
					; _OCSP_check_validity+A0p ...
		extrn _X509_NAME_set:near ; CODE XREF: _OCSP_request_set1_name+14p
					; _OCSP_request_sign+27p
		extrn _ASN1_item_sign:near ; CODE XREF:	_OCSP_request_sign+C5p
		extrn _X509_get_subject_name:near ; CODE XREF: _OCSP_request_sign+9p
		extrn _X509_check_private_key:near ; CODE XREF:	_OCSP_request_sign+88p
		extrn _GENERAL_NAME_new:near ; CODE XREF: _OCSP_request_set1_name+1p
					; _OCSP_request_sign+13p
		extrn _GENERAL_NAME_free:near ;	CODE XREF: _OCSP_request_set1_name+21p
					; _OCSP_request_set1_name+42p ...
		extrn _OCSP_id_cmp:near	; CODE XREF: _OCSP_resp_find+3Dp
		extrn _OCSP_BASICRESP_it:near
					; CODE XREF: _OCSP_response_get1_basic:loc_4F9p
		extrn _OCSP_ONEREQ_new:near ; CODE XREF: _OCSP_request_add0_id+1p
		extrn _OCSP_ONEREQ_free:near ; CODE XREF: _OCSP_request_add0_id+40p
		extrn _OCSP_CERTID_free:near ; CODE XREF: _OCSP_request_add0_id+13p
		extrn _OCSP_SIGNATURE_new:near ; CODE XREF: _OCSP_request_add1_cert+Bp
					; _OCSP_request_sign+72p
		extrn _OCSP_SIGNATURE_free:near	; CODE XREF: _OCSP_request_sign+3Fp
		extrn _OCSP_REQINFO_it:near ; CODE XREF: _OCSP_request_sign+BFp
		extrn __chkstk:near	; CODE XREF: _OCSP_check_validity+5p


		end