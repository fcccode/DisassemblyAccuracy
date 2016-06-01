;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	18A04E983126C782332DB8C63E5551C2
; Input	CRC32 :	5F2C23AF

; File Name   :	D:\compspace\objfiles\firefox\freehelper\ftlcdfil.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRTD"

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use32
		assume cs:_data
$SG6968		db '..\..\..\src\base\ftlcdfil.c',0
					; DATA XREF: _FT_Library_SetLcdFilterWeights+Fo
		align 10h
$SG6974		db '..\..\..\src\base\ftlcdfil.c',0 ; DATA XREF: _FT_Library_SetLcdFilter+Fo
		align 10h
_data		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 40h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _FT_Library_SetLcdFilter
_FT_Library_SetLcdFilter proc near

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+arg_4]
		mov	[ebp+arg_4], ecx
		push	offset $SG6974	; "..\\..\\..\\src\\base\\ftlcdfil.c"
		push	188h
		push	7
		call	_FT_Throw
		add	esp, 0Ch
		or	eax, 7
		cmp	ebp, esp
		call	__RTC_CheckEsp
		pop	ebp
		retn
_FT_Library_SetLcdFilter endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public _FT_Library_SetLcdFilterWeights
_FT_Library_SetLcdFilterWeights	proc near

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+arg_4]
		mov	[ebp+arg_4], ecx
		push	offset $SG6968	; "..\\..\\..\\src\\base\\ftlcdfil.c"
		push	17Dh
		push	7
		call	_FT_Throw
		add	esp, 0Ch
		or	eax, 7
		cmp	ebp, esp
		call	__RTC_CheckEsp
		pop	ebp
		retn
_FT_Library_SetLcdFilterWeights	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$IMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$IMZ
		;org 0A0h
; COMDAT (pick any)
__RTC_InitBase_rtc$IMZ dd offset __RTC_InitBase
_rtc$IMZ	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rtc$TMZ	segment	dword public 'DATA' use32
		assume cs:_rtc$TMZ
		;org 0A4h
; COMDAT (pick any)
__RTC_Shutdown_rtc$TMZ dd offset __RTC_Shutdown
_rtc$TMZ	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _FT_Throw:near	; CODE XREF: _FT_Library_SetLcdFilter+1Bp
					; _FT_Library_SetLcdFilterWeights+1Bp
		extrn __RTC_CheckEsp:near ; CODE XREF: _FT_Library_SetLcdFilter+28p
					; _FT_Library_SetLcdFilterWeights+28p
		extrn __RTC_InitBase:near ; DATA XREF: .rtc$IMZ:__RTC_InitBase_rtc$IMZo
		extrn __RTC_Shutdown:near ; DATA XREF: .rtc$TMZ:__RTC_Shutdown_rtc$TMZo


		end