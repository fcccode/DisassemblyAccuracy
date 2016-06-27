; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_pkey_GOST94cp_encrypt
PUBLIC	_pkey_GOST94cp_decrypt
PUBLIC	_pkey_gost94_derive
PUBLIC	??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@ ; `string'
PUBLIC	??_C@_0CN@KJOEMIAB@gkt?9?$DOkey_agreement_info?9?$DOeph_iv?9@ ; `string'
PUBLIC	??_C@_0CL@DIIAHIAG@gkt?9?$DOkey_info?9?$DOencrypted_key?9?$DOle@ ; `string'
PUBLIC	??_C@_0CB@DOELIANA@gkt?9?$DOkey_info?9?$DOimit?9?$DOlength?5?$DN?$DN?54@ ; `string'
EXTRN	_OpenSSLDie:PROC
EXTRN	_BN_dup:PROC
EXTRN	_DH_new:PROC
EXTRN	_DH_free:PROC
EXTRN	_DH_compute_key:PROC
EXTRN	_RAND_bytes:PROC
EXTRN	_ASN1_OBJECT_free:PROC
EXTRN	_ASN1_OCTET_STRING_set:PROC
EXTRN	_OBJ_nid2obj:PROC
EXTRN	_EVP_PKEY_base_id:PROC
EXTRN	_EVP_PKEY_assign:PROC
EXTRN	_EVP_PKEY_get0:PROC
EXTRN	_EVP_PKEY_new:PROC
EXTRN	_EVP_PKEY_free:PROC
EXTRN	_EVP_PKEY_copy_parameters:PROC
EXTRN	_EVP_PKEY_CTX_ctrl:PROC
EXTRN	_EVP_PKEY_CTX_get_data:PROC
EXTRN	_EVP_PKEY_CTX_get0_pkey:PROC
EXTRN	_EVP_PKEY_CTX_get0_peerkey:PROC
EXTRN	_EVP_PKEY_derive_set_peer:PROC
EXTRN	_gost_init:PROC
EXTRN	_init_gost_hash_ctx:PROC
EXTRN	_done_gost_hash_ctx:PROC
EXTRN	_start_hash:PROC
EXTRN	_hash_block:PROC
EXTRN	_finish_hash:PROC
EXTRN	_ERR_GOST_error:PROC
EXTRN	_keyWrapCryptoPro:PROC
EXTRN	_keyUnwrapCryptoPro:PROC
EXTRN	_DSA_new:PROC
EXTRN	_X509_PUBKEY_set:PROC
EXTRN	_X509_PUBKEY_get:PROC
EXTRN	_get_gost_engine_param:PROC
EXTRN	_GOST_KEY_TRANSPORT_new:PROC
EXTRN	_GOST_KEY_TRANSPORT_free:PROC
EXTRN	_d2i_GOST_KEY_TRANSPORT:PROC
EXTRN	_i2d_GOST_KEY_TRANSPORT:PROC
EXTRN	_get_encryption_params:PROC
EXTRN	_gost_sign_keygen:PROC
EXTRN	_gost_get0_priv_key:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	_memset:PROC
EXTRN	_GostR3411_94_CryptoProParamSet:BYTE
EXTRN	_gost_cipher_list:BYTE
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_0CB@DOELIANA@gkt?9?$DOkey_info?9?$DOimit?9?$DOlength?5?$DN?$DN?54@
CONST	SEGMENT
??_C@_0CB@DOELIANA@gkt?9?$DOkey_info?9?$DOimit?9?$DOlength?5?$DN?$DN?54@ DB 'g'
	DB	'kt->key_info->imit->length == 4', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0CL@DIIAHIAG@gkt?9?$DOkey_info?9?$DOencrypted_key?9?$DOle@
CONST	SEGMENT
??_C@_0CL@DIIAHIAG@gkt?9?$DOkey_info?9?$DOencrypted_key?9?$DOle@ DB 'gkt-'
	DB	'>key_info->encrypted_key->length == 32', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CN@KJOEMIAB@gkt?9?$DOkey_agreement_info?9?$DOeph_iv?9@
CONST	SEGMENT
??_C@_0CN@KJOEMIAB@gkt?9?$DOkey_agreement_info?9?$DOeph_iv?9@ DB 'gkt->ke'
	DB	'y_agreement_info->eph_iv->length == 8', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
CONST	SEGMENT
??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@ DB '.\engines\'
	DB	'ccgost\gost94_keyx.c', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _make_cp_exchange_key
_TEXT	SEGMENT
_hash_ctx$ = -244					; size = 112
_dh_key$ = -132						; size = 128
__$ArrayPad$ = -4					; size = 4
_priv_key$ = 8						; size = 4
_pubk$ = 12						; size = 4
_shared_key$ = 16					; size = 4
_make_cp_exchange_key PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
; Line 52
	mov	eax, 244				; 000000f4H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+244], eax
	push	ebx
	mov	ebx, DWORD PTR _shared_key$[esp+244]
	push	ebp
	mov	ebp, DWORD PTR _priv_key$[esp+248]
	push	esi
	mov	esi, DWORD PTR _pubk$[esp+252]
	push	edi
; Line 56
	call	_DH_new
	mov	edi, eax
; Line 58
	test	edi, edi
	jne	SHORT $LN2@make_cp_ex
$LN5@make_cp_ex:
; Line 59
	xor	eax, eax
	jmp	$LN1@make_cp_ex
$LN2@make_cp_ex:
; Line 60
	push	128					; 00000080H
	lea	eax, DWORD PTR _dh_key$[esp+264]
	push	0
	push	eax
	call	_memset
; Line 61
	mov	eax, DWORD PTR [esi+20]
	push	DWORD PTR [eax+20]
	call	_BN_dup
	mov	DWORD PTR [edi+12], eax
; Line 62
	mov	eax, DWORD PTR [esi+20]
	push	DWORD PTR [eax+12]
	call	_BN_dup
; Line 63
	push	ebp
	mov	DWORD PTR [edi+8], eax
	call	_BN_dup
	add	esp, 24					; 00000018H
	mov	DWORD PTR [edi+24], eax
; Line 64
	push	edi
	push	esi
	call	_EVP_PKEY_get0
	add	esp, 4
	mov	eax, DWORD PTR [eax+24]
	push	eax
	lea	eax, DWORD PTR _dh_key$[esp+268]
	push	eax
	call	_compute_pair_key_le
; Line 67
	push	edi
	mov	esi, eax
	call	_DH_free
	add	esp, 16					; 00000010H
; Line 68
	test	esi, esi
	je	SHORT $LN5@make_cp_ex
; Line 70
	lea	eax, DWORD PTR _hash_ctx$[esp+260]
	push	OFFSET _GostR3411_94_CryptoProParamSet
	push	eax
	call	_init_gost_hash_ctx
; Line 71
	lea	eax, DWORD PTR _hash_ctx$[esp+268]
	push	eax
	call	_start_hash
; Line 72
	push	128					; 00000080H
	lea	eax, DWORD PTR _dh_key$[esp+276]
	push	eax
	lea	eax, DWORD PTR _hash_ctx$[esp+280]
	push	eax
	call	_hash_block
; Line 73
	lea	eax, DWORD PTR _hash_ctx$[esp+284]
	push	ebx
	push	eax
	call	_finish_hash
; Line 74
	lea	eax, DWORD PTR _hash_ctx$[esp+292]
	push	eax
	call	_done_gost_hash_ctx
	add	esp, 36					; 00000024H
; Line 75
	mov	eax, 1
$LN1@make_cp_ex:
; Line 76
	mov	ecx, DWORD PTR __$ArrayPad$[esp+260]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 244				; 000000f4H
	ret	0
_make_cp_exchange_key ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _compute_pair_key_le
_TEXT	SEGMENT
_be_key$ = -132						; size = 128
__$ArrayPad$ = -4					; size = 4
_pair_key$ = 8						; size = 4
_pub_key$ = 12						; size = 4
_dh$ = 16						; size = 4
_compute_pair_key_le PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
; Line 34
	mov	eax, 132				; 00000084H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+132], eax
	mov	eax, DWORD PTR _dh$[esp+128]
	mov	ecx, DWORD PTR _pub_key$[esp+128]
	push	esi
	push	edi
	mov	edi, DWORD PTR _pair_key$[esp+136]
; Line 37
	push	eax
	push	ecx
	lea	eax, DWORD PTR _be_key$[esp+148]
	push	eax
	call	_DH_compute_key
	mov	esi, eax
	add	esp, 12					; 0000000cH
; Line 38
	test	esi, esi
	jne	SHORT $LN5@compute_pa
	pop	edi
	pop	esi
; Line 45
	mov	ecx, DWORD PTR __$ArrayPad$[esp+132]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 132				; 00000084H
	ret	0
$LN5@compute_pa:
; Line 40
	push	128					; 00000080H
	push	0
	push	edi
	call	_memset
	add	esp, 12					; 0000000cH
; Line 41
	xor	ecx, ecx
	test	esi, esi
	jle	SHORT $LN3@compute_pa
; Line 40
	lea	edx, DWORD PTR _be_key$[esp+esi+139]
$LL4@compute_pa:
; Line 42
	mov	al, BYTE PTR [edx]
	lea	edx, DWORD PTR [edx-1]
	mov	BYTE PTR [edi+ecx], al
	inc	ecx
	cmp	ecx, esi
	jl	SHORT $LL4@compute_pa
$LN3@compute_pa:
; Line 45
	mov	ecx, DWORD PTR __$ArrayPad$[esp+140]
	mov	eax, esi
	pop	edi
	pop	esi
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 132				; 00000084H
	ret	0
_compute_pair_key_le ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _pkey_gost94_derive
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_keylen$ = 16						; size = 4
_pkey_gost94_derive PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
; Line 81
	push	edi
; Line 82
	push	DWORD PTR _ctx$[esp]
	call	_EVP_PKEY_CTX_get0_peerkey
; Line 83
	push	DWORD PTR _ctx$[esp+4]
	mov	edi, eax
	call	_EVP_PKEY_CTX_get0_pkey
; Line 84
	mov	ecx, DWORD PTR _keylen$[esp+8]
	add	esp, 8
	mov	DWORD PTR [ecx], 32			; 00000020H
; Line 85
	mov	ecx, DWORD PTR _key$[esp]
	test	ecx, ecx
	jne	SHORT $LN2@pkey_gost9
; Line 86
	lea	eax, DWORD PTR [ecx+1]
	pop	edi
; Line 89
	ret	0
$LN2@pkey_gost9:
; Line 88
	push	ecx
	push	edi
	push	eax
	call	_gost_get0_priv_key
	add	esp, 4
	push	eax
	call	_make_cp_exchange_key
	add	esp, 12					; 0000000cH
	pop	edi
; Line 89
	ret	0
_pkey_gost94_derive ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _pkey_GOST94cp_decrypt
_TEXT	SEGMENT
_p$ = -4216						; size = 4
_priv$1$ = -4212					; size = 4
_cctx$ = -4208						; size = 4128
_wrappedKey$ = -80					; size = 44
_sharedKey$ = -36					; size = 32
__$ArrayPad$ = -4					; size = 4
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_key_len$ = 16						; size = 4
_in$ = 20						; size = 4
_in_len$ = 24						; size = 4
_pkey_GOST94cp_decrypt PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
; Line 212
	mov	eax, 4216				; 00001078H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+4216], eax
	mov	eax, DWORD PTR _in$[esp+4212]
	push	ebx
	mov	ebx, DWORD PTR _in_len$[esp+4216]
	push	ebp
	mov	ebp, DWORD PTR _key$[esp+4220]
	push	esi
	mov	esi, DWORD PTR _key_len$[esp+4224]
	push	edi
	mov	edi, DWORD PTR _ctx$[esp+4228]
; Line 220
	push	edi
	mov	DWORD PTR _p$[esp+4236], eax
	call	_EVP_PKEY_CTX_get0_pkey
	add	esp, 4
	mov	DWORD PTR _priv$1$[esp+4232], eax
; Line 222
	test	ebp, ebp
	jne	SHORT $LN2@pkey_GOST9
; Line 223
	mov	DWORD PTR [esi], 32			; 00000020H
; Line 224
	lea	eax, DWORD PTR [ebp+1]
	jmp	SHORT $LN1@pkey_GOST9
$LN2@pkey_GOST9:
; Line 227
	push	ebx
	lea	eax, DWORD PTR _p$[esp+4236]
	push	eax
	push	0
	call	_d2i_GOST_KEY_TRANSPORT
	mov	esi, eax
	add	esp, 12					; 0000000cH
; Line 228
	test	esi, esi
	jne	SHORT $LN3@pkey_GOST9
; Line 229
	push	230					; 000000e6H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	104					; 00000068H
	push	122					; 0000007aH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 231
	xor	eax, eax
	jmp	SHORT $LN1@pkey_GOST9
$LN3@pkey_GOST9:
; Line 233
	mov	eax, DWORD PTR [esi+4]
	push	DWORD PTR [eax+4]
	call	_X509_PUBKEY_get
	mov	ebx, eax
	add	esp, 4
; Line 234
	test	ebx, ebx
	je	SHORT $LN4@pkey_GOST9
; Line 235
	push	ebx
	push	edi
	call	_EVP_PKEY_derive_set_peer
	add	esp, 8
	test	eax, eax
	jg	SHORT $LN7@pkey_GOST9
; Line 236
	push	237					; 000000edH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	131					; 00000083H
$LN18@pkey_GOST9:
; Line 244
	push	122					; 0000007aH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
$err$20:
; Line 277
	push	ebx
	call	_EVP_PKEY_free
; Line 278
	push	esi
	call	_GOST_KEY_TRANSPORT_free
	add	esp, 8
; Line 279
	or	eax, -1
$LN1@pkey_GOST9:
; Line 280
	mov	ecx, DWORD PTR __$ArrayPad$[esp+4232]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 4216				; 00001078H
	ret	0
$LN4@pkey_GOST9:
; Line 242
	push	0
	push	3
	push	2
	push	-1
	push	-1
	push	edi
	call	_EVP_PKEY_CTX_ctrl
	add	esp, 24					; 00000018H
	test	eax, eax
	jg	SHORT $LN7@pkey_GOST9
; Line 244
	push	244					; 000000f4H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	132					; 00000084H
; Line 245
	jmp	SHORT $LN18@pkey_GOST9
$LN7@pkey_GOST9:
; Line 248
	push	edi
	call	_EVP_PKEY_CTX_get0_peerkey
	mov	edi, eax
	add	esp, 4
; Line 249
	test	edi, edi
	jne	SHORT $LN8@pkey_GOST9
; Line 250
	push	250					; 000000faH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	120					; 00000078H
; Line 251
	jmp	SHORT $LN18@pkey_GOST9
$LN8@pkey_GOST9:
; Line 254
	mov	eax, DWORD PTR [esi+4]
	push	DWORD PTR [eax]
	call	_get_encryption_params
	add	esp, 4
; Line 255
	test	eax, eax
	je	$err$20
; Line 259
	push	DWORD PTR [eax+4]
	lea	eax, DWORD PTR _cctx$[esp+4236]
	push	eax
	call	_gost_init
; Line 260
	mov	eax, DWORD PTR [esi+4]
	add	esp, 8
	mov	eax, DWORD PTR [eax+8]
	cmp	DWORD PTR [eax], 8
	je	SHORT $LN13@pkey_GOST9
	push	OFFSET ??_C@_0CN@KJOEMIAB@gkt?9?$DOkey_agreement_info?9?$DOeph_iv?9@
	push	260					; 00000104H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN13@pkey_GOST9:
; Line 261
	mov	eax, DWORD PTR [esi+4]
	mov	eax, DWORD PTR [eax+8]
	mov	ecx, DWORD PTR [eax+8]
	mov	eax, DWORD PTR [ecx]
	mov	DWORD PTR _wrappedKey$[esp+4232], eax
	mov	eax, DWORD PTR [ecx+4]
	mov	DWORD PTR _wrappedKey$[esp+4236], eax
; Line 262
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [eax], 32			; 00000020H
	je	SHORT $LN15@pkey_GOST9
	push	OFFSET ??_C@_0CL@DIIAHIAG@gkt?9?$DOkey_info?9?$DOencrypted_key?9?$DOle@
	push	262					; 00000106H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN15@pkey_GOST9:
; Line 263
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+8]
	movups	xmm0, XMMWORD PTR [eax]
	movups	XMMWORD PTR _wrappedKey$[esp+4240], xmm0
	movups	xmm0, XMMWORD PTR [eax+16]
	movups	XMMWORD PTR _wrappedKey$[esp+4256], xmm0
; Line 264
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax+4]
	cmp	DWORD PTR [eax], 4
	je	SHORT $LN17@pkey_GOST9
	push	OFFSET ??_C@_0CB@DOELIANA@gkt?9?$DOkey_info?9?$DOimit?9?$DOlength?5?$DN?$DN?54@
	push	264					; 00000108H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN17@pkey_GOST9:
; Line 265
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR _wrappedKey$[esp+4272], eax
; Line 266
	lea	eax, DWORD PTR _sharedKey$[esp+4232]
	push	eax
	push	edi
	push	DWORD PTR _priv$1$[esp+4240]
	call	_gost_get0_priv_key
	add	esp, 4
	push	eax
	call	_make_cp_exchange_key
; Line 267
	push	ebp
	lea	eax, DWORD PTR _wrappedKey$[esp+4248]
	push	eax
	lea	eax, DWORD PTR _sharedKey$[esp+4252]
	push	eax
	lea	eax, DWORD PTR _cctx$[esp+4256]
	push	eax
	call	_keyUnwrapCryptoPro
	add	esp, 28					; 0000001cH
	test	eax, eax
	jne	SHORT $LN10@pkey_GOST9
; Line 268
	push	269					; 0000010dH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	102					; 00000066H
	jmp	$LN18@pkey_GOST9
$LN10@pkey_GOST9:
; Line 273
	push	ebx
	call	_EVP_PKEY_free
; Line 274
	push	esi
	call	_GOST_KEY_TRANSPORT_free
	add	esp, 8
; Line 275
	mov	eax, 1
	jmp	$LN1@pkey_GOST9
_pkey_GOST94cp_decrypt ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _pkey_GOST94cp_encrypt
_TEXT	SEGMENT
_out$GSCopy$ = -4240					; size = 4
_param$1$ = -4236					; size = 4
_data$1$ = -4232					; size = 4
_key$GSCopy$1$ = -4228					; size = 4
_outlen$GSCopy$1$ = -4224				; size = 4
_ctx$GSCopy$1$ = -4220					; size = 4
_cctx$ = -4216						; size = 4128
_ukm$ = -88						; size = 8
_crypted_key$ = -80					; size = 44
_shared_key$ = -36					; size = 32
__$ArrayPad$ = -4					; size = 4
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_outlen$ = 16						; size = 4
_key$ = 20						; size = 4
_key_len$ = 24						; size = 4
_pkey_GOST94cp_encrypt PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost94_keyx.c
; Line 99
	mov	eax, 4240				; 00001090H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+4240], eax
	mov	eax, DWORD PTR _out$[esp+4236]
	push	ebx
	push	ebp
	push	esi
	mov	DWORD PTR _out$GSCopy$[esp+4252], eax
; Line 100
	xor	esi, esi
	mov	eax, DWORD PTR _outlen$[esp+4248]
	push	edi
	mov	edi, DWORD PTR _ctx$[esp+4252]
	mov	DWORD PTR _outlen$GSCopy$1$[esp+4256], eax
	mov	eax, DWORD PTR _key$[esp+4252]
; Line 102
	push	esi
	mov	DWORD PTR _ctx$GSCopy$1$[esp+4260], edi
	mov	DWORD PTR _key$GSCopy$1$[esp+4260], eax
	call	_get_encryption_params
	mov	ebx, eax
; Line 103
	push	edi
	mov	DWORD PTR _param$1$[esp+4264], ebx
	call	_EVP_PKEY_CTX_get0_pkey
; Line 104
	push	edi
	mov	ebp, eax
	call	_EVP_PKEY_CTX_get_data
; Line 108
	push	edi
	mov	DWORD PTR _data$1$[esp+4272], eax
	call	_EVP_PKEY_CTX_get0_peerkey
; Line 112
	push	esi
	mov	edi, eax
	call	_get_gost_engine_param
	add	esp, 20					; 00000014H
	test	eax, eax
	jne	SHORT $LN2@pkey_GOST9
	cmp	ebx, OFFSET _gost_cipher_list
	mov	eax, OFFSET _gost_cipher_list+12
	cmovne	eax, ebx
	mov	DWORD PTR _param$1$[esp+4256], eax
$LN2@pkey_GOST9:
; Line 116
	test	edi, edi
	je	SHORT $LN3@pkey_GOST9
; Line 119
	push	edi
	xor	ebx, ebx
	call	_gost_get0_priv_key
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN7@pkey_GOST9
; Line 120
	push	121					; 00000079H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	121					; 00000079H
; Line 122
	jmp	$LN27@pkey_GOST9
$LN3@pkey_GOST9:
; Line 127
	mov	ecx, DWORD PTR _out$GSCopy$[esp+4256]
	mov	ebx, 1
	test	ecx, ecx
	je	SHORT $LN8@pkey_GOST9
; Line 128
	call	_EVP_PKEY_new
	mov	edi, eax
; Line 129
	call	_DSA_new
	push	eax
	push	ebp
	call	_EVP_PKEY_base_id
	add	esp, 4
	push	eax
	push	edi
	call	_EVP_PKEY_assign
; Line 130
	push	ebp
	push	edi
	call	_EVP_PKEY_copy_parameters
; Line 131
	push	edi
	call	_EVP_PKEY_get0
	push	eax
	call	_gost_sign_keygen
	add	esp, 28					; 0000001cH
	test	eax, eax
	je	$err$29
$LN7@pkey_GOST9:
; Line 136
	mov	ecx, DWORD PTR _out$GSCopy$[esp+4256]
	test	ecx, ecx
	je	SHORT $LN8@pkey_GOST9
; Line 137
	lea	eax, DWORD PTR _shared_key$[esp+4256]
	push	eax
	push	ebp
	push	edi
	call	_gost_get0_priv_key
	add	esp, 4
	push	eax
	call	_make_cp_exchange_key
	mov	ecx, DWORD PTR _out$GSCopy$[esp+4268]
	add	esp, 12					; 0000000cH
$LN8@pkey_GOST9:
; Line 138
	mov	edx, DWORD PTR _data$1$[esp+4256]
	mov	edx, DWORD PTR [edx+8]
	test	edx, edx
	je	SHORT $LN9@pkey_GOST9
; Line 139
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _ukm$[esp+4256], eax
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR _ukm$[esp+4260], eax
	jmp	SHORT $LN12@pkey_GOST9
$LN9@pkey_GOST9:
; Line 140
	test	ecx, ecx
	je	SHORT $LN13@pkey_GOST9
; Line 141
	lea	eax, DWORD PTR _ukm$[esp+4256]
	push	8
	push	eax
	call	_RAND_bytes
	add	esp, 8
	test	eax, eax
	jg	SHORT $LN26@pkey_GOST9
; Line 142
	push	143					; 0000008fH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	124					; 0000007cH
; Line 144
	jmp	$LN27@pkey_GOST9
$LN26@pkey_GOST9:
	mov	ecx, DWORD PTR _out$GSCopy$[esp+4256]
$LN12@pkey_GOST9:
; Line 148
	test	ecx, ecx
	je	SHORT $LN13@pkey_GOST9
; Line 149
	mov	eax, DWORD PTR _param$1$[esp+4256]
	push	DWORD PTR [eax+4]
	lea	eax, DWORD PTR _cctx$[esp+4260]
	push	eax
	call	_gost_init
; Line 150
	lea	eax, DWORD PTR _crypted_key$[esp+4264]
	push	eax
	push	DWORD PTR _key$GSCopy$1$[esp+4268]
	lea	eax, DWORD PTR _ukm$[esp+4272]
	push	eax
	lea	eax, DWORD PTR _shared_key$[esp+4276]
	push	eax
	lea	eax, DWORD PTR _cctx$[esp+4280]
	push	eax
	call	_keyWrapCryptoPro
	add	esp, 28					; 0000001cH
$LN13@pkey_GOST9:
; Line 152
	call	_GOST_KEY_TRANSPORT_new
	mov	esi, eax
; Line 153
	test	esi, esi
	je	$memerr$30
; Line 156
	mov	ecx, DWORD PTR [esi+4]
	lea	eax, DWORD PTR _ukm$[esp+4256]
	push	8
	push	eax
	push	DWORD PTR [ecx+8]
	call	_ASN1_OCTET_STRING_set
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$memerr$30
; Line 159
	push	4
	lea	eax, DWORD PTR _crypted_key$[esp+4300]
	push	eax
	mov	eax, DWORD PTR [esi]
	push	DWORD PTR [eax+4]
	call	_ASN1_OCTET_STRING_set
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$memerr$30
; Line 162
	push	32					; 00000020H
	lea	eax, DWORD PTR _crypted_key$[esp+4268]
	push	eax
	mov	eax, DWORD PTR [esi]
	push	DWORD PTR [eax]
	call	_ASN1_OCTET_STRING_set
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$memerr$30
; Line 166
	test	ebx, ebx
	je	SHORT $LN20@pkey_GOST9
; Line 167
	cmp	DWORD PTR _out$GSCopy$[esp+4256], 0
	mov	eax, DWORD PTR [esi+4]
	cmovne	ebp, edi
	add	eax, 4
	push	ebp
	push	eax
	call	_X509_PUBKEY_set
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN19@pkey_GOST9
; Line 169
	push	170					; 000000aaH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	101					; 00000065H
; Line 171
	jmp	$LN27@pkey_GOST9
$LN19@pkey_GOST9:
; Line 173
	cmp	DWORD PTR _out$GSCopy$[esp+4256], 0
	je	SHORT $LN20@pkey_GOST9
; Line 174
	push	edi
	call	_EVP_PKEY_free
	add	esp, 4
$LN20@pkey_GOST9:
; Line 176
	mov	eax, DWORD PTR [esi+4]
	push	DWORD PTR [eax]
	call	_ASN1_OBJECT_free
; Line 177
	mov	eax, DWORD PTR _param$1$[esp+4260]
	push	DWORD PTR [eax]
	call	_OBJ_nid2obj
	mov	ecx, DWORD PTR [esi+4]
	mov	DWORD PTR [ecx], eax
; Line 178
	xor	ecx, ecx
	cmp	DWORD PTR _out$GSCopy$[esp+4264], ecx
	lea	eax, DWORD PTR _out$GSCopy$[esp+4264]
	cmove	eax, ecx
	push	eax
	push	esi
	call	_i2d_GOST_KEY_TRANSPORT
	add	esp, 16					; 00000010H
; Line 179
	test	eax, eax
	jg	SHORT $LN21@pkey_GOST9
; Line 180
	push	181					; 000000b5H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	103					; 00000067H
; Line 182
	jmp	SHORT $LN27@pkey_GOST9
$LN21@pkey_GOST9:
; Line 184
	mov	ecx, DWORD PTR _outlen$GSCopy$1$[esp+4256]
	mov	DWORD PTR [ecx], eax
; Line 185
	test	ebx, ebx
	jne	SHORT $LN23@pkey_GOST9
; Line 187
	push	ebx
	push	3
	push	2
	push	-1
	push	-1
	push	DWORD PTR _ctx$GSCopy$1$[esp+4276]
	call	_EVP_PKEY_CTX_ctrl
	add	esp, 24					; 00000018H
	test	eax, eax
	jg	SHORT $LN23@pkey_GOST9
; Line 189
	push	189					; 000000bdH
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	132					; 00000084H
	jmp	SHORT $LN27@pkey_GOST9
$LN23@pkey_GOST9:
; Line 193
	push	esi
	call	_GOST_KEY_TRANSPORT_free
	add	esp, 4
; Line 194
	mov	eax, 1
	jmp	SHORT $LN1@pkey_GOST9
$memerr$30:
; Line 196
	test	ebx, ebx
	je	SHORT $LN24@pkey_GOST9
; Line 197
	push	edi
	call	_EVP_PKEY_free
	add	esp, 4
$LN24@pkey_GOST9:
; Line 199
	push	199					; 000000c7H
	push	OFFSET ??_C@_0BP@HFBKPLA@?4?2engines?2ccgost?2gost94_keyx?4c?$AA@
	push	117					; 00000075H
$LN27@pkey_GOST9:
	push	123					; 0000007bH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
$err$29:
; Line 201
	push	esi
	call	_GOST_KEY_TRANSPORT_free
	add	esp, 4
; Line 202
	or	eax, -1
$LN1@pkey_GOST9:
; Line 203
	mov	ecx, DWORD PTR __$ArrayPad$[esp+4256]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 4240				; 00001090H
	ret	0
_pkey_GOST94cp_encrypt ENDP
_TEXT	ENDS
END
