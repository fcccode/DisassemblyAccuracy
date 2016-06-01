;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	FEA2C424416AA70AEACB8359BE02B577
; Input	CRC32 :	D120D6D3

; File Name   :	D:\compspace\objfiles\firefox\common\uinit.obj
; Format      :	COFF (X386MAGIC)
; includelib "msvcprtd"
; includelib "MSVCRTD"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use32
		assume cs:_bss
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing
; icu_56::UInitOnce gICUInitOnce
_gICUInitOnce	dd 2 dup(?)		; DATA XREF: _u_init_56+27o
					; icu_56::uinit_cleanup(void)+1Eo
_bss		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 8
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; void *__cdecl	operator new(unsigned int)
		public ??2@YAPAXI@Z
??2@YAPAXI@Z	proc near

var_CC		= byte ptr -0CCh
var_8		= dword	ptr -8

		push	ebp
		mov	ebp, esp
		sub	esp, 0CCh
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_CC]
		mov	ecx, 33h ; '3'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	[ebp+var_8], 0
		mov	eax, [ebp+var_8]
		mov	byte ptr [eax],	5
		mov	eax, [ebp+var_8]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
??2@YAPAXI@Z	endp

; ---------------------------------------------------------------------------
		align 10h
_text		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$TMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$TMZ
		;org 40h
__RTC_Shutdown_rtc$TMZ dd offset __RTC_Shutdown
_rtc$TMZ	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$IMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$IMZ
		;org 44h
__RTC_InitBase_rtc$IMZ dd offset __RTC_InitBase
_rtc$IMZ	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 48h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; void __cdecl operator	delete(void *)
		public ??3@YAXPAX@Z
??3@YAXPAX@Z	proc near

var_CC		= byte ptr -0CCh
var_8		= dword	ptr -8

		push	ebp
		mov	ebp, esp
		sub	esp, 0CCh
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_CC]
		mov	ecx, 33h ; '3'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	[ebp+var_8], 0
		mov	eax, [ebp+var_8]
		mov	byte ptr [eax],	5
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
??3@YAXPAX@Z	endp

; ---------------------------------------------------------------------------
		align 4
_text		ends

;
; Exported entry
;
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 7Ch
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _u_init_56
_u_init_56	proc near

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi		; enum UErrorCode *
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	eax, [ebp+arg_0]
		push	eax		; void (__cdecl	*)(enum	UErrorCode *)
		push	offset ?initData@icu_56@@YAXAAW4UErrorCode@@@Z ; struct	icu_56::UInitOnce *
		push	offset _gICUInitOnce ; this
		call	?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXAAW4UErrorCode@@@Z1@Z ; icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)
		add	esp, 0Ch
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_u_init_56	endp

_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 0C4h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; void __cdecl icu_56::umtx_initOnce(icu_56 *__hidden this, struct icu_56::UInitOnce *,	void (__cdecl *)(enum UErrorCode *), enum UErrorCode *)
		public ?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXAAW4UErrorCode@@@Z1@Z
?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXAAW4UErrorCode@@@Z1@Z proc	near
					; CODE XREF: _u_init_56+2Cp

var_C0		= byte ptr -0C0h
Destination	= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi		; struct icu_56::UInitOnce *
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	eax, [ebp+arg_8]
		mov	ecx, [eax]
		push	ecx
		call	?U_FAILURE@@YACW4UErrorCode@@@Z	; U_FAILURE(UErrorCode)
		add	esp, 4
		movsx	edx, al
		test	edx, edx
		jz	short loc_F9
		jmp	short loc_16A
; ---------------------------------------------------------------------------

loc_F9:					; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+31j
		mov	eax, [ebp+Destination]
		push	eax		; Destination
		call	?umtx_loadAcquire@icu_56@@YAHACJ@Z ; icu_56::umtx_loadAcquire(long volatile &)
		add	esp, 4
		cmp	eax, 2
		jz	short loc_149
		mov	eax, [ebp+Destination]
		push	eax		; this
		call	?umtx_initImplPreInit@icu_56@@YACAAUUInitOnce@1@@Z ; icu_56::umtx_initImplPreInit(icu_56::UInitOnce &)
		add	esp, 4
		movsx	ecx, al
		test	ecx, ecx
		jz	short loc_149
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		call	[ebp+arg_4]
		add	esp, 4
		cmp	esi, esp
		call	__RTC_CheckEsp
		mov	eax, [ebp+Destination]
		mov	ecx, [ebp+arg_8]
		mov	edx, [ecx]
		mov	[eax+4], edx
		mov	eax, [ebp+Destination]
		push	eax		; this
		call	?umtx_initImplPostInit@icu_56@@YAXAAUUInitOnce@1@@Z ; icu_56::umtx_initImplPostInit(icu_56::UInitOnce &)
		add	esp, 4
		jmp	short loc_16A
; ---------------------------------------------------------------------------

loc_149:				; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+44j
					; icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode	&),UErrorCode &)+57j
		mov	eax, [ebp+Destination]
		mov	ecx, [eax+4]
		push	ecx
		call	?U_FAILURE@@YACW4UErrorCode@@@Z	; U_FAILURE(UErrorCode)
		add	esp, 4
		movsx	edx, al
		test	edx, edx
		jz	short loc_16A
		mov	eax, [ebp+arg_8]
		mov	ecx, [ebp+Destination]
		mov	edx, [ecx+4]
		mov	[eax], edx

loc_16A:				; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+33j
					; icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode	&),UErrorCode &)+83j ...
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXAAW4UErrorCode@@@Z1@Z endp

; ---------------------------------------------------------------------------
		align 10h
_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 180h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; signed char __cdecl U_FAILURE(enum  UErrorCode)
?U_FAILURE@@YACW4UErrorCode@@@Z	proc near
					; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+24p
					; icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode	&),UErrorCode &)+8Cp

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		cmp	[ebp+arg_0], 0
		setnle	al
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
?U_FAILURE@@YACW4UErrorCode@@@Z	endp

_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 1ACh
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl icu_56::umtx_loadAcquire(volatile	LONG *Destination, volatile __int32 *)
		public ?umtx_loadAcquire@icu_56@@YAHACJ@Z
?umtx_loadAcquire@icu_56@@YAHACJ@Z proc	near
					; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+39p

var_C0		= byte ptr -0C0h
Destination	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	esi, esp
		push	0		; Comperand
		push	0		; Exchange
		mov	eax, [ebp+Destination]
		push	eax		; Destination
		call	dword ptr ds:__imp__InterlockedCompareExchange@12 ; InterlockedCompareExchange(x,x,x)
		cmp	esi, esp
		call	__RTC_CheckEsp
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
?umtx_loadAcquire@icu_56@@YAHACJ@Z endp

; ---------------------------------------------------------------------------
		align 4
_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 1F8h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; struct icu_56::UInitOnce icu_56::initData
?initData@icu_56@@YAXAAW4UErrorCode@@@Z	proc near ; DATA XREF: _u_init_56+22o

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	eax, [ebp+arg_0]
		push	eax
		call	_ucnv_io_countKnownConverters_56
		add	esp, 4
		push	offset ?uinit_cleanup@icu_56@@YACXZ ; icu_56::uinit_cleanup(void)
		push	12h
		call	_ucln_common_registerCleanup_56
		add	esp, 8
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
?initData@icu_56@@YAXAAW4UErrorCode@@@Z	endp

; ---------------------------------------------------------------------------
		align 4
_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 248h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; signed char __cdecl icu_56::uinit_cleanup(void)
?uinit_cleanup@icu_56@@YACXZ proc near	; DATA XREF: icu_56::initData(UErrorCode &)+2Ao

var_C0		= byte ptr -0C0h

		push	ebp
		mov	ebp, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_C0]
		mov	ecx, 30h ; '0'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	ecx, offset _gICUInitOnce ; this
		call	?reset@UInitOnce@icu_56@@QAEXXZ	; icu_56::UInitOnce::reset(void)
		mov	al, 1
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
?uinit_cleanup@icu_56@@YACXZ endp

; ---------------------------------------------------------------------------
		align 4
_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 288h
		assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing,	gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; void __thiscall icu_56::UInitOnce::reset(icu_56::UInitOnce *__hidden this)
		public ?reset@UInitOnce@icu_56@@QAEXXZ
?reset@UInitOnce@icu_56@@QAEXXZ	proc near ; CODE XREF: icu_56::uinit_cleanup(void)+23p

var_CC		= byte ptr -0CCh
var_8		= dword	ptr -8

		push	ebp
		mov	ebp, esp
		sub	esp, 0CCh
		push	ebx
		push	esi
		push	edi
		push	ecx
		lea	edi, [ebp+var_CC]
		mov	ecx, 33h ; '3'
		mov	eax, 0CCCCCCCCh
		rep stosd
		pop	ecx
		mov	[ebp+var_8], ecx
		mov	eax, [ebp+var_8]
		mov	dword ptr [eax], 0
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
?reset@UInitOnce@icu_56@@QAEXXZ	endp

_text		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __RTC_Shutdown:near ; DATA XREF: .rtc$TMZ:__RTC_Shutdown_rtc$TMZo
		extrn __RTC_InitBase:near ; DATA XREF: .rtc$IMZ:__RTC_InitBase_rtc$IMZo
		extrn __RTC_CheckEsp:near ; CODE XREF: _u_init_56+3Fp
					; icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode	&),UErrorCode &)+67p ...
; void __cdecl icu_56::umtx_initImplPostInit(icu_56 *__hidden this, struct icu_56::UInitOnce *)
		extrn ?umtx_initImplPostInit@icu_56@@YAXAAUUInitOnce@1@@Z:near
					; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+7Bp
; signed __int8	__cdecl	icu_56::umtx_initImplPreInit(icu_56 *__hidden this, struct icu_56::UInitOnce *)
		extrn ?umtx_initImplPreInit@icu_56@@YACAAUUInitOnce@1@@Z:near
					; CODE XREF: icu_56::umtx_initOnce(icu_56::UInitOnce &,void (*)(UErrorCode &),UErrorCode &)+4Ap
; LONG __stdcall InterlockedCompareExchange(volatile LONG *Destination,	LONG Exchange, LONG Comperand)
		extrn __imp__InterlockedCompareExchange@12:near
					; CODE XREF: icu_56::umtx_loadAcquire(long volatile &)+28p
					; DATA XREF: icu_56::umtx_loadAcquire(long volatile &)+28r
		extrn _ucln_common_registerCleanup_56:near
					; CODE XREF: icu_56::initData(UErrorCode &)+31p
		extrn _ucnv_io_countKnownConverters_56:near
					; CODE XREF: icu_56::initData(UErrorCode &)+22p


		end
