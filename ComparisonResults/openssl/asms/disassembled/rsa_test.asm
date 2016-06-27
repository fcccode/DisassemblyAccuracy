;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	00A9F47DE30A8D49EBBDBA91AEF704F0
; Input	CRC32 :	56113BB2

; File Name   :	C:\compspace\Diff\openssl\obj\rsa_test.obj
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
; `key1'::`2'::n
?n@?1??key1@@9@9 dd 0AB36AA00h,	0FDAC88CEh, 3C5255FFh, 3F52C47Fh, 0DA0EF90h
					; DATA XREF: _key1+Ao
		dd 254A77F3h, 0B4622E9Fh, 0B59CD9C5h, 0A000B3ADh, 1535E28h
		dd 700C0E93h, 937668FBh, 0CE16E69Ch, 0E0114A62h, 1E346D08h
		dd 0A1A0ACBCh, 0F5h
; `key1'::`2'::e
?e@?1??key1@@9@9 dd 11h			; DATA XREF: _key1+1Co
; `key1'::`2'::d
?d@?1??key1@@9@9 dd 4837030Ah, 69876462h, 0BC305F5Fh, 448BB938h, 0FF2DCDC2h
					; DATA XREF: _key1+2Eo
		dd 0CD984043h, 38A1D820h, 64BF90D0h, 0A73F7C79h, 3CCBCDA2h
		dd 0BABDE0D1h, 0F9B45426h, 0E58A8EDFh, 9F3D739Dh, 6201B333h
		dd 511DFD4Ah, 0
; `key1'::`2'::p
?p@?1??key1@@9@9 dd 0B440D800h,	2EB46616h, 0A30DEA92h, 0B50432B4h, 5233CECFh
					; DATA XREF: _key1+40o
		dd 16044D52h, 0E741A4A5h, 1246AF00h, 0Dh
; `key1'::`2'::q
?q@?1??key1@@9@9 dd 0B17FC900h,	53F427F0h, 331234F6h, 0D9D1AAEAh, 426C3F35h
					; DATA XREF: _key1+52o
		dd 0B16688D0h, 200F5AD0h, 9D8B0235h, 89h
; `key1'::`2'::dmp1
?dmp1@?1??key1@@9@9 dd 72950B59h, 0C4A9C2A2h, 0C29D0506h, 0AF1D2FABh, 4F8B7EEBh
					; DATA XREF: _key1+64o
		dd 9E54A710h, 0B4F5ED8Eh, 59EE0FCh, 0
; `key1'::`2'::dmq1
?dmq1@?1??key1@@9@9 dd 53C8E00h, 0E015FE21h, 6FA306EAh,	990CF1F0h, 7A5BC352h
					; DATA XREF: _key1+79o
		dd 32FD1475h, 0AD0AB838h, 8D629852h, 51h
; `key1'::`2'::iqmp
?iqmp@?1??key1@@9@9 dd 18F73F36h, 0BE9A89Dh, 711F341Dh,	0A8769BD0h, 1DE143A9h
					; DATA XREF: _key1+8Bo
		dd 244DB210h, 0FEEA2D9Fh, 26180CF8h, 0
; `key1'::`2'::ctext_ex
?ctext_ex@?1??key1@@9@9	xmmword	89DB4F51CCF3536E52791ACAF9058F1Bh ; DATA XREF: _key1+9Fr
xmmword_150	xmmword	52CB80A4508DE692B9781E239391FB2Bh ; DATA XREF: _key1+AAr
xmmword_160	xmmword	4458EB40D00F8CAB025D8D95745C8933h ; DATA XREF: _key1+B5r
xmmword_170	xmmword	0D23994407106A8BF9D4A27D89EC305B0h ; DATA XREF:	_key1+C0r
		dd 0
; `key2'::`2'::n
?n@?1??key2@@9@9 dd 9A07A300h, 0FD0DDF90h, 0C09AC72h, 0B8782ACCh, 3E131374h
					; DATA XREF: _key2+Ao
		dd 989C7540h, 4F20F8FAh, 260B8A35h, 0E770673Ch,	693BA983h
		dd 7937B771h, 0E87B71D2h, 0CF7734h
; `key2'::`2'::e
?e@?1??key2@@9@9 dd 3			; DATA XREF: _key2+1Co
; `key2'::`2'::d
?d@?1??key2@@9@9 dd 60BCAF6Ch, 4CFEB394h, 32B3B072h, 0A225FBC6h, 802962B7h
					; DATA XREF: _key2+2Eo
		dd 0FC65684Eh, 0DF745AA4h, 41B88F0Fh, 0D0C0523Bh, 599B3DE5h
		dd 0E79BF10Fh, 21DD499Fh, 0EBE5h
; `key2'::`2'::p
?p@?1??key2@@9@9 dd 3520CF00h, 869D8B02h, 16B44098h, 922EB466h,	0B4A30DEAh
					; DATA XREF: _key2+40o
		dd 0CFB50432h, 91CEh
; `key2'::`2'::q
?q@?1??key2@@9@9 dd 0B17FC900h,	53F427F0h, 331234F6h, 0D9D1AAEAh, 426C3F35h
					; DATA XREF: _key2+52o
		dd 0B16688D0h, 5FD0h
; `key2'::`2'::dmp1
?dmp1@?1??key2@@9@9 dd 78158A00h, 0AF135DACh, 0B9222B10h, 6174CD99h, 226D5EF1h
					; DATA XREF: _key2+64o
		dd 0DF2303CCh, 0BDFh
; `key2'::`2'::dmq1
?dmq1@?1??key2@@9@9 dd 21558600h, 8D4DC54Ah, 7761CD4Eh,	9036C7F1h, 2C482ACEh
					; DATA XREF: _key2+79o
		dd 0CB99058Bh, 3FE0h
; `key2'::`2'::iqmp
?iqmp@?1??key2@@9@9 dd 0EFEF8300h, 0DA4A9B8h, 98EDB61Dh, 13ED84ADh, 8C1DC35h
					; DATA XREF: _key2+8Bo
		dd 57D022F3h, 8DCFh
; `key2'::`2'::ctext_ex
?ctext_ex@?1??key2@@9@9	xmmword	2A58B149E5E88023193583C928DDBD14h ; DATA XREF: _key2+9Fr
xmmword_28C	xmmword	0E480A1F0D51F1F31A5A6036D48B4408Bh ; DATA XREF:	_key2+AAr
xmmword_29C	xmmword	52240829541352B1749034A929035317h ; DATA XREF: _key2+B5r
word_2AC	dw 5162h		; DATA XREF: _key2+C0r
		align 10h
; `key3'::`2'::n
?n@?1??key3@@9@9 dd 2FF8BB00h, 0CE820609h, 0AC38239Ch, 71A89D2Bh, 78D36F7h
					; DATA XREF: _key3+Eo
		dd 4310D4EEh, 0B6D640A4h, 0F55474F0h, 0BADFB81Fh, 25C03AFh
		dd 48EA61ABh, 0CD6FEBCEh, 52ED7648h, 0ECE1600Dh, 9D711946h
		dd 808B5B8Ah, 0E0B8AF7Fh, 37C7DFA3h, 0B4E63E72h, 253AD9B7h
		dd 646AEE84h, 5309069Dh, 0B2348874h, 39984545h,	0B1AAE04Eh
		dd 0A5617B2Dh, 9A7A521Fh, 68C1F641h, 7253E27Fh,	8F2ACA98h
		dd 0E5F84659h, 0BD1D09FDh, 0CBh
; `key3'::`2'::e
?e@?1??key3@@9@9 dd 11h			; DATA XREF: _key3+20o
; `key3'::`2'::d
?d@?1??key3@@9@9 dd 0FCDAA500h,	0F2FA4153h, 88B9C489h, 0CDC130DBh, 25313FF8h
					; DATA XREF: _key3+35o
		dd 0B468061Eh, 38818427h, 41965701h, 0B31094B2h, 6B8D99C7h
		dd 5E7465C4h, 6926395Ch, 0A20D87D6h, 39A982C0h,	0B8DC7FE3h
		dd 0DA3EC92Eh, 0ADF37FC9h, 0CFAC5059h, 761C11BCh, 9452A9F1h
		dd 0AF6AE544h, 96CC568h, 0C38DD32Ch, 0AD2F5BEh,	0ED269993h
		dd 3EA1744Fh, 0A1E1FBDDh, 9448CCCEh, 0C22894AFh, 3F88B8B7h
		dd 4B3A46E4h, 0B31C5BC8h, 0C1h
; `main'::`2'::ptext_ex
?ptext_ex@?1??main@@9@9	db 'T��4,I�*',0 ; DATA XREF: _main+D2o _main+113r ...
		align 4
; `key3'::`2'::p
?p@?1??key3@@9@9 dd 0AECFEE00h,	0B3B9B181h, 0B8108C9h, 60B5A110h, 9FEB9901h
					; DATA XREF: _key3+47o
		dd 0FDF4AE44h, 1AB893A4h, 0F6843D9Eh, 0F04E1232h, 1E5D6E23h
		dd 0FA287E3Bh, 0A04AAE7h, 21255B2Dh, 1F9D4576h,	0BA417539h
		dd 65FB582Ah, 99h, 0
; `key3'::`2'::q
?q@?1??key3@@9@9 dd 0B17FC900h,	53F427F0h, 331234F6h, 0D9D1AAEAh, 426C3F35h
					; DATA XREF: _key3+59o
		dd 0B16688D0h, 200F5AD0h, 9D8B0235h, 0B4409886h, 2EB46616h
		dd 0A30DEA92h, 0B50432B4h, 5233CECFh, 16044D52h, 0E741A4A5h
		dd 1546AF00h, 3, 0
; `key3'::`2'::dmp1
?dmp1@?1??key3@@9@9 dd 0A64C4954h, 3703BA3Eh, 2340E2E4h, 5A9AD6FCh, 0DCDD07EBh
					; DATA XREF: _key3+6Bo
		dd 0D0A48301h, 0B0549BACh, 3EB1F251h, 750949D9h, 1474B7EAh
		dd 0F7C159FFh, 2E9A2E69h, 0FC382B20h, 41470A91h, 3CC9AD74h
		dd 81C9671Fh, 2	dup(0)
; `key3'::`2'::dmq1
?dmq1@?1??key3@@9@9 dd 90021E47h, 75F00AFFh, 0F8B75103h, 0A94C8678h, 3ABDAD61h
					; DATA XREF: _key3+80o
		dd 1C997E8Ah, 0A956055Ch, 0A746314Ch, 8F3F80F9h, 42E38A6Fh
		dd 8AFD31E9h, 0D227AE4h, 95A4991Bh, 0FE079884h,	5A24F939h
		dd 3DDA3698h, 2	dup(0)
; `key3'::`2'::iqmp
?iqmp@?1??key3@@9@9 dd 4F6CB000h, 163BBDAh, 5B268D19h, 2394AEDBh, 71F280B3h
					; DATA XREF: _key3+92o
		dd 885334F7h, 7F079350h, 11E239CDh, 3286C99Fh, 83584F15h
		dd 67A967B1h, 4E2B40BFh, 960F2E9Eh, 0EA98E656h,	0FBED6636h
		dd 39807925h, 0F7h, 0
; `key3'::`2'::ctext_ex
?ctext_ex@?1??key3@@9@9	dd 566B24B8h, 8158EDA6h, 0D985B5AEh, 0D72A5BA2h, 0E017C490h
					; DATA XREF: _key3+ABo
		dd 0F11B6880h, 0DEC32BACh, 0CE8B9DB6h, 6F36C4F0h, 0F00A40ECh
		dd 9B2EA752h, 0B3B5FF0Eh, 0DB92F1F2h, 0C103CAEAh, 71054027h
		dd 61FBF13h, 0E922AC69h, 2E85A7F3h, 13D9153Ch, 86B8B0CAh
		dd 92C9953Ah, 7486CE94h, 61544921h, 0D4F44603h,	7C6FB274h
		dd 0E62EB448h, 2A571F8Eh, 6A02C41Fh, 0F5B456C4h, 1E627B9Fh
		dd 8FD8B9A1h, 0B12F2064h
		db 0
		align 4
_data		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment 'qword' can not be represented in assembly
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 5B4h
_rnd_seed	db 'string to make the random number generator think it has entropy',0
					; DATA XREF: _main+4Eo
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 5F4h
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
		;org 5FCh
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
		;org 620h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_key1		proc near		; CODE XREF: _main+B4p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	dword ptr [esi+10h]
		push	41h ; 'A'
		push	offset ?n@?1??key1@@9@9	; `key1'::`2'::n
		call	_BN_bin2bn
		push	dword ptr [esi+14h]
		mov	[esi+10h], eax
		push	1
		push	offset ?e@?1??key1@@9@9	; `key1'::`2'::e
		call	_BN_bin2bn
		push	dword ptr [esi+18h]
		mov	[esi+14h], eax
		push	40h ; '@'
		push	offset ?d@?1??key1@@9@9	; `key1'::`2'::d
		call	_BN_bin2bn
		push	dword ptr [esi+1Ch]
		mov	[esi+18h], eax
		push	21h ; '!'
		push	offset ?p@?1??key1@@9@9	; `key1'::`2'::p
		call	_BN_bin2bn
		push	dword ptr [esi+20h]
		mov	[esi+1Ch], eax
		push	21h ; '!'
		push	offset ?q@?1??key1@@9@9	; `key1'::`2'::q
		call	_BN_bin2bn
		push	dword ptr [esi+24h]
		mov	[esi+20h], eax
		push	20h ; ' '
		push	offset ?dmp1@?1??key1@@9@9 ; `key1'::`2'::dmp1
		call	_BN_bin2bn
		add	esp, 48h
		mov	[esi+24h], eax
		push	dword ptr [esi+28h]
		push	21h ; '!'
		push	offset ?dmq1@?1??key1@@9@9 ; `key1'::`2'::dmq1
		call	_BN_bin2bn
		push	dword ptr [esi+2Ch]
		mov	[esi+28h], eax
		push	20h ; ' '
		push	offset ?iqmp@?1??key1@@9@9 ; `key1'::`2'::iqmp
		call	_BN_bin2bn
		mov	[esi+2Ch], eax
		add	esp, 18h
		mov	eax, [esp+4+arg_4]
		movups	xmm0, ?ctext_ex@?1??key1@@9@9 ;	`key1'::`2'::ctext_ex
		pop	esi
		movups	xmmword	ptr [eax], xmm0
		movups	xmm0, xmmword_150
		movups	xmmword	ptr [eax+10h], xmm0
		movups	xmm0, xmmword_160
		movups	xmmword	ptr [eax+20h], xmm0
		movups	xmm0, xmmword_170
		movups	xmmword	ptr [eax+30h], xmm0
		mov	eax, 40h ; '@'
		retn
_key1		endp

; ---------------------------------------------------------------------------
		align 4
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 6F4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_key2		proc near		; CODE XREF: _main+A4p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	dword ptr [esi+10h]
		push	33h ; '3'
		push	offset ?n@?1??key2@@9@9	; `key2'::`2'::n
		call	_BN_bin2bn
		push	dword ptr [esi+14h]
		mov	[esi+10h], eax
		push	1
		push	offset ?e@?1??key2@@9@9	; `key2'::`2'::e
		call	_BN_bin2bn
		push	dword ptr [esi+18h]
		mov	[esi+14h], eax
		push	32h ; '2'
		push	offset ?d@?1??key2@@9@9	; `key2'::`2'::d
		call	_BN_bin2bn
		push	dword ptr [esi+1Ch]
		mov	[esi+18h], eax
		push	1Ah
		push	offset ?p@?1??key2@@9@9	; `key2'::`2'::p
		call	_BN_bin2bn
		push	dword ptr [esi+20h]
		mov	[esi+1Ch], eax
		push	1Ah
		push	offset ?q@?1??key2@@9@9	; `key2'::`2'::q
		call	_BN_bin2bn
		push	dword ptr [esi+24h]
		mov	[esi+20h], eax
		push	1Ah
		push	offset ?dmp1@?1??key2@@9@9 ; `key2'::`2'::dmp1
		call	_BN_bin2bn
		add	esp, 48h
		mov	[esi+24h], eax
		push	dword ptr [esi+28h]
		push	1Ah
		push	offset ?dmq1@?1??key2@@9@9 ; `key2'::`2'::dmq1
		call	_BN_bin2bn
		push	dword ptr [esi+2Ch]
		mov	[esi+28h], eax
		push	1Ah
		push	offset ?iqmp@?1??key2@@9@9 ; `key2'::`2'::iqmp
		call	_BN_bin2bn
		mov	ecx, [esp+1Ch+arg_4]
		add	esp, 18h
		mov	[esi+2Ch], eax
		movups	xmm0, ?ctext_ex@?1??key2@@9@9 ;	`key2'::`2'::ctext_ex
		pop	esi
		movups	xmmword	ptr [ecx], xmm0
		movups	xmm0, xmmword_28C
		movups	xmmword	ptr [ecx+10h], xmm0
		movups	xmm0, xmmword_29C
		movups	xmmword	ptr [ecx+20h], xmm0
		mov	ax, word_2AC
		mov	[ecx+30h], ax
		mov	eax, 32h ; '2'
		retn
_key2		endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 7C4h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_key3		proc near		; CODE XREF: _main+94p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	edi
		push	dword ptr [esi+10h]
		push	81h ; '�'
		push	offset ?n@?1??key3@@9@9	; `key3'::`2'::n
		call	_BN_bin2bn
		push	dword ptr [esi+14h]
		mov	[esi+10h], eax
		push	1
		push	offset ?e@?1??key3@@9@9	; `key3'::`2'::e
		call	_BN_bin2bn
		push	dword ptr [esi+18h]
		mov	[esi+14h], eax
		push	81h ; '�'
		push	offset ?d@?1??key3@@9@9	; `key3'::`2'::d
		call	_BN_bin2bn
		push	dword ptr [esi+1Ch]
		mov	[esi+18h], eax
		push	41h ; 'A'
		push	offset ?p@?1??key3@@9@9	; `key3'::`2'::p
		call	_BN_bin2bn
		push	dword ptr [esi+20h]
		mov	[esi+1Ch], eax
		push	41h ; 'A'
		push	offset ?q@?1??key3@@9@9	; `key3'::`2'::q
		call	_BN_bin2bn
		push	dword ptr [esi+24h]
		mov	[esi+20h], eax
		push	40h ; '@'
		push	offset ?dmp1@?1??key3@@9@9 ; `key3'::`2'::dmp1
		call	_BN_bin2bn
		add	esp, 48h
		mov	[esi+24h], eax
		push	dword ptr [esi+28h]
		push	40h ; '@'
		push	offset ?dmq1@?1??key3@@9@9 ; `key3'::`2'::dmq1
		call	_BN_bin2bn
		push	dword ptr [esi+2Ch]
		mov	[esi+28h], eax
		push	41h ; 'A'
		push	offset ?iqmp@?1??key3@@9@9 ; `key3'::`2'::iqmp
		call	_BN_bin2bn
		mov	edi, [esp+20h+arg_4]
		add	esp, 18h
		mov	[esi+2Ch], eax
		mov	ecx, 20h ; ' '
		mov	esi, offset ?ctext_ex@?1??key3@@9@9 ; `key3'::`2'::ctext_ex
		mov	eax, 80h ; '�'
		rep movsd
		pop	edi
		pop	esi
		retn
_key3		endp

; ---------------------------------------------------------------------------
		align 10h
_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 880h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public _main
_main		proc near

var_308		= dword	ptr -308h
var_304		= byte ptr -304h
var_204		= byte ptr -204h
var_104		= byte ptr -104h
var_4		= dword	ptr -4
argc		= dword	ptr  4
argv		= dword	ptr  8
envp		= dword	ptr  0Ch

		mov	eax, 308h
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+308h+var_4], eax
		push	ebx
		push	ebp
		push	esi
		push	edi
		push	offset _CRYPTO_dbg_get_options
		push	offset _CRYPTO_dbg_set_options
		push	offset _CRYPTO_dbg_free
		push	offset _CRYPTO_dbg_realloc
		push	offset _CRYPTO_dbg_malloc
		xor	ebp, ebp
		xor	edi, edi
		call	_CRYPTO_set_mem_debug_functions
		push	3
		call	_CRYPTO_dbg_set_options
		push	1
		call	_CRYPTO_mem_ctrl
		push	40h ; '@'
		push	offset _rnd_seed ; "string to make the random number genera"...
		call	_RAND_seed
		add	esp, 24h
		xor	esi, esi
		mov	[esp+318h+var_308], esi

loc_8E1:				; CODE XREF: _main+31Bj
		call	_RSA_new
		mov	ecx, [esp+318h+var_308]
		mov	ebx, eax
		mov	eax, 0AAAAAAABh
		mul	esi
		mov	esi, edx
		shr	esi, 1
		lea	eax, [esi+esi*2]
		sub	ecx, eax
		sub	ecx, 0
		jz	short loc_92B
		sub	ecx, 1
		jz	short loc_91B
		sub	ecx, 1
		jnz	short loc_93E
		lea	eax, [esp+318h+var_104]
		push	eax
		push	ebx
		call	_key3
		jmp	short loc_939
; ---------------------------------------------------------------------------

loc_91B:				; CODE XREF: _main+84j
		lea	eax, [esp+318h+var_104]
		push	eax
		push	ebx
		call	_key2
		jmp	short loc_939
; ---------------------------------------------------------------------------

loc_92B:				; CODE XREF: _main+7Fj
		lea	eax, [esp+318h+var_104]
		push	eax
		push	ebx
		call	_key1

loc_939:				; CODE XREF: _main+99j	_main+A9j
		add	esp, 8
		mov	edi, eax

loc_93E:				; CODE XREF: _main+89j
		cmp	esi, 1
		jl	short loc_94A
		or	dword ptr [ebx+3Ch], 100h

loc_94A:				; CODE XREF: _main+C1j
		push	1
		push	ebx
		lea	eax, [esp+320h+var_304]
		push	eax
		push	offset ?ptext_ex@?1??main@@9@9 ; "T��4,I�*"
		push	8
		call	_RSA_public_encrypt
		add	esp, 14h
		cmp	eax, edi
		jz	short loc_96C
		push	offset ??_C@_0CA@KKCLGPIA@PKCS?$CD1?5v1?45?5encryption?5failed?$CB?6?$AA@ ; "PKCS#1 v1.5 encryption failed!\n"
		jmp	short loc_9B7
; ---------------------------------------------------------------------------

loc_96C:				; CODE XREF: _main+E3j
		push	1
		push	ebx
		lea	ecx, [esp+320h+var_204]
		push	ecx
		lea	ecx, [esp+324h+var_304]
		push	ecx
		push	eax
		call	_RSA_private_decrypt
		add	esp, 14h
		cmp	eax, 8
		jnz	short loc_9B2
		lea	ecx, [esp+318h+var_204]
		mov	eax, [ecx]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9 ; "T��4,I�*"
		jnz	short loc_9B2
		mov	eax, [ecx+4]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9+4 ; ",I�*"
		jnz	short loc_9B2
		push	offset ??_C@_0CH@NBKHNILA@PKCS?5?$CD1?5v1?45?5encryption?1decrypti@ ; "PKCS #1 v1.5 encryption/decryption ok\n"
		call	_printf
		jmp	short loc_9C1
; ---------------------------------------------------------------------------

loc_9B2:				; CODE XREF: _main+108j _main+119j ...
		push	offset ??_C@_0CA@GFLLMPOK@PKCS?$CD1?5v1?45?5decryption?5failed?$CB?6?$AA@ ; "PKCS#1 v1.5 decryption failed!\n"

loc_9B7:				; CODE XREF: _main+EAj
		call	_printf
		mov	ebp, 1

loc_9C1:				; CODE XREF: _main+130j
		add	esp, 4

$oaep$67:
		call	_ERR_clear_error
		push	4
		push	ebx
		lea	eax, [esp+320h+var_304]
		push	eax
		push	offset ?ptext_ex@?1??main@@9@9 ; "T��4,I�*"
		push	8
		call	_RSA_public_encrypt
		mov	esi, eax
		add	esp, 14h
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_A03
		call	_ERR_get_error
		test	eax, eax
		jz	short loc_A03

loc_9F0:				; CODE XREF: _main+181j
		and	eax, 0FFFh
		cmp	eax, 76h ; 'v'
		jz	short loc_A11
		call	_ERR_get_error
		test	eax, eax
		jnz	short loc_9F0

loc_A03:				; CODE XREF: _main+165j _main+16Ej
		cmp	esi, edi
		jz	short loc_A20
		push	offset ??_C@_0BJ@NJJKGHDP@OAEP?5encryption?5failed?$CB?6?$AA@ ;	"OAEP encryption failed!\n"
		jmp	loc_B79
; ---------------------------------------------------------------------------

loc_A11:				; CODE XREF: _main+178j
		push	offset ??_C@_0BB@EEJOEPLN@No?5OAEP?5support?6?$AA@ ; "No OAEP support\n"
		call	_printf
		jmp	loc_B83
; ---------------------------------------------------------------------------

loc_A20:				; CODE XREF: _main+185j
		push	4
		push	ebx
		lea	eax, [esp+320h+var_204]
		push	eax
		lea	eax, [esp+324h+var_304]
		push	eax
		push	esi
		call	_RSA_private_decrypt
		add	esp, 14h
		cmp	eax, 8
		jnz	short loc_A86
		lea	ecx, [esp+318h+var_204]
		mov	eax, [ecx]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9 ; "T��4,I�*"
		jnz	short loc_A86
		mov	eax, [ecx+4]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9+4 ; ",I�*"
		jnz	short loc_A86
		lea	ecx, [esp+318h+var_304]
		mov	eax, [ecx]
		lea	edx, [esp+318h+var_104]
		cmp	eax, [edx]
		jnz	short loc_A98
		mov	eax, [ecx+4]
		cmp	eax, [edx+4]
		jnz	short loc_A98
		push	[esp+318h+var_308]
		push	offset ??_C@_0BN@LHHBJCJC@OAEP?5test?5vector?5?$CFd?5passed?$CB?6?$AA@ ; "OAEP test vector %d passed!\n"
		call	_printf
		add	esp, 8
		jmp	short loc_A98
; ---------------------------------------------------------------------------

loc_A86:				; CODE XREF: _main+1BCj _main+1CDj ...
		push	offset ??_C@_0CK@GLFGANPI@OAEP?5decryption?5?$CIencrypted?5data?$CJ@ ; "OAEP decryption	(encrypted data) failed"...
		call	_printf
		add	esp, 4
		mov	ebp, 1

loc_A98:				; CODE XREF: _main+1E9j _main+1F1j ...
		push	4
		push	ebx
		lea	eax, [esp+320h+var_204]
		push	eax
		lea	eax, [esp+324h+var_104]
		push	eax
		push	edi
		call	_RSA_private_decrypt
		add	esp, 14h
		cmp	eax, 8
		jnz	short loc_AE1
		lea	ecx, [esp+318h+var_204]
		mov	eax, [ecx]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9 ; "T��4,I�*"
		jnz	short loc_AE1
		mov	eax, [ecx+4]
		cmp	eax, dword ptr ?ptext_ex@?1??main@@9@9+4 ; ",I�*"
		jnz	short loc_AE1
		push	offset ??_C@_0BP@NBMMJCON@OAEP?5encryption?1decryption?5ok?6?$AA@ ; "OAEP encryption/decryption	ok\n"
		call	_printf
		jmp	short loc_AF0
; ---------------------------------------------------------------------------

loc_AE1:				; CODE XREF: _main+237j _main+248j ...
		push	offset ??_C@_0CM@EAEKIFBA@OAEP?5decryption?5?$CItest?5vector?5dat@ ; "OAEP decryption (test vector data) fail"...
		call	_printf
		mov	ebp, 1

loc_AF0:				; CODE XREF: _main+25Fj
		add	esp, 4
		xor	esi, esi
		test	edi, edi
		jle	short loc_B40
		nop	dword ptr [eax+00000000h]

loc_B00:				; CODE XREF: _main+2AAj
		xor	[esp+esi+318h+var_304],	1
		lea	eax, [esp+318h+var_204]
		push	4
		push	ebx
		push	eax
		lea	eax, [esp+324h+var_304]
		push	eax
		push	edi
		call	_RSA_private_decrypt
		add	esp, 14h
		test	eax, eax
		jg	short loc_B2E
		xor	[esp+esi+318h+var_304],	1
		inc	esi
		cmp	esi, edi
		jl	short loc_B00
		jmp	short loc_B40
; ---------------------------------------------------------------------------

loc_B2E:				; CODE XREF: _main+2A0j
		push	offset ??_C@_0BJ@JFLGJFME@Corrupt?5data?5decrypted?$CB?6?$AA@ ;	"Corrupt data decrypted!\n"
		call	_printf
		add	esp, 4
		mov	ebp, 1

loc_B40:				; CODE XREF: _main+277j _main+2ACj
		or	esi, 0FFFFFFFFh
		cmp	edi, esi
		jle	short $next$68
		nop	word ptr [eax+eax+00000000h]

loc_B50:				; CODE XREF: _main+2F0j
		push	4
		push	ebx
		lea	eax, [esp+320h+var_204]
		push	eax
		lea	eax, [esp+324h+var_304]
		push	eax
		push	esi
		call	_RSA_private_decrypt
		add	esp, 14h
		test	eax, eax
		jg	short loc_B74
		inc	esi
		cmp	esi, edi
		jl	short loc_B50
		jmp	short $next$68
; ---------------------------------------------------------------------------

loc_B74:				; CODE XREF: _main+2EBj
		push	offset ??_C@_0BL@EABPENHM@Truncated?5data?5decrypted?$CB?6?$AA@	; "Truncated data decrypted!\n"

loc_B79:				; CODE XREF: _main+18Cj
		call	_printf
		mov	ebp, 1

loc_B83:				; CODE XREF: _main+19Bj
		add	esp, 4

$next$68:				; CODE XREF: _main+2C5j _main+2F2j
		push	ebx
		call	_RSA_free
		mov	esi, [esp+31Ch+var_308]
		add	esp, 4
		inc	esi
		mov	[esp+318h+var_308], esi
		cmp	esi, 6
		jl	loc_8E1
		call	_CRYPTO_cleanup_all_ex_data
		push	0
		call	_ERR_remove_thread_state
		push	2
		call	dword ptr ds:__imp____acrt_iob_func
		push	eax
		call	_CRYPTO_mem_leaks_fp
		mov	ecx, [esp+324h+var_4]
		add	esp, 0Ch
		mov	eax, ebp
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 308h
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
		;org 0BDCh
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


_pad_unknown	proc near
		call	_ERR_get_error
		test	eax, eax
		jz	short loc_BFF
		nop	dword ptr [eax+00000000h]

loc_BEC:				; CODE XREF: _pad_unknown+21j
		and	eax, 0FFFh
		cmp	eax, 76h ; 'v'
		jz	short loc_C02
		call	_ERR_get_error
		test	eax, eax
		jnz	short loc_BEC

loc_BFF:				; CODE XREF: _pad_unknown+7j
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_C02:				; CODE XREF: _pad_unknown+18j
		mov	eax, 1
		retn
_pad_unknown	endp

_text$mn	ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 0C08h
; COMDAT (pick any)
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


; int printf(const char	*Format, ...)
		public _printf
_printf		proc near		; CODE XREF: _main+12Bp _main:loc_9B7p ...

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
		;org 0C38h
; COMDAT (pick any)
		public ??_C@_0CA@KKCLGPIA@PKCS?$CD1?5v1?45?5encryption?5failed?$CB?6?$AA@
; `string'
??_C@_0CA@KKCLGPIA@PKCS?$CD1?5v1?45?5encryption?5failed?$CB?6?$AA@ db 'PKCS#1 v1.5 encryption failed!',0Ah,0
					; DATA XREF: _main+E5o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0C58h
; COMDAT (pick any)
		public ??_C@_0CA@GFLLMPOK@PKCS?$CD1?5v1?45?5decryption?5failed?$CB?6?$AA@
; char `string'[]
??_C@_0CA@GFLLMPOK@PKCS?$CD1?5v1?45?5decryption?5failed?$CB?6?$AA@ db 'PKCS#1 v1.5 decryption failed!',0Ah,0
					; DATA XREF: _main:loc_9B2o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0C78h
; COMDAT (pick any)
		public ??_C@_0CH@NBKHNILA@PKCS?5?$CD1?5v1?45?5encryption?1decrypti@
; char `string'[]
??_C@_0CH@NBKHNILA@PKCS?5?$CD1?5v1?45?5encryption?1decrypti@ db	'PKCS #1 v1.5 encryption/decryption ok',0Ah,0
					; DATA XREF: _main+126o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0CA0h
; COMDAT (pick any)
		public ??_C@_0BB@EEJOEPLN@No?5OAEP?5support?6?$AA@
; char `string'[]
??_C@_0BB@EEJOEPLN@No?5OAEP?5support?6?$AA@ db 'No OAEP support',0Ah,0
					; DATA XREF: _main:loc_A11o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0CB4h
; COMDAT (pick any)
		public ??_C@_0BJ@NJJKGHDP@OAEP?5encryption?5failed?$CB?6?$AA@
; `string'
??_C@_0BJ@NJJKGHDP@OAEP?5encryption?5failed?$CB?6?$AA@ db 'OAEP encryption failed!',0Ah,0
					; DATA XREF: _main+187o
		align 10h
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0CD0h
; COMDAT (pick any)
		public ??_C@_0CK@GLFGANPI@OAEP?5decryption?5?$CIencrypted?5data?$CJ@
; char `string'[]
??_C@_0CK@GLFGANPI@OAEP?5decryption?5?$CIencrypted?5data?$CJ@ db 'OAEP decryption (encrypted data) failed!',0Ah,0
					; DATA XREF: _main:loc_A86o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0CFCh
; COMDAT (pick any)
		public ??_C@_0BN@LHHBJCJC@OAEP?5test?5vector?5?$CFd?5passed?$CB?6?$AA@
; char `string'[]
??_C@_0BN@LHHBJCJC@OAEP?5test?5vector?5?$CFd?5passed?$CB?6?$AA@	db 'OAEP test vector %d passed!',0Ah,0
					; DATA XREF: _main+1F7o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D1Ch
; COMDAT (pick any)
		public ??_C@_0CM@EAEKIFBA@OAEP?5decryption?5?$CItest?5vector?5dat@
; char `string'[]
??_C@_0CM@EAEKIFBA@OAEP?5decryption?5?$CItest?5vector?5dat@ db 'OAEP decryption (test vector data) failed!',0Ah,0
					; DATA XREF: _main:loc_AE1o
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D48h
; COMDAT (pick any)
		public ??_C@_0BP@NBMMJCON@OAEP?5encryption?1decryption?5ok?6?$AA@
; char `string'[]
??_C@_0BP@NBMMJCON@OAEP?5encryption?1decryption?5ok?6?$AA@ db 'OAEP encryption/decryption ok',0Ah,0
					; DATA XREF: _main+255o
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D68h
; COMDAT (pick any)
		public ??_C@_0BJ@JFLGJFME@Corrupt?5data?5decrypted?$CB?6?$AA@
; char `string'[]
??_C@_0BJ@JFLGJFME@Corrupt?5data?5decrypted?$CB?6?$AA@ db 'Corrupt data decrypted!',0Ah,0
					; DATA XREF: _main:loc_B2Eo
		align 4
_rdata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	dword public 'DATA' use32
		assume cs:_rdata
		;org 0D84h
; COMDAT (pick any)
		public ??_C@_0BL@EABPENHM@Truncated?5data?5decrypted?$CB?6?$AA@
; char `string'[]
??_C@_0BL@EABPENHM@Truncated?5data?5decrypted?$CB?6?$AA@ db 'Truncated data decrypted!',0Ah,0
					; DATA XREF: _main:loc_B74o
_rdata		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn __imp____acrt_iob_func:near ; CODE XREF: _main+32Fp
					; _printf+7p
					; DATA XREF: ...
		extrn __imp____stdio_common_vfprintf:near ; CODE XREF: __vfprintf_l+1Ap
					; _printf+23p
					; DATA XREF: ...
		extrn _CRYPTO_mem_ctrl:near ; CODE XREF: _main+47p
		extrn _CRYPTO_cleanup_all_ex_data:near ; CODE XREF: _main+321p
		extrn _CRYPTO_set_mem_debug_functions:near ; CODE XREF:	_main+39p
		extrn _CRYPTO_dbg_malloc:near ;	DATA XREF: _main+30o
		extrn _CRYPTO_dbg_realloc:near ; DATA XREF: _main+2Bo
		extrn _CRYPTO_dbg_free:near ; DATA XREF: _main+26o
		extrn _CRYPTO_dbg_set_options:near ; CODE XREF:	_main+40p
					; DATA XREF: _main+21o
		extrn _CRYPTO_dbg_get_options:near ; DATA XREF:	_main+1Co
		extrn _CRYPTO_mem_leaks_fp:near	; CODE XREF: _main+336p
		extrn _ERR_get_error:near ; CODE XREF: _main+167p _main+17Ap ...
		extrn _ERR_clear_error:near ; CODE XREF: _main:$oaep$67p
		extrn _ERR_remove_thread_state:near ; CODE XREF: _main+328p
		extrn _RAND_seed:near	; CODE XREF: _main+53p
		extrn _BN_bin2bn:near	; CODE XREF: _key1+Fp _key1+21p ...
		extrn _RSA_new:near	; CODE XREF: _main:loc_8E1p
		extrn _RSA_public_encrypt:near ; CODE XREF: _main+D9p
					; _main+158p
		extrn _RSA_private_decrypt:near	; CODE XREF: _main+FDp
					; _main+1B1p ...
		extrn _RSA_free:near	; CODE XREF: _main+307p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _main+34Dp
		extrn __chkstk:near	; CODE XREF: _main+5p
; `__local_stdio_printf_options'::`2'::_OptionsStorage
		extrn ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:near
					; DATA XREF: ___local_stdio_printf_optionso
		extrn ___security_cookie:near ;	DATA XREF: _main+Ar


		end