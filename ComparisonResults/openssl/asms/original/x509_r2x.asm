; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_r2x.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_X509_REQ_to_X509
PUBLIC	??_C@_0BJ@BAHMHGJG@?4?2crypto?2x509?2x509_r2x?4c?$AA@ ; `string'
EXTRN	_sk_num:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_ASN1_STRING_type_new:PROC
EXTRN	_ASN1_INTEGER_set:PROC
EXTRN	_EVP_md5:PROC
EXTRN	_X509_sign:PROC
EXTRN	_X509_NAME_dup:PROC
EXTRN	_X509_gmtime_adj:PROC
EXTRN	_X509_new:PROC
EXTRN	_X509_free:PROC
EXTRN	_X509_set_issuer_name:PROC
EXTRN	_X509_set_subject_name:PROC
EXTRN	_X509_set_pubkey:PROC
EXTRN	_X509_REQ_get_pubkey:PROC
;	COMDAT ??_C@_0BJ@BAHMHGJG@?4?2crypto?2x509?2x509_r2x?4c?$AA@
CONST	SEGMENT
??_C@_0BJ@BAHMHGJG@?4?2crypto?2x509?2x509_r2x?4c?$AA@ DB '.\crypto\x509\x'
	DB	'509_r2x.c', 00H				; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_REQ_to_X509
_TEXT	SEGMENT
_r$ = 8							; size = 4
_days$ = 12						; size = 4
_pkey$ = 16						; size = 4
_X509_REQ_to_X509 PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_r2x.c
; Line 69
	push	ebx
	push	ebp
	push	esi
	push	edi
; Line 74
	call	_X509_new
	mov	esi, eax
	test	esi, esi
	jne	SHORT $LN2@X509_REQ_t
; Line 75
	push	75					; 0000004bH
	push	OFFSET ??_C@_0BJ@BAHMHGJG@?4?2crypto?2x509?2x509_r2x?4c?$AA@
	push	65					; 00000041H
	push	123					; 0000007bH
	push	11					; 0000000bH
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$err$15:
; Line 109
	push	esi
	call	_X509_free
	add	esp, 4
; Line 112
	xor	eax, eax
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 113
	ret	0
$LN2@X509_REQ_t:
; Line 82
	mov	ebx, DWORD PTR _r$[esp+12]
	mov	edi, DWORD PTR [esi]
	mov	eax, DWORD PTR [ebx]
	push	DWORD PTR [eax+24]
	call	_sk_num
	add	esp, 4
	test	eax, eax
	je	SHORT $LN5@X509_REQ_t
; Line 83
	push	2
	call	_ASN1_STRING_type_new
	add	esp, 4
	mov	DWORD PTR [edi], eax
	test	eax, eax
	je	SHORT $err$15
; Line 85
	push	2
	push	eax
	call	_ASN1_INTEGER_set
	add	esp, 8
	test	eax, eax
	je	SHORT $err$15
$LN5@X509_REQ_t:
; Line 91
	mov	eax, DWORD PTR [ebx]
	mov	ebp, DWORD PTR [eax+16]
; Line 92
	push	ebp
	call	_X509_NAME_dup
	push	eax
	push	esi
	call	_X509_set_subject_name
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$15
; Line 94
	push	ebp
	call	_X509_NAME_dup
	push	eax
	push	esi
	call	_X509_set_issuer_name
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$15
; Line 97
	mov	eax, DWORD PTR [edi+16]
	push	0
	push	DWORD PTR [eax]
	call	_X509_gmtime_adj
	add	esp, 8
	test	eax, eax
	je	$err$15
; Line 99
	imul	eax, DWORD PTR _days$[esp+12], 86400
	push	eax
	mov	eax, DWORD PTR [edi+16]
	push	DWORD PTR [eax+4]
	call	_X509_gmtime_adj
	add	esp, 8
	test	eax, eax
	je	$err$15
; Line 103
	push	ebx
	call	_X509_REQ_get_pubkey
	push	eax
	push	esi
	call	_X509_set_pubkey
; Line 105
	call	_EVP_md5
	push	eax
	push	DWORD PTR _pkey$[esp+28]
	push	esi
	call	_X509_sign
	add	esp, 24					; 00000018H
	test	eax, eax
	je	$err$15
; Line 112
	pop	edi
	mov	eax, esi
	pop	esi
	pop	ebp
	pop	ebx
; Line 113
	ret	0
_X509_REQ_to_X509 ENDP
_TEXT	ENDS
END