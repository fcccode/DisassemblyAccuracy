; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	C:\workspace\notepad-plus-plus-6.7.9.2\PowerEditor\src\WinControls\Grid\BabyGridWrapper.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?_isRegistered@BabyGridWrapper@@0_NA		; BabyGridWrapper::_isRegistered
PUBLIC	?babyGridClassName@@3PB_WB			; babyGridClassName
_BSS	SEGMENT
?_isRegistered@BabyGridWrapper@@0_NA DB 01H DUP (?)	; BabyGridWrapper::_isRegistered
_BSS	ENDS
CONST	SEGMENT
$SG63702 DB	'B', 00H, 'A', 00H, 'B', 00H, 'Y', 00H, 'G', 00H, 'R', 00H
	DB	'I', 00H, 'D', 00H, 00H, 00H
	ORG $+2
$SG63714 DB	00H, 00H
CONST	ENDS
_DATA	SEGMENT
?babyGridClassName@@3PB_WB DD FLAT:$SG63702		; babyGridClassName
_DATA	ENDS
PUBLIC	?init@Window@@UAEXPAUHINSTANCE__@@PAUHWND__@@@Z	; Window::init
PUBLIC	?init@BabyGridWrapper@@UAEXPAUHINSTANCE__@@PAUHWND__@@H@Z ; BabyGridWrapper::init
EXTRN	__imp__CreateWindowExW@48:PROC
EXTRN	?RegisterGridClass@@YAGPAUHINSTANCE__@@@Z:PROC	; RegisterGridClass
; Function compile flags: /Odtp
_TEXT	SEGMENT
_this$ = -4						; size = 4
_hInst$ = 8						; size = 4
_parent$ = 12						; size = 4
_id$ = 16						; size = 4
?init@BabyGridWrapper@@UAEXPAUHINSTANCE__@@PAUHWND__@@H@Z PROC ; BabyGridWrapper::init
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\wincontrols\grid\babygridwrapper.cpp
; Line 35
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
; Line 36
	mov	eax, DWORD PTR _parent$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hInst$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?init@Window@@UAEXPAUHINSTANCE__@@PAUHWND__@@@Z ; Window::init
; Line 38
	movzx	edx, BYTE PTR ?_isRegistered@BabyGridWrapper@@0_NA ; BabyGridWrapper::_isRegistered
	test	edx, edx
	jne	SHORT $LN1@init
; Line 39
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	?RegisterGridClass@@YAGPAUHINSTANCE__@@@Z ; RegisterGridClass
	add	esp, 4
$LN1@init:
; Line 49
	push	0
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	mov	ecx, DWORD PTR _id$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	push	0
	push	-2147483648				; 80000000H
	push	0
	push	-2147483648				; 80000000H
	push	1342177280				; 50000000H
	push	OFFSET $SG63714
	mov	ecx, DWORD PTR ?babyGridClassName@@3PB_WB ; babyGridClassName
	push	ecx
	push	512					; 00000200H
	call	DWORD PTR __imp__CreateWindowExW@48
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+12], eax
; Line 50
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?init@BabyGridWrapper@@UAEXPAUHINSTANCE__@@PAUHWND__@@H@Z ENDP ; BabyGridWrapper::init
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?init@Window@@UAEXPAUHINSTANCE__@@PAUHWND__@@@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_hInst$ = 8						; size = 4
_parent$ = 12						; size = 4
?init@Window@@UAEXPAUHINSTANCE__@@PAUHWND__@@@Z PROC	; Window::init, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\wincontrols\window.h
; Line 41
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
; Line 42
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _hInst$[ebp]
	mov	DWORD PTR [eax+4], ecx
; Line 43
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _parent$[ebp]
	mov	DWORD PTR [edx+8], eax
; Line 44
	mov	esp, ebp
	pop	ebp
	ret	8
?init@Window@@UAEXPAUHINSTANCE__@@PAUHWND__@@@Z ENDP	; Window::init
_TEXT	ENDS
END
