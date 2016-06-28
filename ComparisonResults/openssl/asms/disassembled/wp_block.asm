;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	B6FDEE1512EBC0493102C0FADDD6694A
; Input	CRC32 :	F4845B44

; File Name   :	C:\compspace\Diff\openssl\obj\wp_block.obj
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
_Cx		dd 18601818h		; DATA XREF: _whirlpool_block+197r
					; _whirlpool_block+1BBr ...
dword_4		dd 0D83078C0h		; DATA XREF: _whirlpool_block+1A2r
					; _whirlpool_block+1C6r ...
		dd 238C2323h, 2646AF05h, 0C63FC6C6h, 0B891F97Eh, 0E887E8E8h
		dd 0FBCD6F13h, 87268787h, 0CB13A14Ch, 0B8DAB8B8h, 116D62A9h
		dd 1040101h, 9020508h, 4F214F4Fh, 0D9E6E42h, 36D83636h
		dd 9B6CEEADh, 0A6A2A6A6h, 0FF510459h, 0D26FD2D2h, 0CB9BDDEh
		dd 0F5F3F5F5h, 0EF706FBh, 79F97979h, 96F280EFh,	6FA16F6Fh
		dd 30DECE5Fh, 917E9191h, 6D3FEFFCh, 52555252h, 0F8A407AAh
		dd 609D6060h, 47C0FD27h, 0BCCABCBCh, 35657689h,	9B569B9Bh
		dd 372BCDACh, 8E028E8Eh, 8A018C04h, 0A3B6A3A3h,	0D25B1571h
		dd 0C300C0Ch, 6C183C60h, 7BF17B7Bh, 84F68AFFh, 35D43535h
		dd 806AE1B5h, 1D741D1Dh, 0F53A69E8h, 0E0A7E0E0h, 0B3DD4753h
		dd 0D77BD7D7h, 21B3ACF6h, 0C22FC2C2h, 9C99ED5Eh, 2EB82E2Eh
		dd 435C966Dh, 4B314B4Bh, 29967A62h, 0FEDFFEFEh,	5DE121A3h
		dd 57415757h, 0D5AE1682h, 15541515h, 0BD2A41A8h, 77C17777h
		dd 0E8EEB69Fh, 37DC3737h, 926EEBA5h, 0E5B3E5E5h, 9ED7567Bh
		dd 9F469F9Fh, 1323D98Ch, 0F0E7F0F0h, 23FD17D3h,	4A354A4Ah
		dd 20947F6Ah, 0DA4FDADAh, 44A9959Eh, 587D5858h,	0A2B025FAh
		dd 0C903C9C9h, 0CF8FCA06h, 29A42929h, 7C528D55h, 0A280A0Ah
		dd 5A142250h, 0B1FEB1B1h, 507F4FE1h, 0A0BAA0A0h, 0C95D1A69h
		dd 6BB16B6Bh, 14D6DA7Fh, 852E8585h, 0D917AB5Ch,	0BDCEBDBDh
		dd 3C677381h, 5D695D5Dh, 8FBA34D2h, 10401010h, 90205080h
		dd 0F4F7F4F4h, 7F503F3h, 0CB0BCBCBh, 0DD8BC016h, 3EF83E3Eh
		dd 0D37CC6EDh, 5140505h, 2D0A1128h, 67816767h, 78CEE61Fh
		dd 0E4B7E4E4h, 97D55373h, 279C2727h, 24EBB25h, 41194141h
		dd 73825832h, 8B168B8Bh, 0A70B9D2Ch, 0A7A6A7A7h, 0F6530151h
		dd 7DE97D7Dh, 0B2FA94CFh, 956E9595h, 4937FBDCh,	0D847D8D8h
		dd 56AD9F8Eh, 0FBCBFBFBh, 70EB308Bh, 0EE9FEEEEh, 0CDC17123h
		dd 7CED7C7Ch, 0BBF891C7h, 66856666h, 71CCE317h,	0DD53DDDDh
		dd 7BA78EA6h, 175C1717h, 0AF2E4BB8h, 47014747h,	458E4602h
		dd 9E429E9Eh, 1A21DC84h, 0CA0FCACAh, 0D489C51Eh, 2DB42D2Dh
		dd 585A9975h, 0BFC6BFBFh, 2E637991h, 71C0707h, 3F0E1B38h
		dd 0AD8EADADh, 0AC472301h, 5A755A5Ah, 0B0B42FEAh, 83368383h
		dd 0EF1BB56Ch, 33CC3333h, 0B666FF85h, 63916363h, 5CC6F23Fh
		dd 2080202h, 12040A10h,	0AA92AAAAh, 93493839h, 71D97171h
		dd 0DEE2A8AFh, 0C807C8C8h, 0C68DCF0Eh, 19641919h, 0D1327DC8h
		dd 49394949h, 3B927072h, 0D943D9D9h, 5FAF9A86h,	0F2EFF2F2h
		dd 31F91DC3h, 0E3ABE3E3h, 0A8DB484Bh, 5B715B5Bh, 0B9B62AE2h
		dd 881A8888h, 0BC0D9234h, 9A529A9Ah, 3E29C8A4h,	26982626h
		dd 0B4CBE2Dh, 32C83232h, 0BF64FA8Dh, 0B0FAB0B0h, 597D4AE9h
		dd 0E983E9E9h, 0F2CF6A1Bh, 0F3C0F0Fh, 771E3378h, 0D573D5D5h
		dd 33B7A6E6h, 803A8080h, 0F41DBA74h, 0BEC2BEBEh, 27617C99h
		dd 0CD13CDCDh, 0EB87DE26h, 34D03434h, 8968E4BDh, 483D4848h
		dd 3290757Ah, 0FFDBFFFFh, 54E324ABh, 7AF57A7Ah,	8DF48FF7h
		dd 907A9090h, 643DEAF4h, 5F615F5Fh, 9DBE3EC2h, 20802020h
		dd 3D40A01Dh, 68BD6868h, 0FD0D567h, 1A681A1Ah, 0CA3472D0h
		dd 0AE82AEAEh, 0B7412C19h, 0B4EAB4B4h, 7D755EC9h, 544D5454h
		dd 0CEA8199Ah, 93769393h, 7F3BE5ECh, 22882222h,	2F44AA0Dh
		dd 648D6464h, 63C8E907h, 0F1E3F1F1h, 2AFF12DBh,	73D17373h
		dd 0CCE6A2BFh, 12481212h, 82245A90h, 401D4040h,	7A805D3Ah
		dd 8200808h, 48102840h,	0C32BC3C3h, 959BE856h, 0EC97ECECh
		dd 0DFC57B33h, 0DB4BDBDBh, 4DAB9096h, 0A1BEA1A1h, 0C05F1F61h
		dd 8D0E8D8Dh, 9107831Ch, 3DF43D3Dh, 0C87AC9F5h,	97669797h
		dd 5B33F1CCh, 2	dup(0)
		dd 0CF1BCFCFh, 0F983D436h, 2BAC2B2Bh, 6E568745h, 76C57676h
		dd 0E1ECB397h, 82328282h, 0E619B064h, 0D67FD6D6h, 28B1A9FEh
		dd 1B6C1B1Bh, 0C33677D8h, 0B5EEB5B5h, 74775BC1h, 0AF86AFAFh
		dd 0BE432911h, 6AB56A6Ah, 1DD4DF77h, 505D5050h,	0EAA00DBAh
		dd 45094545h, 578A4C12h, 0F3EBF3F3h, 38FB18CBh,	30C03030h
		dd 0AD60F09Dh, 0EF9BEFEFh, 0C4C3742Bh, 3FFC3F3Fh, 0DA7EC3E5h
		dd 55495555h, 0C7AA1C92h, 0A2B2A2A2h, 0DB591079h, 0EA8FEAEAh
		dd 0E9C96503h, 65896565h, 6ACAEC0Fh, 0BAD2BABAh, 36968B9h
		dd 2FBC2F2Fh, 4A5E9365h, 0C027C0C0h, 8E9DE74Eh,	0DE5FDEDEh
		dd 60A181BEh, 1C701C1Ch, 0FC386CE0h, 0FDD3FDFDh, 46E72EBBh
		dd 4D294D4Dh, 1F9A6452h, 92729292h, 7639E0E4h, 75C97575h
		dd 0FAEABC8Fh, 6180606h, 360C1E30h, 8A128A8Ah, 0AE099824h
		dd 0B2F2B2B2h, 4B7940F9h, 0E6BFE6E6h, 85D15963h, 0E380E0Eh
		dd 7E1C3670h, 1F7C1F1Fh, 0E73E63F8h, 62956262h,	55C4F737h
		dd 0D477D4D4h, 3AB5A3EEh, 0A89AA8A8h, 814D3229h, 96629696h
		dd 5231F4C4h, 0F9C3F9F9h, 62EF3A9Bh, 0C533C5C5h, 0A397F666h
		dd 25942525h, 104AB135h, 59795959h, 0ABB220F2h,	842A8484h
		dd 0D015AE54h, 72D57272h, 0C5E4A7B7h, 39E43939h, 0EC72DDD5h
		dd 4C2D4C4Ch, 1698615Ah, 5E655E5Eh, 94BC3BCAh, 78FD7878h
		dd 9FF085E7h, 38E03838h, 0E570D8DDh, 8C0A8C8Ch,	98058614h
		dd 0D163D1D1h, 17BFB2C6h, 0A5AEA5A5h, 0E4570B41h, 0E2AFE2E2h
		dd 0A1D94D43h, 61996161h, 4EC2F82Fh, 0B3F6B3B3h, 427B45F1h
		dd 21842121h, 3442A515h, 9C4A9C9Ch, 825D694h, 1E781E1Eh
		dd 0EE3C66F0h, 43114343h, 61865222h, 0C73BC7C7h, 0B193FC76h
		dd 0FCD7FCFCh, 4FE52BB3h, 4100404h, 24081420h, 51595151h
		dd 0E3A208B2h, 995E9999h, 252FC7BCh, 6DA96D6Dh,	22DAC44Fh
		dd 0D340D0Dh, 651A3968h, 0FACFFAFAh, 79E93583h,	0DF5BDFDFh
		dd 69A384B6h, 7EE57E7Eh, 0A9FC9BD7h, 24902424h,	1948B43Dh
		dd 3BEC3B3Bh, 0FE76D7C5h, 0AB96ABABh, 9A4B3D31h, 0CE1FCECEh
		dd 0F081D13Eh, 11441111h, 99225588h, 8F068F8Fh,	8303890Ch
		dd 4E254E4Eh, 49C6B4Ah,	0B7E6B7B7h, 667351D1h, 0EB8BEBEBh
		dd 0E0CB600Bh, 3CF03C3Ch, 0C178CCFDh, 813E8181h, 0FD1FBF7Ch
		dd 946A9494h, 4035FED4h, 0F7FBF7F7h, 1CF30CEBh,	0B9DEB9B9h
		dd 186F67A1h, 134C1313h, 8B265F98h, 2CB02C2Ch, 51589C7Dh
		dd 0D36BD3D3h, 5BBB8D6h, 0E7BBE7E7h, 8CD35C6Bh,	6EA56E6Eh
		dd 39DCCB57h, 0C437C4C4h, 0AA95F36Eh, 30C0303h,	1B060F18h
		dd 56455656h, 0DCAC138Ah, 440D4444h, 5E88491Ah,	7FE17F7Fh
		dd 0A0FE9EDFh, 0A99EA9A9h, 884F3721h, 2AA82A2Ah, 6754824Dh
		dd 0BBD6BBBBh, 0A6B6DB1h, 0C123C1C1h, 879FE246h, 53515353h
		dd 0F1A602A2h, 0DC57DCDCh, 72A58BAEh, 0B2C0B0Bh, 53162758h
		dd 9D4E9D9Dh, 127D39Ch,	6CAD6C6Ch, 2BD8C147h, 31C43131h
		dd 0A462F595h, 74CD7474h, 0F3E8B987h, 0F6FFF6F6h, 15F109E3h
		dd 46054646h, 4C8C430Ah, 0AC8AACACh, 0A5452609h, 891E8989h
		dd 0B50F973Ch, 14501414h, 0B42844A0h, 0E1A3E1E1h, 0BADF425Bh
		dd 16581616h, 0A62C4EB0h, 3AE83A3Ah, 0F774D2CDh, 69B96969h
		dd 6D2D06Fh, 9240909h, 41122D48h, 70DD7070h, 0D7E0ADA7h
		dd 0B6E2B6B6h, 6F7154D9h, 0D067D0D0h, 1EBDB7CEh, 0ED93EDEDh
		dd 0D6C77E3Bh, 0CC17CCCCh, 0E285DB2Eh, 42154242h, 6884572Ah
		dd 985A9898h, 2C2DC2B4h, 0A4AAA4A4h, 0ED550E49h, 28A02828h
		dd 7550885Dh, 5C6D5C5Ch, 86B831DAh, 0F8C7F8F8h,	6BED3F93h
		dd 86228686h, 0C211A444h
dword_800	dd 0E8C62318h, 4F01B887h, 0F5D2A636h, 52916F79h, 8E9BBC60h
					; DATA XREF: _whirlpool_block:loc_98Do
		dd 357B0CA3h, 0C2D7E01Dh, 57FE4B2Eh, 0E5377715h, 0DA4AF09Fh
		dd 0A29C958h, 856BA0B1h, 0F4105DBDh, 67053ECBh,	8B4127E4h
		dd 0D8957DA7h, 667CEEFBh, 9E4717DDh, 7BF2DCAh
		db 0ADh, 5Ah, 83h
byte_84F	db 33h			; DATA XREF: _whirlpool_block+64Eo
_rdata		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text$mn	segment	para public 'CODE' use32
		assume cs:_text$mn
		;org 850h
; COMDAT (pick no duplicate)
		assume es:nothing, ss:nothing, ds:_rdata, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _whirlpool_block
_whirlpool_block proc near

var_120		= dword	ptr -120h
var_11C		= dword	ptr -11Ch
var_118		= dword	ptr -118h
var_114		= dword	ptr -114h
var_110		= dword	ptr -110h
var_10C		= dword	ptr -10Ch
var_108		= dword	ptr -108h
var_104		= dword	ptr -104h
var_100		= dword	ptr -100h
var_FC		= dword	ptr -0FCh
var_F8		= dword	ptr -0F8h
var_F4		= dword	ptr -0F4h
var_F0		= dword	ptr -0F0h
var_EC		= dword	ptr -0ECh
var_E8		= dword	ptr -0E8h
var_E4		= dword	ptr -0E4h
var_E0		= dword	ptr -0E0h
var_DC		= dword	ptr -0DCh
var_D8		= dword	ptr -0D8h
var_D4		= dword	ptr -0D4h
var_D0		= dword	ptr -0D0h
var_CC		= qword	ptr -0CCh
var_C4		= xmmword ptr -0C4h
var_B4		= xmmword ptr -0B4h
var_A4		= xmmword ptr -0A4h
var_85		= byte ptr -85h
var_84		= xmmword ptr -84h
var_74		= xmmword ptr -74h
var_64		= xmmword ptr -64h
var_45		= byte ptr -45h
var_44		= xmmword ptr -44h
var_34		= xmmword ptr -34h
var_24		= xmmword ptr -24h
var_14		= xmmword ptr -14h
var_4		= dword	ptr -4
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, 120h
		call	__chkstk
		mov	eax, dword ptr ds:___security_cookie
		xor	eax, esp
		mov	[esp+120h+var_4], eax
		test	dword ptr ds:_OPENSSL_ia32cap_P, 800000h
		mov	ecx, [esp+120h+arg_4]
		push	ebp
		mov	ebp, [esp+124h+arg_0]
		mov	[esp+124h+var_D4], ebp
		jnz	loc_F8D
		push	ebx
		lea	eax, [esp+128h+var_C4]
		sub	eax, ebp
		lea	ebx, [ecx+3Fh]
		push	esi
		mov	[esp+12Ch+var_D8], eax
		mov	esi, ecx
		push	edi
		lea	eax, [esp+130h+var_C4]
		mov	[esp+130h+var_E0], ebx
		sub	esi, eax
		mov	edi, 0FFFFFFC1h
		mov	eax, [esp+130h+arg_8]
		sub	edi, ebp
		mov	[esp+130h+var_DC], esi
		mov	[esp+130h+var_E4], edi
		mov	[esp+130h+var_D0], eax

loc_8C1:				; CODE XREF: _whirlpool_block+71Ej
		lea	eax, [esp+130h+var_84]
		xor	edx, edx
		cmp	eax, ebx
		ja	short loc_8DC
		lea	eax, [ebx-3Fh]
		lea	ecx, [esp+130h+var_45]
		cmp	ecx, eax
		jnb	short loc_922

loc_8DC:				; CODE XREF: _whirlpool_block+7Cj
		lea	eax, [esp+130h+var_84]
		lea	ecx, [ebp+3Fh]
		cmp	eax, ecx
		ja	short loc_8F5
		lea	eax, [esp+130h+var_45]
		cmp	eax, ebp
		jnb	short loc_922

loc_8F5:				; CODE XREF: _whirlpool_block+98j
		lea	eax, [esp+130h+var_C4]
		cmp	eax, ebx
		ja	short loc_90F
		lea	edi, [esp+130h+var_85]
		lea	eax, [ebx-3Fh]
		cmp	edi, eax
		mov	edi, [esp+130h+var_E4]
		jnb	short loc_922

loc_90F:				; CODE XREF: _whirlpool_block+ABj
		lea	eax, [esp+130h+var_C4]
		cmp	eax, ecx
		ja	short loc_953
		lea	eax, [esp+130h+var_85]
		cmp	eax, ebp
		jb	short loc_953

loc_922:				; CODE XREF: _whirlpool_block+8Aj
					; _whirlpool_block+A3j	...
		mov	esi, ebp
		lea	eax, [esp+130h+var_84]
		sub	esi, eax
		nop	dword ptr [eax]

loc_930:				; CODE XREF: _whirlpool_block+FFj
		lea	eax, [esp+130h+var_84]
		add	eax, edx
		mov	cl, [eax+esi]
		mov	[eax], cl
		add	eax, ebx
		add	eax, esi
		mov	al, [eax+edi]
		xor	al, cl
		mov	byte ptr [esp+edx+130h+var_C4],	al
		inc	edx
		cmp	edx, 40h ; '@'
		jl	short loc_930
		jmp	short loc_98D
; ---------------------------------------------------------------------------

loc_953:				; CODE XREF: _whirlpool_block+C5j
					; _whirlpool_block+D0j
		mov	ecx, ebp
		lea	eax, [esp+130h+var_C4]
		sub	ecx, eax
		nop	dword ptr [eax+eax+00h]

loc_960:				; CODE XREF: _whirlpool_block+13Bj
		lea	eax, [esp+130h+var_C4]
		add	eax, edx
		movups	xmm0, xmmword ptr [eax+ecx]
		movups	xmm1, xmmword ptr [esi+eax]
		movups	[esp+edx+130h+var_84], xmm0
		movups	xmm0, [esp+edx+130h+var_84]
		add	edx, 10h
		pxor	xmm1, xmm0
		movups	xmmword	ptr [eax], xmm1
		cmp	edx, 40h ; '@'
		jl	short loc_960

loc_98D:				; CODE XREF: _whirlpool_block+101j
		mov	eax, offset dword_800
		mov	[esp+130h+var_E8], eax

loc_996:				; CODE XREF: _whirlpool_block+653j
		xor	esi, esi
		mov	[esp+130h+var_114], esi
		nop	dword ptr [eax+00h]

loc_9A0:				; CODE XREF: _whirlpool_block+39Dj
		test	esi, esi
		jz	short loc_9B7
		xorps	xmm0, xmm0
		movlpd	[esp+130h+var_CC], xmm0
		mov	edx, dword ptr [esp+130h+var_CC+4]
		mov	ecx, dword ptr [esp+130h+var_CC]
		jmp	short loc_9BC
; ---------------------------------------------------------------------------

loc_9B7:				; CODE XREF: _whirlpool_block+152j
		mov	ecx, [eax]
		mov	edx, [eax+4]

loc_9BC:				; CODE XREF: _whirlpool_block+165j
		lea	eax, ds:0[esi*8]
		mov	[esp+130h+var_EC], eax
		lea	ebp, [esp+130h+var_44]
		add	eax, ebp
		mov	[esp+130h+var_F0], eax
		mov	[eax], ecx
		lea	ecx, [esi-1]
		and	ecx, 7
		mov	[eax+4], edx
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+1]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_F8], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi-2]
		and	ecx, 7
		mov	[esp+130h+var_F4], eax
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+2]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_100], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi-3]
		and	ecx, 7
		mov	[esp+130h+var_FC], eax
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+3]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_108], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi-4]
		and	ecx, 7
		mov	[esp+130h+var_104], eax
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+4]
		mov	edx, _Cx[ecx*8]
		mov	ebp, dword_4[ecx*8]
		lea	ecx, [esi+3]
		and	ecx, 7
		mov	[esp+130h+var_10C], edx
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+5]
		mov	ebx, _Cx[ecx*8]
		mov	edi, dword_4[ecx*8]
		lea	ecx, [esi+2]
		and	ecx, 7
		mov	[esp+130h+var_110], ebx
		mov	ebx, [esp+130h+var_F4]
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+6]
		mov	esi, _Cx[ecx*8]
		mov	edx, dword_4[ecx*8]
		mov	ecx, [esp+130h+var_114]
		inc	ecx
		mov	[esp+130h+var_114], ecx
		and	ecx, 7
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_84+7]
		mov	eax, _Cx[ecx*8]
		mov	ecx, dword_4[ecx*8]
		mov	[esp+130h+var_118], ecx
		mov	ecx, [esp+130h+var_F8]
		shrd	ecx, ebx, 8
		xor	ecx, [esp+130h+var_100]
		shr	ebx, 8
		xor	ebx, [esp+130h+var_FC]
		shrd	ecx, ebx, 8
		xor	ecx, [esp+130h+var_108]
		shr	ebx, 8
		xor	ebx, [esp+130h+var_104]
		shrd	ecx, ebx, 8
		mov	[esp+130h+var_11C], ebx
		shr	[esp+130h+var_11C], 8
		mov	ebx, [esp+130h+var_11C]
		mov	[esp+130h+var_120], ecx
		xor	ebx, ebp
		mov	ecx, [esp+130h+var_10C]
		xor	[esp+130h+var_120], ecx
		shrd	[esp+130h+var_120], ebx, 8
		shr	ebx, 8
		mov	[esp+130h+var_11C], ebx
		mov	ecx, ebx
		mov	ebx, [esp+130h+var_110]
		xor	ecx, edi
		xor	[esp+130h+var_120], ebx
		shrd	[esp+130h+var_120], ecx, 8
		shr	ecx, 8
		xor	[esp+130h+var_120], esi
		xor	ecx, edx
		shrd	[esp+130h+var_120], ecx, 8
		xor	[esp+130h+var_120], eax
		shr	ecx, 8
		xor	ecx, [esp+130h+var_118]
		shld	[esp+130h+var_118], eax, 8
		shrd	[esp+130h+var_120], ecx, 8
		shl	eax, 8
		xor	eax, esi
		shr	ecx, 8
		mov	esi, [esp+130h+var_118]
		xor	esi, edx
		mov	[esp+130h+var_110], eax
		mov	edx, eax
		mov	[esp+130h+var_11C], ecx
		shld	esi, edx, 8
		mov	eax, [esp+130h+var_120]
		shl	edx, 8
		xor	esi, edi
		xor	edx, ebx
		shld	esi, edx, 8
		shl	edx, 8
		xor	esi, ebp
		xor	edx, [esp+130h+var_10C]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_104]
		shl	edx, 8
		xor	edx, [esp+130h+var_108]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_FC]
		shl	edx, 8
		xor	edx, [esp+130h+var_100]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_F4]
		shl	edx, 8
		xor	edx, [esp+130h+var_F8]
		shld	esi, edx, 8
		shl	edx, 8
		xor	eax, edx
		mov	edx, ecx
		mov	ecx, [esp+130h+var_EC]
		xor	edx, esi
		mov	esi, [esp+130h+var_114]
		movzx	ecx, byte ptr [esp+ecx+130h+var_84]
		xor	eax, _Cx[ecx*8]
		xor	edx, dword_4[ecx*8]
		mov	ecx, [esp+130h+var_F0]
		xor	[ecx], eax
		xor	[ecx+4], edx
		mov	eax, [esp+130h+var_E8]
		cmp	esi, 8
		jl	loc_9A0
		movups	xmm0, [esp+130h+var_44]
		mov	esi, 2
		mov	[esp+130h+var_EC], 0
		mov	[esp+130h+var_114], esi
		movups	[esp+130h+var_84], xmm0
		mov	[esp+130h+var_110], 8
		movups	xmm0, [esp+130h+var_34]
		movups	[esp+130h+var_74], xmm0
		movups	xmm0, [esp+130h+var_24]
		movups	[esp+130h+var_64], xmm0
		movups	xmm0, [esp+130h+var_14]
		movups	xmmword	ptr [esp+0DCh],	xmm0
		nop	dword ptr [eax+00h]

loc_C50:				; CODE XREF: _whirlpool_block+603j
		lea	ecx, [esi-3]
		and	ecx, 7
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+1]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_108], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi-4]
		and	ecx, 7
		mov	[esp+130h+var_10C], eax
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+2]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_100], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi+3]
		and	ecx, 7
		mov	[esp+130h+var_104], eax
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+3]
		mov	eax, _Cx[ecx*8]
		mov	[esp+130h+var_F8], eax
		mov	eax, dword_4[ecx*8]
		lea	ecx, [esi+2]
		and	ecx, 7
		mov	[esp+130h+var_FC], eax
		lea	eax, [esi+1]
		mov	dword ptr [esp+130h+var_CC], eax
		and	eax, 7
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+4]
		mov	edx, _Cx[ecx*8]
		mov	ebp, dword_4[ecx*8]
		movzx	ecx, byte ptr [esp+eax*8+130h+var_C4+5]
		mov	[esp+130h+var_F4], edx
		mov	[esp+130h+var_F0], ebp
		mov	ebp, [esp+130h+var_10C]
		mov	ebx, _Cx[ecx*8]
		mov	edi, dword_4[ecx*8]
		mov	ecx, esi
		and	ecx, 7
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+6]
		mov	esi, _Cx[ecx*8]
		mov	edx, dword_4[ecx*8]
		mov	ecx, [esp+130h+var_114]
		dec	ecx
		and	ecx, 7
		movzx	ecx, byte ptr [esp+ecx*8+130h+var_C4+7]
		mov	eax, _Cx[ecx*8]
		mov	ecx, dword_4[ecx*8]
		mov	[esp+130h+var_118], ecx
		mov	ecx, [esp+130h+var_108]
		shrd	ecx, ebp, 8
		xor	ecx, [esp+130h+var_100]
		shr	ebp, 8
		xor	ebp, [esp+130h+var_104]
		shrd	ecx, ebp, 8
		xor	ecx, [esp+130h+var_F8]
		shr	ebp, 8
		xor	ebp, [esp+130h+var_FC]
		shrd	ecx, ebp, 8
		mov	[esp+130h+var_120], ecx
		mov	ecx, [esp+130h+var_F4]
		xor	[esp+130h+var_120], ecx
		mov	[esp+130h+var_11C], ebp
		shr	[esp+130h+var_11C], 8
		mov	ecx, [esp+130h+var_11C]
		mov	ebp, [esp+130h+var_F0]
		xor	ecx, ebp
		shrd	[esp+130h+var_120], ecx, 8
		xor	[esp+130h+var_120], ebx
		shr	ecx, 8
		xor	ecx, edi
		shrd	[esp+130h+var_120], ecx, 8
		xor	[esp+130h+var_120], esi
		shr	ecx, 8
		xor	ecx, edx
		shrd	[esp+130h+var_120], ecx, 8
		xor	[esp+130h+var_120], eax
		shr	ecx, 8
		xor	ecx, [esp+130h+var_118]
		shrd	[esp+130h+var_120], ecx, 8
		shr	ecx, 8
		shld	[esp+130h+var_118], eax, 8
		mov	[esp+130h+var_11C], ecx
		shl	eax, 8
		xor	eax, esi
		mov	esi, [esp+130h+var_118]
		xor	esi, edx
		mov	[esp+130h+var_F0], eax
		mov	edx, eax
		mov	eax, [esp+130h+var_120]
		shld	esi, edx, 8
		shl	edx, 8
		xor	esi, edi
		xor	edx, ebx
		mov	ebx, [esp+130h+var_EC]
		shld	esi, edx, 8
		shl	edx, 8
		xor	esi, ebp
		xor	edx, [esp+130h+var_F4]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_FC]
		shl	edx, 8
		xor	edx, [esp+130h+var_F8]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_104]
		shl	edx, 8
		xor	edx, [esp+130h+var_100]
		shld	esi, edx, 8
		xor	esi, [esp+130h+var_10C]
		shl	edx, 8
		xor	edx, [esp+130h+var_108]
		shld	esi, edx, 8
		shl	edx, 8
		xor	eax, edx
		mov	edx, ecx
		movzx	ecx, byte ptr [esp+ebx+130h+var_C4]
		xor	edx, esi
		mov	esi, dword ptr [esp+130h+var_CC]
		mov	[esp+130h+var_114], esi
		xor	eax, _Cx[ecx*8]
		xor	edx, dword_4[ecx*8]
		xor	dword ptr [esp+ebx+130h+var_44], eax
		xor	dword ptr [esp+ebx+130h+var_44+4], edx
		add	ebx, 8
		sub	[esp+130h+var_110], 1
		mov	[esp+130h+var_EC], ebx
		jnz	loc_C50
		movups	xmm0, [esp+130h+var_44]
		mov	eax, [esp+130h+var_E8]
		add	eax, 8
		mov	[esp+130h+var_E8], eax
		movups	[esp+130h+var_C4], xmm0
		movups	xmm0, [esp+130h+var_34]
		movups	[esp+130h+var_B4], xmm0
		movups	xmm0, [esp+130h+var_24]
		movups	[esp+130h+var_A4], xmm0
		movups	xmm0, [esp+130h+var_14]
		movups	xmmword	ptr [esp+9Ch], xmm0
		cmp	eax, (offset byte_84F+1)
		jl	loc_996
		mov	ebp, [esp+130h+var_D4]
		lea	eax, [esp+130h+var_85]
		xor	edx, edx
		lea	ecx, [ebp+3Fh]
		cmp	ebp, eax
		ja	short loc_EC5
		lea	eax, [esp+130h+var_C4]
		cmp	ecx, eax
		jnb	short loc_ED4

loc_EC5:				; CODE XREF: _whirlpool_block+66Bj
		mov	ebx, [esp+130h+var_E0]
		cmp	ebp, ebx
		ja	short loc_F03
		lea	eax, [ebx-3Fh]
		cmp	ecx, eax
		jb	short loc_F03

loc_ED4:				; CODE XREF: _whirlpool_block+673j
		mov	edi, [esp+130h+var_DC]
		mov	edx, ebp
		mov	ebx, [esp+130h+var_D8]
		mov	esi, 40h ; '@'

loc_EE3:				; CODE XREF: _whirlpool_block+6A7j
		lea	eax, [edx+ebx]
		mov	cl, [edi+eax]
		lea	edx, [edx+1]
		xor	cl, [edx-1]
		xor	cl, [eax]
		mov	[edx-1], cl
		sub	esi, 1
		jnz	short loc_EE3
		mov	ebx, [esp+130h+var_E0]
		mov	edi, [esp+130h+var_E4]
		jmp	short loc_F57
; ---------------------------------------------------------------------------

loc_F03:				; CODE XREF: _whirlpool_block+67Bj
					; _whirlpool_block+682j
		mov	edi, [esp+130h+var_E4]
		lea	esi, [esp+130h+var_B4]
		mov	ecx, ebp
		sub	esi, ebp
		mov	ebp, [esp+130h+var_D8]

loc_F13:				; CODE XREF: _whirlpool_block+701j
		movups	xmm0, xmmword ptr [ecx]
		lea	eax, [ebx+ecx]
		movups	xmm1, xmmword ptr [eax+edi]
		lea	ecx, [ecx+20h]
		pxor	xmm1, xmm0
		movups	xmm0, xmmword ptr [ecx+ebp-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [ecx-20h], xmm1
		movups	xmm0, xmmword ptr [ecx-10h]
		movups	xmm1, xmmword ptr [ebx+edx-2Fh]
		add	edx, 20h ; ' '
		pxor	xmm1, xmm0
		movups	xmm0, xmmword ptr [esi+ecx-20h]
		pxor	xmm1, xmm0
		movups	xmmword	ptr [ecx-10h], xmm1
		cmp	edx, 40h ; '@'
		jl	short loc_F13
		mov	ebp, [esp+130h+var_D4]

loc_F57:				; CODE XREF: _whirlpool_block+6B1j
		mov	esi, [esp+130h+var_DC]
		add	ebx, 40h ; '@'
		add	esi, 40h ; '@'
		mov	[esp+130h+var_E0], ebx
		sub	[esp+130h+var_D0], 1
		mov	[esp+130h+var_DC], esi
		jnz	loc_8C1
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		mov	ecx, [esp+120h+var_4]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 120h
		retn
; ---------------------------------------------------------------------------

loc_F8D:				; CODE XREF: _whirlpool_block+35j
		push	[esp+124h+arg_8]
		push	ecx
		push	ebp
		call	_whirlpool_block_mmx
		mov	ecx, [esp+130h+var_4]
		add	esp, 0Ch
		pop	ebp
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	esp, 120h
		retn
_whirlpool_block endp

_text$mn	ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _whirlpool_block_mmx:near	; CODE XREF: _whirlpool_block+746p
; __fastcall __security_check_cookie(x)
		extrn @__security_check_cookie@4:near ;	CODE XREF: _whirlpool_block+731p
					; _whirlpool_block+758p
		extrn __chkstk:near	; CODE XREF: _whirlpool_block+5p
		extrn _OPENSSL_ia32cap_P:near ;	DATA XREF: _whirlpool_block+18r
		extrn ___security_cookie:near ;	DATA XREF: _whirlpool_block+Ar


		end
