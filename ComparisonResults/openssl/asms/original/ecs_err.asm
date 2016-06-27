; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_err.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0M@KDLAGBMI@ECDSA_CHECK?$AA@		; `string'
PUBLIC	??_C@_0BG@PPIAHALF@ECDSA_DATA_NEW_METHOD?$AA@	; `string'
PUBLIC	??_C@_0O@HPIOKGCH@ECDSA_do_sign?$AA@		; `string'
PUBLIC	??_C@_0BA@EHPKHBIM@ECDSA_do_verify?$AA@		; `string'
PUBLIC	??_C@_0BB@HEIMJKCN@ECDSA_METHOD_new?$AA@	; `string'
PUBLIC	??_C@_0BB@IKKHAHBP@ECDSA_sign_setup?$AA@	; `string'
PUBLIC	??_C@_0O@NKHGIDL@bad?5signature?$AA@		; `string'
PUBLIC	??_C@_0BM@LDGAMALI@data?5too?5large?5for?5key?5size?$AA@ ; `string'
PUBLIC	??_C@_0L@JHHGCIEK@err?5ec?5lib?$AA@		; `string'
PUBLIC	??_C@_0BD@FMCFODNL@missing?5parameters?$AA@	; `string'
PUBLIC	??_C@_0BG@CMMPCEJC@need?5new?5setup?5values?$AA@ ; `string'
PUBLIC	??_C@_0BA@MAGMKJLO@non?5fips?5method?$AA@	; `string'
PUBLIC	??_C@_0CA@PEINDBLK@random?5number?5generation?5failed?$AA@ ; `string'
PUBLIC	??_C@_0BI@IHHJBEMD@signature?5malloc?5failed?$AA@ ; `string'
;	COMDAT ??_C@_0BI@IHHJBEMD@signature?5malloc?5failed?$AA@
CONST	SEGMENT
??_C@_0BI@IHHJBEMD@signature?5malloc?5failed?$AA@ DB 'signature malloc fa'
	DB	'iled', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0CA@PEINDBLK@random?5number?5generation?5failed?$AA@
CONST	SEGMENT
??_C@_0CA@PEINDBLK@random?5number?5generation?5failed?$AA@ DB 'random num'
	DB	'ber generation failed', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@MAGMKJLO@non?5fips?5method?$AA@
CONST	SEGMENT
??_C@_0BA@MAGMKJLO@non?5fips?5method?$AA@ DB 'non fips method', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@CMMPCEJC@need?5new?5setup?5values?$AA@
CONST	SEGMENT
??_C@_0BG@CMMPCEJC@need?5new?5setup?5values?$AA@ DB 'need new setup value'
	DB	's', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@FMCFODNL@missing?5parameters?$AA@
CONST	SEGMENT
??_C@_0BD@FMCFODNL@missing?5parameters?$AA@ DB 'missing parameters', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@JHHGCIEK@err?5ec?5lib?$AA@
CONST	SEGMENT
??_C@_0L@JHHGCIEK@err?5ec?5lib?$AA@ DB 'err ec lib', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BM@LDGAMALI@data?5too?5large?5for?5key?5size?$AA@
CONST	SEGMENT
??_C@_0BM@LDGAMALI@data?5too?5large?5for?5key?5size?$AA@ DB 'data too lar'
	DB	'ge for key size', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@NKHGIDL@bad?5signature?$AA@
CONST	SEGMENT
??_C@_0O@NKHGIDL@bad?5signature?$AA@ DB 'bad signature', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BB@IKKHAHBP@ECDSA_sign_setup?$AA@
CONST	SEGMENT
??_C@_0BB@IKKHAHBP@ECDSA_sign_setup?$AA@ DB 'ECDSA_sign_setup', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BB@HEIMJKCN@ECDSA_METHOD_new?$AA@
CONST	SEGMENT
??_C@_0BB@HEIMJKCN@ECDSA_METHOD_new?$AA@ DB 'ECDSA_METHOD_new', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@EHPKHBIM@ECDSA_do_verify?$AA@
CONST	SEGMENT
??_C@_0BA@EHPKHBIM@ECDSA_do_verify?$AA@ DB 'ECDSA_do_verify', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@HPIOKGCH@ECDSA_do_sign?$AA@
CONST	SEGMENT
??_C@_0O@HPIOKGCH@ECDSA_do_sign?$AA@ DB 'ECDSA_do_sign', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@PPIAHALF@ECDSA_DATA_NEW_METHOD?$AA@
CONST	SEGMENT
??_C@_0BG@PPIAHALF@ECDSA_DATA_NEW_METHOD?$AA@ DB 'ECDSA_DATA_NEW_METHOD', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0M@KDLAGBMI@ECDSA_CHECK?$AA@
CONST	SEGMENT
??_C@_0M@KDLAGBMI@ECDSA_CHECK?$AA@ DB 'ECDSA_CHECK', 00H ; `string'
CONST	ENDS
_DATA	SEGMENT
_ECDSA_str_functs DD 02a068000H
	DD	FLAT:??_C@_0M@KDLAGBMI@ECDSA_CHECK?$AA@
	DD	02a064000H
	DD	FLAT:??_C@_0BG@PPIAHALF@ECDSA_DATA_NEW_METHOD?$AA@
	DD	02a065000H
	DD	FLAT:??_C@_0O@HPIOKGCH@ECDSA_do_sign?$AA@
	DD	02a066000H
	DD	FLAT:??_C@_0BA@EHPKHBIM@ECDSA_do_verify?$AA@
	DD	02a069000H
	DD	FLAT:??_C@_0BB@HEIMJKCN@ECDSA_METHOD_new?$AA@
	DD	02a067000H
	DD	FLAT:??_C@_0BB@IKKHAHBP@ECDSA_sign_setup?$AA@
	DD	00H
	DD	00H
_ECDSA_str_reasons DD 02a000064H
	DD	FLAT:??_C@_0O@NKHGIDL@bad?5signature?$AA@
	DD	02a000065H
	DD	FLAT:??_C@_0BM@LDGAMALI@data?5too?5large?5for?5key?5size?$AA@
	DD	02a000066H
	DD	FLAT:??_C@_0L@JHHGCIEK@err?5ec?5lib?$AA@
	DD	02a000067H
	DD	FLAT:??_C@_0BD@FMCFODNL@missing?5parameters?$AA@
	DD	02a00006aH
	DD	FLAT:??_C@_0BG@CMMPCEJC@need?5new?5setup?5values?$AA@
	DD	02a00006bH
	DD	FLAT:??_C@_0BA@MAGMKJLO@non?5fips?5method?$AA@
	DD	02a000068H
	DD	FLAT:??_C@_0CA@PEINDBLK@random?5number?5generation?5failed?$AA@
	DD	02a000069H
	DD	FLAT:??_C@_0BI@IHHJBEMD@signature?5malloc?5failed?$AA@
	DD	00H
	DD	00H
_DATA	ENDS
PUBLIC	_ERR_load_ECDSA_strings
EXTRN	_ERR_func_error_string:PROC
EXTRN	_ERR_load_strings:PROC
; Function compile flags: /Ogtpy
;	COMDAT _ERR_load_ECDSA_strings
_TEXT	SEGMENT
_ERR_load_ECDSA_strings PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_err.c
; Line 102
	push	DWORD PTR _ECDSA_str_functs
	call	_ERR_func_error_string
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN2@ERR_load_E
; Line 103
	push	OFFSET _ECDSA_str_functs
	push	eax
	call	_ERR_load_strings
; Line 104
	push	OFFSET _ECDSA_str_reasons
	push	0
	call	_ERR_load_strings
	add	esp, 16					; 00000010H
$LN2@ERR_load_E:
; Line 107
	ret	0
_ERR_load_ECDSA_strings ENDP
_TEXT	ENDS
END
