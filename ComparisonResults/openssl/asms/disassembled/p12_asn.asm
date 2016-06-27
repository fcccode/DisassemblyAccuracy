;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	CDF51A7953183F1040FF7780188025AD
; Input	CRC32 :	15F0C2AB

; File Name   :	C:\compspace\Diff\openssl\obj\p12_asn.obj
; Format      :	COFF (X386MAGIC)
; includelib "MSVCRT"
; includelib "OLDNAMES"

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment 'qword' can not be represented in assembly
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
_PKCS12_SAFEBAGS_item_tt dd 4, 2 dup(0)	; DATA XREF: .rdata:0000001Co
		dd offset ??_C@_0BA@MCGBLIFE@PKCS12_SAFEBAGS?$AA@ ; "PKCS12_SAFEBAGS"
		dd offset _PKCS12_SAFEBAG_it
; `PKCS12_SAFEBAGS_it'::`2'::local_it
?local_it@?1??PKCS12_SAFEBAGS_it@@9@9 dd 0 ; DATA XREF:	_PKCS12_SAFEBAGS_ito
		dd 0FFFFFFFFh
		dd offset _PKCS12_SAFEBAGS_item_tt
		dd 3 dup(0)
		dd offset ??_C@_0BA@MCGBLIFE@PKCS12_SAFEBAGS?$AA@ ; "PKCS12_SAFEBAGS"
_PKCS12_AUTHSAFES_item_tt dd 4,	2 dup(0) ; DATA	XREF: .rdata:0000004Co
		dd offset ??_C@_0BB@BIPBIGGF@PKCS12_AUTHSAFES?$AA@ ; "PKCS12_AUTHSAFES"
		dd offset _PKCS7_it
; `PKCS12_AUTHSAFES_it'::`2'::local_it
?local_it@?1??PKCS12_AUTHSAFES_it@@9@9 dd 0 ; DATA XREF: _PKCS12_AUTHSAFES_ito
		dd 0FFFFFFFFh
		dd offset _PKCS12_AUTHSAFES_item_tt
		dd 3 dup(0)
		dd offset ??_C@_0BB@BIPBIGGF@PKCS12_AUTHSAFES?$AA@ ; "PKCS12_AUTHSAFES"
_PKCS12_seq_tt	dd 3 dup(0)		; DATA XREF: .rdata:000000A4o
		dd offset ??_C@_07CPCPJPKL@version?$AA@	; "version"
		dd offset _ASN1_INTEGER_it
		dd 2 dup(0)
		dd 8
		dd offset ??_C@_09HFIAEJAG@authsafes?$AA@ ; "authsafes"
		dd offset _PKCS7_it
		dd 1, 0
dword_90	dd 4			; DATA XREF: .rdata:_bag_default_tto
					; .rdata:00000144o ...
off_94		dd offset ??_C@_03BADCJGEO@mac?$AA@
					; DATA XREF: .rdata:_PKCS12_SAFEBAG_adbtblo
					; .rdata:000001F8o
					; `string'
off_98		dd offset _PKCS12_MAC_DATA_it ;	DATA XREF: .rdata:00000228o
					; .rdata:00000240o ...
; `PKCS12_it'::`2'::local_it
?local_it@?1??PKCS12_it@@9@9 dd	1, 10h	; DATA XREF: _PKCS12_freeo _PKCS12_ito ...
		dd offset _PKCS12_seq_tt
		dd 3, 0
		dd 0Ch
		dd offset ??_C@_06CKOLGKJK@PKCS12?$AA@ ; "PKCS12"
_PKCS12_MAC_DATA_seq_tt	dd 3 dup(0)	; DATA XREF: .rdata:000000FCo
		dd offset ??_C@_05DMLMEGOG@dinfo?$AA@ ;	"dinfo"
		dd offset _X509_SIG_it
		dd 2 dup(0)
		dd 4
		dd offset ??_C@_04OKLIMCN@salt?$AA@ ; "salt"
		dd offset _ASN1_OCTET_STRING_it
		dd 1, 0
		dd 8
		dd offset ??_C@_04BKLHDIKK@iter?$AA@ ; "iter"
		dd offset _ASN1_INTEGER_it
; `PKCS12_MAC_DATA_it'::`2'::local_it
?local_it@?1??PKCS12_MAC_DATA_it@@9@9 dd 1, 10h	; DATA XREF: _PKCS12_MAC_DATA_ito
					; _PKCS12_MAC_DATA_freeo ...
		dd offset _PKCS12_MAC_DATA_seq_tt
dword_100	dd 3, 0			; DATA XREF: .rdata:0000019Co
					; .rdata:000002A0o
		dd 0Ch
		dd offset ??_C@_0BA@LPMCLHLH@PKCS12_MAC_DATA?$AA@ ; "PKCS12_MAC_DATA"
_bag_default_tt	dd offset dword_90	; DATA XREF: .rdata:00000138o
		align 8
		dd 4
		dd offset ??_C@_0M@PABGOMNF@value?4other?$AA@ ;	"value.other"
		dd offset _ASN1_ANY_it
; `PKCS12_BAGS_adb'::`2'::internal_adb
?internal_adb@?1??PKCS12_BAGS_adb@@9@9 dd 3 dup(0) ; DATA XREF:	_PKCS12_BAGS_adbo
		dd offset _PKCS12_BAGS_adbtbl
		dd 3
		dd offset _bag_default_tt
		align 10h
_PKCS12_BAGS_adbtbl dd offset ?local_it@?1??PKCS12_it@@9@9+2 ; DATA XREF: .rdata:00000130o
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_0P@IGODMFMC@value?4x509cert?$AA@ ; "value.x509cert"
		dd offset _ASN1_OCTET_STRING_it
		dd offset ?local_it@?1??PKCS12_it@@9@9+4
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_0O@KKFHCJNP@value?4x509crl?$AA@	; "value.x509crl"
		dd offset _ASN1_OCTET_STRING_it
		dd offset ?local_it@?1??PKCS12_it@@9@9+3
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_0P@OEFHMPFE@value?4sdsicert?$AA@ ; "value.sdsicert"
		dd offset _ASN1_IA5STRING_it
_PKCS12_BAGS_seq_tt dd 3 dup(0)		; DATA XREF: .rdata:000001B8o
		dd offset ??_C@_04GPMDFGEJ@type?$AA@ ; "type"
		dd offset _ASN1_OBJECT_it
		dd offset dword_100
		dd 0FFFFFFFFh, 0
		dd offset ??_C@_0M@BNPBMADO@PKCS12_BAGS?$AA@ ; "PKCS12_BAGS"
		dd offset _PKCS12_BAGS_adb
; `PKCS12_BAGS_it'::`2'::local_it
?local_it@?1??PKCS12_BAGS_it@@9@9 dd 1,	10h ; DATA XREF: _PKCS12_BAGS_ito
					; _PKCS12_BAGS_freeo ...
		dd offset _PKCS12_BAGS_seq_tt
		dd 2, 0
		dd 8
		dd offset ??_C@_0M@BNPBMADO@PKCS12_BAGS?$AA@ ; "PKCS12_BAGS"
_safebag_default_tt dd offset dword_90	; DATA XREF: .rdata:00000284o
		dd 0
		dd 4
		dd offset ??_C@_0M@PABGOMNF@value?4other?$AA@ ;	"value.other"
		dd offset _ASN1_ANY_it
_PKCS12_SAFEBAG_adbtbl dd offset off_94+2 ; DATA XREF: .rdata:0000027Co
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_0N@DOAHKDFI@value?4keybag?$AA@ ; "value.keybag"
		dd offset _PKCS8_PRIV_KEY_INFO_it
		dd offset off_94+3
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_0P@FIADCDOI@value?4shkeybag?$AA@ ; "value.shkeybag"
		dd offset _X509_SIG_it
		dd offset off_98+3
		dd offset dword_90+2
		dd 0
		dd 4
		dd offset ??_C@_0M@NFMGHALF@value?4safes?$AA@ ;	"value.safes"
		dd offset _PKCS12_SAFEBAG_it
		dd offset off_98
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_09EBGANBLK@value?4bag?$AA@ ; "value.bag"
		dd offset _PKCS12_BAGS_it
		dd offset off_98+1
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_09EBGANBLK@value?4bag?$AA@ ; "value.bag"
		dd offset _PKCS12_BAGS_it
		dd offset off_98+2
		dd offset dword_90
		dd 0
		dd 4
		dd offset ??_C@_09EBGANBLK@value?4bag?$AA@ ; "value.bag"
		dd offset _PKCS12_BAGS_it
; `PKCS12_SAFEBAG_adb'::`2'::internal_adb
?internal_adb@?1??PKCS12_SAFEBAG_adb@@9@9 dd 3 dup(0) ;	DATA XREF: _PKCS12_SAFEBAG_adbo
		dd offset _PKCS12_SAFEBAG_adbtbl
		dd 6
		dd offset _safebag_default_tt
		dd 0
_PKCS12_SAFEBAG_seq_tt dd 3 dup(0)	; DATA XREF: .rdata:000002D0o
		dd offset ??_C@_04GPMDFGEJ@type?$AA@ ; "type"
		dd offset _ASN1_OBJECT_it
		dd offset dword_100
		dd 0FFFFFFFFh, 0
		dd offset ??_C@_0P@EECFPDPC@PKCS12_SAFEBAG?$AA@	; "PKCS12_SAFEBAG"
		dd offset _PKCS12_SAFEBAG_adb
		dd 3, 0
		dd 8
		dd offset ??_C@_06CEIPPJF@attrib?$AA@ ;	"attrib"
		dd offset _X509_ATTRIBUTE_it
; `PKCS12_SAFEBAG_it'::`2'::local_it
?local_it@?1??PKCS12_SAFEBAG_it@@9@9 dd	1, 10h ; DATA XREF: _PKCS12_SAFEBAG_ito
					; _PKCS12_SAFEBAG_freeo ...
		dd offset _PKCS12_SAFEBAG_seq_tt
		dd 3, 0
		dd 0Ch
		dd offset ??_C@_0P@EECFPDPC@PKCS12_SAFEBAG?$AA@	; "PKCS12_SAFEBAG"
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2E4h
; COMDAT (pick any)
		public ??_C@_0BA@MCGBLIFE@PKCS12_SAFEBAGS?$AA@
; `string'
??_C@_0BA@MCGBLIFE@PKCS12_SAFEBAGS?$AA@	db 'PKCS12_SAFEBAGS',0 ; DATA XREF: .rdata:0000000Co
					; .rdata:0000002Co
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 2F4h
; COMDAT (pick any)
		public ??_C@_0BB@BIPBIGGF@PKCS12_AUTHSAFES?$AA@
; `string'
??_C@_0BB@BIPBIGGF@PKCS12_AUTHSAFES?$AA@ db 'PKCS12_AUTHSAFES',0
					; DATA XREF: .rdata:0000003Co
					; .rdata:0000005Co
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 308h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_MAC_DATA_it
_PKCS12_MAC_DATA_it proc near		; DATA XREF: .rdata:off_98o
		mov	eax, offset ?local_it@?1??PKCS12_MAC_DATA_it@@9@9 ; `PKCS12_MAC_DATA_it'::`2'::local_it
		retn
_PKCS12_MAC_DATA_it endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 310h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_SAFEBAG_it
_PKCS12_SAFEBAG_it proc	near		; DATA XREF: .rdata:00000010o
					; .rdata:00000224o
		mov	eax, offset ?local_it@?1??PKCS12_SAFEBAG_it@@9@9 ; `PKCS12_SAFEBAG_it'::`2'::local_it
		retn
_PKCS12_SAFEBAG_it endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 318h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_BAGS_it
_PKCS12_BAGS_it	proc near		; DATA XREF: .rdata:0000023Co
					; .rdata:00000254o ...
		mov	eax, offset ?local_it@?1??PKCS12_BAGS_it@@9@9 ;	`PKCS12_BAGS_it'::`2'::local_it
		retn
_PKCS12_BAGS_it	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 320h
; COMDAT (pick any)
		public ??_C@_07CPCPJPKL@version?$AA@
; `string'
??_C@_07CPCPJPKL@version?$AA@ db 'version',0 ; DATA XREF: .rdata:0000006Co
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 328h
; COMDAT (pick any)
		public ??_C@_09HFIAEJAG@authsafes?$AA@
; `string'
??_C@_09HFIAEJAG@authsafes?$AA@	db 'authsafes',0 ; DATA XREF: .rdata:00000080o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 334h
; COMDAT (pick any)
		public ??_C@_03BADCJGEO@mac?$AA@
; `string'
??_C@_03BADCJGEO@mac?$AA@ dd 63616Dh	; DATA XREF: .rdata:off_94o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 338h
; COMDAT (pick any)
		public ??_C@_06CKOLGKJK@PKCS12?$AA@
; `string'
??_C@_06CKOLGKJK@PKCS12?$AA@ db	'PKCS12',0 ; DATA XREF: .rdata:000000B4o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 340h
; COMDAT (pick any)
		public ??_C@_05DMLMEGOG@dinfo?$AA@
; `string'
??_C@_05DMLMEGOG@dinfo?$AA@ db 'dinfo',0 ; DATA XREF: .rdata:000000C4o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 348h
; COMDAT (pick any)
		public ??_C@_04OKLIMCN@salt?$AA@
; `string'
??_C@_04OKLIMCN@salt?$AA@ db 'salt',0   ; DATA XREF: .rdata:000000D8o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 350h
; COMDAT (pick any)
		public ??_C@_04BKLHDIKK@iter?$AA@
; `string'
??_C@_04BKLHDIKK@iter?$AA@ db 'iter',0  ; DATA XREF: .rdata:000000ECo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 358h
; COMDAT (pick any)
		public ??_C@_0BA@LPMCLHLH@PKCS12_MAC_DATA?$AA@
; `string'
??_C@_0BA@LPMCLHLH@PKCS12_MAC_DATA?$AA@	db 'PKCS12_MAC_DATA',0 ; DATA XREF: .rdata:0000010Co
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 368h
; COMDAT (pick any)
		public ??_C@_0M@PABGOMNF@value?4other?$AA@
; `string'
??_C@_0M@PABGOMNF@value?4other?$AA@ db 'value.other',0 ; DATA XREF: .rdata:0000011Co
					; .rdata:000001D8o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 374h
; COMDAT (pick any)
		public ??_C@_0P@IGODMFMC@value?4x509cert?$AA@
; `string'
??_C@_0P@IGODMFMC@value?4x509cert?$AA@ db 'value.x509cert',0 ; DATA XREF: .rdata:00000150o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 384h
; COMDAT (pick any)
		public ??_C@_0O@KKFHCJNP@value?4x509crl?$AA@
; `string'
??_C@_0O@KKFHCJNP@value?4x509crl?$AA@ db 'value.x509crl',0 ; DATA XREF: .rdata:00000168o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 394h
; COMDAT (pick any)
		public ??_C@_0P@OEFHMPFE@value?4sdsicert?$AA@
; `string'
??_C@_0P@OEFHMPFE@value?4sdsicert?$AA@ db 'value.sdsicert',0 ; DATA XREF: .rdata:00000180o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3A4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_PKCS12_BAGS_adb proc near		; DATA XREF: .rdata:000001ACo
		mov	eax, offset ?internal_adb@?1??PKCS12_BAGS_adb@@9@9 ; `PKCS12_BAGS_adb'::`2'::internal_adb
		retn
_PKCS12_BAGS_adb endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3ACh
; COMDAT (pick any)
		public ??_C@_04GPMDFGEJ@type?$AA@
; `string'
??_C@_04GPMDFGEJ@type?$AA@ db 'type',0  ; DATA XREF: .rdata:00000194o
					; .rdata:00000298o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3B4h
; COMDAT (pick any)
		public ??_C@_0M@BNPBMADO@PKCS12_BAGS?$AA@
; `string'
??_C@_0M@BNPBMADO@PKCS12_BAGS?$AA@ db 'PKCS12_BAGS',0 ; DATA XREF: .rdata:000001A8o
					; .rdata:000001C8o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3C0h
; COMDAT (pick any)
		public ??_C@_0N@DOAHKDFI@value?4keybag?$AA@
; `string'
??_C@_0N@DOAHKDFI@value?4keybag?$AA@ db	'value.keybag',0 ; DATA XREF: .rdata:000001F0o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3D0h
; COMDAT (pick any)
		public ??_C@_0P@FIADCDOI@value?4shkeybag?$AA@
; `string'
??_C@_0P@FIADCDOI@value?4shkeybag?$AA@ db 'value.shkeybag',0 ; DATA XREF: .rdata:00000208o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3E0h
; COMDAT (pick any)
		public ??_C@_0M@NFMGHALF@value?4safes?$AA@
; `string'
??_C@_0M@NFMGHALF@value?4safes?$AA@ db 'value.safes',0 ; DATA XREF: .rdata:00000220o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 3ECh
; COMDAT (pick any)
		public ??_C@_09EBGANBLK@value?4bag?$AA@
; `string'
??_C@_09EBGANBLK@value?4bag?$AA@ db 'value.bag',0 ; DATA XREF: .rdata:00000238o
					; .rdata:00000250o ...
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 3F8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_PKCS12_SAFEBAG_adb proc near		; DATA XREF: .rdata:000002B0o
		mov	eax, offset ?internal_adb@?1??PKCS12_SAFEBAG_adb@@9@9 ;	`PKCS12_SAFEBAG_adb'::`2'::internal_adb
		retn
_PKCS12_SAFEBAG_adb endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 400h
; COMDAT (pick any)
		public ??_C@_0P@EECFPDPC@PKCS12_SAFEBAG?$AA@
; `string'
??_C@_0P@EECFPDPC@PKCS12_SAFEBAG?$AA@ db 'PKCS12_SAFEBAG',0 ; DATA XREF: .rdata:000002ACo
					; .rdata:000002E0o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 410h
; COMDAT (pick any)
		public ??_C@_06CEIPPJF@attrib?$AA@
; `string'
??_C@_06CEIPPJF@attrib?$AA@ db 'attrib',0 ; DATA XREF: .rdata:000002C0o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 418h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_AUTHSAFES_it
_PKCS12_AUTHSAFES_it proc near
		mov	eax, offset ?local_it@?1??PKCS12_AUTHSAFES_it@@9@9 ; `PKCS12_AUTHSAFES_it'::`2'::local_it
		retn
_PKCS12_AUTHSAFES_it endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 420h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_BAGS_free
_PKCS12_BAGS_free proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??PKCS12_BAGS_it@@9@9 ; `PKCS12_BAGS_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_PKCS12_BAGS_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 434h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_BAGS_new
_PKCS12_BAGS_new proc near
		push	offset ?local_it@?1??PKCS12_BAGS_it@@9@9 ; `PKCS12_BAGS_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_PKCS12_BAGS_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 444h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_MAC_DATA_free
_PKCS12_MAC_DATA_free proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??PKCS12_MAC_DATA_it@@9@9 ; `PKCS12_MAC_DATA_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_PKCS12_MAC_DATA_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 458h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_MAC_DATA_new
_PKCS12_MAC_DATA_new proc near
		push	offset ?local_it@?1??PKCS12_MAC_DATA_it@@9@9 ; `PKCS12_MAC_DATA_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_PKCS12_MAC_DATA_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 468h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_SAFEBAGS_it
_PKCS12_SAFEBAGS_it proc near
		mov	eax, offset ?local_it@?1??PKCS12_SAFEBAGS_it@@9@9 ; `PKCS12_SAFEBAGS_it'::`2'::local_it
		retn
_PKCS12_SAFEBAGS_it endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 470h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_SAFEBAG_free
_PKCS12_SAFEBAG_free proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??PKCS12_SAFEBAG_it@@9@9 ; `PKCS12_SAFEBAG_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_PKCS12_SAFEBAG_free endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 484h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_SAFEBAG_new
_PKCS12_SAFEBAG_new proc near
		push	offset ?local_it@?1??PKCS12_SAFEBAG_it@@9@9 ; `PKCS12_SAFEBAG_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_PKCS12_SAFEBAG_new endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 494h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_free
_PKCS12_free	proc near

arg_0		= dword	ptr  4

		push	offset ?local_it@?1??PKCS12_it@@9@9 ; `PKCS12_it'::`2'::local_it
		push	[esp+4+arg_0]
		call	_ASN1_item_free
		add	esp, 8
		retn
_PKCS12_free	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4A8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_it
_PKCS12_it	proc near
		mov	eax, offset ?local_it@?1??PKCS12_it@@9@9 ; `PKCS12_it'::`2'::local_it
		retn
_PKCS12_it	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4B0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _PKCS12_new
_PKCS12_new	proc near
		push	offset ?local_it@?1??PKCS12_it@@9@9 ; `PKCS12_it'::`2'::local_it
		call	_ASN1_item_new
		add	esp, 4
		retn
_PKCS12_new	endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4C0h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PKCS12
_d2i_PKCS12	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??PKCS12_it@@9@9 ; `PKCS12_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_PKCS12	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4DCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PKCS12_BAGS
_d2i_PKCS12_BAGS proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??PKCS12_BAGS_it@@9@9 ; `PKCS12_BAGS_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_PKCS12_BAGS endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 4F8h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PKCS12_MAC_DATA
_d2i_PKCS12_MAC_DATA proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??PKCS12_MAC_DATA_it@@9@9 ; `PKCS12_MAC_DATA_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_PKCS12_MAC_DATA endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 514h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _d2i_PKCS12_SAFEBAG
_d2i_PKCS12_SAFEBAG proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	offset ?local_it@?1??PKCS12_SAFEBAG_it@@9@9 ; `PKCS12_SAFEBAG_it'::`2'::local_it
		push	[esp+4+arg_8]
		push	[esp+8+arg_4]
		push	[esp+0Ch+arg_0]
		call	_ASN1_item_d2i
		add	esp, 10h
		retn
_d2i_PKCS12_SAFEBAG endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 530h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12
_i2d_PKCS12	proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??PKCS12_it@@9@9 ; `PKCS12_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_PKCS12	endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 548h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12_BAGS
_i2d_PKCS12_BAGS proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??PKCS12_BAGS_it@@9@9 ; `PKCS12_BAGS_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_PKCS12_BAGS endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 560h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12_MAC_DATA
_i2d_PKCS12_MAC_DATA proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??PKCS12_MAC_DATA_it@@9@9 ; `PKCS12_MAC_DATA_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_PKCS12_MAC_DATA endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 578h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _i2d_PKCS12_SAFEBAG
_i2d_PKCS12_SAFEBAG proc near

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	offset ?local_it@?1??PKCS12_SAFEBAG_it@@9@9 ; `PKCS12_SAFEBAG_it'::`2'::local_it
		push	[esp+4+arg_4]
		push	[esp+8+arg_0]
		call	_ASN1_item_i2d
		add	esp, 0Ch
		retn
_i2d_PKCS12_SAFEBAG endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _ASN1_INTEGER_it:near ; DATA XREF: .rdata:00000070o
					; .rdata:000000F0o
		extrn _PKCS8_PRIV_KEY_INFO_it:near ; DATA XREF:	.rdata:000001F4o
		extrn _ASN1_OCTET_STRING_it:near ; DATA	XREF: .rdata:000000DCo
					; .rdata:00000154o ...
		extrn _PKCS7_it:near	; DATA XREF: .rdata:00000040o
					; .rdata:00000084o
		extrn _ASN1_IA5STRING_it:near ;	DATA XREF: .rdata:00000184o
		extrn _X509_SIG_it:near	; DATA XREF: .rdata:000000C8o
					; .rdata:0000020Co
		extrn _X509_ATTRIBUTE_it:near ;	DATA XREF: .rdata:000002C4o
		extrn _ASN1_ANY_it:near	; DATA XREF: .rdata:00000120o
					; .rdata:000001DCo
		extrn _ASN1_OBJECT_it:near ; DATA XREF:	.rdata:00000198o
					; .rdata:0000029Co
		extrn _ASN1_item_new:near ; CODE XREF: _PKCS12_BAGS_new+5p
					; _PKCS12_MAC_DATA_new+5p ...
		extrn _ASN1_item_free:near ; CODE XREF:	_PKCS12_BAGS_free+9p
					; _PKCS12_MAC_DATA_free+9p ...
		extrn _ASN1_item_d2i:near ; CODE XREF: _d2i_PKCS12+11p
					; _d2i_PKCS12_BAGS+11p	...
		extrn _ASN1_item_i2d:near ; CODE XREF: _i2d_PKCS12+Dp
					; _i2d_PKCS12_BAGS+Dp ...


		end