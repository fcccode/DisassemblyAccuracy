; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\CPP\7zip\Crypto\WzAes.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?CopyFrom@?$CBuffer@E@@QAEXPBEI@Z		; CBuffer<unsigned char>::CopyFrom
PUBLIC	?CryptoSetPassword@CBaseCoder@NWzAes@NCrypto@@UAGJPBEI@Z ; NCrypto::NWzAes::CBaseCoder::CryptoSetPassword
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_this$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?CryptoSetPassword@CBaseCoder@NWzAes@NCrypto@@UAGJPBEI@Z PROC ; NCrypto::NWzAes::CBaseCoder::CryptoSetPassword
; Line 30
	push	ebp
	mov	ebp, esp
; Line 31
	cmp	DWORD PTR _size$[ebp], 99		; 00000063H
	jbe	SHORT $LN1@CryptoSetP
; Line 32
	mov	eax, -2147024809			; 80070057H
	jmp	SHORT $LN2@CryptoSetP
$LN1@CryptoSetP:
; Line 33
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 32					; 00000020H
	call	?CopyFrom@?$CBuffer@E@@QAEXPBEI@Z	; CBuffer<unsigned char>::CopyFrom
; Line 34
	xor	eax, eax
$LN2@CryptoSetP:
; Line 35
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	12					; 0000000cH
?CryptoSetPassword@CBaseCoder@NWzAes@NCrypto@@UAGJPBEI@Z ENDP ; NCrypto::NWzAes::CBaseCoder::CryptoSetPassword
_TEXT	ENDS
PUBLIC	?AesCtr2_Init@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@@Z ; NCrypto::NWzAes::AesCtr2_Init
PUBLIC	??B?$CBuffer@E@@QAEPAEXZ			; CBuffer<unsigned char>::operator unsigned char *
PUBLIC	?Size@?$CBuffer@E@@QBEIXZ			; CBuffer<unsigned char>::Size
PUBLIC	?GetNumSaltWords@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ; NCrypto::NWzAes::CKeyInfo::GetNumSaltWords
PUBLIC	?GetKeySize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ	; NCrypto::NWzAes::CKeyInfo::GetKeySize
PUBLIC	__$ArrayPad$
PUBLIC	?Init2@CBaseCoder@NWzAes@NCrypto@@IAEXXZ	; NCrypto::NWzAes::CBaseCoder::Init2
EXTRN	@Aes_SetKey_Enc@12:PROC
EXTRN	_memcpy:PROC
EXTRN	?SetKey@CHmac@NSha1@NCrypto@@QAEXPBEI@Z:PROC	; NCrypto::NSha1::CHmac::SetKey
EXTRN	?Pbkdf2Hmac32@NSha1@NCrypto@@YGXPBEIPBIIIPAII@Z:PROC ; NCrypto::NSha1::Pbkdf2Hmac32
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_j$67032 = -216						; size = 4
_src$67029 = -212					; size = 4
_i$67025 = -208						; size = 4
_numSaltWords$67024 = -204				; size = 4
_salt$67023 = -196					; size = 16
_dkSize32$67022 = -176					; size = 4
_dk32$67021 = -168					; size = 68
_dkSize$ = -96						; size = 4
_keySize$ = -92						; size = 4
_dk$ = -84						; size = 68
_dkSizeMax32$ = -12					; size = 4
_this$ = -8						; size = 4
__$ArrayPad$ = -4					; size = 4
?Init2@CBaseCoder@NWzAes@NCrypto@@IAEXXZ PROC		; NCrypto::NWzAes::CBaseCoder::Init2
; _this$ = ecx
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 39
	mov	DWORD PTR _dkSizeMax32$[ebp], 17	; 00000011H
; Line 42
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GetKeySize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ; NCrypto::NWzAes::CKeyInfo::GetKeySize
	mov	DWORD PTR _keySize$[ebp], eax
; Line 43
	mov	eax, DWORD PTR _keySize$[ebp]
	lea	ecx, DWORD PTR [eax+eax+2]
	mov	DWORD PTR _dkSize$[ebp], ecx
; Line 58
	mov	edx, DWORD PTR _dkSize$[ebp]
	add	edx, 3
	shr	edx, 2
	mov	DWORD PTR _dkSize32$67022[ebp], edx
; Line 60
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GetNumSaltWords@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ; NCrypto::NWzAes::CKeyInfo::GetNumSaltWords
	mov	DWORD PTR _numSaltWords$67024[ebp], eax
; Line 62
	mov	DWORD PTR _i$67025[ebp], 0
	jmp	SHORT $LN6@Init2
$LN5@Init2:
	mov	eax, DWORD PTR _i$67025[ebp]
	add	eax, 1
	mov	DWORD PTR _i$67025[ebp], eax
$LN6@Init2:
	mov	ecx, DWORD PTR _i$67025[ebp]
	cmp	ecx, DWORD PTR _numSaltWords$67024[ebp]
	jae	SHORT $LN4@Init2
; Line 64
	mov	edx, DWORD PTR _i$67025[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4+16]
	mov	DWORD PTR _src$67029[ebp], ecx
; Line 65
	mov	edx, DWORD PTR _src$67029[ebp]
	mov	eax, DWORD PTR [edx]
	bswap	eax
	mov	ecx, DWORD PTR _i$67025[ebp]
	mov	DWORD PTR _salt$67023[ebp+ecx*4], eax
; Line 66
	jmp	SHORT $LN5@Init2
$LN4@Init2:
; Line 72
	mov	edx, DWORD PTR _dkSize32$67022[ebp]
	push	edx
	lea	eax, DWORD PTR _dk32$67021[ebp]
	push	eax
	push	1000					; 000003e8H
	mov	ecx, DWORD PTR _numSaltWords$67024[ebp]
	push	ecx
	lea	edx, DWORD PTR _salt$67023[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 36					; 00000024H
	call	?Size@?$CBuffer@E@@QBEIXZ		; CBuffer<unsigned char>::Size
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 36					; 00000024H
	call	??B?$CBuffer@E@@QAEPAEXZ		; CBuffer<unsigned char>::operator unsigned char *
	push	eax
	call	?Pbkdf2Hmac32@NSha1@NCrypto@@YGXPBEIPBIIIPAII@Z ; NCrypto::NSha1::Pbkdf2Hmac32
; Line 78
	mov	DWORD PTR _j$67032[ebp], 0
	jmp	SHORT $LN3@Init2
$LN2@Init2:
	mov	eax, DWORD PTR _j$67032[ebp]
	add	eax, 1
	mov	DWORD PTR _j$67032[ebp], eax
$LN3@Init2:
	mov	ecx, DWORD PTR _j$67032[ebp]
	cmp	ecx, DWORD PTR _dkSize32$67022[ebp]
	jae	SHORT $LN1@Init2
; Line 79
	mov	edx, DWORD PTR _j$67032[ebp]
	mov	eax, DWORD PTR _dk32$67021[ebp+edx*4]
	bswap	eax
	mov	ecx, DWORD PTR _j$67032[ebp]
	mov	DWORD PTR _dk$[ebp+ecx*4], eax
	jmp	SHORT $LN2@Init2
$LN1@Init2:
; Line 84
	mov	edx, DWORD PTR _keySize$[ebp]
	push	edx
	mov	eax, DWORD PTR _keySize$[ebp]
	lea	ecx, DWORD PTR _dk$[ebp+eax]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 48					; 00000030H
	call	?SetKey@CHmac@NSha1@NCrypto@@QAEXPBEI@Z	; NCrypto::NSha1::CHmac::SetKey
; Line 85
	push	2
	mov	edx, DWORD PTR _keySize$[ebp]
	lea	eax, DWORD PTR _dk$[ebp+edx*2]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 32					; 00000020H
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 87
	mov	edx, DWORD PTR _keySize$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+244]
	mov	edx, DWORD PTR _this$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4+280]
	lea	edx, DWORD PTR _dk$[ebp]
	call	@Aes_SetKey_Enc@12
; Line 88
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 240				; 000000f0H
	push	eax
	call	?AesCtr2_Init@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@@Z ; NCrypto::NWzAes::AesCtr2_Init
; Line 89
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN13@Init2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN13@Init2:
	DD	3
	DD	$LN12@Init2
$LN12@Init2:
	DD	-84					; ffffffacH
	DD	68					; 00000044H
	DD	$LN9@Init2
	DD	-168					; ffffff58H
	DD	68					; 00000044H
	DD	$LN10@Init2
	DD	-196					; ffffff3cH
	DD	16					; 00000010H
	DD	$LN11@Init2
$LN11@Init2:
	DB	115					; 00000073H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	116					; 00000074H
	DB	0
$LN10@Init2:
	DB	100					; 00000064H
	DB	107					; 0000006bH
	DB	51					; 00000033H
	DB	50					; 00000032H
	DB	0
$LN9@Init2:
	DB	100					; 00000064H
	DB	107					; 0000006bH
	DB	0
?Init2@CBaseCoder@NWzAes@NCrypto@@IAEXXZ ENDP		; NCrypto::NWzAes::CBaseCoder::Init2
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?GetKeySize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetKeySize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ PROC	; NCrypto::NWzAes::CKeyInfo::GetKeySize, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.h
; Line 62
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	lea	eax, DWORD PTR [ecx*8+8]
	mov	esp, ebp
	pop	ebp
	ret	0
?GetKeySize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ENDP	; NCrypto::NWzAes::CKeyInfo::GetKeySize
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?GetNumSaltWords@CKeyInfo@NWzAes@NCrypto@@QBEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetNumSaltWords@CKeyInfo@NWzAes@NCrypto@@QBEIXZ PROC	; NCrypto::NWzAes::CKeyInfo::GetNumSaltWords, COMDAT
; _this$ = ecx
; Line 64
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	add	eax, 1
	mov	esp, ebp
	pop	ebp
	ret	0
?GetNumSaltWords@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ENDP	; NCrypto::NWzAes::CKeyInfo::GetNumSaltWords
_TEXT	ENDS
PUBLIC	?Init@CBaseCoder@NWzAes@NCrypto@@UAGJXZ		; NCrypto::NWzAes::CBaseCoder::Init
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = 8						; size = 4
?Init@CBaseCoder@NWzAes@NCrypto@@UAGJXZ PROC		; NCrypto::NWzAes::CBaseCoder::Init
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.cpp
; Line 92
	push	ebp
	mov	ebp, esp
; Line 93
	xor	eax, eax
; Line 94
	pop	ebp
	ret	4
?Init@CBaseCoder@NWzAes@NCrypto@@UAGJXZ ENDP		; NCrypto::NWzAes::CBaseCoder::Init
_TEXT	ENDS
PUBLIC	?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ	; NCrypto::NWzAes::CKeyInfo::GetSaltSize
PUBLIC	?WriteHeader@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z ; NCrypto::NWzAes::CEncoder::WriteHeader
EXTRN	?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z:PROC ; WriteStream
EXTRN	?Generate@CRandomGenerator@@QAEXPAEI@Z:PROC	; CRandomGenerator::Generate
EXTRN	?g_RandomGenerator@@3VCRandomGenerator@@A:BYTE	; g_RandomGenerator
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
___result__$67047 = -12					; size = 4
_saltSize$ = -8						; size = 4
_this$ = -4						; size = 4
_outStream$ = 8						; size = 4
?WriteHeader@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z PROC ; NCrypto::NWzAes::CEncoder::WriteHeader
; _this$ = ecx
; Line 97
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR [ebp-12], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 98
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ; NCrypto::NWzAes::CKeyInfo::GetSaltSize
	mov	DWORD PTR _saltSize$[ebp], eax
; Line 99
	mov	eax, DWORD PTR _saltSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 16					; 00000010H
	push	ecx
	mov	ecx, OFFSET ?g_RandomGenerator@@3VCRandomGenerator@@A ; g_RandomGenerator
	call	?Generate@CRandomGenerator@@QAEXPAEI@Z	; CRandomGenerator::Generate
; Line 100
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Init2@CBaseCoder@NWzAes@NCrypto@@IAEXXZ ; NCrypto::NWzAes::CBaseCoder::Init2
; Line 101
	mov	edx, DWORD PTR _saltSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 16					; 00000010H
	push	eax
	mov	ecx, DWORD PTR _outStream$[ebp]
	push	ecx
	call	?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z ; WriteStream
	mov	DWORD PTR ___result__$67047[ebp], eax
	cmp	DWORD PTR ___result__$67047[ebp], 0
	je	SHORT $LN1@WriteHeade
	mov	eax, DWORD PTR ___result__$67047[ebp]
	jmp	SHORT $LN2@WriteHeade
$LN1@WriteHeade:
; Line 102
	push	2
	mov	edx, DWORD PTR _this$[ebp]
	add	edx, 32					; 00000020H
	push	edx
	mov	eax, DWORD PTR _outStream$[ebp]
	push	eax
	call	?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z ; WriteStream
$LN2@WriteHeade:
; Line 103
	add	esp, 12					; 0000000cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?WriteHeader@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z ENDP ; NCrypto::NWzAes::CEncoder::WriteHeader
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ PROC	; NCrypto::NWzAes::CKeyInfo::GetSaltSize, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.h
; Line 63
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	lea	eax, DWORD PTR [ecx*4+4]
	mov	esp, ebp
	pop	ebp
	ret	0
?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ENDP	; NCrypto::NWzAes::CKeyInfo::GetSaltSize
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	?WriteFooter@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z ; NCrypto::NWzAes::CEncoder::WriteFooter
EXTRN	?Final@CHmac@NSha1@NCrypto@@QAEXPAEI@Z:PROC	; NCrypto::NSha1::CHmac::Final
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_mac$ = -24						; size = 10
_this$ = -8						; size = 4
__$ArrayPad$ = -4					; size = 4
_outStream$ = 8						; size = 4
?WriteFooter@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z PROC ; NCrypto::NWzAes::CEncoder::WriteFooter
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.cpp
; Line 106
	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 108
	push	10					; 0000000aH
	lea	eax, DWORD PTR _mac$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 48					; 00000030H
	call	?Final@CHmac@NSha1@NCrypto@@QAEXPAEI@Z	; NCrypto::NSha1::CHmac::Final
; Line 109
	push	10					; 0000000aH
	lea	ecx, DWORD PTR _mac$[ebp]
	push	ecx
	mov	edx, DWORD PTR _outStream$[ebp]
	push	edx
	call	?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z ; WriteStream
; Line 110
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@WriteFoote
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 28					; 0000001cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
$LN5@WriteFoote:
	DD	1
	DD	$LN4@WriteFoote
$LN4@WriteFoote:
	DD	-24					; ffffffe8H
	DD	10					; 0000000aH
	DD	$LN3@WriteFoote
$LN3@WriteFoote:
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	99					; 00000063H
	DB	0
?WriteFooter@CEncoder@NWzAes@NCrypto@@QAEJPAUISequentialOutStream@@@Z ENDP ; NCrypto::NWzAes::CEncoder::WriteFooter
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	?ReadHeader@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@@Z ; NCrypto::NWzAes::CDecoder::ReadHeader
EXTRN	?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z:PROC ; ReadStream_FAIL
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_i$ = -52						; size = 4
___result__$67061 = -48					; size = 4
_temp$ = -40						; size = 18
_extraSize$ = -16					; size = 4
_saltSize$ = -12					; size = 4
_this$ = -8						; size = 4
__$ArrayPad$ = -4					; size = 4
_inStream$ = 8						; size = 4
?ReadHeader@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@@Z PROC ; NCrypto::NWzAes::CDecoder::ReadHeader
; _this$ = ecx
; Line 123
	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-52]
	mov	ecx, 13					; 0000000dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 124
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GetSaltSize@CKeyInfo@NWzAes@NCrypto@@QBEIXZ ; NCrypto::NWzAes::CKeyInfo::GetSaltSize
	mov	DWORD PTR _saltSize$[ebp], eax
; Line 125
	mov	eax, DWORD PTR _saltSize$[ebp]
	add	eax, 2
	mov	DWORD PTR _extraSize$[ebp], eax
; Line 127
	mov	ecx, DWORD PTR _extraSize$[ebp]
	push	ecx
	lea	edx, DWORD PTR _temp$[ebp]
	push	edx
	mov	eax, DWORD PTR _inStream$[ebp]
	push	eax
	call	?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z ; ReadStream_FAIL
	mov	DWORD PTR ___result__$67061[ebp], eax
	cmp	DWORD PTR ___result__$67061[ebp], 0
	je	SHORT $LN7@ReadHeader
	mov	eax, DWORD PTR ___result__$67061[ebp]
	jmp	SHORT $LN8@ReadHeader
$LN7@ReadHeader:
; Line 129
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN6@ReadHeader
$LN5@ReadHeader:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$LN6@ReadHeader:
	mov	edx, DWORD PTR _i$[ebp]
	cmp	edx, DWORD PTR _saltSize$[ebp]
	jae	SHORT $LN4@ReadHeader
; Line 130
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	mov	dl, BYTE PTR _temp$[ebp+ecx]
	mov	BYTE PTR [eax+16], dl
	jmp	SHORT $LN5@ReadHeader
$LN4@ReadHeader:
; Line 131
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@ReadHeader
$LN2@ReadHeader:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@ReadHeader:
	cmp	DWORD PTR _i$[ebp], 2
	jae	SHORT $LN1@ReadHeader
; Line 132
	mov	ecx, DWORD PTR _saltSize$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR _temp$[ebp+ecx]
	mov	BYTE PTR [edx+552], al
	jmp	SHORT $LN2@ReadHeader
$LN1@ReadHeader:
; Line 133
	xor	eax, eax
$LN8@ReadHeader:
; Line 134
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN12@ReadHeader
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 52					; 00000034H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
	npad	3
$LN12@ReadHeader:
	DD	1
	DD	$LN11@ReadHeader
$LN11@ReadHeader:
	DD	-40					; ffffffd8H
	DD	18					; 00000012H
	DD	$LN10@ReadHeader
$LN10@ReadHeader:
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
?ReadHeader@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@@Z ENDP ; NCrypto::NWzAes::CDecoder::ReadHeader
_TEXT	ENDS
PUBLIC	?Init_and_CheckPassword@CDecoder@NWzAes@NCrypto@@QAE_NXZ ; NCrypto::NWzAes::CDecoder::Init_and_CheckPassword
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Init_and_CheckPassword@CDecoder@NWzAes@NCrypto@@QAE_NXZ PROC ; NCrypto::NWzAes::CDecoder::Init_and_CheckPassword
; _this$ = ecx
; Line 145
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 146
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Init2@CBaseCoder@NWzAes@NCrypto@@IAEXXZ ; NCrypto::NWzAes::CBaseCoder::Init2
; Line 147
	push	2
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 552				; 00000228H
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 32					; 00000020H
	push	ecx
	call	?CompareArrays@NWzAes@NCrypto@@YG_NPBE0I@Z ; NCrypto::NWzAes::CompareArrays
; Line 148
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Init_and_CheckPassword@CDecoder@NWzAes@NCrypto@@QAE_NXZ ENDP ; NCrypto::NWzAes::CDecoder::Init_and_CheckPassword
; Function compile flags: /Odtp /RTCsu
_i$67076 = -4						; size = 4
_p1$ = 8						; size = 4
_p2$ = 12						; size = 4
_size$ = 16						; size = 4
?CompareArrays@NWzAes@NCrypto@@YG_NPBE0I@Z PROC		; NCrypto::NWzAes::CompareArrays
; Line 137
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 138
	mov	DWORD PTR _i$67076[ebp], 0
	jmp	SHORT $LN4@CompareArr
$LN3@CompareArr:
	mov	eax, DWORD PTR _i$67076[ebp]
	add	eax, 1
	mov	DWORD PTR _i$67076[ebp], eax
$LN4@CompareArr:
	mov	ecx, DWORD PTR _i$67076[ebp]
	cmp	ecx, DWORD PTR _size$[ebp]
	jae	SHORT $LN2@CompareArr
; Line 139
	mov	edx, DWORD PTR _p1$[ebp]
	add	edx, DWORD PTR _i$67076[ebp]
	movzx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _p2$[ebp]
	add	ecx, DWORD PTR _i$67076[ebp]
	movzx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	je	SHORT $LN1@CompareArr
; Line 140
	xor	al, al
	jmp	SHORT $LN5@CompareArr
$LN1@CompareArr:
; Line 141
	jmp	SHORT $LN3@CompareArr
$LN2@CompareArr:
	mov	al, 1
$LN5@CompareArr:
; Line 142
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?CompareArrays@NWzAes@NCrypto@@YG_NPBE0I@Z ENDP		; NCrypto::NWzAes::CompareArrays
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	?CheckMac@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@AA_N@Z ; NCrypto::NWzAes::CDecoder::CheckMac
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_mac2$ = -48						; size = 10
___result__$67090 = -32					; size = 4
_mac1$ = -24						; size = 10
_this$ = -8						; size = 4
__$ArrayPad$ = -4					; size = 4
_inStream$ = 8						; size = 4
_isOK$ = 12						; size = 4
?CheckMac@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@AA_N@Z PROC ; NCrypto::NWzAes::CDecoder::CheckMac
; _this$ = ecx
; Line 151
	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-52]
	mov	ecx, 13					; 0000000dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	DWORD PTR _this$[ebp], ecx
; Line 152
	mov	eax, DWORD PTR _isOK$[ebp]
	mov	BYTE PTR [eax], 0
; Line 154
	push	10					; 0000000aH
	lea	ecx, DWORD PTR _mac1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _inStream$[ebp]
	push	edx
	call	?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z ; ReadStream_FAIL
	mov	DWORD PTR ___result__$67090[ebp], eax
	cmp	DWORD PTR ___result__$67090[ebp], 0
	je	SHORT $LN1@CheckMac
	mov	eax, DWORD PTR ___result__$67090[ebp]
	jmp	SHORT $LN2@CheckMac
$LN1@CheckMac:
; Line 156
	push	10					; 0000000aH
	lea	eax, DWORD PTR _mac2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 48					; 00000030H
	call	?Final@CHmac@NSha1@NCrypto@@QAEXPAEI@Z	; NCrypto::NSha1::CHmac::Final
; Line 157
	push	10					; 0000000aH
	lea	ecx, DWORD PTR _mac2$[ebp]
	push	ecx
	lea	edx, DWORD PTR _mac1$[ebp]
	push	edx
	call	?CompareArrays@NWzAes@NCrypto@@YG_NPBE0I@Z ; NCrypto::NWzAes::CompareArrays
	mov	ecx, DWORD PTR _isOK$[ebp]
	mov	BYTE PTR [ecx], al
; Line 158
	xor	eax, eax
$LN2@CheckMac:
; Line 159
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@CheckMac
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 52					; 00000034H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
	npad	1
$LN7@CheckMac:
	DD	2
	DD	$LN6@CheckMac
$LN6@CheckMac:
	DD	-24					; ffffffe8H
	DD	10					; 0000000aH
	DD	$LN4@CheckMac
	DD	-48					; ffffffd0H
	DD	10					; 0000000aH
	DD	$LN5@CheckMac
$LN5@CheckMac:
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	99					; 00000063H
	DB	50					; 00000032H
	DB	0
$LN4@CheckMac:
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	99					; 00000063H
	DB	49					; 00000031H
	DB	0
?CheckMac@CDecoder@NWzAes@NCrypto@@QAEJPAUISequentialInStream@@AA_N@Z ENDP ; NCrypto::NWzAes::CDecoder::CheckMac
_TEXT	ENDS
PUBLIC	??0CAesCtr2@NWzAes@NCrypto@@QAE@XZ		; NCrypto::NWzAes::CAesCtr2::CAesCtr2
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = -4						; size = 4
??0CAesCtr2@NWzAes@NCrypto@@QAE@XZ PROC			; NCrypto::NWzAes::CAesCtr2::CAesCtr2
; _this$ = ecx
; Line 162
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 163
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 8
	xor	ecx, ecx
	sub	ecx, eax
	and	ecx, 15					; 0000000fH
	shr	ecx, 2
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], ecx
; Line 164
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CAesCtr2@NWzAes@NCrypto@@QAE@XZ ENDP			; NCrypto::NWzAes::CAesCtr2::CAesCtr2
; Function compile flags: /Odtp /RTCsu
_i$ = -8						; size = 4
_ctr$ = -4						; size = 4
_p$ = 8							; size = 4
?AesCtr2_Init@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@@Z PROC	; NCrypto::NWzAes::AesCtr2_Init
; Line 167
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 168
	mov	eax, DWORD PTR _p$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _p$[ebp]
	lea	eax, DWORD PTR [edx+ecx*4+24]
	mov	DWORD PTR _ctr$[ebp], eax
; Line 170
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@AesCtr2_In
$LN2@AesCtr2_In:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$LN3@AesCtr2_In:
	cmp	DWORD PTR _i$[ebp], 4
	jae	SHORT $LN1@AesCtr2_In
; Line 171
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _ctr$[ebp]
	mov	DWORD PTR [eax+edx*4], 0
	jmp	SHORT $LN2@AesCtr2_In
$LN1@AesCtr2_In:
; Line 172
	mov	ecx, DWORD PTR _p$[ebp]
	mov	DWORD PTR [ecx], 16			; 00000010H
; Line 173
	mov	esp, ebp
	pop	ebp
	ret	4
?AesCtr2_Init@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@@Z ENDP	; NCrypto::NWzAes::AesCtr2_Init
_TEXT	ENDS
PUBLIC	?AesCtr2_Code@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@PAEI@Z ; NCrypto::NWzAes::AesCtr2_Code
EXTRN	_g_AesCtr_Code:DWORD
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_buf$67127 = -24					; size = 4
_j$67126 = -20						; size = 4
_size2$67124 = -16					; size = 4
_buf$67117 = -12					; size = 4
_buf32$ = -8						; size = 4
_pos$ = -4						; size = 4
_p$ = 8							; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?AesCtr2_Code@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@PAEI@Z PROC ; NCrypto::NWzAes::AesCtr2_Code
; Line 178
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 179
	mov	eax, DWORD PTR _p$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _pos$[ebp], ecx
; Line 180
	mov	edx, DWORD PTR _p$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	ecx, DWORD PTR _p$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4+8]
	mov	DWORD PTR _buf32$[ebp], edx
; Line 181
	cmp	DWORD PTR _size$[ebp], 0
	jne	SHORT $LN14@AesCtr2_Co
; Line 182
	jmp	$LN15@AesCtr2_Co
$LN14@AesCtr2_Co:
; Line 184
	cmp	DWORD PTR _pos$[ebp], 16		; 00000010H
	je	SHORT $LN13@AesCtr2_Co
; Line 186
	mov	eax, DWORD PTR _buf32$[ebp]
	mov	DWORD PTR _buf$67117[ebp], eax
$LN12@AesCtr2_Co:
; Line 188
	mov	ecx, DWORD PTR _buf$67117[ebp]
	add	ecx, DWORD PTR _pos$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _data$[ebp]
	movzx	ecx, BYTE PTR [eax]
	xor	ecx, edx
	mov	edx, DWORD PTR _data$[ebp]
	mov	BYTE PTR [edx], cl
	mov	eax, DWORD PTR _pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _pos$[ebp], eax
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, 1
	mov	DWORD PTR _data$[ebp], ecx
; Line 189
	mov	edx, DWORD PTR _size$[ebp]
	sub	edx, 1
	mov	DWORD PTR _size$[ebp], edx
	je	SHORT $LN13@AesCtr2_Co
	cmp	DWORD PTR _pos$[ebp], 16		; 00000010H
	jne	SHORT $LN12@AesCtr2_Co
$LN13@AesCtr2_Co:
; Line 192
	cmp	DWORD PTR _size$[ebp], 16		; 00000010H
	jb	SHORT $LN8@AesCtr2_Co
; Line 194
	mov	eax, DWORD PTR _size$[ebp]
	shr	eax, 4
	mov	DWORD PTR _size2$67124[ebp], eax
; Line 195
	mov	esi, esp
	mov	ecx, DWORD PTR _size2$67124[ebp]
	push	ecx
	mov	ecx, DWORD PTR _buf32$[ebp]
	add	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _data$[ebp]
	call	DWORD PTR _g_AesCtr_Code
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 196
	mov	edx, DWORD PTR _size2$67124[ebp]
	shl	edx, 4
	mov	DWORD PTR _size2$67124[ebp], edx
; Line 197
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _size2$67124[ebp]
	mov	DWORD PTR _data$[ebp], eax
; Line 198
	mov	ecx, DWORD PTR _size$[ebp]
	sub	ecx, DWORD PTR _size2$67124[ebp]
	mov	DWORD PTR _size$[ebp], ecx
; Line 199
	mov	DWORD PTR _pos$[ebp], 16		; 00000010H
$LN8@AesCtr2_Co:
; Line 202
	cmp	DWORD PTR _size$[ebp], 0
	je	$LN7@AesCtr2_Co
; Line 206
	mov	DWORD PTR _j$67126[ebp], 0
	jmp	SHORT $LN6@AesCtr2_Co
$LN5@AesCtr2_Co:
	mov	edx, DWORD PTR _j$67126[ebp]
	add	edx, 1
	mov	DWORD PTR _j$67126[ebp], edx
$LN6@AesCtr2_Co:
	cmp	DWORD PTR _j$67126[ebp], 4
	jae	SHORT $LN4@AesCtr2_Co
; Line 207
	mov	eax, DWORD PTR _j$67126[ebp]
	mov	ecx, DWORD PTR _buf32$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0
	jmp	SHORT $LN5@AesCtr2_Co
$LN4@AesCtr2_Co:
; Line 208
	mov	esi, esp
	push	1
	mov	ecx, DWORD PTR _buf32$[ebp]
	add	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _buf32$[ebp]
	call	DWORD PTR _g_AesCtr_Code
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 209
	mov	edx, DWORD PTR _buf32$[ebp]
	mov	DWORD PTR _buf$67127[ebp], edx
; Line 210
	mov	DWORD PTR _pos$[ebp], 0
$LN3@AesCtr2_Co:
; Line 212
	mov	eax, DWORD PTR _buf$67127[ebp]
	add	eax, DWORD PTR _pos$[ebp]
	movzx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _data$[ebp]
	movzx	eax, BYTE PTR [edx]
	xor	eax, ecx
	mov	ecx, DWORD PTR _data$[ebp]
	mov	BYTE PTR [ecx], al
	mov	edx, DWORD PTR _pos$[ebp]
	add	edx, 1
	mov	DWORD PTR _pos$[ebp], edx
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, 1
	mov	DWORD PTR _data$[ebp], eax
; Line 213
	mov	ecx, DWORD PTR _size$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _size$[ebp], ecx
	jne	SHORT $LN3@AesCtr2_Co
$LN7@AesCtr2_Co:
; Line 216
	mov	edx, DWORD PTR _p$[ebp]
	mov	eax, DWORD PTR _pos$[ebp]
	mov	DWORD PTR [edx], eax
$LN15@AesCtr2_Co:
; Line 217
	pop	esi
	add	esp, 24					; 00000018H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?AesCtr2_Code@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@PAEI@Z ENDP ; NCrypto::NWzAes::AesCtr2_Code
_TEXT	ENDS
PUBLIC	?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z		; NCrypto::NSha1::CHmac::Update
PUBLIC	?Filter@CEncoder@NWzAes@NCrypto@@UAGIPAEI@Z	; NCrypto::NWzAes::CEncoder::Filter
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?Filter@CEncoder@NWzAes@NCrypto@@UAGIPAEI@Z PROC	; NCrypto::NWzAes::CEncoder::Filter
; Line 222
	push	ebp
	mov	ebp, esp
; Line 223
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	add	edx, 240				; 000000f0H
	push	edx
	call	?AesCtr2_Code@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@PAEI@Z ; NCrypto::NWzAes::AesCtr2_Code
; Line 224
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 48					; 00000030H
	call	?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z	; NCrypto::NSha1::CHmac::Update
; Line 225
	mov	eax, DWORD PTR _size$[ebp]
; Line 226
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	12					; 0000000cH
?Filter@CEncoder@NWzAes@NCrypto@@UAGIPAEI@Z ENDP	; NCrypto::NWzAes::CEncoder::Filter
_TEXT	ENDS
PUBLIC	?Update@CContext@NSha1@NCrypto@@QAEXPBEI@Z	; NCrypto::NSha1::CContext::Update
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_data$ = 8						; size = 4
_dataSize$ = 12						; size = 4
?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z PROC		; NCrypto::NSha1::CHmac::Update, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\crypto\hmacsha1.h
; Line 20
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _dataSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Update@CContext@NSha1@NCrypto@@QAEXPBEI@Z ; NCrypto::NSha1::CContext::Update
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z ENDP		; NCrypto::NSha1::CHmac::Update
_TEXT	ENDS
EXTRN	_Sha1_Update@12:PROC
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Update@CContext@NSha1@NCrypto@@QAEXPBEI@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_data$ = 8						; size = 4
_size$ = 12						; size = 4
?Update@CContext@NSha1@NCrypto@@QAEXPBEI@Z PROC		; NCrypto::NSha1::CContext::Update, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\7zip\crypto\sha1cls.h
; Line 30
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	_Sha1_Update@12
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?Update@CContext@NSha1@NCrypto@@QAEXPBEI@Z ENDP		; NCrypto::NSha1::CContext::Update
_TEXT	ENDS
PUBLIC	?Filter@CDecoder@NWzAes@NCrypto@@UAGIPAEI@Z	; NCrypto::NWzAes::CDecoder::Filter
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_this$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?Filter@CDecoder@NWzAes@NCrypto@@UAGIPAEI@Z PROC	; NCrypto::NWzAes::CDecoder::Filter
; File c:\workspace\7z1505-src\cpp\7zip\crypto\wzaes.cpp
; Line 229
	push	ebp
	mov	ebp, esp
; Line 230
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 48					; 00000030H
	call	?Update@CHmac@NSha1@NCrypto@@QAEXPBEI@Z	; NCrypto::NSha1::CHmac::Update
; Line 231
	mov	edx, DWORD PTR _size$[ebp]
	push	edx
	mov	eax, DWORD PTR _data$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 240				; 000000f0H
	push	ecx
	call	?AesCtr2_Code@NWzAes@NCrypto@@YGXPAUCAesCtr2@12@PAEI@Z ; NCrypto::NWzAes::AesCtr2_Code
; Line 232
	mov	eax, DWORD PTR _size$[ebp]
; Line 233
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	12					; 0000000cH
?Filter@CDecoder@NWzAes@NCrypto@@UAGIPAEI@Z ENDP	; NCrypto::NWzAes::CDecoder::Filter
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ??B?$CBuffer@E@@QAEPAEXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
??B?$CBuffer@E@@QAEPAEXZ PROC				; CBuffer<unsigned char>::operator unsigned char *, COMDAT
; _this$ = ecx
; File c:\workspace\7z1505-src\cpp\common\mybuffer.h
; Line 39
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	mov	esp, ebp
	pop	ebp
	ret	0
??B?$CBuffer@E@@QAEPAEXZ ENDP				; CBuffer<unsigned char>::operator unsigned char *
; Function compile flags: /Odtp /RTCsu
_TEXT	ENDS
;	COMDAT ?Size@?$CBuffer@E@@QBEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Size@?$CBuffer@E@@QBEIXZ PROC				; CBuffer<unsigned char>::Size, COMDAT
; _this$ = ecx
; Line 41
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]
	mov	esp, ebp
	pop	ebp
	ret	0
?Size@?$CBuffer@E@@QBEIXZ ENDP				; CBuffer<unsigned char>::Size
_TEXT	ENDS
PUBLIC	?Alloc@?$CBuffer@E@@QAEXI@Z			; CBuffer<unsigned char>::Alloc
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?CopyFrom@?$CBuffer@E@@QAEXPBEI@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_data$ = 8						; size = 4
_size$ = 12						; size = 4
?CopyFrom@?$CBuffer@E@@QAEXPBEI@Z PROC			; CBuffer<unsigned char>::CopyFrom, COMDAT
; _this$ = ecx
; Line 67
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 68
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Alloc@?$CBuffer@E@@QAEXI@Z		; CBuffer<unsigned char>::Alloc
; Line 69
	cmp	DWORD PTR _size$[ebp], 0
	je	SHORT $LN2@CopyFrom
; Line 70
	mov	ecx, DWORD PTR _size$[ebp]
	push	ecx
	mov	edx, DWORD PTR _data$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH
$LN2@CopyFrom:
; Line 71
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?CopyFrom@?$CBuffer@E@@QAEXPBEI@Z ENDP			; CBuffer<unsigned char>::CopyFrom
_TEXT	ENDS
PUBLIC	?Free@?$CBuffer@E@@QAEXXZ			; CBuffer<unsigned char>::Free
EXTRN	??2@YAPAXI@Z:PROC				; operator new
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Alloc@?$CBuffer@E@@QAEXI@Z
_TEXT	SEGMENT
$T67258 = -8						; size = 4
_this$ = -4						; size = 4
_size$ = 8						; size = 4
?Alloc@?$CBuffer@E@@QAEXI@Z PROC			; CBuffer<unsigned char>::Alloc, COMDAT
; _this$ = ecx
; Line 44
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 45
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _size$[ebp]
	cmp	ecx, DWORD PTR [eax+4]
	je	SHORT $LN3@Alloc
; Line 47
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Free@?$CBuffer@E@@QAEXXZ		; CBuffer<unsigned char>::Free
; Line 48
	cmp	DWORD PTR _size$[ebp], 0
	je	SHORT $LN3@Alloc
; Line 50
	mov	edx, DWORD PTR _size$[ebp]
	push	edx
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T67258[ebp], eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T67258[ebp]
	mov	DWORD PTR [eax], ecx
; Line 51
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _size$[ebp]
	mov	DWORD PTR [edx+4], eax
$LN3@Alloc:
; Line 54
	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?Alloc@?$CBuffer@E@@QAEXI@Z ENDP			; CBuffer<unsigned char>::Alloc
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
; Function compile flags: /Odtp /RTCsu
;	COMDAT ?Free@?$CBuffer@E@@QAEXXZ
_TEXT	SEGMENT
$T67261 = -8						; size = 4
_this$ = -4						; size = 4
?Free@?$CBuffer@E@@QAEXXZ PROC				; CBuffer<unsigned char>::Free, COMDAT
; _this$ = ecx
; Line 15
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
; Line 16
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $LN1@Free
; Line 18
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T67261[ebp], edx
	mov	eax, DWORD PTR $T67261[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
; Line 19
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], 0
$LN1@Free:
; Line 21
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], 0
; Line 22
	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Free@?$CBuffer@E@@QAEXXZ ENDP				; CBuffer<unsigned char>::Free
_TEXT	ENDS
END
