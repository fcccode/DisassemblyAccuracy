;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	2F738DEF22BC359DE031F0E98EC4CA0F
; Input	CRC32 :	FC787B8D

; File Name   :	C:\compspace\Diff\openssl\obj\randtest.obj
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
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

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
		;org 8
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

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
		;org 2Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public _main
_main		proc near

var_B1C		= dword	ptr -0B1Ch
var_B18		= xmmword ptr -0B18h
var_B08		= xmmword ptr -0B08h
var_AF8		= xmmword ptr -0AF8h
var_AE8		= xmmword ptr -0AE8h
var_AD8		= dword	ptr -0AD8h
var_AD4		= byte ptr -0AD4h
var_AC4		= dword	ptr -0AC4h
var_A54		= dword	ptr -0A54h
var_A50		= dword	ptr -0A50h
var_9CC		= dword	ptr -9CCh
var_9C8		= byte ptr -9C8h
var_4		= dword	ptr -4
argc		= dword	ptr  4
argv		= dword	ptr  8
envp		= dword	ptr  0Ch

		mov	eax, 0B1Ch
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+0B1Ch+var_4], eax
		push	edi
		lea	eax, [esp+0B20h+var_9C8]
		xor	edi, edi
		push	9C4h
		push	eax
		call	_RAND_pseudo_bytes
		add	esp, 8
		test	eax, eax
		jns	short loc_74
		push	offset ??_C@_0DI@OJDJKLBG@init?5failed?0?5the?5rand?5method?5is?5@ ; "init failed, the rand method is not pro"...
		call	_printf
		mov	edi, 1
		jmp	loc_3DF
; ---------------------------------------------------------------------------

loc_74:					; CODE XREF: _main+32j
		push	ebx
		xorps	xmm0, xmm0
		push	ebp
		xor	ebp, ebp
		xor	eax, eax
		push	esi
		movups	[esp+0B2Ch+var_B18], xmm0
		movups	[esp+0B2Ch+var_B08], xmm0
		movups	[esp+0B2Ch+var_AF8], xmm0
		movups	[esp+0B2Ch+var_AE8], xmm0
		db	66h, 66h
		nop	word ptr [eax+eax+00000000h]

loc_9C:					; CODE XREF: _main+7Fj
		mov	[esp+eax*4+0B2Ch+var_A50], edi
		mov	[esp+eax*4+0B2Ch+var_AD8], edi
		inc	eax
		cmp	eax, 22h ; '"'
		jl	short loc_9C
		xor	esi, esi
		xor	eax, eax
		xor	edi, edi
		nop	word ptr [eax+eax+00000000h]

loc_BC:					; CODE XREF: _main+112j
		movzx	ebx, [esp+edi+0B2Ch+var_9C8]
		mov	ecx, ebx
		and	ecx, 0Fh
		inc	dword ptr [esp+ecx*4+0B2Ch+var_B18]
		mov	ecx, ebx
		sar	ecx, 4
		and	ecx, 0Fh
		inc	dword ptr [esp+ecx*4+0B2Ch+var_B18]
		mov	ecx, 8
		mov	[esp+0B2Ch+var_B1C], ecx

loc_E2:					; CODE XREF: _main+109j
		mov	edx, ebx
		and	edx, 1
		cmp	edx, esi
		jnz	short loc_EE
		inc	eax
		jmp	short loc_127
; ---------------------------------------------------------------------------

loc_EE:					; CODE XREF: _main+BDj
		cmp	eax, 22h ; '"'
		jle	short loc_FA
		mov	eax, 22h ; '"'
		jmp	short loc_FE
; ---------------------------------------------------------------------------

loc_FA:					; CODE XREF: _main+C5j
		test	eax, eax
		jz	short loc_120

loc_FE:					; CODE XREF: _main+CCj
		mov	ecx, esi
		shl	ecx, 4
		add	ecx, esi
		lea	ecx, [eax+ecx*2]
		inc	dword ptr [esp+ecx*4+0B2Ch+var_AE8+0Ch]
		mov	ecx, [esp+0B2Ch+var_B1C]
		cmp	eax, 6
		jle	short loc_120
		mov	eax, esi
		shl	eax, 4
		add	eax, esi
		inc	[esp+eax*8+0B2Ch+var_AC4]

loc_120:				; CODE XREF: _main+D0j	_main+E7j
		mov	esi, edx
		mov	eax, 1

loc_127:				; CODE XREF: _main+C0j
		test	edx, edx
		jz	short loc_12C
		inc	ebp

loc_12C:				; CODE XREF: _main+FDj
		sar	ebx, 1
		sub	ecx, 1
		mov	[esp+0B2Ch+var_B1C], ecx
		jnz	short loc_E2
		inc	edi
		cmp	edi, 9C4h
		jl	loc_BC
		cmp	eax, 22h ; '"'
		jle	short loc_150
		mov	eax, 22h ; '"'
		jmp	short loc_154
; ---------------------------------------------------------------------------

loc_150:				; CODE XREF: _main+11Bj
		test	eax, eax
		jz	short loc_162

loc_154:				; CODE XREF: _main+122j
		mov	ecx, esi
		shl	ecx, 4
		add	ecx, esi
		lea	eax, [eax+ecx*2]
		inc	dword ptr [esp+eax*4+0B2Ch+var_AE8+0Ch]

loc_162:				; CODE XREF: _main+126j
		mov	edi, 0
		cmp	ebp, 25B6h
		jbe	short loc_177
		cmp	ebp, 286Ah
		jb	short loc_18A

loc_177:				; CODE XREF: _main+141j
		push	ebp
		push	offset ??_C@_0BG@MCHFEKEE@test?51?5failed?0?5X?$DN?$CFlu?6?$AA@	; "test	1 failed, X=%lu\n"
		call	_printf
		add	esp, 8
		mov	edi, 1

loc_18A:				; CODE XREF: _main+149j
		push	offset ??_C@_0N@EBHDIBBK@test?51?5done?6?$AA@ ;	"test 1	done\n"
		call	_printf
		add	esp, 4
		xor	ebx, ebx
		xor	ecx, ecx
		cmp	dword ptr ds:___isa_available, 2
		jl	short loc_1FE
		xorps	xmm2, xmm2
		lea	eax, [esp+0B2Ch+var_B08]
		movaps	xmm1, xmm2
		lea	edx, [ebx+2]
		lea	ecx, [ebx+10h]
		nop	dword ptr [eax+eax+00000000h]

loc_1BC:				; CODE XREF: _main+1B0j
		lea	eax, [eax+20h]
		movups	xmm0, xmmword ptr [eax-30h]
		pmulld	xmm0, xmm0
		paddd	xmm2, xmm0
		movups	xmm0, xmmword ptr [eax-20h]
		pmulld	xmm0, xmm0
		paddd	xmm1, xmm0
		sub	edx, 1
		jnz	short loc_1BC
		paddd	xmm1, xmm2
		movaps	xmm0, xmm1
		psrldq	xmm0, 8
		paddd	xmm1, xmm0
		movaps	xmm0, xmm1
		psrldq	xmm0, 4
		paddd	xmm1, xmm0
		movd	ebx, xmm1

loc_1FE:				; CODE XREF: _main+176j
		xor	edx, edx
		xor	esi, esi
		cmp	ecx, 10h
		jge	short loc_240
		mov	eax, 10h
		sub	eax, ecx
		cmp	eax, 2
		jl	short loc_22D

loc_213:				; CODE XREF: _main+1FFj
		mov	eax, dword ptr [esp+ecx*4+0B2Ch+var_B18]
		imul	eax, eax
		add	edx, eax
		mov	eax, dword ptr [esp+ecx*4+0B2Ch+var_B18+4]
		imul	eax, eax
		add	ecx, 2
		add	esi, eax
		cmp	ecx, 0Fh
		jl	short loc_213

loc_22D:				; CODE XREF: _main+1E5j
		cmp	ecx, 10h
		jge	short loc_23B
		mov	eax, dword ptr [esp+ecx*4+0B2Ch+var_B18]
		imul	eax, eax
		add	ebx, eax

loc_23B:				; CODE XREF: _main+204j
		lea	eax, [esi+edx]
		add	ebx, eax

loc_240:				; CODE XREF: _main+1D9j
		lea	ecx, ds:0[ebx*8]
		mov	eax, 51EB851Fh
		imul	ecx
		sar	edx, 3
		mov	esi, edx
		shr	esi, 1Fh
		add	esi, 0FFF85EE0h
		add	esi, edx
		cmp	esi, 67h ; 'g'
		jle	short loc_26B
		cmp	esi, 166Ch
		jl	short loc_291

loc_26B:				; CODE XREF: _main+235j
		mov	eax, 51EB851Fh
		imul	esi
		sar	edx, 5
		mov	ecx, edx
		shr	ecx, 1Fh
		add	ecx, edx
		imul	eax, ecx, 64h
		sub	esi, eax
		push	esi
		push	ecx
		push	offset ??_C@_0BM@HOPNCAAM@test?52?5failed?0?5X?$DN?$CFld?4?$CF02ld?6?$AA@ ; "test 2 failed, X=%ld.%02ld\n"
		call	_printf
		add	esp, 0Ch
		inc	edi

loc_291:				; CODE XREF: _main+23Dj
		push	offset ??_C@_0N@MPPMIGPJ@test?52?5done?6?$AA@ ;	"test 2	done\n"
		call	_printf
		add	esp, 4
		lea	ebx, [esp+0B2Ch+var_AD4]
		xor	esi, esi
		nop	dword ptr [eax+eax+00000000h]

loc_2AC:				; CODE XREF: _main+357j
		mov	eax, [ebx-4]
		cmp	eax, 8DBh
		jbe	short loc_2BD
		cmp	eax, 0AADh
		jb	short loc_2CF

loc_2BD:				; CODE XREF: _main+288j
		push	eax
		push	1
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_2CF:				; CODE XREF: _main+28Fj
		mov	eax, [ebx]
		cmp	eax, 437h
		jbe	short loc_2DF
		cmp	eax, 58Dh
		jb	short loc_2F1

loc_2DF:				; CODE XREF: _main+2AAj
		push	eax
		push	2
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_2F1:				; CODE XREF: _main+2B1j
		mov	eax, [ebx+4]
		cmp	eax, 1F6h
		jbe	short loc_302
		cmp	eax, 2ECh
		jb	short loc_314

loc_302:				; CODE XREF: _main+2CDj
		push	eax
		push	3
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_314:				; CODE XREF: _main+2D4j
		mov	eax, [ebx+8]
		cmp	eax, 0DFh ; '�'
		jbe	short loc_325
		cmp	eax, 192h
		jb	short loc_337

loc_325:				; CODE XREF: _main+2F0j
		push	eax
		push	4
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_337:				; CODE XREF: _main+2F7j
		mov	eax, [ebx+0Ch]
		cmp	eax, 5Ah ; 'Z'
		jbe	short loc_346
		cmp	eax, 0DFh ; '�'
		jb	short loc_358

loc_346:				; CODE XREF: _main+311j
		push	eax
		push	5
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_358:				; CODE XREF: _main+318j
		mov	eax, [ebx+10h]
		cmp	eax, 5Ah ; 'Z'
		jbe	short loc_367
		cmp	eax, 0DFh ; '�'
		jb	short loc_379

loc_367:				; CODE XREF: _main+332j
		push	eax
		push	6
		push	esi
		push	offset ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 3	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_379:				; CODE XREF: _main+339j
		inc	esi
		add	ebx, 88h ; '�'
		cmp	esi, 2
		jl	loc_2AC
		push	offset ??_C@_0N@DFGIGGH@test?53?5done?6?$AA@ ; "test 3 done\n"
		call	_printf
		mov	eax, [esp+0B30h+var_A54]
		add	esp, 4
		pop	esi
		pop	ebp
		pop	ebx
		test	eax, eax
		jz	short loc_3B7
		push	eax
		push	22h ; '"'
		push	0
		push	offset ??_C@_0CG@NBIBDJNB@test?54?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 4	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_3B7:				; CODE XREF: _main+376j
		mov	eax, [esp+0B20h+var_9CC]
		test	eax, eax
		jz	short loc_3D5
		push	eax
		push	22h ; '"'
		push	1
		push	offset ??_C@_0CG@NBIBDJNB@test?54?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ ;	"test 4	failed,	bit=%d run=%d num=%lu\n"
		call	_printf
		add	esp, 10h
		inc	edi

loc_3D5:				; CODE XREF: _main+394j
		push	offset ??_C@_0N@JJDIPHO@test?54?5done?6?$AA@ ; "test 4 done\n"
		call	_printf

loc_3DF:				; CODE XREF: _main+43j
		add	esp, 4

$err$92:
		xor	eax, eax
		test	edi, edi
		setnz	al
		push	eax		; Code
		call	dword ptr ds:__imp__exit
_main		endp

; ---------------------------------------------------------------------------
		db 5Fh
$LN91:					; $LN89
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3F4h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int printf(const char	*Format, ...)
		public _printf
_printf		proc near		; CODE XREF: _main+39p	_main+151p ...

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
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 424h
; COMDAT (pick any)
		public ??_C@_0DI@OJDJKLBG@init?5failed?0?5the?5rand?5method?5is?5@
; char `string'[]
??_C@_0DI@OJDJKLBG@init?5failed?0?5the?5rand?5method?5is?5@ db 'init failed, the rand method is not properly installed',0Ah,0
					; DATA XREF: _main+34o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 45Ch
; COMDAT (pick any)
		public ??_C@_0BG@MCHFEKEE@test?51?5failed?0?5X?$DN?$CFlu?6?$AA@
; char `string'[]
??_C@_0BG@MCHFEKEE@test?51?5failed?0?5X?$DN?$CFlu?6?$AA@ db 'test 1 failed, X=%lu',0Ah,0
					; DATA XREF: _main+14Co
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 474h
; COMDAT (pick any)
		public ??_C@_0N@EBHDIBBK@test?51?5done?6?$AA@
; char `string'[]
??_C@_0N@EBHDIBBK@test?51?5done?6?$AA@ db 'test 1 done',0Ah,0 ; DATA XREF: _main:loc_18Ao
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 484h
; COMDAT (pick any)
		public ??_C@_0BM@HOPNCAAM@test?52?5failed?0?5X?$DN?$CFld?4?$CF02ld?6?$AA@
; char `string'[]
??_C@_0BM@HOPNCAAM@test?52?5failed?0?5X?$DN?$CFld?4?$CF02ld?6?$AA@ db 'test 2 failed, X=%ld.%02ld',0Ah,0
					; DATA XREF: _main+257o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4A0h
; COMDAT (pick any)
		public ??_C@_0N@MPPMIGPJ@test?52?5done?6?$AA@
; char `string'[]
??_C@_0N@MPPMIGPJ@test?52?5done?6?$AA@ db 'test 2 done',0Ah,0 ; DATA XREF: _main:loc_291o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4B0h
; COMDAT (pick any)
		public ??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@
; char `string'[]
??_C@_0CG@FBFMMLAI@test?53?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ db 'test 3 failed, bit=%d run=%d num=%lu',0Ah,0
					; DATA XREF: _main+295o _main+2B7o ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4D8h
; COMDAT (pick any)
		public ??_C@_0N@DFGIGGH@test?53?5done?6?$AA@
; char `string'[]
??_C@_0N@DFGIGGH@test?53?5done?6?$AA@ db 'test 3 done',0Ah,0 ; DATA XREF: _main+35Do
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4E8h
; COMDAT (pick any)
		public ??_C@_0CG@NBIBDJNB@test?54?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@
; char `string'[]
??_C@_0CG@NBIBDJNB@test?54?5failed?0?5bit?$DN?$CFd?5run?$DN?$CFd?5num@ db 'test 4 failed, bit=%d run=%d num=%lu',0Ah,0
					; DATA XREF: _main+37Do _main+39Bo
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 510h
; COMDAT (pick any)
		public ??_C@_0N@JJDIPHO@test?54?5done?6?$AA@
; char `string'[]
??_C@_0N@JJDIPHO@test?54?5done?6?$AA@ db 'test 4 done',0Ah,0 ; DATA XREF: _main:loc_3D5o
		align 10h
_rdata		ends

;
; Alias: ___isa_available
;
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use32
		assume cs:_bss
		;org 520h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing
		public ___isa_available_default
___isa_available_default dd ?
_bss		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _printf+7p
					; DATA XREF: _printf+7r
		extrn __imp____stdio_common_vfprintf:near ; CODE XREF: __vfprintf_l+1Ap
					; _printf+23p
					; DATA XREF: ...
; void __cdecl __noreturn _exit(int Code)
		extrn __imp__exit:near	; CODE XREF: _main+3BEp
					; DATA XREF: _main+3BEr
		extrn _RAND_pseudo_bytes:near ;	CODE XREF: _main+28p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near
		extrn __chkstk:near	; CODE XREF: _main+5p
; `__local_stdio_printf_options'::`2'::_OptionsStorage
		extrn ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:near
					; DATA XREF: ___local_stdio_printf_optionso
		extrn ___isa_available:near ; DATA XREF: _main+16Fr
		extrn ___security_cookie:near ;	DATA XREF: _main+Ar


		end