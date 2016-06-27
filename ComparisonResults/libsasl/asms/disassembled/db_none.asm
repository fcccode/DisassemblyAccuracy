;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	CBFBC0DA0DF8124126499742CD02E87C
; Input	CRC32 :	E8A830D2

; File Name   :	C:\compspace\objfiles\libsasl\db_none.o
; Format      :	COFF (X386MAGIC)

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	dword public 'CODE' use32
		assume cs:_text
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasldb_getdata
__sasldb_getdata proc near

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		cmp	[ebp+arg_4], 0
		jz	short loc_2D
		mov	eax, [ebp+arg_0]
		mov	eax, [eax+84h]
		mov	dword ptr [esp+8], offset aNoDatabaseDriv ; "No	Database Driver"
		mov	dword ptr [esp+4], 0
		mov	edx, [ebp+arg_4]
		mov	[esp], edx
		call	eax

loc_2D:					; CODE XREF: __sasldb_getdata+Aj
		mov	eax, 0FFFFFFFFh
		leave
		retn
__sasldb_getdata endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasldb_putdata
__sasldb_putdata proc near		; DATA XREF: .eh_frame:00000138o
					; .eh_frame:00000158o ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		cmp	[ebp+arg_4], 0
		jz	short loc_61
		mov	eax, [ebp+arg_0]
		mov	eax, [eax+84h]
		mov	dword ptr [esp+8], offset aNoDatabaseDriv ; "No	Database Driver"
		mov	dword ptr [esp+4], 0
		mov	edx, [ebp+arg_4]
		mov	[esp], edx
		call	eax

loc_61:					; CODE XREF: __sasldb_putdata+Aj
		mov	eax, 0FFFFFFFFh
		leave
		retn
__sasldb_putdata endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasl_check_db
__sasl_check_db	proc near

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		cmp	[ebp+arg_4], 0
		jz	short loc_95
		mov	eax, [ebp+arg_0]
		mov	eax, [eax+84h]
		mov	dword ptr [esp+8], offset aNoDatabaseDriv ; "No	Database Driver"
		mov	dword ptr [esp+4], 0
		mov	edx, [ebp+arg_4]
		mov	[esp], edx
		call	eax

loc_95:					; CODE XREF: __sasl_check_db+Aj
		mov	eax, 0FFFFFFFFh
		leave
		retn
__sasl_check_db	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasldb_getkeyhandle
__sasldb_getkeyhandle proc near

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		cmp	[ebp+arg_4], 0
		jz	short loc_C9
		mov	eax, [ebp+arg_0]
		mov	eax, [eax+84h]
		mov	dword ptr [esp+8], offset aNoDatabaseDriv ; "No	Database Driver"
		mov	dword ptr [esp+4], 0
		mov	edx, [ebp+arg_4]
		mov	[esp], edx
		call	eax

loc_C9:					; CODE XREF: __sasldb_getkeyhandle+Aj
		mov	eax, 0
		leave
		retn
__sasldb_getkeyhandle endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasldb_getnextkey
__sasldb_getnextkey proc near
		push	ebp
		mov	ebp, esp
		mov	eax, 0FFFFFFFFh
		pop	ebp
		retn
__sasldb_getnextkey endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public __sasldb_releasekeyhandle
__sasldb_releasekeyhandle proc near
		push	ebp
		mov	ebp, esp
		mov	eax, 0FFFFFFFFh
		pop	ebp

locret_E3:				; DATA XREF: .eh_frame:00000134o
					; .eh_frame:00000154o ...
		retn
__sasldb_releasekeyhandle endp

_text		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use32
_data		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use32
_bss		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0ECh
aNoDatabaseDriv	db 'No Database Driver',0 ; DATA XREF: __sasldb_getdata+15o
					; __sasldb_putdata+15o	...
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata$zzz	segment	dword public 'DATA' use32
		assume cs:_rdata$zzz
		;org 100h
aGccGnu4_9_3	db 'GCC: (GNU) 4.9.3',0
		align 4
_rdata$zzz	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_eh_frame	segment	dword public 'DATA' use32
		assume cs:_eh_frame
		;org 114h
		dd 14h,	0
		dd 527A01h, 1087C01h, 4040C1Bh,	188h, 2	dup(1Ch)
		dd offset locret_E3-217h
		dd offset __sasldb_putdata
		dd 80E4100h, 0D420285h,	0CC57005h, 404h, 1Ch, 3Ch
		dd offset locret_E3-203h
		dd offset __sasldb_putdata
		dd 80E4100h, 0D420285h,	0CC57005h, 404h, 1Ch, 5Ch
		dd offset locret_E3-1EFh
		dd offset __sasldb_putdata
		dd 80E4100h, 0D420285h,	0CC57005h, 404h, 1Ch, 7Ch
		dd offset locret_E3-1DBh
		dd offset __sasldb_putdata
		dd 80E4100h, 0D420285h,	0CC57005h, 404h, 1Ch, 9Ch
		dd offset locret_E3-1C7h
		dd 0Ah,	80E4100h, 0D420285h, 0CC54605h,	404h, 1Ch, 0BCh
		dd offset locret_E3-1DDh
		dd 0Ah,	80E4100h, 0D420285h, 0CC54605h,	404h
_eh_frame	ends


		end