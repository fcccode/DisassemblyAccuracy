;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	D8D966772DF6E96DBA7762CD2CA12B26
; Input	CRC32 :	182B9BBA

; File Name   :	C:\compspace\Diff\openssl\obj\x_spki.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
_NETSCAPE_SPKAC_seq_tt dd 3 dup(0)	; DATA XREF: .rdata:00000030o
		dd offset ??_C@_06GKCAPDID@pubkey?$AA@ ; "pubkey"
		dd offset _X509_PUBKEY_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_09DBEGHIJJ@challenge?$AA@ ; "challenge"
		dd offset _ASN1_IA5STRING_it
; `NETSCAPE_SPKAC_it'::`2'::local_it
?local_it@?1??NETSCAPE_SPKAC_it@@9@9 dd	1, 10h ; DATA XREF: _NETSCAPE_SPKAC_ito
					; _NETSCAPE_SPKAC_freeo ...
		dd offset _NETSCAPE_SPKAC_seq_tt
		dd 2, 0
		dd 8
		dd offset ??_C@_0P@OEBIEFNJ@NETSCAPE_SPKAC?$AA@	; "NETSCAPE_SPKAC"
_NETSCAPE_SPKI_seq_tt dd 3 dup(0)	; DATA XREF: .rdata:00000088o
		dd offset ??_C@_05NBLLCIIN@spkac?$AA@ ;	"spkac"
		dd offset _NETSCAPE_SPKAC_it
		align 10h
		dd 4
		dd offset ??_C@_09JJGBLAHB@sig_algor?$AA@ ; "sig_algor"
		dd offset _X509_ALGOR_it
		dd 2 dup(0)
		dd 8
		dd offset ??_C@_09CMIIOJHF@signature?$AA@ ; "signature"
		dd offset _ASN1_BIT_STRING_it
; `NETSCAPE_SPKI_it'::`2'::local_it
?local_it@?1??NETSCAPE_SPKI_it@@9@9 dd 1, 10h ;	DATA XREF: _NETSCAPE_SPKI_freeo
					; _NETSCAPE_SPKI_ito ...
		dd offset _NETSCAPE_SPKI_seq_tt
		dd 3, 0
		dd 0Ch
		dd offset ??_C@_0O@DBIGEIKO@NETSCAPE_SPKI?$AA@ ; "NETSCAPE_SPKI"
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 9Ch
; COMDAT (pick any)
		public ??_C@_06GKCAPDID@pubkey?$AA@
; `string'
??_C@_06GKCAPDID@pubkey?$AA@ db	'pubkey',0 ; DATA XREF: .rdata:0000000Co
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0A4h
; COMDAT (pick any)
		public ??_C@_09DBEGHIJJ@challenge?$AA@
; `string'
??_C@_09DBEGHIJJ@challenge?$AA@	db 'challenge',0 ; DATA XREF: .rdata:00000020o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0B0h
; COMDAT (pick any)
		public ??_C@_0P@OEBIEFNJ@NETSCAPE_SPKAC?$AA@
; `string'
??_C@_0P@OEBIEFNJ@NETSCAPE_SPKAC?$AA@ db 'NETSCAPE_SPKAC',0 ; DATA XREF: .rdata:00000040o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0C0h
; COMDAT (pick any)
		public ??_C@_05NBLLCIIN@spkac?$AA@
; `string'
??_C@_05NBLLCIIN@spkac?$AA@ db 'spkac',0 ; DATA XREF: .rdata:00000050o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0C8h
; COMDAT (pick any)
		public ??_C@_09JJGBLAHB@sig_algor?$AA@
; `string'
??_C@_09JJGBLAHB@sig_algor?$AA@	db 'sig_algor',0 ; DATA XREF: .rdata:00000064o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D4h
; COMDAT (pick any)
		public ??_C@_09CMIIOJHF@signature?$AA@
; `string'
??_C@_09CMIIOJHF@signature?$AA@	db 'signature',0 ; DATA XREF: .rdata:00000078o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0E0h
; COMDAT (pick any)
		public ??_C@_0O@DBIGEIKO@NETSCAPE_SPKI?$AA@
; `string'
??_C@_0O@DBIGEIKO@NETSCAPE_SPKI?$AA@ db	'NETSCAPE_SPKI',0 ; DATA XREF: .rdata:00000098o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0F0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_SPKAC_it
_NETSCAPE_SPKAC_it proc	near		; DATA XREF: .rdata:00000054o
		mov	eax, offset ?local_it@?1??NETSCAPE_SPKAC_it@@9@9 ; `NETSCAPE_SPKAC_it'::`2'::local_it
		retn
_NETSCAPE_SPKAC_it endp

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


		public _NETSCAPE_SPKAC_free
_NETSCAPE_SPKAC_free proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??NETSCAPE_SPKAC_it@@9@9 ; `NETSCAPE_SPKAC_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_NETSCAPE_SPKAC_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 10Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_SPKAC_new
_NETSCAPE_SPKAC_new proc near
		push	offset ?local_it@?1??NETSCAPE_SPKAC_it@@9@9 ; `NETSCAPE_SPKAC_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_NETSCAPE_SPKAC_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 11Ch
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_SPKI_free
_NETSCAPE_SPKI_free proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??NETSCAPE_SPKI_it@@9@9 ; `NETSCAPE_SPKI_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_NETSCAPE_SPKI_free endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 130h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_SPKI_it
_NETSCAPE_SPKI_it proc near
		mov	eax, offset ?local_it@?1??NETSCAPE_SPKI_it@@9@9	; `NETSCAPE_SPKI_it'::`2'::local_it
		retn
_NETSCAPE_SPKI_it endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 138h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _NETSCAPE_SPKI_new
_NETSCAPE_SPKI_new proc	near
		push	offset ?local_it@?1??NETSCAPE_SPKI_it@@9@9 ; `NETSCAPE_SPKI_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_NETSCAPE_SPKI_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 148h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_NETSCAPE_SPKAC
_d2i_NETSCAPE_SPKAC proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??NETSCAPE_SPKAC_it@@9@9 ; `NETSCAPE_SPKAC_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_NETSCAPE_SPKAC endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 164h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_NETSCAPE_SPKI
_d2i_NETSCAPE_SPKI proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??NETSCAPE_SPKI_it@@9@9 ; `NETSCAPE_SPKI_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_NETSCAPE_SPKI endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 180h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_NETSCAPE_SPKAC
_i2d_NETSCAPE_SPKAC proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??NETSCAPE_SPKAC_it@@9@9 ; `NETSCAPE_SPKAC_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_NETSCAPE_SPKAC endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 198h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_NETSCAPE_SPKI
_i2d_NETSCAPE_SPKI proc	near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??NETSCAPE_SPKI_it@@9@9 ; `NETSCAPE_SPKI_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_NETSCAPE_SPKI endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _X509_ALGOR_it:near ; DATA XREF: .rdata:00000068o
		extrn _ASN1_BIT_STRING_it:near ; DATA XREF: .rdata:0000007Co
		extrn _X509_PUBKEY_it:near ; DATA XREF:	.rdata:00000010o
		extrn _ASN1_IA5STRING_it:near ;	DATA XREF: .rdata:00000024o
		extrn _ASN1_item_new:near ; CODE XREF: _NETSCAPE_SPKAC_new+5p
					; _NETSCAPE_SPKI_new+5p
		extrn _ASN1_item_free:near ; CODE XREF:	_NETSCAPE_SPKAC_free+9p
					; _NETSCAPE_SPKI_free+9p
		extrn _ASN1_item_d2i:near ; CODE XREF: _d2i_NETSCAPE_SPKAC+11p
					; _d2i_NETSCAPE_SPKI+11p
		extrn _ASN1_item_i2d:near ; CODE XREF: _i2d_NETSCAPE_SPKAC+Dp
					; _i2d_NETSCAPE_SPKI+Dp


		end
