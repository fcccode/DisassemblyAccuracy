; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_ENGINE_register_complete
PUBLIC	_ENGINE_register_all_complete
PUBLIC	_ENGINE_set_default_string
PUBLIC	_ENGINE_set_default
PUBLIC	??_C@_03NIFPGLBG@ALL?$AA@			; `string'
PUBLIC	??_C@_03DICHAJGH@RSA?$AA@			; `string'
PUBLIC	??_C@_03ENFFABCE@DSA?$AA@			; `string'
PUBLIC	??_C@_04GPFMMIBJ@ECDH?$AA@			; `string'
PUBLIC	??_C@_05JNBFMGNN@ECDSA?$AA@			; `string'
PUBLIC	??_C@_02EPINMGPM@DH?$AA@			; `string'
PUBLIC	??_C@_04LGLHIBNK@RAND?$AA@			; `string'
PUBLIC	??_C@_07NKDFJCAL@CIPHERS?$AA@			; `string'
PUBLIC	??_C@_07EHEMBJHB@DIGESTS?$AA@			; `string'
PUBLIC	??_C@_04FAPDLBCD@PKEY?$AA@			; `string'
PUBLIC	??_C@_0M@LBKDJGDC@PKEY_CRYPTO?$AA@		; `string'
PUBLIC	??_C@_09NDDMCABJ@PKEY_ASN1?$AA@			; `string'
PUBLIC	??_C@_0BK@LLAIKIML@?4?2crypto?2engine?2eng_fat?4c?$AA@ ; `string'
PUBLIC	??_C@_04FOGPFBLG@str?$DN?$AA@			; `string'
EXTRN	__imp__strncmp:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_ERR_add_error_data:PROC
EXTRN	_ENGINE_get_first:PROC
EXTRN	_ENGINE_get_next:PROC
EXTRN	_ENGINE_register_RSA:PROC
EXTRN	_ENGINE_register_DSA:PROC
EXTRN	_ENGINE_register_ECDH:PROC
EXTRN	_ENGINE_register_ECDSA:PROC
EXTRN	_ENGINE_register_DH:PROC
EXTRN	_ENGINE_register_RAND:PROC
EXTRN	_ENGINE_register_ciphers:PROC
EXTRN	_ENGINE_register_digests:PROC
EXTRN	_ENGINE_register_pkey_meths:PROC
EXTRN	_ENGINE_set_default_RSA:PROC
EXTRN	_ENGINE_set_default_DSA:PROC
EXTRN	_ENGINE_set_default_ECDH:PROC
EXTRN	_ENGINE_set_default_ECDSA:PROC
EXTRN	_ENGINE_set_default_DH:PROC
EXTRN	_ENGINE_set_default_RAND:PROC
EXTRN	_ENGINE_set_default_ciphers:PROC
EXTRN	_ENGINE_set_default_digests:PROC
EXTRN	_ENGINE_set_default_pkey_meths:PROC
EXTRN	_ENGINE_set_default_pkey_asn1_meths:PROC
EXTRN	_CONF_parse_list:PROC
EXTRN	__chkstk:PROC
;	COMDAT ??_C@_04FOGPFBLG@str?$DN?$AA@
CONST	SEGMENT
??_C@_04FOGPFBLG@str?$DN?$AA@ DB 'str=', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@LLAIKIML@?4?2crypto?2engine?2eng_fat?4c?$AA@
CONST	SEGMENT
??_C@_0BK@LLAIKIML@?4?2crypto?2engine?2eng_fat?4c?$AA@ DB '.\crypto\engin'
	DB	'e\eng_fat.c', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_09NDDMCABJ@PKEY_ASN1?$AA@
CONST	SEGMENT
??_C@_09NDDMCABJ@PKEY_ASN1?$AA@ DB 'PKEY_ASN1', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0M@LBKDJGDC@PKEY_CRYPTO?$AA@
CONST	SEGMENT
??_C@_0M@LBKDJGDC@PKEY_CRYPTO?$AA@ DB 'PKEY_CRYPTO', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_04FAPDLBCD@PKEY?$AA@
CONST	SEGMENT
??_C@_04FAPDLBCD@PKEY?$AA@ DB 'PKEY', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_07EHEMBJHB@DIGESTS?$AA@
CONST	SEGMENT
??_C@_07EHEMBJHB@DIGESTS?$AA@ DB 'DIGESTS', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_07NKDFJCAL@CIPHERS?$AA@
CONST	SEGMENT
??_C@_07NKDFJCAL@CIPHERS?$AA@ DB 'CIPHERS', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04LGLHIBNK@RAND?$AA@
CONST	SEGMENT
??_C@_04LGLHIBNK@RAND?$AA@ DB 'RAND', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_02EPINMGPM@DH?$AA@
CONST	SEGMENT
??_C@_02EPINMGPM@DH?$AA@ DB 'DH', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_05JNBFMGNN@ECDSA?$AA@
CONST	SEGMENT
??_C@_05JNBFMGNN@ECDSA?$AA@ DB 'ECDSA', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04GPFMMIBJ@ECDH?$AA@
CONST	SEGMENT
??_C@_04GPFMMIBJ@ECDH?$AA@ DB 'ECDH', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_03ENFFABCE@DSA?$AA@
CONST	SEGMENT
??_C@_03ENFFABCE@DSA?$AA@ DB 'DSA', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_03DICHAJGH@RSA?$AA@
CONST	SEGMENT
??_C@_03DICHAJGH@RSA?$AA@ DB 'RSA', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_03NIFPGLBG@ALL?$AA@
CONST	SEGMENT
??_C@_03NIFPGLBG@ALL?$AA@ DB 'ALL', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _int_def_cb
_TEXT	SEGMENT
_alg$ = 8						; size = 4
_len$ = 12						; size = 4
_arg$ = 16						; size = 4
_int_def_cb PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
; Line 104
	push	esi
; Line 106
	mov	esi, DWORD PTR _alg$[esp]
	test	esi, esi
	jne	SHORT $LN2@int_def_cb
; Line 107
	xor	eax, eax
	pop	esi
; Line 135
	ret	0
$LN2@int_def_cb:
	push	ebx
; Line 108
	mov	ebx, DWORD PTR __imp__strncmp
	push	edi
	mov	edi, DWORD PTR _len$[esp+8]
	push	edi
	push	OFFSET ??_C@_03NIFPGLBG@ALL?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN3@int_def_cb
; Line 109
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 65535			; 0000ffffH
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN3@int_def_cb:
; Line 110
	push	edi
	push	OFFSET ??_C@_03DICHAJGH@RSA?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN5@int_def_cb
; Line 111
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 1
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN5@int_def_cb:
; Line 112
	push	edi
	push	OFFSET ??_C@_03ENFFABCE@DSA?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN7@int_def_cb
; Line 113
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 2
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN7@int_def_cb:
; Line 114
	push	edi
	push	OFFSET ??_C@_04GPFMMIBJ@ECDH?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN9@int_def_cb
; Line 115
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 16			; 00000010H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN9@int_def_cb:
; Line 116
	push	edi
	push	OFFSET ??_C@_05JNBFMGNN@ECDSA?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN11@int_def_cb
; Line 117
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 32			; 00000020H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN11@int_def_cb:
; Line 118
	push	edi
	push	OFFSET ??_C@_02EPINMGPM@DH?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN13@int_def_cb
; Line 119
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 4
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN13@int_def_cb:
; Line 120
	push	edi
	push	OFFSET ??_C@_04LGLHIBNK@RAND?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN15@int_def_cb
; Line 121
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 8
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN15@int_def_cb:
; Line 122
	push	edi
	push	OFFSET ??_C@_07NKDFJCAL@CIPHERS?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN17@int_def_cb
; Line 123
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 64			; 00000040H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN17@int_def_cb:
; Line 124
	push	edi
	push	OFFSET ??_C@_07EHEMBJHB@DIGESTS?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN19@int_def_cb
; Line 125
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 128			; 00000080H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN19@int_def_cb:
; Line 126
	push	edi
	push	OFFSET ??_C@_04FAPDLBCD@PKEY?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN21@int_def_cb
; Line 127
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 1536			; 00000600H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN21@int_def_cb:
; Line 128
	push	edi
	push	OFFSET ??_C@_0M@LBKDJGDC@PKEY_CRYPTO?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN23@int_def_cb
; Line 129
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 512			; 00000200H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN23@int_def_cb:
; Line 130
	push	edi
	push	OFFSET ??_C@_09NDDMCABJ@PKEY_ASN1?$AA@
	push	esi
	call	ebx
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN25@int_def_cb
; Line 131
	mov	eax, DWORD PTR _arg$[esp+8]
	pop	edi
	pop	ebx
	pop	esi
	or	DWORD PTR [eax], 1024			; 00000400H
; Line 134
	mov	eax, 1
; Line 135
	ret	0
$LN25@int_def_cb:
	pop	edi
	pop	ebx
; Line 133
	xor	eax, eax
	pop	esi
; Line 135
	ret	0
_int_def_cb ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ENGINE_set_default
_TEXT	SEGMENT
_e$ = 8							; size = 4
_flags$ = 12						; size = 4
_ENGINE_set_default PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
; Line 65
	push	ebx
; Line 66
	mov	ebx, DWORD PTR _flags$[esp]
	push	esi
	mov	esi, DWORD PTR _e$[esp+4]
	test	bl, 64					; 00000040H
	je	SHORT $LN2@ENGINE_set
	push	esi
	call	_ENGINE_set_default_ciphers
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN2@ENGINE_set
$LN13@ENGINE_set:
	pop	esi
; Line 67
	xor	eax, eax
	pop	ebx
; Line 99
	ret	0
$LN2@ENGINE_set:
; Line 68
	test	bl, bl
	jns	SHORT $LN3@ENGINE_set
	push	esi
	call	_ENGINE_set_default_digests
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN3@ENGINE_set:
; Line 71
	test	bl, 1
	je	SHORT $LN4@ENGINE_set
	push	esi
	call	_ENGINE_set_default_RSA
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN4@ENGINE_set:
; Line 75
	test	bl, 2
	je	SHORT $LN5@ENGINE_set
	push	esi
	call	_ENGINE_set_default_DSA
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN5@ENGINE_set:
; Line 79
	test	bl, 4
	je	SHORT $LN6@ENGINE_set
	push	esi
	call	_ENGINE_set_default_DH
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN6@ENGINE_set:
; Line 83
	test	bl, 16					; 00000010H
	je	SHORT $LN7@ENGINE_set
	push	esi
	call	_ENGINE_set_default_ECDH
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN7@ENGINE_set:
; Line 87
	test	bl, 32					; 00000020H
	je	SHORT $LN8@ENGINE_set
	push	esi
	call	_ENGINE_set_default_ECDSA
	add	esp, 4
	test	eax, eax
	je	SHORT $LN13@ENGINE_set
$LN8@ENGINE_set:
; Line 90
	test	bl, 8
	je	SHORT $LN9@ENGINE_set
	push	esi
	call	_ENGINE_set_default_RAND
	add	esp, 4
	test	eax, eax
	je	$LN13@ENGINE_set
$LN9@ENGINE_set:
; Line 93
	test	ebx, 512				; 00000200H
	je	SHORT $LN10@ENGINE_set
	push	esi
	call	_ENGINE_set_default_pkey_meths
	add	esp, 4
	test	eax, eax
	je	$LN13@ENGINE_set
$LN10@ENGINE_set:
; Line 96
	test	ebx, 1024				; 00000400H
	je	SHORT $LN11@ENGINE_set
	push	esi
	call	_ENGINE_set_default_pkey_asn1_meths
	add	esp, 4
	test	eax, eax
	je	$LN13@ENGINE_set
$LN11@ENGINE_set:
	pop	esi
; Line 98
	mov	eax, 1
	pop	ebx
; Line 99
	ret	0
_ENGINE_set_default ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ENGINE_set_default_string
_TEXT	SEGMENT
_flags$ = -4						; size = 4
_e$ = 8							; size = 4
_def_list$ = 12						; size = 4
_ENGINE_set_default_string PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
; Line 138
	mov	eax, 4
	call	__chkstk
; Line 140
	lea	eax, DWORD PTR _flags$[esp+4]
	mov	DWORD PTR _flags$[esp+4], 0
	push	eax
	push	OFFSET _int_def_cb
	push	1
	push	44					; 0000002cH
	push	DWORD PTR _def_list$[esp+16]
	call	_CONF_parse_list
	add	esp, 20					; 00000014H
	test	eax, eax
	jne	SHORT $LN2@ENGINE_set
; Line 141
	push	142					; 0000008eH
	push	OFFSET ??_C@_0BK@LLAIKIML@?4?2crypto?2engine?2eng_fat?4c?$AA@
	push	150					; 00000096H
	push	189					; 000000bdH
	push	38					; 00000026H
	call	_ERR_put_error
; Line 143
	push	DWORD PTR _def_list$[esp+20]
	push	OFFSET ??_C@_04FOGPFBLG@str?$DN?$AA@
	push	2
	call	_ERR_add_error_data
	add	esp, 32					; 00000020H
; Line 144
	xor	eax, eax
; Line 147
	pop	ecx
	ret	0
$LN2@ENGINE_set:
; Line 146
	push	DWORD PTR _flags$[esp+4]
	push	DWORD PTR _e$[esp+4]
	call	_ENGINE_set_default
	add	esp, 8
; Line 147
	pop	ecx
	ret	0
_ENGINE_set_default_string ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ENGINE_register_all_complete
_TEXT	SEGMENT
_ENGINE_register_all_complete PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
; Line 174
	push	esi
; Line 177
	call	_ENGINE_get_first
	mov	esi, eax
	test	esi, esi
	je	SHORT $LN13@ENGINE_reg
	npad	4
$LL4@ENGINE_reg:
; Line 178
	test	BYTE PTR [esi+84], 8
	jne	SHORT $LN2@ENGINE_reg
; Line 151
	push	esi
	call	_ENGINE_register_ciphers
; Line 152
	push	esi
	call	_ENGINE_register_digests
; Line 154
	push	esi
	call	_ENGINE_register_RSA
; Line 157
	push	esi
	call	_ENGINE_register_DSA
; Line 160
	push	esi
	call	_ENGINE_register_DH
; Line 163
	push	esi
	call	_ENGINE_register_ECDH
; Line 166
	push	esi
	call	_ENGINE_register_ECDSA
; Line 168
	push	esi
	call	_ENGINE_register_RAND
; Line 169
	push	esi
	call	_ENGINE_register_pkey_meths
	add	esp, 36					; 00000024H
$LN2@ENGINE_reg:
; Line 177
	push	esi
	call	_ENGINE_get_next
	mov	esi, eax
	add	esp, 4
	test	esi, esi
	jne	SHORT $LL4@ENGINE_reg
$LN13@ENGINE_reg:
; Line 180
	mov	eax, 1
	pop	esi
; Line 181
	ret	0
_ENGINE_register_all_complete ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ENGINE_register_complete
_TEXT	SEGMENT
_e$ = 8							; size = 4
_ENGINE_register_complete PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_fat.c
; Line 150
	push	esi
; Line 151
	mov	esi, DWORD PTR _e$[esp]
	push	esi
	call	_ENGINE_register_ciphers
; Line 152
	push	esi
	call	_ENGINE_register_digests
; Line 154
	push	esi
	call	_ENGINE_register_RSA
; Line 157
	push	esi
	call	_ENGINE_register_DSA
; Line 160
	push	esi
	call	_ENGINE_register_DH
; Line 163
	push	esi
	call	_ENGINE_register_ECDH
; Line 166
	push	esi
	call	_ENGINE_register_ECDSA
; Line 168
	push	esi
	call	_ENGINE_register_RAND
; Line 169
	push	esi
	call	_ENGINE_register_pkey_meths
	add	esp, 36					; 00000024H
; Line 170
	mov	eax, 1
	pop	esi
; Line 171
	ret	0
_ENGINE_register_complete ENDP
_TEXT	ENDS
END
