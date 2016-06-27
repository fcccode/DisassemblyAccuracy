;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	7C898EC6FBFACC4B1152A1267F88CA29
; Input	CRC32 :	A12E9CC5

; File Name   :	C:\compspace\Diff\openssl\obj\rc2test.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_data		segment	para public 'DATA' use32
		assume cs:_data
_RC2key		dd 7 dup(0)		; DATA XREF: _main+23o
		dd 1000000h, 4 dup(0)
		dd 3020100h, 7060504h, 0B0A0908h, 0F0E0D0Ch
_RC2plain	dd 4 dup(0)		; DATA XREF: _main+4Do	_main+1CDo
		dd 2 dup(0FFFFFFFFh), 2	dup(0)
_RC2cipher	dd 838A191Ch		; DATA XREF: _main+6Cr	_main:loc_18Cr
dword_64	dd 0B728F08Dh		; DATA XREF: _main+76r
		dd 789C8221h, 74C0F9A9h, 1735DB13h, 9E8621D3h, 6201DC50h
		dd 317F75BDh
_data		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 80h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public ___local_stdio_printf_options
___local_stdio_printf_options proc near	; CODE XREF: __vfprintf_l+10p
					; _printf+19p
		mov	eax, offset ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage
		retn
___local_stdio_printf_options endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 88h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl _vfprintf_l(FILE *File, const char *Format, _locale_t Locale, va_list ArgList)
		public __vfprintf_l
__vfprintf_l	proc near

File		= dword	ptr  4
Format		= dword	ptr  8
Locale		= dword	ptr  0Ch
ArgList		= dword	ptr  10h

		push	[esp+ArgList]
		push	[esp+4+Locale]
		push	[esp+8+Format]
		push	[esp+0Ch+File]
		call	___local_stdio_printf_options
		push	dword ptr [eax+4]
		push	dword ptr [eax]
		call	dword ptr ds:__imp____stdio_common_vfprintf
		add	esp, 18h
		retn
__vfprintf_l	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0ACh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public _main
_main		proc near

var_120		= dword	ptr -120h
var_11C		= dword	ptr -11Ch
var_118		= byte ptr -118h
var_14		= byte ptr -14h
var_C		= byte ptr -0Ch
var_4		= dword	ptr -4
argc		= dword	ptr  8
argv		= dword	ptr  0Ch
envp		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		and	esp, 0FFFFFFF8h
		mov	eax, 124h
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+124h+var_4], eax
		push	ebx
		push	esi
		push	edi
		xor	esi, esi
		mov	ebx, offset _RC2key
		xor	edi, edi
		mov	[esp+130h+var_120], edi
		xchg	ax, ax

loc_DC:					; CODE XREF: _main+1D3j
		push	0
		push	ebx
		lea	eax, [esp+138h+var_118]
		push	10h
		push	eax
		call	_RC2_set_key
		push	1
		lea	eax, [esp+144h+var_118]
		push	eax
		lea	eax, [esp+148h+var_14]
		lea	edi, _RC2plain[edi]
		push	eax
		push	edi
		mov	[esp+150h+var_11C], edi
		call	_RC2_ecb_encrypt
		mov	ecx, [esp+150h+var_120]
		lea	edx, [esp+150h+var_14]
		add	esp, 20h
		mov	eax, _RC2cipher[ecx]
		cmp	eax, [edx]
		jnz	short loc_131
		mov	eax, dword_64[ecx]
		cmp	eax, [edx+4]
		jz	loc_1BE

loc_131:				; CODE XREF: _main+74j
		push	offset ??_C@_0BK@EJGLOPJ@ecb?5rc2?5error?5encrypting?6?$AA@ ; "ecb rc2 error encrypting\n"
		call	_printf
		push	offset ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@ ; "got	:"
		call	_printf
		add	esp, 8
		xor	esi, esi
		xchg	ax, ax

loc_14C:				; CODE XREF: _main+BAj
		movzx	eax, [esp+esi+130h+var_14]
		push	eax
		push	offset ??_C@_05BFHEBJNP@?$CF02X?5?$AA@ ; "%02X "
		call	_printf
		inc	esi
		add	esp, 8
		cmp	esi, 8
		jl	short loc_14C
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; "\n"
		call	_printf
		push	offset ??_C@_09PBKDEKON@expected?3?$AA@	; "expected:"
		call	_printf
		mov	edi, [esp+138h+var_120]
		add	esp, 8
		xor	esi, esi
		nop	dword ptr [eax+00000000h]

loc_18C:				; CODE XREF: _main+FAj
		movzx	eax, byte ptr _RC2cipher[edi+esi]
		push	eax
		push	offset ??_C@_05BFHEBJNP@?$CF02X?5?$AA@ ; "%02X "
		call	_printf
		inc	esi
		add	esp, 8
		cmp	esi, 8
		jl	short loc_18C
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; "\n"
		mov	esi, 14h
		call	_printf
		mov	edi, [esp+134h+var_11C]
		add	esp, 4

loc_1BE:				; CODE XREF: _main+7Fj
		push	0
		lea	eax, [esp+134h+var_118]
		push	eax
		lea	eax, [esp+138h+var_C]
		push	eax
		lea	eax, [esp+13Ch+var_14]
		push	eax
		call	_RC2_ecb_encrypt
		mov	eax, [edi]
		lea	ecx, [esp+140h+var_C]
		add	esp, 10h
		cmp	eax, [ecx]
		jnz	short loc_1F2
		mov	eax, [edi+4]
		cmp	eax, [ecx+4]
		jz	short loc_26B

loc_1F2:				; CODE XREF: _main+13Cj
		push	offset ??_C@_0BK@KDEFMCMJ@ecb?5RC2?5error?5decrypting?6?$AA@ ; "ecb RC2	error decrypting\n"
		call	_printf
		push	offset ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@ ; "got	:"
		call	_printf
		add	esp, 8
		xor	esi, esi
		nop

loc_20C:				; CODE XREF: _main+17Aj
		movzx	eax, [esp+esi+130h+var_14]
		push	eax
		push	offset ??_C@_05BFHEBJNP@?$CF02X?5?$AA@ ; "%02X "
		call	_printf
		inc	esi
		add	esp, 8
		cmp	esi, 8
		jl	short loc_20C
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; "\n"
		call	_printf
		push	offset ??_C@_09PBKDEKON@expected?3?$AA@	; "expected:"
		call	_printf
		add	esp, 8
		xor	esi, esi

loc_241:				; CODE XREF: _main+1ABj
		movzx	eax, byte ptr [edi+esi]
		push	eax
		push	offset ??_C@_05BFHEBJNP@?$CF02X?5?$AA@ ; "%02X "
		call	_printf
		inc	esi
		add	esp, 8
		cmp	esi, 8
		jl	short loc_241
		push	offset ??_C@_01EEMJAFIK@?6?$AA@	; "\n"
		call	_printf
		add	esp, 4
		mov	esi, 3

loc_26B:				; CODE XREF: _main+144j
		mov	edi, [esp+130h+var_120]
		add	ebx, 10h
		add	edi, 8
		mov	[esp+130h+var_120], edi
		cmp	ebx, offset _RC2plain
		jl	loc_DC
		test	esi, esi
		jnz	short loc_296
		push	offset ??_C@_0M@JNLFLNLM@ecb?5RC2?5ok?6?$AA@ ; "ecb RC2	ok\n"
		call	_printf
		add	esp, 4

loc_296:				; CODE XREF: _main+1DBj
		push	esi		; Code
		call	dword ptr ds:__imp__exit
_main		endp

; ---------------------------------------------------------------------------
$LN44		db 0CCh
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 2A0h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int printf(const char	*Format, ...)
		public _printf
_printf		proc near		; CODE XREF: _main+8Ap	_main+94p ...

Format		= dword	ptr  4
arg_4		= byte ptr  8

		push	esi
		mov	esi, [esp+4+Format]
		push	1
		call	dword ptr ds:__imp____acrt_iob_func
		add	esp, 4
		lea	ecx, [esp+4+arg_4]
		push	ecx
		push	0
		push	esi
		push	eax
		call	___local_stdio_printf_options
		push	dword ptr [eax+4]
		push	dword ptr [eax]
		call	dword ptr ds:__imp____stdio_common_vfprintf
		add	esp, 18h
		pop	esi
		retn
_printf		endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2D0h
; COMDAT (pick any)
		public ??_C@_0BK@EJGLOPJ@ecb?5rc2?5error?5encrypting?6?$AA@
; char `string'[]
??_C@_0BK@EJGLOPJ@ecb?5rc2?5error?5encrypting?6?$AA@ db	'ecb rc2 error encrypting',0Ah,0
					; DATA XREF: _main:loc_131o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2ECh
; COMDAT (pick any)
		public ??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@
; char `string'[]
??_C@_09DAIIHNJG@got?5?5?5?5?5?3?$AA@ db 'got     :',0 ; DATA XREF: _main+8Fo
					; _main+150o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2F8h
; COMDAT (pick any)
		public ??_C@_05BFHEBJNP@?$CF02X?5?$AA@
; char `string'[]
??_C@_05BFHEBJNP@?$CF02X?5?$AA@	db '%02X ',0 ; DATA XREF: _main+A9o _main+E9o ...
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 300h
; COMDAT (pick any)
		public ??_C@_01EEMJAFIK@?6?$AA@
; char `string'[2]
??_C@_01EEMJAFIK@?6?$AA@ db 0Ah,0	; DATA XREF: _main+BCo	_main+FCo ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 304h
; COMDAT (pick any)
		public ??_C@_09PBKDEKON@expected?3?$AA@
; char `string'[]
??_C@_09PBKDEKON@expected?3?$AA@ db 'expected:',0 ; DATA XREF: _main+C6o
					; _main+186o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 310h
; COMDAT (pick any)
		public ??_C@_0BK@KDEFMCMJ@ecb?5RC2?5error?5decrypting?6?$AA@
; char `string'[]
??_C@_0BK@KDEFMCMJ@ecb?5RC2?5error?5decrypting?6?$AA@ db 'ecb RC2 error decrypting',0Ah,0
					; DATA XREF: _main:loc_1F2o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 32Ch
; COMDAT (pick any)
		public ??_C@_0M@JNLFLNLM@ecb?5RC2?5ok?6?$AA@
; char `string'[]
??_C@_0M@JNLFLNLM@ecb?5RC2?5ok?6?$AA@ db 'ecb RC2 ok',0Ah,0 ; DATA XREF: _main+1DDo
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _printf+7p
					; DATA XREF: _printf+7r
		extrn __imp____stdio_common_vfprintf:near ; CODE XREF: __vfprintf_l+1Ap
					; _printf+23p
					; DATA XREF: ...
; void __cdecl __noreturn _exit(int Code)
		extrn __imp__exit:near	; CODE XREF: _main+1EBp
					; DATA XREF: _main+1EBr
		extrn _RC2_set_key:near	; CODE XREF: _main+3Ap
		extrn _RC2_ecb_encrypt:near ; CODE XREF: _main+59p _main+129p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near
		extrn __chkstk:near	; CODE XREF: _main+Bp
; `__local_stdio_printf_options'::`2'::_OptionsStorage
		extrn ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:near
					; DATA XREF: ___local_stdio_printf_optionso
		extrn ___security_cookie:near ;	DATA XREF: _main+10r


		end
