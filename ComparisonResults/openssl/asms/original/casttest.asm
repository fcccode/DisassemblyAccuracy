; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\cast\casttest.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0BB@JGGOGLEG@0123456789ABCDEF?$AA@	; `string'
;	COMDAT ??_C@_0BB@JGGOGLEG@0123456789ABCDEF?$AA@
CONST	SEGMENT
??_C@_0BB@JGGOGLEG@0123456789ABCDEF?$AA@ DB '0123456789ABCDEF', 00H ; `string'
CONST	ENDS
_DATA	SEGMENT
_k	DB	01H
	DB	023H
	DB	045H
	DB	067H
	DB	012H
	DB	034H
	DB	056H
	DB	078H
	DB	023H
	DB	045H
	DB	067H
	DB	089H
	DB	034H
	DB	056H
	DB	078H
	DB	09aH
_in	DB	01H
	DB	023H
	DB	045H
	DB	067H
	DB	089H
	DB	0abH
	DB	0cdH
	DB	0efH
_k_len	DD	010H
	DD	0aH
	DD	05H
_c	DB	023H
	DB	08bH
	DB	04fH
	DB	0e5H
	DB	084H
	DB	07eH
	DB	044H
	DB	0b2H
	DB	0ebH
	DB	06aH
	DB	071H
	DB	01aH
	DB	02cH
	DB	02H
	DB	027H
	DB	01bH
	DB	07aH
	DB	0c8H
	DB	016H
	DB	0d1H
	DB	06eH
	DB	09bH
	DB	030H
	DB	02eH
_in_a	DB	01H
	DB	023H
	DB	045H
	DB	067H
	DB	012H
	DB	034H
	DB	056H
	DB	078H
	DB	023H
	DB	045H
	DB	067H
	DB	089H
	DB	034H
	DB	056H
	DB	078H
	DB	09aH
_in_b	DB	01H
	DB	023H
	DB	045H
	DB	067H
	DB	012H
	DB	034H
	DB	056H
	DB	078H
	DB	023H
	DB	045H
	DB	067H
	DB	089H
	DB	034H
	DB	056H
	DB	078H
	DB	09aH
_c_a	DB	0eeH
	DB	0a9H
	DB	0d0H
	DB	0a2H
	DB	049H
	DB	0fdH
	DB	03bH
	DB	0a6H
	DB	0b3H
	DB	043H
	DB	06fH
	DB	0b8H
	DB	09dH
	DB	06dH
	DB	0caH
	DB	092H
_c_b	DB	0b2H
	DB	0c9H
	DB	05eH
	DB	0b0H
	DB	0cH
	DB	031H
	DB	0adH
	DB	071H
	DB	080H
	DB	0acH
	DB	05H
	DB	0b8H
	DB	0e8H
	DB	03dH
	DB	069H
	DB	06eH
?hex@?L@??main@@9@9 DD FLAT:??_C@_0BB@JGGOGLEG@0123456789ABCDEF?$AA@ ; `main'::`11'::hex
_DATA	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_main
PUBLIC	??_C@_0CK@HLLBFMFJ@ecb?5cast?5error?5encrypting?5for?5ke@ ; `string'
PUBLIC	??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@		; `string'
PUBLIC	??_C@_05BFHEBJNP@?$CF02X?5?$AA@			; `string'
PUBLIC	??_C@_01EEMJAFIK@?6?$AA@			; `string'
PUBLIC	??_C@_09PBKDEKON@expected?3?$AA@		; `string'
PUBLIC	??_C@_0CK@LCEDIHFM@ecb?5cast?5error?5decrypting?5for?5ke@ ; `string'
PUBLIC	??_C@_0O@NEJIHGHH@ecb?5cast5?5ok?6?$AA@		; `string'
PUBLIC	??_C@_0CC@GBBHNIAA@This?5test?5will?5take?5some?5time?4?4?4@ ; `string'
PUBLIC	??_C@_02HAOIJKIC@?$CFc?$AA@			; `string'
PUBLIC	??_C@_06HPIHNGNL@Error?6?$AA@			; `string'
PUBLIC	??_C@_07MODPDANM@A?5out?5?$DN?$AA@		; `string'
PUBLIC	??_C@_08CDPJFNGG@?6actual?$DN?$AA@		; `string'
PUBLIC	??_C@_07EALADHDP@B?5out?5?$DN?$AA@		; `string'
PUBLIC	??_C@_04CFDEAMPI@?5ok?6?$AA@			; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp__fflush:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	__imp__exit:PROC
EXTRN	_CAST_set_key:PROC
EXTRN	_CAST_ecb_encrypt:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	___security_cookie:DWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
_BSS	SEGMENT
_out	DB	050H DUP (?)
_BSS	ENDS
;	COMDAT ??_C@_04CFDEAMPI@?5ok?6?$AA@
CONST	SEGMENT
??_C@_04CFDEAMPI@?5ok?6?$AA@ DB ' ok', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_07EALADHDP@B?5out?5?$DN?$AA@
CONST	SEGMENT
??_C@_07EALADHDP@B?5out?5?$DN?$AA@ DB 'B out =', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_08CDPJFNGG@?6actual?$DN?$AA@
CONST	SEGMENT
??_C@_08CDPJFNGG@?6actual?$DN?$AA@ DB 0aH, 'actual=', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_07MODPDANM@A?5out?5?$DN?$AA@
CONST	SEGMENT
??_C@_07MODPDANM@A?5out?5?$DN?$AA@ DB 'A out =', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_06HPIHNGNL@Error?6?$AA@
CONST	SEGMENT
??_C@_06HPIHNGNL@Error?6?$AA@ DB 'Error', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_02HAOIJKIC@?$CFc?$AA@
CONST	SEGMENT
??_C@_02HAOIJKIC@?$CFc?$AA@ DB '%c', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CC@GBBHNIAA@This?5test?5will?5take?5some?5time?4?4?4@
CONST	SEGMENT
??_C@_0CC@GBBHNIAA@This?5test?5will?5take?5some?5time?4?4?4@ DB 'This tes'
	DB	't will take some time....', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@NEJIHGHH@ecb?5cast5?5ok?6?$AA@
CONST	SEGMENT
??_C@_0O@NEJIHGHH@ecb?5cast5?5ok?6?$AA@ DB 'ecb cast5 ok', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CK@LCEDIHFM@ecb?5cast?5error?5decrypting?5for?5ke@
CONST	SEGMENT
??_C@_0CK@LCEDIHFM@ecb?5cast?5error?5decrypting?5for?5ke@ DB 'ecb cast er'
	DB	'ror decrypting for keysize %d', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09PBKDEKON@expected?3?$AA@
CONST	SEGMENT
??_C@_09PBKDEKON@expected?3?$AA@ DB 'expected:', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01EEMJAFIK@?6?$AA@
CONST	SEGMENT
??_C@_01EEMJAFIK@?6?$AA@ DB 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
CONST	SEGMENT
??_C@_05BFHEBJNP@?$CF02X?5?$AA@ DB '%02X ', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@
CONST	SEGMENT
??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@ DB 'got     :', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CK@HLLBFMFJ@ecb?5cast?5error?5encrypting?5for?5ke@
CONST	SEGMENT
??_C@_0CK@HLLBFMFJ@ecb?5cast?5error?5encrypting?5for?5ke@ DB 'ecb cast er'
	DB	'ror encrypting for keysize %d', 0aH, 00H	; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _main
_TEXT	SEGMENT
_key$ = -300						; size = 132
_key_b$ = -168						; size = 132
_out_a$1 = -36						; size = 16
_out_b$2 = -20						; size = 16
__$ArrayPad$ = -4					; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\cast\casttest.c
; Line 144
	mov	eax, 300				; 0000012cH
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+300], eax
	push	ebx
	push	ebp
	push	esi
	push	edi
; Line 149
	xor	ebp, ebp
	mov	ebx, OFFSET _k_len
	mov	edi, OFFSET _c
	npad	8
$LL4@main:
; Line 153
	push	OFFSET _k
	push	DWORD PTR [ebx]
	lea	eax, DWORD PTR _key$[esp+324]
	push	eax
	call	_CAST_set_key
; Line 155
	push	1
	lea	eax, DWORD PTR _key$[esp+332]
	push	eax
	push	OFFSET _out
	push	OFFSET _in
	call	_CAST_ecb_encrypt
; Line 156
	mov	eax, DWORD PTR _out
	add	esp, 28					; 0000001cH
	cmp	eax, DWORD PTR [edi]
	jne	SHORT $LN80@main
	mov	eax, DWORD PTR _out+4
	cmp	eax, DWORD PTR [edi+4]
	je	$LN32@main
$LN80@main:
; Line 157
	mov	eax, DWORD PTR [ebx]
	shl	eax, 3
	push	eax
	push	OFFSET ??_C@_0CK@HLLBFMFJ@ecb?5cast?5error?5encrypting?5for?5ke@
	call	_printf
; Line 159
	push	OFFSET ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@
	call	_printf
	add	esp, 12					; 0000000cH
; Line 160
	xor	esi, esi
$LL7@main:
; Line 161
	movzx	eax, BYTE PTR _out[esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 8
	jl	SHORT $LL7@main
; Line 162
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	call	_printf
; Line 163
	push	OFFSET ??_C@_09PBKDEKON@expected?3?$AA@
	call	_printf
	add	esp, 8
; Line 164
	xor	esi, esi
$LL10@main:
; Line 165
	movzx	eax, BYTE PTR [edi+esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 8
	jl	SHORT $LL10@main
; Line 167
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	mov	ebp, 20					; 00000014H
	call	_printf
	add	esp, 4
$LN32@main:
; Line 170
	push	0
	lea	eax, DWORD PTR _key$[esp+320]
	push	eax
	push	OFFSET _out
	push	OFFSET _out
	call	_CAST_ecb_encrypt
; Line 171
	mov	eax, DWORD PTR _out
	add	esp, 16					; 00000010H
	cmp	eax, DWORD PTR _in
	jne	SHORT $LN81@main
	mov	eax, DWORD PTR _out+4
	cmp	eax, DWORD PTR _in+4
	je	$LN2@main
$LN81@main:
; Line 172
	mov	eax, DWORD PTR [ebx]
	shl	eax, 3
	push	eax
	push	OFFSET ??_C@_0CK@LCEDIHFM@ecb?5cast?5error?5decrypting?5for?5ke@
	call	_printf
; Line 174
	push	OFFSET ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@
	call	_printf
	add	esp, 12					; 0000000cH
; Line 175
	xor	esi, esi
	npad	12
$LL13@main:
; Line 176
	movzx	eax, BYTE PTR _out[esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 8
	jl	SHORT $LL13@main
; Line 177
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	call	_printf
; Line 178
	push	OFFSET ??_C@_09PBKDEKON@expected?3?$AA@
	call	_printf
	add	esp, 8
; Line 179
	xor	esi, esi
	npad	12
$LL16@main:
; Line 180
	movzx	eax, BYTE PTR _in[esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 8
	jl	SHORT $LL16@main
; Line 181
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	call	_printf
	add	esp, 4
; Line 182
	mov	ebp, 3
$LN2@main:
; Line 152
	add	edi, 8
	add	ebx, 4
	cmp	edi, OFFSET _c+24
	jl	$LL4@main
; Line 185
	test	ebp, ebp
	jne	SHORT $LN34@main
; Line 186
	push	OFFSET ??_C@_0O@NEJIHGHH@ecb?5cast5?5ok?6?$AA@
	call	_printf
	add	esp, 4
$LN34@main:
; Line 193
	push	OFFSET ??_C@_0CC@GBBHNIAA@This?5test?5will?5take?5some?5time?4?4?4@
	call	_printf
; Line 194
	mov	ebx, DWORD PTR __imp____acrt_iob_func
	push	1
	call	ebx
	push	eax
	call	DWORD PTR __imp__fflush
; Line 195
	movups	xmm0, XMMWORD PTR _in_a
	add	esp, 12					; 0000000cH
; Line 197
	mov	edi, 1
; Line 199
	xor	esi, esi
	movups	XMMWORD PTR _out_a$1[esp+316], xmm0
	movups	xmm0, XMMWORD PTR _in_b
	movups	XMMWORD PTR _out_b$2[esp+316], xmm0
	npad	13
$LL19@main:
; Line 200
	lea	eax, DWORD PTR _out_b$2[esp+316]
	push	eax
	lea	eax, DWORD PTR _key_b$[esp+320]
	push	16					; 00000010H
	push	eax
	call	_CAST_set_key
; Line 201
	push	1
	lea	eax, DWORD PTR _key_b$[esp+332]
	push	eax
	lea	eax, DWORD PTR _out_a$1[esp+336]
	push	eax
	push	eax
	call	_CAST_ecb_encrypt
; Line 202
	push	1
	lea	eax, DWORD PTR _key_b$[esp+348]
	push	eax
	lea	eax, DWORD PTR _out_a$1[esp+360]
	push	eax
	push	eax
	call	_CAST_ecb_encrypt
; Line 203
	lea	eax, DWORD PTR _out_a$1[esp+360]
	push	eax
	lea	eax, DWORD PTR _key$[esp+364]
	push	16					; 00000010H
	push	eax
	call	_CAST_set_key
; Line 204
	push	1
	lea	eax, DWORD PTR _key$[esp+376]
	push	eax
	lea	eax, DWORD PTR _out_b$2[esp+380]
	push	eax
	push	eax
	call	_CAST_ecb_encrypt
	add	esp, 72					; 00000048H
; Line 205
	lea	eax, DWORD PTR _key$[esp+316]
	push	1
	push	eax
	lea	eax, DWORD PTR _out_b$2[esp+332]
	push	eax
	push	eax
	call	_CAST_ecb_encrypt
	add	esp, 16					; 00000010H
; Line 206
	cmp	si, 65535				; 0000ffffH
	jne	SHORT $LN17@main
; Line 207
	mov	eax, DWORD PTR ?hex@?L@??main@@9@9
	mov	ecx, edi
	and	ecx, 15					; 0000000fH
	movsx	eax, BYTE PTR [ecx+eax]
	push	eax
	push	OFFSET ??_C@_02HAOIJKIC@?$CFc?$AA@
	call	_printf
; Line 208
	push	1
	call	ebx
	push	eax
	call	DWORD PTR __imp__fflush
	add	esp, 16					; 00000010H
; Line 209
	inc	edi
$LN17@main:
; Line 199
	inc	esi
	cmp	esi, 1000000				; 000f4240H
	jl	$LL19@main
; Line 213
	lea	ecx, DWORD PTR _out_a$1[esp+316]
	mov	edx, OFFSET _c_a
	mov	esi, 12					; 0000000cH
$LL83@main:
	mov	eax, DWORD PTR [ecx]
	cmp	eax, DWORD PTR [edx]
	jne	SHORT $LN38@main
	add	ecx, 4
	add	edx, 4
	sub	esi, 4
	jae	SHORT $LL83@main
	lea	ecx, DWORD PTR _out_b$2[esp+316]
	mov	edx, OFFSET _c_b
	mov	esi, 12					; 0000000cH
	npad	6
$LL85@main:
	mov	eax, DWORD PTR [ecx]
	cmp	eax, DWORD PTR [edx]
	jne	SHORT $LN38@main
	add	ecx, 4
	add	edx, 4
	sub	esi, 4
	jae	SHORT $LL85@main
; Line 234
	push	OFFSET ??_C@_04CFDEAMPI@?5ok?6?$AA@
	jmp	$LN87@main
$LN38@main:
; Line 215
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	call	_printf
; Line 216
	push	OFFSET ??_C@_06HPIHNGNL@Error?6?$AA@
	call	_printf
; Line 218
	push	OFFSET ??_C@_07MODPDANM@A?5out?5?$DN?$AA@
	call	_printf
	add	esp, 12					; 0000000cH
; Line 219
	xor	esi, esi
	npad	2
$LL22@main:
; Line 220
	movzx	eax, BYTE PTR _out_a$1[esp+esi+316]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 16					; 00000010H
	jl	SHORT $LL22@main
; Line 221
	push	OFFSET ??_C@_08CDPJFNGG@?6actual?$DN?$AA@
	call	_printf
	add	esp, 4
; Line 222
	xor	esi, esi
	npad	5
$LL25@main:
; Line 223
	movzx	eax, BYTE PTR _c_a[esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 16					; 00000010H
	jl	SHORT $LL25@main
; Line 224
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
	call	_printf
; Line 226
	push	OFFSET ??_C@_07EALADHDP@B?5out?5?$DN?$AA@
	call	_printf
	add	esp, 8
; Line 227
	xor	esi, esi
	npad	12
$LL28@main:
; Line 228
	movzx	eax, BYTE PTR _out_b$2[esp+esi+316]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 16					; 00000010H
	jl	SHORT $LL28@main
; Line 229
	push	OFFSET ??_C@_08CDPJFNGG@?6actual?$DN?$AA@
	call	_printf
	add	esp, 4
; Line 230
	xor	esi, esi
	npad	5
$LL31@main:
; Line 231
	movzx	eax, BYTE PTR _c_b[esi]
	push	eax
	push	OFFSET ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
	call	_printf
	inc	esi
	add	esp, 8
	cmp	esi, 16					; 00000010H
	jl	SHORT $LL31@main
; Line 232
	push	OFFSET ??_C@_01EEMJAFIK@?6?$AA@
$LN87@main:
	call	_printf
	add	esp, 4
; Line 238
	push	ebp
	call	DWORD PTR __imp__exit
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
$LN88@main:
$LN86@main:
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _printf
_TEXT	SEGMENT
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\stdio.h
; Line 950
	push	esi
; Line 954
	mov	esi, DWORD PTR __Format$[esp]
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
; Line 639
	lea	ecx, DWORD PTR __Format$[esp+4]
	push	ecx
	push	0
	push	esi
	push	eax
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H
	pop	esi
; Line 957
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\stdio.h
; Line 639
	push	DWORD PTR __ArgList$[esp-4]
	push	DWORD PTR __Locale$[esp]
	push	DWORD PTR __Format$[esp+4]
	push	DWORD PTR __Stream$[esp+8]
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 640
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\corecrt_stdio_config.h
; Line 82
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 83
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END