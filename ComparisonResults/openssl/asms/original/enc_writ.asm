; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\des\enc_writ.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
?outbuf@?1??DES_enc_write@@9@9 DD 01H DUP (?)		; `DES_enc_write'::`2'::outbuf
_BSS	ENDS
_DATA	SEGMENT
?start@?1??DES_enc_write@@9@9 DD 01H			; `DES_enc_write'::`2'::start
_DATA	ENDS
PUBLIC	_DES_enc_write
PUBLIC	??_C@_0BI@LOCGDDBK@?4?2crypto?2des?2enc_writ?4c?$AA@ ; `string'
EXTRN	__imp___errno:PROC
EXTRN	__imp___write:PROC
EXTRN	_CRYPTO_malloc:PROC
EXTRN	__shadow_DES_rw_mode:PROC
EXTRN	_DES_cbc_encrypt:PROC
EXTRN	_DES_pcbc_encrypt:PROC
EXTRN	_RAND_pseudo_bytes:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	_memcpy:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_0BI@LOCGDDBK@?4?2crypto?2des?2enc_writ?4c?$AA@
CONST	SEGMENT
??_C@_0BI@LOCGDDBK@?4?2crypto?2des?2enc_writ?4c?$AA@ DB '.\crypto\des\enc'
	DB	'_writ.c', 00H				; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _DES_enc_write
_TEXT	SEGMENT
_sched$GSCopy$1$ = -20					; size = 4
_iv$GSCopy$1$ = -16					; size = 4
_shortbuf$ = -12					; size = 8
__$ArrayPad$ = -4					; size = 4
_fd$ = 8						; size = 4
__buf$ = 12						; size = 4
_len$ = 16						; size = 4
_sched$ = 20						; size = 4
_iv$ = 24						; size = 4
_DES_enc_write PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\des\enc_writ.c
; Line 82
	mov	eax, 20					; 00000014H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+20], eax
	mov	edx, DWORD PTR _sched$[esp+16]
	push	ebx
	mov	ebx, DWORD PTR _len$[esp+20]
	mov	DWORD PTR _sched$GSCopy$1$[esp+24], edx
	push	ebp
	mov	ebp, DWORD PTR __buf$[esp+24]
	push	esi
	mov	esi, DWORD PTR _iv$[esp+28]
	mov	DWORD PTR _iv$GSCopy$1$[esp+32], esi
; Line 99
	test	ebx, ebx
	jns	SHORT $LN8@DES_enc_wr
$LN39@DES_enc_wr:
	pop	esi
	pop	ebp
; Line 100
	or	eax, -1
	pop	ebx
; Line 182
	mov	ecx, DWORD PTR __$ArrayPad$[esp+20]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 20					; 00000014H
	ret	0
$LN8@DES_enc_wr:
; Line 102
	mov	ecx, DWORD PTR ?outbuf@?1??DES_enc_write@@9@9
	test	ecx, ecx
	jne	SHORT $LN10@DES_enc_wr
; Line 103
	push	103					; 00000067H
	push	OFFSET ??_C@_0BI@LOCGDDBK@?4?2crypto?2des?2enc_writ?4c?$AA@
	push	16392					; 00004008H
	call	_CRYPTO_malloc
	mov	ecx, eax
	add	esp, 12					; 0000000cH
	mov	DWORD PTR ?outbuf@?1??DES_enc_write@@9@9, ecx
; Line 104
	test	ecx, ecx
	je	SHORT $LN39@DES_enc_wr
	mov	edx, DWORD PTR _sched$GSCopy$1$[esp+32]
$LN10@DES_enc_wr:
; Line 111
	mov	DWORD PTR ?start@?1??DES_enc_write@@9@9, 0
	push	edi
; Line 116
	cmp	ebx, 16384				; 00004000H
	jle	SHORT $LN12@DES_enc_wr
; Line 117
	xor	edi, edi
; Line 118
	xor	esi, esi
	test	ebx, ebx
	jle	SHORT $LN3@DES_enc_wr
	mov	ecx, 16384				; 00004000H
$LL4@DES_enc_wr:
; Line 119
	push	DWORD PTR _iv$GSCopy$1$[esp+36]
	mov	eax, ebx
	sub	eax, esi
	cmp	eax, 16384				; 00004000H
	push	edx
	cmovg	eax, ecx
	push	eax
	lea	eax, DWORD PTR [esi+ebp]
	push	eax
	push	DWORD PTR _fd$[esp+48]
	call	_DES_enc_write
	add	esp, 20					; 00000014H
; Line 122
	test	eax, eax
	js	$LN37@DES_enc_wr
; Line 118
	mov	edx, DWORD PTR _sched$GSCopy$1$[esp+36]
	add	esi, eax
; Line 125
	add	edi, eax
	mov	ecx, 16384				; 00004000H
	cmp	esi, ebx
	jl	SHORT $LL4@DES_enc_wr
$LN3@DES_enc_wr:
; Line 127
	mov	eax, edi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 182
	mov	ecx, DWORD PTR __$ArrayPad$[esp+20]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 20					; 00000014H
	ret	0
$LN12@DES_enc_wr:
; Line 132
	mov	eax, ebx
; Line 135
	mov	edi, 8
	sar	eax, 24					; 00000018H
	mov	BYTE PTR [ecx], al
	mov	eax, ebx
	sar	eax, 16					; 00000010H
	mov	BYTE PTR [ecx+1], al
	mov	eax, ebx
	sar	eax, 8
	mov	BYTE PTR [ecx+2], al
	mov	BYTE PTR [ecx+3], bl
	cmp	ebx, edi
	jge	SHORT $LN15@DES_enc_wr
; Line 137
	push	ebx
	lea	eax, DWORD PTR _shortbuf$[esp+40]
	push	ebp
	push	eax
	call	_memcpy
; Line 138
	mov	eax, edi
	sub	eax, ebx
	push	eax
	lea	eax, DWORD PTR _shortbuf$[esp+52]
	add	eax, ebx
	push	eax
	call	_RAND_pseudo_bytes
	add	esp, 20					; 00000014H
	test	eax, eax
	js	$LN21@DES_enc_wr
; Line 142
	lea	ebp, DWORD PTR _shortbuf$[esp+36]
	jmp	SHORT $LN16@DES_enc_wr
$LN15@DES_enc_wr:
; Line 144
	lea	eax, DWORD PTR [ebx+7]
	cdq
	and	edx, 7
	lea	edi, DWORD PTR [edx+eax]
	and	edi, -8					; fffffff8H
$LN16@DES_enc_wr:
; Line 147
	call	__shadow_DES_rw_mode
; Line 148
	push	1
	push	esi
	push	DWORD PTR _sched$GSCopy$1$[esp+44]
	test	BYTE PTR [eax], 1
	mov	ecx, 8
	mov	eax, ebx
	je	SHORT $LN18@DES_enc_wr
	cmp	ebx, ecx
	cmovl	eax, ecx
	push	eax
	mov	eax, DWORD PTR ?outbuf@?1??DES_enc_write@@9@9
	add	eax, 4
	push	eax
	push	ebp
	call	_DES_pcbc_encrypt
	jmp	SHORT $LN38@DES_enc_wr
$LN18@DES_enc_wr:
; Line 151
	cmp	ebx, 8
	cmovl	eax, ecx
	push	eax
	mov	eax, DWORD PTR ?outbuf@?1??DES_enc_write@@9@9
	add	eax, 4
	push	eax
	push	ebp
	call	_DES_cbc_encrypt
$LN38@DES_enc_wr:
; Line 155
	add	edi, 4
	add	esp, 24					; 00000018H
; Line 157
	xor	esi, esi
	test	edi, edi
	jle	SHORT $LN35@DES_enc_wr
	mov	ebp, DWORD PTR __imp___errno
	npad	4
$LL7@DES_enc_wr:
; Line 164
	mov	eax, edi
	sub	eax, esi
	push	eax
	mov	eax, DWORD PTR ?outbuf@?1??DES_enc_write@@9@9
	add	eax, esi
	push	eax
	push	DWORD PTR _fd$[esp+40]
	call	DWORD PTR __imp___write
	add	esp, 12					; 0000000cH
; Line 166
	cmp	eax, -1
	jne	SHORT $LN5@DES_enc_wr
; Line 168
	call	ebp
	cmp	DWORD PTR [eax], 4
	jne	SHORT $LN21@DES_enc_wr
; Line 169
	xor	eax, eax
$LN5@DES_enc_wr:
; Line 157
	add	esi, eax
	cmp	esi, edi
	jl	SHORT $LL7@DES_enc_wr
$LN35@DES_enc_wr:
; Line 180
	mov	eax, ebx
$LN37@DES_enc_wr:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 182
	mov	ecx, DWORD PTR __$ArrayPad$[esp+20]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 20					; 00000014H
	ret	0
$LN21@DES_enc_wr:
	mov	ecx, DWORD PTR __$ArrayPad$[esp+36]
	or	eax, -1
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 20					; 00000014H
	ret	0
_DES_enc_write ENDP
_TEXT	ENDS
END
