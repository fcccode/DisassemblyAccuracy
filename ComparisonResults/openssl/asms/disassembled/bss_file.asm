;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	406F602F164CBDD974F4A56DAB3F5C15
; Input	CRC32 :	F171152A

; File Name   :	C:\compspace\Diff\openssl\obj\bss_file.obj
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
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl file_write(int, void *Str, size_t	Size)
_file_write	proc near		; DATA XREF: .data:000005DCo

arg_0		= dword	ptr  4
Str		= dword	ptr  8
Size		= dword	ptr  0Ch

		mov	eax, [esp+arg_0]
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_47
		mov	ecx, [esp+Str]
		test	ecx, ecx
		jz	short loc_47
		test	dword ptr [eax+14h], 8000h
		push	esi
		push	dword ptr [eax+20h] ; File
		mov	esi, [esp+8+Size]
		push	1		; Count
		push	esi		; Size
		push	ecx		; Str
		jz	short loc_37
		call	dword ptr _OPENSSL_UplinkTable+1Ch
		add	esp, 10h
		test	eax, eax
		cmovnz	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_37:					; CODE XREF: _file_write+25j
		call	dword ptr ds:__imp__fwrite
		add	esp, 10h
		test	eax, eax
		cmovnz	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_47:					; CODE XREF: _file_write+8j
					; _file_write+10j
		xor	eax, eax
		retn
_file_write	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl file_read(int, void *DstBuf, size_t Count)
_file_read	proc near		; DATA XREF: .data:000005E0o

arg_0		= dword	ptr  4
DstBuf		= dword	ptr  8
Count		= dword	ptr  0Ch

		push	esi
		mov	esi, [esp+4+arg_0]
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_F6
		mov	eax, [esp+4+DstBuf]
		test	eax, eax
		jz	loc_F6
		test	dword ptr [esi+14h], 8000h
		push	edi
		push	dword ptr [esi+20h] ; File
		push	[esp+0Ch+Count]	; Count
		push	1		; ElementSize
		push	eax		; DstBuf
		jz	short loc_83
		call	dword ptr _OPENSSL_UplinkTable+18h
		jmp	short loc_89
; ---------------------------------------------------------------------------

loc_83:					; CODE XREF: _file_read+2Dj
		call	dword ptr ds:__imp__fread

loc_89:					; CODE XREF: _file_read+35j
		mov	edi, eax
		add	esp, 10h
		test	edi, edi
		jnz	short loc_A6
		test	dword ptr [esi+14h], 8000h
		jz	short loc_A6
		push	dword ptr [esi+20h]
		call	dword ptr _OPENSSL_UplinkTable+3Ch
		jmp	short loc_AF
; ---------------------------------------------------------------------------

loc_A6:					; CODE XREF: _file_read+44j
					; _file_read+4Dj
		push	dword ptr [esi+20h] ; File
		call	dword ptr ds:__imp__ferror

loc_AF:					; CODE XREF: _file_read+58j
		add	esp, 4
		test	eax, eax
		jz	short loc_F1
		push	0FBh ; '�'
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		call	dword ptr ds:__imp__GetLastError@0 ; GetLastError()
		push	eax
		push	0Bh
		push	2
		call	_ERR_put_error
		push	0FCh ; '�'
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		push	2
		push	82h ; '�'
		push	20h ; ' '
		call	_ERR_put_error
		add	esp, 28h
		or	eax, 0FFFFFFFFh
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_F1:					; CODE XREF: _file_read+68j
		mov	eax, edi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_F6:					; CODE XREF: _file_read+9j
					; _file_read+15j
		xor	eax, eax
		pop	esi
		retn
_file_read	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0FCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl file_puts(int, void *Str)
_file_puts	proc near		; DATA XREF: .data:000005E4o

arg_0		= dword	ptr  4
Str		= dword	ptr  8

		mov	ecx, [esp+Str]
		push	esi
		mov	esi, ecx
		lea	edx, [esi+1]
		nop	word ptr [eax+eax+00h]

loc_10C:				; CODE XREF: _file_puts+15j
		mov	al, [esi]
		inc	esi
		test	al, al
		jnz	short loc_10C
		mov	eax, [esp+4+arg_0]
		sub	esi, edx
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_153
		test	ecx, ecx
		jz	short loc_153
		test	dword ptr [eax+14h], 8000h
		push	dword ptr [eax+20h] ; File
		push	1		; Count
		push	esi		; Size
		push	ecx		; Str
		jz	short loc_143
		call	dword ptr _OPENSSL_UplinkTable+1Ch
		add	esp, 10h
		test	eax, eax
		cmovnz	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_143:				; CODE XREF: _file_puts+35j
		call	dword ptr ds:__imp__fwrite
		add	esp, 10h
		test	eax, eax
		cmovnz	eax, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_153:				; CODE XREF: _file_puts+21j
					; _file_puts+25j
		xor	eax, eax
		pop	esi
		retn
_file_puts	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 158h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl file_gets(int, char *Buf,	int MaxCount)
_file_gets	proc near		; DATA XREF: .data:000005E8o

arg_0		= dword	ptr  4
Buf		= dword	ptr  8
MaxCount	= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		push	esi
		mov	esi, [esp+4+Buf]
		mov	byte ptr [esi],	0
		test	dword ptr [ecx+14h], 8000h
		push	dword ptr [ecx+20h] ; File
		push	[esp+8+MaxCount] ; MaxCount
		push	esi		; Buf
		jz	short loc_186
		call	dword ptr _OPENSSL_UplinkTable+14h
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_193

loc_182:				; CODE XREF: _file_gets+39j
					; _file_gets+3Ej
		xor	eax, eax

$err$13:
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_186:				; CODE XREF: _file_gets+1Bj
		call	dword ptr ds:__imp__fgets
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_182

loc_193:				; CODE XREF: _file_gets+28j
		cmp	byte ptr [esi],	0
		jz	short loc_182
		lea	eax, [esi+1]

loc_19B:				; CODE XREF: _file_gets+48j
		mov	cl, [esi]
		inc	esi
		test	cl, cl
		jnz	short loc_19B
		sub	esi, eax
		mov	eax, esi
		pop	esi
		retn
_file_gets	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl file_ctrl(CHAR, int, __int32 Offset, FILE	*File)
_file_ctrl	proc near		; DATA XREF: .data:000005ECo

arg_0		= byte ptr  4
arg_4		= dword	ptr  8
Offset		= dword	ptr  0Ch
File		= dword	ptr  10h

		mov	eax, [esp+arg_4]
		push	ebx
		push	esi
		mov	esi, dword ptr [esp+8+arg_0]
		dec	eax
		mov	ebx, 1
		push	edi
		mov	ecx, [esi+20h]
		cmp	eax, 84h ; '�'  ; switch 133 cases
		ja	$LN41		; jumptable 000001CE default case
		movzx	eax, ds:$LN43[eax]
		jmp	ds:$LN50[eax*4]	; switch jump
; ---------------------------------------------------------------------------

$LN4:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		test	dword ptr [esi+14h], 8000h ; jumptable 000001CE	cases 0,127
		push	0		; Origin
		push	[esp+10h+Offset] ; Offset
		push	ecx		; File
		jz	short loc_1F4
		call	dword ptr _OPENSSL_UplinkTable+30h
		add	esp, 0Ch
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_1F4:				; CODE XREF: _file_ctrl+3Bj
		call	dword ptr ds:__imp__fseek
		add	esp, 0Ch
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN7:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		test	dword ptr [esi+14h], 8000h ; jumptable 000001CE	case 1
		push	ecx		; File
		jz	short loc_21C
		call	dword ptr _OPENSSL_UplinkTable+24h
		add	esp, 4
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_21C:				; CODE XREF: _file_ctrl+63j
		call	dword ptr ds:__imp__feof
		add	esp, 4
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN10:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		test	dword ptr [esi+14h], 8000h ; jumptable 000001CE	cases 2,132
		push	ecx		; File
		jz	short loc_244
		call	dword ptr _OPENSSL_UplinkTable+34h
		add	esp, 4
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_244:				; CODE XREF: _file_ctrl+8Bj
		call	dword ptr ds:__imp__ftell
		add	esp, 4
		mov	ebx, eax
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN13:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		push	esi		; jumptable 000001CE case 105
		call	_file_free
		mov	eax, [esp+10h+Offset]
		mov	edi, [esp+10h+File]
		and	eax, 1
		push	0
		mov	[esi+10h], eax
		mov	[esi+20h], edi
		mov	[esi+0Ch], ebx
		call	dword ptr ds:__imp____acrt_iob_func
		add	esp, 8
		cmp	edi, eax
		jb	short loc_29C
		push	0
		call	dword ptr ds:__imp____acrt_iob_func
		add	eax, 0Ch
		add	esp, 4
		cmp	edi, eax
		jnb	short loc_29C
		push	8000h
		push	esi
		call	_BIO_clear_flags
		add	esp, 8

loc_29C:				; CODE XREF: _file_ctrl+D2j
					; _file_ctrl+E4j
		test	dword ptr [esi+14h], 8000h
		jz	short loc_2C9
		mov	eax, [esp+0Ch+Offset]
		and	al, 10h
		neg	al
		sbb	al, al
		and	al, 12h
		add	al, 62h	; 'b'
		movzx	eax, al
		push	eax
		push	dword ptr [esi+20h]
		call	dword ptr _OPENSSL_UplinkTable+20h
		add	esp, 8
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_2C9:				; CODE XREF: _file_ctrl+FBj
		push	edi		; File
		call	dword ptr ds:__imp___fileno
		add	esp, 4
		test	byte ptr [esp+0Ch+Offset], 10h
		jz	short loc_2EF
		push	4000h
		push	eax
		call	dword ptr ds:__imp___setmode
		add	esp, 8
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_2EF:				; CODE XREF: _file_ctrl+130j
		push	8000h
		push	eax
		call	dword ptr ds:__imp___setmode
		add	esp, 8
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN19:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		push	esi		; jumptable 000001CE case 107
		call	_file_free
		mov	ecx, [esp+10h+Offset]
		add	esp, 4
		mov	eax, ecx
		and	eax, 1
		mov	[esi+10h], eax
		test	cl, 8
		jz	short loc_337
		lea	eax, [esp+0Ch+arg_0]
		push	4
		test	cl, 2
		jz	short loc_330
		push	offset ??_C@_02DPNLHKJD@a?$CL?$AA@ ; "a+"
		jmp	short loc_36B
; ---------------------------------------------------------------------------

loc_330:				; CODE XREF: _file_ctrl+17Fj
		push	offset ??_C@_01MCMALHOG@a?$AA@ ; `string'
		jmp	short loc_36B
; ---------------------------------------------------------------------------

loc_337:				; CODE XREF: _file_ctrl+174j
		mov	eax, ecx
		and	eax, 6
		cmp	al, 6
		jnz	short loc_349
		push	4
		push	offset ??_C@_02CBLLGHLK@r?$CL?$AA@ ; `string'
		jmp	short loc_367
; ---------------------------------------------------------------------------

loc_349:				; CODE XREF: _file_ctrl+196j
		test	cl, 4
		jz	short loc_357
		push	4
		push	offset ??_C@_01NOFIACDB@w?$AA@ ; `string'
		jmp	short loc_367
; ---------------------------------------------------------------------------

loc_357:				; CODE XREF: _file_ctrl+1A4j
		test	cl, 2
		jz	loc_431
		push	4
		push	offset ??_C@_01KDCPPGHE@r?$AA@ ; `string'

loc_367:				; CODE XREF: _file_ctrl+19Fj
					; _file_ctrl+1ADj
		lea	eax, [esp+14h+arg_0]

loc_36B:				; CODE XREF: _file_ctrl+186j
					; _file_ctrl+18Dj
		push	eax
		call	_BUF_strlcpy
		lea	edi, [esp+18h+arg_0]
		add	esp, 0Ch
		dec	edi
		test	byte ptr [esp+0Ch+Offset], 10h
		jnz	short loc_398

loc_380:				; CODE XREF: _file_ctrl+1E0j
		mov	al, [edi+1]
		lea	edi, [edi+1]
		test	al, al
		jnz	short loc_380
		mov	ax, ds:??_C@_01OJONOECF@b?$AA@ ; `string'
		jmp	short loc_3A8
; ---------------------------------------------------------------------------
		align 8

loc_398:				; CODE XREF: _file_ctrl+1D6j
					; _file_ctrl+1F8j
		mov	al, [edi+1]
		lea	edi, [edi+1]
		test	al, al
		jnz	short loc_398
		mov	ax, ds:??_C@_01PFHFFBPC@t?$AA@ ; `string'

loc_3A8:				; CODE XREF: _file_ctrl+1E8j
		mov	[edi], ax
		lea	eax, [esp+0Ch+arg_0]
		mov	edi, [esp+0Ch+File]
		push	eax		; LPCSTR
		push	edi		; lpMultiByteStr
		call	_file_fopen
		add	esp, 8
		test	eax, eax
		jnz	short loc_417
		push	18Eh
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		call	dword ptr ds:__imp__GetLastError@0 ; GetLastError()
		push	eax
		push	1
		push	2
		call	_ERR_put_error
		push	offset ??_C@_02HJPKOJGD@?8?$CJ?$AA@ ; "')"
		lea	eax, [esp+24h+arg_0]
		push	eax
		push	offset ??_C@_03IMMLKIF@?8?0?8?$AA@ ; `string'
		push	edi
		push	offset ??_C@_07JMDFGFFH@fopen?$CI?8?$AA@ ; "fopen('"
		push	5
		call	_ERR_add_error_data
		push	190h
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"

loc_401:				; DATA XREF: .data:_methods_filepo
		push	2
		push	74h ; 't'
		push	20h ; ' '
		call	_ERR_put_error
		add	esp, 40h

$LN41:					; CODE XREF: _file_ctrl+19j
					; _file_ctrl+26j
					; DATA XREF: ...
		xor	ebx, ebx	; jumptable 000001CE default case

$LN2:					; CODE XREF: _file_ctrl+26j
					; _file_ctrl+2AFj
					; DATA XREF: ...
		pop	edi		; jumptable 000001CE case 11
		pop	esi
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_417:				; CODE XREF: _file_ctrl+217j
		push	8000h
		push	esi
		mov	[esi+20h], eax
		mov	[esi+0Ch], ebx
		call	_BIO_clear_flags
		add	esp, 8
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_431:				; CODE XREF: _file_ctrl+1B2j
		push	17Ch
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		push	65h ; 'e'
		push	74h ; 't'
		push	20h ; ' '
		call	_ERR_put_error
		add	esp, 14h
		xor	ebx, ebx
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN33:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		mov	eax, [esp+0Ch+File] ; jumptable	000001CE case 106
		test	eax, eax
		jz	short $LN2	; jumptable 000001CE case 11
		pop	edi
		mov	[eax], ecx
		mov	eax, ebx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN35:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		mov	ebx, [esi+10h]	; jumptable 000001CE case 7
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN36:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		mov	eax, [esp+0Ch+Offset] ;	jumptable 000001CE case	8
		pop	edi
		mov	[esi+10h], eax
		mov	eax, ebx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

$LN37:					; CODE XREF: _file_ctrl+26j
					; DATA XREF: .text$mn:$LN50o
		test	dword ptr [esi+14h], 8000h ; jumptable 000001CE	case 10
		push	ecx		; File
		jz	short loc_490
		call	dword ptr _OPENSSL_UplinkTable+38h
		add	esp, 4
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_490:				; CODE XREF: _file_ctrl+2D7j
		call	dword ptr ds:__imp__fflush
		add	esp, 4
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
_file_ctrl	endp

; ---------------------------------------------------------------------------
		align 10h
$LN50		dd offset $LN4,	offset $LN7, offset $LN10, offset $LN35
					; DATA XREF: _file_ctrl+26r
		dd offset $LN36, offset	$LN37, offset $LN2, offset $LN13 ; jump	table for switch statement
		dd offset $LN33, offset	$LN19, offset $LN41
$LN43		db	0,     1,     2,   0Ah ; DATA XREF: _file_ctrl+1Fr
		db    0Ah,   0Ah,   0Ah,     3 ; indirect table	for switch statement
		db	4,   0Ah,     5,     6
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,     7,     8,     9
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,     0
		db    0Ah,   0Ah,   0Ah,   0Ah
		db	2
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 554h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_file_new	proc near		; DATA XREF: .data:000005F0o

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	dword ptr [eax+0Ch], 0
		mov	dword ptr [eax+1Ch], 0
		mov	dword ptr [eax+20h], 0
		mov	dword ptr [eax+14h], 8000h
		mov	eax, 1
		retn
_file_new	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 57Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_file_free	proc near		; CODE XREF: _file_ctrl+ACp
					; _file_ctrl+15Dp
					; DATA XREF: ...

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		jnz	short loc_589
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_589:				; CODE XREF: _file_free+7j
		cmp	dword ptr [esi+10h], 0
		jz	short loc_5CC
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_5C5
		mov	eax, [esi+20h]
		test	eax, eax
		jz	short loc_5C5
		test	dword ptr [esi+14h], 8000h
		push	eax		; File
		jz	short loc_5AE
		call	dword ptr _OPENSSL_UplinkTable+28h
		jmp	short loc_5B4
; ---------------------------------------------------------------------------

loc_5AE:				; CODE XREF: _file_free+28j
		call	dword ptr ds:__imp__fclose

loc_5B4:				; CODE XREF: _file_free+30j
		add	esp, 4
		mov	dword ptr [esi+20h], 0
		mov	dword ptr [esi+14h], 8000h

loc_5C5:				; CODE XREF: _file_free+17j
					; _file_free+1Ej
		mov	dword ptr [esi+0Ch], 0

loc_5CC:				; CODE XREF: _file_free+11j
		mov	eax, 1
		pop	esi
		retn
_file_free	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use32
		assume cs:_data
		;org 5D4h
_methods_filep	dd offset loc_401+1	; DATA XREF: _BIO_new_file:loc_6A9o
					; _BIO_new_fp+1o ...
		dd offset ??_C@_0N@JAGKAFD@FILE?5pointer?$AA@ ;	"FILE pointer"
		dd offset _file_write
		dd offset _file_read
		dd offset _file_puts
		dd offset _file_gets
		dd offset _file_ctrl
		dd offset _file_new
		dd offset _file_free
		dd 0
_data		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 5FCh
; COMDAT (pick any)
		public ??_C@_0N@JAGKAFD@FILE?5pointer?$AA@
; `string'
??_C@_0N@JAGKAFD@FILE?5pointer?$AA@ db 'FILE pointer',0 ; DATA XREF: .data:000005D8o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 60Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl BIO_new_file(LPCSTR lpMultiByteStr, LPCSTR)
		public _BIO_new_file
_BIO_new_file	proc near

lpMultiByteStr	= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_4]
		push	edi
		push	esi		; LPCSTR
		push	[esp+0Ch+lpMultiByteStr] ; lpMultiByteStr
		call	_file_fopen
		mov	edi, eax
		add	esp, 8
		test	edi, edi
		jnz	loc_6A9
		push	0AFh ; '�'
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		call	dword ptr ds:__imp__GetLastError@0 ; GetLastError()
		push	eax
		push	1
		push	2
		call	_ERR_put_error
		push	offset ??_C@_02HJPKOJGD@?8?$CJ?$AA@ ; "')"
		push	esi
		push	offset ??_C@_03IMMLKIF@?8?0?8?$AA@ ; `string'
		push	[esp+28h+lpMultiByteStr]
		push	offset ??_C@_07JMDFGFFH@fopen?$CI?8?$AA@ ; "fopen('"
		push	5
		call	_ERR_add_error_data
		add	esp, 2Ch
		call	dword ptr ds:__imp___errno
		cmp	dword ptr [eax], 2
		jnz	short loc_68C
		push	0B2h ; '�'
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		push	80h ; '�'
		push	6Dh ; 'm'
		push	20h ; ' '
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_68C:				; CODE XREF: _BIO_new_file+5Ej
		push	0B4h ; '�'
		push	offset ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ ; ".\\crypto\\bio\\bss_file.c"
		push	2
		push	6Dh ; 'm'
		push	20h ; ' '
		call	_ERR_put_error
		add	esp, 14h
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6A9:				; CODE XREF: _BIO_new_file+17j
		push	offset _methods_filep
		call	_BIO_new
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jnz	short loc_6CB
		push	edi		; File
		call	dword ptr ds:__imp__fclose
		add	esp, 4
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6CB:				; CODE XREF: _BIO_new_file+AEj
		push	8000h
		push	esi
		call	_BIO_clear_flags
		push	edi
		push	1
		push	6Ah ; 'j'
		push	esi
		call	_BIO_ctrl
		add	esp, 18h
		mov	eax, esi
		pop	edi
		pop	esi
		retn
_BIO_new_file	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6ECh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_new_fp
_BIO_new_fp	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		push	offset _methods_filep
		call	_BIO_new
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jnz	short loc_702
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_702:				; CODE XREF: _BIO_new_fp+12j
		push	8000h
		push	esi
		call	_BIO_set_flags
		push	[esp+0Ch+arg_0]
		push	[esp+10h+arg_4]
		push	6Ah ; 'j'
		push	esi
		call	_BIO_ctrl
		add	esp, 18h
		mov	eax, esi
		pop	esi
		retn
_BIO_new_fp	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 724h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _BIO_s_file
_BIO_s_file	proc near
		mov	eax, offset _methods_filep
		retn
_BIO_s_file	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 72Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl file_fopen(LPCSTR	lpMultiByteStr,	LPCSTR)
_file_fopen	proc near		; CODE XREF: _file_ctrl+20Dp
					; _BIO_new_file+Bp

Filename	= dword	ptr -24h
dwFlags		= dword	ptr -20h
cbMultiByte	= dword	ptr -1Ch
Mode		= dword	ptr -18h
WideCharStr	= word ptr -14h
var_4		= dword	ptr -4
lpMultiByteStr	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, 24h ; '$'
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, ebp
		mov	[ebp+var_4], eax
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		push	edi
		mov	edi, [ebp+lpMultiByteStr]
		mov	ecx, edi
		mov	[ebp+Mode], ebx
		lea	edx, [ecx+1]

loc_754:				; CODE XREF: _file_fopen+2Dj
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_754
		push	0		; cchWideChar
		sub	ecx, edx
		mov	[ebp+dwFlags], 8
		push	0		; lpWideCharStr
		lea	eax, [ecx+1]
		push	eax		; cbMultiByte
		push	edi		; lpMultiByteStr
		push	8		; dwFlags
		push	0FDE9h		; CodePage
		mov	[ebp+cbMultiByte], eax
		call	dword ptr ds:__imp__MultiByteToWideChar@24 ; MultiByteToWideChar(x,x,x,x,x,x)
		mov	esi, eax
		test	esi, esi
		jg	short loc_7E5
		mov	ebx, dword ptr ds:__imp__GetLastError@0	; GetLastError()
		call	ebx ; GetLastError() ; GetLastError()
		cmp	eax, 3ECh
		jnz	short loc_7B4
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		push	[ebp+cbMultiByte] ; cbMultiByte
		mov	[ebp+dwFlags], 0
		push	edi		; lpMultiByteStr
		push	0		; dwFlags
		push	0FDE9h		; CodePage
		call	dword ptr ds:__imp__MultiByteToWideChar@24 ; MultiByteToWideChar(x,x,x,x,x,x)
		mov	esi, eax
		test	esi, esi
		jg	short loc_7E2

loc_7B4:				; CODE XREF: _file_fopen+64j
		call	ebx ; GetLastError() ; GetLastError()
		cmp	eax, 459h
		jnz	loc_87A

loc_7C1:				; CODE XREF: _file_fopen+127j
					; _file_fopen+132j
		push	[ebp+Mode]	; Mode
		push	edi		; Filename
		call	dword ptr ds:__imp__fopen
		add	esp, 8
		lea	esp, [ebp-30h]
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_4]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_7E2:				; CODE XREF: _file_fopen+86j
		mov	ebx, [ebp+Mode]

loc_7E5:				; CODE XREF: _file_fopen+55j
		lea	eax, [esi+esi]
		call	__alloca_probe_16
		mov	eax, esp
		push	esi		; cchWideChar
		mov	esi, dword ptr ds:__imp__MultiByteToWideChar@24	; MultiByteToWideChar(x,x,x,x,x,x)
		push	eax		; lpWideCharStr
		push	[ebp+cbMultiByte] ; cbMultiByte
		mov	[ebp+Filename],	eax
		push	edi		; lpMultiByteStr
		push	[ebp+dwFlags]	; dwFlags
		push	0FDE9h		; CodePage
		call	esi ; MultiByteToWideChar(x,x,x,x,x,x) ; MultiByteToWideChar(x,x,x,x,x,x)
		test	eax, eax
		jz	short loc_87A
		mov	ecx, ebx
		lea	edx, [ecx+1]

loc_811:				; CODE XREF: _file_fopen+EAj
		mov	al, [ecx]
		inc	ecx
		test	al, al
		jnz	short loc_811
		push	8		; cchWideChar
		sub	ecx, edx
		lea	eax, [ebp+WideCharStr]
		push	eax		; lpWideCharStr
		lea	eax, [ecx+1]
		push	eax		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	0		; dwFlags
		push	0FDE9h		; CodePage
		call	esi ; MultiByteToWideChar(x,x,x,x,x,x) ; MultiByteToWideChar(x,x,x,x,x,x)
		test	eax, eax
		jz	short loc_87A
		lea	eax, [ebp+WideCharStr]
		push	eax		; Mode
		push	[ebp+Filename]	; Filename
		call	dword ptr ds:__imp___wfopen
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jnz	short loc_864
		mov	ebx, dword ptr ds:__imp___errno
		call	ebx ; __imp___errno
		cmp	dword ptr [eax], 2
		jz	loc_7C1
		call	ebx ; __imp___errno
		cmp	dword ptr [eax], 9
		jz	loc_7C1

loc_864:				; CODE XREF: _file_fopen+11Aj
		mov	eax, esi
		lea	esp, [ebp-30h]
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_4]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_87A:				; CODE XREF: _file_fopen+8Fj
					; _file_fopen+DEj ...
		xor	eax, eax
		lea	esp, [ebp-30h]
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_4]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
_file_fopen	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 890h
; COMDAT (pick any)
		public ??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@
; `string'
??_C@_0BI@EHMCOOOG@?4?2crypto?2bio?2bss_file?4c?$AA@ db	'.\crypto\bio\bss_file.c',0
					; DATA XREF: _file_read+6Fo
					; _file_read+89o ...
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8A8h
; COMDAT (pick any)
		public ??_C@_02HJPKOJGD@?8?$CJ?$AA@
; `string'
??_C@_02HJPKOJGD@?8?$CJ?$AA@ db	27h,')',0 ; DATA XREF: _file_ctrl+233o
					; _BIO_new_file+37o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8ACh
; COMDAT (pick any)
		public ??_C@_03IMMLKIF@?8?0?8?$AA@
; `string'
??_C@_03IMMLKIF@?8?0?8?$AA@ dd 272C27h	; DATA XREF: _file_ctrl+23Do
					; _BIO_new_file+3Do
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8B0h
; COMDAT (pick any)
		public ??_C@_07JMDFGFFH@fopen?$CI?8?$AA@
; `string'
??_C@_07JMDFGFFH@fopen?$CI?8?$AA@ db 'fopen(',27h,0 ; DATA XREF: _file_ctrl+243o
					; _BIO_new_file+46o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8B8h
; COMDAT (pick any)
		public ??_C@_02DPNLHKJD@a?$CL?$AA@
; `string'
??_C@_02DPNLHKJD@a?$CL?$AA@ db 'a+',0   ; DATA XREF: _file_ctrl+181o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8BCh
; COMDAT (pick any)
		public ??_C@_01MCMALHOG@a?$AA@
; `string'
??_C@_01MCMALHOG@a?$AA@	db 61h,	0	; DATA XREF: _file_ctrl:loc_330o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8C0h
; COMDAT (pick any)
		public ??_C@_02CBLLGHLK@r?$CL?$AA@
; `string'
??_C@_02CBLLGHLK@r?$CL?$AA@ db 72h, 2Bh, 0 ; DATA XREF:	_file_ctrl+19Ao
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8C4h
; COMDAT (pick any)
		public ??_C@_01NOFIACDB@w?$AA@
; `string'
??_C@_01NOFIACDB@w?$AA@	db 77h,	0	; DATA XREF: _file_ctrl+1A8o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8C8h
; COMDAT (pick any)
		public ??_C@_01KDCPPGHE@r?$AA@
; `string'
??_C@_01KDCPPGHE@r?$AA@	db 72h,	0	; DATA XREF: _file_ctrl+1BAo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8CCh
; COMDAT (pick any)
		public ??_C@_01OJONOECF@b?$AA@
; `string'
??_C@_01OJONOECF@b?$AA@	dw 62h		; DATA XREF: _file_ctrl+1E2r
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 8D0h
; COMDAT (pick any)
		public ??_C@_01PFHFFBPC@t?$AA@
; `string'
??_C@_01PFHFFBPC@t?$AA@	dw 74h		; DATA XREF: _file_ctrl+1FAr
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _file_ctrl+C7p
					; _file_ctrl+D6p
					; DATA XREF: ...
; FILE *__cdecl	__wfopen(const wchar_t *Filename, const	wchar_t	*Mode)
		extrn __imp___wfopen:near ; CODE XREF: _file_fopen+10Dp
					; DATA XREF: _file_fopen+10Dr
; int __cdecl _fclose(FILE *File)
		extrn __imp__fclose:near ; CODE	XREF: _file_free:loc_5AEp
					; _BIO_new_file+B1p
					; DATA XREF: ...
; int __cdecl _feof(FILE *File)
		extrn __imp__feof:near	; CODE XREF: _file_ctrl:loc_21Cp
					; DATA XREF: _file_ctrl:loc_21Cr
; int __cdecl _ferror(FILE *File)
		extrn __imp__ferror:near ; CODE	XREF: _file_read+5Dp
					; DATA XREF: _file_read+5Dr
; int __cdecl _fflush(FILE *File)
		extrn __imp__fflush:near ; CODE	XREF: _file_ctrl:loc_490p
					; DATA XREF: _file_ctrl:loc_490r
; char *__cdecl	_fgets(char *Buf, int MaxCount,	FILE *File)
		extrn __imp__fgets:near	; CODE XREF: _file_gets:loc_186p
					; DATA XREF: _file_gets:loc_186r
; int __cdecl __fileno(FILE *File)
		extrn __imp___fileno:near ; CODE XREF: _file_ctrl+122p
					; DATA XREF: _file_ctrl+122r
; FILE *__cdecl	_fopen(const char *Filename, const char	*Mode)
		extrn __imp__fopen:near	; CODE XREF: _file_fopen+99p
					; DATA XREF: _file_fopen+99r
; size_t __cdecl _fread(void *DstBuf, size_t ElementSize, size_t Count,	FILE *File)
		extrn __imp__fread:near	; CODE XREF: _file_read:loc_83p
					; DATA XREF: _file_read:loc_83r
; int __cdecl _fseek(FILE *File, __int32 Offset, int Origin)
		extrn __imp__fseek:near	; CODE XREF: _file_ctrl:loc_1F4p
					; DATA XREF: _file_ctrl:loc_1F4r
; __int32 __cdecl _ftell(FILE *File)
		extrn __imp__ftell:near	; CODE XREF: _file_ctrl:loc_244p
					; DATA XREF: _file_ctrl:loc_244r
; size_t __cdecl _fwrite(const void *Str, size_t Size, size_t Count, FILE *File)
		extrn __imp__fwrite:near ; CODE	XREF: _file_write:loc_37p
					; _file_puts:loc_143p
					; DATA XREF: ...
; int *__cdecl __errno()
		extrn __imp___errno:near ; CODE	XREF: _BIO_new_file+55p
					; _file_fopen+122p ...
; DWORD	__stdcall GetLastError()
		extrn __imp__GetLastError@0:near ; CODE	XREF: _file_read+74p
					; _file_ctrl+223p ...
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn __imp__MultiByteToWideChar@24:near ; CODE	XREF: _file_fopen+4Bp
					; _file_fopen+7Cp ...
		extrn __imp___setmode:near ; CODE XREF:	_file_ctrl+138p
					; _file_ctrl+14Dp
					; DATA XREF: ...
		extrn _BUF_strlcpy:near	; CODE XREF: _file_ctrl+1C4p
		extrn _BIO_set_flags:near ; CODE XREF: _BIO_new_fp+1Cp
		extrn _BIO_clear_flags:near ; CODE XREF: _file_ctrl+ECp
					; _file_ctrl+27Bp ...
		extrn _BIO_new:near	; CODE XREF: _BIO_new_file+A2p
					; _BIO_new_fp+6p
		extrn _BIO_ctrl:near	; CODE XREF: _BIO_new_file+D0p
					; _BIO_new_fp+2Cp
		extrn _ERR_put_error:near ; CODE XREF: _file_read+7Fp
					; _file_read+97p ...
		extrn _ERR_add_error_data:near ; CODE XREF: _file_ctrl+24Ap
					; _BIO_new_file+4Dp
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _file_fopen+ADp
					; _file_fopen+145p ...
		extrn __alloca_probe_16:near ; CODE XREF: _file_fopen+BCp
		extrn __chkstk:near	; CODE XREF: _file_fopen+8p
		extrn _OPENSSL_UplinkTable:near	; DATA XREF: _file_write+27r
					; _file_read+2Fr ...
		extrn ___security_cookie:near ;	DATA XREF: _file_fopen+Dr


		end