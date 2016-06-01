; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\C\BwtSort.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	@SortGroup@32
EXTRN	_HeapSort@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\c\bwtsort.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_res$1487 = -116					; size = 4
_j$1483 = -112						; size = 4
_temp$1477 = -108					; size = 4
_sp$1469 = -104						; size = 4
_j$1464 = -100						; size = 4
_mid$1460 = -96						; size = 4
_i$1459 = -92						; size = 4
_sp$1451 = -88						; size = 4
_j$1450 = -84						; size = 4
_group$1449 = -80					; size = 4
_ind$1445 = -76						; size = 4
_cgCur$1442 = -72					; size = 4
_val$1441 = -68						; size = 4
_prevGroupStart$1437 = -64				; size = 4
_g$1434 = -60						; size = 4
_sp$1433 = -56						; size = 4
_sp$1428 = -52						; size = 4
_gRes$1427 = -48					; size = 4
_gPrev$1426 = -44					; size = 4
_cg$1425 = -40						; size = 4
_group$1424 = -36					; size = 4
_thereAreGroups$1423 = -32				; size = 4
_mask$1422 = -28					; size = 4
_j$1421 = -24						; size = 4
_temp$1420 = -20					; size = 4
_Groups$ = -16						; size = 4
_ind2$ = -12						; size = 4
_NumSortedBytes$ = -8					; size = 4
_BlockSize$ = -4					; size = 4
_groupOffset$ = 8					; size = 4
_groupSize$ = 12					; size = 4
_NumRefBits$ = 16					; size = 4
_Indices$ = 20						; size = 4
_left$ = 24						; size = 4
_range$ = 28						; size = 4
@SortGroup@32 PROC
; _BlockSize$ = ecx
; _NumSortedBytes$ = edx
; Line 68
	push	ebp
	mov	ebp, esp
	sub	esp, 116				; 00000074H
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-116]
	mov	ecx, 29					; 0000001dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _NumSortedBytes$[ebp], edx
	mov	DWORD PTR _BlockSize$[ebp], ecx
; Line 69
	mov	eax, DWORD PTR _groupOffset$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _ind2$[ebp], edx
; Line 71
	cmp	DWORD PTR _groupSize$[ebp], 1
	ja	SHORT $LN44@
; Line 78
	xor	eax, eax
	jmp	$LN45@
$LN44@:
; Line 80
	mov	eax, DWORD PTR _BlockSize$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4+262144]
	mov	DWORD PTR _Groups$[ebp], edx
; Line 85
	mov	eax, 1
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shl	eax, cl
	cmp	DWORD PTR _groupSize$[ebp], eax
	ja	$LN43@
	mov	ecx, DWORD PTR _groupSize$[ebp]
	cmp	ecx, DWORD PTR _range$[ebp]
	ja	$LN43@
; Line 87
	mov	edx, DWORD PTR _BlockSize$[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _temp$1420[ebp], ecx
; Line 92
	mov	DWORD PTR _gRes$1427[ebp], 0
; Line 94
	mov	edx, DWORD PTR _ind2$[ebp]
	mov	eax, DWORD PTR [edx]
	add	eax, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1428[ebp], eax
; Line 95
	mov	ecx, DWORD PTR _sp$1428[ebp]
	cmp	ecx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN42@
	mov	edx, DWORD PTR _sp$1428[ebp]
	sub	edx, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1428[ebp], edx
$LN42@:
; Line 96
	mov	eax, DWORD PTR _sp$1428[ebp]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _gPrev$1426[ebp], edx
; Line 97
	mov	eax, DWORD PTR _gPrev$1426[ebp]
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shl	eax, cl
	mov	ecx, DWORD PTR _temp$1420[ebp]
	mov	DWORD PTR [ecx], eax
; Line 100
	mov	DWORD PTR _j$1421[ebp], 1
	jmp	SHORT $LN41@
$LN40@:
	mov	edx, DWORD PTR _j$1421[ebp]
	add	edx, 1
	mov	DWORD PTR _j$1421[ebp], edx
$LN41@:
	mov	eax, DWORD PTR _j$1421[ebp]
	cmp	eax, DWORD PTR _groupSize$[ebp]
	jae	SHORT $LN39@
; Line 102
	mov	ecx, DWORD PTR _j$1421[ebp]
	mov	edx, DWORD PTR _ind2$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	add	eax, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1433[ebp], eax
; Line 104
	mov	ecx, DWORD PTR _sp$1433[ebp]
	cmp	ecx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN38@
	mov	edx, DWORD PTR _sp$1433[ebp]
	sub	edx, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1433[ebp], edx
$LN38@:
; Line 105
	mov	eax, DWORD PTR _sp$1433[ebp]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _g$1434[ebp], edx
; Line 106
	mov	eax, DWORD PTR _g$1434[ebp]
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shl	eax, cl
	or	eax, DWORD PTR _j$1421[ebp]
	mov	ecx, DWORD PTR _j$1421[ebp]
	mov	edx, DWORD PTR _temp$1420[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
; Line 107
	mov	eax, DWORD PTR _gPrev$1426[ebp]
	xor	eax, DWORD PTR _g$1434[ebp]
	or	eax, DWORD PTR _gRes$1427[ebp]
	mov	DWORD PTR _gRes$1427[ebp], eax
; Line 108
	jmp	SHORT $LN40@
$LN39@:
; Line 109
	cmp	DWORD PTR _gRes$1427[ebp], 0
	jne	SHORT $LN37@
; Line 112
	mov	ecx, DWORD PTR _groupSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ind2$[ebp]
	push	edx
	call	_SetGroupSize@8
; Line 114
	mov	eax, 1
	jmp	$LN45@
$LN37@:
; Line 118
	mov	eax, DWORD PTR _groupSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _temp$1420[ebp]
	push	ecx
	call	_HeapSort@8
; Line 119
	mov	edx, 1
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shl	edx, cl
	sub	edx, 1
	mov	DWORD PTR _mask$1422[ebp], edx
; Line 120
	mov	DWORD PTR _thereAreGroups$1423[ebp], 0
; Line 122
	mov	eax, DWORD PTR _groupOffset$[ebp]
	mov	DWORD PTR _group$1424[ebp], eax
; Line 123
	mov	ecx, DWORD PTR _temp$1420[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shr	edx, cl
	mov	DWORD PTR _cg$1425[ebp], edx
; Line 124
	mov	eax, DWORD PTR _temp$1420[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, DWORD PTR _mask$1422[ebp]
	mov	edx, DWORD PTR _temp$1420[ebp]
	mov	eax, DWORD PTR _ind2$[ebp]
	mov	ecx, DWORD PTR [eax+ecx*4]
	mov	DWORD PTR [edx], ecx
; Line 130
	mov	DWORD PTR _prevGroupStart$1437[ebp], 0
; Line 133
	mov	DWORD PTR _j$1421[ebp], 1
	jmp	SHORT $LN36@
$LN35@:
	mov	edx, DWORD PTR _j$1421[ebp]
	add	edx, 1
	mov	DWORD PTR _j$1421[ebp], edx
$LN36@:
	mov	eax, DWORD PTR _j$1421[ebp]
	cmp	eax, DWORD PTR _groupSize$[ebp]
	jae	SHORT $LN34@
; Line 135
	mov	ecx, DWORD PTR _j$1421[ebp]
	mov	edx, DWORD PTR _temp$1420[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR _val$1441[ebp], eax
; Line 136
	mov	edx, DWORD PTR _val$1441[ebp]
	mov	ecx, DWORD PTR _NumRefBits$[ebp]
	shr	edx, cl
	mov	DWORD PTR _cgCur$1442[ebp], edx
; Line 138
	mov	eax, DWORD PTR _cgCur$1442[ebp]
	cmp	eax, DWORD PTR _cg$1425[ebp]
	je	SHORT $LN33@
; Line 140
	mov	ecx, DWORD PTR _cgCur$1442[ebp]
	mov	DWORD PTR _cg$1425[ebp], ecx
; Line 141
	mov	edx, DWORD PTR _groupOffset$[ebp]
	add	edx, DWORD PTR _j$1421[ebp]
	mov	DWORD PTR _group$1424[ebp], edx
; Line 149
	mov	eax, DWORD PTR _j$1421[ebp]
	sub	eax, DWORD PTR _prevGroupStart$1437[ebp]
	push	eax
	mov	ecx, DWORD PTR _prevGroupStart$1437[ebp]
	mov	edx, DWORD PTR _temp$1420[ebp]
	lea	eax, DWORD PTR [edx+ecx*4]
	push	eax
	call	_SetGroupSize@8
; Line 150
	mov	ecx, DWORD PTR _j$1421[ebp]
	mov	DWORD PTR _prevGroupStart$1437[ebp], ecx
; Line 153
	jmp	SHORT $LN32@
$LN33@:
; Line 154
	mov	DWORD PTR _thereAreGroups$1423[ebp], 1
$LN32@:
; Line 156
	mov	edx, DWORD PTR _val$1441[ebp]
	and	edx, DWORD PTR _mask$1422[ebp]
	mov	eax, DWORD PTR _ind2$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _ind$1445[ebp], ecx
; Line 157
	mov	edx, DWORD PTR _j$1421[ebp]
	mov	eax, DWORD PTR _temp$1420[ebp]
	mov	ecx, DWORD PTR _ind$1445[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
; Line 158
	mov	edx, DWORD PTR _ind$1445[ebp]
	mov	eax, DWORD PTR _Groups$[ebp]
	mov	ecx, DWORD PTR _group$1424[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
; Line 160
	jmp	$LN35@
$LN34@:
; Line 163
	mov	edx, DWORD PTR _j$1421[ebp]
	sub	edx, DWORD PTR _prevGroupStart$1437[ebp]
	push	edx
	mov	eax, DWORD PTR _prevGroupStart$1437[ebp]
	mov	ecx, DWORD PTR _temp$1420[ebp]
	lea	edx, DWORD PTR [ecx+eax*4]
	push	edx
	call	_SetGroupSize@8
; Line 167
	mov	DWORD PTR _j$1421[ebp], 0
	jmp	SHORT $LN31@
$LN30@:
	mov	eax, DWORD PTR _j$1421[ebp]
	add	eax, 1
	mov	DWORD PTR _j$1421[ebp], eax
$LN31@:
	mov	ecx, DWORD PTR _j$1421[ebp]
	cmp	ecx, DWORD PTR _groupSize$[ebp]
	jae	SHORT $LN29@
; Line 168
	mov	edx, DWORD PTR _j$1421[ebp]
	mov	eax, DWORD PTR _ind2$[ebp]
	mov	ecx, DWORD PTR _j$1421[ebp]
	mov	esi, DWORD PTR _temp$1420[ebp]
	mov	ecx, DWORD PTR [esi+ecx*4]
	mov	DWORD PTR [eax+edx*4], ecx
	jmp	SHORT $LN30@
$LN29@:
; Line 169
	mov	eax, DWORD PTR _thereAreGroups$1423[ebp]
	jmp	$LN45@
$LN43@:
; Line 175
	mov	edx, DWORD PTR _ind2$[ebp]
	mov	eax, DWORD PTR [edx]
	add	eax, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1451[ebp], eax
	mov	ecx, DWORD PTR _sp$1451[ebp]
	cmp	ecx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN28@
	mov	edx, DWORD PTR _sp$1451[ebp]
	sub	edx, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1451[ebp], edx
$LN28@:
; Line 176
	mov	eax, DWORD PTR _sp$1451[ebp]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _group$1449[ebp], edx
; Line 177
	mov	DWORD PTR _j$1450[ebp], 1
	jmp	SHORT $LN27@
$LN26@:
	mov	eax, DWORD PTR _j$1450[ebp]
	add	eax, 1
	mov	DWORD PTR _j$1450[ebp], eax
$LN27@:
	mov	ecx, DWORD PTR _j$1450[ebp]
	cmp	ecx, DWORD PTR _groupSize$[ebp]
	jae	SHORT $LN25@
; Line 179
	mov	edx, DWORD PTR _j$1450[ebp]
	mov	eax, DWORD PTR _ind2$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	add	ecx, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1451[ebp], ecx
	mov	edx, DWORD PTR _sp$1451[ebp]
	cmp	edx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN24@
	mov	eax, DWORD PTR _sp$1451[ebp]
	sub	eax, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1451[ebp], eax
$LN24@:
; Line 180
	mov	ecx, DWORD PTR _sp$1451[ebp]
	mov	edx, DWORD PTR _Groups$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	cmp	eax, DWORD PTR _group$1449[ebp]
	je	SHORT $LN23@
; Line 181
	jmp	SHORT $LN25@
$LN23@:
; Line 182
	jmp	SHORT $LN26@
$LN25@:
; Line 183
	mov	ecx, DWORD PTR _j$1450[ebp]
	cmp	ecx, DWORD PTR _groupSize$[ebp]
	jne	SHORT $LN21@
; Line 186
	mov	edx, DWORD PTR _groupSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _ind2$[ebp]
	push	eax
	call	_SetGroupSize@8
; Line 188
	mov	eax, 1
	jmp	$LN45@
$LN21@:
; Line 200
	cmp	DWORD PTR _range$[ebp], 1
	ja	SHORT $LN19@
; Line 203
	mov	ecx, DWORD PTR _groupSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ind2$[ebp]
	push	edx
	call	_SetGroupSize@8
; Line 205
	mov	eax, 1
	jmp	$LN45@
$LN19@:
; Line 207
	mov	eax, DWORD PTR _range$[ebp]
	add	eax, 1
	shr	eax, 1
	add	eax, DWORD PTR _left$[ebp]
	mov	DWORD PTR _mid$1460[ebp], eax
; Line 208
	mov	ecx, DWORD PTR _groupSize$[ebp]
	mov	DWORD PTR _j$1464[ebp], ecx
; Line 209
	mov	DWORD PTR _i$1459[ebp], 0
$LN18@:
; Line 212
	mov	edx, DWORD PTR _i$1459[ebp]
	mov	eax, DWORD PTR _ind2$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	add	ecx, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1469[ebp], ecx
	mov	edx, DWORD PTR _sp$1469[ebp]
	cmp	edx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN15@
	mov	eax, DWORD PTR _sp$1469[ebp]
	sub	eax, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1469[ebp], eax
$LN15@:
; Line 213
	mov	ecx, DWORD PTR _sp$1469[ebp]
	mov	edx, DWORD PTR _Groups$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	cmp	eax, DWORD PTR _mid$1460[ebp]
	jb	$LN17@
; Line 215
	mov	ecx, DWORD PTR _j$1464[ebp]
	sub	ecx, 1
	mov	DWORD PTR _j$1464[ebp], ecx
	jmp	SHORT $LN13@
$LN12@:
	mov	edx, DWORD PTR _j$1464[ebp]
	sub	edx, 1
	mov	DWORD PTR _j$1464[ebp], edx
$LN13@:
	mov	eax, DWORD PTR _j$1464[ebp]
	cmp	eax, DWORD PTR _i$1459[ebp]
	jbe	SHORT $LN11@
; Line 217
	mov	ecx, DWORD PTR _j$1464[ebp]
	mov	edx, DWORD PTR _ind2$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	add	eax, DWORD PTR _NumSortedBytes$[ebp]
	mov	DWORD PTR _sp$1469[ebp], eax
	mov	ecx, DWORD PTR _sp$1469[ebp]
	cmp	ecx, DWORD PTR _BlockSize$[ebp]
	jb	SHORT $LN10@
	mov	edx, DWORD PTR _sp$1469[ebp]
	sub	edx, DWORD PTR _BlockSize$[ebp]
	mov	DWORD PTR _sp$1469[ebp], edx
$LN10@:
; Line 218
	mov	eax, DWORD PTR _sp$1469[ebp]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	cmp	edx, DWORD PTR _mid$1460[ebp]
	jae	SHORT $LN9@
; Line 220
	mov	eax, DWORD PTR _i$1459[ebp]
	mov	ecx, DWORD PTR _ind2$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _temp$1477[ebp], edx
	mov	eax, DWORD PTR _i$1459[ebp]
	mov	ecx, DWORD PTR _ind2$[ebp]
	mov	edx, DWORD PTR _j$1464[ebp]
	mov	esi, DWORD PTR _ind2$[ebp]
	mov	edx, DWORD PTR [esi+edx*4]
	mov	DWORD PTR [ecx+eax*4], edx
	mov	eax, DWORD PTR _j$1464[ebp]
	mov	ecx, DWORD PTR _ind2$[ebp]
	mov	edx, DWORD PTR _temp$1477[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
; Line 221
	jmp	SHORT $LN11@
$LN9@:
; Line 223
	jmp	SHORT $LN12@
$LN11@:
; Line 224
	mov	eax, DWORD PTR _i$1459[ebp]
	cmp	eax, DWORD PTR _j$1464[ebp]
	jb	SHORT $LN17@
; Line 225
	jmp	SHORT $LN16@
$LN17@:
; Line 228
	mov	ecx, DWORD PTR _i$1459[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$1459[ebp], ecx
	mov	edx, DWORD PTR _i$1459[ebp]
	cmp	edx, DWORD PTR _j$1464[ebp]
	jb	$LN18@
$LN16@:
; Line 229
	cmp	DWORD PTR _i$1459[ebp], 0
	jne	SHORT $LN7@
; Line 231
	mov	eax, DWORD PTR _mid$1460[ebp]
	sub	eax, DWORD PTR _left$[ebp]
	mov	ecx, DWORD PTR _range$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _range$[ebp], ecx
; Line 232
	mov	edx, DWORD PTR _mid$1460[ebp]
	mov	DWORD PTR _left$[ebp], edx
	jmp	SHORT $LN6@
$LN7@:
; Line 234
	mov	eax, DWORD PTR _i$1459[ebp]
	cmp	eax, DWORD PTR _groupSize$[ebp]
	jne	SHORT $LN5@
; Line 235
	mov	ecx, DWORD PTR _mid$1460[ebp]
	sub	ecx, DWORD PTR _left$[ebp]
	mov	DWORD PTR _range$[ebp], ecx
; Line 236
	jmp	SHORT $LN6@
$LN5@:
; Line 237
	jmp	SHORT $LN20@
$LN6@:
; Line 238
	jmp	$LN21@
$LN20@:
; Line 250
	mov	edx, DWORD PTR _i$1459[ebp]
	mov	DWORD PTR _j$1483[ebp], edx
	jmp	SHORT $LN3@
$LN2@:
	mov	eax, DWORD PTR _j$1483[ebp]
	add	eax, 1
	mov	DWORD PTR _j$1483[ebp], eax
$LN3@:
	mov	ecx, DWORD PTR _j$1483[ebp]
	cmp	ecx, DWORD PTR _groupSize$[ebp]
	jae	SHORT $LN1@
; Line 251
	mov	edx, DWORD PTR _groupOffset$[ebp]
	add	edx, DWORD PTR _i$1459[ebp]
	mov	eax, DWORD PTR _j$1483[ebp]
	mov	ecx, DWORD PTR _ind2$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
	jmp	SHORT $LN2@
$LN1@:
; Line 255
	mov	edx, DWORD PTR _mid$1460[ebp]
	sub	edx, DWORD PTR _left$[ebp]
	push	edx
	mov	eax, DWORD PTR _left$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Indices$[ebp]
	push	ecx
	mov	edx, DWORD PTR _NumRefBits$[ebp]
	push	edx
	mov	eax, DWORD PTR _i$1459[ebp]
	push	eax
	mov	ecx, DWORD PTR _groupOffset$[ebp]
	push	ecx
	mov	edx, DWORD PTR _NumSortedBytes$[ebp]
	mov	ecx, DWORD PTR _BlockSize$[ebp]
	call	@SortGroup@32
	mov	DWORD PTR _res$1487[ebp], eax
; Line 256
	mov	edx, DWORD PTR _mid$1460[ebp]
	sub	edx, DWORD PTR _left$[ebp]
	mov	eax, DWORD PTR _range$[ebp]
	sub	eax, edx
	push	eax
	mov	ecx, DWORD PTR _mid$1460[ebp]
	push	ecx
	mov	edx, DWORD PTR _Indices$[ebp]
	push	edx
	mov	eax, DWORD PTR _NumRefBits$[ebp]
	push	eax
	mov	ecx, DWORD PTR _groupSize$[ebp]
	sub	ecx, DWORD PTR _i$1459[ebp]
	push	ecx
	mov	edx, DWORD PTR _groupOffset$[ebp]
	add	edx, DWORD PTR _i$1459[ebp]
	push	edx
	mov	edx, DWORD PTR _NumSortedBytes$[ebp]
	mov	ecx, DWORD PTR _BlockSize$[ebp]
	call	@SortGroup@32
	or	eax, DWORD PTR _res$1487[ebp]
$LN45@:
; Line 349
	pop	edi
	pop	esi
	add	esp, 116				; 00000074H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
@SortGroup@32 ENDP
; Function compile flags: /Odtp /RTCsu
_p$ = 8						; size = 4
_size$ = 12						; size = 4
_SetGroupSize@8 PROC
; Line 44
	push	ebp
	mov	ebp, esp
; Line 45
	mov	eax, DWORD PTR _size$[ebp]
	sub	eax, 1
	mov	DWORD PTR _size$[ebp], eax
	jne	SHORT $LN2@SetGroupSi
; Line 46
	jmp	SHORT $LN3@SetGroupSi
$LN2@SetGroupSi:
; Line 47
	mov	ecx, DWORD PTR _size$[ebp]
	and	ecx, 1023				; 000003ffH
	shl	ecx, 20					; 00000014H
	or	ecx, -2147483648			; 80000000H
	mov	edx, DWORD PTR _p$[ebp]
	or	ecx, DWORD PTR [edx]
	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 48
	cmp	DWORD PTR _size$[ebp], 1024		; 00000400H
	jb	SHORT $LN3@SetGroupSi
; Line 50
	mov	ecx, DWORD PTR _p$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 1073741824				; 40000000H
	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR [eax], edx
; Line 51
	mov	ecx, DWORD PTR _size$[ebp]
	shr	ecx, 10					; 0000000aH
	shl	ecx, 20					; 00000014H
	mov	edx, DWORD PTR _p$[ebp]
	or	ecx, DWORD PTR [edx+4]
	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR [eax+4], ecx
$LN3@SetGroupSi:
; Line 53
	pop	ebp
	ret	8
_SetGroupSize@8 ENDP
_TEXT	ENDS
PUBLIC	_BlockSort@12
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_groupSize$1562 = -68					; size = 4
_t$1555 = -64						; size = 4
_j$1551 = -60						; size = 4
_newGroupSize$1548 = -56				; size = 4
_finishedGroup$1543 = -52				; size = 4
_groupSize$1542 = -48					; size = 4
_newLimit$1538 = -44					; size = 4
_finishedGroupSize$1537 = -40				; size = 4
_NumSortedBytes$1529 = -36				; size = 4
_NumRefBits$1528 = -32					; size = 4
_prevGroupSize$1526 = -28				; size = 4
_prev$1522 = -24					; size = 4
_groupSize$1510 = -20					; size = 4
_sum$1506 = -16						; size = 4
_Groups$ = -12						; size = 4
_i$ = -8						; size = 4
_counters$ = -4						; size = 4
_Indices$ = 8						; size = 4
_data$ = 12						; size = 4
_blockSize$ = 16					; size = 4
_BlockSort@12 PROC
; Line 353
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-68]
	mov	ecx, 17					; 00000011H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 354
	mov	eax, DWORD PTR _blockSize$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _counters$[ebp], edx
; Line 362
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN44@BlockSort
$LN43@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN44@BlockSort:
	cmp	DWORD PTR _i$[ebp], 65536		; 00010000H
	jae	SHORT $LN42@BlockSort
; Line 363
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [edx+ecx*4], 0
	jmp	SHORT $LN43@BlockSort
$LN42@BlockSort:
; Line 364
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN41@BlockSort
$LN40@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN41@BlockSort:
	mov	ecx, DWORD PTR _blockSize$[ebp]
	sub	ecx, 1
	cmp	DWORD PTR _i$[ebp], ecx
	jae	SHORT $LN39@BlockSort
; Line 365
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx+1]
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx]
	shl	edx, 8
	or	edx, eax
	mov	eax, DWORD PTR _counters$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	add	ecx, 1
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx+1]
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [edx]
	shl	edx, 8
	or	edx, eax
	mov	eax, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
	jmp	SHORT $LN40@BlockSort
$LN39@BlockSort:
; Line 366
	mov	ecx, DWORD PTR _data$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	movzx	ecx, BYTE PTR [eax]
	shl	ecx, 8
	or	ecx, edx
	mov	edx, DWORD PTR _counters$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	add	eax, 1
	mov	ecx, DWORD PTR _data$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	ecx, BYTE PTR [ecx]
	shl	ecx, 8
	or	ecx, edx
	mov	edx, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
; Line 368
	mov	eax, DWORD PTR _counters$[ebp]
	add	eax, 262144				; 00040000H
	mov	DWORD PTR _Groups$[ebp], eax
; Line 379
	mov	DWORD PTR _sum$1506[ebp], 0
; Line 380
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN38@BlockSort
$LN37@BlockSort:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$LN38@BlockSort:
	cmp	DWORD PTR _i$[ebp], 65536		; 00010000H
	jae	SHORT $LN36@BlockSort
; Line 382
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _counters$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _groupSize$1510[ebp], ecx
; Line 383
	cmp	DWORD PTR _groupSize$1510[ebp], 0
	jbe	SHORT $LN35@BlockSort
; Line 389
	mov	edx, DWORD PTR _sum$1506[ebp]
	add	edx, DWORD PTR _groupSize$1510[ebp]
	mov	DWORD PTR _sum$1506[ebp], edx
$LN35@BlockSort:
; Line 391
	mov	eax, DWORD PTR _sum$1506[ebp]
	sub	eax, DWORD PTR _groupSize$1510[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
; Line 392
	jmp	SHORT $LN37@BlockSort
$LN36@BlockSort:
; Line 394
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN34@BlockSort
$LN33@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN34@BlockSort:
	mov	ecx, DWORD PTR _blockSize$[ebp]
	sub	ecx, 1
	cmp	DWORD PTR _i$[ebp], ecx
	jae	SHORT $LN32@BlockSort
; Line 395
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx]
	shl	eax, 8
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx+1]
	or	eax, edx
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Groups$[ebp]
	mov	esi, DWORD PTR _counters$[ebp]
	mov	eax, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+ecx*4], eax
	jmp	SHORT $LN33@BlockSort
$LN32@BlockSort:
; Line 396
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx]
	shl	edx, 8
	mov	eax, DWORD PTR _data$[ebp]
	movzx	ecx, BYTE PTR [eax]
	or	edx, ecx
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Groups$[ebp]
	mov	esi, DWORD PTR _counters$[ebp]
	mov	edx, DWORD PTR [esi+edx*4]
	mov	DWORD PTR [ecx+eax*4], edx
; Line 398
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN31@BlockSort
$LN30@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN31@BlockSort:
	mov	ecx, DWORD PTR _blockSize$[ebp]
	sub	ecx, 1
	cmp	DWORD PTR _i$[ebp], ecx
	jae	SHORT $LN29@BlockSort
; Line 399
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx]
	shl	eax, 8
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx+1]
	or	eax, edx
	mov	ecx, DWORD PTR _counters$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx+1]
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx]
	shl	edx, 8
	or	edx, eax
	mov	eax, DWORD PTR _counters$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	add	ecx, 1
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx+1]
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [edx]
	shl	edx, 8
	or	edx, eax
	mov	eax, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
	jmp	SHORT $LN30@BlockSort
$LN29@BlockSort:
; Line 400
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx]
	shl	edx, 8
	mov	eax, DWORD PTR _data$[ebp]
	movzx	ecx, BYTE PTR [eax]
	or	edx, ecx
	mov	eax, DWORD PTR _counters$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
	mov	ecx, DWORD PTR _data$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	movzx	ecx, BYTE PTR [eax]
	shl	ecx, 8
	or	ecx, edx
	mov	edx, DWORD PTR _counters$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	add	eax, 1
	mov	ecx, DWORD PTR _data$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	ecx, BYTE PTR [ecx]
	shl	ecx, 8
	or	ecx, edx
	mov	edx, DWORD PTR _counters$[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
; Line 404
	mov	DWORD PTR _prev$1522[ebp], 0
; Line 405
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN28@BlockSort
$LN27@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN28@BlockSort:
	cmp	DWORD PTR _i$[ebp], 65536		; 00010000H
	jae	SHORT $LN26@BlockSort
; Line 407
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _counters$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	sub	eax, DWORD PTR _prev$1522[ebp]
	mov	DWORD PTR _prevGroupSize$1526[ebp], eax
; Line 408
	jne	SHORT $LN25@BlockSort
; Line 409
	jmp	SHORT $LN27@BlockSort
$LN25@BlockSort:
; Line 410
	mov	ecx, DWORD PTR _prevGroupSize$1526[ebp]
	push	ecx
	mov	edx, DWORD PTR _prev$1522[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	push	ecx
	call	_SetGroupSize@8
; Line 411
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _counters$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _prev$1522[ebp], ecx
; Line 412
	jmp	SHORT $LN27@BlockSort
$LN26@BlockSort:
; Line 420
	mov	DWORD PTR _NumRefBits$1528[ebp], 0
	jmp	SHORT $LN24@BlockSort
$LN23@BlockSort:
	mov	edx, DWORD PTR _NumRefBits$1528[ebp]
	add	edx, 1
	mov	DWORD PTR _NumRefBits$1528[ebp], edx
$LN24@BlockSort:
	mov	eax, DWORD PTR _blockSize$[ebp]
	sub	eax, 1
	mov	ecx, DWORD PTR _NumRefBits$1528[ebp]
	shr	eax, cl
	test	eax, eax
	je	SHORT $LN22@BlockSort
	jmp	SHORT $LN23@BlockSort
$LN22@BlockSort:
; Line 421
	mov	ecx, 32					; 00000020H
	sub	ecx, DWORD PTR _NumRefBits$1528[ebp]
	mov	DWORD PTR _NumRefBits$1528[ebp], ecx
; Line 422
	cmp	DWORD PTR _NumRefBits$1528[ebp], 12	; 0000000cH
	jle	SHORT $LN21@BlockSort
; Line 423
	mov	DWORD PTR _NumRefBits$1528[ebp], 12	; 0000000cH
$LN21@BlockSort:
; Line 425
	mov	DWORD PTR _NumSortedBytes$1529[ebp], 2
	jmp	SHORT $LN20@BlockSort
$LN19@BlockSort:
	mov	edx, DWORD PTR _NumSortedBytes$1529[ebp]
	shl	edx, 1
	mov	DWORD PTR _NumSortedBytes$1529[ebp], edx
$LN20@BlockSort:
; Line 428
	mov	DWORD PTR _finishedGroupSize$1537[ebp], 0
; Line 430
	mov	DWORD PTR _newLimit$1538[ebp], 0
; Line 431
	mov	DWORD PTR _i$[ebp], 0
$LN17@BlockSort:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _blockSize$[ebp]
	jae	$LN16@BlockSort
; Line 449
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	and	eax, 1073741823				; 3fffffffH
	shr	eax, 20					; 00000014H
	mov	DWORD PTR _groupSize$1542[ebp], eax
; Line 451
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	and	eax, -2147483648			; 80000000H
	neg	eax
	sbb	eax, eax
	add	eax, 1
	mov	DWORD PTR _finishedGroup$1543[ebp], eax
; Line 452
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	and	eax, 1073741824				; 40000000H
	je	SHORT $LN15@BlockSort
; Line 454
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4+4]
	shr	eax, 20					; 00000014H
	shl	eax, 10					; 0000000aH
	add	eax, DWORD PTR _groupSize$1542[ebp]
	mov	DWORD PTR _groupSize$1542[ebp], eax
; Line 455
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4+4]
	and	eax, 1048575				; 000fffffH
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [edx+ecx*4+4], eax
$LN15@BlockSort:
; Line 457
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	and	edx, 1048575				; 000fffffH
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
; Line 458
	mov	edx, DWORD PTR _groupSize$1542[ebp]
	add	edx, 1
	mov	DWORD PTR _groupSize$1542[ebp], edx
; Line 459
	cmp	DWORD PTR _finishedGroup$1543[ebp], 0
	jne	SHORT $LN13@BlockSort
	cmp	DWORD PTR _groupSize$1542[ebp], 1
	jne	$LN14@BlockSort
$LN13@BlockSort:
; Line 461
	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, DWORD PTR _finishedGroupSize$1537[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	and	edx, 1048575				; 000fffffH
	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, DWORD PTR _finishedGroupSize$1537[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
; Line 462
	cmp	DWORD PTR _finishedGroupSize$1537[ebp], 1
	jbe	SHORT $LN12@BlockSort
; Line 463
	mov	edx, DWORD PTR _i$[ebp]
	sub	edx, DWORD PTR _finishedGroupSize$1537[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+4]
	and	ecx, 1048575				; 000fffffH
	mov	edx, DWORD PTR _i$[ebp]
	sub	edx, DWORD PTR _finishedGroupSize$1537[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [eax+edx*4+4], ecx
$LN12@BlockSort:
; Line 465
	mov	ecx, DWORD PTR _groupSize$1542[ebp]
	add	ecx, DWORD PTR _finishedGroupSize$1537[ebp]
	mov	DWORD PTR _newGroupSize$1548[ebp], ecx
; Line 466
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	edx, 2
	sub	ecx, edx
	mov	eax, DWORD PTR _newGroupSize$1548[ebp]
	sub	eax, 1
	and	eax, 1023				; 000003ffH
	shl	eax, 20					; 00000014H
	or	eax, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	ecx, 2
	mov	edx, DWORD PTR _i$[ebp]
	mov	esi, DWORD PTR _Indices$[ebp]
	lea	edx, DWORD PTR [esi+edx*4]
	sub	edx, ecx
	mov	DWORD PTR [edx], eax
	cmp	DWORD PTR _newGroupSize$1548[ebp], 1024	; 00000400H
	jbe	SHORT $LN11@BlockSort
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	eax, 2
	sub	edx, eax
	mov	ecx, DWORD PTR [edx]
	or	ecx, 1073741824				; 40000000H
	mov	edx, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	edx, 2
	mov	eax, DWORD PTR _i$[ebp]
	mov	esi, DWORD PTR _Indices$[ebp]
	lea	eax, DWORD PTR [esi+eax*4]
	sub	eax, edx
	mov	DWORD PTR [eax], ecx
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _Indices$[ebp]
	lea	eax, DWORD PTR [edx+ecx*4]
	mov	ecx, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	ecx, 2
	sub	eax, ecx
	mov	edx, DWORD PTR _newGroupSize$1548[ebp]
	sub	edx, 1
	shr	edx, 10					; 0000000aH
	shl	edx, 20					; 00000014H
	or	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR _finishedGroupSize$1537[ebp]
	shl	eax, 2
	mov	ecx, DWORD PTR _i$[ebp]
	mov	esi, DWORD PTR _Indices$[ebp]
	lea	ecx, DWORD PTR [esi+ecx*4]
	sub	ecx, eax
	mov	DWORD PTR [ecx+4], edx
$LN11@BlockSort:
; Line 467
	mov	edx, DWORD PTR _newGroupSize$1548[ebp]
	mov	DWORD PTR _finishedGroupSize$1537[ebp], edx
; Line 469
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, DWORD PTR _groupSize$1542[ebp]
	mov	DWORD PTR _i$[ebp], eax
; Line 470
	jmp	$LN17@BlockSort
$LN14@BlockSort:
; Line 472
	mov	DWORD PTR _finishedGroupSize$1537[ebp], 0
; Line 477
	mov	ecx, DWORD PTR _NumSortedBytes$1529[ebp]
	cmp	ecx, DWORD PTR _blockSize$[ebp]
	jb	SHORT $LN10@BlockSort
; Line 480
	mov	DWORD PTR _j$1551[ebp], 0
	jmp	SHORT $LN9@BlockSort
$LN8@BlockSort:
	mov	edx, DWORD PTR _j$1551[ebp]
	add	edx, 1
	mov	DWORD PTR _j$1551[ebp], edx
$LN9@BlockSort:
	mov	eax, DWORD PTR _j$1551[ebp]
	cmp	eax, DWORD PTR _groupSize$1542[ebp]
	jae	SHORT $LN7@BlockSort
; Line 482
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, DWORD PTR _j$1551[ebp]
	mov	DWORD PTR _t$1555[ebp], ecx
; Line 484
	mov	edx, DWORD PTR _t$1555[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR _Groups$[ebp]
	mov	eax, DWORD PTR _t$1555[ebp]
	mov	DWORD PTR [edx+ecx*4], eax
; Line 485
	jmp	SHORT $LN8@BlockSort
$LN7@BlockSort:
; Line 487
	jmp	SHORT $LN6@BlockSort
$LN10@BlockSort:
; Line 492
	mov	ecx, DWORD PTR _blockSize$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _Indices$[ebp]
	push	edx
	mov	eax, DWORD PTR _NumRefBits$1528[ebp]
	push	eax
	mov	ecx, DWORD PTR _groupSize$1542[ebp]
	push	ecx
	mov	edx, DWORD PTR _i$[ebp]
	push	edx
	mov	edx, DWORD PTR _NumSortedBytes$1529[ebp]
	mov	ecx, DWORD PTR _blockSize$[ebp]
	call	@SortGroup@32
	test	eax, eax
	je	SHORT $LN6@BlockSort
; Line 493
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, DWORD PTR _groupSize$1542[ebp]
	mov	DWORD PTR _newLimit$1538[ebp], eax
$LN6@BlockSort:
; Line 494
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, DWORD PTR _groupSize$1542[ebp]
	mov	DWORD PTR _i$[ebp], ecx
; Line 495
	jmp	$LN17@BlockSort
$LN16@BlockSort:
; Line 496
	cmp	DWORD PTR _newLimit$1538[ebp], 0
	jne	SHORT $LN4@BlockSort
; Line 497
	jmp	SHORT $LN18@BlockSort
$LN4@BlockSort:
; Line 498
	jmp	$LN19@BlockSort
$LN18@BlockSort:
; Line 501
	mov	DWORD PTR _i$[ebp], 0
$LN3@BlockSort:
	mov	edx, DWORD PTR _i$[ebp]
	cmp	edx, DWORD PTR _blockSize$[ebp]
	jae	$LN2@BlockSort
; Line 503
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	and	edx, 1073741823				; 3fffffffH
	shr	edx, 20					; 00000014H
	mov	DWORD PTR _groupSize$1562[ebp], edx
; Line 504
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	and	edx, 1073741824				; 40000000H
	je	SHORT $LN1@BlockSort
; Line 506
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	shr	edx, 20					; 00000014H
	shl	edx, 10					; 0000000aH
	add	edx, DWORD PTR _groupSize$1562[ebp]
	mov	DWORD PTR _groupSize$1562[ebp], edx
; Line 507
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	and	edx, 1048575				; 000fffffH
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [ecx+eax*4+4], edx
$LN1@BlockSort:
; Line 509
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	and	ecx, 1048575				; 000fffffH
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _Indices$[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
; Line 510
	mov	ecx, DWORD PTR _groupSize$1562[ebp]
	add	ecx, 1
	mov	DWORD PTR _groupSize$1562[ebp], ecx
; Line 511
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, DWORD PTR _groupSize$1562[ebp]
	mov	DWORD PTR _i$[ebp], edx
; Line 512
	jmp	$LN3@BlockSort
$LN2@BlockSort:
; Line 514
	mov	eax, DWORD PTR _Groups$[ebp]
	mov	eax, DWORD PTR [eax]
; Line 515
	pop	edi
	pop	esi
	add	esp, 68					; 00000044H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_BlockSort@12 ENDP
_TEXT	ENDS
END