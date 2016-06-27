; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\evp\m_ecdsa.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

EXTRN	_ECDSA_sign:PROC
EXTRN	_ECDSA_verify:PROC
CONST	SEGMENT
_ecdsa_md DD	01a0H
	DD	01a0H
	DD	014H
	DD	02H
	DD	FLAT:_init
	DD	FLAT:_update
	DD	FLAT:_final
	DD	00H
	DD	00H
	DD	FLAT:_ECDSA_sign
	DD	FLAT:_ECDSA_verify
	DD	0198H
	DD	00H
	DD	00H
	DD	00H
	ORG $+4
	DD	040H
	DD	064H
	ORG $+4
CONST	ENDS
PUBLIC	_EVP_ecdsa
EXTRN	_SHA1_Init:PROC
EXTRN	_SHA1_Update:PROC
EXTRN	_SHA1_Final:PROC
; Function compile flags: /Ogtpy
;	COMDAT _final
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_md$ = 12						; size = 4
_final	PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\m_ecdsa.c
; Line 132
	mov	eax, DWORD PTR _ctx$[esp-4]
	push	DWORD PTR [eax+12]
	push	DWORD PTR _md$[esp]
	call	_SHA1_Final
	add	esp, 8
; Line 133
	ret	0
_final	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _update
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_data$ = 12						; size = 4
_count$ = 16						; size = 4
_update	PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\m_ecdsa.c
; Line 127
	push	DWORD PTR _count$[esp-4]
	mov	eax, DWORD PTR _ctx$[esp]
	push	DWORD PTR _data$[esp]
	push	DWORD PTR [eax+12]
	call	_SHA1_Update
	add	esp, 12					; 0000000cH
; Line 128
	ret	0
_update	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _init
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_init	PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\m_ecdsa.c
; Line 122
	mov	eax, DWORD PTR _ctx$[esp-4]
	push	DWORD PTR [eax+12]
	call	_SHA1_Init
	add	esp, 4
; Line 123
	ret	0
_init	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_ecdsa
_TEXT	SEGMENT
_EVP_ecdsa PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\m_ecdsa.c
; Line 152
	mov	eax, OFFSET _ecdsa_md
; Line 153
	ret	0
_EVP_ecdsa ENDP
_TEXT	ENDS
END
