; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\Putty\windows\winjump.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_BSS	SEGMENT
$SG86040 DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG86018 DB	'%.*s%s', 00H
	ORG $+1
$SG86021 DB	'r', 00H
	ORG $+2
$SG86038 DB	'@', 00H
	ORG $+2
$SG86043 DB	'''', 00H
	ORG $+2
$SG86044 DB	'Connect to PuTTY session ''', 00H
	ORG $+1
$SG86047 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'j', 00H, 'u', 00H, 'm', 00H, 'p'
	DB	00H, '.', 00H, 'c', 00H, 00H, 00H
$SG86048 DB	'a', 00H, 'p', 00H, 'p', 00H, 'n', 00H, 'a', 00H, 'm', 00H
	DB	'e', 00H, 00H, 00H
$SG86049 DB	'.', 00H
	ORG $+2
$SG86050 DB	'Run %.*s', 00H
	ORG $+3
$SG86062 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'j', 00H, 'u', 00H, 'm', 00H, 'p'
	DB	00H, '.', 00H, 'c', 00H, 00H, 00H
$SG86063 DB	'a', 00H, 'p', 00H, 'p', 00H, 'n', 00H, 'a', 00H, 'm', 00H
	DB	'e', 00H, 00H, 00H
$SG86064 DB	'.', 00H
	ORG $+2
$SG86065 DB	'Run %.*s', 00H
	ORG $+3
$SG86147 DB	'R', 00H, 'e', 00H, 'c', 00H, 'e', 00H, 'n', 00H, 't', 00H
	DB	' ', 00H, 'S', 00H, 'e', 00H, 's', 00H, 's', 00H, 'i', 00H, 'o'
	DB	00H, 'n', 00H, 's', 00H, 00H, 00H
$SG86156 DB	'Pageant.exe', 00H, 'PuTTYgen.exe', 00H, 00H, 00H
_DATA	ENDS
CONST	SEGMENT
_CLSID_DestinationList DD 077f10cf0H
	DW	03db5H
	DW	04966H
	DB	0b5H
	DB	020H
	DB	0b7H
	DB	0c5H
	DB	04fH
	DB	0d3H
	DB	05eH
	DB	0d6H
_CLSID_ShellLink DD 021401H
	DW	00H
	DW	00H
	DB	0c0H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	046H
_CLSID_EnumerableObjectCollection DD 02d3468c1H
	DW	036a7H
	DW	043b6H
	DB	0acH
	DB	024H
	DB	0d3H
	DB	0f0H
	DB	02fH
	DB	0d9H
	DB	060H
	DB	07aH
_IID_IObjectCollection DD 05632b1a4H
	DW	0e38aH
	DW	0400aH
	DB	092H
	DB	08aH
	DB	0d4H
	DB	0cdH
	DB	063H
	DB	023H
	DB	02H
	DB	095H
_IID_IShellLinkA DD 0214eeH
	DW	00H
	DW	00H
	DB	0c0H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	046H
_IID_ICustomDestinationList DD 06332debfH
	DW	087b5H
	DW	04670H
	DB	090H
	DB	0c0H
	DB	05eH
	DB	057H
	DB	0b4H
	DB	08H
	DB	0a4H
	DB	09eH
_IID_IObjectArray DD 092ca9dcdH
	DW	05622H
	DW	04bbaH
	DB	0a8H
	DB	05H
	DB	05eH
	DB	09fH
	DB	054H
	DB	01bH
	DB	0d8H
	DB	0c9H
_IID_IPropertyStore DD 0886d8eebH
	DW	08cf2H
	DW	04446H
	DB	08dH
	DB	02H
	DB	0cdH
	DB	0baH
	DB	01dH
	DB	0bdH
	DB	0cfH
	DB	099H
_PKEY_Title DD	0f29f85e0H
	DW	04ff9H
	DW	01068H
	DB	0abH
	DB	091H
	DB	08H
	DB	00H
	DB	02bH
	DB	027H
	DB	0b3H
	DB	0d9H
	DD	02H
CONST	ENDS
PUBLIC	_clear_jumplist
EXTRN	__imp__CoCreateInstance@20:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\putty\windows\winjump.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_pCDL$ = -8						; size = 4
_clear_jumplist PROC
; Line 671
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	esi
	mov	DWORD PTR [ebp-12], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 675
	mov	esi, esp
	lea	eax, DWORD PTR _pCDL$[ebp]
	push	eax
	push	OFFSET _IID_ICustomDestinationList
	push	1
	push	0
	push	OFFSET _CLSID_DestinationList
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jne	SHORT $LN2@clear_jump
; Line 676
	mov	esi, esp
	push	0
	mov	ecx, DWORD PTR _pCDL$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCDL$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+40]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 677
	mov	esi, esp
	mov	edx, DWORD PTR _pCDL$[ebp]
	push	edx
	mov	eax, DWORD PTR _pCDL$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@clear_jump:
; Line 680
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@clear_jump
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 12					; 0000000cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN6@clear_jump:
	DD	1
	DD	$LN5@clear_jump
$LN5@clear_jump:
	DD	-8					; fffffff8H
	DD	4
	DD	$LN4@clear_jump
$LN4@clear_jump:
	DB	112					; 00000070H
	DB	67					; 00000043H
	DB	68					; 00000044H
	DB	76					; 0000004cH
	DB	0
_clear_jumplist ENDP
_TEXT	ENDS
PUBLIC	_add_session_to_jumplist
EXTRN	_add_to_jumplist_registry:PROC
EXTRN	_osVersion:BYTE
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_sessionname$ = 8					; size = 4
_add_session_to_jumplist PROC
; Line 684
	push	ebp
	mov	ebp, esp
; Line 686
	cmp	DWORD PTR _osVersion+4, 6
	jb	SHORT $LN3@add_sessio
	cmp	DWORD PTR _osVersion+4, 6
	jne	SHORT $LN4@add_sessio
	cmp	DWORD PTR _osVersion+8, 1
	jae	SHORT $LN4@add_sessio
$LN3@add_sessio:
; Line 687
	jmp	SHORT $LN5@add_sessio
$LN4@add_sessio:
; Line 689
	mov	eax, DWORD PTR _sessionname$[ebp]
	push	eax
	call	_add_to_jumplist_registry
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN2@add_sessio
; Line 690
	call	_update_jumplist_from_registry
; Line 691
	jmp	SHORT $LN5@add_sessio
$LN2@add_sessio:
; Line 693
	call	_clear_jumplist
$LN5@add_sessio:
; Line 695
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_add_session_to_jumplist ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_safefree:PROC
EXTRN	_strlen:PROC
EXTRN	_strcmp:PROC
EXTRN	_get_jumplist_registry_entries:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
tv94 = -4232						; size = 4
_desc2$86133 = -4224					; size = 2048
_desc1$86132 = -2168					; size = 2048
_rlink$86124 = -112					; size = 4
_found$86120 = -104					; size = 4
_i$86119 = -100						; size = 4
_need_abort$ = -96					; size = 4
_pRemoved$ = -88					; size = 4
_link$ = -80						; size = 4
_array$ = -72						; size = 4
_collection$ = -60					; size = 4
_pjumplist_reg_entries$ = -52				; size = 4
_pCDL$ = -44						; size = 4
_nremoved$ = -32					; size = 4
_jumplist_counter$ = -24				; size = 4
_num_items$ = -16					; size = 4
_piterator$ = -8					; size = 4
__$ArrayPad$ = -4					; size = 4
_update_jumplist_from_registry PROC
; Line 475
	push	ebp
	mov	ebp, esp
	mov	eax, 4232				; 00001088H
	call	__chkstk
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-4232]
	mov	ecx, 1058				; 00000422H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 484
	mov	DWORD PTR _pCDL$[ebp], 0
; Line 485
	mov	DWORD PTR _pjumplist_reg_entries$[ebp], 0
; Line 486
	mov	DWORD PTR _collection$[ebp], 0
; Line 487
	mov	DWORD PTR _array$[ebp], 0
; Line 488
	mov	DWORD PTR _link$[ebp], 0
; Line 489
	mov	DWORD PTR _pRemoved$[ebp], 0
; Line 490
	mov	DWORD PTR _need_abort$[ebp], 0
; Line 498
	mov	esi, esp
	lea	eax, DWORD PTR _pCDL$[ebp]
	push	eax
	push	OFFSET _IID_ICustomDestinationList
	push	1
	push	0
	push	OFFSET _CLSID_DestinationList
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN27@update_jum
; Line 499
	jmp	$cleanup$86094
$LN27@update_jum:
; Line 509
	mov	esi, esp
	lea	ecx, DWORD PTR _pRemoved$[ebp]
	push	ecx
	push	OFFSET _IID_IObjectArray
	lea	edx, DWORD PTR _num_items$[ebp]
	push	edx
	mov	eax, DWORD PTR _pCDL$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCDL$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+16]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN26@update_jum
; Line 510
	jmp	$cleanup$86094
$LN26@update_jum:
; Line 511
	mov	DWORD PTR _need_abort$[ebp], 1
; Line 512
	mov	esi, esp
	lea	ecx, DWORD PTR _nremoved$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pRemoved$[ebp]
	push	edx
	mov	eax, DWORD PTR _pRemoved$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+12]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN25@update_jum
; Line 513
	mov	DWORD PTR _nremoved$[ebp], 0
$LN25@update_jum:
; Line 521
	mov	esi, esp
	lea	eax, DWORD PTR _collection$[ebp]
	push	eax
	push	OFFSET _IID_IObjectCollection
	push	1
	push	0
	push	OFFSET _CLSID_EnumerableObjectCollection
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN24@update_jum
; Line 522
	jmp	$cleanup$86094
$LN24@update_jum:
; Line 528
	call	_get_jumplist_registry_entries
	mov	DWORD PTR _pjumplist_reg_entries$[ebp], eax
; Line 529
	mov	ecx, DWORD PTR _pjumplist_reg_entries$[ebp]
	mov	DWORD PTR _piterator$[ebp], ecx
; Line 530
	mov	DWORD PTR _jumplist_counter$[ebp], 0
$LN23@update_jum:
; Line 532
	mov	edx, DWORD PTR _piterator$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	$LN22@update_jum
	cmp	DWORD PTR _num_items$[ebp], 30		; 0000001eH
	jle	SHORT $LN30@update_jum
	mov	DWORD PTR tv94[ebp], 30			; 0000001eH
	jmp	SHORT $LN31@update_jum
$LN30@update_jum:
	mov	ecx, DWORD PTR _num_items$[ebp]
	mov	DWORD PTR tv94[ebp], ecx
$LN31@update_jum:
	mov	edx, DWORD PTR _jumplist_counter$[ebp]
	cmp	edx, DWORD PTR tv94[ebp]
	jge	$LN22@update_jum
; Line 533
	mov	eax, DWORD PTR _piterator$[ebp]
	push	eax
	push	0
	call	_make_shell_link
	add	esp, 8
	mov	DWORD PTR _link$[ebp], eax
; Line 534
	cmp	DWORD PTR _link$[ebp], 0
	je	$LN21@update_jum
; Line 541
	mov	DWORD PTR _i$86119[ebp], 0
	mov	DWORD PTR _found$86120[ebp], 0
	jmp	SHORT $LN20@update_jum
$LN19@update_jum:
	mov	ecx, DWORD PTR _i$86119[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$86119[ebp], ecx
$LN20@update_jum:
	mov	edx, DWORD PTR _i$86119[ebp]
	cmp	edx, DWORD PTR _nremoved$[ebp]
	jae	$LN18@update_jum
	cmp	DWORD PTR _found$86120[ebp], 0
	jne	$LN18@update_jum
; Line 544
	mov	esi, esp
	lea	eax, DWORD PTR _rlink$86124[ebp]
	push	eax
	push	OFFSET _IID_IShellLinkA
	mov	ecx, DWORD PTR _i$86119[ebp]
	push	ecx
	mov	edx, DWORD PTR _pRemoved$[ebp]
	push	edx
	mov	eax, DWORD PTR _pRemoved$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+16]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jl	$LN17@update_jum
; Line 550
	mov	esi, esp
	push	2047					; 000007ffH
	lea	eax, DWORD PTR _desc1$86132[ebp]
	push	eax
	mov	ecx, DWORD PTR _link$[ebp]
	push	ecx
	mov	edx, DWORD PTR _link$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+24]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jl	SHORT $LN16@update_jum
	mov	esi, esp
	push	2047					; 000007ffH
	lea	edx, DWORD PTR _desc2$86133[ebp]
	push	edx
	mov	eax, DWORD PTR _rlink$86124[ebp]
	push	eax
	mov	ecx, DWORD PTR _rlink$86124[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+24]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jl	SHORT $LN16@update_jum
	lea	ecx, DWORD PTR _desc2$86133[ebp]
	push	ecx
	lea	edx, DWORD PTR _desc1$86132[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN16@update_jum
; Line 551
	mov	DWORD PTR _found$86120[ebp], 1
$LN16@update_jum:
; Line 553
	mov	esi, esp
	mov	eax, DWORD PTR _rlink$86124[ebp]
	push	eax
	mov	ecx, DWORD PTR _rlink$86124[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+8]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN17@update_jum:
; Line 555
	jmp	$LN19@update_jum
$LN18@update_jum:
; Line 557
	cmp	DWORD PTR _found$86120[ebp], 0
	jne	SHORT $LN15@update_jum
; Line 558
	mov	esi, esp
	mov	ecx, DWORD PTR _link$[ebp]
	push	ecx
	mov	edx, DWORD PTR _collection$[ebp]
	push	edx
	mov	eax, DWORD PTR _collection$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+20]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 559
	mov	eax, DWORD PTR _jumplist_counter$[ebp]
	add	eax, 1
	mov	DWORD PTR _jumplist_counter$[ebp], eax
$LN15@update_jum:
; Line 562
	mov	esi, esp
	mov	ecx, DWORD PTR _link$[ebp]
	push	ecx
	mov	edx, DWORD PTR _link$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 563
	mov	DWORD PTR _link$[ebp], 0
$LN21@update_jum:
; Line 565
	mov	edx, DWORD PTR _piterator$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _piterator$[ebp]
	lea	edx, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _piterator$[ebp], edx
; Line 566
	jmp	$LN23@update_jum
$LN22@update_jum:
; Line 567
	mov	eax, DWORD PTR _pjumplist_reg_entries$[ebp]
	push	eax
	call	_safefree
	add	esp, 4
; Line 568
	mov	DWORD PTR _pjumplist_reg_entries$[ebp], 0
; Line 575
	mov	esi, esp
	lea	ecx, DWORD PTR _array$[ebp]
	push	ecx
	push	OFFSET _IID_IObjectArray
	mov	edx, DWORD PTR _collection$[ebp]
	push	edx
	mov	eax, DWORD PTR _collection$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN14@update_jum
; Line 576
	jmp	$cleanup$86094
$LN14@update_jum:
; Line 578
	mov	esi, esp
	mov	eax, DWORD PTR _array$[ebp]
	push	eax
	push	OFFSET $SG86147
	mov	ecx, DWORD PTR _pCDL$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCDL$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+20]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 586
	mov	esi, esp
	lea	edx, DWORD PTR _collection$[ebp]
	push	edx
	push	OFFSET _IID_IObjectCollection
	push	1
	push	0
	push	OFFSET _CLSID_EnumerableObjectCollection
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN13@update_jum
; Line 587
	jmp	$cleanup$86094
$LN13@update_jum:
; Line 592
	mov	DWORD PTR _piterator$[ebp], OFFSET $SG86156
$LN12@update_jum:
; Line 593
	mov	eax, DWORD PTR _piterator$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN11@update_jum
; Line 594
	push	0
	mov	edx, DWORD PTR _piterator$[ebp]
	push	edx
	call	_make_shell_link
	add	esp, 8
	mov	DWORD PTR _link$[ebp], eax
; Line 595
	cmp	DWORD PTR _link$[ebp], 0
	je	SHORT $LN10@update_jum
; Line 596
	mov	esi, esp
	mov	eax, DWORD PTR _link$[ebp]
	push	eax
	mov	ecx, DWORD PTR _collection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _collection$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+20]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 597
	mov	esi, esp
	mov	edx, DWORD PTR _link$[ebp]
	push	edx
	mov	eax, DWORD PTR _link$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 598
	mov	DWORD PTR _link$[ebp], 0
$LN10@update_jum:
; Line 600
	mov	eax, DWORD PTR _piterator$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _piterator$[ebp]
	lea	edx, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _piterator$[ebp], edx
; Line 601
	jmp	SHORT $LN12@update_jum
$LN11@update_jum:
; Line 608
	mov	esi, esp
	lea	eax, DWORD PTR _array$[ebp]
	push	eax
	push	OFFSET _IID_IObjectArray
	mov	ecx, DWORD PTR _collection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _collection$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN9@update_jum
; Line 609
	jmp	$cleanup$86094
$LN9@update_jum:
; Line 611
	mov	esi, esp
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	mov	eax, DWORD PTR _pCDL$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCDL$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+28]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 617
	mov	esi, esp
	mov	ecx, DWORD PTR _array$[ebp]
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 618
	mov	DWORD PTR _array$[ebp], 0
; Line 619
	mov	esi, esp
	mov	edx, DWORD PTR _collection$[ebp]
	push	edx
	mov	eax, DWORD PTR _collection$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 620
	mov	DWORD PTR _collection$[ebp], 0
; Line 628
	mov	esi, esp
	lea	eax, DWORD PTR _collection$[ebp]
	push	eax
	push	OFFSET _IID_IObjectCollection
	push	1
	push	0
	push	OFFSET _CLSID_EnumerableObjectCollection
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN8@update_jum
; Line 629
	jmp	$cleanup$86094
$LN8@update_jum:
; Line 636
	mov	esi, esp
	lea	ecx, DWORD PTR _array$[ebp]
	push	ecx
	push	OFFSET _IID_IObjectArray
	mov	edx, DWORD PTR _collection$[ebp]
	push	edx
	mov	eax, DWORD PTR _collection$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN7@update_jum
; Line 637
	jmp	SHORT $cleanup$86094
$LN7@update_jum:
; Line 639
	mov	esi, esp
	mov	eax, DWORD PTR _array$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCDL$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCDL$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+28]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 645
	mov	esi, esp
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	mov	eax, DWORD PTR _array$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 646
	mov	DWORD PTR _array$[ebp], 0
; Line 647
	mov	esi, esp
	mov	eax, DWORD PTR _collection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _collection$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+8]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 648
	mov	DWORD PTR _collection$[ebp], 0
; Line 653
	mov	esi, esp
	mov	ecx, DWORD PTR _pCDL$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCDL$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+32]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 654
	mov	DWORD PTR _need_abort$[ebp], 0
$cleanup$86094:
; Line 660
	cmp	DWORD PTR _pRemoved$[ebp], 0
	je	SHORT $LN6@update_jum
	mov	esi, esp
	mov	edx, DWORD PTR _pRemoved$[ebp]
	push	edx
	mov	eax, DWORD PTR _pRemoved$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN6@update_jum:
; Line 661
	cmp	DWORD PTR _pCDL$[ebp], 0
	je	SHORT $LN5@update_jum
	cmp	DWORD PTR _need_abort$[ebp], 0
	je	SHORT $LN5@update_jum
	mov	esi, esp
	mov	eax, DWORD PTR _pCDL$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCDL$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+44]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN5@update_jum:
; Line 662
	cmp	DWORD PTR _pCDL$[ebp], 0
	je	SHORT $LN4@update_jum
	mov	esi, esp
	mov	ecx, DWORD PTR _pCDL$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCDL$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN4@update_jum:
; Line 663
	cmp	DWORD PTR _collection$[ebp], 0
	je	SHORT $LN3@update_jum
	mov	esi, esp
	mov	edx, DWORD PTR _collection$[ebp]
	push	edx
	mov	eax, DWORD PTR _collection$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN3@update_jum:
; Line 664
	cmp	DWORD PTR _array$[ebp], 0
	je	SHORT $LN2@update_jum
	mov	esi, esp
	mov	eax, DWORD PTR _array$[ebp]
	push	eax
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+8]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@update_jum:
; Line 665
	cmp	DWORD PTR _link$[ebp], 0
	je	SHORT $LN1@update_jum
	mov	esi, esp
	mov	ecx, DWORD PTR _link$[ebp]
	push	ecx
	mov	edx, DWORD PTR _link$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@update_jum:
; Line 666
	mov	edx, DWORD PTR _pjumplist_reg_entries$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 667
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN42@update_jum
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 4232				; 00001088H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN42@update_jum:
	DD	9
	DD	$LN41@update_jum
$LN41@update_jum:
	DD	-16					; fffffff0H
	DD	4
	DD	$LN32@update_jum
	DD	-32					; ffffffe0H
	DD	4
	DD	$LN33@update_jum
	DD	-44					; ffffffd4H
	DD	4
	DD	$LN34@update_jum
	DD	-60					; ffffffc4H
	DD	4
	DD	$LN35@update_jum
	DD	-72					; ffffffb8H
	DD	4
	DD	$LN36@update_jum
	DD	-88					; ffffffa8H
	DD	4
	DD	$LN37@update_jum
	DD	-112					; ffffff90H
	DD	4
	DD	$LN38@update_jum
	DD	-2168					; fffff788H
	DD	2048					; 00000800H
	DD	$LN39@update_jum
	DD	-4224					; ffffef80H
	DD	2048					; 00000800H
	DD	$LN40@update_jum
$LN40@update_jum:
	DB	100					; 00000064H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	99					; 00000063H
	DB	50					; 00000032H
	DB	0
$LN39@update_jum:
	DB	100					; 00000064H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	99					; 00000063H
	DB	49					; 00000031H
	DB	0
$LN38@update_jum:
	DB	114					; 00000072H
	DB	108					; 0000006cH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	107					; 0000006bH
	DB	0
$LN37@update_jum:
	DB	112					; 00000070H
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	111					; 0000006fH
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	0
$LN36@update_jum:
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	114					; 00000072H
	DB	97					; 00000061H
	DB	121					; 00000079H
	DB	0
$LN35@update_jum:
	DB	99					; 00000063H
	DB	111					; 0000006fH
	DB	108					; 0000006cH
	DB	108					; 0000006cH
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	105					; 00000069H
	DB	111					; 0000006fH
	DB	110					; 0000006eH
	DB	0
$LN34@update_jum:
	DB	112					; 00000070H
	DB	67					; 00000043H
	DB	68					; 00000044H
	DB	76					; 0000004cH
	DB	0
$LN33@update_jum:
	DB	110					; 0000006eH
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	111					; 0000006fH
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	0
$LN32@update_jum:
	DB	110					; 0000006eH
	DB	117					; 00000075H
	DB	109					; 0000006dH
	DB	95					; 0000005fH
	DB	105					; 00000069H
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	115					; 00000073H
	DB	0
_update_jumplist_from_registry ENDP
_TEXT	ENDS
EXTRN	_memset:PROC
EXTRN	_strcspn:PROC
EXTRN	__wassert:PROC
EXTRN	_dupcat:PROC
EXTRN	_close_settings_r:PROC
EXTRN	_open_settings_r:PROC
EXTRN	_dupstr:PROC
EXTRN	_fclose:PROC
EXTRN	_fopen:PROC
EXTRN	_dupprintf:PROC
EXTRN	_strrchr:PROC
EXTRN	__imp__GetModuleFileNameA@12:PROC
_BSS	SEGMENT
	ALIGN	4

_putty_path DB	0800H DUP (?)
; Function compile flags: /Odtp /RTCsu
_BSS	ENDS
_TEXT	SEGMENT
_fp$86012 = -76						; size = 4
_q$86011 = -72						; size = 4
_p$86010 = -68						; size = 4
_pv$ = -60						; size = 16
_pPS$ = -36						; size = 4
_psettings_tmp$ = -28					; size = 4
_desc_string$ = -24					; size = 4
_param_string$ = -20					; size = 4
_app_path$ = -16					; size = 4
_ret$ = -8						; size = 4
_appname$ = 8						; size = 4
_sessionname$ = 12					; size = 4
_make_shell_link PROC
; Line 383
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-76]
	mov	ecx, 19					; 00000013H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 391
	movsx	eax, BYTE PTR _putty_path
	test	eax, eax
	jne	SHORT $LN16@make_shell
; Line 392
	mov	esi, esp
	push	2047					; 000007ffH
	push	OFFSET _putty_path
	push	0
	call	DWORD PTR __imp__GetModuleFileNameA@12
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN16@make_shell:
; Line 393
	cmp	DWORD PTR _appname$[ebp], 0
	je	$LN15@make_shell
; Line 394
	mov	DWORD PTR _q$86011[ebp], OFFSET _putty_path
; Line 397
	push	92					; 0000005cH
	mov	ecx, DWORD PTR _q$86011[ebp]
	push	ecx
	call	_strrchr
	add	esp, 8
	mov	DWORD PTR _p$86010[ebp], eax
	cmp	DWORD PTR _p$86010[ebp], 0
	je	SHORT $LN14@make_shell
	mov	edx, DWORD PTR _p$86010[ebp]
	add	edx, 1
	mov	DWORD PTR _q$86011[ebp], edx
$LN14@make_shell:
; Line 398
	push	58					; 0000003aH
	mov	eax, DWORD PTR _q$86011[ebp]
	push	eax
	call	_strrchr
	add	esp, 8
	mov	DWORD PTR _p$86010[ebp], eax
	cmp	DWORD PTR _p$86010[ebp], 0
	je	SHORT $LN13@make_shell
	mov	ecx, DWORD PTR _p$86010[ebp]
	add	ecx, 1
	mov	DWORD PTR _q$86011[ebp], ecx
$LN13@make_shell:
; Line 400
	mov	edx, DWORD PTR _appname$[ebp]
	push	edx
	push	OFFSET _putty_path
	mov	eax, DWORD PTR _q$86011[ebp]
	sub	eax, OFFSET _putty_path
	push	eax
	push	OFFSET $SG86018
	call	_dupprintf
	add	esp, 16					; 00000010H
	mov	DWORD PTR _app_path$[ebp], eax
; Line 401
	push	OFFSET $SG86021
	mov	ecx, DWORD PTR _app_path$[ebp]
	push	ecx
	call	_fopen
	add	esp, 8
	mov	DWORD PTR _fp$86012[ebp], eax
	cmp	DWORD PTR _fp$86012[ebp], 0
	jne	SHORT $LN12@make_shell
; Line 402
	mov	edx, DWORD PTR _app_path$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 403
	xor	eax, eax
	jmp	$LN17@make_shell
$LN12@make_shell:
; Line 405
	mov	eax, DWORD PTR _fp$86012[ebp]
	push	eax
	call	_fclose
	add	esp, 4
; Line 406
	jmp	SHORT $LN11@make_shell
$LN15@make_shell:
; Line 407
	push	OFFSET _putty_path
	call	_dupstr
	add	esp, 4
	mov	DWORD PTR _app_path$[ebp], eax
$LN11@make_shell:
; Line 411
	cmp	DWORD PTR _sessionname$[ebp], 0
	je	SHORT $LN10@make_shell
; Line 412
	mov	ecx, DWORD PTR _sessionname$[ebp]
	push	ecx
	call	_open_settings_r
	add	esp, 4
	mov	DWORD PTR _psettings_tmp$[ebp], eax
; Line 413
	cmp	DWORD PTR _psettings_tmp$[ebp], 0
	jne	SHORT $LN9@make_shell
; Line 414
	mov	edx, DWORD PTR _app_path$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 415
	xor	eax, eax
	jmp	$LN17@make_shell
$LN9@make_shell:
; Line 417
	mov	eax, DWORD PTR _psettings_tmp$[ebp]
	push	eax
	call	_close_settings_r
	add	esp, 4
$LN10@make_shell:
; Line 423
	mov	esi, esp
	lea	ecx, DWORD PTR _ret$[ebp]
	push	ecx
	push	OFFSET _IID_IShellLinkA
	push	1
	push	0
	push	OFFSET _CLSID_ShellLink
	call	DWORD PTR __imp__CoCreateInstance@20
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN8@make_shell
; Line 424
	mov	edx, DWORD PTR _app_path$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 425
	xor	eax, eax
	jmp	$LN17@make_shell
$LN8@make_shell:
; Line 429
	mov	esi, esp
	mov	eax, DWORD PTR _app_path$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ret$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ret$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+80]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 431
	cmp	DWORD PTR _sessionname$[ebp], 0
	je	SHORT $LN7@make_shell
; Line 432
	push	0
	mov	edx, DWORD PTR _sessionname$[ebp]
	push	edx
	push	OFFSET $SG86038
	call	_dupcat
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _param_string$[ebp], eax
; Line 433
	jmp	SHORT $LN6@make_shell
$LN7@make_shell:
; Line 434
	push	OFFSET $SG86040
	call	_dupstr
	add	esp, 4
	mov	DWORD PTR _param_string$[ebp], eax
$LN6@make_shell:
; Line 436
	mov	esi, esp
	mov	eax, DWORD PTR _param_string$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ret$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ret$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+44]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 437
	mov	edx, DWORD PTR _param_string$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 439
	cmp	DWORD PTR _sessionname$[ebp], 0
	je	SHORT $LN5@make_shell
; Line 441
	push	0
	push	OFFSET $SG86043
	mov	eax, DWORD PTR _sessionname$[ebp]
	push	eax
	push	OFFSET $SG86044
	call	_dupcat
	add	esp, 16					; 00000010H
	mov	DWORD PTR _desc_string$[ebp], eax
; Line 442
	jmp	SHORT $LN4@make_shell
$LN5@make_shell:
; Line 443
	cmp	DWORD PTR _appname$[ebp], 0
	jne	SHORT $LN19@make_shell
	push	443					; 000001bbH
	push	OFFSET $SG86047
	push	OFFSET $SG86048
	call	__wassert
	add	esp, 12					; 0000000cH
$LN19@make_shell:
; Line 444
	mov	edx, DWORD PTR _appname$[ebp]
	push	edx
	push	OFFSET $SG86049
	mov	eax, DWORD PTR _appname$[ebp]
	push	eax
	call	_strcspn
	add	esp, 8
	push	eax
	push	OFFSET $SG86050
	call	_dupprintf
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _desc_string$[ebp], eax
$LN4@make_shell:
; Line 446
	mov	esi, esp
	mov	ecx, DWORD PTR _desc_string$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ret$[ebp]
	push	edx
	mov	eax, DWORD PTR _ret$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+28]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 447
	mov	eax, DWORD PTR _desc_string$[ebp]
	push	eax
	call	_safefree
	add	esp, 4
; Line 449
	mov	esi, esp
	push	0
	mov	ecx, DWORD PTR _app_path$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ret$[ebp]
	push	edx
	mov	eax, DWORD PTR _ret$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+68]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 453
	mov	esi, esp
	lea	eax, DWORD PTR _pPS$[ebp]
	push	eax
	push	OFFSET _IID_IPropertyStore
	mov	ecx, DWORD PTR _ret$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ret$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jl	$LN3@make_shell
; Line 454
	push	16					; 00000010H
	push	0
	lea	edx, DWORD PTR _pv$[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH
; Line 455
	mov	eax, 30					; 0000001eH
	mov	WORD PTR _pv$[ebp], ax
; Line 456
	cmp	DWORD PTR _sessionname$[ebp], 0
	je	SHORT $LN2@make_shell
; Line 457
	mov	ecx, DWORD PTR _sessionname$[ebp]
	push	ecx
	call	_dupstr
	add	esp, 4
	mov	DWORD PTR _pv$[ebp+8], eax
; Line 458
	jmp	SHORT $LN1@make_shell
$LN2@make_shell:
; Line 459
	cmp	DWORD PTR _appname$[ebp], 0
	jne	SHORT $LN20@make_shell
	push	459					; 000001cbH
	push	OFFSET $SG86062
	push	OFFSET $SG86063
	call	__wassert
	add	esp, 12					; 0000000cH
$LN20@make_shell:
; Line 460
	mov	eax, DWORD PTR _appname$[ebp]
	push	eax
	push	OFFSET $SG86064
	mov	ecx, DWORD PTR _appname$[ebp]
	push	ecx
	call	_strcspn
	add	esp, 8
	push	eax
	push	OFFSET $SG86065
	call	_dupprintf
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _pv$[ebp+8], eax
$LN1@make_shell:
; Line 462
	mov	esi, esp
	lea	edx, DWORD PTR _pv$[ebp]
	push	edx
	push	OFFSET _PKEY_Title
	mov	eax, DWORD PTR _pPS$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pPS$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+24]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 463
	mov	ecx, DWORD PTR _pv$[ebp+8]
	push	ecx
	call	_safefree
	add	esp, 4
; Line 464
	mov	esi, esp
	mov	edx, DWORD PTR _pPS$[ebp]
	push	edx
	mov	eax, DWORD PTR _pPS$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+28]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 465
	mov	esi, esp
	mov	eax, DWORD PTR _pPS$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pPS$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+8]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN3@make_shell:
; Line 468
	mov	ecx, DWORD PTR _app_path$[ebp]
	push	ecx
	call	_safefree
	add	esp, 4
; Line 470
	mov	eax, DWORD PTR _ret$[ebp]
$LN17@make_shell:
; Line 471
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN25@make_shell
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	add	esp, 76					; 0000004cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN25@make_shell:
	DD	3
	DD	$LN24@make_shell
$LN24@make_shell:
	DD	-8					; fffffff8H
	DD	4
	DD	$LN21@make_shell
	DD	-36					; ffffffdcH
	DD	4
	DD	$LN22@make_shell
	DD	-60					; ffffffc4H
	DD	16					; 00000010H
	DD	$LN23@make_shell
$LN23@make_shell:
	DB	112					; 00000070H
	DB	118					; 00000076H
	DB	0
$LN22@make_shell:
	DB	112					; 00000070H
	DB	80					; 00000050H
	DB	83					; 00000053H
	DB	0
$LN21@make_shell:
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	116					; 00000074H
	DB	0
_make_shell_link ENDP
_TEXT	ENDS
PUBLIC	_remove_session_from_jumplist
EXTRN	_remove_from_jumplist_registry:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_sessionname$ = 8					; size = 4
_remove_session_from_jumplist PROC
; Line 699
	push	ebp
	mov	ebp, esp
; Line 701
	cmp	DWORD PTR _osVersion+4, 6
	jb	SHORT $LN3@remove_ses
	cmp	DWORD PTR _osVersion+4, 6
	jne	SHORT $LN4@remove_ses
	cmp	DWORD PTR _osVersion+8, 1
	jae	SHORT $LN4@remove_ses
$LN3@remove_ses:
; Line 702
	jmp	SHORT $LN5@remove_ses
$LN4@remove_ses:
; Line 704
	mov	eax, DWORD PTR _sessionname$[ebp]
	push	eax
	call	_remove_from_jumplist_registry
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN2@remove_ses
; Line 705
	call	_update_jumplist_from_registry
; Line 706
	jmp	SHORT $LN5@remove_ses
$LN2@remove_ses:
; Line 708
	call	_clear_jumplist
$LN5@remove_ses:
; Line 710
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_remove_session_from_jumplist ENDP
_TEXT	ENDS
END
