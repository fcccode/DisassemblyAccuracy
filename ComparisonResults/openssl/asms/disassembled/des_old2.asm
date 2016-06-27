;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	F7A4B03F24DC37081BE863A64637D36E
; Input	CRC32 :	8767E6E4

; File Name   :	C:\compspace\Diff\openssl\obj\des_old2.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public __ossl_096_des_random_seed
__ossl_096_des_random_seed proc	near

arg_0		= dword	ptr  4

		push	8
		push	[esp+4+arg_0]
		call	_RAND_seed
		add	esp, 8
		retn
__ossl_096_des_random_seed endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _RAND_seed:near	; CODE XREF: __ossl_096_des_random_seed+6p


		end