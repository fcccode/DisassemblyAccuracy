;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3677-7074-51			    |
; |		Michalis Polychronakis,	Stony Brook University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	3738575448C2464B1ACA96118ED242DF
; Input	CRC32 :	BF65CA9E

; File Name   :	C:\compspace\Diff\openssl\obj\x86-mont.obj
; Format      :	COFF (X386MAGIC)

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
; Segment alignment '64byte' can not be represented in assembly
_text		segment	para public 'CODE' use32
		assume cs:_text
		assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public L$_bn_mul_mont_begin
L$_bn_mul_mont_begin proc near

var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= qword	ptr -1Ch
var_14		= dword	ptr -14h
var_10		= qword	ptr -10h
var_8		= dword	ptr -8
arg_0		= byte ptr  4
arg_4		= byte ptr  8
arg_14		= dword	ptr  18h

		push	ebp
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		mov	edi, [esp+10h+arg_14]
		cmp	edi, 4
		jl	L$000just_leave
		lea	esi, [esp+10h+arg_0]
		lea	edx, [esp+10h+arg_4]
		mov	ebp, esp
		add	edi, 2
		neg	edi
		lea	esp, [esp+edi*4-20h]
		neg	edi
		mov	eax, esp
		sub	eax, edx
		and	eax, 7FFh
		sub	esp, eax
		xor	edx, esp
		and	edx, 800h
		xor	edx, 800h
		sub	esp, edx
		and	esp, 0FFFFFFC0h
		mov	eax, ebp
		sub	eax, esp
		and	eax, 0FFFFF000h

L$001page_walk:				; CODE XREF: L$_bn_mul_mont_begin+57j
		mov	edx, [esp+eax+30h+var_30]
		sub	eax, 1000h
		hnt jnb	L$001page_walk
		mov	eax, [esi]
		mov	ebx, [esi+4]
		mov	ecx, [esi+8]
		mov	edx, [esi+0Ch]
		mov	esi, [esi+10h]
		mov	esi, [esi]
		mov	[esp+30h+var_2C], eax
		mov	[esp+30h+var_28], ebx
		mov	[esp+30h+var_24], ecx
		mov	[esp+30h+var_20], edx
		mov	dword ptr [esp+30h+var_1C], esi
		lea	ebx, [edi-3]
		mov	dword ptr [esp+30h+var_1C+4], ebp
		lea	eax, _OPENSSL_ia32cap_P
		bt	dword ptr [eax], 1Ah
		jnb	L$002non_sse2
		mov	eax, 0FFFFFFFFh
		movd	mm7, eax
		mov	esi, [esp+30h+var_28]
		mov	edi, [esp+30h+var_24]
		mov	ebp, [esp+30h+var_20]
		xor	edx, edx
		xor	ecx, ecx
		movd	mm4, dword ptr [edi]
		movd	mm5, dword ptr [esi]
		movd	mm3, dword ptr [ebp+0]
		pmuludq	mm5, mm4
		movq	mm2, mm5
		movq	mm0, mm5
		pand	mm0, mm7
		pmuludq	mm5, [esp+30h+var_1C]
		pmuludq	mm3, mm5
		paddq	mm3, mm0
		movd	mm1, dword ptr [ebp+4]
		movd	mm0, dword ptr [esi+4]
		psrlq	mm2, 20h ; ' '
		psrlq	mm3, 20h ; ' '
		inc	ecx
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

L$0031st:				; CODE XREF: L$_bn_mul_mont_begin+121j
		pmuludq	mm0, mm4
		pmuludq	mm1, mm5
		paddq	mm2, mm0
		paddq	mm3, mm1
		movq	mm0, mm2
		pand	mm0, mm7
		movd	mm1, dword ptr [ebp+ecx*4+4]
		paddq	mm3, mm0
		movd	mm0, dword ptr [esi+ecx*4+4]
		psrlq	mm2, 20h ; ' '
		movd	[esp+ecx*4+30h+var_14],	mm3
		psrlq	mm3, 20h ; ' '
		lea	ecx, [ecx+1]
		cmp	ecx, ebx
		jl	L$0031st
		pmuludq	mm0, mm4
		pmuludq	mm1, mm5
		paddq	mm2, mm0
		paddq	mm3, mm1
		movq	mm0, mm2
		pand	mm0, mm7
		paddq	mm3, mm0
		movd	[esp+ecx*4+30h+var_14],	mm3
		psrlq	mm2, 20h ; ' '
		psrlq	mm3, 20h ; ' '
		paddq	mm3, mm2
		movq	[esp+ebx*4+30h+var_10],	mm3
		inc	edx

L$004outer:				; CODE XREF: L$_bn_mul_mont_begin+20Fj
		xor	ecx, ecx
		movd	mm4, dword ptr [edi+edx*4]
		movd	mm5, dword ptr [esi]
		movd	mm6, dword ptr [esp+30h+var_10]
		movd	mm3, dword ptr [ebp+0]
		pmuludq	mm5, mm4
		paddq	mm5, mm6
		movq	mm0, mm5
		movq	mm2, mm5
		pand	mm0, mm7
		pmuludq	mm5, [esp+30h+var_1C]
		pmuludq	mm3, mm5
		paddq	mm3, mm0
		movd	mm6, dword ptr [esp+30h+var_10+4]
		movd	mm1, dword ptr [ebp+4]
		movd	mm0, dword ptr [esi+4]
		psrlq	mm2, 20h ; ' '
		psrlq	mm3, 20h ; ' '
		paddq	mm2, mm6
		inc	ecx
		dec	ebx

L$005inner:				; CODE XREF: L$_bn_mul_mont_begin+1D0j
		pmuludq	mm0, mm4
		pmuludq	mm1, mm5
		paddq	mm2, mm0
		paddq	mm3, mm1
		movq	mm0, mm2
		movd	mm6, dword ptr [esp+ecx*4+30h+var_10+4]
		pand	mm0, mm7
		movd	mm1, dword ptr [ebp+ecx*4+4]
		paddq	mm3, mm0
		movd	mm0, dword ptr [esi+ecx*4+4]
		psrlq	mm2, 20h ; ' '
		movd	[esp+ecx*4+30h+var_14],	mm3
		psrlq	mm3, 20h ; ' '
		paddq	mm2, mm6
		dec	ebx
		lea	ecx, [ecx+1]
		jnz	L$005inner
		mov	ebx, ecx
		pmuludq	mm0, mm4
		pmuludq	mm1, mm5
		paddq	mm2, mm0
		paddq	mm3, mm1
		movq	mm0, mm2
		pand	mm0, mm7
		paddq	mm3, mm0
		movd	[esp+ecx*4+30h+var_14],	mm3
		psrlq	mm2, 20h ; ' '
		psrlq	mm3, 20h ; ' '
		movd	mm6, dword ptr [esp+ebx*4+30h+var_10+4]
		paddq	mm3, mm2
		paddq	mm3, mm6
		movq	[esp+ebx*4+30h+var_10],	mm3
		lea	edx, [edx+1]
		cmp	edx, ebx
		jle	L$004outer
		emms
		jmp	L$006common_tail
; ---------------------------------------------------------------------------
		align 10h

L$002non_sse2:				; CODE XREF: L$_bn_mul_mont_begin+93j
		mov	esi, [esp+30h+var_28]
		lea	ebp, [ebx+1]
		mov	edi, [esp+30h+var_24]
		xor	ecx, ecx
		mov	edx, esi
		and	ebp, 1
		sub	edx, edi
		lea	eax, [edi+ebx*4+4]
		or	ebp, edx
		mov	edi, [edi]
		jz	L$007bn_sqr_mont
		mov	[esp+30h+var_14], eax
		mov	eax, [esi]
		xor	edx, edx
		nop
		nop
		nop
		nop
		nop
		nop

L$008mull:				; CODE XREF: L$_bn_mul_mont_begin+265j
		mov	ebp, edx
		mul	edi
		add	ebp, eax
		lea	ecx, [ecx+1]
		adc	edx, 0
		mov	eax, [esi+ecx*4]
		cmp	ecx, ebx
		mov	[esp+ecx*4+30h+var_14],	ebp
		jl	L$008mull
		mov	ebp, edx
		mul	edi
		mov	edi, dword ptr [esp+30h+var_1C]
		add	eax, ebp
		mov	esi, [esp+30h+var_20]
		adc	edx, 0
		imul	edi, dword ptr [esp+30h+var_10]
		mov	dword ptr [esp+ebx*4+30h+var_10], eax
		xor	ecx, ecx
		mov	dword ptr [esp+ebx*4+30h+var_10+4], edx
		mov	[esp+ebx*4+30h+var_8], ecx
		mov	eax, [esi]
		mul	edi
		add	eax, dword ptr [esp+30h+var_10]
		mov	eax, [esi+4]
		adc	edx, 0
		inc	ecx
		jmp	L$0092ndmadd
; ---------------------------------------------------------------------------
		align 10h

L$0101stmadd:				; CODE XREF: L$_bn_mul_mont_begin+2CCj
					; L$_bn_mul_mont_begin+389j
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ecx*4+30h+var_10]
		lea	ecx, [ecx+1]
		adc	edx, 0
		add	ebp, eax
		mov	eax, [esi+ecx*4]
		adc	edx, 0
		cmp	ecx, ebx
		mov	[esp+ecx*4+30h+var_14],	ebp
		jl	L$0101stmadd
		mov	ebp, edx
		mul	edi
		add	eax, dword ptr [esp+ebx*4+30h+var_10]
		mov	edi, dword ptr [esp+30h+var_1C]
		adc	edx, 0
		mov	esi, [esp+30h+var_20]
		add	ebp, eax
		adc	edx, 0
		imul	edi, dword ptr [esp+30h+var_10]
		xor	ecx, ecx
		add	edx, dword ptr [esp+ebx*4+30h+var_10+4]
		mov	dword ptr [esp+ebx*4+30h+var_10], ebp
		adc	ecx, 0
		mov	eax, [esi]
		mov	dword ptr [esp+ebx*4+30h+var_10+4], edx
		mov	[esp+ebx*4+30h+var_8], ecx
		mul	edi
		add	eax, dword ptr [esp+30h+var_10]
		mov	eax, [esi+4]
		adc	edx, 0
		mov	ecx, 1
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

L$0092ndmadd:				; CODE XREF: L$_bn_mul_mont_begin+29Ej
					; L$_bn_mul_mont_begin+33Cj
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ecx*4+30h+var_10]
		lea	ecx, [ecx+1]
		adc	edx, 0
		add	ebp, eax
		mov	eax, [esi+ecx*4]
		adc	edx, 0
		cmp	ecx, ebx
		mov	dword ptr [esp+ecx*4+30h+var_1C+4], ebp
		jl	L$0092ndmadd
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ebx*4+30h+var_10]
		adc	edx, 0
		add	ebp, eax
		adc	edx, 0
		mov	[esp+ebx*4+30h+var_14],	ebp
		xor	eax, eax
		mov	ecx, [esp+30h+var_24]
		add	edx, dword ptr [esp+ebx*4+30h+var_10+4]
		adc	eax, [esp+ebx*4+30h+var_8]
		lea	ecx, [ecx+4]
		mov	dword ptr [esp+ebx*4+30h+var_10], edx
		cmp	ecx, [esp+30h+var_14]
		mov	dword ptr [esp+ebx*4+30h+var_10+4], eax
		jz	L$006common_tail
		mov	edi, [ecx]
		mov	esi, [esp+30h+var_28]
		mov	[esp+30h+var_24], ecx
		xor	ecx, ecx
		xor	edx, edx
		mov	eax, [esi]
		jmp	L$0101stmadd
; ---------------------------------------------------------------------------
		align 10h

L$007bn_sqr_mont:			; CODE XREF: L$_bn_mul_mont_begin+23Cj
		mov	[esp+30h+var_30], ebx
		mov	[esp+30h+var_24], ecx
		mov	eax, edi
		mul	edi
		mov	dword ptr [esp+30h+var_10], eax
		mov	ebx, edx
		shr	edx, 1
		and	ebx, 1
		inc	ecx
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

L$011sqr:				; CODE XREF: L$_bn_mul_mont_begin+3CEj
		mov	eax, [esi+ecx*4]
		mov	ebp, edx
		mul	edi
		add	eax, ebp
		lea	ecx, [ecx+1]
		adc	edx, 0
		lea	ebp, [ebx+eax*2]
		shr	eax, 1Fh
		cmp	ecx, [esp+30h+var_30]
		mov	ebx, eax
		mov	[esp+ecx*4+30h+var_14],	ebp
		jl	L$011sqr
		mov	eax, [esi+ecx*4]
		mov	ebp, edx
		mul	edi
		add	eax, ebp
		mov	edi, dword ptr [esp+30h+var_1C]
		adc	edx, 0
		mov	esi, [esp+30h+var_20]
		lea	ebp, [ebx+eax*2]
		imul	edi, dword ptr [esp+30h+var_10]
		shr	eax, 1Fh
		mov	dword ptr [esp+ecx*4+30h+var_10], ebp
		lea	ebp, [eax+edx*2]
		mov	eax, [esi]
		shr	edx, 1Fh
		mov	dword ptr [esp+ecx*4+30h+var_10+4], ebp
		mov	[esp+ecx*4+30h+var_8], edx
		mul	edi
		add	eax, dword ptr [esp+30h+var_10]
		mov	ebx, ecx
		adc	edx, 0
		mov	eax, [esi+4]
		mov	ecx, 1
		nop
		nop
		nop
		nop
		nop
		nop

L$0123rdmadd:				; CODE XREF: L$_bn_mul_mont_begin+454j
					; L$_bn_mul_mont_begin+52Ej
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ecx*4+30h+var_10]
		adc	edx, 0
		add	ebp, eax
		mov	eax, [esi+ecx*4+4]
		adc	edx, 0
		mov	[esp+ecx*4+30h+var_14],	ebp
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ecx*4+30h+var_10+4]
		lea	ecx, [ecx+2]
		adc	edx, 0
		add	ebp, eax
		mov	eax, [esi+ecx*4]
		adc	edx, 0
		cmp	ecx, ebx
		mov	dword ptr [esp+ecx*4+30h+var_1C+4], ebp
		jl	L$0123rdmadd
		mov	ebp, edx
		mul	edi
		add	ebp, dword ptr [esp+ebx*4+30h+var_10]
		adc	edx, 0
		add	ebp, eax
		adc	edx, 0
		mov	[esp+ebx*4+30h+var_14],	ebp
		mov	ecx, [esp+30h+var_24]
		xor	eax, eax
		mov	esi, [esp+30h+var_28]
		add	edx, dword ptr [esp+ebx*4+30h+var_10+4]
		adc	eax, [esp+ebx*4+30h+var_8]
		mov	dword ptr [esp+ebx*4+30h+var_10], edx
		cmp	ecx, ebx
		mov	dword ptr [esp+ebx*4+30h+var_10+4], eax
		jz	L$006common_tail
		mov	edi, [esi+ecx*4+4]
		lea	ecx, [ecx+1]
		mov	eax, edi
		mov	[esp+30h+var_24], ecx
		mul	edi
		add	eax, dword ptr [esp+ecx*4+30h+var_10]
		adc	edx, 0
		mov	dword ptr [esp+ecx*4+30h+var_10], eax
		xor	ebp, ebp
		cmp	ecx, ebx
		lea	ecx, [ecx+1]
		jz	L$013sqrlast
		mov	ebx, edx
		shr	edx, 1
		and	ebx, 1
		nop
		nop

L$014sqradd:				; CODE XREF: L$_bn_mul_mont_begin+4EAj
		mov	eax, [esi+ecx*4]
		mov	ebp, edx
		mul	edi
		add	eax, ebp
		lea	ebp, [eax+eax]
		adc	edx, 0
		shr	eax, 1Fh
		add	ebp, dword ptr [esp+ecx*4+30h+var_10]
		lea	ecx, [ecx+1]
		adc	eax, 0
		add	ebp, ebx
		adc	eax, 0
		cmp	ecx, [esp+30h+var_30]
		mov	[esp+ecx*4+30h+var_14],	ebp
		mov	ebx, eax
		jle	L$014sqradd
		mov	ebp, edx
		add	edx, edx
		shr	ebp, 1Fh
		add	edx, ebx
		adc	ebp, 0

L$013sqrlast:				; CODE XREF: L$_bn_mul_mont_begin+4B1j
		mov	edi, dword ptr [esp+30h+var_1C]
		mov	esi, [esp+30h+var_20]
		imul	edi, dword ptr [esp+30h+var_10]
		add	edx, dword ptr [esp+ecx*4+30h+var_10]
		mov	eax, [esi]
		adc	ebp, 0
		mov	dword ptr [esp+ecx*4+30h+var_10], edx
		mov	dword ptr [esp+ecx*4+30h+var_10+4], ebp
		mul	edi
		add	eax, dword ptr [esp+30h+var_10]
		lea	ebx, [ecx-1]
		adc	edx, 0
		mov	ecx, 1
		mov	eax, [esi+4]
		jmp	L$0123rdmadd
; ---------------------------------------------------------------------------
		align 10h

L$006common_tail:			; CODE XREF: L$_bn_mul_mont_begin+217j
					; L$_bn_mul_mont_begin+373j ...
		mov	ebp, [esp+30h+var_20]
		mov	edi, [esp+30h+var_2C]
		lea	esi, [esp+30h+var_10]
		mov	eax, [esi]
		mov	ecx, ebx
		xor	edx, edx
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

L$015sub:				; CODE XREF: L$_bn_mul_mont_begin+56Fj
		sbb	eax, [ebp+edx*4+0]
		mov	[edi+edx*4], eax
		dec	ecx
		mov	eax, [esi+edx*4+4]
		lea	edx, [edx+1]
		jge	L$015sub
		sbb	eax, 0
		and	esi, eax
		not	eax
		mov	ebp, edi
		and	ebp, eax
		or	esi, ebp
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

L$016copy:				; CODE XREF: L$_bn_mul_mont_begin+59Bj
		mov	eax, [esi+ebx*4]
		mov	[edi+ebx*4], eax
		mov	dword ptr [esp+ebx*4+30h+var_10], ecx
		dec	ebx
		jge	L$016copy
		mov	esp, dword ptr [esp+30h+var_1C+4]
		mov	eax, 1

L$000just_leave:			; CODE XREF: L$_bn_mul_mont_begin+Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
L$_bn_mul_mont_begin endp

; ---------------------------------------------------------------------------
aMontgomeryMult	db 'Montgomery Multiplication for x86, CRYPTOGAMS by <appro@openssl.o'
		db 'rg>',0
_text		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use32
_bss		ends

; ===========================================================================

; Segment type:	Externs
; UNDEF
		extrn _OPENSSL_ia32cap_P:near ;	DATA XREF: L$_bn_mul_mont_begin+89o


		end
