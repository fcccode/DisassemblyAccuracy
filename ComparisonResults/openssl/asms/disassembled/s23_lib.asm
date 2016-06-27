;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	9A606163A8F3DB75215F6FA1EEC601E0
; Input	CRC32 :	566408CC

; File Name   :	C:\compspace\Diff\openssl\obj\s23_lib.obj
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


		public _ssl23_default_timeout
_ssl23_default_timeout proc near
		mov	eax, 12Ch
		retn
_ssl23_default_timeout endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 8
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_get_cipher
_ssl23_get_cipher proc near

arg_0		= dword	ptr  4

		call	_ssl3_num_ciphers
		mov	ecx, [esp+arg_0]
		cmp	ecx, eax
		jnb	short loc_1E
		mov	[esp+arg_0], ecx
		jmp	_ssl3_get_cipher
; ---------------------------------------------------------------------------

loc_1E:					; CODE XREF: _ssl23_get_cipher+Bj
		xor	eax, eax
		retn
_ssl23_get_cipher endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 24h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_get_cipher_by_char
_ssl23_get_cipher_by_char proc near
		jmp	_ssl3_get_cipher_by_char
_ssl23_get_cipher_by_char endp

; ---------------------------------------------------------------------------
		align 4
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


		public _ssl23_num_ciphers
_ssl23_num_ciphers proc	near
		jmp	_ssl3_num_ciphers
_ssl23_num_ciphers endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 34h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_peek
_ssl23_peek	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	esi
		push	0		; dwErrCode
		call	dword ptr ds:__imp__SetLastError@4 ; SetLastError(x)
		mov	esi, [esp+4+arg_0]
		push	esi
		call	_SSL_state
		add	esp, 4
		test	eax, 3000h
		jz	short loc_9C
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_9C
		mov	eax, [esi+20h]
		push	esi
		call	eax
		add	esp, 4
		test	eax, eax
		js	short loc_A8
		jnz	short loc_89
		push	9Dh ; '�'
		push	offset ??_C@_0BA@OEAHDBAA@?4?2ssl?2s23_lib?4c?$AA@ ; ".\\ssl\\s23_lib.c"
		push	0E5h ; '�'
		push	0EDh ; '�'
		push	14h
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_89:					; CODE XREF: _ssl23_peek+30j
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	esi
		call	_SSL_peek
		add	esp, 0Ch
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_9C:					; CODE XREF: _ssl23_peek+1Bj
					; _ssl23_peek+21j
		push	esi
		call	_ssl_undefined_function
		add	esp, 4
		or	eax, 0FFFFFFFFh

loc_A8:					; CODE XREF: _ssl23_peek+2Ej
		pop	esi
		retn
_ssl23_peek	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0ACh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_put_cipher_by_char
_ssl23_put_cipher_by_char proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	ecx, [esp+arg_0]
		mov	eax, [ecx+0Ch]
		cmp	eax, 20h ; ' '
		jz	short loc_F4
		cmp	eax, 40h ; '@'
		jz	short loc_F4
		cmp	eax, 80h ; '�'
		jz	short loc_F4
		mov	eax, [ecx+10h]
		cmp	eax, 10h
		jz	short loc_F4
		cmp	eax, 40h ; '@'
		jz	short loc_F4
		mov	edx, [esp+arg_4]
		test	edx, edx
		jz	short loc_EE
		mov	ecx, [ecx+8]
		mov	eax, ecx
		sar	eax, 10h
		mov	[edx], al
		mov	eax, ecx
		sar	eax, 8
		mov	[edx+1], al
		mov	[edx+2], cl

loc_EE:					; CODE XREF: _ssl23_put_cipher_by_char+2Bj
		mov	eax, 3
		retn
; ---------------------------------------------------------------------------

loc_F4:					; CODE XREF: _ssl23_put_cipher_by_char+Aj
					; _ssl23_put_cipher_by_char+Fj	...
		xor	eax, eax
		retn
_ssl23_put_cipher_by_char endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0F8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_read
_ssl23_read	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	esi
		push	0		; dwErrCode
		call	dword ptr ds:__imp__SetLastError@4 ; SetLastError(x)
		mov	esi, [esp+4+arg_0]
		push	esi
		call	_SSL_state
		add	esp, 4
		test	eax, 3000h
		jz	short loc_15D
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_15D
		mov	eax, [esi+20h]
		push	esi
		call	eax
		add	esp, 4
		test	eax, eax
		js	short loc_169
		jnz	short loc_14A
		push	89h ; '�'
		push	offset ??_C@_0BA@OEAHDBAA@?4?2ssl?2s23_lib?4c?$AA@ ; ".\\ssl\\s23_lib.c"
		push	0E5h ; '�'
		push	78h ; 'x'
		push	14h
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_14A:				; CODE XREF: _ssl23_read+30j
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	esi
		call	_SSL_read
		add	esp, 0Ch
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_15D:				; CODE XREF: _ssl23_read+1Bj
					; _ssl23_read+21j
		push	esi
		call	_ssl_undefined_function
		add	esp, 4
		or	eax, 0FFFFFFFFh

loc_169:				; CODE XREF: _ssl23_read+2Ej
		pop	esi
		retn
_ssl23_read	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 16Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _ssl23_write
_ssl23_write	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	esi
		push	0		; dwErrCode
		call	dword ptr ds:__imp__SetLastError@4 ; SetLastError(x)
		mov	esi, [esp+4+arg_0]
		push	esi
		call	_SSL_state
		add	esp, 4
		test	eax, 3000h
		jz	short loc_1D1
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_1D1
		mov	eax, [esi+20h]
		push	esi
		call	eax
		add	esp, 4
		test	eax, eax
		js	short loc_1DD
		jnz	short loc_1BE
		push	0B1h ; '�'
		push	offset ??_C@_0BA@OEAHDBAA@?4?2ssl?2s23_lib?4c?$AA@ ; ".\\ssl\\s23_lib.c"
		push	0E5h ; '�'
		push	79h ; 'y'
		push	14h
		call	_ERR_put_error
		add	esp, 14h
		or	eax, 0FFFFFFFFh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1BE:				; CODE XREF: _ssl23_write+30j
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	esi
		call	_SSL_write
		add	esp, 0Ch
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1D1:				; CODE XREF: _ssl23_write+1Bj
					; _ssl23_write+21j
		push	esi
		call	_ssl_undefined_function
		add	esp, 4
		or	eax, 0FFFFFFFFh

loc_1DD:				; CODE XREF: _ssl23_write+2Ej
		pop	esi
		retn
_ssl23_write	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 1E0h
; COMDAT (pick any)
		public ??_C@_0BA@OEAHDBAA@?4?2ssl?2s23_lib?4c?$AA@
; `string'
??_C@_0BA@OEAHDBAA@?4?2ssl?2s23_lib?4c?$AA@ db '.\ssl\s23_lib.c',0
					; DATA XREF: _ssl23_peek+37o
					; _ssl23_read+37o ...
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
; void __stdcall SetLastError(DWORD dwErrCode)
		extrn __imp__SetLastError@4:near ; CODE	XREF: _ssl23_peek+3p
					; _ssl23_read+3p ...
		extrn _ERR_put_error:near ; CODE XREF: _ssl23_peek+48p
					; _ssl23_read+45p ...
		extrn _SSL_read:near	; CODE XREF: _ssl23_read+5Bp
		extrn _SSL_peek:near	; CODE XREF: _ssl23_peek+5Ep
		extrn _SSL_write:near	; CODE XREF: _ssl23_write+5Bp
		extrn _SSL_state:near	; CODE XREF: _ssl23_peek+Ep
					; _ssl23_read+Ep ...
		extrn _ssl_undefined_function:near ; CODE XREF:	_ssl23_peek+69p
					; _ssl23_read+66p ...
		extrn _ssl3_get_cipher_by_char:near ; CODE XREF: _ssl23_get_cipher_by_charj
		extrn _ssl3_num_ciphers:near ; CODE XREF: _ssl23_get_cipherp
					; _ssl23_num_ciphersj
		extrn _ssl3_get_cipher:near ; CODE XREF: _ssl23_get_cipher+11j


		end
