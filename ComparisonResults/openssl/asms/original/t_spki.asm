; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\asn1\t_spki.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_NETSCAPE_SPKI_print
PUBLIC	??_C@_0BA@ELDOLKFM@Netscape?5SPKI?3?6?$AA@	; `string'
PUBLIC	??_C@_07NFANNNEC@UNKNOWN?$AA@			; `string'
PUBLIC	??_C@_0BM@OEGMMLJF@?5?5Public?5Key?5Algorithm?3?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_0BN@HNOKAENA@?5?5Unable?5to?5load?5public?5key?6?$AA@ ; `string'
PUBLIC	??_C@_0BI@MFJJCM@?5?5Challenge?5String?3?5?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_0BK@GIDDLGFG@?5?5Signature?5Algorithm?3?5?$CFs?$AA@ ; `string'
PUBLIC	??_C@_07PDGOCIM@?6?5?5?5?5?5?5?$AA@		; `string'
PUBLIC	??_C@_00CNPNBAHC@?$AA@				; `string'
PUBLIC	??_C@_01JLIPDDHJ@?3?$AA@			; `string'
PUBLIC	??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@		; `string'
PUBLIC	??_C@_01EEMJAFIK@?6?$AA@			; `string'
EXTRN	_BIO_write:PROC
EXTRN	_BIO_printf:PROC
EXTRN	_OBJ_nid2ln:PROC
EXTRN	_OBJ_obj2nid:PROC
EXTRN	_EVP_PKEY_free:PROC
EXTRN	_EVP_PKEY_print_public:PROC
EXTRN	_X509_PUBKEY_get:PROC
;	COMDAT ??_C@_01EEMJAFIK@?6?$AA@
CONST	SEGMENT
??_C@_01EEMJAFIK@?6?$AA@ DB 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@
CONST	SEGMENT
??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@ DB '%02x%s', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01JLIPDDHJ@?3?$AA@
CONST	SEGMENT
??_C@_01JLIPDDHJ@?3?$AA@ DB ':', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_00CNPNBAHC@?$AA@
CONST	SEGMENT
??_C@_00CNPNBAHC@?$AA@ DB 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_07PDGOCIM@?6?5?5?5?5?5?5?$AA@
CONST	SEGMENT
??_C@_07PDGOCIM@?6?5?5?5?5?5?5?$AA@ DB 0aH, '      ', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@GIDDLGFG@?5?5Signature?5Algorithm?3?5?$CFs?$AA@
CONST	SEGMENT
??_C@_0BK@GIDDLGFG@?5?5Signature?5Algorithm?3?5?$CFs?$AA@ DB '  Signature'
	DB	' Algorithm: %s', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BI@MFJJCM@?5?5Challenge?5String?3?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BI@MFJJCM@?5?5Challenge?5String?3?5?$CFs?6?$AA@ DB '  Challenge St'
	DB	'ring: %s', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@HNOKAENA@?5?5Unable?5to?5load?5public?5key?6?$AA@
CONST	SEGMENT
??_C@_0BN@HNOKAENA@?5?5Unable?5to?5load?5public?5key?6?$AA@ DB '  Unable '
	DB	'to load public key', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0BM@OEGMMLJF@?5?5Public?5Key?5Algorithm?3?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BM@OEGMMLJF@?5?5Public?5Key?5Algorithm?3?5?$CFs?6?$AA@ DB '  Publi'
	DB	'c Key Algorithm: %s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_07NFANNNEC@UNKNOWN?$AA@
CONST	SEGMENT
??_C@_07NFANNNEC@UNKNOWN?$AA@ DB 'UNKNOWN', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@ELDOLKFM@Netscape?5SPKI?3?6?$AA@
CONST	SEGMENT
??_C@_0BA@ELDOLKFM@Netscape?5SPKI?3?6?$AA@ DB 'Netscape SPKI:', 0aH, 00H ; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _NETSCAPE_SPKI_print
_TEXT	SEGMENT
_out$ = 8						; size = 4
_s$1$ = 12						; size = 4
_spki$ = 12						; size = 4
_NETSCAPE_SPKI_print PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\t_spki.c
; Line 75
	push	ebx
	push	esi
; Line 80
	mov	esi, DWORD PTR _out$[esp+4]
	push	edi
	push	OFFSET ??_C@_0BA@ELDOLKFM@Netscape?5SPKI?3?6?$AA@
	push	esi
	call	_BIO_printf
; Line 81
	mov	edi, DWORD PTR _spki$[esp+16]
	mov	eax, DWORD PTR [edi]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax]
	push	DWORD PTR [eax]
	call	_OBJ_obj2nid
	add	esp, 12					; 0000000cH
; Line 82
	test	eax, eax
	jne	SHORT $LN10@NETSCAPE_S
	mov	eax, OFFSET ??_C@_07NFANNNEC@UNKNOWN?$AA@
	jmp	SHORT $LN11@NETSCAPE_S
$LN10@NETSCAPE_S:
	push	eax
	call	_OBJ_nid2ln
	add	esp, 4
$LN11@NETSCAPE_S:
	push	eax
	push	OFFSET ??_C@_0BM@OEGMMLJF@?5?5Public?5Key?5Algorithm?3?5?$CFs?6?$AA@
	push	esi
	call	_BIO_printf
; Line 84
	mov	eax, DWORD PTR [edi]
	push	DWORD PTR [eax]
	call	_X509_PUBKEY_get
	mov	ebx, eax
	add	esp, 16					; 00000010H
; Line 85
	test	ebx, ebx
	jne	SHORT $LN5@NETSCAPE_S
; Line 86
	push	OFFSET ??_C@_0BN@HNOKAENA@?5?5Unable?5to?5load?5public?5key?6?$AA@
	push	esi
	call	_BIO_printf
	add	esp, 8
	jmp	SHORT $LN6@NETSCAPE_S
$LN5@NETSCAPE_S:
; Line 88
	push	0
	push	4
	push	ebx
	push	esi
	call	_EVP_PKEY_print_public
; Line 89
	push	ebx
	call	_EVP_PKEY_free
	add	esp, 20					; 00000014H
$LN6@NETSCAPE_S:
; Line 91
	mov	eax, DWORD PTR [edi]
	mov	eax, DWORD PTR [eax+4]
; Line 92
	cmp	DWORD PTR [eax], 0
	je	SHORT $LN7@NETSCAPE_S
; Line 93
	push	DWORD PTR [eax+8]
	push	OFFSET ??_C@_0BI@MFJJCM@?5?5Challenge?5String?3?5?$CFs?6?$AA@
	push	esi
	call	_BIO_printf
	add	esp, 12					; 0000000cH
$LN7@NETSCAPE_S:
; Line 94
	mov	eax, DWORD PTR [edi+4]
	push	DWORD PTR [eax]
	call	_OBJ_obj2nid
	add	esp, 4
; Line 95
	test	eax, eax
	jne	SHORT $LN12@NETSCAPE_S
	mov	eax, OFFSET ??_C@_07NFANNNEC@UNKNOWN?$AA@
	jmp	SHORT $LN13@NETSCAPE_S
$LN12@NETSCAPE_S:
	push	eax
	call	_OBJ_nid2ln
	add	esp, 4
$LN13@NETSCAPE_S:
	push	eax
	push	OFFSET ??_C@_0BK@GIDDLGFG@?5?5Signature?5Algorithm?3?5?$CFs?$AA@
	push	esi
	call	_BIO_printf
; Line 98
	mov	eax, DWORD PTR [edi+8]
	add	esp, 12					; 0000000cH
; Line 100
	xor	edi, edi
	mov	ebx, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _s$1$[esp+8], eax
	test	ebx, ebx
	jle	SHORT $LN3@NETSCAPE_S
	push	ebp
	mov	ebp, 1
	sub	ebp, eax
$LL4@NETSCAPE_S:
; Line 101
	mov	eax, 954437177				; 38e38e39H
	mul	edi
	mov	eax, edi
	shr	edx, 2
	lea	ecx, DWORD PTR [edx+edx*8]
	add	ecx, ecx
	sub	eax, ecx
	jne	SHORT $LN8@NETSCAPE_S
; Line 102
	push	7
	push	OFFSET ??_C@_07PDGOCIM@?6?5?5?5?5?5?5?$AA@
	push	esi
	call	_BIO_write
	add	esp, 12					; 0000000cH
$LN8@NETSCAPE_S:
; Line 103
	mov	edx, DWORD PTR _s$1$[esp+12]
	mov	ecx, OFFSET ??_C@_00CNPNBAHC@?$AA@
	add	edx, edi
	lea	eax, DWORD PTR [edx+ebp]
	cmp	eax, ebx
	mov	eax, OFFSET ??_C@_01JLIPDDHJ@?3?$AA@
	cmovne	ecx, eax
	movzx	eax, BYTE PTR [edx]
	push	ecx
	push	eax
	push	OFFSET ??_C@_06LEJCPMLM@?$CF02x?$CFs?$AA@
	push	esi
	call	_BIO_printf
	inc	edi
	add	esp, 16					; 00000010H
	cmp	edi, ebx
	jl	SHORT $LL4@NETSCAPE_S
	pop	ebp
$LN3@NETSCAPE_S:
; Line 106
	push	1
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	push	esi
	call	_BIO_write
	add	esp, 12					; 0000000cH
; Line 107
	mov	eax, 1
	pop	edi
	pop	esi
	pop	ebx
; Line 108
	ret	0
_NETSCAPE_SPKI_print ENDP
_TEXT	ENDS
END