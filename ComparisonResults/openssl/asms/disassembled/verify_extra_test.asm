;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	34133074246C4D6537DEFBE7F8D48F04
; Input	CRC32 :	A3CD2529

; File Name   :	C:\compspace\Diff\openssl\obj\verify_extra_test.obj
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
					; _fprintf+Fp ...
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
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int fprintf(FILE *File, const	char *Format, ...)
		public _fprintf
_fprintf	proc near		; CODE XREF: _main+53p

File		= dword	ptr  4
Format		= dword	ptr  8
arg_8		= byte ptr  0Ch

		lea	eax, [esp+arg_8]
		push	eax
		push	0
		push	[esp+8+Format]
		push	[esp+0Ch+File]
		call	___local_stdio_printf_options
		push	dword ptr [eax+4]
		push	dword ptr [eax]
		call	dword ptr ds:__imp____stdio_common_vfprintf
		add	esp, 18h
		retn
_fprintf	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 50h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_load_certs_from_file proc near		; CODE XREF: _test_alt_chains_cert_forgery+5Ep

arg_0		= dword	ptr  4

		push	esi
		push	offset ??_C@_01KDCPPGHE@r?$AA@ ; `string'
		push	[esp+8+arg_0]
		call	_BIO_new_file
		mov	esi, eax
		add	esp, 8
		test	esi, esi
		jnz	short loc_6A
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_6A:					; CODE XREF: _load_certs_from_file+16j
		push	edi
		call	_sk_new_null
		mov	edi, eax
		test	edi, edi
		jnz	short loc_84
		push	esi
		call	_BIO_free
		add	esp, 4
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_84:					; CODE XREF: _load_certs_from_file+24j
		call	_ERR_set_mark
		nop	dword ptr [eax+00000000h]

loc_90:					; CODE XREF: _load_certs_from_file+5Fj
		push	0
		push	0
		push	0
		push	esi
		call	_PEM_read_bio_X509
		add	esp, 10h
		test	eax, eax
		jz	short loc_CA
		push	eax
		push	edi
		call	_sk_push
		add	esp, 8
		test	eax, eax
		jnz	short loc_90
		push	offset _X509_free
		push	edi
		call	_sk_pop_free
		push	esi
		call	_BIO_free
		add	esp, 0Ch
		xor	eax, eax
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_CA:					; CODE XREF: _load_certs_from_file+51j
		call	_ERR_pop_to_mark
		push	esi
		call	_BIO_free
		add	esp, 4
		mov	eax, edi
		pop	edi
		pop	esi
		retn
_load_certs_from_file endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0E0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public _main
_main		proc near
		push	offset _CRYPTO_dbg_get_options
		push	offset _CRYPTO_dbg_set_options
		push	offset _CRYPTO_dbg_free
		push	offset _CRYPTO_dbg_realloc
		push	offset _CRYPTO_dbg_malloc
		call	_CRYPTO_set_mem_debug_functions
		push	3
		call	_CRYPTO_set_mem_debug_options
		push	1
		call	_CRYPTO_mem_ctrl
		add	esp, 1Ch
		call	_ERR_load_crypto_strings
		call	_OpenSSL_add_all_digests
		call	_test_alt_chains_cert_forgery
		test	eax, eax
		jnz	short loc_141
		push	offset ??_C@_0CF@JEEJMLLI@Test?5alt?5chains?5cert?5forgery?5fai@ ; "Test alt chains cert forgery failed\n"
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		add	esp, 4
		push	eax		; File
		call	_fprintf
		add	esp, 8
		mov	eax, 1
		retn
; ---------------------------------------------------------------------------

loc_141:				; CODE XREF: _main+40j
		call	_EVP_cleanup
		call	_CRYPTO_cleanup_all_ex_data
		push	0
		call	_ERR_remove_thread_state
		call	_ERR_free_strings
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		call	_CRYPTO_mem_leaks_fp
		push	offset ??_C@_05GKINPPHN@PASS?6?$AA@ ; "PASS\n"
		call	_printf
		add	esp, 10h
		xor	eax, eax
		retn
_main		endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 178h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int printf(const char	*Format, ...)
		public _printf
_printf		proc near		; CODE XREF: _main+8Ap

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

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 1A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_test_alt_chains_cert_forgery proc near	; CODE XREF: _main+39p

var_8		= dword	ptr -8
var_4		= dword	ptr -4

		mov	eax, 8
		call	__chkstk
		push	ebx
		push	ebp
		push	esi
		xor	ebx, ebx
		xor	esi, esi
		push	edi
		mov	[esp+18h+var_8], ebx
		xor	edi, edi
		mov	[esp+18h+var_4], ebx
		call	_X509_STORE_new
		mov	ebp, eax
		test	ebp, ebp
		jz	$err$14
		call	_X509_LOOKUP_file
		push	eax
		push	ebp
		call	_X509_STORE_add_lookup
		add	esp, 8
		test	eax, eax
		jz	$err$14
		push	edi
		push	1
		push	offset ??_C@_0BA@CDDFDABA@certs?1roots?4pem?$AA@ ; "certs/roots.pem"
		push	1
		push	eax
		call	_X509_LOOKUP_ctrl
		add	esp, 14h
		test	eax, eax
		jz	short $err$14
		push	offset ??_C@_0BE@PPIHFFLD@certs?1untrusted?4pem?$AA@ ; "certs/untrusted.pem"
		call	_load_certs_from_file
		push	offset ??_C@_01KDCPPGHE@r?$AA@ ; `string'
		push	offset ??_C@_0O@KMHDIIHH@certs?1bad?4pem?$AA@ ;	"certs/bad.pem"
		mov	[esp+24h+var_8], eax
		call	_BIO_new_file
		add	esp, 0Ch
		mov	[esp+18h+var_4], eax
		test	eax, eax
		jz	short $err$14
		push	edi
		push	edi
		push	edi
		push	eax
		call	_PEM_read_bio_X509
		mov	ebx, eax
		add	esp, 10h
		test	ebx, ebx
		jz	short $err$14
		call	_X509_STORE_CTX_new
		mov	edi, eax
		test	edi, edi
		jz	short $err$14
		push	[esp+18h+var_8]
		push	ebx
		push	ebp
		push	edi
		call	_X509_STORE_CTX_init
		add	esp, 10h
		test	eax, eax
		jz	short $err$14
		push	edi
		call	_X509_verify_cert
		add	esp, 4
		test	eax, eax
		jnz	short $err$14
		push	edi
		call	_X509_STORE_CTX_get_error
		add	esp, 4
		mov	ecx, 1
		cmp	eax, 18h
		cmovz	esi, ecx

$err$14:				; CODE XREF: _test_alt_chains_cert_forgery+25j
					; _test_alt_chains_cert_forgery+3Cj ...
		push	edi
		call	_X509_STORE_CTX_free
		push	ebx
		call	_X509_free
		push	[esp+20h+var_4]
		call	_BIO_free
		push	offset _X509_free
		push	[esp+28h+var_8]
		call	_sk_pop_free
		push	ebp
		call	_X509_STORE_free
		add	esp, 18h
		cmp	esi, 1
		jz	short loc_2BC
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		call	_ERR_print_errors_fp
		add	esp, 8

loc_2BC:				; CODE XREF: _test_alt_chains_cert_forgery+101j
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 8
		retn
_test_alt_chains_cert_forgery endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2C8h
; COMDAT (pick any)
		public ??_C@_01KDCPPGHE@r?$AA@
; `string'
??_C@_01KDCPPGHE@r?$AA@	db 72h,	0	; DATA XREF: _load_certs_from_file+1o
					; _test_alt_chains_cert_forgery+63o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2CCh
; COMDAT (pick any)
		public ??_C@_0BA@CDDFDABA@certs?1roots?4pem?$AA@
; `string'
??_C@_0BA@CDDFDABA@certs?1roots?4pem?$AA@ db 'certs/roots.pem',0
					; DATA XREF: _test_alt_chains_cert_forgery+45o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2DCh
; COMDAT (pick any)
		public ??_C@_0BE@PPIHFFLD@certs?1untrusted?4pem?$AA@
; `string'
??_C@_0BE@PPIHFFLD@certs?1untrusted?4pem?$AA@ db 'certs/untrusted.pem',0
					; DATA XREF: _test_alt_chains_cert_forgery+59o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2F0h
; COMDAT (pick any)
		public ??_C@_0O@KMHDIIHH@certs?1bad?4pem?$AA@
; `string'
??_C@_0O@KMHDIIHH@certs?1bad?4pem?$AA@ db 'certs/bad.pem',0
					; DATA XREF: _test_alt_chains_cert_forgery+68o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 300h
; COMDAT (pick any)
		public ??_C@_0CF@JEEJMLLI@Test?5alt?5chains?5cert?5forgery?5fai@
; char `string'[]
??_C@_0CF@JEEJMLLI@Test?5alt?5chains?5cert?5forgery?5fai@ db 'Test alt chains cert forgery failed',0Ah,0
					; DATA XREF: _main+42o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 328h
; COMDAT (pick any)
		public ??_C@_05GKINPPHN@PASS?6?$AA@
; char `string'[]
??_C@_05GKINPPHN@PASS?6?$AA@ db	'PASS',0Ah,0 ; DATA XREF: _main+85o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _main+49p
					; _main+79p ...
		extrn __imp____stdio_common_vfprintf:near ; CODE XREF: __vfprintf_l+1Ap
					; _fprintf+19p	...
		extrn _sk_new_null:near	; CODE XREF: _load_certs_from_file+1Bp
		extrn _sk_pop_free:near	; CODE XREF: _load_certs_from_file+67p
					; _test_alt_chains_cert_forgery+F0p
		extrn _sk_push:near	; CODE XREF: _load_certs_from_file+55p
		extrn _CRYPTO_mem_ctrl:near ; CODE XREF: _main+27p
		extrn _CRYPTO_cleanup_all_ex_data:near ; CODE XREF: _main+66p
		extrn _CRYPTO_set_mem_debug_functions:near ; CODE XREF:	_main+19p
		extrn _CRYPTO_set_mem_debug_options:near ; CODE	XREF: _main+20p
		extrn _CRYPTO_dbg_malloc:near ;	DATA XREF: _main+14o
		extrn _CRYPTO_dbg_realloc:near ; DATA XREF: _main+Fo
		extrn _CRYPTO_dbg_free:near ; DATA XREF: _main+Ao
		extrn _CRYPTO_dbg_set_options:near ; DATA XREF:	_main+5o
		extrn _CRYPTO_dbg_get_options:near ; DATA XREF:	_maino
		extrn _CRYPTO_mem_leaks_fp:near	; CODE XREF: _main+80p
		extrn _BIO_new_file:near ; CODE	XREF: _load_certs_from_file+Ap
					; _test_alt_chains_cert_forgery+71p
		extrn _BIO_free:near	; CODE XREF: _load_certs_from_file+27p
					; _load_certs_from_file+6Dp ...
		extrn _OpenSSL_add_all_digests:near ; CODE XREF: _main+34p
		extrn _EVP_cleanup:near	; CODE XREF: _main:loc_141p
		extrn _X509_STORE_new:near ; CODE XREF:	_test_alt_chains_cert_forgery+1Cp
		extrn _X509_STORE_free:near ; CODE XREF: _test_alt_chains_cert_forgery+F6p
		extrn _X509_STORE_CTX_new:near
					; CODE XREF: _test_alt_chains_cert_forgery+93p
		extrn _X509_STORE_CTX_free:near
					; CODE XREF: _test_alt_chains_cert_forgery+D3p
		extrn _X509_STORE_CTX_init:near
					; CODE XREF: _test_alt_chains_cert_forgery+A5p
		extrn _X509_STORE_add_lookup:near
					; CODE XREF: _test_alt_chains_cert_forgery+32p
		extrn _X509_LOOKUP_file:near ; CODE XREF: _test_alt_chains_cert_forgery+2Bp
		extrn _X509_LOOKUP_ctrl:near ; CODE XREF: _test_alt_chains_cert_forgery+4Dp
		extrn _X509_STORE_CTX_get_error:near
					; CODE XREF: _test_alt_chains_cert_forgery+BFp
		extrn _X509_free:near	; CODE XREF: _test_alt_chains_cert_forgery+D9p
					; DATA XREF: _load_certs_from_file+61o	...
		extrn _X509_verify_cert:near ; CODE XREF: _test_alt_chains_cert_forgery+B2p
		extrn _PEM_read_bio_X509:near ;	CODE XREF: _load_certs_from_file+47p
					; _test_alt_chains_cert_forgery+85p
		extrn _ERR_print_errors_fp:near
					; CODE XREF: _test_alt_chains_cert_forgery+10Cp
		extrn _ERR_load_crypto_strings:near ; CODE XREF: _main+2Fp
		extrn _ERR_free_strings:near ; CODE XREF: _main+72p
		extrn _ERR_remove_thread_state:near ; CODE XREF: _main+6Dp
		extrn _ERR_set_mark:near ; CODE	XREF: _load_certs_from_file:loc_84p
		extrn _ERR_pop_to_mark:near ; CODE XREF: _load_certs_from_file:loc_CAp
		extrn __chkstk:near	; CODE XREF: _test_alt_chains_cert_forgery+5p
; `__local_stdio_printf_options'::`2'::_OptionsStorage
		extrn ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:near
					; DATA XREF: ___local_stdio_printf_optionso


		end