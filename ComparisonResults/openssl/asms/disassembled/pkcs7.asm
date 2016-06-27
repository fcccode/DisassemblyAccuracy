;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	B9C041FF007B01A56096B6FF4C1ED7F9
; Input	CRC32 :	1D4D48DA

; File Name   :	C:\compspace\Diff\openssl\obj\pkcs7.obj
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


		public _pkcs7_main
_pkcs7_main	proc near

var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
ErrMsg		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, 24h ; '$'
		call	__chkstk
		mov	eax, dword ptr ds:_bio_err
		push	ebp
		xor	ebp, ebp
		mov	[esp+28h+var_10], 0
		mov	[esp+28h+var_C], 0
		mov	[esp+28h+var_20], 0
		mov	[esp+28h+var_14], 0
		test	eax, eax
		jnz	short loc_6D
		call	_BIO_s_file
		push	eax
		call	_BIO_new
		add	esp, 4
		mov	dword ptr ds:_bio_err, eax
		test	eax, eax
		jz	short loc_6D
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		push	10h
		push	6Ah ; 'j'
		push	dword ptr ds:_bio_err
		call	_BIO_ctrl
		mov	eax, dword ptr ds:_bio_err
		add	esp, 14h

loc_6D:					; CODE XREF: _pkcs7_main+34j
					; _pkcs7_main+4Bj
		push	0
		push	eax
		call	_load_config
		add	esp, 8
		test	eax, eax
		jz	loc_74E
		push	ebx
		mov	ebx, [esp+2Ch+arg_4]
		push	esi
		push	edi
		mov	edi, [esp+34h+arg_0]
		mov	eax, [ebx]
		dec	edi
		add	ebx, 4
		mov	[esp+34h+var_24], ebp
		mov	[esp+34h+ErrMsg], ebp
		mov	[esp+34h+var_1C], 3
		mov	[esp+34h+var_8], 3
		mov	[esp+34h+var_4], eax
		cmp	edi, 1
		jl	loc_342

loc_B6:					; CODE XREF: _pkcs7_main+33Cj
		mov	esi, [ebx]
		mov	ecx, offset ??_C@_07CGGPPMGB@?9inform?$AA@ ; "-inform"
		mov	eax, esi
		nop

loc_C0:					; CODE XREF: _pkcs7_main+DAj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_E0
		test	dl, dl
		jz	short loc_DC
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_E0
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_C0

loc_DC:					; CODE XREF: _pkcs7_main+C8j
		xor	eax, eax
		jmp	short loc_E5
; ---------------------------------------------------------------------------

loc_E0:					; CODE XREF: _pkcs7_main+C4j
					; _pkcs7_main+D0j
		sbb	eax, eax
		or	eax, 1

loc_E5:					; CODE XREF: _pkcs7_main+DEj
		test	eax, eax
		jnz	short loc_10A
		dec	edi
		cmp	edi, 1
		jl	$bad$141
		push	dword ptr [ebx+4]
		add	ebx, 4
		call	_str2fmt
		add	esp, 4
		mov	[esp+34h+var_1C], eax
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_10A:				; CODE XREF: _pkcs7_main+E7j
		mov	ecx, offset ??_C@_08LPHBEAIF@?9outform?$AA@ ; "-outform"
		mov	eax, esi

loc_111:				; CODE XREF: _pkcs7_main+12Bj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_131
		test	dl, dl
		jz	short loc_12D
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_131
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_111

loc_12D:				; CODE XREF: _pkcs7_main+119j
		xor	eax, eax
		jmp	short loc_136
; ---------------------------------------------------------------------------

loc_131:				; CODE XREF: _pkcs7_main+115j
					; _pkcs7_main+121j
		sbb	eax, eax
		or	eax, 1

loc_136:				; CODE XREF: _pkcs7_main+12Fj
		test	eax, eax
		jnz	short loc_15B
		dec	edi
		cmp	edi, 1
		jl	$bad$141
		push	dword ptr [ebx+4]
		add	ebx, 4
		call	_str2fmt
		add	esp, 4
		mov	[esp+34h+var_8], eax
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_15B:				; CODE XREF: _pkcs7_main+138j
		mov	ecx, offset ??_C@_03DAJLOBIG@?9in?$AA@ ; `string'
		mov	eax, esi

loc_162:				; CODE XREF: _pkcs7_main+17Cj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_182
		test	dl, dl
		jz	short loc_17E
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_182
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_162

loc_17E:				; CODE XREF: _pkcs7_main+16Aj
		xor	eax, eax
		jmp	short loc_187
; ---------------------------------------------------------------------------

loc_182:				; CODE XREF: _pkcs7_main+166j
					; _pkcs7_main+172j
		sbb	eax, eax
		or	eax, 1

loc_187:				; CODE XREF: _pkcs7_main+180j
		test	eax, eax
		jnz	short loc_1A4
		dec	edi
		cmp	edi, 1
		jl	$bad$141
		mov	edx, [ebx+4]
		add	ebx, 4
		mov	[esp+34h+var_24], edx
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_1A4:				; CODE XREF: _pkcs7_main+189j
		mov	ecx, offset ??_C@_04HKKABCEL@?9out?$AA@	; "-out"
		mov	eax, esi
		nop	dword ptr [eax+eax+00h]

loc_1B0:				; CODE XREF: _pkcs7_main+1CAj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_1D0
		test	dl, dl
		jz	short loc_1CC
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_1D0
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_1B0

loc_1CC:				; CODE XREF: _pkcs7_main+1B8j
		xor	eax, eax
		jmp	short loc_1D5
; ---------------------------------------------------------------------------

loc_1D0:				; CODE XREF: _pkcs7_main+1B4j
					; _pkcs7_main+1C0j
		sbb	eax, eax
		or	eax, 1

loc_1D5:				; CODE XREF: _pkcs7_main+1CEj
		test	eax, eax
		jnz	short loc_1F2
		dec	edi
		cmp	edi, 1
		jl	$bad$141
		mov	edx, [ebx+4]
		add	ebx, 4
		mov	[esp+34h+ErrMsg], edx
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_1F2:				; CODE XREF: _pkcs7_main+1D7j
		mov	ecx, offset ??_C@_06JPEJAHHH@?9noout?$AA@ ; "-noout"
		mov	eax, esi
		nop	dword ptr [eax+00000000h]

loc_200:				; CODE XREF: _pkcs7_main+21Aj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_220
		test	dl, dl
		jz	short loc_21C
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_220
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_200

loc_21C:				; CODE XREF: _pkcs7_main+208j
		xor	eax, eax
		jmp	short loc_225
; ---------------------------------------------------------------------------

loc_220:				; CODE XREF: _pkcs7_main+204j
					; _pkcs7_main+210j
		sbb	eax, eax
		or	eax, 1

loc_225:				; CODE XREF: _pkcs7_main+21Ej
		test	eax, eax
		jnz	short loc_236
		mov	[esp+34h+var_20], 1
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_236:				; CODE XREF: _pkcs7_main+227j
		mov	ecx, offset ??_C@_05OEBEIMJA@?9text?$AA@ ; "-text"
		mov	eax, esi
		nop	dword ptr [eax]

loc_240:				; CODE XREF: _pkcs7_main+25Aj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_260
		test	dl, dl
		jz	short loc_25C
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_260
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_240

loc_25C:				; CODE XREF: _pkcs7_main+248j
		xor	eax, eax
		jmp	short loc_265
; ---------------------------------------------------------------------------

loc_260:				; CODE XREF: _pkcs7_main+244j
					; _pkcs7_main+250j
		sbb	eax, eax
		or	eax, 1

loc_265:				; CODE XREF: _pkcs7_main+25Ej
		test	eax, eax
		jnz	short loc_276
		mov	[esp+34h+var_C], 1
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_276:				; CODE XREF: _pkcs7_main+267j
		mov	ecx, offset ??_C@_06LPNCEOC@?9print?$AA@ ; "-print"
		mov	eax, esi
		nop	dword ptr [eax]

loc_280:				; CODE XREF: _pkcs7_main+29Aj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_2A0
		test	dl, dl
		jz	short loc_29C
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_2A0
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_280

loc_29C:				; CODE XREF: _pkcs7_main+288j
		xor	eax, eax
		jmp	short loc_2A5
; ---------------------------------------------------------------------------

loc_2A0:				; CODE XREF: _pkcs7_main+284j
					; _pkcs7_main+290j
		sbb	eax, eax
		or	eax, 1

loc_2A5:				; CODE XREF: _pkcs7_main+29Ej
		test	eax, eax
		jnz	short loc_2B6
		mov	[esp+34h+var_14], 1
		jmp	loc_335
; ---------------------------------------------------------------------------

loc_2B6:				; CODE XREF: _pkcs7_main+2A7j
		mov	ecx, offset ??_C@_0N@ILGHIMOP@?9print_certs?$AA@ ; "-print_certs"
		mov	eax, esi
		nop	dword ptr [eax]

loc_2C0:				; CODE XREF: _pkcs7_main+2DAj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_2E0
		test	dl, dl
		jz	short loc_2DC
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_2E0
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_2C0

loc_2DC:				; CODE XREF: _pkcs7_main+2C8j
		xor	eax, eax
		jmp	short loc_2E5
; ---------------------------------------------------------------------------

loc_2E0:				; CODE XREF: _pkcs7_main+2C4j
					; _pkcs7_main+2D0j
		sbb	eax, eax
		or	eax, 1

loc_2E5:				; CODE XREF: _pkcs7_main+2DEj
		test	eax, eax
		jnz	short loc_2F3
		mov	[esp+34h+var_10], 1
		jmp	short loc_335
; ---------------------------------------------------------------------------

loc_2F3:				; CODE XREF: _pkcs7_main+2E7j
		mov	eax, offset ??_C@_07CECBDAGF@?9engine?$AA@ ; "-engine"

loc_2F8:				; CODE XREF: _pkcs7_main+312j
		mov	cl, [esi]
		cmp	cl, [eax]
		jnz	short loc_318
		test	cl, cl
		jz	short loc_314
		mov	cl, [esi+1]
		cmp	cl, [eax+1]
		jnz	short loc_318
		add	esi, 2
		add	eax, 2
		test	cl, cl
		jnz	short loc_2F8

loc_314:				; CODE XREF: _pkcs7_main+300j
		xor	eax, eax
		jmp	short loc_31D
; ---------------------------------------------------------------------------

loc_318:				; CODE XREF: _pkcs7_main+2FCj
					; _pkcs7_main+308j
		sbb	eax, eax
		or	eax, 1

loc_31D:				; CODE XREF: _pkcs7_main+316j
		test	eax, eax
		jnz	loc_3CA
		dec	edi
		cmp	edi, 1
		jl	$bad$141
		mov	ebp, [ebx+4]
		add	ebx, 4

loc_335:				; CODE XREF: _pkcs7_main+105j
					; _pkcs7_main+156j ...
		dec	edi
		add	ebx, 4
		cmp	edi, 1
		jge	loc_B6

loc_342:				; CODE XREF: _pkcs7_main+B0j
		call	_ERR_load_crypto_strings
		push	0
		push	ebp
		push	dword ptr ds:_bio_err
		call	_setup_engine
		call	_BIO_s_file
		push	eax
		call	_BIO_new
		mov	ebx, eax
		mov	[esp+44h+var_4], ebx
		call	_BIO_s_file
		push	eax
		call	_BIO_new
		add	esp, 14h
		mov	esi, eax
		test	ebx, ebx
		jz	loc_717
		test	esi, esi
		jz	loc_717
		mov	eax, [esp+34h+var_24]
		test	eax, eax
		jnz	loc_496
		push	eax
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		push	0
		push	6Ah ; 'j'
		push	ebx
		call	_BIO_ctrl
		add	esp, 14h

loc_3A7:				; CODE XREF: _pkcs7_main+4A6j
		mov	eax, [esp+34h+var_1C]
		cmp	eax, 1
		jnz	loc_4CF
		push	0
		push	ebx
		call	_d2i_PKCS7_bio
		mov	ebp, eax
		add	esp, 8
		mov	[esp+34h+var_24], ebp
		jmp	loc_4ED
; ---------------------------------------------------------------------------

loc_3CA:				; CODE XREF: _pkcs7_main+31Fj
		push	dword ptr [ebx]
		push	offset ??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@	; "unknown option %s\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 0Ch

$bad$141:				; CODE XREF: _pkcs7_main+EDj
					; _pkcs7_main+13Ej ...
		push	[esp+34h+var_4]
		push	offset ??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@ ; "%s [options] <infile >outfile\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ ; "where options are\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@ ;	" -inform arg	input format - DER or PE"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@ ; " -outform arg  output format - DER or P"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@ ; " -in arg       input file\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@ ;	" -out arg	output file\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@ ; " -print_certs  print any certs or	crl i"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@ ; " -text	   print full details of ce"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 44h
		push	offset ??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@	; " -noout	  don't output encoded dat"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@	; " -engine e	  use engine e,	possibly a"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 10h
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		add	esp, 24h
		retn
; ---------------------------------------------------------------------------

loc_496:				; CODE XREF: _pkcs7_main+38Cj
		push	eax
		push	3
		push	6Ch ; 'l'
		push	ebx
		call	_BIO_ctrl
		add	esp, 10h
		test	eax, eax
		jg	loc_3A7
		push	offset ??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@ ; "unable to load input file\n"

loc_4B1:				; CODE XREF: _pkcs7_main+4F6j
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	dword ptr ds:_bio_err
		call	_ERR_print_errors
		add	esp, 0Ch
		jmp	loc_725
; ---------------------------------------------------------------------------

loc_4CF:				; CODE XREF: _pkcs7_main+3AEj
		cmp	eax, 3
		jnz	loc_702
		push	0
		push	0
		push	0
		push	ebx
		call	_PEM_read_bio_PKCS7
		add	esp, 10h
		mov	[esp+34h+var_24], eax
		mov	ebp, eax

loc_4ED:				; CODE XREF: _pkcs7_main+3C5j
		test	ebp, ebp
		jnz	short loc_4F8
		push	offset ??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@ ; "unable to load PKCS7 object\n"
		jmp	short loc_4B1
; ---------------------------------------------------------------------------

loc_4F8:				; CODE XREF: _pkcs7_main+4EFj
		mov	edi, [esp+34h+ErrMsg]
		test	edi, edi
		jnz	loc_5AC
		push	1
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		push	edi
		push	6Ah ; 'j'
		push	esi
		call	_BIO_ctrl
		add	esp, 14h

loc_519:				; CODE XREF: _pkcs7_main+5BCj
		cmp	[esp+34h+var_14], 0
		jz	short loc_52E
		push	0
		push	0
		push	ebp
		push	esi
		call	_PKCS7_print_ctx
		add	esp, 10h

loc_52E:				; CODE XREF: _pkcs7_main+51Ej
		cmp	[esp+34h+var_10], 0
		jz	loc_685
		push	dword ptr [ebp+10h]
		call	_OBJ_obj2nid
		add	esp, 4
		sub	eax, 16h
		jz	short loc_552
		sub	eax, 2
		jnz	loc_671

loc_552:				; CODE XREF: _pkcs7_main+547j
		mov	ecx, [ebp+14h]
		test	ecx, ecx
		jz	loc_671
		mov	eax, [ecx+8]
		mov	ebp, [ecx+0Ch]
		mov	[esp+34h+var_14], ebp
		mov	[esp+34h+var_10], eax
		test	eax, eax
		jz	loc_619
		push	eax
		xor	edi, edi
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	loc_619
		mov	ebp, [esp+34h+var_10]
		nop	word ptr [eax+eax+00h]

loc_590:				; CODE XREF: _pkcs7_main+60Fj
		push	edi
		push	ebp
		call	_sk_value
		add	esp, 8
		mov	ebx, eax
		cmp	[esp+34h+var_C], 0
		push	ebx
		push	esi
		jz	short loc_5DF
		call	_X509_print
		jmp	short loc_5E4
; ---------------------------------------------------------------------------

loc_5AC:				; CODE XREF: _pkcs7_main+4FEj
		push	edi
		push	5
		push	6Ch ; 'l'
		push	esi
		call	_BIO_ctrl
		add	esp, 10h
		test	eax, eax
		jg	loc_519
		push	edi		; ErrMsg
		call	dword ptr ds:__imp__perror
		add	esp, 4
		mov	edi, 1
		push	ebp
		call	_PKCS7_free
		add	esp, 4
		jmp	loc_72A
; ---------------------------------------------------------------------------

loc_5DF:				; CODE XREF: _pkcs7_main+5A3j
		call	_dump_cert_text

loc_5E4:				; CODE XREF: _pkcs7_main+5AAj
		add	esp, 8
		cmp	[esp+34h+var_20], 0
		jnz	short loc_5F8
		push	ebx
		push	esi
		call	_PEM_write_bio_X509
		add	esp, 8

loc_5F8:				; CODE XREF: _pkcs7_main+5ECj
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; `string'
		push	esi
		call	_BIO_puts
		push	ebp
		inc	edi
		call	_sk_num
		add	esp, 0Ch
		cmp	edi, eax
		jl	loc_590
		mov	ebp, [esp+34h+var_14]

loc_619:				; CODE XREF: _pkcs7_main+56Dj
					; _pkcs7_main+580j
		test	ebp, ebp
		jz	short loc_66D
		push	ebp
		xor	edi, edi
		call	_sk_num
		add	esp, 4
		test	eax, eax
		jle	short loc_66D
		nop	dword ptr [eax+00h]

loc_630:				; CODE XREF: _pkcs7_main+66Bj
		push	edi
		push	ebp
		call	_sk_value
		mov	ebx, eax
		push	ebx
		push	esi
		call	_X509_CRL_print
		add	esp, 10h
		cmp	[esp+34h+var_20], 0
		jnz	short loc_654
		push	ebx
		push	esi
		call	_PEM_write_bio_X509_CRL
		add	esp, 8

loc_654:				; CODE XREF: _pkcs7_main+648j
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; `string'
		push	esi
		call	_BIO_puts
		push	ebp
		inc	edi
		call	_sk_num
		add	esp, 0Ch
		cmp	edi, eax
		jl	short loc_630

loc_66D:				; CODE XREF: _pkcs7_main+61Bj
					; _pkcs7_main+62Aj
		mov	ebp, [esp+34h+var_24]

loc_671:				; CODE XREF: _pkcs7_main+54Cj
					; _pkcs7_main+557j
		mov	ebx, [esp+34h+var_4]

loc_675:				; CODE XREF: _pkcs7_main+68Aj
					; _pkcs7_main+6AFj
		xor	edi, edi

$end$142:
		push	ebp
		call	_PKCS7_free
		add	esp, 4
		jmp	loc_72A
; ---------------------------------------------------------------------------

loc_685:				; CODE XREF: _pkcs7_main+533j
		cmp	[esp+34h+var_20], 0
		jnz	short loc_675
		mov	eax, [esp+34h+var_8]
		cmp	eax, 1
		jnz	short loc_69E
		push	ebp
		push	esi
		call	_i2d_PKCS7_bio
		jmp	short loc_6AA
; ---------------------------------------------------------------------------

loc_69E:				; CODE XREF: _pkcs7_main+693j
		cmp	eax, 3
		jnz	short loc_6DF
		push	ebp
		push	esi
		call	_PEM_write_bio_PKCS7

loc_6AA:				; CODE XREF: _pkcs7_main+69Cj
		add	esp, 8
		test	eax, eax
		jnz	short loc_675
		push	offset ??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@ ; "unable to write pkcs7 object\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	dword ptr ds:_bio_err
		call	_ERR_print_errors
		add	esp, 0Ch
		mov	edi, 1
		push	ebp
		call	_PKCS7_free
		add	esp, 4
		jmp	short loc_72A
; ---------------------------------------------------------------------------

loc_6DF:				; CODE XREF: _pkcs7_main+6A1j
		push	offset ??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@ ; "bad	output format specified	for outfile"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 8
		mov	edi, 1
		push	ebp
		call	_PKCS7_free
		add	esp, 4
		jmp	short loc_72A
; ---------------------------------------------------------------------------

loc_702:				; CODE XREF: _pkcs7_main+4D2j
		push	offset ??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@ ; "bad	input format specified for pkcs7 ob"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 8
		jmp	short loc_725
; ---------------------------------------------------------------------------

loc_717:				; CODE XREF: _pkcs7_main+378j
					; _pkcs7_main+380j
		push	dword ptr ds:_bio_err
		call	_ERR_print_errors
		add	esp, 4

loc_725:				; CODE XREF: _pkcs7_main+4CAj
					; _pkcs7_main+715j
		mov	edi, 1

loc_72A:				; CODE XREF: _pkcs7_main+5DAj
					; _pkcs7_main+680j ...
		test	ebx, ebx
		jz	short loc_737
		push	ebx
		call	_BIO_free
		add	esp, 4

loc_737:				; CODE XREF: _pkcs7_main+72Cj
		test	esi, esi
		jz	short loc_744
		push	esi
		call	_BIO_free_all
		add	esp, 4

loc_744:				; CODE XREF: _pkcs7_main+739j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		add	esp, 24h
		retn
; ---------------------------------------------------------------------------

loc_74E:				; CODE XREF: _pkcs7_main+7Aj
		mov	eax, 1
		pop	ebp
		add	esp, 24h
		retn
_pkcs7_main	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 758h
; COMDAT (pick any)
		public ??_C@_07CGGPPMGB@?9inform?$AA@
; `string'
??_C@_07CGGPPMGB@?9inform?$AA@ db '-inform',0 ; DATA XREF: _pkcs7_main+B8o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 760h
; COMDAT (pick any)
		public ??_C@_08LPHBEAIF@?9outform?$AA@
; `string'
??_C@_08LPHBEAIF@?9outform?$AA@	db '-outform',0 ; DATA XREF: _pkcs7_main:loc_10Ao
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 76Ch
; COMDAT (pick any)
		public ??_C@_03DAJLOBIG@?9in?$AA@
; `string'
??_C@_03DAJLOBIG@?9in?$AA@ dd 6E692Dh	; DATA XREF: _pkcs7_main:loc_15Bo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 770h
; COMDAT (pick any)
		public ??_C@_04HKKABCEL@?9out?$AA@
; `string'
??_C@_04HKKABCEL@?9out?$AA@ db '-out',0 ; DATA XREF: _pkcs7_main:loc_1A4o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 778h
; COMDAT (pick any)
		public ??_C@_06JPEJAHHH@?9noout?$AA@
; `string'
??_C@_06JPEJAHHH@?9noout?$AA@ db '-noout',0 ; DATA XREF: _pkcs7_main:loc_1F2o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 780h
; COMDAT (pick any)
		public ??_C@_05OEBEIMJA@?9text?$AA@
; `string'
??_C@_05OEBEIMJA@?9text?$AA@ db	'-text',0 ; DATA XREF: _pkcs7_main:loc_236o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 788h
; COMDAT (pick any)
		public ??_C@_06LPNCEOC@?9print?$AA@
; `string'
??_C@_06LPNCEOC@?9print?$AA@ db	'-print',0 ; DATA XREF: _pkcs7_main:loc_276o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 790h
; COMDAT (pick any)
		public ??_C@_0N@ILGHIMOP@?9print_certs?$AA@
; `string'
??_C@_0N@ILGHIMOP@?9print_certs?$AA@ db	'-print_certs',0 ; DATA XREF: _pkcs7_main:loc_2B6o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7A0h
; COMDAT (pick any)
		public ??_C@_07CECBDAGF@?9engine?$AA@
; `string'
??_C@_07CECBDAGF@?9engine?$AA@ db '-engine',0 ; DATA XREF: _pkcs7_main:loc_2F3o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7A8h
; COMDAT (pick any)
		public ??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@
; `string'
??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@ db 'unknown option %s',0Ah,0
					; DATA XREF: _pkcs7_main+3CCo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7BCh
; COMDAT (pick any)
		public ??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@
; `string'
??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@ db '%s [options] <infile >outfile',0Ah,0
					; DATA XREF: _pkcs7_main+3E3o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7DCh
; COMDAT (pick any)
		public ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
; `string'
??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ db 'where options are',0Ah,0
					; DATA XREF: _pkcs7_main+3F3o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 7F0h
; COMDAT (pick any)
		public ??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@
; `string'
??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@ db ' -inform arg   input format - DER or PEM',0Ah,0
					; DATA XREF: _pkcs7_main+403o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 81Ch
; COMDAT (pick any)
		public ??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@
; `string'
??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@ db ' -outform arg  output format - DER or PEM',0Ah,0
					; DATA XREF: _pkcs7_main+413o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 848h
; COMDAT (pick any)
		public ??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@
; `string'
??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@ db ' -in arg       input file',0Ah,0
					; DATA XREF: _pkcs7_main+423o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 864h
; COMDAT (pick any)
		public ??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@
; `string'
??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@ db ' -out arg      output file',0Ah,0
					; DATA XREF: _pkcs7_main+433o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 880h
; COMDAT (pick any)
		public ??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@
; `string'
??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@ db ' -print_certs  print any certs or crl in the input',0Ah,0
					; DATA XREF: _pkcs7_main+443o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8B4h
; COMDAT (pick any)
		public ??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@
; `string'
??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@ db ' -text         print full details of certificates',0Ah,0
					; DATA XREF: _pkcs7_main+453o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8E8h
; COMDAT (pick any)
		public ??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@
; `string'
??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@ db ' -noout        don',27h,'t output encoded data',0Ah,0
					; DATA XREF: _pkcs7_main+466o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 914h
; COMDAT (pick any)
		public ??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@
; `string'
??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@ db ' -engine e     use engine e, possibly a hardware device.',0Ah,0
					; DATA XREF: _pkcs7_main+476o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 950h
; COMDAT (pick any)
		public ??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@
; `string'
??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@	db 'unable to load input file',0Ah,0
					; DATA XREF: _pkcs7_main+4ACo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 96Ch
; COMDAT (pick any)
		public ??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@
; `string'
??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@ db 'bad input format specified for pkcs7 object',0Ah,0
					; DATA XREF: _pkcs7_main:loc_702o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 99Ch
; COMDAT (pick any)
		public ??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@
; `string'
??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@ db 'unable to load PKCS7 object',0Ah,0
					; DATA XREF: _pkcs7_main+4F1o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 9BCh
; COMDAT (pick any)
		public ??_C@_01EEMJAFIK@?6?$AA@
; `string'
??_C@_01EEMJAFIK@?6?$AA@ db 0Ah, 0	; DATA XREF: _pkcs7_main:loc_5F8o
					; _pkcs7_main:loc_654o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 9C0h
; COMDAT (pick any)
		public ??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@
; `string'
??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@ db 'bad output format specified for outfile',0Ah,0
					; DATA XREF: _pkcs7_main:loc_6DFo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 9ECh
; COMDAT (pick any)
		public ??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@
; `string'
??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@ db 'unable to write pkcs7 object',0Ah,0
					; DATA XREF: _pkcs7_main+6B1o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _pkcs7_main+4Fp
					; _pkcs7_main+393p ...
; void __cdecl _perror(const char *ErrMsg)
		extrn __imp__perror:near ; CODE	XREF: _pkcs7_main+5C3p
					; DATA XREF: _pkcs7_main+5C3r
		extrn _sk_num:near	; CODE XREF: _pkcs7_main+576p
					; _pkcs7_main+605p ...
		extrn _sk_value:near	; CODE XREF: _pkcs7_main+592p
					; _pkcs7_main+632p
		extrn _BIO_s_file:near	; CODE XREF: _pkcs7_main+36p
					; _pkcs7_main+355p ...
		extrn _BIO_new:near	; CODE XREF: _pkcs7_main+3Cp
					; _pkcs7_main+35Bp ...
		extrn _BIO_free:near	; CODE XREF: _pkcs7_main+72Fp
		extrn _BIO_puts:near	; CODE XREF: _pkcs7_main+5FEp
					; _pkcs7_main+65Ap
		extrn _BIO_ctrl:near	; CODE XREF: _pkcs7_main+60p
					; _pkcs7_main+39Fp ...
		extrn _BIO_free_all:near ; CODE	XREF: _pkcs7_main+73Cp
		extrn _BIO_printf:near	; CODE XREF: _pkcs7_main+3D7p
					; _pkcs7_main+3EEp ...
		extrn _OBJ_obj2nid:near	; CODE XREF: _pkcs7_main+53Cp
		extrn _d2i_PKCS7_bio:near ; CODE XREF: _pkcs7_main+3B7p
		extrn _i2d_PKCS7_bio:near ; CODE XREF: _pkcs7_main+697p
		extrn _PKCS7_free:near	; CODE XREF: _pkcs7_main+5D2p
					; _pkcs7_main+678p ...
		extrn _PKCS7_print_ctx:near ; CODE XREF: _pkcs7_main+526p
		extrn _X509_print:near	; CODE XREF: _pkcs7_main+5A5p
		extrn _X509_CRL_print:near ; CODE XREF:	_pkcs7_main+63Bp
		extrn _ERR_print_errors:near ; CODE XREF: _pkcs7_main+4C2p
					; _pkcs7_main+6C7p ...
		extrn _ERR_load_crypto_strings:near ; CODE XREF: _pkcs7_main:loc_342p
		extrn _str2fmt:near	; CODE XREF: _pkcs7_main+F9p
					; _pkcs7_main+14Ap
		extrn _dump_cert_text:near ; CODE XREF:	_pkcs7_main:loc_5DFp
		extrn _setup_engine:near ; CODE	XREF: _pkcs7_main+350p
		extrn _load_config:near	; CODE XREF: _pkcs7_main+70p
		extrn _PEM_write_bio_X509:near ; CODE XREF: _pkcs7_main+5F0p
		extrn _PEM_write_bio_X509_CRL:near ; CODE XREF:	_pkcs7_main+64Cp
		extrn _PEM_read_bio_PKCS7:near ; CODE XREF: _pkcs7_main+4DFp
		extrn _PEM_write_bio_PKCS7:near	; CODE XREF: _pkcs7_main+6A5p
		extrn __chkstk:near	; CODE XREF: _pkcs7_main+5p
		extrn _bio_err:near	; DATA XREF: _pkcs7_main+Ar
					; _pkcs7_main+44w ...


		end
