; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\common\uobject.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

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
PUBLIC	?getDynamicClassID@UObject@icu_56@@UBEPAXXZ	; icu_56::UObject::getDynamicClassID
EXTRN	??_7type_info@@6B@:QWORD			; type_info::`vftable'
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
PUBLIC	??3UMemory@icu_56@@SAXPAX@Z			; icu_56::UMemory::operator delete
PUBLIC	??1UObject@icu_56@@UAE@XZ			; icu_56::UObject::~UObject
PUBLIC	??_GUObject@icu_56@@UAEPAXI@Z			; icu_56::UObject::`scalar deleting destructor'
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
PUBLIC	??_VUMemory@icu_56@@SAXPAX@Z			; icu_56::UMemory::operator delete[]
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
PUBLIC	??2UMemory@icu_56@@SAPAXI@Z			; icu_56::UMemory::operator new
EXTRN	_uprv_malloc_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??2UMemory@icu_56@@SAPAXI@Z
_TEXT	SEGMENT
_size$ = 8						; size = 4
??2UMemory@icu_56@@SAPAXI@Z PROC			; icu_56::UMemory::operator new, COMDAT
; File d:\mozilla\intl\icu\source\common\uobject.cpp
; Line 59
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
; Line 60
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	call	_uprv_malloc_56
	add	esp, 4
; Line 61
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??2UMemory@icu_56@@SAPAXI@Z ENDP			; icu_56::UMemory::operator new
_TEXT	ENDS
EXTRN	_uprv_free_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??3UMemory@icu_56@@SAXPAX@Z
_TEXT	SEGMENT
_p$ = 8							; size = 4
??3UMemory@icu_56@@SAXPAX@Z PROC			; icu_56::UMemory::operator delete, COMDAT
; Line 63
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
; Line 64
	cmp	DWORD PTR _p$[ebp], 0
	je	SHORT $LN2@operator
; Line 65
	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	call	_uprv_free_56
	add	esp, 4
$LN2@operator:
; Line 67
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??3UMemory@icu_56@@SAXPAX@Z ENDP			; icu_56::UMemory::operator delete
_TEXT	ENDS
PUBLIC	??_UUMemory@icu_56@@SAPAXI@Z			; icu_56::UMemory::operator new[]
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_UUMemory@icu_56@@SAPAXI@Z
_TEXT	SEGMENT
_size$ = 8						; size = 4
??_UUMemory@icu_56@@SAPAXI@Z PROC			; icu_56::UMemory::operator new[], COMDAT
; Line 69
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
; Line 70
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	call	_uprv_malloc_56
	add	esp, 4
; Line 71
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??_UUMemory@icu_56@@SAPAXI@Z ENDP			; icu_56::UMemory::operator new[]
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??_VUMemory@icu_56@@SAXPAX@Z
_TEXT	SEGMENT
_p$ = 8							; size = 4
??_VUMemory@icu_56@@SAXPAX@Z PROC			; icu_56::UMemory::operator delete[], COMDAT
; Line 73
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
; Line 74
	cmp	DWORD PTR _p$[ebp], 0
	je	SHORT $LN2@operator@2
; Line 75
	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	call	_uprv_free_56
	add	esp, 4
$LN2@operator@2:
; Line 77
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??_VUMemory@icu_56@@SAXPAX@Z ENDP			; icu_56::UMemory::operator delete[]
_TEXT	ENDS
PUBLIC	??2UMemory@icu_56@@SAPAXIPBDH@Z			; icu_56::UMemory::operator new
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??2UMemory@icu_56@@SAPAXIPBDH@Z
_TEXT	SEGMENT
_size$ = 8						; size = 4
___formal$ = 12						; size = 4
___formal$ = 16						; size = 4
??2UMemory@icu_56@@SAPAXIPBDH@Z PROC			; icu_56::UMemory::operator new, COMDAT
; Line 80
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
; Line 81
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	call	??2UMemory@icu_56@@SAPAXI@Z		; icu_56::UMemory::operator new
	add	esp, 4
; Line 82
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??2UMemory@icu_56@@SAPAXIPBDH@Z ENDP			; icu_56::UMemory::operator new
_TEXT	ENDS
PUBLIC	??3UMemory@icu_56@@SAXPAXPBDH@Z			; icu_56::UMemory::operator delete
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??3UMemory@icu_56@@SAXPAXPBDH@Z
_TEXT	SEGMENT
_p$ = 8							; size = 4
___formal$ = 12						; size = 4
___formal$ = 16						; size = 4
??3UMemory@icu_56@@SAXPAXPBDH@Z PROC			; icu_56::UMemory::operator delete, COMDAT
; Line 84
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
; Line 85
	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	call	??3UMemory@icu_56@@SAXPAX@Z		; icu_56::UMemory::operator delete
	add	esp, 4
; Line 86
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??3UMemory@icu_56@@SAXPAXPBDH@Z ENDP			; icu_56::UMemory::operator delete
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??1UObject@icu_56@@UAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1UObject@icu_56@@UAE@XZ PROC				; icu_56::UObject::~UObject, COMDAT
; _this$ = ecx
; Line 92
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
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??1UObject@icu_56@@UAE@XZ ENDP				; icu_56::UObject::~UObject
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?getDynamicClassID@UObject@icu_56@@UBEPAXXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?getDynamicClassID@UObject@icu_56@@UBEPAXXZ PROC	; icu_56::UObject::getDynamicClassID, COMDAT
; _this$ = ecx
; Line 94
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
	xor	eax, eax
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?getDynamicClassID@UObject@icu_56@@UBEPAXXZ ENDP	; icu_56::UObject::getDynamicClassID
_TEXT	ENDS
PUBLIC	_uprv_deleteUObject_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _uprv_deleteUObject_56
_TEXT	SEGMENT
tv70 = -220						; size = 4
$T7484 = -212						; size = 4
$T7485 = -200						; size = 4
_obj$ = 8						; size = 4
_uprv_deleteUObject_56 PROC				; COMDAT
; Line 101
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 102
	mov	eax, DWORD PTR _obj$[ebp]
	mov	DWORD PTR $T7485[ebp], eax
	mov	ecx, DWORD PTR $T7485[ebp]
	mov	DWORD PTR $T7484[ebp], ecx
	cmp	DWORD PTR $T7484[ebp], 0
	je	SHORT $LN3@uprv_delet
	mov	esi, esp
	push	1
	mov	edx, DWORD PTR $T7484[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR $T7484[ebp]
	mov	edx, DWORD PTR [eax]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR tv70[ebp], eax
	jmp	SHORT $LN1@uprv_delet
$LN3@uprv_delet:
	mov	DWORD PTR tv70[ebp], 0
$LN1@uprv_delet:
; Line 103
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_uprv_deleteUObject_56 ENDP
_TEXT	ENDS
END
