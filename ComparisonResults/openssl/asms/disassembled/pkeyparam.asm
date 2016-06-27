;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	BEC1A79E22BD1C28345FAB0CBC591325
; Input	CRC32 :	9A7377E2

; File Name   :	C:\compspace\Diff\openssl\obj\pkeyparam.obj
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
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _pkeyparam_main
_pkeyparam_main	proc near

var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_4		= dword	ptr  8

		mov	eax, 1Ch
		call	__chkstk
		push	ebx
		push	ebp
		xor	eax, eax
		mov	[esp+24h+var_4], 1
		push	esi
		xor	ecx, ecx
		mov	[esp+28h+var_14], eax
		mov	eax, dword ptr ds:_bio_err
		xor	esi, esi
		push	edi
		xor	edi, edi
		mov	[esp+2Ch+var_18], esi
		xor	ebp, ebp
		mov	[esp+2Ch+var_10], edi
		xor	ebx, ebx
		mov	[esp+2Ch+var_C], edi
		mov	[esp+2Ch+var_8], ecx
		mov	[esp+2Ch+var_1C], ecx
		test	eax, eax
		jnz	short loc_5D
		push	eax
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		add	esp, 4
		push	eax
		call	_BIO_new_fp
		add	esp, 8
		mov	dword ptr ds:_bio_err, eax

loc_5D:					; CODE XREF: _pkeyparam_main+41j
		push	0
		push	eax
		call	_load_config
		add	esp, 8
		test	eax, eax
		jz	$end$58
		call	_ERR_load_crypto_strings
		call	_OPENSSL_add_all_algorithms_noconf
		mov	edi, [esp+2Ch+arg_4]
		add	edi, 4

loc_81:					; CODE XREF: _pkeyparam_main+1E4j
		mov	esi, [edi]
		test	esi, esi
		jz	loc_1EC
		cmp	byte ptr [esi],	2Dh ; '-'
		jnz	loc_1EC
		mov	ecx, offset ??_C@_03DAJLOBIG@?9in?$AA@ ; `string'
		mov	eax, esi
		nop	dword ptr [eax+eax+00h]

loc_A0:					; CODE XREF: _pkeyparam_main+BAj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_C0
		test	dl, dl
		jz	short loc_BC
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_C0
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_A0

loc_BC:					; CODE XREF: _pkeyparam_main+A8j
		xor	eax, eax
		jmp	short loc_C5
; ---------------------------------------------------------------------------

loc_C0:					; CODE XREF: _pkeyparam_main+A4j
					; _pkeyparam_main+B0j
		sbb	eax, eax
		or	eax, 1

loc_C5:					; CODE XREF: _pkeyparam_main+BEj
		test	eax, eax
		jnz	short loc_DD
		cmp	[edi+4], eax
		jz	short loc_121
		mov	eax, [edi+4]
		add	edi, 4
		mov	[esp+2Ch+var_10], eax
		jmp	loc_1DF
; ---------------------------------------------------------------------------

loc_DD:					; CODE XREF: _pkeyparam_main+C7j
		mov	ecx, offset ??_C@_04HKKABCEL@?9out?$AA@	; "-out"
		mov	eax, esi

loc_E4:					; CODE XREF: _pkeyparam_main+FEj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_104
		test	dl, dl
		jz	short loc_100
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_104
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_E4

loc_100:				; CODE XREF: _pkeyparam_main+ECj
		xor	eax, eax
		jmp	short loc_109
; ---------------------------------------------------------------------------

loc_104:				; CODE XREF: _pkeyparam_main+E8j
					; _pkeyparam_main+F4j
		sbb	eax, eax
		or	eax, 1

loc_109:				; CODE XREF: _pkeyparam_main+102j
		test	eax, eax
		jnz	short loc_12B
		cmp	[edi+4], eax
		jz	short loc_121
		mov	eax, [edi+4]
		add	edi, 4
		mov	[esp+2Ch+var_C], eax
		jmp	loc_1DF
; ---------------------------------------------------------------------------

loc_121:				; CODE XREF: _pkeyparam_main+CCj
					; _pkeyparam_main+110j
		mov	ebx, 1
		jmp	loc_1DF
; ---------------------------------------------------------------------------

loc_12B:				; CODE XREF: _pkeyparam_main+10Bj
		mov	ecx, offset ??_C@_07CECBDAGF@?9engine?$AA@ ; "-engine"
		mov	eax, esi

loc_132:				; CODE XREF: _pkeyparam_main+14Cj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_152
		test	dl, dl
		jz	short loc_14E
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_152
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_132

loc_14E:				; CODE XREF: _pkeyparam_main+13Aj
		xor	eax, eax
		jmp	short loc_157
; ---------------------------------------------------------------------------

loc_152:				; CODE XREF: _pkeyparam_main+136j
					; _pkeyparam_main+142j
		sbb	eax, eax
		or	eax, 1

loc_157:				; CODE XREF: _pkeyparam_main+150j
		test	eax, eax
		jnz	short loc_16E
		add	edi, 4
		cmp	[edi], eax
		jz	$bad$59
		mov	eax, [edi]
		mov	[esp+2Ch+var_14], eax
		jmp	short loc_1DF
; ---------------------------------------------------------------------------

loc_16E:				; CODE XREF: _pkeyparam_main+159j
		mov	ecx, offset ??_C@_05OEBEIMJA@?9text?$AA@ ; "-text"
		mov	eax, esi

loc_175:				; CODE XREF: _pkeyparam_main+18Fj
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_195
		test	dl, dl
		jz	short loc_191
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_195
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_175

loc_191:				; CODE XREF: _pkeyparam_main+17Dj
		xor	eax, eax
		jmp	short loc_19A
; ---------------------------------------------------------------------------

loc_195:				; CODE XREF: _pkeyparam_main+179j
					; _pkeyparam_main+185j
		sbb	eax, eax
		or	eax, 1

loc_19A:				; CODE XREF: _pkeyparam_main+193j
		test	eax, eax
		jnz	short loc_1A8
		mov	[esp+2Ch+var_8], 1
		jmp	short loc_1DF
; ---------------------------------------------------------------------------

loc_1A8:				; CODE XREF: _pkeyparam_main+19Cj
		mov	eax, offset ??_C@_06JPEJAHHH@?9noout?$AA@ ; "-noout"
		nop	dword ptr [eax]

loc_1B0:				; CODE XREF: _pkeyparam_main+1CAj
		mov	cl, [esi]
		cmp	cl, [eax]
		jnz	short loc_1D0
		test	cl, cl
		jz	short loc_1CC
		mov	cl, [esi+1]
		cmp	cl, [eax+1]
		jnz	short loc_1D0
		add	esi, 2
		add	eax, 2
		test	cl, cl
		jnz	short loc_1B0

loc_1CC:				; CODE XREF: _pkeyparam_main+1B8j
		xor	eax, eax
		jmp	short loc_1D5
; ---------------------------------------------------------------------------

loc_1D0:				; CODE XREF: _pkeyparam_main+1B4j
					; _pkeyparam_main+1C0j
		sbb	eax, eax
		or	eax, 1

loc_1D5:				; CODE XREF: _pkeyparam_main+1CEj
		test	eax, eax
		mov	eax, 1
		cmovz	ebp, eax

loc_1DF:				; CODE XREF: _pkeyparam_main+D8j
					; _pkeyparam_main+11Cj	...
		add	edi, 4
		test	ebx, ebx
		jz	loc_81
		jmp	short $bad$59
; ---------------------------------------------------------------------------

loc_1EC:				; CODE XREF: _pkeyparam_main+85j
					; _pkeyparam_main+8Ej
		test	ebx, ebx
		jz	loc_274

$bad$59:				; CODE XREF: _pkeyparam_main+160j
					; _pkeyparam_main+1EAj
		push	offset ??_C@_0BL@JPHIEEFF@Usage?5pkeyparam?5?$FLoptions?$FN?6?$AA@ ; "Usage pkeyparam [options]\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ ; "where options are\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BM@OAPGFGAE@?9in?5file?5?5?5?5?5?5?5?5input?5file?6?$AA@ ; "-in file	  input	file\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0BN@IBKDGIDA@?9out?5file?5?5?5?5?5?5?5output?5file?6?$AA@ ; "-out file	  output file\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0CK@JDIOBHGL@?9text?5?5?5?5?5?5?5?5?5?5?5print?5parameters@ ; "-text	    print parameters as	tex"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0DB@CEIGEDBJ@?9noout?5?5?5?5?5?5?5?5?5?5don?8t?5output?5enc@ ; "-noout	     don't output encoded pa"...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	offset ??_C@_0DL@NDFIJIDB@?9engine?5e?5?5?5?5?5?5?5use?5engine?5e?0?5po@ ; "-engine e	    use	engine e, possibly "...
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 38h
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_274:				; CODE XREF: _pkeyparam_main+1EEj
		mov	eax, [esp+2Ch+var_14]
		push	0
		push	eax
		push	dword ptr ds:_bio_err
		call	_setup_engine
		mov	edi, [esp+38h+var_10]
		add	esp, 0Ch
		test	edi, edi
		jz	short loc_2BE
		push	offset ??_C@_01KDCPPGHE@r?$AA@ ; `string'
		push	edi
		call	_BIO_new_file
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jnz	short loc_2DA
		push	edi
		push	offset ??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@ ; "Can't open input file %s\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 0Ch
		jmp	$end$58
; ---------------------------------------------------------------------------

loc_2BE:				; CODE XREF: _pkeyparam_main+28Fj
		mov	ebx, dword ptr ds:__imp____acrt_iob_func
		push	0
		push	0
		call	ebx ; __imp____acrt_iob_func
		add	esp, 4
		push	eax
		call	_BIO_new_fp
		add	esp, 8
		mov	esi, eax
		jmp	short loc_2E0
; ---------------------------------------------------------------------------

loc_2DA:				; CODE XREF: _pkeyparam_main+2A3j
		mov	ebx, dword ptr ds:__imp____acrt_iob_func

loc_2E0:				; CODE XREF: _pkeyparam_main+2D8j
		mov	edi, [esp+2Ch+var_C]
		test	edi, edi
		jz	short loc_316
		push	offset ??_C@_01NOFIACDB@w?$AA@ ; `string'
		push	edi
		call	_BIO_new_file
		mov	ebx, eax
		add	esp, 8
		mov	[esp+2Ch+var_18], ebx
		test	ebx, ebx
		jnz	short loc_32E
		push	edi
		push	offset ??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@ ; "Can't open output file %s\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		add	esp, 0Ch
		jmp	short $end$58
; ---------------------------------------------------------------------------

loc_316:				; CODE XREF: _pkeyparam_main+2E6j
		push	0
		push	1
		call	ebx ; __imp____acrt_iob_func
		add	esp, 4
		push	eax
		call	_BIO_new_fp
		add	esp, 8
		mov	[esp+2Ch+var_18], eax
		mov	ebx, eax

loc_32E:				; CODE XREF: _pkeyparam_main+2FEj
		push	0
		push	esi
		call	_PEM_read_bio_Parameters
		add	esp, 8
		mov	[esp+2Ch+var_1C], eax
		test	eax, eax
		jnz	short loc_361
		push	offset ??_C@_0BK@LMEFBHPI@Error?5reading?5parameters?6?$AA@ ; "Error reading parameters\n"
		push	dword ptr ds:_bio_err
		call	_BIO_printf
		push	dword ptr ds:_bio_err
		call	_ERR_print_errors
		add	esp, 0Ch
		jmp	short $end$58
; ---------------------------------------------------------------------------

loc_361:				; CODE XREF: _pkeyparam_main+33Fj
		test	ebp, ebp
		jnz	short loc_373
		push	eax
		push	ebx
		call	_PEM_write_bio_Parameters
		mov	eax, [esp+34h+var_1C]
		add	esp, 8

loc_373:				; CODE XREF: _pkeyparam_main+363j
		mov	ecx, [esp+2Ch+var_8]
		test	ecx, ecx
		jz	short loc_389
		push	0
		push	0
		push	eax
		push	ebx
		call	_EVP_PKEY_print_params
		add	esp, 10h

loc_389:				; CODE XREF: _pkeyparam_main+379j
		mov	[esp+2Ch+var_4], 0

$end$58:				; CODE XREF: _pkeyparam_main+6Aj
					; _pkeyparam_main+2B9j	...
		push	[esp+2Ch+var_1C]
		call	_EVP_PKEY_free
		push	[esp+30h+var_18]
		call	_BIO_free_all
		push	esi
		call	_BIO_free
		mov	eax, [esp+38h+var_4]
		add	esp, 0Ch
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 1Ch
		retn
_pkeyparam_main	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3B8h
; COMDAT (pick any)
		public ??_C@_03DAJLOBIG@?9in?$AA@
; `string'
??_C@_03DAJLOBIG@?9in?$AA@ dd 6E692Dh	; DATA XREF: _pkeyparam_main+94o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3BCh
; COMDAT (pick any)
		public ??_C@_04HKKABCEL@?9out?$AA@
; `string'
??_C@_04HKKABCEL@?9out?$AA@ db '-out',0 ; DATA XREF: _pkeyparam_main:loc_DDo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3C4h
; COMDAT (pick any)
		public ??_C@_07CECBDAGF@?9engine?$AA@
; `string'
??_C@_07CECBDAGF@?9engine?$AA@ db '-engine',0 ; DATA XREF: _pkeyparam_main:loc_12Bo
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3CCh
; COMDAT (pick any)
		public ??_C@_05OEBEIMJA@?9text?$AA@
; `string'
??_C@_05OEBEIMJA@?9text?$AA@ db	'-text',0 ; DATA XREF: _pkeyparam_main:loc_16Eo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3D4h
; COMDAT (pick any)
		public ??_C@_06JPEJAHHH@?9noout?$AA@
; `string'
??_C@_06JPEJAHHH@?9noout?$AA@ db '-noout',0 ; DATA XREF: _pkeyparam_main:loc_1A8o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3DCh
; COMDAT (pick any)
		public ??_C@_0BL@JPHIEEFF@Usage?5pkeyparam?5?$FLoptions?$FN?6?$AA@
; `string'
??_C@_0BL@JPHIEEFF@Usage?5pkeyparam?5?$FLoptions?$FN?6?$AA@ db 'Usage pkeyparam [options]',0Ah,0
					; DATA XREF: _pkeyparam_main:$bad$59o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3F8h
; COMDAT (pick any)
		public ??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@
; `string'
??_C@_0BD@KHANLAHK@where?5options?5are?6?$AA@ db 'where options are',0Ah,0
					; DATA XREF: _pkeyparam_main+204o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 40Ch
; COMDAT (pick any)
		public ??_C@_0BM@OAPGFGAE@?9in?5file?5?5?5?5?5?5?5?5input?5file?6?$AA@
; `string'
??_C@_0BM@OAPGFGAE@?9in?5file?5?5?5?5?5?5?5?5input?5file?6?$AA@	db '-in file        input file',0Ah,0
					; DATA XREF: _pkeyparam_main+214o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 428h
; COMDAT (pick any)
		public ??_C@_0BN@IBKDGIDA@?9out?5file?5?5?5?5?5?5?5output?5file?6?$AA@
; `string'
??_C@_0BN@IBKDGIDA@?9out?5file?5?5?5?5?5?5?5output?5file?6?$AA@	db '-out file       output file',0Ah,0
					; DATA XREF: _pkeyparam_main+224o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 448h
; COMDAT (pick any)
		public ??_C@_0CK@JDIOBHGL@?9text?5?5?5?5?5?5?5?5?5?5?5print?5parameters@
; `string'
??_C@_0CK@JDIOBHGL@?9text?5?5?5?5?5?5?5?5?5?5?5print?5parameters@ db '-text           print parameters as text',0Ah,0
					; DATA XREF: _pkeyparam_main+234o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 474h
; COMDAT (pick any)
		public ??_C@_0DB@CEIGEDBJ@?9noout?5?5?5?5?5?5?5?5?5?5don?8t?5output?5enc@
; `string'
??_C@_0DB@CEIGEDBJ@?9noout?5?5?5?5?5?5?5?5?5?5don?8t?5output?5enc@ db '-noout          don',27h,'t output encoded parameters',0Ah,0
					; DATA XREF: _pkeyparam_main+244o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4A8h
; COMDAT (pick any)
		public ??_C@_0DL@NDFIJIDB@?9engine?5e?5?5?5?5?5?5?5use?5engine?5e?0?5po@
; `string'
??_C@_0DL@NDFIJIDB@?9engine?5e?5?5?5?5?5?5?5use?5engine?5e?0?5po@ db '-engine e       use engine e, possibly a hardware device.',0Ah,0
					; DATA XREF: _pkeyparam_main+254o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4E4h
; COMDAT (pick any)
		public ??_C@_01KDCPPGHE@r?$AA@
; `string'
??_C@_01KDCPPGHE@r?$AA@	db 72h,	0	; DATA XREF: _pkeyparam_main+291o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 4E8h
; COMDAT (pick any)
		public ??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@
; `string'
??_C@_0BK@FBJDPEEG@Can?8t?5open?5input?5file?5?$CFs?6?$AA@ db 'Can',27h,'t open input file %s',0Ah,0
					; DATA XREF: _pkeyparam_main+2A6o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 504h
; COMDAT (pick any)
		public ??_C@_01NOFIACDB@w?$AA@
; `string'
??_C@_01NOFIACDB@w?$AA@	db 77h,	0	; DATA XREF: _pkeyparam_main+2E8o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 508h
; COMDAT (pick any)
		public ??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@
; `string'
??_C@_0BL@EIBBPFMA@Can?8t?5open?5output?5file?5?$CFs?6?$AA@ db 'Can',27h,'t open output file %s',0Ah,0
					; DATA XREF: _pkeyparam_main+301o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 524h
; COMDAT (pick any)
		public ??_C@_0BK@LMEFBHPI@Error?5reading?5parameters?6?$AA@
; `string'
??_C@_0BK@LMEFBHPI@Error?5reading?5parameters?6?$AA@ db	'Error reading parameters',0Ah,0
					; DATA XREF: _pkeyparam_main+341o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _pkeyparam_main+46p
					; _pkeyparam_main+2C8p	...
		extrn _BIO_new_file:near ; CODE	XREF: _pkeyparam_main+297p
					; _pkeyparam_main+2EEp
		extrn _BIO_new_fp:near	; CODE XREF: _pkeyparam_main+50p
					; _pkeyparam_main+2CEp	...
		extrn _BIO_free:near	; CODE XREF: _pkeyparam_main+3A4p
		extrn _BIO_free_all:near ; CODE	XREF: _pkeyparam_main+39Ep
		extrn _BIO_printf:near	; CODE XREF: _pkeyparam_main+1FFp
					; _pkeyparam_main+20Fp	...
		extrn _OPENSSL_add_all_algorithms_noconf:near
					; CODE XREF: _pkeyparam_main+75p
		extrn _EVP_PKEY_free:near ; CODE XREF: _pkeyparam_main+395p
		extrn _EVP_PKEY_print_params:near ; CODE XREF: _pkeyparam_main+381p
		extrn _ERR_print_errors:near ; CODE XREF: _pkeyparam_main+357p
		extrn _ERR_load_crypto_strings:near ; CODE XREF: _pkeyparam_main+70p
		extrn _setup_engine:near ; CODE	XREF: _pkeyparam_main+281p
		extrn _load_config:near	; CODE XREF: _pkeyparam_main+60p
		extrn _PEM_read_bio_Parameters:near ; CODE XREF: _pkeyparam_main+331p
		extrn _PEM_write_bio_Parameters:near ; CODE XREF: _pkeyparam_main+367p
		extrn __chkstk:near	; CODE XREF: _pkeyparam_main+5p
		extrn _bio_err:near	; DATA XREF: _pkeyparam_main+1Dr
					; _pkeyparam_main+58w ...


		end
