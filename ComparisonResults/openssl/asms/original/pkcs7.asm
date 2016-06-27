; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\apps\pkcs7.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_pkcs7_main
PUBLIC	??_C@_07CGGPPMGB@?9inform?$AA@			; `string'
PUBLIC	??_C@_08LPHBEAIF@?9outform?$AA@			; `string'
PUBLIC	??_C@_03DAJLOBIG@?9in?$AA@			; `string'
PUBLIC	??_C@_04HKKABCEL@?9out?$AA@			; `string'
PUBLIC	??_C@_06JPEJAHHH@?9noout?$AA@			; `string'
PUBLIC	??_C@_05OEBEIMJA@?9text?$AA@			; `string'
PUBLIC	??_C@_06LPNCEOC@?9print?$AA@			; `string'
PUBLIC	??_C@_0N@ILGHIMOP@?9print_certs?$AA@		; `string'
PUBLIC	??_C@_07CECBDAGF@?9engine?$AA@			; `string'
PUBLIC	??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@ ; `string'
PUBLIC	??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@	; `string'
PUBLIC	??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@ ; `string'
PUBLIC	??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@ ; `string'
PUBLIC	??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@ ; `string'
PUBLIC	??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@ ; `string'
PUBLIC	??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@ ; `string'
PUBLIC	??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@ ; `string'
PUBLIC	??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@ ; `string'
PUBLIC	??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@ ; `string'
PUBLIC	??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@ ; `string'
PUBLIC	??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@ ; `string'
PUBLIC	??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@ ; `string'
PUBLIC	??_C@_01EEMJAFIK@?6?$AA@			; `string'
PUBLIC	??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@ ; `string'
PUBLIC	??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@ ; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp__perror:PROC
EXTRN	_sk_num:PROC
EXTRN	_sk_value:PROC
EXTRN	_BIO_s_file:PROC
EXTRN	_BIO_new:PROC
EXTRN	_BIO_free:PROC
EXTRN	_BIO_puts:PROC
EXTRN	_BIO_ctrl:PROC
EXTRN	_BIO_free_all:PROC
EXTRN	_BIO_printf:PROC
EXTRN	_OBJ_obj2nid:PROC
EXTRN	_d2i_PKCS7_bio:PROC
EXTRN	_i2d_PKCS7_bio:PROC
EXTRN	_PKCS7_free:PROC
EXTRN	_PKCS7_print_ctx:PROC
EXTRN	_X509_print:PROC
EXTRN	_X509_CRL_print:PROC
EXTRN	_ERR_print_errors:PROC
EXTRN	_ERR_load_crypto_strings:PROC
EXTRN	_str2fmt:PROC
EXTRN	_dump_cert_text:PROC
EXTRN	_setup_engine:PROC
EXTRN	_load_config:PROC
EXTRN	_PEM_write_bio_X509:PROC
EXTRN	_PEM_write_bio_X509_CRL:PROC
EXTRN	_PEM_read_bio_PKCS7:PROC
EXTRN	_PEM_write_bio_PKCS7:PROC
EXTRN	__chkstk:PROC
EXTRN	_bio_err:DWORD
;	COMDAT ??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@
CONST	SEGMENT
??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@ DB 'unable to '
	DB	'write pkcs7 object', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@
CONST	SEGMENT
??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@ DB 'bad output '
	DB	'format specified for outfile', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01EEMJAFIK@?6?$AA@
CONST	SEGMENT
??_C@_01EEMJAFIK@?6?$AA@ DB 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@
CONST	SEGMENT
??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@ DB 'unable to l'
	DB	'oad PKCS7 object', 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@
CONST	SEGMENT
??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@ DB 'bad input f'
	DB	'ormat specified for pkcs7 object', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@
CONST	SEGMENT
??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@ DB 'unable to loa'
	DB	'd input file', 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@
CONST	SEGMENT
??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@ DB ' -en'
	DB	'gine e     use engine e, possibly a hardware device.', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@
CONST	SEGMENT
??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@ DB ' -no'
	DB	'out        don''t output encoded data', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@
CONST	SEGMENT
??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@ DB ' -t'
	DB	'ext         print full details of certificates', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@
CONST	SEGMENT
??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@ DB ' -print_c'
	DB	'erts  print any certs or crl in the input', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@
CONST	SEGMENT
??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@ DB ' -out '
	DB	'arg      output file', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@
CONST	SEGMENT
??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@ DB ' -in ar'
	DB	'g       input file', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@
CONST	SEGMENT
??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@ DB ' -outfo'
	DB	'rm arg  output format - DER or PEM', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@
CONST	SEGMENT
??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@ DB ' -info'
	DB	'rm arg   input format - DER or PEM', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
CONST	SEGMENT
??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ DB 'where options are', 0aH
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@
CONST	SEGMENT
??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@ DB '%'
	DB	's [options] <infile >outfile', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@ DB 'unknown option %s', 0aH
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_07CECBDAGF@?9engine?$AA@
CONST	SEGMENT
??_C@_07CECBDAGF@?9engine?$AA@ DB '-engine', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@ILGHIMOP@?9print_certs?$AA@
CONST	SEGMENT
??_C@_0N@ILGHIMOP@?9print_certs?$AA@ DB '-print_certs', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_06LPNCEOC@?9print?$AA@
CONST	SEGMENT
??_C@_06LPNCEOC@?9print?$AA@ DB '-print', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_05OEBEIMJA@?9text?$AA@
CONST	SEGMENT
??_C@_05OEBEIMJA@?9text?$AA@ DB '-text', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_06JPEJAHHH@?9noout?$AA@
CONST	SEGMENT
??_C@_06JPEJAHHH@?9noout?$AA@ DB '-noout', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04HKKABCEL@?9out?$AA@
CONST	SEGMENT
??_C@_04HKKABCEL@?9out?$AA@ DB '-out', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_03DAJLOBIG@?9in?$AA@
CONST	SEGMENT
??_C@_03DAJLOBIG@?9in?$AA@ DB '-in', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_08LPHBEAIF@?9outform?$AA@
CONST	SEGMENT
??_C@_08LPHBEAIF@?9outform?$AA@ DB '-outform', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_07CGGPPMGB@?9inform?$AA@
CONST	SEGMENT
??_C@_07CGGPPMGB@?9inform?$AA@ DB '-inform', 00H	; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _pkcs7_main
_TEXT	SEGMENT
_infile$1$ = -36					; size = 4
_p7$1$ = -36						; size = 4
_noout$1$ = -32						; size = 4
_informat$1$ = -28					; size = 4
_outfile$1$ = -24					; size = 4
_crls$1$ = -20						; size = 4
_p7_print$1$ = -20					; size = 4
_certs$1$ = -16						; size = 4
_print_certs$1$ = -16					; size = 4
_text$1$ = -12						; size = 4
_outformat$1$ = -8					; size = 4
_prog$1$ = -4						; size = 4
_in$1$ = -4						; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_pkcs7_main PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\apps\pkcs7.c
; Line 85
	mov	eax, 36					; 00000024H
	call	__chkstk
; Line 99
	mov	eax, DWORD PTR _bio_err
	push	ebp
	xor	ebp, ebp
	mov	DWORD PTR _print_certs$1$[esp+40], 0
	mov	DWORD PTR _text$1$[esp+40], 0
	mov	DWORD PTR _noout$1$[esp+40], 0
	mov	DWORD PTR _p7_print$1$[esp+40], 0
	test	eax, eax
	jne	SHORT $LN13@pkcs7_main
; Line 100
	call	_BIO_s_file
	push	eax
	call	_BIO_new
	add	esp, 4
	mov	DWORD PTR _bio_err, eax
	test	eax, eax
	je	SHORT $LN13@pkcs7_main
; Line 101
	push	2
	call	DWORD PTR __imp____acrt_iob_func
	push	eax
	push	16					; 00000010H
	push	106					; 0000006aH
	push	DWORD PTR _bio_err
	call	_BIO_ctrl
	mov	eax, DWORD PTR _bio_err
	add	esp, 20					; 00000014H
$LN13@pkcs7_main:
; Line 103
	push	0
	push	eax
	call	_load_config
	add	esp, 8
	test	eax, eax
	je	$LN129@pkcs7_main
; Line 111
	push	ebx
	mov	ebx, DWORD PTR _argv$[esp+40]
	push	esi
	push	edi
; Line 112
	mov	edi, DWORD PTR _argc$[esp+48]
	mov	eax, DWORD PTR [ebx]
	dec	edi
; Line 113
	add	ebx, 4
	mov	DWORD PTR _infile$1$[esp+52], ebp
	mov	DWORD PTR _outfile$1$[esp+52], ebp
	mov	DWORD PTR _informat$1$[esp+52], 3
	mov	DWORD PTR _outformat$1$[esp+52], 3
	mov	DWORD PTR _prog$1$[esp+52], eax
; Line 114
	cmp	edi, 1
	jl	$LN38@pkcs7_main
$LL2@pkcs7_main:
; Line 115
	mov	esi, DWORD PTR [ebx]
	mov	ecx, OFFSET ??_C@_07CGGPPMGB@?9inform?$AA@
	mov	eax, esi
	npad	1
$LL92@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN93@pkcs7_main
	test	dl, dl
	je	SHORT $LN94@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN93@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL92@pkcs7_main
$LN94@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN95@pkcs7_main
$LN93@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN95@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN15@pkcs7_main
; Line 116
	dec	edi
	cmp	edi, 1
	jl	$bad$141
; Line 118
	push	DWORD PTR [ebx+4]
	add	ebx, 4
	call	_str2fmt
	add	esp, 4
	mov	DWORD PTR _informat$1$[esp+52], eax
	jmp	$LN36@pkcs7_main
$LN15@pkcs7_main:
; Line 119
	mov	ecx, OFFSET ??_C@_08LPHBEAIF@?9outform?$AA@
	mov	eax, esi
$LL96@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN97@pkcs7_main
	test	dl, dl
	je	SHORT $LN98@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN97@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL96@pkcs7_main
$LN98@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN99@pkcs7_main
$LN97@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN99@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN18@pkcs7_main
; Line 120
	dec	edi
	cmp	edi, 1
	jl	$bad$141
; Line 122
	push	DWORD PTR [ebx+4]
	add	ebx, 4
	call	_str2fmt
	add	esp, 4
	mov	DWORD PTR _outformat$1$[esp+52], eax
	jmp	$LN36@pkcs7_main
$LN18@pkcs7_main:
; Line 123
	mov	ecx, OFFSET ??_C@_03DAJLOBIG@?9in?$AA@
	mov	eax, esi
$LL100@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN101@pkcs7_main
	test	dl, dl
	je	SHORT $LN102@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN101@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL100@pkcs7_main
$LN102@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN103@pkcs7_main
$LN101@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN103@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN21@pkcs7_main
; Line 124
	dec	edi
	cmp	edi, 1
	jl	$bad$141
; Line 126
	mov	edx, DWORD PTR [ebx+4]
	add	ebx, 4
	mov	DWORD PTR _infile$1$[esp+52], edx
	jmp	$LN36@pkcs7_main
$LN21@pkcs7_main:
; Line 127
	mov	ecx, OFFSET ??_C@_04HKKABCEL@?9out?$AA@
	mov	eax, esi
	npad	5
$LL104@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN105@pkcs7_main
	test	dl, dl
	je	SHORT $LN106@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN105@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL104@pkcs7_main
$LN106@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN107@pkcs7_main
$LN105@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN107@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN24@pkcs7_main
; Line 128
	dec	edi
	cmp	edi, 1
	jl	$bad$141
; Line 130
	mov	edx, DWORD PTR [ebx+4]
	add	ebx, 4
	mov	DWORD PTR _outfile$1$[esp+52], edx
	jmp	$LN36@pkcs7_main
$LN24@pkcs7_main:
; Line 131
	mov	ecx, OFFSET ??_C@_06JPEJAHHH@?9noout?$AA@
	mov	eax, esi
	npad	7
$LL108@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN109@pkcs7_main
	test	dl, dl
	je	SHORT $LN110@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN109@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL108@pkcs7_main
$LN110@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN111@pkcs7_main
$LN109@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN111@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN27@pkcs7_main
; Line 132
	mov	DWORD PTR _noout$1$[esp+52], 1
	jmp	$LN36@pkcs7_main
$LN27@pkcs7_main:
; Line 133
	mov	ecx, OFFSET ??_C@_05OEBEIMJA@?9text?$AA@
	mov	eax, esi
	npad	3
$LL112@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN113@pkcs7_main
	test	dl, dl
	je	SHORT $LN114@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN113@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL112@pkcs7_main
$LN114@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN115@pkcs7_main
$LN113@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN115@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN29@pkcs7_main
; Line 134
	mov	DWORD PTR _text$1$[esp+52], 1
	jmp	$LN36@pkcs7_main
$LN29@pkcs7_main:
; Line 135
	mov	ecx, OFFSET ??_C@_06LPNCEOC@?9print?$AA@
	mov	eax, esi
	npad	3
$LL116@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN117@pkcs7_main
	test	dl, dl
	je	SHORT $LN118@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN117@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL116@pkcs7_main
$LN118@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN119@pkcs7_main
$LN117@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN119@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN31@pkcs7_main
; Line 136
	mov	DWORD PTR _p7_print$1$[esp+52], 1
	jmp	$LN36@pkcs7_main
$LN31@pkcs7_main:
; Line 137
	mov	ecx, OFFSET ??_C@_0N@ILGHIMOP@?9print_certs?$AA@
	mov	eax, esi
	npad	3
$LL120@pkcs7_main:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN121@pkcs7_main
	test	dl, dl
	je	SHORT $LN122@pkcs7_main
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN121@pkcs7_main
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL120@pkcs7_main
$LN122@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN123@pkcs7_main
$LN121@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN123@pkcs7_main:
	test	eax, eax
	jne	SHORT $LN33@pkcs7_main
; Line 138
	mov	DWORD PTR _print_certs$1$[esp+52], 1
	jmp	SHORT $LN36@pkcs7_main
$LN33@pkcs7_main:
; Line 140
	mov	eax, OFFSET ??_C@_07CECBDAGF@?9engine?$AA@
$LL124@pkcs7_main:
	mov	cl, BYTE PTR [esi]
	cmp	cl, BYTE PTR [eax]
	jne	SHORT $LN125@pkcs7_main
	test	cl, cl
	je	SHORT $LN126@pkcs7_main
	mov	cl, BYTE PTR [esi+1]
	cmp	cl, BYTE PTR [eax+1]
	jne	SHORT $LN125@pkcs7_main
	add	esi, 2
	add	eax, 2
	test	cl, cl
	jne	SHORT $LL124@pkcs7_main
$LN126@pkcs7_main:
	xor	eax, eax
	jmp	SHORT $LN127@pkcs7_main
$LN125@pkcs7_main:
	sbb	eax, eax
	or	eax, 1
$LN127@pkcs7_main:
	test	eax, eax
	jne	$LN35@pkcs7_main
; Line 141
	dec	edi
	cmp	edi, 1
	jl	$bad$141
; Line 143
	mov	ebp, DWORD PTR [ebx+4]
	add	ebx, 4
$LN36@pkcs7_main:
; Line 151
	dec	edi
; Line 152
	add	ebx, 4
	cmp	edi, 1
	jge	$LL2@pkcs7_main
$LN38@pkcs7_main:
; Line 176
	call	_ERR_load_crypto_strings
; Line 179
	push	0
	push	ebp
	push	DWORD PTR _bio_err
	call	_setup_engine
; Line 182
	call	_BIO_s_file
	push	eax
	call	_BIO_new
	mov	ebx, eax
	mov	DWORD PTR _in$1$[esp+68], ebx
; Line 183
	call	_BIO_s_file
	push	eax
	call	_BIO_new
	add	esp, 20					; 00000014H
	mov	esi, eax
; Line 184
	test	ebx, ebx
	je	$LN40@pkcs7_main
	test	esi, esi
	je	$LN40@pkcs7_main
; Line 189
	mov	eax, DWORD PTR _infile$1$[esp+52]
	test	eax, eax
	jne	$LN41@pkcs7_main
; Line 190
	push	eax
	call	DWORD PTR __imp____acrt_iob_func
	push	eax
	push	0
	push	106					; 0000006aH
	push	ebx
	call	_BIO_ctrl
	add	esp, 20					; 00000014H
$LN43@pkcs7_main:
; Line 199
	mov	eax, DWORD PTR _informat$1$[esp+52]
	cmp	eax, 1
	jne	$LN44@pkcs7_main
; Line 200
	push	0
	push	ebx
	call	_d2i_PKCS7_bio
	mov	ebp, eax
	add	esp, 8
	mov	DWORD PTR _p7$1$[esp+52], ebp
	jmp	$LN47@pkcs7_main
$LN35@pkcs7_main:
; Line 147
	push	DWORD PTR [ebx]
	push	OFFSET ??_C@_0BD@NFDCLIJC@unknown?5option?5?$CFs?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 12					; 0000000cH
$bad$141:
; Line 157
	push	DWORD PTR _prog$1$[esp+52]
	push	OFFSET ??_C@_0BP@OGEEJGDD@?$CFs?5?$FLoptions?$FN?5?$DMinfile?5?$DOoutfile?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 158
	push	OFFSET ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 159
	push	OFFSET ??_C@_0CK@BAAODCLL@?5?9inform?5arg?5?5?5input?5format?5?9?5DE@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 160
	push	OFFSET ??_C@_0CL@ODKCHCIH@?5?9outform?5arg?5?5output?5format?5?9?5D@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 161
	push	OFFSET ??_C@_0BL@EHLIKLH@?5?9in?5arg?5?5?5?5?5?5?5input?5file?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 162
	push	OFFSET ??_C@_0BM@JAFLIPIN@?5?9out?5arg?5?5?5?5?5?5output?5file?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 163
	push	OFFSET ??_C@_0DE@POHMEMDH@?5?9print_certs?5?5print?5any?5certs?5o@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 165
	push	OFFSET ??_C@_0DD@GHDEJGIO@?5?9text?5?5?5?5?5?5?5?5?5print?5full?5detail@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 68					; 00000044H
; Line 167
	push	OFFSET ??_C@_0CK@CNFPHCM@?5?9noout?5?5?5?5?5?5?5?5don?8t?5output?5enco@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 169
	push	OFFSET ??_C@_0DK@OCLGLONK@?5?9engine?5e?5?5?5?5?5use?5engine?5e?0?5pos@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 16					; 00000010H
; Line 311
	mov	eax, 1
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
; Line 312
	add	esp, 36					; 00000024H
	ret	0
$LN41@pkcs7_main:
; Line 192
	push	eax
	push	3
	push	108					; 0000006cH
	push	ebx
	call	_BIO_ctrl
	add	esp, 16					; 00000010H
	test	eax, eax
	jg	$LN43@pkcs7_main
; Line 193
	push	OFFSET ??_C@_0BL@FGIEKPII@unable?5to?5load?5input?5file?6?$AA@
$LN139@pkcs7_main:
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 194
	push	DWORD PTR _bio_err
	call	_ERR_print_errors
	add	esp, 12					; 0000000cH
; Line 195
	jmp	$LN135@pkcs7_main
$LN44@pkcs7_main:
; Line 201
	cmp	eax, 3
	jne	$LN46@pkcs7_main
; Line 202
	push	0
	push	0
	push	0
	push	ebx
	call	_PEM_read_bio_PKCS7
	add	esp, 16					; 00000010H
	mov	DWORD PTR _p7$1$[esp+52], eax
	mov	ebp, eax
$LN47@pkcs7_main:
; Line 207
	test	ebp, ebp
	jne	SHORT $LN48@pkcs7_main
; Line 208
	push	OFFSET ??_C@_0BN@ECNJJICM@unable?5to?5load?5PKCS7?5object?6?$AA@
; Line 210
	jmp	SHORT $LN139@pkcs7_main
$LN48@pkcs7_main:
; Line 213
	mov	edi, DWORD PTR _outfile$1$[esp+52]
	test	edi, edi
	jne	$LN49@pkcs7_main
; Line 214
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	push	eax
	push	edi
	push	106					; 0000006aH
	push	esi
	call	_BIO_ctrl
	add	esp, 20					; 00000014H
$LN51@pkcs7_main:
; Line 228
	cmp	DWORD PTR _p7_print$1$[esp+52], 0
	je	SHORT $LN52@pkcs7_main
; Line 229
	push	0
	push	0
	push	ebp
	push	esi
	call	_PKCS7_print_ctx
	add	esp, 16					; 00000010H
$LN52@pkcs7_main:
; Line 231
	cmp	DWORD PTR _print_certs$1$[esp+52], 0
	je	$LN53@pkcs7_main
; Line 235
	push	DWORD PTR [ebp+16]
	call	_OBJ_obj2nid
	add	esp, 4
; Line 236
	sub	eax, 22					; 00000016H
	je	SHORT $LN54@pkcs7_main
	sub	eax, 2
	jne	$LN10@pkcs7_main
$LN54@pkcs7_main:
; Line 238
	mov	ecx, DWORD PTR [ebp+20]
	test	ecx, ecx
	je	$LN10@pkcs7_main
; Line 239
	mov	eax, DWORD PTR [ecx+8]
; Line 240
	mov	ebp, DWORD PTR [ecx+12]
	mov	DWORD PTR _crls$1$[esp+52], ebp
	mov	DWORD PTR _certs$1$[esp+52], eax
; Line 253
	test	eax, eax
	je	$LN7@pkcs7_main
; Line 256
	push	eax
	xor	edi, edi
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	$LN7@pkcs7_main
	mov	ebp, DWORD PTR _certs$1$[esp+52]
	npad	6
$LL8@pkcs7_main:
; Line 257
	push	edi
	push	ebp
	call	_sk_value
	add	esp, 8
	mov	ebx, eax
; Line 258
	cmp	DWORD PTR _text$1$[esp+52], 0
; Line 259
	push	ebx
	push	esi
	je	SHORT $LN60@pkcs7_main
	call	_X509_print
	jmp	SHORT $LN137@pkcs7_main
$LN49@pkcs7_main:
; Line 222
	push	edi
	push	5
	push	108					; 0000006cH
	push	esi
	call	_BIO_ctrl
	add	esp, 16					; 00000010H
	test	eax, eax
	jg	$LN51@pkcs7_main
; Line 223
	push	edi
	call	DWORD PTR __imp__perror
	add	esp, 4
; Line 224
	mov	edi, 1
; Line 305
	push	ebp
	call	_PKCS7_free
	add	esp, 4
	jmp	$LN71@pkcs7_main
$LN60@pkcs7_main:
; Line 261
	call	_dump_cert_text
$LN137@pkcs7_main:
	add	esp, 8
; Line 263
	cmp	DWORD PTR _noout$1$[esp+52], 0
	jne	SHORT $LN62@pkcs7_main
; Line 264
	push	ebx
	push	esi
	call	_PEM_write_bio_X509
	add	esp, 8
$LN62@pkcs7_main:
; Line 265
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	push	esi
	call	_BIO_puts
	push	ebp
	inc	edi
	call	_sk_num
	add	esp, 12					; 0000000cH
	cmp	edi, eax
	jl	$LL8@pkcs7_main
	mov	ebp, DWORD PTR _crls$1$[esp+52]
$LN7@pkcs7_main:
; Line 268
	test	ebp, ebp
	je	SHORT $LN131@pkcs7_main
; Line 271
	push	ebp
	xor	edi, edi
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	SHORT $LN131@pkcs7_main
	npad	4
$LL11@pkcs7_main:
; Line 272
	push	edi
	push	ebp
	call	_sk_value
	mov	ebx, eax
; Line 274
	push	ebx
	push	esi
	call	_X509_CRL_print
	add	esp, 16					; 00000010H
; Line 276
	cmp	DWORD PTR _noout$1$[esp+52], 0
	jne	SHORT $LN64@pkcs7_main
; Line 277
	push	ebx
	push	esi
	call	_PEM_write_bio_X509_CRL
	add	esp, 8
$LN64@pkcs7_main:
; Line 278
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	push	esi
	call	_BIO_puts
	push	ebp
	inc	edi
	call	_sk_num
	add	esp, 12					; 0000000cH
	cmp	edi, eax
	jl	SHORT $LL11@pkcs7_main
$LN131@pkcs7_main:
	mov	ebp, DWORD PTR _p7$1$[esp+52]
$LN10@pkcs7_main:
; Line 283
	mov	ebx, DWORD PTR _in$1$[esp+52]
$LN70@pkcs7_main:
; Line 302
	xor	edi, edi
$end$142:
; Line 305
	push	ebp
	call	_PKCS7_free
	add	esp, 4
	jmp	$LN71@pkcs7_main
$LN53@pkcs7_main:
; Line 286
	cmp	DWORD PTR _noout$1$[esp+52], 0
	jne	SHORT $LN70@pkcs7_main
; Line 287
	mov	eax, DWORD PTR _outformat$1$[esp+52]
	cmp	eax, 1
	jne	SHORT $LN66@pkcs7_main
; Line 288
	push	ebp
	push	esi
	call	_i2d_PKCS7_bio
	jmp	SHORT $LN138@pkcs7_main
$LN66@pkcs7_main:
; Line 289
	cmp	eax, 3
	jne	SHORT $LN68@pkcs7_main
; Line 290
	push	ebp
	push	esi
	call	_PEM_write_bio_PKCS7
$LN138@pkcs7_main:
	add	esp, 8
; Line 296
	test	eax, eax
	jne	SHORT $LN70@pkcs7_main
; Line 297
	push	OFFSET ??_C@_0BO@JCPMNLPI@unable?5to?5write?5pkcs7?5object?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 298
	push	DWORD PTR _bio_err
	call	_ERR_print_errors
	add	esp, 12					; 0000000cH
; Line 299
	mov	edi, 1
; Line 305
	push	ebp
	call	_PKCS7_free
	add	esp, 4
	jmp	SHORT $LN71@pkcs7_main
$LN68@pkcs7_main:
; Line 292
	push	OFFSET ??_C@_0CJ@JNEPIEPI@bad?5output?5format?5specified?5for?5@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 8
; Line 293
	mov	edi, 1
; Line 305
	push	ebp
	call	_PKCS7_free
	add	esp, 4
	jmp	SHORT $LN71@pkcs7_main
$LN46@pkcs7_main:
; Line 204
	push	OFFSET ??_C@_0CN@BIPGADFJ@bad?5input?5format?5specified?5for?5p@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 8
; Line 205
	jmp	SHORT $LN135@pkcs7_main
$LN40@pkcs7_main:
; Line 185
	push	DWORD PTR _bio_err
	call	_ERR_print_errors
	add	esp, 4
$LN135@pkcs7_main:
	mov	edi, 1
$LN71@pkcs7_main:
; Line 306
	test	ebx, ebx
	je	SHORT $LN72@pkcs7_main
; Line 307
	push	ebx
	call	_BIO_free
	add	esp, 4
$LN72@pkcs7_main:
; Line 308
	test	esi, esi
	je	SHORT $LN128@pkcs7_main
; Line 309
	push	esi
	call	_BIO_free_all
	add	esp, 4
$LN128@pkcs7_main:
; Line 311
	mov	eax, edi
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
; Line 312
	add	esp, 36					; 00000024H
	ret	0
$LN129@pkcs7_main:
; Line 311
	mov	eax, 1
	pop	ebp
; Line 312
	add	esp, 36					; 00000024H
	ret	0
_pkcs7_main ENDP
_TEXT	ENDS
END