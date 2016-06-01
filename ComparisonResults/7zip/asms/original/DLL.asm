; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\CPP\Windows\DLL.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG67146 DB	'.', 00H, '\', 00H, 00H, 00H
CONST	ENDS
PUBLIC	?Free@CLibrary@NDLL@NWindows@@QAE_NXZ		; NWindows::NDLL::CLibrary::Free
EXTRN	__imp__FreeLibrary@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\cpp\windows\dll.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Free@CLibrary@NDLL@NWindows@@QAE_NXZ PROC		; NWindows::NDLL::CLibrary::Free
; _this$ = ecx
; Line 17
	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 18
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN2@Free
; Line 19
	mov	al, 1
	jmp	SHORT $LN3@Free
$LN2@Free:
; Line 20
	mov	esi, esp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp__FreeLibrary@4
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jne	SHORT $LN1@Free
; Line 21
	xor	al, al
	jmp	SHORT $LN3@Free
$LN1@Free:
; Line 22
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0
; Line 23
	mov	al, 1
$LN3@Free:
; Line 24
	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Free@CLibrary@NDLL@NWindows@@QAE_NXZ ENDP		; NWindows::NDLL::CLibrary::Free
_TEXT	ENDS
PUBLIC	??1AString@@QAE@XZ				; AString::~AString
PUBLIC	??BAString@@QBEPBDXZ				; AString::operator char const *
PUBLIC	?LoadEx@CLibrary@NDLL@NWindows@@QAE_NPB_WK@Z	; NWindows::NDLL::CLibrary::LoadEx
EXTRN	__imp__LoadLibraryExW@12:PROC
EXTRN	__imp__LoadLibraryExA@12:PROC
EXTRN	?fs2fas@@YG?AVAString@@PB_W@Z:PROC		; fs2fas
EXTRN	?g_IsNT@@3_NA:BYTE				; g_IsNT
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
$T67183 = -16						; size = 12
_this$ = -4						; size = 4
_path$ = 8						; size = 4
_flags$ = 12						; size = 4
?LoadEx@CLibrary@NDLL@NWindows@@QAE_NPB_WK@Z PROC	; NWindows::NDLL::CLibrary::LoadEx
; _this$ = ecx
; Line 27
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 28
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Free@CLibrary@NDLL@NWindows@@QAE_NXZ	; NWindows::NDLL::CLibrary::Free
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@LoadEx
; Line 29
	xor	al, al
	jmp	SHORT $LN4@LoadEx
$LN3@LoadEx:
; Line 31
	movzx	ecx, BYTE PTR ?g_IsNT@@3_NA		; g_IsNT
	test	ecx, ecx
	jne	SHORT $LN2@LoadEx
; Line 33
	mov	esi, esp
	mov	edx, DWORD PTR _flags$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _path$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T67183[ebp]
	push	ecx
	call	?fs2fas@@YG?AVAString@@PB_W@Z		; fs2fas
	mov	ecx, eax
	call	??BAString@@QBEPBDXZ			; AString::operator char const *
	push	eax
	call	DWORD PTR __imp__LoadLibraryExA@12
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], eax
	lea	ecx, DWORD PTR $T67183[ebp]
	call	??1AString@@QAE@XZ			; AString::~AString
; Line 35
	jmp	SHORT $LN1@LoadEx
$LN2@LoadEx:
; Line 38
	mov	esi, esp
	mov	eax, DWORD PTR _flags$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _path$[ebp]
	push	ecx
	call	DWORD PTR __imp__LoadLibraryExW@12
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], eax
$LN1@LoadEx:
; Line 40
	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax], 0
	setne	cl
	mov	al, cl
$LN4@LoadEx:
; Line 41
	pop	esi
	add	esp, 16					; 00000010H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?LoadEx@CLibrary@NDLL@NWindows@@QAE_NPB_WK@Z ENDP	; NWindows::NDLL::CLibrary::LoadEx
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
; Function compile flags: /Odtp /RTCsu
;	COMDAT ??1AString@@QAE@XZ
_TEXT	SEGMENT
$T67185 = -8						; size = 4
_this$ = -4						; size = 4
??1AString@@QAE@XZ PROC					; AString::~AString, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\common\mystring.h
; Line 232
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T67185[ebp], ecx
	mov	edx, DWORD PTR $T67185[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1AString@@QAE@XZ ENDP					; AString::~AString
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ??BAString@@QBEPBDXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
??BAString@@QBEPBDXZ PROC				; AString::operator char const *, COMDAT
; _this$ = ecx
; Line 238
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	mov	esp, ebp
	pop	ebp
	ret	0
??BAString@@QBEPBDXZ ENDP				; AString::operator char const *
_TEXT	ENDS
PUBLIC	?Load@CLibrary@NDLL@NWindows@@QAE_NPB_W@Z	; NWindows::NDLL::CLibrary::Load
EXTRN	__imp__LoadLibraryW@4:PROC
EXTRN	__imp__LoadLibraryA@4:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
$T67190 = -16						; size = 12
_this$ = -4						; size = 4
_path$ = 8						; size = 4
?Load@CLibrary@NDLL@NWindows@@QAE_NPB_W@Z PROC		; NWindows::NDLL::CLibrary::Load
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\windows\dll.cpp
; Line 44
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 45
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Free@CLibrary@NDLL@NWindows@@QAE_NXZ	; NWindows::NDLL::CLibrary::Free
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@Load
; Line 46
	xor	al, al
	jmp	SHORT $LN4@Load
$LN3@Load:
; Line 48
	movzx	ecx, BYTE PTR ?g_IsNT@@3_NA		; g_IsNT
	test	ecx, ecx
	jne	SHORT $LN2@Load
; Line 50
	mov	edx, DWORD PTR _path$[ebp]
	push	edx
	lea	eax, DWORD PTR $T67190[ebp]
	push	eax
	call	?fs2fas@@YG?AVAString@@PB_W@Z		; fs2fas
	mov	ecx, eax
	call	??BAString@@QBEPBDXZ			; AString::operator char const *
	mov	esi, esp
	push	eax
	call	DWORD PTR __imp__LoadLibraryA@4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], eax
	lea	ecx, DWORD PTR $T67190[ebp]
	call	??1AString@@QAE@XZ			; AString::~AString
; Line 52
	jmp	SHORT $LN1@Load
$LN2@Load:
; Line 55
	mov	esi, esp
	mov	edx, DWORD PTR _path$[ebp]
	push	edx
	call	DWORD PTR __imp__LoadLibraryW@4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], eax
$LN1@Load:
; Line 57
	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	cmp	DWORD PTR [edx], 0
	setne	al
$LN4@Load:
; Line 58
	pop	esi
	add	esp, 16					; 00000010H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?Load@CLibrary@NDLL@NWindows@@QAE_NPB_W@Z ENDP		; NWindows::NDLL::CLibrary::Load
_TEXT	ENDS
PUBLIC	??1UString@@QAE@XZ				; UString::~UString
PUBLIC	?Empty@UString@@QAEXXZ				; UString::Empty
PUBLIC	__$ArrayPad$
PUBLIC	?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z ; NWindows::NDLL::MyGetModuleFileName
EXTRN	??4UString@@QAEAAV0@PB_W@Z:PROC			; UString::operator=
EXTRN	__imp__GetModuleFileNameW@12:PROC
EXTRN	??4UString@@QAEAAV0@ABV0@@Z:PROC		; UString::operator=
EXTRN	?fas2fs@@YG?AVUString@@ABVAString@@@Z:PROC	; fas2fs
EXTRN	??0AString@@QAE@PBD@Z:PROC			; AString::AString
EXTRN	__imp__GetModuleFileNameA@12:PROC
EXTRN	?g_hInstance@@3PAUHINSTANCE__@@A:DWORD		; g_hInstance
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
xdata$x	SEGMENT
__unwindtable$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z$0
	DD	00H
	DD	FLAT:__unwindfunclet$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z$1
__ehfuncinfo$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu
xdata$x	ENDS
_TEXT	SEGMENT
tv94 = -864						; size = 4
tv77 = -860						; size = 4
$T67194 = -856						; size = 12
$T67193 = -844						; size = 12
_size$67137 = -832					; size = 4
_s$67136 = -824						; size = 524
_size$67131 = -296					; size = 4
_s$67130 = -288						; size = 262
_hModule$ = -20						; size = 4
__$ArrayPad$ = -16					; size = 4
__$EHRec$ = -12						; size = 12
_path$ = 8						; size = 4
?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z PROC ; NWindows::NDLL::MyGetModuleFileName
; Line 61
	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 852				; 00000354H
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-864]
	mov	ecx, 213				; 000000d5H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
; Line 62
	mov	eax, DWORD PTR ?g_hInstance@@3PAUHINSTANCE__@@A ; g_hInstance
	mov	DWORD PTR _hModule$[ebp], eax
; Line 63
	mov	ecx, DWORD PTR _path$[ebp]
	call	?Empty@UString@@QAEXXZ			; UString::Empty
; Line 65
	movzx	ecx, BYTE PTR ?g_IsNT@@3_NA		; g_IsNT
	test	ecx, ecx
	jne	$LN4@MyGetModul
; Line 68
	mov	BYTE PTR _s$67130[ebp], 0
; Line 69
	mov	esi, esp
	push	261					; 00000105H
	lea	edx, DWORD PTR _s$67130[ebp]
	push	edx
	mov	eax, DWORD PTR _hModule$[ebp]
	push	eax
	call	DWORD PTR __imp__GetModuleFileNameA@12
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _size$67131[ebp], eax
; Line 70
	cmp	DWORD PTR _size$67131[ebp], 260		; 00000104H
	ja	SHORT $LN3@MyGetModul
	cmp	DWORD PTR _size$67131[ebp], 0
	je	SHORT $LN3@MyGetModul
; Line 72
	lea	ecx, DWORD PTR _s$67130[ebp]
	push	ecx
	lea	ecx, DWORD PTR $T67193[ebp]
	call	??0AString@@QAE@PBD@Z			; AString::AString
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	lea	edx, DWORD PTR $T67193[ebp]
	push	edx
	lea	eax, DWORD PTR $T67194[ebp]
	push	eax
	call	?fas2fs@@YG?AVUString@@ABVAString@@@Z	; fas2fs
	mov	DWORD PTR tv77[ebp], eax
	mov	ecx, DWORD PTR tv77[ebp]
	mov	DWORD PTR tv94[ebp], ecx
	mov	BYTE PTR __$EHRec$[ebp+8], 1
	mov	edx, DWORD PTR tv94[ebp]
	push	edx
	mov	ecx, DWORD PTR _path$[ebp]
	call	??4UString@@QAEAAV0@ABV0@@Z		; UString::operator=
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR $T67194[ebp]
	call	??1UString@@QAE@XZ			; UString::~UString
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR $T67193[ebp]
	call	??1AString@@QAE@XZ			; AString::~AString
; Line 73
	mov	al, 1
	jmp	SHORT $LN5@MyGetModul
$LN3@MyGetModul:
; Line 76
	jmp	SHORT $LN2@MyGetModul
$LN4@MyGetModul:
; Line 80
	xor	eax, eax
	mov	WORD PTR _s$67136[ebp], ax
; Line 81
	mov	esi, esp
	push	261					; 00000105H
	lea	ecx, DWORD PTR _s$67136[ebp]
	push	ecx
	mov	edx, DWORD PTR _hModule$[ebp]
	push	edx
	call	DWORD PTR __imp__GetModuleFileNameW@12
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _size$67137[ebp], eax
; Line 82
	cmp	DWORD PTR _size$67137[ebp], 260		; 00000104H
	ja	SHORT $LN2@MyGetModul
	cmp	DWORD PTR _size$67137[ebp], 0
	je	SHORT $LN2@MyGetModul
; Line 84
	lea	eax, DWORD PTR _s$67136[ebp]
	push	eax
	mov	ecx, DWORD PTR _path$[ebp]
	call	??4UString@@QAEAAV0@PB_W@Z		; UString::operator=
; Line 85
	mov	al, 1
	jmp	SHORT $LN5@MyGetModul
$LN2@MyGetModul:
; Line 88
	xor	al, al
$LN5@MyGetModul:
; Line 89
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN13@MyGetModul
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 864				; 00000360H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
	npad	2
$LN13@MyGetModul:
	DD	2
	DD	$LN12@MyGetModul
$LN12@MyGetModul:
	DD	-288					; fffffee0H
	DD	262					; 00000106H
	DD	$LN9@MyGetModul
	DD	-824					; fffffcc8H
	DD	524					; 0000020cH
	DD	$LN10@MyGetModul
$LN10@MyGetModul:
	DB	115					; 00000073H
	DB	0
$LN9@MyGetModul:
	DB	115					; 00000073H
	DB	0
_TEXT	ENDS
text$x	SEGMENT
__unwindfunclet$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z$0:
	lea	ecx, DWORD PTR $T67193[ebp]
	jmp	??1AString@@QAE@XZ			; AString::~AString
__unwindfunclet$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z$1:
	lea	ecx, DWORD PTR $T67194[ebp]
	jmp	??1UString@@QAE@XZ			; UString::~UString
__ehhandler$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-864]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	ecx, DWORD PTR [edx-4]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z ENDP ; NWindows::NDLL::MyGetModuleFileName
; Function compile flags: /Odtp /RTCsu
;	COMDAT ??1UString@@QAE@XZ
_TEXT	SEGMENT
$T67212 = -8						; size = 4
_this$ = -4						; size = 4
??1UString@@QAE@XZ PROC					; UString::~UString, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\common\mystring.h
; Line 470
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T67212[ebp], ecx
	mov	edx, DWORD PTR $T67212[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1UString@@QAE@XZ ENDP					; UString::~UString
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?Empty@UString@@QAEXXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Empty@UString@@QAEXXZ PROC				; UString::Empty, COMDAT
; _this$ = ecx
; Line 474
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	xor	eax, eax
	mov	WORD PTR [edx], ax
	mov	esp, ebp
	pop	ebp
	ret	0
?Empty@UString@@QAEXXZ ENDP				; UString::Empty
_TEXT	ENDS
PUBLIC	?DeleteFrom@UString@@QAEXI@Z			; UString::DeleteFrom
PUBLIC	?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ ; NWindows::NDLL::GetModuleDirPrefix
EXTRN	??0UString@@QAE@PB_W@Z:PROC			; UString::UString
EXTRN	??0UString@@QAE@ABV0@@Z:PROC			; UString::UString
EXTRN	?ReverseFind_PathSepar@UString@@QBEHXZ:PROC	; UString::ReverseFind_PathSepar
EXTRN	??0UString@@QAE@XZ:PROC				; UString::UString
xdata$x	SEGMENT
__unwindtable$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ$1
	DD	00H
	DD	FLAT:__unwindfunclet$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ$0
__ehfuncinfo$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu
xdata$x	ENDS
_TEXT	SEGMENT
$T67219 = -40						; size = 4
_pos$67144 = -36					; size = 4
_s$ = -28						; size = 12
__$EHRec$ = -12						; size = 12
___$ReturnUdt$ = 8					; size = 4
?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ PROC ; NWindows::NDLL::GetModuleDirPrefix
; File c:\workspace\7z1505-src\cpp\windows\dll.cpp
; Line 94
	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 28					; 0000001cH
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], eax
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR $T67219[ebp], 0
; Line 95
	lea	ecx, DWORD PTR _s$[ebp]
	call	??0UString@@QAE@XZ			; UString::UString
	mov	DWORD PTR __$EHRec$[ebp+8], 1
; Line 96
	lea	eax, DWORD PTR _s$[ebp]
	push	eax
	call	?MyGetModuleFileName@NDLL@NWindows@@YG_NAAVUString@@@Z ; NWindows::NDLL::MyGetModuleFileName
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN2@GetModuleD
; Line 98
	lea	ecx, DWORD PTR _s$[ebp]
	call	?ReverseFind_PathSepar@UString@@QBEHXZ	; UString::ReverseFind_PathSepar
	mov	DWORD PTR _pos$67144[ebp], eax
; Line 99
	cmp	DWORD PTR _pos$67144[ebp], 0
	jl	SHORT $LN2@GetModuleD
; Line 101
	mov	edx, DWORD PTR _pos$67144[ebp]
	add	edx, 1
	push	edx
	lea	ecx, DWORD PTR _s$[ebp]
	call	?DeleteFrom@UString@@QAEXI@Z		; UString::DeleteFrom
; Line 102
	lea	eax, DWORD PTR _s$[ebp]
	push	eax
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	call	??0UString@@QAE@ABV0@@Z			; UString::UString
	mov	ecx, DWORD PTR $T67219[ebp]
	or	ecx, 1
	mov	DWORD PTR $T67219[ebp], ecx
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR _s$[ebp]
	call	??1UString@@QAE@XZ			; UString::~UString
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	jmp	SHORT $LN3@GetModuleD
$LN2@GetModuleD:
; Line 105
	push	OFFSET $SG67146
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	call	??0UString@@QAE@PB_W@Z			; UString::UString
	mov	edx, DWORD PTR $T67219[ebp]
	or	edx, 1
	mov	DWORD PTR $T67219[ebp], edx
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR _s$[ebp]
	call	??1UString@@QAE@XZ			; UString::~UString
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
$LN3@GetModuleD:
; Line 106
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@GetModuleD
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	add	esp, 40					; 00000028H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
$LN11@GetModuleD:
	DD	1
	DD	$LN10@GetModuleD
$LN10@GetModuleD:
	DD	-28					; ffffffe4H
	DD	12					; 0000000cH
	DD	$LN8@GetModuleD
$LN8@GetModuleD:
	DB	115					; 00000073H
	DB	0
_TEXT	ENDS
text$x	SEGMENT
__unwindfunclet$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ$0:
	lea	ecx, DWORD PTR _s$[ebp]
	jmp	??1UString@@QAE@XZ			; UString::~UString
__unwindfunclet$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ$1:
	mov	eax, DWORD PTR $T67219[ebp]
	and	eax, 1
	je	$LN7@GetModuleD
	and	DWORD PTR $T67219[ebp], -2		; fffffffeH
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	jmp	??1UString@@QAE@XZ			; UString::~UString
$LN7@GetModuleD:
	ret	0
__ehhandler$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-32]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
?GetModuleDirPrefix@NDLL@NWindows@@YG?AVUString@@XZ ENDP ; NWindows::NDLL::GetModuleDirPrefix
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?DeleteFrom@UString@@QAEXI@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_index$ = 8						; size = 4
?DeleteFrom@UString@@QAEXI@Z PROC			; UString::DeleteFrom, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\common\mystring.h
; Line 604
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 605
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _index$[ebp]
	cmp	ecx, DWORD PTR [eax+4]
	jae	SHORT $LN2@DeleteFrom
; Line 607
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _index$[ebp]
	mov	DWORD PTR [edx+4], eax
; Line 608
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	xor	eax, eax
	mov	ecx, DWORD PTR _index$[ebp]
	mov	WORD PTR [edx+ecx*2], ax
$LN2@DeleteFrom:
; Line 610
	mov	esp, ebp
	pop	ebp
	ret	4
?DeleteFrom@UString@@QAEXI@Z ENDP			; UString::DeleteFrom
_TEXT	ENDS
END