; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_X509_get_default_cert_area
PUBLIC	_X509_get_default_cert_dir
PUBLIC	_X509_get_default_cert_file
PUBLIC	_X509_get_default_cert_dir_env
PUBLIC	_X509_get_default_cert_file_env
PUBLIC	_X509_get_default_private_dir
PUBLIC	??_C@_0BM@NBAIBMNN@C?3?2openssl?2some?1ssl?1private?$AA@ ; `string'
PUBLIC	??_C@_0BE@IMNEOGAM@C?3?2openssl?2some?1ssl?$AA@	; `string'
PUBLIC	??_C@_0BK@OBNEHADM@C?3?2openssl?2some?1ssl?1certs?$AA@ ; `string'
PUBLIC	??_C@_0BN@LGADMEOJ@C?3?2openssl?2some?1ssl?1cert?4pem?$AA@ ; `string'
PUBLIC	??_C@_0N@GHKHGDAO@SSL_CERT_DIR?$AA@		; `string'
PUBLIC	??_C@_0O@GKJOMDO@SSL_CERT_FILE?$AA@		; `string'
;	COMDAT ??_C@_0O@GKJOMDO@SSL_CERT_FILE?$AA@
CONST	SEGMENT
??_C@_0O@GKJOMDO@SSL_CERT_FILE?$AA@ DB 'SSL_CERT_FILE', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@GHKHGDAO@SSL_CERT_DIR?$AA@
CONST	SEGMENT
??_C@_0N@GHKHGDAO@SSL_CERT_DIR?$AA@ DB 'SSL_CERT_DIR', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@LGADMEOJ@C?3?2openssl?2some?1ssl?1cert?4pem?$AA@
CONST	SEGMENT
??_C@_0BN@LGADMEOJ@C?3?2openssl?2some?1ssl?1cert?4pem?$AA@ DB 'C:\openssl'
	DB	'\some/ssl/cert.pem', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@OBNEHADM@C?3?2openssl?2some?1ssl?1certs?$AA@
CONST	SEGMENT
??_C@_0BK@OBNEHADM@C?3?2openssl?2some?1ssl?1certs?$AA@ DB 'C:\openssl\som'
	DB	'e/ssl/certs', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@IMNEOGAM@C?3?2openssl?2some?1ssl?$AA@
CONST	SEGMENT
??_C@_0BE@IMNEOGAM@C?3?2openssl?2some?1ssl?$AA@ DB 'C:\openssl\some/ssl', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BM@NBAIBMNN@C?3?2openssl?2some?1ssl?1private?$AA@
CONST	SEGMENT
??_C@_0BM@NBAIBMNN@C?3?2openssl?2some?1ssl?1private?$AA@ DB 'C:\openssl\s'
	DB	'ome/ssl/private', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_private_dir
_TEXT	SEGMENT
_X509_get_default_private_dir PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 66
	mov	eax, OFFSET ??_C@_0BM@NBAIBMNN@C?3?2openssl?2some?1ssl?1private?$AA@
; Line 67
	ret	0
_X509_get_default_private_dir ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_cert_file_env
_TEXT	SEGMENT
_X509_get_default_cert_file_env PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 91
	mov	eax, OFFSET ??_C@_0O@GKJOMDO@SSL_CERT_FILE?$AA@
; Line 92
	ret	0
_X509_get_default_cert_file_env ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_cert_dir_env
_TEXT	SEGMENT
_X509_get_default_cert_dir_env PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 86
	mov	eax, OFFSET ??_C@_0N@GHKHGDAO@SSL_CERT_DIR?$AA@
; Line 87
	ret	0
_X509_get_default_cert_dir_env ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_cert_file
_TEXT	SEGMENT
_X509_get_default_cert_file PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 81
	mov	eax, OFFSET ??_C@_0BN@LGADMEOJ@C?3?2openssl?2some?1ssl?1cert?4pem?$AA@
; Line 82
	ret	0
_X509_get_default_cert_file ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_cert_dir
_TEXT	SEGMENT
_X509_get_default_cert_dir PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 76
	mov	eax, OFFSET ??_C@_0BK@OBNEHADM@C?3?2openssl?2some?1ssl?1certs?$AA@
; Line 77
	ret	0
_X509_get_default_cert_dir ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _X509_get_default_cert_area
_TEXT	SEGMENT
_X509_get_default_cert_area PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509\x509_def.c
; Line 71
	mov	eax, OFFSET ??_C@_0BE@IMNEOGAM@C?3?2openssl?2some?1ssl?$AA@
; Line 72
	ret	0
_X509_get_default_cert_area ENDP
_TEXT	ENDS
END