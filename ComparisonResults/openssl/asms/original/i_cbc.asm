; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\idea\i_cbc.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_idea_cbc_encrypt
PUBLIC	_idea_encrypt
EXTRN	__chkstk:PROC
; Function compile flags: /Ogtpy
;	COMDAT _idea_encrypt
_TEXT	SEGMENT
_t1$16$ = -12						; size = 4
_t1$15$ = -12						; size = 4
_t1$14$ = -12						; size = 4
_t1$13$ = -12						; size = 4
_t1$12$ = -12						; size = 4
_t1$11$ = -12						; size = 4
_t1$10$ = -12						; size = 4
_t1$9$ = -12						; size = 4
_t1$8$ = -12						; size = 4
_t1$7$ = -12						; size = 4
_t1$6$ = -12						; size = 4
_t1$5$ = -12						; size = 4
_x3$1$ = -12						; size = 4
_x2$2$ = -12						; size = 4
_ul$9$ = -8						; size = 4
_x3$8$ = -8						; size = 4
_x3$7$ = -8						; size = 4
_x3$6$ = -8						; size = 4
_x3$5$ = -8						; size = 4
_x3$4$ = -8						; size = 4
_x3$3$ = -8						; size = 4
_ul$39$ = -4						; size = 4
_ul$34$ = -4						; size = 4
_ul$29$ = -4						; size = 4
_ul$24$ = -4						; size = 4
_ul$19$ = -4						; size = 4
_ul$14$ = -4						; size = 4
_x3$2$ = -4						; size = 4
_d$ = 8							; size = 4
_t1$4$ = 12						; size = 4
_t1$3$ = 12						; size = 4
_x1$3$ = 12						; size = 4
_x2$9$ = 12						; size = 4
_x2$8$ = 12						; size = 4
_x2$7$ = 12						; size = 4
_x2$6$ = 12						; size = 4
_x2$5$ = 12						; size = 4
_x2$4$ = 12						; size = 4
_x2$3$ = 12						; size = 4
_x2$1$ = 12						; size = 4
_key$ = 12						; size = 4
_idea_encrypt PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\idea\i_cbc.c
; Line 139
	mov	eax, 12					; 0000000cH
	call	__chkstk
; Line 143
	mov	eax, DWORD PTR _d$[esp+8]
; Line 150
	mov	edx, 1
	push	ebx
	push	ebp
	push	esi
	mov	ebp, DWORD PTR [eax+4]
	mov	esi, DWORD PTR [eax]
	mov	eax, esi
	push	edi
	mov	edi, DWORD PTR _key$[esp+24]
	shr	eax, 16					; 00000010H
	shr	ebp, 16					; 00000010H
	mov	edi, DWORD PTR [edi]
	mov	ecx, edi
	imul	ecx, eax
	test	ecx, ecx
	je	SHORT $LN2@idea_encry
	mov	eax, ecx
	movzx	ebx, cx
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN71@idea_encry
$LN2@idea_encry:
	mov	ebx, edx
	sub	ebx, edi
$LN71@idea_encry:
	mov	ecx, DWORD PTR _key$[esp+24]
	sub	ebx, eax
	add	esi, DWORD PTR [ecx+4]
	add	ebp, DWORD PTR [ecx+8]
	mov	DWORD PTR _x2$1$[esp+24], esi
	mov	esi, DWORD PTR _d$[esp+24]
	mov	DWORD PTR _x3$1$[esp+28], ebp
	mov	eax, DWORD PTR [esi+4]
	mov	esi, DWORD PTR [ecx+12]
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN4@idea_encry
	mov	eax, esi
	movzx	edi, si
	shr	eax, 16					; 00000010H
	sub	edi, eax
	mov	eax, edi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN72@idea_encry
$LN4@idea_encry:
	mov	edi, edx
	sub	edi, DWORD PTR [ecx+12]
$LN72@idea_encry:
	sub	edi, eax
	mov	eax, ebp
	mov	ebp, DWORD PTR [ecx+16]
	xor	eax, ebx
	movzx	eax, ax
	mov	esi, ebp
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN6@idea_encry
	mov	eax, esi
	movzx	esi, si
	shr	eax, 16					; 00000010H
	sub	esi, eax
	mov	eax, esi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN73@idea_encry
$LN6@idea_encry:
	mov	esi, edx
	sub	esi, ebp
$LN73@idea_encry:
	mov	ebp, DWORD PTR [ecx+20]
	sub	esi, eax
	mov	eax, edi
	xor	eax, DWORD PTR _x2$1$[esp+24]
	add	eax, esi
	movzx	eax, ax
	imul	ebp, eax
	test	ebp, ebp
	je	SHORT $LN8@idea_encry
	mov	eax, ebp
	movzx	ebp, bp
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN74@idea_encry
$LN8@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+20]
$LN74@idea_encry:
	sub	ebp, eax
	add	esi, ebp
	mov	eax, ebp
	xor	eax, DWORD PTR _x3$1$[esp+28]
; Line 151
	xor	ebp, ebx
	mov	ebx, DWORD PTR [ecx+24]
	xor	edi, esi
	xor	esi, DWORD PTR _x2$1$[esp+24]
	movzx	ebp, bp
	imul	ebx, ebp
	mov	DWORD PTR _x2$2$[esp+28], eax
	mov	DWORD PTR _x1$3$[esp+24], ebp
	test	ebx, ebx
	je	SHORT $LN10@idea_encry
	mov	eax, ebx
	movzx	ebp, bx
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$2$[esp+28]
	jmp	SHORT $LN11@idea_encry
$LN10@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+24]
	sub	ebp, DWORD PTR _x1$3$[esp+24]
$LN11@idea_encry:
	add	eax, DWORD PTR [ecx+28]
	add	esi, DWORD PTR [ecx+32]
	mov	DWORD PTR _x2$2$[esp+28], eax
	movzx	eax, di
	mov	edi, DWORD PTR [ecx+36]
	imul	edi, eax
	mov	DWORD PTR _x3$2$[esp+28], esi
	test	edi, edi
	je	SHORT $LN12@idea_encry
	mov	eax, edi
	movzx	ebx, di
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN75@idea_encry
$LN12@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+36]
$LN75@idea_encry:
	mov	edi, DWORD PTR [ecx+40]
	sub	ebx, eax
	mov	eax, esi
	xor	eax, ebp
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN14@idea_encry
	mov	eax, edi
	movzx	edi, di
	shr	eax, 16					; 00000010H
	sub	edi, eax
	mov	eax, edi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN76@idea_encry
$LN14@idea_encry:
	mov	edi, edx
	sub	edi, DWORD PTR [ecx+40]
$LN76@idea_encry:
	sub	edi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$2$[esp+28]
	add	eax, edi
	movzx	eax, ax
	mov	DWORD PTR _t1$3$[esp+24], eax
	mov	eax, DWORD PTR [ecx+44]
	imul	eax, DWORD PTR _t1$3$[esp+24]
	mov	DWORD PTR _ul$9$[esp+28], eax
	test	eax, eax
	je	SHORT $LN16@idea_encry
	mov	esi, DWORD PTR _ul$9$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	esi, si
	sub	esi, eax
	mov	eax, esi
	mov	DWORD PTR _t1$4$[esp+24], esi
	mov	esi, DWORD PTR _x3$2$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$4$[esp+24], eax
	mov	eax, DWORD PTR _t1$4$[esp+24]
	jmp	SHORT $LN17@idea_encry
$LN16@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+44]
	sub	eax, DWORD PTR _t1$3$[esp+24]
$LN17@idea_encry:
	add	edi, eax
	mov	DWORD PTR _x2$3$[esp+24], eax
	xor	DWORD PTR _x2$3$[esp+24], esi
; Line 152
	xor	eax, ebp
	mov	esi, DWORD PTR [ecx+48]
	xor	ebx, edi
	xor	edi, DWORD PTR _x2$2$[esp+28]
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN18@idea_encry
	mov	eax, esi
	movzx	ebp, si
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN77@idea_encry
$LN18@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+48]
$LN77@idea_encry:
	mov	esi, DWORD PTR [ecx+60]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$3$[esp+24]
	add	eax, DWORD PTR [ecx+52]
	add	edi, DWORD PTR [ecx+56]
	mov	DWORD PTR _x2$3$[esp+24], eax
	movzx	eax, bx
	imul	esi, eax
	mov	DWORD PTR _x3$3$[esp+28], edi
	test	esi, esi
	je	SHORT $LN20@idea_encry
	mov	eax, esi
	movzx	ebx, si
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN78@idea_encry
$LN20@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+60]
$LN78@idea_encry:
	mov	esi, DWORD PTR [ecx+64]
	sub	ebx, eax
	mov	eax, edi
	xor	eax, ebp
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN22@idea_encry
	mov	eax, esi
	movzx	esi, si
	shr	eax, 16					; 00000010H
	sub	esi, eax
	mov	eax, esi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN79@idea_encry
$LN22@idea_encry:
	mov	esi, edx
	sub	esi, DWORD PTR [ecx+64]
$LN79@idea_encry:
	sub	esi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$3$[esp+24]
	add	eax, esi
	movzx	eax, ax
	mov	DWORD PTR _t1$5$[esp+28], eax
	mov	eax, DWORD PTR [ecx+68]
	imul	eax, DWORD PTR _t1$5$[esp+28]
	mov	DWORD PTR _ul$14$[esp+28], eax
	test	eax, eax
	je	SHORT $LN24@idea_encry
	mov	edi, DWORD PTR _ul$14$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	edi, di
	sub	edi, eax
	mov	eax, edi
	mov	DWORD PTR _t1$6$[esp+28], edi
	mov	edi, DWORD PTR _x3$3$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$6$[esp+28], eax
	mov	eax, DWORD PTR _t1$6$[esp+28]
	jmp	SHORT $LN25@idea_encry
$LN24@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+68]
	sub	eax, DWORD PTR _t1$5$[esp+28]
$LN25@idea_encry:
	add	esi, eax
	xor	ebx, esi
	xor	esi, DWORD PTR _x2$3$[esp+24]
	mov	DWORD PTR _x2$4$[esp+24], eax
; Line 153
	xor	eax, ebp
	xor	DWORD PTR _x2$4$[esp+24], edi
	mov	edi, DWORD PTR [ecx+72]
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN26@idea_encry
	mov	eax, edi
	movzx	ebp, di
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN80@idea_encry
$LN26@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+72]
$LN80@idea_encry:
	mov	edi, DWORD PTR [ecx+84]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$4$[esp+24]
	add	eax, DWORD PTR [ecx+76]
	add	esi, DWORD PTR [ecx+80]
	mov	DWORD PTR _x2$4$[esp+24], eax
	movzx	eax, bx
	imul	edi, eax
	mov	DWORD PTR _x3$4$[esp+28], esi
	test	edi, edi
	je	SHORT $LN28@idea_encry
	mov	eax, edi
	movzx	ebx, di
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN81@idea_encry
$LN28@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+84]
$LN81@idea_encry:
	mov	edi, DWORD PTR [ecx+88]
	sub	ebx, eax
	mov	eax, esi
	xor	eax, ebp
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN30@idea_encry
	mov	eax, edi
	movzx	edi, di
	shr	eax, 16					; 00000010H
	sub	edi, eax
	mov	eax, edi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN82@idea_encry
$LN30@idea_encry:
	mov	edi, edx
	sub	edi, DWORD PTR [ecx+88]
$LN82@idea_encry:
	sub	edi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$4$[esp+24]
	add	eax, edi
	movzx	eax, ax
	mov	DWORD PTR _t1$7$[esp+28], eax
	mov	eax, DWORD PTR [ecx+92]
	imul	eax, DWORD PTR _t1$7$[esp+28]
	mov	DWORD PTR _ul$19$[esp+28], eax
	test	eax, eax
	je	SHORT $LN32@idea_encry
	mov	esi, DWORD PTR _ul$19$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	esi, si
	sub	esi, eax
	mov	eax, esi
	mov	DWORD PTR _t1$8$[esp+28], esi
	mov	esi, DWORD PTR _x3$4$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$8$[esp+28], eax
	mov	eax, DWORD PTR _t1$8$[esp+28]
	jmp	SHORT $LN33@idea_encry
$LN32@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+92]
	sub	eax, DWORD PTR _t1$7$[esp+28]
$LN33@idea_encry:
	add	edi, eax
	xor	ebx, edi
	xor	edi, DWORD PTR _x2$4$[esp+24]
	mov	DWORD PTR _x2$5$[esp+24], eax
; Line 154
	xor	eax, ebp
	xor	DWORD PTR _x2$5$[esp+24], esi
	mov	esi, DWORD PTR [ecx+96]
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN34@idea_encry
	mov	eax, esi
	movzx	ebp, si
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN83@idea_encry
$LN34@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+96]
$LN83@idea_encry:
	mov	esi, DWORD PTR [ecx+108]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$5$[esp+24]
	add	eax, DWORD PTR [ecx+100]
	add	edi, DWORD PTR [ecx+104]
	mov	DWORD PTR _x2$5$[esp+24], eax
	movzx	eax, bx
	imul	esi, eax
	mov	DWORD PTR _x3$5$[esp+28], edi
	test	esi, esi
	je	SHORT $LN36@idea_encry
	mov	eax, esi
	movzx	ebx, si
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN84@idea_encry
$LN36@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+108]
$LN84@idea_encry:
	mov	esi, DWORD PTR [ecx+112]
	sub	ebx, eax
	mov	eax, edi
	xor	eax, ebp
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN38@idea_encry
	mov	eax, esi
	movzx	esi, si
	shr	eax, 16					; 00000010H
	sub	esi, eax
	mov	eax, esi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN85@idea_encry
$LN38@idea_encry:
	mov	esi, edx
	sub	esi, DWORD PTR [ecx+112]
$LN85@idea_encry:
	sub	esi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$5$[esp+24]
	add	eax, esi
	movzx	eax, ax
	mov	DWORD PTR _t1$9$[esp+28], eax
	mov	eax, DWORD PTR [ecx+116]
	imul	eax, DWORD PTR _t1$9$[esp+28]
	mov	DWORD PTR _ul$24$[esp+28], eax
	test	eax, eax
	je	SHORT $LN40@idea_encry
	mov	edi, DWORD PTR _ul$24$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	edi, di
	sub	edi, eax
	mov	eax, edi
	mov	DWORD PTR _t1$10$[esp+28], edi
	mov	edi, DWORD PTR _x3$5$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$10$[esp+28], eax
	mov	eax, DWORD PTR _t1$10$[esp+28]
	jmp	SHORT $LN41@idea_encry
$LN40@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+116]
	sub	eax, DWORD PTR _t1$9$[esp+28]
$LN41@idea_encry:
	add	esi, eax
	xor	ebx, esi
	xor	esi, DWORD PTR _x2$5$[esp+24]
	mov	DWORD PTR _x2$6$[esp+24], eax
; Line 155
	xor	eax, ebp
	xor	DWORD PTR _x2$6$[esp+24], edi
	mov	edi, DWORD PTR [ecx+120]
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN42@idea_encry
	mov	eax, edi
	movzx	ebp, di
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN86@idea_encry
$LN42@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+120]
$LN86@idea_encry:
	mov	edi, DWORD PTR [ecx+132]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$6$[esp+24]
	add	eax, DWORD PTR [ecx+124]
	add	esi, DWORD PTR [ecx+128]
	mov	DWORD PTR _x2$6$[esp+24], eax
	movzx	eax, bx
	imul	edi, eax
	mov	DWORD PTR _x3$6$[esp+28], esi
	test	edi, edi
	je	SHORT $LN44@idea_encry
	mov	eax, edi
	movzx	ebx, di
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN87@idea_encry
$LN44@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+132]
$LN87@idea_encry:
	mov	edi, DWORD PTR [ecx+136]
	sub	ebx, eax
	mov	eax, esi
	xor	eax, ebp
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN46@idea_encry
	mov	eax, edi
	movzx	edi, di
	shr	eax, 16					; 00000010H
	sub	edi, eax
	mov	eax, edi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN88@idea_encry
$LN46@idea_encry:
	mov	edi, edx
	sub	edi, DWORD PTR [ecx+136]
$LN88@idea_encry:
	sub	edi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$6$[esp+24]
	add	eax, edi
	movzx	eax, ax
	mov	DWORD PTR _t1$11$[esp+28], eax
	mov	eax, DWORD PTR [ecx+140]
	imul	eax, DWORD PTR _t1$11$[esp+28]
	mov	DWORD PTR _ul$29$[esp+28], eax
	test	eax, eax
	je	SHORT $LN48@idea_encry
	mov	esi, DWORD PTR _ul$29$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	esi, si
	sub	esi, eax
	mov	eax, esi
	mov	DWORD PTR _t1$12$[esp+28], esi
	mov	esi, DWORD PTR _x3$6$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$12$[esp+28], eax
	mov	eax, DWORD PTR _t1$12$[esp+28]
	jmp	SHORT $LN49@idea_encry
$LN48@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+140]
	sub	eax, DWORD PTR _t1$11$[esp+28]
$LN49@idea_encry:
	add	edi, eax
	xor	ebx, edi
	xor	edi, DWORD PTR _x2$6$[esp+24]
	mov	DWORD PTR _x2$7$[esp+24], eax
; Line 156
	xor	eax, ebp
	xor	DWORD PTR _x2$7$[esp+24], esi
	mov	esi, DWORD PTR [ecx+144]
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN50@idea_encry
	mov	eax, esi
	movzx	ebp, si
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN89@idea_encry
$LN50@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+144]
$LN89@idea_encry:
	mov	esi, DWORD PTR [ecx+156]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$7$[esp+24]
	add	eax, DWORD PTR [ecx+148]
	add	edi, DWORD PTR [ecx+152]
	mov	DWORD PTR _x2$7$[esp+24], eax
	movzx	eax, bx
	imul	esi, eax
	mov	DWORD PTR _x3$7$[esp+28], edi
	test	esi, esi
	je	SHORT $LN52@idea_encry
	mov	eax, esi
	movzx	ebx, si
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN90@idea_encry
$LN52@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+156]
$LN90@idea_encry:
	mov	esi, DWORD PTR [ecx+160]
	sub	ebx, eax
	mov	eax, edi
	xor	eax, ebp
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN54@idea_encry
	mov	eax, esi
	movzx	esi, si
	shr	eax, 16					; 00000010H
	sub	esi, eax
	mov	eax, esi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN91@idea_encry
$LN54@idea_encry:
	mov	esi, edx
	sub	esi, DWORD PTR [ecx+160]
$LN91@idea_encry:
	sub	esi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$7$[esp+24]
	add	eax, esi
	movzx	eax, ax
	mov	DWORD PTR _t1$13$[esp+28], eax
	mov	eax, DWORD PTR [ecx+164]
	imul	eax, DWORD PTR _t1$13$[esp+28]
	mov	DWORD PTR _ul$34$[esp+28], eax
	test	eax, eax
	je	SHORT $LN56@idea_encry
	mov	edi, DWORD PTR _ul$34$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	edi, di
	sub	edi, eax
	mov	eax, edi
	mov	DWORD PTR _t1$14$[esp+28], edi
	mov	edi, DWORD PTR _x3$7$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$14$[esp+28], eax
	mov	eax, DWORD PTR _t1$14$[esp+28]
	jmp	SHORT $LN57@idea_encry
$LN56@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+164]
	sub	eax, DWORD PTR _t1$13$[esp+28]
$LN57@idea_encry:
	add	esi, eax
	xor	ebx, esi
	xor	esi, DWORD PTR _x2$7$[esp+24]
	mov	DWORD PTR _x2$8$[esp+24], eax
; Line 157
	xor	eax, ebp
	xor	DWORD PTR _x2$8$[esp+24], edi
	mov	edi, DWORD PTR [ecx+168]
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN58@idea_encry
	mov	eax, edi
	movzx	ebp, di
	shr	eax, 16					; 00000010H
	sub	ebp, eax
	mov	eax, ebp
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN92@idea_encry
$LN58@idea_encry:
	mov	ebp, edx
	sub	ebp, DWORD PTR [ecx+168]
$LN92@idea_encry:
	mov	edi, DWORD PTR [ecx+180]
	sub	ebp, eax
	mov	eax, DWORD PTR _x2$8$[esp+24]
	add	eax, DWORD PTR [ecx+172]
	add	esi, DWORD PTR [ecx+176]
	mov	DWORD PTR _x2$8$[esp+24], eax
	movzx	eax, bx
	imul	edi, eax
	mov	DWORD PTR _x3$8$[esp+28], esi
	test	edi, edi
	je	SHORT $LN60@idea_encry
	mov	eax, edi
	movzx	ebx, di
	shr	eax, 16					; 00000010H
	sub	ebx, eax
	mov	eax, ebx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN93@idea_encry
$LN60@idea_encry:
	mov	ebx, edx
	sub	ebx, DWORD PTR [ecx+180]
$LN93@idea_encry:
	mov	edi, DWORD PTR [ecx+184]
	sub	ebx, eax
	mov	eax, esi
	xor	eax, ebp
	movzx	eax, ax
	imul	edi, eax
	test	edi, edi
	je	SHORT $LN62@idea_encry
	mov	eax, edi
	movzx	edi, di
	shr	eax, 16					; 00000010H
	sub	edi, eax
	mov	eax, edi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN94@idea_encry
$LN62@idea_encry:
	mov	edi, edx
	sub	edi, DWORD PTR [ecx+184]
$LN94@idea_encry:
	sub	edi, eax
	mov	eax, ebx
	xor	eax, DWORD PTR _x2$8$[esp+24]
	add	eax, edi
	movzx	eax, ax
	mov	DWORD PTR _t1$15$[esp+28], eax
	mov	eax, DWORD PTR [ecx+188]
	imul	eax, DWORD PTR _t1$15$[esp+28]
	mov	DWORD PTR _ul$39$[esp+28], eax
	test	eax, eax
	je	SHORT $LN64@idea_encry
	mov	esi, DWORD PTR _ul$39$[esp+28]
	shr	eax, 16					; 00000010H
	movzx	esi, si
	sub	esi, eax
	mov	eax, esi
	mov	DWORD PTR _t1$16$[esp+28], esi
	mov	esi, DWORD PTR _x3$8$[esp+28]
	shr	eax, 16					; 00000010H
	sub	DWORD PTR _t1$16$[esp+28], eax
	mov	eax, DWORD PTR _t1$16$[esp+28]
	jmp	SHORT $LN65@idea_encry
$LN64@idea_encry:
	mov	eax, edx
	sub	eax, DWORD PTR [ecx+188]
	sub	eax, DWORD PTR _t1$15$[esp+28]
$LN65@idea_encry:
	add	edi, eax
	xor	ebx, edi
	xor	edi, DWORD PTR _x2$8$[esp+24]
	mov	DWORD PTR _x2$9$[esp+24], eax
; Line 159
	xor	eax, ebp
	xor	DWORD PTR _x2$9$[esp+24], esi
; Line 160
	mov	ebp, DWORD PTR [ecx+192]
	mov	esi, ebp
	movzx	eax, ax
	imul	esi, eax
	test	esi, esi
	je	SHORT $LN66@idea_encry
	mov	eax, esi
	movzx	esi, si
	shr	eax, 16					; 00000010H
	sub	esi, eax
	mov	eax, esi
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN95@idea_encry
$LN66@idea_encry:
	mov	esi, edx
	sub	esi, ebp
$LN95@idea_encry:
; Line 163
	mov	ebp, DWORD PTR [ecx+196]
	sub	esi, eax
	add	ebp, edi
; Line 166
	movzx	eax, bx
	mov	edi, DWORD PTR [ecx+200]
; Line 167
	mov	ebx, DWORD PTR [ecx+204]
	mov	ecx, ebx
	add	edi, DWORD PTR _x2$9$[esp+24]
	imul	ecx, eax
	test	ecx, ecx
	je	SHORT $LN68@idea_encry
	mov	eax, ecx
	movzx	edx, cx
	shr	eax, 16					; 00000010H
	sub	edx, eax
	mov	eax, edx
	shr	eax, 16					; 00000010H
	jmp	SHORT $LN96@idea_encry
$LN68@idea_encry:
	sub	edx, ebx
$LN96@idea_encry:
; Line 169
	mov	ecx, DWORD PTR _d$[esp+24]
	sub	edx, eax
	shl	esi, 16					; 00000010H
	movzx	eax, bp
	or	eax, esi
; Line 170
	shl	edi, 16					; 00000010H
	mov	DWORD PTR [ecx], eax
	movzx	eax, dx
	or	edi, eax
	mov	DWORD PTR [ecx+4], edi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 171
	add	esp, 12					; 0000000cH
	ret	0
_idea_encrypt ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _idea_cbc_encrypt
_TEXT	SEGMENT
_xor1$1$ = -20						; size = 4
_tout0$1$ = -20						; size = 4
_tin1$4$ = -16						; size = 4
tv833 = -16						; size = 4
_iv$2$ = -16						; size = 4
_tin0$4$ = -12						; size = 4
_l$2$ = -12						; size = 4
_tin$ = -8						; size = 8
_in$ = 8						; size = 4
_out$ = 12						; size = 4
_tout1$3$ = 16						; size = 4
_l$1$ = 16						; size = 4
tv834 = 16						; size = 4
_out$2$ = 16						; size = 4
_length$ = 16						; size = 4
_ks$ = 20						; size = 4
_iv$ = 24						; size = 4
_xor0$1$ = 28						; size = 4
_tout1$1$ = 28						; size = 4
_encrypt$ = 28						; size = 4
_idea_cbc_encrypt PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\idea\i_cbc.c
; Line 65
	mov	eax, 20					; 00000014H
	call	__chkstk
; Line 71
	cmp	DWORD PTR _encrypt$[esp+16], 0
	push	ebx
	push	ebp
	push	esi
	push	edi
	je	$LN12@idea_cbc_e
; Line 72
	mov	esi, DWORD PTR _iv$[esp+32]
; Line 75
	mov	ebp, DWORD PTR _length$[esp+32]
	mov	edi, DWORD PTR _out$[esp+32]
	mov	ebx, DWORD PTR _in$[esp+32]
	movzx	edx, BYTE PTR [esi]
	movzx	eax, BYTE PTR [esi+1]
	movzx	ecx, BYTE PTR [esi+4]
	shl	eax, 16					; 00000010H
	shl	edx, 24					; 00000018H
	or	edx, eax
	shl	ecx, 24					; 00000018H
	movzx	eax, BYTE PTR [esi+2]
	shl	eax, 8
	or	edx, eax
	movzx	eax, BYTE PTR [esi+3]
	or	edx, eax
	movzx	eax, BYTE PTR [esi+5]
	shl	eax, 16					; 00000010H
	or	ecx, eax
	mov	DWORD PTR _tout0$1$[esp+36], edx
	movzx	eax, BYTE PTR [esi+6]
	shl	eax, 8
	or	ecx, eax
	movzx	eax, BYTE PTR [esi+7]
	or	ecx, eax
	add	ebp, -8					; fffffff8H
	mov	DWORD PTR _tout1$1$[esp+32], ecx
	mov	DWORD PTR _l$1$[esp+32], ebp
	js	$LN3@idea_cbc_e
; Line 72
	lea	eax, DWORD PTR [ebp+8]
	shr	eax, 3
	mov	DWORD PTR tv833[esp+36], eax
; Line 75
	neg	eax
	lea	ebp, DWORD PTR [ebp+eax*8]
	mov	DWORD PTR _l$1$[esp+32], ebp
	mov	ebp, DWORD PTR tv833[esp+36]
$LL4@idea_cbc_e:
; Line 76
	movzx	edx, BYTE PTR [ebx]
	movzx	eax, BYTE PTR [ebx+1]
; Line 77
	movzx	ecx, BYTE PTR [ebx+4]
	shl	eax, 16					; 00000010H
; Line 82
	push	DWORD PTR _ks$[esp+32]
	shl	edx, 24					; 00000018H
	or	edx, eax
	shl	ecx, 24					; 00000018H
	movzx	eax, BYTE PTR [ebx+2]
	shl	eax, 8
	or	edx, eax
	movzx	eax, BYTE PTR [ebx+3]
	or	edx, eax
	movzx	eax, BYTE PTR [ebx+5]
	xor	edx, DWORD PTR _tout0$1$[esp+40]
	shl	eax, 16					; 00000010H
	or	ecx, eax
	mov	DWORD PTR _tin$[esp+40], edx
	movzx	eax, BYTE PTR [ebx+6]
	shl	eax, 8
	or	ecx, eax
	movzx	eax, BYTE PTR [ebx+7]
	or	ecx, eax
	add	ebx, 8
	xor	ecx, DWORD PTR _tout1$1$[esp+36]
	lea	eax, DWORD PTR _tin$[esp+40]
	push	eax
	mov	DWORD PTR _tin$[esp+48], ecx
	call	_idea_encrypt
; Line 83
	mov	edx, DWORD PTR _tin$[esp+44]
	add	esp, 8
; Line 85
	mov	ecx, DWORD PTR _tin$[esp+40]
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [edi], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [edi+1], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [edi+2], al
; Line 86
	mov	eax, ecx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [edi+3], dl
	mov	BYTE PTR [edi+4], al
	mov	eax, ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [edi+5], al
	mov	eax, ecx
	shr	eax, 8
	mov	BYTE PTR [edi+6], al
	mov	BYTE PTR [edi+7], cl
	add	edi, 8
	mov	DWORD PTR _tout0$1$[esp+36], edx
	mov	DWORD PTR _tout1$1$[esp+32], ecx
	sub	ebp, 1
	jne	$LL4@idea_cbc_e
	mov	ebp, DWORD PTR _l$1$[esp+32]
$LN3@idea_cbc_e:
; Line 88
	cmp	ebp, -8					; fffffff8H
	je	$LN14@idea_cbc_e
; Line 89
	mov	eax, DWORD PTR _l$1$[esp+32]
	lea	ecx, DWORD PTR [ebp+8]
	add	ecx, ebx
	add	eax, 7
	xor	ebx, ebx
	xor	ebp, ebp
	cmp	eax, 7
	ja	SHORT $LN5@idea_cbc_e
	jmp	DWORD PTR $LN44@idea_cbc_e[eax*4]
$LN15@idea_cbc_e:
	movzx	ebx, BYTE PTR [ecx-1]
	dec	ecx
$LN16@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	dec	ecx
	shl	eax, 8
	or	ebx, eax
$LN17@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	dec	ecx
	shl	eax, 16					; 00000010H
	or	ebx, eax
$LN18@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	dec	ecx
	shl	eax, 24					; 00000018H
	or	ebx, eax
$LN19@idea_cbc_e:
	movzx	ebp, BYTE PTR [ecx-1]
	dec	ecx
$LN20@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	dec	ecx
	shl	eax, 8
	or	ebp, eax
$LN21@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	dec	ecx
	shl	eax, 16					; 00000010H
	or	ebp, eax
$LN22@idea_cbc_e:
	movzx	eax, BYTE PTR [ecx-1]
	shl	eax, 24					; 00000018H
	or	ebp, eax
$LN5@idea_cbc_e:
; Line 94
	push	DWORD PTR _ks$[esp+32]
	xor	ebx, DWORD PTR _tout1$1$[esp+36]
	lea	eax, DWORD PTR _tin$[esp+40]
	xor	ebp, edx
	mov	DWORD PTR _tin$[esp+44], ebx
	push	eax
	mov	DWORD PTR _tin$[esp+44], ebp
	call	_idea_encrypt
; Line 95
	mov	edx, DWORD PTR _tin$[esp+44]
	add	esp, 8
; Line 97
	mov	ecx, DWORD PTR _tin$[esp+40]
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [edi], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [edi+1], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [edi+2], al
; Line 98
	mov	eax, ecx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [edi+3], dl
	mov	BYTE PTR [edi+4], al
	mov	eax, ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [edi+5], al
	mov	eax, ecx
	shr	eax, 8
	mov	BYTE PTR [edi+6], al
	mov	BYTE PTR [edi+7], cl
$LN14@idea_cbc_e:
; Line 100
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [esi], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [esi+1], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [esi+2], al
; Line 101
	mov	eax, ecx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [esi+3], dl
	mov	BYTE PTR [esi+4], al
	mov	eax, ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [esi+5], al
	mov	eax, ecx
	shr	eax, 8
	pop	edi
	mov	BYTE PTR [esi+6], al
	mov	BYTE PTR [esi+7], cl
	pop	esi
	pop	ebp
	pop	ebx
; Line 136
	add	esp, 20					; 00000014H
	ret	0
$LN12@idea_cbc_e:
; Line 103
	mov	ebx, DWORD PTR _iv$[esp+32]
; Line 106
	mov	edi, DWORD PTR _length$[esp+32]
	mov	ebp, DWORD PTR _in$[esp+32]
	mov	DWORD PTR _iv$2$[esp+36], ebx
	movzx	ecx, BYTE PTR [ebx]
	movzx	eax, BYTE PTR [ebx+1]
	movzx	edx, BYTE PTR [ebx+4]
	shl	eax, 16					; 00000010H
	shl	ecx, 24					; 00000018H
	or	ecx, eax
	shl	edx, 24					; 00000018H
	movzx	eax, BYTE PTR [ebx+2]
	shl	eax, 8
	or	ecx, eax
	movzx	eax, BYTE PTR [ebx+3]
	or	ecx, eax
	movzx	eax, BYTE PTR [ebx+5]
	shl	eax, 16					; 00000010H
	or	edx, eax
	mov	DWORD PTR _xor0$1$[esp+32], ecx
	movzx	eax, BYTE PTR [ebx+6]
	shl	eax, 8
	or	edx, eax
	movzx	eax, BYTE PTR [ebx+7]
	or	edx, eax
	add	edi, -8					; fffffff8H
	mov	DWORD PTR _xor1$1$[esp+36], edx
	js	$LN42@idea_cbc_e
	mov	ebx, DWORD PTR _out$[esp+32]
	lea	eax, DWORD PTR [edi+8]
	shr	eax, 3
	mov	DWORD PTR tv834[esp+32], eax
	neg	eax
	lea	edi, DWORD PTR [edi+eax*8]
	mov	DWORD PTR _l$2$[esp+36], edi
$LL9@idea_cbc_e:
; Line 107
	movzx	edi, BYTE PTR [ebp]
	movzx	eax, BYTE PTR [ebp+1]
; Line 109
	movzx	esi, BYTE PTR [ebp+4]
	shl	eax, 16					; 00000010H
; Line 111
	push	DWORD PTR _ks$[esp+32]
	shl	edi, 24					; 00000018H
	or	edi, eax
	shl	esi, 24					; 00000018H
	movzx	eax, BYTE PTR [ebp+2]
	shl	eax, 8
	or	edi, eax
	movzx	eax, BYTE PTR [ebp+3]
	or	edi, eax
	movzx	eax, BYTE PTR [ebp+5]
	shl	eax, 16					; 00000010H
	or	esi, eax
	mov	DWORD PTR _tin$[esp+40], edi
	movzx	eax, BYTE PTR [ebp+6]
	shl	eax, 8
	or	esi, eax
	movzx	eax, BYTE PTR [ebp+7]
	or	esi, eax
	add	ebp, 8
	lea	eax, DWORD PTR _tin$[esp+40]
	mov	DWORD PTR _tin$[esp+44], esi
	push	eax
	call	_idea_encrypt
; Line 112
	mov	ecx, DWORD PTR _tin$[esp+44]
	add	esp, 8
	xor	ecx, DWORD PTR _xor0$1$[esp+32]
; Line 113
	mov	edx, DWORD PTR _tin$[esp+40]
; Line 114
	mov	eax, ecx
	xor	edx, DWORD PTR _xor1$1$[esp+36]
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ebx], al
	mov	eax, ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebx+1], al
	mov	eax, ecx
	shr	eax, 8
	mov	BYTE PTR [ebx+2], al
; Line 115
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ebx+3], cl
; Line 116
	mov	ecx, edi
	mov	BYTE PTR [ebx+4], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebx+5], al
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [ebx+6], al
	mov	BYTE PTR [ebx+7], dl
	add	ebx, 8
	sub	DWORD PTR tv834[esp+32], 1
; Line 117
	mov	edx, esi
	mov	DWORD PTR _xor0$1$[esp+32], ecx
	mov	DWORD PTR _xor1$1$[esp+36], edx
	jne	$LL9@idea_cbc_e
	mov	edi, DWORD PTR _l$2$[esp+36]
	mov	DWORD PTR _out$2$[esp+32], ebx
	mov	ebx, DWORD PTR _iv$2$[esp+36]
	mov	esi, DWORD PTR _out$2$[esp+32]
	jmp	SHORT $LN8@idea_cbc_e
$LN42@idea_cbc_e:
; Line 106
	mov	esi, DWORD PTR _out$[esp+32]
$LN8@idea_cbc_e:
; Line 119
	cmp	edi, -8					; fffffff8H
	je	$LN23@idea_cbc_e
; Line 120
	movzx	ecx, BYTE PTR [ebp]
	movzx	eax, BYTE PTR [ebp+1]
; Line 122
	movzx	edx, BYTE PTR [ebp+4]
; Line 124
	push	DWORD PTR _ks$[esp+32]
	shl	eax, 16					; 00000010H
	shl	ecx, 24					; 00000018H
	or	ecx, eax
	shl	edx, 24					; 00000018H
	movzx	eax, BYTE PTR [ebp+2]
	shl	eax, 8
	or	ecx, eax
	movzx	eax, BYTE PTR [ebp+3]
	or	ecx, eax
	movzx	eax, BYTE PTR [ebp+5]
	mov	DWORD PTR _tin0$4$[esp+40], ecx
	mov	DWORD PTR _tin$[esp+40], ecx
	movzx	ecx, BYTE PTR [ebp+6]
	shl	eax, 16					; 00000010H
	or	edx, eax
	shl	ecx, 8
	movzx	eax, BYTE PTR [ebp+7]
	or	ecx, eax
	lea	eax, DWORD PTR _tin$[esp+40]
	or	edx, ecx
	push	eax
	mov	DWORD PTR _tin1$4$[esp+44], edx
	mov	DWORD PTR _tin$[esp+48], edx
	call	_idea_encrypt
; Line 125
	mov	edx, DWORD PTR _tin$[esp+44]
; Line 127
	lea	ecx, DWORD PTR [edi+8]
	mov	eax, DWORD PTR _tin$[esp+48]
	add	edi, 7
	xor	eax, DWORD PTR _xor1$1$[esp+44]
	add	esp, 8
	xor	edx, DWORD PTR _xor0$1$[esp+32]
	add	ecx, esi
	mov	DWORD PTR _tout1$3$[esp+32], eax
	cmp	edi, 7
	ja	SHORT $LN10@idea_cbc_e
	jmp	DWORD PTR $LN45@idea_cbc_e[edi*4]
$LN24@idea_cbc_e:
	dec	ecx
	mov	BYTE PTR [ecx], al
$LN25@idea_cbc_e:
	dec	ecx
	shr	eax, 8
	mov	BYTE PTR [ecx], al
	mov	eax, DWORD PTR _tout1$3$[esp+32]
$LN26@idea_cbc_e:
	dec	ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ecx], al
	mov	eax, DWORD PTR _tout1$3$[esp+32]
$LN27@idea_cbc_e:
	dec	ecx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ecx], al
$LN28@idea_cbc_e:
	dec	ecx
	mov	BYTE PTR [ecx], dl
$LN29@idea_cbc_e:
	dec	ecx
	mov	eax, edx
	shr	eax, 8
	mov	BYTE PTR [ecx], al
$LN30@idea_cbc_e:
	dec	ecx
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ecx], al
$LN31@idea_cbc_e:
	shr	edx, 24					; 00000018H
	mov	BYTE PTR [ecx-1], dl
$LN10@idea_cbc_e:
; Line 128
	mov	ecx, DWORD PTR _tin0$4$[esp+36]
; Line 129
	mov	edx, DWORD PTR _tin1$4$[esp+36]
$LN23@idea_cbc_e:
; Line 131
	mov	eax, ecx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ebx], al
	mov	eax, ecx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebx+1], al
	mov	eax, ecx
	shr	eax, 8
	mov	BYTE PTR [ebx+2], al
; Line 132
	mov	eax, edx
	shr	eax, 24					; 00000018H
	mov	BYTE PTR [ebx+3], cl
	mov	BYTE PTR [ebx+4], al
	mov	eax, edx
	shr	eax, 16					; 00000010H
	mov	BYTE PTR [ebx+5], al
	mov	eax, edx
	pop	edi
	pop	esi
	shr	eax, 8
	mov	BYTE PTR [ebx+6], al
	pop	ebp
	mov	BYTE PTR [ebx+7], dl
	pop	ebx
; Line 136
	add	esp, 20					; 00000014H
	ret	0
	npad	1
$LN44@idea_cbc_e:
	DD	$LN22@idea_cbc_e
	DD	$LN21@idea_cbc_e
	DD	$LN20@idea_cbc_e
	DD	$LN19@idea_cbc_e
	DD	$LN18@idea_cbc_e
	DD	$LN17@idea_cbc_e
	DD	$LN16@idea_cbc_e
	DD	$LN15@idea_cbc_e
$LN45@idea_cbc_e:
	DD	$LN31@idea_cbc_e
	DD	$LN30@idea_cbc_e
	DD	$LN29@idea_cbc_e
	DD	$LN28@idea_cbc_e
	DD	$LN27@idea_cbc_e
	DD	$LN26@idea_cbc_e
	DD	$LN25@idea_cbc_e
	DD	$LN24@idea_cbc_e
_idea_cbc_encrypt ENDP
_TEXT	ENDS
END
