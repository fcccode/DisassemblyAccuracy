; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\CPP\7zip\Common\VirtThread.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?Create@CThread@NWindows@@QAEIP6GIPAX@Z0@Z	; NWindows::CThread::Create
PUBLIC	?IsCreated@CThread@NWindows@@QAE_NXZ		; NWindows::CThread::IsCreated
PUBLIC	?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Reset
PUBLIC	?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CAutoResetEvent::CreateIfNotCreated
PUBLIC	?Create@CVirtThread@@QAEIXZ			; CVirtThread::Create
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\cpp\7zip\common\virtthread.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
___result__$66189 = -12					; size = 4
___result__$66187 = -8					; size = 4
_this$ = -4						; size = 4
?Create@CVirtThread@@QAEIXZ PROC			; CVirtThread::Create
; _this$ = ecx
; Line 21
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR [ebp-12], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 22
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CAutoResetEvent::CreateIfNotCreated
	mov	DWORD PTR ___result__$66187[ebp], eax
	cmp	DWORD PTR ___result__$66187[ebp], 0
	je	SHORT $LN3@Create
	mov	eax, DWORD PTR ___result__$66187[ebp]
	jmp	SHORT $LN4@Create
$LN3@Create:
; Line 23
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 8
	call	?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CAutoResetEvent::CreateIfNotCreated
	mov	DWORD PTR ___result__$66189[ebp], eax
	cmp	DWORD PTR ___result__$66189[ebp], 0
	je	SHORT $LN2@Create
	mov	eax, DWORD PTR ___result__$66189[ebp]
	jmp	SHORT $LN4@Create
$LN2@Create:
; Line 24
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Reset
; Line 25
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 8
	call	?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Reset
; Line 26
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+16], 0
; Line 27
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?IsCreated@CThread@NWindows@@QAE_NXZ	; NWindows::CThread::IsCreated
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN1@Create
; Line 28
	xor	eax, eax
	jmp	SHORT $LN4@Create
$LN1@Create:
; Line 29
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	push	OFFSET ?CoderThread@@YGIPAX@Z		; CoderThread
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?Create@CThread@NWindows@@QAEIP6GIPAX@Z0@Z ; NWindows::CThread::Create
$LN4@Create:
; Line 30
	add	esp, 12					; 0000000cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Create@CVirtThread@@QAEIXZ ENDP			; CVirtThread::Create
_TEXT	ENDS
EXTRN	_Event_Reset@4:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ PROC ; NWindows::NSynchronization::CBaseEvent::Reset, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\windows\synchronization.h
; Line 46
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_Event_Reset@4
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Reset@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ENDP ; NWindows::NSynchronization::CBaseEvent::Reset
_TEXT	ENDS
PUBLIC	?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ ; NWindows::NSynchronization::CBaseEvent::IsCreated
EXTRN	_AutoResetEvent_CreateNotSignaled@4:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ PROC ; NWindows::NSynchronization::CAutoResetEvent::CreateIfNotCreated, COMDAT
; _this$ = ecx
; Line 79
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 80
	mov	ecx, DWORD PTR _this$[ebp]
	call	?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ ; NWindows::NSynchronization::CBaseEvent::IsCreated
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN1@CreateIfNo
; Line 81
	xor	eax, eax
	jmp	SHORT $LN2@CreateIfNo
$LN1@CreateIfNo:
; Line 82
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_AutoResetEvent_CreateNotSignaled@4
$LN2@CreateIfNo:
; Line 83
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?CreateIfNotCreated@CAutoResetEvent@NSynchronization@NWindows@@QAEIXZ ENDP ; NWindows::NSynchronization::CAutoResetEvent::CreateIfNotCreated
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ PROC ; NWindows::NSynchronization::CBaseEvent::IsCreated, COMDAT
; _this$ = ecx
; Line 22
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax], 0
	setne	cl
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	al, cl
	mov	esp, ebp
	pop	ebp
	ret	0
?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ ENDP ; NWindows::NSynchronization::CBaseEvent::IsCreated
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?IsCreated@CThread@NWindows@@QAE_NXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?IsCreated@CThread@NWindows@@QAE_NXZ PROC		; NWindows::CThread::IsCreated, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\windows\thread.h
; Line 18
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax], 0
	setne	cl
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	al, cl
	mov	esp, ebp
	pop	ebp
	ret	0
?IsCreated@CThread@NWindows@@QAE_NXZ ENDP		; NWindows::CThread::IsCreated
_TEXT	ENDS
EXTRN	_Thread_Create@12:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Create@CThread@NWindows@@QAEIP6GIPAX@Z0@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_startAddress$ = 8					; size = 4
_parameter$ = 12					; size = 4
?Create@CThread@NWindows@@QAEIP6GIPAX@Z0@Z PROC		; NWindows::CThread::Create, COMDAT
; _this$ = ecx
; Line 21
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _parameter$[ebp]
	push	eax
	mov	ecx, DWORD PTR _startAddress$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	_Thread_Create@12
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?Create@CThread@NWindows@@QAEIP6GIPAX@Z0@Z ENDP		; NWindows::CThread::Create
_TEXT	ENDS
PUBLIC	?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Set
PUBLIC	?Lock@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Lock
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_t$66181 = -4						; size = 4
_p$ = 8							; size = 4
?CoderThread@@YGIPAX@Z PROC				; CoderThread
; File c:\workspace\7z1505-src\cpp\7zip\common\virtthread.cpp
; Line 8
	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
$LN3@CoderThrea:
; Line 11
	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR _t$66181[ebp], eax
; Line 12
	mov	ecx, DWORD PTR _t$66181[ebp]
	add	ecx, 4
	call	?Lock@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Lock
; Line 13
	mov	ecx, DWORD PTR _t$66181[ebp]
	movzx	edx, BYTE PTR [ecx+16]
	test	edx, edx
	je	SHORT $LN1@CoderThrea
; Line 14
	xor	eax, eax
	jmp	SHORT $LN4@CoderThrea
$LN1@CoderThrea:
; Line 15
	mov	eax, DWORD PTR _t$66181[ebp]
	mov	edx, DWORD PTR [eax]
	mov	esi, esp
	mov	ecx, DWORD PTR _t$66181[ebp]
	mov	eax, DWORD PTR [edx]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 16
	mov	ecx, DWORD PTR _t$66181[ebp]
	add	ecx, 8
	call	?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Set
; Line 17
	jmp	SHORT $LN3@CoderThrea
$LN4@CoderThrea:
; Line 18
	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?CoderThread@@YGIPAX@Z ENDP				; CoderThread
_TEXT	ENDS
EXTRN	_Event_Set@4:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ PROC	; NWindows::NSynchronization::CBaseEvent::Set, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\windows\synchronization.h
; Line 44
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_Event_Set@4
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ENDP	; NWindows::NSynchronization::CBaseEvent::Set
_TEXT	ENDS
EXTRN	_Handle_WaitObject@4:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Lock@CBaseEvent@NSynchronization@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Lock@CBaseEvent@NSynchronization@NWindows@@QAEIXZ PROC	; NWindows::NSynchronization::CBaseEvent::Lock, COMDAT
; _this$ = ecx
; Line 47
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_Handle_WaitObject@4
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Lock@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ENDP	; NWindows::NSynchronization::CBaseEvent::Lock
_TEXT	ENDS
PUBLIC	?Start@CVirtThread@@QAEXXZ			; CVirtThread::Start
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Start@CVirtThread@@QAEXXZ PROC				; CVirtThread::Start
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\common\virtthread.cpp
; Line 33
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 34
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+16], 0
; Line 35
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Set
; Line 36
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Start@CVirtThread@@QAEXXZ ENDP				; CVirtThread::Start
_TEXT	ENDS
PUBLIC	?Close@CThread@NWindows@@QAEIXZ			; NWindows::CThread::Close
PUBLIC	?Wait@CThread@NWindows@@QAEIXZ			; NWindows::CThread::Wait
PUBLIC	?WaitThreadFinish@CVirtThread@@QAEXXZ		; CVirtThread::WaitThreadFinish
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = -4						; size = 4
?WaitThreadFinish@CVirtThread@@QAEXXZ PROC		; CVirtThread::WaitThreadFinish
; _this$ = ecx
; Line 39
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 40
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+16], 1
; Line 41
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?IsCreated@CBaseEvent@NSynchronization@NWindows@@QAE_NXZ ; NWindows::NSynchronization::CBaseEvent::IsCreated
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN2@WaitThread
; Line 42
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?Set@CBaseEvent@NSynchronization@NWindows@@QAEIXZ ; NWindows::NSynchronization::CBaseEvent::Set
$LN2@WaitThread:
; Line 43
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?IsCreated@CThread@NWindows@@QAE_NXZ	; NWindows::CThread::IsCreated
	movzx	edx, al
	test	edx, edx
	je	SHORT $LN3@WaitThread
; Line 45
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?Wait@CThread@NWindows@@QAEIXZ		; NWindows::CThread::Wait
; Line 46
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?Close@CThread@NWindows@@QAEIXZ		; NWindows::CThread::Close
$LN3@WaitThread:
; Line 48
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?WaitThreadFinish@CVirtThread@@QAEXXZ ENDP		; CVirtThread::WaitThreadFinish
_TEXT	ENDS
EXTRN	_HandlePtr_Close@4:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Close@CThread@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Close@CThread@NWindows@@QAEIXZ PROC			; NWindows::CThread::Close, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\windows\thread.h
; Line 19
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_HandlePtr_Close@4
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Close@CThread@NWindows@@QAEIXZ ENDP			; NWindows::CThread::Close
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?Wait@CThread@NWindows@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Wait@CThread@NWindows@@QAEIXZ PROC			; NWindows::CThread::Wait, COMDAT
; _this$ = ecx
; Line 22
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_Handle_WaitObject@4
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Wait@CThread@NWindows@@QAEIXZ ENDP			; NWindows::CThread::Wait
_TEXT	ENDS
END
