; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\apps\nseq.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_nseq_main
PUBLIC	??_C@_06EGJKJJJI@?9toseq?$AA@			; `string'
PUBLIC	??_C@_03DAJLOBIG@?9in?$AA@			; `string'
PUBLIC	??_C@_04HKKABCEL@?9out?$AA@			; `string'
PUBLIC	??_C@_0CH@PGDFEKLI@Netscape?5certificate?5sequence?5ut@ ; `string'
PUBLIC	??_C@_0BG@JGPMEDPG@Usage?5nseq?5?$FLoptions?$FN?6?$AA@ ; `string'
PUBLIC	??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@	; `string'
PUBLIC	??_C@_0BG@BNNBANGN@?9in?5file?5?5input?5file?6?$AA@ ; `string'
PUBLIC	??_C@_0BH@KOLPBKOB@?9out?5file?5output?5file?6?$AA@ ; `string'
PUBLIC	??_C@_0CD@OACBOEDA@?9toseq?5?5?5?5output?5NS?5Sequence?5fil@ ; `string'
PUBLIC	??_C@_01KDCPPGHE@r?$AA@				; `string'
PUBLIC	??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_01NOFIACDB@w?$AA@				; `string'
PUBLIC	??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_0BN@GDMLPPDC@Error?5reading?5certs?5file?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_0CA@HCEPGOOI@Error?5reading?5sequence?5file?5?$CFs?6?$AA@ ; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	_sk_num:PROC
EXTRN	_sk_value:PROC
EXTRN	_sk_new_null:PROC
EXTRN	_sk_push:PROC
EXTRN	_BIO_new_file:PROC
EXTRN	_BIO_new_fp:PROC
EXTRN	_BIO_free:PROC
EXTRN	_BIO_free_all:PROC
EXTRN	_BIO_printf:PROC
EXTRN	_NETSCAPE_CERT_SEQUENCE_new:PROC
EXTRN	_NETSCAPE_CERT_SEQUENCE_free:PROC
EXTRN	_ERR_print_errors:PROC
EXTRN	_ERR_load_crypto_strings:PROC
EXTRN	_dump_cert_text:PROC
EXTRN	_PEM_read_bio_X509:PROC
EXTRN	_PEM_write_bio_X509:PROC
EXTRN	_PEM_read_bio_NETSCAPE_CERT_SEQUENCE:PROC
EXTRN	_PEM_write_bio_NETSCAPE_CERT_SEQUENCE:PROC
EXTRN	__chkstk:PROC
EXTRN	_bio_err:DWORD
;	COMDAT ??_C@_0CA@HCEPGOOI@Error?5reading?5sequence?5file?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0CA@HCEPGOOI@Error?5reading?5sequence?5file?5?$CFs?6?$AA@ DB 'Error'
	DB	' reading sequence file %s', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@GDMLPPDC@Error?5reading?5certs?5file?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BN@GDMLPPDC@Error?5reading?5certs?5file?5?$CFs?6?$AA@ DB 'Error re'
	DB	'ading certs file %s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@ DB 'Can''t op'
	DB	'en output file %s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_01NOFIACDB@w?$AA@
CONST	SEGMENT
??_C@_01NOFIACDB@w?$AA@ DB 'w', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@ DB 'Can''t ope'
	DB	'n input file %s', 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_01KDCPPGHE@r?$AA@
CONST	SEGMENT
??_C@_01KDCPPGHE@r?$AA@ DB 'r', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0CD@OACBOEDA@?9toseq?5?5?5?5output?5NS?5Sequence?5fil@
CONST	SEGMENT
??_C@_0CD@OACBOEDA@?9toseq?5?5?5?5output?5NS?5Sequence?5fil@ DB '-toseq  '
	DB	'  output NS Sequence file', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@KOLPBKOB@?9out?5file?5output?5file?6?$AA@
CONST	SEGMENT
??_C@_0BH@KOLPBKOB@?9out?5file?5output?5file?6?$AA@ DB '-out file output '
	DB	'file', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@BNNBANGN@?9in?5file?5?5input?5file?6?$AA@
CONST	SEGMENT
??_C@_0BG@BNNBANGN@?9in?5file?5?5input?5file?6?$AA@ DB '-in file  input f'
	DB	'ile', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
CONST	SEGMENT
??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ DB 'where options are', 0aH
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@JGPMEDPG@Usage?5nseq?5?$FLoptions?$FN?6?$AA@
CONST	SEGMENT
??_C@_0BG@JGPMEDPG@Usage?5nseq?5?$FLoptions?$FN?6?$AA@ DB 'Usage nseq [op'
	DB	'tions]', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0CH@PGDFEKLI@Netscape?5certificate?5sequence?5ut@
CONST	SEGMENT
??_C@_0CH@PGDFEKLI@Netscape?5certificate?5sequence?5ut@ DB 'Netscape cert'
	DB	'ificate sequence utility', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04HKKABCEL@?9out?$AA@
CONST	SEGMENT
??_C@_04HKKABCEL@?9out?$AA@ DB '-out', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_03DAJLOBIG@?9in?$AA@
CONST	SEGMENT
??_C@_03DAJLOBIG@?9in?$AA@ DB '-in', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_06EGJKJJJI@?9toseq?$AA@
CONST	SEGMENT
??_C@_06EGJKJJJI@?9toseq?$AA@ DB '-toseq', 00H		; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _nseq_main
_TEXT	SEGMENT
_infile$1$ = -20					; size = 4
_out$1$ = -16						; size = 4
_ret$1$ = -12						; size = 4
_outfile$1$ = -8					; size = 4
_toseq$1$ = -4						; size = 4
_argc$ = 8						; size = 4
_in$1$ = 12						; size = 4
_argv$ = 12						; size = 4
_nseq_main PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\apps\nseq.c
; Line 72
	mov	eax, 20					; 00000014H
	call	__chkstk
	push	ebx
	push	ebp
; Line 73
	xor	eax, eax
; Line 78
	mov	DWORD PTR _ret$1$[esp+28], 1
	push	esi
	push	edi
	xor	edi, edi
	mov	DWORD PTR _infile$1$[esp+36], eax
	xor	ebp, ebp
	mov	DWORD PTR _outfile$1$[esp+36], edi
	mov	DWORD PTR _out$1$[esp+36], eax
	mov	DWORD PTR _toseq$1$[esp+36], eax
; Line 80
	cmp	DWORD PTR _bio_err, eax
	jne	SHORT $LN9@nseq_main
; Line 81
	push	ebp
	push	2
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	push	eax
	call	_BIO_new_fp
	add	esp, 8
	mov	DWORD PTR _bio_err, eax
$LN9@nseq_main:
; Line 82
	call	_ERR_load_crypto_strings
; Line 83
	mov	esi, DWORD PTR _argv$[esp+32]
	add	esi, 4
	npad	6
$LL2@nseq_main:
; Line 84
	mov	edx, DWORD PTR [esi]
	test	edx, edx
	je	$LN3@nseq_main
	cmp	BYTE PTR [edx], 45			; 0000002dH
	jne	$LN3@nseq_main
; Line 85
	mov	ecx, OFFSET ??_C@_06EGJKJJJI@?9toseq?$AA@
	mov	eax, edx
	npad	6
$LL44@nseq_main:
	mov	bl, BYTE PTR [eax]
	cmp	bl, BYTE PTR [ecx]
	jne	SHORT $LN45@nseq_main
	test	bl, bl
	je	SHORT $LN46@nseq_main
	mov	bl, BYTE PTR [eax+1]
	cmp	bl, BYTE PTR [ecx+1]
	jne	SHORT $LN45@nseq_main
	add	eax, 2
	add	ecx, 2
	test	bl, bl
	jne	SHORT $LL44@nseq_main
$LN46@nseq_main:
	xor	eax, eax
	jmp	SHORT $LN47@nseq_main
$LN45@nseq_main:
	sbb	eax, eax
	or	eax, 1
$LN47@nseq_main:
	test	eax, eax
	jne	SHORT $LN10@nseq_main
; Line 86
	mov	DWORD PTR _toseq$1$[esp+36], 1
	jmp	$LN17@nseq_main
$LN10@nseq_main:
; Line 87
	mov	ecx, OFFSET ??_C@_03DAJLOBIG@?9in?$AA@
	mov	eax, edx
	npad	3
$LL48@nseq_main:
	mov	bl, BYTE PTR [eax]
	cmp	bl, BYTE PTR [ecx]
	jne	SHORT $LN49@nseq_main
	test	bl, bl
	je	SHORT $LN50@nseq_main
	mov	bl, BYTE PTR [eax+1]
	cmp	bl, BYTE PTR [ecx+1]
	jne	SHORT $LN49@nseq_main
	add	eax, 2
	add	ecx, 2
	test	bl, bl
	jne	SHORT $LL48@nseq_main
$LN50@nseq_main:
	xor	eax, eax
	jmp	SHORT $LN51@nseq_main
$LN49@nseq_main:
	sbb	eax, eax
	or	eax, 1
$LN51@nseq_main:
	test	eax, eax
	jne	SHORT $LN12@nseq_main
; Line 88
	cmp	DWORD PTR [esi+4], ebp
	je	SHORT $LN16@nseq_main
; Line 90
	mov	ebx, DWORD PTR [esi+4]
	add	esi, 4
	mov	DWORD PTR _infile$1$[esp+36], ebx
; Line 93
	jmp	SHORT $LN17@nseq_main
$LN12@nseq_main:
	mov	eax, OFFSET ??_C@_04HKKABCEL@?9out?$AA@
	npad	1
$LL52@nseq_main:
	mov	cl, BYTE PTR [edx]
	cmp	cl, BYTE PTR [eax]
	jne	SHORT $LN53@nseq_main
	test	cl, cl
	je	SHORT $LN54@nseq_main
	mov	cl, BYTE PTR [edx+1]
	cmp	cl, BYTE PTR [eax+1]
	jne	SHORT $LN53@nseq_main
	add	edx, 2
	add	eax, 2
	test	cl, cl
	jne	SHORT $LL52@nseq_main
$LN54@nseq_main:
	xor	eax, eax
	jmp	SHORT $LN55@nseq_main
$LN53@nseq_main:
	sbb	eax, eax
	or	eax, 1
$LN55@nseq_main:
	test	eax, eax
	jne	SHORT $LN16@nseq_main
; Line 94
	cmp	DWORD PTR [esi+4], ebp
	je	SHORT $LN16@nseq_main
; Line 96
	mov	ebx, DWORD PTR [esi+4]
	add	esi, 4
	mov	DWORD PTR _outfile$1$[esp+36], ebx
; Line 97
	jmp	SHORT $LN17@nseq_main
$LN16@nseq_main:
; Line 100
	mov	edi, 1
$LN17@nseq_main:
; Line 101
	add	esi, 4
	test	edi, edi
	je	$LL2@nseq_main
; Line 104
	jmp	SHORT $LN43@nseq_main
$LN3@nseq_main:
	test	edi, edi
	je	SHORT $LN20@nseq_main
$LN43@nseq_main:
; Line 105
	push	OFFSET ??_C@_0CH@PGDFEKLI@Netscape?5certificate?5sequence?5ut@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 106
	push	OFFSET ??_C@_0BG@JGPMEDPG@Usage?5nseq?5?$FLoptions?$FN?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 107
	push	OFFSET ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 108
	push	OFFSET ??_C@_0BG@BNNBANGN@?9in?5file?5?5input?5file?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 109
	push	OFFSET ??_C@_0BH@KOLPBKOB@?9out?5file?5output?5file?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 110
	push	OFFSET ??_C@_0CD@OACBOEDA@?9toseq?5?5?5?5output?5NS?5Sequence?5fil@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 48					; 00000030H
; Line 111
	mov	eax, 1
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 170
	add	esp, 20					; 00000014H
	ret	0
$LN20@nseq_main:
; Line 114
	mov	ebx, DWORD PTR _infile$1$[esp+36]
	test	ebx, ebx
	je	SHORT $LN21@nseq_main
; Line 115
	push	OFFSET ??_C@_01KDCPPGHE@r?$AA@
	push	ebx
	call	_BIO_new_file
	mov	ebx, eax
	add	esp, 8
	mov	DWORD PTR _in$1$[esp+32], ebx
	test	ebx, ebx
	jne	SHORT $LN56@nseq_main
; Line 116
	mov	eax, DWORD PTR _infile$1$[esp+36]
	push	eax
	push	OFFSET ??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 12					; 0000000cH
; Line 117
	jmp	$end$60
$LN21@nseq_main:
; Line 120
	mov	esi, DWORD PTR __imp____acrt_iob_func
	push	0
	push	0
	call	esi
	add	esp, 4
	push	eax
	call	_BIO_new_fp
	mov	ebx, eax
	add	esp, 8
	mov	DWORD PTR _in$1$[esp+32], ebx
	jmp	SHORT $LN22@nseq_main
$LN56@nseq_main:
	mov	esi, DWORD PTR __imp____acrt_iob_func
$LN22@nseq_main:
; Line 122
	mov	edi, DWORD PTR _outfile$1$[esp+36]
	test	edi, edi
	je	SHORT $LN24@nseq_main
; Line 123
	push	OFFSET ??_C@_01NOFIACDB@w?$AA@
	push	edi
	call	_BIO_new_file
	mov	esi, eax
	add	esp, 8
	mov	DWORD PTR _out$1$[esp+36], esi
	test	esi, esi
	jne	SHORT $LN25@nseq_main
; Line 124
	push	edi
	push	OFFSET ??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@
	push	DWORD PTR _bio_err
	call	_BIO_printf
	add	esp, 12					; 0000000cH
; Line 125
	jmp	$end$60
$LN24@nseq_main:
; Line 128
	push	0
	push	1
	call	esi
	add	esp, 4
	push	eax
	call	_BIO_new_fp
	add	esp, 8
	mov	DWORD PTR _out$1$[esp+36], eax
	mov	esi, eax
$LN25@nseq_main:
; Line 136
	mov	eax, DWORD PTR _toseq$1$[esp+36]
	test	eax, eax
	je	$LN27@nseq_main
; Line 137
	call	_NETSCAPE_CERT_SEQUENCE_new
	mov	ebp, eax
; Line 138
	call	_sk_new_null
; Line 139
	push	0
	push	0
	push	0
	push	ebx
	mov	DWORD PTR [ebp+4], eax
	call	_PEM_read_bio_X509
	add	esp, 16					; 00000010H
	test	eax, eax
	je	SHORT $LN5@nseq_main
$LL4@nseq_main:
; Line 140
	push	eax
	push	DWORD PTR [ebp+4]
	call	_sk_push
	push	0
	push	0
	push	0
	push	ebx
	call	_PEM_read_bio_X509
	add	esp, 24					; 00000018H
	test	eax, eax
	jne	SHORT $LL4@nseq_main
$LN5@nseq_main:
; Line 142
	push	DWORD PTR [ebp+4]
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN28@nseq_main
; Line 143
	mov	eax, DWORD PTR _infile$1$[esp+36]
	push	eax
	push	OFFSET ??_C@_0BN@GDMLPPDC@Error?5reading?5certs?5file?5?$CFs?6?$AA@
$LN58@nseq_main:
	push	DWORD PTR _bio_err
	call	_BIO_printf
; Line 144
	push	DWORD PTR _bio_err
	call	_ERR_print_errors
	add	esp, 16					; 00000010H
; Line 145
	jmp	SHORT $end$60
$LN28@nseq_main:
; Line 147
	push	ebp
	push	esi
	call	_PEM_write_bio_NETSCAPE_CERT_SEQUENCE
	add	esp, 8
; Line 149
	jmp	SHORT $LN7@nseq_main
$LN27@nseq_main:
; Line 152
	push	0
	push	0
	push	0
	push	ebx
	call	_PEM_read_bio_NETSCAPE_CERT_SEQUENCE
	mov	ebp, eax
	add	esp, 16					; 00000010H
	test	ebp, ebp
	jne	SHORT $LN29@nseq_main
; Line 153
	mov	eax, DWORD PTR _infile$1$[esp+36]
	push	eax
	push	OFFSET ??_C@_0CA@HCEPGOOI@Error?5reading?5sequence?5file?5?$CFs?6?$AA@
; Line 155
	jmp	SHORT $LN58@nseq_main
$LN29@nseq_main:
; Line 158
	push	DWORD PTR [ebp+4]
	xor	edi, edi
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	SHORT $LN7@nseq_main
	mov	ebx, DWORD PTR _out$1$[esp+36]
$LL8@nseq_main:
; Line 159
	push	edi
	push	DWORD PTR [ebp+4]
	call	_sk_value
	mov	esi, eax
; Line 160
	push	esi
	push	ebx
	call	_dump_cert_text
; Line 161
	push	esi
	push	ebx
	call	_PEM_write_bio_X509
	push	DWORD PTR [ebp+4]
	inc	edi
	call	_sk_num
	add	esp, 28					; 0000001cH
	cmp	edi, eax
	jl	SHORT $LL8@nseq_main
	mov	ebx, DWORD PTR _in$1$[esp+32]
$LN7@nseq_main:
; Line 163
	mov	DWORD PTR _ret$1$[esp+36], 0
$end$60:
; Line 165
	push	ebx
	call	_BIO_free
; Line 166
	push	DWORD PTR _out$1$[esp+40]
	call	_BIO_free_all
; Line 167
	push	ebp
	call	_NETSCAPE_CERT_SEQUENCE_free
; Line 169
	mov	eax, DWORD PTR _ret$1$[esp+48]
	add	esp, 12					; 0000000cH
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 170
	add	esp, 20					; 00000014H
	ret	0
_nseq_main ENDP
_TEXT	ENDS
END