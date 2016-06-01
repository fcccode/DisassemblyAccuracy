;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	53D952B038555D8978D15B5E9E09CB52
; Input	CRC32 :	E61645F5

; File Name   :	D:\compspace\objfiles\firefox\common\uenum.obj
; Format      :	COFF (X386MAGIC)
; includelib "msvcprtd"
; includelib "MSVCRTD"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
_PAD		dd 8			; DATA XREF: __getBuffer+35r
					; __getBuffer+73r
_rdata		ends

;
; Exported entry
;
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 4
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_close_56
_uenum_close_56	proc near

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
		jz	short loc_6D
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+8], 0
		jz	short loc_61
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax], 0
		jz	short loc_47
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax]
		push	ecx
		call	_uprv_free_56
		add	esp, 4

loc_47:					; CODE XREF: _uenum_close_56+33j
		mov	esi, esp
		mov	eax, [ebp+arg_0]
		push	eax
		mov	ecx, [ebp+arg_0]
		mov	edx, [ecx+8]
		call	edx
		add	esp, 4
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_6D
; ---------------------------------------------------------------------------

loc_61:					; CODE XREF: _uenum_close_56+2Bj
		mov	eax, [ebp+arg_0]
		push	eax
		call	_uprv_free_56
		add	esp, 4

loc_6D:					; CODE XREF: _uenum_close_56+22j
					; _uenum_close_56+5Bj
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_close_56	endp

; ---------------------------------------------------------------------------
		align 4
_text		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$TMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$TMZ
		;org 84h
__RTC_Shutdown_rtc$TMZ dd offset __RTC_Shutdown
_rtc$TMZ	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$IMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$IMZ
		;org 88h
__RTC_InitBase_rtc$IMZ dd offset __RTC_InitBase
_rtc$IMZ	ends

;
; Exported entry
;
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 8Ch
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_count_56
_uenum_count_56	proc near

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

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
		jz	short loc_B8
		mov	eax, [ebp+arg_4]
		cmp	dword ptr [eax], 0
		jle	short loc_BD

loc_B8:					; CODE XREF: _uenum_count_56+22j
		or	eax, 0FFFFFFFFh
		jmp	short loc_F2
; ---------------------------------------------------------------------------

loc_BD:					; CODE XREF: _uenum_count_56+2Aj
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_E6
		mov	esi, esp
		mov	eax, [ebp+arg_4]
		push	eax
		mov	ecx, [ebp+arg_0]
		push	ecx
		mov	edx, [ebp+arg_0]
		mov	eax, [edx+0Ch]
		call	eax
		add	esp, 8
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_F2
; ---------------------------------------------------------------------------
		jmp	short loc_F2
; ---------------------------------------------------------------------------

loc_E6:					; CODE XREF: _uenum_count_56+38j
		mov	eax, [ebp+arg_4]
		mov	dword ptr [eax], 10h
		or	eax, 0FFFFFFFFh

loc_F2:					; CODE XREF: _uenum_count_56+2Fj
					; _uenum_count_56+56j ...
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_count_56	endp

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
		;org 108h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_unextDefault_56
_uenum_unextDefault_56 proc near

var_E4		= byte ptr -0E4h
var_20		= dword	ptr -20h
var_14		= dword	ptr -14h
var_8		= dword	ptr -8
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 0E4h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_E4]
		mov	ecx, 39h ; '9'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	[ebp+var_8], 0
		mov	[ebp+var_14], 0
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+14h], 0
		jz	short loc_1A7
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		lea	ecx, [ebp+var_14]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax+14h]
		call	ecx
		add	esp, 0Ch
		cmp	esi, esp
		call	__RTC_CheckEsp
		mov	[ebp+var_20], eax
		cmp	[ebp+var_20], 0
		jz	short loc_1A5
		mov	eax, [ebp+var_14]
		lea	ecx, [eax+eax+2]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		call	__getBuffer
		add	esp, 8
		mov	[ebp+var_8], eax
		cmp	[ebp+var_8], 0
		jnz	short loc_18E
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 7
		jmp	short loc_1A5
; ---------------------------------------------------------------------------

loc_18E:				; CODE XREF: _uenum_unextDefault_56+79j
		mov	eax, [ebp+var_14]
		add	eax, 1
		push	eax
		mov	ecx, [ebp+var_8]
		push	ecx
		mov	edx, [ebp+var_20]
		push	edx
		call	_u_charsToUChars_56
		add	esp, 0Ch

loc_1A5:				; CODE XREF: _uenum_unextDefault_56+5Cj
					; _uenum_unextDefault_56+84j
		jmp	short loc_1B0
; ---------------------------------------------------------------------------

loc_1A7:				; CODE XREF: _uenum_unextDefault_56+33j
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 10h

loc_1B0:				; CODE XREF: _uenum_unextDefault_56:loc_1A5j
		cmp	[ebp+arg_4], 0
		jz	short loc_1BE
		mov	eax, [ebp+arg_4]
		mov	ecx, [ebp+var_14]
		mov	[eax], ecx

loc_1BE:				; CODE XREF: _uenum_unextDefault_56+ACj
		mov	eax, [ebp+var_8]
		push	edx
		mov	ecx, ebp
		push	eax
		lea	edx, $LN11
		call	@_RTC_CheckStackVars@8
		pop	eax
		pop	edx
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0E4h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_unextDefault_56 endp

; ---------------------------------------------------------------------------
		align 4
$LN11		dd 1			; DATA XREF: _uenum_unextDefault_56+BDo
		dd offset $LN10
$LN10		dd 0FFFFFFECh, 4	; DATA XREF: .text:000001ECo
		dd offset $LN9
$LN9		dd 6E656Ch		; DATA XREF: .text:000001F8o
_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 200h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

__getBuffer	proc near		; CODE XREF: _uenum_unextDefault_56+6Ap
					; _uenum_nextDefault_56+61p

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

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
		cmp	dword ptr [eax], 0
		jz	short loc_270
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax]
		mov	edx, [ecx]
		cmp	edx, [ebp+arg_4]
		jge	short loc_26E
		mov	eax, [ebp+arg_4]
		add	eax, _PAD
		mov	[ebp+arg_4], eax
		mov	eax, [ebp+arg_4]
		add	eax, 4
		push	eax
		mov	ecx, [ebp+arg_0]
		mov	edx, [ecx]
		push	edx
		call	_uprv_realloc_56
		add	esp, 8
		mov	ecx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax], 0
		jnz	short loc_264
		xor	eax, eax
		jmp	short loc_2AE
; ---------------------------------------------------------------------------

loc_264:				; CODE XREF: __getBuffer+5Ej
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax]
		mov	edx, [ebp+arg_4]
		mov	[ecx], edx

loc_26E:				; CODE XREF: __getBuffer+30j
		jmp	short loc_2A6
; ---------------------------------------------------------------------------

loc_270:				; CODE XREF: __getBuffer+24j
		mov	eax, [ebp+arg_4]
		add	eax, _PAD
		mov	[ebp+arg_4], eax
		mov	eax, [ebp+arg_4]
		add	eax, 4
		push	eax
		call	_uprv_malloc_56
		add	esp, 4
		mov	ecx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax], 0
		jnz	short loc_29C
		xor	eax, eax
		jmp	short loc_2AE
; ---------------------------------------------------------------------------

loc_29C:				; CODE XREF: __getBuffer+96j
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax]
		mov	edx, [ebp+arg_4]
		mov	[ecx], edx

loc_2A6:				; CODE XREF: __getBuffer:loc_26Ej
		mov	eax, [ebp+arg_0]
		mov	eax, [eax]
		add	eax, 4

loc_2AE:				; CODE XREF: __getBuffer+62j
					; __getBuffer+9Aj
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
__getBuffer	endp

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
		;org 2C4h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_nextDefault_56
_uenum_nextDefault_56 proc near

var_D8		= byte ptr -0D8h
var_14		= dword	ptr -14h
var_8		= dword	ptr -8
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 0D8h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp+var_D8]
		mov	ecx, 36h ; '6'
		mov	eax, 0CCCCCCCCh
		rep stosd
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+10h], 0
		jz	short loc_363
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax+10h]
		call	ecx
		add	esp, 0Ch
		cmp	esi, esp
		call	__RTC_CheckEsp
		mov	[ebp+var_14], eax
		cmp	[ebp+var_14], 0
		jnz	short loc_318
		xor	eax, eax
		jmp	short loc_36E
; ---------------------------------------------------------------------------

loc_318:				; CODE XREF: _uenum_nextDefault_56+4Ej
		mov	eax, [ebp+arg_4]
		mov	ecx, [eax]
		add	ecx, 1
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		call	__getBuffer
		add	esp, 8
		mov	[ebp+var_8], eax
		cmp	[ebp+var_8], 0
		jnz	short loc_343
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 7
		xor	eax, eax
		jmp	short loc_36E
; ---------------------------------------------------------------------------

loc_343:				; CODE XREF: _uenum_nextDefault_56+70j
		mov	eax, [ebp+arg_4]
		mov	ecx, [eax]
		add	ecx, 1
		push	ecx
		mov	edx, [ebp+var_8]
		push	edx
		mov	eax, [ebp+var_14]
		push	eax
		call	_u_UCharsToChars_56
		add	esp, 0Ch
		mov	eax, [ebp+var_8]
		jmp	short loc_36E
; ---------------------------------------------------------------------------
		jmp	short loc_36E
; ---------------------------------------------------------------------------

loc_363:				; CODE XREF: _uenum_nextDefault_56+25j
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 10h
		xor	eax, eax

loc_36E:				; CODE XREF: _uenum_nextDefault_56+52j
					; _uenum_nextDefault_56+7Dj ...
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0D8h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_nextDefault_56 endp

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
		;org 384h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_unext_56
_uenum_unext_56	proc near

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

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
		jz	short loc_3B0
		mov	eax, [ebp+arg_8]
		cmp	dword ptr [eax], 0
		jle	short loc_3B4

loc_3B0:				; CODE XREF: _uenum_unext_56+22j
		xor	eax, eax
		jmp	short loc_3EC
; ---------------------------------------------------------------------------

loc_3B4:				; CODE XREF: _uenum_unext_56+2Aj
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+10h], 0
		jz	short loc_3E1
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax+10h]
		call	ecx
		add	esp, 0Ch
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_3EC
; ---------------------------------------------------------------------------
		jmp	short loc_3EC
; ---------------------------------------------------------------------------

loc_3E1:				; CODE XREF: _uenum_unext_56+37j
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 10h
		xor	eax, eax

loc_3EC:				; CODE XREF: _uenum_unext_56+2Ej
					; _uenum_unext_56+59j ...
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_unext_56	endp

_text		ends

;
; Exported entry
;
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 400h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_next_56
_uenum_next_56	proc near

var_CC		= byte ptr -0CCh
var_8		= dword	ptr -8
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

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
		cmp	[ebp+arg_0], 0
		jz	short loc_42C
		mov	eax, [ebp+arg_8]
		cmp	dword ptr [eax], 0
		jle	short loc_430

loc_42C:				; CODE XREF: _uenum_next_56+22j
		xor	eax, eax
		jmp	short loc_499
; ---------------------------------------------------------------------------

loc_430:				; CODE XREF: _uenum_next_56+2Aj
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+14h], 0
		jz	short loc_48E
		cmp	[ebp+arg_4], 0
		jz	short loc_463
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax+14h]
		call	ecx
		add	esp, 0Ch
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_499
; ---------------------------------------------------------------------------
		jmp	short loc_48C
; ---------------------------------------------------------------------------

loc_463:				; CODE XREF: _uenum_next_56+3Dj
		mov	[ebp+var_8], 0
		mov	esi, esp
		mov	eax, [ebp+arg_8]
		push	eax
		lea	ecx, [ebp+var_8]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_0]
		mov	ecx, [eax+14h]
		call	ecx
		add	esp, 0Ch
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_499
; ---------------------------------------------------------------------------

loc_48C:				; CODE XREF: _uenum_next_56+61j
		jmp	short loc_499
; ---------------------------------------------------------------------------

loc_48E:				; CODE XREF: _uenum_next_56+37j
		mov	eax, [ebp+arg_8]
		mov	dword ptr [eax], 10h
		xor	eax, eax

loc_499:				; CODE XREF: _uenum_next_56+2Ej
					; _uenum_next_56+5Fj ...
		push	edx
		mov	ecx, ebp
		push	eax
		lea	edx, $LN11_0
		call	@_RTC_CheckStackVars@8
		pop	eax
		pop	edx
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0CCh
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_next_56	endp

; ---------------------------------------------------------------------------
		align 10h
$LN11_0		dd 1			; DATA XREF: _uenum_next_56+9Do
		dd offset $LN10_0
$LN10_0		dd 0FFFFFFF8h, 4	; DATA XREF: .text:000004C4o
		dd offset $LN9_0	; "dummyLength"
$LN9_0		db 'dummyLength',0      ; DATA XREF: .text:000004D0o
_text		ends

;
; Exported entry
;
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 4E0h
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _uenum_reset_56
_uenum_reset_56	proc near

var_C0		= byte ptr -0C0h
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

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
		jz	short loc_50C
		mov	eax, [ebp+arg_4]
		cmp	dword ptr [eax], 0
		jle	short loc_50E

loc_50C:				; CODE XREF: _uenum_reset_56+22j
		jmp	short loc_53E
; ---------------------------------------------------------------------------

loc_50E:				; CODE XREF: _uenum_reset_56+2Aj
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+18h], 0
		jz	short loc_535
		mov	esi, esp
		mov	eax, [ebp+arg_4]
		push	eax
		mov	ecx, [ebp+arg_0]
		push	ecx
		mov	edx, [ebp+arg_0]
		mov	eax, [edx+18h]
		call	eax
		add	esp, 8
		cmp	esi, esp
		call	__RTC_CheckEsp
		jmp	short loc_53E
; ---------------------------------------------------------------------------

loc_535:				; CODE XREF: _uenum_reset_56+35j
		mov	eax, [ebp+arg_4]
		mov	dword ptr [eax], 10h

loc_53E:				; CODE XREF: _uenum_reset_56:loc_50Cj
					; _uenum_reset_56+53j
		pop	edi
		pop	esi
		pop	ebx
		add	esp, 0C0h
		cmp	ebp, esp
		call	__RTC_CheckEsp
		mov	esp, ebp
		pop	ebp
		retn
_uenum_reset_56	endp

_text		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _uprv_free_56:near ; CODE	XREF: _uenum_close_56+3Bp
					; _uenum_close_56+61p
		extrn __RTC_CheckEsp:near ; CODE XREF: _uenum_close_56+56p
					; _uenum_close_56+74p ...
		extrn __RTC_Shutdown:near ; DATA XREF: .rtc$TMZ:__RTC_Shutdown_rtc$TMZo
		extrn __RTC_InitBase:near ; DATA XREF: .rtc$IMZ:__RTC_InitBase_rtc$IMZo
		extrn _u_charsToUChars_56:near ; CODE XREF: _uenum_unextDefault_56+95p
		extrn @_RTC_CheckStackVars@8:near ; CODE XREF: _uenum_unextDefault_56+C3p
					; _uenum_next_56+A3p
		extrn _uprv_malloc_56:near ; CODE XREF:	__getBuffer+83p
		extrn _uprv_realloc_56:near ; CODE XREF: __getBuffer+4Bp
		extrn _u_UCharsToChars_56:near ; CODE XREF: _uenum_nextDefault_56+90p


		end
