; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\common\unifunct.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_BSS	SEGMENT
?classID@?1??getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ@4DA DB 01H DUP (?) ; `icu_56::UnicodeFunctor::getStaticClassID'::`2'::classID
_BSS	ENDS
PUBLIC	??2@YAPAXI@Z					; operator new
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\common\unicode\utypes.h
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ??2@YAPAXI@Z
_TEXT	SEGMENT
_q$ = -8						; size = 4
___formal$ = 8						; size = 4
??2@YAPAXI@Z PROC					; operator new, COMDAT
; Line 411
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 412
	mov	DWORD PTR _q$[ebp], 0
; Line 413
	mov	eax, DWORD PTR _q$[ebp]
	mov	BYTE PTR [eax], 5
; Line 414
	mov	eax, DWORD PTR _q$[ebp]
; Line 415
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??2@YAPAXI@Z ENDP					; operator new
_TEXT	ENDS
PUBLIC	??3@YAXPAX@Z					; operator delete
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??3@YAXPAX@Z
_TEXT	SEGMENT
_q$ = -8						; size = 4
___formal$ = 8						; size = 4
??3@YAXPAX@Z PROC					; operator delete, COMDAT
; Line 439
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 440
	mov	DWORD PTR _q$[ebp], 0
; Line 441
	mov	eax, DWORD PTR _q$[ebp]
	mov	BYTE PTR [eax], 5
; Line 442
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??3@YAXPAX@Z ENDP					; operator delete
_TEXT	ENDS
PUBLIC	??2UMemory@icu_56@@SAPAXIPAX@Z			; icu_56::UMemory::operator new
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??2UMemory@icu_56@@SAPAXIPAX@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
_ptr$ = 12						; size = 4
??2UMemory@icu_56@@SAPAXIPAX@Z PROC			; icu_56::UMemory::operator new, COMDAT
; File d:\mozilla\intl\icu\source\common\unicode\uobject.h
; Line 161
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR _ptr$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??2UMemory@icu_56@@SAPAXIPAX@Z ENDP			; icu_56::UMemory::operator new
_TEXT	ENDS
PUBLIC	??3UMemory@icu_56@@SAXPAX0@Z			; icu_56::UMemory::operator delete
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??3UMemory@icu_56@@SAXPAX0@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
___formal$ = 12						; size = 4
??3UMemory@icu_56@@SAXPAX0@Z PROC			; icu_56::UMemory::operator delete, COMDAT
; Line 168
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??3UMemory@icu_56@@SAXPAX0@Z ENDP			; icu_56::UMemory::operator delete
_TEXT	ENDS
PUBLIC	??4UMemory@icu_56@@QAEAAV01@ABV01@@Z		; icu_56::UMemory::operator=
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??4UMemory@icu_56@@QAEAAV01@ABV01@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___that$ = 8						; size = 4
??4UMemory@icu_56@@QAEAAV01@ABV01@@Z PROC		; icu_56::UMemory::operator=, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??4UMemory@icu_56@@QAEAAV01@ABV01@@Z ENDP		; icu_56::UMemory::operator=
_TEXT	ENDS
PUBLIC	??_7UObject@icu_56@@6B@				; icu_56::UObject::`vftable'
PUBLIC	??0UObject@icu_56@@QAE@XZ			; icu_56::UObject::UObject
PUBLIC	??_R4UObject@icu_56@@6B@			; icu_56::UObject::`RTTI Complete Object Locator'
PUBLIC	??_R0?AVUObject@icu_56@@@8			; icu_56::UObject `RTTI Type Descriptor'
PUBLIC	??_R3UObject@icu_56@@8				; icu_56::UObject::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R2UObject@icu_56@@8				; icu_56::UObject::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@UObject@icu_56@@8			; icu_56::UObject::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_R13?0A@EA@UMemory@icu_56@@8			; icu_56::UMemory::`RTTI Base Class Descriptor at (4,-1,0,64)'
PUBLIC	??_R0?AVUMemory@icu_56@@@8			; icu_56::UMemory `RTTI Type Descriptor'
PUBLIC	??_R3UMemory@icu_56@@8				; icu_56::UMemory::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R2UMemory@icu_56@@8				; icu_56::UMemory::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@UMemory@icu_56@@8			; icu_56::UMemory::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_EUObject@icu_56@@UAEPAXI@Z			; icu_56::UObject::`vector deleting destructor'
EXTRN	??_7type_info@@6B@:QWORD			; type_info::`vftable'
EXTRN	?getDynamicClassID@UObject@icu_56@@UBEPAXXZ:PROC ; icu_56::UObject::getDynamicClassID
;	COMDAT ??_R1A@?0A@EA@UMemory@icu_56@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@UMemory@icu_56@@8 DD FLAT:??_R0?AVUMemory@icu_56@@@8 ; icu_56::UMemory::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	FLAT:??_R3UMemory@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R2UMemory@icu_56@@8
rdata$r	SEGMENT
??_R2UMemory@icu_56@@8 DD FLAT:??_R1A@?0A@EA@UMemory@icu_56@@8 ; icu_56::UMemory::`RTTI Base Class Array'
rdata$r	ENDS
;	COMDAT ??_R3UMemory@icu_56@@8
rdata$r	SEGMENT
??_R3UMemory@icu_56@@8 DD 00H				; icu_56::UMemory::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	01H
	DD	FLAT:??_R2UMemory@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVUMemory@icu_56@@@8
_DATA	SEGMENT
??_R0?AVUMemory@icu_56@@@8 DD FLAT:??_7type_info@@6B@	; icu_56::UMemory `RTTI Type Descriptor'
	DD	00H
	DB	'.?AVUMemory@icu_56@@', 00H
_DATA	ENDS
;	COMDAT ??_R13?0A@EA@UMemory@icu_56@@8
rdata$r	SEGMENT
??_R13?0A@EA@UMemory@icu_56@@8 DD FLAT:??_R0?AVUMemory@icu_56@@@8 ; icu_56::UMemory::`RTTI Base Class Descriptor at (4,-1,0,64)'
	DD	00H
	DD	04H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	FLAT:??_R3UMemory@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R1A@?0A@EA@UObject@icu_56@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@UObject@icu_56@@8 DD FLAT:??_R0?AVUObject@icu_56@@@8 ; icu_56::UObject::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	01H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	FLAT:??_R3UObject@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R2UObject@icu_56@@8
rdata$r	SEGMENT
??_R2UObject@icu_56@@8 DD FLAT:??_R1A@?0A@EA@UObject@icu_56@@8 ; icu_56::UObject::`RTTI Base Class Array'
	DD	FLAT:??_R13?0A@EA@UMemory@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R3UObject@icu_56@@8
rdata$r	SEGMENT
??_R3UObject@icu_56@@8 DD 00H				; icu_56::UObject::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	02H
	DD	FLAT:??_R2UObject@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVUObject@icu_56@@@8
_DATA	SEGMENT
??_R0?AVUObject@icu_56@@@8 DD FLAT:??_7type_info@@6B@	; icu_56::UObject `RTTI Type Descriptor'
	DD	00H
	DB	'.?AVUObject@icu_56@@', 00H
_DATA	ENDS
;	COMDAT ??_R4UObject@icu_56@@6B@
rdata$r	SEGMENT
??_R4UObject@icu_56@@6B@ DD 00H				; icu_56::UObject::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	FLAT:??_R0?AVUObject@icu_56@@@8
	DD	FLAT:??_R3UObject@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_7UObject@icu_56@@6B@
CONST	SEGMENT
??_7UObject@icu_56@@6B@ DD FLAT:??_R4UObject@icu_56@@6B@ ; icu_56::UObject::`vftable'
	DD	FLAT:??_EUObject@icu_56@@UAEPAXI@Z
	DD	FLAT:?getDynamicClassID@UObject@icu_56@@UBEPAXXZ
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT ??0UObject@icu_56@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??0UObject@icu_56@@QAE@XZ PROC				; icu_56::UObject::UObject, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ??_7UObject@icu_56@@6B@
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0UObject@icu_56@@QAE@XZ ENDP				; icu_56::UObject::UObject
_TEXT	ENDS
PUBLIC	??0UObject@icu_56@@QAE@ABV01@@Z			; icu_56::UObject::UObject
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??0UObject@icu_56@@QAE@ABV01@@Z
_TEXT	SEGMENT
tv68 = -208						; size = 4
_this$ = -8						; size = 4
___that$ = 8						; size = 4
??0UObject@icu_56@@QAE@ABV01@@Z PROC			; icu_56::UObject::UObject, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	cmp	DWORD PTR ___that$[ebp], 0
	je	SHORT $LN3@UObject
	mov	eax, DWORD PTR ___that$[ebp]
	add	eax, 4
	mov	DWORD PTR tv68[ebp], eax
	jmp	SHORT $LN4@UObject
$LN3@UObject:
	mov	DWORD PTR tv68[ebp], 0
$LN4@UObject:
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ??_7UObject@icu_56@@6B@
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??0UObject@icu_56@@QAE@ABV01@@Z ENDP			; icu_56::UObject::UObject
_TEXT	ENDS
PUBLIC	??4UObject@icu_56@@QAEAAV01@ABV01@@Z		; icu_56::UObject::operator=
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??4UObject@icu_56@@QAEAAV01@ABV01@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___that$ = 8						; size = 4
??4UObject@icu_56@@QAEAAV01@ABV01@@Z PROC		; icu_56::UObject::operator=, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??4UObject@icu_56@@QAEAAV01@ABV01@@Z ENDP		; icu_56::UObject::operator=
_TEXT	ENDS
PUBLIC	??_GUObject@icu_56@@UAEPAXI@Z			; icu_56::UObject::`scalar deleting destructor'
EXTRN	??3UMemory@icu_56@@SAXPAX@Z:PROC		; icu_56::UMemory::operator delete
EXTRN	??1UObject@icu_56@@UAE@XZ:PROC			; icu_56::UObject::~UObject
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GUObject@icu_56@@UAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GUObject@icu_56@@UAEPAXI@Z PROC			; icu_56::UObject::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1UObject@icu_56@@UAE@XZ		; icu_56::UObject::~UObject
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3UMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete
	add	esp, 4
$LN1@scalar:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_GUObject@icu_56@@UAEPAXI@Z ENDP			; icu_56::UObject::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??_VUMemory@icu_56@@SAXPAX@Z:PROC		; icu_56::UMemory::operator delete[]
EXTRN	??_M@YGXPAXIHP6EX0@Z@Z:PROC			; `eh vector destructor iterator'
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_EUObject@icu_56@@UAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_EUObject@icu_56@@UAEPAXI@Z PROC			; icu_56::UObject::`vector deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 2
	je	SHORT $LN3@vector
	push	OFFSET ??1UObject@icu_56@@UAE@XZ	; icu_56::UObject::~UObject
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax-4]
	push	ecx
	push	4
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??_M@YGXPAXIHP6EX0@Z@Z
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN2@vector
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	push	eax
	call	??_VUMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete[]
	add	esp, 4
$LN2@vector:
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	jmp	SHORT $LN4@vector
$LN3@vector:
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1UObject@icu_56@@UAE@XZ		; icu_56::UObject::~UObject
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@vector
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3UMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete
	add	esp, 4
$LN1@vector:
	mov	eax, DWORD PTR _this$[ebp]
$LN4@vector:
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_EUObject@icu_56@@UAEPAXI@Z ENDP			; icu_56::UObject::`vector deleting destructor'
_TEXT	ENDS
PUBLIC	??_7UnicodeFunctor@icu_56@@6B@			; icu_56::UnicodeFunctor::`vftable'
PUBLIC	??0UnicodeFunctor@icu_56@@QAE@XZ		; icu_56::UnicodeFunctor::UnicodeFunctor
PUBLIC	??_R4UnicodeFunctor@icu_56@@6B@			; icu_56::UnicodeFunctor::`RTTI Complete Object Locator'
PUBLIC	??_R0?AVUnicodeFunctor@icu_56@@@8		; icu_56::UnicodeFunctor `RTTI Type Descriptor'
PUBLIC	??_R3UnicodeFunctor@icu_56@@8			; icu_56::UnicodeFunctor::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R2UnicodeFunctor@icu_56@@8			; icu_56::UnicodeFunctor::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@UnicodeFunctor@icu_56@@8		; icu_56::UnicodeFunctor::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_EUnicodeFunctor@icu_56@@UAEPAXI@Z		; icu_56::UnicodeFunctor::`vector deleting destructor'
PUBLIC	?toMatcher@UnicodeFunctor@icu_56@@UBEPAVUnicodeMatcher@2@XZ ; icu_56::UnicodeFunctor::toMatcher
PUBLIC	?toReplacer@UnicodeFunctor@icu_56@@UBEPAVUnicodeReplacer@2@XZ ; icu_56::UnicodeFunctor::toReplacer
EXTRN	__purecall:PROC
;	COMDAT ??_R1A@?0A@EA@UnicodeFunctor@icu_56@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@UnicodeFunctor@icu_56@@8 DD FLAT:??_R0?AVUnicodeFunctor@icu_56@@@8 ; icu_56::UnicodeFunctor::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	02H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	FLAT:??_R3UnicodeFunctor@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R2UnicodeFunctor@icu_56@@8
rdata$r	SEGMENT
??_R2UnicodeFunctor@icu_56@@8 DD FLAT:??_R1A@?0A@EA@UnicodeFunctor@icu_56@@8 ; icu_56::UnicodeFunctor::`RTTI Base Class Array'
	DD	FLAT:??_R1A@?0A@EA@UObject@icu_56@@8
	DD	FLAT:??_R13?0A@EA@UMemory@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R3UnicodeFunctor@icu_56@@8
rdata$r	SEGMENT
??_R3UnicodeFunctor@icu_56@@8 DD 00H			; icu_56::UnicodeFunctor::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	03H
	DD	FLAT:??_R2UnicodeFunctor@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVUnicodeFunctor@icu_56@@@8
_DATA	SEGMENT
??_R0?AVUnicodeFunctor@icu_56@@@8 DD FLAT:??_7type_info@@6B@ ; icu_56::UnicodeFunctor `RTTI Type Descriptor'
	DD	00H
	DB	'.?AVUnicodeFunctor@icu_56@@', 00H
_DATA	ENDS
;	COMDAT ??_R4UnicodeFunctor@icu_56@@6B@
rdata$r	SEGMENT
??_R4UnicodeFunctor@icu_56@@6B@ DD 00H			; icu_56::UnicodeFunctor::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	FLAT:??_R0?AVUnicodeFunctor@icu_56@@@8
	DD	FLAT:??_R3UnicodeFunctor@icu_56@@8
rdata$r	ENDS
;	COMDAT ??_7UnicodeFunctor@icu_56@@6B@
CONST	SEGMENT
??_7UnicodeFunctor@icu_56@@6B@ DD FLAT:??_R4UnicodeFunctor@icu_56@@6B@ ; icu_56::UnicodeFunctor::`vftable'
	DD	FLAT:??_EUnicodeFunctor@icu_56@@UAEPAXI@Z
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:?toMatcher@UnicodeFunctor@icu_56@@UBEPAVUnicodeMatcher@2@XZ
	DD	FLAT:?toReplacer@UnicodeFunctor@icu_56@@UBEPAVUnicodeReplacer@2@XZ
	DD	FLAT:__purecall
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT ??0UnicodeFunctor@icu_56@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??0UnicodeFunctor@icu_56@@QAE@XZ PROC			; icu_56::UnicodeFunctor::UnicodeFunctor, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0UObject@icu_56@@QAE@XZ
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ??_7UnicodeFunctor@icu_56@@6B@
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??0UnicodeFunctor@icu_56@@QAE@XZ ENDP			; icu_56::UnicodeFunctor::UnicodeFunctor
_TEXT	ENDS
PUBLIC	??0UnicodeFunctor@icu_56@@QAE@ABV01@@Z		; icu_56::UnicodeFunctor::UnicodeFunctor
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??0UnicodeFunctor@icu_56@@QAE@ABV01@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___that$ = 8						; size = 4
??0UnicodeFunctor@icu_56@@QAE@ABV01@@Z PROC		; icu_56::UnicodeFunctor::UnicodeFunctor, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ___that$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0UObject@icu_56@@QAE@ABV01@@Z
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ??_7UnicodeFunctor@icu_56@@6B@
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??0UnicodeFunctor@icu_56@@QAE@ABV01@@Z ENDP		; icu_56::UnicodeFunctor::UnicodeFunctor
_TEXT	ENDS
PUBLIC	??4UnicodeFunctor@icu_56@@QAEAAV01@ABV01@@Z	; icu_56::UnicodeFunctor::operator=
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??4UnicodeFunctor@icu_56@@QAEAAV01@ABV01@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___that$ = 8						; size = 4
??4UnicodeFunctor@icu_56@@QAEAAV01@ABV01@@Z PROC	; icu_56::UnicodeFunctor::operator=, COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ___that$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	??4UObject@icu_56@@QAEAAV01@ABV01@@Z
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??4UnicodeFunctor@icu_56@@QAEAAV01@ABV01@@Z ENDP	; icu_56::UnicodeFunctor::operator=
_TEXT	ENDS
PUBLIC	??1UnicodeFunctor@icu_56@@UAE@XZ		; icu_56::UnicodeFunctor::~UnicodeFunctor
PUBLIC	??_GUnicodeFunctor@icu_56@@UAEPAXI@Z		; icu_56::UnicodeFunctor::`scalar deleting destructor'
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GUnicodeFunctor@icu_56@@UAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GUnicodeFunctor@icu_56@@UAEPAXI@Z PROC		; icu_56::UnicodeFunctor::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1UnicodeFunctor@icu_56@@UAE@XZ	; icu_56::UnicodeFunctor::~UnicodeFunctor
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar@2
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3UMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete
	add	esp, 4
$LN1@scalar@2:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_GUnicodeFunctor@icu_56@@UAEPAXI@Z ENDP		; icu_56::UnicodeFunctor::`scalar deleting destructor'
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??_EUnicodeFunctor@icu_56@@UAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_EUnicodeFunctor@icu_56@@UAEPAXI@Z PROC		; icu_56::UnicodeFunctor::`vector deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 2
	je	SHORT $LN3@vector@2
	push	OFFSET ??1UnicodeFunctor@icu_56@@UAE@XZ	; icu_56::UnicodeFunctor::~UnicodeFunctor
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax-4]
	push	ecx
	push	4
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??_M@YGXPAXIHP6EX0@Z@Z
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN2@vector@2
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	push	eax
	call	??_VUMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete[]
	add	esp, 4
$LN2@vector@2:
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	jmp	SHORT $LN4@vector@2
$LN3@vector@2:
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1UnicodeFunctor@icu_56@@UAE@XZ	; icu_56::UnicodeFunctor::~UnicodeFunctor
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@vector@2
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3UMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete
	add	esp, 4
$LN1@vector@2:
	mov	eax, DWORD PTR _this$[ebp]
$LN4@vector@2:
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_EUnicodeFunctor@icu_56@@UAEPAXI@Z ENDP		; icu_56::UnicodeFunctor::`vector deleting destructor'
_TEXT	ENDS
PUBLIC	?getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ ; icu_56::UnicodeFunctor::getStaticClassID
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ
_TEXT	SEGMENT
?getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ PROC	; icu_56::UnicodeFunctor::getStaticClassID, COMDAT
; File d:\mozilla\intl\icu\source\common\unifunct.cpp
; Line 12
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, OFFSET ?classID@?1??getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ@4DA
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?getStaticClassID@UnicodeFunctor@icu_56@@SAPAXXZ ENDP	; icu_56::UnicodeFunctor::getStaticClassID
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??1UnicodeFunctor@icu_56@@UAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1UnicodeFunctor@icu_56@@UAE@XZ PROC			; icu_56::UnicodeFunctor::~UnicodeFunctor, COMDAT
; _this$ = ecx
; Line 14
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ??_7UnicodeFunctor@icu_56@@6B@
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1UObject@icu_56@@UAE@XZ		; icu_56::UObject::~UObject
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1UnicodeFunctor@icu_56@@UAE@XZ ENDP			; icu_56::UnicodeFunctor::~UnicodeFunctor
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?toMatcher@UnicodeFunctor@icu_56@@UBEPAVUnicodeMatcher@2@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?toMatcher@UnicodeFunctor@icu_56@@UBEPAVUnicodeMatcher@2@XZ PROC ; icu_56::UnicodeFunctor::toMatcher, COMDAT
; _this$ = ecx
; Line 16
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
; Line 17
	xor	eax, eax
; Line 18
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?toMatcher@UnicodeFunctor@icu_56@@UBEPAVUnicodeMatcher@2@XZ ENDP ; icu_56::UnicodeFunctor::toMatcher
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?toReplacer@UnicodeFunctor@icu_56@@UBEPAVUnicodeReplacer@2@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?toReplacer@UnicodeFunctor@icu_56@@UBEPAVUnicodeReplacer@2@XZ PROC ; icu_56::UnicodeFunctor::toReplacer, COMDAT
; _this$ = ecx
; Line 20
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
; Line 21
	xor	eax, eax
; Line 22
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?toReplacer@UnicodeFunctor@icu_56@@UBEPAVUnicodeReplacer@2@XZ ENDP ; icu_56::UnicodeFunctor::toReplacer
_TEXT	ENDS
END