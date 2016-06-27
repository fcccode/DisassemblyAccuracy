; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\idea\i_ofb64.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_idea_ofb64_encrypt
EXTRN	_idea_encrypt:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	___security_cookie:DWORD
; Function compile flags: /Ogtpy
;	COMDAT _idea_ofb64_encrypt
_TEXT	SEGMENT
_out$GSCopy$1$ = -40					; size = 4
_num$GSCopy$1$ = -36					; size = 4
_ti$ = -32						; size = 8
_schedule$GSCopy$1$ = -24				; size = 4
_iv$2$ = -20						; size = 4
_ivec$GSCopy$1$ = -16					; size = 4
_ti$2$ = -12						; size = 4
_d$ = -12						; size = 8
__$ArrayPad$ = -4					; size = 4
_in$ = 8						; size = 4
_out$ = 12						; size = 4
_length$ = 16						; size = 4
_schedule$ = 20						; size = 4
_ivec$ = 24						; size = 4
_num$ = 28						; size = 4
_idea_ofb64_encrypt PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\idea\i_ofb64.c
; Line 70
	mov	eax, 40					; 00000028H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+40], eax
	mov	eax, DWORD PTR _out$[esp+36]
	mov	DWORD PTR _out$GSCopy$1$[esp+40], eax
	mov	eax, DWORD PTR _schedule$[esp+36]
	mov	DWORD PTR _schedule$GSCopy$1$[esp+40], eax
	mov	eax, DWORD PTR _ivec$[esp+36]
	mov	DWORD PTR _ivec$GSCopy$1$[esp+40], eax
	push	ebx
	push	ebp
; Line 81
	movzx	ebx, BYTE PTR [eax]
	lea	ebp, DWORD PTR [eax+1]
	mov	edx, ebp
	shl	ebx, 24					; 00000018H
	push	esi
	push	edi
	mov	edi, DWORD PTR _num$[esp+52]
	movzx	eax, BYTE PTR [edx]
; Line 82
	movzx	ecx, BYTE PTR [edx+3]
	shl	eax, 16					; 00000010H
	or	ebx, eax
	shl	ecx, 24					; 00000018H
	movzx	eax, BYTE PTR [edx+1]
	shl	eax, 8
	or	ebx, eax
	mov	esi, DWORD PTR [edi]
	movzx	eax, BYTE PTR [edx+2]
	or	ebx, eax
	mov	DWORD PTR _num$GSCopy$1$[esp+56], edi
	movzx	eax, BYTE PTR [edx+4]
	shl	eax, 16					; 00000010H
	or	ecx, eax
	mov	DWORD PTR _iv$2$[esp+56], ebp
	movzx	eax, BYTE PTR [edx+6]
	mov	DWORD PTR _ti$2$[esp+56], ecx
	movzx	ecx, BYTE PTR [edx+5]
	mov	edx, DWORD PTR _ti$2$[esp+56]
	shl	ecx, 8
	or	ecx, eax
; Line 83
	mov	DWORD PTR _ti$[esp+56], ebx
; Line 86
	mov	eax, ebx
	mov	BYTE PTR _d$[esp+59], bl
	shr	eax, 24					; 00000018H
	or	edx, ecx
	mov	BYTE PTR _d$[esp+56], al
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR _d$[esp+57], al
	mov	eax, ebx
	shr	eax, 8
	mov	BYTE PTR _d$[esp+58], al
; Line 87
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR _d$[esp+60], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR _d$[esp+61], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR _d$[esp+62], al
; Line 88
	mov	eax, DWORD PTR _length$[esp+52]
	mov	DWORD PTR _ti$[esp+60], edx
	mov	BYTE PTR _d$[esp+63], dl
	test	eax, eax
	je	$LN13@idea_ofb64
	mov	ecx, DWORD PTR _out$GSCopy$1$[esp+56]
	mov	edi, DWORD PTR _in$[esp+52]
	sub	ecx, edi
	mov	DWORD PTR _out$GSCopy$1$[esp+56], ecx
	xor	ebp, ebp
	npad	7
$LL2@idea_ofb64:
	dec	eax
	mov	DWORD PTR _length$[esp+52], eax
; Line 89
	test	esi, esi
	jne	SHORT $LN4@idea_ofb64
; Line 90
	push	DWORD PTR _schedule$GSCopy$1$[esp+56]
	lea	eax, DWORD PTR _ti$[esp+60]
	push	eax
	call	_idea_encrypt
; Line 93
	mov	ebx, DWORD PTR _ti$[esp+64]
	add	esp, 8
; Line 95
	mov	edx, DWORD PTR _ti$[esp+60]
	mov	eax, ebx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR _d$[esp+56], al
	mov	eax, ebx
	mov	ecx, DWORD PTR _out$GSCopy$1$[esp+56]
	shr	eax, 16					; 00000010H
	mov	BYTE PTR _d$[esp+57], al
	mov	eax, ebx
	shr	eax, 8
	mov	BYTE PTR _d$[esp+58], al
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR _d$[esp+60], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR _d$[esp+61], al
	mov	eax, edx
	shr	eax, 8
; Line 96
	inc	ebp
	mov	BYTE PTR _d$[esp+59], bl
	mov	BYTE PTR _d$[esp+62], al
	mov	BYTE PTR _d$[esp+63], dl
$LN4@idea_ofb64:
; Line 98
	mov	al, BYTE PTR _d$[esp+esi+56]
; Line 99
	inc	esi
	xor	al, BYTE PTR [edi]
	and	esi, 7
	mov	BYTE PTR [ecx+edi], al
	inc	edi
	mov	eax, DWORD PTR _length$[esp+52]
	test	eax, eax
	jne	SHORT $LL2@idea_ofb64
; Line 101
	test	ebp, ebp
	mov	ebp, DWORD PTR _iv$2$[esp+56]
	je	SHORT $LN12@idea_ofb64
; Line 105
	mov	ecx, DWORD PTR _ivec$GSCopy$1$[esp+56]
	mov	eax, ebx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ecx], al
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebp], al
	mov	eax, ebx
	shr	eax, 8
	mov	BYTE PTR [ebp+1], al
; Line 106
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ebp+2], bl
	mov	BYTE PTR [ebp+3], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebp+4], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [ebp+5], al
	mov	BYTE PTR [ebp+6], dl
$LN12@idea_ofb64:
; Line 109
	mov	eax, DWORD PTR _num$GSCopy$1$[esp+56]
	pop	edi
	mov	DWORD PTR [eax], esi
	pop	esi
	pop	ebp
	pop	ebx
; Line 110
	mov	ecx, DWORD PTR __$ArrayPad$[esp+40]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 40					; 00000028H
	ret	0
$LN13@idea_ofb64:
	mov	ecx, DWORD PTR __$ArrayPad$[esp+56]
	mov	DWORD PTR [edi], esi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 40					; 00000028H
	ret	0
_idea_ofb64_encrypt ENDP
_TEXT	ENDS
END
