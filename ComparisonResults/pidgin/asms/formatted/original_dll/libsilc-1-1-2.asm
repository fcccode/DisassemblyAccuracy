assume cs:_text

assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
public __onexit
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+arg_0]
mov	dword ptr [esp+8], offset _next_atexit
mov	dword ptr [esp+4], offset __bss_start__
mov	[esp], eax
call	___dllonexit
leave
retn
align 10h
public _atexit
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+arg_0]
mov	dword ptr [esp+8], offset _next_atexit
mov	dword ptr [esp+4], offset __bss_start__
mov	[esp], eax
call	___dllonexit
leave
cmp	eax, 1
sbb	eax, eax
retn
align 10h
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	edx, ds:__bss_start__
test	edx, edx
jz	short loc_641C10A5
mov	ebx, ds:_next_atexit
sub	ebx, 4
cmp	edx, ebx
ja	short loc_641C1093
mov	eax, [ebx]
test	eax, eax
jz	short loc_641C1077
call	eax
mov	edx, ds:__bss_start__
sub	ebx, 4
cmp	edx, ebx
jbe	short loc_641C107E
mov	[esp], edx	
call	_free
mov	ds:__bss_start__, 0
mov	dword ptr [esp], 0 
call	_fflush
add	esp, 14h
pop	ebx
pop	ebp
retn
align 10h
public _DllMainCRTStartup@12
push	ebp
mov	ebp, esp
sub	esp, 38h
mov	[ebp+var_C], ebx
mov	ebx, [ebp+fdwReason]
mov	[ebp+var_8], esi
mov	esi, [ebp+hinstDLL]
mov	[ebp+var_4], edi
mov	edi, [ebp+lpReserved]
cmp	ebx, 1
jz	short loc_641C1118
mov	[esp+8], edi	
mov	[esp+4], ebx	
mov	[esp], esi	
call	_DllMain@12
sub	esp, 0Ch
test	ebx, ebx
jnz	short loc_641C1109
mov	edx, ds:__bss_start__
test	edx, edx
jz	short loc_641C1166
mov	[ebp+var_1C], eax
call	___dll_exit
mov	eax, [ebp+var_1C]
			
mov	ebx, [ebp+var_C]
mov	esi, [ebp+var_8]
mov	edi, [ebp+var_4]
mov	esp, ebp
pop	ebp
retn	0Ch
mov	dword ptr [esp], 80h 
call	_malloc
test	eax, eax
mov	ds:__bss_start__, eax
jz	short loc_641C1170
mov	dword ptr [eax], 0
mov	ds:_next_atexit, eax
call	__pei386_runtime_relocator
call	___main
mov	[esp+8], edi	
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
call	_DllMain@12
sub	esp, 0Ch
test	eax, eax
jnz	short loc_641C1109
call	___dll_exit
xor	eax, eax
jmp	short loc_641C1109
xor	eax, eax
jmp	short loc_641C1109
align 10h
call	__errno
mov	dword ptr [eax], 0Ch
xor	eax, eax
jmp	short loc_641C1109
align 10h
public ___gcc_register_frame
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp], offset	ModuleName 
call	_GetModuleHandleA@4
push	edx
test	eax, eax
jz	short loc_641C11FC
mov	dword ptr [esp+4], offset ProcName 
mov	[esp], eax	
call	_GetProcAddress@8
sub	esp, 8
test	eax, eax
jz	short loc_641C11BF
mov	dword ptr [esp+4], offset _obj
mov	dword ptr [esp], offset	_eh_frame
call	eax
mov	ecx, ___JCR_END__
test	ecx, ecx
jz	short locret_641C11FA
mov	dword ptr [esp], offset	aLibgcj_s_dll 
call	_GetModuleHandleA@4
push	edx
test	eax, eax
jz	short loc_641C1204
mov	dword ptr [esp+4], offset a_jv_registercl 
mov	[esp], eax	
call	_GetProcAddress@8
sub	esp, 8
test	eax, eax
jz	short locret_641C11FA
mov	dword ptr [esp], offset	___JCR_END__
call	eax
			
leave
retn
mov	eax, 0
jmp	short loc_641C11AA
align 4
mov	eax, 0
jmp	short loc_641C11ED
align 4
public ___gcc_deregister_frame
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp], offset	ModuleName 
call	_GetModuleHandleA@4
push	ecx
test	eax, eax
jz	short loc_641C1248
mov	dword ptr [esp+4], offset a__deregister_f 
mov	[esp], eax	
call	_GetProcAddress@8
sub	esp, 8
test	eax, eax
jz	short locret_641C1243
mov	dword ptr [esp], offset	_eh_frame
call	eax
leave
retn
align 4
mov	eax, 0
jmp	short loc_641C1236
align 10h
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 20h
dec	len
mov	[ebp+var_18], edx
mov	esi, string
jmp	short loc_641C1295
align 4
mov	i, eax
shr	edx, 8
mov	dx, ds:_combining_class_table_part1[edx+edx]
cmp	dx, 10FFh
jle	short loc_641C12CA
movsx	edx, dx
sub	edx, 1100h
mov	[ebp+last], edx
			
xor	swap, swap
xor	edx, edx
			
cmp	i, [ebp+var_18]
jb	short loc_641C12E4
test	swap, swap
jz	loc_641C1408
mov	eax, [string]
cmp	eax, 2FAFFh
jbe	short loc_641C1264
lea	i, [eax-0E0000h]
cmp	edx, 2FFFFh
jbe	short loc_641C12B8
mov	[ebp+last], 0
jmp	short loc_641C1284
align 4
shr	edx, 8
mov	dx, ds:_combining_class_table_part2[edx+edx]
cmp	dx, 10FFh
jg	short loc_641C1278
and	eax, 0FFh
movsx	edx, dx
shl	edx, 8
movzx	edx, ds:_cclass_data[eax+edx]
mov	[ebp+last], edx
jmp	short loc_641C1284
align 4
lea	eax, [i+1]
mov	[ebp+var_20], eax
mov	eax, [string+eax*4]
cmp	eax, 2FAFFh
ja	loc_641C13D0
mov	ebx, eax
shr	ebx, 8
mov	bx, ds:_combining_class_table_part1[ebx+ebx]
cmp	bx, 10FFh
jg	loc_641C13F4
and	eax, 0FFh
movsx	ebx, bx
shl	ebx, 8
movzx	ebx, ds:_cclass_data[eax+ebx]
mov	[ebp+next], ebx
mov	eax, [ebp+next]
test	eax, eax
jz	loc_641C13C0
mov	eax, [ebp+next]
cmp	[ebp+last], eax
jle	loc_641C13C0
mov	ebx, [ebp+var_20]
mov	[ebp+j], ebx
xor	ebx, ebx
mov	[ebp+var_24], swap
mov	[ebp+var_2C], string
jmp	short loc_641C1394
align 10h
mov	t, ecx
shr	edi, 8
mov	di, ds:_combining_class_table_part1[edi+edi]
cmp	di, 10FFh
jle	loc_641C143E
movsx	edi, di
sub	edi, 1100h
cmp	[ebp+next], edi
jge	short loc_641C13B2
mov	edi, [eax+i*4+4]
mov	[eax+i*4+4], ecx
mov	[eax+i*4], t
sub	ebx, 4
mov	[ebp+var_24], 1
dec	[ebp+j]
jz	loc_641C1454
mov	eax, [ebp+var_2C]
add	eax, ebx
mov	swap, [eax+i*4]
cmp	ecx, 2FAFFh
jbe	short loc_641C1350
lea	t, [ecx-0E0000h]
cmp	edi, 2FFFFh
jbe	short loc_641C1428
mov	ecx, [ebp+var_24]
mov	string,	[ebp+var_2C]
mov	ebx, [ebp+last]
mov	[ebp+next], ebx
xchg	ax, ax
			
mov	eax, [ebp+next]
mov	[ebp+last], eax
mov	i, [ebp+var_20]
jmp	loc_641C1288
align 10h
lea	ebx, [eax-0E0000h]
cmp	ebx, 2FFFFh
ja	short loc_641C1410
shr	ebx, 8
mov	bx, ds:_combining_class_table_part2[ebx+ebx]
cmp	bx, 10FFh
jle	loc_641C1310
movsx	ebx, bx
sub	ebx, 1100h
mov	[ebp+next], ebx
jmp	loc_641C1326
align 4
add	esp, 20h
pop	ebx
pop	string
pop	t
leave
retn
mov	[ebp+next], 0
mov	eax, [ebp+next]
mov	[ebp+last], eax
mov	i, [ebp+var_20]
jmp	loc_641C1288
align 4
shr	edi, 8
mov	di, ds:_combining_class_table_part2[edi+edi]
cmp	di, 10FFh
jg	loc_641C1368
movzx	string,	cl
movsx	edi, di
shl	edi, 8
movzx	edi, ds:_cclass_data[esi+edi]
jmp	loc_641C1371
mov	ecx, 1
mov	string,	[ebp+var_2C]
mov	eax, [ebp+last]
mov	[ebp+next], eax
mov	eax, [ebp+next]
mov	[ebp+last], eax
mov	i, [ebp+var_20]
jmp	loc_641C1288
public _stringprep_utf8_to_unichar
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	esi, [ebp+p]
mov	al, [esi]
test	al, al
js	short loc_641C1488
and	eax, 7Fh
pop	ebx
pop	p_0
pop	edi
leave
retn
align 4
movzx	edx, al
mov	ecx, edx
and	ecx, 0E0h
cmp	ecx, 0C0h
jz	short loc_641C14F6
mov	ecx, edx
and	ecx, 0F0h
cmp	ecx, 0E0h
jz	loc_641C1547
mov	ecx, edx
and	ecx, 0F8h
cmp	ecx, 0F0h
jz	loc_641C1553
mov	ecx, edx
and	ecx, 0FCh
cmp	ecx, 0F8h
jz	loc_641C155F
and	edx, 0FEh
cmp	edx, 0FCh
jz	loc_641C156B
lea	p_0, [p_0+0]
			
mov	eax, 0FFFFFFFFh
pop	ebx
pop	p_0
pop	edi
leave
retn
mov	edi, 2
mov	edx, 1Fh
			
movsx	ecx, byte ptr [p_0+1]
mov	ebx, ecx
and	ebx, 0C0h
add	ebx, 0FFFFFF80h
jnz	short loc_641C14EC
movsx	eax, al
and	eax, edx
mov	edx, 1
jmp	short loc_641C1531
align 10h
movsx	ecx, byte ptr [p_0+edx]
mov	ebx, ecx
and	ebx, 0C0h
add	ebx, 0FFFFFF80h
jnz	short loc_641C14EC
mov	ebx, eax
shl	ebx, 6
mov	eax, ecx
and	eax, 3Fh
or	eax, ebx
inc	edx
cmp	edi, edx
jg	short loc_641C1520
pop	ebx
pop	p_0
pop	edi
leave
retn
mov	edi, 3
mov	edx, 0Fh
jmp	short loc_641C1500
mov	edi, 4
mov	edx, 7
jmp	short loc_641C1500
mov	edi, 5
mov	edx, 3
jmp	short loc_641C1500
mov	edi, 6
mov	edx, 1
jmp	short loc_641C1500
align 4
public _stringprep_unichar_to_utf8
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4
mov	ecx, [ebp+c]
mov	edi, [ebp+outbuf]
cmp	ecx, 7Fh
ja	short loc_641C15C8
mov	[ebp+var_10], 0
mov	eax, 1
			
test	outbuf_0, outbuf_0
jz	short loc_641C15C1
lea	ebx, [eax-1]
test	ebx, ebx
jle	short loc_641C15BC
lea	esi, [outbuf_0+eax]
xchg	ax, ax
mov	dl, cl
and	edx, 3Fh
or	edx, 0FFFFFF80h
mov	[esi-1], dl
shr	ecx, 6
dec	ebx
dec	esi
test	ebx, ebx
jg	short loc_641C15A8
or	c_0, [ebp+var_10]
mov	[outbuf_0], cl
pop	edx
pop	ebx
pop	esi
pop	outbuf_0
leave
retn
align 4
cmp	c_0, 7FFh
ja	short loc_641C15E0
mov	[ebp+var_10], 0C0h
mov	eax, 2
jmp	short loc_641C1598
align 10h
cmp	c_0, 0FFFFh
jbe	short loc_641C1600
cmp	c_0, 1FFFFFh
ja	short loc_641C160E
mov	[ebp+var_10], 0F0h
mov	eax, 4
jmp	short loc_641C1598
align 10h
mov	[ebp+var_10], 0E0h
mov	eax, 3
jmp	short loc_641C1598
cmp	c_0, 4000000h
sbb	eax, eax
and	eax, 0FFFFFFFCh
add	eax, 0FCh
mov	[ebp+var_10], eax
cmp	c_0, 4000000h
sbb	eax, eax
add	eax, 6
jmp	loc_641C1598
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	[ebp+var_24], str
mov	[ebp+var_30], items_read
xor	esi, esi
xor	ebx, ebx
mov	items_read, str
jmp	short loc_641C1654
align 4
mov	eax, 1
			
add	result_length, eax
inc	i
test	len, len
js	short loc_641C165C
cmp	i, len
jge	short loc_641C16AC
mov	eax, [str+i*4]
cmp	eax, 0
jz	short loc_641C16AC
jl	loc_641C17D7
cmp	eax, 7Fh
jbe	short loc_641C164C
cmp	eax, 7FFh
ja	short loc_641C1680
mov	eax, 2
jmp	short loc_641C1651
align 10h
cmp	eax, 0FFFFh
ja	short loc_641C1690
mov	eax, 3
jmp	short loc_641C1651
align 10h
cmp	eax, 1FFFFFh
ja	short loc_641C16A0
mov	eax, 4
jmp	short loc_641C1651
align 10h
cmp	eax, 4000000h
sbb	eax, eax
add	eax, 6
jmp	short loc_641C1651
			
lea	eax, [result_length+1]
mov	[esp], eax	
call	_malloc
mov	[ebp+var_2C], eax
mov	[ebp+result], eax
test	eax, eax
jz	loc_641C1747
add	result_length, eax
mov	[ebp+var_28], result_length
cmp	result_length, eax
jbe	loc_641C17FB
mov	edi, [ebp+var_2C]
xor	i, i
nop
mov	eax, [ebp+var_24]
mov	edx, [eax+i*4]
inc	i
cmp	edx, 7Fh
ja	short loc_641C1754
mov	[ebp+var_20], 0
mov	eax, 1
			
test	p, p
jz	short loc_641C176C
lea	ecx, [eax-1]
test	ecx, ecx
jle	loc_641C17CC
lea	eax, [p+eax]
mov	[ebp+var_1C], eax
mov	ebx, eax
nop
mov	al, dl
and	eax, 3Fh
or	eax, 0FFFFFF80h
mov	[ebx-1], al
shr	edx, 6
dec	ecx
dec	ebx
test	ecx, ecx
jg	short loc_641C1708
or	edx, [ebp+var_20]
mov	[p], dl
mov	p, [ebp+var_1C]
cmp	[ebp+var_28], p
ja	short loc_641C16D8
mov	byte ptr [p], 0
mov	ebx, [ebp+items_written]
test	ebx, ebx
jz	short err_out
sub	p, [ebp+var_2C]
mov	eax, [ebp+items_written]
mov	[eax], edi
mov	ecx, [ebp+var_30]
test	ecx, ecx
jz	short loc_641C1747
mov	eax, [ebp+var_30]
mov	[eax], i
			
mov	eax, [ebp+result]
add	esp, 3Ch
pop	result_length
pop	i
pop	p
leave
retn
align 4
cmp	edx, 7FFh
ja	short loc_641C1774
mov	[ebp+var_20], 0C0h
mov	eax, 2
test	p, p
jnz	short loc_641C16F4
mov	[ebp+var_1C], eax
jmp	short loc_641C1721
align 4
cmp	edx, 0FFFFh
ja	short loc_641C1790
mov	[ebp+var_20], 0E0h
mov	eax, 3
jmp	loc_641C16F0
align 10h
cmp	edx, 1FFFFFh
ja	short loc_641C17A9
mov	[ebp+var_20], 0F0h
mov	eax, 4
jmp	loc_641C16F0
cmp	edx, 4000000h
sbb	eax, eax
and	eax, 0FFFFFFFCh
add	eax, 0FCh
mov	[ebp+var_20], eax
cmp	edx, 4000000h
sbb	eax, eax
add	eax, 6
jmp	loc_641C16F0
lea	eax, [p+eax]
mov	[ebp+var_1C], eax
jmp	loc_641C171C
mov	edi, [ebp+var_30]
test	edi, edi
jz	short loc_641C17EF
mov	eax, [ebp+var_30]
mov	[eax], i
mov	[ebp+result], 0
jmp	loc_641C1742
mov	[ebp+result], 0
jmp	loc_641C1747
mov	edi, eax
xor	i, i
jmp	loc_641C1729
public _stringprep_ucs4_to_utf8
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+str]
mov	edx, [ebp+len]
mov	[ebp+len], 0
mov	ecx, [ebp+items_written]
mov	[ebp+str], ecx
mov	ecx, [ebp+items_read]
leave
jmp	_g_ucs4_to_utf8
align 4
public _stringprep_utf8_to_ucs4
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+str]
mov	ecx, [ebp+len]
test	ecx, ecx
js	loc_641C1961
lea	len_0, [str_0+len_0]
cmp	str_0, ecx
jnb	loc_641C198B
cmp	byte ptr [str_0], 0
jz	loc_641C198B
mov	eax, str_0
mov	[ebp+var_1C], 0
xor	edx, edx
jmp	short loc_641C1865
cmp	byte ptr [str_0], 0
jz	short loc_641C1876
movzx	esi, byte ptr [str_0]
movsx	esi, ds:_utf8_skip_data[esi]
add	str_0, esi
inc	edx
cmp	str_0, ecx
jb	short loc_641C1860
			
mov	[ebp+var_1C], edx
lea	str_0, ds:4[edx*4]
mov	[esp], eax
call	_malloc
mov	[ebp+var_20], eax
test	eax, eax
jz	short loc_641C190A
mov	edx, [ebp+var_1C]
test	edx, edx
jz	loc_641C199C
xor	edi, edi
jmp	short loc_641C18AD
align 10h
mov	edx, [ebp+var_20]
mov	[edx+edi*4], eax
inc	str_0
inc	edi
cmp	edi, [ebp+var_1C]
jz	short loc_641C18EB
			
movzx	eax, byte ptr [str_0]
cmp	eax, 7Fh
jbe	short loc_641C18A0
cmp	eax, 0DFh
ja	short loc_641C1918
and	eax, 1Fh
mov	esi, 2
			
mov	edx, 1
lea	esi, [esi+0]
shl	eax, 6
movzx	ecx, byte ptr [str_0+edx]
and	ecx, 3Fh
or	eax, ecx
inc	edx
cmp	edx, esi
jl	short loc_641C18CC
mov	edx, [ebp+var_20]
mov	[edx+edi*4], eax
add	str_0, esi
inc	edi
cmp	edi, [ebp+var_1C]
jnz	short loc_641C18AD
mov	eax, [ebp+var_1C]
shl	eax, 2
mov	edx, [ebp+var_20]
mov	dword ptr [edx+eax], 0
mov	eax, [ebp+items_written]
test	eax, eax
jz	short loc_641C190A
mov	edx, [ebp+var_1C]
mov	eax, [ebp+items_written]
mov	[eax], edx
			
mov	eax, [ebp+var_20]
add	esp, 2Ch
pop	str_0
pop	esi
pop	edi
leave
retn
align 4
cmp	eax, 0EFh
ja	short loc_641C192C
and	eax, 0Fh
mov	esi, 3
jmp	short loc_641C18C4
align 4
cmp	eax, 0F7h
ja	short loc_641C1940
and	eax, 7
mov	esi, 4
jmp	short loc_641C18C4
align 10h
cmp	eax, 0FBh
ja	short loc_641C1954
and	eax, 3
mov	esi, 5
jmp	loc_641C18C4
and	eax, 1
mov	esi, 6
jmp	loc_641C18C4
cmp	byte ptr [str_0], 0
jz	short loc_641C198B
mov	eax, str_0
mov	[ebp+var_1C], 0
xor	edx, edx
lea	esi, [esi+0]
movzx	len_0, byte ptr	[str_0]
movsx	ecx, ds:_utf8_skip_data[ecx]
add	str_0, ecx
inc	edx
cmp	byte ptr [str_0], 0
jnz	short loc_641C1974
jmp	loc_641C1876
			
mov	eax, 4
mov	[ebp+var_1C], 0
jmp	loc_641C1880
xor	eax, eax
jmp	loc_641C18F1
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	[ebp+var_24], str
mov	[ebp+var_28], max_len
mov	ecx, str
mov	[ebp+var_1C], 0
add	str, max_len
mov	[ebp+var_20], str
jmp	short loc_641C19E0
align 4
cmp	wc, 9Fh
ja	loc_641C1E58
inc	[ebp+var_1C]
nop
movzx	result_len, byte ptr [str]
movsx	eax, ds:_utf8_skip_data[eax]
add	str, eax
mov	wc, [ebp+var_28]
test	edx, edx
js	short loc_641C19F0
cmp	str, [ebp+var_20]
jnb	loc_641C1AB0
mov	dl, [str]
cmp	dl, 0
jz	loc_641C1AB0
jl	short loc_641C1A24
and	edx, 7Fh
lea	eax, [wc-0AC00h]
cmp	eax, 2BAFh
ja	short loc_641C19C4
cmp	eax, 2BA3h
jbe	loc_641C1A98
mov	eax, 1
add	[ebp+var_1C], result_len
jmp	short loc_641C19D4
align 4
movzx	eax, dl
mov	ebx, eax
and	ebx, 0E0h
cmp	ebx, 0C0h
jz	loc_641C1D48
mov	ebx, eax
and	ebx, 0F0h
cmp	ebx, 0E0h
jz	loc_641C1DF7
mov	ebx, eax
and	ebx, 0F8h
cmp	ebx, 0F0h
jz	loc_641C1E12
mov	ebx, eax
and	ebx, 0FCh
cmp	ebx, 0F8h
jz	loc_641C1E3A
and	eax, 0FEh
cmp	eax, 0FCh
jnz	loc_641C19D0
mov	edi, 6
mov	eax, 1
jmp	loc_641C1D52
align 4
mov	wc, 1Ch
mov	ebx, edx
cdq
idiv	ebx
cmp	edx, 1
sbb	eax, eax
add	result_len, 3
jmp	loc_641C1A1D
align 10h
mov	esi, [ebp+var_1C]
lea	eax, ds:4[esi*4]
mov	[esp], eax	
call	_malloc
mov	[ebp+var_2C], eax
test	eax, eax
jz	loc_641C1D3C
mov	ebx, [ebp+var_24]
mov	[ebp+var_30], 0
mov	[ebp+var_24], 0
mov	edi, [ebp+var_28]
add	edi, str
mov	[ebp+var_38], edi
xchg	ax, ax
mov	edi, [ebp+var_28]
test	edi, edi
js	short loc_641C1AF8
cmp	str, [ebp+var_38]
jnb	loc_641C1D1C
mov	al, [str]
cmp	al, 0
jz	loc_641C1D1C
jl	loc_641C1BCC
and	eax, 7Fh
lea	ecx, [wc-0AC00h]
cmp	ecx, 2BAFh
jbe	loc_641C1BA0
cmp	wc, 9Fh
ja	loc_641C2295
mov	ecx, wc
mov	esi, [ebp+var_24]
mov	edi, [ebp+var_2C]
mov	[edi+esi*4], wc
inc	esi
mov	[ebp+var_1C], esi
nop
mov	result_len, [ebp+var_1C]
test	eax, eax
jz	short loc_641C1B7C
mov	pd, [ebp+var_24]
mov	wc, [ebp+var_2C]
mov	eax, [ecx+edx*4]
cmp	eax, 2FAFFh
ja	loc_641C1C40
mov	edx, eax
shr	edx, 8
mov	dx, ds:_combining_class_table_part1[edx+edx]
cmp	dx, 10FFh
jle	loc_641C1C64
movsx	edx, dx
sub	edx, 1100h
test	cc, cc
jz	loc_641C1C80
mov	eax, [ebp+var_30]
mov	[ebp+var_24], eax
movzx	eax, byte ptr [str]
movsx	eax, ds:_utf8_skip_data[eax]
add	str, eax
mov	pd, [ebp+var_24]
mov	[ebp+var_30], edx
mov	wc, [ebp+var_1C]
mov	[ebp+var_24], ecx
jmp	loc_641C1AE8
align 10h
mov	edx, [ebp+var_24]
mov	edi, [ebp+var_2C]
lea	esi, [edi+edx*4]
cmp	ecx, 2BA3h
jbe	loc_641C1C9C
test	esi, esi
jz	short loc_641C1BBB
mov	[esi], wc
mov	wc, 1
add	result_len, [ebp+var_24]
mov	[ebp+var_1C], result_len
jmp	loc_641C1B38
align 4
movzx	edx, al
mov	ecx, edx
and	ecx, 0E0h
cmp	ecx, 0C0h
jz	loc_641C1DA0
mov	ecx, edx
and	ecx, 0F0h
cmp	ecx, 0E0h
jz	loc_641C1E06
mov	ecx, edx
and	ecx, 0F8h
cmp	ecx, 0F0h
jz	loc_641C1E2B
mov	ecx, edx
and	ecx, 0FCh
cmp	ecx, 0F8h
jz	loc_641C1E49
and	edx, 0FEh
cmp	edx, 0FCh
jz	loc_641C2198
lea	esi, [esi+0]
mov	ecx, 0FFFFFFFFh
jmp	loc_641C1B2A
align 10h
lea	edx, [eax-0E0000h]
cmp	edx, 2FFFFh
ja	short loc_641C1C80
shr	edx, 8
mov	dx, ds:_combining_class_table_part2[edx+edx]
cmp	dx, 10FFh
jg	loc_641C1B6B
and	eax, 0FFh
movsx	edx, dx
shl	edx, 8
movzx	edx, ds:_cclass_data[eax+edx]
test	cc, cc
jnz	loc_641C1B7C
nop
mov	cc, [ebp+var_1C]
sub	edx, [ebp+var_30] 
mov	esi, [ebp+var_30]
mov	edi, [ebp+var_2C]
lea	eax, [edi+esi*4] 
call	_g_unicode_canonical_ordering
jmp	loc_641C1B82
align 4
mov	edx, 1Ch
mov	wc, ecx
mov	edi, edx
cdq
idiv	edi
add	edx, 11A7h
mov	[ebp+var_20], edx
test	esi, esi
jz	short loc_641C1CF8
mov	eax, 6F74AE27h
imul	ecx
mov	edi, edx
sar	edi, 8
mov	eax, ecx
cdq
sub	edi, edx
mov	edx, edi
add	edx, 1100h
mov	[esi], edx
lea	edx, [edi+edi*8]
lea	edx, [edi+edx*8]
lea	eax, [edi+edx*2]
shl	eax, 2
sub	ecx, eax
mov	eax, 92492493h
imul	ecx
lea	eax, [ecx+edx]
sar	eax, 4
sar	ecx, 1Fh
sub	eax, ecx
add	eax, 1161h
mov	[esi+4], eax
cmp	[ebp+var_20], 11A7h
jz	loc_641C1E21
test	esi, esi
jz	short loc_641C1D0F
mov	edx, [ebp+var_20]
mov	[esi+8], edx
mov	eax, 3
jmp	loc_641C1BC0
align 4
mov	esi, [ebp+var_24]
test	esi, esi
jnz	loc_641C1EE8
mov	eax, [ebp+var_2C]
mov	dword ptr [eax], 0
xor	eax, eax
mov	n_wc, [ebp+var_2C]
mov	dword ptr [esi+eax], 0
mov	eax, [ebp+var_2C]
add	esp, 3Ch
pop	str
pop	esi
pop	edi
leave
retn
align 4
mov	edi, 2
mov	eax, 1Fh
movsx	ebx, byte ptr [str+1]
mov	esi, ebx
and	esi, 0C0h
add	esi, 0FFFFFF80h
jnz	loc_641C19D0
movsx	edx, dl
and	wc, eax
mov	eax, 1
jmp	short loc_641C1D89
align 4
movsx	ebx, byte ptr [str+eax]
mov	esi, ebx
and	esi, 0C0h
add	esi, 0FFFFFF80h
jnz	loc_641C19D0
mov	esi, wc
shl	esi, 6
mov	wc, ebx
and	wc, 3Fh
or	wc, esi
inc	eax
cmp	eax, edi
jl	short loc_641C1D74
jmp	loc_641C1A00
align 10h
mov	edi, 2
mov	edx, 1Fh
movsx	ecx, byte ptr [str+1]
mov	esi, ecx
and	esi, 0C0h
add	esi, 0FFFFFF80h
jnz	loc_641C1C34
movsx	eax, al
and	wc, edx
mov	edx, 1
jmp	short loc_641C1DE1
align 4
movsx	ecx, byte ptr [str+edx]
mov	esi, ecx
and	esi, 0C0h
add	esi, 0FFFFFF80h
jnz	loc_641C1C34
mov	esi, wc
shl	esi, 6
mov	wc, ecx
and	wc, 3Fh
or	wc, esi
inc	edx
cmp	edi, edx
jg	short loc_641C1DCC
jmp	loc_641C1B0B
mov	edi, 3
mov	eax, 0Fh
jmp	loc_641C1D52
mov	edi, 3
mov	edx, 0Fh
jmp	short loc_641C1DAA
mov	edi, 4
mov	eax, 7
jmp	loc_641C1D52
mov	eax, 2
jmp	loc_641C1BC0
mov	edi, 4
mov	edx, 7
jmp	loc_641C1DAA
mov	edi, 5
mov	eax, 3
jmp	loc_641C1D52
mov	edi, 5
mov	edx, 3
jmp	loc_641C1DAA
cmp	wc, 2FA1Dh
ja	loc_641C19D0
mov	esi, 1417h
xor	ebx, ebx
nop
lea	eax, [ebx+esi]
mov	edi, eax
shr	edi, 1Fh
lea	eax, [edi+eax]
sar	eax, 1
mov	edi, dword ptr ds:_decomp_table._ch[eax*8]
cmp	edi, wc
jz	short loc_641C1E98
cmp	ebx, eax
jz	loc_641C19D0
cmp	edi, wc
jnb	short loc_641C1E94
mov	ebx, eax
jmp	short loc_641C1E6C
mov	esi, eax
jmp	short loc_641C1E6C
movzx	wc, ds:_decomp_table.compat_offset[eax*8]
cmp	edx, 0FFFFh
jz	loc_641C2219
mov	eax, edx
add	decomp,	offset _decomp_expansion_string
jz	loc_641C19D0
cmp	ds:_decomp_expansion_string[edx], 0
jz	short loc_641C1EDE
xor	edx, edx
movzx	ebx, byte ptr [decomp]
movsx	ebx, ds:_utf8_skip_data[ebx]
add	decomp,	ebx
inc	edx
cmp	byte ptr [decomp], 0
jnz	short loc_641C1EC4
add	[ebp+var_1C], edx
jmp	loc_641C19D4
xor	edx, edx
add	[ebp+var_1C], edx
jmp	loc_641C19D4
mov	edx, [ebp+var_24]
sub	edx, [ebp+var_30] 
mov	str, [ebp+var_30]
mov	esi, [ebp+var_2C]
lea	eax, [esi+ebx*4] 
call	_g_unicode_canonical_ordering
mov	edi, [ebp+var_24]
mov	dword ptr [esi+edi*4], 0
xor	edi, edi
xor	edx, edx
xor	ecx, ecx
mov	ebx, [ebp+var_2C]
lea	ebx, [ebx+i*4]
mov	[ebp+var_1C], ebx
mov	ebx, [ebx]
cmp	ebx, 2FAFFh
ja	loc_641C2148
mov	eax, ebx
shr	eax, 8
mov	ax, ds:_combining_class_table_part1[eax+eax]
cmp	ax, 10FFh
jle	loc_641C2181
cwde
sub	eax, 1100h
mov	[ebp+var_38], eax
test	i, i
jz	loc_641C2124
test	last_cc, last_cc
jz	short loc_641C1F58
cmp	last_cc, [ebp+var_38]
jz	loc_641C2164
mov	eax, [ebp+var_2C]
lea	eax, [eax+edi*4]
mov	[ebp+var_28], eax
mov	last_cc, [eax]
mov	[ebp+var_20], edx
mov	eax, edx
sub	eax, 1100h
cmp	eax, 12h
ja	loc_641C203A
mov	n_wc, ebx
sub	esi, 1161h
js	loc_641C203A
cmp	esi, 14h
jg	loc_641C203A
lea	edx, [eax+eax*4]
lea	eax, [eax+edx*4]
add	eax, esi
lea	edx, ds:0[eax*4]
lea	eax, ds:0[edx*8]
sub	eax, edx
add	eax, 0AC00h
mov	ebx, [ebp+var_28]
mov	[ebx], eax
lea	eax, [ecx+1]
cmp	[ebp+var_24], j
jbe	short loc_641C1FDA
mov	esi, [ebp+var_2C]
lea	ebx, [esi+j*4]
mov	edx, [ebp+var_1C]
mov	[ebp+var_1C], i
mov	esi, [ebp+var_24]
xchg	ax, ax
mov	i, [ebx]
mov	[edx], ecx
inc	j
add	ebx, 4
add	edx, 4
cmp	n_wc, j
ja	short loc_641C1FC8
mov	ecx, [ebp+var_1C]
dec	[ebp+var_24]
lea	j, [i-1]
cmp	edi, i
jz	loc_641C2226
mov	ebx, [ebp+var_2C]
mov	edx, [ebx+ecx*4-8]
cmp	edx, 2FAFFh
ja	loc_641C21FB
mov	i, edx
shr	ecx, 8
mov	cx, ds:_combining_class_table_part1[ecx+ecx]
cmp	cx, 10FFh
jle	loc_641C224A
movsx	ecx, cx
sub	ecx, 1100h
mov	[ebp+var_38], ecx
mov	ecx, edi
mov	edi, i
lea	i, [edi+1]
cmp	i, [ebp+var_24]
jb	loc_641C2139
mov	i, [ebp+var_24]
shl	eax, 2
jmp	loc_641C1D32
mov	n_wc, [ebp+var_20]
sub	esi, 0AC00h
mov	[ebp+var_30], esi
cmp	esi, 2BA3h
ja	short loc_641C2077
mov	eax, esi
mov	esi, 1Ch
cdq
idiv	esi
test	edx, edx
jnz	short loc_641C2077
mov	eax, ebx
sub	eax, 11A7h
js	short loc_641C2077
cmp	eax, 1Ch
jg	short loc_641C2077
add	eax, [ebp+var_20]
mov	edx, [ebp+var_28]
mov	[edx], eax
jmp	loc_641C1FAF
mov	eax, [ebp+var_20]
shr	eax, 8
cmp	eax, 30h
ja	short loc_641C20D9
mov	ax, ds:_compose_table[eax+eax]
cmp	ax, 10FFh
jg	loc_641C21F0
movzx	edx, byte ptr [ebp+var_20]
cwde
shl	eax, 8
add	eax, edx
mov	dx, ds:_compose_data[eax+eax]
lea	eax, [edx-93h]
cmp	ax, 0D1h
ja	short loc_641C20DB
movzx	edx, dx
sub	edx, 93h
movzx	eax, ds:_compose_first_single[edx*4]
cmp	ebx, eax
jnz	short loc_641C2124
movzx	eax, ds:(_compose_first_single+2)[edx*4]
mov	ebx, [ebp+var_28]
mov	[ebx], eax
jmp	loc_641C1FAF
xor	edx, edx
mov	eax, ebx
shr	eax, 8
cmp	eax, 30h
ja	loc_641C21A7
mov	ax, ds:_compose_table[eax+eax]
cmp	ax, 10FFh
jle	loc_641C226A
sub	eax, 1100h
cmp	ax, 183h
jbe	loc_641C21A9
movzx	eax, ax
lea	edx, [eax-184h]
movzx	eax, ds:_compose_second_single[edx*4]
cmp	[ebp+var_20], eax
jz	loc_641C2283
mov	ebx, [ebp+var_38]
test	ebx, ebx
jnz	short loc_641C2164
mov	edi, i
lea	eax, [i+1]
cmp	i, [ebp+var_24]
jnb	loc_641C202F
mov	edi, ecx
mov	last_cc, [ebp+var_38]
mov	ecx, i
jmp	loc_641C1F0C
align 4
lea	eax, [ebx-0E0000h]
cmp	eax, 2FFFFh
jbe	short loc_641C216C
mov	[ebp+var_38], 0
jmp	loc_641C1F43
align 4
mov	eax, i
mov	i, edi
mov	edi, eax
jmp	short loc_641C212D
shr	eax, 8
mov	ax, ds:_combining_class_table_part2[eax+eax]
cmp	ax, 10FFh
jg	loc_641C1F3A
movzx	n_wc, bl
cwde
shl	eax, 8
movzx	eax, ds:_cclass_data[esi+eax]
mov	[ebp+var_38], eax
jmp	loc_641C1F43
mov	edi, 6
mov	edx, 1
jmp	loc_641C1DAA
xor	eax, eax
lea	ebx, [edx-1]
cmp	bx, 91h
ja	loc_641C2124
cmp	ax, 164h
jbe	loc_641C2124
movzx	ebx, ax
movzx	edx, dx
dec	edx
mov	eax, edx
shl	eax, 5
sub	eax, edx
lea	eax, [ebx+eax-165h]
movzx	eax, ds:_compose_array[eax+eax]
test	eax, eax
jz	loc_641C2124
mov	edx, [ebp+var_28]
mov	[edx], eax
jmp	loc_641C1FAF
lea	edx, [eax-1100h]
jmp	loc_641C20A6
lea	i, [edx-0E0000h]
cmp	ecx, 2FFFFh
jbe	short loc_641C2234
mov	ecx, edi
mov	edi, i
mov	[ebp+var_38], 0
jmp	loc_641C212D
movzx	edx, ds:_decomp_table.canon_offset[eax*8]
jmp	loc_641C1EAC
mov	ecx, edi
mov	[ebp+var_38], 0
jmp	loc_641C212D
shr	ecx, 8
mov	cx, ds:_combining_class_table_part2[ecx+ecx]
cmp	cx, 10FFh
jg	loc_641C2013
and	edx, 0FFh
movsx	ecx, cx
shl	ecx, 8
movzx	ecx, ds:_cclass_data[edx+ecx]
mov	[ebp+var_38], ecx
mov	ecx, edi
mov	edi, i
jmp	loc_641C212D
and	ebx, 0FFh
cwde
shl	eax, 8
add	eax, ebx
mov	ax, ds:_compose_data[eax+eax]
jmp	loc_641C2100
movzx	eax, ds:(_compose_second_single+2)[edx*4]
mov	esi, [ebp+var_28]
mov	[esi], eax
jmp	loc_641C1FAF
cmp	wc, 2FA1Dh
ja	loc_641C1B28
mov	edi, 1417h
xor	esi, esi
nop
lea	edx, [esi+edi]
mov	ecx, edx
shr	ecx, 1Fh
lea	edx, [ecx+edx]
sar	edx, 1
mov	ecx, dword ptr ds:_decomp_table._ch[edx*8]
cmp	wc, eax
jz	short loc_641C22D4
cmp	esi, edx
jz	loc_641C1B28
cmp	ecx, wc
jnb	short loc_641C22D0
mov	esi, edx
jmp	short loc_641C22A8
mov	edi, edx
jmp	short loc_641C22A8
movzx	wc, ds:_decomp_table.compat_offset[edx*8]
cmp	eax, 0FFFFh
jz	loc_641C2444
mov	edx, eax
add	pd, offset _decomp_expansion_string
jz	loc_641C1B2A
mov	al, ds:_decomp_expansion_string[eax]
test	al, al
jz	loc_641C2439
mov	edi, [ebp+var_24]
mov	wc, [ebp+var_2C]
lea	esi, [ecx+edi*4]
mov	[ebp+var_1C], edi
mov	[ebp+var_34], str
jmp	short loc_641C2331
and	eax, 7Fh
mov	[esi], eax
inc	[ebp+var_1C]
movzx	eax, byte ptr [pd]
movsx	eax, ds:_utf8_skip_data[eax]
add	pd, eax
mov	al, [pd]
add	esi, 4
test	al, al
jz	short loc_641C23A0
test	al, al
jns	short loc_641C2314
movzx	ecx, al
mov	str, ecx
and	ebx, 0E0h
cmp	ebx, 0C0h
jz	short loc_641C23A8
mov	ebx, ecx
and	ebx, 0F0h
cmp	ebx, 0E0h
jz	loc_641C23F8
mov	ebx, ecx
and	ebx, 0F8h
cmp	ebx, 0F0h
jz	loc_641C2408
mov	ebx, ecx
and	ebx, 0FCh
cmp	ebx, 0F8h
jz	loc_641C2418
and	ecx, 0FEh
cmp	ecx, 0FCh
jz	loc_641C2428
mov	eax, 0FFFFFFFFh
jmp	loc_641C2317
mov	str, [ebp+var_34]
jmp	loc_641C1B38
mov	[ebp+var_20], 2
mov	ecx, 1Fh
movsx	ebx, byte ptr [pd+1]
mov	edi, ebx
and	edi, 0C0h
add	edi, 0FFFFFF80h
jnz	short loc_641C2396
movsx	eax, al
and	eax, ecx
mov	ecx, 1
mov	edi, eax
shl	edi, 6
mov	eax, ebx
and	eax, 3Fh
or	eax, edi
inc	ecx
cmp	ecx, [ebp+var_20]
jge	loc_641C2317
movsx	ebx, byte ptr [pd+ecx]
mov	edi, ebx
and	edi, 0C0h
add	edi, 0FFFFFF80h
jnz	short loc_641C2396
jmp	short loc_641C23CF
mov	[ebp+var_20], 3
mov	ecx, 0Fh
jmp	short loc_641C23B4
align 4
mov	[ebp+var_20], 4
mov	ecx, 7
jmp	short loc_641C23B4
align 4
mov	[ebp+var_20], 5
mov	ecx, 3
jmp	short loc_641C23B4
align 4
mov	[ebp+var_20], 6
mov	ecx, 1
jmp	loc_641C23B4
mov	wc, [ebp+var_24]
mov	[ebp+var_1C], ecx
jmp	loc_641C1B38
movzx	eax, ds:_decomp_table.canon_offset[edx*8]
jmp	loc_641C22E7
align 4
public _stringprep_ucs4_nfkc_normalize
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 0 
xor	ecx, ecx	
mov	edx, [ebp+len]	
mov	result_wc, [ebp+str] 
call	_g_ucs4_to_utf8
mov	ebx, result_wc
mov	edx, 0FFFFFFFFh
call	_T_156
mov	[esp], p	
mov	[ebp+var_C], result_wc
call	_free
mov	result_wc, [ebp+var_C]
add	esp, 24h
pop	p
leave
retn
align 4
public _stringprep_utf8_nfkc_normalize
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	edx, [ebp+len]
mov	eax, [ebp+str]
call	_T_156
mov	ebx, eax
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 0 
xor	ecx, ecx	
mov	edx, 0FFFFFFFFh	
call	_g_ucs4_to_utf8
mov	[esp], ebx	
mov	[ebp+var_C], eax
call	_free
mov	eax, [ebp+var_C]
add	esp, 24h
pop	ebx
leave
retn
align 4
public _regerror
push	ebp
mov	ebp, esp
mov	eax, 0FFFFFFFFh
leave
retn
align 4
public _regfree
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+preg]
mov	eax, [eax]
mov	[ebp+preg], eax
leave
jmp	_free
			
push	ebp
mov	ebp, esp
push	edi
mov	eax, ds:_syntax_table_inited_37674
test	eax, eax
jz	loc_641C26A5
mov	ds:_re_compile_initialized, 1
xor	a, a
lea	esi, [esi+0]
mov	ds:_regexp_plain_ops[a], 1
mov	ds:_regexp_quoted_ops[a], 1
inc	a
cmp	a, 100h
jnz	short loc_641C251C
mov	ax, 30h
xchg	ax, ax
mov	ds:_regexp_quoted_ops[eax], 0Ch
inc	a
cmp	a, 3Ah
jnz	short loc_641C2538
mov	ds:_regexp_plain_ops+5Ch, 3
mov	edx, ds:_regexp_syntax
test	dl, 1
jz	loc_641C267B
mov	ds:_regexp_plain_ops+28h, 0Ah
mov	ds:_regexp_plain_ops+29h, 0Bh
test	dl, 2
jz	loc_641C266F
mov	ds:_regexp_plain_ops+7Ch, 9
mov	ds:_regexp_plain_ops+2Ah, 7
test	dl, 4
jz	loc_641C265C
mov	ds:_regexp_quoted_ops+2Bh, 8
mov	ds:_regexp_quoted_ops+3Fh, 6
test	dl, 10h
jz	short loc_641C25A3
mov	ds:_regexp_plain_ops+0Ah, 9
mov	ds:_regexp_plain_ops+5Bh, 0Eh
mov	ds:_regexp_plain_ops+5Eh, 4
mov	ds:_regexp_plain_ops+24h, 5
mov	ds:_regexp_plain_ops+2Eh, 2
test	dl, dl
js	short loc_641C25FB
mov	ds:_regexp_quoted_ops+77h, 11h
mov	ds:_regexp_quoted_ops+57h, 12h
mov	ds:_regexp_quoted_ops+3Ch, 13h
mov	ds:_regexp_quoted_ops+3Eh, 14h
mov	ds:_regexp_quoted_ops+62h, 15h
mov	ds:_regexp_quoted_ops+42h, 16h
mov	ds:_regexp_quoted_ops+60h, 0Fh
mov	ds:_regexp_quoted_ops+27h, 10h
mov	ecx, edx
and	ecx, 40h
jz	short loc_641C2609
mov	ds:_regexp_quoted_ops+76h, 0Dh
xor	a, a
nop
mov	ds:_regexp_precedences[a], 4
inc	a
cmp	a, 17h
jnz	short loc_641C260C
test	dl, 8
jnz	short loc_641C268E
mov	ds:_regexp_precedences+9, 2
mov	ds:_regexp_precedences+4, 3
mov	ds:_regexp_precedences+5, 3
mov	ds:_regexp_precedences+0Bh, 1
mov	ds:_regexp_precedences,	0
shr	edx, 5
and	edx, 1
mov	ds:_regexp_context_indep_ops, edx
xor	a, a
test	ecx, ecx
setnz	al
mov	ds:_regexp_ansi_sequences, eax
pop	edi
leave
retn
mov	ds:_regexp_plain_ops+2Bh, 8
mov	ds:_regexp_plain_ops+3Fh, 6
jmp	loc_641C2597
mov	ds:_regexp_quoted_ops+7Ch, 9
jmp	loc_641C2579
mov	ds:_regexp_quoted_ops+28h, 0Ah
mov	ds:_regexp_quoted_ops+29h, 0Bh
jmp	loc_641C2569
mov	ds:_regexp_precedences+9, 3
mov	ds:_regexp_precedences+4, 2
mov	ds:_regexp_precedences+5, 2
jmp	short loc_641C2633
mov	ds:_syntax_table_inited_37674, 1
mov	edx, offset _re_syntax_table
mov	ecx, 100h
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, 61h
mov	ds:_re_syntax_table[a],	1
inc	a
cmp	a, 7Bh
jnz	short loc_641C26C4
mov	al, 41h
nop
mov	ds:_re_syntax_table[eax], 1
inc	a
cmp	a, 5Bh
jnz	short loc_641C26D4
mov	al, 30h
nop
mov	ds:_re_syntax_table[eax], 1
inc	a
cmp	a, 3Ah
jnz	short loc_641C26E4
jmp	loc_641C250D
align 4
public _re_set_syntax
push	ebp
mov	ebp, esp
push	ebx
mov	ebx, ds:_regexp_syntax
mov	eax, [ebp+syntax]
mov	ds:_regexp_syntax, eax
call	_re_compile_initialize
mov	eax, ret
pop	ret
leave
retn
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, code
mov	esi, pos
mov	[ebp+var_1C], visited
mov	ebx, [ebp+fastmap]
mov	code, visited
add	eax, pos
cmp	byte ptr [eax],	0
jnz	short loc_641C2758
mov	byte ptr [eax],	1
			
lea	eax, [code+pos]
inc	pos
cmp	byte ptr [eax],	15h 
jbe	short loc_641C2760
call	_abort		
			
xor	eax, eax
nop
mov	byte ptr [fastmap_0+a],	1
inc	a
cmp	a, 100h
jnz	short loc_641C2744
			
mov	a, [ebp+can_be_null] 
mov	byte ptr [eax],	1
xchg	ax, ax
			
add	esp, 2Ch
pop	fastmap_0
pop	pos
pop	code
leave
retn
movzx	a, byte	ptr [eax]
jmp	ds:off_64250A80[edx*4] 
			
mov	cl, [code+pos]	
xor	eax, eax
nop
movzx	edx, al
cmp	cl, ds:_re_syntax_table[a]
jz	short loc_641C277F
mov	byte ptr [fastmap_0+eax], 1
inc	eax
cmp	a, 100h
jnz	short loc_641C2770
jmp	short loc_641C2758
			
mov	byte ptr [fastmap_0+0Ah], 1
mov	eax, [ebp+can_be_null]
cmp	byte ptr [eax],	0
jnz	short loc_641C2758
mov	byte ptr [eax],	2
jmp	short loc_641C2758
			
inc	eax		
jmp	short loc_641C2736
			
mov	cl, [code+pos]	
xor	eax, eax
jmp	short loc_641C27AC
			
inc	eax
cmp	a, 100h
jz	short loc_641C2758
movzx	edx, al
cmp	cl, ds:_re_syntax_table[a]
jnz	short loc_641C27A4
mov	byte ptr [fastmap_0+eax], 1
jmp	short loc_641C27A4
			
movzx	edx, byte ptr [code+pos]
lea	eax, [pos+1]
add	esi, 2
movzx	eax, byte ptr [code+eax]
shl	eax, 8
or	eax, a
cwde
lea	a, [eax+pos]	
mov	[esp+4], fastmap_0 
mov	eax, [ebp+can_be_null]
mov	[esp], eax	
mov	visited, [ebp+var_1C] 
mov	eax, code	
call	_re_compile_fastmap_aux
jmp	loc_641C2733
			
movzx	edx, byte ptr [code+pos]
movzx	eax, byte ptr [code+pos+1]
shl	eax, 8
or	eax, a
cwde
lea	pos, [eax+pos+2]
mov	eax, [ebp+var_1C]
add	eax, pos
cmp	byte ptr [eax],	0
jz	loc_641C2730
jmp	loc_641C2758
align 4
			
inc	pos		
jmp	loc_641C2733
			
mov	eax, 1		
nop
cmp	eax, 0Bh
jz	short loc_641C2835
mov	byte ptr [fastmap_0+eax-1], 1
cmp	eax, 0FFh
jg	loc_641C2758
inc	eax
jmp	short loc_641C2820
			
movzx	eax, byte ptr [code+pos] 
mov	byte ptr [fastmap_0+eax], 1
jmp	loc_641C2758
			
lea	pos, [code+pos]	
xor	code, code
xchg	ax, ax
mov	al, [esi]
test	al, al
jz	short loc_641C2871
lea	edx, [fastmap_0+a*8]
xor	b, b
jmp	short loc_641C285E
align 4
mov	al, [esi]
movsx	eax, al
sar	eax, cl
test	al, 1
jz	short loc_641C286A
mov	byte ptr [edx],	1
inc	b
inc	edx
cmp	b, 8
jnz	short loc_641C285C
inc	a
inc	esi
cmp	a, 20h
jnz	short loc_641C284C
jmp	loc_641C2758
align 10h
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 22Ch
mov	ebx, buffer
mov	[ebp+pos], pos
cmp	used, 200h
jbe	short loc_641C2910
mov	[esp], used	
mov	[ebp+var_220], used
call	_malloc
mov	esi, eax
test	eax, eax
mov	edx, [ebp+var_220]
jz	loc_641C295C
mov	eax, [ebp+can_be_null]
mov	byte ptr [eax],	0
xor	eax, eax
mov	ecx, 100h
mov	edi, [ebp+fastmap]
rep stosb
mov	fastmap_0, esi
mov	ecx, edx
rep stosb
mov	eax, [ebp+fastmap]
mov	[esp+4], eax	
mov	ecx, [ebp+can_be_null]
mov	[esp], ecx	
mov	ecx, esi	
mov	used, [ebp+pos]	
mov	eax, buffer	
call	_re_compile_fastmap_aux
lea	eax, [ebp+small_visited]
cmp	esi, eax
jz	short loc_641C2900
mov	[esp], esi	
call	_free
mov	eax, 1
add	esp, 22Ch
pop	buffer
pop	esi
pop	visited
leave
retn
mov	eax, [ebp+can_be_null]
mov	byte ptr [eax],	0
xor	eax, eax
mov	pos, 100h
mov	edi, [ebp+fastmap]
rep stosb
lea	esi, [ebp+small_visited]
mov	fastmap_0, esi
mov	ecx, used
rep stosb
mov	eax, [ebp+fastmap]
mov	[esp+4], eax	
mov	ecx, [ebp+can_be_null]
mov	[esp], ecx	
mov	ecx, esi	
mov	used, [ebp+pos]	
mov	eax, buffer	
call	_re_compile_fastmap_aux
mov	eax, 1
add	esp, 22Ch
pop	buffer
pop	esi
pop	edi
leave
retn
align 4
xor	eax, eax
jmp	short loc_641C294F
public _re_compile_fastmap
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+bufp]
mov	eax, [ebx+0Ch]
test	eax, eax
jz	short loc_641C29AB
cmp	byte ptr [bufp_0+14h], 0
jnz	short loc_641C29AB
mov	edx, [bufp_0+8]	
test	edx, edx
jle	short loc_641C29BA
mov	[esp+4], eax	
lea	eax, [bufp_0+15h]
mov	[esp], eax	
xor	ecx, ecx	
mov	eax, [bufp_0]	
call	_re_do_compile_fastmap
test	eax, eax
jz	short loc_641C29AB
mov	eax, [bufp_0]
mov	al, [eax]
cmp	al, 1
jz	short loc_641C29B4
cmp	al, 0Eh
setz	al
shl	eax, 1
mov	[bufp_0+17h], al
mov	byte ptr [bufp_0+14h], 1
			
add	esp, 14h
pop	bufp_0
leave
retn
align 4
mov	byte ptr [bufp_0+17h], 1
jmp	short loc_641C29A7
mov	dword ptr [esp+8], 37Eh	
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aBufpUsed0 
call	__assert
align 4
public _re_match_2
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 80Ch
mov	eax, [ebp+mstop]
mov	edx, [ebp+pos]
test	edx, edx
js	loc_641C3654
mov	edi, [ebp+size1]
test	edi, edi
js	loc_641C3654
mov	esi, [ebp+size2]
test	esi, esi
js	loc_641C3654
test	mstop_0, mstop_0
js	loc_641C3654
mov	edx, [ebp+size2]
add	edx, [ebp+size1]
cmp	mstop_0, edx
jg	loc_641C3688
cmp	[ebp+pos], mstop_0
jg	loc_641C36DC
mov	edx, [ebp+size1]
cmp	[ebp+pos], edx
jle	loc_641C2AEC
mov	edx, [ebp+pos]
sub	edx, [ebp+size1]
add	edx, [ebp+string2]
mov	[ebp+var_7CC], edx
sub	mstop_0, [ebp+size1]
add	eax, [ebp+string2]
mov	[ebp+partend], eax
mov	[ebp+part_2_end], eax
mov	[ebp+var_7EC], eax
mov	textend, [ebp+bufp]
cmp	byte ptr [eax+16h], 0
jz	short loc_641C2A81
mov	ebx, [ebp+regs]
test	ebx, ebx
jz	short loc_641C2A81
xor	eax, eax
lea	edx, [ebp+regend_text]
xchg	ax, ax
mov	dword ptr [edx+a*4], 0
inc	a
cmp	a, 0Ah
jnz	short loc_641C2A74
			
mov	edx, [ebp+bufp]
mov	edx, [edx]
mov	[ebp+match_end], edx
mov	ecx, [ebp+bufp]
mov	ecx, [ecx+10h]
mov	[ebp+var_7DC], ecx
lea	a, [ebp+initial_failure_stack]
mov	[ebp+var_7FC], eax
lea	edx, [ebp+map]
mov	[ebp+failure_stack_end], edx
mov	ecx, [ebp+match_end]
mov	dl, [ecx]
mov	esi, eax
mov	[ebp+var_7D8], eax
mov	ecx, [ebp+string2]
add	ecx, [ebp+size2]
mov	[ebp+var_7E4], ecx
mov	eax, [ebp+string1]
add	eax, [ebp+size1]
mov	[ebp+var_7E8], eax
mov	code, [ebp+match_end]
inc	code
cmp	dl, 15h		
jbe	short loc_641C2B24
			
call	_abort		
align 4
cmp	edx, mstop_0
jl	loc_641C32A0
mov	ecx, [ebp+string1]
add	ecx, mstop_0
mov	[ebp+partend], ecx
sub	mstop_0, edx
add	eax, [ebp+string2]
mov	[ebp+var_7EC], ecx
mov	ecx, [ebp+string1]
add	ecx, [ebp+pos]
mov	[ebp+var_7CC], ecx
mov	[ebp+part_2_end], textend
jmp	loc_641C2A5A
align 4
movzx	text, dl
jmp	ds:off_64250BAC[eax*4] 
align 10h
			
mov	eax, [ebp+partend] 
cmp	[ebp+var_7CC], eax
jz	loc_641C3536
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx]
mov	a, [ebp+var_7DC]
test	ecx, ecx
jz	short loc_641C2B5F
mov	ecx, [ebp+var_7DC]
movzx	ch_0, byte ptr [ecx+ch_0]
movsx	edx, ds:_re_syntax_table[ch_0]
movzx	ch_0, byte ptr [code]
cmp	edx, eax
jz	loc_641C31A2
lea	failure_sp, [failure_sp+0]
			
cmp	[ebp+var_7D8], failure_sp
jz	loc_641C327C
sub	failure_sp, 0Ch
mov	reg, [failure_sp]
test	text, text
jnz	short loc_641C2BA1
mov	regtext, [ebp+var_7D8]
nop
cmp	failure_stack_start, failure_sp
jz	loc_641C327C
sub	failure_sp, 0Ch
mov	text, [failure_sp]
test	text, text
jz	short loc_641C2B90
mov	regtext, [failure_sp+4]
mov	[ebp+partend], edx
mov	ch_0, [failure_sp+8]
mov	dl, [code]
			
mov	[ebp+var_7CC], text
mov	[ebp+match_end], code
jmp	loc_641C2AD8
			
mov	eax, [ebp+string1] 
cmp	[ebp+var_7CC], eax
jz	short loc_641C2B74
mov	edx, [ebp+var_7E4]
cmp	[ebp+var_7CC], edx
jz	short loc_641C2B74
mov	regpartend, [ebp+size2]
test	edi, edi
jnz	loc_641C33B7
mov	a, [ebp+var_7E8]
cmp	[ebp+var_7CC], ecx
jz	short loc_641C2B74
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx-1]
cmp	ds:_re_syntax_table[eax], 1
setnz	dl
mov	ecx, [ebp+var_7CC]
movzx	eax, byte ptr [ecx]
cmp	ds:_re_syntax_table[eax], 1
setz	al
cmp	al, dl
jnz	loc_641C2B74
			
mov	dl, [code]
mov	reg, [ebp+var_7CC]
jmp	short loc_641C2BAF
align 4
			
mov	regpartend, [ebp+size2]	
test	edi, edi
jz	loc_641C32C0
mov	edx, [ebp+var_7E4]
cmp	[ebp+var_7CC], edx
setz	al
test	al, al
jz	loc_641C2B74
jmp	short loc_641C2C21
			
mov	a, [ebp+string1]
cmp	[ebp+var_7CC], ecx
jz	loc_641C2B74
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx-1]
cmp	ds:_re_syntax_table[eax], 1
jnz	loc_641C2B74
mov	eax, [ebp+var_7E4]
cmp	text, edx
jz	loc_641C3059
mov	edx, [ebp+size2]
test	edx, edx
jnz	short loc_641C2C9F
mov	eax, [ebp+var_7E8]
mov	ecx, [ebp+var_7CC]
cmp	text, ecx
jz	loc_641C3059
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx]
cmp	ds:_re_syntax_table[eax], 1
jnz	loc_641C2C21
jmp	loc_641C2B74
align 4
			
mov	a, [ebp+var_7E4] 
cmp	[ebp+var_7CC], ecx
jz	loc_641C2B74
mov	ecx, [ebp+size2]
test	ecx, ecx
jnz	loc_641C3308
mov	eax, [ebp+var_7E8]
cmp	[ebp+var_7CC], eax
jz	loc_641C2B74
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx]
cmp	ds:_re_syntax_table[eax], 1
jnz	loc_641C2B74
mov	ecx, [ebp+string1]
cmp	[ebp+var_7CC], ecx
jz	loc_641C2DE8
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx-1]
cmp	ds:_re_syntax_table[eax], 1
jnz	loc_641C2C21
jmp	loc_641C2B74
			
mov	a, [ebp+string1]
cmp	[ebp+var_7CC], ecx
jz	loc_641C2DE8
mov	eax, [ebp+var_7E4]
mov	edx, [ebp+var_7CC]
cmp	text, edx
jz	loc_641C3059
mov	eax, [ebp+size2]
test	eax, eax
jnz	loc_641C3386
mov	eax, [ebp+var_7E8]
mov	ecx, [ebp+var_7CC]
cmp	text, ecx
jz	loc_641C3059
mov	ecx, [ebp+var_7CC]
movzx	eax, byte ptr [ecx-1]
cmp	ds:_re_syntax_table[eax], 1
setz	dl
mov	ecx, [ebp+var_7CC]
movzx	eax, byte ptr [ecx]
cmp	ds:_re_syntax_table[eax], 1
setz	al
cmp	al, dl
jz	loc_641C2B74
jmp	loc_641C2C21
align 4
			
lea	edx, [code+1]	
mov	a, [ebp+var_7CC]
mov	[failure_sp-0Ch], ecx
mov	eax, [ebp+partend]
mov	[failure_sp-8],	eax
movzx	a, byte	ptr [code]
movzx	eax, byte ptr [edx]
shl	eax, 8
or	eax, a
cwde
lea	code, [edx+eax+1]
mov	dl, [code]
mov	eax, [ebp+var_7CC]
jmp	loc_641C2BAF
align 4
			
mov	a, [ebp+string1] 
cmp	[ebp+var_7CC], ecx
jnz	loc_641C2B74
nop
			
mov	dl, [code]
mov	eax, ecx
jmp	loc_641C2BAF
align 4
			
cmp	failure_sp, [ebp+failure_stack_end] 
jz	loc_641C35BA
movzx	a, byte	ptr [code]
lea	eax, [code+1]
add	ebx, 2
movzx	eax, byte ptr [eax]
shl	eax, 8
or	eax, a
movsx	a, ax
cmp	dl, 0Dh
jz	loc_641C3325
lea	a, [code+a]
mov	[failure_sp+8],	ecx
mov	eax, [ebp+var_7CC]
mov	[failure_sp], eax
mov	edx, [ebp+partend]
mov	[failure_sp+4],	edx
add	failure_sp, 0Ch
mov	dl, [code]
mov	eax, [ebp+var_7CC]
jmp	loc_641C2BAF
			
movzx	eax, byte ptr [code] 
lea	regpartend, [code+2]
movzx	edx, byte ptr [ebx+1]
shl	edx, 8
or	a, edx
cwde
add	a, 3
mov	[ebp+var_7F4], eax
lea	ebx, [code+eax]
cmp	byte ptr [p1-3], 0Bh
jnz	loc_641C36C0
mov	edx, [ebp+bufp]
mov	eax, [edx]	
mov	translate, code
sub	ecx, eax	
mov	edx, [edx+8]
mov	[ebp+used], edx
lea	edx, [ebp+map]
mov	[esp+4], edx	
lea	edx, [ebp+can_be_null]
mov	[esp], edx	
mov	edx, [ebp+used]	
call	_re_do_compile_fastmap
test	eax, eax
jz	make_normal_jump 
			
			
			
mov	al, [p1]	
inc	p1
cmp	al, 13h		
ja	make_normal_jump 
			
movzx	eax, al
jmp	ds:off_64250C04[eax*4] 
			
lea	edx, [code+1]
jmp	loc_641C2DB9
			
mov	eax, [ebp+var_7E4] 
mov	edx, [ebp+var_7CC]
cmp	text, edx
jz	loc_641C3059
mov	eax, [ebp+var_7E8]
mov	a, [ebp+var_7CC]
cmp	text, ecx
jz	loc_641C33F3
mov	ecx, [ebp+var_7CC]
cmp	byte ptr [ecx],	0Ah
jnz	loc_641C2B74
jmp	loc_641C2DE8
			
mov	edx, [ebp+string1]
cmp	[ebp+var_7CC], edx
jz	loc_641C352C
mov	a, [ebp+var_7CC]
cmp	byte ptr [ecx-1], 0Ah
jnz	loc_641C2B74
jmp	loc_641C2DE8
			
mov	edx, [ebp+part_2_end]
cmp	[ebp+partend], edx
jz	loc_641C34E9
mov	a, [ebp+var_7CC]
sub	ecx, [ebp+string1]
mov	[ebp+match_end], ecx
mov	a, [ebp+regs]
test	ecx, ecx
jz	loc_641C2FE0
mov	edx, [ebp+pos]
mov	eax, [ebp+regs]
mov	[eax], edx
mov	ecx, [ebp+match_end]
mov	[eax+28h], ecx
mov	eax, [ebp+bufp]
cmp	byte ptr [eax+16h], 0
jz	loc_641C32D4
mov	eax, 1
lea	edx, [ebp+regend_text]
lea	failure_sp, [ebp+regstart_partend]
lea	regpartend, [ebp+regend_partend]
mov	code, [ebp+regs]
mov	[ebp+var_7CC], edx
jmp	short loc_641C2FBD
align 4
mov	edx, [ebp+part_2_end]
cmp	[esi+a*4], edx
jz	loc_641C3374
mov	edx, [ebp+a*4+regstart_text]
sub	edx, [ebp+string1]
mov	[regs_0+a*4], edx
mov	edx, [ebp+part_2_end]
cmp	[edi+a*4], edx
jz	loc_641C3364
sub	ecx, [ebp+string1]
mov	[regs_0+a*4+28h], ecx
inc	a
cmp	a, 0Ah
jz	short loc_641C2FE0
			
mov	edx, [ebp+var_7CC]
mov	ecx, [edx+a*4]
test	ecx, ecx
jnz	short loc_641C2F88
mov	dword ptr [regs_0+a*4],	0FFFFFFFFh
mov	dword ptr [regs_0+a*4+28h], 0FFFFFFFFh
inc	a
cmp	a, 0Ah
jnz	short loc_641C2FBD
nop
			
mov	ecx, [ebp+var_7FC]
cmp	[ebp+var_7D8], ecx
jz	short loc_641C2FFC
mov	a, [ebp+var_7D8]
mov	[esp], eax	
call	_free
			
mov	a, [ebp+match_end]
sub	eax, [ebp+pos]
add	esp, 80Ch
pop	code
pop	failure_sp
pop	regpartend
leave
retn
			
mov	eax, [ebp+partend]
cmp	[ebp+var_7CC], eax
jz	loc_641C3615
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx]
mov	edx, [ebp+var_7DC]
test	edx, edx
jz	short loc_641C303F
mov	a, [ebp+var_7DC]
movzx	ch_0, byte ptr [ecx+ch_0]
movsx	edx, ds:_re_syntax_table[ch_0]
movzx	ch_0, byte ptr [code]
cmp	edx, eax
jz	loc_641C2B74
mov	eax, [ebp+var_7CC]
inc	text
inc	code
			
mov	dl, [code]
jmp	loc_641C2BAF
			
movsx	eax, byte ptr [code] 
inc	code
mov	edx, [ebp+var_7CC]
mov	[ebp+reg*4+regstart_text], edx
mov	a, [ebp+partend]
mov	[ebp+reg*4+regstart_partend], ecx
mov	dl, [code]
mov	reg, [ebp+var_7CC]
jmp	loc_641C2BAF
align 4
			
movsx	eax, byte ptr [code] 
mov	regpartend, [ebp+reg*4+regend_text]
test	regpartend, regpartend
jz	loc_641C2B74
mov	edx, [ebp+reg*4+regstart_text]
mov	a, [ebp+reg*4+regstart_partend]
cmp	ecx, [ebp+reg*4+regend_partend]
jz	loc_641C33E8
mov	reg, [ebp+var_7E8]
mov	[ebp+match_end], eax
inc	code
cmp	regpartend, regtext
jz	loc_641C2C21
mov	[ebp+var_7F4], code
mov	reg, [ebp+var_7CC]
mov	ecx, [ebp+var_7DC]
mov	[ebp+var_7CC], failure_sp
jmp	short loc_641C3114
align 10h
			
movzx	ch_0, byte ptr [text]
test	translate, translate
jz	short loc_641C30EB
movzx	ch_0, byte ptr [translate+ch_0]
cmp	regtext, [ebp+match_end]
jz	loc_641C3350
movzx	regch, byte ptr	[regtext]
test	translate, translate
jz	short loc_641C3102
movzx	regch, byte ptr	[translate+regch]
cmp	regch, ch_0
jnz	loc_641C3358
inc	text
inc	regtext
cmp	regpartend, regtext
jz	loc_641C3641
cmp	text, [ebp+partend]
jnz	short loc_641C30E0
cmp	[ebp+var_7EC], text
jz	loc_641C3358
mov	text, [ebp+part_2_end]
mov	[ebp+partend], eax
mov	eax, [ebp+string2]
jmp	short loc_641C30E0
align 4
			
movsx	eax, byte ptr [code] 
inc	code
mov	edx, [ebp+var_7CC]
mov	[ebp+reg*4+regend_text], edx
mov	a, [ebp+partend]
mov	[ebp+reg*4+regend_partend], ecx
mov	dl, [code]
mov	reg, [ebp+var_7CC]
jmp	loc_641C2BAF
align 4
			
mov	edx, [ebp+partend] 
cmp	[ebp+var_7CC], edx
jz	loc_641C3500
mov	a, [ebp+var_7CC]
movzx	eax, byte ptr [ecx]
mov	ecx, [ebp+var_7DC]
test	ecx, ecx
jz	short loc_641C3197
mov	edx, [ebp+var_7DC]
movzx	ch_0, byte ptr [edx+ch_0]
movzx	edx, byte ptr [code]
cmp	ch_0, edx
jnz	loc_641C2B74
mov	ch_0, [ebp+var_7CC]
inc	text
inc	code
mov	dl, [code]
jmp	loc_641C2BAF
align 4
			
mov	eax, [ebp+partend] 
cmp	[ebp+var_7CC], eax
jz	loc_641C3562
mov	a, [ebp+var_7CC]
movzx	edx, byte ptr [ecx]
mov	regpartend, [ebp+var_7DC]
test	edi, edi
jz	short loc_641C31E3
mov	eax, [ebp+var_7DC]
movzx	ch_0, byte ptr [eax+ch_0]
mov	eax, ch_0
sar	eax, 3
movsx	eax, byte ptr [code+eax]
mov	ecx, ch_0
and	ecx, 7
sar	eax, cl
test	al, 1
jz	loc_641C2B74
mov	eax, [ebp+var_7CC]
inc	text
add	code, 20h
mov	dl, [code]
jmp	loc_641C2BAF
			
mov	a, [ebp+partend]
cmp	[ebp+var_7CC], ecx
jz	loc_641C358E
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx]
mov	edx, [ebp+var_7DC]
test	edx, edx
jz	short loc_641C323B
mov	ecx, [ebp+var_7DC]
movzx	ch_0, byte ptr [ecx+ch_0]
cmp	ch_0, 0Ah
jz	loc_641C2B74
mov	ch_0, [ebp+var_7CC]
inc	text
mov	dl, [code]
jmp	loc_641C2BAF
			
movzx	eax, byte ptr [p1]
cmp	[ebp+eax+map], 0
jz	loc_641C3439	
nop
			
mov	ecx, [ebp+match_end] 
			
mov	byte ptr [ecx],	9
mov	b, [ebp+var_7CC]
mov	p1, ecx
mov	dl, 9
jmp	loc_641C2BAF
			
mov	a, [ebp+var_7FC]
cmp	[ebp+var_7D8], ecx
jnz	loc_641C34CC
mov	reg, 0FFFFFFFFh
add	esp, 80Ch
pop	ch_0
pop	failure_sp
pop	regpartend
leave
retn
align 10h
mov	edx, [ebp+string1]
add	edx, [ebp+size1]
mov	[ebp+partend], edx
sub	mstop_0, [ebp+size1]
add	eax, [ebp+string2]
mov	[ebp+var_7EC], eax
jmp	loc_641C2B0A
align 10h
mov	eax, [ebp+var_7E8]
cmp	[ebp+var_7CC], eax
setz	al
jmp	loc_641C2C46
mov	eax, 1
mov	edx, [ebp+regs]
mov	dword ptr [regs_0+a*4],	0FFFFFFFFh
mov	dword ptr [regs_0+a*4+28h], 0FFFFFFFFh
inc	a
cmp	a, 0Ah
jnz	short loc_641C32DC
mov	ecx, [ebp+var_7FC]
cmp	[ebp+var_7D8], ecx
jnz	loc_641C2FEE
jmp	loc_641C2FFC
mov	edx, [ebp+var_7E8]
cmp	[ebp+var_7CC], edx
jnz	loc_641C2CEB
mov	ecx, [ebp+string1]
movzx	eax, byte ptr [ecx]
jmp	loc_641C2CF4
cmp	byte ptr [code], 0Bh
jnz	loc_641C36A4
movzx	edx, byte ptr [code+1]
movzx	eax, byte ptr [code+2]
shl	eax, 8
or	eax, b
cwde
lea	eax, [code+eax+3]
mov	[failure_sp+8],	eax
mov	dword ptr [failure_sp],	0
add	code, a
jmp	loc_641C2E34
mov	regtext, [ebp+string2]
jmp	loc_641C30F7
			
mov	regch, [ebp+var_7CC]
jmp	loc_641C2B74
align 4
add	ecx, [ebp+size1]
sub	ecx, [ebp+string2]
mov	[regs_0+a*4+28h], ecx
jmp	loc_641C2FB7
align 4
mov	edx, [ebp+size1]
add	edx, [ebp+a*4+regstart_text]
sub	edx, [ebp+string2]
mov	[regs_0+a*4], edx
jmp	loc_641C2FA1
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx-1]
cmp	ds:_re_syntax_table[eax], 1
setz	dl
mov	ecx, [ebp+var_7E8]
cmp	[ebp+var_7CC], ecx
jnz	loc_641C2D82
mov	ecx, [ebp+string2]
movzx	eax, byte ptr [ecx]
jmp	loc_641C2D8B
mov	edx, [ebp+var_7CC]
movzx	eax, byte ptr [edx-1]
cmp	ds:_re_syntax_table[eax], 1
setnz	dl
mov	a, [ebp+var_7E8]
cmp	[ebp+var_7CC], ecx
jnz	loc_641C2C06
mov	ecx, [ebp+string2]
movzx	eax, byte ptr [ecx]
jmp	loc_641C2C0F
mov	[ebp+match_end], regpartend
jmp	loc_641C30BB
mov	edx, [ebp+size2]
test	edx, edx
jz	loc_641C3059
mov	edx, [ebp+string2]
cmp	byte ptr [edx],	0Ah
jnz	loc_641C2B74
mov	dl, [code]
jmp	loc_641C2BAF
			
inc	p1
jmp	loc_641C2E9F	
			
mov	eax, 1		
cmp	eax, 0Bh
jz	short loc_641C3436
cmp	byte ptr [ebp+eax+initial_failure_stack.code+5F7h], 0
jnz	make_normal_jump 
			
cmp	eax, 0FFh
jg	short loc_641C343A 
inc	eax
jmp	short loc_641C341C
			
			
inc	p1		
			
cmp	[ebp+match_end], p1
jz	short make_update_jump
mov	al, [p1]
inc	p1
cmp	al, 15h		
jbe	loc_641C34DF
movsx	eax, al		
mov	[esp+4], eax
mov	dword ptr [esp], offset	aRegexpr_cProce	
call	_printf
cmp	[ebp+match_end], p1
jnz	short loc_641C3442
lea	p1, [code-2]
mov	b, [ebp+match_end]
mov	byte ptr [eax],	0Ch
mov	dl, byte ptr [ebp+var_7F4]
mov	[edi-2], dl
lea	edx, [edi-1]
mov	eax, [ebp+var_7F4]
sar	eax, 8
mov	[edi-1], al
jmp	loc_641C2DA7
align 4
			
xor	eax, eax	
jmp	short loc_641C34A0
			
inc	b
cmp	b, 100h
jz	short loc_641C34C4 
mov	edx, b
sar	edx, 3
movsx	edx, byte ptr [p1+edx]
mov	ecx, b
and	ecx, 7
sar	edx, cl
and	edx, 1
jz	short loc_641C3498
cmp	[ebp+b+map], 0
jz	short loc_641C3498
jmp	make_normal_jump 
			
			
			
add	p1, 20h		
jmp	loc_641C343A	
mov	reg, [ebp+var_7D8]
mov	[esp], eax	
call	_free
jmp	loc_641C328E
movzx	eax, al
jmp	ds:off_64250C54[eax*4] 
mov	eax, [ebp+size1]
sub	eax, [ebp+string2]
add	eax, [ebp+var_7CC]
mov	[ebp+match_end], eax
jmp	loc_641C2F3D
mov	a, [ebp+var_7EC]
cmp	[ebp+var_7CC], ecx
jz	loc_641C2B74
mov	eax, [ebp+part_2_end]
mov	[ebp+partend], eax
mov	edx, [ebp+string2]
mov	[ebp+var_7CC], edx
jmp	loc_641C317A
mov	dl, [code]
mov	eax, [ebp+string1]
jmp	loc_641C2BAF
mov	edx, [ebp+var_7EC]
cmp	[ebp+var_7CC], edx
jz	loc_641C2B74
mov	a, [ebp+part_2_end]
mov	[ebp+partend], ecx
mov	eax, [ebp+string2]
mov	[ebp+var_7CC], eax
jmp	loc_641C2B42
mov	edx, [ebp+var_7EC]
cmp	[ebp+var_7CC], edx
jz	loc_641C2B74
mov	a, [ebp+part_2_end]
mov	[ebp+partend], ecx
mov	eax, [ebp+string2]
mov	[ebp+var_7CC], eax
jmp	loc_641C31C6
mov	eax, [ebp+var_7EC]
cmp	[ebp+var_7CC], eax
jz	loc_641C2B74
mov	edx, [ebp+part_2_end]
mov	[ebp+partend], edx
mov	ecx, [ebp+string2]
mov	[ebp+var_7CC], ecx
jmp	loc_641C321E
mov	edx, [ebp+var_7FC]
cmp	[ebp+var_7D8], edx
jnz	error
mov	dword ptr [esp], 0C030h	
call	_malloc
mov	[ebp+var_7D8], eax
add	eax, 0C030h
mov	[ebp+failure_stack_end], eax
mov	ecx, 180h
mov	regpartend, [ebp+var_7D8]
mov	failure_sp, [ebp+var_7FC]
rep movsd
mov	esi, [ebp+var_7D8]
add	failure_sp, 600h
mov	ecx, [ebp+match_end]
mov	dl, [ecx]
jmp	loc_641C2E00
mov	edx, [ebp+var_7EC]
cmp	[ebp+var_7CC], edx
jz	loc_641C2B74
mov	a, [ebp+part_2_end]
mov	[ebp+partend], ecx
mov	eax, [ebp+string2]
mov	[ebp+var_7CC], eax
jmp	loc_641C3022
mov	ch_0, [ebp+var_7F4]
mov	regch, [ebp+var_7CC]
mov	dl, [code]
jmp	loc_641C2BAF
			
mov	dword ptr [esp+8], 3B1h
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aPos0Size10Size	
call	__assert
mov	edx, [ebp+var_7D8]
mov	[esp], edx	
call	_free
mov	eax, 0FFFFFFFEh
jmp	loc_641C3293
mov	dword ptr [esp+8], 3B2h
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aMstopSize1Size	
call	__assert
mov	dword ptr [esp+8], 4EAh
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aCodeCfailure_j	
call	__assert
mov	dword ptr [esp+8], 465h
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aP13Cfailure_ju	
call	__assert
mov	dword ptr [esp+8], 3B3h
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aPosMstop 
call	__assert
public _re_match
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+size]
mov	[esp+1Ch], eax	
mov	edx, [ebp+regs]
mov	[esp+18h], edx	
mov	edx, [ebp+pos]
mov	[esp+14h], edx	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], eax	
mov	eax, [ebp+string]
mov	[esp+4], eax	
mov	eax, [ebp+bufp]
mov	[esp], eax	
call	_re_match_2
leave
retn
align 4
public _re_compile_pattern
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 9FCh
mov	edx, ds:_re_compile_initialized
test	edx, edx
jz	loc_641C4433
mov	eax, [ebp+bufp]
mov	dword ptr [eax+8], 0
mov	byte ptr [eax+14h], 0
mov	byte ptr [eax+16h], 0
mov	edx, [eax+10h]
mov	[ebp+translate], edx
mov	edx, [eax]
mov	ecx, [eax+4]
mov	[ebp+alloc], ecx
test	ecx, ecx
jz	loc_641C440E
test	pattern, pattern
jz	loc_641C440E
mov	[ebp+starts], 0
mov	[ebp+beginning_context], 1
mov	[ebp+num_open_registers], 0
mov	[ebp+paren_depth], 0
mov	[ebp+next_register], 1
xor	ecx, ecx
mov	[ebp+var_9C8], 0
mov	[ebp+starts_base], 0
xor	ebx, ebx
mov	[ebp+p], 0
mov	[ebp+gethex_value], 0
mov	edi, [ebp+gethex_value]
cmp	[ebp+size], edi
jg	loc_641C3A3F
lea	esi, [esi+0]
mov	[ebp+op], 0
			
mov	edi, [ebp+op]
movzx	edi, ds:_regexp_precedences[edi]
mov	[ebp+ad], edi
mov	eax, [ebp+p]
cmp	edi, eax
jle	loc_641C38B0
inc	eax
mov	[ebp+gethex_value_0], eax
cmp	edi, eax
jle	short loc_641C3884
mov	edi, [ebp+p]
mov	esi, [ebp+starts_base]
lea	eax, [edi+esi+1]
lea	esi, [ebp+eax*4+starts]
mov	eax, edi
not	eax
add	eax, [ebp+ad]
lea	edi, ds:0[eax*4]
xor	eax, eax
mov	[esi], pattern_offset
add	esi, 4
add	eax, 4
cmp	eax, edi
jnz	short loc_641C385C
mov	eax, [ebp+ad]
sub	eax, [ebp+p]
mov	esi, [ebp+gethex_value_0]
lea	esi, [esi+eax-1]
mov	[ebp+gethex_value_0], esi
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	[ebp+eax*4+starts], pattern_offset
mov	edi, [ebp+var_9C8]
			
cmp	[ebp+op], 16h
jbe	loc_641C395F
			
			
call	_abort		
align 10h
jge	loc_641C3B18
mov	edi, [ebp+var_9C8]
test	edi, edi
jz	loc_641C45E8
mov	edi, [ebp+var_9C8]
dec	num_jumps
mov	eax, [ebp+num_jumps*4+future_jumps]
mov	esi, [ebp+ad]
add	esi, [ebp+starts_base]
mov	esi, [ebp+esi*4+starts]
mov	[ebp+p], esi
cmp	eax, esi
jl	loc_641C45E8
lea	esi, [pattern_offset-2]
mov	[ebp+gethex_value_0], esi
mov	esi, [ebp+var_9C8]
lea	esi, [ebp+esi*4+starts+7C8h]
mov	[ebp+complement], esi
mov	[ebp+var_9C8], pattern_offset
jmp	short loc_641C392A
align 4
lea	ebx, [num_jumps-1]
mov	eax, [esi]
sub	esi, 4
cmp	eax, [ebp+p]
jl	short loc_641C3940
mov	edi, num_jumps
mov	pattern_offset,	[ebp+gethex_value_0]
sub	disp, eax
mov	[pattern+eax], bl
sar	disp, 8
mov	[pattern+eax+1], bl
test	num_jumps, num_jumps
jnz	short loc_641C3918
mov	num_jumps, [ebp+var_9C8]
mov	esi, [ebp+ad]
mov	[ebp+gethex_value_0], esi
cmp	[ebp+op], 16h	
ja	loc_641C38AA	
mov	esi, [ebp+op]
jmp	ds:off_64250D90[esi*4] 
mov	eax, [ebp+gethex_value]
inc	eax
cmp	[ebp+size], eax
jle	short loc_641C398B
mov	eax, [ebp+regex]
mov	esi, [ebp+gethex_value]
cmp	byte ptr [eax+esi], 5Ch
jz	loc_641C49CE
			
mov	opcode,	ds:_regexp_context_indep_ops
test	esi, esi
jnz	op_error
			
mov	[ebp+p], 4	
			
lea	esi, [pattern_offset+1]
cmp	esi, [ebp+alloc]
jge	loc_641C3CFF
			
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	[ebp+eax*4+starts], pattern_offset
mov	al, byte ptr [ebp+p]
mov	[pattern+pattern_offset], al
mov	[pattern+esi], cl
lea	pattern_offset,	[esi+1]
mov	esi, [ebp+op]
test	esi, esi
jz	loc_641C4933
mov	esi, [ebp+starts_base]
mov	[ebp+p], esi
mov	[ebp+var_9EC], pattern_offset
			
mov	eax, [ebp+op]
sub	eax, 9
cmp	eax, 1
setbe	al
movzx	eax, al
mov	[ebp+beginning_context], eax
mov	[ebp+var_9C8], num_jumps
mov	pattern_offset,	[ebp+p]
mov	[ebp+starts_base], ebx
mov	ebx, [ebp+var_9EC]
mov	firstchar, [ebp+gethex_value_0]
mov	[ebp+p], esi
mov	num_jumps, [ebp+gethex_value]
cmp	[ebp+size], edi
jle	loc_641C37FC
mov	esi, [ebp+regex]
mov	eax, [ebp+gethex_value]
mov	cl, [esi+eax]
inc	eax
mov	[ebp+gethex_value], eax
mov	eax, [ebp+translate]
test	eax, eax
jz	short loc_641C3A68
movzx	ch_0, cl
mov	edi, [ebp+translate]
mov	cl, [edi+ch_0]
movzx	eax, cl
movzx	ch_0, ds:_regexp_plain_ops[ch_0]
mov	[ebp+op], eax
cmp	eax, 3
jnz	loc_641C3806
mov	eax, [ebp+gethex_value]
cmp	[ebp+size], eax
jle	ends_prematurely
mov	esi, [ebp+regex]
mov	cl, [esi+eax]
inc	eax
mov	[ebp+gethex_value], eax
movzx	eax, cl
movzx	ch_0, ds:_regexp_quoted_ops[ch_0]
mov	[ebp+op], eax
dec	eax
jnz	loc_641C3806
cmp	ds:_regexp_ansi_sequences, 0
jz	loc_641C3806
cmp	cl, 58h
jz	loc_641C48AE
ja	loc_641C45FF
cmp	cl, 4Eh
jz	loc_641C4984
ja	loc_641C487C
cmp	cl, 42h
jz	loc_641C492C
cmp	cl, 46h
jz	loc_641C49F7
cmp	cl, 41h
jz	loc_641C4625
			
cmp	[ebp+translate], 0
jz	loc_641C3806
movzx	ch_0, cl
mov	esi, [ebp+translate]
mov	cl, [esi+ch_0]
jmp	loc_641C3806
mov	edi, [ebp+var_9C8]
mov	eax, [ebp+p]
mov	[ebp+gethex_value_0], eax
jmp	loc_641C389D
			
mov	esi, 12h	
			
cmp	pattern_offset,	[ebp+alloc]
jge	loc_641C43C9
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	[ebp+eax*4+starts], pattern_offset
mov	eax, opcode
mov	[pattern+pattern_offset], al
inc	pattern_offset
jmp	loc_641C39D4
			
mov	esi, 11h	
jmp	short loc_641C3B34
			
mov	cl, 1		
mov	[ebp+p], 15h
jmp	loc_641C39A3
			
mov	cl, 1		
mov	[ebp+p], 14h
jmp	loc_641C39A3
			
mov	esi, 0Fh	
jmp	short loc_641C3B34
			
mov	esi, 0Eh	
jmp	short loc_641C3B34
			
mov	esi, 10h	
jmp	short loc_641C3B34
			
mov	eax, [ebp+gethex_value_0] 
add	eax, [ebp+starts_base]
mov	[ebp+eax*4+starts], pattern_offset
lea	eax, [pattern_offset+20h]
cmp	eax, [ebp+alloc]
jge	loc_641C44BE
lea	ch_0, [pattern+pattern_offset]
mov	[ebp+beginning_context], ecx
mov	byte ptr [ecx],	3
inc	pattern_offset
mov	[ebp+p], ebx
xor	eax, eax
mov	ecx, [ebp+beginning_context]
lea	esi, [esi+0]
mov	byte ptr [ecx+a+1], 0
inc	a
cmp	a, 20h
jnz	short loc_641C3BDC
mov	ebx, [ebp+p]
add	pattern_offset,	20h
mov	esi, [ebp+size]
cmp	[ebp+gethex_value], esi
jge	ends_prematurely
mov	esi, [ebp+regex]
mov	a, [ebp+gethex_value]
mov	cl, [esi+eax]
inc	eax
mov	[ebp+gethex_value], eax
cmp	[ebp+translate], 0
jz	short loc_641C3C27
movzx	ch_0, cl
mov	eax, [ebp+translate]
mov	cl, [eax+ch_0]
mov	[ebp+complement], 0
cmp	cl, 5Eh
jz	loc_641C45A2
			
mov	esi, 1
mov	[ebp+ad], 0
or	eax, 0FFFFFFFFh
mov	[ebp+var_9C8], pattern_offset
mov	[ebp+var_9E4], num_jumps
mov	num_jumps, [ebp+gethex_value]
cmp	cl, 5Dh
jz	loc_641C42C6
nop
			
mov	pattern_offset,	ds:_regexp_ansi_sequences
test	ebx, ebx
jz	short loc_641C3C7B
cmp	cl, 5Ch
jz	loc_641C4388
			
mov	firstchar, [ebp+ad]
test	esi, esi
jz	loc_641C4328
movzx	esi, cl
cmp	prev, esi
jg	loc_641C4286
mov	[ebp+ad], pos
jmp	short loc_641C3CBF
			
sar	a, 3
add	ebx, [ebp+p]
mov	ch_0, prev
and	ecx, 7
mov	pos, 1
shl	edi, cl
mov	ecx, edi
or	[pattern+ebx], cl
inc	prev
cmp	a, esi
jg	loc_641C4280
mov	ebx, prev
test	prev, prev
jns	short loc_641C3C9C
lea	ebx, [prev+7]
jmp	short loc_641C3C9C
			
cmp	cl, 30h
jz	bad_match_register
sub	ch_0, 30h
cmp	cl, 9
ja	loc_641C4957
mov	esi, [ebp+bufp]
mov	byte ptr [esi+16h], 1
mov	[ebp+p], 8
lea	esi, [pattern_offset+1]
cmp	esi, [ebp+alloc]
jl	loc_641C39B2
add	[ebp+alloc], 102h
mov	eax, [ebp+alloc]
mov	[esp+4], eax	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C39B2
mov	esi, pattern_offset
jmp	loc_641C4255
			
cmp	[ebp+paren_depth], 0
jz	parenthesis_error
mov	eax, [ebp+starts_base]
sub	eax, 5
mov	[ebp+p], eax
movzx	esi, ds:_regexp_precedences+0Ah
mov	[ebp+gethex_value_0], esi
dec	[ebp+paren_depth]
mov	[ebp+var_9EC], pattern_offset
mov	eax, [ebp+num_open_registers]
cmp	[ebp+paren_depth], eax
jge	loc_641C39F4
mov	esi, [ebp+bufp]
mov	byte ptr [esi+16h], 1
lea	esi, [pattern_offset+1]
cmp	esi, [ebp+alloc]
jge	loc_641C46F3
mov	byte ptr [pattern+pattern_offset], 7
dec	[ebp+num_open_registers]
mov	pattern_offset,	[ebp+num_open_registers]
mov	eax, [ebp+ebx*4+open_registers]
mov	[pattern+esi], al
inc	esi
mov	[ebp+var_9EC], esi
jmp	loc_641C39F4
			
mov	eax, [ebp+size]
cmp	[ebp+gethex_value], eax
jge	ends_prematurely
mov	eax, [ebp+regex]
mov	ch_0, [ebp+gethex_value]
movzx	esi, byte ptr [eax+ecx]
lea	eax, [ch_0-30h]
cmp	al, 9
ja	bad_match_register
mov	eax, ecx
inc	pos
cmp	[ebp+size], pos
jle	ends_prematurely
mov	pos, [ebp+regex]
movsx	ecx, byte ptr [eax+ecx+1]
mov	[ebp+p], ecx
sub	ecx, 30h
cmp	ecx, 9
ja	bad_match_register
mov	cl, 0Ah
mov	al, byte ptr [ebp+p]
mul	cl
mov	cl, al
lea	ecx, [ch_0+ecx-10h]
lea	eax, [ch_0-1]
cmp	al, 8
ja	bad_match_register
add	[ebp+gethex_value], 2
jmp	loc_641C3CDF
			
mov	[ebp+var_9EC], pattern_offset 
cmp	[ebp+next_register], 9
jle	loc_641C443D
cmp	[ebp+starts_base], 1EEh
jg	too_complex
inc	[ebp+paren_depth]
mov	eax, [ebp+starts_base]
add	eax, 5
mov	[ebp+p], eax
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	[ebp+eax*4+starts], pattern_offset
mov	esi, [ebp+var_9EC]
mov	pattern_offset,	[ebp+p]
mov	[ebp+ebx*4+starts], esi
mov	[ebp+gethex_value_0], 0
jmp	loc_641C39F4
			
lea	esi, [pattern_offset+5]
mov	[ebp+var_9C8], esi
mov	eax, [ebp+alloc]
cmp	esi, eax
jge	loc_641C448A
mov	esi, [ebp+gethex_value_0]
add	esi, [ebp+starts_base]
mov	[ebp+ad], esi
mov	eax, [ebp+esi*4+starts]
mov	[ebp+p], eax
lea	esi, [pattern_offset-1]
cmp	eax, a
jg	short loc_641C3EF5
lea	eax, [pattern+pattern_offset]
mov	[ebp+beginning_context], pattern
mov	dl, [eax-1]
mov	[eax+2], dl
dec	a
dec	eax
cmp	[ebp+p], a
jle	short loc_641C3EDF
mov	edx, [ebp+beginning_context]
mov	a, [ebp+p]
mov	byte ptr [pattern+esi],	0Bh
lea	eax, [pattern_offset+4]
mov	[ebp+complement], eax
mov	esi, [ebp+p]
not	esi
add	eax, esi
mov	[ebp+beginning_context], eax
mov	esi, [ebp+p]
mov	[pattern+esi+1], al
mov	eax, [ebp+beginning_context]
sar	eax, 8
mov	[pattern+esi+2], al
lea	esi, [pattern_offset+3]
mov	[ebp+var_9EC], esi
cmp	num_jumps, 63h
jg	too_complex
mov	byte ptr [pattern+pattern_offset+3], 9
mov	eax, [ebp+complement]
mov	[ebp+num_jumps*4+future_jumps],	eax
inc	num_jumps
mov	byte ptr [pattern+pattern_offset+4], 0
mov	esi, [ebp+var_9C8]
mov	byte ptr [pattern+esi],	0
add	pattern_offset,	6
mov	[ebp+var_9EC], ebx
mov	eax, [ebp+ad]
mov	[ebp+eax*4+starts], ebx
mov	ebx, [ebp+starts_base]
mov	[ebp+p], ebx
jmp	loc_641C39F4
			
cmp	[ebp+beginning_context], 0
jnz	loc_641C398B
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	eax, [ebp+eax*4+starts]
mov	[ebp+var_9EC], eax
cmp	eax, pattern_offset
jz	loc_641C462C
lea	eax, [pattern_offset+8]
cmp	eax, [ebp+alloc]
jge	loc_641C47DB
lea	eax, [pattern_offset-1]
mov	[ebp+p], eax
cmp	[ebp+var_9EC], eax
jg	short loc_641C4008
lea	eax, [pattern+pattern_offset]
mov	[ebp+ad], pattern
mov	esi, [ebp+var_9EC]
mov	dl, [eax-1]
mov	[eax+2], dl
dec	[ebp+p]
dec	eax
cmp	pattern_offset,	[ebp+p]
jle	short loc_641C3FE7
mov	edx, [ebp+ad]
mov	[ebp+var_9EC], pattern_offset
mov	pattern_offset,	[ebp+var_9EC]
add	esi, pattern
mov	[ebp+var_9E4], esi
mov	byte ptr [esi],	0Bh
mov	eax, [ebp+var_9EC]
not	eax
mov	[ebp+complement], eax
lea	eax, [pattern_offset+eax+4]
mov	[ebp+p], eax
mov	esi, [ebp+var_9EC]
lea	esi, [pattern+esi+1]
mov	[ebp+beginning_context], esi
mov	[esi], al
mov	eax, [ebp+var_9EC]
lea	eax, [pattern+eax+2]
mov	[ebp+var_9C8], eax
mov	esi, [ebp+p]
sar	esi, 8
mov	[ebp+p], esi
mov	al, byte ptr [ebp+p]
mov	esi, [ebp+var_9C8]
mov	[esi], al
lea	eax, [pattern_offset+3]
mov	[ebp+p], eax
mov	byte ptr [pattern+pattern_offset+3], 0Ah
mov	esi, eax
not	esi
mov	eax, [ebp+var_9EC]
lea	eax, [eax+esi-2]
mov	[ebp+ad], eax
mov	esi, [ebp+p]
mov	[pattern+esi+1], al
mov	eax, [ebp+ad]
sar	eax, 8
mov	[pattern+esi+2], al
lea	esi, [pattern_offset+6]
mov	[ebp+ad], esi
cmp	[ebp+op], 8
jz	loc_641C475D
mov	eax, [ebp+starts_base]
mov	[ebp+p], eax
mov	[ebp+var_9EC], esi
jmp	loc_641C39F4
			
cmp	[ebp+beginning_context], 0 
jnz	loc_641C398B
mov	eax, [ebp+gethex_value_0]
add	eax, [ebp+starts_base]
mov	eax, [ebp+eax*4+starts]
mov	[ebp+var_9EC], eax
cmp	eax, pattern_offset
jz	loc_641C462C
lea	eax, [pattern_offset+2]
cmp	eax, [ebp+alloc]
jge	loc_641C4828
lea	eax, [pattern_offset+3]
mov	[ebp+ad], eax
lea	eax, [pattern_offset-1]
cmp	[ebp+var_9EC], a
jg	short loc_641C414E
lea	pattern_offset,	[pattern+pattern_offset]
mov	[ebp+p], pattern
mov	esi, [ebp+var_9EC]
mov	dl, [ebx-1]
mov	[ebx+2], dl
dec	a
dec	ebx
cmp	pattern_offset,	a
jle	short loc_641C4136
mov	edx, [ebp+p]
mov	[ebp+var_9EC], pattern_offset
mov	ebx, [ebp+var_9EC]
mov	byte ptr [pattern+ebx],	0Bh
mov	a, ebx
not	eax
mov	pattern_offset,	[ebp+ad]
lea	eax, [esi+eax-2]
mov	[pattern+ebx+1], al
sar	disp, 8
mov	[pattern+ebx+2], al
mov	eax, [ebp+starts_base]
mov	[ebp+p], eax
mov	[ebp+var_9EC], esi
jmp	loc_641C39F4
			
mov	esi, [ebp+size]
cmp	[ebp+gethex_value], esi
jge	short store_opcode
mov	eax, ds:_regexp_syntax
mov	[ebp+p], eax
test	al, 2
jz	loc_641C463D
mov	eax, [ebp+regex]
mov	esi, [ebp+gethex_value]
cmp	byte ptr [eax+esi], 7Ch
setnz	al
test	al, al
jz	short store_opcode
			
test	byte ptr [ebp+p], 1
jz	loc_641C396C
mov	eax, [ebp+regex]
mov	esi, [ebp+gethex_value]
cmp	byte ptr [eax+esi], 29h
setnz	al
test	al, al
jnz	loc_641C398B
			
mov	esi, 2
jmp	loc_641C3B34
			
mov	esi, 1		
cmp	[ebp+beginning_context], 0
jnz	loc_641C3B34
jmp	loc_641C398B
			
mov	esi, 5		
jmp	loc_641C3B34
			
mov	esi, pattern_offset 
mov	eax, pattern
cmp	[ebp+starts_base], 0
jnz	parenthesis_error
test	num_jumps, num_jumps
jnz	loc_641C49DB
cmp	ebx, [ebp+alloc]
jl	loc_641C468C
add	[ebp+alloc], 101h
mov	num_jumps, [ebp+alloc]
mov	[esp+4], edi	
mov	[esp], pattern	
call	_realloc
mov	edx, eax
test	eax, eax
jnz	loc_641C468C
			
mov	num_jumps, [ebp+alloc]
mov	ebx, [ebp+bufp]
mov	[ebx+4], edi
mov	dword ptr [ebx], 0
mov	[ebx+8], pattern_offset
mov	pattern, offset	aOutOfMemory 
jmp	loc_641C437D
			
mov	esi, 13h
jmp	loc_641C3B34
align 10h
mov	edi, [ebp+ad]
mov	[ebp+ad], 0
mov	prev, 0FFFFFFFFh
cmp	pos, [ebp+size]
jge	loc_641C4361
mov	ebx, [ebp+regex]
mov	cl, [ebx+pos]
mov	ebx, [ebp+translate]
test	ebx, ebx
jz	short loc_641C42BA
movzx	ch_0, cl
mov	esi, [ebp+translate]
mov	cl, [esi+ch_0]
inc	pos
xor	esi, esi
cmp	cl, 5Dh
jnz	loc_641C3C68
test	firstchar, firstchar
jnz	loc_641C3C68
mov	pattern_offset,	[ebp+var_9C8]
mov	[ebp+gethex_value], pos
mov	pos, [ebp+var_9E4]
cmp	[ebp+ad], 0
jz	short loc_641C42F4
mov	prev, [ebp+p]
or	byte ptr [pattern+eax+5], 20h
cmp	[ebp+complement], 0
jz	short loc_641C430F
mov	prev, [ebp+beginning_context]
xor	firstchar, firstchar
not	byte ptr [eax+1]
inc	a
inc	eax
cmp	a, 20h
jnz	short loc_641C4305
mov	prev, [ebp+starts_base]
mov	[ebp+p], eax
mov	[ebp+var_9EC], pattern_offset
jmp	loc_641C39F4
align 4
cmp	prev, 0FFFFFFFFh
jz	short loc_641C4336
cmp	cl, 2Dh
jz	loc_641C43BA
mov	bl, cl
shr	bl, 3
movzx	ebx, bl
add	ebx, [ebp+p]
movzx	prev, cl
mov	ch_0, prev
and	ecx, 7
mov	esi, 1
shl	esi, cl
mov	ecx, esi
or	[pattern+ebx], cl
cmp	pos, [ebp+size]
jl	loc_641C429E
			
mov	ebx, [ebp+var_9C8]
			
mov	ch_0, [ebp+alloc]
mov	prev, [ebp+bufp]
mov	[eax+4], ecx
mov	[eax], pattern
mov	[eax+8], pattern_offset
mov	eax, offset aRegularExpress 
			
add	esp, 9FCh
pop	ebx
pop	firstchar
pop	num_jumps
leave
retn
cmp	pos, [ebp+size]
jge	short loc_641C4361
mov	ebx, [ebp+regex]
mov	cl, [ebx+pos]
inc	pos
lea	ebx, [ch_0-41h]
cmp	bl, 37h		
jbe	short loc_641C4404
			
cmp	[ebp+translate], 0 
jz	loc_641C3C7B
movzx	ch_0, cl
mov	firstchar, [ebp+translate]
mov	cl, [esi+ch_0]
jmp	loc_641C3C7B
mov	[ebp+ad], 1
jmp	loc_641C4295
add	[ebp+alloc], 101h
mov	eax, [ebp+alloc]
mov	[esp+4], eax	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C3B40
mov	opcode,	pattern_offset
jmp	loc_641C4255
align 4
movzx	ebx, bl
jmp	ds:off_64250DEC[ebx*4] 
			
mov	dword ptr [esp], 100h 
call	_malloc
mov	edx, eax
test	eax, eax
jz	loc_641C46E2
mov	[ebp+alloc], 100h
jmp	loc_641C378C
call	_re_compile_initialize
jmp	loc_641C3756
mov	esi, [ebp+bufp]
mov	byte ptr [esi+16h], 1
lea	esi, [pattern_offset+1]
cmp	esi, [ebp+alloc]
jge	loc_641C46A9
mov	byte ptr [pattern+pattern_offset], 6
mov	al, byte ptr [ebp+next_register]
mov	[pattern+esi], al
inc	esi
mov	[ebp+var_9EC], esi
mov	eax, [ebp+next_register]
mov	esi, [ebp+num_open_registers]
mov	[ebp+esi*4+open_registers], eax
inc	esi
mov	[ebp+num_open_registers], esi
inc	eax
mov	[ebp+next_register], eax
jmp	loc_641C3E3F
add	eax, 106h
mov	[ebp+alloc], eax
mov	[esp+4], eax	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C3EB0
mov	esi, pattern_offset
jmp	loc_641C4255
add	[ebp+alloc], 121h
mov	eax, [ebp+alloc]
mov	[esp+4], eax	
mov	[esp], pattern	
call	_realloc
mov	edx, eax
test	eax, eax
jnz	loc_641C3BBE
mov	esi, pattern_offset
jmp	loc_641C4255
			
cmp	[ebp+size], pos
jle	loc_641C4361
mov	firstchar, [ebp+regex]
movsx	ch_0, byte ptr [esi+pos]
lea	ebx, [ecx-30h]
cmp	ebx, 9
jbe	short loc_641C4512
lea	ebx, [ecx-61h]
cmp	ebx, 5
ja	loc_641C4814
lea	ebx, [ecx-57h]
			
mov	byte ptr [ebp+gethex_value], bl
lea	esi, [pos+1]
cmp	[ebp+size], pos
jle	loc_641C4361
mov	ebx, [ebp+regex]
movsx	ecx, byte ptr [ebx+edi+1]
lea	ebx, [ecx-30h]
cmp	ebx, 9
jbe	short loc_641C4543
lea	ebx, [ecx-61h]
cmp	ebx, 5
ja	loc_641C472C
lea	ebx, [ecx-57h]
			
lea	pos, [esi+1]
mov	cl, byte ptr [ebp+gethex_value]
shl	ecx, 4
add	ecx, ebx
jmp	loc_641C3C7B
			
mov	cl, 0Ah
jmp	loc_641C3C7B
			
mov	cl, 0Ch		
jmp	loc_641C3C7B
			
mov	cl, 8		
jmp	loc_641C3C7B
			
mov	cl, 7		
jmp	loc_641C3C7B
			
mov	cl, 9		
jmp	loc_641C3C7B
			
mov	cl, 0Dh		
jmp	loc_641C3C7B
			
mov	cl, 0Bh		
jmp	loc_641C3C7B
			
mov	ch_0, [ebp+alloc]
mov	eax, [ebp+bufp]
mov	[eax+4], ecx
mov	[eax], pattern
mov	[eax+8], pattern_offset
mov	eax, offset aBadlyPlacedPar 
jmp	loc_641C437D
mov	ch_0, [ebp+gethex_value]
cmp	[ebp+size], ecx
jle	ends_prematurely
mov	eax, [ebp+regex]
mov	esi, ecx
mov	cl, [eax+ecx]
inc	esi
mov	[ebp+gethex_value], esi
mov	[ebp+complement], 1
cmp	[ebp+translate], 0
jz	loc_641C3C3A
movzx	ch_0, cl
mov	esi, [ebp+translate]
mov	cl, [esi+ch_0]
jmp	loc_641C3C3A
			
mov	num_jumps, [ebp+var_9C8]
mov	eax, [ebp+ad]
mov	[ebp+gethex_value_0], eax
jmp	loc_641C389D
cmp	cl, 6Eh
jz	loc_641C4984
ja	short loc_641C466D
cmp	cl, 62h
jz	loc_641C492C
cmp	cl, 66h
jz	loc_641C49F7
cmp	cl, 61h
jnz	loc_641C3AFA
mov	cl, 7
jmp	loc_641C3806
			
mov	pattern_offset,	[ebp+starts_base]
mov	[ebp+p], ebx
jmp	loc_641C39F4
mov	eax, [ebp+gethex_value]
inc	eax
cmp	[ebp+size], eax
jle	loc_641C41BA
mov	eax, [ebp+regex]
mov	esi, [ebp+gethex_value]
cmp	byte ptr [eax+esi], 5Ch
jnz	loc_641C41BA
cmp	byte ptr [eax+esi+1], 7Ch
setnz	al
jmp	loc_641C41B6
cmp	cl, 74h
jz	loc_641C49C7
ja	loc_641C489C
cmp	cl, 72h
jnz	loc_641C3AFA
mov	cl, 0Dh
jmp	loc_641C3806
			
mov	byte ptr [edx+pattern_offset], 0
mov	ch_0, [ebp+alloc]
mov	pattern, [ebp+bufp]
mov	[eax+4], ecx
mov	[eax], pattern
inc	pattern_offset
mov	[eax+8], ebx
xor	eax, eax
jmp	loc_641C437D
add	[ebp+alloc], 102h
mov	eax, [ebp+alloc]
mov	[esp+4], eax	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C4453
mov	esi, pattern_offset
jmp	loc_641C4255
mov	[ebp+alloc], 100h
xor	esi, esi
jmp	loc_641C4255
add	[ebp+alloc], 102h
mov	eax, [ebp+alloc]
mov	[esp+4], eax	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C3D95
mov	esi, pattern_offset
jmp	loc_641C4255
lea	ebx, [ecx-41h]
cmp	ebx, 5
ja	short loc_641C473C
lea	ebx, [ecx-37h]
jmp	loc_641C4543
			
mov	ebx, [ebp+var_9C8]
			
mov	edi, [ebp+alloc]
mov	pos, [ebp+bufp]
mov	[esi+4], edi
mov	[esi], pattern
mov	[esi+8], pattern_offset
mov	prev, offset aBadHexadecimal 
jmp	loc_641C437D
lea	eax, [pattern_offset+5]
cmp	[ebp+var_9EC], a
jg	short loc_641C478F
lea	pattern_offset,	[pattern+pattern_offset]
mov	[ebp+p], pattern
mov	esi, [ebp+var_9EC]
mov	dl, [ebx+5]
mov	[ebx+8], dl
dec	a
dec	ebx
cmp	pattern_offset,	a
jle	short loc_641C4777
mov	edx, [ebp+p]
mov	[ebp+var_9EC], pattern_offset
mov	ebx, [ebp+var_9E4]
mov	byte ptr [ebx],	0Dh
mov	ebx, [ebp+var_9EC]
mov	pattern_offset,	[ebp+complement]
lea	a, [ebx+esi+4]
mov	esi, [ebp+beginning_context]
mov	[esi], al
sar	disp, 8
mov	ebx, [ebp+var_9C8]
mov	[ebx], al
mov	esi, [ebp+ad]
add	esi, 3
mov	[ebp+var_9EC], esi
mov	eax, [ebp+starts_base]
mov	[ebp+p], eax
jmp	loc_641C39F4
add	[ebp+alloc], 109h
mov	esi, [ebp+alloc]
mov	[esp+4], esi	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C3FC7
mov	esi, pattern_offset
jmp	loc_641C4255
lea	ebx, [ecx-41h]
cmp	ebx, 5
ja	loc_641C473C
lea	ebx, [ecx-37h]
jmp	loc_641C4512
add	[ebp+alloc], 103h
mov	esi, [ebp+alloc]
mov	[esp+4], esi	
mov	[esp], pattern	
mov	[ebp+var_9E8], cl
call	_realloc
mov	edx, eax
test	eax, eax
mov	cl, [ebp+var_9E8]
jnz	loc_641C4113
mov	esi, pattern_offset
jmp	loc_641C4255
			
mov	ch_0, [ebp+alloc]
mov	eax, [ebp+bufp]
mov	[eax+4], ecx
mov	[eax], pattern
mov	[eax+8], pattern_offset
mov	eax, offset aBadMatchRegist 
jmp	loc_641C437D
cmp	cl, 54h
jz	loc_641C49C7
cmp	cl, 56h
jz	loc_641C498B
cmp	cl, 52h
jnz	loc_641C3AFA
jmp	loc_641C4685
cmp	cl, 76h
jz	loc_641C498B
cmp	cl, 78h
jnz	loc_641C3AFA
mov	edi, [ebp+gethex_value]
cmp	[ebp+size], edi
jle	ends_prematurely
mov	ch_0, [ebp+regex]
movsx	eax, byte ptr [ecx+edi]
lea	ecx, [eax-30h]
cmp	ecx, 9
jbe	short loc_641C48DB
lea	ecx, [eax-61h]
cmp	ecx, 5
ja	loc_641C49B3
lea	ecx, [eax-57h]
			
mov	byte ptr [ebp+gethex_value_0], cl
mov	esi, [ebp+gethex_value]
inc	pos
cmp	[ebp+size], pos
jle	ends_prematurely
mov	ecx, [ebp+regex]
mov	edi, [ebp+gethex_value]
movsx	eax, byte ptr [ecx+edi+1]
lea	ecx, [eax-30h]
cmp	ecx, 9
jbe	short loc_641C4912
lea	ecx, [eax-61h]
cmp	ecx, 5
ja	short loc_641C4973
lea	ecx, [eax-57h]
			
inc	pos
mov	[ebp+gethex_value], esi
mov	al, byte ptr [ebp+gethex_value_0]
shl	eax, 4
mov	edi, eax
lea	ecx, [edi+ecx]
jmp	loc_641C3806
			
mov	cl, 8
jmp	loc_641C3806
mov	eax, pattern
mov	esi, pattern_offset
jmp	loc_641C420E
mov	num_jumps, [ebp+alloc]
mov	esi, [ebp+bufp]
mov	[esi+4], edi
mov	[esi], pattern
mov	[esi+8], pattern_offset
mov	eax, offset aBadlyPlacedSpe 
jmp	loc_641C437D
mov	dword ptr [esp+8], 24Eh
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aCh0Ch9	
call	__assert
lea	ecx, [eax-41h]
cmp	ecx, 5
ja	hex_error
lea	ecx, [eax-37h]
jmp	short loc_641C4912
			
mov	cl, 0Ah
jmp	loc_641C3806
			
mov	cl, 0Bh
jmp	loc_641C3806
			
mov	esi, [ebp+var_9EC]
mov	num_jumps, [ebp+alloc]
mov	ebx, [ebp+bufp]
mov	[ebx+4], edi
mov	[ebx], pattern
mov	[ebx+8], pattern_offset
mov	eax, offset aRegularExpre_0 
jmp	loc_641C437D
lea	ecx, [eax-41h]
cmp	ecx, 5
ja	hex_error
lea	ecx, [eax-37h]
jmp	loc_641C48DB
			
mov	cl, 9
jmp	loc_641C3806
cmp	byte ptr [eax+esi+1], 29h
setnz	al
jmp	loc_641C41D7
mov	dword ptr [esp+8], 2D1h
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aNum_jumps0 
call	__assert
			
mov	cl, 0Ch
jmp	loc_641C3806
align 10h
public _regcomp
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+preg]
mov	esi, [ebp+regex]
mov	edx, [ebp+cflags]
xor	eax, eax
mov	ecx, 18h
mov	edi, ebx
rep stosb
and	syntax,	1
neg	syntax
and	syntax,	23h
mov	ds:_regexp_syntax, syntax
mov	[ebp+var_1C], al
call	_re_compile_initialize
mov	ecx, 0FFFFFFFFh
mov	al, [ebp+var_1C]
mov	preg_0,	esi
repne scasb
not	ecx
dec	ecx
mov	[esp+8], ebx	
mov	[esp+4], ecx	
mov	[esp], esi	
call	_re_compile_pattern
cmp	eax, 1
sbb	eax, eax
not	eax
add	esp, 2Ch
pop	preg_0
pop	regex_0
pop	edi
leave
retn
align 4
public _re_comp
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+s]
test	ebx, ebx
jz	short loc_641C4AA8
mov	ecx, ds:_re_comp_buf.buffer
test	ecx, ecx
jz	short loc_641C4AC0
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, s_0
repne scasb
not	ecx
dec	ecx
mov	dword ptr [esp+8], offset _re_comp_buf 
mov	[esp+4], ecx	
mov	[esp], ebx	
call	_re_compile_pattern
add	esp, 10h
pop	ebx
pop	edi
leave
retn
align 4
mov	s_0, ds:_re_comp_buf.buffer
test	ebx, ebx
jnz	short loc_641C4ABC
mov	eax, offset aOutOfMemory 
jmp	short loc_641C4A9F
align 4
xor	eax, eax
jmp	short loc_641C4A9F
mov	dword ptr [esp], 100h
call	_malloc
mov	ds:_re_comp_buf.fastmap, eax
mov	ds:_re_comp_buf.translate, 0
jmp	short loc_641C4A7D
align 10h
public _re_search_2
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	edi, [ebp+pos]
mov	ecx, [ebp+size1]
test	ecx, ecx
js	loc_641C4EDA
mov	edx, [ebp+size2]
test	edx, edx
js	loc_641C4EDA
test	pos_0, pos_0
js	loc_641C4EDA
mov	eax, [ebp+mstop]
test	eax, eax
js	loc_641C4EDA
mov	eax, [ebp+range]
add	eax, pos_0
js	loc_641C4F12
mov	edx, [ebp+size2]
add	edx, [ebp+size1]
mov	[ebp+var_24], edx
cmp	eax, edx
jg	loc_641C4F12
cmp	pos_0, [ebp+mstop]
jg	loc_641C4EF6
mov	esi, [ebp+bufp]
mov	ebx, [esi+0Ch]
mov	eax, [esi+10h]
mov	[ebp+var_1C], eax
test	fastmap, fastmap
jz	short loc_641C4B54
cmp	byte ptr [esi+14h], 0
jz	loc_641C4E6B
			
mov	eax, [ebp+bufp]
mov	al, [eax+17h]
mov	[ebp+anchor], al
mov	edx, [ebp+bufp]
cmp	byte ptr [edx+15h], 1
jz	loc_641C4E38
mov	esi, [ebp+range]
test	esi, esi
js	loc_641C4E45
mov	[ebp+dir], 1
cmp	[ebp+anchor], 2
jz	loc_641C4E23
mov	esi, [ebp+string1]
add	esi, [ebp+size1]
mov	[ebp+var_2C], esi
mov	esi, [ebp+var_1C]
xchg	ax, ax
test	fastmap, fastmap
jz	short loc_641C4C04
cmp	[ebp+dir], 1
jz	loc_641C4D14
cmp	[ebp+size1], pos_0
jl	loc_641C4C7C
mov	edx, [ebp+string1]
add	edx, pos_0
mov	[ebp+var_1C], edx
mov	partend, pos_0
sub	ecx, [ebp+range]
add	ecx, [ebp+string1]
test	translate, translate
jz	loc_641C4C9D
cmp	partstart, [ebp+var_1C]
jz	loc_641C4E1C
mov	edx, [ebp+var_1C]
movzx	ret, byte ptr [edx]
movzx	eax, byte ptr [translate+eax]
cmp	byte ptr [fastmap+eax],	0
jnz	loc_641C4E1C
mov	eax, edx
jmp	short loc_641C4BF5
movzx	edx, byte ptr [text]
movzx	edx, byte ptr [translate+edx]
cmp	byte ptr [fastmap+edx],	0
jnz	loc_641C4D0C
dec	text
cmp	partstart, text
jnz	short loc_641C4BE4
mov	text, partstart
sub	eax, [ebp+var_1C]
			
add	pos_0, eax
add	[ebp+range], eax
			
cmp	[ebp+anchor], 1
jz	loc_641C4CD0
test	pos_0, pos_0
js	loc_641C4EBE
cmp	pos_0, [ebp+var_24]
jg	loc_641C4EBE
mov	ret, [ebp+mstop]
mov	[esp+1Ch], eax	
mov	edx, [ebp+regs]
mov	[esp+18h], edx	
mov	[esp+14h], pos_0 
mov	eax, [ebp+size2]
mov	[esp+10h], eax	
mov	edx, [ebp+string2]
mov	[esp+0Ch], edx	
mov	eax, [ebp+size1]
mov	[esp+8], eax	
mov	edx, [ebp+string1]
mov	[esp+4], edx	
mov	eax, [ebp+bufp]
mov	[esp], eax	
call	_re_match_2
test	eax, eax
jns	loc_641C4D02
cmp	ret, 0FFFFFFFEh
jz	loc_641C4E5C
dec	[ebp+range]
js	loc_641C4CFD
add	pos_0, [ebp+dir]
jmp	loc_641C4B94
align 4
mov	partend, pos_0
sub	ecx, [ebp+size1]
mov	ret, [ebp+string2]
add	eax, ecx
mov	[ebp+var_1C], eax
cmp	[ebp+range], ecx
jl	loc_641C4DA0
mov	ecx, [ebp+string2]
test	translate, translate
jnz	loc_641C4BC3
cmp	partstart, [ebp+var_1C]
jz	loc_641C4E1C
mov	edx, [ebp+var_1C]
movzx	ret, byte ptr [edx]
cmp	byte ptr [fastmap+eax],	0
jnz	loc_641C4E1C
mov	eax, [ebp+var_1C]
jmp	short loc_641C4CC5
align 4
movzx	edx, byte ptr [text]
cmp	byte ptr [fastmap+edx],	0
jnz	short loc_641C4D0C
dec	text
cmp	partstart, text
jnz	short loc_641C4CBC
jmp	loc_641C4BFA
align 10h
test	pos_0, pos_0
jle	loc_641C4C0E
cmp	pos_0, [ebp+size1]
jg	loc_641C4DFC
mov	ret, [ebp+string1]
cmp	byte ptr [eax+pos_0-1],	0Ah
setnz	al
test	al, al
jz	loc_641C4C16
dec	[ebp+range]
jns	loc_641C4C72
			
mov	pos_0, 0FFFFFFFFh
mov	ret, pos_0
add	esp, 4Ch
pop	fastmap
pop	translate
pop	pos_0
leave
retn
			
sub	text, [ebp+var_1C]
jmp	loc_641C4BFF
cmp	[ebp+size1], pos_0
jle	loc_641C4DAC
mov	ret, [ebp+string1]
add	eax, pos_0
mov	[ebp+var_1C], eax
mov	edx, [ebp+range]
lea	partend, [pos_0+edx]
cmp	[ebp+size1], ecx
jge	loc_641C4E14
mov	ecx, [ebp+var_2C]
test	translate, translate
jz	loc_641C4DCB
cmp	partend, [ebp+var_1C]
jz	loc_641C4E54
mov	edx, [ebp+var_1C]
movzx	eax, byte ptr [edx]
movzx	eax, byte ptr [translate+eax]
cmp	byte ptr [fastmap+eax],	0
jnz	loc_641C4E54
mov	eax, edx
jmp	short loc_641C4D6D
movzx	edx, byte ptr [text]
movzx	edx, byte ptr [translate+edx]
cmp	byte ptr [fastmap+edx],	0
jnz	short loc_641C4D72
inc	text
cmp	partend, text
jnz	short loc_641C4D60
			
sub	pos_0, [ebp+var_1C]
add	edi, text
mov	edx, [ebp+var_1C]
add	[ebp+range], edx
sub	[ebp+range], text
cmp	[ebp+var_24], pos_0
jnz	loc_641C4C04
mov	text, [ebp+bufp]
cmp	byte ptr [eax+15h], 0
jz	loc_641C4CFD
mov	pos_0, [ebp+var_24]
jmp	loc_641C4C04
align 10h
sub	ecx, [ebp+range]
add	ecx, [ebp+string2]
jmp	loc_641C4BBB
align 4
mov	ret, pos_0
sub	eax, [ebp+size1]
add	eax, [ebp+string2]
mov	[ebp+var_1C], eax
mov	eax, [ebp+range]
lea	partend, [pos_0+eax]
sub	ecx, [ebp+size1]
add	ecx, [ebp+string2]
test	translate, translate
jnz	loc_641C4D3F
cmp	partend, [ebp+var_1C]
jz	loc_641C4E54
mov	edx, [ebp+var_1C]
movzx	eax, byte ptr [edx]
cmp	byte ptr [fastmap+eax],	0
jnz	short loc_641C4E54
mov	eax, [ebp+var_1C]
jmp	short loc_641C4DF1
align 4
movzx	edx, byte ptr [text]
cmp	byte ptr [fastmap+edx],	0
jnz	short loc_641C4D72
inc	text
cmp	partend, text
jnz	short loc_641C4DE8
jmp	loc_641C4D72
align 4
mov	ret, pos_0
sub	eax, [ebp+size1]
mov	edx, [ebp+string2]
cmp	byte ptr [edx+eax-1], 0Ah
setnz	al
jmp	loc_641C4CEC
align 4
add	ecx, [ebp+string1]
jmp	loc_641C4D37
			
xor	ret, ret
jmp	loc_641C4BFF
test	pos_0, pos_0
jnz	loc_641C4CFD
mov	[ebp+range], 0
jmp	loc_641C4B86
align 4
xor	fastmap, fastmap
mov	esi, [ebp+range]
test	esi, esi
jns	loc_641C4B75
neg	[ebp+range]
mov	[ebp+dir], 0FFFFFFFFh
jmp	loc_641C4B7C
			
mov	eax, [ebp+var_1C]
jmp	loc_641C4D72
mov	pos_0, 0FFFFFFFEh
mov	ret, pos_0
add	esp, 4Ch
pop	fastmap
pop	translate
pop	pos_0
leave
retn
mov	edx, [esi+8]
test	edx, edx
jle	loc_641C4F2E
mov	[esp+4], fastmap 
mov	eax, [ebp+bufp]
add	eax, 15h
mov	[esp], eax	
xor	ecx, ecx	
mov	esi, [ebp+bufp]
mov	eax, [esi]	
call	_re_do_compile_fastmap
test	eax, eax
jz	loc_641C4B54
mov	eax, [esi]
mov	al, [eax]
cmp	al, 1
jz	short loc_641C4EB8
cmp	al, 0Eh
setz	al
shl	eax, 1
mov	edx, [ebp+bufp]
mov	[edx+17h], al
mov	esi, [ebp+bufp]
mov	byte ptr [esi+14h], 1
jmp	loc_641C4B54
mov	byte ptr [esi+17h], 1
jmp	short loc_641C4EAC
			
mov	dword ptr [esp+8], 5CFh
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aPos0PosSize1Si	
call	__assert
			
mov	dword ptr [esp+8], 572h	
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aSize10Size20Po	
call	__assert
mov	dword ptr [esp+8], 574h	
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aPosMstop 
call	__assert
			
mov	dword ptr [esp+8], 573h	
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aPosRange0PosRa	
call	__assert
mov	dword ptr [esp+8], 37Eh
mov	dword ptr [esp+4], offset aRegexpr_c 
mov	dword ptr [esp], offset	aBufpUsed0 
call	__assert
align 4
public _re_search
push	ebp
mov	ebp, esp
sub	esp, 38h
mov	eax, [ebp+size]
mov	[esp+20h], eax	
mov	edx, [ebp+regs]
mov	[esp+1Ch], edx	
mov	edx, [ebp+range]
mov	[esp+18h], edx	
mov	edx, [ebp+startpos]
mov	[esp+14h], edx	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], eax	
mov	eax, [ebp+string]
mov	[esp+4], eax	
mov	eax, [ebp+bufp]
mov	[esp], eax	
call	_re_search_2
leave
retn
align 4
public _re_exec
push	ebp
mov	ebp, esp
push	edi
sub	esp, 34h
mov	edx, [ebp+s]
mov	edi, edx
xor	eax, eax
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
dec	ecx
mov	[esp+20h], ecx	
mov	dword ptr [esp+1Ch], 0 
mov	[esp+18h], ecx	
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	dword ptr [esp], offset	_re_comp_buf 
call	_re_search_2
not	eax
shr	eax, 1Fh
add	esp, 34h
pop	edi
leave
retn
align 4
public _regexec
			
push	ebp
mov	ebp, esp
push	edi
sub	esp, 34h
mov	edx, [ebp+string]
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
mov	[esp+20h], ecx	
mov	dword ptr [esp+1Ch], 0 
mov	[esp+18h], ecx	
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	eax, [ebp+preg]
mov	[esp], eax	
call	_re_search_2
test	eax, eax
jle	short loc_641C5051
xor	ret, ret
add	esp, 34h
pop	edi
leave
retn
align 4
public _stringprep_4i
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+ucs4]
mov	eax, [ebp+len]
mov	eax, [eax]
mov	[ebp+var_24], eax
mov	ecx, [ebp+profile]
mov	edx, [ecx]
test	edx, edx
jz	loc_641C5139
add	ecx, 0Ch
mov	[ebp+var_3C], ecx
mov	[ebp+var_2C], ecx
mov	eax, [ebp+profile]
mov	ecx, [ebp+flags]
and	ecx, 4
mov	[ebp+var_48], ecx
mov	ecx, [ebp+flags]
and	ecx, 1
mov	[ebp+var_4C], ecx
cmp	edx, 8
jbe	short loc_641C50A9
			
mov	eax, 65h	
			
add	esp, 5Ch
pop	ebx
pop	q
pop	edi
leave
retn
jmp	ds:off_64263520[edx*4]
			
mov	profile_0, [profile_0+4] 
test	eax, 7FFFFFFFh
jnz	loc_641C556E
test	[ebp+flags], eax
jz	loc_641C5542
			
cmp	[ebp+var_4C], 0
jz	short loc_641C50D5
test	eax, eax
jz	loc_641C5591
mov	ecx, [ebp+var_24]
mov	[esp+4], ecx	
mov	[esp], ucs4_0	
call	_stringprep_ucs4_nfkc_normalize
test	eax, eax
jz	loc_641C55BB
mov	[ebp+var_24], 0
xor	ecx, ecx
cmp	dword ptr [q], 0
jz	short loc_641C510E
xor	edx, edx
inc	ucs4len
lea	ecx, ds:0[ucs4len*4]
mov	edi, [q+ucs4len*4]
test	edi, edi
jnz	short loc_641C50FC
mov	[ebp+var_24], ucs4len
mov	ucs4len, [ebp+var_24]
cmp	[ebp+maxucs4len], edx
jbe	loc_641C55A9
mov	edi, ucs4_0
mov	esi, q
rep movsb
mov	[esp], eax	
call	_free
			
mov	eax, [ebp+var_2C]
mov	edx, [profile_0]
add	[ebp+var_2C], 0Ch
test	edx, edx
jnz	loc_641C5097
mov	ecx, [ebp+var_24]
mov	edx, [ebp+len]
mov	[edx], ecx
xor	profile_0, profile_0
jmp	loc_641C50A1
			
mov	profile_0, [profile_0+8]
mov	[ebp+var_1C], eax
cmp	[ebp+var_24], 0
jz	short loc_641C5128 
xor	edi, edi
mov	ecx, [ucs4_0+edi*4]
mov	edx, [ebp+var_1C]
jmp	short loc_641C5178
align 10h
cmp	ecx, eax
jb	short loc_641C5175
mov	q, [edx+4]
test	esi, esi
jz	short loc_641C516D
mov	eax, esi
			
cmp	ecx, eax
jbe	loc_641C554F
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C5160
mov	eax, [edx+4]
test	eax, eax
jnz	short loc_641C516D
inc	edi
cmp	[ebp+var_24], edi
ja	short loc_641C5156
jmp	short loc_641C5128 
			
mov	edx, [profile_0+4]
test	edx, 7FFFFFFFh
jnz	loc_641C557C
test	[ebp+flags], edx
jnz	short loc_641C51A5
test	edx, edx
jnz	short loc_641C5128 
			
cmp	[ebp+var_48], 0
jz	loc_641C5128	
mov	profile_0, [profile_0+8]
mov	[ebp+var_1C], eax
xor	edi, edi
cmp	[ebp+var_24], edi
jbe	loc_641C5128	
mov	ecx, [ucs4_0+edi*4]
mov	edx, [ebp+var_1C]
jmp	short loc_641C51E0
cmp	ecx, eax
jb	short loc_641C51DD
mov	q, [edx+4]
test	esi, esi
jz	short loc_641C51D5
mov	eax, esi
cmp	ecx, eax
jbe	loc_641C5598
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C51C8
mov	q, [edx+4]
test	esi, esi
jnz	short loc_641C51CC
inc	edi
jmp	short loc_641C51B7
			
mov	edx, [ebp+profile]
mov	profile_0, [edx]
test	eax, eax
jz	loc_641C509C	
mov	edx, [ebp+var_3C]
mov	[ebp+var_1C], edx
mov	edx, [ebp+profile]
mov	[ebp+contains_l], 0FFFFFFFFh
mov	[ebp+contains_ral], 0FFFFFFFFh
mov	[ebp+done_l], 0
mov	[ebp+done_ral],	0
mov	[ebp+done_prohibited], 0
mov	[ebp+j], 0
jmp	short loc_641C5254
cmp	eax, 7
jz	loc_641C54AF
cmp	eax, 8
jz	loc_641C5461
			
inc	[ebp+j]
mov	edx, [ebp+var_1C]
mov	eax, [profile_0]
add	[ebp+var_1C], 0Ch
test	eax, eax
jz	short loc_641C52B2
			
cmp	eax, 6
jnz	short loc_641C5232
mov	profile_0, [profile_0+8]
mov	[ebp+var_20], edx
mov	eax, [ebp+var_24]
test	eax, eax
jz	short loc_641C529B
xor	edi, edi
mov	ecx, [ucs4_0+edi*4]
mov	edx, [ebp+var_20]
jmp	short loc_641C5288
cmp	ecx, eax
jb	short loc_641C5285
mov	q, [edx+4]
test	esi, esi
jz	short loc_641C527D
mov	eax, esi
			
cmp	ecx, eax
jbe	loc_641C5450
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C5270
mov	eax, [edx+4]
test	eax, eax
jnz	short loc_641C527D
inc	edi
cmp	[ebp+var_24], edi
ja	short loc_641C5268
			
mov	[ebp+done_prohibited], 1
inc	[ebp+j]
mov	edx, [ebp+var_1C]
mov	eax, [profile_0]
add	[ebp+var_1C], 0Ch
test	eax, eax
jnz	short loc_641C5254
cmp	[ebp+done_prohibited], 0
jz	loc_641C509C	
cmp	[ebp+done_ral],	0
jz	loc_641C509C	
cmp	[ebp+done_l], 0
jz	loc_641C509C	
cmp	[ebp+contains_ral], 0FFFFFFFFh
jz	loc_641C5128	
cmp	[ebp+contains_l], 0FFFFFFFFh
jnz	loc_641C558A
mov	q, [ucs4_0]
imul	eax, [ebp+contains_ral], 0Ch
mov	ecx, [ebp+profile]
mov	profile_0, [eax+ecx+8]
mov	ecx, edx
jmp	short loc_641C52FB
align 4
			
add	ecx, 18h
mov	eax, [ecx]
test	eax, eax
jz	loc_641C5525
cmp	esi, eax
jb	short loc_641C52F8
mov	edi, [ecx+4]
test	edi, edi
jz	short loc_641C5312
mov	eax, edi
			
cmp	esi, eax
ja	short loc_641C52F8
mov	eax, [ebp+var_24]
mov	ecx, [ucs4_0+eax*4-4]
jmp	short loc_641C5338
align 10h
cmp	ecx, eax
jb	short loc_641C5335
mov	esi, [edx+4]
test	esi, esi
jz	short loc_641C532D
mov	eax, esi
			
cmp	ecx, eax
jbe	loc_641C5128	
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C5320
mov	eax, [edx+4]
test	eax, eax
jnz	short loc_641C532D
mov	eax, 4
jmp	loc_641C50A1
			
mov	edx, [profile_0+4]
test	edx, 7FFFFFFFh
jnz	loc_641C5560
test	[ebp+flags], edx
jz	loc_641C5535
			
mov	profile_0, [profile_0+8]
mov	[ebp+var_20], eax
mov	[ebp+var_1C], ucs4_0
mov	edi, [ebp+var_24]
test	edi, edi
jz	short loc_641C53B3
xor	ecx, ecx
lea	edi, ds:0[ecx*4]
mov	eax, [ebp+var_1C]
mov	edx, [eax+ecx*4]
mov	ebx, [ebp+var_20]
jmp	short loc_641C53A0
align 4
cmp	edx, eax
jb	short loc_641C539D
mov	q, [ebx+4]
test	esi, esi
jz	short loc_641C5399
mov	eax, esi
cmp	edx, eax
jbe	short loc_641C53BC
add	ebx, 18h
mov	eax, [ebx]
test	eax, eax
jnz	short loc_641C538C
mov	q, [ebx+4]
test	esi, esi
jnz	short loc_641C5390
inc	ecx
cmp	[ebp+var_24], ecx
ja	short loc_641C5379
			
mov	ebx, [ebp+var_1C]
jmp	loc_641C5128	
align 4
cmp	ecx, 0FFFFFFFFh
jz	short loc_641C53B3
mov	esi, 4
lea	eax, [esi-1]
mov	edx, [ebx+eax*4+8]
test	edx, edx
jnz	short loc_641C53E2
test	eax, eax
jz	short loc_641C5434
mov	esi, eax
lea	eax, [esi-1]
mov	edx, [ebx+eax*4+8]
test	edx, edx
jz	short loc_641C53D1
add	eax, [ebp+var_24]
mov	[ebp+j], eax
cmp	[ebp+maxucs4len], eax
jbe	short loc_641C5446
mov	eax, [ebp+var_24]
sub	eax, ecx
lea	eax, ds:0FFFFFFFCh[eax*4]
mov	[esp+8], eax	
mov	edx, [ebp+var_1C]
lea	eax, [edx+ecx*4+4]
mov	[esp+4], eax	
lea	ecx, [esi+ecx]
lea	eax, [edx+ecx*4]
mov	[esp], eax	
call	_memmove
mov	eax, [ebp+var_1C]
add	eax, edi
lea	ecx, ds:0[esi*4]
lea	esi, [ebx+8]
mov	edi, eax
rep movsb
mov	ecx, [ebp+j]
mov	[ebp+var_24], ecx
jmp	loc_641C5370
xor	esi, esi
mov	eax, 0FFFFFFFFh
add	eax, [ebp+var_24]
mov	[ebp+j], eax
cmp	[ebp+maxucs4len], eax
ja	short loc_641C53ED
mov	eax, 64h
jmp	loc_641C50A1
inc	edi
jz	loc_641C529B
mov	eax, 5
jmp	loc_641C50A1
mov	profile_0, [profile_0+8]
mov	[ebp+var_20], edx
cmp	[ebp+var_24], 0
jz	short loc_641C54A3
xor	edi, edi
mov	ecx, [ucs4_0+edi*4]
mov	edx, [ebp+var_20]
jmp	short loc_641C5490
align 4
cmp	ecx, eax
jb	short loc_641C548D
mov	q, [edx+4]
test	esi, esi
jz	short loc_641C5485
mov	eax, esi
			
cmp	ecx, eax
jbe	loc_641C5510
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C5478
mov	eax, [edx+4]
test	eax, eax
jnz	short loc_641C5485
inc	edi
cmp	[ebp+var_24], edi
ja	short loc_641C546F
			
mov	[ebp+done_l], 1
jmp	loc_641C5244
mov	profile_0, [profile_0+8]
mov	[ebp+var_20], edx
cmp	[ebp+var_24], 0
jz	short loc_641C54EF
xor	edi, edi
mov	ecx, [ucs4_0+edi*4]
mov	edx, [ebp+var_20]
jmp	short loc_641C54DC
align 4
cmp	ecx, eax
jb	short loc_641C54D9
mov	q, [edx+4]
test	esi, esi
jz	short loc_641C54D5
mov	eax, esi
			
cmp	ecx, eax
jbe	short loc_641C54FB
add	edx, 18h
mov	eax, [edx]
test	eax, eax
jnz	short loc_641C54C8
mov	eax, [edx+4]
test	eax, eax
jnz	short loc_641C54D5
inc	edi
cmp	[ebp+var_24], edi
ja	short loc_641C54BD
			
mov	[ebp+done_ral],	1
jmp	loc_641C5244
inc	edi
jz	short loc_641C54EF
mov	ecx, [ebp+j]
mov	[ebp+contains_ral], ecx
mov	[ebp+done_ral],	1
jmp	loc_641C5244
inc	edi
jz	short loc_641C54A3
mov	eax, [ebp+j]
mov	[ebp+contains_l], eax
mov	[ebp+done_l], 1
jmp	loc_641C5244
mov	eax, [ecx+4]
test	eax, eax
jnz	loc_641C5312
jmp	loc_641C5345
test	edx, edx
jnz	loc_641C5128	
jmp	loc_641C5367
test	eax, eax
jnz	loc_641C5128	
jmp	loc_641C50C7
inc	edi
jz	loc_641C5128	
mov	eax, 2
jmp	loc_641C50A1
test	[ebp+flags], edx
jnz	loc_641C5128	
jmp	loc_641C5367
test	[ebp+flags], eax
jnz	loc_641C5128	
jmp	loc_641C50C7
test	[ebp+flags], edx
jnz	loc_641C5128	
jmp	loc_641C51A5
mov	al, 3
jmp	loc_641C50A1
mov	al, 66h
jmp	loc_641C50A1
inc	edi
jz	loc_641C5128	
mov	eax, 1
jmp	loc_641C50A1
mov	[esp], q
call	_free
mov	eax, 64h
jmp	loc_641C50A1
mov	al, 0C8h
jmp	loc_641C50A1
align 4
public _stringprep
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	[ebp+adducs4len], 32h
xor	ebx, ebx
lea	edi, [ebp+ucs4len]
jmp	short loc_641C55E0
align 4
add	[ebp+adducs4len], 32h
test	ucs4, ucs4
jz	short loc_641C55EC
mov	[esp], ucs4	
call	_free
mov	[esp+8], edi
mov	dword ptr [esp+4], 0FFFFFFFFh 
mov	rc, [ebp+in]
mov	[esp], eax	
call	_stringprep_utf8_to_ucs4
mov	edx, eax
mov	maxucs4len, [ebp+adducs4len]
add	maxucs4len, [ebp+ucs4len]
lea	eax, ds:0[maxucs4len*4]
mov	[esp+4], eax	
mov	[esp], ucs4	
mov	[ebp+var_30], ucs4
call	_realloc
mov	ebx, eax
test	eax, eax
mov	edx, [ebp+var_30]
jz	loc_641C56B4
mov	eax, [ebp+profile]
mov	[esp+10h], eax	
mov	eax, [ebp+flags]
mov	[esp+0Ch], eax	
mov	[esp+8], maxucs4len 
mov	[esp+4], edi	
mov	[esp], ebx	
call	_stringprep_4i
cmp	eax, 64h
jz	short loc_641C55DC
mov	maxucs4len, rc
test	rc, rc
jnz	short loc_641C56CC
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	rc, [ebp+ucs4len]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_stringprep_ucs4_to_utf8
mov	[esp], ebx	
mov	[ebp+var_30], eax
call	_free
mov	edx, [ebp+var_30]
test	edx, edx
jz	short loc_641C56DE
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, utf8
repne scasb
not	ecx
dec	ecx
cmp	ecx, [ebp+maxlen]
jb	short loc_641C56E8
mov	[esp], edx	
call	_free
mov	rc, 64h
mov	eax, rc
add	esp, 4Ch
pop	ebx
pop	rc
pop	edi
leave
retn
align 4
mov	[esp], edx	
call	_free
mov	maxucs4len, 0C9h
mov	eax, rc
add	esp, 4Ch
pop	ebx
pop	rc
pop	edi
leave
retn
align 4
mov	[esp], ebx	
call	_free
mov	eax, rc
add	esp, 4Ch
pop	ebx
pop	rc
pop	edi
leave
retn
mov	rc, 0C9h
jmp	short loc_641C56A8
align 4
mov	[esp+4], edx	
mov	eax, [ebp+in]
mov	[esp], eax	
mov	[ebp+var_30], utf8
call	_strcpy
mov	edx, [ebp+var_30]
mov	[esp], edx	
call	_free
mov	eax, rc
add	esp, 4Ch
pop	ebx
pop	rc
pop	edi
leave
retn
align 10h
public _stringprep_profile
push	ebp
mov	ebp, esp
mov	eax, 67h
leave
retn
align 4
public _stringprep_4zi
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	esi, [ebp+ucs4]
mov	ebx, [ebp+maxucs4len]
test	ebx, ebx
jz	short loc_641C578D
mov	ecx, [ucs4_0]
test	ecx, ecx
jz	short loc_641C578D
xor	eax, eax
jmp	short loc_641C573F
mov	edx, [ucs4_0+ucs4len*4]
test	edx, edx
jz	short loc_641C5744
inc	ucs4len
cmp	maxucs4len_0, ucs4len
ja	short loc_641C5738
			
mov	[ebp+len], ucs4len
mov	ucs4len, [ebp+profile]
mov	[esp+10h], eax	
mov	eax, [ebp+flags]
mov	[esp+0Ch], eax	
mov	[esp+8], maxucs4len_0 
lea	eax, [ebp+len]
mov	[esp+4], eax	
mov	[esp], ucs4_0	
call	_stringprep_4i
test	eax, eax
jnz	short loc_641C577A
mov	edx, [ebp+len]
cmp	maxucs4len_0, edx
jbe	short loc_641C5784
mov	dword ptr [ucs4_0+edx*4], 0
add	esp, 30h
pop	maxucs4len_0
pop	ucs4_0
leave
retn
align 4
mov	al, 64h
add	esp, 30h
pop	maxucs4len_0
pop	ucs4_0
leave
retn
			
xor	eax, eax
jmp	short loc_641C5744
align 4
public _silc_argument_get_arg_num
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
test	eax, eax
jz	short locret_641C57A0
mov	payload_0, [payload_0]
leave
retn
align 4
public _silc_argument_get_first_arg
push	ebp
mov	ebp, esp
push	ebx
mov	edx, [ebp+payload]
mov	eax, [ebp+type]
mov	ebx, [ebp+ret_len]
test	edx, edx
jz	short loc_641C57F8
mov	dword ptr [payload_0+10h], 0
test	type_0,	type_0
jz	short loc_641C57F4
mov	ecx, [payload_0+0Ch]
mov	ecx, [ecx]
mov	[type_0], ecx
mov	ecx, [payload_0+10h]
lea	type_0,	ds:0[ecx*4]
test	ret_len_0, ret_len_0
jz	short loc_641C57E7
mov	ecx, [payload_0+8]
mov	eax, [ecx+eax]
mov	[ret_len_0], eax
mov	ecx, [payload_0+10h]
lea	eax, ds:0[ecx*4]
mov	ret_len_0, [payload_0+4]
mov	eax, [ebx+eax]
inc	ecx
mov	[payload_0+10h], ecx
pop	ebx
leave
retn
xor	ecx, ecx
jmp	short loc_641C57D1
xor	type_0,	type_0
pop	ret_len_0
leave
retn
align 10h
public _silc_argument_get_next_arg
push	ebp
mov	ebp, esp
push	esi
push	ebx
mov	edx, [ebp+payload]
mov	ebx, [ebp+type]
mov	eax, [ebp+ret_len]
test	edx, edx
jnz	short loc_641C5818
xor	ret_len_0, ret_len_0
pop	type_0
pop	esi
leave
retn
mov	ecx, [payload_0+10h]
cmp	ecx, [payload_0]
jnb	short loc_641C5812
test	type_0,	type_0
jz	short loc_641C582E
mov	esi, [payload_0+0Ch]
mov	ecx, [esi+ecx*4]
mov	[type_0], ecx
mov	ecx, [payload_0+10h]
test	ret_len_0, ret_len_0
jz	short loc_641C583D
mov	type_0,	[payload_0+8]
mov	ecx, [ebx+ecx*4]
mov	[ret_len_0], ecx
mov	ecx, [payload_0+10h]
mov	ret_len_0, [payload_0+4]
mov	eax, [eax+ecx*4]
inc	ecx
mov	[payload_0+10h], ecx
pop	ebx
pop	esi
leave
retn
align 4
public _silc_argument_get_arg_type
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	edi, [ebp+payload]
mov	edx, [ebp+type]
test	edi, edi
jnz	short loc_641C5864
			
xor	i, i
pop	ebx
pop	esi
pop	payload_0
leave
retn
align 4
mov	ecx, [payload_0]
test	ecx, ecx
jz	short loc_641C585C
mov	ebx, [payload_0+0Ch]
cmp	[ebx], type_0
jz	short loc_641C588B
xor	eax, eax
jmp	short loc_641C5884
align 4
lea	esi, ds:0[i*4]
cmp	[ebx+i*4], type_0
jz	short loc_641C5890
inc	i
cmp	i, ecx
jb	short loc_641C5878
jmp	short loc_641C585C
xor	esi, esi
lea	esi, [esi+0]
mov	i, [ebp+ret_len]
test	eax, eax
jz	short loc_641C58A2
mov	eax, [payload_0+8]
mov	eax, [eax+esi]
mov	type_0,	[ebp+ret_len]
mov	[edx], eax
mov	eax, [payload_0+4]
mov	eax, [eax+esi]
pop	ebx
pop	esi
pop	payload_0
leave
retn
align 10h
public _silc_argument_payload_free
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+payload]
test	esi, esi
jz	short loc_641C5910
mov	edx, [payload_0]
test	edx, edx
jz	short loc_641C58E1
xor	eax, eax
xor	ebx, ebx
lea	payload_0, [payload_0+0]
mov	edx, [payload_0+4]
mov	eax, [edx+eax*4]
mov	[esp], eax	
call	_silc_free
inc	i
mov	eax, i
cmp	[payload_0], i
ja	short loc_641C58CC
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_free
mov	eax, [payload_0+8]
mov	[esp], eax	
call	_silc_free
mov	eax, [payload_0+0Ch]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 10h
pop	i
pop	payload_0
leave
jmp	_silc_free
add	esp, 10h
pop	ebx
pop	payload_0
leave
retn
align 4
public _silc_argument_list_free
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+list]
mov	edi, [ebp+dec_type]
test	ebx, ebx
jz	loc_641C5A93
mov	eax, [list_0]
mov	[list_0+8], eax
mov	dl, [list_0+10h]
and	edx, 0FFFFFFFDh
mov	[list_0+10h], dl
mov	dword ptr [list_0+18h],	0
mov	dword ptr [list_0+14h],	0
xor	eax, eax
mov	[list_0+18h], eax
mov	eax, [list_0+8]
test	eax, eax
jz	short loc_641C59A2
nop
test	dl, 2
jz	loc_641C5A38
movzx	ecx, word ptr [list_0+0Eh]
mov	ecx, [eax+ecx]
mov	[list_0+8], ecx
mov	[list_0+14h], eax
mov	dec, [eax]
test	dec, dec
jz	short loc_641C59A9
cmp	dec_type_0, 4	
ja	short loc_641C598A 
jmp	ds:off_6426354C[dec_type_0*4] 
			
mov	eax, [dec]	
mov	[esp], eax	
call	_silc_pkcs_public_key_free
			
mov	[esp], dec	
call	_silc_free
mov	eax, [list_0+14h]
mov	dl, [list_0+10h]
mov	[list_0+18h], eax
mov	eax, [list_0+8]
test	eax, eax
jnz	short loc_641C5958
mov	dword ptr [list_0+14h],	0
mov	ecx, [list_0]
mov	[list_0+8], ecx
and	edx, 0FFFFFFFDh
mov	[list_0+10h], dl
test	ecx, ecx
jz	short loc_641C5A07
test	byte ptr [list_0+10h], 2
jz	loc_641C5A44
movzx	eax, word ptr [list_0+0Eh]
mov	eax, [ecx+eax]
mov	[list_0+8], eax
mov	eax, [list_0]
test	eax, eax
jz	short loc_641C59EF
cmp	ecx, eax
jz	loc_641C5A9B
movzx	dec_type_0, word ptr [list_0+0Ch]
jmp	short loc_641C59E6
cmp	ecx, esi
jz	short loc_641C5A50
mov	eax, esi
lea	edx, [eax+edi]
mov	dec, [edx]
test	esi, esi
jnz	short loc_641C59E0
cmp	ecx, [list_0+4]
jz	loc_641C5A81
			
mov	[esp], ecx	
call	_silc_free
mov	ecx, [list_0+8]
test	ecx, ecx
jnz	short loc_641C59B8
mov	[ebp+list], list_0
add	esp, 3Ch
pop	list_0
pop	dec
pop	edi
leave
jmp	_silc_free
align 4
			
mov	eax, [dec]	
mov	[esp], eax	
call	_silc_free
jmp	loc_641C598A	
align 4
			
mov	eax, [dec]	
mov	[esp], eax	
call	_silc_attribute_payload_free
jmp	loc_641C598A	
align 4
movzx	ecx, word ptr [list_0+0Ch]
mov	ecx, [eax+ecx]
jmp	loc_641C5968
movzx	eax, word ptr [list_0+0Ch]
mov	eax, [ecx+eax]
jmp	loc_641C59C9
mov	[ebp+var_2C], edx
mov	dec, [ecx+edi]
mov	edx, [ebp+var_2C]
mov	[edx], esi
test	esi, esi
jz	short loc_641C5A6F
test	byte ptr [list_0+10h], 1
jz	short loc_641C5A6F
movzx	edi, word ptr [list_0+0Eh]
mov	edx, [ecx+edi]
mov	[esi+edi], edx
			
cmp	ecx, [list_0+8]
jz	short loc_641C5A89
sub	dword ptr [list_0+10h],	4
cmp	ecx, [list_0+4]
jnz	loc_641C59F8
mov	[list_0+4], eax
jmp	loc_641C59F8
mov	esi, [ebp+var_2C]
mov	edx, [esi]
mov	[list_0+8], edx
jmp	short loc_641C5A74
add	esp, 3Ch
pop	list_0
pop	esi
pop	dec_type_0
leave
retn
movzx	dec_type_0, word ptr [list_0+0Ch]
mov	[ebp+var_2C], list_0
xor	eax, eax
jmp	short loc_641C5A53
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, data
mov	data, [ebp+ret_arg]
mov	esi, [ebp+ret_arg_alloc]
cmp	dec_type, 4	
ja	short loc_641C5B0C 
jmp	ds:off_64263560[dec_type*4] 
align 4
			
test	ret_arg_0, ret_arg_0 
jz	short loc_641C5AE6
mov	[esp+8], ret_arg_0 
mov	[esp+4], data_len 
mov	[esp], data	
mov	[ebp+var_4C], data_len
call	_silc_id_payload_parse_id
test	al, al
mov	edx, [ebp+var_4C]
jz	short loc_641C5B0C 
test	ret_arg_alloc_0, ret_arg_alloc_0
jz	loc_641C5C08
lea	edi, [ebp+id]
mov	[esp+8], edi	
mov	[esp+4], data_len 
mov	[esp], data	
call	_silc_id_payload_parse_id
test	al, al
jnz	loc_641C5C10
lea	ret_arg_alloc_0, [ret_arg_alloc_0+0]
			
xor	eax, eax	
			
add	esp, 5Ch
pop	data
pop	ret_arg_alloc_0
pop	edi
leave
retn
align 4
			
cmp	data_len, 4	
jnz	short loc_641C5B0C 
test	ret_arg_0, ret_arg_0
jz	short loc_641C5B41
movzx	data_len, byte ptr [data+3]
movzx	dec_type, byte ptr [data]
shl	ecx, 18h
or	edx, ecx
movzx	ecx, byte ptr [data+1]
shl	ecx, 10h
or	edx, ecx
movzx	ecx, byte ptr [data+2]
shl	ecx, 8
or	edx, ecx
mov	[ret_arg_0], edx
test	ret_arg_alloc_0, ret_arg_alloc_0
jz	loc_641C5C08
movzx	ret_arg_0, byte	ptr [data+3]
movzx	data_len, byte ptr [data]
shl	edx, 18h
or	eax, edx
movzx	edx, byte ptr [data+1]
shl	edx, 10h
or	eax, edx
movzx	edx, byte ptr [data+2]
shl	edx, 8
or	eax, edx
mov	[ebp+i], eax
mov	dword ptr [esp+4], 4 
lea	eax, [ebp+i]
mov	[esp], eax	
call	_silc_memdup
mov	[ret_arg_alloc_0], eax
mov	al, 1
jmp	short loc_641C5B0E
align 4
			
dec	data_len	
jnz	short loc_641C5B0C 
test	ret_arg_0, ret_arg_0
jz	short loc_641C5B91
cmp	byte ptr [data], 1
setz	byte ptr [ret_arg_0]
test	ret_arg_alloc_0, ret_arg_alloc_0
jz	short loc_641C5C08
cmp	byte ptr [data], 1
setz	byte ptr [ebp+public_key]
mov	dword ptr [esp+4], 1 
lea	ret_arg_0, [ebp+public_key]
mov	[esp], eax	
call	_silc_memdup
mov	[ret_arg_alloc_0], eax
mov	al, 1
jmp	loc_641C5B0E
			
test	ret_arg_alloc_0, ret_arg_alloc_0
jz	loc_641C5B0C	
lea	ret_arg_0, [ebp+public_key]
mov	[esp+8], eax	
mov	[esp+4], data_len 
mov	[esp], data	
call	_silc_public_key_payload_decode
test	al, al
jz	loc_641C5B0C	
mov	eax, [ebp+public_key]
mov	[ret_arg_alloc_0], eax
mov	al, 1
jmp	loc_641C5B0E
align 4
			
test	ret_arg_alloc_0, ret_arg_alloc_0 
jz	loc_641C5B0C	
mov	[esp+4], data_len 
mov	[esp], data	
call	_silc_attribute_payload_parse
mov	[ret_arg_alloc_0], eax
mov	al, 1
add	esp, 5Ch
pop	data
pop	ret_arg_alloc_0
pop	edi
leave
retn
			
mov	al, 1
jmp	loc_641C5B0E
align 10h
mov	dword ptr [esp+4], 20h 
mov	[esp], edi	
call	_silc_memdup
mov	[ret_arg_alloc_0], eax
mov	al, 1
jmp	loc_641C5B0E
align 4
public _silc_argument_payload_encode_one
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+args]
movzx	edx, word ptr [ebp+arg_len]
lea	esi, [edx+3]
test	ebx, ebx
jz	loc_641C5D1C
mov	eax, [args_0]
mov	[ebp+ptr], eax
mov	eax, [args_0+0Ch]
sub	eax, [ebp+ptr]
lea	ecx, [len+eax]
cmp	len, eax
jbe	loc_641C5D77
mov	edi, [args_0+4]
mov	[ebp+var_20], edi
mov	eax, [args_0+8]
mov	[ebp+var_1C], eax
mov	[esp+4], len	
mov	edi, [ebp+ptr]
mov	[esp], edi	
mov	[ebp+var_24], edx
mov	[ebp+var_28], len
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_24]
mov	ecx, [ebp+var_28]
jz	loc_641C5D6B
mov	[args_0], eax
mov	edi, [ebp+var_20]
sub	edi, [ebp+ptr]
add	edi, eax
mov	[ebp+ptr], edi
mov	[args_0+4], edi
mov	edi, [ebp+var_1C]
sub	edi, [ebp+var_20]
mov	[ebp+var_1C], edi
mov	edi, [ebp+ptr]
add	edi, [ebp+var_1C]
mov	[args_0+8], edi
lea	ecx, [eax+ecx]
mov	[args_0+0Ch], len
			
mov	[buffer+4], edi
mov	ecx, [buffer+8]
mov	eax, [buffer+0Ch]
sub	eax, ecx
cmp	len, eax
ja	short loc_641C5CC9
lea	len, [ecx+len]
mov	[buffer+8], esi
mov	dword ptr [esp+20h], 1Dh
mov	[esp+1Ch], edx
mov	eax, [ebp+arg]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 1Bh
mov	eax, [ebp+arg_type]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1
mov	eax, [ebp+arg_len]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [buffer]
mov	[buffer+4], eax
mov	eax, buffer
add	esp, 5Ch
pop	buffer
pop	len
pop	edi
leave
retn
align 4
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
mov	[ebp+var_24], edx
call	_silc_calloc
mov	args_0,	eax
test	eax, eax
mov	edx, [ebp+var_24]
jz	short loc_641C5D0F
mov	dword ptr [esp+4], 1 
mov	[esp], len	
mov	[ebp+var_24], edx
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+var_24]
jz	short loc_641C5D6B
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	ecx, [eax+len]
mov	[buffer+0Ch], ecx
mov	edi, eax
jmp	loc_641C5CB4
			
xor	buffer,	buffer
mov	eax, buffer
add	esp, 5Ch
pop	buffer
pop	len
pop	edi
leave
retn
mov	edi, [args_0+8]
jmp	loc_641C5CB4
align 10h
public _silc_argument_payload_parse
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	eax, [ebp+payload]
mov	[ebp+p_len], 0
mov	[ebp+arg_type],	0
mov	[ebp+buffer.head], eax
mov	[ebp+buffer.data], eax
add	eax, [ebp+payload_len]
mov	[ebp+buffer.end], eax
mov	[ebp+buffer.tail], eax
mov	dword ptr [esp+4], 14h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C5F3E
mov	dword ptr [esp+4], 4 
mov	newp, [ebp+argc]
mov	[esp], eax	
call	_silc_calloc
mov	[newp+4], eax
test	eax, eax
jz	loc_641C5F65
mov	dword ptr [esp+4], 4 
mov	edx, [ebp+argc]
mov	[esp], edx	
call	_silc_calloc
mov	[newp+8], eax
test	eax, eax
jz	loc_641C5F13
mov	dword ptr [esp+4], 4 
mov	ecx, [ebp+argc]
mov	[esp], ecx	
call	_silc_calloc
mov	[newp+0Ch], eax
test	eax, eax
jz	loc_641C5F13
mov	ecx, [ebp+argc]
test	ecx, ecx
jz	loc_641C5F69
xor	edi, edi
xor	esi, esi
mov	[ebp+var_5C], i
jmp	loc_641C5EBF
movzx	edx, [ebp+p_len]
mov	ecx, [ebp+buffer.data]
mov	[ebp+var_3C], ecx
mov	eax, [ebp+buffer.tail]
sub	eax, ecx
lea	ecx, [eax-3]
cmp	edx, ecx
ja	loc_641C5EF7
shl	edi, 2
mov	ecx, [newp+8]
mov	[ecx+edi], edx
movzx	esi, [ebp+arg_type]
mov	ecx, [newp+0Ch]
mov	[ecx+edi], esi
cmp	eax, 2
jbe	short loc_641C5E6F
mov	eax, [ebp+var_3C]
add	eax, 3
mov	[ebp+buffer.data], eax
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], edx
add	edi, [newp+4]
mov	[esp+8], edi
mov	dword ptr [esp+4], 1Ch
lea	esi, [ebp+buffer]
mov	[esp], esi	
call	_silc_buffer_unformat
inc	eax
jz	short loc_641C5EF7
movzx	ret, [ebp+p_len]
mov	edx, [ebp+buffer.data]
mov	ecx, [ebp+buffer.tail]
mov	edi, ecx
sub	edi, edx
cmp	ret, edi
ja	short loc_641C5EB0
lea	ret, [edx+ret]
mov	[ebp+buffer.data], ret
inc	[ebp+var_5C]
mov	edi, [ebp+var_5C]
cmp	[ebp+argc], edi
jbe	loc_641C5F48
mov	dword ptr [esp+14h], 1Dh
lea	i, [ebp+arg_type]
mov	[esp+10h], esi
mov	dword ptr [esp+0Ch], 1
lea	ret, [ebp+p_len]
mov	[esp+8], ret
mov	dword ptr [esp+4], 3
lea	edx, [ebp+buffer]
mov	[esp], edx	
call	_silc_buffer_unformat
inc	ret
jnz	loc_641C5E34
			
mov	esi, [ebp+var_5C]
test	i, i
jz	short loc_641C5F13
xor	edi, edi
mov	eax, [newp+4]
mov	eax, [eax+ret*4]
mov	[esp], eax	
call	_silc_free
inc	ret
cmp	i, ret
jg	short loc_641C5F00
			
mov	eax, [newp+4]
mov	[esp], eax	
call	_silc_free
mov	eax, [newp+8]
mov	[esp], eax	
call	_silc_free
mov	eax, [newp+0Ch]
mov	[esp], eax	
call	_silc_free
mov	[esp], newp	
call	_silc_free
xor	newp, newp
mov	eax, newp
add	esp, 7Ch
pop	newp
pop	i
pop	ret
leave
retn
mov	esi, edi
cmp	ecx, [ebp+buffer.data]
jnz	short err
mov	eax, [ebp+argc]
mov	[newp],	eax
mov	dword ptr [newp+10h], 0
mov	eax, newp
add	esp, 7Ch
pop	newp
pop	i
pop	edi
leave
retn
xor	eax, eax
jmp	short loc_641C5F16
xor	esi, esi
mov	ecx, [ebp+buffer.tail]
jmp	short loc_641C5F4A
public _silc_argument_list_parse
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	edx, [ebp+payload]
mov	eax, [ebp+payload_len]
cmp	eax, 4
ja	short loc_641C5F8C
xor	payload_len_0, payload_len_0
add	esp, 14h
pop	ebx
leave
retn
align 4
movzx	ecx, byte ptr [payload_0+1]
movzx	ebx, byte ptr [payload_0]
shl	ebx, 8
or	ecx, ebx
movzx	ecx, cx
mov	[esp+8], ecx	
sub	payload_len_0, 2
mov	[esp+4], eax	
add	payload_0, 2
mov	[esp], edx	
call	_silc_argument_payload_parse
add	esp, 14h
pop	ebx
leave
retn
align 4
public _silc_argument_get_decoded
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	esi, [ebp+payload]
mov	edx, [ebp+type]
mov	eax, [ebp+dec_type]
mov	[ebp+var_1C], eax
mov	ecx, [ebp+ret_arg]
mov	[ebp+var_20], ecx
mov	eax, [ebp+ret_arg_alloc]
mov	[ebp+var_24], eax
test	esi, esi
jnz	short loc_641C5FE8
			
xor	tmp, tmp
add	esp, 1Ch
pop	ebx
pop	payload_0
pop	edi
leave
retn
align 4
mov	ecx, [payload_0]
test	ecx, ecx
jz	short loc_641C5FDD
mov	edi, [payload_0+0Ch]
cmp	type_0,	[edi]
jz	short loc_641C6034
xor	eax, eax
nop
inc	eax
cmp	ecx, eax
jbe	short loc_641C5FDD
lea	ebx, ds:0[eax*4]
cmp	type_0,	[edi+eax*4]
jnz	short loc_641C5FF8
mov	eax, [payload_0+8]
mov	type_0,	[eax+ebx]
mov	eax, [payload_0+4]
mov	eax, [eax+ebx]
test	tmp, tmp
jz	short loc_641C5FDD
mov	ecx, [ebp+var_24]
mov	[ebp+type], ecx
mov	ecx, [ebp+var_20]
mov	[ebp+payload], ecx
mov	ecx, [ebp+var_1C]
add	esp, 1Ch
pop	ebx
pop	payload_0
pop	edi
leave
jmp	_silc_argument_decode
xor	ebx, ebx
jmp	short loc_641C6009
public _silc_argument_list_parse_decoded
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edx, [ebp+payload]
mov	eax, [ebp+payload_len]
cmp	eax, 4
ja	short loc_641C6058
xor	ebx, ebx
mov	arg, list
add	esp, 2Ch
pop	list
pop	esi
pop	arg
leave
retn
movzx	ecx, byte ptr [payload_0+1]
movzx	ebx, byte ptr [payload_0]
shl	ebx, 8
or	ecx, ebx
movzx	ecx, cx
mov	[esp+8], ecx	
sub	payload_len_0, 2
mov	[esp+4], eax	
add	payload_0, 2
mov	[esp], edx	
call	_silc_argument_payload_parse
mov	edi, eax
test	eax, eax
jz	short loc_641C604C
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
mov	ebx, eax
test	eax, eax
jz	loc_641C620C
mov	dword ptr [list+18h], 0
mov	dword ptr [list+14h], 0
mov	list, [list+10h]
and	eax, 3
mov	[list+10h], eax
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
mov	dword ptr [arg+10h], 0
mov	eax, [arg+0Ch]
mov	eax, [eax]
mov	[ebp+type], eax
mov	eax, [arg+8]
mov	eax, [eax]
mov	[ebp+data_len],	eax
mov	eax, [arg+4]
mov	eax, [eax]
mov	[ebp+data], eax
mov	dword ptr [arg+10h], 1
mov	esi, [ebp+data]
test	esi, esi
jz	loc_641C61C8
lea	esi, [esi+0]
			
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641C6108
mov	esi, eax
mov	eax, [ebp+type]
mov	[esi+4], eax
mov	[esp+4], esi	
mov	dword ptr [esp], 0 
mov	ecx, [ebp+dec_type] 
mov	edx, [ebp+data_len] 
mov	eax, [ebp+data]	
call	_silc_argument_decode
test	al, al
jz	loc_641C61F4
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641C618D
mov	[eax], esi
mov	edx, [list]
test	edx, edx
jz	loc_641C6200
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], eax
test	byte ptr [list+10h], 1
jz	short loc_641C617F
movzx	ecx, word ptr [list+0Eh]
mov	esi, [list+4]
mov	[eax+ecx], esi
mov	[list+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [list+10h], 4
			
mov	eax, [arg+10h]
cmp	eax, [arg]
jnb	short loc_641C61C8
lea	edx, ds:0[eax*4]
mov	ecx, [arg+0Ch]
mov	ecx, [ecx+edx]
mov	[ebp+type], ecx
mov	ecx, [arg+8]
mov	ecx, [ecx+edx]
mov	[ebp+data_len],	ecx
mov	ecx, [arg+4]
mov	ecx, [ecx+edx]
mov	[ebp+data], ecx
inc	eax
mov	[arg+10h], eax
mov	esi, [ebp+data]
test	esi, esi
jnz	loc_641C6108
lea	esi, [esi+0]
			
mov	[esp], arg	
call	_silc_argument_payload_free
mov	eax, [list]
mov	[list+8], eax
and	byte ptr [list+10h], 0FDh
mov	dword ptr [list+18h], 0
mov	dword ptr [list+14h], 0
mov	eax, list
add	esp, 2Ch
pop	list
pop	esi
pop	arg
leave
retn
align 4
mov	[esp], esi	
call	_silc_free
jmp	short loc_641C618D
align 10h
mov	[list],	eax
movzx	edx, word ptr [list+0Ch]
jmp	loc_641C616F
align 4
mov	[esp], arg	
call	_silc_argument_payload_free
mov	eax, list
add	esp, 2Ch
pop	list
pop	esi
pop	arg
leave
retn
align 10h
public _silc_argument_payload_encode_payload
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	edi, [ebp+payload]
mov	ebx, [edi]
test	ebx, ebx
jz	loc_641C6357
mov	esi, [payload_0+8]
xor	ecx, ecx
xor	eax, eax
xor	edx, edx
nop
mov	ecx, [esi+ecx*4]
lea	len, [len+ecx+3]
inc	i
mov	ecx, i
cmp	i, ebx
jnz	short loc_641C6240
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
mov	[ebp+items], len
call	_silc_calloc
mov	ebx, eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641C634D
test	edx, edx
jz	loc_641C635E
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641C6366
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	ecx, [eax+edx]
mov	[buffer+0Ch], ecx
mov	esi, ecx
sub	esi, eax
cmp	len, esi
ja	short loc_641C62AE
mov	[buffer+8], ecx
mov	ecx, [payload_0]
test	ecx, ecx
jz	loc_641C6341
xor	esi, esi
xor	eax, eax
mov	ecx, [payload_0+8]
mov	[ebp+var_20], len
mov	len, payload_0
mov	payload_0, i
xchg	ax, ax
shl	esi, 2
mov	eax, [ecx+esi]
mov	dword ptr [esp+20h], 1Dh
mov	[esp+1Ch], eax
mov	ecx, [payload_0+4]
mov	ecx, [ecx+esi]
mov	[esp+18h], ecx
mov	dword ptr [esp+14h], 1Bh
mov	ecx, [payload_0+0Ch]
mov	ecx, [ecx+esi]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
mov	[ebp+items], payload_0
call	_silc_buffer_format
mov	edx, [ebp+items]
mov	ecx, [edx+8]
mov	esi, [ecx+esi]
add	esi, 3
mov	[ebp+var_1C], esi
mov	esi, [buffer+4]
mov	eax, [buffer+8]
sub	eax, esi
cmp	[ebp+var_1C], eax
ja	short loc_641C6337
add	esi, [ebp+var_1C]
mov	[buffer+4], esi
inc	i
mov	esi, i
cmp	[payload_0], i
ja	short loc_641C62C8
mov	payload_0, [ebp+var_20]
neg	len
add	edx, [buffer+4]
cmp	edx, [buffer]
jb	short loc_641C634D
mov	[buffer+4], edx
			
mov	eax, buffer
add	esp, 4Ch
pop	buffer
pop	esi
pop	i
leave
retn
xor	edx, edx
jmp	loc_641C624E
mov	ecx, [buffer+8]
jmp	loc_641C62AB
xor	buffer,	buffer
jmp	short loc_641C634D
align 4
public _silc_argument_payload_encode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+argv_types]
mov	edx, [ebp+argc]
test	edx, edx
jz	loc_641C649A
xor	edx, edx
xor	eax, eax
xor	edi, edi
mov	ecx, [ebp+argc]
mov	ebx, [ebp+argv_lens]
nop
movzx	edx, word ptr [argv_lens_0+edx*4]
lea	len, [len+edx+3]
inc	i
mov	edx, i
cmp	i, argc_0
jnz	short loc_641C6390
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C6490
test	len, len
jz	loc_641C64A1
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641C64A9
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+len]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	len, ecx
ja	short loc_641C63F6
mov	[buffer+8], edx
mov	eax, [ebp+argc]
test	eax, eax
jz	loc_641C6484
xor	eax, eax
mov	[ebp+var_1C], 0
mov	[ebp+var_20], len
mov	len, argv_types_0
nop
shl	eax, 2
mov	esi, [ebp+argv_lens]
add	esi, eax
mov	edx, [esi]
mov	dword ptr [esp+20h], 1Dh
movzx	ecx, dx
mov	[esp+1Ch], ecx
mov	ecx, [ebp+argv]
mov	ecx, [ecx+eax]
mov	[esp+18h], ecx
mov	dword ptr [esp+14h], 1Bh
mov	eax, [argv_types_0+eax]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], edx
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
movzx	edx, word ptr [esi]
add	edx, 3
mov	ecx, [buffer+4]
mov	eax, [buffer+8]
sub	eax, ecx
cmp	edx, eax
ja	short loc_641C6476
lea	edx, [ecx+edx]
mov	[buffer+4], edx
inc	[ebp+var_1C]
mov	eax, [ebp+var_1C]
cmp	[ebp+argc], eax
ja	short loc_641C6410
mov	argv_types_0, [ebp+var_20]
neg	len
add	edi, [buffer+4]
cmp	edi, [buffer]
jb	short loc_641C6490
mov	[buffer+4], edi
			
mov	eax, buffer
add	esp, 5Ch
pop	buffer
pop	esi
pop	len
leave
retn
xor	edi, edi
jmp	loc_641C639F
mov	edx, [buffer+8]
jmp	loc_641C63F3
xor	buffer,	buffer
jmp	short loc_641C6490
align 10h
public _silc_attribute_get_attribute
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	al, [eax]
leave
retn
align 4
public _silc_attribute_get_flags
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	al, [eax+1]
leave
retn
align 4
public _silc_attribute_get_data
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+data_len]
test	edx, edx
jz	short loc_641C64DB
movzx	ecx, word ptr [payload_0+2]
mov	[data_len_0], ecx
mov	payload_0, [payload_0+4]
leave
retn
public _silc_attribute_get_object
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 9Ch
mov	esi, [ebp+payload]
mov	ebx, [ebp+object]
mov	eax, [ebp+object_size]
test	ebx, ebx
jz	short loc_641C6504 
test	byte ptr [payload_0+1],	1
jnz	short loc_641C6504 
cmp	byte ptr [payload_0], 11h 
jbe	short loc_641C6514
			
xor	eax, eax
			
add	esp, 9Ch
pop	ebx
pop	signon_0
pop	edi
leave
retn
align 4
movzx	edx, byte ptr [payload_0]
jmp	ds:off_64263574[edx*4] 
align 10h
			
cmp	res, 8
jnz	short loc_641C6504 
movzx	edx, word ptr [payload_0+2]
mov	res, [payload_0+4]
mov	[ebp+buffer.head], res
mov	[ebp+buffer.data], res
add	res, edx
mov	[ebp+buffer.end], res
mov	[ebp+buffer.tail], res
mov	dword ptr [esp+14h], 1Dh
lea	res, [object_0+4]
mov	[esp+10h], res
mov	dword ptr [esp+0Ch], 11h
lea	res, [ebp+type]
mov	[esp+8], res
mov	dword ptr [esp+4], 5
lea	res, [ebp+buffer]
mov	[esp], res	
call	_silc_buffer_unformat
inc	res
jz	short loc_641C6504 
mov	res, [ebp+type]
mov	[object_0], res
mov	al, 1
jmp	short loc_641C6506
align 4
			
cmp	object_size_0, 64h 
jnz	short loc_641C6504 
mov	[esp+8], object_0 
movzx	object_size_0, word ptr	[payload_0+2]
mov	[esp+4], eax	
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_vcard_decode
test	al, al
setnz	al
jmp	loc_641C6506
align 10h
			
cmp	object_size_0, 14Ch 
jnz	loc_641C6504	
mov	ax, [payload_0+2]
cmp	ax, 0Ch
jbe	loc_641C6504	
mov	edx, [payload_0+4]
mov	[ebp+buffer.head], edx
mov	[ebp+buffer.data], edx
movzx	eax, ax
add	edx, eax
mov	[ebp+buffer.end], edx
mov	[ebp+buffer.tail], edx
mov	dword ptr [esp+34h], 1Dh
lea	eax, [object_0+4]
mov	[esp+30h], eax
mov	dword ptr [esp+2Ch], 5
lea	eax, [ebp+signon_len]
mov	[esp+28h], eax
lea	eax, [ebp+signon]
mov	[esp+24h], eax
mov	dword ptr [esp+20h], 0Eh
lea	eax, [object_0+148h]
mov	[esp+1Ch], eax
mov	dword ptr [esp+18h], 1
lea	eax, [ebp+addr_len]
mov	[esp+14h], eax
lea	eax, [ebp+addr]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 0Eh
mov	[esp+8], object_0
mov	dword ptr [esp+4], 5
lea	eax, [ebp+buffer]
mov	[esp], eax	
call	_silc_buffer_unformat
inc	eax
jz	loc_641C6504	
lea	edx, [object_0+48h]
xor	eax, eax
mov	ecx, 100h
mov	edi, edx
rep stosb
add	object_0, 8
mov	cl, 40h
mov	edi, ebx
rep stosb
mov	ecx, [ebp+addr_len]
cmp	cx, 0FEh
jbe	loc_641C691F
mov	ecx, 0FFh
mov	payload_0, [ebp+addr]
mov	edi, edx
rep movsb
mov	cx, [ebp+signon_len]
cmp	cx, 3Eh
jbe	loc_641C6917
mov	ecx, 3Fh
mov	addr_0,	[ebp+signon]
mov	edi, ebx
rep movsb
mov	al, 1
jmp	loc_641C6506
align 4
			
cmp	object_size_0, 4 
jnz	loc_641C6504	
cmp	word ptr [payload_0+2],	3
jbe	loc_641C6504	
mov	edx, [payload_0+4]
movzx	object_size_0, byte ptr	[edx+3]
movzx	ecx, byte ptr [edx]
shl	ecx, 18h
or	eax, ecx
movzx	ecx, byte ptr [edx+1]
shl	ecx, 10h
or	eax, ecx
movzx	edx, byte ptr [edx+2]
shl	edx, 8
or	eax, edx
mov	[object_0], eax
mov	al, 1
jmp	loc_641C6506
align 4
			
mov	di, [payload_0+2] 
cmp	di, 1
jbe	loc_641C6504	
mov	payload_0, [payload_0+4]
movzx	edx, byte ptr [esi+1]
movzx	ecx, byte ptr [esi]
shl	ecx, 8
or	len_0, ecx
movzx	ecx, dx
mov	[ebp+var_5C], ecx
inc	ecx
movzx	edi, di
cmp	ecx, edi
jge	loc_641C6504	
cmp	object_size_0, [ebp+var_5C]
jb	loc_641C6504	
mov	word ptr [ebp+addr_len+2], dx
add	esi, 2
mov	edi, object_0
mov	ecx, [ebp+var_5C]
rep movsb
mov	al, 1
jmp	loc_641C6506
align 4
			
cmp	object_size_0, 18h 
jnz	loc_641C6504	
movzx	object_size_0, word ptr	[payload_0+2]
mov	[esp+8], eax	
mov	eax, [payload_0+4]
mov	[esp+4], eax	
mov	[esp], object_0	
call	_silc_mime_decode
test	eax, eax
setnz	al
jmp	loc_641C6506
align 10h
			
cmp	res, 10h
jnz	loc_641C6504	
movzx	edx, word ptr [payload_0+2]
mov	res, [payload_0+4]
mov	[ebp+buffer.head], res
mov	[ebp+buffer.data], res
add	res, edx
mov	[ebp+buffer.end], res
mov	[ebp+buffer.tail], res
mov	dword ptr [esp+24h], 1Dh
lea	res, [object_0+0Ch]
mov	[esp+20h], res
mov	dword ptr [esp+1Ch], 11h
lea	res, [object_0+8]
mov	[esp+18h], res
mov	dword ptr [esp+14h], 11h
lea	res, [object_0+4]
mov	[esp+10h], res
mov	dword ptr [esp+0Ch], 11h
mov	[esp+8], object_0
mov	dword ptr [esp+4], 11h
lea	res, [ebp+buffer]
mov	[esp], res	
call	_silc_buffer_unformat
inc	res
setnz	al
jmp	loc_641C6506
align 4
			
cmp	res, 14h
jnz	loc_641C6504	
movzx	edx, word ptr [payload_0+2]
mov	res, [payload_0+4]
mov	[ebp+buffer.head], res
mov	[ebp+buffer.data], res
add	res, edx
mov	[ebp+buffer.end], res
mov	[ebp+buffer.tail], res
mov	dword ptr [esp+2Ch], 1Dh
lea	res, [object_0+10h]
mov	[esp+28h], res
mov	dword ptr [esp+24h], 11h
lea	res, [object_0+0Ch]
mov	[esp+20h], res
mov	dword ptr [esp+1Ch], 11h
lea	res, [object_0+8]
mov	[esp+18h], res
mov	dword ptr [esp+14h], 11h
lea	res, [object_0+4]
mov	[esp+10h], res
mov	dword ptr [esp+0Ch], 11h
lea	res, [ebp+type]
mov	[esp+8], res
mov	dword ptr [esp+4], 5
lea	res, [ebp+buffer]
mov	[esp], res	
call	_silc_buffer_unformat
inc	res
jnz	loc_641C656E
jmp	loc_641C6504	
			
cmp	res, 0Ch
jnz	loc_641C6504	
movzx	edx, word ptr [payload_0+2]
mov	res, [payload_0+4]
mov	[ebp+buffer.head], res
mov	[ebp+buffer.data], res
add	res, edx
mov	[ebp+buffer.end], res
mov	[ebp+buffer.tail], res
mov	dword ptr [esp+10h], 1Dh
lea	res, [ebp+addr_len+2]
mov	[esp+0Ch], res
mov	[esp+8], object_0
mov	dword ptr [esp+4], 14h
lea	res, [ebp+buffer]
mov	[esp], res	
call	_silc_buffer_unformat
inc	res
jz	loc_641C6504	
movzx	edx, word ptr [ebp+addr_len+2]
mov	res, [ebp+buffer.tail]
sub	res, [ebp+buffer.data]
sub	res, 2
cmp	edx, res
ja	loc_641C6504	
movzx	res, word ptr [payload_0+2]
sub	res, 2
sub	res, edx
mov	[esp+4], res	
add	edx, 2
add	edx, [payload_0+4]
mov	[esp], edx	
call	_silc_memdup
mov	[object_0+4], res
movzx	res, word ptr [payload_0+2]
sub	res, 2
movzx	edx, word ptr [ebp+addr_len+2]
sub	res, len_0
mov	[object_0+8], res
mov	al, 1
jmp	loc_641C6506
align 4
			
cmp	object_size_0, 0Ch 
jnz	loc_641C6504	
mov	dword ptr [object_0], 0
movzx	object_size_0, word ptr	[payload_0+2]
mov	[esp+4], eax	
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_memdup
mov	[object_0+4], eax
movzx	eax, word ptr [payload_0+2]
mov	[object_0+8], eax
mov	al, 1
jmp	loc_641C6506
movzx	ecx, cx
jmp	loc_641C6684
movzx	ecx, cx
jmp	loc_641C666A
align 4
public _silc_attribute_get_verify_data
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+attrs]
mov	al, [ebp+server_verification]
mov	[ebp+var_29], al
mov	eax, [ebx]
mov	[ebx+8], eax
and	byte ptr [ebx+10h], 0FDh
mov	dword ptr [ebx+18h], 0
mov	dword ptr [ebx+14h], 0
xor	eax, eax
xor	edx, edx
xor	edi, edi
nop
mov	[attrs_0+18h], eax
mov	eax, [attrs_0+8]
test	eax, eax
jz	loc_641C6A3F
test	byte ptr [attrs_0+10h],	2
jz	loc_641C6A5C
movzx	ecx, word ptr [attrs_0+0Eh]
mov	ecx, [eax+ecx]
mov	[attrs_0+8], ecx
mov	[attrs_0+14h], eax
mov	attr, [eax]
test	attr, attr
jz	loc_641C6A46
mov	cl, [attr]
cmp	cl, 0Eh
jz	loc_641C6A68
cmp	cl, 0Fh
jz	short loc_641C6958
movzx	eax, word ptr [attr+2]
lea	eax, [len+eax+4]
mov	[esp+4], eax	
mov	[esp], data	
mov	[ebp+var_30], len
call	_silc_realloc
mov	data, eax
test	eax, eax
mov	edx, [ebp+var_30]
jz	loc_641C6A52
movzx	data, word ptr [attr+2]
lea	ecx, [data+edx]
mov	[ebp+buffer.head], ecx
mov	[ebp+buffer.data], ecx
lea	ecx, [ecx+eax+4]
mov	[ebp+buffer.end], ecx
mov	[ebp+buffer.tail], ecx
mov	dword ptr [esp+28h], 1Dh
mov	[esp+24h], eax
mov	ecx, [attr+4]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 1Bh
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 3
movzx	eax, byte ptr [attr+1]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1
movzx	eax, byte ptr [attr]
mov	[esp+8], eax
mov	dword ptr [esp+4], 1
lea	eax, [ebp+buffer]
mov	[esp], eax	
call	_silc_buffer_format
movzx	eax, word ptr [attr+2]
mov	edx, [ebp+var_30]
lea	edx, [edx+eax+4]
mov	eax, [attrs_0+14h]
mov	[attrs_0+18h], eax
mov	eax, [attrs_0+8]
test	eax, eax
jnz	loc_641C6966
mov	dword ptr [attrs_0+14h], 0
mov	eax, [ebp+data_len]
test	eax, eax
jz	short loc_641C6A52
mov	eax, [ebp+data_len]
mov	[eax], len
			
mov	eax, data
add	esp, 5Ch
pop	attrs_0
pop	attr
pop	data
leave
retn
movzx	ecx, word ptr [attrs_0+0Ch]
mov	ecx, [eax+ecx]
jmp	loc_641C6977
cmp	[ebp+var_29], 0
jz	short loc_641C6A2E
jmp	loc_641C6997
align 4
public _silc_attribute_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
mov	eax, [ebx+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C6AE2
test	len, len
jz	short loc_641C6AE2
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641C6AEB
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	len, [eax+len]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
xor	sb, sb
jmp	short loc_641C6AE2
align 10h
public _silc_attribute_payload_encode_data
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+attrs]
mov	al, [ebp+attribute]
mov	[ebp+var_21], al
mov	dl, [ebp+flags]
mov	[ebp+var_22], dl
movzx	edi, word ptr [ebp+data_len]
lea	esi, [edi+4]
test	ebx, ebx
jz	loc_641C6BF4
mov	eax, [attrs_0]
mov	[ebp+ptr], eax
mov	eax, [attrs_0+0Ch]
sub	eax, [ebp+ptr]
lea	ecx, [len+eax]
cmp	len, eax
jbe	loc_641C6C0F
mov	edx, [attrs_0+4]
mov	[ebp+var_20], edx
mov	eax, [attrs_0+8]
mov	[ebp+var_1C], eax
mov	[esp+4], len	
mov	edx, [ebp+ptr]
mov	[esp], edx	
mov	[ebp+var_28], len
call	_silc_realloc
test	eax, eax
mov	ecx, [ebp+var_28]
jz	loc_641C6C0B
mov	[attrs_0], eax
mov	edx, [ebp+var_20]
sub	edx, [ebp+ptr]
add	edx, eax
mov	[ebp+ptr], edx
mov	[attrs_0+4], edx
mov	edx, [ebp+var_1C]
sub	edx, [ebp+var_20]
mov	[ebp+var_1C], edx
mov	edx, [ebp+ptr]
add	edx, [ebp+var_1C]
mov	[attrs_0+8], edx
lea	ecx, [eax+ecx]
mov	[attrs_0+0Ch], len
mov	eax, [attrs_0+8]
mov	[buffer+4], edx
mov	edx, [buffer+0Ch]
sub	edx, eax
cmp	esi, edx
ja	short loc_641C6B93
lea	len, [eax+len]
mov	[buffer+8], esi
mov	dword ptr [esp+28h], 1Dh
mov	[esp+24h], edi
mov	eax, [ebp+data]
mov	[esp+20h], eax
mov	dword ptr [esp+1Ch], 1Bh
mov	[esp+18h], edi
mov	dword ptr [esp+14h], 3
movzx	eax, [ebp+var_22]
mov	[esp+10h], flags_0
mov	dword ptr [esp+0Ch], 1
movzx	flags_0, [ebp+var_21]
mov	[esp+8], attribute_0
mov	dword ptr [esp+4], 1
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [buffer]
mov	[buffer+4], eax
			
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	len
pop	edi
leave
retn
align 4
mov	eax, len	
call	_silc_buffer_alloc
mov	attrs_0, eax
test	eax, eax
jz	short loc_641C6BE7
mov	buffer,	[ebx+8]
mov	edx, eax
jmp	loc_641C6B81
xor	attrs_0, attrs_0
jmp	short loc_641C6BE7
mov	edx, [attrs_0+8]
jmp	loc_641C6B7E
align 4
public _silc_attribute_payload_list_free
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+list]
mov	eax, [ebx]
mov	[ebx+8], eax
mov	al, [ebx+10h]
and	eax, 0FFFFFFFDh
mov	[ebx+10h], al
mov	dword ptr [ebx+18h], 0
mov	dword ptr [ebx+14h], 0
xor	edx, edx
mov	[list_0+18h], edx
mov	edx, [list_0+8]
test	edx, edx
jz	short loc_641C6CC9
test	al, 2
jz	loc_641C6DC0
movzx	ecx, word ptr [list_0+0Eh]
mov	ecx, [edx+ecx]
mov	[list_0+8], ecx
mov	[list_0+14h], edx
mov	entry, [edx]
test	entry, entry
jz	short loc_641C6CD0
mov	eax, [entry+4]
mov	[esp], eax	
call	_silc_free
mov	[esp], entry	
call	_silc_free
mov	ecx, [list_0]
mov	[ebp+ptr], ecx
mov	[list_0+8], ecx
mov	al, [list_0+10h]
and	eax, 0FFFFFFFDh
mov	[list_0+10h], al
mov	dl, al
and	edx, 2
mov	[ebp+var_19], dl
mov	edx, [ebp+ptr]
test	edx, edx
jz	short loc_641C6CBC
cmp	[ebp+var_19], 0
jz	loc_641C6D44
movzx	edi, word ptr [list_0+0Eh]
mov	edi, [edx+edi]
mov	[list_0+8], edi
cmp	entry, [edx]
jz	loc_641C6D56
mov	edx, edi
test	edx, edx
jnz	short loc_641C6C9A
mov	edx, [list_0+14h]
mov	[list_0+18h], edx
mov	edx, [list_0+8]
test	edx, edx
jnz	short loc_641C6C4C
mov	dword ptr [list_0+14h],	0
mov	ecx, [list_0]
mov	[list_0+8], ecx
and	eax, 0FFFFFFFDh
mov	[list_0+10h], al
test	ecx, ecx
jz	short loc_641C6D33
nop
test	byte ptr [list_0+10h], 2
jz	loc_641C6DCC
movzx	eax, word ptr [list_0+0Eh]
mov	eax, [ecx+eax]
mov	[list_0+8], eax
mov	eax, [list_0]
test	eax, eax
jz	short loc_641C6D1B
cmp	ecx, eax
jz	loc_641C6E1B
movzx	edi, word ptr [list_0+0Ch]
jmp	short loc_641C6D12
cmp	ecx, esi
jz	loc_641C6DD8
mov	eax, esi
lea	edx, [eax+edi]
mov	entry, [edx]
test	esi, esi
jnz	short loc_641C6D08
cmp	ecx, [list_0+4]
jz	loc_641C6E09
			
mov	[esp], ecx	
call	_silc_free
mov	ecx, [list_0+8]
test	ecx, ecx
jnz	short loc_641C6CE0
mov	[ebp+list], list_0
add	esp, 4Ch
pop	list_0
pop	entry
pop	edi
leave
jmp	_silc_free
align 4
movzx	edi, word ptr [list_0+0Ch]
mov	edi, [edx+edi]
mov	[list_0+8], edi
cmp	entry, [edx]
jnz	loc_641C6CB6
mov	[ebp+ptr], edx
test	ecx, ecx
jz	short loc_641C6D86
cmp	edx, ecx
jz	loc_641C6E78
movzx	edi, word ptr [list_0+0Ch]
mov	edx, [ebp+ptr]
jmp	short loc_641C6D7A
align 10h
cmp	edx, esi
jz	loc_641C6E26
mov	ecx, esi
lea	eax, [ecx+edi]
mov	entry, [eax]
test	esi, esi
jnz	short loc_641C6D70
mov	[ebp+ptr], edx
			
mov	edi, [ebp+ptr]
cmp	edi, [list_0+4]
jz	loc_641C6E70
mov	eax, [ebp+ptr]
cmp	eax, [list_0+14h]
jz	loc_641C6E64
mov	edx, [ebp+ptr]
cmp	edx, [list_0+18h]
jz	loc_641C6E58
mov	entry, [ebp+ptr]
mov	[esp], esi	
call	_silc_free
mov	edx, [list_0+14h]
mov	al, [list_0+10h]
jmp	loc_641C6C42
movzx	ecx, word ptr [list_0+0Ch]
mov	ecx, [edx+ecx]
jmp	loc_641C6C5B
movzx	eax, word ptr [list_0+0Ch]
mov	eax, [ecx+eax]
jmp	loc_641C6CF1
mov	[ebp+var_3C], edx
mov	entry, [ecx+edi]
mov	edi, [ebp+var_3C]
mov	[edi], esi
test	esi, esi
jz	short loc_641C6DF7
test	byte ptr [list_0+10h], 1
jz	short loc_641C6DF7
movzx	edx, word ptr [list_0+0Eh]
mov	edi, [ecx+edx]
mov	[esi+edx], edi
			
cmp	ecx, [list_0+8]
jz	short loc_641C6E11
sub	dword ptr [list_0+10h],	4
cmp	ecx, [list_0+4]
jnz	loc_641C6D24
mov	[list_0+4], eax
jmp	loc_641C6D24
mov	esi, [ebp+var_3C]
mov	edx, [esi]
mov	[list_0+8], edx
jmp	short loc_641C6DFC
movzx	edi, word ptr [list_0+0Ch]
mov	[ebp+var_3C], list_0
xor	eax, eax
jmp	short loc_641C6DDB
mov	[ebp+ptr], edx
mov	edx, [ebp+ptr]
mov	entry, [edx+edi]
mov	[eax], esi
test	esi, esi
jz	short loc_641C6E3B
test	byte ptr [list_0+10h], 1
jnz	short loc_641C6E4C
			
mov	esi, [ebp+ptr]
cmp	esi, [list_0+8]
jz	short loc_641C6E82
sub	dword ptr [list_0+10h],	4
jmp	loc_641C6D86
movzx	edi, word ptr [list_0+0Eh]
mov	edx, [edx+edi]
mov	[esi+edi], edx
jmp	short loc_641C6E3B
mov	dword ptr [list_0+18h],	0
jmp	loc_641C6DAA
mov	dword ptr [list_0+14h],	0
jmp	loc_641C6D9E
mov	[list_0+4], ecx
jmp	loc_641C6D92
movzx	edi, word ptr [list_0+0Ch]
mov	eax, list_0
xor	ecx, ecx
jmp	short loc_641C6E29
mov	eax, [eax]
mov	[list_0+8], eax
jmp	short loc_641C6E43
align 4
public _silc_attribute_payload_parse
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
mov	ebx, ret
test	ret, ret
jz	short loc_641C6F20
mov	dword ptr [ret+18h], 0
mov	dword ptr [ret+14h], 0
mov	ret, [ret+10h]
and	ret, 3
mov	[list+10h], ret
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
jmp	short loc_641C6F20
align 4
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], ret
test	byte ptr [list+10h], 1
jz	short loc_641C6F12
movzx	ecx, word ptr [list+0Eh]
mov	esi, [list+4]
mov	[ret+ecx], esi
mov	[list+4], ret
mov	dword ptr [ret+edx], 0
add	dword ptr [list+10h], 4
			
mov	ret, [ebp+buffer.tail]
cmp	ret, [ebp+buffer.data]
jz	loc_641C7002
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, ret
test	ret, ret
jz	err
mov	dword ptr [esp+20h], 1Dh
lea	ret, [ret+2]
mov	[esp+1Ch], ret
lea	ret, [esi+4]
mov	[esp+18h], ret
mov	dword ptr [esp+14h], 14h
lea	ret, [esi+1]
mov	[esp+10h], ret
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], esi
mov	dword ptr [esp+4], 1
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short err
mov	ecx, [ebp+buffer.data]
mov	ret, [ebp+buffer.tail]
sub	ret, ecx
movzx	edx, word ptr [esi+2]
lea	edi, [ret-4]
cmp	edx, edi
ja	short loc_641C6FDC
add	edx, 4
cmp	len, ret
ja	short loc_641C7002
lea	len, [ecx+len]
mov	[ebp+buffer.data], edx
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	ret, ret
jz	loc_641C6F20
mov	[ret], esi
mov	edx, [list]
test	edx, edx
jnz	loc_641C6EF8
mov	[list],	ret
movzx	edx, word ptr [list+0Ch]
jmp	loc_641C6F02
mov	dword ptr [esp], offset	fmt 
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
			
mov	[esp], list	
call	_silc_attribute_payload_list_free
xor	list, list
			
mov	ret, list
add	esp, 4Ch
pop	list
pop	esi
pop	edi
leave
retn
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C7061
test	len, len
jz	short loc_641C706A
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641C706F
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	edx, [eax+len]
mov	[sb+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	len, ecx
ja	short loc_641C7061
mov	[sb+8],	edx
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
mov	edx, [sb+8]
jmp	short loc_641C705E
xor	sb, sb
jmp	short loc_641C7061
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 9Ch
mov	esi, object
and	flags, 2
jz	short loc_641C708F 
test	ecx, ecx
jz	short loc_641C70A8
cmp	al, 11h
jbe	short loc_641C709C
			
xor	str, str
			
add	esp, 9Ch
pop	str
pop	object
pop	len4
leave
retn
movzx	attribute, al
jmp	ds:off_642635E4[attribute*4] 
align 4
mov	ebx, [ebp+object_size]
test	ebx, ebx
jz	short loc_641C708F 
jmp	short loc_641C708B
align 4
			
cmp	[ebp+object_size], 8 
jnz	short loc_641C708F 
mov	edi, [esi+4]
test	edi, edi
jz	short loc_641C708F 
or	ecx, 0FFFFFFFFh
xor	attribute, attribute
repne scasb
not	ecx
dec	ecx
cmp	ecx, 4
jbe	short loc_641C708F 
xor	eax, eax	
call	_silc_buffer_alloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C708F 
mov	edx, [object+4]
or	ecx, 0FFFFFFFFh
mov	edi, edx
xor	tmpbuf,	tmpbuf
repne scasb
not	ecx
dec	ecx
mov	dword ptr [esp+1Ch], 1Dh
mov	[esp+18h], edx
mov	dword ptr [esp+14h], 9
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 3
mov	eax, [object]
mov	[esp+8], eax
mov	dword ptr [esp+4], 5
mov	[esp], tmpbuf	
call	_silc_buffer_format
test	eax, eax
js	loc_641C708F	
			
mov	edx, [tmpbuf+4]
mov	eax, [tmpbuf+8]
sub	eax, object
mov	[ebp+object_size], eax
mov	[esp+4], eax
mov	[esp], object	
call	_silc_memdup
mov	edx, [tmpbuf]
mov	[esp], edx	
mov	[ebp+var_3C], eax
call	_silc_free
mov	[esp], tmpbuf	
call	_silc_free
xor	tmpbuf,	tmpbuf
mov	eax, [ebp+var_3C]
mov	[esp], str
mov	[ebp+var_3C], eax
call	_silc_free
mov	ecx, [ebp+ret_len]
test	ecx, ecx
mov	eax, [ebp+var_3C]
jz	loc_641C7091
mov	edx, [ebp+object_size]
mov	ecx, [ebp+ret_len]
mov	[ecx], edx
jmp	loc_641C7091
align 4
			
cmp	[ebp+object_size], 64h 
jnz	loc_641C708F	
lea	attribute, [ebp+object_size]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_vcard_encode
mov	ebx, eax
test	eax, eax
jz	loc_641C708F	
mov	str, [ebp+object_size]
mov	edx, str
			
mov	[esp+4], eax
mov	[esp], object	
call	_silc_memdup
jmp	short loc_641C715B
align 4
			
cmp	[ebp+object_size], 14Ch	
jnz	loc_641C708F	
lea	object,	[esi+48h]
mov	[ebp+len1], ecx
or	ebx, 0FFFFFFFFh
xor	attribute, attribute
mov	ecx, ebx
mov	edi, [ebp+len1]
repne scasb
mov	flags, ecx
not	edx
dec	edx
lea	ecx, [object+8]
mov	[ebp+len3], ecx
mov	ecx, ebx
mov	edi, [ebp+len3]
repne scasb
not	ecx
lea	edi, [ecx-1]
lea	eax, [len+edi+0Dh] 
mov	[ebp+var_3C], len
call	_silc_buffer_alloc_size
mov	ebx, eax
test	eax, eax
mov	edx, [ebp+var_3C]
jz	loc_641C708F	
mov	dword ptr [esp+44h], 1Dh
mov	tmpbuf,	[object+4]
mov	[esp+40h], eax
mov	dword ptr [esp+3Ch], 5
mov	[esp+38h], edi
mov	eax, [ebp+len3]
mov	[esp+34h], eax
mov	dword ptr [esp+30h], 1Bh
mov	[esp+2Ch], edi
mov	dword ptr [esp+28h], 3
movzx	eax, byte ptr [object+148h]
mov	[esp+24h], eax
mov	dword ptr [esp+20h], 1
mov	[esp+1Ch], edx
mov	ecx, [ebp+len1]
mov	[esp+18h], ecx
mov	dword ptr [esp+14h], 1Bh
mov	[esp+10h], len
mov	dword ptr [esp+0Ch], 3
mov	eax, [object]
mov	[esp+8], eax
mov	dword ptr [esp+4], 5
mov	[esp], tmpbuf
call	_silc_buffer_format
jmp	loc_641C712A
align 10h
			
cmp	[ebp+object_size], 4 
jnz	loc_641C708F	
mov	attribute, esi
shr	eax, 18h
mov	[ebp+tmp], al
mov	eax, esi
shr	eax, 10h
mov	[ebp+tmp+1], al
mov	eax, esi
shr	eax, 8
mov	[ebp+tmp+2], al
mov	eax, esi
mov	[ebp+tmp+3], al
mov	[ebp+object_size], 4
mov	eax, 4
xor	ebx, ebx
lea	flags, [ebp+tmp]
jmp	loc_641C71AC
align 10h
			
mov	attribute, [ebp+object_size] 
add	eax, 2
mov	[esp], eax	
call	_silc_malloc
mov	ebx, eax
test	eax, eax
jz	loc_641C708F	
mov	str, [ebp+object_size]
shr	eax, 8
mov	[str], al
mov	eax, [ebp+object_size]
mov	[str+1], al
lea	eax, [str+2]
mov	ecx, [ebp+object_size]
mov	edi, eax
rep movsb
mov	eax, [ebp+object_size]
add	eax, 2
mov	[ebp+object_size], eax
mov	edx, str
jmp	loc_641C71AC
			
cmp	[ebp+object_size], 18h
jnz	loc_641C708F	
lea	object,	[ebp+object_size]
mov	[esp+4], ecx	
mov	[esp], object	
call	_silc_mime_encode
mov	ebx, eax
test	eax, eax
jnz	loc_641C71A7
jmp	loc_641C708F	
			
cmp	[ebp+object_size], 10h
jnz	loc_641C708F	
mov	edi, [esi]
test	edi, edi
jz	loc_641C76CC
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
dec	ecx
mov	[ebp+len1], ecx
mov	edi, [object+4]
test	edi, edi
jz	loc_641C76A6
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
lea	flags, [ecx-1]
mov	edi, [object+8]
test	edi, edi
jz	loc_641C769A
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
dec	ecx
mov	[ebp+len3], ecx
mov	edi, [object+0Ch]
test	edi, edi
jz	short loc_641C73A3
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
lea	edi, [ecx-1]
mov	ecx, [ebp+len1]
lea	attribute, [len2+ecx]
add	eax, [ebp+len3]
add	eax, len4
jz	loc_641C708F	
add	eax, 8		
mov	[ebp+var_3C], len2
call	_silc_buffer_alloc_size
mov	ebx, eax
test	eax, eax
mov	edx, [ebp+var_3C]
jz	loc_641C708F	
mov	[ebp+var_4C], offset dword_642635E0
test	len4, len4
jz	short loc_641C73DD
mov	tmpbuf,	[object+0Ch]
mov	[ebp+var_4C], eax
mov	ecx, offset dword_642635E0
cmp	[ebp+len3], 0
jz	short loc_641C73EB
mov	ecx, [object+8]
mov	[ebp+var_38], offset dword_642635E0
test	edx, edx
jz	short loc_641C73FC
mov	eax, [object+4]
mov	[ebp+var_38], eax
mov	[ebp+var_34], offset dword_642635E0
cmp	[ebp+len1], 0
jz	short loc_641C740E
mov	object,	[object]
mov	[ebp+var_34], esi
mov	dword ptr [esp+44h], 1Dh
mov	eax, [ebp+var_4C]
mov	[esp+40h], eax
mov	dword ptr [esp+3Ch], 9
mov	[esp+38h], len4
mov	dword ptr [esp+34h], 3
mov	[esp+30h], ecx
mov	dword ptr [esp+2Ch], 9
mov	ecx, [ebp+len3]
mov	[esp+28h], ecx
mov	dword ptr [esp+24h], 3
mov	eax, [ebp+var_38]
mov	[esp+20h], eax
mov	dword ptr [esp+1Ch], 9
mov	[esp+18h], len2
mov	dword ptr [esp+14h], 3
mov	ecx, [ebp+var_34]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 9
mov	eax, [ebp+len1]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
jmp	loc_641C7281
align 4
			
cmp	[ebp+object_size], 14h 
jnz	loc_641C708F	
mov	edi, [esi+4]
test	edi, edi
jz	loc_641C76C0
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
dec	ecx
mov	[ebp+len1], ecx
mov	edi, [object+8]
test	edi, edi
jz	loc_641C76B9
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
lea	flags, [ecx-1]
mov	edi, [object+0Ch]
test	edi, edi
jz	loc_641C76AD
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
dec	ecx
mov	[ebp+len3], ecx
mov	edi, [object+10h]
test	edi, edi
jz	short loc_641C74F8
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
lea	edi, [ecx-1]
mov	ecx, [ebp+len1]
lea	attribute, [len2+ecx]
add	eax, [ebp+len3]
add	eax, len4
jz	loc_641C708F	
add	eax, 0Ch	
mov	[ebp+var_3C], len2
call	_silc_buffer_alloc_size
mov	ebx, eax
test	eax, eax
mov	edx, [ebp+var_3C]
jz	loc_641C708F	
mov	[ebp+var_4C], offset dword_642635E0
test	len4, len4
jz	short loc_641C7532
mov	tmpbuf,	[object+10h]
mov	[ebp+var_4C], eax
mov	ecx, offset dword_642635E0
cmp	[ebp+len3], 0
jz	short loc_641C7540
mov	ecx, [object+0Ch]
mov	[ebp+var_38], offset dword_642635E0
test	edx, edx
jz	short loc_641C7551
mov	eax, [object+8]
mov	[ebp+var_38], eax
mov	[ebp+var_34], offset dword_642635E0
cmp	[ebp+len1], 0
jz	short loc_641C7564
mov	eax, [object+4]
mov	[ebp+var_34], eax
mov	dword ptr [esp+4Ch], 1Dh
mov	eax, [ebp+var_4C]
mov	[esp+48h], eax
mov	dword ptr [esp+44h], 9
mov	[esp+40h], len4
mov	dword ptr [esp+3Ch], 3
mov	[esp+38h], ecx
mov	dword ptr [esp+34h], 9
mov	ecx, [ebp+len3]
mov	[esp+30h], ecx
mov	dword ptr [esp+2Ch], 3
mov	eax, [ebp+var_38]
mov	[esp+28h], eax
mov	dword ptr [esp+24h], 9
mov	[esp+20h], len2
mov	dword ptr [esp+1Ch], 3
mov	ecx, [ebp+var_34]
mov	[esp+18h], ecx
mov	dword ptr [esp+14h], 9
mov	eax, [ebp+len1]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 3
mov	eax, [object]
mov	[esp+8], eax
mov	dword ptr [esp+4], 5
mov	[esp], tmpbuf	
call	_silc_buffer_format
mov	edx, [tmpbuf+4]
mov	eax, [tmpbuf+8]
sub	eax, object
mov	[ebp+object_size], eax
jmp	loc_641C7135
align 4
			
cmp	[ebp+object_size], 0Ch 
jnz	loc_641C708F	
mov	edi, [esi]
test	edi, edi
jz	short loc_641C7622
xor	attribute, attribute
mov	ecx, 0FFFFFFFFh
repne scasb
not	ecx
lea	edi, [ecx-1]
mov	attribute, [object+8]
lea	eax, [len+eax+2] 
call	_silc_buffer_alloc_size
mov	ebx, eax
test	eax, eax
jz	loc_641C708F	
mov	dword ptr [esp+20h], 1Dh
mov	tmpbuf,	[object+8]
mov	[esp+1Ch], eax
mov	eax, [object+4]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 1Bh
mov	eax, [object]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 9
mov	[esp+8], len
mov	dword ptr [esp+4], 3
mov	[esp], tmpbuf	
call	_silc_buffer_format
jmp	loc_641C712A
align 10h
			
cmp	[ebp+object_size], 0Ch 
jnz	loc_641C708F	
mov	flags, [esi+4]
mov	attribute, [esi+8]
mov	[ebp+object_size], eax
xor	ebx, ebx
jmp	loc_641C71AC
mov	[ebp+len3], 0
jmp	loc_641C738E
xor	flags, flags
jmp	loc_641C7374
mov	[ebp+len3], 0
jmp	loc_641C74E3
xor	flags, flags
jmp	loc_641C74C9
mov	[ebp+len1], 0
jmp	loc_641C74B0
mov	[ebp+len1], 0
jmp	loc_641C735B
public _silc_attribute_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
movzx	ebx, [ebp+flags]
movzx	esi, [ebp+attribute]
lea	eax, [ebp+object_size]
mov	[esp+4], eax	
mov	eax, [ebp+object_size]
mov	[esp], eax	
mov	ecx, [ebp+object] 
mov	edx, ebx	
mov	eax, esi	
call	_silc_attribute_payload_encode_int
mov	edi, eax
mov	eax, [ebp+object_size]
mov	[esp+10h], eax	
mov	[esp+0Ch], object_0 
mov	[esp+8], ebx	
mov	[esp+4], esi	
mov	eax, [ebp+attrs]
mov	[esp], eax	
call	_silc_attribute_payload_encode_data
mov	[esp], object_0	
mov	[ebp+var_1C], eax
call	_silc_free
mov	eax, [ebp+var_1C]
add	esp, 3Ch
pop	ebx
pop	esi
pop	object_0
leave
retn
public _silc_attribute_payload_alloc
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edi, [ebp+attribute]
mov	esi, [ebp+flags]
mov	edx, edi
mov	[ebp+var_29], dl
mov	edx, esi
mov	[ebp+var_2A], dl
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C779F
mov	attr, attribute_0
mov	[attr],	al
mov	edx, flags_0
mov	[attr+1], dl
movzx	edx, [ebp+var_2A] 
movzx	eax, [ebp+var_29] 
lea	ecx, [ebp+tmp_len]
mov	[esp+4], ecx	
mov	ecx, [ebp+object_size]
mov	[esp], ecx	
mov	ecx, [ebp+object] 
call	_silc_attribute_payload_encode_int
mov	[attr+4], eax
mov	edx, [ebp+tmp_len]
mov	[attr+2], dx
test	eax, eax
jz	short loc_641C77A9
			
mov	eax, attr
add	esp, 3Ch
pop	attr
pop	flags_0
pop	attribute_0
leave
retn
mov	[esp], attr
call	_silc_free
xor	attr, attr
jmp	short loc_641C779F
align 4
public _silc_auth_get_method
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	ax, [eax+2]
leave
retn
public _silc_auth_get_public_data
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+pubdata_len]
test	edx, edx
jz	short loc_641C77D7
movzx	ecx, word ptr [payload_0+4]
mov	[pubdata_len_0], ecx
mov	payload_0, [payload_0+8]
leave
retn
public _silc_auth_get_data
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+auth_len]
test	edx, edx
jz	short loc_641C77EF
movzx	ecx, word ptr [payload_0+0Ch]
mov	[auth_len_0], ecx
mov	payload_0, [payload_0+10h]
leave
retn
public _silc_key_agreement_get_hostname
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+4]
leave
retn
align 10h
public _silc_key_agreement_get_protocol
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+8]
leave
retn
align 4
public _silc_key_agreement_get_port
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	ax, [eax+0Ah]
leave
retn
public _silc_key_agreement_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641C7840
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 14h
pop	payload_0
leave
jmp	_silc_free
align 10h
add	esp, 14h
pop	payload_0
leave
retn
align 4
public _silc_key_agreement_payload_parse
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 40h
mov	esi, [ebp+payload]
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	short loc_641C78D3
mov	[ebp+buffer.head], payload_0
mov	[ebp+buffer.data], payload_0
add	payload_0, [ebp+payload_len]
mov	[ebp+buffer.end], esi
mov	[ebp+buffer.tail], esi
mov	dword ptr [esp+20h], 1Dh
lea	ret, [ret+0Ah]
mov	[esp+1Ch], ret
mov	dword ptr [esp+18h], 3
lea	ret, [newp+8]
mov	[esp+14h], ret
mov	dword ptr [esp+10h], 3
mov	[esp+0Ch], newp
lea	ret, [newp+4]
mov	[esp+8], ret
mov	dword ptr [esp+4], 14h
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short loc_641C78DC
movzx	edx, word ptr [newp]
mov	ret, [ebp+buffer.tail]
sub	ret, [ebp+buffer.data]
sub	ret, 6
cmp	edx, ret
ja	short loc_641C78DC
			
mov	ret, newp
add	esp, 40h
pop	newp
pop	esi
leave
retn
			
mov	[esp], newp
call	_silc_free
xor	newp, newp
jmp	short loc_641C78D3
public _silc_auth_payload_free
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641C7940
mov	edx, [payload_0+8]
test	edx, edx
jz	short loc_641C7913
movzx	ecx, word ptr [payload_0+4]
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [payload_0+8]
mov	[esp], eax	
call	_silc_free
mov	edx, [payload_0+10h]
test	edx, edx
jz	short loc_641C792F
movzx	ecx, word ptr [payload_0+0Ch]
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [payload_0+10h]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 10h
pop	payload_0
pop	edi
leave
jmp	_silc_free
align 10h
add	esp, 10h
pop	payload_0
pop	edi
leave
retn
align 4
public _silc_auth_payload_parse
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ret, [ebp+data]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+data_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp+4], 14h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	loc_641C7A1C
mov	dword ptr [esp+2Ch], 1Dh
lea	ret, [ret+0Ch]
mov	[esp+28h], ret
lea	ret, [newp+10h]
mov	[esp+24h], ret
mov	dword ptr [esp+20h], 14h
lea	ret, [newp+4]
mov	[esp+1Ch], ret
lea	ret, [newp+8]
mov	[esp+18h], ret
mov	dword ptr [esp+14h], 14h
lea	ret, [newp+2]
mov	[esp+10h], ret
mov	dword ptr [esp+0Ch], 3
mov	[esp+8], newp
mov	dword ptr [esp+4], 3
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short loc_641C7A44
movzx	edx, word ptr [newp]
mov	ret, [ebp+buffer.tail]
sub	ret, [ebp+buffer.data]
cmp	edx, ret
jnz	short loc_641C7A30
mov	ecx, [newp+4]
mov	ret, [newp+0Ch]
movzx	edi, ax
movzx	esi, cx
lea	esi, [edi+esi]
sub	edx, 8
cmp	esi, edx
ja	short loc_641C7A30
test	ax, ax
jz	short loc_641C7A30
mov	ax, [newp+2]
cmp	ax, 1
jz	short loc_641C7A28
cmp	ax, 2
jnz	short loc_641C7A1C
cmp	cx, 7Fh
jbe	short loc_641C7A30
			
mov	ret, newp
add	esp, 4Ch
pop	newp
pop	esi
pop	edi
leave
retn
align 4
test	cx, cx
jz	short loc_641C7A1C
lea	esi, [esi+0]
			
mov	[esp], newp	
call	_silc_auth_payload_free
xor	newp, newp
mov	ret, newp
add	esp, 4Ch
pop	newp
pop	esi
pop	edi
leave
retn
mov	[esp], newp
call	_silc_free
xor	newp, newp
jmp	short loc_641C7A1C
			
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	[ebp+var_50], randomdata
mov	[ebp+var_4C], random_len
mov	ebx, [ebp+type]
lea	randomdata, [ebp+pk_len]
mov	[esp+4], edx	
mov	[esp], public_key 
call	_silc_pkcs_public_key_encode
mov	esi, eax
test	eax, eax
jz	loc_641C7BC0
lea	pk, [ebp+id_len]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
lea	eax, [ebp+id_data]
mov	[esp+8], eax	
movzx	type_0,	bx
mov	[esp+4], type_0	
mov	eax, [ebp+id]
mov	[esp], eax	
call	_silc_id_id2str
test	al, al
jz	loc_641C7BB8
mov	edx, [ebp+id_len]
mov	[ebp+var_54], edx
mov	edi, [ebp+pk_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	type_0,	eax
test	eax, eax
jz	loc_641C7BCA
add	edi, [ebp+var_54]
add	edi, [ebp+var_4C]
jz	loc_641C7BD6
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buf], eax
test	eax, eax
jz	loc_641C7BCA
mov	[buf+4], eax
mov	[buf+8], eax
lea	edx, [eax+edi]
mov	[buf+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641C7B0F
mov	[buf+8], edx
mov	dword ptr [esp+28h], 1Dh
mov	eax, [ebp+pk_len]
mov	[esp+24h], eax
mov	[esp+20h], pk
mov	dword ptr [esp+1Ch], 1Bh
mov	eax, [ebp+id_len]
mov	[esp+18h], eax
lea	eax, [ebp+id_data]
mov	[esp+14h], eax
mov	dword ptr [esp+10h], 1Bh
mov	edx, [ebp+var_4C]
mov	[esp+0Ch], edx
mov	ecx, [ebp+var_50]
mov	[esp+8], ecx
mov	dword ptr [esp+4], 1Bh
mov	[esp], buf	
call	_silc_buffer_format
mov	eax, [buf]
mov	edx, [ebp+ret_len]
test	edx, edx
jz	short loc_641C7B71
mov	edx, [buf+0Ch]
sub	edx, ret
mov	ecx, [ebp+ret_len]
mov	[ecx], edx
mov	dword ptr [buf+0Ch], 0
mov	dword ptr [buf+8], 0
mov	dword ptr [buf+4], 0
mov	dword ptr [buf], 0
mov	dword ptr [esp], 0 
mov	[ebp+var_58], ret
call	_silc_free
mov	[esp], buf	
call	_silc_free
mov	[esp], pk	
call	_silc_free
mov	eax, [ebp+var_58]
add	esp, 7Ch
pop	buf
pop	pk
pop	edi
leave
retn
align 4
mov	[esp], pk	
call	_silc_free
xor	eax, eax
add	esp, 7Ch
pop	type_0
pop	pk
pop	edi
leave
retn
			
mov	[esp], pk
call	_silc_free
xor	eax, eax
jmp	short loc_641C7BAE
mov	edx, [buf+8]
jmp	loc_641C7B0C
align 10h
public _silc_auth_public_key_auth_verify
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+payload]
mov	edi, [ebp+public_key]
movzx	eax, [ebp+type]
movzx	ecx, word ptr [ebx+4] 
mov	edx, [ebx+8]	
lea	esi, [ebp+tmp_len]
mov	[esp+8], esi	
mov	[esp+4], type_0	
mov	type_0,	[ebp+id]
mov	[esp], eax	
mov	eax, edi	
call	_silc_auth_public_key_encode_data
mov	esi, eax
test	eax, eax
jz	short loc_641C7C6F
mov	tmp, [ebp+hash]
mov	[esp+14h], eax	
mov	eax, [ebp+tmp_len]
mov	[esp+10h], eax	
mov	[esp+0Ch], tmp	
movzx	eax, word ptr [payload_0+0Ch]
mov	[esp+8], eax	
mov	eax, [payload_0+10h]
mov	[esp+4], eax	
mov	[esp], public_key_0 
call	_silc_pkcs_verify
test	al, al
jz	short loc_641C7C60
mov	ecx, [ebp+tmp_len]
xor	eax, eax
mov	public_key_0, tmp
rep stosb
mov	[esp], esi	
call	_silc_free
mov	al, 1
add	esp, 3Ch
pop	payload_0
pop	esi
pop	tmp
leave
retn
mov	ecx, [ebp+tmp_len]
mov	public_key_0, tmp
rep stosb
mov	[esp], esi	
call	_silc_free
xor	eax, eax
add	esp, 3Ch
pop	payload_0
pop	tmp
pop	tmp
leave
retn
align 4
public _silc_auth_verify
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	eax, [ebp+payload]
mov	edx, [ebp+auth_data]
mov	[ebp+var_1C], edx
mov	edx, [ebp+auth_data_len]
mov	[ebp+var_20], edx
mov	esi, [ebp+hash]
mov	edi, [ebp+id]
mov	ecx, [ebp+auth_method]
mov	ebx, [ebp+type]
test	eax, eax
jz	short loc_641C7CAD
mov	dx, [payload_0+2]
cmp	dx, cx
jz	short loc_641C7CB8
			
xor	payload_0, payload_0
			
add	esp, 1Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
cmp	dx, 1
jz	short loc_641C7CEC
jnb	short loc_641C7CC4
mov	al, 1
jmp	short loc_641C7CAF
cmp	dx, 2
jnz	short loc_641C7CAD
movzx	type_0,	bx
mov	[ebp+hash], type_0
mov	[ebp+auth_data_len], id_0
mov	[ebp+auth_data], hash_0
mov	edx, [ebp+var_1C]
mov	[ebp+auth_method], edx
mov	[ebp+payload], payload_0
add	esp, 1Ch
pop	type_0
pop	hash_0
pop	id_0
leave
jmp	_silc_auth_public_key_auth_verify
align 4
mov	auth_method_0, [payload_0+0Ch]
test	cx, cx
jz	short loc_641C7CAD
mov	type_0,	[ebp+var_1C]
test	ebx, ebx
jz	short loc_641C7CAD
movzx	ecx, cx
cmp	ecx, [ebp+var_20]
jnz	short loc_641C7CAD
mov	hash_0,	[payload_0+10h]
cmp	ecx, ecx
mov	id_0, [ebp+var_1C]
repe cmpsb
setz	al
jmp	short loc_641C7CAF
align 4
public _silc_auth_public_key_auth_verify_data
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	esi, [ebp+type]
mov	eax, [ebp+payload_len]
mov	[esp+4], eax	
mov	eax, [ebp+payload]
mov	[esp], eax	
call	_silc_auth_payload_parse
mov	ebx, eax
test	eax, eax
jz	short loc_641C7D70
movzx	type_0,	si
mov	[esp+10h], type_0 
mov	auth_payload, [ebp+id]
mov	[esp+0Ch], eax	
mov	eax, [ebp+hash]
mov	[esp+8], eax	
mov	eax, [ebp+public_key]
mov	[esp+4], eax	
mov	[esp], auth_payload 
call	_silc_auth_public_key_auth_verify
mov	[esp], auth_payload 
mov	[ebp+var_C], al
call	_silc_auth_payload_free
mov	al, [ebp+var_C]
add	esp, 30h
pop	auth_payload
pop	type_0
leave
retn
xor	auth_payload, auth_payload
add	esp, 30h
pop	auth_payload
pop	type_0
leave
retn
align 4
public _silc_auth_verify_data
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edi, [ebp+auth_data]
mov	esi, [ebp+auth_method]
mov	eax, [ebp+type]
mov	[ebp+var_1A], ax
mov	eax, [ebp+payload_len]
mov	[esp+4], eax	
mov	eax, [ebp+payload]
mov	[esp], eax	
call	_silc_auth_payload_parse
mov	ebx, eax
test	eax, eax
jz	short loc_641C7DB2
mov	auth_payload, [auth_payload+0Ch]
test	ax, ax
jnz	short loc_641C7DBC
xor	eax, eax
add	esp, 3Ch
pop	auth_payload
pop	auth_method_0
pop	auth_data_0
leave
retn
cmp	si, [auth_payload+2]
jz	short loc_641C7DDC
			
xor	eax, eax
			
mov	[esp], auth_payload
mov	[ebp+var_20], al
call	_silc_auth_payload_free
mov	al, [ebp+var_20]
add	esp, 3Ch
pop	auth_payload
pop	esi
pop	auth_data_0
leave
retn
align 4
cmp	si, 1
jz	short loc_641C7E10
jb	short loc_641C7E2C
cmp	si, 2
jnz	short loc_641C7DC2
movzx	eax, [ebp+var_1A]
mov	[esp+10h], type_0 
mov	type_0,	[ebp+id]
mov	[esp+0Ch], eax	
mov	eax, [ebp+hash]
mov	[esp+8], eax	
mov	[esp+4], auth_data_0 
mov	[esp], auth_payload 
call	_silc_auth_public_key_auth_verify
jmp	short loc_641C7DC4
align 10h
test	auth_data_0, auth_data_0
jz	short loc_641C7DC2
movzx	eax, ax
cmp	[ebp+auth_data_len], eax
jnz	short loc_641C7DC2
mov	auth_method_0, [auth_payload+10h]
mov	eax, [ebp+auth_data_len]
cmp	eax, eax
mov	ecx, eax
repe cmpsb
jnz	short loc_641C7DC2
xchg	ax, ax
mov	al, 1
jmp	short loc_641C7DC4
public _silc_key_agreement_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+protocol]
mov	[ebp+var_1E], ax
mov	ebx, [ebp+port]
mov	esi, [ebp+hostname]
test	esi, esi
jz	loc_641C7F18
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+hostname]
repne scasb
not	ecx
lea	eax, [ecx-1]
mov	[ebp+len], eax
lea	edi, [ecx+5]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	loc_641C7F0D
test	edi, edi
jz	loc_641C7F29
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641C7F2E
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+edi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641C7EBC
mov	[buffer+8], edx
mov	dword ptr [esp+28h], 1Dh
movzx	port_0,	bx
mov	[esp+24h], port_0
mov	dword ptr [esp+20h], 3
movzx	eax, [ebp+var_1E]
mov	[esp+1Ch], protocol_0
mov	dword ptr [esp+18h], 3
mov	protocol_0, [ebp+len]
mov	[esp+14h], eax
mov	ecx, [ebp+hostname]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1Bh
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
			
mov	eax, buffer
add	esp, 4Ch
pop	port_0
pop	buffer
pop	edi
leave
retn
align 4
mov	edi, 6
mov	[ebp+len], 0
jmp	loc_641C7E65
mov	edx, [buffer+8]
jmp	short loc_641C7EB9
xor	buffer,	buffer
jmp	short loc_641C7F0D
align 4
public _silc_auth_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	eax, [ebp+method]
mov	[ebp+var_1A], ax
mov	esi, [ebp+random_len]
mov	edi, [ebp+auth_len]
dec	ax
jz	loc_641C803C
mov	[ebp+autf8], 0
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C80B6
movzx	edx, si
movzx	auth_len_0, di
lea	random_len_0, [edi+edx+8]
mov	dword ptr [esp+4], 1 
mov	[esp], len	
mov	[ebp+var_24], edx
call	_silc_calloc
mov	[ebp+var_2C], eax
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+var_24]
jz	loc_641C80B6
mov	[buffer+4], eax
mov	[buffer+8], eax
mov	ecx, eax
add	ecx, len
mov	[buffer+0Ch], ecx
mov	eax, ecx
sub	eax, [ebp+var_2C]
cmp	len, eax
ja	short loc_641C7FBD
mov	[buffer+8], ecx
mov	dword ptr [esp+3Ch], 1Dh
mov	[esp+38h], edi
mov	eax, [ebp+auth_data]
mov	[esp+34h], eax
mov	dword ptr [esp+30h], 1Bh
mov	[esp+2Ch], edi
mov	dword ptr [esp+28h], 3
mov	[esp+24h], edx
mov	eax, [ebp+random_data]
mov	[esp+20h], eax
mov	dword ptr [esp+1Ch], 1Bh
mov	[esp+18h], edx
mov	dword ptr [esp+14h], 3
movzx	eax, [ebp+var_1A]
mov	[esp+10h], method_0
mov	dword ptr [esp+0Ch], 3
mov	[esp+8], len
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [ebp+autf8]
mov	[esp], eax	
call	_silc_free
			
mov	autf8_len, buffer
add	esp, 6Ch
pop	buffer
pop	len
pop	autf8_len
leave
retn
movzx	ebx, di
mov	[esp+4], ebx	
mov	eax, [ebp+auth_data]
mov	[esp], eax	
call	_silc_utf8_valid
test	al, al
jnz	loc_641C7F52
mov	dword ptr [esp+8], 0 
mov	[esp+4], ebx	
mov	eax, [ebp+auth_data]
mov	[esp], eax	
call	_silc_utf8_encoded_len
mov	auth_len_0, eax
test	eax, eax
jnz	short loc_641C8077
xor	ebx, ebx
jmp	short loc_641C8032
mov	dword ptr [esp+4], 1 
mov	[esp], autf8_len 
call	_silc_calloc
mov	[ebp+autf8], eax
mov	[esp+10h], autf8_len 
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	[esp+4], ebx	
mov	eax, [ebp+auth_data]
mov	[esp], eax	
call	_silc_utf8_encode
mov	autf8_len, eax
mov	eax, [ebp+autf8]
mov	[ebp+auth_data], eax
jmp	loc_641C7F59
			
mov	eax, [ebp+autf8]
mov	[esp], eax	
call	_silc_free
xor	buffer,	buffer
jmp	loc_641C8032
public _silc_auth_public_key_auth_generate_wpub
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 84Ch
mov	edi, [ebp+pubdata_len]
movzx	eax, [ebp+type]
lea	edx, [ebp+tmp_len]
mov	[esp+8], edx	
mov	[esp+4], type_0	
mov	type_0,	[ebp+id]
mov	[esp], eax	
mov	ecx, edi	
mov	edx, [ebp+pubdata] 
mov	eax, [ebp+public_key] 
call	_silc_auth_public_key_encode_data
mov	ebx, eax
test	eax, eax
jz	loc_641C81AF
mov	tmp, [ebp+hash]
mov	[esp+1Ch], eax	
mov	dword ptr [esp+18h], 1 
lea	eax, [ebp+dst_len]
mov	[esp+14h], eax	
mov	dword ptr [esp+10h], 800h 
lea	esi, [ebp+auth_data]
mov	[esp+0Ch], esi	
mov	eax, [ebp+tmp_len]
mov	[esp+8], eax	
mov	[esp+4], tmp	
mov	eax, [ebp+private_key]
mov	[esp], eax	
call	_silc_pkcs_sign
test	al, al
jz	short loc_641C81A0
movzx	eax, word ptr [ebp+dst_len]
mov	[esp+10h], eax	
mov	[esp+0Ch], esi	
movzx	pubdata_len_0, di
mov	[esp+8], pubdata_len_0 
mov	eax, [ebp+pubdata]
mov	[esp+4], eax	
mov	dword ptr [esp], 2 
call	_silc_auth_payload_encode
mov	edx, eax
mov	ecx, [ebp+tmp_len]
xor	eax, eax
mov	pubdata_len_0, tmp
rep stosb
mov	cx, 801h
mov	tmp, esi
rep stosb
mov	[esp], ebx	
mov	[ebp+var_82C], buf
call	_silc_free
mov	edx, [ebp+var_82C]
mov	eax, edx
add	esp, 84Ch
pop	tmp
pop	esi
pop	edi
leave
retn
align 10h
mov	ecx, [ebp+tmp_len]
mov	pubdata_len_0, tmp
rep stosb
mov	[esp], ebx	
call	_silc_free
xor	edx, edx
mov	eax, buf
add	esp, 84Ch
pop	tmp
pop	esi
pop	tmp
leave
retn
align 10h
public _silc_auth_public_key_auth_generate
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	eax, [ebp+rng]
mov	esi, [ebp+type]
test	eax, eax
jz	short loc_641C8248
mov	dword ptr [esp+4], 100h	
mov	[esp], rng_0	
call	_silc_rng_get_rn_data
mov	ebx, eax
test	randomdata, randomdata
jz	short loc_641C823C
movzx	type_0,	si
mov	[esp+18h], type_0 
mov	eax, [ebp+id]
mov	[esp+14h], eax	
mov	eax, [ebp+hash]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 100h 
mov	[esp+8], randomdata 
mov	eax, [ebp+private_key]
mov	[esp+4], eax	
mov	eax, [ebp+public_key]
mov	[esp], eax	
call	_silc_auth_public_key_auth_generate_wpub
mov	type_0,	eax
mov	ecx, 100h
xor	eax, eax
mov	edi, randomdata
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	eax, buf
add	esp, 2Ch
pop	ebx
pop	buf
pop	randomdata
leave
retn
align 4
xor	type_0,	type_0
mov	eax, buf
add	esp, 2Ch
pop	randomdata
pop	buf
pop	edi
leave
retn
mov	dword ptr [esp], 100h
call	_silc_rng_global_get_rn_data
mov	ebx, eax
jmp	short loc_641C81E5
public _silc_channel_get_name
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+channel_name_len]
test	edx, edx
jz	short loc_641C826B
movzx	ecx, word ptr [payload_0+0Ch]
mov	[channel_name_len_0], ecx
mov	payload_0, [payload_0]
leave
retn
align 10h
public _silc_channel_get_id
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+channel_id_len]
test	edx, edx
jz	short loc_641C8283
movzx	ecx, word ptr [payload_0+0Eh]
mov	[channel_id_len_0], ecx
mov	payload_0, [payload_0+4]
leave
retn
public _silc_channel_get_mode
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+8]
leave
retn
align 4
public _silc_channel_key_get_id
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+id_len]
test	edx, edx
jz	short loc_641C82A7
movzx	ecx, word ptr [payload_0+0Ch]
mov	[id_len_0], ecx
mov	payload_0, [payload_0]
leave
retn
align 4
public _silc_channel_key_get_cipher
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+cipher_len]
test	edx, edx
jz	short loc_641C82BF
movzx	ecx, word ptr [payload_0+0Eh]
mov	[cipher_len_0],	ecx
mov	payload_0, [payload_0+4]
leave
retn
public _silc_channel_key_get_key
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+key_len]
test	edx, edx
jz	short loc_641C82D7
movzx	ecx, word ptr [payload_0+10h]
mov	[key_len_0], ecx
mov	payload_0, [payload_0+8]
leave
retn
public _silc_channel_payload_list_free
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+list]
mov	eax, [ebx]
mov	[ebx+8], eax
mov	dl, [ebx+10h]
and	edx, 0FFFFFFFDh
mov	[ebx+10h], dl
mov	dword ptr [ebx+18h], 0
mov	dword ptr [ebx+14h], 0
xor	eax, eax
mov	[ebx+18h], eax
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641C838C
test	dl, 2
jz	loc_641C847C
movzx	ecx, word ptr [list_0+0Eh]
mov	ecx, [eax+ecx]
mov	[list_0+8], ecx
mov	[list_0+14h], eax
mov	entry, [eax]
test	entry, entry
jz	short loc_641C8393
mov	eax, [entry]
mov	[esp], eax	
call	_silc_free
mov	eax, [entry+4]
mov	[esp], eax	
call	_silc_free
mov	esi, [list_0]
mov	eax, esi
mov	[list_0+8], esi
and	byte ptr [list_0+10h], 0FDh
xor	ecx, ecx
test	eax, eax
jz	short loc_641C8374
xchg	ax, ax
test	cl, cl
jz	loc_641C8408
movzx	edx, word ptr [list_0+0Eh]
mov	edx, [eax+edx]
mov	[list_0+8], edx
cmp	entry, [eax]
jz	loc_641C841A
mov	eax, edx
test	eax, eax
jnz	short loc_641C8354
mov	[esp], entry	
call	_silc_free
mov	eax, [list_0+14h]
mov	dl, [list_0+10h]
mov	[list_0+18h], eax
mov	eax, [list_0+8]
test	eax, eax
jnz	short loc_641C8310
mov	dword ptr [list_0+14h],	0
mov	ecx, [list_0]
mov	[list_0+8], ecx
and	edx, 0FFFFFFFDh
mov	[list_0+10h], dl
test	ecx, ecx
jz	short loc_641C83F7
xchg	ax, ax
test	byte ptr [list_0+10h], 2
jz	loc_641C84E8
movzx	eax, word ptr [list_0+0Eh]
mov	eax, [ecx+eax]
mov	[list_0+8], eax
mov	eax, [list_0]
test	eax, eax
jz	short loc_641C83DF
cmp	ecx, eax
jz	loc_641C8544
movzx	entry, word ptr	[list_0+0Ch]
jmp	short loc_641C83D6
cmp	ecx, esi
jz	loc_641C84F4
mov	eax, esi
lea	edx, [eax+edi]
mov	esi, [edx]
test	esi, esi
jnz	short loc_641C83CC
cmp	ecx, [list_0+4]
jz	loc_641C8525
			
mov	[esp], ecx	
call	_silc_free
mov	ecx, [list_0+8]
test	ecx, ecx
jnz	short loc_641C83A4
mov	[ebp+list], list_0
add	esp, 4Ch
pop	list_0
pop	esi
pop	entry
leave
jmp	_silc_free
align 4
movzx	edx, word ptr [list_0+0Ch]
mov	edx, [eax+edx]
mov	[list_0+8], edx
cmp	entry, [eax]
jnz	loc_641C836E
mov	[ebp+var_3C], esi
test	esi, esi
jz	short loc_641C8451
cmp	eax, esi
jz	loc_641C854F
movzx	esi, word ptr [list_0+0Ch]
mov	[ebp+var_1C], esi
mov	ecx, [ebp+var_3C]
mov	[ebp+var_20], entry
mov	entry, esi
jmp	short loc_641C8442
align 4
cmp	eax, edx
jz	short loc_641C8488
mov	ecx, edx
lea	esi, [ecx+edi]
mov	edx, [esi]
test	edx, edx
jnz	short loc_641C843C
mov	[ebp+var_3C], ecx
mov	edi, [ebp+var_20]
cmp	eax, [list_0+4]
jz	short loc_641C84C4
cmp	eax, [list_0+14h]
jz	short loc_641C84D0
cmp	eax, [list_0+18h]
jz	short loc_641C84DC
			
mov	[esp], eax	
call	_silc_free
mov	[esp], entry	
call	_silc_free
mov	eax, [list_0+14h]
mov	dl, [list_0+10h]
jmp	loc_641C8382
align 4
movzx	ecx, word ptr [list_0+0Ch]
mov	ecx, [eax+ecx]
jmp	loc_641C8320
mov	[ebp+var_3C], ecx
mov	[ebp+var_2C], esi
mov	edi, [ebp+var_20]
mov	ecx, [ebp+var_1C]
mov	ecx, [eax+ecx]
mov	[ebp+var_20], ecx
mov	esi, [ebp+var_2C]
mov	[esi], ecx
test	ecx, ecx
jz	short loc_641C84B6
test	byte ptr [list_0+10h], 1
jz	short loc_641C84B6
movzx	edx, word ptr [list_0+0Eh]
mov	ecx, [eax+edx]
mov	esi, [ebp+var_20]
mov	[esi+edx], ecx
			
cmp	eax, [list_0+8]
jz	short loc_641C8537
sub	dword ptr [list_0+10h],	4
cmp	eax, [list_0+4]
jnz	short loc_641C8456
mov	edx, [ebp+var_3C]
mov	[list_0+4], edx
cmp	eax, [list_0+14h]
jnz	short loc_641C845B
nop
mov	dword ptr [list_0+14h],	0
cmp	eax, [list_0+18h]
jnz	short loc_641C8460
mov	dword ptr [list_0+18h],	0
jmp	loc_641C8460
movzx	eax, word ptr [list_0+0Ch]
mov	eax, [ecx+eax]
jmp	loc_641C83B5
mov	[ebp+var_20], edx
mov	esi, [ecx+edi]
mov	edi, [ebp+var_20]
mov	[edi], esi
test	esi, esi
jz	short loc_641C8513
test	byte ptr [list_0+10h], 1
jz	short loc_641C8513
movzx	edx, word ptr [list_0+0Eh]
mov	edi, [ecx+edx]
mov	[esi+edx], edi
			
cmp	ecx, [list_0+8]
jz	short loc_641C852D
sub	dword ptr [list_0+10h],	4
cmp	ecx, [list_0+4]
jnz	loc_641C83E8
mov	[list_0+4], eax
jmp	loc_641C83E8
mov	esi, [ebp+var_20]
mov	edx, [esi]
mov	[list_0+8], edx
jmp	short loc_641C8518
mov	ecx, [ebp+var_2C]
mov	edx, [ecx]
mov	[list_0+8], edx
jmp	loc_641C84BB
movzx	entry, word ptr	[list_0+0Ch]
mov	[ebp+var_20], list_0
xor	eax, eax
jmp	short loc_641C84F7
movzx	edx, word ptr [list_0+0Ch]
mov	[ebp+var_1C], edx
mov	[ebp+var_2C], list_0
mov	[ebp+var_3C], 0
jmp	loc_641C8491
align 4
public _silc_channel_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
mov	eax, [ebx]
mov	[esp], eax	
call	_silc_free
mov	eax, [ebx+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
public _silc_channel_key_payload_free
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641C85E4
mov	eax, [payload_0]
mov	[esp], eax	
call	_silc_free
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_free
mov	edx, [payload_0+8]
test	edx, edx
jz	short loc_641C85D4
movzx	ecx, word ptr [payload_0+10h]
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [payload_0+8]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 10h
pop	payload_0
pop	edi
leave
jmp	_silc_free
align 4
add	esp, 10h
pop	payload_0
pop	edi
leave
retn
align 4
public _silc_channel_key_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	esi, [ebp+id_len]
mov	edi, [ebp+cipher_len]
mov	eax, [ebp+key_len]
mov	word ptr [ebp+len], ax
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C86DE
movzx	id_len_0, si
movzx	edx, word ptr [ebp+len]
movzx	cipher_len_0, di
lea	buffer,	[edi+esi+6]
add	eax, edx
mov	[ebp+len], eax
mov	dword ptr [esp+4], 1 
mov	[esp], eax	
mov	[ebp+var_20], edx
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+var_20]
jz	loc_641C86E8
mov	[buffer+4], eax
mov	[buffer+8], eax
mov	ecx, [ebp+len]
add	ecx, eax
mov	[ebp+var_2C], ecx
mov	[buffer+0Ch], ecx
sub	ecx, eax
cmp	[ebp+len], ecx
ja	short loc_641C8671
mov	eax, [ebp+var_2C]
mov	[buffer+8], eax
mov	dword ptr [esp+40h], 1Dh
mov	[esp+3Ch], edx
mov	eax, [ebp+key]
mov	[esp+38h], eax
mov	dword ptr [esp+34h], 1Bh
mov	[esp+30h], edx
mov	dword ptr [esp+2Ch], 3
mov	[esp+28h], edi
mov	eax, [ebp+cipher]
mov	[esp+24h], eax
mov	dword ptr [esp+20h], 1Bh
mov	[esp+1Ch], edi
mov	dword ptr [esp+18h], 3
mov	[esp+14h], esi
mov	eax, [ebp+id]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1Bh
mov	[esp+8], esi
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
			
mov	eax, buffer
add	esp, 7Ch
pop	buffer
pop	esi
pop	edi
leave
retn
xor	buffer,	buffer
jmp	short loc_641C86DE
public _silc_channel_key_payload_parse
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 44h
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp+4], 14h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	loc_641C87AD
mov	dword ptr [esp+28h], 1Dh
lea	ret, [ret+10h]
mov	[esp+24h], ret
lea	ret, [newp+8]
mov	[esp+20h], ret
mov	dword ptr [esp+1Ch], 14h
lea	ret, [newp+0Eh]
mov	[esp+18h], ret
lea	ret, [newp+4]
mov	[esp+14h], ret
mov	dword ptr [esp+10h], 14h
lea	ret, [newp+0Ch]
mov	[esp+0Ch], ret
mov	[esp+8], newp
mov	dword ptr [esp+4], 14h
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short err
mov	ret, [newp+0Ch]
test	ax, ax
jz	short loc_641C87B8
mov	edx, [newp+10h]
test	dx, dx
jz	short loc_641C87B8
mov	cx, [newp+0Eh]
test	cx, cx
jz	short loc_641C87B8
movzx	ecx, cx
movzx	ret, ax
lea	ret, [ecx+ret]
movzx	edx, dx
lea	edx, [ret+edx]
mov	ret, [ebp+buffer.tail]
sub	ret, [ebp+buffer.data]
sub	ret, 6
cmp	edx, ret
ja	short loc_641C87B8
mov	ret, newp
add	esp, 44h
pop	newp
leave
retn
align 4
			
mov	dword ptr [esp], offset	aIncorrectChann	
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	ret, [newp]
test	ret, ret
jz	short loc_641C87E2
mov	[esp], ret	
call	_silc_free
mov	ret, [newp+4]
test	ret, ret
jz	short loc_641C87F1
mov	[esp], ret	
call	_silc_free
mov	ret, [newp+8]
test	ret, ret
jz	short loc_641C8800
mov	[esp], ret	
call	_silc_free
mov	[esp], newp	
call	_silc_free
xor	newp, newp
mov	ret, newp
add	esp, 44h
pop	newp
leave
retn
align 4
public _silc_channel_get_id_parse
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+payload]
mov	dword ptr [esp+10h], 16h 
mov	edx, [ebp+ret_channel_id]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 3 
movzx	edx, word ptr [eax+0Eh]
mov	[esp+4], edx	
mov	eax, [eax+4]
mov	[esp], eax	
call	_silc_id_str2id
leave
retn
align 4
public _silc_channel_payload_parse_list
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
mov	esi, ret
test	ret, ret
jz	short loc_641C88E0
mov	dword ptr [ret+18h], 0
mov	dword ptr [ret+14h], 0
mov	ret, [ret+10h]
and	ret, 3
mov	[list+10h], ret
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
jmp	short loc_641C88E0
align 4
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], ret
test	byte ptr [list+10h], 1
jz	short loc_641C88D2
movzx	ecx, word ptr [list+0Eh]
mov	newp, [list+4]
mov	[ret+ecx], ebx
mov	[list+4], ret
mov	dword ptr [ret+edx], 0
add	dword ptr [list+10h], 4
			
mov	ret, [ebp+buffer.tail]
cmp	ret, [ebp+buffer.data]
jz	loc_641C89F2
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	newp, ret
test	ret, ret
jz	err
mov	dword ptr [esp+24h], 1Dh
lea	ret, [ret+8]
mov	[esp+20h], ret
mov	dword ptr [esp+1Ch], 5
lea	ret, [newp+0Eh]
mov	[esp+18h], ret
lea	ret, [newp+4]
mov	[esp+14h], ret
mov	dword ptr [esp+10h], 14h
lea	ret, [newp+0Ch]
mov	[esp+0Ch], ret
mov	[esp+8], newp
mov	dword ptr [esp+4], 14h
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	err
mov	ecx, [newp+0Ch]
test	cx, cx
jz	short loc_641C89CC
mov	ret, [ebp+buffer.data]
mov	[ebp+var_2C], ret
mov	ret, [ebp+buffer.tail]
sub	ret, [ebp+var_2C]
lea	edx, [ret-8]
movzx	ecx, cx
cmp	ecx, edx
ja	short loc_641C89CC
mov	di, [newp+0Eh]
test	di, di
jz	short loc_641C89CC
movzx	edi, di
cmp	edx, edi
jb	short loc_641C89CC
lea	edi, [ecx+edi]
cmp	edx, edi
jb	short loc_641C89CC
add	edi, 8
cmp	len, ret
ja	short loc_641C89F2
add	len, [ebp+var_2C]
mov	[ebp+buffer.data], edi
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	ret, ret
jz	loc_641C88E0
mov	[ret], newp
mov	edx, [list]
test	edx, edx
jnz	loc_641C88B8
mov	[list],	ret
movzx	edx, word ptr [list+0Ch]
jmp	loc_641C88C2
align 4
			
mov	dword ptr [esp], offset	aIncorrectCha_0	
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
			
mov	[esp], list	
call	_silc_channel_payload_list_free
xor	list, list
			
mov	ret, list
add	esp, 5Ch
pop	newp
pop	list
pop	len
leave
retn
public _silc_channel_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	edi, [ebp+channel_id_len]
mov	esi, [ebp+channel_name_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C8AD1
movzx	edx, si
lea	channel_name_len_0, [channel_id_len_0+edx+8]
test	esi, esi
jz	loc_641C8ADB
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
mov	[ebp+var_1C], edx
call	_silc_calloc
mov	[ebp+var_2C], eax
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+var_1C]
jz	loc_641C8AE0
mov	[buffer+4], eax
mov	[buffer+8], eax
mov	ecx, eax
add	ecx, esi
mov	[buffer+0Ch], ecx
mov	eax, ecx
sub	eax, [ebp+var_2C]
cmp	esi, eax
ja	short loc_641C8A74
mov	[buffer+8], ecx
mov	dword ptr [esp+34h], 1Dh
mov	eax, [ebp+mode]
mov	[esp+30h], eax
mov	dword ptr [esp+2Ch], 5
mov	[esp+28h], channel_id_len_0
mov	eax, [ebp+channel_id]
mov	[esp+24h], eax
mov	dword ptr [esp+20h], 1Bh
mov	[esp+1Ch], channel_id_len_0
mov	dword ptr [esp+18h], 3
mov	[esp+14h], edx
mov	eax, [ebp+channel_name]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1Bh
mov	[esp+8], edx
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
			
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	esi
pop	channel_id_len_0
leave
retn
mov	ecx, [buffer+8]
jmp	short loc_641C8A71
xor	buffer,	buffer
jmp	short loc_641C8AD1
public _silc_channel_payload_parse
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 44h
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	short loc_641C8B93
mov	dword ptr [esp+24h], 1Dh
lea	ret, [ret+8]
mov	[esp+20h], ret
mov	dword ptr [esp+1Ch], 5
lea	ret, [newp+0Eh]
mov	[esp+18h], ret
lea	ret, [newp+4]
mov	[esp+14h], ret
mov	dword ptr [esp+10h], 14h
lea	ret, [newp+0Ch]
mov	[esp+0Ch], ret
mov	[esp+8], newp
mov	dword ptr [esp+4], 14h
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short loc_641C8BB8
mov	edx, [newp+0Ch]
test	dx, dx
jz	short loc_641C8B9C
mov	ret, [ebp+buffer.tail]
sub	ret, [ebp+buffer.data]
sub	ret, 8
movzx	edx, dx
cmp	edx, ret
ja	short loc_641C8B9C
mov	cx, [newp+0Eh]
test	cx, cx
jz	short loc_641C8B9C
movzx	ecx, cx
cmp	ret, ecx
jb	short loc_641C8B9C
add	edx, ecx
cmp	ret, edx
jb	short loc_641C8B9C
mov	ret, newp
add	esp, 44h
pop	newp
leave
retn
align 4
			
mov	dword ptr [esp], offset	aIncorrectCha_0	
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	ret, [newp]
mov	[esp], ret	
call	_silc_free
mov	ret, [newp+4]
mov	[esp], ret	
call	_silc_free
mov	[esp], newp	
call	_silc_free
xor	newp, newp
mov	ret, newp
add	esp, 44h
pop	newp
leave
retn
align 10h
public _silc_command_get
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	al, [eax]
leave
retn
align 4
public _silc_command_get_args
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+4]
leave
retn
align 4
public _silc_command_get_ident
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	ax, [eax+2]
leave
retn
public _silc_command_set_ident
push	ebp
mov	ebp, esp
mov	edx, [ebp+ident]
mov	eax, [ebp+payload]
mov	[eax+2], dx
leave
retn
align 4
public _silc_command_set_command
push	ebp
mov	ebp, esp
mov	edx, [ebp+command]
mov	eax, [ebp+payload]
mov	[eax], dl
leave
retn
align 4
public _silc_command_get_status
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	esi, [ebp+status]
mov	ebx, [ebp+error]
mov	eax, [ebp+payload]
mov	eax, [eax+4]
test	eax, eax
jz	short loc_641C8C5D
lea	edx, [ebp+tmp_len]
mov	[esp+8], edx	
mov	dword ptr [esp+4], 1 
mov	[esp], eax	
call	_silc_argument_get_arg_type
test	eax, eax
jz	short loc_641C8C5D
cmp	[ebp+tmp_len], 2
jz	short loc_641C8C68
			
xor	tmp, tmp
			
add	esp, 20h
pop	error_0
pop	status_0
leave
retn
align 4
mov	dl, [tmp]
test	dl, dl
jz	short loc_641C8C9C
test	status_0, status_0
jz	short loc_641C8C74
mov	[status_0], dl
test	error_0, error_0
jz	short loc_641C8C7D
mov	dl, [tmp+1]
mov	[error_0], dl
mov	dl, [tmp]
cmp	dl, 9
jbe	short loc_641C8C90
test	error_0, error_0
jz	short loc_641C8C5D
mov	[error_0], dl
cmp	byte ptr [tmp],	9
ja	short loc_641C8C5D
nop
cmp	byte ptr [tmp+1], 0
setz	al
jmp	short loc_641C8C5F
align 4
mov	cl, [tmp+1]
test	cl, cl
jz	short loc_641C8C6E
test	status_0, status_0
jz	short loc_641C8CA9
mov	[status_0], cl
test	error_0, error_0
jz	short loc_641C8CB0
mov	byte ptr [error_0], 0
cmp	cl, 9
jbe	short loc_641C8CBB
test	error_0, error_0
jz	short loc_641C8CBB
mov	[error_0], cl
			
cmp	cl, 9
setbe	al
jmp	short loc_641C8C5F
align 4
public _silc_command_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641C8CEC
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_argument_payload_free
mov	[ebp+payload], payload_0
add	esp, 14h
pop	payload_0
leave
jmp	_silc_free
align 4
add	esp, 14h
pop	payload_0
leave
retn
align 4
public _silc_command_payload_parse
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 50h
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	short loc_641C8DA0
mov	dword ptr [esp+24h], 1Dh
lea	ret, [ret+2]
mov	[esp+20h], ret
mov	dword ptr [esp+1Ch], 3
lea	ret, [ebp+args_num]
mov	[esp+18h], ret
mov	dword ptr [esp+14h], 1
mov	[esp+10h], newp
mov	dword ptr [esp+0Ch], 1
lea	ret, [ebp+p_len]
mov	[esp+8], ret
mov	dword ptr [esp+4], 3
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short loc_641C8DD8
movzx	edx, [ebp+p_len]
mov	ret, [ebp+buffer.data]
mov	ecx, [ebp+buffer.tail]
mov	esi, ecx
sub	esi, ret
cmp	edx, esi
jnz	short loc_641C8DD8
cmp	byte ptr [newp], 0
jz	short loc_641C8E08
cmp	edx, 5
jbe	short loc_641C8D99
add	ret, 6
mov	[ebp+buffer.data], ret
mov	al, [ebp+args_num]
test	al, al
jnz	short loc_641C8DAC
			
mov	ret, newp
add	esp, 50h
pop	newp
pop	esi
leave
retn
align 4
mov	edx, [ebp+buffer.data]
movzx	ret, al
mov	[esp+8], ret	
sub	ecx, edx
mov	[esp+4], ecx	
mov	[esp], edx	
call	_silc_argument_payload_parse
mov	[newp+4], ret
test	ret, ret
jnz	short loc_641C8DA0
mov	[esp], newp	
call	_silc_free
xor	newp, newp
jmp	short loc_641C8DA0
align 4
			
mov	dword ptr [esp], offset	aIncorrectComma	
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	[esp], newp	
call	_silc_free
xor	newp, newp
mov	ret, newp
add	esp, 50h
pop	newp
pop	esi
leave
retn
align 4
mov	dword ptr [esp], offset	aIncorrectCom_0	
jmp	short loc_641C8DDF
align 4
public _silc_command_payload_encode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	al, [ebp+cmd]
mov	[ebp+var_19], al
mov	ecx, [ebp+ident]
mov	[ebp+var_1C], cx
mov	edx, [ebp+argc]
test	edx, edx
jnz	loc_641C8F4C
mov	esi, 6
xor	edi, edi
mov	dword ptr [esp+4], 10h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C8F3F
test	esi, esi
jz	loc_641C8F8E
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641C8F72
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+esi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	esi, ecx
ja	short loc_641C8E93
mov	[buffer+8], edx
mov	dword ptr [esp+24h], 1Dh
movzx	eax, [ebp+var_1C]
mov	[esp+20h], ident_0
mov	dword ptr [esp+1Ch], 3
mov	ident_0, [ebp+argc]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 1
movzx	eax, [ebp+var_19]
mov	[esp+10h], cmd_0
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], esi
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [ebp+argc]
test	eax, eax
jz	short loc_641C8F3F
mov	edx, [buffer+4]
mov	eax, [buffer+8]
sub	eax, edx
cmp	eax, 5
jbe	short loc_641C8EF8
add	edx, 6
mov	[buffer+4], edx
mov	edx, [args+4]
mov	dword ptr [esp+10h], 1Dh
mov	eax, [args+8]
sub	eax, edx
mov	[esp+0Ch], eax
mov	[esp+8], edx
mov	dword ptr [esp+4], 1Bh
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [buffer+4]
sub	eax, 6
cmp	eax, [buffer]
jb	short loc_641C8F2D
mov	[buffer+4], eax
mov	eax, [args]
mov	[esp], eax	
call	_silc_free
mov	[esp], args	
call	_silc_free
			
mov	eax, buffer
add	esp, 4Ch
pop	buffer
pop	esi
pop	args
leave
retn
align 4
mov	eax, [ebp+argv_types]
mov	[esp+0Ch], eax	
mov	eax, [ebp+argv_lens]
mov	[esp+8], eax	
mov	eax, [ebp+argv]
mov	[esp+4], eax	
mov	eax, [ebp+argc]
mov	[esp], eax	
call	_silc_argument_payload_encode
mov	edi, eax
test	eax, eax
jnz	short loc_641C8F80
xor	buffer,	buffer
mov	eax, buffer
add	esp, 4Ch
pop	buffer
pop	esi
pop	args
leave
retn
align 10h
mov	esi, [args+8]
sub	esi, [args+4]
add	esi, 6
jmp	loc_641C8E3C
mov	edx, [buffer+8]
jmp	loc_641C8E90
align 4
public _silc_command_reply_payload_encode_vap
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	esi, [ebp+status]
mov	edi, [ebp+error]
mov	ebx, [ebp+ap]
mov	al, [ebp+cmd]
mov	[ebp+var_3D], al
mov	edx, [ebp+ident]
mov	[ebp+var_40], dx
mov	ecx, [ebp+argc]
inc	ecx
mov	dword ptr [esp+4], 4 
mov	[esp], argc_0	
mov	[ebp+items], argc_0
call	_silc_calloc
mov	[ebp+argv], eax
test	eax, eax
mov	ecx, [ebp+items]
jz	loc_641C918C
mov	dword ptr [esp+4], 4 
mov	[esp], ecx	
mov	[ebp+items], argc_0
call	_silc_calloc
mov	[ebp+argv_lens], eax
test	eax, eax
mov	ecx, [ebp+items]
jz	loc_641C91AD
mov	dword ptr [esp+4], 4 
mov	[esp], ecx	
mov	[ebp+items], argc_0
call	_silc_calloc
mov	[ebp+argv_types], eax
test	eax, eax
mov	ecx, [ebp+items]
jz	loc_641C9175
mov	edx, status_0
mov	[ebp+status_data], dl
mov	eax, error_0
mov	[ebp+status_data+1], al
mov	dword ptr [esp+4], 2 
lea	eax, [ebp+status_data]
mov	[esp], eax	
mov	[ebp+items], ecx
call	_silc_memdup
mov	edx, [ebp+argv]
mov	[edx], eax
test	eax, eax
mov	ecx, [ebp+items]
jz	loc_641C916A
mov	edx, [ebp+argv_lens]
mov	dword ptr [edx], 2
mov	esi, [ebp+argv_types]
mov	dword ptr [esi], 1
cmp	ecx, 1
jbe	loc_641C919C
mov	[ebp+var_2C], 1
mov	esi, 1
mov	[ebp+var_5C], i
mov	[ebp+var_50], argc_0
jmp	short loc_641C908B
align 10h
			
inc	[ebp+var_5C]
mov	argc_0,	[ebp+var_5C]
cmp	[ebp+var_50], ecx
jbe	short loc_641C90EC
			
mov	x_type,	[ap_0]
mov	x, [ap_0+4]
add	ap_0, 0Ch
mov	x_len, [ebx-4]
test	x_type,	x_type
jz	short loc_641C9080
test	x, x
jz	short loc_641C9080
test	x_len, x_len
jz	short loc_641C9080
mov	argc_0,	[ebp+var_2C]
shl	ecx, 2
mov	[ebp+var_30], ecx
mov	[esp+4], x_len	
mov	[esp], x	
mov	[ebp+items], x_len
call	_silc_memdup
mov	ecx, [ebp+argv]
mov	i, [ebp+var_30]
mov	[ecx+esi], eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641C9198
mov	eax, [ebp+argv_lens]
mov	esi, [ebp+var_30]
mov	[eax+esi], edx
mov	x_len, [ebp+argv_types]
mov	[edx+esi], x_type
inc	[ebp+var_2C]
inc	[ebp+var_5C]
mov	ecx, [ebp+var_5C]
cmp	[ebp+var_50], ecx
ja	short loc_641C908B
nop
mov	x, [ebp+var_2C]
movzx	x_len, [ebp+var_40]
mov	[esp+14h], ident_0 
mov	i, [ebp+argv_types]
mov	[esp+10h], esi	
mov	ident_0, [ebp+argv_lens]
mov	[esp+0Ch], edx	
mov	argc_0,	[ebp+argv]
mov	[esp+8], ecx	
mov	[esp+4], eax	
movzx	eax, [ebp+var_3D]
mov	[esp], cmd_0	
call	_silc_command_payload_encode
mov	esi, eax
xor	ap_0, ap_0
mov	x_type,	[ebp+var_2C]
mov	[ebp+var_2C], buffer
mov	buffer,	[ebp+argv]
lea	esi, [esi+0]
mov	eax, [esi+i*4]
mov	[esp], eax	
call	_silc_free
inc	i
cmp	k, i
jg	short loc_641C912C
mov	esi, [ebp+var_2C]
mov	eax, [ebp+argv]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+argv_lens]
mov	[esp], edx	
call	_silc_free
mov	ecx, [ebp+argv_types]
mov	[esp], ecx	
call	_silc_free
mov	eax, buffer
add	esp, 7Ch
pop	i
pop	buffer
pop	k
leave
retn
mov	ecx, [ebp+argv_types]
mov	[esp], ecx	
call	_silc_free
mov	esi, [ebp+argv_lens]
mov	[esp], esi	
call	_silc_free
mov	eax, [ebp+argv]
mov	[esp], eax	
call	_silc_free
nop
xor	esi, esi
mov	eax, buffer
add	esp, 7Ch
pop	ap_0
pop	buffer
pop	edi
leave
retn
xor	esi, esi
jmp	short out
mov	eax, 1
mov	[ebp+var_2C], 1
jmp	loc_641C90EF
mov	ecx, [ebp+argv]
mov	[esp], ecx	
call	_silc_free
xor	status_0, status_0
jmp	short loc_641C918E
public _silc_command_reply_payload_encode_va
push	ebp
mov	ebp, esp
sub	esp, 28h
movzx	buffer,	[ebp+ident]
lea	edx, [ebp+ap]
mov	[esp+14h], edx	
mov	edx, [ebp+argc]
mov	[esp+10h], edx	
mov	[esp+0Ch], buffer 
movzx	buffer,	[ebp+error]
mov	[esp+8], buffer	
movzx	buffer,	[ebp+status]
mov	[esp+4], buffer	
movzx	buffer,	[ebp+cmd]
mov	[esp], buffer	
call	_silc_command_reply_payload_encode_vap
leave
retn
align 4
public _silc_command_payload_encode_vap
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	cl, [ebp+cmd]
mov	edx, [ebp+ident]
mov	ebx, [ebp+argc]
test	ebx, ebx
jnz	loc_641C9294
xor	eax, eax
xor	esi, esi
mov	[ebp+argv_types], 0
xor	edi, edi
xor	ebx, ebx
movzx	ident_0, dx
mov	[esp+14h], ident_0 
mov	ident_0, [ebp+argv_types]
mov	[esp+10h], edx	
mov	[esp+0Ch], argv_lens 
mov	[esp+8], argv	
mov	[esp+4], eax	
movzx	cmd_0, cl
mov	[esp], cmd_0	
call	_silc_command_payload_encode
mov	[ebp+buffer], eax
test	k, k
jz	short loc_641C926D
xor	eax, eax
mov	[ebp+var_24], argv_lens
mov	argv_lens, argv
mov	argv, k
mov	k, i
mov	eax, [argv+i*4]
mov	[esp], eax	
call	_silc_free
inc	i
cmp	k, i
jg	short loc_641C9258
mov	k, argv
mov	argv, [ebp+var_24]
mov	[esp], argv
call	_silc_free
mov	[esp], argv_lens 
call	_silc_free
mov	ecx, [ebp+argv_types]
mov	[esp], ecx	
call	_silc_free
mov	eax, [ebp+buffer]
add	esp, 5Ch
pop	argv
pop	k
pop	argv_lens
leave
retn
align 4
mov	dword ptr [esp+4], 4 
mov	eax, [ebp+argc]
mov	[esp], eax	
mov	[ebp+var_38], ident_0
mov	[ebp+var_3C], cl
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jnz	short loc_641C92BC
			
mov	[ebp+buffer], 0
jmp	short loc_641C9288
mov	dword ptr [esp+4], 4
mov	argv, [ebp+argc]
mov	[esp], eax	
call	_silc_calloc
mov	edi, eax
test	eax, eax
jz	short loc_641C92B3
mov	dword ptr [esp+4], 4 
mov	argv_lens, [ebp+argc]
mov	[esp], eax	
call	_silc_calloc
mov	[ebp+argv_types], eax
test	eax, eax
mov	edx, [ebp+var_38]
mov	cl, [ebp+var_3C]
jz	short loc_641C92B3
xor	esi, esi
mov	[ebp+var_28], 0
mov	[ebp+var_2C], argv_lens
mov	[ebp+var_30], argv
mov	byte ptr [ebp+var_24], cl
mov	[ebp+var_32], dx
mov	edx, k
mov	argv, [ebp+ap]
jmp	short loc_641C931F
align 4
			
inc	[ebp+var_28]
mov	x, [ebp+var_28]
cmp	[ebp+argc], eax
jbe	short loc_641C9361
mov	x_type,	[ap_0]
mov	eax, [ap_0+4]
add	ap_0, 0Ch
mov	x_len, [ebx-4]
test	x_type,	x_type
jz	short loc_641C9314
test	x, x
jz	short loc_641C9314
test	x_len, x_len
jz	short loc_641C9314
mov	[esp+4], x_len	
mov	[esp], x	
mov	[ebp+var_38], k
call	_silc_memdup
mov	edx, [ebp+var_38]
mov	ecx, [ebp+var_30]
mov	[ecx+edx*4], eax
test	eax, eax
jz	short loc_641C9377
mov	eax, [ebp+var_2C]
mov	[eax+k*4], x_len
mov	ecx, [ebp+argv_types]
mov	[ecx+k*4], x_type
inc	k
jmp	short loc_641C9314
mov	x_type,	k
mov	x_len, [ebp+var_2C]
mov	ap_0, [ebp+var_30]
mov	cl, byte ptr [ebp+var_24]
mov	dx, [ebp+var_32]
mov	eax, k
jmp	loc_641C9221
mov	x_type,	k
mov	x_len, [ebp+var_2C]
mov	ap_0, ecx
mov	[ebp+buffer], 0
jmp	out
align 4
public _silc_command_payload_encode_va
push	ebp
mov	ebp, esp
sub	esp, 18h
movzx	buffer,	[ebp+ident]
lea	edx, [ebp+ap]
mov	[esp+0Ch], edx	
mov	edx, [ebp+argc]
mov	[esp+8], edx	
mov	[esp+4], buffer	
movzx	buffer,	[ebp+cmd]
mov	[esp], buffer	
call	_silc_command_payload_encode_vap
leave
retn
align 4
public _silc_command_payload_encode_payload
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	edx, [ebp+payload]
mov	eax, [edx+4]
test	eax, eax
jz	loc_641C9508
mov	[esp], eax	
call	_silc_argument_payload_encode_payload
mov	esi, eax
test	eax, eax
jz	loc_641C951C
mov	edi, [args+8]
sub	len, [args+4]
mov	ecx, [ebp+payload]
mov	args, [ecx+4]
mov	[esp], eax	
call	_silc_argument_get_arg_num
mov	[ebp+argc], eax
add	len, 6
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C9523
test	edi, edi
jz	loc_641C953F
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641C9523
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+edi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	ecx, edi
jb	short loc_641C9452
mov	[buffer+8], edx
mov	dword ptr [esp+24h], 1Dh
mov	edx, [ebp+payload]
movzx	eax, word ptr [edx+2]
mov	[esp+20h], eax
mov	dword ptr [esp+1Ch], 3
mov	ecx, [ebp+argc]
mov	[esp+18h], ecx
mov	dword ptr [esp+14h], 1
movzx	eax, byte ptr [edx]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], edi
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
test	args, args
jz	short loc_641C94FD
mov	edx, [buffer+4]
mov	eax, [buffer+8]
sub	eax, edx
cmp	eax, 5
jbe	short loc_641C94B6
add	edx, 6
mov	[buffer+4], edx
mov	edx, [args+4]
mov	dword ptr [esp+10h], 1Dh
mov	eax, [args+8]
sub	eax, edx
mov	[esp+0Ch], eax
mov	[esp+8], edx
mov	dword ptr [esp+4], 1Bh
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [buffer+4]
sub	eax, 6
cmp	eax, [buffer]
jb	short loc_641C94EB
mov	[buffer+4], eax
mov	eax, [args]
mov	[esp], eax	
call	_silc_free
mov	[esp], args	
call	_silc_free
			
mov	eax, buffer
add	esp, 4Ch
pop	buffer
pop	args
pop	edi
leave
retn
align 4
mov	edi, 6
mov	[ebp+argc], 0
xor	esi, esi
jmp	loc_641C93FB
align 4
xor	edi, edi
jmp	loc_641C93E7
			
xor	buffer,	buffer
test	args, args
jz	short loc_641C94FD
mov	eax, [args]
mov	[esp], eax	
call	_silc_free
mov	[esp], args	
call	_silc_free
xor	buffer,	buffer
jmp	short loc_641C94FD
mov	edx, [buffer+8]
jmp	loc_641C944F
align 4
public _silc_id_payload_get_type
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
test	eax, eax
jz	short locret_641C9554
mov	payload_0, [payload_0]
leave
retn
align 4
public _silc_id_payload_get_len
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
test	eax, eax
jz	short locret_641C9566
movzx	payload_0, word	ptr [payload_0+2]
leave
retn
public _silc_id_get_len
push	ebp
mov	ebp, esp
mov	edx, [ebp+id]
mov	eax, [ebp+type]
cmp	ax, 2
jz	short loc_641C9594
cmp	ax, 3
jz	short loc_641C9588
dec	ax
jz	short loc_641C9588
xor	eax, eax
leave
retn
align 4
			
movzx	type_0,	byte ptr [id_0+10h]
add	eax, 4
leave
retn
align 4
movzx	type_0,	byte ptr [id_0+10h]
add	eax, 0Ch
leave
retn
align 10h
public _silc_id_dup
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	edx, [ebp+id]
mov	eax, [ebp+type]
cmp	ax, 2
jz	short loc_641C95D0
cmp	ax, 3
jz	short loc_641C95C0
dec	ax
jz	short loc_641C95C0
xor	eax, eax
leave
retn
			
mov	[ebp+type], 16h
mov	[ebp+id], id_0
leave
jmp	_silc_memdup
mov	[ebp+type], 1Dh
mov	[ebp+id], id_0
leave
jmp	_silc_memdup
public _silc_id_payload_get_data
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+payload]
test	eax, eax
jz	short locret_641C9600
movzx	edx, word ptr [payload_0+2]
mov	[esp+4], edx	
mov	payload_0, [payload_0+4]
mov	[esp], eax	
call	_silc_memdup
leave
retn
align 4
public _silc_id_str2id
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 8
mov	ebx, [ebp+id]
mov	edx, [ebp+id_len]
mov	ecx, [ebp+ret_id_size]
mov	eax, [ebp+type]
cmp	edx, 1Ch
ja	short loc_641C9632
cmp	ax, 2
jz	short loc_641C963C
cmp	ax, 3
jz	loc_641C96F0
dec	ax
jz	short loc_641C9694
			
xor	type_0,	type_0
			
add	esp, 8
pop	id_0
pop	esi
pop	edi
leave
retn
cmp	id_len_0, 10h
jz	short loc_641C9646
cmp	id_len_0, 1Ch
jnz	short loc_641C9632
cmp	ret_id_size_0, 1Ch
jbe	short loc_641C9632
xor	type_0,	type_0
mov	edi, [ebp+ret_id]
rep stosb
cmp	id_len_0, 10h
jbe	loc_641C979C
mov	cl, 4
mov	ret_id_0, [ebp+ret_id]
mov	esi, id_0
rep movsd
mov	id_0, 11h
mov	id_len_0, 10h
mov	al, 10h
mov	client_id, [ebp+ret_id]
mov	[edi+10h], al
mov	al, [id_0+edx]
mov	[edi+11h], al
mov	eax, edi
add	eax, 12h
lea	esi, [id_0+esi]
mov	ret_id_size_0, 0Bh
mov	edi, eax
rep movsb
mov	al, 1
jmp	short loc_641C9634
align 4
cmp	id_len_0, 8
jz	short loc_641C969E
cmp	id_len_0, 14h
jnz	short loc_641C9632
cmp	ret_id_size_0, 15h
jbe	short loc_641C9632
xor	eax, eax
mov	edi, [ebp+ret_id]
rep stosb
cmp	id_len_0, 8
jbe	loc_641C97B4
mov	cl, 4
mov	ret_id_0, [ebp+ret_id]
mov	esi, id_0
rep movsd
mov	id_0, 13h
mov	cl, 12h
mov	[ebp+var_10], 11h
mov	[ebp+var_14], 10h
mov	server_id, 10h
mov	eax, edi
mov	id_len_0, [ebp+ret_id]
mov	[edx+10h], al
mov	edi, [ebp+var_14]
movzx	eax, byte ptr [id_0+edi]
shl	eax, 8
mov	edi, [ebp+var_10]
jmp	short loc_641C974B
align 10h
cmp	id_len_0, 8
jz	short loc_641C96FE
cmp	id_len_0, 14h
jnz	loc_641C9632
cmp	ret_id_size_0, 15h
jbe	loc_641C9632
xor	type_0,	type_0
mov	edi, [ebp+ret_id]
rep stosb
cmp	id_len_0, 8
jbe	short loc_641C9774
mov	cl, 4
mov	ret_id_0, [ebp+ret_id]
mov	esi, id_0
rep movsd
mov	id_0, 13h
mov	cl, 12h
mov	[ebp+var_14], 11h
mov	[ebp+var_10], 10h
mov	channel_id, 10h
mov	eax, edi
mov	id_len_0, [ebp+ret_id]
mov	[edx+10h], al
mov	edi, [ebp+var_10]
movzx	eax, byte ptr [id_0+edi]
shl	eax, 8
mov	edi, [ebp+var_14]
movzx	edx, byte ptr [id_0+edi]
or	eax, edx
mov	edx, [ebp+ret_id]
mov	[edx+12h], ax
movzx	eax, byte ptr [id_0+ecx]
shl	eax, 8
movzx	edx, byte ptr [id_0+esi]
or	eax, edx
mov	ecx, [ebp+ret_id]
mov	[ecx+14h], ax
mov	al, 1
jmp	loc_641C9634
align 4
mov	eax, [id_0]
mov	ret_id_size_0, [ebp+ret_id]
mov	[ecx], eax
mov	esi, 7
mov	ecx, 6
mov	[ebp+var_14], 5
mov	[ebp+var_10], 4
mov	ret_id_0, 4
jmp	short loc_641C9736
align 4
mov	eax, [id_0]
mov	id_len_0, [ebp+ret_id]
mov	[edx], eax
mov	esi, 5
mov	edx, 4
mov	al, 4
jmp	loc_641C9670
mov	eax, [id_0]
mov	ret_id_0, [ebp+ret_id]
mov	[edi], eax
mov	esi, 7
mov	ret_id_size_0, 6
mov	[ebp+var_10], 5
mov	[ebp+var_14], 4
mov	edi, 4
jmp	loc_641C96D6
align 10h
public _silc_id_str2id2
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 14h
mov	ebx, [ebp+id]
mov	esi, [ebp+id_len]
mov	ecx, [ebp+type]
mov	eax, [ebp+ret_id]
mov	edx, ecx
test	eax, eax
jz	short loc_641C980E
mov	[ret_id_0+1Eh],	cx
cmp	cx, 2
jz	short loc_641C9868
cmp	cx, 3
jz	short loc_641C9818
dec	dx
jz	short loc_641C9840
xor	ret_id_0, ret_id_0
add	esp, 14h
pop	id_0
pop	id_len_0
leave
retn
align 4
mov	dword ptr [esp+10h], 16h 
mov	[esp+0Ch], ret_id_0 
mov	dword ptr [esp+8], 3 
mov	[esp+4], id_len_0 
mov	[esp], id_0	
call	_silc_id_str2id
add	esp, 14h
pop	id_0
pop	id_len_0
leave
retn
align 10h
mov	dword ptr [esp+10h], 16h 
mov	[esp+0Ch], ret_id_0 
mov	dword ptr [esp+8], 1 
mov	[esp+4], id_len_0 
mov	[esp], id_0	
call	_silc_id_str2id
add	esp, 14h
pop	id_0
pop	id_len_0
leave
retn
align 4
mov	dword ptr [esp+10h], 1Dh 
mov	[esp+0Ch], ret_id_0 
mov	dword ptr [esp+8], 2 
mov	[esp+4], id_len_0 
mov	[esp], id_0	
call	_silc_id_str2id
add	esp, 14h
pop	id_0
pop	id_len_0
leave
retn
align 10h
public _silc_id_payload_get_id
push	ebp
mov	ebp, esp
sub	esp, 14h
mov	eax, [ebp+payload]
test	eax, eax
jz	short locret_641C98C5
mov	edx, [ebp+ret_id_len]
mov	[esp+10h], edx	
mov	edx, [ebp+ret_id]
mov	[esp+0Ch], edx	
movzx	edx, word ptr [payload_0]
mov	[esp+8], edx	
movzx	edx, word ptr [payload_0+2]
mov	[esp+4], edx	
mov	payload_0, [payload_0+4]
mov	[esp], eax	
call	_silc_id_str2id
leave
retn
align 4
public _silc_id_id2str
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	eax, [ebp+id]
mov	edx, [ebp+ret_id]
mov	edi, [ebp+ret_id_len]
mov	ecx, [ebp+type]
cmp	cx, 2
jz	loc_641C9964
cmp	cx, 3
jz	short loc_641C9950
cmp	cx, 1
jz	short loc_641C9950
xor	esi, esi
test	ret_id_len_0, ret_id_len_0
jz	short loc_641C98F8
mov	[ret_id_len_0],	id_len
cmp	id_len,	1Ch
ja	short loc_641C995C
cmp	cx, 2
jz	short loc_641C9970
cmp	cx, 3
jz	short loc_641C990D
dec	cx
jnz	short loc_641C995C
movzx	type_0,	byte ptr [id_0+10h]
mov	ret_id_len_0, ret_id_0
mov	id_len,	id_0
rep movsb
movzx	ecx, byte ptr [id_0+10h]
movzx	ebx, byte ptr [id_0+13h]
mov	[edx+ecx], bl
movzx	ecx, byte ptr [id_0+10h]
mov	bx, [id_0+12h]
mov	[edx+ecx+1], bl
movzx	ecx, byte ptr [id_0+10h]
movzx	ebx, byte ptr [id_0+15h]
mov	[edx+ecx+2], bl
movzx	ecx, byte ptr [id_0+10h]
mov	ax, [id_0+14h]
mov	[edx+ecx+3], al
mov	al, 1
pop	ebx
pop	channel_id
pop	ret_id_0
leave
retn
align 10h
			
movzx	esi, byte ptr [id_0+10h]
add	esi, 4
cmp	[ebp+ret_id_size], id_len
jnb	short loc_641C98F2
			
xor	id_0, id_0
pop	ebx
pop	id_len
pop	edi
leave
retn
align 4
movzx	esi, byte ptr [id_0+10h]
add	esi, 0Ch
jmp	short loc_641C9957
align 10h
movzx	type_0,	byte ptr [id_0+10h]
mov	ret_id_len_0, ret_id_0
mov	id_len,	id_0
rep movsb
movzx	ecx, byte ptr [id_0+10h]
mov	bl, [id_0+11h]
mov	[edx+ecx], bl
movzx	ecx, byte ptr [id_0+10h]
lea	edx, [edx+ecx+1]
lea	client_id, [id_0+12h]
mov	ecx, 0Bh
mov	ret_id_0, edx
rep movsb
mov	al, 1
jmp	short loc_641C995E
public _silc_id_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641C99C4
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 14h
pop	payload_0
leave
jmp	_silc_free
align 4
add	esp, 14h
pop	payload_0
leave
retn
align 4
public _silc_id_payload_encode_data
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	esi, [ebp+id_len]
mov	eax, [ebp+type]
mov	[ebp+var_1A], ax
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C9A6C
mov	edi, id_len_0
add	edi, 4
jz	short loc_641C9A76
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	short loc_641C9A7B
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+edi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641C9A2D
mov	[buffer+8], edx
mov	dword ptr [esp+20h], 1Dh
mov	[esp+1Ch], id_len_0
mov	eax, [ebp+id]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 0Ch
mov	[esp+10h], id_len_0
mov	dword ptr [esp+0Ch], 3
movzx	eax, [ebp+var_1A]
mov	[esp+8], type_0
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
			
mov	eax, buffer
add	esp, 4Ch
pop	buffer
pop	id_len_0
pop	edi
leave
retn
mov	edx, [buffer+8]
jmp	short loc_641C9A2A
xor	buffer,	buffer
jmp	short loc_641C9A6C
align 10h
public _silc_id_payload_encode
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 50h
movzx	esi, [ebp+type]
lea	eax, [ebp+len]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
lea	ebx, [ebp+id_data]
mov	[esp+8], ebx	
mov	[esp+4], esi	
mov	eax, [ebp+id]
mov	[esp], eax	
call	_silc_id_id2str
test	al, al
jnz	short loc_641C9AC0
xor	eax, eax
add	esp, 50h
pop	ebx
pop	esi
leave
retn
align 10h
mov	[esp+8], esi	
mov	eax, [ebp+len]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_silc_id_payload_encode_data
add	esp, 50h
pop	ebx
pop	esi
leave
retn
align 4
public _silc_id_payload_parse_id
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 40h
mov	eax, [ebp+data]
mov	ebx, [ebp+ret_id]
test	ebx, ebx
jz	short loc_641C9B5C
mov	[ebp+buffer.head], data_0
mov	[ebp+buffer.data], data_0
add	data_0,	[ebp+len]
mov	[ebp+buffer.end], eax
mov	[ebp+buffer.tail], eax
mov	dword ptr [esp+14h], 1Dh
lea	eax, [ebp+idlen]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 3
lea	eax, [ebp+idlen+2]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
lea	esi, [ebp+buffer]
mov	[esp], esi	
call	_silc_buffer_unformat
inc	eax
jz	short loc_641C9B5C
cmp	word ptr [ebp+idlen+2],	3
ja	short loc_641C9B5C
mov	ecx, [ebp+buffer.data]
mov	edx, [ebp+buffer.tail]
mov	ret, edx
sub	ret, ecx
cmp	ret, 3
jbe	short loc_641C9B51
lea	ret, [ecx+4]
mov	[ebp+buffer.data], ret
sub	edx, ret
mov	ret, edx
mov	edx, [ebp+idlen]
movzx	ecx, dx
cmp	ecx, ret
jbe	short loc_641C9B68
nop
			
xor	ret, ret
add	esp, 40h
pop	ret_id_0
pop	esi
leave
retn
align 4
cmp	dx, 1Ch
ja	short loc_641C9B5C
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], ecx
lea	ret, [ebp+id_data]
mov	[esp+8], ret
mov	dword ptr [esp+4], 0Ch
mov	[esp], esi	
call	_silc_buffer_unformat
inc	ret
jz	short loc_641C9B5C
mov	ax, word ptr [ebp+idlen+2]
mov	[ret_id_0+1Eh],	ax
cmp	ax, 2
jz	short loc_641C9BEB
cmp	ax, 1
jz	short loc_641C9BD5
mov	dword ptr [esp+10h], 16h 
mov	[esp+0Ch], ret_id_0 
movzx	ret, ax
mov	[esp+8], ret	
			
movzx	ret, word ptr [ebp+idlen]
mov	[esp+4], ret	
mov	ret, [ebp+id_data]
mov	[esp], ret	
call	_silc_id_str2id
test	al, al
setnz	al
jmp	short loc_641C9B5E
mov	dword ptr [esp+10h], 16h
mov	[esp+0Ch], ret_id_0
mov	dword ptr [esp+8], 1
jmp	short loc_641C9BBB
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], ret_id_0
mov	dword ptr [esp+8], 2
jmp	short loc_641C9BBB
align 4
public _silc_id_payload_parse
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	eax, [ebp+payload]
mov	[ebp+buffer.head], eax
mov	[ebp+buffer.data], eax
add	eax, [ebp+payload_len]
mov	[ebp+buffer.end], eax
mov	[ebp+buffer.tail], eax
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641C9CC3
mov	dword ptr [esp+14h], 1Dh
lea	newp, [newp+2]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 3
mov	[esp+8], newp
mov	dword ptr [esp+4], 3
lea	esi, [ebp+buffer]
mov	[esp], esi	
call	_silc_buffer_unformat
inc	eax
jz	short err
cmp	word ptr [newp], 3
ja	short err
mov	ecx, [ebp+buffer.data]
mov	edx, [ebp+buffer.tail]
mov	ret, edx
sub	ret, ecx
cmp	ret, 3
jbe	short loc_641C9C8C
lea	ret, [ecx+4]
mov	[ebp+buffer.data], ret
sub	edx, ret
mov	ret, edx
mov	dx, [newp+2]
movzx	ecx, dx
cmp	ecx, ret
ja	short err
cmp	dx, 1Ch
ja	short err
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], ecx
lea	ret, [newp+4]
mov	[esp+8], ret
mov	dword ptr [esp+4], 16h
mov	[esp], esi	
call	_silc_buffer_unformat
inc	ret
jz	short err
mov	ret, newp
add	esp, 30h
pop	newp
pop	esi
leave
retn
			
mov	[esp], newp
call	_silc_free
xor	newp, newp
mov	ret, newp
add	esp, 30h
pop	newp
pop	esi
leave
retn
align 10h
public _silc_message_get_flags
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+1Ch]
leave
retn
align 4
public _silc_message_get_data
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	edx, [ebp+data_len]
test	edx, edx
jz	short loc_641C9CFF
movzx	ecx, word ptr [payload_0+1Eh]
mov	[data_len_0], ecx
mov	payload_0, [payload_0]
leave
retn
align 4
public _silc_message_get_mac
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+8]
leave
retn
align 10h
public _silc_message_signed_get_public_key
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+payload]
mov	edi, [ebp+pk_data]
mov	esi, [ebp+pk_data_len]
mov	eax, [ebx+0Ch]
test	eax, eax
jnz	short loc_641C9D34
xor	eax, eax
add	esp, 2Ch
pop	payload_0
pop	pk_data_len_0
pop	pk_data_0
leave
retn
align 4
lea	edx, [ebp+pk]
mov	[esp+0Ch], edx	
movzx	edx, word ptr [payload_0+14h]
mov	[esp+8], edx	
mov	[esp+4], eax	
movzx	eax, word ptr [payload_0+16h]
mov	[esp], eax	
call	_silc_pkcs_public_key_alloc
test	al, al
jz	short loc_641C9D29
test	pk_data_0, pk_data_0
jz	short loc_641C9D60
mov	eax, [payload_0+0Ch]
mov	[pk_data_0], eax
test	pk_data_len_0, pk_data_len_0
jz	short loc_641C9D6A
movzx	eax, word ptr [payload_0+14h]
mov	[pk_data_len_0], eax
mov	eax, [ebp+pk]
add	esp, 2Ch
pop	payload_0
pop	pk_data_len_0
pop	pk_data_0
leave
retn
align 4
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641C9DC2
test	len, len
jz	short loc_641C9DC2
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641C9DCB
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	len, [eax+len]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
xor	sb, sb
jmp	short loc_641C9DC2
align 10h
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
mov	edx, sb
mov	ebx, [sb]
mov	ecx, [sb+0Ch]
sub	ecx, ebx
xor	sb, sb
mov	edi, ebx
rep stosb
mov	eax, [sb]
mov	[sb+8],	eax
mov	[sb+4],	eax
pop	ebx
pop	edi
leave
retn
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, sb
test	sb, sb
jz	short loc_641C9E0F
mov	sb, [sb]
mov	[esp], eax	
call	_silc_free
mov	[esp], sb	
call	_silc_free
add	esp, 14h
pop	sb
leave
retn
align 4
public _silc_message_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0ECh
mov	edi, [ebp+rng]
mov	eax, [ebp+flags]
mov	[ebp+var_76], ax
mov	dl, [ebp+generate_iv]
mov	bl, [ebp+private_message]
mov	esi, [ebp+data_len]
test	esi, esi
jz	loc_641CA16A
test	bl, bl
jz	loc_641CA15A
mov	ecx, [ebp+buffer]
test	ecx, ecx
jz	loc_641CA129
mov	[ebp+buf], 0
mov	ecx, [ebp+buffer]
mov	eax, [ecx]
mov	[ecx+8], eax
mov	[ecx+4], eax
test	bl, bl
jnz	short loc_641C9E70
test	dl, dl
jz	loc_641CA05C
			
mov	eax, [ebp+cipher]
test	eax, eax
jz	short loc_641C9E7F
test	dl, dl
jnz	loc_641CA070
mov	[ebp+var_74], 0
lea	private_message_0, [ebp+iv]
mov	[ebp+var_70], ebx
			
mov	i, [ebp+hmac]
test	ebx, ebx
jz	loc_641CA064
mov	eax, [ebp+hmac]
mov	[esp], eax	
call	_silc_hmac_len
mov	[ebp+mac_len], eax
movzx	edx, [ebp+var_76]
mov	[ebp+var_7C], edx
and	edx, 20h
jz	short loc_641C9EDC
mov	ecx, [ebp+public_key]
test	ecx, ecx
jz	loc_641CA0AC
mov	ecx, [ebp+public_key]
mov	[esp], ecx	
call	_silc_pkcs_public_key_get_len
mov	iv_len,	eax
mov	ecx, [ebp+private_key]
mov	[esp], ecx	
call	_silc_pkcs_private_key_get_len
shr	eax, 3
jmp	short loc_641C9EE0
align 4
xor	iv_len,	iv_len
xor	eax, eax
mov	ecx, [ebp+var_74]
mov	ebx, [ebp+data_len]
lea	edx, [ecx+ebx+16h]
add	edx, [ebp+mac_len]
lea	eax, [edx+eax]
add	eax, esi
cmp	eax, 0FFF9h
ja	loc_641CA176
mov	eax, [ebp+data_len]
add	eax, 6
and	eax, 0Fh
mov	esi, 10h
sub	pad_len, eax
mov	edx, [ebp+cipher]
test	edx, edx
jz	loc_641CA0B4
test	rng_0, rng_0
jz	loc_641CA0C0
xor	ebx, ebx
lea	eax, [ebp+pad]
mov	[ebp+mac_len], eax
mov	[esp], rng_0	
call	_silc_rng_get_byte_fast
mov	edx, [ebp+mac_len]
mov	[edx+i], al
inc	i
cmp	pad_len, i
ja	short loc_641C9F28
			
mov	eax, [ebp+var_74]
test	eax, eax
jnz	loc_641CA054
xor	eax, eax
mov	bx, [ebp+var_76]
mov	[ebp+e.flags], bx
mov	edx, [ebp+public_key]
mov	[ebp+e.public_key], edx
mov	ecx, [ebp+private_key]
mov	[ebp+e.private_key], ecx
mov	edx, [ebp+hash]
mov	[ebp+e.hash], edx
mov	ebx, [ebp+cipher]
mov	[ebp+e.cipher],	ebx
mov	edx, [ebp+hmac]
mov	[ebp+e.hmac], edx
mov	edx, [ebp+sender_id]
mov	[ebp+e.sid], edx
mov	edx, [ebp+receiver_id]
mov	[ebp+e.rid], edx
mov	[ebp+e.iv], eax
mov	ecx, [ebp+data_len]
lea	eax, [ecx+pad_len+6]
mov	[ebp+e.payload_len], ax
mov	dword ptr [esp+60h], 1Dh
lea	eax, [ebp+e]
mov	[esp+5Ch], eax
mov	dword ptr [esp+58h], 0
mov	dword ptr [esp+54h], offset _silc_message_payload_encode_encrypt
mov	dword ptr [esp+50h], 1Ah
mov	ebx, [ebp+var_74]
mov	[esp+4Ch], ebx
mov	edx, [ebp+var_70]
mov	[esp+48h], edx
mov	dword ptr [esp+44h], 0Ch
mov	[esp+40h], eax
mov	dword ptr [esp+3Ch], 0
mov	dword ptr [esp+38h], offset _silc_message_payload_encode_sig
mov	dword ptr [esp+34h], 1Ah
mov	[esp+30h], pad_len
mov	ecx, [ebp+mac_len]
mov	[esp+2Ch], ecx
mov	dword ptr [esp+28h], 0Ch
mov	[esp+24h], pad_len
mov	dword ptr [esp+20h], 3
mov	ebx, [ebp+data_len]
mov	[esp+1Ch], ebx
mov	eax, [ebp+data]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 0Ch
mov	[esp+10h], ebx
mov	dword ptr [esp+0Ch], 3
mov	eax, [ebp+var_7C]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	edx, [ebp+buffer]
mov	[esp], edx	
call	_silc_buffer_format
test	eax, eax
js	loc_641CA115
			
mov	eax, [ebp+buffer]
add	esp, 0ECh
pop	ebx
pop	pad_len
pop	edi
leave
retn
align 4
mov	eax, [ebp+var_70]
jmp	loc_641C9F48
mov	dl, 1
jmp	loc_641C9E70
align 4
mov	[ebp+mac_len], 0
jmp	loc_641C9EA5
mov	private_message_0, [ebp+cipher]
mov	[esp], ebx	
call	_silc_cipher_get_block_len
mov	[ebp+var_74], eax
test	rng_0, rng_0
jz	short loc_641CA0E9
mov	esi, [ebp+var_74]
test	esi, esi
jz	short loc_641CA0DE
xor	ebx, ebx
lea	ecx, [ebp+iv]
mov	[ebp+var_70], ecx
mov	esi, [ebp+var_74]
mov	[esp], rng_0
call	_silc_rng_get_byte_fast
mov	edx, [ebp+var_70]
mov	[edx+i], al
inc	i
cmp	iv_len,	i
ja	short loc_641CA094
jmp	loc_641C9E8C
xor	iv_len,	iv_len
jmp	loc_641C9EC9
align 4
lea	ebx, [ebp+pad]
mov	[ebp+mac_len], ebx
jmp	loc_641C9F3B
align 10h
xor	ebx, ebx
lea	ecx, [ebp+pad]
mov	[ebp+mac_len], ecx
mov	rng_0, ecx
xchg	ax, ax
call	_silc_rng_global_get_byte_fast
mov	[edi+i], al
inc	i
cmp	pad_len, i
ja	short loc_641CA0CC
jmp	loc_641C9F3B
lea	edx, [ebp+iv]
mov	[ebp+var_70], edx
jmp	loc_641C9E8C
test	eax, eax
jz	short loc_641CA14F
xor	ebx, ebx
lea	ecx, [ebp+iv]
mov	[ebp+var_70], ecx
mov	esi, [ebp+var_74]
mov	[ebp+mac_len], rng_0
mov	rng_0, ecx
lea	iv_len,	[iv_len+0]
call	_silc_rng_global_get_byte_fast
mov	[edi+i], al
inc	i
cmp	iv_len,	i
ja	short loc_641CA100
mov	edi, [ebp+mac_len]
jmp	loc_641C9E8C
mov	eax, [ebp+buf]
call	_silc_buffer_free
mov	[ebp+buffer], 0
jmp	loc_641CA044
xor	eax, eax
mov	[ebp+var_84], dl
call	_silc_buffer_alloc_0
mov	[ebp+buffer], eax
test	eax, eax
mov	dl, [ebp+var_84]
jz	loc_641CA044
mov	[ebp+buf], eax
jmp	loc_641C9E59
lea	eax, [ebp+iv]
mov	[ebp+var_70], eax
jmp	loc_641C9E8C
cmp	[ebp+cipher], 0
jz	short loc_641CA16A
cmp	[ebp+hmac], 0
jnz	loc_641C9E47
			
mov	[ebp+buffer], 0
jmp	loc_641CA044
add	ebx, 10005h
sub	ebx, eax
mov	[ebp+data_len],	ebx
jmp	loc_641C9EFD
align 4
public _silc_message_payload_encrypt
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+data]
mov	edi, [ebp+true_len]
mov	esi, [ebp+hmac]
mov	eax, [ebp+iv]
mov	[esp+10h], eax	
mov	eax, [ebp+data_len]
mov	[esp+0Ch], eax	
mov	[esp+8], ebx	
mov	[esp+4], ebx	
mov	eax, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_encrypt
test	al, al
jz	short loc_641CA1EF
mov	[esp], hmac_0	
call	_silc_hmac_init
mov	[esp+8], true_len_0 
mov	[esp+4], data_0	
mov	[esp], hmac_0	
call	_silc_hmac_update
mov	dword ptr [esp+8], 0 
add	data_0,	true_len_0
mov	[esp+4], ebx	
mov	[esp], hmac_0	
call	_silc_hmac_final
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	hmac_0
pop	true_len_0
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+buffer]
mov	ebx, [ebp+context]
mov	edi, [ebx+10h]
test	edi, edi
jz	short loc_641CA215
mov	eax, [context_0+14h]
test	eax, eax
jnz	short loc_641CA220
xor	eax, eax
			
add	esp, 5Ch
pop	context_0
pop	buffer_0
pop	mac_len
leave
retn
align 10h
mov	[esp], eax	
call	_silc_hmac_len
mov	edi, eax
mov	eax, [buffer_0+8]
mov	edx, [buffer_0+4]
mov	[ebp+var_3C], edx
mov	ecx, eax
sub	ecx, edx
mov	[ebp+var_1C], ecx
cmp	mac_len, ecx
jbe	short loc_641CA268
mov	edx, [buffer_0+0Ch]
mov	[ebp+var_28], edx
sub	edx, eax
mov	[ebp+var_20], edx
add	edx, [ebp+var_1C]
cmp	mac_len, edx
ja	short loc_641CA2B8
mov	edx, [buffer_0]
mov	ecx, mac_len
sub	ecx, [ebp+var_1C]
mov	[ebp+var_1C], ecx
cmp	[ebp+var_20], ecx
jb	short loc_641CA26A
add	eax, ecx
mov	[buffer_0+8], eax
jmp	short loc_641CA26A
align 4
mov	edx, [buffer_0]
			
mov	eax, [context_0+14h]
mov	[esp+1Ch], eax	
mov	eax, [context_0+10h]
mov	[esp+18h], eax	
mov	eax, [context_0+24h]
mov	[esp+14h], eax	
mov	eax, [context_0+20h]
mov	[esp+10h], eax	
mov	eax, [context_0+18h]
mov	[esp+0Ch], eax	
mov	ecx, [ebp+var_3C]
sub	ecx, edx
mov	[esp+8], ecx	
movzx	eax, word ptr [context_0+1Ch]
mov	[esp+4], eax	
mov	[esp], edx	
call	_silc_message_payload_encrypt
test	al, al
jz	loc_641CA330
mov	eax, mac_len
jmp	loc_641CA217
align 4
mov	edx, [buffer_0]
mov	ecx, [ebp+var_28]
sub	ecx, edx
mov	[ebp+var_2C], ecx
sub	ecx, [ebp+var_1C]
mov	[ebp+var_24], ecx
mov	ecx, [ebp+var_20]
sub	[ebp+var_24], ecx
mov	ecx, [ebp+var_24]
add	ecx, mac_len
mov	[ebp+var_24], ecx
cmp	[ebp+var_2C], ecx
jnb	short loc_641CA31B
mov	[esp+4], ecx	
mov	[esp], edx	
mov	[ebp+var_30], edx
call	_silc_realloc
mov	[ebp+var_20], eax
test	eax, eax
mov	edx, [ebp+var_30]
jz	short loc_641CA330
mov	[buffer_0], eax
mov	ecx, [ebp+var_3C]
sub	ecx, edx
add	ecx, eax
mov	[buffer_0+4], ecx
mov	edx, [ebp+var_1C]
lea	eax, [ecx+edx]
mov	[buffer_0+8], eax
mov	edx, [ebp+var_20]
add	edx, [ebp+var_24]
mov	[buffer_0+0Ch],	edx
mov	[ebp+var_3C], ecx
mov	[ebp+var_28], edx
mov	edx, [ebp+var_20]
mov	ecx, eax
sub	ecx, [ebp+var_3C]
mov	[ebp+var_1C], ecx
mov	ecx, [ebp+var_28]
sub	ecx, eax
mov	[ebp+var_20], ecx
jmp	loc_641CA252
			
or	eax, 0FFFFFFFFh
jmp	loc_641CA217
public _silc_message_payload_decrypt
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	ebx, [ebp+hmac]
mov	dl, [ebp+private_message]
movzx	edi, [ebp+static_key]
movzx	esi, [ebp+check_mac]
mov	[esp], ebx	
mov	[ebp+var_54], dl
call	_silc_hmac_len
mov	[ebp+mac_len], eax
mov	mac_len_0, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_get_block_len
mov	[ebp+block_len], eax
mov	dl, [ebp+var_54]
test	dl, dl
jz	short loc_641CA37C
mov	private_message_0, static_key_0
test	dl, dl
jz	loc_641CA4E0
mov	ecx, [ebp+block_len]
mov	[ebp+iv_len], ecx
mov	eax, [ebp+block_len]
add	eax, [ebp+mac_len]
add	eax, [ebp+iv_len]
cmp	eax, [ebp+data_len]
ja	loc_641CA549
mov	eax, check_mac_0
test	al, al
jz	short loc_641CA418
mov	[esp], hmac_0	
call	_silc_hmac_init
mov	eax, [ebp+data_len]
sub	eax, [ebp+mac_len]
mov	[esp+8], eax	
mov	edx, [ebp+data]
mov	[esp+4], edx	
mov	[esp], hmac_0	
call	_silc_hmac_update
mov	eax, [ebp+sender_id_len]
mov	[esp+8], eax	
mov	eax, [ebp+sender_id]
mov	[esp+4], eax	
mov	[esp], hmac_0	
call	_silc_hmac_update
mov	eax, [ebp+receiver_id_len]
mov	[esp+8], eax	
mov	eax, [ebp+receiver_id]
mov	[esp+4], eax	
mov	[esp], hmac_0	
call	_silc_hmac_update
lea	ecx, [ebp+mac_len]
mov	[esp+8], ecx	
lea	eax, [ebp+mac]
mov	[ebp+var_5C], eax
mov	[esp+4], eax	
mov	[esp], hmac_0	
call	_silc_hmac_final
mov	ecx, [ebp+mac_len]
mov	check_mac_0, [ebp+data_len]
sub	esi, ecx
add	esi, [ebp+data]
cmp	ecx, ecx
mov	static_key_0, [ebp+var_5C]
repe cmpsb
jnz	loc_641CA4EC
			
mov	eax, [ebp+iv_len]
test	eax, eax
jz	short loc_641CA494
mov	hmac_0,	[ebp+data_len]
sub	ebx, [ebp+iv_len]
sub	ebx, [ebp+mac_len]
add	ebx, [ebp+data]
mov	[esp+10h], ivp
mov	edx, [ebp+block_len]
mov	[esp+0Ch], edx	
mov	ecx, [ebp+data]
mov	[esp+8], ecx	
mov	[esp+4], ecx	
mov	eax, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_decrypt
test	al, al
jz	loc_641CA549
mov	edx, [ebp+data]
movzx	eax, byte ptr [edx+2]
shl	eax, 8
movzx	edx, byte ptr [edx+3]
or	eax, edx
lea	edx, [eax+4]
movzx	totlen,	dx
mov	ecx, [ebp+iv_len]
add	ecx, [ebp+mac_len]
lea	totlen,	[ecx+totlen+2]
cmp	[ebp+data_len],	edx
jb	loc_641CA549
add	eax, 6
movzx	eax, ax
cmp	[ebp+block_len], eax
jbe	short loc_641CA4A4
mov	al, 1
add	esp, 7Ch
pop	ivp
pop	esi
pop	edi
leave
retn
align 4
mov	eax, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_get_iv
mov	hmac_0,	eax
jmp	short loc_641CA42B
align 4
mov	edx, [ebp+data]
add	edx, [ebp+block_len]
mov	[esp+10h], ivp	
and	eax, 0FFF0h
add	eax, 10h
sub	eax, [ebp+block_len]
mov	[esp+0Ch], eax	
mov	[esp+8], edx	
mov	[esp+4], edx	
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_decrypt
test	al, al
setnz	al
add	esp, 7Ch
pop	ivp
pop	esi
pop	edi
leave
retn
align 10h
mov	[ebp+iv_len], 0
jmp	loc_641CA382
mov	[esp], hmac_0	
call	_silc_hmac_init
mov	eax, [ebp+data_len]
sub	eax, [ebp+mac_len]
mov	[esp+8], eax	
mov	ecx, [ebp+data]
mov	[esp+4], ecx	
mov	[esp], hmac_0	
call	_silc_hmac_update
lea	eax, [ebp+mac_len]
mov	[esp+8], eax	
lea	edx, [ebp+mac]
mov	[esp+4], edx	
mov	[esp], hmac_0	
call	_silc_hmac_final
mov	eax, [ebp+mac_len]
mov	edx, [ebp+data_len]
sub	edx, eax
add	edx, [ebp+data]
mov	[esp+8], eax	
lea	ecx, [ebp+mac]
mov	[esp+4], ecx	
mov	[esp], edx	
call	_memcmp
test	eax, eax
jz	loc_641CA418
			
xor	eax, eax
jmp	loc_641CA48A
public _silc_message_payload_free
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+payload]
mov	edx, [ebx+10h]
test	edx, edx
jz	short loc_641CA577
movzx	ecx, word ptr [payload_0+18h]
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [payload_0+10h]
mov	[esp], eax	
call	_silc_free
mov	eax, [payload_0+0Ch]
mov	[esp], eax	
call	_silc_free
mov	edx, [payload_0]
test	edx, edx
jz	short loc_641CA5AA
movzx	ecx, word ptr [payload_0+1Eh]
xor	eax, eax
mov	edi, edx
rep stosb
test	byte ptr [payload_0+24h], 1
jnz	short loc_641CA5A0
add	esp, 10h
pop	payload_0
pop	edi
leave
retn
align 10h
mov	eax, [payload_0]
mov	[esp], eax	
call	_silc_free
test	byte ptr [payload_0+24h], 1
jz	short loc_641CA598
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+payload], payload_0
add	esp, 10h
pop	payload_0
pop	edi
leave
jmp	_silc_free
align 4
			
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	[ebp+var_24], message_payload
mov	ebx, message_payload_len
mov	[ebp+var_20], pk
mov	edi, [ebp+pk_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	loc_641CA6DB
lea	sign, [message_payload_len+4]
mov	[ebp+var_1C], eax
mov	edx, eax
add	edx, pk_len_0
jz	loc_641CA6E9
mov	dword ptr [esp+4], 1 
mov	[esp], edx	
mov	[ebp+var_28], edx
call	_silc_calloc
mov	[ebp+var_2C], eax
mov	[sign],	eax
test	eax, eax
mov	edx, [ebp+var_28]
jz	loc_641CA6E5
mov	eax, [ebp+var_2C]
mov	[sign+4], eax
mov	[sign+8], eax
mov	ecx, eax
add	ecx, edx
mov	[sign+0Ch], ecx
mov	eax, ecx
sub	eax, [ebp+var_2C]
cmp	edx, eax
ja	short loc_641CA64D
mov	[sign+8], ecx
mov	dword ptr [esp+20h], 1Dh
mov	eax, [ebp+pk_type]
mov	[esp+1Ch], eax
mov	dword ptr [esp+18h], 3
mov	[esp+14h], pk_len_0
mov	dword ptr [esp+10h], 3
mov	[esp+0Ch], message_payload_len
mov	eax, [ebp+var_24]
mov	[esp+8], eax
mov	dword ptr [esp+4], 1Bh
mov	[esp], sign	
call	_silc_buffer_format
mov	edx, [ebp+var_20]
test	edx, edx
jz	short loc_641CA6DB
test	pk_len_0, pk_len_0
jz	short loc_641CA6DB
mov	edx, [sign+4]
mov	eax, [sign+8]
sub	eax, edx
cmp	[ebp+var_1C], eax
ja	short loc_641CA6A9
add	edx, [ebp+var_1C]
mov	[sign+4], edx
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], pk_len_0
mov	eax, [ebp+var_20]
mov	[esp+8], eax
mov	dword ptr [esp+4], 1Bh
mov	[esp], sign	
call	_silc_buffer_format
mov	eax, [ebp+var_1C]
neg	eax
add	eax, [sign+4]
cmp	eax, [sign]
jb	short loc_641CA6DB
mov	[sign+4], eax
			
mov	eax, sign
add	esp, 5Ch
pop	message_payload_len
pop	sign
pop	pk_len_0
leave
retn
xor	sign, sign
jmp	short loc_641CA6DB
mov	ecx, [sign+8]
jmp	loc_641CA64A
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 85Ch
mov	ebx, message_payload
mov	esi, [ebp+private_key]
mov	edi, [ebp+hash]
test	message_payload, message_payload
jnz	short loc_641CA71C
			
xor	message_payload, message_payload
			
mov	message_payload, buffer
add	esp, 85Ch
pop	buffer
pop	esi
pop	edi
leave
retn
align 4
test	message_payload_len, message_payload_len
jz	short loc_641CA70C
test	private_key_0, private_key_0
jz	short loc_641CA70C
test	hash_0,	hash_0
jz	short loc_641CA70C
mov	[ebp+pk_len], 0
test	public_key, public_key
jnz	loc_641CA96C
mov	[ebp+pk], 0
mov	[esp], private_key_0
mov	[ebp+message_payload_len], message_payload_len
call	_silc_pkcs_get_type
movzx	eax, ax
mov	[ebp+var_834], eax
mov	[esp+4], eax	
mov	eax, [ebp+pk_len]
mov	[esp], eax	
mov	ecx, [ebp+pk]	
mov	edx, [ebp+message_payload_len] 
mov	eax, message_payload 
call	_silc_message_signed_encode_data
mov	[ebp+sign], eax
test	eax, eax
jz	loc_641CAA06
mov	edx, [ebp+sign]
mov	eax, [edx+4]
mov	[esp+1Ch], hash_0 
mov	dword ptr [esp+18h], 1 
lea	edx, [ebp+auth_len]
mov	[esp+14h], edx	
mov	dword ptr [esp+10h], 800h 
lea	ecx, [ebp+auth_data]
mov	[ebp+var_83C], ecx
mov	[esp+0Ch], ecx	
mov	ecx, [ebp+sign]
mov	edx, [ecx+8]
sub	edx, eax
mov	[esp+8], edx	
mov	[esp+4], eax	
mov	[esp], private_key_0 
call	_silc_pkcs_sign
test	al, al
jz	loc_641CA99A
mov	private_key_0, [ebp+pk_len]
mov	hash_0,	[ebp+auth_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	message_payload, eax
test	eax, eax
jz	loc_641CA9E1
lea	esi, [esi+edi+6]
test	esi, esi
jz	loc_641CAA23
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641CA9E1
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+esi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	esi, ecx
ja	short loc_641CA83B
mov	[buffer+8], edx
mov	dword ptr [esp+14h], 1Dh
mov	eax, [ebp+var_834]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 3
mov	eax, [ebp+pk_len]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [ebp+pk_len]
test	eax, eax
jz	loc_641CA964
mov	ecx, [ebp+pk]
test	ecx, ecx
jz	loc_641CA964
mov	ecx, [buffer+4]
mov	edx, [buffer+8]
sub	edx, ecx
cmp	edx, 3
jbe	short loc_641CA898
add	ecx, 4
mov	[buffer+4], ecx
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], eax
mov	edx, [ebp+pk]
mov	[esp+8], edx
mov	dword ptr [esp+4], 1Bh
mov	[esp], buffer	
call	_silc_buffer_format
mov	edx, [buffer+4]
lea	ecx, [edx-4]
cmp	ecx, [buffer]
jb	loc_641CAA1B
mov	[buffer+4], ecx
mov	eax, [ebp+pk_len]
mov	edx, ecx
			
lea	ecx, [eax+4]
mov	eax, [buffer+8]
sub	eax, edx
cmp	ecx, eax
ja	short loc_641CA8E5
add	edx, ecx
mov	[buffer+4], edx
mov	eax, [ebp+auth_len]
mov	dword ptr [esp+18h], 1Dh
mov	[esp+14h], eax
lea	ecx, [ebp+auth_data]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1Bh
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, 0FFFFFFFCh
sub	eax, [ebp+pk_len]
add	eax, [buffer+4]
cmp	eax, [buffer]
jb	short loc_641CA92C
mov	[buffer+4], eax
mov	ecx, 801h
xor	eax, eax
mov	edi, [ebp+var_83C]
rep stosb
mov	eax, [ebp+sign]	
call	_silc_buffer_clear
mov	eax, [ebp+sign]	
call	_silc_buffer_free
mov	edi, [ebp+pk]
mov	[esp], edi	
call	_silc_free
jmp	loc_641CA70E
			
mov	edx, [buffer+4]
jmp	loc_641CA8D4
lea	message_payload, [ebp+pk_len]
mov	[esp+4], eax	
mov	[esp], public_key 
mov	[ebp+message_payload_len], message_payload_len
call	_silc_pkcs_public_key_encode
mov	[ebp+pk], eax
test	eax, eax
mov	edx, [ebp+message_payload_len]
jnz	loc_641CA741
jmp	loc_641CA70C
mov	dword ptr [esp], offset	aCouldNotComput	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	eax, [ebp+sign]	
call	_silc_buffer_clear
mov	eax, [ebp+sign]	
call	_silc_buffer_free
mov	hash_0,	[ebp+pk]
mov	[esp], edi	
call	_silc_free
xor	message_payload, message_payload
jmp	loc_641CA70E
			
mov	eax, [ebp+sign]	
call	_silc_buffer_clear
mov	eax, [ebp+sign]	
call	_silc_buffer_free
mov	ecx, 801h
xor	eax, eax
mov	edi, [ebp+var_83C]
rep stosb
mov	eax, [ebp+pk]
mov	[esp], eax	
call	_silc_free
xor	buffer,	buffer
jmp	loc_641CA70E
mov	eax, [ebp+pk_len]
jmp	loc_641CA8D4
mov	edx, [buffer+8]
jmp	loc_641CA838
align 4
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+buffer]
mov	esi, [ebp+context]
test	byte ptr [esi],	20h
jnz	short loc_641CAA4C
xor	buffer_0, buffer_0
			
mov	eax, len
add	esp, 2Ch
pop	len
pop	sig
pop	edi
leave
retn
mov	eax, [buffer_0]
mov	ecx, [context_0+4] 
mov	edx, [buffer_0+4]
sub	edx, eax	
mov	edi, [context_0+0Ch]
mov	[esp+4], edi	
mov	context_0, [context_0+8]
mov	[esp], esi	
call	_silc_message_signed_payload_encode
mov	esi, eax
test	eax, eax
jz	short loc_641CAAAC
mov	edx, [sig+4]
mov	dword ptr [esp+10h], 1Dh
mov	sig, [sig+8]
sub	eax, edx
mov	[esp+0Ch], eax
mov	[esp+8], edx
mov	dword ptr [esp+4], 0Ch
mov	[esp], buffer_0	
call	_silc_buffer_format
mov	buffer_0, eax
test	eax, eax
js	short loc_641CAAA5
mov	len, sig	
call	_silc_buffer_free
jmp	short loc_641CAA42
mov	len, sig
call	_silc_buffer_free
or	len, 0FFFFFFFFh
jmp	short loc_641CAA42
align 4
public _silc_message_payload_parse
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 8Ch
mov	ret, [ebp+payload]
mov	edi, [ebp+cipher]
mov	esi, [ebp+hmac]
mov	ebx, [ebp+message]
mov	dl, [ebp+private_message]
mov	byte ptr [ebp+iv_len], dl
mov	dl, [ebp+static_key]
mov	byte ptr [ebp+var_44], dl
mov	dl, [ebp+no_allocation]
mov	[ebp+var_49], dl
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
mov	edx, [ebp+payload_len]
add	edx, ret
mov	[ebp+buffer.end], edx
mov	[ebp+buffer.tail], edx
test	edi, edi
jz	short loc_641CAB45
mov	dword ptr [esp+28h], 1 
mov	ecx, [ebp+receiver_id_len]
mov	[esp+24h], ecx	
mov	ecx, [ebp+receiver_id]
mov	[esp+20h], ecx	
mov	ecx, [ebp+sender_id_len]
mov	[esp+1Ch], ecx	
mov	ecx, [ebp+sender_id]
mov	[esp+18h], ecx	
mov	[esp+14h], hmac_0 
mov	[esp+10h], cipher_0 
movzx	ecx, byte ptr [ebp+var_44]
mov	[esp+0Ch], static_key_0	
movzx	static_key_0, byte ptr [ebp+iv_len]
mov	[esp+8], private_message_0 
sub	edx, ret
mov	[esp+4], edx	
mov	[esp], ret	
call	_silc_message_payload_decrypt
test	al, al
jz	loc_641CAE83
test	hmac_0,	hmac_0
jz	short loc_641CAB53
mov	[esp], hmac_0	
call	_silc_hmac_len
mov	hmac_0,	ret
test	cipher_0, cipher_0
jz	short loc_641CAB6B
cmp	byte ptr [ebp+iv_len], 0
jz	loc_641CACBC
cmp	byte ptr [ebp+var_44], 0
jnz	loc_641CACBC
mov	[ebp+iv_len], 0
test	message_0, message_0
jz	loc_641CAE40
mov	[ebp+newp], 0
mov	ecx, 28h
xor	ret, ret
mov	cipher_0, message_0
rep stosb
mov	message_0, [ebp+stack]
test	edi, edi
jz	loc_641CACCC
and	byte ptr [ebx+24h], 0FEh
cmp	[ebp+var_49], 0
jnz	loc_641CAC6C
mov	dword ptr [esp+28h], 1Dh
lea	ret, [message_0+20h]
mov	[esp+24h], ret
lea	ret, [message_0+4]
mov	[esp+20h], ret
mov	dword ptr [esp+1Ch], 14h
lea	ret, [message_0+1Eh]
mov	[esp+18h], ret
mov	[esp+14h], message_0
mov	dword ptr [esp+10h], 14h
lea	ret, [message_0+1Ch]
mov	[esp+0Ch], ret
mov	dword ptr [esp+8], 3
lea	ret, [ebp+buffer]
mov	[esp+4], ret	
mov	edi, [ebp+stack]
mov	[esp], edi	
call	_silc_buffer_sunformat
inc	ret
jz	err
movzx	ecx, word ptr [message_0+1Eh]
mov	ret, [ebp+buffer.data]
mov	[ebp+var_44], ret
mov	edx, [ebp+buffer.tail]
sub	edx, ret
lea	ret, [edx-6]
sub	ret, mac_len
sub	ret, [ebp+iv_len]
cmp	ecx, ret
ja	loc_641CAE62
movzx	edi, word ptr [message_0+20h]
mov	[ebp+var_5C], edi
add	edi, ecx
mov	[ebp+var_3C], edi
cmp	ret, edi
jb	loc_641CAE62
test	byte ptr [message_0+1Ch], 20h
jz	short loc_641CAC4B
mov	ret, [ebp+var_3C]
add	ret, 6
lea	edi, [ret+mac_len]
add	edi, [ebp+iv_len]
cmp	edi, edx
jb	loc_641CACDC
			
test	mac_len, mac_len
jz	short loc_641CAC57
mov	ret, [ebp+buffer.tail]
sub	ret, mac_len
mov	[message_0+8], ret
			
mov	ret, [ebp+newp]
add	esp, 8Ch
pop	message_0
pop	mac_len
pop	edi
leave
retn
align 4
and	byte ptr [ebx+24h], 0FEh
mov	dword ptr [esp+24h], 1Dh
lea	ret, [message_0+20h]
mov	[esp+20h], ret
lea	ret, [message_0+4]
mov	[esp+1Ch], ret
mov	dword ptr [esp+18h], 0Eh
lea	ret, [message_0+1Eh]
mov	[esp+14h], ret
mov	[esp+10h], message_0
mov	dword ptr [esp+0Ch], 0Eh
lea	ret, [message_0+1Ch]
mov	[esp+8], ret
mov	dword ptr [esp+4], 3
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
jmp	loc_641CABF7
			
mov	[esp], cipher_0
call	_silc_cipher_get_block_len
mov	[ebp+iv_len], ret
jmp	loc_641CAB72
cmp	[ebp+var_49], 0
jnz	short loc_641CAC68
or	byte ptr [ebx+24h], 1
jmp	loc_641CABA5
align 4
mov	edi, [ebp+var_5C]
neg	edi
sub	edi, ecx
sub	edx, [ebp+iv_len]
sub	edx, mac_len
lea	edx, [edi+edx-6]
mov	[ebp+iv_len], edx
add	ret, [ebp+var_44]
mov	[ebp+src.head],	ret
mov	[ebp+src.data],	ret
add	ret, edx
mov	[ebp+src.end], ret
mov	[ebp+src.tail],	ret
mov	dword ptr [esp+14h], 1Dh
lea	ret, [message_0+16h]
mov	[esp+10h], ret
mov	dword ptr [esp+0Ch], 3
lea	ret, [message_0+14h]
mov	[esp+8], ret
mov	dword ptr [esp+4], 3
lea	edi, [ebp+src]
mov	[esp], edi	
call	_silc_buffer_unformat
inc	ret
jz	err
movzx	ret, word ptr [message_0+14h]
mov	edx, [ebp+iv_len]
sub	edx, 4
cmp	ret, edx
ja	err
mov	ecx, [ebp+src.data]
mov	edx, [ebp+src.tail]
sub	edx, ecx
cmp	edx, 3
jbe	short loc_641CAD5D
add	ecx, 4
mov	[ebp+src.data],	ecx
mov	dword ptr [esp+1Ch], 1Dh
lea	edx, [message_0+18h]
mov	[esp+18h], edx
lea	edx, [message_0+10h]
mov	[esp+14h], edx
mov	dword ptr [esp+10h], 14h
mov	[esp+0Ch], ret
lea	ret, [message_0+0Ch]
mov	[esp+8], ret
mov	dword ptr [esp+4], 1Ch
mov	[esp], edi	
call	_silc_buffer_unformat
inc	ret
jz	loc_641CAE20
mov	ecx, [message_0+18h]
movzx	ret, cx
mov	[ebp+iv_len], ret
mov	edi, [ebp+src.data]
movzx	ret, word ptr [message_0+14h]
mov	edx, 0FFFFFFFEh
sub	edx, ret
mov	ret, [ebp+src.tail]
sub	ret, edi
lea	ret, [edx+ret]
cmp	[ebp+iv_len], ret
ja	short loc_641CAE20
sub	edi, 4
cmp	edi, [ebp+src.head]
jb	short loc_641CADCC
mov	[ebp+src.data],	edi
test	cx, cx
jnz	loc_641CAC4B
mov	edx, [message_0+10h]
test	edx, edx
jz	short loc_641CADF0
xor	ret, ret
mov	edi, edx
mov	ecx, [ebp+iv_len]
rep stosb
mov	ret, [message_0+10h]
mov	[esp], ret	
call	_silc_free
			
mov	ret, [message_0+0Ch]
mov	[esp], ret	
call	_silc_free
			
mov	message_0, [ebp+newp]
test	ebx, ebx
jz	loc_641CAC57
mov	edx, [ebp+newp]
mov	[esp], edx	
call	_silc_message_payload_free
mov	[ebp+newp], 0
jmp	loc_641CAC57
align 10h
			
mov	edx, [message_0+10h]
test	edx, edx
jz	short loc_641CADF0
movzx	ecx, word ptr [message_0+18h]
xor	ret, ret
mov	edi, edx
rep stosb
mov	ret, [message_0+10h]
mov	[esp], ret	
call	_silc_free
jmp	short loc_641CADF0
align 10h
mov	dword ptr [esp+4], 28h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	message_0, ret
test	ret, ret
jz	short loc_641CAE83
mov	[ebp+newp], ret
jmp	loc_641CAB81
			
mov	dword ptr [esp], offset	aIncorrectMessa
call	_silc_format
mov	[esp+4], ret	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	err
			
mov	[ebp+newp], 0
jmp	loc_641CAC57
align 10h
public _silc_message_signed_verify
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+message]
test	byte ptr [ebx+1Ch], 20h
jz	loc_641CB054
cmp	word ptr [message_0+18h], 0
jz	loc_641CB054
mov	edx, [ebp+remote_public_key]
test	edx, edx
jz	loc_641CB054
mov	eax, [ebp+hash]
test	eax, eax
jz	loc_641CB054
mov	ax, [message_0+1Eh]
mov	[ebp+var_1A], ax
mov	edi, [message_0+20h]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	loc_641CB07C
movzx	tmp, [ebp+var_1A]
movzx	edi, di
lea	edi, [eax+edi+6]
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[tmp], eax
test	eax, eax
jz	loc_641CB07C
mov	[tmp+4], eax
mov	[tmp+8], eax
lea	edx, [eax+edi]
mov	[tmp+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641CAF2C
mov	[tmp+8], edx
			
movzx	edx, word ptr [message_0+20h]
movzx	eax, word ptr [message_0+1Eh]
mov	dword ptr [esp+34h], 1Dh
mov	[esp+30h], edx
mov	ecx, [message_0+4]
mov	[esp+2Ch], ecx
mov	dword ptr [esp+28h], 1Bh
mov	[esp+24h], edx
mov	dword ptr [esp+20h], 3
mov	[esp+1Ch], eax
mov	edx, [message_0]
mov	[esp+18h], edx
mov	dword ptr [esp+14h], 1Bh
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 3
movzx	eax, word ptr [message_0+1Ch]
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], tmp	
call	_silc_buffer_format
mov	eax, [tmp+4]	
mov	ecx, [message_0+0Ch] 
mov	edx, [tmp+8]
sub	edx, eax	
movzx	edi, word ptr [message_0+16h]
mov	[esp+4], edi	
movzx	edi, word ptr [message_0+14h]
mov	[esp], edi	
call	_silc_message_signed_encode_data
mov	edx, eax
mov	ecx, [tmp+0Ch]
sub	ecx, [tmp]
xor	eax, eax
mov	edi, [tmp]
rep stosb
mov	eax, [tmp]
mov	[tmp+8], eax
mov	[tmp+4], eax
test	tmp, tmp
jz	short loc_641CAFDF
mov	[esp], eax	
mov	[ebp+ptr], sign
call	_silc_free
mov	[esp], tmp	
call	_silc_free
mov	edx, [ebp+ptr]
test	sign, sign
jz	short loc_641CB054
mov	ecx, [sign+4]
mov	eax, [ebp+hash]
mov	[esp+14h], eax	
mov	eax, [sign+8]
sub	eax, ecx
mov	[esp+10h], eax	
mov	[esp+0Ch], ecx	
movzx	eax, word ptr [message_0+18h]
mov	[esp+8], eax	
mov	eax, [message_0+10h]
mov	[esp+4], eax	
mov	ecx, [ebp+remote_public_key]
mov	[esp], ecx	
mov	[ebp+ptr], sign
call	_silc_pkcs_verify
test	al, al
mov	edx, [ebp+ptr]
jz	short loc_641CB064
mov	message_0, [edx]
mov	ecx, [sign+0Ch]
sub	ecx, ebx
xor	eax, eax
mov	edi, ebx
rep stosb
mov	eax, [sign]
mov	[sign+8], eax
mov	[sign+4], eax
mov	[esp], eax	
mov	[ebp+ptr], sign
call	_silc_free
mov	edx, [ebp+ptr]
mov	[esp], edx	
call	_silc_free
xor	eax, eax
add	esp, 5Ch
pop	ebx
pop	tmp
pop	edi
leave
retn
align 4
			
mov	eax, 1
add	esp, 5Ch
pop	message_0
pop	tmp
pop	edi
leave
retn
align 4
mov	eax, edx	
call	_silc_buffer_clear
mov	edx, [ebp+ptr]
mov	eax, edx	
call	_silc_buffer_free
mov	eax, 1
jmp	short loc_641CB059
			
xor	tmp, tmp
jmp	loc_641CAF2C
align 4
public _silc_notify_get_type
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax]
leave
retn
align 10h
public _silc_notify_get_arg_num
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
movzx	eax, byte ptr [eax+2]
leave
retn
public _silc_notify_get_args
push	ebp
mov	ebp, esp
mov	eax, [ebp+payload]
mov	eax, [eax+4]
leave
retn
align 4
public _silc_notify_payload_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+payload]
test	ebx, ebx
jz	short loc_641CB0D0
mov	eax, [payload_0+4]
mov	[esp], eax	
call	_silc_argument_payload_free
mov	[ebp+payload], payload_0
add	esp, 14h
pop	payload_0
leave
jmp	_silc_free
align 10h
add	esp, 14h
pop	payload_0
leave
retn
align 4
public _silc_notify_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	edx, [ebp+argc]
mov	esi, [ebp+ap]
mov	eax, [ebp+type]
mov	[ebp+var_22], ax
test	edx, edx
jnz	loc_641CB1F4
mov	edi, 5
mov	[ebp+var_1C], 0
xor	ap_0, ap_0
mov	dword ptr [esp+4], 10h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	i, eax
test	eax, eax
jz	loc_641CB1E7
test	edi, edi
jz	loc_641CB377
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641CB33C
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+edi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	ecx, edi
jb	short loc_641CB15B
mov	[buffer+8], edx
mov	dword ptr [esp+1Ch], 1Dh
mov	eax, [ebp+var_1C]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 1
mov	[esp+10h], edi
mov	dword ptr [esp+0Ch], 3
movzx	eax, [ebp+var_22]
mov	[esp+8], type_0
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [ebp+var_1C]
test	eax, eax
jz	short loc_641CB1E7
mov	edx, [args+4]
mov	dword ptr [esp+18h], 1Dh
mov	eax, [args+8]
sub	eax, edx
mov	[esp+14h], eax
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 0Ch
mov	dword ptr [esp+8], 5
mov	dword ptr [esp+4], 18h
mov	[esp], buffer	
call	_silc_buffer_format
mov	eax, [args]
mov	[esp], eax	
call	_silc_free
mov	[esp], args	
call	_silc_free
			
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	args
pop	edi
leave
retn
align 4
mov	dword ptr [esp+4], 4 
mov	[esp], argc_0	
mov	[ebp+items], argc_0
call	_silc_calloc
mov	[ebp+argv], eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641CB33C
mov	dword ptr [esp+4], 4 
mov	[esp], edx	
call	_silc_calloc
mov	[ebp+argv_lens], eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641CB348
mov	dword ptr [esp+4], 4 
mov	[esp], edx	
mov	[ebp+items], edx
call	_silc_calloc
mov	[ebp+argv_types], eax
test	eax, eax
mov	edx, [ebp+items]
jz	loc_641CB35A
mov	ebx, 1
mov	[ebp+var_1C], 0
mov	[ebp+var_4C], edx
jmp	short loc_641CB26A
align 4
mov	ebx, eax
mov	eax, [ap_0+ebx*8-8]
mov	x_len, [ap_0+ebx*8-4]
test	x, x
jz	short loc_641CB27E
test	x_len, x_len
jnz	loc_641CB304
			
lea	x, [ebx+1]
cmp	[ebp+var_4C], ebx
ja	short loc_641CB268
mov	ecx, [ebp+argv_types]
mov	[esp+0Ch], ecx	
mov	eax, [ebp+argv_lens]
mov	[esp+8], eax	
mov	edx, [ebp+argv]
mov	[esp+4], edx	
mov	ecx, [ebp+var_1C]
mov	[esp], ecx	
call	_silc_argument_payload_encode
mov	ap_0, eax
mov	x_len, [eax+8]
sub	len, [eax+4]
mov	edx, [ebp+var_1C]
test	edx, edx
jz	short loc_641CB2DA
xor	ebx, ebx
mov	[ebp+var_30], len
mov	[ebp+var_34], args
mov	esi, [ebp+var_1C]
mov	len, [ebp+argv]
nop
mov	args, [edi+i*4]
mov	[esp], eax	
call	_silc_free
inc	i
cmp	i, k
jl	short loc_641CB2C4
mov	edi, [ebp+var_30]
mov	k, [ebp+var_34]
mov	eax, [ebp+argv]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+argv_lens]
mov	[esp], edx	
call	_silc_free
mov	ecx, [ebp+argv_types]
mov	[esp], ecx	
call	_silc_free
add	len, 5
jmp	loc_641CB104
align 4
mov	argc_0,	[ebp+var_1C]
shl	edx, 2
mov	[ebp+var_30], edx
mov	[esp+4], x_len	
mov	[esp], x	
call	_silc_memdup
mov	edx, [ebp+argv]
mov	ecx, [ebp+var_30]
mov	[edx+ecx], eax
test	eax, eax
jz	short loc_641CB33C
mov	eax, [ebp+argv_lens]
mov	[eax+ecx], x_len
mov	edx, [ebp+argv_types]
mov	[edx+ecx], ebx
inc	[ebp+var_1C]
jmp	loc_641CB27E
align 4
			
xor	buffer,	buffer
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	args
pop	x_len
leave
retn
mov	edx, [ebp+argv]
mov	[esp], edx	
call	_silc_free
xor	ebx, ebx
jmp	loc_641CB1E7
mov	ecx, [ebp+argv_lens]
mov	[esp], ecx	
call	_silc_free
mov	eax, [ebp+argv]
mov	[esp], eax	
call	_silc_free
xor	ebx, ebx
jmp	loc_641CB1E7
mov	edx, [buffer+8]
jmp	loc_641CB158
align 10h
public _silc_notify_payload_parse
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ret, [ebp+payload]
mov	[ebp+buffer.head], ret
mov	[ebp+buffer.data], ret
add	ret, [ebp+payload_len]
mov	[ebp+buffer.end], ret
mov	[ebp+buffer.tail], ret
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, ret
test	ret, ret
jz	loc_641CB441
mov	dword ptr [esp+1Ch], 1Dh
lea	ret, [ret+2]
mov	[esp+18h], ret
mov	dword ptr [esp+14h], 1
lea	ret, [ebp+len]
mov	[esp+10h], ret
mov	dword ptr [esp+0Ch], 3
mov	[esp+8], newp
mov	dword ptr [esp+4], 3
lea	ret, [ebp+buffer]
mov	[esp], ret	
call	_silc_buffer_unformat
inc	ret
jz	short err
mov	ret, [ebp+buffer.data]
mov	edi, [ebp+buffer.tail]
mov	edx, edi
sub	edx, ret
movzx	esi, [ebp+len]
cmp	esi, edx
ja	short err
movzx	esi, byte ptr [newp+2]
mov	ecx, esi
test	cl, cl
jz	short loc_641CB441
cmp	edx, 4
jbe	short loc_641CB424
add	ret, 5
mov	[ebp+buffer.data], ret
mov	edx, edi
sub	edx, ret
and	esi, 0FFh
mov	[esp+8], esi	
mov	[esp+4], edx	
mov	[esp], ret	
call	_silc_argument_payload_parse
mov	[newp+4], ret
test	ret, ret
jz	short err
			
mov	ret, newp
add	esp, 4Ch
pop	newp
pop	len_0
pop	edi
leave
retn
align 4
			
mov	[esp], newp	
call	_silc_free
xor	newp, newp
jmp	short loc_641CB441
public _silc_notify_payload_encode_args
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edi, [ebp+args]
mov	eax, [ebp+type]
mov	[ebp+var_1A], ax
test	edi, edi
jz	loc_641CB554
mov	esi, [args_0+8]
sub	esi, [args_0+4]
add	esi, 5
mov	dword ptr [esp+4], 10h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641CB54A
test	len, len
jz	loc_641CB55E
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641CB566
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+len]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	len, ecx
ja	short loc_641CB4D3
mov	[buffer+8], edx
mov	dword ptr [esp+1Ch], 1Dh
mov	eax, [ebp+argc]
mov	[esp+18h], eax
mov	dword ptr [esp+14h], 1
mov	[esp+10h], len
mov	dword ptr [esp+0Ch], 3
movzx	eax, [ebp+var_1A]
mov	[esp+8], type_0
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
test	args_0,	args_0
jz	short loc_641CB54A
mov	edx, [args_0+4]
mov	dword ptr [esp+18h], 1Dh
mov	eax, [args_0+8]
sub	eax, edx
mov	[esp+14h], eax
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 0Ch
mov	dword ptr [esp+8], 5
mov	dword ptr [esp+4], 18h
mov	[esp], buffer	
call	_silc_buffer_format
			
mov	eax, buffer
add	esp, 3Ch
pop	buffer
pop	len
pop	args_0
leave
retn
mov	esi, 5
jmp	loc_641CB47C
mov	edx, [buffer+8]
jmp	loc_641CB4D0
xor	buffer,	buffer
jmp	short loc_641CB54A
align 4
public _silc_packet_error_string
push	ebp
mov	ebp, esp
mov	eax, [ebp+error]
cmp	eax, 6
ja	short loc_641CB580
mov	error_0, ds:_packet_error[error_0*4]
leave
retn
mov	error_0, offset	aInvalidErrorCo
leave
retn
align 4
public _silc_packet_stream_is_valid
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	al, [eax+67h]
shr	al, 1
xor	eax, 1
and	eax, 1
leave
retn
align 4
public _silc_packet_stream_set_router
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
or	byte ptr [eax+67h], 1
leave
retn
public _silc_packet_stream_set_iv_included
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
or	byte ptr [eax+67h], 4
leave
retn
public _silc_packet_get_sender
push	ebp
mov	ebp, esp
mov	eax, [ebp+packet]
mov	eax, [eax+4]
mov	eax, [eax+14h]
test	eax, eax
jz	short locret_641CB5D6
mov	ecx, [eax]
mov	edx, [ebp+sender_ip]
mov	[edx], ecx
mov	edx, [eax+4]
mov	eax, [ebp+sender_port]
mov	[eax], dx
mov	al, 1
leave
retn
public _silc_packet_stream_ref
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	edx, [eax+60h]
mov	edx, [eax+60h]
inc	edx
mov	[eax+60h], edx
leave
retn
align 4
public _silc_packet_get_engine
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	eax, [eax+4]
mov	eax, [eax+4]
leave
retn
align 4
public _silc_packet_stream_get_stream
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	eax, [eax+8]
leave
retn
align 4
public _silc_packet_set_sid
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	edx, [ebp+sid]
test	byte ptr [eax+67h], 4
jz	short loc_641CB620
mov	[stream_0+64h],	dl
mov	al, 1
leave
retn
align 10h
xor	stream_0, stream_0
leave
retn
public _silc_packet_wrap_read_more
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
test	byte ptr [eax+3Ah], 1
jnz	short locret_641CB650
mov	edx, [context_0+1Ch]
test	edx, edx
jz	short locret_641CB650
mov	ecx, [context_0+20h]
mov	[ebp+type], ecx
mov	[ebp+app_context], 0
mov	[ebp+schedule],	context_0
leave
jmp	edx
align 10h
			
leave
retn
align 4
public _silc_packet_wrap_get_schedule
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, sb
test	sb, sb
jz	short loc_641CB67B
mov	sb, [sb]
mov	[esp], eax	
call	_silc_free
mov	[esp], sb	
call	_silc_free
add	esp, 14h
pop	sb
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, entry
mov	edi, [list]
mov	ecx, prev
mov	[list+8], prev
and	byte ptr [list+10h], 0FDh
xor	entry, entry
test	ecx, ecx
jz	short loc_641CB6B8
test	dl, dl
jz	short loc_641CB6C0
movzx	ebx, word ptr [list+0Eh]
mov	ebx, [ecx+ebx]
mov	[list+8], ebx
cmp	[ecx], entry
jz	short loc_641CB6CE
mov	ecx, ebx
test	ecx, ecx
jnz	short loc_641CB6A0
add	esp, 3Ch
pop	ebx
pop	entry
pop	prev
leave
retn
movzx	ebx, word ptr [list+0Ch]
mov	ebx, [ecx+ebx]
mov	[list+8], ebx
cmp	[ecx], entry
jnz	short loc_641CB6B2
mov	edx, prev
test	prev, prev
jz	short loc_641CB6F3
cmp	ecx, prev
jz	loc_641CB76E
movzx	prev, word ptr [list+0Ch]
jmp	short loc_641CB6EA
align 4
cmp	ecx, prev
jz	short loc_641CB714
mov	edx, prev
lea	p, [prev+edi]
mov	entry, [p]
test	prev, prev
jnz	short loc_641CB6E4
cmp	[list+4], ecx
jz	short loc_641CB737
cmp	[list+14h], ecx
jz	short loc_641CB740
cmp	[list+18h], ecx
jz	short loc_641CB74C
			
mov	[esp], ecx	
call	_silc_free
add	esp, 3Ch
pop	p
pop	entry
pop	prev
leave
retn
align 4
mov	[ebp+var_2C], p
mov	prev, [ecx+edi]
mov	p, [ebp+var_2C]
mov	[ebx], esi
test	esi, esi
jz	short loc_641CB729
test	byte ptr [list+10h], 1
jnz	short loc_641CB758
			
cmp	[list+8], ecx
jz	short loc_641CB764
sub	dword ptr [list+10h], 4
cmp	[list+4], ecx
jnz	short loc_641CB6F8
mov	[list+4], prev
cmp	[list+14h], ecx
jnz	short loc_641CB6FD
nop
mov	dword ptr [list+14h], 0
cmp	[list+18h], ecx
jnz	short loc_641CB702
mov	dword ptr [list+18h], 0
jmp	short loc_641CB702
align 4
movzx	edi, word ptr [list+0Eh]
mov	ebx, [ecx+edi]
mov	[esi+edi], ebx
jmp	short loc_641CB729
mov	esi, [ebp+var_2C]
mov	ebx, [esi]
mov	[list+8], ebx
jmp	short loc_641CB72E
mov	[ebp+var_2C], list
movzx	prev, word ptr [list+0Ch]
xor	prev, prev
jmp	short loc_641CB717
align 4
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_silc_free
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641CB7D2
test	len, len
jz	short loc_641CB7D2
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641CB7DB
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	len, [eax+len]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
xor	sb, sb
jmp	short loc_641CB7D2
align 10h
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+packet]
mov	ebx, [ebp+callback_context]
test	byte ptr [ebx+3Ah], 1
jnz	short loc_641CB860
mov	edx, [callback_context_0+1Ch]
test	edx, edx
jz	short loc_641CB860
mov	eax, [callback_context_0+8]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [callback_context_0+24h]
test	eax, eax
jz	short loc_641CB86C
movzx	eax, word ptr [callback_context_0+30h]
mov	edx, [callback_context_0+28h]
mov	[edx+eax], packet_0
test	byte ptr [callback_context_0+34h], 1
jz	short loc_641CB827
movzx	edx, word ptr [callback_context_0+32h]
mov	ecx, [callback_context_0+28h]
mov	[packet_0+edx],	ecx
mov	[callback_context_0+28h], packet_0
mov	dword ptr [packet_0+eax], 0
add	dword ptr [callback_context_0+34h], 4
mov	eax, [callback_context_0+8]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [callback_context_0+20h]
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	[esp], callback_context_0
call	dword ptr [callback_context_0+1Ch]
mov	al, 1
add	esp, 10h
pop	callback_context_0
pop	packet_0
leave
retn
align 10h
			
xor	eax, eax
add	esp, 10h
pop	callback_context_0
pop	packet_0
leave
retn
align 4
mov	[callback_context_0+24h], packet_0
movzx	eax, word ptr [callback_context_0+30h]
jmp	short loc_641CB817
align 4
public _silc_packet_free
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+packet]
mov	esi, [ebx+4]
mov	dword ptr [ebx+4], 0
mov	dword ptr [ebx+1Ch], 0
mov	dword ptr [ebx+18h], 0
mov	eax, [ebx+8]
mov	[ebx+10h], eax
mov	[ebx+0Ch], eax
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [stream+4]
mov	edx, [eax+4]
mov	ecx, [edx+28h]
test	ecx, ecx
jz	short loc_641CB928
movzx	ecx, word ptr [edx+34h]
mov	edx, [edx+2Ch]
mov	[edx+ecx], packet_0
mov	edx, [eax+4]
test	byte ptr [edx+38h], 1
jz	short loc_641CB8DF
movzx	ecx, word ptr [edx+36h]
mov	edi, [edx+2Ch]
mov	[packet_0+ecx],	edi
mov	[edx+2Ch], packet_0
mov	eax, [eax+4]
movzx	edx, word ptr [eax+34h]
mov	dword ptr [packet_0+edx], 0
add	dword ptr [eax+38h], 4
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	edx, [eax+38h]
and	edx, 0FFFFFFFCh
cmp	edx, 4
jnz	short loc_641CB915
mov	edx, [eax+28h]
mov	[eax+30h], edx
and	byte ptr [eax+38h], 0FDh
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[ebp+packet], eax
add	esp, 1Ch
pop	packet_0
pop	stream
pop	edi
leave
jmp	_silc_mutex_unlock
align 4
mov	[edx+28h], packet_0
jmp	short loc_641CB8CC
align 10h
public _silc_packet_get_keys
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+stream]
mov	edi, [ebp+send_hmac]
mov	esi, [ebp+receive_hmac]
mov	ecx, [ebx+30h]
test	ecx, ecx
jz	short loc_641CB99C
			
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	edx, [ebp+send_key]
test	edx, edx
jz	short loc_641CB963
mov	eax, [stream_0+30h]
mov	edx, [ebp+send_key]
mov	[edx], eax
mov	eax, [ebp+receive_key]
test	eax, eax
jz	short loc_641CB972
mov	eax, [stream_0+40h]
mov	edx, [ebp+receive_key]
mov	[edx], eax
test	send_hmac_0, send_hmac_0
jz	short loc_641CB97B
mov	eax, [stream_0+38h]
mov	[send_hmac_0], eax
test	receive_hmac_0,	receive_hmac_0
jz	short loc_641CB984
mov	eax, [stream_0+48h]
mov	[receive_hmac_0], eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 1Ch
pop	stream_0
pop	receive_hmac_0
pop	send_hmac_0
leave
retn
align 4
mov	edx, [stream_0+40h]
test	edx, edx
jnz	short loc_641CB949
mov	eax, [stream_0+38h]
test	eax, eax
jnz	short loc_641CB949
mov	ecx, [stream_0+48h]
test	ecx, ecx
jnz	short loc_641CB949
xor	eax, eax
jmp	short loc_641CB991
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, packet
mov	ebx, [packet+4]
mov	packet,	[stream+10h]
test	eax, eax
jnz	short loc_641CBA22
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	[esp+8], packet
mov	[esp+4], stream
mov	[esp], eax
call	dword ptr [edx]
test	al, al
jz	loc_641CBBA8
			
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	al, [stream+67h]
shr	al, 1
xor	eax, 1
and	eax, 1
add	esp, 3Ch
pop	stream
pop	packet
pop	p
leave
retn
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	[ebp+default_sent], 0
			
mov	pt, [stream+10h]
mov	edx, [eax+14h]
mov	[eax+18h], edx
mov	edx, [eax+8]
test	edx, edx
jz	loc_641CBB41
test	byte ptr [eax+10h], 2
jz	loc_641CBB35
movzx	ecx, word ptr [eax+0Eh]
mov	ecx, [edx+ecx]
mov	[eax+8], ecx
mov	[eax+14h], edx
mov	p, [edx]
test	p, p
jz	loc_641CBB48
cmp	[ebp+default_sent], 0
jnz	loc_641CBB2C
mov	eax, [p+0Ch]
test	eax, eax
jle	short loc_641CBAEA
mov	eax, [p]
test	pt, pt
jz	short loc_641CBAA3
mov	dl, [pt]
test	dl, dl
jz	short loc_641CBA3D
mov	cl, [packet+22h]
cmp	dl, cl
jz	short loc_641CBAA3
xchg	ax, ax
inc	pt
mov	dl, [pt]
test	dl, dl
jz	short loc_641CBA3D
cmp	cl, dl
jnz	short loc_641CBA98
			
mov	pt, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [p+4]
mov	edx, [stream+18h]
mov	[esp+10h], edx
mov	edx, [p+8]
mov	[esp+0Ch], edx
mov	[esp+8], packet
mov	[esp+4], stream
mov	edx, [stream+4]
mov	edx, [edx+4]
mov	[esp], edx
call	dword ptr [eax]
test	al, al
jnz	loc_641CBA04
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
jmp	loc_641CBA3D
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	[esp+8], packet
mov	[esp+4], stream
mov	[esp], eax
call	dword ptr [edx]
test	al, al
jnz	loc_641CBA04
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[ebp+default_sent], 1
jmp	loc_641CBA83
movzx	ecx, word ptr [eax+0Ch]
mov	ecx, [edx+ecx]
jmp	loc_641CBA62
mov	dword ptr [eax+14h], 0
cmp	[ebp+default_sent], 0
jnz	short loc_641CBB90
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	[esp+8], packet
mov	[esp+4], stream
mov	[esp], eax
call	dword ptr [edx]
test	al, al
jnz	loc_641CBA04
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[esp], packet	
call	_silc_packet_free
mov	al, [stream+67h]
shr	al, 1
xor	eax, 1
and	eax, 1
jmp	loc_641CBA1A
mov	[esp], packet	
call	_silc_packet_free
jmp	loc_641CBA04
align 4
public _silc_packet_get_context
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+stream]
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	esi, [ebx+18h]
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, context
add	esp, 10h
pop	ebx
pop	context
leave
retn
align 4
public _silc_packet_set_context
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+stream]
mov	esi, [ebp+stream_context]
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[ebx+18h], esi
mov	eax, [ebx+0Ch]
mov	[ebp+stream], eax
add	esp, 10h
pop	ebx
pop	esi
leave
jmp	_silc_mutex_unlock
align 4
public _silc_packet_wait
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+waiter]
mov	esi, [ebp+timeout]
mov	eax, [ebx]
mov	[esp], eax	
call	_silc_mutex_lock
test	dword ptr [ebx+18h], 0FFFFFFFCh
jnz	loc_641CBCF3
xchg	ax, ax
cmp	byte ptr [waiter_0+38h], 0
js	loc_641CBCFC
mov	[esp+8], timeout_0 
mov	eax, [waiter_0]
mov	[esp+4], eax	
mov	eax, [waiter_0+4]
mov	[esp], eax	
call	_silc_cond_timedwait
test	dword ptr [waiter_0+18h], 0FFFFFFFCh
jz	short loc_641CBC40
mov	[ebp+var_29], al
mov	edx, [waiter_0+8]
mov	[waiter_0+10h],	prev
and	byte ptr [waiter_0+18h], 0FDh
test	prev, prev
jz	short loc_641CBC83
movzx	ecx, word ptr [waiter_0+14h]
mov	ecx, [prev+ecx]
mov	[waiter_0+10h],	ecx
mov	timeout_0, prev
mov	ret, [ebp+return_packet]
mov	[eax], prev
mov	ecx, prev
test	prev, prev
jz	short loc_641CBCBB
lea	edi, [waiter_0+8]
movzx	esi, word ptr [waiter_0+14h]
xor	ecx, ecx
mov	esi, [edx+esi]
mov	[p], esi
test	esi, esi
jz	short loc_641CBCA8
test	byte ptr [waiter_0+18h], 1
jnz	short loc_641CBCDB
			
mov	edx, [waiter_0+10h]
mov	eax, [ebp+return_packet]
cmp	edx, [eax]
jz	short loc_641CBCEC
sub	dword ptr [waiter_0+18h], 4
mov	eax, [ebp+return_packet]
mov	esi, [eax]
cmp	[waiter_0+0Ch],	esi
jz	short loc_641CBCE7
mov	edx, [waiter_0]
mov	[esp], edx	
call	_silc_mutex_unlock
xor	eax, eax
cmp	[ebp+var_29], 1
setz	al
add	esp, 3Ch
pop	waiter_0
pop	esi
pop	p
leave
retn
movzx	eax, word ptr [waiter_0+16h]
mov	prev, [prev+eax]
mov	[esi+eax], edx
jmp	short loc_641CBCA8
mov	[waiter_0+0Ch],	prev
jmp	short loc_641CBCC0
mov	edx, [p]
mov	[waiter_0+10h],	edx
jmp	short loc_641CBCB2
mov	[ebp+var_29], 0
jmp	loc_641CBC6B
mov	eax, [waiter_0]
mov	[esp], eax	
call	_silc_mutex_unlock
or	eax, 0FFFFFFFFh
jmp	short loc_641CBCD3
align 4
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	eax, [ebp+packet]
mov	ebx, [ebp+callback_context]
mov	cl, [ebx+38h]
test	cl, 7Ch
jz	short loc_641CBD56
mov	esi, 3
and	esi, ecx
mov	dl, [packet_0+20h]
shr	dl, 6
mov	[ebp+var_29], dl
mov	edx, esi
cmp	dl, [ebp+var_29]
jz	short loc_641CBD44
xor	packet_0, packet_0
add	esp, 3Ch
pop	callback_context_0
pop	esi
pop	edi
leave
retn
lea	esi, [callback_context_0+1Ch]
mov	edi, [packet_0+18h]
shr	cl, 2
and	ecx, 1Fh
cmp	ecx, ecx
repe cmpsb
jnz	short loc_641CBD3A
mov	edx, [callback_context_0]
mov	[esp], edx	
mov	[ebp+var_1C], packet_0
call	_silc_mutex_lock
cmp	byte ptr [callback_context_0+38h], 0
mov	eax, [ebp+var_1C]
js	short loc_641CBDC5
mov	edx, [callback_context_0+8]
test	edx, edx
jz	short loc_641CBDBC
movzx	edx, word ptr [callback_context_0+14h]
mov	ecx, [callback_context_0+0Ch]
mov	[ecx+edx], eax
test	byte ptr [callback_context_0+18h], 1
jz	short loc_641CBD8D
movzx	ecx, word ptr [callback_context_0+16h]
mov	esi, [callback_context_0+0Ch]
mov	[packet_0+ecx],	esi
mov	[callback_context_0+0Ch], packet_0
mov	dword ptr [packet_0+edx], 0
add	dword ptr [callback_context_0+18h], 4
mov	packet_0, [callback_context_0+4]
mov	[esp], eax	
call	_silc_cond_broadcast
mov	eax, [callback_context_0]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 3Ch
pop	callback_context_0
pop	esi
pop	edi
leave
retn
align 4
mov	[callback_context_0+8],	eax
movzx	edx, word ptr [callback_context_0+14h]
jmp	short loc_641CBD7D
mov	eax, [callback_context_0]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
jmp	loc_641CBD3C
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, sb
mov	esi, newsize
test	sb, sb
jz	short loc_641CBE3C
mov	edi, [sb]
mov	sb, [sb+0Ch]
sub	eax, edi
cmp	edx, eax
jbe	short loc_641CBE2F
mov	newsize, [sb+4]
mov	eax, [sb+8]
mov	[ebp+var_1C], eax
mov	[esp+4], newsize 
mov	[esp], edi	
mov	[ebp+var_20], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_20]
jz	short loc_641CBE4A
mov	[sb], eax
mov	ecx, edx
sub	ecx, edi
lea	edi, [eax+ecx]
mov	[sb+4],	edi
mov	ecx, [ebp+var_1C]
sub	ecx, edx
add	edi, ecx
mov	[sb+8],	edi
lea	newsize, [eax+newsize]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 2Ch
pop	sb
pop	newsize
pop	edi
leave
retn
align 4
mov	sb, edx
add	esp, 2Ch
pop	sb
pop	newsize
pop	edi
leave
jmp	_silc_buffer_alloc_1
xor	sb, sb
jmp	short loc_641CBE2F
align 10h
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
test	eax, eax
jz	short locret_641CBEA1
mov	dword ptr [list+18h], 0
mov	dword ptr [list+14h], 0
mov	edx, [list+10h]
and	edx, 3
mov	[list+10h], edx
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, list
mov	esi, context
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641CBEE8
mov	[e], context
mov	ecx, [list]
test	ecx, ecx
jz	short loc_641CBEFC
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], e
test	byte ptr [list+10h], 1
jnz	short loc_641CBEF0
mov	[list+4], e
mov	dword ptr [e+edx], 0
add	dword ptr [list+10h], 4
mov	al, 1
add	esp, 10h
pop	list
pop	context
leave
retn
align 10h
movzx	ecx, word ptr [list+0Eh]
mov	context, [list+4]
mov	[e+ecx], esi
jmp	short loc_641CBED8
mov	[list],	e
movzx	edx, word ptr [list+0Ch]
jmp	short loc_641CBED2
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	[ebp+var_20], stream
mov	edi, [ebp+ap]
test	callbacks, callbacks
jz	loc_641CC050
mov	ebx, [callbacks]
test	ebx, ebx
jz	loc_641CC050
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
mov	[ebp+var_24], callbacks
mov	[ebp+var_28], callback_context
call	_silc_calloc
mov	esi, eax
test	eax, eax
mov	edx, [ebp+var_24]
mov	ecx, [ebp+var_28]
jz	loc_641CC050
mov	eax, [ebp+priority]
mov	[esi+0Ch], eax
mov	[esi+4], edx
mov	[esi+8], ecx
mov	callbacks, [ebp+var_20]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	ecx, [ebp+var_20]
mov	eax, [ecx+10h]
test	eax, eax
jz	loc_641CC14B
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	ecx, [ebp+var_20]
mov	ebx, [ecx+10h]
jmp	short loc_641CBFB7
align 4
movzx	edx, word ptr [ebx+0Eh]
mov	edx, [eax+edx]
mov	[ebx+8], edx
mov	[ebx+14h], eax
mov	eax, [eax]
test	e, e
jz	short loc_641CBFDB
mov	edx, [esi+0Ch]
cmp	edx, [e+0Ch]
jg	loc_641CC05C
mov	e, [ebx+14h]
mov	[ebx+18h], eax
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641CBFD4
test	byte ptr [ebx+10h], 2
jnz	short loc_641CBF98
movzx	edx, word ptr [ebx+0Ch]
mov	edx, [eax+edx]
jmp	short loc_641CBF9F
align 4
mov	dword ptr [ebx+14h], 0
mov	edx, esi
mov	e, ebx		
call	_silc_dlist_add
			
mov	edx, [ap_0]
test	packet_type, packet_type
jz	loc_641CC0C8
cmp	packet_type, 0FFFFFFFFh
jz	loc_641CC0C8
mov	ebx, 1
mov	[ebp+var_1C], ap_0
mov	ap_0, packet_type
jmp	short loc_641CC022
align 4
mov	ecx, packet_type
mov	[eax+i-2], cl
mov	eax, [ebp+var_1C]
mov	edi, [eax+i*4-4]
test	packet_type, packet_type
jz	loc_641CC0D0
cmp	packet_type, 0FFFFFFFFh
jz	loc_641CC0D0
inc	i
mov	[esp+4], i	
mov	eax, [esi]
mov	[esp], eax	
call	_silc_realloc
mov	[esi], eax
test	eax, eax
jnz	short loc_641CC004
mov	edx, [ebp+var_20]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
add	esp, 3Ch
pop	i
pop	esi
pop	packet_type
leave
retn
align 10h
			
xor	stream,	stream
add	esp, 3Ch
pop	ebx
pop	esi
pop	ap_0
leave
retn
align 4
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	loc_641CBFE4
mov	[eax], esi
mov	edx, [ebx+18h]
test	edx, edx
jz	loc_641CC100
movzx	ecx, word ptr [ebx+0Ch]
mov	[ebp+var_2C], ecx
mov	edx, [edx+ecx]
mov	[eax+ecx], edx
mov	edx, [ebx+18h]
mov	[edx+ecx], eax
test	byte ptr [ebx+10h], 1
jz	short loc_641CC0B3
movzx	edx, word ptr [ebx+0Eh]
mov	[ebp+var_1C], edx
mov	ecx, [ebx+18h]
mov	[eax+edx], ecx
mov	ecx, [ebp+var_2C]
mov	edx, [eax+ecx]
test	edx, edx
jz	short loc_641CC0B3
mov	ecx, [ebp+var_1C]
mov	[edx+ecx], eax
			
mov	edx, [ebx+4]
cmp	edx, [ebx+18h]
jz	loc_641CC143
			
add	dword ptr [ebx+10h], 4
jmp	loc_641CBFE4
			
mov	ebx, 1
lea	esi, [esi+0]
			
mov	eax, [esi]
test	eax, eax
jz	short loc_641CC0DB
mov	byte ptr [eax+i-1], 0
mov	edx, [ebp+var_20]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	ecx, [ebp+var_20]
mov	eax, [ecx+60h]
mov	eax, [ecx+60h]
inc	eax
mov	[ecx+60h], eax
mov	al, 1
add	esp, 3Ch
pop	i
pop	esi
pop	packet_type
leave
retn
mov	ecx, [ebx]
test	ecx, ecx
jz	short loc_641CC17D
movzx	edx, word ptr [ebx+0Ch]
mov	[eax+edx], ecx
mov	dl, [ebx+10h]
test	dl, 1
jz	short loc_641CC125
mov	ecx, [ebx]
test	ecx, ecx
jz	short loc_641CC125
movzx	edx, word ptr [ebx+0Eh]
mov	[ecx+edx], eax
mov	dl, [ebx+10h]
			
mov	ecx, [ebx+4]
test	ecx, ecx
jz	short loc_641CC178
mov	[ebx], eax
and	edx, 1
jz	short loc_641CC0BF
movzx	edx, word ptr [ebx+0Eh]
mov	dword ptr [eax+edx], 0
jmp	loc_641CC0BF
mov	[ebx+4], eax
jmp	loc_641CC0BF
call	_silc_dlist_init
mov	edx, [ebp+var_20]
mov	[edx+10h], eax
test	eax, eax
jnz	loc_641CBF77
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	[esp], esi	
call	_silc_free
xor	eax, eax
jmp	loc_641CC052
mov	[ebx+4], eax
jmp	short loc_641CC12C
movzx	edx, word ptr [ebx+0Ch]
mov	dword ptr [eax+edx], 0
jmp	short loc_641CC10D
align 4
public _silc_packet_wait_init
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	esi, [ebp+source_id]
mov	dword ptr [esp+4], 3Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641CC2A1
mov	[esp], pw	
call	_silc_mutex_alloc
test	al, al
jz	loc_641CC299
lea	eax, [pw+4]
mov	[esp], eax	
call	_silc_cond_alloc
test	al, al
jz	loc_641CC28F
lea	eax, [ebp+ap]
mov	[esp+4], eax	
mov	dword ptr [esp], 989680h 
mov	ecx, pw		
mov	edx, offset _silc_packet_wait_cbs 
mov	eax, [ebp+stream] 
call	_silc_packet_stream_link_va
test	al, al
jz	loc_641CC284
mov	ret, [pw+18h]
and	eax, 3
mov	[pw+18h], eax
mov	word ptr [pw+14h], 0
mov	word ptr [pw+16h], 0
mov	byte ptr [pw+18h], 0
mov	dword ptr [pw+10h], 0
mov	dword ptr [pw+0Ch], 0
mov	dword ptr [pw+8], 0
test	source_id_0, source_id_0
jz	short loc_641CC278
movzx	eax, word ptr [source_id_0+1Eh]
lea	edx, [ebp+id_len]
mov	[esp+10h], edx	
mov	dword ptr [esp+0Ch], 1Ch 
lea	edx, [pw+1Ch]
mov	[esp+8], edx	
mov	[esp+4], eax	
mov	[esp], source_id_0 
call	_silc_id_id2str
mov	dx, [source_id_0+1Eh]
and	edx, 3
mov	al, [pw+38h]
and	eax, 0FFFFFFFCh
or	eax, edx
mov	[pw+38h], al
mov	edx, [ebp+id_len]
and	edx, 1Fh
shl	edx, 2
and	eax, 0FFFFFF83h
or	eax, edx
mov	[pw+38h], al
mov	eax, pw
add	esp, 30h
pop	pw
pop	source_id_0
leave
retn
align 4
mov	ret, [pw+4]
mov	[esp], eax	
call	_silc_cond_free
mov	eax, [pw]
mov	[esp], eax	
call	_silc_mutex_free
mov	[esp], pw	
call	_silc_free
xor	eax, eax
add	esp, 30h
pop	pw
pop	source_id_0
leave
retn
align 4
public _silc_packet_stream_link
			
push	ebp
mov	ebp, esp
sub	esp, 18h
lea	ret, [ebp+ap]
mov	[esp+4], ret	
mov	ret, [ebp+priority]
mov	[esp], ret	
mov	ecx, [ebp+callback_context] 
mov	edx, [ebp+callbacks] 
mov	ret, [ebp+stream] 
call	_silc_packet_stream_link_va
leave
retn
align 10h
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1BCh
mov	ebx, stream
mov	[ebp+var_ED], dl
mov	[ebp+var_108], cl
mov	stream,	[ebp+src_id_type]
mov	[ebp+var_10A], ax
mov	type, [ebp+dst_id_type]
mov	[ebp+var_10C], dx
mov	edi, [ebp+cipher]
test	edi, edi
jz	loc_641CC78E
mov	flags, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_get_block_len
mov	[ebp+var_DC], eax
mov	esi, [ebp+dst_id_len]
add	esi, [ebp+src_id_len]
mov	[ebp+enclen], esi
mov	eax, [ebp+data_len]
add	eax, esi
lea	edx, [eax+0Ah]
cmp	edx, 0FFFFh
jbe	short loc_641CC340
add	[ebp+data_len],	0FFF5h
sub	[ebp+data_len],	eax
mov	flags, [ebp+src_id_len]
mov	edx, [ebp+dst_id_len]
lea	eax, [ecx+edx+0Ah]
add	eax, [ebp+data_len]
mov	[ebp+truelen], eax
mov	esi, [ebp+cipher]
test	esi, esi
jz	short loc_641CC36E
mov	esi, [ebp+cipher]
mov	[esp], esi	
call	_silc_cipher_get_mode
cmp	eax, 3
jz	loc_641CC7D7
test	byte ptr [stream+67h], 4
jnz	loc_641CC6A0
xor	eax, eax
mov	[ebp+psnlen], 0
mov	[ebp+ivlen], 0
			
cmp	[ebp+var_ED], 9
jz	loc_641CC6F1
cmp	[ebp+var_ED], 7
jz	loc_641CC79D
movzx	edx, [ebp+var_108]
and	edx, 20h
jz	loc_641CC72A
mov	block_len, [ebp+psnlen]
add	ecx, [ebp+truelen]
mov	edx, [ebp+var_DC]
test	edx, edx
jz	loc_641CC8B8
mov	ctr, ecx
cdq
idiv	[ebp+var_DC]
mov	esi, 80h
sub	padlen,	edx
			
add	ecx, padlen
mov	[ebp+enclen], ecx
			
test	padlen,	padlen
jle	short loc_641CC40D
xor	edi, edi
mov	ctr, [stream+4]
mov	eax, [eax+4]
mov	eax, [eax+4]
mov	[esp], eax	
call	_silc_rng_get_byte_fast
mov	[ebp+i+tmppad],	al
inc	i
cmp	padlen,	i
jg	short loc_641CC3F0
mov	ctr, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	edx, [ebp+hmac]
test	edx, edx
jz	loc_641CC787
mov	eax, [ebp+hmac]
mov	[esp], eax	
call	_silc_hmac_len
mov	i, eax
mov	ecx, [ebp+ivlen]
add	ecx, [ebp+psnlen]
add	ecx, [ebp+truelen]
add	ecx, padlen
lea	ecx, [edi+ecx]
mov	edx, [stream+28h]
mov	[ebp+var_11C], edx
mov	eax, [stream+24h]
sub	edx, eax
cmp	ecx, edx
ja	loc_641CCA5C
lea	edx, [eax+ecx]
mov	[stream+24h], edx
mov	[ebp+packet.head], eax
mov	[ebp+packet.data], eax
mov	[ebp+packet.end], edx
mov	[ebp+packet.tail], edx
sub	edx, edi
cmp	edx, eax
jb	short loc_641CC478
mov	[ebp+packet.tail], edx
mov	eax, [stream+58h]
mov	edx, eax
shr	edx, 18h
mov	[ebp+psn], dl
mov	edx, eax
shr	edx, 10h
mov	[ebp+psn+1], dl
mov	edx, eax
shr	edx, 8
mov	[ebp+psn+2], dl
mov	[ebp+psn+3], al
mov	dword ptr [esp+94h], 1Dh
mov	eax, [ebp+data_len]
mov	[esp+90h], eax
mov	eax, [ebp+data]
mov	[esp+8Ch], eax
mov	dword ptr [esp+88h], 0Ch
mov	[esp+84h], padlen
lea	eax, [ebp+tmppad]
mov	[esp+80h], eax
mov	dword ptr [esp+7Ch], 0Ch
mov	edx, [ebp+dst_id_len]
mov	[esp+78h], edx
mov	eax, [ebp+dst_id]
mov	[esp+74h], eax
mov	dword ptr [esp+70h], 0Ch
movzx	eax, [ebp+var_10C]
mov	[esp+6Ch], dst_id_type_0
mov	dword ptr [esp+68h], 1
mov	ecx, [ebp+src_id_len]
mov	[esp+64h], ecx
mov	dst_id_type_0, [ebp+src_id]
mov	[esp+60h], eax
mov	dword ptr [esp+5Ch], 0Ch
movzx	eax, [ebp+var_10A]
mov	[esp+58h], src_id_type_0
mov	dword ptr [esp+54h], 1
mov	[esp+50h], edx
mov	dword ptr [esp+4Ch], 1
mov	[esp+48h], ecx
mov	dword ptr [esp+44h], 1
mov	dword ptr [esp+40h], 0
mov	dword ptr [esp+3Ch], 1
mov	[esp+38h], padlen
mov	dword ptr [esp+34h], 1
movzx	src_id_type_0, [ebp+var_ED]
mov	[esp+30h], type
mov	dword ptr [esp+2Ch], 1
mov	al, [ebp+var_108]
and	eax, 0DFh
mov	[esp+28h], eax
mov	dword ptr [esp+24h], 1
mov	padlen,	[ebp+truelen]
mov	[esp+20h], esi
mov	dword ptr [esp+1Ch], 3
mov	eax, [ebp+psnlen]
mov	[esp+18h], eax
lea	esi, [ebp+psn]
mov	[esp+14h], esi
mov	dword ptr [esp+10h], 0Ch
mov	edx, [ebp+ivlen]
mov	[esp+0Ch], edx
lea	eax, [ebp+iv]
mov	[esp+8], eax
mov	dword ptr [esp+4], 0Ch
lea	eax, [ebp+packet]
mov	[esp], eax	
call	_silc_buffer_format
test	eax, eax
js	loc_641CCA4A
mov	i, [ebp+cipher]
test	eax, eax
jz	short loc_641CC633
mov	dword ptr [esp+4], 0 
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_set_iv
mov	eax, [ebp+ivlen]
add	eax, [ebp+packet.data]
mov	dword ptr [esp+10h], 0 
mov	edx, [ebp+enclen]
mov	[esp+0Ch], edx	
mov	[esp+8], eax	
mov	[esp+4], eax	
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_encrypt
test	al, al
jz	loc_641CCA2E
mov	edi, [ebp+hmac]
test	edi, edi
jz	short loc_641CC693
mov	eax, [ebp+hmac]
mov	[esp], eax	
call	_silc_hmac_init
mov	dword ptr [esp+8], 4 
mov	[esp+4], esi	
mov	edx, [ebp+hmac]
mov	[esp], edx	
call	_silc_hmac_update
mov	edx, [ebp+packet.data]
mov	eax, [ebp+packet.tail]
sub	eax, edx
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	ecx, [ebp+hmac]
mov	[esp], ecx	
call	_silc_hmac_update
lea	eax, [ebp+mac_len]
mov	[esp+8], eax	
mov	eax, [ebp+packet.tail]
mov	[esp+4], eax	
mov	esi, [ebp+hmac]
mov	[esp], esi	
call	_silc_hmac_final
inc	dword ptr [stream+58h]
mov	al, 1
add	esp, 1BCh
pop	stream
pop	padlen
pop	edi
leave
retn
mov	ecx, [ebp+cipher]
test	ecx, ecx
jz	loc_641CC378
mov	eax, [ebp+var_DC]
inc	eax
mov	[ebp+ivlen], eax
mov	al, [stream+64h]
mov	[ebp+iv], al
mov	edx, [ebp+cipher]
mov	[esp], edx	
call	_silc_cipher_get_iv
mov	esi, eax
lea	eax, [ebp+iv+1]
mov	edi, eax
mov	ecx, [ebp+var_DC]
rep movsb
xor	eax, eax
mov	[ebp+psnlen], 4
cmp	[ebp+var_ED], 9
jnz	loc_641CC39B
movzx	edx, [ebp+var_108]
test	dl, 1
jz	loc_641CC3AF
test	al, al
jz	loc_641CC9CA
mov	ctr, [ebp+psnlen]
mov	esi, [ebp+enclen]
lea	block_len, [eax+esi+0Ah]
xor	eax, eax
xor	esi, esi
			
add	ecx, eax
mov	[ebp+enclen], ecx
jmp	loc_641CC3EA
test	al, al
jnz	loc_641CC8A5
mov	block_len, [ebp+psnlen]
add	ecx, [ebp+truelen]
mov	ctr, [ebp+var_DC]
test	eax, eax
jnz	loc_641CC973
mov	edx, 10h
			
mov	ctr, ecx
mov	esi, block_len
cdq
idiv	esi
mov	esi, 10h
sub	padlen,	edx
cmp	padlen,	7
jg	loc_641CC3E2
mov	edi, [ebp+var_DC]
test	edi, edi
jnz	short loc_641CC77C
mov	[ebp+var_DC], 10h
add	padlen,	[ebp+var_DC]
jmp	loc_641CC3E2
xor	i, i
jmp	loc_641CC430
mov	[ebp+var_DC], 0
jmp	loc_641CC31A
mov	edx, [stream+4]
mov	edx, [edx+4]
test	byte ptr [edx+40h], 1
jnz	loc_641CC893
test	al, al
jz	loc_641CC97E
mov	edx, [ebp+psnlen]
mov	ctr, [ebp+enclen]
lea	block_len, [edx+eax+0Ah]
xor	eax, eax
xor	esi, esi
			
lea	ecx, [eax+ecx]
mov	[ebp+enclen], ecx
jmp	loc_641CC3EA
mov	[esp], esi	
call	_silc_cipher_get_iv
mov	esi, eax
mov	dword ptr [eax+0Ch], 0
test	byte ptr [stream+67h], 4
jnz	loc_641CC8E2
movzx	eax, byte ptr [eax+4]
shl	eax, 18h
movzx	edx, byte ptr [esi+5]
shl	edx, 10h
or	eax, edx
movzx	edx, byte ptr [esi+7]
or	eax, edx
movzx	edx, byte ptr [esi+6]
shl	edx, 8
or	eax, edx
movzx	ecx, byte ptr [esi+8]
shl	ecx, 18h
movzx	edx, byte ptr [esi+9]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [esi+0Bh]
or	ecx, edx
movzx	edx, byte ptr [esi+0Ah]
shl	edx, 8
or	ecx, edx
add	ecx, 1
adc	eax, 0
mov	edx, eax
shr	edx, 18h
mov	[esi+4], dl
mov	edx, eax
shr	edx, 10h
mov	[esi+5], dl
mov	edx, eax
shr	edx, 8
mov	[esi+6], dl
mov	[esi+7], al
mov	eax, ecx
shr	eax, 18h
mov	[esi+8], al
mov	eax, ecx
shr	eax, 10h
mov	[esi+9], al
mov	eax, ecx
shr	eax, 8
mov	[esi+0Ah], al
mov	[esi+0Bh], cl
test	byte ptr [stream+67h], 4
jz	short loc_641CC8C7
mov	al, [stream+64h]
mov	[ebp+iv], al
mov	al, 1
mov	[ebp+psnlen], 4
mov	[ebp+ivlen], 9
jmp	loc_641CC38E
test	byte ptr [stream+67h], 1
jz	loc_641CC7AD
test	al, al
jz	loc_641CC955
mov	block_len, [ebp+psnlen]
add	ecx, [ebp+truelen]
xor	esi, esi
jmp	loc_641CC3E2
mov	[ebp+var_DC], 10h
jmp	loc_641CC3D2
mov	al, 1
mov	[ebp+psnlen], 0
mov	[ebp+ivlen], 0
jmp	loc_641CC38E
mov	eax, [stream+4]
mov	eax, [eax+4]
mov	eax, [eax+4]
mov	[esp], eax	
call	_silc_rng_get_byte_fast
mov	[ebp+iv+1], al
mov	dl, al
add	dl, [esi+4]
mov	[ebp+iv+2], dl
xor	edx, eax
mov	[ebp+iv+3], dl
lea	eax, [edx+eax]
mov	[ebp+iv+4], al
movzx	edx, byte ptr [esi+8]
shl	edx, 18h
movzx	eax, byte ptr [esi+9]
shl	eax, 10h
or	edx, eax
movzx	eax, byte ptr [esi+0Bh]
or	edx, eax
movzx	eax, byte ptr [esi+0Ah]
shl	eax, 8
or	edx, eax
inc	edx
mov	eax, edx
shr	eax, 18h
mov	[ebp+iv+5], al
mov	eax, edx
shr	eax, 10h
mov	[ebp+iv+6], al
mov	eax, edx
shr	eax, 8
mov	[ebp+iv+7], al
mov	[ebp+iv+8], dl
mov	eax, dword ptr [ebp+iv+1]
mov	[esi+4], eax
mov	eax, dword ptr [ebp+iv+5]
mov	[esi+8], eax
jmp	loc_641CC86C
mov	block_len, [ebp+psnlen]
add	ecx, [ebp+truelen]
mov	edx, 10h
cmp	[ebp+var_DC], 0
jz	loc_641CC751
mov	block_len, [ebp+var_DC]
jmp	loc_641CC751
mov	ctr, [ebp+psnlen]
mov	esi, [ebp+enclen]
lea	block_len, [eax+esi+0Ah]
mov	edx, [ebp+var_DC]
test	edx, edx
jnz	short loc_641CC99A
mov	dl, 10h
mov	eax, ecx
mov	esi, edx
xor	edx, edx
div	esi
mov	esi, 10h
sub	padlen,	edx
mov	eax, padlen
cmp	padlen,	7
jg	loc_641CC7C9
cmp	[ebp+var_DC], 0
jz	short loc_641CCA22
add	padlen,	[ebp+var_DC]
mov	eax, padlen
jmp	loc_641CC7C9
mov	esi, [ebp+psnlen]
mov	edx, [ebp+enclen]
lea	block_len, [esi+edx+0Ah]
mov	edx, [ebp+var_DC]
test	edx, edx
jz	short loc_641CCA1E
mov	ctr, ecx
mov	esi, edx
xor	edx, edx
div	esi
mov	esi, 10h
sub	padlen,	edx
mov	eax, padlen
cmp	padlen,	7
jg	loc_641CC71D
cmp	[ebp+var_DC], 0
jnz	short loc_641CCA11
mov	[ebp+var_DC], 10h
add	padlen,	[ebp+var_DC]
mov	eax, padlen
jmp	loc_641CC71D
mov	dl, 10h
jmp	short loc_641CC9E4
mov	[ebp+var_DC], 10h
jmp	short loc_641CC9BD
mov	dword ptr [esp], offset	aPacketEncrypti	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
			
mov	i, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
jmp	loc_641CC695
mov	edx, [ebp+var_11C]
sub	edx, [stream+1Ch]
lea	edx, [ecx+edx]	
lea	eax, [stream+1Ch] 
mov	[ebp+var_110], ecx
call	_silc_buffer_realloc
test	eax, eax
mov	ecx, [ebp+var_110]
jz	short loc_641CCA4A
mov	eax, [stream+24h]
mov	edx, [stream+28h]
sub	edx, eax
cmp	ecx, edx
jbe	loc_641CC45D
mov	[ebp+packet.head], 0
mov	[ebp+packet.data], 0
mov	[ebp+packet.end], ecx
mov	edx, ecx
sub	edx, edi
jmp	loc_641CC475
align 4
public _silc_packet_stream_is_udp
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+stream]
test	byte ptr [eax+67h], 8
jz	short loc_641CCAC0
mov	al, 1
leave
retn
align 10h
mov	dword ptr [esp+4], 0 
mov	stream_0, [stream_0+8]
mov	[esp], eax	
call	_silc_socket_stream_is_udp
test	al, al
setnz	al
leave
retn
align 4
public _silc_packet_send_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0ACh
mov	ebx, [ebp+stream]
mov	esi, [ebp+src_id]
mov	al, [ebp+type]
mov	[ebp+var_6D], al
mov	dl, [ebp+flags]
mov	[ebp+var_6E], dl
mov	edi, [ebp+src_id_type]
mov	eax, [ebp+dst_id_type]
mov	[ebp+var_6C], ax
test	esi, esi
jz	short loc_641CCB35
lea	eax, [ebp+src_id_len]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
lea	eax, [ebp+src_id_data]
mov	[esp+8], eax	
movzx	eax, di
mov	[esp+4], src_id_type_0 
mov	[esp], src_id_0	
call	_silc_id_id2str
test	al, al
jz	loc_641CCC07
mov	eax, [ebp+dst_id]
test	eax, eax
jz	short loc_641CCB6D
lea	eax, [ebp+dst_id_len]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
lea	eax, [ebp+dst_id_data]
mov	[esp+8], eax	
movzx	eax, [ebp+var_6C]
mov	[esp+4], dst_id_type_0 
mov	edx, [ebp+dst_id]
mov	[esp], edx	
call	_silc_id_id2str
test	al, al
jz	loc_641CCC07
mov	ecx, [ebp+hmac]
test	ecx, ecx
jz	loc_641CCCB8
mov	edx, [ebp+cipher]
test	edx, edx
jz	loc_641CCCC4
mov	eax, [ebp+dst_id]
test	eax, eax
jz	loc_641CCCD0
mov	eax, [ebp+dst_id_len]
mov	[ebp+var_78], eax
movzx	edx, [ebp+var_6C]
mov	dword ptr [ebp+var_6C],	edx
lea	eax, [ebp+dst_id_data]
mov	[ebp+var_74], eax
test	src_id_0, src_id_0
jz	loc_641CCD58
mov	edx, [ebp+src_id_len]
mov	[ebp+var_7C], edx
movzx	src_id_type_0, di
lea	src_id_0, [ebp+src_id_data]
movzx	ecx, [ebp+var_6E] 
movzx	edx, [ebp+var_6D] 
mov	eax, [ebp+hmac]
mov	[esp+24h], eax	
mov	eax, [ebp+cipher]
mov	[esp+20h], eax	
mov	eax, [ebp+data_len]
mov	[esp+1Ch], eax	
mov	eax, [ebp+data]
mov	[esp+18h], eax	
mov	eax, [ebp+var_78]
mov	[esp+14h], eax	
mov	eax, [ebp+var_74]
mov	[esp+10h], eax	
mov	eax, dword ptr [ebp+var_6C]
mov	[esp+0Ch], eax	
mov	eax, [ebp+var_7C]
mov	[esp+8], eax	
mov	[esp+4], esi	
mov	[esp], edi	
mov	eax, stream_0	
call	_silc_packet_send_raw
test	al, al
jnz	short loc_641CCC14
			
xor	ret, ret
			
add	esp, 0ACh
pop	stream_0
pop	esi
pop	edi
leave
retn
test	byte ptr [stream_0+67h], 8
jz	loc_641CCCF0
mov	ret, [stream_0+8]
mov	esi, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	loc_641CCCF3
cmp	[ebp+connected], 0
jnz	loc_641CCCF3
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641CCC98
align 10h
mov	eax, [stream_0+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641CCDF1
cmp	eax, 0FFFFFFFFh
jz	loc_641CCD40
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641CCC98
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	ecx, edx
jnz	short loc_641CCC50
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
jmp	loc_641CCC09
align 4
mov	eax, [stream_0+38h]
mov	[ebp+hmac], eax
jmp	loc_641CCB78
align 4
mov	edx, [stream_0+30h]
mov	[ebp+cipher], edx
jmp	loc_641CCB83
align 10h
mov	al, [stream_0+66h]
mov	edx, eax
and	edx, 3Fh
mov	[ebp+var_78], edx
mov	edx, [stream_0+54h]
mov	[ebp+var_74], edx
shr	al, 6
movzx	eax, al
mov	dword ptr [ebp+var_6C],	eax
jmp	loc_641CCBA1
align 10h
mov	esi, [stream_0+8]
			
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641CCD33
align 4
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	loc_641CCDB5
cmp	eax, 0FFFFFFFEh
jz	short loc_641CCD71
cmp	eax, 0FFFFFFFFh
jz	short loc_641CCD40
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641CCD33
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	edx, ecx
jnz	short loc_641CCCFC
mov	ret, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
			
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 0ACh
pop	stream_0
pop	esi
pop	edi
leave
retn
mov	dl, [stream_0+65h]
mov	eax, edx
and	eax, 3Fh
mov	[ebp+var_7C], eax
mov	src_id_0, [stream_0+50h]
shr	dl, 6
movzx	src_id_type_0, dl
jmp	loc_641CCBB5
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+8]
xor	eax, eax
jmp	loc_641CCC09
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+4]
xor	eax, eax
jmp	loc_641CCC09
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	short loc_641CCD85
public _silc_packet_get_ids
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+stream]
mov	edi, [ebp+src_id_set]
mov	edx, [ebp+src_id]
mov	esi, [ebp+dst_id]
test	edx, edx
jz	short loc_641CCE42
mov	eax, [stream_0+50h]
test	eax, eax
jz	short loc_641CCE50
mov	[esp+0Ch], src_id_0 
mov	cl, [stream_0+65h]
mov	dl, cl
shr	dl, 6
movzx	edx, dl
mov	[esp+8], edx	
and	ecx, 3Fh
mov	[esp+4], ecx	
mov	[esp], eax	
call	_silc_id_str2id2
test	al, al
jz	short loc_641CCEA0
mov	eax, [stream_0+50h]
test	eax, eax
jz	short loc_641CCE50
test	src_id_set_0, src_id_set_0
jz	short loc_641CCE50
mov	byte ptr [src_id_set_0], 1
			
test	dst_id_0, dst_id_0
jz	short loc_641CCE81
mov	eax, [stream_0+54h]
test	eax, eax
jz	short loc_641CCEAC
mov	[esp+0Ch], dst_id_0 
mov	dl, [stream_0+66h]
mov	cl, dl
shr	cl, 6
movzx	ecx, cl
mov	[esp+8], ecx	
and	edx, 3Fh
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_id_str2id2
test	al, al
jz	short loc_641CCEA0
mov	ecx, [stream_0+54h]
test	ecx, ecx
jz	short loc_641CCEAC
mov	edx, [ebp+dst_id_set]
test	edx, edx
jz	short loc_641CCEAC
mov	eax, [ebp+dst_id_set]
mov	byte ptr [eax],	1
mov	al, 1
add	esp, 1Ch
pop	stream_0
pop	dst_id_0
pop	src_id_set_0
leave
retn
align 10h
			
xor	eax, eax
add	esp, 1Ch
pop	stream_0
pop	dst_id_0
pop	src_id_set_0
leave
retn
align 4
			
mov	al, 1
add	esp, 1Ch
pop	stream_0
pop	dst_id_0
pop	src_id_set_0
leave
retn
align 4
public _silc_packet_set_ids
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+stream]
mov	edx, [ebp+src_id]
mov	edi, [ebp+src_id_type]
mov	eax, [ebp+dst_id_type]
mov	[ebp+var_4E], ax
test	edx, edx
jz	loc_641CCFEC
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
mov	[ebp+id], src_id_0
call	_silc_mutex_lock
lea	eax, [ebp+len]
mov	[ebp+ret_id_len], eax
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
lea	esi, [ebp+tmp]
mov	[esp+8], esi	
movzx	eax, di
mov	[esp+4], src_id_type_0 
mov	edx, [ebp+id]
mov	[esp], edx	
call	_silc_id_id2str
test	al, al
jz	loc_641CCFD4
mov	eax, [ebp+len]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_memdup
test	eax, eax
jz	loc_641CD00C
mov	edx, [stream_0+50h]
mov	[esp], edx	
mov	[ebp+id], tmp_id
call	_silc_free
mov	eax, [ebp+id]
mov	[stream_0+50h],	eax
mov	edx, [ebp+len]
and	edx, 3Fh
mov	tmp_id,	edi
shl	eax, 6
or	eax, edx
mov	[stream_0+65h],	al
mov	edx, [ebp+dst_id]
test	edx, edx
jz	short loc_641CCFBE
mov	eax, [ebp+ret_id_len]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 20h 
mov	[esp+8], esi	
movzx	eax, [ebp+var_4E]
mov	[esp+4], dst_id_type_0 
mov	dst_id_type_0, [ebp+dst_id]
mov	[esp], eax	
call	_silc_id_id2str
test	al, al
jz	loc_641CD00C
mov	eax, [ebp+len]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_memdup
mov	esi, eax
test	eax, eax
jz	short loc_641CD00C
mov	tmp_id,	[stream_0+54h]
mov	[esp], eax	
call	_silc_free
mov	[stream_0+54h],	tmp_id
mov	edx, [ebp+len]
and	edx, 3Fh
mov	al, byte ptr [ebp+var_4E]
shl	eax, 6
or	eax, edx
mov	[stream_0+66h],	al
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 6Ch
pop	stream_0
pop	tmp_id
pop	src_id_type_0
leave
retn
align 4
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
add	esp, 6Ch
pop	stream_0
pop	esi
pop	src_id_type_0
leave
retn
align 4
mov	ecx, [ebp+dst_id]
test	ecx, ecx
jz	short loc_641CCFDF
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
lea	eax, [ebp+len]
mov	[ebp+ret_id_len], eax
lea	esi, [ebp+tmp]
jmp	loc_641CCF5C
			
mov	tmp_id,	[stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
add	esp, 6Ch
pop	stream_0
pop	tmp_id
pop	src_id_type_0
leave
retn
align 4
public _silc_packet_stream_set_stream
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+ps]
mov	esi, [ebp+stream]
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641CD05A
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	edx, [ps_0+4]
mov	edx, [edx]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_stream_set_notifier
mov	[ps_0+8], stream_0
mov	[esp+0Ch], ps_0	
mov	dword ptr [esp+8], offset _silc_packet_stream_io 
mov	eax, [ps_0+4]
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], stream_0	
call	_silc_stream_set_notifier
add	esp, 10h
pop	ps_0
pop	stream_0
leave
retn
align 4
public _silc_packet_engine_stop
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+engine]
test	esi, esi
jz	loc_641CD118
mov	ebx, [engine_0+28h]
mov	[engine_0+30h],	ebx
and	byte ptr [engine_0+38h], 0FDh
jmp	short loc_641CD0E0
align 4
movzx	eax, word ptr [engine_0+36h]
mov	eax, [ebx+eax]
mov	[engine_0+30h],	eax
mov	eax, [ebx+8]
mov	dword ptr [ebx+14h], 0
mov	dword ptr [ebx+10h], 0
mov	dword ptr [ebx+0Ch], 0
mov	dword ptr [ebx+8], 0
mov	[esp], eax	
call	_silc_free
mov	[esp], ebx	
call	_silc_free
mov	ebx, [engine_0+30h]
test	ebx, ebx
jz	short loc_641CD0F4
test	byte ptr [engine_0+38h], 2
jnz	short loc_641CD0A4
movzx	eax, word ptr [engine_0+34h]
mov	eax, [ebx+eax]
jmp	short loc_641CD0AB
align 4
mov	eax, [engine_0+8]
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_free
mov	[ebp+engine], engine_0
add	esp, 10h
pop	ebx
pop	engine_0
leave
jmp	_silc_free
align 4
add	esp, 10h
pop	ebx
pop	engine_0
leave
retn
align 10h
public _silc_packet_engine_start
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+callbacks]
mov	dl, [ebp+router]
test	ebx, ebx
jnz	short loc_641CD140
			
xor	esi, esi
			
mov	eax, engine
add	esp, 3Ch
pop	packet
pop	engine
pop	i
leave
retn
align 10h
mov	edi, [callbacks_0]
test	edi, edi
jz	short loc_641CD133
mov	esi, [callbacks_0+4]
test	esi, esi
jz	short loc_641CD133
mov	ecx, [callbacks_0+8]
test	ecx, ecx
jz	short loc_641CD133
mov	dword ptr [esp+4], 44h 
mov	dword ptr [esp], 1 
mov	[ebp+var_1C], dl
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	short loc_641CD135
mov	dword ptr [esp+1Ch], 1 
mov	[esp+18h], engine 
mov	dword ptr [esp+14h], offset _silc_packet_engine_context_destr 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_ptr 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[engine+8], eax
test	eax, eax
mov	dl, [ebp+var_1C]
jz	loc_641CD2DA
mov	eax, [ebp+rng]
mov	[engine+4], eax
and	edx, 1
mov	al, [engine+40h]
and	eax, 0FFFFFFFEh
or	eax, edx
mov	[engine+40h], al
mov	[engine+0Ch], callbacks_0
mov	eax, [ebp+callback_context]
mov	[engine+10h], eax
mov	eax, [engine+24h]
and	eax, 3
mov	[engine+24h], eax
mov	word ptr [engine+20h], 0
mov	word ptr [engine+22h], 0
mov	byte ptr [engine+24h], 0
mov	dword ptr [engine+1Ch],	0
mov	dword ptr [engine+18h],	0
mov	dword ptr [engine+14h],	0
mov	[esp], engine	
call	_silc_mutex_alloc
mov	eax, [engine+38h]
and	eax, 3
mov	[engine+38h], eax
mov	word ptr [engine+34h], 0
mov	word ptr [engine+36h], 0
mov	byte ptr [engine+38h], 0
mov	dword ptr [engine+30h],	0
mov	dword ptr [engine+2Ch],	0
mov	dword ptr [engine+28h],	0
xor	edi, edi
mov	dword ptr [esp+4], 24h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	packet,	eax
test	eax, eax
jz	short loc_641CD2CB
mov	dword ptr [esp], 400h 
call	_silc_malloc
test	eax, eax
jz	short loc_641CD2CB
mov	[packet+8], tmp
lea	edx, [tmp+400h]
mov	[packet+14h], edx
mov	[packet+10h], tmp
mov	[packet+0Ch], tmp
mov	tmp, [engine+28h]
test	eax, eax
jz	short loc_641CD2C2
movzx	eax, word ptr [engine+34h]
mov	edx, [engine+2Ch]
mov	[edx+eax], packet
test	byte ptr [engine+38h], 1
jz	short loc_641CD29F
movzx	edx, word ptr [engine+36h]
mov	ecx, [engine+2Ch]
mov	[packet+edx], ecx
mov	[engine+2Ch], packet
mov	dword ptr [packet+eax],	0
add	dword ptr [engine+38h],	4
inc	i
cmp	i, 5
jnz	short loc_641CD242
mov	eax, [engine+28h]
mov	[engine+30h], eax
and	byte ptr [engine+38h], 0FDh
jmp	loc_641CD135
mov	[engine+28h], packet
movzx	eax, word ptr [engine+34h]
jmp	short loc_641CD28F
			
mov	[esp], engine
call	_silc_packet_engine_stop
xor	engine,	engine
jmp	loc_641CD135
mov	[esp], engine
call	_silc_free
xor	engine,	engine
jmp	loc_641CD135
align 4
public _silc_packet_send_va_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	al, [ebp+type]
mov	[ebp+var_29], al
mov	al, [ebp+flags]
mov	[ebp+var_2A], al
mov	esi, [ebp+src_id_type]
mov	ebx, [ebp+dst_id_type]
lea	edx, [ebp+buf]
mov	ecx, 10h
xor	eax, eax
mov	edi, edx
rep stosb
lea	eax, [ebp+ap]
mov	[esp+4], eax	
mov	[esp], edx	
call	_silc_buffer_format_vp
test	eax, eax
js	loc_641CD3B4
mov	edx, [ebp+buf.data]
mov	eax, [ebp+hmac]
mov	[esp+28h], eax	
mov	eax, [ebp+cipher]
mov	[esp+24h], eax	
mov	eax, [ebp+buf.tail]
sub	eax, edx
mov	[esp+20h], eax	
mov	[esp+1Ch], edx	
mov	eax, [ebp+dst_id]
mov	[esp+18h], eax	
movzx	dst_id_type_0, bx
mov	[esp+14h], dst_id_type_0 
mov	eax, [ebp+src_id]
mov	[esp+10h], eax	
movzx	src_id_type_0, si
mov	[esp+0Ch], src_id_type_0 
movzx	eax, [ebp+var_2A]
mov	[esp+8], flags_0 
movzx	flags_0, [ebp+var_29]
mov	[esp+4], type_0	
mov	type_0,	[ebp+stream]
mov	[esp], eax	
call	_silc_packet_send_ext
mov	eax, [ebp+buf.head]
mov	[ebp+buf.end], 0
mov	[ebp+buf.tail],	0
mov	[ebp+buf.data],	0
mov	[ebp+buf.head],	0
mov	[esp], eax	
call	_silc_free
mov	al, 1
add	esp, 5Ch
pop	dst_id_type_0
pop	src_id_type_0
pop	edi
leave
retn
align 4
xor	eax, eax
add	esp, 5Ch
pop	dst_id_type_0
pop	src_id_type_0
pop	edi
leave
retn
align 10h
public _silc_packet_engine_get_streams
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	edi, [ebp+engine]
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
mov	ebx, eax
test	eax, eax
jz	loc_641CD4B2
mov	dword ptr [list+18h], 0
mov	dword ptr [list+14h], 0
mov	list, [list+10h]
and	eax, 3
mov	[list+10h], eax
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_lock
mov	esi, [engine_0+14h]
mov	[engine_0+1Ch],	esi
and	byte ptr [engine_0+24h], 0FDh
jmp	short loc_641CD48B
align 4
movzx	eax, word ptr [engine_0+22h]
mov	eax, [esi+eax]
mov	[engine_0+1Ch],	eax
mov	eax, [esi+60h]
mov	eax, [esi+60h]
inc	eax
mov	[esi+60h], eax
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641CD488
mov	[eax], esi
mov	edx, [list]
test	edx, edx
jz	short loc_641CD4A0
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], eax
test	byte ptr [list+10h], 1
jz	short loc_641CD47A
movzx	ecx, word ptr [list+0Eh]
mov	esi, [list+4]
mov	[eax+ecx], esi
mov	[list+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [list+10h], 4
mov	esi, [engine_0+1Ch]
test	esi, esi
jz	short loc_641CD4A8
test	byte ptr [engine_0+24h], 2
jnz	short loc_641CD434
movzx	eax, word ptr [engine_0+20h]
mov	eax, [esi+eax]
jmp	short loc_641CD43B
align 10h
mov	[list],	eax
movzx	edx, word ptr [list+0Ch]
jmp	short loc_641CD46A
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, list
add	esp, 1Ch
pop	list
pop	esi
pop	engine_0
leave
retn
public _silc_packet_stream_destroy
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 8Ch
mov	ebx, [ebp+stream]
test	ebx, ebx
jz	short loc_641CD501
mov	edx, [ebp+stream]
mov	eax, [edx+60h]
mov	ecx, edx
mov	edx, [edx+60h]
dec	edx
mov	[ecx+60h], edx
dec	eax
jz	short loc_641CD50C
mov	al, [ecx+67h]
test	al, 2
jnz	short loc_641CD501
or	eax, 2
mov	[ecx+67h], al
test	al, 8
jnz	short loc_641CD501
mov	eax, [ecx+8]
test	eax, eax
jz	short loc_641CD501
mov	[esp], eax	
call	_silc_stream_close
			
add	esp, 8Ch
pop	ebx
pop	esi
pop	edi
leave
retn
mov	ebx, [ebp+stream]
test	byte ptr [ebx+67h], 8
jnz	loc_641CD59D
mov	eax, [ebx+4]
test	eax, eax
jz	short loc_641CD585
mov	ebx, [eax+4]
mov	eax, [engine]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [engine+14h]
test	prev, prev
jz	short loc_641CD55B
cmp	[ebp+stream], prev
jz	loc_641CD961
movzx	esi, word ptr [engine+20h]
mov	edi, [ebp+stream]
jmp	short loc_641CD552
align 4
cmp	stream_0, prev
jz	loc_641CD96A
mov	eax, prev
lea	p, [prev+esi]
mov	ecx, [p]
test	prev, prev
jnz	short loc_641CD548
			
mov	esi, [ebp+stream]
cmp	[engine+18h], esi
jz	loc_641CD9AF
mov	edi, [ebp+stream]
mov	prev, [edi+4]
dec	dword ptr [eax+0Ch]
mov	prev, [eax+0Ch]
test	ecx, ecx
jz	loc_641CD999
mov	eax, [engine]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	edx, [ebp+stream]
mov	eax, [edx+8]
test	eax, eax
jz	loc_641CD61B
mov	[esp], eax	
call	_silc_stream_destroy
jmp	short loc_641CD61B
mov	ecx, [ebp+stream]
mov	eax, [ecx+4]
mov	ebx, [eax+4]
mov	eax, [ecx+14h]
mov	edx, [eax]
mov	[esp+10h], edx
movzx	eax, word ptr [eax+4]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aDS 
mov	dword ptr [esp+4], 40h 
lea	esi, [ebp+tuple]
mov	[esp], esi	
call	_silc_snprintf
mov	eax, [engine]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[esp+4], esi	
mov	eax, [engine+3Ch]
mov	[esp], eax	
call	_silc_hash_table_del
mov	eax, [engine]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	engine,	[ebp+stream]
mov	eax, [ebx+14h]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_free
mov	eax, [ebx+14h]
mov	[esp], eax	
call	_silc_free
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_packet_stream_unref
			
mov	esi, [ebp+stream]
mov	edx, [esi+1Ch]
mov	ecx, [esi+28h]
sub	ecx, edx
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [esi+1Ch]
mov	dword ptr [esi+28h], 0
mov	dword ptr [esi+24h], 0
mov	dword ptr [esi+20h], 0
mov	dword ptr [esi+1Ch], 0
mov	[esp], eax	
call	_silc_free
mov	eax, [esi+10h]
test	eax, eax
jz	loc_641CD817
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
lea	p, [p+0]
			
mov	edi, [ebp+stream]
mov	engine,	[edi+10h]
mov	eax, [ebx+14h]
mov	[ebx+18h], eax
mov	eax, [ebx+8]
test	eax, eax
jz	loc_641CD7A4
test	byte ptr [ebx+10h], 2
jz	loc_641CD744
movzx	edx, word ptr [ebx+0Eh]
mov	edx, [eax+edx]
mov	[ebx+8], edx
mov	[ebx+14h], eax
mov	p, [eax]
test	p, p
jz	loc_641CD7AB
mov	eax, [p]
mov	[esp], eax	
call	_silc_free
mov	[esp], p	
call	_silc_free
mov	edi, [ebp+stream]
mov	edx, [edi+10h]
mov	edi, [edx]
mov	eax, edi
mov	[edx+8], edi
and	byte ptr [edx+10h], 0FDh
xor	ecx, ecx
test	eax, eax
jz	short loc_641CD678
test	cl, cl
jz	short loc_641CD6F5
movzx	ebx, word ptr [edx+0Eh]
mov	ebx, [eax+ebx]
mov	[edx+8], ebx
cmp	p, [eax]
jz	short loc_641CD703
mov	eax, ebx
test	eax, eax
jz	short loc_641CD678
test	cl, cl
jnz	short loc_641CD6DD
movzx	ebx, word ptr [edx+0Ch]
mov	ebx, [eax+ebx]
mov	[edx+8], ebx
cmp	p, [eax]
jnz	short loc_641CD6EB
mov	ecx, edi
test	edi, edi
jz	short loc_641CD727
cmp	eax, edi
jz	loc_641CD953
movzx	edi, word ptr [edx+0Ch]
jmp	short loc_641CD71E
align 4
cmp	eax, esi
jz	short loc_641CD750
mov	ecx, esi
lea	ebx, [ecx+edi]
mov	p, [ebx]
test	esi, esi
jnz	short loc_641CD718
cmp	eax, [edx+4]
jz	short loc_641CD781
cmp	eax, [edx+14h]
jz	short loc_641CD78C
cmp	eax, [edx+18h]
jz	short loc_641CD798
			
mov	[esp], eax	
call	_silc_free
jmp	loc_641CD678
align 4
movzx	edx, word ptr [ebx+0Ch]
mov	edx, [eax+edx]
jmp	loc_641CD6A0
mov	[ebp+var_6C], ebx
mov	p, [eax+edi]
mov	ebx, [ebp+var_6C]
mov	[ebx], esi
test	esi, esi
jz	short loc_641CD76F
test	byte ptr [edx+10h], 1
jz	short loc_641CD76F
movzx	edi, word ptr [edx+0Eh]
mov	ebx, [eax+edi]
mov	[esi+edi], ebx
			
cmp	eax, [edx+8]
jz	loc_641CD93B
sub	dword ptr [edx+10h], 4
cmp	eax, [edx+4]
jnz	short loc_641CD72C
mov	[edx+4], ecx
cmp	eax, [edx+14h]
jnz	short loc_641CD731
lea	p, [p+0]
mov	dword ptr [edx+14h], 0
cmp	eax, [edx+18h]
jnz	short loc_641CD736
mov	dword ptr [edx+18h], 0
jmp	short loc_641CD736
align 4
mov	dword ptr [ebx+14h], 0
test	ebx, ebx
jz	short loc_641CD817
mov	p, [ebx]
mov	[ebx+8], esi
and	byte ptr [ebx+10h], 0FDh
test	esi, esi
jz	short loc_641CD80F
test	byte ptr [ebx+10h], 2
jz	loc_641CD8EC
movzx	eax, word ptr [ebx+0Eh]
mov	eax, [esi+eax]
mov	[ebx+8], eax
mov	eax, [ebx]
test	eax, eax
jz	short loc_641CD7F7
cmp	esi, eax
jz	loc_641CD948
movzx	edi, word ptr [ebx+0Ch]
jmp	short loc_641CD7EE
cmp	esi, ecx
jz	loc_641CD8F8
mov	eax, ecx
lea	edx, [eax+edi]
mov	ecx, [edx]
test	ecx, ecx
jnz	short loc_641CD7E4
cmp	esi, [ebx+4]
jz	loc_641CD929
			
mov	[esp], esi	
call	_silc_free
mov	esi, [ebx+8]
test	esi, esi
jnz	short loc_641CD7BC
mov	[esp], ebx	
call	_silc_free
			
mov	engine,	[ebp+stream]
mov	eax, [ebx+30h]
test	eax, eax
jz	short loc_641CD829
mov	[esp], eax	
call	_silc_cipher_free
mov	p, [ebp+stream]
mov	eax, [esi+40h]
test	eax, eax
jz	short loc_641CD83B
mov	[esp], eax	
call	_silc_cipher_free
mov	edi, [ebp+stream]
mov	eax, [edi+38h]
test	eax, eax
jz	short loc_641CD84D
mov	[esp], eax	
call	_silc_hmac_free
mov	edx, [ebp+stream]
mov	eax, [edx+48h]
test	eax, eax
jz	short loc_641CD85F
mov	[esp], eax	
call	_silc_hmac_free
mov	ecx, [ebp+stream]
mov	eax, [ecx+34h]
test	eax, eax
jz	short loc_641CD871
mov	[esp], eax	
call	_silc_cipher_free
mov	ebx, [ebp+stream]
mov	eax, [ebx+44h]
test	eax, eax
jz	short loc_641CD883
mov	[esp], eax	
call	_silc_cipher_free
mov	esi, [ebp+stream]
mov	eax, [esi+3Ch]
test	eax, eax
jz	short loc_641CD895
mov	[esp], eax	
call	_silc_hmac_free
mov	edi, [ebp+stream]
mov	eax, [edi+4Ch]
test	eax, eax
jz	short loc_641CD8A7
mov	[esp], eax	
call	_silc_hmac_free
mov	edx, [ebp+stream]
mov	eax, [edx+50h]
mov	[esp], eax	
call	_silc_free
mov	ecx, [ebp+stream]
mov	eax, [ecx+54h]
mov	[esp], eax	
call	_silc_free
mov	ebx, [ebp+stream]
mov	dword ptr [ebx+60h], 0
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_free
mov	[esp], ebx	
call	_silc_free
add	esp, 8Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
movzx	eax, word ptr [ebx+0Ch]
mov	eax, [esi+eax]
jmp	loc_641CD7CD
mov	[ebp+var_6C], edx
mov	ecx, [esi+edi]
mov	edx, [ebp+var_6C]
mov	[edx], ecx
test	ecx, ecx
jz	short loc_641CD917
test	byte ptr [ebx+10h], 1
jz	short loc_641CD917
movzx	edi, word ptr [ebx+0Eh]
mov	edx, [esi+edi]
mov	[ecx+edi], edx
			
cmp	esi, [ebx+8]
jz	short loc_641CD931
sub	dword ptr [ebx+10h], 4
cmp	esi, [ebx+4]
jnz	loc_641CD800
mov	[ebx+4], eax
jmp	loc_641CD800
mov	ecx, [ebp+var_6C]
mov	edx, [ecx]
mov	[ebx+8], edx
jmp	short loc_641CD91C
mov	esi, [ebp+var_6C]
mov	ebx, [esi]
mov	[edx+8], ebx
jmp	loc_641CD778
movzx	edi, word ptr [ebx+0Ch]
mov	[ebp+var_6C], ebx
xor	eax, eax
jmp	short loc_641CD8FB
mov	[ebp+var_6C], edx
movzx	edi, word ptr [edx+0Ch]
xor	ecx, ecx
jmp	loc_641CD753
lea	edx, [engine+14h]
movzx	esi, word ptr [engine+20h]
xor	prev, prev
mov	edi, [ebp+stream]
mov	prev, [edi+esi]
mov	[p], ecx
test	ecx, ecx
jz	short loc_641CD97C
test	byte ptr [engine+24h], 1
jnz	short loc_641CD98D
			
mov	ecx, [ebp+stream]
cmp	[engine+1Ch], ecx
jz	short loc_641CD9B7
sub	dword ptr [engine+24h],	4
jmp	loc_641CD55B
movzx	esi, word ptr [engine+22h]
mov	edi, [edi+esi]
mov	[ecx+esi], edi
jmp	short loc_641CD97C
mov	eax, [eax]
mov	[esp+4], eax	
mov	eax, [engine+8]
mov	[esp], eax	
call	_silc_hash_table_del
jmp	loc_641CD57B
mov	[engine+18h], prev
jmp	loc_641CD567
mov	p, [p]
mov	[engine+1Ch], edx
jmp	short loc_641CD984
align 10h
public _silc_packet_stream_unref
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax+60h]
mov	ecx, [eax+60h]
dec	ecx
mov	[eax+60h], ecx
dec	edx
jz	short loc_641CD9D8
leave
retn
mov	edx, [stream_0+60h]
mov	edx, [stream_0+60h]
inc	edx
mov	[stream_0+60h],	edx
leave
jmp	_silc_packet_stream_destroy
public _silc_packet_stream_add_remote
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	esi, [ebp+stream]
mov	edi, [ebp+remote_port]
mov	edx, edi
mov	eax, [esi+4]
mov	ecx, [eax+4]
mov	ebx, [ebp+remote_ip]
test	ebx, ebx
jnz	short loc_641CDA14
xor	ebx, ebx
			
mov	eax, ps
add	esp, 4Ch
pop	ps
pop	stream_0
pop	remote_port_0
leave
retn
align 4
test	di, di
jz	short loc_641CDA06
mov	dword ptr [esp+4], 0 
mov	eax, [stream_0+8]
mov	[esp], eax	
mov	[ebp+key], edx
mov	[ebp+var_1C], engine
call	_silc_socket_stream_is_udp
test	al, al
mov	edx, [ebp+key]
mov	ecx, [ebp+var_1C]
jz	loc_641CDBE4
mov	dword ptr [esp+4], 68h 
mov	dword ptr [esp], 1 
mov	[ebp+key], edx
mov	[ebp+var_1C], ecx
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641CDA08
mov	ps, [stream_0+4]
mov	[ps+4],	eax
mov	dword ptr [ps+60h], 1
lea	eax, [ps+0Ch]
mov	[esp], eax	
call	_silc_mutex_alloc
mov	eax, [stream_0+60h]
mov	eax, [stream_0+60h]
inc	eax
mov	[stream_0+60h],	eax
mov	[ps+8],	stream_0
or	byte ptr [ps+67h], 8
mov	dword ptr [esp], 400h 
call	_silc_malloc
mov	[ebp+tmp], eax
test	eax, eax
mov	edx, [ebp+key]
mov	ecx, [ebp+var_1C]
jz	loc_641CDC20
mov	eax, [ebp+tmp]
mov	[ps+1Ch], eax
add	eax, 400h
mov	[ps+28h], eax
mov	eax, [ebp+tmp]
mov	[ps+24h], eax
mov	[ps+20h], eax
mov	[ebp+key], edx
mov	[ebp+var_1C], ecx
call	_silc_dlist_init
mov	[ps+10h], eax
test	eax, eax
mov	edx, [ebp+key]
mov	ecx, [ebp+var_1C]
jz	loc_641CDC20
mov	eax, [ebp+remote_ip]
mov	[esp+8], eax
movzx	edx, dx
mov	[esp+4], remote_port_0
mov	dword ptr [esp], offset	aDS 
mov	[ebp+var_1C], ecx
call	_silc_format
mov	ecx, [ebp+var_1C]
mov	edx, [ecx]
mov	[esp], edx	
mov	[ebp+key], eax
call	_silc_mutex_lock
mov	eax, [ebp+key]
test	eax, eax
mov	ecx, [ebp+var_1C]
jz	loc_641CDC07
mov	[esp+8], ps	
mov	[esp+4], tuple	
mov	tuple, [ecx+3Ch]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
mov	ecx, [ebp+var_1C]
jz	loc_641CDC07
mov	eax, [ecx]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, eax
mov	[ps+14h], eax
test	eax, eax
jz	loc_641CDC20
mov	[eax+4], di
mov	eax, [ebp+remote_ip]
mov	[esp], eax	
mov	[ebp+key], edx
call	_strdup
mov	edx, [ebp+key]
mov	[edx], eax
mov	eax, [ps+14h]
mov	eax, [eax]
test	eax, eax
jz	loc_641CDC20
mov	remote_port_0, [ebp+packet]
test	edi, edi
jz	loc_641CDA08
mov	edx, [ebp+packet]
mov	[edx+4], ps
mov	eax, [ps+60h]
mov	eax, [ps+60h]
inc	eax
mov	[ps+60h], eax
mov	eax, [stream_0+8]
mov	[esp], eax	
call	_silc_stream_get_schedule
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	edx, [ebp+packet]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], offset _silc_packet_stream_inject_packet 
mov	dword ptr [esp+4], 0 
mov	[esp], eax	
call	_silc_schedule_task_add
jmp	loc_641CDA08
align 4
mov	dword ptr [esp], offset	aStreamIsNotUdp	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	ebx, ebx
jmp	loc_641CDA08
			
mov	tuple, [ecx]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	[esp], ps	
call	_silc_packet_stream_destroy
xor	ps, ps
jmp	loc_641CDA08
			
mov	[esp], ps
call	_silc_packet_stream_destroy
xor	ps, ps
jmp	loc_641CDA08
align 10h
public _silc_packet_stream_create
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+engine]
mov	edi, [ebp+stream]
test	esi, esi
jnz	short loc_641CDC50
xor	ebx, ebx
			
mov	eax, ps
add	esp, 3Ch
pop	ps
pop	engine_0
pop	stream_0
leave
retn
align 10h
test	stream_0, stream_0
jz	short loc_641CDC43
mov	dword ptr [esp+4], 68h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641CDC45
mov	[ps+8],	stream_0
mov	dword ptr [ps+60h], 1
lea	ps, [ps+0Ch]
mov	[esp], eax	
call	_silc_mutex_alloc
mov	dword ptr [esp], 400h 
call	_silc_malloc
test	eax, eax
jz	loc_641CDD67
mov	[ps+1Ch], tmp
lea	edx, [tmp+400h]
mov	[ps+28h], edx
mov	[ps+24h], tmp
mov	[ps+20h], tmp
call	_silc_dlist_init
mov	[ps+10h], eax
test	eax, eax
jz	loc_641CDD60
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_lock
lea	eax, [ps+4]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+schedule]
mov	[esp+4], eax	
mov	eax, [engine_0+8]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	loc_641CDD78
mov	eax, [ps+4]
inc	dword ptr [eax+0Ch]
mov	edx, [engine_0+14h]
test	edx, edx
jz	loc_641CDE50
movzx	eax, word ptr [engine_0+20h]
mov	edx, [engine_0+18h]
mov	[edx+eax], ps
test	byte ptr [engine_0+24h], 1
jz	short loc_641CDD17
movzx	edx, word ptr [engine_0+22h]
mov	ecx, [engine_0+18h]
mov	[ps+edx], ecx
mov	[engine_0+18h],	ps
mov	dword ptr [ps+eax], 0
add	dword ptr [engine_0+24h], 4
mov	eax, [engine_0+3Ch]
test	eax, eax
jz	loc_641CDE5C
			
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	[esp+0Ch], ps	
mov	dword ptr [esp+8], offset _silc_packet_stream_io 
mov	edx, [ebp+schedule]
mov	[esp+4], edx	
mov	eax, [ps+8]
mov	[esp], eax	
call	_silc_stream_set_notifier
test	al, al
jnz	loc_641CDC45
			
mov	dword ptr [ps+8], 0
			
mov	[esp], ps
call	_silc_packet_stream_destroy
xor	ps, ps
jmp	loc_641CDC45
align 4
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[ps+4],	eax
test	eax, eax
jz	loc_641CDEE8
mov	[eax+4], engine_0
mov	edx, [ebp+schedule]
mov	[eax], edx
mov	eax, 10400h	
call	_silc_buffer_alloc_1
mov	ecx, eax
test	eax, eax
jz	loc_641CDEC7
mov	inbuf, [inbuf]
mov	[inbuf+8], eax
mov	[inbuf+4], eax
mov	edx, [ps+4]
mov	[ebp+var_20], edx
mov	[ebp+context], inbuf
call	_silc_dlist_init
mov	edx, [ebp+var_20]
mov	[edx+8], eax
mov	eax, [ps+4]
mov	eax, [eax+8]	
test	eax, eax
mov	ecx, [ebp+context]
jz	loc_641CDEC0
mov	edx, ecx	
mov	[ebp+context], inbuf
call	_silc_dlist_add
mov	eax, [ps+4]
mov	[esp+8], eax	
mov	eax, [ebp+schedule]
mov	[esp+4], eax	
mov	eax, [engine_0+8]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
mov	ecx, [ebp+context]
jnz	loc_641CDCEC
mov	eax, ecx	
call	_silc_buffer_free_0
mov	eax, [ps+4]
mov	eax, [eax+8]	
mov	ecx, [ebp+context]
mov	edx, ecx	
call	_silc_dlist_del
mov	eax, [ps+4]
mov	[esp], eax	
call	_silc_free
mov	dword ptr [ps+4], 0
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	dword ptr [ps+8], 0
jmp	loc_641CDD67
align 10h
mov	[engine_0+14h],	ps
movzx	eax, word ptr [engine_0+20h]
jmp	loc_641CDD07
mov	dword ptr [esp+4], 0 
mov	[esp], stream_0	
call	_silc_socket_stream_is_udp
test	al, al
jz	loc_641CDD30
mov	dword ptr [esp+1Ch], 1 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], offset _silc_packet_engine_hash_destr 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset _silc_hash_string_compare 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_string 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[engine_0+3Ch],	eax
jmp	loc_641CDD30
mov	eax, ecx	
call	_silc_buffer_free_0
mov	inbuf, [ps+4]
mov	[esp], eax	
call	_silc_free
mov	dword ptr [ps+4], 0
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641CDD60
mov	eax, [engine_0]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641CDD60
align 4
public _silc_packet_stream_inject_packet
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+context]
mov	ebx, [esi+4]
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
test	byte ptr [stream+67h], 2
jnz	short loc_641CDF1E
mov	eax, context_0	
call	_silc_packet_dispatch
mov	eax, [stream+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream+60h]
mov	edx, [stream+60h]
dec	edx
mov	[stream+60h], edx
dec	eax
jz	short loc_641CDF40
add	esp, 10h
pop	stream
pop	context_0
leave
retn
align 10h
mov	eax, [stream+60h]
mov	eax, [stream+60h]
inc	eax
mov	[stream+60h], eax
mov	[ebp+schedule],	stream
add	esp, 10h
pop	stream
pop	context_0
leave
jmp	_silc_packet_stream_destroy
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+context]
mov	[ebp+sc], eax
mov	eax, [eax+8]
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
lea	esi, [esi+0]
			
mov	eax, [ebp+sc]
mov	edi, [eax+8]
mov	eax, [edi+14h]
mov	[edi+18h], eax
mov	eax, [edi+8]
test	eax, eax
jz	loc_641CE0C8
test	byte ptr [edi+10h], 2
jz	loc_641CE068
movzx	edx, word ptr [edi+0Eh]
mov	edx, [eax+edx]
mov	[edi+8], edx
mov	[edi+14h], eax
mov	buffer,	[eax]
test	buffer,	buffer
jz	loc_641CE0CF
mov	edx, [buffer]
mov	ecx, [buffer+0Ch]
sub	ecx, edx
mov	edi, edx
xor	eax, eax
rep stosb
mov	eax, [buffer]
mov	[buffer+8], eax
mov	[buffer+4], eax
mov	[esp], eax	
call	_silc_free
mov	[esp], buffer	
call	_silc_free
mov	ecx, [ebp+sc]
mov	edx, [ecx+8]
mov	edi, [edx]
mov	eax, edi
mov	[edx+8], edi
and	byte ptr [edx+10h], 0FDh
xor	ecx, ecx
test	eax, eax
jz	short loc_641CDF84
test	cl, cl
jz	short loc_641CE018
movzx	esi, word ptr [edx+0Eh]
mov	esi, [eax+esi]
mov	[edx+8], esi
cmp	buffer,	[eax]
jz	short loc_641CE026
mov	eax, esi
test	eax, eax
jz	loc_641CDF84
test	cl, cl
jnz	short loc_641CDFFC
movzx	esi, word ptr [edx+0Ch]
mov	esi, [eax+esi]
mov	[edx+8], esi
cmp	buffer,	[eax]
jnz	short loc_641CE00A
mov	ecx, edi
test	edi, edi
jz	short loc_641CE04B
cmp	eax, edi
jz	loc_641CE1A4
movzx	edi, word ptr [edx+0Ch]
jmp	short loc_641CE042
align 4
cmp	eax, esi
jz	short loc_641CE074
mov	ecx, esi
lea	buffer,	[ecx+edi]
mov	esi, [ebx]
test	esi, esi
jnz	short loc_641CE03C
cmp	eax, [edx+4]
jz	short loc_641CE0A5
cmp	eax, [edx+14h]
jz	short loc_641CE0B0
cmp	eax, [edx+18h]
jz	short loc_641CE0BC
			
mov	[esp], eax	
call	_silc_free
jmp	loc_641CDF84
align 4
movzx	edx, word ptr [edi+0Ch]
mov	edx, [eax+edx]
jmp	loc_641CDFAC
mov	[ebp+var_3C], ebx
mov	esi, [eax+edi]
mov	buffer,	[ebp+var_3C]
mov	[ebx], esi
test	esi, esi
jz	short loc_641CE093
test	byte ptr [edx+10h], 1
jz	short loc_641CE093
movzx	edi, word ptr [edx+0Eh]
mov	ebx, [eax+edi]
mov	[esi+edi], ebx
			
cmp	eax, [edx+8]
jz	loc_641CE18C
sub	dword ptr [edx+10h], 4
cmp	eax, [edx+4]
jnz	short loc_641CE050
mov	[edx+4], ecx
cmp	eax, [edx+14h]
jnz	short loc_641CE055
lea	esi, [esi+0]
mov	dword ptr [edx+14h], 0
cmp	eax, [edx+18h]
jnz	short loc_641CE05A
mov	dword ptr [edx+18h], 0
jmp	short loc_641CE05A
align 4
mov	dword ptr [edi+14h], 0
test	edi, edi
jz	short loc_641CE12F
mov	buffer,	[edi]
mov	[edi+8], ebx
and	byte ptr [edi+10h], 0FDh
test	ebx, ebx
jz	short loc_641CE127
test	byte ptr [edi+10h], 2
jz	short loc_641CE144
movzx	eax, word ptr [edi+0Eh]
mov	eax, [ebx+eax]
mov	[edi+8], eax
mov	eax, [edi]
test	eax, eax
jz	short loc_641CE113
cmp	ebx, eax
jz	loc_641CE199
movzx	esi, word ptr [edi+0Ch]
jmp	short loc_641CE10A
cmp	ebx, ecx
jz	short loc_641CE150
mov	eax, ecx
lea	edx, [eax+esi]
mov	ecx, [edx]
test	ecx, ecx
jnz	short loc_641CE104
cmp	ebx, [edi+4]
jz	short loc_641CE17D
			
mov	[esp], ebx	
call	_silc_free
mov	ebx, [edi+8]
test	ebx, ebx
jnz	short loc_641CE0E0
mov	[esp], edi	
call	_silc_free
mov	buffer,	[ebp+sc]
mov	[ebp+key], ebx
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	_silc_free
align 4
movzx	eax, word ptr [edi+0Ch]
mov	eax, [ebx+eax]
jmp	short loc_641CE0ED
align 10h
mov	[ebp+var_3C], edx
mov	ecx, [ebx+esi]
mov	edx, [ebp+var_3C]
mov	[edx], ecx
test	ecx, ecx
jz	short loc_641CE16F
test	byte ptr [edi+10h], 1
jz	short loc_641CE16F
movzx	esi, word ptr [edi+0Eh]
mov	edx, [ebx+esi]
mov	[ecx+esi], edx
			
cmp	ebx, [edi+8]
jz	short loc_641CE182
sub	dword ptr [edi+10h], 4
cmp	ebx, [edi+4]
jnz	short loc_641CE118
mov	[edi+4], eax
jmp	short loc_641CE118
mov	ecx, [ebp+var_3C]
mov	edx, [ecx]
mov	[edi+8], edx
jmp	short loc_641CE174
mov	esi, [ebp+var_3C]
mov	ebx, [esi]
mov	[edx+8], ebx
jmp	loc_641CE09C
movzx	esi, word ptr [edi+0Ch]
mov	[ebp+var_3C], edi
xor	eax, eax
jmp	short loc_641CE153
mov	[ebp+var_3C], edx
movzx	edi, word ptr [edx+0Ch]
xor	ecx, ecx
jmp	loc_641CE077
align 4
public _silc_packet_engine_free_streams_list
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+streams]
mov	eax, [ebx]
mov	[ebx+8], eax
movzx	esi, byte ptr [ebx+10h]
and	esi, 0FFFFFFFDh
mov	eax, esi
mov	[ebx+10h], al
mov	dword ptr [ebx+18h], 0
mov	dword ptr [ebx+14h], 0
xor	eax, eax
jmp	short loc_641CE208
align 4
movzx	ps, word ptr [streams_0+0Eh]
mov	edx, [eax+edx]
mov	[streams_0+8], edx
mov	[streams_0+14h], eax
mov	edx, [eax]
test	ps, ps
jz	short loc_641CE243
mov	ecx, [ps+60h]
mov	esi, [ps+60h]
dec	esi
mov	[ps+60h], esi
dec	ecx
jz	short loc_641CE224
movzx	esi, byte ptr [streams_0+10h]
mov	[streams_0+18h], eax
mov	eax, [streams_0+8]
test	eax, eax
jz	short loc_641CE23C
test	esi, 2
jnz	short loc_641CE1E4
movzx	ps, word ptr [streams_0+0Ch]
mov	edx, [eax+edx]
jmp	short loc_641CE1EB
align 4
mov	eax, [ps+60h]
mov	eax, [ps+60h]
inc	eax
mov	[ps+60h], eax
mov	[esp], ps	
call	_silc_packet_stream_destroy
mov	eax, [streams_0+14h]
jmp	short loc_641CE204
align 4
mov	dword ptr [streams_0+14h], 0
mov	ecx, [streams_0]
mov	[streams_0+8], ecx
mov	eax, esi
and	eax, 0FFFFFFFDh
mov	[streams_0+10h], al
test	ecx, ecx
jz	short loc_641CE29B
test	byte ptr [streams_0+10h], 2
jz	short loc_641CE2AC
movzx	eax, word ptr [streams_0+0Eh]
mov	eax, [ecx+eax]
mov	[streams_0+8], eax
mov	eax, [streams_0]
test	eax, eax
jz	short loc_641CE287
cmp	ecx, eax
jz	loc_641CE2F4
movzx	edi, word ptr [streams_0+0Ch]
jmp	short loc_641CE27E
cmp	ecx, esi
jz	short loc_641CE2B8
mov	eax, esi
lea	ps, [eax+edi]
mov	esi, [edx]
test	esi, esi
jnz	short loc_641CE278
cmp	ecx, [streams_0+4]
jz	short loc_641CE2E5
			
mov	[esp], ecx	
call	_silc_free
mov	ecx, [streams_0+8]
test	ecx, ecx
jnz	short loc_641CE254
mov	[ebp+streams], streams_0
add	esp, 3Ch
pop	streams_0
pop	esi
pop	edi
leave
jmp	_silc_free
align 4
movzx	eax, word ptr [streams_0+0Ch]
mov	eax, [ecx+eax]
jmp	short loc_641CE261
align 4
mov	[ebp+var_2C], edx
mov	esi, [ecx+edi]
mov	ps, [ebp+var_2C]
mov	[edx], esi
test	esi, esi
jz	short loc_641CE2D7
test	byte ptr [streams_0+10h], 1
jz	short loc_641CE2D7
movzx	edi, word ptr [streams_0+0Eh]
mov	edx, [ecx+edi]
mov	[esi+edi], edx
			
cmp	ecx, [streams_0+8]
jz	short loc_641CE2EA
sub	dword ptr [streams_0+10h], 4
cmp	ecx, [streams_0+4]
jnz	short loc_641CE28C
mov	[streams_0+4], eax
jmp	short loc_641CE28C
mov	esi, [ebp+var_2C]
mov	edx, [esi]
mov	[streams_0+8], edx
jmp	short loc_641CE2DC
movzx	edi, word ptr [streams_0+0Ch]
mov	[ebp+var_2C], streams_0
xor	eax, eax
jmp	short loc_641CE2BB
align 10h
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0ECh
mov	[ebp+var_70], stream
mov	stream,	[stream+2Ch]
mov	[ebp+inbuf], eax
test	eax, eax
jz	loc_641CEE17
			
mov	[ebp+packet_seq], 0
mov	eax, [ebp+inbuf]
mov	ecx, [eax+8]
mov	edx, [eax+4]
cmp	ecx, edx
jz	out
mov	packet,	[ebp+var_70]
mov	ebx, [ebx+40h]
mov	[ebp+cipher], ebx
mov	esi, [ebp+var_70]
mov	esi, [esi+48h]
mov	[ebp+hmac], esi
mov	edi, [ebp+var_70]
mov	al, [edi+67h]
and	eax, 4
cmp	al, 1
sbb	eax, eax
and	eax, 0FFFFFFEFh
add	eax, 21h
sub	ecx, edx
cmp	eax, ecx
ja	loc_641CF1F8
mov	eax, [ebp+hmac]
test	eax, eax
jz	loc_641CF25A
mov	edx, [ebp+hmac]
mov	[esp], edx	
call	_silc_hmac_len
mov	[ebp+mac_len], eax
mov	edi, [ebp+cipher]
test	edi, edi
jz	loc_641CF07E
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_get_block_len
mov	[ebp+len], eax
mov	ebx, [ebp+var_70]
test	byte ptr [ebx+67h], 4
jz	loc_641CE9D4
mov	esi, [ebp+inbuf]
mov	eax, [esi+4]
mov	al, [eax]
mov	byte ptr [ebp+paddedlen], al
mov	edi, [ebp+cipher]
mov	[esp], edi	
call	_silc_cipher_get_mode
cmp	eax, 3
jz	loc_641CEBD0
lea	ebx, [ebp+iv]
mov	edi, [ebp+inbuf]
mov	esi, [edi+4]
inc	esi
mov	edi, ebx
mov	ecx, [ebp+len]
rep movsb
mov	eax, [ebp+len]
inc	eax
mov	[ebp+ivlen], eax
mov	edx, [ebp+var_70]
mov	al, [edx+64h]
cmp	al, byte ptr [ebp+paddedlen]
jz	loc_641CEC91
cmp	byte ptr [ebp+paddedlen], 0
jz	loc_641CEDD0
test	al, al
jz	loc_641CEDD0
movzx	eax, al
dec	eax
movzx	edx, byte ptr [ebp+paddedlen]
cmp	eax, sid
jnz	loc_641CEDD0
mov	block_len, [ebp+var_70]
mov	ecx, [ecx+44h]
mov	[ebp+cipher], ecx
test	ecx, ecx
jz	loc_641CEDD0
mov	esi, [ebp+var_70]
mov	esi, [esi+4Ch]
test	esi, esi
jnz	loc_641CEDD0
mov	[ebp+psnlen], 4
mov	[ebp+hmac], 0
mov	esi, [ebp+cipher]
mov	[esp], esi	
call	_silc_cipher_get_mode
cmp	eax, 3
jz	loc_641CEA27
			
mov	[esp+10h], ebx	
mov	edi, [ebp+len]
mov	[esp+0Ch], edi	
lea	eax, [ebp+tmp]
mov	[esp+8], eax	
mov	eax, [ebp+ivlen]
mov	edx, [ebp+inbuf]
add	eax, [edx+4]
mov	[esp+4], eax	
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_decrypt
mov	ebx, [ebp+var_70]
test	byte ptr [ebx+67h], 4
jz	loc_641CEA5C
lea	ecx, [ebp+tmp+7]
lea	edx, [ebp+tmp+6]
lea	esi, [ebp+tmp+8]
lea	eax, [ebp+tmp+5]
lea	edi, [ebp+tmp]
mov	[ebp+packet_seq], edi
lea	ebx, [ebp+tmp+4]
mov	[ebp+var_88], ebx
			
mov	edi, [ebp+var_88]
movzx	ebx, byte ptr [edi]
shl	packetlen, 8
movzx	eax, byte ptr [eax]
or	packetlen, eax
movzx	edi, bx
movzx	eax, byte ptr [esi]
lea	eax, [packetlen+eax]
mov	[ebp+paddedlen], eax
mov	dl, [edx]
mov	[ebp+flags], dl
mov	cl, [ecx]
mov	[ebp+type], cl
mov	edx, [ebp+var_70]
mov	eax, [edx+4]
mov	eax, [eax+4]
test	byte ptr [eax+40h], 1
jz	loc_641CEA3C
cmp	cl, 9
jz	loc_641CECF4
cmp	[ebp+type], 7
jz	loc_641CEE74
mov	[ebp+normal], 1
			
mov	ecx, [ebp+cipher]
test	ecx, ecx
jz	short loc_641CE541
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_get_mode
cmp	eax, 3
jz	short loc_641CE541
cmp	[ebp+normal], 0
jz	loc_641CEB54
mov	eax, [ebp+paddedlen]
xor	edx, edx
div	[ebp+len]
test	edx, edx
jnz	loc_641CEB79
			
mov	eax, [ebp+inbuf]
mov	eax, [eax+4]
mov	[ebp+data], eax
mov	esi, [ebp+paddedlen]
add	esi, [ebp+ivlen]
mov	ecx, [ebp+mac_len]
lea	edx, [esi+ecx]
mov	packetlen, [ebp+inbuf]
mov	eax, [edi+8]
sub	eax, [ebp+data]
cmp	edx, eax
ja	loc_641CEEA4
mov	eax, [ebp+var_70]
mov	edi, [eax+5Ch]
mov	edx, [ebp+hmac]
test	edx, edx
jz	short loc_641CE5FB
mov	edx, [ebp+hmac]
mov	[esp], edx	
call	_silc_hmac_init
mov	eax, [ebp+packet_seq]
test	eax, eax
jz	loc_641CECA0
mov	dword ptr [esp+8], 4 
mov	eax, [ebp+packet_seq]
mov	[esp+4], eax	
mov	edx, [ebp+hmac]
mov	[esp], edx	
call	_silc_hmac_update
mov	[esp+8], esi	
mov	ecx, [ebp+data]
mov	[esp+4], ecx	
mov	edi, [ebp+hmac]
mov	[esp], edi	
call	_silc_hmac_update
lea	eax, [ebp+return_len]
mov	[esp+8], eax	
lea	edi, [ebp+return_hash]
mov	[esp+4], edi	
mov	eax, [ebp+hmac]
mov	[esp], eax	
call	_silc_hmac_final
add	esi, [ebp+data]
mov	ecx, [ebp+return_len]
cmp	ecx, ecx
repe cmpsb
jnz	loc_641CEFFE
cmp	bx, 0Ah
jbe	loc_641CF115
mov	edx, [ebp+var_70]
mov	eax, [edx+4]
mov	edi, [eax+4]
mov	eax, [edi]
mov	[esp], eax	
call	_silc_mutex_lock
mov	ecx, [edi+30h]
mov	[ebp+hmac], ecx
test	ecx, ecx
jz	loc_641CEEF2
test	byte ptr [edi+38h], 2
jz	loc_641CEAC4
movzx	eax, word ptr [edi+36h]
mov	eax, [ecx+eax]
mov	[edi+30h], eax
mov	packetlen, [ebp+hmac]
mov	edx, [edi+28h]
test	edx, edx
jz	short loc_641CE668
cmp	[ebp+hmac], edx
jz	loc_641CEDBC
movzx	esi, word ptr [edi+34h]
jmp	short loc_641CE65F
align 4
cmp	[ebp+hmac], eax
jz	loc_641CEA78
mov	edx, eax
lea	ecx, [edx+esi]
mov	eax, [ecx]
test	eax, eax
jnz	short loc_641CE654
mov	esi, [ebp+hmac]
cmp	esi, [edi+2Ch]
jz	loc_641CEABC
			
mov	eax, [edi]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebp+var_70]
mov	[packet+4], eax
mov	dl, [ebp+flags]
mov	[packet+23h], dl
mov	cl, [ebp+type]
mov	[packet+22h], cl
mov	eax, [packet+14h]
mov	edx, eax
sub	edx, [packet+8]
cmp	[ebp+paddedlen], edx
ja	loc_641CF063
mov	edx, [packet+10h]
sub	eax, edx
cmp	[ebp+paddedlen], eax
ja	short loc_641CE6B7
add	edx, [ebp+paddedlen]
mov	[packet+10h], edx
mov	eax, [ebp+len]
sub	eax, [ebp+psnlen]
mov	[ebp+hmac], eax
mov	eax, [packet+0Ch]
sub	edx, eax
cmp	[ebp+hmac], edx
ja	short loc_641CE6F3
mov	edi, eax
mov	esi, [ebp+var_88]
mov	ecx, [ebp+hmac]
rep movsb
mov	eax, [packet+0Ch]
mov	ecx, [packet+10h]
mov	edx, ecx
sub	edx, eax
cmp	[ebp+hmac], edx
ja	short loc_641CE6F3
add	eax, [ebp+hmac]
mov	[packet+0Ch], eax
mov	edx, ecx
sub	edx, eax
			
mov	ecx, [ebp+paddedlen]
sub	ecx, [ebp+ivlen]
sub	ecx, [ebp+len]
mov	edi, [ebp+inbuf]
mov	header,	[edi+4]
cmp	ecx, edx
ja	short loc_641CE71E
mov	edx, [ebp+psnlen]
add	edx, [ebp+ivlen]
add	edx, [ebp+hmac]
add	esi, edx
mov	edi, eax
rep movsb
mov	esi, [ebp+cipher]
test	esi, esi
jz	loc_641CE7E9
lea	eax, [ebp+iv]
mov	[esp+4], eax	
mov	eax, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_set_iv
cmp	[ebp+normal], 1
jz	loc_641CEAD4
mov	ecx, [ebp+cipher]
mov	[esp], ecx	
call	_silc_cipher_get_block_len
mov	edx, [packet+0Ch]
mov	ecx, edx
sub	ecx, eax
cmp	ecx, [packet+8]
jb	short loc_641CE764
mov	[packet+0Ch], ecx
mov	edx, ecx
mov	cl, [edx+4]
mov	byte ptr [ebp+var_88], cl
movzx	edi, byte ptr [edx+6]
mov	cl, [edx+7]
mov	byte ptr [ebp+ivlen], cl
mov	ecx, [packet+10h]
mov	esi, ecx
sub	esi, edx
mov	[ebp+hmac], esi
cmp	eax, esi
ja	short loc_641CE792
add	edx, eax
mov	[packet+0Ch], edx
sub	ecx, edx
mov	[ebp+hmac], ecx
movzx	esi, byte ptr [ebp+var_88]
and	edi, 0FFh
lea	esi, [esi+edi+0Ah]
movzx	ecx, byte ptr [ebp+ivlen]
lea	ecx, [esi+ecx]
sub	cx, ax
movzx	ecx, cx
cmp	ecx, [ebp+hmac]
ja	loc_641CF042
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], ecx	
mov	[esp+8], edx	
mov	[esp+4], edx	
mov	edi, [ebp+cipher]
mov	[esp], edi	
call	_silc_cipher_decrypt
test	al, al
jz	loc_641CEB03
mov	edi, [ebp+var_70]
inc	dword ptr [edi+5Ch]
mov	eax, [ebp+len]
neg	eax
add	eax, [packet+0Ch]
cmp	eax, [packet+8]
jb	short loc_641CE7F9
mov	[packet+0Ch], eax
mov	eax, [ebp+paddedlen]
add	eax, [ebp+mac_len]
mov	edx, [ebp+inbuf]
mov	ecx, [edx+4]
mov	esi, edx
mov	edx, [edx+8]
sub	edx, ecx
cmp	eax, edx
ja	short loc_641CE819
lea	eax, [ecx+eax]
mov	[esi+4], eax
lea	esi, [packet+8]
mov	eax, [packet+0Ch]
movzx	edi, byte ptr [eax+4]
mov	dword ptr [esp+28h], 1Dh
lea	eax, [ebp+var_1B]
mov	[esp+24h], eax
mov	dword ptr [esp+20h], 1
lea	eax, [ebp+var_1A]
mov	[esp+1Ch], eax
mov	dword ptr [esp+18h], 1
lea	eax, [ebp+var_19]
mov	[esp+14h], eax
mov	dword ptr [esp+10h], 1
mov	dword ptr [esp+0Ch], 6
mov	dword ptr [esp+8], 18h
mov	dword ptr [esp+4], 19h
mov	[esp], esi	
call	_silc_buffer_unformat
inc	eax
jz	loc_641CF211
mov	al, [ebp+var_19]
cmp	al, 1Ch
ja	loc_641CEF51
mov	dl, [ebp+var_1A]
cmp	dl, 1Ch
ja	loc_641CEF51
mov	dword ptr [esp+30h], 1Dh
and	edi, 0FFh
mov	[esp+2Ch], edi
mov	dword ptr [esp+28h], 18h
movzx	edx, dl
mov	[esp+24h], edx
lea	edx, [packet+1Ch]
mov	[esp+20h], edx
mov	dword ptr [esp+1Ch], 0Ch
lea	edx, [ebp+return_len]
mov	[esp+18h], edx
mov	dword ptr [esp+14h], 1
movzx	eax, al
mov	[esp+10h], eax
lea	eax, [packet+18h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], 0Ch
mov	dword ptr [esp+4], 19h
mov	[esp], esi	
call	_silc_buffer_unformat
inc	eax
jz	loc_641CF211
cmp	[ebp+var_1B], 3
ja	loc_641CEFAD
cmp	byte ptr [ebp+return_len], 3
ja	loc_641CEFAD
mov	al, [ebp+var_19]
and	eax, 3Fh
mov	dl, [packet+20h]
and	edx, 0FFFFFFC0h
or	edx, eax
mov	[packet+20h], dl
mov	cl, [ebp+var_1A]
and	ecx, 3Fh
mov	al, [packet+21h]
and	eax, 0FFFFFFC0h
or	eax, ecx
mov	[packet+21h], al
mov	cl, [ebp+var_1B]
shl	ecx, 6
and	edx, 3Fh
or	edx, ecx
mov	[packet+20h], dl
mov	dl, byte ptr [ebp+return_len]
shl	edx, 6
and	eax, 3Fh
or	eax, edx
mov	[packet+21h], al
mov	eax, packet	
call	_silc_packet_dispatch
test	al, al
jnz	loc_641CE327
			
mov	edx, [ebp+var_70]
mov	packet,	[edx+2Ch]
test	ebx, ebx
jz	short loc_641CE9BE
mov	eax, [edx+4]
mov	ebx, [eax+8]
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641CE9B4
mov	ecx, [ebp+inbuf]
mov	[eax], ecx
mov	ecx, [ebx]
test	ecx, ecx
jz	loc_641CEE99
movzx	edx, word ptr [ebx+0Ch]
mov	ecx, [ebx+4]
mov	[ecx+edx], eax
test	byte ptr [ebx+10h], 1
jnz	loc_641CED0A
mov	[ebx+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [ebx+10h], 4
mov	ebx, [ebp+var_70]
mov	dword ptr [ebx+2Ch], 0
mov	esi, [ebp+inbuf]
mov	eax, [esi]
mov	[esi+8], eax
mov	[esi+4], eax
			
add	esp, 0ECh
pop	ebx
pop	esi
pop	edi
leave
retn
mov	eax, [ebp+cipher]
mov	[esp], eax	
call	_silc_cipher_get_iv
mov	esi, eax
lea	ebx, [ebp+iv]
mov	edi, ebx
mov	ecx, [ebp+len]
rep movsb
mov	edx, [ebp+cipher]
mov	[esp], edx	
call	_silc_cipher_get_mode
cmp	eax, 3
jz	loc_641CED19
mov	[ebp+psnlen], 0
mov	[ebp+ivlen], 0
mov	esi, [ebp+cipher]
mov	[esp], esi	
call	_silc_cipher_get_mode
cmp	eax, 3
jnz	loc_641CE458
mov	dword ptr [esp+4], 0 
mov	[esp], esi	
call	_silc_cipher_set_iv
jmp	loc_641CE458
cmp	[ebp+type], 9
jz	loc_641CECDC
cmp	[ebp+type], 7
setnz	[ebp+normal]
jmp	loc_641CE50D
lea	ecx, [ebp+tmp+3]
lea	edx, [ebp+tmp+2]
lea	esi, [ebp+tmp+4]
lea	eax, [ebp+tmp+1]
lea	edi, [ebp+tmp]
mov	[ebp+var_88], edi
jmp	loc_641CE4B0
align 4
mov	[ebp+data], ecx
mov	ecx, [ebp+hmac]
mov	eax, [ecx+esi]
mov	esi, [ebp+data]
mov	[esi], eax
test	eax, eax
jz	short loc_641CEAA0
test	byte ptr [edi+38h], 1
jz	short loc_641CEAA0
movzx	esi, word ptr [edi+36h]
mov	ecx, [ecx+esi]
mov	[eax+esi], ecx
			
mov	esi, [ebp+hmac]
cmp	esi, [edi+30h]
jz	loc_641CEDAC
sub	dword ptr [edi+38h], 4
mov	esi, [ebp+hmac]
cmp	esi, [edi+2Ch]
jnz	loc_641CE674
mov	[edi+2Ch], edx
jmp	loc_641CE674
movzx	eax, word ptr [edi+34h]
mov	packetlen, [ebp+hmac]
mov	eax, [ebx+eax]
jmp	loc_641CE637
align 4
mov	eax, [packet+0Ch]
mov	dword ptr [esp+10h], 0 
mov	edx, [packet+10h]
sub	edx, eax
mov	[esp+0Ch], edx	
mov	[esp+8], eax	
mov	[esp+4], eax	
mov	edx, [ebp+cipher]
mov	[esp], edx	
call	_silc_cipher_decrypt
test	al, al
jnz	loc_641CE7E3
			
mov	edx, [ebp+var_70]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	ecx, [ebp+var_70]
mov	eax, [ecx+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	esi, ecx
mov	ecx, [ecx+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 3
mov	[esp+4], esi
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [esi+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[esp], packet	
call	_silc_packet_free
jmp	short loc_641CEBBB
movzx	edx, byte ptr [esi]
mov	esi, [ebp+var_88]
movzx	eax, byte ptr [esi+6]
lea	edx, [edx+eax+0Ah]
movzx	eax, byte ptr [esi+7]
lea	eax, [edx+eax]
xor	edx, edx
div	[ebp+len]
test	edx, edx
jz	loc_641CE541
mov	packetlen, [ebp+var_70]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [edi+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 5
mov	[esp+4], edi
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
			
lea	edx, [ebp+tmp]
mov	ecx, 4
xor	eax, eax
mov	edi, edx
rep stosd
jmp	out
align 10h
mov	[esp], edi	
call	_silc_cipher_get_iv
mov	esi, eax
lea	ebx, [ebp+iv]
mov	edi, ebx
mov	ecx, [ebp+len]
rep movsb
mov	edx, [ebp+inbuf]
mov	eax, [edx+4]
mov	block_len, [ebp+var_70]
test	byte ptr [ecx+67h], 4
jnz	loc_641CEE88
movzx	edx, [ebp+iv+4]
shl	edx, 18h
movzx	eax, [ebp+iv+5]
shl	eax, 10h
or	edx, eax
movzx	eax, [ebp+iv+7]
or	edx, eax
movzx	eax, [ebp+iv+6]
shl	eax, 8
or	edx, eax
movzx	ecx, [ebp+iv+8]
shl	ecx, 18h
movzx	eax, [ebp+iv+9]
shl	eax, 10h
or	ecx, eax
movzx	eax, [ebp+iv+0Bh]
or	ecx, eax
movzx	eax, [ebp+iv+0Ah]
shl	eax, 8
or	ecx, eax
add	ecx, 1
adc	edx, 0
mov	eax, edx
shr	eax, 18h
mov	[ebp+iv+4], al
mov	eax, edx
shr	eax, 10h
mov	[ebp+iv+5], al
mov	eax, edx
shr	eax, 8
mov	[ebp+iv+6], al
mov	[ebp+iv+7], dl
mov	eax, ecx
shr	eax, 18h
mov	[ebp+iv+8], al
mov	eax, ecx
shr	eax, 10h
mov	[ebp+iv+9], al
mov	eax, ecx
shr	eax, 8
mov	[ebp+iv+0Ah], al
mov	[ebp+iv+0Bh], cl
mov	dword ptr [ebp+iv+0Ch],	0
mov	[ebp+ivlen], 9
mov	edx, [ebp+var_70]
mov	al, [edx+64h]
cmp	al, byte ptr [ebp+paddedlen]
jnz	loc_641CE3F2
mov	[ebp+psnlen], 4
jmp	loc_641CE444
mov	eax, edi
shr	eax, 18h
mov	[ebp+var_1F], al
mov	eax, edi
shr	eax, 10h
mov	[ebp+var_1E], al
mov	eax, edi
shr	eax, 8
mov	[ebp+var_1D], al
mov	ecx, edi
mov	[ebp+var_1C], cl
mov	dword ptr [esp+8], 4 
lea	eax, [ebp+var_1F]
mov	[esp+4], eax	
mov	edi, [ebp+hmac]
mov	[esp], edi	
call	_silc_hmac_update
jmp	loc_641CE5B6
mov	dl, [ebp+flags]
not	edx
and	edx, 1
mov	[ebp+normal], dl
jmp	loc_641CE50D
align 4
mov	cl, [ebp+flags]
not	ecx
and	ecx, 1
mov	[ebp+normal], cl
jmp	loc_641CE50D
movzx	ecx, word ptr [ebx+0Eh]
mov	esi, [ebx+4]
mov	[eax+ecx], esi
jmp	loc_641CE9A6
mov	ecx, [ebp+var_70]
test	byte ptr [ecx+67h], 4
jnz	loc_641CEED1
movzx	edx, [ebp+iv+4]
shl	edx, 18h
movzx	eax, [ebp+iv+5]
shl	eax, 10h
or	edx, eax
movzx	eax, [ebp+iv+7]
or	edx, eax
movzx	eax, [ebp+iv+6]
shl	eax, 8
or	edx, eax
movzx	ecx, [ebp+iv+8]
shl	ecx, 18h
movzx	eax, [ebp+iv+9]
shl	eax, 10h
or	ecx, eax
movzx	eax, [ebp+iv+0Bh]
or	ecx, eax
movzx	eax, [ebp+iv+0Ah]
shl	eax, 8
or	ecx, eax
add	ecx, 1
adc	edx, 0
mov	eax, edx
shr	eax, 18h
mov	[ebp+iv+4], al
mov	eax, edx
shr	eax, 10h
mov	[ebp+iv+5], al
mov	eax, edx
shr	eax, 8
mov	[ebp+iv+6], al
mov	[ebp+iv+7], dl
mov	eax, ecx
shr	eax, 18h
mov	[ebp+iv+8], al
mov	eax, ecx
shr	eax, 10h
mov	[ebp+iv+9], al
mov	eax, ecx
shr	eax, 8
mov	[ebp+iv+0Ah], al
mov	[ebp+iv+0Bh], cl
mov	dword ptr [ebp+iv+0Ch],	0
jmp	loc_641CE9FF
mov	ecx, [ebp+data]
mov	eax, [ecx]
mov	[edi+30h], eax
jmp	loc_641CEAAC
lea	esi, [edi+28h]
mov	[ebp+data], esi
movzx	esi, word ptr [edi+34h]
xor	edx, edx
jmp	loc_641CEA7E
			
mov	edi, [ebp+var_70]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [edi+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 4
mov	[esp+4], edi
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
jmp	out
mov	edx, [ebp+var_70]
mov	eax, [edx+4]
mov	eax, [eax+8]
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	ecx, [ebp+var_70]
mov	eax, [ecx+4]
mov	eax, [eax+8]
mov	edx, [eax+14h]
mov	[eax+18h], edx
mov	edx, [eax+8]
test	edx, edx
jz	loc_641CEF45
test	byte ptr [eax+10h], 2
jz	loc_641CEEE6
movzx	ecx, word ptr [eax+0Eh]
mov	ecx, [edx+ecx]
mov	[eax+8], ecx
mov	[eax+14h], edx
mov	edx, [edx]
mov	[ebp+inbuf], edx
jmp	loc_641CE31D
align 4
mov	eax, [ebp+var_70]
mov	al, [eax+67h]
and	eax, 1
mov	[ebp+normal], al
jmp	loc_641CE50D
mov	edx, [eax+1]
mov	dword ptr [ebp+iv+4], edx
mov	eax, [eax+5]
mov	dword ptr [ebp+iv+8], eax
jmp	loc_641CEC71
mov	[ebx], eax
movzx	edx, word ptr [ebx+0Ch]
jmp	loc_641CE99C
lea	edx, [ebp+tmp]
mov	ecx, 10h
xor	eax, eax
mov	edi, edx
rep stosb
mov	edx, [ebp+var_70]
mov	eax, [edx+4]
mov	eax, [eax+8]	
mov	edx, [ebp+inbuf] 
call	_silc_dlist_del
mov	ebx, [ebp+inbuf]
mov	ecx, [ebp+var_70]
mov	[ecx+2Ch], ebx
jmp	loc_641CE9C9
mov	eax, large ds:0
mov	dword ptr [ebp+iv+4], eax
mov	eax, large ds:4
mov	dword ptr [ebp+iv+8], eax
jmp	loc_641CEDA0
movzx	ecx, word ptr [eax+0Ch]
mov	ecx, [edx+ecx]
jmp	loc_641CEE62
mov	eax, [edi]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	dword ptr [esp+4], 24h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	packetlen, eax
test	eax, eax
jz	loc_641CF0CE
mov	dword ptr [esp], 400h 
call	_silc_malloc
test	eax, eax
jz	loc_641CF0C6
mov	[packet+8], eax
lea	edx, [eax+400h]
mov	[packet+14h], edx
mov	[packet+10h], eax
mov	[packet+0Ch], eax
jmp	loc_641CE67E
mov	dword ptr [eax+14h], 0
jmp	loc_641CE31D
			
mov	eax, [packet+4]
test	byte ptr [eax+67h], 8
jz	loc_641CF16C
			
mov	edi, [ebp+var_70]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [edi+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 5
mov	[esp+4], edi
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[esp], packet	
call	_silc_packet_free
jmp	loc_641CEBBB
			
mov	eax, [packet+4]
test	byte ptr [eax+67h], 8
jnz	short loc_641CEF5E
mov	dword ptr [esp+4], 0 
mov	eax, [eax+8]
mov	[esp], eax	
call	_silc_socket_stream_is_udp
test	al, al
jnz	short loc_641CEF5E
movzx	eax, byte ptr [ebp+return_len]
mov	[esp+8], eax
movzx	eax, [ebp+var_1B]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aBadIdTypesInPa	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641CEF5E
mov	edx, [ebp+var_70]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	ecx, [ebp+var_70]
mov	eax, [ecx+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ebx, ecx
mov	ecx, [ecx+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 2
mov	[esp+4], ebx
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [ebx+0Ch]
jmp	loc_641CEBB3
mov	dword ptr [esp], offset	aGarbageInHeade
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641CEB03
lea	eax, [packet+8]	
mov	edx, [ebp+paddedlen] 
call	_silc_buffer_realloc
test	eax, eax
jz	loc_641CF269
mov	eax, [packet+14h]
jmp	loc_641CE6A7
mov	eax, [ebp+inbuf]
mov	eax, [eax+4]
mov	[ebp+var_88], eax
inc	eax
mov	esi, [ebp+var_88]
add	esi, 4
mov	edx, [ebp+var_88]
add	edx, 2
mov	ecx, [ebp+var_88]
add	ecx, 3
mov	[ebp+psnlen], 0
mov	[ebp+ivlen], 0
mov	[ebp+len], 10h
jmp	loc_641CE4B0
mov	[esp], packet
call	_silc_free
mov	edi, [ebp+var_70]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [edi+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 6
mov	[esp+4], edi
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [edi+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
jmp	loc_641CEBBB
mov	eax, [ebp+var_70]
test	byte ptr [eax+67h], 8
jz	loc_641CF1BC
			
mov	ecx, [ebp+var_70]
mov	eax, [ecx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	packetlen, [ebp+var_70]
mov	eax, [ebx+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [ebx+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 5
mov	[esp+4], ebx
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
jmp	loc_641CEBBB
mov	dword ptr [esp+4], 0
mov	eax, [eax+8]
mov	[esp], eax	
call	_silc_socket_stream_is_udp
test	al, al
jnz	loc_641CEF5E
mov	al, [packet+21h]
and	eax, 3Fh
mov	[esp+8], eax
mov	al, [packet+20h]
and	eax, 3Fh
mov	[esp+4], eax
mov	dword ptr [esp], offset	aBadIdLengthsIn	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641CEF5E
mov	dword ptr [esp+4], 0
mov	eax, [eax+8]
mov	[esp], eax	
call	_silc_socket_stream_is_udp
test	al, al
jnz	loc_641CF122
mov	dword ptr [esp], offset	aReceivedTooSho	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641CF122
mov	eax, [edi+4]
mov	eax, [eax+8]	
mov	edx, [ebp+inbuf] 
call	_silc_dlist_del
mov	eax, [ebp+inbuf]
mov	[edi+2Ch], eax
jmp	loc_641CE9C9
			
mov	eax, [packet+4]
test	byte ptr [eax+67h], 8
jnz	loc_641CEF5E
mov	dword ptr [esp+4], 0 
mov	eax, [eax+8]
mov	[esp], eax	
call	_silc_socket_stream_is_udp
test	al, al
jnz	loc_641CEF5E
mov	dword ptr [esp], offset	aMalformedPacke	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641CEF5E
mov	[ebp+mac_len], 0
jmp	loc_641CE383
mov	ecx, [ebp+var_70]
mov	edx, [ecx+0Ch]
mov	[esp], edx	
mov	[ebp+var_AC], eax
call	_silc_mutex_unlock
mov	esi, [ebp+var_70]
mov	edx, [esi+4]
mov	edx, [edx+4]
mov	ecx, [edx+0Ch]
mov	edi, esi
mov	esi, [esi+18h]
mov	[esp+10h], esi
mov	esi, [edx+10h]
mov	[esp+0Ch], esi
mov	dword ptr [esp+8], 6
mov	[esp+4], edi
mov	[esp], edx
call	dword ptr [ecx+8]
mov	edx, [edi+0Ch]
mov	[esp], edx	
call	_silc_mutex_lock
mov	[esp], packet	
call	_silc_packet_free
lea	edx, [ebp+tmp]
mov	ecx, 4
mov	eax, [ebp+var_AC]
mov	edi, edx
rep stosd
jmp	out
align 4
public _silc_packet_stream_wrap
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+stream]
mov	eax, [ebp+type]
mov	[ebp+var_1C], eax
mov	edi, [ebp+flags]
mov	dl, [ebp+blocking_mode]
mov	[ebp+var_1D], dl
mov	dword ptr [esp+4], 3Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641CF41C
mov	dword ptr [pws], offset	_silc_packet_stream_ops
mov	[pws+4], stream_0
mov	al, byte ptr [ebp+var_1C]
mov	[pws+38h], al
mov	edx, flags_0
mov	[pws+39h], dl
mov	dl, [ebp+var_1D]
and	edx, 1
shl	edx, 1
mov	al, [pws+3Ah]
and	eax, 0FFFFFFFDh
or	eax, edx
mov	[pws+3Ah], al
mov	edx, [ebp+coder]
mov	[pws+10h], edx
mov	edx, [ebp+context]
mov	[pws+14h], edx
mov	edx, [ebp+coder]
test	edx, edx
jz	short loc_641CF395
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edi, eax
test	eax, eax
jz	short loc_641CF38F
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], 8 
call	_silc_calloc
mov	[edi], eax
test	eax, eax
jz	loc_641CF426
mov	[edi+4], eax
mov	[edi+8], eax
add	eax, 8
mov	[edi+0Ch], eax
			
mov	[pws+18h], edi
mov	al, [pws+3Ah]
test	al, 2
jnz	short loc_641CF3E8
lea	eax, [pws+8]
mov	[esp], eax	
call	_silc_mutex_alloc
mov	eax, [pws+34h]
and	eax, 3
mov	[pws+34h], eax
mov	word ptr [pws+30h], 0
mov	word ptr [pws+32h], 0
mov	byte ptr [pws+34h], 0
mov	dword ptr [pws+2Ch], 0
mov	dword ptr [pws+28h], 0
mov	dword ptr [pws+24h], 0
mov	eax, [stream_0+60h]
mov	eax, [stream_0+60h]
inc	eax
mov	[stream_0+60h],	eax
mov	eax, pws
add	esp, 2Ch
pop	pws
pop	stream_0
pop	edi
leave
retn
align 4
mov	dword ptr [esp+0Ch], 0FFFFFFFFh
movzx	eax, byte ptr [pws+38h]
mov	[esp+8], eax
mov	dword ptr [esp+4], 0 
mov	eax, [pws+4]
mov	[esp], eax	
call	_silc_packet_wait_init
mov	[pws+0Ch], eax
test	eax, eax
jnz	short loc_641CF3D2
mov	[esp], pws	
call	_silc_free
xchg	ax, ax
xor	eax, eax
add	esp, 2Ch
pop	pws
pop	stream_0
pop	edi
leave
retn
xor	edi, edi
jmp	loc_641CF38F
align 10h
public _silc_packet_wrap_destroy
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+stream]
mov	[esp], pws	
call	_silc_stream_close
mov	esi, [pws+24h]
mov	[pws+2Ch], esi
and	byte ptr [pws+34h], 0FDh
jmp	loc_641CF509
align 4
movzx	eax, word ptr [pws+32h]
mov	eax, [esi+eax]
mov	[pws+2Ch], eax
mov	edi, [esi+4]
mov	dword ptr [esi+4], 0
mov	dword ptr [esi+1Ch], 0
mov	dword ptr [esi+18h], 0
mov	eax, [esi+8]
mov	[esi+10h], eax
mov	[esi+0Ch], eax
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [edi+4]
mov	[ebp+var_2C], eax
mov	eax, [eax+4]
mov	ecx, [eax+28h]
test	ecx, ecx
jz	loc_641CF524
movzx	ecx, word ptr [eax+34h]
mov	eax, [eax+2Ch]
mov	[eax+ecx], esi
mov	edx, [ebp+var_2C]
mov	eax, [edx+4]
test	byte ptr [eax+38h], 1
jz	short loc_641CF4C3
movzx	ecx, word ptr [eax+36h]
mov	edx, [eax+2Ch]
mov	[esi+ecx], edx
mov	[eax+2Ch], esi
mov	ecx, [ebp+var_2C]
mov	eax, [ecx+4]
movzx	edx, word ptr [eax+34h]
mov	dword ptr [esi+edx], 0
add	dword ptr [eax+38h], 4
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+38h]
and	edx, 0FFFFFFFCh
cmp	edx, 4
jnz	short loc_641CF4FC
mov	edx, [eax+28h]
mov	[eax+30h], edx
and	byte ptr [eax+38h], 0FDh
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	esi, [pws+2Ch]
test	esi, esi
jz	short loc_641CF52C
test	byte ptr [pws+34h], 2
jnz	loc_641CF454
movzx	eax, word ptr [pws+30h]
mov	eax, [esi+eax]
jmp	loc_641CF45B
align 4
mov	[eax+28h], esi
jmp	short loc_641CF4AD
align 4
mov	eax, [pws+8]
test	eax, eax
jz	short loc_641CF53B
mov	[esp], eax	
call	_silc_mutex_free
mov	esi, [pws+18h]
test	esi, esi
jz	short loc_641CF554
mov	eax, [esi]
mov	[esp], eax	
call	_silc_free
mov	[esp], esi	
call	_silc_free
mov	eax, [pws+4]
mov	edx, [eax+60h]
mov	ecx, [eax+60h]
dec	ecx
mov	[eax+60h], ecx
dec	edx
jz	short loc_641CF574
mov	[ebp+stream], pws
add	esp, 3Ch
pop	pws
pop	esi
pop	edi
leave
jmp	_silc_free
align 4
mov	edx, [eax+60h]
mov	edx, [eax+60h]
inc	edx
mov	[eax+60h], edx
mov	[esp], eax	
call	_silc_packet_stream_destroy
mov	[ebp+stream], pws
add	esp, 3Ch
pop	pws
pop	esi
pop	edi
leave
jmp	_silc_free
align 4
public _silc_packet_stream_unlink
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	eax, [ebp+stream]
mov	[ebp+var_1C], eax
mov	edi, [ebp+callbacks]
mov	edx, [ebp+callback_context]
mov	eax, [eax+0Ch]
mov	[esp], eax	
mov	[ebp+var_2C], edx
call	_silc_mutex_lock
mov	ecx, [ebp+var_1C]
mov	eax, [ecx+10h]
mov	ecx, [eax]
mov	[eax+8], ecx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	eax, [ebp+var_1C]
mov	ebx, [eax+10h]
mov	edx, [ebp+var_2C]
jmp	short loc_641CF5FC
align 4
movzx	ecx, word ptr [ebx+0Eh]
mov	ecx, [eax+ecx]
mov	[ebx+8], ecx
mov	[ebx+14h], eax
mov	p, [eax]
test	p, p
jz	short loc_641CF61F
cmp	[p+4], callbacks_0
jz	short loc_641CF658
			
mov	eax, [ebx+14h]
mov	[ebx+18h], eax
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641CF618
test	byte ptr [ebx+10h], 2
jnz	short loc_641CF5E4
movzx	ecx, word ptr [ebx+0Ch]
mov	ecx, [eax+ecx]
jmp	short loc_641CF5EB
mov	dword ptr [ebx+14h], 0
mov	eax, [ebx+10h]
shr	eax, 2
jz	loc_641CF6B4
			
mov	edx, [ebp+var_1C]
mov	eax, [edx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	ecx, [ebp+var_1C]
mov	eax, [ecx+60h]
mov	edx, [ecx+60h]
dec	edx
mov	[ecx+60h], edx
dec	eax
jz	loc_641CF7F3
add	esp, 5Ch
pop	ebx
pop	p
pop	edi
leave
retn
align 4
cmp	[p+8], edx
jnz	short loc_641CF5FC
mov	callbacks_0, [ebx]
mov	eax, edi
mov	[ebx+8], edi
and	byte ptr [ebx+10h], 0FDh
xor	ecx, ecx
test	eax, eax
jz	short loc_641CF690
xchg	ax, ax
test	cl, cl
jz	loc_641CF730
movzx	callback_context_0, word ptr [ebx+0Eh]
mov	edx, [eax+edx]
mov	[ebx+8], edx
cmp	p, [eax]
jz	loc_641CF742
mov	eax, edx
test	eax, eax
jnz	short loc_641CF670
			
mov	eax, [p]
mov	[esp], eax	
call	_silc_free
mov	[esp], p	
call	_silc_free
mov	ecx, [ebp+var_1C]
mov	ebx, [ecx+10h]
mov	eax, [ebx+10h]
shr	eax, 2
jnz	loc_641CF62B
mov	p, [ebx]
mov	[ebx+8], esi
and	byte ptr [ebx+10h], 0FDh
test	esi, esi
jz	short loc_641CF717
lea	esi, [esi+0]
test	byte ptr [ebx+10h], 2
jz	loc_641CF7A4
movzx	eax, word ptr [ebx+0Eh]
mov	eax, [esi+eax]
mov	[ebx+8], eax
mov	eax, [ebx]
test	eax, eax
jz	short loc_641CF6FF
cmp	esi, eax
jz	loc_641CF818
movzx	edi, word ptr [ebx+0Ch]
jmp	short loc_641CF6F6
cmp	esi, ecx
jz	loc_641CF7B0
mov	eax, ecx
lea	edx, [eax+edi]
mov	ecx, [edx]
test	ecx, ecx
jnz	short loc_641CF6EC
cmp	esi, [ebx+4]
jz	loc_641CF7E1
			
mov	[esp], esi	
call	_silc_free
mov	esi, [ebx+8]
test	esi, esi
jnz	short loc_641CF6C4
mov	[esp], ebx	
call	_silc_free
mov	edi, [ebp+var_1C]
mov	dword ptr [edi+10h], 0
jmp	loc_641CF62B
align 10h
movzx	callback_context_0, word ptr [ebx+0Ch]
mov	edx, [eax+edx]
mov	[ebx+8], edx
cmp	p, [eax]
jnz	loc_641CF68A
mov	[ebp+var_4C], edi
test	edi, edi
jz	short loc_641CF77D
cmp	eax, edi
jz	loc_641CF886
movzx	edi, word ptr [ebx+0Ch]
mov	[ebp+var_20], edi
mov	ecx, [ebp+var_4C]
mov	[ebp+var_24], p
mov	p, edi
jmp	short loc_641CF76E
align 4
cmp	eax, edx
jz	loc_641CF823
mov	ecx, edx
lea	edi, [ecx+esi]
mov	edx, [edi]
test	edx, edx
jnz	short loc_641CF764
mov	[ebp+var_4C], ecx
mov	esi, [ebp+var_24]
cmp	eax, [ebx+4]
jz	loc_641CF871
			
cmp	eax, [ebx+14h]
jz	loc_641CF865
cmp	eax, [ebx+18h]
jz	short loc_641CF80C
mov	[esp], eax	
call	_silc_free
jmp	loc_641CF690
align 4
movzx	eax, word ptr [ebx+0Ch]
mov	eax, [esi+eax]
jmp	loc_641CF6D5
mov	[ebp+var_24], edx
mov	ecx, [esi+edi]
mov	edi, [ebp+var_24]
mov	[edi], ecx
test	ecx, ecx
jz	short loc_641CF7CF
test	byte ptr [ebx+10h], 1
jz	short loc_641CF7CF
movzx	edx, word ptr [ebx+0Eh]
mov	edi, [esi+edx]
mov	[ecx+edx], edi
			
cmp	esi, [ebx+8]
jz	short loc_641CF7E9
sub	dword ptr [ebx+10h], 4
cmp	esi, [ebx+4]
jnz	loc_641CF708
mov	[ebx+4], eax
jmp	loc_641CF708
mov	ecx, [ebp+var_24]
mov	edx, [ecx]
mov	[ebx+8], edx
jmp	short loc_641CF7D4
mov	eax, [ecx+60h]
mov	eax, [ecx+60h]
inc	eax
mov	[ecx+60h], eax
mov	[ebp+stream], ecx
add	esp, 5Ch
pop	ebx
pop	p
pop	edi
leave
jmp	_silc_packet_stream_destroy
mov	dword ptr [ebx+18h], 0
jmp	loc_641CF794
movzx	edi, word ptr [ebx+0Ch]
mov	[ebp+var_24], ebx
xor	eax, eax
jmp	short loc_641CF7B3
mov	[ebp+var_4C], ecx
mov	[ebp+var_3C], edi
mov	esi, [ebp+var_24]
mov	ecx, [ebp+var_20]
mov	ecx, [eax+ecx]
mov	[ebp+var_24], ecx
mov	edi, [ebp+var_3C]
mov	[edi], ecx
test	ecx, ecx
jz	short loc_641CF851
test	byte ptr [ebx+10h], 1
jz	short loc_641CF851
movzx	edx, word ptr [ebx+0Eh]
mov	ecx, [eax+edx]
mov	edi, [ebp+var_24]
mov	[edi+edx], ecx
			
cmp	eax, [ebx+8]
jz	short loc_641CF87C
sub	dword ptr [ebx+10h], 4
cmp	eax, [ebx+4]
jnz	loc_641CF786
jmp	short loc_641CF871
mov	dword ptr [ebx+14h], 0
jmp	loc_641CF78F
			
mov	edx, [ebp+var_4C]
mov	[ebx+4], edx
jmp	loc_641CF786
mov	ecx, [ebp+var_3C]
mov	edx, [ecx]
mov	[ebx+8], edx
jmp	short loc_641CF856
mov	[ebp+var_3C], ebx
movzx	edx, word ptr [ebx+0Ch]
mov	[ebp+var_20], edx
mov	[ebp+var_4C], 0
jmp	short loc_641CF82C
align 4
public _silc_packet_wrap_notifier
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+stream]
mov	esi, [ebp+callback]
test	byte ptr [ebx+3Ah], 3
jnz	short loc_641CF8F8
test	callback_0, callback_0
jz	short loc_641CF904
mov	dword ptr [esp+14h], 0FFFFFFFFh
movzx	eax, byte ptr [stream_0+38h]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 186A0h 
mov	[esp+8], stream_0 
mov	dword ptr [esp+4], offset _silc_packet_wrap_cbs	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_packet_stream_link
mov	[stream_0+1Ch],	callback_0
mov	eax, [ebp+context]
mov	[stream_0+20h],	eax
mov	al, 1
add	esp, 20h
pop	stream_0
pop	callback_0
leave
retn
align 4
xor	eax, eax
add	esp, 20h
pop	stream_0
pop	callback_0
leave
retn
align 4
mov	[esp+8], stream_0 
mov	dword ptr [esp+4], offset _silc_packet_wrap_cbs	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_packet_stream_unlink
jmp	short loc_641CF8E3
align 10h
public _silc_packet_wait_uninit
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+waiter]
mov	ebx, [ebp+stream]
mov	eax, [esi]
mov	[esp], eax	
call	_silc_mutex_lock
or	byte ptr [esi+38h], 80h
mov	eax, [esi+4]
mov	[esp], eax	
call	_silc_cond_broadcast
mov	eax, [esi]
mov	[esp], eax	
call	_silc_mutex_unlock
call	_silc_thread_yield
mov	eax, [esi]
mov	[esp], eax	
call	_silc_mutex_lock
mov	[esp+8], esi	
mov	dword ptr [esp+4], offset _silc_packet_wait_cbs	
mov	[esp], ebx	
call	_silc_packet_stream_unlink
mov	ebx, [esi+8]
mov	[esi+10h], ebx
and	byte ptr [esi+18h], 0FDh
jmp	loc_641CFA39
movzx	eax, word ptr [waiter_0+16h]
mov	eax, [ebx+eax]
mov	[waiter_0+10h],	eax
mov	edi, [ebx+4]
mov	dword ptr [ebx+4], 0
mov	dword ptr [ebx+1Ch], 0
mov	dword ptr [ebx+18h], 0
mov	eax, [ebx+8]
mov	[ebx+10h], eax
mov	[ebx+0Ch], eax
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [edi+4]
mov	[ebp+var_2C], eax
mov	eax, [eax+4]
mov	edx, [eax+28h]
test	edx, edx
jz	loc_641CFA54
movzx	ecx, word ptr [eax+34h]
mov	eax, [eax+2Ch]
mov	[eax+ecx], ebx
mov	edx, [ebp+var_2C]
mov	eax, [edx+4]
test	byte ptr [eax+38h], 1
jz	short loc_641CF9F3
movzx	ecx, word ptr [eax+36h]
mov	edx, [eax+2Ch]
mov	[ebx+ecx], edx
mov	[eax+2Ch], ebx
mov	ecx, [ebp+var_2C]
mov	eax, [ecx+4]
movzx	edx, word ptr [eax+34h]
mov	dword ptr [ebx+edx], 0
add	dword ptr [eax+38h], 4
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	edx, [eax+38h]
and	edx, 0FFFFFFFCh
cmp	edx, 4
jnz	short loc_641CFA2C
mov	edx, [eax+28h]
mov	[eax+30h], edx
and	byte ptr [eax+38h], 0FDh
mov	eax, [edi+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	ebx, [waiter_0+10h]
test	ebx, ebx
jz	short loc_641CFA5C
test	byte ptr [waiter_0+18h], 2
jnz	loc_641CF984
movzx	eax, word ptr [waiter_0+14h]
mov	eax, [ebx+eax]
jmp	loc_641CF98B
align 4
mov	[eax+28h], ebx
jmp	short loc_641CF9DD
align 4
mov	eax, [waiter_0]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [waiter_0+4]
mov	[esp], eax	
call	_silc_cond_free
mov	eax, [waiter_0]
mov	[esp], eax	
call	_silc_mutex_free
mov	[ebp+waiter], waiter_0
add	esp, 3Ch
pop	ebx
pop	waiter_0
pop	edi
leave
jmp	_silc_free
align 4
public _silc_packet_wrap_close
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+stream]
mov	al, [ebx+3Ah]
test	al, 1
jnz	short loc_641CFAC8
test	al, 2
jnz	short loc_641CFAD0
mov	ecx, [stream_0+1Ch]
test	ecx, ecx
jz	short loc_641CFAC2
mov	[esp+8], stream_0 
mov	dword ptr [esp+4], offset _silc_packet_wrap_cbs	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_packet_stream_unlink
mov	al, [stream_0+3Ah]
			
or	eax, 1
mov	[stream_0+3Ah],	al
mov	al, 1
add	esp, 14h
pop	stream_0
leave
retn
mov	eax, [stream_0+4]
mov	[esp+4], eax	
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_packet_wait_uninit
mov	al, [stream_0+3Ah]
jmp	short loc_641CFAC2
align 4
public _silc_packet_wrap_read
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+stream]
mov	al, [ebx+3Ah]
test	al, 1
jnz	loc_641CFD64
test	al, 2
jnz	loc_641CFD3C
mov	eax, [stream_0+8]
mov	[esp], eax	
call	_silc_mutex_lock
test	dword ptr [stream_0+34h], 0FFFFFFFCh
jz	loc_641CFE04
mov	eax, [stream_0+24h]
mov	[stream_0+2Ch],	prev
and	byte ptr [stream_0+34h], 0FDh
test	prev, prev
jz	short loc_641CFB37
movzx	edx, word ptr [stream_0+30h]
mov	edx, [prev+edx]
mov	[stream_0+2Ch],	edx
mov	ecx, prev
test	prev, prev
jz	short loc_641CFB6C
lea	edx, [stream_0+24h]
mov	[ebp+p], edx
movzx	edx, word ptr [stream_0+30h]
xor	ecx, ecx
mov	edx, [eax+edx]
mov	esi, [ebp+p]
mov	[esi], edx
test	edx, edx
jz	short loc_641CFB5F
test	byte ptr [stream_0+34h], 1
jnz	loc_641CFDBC
			
cmp	prev, [stream_0+2Ch]
jz	loc_641CFDEC
sub	dword ptr [stream_0+34h], 4
cmp	prev, [stream_0+28h]
jz	loc_641CFDCC
mov	edx, [stream_0+8]
mov	[ebp+packet], prev
mov	[esp], edx	
call	_silc_mutex_unlock
mov	eax, [stream_0+10h]
test	eax, eax
jz	short loc_641CFB94
test	byte ptr [stream_0+3Ah], 4
jz	loc_641CFD84
mov	eax, [ebp+packet]
mov	esi, [eax+0Ch]
mov	edx, [eax+10h]
sub	len, esi
cmp	[ebp+buf_len], len
jb	loc_641CFC78
mov	edi, [ebp+buf]
mov	ecx, len
rep movsb
mov	cl, [stream_0+3Ah]
and	ecx, 0FFFFFFFBh
mov	[stream_0+3Ah],	cl
mov	stream_0, [eax+4]
mov	dword ptr [eax+4], 0
mov	dword ptr [eax+1Ch], 0
mov	dword ptr [eax+18h], 0
mov	ecx, [eax+8]
mov	[eax+10h], ecx
mov	[eax+0Ch], ecx
mov	ecx, [ebx+4]
mov	ecx, [ecx+4]
mov	ecx, [ecx]
mov	[esp], ecx	
mov	[ebp+var_30], eax
mov	[ebp+var_2C], len
call	_silc_mutex_lock
mov	ecx, [ebx+4]
mov	[ebp+p], ecx
mov	esi, [ecx+4]
mov	buf_0, [esi+28h]
test	edi, edi
mov	eax, [ebp+var_30]
mov	edx, [ebp+var_2C]
jz	loc_641CFDD4
movzx	edi, word ptr [esi+34h]
mov	esi, [esi+2Ch]
mov	[esi+edi], eax
mov	edi, [ebp+p]
mov	esi, [edi+4]
test	byte ptr [esi+38h], 1
jnz	loc_641CFD74
mov	[esi+2Ch], eax
mov	esi, [ebp+p]
mov	ecx, [esi+4]
movzx	esi, word ptr [ecx+34h]
mov	dword ptr [eax+esi], 0
add	dword ptr [ecx+38h], 4
mov	eax, [ebx+4]
mov	eax, [eax+4]
mov	ecx, [eax+38h]
and	ecx, 0FFFFFFFCh
cmp	ecx, 4
jnz	short loc_641CFC5C
mov	ecx, [eax+28h]
mov	[eax+30h], ecx
and	byte ptr [eax+38h], 0FDh
mov	eax, [ebx+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
mov	[ebp+var_2C], edx
call	_silc_mutex_unlock
mov	edx, [ebp+var_2C]
mov	eax, len
add	esp, 6Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
			
mov	len, [ebp+buf_len]
mov	edi, [ebp+buf]
mov	ecx, len
rep movsb
mov	cl, [stream_0+3Ah]
test	cl, 2
jnz	loc_641CFBB2
mov	esi, [eax+0Ch]
mov	ecx, [eax+10h]
sub	ecx, esi
cmp	len, ecx
ja	short loc_641CFC9F
add	esi, len
mov	[eax+0Ch], esi
mov	ecx, [stream_0+24h]
test	ecx, ecx
jz	loc_641CFDDC
movzx	esi, word ptr [stream_0+30h]
mov	[eax+esi], ecx
mov	cl, [stream_0+34h]
test	cl, 1
jz	short loc_641CFCCA
mov	esi, [stream_0+24h]
test	esi, esi
jz	short loc_641CFCCA
movzx	ecx, word ptr [stream_0+32h]
mov	[esi+ecx], eax
mov	cl, [stream_0+34h]
			
mov	esi, [stream_0+28h]
test	esi, esi
jz	loc_641CFDFC
mov	[stream_0+24h],	eax
and	ecx, 1
jz	short loc_641CFCE8
movzx	ecx, word ptr [stream_0+32h]
mov	dword ptr [eax+ecx], 0
add	dword ptr [stream_0+34h], 4
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], stream_0 
mov	dword ptr [esp+8], offset _silc_packet_wrap_read_more 
mov	dword ptr [esp+4], 0 
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
mov	[ebp+var_2C], len
call	_silc_schedule_task_add
or	byte ptr [stream_0+3Ah], 4
mov	edx, [ebp+var_2C]
mov	eax, edx
add	esp, 6Ch
pop	stream_0
pop	esi
pop	buf_0
leave
retn
lea	eax, [ebp+packet]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_packet_wait
test	eax, eax
js	short loc_641CFD64
test	byte ptr [stream_0+3Ah], 1
jz	loc_641CFB83
			
mov	edx, 0FFFFFFFEh
mov	eax, len
add	esp, 6Ch
pop	stream_0
pop	esi
pop	edi
leave
retn
align 4
movzx	ecx, word ptr [esi+36h]
mov	edi, [esi+2Ch]
mov	[eax+ecx], edi
jmp	loc_641CFC23
align 4
mov	edx, [stream_0+14h]
mov	[esp+0Ch], edx
mov	edx, [ebp+packet]
add	edx, 8
mov	[esp+8], edx
mov	dword ptr [esp+4], 0
mov	[esp], stream_0
call	eax
mov	eax, [ebp+packet]
mov	esi, [eax+0Ch]
mov	edx, [eax+10h]
sub	len, esi
cmp	[ebp+buf_len], len
jnb	loc_641CFBA8
jmp	loc_641CFC78
align 4
movzx	edi, word ptr [stream_0+32h]
mov	esi, [prev+edi]
mov	[edx+edi], esi
jmp	loc_641CFB5F
align 4
mov	[stream_0+28h],	ecx
jmp	loc_641CFB75
mov	[esi+28h], eax
jmp	loc_641CFC13
movzx	ecx, word ptr [stream_0+30h]
mov	dword ptr [eax+ecx], 0
jmp	loc_641CFCB1
mov	edi, [ebp+p]
mov	edx, [edi]
mov	[stream_0+2Ch],	edx
jmp	loc_641CFB68
align 4
mov	[stream_0+28h],	eax
jmp	loc_641CFCD5
mov	eax, [stream_0+8]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	edx, 0FFFFFFFFh
jmp	loc_641CFC6C
align 4
public _silc_packet_send
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+stream]
movzx	ecx, [ebp+flags] 
movzx	edx, [ebp+type]	
mov	eax, [ebx+38h]
mov	[esp+24h], eax	
mov	eax, [ebx+30h]
mov	[esp+20h], eax	
mov	eax, [ebp+data_len]
mov	[esp+1Ch], eax	
mov	eax, [ebp+data]
mov	[esp+18h], eax	
mov	al, [ebx+66h]
mov	esi, 3Fh
and	esi, eax
mov	[esp+14h], esi	
mov	esi, [ebx+54h]
mov	[esp+10h], esi	
shr	al, 6
movzx	eax, al
mov	[esp+0Ch], eax	
mov	al, [ebx+65h]
mov	esi, 3Fh
and	esi, eax
mov	[esp+8], esi	
mov	esi, [ebx+50h]
mov	[esp+4], esi	
shr	al, 6
movzx	eax, al
mov	[esp], eax	
mov	eax, ebx	
call	_silc_packet_send_raw
test	al, al
jnz	short loc_641CFE9C
			
add	esp, 4Ch
pop	stream_0
pop	esi
pop	edi
leave
retn
test	byte ptr [stream_0+67h], 8
jnz	short loc_641CFF10
mov	esi, [stream_0+8]
			
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641CFEEB
align 10h
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	loc_641CFFE7
cmp	eax, 0FFFFFFFEh
jz	loc_641CFFA3
cmp	eax, 0FFFFFFFFh
jz	short loc_641CFEF8
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641CFEEB
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	ecx, edx
jnz	short loc_641CFEB0
mov	ret, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
			
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 4Ch
pop	stream_0
pop	esi
pop	edi
leave
retn
align 10h
mov	ret, [stream_0+8]
mov	esi, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	loc_641CFEA5
cmp	[ebp+connected], 0
jnz	loc_641CFEA5
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641CFF84
align 10h
mov	eax, [stream_0+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641D0023
cmp	eax, 0FFFFFFFFh
jz	short loc_641CFEF8
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641CFF84
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	edx, ecx
jnz	short loc_641CFF40
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
jmp	loc_641CFE94
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+8]
xor	eax, eax
jmp	loc_641CFE94
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+4]
xor	eax, eax
jmp	loc_641CFE94
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	short loc_641CFFB7
align 10h
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0DCh
mov	esi, [ebp+status]
mov	ebx, [ebp+context]
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	al, [ebx+67h]
test	al, 2
jnz	loc_641D0178
test	status_0, status_0
jnz	loc_641D0118
mov	edi, [context_0+8]
mov	status_0, [context_0+2Ch]
test	esi, esi
jz	loc_641D0326
			
mov	eax, [esi+0Ch]
mov	edx, [esi+8]
mov	ecx, eax
sub	ecx, edx
cmp	ecx, 7FFh
jbe	loc_641D03B7
			
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], edi	
call	_silc_socket_stream_is_udp
test	al, al
jz	short loc_641D00A1
cmp	[ebp+connected], 0
jz	loc_641D0221
mov	edx, [esi+8]
mov	eax, [esi+0Ch]
sub	eax, edx
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	[esp], edi	
call	_silc_stream_read
test	eax, eax
jle	loc_641D0582
mov	ecx, [esi+8]
mov	edx, [esi+0Ch]
sub	edx, ecx
cmp	eax, edx
ja	short loc_641D00D3
lea	eax, [ecx+eax]
mov	[esi+8], eax
			
mov	eax, [context_0+60h]
mov	eax, [context_0+60h]
inc	eax
mov	[context_0+60h], eax
mov	eax, context_0
call	_silc_packet_read_process
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
nop
mov	eax, [context_0+60h]
mov	edx, [context_0+60h]
dec	edx
mov	[context_0+60h], edx
dec	eax
jnz	loc_641D0183
mov	eax, [context_0+60h]
mov	eax, [context_0+60h]
inc	eax
mov	[context_0+60h], eax
mov	[esp], context_0 
call	_silc_packet_stream_destroy
jmp	short loc_641D0183
align 4
dec	status_0
jnz	short loc_641D0178
mov	edx, [context_0+20h]
cmp	edx, [context_0+1Ch]
jz	short loc_641D0178
test	al, 8
jnz	short loc_641D0190
mov	esi, [context_0+8]
mov	ecx, [context_0+24h]
jmp	short loc_641D016B
align 10h
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	loc_641D04A3
cmp	eax, 0FFFFFFFEh
jz	loc_641D0535
cmp	eax, 0FFFFFFFFh
jz	short loc_641D0178
mov	ecx, [context_0+24h]
mov	edx, [context_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D016B
add	edx, eax
mov	[context_0+20h], edx
			
cmp	ecx, edx
jnz	short loc_641D0130
mov	eax, [context_0+1Ch]
mov	[context_0+24h], eax
mov	[context_0+20h], eax
			
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
			
add	esp, 0DCh
pop	context_0
pop	remote
pop	edi
leave
retn
align 10h
mov	eax, [context_0+8]
mov	esi, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	loc_641D03AC
cmp	[ebp+connected], 0
jnz	loc_641D03AC
mov	edx, [context_0+20h]
mov	ecx, [context_0+24h]
jmp	short loc_641D0204
align 10h
mov	eax, [context_0+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641D0577
cmp	eax, 0FFFFFFFFh
jz	short loc_641D0178
mov	ecx, [context_0+24h]
mov	edx, [context_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D0204
add	edx, eax
mov	[context_0+20h], edx
			
cmp	edx, ecx
jnz	short loc_641D01C0
mov	eax, [context_0+1Ch]
mov	[context_0+24h], eax
mov	[context_0+20h], eax
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641D0183
mov	edx, [esi+8]
mov	eax, [esi+0Ch]
sub	eax, edx
mov	[esp+14h], eax	
mov	[esp+10h], edx	
lea	eax, [ebp+remote_port]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 40h 
lea	eax, [ebp+remote_ip_addr]
mov	[esp+4], eax	
mov	[esp], edi	
call	_silc_net_udp_receive
mov	[ebp+var_AC], eax
test	eax, eax
js	loc_641D05DA
lea	ecx, [ebp+remote_ip_addr]
mov	[esp+10h], ecx
mov	eax, [ebp+remote_port]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aDS 
mov	dword ptr [esp+4], 40h 
lea	edi, [ebp+str]
mov	[esp], edi	
call	_silc_snprintf
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_lock
lea	eax, [ebp+ret_context]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	[esp+4], edi	
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	eax, [eax+3Ch]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	loc_641D0436
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [context_0+14h]
test	eax, eax
jz	loc_641D04DD
mov	eax, [eax]
mov	[esp], eax	
call	_silc_free
mov	edi, [context_0+14h]
lea	eax, [ebp+remote_ip_addr]
mov	[esp], eax	
call	_strdup
mov	[edi], eax
mov	eax, [context_0+14h]
mov	edx, [ebp+remote_port]
mov	[eax+4], dx
mov	edx, [esi+8]
mov	eax, [esi+0Ch]
sub	eax, edx
cmp	[ebp+var_AC], eax
ja	loc_641D00D3
add	edx, [ebp+var_AC]
mov	[esi+8], edx
jmp	loc_641D00D3
mov	eax, [context_0+4]
mov	eax, [eax+8]
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	eax, [context_0+4]
mov	eax, [eax+8]
mov	edx, [eax+14h]
mov	[eax+18h], edx
mov	edx, [eax+8]
test	edx, edx
jz	loc_641D048B
test	byte ptr [eax+10h], 2
jz	loc_641D0497
movzx	ecx, word ptr [eax+0Eh]
mov	ecx, [edx+ecx]
mov	[eax+8], ecx
mov	[eax+14h], edx
mov	esi, [edx]
test	esi, esi
jnz	loc_641D006E
mov	eax, 10400h	
call	_silc_buffer_alloc_1
mov	esi, eax
test	eax, eax
jz	loc_641D0178
mov	eax, [eax]
mov	[esi+8], eax
mov	[esi+4], eax
mov	eax, [context_0+4]
mov	eax, [eax+8]	
mov	edx, esi	
call	_silc_dlist_add
jmp	loc_641D006E
align 4
			
mov	edx, [context_0+20h]
mov	ecx, [context_0+24h]
jmp	loc_641D016B
mov	ecx, [esi]
mov	[ebp+ptr], ecx
mov	ecx, eax
sub	ecx, [ebp+ptr]
lea	eax, [ecx+800h]
mov	[ebp+var_AC], eax
cmp	ecx, eax
jnb	loc_641D0084
mov	ecx, [esi+4]
mov	[ebp+var_B0], ecx
mov	[esp+4], eax	
mov	eax, [ebp+ptr]
mov	[esp], eax	
mov	[ebp+var_B4], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_B4]
jz	loc_641D0084
mov	[esi], eax
mov	ecx, [ebp+var_B0]
sub	ecx, [ebp+ptr]
add	ecx, eax
mov	[esi+4], ecx
sub	edx, [ebp+var_B0]
add	edx, ecx
mov	[esi+8], edx
add	eax, [ebp+var_AC]
mov	[esi+0Ch], eax
jmp	loc_641D0084
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	eax, [eax]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebp+ret_context]
mov	eax, [eax+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
mov	esi, [ebp+ret_context]
mov	eax, [context_0+60h]
mov	eax, [context_0+60h]
inc	eax
mov	[context_0+60h], eax
test	remote,	remote
jz	loc_641D00DD
mov	eax, remote	
call	_silc_packet_read_process
mov	eax, [remote+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641D00F0
mov	dword ptr [eax+14h], 0
jmp	loc_641D037B
movzx	ecx, word ptr [eax+0Ch]
mov	ecx, [edx+ecx]
jmp	loc_641D036B
mov	eax, [context_0+1Ch]
mov	[context_0+24h], eax
mov	[context_0+20h], eax
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [context_0+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], context_0
mov	[esp], eax
call	dword ptr [edx+4]
jmp	loc_641D0183
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[context_0+14h], eax
test	eax, eax
jnz	loc_641D02E0
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [context_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 6
mov	[esp+4], context_0
mov	[esp], eax
call	dword ptr [edx+8]
jmp	loc_641D0183
mov	eax, [context_0+1Ch]
mov	[context_0+24h], eax
mov	[context_0+20h], eax
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [context_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], context_0
mov	[esp], eax
call	dword ptr [edx+8]
jmp	loc_641D0183
mov	eax, [context_0+1Ch]
mov	[context_0+24h], eax
mov	[context_0+20h], eax
jmp	short loc_641D0549
mov	edx, [context_0+0Ch]
mov	[esp], edx	
mov	[ebp+var_B4], eax
call	_silc_mutex_unlock
mov	eax, [ebp+var_B4]
test	eax, eax
jz	short loc_641D05F3
inc	eax
jz	loc_641D0183
mov	eax, [esi]
mov	[esi+8], eax
mov	[esi+4], eax
mov	eax, [context_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [context_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 0
mov	[esp+4], context_0
mov	[esp], eax
call	dword ptr [edx+8]
jmp	loc_641D0183
mov	eax, [context_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
cmp	[ebp+var_AC], 0FFFFFFFFh
jnz	short loc_641D05A4
jmp	loc_641D0183
mov	eax, [esi]
mov	[esi+8], eax
mov	[esi+4], eax
jmp	loc_641D04B7
public _silc_packet_send_va
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+stream]
mov	al, [ebp+type]
mov	[ebp+var_39], al
mov	al, [ebp+flags]
mov	[ebp+var_3A], al
lea	esi, [ebp+ap]
lea	edx, [ebp+buf]
mov	ecx, 10h
xor	eax, eax
mov	edi, edx
rep stosb
mov	[esp+4], esi	
mov	[esp], edx	
call	_silc_buffer_format_vp
test	eax, eax
js	loc_641D07E0
mov	esi, [ebp+buf.data]
movzx	ecx, [ebp+var_3A] 
movzx	edx, [ebp+var_39] 
mov	eax, [stream_0+38h]
mov	[esp+24h], eax	
mov	eax, [stream_0+30h]
mov	[esp+20h], eax	
mov	eax, [ebp+buf.tail]
sub	eax, esi
mov	[esp+1Ch], eax	
mov	[esp+18h], esi	
mov	al, [stream_0+66h]
mov	esi, 3Fh
and	esi, eax
mov	[esp+14h], esi	
mov	esi, [stream_0+54h]
mov	[esp+10h], esi	
shr	al, 6
movzx	eax, al
mov	[esp+0Ch], eax	
mov	al, [stream_0+65h]
mov	esi, 3Fh
and	esi, eax
mov	[esp+8], esi	
mov	esi, [stream_0+50h]
mov	[esp+4], esi	
shr	al, 6
movzx	eax, al
mov	[esp], eax	
mov	eax, stream_0	
call	_silc_packet_send_raw
test	al, al
jnz	short loc_641D06E0
xor	stream_0, stream_0
			
mov	eax, [ebp+buf.head]
mov	[ebp+buf.end], 0
mov	[ebp+buf.tail],	0
mov	[ebp+buf.data],	0
mov	[ebp+buf.head],	0
mov	[esp], eax	
call	_silc_free
mov	al, bl
add	esp, 6Ch
pop	ret
pop	esi
pop	edi
leave
retn
align 10h
test	byte ptr [stream_0+67h], 8
jnz	short loc_641D0750
mov	esi, [stream_0+8]
			
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641D072F
align 4
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	loc_641D082E
cmp	eax, 0FFFFFFFEh
jz	loc_641D07EC
cmp	eax, 0FFFFFFFFh
jz	short loc_641D073C
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D072F
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	ecx, edx
jnz	short loc_641D06F4
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
			
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	bl, 1
jmp	loc_641D06AD
align 10h
mov	eax, [stream_0+8]
mov	esi, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	short loc_641D06E9
cmp	[ebp+connected], 0
jnz	loc_641D06E9
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641D07C0
align 4
mov	eax, [stream_0+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641D086A
cmp	eax, 0FFFFFFFFh
jz	short loc_641D073C
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D07C0
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	edx, ecx
jnz	short loc_641D077C
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	bl, 1
jmp	loc_641D06AD
align 10h
xor	stream_0, stream_0
mov	al, bl
add	esp, 6Ch
pop	ret
pop	esi
pop	edi
leave
retn
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+8]
jmp	loc_641D06AB
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+4]
xor	stream_0, stream_0
jmp	loc_641D06AD
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	short loc_641D0800
align 4
public _silc_packet_set_keys
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+stream]
cmp	[ebp+rekey], 0
jz	short loc_641D0900
mov	eax, [stream_0+38h]
mov	[esp+24h], eax	
mov	eax, [stream_0+30h]
mov	[esp+20h], eax	
mov	dword ptr [esp+1Ch], 0 
mov	dword ptr [esp+18h], 0 
mov	dl, [stream_0+66h]
mov	eax, edx
and	eax, 3Fh
mov	[esp+14h], eax	
mov	eax, [stream_0+54h]
mov	[esp+10h], eax	
shr	dl, 6
movzx	edx, dl
mov	[esp+0Ch], edx	
mov	dl, [stream_0+65h]
mov	eax, edx
and	eax, 3Fh
mov	[esp+8], eax	
mov	eax, [stream_0+50h]
mov	[esp+4], eax	
shr	dl, 6
movzx	edx, dl
mov	[esp], edx	
xor	ecx, ecx	
mov	edx, 17h	
mov	eax, stream_0	
call	_silc_packet_send_raw
test	al, al
jnz	loc_641D0A38
			
add	esp, 4Ch
pop	stream_0
pop	esi
pop	edi
leave
retn
align 10h
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_lock
			
test	byte ptr [stream_0+67h], 4
jz	loc_641D09D0
mov	eax, [stream_0+34h]
test	eax, eax
jz	short loc_641D0931
mov	ecx, [ebp+send_key]
test	ecx, ecx
jz	short loc_641D0931
mov	[esp], eax	
call	_silc_cipher_free
mov	eax, [stream_0+30h]
mov	[stream_0+34h],	eax
			
mov	eax, [stream_0+44h]
test	eax, eax
jz	short loc_641D094D
mov	edx, [ebp+receive_key]
test	edx, edx
jz	short loc_641D094D
mov	[esp], eax	
call	_silc_cipher_free
mov	eax, [stream_0+40h]
mov	[stream_0+44h],	eax
			
mov	eax, [stream_0+3Ch]
test	eax, eax
jz	short loc_641D0969
mov	edi, [ebp+send_hmac]
test	edi, edi
jz	short loc_641D0969
mov	[esp], eax	
call	_silc_hmac_free
mov	eax, [stream_0+38h]
mov	[stream_0+3Ch],	eax
			
mov	eax, [stream_0+4Ch]
test	eax, eax
jz	short loc_641D0985
mov	esi, [ebp+receive_hmac]
test	esi, esi
jz	short loc_641D0985
mov	[esp], eax	
call	_silc_hmac_free
mov	eax, [stream_0+48h]
mov	[stream_0+4Ch],	eax
			
mov	ecx, [ebp+send_key]
test	ecx, ecx
jz	short loc_641D0992
mov	eax, [ebp+send_key]
mov	[stream_0+30h],	eax
mov	edx, [ebp+receive_key]
test	edx, edx
jz	short loc_641D099F
mov	eax, [ebp+receive_key]
mov	[stream_0+40h],	eax
mov	eax, [ebp+send_hmac]
test	eax, eax
jz	short loc_641D09AC
mov	eax, [ebp+send_hmac]
mov	[stream_0+38h],	eax
mov	edi, [ebp+receive_hmac]
test	edi, edi
jz	short loc_641D09B9
mov	eax, [ebp+receive_hmac]
mov	[stream_0+48h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 4Ch
pop	stream_0
pop	esi
pop	edi
leave
retn
align 10h
mov	eax, [stream_0+30h]
test	eax, eax
jz	short loc_641D09E6
mov	ecx, [ebp+send_key]
test	ecx, ecx
jz	short loc_641D09E6
mov	[esp], eax	
call	_silc_cipher_free
			
mov	eax, [stream_0+40h]
test	eax, eax
jz	short loc_641D09FC
mov	edx, [ebp+receive_key]
test	edx, edx
jz	short loc_641D09FC
mov	[esp], eax	
call	_silc_cipher_free
			
mov	eax, [stream_0+38h]
test	eax, eax
jz	short loc_641D0A12
mov	edi, [ebp+send_hmac]
test	edi, edi
jz	short loc_641D0A12
mov	[esp], eax	
call	_silc_hmac_free
			
mov	eax, [stream_0+48h]
test	eax, eax
jz	loc_641D0985
mov	esi, [ebp+receive_hmac]
test	esi, esi
jz	loc_641D0985
mov	[esp], eax	
call	_silc_hmac_free
jmp	loc_641D0985
align 4
test	byte ptr [stream_0+67h], 8
jz	loc_641D0AC8
mov	eax, [stream_0+8]
mov	esi, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	short loc_641D0ACB
cmp	[ebp+connected], 0
jnz	short loc_641D0ACB
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641D0AB4
align 4
mov	eax, [stream_0+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641D0B9D
cmp	eax, 0FFFFFFFFh
jz	loc_641D090B
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D0AB4
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	edx, ecx
jnz	short loc_641D0A6C
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	loc_641D090B
align 4
mov	esi, [stream_0+8]
			
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
jmp	short loc_641D0B0B
align 4
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	short loc_641D0B61
cmp	eax, 0FFFFFFFEh
jz	short loc_641D0B1D
cmp	eax, 0FFFFFFFFh
jz	loc_641D090B
mov	ecx, [stream_0+24h]
mov	edx, [stream_0+20h]
mov	edi, ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D0B0B
add	edx, eax
mov	[stream_0+20h],	edx
			
cmp	ecx, edx
jnz	short loc_641D0AD4
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	loc_641D090B
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+8]
xor	eax, eax
jmp	loc_641D08F7
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [stream_0+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [stream_0+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], stream_0
mov	[esp], eax
call	dword ptr [edx+4]
xor	eax, eax
jmp	loc_641D08F7
mov	eax, [stream_0+1Ch]
mov	[stream_0+24h],	eax
mov	[stream_0+20h],	eax
jmp	short loc_641D0B31
public _silc_packet_wrap_write
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	esi, [ebp+stream]
mov	edi, [ebp+data]
mov	edx, [esi+10h]
test	edx, edx
jz	loc_641D0C4C
mov	eax, [stream_0+18h]
mov	ecx, [eax]
mov	[eax+8], ecx
mov	[eax+4], ecx
mov	ecx, [stream_0+14h]
mov	[esp+0Ch], ecx
mov	[esp+8], eax
mov	dword ptr [esp+4], 1
mov	[esp], stream_0
call	edx
test	al, al
jz	short loc_641D0C4C
mov	ret, [stream_0+18h]
mov	edx, [eax+4]
mov	dword ptr [esp+24h], 1Dh
mov	ecx, [ebp+data_len]
mov	[esp+20h], ecx
mov	[esp+1Ch], data_0
mov	dword ptr [esp+18h], 0Ch
mov	eax, [eax+8]
sub	eax, edx
mov	[esp+14h], eax
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 0Ch
movzx	eax, byte ptr [stream_0+39h]
mov	[esp+8], eax	
movzx	eax, byte ptr [stream_0+38h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_packet_send_va
test	al, al
jz	short loc_641D0CB6
mov	eax, [ebp+data_len]
			
add	esp, 4Ch
pop	ebx
pop	esi
pop	data_0
leave
retn
align 4
			
mov	ebx, [stream_0+4]
movzx	ecx, byte ptr [stream_0+39h] 
movzx	edx, byte ptr [stream_0+38h] 
mov	ret, [ebx+38h]
mov	[esp+24h], eax	
mov	eax, [ebx+30h]
mov	[esp+20h], eax	
mov	eax, [ebp+data_len]
mov	[esp+1Ch], eax	
mov	[esp+18h], data_0 
mov	al, [ebx+66h]
and	eax, 3Fh
mov	[esp+14h], eax	
mov	eax, [ebx+54h]
mov	[esp+10h], eax	
mov	al, [ebx+66h]
shr	al, 6
movzx	eax, al
mov	[esp+0Ch], eax	
mov	al, [ebx+65h]
and	eax, 3Fh
mov	[esp+8], eax	
mov	eax, [ebx+50h]
mov	[esp+4], eax	
mov	al, [ebx+65h]
shr	al, 6
movzx	eax, al
mov	[esp], eax	
mov	eax, ebx	
call	_silc_packet_send_raw
test	al, al
jnz	short loc_641D0CC4
mov	eax, 0FFFFFFFEh
add	esp, 4Ch
pop	ebx
pop	stream_0
pop	data_0
leave
retn
align 4
test	byte ptr [ebx+67h], 8
jz	loc_641D0D5C
mov	eax, [ebx+8]
mov	stream_0, [eax+8]
lea	eax, [ebp+connected]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_socket_stream_is_udp
test	al, al
jz	short loc_641D0D5F
cmp	[ebp+connected], 0
jnz	short loc_641D0D5F
mov	ecx, [ebx+24h]
mov	edx, [ebx+20h]
jmp	short loc_641D0D3C
align 4
mov	eax, [ebx+14h]
sub	ecx, edx
mov	[esp+10h], ecx	
mov	[esp+0Ch], edx	
movzx	edx, word ptr [eax+4]
mov	[esp+8], edx	
mov	eax, [eax]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_net_udp_send
cmp	eax, 0FFFFFFFEh
jz	loc_641D0E27
cmp	eax, 0FFFFFFFFh
jz	short loc_641D0D49
mov	ecx, [ebx+24h]
mov	edx, [ebx+20h]
mov	data_0,	ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D0D3C
add	edx, eax
mov	[ebx+20h], edx
			
cmp	ecx, edx
jnz	short loc_641D0CF8
mov	eax, [ebx+1Ch]
mov	[ebx+24h], eax
mov	[ebx+20h], eax
			
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641D0C3E
align 4
mov	stream_0, [ebx+8]
			
mov	ecx, [ebx+24h]
mov	edx, [ebx+20h]
jmp	short loc_641D0D9B
align 4
sub	ecx, edx
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_stream_write
test	eax, eax
jz	short loc_641D0DE8
cmp	eax, 0FFFFFFFEh
jz	short loc_641D0DA1
cmp	eax, 0FFFFFFFFh
jz	short loc_641D0D49
mov	ecx, [ebx+24h]
mov	edx, [ebx+20h]
mov	data_0,	ecx
sub	edi, edx
cmp	eax, edi
ja	short loc_641D0D9B
add	edx, eax
mov	[ebx+20h], edx
			
cmp	ecx, edx
jnz	short loc_641D0D68
jmp	short loc_641D0D40
mov	eax, [ebx+1Ch]
mov	[ebx+24h], eax
mov	[ebx+20h], eax
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebx+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [ebx+18h]
mov	[esp+10h], ecx
mov	ecx, [eax+10h]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 1
mov	[esp+4], ebx
mov	[esp], eax
call	dword ptr [edx+8]
mov	eax, 0FFFFFFFEh
jmp	loc_641D0C41
mov	eax, [ebx+1Ch]
mov	[ebx+24h], eax
mov	[ebx+20h], eax
mov	eax, [ebx+0Ch]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebx+4]
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	ecx, [ebx+18h]
mov	[esp+0Ch], ecx
mov	ecx, [eax+10h]
mov	[esp+8], ecx
mov	[esp+4], ebx
mov	[esp], eax
call	dword ptr [edx+4]
mov	eax, 0FFFFFFFEh
jmp	loc_641D0C41
mov	eax, [ebx+1Ch]
mov	[ebx+24h], eax
mov	[ebx+20h], eax
jmp	short loc_641D0DB5
align 4
public _silc_public_key_payload_decode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+data]
mov	ebx, [ebp+data_len]
mov	esi, [ebp+public_key]
test	esi, esi
jz	short loc_641D0EAA
mov	[ebp+buf.head],	data_0
mov	[ebp+buf.data],	data_0
add	data_0,	data_len_0
mov	[ebp+buf.end], eax
mov	[ebp+buf.tail],	eax
mov	dword ptr [esp+18h], 1Dh
lea	eax, [ebp+pk_type]
mov	[esp+14h], eax
mov	dword ptr [esp+10h], 3
lea	eax, [ebp+pk_type+2]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], 3
mov	dword ptr [esp+4], 19h
lea	edi, [ebp+buf]
mov	[esp], edi	
call	_silc_buffer_unformat
test	eax, eax
js	short loc_641D0EAA
movzx	ret, word ptr [ebp+pk_type+2]
sub	data_len_0, 4
cmp	eax, ebx
ja	short loc_641D0EAA
mov	edx, [ebp+pk_type]
dec	edx
cmp	dx, 4
jbe	short loc_641D0EB4
			
xor	ret, ret
add	esp, 4Ch
pop	ebx
pop	public_key_0
pop	edi
leave
retn
mov	dword ptr [esp+10h], 1Dh
mov	[esp+0Ch], eax
lea	eax, [ebp+pk]
mov	[esp+8], eax
mov	dword ptr [esp+4], 0Ch
mov	[esp], edi	
call	_silc_buffer_unformat
test	eax, eax
js	short loc_641D0EAA
mov	[esp+0Ch], public_key_0	
movzx	ret, word ptr [ebp+pk_type+2]
mov	[esp+8], pk_len_0 
mov	pk_len_0, [ebp+pk]
mov	[esp+4], eax	
movzx	eax, word ptr [ebp+pk_type]
mov	[esp], pk_type_0 
call	_silc_pkcs_public_key_alloc
jmp	short loc_641D0EAC
public _silc_public_key_payload_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+public_key]
test	ebx, ebx
jnz	short loc_641D0F18
xor	public_key_0, public_key_0
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	pk
pop	type
leave
retn
mov	[esp], public_key_0
call	_silc_pkcs_get_type
mov	edi, eax
lea	eax, [ebp+pk_len]
mov	[esp+4], eax	
mov	[esp], public_key_0 
call	_silc_pkcs_public_key_encode
mov	esi, eax
test	eax, eax
jz	short loc_641D0F0C
mov	edx, [ebp+pk_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
mov	[ebp+var_2C], edx
call	_silc_calloc
mov	public_key_0, eax
test	eax, eax
mov	edx, [ebp+var_2C]
jz	loc_641D1002
add	edx, 4
jz	loc_641D1011
mov	dword ptr [esp+4], 1 
mov	[esp], edx	
mov	[ebp+var_2C], edx
call	_silc_calloc
mov	[ebp+var_3C], eax
mov	[buffer], eax
test	eax, eax
mov	edx, [ebp+var_2C]
jz	short loc_641D1002
mov	[buffer+4], eax
mov	[buffer+8], eax
mov	ecx, eax
add	ecx, edx
mov	[buffer+0Ch], ecx
mov	eax, ecx
sub	eax, [ebp+var_3C]
cmp	edx, eax
ja	short loc_641D0F9F
mov	[buffer+8], ecx
mov	eax, [ebp+pk_len]
mov	dword ptr [esp+20h], 1Dh
mov	[esp+1Ch], eax
mov	[esp+18h], pk
mov	dword ptr [esp+14h], 0Ch
mov	[esp+10h], type
mov	dword ptr [esp+0Ch], 3
mov	[esp+8], eax
mov	dword ptr [esp+4], 3
mov	[esp], buffer	
call	_silc_buffer_format
test	eax, eax
js	short loc_641D0FF0
mov	[esp], pk	
call	_silc_free
mov	eax, buffer
add	esp, 6Ch
pop	buffer
pop	pk
pop	type
leave
retn
mov	eax, [buffer]
mov	[esp], eax	
call	_silc_free
mov	[esp], buffer	
call	_silc_free
			
mov	[esp], pk	
call	_silc_free
xor	buffer,	buffer
jmp	loc_641D0F0E
mov	ecx, [buffer+8]
jmp	short loc_641D0F9C
align 4
public _silc_status_get_args
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0BCh
mov	ebx, [ebp+args]
mov	esi, [ebp+ret_arg1]
mov	edi, [ebp+ret_arg2]
mov	al, [ebp+status]
mov	[ebp+var_A9], al
test	esi, esi
jz	loc_641D1277
test	ret_arg2_0, ret_arg2_0
jz	loc_641D1277
mov	[esp], args_0	
call	_silc_argument_get_arg_num
cmp	eax, 3
ja	short loc_641D1064 
test	num, num
jz	short loc_641D1066
mov	al, [ebp+var_A9]
sub	eax, 0Ah
cmp	al, 29h		
jbe	short loc_641D1074
			
xor	tmp, tmp
			
add	esp, 0BCh
pop	ebx
pop	ret_arg1_0
pop	ret_arg2_0
leave
retn
align 4
movzx	eax, al
jmp	ds:off_6426394C[eax*4] 
align 10h
			
lea	eax, [ebp+len]	
mov	[esp+8], eax	
mov	dword ptr [esp+4], 2 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	short loc_641D1064 
lea	args_0,	[ebp+id_0]
mov	[esp+8], ebx	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_id_payload_parse_id
test	al, al
jnz	short loc_641D1064 
mov	dword ptr [esp+4], 1
jmp	loc_641D1219
align 4
			
lea	edx, [ebp+len]	
mov	[esp+8], edx	
mov	dword ptr [esp+4], 2 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	short loc_641D1064 
lea	edx, [ebp+id]
mov	[esp+8], edx	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_id_payload_parse_id
test	al, al
jnz	loc_641D1064	
movzx	eax, [ebp+id.type]
mov	[esp+4], eax	
lea	eax, [ebp+id]
mov	[esp], eax	
call	_silc_id_dup
mov	[ret_arg1_0], eax
test	eax, eax
jz	loc_641D1064	
lea	edx, [ebp+len]
mov	[esp+8], edx	
mov	dword ptr [esp+4], 3 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	loc_641D126D
lea	edx, [ebp+id]
mov	[esp+8], edx	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_id_payload_parse_id
test	al, al
jnz	loc_641D1064	
movzx	eax, [ebp+id.type]
mov	[esp+4], eax	
lea	eax, [ebp+id]
mov	[esp], eax	
call	_silc_id_dup
mov	[ret_arg2_0], eax
test	eax, eax
jz	loc_641D126D
mov	eax, 2
jmp	loc_641D1066
align 4
			
lea	eax, [ebp+len]	
mov	[esp+8], eax	
mov	dword ptr [esp+4], 2 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	loc_641D1064	
lea	args_0,	[ebp+id_1]
mov	[esp+8], ebx	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_id_payload_parse_id
test	al, al
jnz	loc_641D1064	
mov	dword ptr [esp+4], 3
jmp	short loc_641D1219
align 4
			
lea	eax, [ebp+len]	
mov	[esp+8], eax	
mov	dword ptr [esp+4], 2 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	loc_641D1064	
lea	args_0,	[ebp+id_2]
mov	[esp+8], ebx	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_id_payload_parse_id
test	al, al
jnz	loc_641D1064	
mov	dword ptr [esp+4], 2 
			
mov	[esp], ebx	
call	_silc_id_dup
mov	[ret_arg1_0], eax
test	eax, eax
setnz	al
movzx	eax, al
jmp	loc_641D1066
			
lea	eax, [ebp+len]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 2 
mov	[esp], args_0	
call	_silc_argument_get_arg_type
test	eax, eax
jz	loc_641D1064	
mov	edx, [ebp+len]
mov	[esp+4], edx	
mov	[esp], tmp	
call	_silc_memdup
mov	[ret_arg1_0], eax
test	eax, eax
setnz	al
movzx	eax, al
jmp	loc_641D1066
			
mov	tmp, 1
jmp	loc_641D1066
			
mov	dword ptr [esp+8], 21h 
mov	dword ptr [esp+4], offset aSilcstatus_c	
mov	dword ptr [esp], offset	aRet_arg1Ret_ar	
call	__assert
align 4
public _silc_async_halt
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+op]
mov	edx, [eax+4]
test	edx, edx
jz	short loc_641D12BC
mov	ecx, [op_0+8]
mov	[esp+8], ecx
mov	dword ptr [esp+4], 1
mov	[esp], op_0
call	edx
leave
retn
align 4
xor	op_0, op_0
leave
retn
public _silc_async_resume
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+op]
mov	edx, [eax+4]
test	edx, edx
jz	short loc_641D12E8
mov	ecx, [op_0+8]
mov	[esp+8], ecx
mov	dword ptr [esp+4], 0
mov	[esp], op_0
call	edx
leave
retn
align 4
xor	op_0, op_0
leave
retn
public _silc_async_init
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+op]
mov	edx, [ebp+abort_cb]
mov	[eax], edx
mov	edx, [ebp+pause_cb]
mov	[eax+4], edx
mov	edx, [ebp+context]
mov	[eax+8], edx
and	byte ptr [eax+0Ch], 0FEh
mov	al, 1
leave
retn
align 4
public _silc_async_get_context
push	ebp
mov	ebp, esp
mov	eax, [ebp+op]
mov	eax, [eax+8]
leave
retn
align 4
public _silc_async_free
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+op]
test	byte ptr [eax+0Ch], 1
jnz	short locret_641D132C
leave
retn
align 4
leave
jmp	_silc_free
align 4
public _silc_async_alloc
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short locret_641D1367
mov	edx, [ebp+abort_cb]
mov	[op], edx
mov	edx, [ebp+pause_cb]
mov	[op+4],	edx
mov	edx, [ebp+context]
mov	[op+8],	edx
or	byte ptr [op+0Ch], 1
leave
retn
align 4
public _silc_async_abort
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+op]
mov	esi, [ebp+abort_cb]
mov	edi, [ebp+context]
mov	eax, [ebx]
test	eax, eax
jz	short loc_641D1390
mov	edx, [op_0+8]
mov	[esp+4], edx
mov	[esp], op_0
call	eax
test	abort_cb_0, abort_cb_0
jz	short loc_641D139D
mov	[esp+4], context_0
mov	[esp], op_0
call	abort_cb_0
test	byte ptr [op_0+0Ch], 1
jnz	short loc_641D13AC
add	esp, 1Ch
pop	op_0
pop	abort_cb_0
pop	context_0
leave
retn
align 4
mov	[ebp+op], op_0
add	esp, 1Ch
pop	op_0
pop	abort_cb_0
pop	context_0
leave
jmp	_silc_free
align 4
public _silc_buffer_sstrformat
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edx, [ebp+dst]
mov	eax, [edx]
mov	[ebp+var_24], eax
mov	esi, [edx+0Ch]
sub	len, eax
mov	eax, [edx+4]
mov	[ebp+var_28], eax
lea	eax, [ebp+arg_8]
mov	[ebp+va], eax
mov	ebx, edx
jmp	short loc_641D143A
align 4
mov	ecx, 0FFFFFFFFh
mov	edi, string
xor	eax, eax
repne scasb
not	ecx
dec	ecx
lea	eax, [ecx+len]
mov	[ebp+var_1C], eax
inc	eax
mov	[esp+0Ch], eax	
mov	eax, [dst_0]
mov	[esp+8], eax	
lea	eax, [len+1]
mov	[esp+4], eax	
mov	eax, [ebp+stack]
mov	[esp], eax	
mov	[ebp+var_2C], edx
mov	[ebp+var_30], ecx
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_2C]
mov	ecx, [ebp+var_30]
jz	short loc_641D146C
mov	[dst_0], eax
add	eax, len
mov	edi, eax
mov	len, edx
rep movsb
mov	eax, [dst_0]
mov	edx, [ebp+var_1C]
mov	byte ptr [eax+edx], 0
mov	string,	edx
			
add	[ebp+va], 4
mov	eax, [ebp+va]
mov	string,	[eax-4]
test	string,	string
jz	short loc_641D143A
cmp	string,	1Dh
jnz	short loc_641D13E4
mov	ecx, [dst_0]
add	ecx, len
mov	[dst_0+0Ch], ecx
mov	eax, [ebp+var_28]
sub	eax, [ebp+var_24]
add	eax, [dst_0]
mov	[dst_0+4], eax
mov	[dst_0+8], ecx
mov	eax, len
add	esp, 3Ch
pop	dst_0
pop	len
pop	edi
leave
retn
or	len, 0FFFFFFFFh
jmp	short loc_641D1462
align 4
public _silc_buffer_strformat
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+dst]
mov	eax, [ebx]
mov	[ebp+var_24], eax
mov	edx, [ebx+0Ch]
sub	len, eax
mov	eax, [ebx+4]
mov	[ebp+var_28], eax
lea	eax, [ebp+arg_4]
mov	[ebp+va], eax
mov	esi, len
jmp	short loc_641D14E4
align 4
mov	ecx, 0FFFFFFFFh
mov	edi, string
xor	eax, eax
repne scasb
not	ecx
dec	ecx
lea	eax, [ecx+len]
mov	[ebp+var_1C], eax
inc	eax
mov	[esp+4], eax	
mov	eax, [dst_0]
mov	[esp], eax	
mov	[ebp+var_2C], edx
mov	[ebp+var_30], ecx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_2C]
mov	ecx, [ebp+var_30]
jz	short loc_641D1518
mov	[dst_0], eax
add	eax, len
mov	edi, eax
mov	len, edx
rep movsb
mov	eax, [dst_0]
mov	edx, [ebp+var_1C]
mov	byte ptr [eax+edx], 0
mov	string,	edx
			
add	[ebp+va], 4
mov	eax, [ebp+va]
mov	string,	[eax-4]
test	string,	string
jz	short loc_641D14E4
cmp	string,	1Dh
jnz	short loc_641D149C
mov	string,	len
mov	ecx, [dst_0]
add	ecx, len
mov	[dst_0+0Ch], ecx
mov	eax, [ebp+var_28]
sub	eax, [ebp+var_24]
add	eax, [dst_0]
mov	[dst_0+4], eax
mov	[dst_0+8], ecx
mov	eax, len
add	esp, 3Ch
pop	dst_0
pop	esi
pop	edi
leave
retn
or	edx, 0FFFFFFFFh
jmp	short loc_641D150E
align 10h
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D156A
test	len, len
jz	short loc_641D156A
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641D1573
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	len, [eax+len]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
xor	sb, sb
jmp	short loc_641D156A
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	esi, stack
mov	ebx, size
mov	stack, [sb+8]
mov	size, [sb+4]
mov	[ebp+var_24], ecx
mov	edi, eax
sub	edi, ecx
mov	[ebp+var_1C], edi
cmp	size, edi
jbe	short loc_641D15FC
mov	ecx, [sb+0Ch]
mov	[ebp+var_3C], ecx
sub	ecx, eax
add	edi, ecx
cmp	size, edi
ja	short loc_641D15C0
			
sub	size, [ebp+var_1C]
cmp	ebx, ecx
ja	short loc_641D15FC
lea	ebx, [eax+ebx]
mov	[sb+8],	ebx
mov	al, 1
add	esp, 4Ch
pop	size
pop	stack
pop	edi
leave
retn
align 10h
mov	edi, [sb]
mov	[ebp+ptr], edi
mov	edi, [ebp+var_3C]
sub	edi, [ebp+ptr]
mov	[ebp+old_size],	edi
mov	edi, size
sub	edi, [ebp+var_1C]
add	edi, [ebp+old_size]
sub	edi, ecx
mov	[ebp+var_20], edi
test	stack, stack
jz	loc_641D166C
mov	edi, [ebp+old_size]
cmp	[ebp+var_20], edi
ja	short loc_641D1608
mov	edi, eax
sub	edi, [ebp+var_24]
mov	[ebp+var_1C], edi
mov	ecx, [ebp+var_3C]
sub	ecx, eax
jmp	short loc_641D15A7
align 4
			
mov	al, 1
add	esp, 4Ch
pop	size
pop	stack
pop	edi
leave
retn
align 4
mov	eax, [ebp+var_20]
mov	[esp+0Ch], eax	
mov	ecx, [ebp+ptr]
mov	[esp+8], ecx	
mov	[esp+4], edi	
mov	[esp], stack	
mov	[ebp+var_30], sb
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_30]
jz	short loc_641D1699
mov	[sb], eax
mov	stack, [ebp+var_24]
sub	esi, [ebp+ptr]
lea	esi, [eax+esi]
mov	[sb+4],	esi
mov	ecx, [ebp+var_1C]
add	ecx, esi
mov	[ebp+var_1C], ecx
mov	[sb+8],	ecx
mov	ecx, [ebp+var_20]
lea	edi, [eax+ecx]
mov	[sb+0Ch], edi
mov	eax, [ebp+var_1C]
mov	[ebp+var_24], esi
mov	[ebp+var_3C], edi
mov	edi, eax
sub	edi, [ebp+var_24]
mov	[ebp+var_1C], edi
mov	ecx, [ebp+var_3C]
sub	ecx, eax
jmp	loc_641D15A7
align 4
mov	ecx, [ebp+old_size]
cmp	edi, ecx
jbe	loc_641D15EB
mov	[esp+4], edi	
mov	edi, [ebp+ptr]
mov	[esp], edi	
mov	[ebp+var_30], sb
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_30]
jz	short loc_641D16BF
mov	[edx], eax
mov	stack, [ebp+var_24]
sub	esi, edi
jmp	short loc_641D1634
mov	edi, [ebp+var_20]
mov	[esp+4], edi	
mov	[esp], stack	
call	_silc_smalloc
test	eax, eax
mov	edx, [ebp+var_30]
jz	short loc_641D16BF
mov	stack, [edx]
mov	ecx, [sb+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D162C
			
xor	eax, eax
jmp	loc_641D15B6
align 4
public _silc_buffer_sformat_vp
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+dst]
mov	[ebp+advance], 0
mov	[ebp+flen], 0
nop
			
mov	offst, [ebp+ap]
add	ap_0, 4
cmp	dword ptr [ap_0-4], 1Dh	
jbe	short loc_641D1708
			
cmp	[ebp+advance], 0
jz	loc_641D1EF2
mov	[ebp+flen], 0FFFFFFFFh
			
mov	offst, [ebp+flen]
add	esp, 5Ch
pop	dst_0
pop	x
pop	edi
leave
retn
mov	edx, [ap_0-4]
jmp	ds:off_642639F4[edx*4] 
align 4
			
mov	edx, [ebp+stack] 
test	edx, edx
jz	loc_641D1ED4
lea	tmp_len, [ap_0+0Ch]
mov	[ebp+ap], ecx
mov	edx, [eax+8]
mov	[esp+0Ch], edx
mov	edx, [eax+4]
mov	[esp+8], edx
mov	[esp+4], dst_0
mov	x, [ebp+stack]
mov	[esp], esi
call	dword ptr [eax]
cmp	eax, 0
jl	short fail	
jz	short loc_641D16E0
mov	ecx, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, ecx
cmp	tmp_len, edx
ja	short loc_641D1757
add	ecx, offst
mov	[dst_0+4], ecx
add	[ebp+flen], offst
jmp	short loc_641D16E0
			
mov	[ebp+advance], 1
jmp	short loc_641D16E3
align 4
			
lea	tmp_len, [ap_0+4] 
mov	[ebp+ap], ecx
mov	eax, [eax]
test	offst, offst
jz	loc_641D16E0
cmp	offst, 1
jle	loc_641D1E99
mov	ecx, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, ecx
cmp	offst, edx
jbe	short loc_641D1752
jmp	fail		
align 10h
			
mov	x, [ap_0]	
lea	edx, [ap_0+8]
mov	[ebp+ap], edx
mov	eax, [eax+4]
mov	[ebp+var_2C], eax
test	x, x
jz	loc_641D16E0
test	eax, eax
jz	loc_641D16E0
mov	tmp_len, eax	
mov	edx, dst_0	
mov	eax, [ebp+stack] 
call	_silc_buffer_senlarge
test	al, al
jz	fail		
mov	ecx, [ebp+var_2C]
add	[ebp+flen], ecx
mov	eax, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, eax
cmp	ecx, edx
ja	loc_641D16E0
mov	edi, eax
jmp	loc_641D190D
align 10h
			
lea	edx, [ap_0+4]	
mov	[ebp+ap], edx
mov	eax, [eax]
mov	[ebp+var_2C], eax
test	eax, eax
jz	loc_641D16E0
mov	edx, [eax+8]
mov	eax, [eax+4]
cmp	edx, eax
jz	loc_641D16E0
sub	edx, eax
lea	tmp_len, [edx+4] 
mov	edx, dst_0	
mov	eax, [ebp+stack] 
call	_silc_buffer_senlarge
test	al, al
jz	fail		
mov	x, [ebp+var_2C]
mov	eax, [esi+8]
sub	eax, [esi+4]
mov	edi, [ebp+flen]
lea	edi, [eax+edi+4]
mov	[ebp+flen], edi
shr	eax, 18h
mov	[ebp+xf], al
mov	eax, [esi+8]
sub	eax, [esi+4]
shr	eax, 10h
mov	[ebp+xf+1], al
mov	eax, [esi+8]
sub	eax, [esi+4]
shr	eax, 8
mov	[ebp+xf+2], al
mov	eax, [esi+8]
sub	eax, [esi+4]
mov	[ebp+xf+3], al
mov	eax, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, eax
cmp	edx, 3
jbe	short loc_641D187D
mov	edx, dword ptr [ebp+xf]
mov	[eax], edx
mov	eax, [dst_0+4]
mov	ecx, [dst_0+8]
mov	edx, ecx
sub	edx, eax
cmp	edx, 3
jbe	short loc_641D187D
add	eax, 4
mov	[dst_0+4], eax
mov	edx, ecx
sub	edx, eax
			
mov	ecx, [ebp+var_2C]
mov	esi, [ecx+4]
mov	ecx, [ecx+8]
sub	ecx, esi
cmp	ecx, edx
ja	loc_641D16E0
mov	edi, eax
rep movsb
mov	edx, [ebp+var_2C]
mov	eax, [edx+8]
sub	eax, [edx+4]
mov	ecx, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, ecx
cmp	eax, edx
ja	loc_641D16E0
lea	eax, [ecx+eax]
mov	[dst_0+4], eax
jmp	loc_641D16E0
			
lea	edi, [ap_0+4]
mov	[ebp+ap], edi
mov	x, [eax]
test	esi, esi
jz	loc_641D16E0
xor	ap_0, ap_0
mov	tmp_len, 0FFFFFFFFh
mov	edi, esi
repne scasb
not	ecx
dec	ecx		
mov	[ebp+var_2C], ecx
jz	loc_641D16E0
mov	edx, dst_0	
mov	eax, [ebp+stack] 
call	_silc_buffer_senlarge
test	al, al
jz	fail		
mov	eax, [ebp+var_2C]
add	[ebp+flen], eax
mov	eax, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, eax
cmp	[ebp+var_2C], edx
ja	loc_641D16E0
mov	edi, eax
mov	ecx, [ebp+var_2C]
rep movsb
mov	edx, [dst_0+4]
mov	eax, [dst_0+8]
sub	eax, edx
cmp	[ebp+var_2C], eax
ja	loc_641D16E0
add	edx, [ebp+var_2C]
mov	[dst_0+4], edx
jmp	loc_641D16E0
align 4
			
lea	x, [ap_0+8]	
mov	[ebp+ap], esi
mov	edx, [eax]
mov	[ebp+var_34], edx
mov	eax, [eax+4]
mov	[ebp+old_size],	eax
mov	eax, [dst_0+8]
mov	edx, [dst_0+4]
mov	tmp_len, eax
sub	ecx, edx
mov	[ebp+var_2C], ecx
cmp	ecx, 7
ja	short loc_641D19B0
mov	ecx, [dst_0+0Ch]
mov	esi, ecx
sub	esi, eax
mov	edi, [ebp+var_2C]
add	edi, esi
cmp	edi, 7
ja	short loc_641D199F
mov	edi, [dst_0]
mov	[ebp+size], edi
mov	edi, ecx
sub	edi, [ebp+size]
mov	[ebp+ptr], edi
mov	edi, 8
sub	edi, esi
sub	edi, [ebp+var_2C]
add	edi, [ebp+ptr]
mov	[ebp+var_48], edi
mov	esi, [ebp+stack]
test	esi, esi
jz	loc_641D2182
mov	esi, [ebp+var_48]
cmp	[ebp+ptr], esi
jb	loc_641D2033
			
mov	esi, eax
sub	esi, edx
mov	[ebp+var_2C], esi
mov	esi, ecx
sub	esi, eax
mov	ecx, 8
sub	ecx, [ebp+var_2C]
cmp	ecx, esi
ja	short loc_641D19B0
add	eax, ecx
mov	[dst_0+8], eax
			
add	[ebp+flen], 8
mov	ecx, [ebp+old_size]
shr	ecx, 18h
mov	[ebp+xf], cl
mov	ecx, [ebp+old_size]
shr	ecx, 10h
mov	[ebp+xf+1], cl
mov	ecx, [ebp+old_size]
shr	ecx, 8
mov	[ebp+xf+2], cl
mov	cl, byte ptr [ebp+old_size]
mov	[ebp+xf+3], cl
mov	ecx, [ebp+var_34]
shr	ecx, 18h
mov	byte ptr [ebp+var_1D], cl
mov	ecx, [ebp+var_34]
shr	ecx, 10h
mov	byte ptr [ebp+var_1D+1], cl
mov	ecx, [ebp+var_34]
shr	ecx, 8
mov	byte ptr [ebp+var_1D+2], cl
mov	cl, byte ptr [ebp+var_34]
mov	byte ptr [ebp+var_1D+3], cl
sub	eax, edx
cmp	eax, 7
jbe	loc_641D16E0
mov	eax, dword ptr [ebp+xf]
mov	[edx], eax
mov	eax, [ebp+var_1D]
mov	[edx+4], eax
jmp	short loc_641D1A8C
align 10h
			
lea	edx, [ap_0+8]	
mov	[ebp+ap], edx
mov	edi, [eax]
mov	x, [eax+4]
mov	tmp_len, 8	
mov	edx, dst_0	
mov	eax, [ebp+stack] 
call	_silc_buffer_senlarge
test	al, al
jz	fail		
add	[ebp+flen], 8
mov	eax, esi
shr	eax, 18h
mov	[ebp+xf], al
mov	eax, esi
shr	eax, 10h
mov	[ebp+xf+1], al
mov	eax, esi
shr	eax, 8
mov	[ebp+xf+2], al
mov	ecx, esi
mov	[ebp+xf+3], cl
mov	eax, edi
shr	eax, 18h
mov	byte ptr [ebp+var_1D], al
mov	eax, edi
shr	eax, 10h
mov	byte ptr [ebp+var_1D+1], al
mov	eax, edi
shr	eax, 8
mov	byte ptr [ebp+var_1D+2], al
mov	eax, edi
mov	byte ptr [ebp+var_1D+3], al
mov	eax, [dst_0+4]
mov	edx, [dst_0+8]
sub	edx, eax
cmp	edx, 7
jbe	loc_641D16E0
mov	edx, dword ptr [ebp+xf]
mov	[eax], edx
mov	edx, [ebp+var_1D]
mov	[eax+4], edx
mov	edx, [dst_0+4]
mov	eax, [dst_0+8]
sub	eax, edx
cmp	eax, 7
jbe	loc_641D16E0
add	edx, 8
mov	[dst_0+4], edx
jmp	loc_641D16E0
			
lea	edx, [ap_0+4]
mov	[ebp+ap], edx
mov	eax, [eax]
mov	[ebp+var_34], eax
mov	eax, [dst_0+8]
mov	edx, [dst_0+4]
mov	tmp_len, eax
sub	ecx, edx
mov	[ebp+var_2C], ecx
cmp	ecx, 1
ja	short loc_641D1B2B
mov	ecx, [dst_0+0Ch]
mov	x, ecx
sub	esi, eax
mov	[ebp+ptr], esi
add	esi, [ebp+var_2C]
cmp	esi, 1
ja	short loc_641D1B19
mov	edi, [dst_0]
mov	[ebp+old_size],	edi
mov	edi, ecx
sub	edi, [ebp+old_size]
mov	esi, 2
sub	esi, [ebp+ptr]
mov	[ebp+ptr], esi
mov	esi, [ebp+var_2C]
sub	[ebp+ptr], esi
mov	esi, [ebp+ptr]
add	esi, edi
mov	[ebp+ptr], esi
cmp	[ebp+stack], 0
jz	loc_641D2154
cmp	edi, [ebp+ptr]
jb	loc_641D1FA2
			
mov	esi, eax
sub	esi, edx
mov	[ebp+var_2C], esi
sub	ecx, eax
mov	[ebp+ptr], ecx
mov	ecx, 2
sub	ecx, [ebp+var_2C]
cmp	[ebp+ptr], ecx
jb	short loc_641D1B2B
add	eax, ecx
mov	[dst_0+8], eax
			
mov	edi, [ebp+var_34]
add	[ebp+flen], 2
mov	x, edi
sar	si, 8
mov	ecx, esi
mov	[ebp+xf], cl
mov	ecx, x
mov	[ebp+xf+1], cl
sub	eax, edx
cmp	eax, 1
jbe	loc_641D16E0
mov	ax, word ptr [ebp+xf]
mov	[edx], ax
mov	edx, [dst_0+4]
mov	eax, [dst_0+8]
sub	eax, edx
cmp	eax, 1
jbe	loc_641D16E0
add	edx, 2
mov	[dst_0+4], edx
jmp	loc_641D16E0
			
lea	x, [ap_0+4]
mov	[ebp+ap], esi
mov	eax, [eax]
mov	[ebp+var_2C], eax
mov	eax, [dst_0+8]
mov	[ebp+old_size],	eax
mov	edx, [dst_0+4]
mov	esi, edx
cmp	eax, edx
jnz	loc_641D1EB0
mov	tmp_len, [dst_0+0Ch]
cmp	ecx, eax
jz	loc_641D1E3C
mov	esi, eax
mov	edi, eax
sub	edi, esi
mov	[ebp+var_34], edi
mov	edi, 1
sub	edi, [ebp+var_34]
mov	[ebp+var_34], edi
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641D1BBD
add	eax, edi
mov	[ebp+old_size],	eax
mov	[dst_0+8], eax
mov	esi, edx
inc	[ebp+flen]
cmp	esi, [ebp+old_size]
jz	loc_641D16E0
lea	esi, [esi+0]
mov	al, byte ptr [ebp+var_2C]
mov	[esi], al
mov	eax, [dst_0+4]
cmp	[dst_0+8], eax
jz	loc_641D16E0
			
inc	eax
mov	[dst_0+4], eax
jmp	loc_641D16E0
align 4
			
lea	x, [ap_0+4]	
mov	[ebp+ap], esi
mov	esi, [eax]
mov	tmp_len, 4	
mov	edx, dst_0	
mov	eax, [ebp+stack] 
call	_silc_buffer_senlarge
test	al, al
jz	fail		
add	[ebp+flen], 4
mov	eax, x
sar	eax, 18h
mov	[ebp+xf], al
mov	eax, x
sar	eax, 10h
mov	[ebp+xf+1], al
mov	eax, x
sar	eax, 8
mov	[ebp+xf+2], al
mov	eax, x
mov	[ebp+xf+3], al
mov	edx, [dst_0+4]
mov	eax, [dst_0+8]
sub	eax, edx
cmp	eax, 3
jbe	loc_641D16E0
mov	eax, dword ptr [ebp+xf]
mov	[edx], eax
mov	edx, [dst_0+4]
mov	eax, [dst_0+8]
sub	eax, edx
cmp	eax, 3
jbe	loc_641D16E0
add	edx, 4
mov	[dst_0+4], edx
jmp	loc_641D16E0
align 4
			
lea	edx, [ap_0+4]	
mov	[ebp+ap], edx
mov	eax, [eax]
mov	[ebp+var_34], eax
mov	eax, [dst_0+8]
mov	edx, [dst_0+4]
mov	tmp_len, eax
sub	ecx, edx
mov	[ebp+var_2C], ecx
cmp	ecx, 1
ja	short loc_641D1CDF
mov	ecx, [dst_0+0Ch]
mov	x, ecx
sub	esi, eax
mov	[ebp+ptr], esi
add	esi, [ebp+var_2C]
cmp	esi, 1
ja	short loc_641D1CCD
mov	edi, [dst_0]
mov	[ebp+old_size],	edi
mov	edi, ecx
sub	edi, [ebp+old_size]
mov	esi, 2
sub	esi, [ebp+ptr]
mov	[ebp+ptr], esi
mov	esi, [ebp+var_2C]
sub	[ebp+ptr], esi
mov	esi, [ebp+ptr]
add	esi, edi
mov	[ebp+ptr], esi
cmp	[ebp+stack], 0
jz	loc_641D2201
cmp	edi, [ebp+ptr]
jb	loc_641D2082
			
mov	esi, eax
sub	esi, edx
mov	[ebp+var_2C], esi
sub	ecx, eax
mov	[ebp+ptr], ecx
mov	ecx, 2
sub	ecx, [ebp+var_2C]
cmp	ecx, [ebp+ptr]
ja	short loc_641D1CDF
add	eax, ecx
mov	[dst_0+8], eax
			
mov	edi, [ebp+var_34]
add	[ebp+flen], 2
mov	x, edi
shr	si, 8
jmp	loc_641D1B38
align 4
			
lea	x, [ap_0+4]	
mov	[ebp+ap], esi
mov	eax, [eax]
mov	[ebp+var_34], eax
mov	eax, [dst_0+8]
mov	edx, [dst_0+4]
mov	edi, eax
sub	edi, edx
mov	[ebp+var_2C], edi
cmp	edi, 3
ja	short loc_641D1D6F
mov	tmp_len, [dst_0+0Ch]
mov	esi, ecx
sub	esi, eax
add	edi, esi
cmp	edi, 3
ja	short loc_641D1D5E
mov	edi, [dst_0]
mov	[ebp+ptr], edi
mov	edi, ecx
sub	edi, [ebp+ptr]
mov	[ebp+old_size],	edi
mov	edi, 4
sub	edi, esi
sub	edi, [ebp+var_2C]
add	edi, [ebp+old_size]
mov	[ebp+size], edi
mov	esi, [ebp+stack]
test	esi, esi
jz	loc_641D20D3
mov	edi, [ebp+size]
cmp	[ebp+old_size],	edi
jb	loc_641D1F11
			
mov	esi, eax
sub	esi, edx
mov	[ebp+var_2C], esi
mov	esi, ecx
sub	esi, eax
mov	ecx, 4
sub	ecx, [ebp+var_2C]
cmp	esi, ecx
jb	short loc_641D1D6F
add	eax, ecx
mov	[dst_0+8], eax
			
add	[ebp+flen], 4
mov	tmp_len, [ebp+var_34]
shr	ecx, 18h
mov	[ebp+xf], cl
mov	ecx, [ebp+var_34]
shr	ecx, 10h
mov	[ebp+xf+1], cl
mov	ecx, [ebp+var_34]
shr	ecx, 8
mov	[ebp+xf+2], cl
mov	cl, byte ptr [ebp+var_34]
mov	[ebp+xf+3], cl
sub	eax, edx
cmp	eax, 3
ja	loc_641D1C39
jmp	loc_641D16E0
			
lea	x, [ap_0+4]
mov	[ebp+ap], esi
mov	eax, [eax]
mov	[ebp+var_19], al
mov	eax, [dst_0+8]
mov	[ebp+var_34], eax
mov	edx, [dst_0+4]
mov	esi, edx
cmp	eax, edx
jnz	loc_641D1EB8
mov	tmp_len, [dst_0+0Ch]
cmp	ecx, eax
jz	loc_641D1E6C
mov	esi, eax
mov	edi, eax
sub	edi, esi
mov	[ebp+var_2C], edi
mov	edi, 1
sub	edi, [ebp+var_2C]
mov	[ebp+var_2C], edi
sub	ecx, eax
cmp	edi, ecx
ja	short loc_641D1DF1
add	eax, edi
mov	[ebp+var_34], eax
mov	[dst_0+8], eax
mov	esi, edx
inc	[ebp+flen]
cmp	[ebp+var_34], esi
jz	loc_641D16E0
mov	al, [ebp+var_19]
mov	[esi], al
mov	eax, [dst_0+4]
cmp	[dst_0+8], eax
jnz	loc_641D1BDD
jmp	loc_641D16E0
align 4
			
cmp	[ebp+advance], 0 
jnz	loc_641D16FD
mov	ap_0, [ebp+flen]
neg	eax
add	eax, [dst_0+4]
cmp	eax, [dst_0]
jb	loc_641D16FD
mov	[dst_0+4], eax
mov	eax, [ebp+flen]
add	esp, 5Ch
pop	dst_0
pop	x
pop	edi
leave
retn
mov	esi, [dst_0]
mov	edi, ecx
sub	edi, esi
mov	[ebp+var_34], edi
inc	edi
mov	[ebp+old_size],	edi
cmp	[ebp+stack], 0
jz	loc_641D21C9
mov	edi, [ebp+old_size]
cmp	[ebp+var_34], edi
jb	loc_641D1FF3
			
mov	[ebp+old_size],	eax
mov	esi, edx
jmp	loc_641D1B9B
align 4
mov	esi, [dst_0]
mov	edi, ecx
sub	edi, esi
mov	[ebp+var_2C], edi
inc	edi
mov	[ebp+var_34], edi
cmp	[ebp+stack], 0
jz	loc_641D211C
mov	edi, [ebp+var_34]
cmp	[ebp+var_2C], edi
jb	loc_641D1F62
			
mov	[ebp+var_34], eax
mov	esi, edx
jmp	loc_641D1DCF
mov	edx, [dst_0+4]
add	edx, offst
cmp	edx, [dst_0]
jb	short loc_641D1EA5
mov	[dst_0+4], edx
sub	[ebp+flen], offst
jmp	loc_641D16E0
align 10h
inc	[ebp+flen]
jmp	loc_641D1BCC
inc	[ebp+flen]
mov	al, [ebp+var_19]
mov	[esi], al
mov	eax, [dst_0+4]
cmp	[dst_0+8], eax
jnz	loc_641D1BDD
jmp	loc_641D16E0
align 4
lea	edx, [ap_0+0Ch]
mov	[ebp+ap], edx
mov	edx, [eax+8]
mov	[esp+8], edx
mov	edx, [eax+4]
mov	[esp+4], edx
mov	[esp], dst_0
call	dword ptr [eax]
jmp	loc_641D173F
mov	offst, [ebp+flen]
neg	eax
add	eax, [dst_0+4]
cmp	eax, [dst_0]
jb	loc_641D16F6
mov	[dst_0+4], eax
mov	[ebp+flen], 0FFFFFFFFh
jmp	loc_641D16FD
mov	[esp+0Ch], edi	
mov	eax, [ebp+ptr]
mov	[esp+8], eax	
mov	ecx, [ebp+old_size]
mov	[esp+4], ecx	
mov	esi, [ebp+stack]
mov	[esp], esi	
mov	[ebp+var_4C], edx
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	loc_641D22FB
mov	[dst_0], eax
sub	edx, [ebp+ptr]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	edi, [ebp+var_2C]
lea	ecx, [edx+edi]
mov	[dst_0+8], ecx
mov	edi, [ebp+size]
lea	esi, [eax+edi]
mov	[dst_0+0Ch], esi
mov	eax, ecx
mov	ecx, esi
jmp	loc_641D1D53
mov	[esp+0Ch], edi	
mov	[esp+8], esi	
mov	eax, [ebp+var_2C]
mov	[esp+4], eax	
mov	edx, [ebp+stack]
mov	[esp], edx	
call	_silc_srealloc
test	eax, eax
jz	loc_641D2283
mov	[dst_0], eax
mov	esi, [ebp+var_2C]
lea	edx, [eax+esi]
mov	[dst_0+4], edx
mov	[dst_0+8], edx
mov	edi, [ebp+var_34]
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, edx
jmp	loc_641D1E8F
mov	eax, [ebp+ptr]
mov	[esp+0Ch], eax	
mov	ecx, [ebp+old_size]
mov	[esp+8], ecx	
mov	[esp+4], edi	
mov	esi, [ebp+stack]
mov	[esp], esi	
mov	[ebp+var_4C], edx
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	loc_641D222F
mov	[dst_0], eax
sub	edx, [ebp+old_size]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	esi, [ebp+var_2C]
lea	ecx, [edx+esi]
mov	[dst_0+8], ecx
mov	edi, [ebp+ptr]
lea	esi, [eax+edi]
mov	[dst_0+0Ch], esi
mov	eax, ecx
mov	ecx, esi
jmp	loc_641D1B0D
mov	[esp+0Ch], edi	
mov	[esp+8], esi	
mov	eax, [ebp+var_34]
mov	[esp+4], eax	
mov	edx, [ebp+stack]
mov	[esp], edx	
call	_silc_srealloc
test	eax, eax
jz	loc_641D22AA
mov	[dst_0], eax
mov	esi, [ebp+var_34]
lea	edx, [eax+esi]
mov	[dst_0+4], edx
mov	[dst_0+8], edx
mov	edi, [ebp+old_size]
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, edx
jmp	loc_641D1E5F
mov	[esp+0Ch], esi	
mov	edi, [ebp+size]
mov	[esp+8], edi	
mov	eax, [ebp+ptr]
mov	[esp+4], eax	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
mov	[ebp+var_4C], edx
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	loc_641D2259
mov	[dst_0], eax
sub	edx, [ebp+size]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	edi, [ebp+var_2C]
lea	esi, [edx+edi]
mov	[dst_0+8], esi
mov	edi, [ebp+var_48]
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, esi
jmp	loc_641D1994
mov	eax, [ebp+ptr]
mov	[esp+0Ch], eax	
mov	ecx, [ebp+old_size]
mov	[esp+8], ecx	
mov	[esp+4], edi	
mov	esi, [ebp+stack]
mov	[esp], esi	
mov	[ebp+var_4C], edx
call	_silc_srealloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	loc_641D22D1
mov	[dst_0], eax
sub	edx, [ebp+old_size]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	esi, [ebp+var_2C]
lea	ecx, [edx+esi]
mov	[dst_0+8], ecx
mov	edi, [ebp+ptr]
lea	esi, [eax+edi]
mov	[dst_0+0Ch], esi
mov	eax, ecx
mov	ecx, esi
jmp	loc_641D1CC1
cmp	[ebp+old_size],	edi
jnb	loc_641D1D53
mov	[esp+4], edi	
mov	eax, [ebp+ptr]
mov	[esp], eax	
mov	[ebp+var_4C], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	[dst_0], eax
sub	edx, [ebp+ptr]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	esi, [ebp+var_2C]
lea	ecx, [edx+esi]
mov	[dst_0+8], ecx
lea	esi, [eax+edi]
mov	[dst_0+0Ch], esi
mov	eax, ecx
mov	ecx, esi
jmp	loc_641D1D53
cmp	[ebp+var_2C], edi
jnb	loc_641D1E8F
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_realloc
test	eax, eax
jz	fail		
mov	[dst_0], eax
mov	ecx, [ebp+var_2C]
lea	edx, [eax+ecx]
mov	[dst_0+4], edx
mov	[dst_0+8], edx
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, edx
jmp	loc_641D1E8F
cmp	edi, esi
jnb	loc_641D1B0D
mov	[esp+4], esi	
mov	edi, [ebp+old_size]
mov	[esp], edi	
mov	[ebp+var_4C], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	[dst_0], eax
sub	edx, edi
jmp	loc_641D1FD2
cmp	[ebp+ptr], edi
jnb	loc_641D1994
mov	[esp+4], edi	
mov	eax, [ebp+size]
mov	[esp], eax	
mov	[ebp+var_4C], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	[dst_0], eax
sub	edx, [ebp+size]
lea	edx, [eax+edx]
mov	[dst_0+4], edx
mov	ecx, [ebp+var_2C]
lea	esi, [edx+ecx]
mov	[dst_0+8], esi
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, esi
jmp	loc_641D1994
cmp	[ebp+var_34], edi
jnb	loc_641D1E5F
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_realloc
test	eax, eax
jz	fail		
mov	[dst_0], eax
mov	ecx, [ebp+var_34]
lea	edx, [eax+ecx]
mov	[dst_0+4], edx
mov	[dst_0+8], edx
lea	ecx, [eax+edi]
mov	[dst_0+0Ch], ecx
mov	eax, edx
jmp	loc_641D1E5F
cmp	edi, esi
jnb	loc_641D1CC1
mov	[esp+4], esi	
mov	edi, [ebp+old_size]
mov	[esp], edi	
mov	[ebp+var_4C], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	[dst_0], eax
sub	edx, edi
jmp	loc_641D20B2
mov	edi, [ebp+ptr]
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_smalloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D1FCD
mov	[esp+4], esi	
mov	esi, [ebp+stack]
mov	[esp], esi	
call	_silc_smalloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D205E
mov	[esp+4], edi	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
call	_silc_smalloc
test	eax, eax
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D1F84
mov	[esp+4], edi	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
call	_silc_smalloc
test	eax, eax
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D2015
mov	edi, [ebp+ptr]
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_smalloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D20AD
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_smalloc
test	eax, eax
mov	edx, [ebp+var_4C]
jz	fail		
mov	esi, [dst_0]
mov	ecx, [dst_0+0Ch]
sub	ecx, esi
mov	edi, eax
rep movsb
jmp	loc_641D1F3C
align 4
public _silc_buffer_sformat
push	ebp
mov	ebp, esp
sub	esp, 18h
lea	ret, [ebp+ap]
mov	[esp+8], ret	
mov	ret, [ebp+dst]
mov	[esp+4], ret	
mov	ret, [ebp+stack]
mov	[esp], ret	
call	_silc_buffer_sformat_vp
leave
retn
align 4
public _silc_buffer_sunformat_vp
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+src]
mov	edx, [ebp+ap]
mov	eax, [ebx+4]
mov	[ebp+start_ptr], eax
mov	[ebp+advance], 0
lea	x, [x+0]
			
mov	x, ap_0
add	ap_0, 4
cmp	dword ptr [ap_0-4], 1Dh	
jbe	short loc_641D2388
			
mov	offst, [ebp+start_ptr]
cmp	eax, [src_0]
jb	short loc_641D2379
mov	[src_0+4], eax
mov	eax, 0FFFFFFFFh
add	esp, 5Ch
pop	src_0
pop	x
pop	edi
leave
retn
align 4
mov	offst, [ap_0-4]
jmp	ds:off_64263A6C[eax*4] 
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	[ebp+len3], esi
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	eax, 7
jbe	short fail	
test	esi, esi
jz	short loc_641D2416
movzx	eax, byte ptr [ecx+4]
mov	[ebp+len3_0], eax
mov	[ebp+var_1C], 0
mov	esi, [ebp+len3_0]
mov	edi, [ebp+var_1C]
shld	edi, esi, 18h
shl	esi, 18h
mov	[ebp+len3_0], esi
mov	[ebp+var_1C], edi
movzx	esi, byte ptr [ecx+7]
or	esi, [ebp+len3_0]
mov	[ebp+len3_0], edi
movzx	eax, byte ptr [ecx+5]
shl	eax, 10h
or	esi, eax
movzx	eax, byte ptr [ecx+6]
shl	eax, 8
or	esi, eax
movzx	edi, byte ptr [ecx+3]
movzx	eax, byte ptr [ecx]
shl	eax, 18h
or	eax, edi
movzx	edi, byte ptr [ecx+1]
shl	edi, 10h
or	eax, edi
movzx	edi, byte ptr [ecx+2]
shl	edi, 8
or	eax, edi
mov	edi, [ebp+len3]
mov	[edi], esi
or	[ebp+len3_0], eax
mov	eax, [ebp+len3_0]
mov	[edi+4], eax
add	ecx, 8
mov	[src_0+4], ecx
jmp	loc_641D2364
align 4
			
lea	edx, [ap_0+4]	
mov	edi, [esi]
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	eax, 3
jbe	fail		
test	edi, edi
jz	short loc_641D245E
movzx	eax, byte ptr [ecx+3]
movzx	ap_0, byte ptr [ecx]
shl	esi, 18h
or	eax, esi
movzx	esi, byte ptr [ecx+1]
shl	esi, 10h
or	eax, esi
movzx	esi, byte ptr [ecx+2]
shl	esi, 8
or	eax, esi
mov	[edi], eax
add	ecx, 4
mov	[src_0+4], ecx
jmp	loc_641D2364
align 4
			
lea	edx, [ap_0+4]	
mov	edi, [esi]
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	eax, 1
jbe	fail		
test	edi, edi
jz	short loc_641D2495
movzx	eax, byte ptr [ecx+1]
movzx	ap_0, byte ptr [ecx]
shl	esi, 8
or	eax, esi
mov	[edi], ax
add	ecx, 2
mov	[src_0+4], ecx
jmp	loc_641D2364
			
lea	edx, [ap_0+4]
mov	esi, [esi]
mov	ecx, [src_0+8]
mov	eax, [src_0+4]
cmp	ecx, eax
jz	fail		
test	esi, esi
jz	short loc_641D24C7
mov	al, [eax]
mov	[esi], al
mov	eax, [src_0+4]
cmp	[src_0+8], eax
jz	loc_641D2364
inc	eax
mov	[src_0+4], eax
jmp	loc_641D2364
			
			
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	tmp_len, [ap_0]
lea	edx, [ap_0+8]
mov	esi, [esi+4]
sub	edi, ecx
cmp	len2, edi
ja	fail		
cmp	len2, 0FFFFFFFFh
jz	fail		
test	len2, len2
jz	short loc_641D250B
test	eax, eax
jz	short loc_641D250B
mov	[eax], ecx
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	len2, eax
ja	loc_641D2364
			
add	ecx, len2
mov	[src_0+4], ecx
jmp	loc_641D2364
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 3
jbe	fail		
movzx	esi, byte ptr [ecx+3]
movzx	eax, byte ptr [ecx]
shl	eax, 18h
or	len2, eax
movzx	eax, byte ptr [ecx+1]
shl	eax, 10h
or	len2, eax
movzx	eax, byte ptr [ecx+2]
shl	eax, 8
or	len2, eax
add	ecx, 4
mov	[src_0+4], ecx
sub	edi, ecx
cmp	len2, edi
ja	fail		
cmp	len2, 0FFFFFFFFh
jz	fail		
mov	dword ptr [esp+14h], 1Dh
mov	[esp+10h], len2
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], 0Ch
mov	ecx, [ebp+len3_0]
mov	[esp+4], ecx	
mov	edi, [ebp+stack]
mov	[esp], edi	
mov	[ebp+var_34], ap_0
call	_silc_buffer_sformat
test	eax, eax
mov	edx, [ebp+var_34]
jns	loc_641D24FB
jmp	fail		
align 4
			
mov	edi, [ap_0]	
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	esi, eax
ja	fail		
cmp	esi, 0FFFFFFFFh
jz	fail		
test	esi, esi
jz	short loc_641D2615
test	edi, edi
jz	short loc_641D2615
mov	dword ptr [esp+8], 1 
mov	eax, esi
inc	eax
mov	[esp+4], eax	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	[edi], eax
test	eax, eax
mov	edx, [ebp+var_34]
jz	short loc_641D2604
			
mov	x, [src_0+4]
mov	edi, eax
mov	ecx, [ebp+len3_0]
rep movsb
			
mov	ecx, [src_0+4]
			
mov	len2, [src_0+8]
sub	eax, ecx
cmp	[ebp+len3_0], eax
ja	loc_641D2364
			
add	ecx, [ebp+len3_0]
mov	[src_0+4], ecx
jmp	loc_641D2364
			
mov	edi, [ap_0]
mov	[ebp+x_1], edi
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	[ebp+len3], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 1
jbe	fail		
movzx	eax, byte ptr [ecx+1]
movzx	esi, byte ptr [ecx]
shl	esi, 8
or	len2, esi
add	ecx, 2
mov	[src_0+4], ecx
movzx	esi, ax
mov	[ebp+len3_0], esi
mov	esi, edi
sub	esi, ecx
cmp	[ebp+len3_0], esi
ja	fail		
mov	esi, [ebp+len3]
test	esi, esi
jz	short loc_641D2673
mov	ecx, [ebp+len3]
mov	[ecx], ax
mov	ecx, [ebp+x_1]
test	ecx, ecx
jz	short loc_641D2683
test	ax, ax
jnz	loc_641D2C60
			
mov	len2, [src_0+4]
sub	edi, eax
cmp	[ebp+len3_0], edi
ja	loc_641D2364
add	eax, [ebp+len3_0]
mov	[src_0+4], eax
jmp	loc_641D2364
			
mov	eax, [ap_0]
mov	[ebp+len3], eax
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	[ebp+x_1], esi
mov	edi, [src_0+8]
mov	ecx, [src_0+4]
cmp	edi, ecx
jz	fail		
mov	al, [ecx]
inc	ecx
mov	[src_0+4], ecx
movzx	esi, al
mov	[ebp+len3_0], esi
sub	edi, ecx
cmp	esi, edi
ja	fail		
mov	ecx, [ebp+x_1]
test	ecx, ecx
jz	short loc_641D26DA
mov	edi, [ebp+x_1]
mov	[edi], al
mov	edi, [ebp+len3]
test	edi, edi
jz	loc_641D2604
test	al, al
jz	loc_641D2604
mov	dword ptr [esp+8], 1 
movzx	len2, al
inc	len2
mov	[esp+4], eax	
mov	eax, [ebp+stack]
mov	[esp], eax	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	ecx, [ebp+len3]
mov	[ecx], eax
test	eax, eax
mov	edx, [ebp+var_34]
jnz	loc_641D25FA
jmp	loc_641D2604
			
lea	edx, [ap_0+4]
mov	esi, [esi]
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 3
jbe	fail		
movzx	eax, byte ptr [ecx+3]
mov	[ebp+len3_0], eax
movzx	eax, byte ptr [ecx]
shl	eax, 18h
or	[ebp+len3_0], eax
movzx	eax, byte ptr [ecx+1]
shl	eax, 10h
or	[ebp+len3_0], eax
movzx	eax, byte ptr [ecx+2]
shl	eax, 8
or	[ebp+len3_0], eax
add	ecx, 4
mov	[src_0+4], ecx
sub	edi, ecx
cmp	[ebp+len3_0], edi
ja	fail		
cmp	[ebp+len3_0], 0FFFFFFFFh
jz	fail		
test	x, x
jz	loc_641D2615
mov	eax, [ebp+len3_0]
test	eax, eax
jz	loc_641D2615
mov	dword ptr [esp+8], 1 
mov	eax, [ebp+len3_0]
inc	eax
mov	[esp+4], eax	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	[x], eax
test	eax, eax
mov	edx, [ebp+var_34]
jz	short loc_641D27BB
mov	x, [src_0+4]
mov	edi, eax
mov	ecx, [ebp+len3_0]
rep movsb
			
mov	len2, [src_0+4]
mov	eax, [src_0+8]
sub	eax, ecx
cmp	[ebp+len3_0], eax
jbe	loc_641D2615
jmp	loc_641D2364
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	[ebp+len3], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 1
jbe	fail		
movzx	eax, byte ptr [ecx+1]
movzx	esi, byte ptr [ecx]
shl	esi, 8
or	len2, esi
add	ecx, 2
mov	[src_0+4], ecx
movzx	esi, ax
mov	[ebp+len3_0], esi
sub	edi, ecx
cmp	esi, edi
ja	fail		
mov	edi, [ebp+len3]
test	edi, edi
jz	loc_641D2615
test	ax, ax
jz	loc_641D2615
mov	dword ptr [esp+8], 1 
mov	len2, esi
inc	eax
mov	[esp+4], eax	
mov	edi, [ebp+stack]
mov	[esp], edi	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	ecx, [ebp+len3]
mov	[ecx], eax
test	eax, eax
mov	edx, [ebp+var_34]
jnz	loc_641D27B1
jmp	loc_641D27BB
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	edi, [src_0+8]
mov	ecx, [src_0+4]
cmp	edi, ecx
jz	fail		
mov	al, [ecx]
mov	byte ptr [ebp+len3], al
inc	ecx
mov	[src_0+4], ecx
movzx	eax, al
mov	[ebp+len3_0], eax
sub	edi, ecx
cmp	eax, edi
ja	fail		
test	x, x
jz	loc_641D2615
cmp	byte ptr [ebp+len3], 0
jz	loc_641D2615
mov	dword ptr [esp+8], 1 
inc	eax
mov	[esp+4], eax	
mov	ecx, [ebp+stack]
mov	[esp], ecx	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	[x], eax
test	eax, eax
mov	edx, [ebp+var_34]
jnz	loc_641D25FA
jmp	loc_641D2604
align 4
			
mov	eax, [ap_0]	
mov	[ebp+len3], eax
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 3
jbe	fail		
movzx	eax, byte ptr [ecx+3]
movzx	esi, byte ptr [ecx]
shl	esi, 18h
or	len2, esi
movzx	esi, byte ptr [ecx+1]
shl	esi, 10h
or	len2, esi
movzx	esi, byte ptr [ecx+2]
shl	esi, 8
or	len2, esi
add	ecx, 4
mov	[src_0+4], ecx
mov	esi, edi
sub	esi, ecx
cmp	len2, esi
ja	fail		
cmp	len2, 0FFFFFFFFh
jz	fail		
mov	esi, [ebp+len3_0]
test	esi, esi
jz	short loc_641D292A
mov	esi, [ebp+len3_0]
mov	[esi], len2
mov	esi, [ebp+len3]
test	esi, esi
jz	short loc_641D2939
mov	edi, [ebp+len3]
mov	[edi], ecx
mov	edi, [src_0+8]
mov	esi, [src_0+4]
sub	edi, esi
cmp	len2, edi
ja	loc_641D2364
lea	len2, [esi+len2]
mov	[src_0+4], eax
jmp	loc_641D2364
align 4
			
mov	edi, [ap_0]	
mov	[ebp+len3], edi
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 1
jbe	fail		
movzx	eax, byte ptr [ecx+1]
movzx	esi, byte ptr [ecx]
shl	esi, 8
or	len2, esi
add	ecx, 2
mov	[src_0+4], ecx
movzx	esi, ax
mov	[ebp+var_3C], esi
mov	esi, edi
sub	esi, ecx
cmp	[ebp+var_3C], esi
ja	fail		
mov	esi, [ebp+len3_0]
test	esi, esi
jz	short loc_641D29A7
mov	esi, [ebp+len3_0]
mov	[esi], ax
mov	esi, [ebp+len3]
test	esi, esi
jz	short loc_641D29B6
mov	edi, [ebp+len3]
mov	[edi], ecx
mov	edi, [src_0+8]
mov	len2, [src_0+4]
sub	edi, eax
cmp	[ebp+var_3C], edi
ja	loc_641D2364
add	eax, [ebp+var_3C]
mov	[src_0+4], eax
jmp	loc_641D2364
align 10h
			
mov	edi, [ap_0]	
mov	[ebp+x_1], edi
lea	edx, [ap_0+8]
mov	esi, [esi+4]
mov	ecx, [src_0+8]
mov	edi, ecx
mov	ecx, [src_0+4]
cmp	edi, ecx
jz	fail		
mov	al, [ecx]
mov	byte ptr [ebp+len3], al
inc	ecx
mov	[src_0+4], ecx
movzx	eax, al
mov	[ebp+len3_0], eax
sub	edi, ecx
cmp	eax, edi
ja	fail		
test	esi, esi
jz	short loc_641D2A10
mov	cl, byte ptr [ebp+len3]
mov	[esi], cl
mov	ecx, [src_0+4]
mov	edi, [ebp+x_1]
test	edi, edi
jz	loc_641D2607
mov	esi, [ebp+x_1]
mov	[esi], ecx
mov	ecx, [src_0+4]
jmp	loc_641D2607
			
lea	edx, [ap_0+4]
mov	esi, [esi]
mov	ecx, [src_0+4]
mov	eax, [src_0+8]
mov	[ebp+len3_0], eax
sub	eax, ecx
cmp	eax, 3
jbe	fail		
movzx	eax, byte ptr [ecx+3]
movzx	edi, byte ptr [ecx]
shl	edi, 18h
or	len2, edi
movzx	edi, byte ptr [ecx+1]
shl	edi, 10h
or	len2, edi
movzx	edi, byte ptr [ecx+2]
shl	edi, 8
or	len2, edi
add	ecx, 4
mov	[src_0+4], ecx
mov	edi, [ebp+len3_0]
sub	edi, ecx
cmp	len2, edi
ja	fail		
cmp	len2, 0FFFFFFFFh
jz	fail		
mov	[x], ecx
mov	[x+4], ecx
add	ecx, len2
mov	[x+0Ch], ecx
mov	[x+8], ecx
mov	x, [src_0+4]
mov	ecx, [src_0+8]
sub	ecx, esi
cmp	len2, ecx
jbe	loc_641D2946
jmp	loc_641D2364
align 10h
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 3
jbe	fail		
movzx	eax, byte ptr [ecx+3]
movzx	esi, byte ptr [ecx]
shl	esi, 18h
or	len2, esi
movzx	esi, byte ptr [ecx+1]
shl	esi, 10h
or	len2, esi
movzx	esi, byte ptr [ecx+2]
shl	esi, 8
or	len2, esi
add	ecx, 4
mov	[src_0+4], ecx
sub	edi, ecx
cmp	len2, edi
ja	fail		
cmp	len2, 0FFFFFFFFh
jz	fail		
mov	esi, [ebp+len3_0]
test	esi, esi
jz	short loc_641D2B0E
mov	esi, [ebp+len3_0]
mov	[x], ecx
mov	ecx, [src_0+4]
mov	esi, [src_0+8]
sub	esi, ecx
cmp	len2, esi
ja	loc_641D2364
			
lea	offst, [ecx+offst]
mov	[src_0+4], eax
jmp	loc_641D2364
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	[ebp+len3_0], esi
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	eax, edi
sub	eax, ecx
cmp	eax, 1
jbe	fail		
movzx	eax, byte ptr [ecx+1]
movzx	esi, byte ptr [ecx]
shl	esi, 8
or	len2, esi
add	ecx, 2
mov	[src_0+4], ecx
movzx	len2, ax
sub	edi, ecx
cmp	eax, edi
jbe	short loc_641D2AF2
jmp	fail		
align 4
			
lea	edx, [ap_0+4]	
mov	esi, [esi]
mov	ecx, [src_0+8]
mov	edi, ecx
mov	ecx, [src_0+4]
cmp	edi, ecx
jz	fail		
mov	al, [ecx]
inc	ecx
mov	[src_0+4], ecx
movzx	len2, al
sub	edi, ecx
cmp	eax, edi
ja	fail		
test	x, x
jnz	loc_641D2AFC
jmp	short loc_641D2B0E
align 4
			
lea	edx, [ap_0+4]	
mov	eax, [esi]
test	offst, offst
jz	loc_641D2364
cmp	offst, 1
jle	loc_641D2C4D
mov	ecx, [src_0+4]
mov	ap_0, [src_0+8]
sub	esi, ecx
cmp	offst, esi
jbe	loc_641D2B0E
jmp	fail		
align 4
			
mov	[ebp+advance], 1 
jmp	loc_641D2366
align 4
			
mov	edi, [ebp+stack] 
test	edi, edi
jz	loc_641D2C9C
lea	edx, [ap_0+4]
mov	eax, [esi]
lea	ecx, [esi+8]
add	esi, 0Ch
mov	ecx, [ecx]
mov	[esp+0Ch], ecx
mov	edx, [edx]
mov	[esp+8], edx
mov	[esp+4], src_0
mov	edx, [ebp+stack]
mov	[esp], edx
call	funcs
cmp	eax, 0
jl	fail		
jz	loc_641D24D0	
mov	ecx, [src_0+4]
mov	edi, [src_0+8]
mov	edx, edi
sub	edx, ecx
cmp	tmp_len, edx
ja	fail		
add	ecx, tmp_len
mov	[src_0+4], ecx
jmp	loc_641D24D6
align 10h
			
cmp	[ebp+advance], 0
jz	short loc_641D2C30
xor	eax, eax
add	esp, 5Ch
pop	src_0
pop	ap_0
pop	edi
leave
retn
mov	edx, [src_0+4]
mov	eax, edx
sub	len, [ebp+start_ptr]
sub	edx, len
cmp	edx, [src_0]
jb	loc_641D237E
mov	[src_0+4], edx
add	esp, 5Ch
pop	src_0
pop	ap_0
pop	edi
leave
retn
add	offst, [src_0+4]
cmp	eax, [src_0]
jb	loc_641D2364
mov	[src_0+4], eax
jmp	loc_641D2364
mov	dword ptr [esp+8], 1
mov	len2, [ebp+len3_0]
inc	eax
mov	[esp+4], eax	
mov	esi, [ebp+stack]
mov	[esp], esi	
mov	[ebp+var_34], ap_0
call	_silc_scalloc
mov	edi, [ebp+x_1]
mov	[edi], eax
test	eax, eax
mov	edx, [ebp+var_34]
jz	short loc_641D2C94
mov	esi, [src_0+4]
mov	edi, eax
mov	ecx, [ebp+len3_0]
rep movsb
mov	edi, [src_0+8]
jmp	loc_641D2683
lea	edx, [ap_0+4]
mov	eax, [esi]
lea	ecx, [esi+8]
add	esi, 0Ch
mov	ecx, [ecx]
mov	[esp+8], ecx
mov	edx, [edx]
mov	[esp+4], edx
mov	[esp], src_0
call	func
jmp	loc_641D2BF2
align 10h
public _silc_buffer_sunformat
push	ebp
mov	ebp, esp
sub	esp, 18h
lea	ret, [ebp+ap]
mov	[esp+8], ret	
mov	ret, [ebp+src]
mov	[esp+4], ret	
mov	ret, [ebp+stack]
mov	[esp], ret	
call	_silc_buffer_sunformat_vp
leave
retn
align 4
public _silc_buffer_unformat_vp
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+ap]
mov	[esp+8], eax	
mov	eax, [ebp+src]
mov	[esp+4], eax	
mov	dword ptr [esp], 0 
call	_silc_buffer_sunformat_vp
leave
retn
align 4
public _silc_buffer_unformat
			
push	ebp
mov	ebp, esp
sub	esp, 18h
lea	ret, [ebp+ap]
mov	[esp+8], ret	
mov	ret, [ebp+src]
mov	[esp+4], ret	
mov	dword ptr [esp], 0 
call	_silc_buffer_sunformat_vp
leave
retn
align 4
public _silc_buffer_format_vp
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+ap]
mov	[esp+8], eax	
mov	eax, [ebp+dst]
mov	[esp+4], eax	
mov	dword ptr [esp], 0 
call	_silc_buffer_sformat_vp
leave
retn
align 10h
public _silc_buffer_format
			
push	ebp
mov	ebp, esp
sub	esp, 18h
lea	ret, [ebp+ap]
mov	[esp+8], ret	
mov	ret, [ebp+dst]
mov	[esp+4], ret	
mov	dword ptr [esp], 0 
call	_silc_buffer_sformat_vp
leave
retn
align 4
public _silc_config_strerror
push	ebp
mov	ebp, esp
mov	eax, [ebp+errnum]
cmp	eax, 10h
ja	short loc_641D2D8C
mov	errnum_0, ds:_errorstrs[errnum_0*4]
test	eax, eax
jz	short loc_641D2D8C
leave
retn
			
mov	eax, offset aInvaliderror 
leave
retn
align 4
public _silc_config_get_filename
push	ebp
mov	ebp, esp
mov	eax, [ebp+file]
test	eax, eax
jz	short locret_641D2DA0
mov	file_0,	[file_0]
leave
retn
align 4
public _silc_config_get_line
push	ebp
mov	ebp, esp
mov	eax, [ebp+file]
test	eax, eax
jz	short locret_641D2DB1
mov	file_0,	[file_0+14h]
leave
retn
align 4
public _silc_config_init
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+file]
test	ebx, ebx
jz	short loc_641D2DE0
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[eax+4], file_0
add	esp, 14h
pop	file_0
leave
retn
align 10h
xor	eax, eax
add	esp, 14h
pop	file_0
leave
retn
public _silc_config_register
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	edi, [ebp+ent]
mov	esi, [ebp+name]
test	edi, edi
jz	short loc_641D2E3D
test	name_0,	name_0
jz	short loc_641D2E3D
cmp	[ebp+type], 4
jz	short loc_641D2E48
mov	dword ptr [esp+4], offset aInclude 
mov	[esp], name_0	
call	_stricmp
test	eax, eax
jz	short loc_641D2E3D
mov	ebx, [ent_0]
test	ebx, ebx
jnz	short loc_641D2E2B
jmp	short loc_641D2E54
align 4
mov	ebx, [ebx+14h]
test	ebx, ebx
jz	short loc_641D2E54
mov	[esp+4], name_0	
mov	eax, [ebx]
mov	[esp], eax	
call	_stricmp
test	eax, eax
jnz	short loc_641D2E24
			
xor	eax, eax
			
add	esp, 1Ch
pop	ebx
pop	name_0
pop	ent_0
leave
retn
align 4
mov	eax, [ebp+subtable]
test	eax, eax
jnz	short loc_641D2E05
jmp	short loc_641D2E3D
align 4
			
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
mov	[esp], name_0	
call	_strdup
mov	[ebx], eax
mov	eax, [ebp+type]
mov	[ebx+4], eax
mov	eax, [ebp+cb]
mov	[ebx+8], eax
mov	eax, [ebp+subtable]
mov	[ebx+0Ch], eax
mov	eax, [ebp+context]
mov	[ebx+10h], eax
mov	eax, [ent_0]
test	tmp, tmp
jz	short loc_641D2EA2
mov	edx, tmp
mov	tmp, [tmp+14h]
test	tmp, tmp
jnz	short loc_641D2E92
mov	[edx+14h], ebx
mov	al, 1
jmp	short loc_641D2E3F
mov	[ent_0], ebx
mov	al, 1
jmp	short loc_641D2E3F
public _silc_config_register_table
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+ent]
mov	eax, [ebp+table]
mov	edi, [ebp+context]
test	esi, esi
jz	short loc_641D2F04
test	table_0, table_0
jz	short loc_641D2F04
mov	edx, [table_0]
test	edx, edx
jz	short loc_641D2F10
lea	ebx, [table_0+10h]
jmp	short loc_641D2EDB
align 10h
mov	eax, ebx
mov	edx, [ebx]
add	ebx, 10h
test	edx, edx
jz	short loc_641D2F10
mov	[esp+14h], context_0 
mov	ecx, [table_0+0Ch]
mov	[esp+10h], ecx	
mov	ecx, [table_0+8]
mov	[esp+0Ch], ecx	
mov	table_0, [table_0+4]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	[esp], ent_0	
call	_silc_config_register
test	al, al
jnz	short loc_641D2ED0
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	ent_0
pop	context_0
leave
retn
align 10h
			
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	ent_0
pop	context_0
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	[ebp+ptr], ent
test	dl, dl
jz	short skip_sect
mov	ebx, [ent]
test	oldopt,	oldopt
jz	short skip_sect
xchg	ax, ax
mov	esi, [oldopt+14h]
mov	destroy_opts, [oldopt]
mov	ecx, 0FFFFFFFFh
mov	edi, edx
xor	ent, ent
repne scasb
not	ecx
mov	al, 46h
mov	edi, edx
rep stosb
mov	edx, [oldopt]
mov	[esp], edx	
mov	[ebp+var_20], al
call	_silc_free
mov	ecx, 18h
mov	al, [ebp+var_20]
mov	edi, oldopt
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	ebx, nextopt
test	nextopt, nextopt
jnz	short loc_641D2F34
			
mov	ent, [ebp+ptr]
mov	dword ptr [eax], 46464646h
mov	dword ptr [eax+4], 46464646h
mov	[esp], eax	
call	_silc_free
add	esp, 2Ch
pop	oldopt
pop	nextopt
pop	edi
leave
retn
align 4
public _silc_config_close
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+file]
test	ebx, ebx
jz	short loc_641D2FE4
mov	eax, [file_0]
mov	[esp], eax	
call	_silc_free
mov	ecx, [file_0+10h]
mov	edx, [file_0+8]
mov	al, 46h
mov	edi, edx
rep stosb
mov	edx, [file_0+8]
mov	[esp], edx	
mov	[ebp+var_C], al
call	_silc_free
mov	ecx, 1Ch
mov	al, [ebp+var_C]
mov	edi, file_0
rep stosb
mov	[ebp+file], ebx
add	esp, 20h
pop	ebx
pop	file_0
leave
jmp	_silc_free
align 4
add	esp, 20h
pop	file_0
pop	edi
leave
retn
align 4
public _silc_config_read_line
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	eax, [ebp+file]
mov	edx, [ebp+line]
test	eax, eax
jnz	short loc_641D3008
			
xor	len, len
add	esp, 10h
pop	p
pop	edi
leave
retn
align 4
test	line_0,	line_0
jz	short loc_641D2FFE
mov	ebx, [file_0+8]
mov	al, [p]
lea	ecx, [eax-1]
cmp	cl, 0FDh
jbe	short loc_641D3027
jmp	short loc_641D2FFE
align 4
			
inc	p
mov	al, [p]
lea	ecx, [eax-1]
cmp	cl, 0FDh
ja	short loc_641D2FFE
cmp	line_0,	1
jbe	short loc_641D3034
cmp	al, 0Ah
jnz	short loc_641D301C
dec	line_0
jmp	short loc_641D301C
align 4
mov	dword ptr [esp+4], 0Ah 
mov	[esp], p	
call	_strchr
test	eax, eax
jz	short loc_641D305F
sub	eax, p
test	len, len
jle	short loc_641D2FFE
mov	[ebp+line], len
mov	[ebp+file], p
add	esp, 10h
pop	p
pop	edi
leave
jmp	_silc_memdup
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, p
repne scasb
not	ecx
dec	ecx
mov	[ebp+line], ecx
jmp	short loc_641D3051
align 4
public _silc_config_open
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+configfile]
lea	eax, [ebp+filelen]
mov	[esp+4], eax	
mov	[esp], edi	
call	_silc_file_readfile
mov	esi, eax
test	eax, eax
jz	short loc_641D30D4
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
mov	[esp], configfile_0 
call	_strdup
mov	[ret], eax
mov	[ret+0Ch], buffer
mov	[ret+8], buffer
mov	eax, [ebp+filelen]
mov	[ret+10h], eax
mov	dword ptr [ret+14h], 1
mov	eax, ret
add	esp, 2Ch
pop	ret
pop	buffer
pop	configfile_0
leave
retn
align 4
xor	ebx, ebx
mov	buffer,	ret
add	esp, 2Ch
pop	ret
pop	buffer
pop	configfile_0
leave
retn
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	[ebp+var_1C], file
mov	[ebp+var_20], to
mov	ebx, [file+0Ch]
mov	esi, ds:__imp____mb_cur_max
mov	edi, ds:__imp___pctype
mov	al, [o]
lea	to, [eax-1]
cmp	dl, 0FDh
ja	short loc_641D3135
movzx	eax, al
cmp	dword ptr [esi], 1
jnz	loc_641D31FC
mov	edx, [edi]
movzx	eax, word ptr [edx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D3135
cmp	byte ptr [o], 0Ah
jz	loc_641D31F0
inc	o
mov	al, [o]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D3108
			
mov	edx, [ebp+var_1C]
mov	[edx+0Ch], o
mov	al, [o]
cmp	al, 22h
jz	loc_641D3254
mov	ecx, ds:__imp____mb_cur_max
mov	edx, [ecx]
mov	esi, ds:__imp___pctype
mov	edi, [ebp+var_1C]
lea	ecx, [eax-1]
cmp	cl, 0FDh
ja	short loc_641D318E
xchg	ax, ax
movzx	eax, al
cmp	edx, 1
jnz	loc_641D3220
mov	ecx, [esi]
movzx	eax, word ptr [ecx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D318E
mov	al, [o]
inc	o
cmp	al, 0Ah
jz	loc_641D3214
mov	al, [o]
lea	ecx, [eax-1]
cmp	cl, 0FDh
jbe	short loc_641D3160
			
mov	eax, [ebp+var_1C]
mov	[eax+0Ch], o
mov	esi, [ebp+var_20]
xor	file, file
jmp	short loc_641D31D6
align 4
mov	ecx, ds:__imp___pctype
mov	edx, [ecx]
movzx	eax, word ptr [edx+eax*2]
and	eax, 107h
test	eax, eax
jnz	short loc_641D31BF
mov	al, [o]
cmp	al, 5Fh
jz	short loc_641D31BF
cmp	al, 2Dh
jnz	loc_641D3240
			
cmp	edi, 0FFh
jz	short loc_641D3240
inc	edi
mov	al, [o]
mov	[to], al
inc	to
inc	o
mov	ecx, ds:__imp____mb_cur_max
mov	edx, [ecx]
movzx	eax, byte ptr [o]
dec	edx
jz	short loc_641D319C
mov	dword ptr [esp+4], 107h	
mov	[esp], eax	
call	__isctype
jmp	short loc_641D31AD
align 10h
mov	eax, [ebp+var_1C]
inc	dword ptr [eax+14h]
inc	o
jmp	loc_641D312B
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
jmp	loc_641D311D
align 4
inc	dword ptr [file+14h]
mov	al, [o]
jmp	loc_641D3186
align 10h
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
mov	ecx, ds:__imp____mb_cur_max
mov	edx, [ecx]
jmp	loc_641D3175
align 10h
			
mov	byte ptr [to], 0
mov	eax, [ebp+var_1C]
mov	[eax+0Ch], o
mov	eax, [ebp+var_20]
add	esp, 2Ch
pop	o
pop	to
pop	edi
leave
retn
mov	edx, [ebp+var_20]
mov	ecx, d
add	ecx, 0FEh
jmp	short loc_641D326B
align 4
			
mov	[d], al
cmp	d, ecx
jz	short loc_641D3291
inc	d
inc	o
mov	al, [o]
cmp	al, 22h
jz	short loc_641D327C
cmp	al, 5Ch
jnz	short loc_641D3264
inc	o
mov	al, [o]
jmp	short loc_641D3264
align 4
mov	byte ptr [d], 0
inc	o
mov	eax, [ebp+var_1C]
mov	[eax+0Ch], ebx
mov	eax, [ebp+var_20]
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 1Ch 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aBullshitMissin	
call	_fwrite
mov	dword ptr [esp], 1 
call	_exit
align 4
public _silc_config_read_current_line
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	edx, [ebp+file]
mov	eax, [edx+14h]
test	eax, eax
jnz	short loc_641D32E4
			
xor	eax, eax
			
add	esp, 10h
pop	ebx
pop	edi
leave
retn
align 4
mov	ebx, [file_0+8]
mov	dl, [ebx]
lea	ecx, [edx-1]
cmp	cl, 0FDh
jbe	short loc_641D32FF
jmp	short loc_641D32DA
align 4
			
inc	ebx
mov	dl, [ebx]
lea	ecx, [edx-1]
cmp	cl, 0FDh
ja	short loc_641D32DA
cmp	eax, 1
jbe	short loc_641D330C
cmp	dl, 0Ah
jnz	short loc_641D32F4
dec	eax
jmp	short loc_641D32F4
mov	dword ptr [esp+4], 0Ah 
mov	[esp], ebx	
call	_strchr
test	eax, eax
jz	short loc_641D3334
sub	eax, ebx
test	eax, eax
jle	short loc_641D32DA
mov	[esp+4], eax	
mov	[esp], ebx	
call	_silc_memdup
jmp	short loc_641D32DC
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], ebx	
call	_silc_memdup
jmp	short loc_641D32DC
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 17Ch
mov	[ebp+var_150], ent
mov	esi, [ent+4]
mov	[ebp+file], esi
mov	edi, [esi+0Ch]
lea	ent, [ebp+buf]
mov	[ebp+var_160], eax
			
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
ja	short loc_641D33BD
movzx	eax, al
mov	ret, ds:__imp____mb_cur_max
cmp	dword ptr [ecx], 1
jnz	loc_641D34A0
mov	edx, ds:__imp___pctype
mov	edx, [edx]
movzx	eax, word ptr [edx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D33BD
cmp	byte ptr [edi],	0Ah
jz	loc_641D3490
inc	edi
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D3384
			
mov	esi, [ebp+file]
mov	[esi+0Ch], edi
mov	al, [edi]
cmp	al, 23h
jz	loc_641D34C8
lea	edx, [eax-1]
cmp	dl, 0FDh
ja	loc_641D3C21
cmp	al, 7Dh
jz	loc_641D3C01
mov	esi, ds:__imp____mb_cur_max
mov	inc_file, ds:__imp___pctype
lea	edx, [eax-1]
cmp	dl, 0FDh
ja	short loc_641D3426
movzx	eax, al
cmp	dword ptr [esi], 1
jnz	loc_641D34F4
mov	edx, [ebx]
movzx	eax, word ptr [edx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D3426
mov	al, [edi]
inc	edi
cmp	al, 0Ah
jz	loc_641D34E4
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D33F8
			
mov	edx, [ebp+file]
mov	[edx+0Ch], edi
lea	ret, [ebp+tmp_file]
mov	[ebp+var_15C], ecx
lea	ebx, [ebp+buf]
jmp	short loc_641D3475
mov	ecx, ds:__imp___pctype
mov	edx, [ecx]
movzx	eax, word ptr [edx+eax*2]
and	eax, 107h
test	eax, eax
jnz	short loc_641D3463
mov	al, [edi]
cmp	al, 5Fh
jz	short loc_641D3463
cmp	al, 2Dh
jnz	loc_641D350C
			
cmp	ebx, [ebp+var_15C]
jz	loc_641D350C
mov	al, [edi]
mov	[ebx], al
inc	ebx
inc	edi
movzx	eax, byte ptr [edi]
cmp	dword ptr [esi], 1
jz	short loc_641D3440
mov	dword ptr [esp+4], 107h	
mov	[esp], eax	
call	__isctype
jmp	short loc_641D3451
align 10h
mov	edx, [ebp+file]
inc	dword ptr [edx+14h]
inc	edi
jmp	loc_641D33B3
align 10h
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
jmp	loc_641D33A5
align 4
cmp	al, 0Ah
jz	loc_641D38FD
cmp	al, 0Dh
jz	loc_641D38FD
inc	edi
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D34B8
mov	eax, [ebp+file]
mov	[eax+0Ch], edi
inc	dword ptr [eax+14h]
jmp	loc_641D337A
mov	eax, [ebp+file]
inc	dword ptr [eax+14h]
mov	al, [edi]
jmp	loc_641D341E
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
jmp	loc_641D340D
align 4
			
mov	byte ptr [ebx],	0
mov	eax, [ebp+file]
mov	[eax+0Ch], edi
mov	dword ptr [esp+4], offset aInclude 
lea	edx, [ebp+buf]
mov	[esp], edx	
call	_stricmp
test	eax, eax
jz	loc_641D378C
mov	eax, [ebp+var_150]
mov	ebx, [eax]
test	thisopt, thisopt
jnz	short loc_641D3553
jmp	loc_641D390F
align 4
mov	thisopt, [thisopt+14h]
test	thisopt, thisopt
jz	loc_641D390F
lea	edx, [ebp+buf]
mov	[esp+4], edx	
mov	eax, [thisopt]
mov	[esp], eax	
call	_stricmp
test	eax, eax
jnz	short loc_641D3548
mov	ecx, [ebp+file]
mov	edi, [ecx+0Ch]
mov	[ebp+var_154], thisopt
mov	thisopt, ecx
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
ja	short loc_641D35BB
xchg	ax, ax
movzx	eax, al
cmp	dword ptr [esi], 1
jnz	loc_641D3644
mov	ecx, ds:__imp___pctype
mov	edx, [ecx]
movzx	eax, word ptr [edx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D35BB
cmp	byte ptr [edi],	0Ah
jz	loc_641D3638
inc	edi
mov	al, [edi]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D3588
			
mov	file, [ebp+var_154]
mov	esi, [ebp+file]
mov	[esi+0Ch], edi
mov	eax, [thisopt+4]
cmp	eax, 4
jz	loc_641D3659
cmp	eax, 6
jz	loc_641D3ABD
mov	al, [edi]
inc	edi
mov	edx, [ebp+file]
mov	[edx+0Ch], edi
cmp	al, 3Dh
jnz	loc_641D3BF7
lea	edx, [ebp+buf]	
mov	eax, [ebp+file]	
call	_my_get_string
mov	ecx, [ebp+file]
mov	eax, [ecx+0Ch]
mov	dl, [eax]
inc	eax
mov	[ecx+0Ch], eax
cmp	dl, 3Bh
jnz	loc_641D3782
cmp	dword ptr [thisopt+4], 5 
jbe	loc_641D391F
			
mov	eax, 0Ah
			
add	esp, 17Ch
pop	inc_file
pop	esi
pop	pt
leave
retn
align 4
inc	dword ptr [file+14h]
inc	edi
jmp	loc_641D35B1
align 4
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
jmp	loc_641D35A3
mov	al, [edi]
inc	edi
mov	[esi+0Ch], edi
cmp	al, 7Bh
jnz	loc_641D3C52
mov	eax, [ebp+var_150]
mov	edi, [eax+4]
test	edi, edi
jz	loc_641D3929
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
mov	[eax+4], edi
mov	ecx, [thisopt+10h]
mov	eax, [thisopt+0Ch]
test	eax, eax
jz	short loc_641D36ED
mov	edx, [eax]
test	edx, edx
jz	short loc_641D36ED
lea	edi, [eax+10h]
mov	[ebp+var_154], thisopt
mov	thisopt, ecx
jmp	short loc_641D36BB
align 10h
mov	eax, edi
mov	edx, [edi]
add	edi, 10h
test	edx, edx
jz	short loc_641D36E4
mov	[esp+14h], ebx	
mov	ecx, [eax+0Ch]
mov	[esp+10h], ecx	
mov	ecx, [eax+8]
mov	[esp+0Ch], ecx	
mov	eax, [eax+4]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_config_register
test	al, al
jnz	short loc_641D36B0
mov	ebx, [ebp+var_154]
mov	edi, [esi+4]
			
inc	dword ptr [edi+4]
mov	eax, esi	
call	_silc_config_main_internal
mov	ecx, eax
mov	eax, [edi+4]
test	eax, eax
jz	short loc_641D372A
dec	eax
mov	[edi+4], eax
test	eax, eax
jnz	short loc_641D3712
cmp	byte ptr [edi+18h], 1
jz	loc_641D3B84
mov	edx, 1		
mov	eax, esi	
mov	[ebp+var_158], ret
call	_silc_config_destroy
mov	ecx, [ebp+var_158]
			
test	ret, ret
jnz	loc_641D3C4B
mov	eax, [thisopt+8]
test	eax, eax
jz	short loc_641D376B
mov	edx, [thisopt+10h]
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 0
mov	ret, [ebp+file]
mov	edx, [ecx+14h]
mov	[esp+8], edx
mov	edx, [thisopt]
mov	[esp+4], edx
mov	edx, [thisopt+4]
mov	[esp], edx
call	eax
test	eax, eax
jnz	loc_641D362B
mov	esi, [ebp+file]
mov	edi, [esi+0Ch]
mov	al, [edi]
inc	edi
mov	[esi+0Ch], edi
cmp	al, 3Bh
jz	loc_641D337A
			
mov	eax, 10h
jmp	loc_641D362B
mov	ecx, [ebp+file]
mov	ebx, [ecx+0Ch]
mov	edi, ds:__imp___pctype
mov	al, [ebx]
lea	edx, [eax-1]
cmp	dl, 0FDh
ja	short loc_641D37D5
lea	esi, [esi+0]
movzx	eax, al
cmp	dword ptr [esi], 1
jnz	loc_641D38E8
mov	edx, [edi]
movzx	eax, word ptr [edx+eax*2]
and	eax, 8
test	eax, eax
jz	short loc_641D37D5
cmp	byte ptr [ebx],	0Ah
jz	loc_641D38D8
inc	ebx
mov	al, [ebx]
lea	edx, [eax-1]
cmp	dl, 0FDh
jbe	short loc_641D37A8
			
mov	edx, [ebp+file]
mov	[edx+0Ch], ebx
lea	edx, [ebp+buf]	
mov	eax, [ebp+file]	
call	_my_get_string
mov	ecx, [ebp+file]
mov	eax, [ecx+0Ch]
mov	dl, [eax]
inc	eax
mov	[ecx+0Ch], eax
cmp	dl, 3Bh
jnz	loc_641D3782
lea	eax, [ebp+return_len]
mov	[esp+4], eax	
lea	esi, [ebp+buf]
mov	[esp], esi	
call	_silc_file_readfile
mov	esi, eax
test	eax, eax
jz	loc_641D3933
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
lea	eax, [ebp+buf]
mov	[esp], eax	
call	_strdup
mov	[inc_file], eax
mov	[inc_file+0Ch],	esi
mov	[inc_file+8], esi
mov	eax, [ebp+return_len]
mov	[inc_file+10h],	eax
mov	dword ptr [inc_file+14h], 1
mov	byte ptr [inc_file+18h], 1
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
mov	[eax+4], inc_file
mov	edx, [ebp+var_150]
mov	eax, [edx]
mov	[esi], eax
inc	dword ptr [inc_file+4]
mov	eax, esi	
call	_silc_config_main_internal
mov	edi, eax
mov	eax, [inc_file+4]
test	eax, eax
jz	short loc_641D38B7
dec	eax
mov	[inc_file+4], eax
test	eax, eax
jnz	short loc_641D38AB
cmp	byte ptr [inc_file+18h], 1
jz	loc_641D3B9E
mov	edx, 1		
mov	eax, esi	
call	_silc_config_destroy
			
test	ret, ret
jnz	loc_641D3B14
mov	[esp], inc_file	
call	_silc_config_close
mov	ecx, [ebp+file]
mov	ret, [ecx+0Ch]
jmp	loc_641D337A
align 4
mov	eax, [ebp+file]
inc	dword ptr [eax+14h]
inc	ebx
jmp	loc_641D37CB
align 4
mov	dword ptr [esp+4], 8 
mov	[esp], eax	
call	__isctype
jmp	loc_641D37BD
			
inc	edi
mov	eax, [ebp+file]
mov	[eax+0Ch], edi
inc	dword ptr [eax+14h]
jmp	loc_641D337A
			
mov	eax, 9
add	esp, 17Ch
pop	thisopt
pop	esi
pop	edi
leave
retn
mov	eax, [thisopt+4]
jmp	ds:off_64263B50[eax*4] 
mov	edi, [edi+4]
xor	esi, esi
jmp	loc_641D36ED
mov	eax, 5
add	esp, 17Ch
pop	ebx
pop	esi
pop	edi
leave
retn
			
cmp	[ebp+buf], 0
jz	loc_641D3626	
			
lea	esi, [ebp+buf]	
mov	[esp], esi	
call	_strdup
mov	edi, eax
			
test	pt, pt
jz	loc_641D3626	
mov	eax, [thisopt+8]
test	eax, eax
jz	loc_641D3B6E
mov	edx, [thisopt+10h]
mov	[esp+10h], edx
mov	[esp+0Ch], pt
mov	ecx, [ebp+file]
mov	edx, [ecx+14h]
mov	[esp+8], edx
mov	edx, [thisopt]
mov	[esp+4], edx
mov	edx, [thisopt+4]
mov	[esp], edx
call	eax
mov	esi, eax
mov	[esp], pt	
call	_silc_free
test	ret, ret
jz	loc_641D3B60
mov	eax, ret
add	esp, 17Ch
pop	thisopt
pop	ret
pop	pt
leave
retn
			
mov	dword ptr [esp+8], 0
lea	eax, [ebp+var_20]
mov	[esp+4], eax	
lea	edx, [ebp+buf]
mov	[esp], edx	
call	_strtol
mov	esi, eax
mov	eax, [ebp+var_20]
cmp	byte ptr [eax],	0
jnz	loc_641D3626	
jmp	loc_641D3AA0
			
mov	dword ptr [esp+4], offset aYes 
lea	esi, [ebp+buf]
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	short loc_641D3A1A
mov	dword ptr [esp+4], offset aTrue	
mov	[esp], esi	
call	_stricmp
test	eax, eax
jnz	loc_641D3BAC
			
mov	esi, 1
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edi, eax
mov	eax, esi
mov	[pt], al
jmp	loc_641D3960
			
mov	dword ptr [esp+8], 0 
lea	eax, [ebp+var_20]
mov	[esp+4], eax	
lea	ecx, [ebp+buf]
mov	[esp], ecx	
call	_strtol
mov	edi, [ebp+var_20]
cmp	edi, [ebp+var_160]
jz	loc_641D3626	
mov	esi, eax
movsx	eax, byte ptr [edi]
mov	[esp], eax	
call	_tolower
cmp	eax, 6Bh
jz	loc_641D3C5C
jg	loc_641D3C3A
test	eax, eax
jz	short loc_641D3A96
cmp	eax, 67h
jnz	loc_641D3626	
shl	esi, 1Eh
			
cmp	byte ptr [edi+1], 0
jnz	loc_641D3626	
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edi, eax
mov	[eax], esi
jmp	loc_641D3960
mov	al, [edi]
inc	edi
mov	edx, [ebp+file]
mov	[edx+0Ch], edi
cmp	al, 3Bh
jnz	loc_641D3782
mov	eax, [thisopt+8]
test	eax, eax
jz	loc_641D337A
mov	edx, [thisopt+10h]
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 0
mov	ecx, [ebp+file]
mov	edx, [ecx+14h]
mov	[esp+8], edx
mov	edx, [thisopt]
mov	[esp+4], edx
mov	edx, [thisopt+4]
mov	[esp], edx
call	eax
mov	esi, [ebp+file]
mov	edi, [esi+0Ch]
jmp	loc_641D337A
mov	eax, ret
mov	ecx, 7
mov	ret, [ebp+var_15C]
mov	esi, inc_file
rep movsd
mov	cl, 7
mov	edi, ebx
mov	inc_file, [ebp+file]
rep movsd
mov	[esp], ebx	
mov	[ebp+var_158], ret
call	_silc_config_close
lea	file, [ebp+tmp_file]
mov	ecx, 7
mov	inc_file, [ebp+file]
rep movsd
mov	eax, [ebp+var_158]
add	esp, 17Ch
pop	inc_file
pop	esi
pop	file
leave
retn
mov	ret, [ebp+file]
mov	pt, [esi+0Ch]
jmp	loc_641D337A
mov	[esp], pt
call	_silc_free
mov	eax, [ebp+file]
mov	pt, [eax+0Ch]
jmp	loc_641D337A
xor	edx, edx
mov	eax, esi	
mov	[ebp+var_158], ret
call	_silc_config_destroy
mov	ecx, [ebp+var_158]
jmp	loc_641D372A
xor	edx, edx
mov	eax, esi	
call	_silc_config_destroy
jmp	loc_641D38B7
mov	dword ptr [esp+4], offset aOn
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	loc_641D3A1A
mov	dword ptr [esp+4], offset a1 
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	loc_641D3A1A
mov	dword ptr [esp+4], offset aNo 
mov	[esp], esi	
call	_stricmp
test	eax, eax
jnz	short loc_641D3C64
			
xor	esi, esi
jmp	loc_641D3A1F
mov	eax, 0Dh
jmp	loc_641D362B
mov	eax, 0Eh
mov	ret, [ebp+file]
cmp	dword ptr [ecx+4], 1
jle	loc_641D362B
inc	edi
mov	[ecx+0Ch], edi
xor	al, al
jmp	loc_641D362B
xor	eax, eax
mov	edx, [ebp+file]
cmp	dword ptr [edx+4], 1
jle	loc_641D362B
mov	al, 0Ch
jmp	loc_641D362B
cmp	eax, 6Dh
jnz	loc_641D3626	
shl	esi, 14h
jmp	loc_641D3A96
mov	eax, ret
jmp	loc_641D362B
mov	eax, 6
jmp	loc_641D362B
shl	esi, 0Ah
jmp	loc_641D3A96
mov	dword ptr [esp+4], offset aFalse 
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	loc_641D3BF0
mov	dword ptr [esp+4], offset aOff 
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	loc_641D3BF0
mov	dword ptr [esp+4], offset a0 
mov	[esp], esi	
call	_stricmp
test	eax, eax
jz	loc_641D3BF0
jmp	loc_641D3626	
align 4
public _silc_config_main
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0Ch
mov	ebx, [ebp+ent]
mov	edi, [ebx+4]
inc	dword ptr [file+4]
mov	eax, ebx	
call	_silc_config_main_internal
mov	esi, eax
mov	eax, [file+4]
test	eax, eax
jz	short loc_641D3CF0
dec	eax
mov	[file+4], eax
test	eax, eax
jnz	short loc_641D3CE4
cmp	byte ptr [file+18h], 1
jz	short loc_641D3CFC
mov	edx, 1		
mov	eax, ent_0	
call	_silc_config_destroy
mov	eax, ret
add	esp, 0Ch
pop	ent_0
pop	ret
pop	file
leave
retn
align 4
xor	edx, edx	
mov	eax, ent_0	
call	_silc_config_destroy
mov	eax, ret
add	esp, 0Ch
pop	ent_0
pop	ret
pop	file
leave
retn
align 10h
public _silc_fd_stream_io
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	ecx, [ebp+type]
mov	eax, [ebp+context]
mov	edx, [eax+8]
test	edx, edx
jz	short locret_641D3D2D
cmp	type_0,	1
jz	short loc_641D3D44
cmp	type_0,	2
jz	short loc_641D3D30
leave
retn
align 10h
mov	type_0,	[context_0+0Ch]
mov	[ebp+type], ecx
mov	[ebp+app_context], 1
mov	[ebp+schedule],	context_0
leave
jmp	edx
align 4
mov	type_0,	[context_0+0Ch]
mov	[ebp+type], ecx
mov	[ebp+app_context], 0
mov	[ebp+schedule],	context_0
leave
jmp	edx
align 4
public _silc_fd_stream_get_info
push	ebp
mov	ebp, esp
push	ebx
mov	eax, [ebp+stream]
mov	ecx, [ebp+read_fd]
mov	edx, [ebp+write_fd]
test	eax, eax
jz	short loc_641D3D71
cmp	dword ptr [stream_0], offset _silc_fd_stream_ops
jz	short loc_641D3D78
xor	stream_0, stream_0
pop	ebx
leave
retn
align 4
test	read_fd_0, read_fd_0
jz	short loc_641D3D81
mov	ebx, [stream_0+10h]
mov	[read_fd_0], ebx
test	write_fd_0, write_fd_0
jz	short loc_641D3D8A
mov	stream_0, [stream_0+14h]
mov	[write_fd_0], eax
mov	al, 1
pop	ebx
leave
retn
align 10h
public _silc_fd_stream_get_error
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
test	eax, eax
jz	short loc_641D3DA2
cmp	dword ptr [stream_0], offset _silc_fd_stream_ops
jz	short loc_641D3DA8
xor	stream_0, stream_0
leave
retn
align 4
mov	stream_0, [stream_0+18h]
leave
retn
align 10h
public _silc_fd_stream_get_schedule
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	eax, [eax+4]
leave
retn
align 4
public _silc_fd_stream_notifier
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+stream]
mov	esi, [ebp+schedule]
mov	eax, [ebp+callback]
mov	[ebx+8], eax
mov	eax, [ebp+context]
mov	[ebx+0Ch], eax
mov	[ebx+4], esi
test	esi, esi
jz	loc_641D3E8B
mov	context_0, [stream_0+14h]
test	eax, eax
jle	short loc_641D3E23
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], stream_0 
mov	dword ptr [esp+8], offset _silc_fd_stream_io 
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	_silc_schedule_task_add
mov	eax, [stream_0+14h]
mov	[esp], eax	
call	_silc_file_set_nonblock
mov	eax, [stream_0+10h]
test	eax, eax
jle	short loc_641D3E8B
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], stream_0 
mov	dword ptr [esp+8], offset _silc_fd_stream_io 
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	_silc_schedule_task_add
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	eax, [stream_0+10h]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	_silc_schedule_set_listen_fd
mov	eax, [stream_0+10h]
mov	[esp], eax	
call	_silc_file_set_nonblock
mov	eax, [stream_0+14h]
test	eax, eax
jle	short loc_641D3E94
			
mov	al, 1
add	esp, 20h
pop	stream_0
pop	schedule_0
leave
retn
mov	eax, [stream_0+10h]
mov	[stream_0+14h],	eax
mov	al, 1
add	esp, 20h
pop	stream_0
pop	schedule_0
leave
retn
align 4
public _silc_fd_stream_close
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+stream]
mov	eax, [ebx+10h]
test	eax, eax
jle	short loc_641D3EE5
mov	[esp], eax	
call	_silc_file_close
mov	eax, [stream_0+4]
test	eax, eax
jz	short loc_641D3EE5
mov	edx, [stream_0+10h]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
mov	eax, [stream_0+10h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
			
mov	eax, [stream_0+14h]
test	eax, eax
jle	short loc_641D3F21
cmp	eax, [stream_0+10h]
jz	short loc_641D3F21
mov	[esp], eax	
call	_silc_file_close
mov	eax, [stream_0+4]
test	eax, eax
jz	short loc_641D3F21
mov	edx, [stream_0+14h]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
mov	eax, [stream_0+14h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
			
mov	al, 1
add	esp, 14h
pop	stream_0
leave
retn
align 4
public _silc_fd_stream_destroy
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+stream]
mov	[esp], ebx	
call	_silc_fd_stream_close
mov	[ebp+stream], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
public _silc_fd_stream_write
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+stream]
mov	edx, [ebx+8]
test	edx, edx
jz	short loc_641D3FD0
mov	eax, [ebp+data_len]
mov	[esp+8], eax	
mov	eax, [ebp+data]
mov	[esp+4], eax	
mov	eax, [stream_0+14h]
mov	[esp], eax	
call	_silc_file_write
mov	esi, eax
test	eax, eax
js	short loc_641D3FA0
mov	edx, [stream_0+10h]
mov	ret, [stream_0+14h]
cmp	edx, eax
jz	short loc_641D3FE0
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
mov	eax, ret
add	esp, 10h
pop	stream_0
pop	ret
leave
retn
align 10h
call	__errno
cmp	dword ptr [eax], 0Bh
jz	short loc_641D4008
call	__errno
cmp	dword ptr [eax], 4
jz	short loc_641D4008
mov	eax, [stream_0+14h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
call	__errno
mov	eax, [eax]
mov	[stream_0+18h],	eax
mov	ret, 0FFFFFFFEh
mov	eax, ret
add	esp, 10h
pop	stream_0
pop	ret
leave
retn
align 10h
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	[esp+4], edx	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	eax, ret
add	esp, 10h
pop	stream_0
pop	ret
leave
retn
			
mov	dword ptr [esp+0Ch], 0
mov	dword ptr [esp+8], 3 
mov	eax, [stream_0+14h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	ret, 0FFFFFFFFh
jmp	loc_641D3F96
public _silc_fd_stream_read
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+stream]
mov	ecx, [ebx+8]
test	ecx, ecx
jz	short loc_641D40BC
mov	eax, [ebp+buf_len]
mov	[esp+8], eax	
mov	eax, [ebp+buf]
mov	[esp+4], eax	
mov	eax, [stream_0+10h]
mov	[esp], eax	
call	_silc_file_read
cmp	eax, 0
jl	short loc_641D408C
jz	short loc_641D406C
add	esp, 24h
pop	stream_0
leave
retn
align 4
mov	edx, [stream_0+10h]
mov	[esp+4], edx	
mov	edx, [stream_0+4]
mov	[esp], edx	
mov	[ebp+var_C], len
call	_silc_schedule_unset_listen_fd
mov	eax, [ebp+var_C]
add	esp, 24h
pop	stream_0
leave
retn
align 4
call	__errno
cmp	dword ptr [eax], 0Bh
jz	short loc_641D40C8
call	__errno
cmp	dword ptr [eax], 4
jz	short loc_641D40C8
mov	eax, [stream_0+10h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
call	__errno
mov	eax, [eax]
mov	[stream_0+18h],	eax
mov	eax, 0FFFFFFFEh
add	esp, 24h
pop	stream_0
leave
retn
align 4
			
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	eax, [stream_0+10h]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	eax, 0FFFFFFFFh
jmp	loc_641D4065
public _silc_fd_stream_create2
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short locret_641D4124
mov	dword ptr [eax], offset	_silc_fd_stream_ops
mov	edx, [ebp+read_fd]
mov	[eax+10h], edx
mov	edx, [ebp+write_fd]
mov	[eax+14h], edx
leave
retn
align 4
public _silc_fd_stream_file2
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+read_file]
mov	eax, [ebp+write_file]
test	eax, eax
jz	short loc_641D41A0
mov	dword ptr [esp+4], 101h	
mov	[esp], write_file_0 
call	_silc_file_open
mov	ebx, eax
test	eax, eax
js	short loc_641D41B8
test	read_file_0, read_file_0
jnz	short loc_641D4180
mov	dword ptr [esp+4], 1Ch
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641D41A4
mov	dword ptr [eax], offset	_silc_fd_stream_ops
mov	[eax+10h], fd1
mov	[eax+14h], fd2
add	esp, 10h
pop	fd2
pop	fd1
leave
retn
align 10h
mov	dword ptr [esp+4], 0 
mov	[esp], read_file_0 
call	_silc_file_open
mov	read_file_0, eax
test	eax, eax
jns	short loc_641D4154
xor	fd1, fd1
add	esp, 10h
pop	fd2
pop	fd1
leave
retn
align 10h
xor	ebx, ebx
jmp	short loc_641D4150
mov	[esp], fd1
call	_silc_file_close
mov	[esp], fd2	
call	_silc_file_close
xor	eax, eax
jmp	short loc_641D4198
mov	dword ptr [esp], 0
call	_silc_file_close
xor	eax, eax
jmp	short loc_641D4178
public _silc_fd_stream_file
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+filename]
mov	dl, byte ptr [ebp+reading]
mov	cl, [ebp+writing]
test	eax, eax
jz	short locret_641D41F8
test	cl, cl
jnz	short loc_641D41F4
xor	writing_0, writing_0
test	dl, dl
jnz	short loc_641D41E7
xor	filename_0, filename_0
mov	[ebp+reading], write_file
mov	[ebp+filename],	read_file
leave
jmp	_silc_fd_stream_file2
align 4
mov	writing_0, filename_0
jmp	short loc_641D41E1
leave
retn
align 4
public _silc_fd_stream_create
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+fd]
test	ebx, ebx
jle	short loc_641D4238
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641D4232
mov	dword ptr [eax], offset	_silc_fd_stream_ops
mov	[eax+10h], fd_0
mov	dword ptr [eax+14h], 0
add	esp, 14h
pop	fd_0
leave
retn
xor	eax, eax
add	esp, 14h
pop	fd_0
leave
retn
public _silc_file_size
			
push	ebp
mov	ebp, esp
sub	esp, 48h
lea	eax, [ebp+stats]
mov	[esp+4], eax	
mov	eax, [ebp+filename]
mov	[esp], eax	
call	_stat
test	eax, eax
js	short loc_641D4264
mov	ret, [ebp+stats.st_size]
cdq
leave
retn
align 4
xor	ret, ret
xor	edx, edx
leave
retn
align 4
public _silc_file_open_mode
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_open
public _silc_file_open
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp+8], 180h
mov	eax, [ebp+flags]
mov	[esp+4], eax	
mov	eax, [ebp+filename]
mov	[esp], eax	
call	_open
leave
retn
align 4
public _silc_file_close
			
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_close
public _silc_file_write
			
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_write
public _silc_file_read
			
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_read
public _silc_file_writefile_mode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+filename]
mov	edi, [ebp+buffer]
mov	eax, [ebp+len]
mov	[ebp+var_1C], eax
mov	eax, [ebp+mode]
mov	[esp+8], eax
mov	dword ptr [esp+4], 8301h 
mov	[esp], esi	
call	_open
mov	ebx, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641D4318
mov	fd, [ebp+var_1C]
mov	[esp+8], eax	
mov	[esp+4], buffer_0 
mov	[esp], fd	
call	_write
inc	eax
jz	short loc_641D4358
mov	[ebp+filename],	fd
add	esp, 2Ch
pop	fd
pop	filename_0
pop	buffer_0
leave
jmp	_close
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	[esp+4], filename_0
mov	dword ptr [esp], offset	aCannotOpenFile	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	eax, 0FFFFFFFFh
add	esp, 2Ch
pop	fd
pop	filename_0
pop	buffer_0
leave
retn
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	[esp+4], filename_0
mov	dword ptr [esp], offset	aCannotWriteToF	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	[esp], fd	
call	_silc_file_close
jmp	short loc_641D434B
align 4
public _silc_file_writefile
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+filename]
mov	edi, [ebp+buffer]
mov	eax, [ebp+len]
mov	[ebp+var_1C], eax
mov	dword ptr [esp+8], 1A4h
mov	dword ptr [esp+4], 8301h 
mov	[esp], esi	
call	_open
mov	ebx, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641D43F4
mov	fd, [ebp+var_1C]
mov	[esp+8], eax	
mov	[esp+4], buffer_0 
mov	[esp], fd	
call	_write
inc	eax
jz	short loc_641D4434
mov	[ebp+filename],	fd
add	esp, 2Ch
pop	fd
pop	filename_0
pop	buffer_0
leave
jmp	_close
align 4
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	[esp+4], filename_0
mov	dword ptr [esp], offset	aCannotOpenFile	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	eax, 0FFFFFFFFh
add	esp, 2Ch
pop	fd
pop	filename_0
pop	buffer_0
leave
retn
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	[esp+4], filename_0
mov	dword ptr [esp], offset	aCannotWriteToF	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	[esp], fd	
call	_silc_file_close
jmp	short loc_641D4427
align 4
public _silc_file_readfile
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	dword ptr [esp+8], 180h
mov	dword ptr [esp+4], 0 
mov	eax, [ebp+filename]
mov	[esp], eax	
call	_open
mov	ebx, eax
test	eax, eax
js	loc_641D4534
mov	dword ptr [esp+8], 2 
mov	dword ptr [esp+4], 0 
mov	[esp], fd	
call	_lseek
mov	esi, eax
test	eax, eax
js	short loc_641D4528
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 0 
mov	[esp], fd	
call	_lseek
test	eax, eax
js	short loc_641D4528
mov	dword ptr [esp+4], 1 
lea	eax, [filelen+1]
mov	[esp], eax	
call	_silc_calloc
mov	edi, eax
mov	[esp+8], filelen 
mov	[esp+4], eax	
mov	[esp], fd	
call	_read
inc	eax
jz	short loc_641D457C
mov	[esp], fd	
call	_close
mov	byte ptr [buffer+filelen], 0FFh
mov	eax, [ebp+return_len]
test	eax, eax
jz	short loc_641D451C
mov	eax, [ebp+return_len]
mov	[eax], filelen
			
mov	eax, buffer
add	esp, 1Ch
pop	fd
pop	filelen
pop	buffer
leave
retn
align 4
			
mov	[esp], fd	
call	_silc_file_close
xor	edi, edi
jmp	short loc_641D451C
call	__errno
cmp	dword ptr [eax], 2
jnz	short loc_641D4542
xor	edi, edi
jmp	short loc_641D451C
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	eax, [ebp+filename]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aCannotOpenFi_0	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	edi, edi
jmp	short loc_641D451C
mov	dword ptr [buffer], 0
mov	[esp], fd	
call	_silc_file_close
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	eax, [ebp+filename]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aCannotReadFrom	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	buffer,	buffer
jmp	loc_641D451C
align 4
public _silc_fsm_init
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm]
mov	edx, [ebp+schedule]
test	edx, edx
jz	short loc_641D4608
mov	ecx, [ebp+fsm_context]
mov	[fsm_0+4], ecx
mov	dword ptr [fsm_0+14h], 0
mov	ecx, [ebp+destructor]
mov	[fsm_0+18h], ecx
mov	ecx, [ebp+destructor_context]
mov	[fsm_0+1Ch], ecx
mov	[fsm_0+8], schedule_0
and	byte ptr [fsm_0+28h], 7Ah
mov	dword ptr [fsm_0+24h], 0
mov	dword ptr [fsm_0+20h], 0
mov	al, 1
leave
retn
align 4
xor	fsm_0, fsm_0
leave
retn
public _silc_fsm_next
			
push	ebp
mov	ebp, esp
mov	edx, [ebp+next_state]
mov	eax, [ebp+fsm]
mov	[eax+10h], edx
leave
retn
align 4
public _silc_fsm_get_schedule
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm]
mov	eax, [eax+8]
leave
retn
align 4
public _silc_fsm_get_machine
push	ebp
mov	ebp, esp
mov	eax, [ebp+thread]
mov	eax, [eax+20h]
leave
retn
align 4
public _silc_fsm_is_started
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm]
mov	al, [eax+28h]
shr	al, 7
leave
retn
align 4
public _silc_fsm_set_context
push	ebp
mov	ebp, esp
mov	edx, [ebp+fsm_context]
mov	eax, [ebp+fsm]
mov	[eax+4], edx
leave
retn
align 4
public _silc_fsm_get_context
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm]
mov	eax, [eax+4]
leave
retn
align 10h
public _silc_fsm_set_state_context
push	ebp
mov	ebp, esp
mov	edx, [ebp+state_context]
mov	eax, [ebp+fsm]
mov	[eax+14h], edx
leave
retn
align 10h
public _silc_fsm_get_state_context
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm]
mov	eax, [eax+14h]
leave
retn
align 4
public _silc_fsm_thread
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+context]
mov	esi, [ebx+8]
mov	[esp+4], old	
mov	dword ptr [esp], 0 
call	_silc_schedule_init
mov	[ebx+8], eax
test	eax, eax
jz	loc_641D4735
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641D4735
mov	eax, [context_0+8]
mov	[esp], eax	
call	_silc_schedule
mov	eax, [context_0+8]
mov	[esp], eax	
call	_silc_schedule_uninit
mov	[context_0+8], old
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_fsm_finish_fsm 
mov	dword ptr [esp+4], 0 
mov	[esp], old	
call	_silc_schedule_task_add
mov	eax, [context_0+8]
mov	[esp], eax	
call	_silc_schedule_wakeup
			
xor	eax, eax
add	esp, 20h
pop	context_0
pop	old
leave
retn
align 10h
public _silc_fsm_next_later
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+fsm]
mov	eax, [ebp+seconds]
mov	edx, [ebp+useconds]
mov	ecx, [ebp+next_state]
mov	[ebx+10h], ecx
test	eax, eax
jnz	short loc_641D475E
test	useconds_0, useconds_0
jz	short loc_641D47A4
mov	dword ptr [esp+18h], 1 
mov	[esp+14h], useconds_0 
mov	[esp+10h], seconds_0 
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	seconds_0, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_task_add
or	byte ptr [fsm_0+28h], 40h
mov	eax, [fsm_0+8]
mov	[ebp+fsm], eax
add	esp, 24h
pop	fsm_0
leave
jmp	_silc_schedule_wakeup
align 4
add	esp, 24h
pop	fsm_0
leave
retn
align 4
public _silc_fsm_event_signal
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+event]
mov	eax, [esi]
mov	edi, [eax+24h]
mov	[esp], lock	
call	_silc_mutex_lock
mov	eax, [esi+18h]
lea	edx, [eax+1]
and	edx, 1FFFFFh
and	eax, 0FFE00000h
or	eax, edx
mov	[esi+18h], eax
mov	ebx, [esi+4]
mov	[esi+0Ch], ebx
and	byte ptr [esi+14h], 0FDh
jmp	loc_641D48A5
align 4
movzx	eax, word ptr [event_0+12h]
mov	eax, [ebx+eax]
mov	[event_0+0Ch], eax
mov	eax, [ebx+0Ch]
test	eax, eax
jz	short loc_641D4823
mov	[esp+0Ch], ebx	
mov	dword ptr [esp+8], offset _silc_fsm_event_timedout 
mov	dword ptr [esp+4], 0 
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_schedule_task_del_by_all
mov	dword ptr [ebx+0Ch], 0
mov	dword ptr [esp+4], 8 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641D48A2
mov	[eax], event_0
mov	[eax+4], ebx
mov	cx, [event_0+1Ah]
mov	edx, ecx
shr	dx, 5
inc	edx
and	edx, 3FFh
shl	edx, 5
and	ecx, 0FFFF801Fh
or	ecx, edx
mov	[event_0+1Ah], cx
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], offset _silc_fsm_signal 
mov	dword ptr [esp+4], 0 
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_schedule_task_add
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_schedule_wakeup
mov	ebx, [event_0+0Ch]
test	ebx, ebx
jz	short loc_641D48C0
test	byte ptr [event_0+14h],	2
jnz	loc_641D47EC
movzx	eax, word ptr [event_0+10h]
mov	eax, [ebx+eax]
jmp	loc_641D47F3
align 10h
mov	[ebp+event], lock
add	esp, 2Ch
pop	ebx
pop	event_0
pop	lock
leave
jmp	_silc_mutex_unlock
align 10h
public _silc_fsm_event_wait
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+event]
mov	esi, [ebp+fsm]
mov	eax, [ebx]
mov	eax, [eax+24h]
mov	[ebp+lock], eax
mov	[esp], eax	
call	_silc_mutex_lock
test	dword ptr [ebx+18h], 1FFFFFh
jnz	short loc_641D4940
mov	edx, [event_0+4]
test	edx, edx
jz	loc_641D49E4
movzx	eax, word ptr [event_0+10h]
mov	edx, [event_0+8]
mov	[edx+eax], fsm_0
test	byte ptr [event_0+14h],	1
jz	short loc_641D491D
movzx	edx, word ptr [event_0+12h]
mov	ecx, [event_0+8]
mov	[fsm_0+edx], ecx
mov	[event_0+8], fsm_0
mov	dword ptr [fsm_0+eax], 0
add	dword ptr [event_0+14h], 4
mov	eax, [ebp+lock]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
add	esp, 4Ch
pop	event_0
pop	fsm_0
pop	edi
leave
retn
mov	edx, [event_0+4]
test	prev, prev
jz	short loc_641D4967
cmp	fsm_0, prev
jz	loc_641D4A02
movzx	edi, word ptr [event_0+10h]
jmp	short loc_641D495E
align 4
cmp	fsm_0, prev
jz	short loc_641D49B0
mov	edx, prev
lea	p, [prev+edi]
mov	eax, [p]
test	prev, prev
jnz	short loc_641D4958
cmp	[event_0+8], fsm_0
jz	loc_641D49F0
			
test	dword ptr [event_0+14h], 0FFFFFFFCh
jz	short loc_641D4994
mov	edi, [ebp+lock]
mov	[esp], edi	
call	_silc_mutex_unlock
mov	eax, 1
add	esp, 4Ch
pop	event_0
pop	fsm_0
pop	edi
leave
retn
align 4
mov	eax, [event_0+18h]
lea	prev, [eax+1FFFFFh]
and	edx, 1FFFFFh
and	eax, 0FFE00000h
or	eax, edx
mov	[event_0+18h], eax
jmp	short loc_641D4979
align 10h
mov	[ebp+var_3C], p
mov	prev, [fsm_0+edi]
mov	edi, [ebp+var_3C]
mov	[edi], eax
test	eax, eax
jz	short loc_641D49C5
test	byte ptr [event_0+14h],	1
jnz	short loc_641D49D8
			
cmp	[event_0+0Ch], fsm_0
jz	short loc_641D49F8
sub	dword ptr [event_0+14h], 4
cmp	[event_0+8], fsm_0
jnz	short loc_641D4970
jmp	short loc_641D49F0
align 4
movzx	p, word	ptr [event_0+12h]
mov	edi, [fsm_0+ecx]
mov	[eax+ecx], edi
jmp	short loc_641D49C5
mov	[event_0+4], fsm_0
movzx	eax, word ptr [event_0+10h]
jmp	loc_641D490D
			
mov	[event_0+8], prev
jmp	loc_641D4970
mov	p, [ebp+var_3C]
mov	eax, [ecx]
mov	[event_0+0Ch], eax
jmp	short loc_641D49CA
lea	ecx, [event_0+4]
mov	[ebp+var_3C], ecx
movzx	edi, word ptr [event_0+10h]
xor	prev, prev
jmp	short loc_641D49B3
public _silc_fsm_event_timedwait
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edi, [ebp+event]
mov	ebx, [ebp+fsm]
mov	esi, [ebp+ret_to]
mov	eax, [edi]
mov	eax, [eax+24h]
mov	[esp], lock	
mov	[ebp+mutex], lock
call	_silc_mutex_lock
mov	dl, [ebx+28h]
test	dl, 10h
mov	eax, [ebp+mutex]
jz	short loc_641D4A64
and	edx, 0FFFFFFEFh
mov	[fsm_0+28h], dl
test	ret_to_0, ret_to_0
jz	short loc_641D4A4A
mov	byte ptr [ret_to_0], 1
mov	[esp], eax	
call	_silc_mutex_unlock
mov	edx, 1
mov	eax, value
add	esp, 3Ch
pop	fsm_0
pop	ret_to_0
pop	event_0
leave
retn
align 4
mov	[esp], eax	
call	_silc_mutex_unlock
mov	[esp+4], fsm_0	
mov	[esp], event_0	
call	_silc_fsm_event_wait
mov	edx, eax
test	eax, eax
jz	short loc_641D4A90
test	ret_to_0, ret_to_0
jz	short loc_641D4A57
mov	byte ptr [ret_to_0], 0
mov	value, edx
add	esp, 3Ch
pop	fsm_0
pop	ret_to_0
pop	event_0
leave
retn
align 10h
mov	dword ptr [esp+18h], 1 
mov	value, [ebp+useconds]
mov	[esp+14h], eax	
mov	eax, [ebp+seconds]
mov	[esp+10h], eax	
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_event_timedout 
mov	dword ptr [esp+4], 0 
mov	eax, [fsm_0+8]
mov	[esp], eax	
mov	[ebp+mutex], value
call	_silc_schedule_task_add
mov	[fsm_0+0Ch], event_0
mov	edx, [ebp+mutex]
jmp	short loc_641D4A7E
public _silc_fsm_event_free
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+event]
test	word ptr [eax+1Ah], 7FE0h
jz	short loc_641D4AE4
leave
retn
align 4
mov	edx, [event_0+14h]
shr	edx, 2
jnz	short locret_641D4AE1
leave
jmp	_silc_free
align 4
public _silc_fsm_alloc
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+schedule]
mov	dword ptr [esp+4], 2Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641D4B48
test	schedule_0, schedule_0
jz	short loc_641D4B50
mov	edx, [ebp+fsm_context]
mov	[fsm+4], edx
mov	dword ptr [fsm+14h], 0
mov	edx, [ebp+destructor]
mov	[fsm+18h], edx
mov	edx, [ebp+destructor_context]
mov	[fsm+1Ch], edx
mov	[fsm+8], schedule_0
and	byte ptr [fsm+28h], 7Ah
mov	dword ptr [fsm+24h], 0
mov	dword ptr [fsm+20h], 0
add	esp, 14h
pop	schedule_0
leave
retn
align 10h
mov	[esp], fsm	
call	_silc_free
xor	eax, eax
add	esp, 14h
pop	schedule_0
leave
retn
public _silc_fsm_event_init
push	ebp
mov	ebp, esp
push	edi
mov	edx, [ebp+event]
mov	ecx, 1Ch
xor	eax, eax
mov	edi, edx
rep stosb
mov	eax, [ebp+fsm]
mov	[edx], eax
mov	word ptr [edx+1Ah], 0
mov	dword ptr [edx+14h], 0
mov	byte ptr [edx+14h], 0
pop	event_0
leave
retn
align 4
public _silc_fsm_thread_init
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+thread]
mov	edx, [ebp+fsm]
mov	cl, [ebp+real_thread]
mov	eax, [ebp+thread_context]
mov	[ebx+4], eax
mov	dword ptr [ebx+14h], 0
mov	eax, [ebp+destructor]
mov	[ebx+18h], eax
mov	eax, [ebp+destructor_context]
mov	[ebx+1Ch], eax
mov	eax, [edx+8]
mov	[ebx+8], eax
mov	al, [ebx+28h]
or	eax, 1
mov	esi, 1
and	esi, ecx
shl	esi, 1
and	eax, 79h
or	eax, esi
mov	[ebx+28h], al
mov	[ebx+20h], edx
mov	eax, [edx+20h]
mov	eax, [edx+20h]
inc	eax
mov	[edx+20h], eax
test	cl, cl
jz	short loc_641D4BEB
mov	real_thread_0, [fsm_0+24h]
test	ecx, ecx
jz	short loc_641D4BF4
			
add	esp, 10h
pop	thread_0
pop	esi
leave
retn
align 4
add	fsm_0, 24h
mov	[esp], edx	
call	_silc_mutex_alloc
test	al, al
jnz	short loc_641D4BEB
and	byte ptr [thread_0+28h], 0FDh
jmp	short loc_641D4BEB
align 4
public _silc_fsm_event_alloc
push	ebp
mov	ebp, esp
push	edi
sub	esp, 14h
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, eax
test	eax, eax
jz	short loc_641D4C52
mov	ecx, 1Ch
xor	event, event
mov	edi, event
rep stosb
mov	eax, [ebp+fsm]
mov	[edx], eax
mov	word ptr [edx+1Ah], 0
mov	dword ptr [edx+14h], 0
mov	byte ptr [edx+14h], 0
or	byte ptr [edx+1Bh], 80h
mov	eax, event
add	esp, 14h
pop	edi
leave
retn
align 4
public _silc_fsm_thread_alloc
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	esi, [ebp+fsm]
mov	dl, [ebp+real_thread]
mov	dword ptr [esp+4], 2Ch 
mov	dword ptr [esp], 1 
mov	[ebp+var_C], dl
call	_silc_calloc
mov	ebx, eax
test	eax, eax
mov	dl, [ebp+var_C]
jz	short loc_641D4CD6
mov	thread,	[ebp+thread_context]
mov	[thread+4], eax
mov	dword ptr [thread+14h],	0
mov	eax, [ebp+destructor]
mov	[thread+18h], eax
mov	eax, [ebp+destructor_context]
mov	[thread+1Ch], eax
mov	eax, [fsm_0+8]
mov	[thread+8], eax
mov	al, [thread+28h]
or	eax, 1
mov	cl, dl
and	ecx, 1
shl	ecx, 1
and	eax, 79h
or	eax, ecx
mov	[thread+28h], al
mov	[thread+20h], fsm_0
mov	eax, [fsm_0+20h]
mov	eax, [fsm_0+20h]
inc	eax
mov	[fsm_0+20h], eax
test	dl, dl
jz	short loc_641D4CD6
mov	eax, [fsm_0+24h]
test	eax, eax
jz	short loc_641D4CE0
			
mov	eax, thread
add	esp, 20h
pop	thread
pop	esi
leave
retn
align 10h
add	fsm_0, 24h
mov	[esp], esi	
call	_silc_mutex_alloc
test	al, al
jnz	short loc_641D4CD6
and	byte ptr [thread+28h], 0FDh
jmp	short loc_641D4CD6
align 4
public _silc_fsm_free_final
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
test	byte ptr [f+28h], 1
jnz	short loc_641D4D34
mov	eax, [f+24h]
test	eax, eax
jz	short loc_641D4D1D
mov	[esp], eax	
call	_silc_mutex_free
test	byte ptr [f+28h], 1
jnz	short loc_641D4D34
			
mov	dword ptr [f+20h], 0
			
mov	[ebp+schedule],	f
add	esp, 14h
pop	f
leave
jmp	_silc_free
align 4
			
mov	eax, [f+24h]
test	eax, eax
jz	short loc_641D4D24
test	word ptr [eax+1Ah], 7FE0h
jnz	short loc_641D4D24
mov	edx, [eax+14h]
shr	edx, 2
jnz	short loc_641D4D24
mov	[esp], eax	
call	_silc_free
test	byte ptr [f+28h], 1
jnz	short loc_641D4D24
jmp	short loc_641D4D1D
align 4
public _silc_fsm_thread_wait
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+thread]
mov	esi, [ebx+20h]
mov	dword ptr [esp+4], 1Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, eax
test	eax, eax
jz	short loc_641D4DC3
mov	ecx, 1Ch
xor	eax, eax
mov	edi, edx
rep stosb
mov	[edx], esi
mov	word ptr [edx+1Ah], 0
mov	dword ptr [edx+14h], 0
mov	byte ptr [edx+14h], 0
or	byte ptr [edx+1Bh], 80h
mov	[thread_0+24h],	edx
mov	eax, [ebp+fsm]
mov	[esp+4], eax	
mov	[esp], edx	
call	_silc_fsm_event_wait
mov	al, 1
add	esp, 1Ch
pop	thread_0
pop	esi
pop	edi
leave
retn
mov	dword ptr [thread_0+24h], 0
xor	eax, eax
jmp	short loc_641D4DBB
align 10h
public _silc_fsm_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+fsm]
test	byte ptr [ebx+28h], 1
jnz	short loc_641D4E24
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_free_final 
mov	dword ptr [esp+4], 0 
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641D4E24
add	esp, 24h
pop	fsm_0
leave
retn
align 4
			
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
test	byte ptr [fsm_0+28h], 1
jnz	short loc_641D4E60
mov	eax, [fsm_0+24h]
test	eax, eax
jz	short loc_641D4E4A
mov	[esp], eax	
call	_silc_mutex_free
test	byte ptr [fsm_0+28h], 1
jnz	short loc_641D4E60
			
mov	dword ptr [fsm_0+20h], 0
			
mov	[ebp+fsm], fsm_0
add	esp, 24h
pop	fsm_0
leave
jmp	_silc_free
align 10h
			
mov	eax, [fsm_0+24h]
test	eax, eax
jz	short loc_641D4E51
test	word ptr [eax+1Ah], 7FE0h
jnz	short loc_641D4E51
mov	edx, [eax+14h]
shr	edx, 2
jnz	short loc_641D4E51
mov	[esp], eax	
call	_silc_free
test	byte ptr [fsm_0+28h], 1
jnz	short loc_641D4E51
jmp	short loc_641D4E4A
align 4
public _silc_fsm_continue
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+fsm]
test	byte ptr [f+28h], 40h
jnz	short loc_641D4EE4
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], f	
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	eax, [f+8]
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641D4F0C
			
mov	eax, [f+8]
mov	[ebp+fsm], eax
add	esp, 24h
pop	f
leave
jmp	_silc_schedule_wakeup
align 4
mov	[esp+0Ch], f	
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	eax, [f+8]
mov	[esp], eax	
call	_silc_schedule_task_del_by_all
and	byte ptr [f+28h], 0BFh
jmp	short loc_641D4E98
align 4
mov	eax, [f+8]
mov	[esp], eax	
call	_silc_schedule_get_context
nop
mov	eax, [f+14h]
mov	[esp+8], eax
mov	eax, [f+4]
mov	[esp+4], eax
mov	[esp], f
call	dword ptr [f+10h]
test	eax, eax
jz	short loc_641D4F18
cmp	eax, 2
jz	short loc_641D4F54
cmp	eax, 3
jz	short loc_641D4F48
dec	eax
jnz	short loc_641D4ED3
mov	[esp], f	
call	_silc_fsm_continue
jmp	short loc_641D4ED3
align 4
mov	[esp], f	
call	_silc_fsm_finish
jmp	short loc_641D4ED3
align 4
and	byte ptr [f+28h], 0DFh
jmp	loc_641D4ED3
align 10h
public _silc_fsm_event_timedout
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+context]
mov	eax, [fsm+0Ch]
mov	eax, [eax]
mov	eax, [eax+24h]
mov	[ebp+lock], eax
mov	[esp], eax	
call	_silc_mutex_lock
mov	edi, [fsm+0Ch]
mov	edx, [edi+4]
test	prev, prev
jz	short loc_641D4FA7
cmp	fsm, prev
jz	loc_641D5017
movzx	esi, word ptr [edi+10h]
jmp	short loc_641D4F9E
align 4
cmp	fsm, prev
jz	short loc_641D4FD8
mov	edx, prev
lea	p, [prev+esi]
mov	eax, [p]
test	prev, prev
jnz	short loc_641D4F98
cmp	[edi+8], fsm
jz	short loc_641D5008
			
test	edi, edi
jz	short loc_641D4FC3
mov	[esp], fsm	
call	_silc_fsm_continue
or	byte ptr [fsm+28h], 10h
mov	dword ptr [fsm+0Ch], 0
mov	eax, [ebp+lock]
mov	[ebp+schedule],	eax
add	esp, 4Ch
pop	fsm
pop	esi
pop	edi
leave
jmp	_silc_mutex_unlock
align 4
mov	[ebp+var_3C], p
mov	prev, [fsm+esi]
mov	p, [ebp+var_3C]
mov	[ecx], eax
test	eax, eax
jz	short loc_641D4FF7
test	byte ptr [edi+14h], 1
jz	short loc_641D4FF7
movzx	esi, word ptr [edi+12h]
mov	ecx, [fsm+esi]
mov	[eax+esi], ecx
			
cmp	[edi+0Ch], fsm
jz	short loc_641D500D
sub	dword ptr [edi+14h], 4
mov	edi, [fsm+0Ch]
cmp	[edi+8], fsm
jnz	short loc_641D4FAC
mov	[edi+8], prev
jmp	short loc_641D4FAC
mov	esi, [ebp+var_3C]
mov	eax, [esi]
mov	[edi+0Ch], eax
jmp	short loc_641D4FFC
lea	eax, [edi+4]
mov	[ebp+var_3C], eax
movzx	esi, word ptr [edi+10h]
xor	prev, prev
jmp	short loc_641D4FDB
align 4
public _silc_fsm_finish_fsm
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+context]
mov	[ebp+fsm], eax
mov	dword ptr [eax+10h], 0
test	byte ptr [eax+28h], 1
jz	loc_641D5130
mov	edi, [eax+24h]
test	edi, edi
jz	loc_641D5101
mov	eax, [edi]
mov	eax, [eax+24h]
mov	[ebp+mutex], eax
mov	[esp], eax	
call	_silc_mutex_lock
mov	ebx, [edi+4]
mov	[edi+0Ch], ebx
and	byte ptr [edi+14h], 0FDh
lea	edx, [edi+4]
mov	[ebp+var_24], edx
test	ebx, ebx
jz	short loc_641D50DA
nop
test	byte ptr [edi+14h], 2
jz	loc_641D5180
movzx	eax, word ptr [edi+12h]
mov	eax, [ebx+eax]
mov	[edi+0Ch], eax
mov	eax, [edi+4]
test	eax, eax
jz	short loc_641D50B7
cmp	ebx, eax
jz	loc_641D51CF
movzx	esi, word ptr [edi+10h]
jmp	short loc_641D50AE
align 4
cmp	ebx, ecx
jz	loc_641D518C
mov	eax, ecx
lea	edx, [eax+esi]
mov	ecx, [edx]
test	ecx, ecx
jnz	short loc_641D50A4
cmp	ebx, [edi+8]
jz	loc_641D51BD
			
mov	[esp], ebx	
call	_silc_fsm_continue
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_schedule_wakeup
mov	ebx, [edi+0Ch]
test	ebx, ebx
jnz	short loc_641D5078
mov	esi, [ebp+mutex]
mov	[esp], esi	
call	_silc_mutex_unlock
mov	edx, [ebp+fsm]
mov	eax, [edx+24h]
test	word ptr [eax+1Ah], 7FE0h
jz	loc_641D51F5
			
mov	ecx, [ebp+fsm]
mov	dword ptr [ecx+24h], 0
mov	esi, [ebp+fsm]
mov	eax, [esi+20h]
mov	edx, [eax+20h]
mov	edx, [eax+20h]
dec	edx
mov	[eax+20h], edx
mov	eax, [esi+18h]
test	eax, eax
jz	short loc_641D5125
mov	edx, [esi+20h]
test	byte ptr [edx+28h], 8
jz	loc_641D51DD
			
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 10h
mov	edx, [ebp+fsm]
mov	eax, [edx+20h]
test	eax, eax
jnz	loc_641D520E
mov	ecx, [ebp+fsm]
mov	eax, [ecx+24h]
test	eax, eax
jz	short loc_641D515A
mov	[esp], eax	
call	_silc_mutex_free
mov	esi, [ebp+fsm]
mov	dword ptr [esi+24h], 0
mov	edx, [ebp+fsm]
mov	eax, [edx+18h]
test	eax, eax
jz	short loc_641D5125
mov	ecx, edx
mov	edx, [edx+1Ch]
mov	[ebp+type], edx
mov	edx, [ecx+4]
mov	[ebp+app_context], edx
mov	[ebp+schedule],	ecx
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	eax
align 10h
movzx	eax, word ptr [edi+10h]
mov	eax, [ebx+eax]
jmp	loc_641D5089
mov	[ebp+var_3C], edx
mov	ecx, [ebx+esi]
mov	esi, [ebp+var_3C]
mov	[esi], ecx
test	ecx, ecx
jz	short loc_641D51AB
test	byte ptr [edi+14h], 1
jz	short loc_641D51AB
movzx	edx, word ptr [edi+12h]
mov	esi, [ebx+edx]
mov	[ecx+edx], esi
			
cmp	ebx, [edi+0Ch]
jz	short loc_641D51C5
sub	dword ptr [edi+14h], 4
cmp	ebx, [edi+8]
jnz	loc_641D50C0
mov	[edi+8], eax
jmp	loc_641D50C0
mov	ecx, [ebp+var_3C]
mov	edx, [ecx]
mov	[edi+0Ch], edx
jmp	short loc_641D51B0
movzx	esi, word ptr [edi+10h]
mov	ecx, [ebp+var_24]
mov	[ebp+var_3C], ecx
xor	eax, eax
jmp	short loc_641D518F
mov	edx, [esi+1Ch]
mov	[ebp+type], edx
mov	edx, [esi+4]
mov	[ebp+app_context], edx
mov	[ebp+schedule],	esi
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	eax
mov	edx, [eax+14h]
shr	edx, 2
jnz	loc_641D50F7
mov	[esp], eax	
call	_silc_free
jmp	loc_641D50F7
mov	dword ptr [esp+8], 1E4h	
mov	dword ptr [esp+4], offset aSilcfsm_c 
mov	dword ptr [esp], offset	aSilc_atomic_ge	
call	__assert
align 4
public _silc_fsm_finish
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+fsm]
mov	al, [ebx+28h]
and	eax, 7Fh
or	eax, 8
mov	[ebx+28h], al
mov	[esp+0Ch], ebx	
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_schedule_task_del_by_all
mov	al, [ebx+28h]
mov	dl, al
and	edx, 0FFFFFFBFh
mov	[ebx+28h], dl
mov	dl, al
and	edx, 3
cmp	dl, 3
jz	short loc_641D52F4
test	al, 20h
jz	short loc_641D52B0
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
mov	[esp+10h], fsm_0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_fsm_finish_fsm
add	esp, 24h
pop	fsm_0
leave
retn
align 10h
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_finish_fsm 
mov	dword ptr [esp+4], 0 
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641D527A
add	esp, 24h
pop	fsm_0
leave
retn
align 4
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_stop
mov	eax, [fsm_0+8]
mov	[ebp+fsm], eax
add	esp, 24h
pop	fsm_0
leave
jmp	_silc_schedule_wakeup
align 10h
public _silc_fsm_run
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
xchg	ax, ax
mov	eax, [fsm+14h]
mov	[esp+8], eax
mov	eax, [fsm+4]
mov	[esp+4], eax
mov	[esp], fsm
call	dword ptr [fsm+10h]
test	eax, eax
jz	short loc_641D531C
cmp	eax, 2
jz	short loc_641D5368
cmp	eax, 3
jz	short loc_641D5358
dec	eax
jz	short loc_641D5348
add	esp, 14h
pop	fsm
leave
retn
align 4
mov	[ebp+schedule],	fsm
add	esp, 14h
pop	fsm
leave
jmp	_silc_fsm_continue
align 4
mov	[ebp+schedule],	fsm
add	esp, 14h
pop	fsm
leave
jmp	_silc_fsm_finish
align 4
and	byte ptr [fsm+28h], 0DFh
add	esp, 14h
pop	fsm
leave
retn
align 4
public _silc_fsm_continue_sync
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+fsm]
test	byte ptr [f+28h], 40h
jz	short loc_641D53A7
mov	[esp+0Ch], f	
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	eax, [f+8]
mov	[esp], eax	
call	_silc_schedule_task_del_by_all
and	byte ptr [f+28h], 0BFh
mov	eax, [f+8]
mov	[esp], eax	
call	_silc_schedule_get_context
xchg	ax, ax
mov	eax, [f+14h]
mov	[esp+8], eax
mov	eax, [f+4]
mov	[esp+4], eax
mov	[esp], f
call	dword ptr [f+10h]
test	eax, eax
jz	short loc_641D53B4
cmp	eax, 2
jz	short loc_641D5400
cmp	eax, 3
jz	short loc_641D53F0
dec	eax
jz	short loc_641D53E0
add	esp, 14h
pop	f
leave
retn
align 10h
mov	[ebp+fsm], f
add	esp, 14h
pop	f
leave
jmp	_silc_fsm_continue
align 10h
mov	[ebp+fsm], f
add	esp, 14h
pop	f
leave
jmp	_silc_fsm_finish
align 10h
and	byte ptr [f+28h], 0DFh
add	esp, 14h
pop	f
leave
retn
align 4
public _silc_fsm_signal
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+context]
mov	eax, [p]
mov	eax, [eax]
mov	esi, [eax+24h]
mov	[esp], lock	
call	_silc_mutex_lock
mov	eax, [p]
test	dword ptr [eax+18h], 1FFFFFh
jz	loc_641D54BC
mov	edx, [eax+4]
mov	[eax+0Ch], edx
and	byte ptr [eax+14h], 0FDh
mov	eax, [p]
lea	lock, [lock+0]
mov	edx, [eax+0Ch]
test	edx, edx
jz	short loc_641D54BC
test	byte ptr [eax+14h], 2
jz	short loc_641D54B0
movzx	ecx, word ptr [eax+12h]
mov	ecx, [edx+ecx]
mov	[eax+0Ch], ecx
cmp	[p+4], edx
jnz	short loc_641D5444
mov	[esp], lock	
call	_silc_mutex_unlock
mov	eax, [p+4]
mov	[esp], eax	
call	_silc_fsm_continue_sync
mov	ecx, [p]
mov	dx, [ecx+1Ah]
mov	eax, edx
shr	ax, 5
add	eax, 3FFh
and	eax, 3FFh
shl	eax, 5
and	edx, 0FFFF801Fh
or	edx, eax
mov	[ecx+1Ah], dx
and	edx, 0FFFFFFE0h
cmp	dx, 8000h
jz	short loc_641D54C8
mov	[ebp+schedule],	p
add	esp, 10h
pop	p
pop	lock
leave
jmp	_silc_free
movzx	ecx, word ptr [eax+10h]
mov	ecx, [edx+ecx]
jmp	short loc_641D5458
align 4
			
mov	[esp], lock	
call	_silc_mutex_unlock
jmp	short loc_641D5473
align 4
mov	[esp], ecx	
call	_silc_fsm_event_free
mov	[ebp+schedule],	p
add	esp, 10h
pop	p
pop	lock
leave
jmp	_silc_free
align 10h
public _silc_fsm_start_real_thread
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
and	byte ptr [eax+28h], 0FDh
mov	[ebp+schedule],	eax
leave
jmp	_silc_fsm_continue_sync
align 4
public _silc_fsm_start
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+fsm]
mov	al, [ebx+28h]
mov	edx, [ebp+start_state]
mov	[ebx+10h], edx
and	eax, 0FFFFFFD7h
or	eax, 0FFFFFF80h
mov	[ebx+28h], al
and	eax, 3
cmp	al, 3
jz	short loc_641D5564
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_run	
mov	dword ptr [esp+4], 0 
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641D55C8
test	byte ptr [fsm_0+28h], 1
jnz	short loc_641D55B8
add	esp, 24h
pop	fsm_0
leave
retn
align 4
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], fsm_0 
mov	dword ptr [esp+8], offset _silc_fsm_start_real_thread 
mov	dword ptr [esp+4], 0 
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_task_add
test	eax, eax
jnz	short loc_641D55B8
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
and	byte ptr [fsm_0+28h], 0FDh
mov	[esp], fsm_0	
call	_silc_fsm_continue_sync
xchg	ax, ax
			
mov	eax, [fsm_0+8]
mov	[ebp+fsm], eax
add	esp, 24h
pop	fsm_0
leave
jmp	_silc_schedule_wakeup
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
mov	[esp+10h], fsm_0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_fsm_run
jmp	loc_641D5556
align 4
public _silc_fsm_start_sync
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+fsm]
mov	al, [ebx+28h]
and	eax, 0FFFFFFF7h
mov	edx, [ebp+start_state]
mov	[ebx+10h], edx
or	eax, 0FFFFFFA0h
mov	[ebx+28h], al
and	eax, 3
cmp	al, 3
jz	short loc_641D5684
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
xchg	ax, ax
mov	eax, [fsm_0+14h]
mov	[esp+8], eax
mov	eax, [fsm_0+4]
mov	[esp+4], eax
mov	[esp], fsm_0
call	dword ptr [fsm_0+10h]
test	eax, eax
jz	short loc_641D562C
cmp	eax, 2
jz	short loc_641D5678
cmp	eax, 3
jz	short loc_641D5658
dec	eax
jz	short loc_641D5668
add	esp, 14h
pop	fsm_0
leave
retn
align 4
mov	[ebp+fsm], fsm_0
add	esp, 14h
pop	fsm_0
leave
jmp	_silc_fsm_finish
align 4
mov	[ebp+fsm], fsm_0
add	esp, 14h
pop	fsm_0
leave
jmp	_silc_fsm_continue
align 4
and	byte ptr [fsm_0+28h], 0DFh
add	esp, 14h
pop	fsm_0
leave
retn
align 4
mov	eax, [fsm_0+8]
mov	[esp], eax	
call	_silc_schedule_get_context
and	byte ptr [fsm_0+28h], 0FDh
mov	[ebp+fsm], fsm_0
add	esp, 14h
pop	fsm_0
leave
jmp	_silc_fsm_continue_sync
public _silc_hash_table_size
push	ebp
mov	ebp, esp
mov	eax, [ebp+ht]
mov	eax, [eax+4]
mov	eax, ds:_primesize[eax*4]
leave
retn
align 4
public _silc_hash_table_count
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+ht]
mov	eax, [eax+8]
leave
retn
align 10h
public _silc_hash_table_find_ext
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ecx, [ebp+ht]
mov	ebx, [ebp+key]
mov	eax, [ebp+hash]
mov	edx, [ebp+hash_user_context]
mov	edi, [ebp+compare]
mov	esi, [ebp+compare_user_context]
test	esi, esi
jz	loc_641D57C0
test	compare_0, compare_0
jz	loc_641D57D0
test	hash_user_context_0, hash_user_context_0
jz	loc_641D57DC
test	hash_0,	hash_0
jz	loc_641D57E8
			
mov	[esp+4], hash_user_context_0
mov	[esp], key_0
mov	[ebp+var_24], ht_0
call	hash_0
mov	[ebp+var_1C], eax
mov	ecx, [ebp+var_24]
mov	esi, [ecx+4]
xor	edx, edx
div	ds:_primesize[esi*4]
mov	eax, [ecx]
lea	edx, [eax+edx*4]
mov	[ebp+var_20], edx
test	compare_0, compare_0
jz	short loc_641D5798
mov	edx, [ebp+var_20]
mov	eax, [edx]
test	eax, eax
jz	loc_641D57B4
mov	esi, [ebp+compare_user_context]
mov	[ebp+var_1C], esi
mov	esi, key_0
mov	key_0, [ebp+var_20]
jmp	short loc_641D574C
align 10h
mov	entry, [entry]
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641D57B4
add	ebx, 8
mov	edx, [ebp+var_1C]
mov	[esp+8], edx
mov	[esp+4], key_0
mov	eax, [eax]
mov	[esp], eax
call	compare_0
test	al, al
jz	short loc_641D5740
mov	[ebp+var_20], entry
mov	edx, [entry]
test	edx, edx
jz	short loc_641D57B4
			
mov	ecx, [ebp+ret_key]
test	ecx, ecx
jz	short loc_641D5779
mov	eax, [edx]
mov	edx, [ebp+ret_key]
mov	[edx], eax
mov	eax, [ebp+ret_context]
test	eax, eax
jz	short loc_641D578D
mov	esi, [ebp+var_20]
mov	eax, [esi]
mov	eax, [eax+4]
mov	edx, [ebp+ret_context]
mov	[edx], eax
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	esi
pop	compare_0
leave
retn
align 4
mov	edx, [edx]
test	edx, edx
jz	short loc_641D57B4
cmp	key_0, [edx]
jnz	short loc_641D57AA
jmp	short loc_641D576B
cmp	key_0, [eax]
jz	short loc_641D57F0
mov	edx, eax
mov	eax, [edx+8]
test	eax, eax
jnz	short loc_641D57A4
lea	esi, [esi+0]
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	esi
pop	compare_0
leave
retn
align 10h
mov	esi, [ht_0+1Ch]
mov	[ebp+compare_user_context], esi
test	compare_0, compare_0
jnz	loc_641D56EB
xchg	ax, ax
mov	compare_0, [ht_0+10h]
test	hash_user_context_0, hash_user_context_0
jnz	loc_641D56F3
nop
mov	hash_user_context_0, [ht_0+18h]
test	hash_0,	hash_0
jnz	loc_641D56FB
nop
mov	hash_0,	[ht_0+0Ch]
jmp	loc_641D56FB
add	edx, 8
mov	[ebp+var_20], edx
mov	edx, eax
jmp	loc_641D576B
align 10h
public _silc_hash_table_find_foreach_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+key]
mov	eax, [ebp+hash]
mov	edx, [ebp+hash_user_context]
mov	esi, [ebp+compare_user_context]
test	esi, esi
jz	loc_641D5924
mov	ecx, [ebp+compare]
test	ecx, ecx
jz	loc_641D5938
test	hash_user_context_0, hash_user_context_0
jz	loc_641D594C
			
test	hash_0,	hash_0
jz	loc_641D58FC
mov	[esp+4], hash_user_context_0
mov	[esp], key_0
call	hash_0
mov	edx, [ebp+ht]
mov	edi, [edx+4]
xor	edx, edx
div	ds:_primesize[edi*4]
mov	ecx, edx
mov	edx, [ebp+ht]
mov	al, [edx+24h]
mov	dl, al
and	edx, 1
mov	[ebp+var_1E], dl
and	eax, 0FFFFFFFEh
mov	edx, [ebp+ht]
mov	[edx+24h], al
mov	eax, [edx]
mov	edi, [eax+ecx*4]
mov	eax, [ebp+compare]
test	eax, eax
jz	loc_641D5908
test	edi, edi
jz	short loc_641D58E4
mov	[ebp+var_1D], 0
mov	[ebp+var_1C], compare_user_context_0
jmp	short loc_641D588E
align 4
test	esi, esi
jz	short loc_641D58C6
mov	edi, esi
mov	esi, [edi+8]
mov	ecx, [ebp+var_1C]
mov	[esp+8], ecx	
mov	[esp+4], key_0	
mov	eax, [edi]
mov	[esp], eax	
call	[ebp+compare]
test	al, al
jz	short loc_641D5888
mov	eax, [ebp+foreach_user_context]
mov	[esp+8], eax	
mov	eax, [edi+4]
mov	[esp+4], eax	
mov	eax, [edi]
mov	[esp], eax	
call	[ebp+foreach]
mov	[ebp+var_1D], 1
test	esi, esi
jnz	short loc_641D588C
			
cmp	[ebp+var_1D], 0
jz	short loc_641D58E4
mov	edx, [ebp+ht]
mov	al, [edx+24h]
and	eax, 0FFFFFFFEh
or	al, [ebp+var_1E]
mov	[edx+24h], al
add	esp, 2Ch
pop	key_0
pop	esi
pop	edi
leave
retn
align 4
			
mov	ecx, [ebp+foreach_user_context]
mov	[esp+8], ecx	
mov	dword ptr [esp+4], 0 
mov	[esp], key_0	
call	[ebp+foreach]
jmp	short loc_641D58CC
align 4
mov	ecx, [ebp+ht]
mov	hash_0,	[ecx+0Ch]
jmp	loc_641D5838
align 4
test	edi, edi
jz	short loc_641D58E4
mov	[ebp+var_1D], 0
jmp	short loc_641D5916
align 4
mov	edi, esi
mov	esi, [edi+8]
cmp	key_0, [edi]
jz	short loc_641D5958
test	esi, esi
jnz	short loc_641D5914
jmp	short loc_641D58C6
align 4
mov	ecx, [ebp+ht]
mov	compare_user_context_0,	[ecx+1Ch]
mov	ecx, [ebp+compare]
test	ecx, ecx
jnz	loc_641D5828
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	ecx, [ecx+10h]
mov	[ebp+compare], ecx
test	hash_user_context_0, hash_user_context_0
jnz	loc_641D5830
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	hash_user_context_0, [ecx+18h]
jmp	loc_641D5830
align 4
mov	edx, [ebp+foreach_user_context]
mov	[esp+8], edx	
mov	eax, [edi+4]
mov	[esp+4], eax	
mov	[esp], key_0	
call	[ebp+foreach]
mov	[ebp+var_1D], 1
jmp	short loc_641D591D
align 4
public _silc_hash_table_foreach
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+foreach]
mov	edi, [ebp+user_context]
test	esi, esi
jz	short loc_641D5A02
mov	edx, [ebp+ht]
mov	al, [edx+24h]
mov	bl, al
and	ebx, 1
mov	[ebp+var_1D], bl
and	eax, 0FFFFFFFEh
mov	[edx+24h], al
mov	ecx, [edx+4]
mov	ebx, ds:_primesize[ecx*4]
test	ebx, ebx
jz	short loc_641D59F6
xor	eax, eax
mov	[ebp+i], 0
xchg	ax, ax
mov	tmp, [ebp+ht]
mov	edx, [ebx]
mov	eax, [edx+eax*4]
test	e, e
jz	short loc_641D59E1
mov	ebx, [e+8]
mov	[esp+8], user_context_0
mov	edx, [e+4]
mov	[esp+4], edx
mov	e, [e]
mov	[esp], eax
call	foreach_0
mov	eax, tmp
test	tmp, tmp
jnz	short loc_641D59C0
mov	eax, [ebp+ht]
mov	ecx, [eax+4]
inc	[ebp+i]
mov	eax, [ebp+i]
cmp	ds:_primesize[ecx*4], eax
ja	short loc_641D59B4
mov	edx, [ebp+ht]
mov	al, [edx+24h]
and	eax, 0FFFFFFFEh
or	al, [ebp+var_1D]
mov	tmp, [ebp+ht]
mov	[ebx+24h], al
add	esp, 2Ch
pop	ebx
pop	foreach_0
pop	user_context_0
leave
retn
align 4
public _silc_hash_table_list
			
push	ebp
mov	ebp, esp
push	ebx
mov	ecx, [ebp+ht]
mov	eax, [ebp+htl]
mov	[eax], ecx
mov	dword ptr [eax+4], 0
and	dword ptr [eax+8], 80000000h
mov	bl, [ecx+24h]
shl	ebx, 7
mov	dl, [eax+0Bh]
and	edx, 7Fh
or	edx, ebx
mov	[eax+0Bh], dl
and	byte ptr [ecx+24h], 0FEh
pop	ebx
leave
retn
align 10h
public _silc_hash_table_list_reset
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+htl]
mov	ecx, [eax]
mov	dl, [eax+0Bh]
shr	dl, 7
mov	al, [ecx+24h]
and	eax, 0FFFFFFFEh
or	eax, edx
mov	[ecx+24h], al
leave
retn
align 4
public _silc_hash_table_get
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	esi, [ebp+htl]
mov	edx, [esi+4]
mov	ebx, [esi]
mov	eax, [ebx+8]
test	eax, eax
jz	loc_641D5AF8
test	edx, edx
jnz	short loc_641D5AB4
mov	edi, [htl_0+8]
mov	eax, edi
and	eax, 7FFFFFFFh
mov	entry, [ebx+4]
mov	ecx, ds:_primesize[edx*4]
cmp	ecx, eax
jbe	short loc_641D5AF8
mov	ebx, [ebx]
jmp	short loc_641D5A9C
align 4
cmp	eax, ecx
jnb	short loc_641D5AE0
mov	entry, [ebx+eax*4]
inc	eax
and	eax, 7FFFFFFFh
test	entry, entry
jz	short loc_641D5A98
and	edi, 80000000h
or	edi, eax
mov	[htl_0+8], edi
mov	eax, [entry+8]
mov	[htl_0+4], eax
mov	edi, [ebp+key]
test	edi, edi
jz	short loc_641D5AC8
mov	eax, [entry]
mov	ecx, [ebp+key]
mov	[ecx], eax
mov	htl_0, [ebp+context]
test	esi, esi
jz	short loc_641D5AD7
mov	eax, [entry+4]
mov	entry, [ebp+context]
mov	[edx], eax
mov	al, 1
pop	ebx
pop	esi
pop	edi
leave
retn
align 10h
and	eax, 7FFFFFFFh
and	edi, 80000000h
or	edi, eax
mov	[htl_0+8], edi
xor	eax, eax
pop	ebx
pop	htl_0
pop	edi
leave
retn
align 4
			
xor	eax, eax
pop	ebx
pop	htl_0
pop	edi
leave
retn
align 10h
public _silc_hash_table_free
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+ht]
mov	ecx, [edi+4]
mov	edx, ds:_primesize[ecx*4]
test	edx, edx
jz	short loc_641D5B8C
mov	eax, [ht_0]
xor	edx, edx
mov	[ebp+i], 0
lea	esi, [esi+0]
mov	e, [eax+edx*4]
test	e, e
jnz	short loc_641D5B36
jmp	short loc_641D5B66
align 4
mov	ebx, e
mov	eax, [ht_0+14h]
test	eax, eax
jz	short loc_641D5B52
mov	edx, [ht_0+20h]
mov	[esp+8], edx
mov	edx, [e+4]
mov	[esp+4], edx
mov	edx, [e]
mov	[esp], edx
call	eax
mov	esi, [e+8]
mov	[esp], ebx	
call	_silc_free
test	e, e
jnz	short loc_641D5B34
mov	eax, [ht_0]
mov	ecx, [ht_0+4]
inc	[ebp+i]
mov	edx, [ebp+i]
cmp	ds:_primesize[ecx*4], edx
ja	short loc_641D5B28
mov	[esp], eax	
call	_silc_free
mov	[ebp+ht], ht_0
add	esp, 2Ch
pop	e
pop	e
pop	ht_0
leave
jmp	_silc_free
mov	eax, [ht_0]
jmp	short loc_641D5B75
public _silc_hash_table_alloc
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+hash]
mov	dl, [ebp+auto_rehash]
test	edi, edi
jnz	short loc_641D5BB0
xor	ht, ht
mov	eax, ht
add	esp, 2Ch
pop	size_index
pop	ht
pop	hash_0
leave
retn
align 10h
mov	dword ptr [esp+4], 28h 
mov	dword ptr [esp], 1 
mov	[ebp+var_20], dl
call	_silc_calloc
mov	esi, eax
test	eax, eax
mov	dl, [ebp+var_20]
jz	short loc_641D5BA5
mov	ecx, [ebp+table_size]
test	ecx, ecx
jnz	short loc_641D5C40
mov	ebx, 2
mov	ecx, 0Bh
			
mov	dword ptr [esp+4], 4
mov	[esp], ecx	
mov	[ebp+var_20], dl
call	_silc_calloc
mov	[ht], eax
test	eax, eax
mov	dl, [ebp+var_20]
jz	loc_641D5C8E
mov	[ht+4],	size_index
mov	[ht+0Ch], hash_0
mov	eax, [ebp+compare]
mov	[ht+10h], eax
mov	eax, [ebp+destructor]
mov	[ht+14h], eax
mov	eax, [ebp+hash_user_context]
mov	[ht+18h], eax
mov	eax, [ebp+compare_user_context]
mov	[ht+1Ch], eax
mov	eax, [ebp+destructor_user_context]
mov	[ht+20h], eax
and	edx, 1
mov	al, [ht+24h]
and	eax, 0FFFFFFFEh
or	eax, edx
mov	[ht+24h], al
mov	eax, ht
add	esp, 2Ch
pop	size_index
pop	ht
pop	hash_0
leave
retn
align 10h
cmp	[ebp+table_size], 3
jbe	short loc_641D5C82
mov	ebx, 1
mov	ht, 1
mov	[ebp+var_1C], ht
mov	ht, [ebp+table_size]
jmp	short loc_641D5C62
lea	size_index, [eax+1]
cmp	size_index, 32h
jz	short loc_641D5C78
mov	eax, size_index
mov	ecx, ds:_primesize[eax*4]
cmp	table_size_0, ecx
ja	short loc_641D5C58
mov	table_size_0, [ebp+var_1C]
jmp	loc_641D5BE1
align 4
mov	table_size_0, [ebp+var_1C]
mov	size_index, eax
jmp	loc_641D5BE1
xor	ebx, ebx
mov	ecx, 3
jmp	loc_641D5BE1
mov	[esp], ht
call	_silc_free
jmp	loc_641D5BA3
align 4
public _silc_hash_table_find_by_context
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+ht]
mov	ebx, [ebp+key]
mov	esi, [edi+1Ch]
mov	eax, [edi+10h]
mov	[ebp+var_20], eax
mov	eax, [edi+18h]
mov	[esp+4], eax
mov	[esp], ebx
call	dword ptr [edi+0Ch]
mov	ecx, [edi+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
mov	ecx, edx
shl	ecx, 2
add	ecx, [edi]
mov	edi, [edi+10h]
test	edi, edi
jz	short loc_641D5D44
mov	eax, [ecx]
test	eax, eax
jz	short loc_641D5D38
mov	edi, ecx
mov	[ebp+var_1C], key_0
mov	key_0, [ebp+var_20]
jmp	short loc_641D5CF8
align 4
mov	edi, [edi]
mov	eax, [edi+8]
test	eax, eax
jz	short loc_641D5D38
add	edi, 8
mov	[esp+8], esi
mov	edx, [ebp+var_1C]
mov	[esp+4], edx
mov	eax, [eax]
mov	[esp], eax
call	ebx
test	al, al
jz	short loc_641D5CEC
mov	edi, [edi]
mov	eax, [ebp+context]
cmp	eax, [edi+4]
jnz	short loc_641D5CEE
mov	edx, edi
test	edx, edx
jz	short loc_641D5D38
mov	ebx, [ebp+ret_key]
test	ebx, ebx
jz	short loc_641D5D2C
mov	eax, [edx]
mov	edx, [ebp+ret_key]
mov	[edx], eax
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	eax, [ecx]
test	eax, eax
jz	short loc_641D5D38
mov	esi, [ebp+context]
jmp	short loc_641D5D5C
align 10h
			
mov	edx, [eax+8]
test	edx, edx
jz	short loc_641D5D38
lea	ecx, [eax+8]
mov	eax, edx
cmp	key_0, [eax]
jnz	short loc_641D5D50
cmp	context_0, [eax+4]
jnz	short loc_641D5D50
mov	edx, [ecx]
jmp	short loc_641D5D1A
align 4
public _silc_hash_table_find_by_context_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ecx, [ebp+ht]
mov	edx, [ebp+hash]
mov	eax, [ebp+hash_user_context]
mov	edi, [ebp+compare]
mov	esi, [ebp+compare_user_context]
test	esi, esi
jz	loc_641D5E68
test	compare_0, compare_0
jz	loc_641D5E74
test	hash_user_context_0, hash_user_context_0
jz	loc_641D5E80
test	hash_0,	hash_0
jz	loc_641D5E8C
			
mov	[esp+4], hash_user_context_0
mov	hash_user_context_0, [ebp+key]
mov	[esp], eax
mov	[ebp+var_20], ht_0
call	hash_0
mov	ecx, [ebp+var_20]
mov	ebx, [ecx+4]
xor	edx, edx
div	ds:_primesize[ebx*4]
mov	[ebp+var_1C], edx
shl	edx, 2
add	entry, [ecx]
mov	ecx, [ecx+10h]
test	ecx, ecx
jz	short loc_641D5E3C
mov	eax, [entry]
test	eax, eax
jz	short loc_641D5E30
mov	[ebp+var_1C], compare_user_context_0
mov	compare_user_context_0,	[ebp+key]
mov	ebx, entry
jmp	short loc_641D5DF0
align 4
mov	entry, [entry]
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641D5E30
add	ebx, 8
mov	edx, [ebp+var_1C]
mov	[esp+8], edx
mov	[esp+4], key_0
mov	eax, [eax]
mov	[esp], eax
call	compare_0
test	al, al
jz	short loc_641D5DE4
mov	entry, [entry]
mov	eax, [ebp+context]
cmp	eax, [ebx+4]
jnz	short loc_641D5DE6
mov	edx, ebx
test	edx, edx
jz	short loc_641D5E30
mov	eax, [ebp+ret_key]
test	eax, eax
jz	short loc_641D5E24
mov	eax, [edx]
mov	edx, [ebp+ret_key]
mov	[edx], eax
mov	al, 1
add	esp, 3Ch
pop	ebx
pop	esi
pop	compare_0
leave
retn
align 10h
			
xor	eax, eax
add	esp, 3Ch
pop	ebx
pop	esi
pop	compare_0
leave
retn
align 4
mov	eax, [entry]
test	eax, eax
jz	short loc_641D5E30
mov	ecx, entry
mov	ebx, [ebp+key]
mov	compare_user_context_0,	[ebp+context]
jmp	short loc_641D5E58
			
mov	edx, [eax+8]
test	edx, edx
jz	short loc_641D5E30
lea	entry, [eax+8]
mov	eax, edx
cmp	key_0, [eax]
jnz	short loc_641D5E4C
cmp	context_0, [eax+4]
jnz	short loc_641D5E4C
mov	edx, [entry]
jmp	short loc_641D5E12
align 4
mov	compare_user_context_0,	[ht_0+1Ch]
test	compare_0, compare_0
jnz	loc_641D5D94
nop
mov	compare_0, [ht_0+10h]
test	hash_user_context_0, hash_user_context_0
jnz	loc_641D5D9C
nop
mov	hash_user_context_0, [ht_0+18h]
test	hash_0,	hash_0
jnz	loc_641D5DA4
nop
mov	hash_0,	[ht_0+0Ch]
jmp	loc_641D5DA4
public _silc_hash_table_find
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+ht]
mov	ebx, [ebp+key]
mov	esi, [edi+1Ch]
mov	eax, [edi+10h]
mov	[ebp+var_20], eax
mov	eax, [edi+18h]
mov	[esp+4], eax
mov	[esp], ebx
call	dword ptr [edi+0Ch]
mov	ecx, [edi+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
mov	ecx, edx
shl	ecx, 2
add	ecx, [edi]
mov	edi, [ebp+var_20]
test	edi, edi
jz	short loc_641D5F38
mov	eax, [ecx]
test	eax, eax
jz	short loc_641D5F54
mov	edi, ecx
mov	[ebp+var_1C], key_0
mov	key_0, [ebp+var_20]
jmp	short loc_641D5EF0
align 4
mov	edi, [edi]
mov	eax, [edi+8]
test	eax, eax
jz	short loc_641D5F54
add	edi, 8
mov	[esp+8], esi
mov	edx, [ebp+var_1C]
mov	[esp+4], edx
mov	eax, [eax]
mov	[esp], eax
call	ebx
test	al, al
jz	short loc_641D5EE4
mov	ecx, edi
mov	edx, [edi]
test	edx, edx
jz	short loc_641D5F54
			
mov	esi, [ebp+ret_key]
test	esi, esi
jz	short loc_641D5F1C
mov	eax, [edx]
mov	edx, [ebp+ret_key]
mov	[edx], eax
mov	ebx, [ebp+ret_context]
test	ebx, ebx
jz	short loc_641D5F2D
mov	eax, [ecx]
mov	eax, [eax+4]
mov	edx, [ebp+ret_context]
mov	[edx], eax
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	edx, [ecx]
test	edx, edx
jz	short loc_641D5F54
cmp	key_0, [edx]
jnz	short loc_641D5F4A
jmp	short loc_641D5F0E
cmp	key_0, [eax]
jz	short loc_641D5F5E
mov	edx, eax
mov	eax, [edx+8]
test	eax, eax
jnz	short loc_641D5F44
lea	esi, [esi+0]
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
lea	ecx, [edx+8]
mov	edx, eax
jmp	short loc_641D5F0E
align 4
public _silc_hash_table_find_foreach
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+ht]
mov	ebx, [ebp+key]
mov	eax, [esi+1Ch]
mov	[ebp+var_28], eax
mov	edx, [esi+10h]
mov	[ebp+var_1C], edx
mov	eax, [esi+18h]
mov	[esp+4], eax
mov	[esp], ebx
call	dword ptr [esi+0Ch]
mov	ecx, [esi+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
mov	ecx, edx
mov	al, [esi+24h]
mov	dl, al
and	edx, 1
mov	[ebp+var_22], dl
and	eax, 0FFFFFFFEh
mov	[esi+24h], al
mov	eax, [esi]
mov	edi, [eax+ecx*4]
mov	eax, [ebp+var_1C]
test	eax, eax
jz	loc_641D604C
test	edi, edi
jz	short loc_641D6034
mov	[ebp+var_21], 0
mov	[ebp+var_2C], ht_0
mov	[ebp+var_20], key_0
mov	key_0, [ebp+var_28]
jmp	short loc_641D5FDA
align 4
test	esi, esi
jz	short loc_641D6012
mov	edi, esi
mov	esi, [edi+8]
mov	[esp+8], ebx
mov	eax, [ebp+var_20]
mov	[esp+4], eax
mov	eax, [edi]
mov	[esp], eax
call	[ebp+var_1C]
test	al, al
jz	short loc_641D5FD4
mov	edx, [ebp+user_context]
mov	[esp+8], edx	
mov	eax, [edi+4]
mov	[esp+4], eax	
mov	eax, [edi]
mov	[esp], eax	
call	[ebp+foreach]
mov	[ebp+var_21], 1
test	esi, esi
jnz	short loc_641D5FD8
mov	esi, [ebp+var_2C]
mov	ebx, [ebp+var_20]
cmp	[ebp+var_21], 0
jz	short loc_641D6034
mov	al, [ht_0+24h]
and	eax, 0FFFFFFFEh
or	al, [ebp+var_22]
mov	[ht_0+24h], al
add	esp, 3Ch
pop	key_0
pop	ht_0
pop	edi
leave
retn
align 4
			
mov	eax, [ebp+user_context]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	[esp], key_0	
call	[ebp+foreach]
jmp	short loc_641D601E
align 4
test	edi, edi
jz	short loc_641D6034
mov	[ebp+var_21], 0
jmp	short loc_641D605E
align 4
			
test	eax, eax
jz	short loc_641D6018
mov	edi, eax
mov	eax, [edi+8]
cmp	key_0, [edi]
jnz	short loc_641D6058
mov	edx, [ebp+user_context]
mov	[esp+8], edx	
mov	edx, [edi+4]
mov	[esp+4], edx	
mov	[esp], key_0	
mov	[ebp+var_30], eax
call	[ebp+foreach]
mov	[ebp+var_21], 1
mov	eax, [ebp+var_30]
jmp	short loc_641D6058
align 4
public _silc_hash_table_rehash
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+ht]
mov	edx, [ebp+new_size]
test	edx, edx
jnz	loc_641D624B
mov	new_size_0, [ht_0+8]
xor	esi, esi
cmp	edx, 3
jbe	short loc_641D60CB
mov	si, 1
mov	eax, 1
jmp	short loc_641D60C2
lea	size_index, [eax+1]
cmp	size_index, 32h
jz	loc_641D6284
mov	eax, size_index
cmp	edx, ds:_primesize[eax*4]
ja	short loc_641D60B4
			
mov	edi, [ht_0+4]
cmp	edi, size_index
jz	loc_641D627C
mov	eax, [ht_0]
mov	[ebp+table], eax
mov	al, [ht_0+24h]
mov	dl, al
and	edx, 1
mov	[ebp+var_2D], dl
and	eax, 0FFFFFFFEh
mov	[ht_0+24h], al
mov	dword ptr [esp+4], 4 
mov	eax, ds:_primesize[size_index*4]
mov	[esp], eax	
call	_silc_calloc
mov	[ht_0],	eax
test	eax, eax
jz	loc_641D627C
mov	[ht_0+4], size_index
mov	dword ptr [ht_0+8], 0
mov	edi, ds:_primesize[edi*4]
mov	[ebp+var_2C], edi
test	edi, edi
jz	loc_641D6207
xor	eax, eax
mov	[ebp+i], 0
xchg	ax, ax
mov	edx, [ebp+table]
mov	size_index, [edx+eax*4]
test	e, e
jz	loc_641D61F8
xchg	ax, ax
mov	eax, [e+4]
mov	[ebp+var_20], eax
mov	edx, [e]
mov	[ebp+var_1C], edx
mov	eax, [ht_0+18h]
mov	[esp+4], eax
mov	[esp], edx
call	dword ptr [ht_0+0Ch]
mov	ecx, [ht_0+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	edx, [ht_0]
mov	edi, [edx]
test	edi, edi
jz	loc_641D6225
mov	eax, [edi+8]
test	eax, eax
jnz	short loc_641D6186
jmp	short loc_641D618F
mov	eax, edx
mov	edx, [eax+8]
test	edx, edx
jnz	short loc_641D6184
mov	edi, eax
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi+8], eax
test	eax, eax
jz	short loc_641D61DF
mov	edx, [ebp+var_1C]
mov	[eax], edx
mov	edx, [ebp+var_20]
mov	[eax+4], edx
inc	dword ptr [ht_0+8]
test	byte ptr [ht_0+24h], 1
jz	short loc_641D61DF
mov	eax, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
jbe	short loc_641D61DF
mov	dword ptr [esp+4], 0 
mov	[esp], ht_0	
call	_silc_hash_table_rehash
			
mov	edi, [e+8]
mov	[esp], esi	
call	_silc_free
test	e, e
jz	short loc_641D61F8
mov	esi, e
jmp	loc_641D6144
align 4
			
inc	[ebp+i]
mov	eax, [ebp+i]
cmp	[ebp+var_2C], eax
ja	loc_641D6134
mov	al, [ht_0+24h]
and	eax, 0FFFFFFFEh
or	al, [ebp+var_2D]
mov	[ht_0+24h], al
mov	eax, [ebp+table]
mov	[ebp+ht], eax
add	esp, 3Ch
pop	ht_0
pop	size_index
pop	e
leave
jmp	_silc_free
mov	dword ptr [esp+4], 0Ch
mov	dword ptr [esp], 1 
mov	[ebp+var_34], edx
call	_silc_calloc
mov	edx, [ebp+var_34]
mov	[edx], eax
test	eax, eax
jnz	loc_641D61AA
jmp	short loc_641D61DF
xor	esi, esi
cmp	new_size_0, 3
jbe	loc_641D60CB
mov	si, 1
mov	eax, 1
jmp	short loc_641D626E
align 4
lea	size_index, [eax+1]
cmp	size_index, 32h
jz	short loc_641D6284
mov	eax, size_index
cmp	new_size_0, ds:_primesize[eax*4]
ja	short loc_641D6264
jmp	loc_641D60CB
			
add	esp, 3Ch
pop	ht_0
pop	size_index
pop	edi
leave
retn
			
mov	size_index, eax
jmp	loc_641D60CB
align 4
public _silc_hash_table_replace
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+ht]
mov	esi, [ebp+key]
mov	eax, [ebx+18h]
mov	[esp+4], eax
mov	[esp], esi
call	dword ptr [ebx+0Ch]
mov	ecx, [ebx+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
mov	edi, edx
shl	edi, 2
add	edi, [ebx]
mov	edx, [edi]
mov	eax, edx
test	edx, edx
jz	short loc_641D6328
mov	ecx, [ht_0+14h]
test	ecx, ecx
jz	short loc_641D62E3
mov	eax, [ht_0+20h]
mov	[esp+8], eax
mov	eax, [edx+4]
mov	[esp+4], eax
mov	eax, [edx]
mov	[esp], eax
call	ecx
mov	edx, [edi]
mov	eax, edx
			
mov	[eax], key_0
mov	eax, [ebp+context]
mov	[edx+4], eax
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6302
mov	context_0, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
ja	short loc_641D630C
mov	al, 1
add	esp, 1Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
mov	dword ptr [esp+4], 0
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 1Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 4
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi], eax
test	eax, eax
jz	short loc_641D6304
inc	dword ptr [ht_0+8]
mov	edx, eax
jmp	short loc_641D62E3
align 4
public _silc_hash_table_add
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+ht]
mov	esi, [ebp+key]
mov	eax, [ebx+18h]
mov	[esp+4], eax
mov	[esp], esi
call	dword ptr [ebx+0Ch]
mov	ecx, [ebx+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	edx, [ebx]
mov	edi, [edx]
test	edi, edi
jz	short loc_641D63FA
mov	edx, [edi+8]
test	edx, edx
jnz	short loc_641D638E
jmp	short loc_641D6397
mov	edx, eax
mov	eax, [edx+8]
test	eax, eax
jnz	short loc_641D638C
mov	edi, edx
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi+8], eax
test	eax, eax
jz	short loc_641D641C
mov	[eax], key_0
mov	edx, [ebp+context]
mov	[eax+4], edx
inc	dword ptr [ht_0+8]
test	byte ptr [ht_0+24h], 1
jz	short loc_641D63D4
mov	eax, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
ja	short loc_641D63E0
mov	al, 1
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 10h
mov	dword ptr [esp+4], 0 
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
mov	dword ptr [esp+4], 0Ch
mov	dword ptr [esp], 1 
mov	[ebp+var_1C], edx
call	_silc_calloc
mov	edx, [ebp+var_1C]
mov	[edx], eax
test	eax, eax
jnz	short loc_641D63B2
xchg	ax, ax
xor	eax, eax
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 4
public _silc_hash_table_del_by_context_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+key]
mov	edx, [ebp+hash]
mov	eax, [ebp+hash_user_context]
mov	esi, [ebp+compare_user_context]
test	esi, esi
jz	loc_641D65D8
mov	ecx, [ebp+compare]
test	ecx, ecx
jz	loc_641D65EC
test	hash_user_context_0, hash_user_context_0
jz	loc_641D6600
test	hash_0,	hash_0
jz	loc_641D6610
			
mov	[esp+4], hash_user_context_0
mov	[esp], key_0
call	hash_0
mov	edx, [ebp+ht]
mov	edi, [edx+4]
xor	edx, edx
div	ds:_primesize[edi*4]
lea	edx, ds:0[edx*4]
mov	ecx, [ebp+ht]
add	entry, [ecx]
mov	edi, [ecx+10h]
test	edi, edi
jz	loc_641D65A0
mov	eax, [entry]
test	eax, eax
jz	short loc_641D64D6
xor	edi, edi
mov	[ebp+var_1C], compare_user_context_0
mov	compare_user_context_0,	key_0
mov	key_0, entry
jmp	short loc_641D64AC
mov	prev, [entry]
mov	eax, [prev+8]
test	eax, eax
jz	short loc_641D64D6
lea	entry, [prev+8]
mov	edx, [ebp+var_1C]
mov	[esp+8], edx	
mov	[esp+4], key_0	
mov	eax, [eax]
mov	[esp], eax	
call	[ebp+compare]
test	al, al
jz	short loc_641D64A0
mov	eax, [entry]
mov	ecx, [ebp+context]
cmp	ecx, [prev+4]
jz	short loc_641D64E0
mov	edi, prev
mov	prev, [edi+8]
test	eax, eax
jnz	short loc_641D64A9
			
xor	eax, eax
add	esp, 2Ch
pop	entry
pop	esi
pop	prev
leave
retn
mov	edx, entry
test	prev, prev
jz	short loc_641D64D6
test	edi, edi
jz	loc_641D661C
mov	dword ptr [prev+8], 0
mov	entry, [eax+8]
test	edx, edx
jz	short loc_641D64FF
mov	[edi+8], edx
			
mov	edx, [ebp+destructor]
test	edx, edx
jz	short loc_641D655C
mov	edx, [ebp+destructor_user_context]
mov	[esp+8], edx	
mov	edx, [prev+4]
mov	[esp+4], edx	
mov	edx, [prev]
mov	[esp], edx	
mov	[ebp+ptr], prev
call	[ebp+destructor]
mov	eax, [ebp+ptr]
			
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+ht]
mov	eax, [edx+8]
dec	eax
mov	[edx+8], eax
test	byte ptr [edx+24h], 1
jz	short loc_641D6550
lea	ecx, [eax+eax]
mov	entry, edx
mov	edx, [edx+4]
cmp	ecx, ds:_primesize[edx*4]
jnb	short loc_641D6550
cmp	eax, 0Bh
ja	short loc_641D6584
			
mov	al, 1
add	esp, 2Ch
pop	entry
pop	esi
pop	prev
leave
retn
align 4
mov	entry, [ebp+ht]
mov	edx, [ebx+14h]
test	edx, edx
jz	short loc_641D6522
mov	ecx, [ebx+20h]
mov	[esp+8], ecx
mov	ecx, [prev+4]
mov	[esp+4], ecx
mov	ecx, [prev]
mov	[esp], ecx
mov	[ebp+ptr], prev
call	edx
mov	eax, [ebp+ptr]
jmp	short loc_641D6522
align 4
mov	dword ptr [esp+4], 0 
mov	[esp], ebx	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	esi
pop	prev
leave
retn
align 10h
mov	eax, [entry]
test	prev, prev
jz	loc_641D64D6
xor	edi, edi
mov	compare_user_context_0,	[ebp+context]
jmp	short loc_641D65C6
align 4
			
mov	ecx, [prev+8]
test	prev, prev
jz	loc_641D64D6
lea	entry, [eax+8]
mov	edi, eax
mov	eax, prev
cmp	key_0, [eax]
jnz	short loc_641D65B4
cmp	context_0, [prev+4]
jnz	short loc_641D65B4
mov	prev, [entry]
jmp	loc_641D64E2
align 4
mov	ecx, [ebp+ht]
mov	compare_user_context_0,	[ecx+1Ch]
mov	ecx, [ebp+compare]
test	ecx, ecx
jnz	loc_641D6450
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	ecx, [ecx+10h]
mov	[ebp+compare], ecx
test	hash_user_context_0, hash_user_context_0
jnz	loc_641D6458
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	hash_user_context_0, [ecx+18h]
test	hash_0,	hash_0
jnz	loc_641D6460
xchg	ax, ax
mov	ecx, [ebp+ht]
mov	hash_0,	[ecx+0Ch]
jmp	loc_641D6460
align 4
mov	ecx, [eax+8]
test	ecx, ecx
jz	short loc_641D6630
mov	[entry], ecx
mov	ecx, [prev+8]
test	ecx, ecx
jnz	loc_641D64FF
mov	dword ptr [entry], 0
jmp	loc_641D64FF
align 4
public _silc_hash_table_del_by_context
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+ht]
mov	ebx, [ebp+key]
mov	eax, [esi+1Ch]
mov	[ebp+var_24], eax
mov	edx, [esi+10h]
mov	[ebp+var_1C], edx
mov	eax, [esi+18h]
mov	[esp+4], eax
mov	[esp], ebx
call	dword ptr [esi+0Ch]
mov	ecx, [esi+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	entry, [esi]
mov	edi, [esi+10h]
test	edi, edi
jz	loc_641D6770
mov	eax, [entry]
test	eax, eax
jz	short loc_641D66D2
xor	edi, edi
mov	[ebp+var_28], ht_0
mov	ht_0, entry
mov	[ebp+var_20], key_0
mov	key_0, [ebp+var_24]
jmp	short loc_641D66A8
align 4
mov	prev, [entry]
mov	eax, [prev+8]
test	eax, eax
jz	short loc_641D66D2
lea	entry, [prev+8]
mov	[esp+8], ebx
mov	ecx, [ebp+var_20]
mov	[esp+4], ecx
mov	eax, [eax]
mov	[esp], eax
call	[ebp+var_1C]
test	al, al
jz	short loc_641D669C
mov	eax, [entry]
mov	edx, [ebp+context]
cmp	edx, [prev+4]
jz	short loc_641D66DC
mov	edi, prev
mov	prev, [edi+8]
test	eax, eax
jnz	short loc_641D66A5
			
xor	eax, eax
add	esp, 3Ch
pop	ebx
pop	entry
pop	prev
leave
retn
mov	edx, entry
mov	entry, [ebp+var_28]
test	prev, prev
jz	short loc_641D66D2
test	edi, edi
jz	loc_641D67A8
mov	dword ptr [prev+8], 0
mov	entry, [eax+8]
test	edx, edx
jz	short loc_641D66FE
mov	[edi+8], edx
			
mov	entry, [ht_0+14h]
test	edx, edx
jz	short loc_641D6720
mov	ecx, [ht_0+20h]
mov	[esp+8], ecx
mov	ecx, [prev+4]
mov	[esp+4], ecx
mov	ecx, [prev]
mov	[esp], ecx
mov	[ebp+var_2C], prev
call	edx
mov	eax, [ebp+var_2C]
mov	[esp], eax	
call	_silc_free
mov	eax, [ht_0+8]
dec	eax
mov	[ht_0+8], eax
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6749
lea	ecx, [eax+eax]
mov	edx, [ht_0+4]
cmp	ecx, ds:_primesize[edx*4]
jnb	short loc_641D6749
cmp	eax, 0Bh
ja	short loc_641D6754
			
mov	al, 1
add	esp, 3Ch
pop	ebx
pop	ht_0
pop	prev
leave
retn
align 4
mov	dword ptr [esp+4], 0 
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 3Ch
pop	ebx
pop	ht_0
pop	prev
leave
retn
align 10h
mov	eax, [entry]
test	prev, prev
jz	loc_641D66D2
xor	edi, edi
jmp	short loc_641D6792
align 10h
			
mov	ecx, [prev+8]
test	prev, prev
jz	loc_641D66D2
lea	entry, [eax+8]
mov	edi, eax
mov	eax, prev
cmp	key_0, [eax]
jnz	short loc_641D6780
mov	ecx, [ebp+context]
cmp	ecx, [prev+4]
jnz	short loc_641D6780
mov	prev, [entry]
jmp	loc_641D66E1
align 4
mov	ecx, [eax+8]
test	ecx, ecx
jz	short loc_641D67BC
mov	[entry], ecx
mov	ebx, [prev+8]
test	ebx, ebx
jnz	loc_641D66FE
mov	dword ptr [entry], 0
jmp	loc_641D66FE
align 4
public _silc_hash_table_del_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+key]
mov	eax, [ebp+hash]
mov	edx, [ebp+hash_user_context]
mov	esi, [ebp+compare_user_context]
test	esi, esi
jz	loc_641D6950
mov	ecx, [ebp+compare]
test	ecx, ecx
jz	loc_641D6964
test	hash_user_context_0, hash_user_context_0
jz	loc_641D6978
test	hash_0,	hash_0
jz	loc_641D6988
			
mov	[esp+4], hash_user_context_0
mov	[esp], key_0
call	hash_0
mov	edx, [ebp+ht]
mov	edi, [edx+4]
xor	edx, edx
div	ds:_primesize[edi*4]
lea	edx, ds:0[edx*4]
mov	ecx, [ebp+ht]
add	entry, [ecx]
mov	edi, [ebp+compare]
test	edi, edi
jz	loc_641D6924
mov	eax, [entry]
test	eax, eax
jz	loc_641D6944
xor	edi, edi
mov	[ebp+var_1C], compare_user_context_0
mov	compare_user_context_0,	key_0
mov	key_0, entry
jmp	short loc_641D6854
mov	prev, [entry]
mov	eax, [prev+8]
test	eax, eax
jz	loc_641D6944
lea	entry, [prev+8]
mov	edx, [ebp+var_1C]
mov	[esp+8], edx	
mov	[esp+4], key_0	
mov	eax, [eax]
mov	[esp], eax	
call	[ebp+compare]
test	al, al
jz	short loc_641D6844
mov	edx, entry
mov	key_0, [entry]
test	prev, prev
jz	loc_641D6944
test	edi, edi
jz	loc_641D6994
mov	dword ptr [prev+8], 0
mov	eax, [esi+8]
test	eax, eax
jz	short loc_641D6890
mov	[edi+8], eax
			
mov	eax, [ebp+destructor]
test	eax, eax
jz	short loc_641D68E4
mov	eax, [ebp+destructor_user_context]
mov	[esp+8], eax	
mov	eax, [prev+4]
mov	[esp+4], eax	
mov	eax, [prev]
mov	[esp], eax	
call	[ebp+destructor]
			
mov	[esp], prev
call	_silc_free
mov	entry, [ebp+ht]
mov	eax, [ebx+8]
dec	eax
mov	[ebx+8], eax
test	byte ptr [ebx+24h], 1
jz	short loc_641D68D9
lea	ecx, [eax+eax]
mov	edx, [ebx+4]
cmp	ecx, ds:_primesize[edx*4]
jnb	short loc_641D68D9
cmp	eax, 0Bh
ja	short loc_641D6908
			
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	prev
pop	prev
leave
retn
align 4
mov	ecx, [ebp+ht]
mov	eax, [ecx+14h]
test	eax, eax
jz	short loc_641D68AD
mov	entry, [ecx+20h]
mov	[esp+8], edx
mov	edx, [prev+4]
mov	[esp+4], edx
mov	edx, [prev]
mov	[esp], edx
call	eax
jmp	short loc_641D68AD
align 4
mov	dword ptr [esp+4], 0 
mov	[esp], ebx	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	prev
pop	prev
leave
retn
align 4
mov	compare_user_context_0,	[entry]
test	prev, prev
jz	short loc_641D6944
cmp	key_0, [prev]
jz	short loc_641D6994
mov	edi, prev
jmp	short loc_641D693A
align 4
cmp	key_0, [prev]
jz	short loc_641D69B3
mov	edi, prev
mov	eax, [prev+8]
test	prev, prev
jnz	short loc_641D6934
lea	prev, [prev+0]
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	prev
pop	prev
leave
retn
align 10h
mov	ecx, [ebp+ht]
mov	compare_user_context_0,	[ecx+1Ch]
mov	ecx, [ebp+compare]
test	ecx, ecx
jnz	loc_641D67F0
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	ecx, [ecx+10h]
mov	[ebp+compare], ecx
test	hash_user_context_0, hash_user_context_0
jnz	loc_641D67F8
lea	compare_user_context_0,	[compare_user_context_0+0]
mov	ecx, [ebp+ht]
mov	hash_user_context_0, [ecx+18h]
test	hash_0,	hash_0
jnz	loc_641D6800
xchg	ax, ax
mov	ecx, [ebp+ht]
mov	hash_0,	[ecx+0Ch]
jmp	loc_641D6800
align 4
			
mov	eax, [prev+8]
test	eax, eax
jz	short loc_641D69A8
mov	[entry], eax
mov	ecx, [prev+8]
test	ecx, ecx
jnz	loc_641D6890
mov	dword ptr [entry], 0
jmp	loc_641D6890
lea	entry, [edi+8]
mov	esi, prev
jmp	loc_641D6877
align 10h
public _silc_hash_table_del
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+ht]
mov	ebx, [ebp+key]
mov	eax, [esi+1Ch]
mov	[ebp+var_24], eax
mov	edx, [esi+10h]
mov	[ebp+var_1C], edx
mov	eax, [esi+18h]
mov	[esp+4], eax
mov	[esp], ebx
call	dword ptr [esi+0Ch]
mov	ecx, [esi+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	entry, [esi]
mov	edi, [ebp+var_1C]
test	edi, edi
jz	loc_641D6AE4
mov	eax, [entry]
test	eax, eax
jz	loc_641D6B00
xor	edi, edi
mov	[ebp+var_28], ht_0
mov	ht_0, entry
mov	[ebp+var_20], key_0
mov	key_0, [ebp+var_24]
jmp	short loc_641D6A34
align 4
mov	prev, [entry]
mov	eax, [prev+8]
test	eax, eax
jz	loc_641D6B00
lea	entry, [prev+8]
mov	[esp+8], ebx
mov	edx, [ebp+var_20]
mov	[esp+4], edx
mov	eax, [eax]
mov	[esp], eax
call	[ebp+var_1C]
test	al, al
jz	short loc_641D6A24
mov	edx, entry
mov	entry, [ebp+var_28]
mov	eax, [entry]
test	prev, prev
jz	loc_641D6B00
test	edi, edi
jz	loc_641D6B0C
mov	dword ptr [prev+8], 0
mov	entry, [eax+8]
test	edx, edx
jz	short loc_641D6A73
mov	[edi+8], edx
			
mov	entry, [ht_0+14h]
test	edx, edx
jz	short loc_641D6A95
mov	ecx, [ht_0+20h]
mov	[esp+8], ecx
mov	ecx, [prev+4]
mov	[esp+4], ecx
mov	ecx, [prev]
mov	[esp], ecx
mov	[ebp+var_2C], prev
call	edx
mov	eax, [ebp+var_2C]
mov	[esp], eax	
call	_silc_free
mov	eax, [ht_0+8]
dec	eax
mov	[ht_0+8], eax
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6ABE
lea	ecx, [eax+eax]
mov	edx, [ht_0+4]
cmp	ecx, ds:_primesize[edx*4]
jnb	short loc_641D6ABE
cmp	eax, 0Bh
ja	short loc_641D6AC8
			
mov	al, 1
add	esp, 3Ch
pop	ebx
pop	ht_0
pop	prev
leave
retn
mov	dword ptr [esp+4], 0
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 3Ch
pop	ebx
pop	ht_0
pop	prev
leave
retn
align 4
mov	eax, [entry]
test	prev, prev
jz	short loc_641D6B00
cmp	key_0, [prev]
jnz	short loc_641D6AF4
jmp	short loc_641D6B0C
cmp	key_0, [prev]
jz	short loc_641D6B2B
mov	edi, prev
mov	prev, [prev+8]
test	prev, prev
jnz	short loc_641D6AF0
lea	esi, [esi+0]
			
xor	prev, prev
add	esp, 3Ch
pop	ebx
pop	esi
pop	prev
leave
retn
align 4
			
mov	ecx, [prev+8]
test	ecx, ecx
jz	short loc_641D6B20
mov	[entry], ecx
mov	ebx, [prev+8]
test	ebx, ebx
jnz	loc_641D6A73
mov	dword ptr [entry], 0
jmp	loc_641D6A73
lea	entry, [edi+8]
jmp	loc_641D6A5A
align 4
public _silc_hash_table_rehash_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+ht]
mov	edx, [ebp+new_size]
mov	eax, [ebp+hash]
mov	[ebp+var_24], eax
mov	eax, [ebp+hash_user_context]
mov	[ebp+var_28], eax
test	edx, edx
jnz	loc_641D6D03
mov	new_size_0, [ht_0+8]
xor	esi, esi
cmp	edx, 3
jbe	short loc_641D6B83
mov	si, 1
mov	eax, 1
jmp	short loc_641D6B7A
lea	size_index, [eax+1]
cmp	size_index, 32h
jz	loc_641D6D3C
mov	eax, size_index
cmp	edx, ds:_primesize[eax*4]
ja	short loc_641D6B6C
			
mov	edi, [ht_0+4]
cmp	edi, size_index
jz	loc_641D6D34
mov	edx, [ht_0]
mov	[ebp+table], edx
mov	al, [ht_0+24h]
mov	dl, al
and	edx, 1
mov	[ebp+var_35], dl
and	eax, 0FFFFFFFEh
mov	[ht_0+24h], al
mov	dword ptr [esp+4], 4 
mov	eax, ds:_primesize[size_index*4]
mov	[esp], eax	
call	_silc_calloc
mov	[ht_0],	eax
test	eax, eax
jz	loc_641D6D34
mov	[ht_0+4], size_index
mov	dword ptr [ht_0+8], 0
mov	edi, ds:_primesize[edi*4]
mov	[ebp+var_34], edi
test	edi, edi
jz	loc_641D6CBF
xor	eax, eax
mov	[ebp+i], 0
xchg	ax, ax
mov	edx, [ebp+table]
mov	size_index, [edx+eax*4]
test	e, e
jz	loc_641D6CB0
xchg	ax, ax
mov	eax, [e+4]
mov	[ebp+var_20], eax
mov	edx, [e]
mov	[ebp+var_1C], edx
mov	eax, [ebp+var_28]
mov	[esp+4], eax
mov	[esp], edx
call	[ebp+var_24]
mov	ecx, [ht_0+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	edx, [ht_0]
mov	edi, [edx]
test	edi, edi
jz	loc_641D6CDD
mov	eax, [edi+8]
test	eax, eax
jnz	short loc_641D6C3E
jmp	short loc_641D6C47
mov	eax, edx
mov	edx, [eax+8]
test	edx, edx
jnz	short loc_641D6C3C
mov	edi, eax
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi+8], eax
test	eax, eax
jz	short loc_641D6C97
mov	edx, [ebp+var_1C]
mov	[eax], edx
mov	edx, [ebp+var_20]
mov	[eax+4], edx
inc	dword ptr [ht_0+8]
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6C97
mov	eax, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
jbe	short loc_641D6C97
mov	dword ptr [esp+4], 0 
mov	[esp], ht_0	
call	_silc_hash_table_rehash
			
mov	edi, [e+8]
mov	[esp], esi	
call	_silc_free
test	e, e
jz	short loc_641D6CB0
mov	esi, e
jmp	loc_641D6BFC
align 10h
			
inc	[ebp+i]
mov	eax, [ebp+i]
cmp	[ebp+var_34], eax
ja	loc_641D6BEC
mov	al, [ht_0+24h]
and	eax, 0FFFFFFFEh
or	al, [ebp+var_35]
mov	[ht_0+24h], al
mov	eax, [ebp+table]
mov	[ebp+ht], eax
add	esp, 4Ch
pop	ht_0
pop	size_index
pop	e
leave
jmp	_silc_free
mov	dword ptr [esp+4], 0Ch
mov	dword ptr [esp], 1 
mov	[ebp+var_3C], edx
call	_silc_calloc
mov	edx, [ebp+var_3C]
mov	[edx], eax
test	eax, eax
jnz	loc_641D6C62
jmp	short loc_641D6C97
xor	esi, esi
cmp	new_size_0, 3
jbe	loc_641D6B83
mov	si, 1
mov	eax, 1
jmp	short loc_641D6D26
align 4
lea	size_index, [eax+1]
cmp	size_index, 32h
jz	short loc_641D6D3C
mov	eax, size_index
cmp	new_size_0, ds:_primesize[eax*4]
ja	short loc_641D6D1C
jmp	loc_641D6B83
			
add	esp, 4Ch
pop	ht_0
pop	size_index
pop	edi
leave
retn
			
mov	size_index, eax
jmp	loc_641D6B83
align 4
public _silc_hash_table_replace_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+ht]
mov	esi, [ebp+key]
mov	eax, [ebp+hash_user_context]
mov	[esp+4], eax	
mov	[esp], esi	
call	[ebp+hash]
mov	ecx, [ebx+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
mov	edi, edx
shl	edi, 2
add	edi, [ebx]
mov	edx, [edi]
mov	eax, edx
test	edx, edx
jz	short loc_641D6DE0
mov	ecx, [ht_0+14h]
test	ecx, ecx
jz	short loc_641D6D9B
mov	eax, [ht_0+20h]
mov	[esp+8], eax
mov	eax, [edx+4]
mov	[esp+4], eax
mov	eax, [edx]
mov	[esp], eax
call	ecx
mov	edx, [edi]
mov	eax, edx
			
mov	[eax], key_0
mov	eax, [ebp+context]
mov	[edx+4], eax
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6DBA
mov	context_0, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
ja	short loc_641D6DC4
mov	al, 1
add	esp, 1Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
mov	dword ptr [esp+4], 0
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 1Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 10h
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi], eax
test	eax, eax
jz	short loc_641D6DBC
inc	dword ptr [ht_0+8]
mov	edx, eax
jmp	short loc_641D6D9B
align 4
public _silc_hash_table_add_ext
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+ht]
mov	esi, [ebp+key]
mov	eax, [ebp+hash_user_context]
mov	[esp+4], eax	
mov	[esp], esi	
call	[ebp+hash]
mov	ecx, [ebx+4]
xor	edx, edx
div	ds:_primesize[ecx*4]
lea	edx, ds:0[edx*4]
add	edx, [ebx]
mov	edi, [edx]
test	edi, edi
jz	short loc_641D6EB2
mov	edx, [edi+8]
test	edx, edx
jnz	short loc_641D6E46
jmp	short loc_641D6E4F
mov	edx, eax
mov	eax, [edx+8]
test	eax, eax
jnz	short loc_641D6E44
mov	edi, edx
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[edi+8], eax
test	eax, eax
jz	short loc_641D6ED4
mov	[eax], key_0
mov	edx, [ebp+context]
mov	[eax+4], edx
inc	dword ptr [ht_0+8]
test	byte ptr [ht_0+24h], 1
jz	short loc_641D6E8C
mov	eax, [ht_0+8]
shr	eax, 1
mov	edx, [ht_0+4]
cmp	eax, ds:_primesize[edx*4]
ja	short loc_641D6E98
mov	al, 1
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 4
mov	dword ptr [esp+4], 0 
mov	[esp], ht_0	
call	_silc_hash_table_rehash
mov	al, 1
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
mov	dword ptr [esp+4], 0Ch
mov	dword ptr [esp], 1 
mov	[ebp+var_1C], edx
call	_silc_calloc
mov	edx, [ebp+var_1C]
mov	[edx], eax
test	eax, eax
jnz	short loc_641D6E6A
xchg	ax, ax
xor	eax, eax
add	esp, 2Ch
pop	ht_0
pop	key_0
pop	edi
leave
retn
align 10h
public _silc_log_get_file
push	ebp
mov	ebp, esp
mov	eax, [ebp+type]
dec	eax
cmp	eax, 3
ja	short loc_641D6F08
lea	eax, [eax+eax*8]
shl	eax, 5
add	eax, offset _silclogs
jz	short loc_641D6F08
mov	edx, [log+100h]
test	edx, edx
jz	short loc_641D6F08
leave
retn
align 4
			
xor	log, log
leave
retn
public _silc_log_set_callback
push	ebp
mov	ebp, esp
mov	log, [ebp+type]
dec	log
cmp	log, 3
ja	short locret_641D6F37
lea	log, [log+log*8]
shl	log, 5
add	log, offset _silclogs
jz	short locret_641D6F37
mov	edx, [ebp+cb]
mov	[log+118h], edx
mov	edx, [ebp+context]
mov	[log+11Ch], edx
			
leave
retn
align 4
public _silc_log_reset_callbacks
push	ebp
mov	ebp, esp
mov	dword_6423B1BC,	0
mov	dword_6423B1B8,	0
mov	log.context, 0
mov	log.cb,	0
mov	stru_6423B2E0.context, 0
mov	stru_6423B2E0.cb, 0
mov	stru_6423B400.context, 0
mov	stru_6423B400.cb, 0
leave
retn
align 4
public _silc_log_set_debug_callbacks
push	ebp
mov	ebp, esp
mov	eax, [ebp+debug_cb]
mov	__data_start__.debug_cb, eax
mov	eax, [ebp+debug_context]
mov	__data_start__.debug_context, eax
mov	eax, [ebp+hexdump_cb]
mov	__data_start__.hexdump_cb, eax
mov	eax, [ebp+hexdump_context]
mov	__data_start__.hexdump_context,	eax
leave
retn
align 4
public _silc_log_reset_debug_callbacks
push	ebp
mov	ebp, esp
mov	__data_start__.debug_cb, 0
mov	__data_start__.debug_context, 0
mov	__data_start__.hexdump_cb, 0
mov	__data_start__.hexdump_context,	0
leave
retn
align 4
public _silc_log_timestamp
push	ebp
mov	ebp, esp
mov	dl, [ebp+enable]
and	edx, 1
mov	al, __data_start__._bf94
and	eax, 0FFFFFFFEh
or	eax, edx
mov	__data_start__._bf94, al
leave
retn
align 4
public _silc_log_flushdelay
push	ebp
mov	ebp, esp
mov	eax, [ebp+flushdelay]
mov	__data_start__.flushdelay, eax
leave
retn
align 4
public _silc_log_quick
push	ebp
mov	ebp, esp
mov	al, [ebp+enable]
and	eax, 1
lea	edx, [eax+eax]
mov	al, __data_start__._bf94
and	eax, 0FFFFFFFDh
or	eax, edx
mov	__data_start__._bf94, al
leave
retn
align 4
public _silc_log_debug
push	ebp
mov	ebp, esp
mov	al, [ebp+enable]
and	eax, 1
lea	edx, ds:0[eax*4]
mov	al, __data_start__._bf94
and	eax, 0FFFFFFFBh
or	eax, edx
mov	__data_start__._bf94, al
leave
retn
align 4
public _silc_log_debug_hexdump
push	ebp
mov	ebp, esp
mov	al, [ebp+enable]
and	eax, 1
lea	edx, ds:0[eax*8]
mov	al, __data_start__._bf94
and	eax, 0FFFFFFF7h
or	eax, edx
mov	__data_start__._bf94, al
leave
retn
align 10h
public _silc_log_output_hexdump
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+file]
mov	ebx, [ebp+function]
mov	edi, [ebp+line]
mov	eax, [ebp+data_in]
mov	[ebp+var_2C], eax
mov	edx, [ebp+len]
mov	[ebp+var_24], edx
mov	ecx, [ebp+string]
mov	[ebp+var_30], ecx
test	__data_start__._bf94, 8
jnz	short loc_641D70C0
			
mov	ecx, [ebp+var_30]
mov	[ebp+file], ecx
add	esp, 5Ch
pop	i
pop	esi
pop	count
leave
jmp	_silc_free
align 10h
mov	[esp+4], file_0	
mov	dword ptr [esp], offset	__data_start__.debug_string 
call	_silc_string_regex_match
test	eax, eax
jz	loc_641D7314
mov	eax, __data_start__.hexdump_cb
test	eax, eax
jz	short loc_641D7111
mov	edx, __data_start__.hexdump_context
mov	[esp+18h], edx
mov	edx, [ebp+var_30]
mov	[esp+14h], edx
mov	ecx, [ebp+var_24]
mov	[esp+10h], ecx
mov	edx, [ebp+var_2C]
mov	[esp+0Ch], edx
mov	[esp+8], line_0
mov	[esp+4], function_0
mov	[esp], file_0
call	eax
test	al, al
jnz	short end
mov	file_0,	ds:__imp___iob
add	esi, 40h
mov	ecx, [ebp+var_30]
mov	[esp+10h], ecx
mov	[esp+0Ch], line_0
mov	[esp+8], function_0
mov	dword ptr [esp+4], offset aSDS 
mov	[esp], esi	
call	_fprintf
mov	eax, [ebp+var_24]
and	eax, 0Fh
mov	[ebp+off], eax
mov	line_0,	10h
mov	[ebp+pos], 0
mov	[ebp+k], 0
mov	edx, [ebp+var_24]
sub	edx, eax
mov	[ebp+var_3C], edx
mov	ecx, [ebp+off]
test	ecx, ecx
jz	loc_641D72F1
mov	eax, [ebp+var_24]
sub	eax, [ebp+pos]
cmp	eax, 0Fh
ja	short loc_641D717C
cmp	eax, [ebp+var_3C]
ja	short loc_641D717C
mov	count, [ebp+off]
nop
			
mov	eax, [ebp+off]
cmp	[ebp+var_24], eax
jz	loc_641D730C
			
test	count, count
jz	end
mov	eax, [ebp+k]
shl	eax, 4
inc	[ebp+k]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a08x 
mov	[esp], esi	
call	_fprintf
test	count, count
jle	short loc_641D7219
mov	ecx, [ebp+var_2C]
mov	edx, [ebp+pos]
movzx	eax, byte ptr [ecx+edx]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a02x 
mov	[esp], esi	
call	_fprintf
mov	i, 1
mov	eax, [ebp+var_2C]
add	eax, [ebp+pos]
mov	[ebp+var_1C], eax
lea	esi, [esi+0]
cmp	count, i
jle	short loc_641D7219
mov	edx, [ebp+var_1C]
movzx	eax, byte ptr [edx+i]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a02x 
mov	[esp], esi	
call	_fprintf
inc	i
test	bl, 3
jnz	short loc_641D71E0
mov	[esp+4], esi	
mov	dword ptr [esp], 20h 
call	_fputc
cmp	count, i
jg	short loc_641D71E4
			
cmp	count, 0Fh
jg	short loc_641D7286
mov	[ebp+var_1C], 10h
sub	[ebp+var_1C], count
lea	eax, [count+1]
xor	i, i
mov	[ebp+var_38], count
mov	count, j
mov	j, eax
jmp	short loc_641D723F
align 4
inc	j
inc	ebx
cmp	j, [ebp+var_1C]
jge	short loc_641D727B
			
mov	[esp+0Ch], esi	
mov	dword ptr [esp+8], 3 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	asc_64263EF8 
call	_fwrite
test	bl, 3
jnz	short loc_641D7238
mov	[esp+4], esi	
mov	dword ptr [esp], 20h 
call	_fputc
inc	j
inc	ebx
cmp	j, [ebp+var_1C]
jl	short loc_641D723F
mov	j, [ebp+var_38]
test	count, count
jle	loc_641D7331
xor	i, i
mov	eax, [ebp+var_2C]
mov	ecx, [ebp+pos]
lea	ecx, [eax+ecx]
mov	[ebp+var_1C], ecx
jmp	short loc_641D72AE
align 4
mov	eax, 2Eh
mov	[esp+4], esi	
mov	[esp], eax	
call	_fputc
inc	i
cmp	count, i
jle	short loc_641D72C4
mov	edx, [ebp+var_1C]
mov	al, [edx+i]
lea	edx, [eax-20h]
cmp	dl, 5Eh
ja	short loc_641D7298
movsx	eax, al
jmp	short loc_641D729D
align 4
mov	eax, [ebp+pos]
lea	eax, [count+eax]
mov	[ebp+pos], eax
mov	[esp+4], esi	
mov	dword ptr [esp], 0Ah 
call	_fputc
cmp	count, 0Fh
jle	end
mov	ecx, [ebp+off]
test	ecx, ecx
jnz	loc_641D7168
mov	ecx, [ebp+var_24]
cmp	[ebp+pos], ecx
jnz	loc_641D717C
xor	count, count
mov	eax, [ebp+off]
cmp	[ebp+var_24], eax
jnz	loc_641D7188
nop
mov	count, [ebp+var_24]
jmp	loc_641D7188
mov	[esp+4], function_0
mov	dword ptr [esp], offset	__data_start__.debug_string 
call	_silc_string_regex_match
test	eax, eax
jnz	loc_641D70D8
jmp	end
mov	[esp+4], esi
mov	dword ptr [esp], 0Ah 
call	_fputc
jmp	end
align 4
public _silc_log_output_debug
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+file]
mov	edi, [ebp+function]
mov	ebx, [ebp+string]
test	__data_start__._bf94, 4
jnz	short loc_641D7374
			
mov	[esp], string_0
call	_silc_free
add	esp, 3Ch
pop	string_0
pop	file_0
pop	function_0
leave
retn
align 4
mov	[esp+4], file_0	
mov	dword ptr [esp], offset	__data_start__.debug_string 
call	_silc_string_regex_match
test	eax, eax
jz	loc_641D742C
mov	eax, __data_start__.debug_cb
test	eax, eax
jz	short loc_641D73B7
mov	edx, __data_start__.debug_context
mov	[esp+10h], edx
mov	[esp+0Ch], string_0
mov	edx, [ebp+line]
mov	[esp+8], edx
mov	[esp+4], function_0
mov	[esp], file_0
call	eax
test	al, al
jnz	short end
lea	eax, [ebp+curtime]
mov	[esp+8], eax	
mov	dword ptr [esp], 0 
mov	dword ptr [esp+4], 0
call	_silc_time_value
mov	dword ptr [esp+4], 5Ch 
mov	[esp], function_0 
call	_strrchr
test	eax, eax
jz	short loc_641D744C
mov	[esp+10h], string_0
mov	edx, [ebp+line]
mov	[esp+0Ch], edx
inc	eax
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aSDS 
mov	file_0,	ds:__imp___iob
lea	eax, [esi+40h]
mov	[esp], eax	
call	_fprintf
add	esi, 40h
mov	[esp], esi	
call	_fflush
mov	[esp], string_0	
call	_silc_free
add	esp, 3Ch
pop	string_0
pop	esi
pop	function_0
leave
retn
align 4
mov	[esp+4], function_0 
mov	dword ptr [esp], offset	__data_start__.debug_string 
call	_silc_string_regex_match
test	eax, eax
jnz	loc_641D738C
jmp	end
align 4
mov	[esp+1Ch], string_0
mov	eax, [ebp+line]
mov	[esp+18h], eax
mov	[esp+14h], function_0
mov	eax, [ebp+curtime._bf4]
shr	ax, 6
and	eax, 3Fh
mov	[esp+10h], eax
mov	al, byte ptr [ebp+curtime._bf4]
and	eax, 3Fh
mov	[esp+0Ch], eax
mov	al, byte ptr [ebp+curtime._bf2+1]
and	eax, 1Fh
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a02d02d02dSDS	
mov	file_0,	ds:__imp___iob
lea	eax, [esi+40h]
mov	[esp], eax	
call	_fprintf
jmp	loc_641D740F
align 4
public _silc_log_flush_all
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, dword_6423B1A0
test	eax, eax
jz	short loc_641D74B3
mov	[esp], eax	
call	_fflush
mov	eax, log.fp
test	eax, eax
jz	short loc_641D74C4
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B2E0.fp
test	eax, eax
jz	short loc_641D74D5
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B400.fp
test	eax, eax
jz	short locret_641D74E6
mov	[esp], eax	
call	_fflush
leave
retn
public _silc_log_set_debug_string
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+debug_string]
mov	dword ptr [esp+4], 28h 
mov	[esp], ebx	
call	_strchr
test	eax, eax
jz	short loc_641D7570
mov	dword ptr [esp+4], 29h 
mov	[esp], debug_string_0 
call	_strchr
test	eax, eax
jz	short loc_641D7570
mov	[esp], debug_string_0 
call	_strdup
mov	debug_string_0,	eax
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, string
repne scasb
not	ecx
lea	esi, [ecx-1]
cmp	esi, 7Fh
jbe	short loc_641D7540
mov	esi, 7Fh
mov	edx, offset __data_start__.debug_string
mov	ecx, 80h
xor	eax, eax
mov	edi, edx
rep stosb
mov	[esp+8], esi	
mov	[esp+4], ebx	
mov	[esp], edx	
call	_strncpy
mov	[ebp+debug_string], string
add	esp, 1Ch
pop	string
pop	esi
pop	edi
leave
jmp	_silc_free
align 10h
			
mov	dword ptr [esp+4], 24h 
mov	[esp], debug_string_0 
call	_strchr
test	eax, eax
jnz	short loc_641D751C
mov	[esp], debug_string_0 
call	_silc_string_regexify
mov	debug_string_0,	eax
jmp	short loc_641D7526
public _silc_log_set_file
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	eax, [ebp+type]
dec	eax
cmp	eax, 3
ja	loc_641D76E8
lea	edi, [eax+eax*8]
shl	edi, 5
mov	ebx, edi
add	log, offset _silclogs
jz	loc_641D76E8
mov	esi, [ebp+filename]
test	esi, esi
jz	loc_641D76E0
mov	dword ptr [esp+4], offset aA 
mov	eax, [ebp+filename]
mov	[esp], eax	
call	_fopen
mov	esi, eax
test	eax, eax
jz	loc_641D76F4
mov	dword ptr [esp+4], 180h	
mov	fp, [ebp+filename]
mov	[esp], eax	
call	_chmod
cmp	_silclogs[edi],	0
jnz	loc_641D76B4
test	fp, fp
jz	short loc_641D7652
mov	[log+100h], fp
mov	eax, [ebp+maxsize]
mov	[log+108h], eax
mov	dword ptr [log+10Ch], 0
xor	eax, eax
mov	ecx, 100h
mov	edi, log
rep stosb
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+filename]
repne scasb
not	ecx
dec	ecx
mov	[esp+0Ch], ecx	
mov	eax, [ebp+filename]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 100h	
mov	[esp], log	
call	_silc_strncat
mov	log, [ebp+scheduler]
test	ebx, ebx
jz	short loc_641D76AA
mov	dword ptr [esp+4], offset _silc_log_fflush_callback 
mov	eax, [ebp+scheduler]
mov	[esp], eax	
call	_silc_schedule_task_del_by_callback
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0Ah 
mov	eax, [ebp+scheduler]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], offset _silc_log_fflush_callback 
mov	dword ptr [esp+4], 0 
mov	[esp], eax	
call	_silc_schedule_task_add
or	__data_start__._bf94, 10h
mov	al, 1
add	esp, 2Ch
pop	log
pop	fp
pop	edi
leave
retn
mov	eax, [log+100h]
test	eax, eax
jz	short loc_641D76C6
mov	[esp], eax	
call	_fclose
mov	ecx, 100h
xor	eax, eax
mov	edi, log
rep stosb
mov	dword ptr [log+100h], 0
jmp	loc_641D7602
xor	esi, esi
jmp	loc_641D75F5
align 4
			
xor	eax, eax
add	esp, 2Ch
pop	log
pop	esi
pop	edi
leave
retn
align 4
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+0Ch], eax
mov	eax, [ebp+filename]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aWarningCouldnT 
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp], eax	
call	_fprintf
xor	eax, eax
jmp	short loc_641D76AC
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 13Ch
mov	ebx, log
test	log, log
jz	short loc_641D7756
mov	edi, [log+100h]
test	edi, edi
jz	short loc_641D7756
mov	log, [log+10Ch]
or	eax, [log+108h]
jnz	short loc_641D7764
			
add	esp, 13Ch
pop	log
pop	esi
pop	edi
leave
retn
align 4
mov	[esp], log	
call	_silc_file_size
mov	esi, eax
mov	eax, edx
or	eax, esi
jz	loc_641D7860
mov	edi, [log+108h]
cmp	edx, [log+10Ch]
jb	short loc_641D7756
ja	short loc_641D778C
cmp	esi, edi
jb	short loc_641D7756
mov	esi, [log+110h]
mov	dword ptr [esp], 0 
mov	dword ptr [esp+4], 0
call	_silc_time_string
shr	edi, 0Ah
mov	[esp+10h], edi
mov	[esp+0Ch], esi
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aSSCyclingLogFi 
mov	eax, [log+100h]
mov	[esp], eax	
call	_fprintf
mov	eax, [log+100h]
mov	[esp], eax	
call	_fflush
mov	eax, [log+100h]
mov	[esp], eax	
call	_fclose
lea	esi, [ebp+newname]
mov	ecx, 100h
xor	eax, eax
mov	edi, esi
rep stosb
mov	[esp+0Ch], log
mov	dword ptr [esp+8], offset aS_old 
mov	dword ptr [esp+4], 0FFh	
mov	[esp], esi	
call	_silc_snprintf
mov	[esp], esi	
call	_unlink
mov	[esp+4], esi	
mov	[esp], log	
call	_rename
mov	dword ptr [esp+4], offset aW 
mov	[esp], log	
call	_fopen
mov	[log+100h], eax
test	eax, eax
jz	short loc_641D7889
mov	dword ptr [esp+4], 180h	
mov	[esp], log	
call	_chmod
add	esp, 13Ch
pop	log
pop	esi
pop	edi
leave
retn
align 10h
mov	eax, [log+100h]
mov	[esp], eax	
mov	[ebp+var_11C], edx
call	_fclose
mov	dword ptr [log+100h], 0
mov	edx, [ebp+var_11C]
jmp	loc_641D7778
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+0Ch], eax
mov	eax, [log+110h]
mov	[esp+8], eax
mov	[esp+4], log
mov	dword ptr [esp], offset	aCouldnTReopenL	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 2 
call	_silc_log_output
jmp	loc_641D7842
align 4
public _silc_log_output
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	eax, [ebp+type]
mov	edx, [ebp+string]
mov	[ebp+var_1C], edx
lea	ebx, [eax-1]
cmp	type_0,	3
ja	short loc_641D7918
lea	esi, [type_0+type_0*8]
shl	esi, 5
add	esi, offset _silclogs
jz	short loc_641D7918
mov	edx, [log+118h]
test	edx, edx
jz	short loc_641D792C
mov	ecx, [log+11Ch]
mov	[esp+8], ecx
mov	ecx, [ebp+var_1C]
mov	[esp+4], ecx
mov	[esp], eax
call	edx
test	al, al
jz	short loc_641D792C
			
mov	edx, [ebp+var_1C]
mov	[ebp+type], edx
add	esp, 3Ch
pop	type_0
pop	log
pop	fp
leave
jmp	_silc_free
align 4
			
mov	eax, [log+110h]
mov	[ebp+typename],	eax
mov	al, __data_start__._bf94
test	al, 10h
jz	loc_641D7A10
mov	edi, [log+100h]
test	fp, fp
jnz	short found
dec	type_0
cmp	type_0,	3
jbe	short loc_641D7994
			
mov	eax, [ebp+typename]
test	eax, eax
jz	short loc_641D7918
test	__data_start__._bf94, 4
jz	short loc_641D7918
mov	type_0,	ds:__imp___iob
add	ebx, 40h
mov	ecx, [ebp+var_1C]
mov	[esp+0Ch], ecx
mov	eax, [ebp+typename]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aLoggingSS 
mov	[esp], ebx	
call	_fprintf
mov	[esp], ebx	
call	_fflush
jmp	short loc_641D7918
align 4
lea	log, [type_0+type_0*8]
shl	esi, 5
add	esi, offset _silclogs
jz	short end
mov	fp, [log+100h]
test	fp, fp
jz	short loc_641D794C
test	al, 1
jz	short loc_641D7A23
mov	dword ptr [esp], 0 
mov	dword ptr [esp+4], 0
call	_silc_time_string
mov	edx, [ebp+var_1C]
mov	[esp+10h], edx
mov	ecx, [ebp+typename]
mov	[esp+0Ch], ecx
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aSSS 
mov	[esp], fp	
call	_fprintf
test	__data_start__._bf94, 42h
jz	end
mov	[esp], fp	
call	_fflush
test	log, log
jz	end
mov	eax, log	
call	_silc_log_checksize
jmp	end
align 10h
test	al, 20h
jz	short loc_641D7A44
mov	edi, ds:__imp___iob
add	edi, 40h
xor	log, log
test	al, 1
jnz	short loc_641D79B0
mov	eax, [ebp+var_1C]
mov	[esp+0Ch], eax
mov	edx, [ebp+typename]
mov	[esp+8], edx
mov	dword ptr [esp+4], offset aSS 
mov	[esp], fp	
call	_fprintf
jmp	short loc_641D79E6
align 4
mov	edi, ds:__imp___iob
lea	eax, [edi+40h]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 5Ah 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aWarningTryingT	
call	_fwrite
mov	al, __data_start__._bf94
or	eax, 20h
mov	__data_start__._bf94, al
jmp	short loc_641D7A1A
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, log
mov	log, [log+100h]
test	eax, eax
jz	short loc_641D7AA5
mov	[esp], eax	
call	_fflush
mov	eax, [log+100h]
mov	[esp], eax	
call	_fclose
cmp	byte ptr [log],	0
jnz	short loc_641D7AB0
			
add	esp, 14h
pop	log
leave
retn
mov	dword ptr [esp+4], offset aA
mov	[esp], log	
call	_fopen
mov	[log+100h], eax
test	eax, eax
jnz	short loc_641D7AAA
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+0Ch], eax
mov	eax, [log+110h]
mov	[esp+8], eax
mov	[esp+4], log
mov	dword ptr [esp], offset	aCouldnTResetLo	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 2 
call	_silc_log_output
jmp	short loc_641D7AAA
align 4
public _silc_log_reset_all
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	edx, dword_6423B1A0
test	edx, edx
jz	short loc_641D7B26
mov	eax, offset _silclogs 
call	_silc_log_reset
mov	eax, log.fp
test	eax, eax
jz	short loc_641D7B39
mov	eax, offset log	
call	_silc_log_reset
mov	ecx, stru_6423B2E0.fp
test	ecx, ecx
jz	short loc_641D7B4D
mov	eax, offset stru_6423B2E0 
call	_silc_log_reset
mov	edx, stru_6423B400.fp
test	edx, edx
jz	short loc_641D7B61
mov	eax, offset stru_6423B400 
call	_silc_log_reset
mov	eax, dword_6423B1A0
test	eax, eax
jz	short loc_641D7B72
mov	[esp], eax	
call	_fflush
mov	eax, log.fp
test	eax, eax
jz	short loc_641D7B83
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B2E0.fp
test	eax, eax
jz	short loc_641D7B94
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B400.fp
test	eax, eax
jz	short locret_641D7BA5
mov	[esp], eax	
call	_fflush
leave
retn
align 4
public _silc_log_fflush_callback
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+context]
mov	al, __data_start__._bf94
test	al, 2
jz	short loc_641D7C14
and	eax, 0FFFFFFBFh
mov	__data_start__._bf94, al
mov	eax, __data_start__.flushdelay
cmp	eax, 1
ja	short loc_641D7BDC
mov	__data_start__.flushdelay, 2
mov	eax, 2
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	[esp+10h], eax	
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_log_fflush_callback 
mov	dword ptr [esp+4], 0 
mov	[esp], context_0 
call	_silc_schedule_task_add
add	esp, 24h
pop	context_0
leave
retn
align 4
mov	eax, dword_6423B1A0
test	eax, eax
jz	short loc_641D7C25
mov	[esp], eax	
call	_fflush
mov	eax, log.fp
test	eax, eax
jz	short loc_641D7C36
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B2E0.fp
test	eax, eax
jz	short loc_641D7C47
mov	[esp], eax	
call	_fflush
mov	eax, stru_6423B400.fp
test	eax, eax
jz	short loc_641D7C58
mov	[esp], eax	
call	_fflush
mov	eax, offset _silclogs 
call	_silc_log_checksize
mov	eax, offset log	
call	_silc_log_checksize
mov	eax, offset stru_6423B2E0 
call	_silc_log_checksize
mov	eax, offset stru_6423B400 
call	_silc_log_checksize
mov	al, __data_start__._bf94
jmp	loc_641D7BBB
align 4
public _silc_free
			
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_free
public _silc_realloc
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	eax, [ebp+size]
lea	edx, [eax-1]
cmp	edx, 3FFFFFFEh
ja	short loc_641D7CCA
mov	[esp+4], size_0	
mov	size_0,	[ebp+ptr]
mov	[esp], eax	
call	_realloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D7CEA
			
mov	eax, addr
add	esp, 14h
pop	addr
leave
retn
mov	dword ptr [esp], offset	aInvalidMemoryA
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	ebx, ebx
jmp	short loc_641D7CC2
mov	dword ptr [esp], offset	aSystemOutOfMem
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	short loc_641D7CC2
public _silc_srealloc_ua
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	eax, [ebp+stack]
mov	ebx, [ebp+old_size]
mov	edx, [ebp+ptr]
mov	ecx, [ebp+size]
test	eax, eax
jz	short loc_641D7D44
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], size_0 
mov	[esp+8], ptr_0	
mov	[esp+4], old_size_0 
mov	[esp], stack_0	
call	_silc_stack_realloc
add	esp, 24h
pop	old_size_0
leave
retn
align 4
mov	[ebp+old_size],	size_0
mov	[ebp+stack], ptr_0
add	esp, 24h
pop	old_size_0
leave
jmp	_silc_realloc
public _silc_srealloc
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	eax, [ebp+stack]
mov	ebx, [ebp+old_size]
mov	edx, [ebp+ptr]
mov	ecx, [ebp+size]
test	eax, eax
jz	short loc_641D7D90
mov	dword ptr [esp+10h], 1 
mov	[esp+0Ch], size_0 
mov	[esp+8], ptr_0	
mov	[esp+4], old_size_0 
mov	[esp], stack_0	
call	_silc_stack_realloc
add	esp, 24h
pop	old_size_0
leave
retn
align 10h
mov	[ebp+old_size],	size_0
mov	[ebp+stack], ptr_0
add	esp, 24h
pop	old_size_0
leave
jmp	_silc_realloc
public _silc_calloc
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	eax, [ebp+items]
mov	edx, [ebp+size]
mov	ecx, edx
imul	ecx, eax
dec	ecx
cmp	ecx, 3FFFFFFEh
ja	short loc_641D7DD5
mov	[esp+4], size_0	
mov	[esp], items_0	
call	_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D7DF5
			
mov	eax, addr
add	esp, 14h
pop	addr
leave
retn
mov	dword ptr [esp], offset	aInvalidMemoryA
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	ebx, ebx
jmp	short loc_641D7DCD
mov	dword ptr [esp], offset	aSystemOutOfMem
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	short loc_641D7DCD
align 4
public _silc_scalloc
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 10h
mov	edx, [ebp+stack]
mov	eax, [ebp+items]
mov	ebx, [ebp+size]
test	edx, edx
jnz	short loc_641D7E3C
mov	[ebp+items], size_0
mov	[ebp+stack], items_0
add	esp, 10h
pop	size_0
pop	edi
leave
jmp	_silc_calloc
align 4
imul	size_0,	items_0
mov	dword ptr [esp+8], 1 
mov	[esp+4], ebx	
mov	[esp], stack_0	
call	_silc_stack_malloc
mov	edx, eax
test	eax, eax
jz	short loc_641D7E6A
xor	eax, eax
mov	edi, edx
mov	ecx, ebx
rep stosb
mov	eax, edx
add	esp, 10h
pop	ebx
pop	addr
leave
retn
xor	eax, eax
jmp	short loc_641D7E63
align 10h
public _silc_malloc
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	eax, [ebp+size]
lea	edx, [eax-1]
cmp	edx, 3FFFFFFEh
ja	short loc_641D7E9B
mov	[esp], size_0	
call	_malloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D7EBB
			
mov	eax, addr
add	esp, 14h
pop	addr
leave
retn
mov	dword ptr [esp], offset	aInvalidMemoryA
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	ebx, ebx
jmp	short loc_641D7E93
mov	dword ptr [esp], offset	aSystemOutOfMem
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	short loc_641D7E93
align 4
public _silc_smalloc_ua
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+stack]
mov	edx, [ebp+size]
test	eax, eax
jz	short loc_641D7F04
mov	dword ptr [esp+8], 0 
mov	[esp+4], size_0	
mov	[esp], stack_0	
call	_silc_stack_malloc
leave
retn
align 4
mov	[ebp+stack], size_0
leave
jmp	_silc_malloc
align 10h
public _silc_smalloc
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+stack]
mov	edx, [ebp+size]
test	eax, eax
jz	short loc_641D7F38
mov	dword ptr [esp+8], 1 
mov	[esp+4], size_0	
mov	[esp], stack_0	
call	_silc_stack_malloc
leave
retn
align 4
mov	[ebp+stack], size_0
leave
jmp	_silc_malloc
align 4
public _silc_memdup
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	esi, [ebp+ptr]
mov	ebx, [ebp+size]
lea	eax, [ebx+1]
mov	[esp], eax	
call	_silc_malloc
test	eax, eax
jz	short loc_641D7F74
mov	edi, eax
mov	ecx, size_0
rep movsb
mov	byte ptr [eax+ebx], 0
add	esp, 1Ch
pop	size_0
pop	ptr_0
pop	addr
leave
retn
mov	dword ptr [esp], offset	aSystemOutOfMem
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	short loc_641D7F6C
public _silc_smemdup
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	eax, [ebp+stack]
mov	esi, [ebp+ptr]
mov	ebx, [ebp+size]
test	eax, eax
jnz	short loc_641D7FCC
lea	stack_0, [size_0+1]
mov	[esp], eax	
call	_silc_malloc
test	eax, eax
jz	short loc_641D7FE9
mov	edi, eax
mov	ecx, size_0
rep movsb
mov	byte ptr [eax+ebx], 0
			
add	esp, 1Ch
pop	size_0
pop	ptr_0
pop	addr
leave
retn
align 4
mov	dword ptr [esp+8], 1 
lea	edx, [size_0+1]
mov	[esp+4], edx	
mov	[esp], stack_0	
call	_silc_stack_malloc
test	eax, eax
jnz	short loc_641D7FB9
jmp	short loc_641D7FC3
mov	dword ptr [esp], offset	aSystemOutOfMem	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	short loc_641D7FC3
align 4
public _silc_sstrdup
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	edx, [ebp+stack]
mov	esi, [ebp+str]
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, esi
repne scasb
not	ecx
lea	ebx, [ecx-1]
test	edx, edx
jnz	short loc_641D8050
mov	[esp], ecx	
call	_silc_malloc
test	eax, eax
jz	short loc_641D806A
mov	edi, addr
mov	ecx, ebx
rep movsb
mov	byte ptr [eax+ebx], 0
			
add	esp, 1Ch
pop	ebx
pop	str_0
pop	addr
leave
retn
align 10h
mov	dword ptr [esp+8], 0 
mov	[esp+4], ecx	
mov	[esp], stack_0	
call	_silc_stack_malloc
test	eax, eax
jnz	short loc_641D803B
jmp	short loc_641D8045
mov	dword ptr [esp], offset	aSystemOutOfMem	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	short loc_641D8045
align 4
public _silc_mime_get_data
push	ebp
mov	ebp, esp
mov	eax, [ebp+mime]
mov	edx, [ebp+data_len]
test	eax, eax
jz	short locret_641D80A5
test	data_len_0, data_len_0
jz	short loc_641D80A2
mov	ecx, [mime_0+8]
mov	[data_len_0], ecx
mov	mime_0,	[mime_0+4]
leave
retn
align 4
public _silc_mime_steal_data
push	ebp
mov	ebp, esp
mov	edx, [ebp+mime]
mov	eax, [ebp+data_len]
test	edx, edx
jz	short loc_641D80D4
test	data_len_0, data_len_0
jz	short loc_641D80BE
mov	ecx, [mime_0+8]
mov	[data_len_0], ecx
mov	data_len_0, [mime_0+4]
mov	dword ptr [mime_0+4], 0
mov	dword ptr [mime_0+8], 0
leave
retn
align 4
xor	data_len_0, data_len_0
leave
retn
public _silc_mime_is_multipart
push	ebp
mov	ebp, esp
mov	eax, [ebp+mime]
test	eax, eax
jz	short locret_641D80EA
mov	mime_0,	[mime_0+0Ch]
test	eax, eax
setnz	al
leave
retn
public _silc_mime_get_multiparts
push	ebp
mov	ebp, esp
mov	eax, [ebp+mime]
mov	edx, [ebp+type]
test	eax, eax
jz	short locret_641D8105
test	type_0,	type_0
jz	short loc_641D8102
mov	ecx, [mime_0+14h]
mov	[type_0], ecx
mov	mime_0,	[mime_0+0Ch]
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, list
mov	esi, context
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641D814C
mov	[e], context
mov	edx, [list]
test	edx, edx
jz	short loc_641D8160
movzx	edx, word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], e
test	byte ptr [list+10h], 1
jnz	short loc_641D8154
mov	[list+4], e
mov	dword ptr [e+edx], 0
add	dword ptr [list+10h], 4
mov	al, 1
add	esp, 10h
pop	list
pop	context
leave
retn
align 4
movzx	ecx, word ptr [list+0Eh]
mov	context, [list+4]
mov	[e+ecx], esi
jmp	short loc_641D813C
mov	[list],	e
movzx	edx, word ptr [list+0Ch]
jmp	short loc_641D8136
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, sb
test	sb, sb
jz	short loc_641D8187
mov	sb, [sb]
mov	[esp], eax	
call	_silc_free
mov	[esp], sb	
call	_silc_free
add	esp, 14h
pop	sb
leave
retn
align 10h
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
mov	eax, [ebp+key]
mov	[esp], eax	
call	_silc_free
mov	[ebp+key], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
public _silc_mime_add_data
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+mime]
mov	edi, [ebp+data]
mov	esi, [ebp+data_len]
test	ebx, ebx
jz	short loc_641D81EF
test	data_0,	data_0
jz	short loc_641D81EF
mov	eax, [mime_0+4]
test	eax, eax
jz	short loc_641D81DD
mov	[esp], eax	
call	_silc_free
mov	[esp+4], data_len_0 
mov	[esp], data_0	
call	_silc_memdup
mov	[mime_0+4], eax
mov	[mime_0+8], data_len_0
			
add	esp, 1Ch
pop	mime_0
pop	data_len_0
pop	data_0
leave
retn
align 4
public _silc_mime_get_field
			
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+mime]
mov	edx, [ebp+field]
test	eax, eax
jnz	short loc_641D820C
			
xor	eax, eax
leave
retn
test	field_0, field_0
jz	short loc_641D8208
lea	ecx, [ebp+value]
mov	[esp+0Ch], ecx	
mov	dword ptr [esp+8], 0 
mov	[esp+4], field_0 
mov	mime_0,	[mime_0]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short loc_641D8208
mov	eax, [ebp+value]
leave
retn
align 4
public _silc_mime_add_field
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+mime]
mov	esi, [ebp+field]
mov	eax, [ebp+value]
test	ebx, ebx
jz	short loc_641D8280
test	field_0, field_0
jz	short loc_641D8280
test	value_0, value_0
jz	short loc_641D8280
mov	[esp], value_0	
call	_strdup
mov	edi, eax
mov	[esp], field_0	
call	_strdup
mov	[ebp+value], edi
mov	[ebp+field], eax
mov	eax, [mime_0]
mov	[ebp+mime], eax
add	esp, 1Ch
pop	mime_0
pop	field_0
pop	edi
leave
jmp	_silc_hash_table_add
align 10h
			
add	esp, 1Ch
pop	mime_0
pop	field_0
pop	edi
leave
retn
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, len
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D82D2
test	len, len
jz	short loc_641D82D2
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
mov	[sb], eax
test	eax, eax
jz	short loc_641D82DB
mov	[sb+4],	eax
mov	[sb+8],	eax
lea	len, [eax+len]
mov	[sb+0Ch], esi
			
mov	eax, sb
add	esp, 10h
pop	sb
pop	len
leave
retn
xor	sb, sb
jmp	short loc_641D82D2
align 10h
public _silc_mime_assembler_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+assembler]
mov	eax, [ebx]
mov	[esp], eax	
call	_silc_hash_table_free
mov	[ebp+assembler], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
public _silc_mime_assembler_alloc
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D836B
mov	dword ptr [esp+1Ch], 1 
mov	[esp+18h], assembler 
mov	dword ptr [esp+14h], offset _silc_mime_assembler_dest 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset _silc_hash_string_compare 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_string 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[assembler], eax
test	eax, eax
jz	short loc_641D8373
			
mov	eax, assembler
add	esp, 24h
pop	assembler
leave
retn
mov	[esp], assembler
call	_silc_mime_assembler_free
xor	assembler, assembler
jmp	short loc_641D836B
align 10h
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
mov	eax, [ebp+key]
mov	[esp], eax	
call	_silc_free
mov	[ebp+key], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_hash_table_free
align 4
public _silc_mime_is_partial
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+mime]
test	eax, eax
jnz	short loc_641D83B8
			
xor	type, type
leave
retn
align 4
lea	edx, [ebp+ret_context]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset aContentType 
mov	mime_0,	[mime_0]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short loc_641D83B1
mov	eax, [ebp+ret_context]
test	type, type
jz	short loc_641D83B1
mov	dword ptr [esp+4], offset aMessagePartial 
mov	[esp], type	
call	_strstr
test	eax, eax
setnz	al
leave
retn
align 4
public _silc_mime_partial_free
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+partials]
test	ebx, ebx
jz	loc_641D852C
mov	eax, [partials_0]
mov	[partials_0+8],	eax
mov	dl, [partials_0+10h]
and	edx, 0FFFFFFFDh
mov	[partials_0+10h], dl
mov	dword ptr [partials_0+18h], 0
mov	dword ptr [partials_0+14h], 0
xor	eax, eax
jmp	short loc_641D845B
movzx	ecx, word ptr [partials_0+0Eh]
mov	ecx, [eax+ecx]
mov	[partials_0+8],	ecx
mov	[partials_0+14h], eax
mov	buf, [eax]
test	buf, buf
jz	short loc_641D847B
mov	eax, [buf]
mov	[esp], eax	
call	_silc_free
mov	[esp], buf	
call	_silc_free
mov	eax, [partials_0+14h]
mov	dl, [partials_0+10h]
mov	[partials_0+18h], eax
mov	eax, [partials_0+8]
test	eax, eax
jz	short loc_641D8474
test	dl, 2
jnz	short loc_641D8430
movzx	ecx, word ptr [partials_0+0Ch]
mov	ecx, [eax+ecx]
jmp	short loc_641D8437
align 4
mov	dword ptr [partials_0+14h], 0
mov	ecx, [partials_0]
mov	[partials_0+8],	ecx
and	edx, 0FFFFFFFDh
mov	[partials_0+10h], dl
test	ecx, ecx
jz	short loc_641D84D3
xchg	ax, ax
test	byte ptr [partials_0+10h], 2
jz	short loc_641D84E4
movzx	eax, word ptr [partials_0+0Eh]
mov	eax, [ecx+eax]
mov	[partials_0+8],	eax
mov	eax, [partials_0]
test	eax, eax
jz	short loc_641D84BF
cmp	ecx, eax
jz	loc_641D8534
movzx	edi, word ptr [partials_0+0Ch]
jmp	short loc_641D84B6
cmp	ecx, esi
jz	short loc_641D84F0
mov	eax, esi
lea	edx, [eax+edi]
mov	buf, [edx]
test	esi, esi
jnz	short loc_641D84B0
cmp	ecx, [partials_0+4]
jz	short loc_641D851D
			
mov	[esp], ecx	
call	_silc_free
mov	ecx, [partials_0+8]
test	ecx, ecx
jnz	short loc_641D848C
mov	[ebp+partials],	partials_0
add	esp, 3Ch
pop	partials_0
pop	buf
pop	edi
leave
jmp	_silc_free
align 4
movzx	eax, word ptr [partials_0+0Ch]
mov	eax, [ecx+eax]
jmp	short loc_641D8499
align 10h
mov	[ebp+var_2C], edx
mov	buf, [ecx+edi]
mov	edx, [ebp+var_2C]
mov	[edx], esi
test	esi, esi
jz	short loc_641D850F
test	byte ptr [partials_0+10h], 1
jz	short loc_641D850F
movzx	edi, word ptr [partials_0+0Eh]
mov	edx, [ecx+edi]
mov	[esi+edi], edx
			
cmp	ecx, [partials_0+8]
jz	short loc_641D8522
sub	dword ptr [partials_0+10h], 4
cmp	ecx, [partials_0+4]
jnz	short loc_641D84C4
mov	[partials_0+4],	eax
jmp	short loc_641D84C4
mov	esi, [ebp+var_2C]
mov	edx, [esi]
mov	[partials_0+8],	edx
jmp	short loc_641D8514
add	esp, 3Ch
pop	partials_0
pop	esi
pop	edi
leave
retn
movzx	edi, word ptr [partials_0+0Ch]
mov	[ebp+var_2C], partials_0
xor	eax, eax
jmp	short loc_641D84F3
align 10h
public _silc_mime_free
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+mime]
mov	[ebp+var_1C], eax
mov	eax, [eax]
test	eax, eax
jz	short loc_641D855D
mov	[esp], eax	
call	_silc_hash_table_free
mov	ecx, [ebp+var_1C]
mov	eax, [ecx+0Ch]
test	eax, eax
jz	loc_641D8633
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	esi, ecx
jmp	short loc_641D85A3
align 4
movzx	edx, word ptr [ebx+0Eh]
mov	edx, [eax+edx]
mov	[ebx+8], edx
mov	[ebx+14h], eax
mov	eax, [eax]
test	m, m
jz	short loc_641D85CB
mov	[esp], m	
call	_silc_mime_free
mov	ebx, [mime_0+0Ch]
mov	eax, [ebx+14h]
mov	[ebx+18h], eax
mov	eax, [ebx+8]
test	eax, eax
jz	short loc_641D85C4
test	byte ptr [ebx+10h], 2
jnz	short loc_641D8588
movzx	edx, word ptr [ebx+0Ch]
mov	edx, [eax+edx]
jmp	short loc_641D858F
align 4
mov	dword ptr [ebx+14h], 0
test	ebx, ebx
jz	short loc_641D8633
mov	mime_0,	[ebx]
mov	[ebx+8], esi
and	byte ptr [ebx+10h], 0FDh
test	esi, esi
jz	short loc_641D862B
test	byte ptr [ebx+10h], 2
jz	loc_641D8668
movzx	m, word	ptr [ebx+0Eh]
mov	eax, [esi+eax]
mov	[ebx+8], eax
mov	eax, [ebx]
test	eax, eax
jz	short loc_641D8613
cmp	esi, eax
jz	loc_641D86B7
movzx	edi, word ptr [ebx+0Ch]
jmp	short loc_641D860A
cmp	esi, ecx
jz	short loc_641D8674
mov	eax, ecx
lea	edx, [eax+edi]
mov	ecx, [edx]
test	ecx, ecx
jnz	short loc_641D8604
cmp	esi, [ebx+4]
jz	loc_641D86A5
			
mov	[esp], esi	
call	_silc_free
mov	esi, [ebx+8]
test	esi, esi
jnz	short loc_641D85DC
mov	[esp], ebx
call	_silc_free
			
mov	edi, [ebp+var_1C]
mov	m, [edi+10h]
mov	[esp], eax	
call	_silc_free
mov	eax, [edi+14h]
mov	[esp], eax	
call	_silc_free
mov	eax, [edi+4]
mov	[esp], eax	
call	_silc_free
mov	[ebp+mime], edi
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	_silc_free
align 4
movzx	m, word	ptr [ebx+0Ch]
mov	eax, [esi+eax]
jmp	loc_641D85ED
mov	[ebp+var_3C], edx
mov	ecx, [esi+edi]
mov	edi, [ebp+var_3C]
mov	[edi], ecx
test	ecx, ecx
jz	short loc_641D8693
test	byte ptr [ebx+10h], 1
jz	short loc_641D8693
movzx	edx, word ptr [ebx+0Eh]
mov	edi, [esi+edx]
mov	[ecx+edx], edi
			
cmp	esi, [ebx+8]
jz	short loc_641D86AD
sub	dword ptr [ebx+10h], 4
cmp	esi, [ebx+4]
jnz	loc_641D861C
mov	[ebx+4], eax
jmp	loc_641D861C
mov	ecx, [ebp+var_3C]
mov	edx, [ecx]
mov	[ebx+8], edx
jmp	short loc_641D8698
movzx	edi, word ptr [ebx+0Ch]
mov	[ebp+var_3C], ebx
xor	eax, eax
jmp	short loc_641D8677
align 4
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
mov	[ebp+key], eax
leave
jmp	_silc_mime_free
align 4
public _silc_mime_alloc
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D8737
mov	dword ptr [esp+1Ch], 1 
mov	[esp+18h], mime	
mov	dword ptr [esp+14h], offset _silc_mime_field_dest 
mov	[esp+10h], mime	
mov	dword ptr [esp+0Ch], offset _silc_hash_string_compare 
mov	[esp+8], mime	
mov	dword ptr [esp+4], offset _silc_hash_string 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[mime],	eax
test	eax, eax
jz	short loc_641D873F
			
mov	eax, mime
add	esp, 24h
pop	mime
leave
retn
mov	[esp], mime
call	_silc_mime_free
xor	mime, mime
jmp	short loc_641D8737
align 4
public _silc_mime_add_multipart
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	eax, [ebp+mime]
mov	esi, [ebp+part]
test	eax, eax
jz	short loc_641D87B4
mov	ebx, [mime_0+0Ch]
test	ebx, ebx
jz	short loc_641D87B4
test	part_0,	part_0
jz	short loc_641D87B4
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641D87A9
mov	[eax], part_0
mov	ecx, [ebx]
test	ecx, ecx
jz	short loc_641D87C0
movzx	edx, word ptr [ebx+0Ch]
mov	ecx, [ebx+4]
mov	[ecx+edx], eax
test	byte ptr [ebx+10h], 1
jz	short loc_641D879B
movzx	ecx, word ptr [ebx+0Eh]
mov	part_0,	[ebx+4]
mov	[eax+ecx], esi
mov	[ebx+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [ebx+10h], 4
mov	al, 1
add	esp, 10h
pop	ebx
pop	esi
leave
retn
align 4
			
xor	mime_0,	mime_0
add	esp, 10h
pop	ebx
pop	part_0
leave
retn
align 10h
mov	[ebx], eax
movzx	edx, word ptr [ebx+0Ch]
jmp	short loc_641D878B
public _silc_mime_encode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 47Ch
mov	ebx, [ebp+mime]
test	ebx, ebx
jnz	short loc_641D87EC
			
xor	part, part
mov	eax, ret
add	esp, 47Ch
pop	buffer
pop	ret
pop	edi
leave
retn
align 4
lea	eax, [ebp+buf]
mov	[ebp+var_45C], eax
mov	ecx, 10h
xor	eax, eax
mov	edi, [ebp+var_45C]
rep stosb
lea	ebx, [ebp+htl]
mov	[esp+4], ebx	
mov	edx, [ebp+mime]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_list
mov	[ebp+i], 0
lea	esi, [ebp+tmp]
jmp	short loc_641D887A
align 4
mov	ecx, 400h
mov	edi, esi
xor	eax, eax
rep stosb
mov	eax, [ebp+value]
mov	[esp+10h], eax
mov	eax, [ebp+field]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aSS_0	
mov	dword ptr [esp+4], 3FFh	
mov	[esp], esi	
call	_silc_snprintf
mov	dword ptr [esp+8], 1Dh
mov	[esp+4], esi
lea	edx, [ebp+buf]
mov	[esp], edx	
call	_silc_buffer_strformat
inc	[ebp+i]
lea	ecx, [ebp+value]
mov	[esp+8], ecx	
lea	eax, [ebp+field]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_silc_hash_table_get
test	al, al
jnz	short loc_641D882C
mov	[esp], ebx	
call	_silc_hash_table_list_reset
mov	ecx, [ebp+i]
test	ecx, ecx
jnz	loc_641D8BB0
mov	ecx, [ebp+mime]
mov	ecx, [ecx+8]
mov	[ebp+i], ecx
mov	edi, [ebp+buf.tail]
mov	esi, [ebp+buf.data]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641D87DB
sub	edi, esi
add	edi, [ebp+i]
jz	loc_641D8D62
mov	dword ptr [esp+4], 1 
mov	[esp], edi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641D87DB
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+edi]
mov	[buffer+0Ch], edx
mov	esi, edx
sub	esi, eax
cmp	edi, esi
ja	short loc_641D8919
mov	[buffer+8], edx
mov	ecx, [ebp+buf.tail]
mov	eax, [ebp+buf.data]
cmp	ecx, eax
jz	short loc_641D8977
sub	ecx, eax
mov	esi, [ebp+buf.head]
mov	eax, [buffer+4]
mov	edx, [buffer+8]
sub	edx, eax
cmp	ecx, edx
ja	short loc_641D8953
mov	edi, eax
rep movsb
mov	eax, [ebp+buf.tail]
sub	eax, [ebp+buf.data]
mov	ecx, [buffer+4]
mov	edx, [buffer+8]
sub	edx, ecx
cmp	eax, edx
ja	short loc_641D8950
lea	eax, [ecx+eax]
mov	[buffer+4], eax
mov	esi, [ebp+buf.head]
mov	[ebp+buf.end], 0
mov	[ebp+buf.tail],	0
mov	[ebp+buf.data],	0
mov	[ebp+buf.head],	0
mov	[esp], esi	
call	_silc_free
mov	eax, [ebp+mime]
mov	esi, [eax+4]
test	esi, esi
jz	short loc_641D8994
mov	ecx, [eax+8]
mov	eax, [buffer+4]
mov	edx, [buffer+8]
sub	edx, eax
cmp	ecx, edx
ja	short loc_641D8994
mov	edi, eax
rep movsb
			
mov	edx, [ebp+mime]
mov	eax, [edx+0Ch]
test	eax, eax
jz	loc_641D8D28
mov	edx, [eax]
mov	[eax+8], edx
and	byte ptr [eax+10h], 0FDh
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	[ebp+var_450], 0
lea	ecx, [ebp+tmp]
mov	[ebp+var_460], ecx
jmp	loc_641D8B16
mov	edx, offset byte_642640E9
lea	part, [ebp+tmp2]
mov	[esp+14h], esi
mov	[esp+10h], eax
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset aSSS_0 
mov	dword ptr [esp+4], 3FFh	
lea	eax, [ebp+tmp]
mov	[esp], eax	
call	_silc_snprintf
mov	esi, [buffer]
mov	edx, [buffer+0Ch]
mov	[ebp+var_450], edx
sub	edx, esi
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+var_460]
xor	eax, eax
repne scasb
not	ecx
mov	eax, [ebp+pd_len]
add	eax, edx
lea	edi, [ecx+eax-1]
cmp	edi, edx
jbe	short loc_641D8A83
mov	edx, [buffer+4]
mov	ecx, [buffer+8]
mov	[ebp+var_450], ecx
mov	[esp+4], edi	
mov	[esp], esi	
mov	[ebp+var_454], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_454]
jz	loc_641D87DB
mov	[buffer], eax
mov	ecx, edx
sub	ecx, esi
lea	esi, [eax+ecx]
mov	[buffer+4], esi
mov	ecx, [ebp+var_450]
sub	ecx, edx
lea	edx, [esi+ecx]
mov	[buffer+8], edx
lea	edi, [eax+edi]
mov	[buffer+0Ch], edi
mov	[ebp+var_450], edi
mov	edx, 0FFFFFFFFh
mov	ecx, edx
mov	edi, [ebp+var_460]
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	eax, [buffer+8]
mov	edi, [ebp+var_450]
sub	edi, eax
cmp	ecx, edi
ja	short loc_641D8AD8
mov	edi, eax
mov	esi, [ebp+var_460]
rep movsb
mov	ecx, edx
mov	edi, [ebp+var_460]
xor	eax, eax
repne scasb
mov	edx, ecx
not	edx
dec	edx
mov	eax, [buffer+8]
mov	ecx, [buffer+0Ch]
mov	edi, ecx
sub	edi, eax
cmp	edx, edi
ja	short loc_641D8AD8
add	eax, edx
mov	[buffer+8], eax
mov	edi, ecx
sub	edi, eax
			
mov	ecx, [ebp+pd_len]
cmp	ecx, edi
ja	short loc_641D8AFE
mov	edi, eax
mov	esi, [ebp+i]
rep movsb
mov	edx, [ebp+pd_len]
mov	ecx, [buffer+8]
mov	eax, [buffer+0Ch]
sub	eax, ecx
cmp	edx, eax
ja	short loc_641D8AFE
lea	edx, [ecx+edx]
mov	[buffer+8], edx
			
mov	pd, [ebp+i]
mov	[esp], esi	
call	_silc_free
mov	[ebp+var_450], 1
mov	edx, [ebp+mime]
mov	eax, [edx+0Ch]
mov	edx, [eax+14h]
mov	[eax+18h], edx
mov	edx, [eax+8]
test	edx, edx
jz	loc_641D8BFC
test	byte ptr [eax+10h], 2
jz	loc_641D8BD0
movzx	ecx, word ptr [eax+0Eh]
mov	ecx, [edx+ecx]
mov	[eax+8], ecx
mov	[eax+14h], edx
mov	esi, [edx]
test	part, part
jz	loc_641D8C03
lea	eax, [ebp+pd_len]
mov	[esp+4], eax	
mov	[esp], part	
call	_silc_mime_encode
mov	[ebp+i], eax
test	eax, eax
jz	loc_641D87DB
mov	edi, [ebp+var_460]
mov	ecx, 400h
xor	eax, eax
rep stosb
mov	dword ptr [ebp+tmp2], 0
mov	eax, [part]
mov	[esp], eax	
call	_silc_hash_table_count
test	eax, eax
jz	short loc_641D8BDC
mov	ecx, [ebp+mime]
mov	eax, [ecx+10h]
mov	edx, [ebp+var_450]
test	edx, edx
jz	loc_641D89D4
mov	edx, offset asc_642640E6 
jmp	loc_641D89D9
align 10h
mov	dword ptr [esp+8], 1Dh
mov	dword ptr [esp+4], offset asc_642640E6 
lea	edx, [ebp+buf]
mov	[esp], edx	
call	_silc_buffer_strformat
jmp	loc_641D88AA
movzx	ecx, word ptr [eax+0Ch]
mov	ecx, [edx+ecx]
jmp	loc_641D8B3E
mov	dword ptr [esp+8], offset asc_642640E6
mov	dword ptr [esp+4], 3 
lea	edx, [ebp+tmp2]
mov	[esp], edx	
call	_silc_snprintf
jmp	short loc_641D8B8F
align 4
mov	dword ptr [eax+14h], 0
lea	ecx, [ebp+tmp]
mov	[ebp+var_464], ecx
xor	part, part
mov	ecx, 400h
mov	edi, [ebp+var_464]
mov	eax, esi
rep stosb
mov	edx, [ebp+mime]
mov	eax, [edx+10h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aS 
mov	dword ptr [esp+4], 3FFh	
lea	ecx, [ebp+tmp]
mov	[esp], ecx	
call	_silc_snprintf
mov	edx, [buffer]
mov	eax, [buffer+0Ch]
mov	[ebp+i], eax
sub	eax, edx
mov	[ebp+var_450], eax
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+var_464]
mov	eax, esi
repne scasb
not	ecx
mov	eax, [ebp+var_450]
lea	esi, [eax+ecx-1]
cmp	esi, eax
jbe	short loc_641D8CCC
mov	edi, [buffer+4]
mov	ecx, [buffer+8]
mov	[ebp+i], ecx
mov	[esp+4], esi	
mov	[esp], edx	
mov	[ebp+var_454], edx
call	_silc_realloc
test	eax, eax
mov	edx, [ebp+var_454]
jz	loc_641D87DB
mov	[buffer], eax
mov	ecx, edi
sub	ecx, edx
lea	edx, [eax+ecx]
mov	[buffer+4], edx
mov	ecx, [ebp+i]
sub	ecx, edi
lea	edi, [edx+ecx]
mov	[buffer+8], edi
lea	esi, [eax+esi]
mov	[buffer+0Ch], esi
mov	[ebp+i], esi
mov	edx, 0FFFFFFFFh
xor	eax, eax
mov	ecx, edx
mov	edi, [ebp+var_464]
repne scasb
not	ecx
dec	ecx
mov	esi, [buffer+8]
mov	[ebp+var_450], esi
mov	esi, [ebp+i]
sub	esi, [ebp+var_450]
cmp	ecx, esi
ja	short loc_641D8D28
mov	edi, [ebp+var_450]
mov	esi, [ebp+var_464]
rep movsb
mov	ecx, edx
mov	edi, [ebp+var_464]
repne scasb
mov	edx, ecx
not	edx
dec	edx
mov	eax, [buffer+8]
mov	ecx, [buffer+0Ch]
sub	ecx, eax
cmp	edx, ecx
ja	short loc_641D8D28
lea	edx, [eax+edx]
mov	[buffer+8], edx
			
mov	esi, [buffer]
mov	edi, [ebp+encoded_len]
test	edi, edi
jz	short loc_641D8D3B
mov	eax, [buffer+0Ch]
sub	eax, ret
mov	edx, [ebp+encoded_len]
mov	[edx], eax
mov	dword ptr [buffer+0Ch],	0
mov	dword ptr [buffer+8], 0
mov	dword ptr [buffer+4], 0
mov	dword ptr [buffer], 0
mov	eax, buffer	
call	_silc_buffer_free_1
jmp	loc_641D87DD
mov	edx, [buffer+8]
jmp	loc_641D8916
align 4
public _silc_mime_decode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 45Ch
mov	edx, [ebp+data]
test	edx, edx
jz	loc_641D92E6
mov	eax, [ebp+mime]
test	eax, eax
jz	loc_641D93DD
mov	[ebp+m], 0
mov	edi, [ebp+data_len]
test	edi, edi
jz	loc_641D938E
mov	edx, [ebp+data]
xor	esi, esi
xor	ebx, ebx
jmp	short loc_641D8DB8
			
inc	i
mov	esi, i
cmp	i, [ebp+data_len]
jnb	loc_641D8F3C
mov	eax, [ebp+data_len]
sub	eax, esi
cmp	eax, 1
jbe	short loc_641D8DAC
mov	edi, [ebp+data]
add	edi, esi
cmp	byte ptr [edi],	0Dh
jnz	short loc_641D8DAC
mov	eax, [ebp+data]
cmp	byte ptr [eax+esi+1], 0Ah
jnz	short loc_641D8DAC
mov	dword ptr [esp+4], 3Ah 
mov	[esp], line	
mov	[ebp+ptr], line
call	_strchr
test	eax, eax
mov	edx, [ebp+ptr]
jz	err
sub	eax, edx
mov	[esp+4], eax	
mov	[esp], line	
call	_silc_memdup
mov	[ebp+var_430], eax
test	eax, eax
mov	edx, [ebp+ptr]
jz	err
mov	dword ptr [esp+4], 3Ah 
mov	[esp], edx	
call	_strchr
mov	edx, edi
sub	edx, eax
dec	edx
jle	err
lea	edx, [eax+1]
mov	[ebp+var_434], edx
mov	ecx, edi
sub	ecx, edx
mov	[ebp+var_42C], ecx
test	ecx, ecx
jle	err
mov	cl, [eax+1]
cmp	cl, 0Dh
jz	err
xor	edx, edx
mov	[ebp+var_438], i
mov	i, [ebp+var_42C]
jmp	short loc_641D8E7D
align 10h
mov	cl, [eax+k+1]
cmp	cl, 0Dh
jz	err
cmp	cl, 20h
jz	short loc_641D8E87
cmp	cl, 9
jnz	short loc_641D8E8C
inc	k
cmp	k, ebx
jl	short loc_641D8E70
mov	ebx, [ebp+var_438]
add	k, [ebp+var_434]
sub	edi, value
test	edi, edi
jle	err
mov	[esp+4], edi	
mov	[esp], value	
call	_silc_memdup
mov	edi, eax
test	eax, eax
jz	err
mov	[esp], eax	
call	_strdup
mov	edx, eax
mov	eax, [ebp+var_430]
mov	[esp], eax	
mov	[ebp+ptr], edx
call	_strdup
mov	edx, [ebp+ptr]
mov	[esp+8], edx	
mov	[esp+4], eax	
mov	edx, [ebp+mime]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_add
mov	ecx, [ebp+var_430]
mov	[esp], ecx	
call	_silc_free
mov	[esp], edi	
call	_silc_free
mov	eax, [ebp+data]
lea	edx, [eax+esi+2]
add	i, 2
mov	eax, [ebp+data_len]
sub	eax, i
cmp	eax, 1
jbe	loc_641D8DAC
mov	ecx, [ebp+data]
cmp	byte ptr [ecx+i], 0Dh
jnz	loc_641D8DAC
cmp	byte ptr [ecx+i+1], 0Ah
jnz	loc_641D8DAC
add	i, 2
xchg	ax, ax
			
lea	eax, [ebp+ret_context]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset aContentType 
mov	line, [ebp+mime]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	loc_641D9320
mov	ecx, [ebp+ret_context]
mov	[ebp+var_42C], ecx
test	ecx, ecx
jz	loc_641D9320
mov	dword ptr [esp+4], offset aMultipart 
mov	[esp], ecx	
call	_strstr
test	eax, eax
jz	loc_641D9320
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
test	eax, eax
jz	loc_641D92D0
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	edx, [eax+10h]
and	edx, 3
mov	[eax+10h], edx
mov	word ptr [eax+0Ch], 4
mov	word ptr [eax+0Eh], 8
mov	byte ptr [eax+10h], 1
mov	dword ptr [eax+8], 0
mov	dword ptr [eax+4], 0
mov	dword ptr [eax], 0
mov	edx, [ebp+mime]
mov	[edx+0Ch], eax
mov	dword ptr [esp+4], 2Fh 
mov	ecx, [ebp+var_42C]
mov	[esp], ecx	
call	_strchr
mov	esi, eax
test	eax, eax
jz	err
lea	edx, [eax+1]
mov	[ebp+var_430], edx
mov	dword ptr [esp+4], 22h 
mov	ecx, [ebp+var_42C]
mov	[esp], ecx	
call	_strchr
test	eax, eax
jz	short loc_641D9032
add	esi, 2
mov	[ebp+var_430], esi
mov	dword ptr [esp+4], 3Bh 
mov	eax, [ebp+var_42C]
mov	[esp], eax	
call	_strchr
test	eax, eax
jz	err
lea	edx, [ebp+b]
mov	[ebp+var_44C], edx
mov	ecx, 400h
xor	eax, eax
mov	edi, edx
rep stosb
mov	dword ptr [esp+4], 3Bh 
mov	ecx, [ebp+var_42C]
mov	[esp], ecx	
call	_strchr
sub	eax, [ebp+var_430]
cmp	len, 3FFh
ja	err
mov	[esp+8], len	
mov	len, [ebp+var_430]
mov	[esp+4], eax	
lea	edx, [ebp+b]
mov	[esp], edx	
call	_strncpy
mov	dword ptr [esp+4], 22h 
lea	ecx, [ebp+b]
mov	[esp], ecx	
call	_strchr
test	eax, eax
jz	short loc_641D90C7
mov	byte ptr [eax],	0
xor	esi, esi
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+var_44C]
mov	eax, esi
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
lea	edx, [ebp+b]
mov	[esp], edx	
call	_silc_memdup
mov	ecx, [ebp+mime]
mov	[ecx+14h], eax
mov	dword ptr [esp+4], 3Dh 
mov	eax, [ebp+var_42C]
mov	[esp], eax	
call	_strrchr
mov	edx, eax
test	eax, eax
jz	loc_641D92ED
mov	ecx, 0FFFFFFFFh
mov	edi, eax
mov	eax, esi
repne scasb
not	ecx
dec	ecx
cmp	ecx, 1
jbe	loc_641D92ED
mov	ecx, 400h
mov	edi, [ebp+var_44C]
rep stosb
inc	edx
mov	[esp], edx	
call	_strdup
mov	esi, eax
mov	dword ptr [esp+4], 22h 
mov	[esp], eax	
call	_strrchr
test	eax, eax
jz	loc_641D93A8
mov	byte ptr [eax],	0
lea	edi, [line+1]
mov	[esp+0Ch], edi
mov	dword ptr [esp+8], offset aS_0 
mov	dword ptr [esp+4], 3FFh	
lea	edx, [ebp+b]
mov	[esp], edx	
call	_silc_snprintf
mov	[esp], edi	
call	_strdup
mov	ecx, [ebp+mime]
mov	[ecx+10h], eax
mov	[esp], line	
call	_silc_free
cmp	[ebp+data_len],	i
ja	short loc_641D91AE
jmp	loc_641D92ED
align 4
			
inc	i
cmp	[ebp+data_len],	i
jbe	loc_641D92ED
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+var_44C]
xor	eax, eax
repne scasb
not	ecx
lea	edx, [ecx-1]
mov	eax, [ebp+data_len]
sub	eax, i
cmp	eax, edx
jb	short loc_641D91A4
mov	ecx, [ebp+data]
cmp	byte ptr [ecx+i], 2Dh
jnz	short loc_641D91A4
cmp	byte ptr [ecx+i+1], 2Dh
jnz	short loc_641D91A4
mov	line, ecx
add	esi, i
cmp	edx, edx
mov	edi, [ebp+var_44C]
mov	ecx, edx
repe cmpsb
jnz	short loc_641D91A4
add	i, edx
mov	[ebp+var_430], ebx
mov	eax, [ebp+data_len]
sub	eax, ebx
cmp	eax, 3
ja	loc_641D935C
cmp	eax, 1
jbe	short loc_641D921E
mov	ecx, [ebp+data]
mov	al, [ecx+ebx]
cmp	al, 0Dh
jz	loc_641D93F8
cmp	al, 2Dh
jz	loc_641D9395
			
mov	ecx, [ebp+var_430]
cmp	[ebp+data_len],	ecx
jbe	err
mov	eax, ecx
mov	ebx, ecx
mov	[ebp+var_42C], edx
mov	edx, [ebp+data_len]
jmp	short loc_641D9247
			
inc	k
mov	eax, k
cmp	data_len_0, k
jbe	err
mov	ecx, data_len_0
sub	ecx, eax
cmp	[ebp+var_42C], ecx
ja	short loc_641D923C
mov	ecx, [ebp+data]
cmp	byte ptr [ecx+eax], 2Dh
jnz	short loc_641D923C
cmp	byte ptr [ecx+eax+1], 2Dh
jnz	short loc_641D923C
mov	esi, ecx
add	esi, eax
mov	ecx, [ebp+var_42C]
cmp	ecx, ecx
mov	edi, [ebp+var_44C]
repe cmpsb
setnbe	cl
setb	byte ptr [ebp+var_434]
cmp	cl, byte ptr [ebp+var_434]
jnz	short loc_641D923C
cmp	[ebp+data_len],	eax
jbe	short err
sub	k, [ebp+var_430]
sub	ebx, 2
mov	[esp+8], ebx	
mov	eax, [ebp+data]
add	eax, [ebp+var_430]
mov	[esp+4], eax	
mov	dword ptr [esp], 0 
call	_silc_mime_decode
mov	edx, eax	
test	eax, eax
jz	short err
mov	ecx, [ebp+mime]
mov	p, [ecx+0Ch]	
call	_silc_dlist_add_0
add	ebx, [ebp+var_430]
jmp	loc_641D91A4
mov	eax, [ebp+mime]
mov	dword ptr [eax+0Ch], 0
xchg	ax, ax
			
mov	esi, [ebp+m]
test	esi, esi
jnz	short loc_641D92FB
mov	[ebp+mime], 0
			
mov	len, [ebp+mime]
add	esp, 45Ch
pop	k
pop	line
pop	edi
leave
retn
mov	len, [ebp+m]
mov	[esp], eax	
call	_silc_mime_free
mov	[ebp+mime], 0
mov	eax, [ebp+mime]
add	esp, 45Ch
pop	k
pop	esi
pop	edi
leave
retn
align 10h
			
cmp	[ebp+data_len],	i
jbe	short loc_641D9342
mov	eax, [ebp+data_len]
sub	eax, ebx
mov	[esp+8], eax	
add	ebx, [ebp+data]
mov	[esp+4], ebx	
mov	ecx, [ebp+mime]
mov	[esp], ecx	
call	_silc_mime_add_data
jmp	short loc_641D92ED
mov	edx, [ebp+mime]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_count
test	eax, eax
jnz	short loc_641D9355
xor	ebx, ebx
cmp	[ebp+data_len],	ebx
jz	short loc_641D92ED
jmp	short loc_641D9325
mov	ecx, [ebp+data]
mov	al, [ecx+ebx]
cmp	al, 0Dh
jnz	loc_641D9216
cmp	byte ptr [ecx+ebx+1], 0Ah
jnz	loc_641D921E
cmp	byte ptr [ecx+ebx+2], 0Dh
jz	loc_641D9408
			
add	ebx, 2
mov	[ebp+var_430], ebx
jmp	loc_641D921E
xor	ebx, ebx
jmp	loc_641D8F3C
mov	eax, [ebp+data]
cmp	byte ptr [eax+ebx+1], 2Dh
jnz	loc_641D921E
jmp	loc_641D92ED
mov	[esp+0Ch], line
mov	dword ptr [esp+8], offset aS_0 
mov	dword ptr [esp+4], 3FFh	
lea	eax, [ebp+b]
mov	[esp], eax	
call	_silc_snprintf
mov	[esp], line	
call	_strdup
mov	edx, [ebp+mime]
mov	[edx+10h], eax
jmp	loc_641D9190
call	_silc_mime_alloc
mov	[ebp+mime], eax
test	eax, eax
jz	loc_641D92ED
mov	[ebp+m], eax
jmp	loc_641D8D98
cmp	byte ptr [ecx+ebx+1], 0Ah
jnz	loc_641D921E
jmp	loc_641D9380
cmp	byte ptr [ecx+ebx+3], 0Ah
jnz	loc_641D9380
add	[ebp+var_430], 4
jmp	loc_641D921E
align 10h
public _silc_mime_assemble
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	edi, [ebp+assembler]
test	edi, edi
jz	loc_641D965C
mov	esi, [ebp+partial]
test	esi, esi
jz	loc_641D965C
lea	eax, [ebp+ret_context]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset aContentType 
mov	edx, [ebp+partial]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	loc_641D965C
mov	ebx, [ebp+ret_context]
test	type, type
jz	loc_641D965C
mov	dword ptr [esp+4], offset aId 
mov	[esp], type	
call	_strstr
mov	edx, eax
test	eax, eax
jz	loc_641D965C
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
cmp	ecx, 4
jbe	loc_641D965C
lea	eax, [edx+3]
cmp	byte ptr [edx+3], 22h
jz	loc_641D9688
mov	[esp], tmp	
call	_strdup
mov	[ebp+id], eax
mov	dword ptr [esp+4], 3Bh 
mov	[esp], eax	
call	_strchr
test	eax, eax
jz	short loc_641D94D6
mov	byte ptr [eax],	0
mov	dword ptr [esp+4], 22h 
mov	ecx, [ebp+id]
mov	[esp], ecx	
call	_strrchr
test	eax, eax
jz	short loc_641D94F0
mov	byte ptr [eax],	0
mov	dword ptr [esp+4], offset aNumber 
mov	[esp], type	
call	_strstr
test	eax, eax
jz	loc_641D9663
mov	dword ptr [esp+4], 3Dh 
mov	[esp], eax	
call	_strchr
mov	edx, eax
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
cmp	ecx, 1
jbe	loc_641D9663
lea	esi, [edx+1]
mov	dword ptr [esp+4], 3Bh 
mov	[esp], tmp	
call	_strchr
test	eax, eax
jz	loc_641D98E0
mov	[esp], tmp	
call	_strdup
mov	tmp, eax
mov	dword ptr [esp+4], 3Bh 
mov	[esp], eax	
call	_strchr
mov	byte ptr [eax],	0
mov	[esp], esi	
call	_atoi
mov	[ebp+number], eax
mov	[esp], esi	
call	_silc_free
lea	eax, [ebp+f]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+id]
mov	[esp+4], eax	
mov	edx, [ebp+assembler]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	loc_641D9690
mov	dword ptr [esp+4], offset aTotal 
mov	[esp], type	
call	_strstr
test	eax, eax
jz	loc_641D98F0
mov	dword ptr [esp+4], 3Dh 
mov	[esp], eax	
call	_strchr
mov	edx, eax
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
cmp	ecx, 1
jbe	short loc_641D9663
lea	type, [edx+1]
mov	dword ptr [esp+4], 3Bh 
mov	[esp], tmp	
call	_strchr
test	eax, eax
jz	loc_641D98FC
mov	[esp], tmp	
call	_strdup
mov	tmp, eax
mov	dword ptr [esp+4], 3Bh 
mov	[esp], eax	
call	_strchr
mov	byte ptr [eax],	0
mov	[esp], ebx	
call	_atoi
mov	esi, eax
mov	[esp], ebx	
call	_silc_free
			
cmp	[ebp+number], total
jz	loc_641D9718
mov	ecx, [ebp+partial]
mov	[esp+8], ecx	
mov	eax, [ebp+number]
mov	[esp+4], eax	
mov	eax, [ebp+f]
mov	[esp], eax	
call	_silc_hash_table_add
xor	total, total
mov	eax, complete
add	esp, 6Ch
pop	compbuf
pop	complete
pop	edi
leave
retn
			
mov	[ebp+id], 0
			
mov	eax, [ebp+id]
mov	[esp], eax	
call	_silc_free
			
mov	ecx, [ebp+partial]
mov	[esp], ecx	
call	_silc_mime_free
xor	data, data
mov	eax, complete
add	esp, 6Ch
pop	compbuf
pop	complete
pop	edi
leave
retn
align 4
lea	tmp, [edx+4]
jmp	loc_641D94B4
mov	dword ptr [esp+1Ch], 1
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], offset _silc_mime_assemble_dest 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_uint 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[ebp+f], eax
test	f_0, f_0
jz	short loc_641D9663
mov	ecx, [ebp+partial]
mov	[esp+8], ecx	
mov	edx, [ebp+number]
mov	[esp+4], edx	
mov	[esp], f_0	
call	_silc_hash_table_add
mov	eax, [ebp+f]
mov	[esp+8], eax	
mov	ecx, [ebp+id]
mov	[esp+4], ecx	
mov	edx, [ebp+assembler]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_hash_table_add
xor	tmp, tmp
mov	eax, complete
add	esp, 6Ch
pop	type
pop	complete
pop	edi
leave
retn
mov	edx, [ebp+partial]
mov	[esp+8], edx	
mov	ecx, [ebp+number]
mov	[esp+4], ecx	
mov	eax, [ebp+f]
mov	[esp], eax	
call	_silc_hash_table_add
mov	eax, [ebp+f]
mov	[esp], eax	
call	_silc_hash_table_count
cmp	eax, [ebp+number]
jb	loc_641D9679
mov	tmp, [ebp+number]
test	ebx, ebx
jle	loc_641D990B
xor	ebx, ebx
mov	[ebp+i], 1
jmp	loc_641D9805
align 10h
mov	ecx, [eax+8]
mov	[ebp+items], ecx
mov	data, [eax+4]
test	data, data
jz	err
test	compbuf, compbuf
jz	loc_641D9860
mov	eax, [compbuf+0Ch]
mov	edx, [compbuf]
mov	[ebp+ptr], edx
mov	edx, eax
sub	edx, [ebp+ptr]
mov	ecx, [ebp+items]
lea	edi, [edx+ecx]
cmp	edi, edx
jbe	loc_641D9960
mov	eax, [compbuf+4]
mov	[ebp+var_4C], eax
mov	edx, [compbuf+8]
mov	[ebp+var_3C], edx
mov	[esp+4], edi	
mov	ecx, [ebp+ptr]
mov	[esp], ecx	
call	_silc_realloc
test	eax, eax
jz	loc_641D9663
mov	[compbuf], eax
mov	ecx, [ebp+var_4C]
sub	ecx, [ebp+ptr]
lea	edx, [eax+ecx]
mov	[compbuf+4], edx
mov	ecx, [ebp+var_3C]
sub	ecx, [ebp+var_4C]
add	edx, ecx
mov	[compbuf+8], edx
add	eax, edi
mov	[compbuf+0Ch], eax
sub	eax, edx
cmp	[ebp+items], eax
ja	short loc_641D97F6
mov	edi, edx
mov	ecx, [ebp+items]
rep movsb
mov	data_len, [compbuf+8]
mov	eax, [compbuf+0Ch]
sub	eax, ecx
cmp	[ebp+items], eax
ja	short loc_641D97F6
add	ecx, [ebp+items]
mov	[compbuf+8], ecx
			
inc	[ebp+i]
mov	eax, [ebp+i]
cmp	[ebp+number], eax
jl	loc_641D9910
lea	eax, [ebp+p]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	edx, [ebp+i]
mov	[esp+4], edx	
mov	eax, [ebp+f]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short err
mov	eax, [ebp+p]
test	eax, eax
jnz	loc_641D9760
			
mov	edx, [ebp+id]
mov	[esp], edx	
call	_silc_free
test	compbuf, compbuf
jz	loc_641D966E
mov	eax, [compbuf]
mov	[esp], eax	
call	_silc_free
mov	[esp], compbuf	
call	_silc_free
jmp	loc_641D966E
align 10h
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	compbuf, eax
test	eax, eax
jz	loc_641D9663
mov	ecx, [ebp+items]
test	ecx, ecx
jz	loc_641D9968
mov	dword ptr [esp+4], 1 
mov	compbuf, [ebp+items]
mov	[esp], eax	
call	_silc_calloc
mov	[compbuf], eax
test	eax, eax
jz	loc_641D9663
mov	[compbuf+4], eax
mov	[compbuf+8], eax
mov	ecx, [ebp+items]
lea	edx, [eax+ecx]
mov	[compbuf+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	[ebp+items], ecx
ja	short loc_641D98C3
mov	[compbuf+8], edx
mov	eax, edx
mov	edx, [compbuf+4]
sub	eax, edx
cmp	[ebp+items], eax
ja	loc_641D97F6
mov	edi, edx
mov	ecx, [ebp+items]
rep movsb
jmp	loc_641D97F6
align 10h
mov	[esp], tmp	
call	_atoi
mov	[ebp+number], eax
jmp	loc_641D957C
mov	tmp, 0FFFFFFFFh
jmp	loc_641D962E
align 4
mov	[esp], tmp	
call	_atoi
mov	esi, eax
jmp	loc_641D962E
xor	ebx, ebx
lea	data, [data+0]
mov	edx, [compbuf]
mov	eax, [compbuf+0Ch]
sub	eax, edx
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	dword ptr [esp], 0 
call	_silc_mime_decode
mov	data, eax
test	eax, eax
jz	err
mov	edx, [ebp+id]
mov	[esp+4], edx	
mov	ecx, [ebp+assembler]
mov	complete, [ecx]
mov	[esp], eax	
call	_silc_hash_table_del
mov	eax, [ebp+id]
mov	[esp], eax	
call	_silc_free
mov	eax, compbuf	
call	_silc_buffer_free_1
jmp	loc_641D9652
mov	edx, [compbuf+8]
jmp	loc_641D97D5
mov	edx, [compbuf+8]
jmp	loc_641D98BE
public _silc_mime_set_multipart
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 43Ch
mov	ebx, [ebp+mime]
mov	edx, [ebp+boundary]
test	ebx, ebx
jz	loc_641D9A22
mov	ecx, [ebp+type]
test	ecx, ecx
jz	loc_641D9A22
test	boundary_0, boundary_0
jz	loc_641D9A22
lea	esi, [ebp+tmp]
mov	ecx, 400h
xor	eax, eax
mov	edi, esi
rep stosb
mov	[esp+10h], boundary_0
mov	eax, [ebp+type]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aMultipartSBoun 
mov	dword ptr [esp+4], 3FFh	
mov	[esp], esi	
mov	[ebp+var_41C], boundary_0
call	_silc_snprintf
mov	[esp], esi	
call	_strdup
mov	esi, eax
mov	dword ptr [esp], offset	aContentType 
call	_strdup
mov	[esp+8], esi	
mov	[esp+4], eax	
mov	eax, [mime_0]
mov	[esp], eax	
call	_silc_hash_table_add
mov	eax, [mime_0+10h]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+var_41C]
mov	[esp], edx	
call	_strdup
mov	[mime_0+10h], eax
mov	eax, [mime_0+0Ch]
test	eax, eax
jz	short loc_641D9A30
			
add	esp, 43Ch
pop	mime_0
pop	esi
pop	edi
leave
retn
align 10h
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641D9A7B
mov	dword ptr [eax+18h], 0
mov	dword ptr [eax+14h], 0
mov	edx, [eax+10h]
and	edx, 3
mov	[eax+10h], edx
mov	word ptr [eax+0Ch], 4
mov	word ptr [eax+0Eh], 8
mov	byte ptr [eax+10h], 1
mov	dword ptr [eax+8], 0
mov	dword ptr [eax+4], 0
mov	dword ptr [eax], 0
mov	[mime_0+0Ch], eax
jmp	short loc_641D9A22
public _silc_mime_encode_partial
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 12Ch
lea	eax, [ebp+buf_len]
mov	[esp+4], eax	
mov	eax, [ebp+mime]
mov	[esp], eax	
call	_silc_mime_encode
mov	[ebp+ptr], eax
test	eax, eax
jz	loc_641D9D84
mov	dword ptr [esp], 1Ch 
call	_silc_malloc
mov	ebx, eax
test	eax, eax
jz	short loc_641D9AF9
mov	dword ptr [list+18h], 0
mov	dword ptr [list+14h], 0
mov	list, [list+10h]
and	eax, 3
mov	[list+10h], eax
mov	word ptr [list+0Ch], 4
mov	word ptr [list+0Eh], 8
mov	byte ptr [list+10h], 1
mov	dword ptr [list+8], 0
mov	dword ptr [list+4], 0
mov	dword ptr [list], 0
mov	esi, [ebp+buf_len]
cmp	[ebp+max_size],	esi
jb	loc_641D9BEC
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, eax
test	eax, eax
jz	loc_641D9D84
test	esi, esi
jz	loc_641DA151
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
mov	[ebp+context], buffer
call	_silc_calloc
mov	edx, [ebp+context]
mov	[edx], eax
test	eax, eax
jz	loc_641D9D84
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	ecx, [eax+esi]
mov	[buffer+0Ch], ecx
mov	edi, ecx
sub	edi, eax
cmp	esi, edi
ja	short loc_641D9B6A
mov	[buffer+8], ecx
mov	eax, ecx
mov	ecx, [ebp+buf_len]
mov	esi, [buffer+4]
mov	[ebp+var_EC], esi
sub	eax, esi
cmp	ecx, eax
ja	short loc_641D9B8A
mov	edi, [ebp+var_EC]
mov	esi, [ebp+ptr]
rep movsb
mov	dword ptr [esp], 0Ch 
mov	[ebp+context], buffer
call	_silc_malloc
test	eax, eax
mov	edx, [ebp+context]
jz	short loc_641D9BD4
mov	[eax], edx
mov	buf, [list]
test	esi, esi
jz	loc_641DA120
movzx	buffer,	word ptr [list+0Ch]
mov	ecx, [list+4]
mov	[ecx+edx], eax
test	byte ptr [list+10h], 1
jnz	loc_641D9D90
mov	[list+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [list+10h], 4
			
mov	tmp, [ebp+ptr]
mov	[esp], esi	
call	_silc_free
mov	eax, list
lea	esp, [ebp-0Ch]
pop	list
pop	esi
pop	edi
leave
retn
lea	eax, [ebp+id]
mov	[ebp+var_10C], eax
mov	ecx, 40h
mov	edi, eax
xor	eax, eax
rep stosb
lea	edx, [ebp+type]
mov	[ebp+var_110], edx
mov	cl, 80h
mov	edi, edx
rep stosb
mov	dword ptr [esp+4], 7Fh 
mov	[esp], edx	
call	_gethostname@8
sub	esp, 8
mov	dword ptr [esp], 0 
call	_time
mov	esi, [ebp+buf_len]
add	esi, eax
call	_rand
xor	eax, esi
mov	[esp], eax	
call	_srand
mov	edi, [ebp+buf_len]
mov	dword ptr [esp], 0 
call	_time
mov	esi, eax
call	_rand
lea	edx, [ebp+type]
mov	[esp+18h], edx
mov	[esp+14h], edi
mov	[esp+10h], esi
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aXXXS	
mov	dword ptr [esp+4], 3Fh 
lea	ecx, [ebp+id]
mov	[esp], ecx	
call	_silc_snprintf
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	loc_641D9D84
mov	dword ptr [esp+1Ch], 1 
mov	[esp+18h], eax	
mov	dword ptr [esp+14h], offset _silc_mime_field_dest 
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], offset _silc_hash_string_compare 
mov	[esp+8], eax	
mov	dword ptr [esp+4], offset _silc_hash_string 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[esi], eax
test	eax, eax
jz	loc_641DA137
mov	dword ptr [esp+8], offset value	
mov	dword ptr [esp+4], offset field	
mov	[esp], esi	
call	_silc_mime_add_field
mov	ecx, 80h
mov	edi, [ebp+var_110]
xor	eax, eax
rep stosb
lea	edx, [ebp+id]
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset aMessageParti_0 
mov	dword ptr [esp+4], 7Fh 
lea	ecx, [ebp+type]
mov	[esp], ecx	
call	_silc_snprintf
lea	eax, [ebp+type]
mov	[esp+8], eax	
mov	dword ptr [esp+4], offset aContentType 
mov	[esp], esi	
call	_silc_mime_add_field
mov	edx, [ebp+max_size]
mov	[esp+8], edx	
mov	ecx, [ebp+ptr]
mov	[esp+4], ecx	
mov	[esp], esi	
call	_silc_mime_add_data
lea	eax, [ebp+tmp_len]
mov	[esp+4], eax	
mov	[esp], esi	
call	_silc_mime_encode
mov	[ebp+var_F4], eax
test	eax, eax
jnz	short loc_641D9DA0
			
xor	num, num
mov	eax, list
lea	esp, [ebp-0Ch]
pop	list
pop	partial
pop	edi
leave
retn
movzx	ecx, word ptr [list+0Eh]
mov	esi, [list+4]
mov	[eax+ecx], esi
jmp	loc_641D9BC6
align 10h
mov	[esp], esi	
call	_silc_mime_free
mov	esi, [ebp+tmp_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, eax
test	eax, eax
jz	short loc_641D9D84
test	esi, esi
jz	loc_641DA161
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
mov	[ebp+context], buffer
call	_silc_calloc
mov	edx, [ebp+context] 
mov	[edx], eax
test	eax, eax
jz	short loc_641D9D84
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	ecx, [eax+esi]
mov	[buffer+0Ch], ecx
mov	edi, ecx
sub	edi, eax
cmp	esi, edi
ja	short loc_641D9E08
mov	[buffer+8], ecx
mov	eax, ecx
mov	ecx, [ebp+tmp_len]
mov	esi, [buffer+4]
mov	[ebp+var_F8], esi
sub	eax, esi
cmp	ecx, eax
ja	short loc_641D9E28
mov	edi, [ebp+var_F8]
mov	esi, [ebp+var_F4]
rep movsb
mov	eax, list	
call	_silc_dlist_add_0
mov	tmp, [ebp+var_F4]
mov	[esp], esi	
call	_silc_free
mov	eax, [ebp+buf_len]
sub	eax, [ebp+max_size]
mov	[ebp+len], buf_len_0
jz	loc_641D9BD4
mov	buf_len_0, [ebp+max_size]
mov	[ebp+off], eax
mov	eax, 2
mov	[ebp+var_F4], list
mov	list, num
jmp	loc_641DA00F
align 4
lea	edx, [num+1]
mov	[ebp+var_104], edx
mov	[esp+10h], num
lea	ecx, [ebp+id]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], offset aMessageParti_2 
mov	dword ptr [esp+4], 7Fh 
lea	num, [ebp+type]
mov	[esp], ebx	
call	_silc_snprintf
mov	eax, [ebp+max_size]
mov	[esp+8], eax	
mov	eax, [ebp+ptr]
add	eax, [ebp+off]
mov	[esp+4], eax	
mov	[esp], partial	
call	_silc_mime_add_data
mov	edx, [ebp+max_size]
add	[ebp+off], edx
sub	[ebp+len], edx
lea	ecx, [ebp+type]
mov	[esp], ecx	
call	_strdup
mov	num, eax
mov	dword ptr [esp], offset	aContentType 
call	_strdup
mov	[esp+8], ebx	
mov	[esp+4], eax	
mov	eax, [partial]
mov	[esp], eax	
call	_silc_hash_table_add
lea	ebx, [ebp+tmp_len]
mov	[esp+4], ebx	
mov	[esp], partial	
call	_silc_mime_encode
mov	[ebp+var_F8], eax
test	eax, eax
jz	loc_641D9D84
mov	[esp], partial	
call	_silc_mime_free
mov	partial, [ebp+tmp_len]
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641D9D84
test	esi, esi
jz	loc_641DA159
mov	dword ptr [esp+4], 1 
mov	[esp], esi	
call	_silc_calloc
mov	[buffer], eax
test	eax, eax
jz	loc_641D9D84
mov	[buffer+4], eax
mov	[buffer+8], eax
lea	edx, [eax+esi]
mov	[buffer+0Ch], edx
mov	ecx, edx
sub	ecx, eax
cmp	esi, ecx
ja	short loc_641D9F7B
mov	[buffer+8], edx
mov	eax, edx
mov	ecx, [ebp+tmp_len]
mov	edx, [buffer+4]
sub	eax, edx
cmp	ecx, eax
ja	short loc_641D9F91
mov	edi, edx
mov	esi, [ebp+var_F8]
rep movsb
mov	dword ptr [esp], 0Ch 
call	_silc_malloc
test	eax, eax
jz	short loc_641D9FED
mov	[eax], buffer
mov	tmp, [ebp+var_F4]
mov	edx, [esi]
test	edx, edx
jz	loc_641DA12C
mov	ecx, [ebp+var_F4]
movzx	edx, word ptr [ecx+0Ch]
mov	ecx, [ecx+4]
mov	[ecx+edx], eax
mov	esi, [ebp+var_F4]
test	byte ptr [esi+10h], 1
jz	short loc_641D9FD9
movzx	ecx, word ptr [esi+0Eh]
mov	buffer,	[esi+4]
mov	[eax+ecx], ebx
mov	ecx, [ebp+var_F4]
mov	[ecx+4], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [ecx+10h], 4
mov	buffer,	[ebp+var_F8]
mov	[esp], ebx	
call	_silc_free
mov	edi, [ebp+len]
test	edi, edi
jz	loc_641DA146
mov	ebx, [ebp+var_104]
mov	dword ptr [esp+4], 18h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	tmp, eax
test	eax, eax
jz	loc_641D9D84
mov	dword ptr [esp+1Ch], 1 
mov	[esp+18h], partial 
mov	dword ptr [esp+14h], offset _silc_mime_field_dest 
mov	[esp+10h], partial 
mov	dword ptr [esp+0Ch], offset _silc_hash_string_compare 
mov	[esp+8], partial 
mov	dword ptr [esp+4], offset _silc_hash_string 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[partial], eax
test	eax, eax
jz	loc_641DA137
mov	edi, [ebp+var_110]
mov	ecx, 80h
xor	eax, eax
rep stosb
mov	dword ptr [esp], offset	value 
call	_strdup
mov	edi, eax
mov	dword ptr [esp], offset	field 
call	_strdup
mov	[esp+8], edi	
mov	[esp+4], eax	
mov	eax, [partial]
mov	[esp], eax	
call	_silc_hash_table_add
mov	edx, [ebp+len]
cmp	[ebp+max_size],	edx
jb	loc_641D9E6C
mov	[esp+14h], num
mov	[esp+10h], num
lea	ecx, [ebp+id]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], offset aMessageParti_1 
mov	dword ptr [esp+4], 7Fh 
lea	eax, [ebp+type]
mov	[esp], eax	
call	_silc_snprintf
mov	edx, [ebp+len]
mov	[esp+8], edx	
mov	eax, [ebp+ptr]
add	eax, [ebp+off]
mov	[esp+4], eax	
mov	[esp], partial	
call	_silc_mime_add_data
mov	[ebp+var_104], num
mov	[ebp+len], 0
jmp	loc_641D9ECC
align 10h
mov	[list],	eax
movzx	buffer,	word ptr [list+0Ch]
jmp	loc_641D9BBC
align 4
mov	[esi], eax
movzx	edx, word ptr [esi+0Ch]
jmp	loc_641D9FC3
			
mov	[esp], partial
call	_silc_mime_free
xor	num, num
jmp	loc_641D9D86
mov	ebx, [ebp+var_F4]
jmp	loc_641D9BD4
mov	ecx, [buffer+8]
jmp	loc_641D9B65
mov	edx, [buffer+8]
jmp	loc_641D9F76
mov	ecx, [buffer+8]
jmp	loc_641D9E03
align 4
public _silc_net_get_error_string
push	ebp
mov	ebp, esp
mov	eax, [ebp+error]
cmp	eax, 7
ja	short loc_641DA180
mov	error_0, ds:_silc_net_error[error_0*4]
leave
retn
mov	error_0, offset	byte_642641E0
leave
retn
align 4
public _silc_net_is_ip4
			
push	ebp
mov	ebp, esp
mov	edx, [ebp+addr]
mov	al, [edx]
test	al, al
jz	short locret_641DA1BC
xor	count, count
jmp	short loc_641DA1AA
movsx	eax, al
sub	eax, 30h
cmp	eax, 9
ja	short loc_641DA1C0
inc	addr_0
mov	al, [addr_0]
test	al, al
jz	short loc_641DA1B6
			
cmp	al, 2Eh
jnz	short loc_641DA198
inc	count
inc	addr_0
mov	al, [addr_0]
test	al, al
jnz	short loc_641DA1AA
cmp	count, 3
setz	al
leave
retn
align 10h
xor	eax, eax
leave
retn
public _silc_net_get_local_port
push	ebp
mov	ebp, esp
push	edi
sub	esp, 34h
lea	edx, [ebp+local]
mov	ecx, 10h
xor	eax, eax
mov	edi, edx
rep stosb
mov	[ebp+len], 10h
lea	eax, [ebp+len]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_getsockname@12
sub	esp, 0Ch
test	eax, eax
js	short loc_641DA210
movzx	eax, [ebp+local.sin_port]
mov	[esp], eax	
call	_ntohs@4
push	edx
mov	edi, [ebp+var_4]
leave
retn
align 10h
xor	eax, eax
mov	edi, [ebp+var_4]
leave
retn
align 4
public _silc_net_get_remote_port
push	ebp
mov	ebp, esp
push	edi
sub	esp, 34h
lea	edx, [ebp+remote]
mov	ecx, 10h
xor	eax, eax
mov	edi, edx
rep stosb
mov	[ebp+len], 10h
lea	eax, [ebp+len]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_getpeername@12
sub	esp, 0Ch
test	eax, eax
js	short loc_641DA264
movzx	eax, [ebp+remote.sin_port]
mov	[esp], eax	
call	_ntohs@4
push	ecx
mov	edi, [ebp+var_4]
leave
retn
align 4
xor	eax, eax
mov	edi, [ebp+var_4]
leave
retn
align 4
public _silc_net_gethostbyaddr_async
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ecx, [ebp+addr]
mov	esi, [ebp+schedule]
mov	edx, [ebp+completion]
mov	edi, [ebp+context]
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
mov	[ebp+var_20], edx
mov	[ebp+var_1C], ecx
call	_silc_calloc
mov	ebx, eax
mov	edx, [ebp+var_20]
mov	[eax], edx
mov	[eax+4], edi
mov	[eax+0Ch], esi
mov	ecx, [ebp+var_1C]
mov	[esp], ecx	
call	_strdup
mov	[ebx+10h], eax
mov	[ebp+completion], 0
mov	[ebp+schedule],	ebx
mov	[ebp+addr], offset _silc_net_gethostbyaddr_thread
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	_silc_thread_create
align 4
public _silc_net_gethostbyname_async
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	eax, [ebp+name]
mov	[ebp+var_1C], eax
mov	esi, [ebp+prefer_ipv6]
mov	ecx, [ebp+schedule]
mov	edx, [ebp+completion]
mov	edi, [ebp+context]
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
mov	[ebp+var_24], edx
mov	[ebp+var_20], ecx
call	_silc_calloc
mov	ebx, eax
mov	edx, [ebp+var_24]
mov	[eax], edx
mov	[eax+4], edi
mov	eax, esi
mov	[ebx+8], al
mov	ecx, [ebp+var_20]
mov	[ebx+0Ch], ecx
mov	eax, [ebp+var_1C]
mov	[esp], eax	
call	_strdup
mov	[ebx+10h], eax
mov	[ebp+schedule],	0
mov	[ebp+prefer_ipv6], ebx
mov	[ebp+name], offset _silc_net_gethostbyname_thread
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
jmp	_silc_thread_create
align 4
public _silc_net_gethostbyaddr
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+name]
mov	dword ptr [esp+8], 4 
lea	ebx, [ebp+a]
mov	[esp+4], ebx	
mov	eax, [ebp+addr]
mov	[esp], eax	
call	_silc_net_addr2bin
test	al, al
jnz	short loc_641DA380
			
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ebx
pop	name_0
pop	edi
leave
retn
mov	dword ptr [esp+8], 2
mov	dword ptr [esp+4], 4 
mov	[esp], ebx	
call	_gethostbyaddr@12
sub	esp, 0Ch
mov	edx, eax
test	eax, eax
jz	short loc_641DA376
mov	edi, [hp]
mov	ebx, 0FFFFFFFFh
xor	hp, hp
mov	ecx, ebx
repne scasb
not	ecx
dec	ecx
cmp	ecx, [ebp+name_len]
ja	short loc_641DA376
mov	edi, name_0
mov	ecx, [ebp+name_len]
rep stosb
mov	hp, [hp]
mov	name_len_0, ebx
mov	name_0,	edx
repne scasb
mov	ebx, ecx
not	ebx
dec	ebx
mov	[esp+8], ebx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_strncpy
mov	al, 1
lea	esp, [ebp-0Ch]
pop	ebx
pop	name_0
pop	edi
leave
retn
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 12Ch
mov	ebx, [ebp+context]
mov	esi, [ebx+0Ch]
mov	dword ptr [esp+8], 100h	
lea	edi, [ebp+tmp]
mov	[esp+4], edi	
mov	eax, [ebx+10h]
mov	[esp], eax	
call	_silc_net_gethostbyaddr
test	al, al
jz	short loc_641DA422
mov	[esp], edi	
call	_strdup
mov	[context_0+14h], eax
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 1 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_net_resolve_completion 
mov	dword ptr [esp+4], 0 
mov	[esp], schedule	
call	_silc_schedule_task_add
mov	[esp], schedule	
call	_silc_schedule_wakeup
xor	eax, eax
add	esp, 12Ch
pop	context_0
pop	schedule
pop	edi
leave
retn
align 4
public _silc_net_gethostbyname
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	edx, [ebp+name]
mov	esi, [ebp+address]
mov	al, [edx]
test	al, al
jz	short loc_641DA4AB
mov	ecx, name_0
xor	ebx, ebx
jmp	short loc_641DA49A
align 4
movsx	eax, al
sub	eax, 30h
cmp	eax, 9
ja	short loc_641DA4AB
inc	name_0
mov	al, [name_0]
test	al, al
jz	short loc_641DA4A6
			
cmp	al, 2Eh
jnz	short loc_641DA488
inc	ebx
inc	name_0
mov	al, [name_0]
test	al, al
jnz	short loc_641DA49A
cmp	ebx, 3
jz	short loc_641DA4F0
			
mov	[esp], name_0
call	_gethostbyname@4
push	edi
test	eax, eax
jz	short loc_641DA4E3
mov	hp, [hp+0Ch]
mov	eax, [eax]
mov	eax, [eax]
mov	[esp], ip_0	
call	_inet_ntoa@4
push	ebx
mov	edx, eax
test	eax, eax
jz	short loc_641DA4E3
mov	ebx, 0FFFFFFFFh
xor	tmp, tmp
mov	ecx, ebx
mov	edi, tmp
repne scasb
not	ecx
dec	ecx
cmp	[ebp+address_len], ecx
jnb	short loc_641DA524
			
xor	tmp, tmp
lea	esp, [ebp-0Ch]
pop	ebx
pop	address_0
pop	edi
leave
retn
align 10h
mov	edi, address_0
mov	name_0,	[ebp+address_len]
rep stosb
mov	address_len_0, 0FFFFFFFFh
mov	address_0, edx
repne scasb
not	ecx
dec	ecx
cmp	[ebp+address_len], ecx
jb	short loc_641DA4E3
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	[esp], esi	
call	_strncpy
mov	al, 1
lea	esp, [ebp-0Ch]
pop	ebx
pop	address_0
pop	edi
leave
retn
align 4
mov	edi, address_0
mov	ecx, [ebp+address_len]
rep stosb
mov	address_len_0, ebx
mov	address_0, edx
repne scasb
not	ecx
dec	ecx
jmp	short loc_641DA508
align 4
public _silc_net_localip
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 150h
mov	dword ptr [esp+4], 100h	
lea	ebx, [ebp+hostname]
mov	[esp], ebx	
call	_gethostname@8
sub	esp, 8
test	eax, eax
jz	short loc_641DA56C
xor	eax, eax
lea	esp, [ebp-8]
pop	ebx
pop	esi
leave
retn
align 4
mov	dword ptr [esp+0Ch], 40h 
lea	esi, [ebp+ip_addr]
mov	[esp+8], esi	
mov	dword ptr [esp+4], 1 
mov	[esp], ebx	
call	_silc_net_gethostbyname
test	al, al
jz	short loc_641DA560
mov	[esp], esi	
call	_strdup
jmp	short loc_641DA562
align 4
public _silc_net_localhost
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 150h
mov	dword ptr [esp+4], 100h	
lea	ebx, [ebp+hostname]
mov	[esp], ebx	
call	_gethostname@8
sub	esp, 8
test	eax, eax
jz	short loc_641DA5D0
xor	eax, eax
lea	esp, [ebp-8]
pop	ebx
pop	esi
leave
retn
align 10h
mov	dword ptr [esp+0Ch], 40h 
lea	esi, [ebp+ip_addr]
mov	[esp+8], esi	
mov	dword ptr [esp+4], 1 
mov	[esp], ebx	
call	_silc_net_gethostbyname
test	al, al
jz	short loc_641DA607
mov	dword ptr [esp+8], 100h	
mov	[esp+4], ebx	
mov	[esp], esi	
call	_silc_net_gethostbyaddr
mov	[esp], ebx	
call	_strdup
lea	esp, [ebp-8]
pop	ebx
pop	esi
leave
retn
align 4
public _silc_net_check_local_by_sock
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 43Ch
mov	ebx, [ebp+hostname]
test	ebx, ebx
jz	short loc_641DA631
mov	dword ptr [hostname_0],	0
mov	eax, [ebp+ip_0]
mov	dword ptr [eax], 0
lea	edx, [ebp+local]
mov	ecx, 10h
mov	edi, edx
xor	eax, eax
rep stosb
mov	[ebp+len], 10h
lea	eax, [ebp+len]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_getsockname@12
sub	esp, 0Ch
test	eax, eax
js	short loc_641DA6C3
mov	rval, dword ptr	[ebp+local.sin_addr.S_un]
mov	[esp], eax	
call	_inet_ntoa@4
push	edx
mov	edx, eax
test	eax, eax
jz	short loc_641DA6C3
mov	ecx, 0FFFFFFFFh
mov	edi, host_ip
xor	host_ip, host_ip
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], edx	
call	_silc_memdup
mov	edx, [ebp+ip_0]
mov	[edx], eax
test	eax, eax
jz	short loc_641DA6C3
test	hostname_0, hostname_0
jz	short loc_641DA724
mov	dword ptr [esp+8], 400h	
lea	esi, [ebp+host]
mov	[esp+4], esi	
mov	[esp], eax	
call	_silc_net_gethostbyaddr
test	al, al
jnz	short loc_641DA6D0
			
xor	host_ip, host_ip
lea	esp, [ebp-0Ch]
pop	hostname_0
pop	esi
pop	edi
leave
retn
align 10h
mov	ecx, 0FFFFFFFFh
mov	edi, esi
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], esi	
call	_silc_memdup
mov	[hostname_0], eax
mov	dword ptr [esp+0Ch], 400h 
mov	[esp+8], esi	
mov	dword ptr [esp+4], 1 
mov	[esp], eax	
call	_silc_net_gethostbyname
test	al, al
jz	short loc_641DA6C3
mov	edx, [ebp+ip_0]
mov	eax, [edx]
mov	[esp+4], esi	
mov	[esp], eax	
call	_strcmp
test	eax, eax
setz	al
jmp	short loc_641DA6C5
mov	al, 1
lea	esp, [ebp-0Ch]
pop	hostname_0
pop	esi
pop	edi
leave
retn
align 10h
public _silc_net_listener_get_hostname
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+listener]
mov	dword ptr [esp+4], 4 
mov	eax, [esi+10h]
and	eax, 3FFFFFFFh
mov	[esp], eax	
call	_silc_calloc
mov	[ebp+hs], eax
test	eax, eax
jz	short loc_641DA7AC
test	dword ptr [listener_0+10h], 3FFFFFFFh
jz	short loc_641DA7B7
xor	edi, edi
xor	ebx, ebx
mov	dword ptr [esp+8], 0
lea	eax, [ebp+h]
mov	[esp+4], eax	
mov	eax, [listener_0+0Ch]
mov	eax, [eax+i*4]
mov	[esp], eax	
call	_silc_net_check_local_by_sock
test	al, al
jz	short loc_641DA793
mov	eax, [ebp+h]
mov	edx, [ebp+hs]
mov	[edx+k*4], eax
inc	k
inc	i
mov	eax, [listener_0+10h]
and	eax, 3FFFFFFFh
cmp	eax, i
jg	short loc_641DA768
mov	ecx, [ebp+hostname_count]
test	ecx, ecx
jz	short loc_641DA7AC
mov	eax, [ebp+hostname_count]
mov	[eax], k
			
mov	eax, [ebp+hs]
add	esp, 3Ch
pop	i
pop	listener_0
pop	k
leave
retn
xor	edi, edi
jmp	short loc_641DA7A0
align 4
public _silc_net_listener_get_ip
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+listener]
mov	dword ptr [esp+4], 4 
mov	eax, [esi+10h]
and	eax, 3FFFFFFFh
mov	[esp], eax	
call	_silc_calloc
mov	[ebp+ips], eax
test	eax, eax
jz	short loc_641DA838
test	dword ptr [listener_0+10h], 3FFFFFFFh
jz	short loc_641DA843
xor	edi, edi
xor	ebx, ebx
lea	eax, [ebp+ip_0]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	eax, [listener_0+0Ch]
mov	eax, [eax+i*4]
mov	[esp], eax	
call	_silc_net_check_local_by_sock
test	al, al
jz	short loc_641DA81F
mov	eax, [ebp+ip_0]
mov	edx, [ebp+ips]
mov	[edx+k*4], eax
inc	k
inc	i
mov	eax, [listener_0+10h]
and	eax, 3FFFFFFFh
cmp	eax, i
jg	short loc_641DA7F4
mov	i, [ebp+ip_count]
test	ebx, ebx
jz	short loc_641DA838
mov	eax, [ebp+ip_count]
mov	[eax], k
			
mov	eax, [ebp+ips]
add	esp, 3Ch
pop	ebx
pop	listener_0
pop	k
leave
retn
xor	edi, edi
jmp	short loc_641DA82C
align 4
public _silc_net_check_host_by_sock
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 43Ch
mov	ebx, [ebp+hostname]
test	ebx, ebx
jz	short loc_641DA861
mov	dword ptr [hostname_0],	0
mov	eax, [ebp+ip_0]
mov	dword ptr [eax], 0
lea	edx, [ebp+remote]
mov	ecx, 10h
mov	edi, edx
xor	eax, eax
rep stosb
mov	[ebp+len], 10h
lea	eax, [ebp+len]
mov	[esp+8], eax	
mov	[esp+4], edx	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_getpeername@12
sub	esp, 0Ch
test	eax, eax
js	short loc_641DA8F3
mov	rval, dword ptr	[ebp+remote.sin_addr.S_un]
mov	[esp], eax	
call	_inet_ntoa@4
push	esi
mov	edx, eax
test	eax, eax
jz	short loc_641DA8F3
mov	ecx, 0FFFFFFFFh
mov	edi, host_ip
xor	host_ip, host_ip
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], edx	
call	_silc_memdup
mov	edx, [ebp+ip_0]
mov	[edx], eax
test	eax, eax
jz	short loc_641DA8F3
test	hostname_0, hostname_0
jz	short loc_641DA954
mov	dword ptr [esp+8], 400h	
lea	esi, [ebp+host]
mov	[esp+4], esi	
mov	[esp], eax	
call	_silc_net_gethostbyaddr
test	al, al
jnz	short loc_641DA900
			
xor	host_ip, host_ip
lea	esp, [ebp-0Ch]
pop	hostname_0
pop	esi
pop	edi
leave
retn
align 10h
mov	ecx, 0FFFFFFFFh
mov	edi, esi
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], esi	
call	_silc_memdup
mov	[hostname_0], eax
mov	dword ptr [esp+0Ch], 400h 
mov	[esp+8], esi	
mov	dword ptr [esp+4], 1 
mov	[esp], eax	
call	_silc_net_gethostbyname
test	al, al
jz	short loc_641DA8F3
mov	edx, [ebp+ip_0]
mov	eax, [edx]
mov	[esp+4], esi	
mov	[esp], eax	
call	_strcmp
test	eax, eax
setz	al
jmp	short loc_641DA8F5
mov	al, 1
lea	esp, [ebp-0Ch]
pop	hostname_0
pop	esi
pop	edi
leave
retn
align 10h
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+context]
mov	esi, [ebx+0Ch]
mov	dword ptr [esp+0Ch], 40h 
lea	edi, [ebp+tmp]
mov	[esp+8], edi	
movzx	eax, byte ptr [ebx+8]
mov	[esp+4], eax	
mov	eax, [ebx+10h]
mov	[esp], eax	
call	_silc_net_gethostbyname
test	al, al
jz	short loc_641DA9A0
mov	[esp], edi	
call	_strdup
mov	[context_0+14h], eax
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 1 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_net_resolve_completion 
mov	dword ptr [esp+4], 0 
mov	[esp], schedule	
call	_silc_schedule_task_add
mov	[esp], schedule	
call	_silc_schedule_wakeup
xor	eax, eax
add	esp, 6Ch
pop	context_0
pop	schedule
pop	edi
leave
retn
align 4
public _silc_net_resolve_completion
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
mov	eax, [r]
test	eax, eax
jz	short loc_641DAA07
mov	edx, [r+4]
mov	[esp+4], edx
mov	edx, [r+14h]
mov	[esp], edx
call	eax
mov	eax, [r+10h]
mov	[esp], eax	
call	_silc_free
mov	eax, [r+14h]
mov	[esp], eax	
call	_silc_free
mov	[ebp+schedule],	r
add	esp, 14h
pop	r
leave
jmp	_silc_free
align 4
public _silc_net_is_ip6
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+addr]
mov	al, [ebx]
test	al, al
jz	short loc_641DAA8C
mov	esi, ds:__imp____mb_cur_max
mov	edi, ds:__imp___pctype
jmp	short loc_641DAA62
mov	edx, [edi]
movzx	eax, word ptr [edx+eax*2]
and	eax, 80h
test	eax, eax
jz	short loc_641DAA82
			
inc	addr_0
mov	al, [addr_0]
test	al, al
jz	short loc_641DAA8C
cmp	al, 3Ah
jz	short loc_641DAA5B
movsx	eax, al
cmp	dword ptr [esi], 1
jz	short loc_641DAA4C
mov	dword ptr [esp+4], 80h 
mov	[esp], eax	
call	__isctype
test	eax, eax
jnz	short loc_641DAA5B
add	esp, 1Ch
pop	addr_0
pop	esi
pop	edi
leave
retn
align 4
			
mov	al, 1
add	esp, 1Ch
pop	addr_0
pop	esi
pop	edi
leave
retn
align 4
public _silc_net_get_socket_opt
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+opt_len]
mov	[esp+10h], eax	
mov	eax, [ebp+optval]
mov	[esp+0Ch], eax	
mov	eax, [ebp+option]
mov	[esp+8], eax	
mov	eax, [ebp+level]
mov	[esp+4], eax	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_getsockopt@20
sub	esp, 14h
leave
retn
align 4
public _silc_net_set_socket_opt
			
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	dword ptr [esp+10h], 4 
lea	eax, [ebp+on]
mov	[esp+0Ch], eax	
mov	eax, [ebp+option]
mov	[esp+8], eax	
mov	eax, [ebp+level]
mov	[esp+4], eax	
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_setsockopt@20
sub	esp, 14h
leave
retn
align 10h
public _silc_net_accept_connection
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 0 
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_accept@12
sub	esp, 0Ch
leave
retn
align 4
public _silc_net_listener_get_port
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+listener]
mov	dword ptr [esp+4], 2 
mov	eax, [esi+10h]
and	eax, 3FFFFFFFh
mov	[esp], eax	
call	_silc_calloc
mov	[ebp+var_3C], eax
test	eax, eax
jz	short loc_641DABD0
mov	eax, [listener_0+10h]
and	eax, 3FFFFFFFh
jz	short loc_641DABC4
lea	eax, [ebp+name]
mov	[ebp+var_4C], eax
xor	ebx, ebx
jmp	short loc_641DAB89
align 4
movzx	eax, word ptr [ebp+name.sa_data]
mov	[esp], eax	
call	_ntohs@4
push	edx
mov	edx, [ebp+var_3C]
mov	[edx+i*2], ax
inc	i
mov	eax, [listener_0+10h]
and	eax, 3FFFFFFFh
cmp	eax, i
jle	short loc_641DABC4
mov	eax, [listener_0+0Ch]
mov	edx, [eax+i*4]
mov	edi, [ebp+var_4C]
mov	ecx, 10h
xor	eax, eax
rep stosb
mov	[ebp+namelen], 10h
lea	eax, [ebp+namelen]
mov	[esp+8], eax	
lea	eax, [ebp+name]
mov	[esp+4], eax	
mov	[esp], edx	
call	_getsockname@12
sub	esp, 0Ch
test	eax, eax
jns	short loc_641DAB68
xor	eax, eax
jmp	short loc_641DAB75
align 4
			
mov	edi, [ebp+port_count]
test	edi, edi
jz	short loc_641DABD0
mov	edx, [ebp+port_count]
mov	[edx], eax
			
mov	eax, [ebp+var_3C]
lea	esp, [ebp-0Ch]
pop	i
pop	listener_0
pop	edi
leave
retn
align 4
public _silc_net_is_ip
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+addr]
mov	cl, [ebx]
test	cl, cl
jz	short loc_641DAC64
mov	al, cl
mov	edx, addr_0
xor	esi, esi
jmp	short loc_641DAC0A
align 4
movsx	eax, al
sub	eax, 30h
cmp	eax, 9
ja	short loc_641DAC1B
inc	addr_0
mov	al, [addr_0]
test	al, al
jz	short loc_641DAC16
			
cmp	al, 2Eh
jnz	short loc_641DABF8
inc	esi
inc	addr_0
mov	al, [addr_0]
test	al, al
jnz	short loc_641DAC0A
cmp	esi, 3
jz	short loc_641DAC64
mov	esi, ds:__imp____mb_cur_max
mov	edi, ds:__imp___pctype
jmp	short loc_641DAC42
align 4
mov	eax, [edi]
movzx	eax, word ptr [eax+ecx*2]
and	eax, 80h
test	eax, eax
jz	short loc_641DAC66
inc	addr_0
mov	cl, [addr_0]
test	cl, cl
jz	short loc_641DAC64
cmp	cl, 3Ah
jz	short loc_641DAC3B
movsx	ecx, cl
cmp	dword ptr [esi], 1
jz	short loc_641DAC2C
mov	dword ptr [esp+4], 80h 
mov	[esp], ecx	
call	__isctype
jmp	short loc_641DAC37
align 4
			
mov	al, 1
add	esp, 1Ch
pop	addr_0
pop	esi
pop	edi
leave
retn
align 10h
public _silc_schedule_wakeup
			
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_schedule_get_context
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+schedule]
mov	eax, [eax+4]
leave
retn
align 4
public _silc_schedule_set_notify
push	ebp
mov	ebp, esp
mov	eax, [ebp+schedule]
mov	edx, [ebp+notify]
mov	[eax+8], edx
mov	edx, [ebp+context]
mov	[eax+0Ch], edx
leave
retn
public _silc_schedule_get_fd_events
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+schedule]
test	byte ptr [ebx+5Fh], 40h
jz	short loc_641DAD21
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
lea	eax, [ebp+task]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+fd]
mov	[esp+4], eax	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	short loc_641DAD10
xor	esi, esi
mov	task_0,	[schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, event
add	esp, 20h
pop	schedule_0
pop	event
leave
retn
align 10h
mov	eax, [ebp+task]
mov	esi, [eax+10h]
shr	si, 1
and	esi, 3FFFh
jmp	short loc_641DACEA
xor	esi, esi
jmp	short loc_641DAD04
align 4
public _silc_schedule_task_del_by_fd
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+schedule]
mov	esi, [ebp+fd]
mov	[ebp+task], 0
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebx]
mov	[esp+4], eax	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_block
lea	eax, [ebp+task]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	[esp+4], esi	
mov	eax, [ebx+10h]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short loc_641DADF4
mov	eax, [ebp+task]
and	byte ptr [eax+0Ch], 0FDh
mov	edx, [schedule_0+8]
test	edx, edx
jz	short loc_641DADC4
mov	ecx, [schedule_0+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	[esp+10h], fd_0
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	[esp], schedule_0
call	edx
mov	edi, 1
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebp+task]
test	eax, eax
jz	short loc_641DADF8
mov	eax, ret
add	esp, 4Ch
pop	schedule_0
pop	fd_0
pop	ret
leave
retn
xor	edi, edi
jmp	short loc_641DADC9
mov	[esp+8], fd_0	
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signal_unregister
mov	ret, 1
jmp	short loc_641DADEA
align 4
public _silc_schedule_task_del_by_all
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	ebx, [ebp+schedule]
mov	ecx, [ebp+fd]
mov	eax, [ebp+callback]
mov	edx, [ebp+context]
test	ecx, ecx
jnz	loc_641DAF10
mov	fd_0, [schedule_0+50h]
mov	[esp], ecx	
mov	[ebp+var_40], callback_0
mov	[ebp+var_44], context_0
call	_silc_mutex_lock
mov	ecx, [schedule_0]
mov	[esp+4], ecx	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
lea	edi, [ebp+list]
lea	esi, [schedule_0+28h]
mov	ecx, 5
rep movsd
mov	ecx, [ebp+list.head]
movzx	edi, [ebp+list.next_offset]
mov	eax, [ebp+var_40]
mov	edx, [ebp+var_44]
mov	[ebp+var_4C], edx
test	ecx, ecx
jz	short loc_641DAE86
xchg	ax, ax
and	[ebp+list._bf10], 0FDh
mov	esi, [ecx+edi]
cmp	[ecx+4], eax
jz	short loc_641DAEAC
			
mov	ecx, esi
test	ecx, ecx
jnz	short loc_641DAE74
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 7Ch
pop	schedule_0
pop	esi
pop	edi
leave
retn
align 4
mov	context_0, [ebp+var_4C]
cmp	[ecx+8], edx
jnz	short loc_641DAE80
and	byte ptr [ecx+0Ch], 0FDh
mov	edx, [schedule_0+8]
mov	[ebp+var_3C], edx
test	edx, edx
jz	short loc_641DAE80
mov	edx, [schedule_0+0Ch]
mov	[esp+20h], edx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0
mov	[esp+8], ecx
mov	dword ptr [esp+4], 0
mov	[esp], schedule_0
mov	[ebp+var_40], callback_0
call	[ebp+var_3C]
mov	eax, [ebp+var_40]
mov	ecx, esi
jmp	loc_641DAE82
add	esp, 7Ch
pop	schedule_0
pop	esi
pop	edi
leave
jmp	_silc_schedule_task_del_by_fd
public _silc_schedule_stop
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+schedule]
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebx]
mov	[esp+4], eax	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_block
and	byte ptr [ebx+5Fh], 0BFh
mov	eax, [ebx]
mov	[esp+4], eax	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_unblock
mov	eax, [ebx+50h]
mov	[ebp+schedule],	eax
add	esp, 14h
pop	ebx
leave
jmp	_silc_mutex_unlock
align 4
public _silc_schedule_task_del_by_context
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 8Ch
mov	ebx, [ebp+context]
mov	edx, [ebp+schedule]
mov	eax, [edx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	ecx, [ebp+schedule]
mov	eax, [ecx]
mov	[esp+4], eax	
mov	[esp], ecx	
call	ds:_schedule_ops.signals_block
lea	esi, [ebp+htl]
mov	[esp+4], esi	
mov	edx, [ebp+schedule]
mov	eax, [edx+10h]
mov	[esp], eax	
call	_silc_hash_table_list
lea	edi, [ebp+task]
mov	[ebp+ret], 0
nop
			
mov	[esp+8], edi	
mov	dword ptr [esp+4], 0 
mov	[esp], esi	
call	_silc_hash_table_get
test	al, al
jz	short loc_641DB028
mov	eax, [ebp+task]
cmp	[eax+8], context_0
jnz	short loc_641DAFB0
and	byte ptr [eax+0Ch], 0FDh
mov	ecx, [ebp+schedule]
mov	edx, [ecx+8]
mov	[ebp+ret], 1
test	edx, edx
jz	short loc_641DAFB0
mov	ecx, [ecx+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	ecx, [eax+14h]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	eax, [ebp+schedule]
mov	[esp], eax
call	edx
jmp	short loc_641DAFB0
align 4
mov	[esp], esi	
call	_silc_hash_table_list_reset
lea	edi, [ebp+list]
mov	esi, [ebp+schedule]
add	esi, 28h
mov	ecx, 5
rep movsd
mov	eax, [ebp+list.head]
movzx	edi, [ebp+list.next_offset]
test	eax, eax
jz	short loc_641DB061
nop
and	[ebp+list._bf10], 0FDh
mov	esi, [eax+edi]
mov	[ebp+task], eax
cmp	[eax+8], context_0
jz	short loc_641DB098
mov	eax, esi
test	eax, eax
jnz	short loc_641DB04C
mov	[ebp+task], 0
mov	edx, [ebp+schedule]
mov	eax, [edx]
mov	[esp+4], eax	
mov	[esp], edx	
call	ds:_schedule_ops.signals_unblock
mov	ecx, [ebp+schedule]
mov	eax, [ecx+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, [ebp+ret]
add	esp, 8Ch
pop	context_0
pop	esi
pop	edi
leave
retn
align 4
and	byte ptr [eax+0Ch], 0FDh
mov	ecx, [ebp+schedule]
mov	edx, [ecx+8]
test	edx, edx
jz	short loc_641DB0EC
mov	ecx, [ebp+schedule]
mov	ecx, [ecx+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	eax, [ebp+schedule]
mov	[esp], eax
call	edx
mov	[ebp+ret], 1
mov	eax, esi
jmp	loc_641DB05D
align 4
public _silc_schedule_task_del_by_callback
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 8Ch
mov	ebx, [ebp+callback]
mov	edx, [ebp+schedule]
mov	eax, [edx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	ecx, [ebp+schedule]
mov	eax, [ecx]
mov	[esp+4], eax	
mov	[esp], ecx	
call	ds:_schedule_ops.signals_block
lea	esi, [ebp+htl]
mov	[esp+4], esi	
mov	edx, [ebp+schedule]
mov	eax, [edx+10h]
mov	[esp], eax	
call	_silc_hash_table_list
lea	edi, [ebp+task]
mov	[ebp+ret], 0
nop
			
mov	[esp+8], edi	
mov	dword ptr [esp+4], 0 
mov	[esp], esi	
call	_silc_hash_table_get
test	al, al
jz	short loc_641DB1BC
mov	eax, [ebp+task]
cmp	[eax+4], callback_0
jnz	short loc_641DB144
and	byte ptr [eax+0Ch], 0FDh
mov	ecx, [ebp+schedule]
mov	edx, [ecx+8]
mov	[ebp+ret], 1
test	edx, edx
jz	short loc_641DB144
mov	ecx, [ecx+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	ecx, [eax+14h]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	eax, [ebp+schedule]
mov	[esp], eax
call	edx
jmp	short loc_641DB144
align 4
mov	[esp], esi	
call	_silc_hash_table_list_reset
lea	edi, [ebp+list]
mov	esi, [ebp+schedule]
add	esi, 28h
mov	ecx, 5
rep movsd
mov	eax, [ebp+list.head]
movzx	edi, [ebp+list.next_offset]
test	eax, eax
jz	short loc_641DB1F5
nop
and	[ebp+list._bf10], 0FDh
mov	esi, [eax+edi]
mov	[ebp+task], eax
cmp	[eax+4], callback_0
jz	short loc_641DB22C
mov	eax, esi
test	eax, eax
jnz	short loc_641DB1E0
mov	[ebp+task], 0
mov	edx, [ebp+schedule]
mov	eax, [edx]
mov	[esp+4], eax	
mov	[esp], edx	
call	ds:_schedule_ops.signals_unblock
mov	ecx, [ebp+schedule]
mov	eax, [ecx+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, [ebp+ret]
add	esp, 8Ch
pop	callback_0
pop	esi
pop	edi
leave
retn
align 4
and	byte ptr [eax+0Ch], 0FDh
mov	ecx, [ebp+schedule]
mov	edx, [ecx+8]
test	edx, edx
jz	short loc_641DB280
mov	ecx, [ebp+schedule]
mov	ecx, [ecx+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	eax, [ebp+schedule]
mov	[esp], eax
call	edx
mov	[ebp+ret], 1
mov	eax, esi
jmp	loc_641DB1F1
align 4
public _silc_schedule_task_del
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+schedule]
cmp	[ebp+task], 1
jz	loc_641DB333
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
mov	eax, [ebp+task]
and	byte ptr [eax+0Ch], 0FDh
mov	ecx, [schedule_0+8]
test	ecx, ecx
jz	short loc_641DB30F
mov	edx, [schedule_0+0Ch]
mov	[esp+20h], edx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dl, [eax+0Ch]
xor	edx, 1
and	edx, 1
mov	[esp+0Ch], edx
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	[esp], schedule_0
call	ecx
			
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 4Ch
pop	schedule_0
pop	esi
pop	edi
leave
retn
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
lea	esi, [ebp+htl]
mov	[esp+4], esi	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_list
lea	edi, [ebp+task]
			
mov	[esp+8], edi	
mov	dword ptr [esp+4], 0 
mov	[esp], esi	
call	_silc_hash_table_get
test	al, al
jz	short loc_641DB3C9
mov	eax, [ebp+task]
and	byte ptr [eax+0Ch], 0FDh
mov	edx, [schedule_0+8]
test	edx, edx
jz	short loc_641DB362
mov	ecx, [schedule_0+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	ecx, [eax+14h]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	[esp], schedule_0
call	edx
jmp	short loc_641DB362
mov	[esp], esi	
call	_silc_hash_table_list_reset
mov	eax, [schedule_0+28h]
mov	[schedule_0+30h], eax
and	byte ptr [schedule_0+38h], 0FDh
jmp	short loc_641DB3F5
movzx	edx, word ptr [schedule_0+36h]
mov	edx, [eax+edx]
mov	[schedule_0+30h], edx
and	byte ptr [eax+0Ch], 0FDh
mov	edx, [schedule_0+8]
test	edx, edx
jnz	short loc_641DB414
mov	eax, [schedule_0+30h]
test	eax, eax
jz	short loc_641DB408
test	byte ptr [schedule_0+38h], 2
jnz	short loc_641DB3DD
movzx	edx, word ptr [schedule_0+34h]
mov	edx, [eax+edx]
jmp	short loc_641DB3E4
mov	[ebp+task], 0
jmp	loc_641DB30F
mov	[ebp+task], eax
mov	ecx, [schedule_0+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0
mov	[esp+8], eax
mov	dword ptr [esp+4], 0
mov	[esp], schedule_0
call	edx
jmp	short loc_641DB3F2
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	ebx, schedule
cmp	task, 1
jz	loc_641DB549
test	byte ptr [task+0Ch], 1
jz	loc_641DB535
mov	eax, [eax+28h]
test	prev, prev
jz	short loc_641DB49F
cmp	task, prev
jz	loc_641DB527
movzx	edi, word ptr [schedule+34h]
jmp	short loc_641DB496
align 10h
cmp	task, prev
jz	short loc_641DB4DC
mov	eax, prev
lea	p, [prev+edi]
mov	esi, [p]
test	prev, prev
jnz	short loc_641DB490
cmp	[schedule+2Ch],	task
jz	short loc_641DB509
mov	p, [schedule+3Ch]
test	ecx, ecx
jz	short loc_641DB514
movzx	prev, word ptr [schedule+48h]
mov	ecx, [schedule+40h]
mov	[ecx+eax], task
test	byte ptr [schedule+4Ch], 1
jz	short loc_641DB4C5
movzx	ecx, word ptr [schedule+4Ah]
mov	prev, [schedule+40h]
mov	[task+ecx], esi
mov	[schedule+40h],	task
mov	dword ptr [task+eax], 0
add	dword ptr [schedule+4Ch], 4
			
add	esp, 7Ch
pop	schedule
pop	prev
pop	edi
leave
retn
align 4
mov	[ebp+var_4C], p
mov	prev, [task+edi]
mov	p, [ebp+var_4C]
mov	[ecx], esi
test	esi, esi
jz	short loc_641DB4FB
test	byte ptr [schedule+38h], 1
jz	short loc_641DB4FB
movzx	edi, word ptr [schedule+36h]
mov	ecx, [task+edi]
mov	[esi+edi], ecx
			
cmp	[schedule+30h],	task
jz	short loc_641DB51D
sub	dword ptr [schedule+38h], 4
cmp	[schedule+2Ch],	task
jnz	short loc_641DB4A4
mov	[schedule+2Ch],	prev
mov	p, [schedule+3Ch]
test	ecx, ecx
jnz	short loc_641DB4AB
nop
mov	[schedule+3Ch],	task
movzx	prev, word ptr [schedule+48h]
jmp	short loc_641DB4B5
mov	esi, [ebp+var_4C]
mov	ecx, [esi]
mov	[schedule+30h],	ecx
jmp	short loc_641DB500
lea	prev, [schedule+28h]
mov	[ebp+var_4C], eax
movzx	edi, word ptr [schedule+34h]
xor	eax, eax
jmp	short loc_641DB4DF
mov	eax, [task+14h]
mov	[esp+4], eax	
mov	eax, [schedule+10h]
mov	[esp], eax	
call	_silc_hash_table_del
jmp	short loc_641DB4D3
lea	esi, [ebp+htl]
mov	[esp+4], esi	
mov	eax, [eax+10h]
mov	[esp], eax	
call	_silc_hash_table_list
lea	edi, [ebp+fd]
jmp	short loc_641DB572
mov	eax, [ebp+fd]
mov	[esp+4], eax	
mov	eax, [schedule+10h]
mov	[esp], eax	
call	_silc_hash_table_del
lea	eax, [ebp+context]
mov	[esp+8], eax	
mov	[esp+4], edi	
mov	[esp], esi	
call	_silc_hash_table_get
test	al, al
jnz	short loc_641DB560
mov	[esp], esi	
call	_silc_hash_table_list_reset
mov	eax, [schedule+28h]
mov	[schedule+30h],	eax
and	byte ptr [schedule+38h], 0FDh
lea	edx, [schedule+28h]
mov	[ebp+var_3C], edx
test	eax, eax
jz	loc_641DB4D3
test	byte ptr [schedule+38h], 2
jz	short loc_641DB5EE
movzx	edx, word ptr [schedule+36h]
mov	edx, [eax+edx]
mov	[schedule+30h],	edx
mov	edx, [schedule+28h]
test	prev, prev
jz	short loc_641DB5D9
cmp	eax, prev
jz	short loc_641DB62C
movzx	edi, word ptr [schedule+34h]
jmp	short loc_641DB5D0
cmp	eax, prev
jz	short loc_641DB5F7
mov	edx, prev
lea	p, [prev+edi]
mov	esi, [p]
test	prev, prev
jnz	short loc_641DB5CA
			
cmp	eax, [schedule+2Ch]
jz	short loc_641DB627
mov	[ebp+context], eax
mov	[esp], eax	
call	_silc_free
mov	eax, [schedule+30h]
jmp	short loc_641DB5A1
movzx	edx, word ptr [schedule+34h]
mov	edx, [eax+edx]
jmp	short loc_641DB5B6
mov	[ebp+var_6C], p
mov	edi, [eax+edi]
mov	[ebp+var_4C], edi
mov	prev, [ebp+var_6C]
mov	[esi], edi
test	edi, edi
jz	short loc_641DB61C
test	byte ptr [schedule+38h], 1
jz	short loc_641DB61C
movzx	edi, word ptr [schedule+36h]
mov	p, [eax+edi]
mov	esi, [ebp+var_4C]
mov	[esi+edi], ecx
			
cmp	eax, [schedule+30h]
jz	short loc_641DB63A
sub	dword ptr [schedule+38h], 4
jmp	short loc_641DB5D9
mov	[schedule+2Ch],	prev
jmp	short loc_641DB5DE
movzx	edi, word ptr [schedule+34h]
mov	ecx, [ebp+var_3C]
mov	[ebp+var_6C], ecx
xor	prev, prev
jmp	short loc_641DB5FA
mov	edi, [ebp+var_6C]
mov	p, [edi]
mov	[schedule+30h],	ecx
jmp	short loc_641DB621
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, schedule
mov	schedule, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	esi, [schedule+14h]
mov	[schedule+1Ch],	esi
and	byte ptr [schedule+24h], 0FDh
jmp	short loc_641DB68D
movzx	eax, word ptr [schedule+22h]
mov	eax, [esi+eax]
mov	[schedule+1Ch],	eax
test	byte ptr [esi+11h], 80h
jnz	short loc_641DB6A7
test	byte ptr [esi+0Ch], 2
jnz	short loc_641DB6D0
			
mov	esi, [schedule+1Ch]
test	esi, esi
jz	short loc_641DB6FC
test	byte ptr [schedule+24h], 2
jnz	short loc_641DB674
movzx	eax, word ptr [schedule+20h]
mov	eax, [esi+eax]
mov	[schedule+1Ch],	eax
test	byte ptr [esi+11h], 80h
jz	short loc_641DB684
mov	eax, [esi+8]
mov	[esp+10h], eax
mov	eax, [esi+14h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], 1
mov	eax, [schedule+4]
mov	[esp+4], eax
mov	[esp], schedule
call	dword ptr [esi+4]
test	byte ptr [esi+0Ch], 2
jz	short loc_641DB68A
test	byte ptr [esi+12h], 1
jz	short loc_641DB68A
mov	eax, [esi+8]
mov	[esp+10h], eax
mov	eax, [esi+14h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], 2
mov	eax, [schedule+4]
mov	[esp+4], eax
mov	[esp], schedule
call	dword ptr [esi+4]
jmp	short loc_641DB68A
align 4
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_block
mov	edx, [schedule+14h]
mov	[schedule+1Ch],	edx
and	byte ptr [schedule+24h], 0FDh
jmp	short loc_641DB736
align 4
movzx	eax, word ptr [schedule+22h]
mov	eax, [edx+eax]
mov	[schedule+1Ch],	eax
test	byte ptr [edx+0Ch], 2
jz	short loc_641DB753
mov	edx, eax	
			
test	edx, edx
jz	short loc_641DB74C
test	byte ptr [schedule+24h], 2
jnz	short loc_641DB724
movzx	eax, word ptr [schedule+20h]
mov	eax, [edx+eax]
jmp	short loc_641DB72B
align 4
add	esp, 20h
pop	schedule
pop	esi
leave
retn
mov	eax, schedule
call	_silc_schedule_task_remove
mov	edx, [schedule+1Ch]
jmp	short loc_641DB736
align 10h
public _silc_schedule_set_listen_fd
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+schedule]
mov	esi, [ebp+mask]
mov	al, [ebp+send_events]
mov	[ebp+var_29], al
test	byte ptr [ebx+5Fh], 40h
jz	loc_641DB88E
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
lea	eax, [ebp+task]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+fd]
mov	[esp+4], eax	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	loc_641DB850
mov	[esp+0Ch], mask_0 
mov	eax, [ebp+task]
mov	[esp+8], eax	
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.schedule_fd
test	al, al
jz	loc_641DB874
mov	edx, [ebp+task]
mov	ecx, mask_0
mov	edi, mask_0
and	edi, 3FFFh
shl	edi, 1
mov	eax, [edx+10h]
and	eax, 0FFFF8001h
or	eax, edi
mov	[edx+10h], ax
cmp	[ebp+var_29], 0
jnz	loc_641DB898
			
mov	eax, [schedule_0+8]
test	eax, eax
jz	short loc_641DB850
mov	edx, [ebp+task]
mov	ecx, [schedule_0+0Ch]
mov	[esp+20h], ecx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	[esp+14h], esi
mov	ecx, [edx+14h]
mov	[esp+10h], ecx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], edx
mov	dword ptr [esp+4], 1
mov	[esp], schedule_0
call	eax
			
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	al, 1
add	esp, 5Ch
pop	schedule_0
pop	mask_0
pop	edi
leave
retn
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
xor	eax, eax
add	esp, 5Ch
pop	schedule_0
pop	mask_0
pop	edi
leave
retn
test	esi, esi
jz	loc_641DB80B
and	ecx, 7FFFh
shl	ecx, 0Fh
mov	eax, [edx+10h]
and	eax, 0C0007FFFh
or	eax, ecx
mov	[edx+10h], eax
mov	eax, schedule_0	
call	_silc_schedule_dispatch_fd
jmp	loc_641DB80B
align 4
public _silc_schedule_unset_listen_fd
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+fd]
mov	[esp+4], eax	
mov	eax, [ebp+schedule]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
leave
retn
align 10h
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
mov	[ebp+key], eax
leave
jmp	_silc_free
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, schedule
mov	[ebp+var_29], dl
lea	edi, [ebp+curtime]
mov	[esp], edi	
call	_silc_gettimeofday
mov	edx, [schedule+28h]
mov	[schedule+30h],	edx
and	byte ptr [schedule+38h], 0FDh
test	edx, edx
jz	loc_641DBA08
movzx	eax, word ptr [schedule+34h]
mov	eax, [edx+eax]
mov	[schedule+30h],	eax
xor	esi, esi
jmp	short loc_641DB94A
align 10h
movzx	eax, word ptr [schedule+36h]
mov	eax, [edx+eax]
mov	[schedule+30h],	eax
test	byte ptr [edx+0Ch], 2
jz	loc_641DBA10
mov	[esp+4], edi	
lea	eax, [task+10h]
mov	[esp], eax	
mov	[ebp+task], task
call	_silc_compare_timeval
test	eax, eax
mov	edx, [ebp+task]
jle	short loc_641DB977
cmp	[ebp+var_29], 0
jz	loc_641DBA08
and	byte ptr [edx+0Ch], 0FDh
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
mov	[ebp+task], task
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	edx, [ebp+task]
mov	eax, [edx+8]
mov	[esp+10h], eax
mov	dword ptr [esp+0Ch], 0
mov	dword ptr [esp+8], 4
mov	eax, [schedule+4]
mov	[esp+4], eax
mov	[esp], schedule
call	dword ptr [task+4]
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_block
mov	edx, [ebp+task]	
mov	eax, schedule	
call	_silc_schedule_task_remove
inc	count
cmp	count, 28h
jg	short loc_641DBA08
mov	edx, [schedule+30h] 
test	edx, edx
jz	short loc_641DBA08
test	byte ptr [schedule+38h], 2
jnz	loc_641DB940
movzx	eax, word ptr [schedule+34h]
mov	eax, [edx+eax]
jmp	loc_641DB947
align 4
			
add	esp, 4Ch
pop	schedule
pop	count
pop	edi
leave
retn
mov	eax, schedule
call	_silc_schedule_task_remove
jmp	short loc_641DB9E9
align 4
public _silc_schedule_task_add
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	ebx, [ebp+schedule]
mov	edi, [ebp+fd]
mov	esi, [ebp+type]
test	byte ptr [ebx+5Fh], 40h
jz	loc_641DBD76
mov	eax, [schedule_0+50h]
mov	[ebp+task], 0
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
cmp	type_0,	1
jnz	loc_641DBDA1
mov	eax, [schedule_0+3Ch]
mov	[schedule_0+44h], prev
and	byte ptr [schedule_0+4Ch], 0FDh
test	prev, prev
jz	loc_641DBD7D
movzx	ecx, word ptr [schedule_0+48h]
mov	edx, [prev+ecx]
mov	[schedule_0+44h], edx
mov	[ebp+ttask], prev
lea	type_0,	[schedule_0+3Ch]
mov	ecx, [prev+ecx]
mov	[p], ecx
test	ecx, ecx
jz	short loc_641DBA97
test	byte ptr [schedule_0+4Ch], 1
jnz	loc_641DBBCC
			
cmp	[schedule_0+44h], prev
jz	loc_641DBCFC
sub	dword ptr [schedule_0+4Ch], 4
cmp	[schedule_0+40h], prev
jz	loc_641DBC90
			
mov	edx, [ebp+ttask]
mov	al, [edx+0Ch]
mov	ecx, [ebp+callback]
mov	[edx+4], ecx
mov	edi, [ebp+context]
mov	[edx+8], edi
or	eax, 3
mov	[edx+0Ch], al
add	edx, 10h
mov	[ebp+t1], edx
mov	[esp], edx	
call	_silc_gettimeofday
mov	eax, [ebp+useconds]
add	eax, [ebp+seconds]
test	eax, eax
jle	short loc_641DBB41
mov	p, [ebp+seconds]
mov	eax, [ebp+ttask]
add	esi, [eax+10h]
mov	ecx, 431BDE83h
mov	eax, [ebp+useconds]
imul	ecx
mov	[ebp+var_40], eax
mov	[ebp+var_3C], edx
mov	eax, [ebp+var_3C]
sar	eax, 12h
mov	ecx, [ebp+useconds]
sar	ecx, 1Fh
sub	eax, ecx
add	esi, eax
mov	edx, [ebp+ttask]
mov	[edx+10h], esi
lea	eax, [eax+eax*4]
lea	eax, [eax+eax*4]
lea	eax, [eax+eax*4]
lea	eax, [eax+eax*4]
lea	eax, [eax+eax*4]
lea	eax, [eax+eax*4]
shl	eax, 6
mov	ecx, [ebp+useconds]
sub	ecx, eax
mov	eax, [edx+14h]
add	eax, ecx
mov	[edx+14h], eax
cmp	eax, 0F423Fh
jle	short loc_641DBB41
inc	esi
mov	[edx+10h], esi
sub	eax, 0F4240h
mov	[edx+14h], eax
			
lea	edi, [ebp+list]
lea	p, [schedule_0+28h]
mov	ecx, 5
rep movsd
mov	eax, [ebp+list.head]
xor	edi, edi
movzx	edx, [ebp+list.next_offset]
mov	[ebp+var_40], edx
mov	[ebp+var_4C], schedule_0
mov	schedule_0, prev
test	eax, eax
jz	short loc_641DBB8E
nop
and	[ebp+list._bf10], 0FDh
mov	edx, [ebp+var_40]
mov	edi, [eax+edx]
mov	tmp, eax
lea	eax, [eax+10h]
mov	[esp+4], eax	
mov	ecx, [ebp+t1]
mov	[esp], ecx	
call	_silc_compare_timeval
test	eax, eax
js	short loc_641DBBDC
mov	eax, edi
mov	prev, tmp
test	eax, eax
jnz	short loc_641DBB64
mov	prev, [ebp+var_4C]
mov	tmp, [schedule_0+28h]
test	esi, esi
jz	loc_641DBD08
movzx	eax, word ptr [schedule_0+34h]
mov	ecx, [schedule_0+2Ch]
mov	edx, [ebp+ttask]
mov	[ecx+eax], edx
test	byte ptr [schedule_0+38h], 1
jz	short loc_641DBBBC
movzx	ecx, word ptr [schedule_0+36h]
mov	esi, [schedule_0+2Ch]
mov	prev, [ebp+ttask]
mov	[edi+ecx], esi
mov	edx, [ebp+ttask]
mov	[schedule_0+2Ch], edx
mov	dword ptr [edx+eax], 0
jmp	short loc_641DBC19
align 4
movzx	edx, word ptr [schedule_0+4Ah]
mov	fd_0, [prev+edx]
mov	[ecx+edx], edi
jmp	loc_641DBA97
align 4
mov	edi, prev
mov	prev, [ebp+var_4C]
test	prev, prev
jz	loc_641DBC9C
movzx	eax, word ptr [schedule_0+34h]
mov	ecx, [prev+eax]
mov	edx, [ebp+ttask]
mov	[edx+eax], ecx
mov	[prev+eax], edx
test	byte ptr [schedule_0+38h], 1
jz	short loc_641DBC10
movzx	ecx, word ptr [schedule_0+36h]
mov	[edx+ecx], prev
mov	eax, [edx+eax]
test	eax, eax
jz	short loc_641DBC10
mov	[eax+ecx], edx
			
cmp	[schedule_0+2Ch], prev
jz	loc_641DBCF0
			
add	dword ptr [schedule_0+38h], 4
mov	ecx, [ebp+ttask]
mov	[ebp+task], ecx
mov	eax, [schedule_0+8]
test	eax, eax
jz	short out
mov	ecx, [schedule_0+0Ch]
mov	[esp+20h], ecx
mov	prev, [ebp+useconds]
mov	[esp+1Ch], edi
mov	edx, [ebp+seconds]
mov	[esp+18h], edx
mov	dword ptr [esp+14h], 0
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0
mov	ecx, [ebp+ttask]
mov	[esp+8], ecx
mov	dword ptr [esp+4], 1
mov	[esp], schedule_0
call	eax
			
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebp+task]
add	esp, 7Ch
pop	schedule_0
pop	tmp
pop	prev
leave
retn
mov	dword ptr [schedule_0+40h], 0
jmp	loc_641DBAAD
mov	eax, [schedule_0+28h]
test	eax, eax
jz	short loc_641DBD1F
movzx	ecx, word ptr [schedule_0+34h]
mov	prev, [ebp+ttask]
mov	[edi+ecx], eax
mov	al, [schedule_0+38h]
test	al, 1
jz	short loc_641DBCC8
mov	ecx, [schedule_0+28h]
test	ecx, ecx
jz	short loc_641DBCC8
movzx	eax, word ptr [schedule_0+36h]
mov	prev, [ebp+ttask]
mov	[ecx+eax], edi
mov	al, [schedule_0+38h]
			
mov	prev, [schedule_0+2Ch]
test	edi, edi
jz	short loc_641DBD17
mov	ecx, [ebp+ttask]
mov	[schedule_0+28h], ecx
test	al, 1
jz	loc_641DBC19
movzx	eax, word ptr [schedule_0+36h]
mov	dword ptr [ecx+eax], 0
jmp	loc_641DBC19
align 10h
mov	ecx, [ebp+ttask]
mov	[schedule_0+2Ch], ecx
jmp	loc_641DBC19
align 4
mov	ecx, [p]
mov	[schedule_0+44h], ecx
jmp	loc_641DBAA0
align 4
mov	prev, [ebp+ttask]
mov	[schedule_0+28h], edi
movzx	eax, word ptr [schedule_0+34h]
jmp	loc_641DBBA9
mov	edx, [ebp+ttask]
mov	[schedule_0+2Ch], edx
jmp	short loc_641DBCCF
movzx	eax, word ptr [schedule_0+34h]
mov	edx, [ebp+ttask]
mov	dword ptr [edx+eax], 0
jmp	loc_641DBCAD
cmp	type_0,	2
jnz	out
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [ebp+context]
mov	[esp+10h], eax	
mov	edx, [ebp+callback]
mov	[esp+0Ch], edx	
mov	[esp+8], fd_0	
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signal_register
xor	eax, eax
jmp	loc_641DBC88
mov	dword ptr [esp+4], 18h
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[ebp+ttask], eax
test	eax, eax
jnz	loc_641DBAAD
jmp	out
test	type_0,	type_0
jnz	short loc_641DBD32
lea	eax, [ebp+task]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	[esp+4], fd_0	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	loc_641DBE87
test	dword ptr [schedule_0+5Ch], 1FFFFFFFh
jnz	short loc_641DBE43
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	type_0,	eax
test	eax, eax
jz	short loc_641DBE37
mov	al, [eax+0Ch]
and	eax, 0FFFFFFFEh
mov	edx, [ebp+callback]
mov	[esi+4], edx
mov	ecx, [ebp+context]
mov	[esi+8], ecx
or	eax, 2
mov	[esi+0Ch], al
mov	eax, [esi+10h]
and	eax, 0FFFF8001h
or	eax, 2
mov	[esi+10h], ax
mov	[esi+14h], fd_0
mov	[esp+8], esi	
mov	[esp+4], fd_0	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
jnz	short loc_641DBEA0
mov	[esp], esi	
call	_silc_free
mov	[ebp+task], 0
jmp	out
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_count
mov	edx, [schedule_0+5Ch]
and	edx, 1FFFFFFFh
cmp	eax, edx
jb	loc_641DBDD4
mov	dword ptr [esp], offset	aSchedulerTaskL	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 2 
call	_silc_log_output
mov	[ebp+task], 0
jmp	out
mov	edx, [ebp+task]	
test	byte ptr [edx+0Ch], 2
jnz	out
mov	eax, schedule_0	
call	_silc_schedule_task_remove
jmp	loc_641DBDCB
mov	eax, [esi+10h]
shr	ax, 1
and	eax, 3FFFh
mov	[esp+0Ch], eax	
mov	[esp+8], esi	
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.schedule_fd
test	al, al
jz	short loc_641DBF18
mov	[ebp+task], esi
mov	eax, [schedule_0+8]
test	eax, eax
jz	out
mov	edx, [schedule_0+0Ch]
mov	[esp+20h], edx
mov	dword ptr [esp+1Ch], 0
mov	dword ptr [esp+18h], 0
mov	dword ptr [esp+14h], 1
mov	edx, [esi+14h]
mov	[esp+10h], edx
mov	dword ptr [esp+0Ch], 1
mov	[esp+8], esi
mov	dword ptr [esp+4], 1
mov	[esp], schedule_0
call	eax
jmp	out
mov	[esp+4], fd_0	
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_del
mov	[ebp+task], 0
jmp	out
align 4
public _silc_schedule_timeout_gc
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+schedule]
test	byte ptr [esi+5Fh], 40h
jnz	short loc_641DBF50
add	esp, 5Ch
pop	ebx
pop	schedule_0
pop	edi
leave
retn
align 10h
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
mov	eax, [schedule_0+4Ch]
shr	eax, 2
cmp	eax, 0Ah
jle	loc_641DC029
mov	edx, [schedule_0+38h]
shr	edx, 2
cmp	eax, edx
jl	loc_641DC029
mov	ecx, eax
sar	ecx, 1
mov	[ebp+c], ecx
cmp	edx, ecx
jge	short loc_641DBF99
mov	edi, eax
sub	edi, edx
mov	[ebp+c], edi
sub	eax, [ebp+c]
cmp	eax, 9
jle	loc_641DC0C5
mov	edx, [schedule_0+3Ch]
mov	ebx, edx
mov	[schedule_0+44h], edx
mov	al, [schedule_0+4Ch]
and	eax, 0FFFFFFFDh
mov	[schedule_0+4Ch], al
lea	ecx, [schedule_0+3Ch]
mov	[ebp+var_20], ecx
test	ebx, ebx
jz	short loc_641DC020
test	al, 2
jz	loc_641DC080
movzx	ecx, word ptr [schedule_0+4Ah]
mov	ecx, [ebx+ecx]
mov	[schedule_0+44h], ecx
mov	ecx, [ebp+c]
test	ecx, ecx
jle	short loc_641DC020
test	edx, edx
jz	short loc_641DBFFF
cmp	ebx, prev
jz	loc_641DC0DE
movzx	edi, word ptr [schedule_0+48h]
jmp	short loc_641DBFF6
align 4
cmp	ebx, prev
jz	loc_641DC08C
mov	edx, prev
lea	p, [prev+edi]
mov	eax, [p]
test	prev, prev
jnz	short loc_641DBFEC
cmp	[schedule_0+40h], ebx
jz	loc_641DC0BD
			
dec	[ebp+c]
mov	[esp], ebx	
call	_silc_free
mov	ebx, [schedule_0+44h]
mov	edx, [schedule_0+3Ch]
mov	al, [schedule_0+4Ch]
test	ebx, ebx
jnz	short loc_641DBFC0
			
mov	[schedule_0+44h], edx
and	eax, 0FFFFFFFDh
mov	[schedule_0+4Ch], al
			
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0E10h 
mov	[esp+0Ch], schedule_0 
mov	dword ptr [esp+8], offset _silc_schedule_timeout_gc 
mov	dword ptr [esp+4], 0 
mov	[esp], schedule_0 
call	_silc_schedule_task_add
add	esp, 5Ch
pop	ebx
pop	schedule_0
pop	edi
leave
retn
align 10h
movzx	ecx, word ptr [schedule_0+48h]
mov	ecx, [ebx+ecx]
jmp	loc_641DBFCF
mov	[ebp+var_3C], p
mov	prev, [ebx+edi]
mov	p, [ebp+var_3C]
mov	[ecx], eax
test	eax, eax
jz	short loc_641DC0AB
test	byte ptr [schedule_0+4Ch], 1
jz	short loc_641DC0AB
movzx	edi, word ptr [schedule_0+4Ah]
mov	ecx, [ebx+edi]
mov	[eax+edi], ecx
			
cmp	[schedule_0+44h], ebx
jz	short loc_641DC0D4
sub	dword ptr [schedule_0+4Ch], 4
cmp	[schedule_0+40h], ebx
jnz	loc_641DC008
mov	[schedule_0+40h], prev
jmp	loc_641DC008
mov	edx, [ebp+c]
lea	edx, [edx+eax-0Ah]
mov	[ebp+c], edx
jmp	loc_641DBFA5
mov	edi, [ebp+var_3C]
mov	eax, [edi]
mov	[schedule_0+44h], eax
jmp	short loc_641DC0B0
movzx	edi, word ptr [schedule_0+48h]
mov	eax, [ebp+var_20]
mov	[ebp+var_3C], eax
xor	prev, prev
jmp	short loc_641DC08F
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, schedule
mov	[ebp+var_2C], timeout_usecs
lea	edi, [ebp+tv]
lea	ret, [ret+0]
mov	al, [schedule+5Fh]
test	al, al
js	loc_641DC2B5
test	al, 40h
jz	loc_641DC304
mov	[esp], edi	
call	_silc_gettimeofday
mov	al, [schedule+5Fh]
and	eax, 0FFFFFFDFh
mov	[schedule+5Fh],	al
mov	edx, [schedule+28h]
mov	[schedule+30h],	edx
and	byte ptr [schedule+38h], 0FDh
test	edx, edx
jz	loc_641DC1EC
movzx	eax, word ptr [schedule+34h]
mov	eax, [edx+eax]
mov	[schedule+30h],	eax
mov	ret, 1
jmp	short loc_641DC152
align 4
movzx	eax, word ptr [schedule+36h]
mov	eax, [edx+eax]
mov	[schedule+30h],	eax
test	byte ptr [edx+0Ch], 2
jz	loc_641DC283
mov	[esp+4], edi	
lea	eax, [edx+10h]
mov	[esp], eax	
mov	[ebp+var_30], edx
call	_silc_compare_timeval
test	eax, eax
mov	edx, [ebp+var_30]
jg	short loc_641DC1B4
mov	eax, esi
test	al, al
jz	short loc_641DC1B4
xor	edx, edx	
mov	eax, schedule	
call	_silc_schedule_dispatch_timeout
test	byte ptr [schedule+5Fh], 40h
jz	loc_641DC304
mov	edx, [schedule+28h] 
mov	[schedule+30h],	edx
and	byte ptr [schedule+38h], 0FDh
xor	esi, esi
test	edx, edx
jz	loc_641DC24C
test	byte ptr [schedule+38h], 2
jnz	short loc_641DC148
movzx	eax, word ptr [schedule+34h]
mov	eax, [edx+eax]
jmp	short loc_641DC14F
align 4
			
mov	ecx, [edx+10h]
sub	ecx, [ebp+tv.tv_sec]
mov	[ebp+tv.tv_sec], ecx
mov	eax, [edx+14h]
sub	eax, [ebp+tv.tv_usec]
mov	[ebp+tv.tv_usec], eax
test	ecx, ecx
js	loc_641DC254
test	eax, eax
js	loc_641DC263
			
mov	eax, [ebp+tv.tv_sec]
mov	edx, [ebp+tv.tv_usec]
mov	[schedule+54h],	eax
mov	[schedule+58h],	edx
mov	al, [schedule+5Fh]
or	eax, 20h
mov	[schedule+5Fh],	al
nop
			
test	al, 40h
jz	loc_641DC304
mov	ret, [ebp+var_2C]
test	esi, esi
js	short loc_641DC20E
mov	edx, [ebp+var_2C]
mov	[schedule+58h],	edx
mov	dword ptr [schedule+54h], 0
or	eax, 20h
mov	[schedule+5Fh],	al
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.schedule
mov	esi, eax
cmp	eax, 0
jnz	short loc_641DC292
test	dword ptr [schedule+38h], 0FFFFFFFCh
jz	short loc_641DC236
xor	edx, edx
mov	eax, schedule	
call	_silc_schedule_dispatch_timeout
			
cmp	[ebp+var_2C], 0FFFFFFFFh
jz	loc_641DC100
mov	al, 1
add	esp, 3Ch
pop	schedule
pop	ret
pop	edi
leave
retn
align 4
mov	al, [schedule+5Fh]
jmp	short loc_641DC1EC
align 4
mov	[ebp+tv.tv_sec], 0
test	eax, eax
jns	loc_641DC1D6
mov	eax, [ebp+tv.tv_sec]
dec	eax
mov	[ebp+tv.tv_sec], eax
test	eax, eax
js	short loc_641DC27A
add	[ebp+tv.tv_usec], 0F4240h
jmp	loc_641DC1D6
mov	[ebp+tv.tv_sec], 0
jmp	short loc_641DC26E
mov	eax, schedule	
call	_silc_schedule_task_remove
mov	edx, [schedule+30h]
jmp	loc_641DC19A
jle	short loc_641DC30B
mov	ret, schedule	
call	_silc_schedule_dispatch_fd
test	byte ptr [schedule+5Fh], 20h
jz	short loc_641DC236
cmp	dword ptr [schedule+54h], 0
jnz	short loc_641DC236
cmp	dword ptr [schedule+58h], 0C34Fh
jg	short loc_641DC236
jmp	loc_641DC22D
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_call
and	byte ptr [schedule+5Fh], 7Fh
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule]
mov	[esp+4], eax	
mov	[esp], schedule	
call	ds:_schedule_ops.signals_block
mov	al, [schedule+5Fh]
jmp	loc_641DC10B
			
xor	eax, eax
jmp	loc_641DC242
call	__errno
cmp	dword ptr [eax], 4
jz	loc_641DC236
cmp	ret, 0FFFFFFFEh
jz	loc_641DC240
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+4], eax
mov	dword ptr [esp], offset	aErrorInSelectP	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641DC236
align 4
public _silc_schedule
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+schedule]
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebx]
mov	[esp+4], eax	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_block
mov	edx, 0FFFFFFFFh	
mov	eax, ebx	
call	_silc_schedule_iterate
mov	eax, [ebx]
mov	[esp+4], eax	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_unblock
mov	eax, [ebx+50h]
mov	[ebp+schedule],	eax
add	esp, 14h
pop	ebx
leave
jmp	_silc_mutex_unlock
align 4
public _silc_schedule_one
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+schedule]
mov	ret, [ebx+50h]
mov	[esp], ret	
call	_silc_mutex_lock
mov	ret, [ebx]
mov	[esp+4], ret	
mov	[esp], ebx	
call	ds:_schedule_ops.signals_block
mov	edx, [ebp+timeout_usecs] 
mov	ret, ebx	
call	_silc_schedule_iterate
mov	edx, [ebx]
mov	[esp+4], edx	
mov	[esp], ebx	
mov	[ebp+var_C], al
call	ds:_schedule_ops.signals_unblock
mov	edx, [ebx+50h]
mov	[esp], edx	
call	_silc_mutex_unlock
mov	al, [ebp+var_C]
add	esp, 24h
pop	ebx
leave
retn
public _silc_schedule_uninit
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+schedule]
test	byte ptr [ebx+5Fh], 40h
jz	short loc_641DC414
xor	eax, eax
add	esp, 14h
pop	schedule_0
leave
retn
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_block
mov	edx, 1		
mov	eax, schedule_0	
call	_silc_schedule_dispatch_timeout
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_unblock
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
cmp	byte ptr [schedule_0+5Fh], 0
js	loc_641DC4E8
mov	dword ptr [esp+4], 1 
mov	[esp], schedule_0 
call	_silc_schedule_task_del
mov	edx, 1		
mov	eax, schedule_0	
call	_silc_schedule_task_remove
mov	eax, [schedule_0+3Ch]
mov	[schedule_0+44h], eax
and	byte ptr [schedule_0+4Ch], 0FDh
jmp	short loc_641DC49D
align 4
movzx	edx, word ptr [schedule_0+4Ah]
mov	edx, [eax+edx]
mov	[schedule_0+44h], edx
mov	[esp], eax	
call	_silc_free
mov	eax, [schedule_0+44h]
test	eax, eax
jz	short loc_641DC4B0
test	byte ptr [schedule_0+4Ch], 2
jnz	short loc_641DC488
movzx	edx, word ptr [schedule_0+48h]
mov	edx, [eax+edx]
jmp	short loc_641DC48F
mov	eax, [schedule_0+10h]
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.uninit
mov	eax, [schedule_0+50h]
mov	[esp], eax	
call	_silc_mutex_free
mov	[esp], schedule_0 
call	_silc_free
mov	al, 1
add	esp, 14h
pop	schedule_0
leave
retn
align 4
mov	eax, [schedule_0]
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	ds:_schedule_ops.signals_call
and	byte ptr [schedule_0+5Fh], 7Fh
jmp	loc_641DC45E
public _silc_schedule_init
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	esi, [ebp+app_context]
mov	dword ptr [esp+4], 60h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641DC643
mov	dword ptr [esp+1Ch], 1 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], offset _silc_schedule_fd_destructor 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_uint 
mov	dword ptr [esp], 0 
call	_silc_hash_table_alloc
mov	[schedule+10h],	eax
test	eax, eax
jz	loc_641DC662
mov	eax, [schedule+38h]
and	eax, 3
mov	[schedule+38h],	eax
mov	word ptr [schedule+34h], 0
mov	word ptr [schedule+36h], 0
mov	byte ptr [schedule+38h], 0
mov	dword ptr [schedule+30h], 0
mov	dword ptr [schedule+2Ch], 0
mov	dword ptr [schedule+28h], 0
mov	eax, [schedule+4Ch]
and	eax, 3
mov	[schedule+4Ch],	eax
mov	word ptr [schedule+48h], 0
mov	word ptr [schedule+4Ah], 0
mov	byte ptr [schedule+4Ch], 0
mov	dword ptr [schedule+44h], 0
mov	dword ptr [schedule+40h], 0
mov	dword ptr [schedule+3Ch], 0
mov	[schedule+4], app_context_0
or	byte ptr [schedule+5Fh], 40h
mov	edx, [ebp+max_tasks]
and	edx, 1FFFFFFFh
mov	eax, [schedule+5Ch]
and	eax, 0E0000000h
or	eax, edx
mov	[schedule+5Ch],	eax
lea	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_alloc
mov	[esp+4], app_context_0 
mov	[esp], schedule	
call	ds:_schedule_ops.init
mov	[schedule], eax
test	eax, eax
jz	short loc_641DC64C
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0E10h 
mov	[esp+0Ch], schedule 
mov	dword ptr [esp+8], offset _silc_schedule_timeout_gc 
mov	dword ptr [esp+4], 0 
mov	[esp], schedule	
call	_silc_schedule_task_add
			
mov	eax, schedule
add	esp, 20h
pop	schedule
pop	app_context_0
leave
retn
mov	eax, [schedule+10h]
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [schedule+50h]
mov	[esp], eax	
call	_silc_mutex_free
mov	[esp], schedule	
call	_silc_free
xor	schedule, schedule
jmp	short loc_641DC643
align 10h
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	edi, buffer
mov	ebx, currlen
mov	buffer,	[ebp+max]
mov	[ebp+var_38], eax
test	eax, eax
js	loc_641DC898
mov	eax, [ebp+value]
test	byte ptr [ebp+flags], 40h
jnz	short loc_641DC6B8
test	uvalue,	uvalue
js	loc_641DC8B0
test	byte ptr [ebp+flags], 2
jnz	loc_641DC8A4
test	byte ptr [ebp+flags], 4
jz	short loc_641DC6B8
mov	[ebp+signvalue], 20h
jmp	short loc_641DC6BF
align 4
mov	[ebp+signvalue], 0
mov	edx, [ebp+flags]
and	edx, 20h
mov	[ebp+var_34], edx
xor	edx, edx
lea	esi, [ebp+convert]
mov	[ebp+var_48], esi
mov	[ebp+var_44], buffer
mov	buffer,	currlen
mov	esi, maxlen
jmp	short loc_641DC6FD
align 4
mov	ebx, offset a0123456789ab_0 
xor	edx, edx
div	[ebp+base]
mov	dl, [ebx+edx]
mov	[ebp+place+convert], dl
lea	edx, [place+1]
test	eax, eax
jz	loc_641DC864
cmp	place, 14h
jz	short loc_641DC710
mov	ecx, place
mov	ebx, [ebp+var_34]
test	ebx, ebx
jz	short loc_641DC6DC
mov	ebx, offset a0123456789abcd 
jmp	short loc_641DC6E1
align 10h
mov	place, ecx
mov	ebx, currlen
mov	currlen, [ebp+var_44]
mov	ecx, maxlen
mov	[ebp+var_34], place
mov	uvalue,	[ebp+var_34]
mov	[ebp+eax+convert], 0
mov	place, [ebp+var_38]
sub	edx, eax
mov	[ebp+var_30], edx
mov	esi, eax
mov	edx, [ebp+var_38]
cmp	eax, edx
jge	short loc_641DC737
mov	place, edx
mov	eax, [ebp+min]
sub	eax, place
mov	place, min_0
xor	min_0, min_0
cmp	[ebp+signvalue], 0
setnz	al
sub	spadlen, eax
mov	edx, [ebp+var_30]
test	edx, edx
js	loc_641DC880
test	spadlen, spadlen
js	loc_641DC88F
test	byte ptr [ebp+flags], 10h
jz	short loc_641DC76D
cmp	[ebp+var_30], spadlen
jl	loc_641DC85C
xor	spadlen, spadlen
test	byte ptr [ebp+flags], 1
jz	loc_641DC818
neg	spadlen
cmp	byte ptr [ebp+flags], 0
jns	short loc_641DC799
mov	eax, [currlen]
cmp	maxlen,	eax
jbe	short loc_641DC78B
mov	byte ptr [buffer+eax], 30h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
cmp	maxlen,	eax
ja	loc_641DC850
inc	eax
mov	[currlen], eax
mov	eax, [ebp+signvalue]
test	eax, eax
jz	short loc_641DC7AF
mov	place, [currlen]
cmp	maxlen,	edx
ja	loc_641DC840
lea	eax, [edx+1]
mov	[currlen], eax
mov	place, [ebp+var_30]
test	edx, edx
jz	short loc_641DC7CC
mov	eax, [currlen]
mov	edx, [ebp+var_30]
nop
cmp	maxlen,	eax
jbe	short loc_641DC7C6
mov	byte ptr [buffer+eax], 30h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	zpadlen
jnz	short loc_641DC7BC
mov	eax, [ebp+var_34]
test	eax, eax
jz	short loc_641DC7FA
mov	eax, [currlen]
lea	zpadlen, [ebp+convert]
add	edx, [ebp+var_34]
mov	[ebp+var_30], spadlen
mov	spadlen, maxlen
mov	cl, [edx-1]
cmp	maxlen,	eax
jbe	short loc_641DC7EC
mov	[buffer+eax], cl
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	edx
cmp	edx, [ebp+var_48]
jnz	short loc_641DC7E0
mov	ecx, maxlen
mov	maxlen,	[ebp+var_30]
test	spadlen, spadlen
jz	short loc_641DC810
mov	eax, [currlen]
cmp	maxlen,	eax
jbe	short loc_641DC80A
mov	byte ptr [buffer+eax], 20h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
inc	spadlen
jnz	short loc_641DC800
add	esp, 3Ch
pop	currlen
pop	spadlen
pop	buffer
leave
retn
test	spadlen, spadlen
jle	loc_641DC779
mov	eax, [currlen]
mov	edx, [ebp+var_34]
lea	spadlen, [spadlen+0]
cmp	maxlen,	eax
jbe	short loc_641DC832
mov	byte ptr [buffer+eax], 20h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	spadlen
jnz	short loc_641DC828
mov	[ebp+var_34], place
jmp	loc_641DC779
mov	al, byte ptr [ebp+signvalue]
mov	[buffer+edx], al
mov	edx, [currlen]
jmp	loc_641DC7AA
align 10h
mov	byte ptr [buffer+eax], 78h
mov	eax, [currlen]
jmp	loc_641DC796
align 4
mov	[ebp+var_30], spadlen
jmp	loc_641DC76B
mov	[ebp+var_34], place
mov	place, ecx
mov	ebx, currlen
mov	currlen, [ebp+var_44]
mov	ecx, maxlen
cmp	[ebp+var_34], 14h
jnz	loc_641DC71C
jmp	loc_641DC719
align 10h
mov	[ebp+var_30], 0
test	spadlen, spadlen
jns	loc_641DC75C
xor	spadlen, spadlen
jmp	loc_641DC75C
align 4
mov	[ebp+var_38], 0
jmp	loc_641DC68B
mov	[ebp+signvalue], 2Bh
jmp	loc_641DC6BF
neg	uvalue
mov	[ebp+signvalue], 2Dh
jmp	loc_641DC6BF
align 10h
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 94h
fld	[ebp+x0]
mov	ebx, iptr
fld	st
fld1
fld	st
fxch	st(2)
xor	edx, edx
fnstcw	[ebp+var_1A]
mov	ax, [ebp+var_1A]
mov	ah, 0Ch
mov	[ebp+var_1C], ax
jmp	short loc_641DC904
fstp	st
jmp	short loc_641DC8EE
fstp	st
fmul	ds:dbl_642644D0
fxch	st(2)
fmul	ds:flt_642644D8
inc	i
cmp	i, 64h
jz	short loc_641DC94C
fxch	st(2)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DC8E8
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DC8EC
test	i, i
jnz	short loc_641DC96C
fstp	st(3)
fstp	st(3)
fstp	st
fst	qword ptr [iptr]
fsubp	st(1), st
add	esp, 94h
pop	iptr
leave
retn
align 4
fstp	st
fstp	st
fstp	st
fstp	st
mov	dword ptr [iptr], 0
mov	dword ptr [iptr+4], 0
fldz
add	esp, 94h
pop	iptr
leave
retn
fstp	st(1)
fmulp	st(2), st
fxch	st(2)
fsub	st, st(1)
fld	st
xor	i, i
fld1
fxch	st(1)
jmp	short loc_641DC99C
align 10h
fstp	st
jmp	short loc_641DC986
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jz	short loc_641DC9EB
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DC980
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DC984
test	edx, edx
jnz	short loc_641DC9F9
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
faddp	st(2), st
fxch	st(1)
fstp	qword ptr [iptr]
add	esp, 94h
pop	iptr
leave
retn
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DC9DC
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_50]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCA2C
align 10h
fstp	st
jmp	short loc_641DCA16
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jz	short loc_641DCA74
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DCA10
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCA14
test	edx, edx
jnz	short loc_641DCA82
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_50]
jmp	loc_641DC9DC
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCA6C
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_48]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCAB4
align 4
fstp	st
jmp	short loc_641DCA9E
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jz	short loc_641DCAFC
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DCA98
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCA9C
test	edx, edx
jnz	short loc_641DCB0A
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_48]
jmp	loc_641DCA6C
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCAF4
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_40]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCB3B
fstp	st
jmp	short loc_641DCB25
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jz	short loc_641DCB7F
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
sahf
jb	short loc_641DCB1F
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
sahf
jb	short loc_641DCB23
test	edx, edx
jnz	short loc_641DCB8D
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_40]
jmp	loc_641DCAF4
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCB77
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_38]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCBBE
fstp	st
jmp	short loc_641DCBA8
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jz	short loc_641DCC02
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
sahf
jb	short loc_641DCBA2
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
sahf
jb	short loc_641DCBA6
test	edx, edx
jnz	short loc_641DCC10
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_38]
jmp	loc_641DCB77
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCBFA
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_30]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCC27
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
sahf
jb	short loc_641DCC57
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
sahf
jnb	short loc_641DCC7B
fstp	st
jmp	short loc_641DCC59
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jnz	short loc_641DCC25
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCC8B
test	edx, edx
jnz	short loc_641DCC93
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_30]
jmp	loc_641DCBFA
fstp	st(1)
fmulp	st(4), st
fxch	st(3)
fst	[ebp+var_28]
fsubp	st(1), st
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCCAA
fxch	st(4)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
sahf
jb	short loc_641DCCDA
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
sahf
jnb	short loc_641DCCFE
fstp	st
jmp	short loc_641DCCDC
fstp	st
fmul	ds:dbl_642644D0
fxch	st(4)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jnz	short loc_641DCCA8
fstp	st
fstp	st
fstp	st
fstp	st(1)
fldz
fld	st
jmp	short loc_641DCD0E
test	edx, edx
jnz	short loc_641DCD16
fstp	st(5)
fstp	st(2)
fstp	st
fxch	st(1)
fxch	st(2)
fsub	st(1), st
			
fadd	[ebp+var_28]
jmp	loc_641DCC8B
fstp	st(1)
fmulp	st(4), st
fxch	st(1)
fsub	st, st(3)
fld	st
xor	edx, edx
fld1
fxch	st(1)
jmp	short loc_641DCD2A
fxch	st(3)
fldcw	[ebp+var_1C]
fist	[ebp+var_20]
fldcw	[ebp+var_1A]
mov	eax, [ebp+var_20]
mov	[ebp+var_20], eax
fild	[ebp+var_20]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
sahf
jb	short loc_641DCD5A
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
sahf
jnb	short loc_641DCD7E
fstp	st
jmp	short loc_641DCD5C
fstp	st
fmul	ds:dbl_642644D0
fxch	st(3)
fmul	ds:flt_642644D8
inc	edx
cmp	edx, 64h
jnz	short loc_641DCD28
fstp	st
fstp	st
fstp	st
fstp	st
fldz
fld	st
jmp	short loc_641DCD8C
fstp	st(2)
fxch	st(1)
test	edx, edx
jnz	short loc_641DCD97
fstp	st(2)
fstp	st(2)
fsub	st(1), st
			
faddp	st(3), st
fxch	st(1)
fxch	st(2)
jmp	loc_641DCD0E
fstp	st(1)
fmulp	st(2), st
lea	eax, [ebp+var_10] 
fsub	st, st(1)
fstp	qword ptr [esp]	
fxch	st(1)
fstp	[ebp+var_88]
fxch	st(1)
fstp	[ebp+var_78]
fstp	[ebp+var_68]
call	_my_modf
fld	[ebp+var_68]
fadd	[ebp+var_10]
fld	[ebp+var_88]
fld	[ebp+var_78]
fxch	st(3)
fxch	st(1)
fxch	st(2)
jmp	short loc_641DCD8C
align 10h
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 31Ch
mov	ebx, buffer
mov	esi, currlen
mov	edi, maxlen
fld	[ebp+fvalue.value]
mov	buffer,	[ebp+max]
test	eax, eax
js	loc_641DD5FC
mov	[ebp+var_2BC], max_0
cmp	max_0, 10h
jg	loc_641DD589
fldz
fucomp	st(1)
fnstsw	ax
test	ah, 45h
jnz	loc_641DD509
fchs
fstp	[ebp+var_2A0]
fld	[ebp+var_2A0]
mov	[ebp+signvalue], 2Dh
fld	st
xor	edx, edx
fld1
fld	st
fxch	st(2)
fnstcw	[ebp+var_2A2]
mov	ax, [ebp+var_2A2]
mov	ah, 0Ch
mov	[ebp+var_2A4], ax
jmp	short loc_641DCE6C
fstp	st
fxch	st(2)
jmp	short loc_641DCE54
align 10h
fstp	st
fxch	st(2)
fmul	fracpart:flt_642644D8
inc	edx
cmp	edx, 64h
jz	loc_641DD5CE
fxch	st(2)
fmul	fracpart:dbl_642644D0
fldcw	[ebp+var_2A4]
fist	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	[ebp+var_2A8], eax
fild	[ebp+var_2A8]
fld	st(1)
fadd	st, st(3)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DCE48
fld	st(1)
fsub	st, st(3)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCE50
fstp	st(2)
fstp	st
test	edx, edx
jnz	loc_641DD648
fstp	st(1)
mov	ecx, [ebp+var_2BC]
test	ecx, ecx
jz	loc_641DD5E4
mov	eax, [ebp+var_2BC]
fld1
fld	fracpart:flt_642644D8
fmul	st(1), st
dec	max_0
jnz	short loc_641DCED8
fstp	st
fxch	st(2)
fsub	st, st(1)
fmulp	st(2), st
fld	st(1)
fldcw	[ebp+var_2A4]
fistp	[ebp+var_2B0]
fldcw	[ebp+var_2A2]
mov	edx, dword ptr [ebp+var_2B0]
mov	ecx, dword ptr [ebp+var_2B0+4]
mov	dword ptr [ebp+var_2B0], edx
mov	dword ptr [ebp+var_2B0+4], ecx
fild	[ebp+var_2B0]
fsubp	st(2), st
fld	fracpart:flt_642644DC
fxch	st(2)
fucomp	st(2)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCF32
add	edx, 1
adc	ecx, 0
mov	dword ptr [ebp+var_2B0], edx
mov	dword ptr [ebp+var_2B0+4], ecx
fild	[ebp+var_2B0]
fld	st
mov	edx, [ebp+var_2BC]
test	edx, edx
jz	loc_641DD695
mov	eax, [ebp+var_2BC]
fld1
fld	fracpart:flt_642644D8
xchg	ax, ax
fmul	st(1), st
dec	max_0
jnz	short loc_641DCF64
fstp	st
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCFB9
fstp	st(1)
mov	eax, [ebp+var_2BC]
test	eax, eax
jz	loc_641DD63F
mov	eax, [ebp+var_2BC]
fld1
fld	fracpart:flt_642644D8
xchg	ax, ax
fmul	st(1), st
dec	max_0
jnz	short loc_641DCF98
fstp	st
fxch	st(2)
fadd	fracpart:flt_642644CC
fxch	st(2)
fsubp	st(1), st
fstp	[ebp+var_2A0]
fld	[ebp+var_2A0]
jmp	short loc_641DCFBB
fstp	st
xor	ecx, ecx
fld1
nop
fld	fracpart:dbl_642644D0
fmulp	st(3), st
fld	st(2)
xor	edx, edx
fld	st(1)
fld1
fxch	st(2)
jmp	short loc_641DCFF4
fstp	st
jmp	short loc_641DCFDA
fstp	st
fld	fracpart:flt_642644D8
fmul	st(2), st
inc	edx
cmp	edx, 64h
jz	loc_641DD0A7
fstp	st
fmul	fracpart:dbl_642644D0
fldcw	[ebp+var_2A4]
fist	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	[ebp+var_2A8], eax
fild	[ebp+var_2A8]
fld	st(1)
fadd	st, st(4)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DCFD4
fld	st(1)
fsub	st, st(4)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DCFD8
fstp	st(3)
fstp	st
fxch	st(1)
test	edx, edx
jnz	loc_641DD490
fstp	st(1)
fsub	st(3), st
fxch	st(3)
fadd	fracpart:dbl_642644E0
fmul	fracpart:flt_642644D8
fldcw	[ebp+var_2A4]
fistp	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	al, byte ptr fracpart:a0123456789ab_0[eax] 
mov	[ebp+iplace+iconvert], al
lea	edx, [iplace+1]
fldz
fxch	st(3)
fucom	st(3)
fnstsw	ax
fstp	st(3)
and	ah, 45h
cmp	ah, 40h
jz	loc_641DD6B3
cmp	iplace,	137h
jz	loc_641DD5ED
mov	ecx, iplace
jmp	loc_641DCFC0
fstp	st(4)
fstp	st
fstp	st
fstp	st
fxch	st(2)
fadd	fracpart:dbl_642644E0
fmulp	st(2), st
fxch	st(1)
fldcw	[ebp+var_2A4]
fistp	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	al, byte ptr fracpart:a0123456789ab_0[eax] 
mov	[ebp+iplace+iconvert], al
lea	edx, [iplace+1]
mov	[ebp+var_2C0], iplace
cmp	iplace,	137h
jz	loc_641DD5F1
mov	iplace,	[ebp+var_2C0]
mov	[ebp+edx+iconvert], 0
fldz
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
and	ah, 45h
cmp	ah, 40h
jz	loc_641DD52E
mov	[ebp+var_2B4], 0
fld1
lea	iplace,	[ebp+fconvert]
mov	[ebp+var_2B8], buffer
xor	buffer,	buffer
nop
fld	fracpart:dbl_642644D0
fmulp	st(2), st
fld	st(1)
xor	edx, edx
fld	st(1)
fld1
fxch	st(2)
jmp	short loc_641DD168
fstp	st
jmp	short loc_641DD14E
fstp	st
fld	fracpart:flt_642644D8
fmul	st(2), st
inc	edx
cmp	edx, 64h
jz	loc_641DD218
fstp	st
fmul	fracpart:dbl_642644D0
fldcw	[ebp+var_2A4]
fist	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	[ebp+var_2A8], eax
fild	[ebp+var_2A8]
fld	st(1)
fadd	st, st(4)
fucomp	st(1)
fnstsw	ax
test	ah, 5
jnz	short loc_641DD148
fld	st(1)
fsub	st, st(4)
fxch	st(1)
fucom	st(1)
fnstsw	ax
fstp	st(1)
test	ah, 5
jnz	short loc_641DD14C
fstp	st(3)
fstp	st
fxch	st(1)
test	edx, edx
jnz	loc_641DD42B
fstp	st(1)
fsub	st(2), st
fxch	st(2)
fadd	fracpart:dbl_642644E0
fmul	fracpart:flt_642644D8
fldcw	[ebp+var_2A4]
fistp	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	al, byte ptr fracpart:a0123456789ab_0[eax] 
mov	[ecx+fplace], al
lea	edx, [fplace+1]
fldz
fxch	st(2)
fucom	st(2)
fnstsw	ax
fstp	st(2)
and	ah, 45h
cmp	ah, 40h
jz	loc_641DD6C2
cmp	fplace,	137h
jz	loc_641DD69E
mov	ebx, fplace
jmp	loc_641DD134
align 4
fstp	st(4)
fstp	st
fstp	st
fstp	st
fxch	st(1)
mov	[ebp+var_2B4], fplace
mov	fplace,	[ebp+var_2B8]
fadd	fracpart:dbl_642644E0
fmulp	st(1), st
fldcw	[ebp+var_2A4]
fistp	[ebp+var_2A8]
fldcw	[ebp+var_2A2]
mov	eax, [ebp+var_2A8]
mov	al, byte ptr fracpart:a0123456789ab_0[eax] 
mov	edx, [ebp+var_2B4]
mov	[ebp+edx+fconvert], al
inc	edx
cmp	fplace,	137h
jz	short loc_641DD270
mov	[ebp+var_2B4], fplace
mov	fplace,	[ebp+var_2B4]
mov	[ebp+edx+fconvert], 0
mov	edx, [ebp+var_2BC]
not	edx
add	edx, [ebp+min]
xor	eax, eax
cmp	[ebp+signvalue], 0
setnz	al
sub	padlen,	eax
sub	padlen,	[ebp+var_2C0]
mov	eax, [ebp+var_2BC]
sub	eax, [ebp+var_2B4]
mov	[ebp+var_2C8], eax
jns	short loc_641DD2BB
mov	[ebp+var_2C8], 0
mov	[ebp+var_2B8], padlen
test	padlen,	padlen
js	loc_641DD57A
test	byte ptr [ebp+flags], 1
jz	short loc_641DD2D5
neg	[ebp+var_2B8]
test	byte ptr [ebp+flags], 10h
jz	short loc_641DD313
mov	iplace,	[ebp+var_2B8]
test	ecx, ecx
jle	short loc_641DD33E
mov	eax, [ebp+signvalue]
test	eax, eax
jz	loc_641DD60B
mov	eax, [currlen]
cmp	maxlen,	eax
ja	loc_641DD62F
inc	eax
mov	[currlen], eax
dec	[ebp+var_2B8]
jz	short loc_641DD355
mov	padlen,	[ebp+var_2B8]
jmp	loc_641DD614
mov	padlen,	[ebp+var_2B8]
test	edx, edx
jle	short loc_641DD33E
mov	eax, [currlen]
mov	edx, [ebp+var_2B8]
lea	currlen, [currlen+0]
cmp	maxlen,	eax
jbe	short loc_641DD332
mov	byte ptr [buffer+eax], 20h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	padlen
jnz	short loc_641DD328
mov	[ebp+var_2B8], padlen
mov	iplace,	[ebp+signvalue]
test	ecx, ecx
jz	short loc_641DD355
mov	eax, [currlen]
cmp	maxlen,	eax
ja	loc_641DD5A3
inc	eax
mov	[currlen], eax
mov	padlen,	[ebp+var_2C0]
test	edx, edx
jz	short loc_641DD38C
mov	eax, [currlen]
lea	edx, [ebp+iconvert]
mov	[ebp+var_30C], edx
add	edx, [ebp+var_2C0]
nop
mov	cl, [edx-1]
cmp	maxlen,	eax
jbe	short loc_641DD380
mov	[buffer+eax], cl
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	edx
cmp	edx, [ebp+var_30C]
jnz	short loc_641DD374
mov	eax, [ebp+var_2BC]
test	eax, eax
jz	short loc_641DD3FC
mov	eax, [currlen]
cmp	maxlen,	eax
ja	loc_641DD598
inc	eax
mov	[currlen], eax
mov	edx, [ebp+var_2C8]
test	edx, edx
jz	short loc_641DD3C4
mov	edx, [ebp+var_2C8]
nop
cmp	maxlen,	eax
jbe	short loc_641DD3BE
mov	byte ptr [buffer+eax], 30h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	zpadlen
jnz	short loc_641DD3B4
mov	eax, [ebp+var_2B4]
test	eax, eax
jz	short loc_641DD3FC
mov	eax, [currlen]
lea	zpadlen, [ebp+fconvert]
mov	[ebp+var_310], edx
add	edx, [ebp+var_2B4]
xchg	ax, ax
mov	cl, [edx-1]
cmp	maxlen,	eax
jbe	short loc_641DD3F0
mov	[buffer+eax], cl
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	edx
cmp	edx, [ebp+var_310]
jnz	short loc_641DD3E4
mov	ecx, [ebp+var_2B8]
test	ecx, ecx
jz	short loc_641DD420
mov	eax, [currlen]
mov	zpadlen, [ebp+var_2B8]
xchg	ax, ax
cmp	maxlen,	eax
jbe	short loc_641DD41A
mov	byte ptr [buffer+eax], 20h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
inc	padlen
jnz	short loc_641DD410
add	esp, 31Ch
pop	buffer
pop	currlen
pop	maxlen
leave
retn
fmulp	st(1), st
fld	st(2)
fsub	st, st(1)
fstp	qword ptr [esp]	
lea	eax, [ebp+iptr]	
mov	[ebp+var_2EC], ecx
fstp	[ebp+var_2D8]
fxch	st(1)
fstp	[ebp+var_2F8]
fstp	[ebp+var_2E8]
call	_my_modf
fstp	st
fld	[ebp+var_2D8]
fadd	[ebp+iptr]
fnstcw	[ebp+var_2A2]
mov	ax, [ebp+var_2A2]
mov	ah, 0Ch
mov	[ebp+var_2A4], ax
fld	[ebp+var_2E8]
fld	[ebp+var_2F8]
fxch	st(2)
mov	ecx, [ebp+var_2EC]
jmp	loc_641DD1BA
fmulp	st(1), st
fld	st(3)
fsub	st, st(1)
fstp	qword ptr [esp]	
fxch	st(2)
lea	eax, [ebp+iptr]	
mov	[ebp+var_2EC], iplace
fstp	[ebp+var_2D8]
fxch	st(2)
fstp	[ebp+var_2F8]
fxch	st(1)
fstp	[ebp+var_2E8]
fstp	[ebp+var_308]
call	_my_modf
fstp	st
fld	[ebp+var_308]
fadd	[ebp+iptr]
fnstcw	[ebp+var_2A2]
mov	ax, [ebp+var_2A2]
mov	ah, 0Ch
mov	[ebp+var_2A4], ax
fld	[ebp+var_2E8]
fld	[ebp+var_2F8]
fld	[ebp+var_2D8]
fxch	st(2)
fxch	st(1)
fxch	st(3)
mov	ecx, [ebp+var_2EC]
jmp	loc_641DD046
fstp	[ebp+var_2A0]
fld	[ebp+var_2A0]
test	byte ptr [ebp+flags], 2
jz	loc_641DD5B3
mov	[ebp+signvalue], 2Bh
jmp	loc_641DCE26
fstp	st
mov	[ebp+fconvert],	0
mov	edx, [ebp+var_2BC]
not	edx
add	edx, [ebp+min]
xor	eax, eax
cmp	[ebp+signvalue], 0
setnz	al
sub	padlen,	eax
sub	padlen,	[ebp+var_2C0]
mov	eax, [ebp+var_2BC]
mov	[ebp+var_2C8], eax
mov	[ebp+var_2B4], 0
mov	[ebp+var_2B8], padlen
test	padlen,	padlen
jns	loc_641DD2C9
mov	[ebp+var_2B8], 0
jmp	loc_641DD2C9
mov	[ebp+var_2BC], 10h
jmp	loc_641DCDFF
mov	byte ptr [buffer+eax], 2Eh
mov	eax, [currlen]
jmp	loc_641DD3A0
mov	dl, byte ptr [ebp+signvalue]
mov	[buffer+eax], dl
mov	eax, [currlen]
jmp	loc_641DD352
mov	eax, [ebp+flags]
and	eax, 4
cmp	eax, 1
sbb	eax, eax
not	eax
and	eax, 20h
mov	[ebp+signvalue], eax
jmp	loc_641DCE26
fstp	st
fstp	st
fstp	st
fldz
mov	ecx, [ebp+var_2BC]
test	ecx, ecx
jnz	loc_641DCECA
fld1
fxch	st(2)
jmp	loc_641DCEE1
fstp	st
fstp	st(1)
mov	[ebp+var_2C0], ecx
jmp	loc_641DD0F5
mov	[ebp+var_2BC], 6
jmp	loc_641DCDFF
mov	eax, [currlen]
mov	padlen,	[ebp+var_2B8]
nop
cmp	maxlen,	eax
jbe	short loc_641DD61E
mov	byte ptr [buffer+eax], 30h
mov	eax, [currlen]
inc	eax
mov	[currlen], eax
dec	padlen
jnz	short loc_641DD614
mov	[ebp+var_2B8], padlen
jmp	loc_641DD355
mov	dl, byte ptr [ebp+signvalue]
mov	[buffer+eax], dl
mov	eax, [currlen]
jmp	loc_641DD2FD
fld1
fxch	st(2)
jmp	loc_641DCFA1
fmulp	st(1), st
lea	eax, [ebp+iptr]	
fld	st(1)
fsub	st, st(1)
fstp	qword ptr [esp]	
fxch	st(1)
fstp	[ebp+var_2D8]
fstp	[ebp+var_308]
call	_my_modf
fstp	st
fld	[ebp+var_308]
fadd	[ebp+iptr]
fnstcw	[ebp+var_2A2]
mov	ax, [ebp+var_2A2]
mov	ah, 0Ch
mov	[ebp+var_2A4], ax
fld	[ebp+var_2D8]
fxch	st(1)
jmp	loc_641DCEBC
fld1
fxch	st(1)
jmp	loc_641DCF6D
fstp	st
fstp	st
mov	[ebp+var_2B4], ebx
mov	ebx, [ebp+var_2B8]
jmp	loc_641DD270
fstp	st
fstp	st(1)
mov	[ebp+var_2C0], iplace
jmp	loc_641DD0E9
fstp	st
fstp	st
mov	[ebp+var_2B4], ebx
mov	ebx, [ebp+var_2B8]
jmp	loc_641DD262
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	[ebp+buffer], buffer
mov	[ebp+maxlen], maxlen
mov	[ebp+currlen], 0
mov	dl, [format]
lea	ebx, [format+1]
mov	edi, [ebp+args_in]
mov	[ebp+cflags], 0
mov	[ebp+flags], 0
xor	buffer,	buffer
mov	ecx, 0FFFFFFFFh
mov	[ebp+min], 0
mov	[ebp+max], max
test	dl, dl
jz	short loc_641DD72C
lea	esi, [esi+0]
cmp	state, 6	
jbe	short loc_641DD75C
mov	esi, args	
mov	args, esi
lea	esi, [esi+0]
test	dl, dl
jnz	short loc_641DD71C
mov	format,	[ebp+maxlen]
test	ebx, ebx
jz	short loc_641DD750
mov	state, [ebp+currlen]
mov	ch_0, [ebp+maxlen]
dec	edx
cmp	edx, eax
ja	loc_641DD8C4
mov	edx, [ebp+buffer]
mov	currlen_0, [ebp+maxlen]
mov	byte ptr [edx+eax-1], 0
lea	esi, [esi+0]
mov	state, [ebp+currlen]
add	esp, 6Ch
pop	ebx
pop	esi
pop	args
leave
retn
align 4
jmp	ds:off_6426431C[state*4] 
align 4
			
cmp	dl, 68h		
jz	loc_641DD980
cmp	dl, 6Ch
jz	loc_641DD95C
cmp	dl, 4Ch
jz	loc_641DD8D4
mov	state, 6
jmp	short loc_641DD721 
align 4
			
movzx	esi, dl		
sub	ch_0, 30h
cmp	esi, 9
ja	loc_641DD884
mov	max, [ebp+max]
test	max, max
js	loc_641DDCF4
lea	max, [max+max*4]
movsx	edx, dl
lea	ch_0, [ch_0+ecx*2-30h]
mov	[ebp+max], edx
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
align 4
			
cmp	dl, 2Eh		
jz	loc_641DD948
mov	esi, args
mov	state, 5
mov	args, esi
jmp	loc_641DD728
align 4
			
movzx	esi, dl		
sub	ch_0, 30h
cmp	esi, 9
ja	loc_641DD8A4
mov	max, [ebp+min]
lea	esi, [ecx+ecx*4]
movsx	edx, dl
lea	ch_0, [ch_0+esi*2-30h]
mov	[ebp+min], edx
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
align 10h
			
lea	esi, [ch_0-20h]	
mov	max, esi
cmp	cl, 10h		
jbe	short loc_641DD874
			
mov	state, 2	
jmp	loc_641DD721	
			
sub	ch_0, 25h
cmp	dl, 53h		
jbe	short loc_641DD848
			
mov	esi, args	
xchg	ax, ax
mov	dl, [format]
inc	format
mov	[ebp+cflags], 0
mov	[ebp+flags], 0
xor	state, state
mov	[ebp+max], 0FFFFFFFFh
mov	[ebp+min], 0
mov	edi, args
jmp	loc_641DD728
movzx	edx, dl
jmp	ds:off_64264338[edx*4] 
align 4
			
cmp	dl, 25h		
jz	loc_641DD93C
mov	max, [ebp+currlen]
cmp	[ebp+maxlen], ecx
ja	short loc_641DD8BC
lea	esi, [ecx+1]
mov	[ebp+currlen], esi
mov	dl, [format]
inc	format
jmp	loc_641DD721	
align 4
and	esi, 0FFh
jmp	ds:off_64264488[esi*4] 
align 4
cmp	dl, 2Ah
jnz	loc_641DD7C5
lea	esi, [args+4]
mov	edi, [edi]
mov	[ebp+max], edi
mov	dl, [format]
inc	format
mov	state, 5
mov	edi, args
jmp	loc_641DD728
cmp	dl, 2Ah
jz	loc_641DD998
mov	esi, args
mov	state, 3
mov	args, esi
jmp	loc_641DD728
align 4
mov	esi, [ebp+buffer]
mov	[esi+ecx], dl
jmp	short loc_641DD865
mov	args, [ebp+buffer]
mov	byte ptr [edi+currlen_0], 0
add	esp, 6Ch
pop	ebx
pop	args
pop	edi
leave
retn
align 4
mov	dl, [format]
inc	format
mov	esi, args
mov	[ebp+cflags], 3
mov	state, 6
mov	args, esi
jmp	loc_641DD728
			
or	[ebp+flags], 8	
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
			
or	[ebp+flags], 4	
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
			
or	[ebp+flags], 10h 
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
			
or	[ebp+flags], 1	
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
			
or	[ebp+flags], 2	
mov	dl, [format]
inc	format
mov	esi, args
mov	args, esi
jmp	loc_641DD728
mov	state, 1
jmp	loc_641DD86B
align 4
mov	dl, [format]
inc	format
mov	esi, args
mov	state, 4
mov	args, esi
jmp	loc_641DD728
align 4
mov	dl, [format]
inc	format
cmp	dl, 6Ch
jz	loc_641DDCFB
mov	esi, args
mov	[ebp+cflags], 2
mov	state, 6
mov	args, esi
jmp	loc_641DD728
align 10h
mov	dl, [format]
inc	format
mov	esi, args
mov	[ebp+cflags], 1
mov	state, 6
mov	args, esi
jmp	loc_641DD728
lea	esi, [args+4]
mov	edi, [edi]
mov	[ebp+min], edi
mov	dl, [format]
inc	format
mov	state, 3
mov	edi, args
jmp	loc_641DD728
			
or	[ebp+flags], 20h
			
cmp	[ebp+cflags], 3	
jz	loc_641DDD7A
lea	esi, [args+8]
fld	qword ptr [edi]
mov	max, [ebp+flags]
mov	[esp+14h], ecx	
mov	args, [ebp+max]
mov	[esp+10h], edi	
mov	state, [ebp+min]
mov	[esp+0Ch], eax	
fstp	tbyte ptr [esp]
mov	max, [ebp+maxlen] 
lea	edx, [ebp+currlen] 
mov	eax, [ebp+buffer] 
call	_fmtfp
jmp	loc_641DD820
			
or	[ebp+flags], 20h
			
cmp	[ebp+cflags], 1	
jz	short loc_641DDA07
cmp	[ebp+cflags], 2
jz	short loc_641DDA07
cmp	[ebp+cflags], 4
jz	loc_641DDD8E
lea	esi, [args+4]
mov	state, [edi]
mov	args, [ebp+flags]
or	edi, 40h
mov	[esp+10h], edi	
mov	max, [ebp+max]
mov	[esp+0Ch], ecx	
mov	edi, [ebp+min]
mov	[esp+8], edi	
mov	dword ptr [esp+4], 10h 
mov	[esp], eax
mov	max, [ebp+maxlen] 
lea	edx, [ebp+currlen] 
mov	eax, [ebp+buffer] 
call	_fmtint
jmp	loc_641DD820
			
or	[ebp+flags], 20h
			
cmp	[ebp+cflags], 3	
jz	loc_641DDD84
lea	esi, [args+8]
fld	qword ptr [edi]
mov	args, [ebp+flags]
mov	[esp+14h], edi
mov	state, [ebp+max]
mov	[esp+10h], eax
mov	edx, [ebp+min]
mov	[esp+0Ch], edx
jmp	loc_641DD9D7
			
cmp	[ebp+cflags], 1
jz	loc_641DDD98
cmp	[ebp+cflags], 2
jz	loc_641DDD6B
cmp	[ebp+cflags], 4
jz	loc_641DDDDF
lea	esi, [args+4]
mov	state, [edi]
mov	edx, [ebp+currlen]
mov	[eax], edx
jmp	loc_641DD820
			
inc	format
mov	esi, args
jmp	loc_641DD820
			
cmp	[ebp+cflags], 3	
jz	loc_641DDDA8
lea	esi, [args+8]
fld	qword ptr [edi]
mov	state, [ebp+flags]
mov	[esp+14h], eax
mov	edx, [ebp+max]
mov	[esp+10h], edx
mov	max, [ebp+min]
mov	[esp+0Ch], ecx
jmp	loc_641DD9D7
			
mov	state, [ebp+currlen]
cmp	[ebp+maxlen], eax
jbe	short loc_641DDADC
mov	esi, [ebp+buffer]
mov	byte ptr [esi+eax], 25h
inc	eax
mov	[ebp+currlen], eax
jmp	loc_641DD81C	
			
lea	esi, [args+4]
mov	edx, [edi]
mov	state, [ebp+currlen]
cmp	[ebp+maxlen], eax
jbe	short loc_641DDAF8
mov	max, [ebp+buffer]
mov	[ecx+eax], dl
inc	eax
mov	[ebp+currlen], eax
jmp	loc_641DD820
			
cmp	[ebp+cflags], 1
jz	loc_641DDCBF
cmp	[ebp+cflags], 2
jz	loc_641DDCBF
cmp	[ebp+cflags], 4
jnz	loc_641DDCBF
lea	esi, [args+8]
mov	state, [edi]
jmp	loc_641DDCC4
			
cmp	[ebp+cflags], 1
jz	loc_641DDC95
cmp	[ebp+cflags], 2
jz	loc_641DDC95
cmp	[ebp+cflags], 4
jnz	loc_641DDC95
lea	esi, [args+8]
mov	state, [edi]
jmp	loc_641DDC9A
			
lea	esi, [args+4]
mov	edi, [edi]
mov	[ebp+cflags], edi
test	edi, edi
jz	loc_641DDDD3
cmp	[ebp+max], 0FFFFFFFFh
jz	loc_641DDDB2
mov	edi, [ebp+min]
test	edi, edi
jle	short loc_641DDB84
mov	max, [ebp+max]
test	ecx, ecx
js	short loc_641DDB84
mov	state, [ebp+min]
cmp	[ebp+max], eax
jge	short loc_641DDB84
mov	[ebp+max], eax
mov	edx, [ebp+cflags]
movzx	edi, byte ptr [edx]
mov	max, edi
test	cl, cl
jz	loc_641DDDF5
xor	state, state
mov	ecx, [ebp+max]
mov	edx, [ebp+cflags]
inc	eax
cmp	byte ptr [strvalue+eax], 0
jnz	short loc_641DDB9C
mov	[ebp+max], max
mov	strvalue, [ebp+min]
sub	edx, eax
mov	[ebp+min], edx
js	loc_641DDDC7
test	byte ptr [ebp+flags], 1
jz	loc_641DDD13
neg	[ebp+min]
xor	eax, eax
mov	max, edi
test	cl, cl
jz	short loc_641DDC0B
cmp	[ebp+max], eax
jle	short loc_641DDC0B
mov	edx, [ebp+currlen]
mov	[ebp+flags], format
mov	[ebp+var_4C], args
mov	args, [ebp+max]
mov	ecx, edi
mov	format,	[ebp+cflags]
mov	edi, max
jmp	short loc_641DDBE8
align 4
cmp	max, eax
jle	short loc_641DDC02
inc	strvalue
cmp	[ebp+maxlen], edx
jbe	short loc_641DDBF7
mov	esi, [ebp+buffer]
mov	[esi+edx], cl
mov	edx, [ebp+currlen]
inc	edx
mov	[ebp+currlen], edx
inc	eax
mov	cl, [strvalue]
test	cl, cl
jnz	short loc_641DDBE4
mov	strvalue, [ebp+flags]
mov	esi, [ebp+var_4C]
mov	[ebp+max], max
mov	max, [ebp+min]
test	edi, edi
jns	loc_641DD820
cmp	[ebp+max], eax
jle	loc_641DD820
mov	edx, [ebp+currlen]
mov	edi, [ebp+min]
mov	[ebp+min], format
mov	ecx, [ebp+max]
jmp	short loc_641DDC35
align 10h
inc	eax
cmp	max, eax
jle	short loc_641DDC4B
cmp	[ebp+maxlen], edx
jbe	short loc_641DDC44
mov	format,	[ebp+buffer]
mov	byte ptr [ebx+edx], 20h
mov	edx, [ebp+currlen]
inc	edx
mov	[ebp+currlen], edx
inc	edi
js	short loc_641DDC30
mov	format,	[ebp+min]
jmp	loc_641DD820
			
lea	esi, [args+4]
mov	state, [ebp+flags]
or	al, 0C0h
mov	[esp+10h], eax
mov	eax, [ebp+max]
mov	[esp+0Ch], eax
mov	edx, [ebp+min]
mov	[esp+8], edx
mov	dword ptr [esp+4], 10h
mov	eax, [edi]
jmp	loc_641DDA2C
			
cmp	[ebp+cflags], 1
jz	short loc_641DDCE6
cmp	[ebp+cflags], 2
jz	short loc_641DDCE6
cmp	[ebp+cflags], 4
jnz	short loc_641DDCE6
lea	esi, [args+8]
mov	state, [edi]
jmp	short loc_641DDCEB
lea	esi, [args+4]
mov	state, [edi]
mov	args, [ebp+flags]
or	edi, 40h
mov	[esp+10h], edi
mov	max, [ebp+max]
mov	[esp+0Ch], ecx
mov	edi, [ebp+min]
mov	[esp+8], edi
mov	dword ptr [esp+4], 8
jmp	loc_641DDA2C
lea	esi, [args+4]
mov	state, [edi]
mov	args, [ebp+flags]
mov	[esp+10h], edi
mov	max, [ebp+max]
mov	[esp+0Ch], ecx
mov	edi, [ebp+min]
mov	[esp+8], edi
mov	dword ptr [esp+4], 0Ah
jmp	loc_641DDA2C
lea	esi, [args+4]
mov	state, [edi]
mov	args, [ebp+flags]
or	edi, 40h
jmp	short loc_641DDCC7
align 4
xor	max, max
jmp	loc_641DD7A2
mov	dl, [format]
inc	format
mov	esi, args
mov	[ebp+cflags], 4
mov	state, 6
mov	args, esi
jmp	loc_641DD728
mov	edx, [ebp+min]
test	edx, edx
jle	loc_641DDDFC
mov	eax, [ebp+max]
test	eax, eax
jle	loc_641DDDFC
mov	edx, [ebp+currlen]
xor	eax, eax
mov	edi, [ebp+min]
mov	[ebp+flags], format
mov	max, [ebp+max]
jmp	short loc_641DDD40
align 4
cmp	max, eax
jle	short loc_641DDD57
cmp	[ebp+maxlen], edx
jbe	short loc_641DDD4F
mov	format,	[ebp+buffer]
mov	byte ptr [ebx+edx], 20h
mov	edx, [ebp+currlen]
inc	edx
mov	[ebp+currlen], edx
inc	eax
dec	edi
jnz	short loc_641DDD3C
mov	[ebp+min], edi
mov	format,	[ebp+flags]
mov	[ebp+max], max
mov	edx, [ebp+cflags]
movzx	edi, byte ptr [edx]
jmp	loc_641DDBC3
lea	esi, [args+4]
mov	edx, [edi]
mov	state, [ebp+currlen]
mov	[edx], eax
jmp	loc_641DD820
lea	esi, [args+0Ch]
fld	tbyte ptr [edi]
jmp	loc_641DD9C2
lea	esi, [args+0Ch]
fld	tbyte ptr [edi]
jmp	loc_641DDA55
lea	esi, [args+8]
mov	state, [edi]
jmp	loc_641DDA0C
lea	esi, [args+4]
mov	edx, [edi]
mov	state, [ebp+currlen]
mov	[edx], ax
jmp	loc_641DD820
lea	esi, [args+0Ch]
fld	tbyte ptr [edi]
jmp	loc_641DDAB3
xor	state, state
mov	max, [ebp+max]
mov	edi, [ebp+cflags]
repne scasb
not	ecx
dec	ecx
mov	[ebp+max], ecx
jmp	loc_641DDB6B
mov	[ebp+min], 0
jmp	loc_641DDBB4
mov	[ebp+cflags], offset aNull
jmp	loc_641DDB61
lea	esi, [args+4]
mov	state, [edi]
mov	max, [ebp+currlen]
mov	[eax], ecx
mov	dword ptr [eax+4], 0
jmp	loc_641DD820
xor	state, state
jmp	loc_641DDBA6
xor	eax, eax
jmp	loc_641DDBC3
align 4
public _silc_vsnprintf
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 4
mov	eax, [ebp+str]
mov	edx, [ebp+count]
mov	ecx, [ebp+fmt]
mov	ebx, [ebp+args]
test	eax, eax
jz	short loc_641DDE1E
mov	byte ptr [str_0], 0
mov	[ebp+str], args_0
pop	args_0
pop	ebx
leave
jmp	_dopr
align 4
public _silc_snprintf
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+str]	
lea	edx, [ebp+args_in]
test	eax, eax
jz	short loc_641DDE3F
mov	byte ptr [str_0], 0
mov	[esp], edx	
mov	ecx, [ebp+fmt]	
mov	edx, [ebp+count] 
call	_dopr
leave
retn
align 10h
public _silc_vasprintf
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	esi, [ebp+format]
mov	ebx, [ebp+ap]
mov	[esp], ebx	
mov	ecx, esi	
xor	edx, edx	
xor	eax, eax	
call	_dopr
test	eax, eax
jg	short loc_641DDE7C
			
add	esp, 1Ch
pop	ap_0
pop	format_0
pop	edi
leave
retn
align 4
lea	edi, [ret+1]
mov	[esp], edi	
call	_silc_malloc
mov	edx, [ebp+ptr]
mov	[edx], eax
test	eax, eax
jz	short loc_641DDEA6
mov	[esp+0Ch], ap_0	
mov	[esp+8], format_0 
mov	[esp+4], edi	
mov	[esp], eax	
call	_silc_vsnprintf
jmp	short loc_641DDE71
mov	eax, 0FFFFFFFFh
jmp	short loc_641DDE71
align 10h
public _silc_asprintf
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	ret, [ebp+ptr]
mov	dword ptr [ret], 0
lea	edx, [ebp+ap]
mov	[esp+8], edx	
mov	edx, [ebp+format]
mov	[esp+4], edx	
mov	[esp], ret	
call	_silc_vasprintf
leave
retn
align 4
push	ebp
mov	ebp, esp
mov	eax, [ebp+context]
or	byte ptr [eax+14h], 2
leave
retn
public _silc_socket_stream_is_udp
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
mov	edx, [ebp+connected]
test	eax, eax
jz	short loc_641DDEF9
cmp	dword ptr [stream_0], offset _silc_socket_udp_stream_ops
jz	short loc_641DDF00
xor	stream_0, stream_0
leave
retn
align 10h
test	connected_0, connected_0
jz	short loc_641DDF0E
mov	al, [stream_0+24h]
shr	al, 1
and	eax, 1
mov	[connected_0], al
mov	al, 1
leave
retn
align 4
public _silc_socket_stream_get_info
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	eax, [ebp+stream]
mov	ecx, [ebp+sock]
mov	edi, [ebp+hostname]
mov	esi, [ebp+ip_0]
mov	ebx, [ebp+port]
test	eax, eax
jz	short loc_641DDF3F
mov	edx, [stream_0]
cmp	edx, offset _silc_socket_stream_ops
jz	short loc_641DDF48
cmp	edx, offset _silc_socket_udp_stream_ops
jz	short loc_641DDF48
			
xor	eax, eax
pop	port_0
pop	ip_0_0
pop	hostname_0
leave
retn
align 4
			
test	sock_0,	sock_0
jz	short loc_641DDF51
mov	edx, [stream_0+8]
mov	[sock_0], edx
test	port_0,	port_0
jz	short loc_641DDF60
mov	edx, [stream_0+14h]
test	dx, dx
jz	short loc_641DDF3F
mov	[port_0], dx
test	ip_0_0,	ip_0_0
jz	short loc_641DDF6D
mov	edx, [stream_0+10h]
test	edx, edx
jz	short loc_641DDF3F
mov	[ip_0_0], edx
test	hostname_0, hostname_0
jz	short loc_641DDF7A
mov	stream_0, [stream_0+0Ch]
test	eax, eax
jz	short loc_641DDF3F
mov	[hostname_0], eax
mov	al, 1
pop	port_0
pop	ip_0_0
pop	hostname_0
leave
retn
align 4
public _silc_socket_stream_get_error
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
test	eax, eax
jz	short loc_641DDFA0
mov	edx, [stream_0]
cmp	edx, offset _silc_socket_stream_ops
jz	short loc_641DDFA4
cmp	edx, offset _silc_socket_udp_stream_ops
jz	short loc_641DDFA4
xor	stream_0, stream_0
leave
retn
			
movzx	stream_0, word ptr [stream_0+16h]
leave
retn
align 4
public _silc_socket_stream_get_schedule
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+stream]
test	eax, eax
jz	short loc_641DDFD0
mov	edx, [stream_0]
cmp	edx, offset _silc_socket_stream_ops
jnz	short loc_641DDFC8
mov	stream_0, [stream_0+4]
leave
retn
align 4
cmp	edx, offset _silc_socket_udp_stream_ops
jz	short loc_641DDFC0
xor	stream_0, stream_0
leave
retn
public _silc_socket_udp_stream_create
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
movzx	esi, [ebp+ipv6]
mov	bl, [ebp+connected]
mov	dword ptr [esp+4], 28h 
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	short loc_641DE022
mov	dword ptr [eax], offset	_silc_socket_udp_stream_ops
mov	edx, [ebp+sock]
mov	[eax+8], edx
mov	edx, [ebp+schedule]
mov	[eax+4], edx
and	ipv6_0,	1
mov	dl, [eax+24h]
and	edx, 0FFFFFFFCh
and	connected_0, 1
shl	ebx, 1
or	edx, esi
or	edx, ebx
mov	[eax+24h], dl
add	esp, 10h
pop	ebx
pop	esi
leave
retn
align 4
public _silc_socket_stream_set_qos
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+stream]
mov	edi, [ebp+read_rate]
mov	esi, [ebp+read_limit_bytes]
mov	edx, [ebp+limit_sec]
test	ebx, ebx
jz	short loc_641DE055
mov	eax, [stream_0]
cmp	eax, offset _silc_socket_stream_ops
jz	short loc_641DE060
cmp	eax, offset _silc_socket_udp_stream_ops
jz	short loc_641DE060
			
xor	eax, eax
add	esp, 2Ch
pop	stream_0
pop	read_limit_bytes_0
pop	read_rate_0
leave
retn
align 10h
			
mov	ecx, [stream_0+18h]
mov	eax, ecx
test	ecx, ecx
jz	short loc_641DE0B0
test	read_rate_0, read_rate_0
jnz	short loc_641DE0D4
test	read_limit_bytes_0, read_limit_bytes_0
jnz	short loc_641DE0D4
test	limit_sec_0, limit_sec_0
jnz	short loc_641DE0D4
cmp	[ebp+limit_usec], 0
jnz	short loc_641DE0D4
mov	[esp+4], ecx	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_context
mov	eax, [stream_0+18h]
mov	eax, [eax+1Ch]
mov	[esp], eax	
call	_silc_free
mov	eax, [stream_0+18h]
mov	[esp], eax	
call	_silc_free
mov	dword ptr [stream_0+18h], 0
mov	al, 1
jmp	short loc_641DE057
align 10h
mov	dword ptr [esp+4], 24h 
mov	dword ptr [esp], 1 
mov	[ebp+var_1C], limit_sec_0
call	_silc_calloc
mov	[stream_0+18h],	eax
test	eax, eax
mov	edx, [ebp+var_1C]
jz	short loc_641DE055
mov	ecx, eax
nop
			
mov	[eax+2], di
mov	[ecx], si
mov	[ecx+4], dx
mov	eax, [ebp+limit_usec]
mov	[ecx+8], eax
mov	dword ptr [ecx+0Ch], 0
mov	dword ptr [ecx+10h], 0
mov	eax, [stream_0+18h]
and	dword ptr [eax+14h], 80000000h
mov	read_rate_0, [stream_0+18h]
mov	[edi+20h], stream_0
mov	[esp+4], read_limit_bytes_0 
mov	eax, [edi+1Ch]
mov	[esp], eax	
call	_silc_realloc
mov	[edi+1Ch], eax
mov	eax, [stream_0+18h]
mov	eax, [eax+1Ch]
test	eax, eax
setnz	al
add	esp, 2Ch
pop	stream_0
pop	read_limit_bytes_0
pop	edi
leave
retn
public _silc_socket_stream_set_info
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+stream]
mov	edx, [ebp+hostname]
mov	esi, [ebp+ip_0]
mov	edi, [ebp+port]
test	ebx, ebx
jz	short loc_641DE151
mov	eax, [stream_0]
cmp	eax, offset _silc_socket_stream_ops
jz	short loc_641DE15C
cmp	eax, offset _silc_socket_udp_stream_ops
jz	short loc_641DE15C
			
xor	eax, eax
add	esp, 2Ch
pop	stream_0
pop	ip_0_0
pop	port_0
leave
retn
align 4
			
test	hostname_0, hostname_0
jz	short loc_641DE180
mov	eax, [stream_0+0Ch]
mov	[esp], eax	
mov	[ebp+var_1C], hostname_0
call	_silc_free
mov	edx, [ebp+var_1C]
mov	[esp], edx	
call	_strdup
mov	[stream_0+0Ch],	eax
test	eax, eax
jz	short loc_641DE151
test	ip_0_0,	ip_0_0
jz	short loc_641DE1A5
mov	eax, [stream_0+10h]
mov	[esp], eax	
call	_silc_free
mov	[esp], ip_0_0	
call	_strdup
mov	[stream_0+10h],	eax
test	eax, eax
jz	short loc_641DE151
mov	eax, [stream_0+0Ch]
test	eax, eax
jz	short loc_641DE1B8
			
test	di, di
jz	short loc_641DE1AE
mov	[stream_0+14h],	di
mov	al, 1
add	esp, 2Ch
pop	stream_0
pop	ip_0_0
pop	port_0
leave
retn
mov	[esp], ip_0_0
call	_strdup
mov	[stream_0+0Ch],	eax
test	eax, eax
jnz	short loc_641DE1A5
jmp	short loc_641DE151
align 4
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+context]
mov	ebx, [esi]
mov	edi, [stream+4]
mov	eax, [stream+8]
mov	[esp], eax	
call	_silc_net_get_remote_port
mov	[stream+14h], ax
lea	eax, [stream+10h]
mov	[esp+8], eax	
lea	eax, [stream+0Ch]
mov	[esp+4], eax	
mov	eax, [stream+8]
mov	[esp], eax	
call	_silc_net_check_host_by_sock
mov	eax, [stream+10h]
test	eax, eax
jz	short loc_641DE280
mov	edx, [stream+0Ch]
test	edx, edx
jz	short loc_641DE260
mov	dword ptr [context_0+4], 0
			
mov	dword ptr [esp+18h], 1 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], context_0 
mov	dword ptr [esp+8], offset _silc_socket_host_lookup_finish 
mov	dword ptr [esp+4], 0 
mov	[esp], schedule	
call	_silc_schedule_task_add
mov	[esp], schedule	
call	_silc_schedule_wakeup
xor	eax, eax
add	esp, 2Ch
pop	stream
pop	context_0
pop	schedule
leave
retn
test	byte ptr [context_0+14h], 1
jnz	short loc_641DE28C
mov	[esp], eax	
call	_strdup
mov	[stream+0Ch], eax
test	eax, eax
jnz	short loc_641DE213
mov	dword ptr [context_0+4], 3
jmp	short out
align 10h
mov	dword ptr [context_0+4], 1
jmp	short out
align 4
mov	dword ptr [context_0+4], 2
jmp	short out
align 4
public _silc_socket_host_lookup_finish
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
mov	eax, [lookup]
test	byte ptr [lookup+14h], 2
jnz	short loc_641DE304
mov	ecx, [lookup+4]
test	ecx, ecx
jnz	short loc_641DE2E8
mov	edx, [lookup+8]
test	edx, edx
jz	short loc_641DE2CB
mov	ecx, [lookup+10h]
mov	[esp+8], ecx
mov	[esp+4], stream
mov	stream,	[lookup+4]
mov	[esp], eax
call	edx
mov	stream,	[lookup+0Ch]
test	eax, eax
jz	short loc_641DE2DA
mov	[esp], eax	
call	_silc_async_free
mov	[ebp+schedule],	lookup
add	esp, 14h
pop	lookup
leave
jmp	_silc_free
align 4
mov	dword ptr [stream+4], 0
mov	[esp], stream	
call	_silc_socket_stream_destroy
mov	dword ptr [lookup], 0
xor	eax, eax
jmp	short loc_641DE2B1
align 4
mov	dword ptr [stream+4], 0
mov	[esp], stream	
call	_silc_socket_stream_destroy
mov	[ebp+schedule],	lookup
add	esp, 14h
pop	lookup
leave
jmp	_silc_free
public _silc_socket_tcp_stream_create
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+sock]
mov	edi, [ebp+schedule]
mov	al, [ebp+lookup]
mov	[ebp+var_19], al
mov	al, [ebp+require_fqdn]
mov	[ebp+var_1A], al
test	ebx, ebx
jz	loc_641DE404
test	schedule_0, schedule_0
jz	loc_641DE404
mov	dword ptr [esp+4], 28h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	esi, eax
test	eax, eax
jz	loc_641DE4A8
mov	dword ptr [eax], offset	_silc_socket_stream_ops
mov	[eax+8], sock_0
mov	[eax+4], schedule_0
or	byte ptr [eax+24h], 2
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	sock_0,	eax
test	eax, eax
jz	loc_641DE4A0
mov	[eax], esi
mov	eax, [ebp+callback]
mov	[ebx+8], eax
mov	eax, [ebp+context]
mov	[ebx+10h], eax
mov	dl, [ebp+var_1A]
and	edx, 1
mov	al, [ebx+14h]
and	eax, 0FFFFFFFEh
or	eax, edx
mov	[ebx+14h], al
cmp	[ebp+var_19], 0
jz	short loc_641DE434
mov	[esp+8], ebx	
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], offset	_silc_socket_host_lookup_abort 
call	_silc_async_alloc
mov	[ebx+0Ch], eax
test	eax, eax
jz	loc_641DE468
mov	dword ptr [esp+8], 0 
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_silc_socket_host_lookup_start 
call	_silc_thread_create
mov	eax, [ebx+0Ch]
			
add	esp, 3Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
			
mov	dword ptr [esp], offset	aMissingArgumen	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	schedule_0, [ebp+callback]
test	edi, edi
jnz	short loc_641DE480
			
xor	eax, eax
add	esp, 3Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	dword ptr [ebx+4], 0
mov	[esp], schedule_0 
call	_silc_schedule_get_context
mov	[esp+10h], ebx	
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	[esp], schedule_0 
call	_silc_socket_host_lookup_finish
xor	eax, eax
jmp	short loc_641DE3FA
align 4
mov	[esp], esi	
call	_silc_free
mov	[esp], ebx	
call	_silc_free
mov	ebx, [ebp+callback]
test	ebx, ebx
jz	short loc_641DE427
nop
mov	eax, [ebp+context]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 4 
call	[ebp+callback]
xor	eax, eax
jmp	loc_641DE3FA
mov	[esp], esi
call	_silc_free
mov	esi, [ebp+callback]
test	esi, esi
jz	loc_641DE427
mov	eax, [ebp+context]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 3 
call	[ebp+callback]
xor	eax, eax
jmp	loc_641DE3FA
align 4
public _silc_stack_malloc
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+stack]
mov	ebx, [ebp+size]
mov	al, [ebp+aligned]
mov	edx, [esi+44h]
mov	dl, [edx+0Bh]
shr	dl, 3
test	ebx, ebx
jz	loc_641DE5EA
cmp	size_0,	2000000h
ja	loc_641DE60D
test	al, al
jz	short loc_641DE50D
add	size_0,	3
and	size_0,	0FFFFFFFCh
movzx	edx, dl
test	si_0, si_0
jnz	short loc_641DE58C
mov	aligned_0, [stack_0+48h]
mov	si_0, [stack_0+si_0*4]
mov	ecx, [edx]
cmp	size_0,	ecx
jbe	short loc_641DE59F
cmp	bsize, 3FFh
jbe	loc_641DE5B4
add	bsize, size_0
cmp	bsize, 400h
jbe	loc_641DE5BE
xor	edx, edx
mov	edi, 400h
nop
shl	bsize2,	1
inc	si_0
cmp	bsize, bsize2
ja	short loc_641DE540
cmp	si_0, 0Fh
ja	loc_641DE616
mov	ecx, [stack_0+si_0*4]
test	ecx, ecx
jz	short loc_641DE5C7
mov	bsize, [ecx]
mov	[ebp+var_1C], eax
cmp	size_0,	eax
ja	loc_641DE61F
sub	bsize2,	[ebp+var_1C]
lea	eax, [ecx+edi+4]
mov	edi, [ebp+var_1C]
sub	edi, size_0
mov	[ecx], edi
mov	size_0,	[stack_0+44h]
shl	si_0, 3
mov	cl, [ebx+0Bh]
and	ecx, 7
or	ecx, edx
mov	[ebx+0Bh], cl
			
add	esp, 2Ch
pop	ebx
pop	stack_0
pop	bsize2
leave
retn
align 4
lea	ecx, [si_0-1]
mov	aligned_0, 800h
shl	bsize, cl
mov	si_0, [stack_0+si_0*4]
mov	ecx, [edx]
cmp	size_0,	ecx
ja	short loc_641DE520
sub	bsize, ecx
lea	eax, [edx+eax+4]
sub	ecx, size_0
mov	[edx], ecx
add	esp, 2Ch
pop	size_0
pop	stack_0
pop	edi
leave
retn
align 4
mov	bsize, 400h
jmp	loc_641DE52B
xor	edx, edx
mov	edi, 400h
jmp	short loc_641DE550
lea	bsize, [bsize2+4]
mov	[esp], eax	
mov	[ebp+var_20], si_0
call	_silc_malloc
mov	ecx, eax
mov	edx, [ebp+var_20]
mov	[stack_0+edx*4], eax
xor	eax, eax
test	ecx, ecx
jz	short loc_641DE583
mov	[ecx], bsize2
jmp	loc_641DE557
mov	dword ptr [esp], offset	aAllocationByZe
			
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	loc_641DE583
mov	dword ptr [esp], offset	aAllocatingTooM
jmp	short loc_641DE5F1
mov	dword ptr [esp], offset	aAllocatingTooL
jmp	short loc_641DE5F1
mov	dword ptr [esp+8], 0DCh	
mov	dword ptr [esp+4], offset aSilcstack_c 
mov	dword ptr [esp], offset	aStackStackSiBy	
call	__assert
align 4
public _silc_stack_realloc
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+stack]
mov	edx, [ebp+old_size]
mov	eax, [ebp+ptr]
mov	edi, [ebp+size]
mov	cl, [ebp+aligned]
mov	[ebp+var_1D], cl
mov	ecx, [ebx+44h]
mov	cl, [ecx+0Bh]
shr	cl, 3
test	eax, eax
jz	short loc_641DE6E0
test	size_0,	size_0
jz	loc_641DE6F6
test	old_size_0, old_size_0
jz	loc_641DE6F6
cmp	size_0,	2000000h
ja	loc_641DE716
cmp	[ebp+var_1D], 0
jz	short loc_641DE68C
add	old_size_0, 3
and	old_size_0, 0FFFFFFFCh
movzx	esi, cl
test	si_0, si_0
jz	short loc_641DE6C0
lea	ecx, [si_0-1]
mov	[ebp+bsize], 800h
shl	[ebp+bsize], cl
mov	ecx, [stack_0+si_0*4]
mov	stack_0, [ecx]
mov	si_0, ptr_0
sub	esi, ecx
lea	esi, [esi+ebx-4]
add	esi, old_size_0
cmp	[ebp+bsize], esi
jz	short loc_641DE6C8
xor	ptr_0, ptr_0
			
add	esp, 2Ch
pop	ebx
pop	esi
pop	size_0
leave
retn
align 10h
mov	ecx, [stack_0+48h]
mov	[ebp+bsize], ecx
jmp	short loc_641DE6A0
cmp	size_0,	ebx
ja	short loc_641DE6B4
cmp	[ebp+var_1D], 0
jz	short loc_641DE6D8
add	size_0,	3
and	size_0,	0FFFFFFFCh
add	old_size_0, ebx
sub	edx, size_0
mov	[ecx], edx
jmp	short loc_641DE6B6
movzx	ptr_0, [ebp+var_1D]
mov	[ebp+ptr], aligned_0
mov	[ebp+old_size],	size_0
add	esp, 2Ch
pop	stack_0
pop	esi
pop	size_0
leave
jmp	_silc_stack_malloc
			
mov	dword ptr [esp], offset	aAllocationByZe
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	short loc_641DE6B6
mov	dword ptr [esp], offset	aAllocatingTooM
jmp	short loc_641DE6FD
align 10h
public _silc_stack_pop
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+stack]
test	eax, eax
jz	loc_641DE7CC
mov	eax, [ebp+stack]
mov	eax, [eax+44h]
mov	[ebp+var_24], eax
mov	edx, [eax]
mov	[ebp+var_20], edx
test	edx, edx
jz	loc_641DE7D6
mov	ecx, [ebp+var_24]
mov	al, [ecx+0Bh]
shr	al, 3
movzx	eax, al
mov	edi, [ebp+var_20]
mov	dl, [edi+0Bh]
shr	dl, 3
movzx	edi, dl
cmp	si_0, edi
jbe	short loc_641DE7A4
mov	ecx, [ebp+stack]
lea	edx, [ecx+si_0*4]
dec	si_0
mov	[ebp+var_1C], eax
xor	ebx, ebx
mov	[ebp+var_3C], edi
jmp	short loc_641DE77A
align 4
mov	si_0, ecx
mov	esi, [edx]
test	esi, esi
jz	short loc_641DE798
mov	edi, [ebp+var_1C]
add	edi, ebx
mov	[ebp+var_2C], edi
mov	edi, 400h
mov	cl, byte ptr [ebp+var_2C]
shl	edi, cl
mov	ecx, edi
shl	ecx, 1
mov	[esi], ecx
sub	edx, 4
lea	ecx, [si_0-1]
dec	ebx
cmp	[ebp+var_3C], eax
jb	short loc_641DE778
mov	edx, [ebp+stack]
mov	si_0, [edx+si_0*4]
mov	si_0, [ebp+var_24]
mov	edx, [ecx+4]
mov	[eax], edx
mov	eax, [ebp+var_20]
mov	edi, [ebp+stack]
mov	[edi+44h], eax
mov	eax, [eax+8]
and	eax, 7FFFFFFh
inc	eax
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
retn
xor	eax, eax
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
retn
mov	dword ptr [esp+8], 83h 
mov	dword ptr [esp+4], offset aSilcstack_c 
mov	dword ptr [esp], offset	aStackFramePrev	
call	__assert
align 4
public _silc_stack_push
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+stack]
mov	edx, [ebp+frame]
test	ebx, ebx
jz	short loc_641DE884
test	frame_0, frame_0
jz	short loc_641DE860
mov	edi, [stack_0+44h]
mov	[frame_0], edi
mov	eax, [edi+8]
inc	eax
and	eax, 7FFFFFFh
mov	i, [frame_0+8]
and	ecx, 0F8000000h
or	ecx, eax
mov	[frame_0+8], ecx
movzx	esi, byte ptr [edi+0Bh]
mov	ecx, esi
shr	cl, 3
mov	esi, ecx
lea	edi, ds:0[esi*8]
mov	cl, [frame_0+0Bh]
and	ecx, 7
or	ecx, edi
mov	[frame_0+0Bh], cl
and	esi, 0FFh
mov	ecx, [stack_0+esi*4]
mov	ecx, [ecx]
mov	[frame_0+4], ecx
mov	[stack_0+44h], frame_0
add	esp, 1Ch
pop	stack_0
pop	esi
pop	edi
leave
retn
align 10h
mov	edi, [stack_0+44h]
mov	esi, [edi+8]
and	esi, 7FFFFFFh
lea	eax, [esi+7]
and	eax, 0FFFFFFF8h
cmp	esi, eax
jge	short loc_641DE890
mov	eax, [stack_0+40h]
			
lea	edx, [esi+esi*2]
lea	edx, [frame_0+edx*4]
jmp	short loc_641DE80E
align 4
			
xor	eax, eax
add	esp, 1Ch
pop	stack_0
pop	esi
pop	edi
leave
retn
align 10h
lea	eax, [esi+8]
and	eax, 0FFFFFFF8h
lea	eax, [eax+eax*2]
shl	eax, 2
mov	[esp+4], eax	
mov	eax, [stack_0+40h]
mov	[esp], eax	
call	_silc_realloc
test	eax, eax
jz	short loc_641DE884
mov	[stack_0+40h], frame_0
lea	edx, [esi+esi*2-3]
lea	edi, [frame_0+edx*4]
mov	[stack_0+44h], edi
mov	esi, [edi+8]
and	esi, 7FFFFFFh
cmp	esi, 1
jle	short loc_641DE879
mov	edx, frame_0
mov	ecx, 1
lea	esi, [esi+0]
mov	[edx+0Ch], edx
inc	i
add	edx, 0Ch
cmp	i, esi
jl	short loc_641DE8D4
jmp	short loc_641DE879
align 4
public _silc_stack_free
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+stack]
test	esi, esi
jz	short loc_641DE920
mov	eax, [stack_0+40h]
mov	[esp], eax	
call	_silc_free
xor	ebx, ebx
mov	eax, [stack_0+i*4]
mov	[esp], eax	
call	_silc_free
inc	i
cmp	i, 10h
jnz	short loc_641DE900
mov	[ebp+stack], stack_0
add	esp, 10h
pop	i
pop	stack_0
leave
jmp	_silc_free
align 10h
add	esp, 10h
pop	ebx
pop	stack_0
leave
retn
align 4
public _silc_stack_alloc
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+stack_size]
mov	dword ptr [esp+4], 4Ch 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	short loc_641DE9B0
mov	dword ptr [esp+4], 0Ch 
mov	dword ptr [esp], 8 
call	_silc_calloc
mov	[stack+40h], eax
test	eax, eax
jz	short loc_641DE9CC
test	stack_size_0, stack_size_0
jnz	short loc_641DE9BC
mov	eax, 404h
mov	si, 400h
mov	[stack+48h], esi
mov	[esp], eax	
call	_silc_malloc
mov	[stack], eax
test	eax, eax
jz	short loc_641DE9C1
mov	edx, [stack+48h]
mov	[eax], edx
mov	eax, [stack+40h]
mov	[stack+44h], eax
mov	dword ptr [eax], 0
mov	edx, [stack+48h]
mov	[eax+4], edx
mov	edx, [eax+8]
and	edx, 0F8000000h
or	edx, 1
mov	[eax+8], edx
and	byte ptr [eax+0Bh], 7
			
mov	eax, stack
add	esp, 10h
pop	stack
pop	stack_size_0
leave
retn
align 4
lea	eax, [stack_size_0+4]
jmp	short loc_641DE975
mov	eax, [stack+40h]
mov	[esp], eax	
call	_silc_free
mov	[esp], stack	
call	_silc_free
xor	stack, stack
jmp	short loc_641DE9B0
public _silc_stream_read
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx]
leave
jmp	eax
public _silc_stream_write
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx+4]
leave
jmp	eax
align 4
public _silc_stream_close
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx+8]
leave
jmp	eax
align 10h
public _silc_stream_destroy
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx+0Ch]
leave
jmp	eax
align 4
public _silc_stream_set_notifier
			
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx+10h]
leave
jmp	eax
align 4
public _silc_stream_get_schedule
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+stream]
mov	edx, [eax]
mov	eax, [edx+14h]
leave
jmp	eax
align 4
public _silc_stringprep
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+bin]
mov	edi, [ebp+bin_len]
test	esi, esi
jz	loc_641DEB68
test	bin_len_0, bin_len_0
jz	loc_641DEB68
mov	ebx, [ebp+profile_name]
test	ebx, ebx
jz	loc_641DEB68
mov	eax, [ebp+bin_encoding]
mov	[esp+8], eax	
mov	[esp+4], bin_len_0 
mov	[esp], bin_0	
call	_silc_utf8_encoded_len
mov	ebx, eax
test	eax, eax
jnz	short loc_641DEA9C
mov	utf8s_len, 7
			
add	esp, 3Ch
pop	utf8s_len
pop	f
pop	edi
leave
retn
lea	ecx, [utf8s_len+1]
mov	[ebp+var_24], ecx
mov	dword ptr [esp+4], 1 
mov	[esp], ecx	
call	_silc_calloc
mov	edx, eax
test	eax, eax
jz	loc_641DEB78
mov	[esp+10h], utf8s_len 
mov	[esp+0Ch], utf8s 
mov	utf8s, [ebp+bin_encoding]
mov	[esp+8], eax	
mov	[esp+4], bin_len_0 
mov	[esp], bin_0	
mov	[ebp+in], utf8s
call	_silc_utf8_encode
mov	bin_len_0, offset aSilcIdentifier 
mov	ecx, 15h
mov	bin_0, [ebp+profile_name]
repe cmpsb
mov	edx, [ebp+in]
jnz	loc_641DEB84
mov	[ebp+profile], offset _stringprep_silc_identifier_prep
			
mov	eax, [ebp+flags]
and	eax, 1
cmp	eax, 1
sbb	esi, esi
and	f, 4
mov	ecx, [ebp+profile]
mov	[esp+0Ch], ecx	
mov	[esp+8], f	
mov	[esp+4], utf8s_len 
mov	[esp], edx	
mov	[ebp+in], utf8s
call	_stringprep
cmp	eax, 64h
mov	edx, [ebp+in]
jz	loc_641DEC08
cmp	ret, 3
jz	loc_641DEC88
jg	loc_641DEBCC
cmp	ret, 1
jz	loc_641DEBFC
jle	loc_641DECAA
mov	ret, 2
			
mov	[esp], edx	
mov	[ebp+in], eax
call	_silc_free
mov	eax, [ebp+in]
add	esp, 3Ch
pop	utf8s_len
pop	f
pop	edi
leave
retn
align 4
			
mov	eax, 0Ah
add	esp, 3Ch
pop	ebx
pop	bin_0
pop	bin_len_0
leave
retn
align 4
			
mov	utf8s, 6
jmp	loc_641DEA94
align 4
mov	edi, offset aSilcIdentifi_0 
mov	ecx, 18h
mov	esi, [ebp+profile_name]
repe cmpsb
jz	short loc_641DEBE4
mov	edi, offset aSilcIdentifi_1 
mov	ecx, 16h
mov	esi, [ebp+profile_name]
repe cmpsb
jz	loc_641DEC94
mov	edi, offset aSilcCasefoldPr 
mov	ecx, 13h
mov	esi, [ebp+profile_name]
repe cmpsb
jnz	loc_641DECA0
mov	[ebp+profile], offset _stringprep_silc_casefold_prep
jmp	loc_641DEAF9
align 4
cmp	ret, 5
jz	short loc_641DEBF0
jge	loc_641DEC5C
mov	ret, 5
jmp	loc_641DEB50
align 4
mov	[ebp+profile], offset _stringprep_silc_identifier_ch_prep
jmp	loc_641DEAF9
mov	ret, 3
jmp	loc_641DEB50
align 4
mov	ret, 1
jmp	loc_641DEB50
align 4
lea	ret, [utf8s_len+utf8s_len]
mov	[ebp+maxlen], eax
inc	eax
mov	[esp+4], eax	
mov	[esp], edx	
call	_silc_realloc
mov	edx, eax
test	eax, eax
jz	loc_641DEB78
mov	ecx, [ebp+var_24]
add	ecx, utf8s
mov	[ebp+var_24], ecx
xor	utf8s, utf8s
mov	edi, ecx
mov	ecx, utf8s_len
rep stosb
mov	eax, [ebp+profile]
mov	[esp+0Ch], eax	
mov	[esp+8], f	
mov	utf8s_len, [ebp+maxlen]
mov	[esp+4], ecx	
mov	[esp], utf8s	
mov	[ebp+in], utf8s
call	_stringprep
mov	edx, [ebp+in]
jmp	loc_641DEB2D
align 4
cmp	ret, 67h
jz	short loc_641DEC7C
cmp	ret, 0C9h
jz	short loc_641DEC72
mov	ret, 0Ah
jmp	loc_641DEB50
			
mov	ret, 6
jmp	loc_641DEB50
mov	ret, 9
jmp	loc_641DEB50
align 4
mov	ret, 4
jmp	loc_641DEB50
align 4
mov	[ebp+profile], offset _stringprep_silc_identifierc_prep
jmp	loc_641DEAF9
mov	eax, 9
jmp	loc_641DEA94
test	ret, ret
jnz	short loc_641DEC68
mov	ecx, [ebp+out]
test	ecx, ecx
jz	loc_641DED99
mov	ret, [ebp+out_len]
test	eax, eax
jz	loc_641DED99
cmp	[ebp+out_encoding], 7
jz	short loc_641DED04
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
mov	f, [ebp+out_encoding]
mov	[esp+8], esi	
mov	[esp+4], ecx	
mov	[esp], utf8s	
mov	[ebp+in], utf8s
call	_silc_utf8_decoded_len
mov	ecx, [ebp+out_len]
mov	[ecx], eax
test	eax, eax
mov	edx, [ebp+in]
jnz	short loc_641DED38
mov	al, 7
jmp	loc_641DEB50
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
mov	f, [ebp+out_len]
mov	[esi], ecx
mov	[esp+4], ecx	
mov	[esp], edx	
mov	[ebp+in], utf8s
call	_silc_memdup
mov	ecx, [ebp+out]
mov	[ecx], eax
xor	eax, eax
mov	edx, [ebp+in]
jmp	loc_641DEB50
align 4
mov	dword ptr [esp+4], 1 
inc	eax
mov	[esp], eax	
mov	[ebp+in], edx
call	_silc_calloc
mov	utf8s_len, eax
mov	esi, [ebp+out]
mov	[esi], eax
test	eax, eax
mov	edx, [ebp+in]
jz	loc_641DEC72
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
dec	ecx
mov	esi, [ebp+out_len]
mov	eax, [esi]
mov	[esp+10h], eax	
mov	[esp+0Ch], ebx	
mov	eax, [ebp+out_encoding]
mov	[esp+8], eax	
mov	[esp+4], ecx	
mov	[esp], utf8s	
mov	[ebp+in], utf8s
call	_silc_utf8_decode
xor	eax, eax
mov	edx, [ebp+in]
jmp	loc_641DEB50
			
xor	ret, ret
jmp	loc_641DEB50
public _silc_string_regex_match
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 54h
mov	dword ptr [esp+8], 9 
mov	eax, [ebp+regex]
mov	[esp+4], eax	
lea	ebx, [ebp+preg]
mov	[esp], ebx	
call	_regcomp
test	eax, eax
jz	short loc_641DEDD0
xor	eax, eax
add	esp, 54h
pop	ebx
leave
retn
align 10h
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+string]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_regexec
test	eax, eax
setz	al
movzx	eax, al
mov	[esp], ebx	
mov	[ebp+var_2C], ret
call	_regfree
mov	eax, [ebp+var_2C]
add	esp, 54h
pop	ebx
leave
retn
align 4
public _silc_string_regexify
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+string]
test	ebx, ebx
jnz	short loc_641DEE30
xor	edi, edi
mov	eax, regex
add	esp, 2Ch
pop	string_0
pop	esi
pop	regex
leave
retn
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, string_0
repne scasb
not	ecx
lea	esi, [ecx-1]
test	esi, esi
jle	loc_641DEF05
mov	ecx, 4
xor	eax, eax
jmp	short loc_641DEE63
align 4
cmp	dl, 3Fh
jz	short loc_641DEE6B
cmp	dl, 2Ch
jz	short loc_641DEE71
inc	i
cmp	esi, i
jz	short loc_641DEE79
			
mov	dl, [string_0+i]
cmp	dl, 2Ah
jnz	short loc_641DEE54
inc	count
cmp	dl, 2Ch
jnz	short loc_641DEE5E
add	count, 2
inc	i
cmp	esi, i
jnz	short loc_641DEE63
			
mov	dword ptr [esp+4], 1 
lea	i, [count+esi+1]
mov	[esp], eax	
call	_silc_calloc
mov	edi, eax
test	eax, eax
jz	short loc_641DEE26
mov	byte ptr [regex], 28h
mov	byte ptr [regex+1], 5Eh
test	esi, esi
jle	short loc_641DEF0F
lea	regex, [esi+2]
mov	edx, 2
mov	ecx, 2
mov	[ebp+var_1C], esi
mov	esi, eax
jmp	short loc_641DEEC5
align 4
cmp	al, 3Fh
jz	short loc_641DEECD
cmp	al, 2Ch
jz	short loc_641DEED8
mov	[regex+count], al
inc	count
inc	edx
cmp	edx, esi
jz	short loc_641DEEF0
			
mov	al, [string_0+edx-2]
cmp	al, 2Ah
jnz	short loc_641DEEB4
mov	byte ptr [regex+count],	2Eh
inc	count
mov	al, [string_0+edx-2]
jmp	short loc_641DEEBC
cmp	edx, [ebp+var_1C]
jz	short loc_641DEEC0
mov	byte ptr [regex+count],	7Ch
mov	byte ptr [regex+count+1], 5Eh
add	count, 2
inc	edx
cmp	edx, esi
jnz	short loc_641DEEC5
xchg	ax, ax
lea	eax, [count+1]
mov	byte ptr [regex+ecx], 29h
mov	byte ptr [regex+eax], 24h
mov	eax, regex
add	esp, 2Ch
pop	string_0
pop	esi
pop	regex
leave
retn
mov	ecx, 4
jmp	loc_641DEE79
mov	regex, 3
mov	ecx, 2
jmp	short loc_641DEEF3
align 4
public _silc_base64_decode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+base64]
mov	esi, [ebp+base64_len]
mov	ecx, 3Fh
movzx	eax, ds:_pem_enc[i]
mov	ds:_ialpha_37702[eax], 1
mov	ds:_decoder_37703[eax],	cl
dec	i
cmp	i, 0FFFFFFFFh
jnz	short loc_641DEF30
test	base64_len_0, base64_len_0
jnz	loc_641DF030
xor	eax, eax
mov	edi, base64_0
repne scasb
not	ecx
lea	base64_len_0, [ecx-1]
mov	dword ptr [esp+4], 1 
lea	eax, [len+len*2]
shl	eax, 1
shr	eax, 3
mov	[esp], eax	
call	_silc_calloc
test	len, len
jz	loc_641DF092
movzx	ecx, byte ptr [base64_0]
cmp	c, 3Dh
jz	loc_641DF092
mov	[ebp+j], 0
xor	edx, edx
mov	[ebp+bits], 0
xor	edi, edi
jmp	short loc_641DEFBA
align 10h
mov	ecx, [ebp+bits]
shl	ecx, 6
mov	[ebp+bits], ecx
lea	len, [len+0]
			
inc	i
cmp	len, i
jbe	short loc_641DF00C
movzx	c, byte	ptr [base64_0+i]
cmp	c, 3Dh
jz	short loc_641DF00C
cmp	c, 7Fh
ja	short loc_641DEFAC
cmp	ds:_ialpha_37702[c], 0
jz	short loc_641DEFAC
movsx	c, ds:_decoder_37703[c]
add	ecx, [ebp+bits]
mov	[ebp+bits], ecx
inc	char_count
cmp	char_count, 4
jnz	short loc_641DEFA0
shr	ecx, 10h
mov	char_count, [ebp+j]
mov	[data+edi], cl
mov	ecx, [ebp+bits]
shr	ecx, 8
mov	[data+edi+1], cl
mov	cl, byte ptr [ebp+bits]
mov	[data+edi+2], cl
add	edi, 3
mov	[ebp+j], edi
mov	[ebp+bits], 0
xor	edi, edi
inc	i
cmp	len, i
ja	short loc_641DEFB1
lea	len, [len+0]
			
cmp	char_count, 2
jz	short loc_641DF080
cmp	char_count, 3
jz	short loc_641DF04D
dec	char_count
jz	short loc_641DF06E
			
mov	i, [ebp+ret_len]
test	edx, edx
jz	short loc_641DF028
mov	c, [ebp+j]
mov	edx, [ebp+ret_len]
mov	[edx], ecx
add	esp, 3Ch
pop	base64_0
pop	len
pop	edi
leave
retn
mov	dword ptr [esp+4], 1
lea	eax, [base64_len_0+base64_len_0*2]
shl	eax, 1
shr	eax, 3
mov	[esp], eax	
call	_silc_calloc
jmp	loc_641DEF7D
mov	i, [ebp+bits]
shr	edx, 10h
mov	c, [ebp+j]
mov	[data+ecx], dl
mov	ecx, [ebp+bits]
shr	ecx, 8
mov	char_count, [ebp+j]
mov	[data+edi+1], cl
add	edi, 2
mov	[ebp+j], edi
jmp	short loc_641DF019
mov	[esp], data
call	_silc_free
xor	eax, eax
add	esp, 3Ch
pop	base64_0
pop	len
pop	edi
leave
retn
mov	c, [ebp+bits]
shr	ecx, 0Ah
mov	char_count, [ebp+j]
mov	[data+edi], cl
inc	edi
mov	[ebp+j], edi
jmp	short loc_641DF019
			
mov	[ebp+j], 0
jmp	loc_641DF019
align 10h
public _silc_base64_encode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	dword ptr [esp+4], 1 
mov	edx, [ebp+len]
lea	eax, ds:5[edx*8]
mov	edx, 0AAAAAAABh
mul	edx
shr	edx, 2
add	edx, 5
mov	[esp], edx	
call	_silc_calloc
mov	ecx, [ebp+len]
test	ecx, ecx
jz	loc_641DF1A5
xor	edi, edi
xor	edx, edx
xor	ebx, ebx
xor	esi, esi
xor	ecx, ecx
mov	[ebp+var_1C], eax
jmp	short loc_641DF0F7
align 4
shl	bits, 8
inc	i
mov	edi, i
cmp	i, [ebp+len]
jz	short loc_641DF158
			
mov	pem, [ebp+data]
movzx	edi, byte ptr [eax+edi]
lea	bits, [edi+bits]
inc	char_count
cmp	char_count, 3
jnz	short loc_641DF0EC
mov	char_count, bits
shr	edx, 12h
mov	dl, ds:_pem_enc[edx]
mov	eax, [ebp+var_1C]
mov	[eax+j], dl
mov	edx, bits
shr	edx, 0Ch
and	edx, 3Fh
mov	dl, ds:_pem_enc[edx]
mov	[eax+j+1], dl
mov	edx, bits
shr	edx, 6
and	edx, 3Fh
mov	dl, ds:_pem_enc[edx]
mov	[eax+j+2], dl
and	bits, 3Fh
mov	dl, ds:_pem_enc[ebx]
mov	[eax+j+3], dl
add	j, 4
xor	edx, edx
xor	ebx, ebx
inc	i
mov	edi, i
cmp	i, [ebp+len]
jnz	short loc_641DF0F7
mov	eax, [ebp+var_1C]
test	char_count, char_count
jz	short loc_641DF1A5
mov	i, 2
sub	ecx, char_count
shl	ecx, 3
shl	bits, cl
mov	ecx, bits
shr	ecx, 12h
mov	cl, ds:_pem_enc[ecx]
mov	[pem+j], cl
mov	edi, bits
shr	edi, 0Ch
and	edi, 3Fh
mov	cl, ds:_pem_enc[edi]
mov	[pem+j+1], cl
add	j, 2
dec	char_count
jz	short loc_641DF1B0
shr	bits, 6
and	ebx, 3Fh
mov	dl, ds:_pem_enc[ebx]
mov	[pem+j], dl
mov	byte ptr [pem+j+1], 3Dh
			
add	esp, 2Ch
pop	bits
pop	j
pop	edi
leave
retn
align 10h
mov	byte ptr [pem+j], 3Dh
mov	byte ptr [pem+j+1], 3Dh
add	esp, 2Ch
pop	bits
pop	j
pop	edi
leave
retn
align 4
public _silc_strncat
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+dest]
mov	edx, [ebp+dest_size]
mov	esi, [ebp+src_len]
mov	byte ptr [ebx+edx-1], 0
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
lea	eax, [edx+ecx+1]
cmp	eax, esi
jnb	short loc_641DF210
test	eax, eax
jle	short loc_641DF205
mov	[esp+8], eax	
mov	eax, [ebp+src]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strncat
mov	eax, dest_0
add	esp, 1Ch
pop	dest_0
pop	src_len_0
pop	edi
leave
retn
align 10h
mov	[esp+8], src_len_0 
mov	eax, [ebp+src]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strncat
mov	eax, dest_0
add	esp, 1Ch
pop	dest_0
pop	src_len_0
pop	edi
leave
retn
align 10h
public _silc_string_regex_combine
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+string1]
test	esi, esi
jnz	short loc_641DF24C
xor	ebx, ebx
mov	eax, tmp
add	esp, 2Ch
pop	tmp
pop	string1_0
pop	edi
leave
retn
mov	ebx, [ebp+string2]
test	ebx, ebx
jz	short loc_641DF240
mov	ecx, 0FFFFFFFFh
mov	edi, string1_0
xor	eax, eax
repne scasb
mov	edx, ecx
not	edx
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+string2]
repne scasb
not	ecx
mov	[ebp+var_1C], ecx
mov	dword ptr [esp+4], 1 
lea	eax, [edx+ecx]
mov	[esp], eax	
mov	[ebp+var_20], edx
call	_silc_calloc
mov	ebx, eax
mov	edx, [ebp+var_20]
sub	edx, 3
mov	[esp+8], edx	
mov	[esp+4], esi	
mov	[esp], eax	
call	_strncat
mov	ecx, 0FFFFFFFFh
mov	edi, tmp
xor	eax, eax
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 7Ch
mov	eax, [ebp+var_1C]
sub	eax, 2
mov	[esp+8], eax	
mov	eax, [ebp+string2]
inc	eax
mov	[esp+4], eax	
mov	[esp], tmp	
call	_strncat
mov	eax, tmp
add	esp, 2Ch
pop	tmp
pop	string1_0
pop	edi
leave
retn
align 4
public _silc_string_split
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+string]
mov	edi, [ebp+ch_0]
mov	edx, edi
test	esi, esi
jnz	short loc_641DF2FC
xor	ebx, ebx
			
mov	eax, splitted
add	esp, 3Ch
pop	splitted
pop	cp
pop	ch_0_0
leave
retn
align 4
mov	eax, [ebp+ret_count]
test	eax, eax
jz	short loc_641DF2ED
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
mov	byte ptr [ebp+var_34], dl
call	_silc_calloc
mov	ebx, eax
test	eax, eax
mov	dl, byte ptr [ebp+var_34]
jz	short loc_641DF2EF
movsx	edx, dl
mov	[esp+4], ch_0_0	
mov	[esp], string_0	
call	_strchr
test	eax, eax
jz	loc_641DF3D3
mov	edx, edi
mov	[ebp+sep], dl
mov	[ebp+var_30], 0
mov	[ebp+i], 0
jmp	short loc_641DF387
align 10h
xor	cp, cp
inc	[ebp+i]
mov	item, [ebp+i]
shl	eax, 2
mov	[esp+4], eax	
mov	[esp], splitted	
mov	[ebp+var_34], item
call	_silc_realloc
mov	splitted, eax
test	eax, eax
mov	edx, [ebp+var_34]
jz	loc_641DF2EF
mov	splitted, [ebp+var_30]
mov	[splitted+eax],	edx
add	eax, 4
mov	[ebp+var_30], eax
test	cp, cp
jz	short loc_641DF3B4
lea	eax, [ebp+sep]
mov	[esp+4], eax	
mov	[esp], cp	
call	_strcspn
mov	edi, eax
mov	[esp+4], eax	
mov	[esp], cp	
call	_silc_memdup
mov	edx, eax
test	eax, eax
jz	short loc_641DF3C4
add	cp, edi
cmp	byte ptr [cp], 0
jz	short loc_641DF350
inc	cp
jmp	short loc_641DF352
mov	eax, [ebp+i]
mov	item, [ebp+ret_count]
mov	[edx], eax
jmp	loc_641DF2EF
align 4
mov	[esp], splitted	
call	_silc_free
xor	splitted, splitted
jmp	loc_641DF2EF
mov	ecx, 0FFFFFFFFh
mov	edi, string_0
repne scasb
not	ecx
dec	ecx
mov	[esp+4], ecx	
mov	[esp], esi	
call	_silc_memdup
mov	[splitted], eax
mov	eax, [ebp+ret_count]
mov	dword ptr [eax], 1
jmp	loc_641DF2EF
align 4
public _silc_string_compare
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+string1]
test	esi, esi
jz	loc_641DF5F0
mov	ecx, [ebp+string2]
test	ecx, ecx
jz	loc_641DF5F0
mov	edx, 0FFFFFFFFh
xor	eax, eax
mov	ecx, edx
mov	edi, string1_0
repne scasb
not	ecx
dec	ecx
mov	[ebp+var_24], ecx
mov	ecx, edx
mov	edi, [ebp+string2]
repne scasb
mov	edx, ecx
not	edx
dec	edx
mov	[ebp+var_20], edx
mov	[esp+8], edx	
mov	eax, [ebp+string2]
mov	[esp+4], eax	
mov	[esp], esi	
call	_strncmp
test	eax, eax
jz	loc_641DF5B0
mov	ecx, [ebp+var_20]
cmp	[ebp+var_24], ecx
jle	short loc_641DF478
mov	dword ptr [esp+4], 2Ah 
mov	[esp], string1_0 
call	_strchr
test	eax, eax
jz	loc_641DF5F0
mov	dword ptr [esp+4], 1 
mov	eax, [ebp+var_24]
inc	eax
mov	[esp], eax	
call	_silc_calloc
mov	ebx, eax
mov	edi, eax
mov	ecx, [ebp+var_24]
rep movsb
mov	dword ptr [esp+4], 1 
mov	eax, [ebp+var_20]
inc	eax
mov	[esp], eax	
call	_silc_calloc
mov	[ebp+var_1C], eax
mov	tmpstr1, eax
mov	string1_0, [ebp+string2]
mov	ecx, [ebp+var_20]
rep movsb
mov	edx, [ebp+var_24]
test	edx, edx
jle	short loc_641DF50A
xor	string2_0, string2_0
mov	tmpstr2, [ebp+var_24]
jmp	short loc_641DF4D1
cmp	al, 3Fh
jz	loc_641DF568
			
inc	i
cmp	edi, i
jle	short loc_641DF50A
mov	al, [ebx+i]
cmp	al, 2Ah
jnz	short loc_641DF4C4
mov	[esp+8], i	
mov	eax, [ebp+var_1C]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strncmp
test	eax, eax
jnz	short loc_641DF4CC
mov	edi, [ebp+var_1C]
mov	ecx, [ebp+var_20]
rep stosb
mov	[esp+8], i	
mov	[esp+4], ebx	
mov	edx, [ebp+var_1C]
mov	[esp], edx	
call	_strncpy
			
mov	dword ptr [esp+4], 2Ah 
mov	[esp], ebx	
call	_strchr
test	eax, eax
jz	short loc_641DF521
mov	byte ptr [eax],	0
mov	eax, [ebp+var_1C]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strcmp
test	eax, eax
jz	loc_641DF5C0
xor	eax, eax
mov	tmpstr2, ebx
mov	ecx, [ebp+var_24]
rep stosb
mov	tmpstr1, [ebp+var_1C]
mov	ecx, [ebp+var_20]
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	ecx, [ebp+var_1C]
mov	[esp], ecx	
call	_silc_free
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	i
pop	tmpstr2
leave
retn
align 4
mov	[esp+8], i	
mov	ecx, [ebp+var_1C]
mov	[esp+4], ecx	
mov	[esp], ebx	
call	_strncmp
test	eax, eax
jnz	loc_641DF4CC
mov	al, [ebx+i+1]
cmp	al, 3Fh
jz	short loc_641DF598
mov	edx, [ebp+var_1C]
cmp	al, [edx+i+1]
jnz	loc_641DF4CC
cmp	edi, [ebp+var_20]
jl	loc_641DF4CC
mov	ecx, [ebp+var_1C]
mov	byte ptr [ecx+i], 3Fh
jmp	loc_641DF4CC
align 10h
mov	edx, [ebp+var_24]
cmp	[ebp+var_20], edx
jnz	loc_641DF458
mov	al, 1
jmp	short loc_641DF55E
mov	tmpstr2, ebx
mov	ecx, [ebp+var_24]
rep stosb
mov	tmpstr1, [ebp+var_1C]
mov	ecx, [ebp+var_20]
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	edx, [ebp+var_1C]
mov	[esp], edx	
call	_silc_free
mov	eax, 1
add	esp, 2Ch
pop	ebx
pop	i
pop	tmpstr2
leave
retn
align 10h
			
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	string1_0
pop	edi
leave
retn
align 4
public _silc_string_match
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+string1]
mov	ebx, [ebp+string2]
test	eax, eax
jz	short loc_641DF684
test	string2_0, string2_0
jz	short loc_641DF684
mov	[esp], string1_0 
call	_silc_string_regexify
mov	esi, eax
mov	dword ptr [esp+8], 9 
mov	[esp+4], eax	
lea	edi, [ebp+preg]
mov	[esp], edi	
call	_regcomp
test	eax, eax
jz	short loc_641DF64C
xor	string2_0, string2_0
mov	[esp], s1
call	_silc_free
mov	eax, ret
add	esp, 4Ch
pop	ret
pop	s1
pop	edi
leave
retn
mov	dword ptr [esp+10h], 0
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	[esp+4], string2_0 
mov	[esp], edi	
call	_regexec
xor	string2_0, string2_0
test	eax, eax
setz	bl
mov	[esp], edi	
call	_regfree
jmp	short loc_641DF63A
align 4
			
xor	string2_0, string2_0
mov	string1_0, ret
add	esp, 4Ch
pop	ret
pop	esi
pop	edi
leave
retn
public _silc_base64_encode_file
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	dword ptr [esp+4], 1 
mov	edx, [ebp+data_len]
lea	eax, ds:5[edx*8]
mov	edx, 0AAAAAAABh
mul	edx
shr	edx, 2
add	edx, 5
mov	[esp], edx	
call	_silc_calloc
mov	ebx, eax
mov	edi, [ebp+data_len]
test	edi, edi
jz	loc_641DF799
xor	edi, edi
xor	esi, esi
xor	eax, eax
xor	edx, edx
xor	ecx, ecx
mov	[ebp+len], pem
jmp	short loc_641DF6E7
shl	edx, 8
inc	ecx
mov	edi, ecx
cmp	ecx, [ebp+data_len]
jz	short loc_641DF748
			
mov	pem, [ebp+data]
movzx	edi, byte ptr [ebx+edi]
lea	edx, [edi+edx]
inc	eax
cmp	eax, 3
jnz	short loc_641DF6DC
mov	eax, edx
shr	eax, 12h
mov	al, ds:_pem_enc[eax]
mov	ebx, [ebp+len]
mov	[ebx+esi], al
mov	eax, edx
shr	eax, 0Ch
and	eax, 3Fh
mov	al, ds:_pem_enc[eax]
mov	[ebx+esi+1], al
mov	eax, edx
shr	eax, 6
and	eax, 3Fh
mov	al, ds:_pem_enc[eax]
mov	[ebx+esi+2], al
and	edx, 3Fh
mov	al, ds:_pem_enc[edx]
mov	[ebx+esi+3], al
add	esi, 4
xor	eax, eax
xor	edx, edx
inc	ecx
mov	edi, ecx
cmp	ecx, [ebp+data_len]
jnz	short loc_641DF6E7
mov	ebx, [ebp+len]
test	eax, eax
jz	short loc_641DF799
mov	ecx, 2
sub	ecx, eax
shl	ecx, 3
shl	edx, cl
mov	ecx, edx
shr	ecx, 12h
mov	cl, ds:_pem_enc[ecx]
mov	[pem+esi], cl
mov	edi, edx
shr	edi, 0Ch
and	edi, 3Fh
mov	cl, ds:_pem_enc[edi]
mov	[pem+esi+1], cl
add	esi, 2
dec	eax
jz	loc_641DF834
shr	edx, 6
and	edx, 3Fh
mov	al, ds:_pem_enc[edx]
mov	[pem+esi], al
mov	byte ptr [pem+esi+1], 3Dh
			
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, pem
repne scasb
not	ecx
lea	eax, [ecx-1]
mov	[ebp+len], eax
mov	dword ptr [esp+4], 1 
mov	edx, 38E38E39h
mul	edx
shr	edx, 4
add	ecx, edx
mov	[esp], ecx	
call	_silc_calloc
mov	esi, [ebp+len]
test	esi, esi
jz	short loc_641DF81B
xor	edi, edi
mov	ecx, 1
xor	esi, esi
xor	edx, edx
mov	[ebp+var_2C], eax
mov	[ebp+var_3C], cols
jmp	short loc_641DF7F9
align 4
mov	al, [pem+j]
mov	cols, [ebp+var_2C]
mov	[ecx+edi], al
inc	j
inc	[ebp+var_3C]
inc	i
mov	edi, i
cmp	[ebp+len], i
jbe	short loc_641DF818
			
cmp	[ebp+var_3C], 48h
jnz	short loc_641DF7E4
mov	cols, [ebp+var_2C]
mov	byte ptr [ecx+edi], 0Ah
inc	[ebp+len]
mov	[ebp+var_3C], 1
inc	i
mov	edi, i
cmp	[ebp+len], i
ja	short loc_641DF7F9
mov	pem2, [ebp+var_2C]
mov	[esp], pem	
mov	[ebp+var_20], pem2
call	_silc_free
mov	eax, [ebp+var_20]
add	esp, 4Ch
pop	pem
pop	j
pop	edi
leave
retn
align 4
mov	byte ptr [pem+esi], 3Dh
mov	byte ptr [pem+esi+1], 3Dh
jmp	loc_641DF799
align 4
public _silc_compare_timeval
			
push	ebp
mov	ebp, esp
mov	ecx, [ebp+t1]
mov	edx, [ebp+t2]
mov	eax, [ecx]
sub	eax, [edx]
jnz	short locret_641DF859
mov	s, [t1_0+4]
sub	s, [t2_0+4]
leave
retn
align 4
public _silc_time_generalized_string
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+time_val]
mov	esi, [ebp+ret_string]
mov	edx, [ebp+ret_string_size]
xor	eax, eax
mov	edi, esi
mov	ecx, edx
rep stosb
dec	edx
mov	[ebp+var_1C], edx
mov	eax, [ebx+4]
shr	ax, 6
and	eax, 3Fh
mov	[esp+20h], eax
mov	al, [ebx+4]
and	eax, 3Fh
mov	[esp+1Ch], eax
mov	al, [ebx+3]
and	eax, 1Fh
mov	[esp+18h], eax
mov	al, [ebx+2]
shr	al, 3
movzx	eax, al
mov	[esp+14h], eax
mov	eax, [ebx]
shr	eax, 0Fh
and	eax, 0Fh
mov	[esp+10h], eax
mov	eax, [ebx]
and	eax, 7FFFh
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a04u02u02u02u02 
mov	[esp+4], edx	
mov	[esp], esi	
call	_silc_snprintf
mov	ret_string_0, eax
test	eax, eax
js	loc_641DF9AC
mov	ret, [time_val_0+4]
test	eax, 3FF000h
jnz	loc_641DF980
mov	ax, [time_val_0+6]
test	eax, 7C0h
jz	short loc_641DF94C
mov	cl, [time_val_0+8]
shr	ax, 6
mov	dl, cl
and	edx, 40h
cmp	dl, 1
sbb	edx, edx
and	edx, 2
add	edx, 2Bh
and	ecx, 3Fh
mov	[esp+14h], ecx
and	eax, 1Fh
mov	[esp+10h], eax
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset aC02u02u 
mov	edx, [ebp+var_1C]
sub	edx, ret
mov	[esp+4], edx	
lea	ret, [ret_string_0+ret]
mov	[esp], edi	
call	_silc_snprintf
not	eax
shr	eax, 1Fh
add	esp, 4Ch
pop	time_val_0
pop	ret_string_0
pop	edi
leave
retn
align 4
mov	cl, [time_val_0+8]
test	cl, 3Fh
jnz	short loc_641DF8FA
mov	dword ptr [esp+8], offset aZ 
mov	edx, [ebp+var_1C]
sub	edx, ret
mov	[esp+4], edx	
lea	ret, [ret_string_0+ret]
mov	[esp], edi	
call	_silc_snprintf
not	eax
shr	eax, 1Fh
add	esp, 4Ch
pop	time_val_0
pop	ret_string_0
pop	edi
leave
retn
align 10h
shr	eax, 0Ch
and	eax, 3FFh
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a_Lu 
mov	eax, [ebp+var_1C]
sub	eax, ret
mov	[esp+4], eax	
lea	eax, [ret_string_0+ret]
mov	[esp], eax	
call	_silc_snprintf
test	eax, eax
jns	short loc_641DF9B8
xor	ret, ret
add	esp, 4Ch
pop	time_val_0
pop	ret_string_0
pop	ret
leave
retn
align 4
lea	edi, [ret+edi]
jmp	loc_641DF8EC
public _silc_time_universal_string
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+time_val]
mov	esi, [ebp+ret_string_size]
xor	eax, eax
mov	edi, [ebp+ret_string]
mov	ecx, esi
rep stosb
dec	esi
mov	eax, [ebx+4]
shr	ax, 6
and	eax, 3Fh
mov	[esp+20h], eax
mov	al, [ebx+4]
and	eax, 3Fh
mov	[esp+1Ch], eax
mov	al, [ebx+3]
and	eax, 1Fh
mov	[esp+18h], eax
mov	al, [ebx+2]
shr	al, 3
movzx	eax, al
mov	[esp+14h], eax
mov	eax, [ebx]
shr	eax, 0Fh
and	eax, 0Fh
mov	[esp+10h], eax
mov	eax, [ebx]
and	eax, 7FFFh
mov	cl, 64h
cdq
idiv	ecx
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset a02u02u02u02u02 
mov	[esp+4], esi	
mov	eax, [ebp+ret_string]
mov	[esp], eax	
call	_silc_snprintf
test	eax, eax
js	loc_641DFAD4
mov	dx, [time_val_0+6]
test	edx, 7C0h
jz	short loc_641DFAA4
mov	cl, [time_val_0+8]
mov	time_val_0, edx
shr	bx, 6
mov	dl, cl
and	edx, 40h
cmp	dl, 1
sbb	edx, edx
and	edx, 2
add	edx, 2Bh
and	ecx, 3Fh
mov	[esp+14h], ecx
mov	ecx, ebx
and	ecx, 1Fh
mov	[esp+10h], ecx
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset aC02u02u 
sub	esi, ret
mov	[esp+4], esi	
add	ret, [ebp+ret_string]
mov	[esp], eax	
call	_silc_snprintf
not	eax
shr	eax, 1Fh
add	esp, 3Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	cl, [time_val_0+8]
test	cl, 3Fh
jnz	short loc_641DFA52
mov	dword ptr [esp+8], offset aZ 
sub	esi, ret
mov	[esp+4], esi	
add	ret, [ebp+ret_string]
mov	[esp], eax	
call	_silc_snprintf
not	eax
shr	eax, 1Fh
add	esp, 3Ch
pop	time_val_0
pop	esi
pop	edi
leave
retn
align 4
xor	ret, ret
add	esp, 3Ch
pop	time_val_0
pop	esi
pop	edi
leave
retn
align 10h
public _silc_time_universal
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	ebx, [ebp+ret_time]
test	ebx, ebx
jz	loc_641DFD0D
mov	[ebp+z], 0
mov	[ebp+second], 0
mov	[ebp+minute], 0
mov	[ebp+hour], 0
mov	ecx, 0Ch
xor	eax, eax
mov	edi, ret_time_0
rep stosb
lea	eax, [ebp+z]
mov	[esp+20h], eax
lea	eax, [ebp+second]
mov	[esp+1Ch], eax
lea	ret_time_0, [ebp+minute]
mov	[esp+18h], edi
lea	esi, [ebp+hour]
mov	[esp+14h], esi
lea	eax, [ebp+day]
mov	[esp+10h], eax
lea	eax, [ebp+month]
mov	[esp+0Ch], eax
lea	eax, [ebp+year]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a02u02u02u02u_0 
mov	eax, [ebp+universal_time]
mov	[esp], eax	
call	_sscanf
cmp	eax, 2
jle	short loc_641DFB90
mov	ecx, [ebp+second]
mov	[ebp+var_48], ecx
mov	ret, [ebp+minute]
mov	[ebp+var_44], eax
mov	ecx, [ebp+hour]
mov	[ebp+var_40], ecx
mov	eax, [ebp+day]
mov	[ebp+var_4C], eax
mov	edx, [ebp+month]
mov	eax, [ebp+year]
cmp	eax, 8000h
ja	short loc_641DFB90
lea	ecx, [edx-1]
cmp	ecx, 0Bh
jbe	short loc_641DFB9C
xchg	ax, ax
			
xor	ret, ret
			
add	esp, 7Ch
pop	ret_time_0
pop	esi
pop	edi
leave
retn
align 4
mov	ecx, [ebp+var_4C]
dec	ecx
cmp	ecx, 1Eh
ja	short loc_641DFB90
cmp	[ebp+var_40], 17h
ja	short loc_641DFB90
cmp	[ebp+var_44], 3Ch
ja	short loc_641DFB90
cmp	[ebp+var_48], 3Dh
ja	short loc_641DFB90
and	eax, 7FFFh
mov	ecx, [ebx]
and	ecx, 0FFFF8000h
mov	word ptr [ebp+var_3C], cx
or	word ptr [ebp+var_3C], ax
mov	ecx, [ebp+var_3C]
mov	[ret_time_0], cx
mov	ecx, edx
and	ecx, 0Fh
shl	ecx, 0Fh
mov	edx, [ret_time_0]
and	edx, 0FFF87FFFh
or	edx, ecx
mov	[ret_time_0], edx
mov	cl, byte ptr [ebp+var_4C]
shl	ecx, 3
mov	dl, [ret_time_0+2]
and	edx, 7
or	edx, ecx
mov	[ret_time_0+2],	dl
mov	cl, byte ptr [ebp+var_40]
and	ecx, 1Fh
mov	dl, [ret_time_0+3]
and	edx, 0FFFFFFE0h
or	edx, ecx
mov	[ret_time_0+3],	dl
mov	cl, byte ptr [ebp+var_44]
and	ecx, 3Fh
mov	dl, [ret_time_0+4]
and	edx, 0FFFFFFC0h
or	edx, ecx
mov	[ret_time_0+4],	dl
mov	ecx, [ebp+var_48]
and	ecx, 3Fh
shl	ecx, 6
mov	edx, [ret_time_0+4]
and	edx, 0FFFFF03Fh
or	edx, ecx
mov	[ret_time_0+4],	dx
and	dword ptr [ret_time_0+4], 0FFC00FFFh
mov	dl, [ebp+z]
cmp	dl, 2Dh
jz	short loc_641DFC90
cmp	dl, 2Bh
jz	short loc_641DFC90
cmp	dl, 5Ah
jnz	loc_641DFB90
mov	edx, [ret_time_0]
add	eax, 76Ch
and	eax, 7FFFh
and	edx, 0FFFF8000h
or	edx, eax
mov	[ret_time_0], dx
movzx	ecx, ax
cmp	ecx, 79Dh
jg	loc_641DFD0D
add	eax, 64h
and	eax, 7FFFh
and	edx, 0FFFF8000h
or	edx, eax
mov	[ret_time_0], dx
mov	al, 1
jmp	loc_641DFB92
align 10h
			
mov	[esp+0Ch], edi
mov	[esp+8], esi
mov	dword ptr [esp+4], offset a02u02u 
mov	eax, [ebp+universal_time]
add	eax, 3
mov	[esp], eax	
call	_sscanf
cmp	eax, 2
jnz	loc_641DFB90
mov	ret, [ebp+hour]
cmp	eax, 17h
ja	loc_641DFB90
mov	ecx, [ebp+minute]
cmp	ecx, 3Ch
ja	loc_641DFB90
and	eax, 1Fh
shl	eax, 6
mov	dx, [ret_time_0+6]
and	edx, 0FFFFF83Fh
or	edx, eax
mov	[ret_time_0+6],	dx
and	ecx, 3Fh
mov	al, [ret_time_0+8]
and	eax, 0FFFFFF80h
cmp	[ebp+z], 2Dh
setnz	dl
shl	edx, 6
or	eax, ecx
or	eax, edx
mov	[ret_time_0+8],	al
mov	edx, [ret_time_0]
mov	eax, edx
and	eax, 7FFFh
jmp	loc_641DFC50
			
mov	al, 1
jmp	loc_641DFB92
public _silc_time_generalized
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 7Ch
mov	eax, [ebp+ret_time]
test	eax, eax
jz	loc_641DFF1C
mov	[ebp+z], 0
mov	[ebp+msecond], 0
mov	[ebp+second], 0
mov	[ebp+minute], 0
mov	[ebp+hour], 0
mov	ecx, 0Ch
xor	eax, eax
mov	edi, [ebp+ret_time]
rep stosb
lea	eax, [ebp+second]
mov	[esp+1Ch], eax
lea	ebx, [ebp+minute]
mov	[esp+18h], ebx
lea	esi, [ebp+hour]
mov	[esp+14h], esi
lea	eax, [ebp+day]
mov	[esp+10h], eax
lea	eax, [ebp+month]
mov	[esp+0Ch], eax
lea	eax, [ebp+year]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a04u02u02u02u02 
mov	eax, [ebp+generalized_time]
mov	[esp], eax	
call	_sscanf
cmp	eax, 2
jle	short loc_641DFDC0
mov	edx, [ebp+second]
mov	[ebp+var_54], edx
mov	ecx, [ebp+minute]
mov	[ebp+var_50], ecx
mov	ret_time_0, [ebp+hour]
mov	[ebp+var_5C], edi
mov	ecx, [ebp+day]
mov	edx, [ebp+month]
mov	ret, [ebp+year]
cmp	eax, 8000h
ja	short loc_641DFDC0
lea	edi, [edx-1]
cmp	edi, 0Bh
jbe	short loc_641DFDCC
			
xor	ret, ret
add	esp, 7Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
lea	edi, [ecx-1]
cmp	edi, 1Eh
ja	short loc_641DFDC0
cmp	[ebp+var_5C], 17h
ja	short loc_641DFDC0
cmp	[ebp+var_50], 3Ch
ja	short loc_641DFDC0
cmp	[ebp+var_54], 3Dh
ja	short loc_641DFDC0
and	eax, 7FFFh
mov	word ptr [ebp+var_4C], ax
mov	edi, [ebp+ret_time]
mov	eax, [edi]
and	eax, 0FFFF8000h
or	eax, [ebp+var_4C]
mov	[edi], ax
and	edx, 0Fh
shl	edx, 0Fh
mov	eax, [edi]
and	eax, 0FFF87FFFh
or	eax, edx
mov	[edi], eax
shl	ecx, 3
mov	al, [edi+2]
and	eax, 7
or	eax, ecx
mov	[edi+2], al
mov	al, byte ptr [ebp+var_5C]
and	eax, 1Fh
mov	edi, eax
mov	edx, [ebp+ret_time]
mov	al, [edx+3]
and	eax, 0FFFFFFE0h
or	eax, edi
mov	[edx+3], al
mov	dl, byte ptr [ebp+var_50]
and	edx, 3Fh
mov	ecx, [ebp+ret_time]
mov	al, [ecx+4]
and	eax, 0FFFFFFC0h
or	eax, edx
mov	[ecx+4], al
mov	edx, [ebp+var_54]
and	edx, 3Fh
shl	edx, 6
mov	eax, [ecx+4]
and	eax, 0FFFFF03Fh
or	eax, edx
mov	[ecx+4], ax
and	dword ptr [ecx+4], 0FFC00FFFh
lea	edi, [ebp+z]
mov	[esp+8], edi
mov	dword ptr [esp+4], offset aC 
mov	eax, [ebp+generalized_time]
add	eax, 4
mov	[esp], eax	
call	_sscanf
dec	eax
jnz	loc_641DFDC0
mov	al, [ebp+z]
cmp	al, 2Eh
jz	loc_641DFF26
mov	edx, 4
			
cmp	al, 2Dh
jz	short loc_641DFEA2
cmp	al, 2Bh
jnz	short loc_641DFF1C
mov	[esp+0Ch], ebx
mov	[esp+8], esi
mov	dword ptr [esp+4], offset a02u02u 
mov	ecx, [ebp+generalized_time]
lea	ret, [ecx+i+1]
mov	[esp], ret	
call	_sscanf
cmp	ret, 2
jnz	loc_641DFDC0
mov	ret, [ebp+hour]
cmp	eax, 17h
ja	loc_641DFDC0
mov	ecx, [ebp+minute]
cmp	ecx, 3Ch
ja	loc_641DFDC0
and	eax, 1Fh
shl	eax, 6
mov	ebx, [ebp+ret_time]
mov	dx, [ebx+6]
and	edx, 0FFFFF83Fh
or	edx, eax
mov	[ebx+6], dx
and	ecx, 3Fh
mov	al, [ebx+8]
and	eax, 0FFFFFF80h
cmp	[ebp+z], 2Dh
setnz	dl
shl	edx, 6
or	eax, ecx
or	eax, edx
mov	[ebx+8], al
mov	al, 1
jmp	loc_641DFDC2
			
mov	al, 1
add	esp, 7Ch
pop	ebx
pop	esi
pop	edi
leave
retn
lea	eax, [ebp+l]
mov	[esp+0Ch], eax
lea	eax, [ebp+msecond]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aUN 
mov	eax, [ebp+generalized_time]
add	eax, 5
mov	[esp], eax	
call	_sscanf
dec	eax
jnz	loc_641DFDC0
mov	ecx, [ebp+l]
cmp	ecx, 4
jle	short loc_641DFFD8
mov	edx, [ebp+msecond]
mov	edi, 0CCCCCCCDh
lea	esi, [esi+0]
mov	ret, edx
mul	edi
shr	edx, 3
dec	ecx
cmp	ecx, 4
jnz	short loc_641DFF64
mov	[ebp+msecond], edx
mov	[ebp+l], ecx
and	edx, 3FFh
shl	edx, 0Ch
mov	edi, [ebp+ret_time]
mov	ret, [edi+4]
and	ret, 0FFC00FFFh
or	ret, edx
mov	[edi+4], ret
lea	edx, [ecx+5]
xor	ret, ret
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+generalized_time]
repne scasb
not	ecx
dec	ecx
cmp	ecx, i
jb	short loc_641DFFAE
mov	al, [ebp+z]
jmp	loc_641DFE9A
lea	ret, [ebp+z]
mov	[esp+8], ret
mov	dword ptr [esp+4], offset aC 
mov	ret, [ebp+generalized_time]
add	ret, i
mov	[esp], ret	
mov	[ebp+var_58], i
call	_sscanf
mov	al, [ebp+z]
mov	edx, [ebp+var_58]
jmp	loc_641DFE9A
mov	edx, [ebp+msecond]
jmp	short loc_641DFF77
align 10h
public _silc_time_usec
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
lea	eax, [ebp+curtime]
mov	[esp], eax	
call	_silc_gettimeofday
mov	eax, 0F4240h
imul	[ebp+curtime.tv_sec]
mov	ecx, [ebp+curtime.tv_usec]
mov	ebx, ecx
sar	ebx, 1Fh
add	eax, ecx
adc	edx, ebx
add	esp, 24h
pop	ebx
leave
retn
public _silc_time_msec
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
lea	eax, [ebp+curtime]
mov	[esp], eax	
call	_silc_gettimeofday
mov	dword ptr [esp+8], 3E8h	
mov	dword ptr [esp+0Ch], 0
mov	eax, [ebp+curtime.tv_usec]
mov	[esp], eax	
cdq
mov	[esp+4], edx
call	___udivdi3
mov	ebx, eax
mov	esi, edx
mov	ecx, 3E8h
mov	eax, [ebp+curtime.tv_sec]
imul	ecx
add	ebx, eax
adc	esi, edx
mov	eax, ebx
mov	edx, esi
add	esp, 30h
pop	ebx
pop	esi
leave
retn
public _silc_time
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	dword ptr [esp], 0 
call	_time
cdq
leave
retn
align 4
public _silc_time_string
			
push	ebp
mov	ebp, esp
push	edi
sub	esp, 24h
mov	eax, dword ptr [ebp+time_val]
mov	edx, dword ptr [ebp+time_val+4]
or	edx, eax
jz	short loc_641E00B4
mov	[ebp+curtime], eax
lea	eax, [ebp+curtime]
mov	[esp], eax	
call	_ctime
mov	edx, eax
test	eax, eax
jz	short loc_641E00AB
xor	return_time, return_time
mov	ecx, 0FFFFFFFFh
mov	edi, return_time
repne scasb
not	ecx
mov	byte ptr [edx+ecx-2], 0
mov	eax, return_time
add	esp, 24h
pop	edi
leave
retn
align 4
mov	dword ptr [esp], 0 
call	_time
mov	[ebp+curtime], eax
jmp	short loc_641E0088
align 4
public _silc_time_value
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, dword ptr [ebp+time_val]
mov	esi, dword ptr [ebp+time_val+4]
mov	ecx, [ebp+ret_time]
test	ecx, ecx
jz	loc_641E039B
mov	eax, esi
or	eax, ebx
jz	loc_641E0308
mov	dword ptr [esp+8], 3E8h	
mov	dword ptr [esp+0Ch], 0
mov	[esp], ebx	
mov	[esp+4], esi
call	___udivdi3
mov	[ebp+timeval], eax
lea	eax, [ebp+timeval]
mov	[esp], eax	
call	_localtime
mov	[ebp+t], eax
test	eax, eax
jz	short loc_641E015A
mov	ecx, 0Ch
xor	eax, eax
mov	edi, [ebp+ret_time]
rep stosb
mov	ecx, [ebp+t]
mov	ecx, [ecx]
mov	[ebp+var_3C], ecx
mov	eax, [ebp+t]
mov	eax, [eax+4]
mov	[ebp+var_38], eax
mov	edx, [ebp+t]
mov	ecx, [edx+8]
mov	ret_time_0, [edx+0Ch]
mov	eax, [edx+10h]
mov	edx, [edx+14h]
add	edx, 76Ch
mov	[ebp+var_34], edx
cmp	edx, 8000h
jbe	short loc_641E0164
			
xor	eax, eax
add	esp, 5Ch
pop	ebx
pop	esi
pop	edi
leave
retn
lea	edx, [eax+1]
mov	[ebp+var_40], edx
cmp	eax, 0Bh
ja	short loc_641E015A
lea	eax, [edi-1]
cmp	eax, 1Eh
ja	short loc_641E015A
cmp	ecx, 17h
ja	short loc_641E015A
cmp	[ebp+var_38], 3Ch
ja	short loc_641E015A
cmp	[ebp+var_3C], 3Dh
ja	short loc_641E015A
mov	dword ptr [esp+8], 3E8h	
mov	dword ptr [esp+0Ch], 0
mov	[esp], ebx	
mov	[esp+4], esi
mov	[ebp+var_44], ecx
call	___umoddi3
mov	edx, eax
cmp	eax, 3E8h
mov	ecx, [ebp+var_44]
ja	short loc_641E015A
mov	ebx, [ebp+var_34]
and	ebx, 7FFFh
mov	esi, [ebp+ret_time]
mov	eax, [esi]
and	eax, 0FFFF8000h
or	eax, ebx
mov	[esi], ax
mov	ebx, [ebp+var_40]
and	ebx, 0Fh
shl	ebx, 0Fh
mov	eax, [esi]
and	eax, 0FFF87FFFh
or	eax, ebx
mov	[esi], eax
shl	edi, 3
mov	al, [esi+2]
and	eax, 7
or	eax, edi
mov	[esi+2], al
and	ecx, 1Fh
mov	al, [esi+3]
and	eax, 0FFFFFFE0h
or	eax, ecx
mov	[esi+3], al
mov	cl, byte ptr [ebp+var_38]
and	ecx, 3Fh
mov	al, [esi+4]
and	eax, 0FFFFFFC0h
or	eax, ecx
mov	[esi+4], al
mov	ecx, [ebp+var_3C]
and	ecx, 3Fh
shl	ecx, 6
mov	eax, [esi+4]
and	eax, 0FFFFF03Fh
or	eax, ecx
mov	[esi+4], ax
and	edx, 3FFh
shl	edx, 0Ch
mov	eax, [esi+4]
and	eax, 0FFC00FFFh
or	eax, edx
mov	[esi+4], eax
mov	eax, [ebp+t]
mov	edx, [eax+20h]
test	edx, edx
setnz	al
shl	eax, 7
mov	cl, [esi+8]
and	ecx, 7Fh
or	ecx, eax
mov	[esi+8], cl
mov	eax, ds:__imp___timezone
mov	esi, [eax]
mov	eax, esi
shr	eax, 1Fh
shl	eax, 6
and	ecx, 0FFFFFFBFh
or	ecx, eax
mov	edx, [ebp+ret_time]
mov	[edx+8], cl
test	cl, 40h
jz	loc_641E0348
mov	ebx, 91A2B3C5h
mov	eax, esi
imul	ebx
mov	[ebp+t], eax
mov	[ebp+var_2C], edx
lea	eax, [esi+edx]
sar	eax, 0Bh
mov	ebx, esi
sar	ebx, 1Fh
sub	ebx, eax
and	ebx, 1Fh
shl	ebx, 6
mov	edx, [ebp+ret_time]
mov	ax, [edx+6]
and	eax, 0FFFFF83Fh
or	eax, ebx
mov	[edx+6], ax
mov	eax, esi
neg	eax
mov	edx, 0E10h
mov	ebx, edx
cdq
idiv	ebx
and	edx, 3Fh
mov	al, dl
and	eax, 3Fh
and	ecx, 0FFFFFFC0h
or	ecx, eax
mov	ebx, [ebp+ret_time]
mov	[ebx+8], cl
test	cl, 3Fh
jz	loc_641E039B
movzx	ebx, dl
mov	esi, 88888889h
mov	eax, ebx
imul	esi
mov	[ebp+t], eax
mov	[ebp+var_2C], edx
mov	esi, [ebp+var_2C]
lea	edx, [ebx+esi]
sar	edx, 5
and	edx, 3Fh
and	ecx, 0FFFFFFC0h
or	ecx, edx
mov	eax, [ebp+ret_time]
mov	[eax+8], cl
mov	al, 1
add	esp, 5Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
lea	eax, [ebp+tv]
mov	[esp], eax	
call	_silc_gettimeofday
mov	dword ptr [esp+8], 3E8h	
mov	dword ptr [esp+0Ch], 0
mov	eax, [ebp+tv.tv_usec]
mov	[esp], eax	
cdq
mov	[esp+4], edx
call	___udivdi3
mov	ebx, eax
mov	esi, edx
mov	eax, 3E8h
imul	[ebp+tv.tv_sec]
add	ebx, eax
adc	esi, edx
jmp	loc_641E00EC
mov	ebx, 91A2B3C5h
mov	eax, esi
imul	ebx
mov	[ebp+t], eax
mov	[ebp+var_2C], edx
lea	eax, [esi+edx]
sar	eax, 0Bh
mov	ebx, esi
sar	ebx, 1Fh
sub	eax, ebx
mov	edi, eax
and	edi, 1Fh
shl	edi, 6
mov	edx, [ebp+ret_time]
mov	bx, [edx+6]
and	ebx, 0FFFFF83Fh
or	ebx, edi
mov	[edx+6], bx
lea	eax, [eax+eax*2]
lea	ebx, [eax+eax*4]
mov	eax, ebx
shl	eax, 4
sub	eax, ebx
shl	eax, 4
mov	edx, esi
sub	dl, al
and	edx, 3Fh
jmp	loc_641E02BA
			
mov	al, 1
jmp	loc_641E015C
align 4
public _silc_timezone
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	esi, [ebp+timezone]
mov	ebx, [ebp+timezone_size]
cmp	ebx, 5
ja	short loc_641E03C0
xor	eax, eax
add	esp, 30h
pop	timezone_size_0
pop	timezone_0
leave
retn
lea	eax, [ebp+curtime]
mov	[esp+8], eax	
mov	dword ptr [esp], 0 
mov	dword ptr [esp+4], 0
call	_silc_time_value
test	al, al
jz	short loc_641E03B7
mov	dx, word ptr [ebp+curtime._bf4+2]
test	edx, 7C0h
jnz	short loc_641E0430
mov	al, byte ptr [ebp+curtime._bf8]
test	al, 3Fh
jnz	loc_641E047C
shr	dx, 6
and	eax, 40h
cmp	al, 1
sbb	eax, eax
and	eax, 2
add	eax, 2Bh
and	edx, 1Fh
mov	[esp+10h], edx
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aC02d	
mov	[esp+4], timezone_size_0 
mov	[esp], timezone_0 
call	_silc_snprintf
mov	al, 1
add	esp, 30h
pop	timezone_size_0
pop	timezone_0
leave
retn
align 10h
mov	al, byte ptr [ebp+curtime._bf8]
mov	cl, al
and	ecx, 3Fh
jz	short loc_641E03F6
shr	dx, 6
and	eax, 40h
cmp	al, 1
sbb	eax, eax
and	eax, 2
add	eax, 2Bh
movzx	ecx, cl
mov	[esp+14h], ecx
and	edx, 1Fh
mov	[esp+10h], edx
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aC02d02d 
mov	[esp+4], timezone_size_0 
mov	[esp], timezone_0 
call	_silc_snprintf
mov	al, 1
add	esp, 30h
pop	timezone_size_0
pop	timezone_0
leave
retn
align 4
mov	dword ptr [esp+8], offset aZ 
mov	[esp+4], timezone_size_0 
mov	[esp], timezone_0 
call	_silc_snprintf
mov	al, 1
jmp	loc_641E03B9
align 4
public _silc_utf8_strncasecmp
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+s1]
mov	esi, [ebp+s2]
mov	ebx, [ebp+n]
cmp	eax, esi
jz	loc_641E056C
mov	dword ptr [esp+1Ch], 7 
lea	edx, [ebp+s1u_len]
mov	[esp+18h], edx	
lea	edx, [ebp+s1u]
mov	[esp+14h], edx	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset profile_name 
mov	dword ptr [esp+8], 7 
mov	[esp+4], n_0	
mov	[esp], s1_0	
call	_silc_stringprep
test	eax, eax
jz	short loc_641E04FC
xor	status,	status
add	esp, 4Ch
pop	n_0
pop	s2_0
pop	edi
leave
retn
align 4
mov	dword ptr [esp+1Ch], 7 
lea	status,	[ebp+s2u_len]
mov	[esp+18h], eax	
lea	eax, [ebp+s2u]
mov	[esp+14h], eax	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset profile_name 
mov	dword ptr [esp+8], 7 
mov	[esp+4], n_0	
mov	[esp], s2_0	
call	_silc_stringprep
test	eax, eax
jnz	short loc_641E04F0
mov	edx, [ebp+s1u]
cmp	n_0, n_0
mov	edi, [ebp+s2u]
mov	s2_0, edx
mov	ecx, n_0
repe cmpsb
setz	al
mov	[esp], edx	
mov	[ebp+var_2C], al
call	_silc_free
mov	edx, [ebp+s2u]
mov	[esp], edx	
call	_silc_free
mov	al, [ebp+var_2C]
add	esp, 4Ch
pop	ebx
pop	esi
pop	edi
leave
retn
mov	al, 1
add	esp, 4Ch
pop	n_0
pop	s2_0
pop	edi
leave
retn
align 4
public _silc_utf8_strcasecmp
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+s1]
mov	ebx, [ebp+s2]
cmp	esi, ebx
jz	short loc_641E05D4
mov	edx, 0FFFFFFFFh
xor	eax, eax
mov	ecx, edx
mov	edi, s1_0
repne scasb
not	ecx
dec	ecx
mov	[ebp+n], ecx
mov	ecx, edx
mov	edi, s2_0
repne scasb
mov	edx, ecx
not	edx
dec	edx
cmp	[ebp+n], edx
jz	short loc_641E05B8
add	esp, 2Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	eax, [ebp+n]
mov	[esp+8], eax	
mov	[esp+4], ebx	
mov	[esp], esi	
call	_silc_utf8_strncasecmp
add	esp, 2Ch
pop	s2_0
pop	s1_0
pop	edi
leave
retn
align 4
mov	al, 1
add	esp, 2Ch
pop	s2_0
pop	s1_0
pop	edi
leave
retn
align 10h
public _silc_utf8_decode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	esi, [ebp+utf8]
mov	edx, [ebp+bin]
test	esi, esi
jz	loc_641E069C	
mov	eax, [ebp+utf8_len]
test	eax, eax
jz	short loc_641E0668
cmp	[ebp+bin_encoding], 7
jz	short loc_641E0640
cmp	[ebp+bin_encoding], 6
jz	loc_641E0AD0
xor	edi, edi
xor	ebx, ebx
mov	eax, [ebp+utf8_len]
dec	eax
mov	[ebp+var_50], eax
mov	al, [utf8_0+i]
test	al, al
js	loc_641E0781
and	eax, 7Fh
mov	[ebp+bytes], 1
			
cmp	[ebp+bin_encoding], 0Ch	
ja	short loc_641E069C 
mov	cv, [ebp+bin_encoding]
jmp	ds:off_64265520[ecx*4] 
align 10h
mov	eax, [ebp+utf8_len]
mov	[esp+4], eax	
mov	[esp], utf8_0	
mov	[ebp+var_5C], bin_0
call	_silc_utf8_valid
test	al, al
mov	edx, [ebp+var_5C]
jz	short loc_641E069C 
mov	ecx, [ebp+bin_size]
cmp	[ebp+utf8_len],	ecx
ja	short loc_641E069C 
mov	edi, edx
mov	ecx, [ebp+utf8_len]
rep movsb
			
mov	charval, [ebp+utf8_len]
add	esp, 6Ch
pop	ebx
pop	utf8_0
pop	edi
leave
retn
align 4
cmp	byte ptr [ebp+k], 9Fh
jbe	loc_641E0B93
cmp	byte ptr [ebp+k], 0BFh
ja	loc_641E0B93
cmp	byte ptr [ebp+var_1C], 0
jns	loc_641E0B93
cmp	byte ptr [ebp+var_1C], 0BFh
ja	loc_641E0B93
			
mov	[ebp+utf8_len],	0
mov	charval, [ebp+utf8_len]
add	esp, 6Ch
pop	enclen
pop	enclen
pop	i
leave
retn
align 10h
			
test	bin_0, bin_0	
jz	loc_641E0A74
lea	ecx, [enclen+4]
mov	[ebp+var_4C], ecx
cmp	[ebp+bin_size],	ecx
jb	short loc_641E069C 
mov	[bin_0+enclen],	charval
jmp	loc_641E0760
align 4
			
test	bin_0, bin_0	
jz	loc_641E0A74
lea	ecx, [enclen+4]
mov	[ebp+var_4C], ecx
cmp	[ebp+bin_size],	ecx
jb	short loc_641E069C 
mov	ecx, charval
shr	ecx, 18h
mov	[bin_0+enclen],	cl
mov	ecx, charval
shr	ecx, 10h
mov	[bin_0+enclen+1], cl
mov	ecx, charval
shr	ecx, 8
mov	[bin_0+enclen+2], cl
mov	[bin_0+enclen+3], al
jmp	short loc_641E0760
align 10h
			
test	bin_0, bin_0	
jz	loc_641E0A68
lea	ecx, [enclen+2]
mov	[ebp+var_4C], ecx
cmp	[ebp+bin_size],	ecx
jb	short loc_641E069C 
mov	[bin_0+enclen],	ax
jmp	short loc_641E0760
align 4
			
test	bin_0, bin_0	
jz	loc_641E0A68
lea	ecx, [enclen+2]
mov	[ebp+var_4C], ecx
cmp	[ebp+bin_size],	ecx
jb	loc_641E069C	
mov	ecx, charval
shr	ecx, 8
mov	[bin_0+enclen],	cl
mov	[bin_0+enclen+1], al
jmp	short loc_641E0760
align 4
			
test	bin_0, bin_0	
jz	loc_641E0BD4
lea	ecx, [enclen+1]
mov	[ebp+var_4C], ecx
cmp	[ebp+bin_size],	ecx
jb	loc_641E069C	
mov	[bin_0+enclen],	al
xchg	ax, ax
			
inc	i
mov	[ebp+var_1C], edi
mov	i, [ebp+utf8_len]
cmp	[ebp+var_1C], edi
jnb	loc_641E0CD8
mov	edi, [ebp+var_1C]
mov	enclen,	[ebp+var_4C]
mov	al, [utf8_0+i]
test	al, al
jns	loc_641E0624
movzx	cv, al
mov	[ebp+var_54], ecx
and	ecx, 0E0h
cmp	ecx, 0C0h
jz	loc_641E0B04
mov	ecx, [ebp+var_54]
and	ecx, 0F0h
cmp	ecx, 0E0h
jz	loc_641E0B48
mov	ecx, [ebp+var_54]
and	ecx, 0F8h
cmp	ecx, 0F0h
jz	loc_641E09D0
mov	ecx, [ebp+var_54]
and	ecx, 0FCh
cmp	ecx, 0F8h
jz	loc_641E0BFC
mov	ecx, [ebp+var_54]
and	ecx, 0FEh
cmp	ecx, 0FCh
jnz	loc_641E069C	
lea	ecx, [i+5]
mov	[ebp+bytes], ecx
cmp	[ebp+utf8_len],	ecx
jbe	loc_641E069C	
lea	ecx, [i+1]
mov	[ebp+var_1C], ecx
mov	cl, [utf8_0+ecx]
mov	byte ptr [ebp+k], cl
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i+2]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i+3]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i+4]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
mov	i, [ebp+bytes]
movzx	ecx, byte ptr [utf8_0+edi]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
mov	ecx, eax
and	charval, 1
shl	charval, 1Eh
mov	edi, [ebp+var_1C]
add	i, 4
mov	al, byte ptr [ebp+k]
and	eax, 3Fh
shl	charval, 18h
or	charval, ecx
mov	ecx, [ebp+var_1C]
movzx	ecx, byte ptr [utf8_0+ecx+1]
and	ecx, 3Fh
shl	ecx, 12h
or	charval, ecx
mov	ecx, [ebp+var_1C]
movzx	ecx, byte ptr [utf8_0+ecx+2]
and	ecx, 3Fh
shl	ecx, 0Ch
or	charval, ecx
movzx	ecx, byte ptr [utf8_0+i]
and	ecx, 3Fh
or	charval, ecx
mov	ecx, [ebp+var_1C]
movzx	ecx, byte ptr [utf8_0+ecx+3]
and	ecx, 3Fh
shl	ecx, 6
or	charval, ecx
cmp	charval, 3FFFFFFh
jbe	loc_641E069C	
mov	[ebp+bytes], 6
jmp	loc_641E062E
align 4
			
lea	charval, [i+1]	
mov	[ebp+var_1C], eax
mov	ecx, eax
sub	ecx, [ebp+bytes]
xor	eax, eax
mov	[ebp+k], 0
lea	ecx, [utf8_0+ecx]
mov	[ebp+var_4C], ecx
mov	[ebp+var_54], utf8_0
mov	esi, [ebp+var_4C]
mov	cl, [esi+eax]
test	enclen,	enclen
jnz	short loc_641E090D
cmp	cl, 23h
jz	loc_641E0AB4
cmp	cl, 20h
jz	loc_641E0AB4
cmp	[ebp+var_50], i
jz	loc_641E0ADC
lea	eax, [cv-2Bh]
cmp	al, 1
jbe	loc_641E0A80
cmp	cl, 22h
jz	loc_641E0A80
cmp	cl, 5Ch
jz	loc_641E0A80
cmp	cl, 3Ch
jz	loc_641E0A80
cmp	cl, 3Eh
jz	loc_641E0A80
cmp	cl, 3Bh
jz	loc_641E0A80
movzx	eax, cl
mov	[ebp+var_58], eax
mov	esi, ds:__imp____mb_cur_max
cmp	dword ptr [esi], 1
jz	loc_641E0BE0
mov	dword ptr [esp+4], 157h	
mov	eax, [ebp+var_58]
mov	[esp], eax	
mov	[ebp+var_5C], bin_0
mov	[ebp+var_60], cl
call	__isctype
mov	cl, [ebp+var_60]
mov	edx, [ebp+var_5C]
test	eax, eax
jnz	loc_641E0CC0
test	edx, edx
jz	loc_641E0CEE
lea	esi, [enclen+3]
cmp	[ebp+bin_size],	enclen
jb	loc_641E069C	
mov	byte ptr [bin_0+ebx], 5Ch
mov	cv, [ebp+var_58]
mov	[esp+0Ch], ecx
mov	dword ptr [esp+8], offset a02x_0 
mov	dword ptr [esp+4], 3 
lea	eax, [bin_0+ebx+1]
mov	[esp], eax	
mov	[ebp+var_5C], bin_0
call	_silc_snprintf
mov	edx, [ebp+var_5C]
jmp	loc_641E0A9C
lea	ecx, [i+3]
cmp	[ebp+utf8_len],	i
jbe	loc_641E069C	
movzx	eax, byte ptr [utf8_0+edi+1]
mov	[ebp+bytes], eax
and	eax, 0C0h
add	eax, 0FFFFFF80h
jnz	loc_641E069C	
movzx	eax, byte ptr [utf8_0+i+2]
and	eax, 0C0h
add	eax, 0FFFFFF80h
jnz	loc_641E069C	
movzx	eax, byte ptr [utf8_0+ecx]
mov	[ebp+k], eax
and	eax, 0C0h
add	eax, 0FFFFFF80h
jnz	loc_641E069C	
mov	eax, [ebp+var_54]
and	eax, 7
shl	eax, 12h
mov	[ebp+var_54], eax
add	edi, 2
mov	[ebp+var_4C], edi
mov	edi, i
mov	eax, [ebp+bytes]
and	charval, 3Fh
shl	charval, 0Ch
mov	i, [ebp+k]
and	ecx, 3Fh
or	charval, ecx
or	charval, [ebp+var_54]
mov	ecx, [ebp+var_4C]
movzx	ecx, byte ptr [utf8_0+ecx]
and	ecx, 3Fh
shl	ecx, 6
or	charval, ecx
cmp	charval, 0FFFFh
jbe	loc_641E069C	
mov	[ebp+bytes], 4
jmp	loc_641E062E
			
add	enclen,	2
mov	[ebp+var_4C], ebx
jmp	loc_641E0760
align 4
			
add	enclen,	4
mov	[ebp+var_4C], ebx
jmp	loc_641E0760
align 10h
			
test	bin_0, bin_0
jz	loc_641E0BCC
lea	esi, [enclen+2]
cmp	[ebp+bin_size],	enclen
jb	loc_641E069C	
mov	byte ptr [bin_0+ebx], 5Ch
mov	[bin_0+ebx+1], cl
			
inc	[ebp+k]
mov	eax, [ebp+k]
cmp	[ebp+bytes], eax
jbe	loc_641E0CE3
mov	ebx, enclen
jmp	loc_641E08F1
align 4
			
test	bin_0, bin_0
jz	short loc_641E0AC8
cmp	[ebp+bin_size],	1
jbe	loc_641E069C	
mov	byte ptr [bin_0], 5Ch
mov	[bin_0+1], cl
mov	esi, 2
jmp	short loc_641E0A9C
align 10h
mov	[ebp+bin_encoding], 0
jmp	loc_641E060E
cmp	cl, 20h
jnz	loc_641E0916
test	bin_0, bin_0
jz	loc_641E0BCC
lea	esi, [enclen+2]
cmp	[ebp+bin_size],	enclen
jb	loc_641E069C	
mov	byte ptr [bin_0+ebx], 5Ch
mov	byte ptr [bin_0+ebx+1],	20h
jmp	short loc_641E0A9C
inc	i
cmp	[ebp+utf8_len],	i
jbe	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i]
mov	eax, ecx
and	eax, 0C0h
add	eax, 0FFFFFF80h
jnz	loc_641E069C	
mov	eax, [ebp+var_54]
and	charval, 1Fh
shl	charval, 6
and	ecx, 3Fh
or	charval, ecx
cmp	charval, 7Fh
jbe	loc_641E069C	
mov	[ebp+bytes], 2
jmp	loc_641E062E
align 4
lea	ecx, [i+2]
mov	[ebp+var_1C], ecx
cmp	[ebp+utf8_len],	ecx
jbe	loc_641E069C	
inc	i
mov	cl, [utf8_0+edi]
mov	byte ptr [ebp+k], cl
movzx	ecx, cl
mov	[ebp+bytes], ecx
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
mov	ecx, [ebp+var_1C]
mov	cl, [utf8_0+ecx]
mov	byte ptr [ebp+var_1C], cl
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
cmp	al, 0EDh
jz	loc_641E0674
			
mov	ecx, [ebp+var_54]
shl	ecx, 0Ch
and	ecx, 0FFFFh
inc	edi
movzx	eax, byte ptr [utf8_0+i]
and	charval, 3Fh
or	charval, ecx
mov	ecx, [ebp+bytes]
and	ecx, 3Fh
shl	ecx, 6
or	charval, ecx
cmp	charval, 7FFh
jbe	loc_641E069C	
mov	[ebp+bytes], 3
jmp	loc_641E062E
align 4
			
lea	esi, [enclen+2]
jmp	loc_641E0A9C
inc	enclen
mov	[ebp+var_4C], ebx
jmp	loc_641E0760
align 10h
mov	esi, ds:__imp___pctype
mov	eax, [esi]
mov	esi, [ebp+var_58]
movzx	eax, word ptr [eax+esi*2]
and	eax, 157h
jmp	loc_641E0982
align 4
lea	ecx, [i+4]
mov	[ebp+k], ecx
cmp	[ebp+utf8_len],	ecx
jbe	loc_641E069C	
lea	ecx, [i+1]
mov	[ebp+var_1C], ecx
mov	cl, [utf8_0+ecx]
mov	byte ptr [ebp+bytes], cl
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i+2]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
movzx	ecx, byte ptr [utf8_0+i+3]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
mov	i, [ebp+k]
movzx	ecx, byte ptr [utf8_0+edi]
and	ecx, 0C0h
add	ecx, 0FFFFFF80h
jnz	loc_641E069C	
mov	ecx, eax
and	charval, 3
shl	charval, 18h
mov	edi, [ebp+var_1C]
add	i, 3
mov	al, byte ptr [ebp+bytes]
and	eax, 3Fh
shl	charval, 12h
or	charval, ecx
mov	ecx, [ebp+var_1C]
movzx	ecx, byte ptr [utf8_0+ecx+1]
and	ecx, 3Fh
shl	ecx, 0Ch
or	charval, ecx
movzx	ecx, byte ptr [utf8_0+i]
and	ecx, 3Fh
or	charval, ecx
mov	ecx, [ebp+var_1C]
movzx	ecx, byte ptr [utf8_0+ecx+2]
and	ecx, 3Fh
shl	ecx, 6
or	charval, ecx
cmp	charval, 1FFFFFh
jbe	loc_641E069C	
mov	[ebp+bytes], 5
jmp	loc_641E062E
align 10h
test	edx, edx
jz	short loc_641E0CF6
lea	esi, [enclen+1]
cmp	[ebp+bin_size],	enclen
jb	loc_641E069C	
mov	[bin_0+ebx], cl
jmp	loc_641E0A9C
mov	bin_0, [ebp+var_4C]
mov	[ebp+utf8_len],	enclen
jmp	loc_641E0668
mov	[ebp+var_4C], enclen
mov	enclen,	[ebp+var_54]
jmp	loc_641E0764
lea	esi, [enclen+3]
jmp	loc_641E0A9C
lea	esi, [enclen+1]
jmp	loc_641E0A9C
align 10h
public _silc_utf8_valid
			
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+utf8_len]
mov	[esp+4], eax	
mov	eax, [ebp+utf8]
mov	[esp], eax	
call	_silc_utf8_decode
test	eax, eax
setnz	al
leave
retn
align 4
public _silc_utf8_decoded_len
			
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	eax, [ebp+bin_encoding]
mov	[esp+8], eax	
mov	eax, [ebp+bin_len]
mov	[esp+4], eax	
mov	eax, [ebp+bin]
mov	[esp], eax	
call	_silc_utf8_decode
leave
retn
align 4
public _silc_utf8_encode
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+bin]
mov	ebx, [ebp+utf8]
test	esi, esi
jz	short loc_641E0DD8 
mov	edx, [ebp+bin_len]
test	edx, edx
jz	loc_641E0FA0
cmp	[ebp+bin_encoding], 7
jz	short loc_641E0DC0
cmp	[ebp+bin_encoding], 0Ch
jz	loc_641E109C
cmp	[ebp+bin_encoding], 6
jz	loc_641E1170
xor	edi, edi
xor	edx, edx
mov	[ebp+var_30], bin_0
mov	bin_0, enclen
lea	enclen,	[enclen+0]
cmp	[ebp+bin_encoding], 0Bh	
ja	short loc_641E0DD8 
mov	charval, [ebp+bin_encoding]
jmp	ds:off_64265554[eax*4] 
mov	eax, [ebp+bin_len]
mov	[esp+4], eax	
mov	[esp], bin_0	
call	_silc_utf8_valid
test	al, al
jnz	loc_641E1204
nop
			
xor	i, i		
			
mov	charval, bin_len_0
add	esp, 5Ch
pop	utf8_0
pop	enclen
pop	bin_len_0
leave
retn
			
mov	eax, [ebp+var_30]
add	eax, i
mov	[ebp+var_4C], eax
movzx	edx, byte ptr [eax]
mov	[ebp+var_2C], edx
mov	ecx, ds:__imp____mb_cur_max
cmp	dword ptr [ecx], 1
jz	loc_641E1010
mov	dword ptr [esp+4], 157h	
mov	edx, [ebp+var_2C]
mov	[esp], edx	
call	__isctype
test	eax, eax
jz	short loc_641E0DD8 
mov	ecx, [ebp+var_4C]
movzx	eax, byte ptr [ecx]
mov	edx, i
cmp	charval, 7Fh
jbe	short loc_641E0E7D
lea	enclen,	[enclen+0]
cmp	charval, 7FFh
ja	loc_641E0F50
test	utf8_0,	utf8_0
jz	loc_641E117C
lea	ecx, [enclen+2]
mov	[ebp+var_2C], ecx
cmp	[ebp+utf8_size], ecx
jb	short loc_641E0DD8 
mov	edi, charval
shr	edi, 6
and	edi, 1Fh
or	edi, 0FFFFFFC0h
mov	ecx, edi
mov	[utf8_0+enclen], cl
and	charval, 3Fh
or	eax, 0FFFFFF80h
mov	[utf8_0+enclen+1], al
jmp	short loc_641E0E91
align 4
			
lea	edx, [i+3]	
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
mov	ecx, [ebp+var_30]
mov	eax, [ecx+edi]
xchg	ax, ax
			
cmp	charval, 7Fh
ja	short loc_641E0E28
test	utf8_0,	utf8_0
jz	short loc_641E0E8D
cmp	[ebp+utf8_size], enclen
jb	loc_641E0DD8	
mov	[utf8_0+enclen], al
inc	enclen
mov	[ebp+var_2C], esi
			
lea	edi, [i+1]
cmp	[ebp+bin_len], i
jbe	loc_641E124C
mov	enclen,	[ebp+var_2C]
jmp	loc_641E0DB0
align 4
			
lea	edx, [i+3]	
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
mov	ecx, [ebp+var_30]
movzx	eax, byte ptr [ecx+i]
movzx	ecx, byte ptr [ecx+edi]
shl	ecx, 18h
or	charval, ecx
mov	ecx, [ebp+var_30]
movzx	ecx, byte ptr [ecx+edi+1]
shl	ecx, 10h
or	charval, ecx
mov	ecx, [ebp+var_30]
movzx	edi, byte ptr [ecx+edi+2]
shl	edi, 8
or	charval, edi
jmp	short loc_641E0E78
			
lea	edx, [i+1]
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
mov	ecx, [ebp+var_30]
movzx	eax, word ptr [ecx+edi]
jmp	short loc_641E0E78
align 4
			
lea	edx, [i+1]	
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
mov	ecx, [ebp+var_30]
movzx	eax, byte ptr [ecx+i]
movzx	edi, byte ptr [ecx+edi]
shl	edi, 8
or	charval, edi
jmp	loc_641E0E78
align 4
			
mov	edx, [ebp+var_30] 
movzx	eax, byte ptr [edx+i]
mov	edx, i
jmp	loc_641E0E78
align 4
			
mov	edx, [ebp+var_30] 
mov	al, [edx+i]
cmp	al, 20h
jz	short loc_641E0F45
movzx	edx, al
sub	edx, 30h
cmp	edx, 9
ja	loc_641E0DD8	
movzx	eax, al
mov	edx, i
jmp	loc_641E0E78
align 10h
cmp	charval, 0FFFFh
ja	short loc_641E0FB0
test	utf8_0,	utf8_0
jz	loc_641E1228
lea	ecx, [enclen+3]
mov	[ebp+var_2C], ecx
cmp	[ebp+utf8_size], ecx
jb	loc_641E0DD8	
mov	edi, charval
shr	edi, 0Ch
and	edi, 0Fh
or	edi, 0FFFFFFE0h
mov	ecx, edi
mov	[utf8_0+enclen], cl
mov	edi, charval
shr	edi, 6
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+1], cl
and	charval, 3Fh
or	eax, 0FFFFFF80h
mov	[utf8_0+enclen+2], al
jmp	loc_641E0E91
align 10h
			
mov	edi, [ebp+bin_len]
mov	eax, edi
add	esp, 5Ch
pop	utf8_0
pop	bin_0
pop	edi
leave
retn
align 10h
cmp	charval, 1FFFFFh
ja	short loc_641E1028
test	utf8_0,	utf8_0
jz	loc_641E1256
lea	ecx, [enclen+4]
mov	[ebp+var_2C], ecx
cmp	[ebp+utf8_size], ecx
jb	loc_641E0DD8	
mov	edi, charval
shr	edi, 12h
and	edi, 7
or	edi, 0FFFFFFF0h
mov	ecx, edi
mov	[utf8_0+enclen], cl
mov	edi, charval
shr	edi, 0Ch
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+1], cl
mov	edi, charval
shr	edi, 6
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+2], cl
and	charval, 3Fh
or	eax, 0FFFFFF80h
mov	[utf8_0+enclen+3], al
jmp	loc_641E0E91
align 10h
mov	eax, ds:__imp___pctype
mov	eax, [eax]
mov	[ebp+var_40], eax
movzx	eax, word ptr [eax+edx*2]
and	eax, 157h
jmp	loc_641E0E14
cmp	charval, 3FFFFFFh
ja	loc_641E1188
test	utf8_0,	utf8_0
jz	loc_641E1233
lea	ecx, [enclen+5]
mov	[ebp+var_2C], ecx
cmp	[ebp+utf8_size], ecx
jb	loc_641E0DD8	
mov	edi, charval
shr	edi, 18h
and	edi, 3
or	edi, 0FFFFFFF8h
mov	ecx, edi
mov	[utf8_0+enclen], cl
mov	edi, charval
shr	edi, 12h
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+1], cl
mov	edi, charval
shr	edi, 0Ch
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+2], cl
mov	edi, charval
shr	edi, 6
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+3], cl
and	charval, 3Fh
or	eax, 0FFFFFF80h
mov	[utf8_0+enclen+4], al
jmp	loc_641E0E91
mov	edi, 1
xor	eax, eax
jmp	short loc_641E10CF
align 4
mov	edx, i
			
test	utf8_0,	utf8_0
jz	short loc_641E10BE
cmp	[ebp+utf8_size], bin_len_0
jb	loc_641E0DD8	
mov	al, [bin_0+i]
mov	[utf8_0+bin_len_0-1], al
			
lea	eax, [i+1]
lea	edx, [bin_len_0+1]
cmp	[ebp+bin_len], i
jbe	loc_641E0DDA
mov	edi, edx
cmp	byte ptr [bin_0+i], 5Ch
jnz	short loc_641E10A8
lea	edx, [i+1]
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
lea	ecx, [bin_0+i]
mov	[ebp+var_2C], ecx
mov	cl, [ecx]
mov	[ebp+cv], cl
sub	ecx, 2Bh
cmp	cl, 1
jbe	short loc_641E10AA
cmp	[ebp+cv], 22h
jz	short loc_641E10AA
cmp	[ebp+cv], 5Ch
jz	short loc_641E10AA
cmp	[ebp+cv], 3Ch
jz	short loc_641E10AA
cmp	[ebp+cv], 3Eh
jz	short loc_641E10AA
cmp	[ebp+cv], 3Bh
jz	short loc_641E10AA
cmp	[ebp+cv], 20h
jz	short loc_641E10AA
cmp	[ebp+cv], 23h
jz	short loc_641E10AA
lea	i, [eax+2]
cmp	[ebp+bin_len], i
jbe	loc_641E0DD8	
lea	eax, [ebp+hexval]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset a02x_0 
mov	ecx, [ebp+var_2C]
mov	[esp], ecx	
mov	[ebp+var_34], i
call	_sscanf
dec	eax
mov	edx, [ebp+var_34]
jnz	loc_641E0DD8	
test	utf8_0,	utf8_0
jz	loc_641E10BE
cmp	[ebp+utf8_size], edi
jb	loc_641E0DD8	
mov	eax, [ebp+hexval]
mov	[utf8_0+bin_len_0-1], al
jmp	loc_641E10BE
align 10h
mov	[ebp+bin_encoding], 0
jmp	loc_641E0DA4
add	enclen,	2
mov	[ebp+var_2C], esi
jmp	loc_641E0E91
align 4
test	utf8_0,	utf8_0
jz	loc_641E123E
lea	ecx, [enclen+6]
mov	[ebp+var_2C], ecx
cmp	[ebp+utf8_size], ecx
jb	loc_641E0DD8	
mov	edi, charval
shr	edi, 1Eh
and	edi, 1
or	edi, 0FFFFFFFCh
mov	ecx, edi
mov	[utf8_0+enclen], cl
mov	edi, charval
shr	edi, 18h
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+1], cl
mov	edi, charval
shr	edi, 12h
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+2], cl
mov	edi, charval
shr	edi, 0Ch
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+3], cl
mov	edi, charval
shr	edi, 6
and	edi, 3Fh
or	edi, 0FFFFFF80h
mov	ecx, edi
mov	[utf8_0+enclen+4], cl
and	charval, 3Fh
or	eax, 0FFFFFF80h
mov	[utf8_0+enclen+5], al
jmp	loc_641E0E91
align 4
test	utf8_0,	utf8_0
jz	loc_641E0FA0
mov	edx, [ebp+utf8_size]
cmp	[ebp+bin_len], edx
ja	loc_641E0DD8	
mov	edi, utf8_0
mov	ecx, [ebp+bin_len]
rep movsb
mov	utf8_0,	[ebp+bin_len]
jmp	loc_641E0DDA
align 4
add	enclen,	3
mov	[ebp+var_2C], esi
jmp	loc_641E0E91
add	enclen,	5
mov	[ebp+var_2C], esi
jmp	loc_641E0E91
add	enclen,	6
mov	[ebp+var_2C], esi
jmp	loc_641E0E91
align 4
mov	ecx, [ebp+var_2C]
mov	i, enclen
jmp	loc_641E0DDA
add	enclen,	4
mov	[ebp+var_2C], esi
jmp	loc_641E0E91
align 4
public _silc_utf8_encoded_len
			
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	eax, [ebp+bin_encoding]
mov	[esp+8], eax	
mov	eax, [ebp+bin_len]
mov	[esp+4], eax	
mov	eax, [ebp+bin]
mov	[esp], eax	
call	_silc_utf8_encode
leave
retn
align 4
public _silc_utf8_w2c
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+wide_str]
mov	esi, [ebp+wide_str_len]
lea	eax, [esi+esi]
mov	[ebp+size], eax
mov	eax, [ebp+utf8_size]
cmp	[ebp+size], eax
jbe	short loc_641E12C0
xor	tmp, tmp
add	esp, 3Ch
pop	wide_str_0
pop	wide_str_len_0
pop	tmp
leave
retn
align 10h
xor	eax, eax
mov	edi, [ebp+utf8]
mov	ecx, [ebp+utf8_size]
rep stosb
mov	eax, [ebp+size]
mov	[esp], eax	
call	_silc_malloc
mov	utf8_0,	eax
test	eax, eax
jz	short loc_641E12B5
test	wide_str_len_0,	wide_str_len_0
jz	short loc_641E12FD
xor	edx, edx
xor	tmp, tmp
nop
movzx	ecx, byte ptr [wide_str_0+i+1]
mov	[tmp+edx], cl
mov	cx, [wide_str_0+i]
mov	[tmp+edx+1], cl
add	i, 2
mov	edx, i
cmp	wide_str_len_0,	i
ja	short loc_641E12E4
mov	i, [ebp+utf8_size]
mov	[esp+10h], eax	
mov	eax, [ebp+utf8]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 2 
mov	eax, [ebp+size]
mov	[esp+4], eax	
mov	[esp], tmp	
call	_silc_utf8_encode
mov	[esp], tmp	
mov	[ebp+var_20], eax
call	_silc_free
mov	eax, [ebp+var_20]
add	esp, 3Ch
pop	wide_str_0
pop	wide_str_len_0
pop	tmp
leave
retn
public _silc_utf8_c2w
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+utf8_wide_size]
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 2 
mov	eax, [ebp+utf8_len]
mov	[esp+4], eax	
mov	eax, [ebp+utf8]
mov	[esp], eax	
call	_silc_utf8_decode
mov	ebx, eax
test	eax, eax
jz	short loc_641E137A
shr	tmp_len, 1
cmp	eax, utf8_wide_size_0
jbe	short loc_641E1384
			
xor	tmp, tmp
add	esp, 3Ch
pop	tmp_len
pop	tmp
pop	edi
leave
retn
lea	ecx, [utf8_wide_size_0+utf8_wide_size_0]
xor	eax, eax
mov	edi, [ebp+utf8_wide]
rep stosb
mov	[esp], tmp_len	
call	_silc_malloc
mov	utf8_wide_size_0, eax
test	eax, eax
jz	short loc_641E137A
mov	[esp+10h], tmp_len 
mov	[esp+0Ch], tmp	
mov	dword ptr [esp+8], 2 
mov	tmp, [ebp+utf8_len]
mov	[esp+4], eax	
mov	eax, [ebp+utf8]
mov	[esp], eax	
call	_silc_utf8_decode
xor	eax, eax
xor	utf8_wide_0, utf8_wide_0
xor	edx, edx
mov	[ebp+var_1C], tmp_len
mov	tmp_len, [ebp+utf8_wide]
xchg	ax, ax
movzx	ecx, byte ptr [tmp+eax+1]
movzx	eax, byte ptr [tmp+eax]
shl	eax, 8
or	ecx, eax
mov	[utf8_wide_0+i], cx
add	i, 2
inc	k
mov	eax, i
cmp	[ebp+var_1C], i
ja	short loc_641E13CC
mov	[esp], tmp	
call	_silc_free
lea	eax, [k+1]
add	esp, 3Ch
pop	utf8_wide_0
pop	tmp
pop	k
leave
retn
public _silc_hash_utf8_string
push	ebp
mov	ebp, esp
mov	s, [ebp+key]
mov	cl, [s]
test	cl, cl
jz	short loc_641E142F
xor	eax, eax
xchg	ax, ax
shl	h, 4
movzx	ecx, cl
lea	eax, [ecx+eax]
mov	ecx, h
and	g, 0F0000000h
jz	short loc_641E1426
xor	h, g
shr	g, 18h
xor	h, ecx
inc	s
mov	cl, [s]
test	cl, cl
jnz	short loc_641E140C
leave
retn
xor	eax, eax
leave
retn
align 4
public _silc_hash_uint
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+key]
leave
retn
public _silc_hash_ptr
			
push	ebp
mov	ebp, esp
mov	eax, [ebp+key]
leave
retn
public _silc_hash_id
push	ebp
mov	ebp, esp
push	esi
push	ebx
mov	ecx, [ebp+key]
mov	eax, [ebp+user_context]
cmp	ax, 2
jz	short loc_641E14B8
cmp	ax, 3
jz	short loc_641E1490
dec	ax
jz	short loc_641E1468
xor	eax, eax
			
pop	ebx
pop	esi
leave
retn
align 4
movzx	eax, word ptr [key_0+14h]
movzx	edx, word ptr [key_0+12h]
imul	h, edx
movzx	esi, byte ptr [key_0+10h]
test	esi, esi
jz	short loc_641E1461
xor	edx, edx
lea	esi, [esi+0]
movzx	ebx, byte ptr [key_0+i]
xor	h, ebx
inc	i
cmp	i, esi
jl	short loc_641E1480
pop	ebx
pop	esi
leave
retn
align 10h
movzx	user_context_0,	word ptr [key_0+14h]
movzx	edx, word ptr [key_0+12h]
imul	h, edx
movzx	esi, byte ptr [key_0+10h]
test	esi, esi
jz	short loc_641E1461
xor	edx, edx
lea	esi, [esi+0]
movzx	ebx, byte ptr [key_0+i]
xor	h, ebx
inc	i
cmp	i, esi
jl	short loc_641E14A8
pop	ebx
pop	esi
leave
retn
align 4
xor	edx, edx
xor	user_context_0,	user_context_0
shl	h, 4
movzx	ebx, byte ptr [key_0+edx+12h]
add	eax, ebx
mov	ebx, h
and	ebx, 0F0000000h
jz	short loc_641E14D7
xor	h, ebx
shr	ebx, 18h
xor	h, ebx
inc	edx
cmp	edx, 0Bh
jnz	short loc_641E14BC
pop	ebx
pop	esi
leave
retn
align 4
public _silc_hash_client_id_hash
push	ebp
mov	ebp, esp
push	ebx
mov	ebx, [ebp+key]
xor	i, i
xor	eax, eax
nop
shl	h, 4
movzx	g, byte	ptr [key_0+i]
add	eax, ecx
mov	ecx, h
and	g, 0F0000000h
jz	short loc_641E150A
xor	h, g
shr	g, 18h
xor	h, ecx
inc	i
cmp	i, 0Bh
jnz	short loc_641E14F0
pop	key_0
leave
retn
align 4
public _silc_hash_data
push	ebp
mov	ebp, esp
push	esi
push	ebx
mov	esi, [ebp+key]
mov	ebx, [ebp+user_context]
movzx	eax, byte ptr [esi+ebx-1]
movzx	i, byte	ptr [esi]
imul	eax, i
inc	eax
imul	h, ebx
test	ebx, ebx
jz	short loc_641E1545
xor	ecx, ecx
xor	i, i
xchg	ax, ax
movzx	ecx, byte ptr [key_0+ecx]
xor	h, ecx
inc	i
mov	ecx, i
cmp	i, user_context_0
jnz	short loc_641E1538
pop	user_context_0
pop	key_0
leave
retn
align 4
public _silc_string_is_ascii
push	ebp
mov	ebp, esp
mov	ecx, [ebp+data]
mov	edx, [ebp+data_len]
test	edx, edx
jz	short loc_641E156F
test	byte ptr [data_0], 80h
jnz	short loc_641E1574
xor	eax, eax
jmp	short loc_641E156A
align 4
test	byte ptr [data_0+i], 80h
jnz	short loc_641E1574
inc	i
cmp	i, data_len_0
jb	short loc_641E1564
mov	al, 1
leave
retn
align 4
			
xor	i, i
leave
retn
public _silc_get_input
			
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 10h
public _silc_fingerprint
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+data]
mov	eax, [ebp+data_len]
test	edi, edi
jnz	short loc_641E15A0
			
xor	esi, esi
			
mov	eax, esi
add	esp, 2Ch
pop	i
pop	esi
pop	data_0
leave
retn
align 10h
test	data_len_0, data_len_0
jz	short loc_641E1593
mov	[ebp+var_20], data_len_0
cmp	data_len_0, 0FFh
jbe	short loc_641E15B5
mov	[ebp+var_20], 0FFh
mov	edx, [ebp+var_20]
add	edx, 13h
mov	ecx, 0CCCCCCCDh
mov	data_len_0, edx
mul	ecx
shr	edx, 4
lea	ebx, [edx+edx*4]
shl	ebx, 2
mov	eax, ebx
mul	ecx
shr	blocks,	3
lea	ebx, [blocks+ebx]
lea	eax, [ebx+blocks*2]
shl	eax, 1
mov	[ebp+var_24], eax
mov	ebx, eax
inc	len
mov	dword ptr [esp+4], 1 
mov	[esp], len	
call	_silc_calloc
test	eax, eax
jz	short loc_641E1593
mov	esi, eax
movzx	eax, byte ptr [data_0]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a02x_1 
mov	[esp+4], len	
mov	[esp], esi	
call	_silc_snprintf
lea	eax, [esi+2]
mov	[ebp+cp], eax
mov	ecx, [ebp+var_24]
dec	len
mov	ebx, 1
mov	[ebp+var_24], esi
lea	esi, [esi+0]
			
mov	eax, 0CCCCCCCDh
mul	i
shr	edx, 3
lea	edx, [edx+edx*4]
shl	edx, 1
mov	eax, i
sub	eax, edx
mov	edx, eax
jz	short loc_641E167C
mov	esi, len
cmp	[ebp+var_20], i
jbe	loc_641E16CC
movzx	eax, byte ptr [data_0+i]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a02x_1 
mov	[esp+4], len	
mov	eax, [ebp+cp]
mov	[esp], eax	
call	_silc_snprintf
add	[ebp+cp], 2
lea	eax, [len-2]
inc	i
test	bl, 1
jz	short loc_641E16A4
mov	ecx, len
jmp	short loc_641E1628
align 4
lea	esi, [len-1]
mov	eax, [ebp+cp]
inc	[ebp+cp]
mov	dword ptr [esp+8], offset asc_64265589 
mov	[esp+4], ecx	
mov	[esp], eax	
mov	[ebp+var_28], edx
call	_silc_snprintf
mov	edx, [ebp+var_28]
jmp	short loc_641E1641
align 4
lea	ecx, [esi-3]
mov	edx, [ebp+cp]
inc	[ebp+cp]
mov	dword ptr [esp+8], offset asc_64265589 
mov	[esp+4], eax	
mov	[esp], edx	
mov	[ebp+var_28], len
call	_silc_snprintf
mov	ecx, [ebp+var_28]
jmp	loc_641E1628
mov	len, [ebp+var_24]
test	edx, edx
jnz	short loc_641E16DC
dec	[ebp+cp]
mov	eax, [ebp+cp]
mov	byte ptr [eax],	0
and	i, 1
jnz	loc_641E1595
mov	eax, [ebp+cp]
mov	byte ptr [eax-1], 0
jmp	loc_641E1595
align 4
public _silc_hash_public_key_compare
push	ebp
mov	ebp, esp
sub	esp, 8
leave
jmp	_silc_pkcs_public_key_compare
public _silc_hash_utf8_compare
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	esi, [ebp+key1]
mov	edx, 0FFFFFFFFh
xor	eax, eax
mov	ecx, edx
mov	edi, esi
repne scasb
not	ecx
lea	ebx, [ecx-1]
mov	ecx, edx
mov	edi, [ebp+key2]
repne scasb
mov	edx, ecx
not	edx
dec	edx
cmp	ebx, edx
jnz	short loc_641E1737
cmp	ebx, ebx
mov	edi, [ebp+key2]
mov	ecx, ebx
repe cmpsb
setz	al
pop	ebx
pop	key1_0
pop	edi
leave
retn
public _silc_hash_data_compare
push	ebp
mov	ebp, esp
push	edi
push	esi
mov	ecx, [ebp+user_context]
cmp	ecx, ecx
mov	edi, [ebp+key2]
mov	esi, [ebp+key1]
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
align 4
public _silc_hash_client_id_compare
push	ebp
mov	ebp, esp
push	edi
push	esi
mov	ecx, 1Dh
mov	edi, [ebp+key2]
mov	esi, [ebp+key1]
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
align 4
public _silc_hash_id_compare_full
			
push	ebp
mov	ebp, esp
push	edi
push	esi
mov	esi, [ebp+key1]
mov	edi, [ebp+key2]
mov	eax, [ebp+user_context]
cmp	ax, 1
jz	short loc_641E178E
cmp	ax, 2
jz	short loc_641E179C
mov	ecx, 16h
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
mov	ecx, 1Dh
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
align 4
public _silc_hash_id_compare
push	ebp
mov	ebp, esp
push	edi
push	esi
mov	esi, [ebp+key1]
mov	edi, [ebp+key2]
mov	eax, [ebp+user_context]
cmp	ax, 2
jz	short loc_641E17D0
mov	ecx, 16h
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
align 10h
add	key1_0,	12h
add	key2_0,	12h
mov	ecx, 0Bh
repe cmpsb
setz	al
pop	esi
pop	edi
leave
retn
public _silc_hash_string_compare
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+key2]
mov	[esp+4], eax	
mov	eax, [ebp+key1]
mov	[esp], eax	
call	_stricmp
test	eax, eax
setz	al
leave
retn
align 4
public _silc_hash_public_key
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
lea	eax, [ebp+pk_len]
mov	[esp+4], eax	
mov	eax, [ebp+key]
mov	[esp], eax	
call	_silc_pkcs_public_key_encode
test	eax, eax
jz	short loc_641E185C
mov	esi, [ebp+pk_len]
movzx	ebx, byte ptr [pk+esi-1]
movzx	edx, byte ptr [pk]
imul	ebx, edx
inc	ebx
imul	hash, esi
test	esi, esi
jz	short loc_641E1849
xor	ecx, ecx
xor	edx, edx
movzx	ecx, byte ptr [pk+ecx]
xor	hash, ecx
inc	edx
mov	ecx, edx
cmp	edx, esi
jnz	short loc_641E183C
mov	[esp], pk	
call	_silc_free
mov	eax, hash
add	esp, 20h
pop	hash
pop	esi
leave
retn
align 4
xor	ebx, ebx
mov	pk, hash
add	esp, 20h
pop	hash
pop	esi
leave
retn
align 4
public _silc_hash_string
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	ebx, [ebp+key]
mov	al, [s]
test	al, al
jz	short loc_641E18AD
xor	esi, esi
nop
shl	h, 4
movsx	eax, al
mov	[esp], eax	
call	_tolower
lea	esi, [eax+esi]
mov	eax, h
and	g, 0F0000000h
jz	short loc_641E189D
xor	h, g
shr	g, 18h
xor	h, eax
inc	s
mov	al, [s]
test	al, al
jnz	short loc_641E187C
mov	eax, h
add	esp, 10h
pop	s
pop	h
leave
retn
xor	esi, esi
jmp	short loc_641E18A4
align 4
public _silc_to_lower
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	esi, [ebp+string]
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, esi
repne scasb
not	ecx
dec	ecx
cmp	ecx, [ebp+dest_size]
ja	short loc_641E18FF
xor	ebx, ebx
jmp	short loc_641E18F9
align 4
movsx	eax, byte ptr [esi+i]
mov	[esp], eax	
call	_tolower
mov	edx, [ebp+dest]
mov	[edx+i], al
inc	i
mov	ecx, 0FFFFFFFFh
mov	edi, string_0
xor	eax, eax
repne scasb
not	ecx
dec	ecx
cmp	i, ecx
jb	short loc_641E18D8
mov	al, 1
add	esp, 1Ch
pop	i
pop	esi
pop	edi
leave
retn
align 4
public _silc_gets
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
mov	ebx, [ebp+dest]
mov	esi, [ebp+destlen]
mov	edx, [ebp+begin]
xor	eax, eax
mov	edi, ebx
mov	ecx, esi
rep stosb
cmp	edx, ds:_start_37618
jz	short loc_641E1933
mov	ds:_start_37618, 0
xor	begin_0, begin_0
cmp	begin_0, [ebp+srclen]
jg	short loc_641E1970
test	destlen_0, destlen_0
js	short loc_641E1990
mov	dest_0,	[ebp+src]
add	edi, begin_0
mov	al, [edi]
mov	[ebx], al
cmp	al, 0FFh
jz	short loc_641E1990
cmp	al, 0Ah
jz	short loc_641E1970
xor	eax, eax
jmp	short loc_641E196A
align 4
inc	i
cmp	destlen_0, i
jl	short loc_641E1980
mov	cl, [edi+1]
mov	[dest_0+i], cl
cmp	cl, 0FFh
jz	short loc_641E1980
inc	edi
cmp	cl, 0Ah
jz	short loc_641E1970
inc	begin_0
cmp	[ebp+srclen], begin_0
jge	short loc_641E1954
			
lea	i, [begin_0+1]
mov	ds:_start_37618, eax
pop	dest_0
pop	destlen_0
pop	dest_0
leave
retn
align 10h
			
mov	ds:_start_37618, begin_0
mov	i, 0FFFFFFFFh
pop	dest_0
pop	destlen_0
pop	edi
leave
retn
			
mov	eax, 0FFFFFFFFh
jmp	short loc_641E1978
align 4
public _silc_format
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
mov	eax, 2010h	
call	__alloca
lea	ebx, [ebp+str]
mov	ecx, 2000h
xor	eax, eax
mov	edi, ebx
rep stosb
lea	eax, [ebp+args]
mov	[esp+0Ch], eax	
mov	eax, [ebp+fmt]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 1FFFh 
mov	[esp], ebx	
call	_silc_vsnprintf
mov	[esp], ebx	
call	_strdup
add	esp, 2010h
pop	ebx
pop	edi
leave
retn
public _silc_check_line
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+buf]
mov	dword ptr [esp+4], 23h 
mov	[esp], ebx	
call	_strchr
test	eax, eax
jz	short loc_641E1A11
			
mov	eax, 0FFFFFFFFh
add	esp, 14h
pop	buf_0
leave
retn
mov	dword ptr [esp+4], 27h
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	short loc_641E1A06
mov	dword ptr [esp+4], 5Ch 
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	short loc_641E1A06
mov	dword ptr [esp+4], 0Dh 
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	short loc_641E1A06
mov	dword ptr [esp+4], 7 
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	short loc_641E1A06
mov	dword ptr [esp+4], 8 
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	short loc_641E1A06
mov	dword ptr [esp+4], 0Ch 
mov	[esp], buf_0	
call	_strchr
test	eax, eax
jnz	loc_641E1A06
cmp	byte ptr [buf_0], 0Ah
jnz	loc_641E1A0B
jmp	loc_641E1A06
align 4
public _silc_parse_userfqdn
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+string]
mov	esi, [ebp+user]
test	esi, esi
jz	loc_641E1B9C
xor	eax, eax
mov	edi, user_0
mov	ecx, [ebp+user_size]
rep stosb
mov	user_0,	[ebp+fqdn]
mov	user_size_0, [ebp+fqdn_size]
rep stosb
test	string_0, string_0
jz	loc_641E1BA8
cmp	byte ptr [string_0], 40h
jz	loc_641E1B64
mov	dword ptr [esp+4], 40h 
mov	[esp], string_0	
call	_strchr
test	eax, eax
jz	short loc_641E1B64
mov	dword ptr [esp+4], offset a@ 
mov	[esp], string_0	
call	_strcspn
mov	edx, eax
test	user_0,	user_0
jz	short loc_641E1B1C
mov	[esp+0Ch], eax	
mov	[esp+8], string_0 
mov	eax, [ebp+user_size]
mov	[esp+4], eax	
mov	[esp], user_0	
mov	[ebp+var_1C], edx
call	_silc_strncat
mov	edx, [ebp+var_1C]
mov	eax, [ebp+fqdn]
test	eax, eax
jz	short loc_641E1B56
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, string_0
repne scasb
not	ecx
mov	eax, edx
not	eax
lea	eax, [ecx+eax-1]
mov	[esp+0Ch], eax	
lea	eax, [ebx+edx+1]
mov	[esp+8], eax	
mov	eax, [ebp+fqdn_size]
mov	[esp+4], eax	
mov	eax, [ebp+fqdn]
mov	[esp], eax	
call	_silc_strncat
mov	eax, 2
add	esp, 2Ch
pop	string_0
pop	user_0
pop	edi
leave
retn
align 4
			
test	user_0,	user_0
jz	short loc_641E1BB4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	fqdn_0,	string_0
repne scasb
not	ecx
dec	ecx
mov	[esp+0Ch], ecx	
mov	[esp+8], ebx	
mov	eax, [ebp+user_size]
mov	[esp+4], eax	
mov	[esp], user_0	
call	_silc_strncat
mov	eax, 1
add	esp, 2Ch
pop	string_0
pop	user_0
pop	edi
leave
retn
align 4
mov	edx, [ebp+fqdn]
test	edx, edx
jnz	loc_641E1AC4
nop
xor	eax, eax
add	esp, 2Ch
pop	string_0
pop	user_0
pop	edi
leave
retn
align 4
mov	eax, 1
jmp	short loc_641E1B5B
align 4
public _silc_to_upper
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	esi, [ebp+string]
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, esi
repne scasb
not	ecx
dec	ecx
cmp	ecx, [ebp+dest_size]
ja	short loc_641E1C07
xor	ebx, ebx
jmp	short loc_641E1C01
align 10h
movsx	eax, byte ptr [esi+i]
mov	[esp], eax	
call	_toupper
mov	edx, [ebp+dest]
mov	[edx+i], al
inc	i
mov	ecx, 0FFFFFFFFh
mov	edi, string_0
xor	eax, eax
repne scasb
not	ecx
dec	ecx
cmp	i, ecx
jb	short loc_641E1BE0
mov	al, 1
add	esp, 1Ch
pop	i
pop	esi
pop	edi
leave
retn
align 10h
public _silc_parse_command_line
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	edx, [ebp+parsed]
mov	[edx], eax
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ecx, [ebp+parsed_lens]
mov	[ecx], eax
mov	dword ptr [esp+4], offset asc_64265589 
mov	eax, [ebp+buffer]
mov	[esp], eax	
call	_strcspn
mov	[ebp+var_24], eax
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, [ebp+buffer]
repne scasb
not	ecx
mov	dword ptr [esp+4], 1 
mov	[esp], ecx	
call	_silc_calloc
mov	[ebp+ptr], eax
test	eax, eax
jz	loc_641E1DBB
xor	ebx, ebx
mov	esi, 0FFFFFFFFh
jmp	short loc_641E1CAA
align 4
mov	edx, [ebp+buffer]
movsx	eax, byte ptr [edx+ebx]
mov	[esp], eax	
call	_toupper
mov	ecx, [ebp+ptr]
mov	[ecx+ebx], al
inc	ebx
mov	ecx, esi
mov	edi, [ebp+buffer]
xor	eax, eax
repne scasb
not	ecx
dec	ecx
cmp	ecx, ebx
ja	short loc_641E1C94
mov	edx, [ebp+parsed]
mov	ebx, [edx]
mov	dword ptr [esp+4], 1 
mov	eax, [ebp+var_24]
inc	eax
mov	[esp], eax	
call	_silc_calloc
mov	[ebx], eax
mov	ecx, [ebp+parsed]
mov	eax, [ecx]
mov	eax, [eax]
mov	edi, eax
mov	esi, [ebp+ptr]
mov	ecx, [ebp+var_24]
rep movsb
mov	eax, [ebp+ptr]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+parsed_lens]
mov	eax, [edx]
mov	ecx, [ebp+var_24]
mov	[eax], ecx
mov	tmp, [ebp+buffer]
add	cp, ecx
mov	bl, [cp]
cmp	bl, 20h
jnz	short loc_641E1D10
nop
inc	cp
mov	bl, [cp]
cmp	bl, 20h
jz	short loc_641E1D08
mov	dword ptr [esp+4], 20h 
mov	[esp], cp	
call	_strchr
test	eax, eax
jz	loc_641E1E75
cmp	[ebp+max_args],	1
jbe	loc_641E1E7D
mov	eax, [ebp+max_args]
dec	eax
mov	[ebp+var_24], eax
mov	edx, 1
mov	[ebp+items], 1
mov	[ebp+ptr], edx
mov	edx, [ebp+ptr]
cmp	[ebp+var_24], edx
jz	loc_641E1E60
mov	dword ptr [esp+4], offset asc_64265589 
mov	[esp], cp	
call	_strcspn
mov	len, eax
test	len, len
jz	short loc_641E1D84
cmp	byte ptr [cp+len-1], 20h
jnz	short loc_641E1DC4
lea	eax, [cp+len]
jmp	short loc_641E1D81
align 4
mov	dl, [eax-2]
dec	eax
cmp	dl, 20h
jnz	short loc_641E1DC4
dec	len
jnz	short loc_641E1D78
mov	edx, [ebp+items]
			
mov	dword ptr [esp+4], 4 
mov	[esp], edx	
mov	[ebp+var_28], edx
call	_silc_calloc
mov	ecx, [ebp+parsed_types]
mov	[ecx], eax
xor	ecx, ecx
mov	len, [ebp+items]
mov	edx, [ebp+var_28]
mov	cp, [ebp+parsed_types]
jmp	short loc_641E1DAE
mov	eax, [parsed_types_0]
mov	[eax+i*4], i
inc	i
cmp	argc, i
jg	short loc_641E1DAC
mov	eax, [ebp+parsed_num]
mov	[eax], edx
add	esp, 2Ch
pop	argc
pop	esi
pop	edi
leave
retn
align 4
			
inc	[ebp+items]
mov	eax, [ebp+items]
mov	[ebp+ptr], eax
mov	edi, eax
shl	edi, 2
mov	[esp+4], edi	
mov	edx, [ebp+parsed]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_realloc
mov	ecx, [ebp+parsed]
mov	[ecx], eax
mov	[esp+4], edi	
mov	edx, [ebp+parsed_lens]
mov	eax, [edx]
mov	[esp], eax	
call	_silc_realloc
mov	ecx, [ebp+parsed_lens]
mov	[ecx], eax
lea	edx, [edi-4]
mov	edi, edx
mov	eax, [ebp+parsed]
add	edi, [eax]
mov	dword ptr [esp+4], 1 
lea	eax, [len+1]
mov	[esp], eax	
mov	[ebp+var_28], edx
call	_silc_calloc
mov	[edi], eax
mov	ecx, [ebp+parsed]
mov	eax, [ecx]
mov	edx, [ebp+var_28]
mov	eax, [eax+edx]
mov	edi, eax
mov	ecx, len
rep movsb
mov	ecx, [ebp+parsed_lens]
mov	eax, [ecx]
mov	[eax+edx], len
mov	al, [cp]
test	al, al
jz	short loc_641E1E56
cmp	al, 20h
jnz	short loc_641E1E4A
nop
inc	cp
cmp	byte ptr [cp], 20h
jz	short loc_641E1E44
mov	edx, [ebp+items]
cmp	[ebp+max_args],	edx
ja	loc_641E1D48
mov	edx, [ebp+ptr]
jmp	loc_641E1D87
align 10h
mov	ecx, 0FFFFFFFFh
mov	edi, cp
xor	eax, eax
repne scasb
not	ecx
lea	len, [ecx-1]
jmp	loc_641E1D66
test	bl, bl
jnz	loc_641E1D28
mov	edx, 1
mov	[ebp+items], 1
jmp	loc_641E1D87
align 10h
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
mov	edx, [ebp+status]
test	edx, edx
jz	short loc_641E1EA4
leave
retn
align 4
mov	ecx, [context_0+8]
mov	[ebp+context], ecx
mov	[ebp+status], 0
mov	context_0, [context_0+4]
leave
jmp	eax
align 4
public _silc_net_connect_st_stream
push	ebp
mov	ebp, esp
mov	eax, [ebp+fsm_context]
cmp	byte ptr [eax+0C3h], 0
js	short loc_641E1EE2
mov	edx, [fsm_context_0+4]
test	edx, edx
jz	short loc_641E1EEC
cmp	edx, 1
jz	short loc_641E1EFC
cmp	edx, 2
setnz	dl
movzx	edx, dl
lea	edx, [edx+edx*4+2]
mov	[fsm_context_0], edx
			
mov	fsm_context_0, 3
leave
retn
align 4
mov	dword ptr [fsm_context_0], 0
mov	fsm_context_0, 3
leave
retn
align 4
mov	dword ptr [fsm_context_0], 1
jmp	short loc_641E1EE2
public _silc_net_set_socket_nonblock
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	[ebp+on], 1
lea	eax, [ebp+on]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 8004667Eh 
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_ioctlsocket@12
sub	esp, 0Ch
leave
retn
public _silc_net_addr2bin
			
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+addr]
mov	[esp], ebx	
call	_silc_net_is_ip4
test	al, al
jnz	short loc_641E1F50
			
xor	c, c
add	esp, 20h
pop	addr_0
pop	c
leave
retn
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, addr_0
repne scasb
not	ecx
dec	ecx
mov	dword ptr [ebp+ret], 0
xor	edx, edx
xor	eax, eax
jmp	short loc_641E1F8B
align 4
movsx	edi, byte ptr [ebx]
sub	edi, 30h
cmp	edi, 9
ja	short loc_641E1F47
lea	d, [d+d*4]
lea	edx, [edi+edx*2]
cmp	d, 0FFh
jg	short loc_641E1F47
mov	edi, c
dec	ecx
inc	ebx
mov	eax, c
test	ecx, ecx
jle	short loc_641E1FA4
cmp	byte ptr [ebx],	2Eh
jnz	short loc_641E1F6C
lea	edi, [c+1]
cmp	c, 3
jg	short loc_641E1F47
mov	[ebp+eax+ret], dl
xor	d, d
jmp	short loc_641E1F87
cmp	c, 3
jnz	short loc_641E1F47
cmp	[ebp+bin_len], 3
jbe	short loc_641E1F47
mov	[ebp+ret+3], dl
mov	d, dword ptr [ebp+ret]
mov	c, [ebp+bin]
mov	[eax], edx
mov	al, 1
jmp	short loc_641E1F49
align 10h
public _silc_net_close_connection
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+sock]
mov	[esp], eax	
call	_closesocket@4
push	ecx
leave
retn
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+fsm_context]
mov	eax, [ebx+6Ch]
mov	[esp], eax	
call	_silc_free
mov	eax, [ebx+70h]
mov	[esp], eax	
call	_silc_free
mov	[ebp+fsm], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
public _silc_net_connect_st_finish
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+fsm_context]
cmp	byte ptr [ebx+0C3h], 0
jns	short loc_641E2024
mov	eax, 3
add	esp, 14h
pop	fsm_context_0
leave
retn
align 4
mov	eax, [fsm_context_0+0BCh]
mov	[esp+8], eax
mov	eax, [fsm_context_0+8]
mov	[esp+4], eax
mov	eax, [fsm_context_0]
mov	[esp], eax
call	dword ptr [fsm_context_0+0B8h]
mov	eax, [fsm_context_0+64h]
test	eax, eax
jz	short loc_641E2017
mov	[esp], eax	
call	_silc_async_free
mov	eax, 3
add	esp, 14h
pop	fsm_context_0
leave
retn
align 4
public _silc_net_tcp_connect
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	ebx, [ebp+remote_ip_addr]
mov	esi, [ebp+remote_port]
mov	edi, [ebp+schedule]
test	ebx, ebx
jnz	short loc_641E207C
			
xor	eax, eax
			
add	esp, 3Ch
pop	ebx
pop	esi
pop	schedule_0
leave
retn
test	remote_port_0, remote_port_0
jle	short loc_641E2072
test	schedule_0, schedule_0
jz	short loc_641E2072
mov	edx, [ebp+callback]
test	edx, edx
jz	short loc_641E2072
mov	dword ptr [esp+4], 0C4h	
mov	dword ptr [esp], 1 
call	_silc_calloc
test	eax, eax
jz	loc_641E21AC
mov	[esp+8], conn	
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], offset	_silc_net_connect_abort	
mov	[ebp+fsm_context], conn
call	_silc_async_alloc
mov	edx, [ebp+fsm_context]
mov	[edx+64h], eax
test	eax, eax
jz	loc_641E21A4
mov	eax, [ebp+local_ip_addr]
test	eax, eax
jz	short loc_641E20EB
mov	eax, [ebp+local_ip_addr]
mov	[esp], eax	
mov	[ebp+fsm_context], conn
call	_strdup
mov	edx, [ebp+fsm_context]
mov	[edx+6Ch], eax
mov	[esp], remote_ip_addr_0
mov	[ebp+fsm_context], conn
call	_strdup
mov	edx, [ebp+fsm_context]
mov	[edx+70h], eax
test	eax, eax
jz	loc_641E2188
and	remote_port_0, 0FFFFFFh
mov	eax, [conn+0C0h]
and	eax, 0FF000000h
or	eax, esi
mov	[conn+0C0h], eax
mov	eax, [ebp+callback]
mov	[conn+0B8h], eax
mov	eax, [ebp+context]
mov	[conn+0BCh], eax
mov	al, [conn+0C3h]
and	eax, 0FFFFFF80h
or	eax, 1
mov	[conn+0C3h], al
mov	dword ptr [conn], 7
lea	remote_ip_addr_0, [conn+0Ch]
mov	[esp+10h], schedule_0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], offset _silc_net_connect_destructor 
mov	[esp+4], conn	
mov	[esp], ebx	
mov	[ebp+fsm_context], conn
call	_silc_fsm_init
mov	dword ptr [esp+4], offset _silc_net_connect_st_thread 
mov	[esp], ebx	
call	_silc_fsm_start
mov	edx, [ebp+fsm_context]
mov	eax, [edx+64h]
jmp	loc_641E2074
mov	eax, [conn+64h]
mov	[esp], eax	
call	_silc_async_free
mov	edx, [ebp+fsm_context]
mov	eax, [edx+6Ch]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+fsm_context]
mov	[esp], conn
call	_silc_free
mov	conn, [ebp+context]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 6 
call	[ebp+callback]
xor	eax, eax
jmp	loc_641E2074
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+context]
or	byte ptr [ebx+0C3h], 80h
mov	eax, [ebx+68h]
test	eax, eax
jz	short loc_641E2203
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 0 
mov	[esp], eax	
call	_silc_async_abort
mov	dword ptr [context_0+68h], 0
add	esp, 14h
pop	context_0
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, addr
mov	ebx, ip_addr
mov	[ebp+var_1C], port
mov	port, 10h
xor	addr, addr
mov	edi, addr
rep stosb
test	ip_addr, ip_addr
jz	loc_641E22B0
mov	[esp], ip_addr	
call	_silc_net_is_ip
test	al, al
jz	short loc_641E2284
mov	[esp], ip_addr	
call	_silc_net_is_ip4
test	al, al
jz	loc_641E22D4
mov	dword ptr [esp+8], 4 
lea	eax, [esi+4]
mov	[esp+4], eax	
mov	[esp], ip_addr	
call	_silc_net_addr2bin
test	al, al
jz	short loc_641E22A6
mov	word ptr [addr], 2
mov	edi, [ebp+var_1C]
test	edi, edi
jnz	short loc_641E22C3
xor	eax, eax
mov	[addr+2], ax
mov	al, 1
lea	esp, [ebp-0Ch]
pop	ip_addr
pop	addr
pop	addr
leave
retn
align 4
mov	[esp+4], ip_addr
mov	dword ptr [esp], offset	aSIsNotIpAddres	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ip_addr
pop	esi
pop	addr
leave
retn
align 10h
mov	word ptr [esi],	2
mov	dword ptr [esi+4], 0
mov	ebx, [ebp+var_1C]
test	ebx, ebx
jz	short loc_641E2278
movzx	eax, word ptr [ebp+var_1C]
mov	[esp], port	
call	_htons@4
push	ecx
jmp	short loc_641E2274
align 4
mov	dword ptr [esp], offset	aOperatingSyste	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ip_addr
pop	esi
pop	addr
leave
retn
align 4
push	ebp
mov	ebp, esp
sub	esp, 8
mov	eax, [ebp+context]
mov	dword ptr [eax+68h], 0
mov	edx, [ebp+status]
mov	[eax+4], edx
mov	edx, [ebp+stream]
mov	[eax+8], edx
mov	dl, [eax+60h]
mov	cl, dl
and	ecx, 0FFFFFFFBh
mov	[eax+60h], cl
and	edx, 4
jz	short loc_641E232C
leave
retn
align 4
add	context_0, 38h
mov	[ebp+status], eax
leave
jmp	_silc_fsm_continue
public _silc_net_connect_st_thread
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+fsm]
mov	eax, [ebp+fsm_context]
lea	esi, [eax+38h]
mov	dword ptr [esp+14h], 1 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], eax	
mov	[esp+4], ebx	
mov	[esp], esi	
call	_silc_fsm_thread_init
mov	dword ptr [esp+4], offset _silc_net_connect_st_start 
mov	[esp], esi	
call	_silc_fsm_start
mov	dword ptr [esp+4], offset _silc_net_connect_st_finish 
mov	[esp], ebx	
call	_silc_fsm_next
mov	[esp+4], esi	
mov	[esp], ebx	
call	_silc_fsm_thread_wait
mov	eax, 2
add	esp, 20h
pop	ebx
pop	esi
leave
retn
align 4
public _silc_net_udp_send
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 40h
mov	ebx, [ebp+stream]
lea	esi, [ebp+remote]
mov	ecx, [ebp+remote_port] 
mov	edx, [ebp+remote_ip_addr] 
mov	eax, esi	
call	_silc_net_set_sockaddr
test	al, al
jnz	short loc_641E23DC
mov	ret, 0FFFFFFFEh
mov	eax, ret
lea	esp, [ebp-8]
pop	stream_0
pop	ret
leave
retn
align 4
mov	dword ptr [esp+14h], 10h 
mov	[esp+10h], esi	
mov	dword ptr [esp+0Ch], 0 
mov	eax, [ebp+data_len]
mov	[esp+8], eax	
mov	eax, [ebp+data]
mov	[esp+4], eax	
mov	eax, [stream_0+8]
mov	[esp], eax	
call	_sendto@24
sub	esp, 18h
mov	esi, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641E2454
mov	ret, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_get_fd_events
test	al, 2
jz	short loc_641E23D0
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	err, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	eax, ret
lea	esp, [ebp-8]
pop	stream_0
pop	ret
leave
retn
call	_WSAGetLastError@0
cmp	eax, 2733h
jz	short loc_641E2484
mov	edx, [stream_0+8]
mov	[esp+4], edx	
mov	edx, [stream_0+4]
mov	[esp], edx	
mov	[ebp+var_1C], err
call	_silc_schedule_unset_listen_fd
mov	eax, [ebp+var_1C]
mov	[stream_0+16h],	ax
jmp	loc_641E23CB
align 4
mov	dword ptr [esp+0Ch], 0
mov	dword ptr [esp+8], 3
jmp	short loc_641E2439
align 4
public _silc_net_udp_receive
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	ebx, [ebp+stream]
mov	edi, [ebp+remote_ip_addr]
mov	eax, [ebp+ret_data]
mov	edx, [ebp+data_size]
test	edi, edi
jz	loc_641E2580
mov	ecx, [ebp+remote_port]
test	ecx, ecx
jz	loc_641E2580
test	byte ptr [stream_0+24h], 1
jz	short loc_641E251C
lea	ecx, [ebp+flen]
mov	[esp+14h], ecx	
lea	ecx, [ebp+s]
mov	[esp+10h], ecx	
mov	dword ptr [esp+0Ch], 0 
mov	[esp+8], data_size_0 
mov	[esp+4], ret_data_0 
mov	ret_data_0, [stream_0+8]
mov	[esp], eax	
call	_recvfrom@24
sub	esp, 18h
mov	esi, eax
cmp	len, 0FFFFFFFFh
jz	loc_641E25A9
test	len, len
jz	short loc_641E256C
test	remote_ip_addr_0, remote_ip_addr_0
jz	short loc_641E2512
mov	eax, [ebp+remote_port]
test	eax, eax
jz	short loc_641E2512
test	byte ptr [stream_0+24h], 1
jz	short loc_641E2528
			
mov	eax, len
lea	esp, [ebp-0Ch]
pop	stream_0
pop	len
pop	remote_ip_addr_0
leave
retn
mov	[ebp+flen], 10h
jmp	short loc_641E24C6
align 4
mov	eax, dword ptr [ebp+s+4]
mov	[esp], eax	
call	_inet_ntoa@4
push	ecx
test	eax, eax
jz	short loc_641E254B
mov	[esp+8], ip_0	
mov	ip_0, [ebp+remote_ip_addr_size]
mov	[esp+4], eax	
mov	[esp], remote_ip_addr_0	
call	_silc_snprintf
movzx	ip_0, word ptr [ebp+s+2]
mov	[esp], eax	
call	_ntohs@4
push	edx
movzx	eax, ax
mov	edx, [ebp+remote_port]
mov	[edx], eax
mov	eax, len
lea	esp, [ebp-0Ch]
pop	stream_0
pop	len
pop	remote_ip_addr_0
leave
retn
align 4
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
jmp	short loc_641E2501
			
mov	dword ptr [esp+0Ch], 0
mov	[esp+8], data_size_0 
mov	[esp+4], ret_data_0 
mov	ret_data_0, [stream_0+8]
mov	[esp], eax	
call	_recv@16
sub	esp, 10h
mov	esi, eax
cmp	len, 0FFFFFFFFh
jnz	loc_641E24FD
call	_WSAGetLastError@0
cmp	eax, 2733h
jz	short loc_641E25DC
mov	edx, [stream_0+8]
mov	[esp+4], edx	
mov	edx, [stream_0+4]
mov	[esp], edx	
mov	[ebp+var_3C], err
call	_silc_schedule_unset_listen_fd
mov	eax, [ebp+var_3C]
mov	[stream_0+16h],	ax
mov	len, 0FFFFFFFEh
jmp	loc_641E2512
align 4
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
jmp	loc_641E2512
align 4
public _silc_net_udp_connect
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+local_ip_addr]
mov	ecx, [ebp+schedule]
test	ecx, ecx
jz	err
test	local_ip_addr_0, local_ip_addr_0
jz	loc_641E2738
mov	edx, local_ip_addr_0 
lea	edi, [ebp+server]
mov	ecx, [ebp+local_port] 
mov	eax, edi	
call	_silc_net_set_sockaddr
test	al, al
jz	err
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 2 
movsx	eax, word ptr [ebp+server]
mov	[esp], eax	
call	_socket@12
sub	esp, 0Ch
mov	ebx, eax
cmp	eax, 0FFFFFFFFh
jz	loc_641E2744
mov	dword ptr [esp+0Ch], 1 
mov	dword ptr [esp+8], 4 
mov	dword ptr [esp+4], 0FFFFh 
mov	[esp], sock	
call	_silc_net_set_socket_opt
inc	eax
jz	loc_641E2764
mov	dword ptr [esp+8], 10h 
mov	[esp+4], edi	
mov	[esp], sock	
call	_bind@12
sub	esp, 0Ch
inc	rval
jz	short loc_641E26F2
mov	edx, [ebp+remote_ip_addr]
test	edx, edx
jz	short loc_641E26B3
mov	rval, [ebp+remote_port]
test	rval, rval
jnz	short loc_641E2704
test	local_ip_addr_0, local_ip_addr_0
jz	short loc_641E2700
mov	[esp], local_ip_addr_0 
call	_silc_net_is_ip6
movzx	rval, al
mov	edx, [ebp+schedule]
mov	[esp+0Ch], edx	
xor	edx, edx
cmp	[ebp+remote_ip_addr], 0
setnz	dl
mov	[esp+8], edx	
mov	[esp+4], rval	
mov	[esp], sock	
call	_silc_socket_udp_stream_create
test	rval, rval
jz	short loc_641E26F2
			
lea	esp, [ebp-0Ch]
pop	sock
pop	local_ip_addr_0
pop	edi
leave
retn
align 10h
			
xor	ebx, ebx
			
mov	[esp], sock
call	_close
xor	rval, rval
jmp	short loc_641E26E6
align 10h
			
xor	rval, rval
jmp	short loc_641E26C2
mov	ecx, [ebp+remote_port] 
mov	edx, [ebp+remote_ip_addr] 
mov	rval, edi	
call	_silc_net_set_sockaddr
test	al, al
jz	short loc_641E26F2
mov	dword ptr [esp+8], 10h 
mov	[esp+4], edi	
mov	[esp], sock	
call	_connect@12
sub	esp, 0Ch
inc	rval
jz	short loc_641E26F2
test	local_ip_addr_0, local_ip_addr_0
jnz	short loc_641E26B7
jmp	short loc_641E2700
align 4
mov	edx, offset a0_0_0_0 
jmp	loc_641E2625
align 4
mov	dword ptr [esp], offset	aCannotCreateSo	
call	_silc_format
mov	[esp+4], rval	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	rval, rval
jmp	short loc_641E26E6
mov	dword ptr [esp], offset	aCannotSetSocke	
call	_silc_format
mov	[esp+4], rval	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641E26F2
align 4
public _silc_net_close_listener
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	ebx, [ebp+listener]
test	ebx, ebx
jz	short loc_641E2810
test	dword ptr [listener_0+10h], 3FFFFFFFh
jz	short loc_641E27F4
xor	esi, esi
nop
lea	edi, ds:0[i*4]
mov	eax, [listener_0+0Ch]
mov	eax, [eax+edi]
mov	[esp+4], eax	
mov	eax, [listener_0]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
mov	dword ptr [esp+4], 2 
mov	eax, [listener_0+0Ch]
mov	eax, [eax+edi]
mov	[esp], eax	
call	_shutdown@8
sub	esp, 8
mov	eax, [listener_0+0Ch]
mov	eax, [eax+edi]
mov	[esp], eax	
call	_closesocket@4
push	edi
inc	i
mov	eax, [listener_0+10h]
and	eax, 3FFFFFFFh
cmp	eax, i
jg	short loc_641E27A4
mov	eax, [listener_0+0Ch]
mov	[esp], eax	
call	_silc_free
mov	[ebp+listener],	listener_0
lea	esp, [ebp-0Ch]
pop	listener_0
pop	i
pop	edi
leave
jmp	_silc_free
align 10h
lea	esp, [ebp-0Ch]
pop	listener_0
pop	esi
pop	edi
leave
retn
public _silc_net_tcp_create_listener
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	esi, [ebp+callback]
mov	dl, [ebp+lookup]
movzx	edi, [ebp+require_fqdn]
mov	ecx, [ebp+port]
test	ecx, ecx
js	loc_641E2A0C
mov	eax, [ebp+schedule]
test	eax, eax
jz	loc_641E2A0C
test	callback_0, callback_0
jz	loc_641E2A0C
mov	dword ptr [esp+4], 14h 
mov	dword ptr [esp], 1 
mov	[ebp+var_30], dl
call	_silc_calloc
mov	ebx, eax
test	eax, eax
mov	dl, [ebp+var_30]
jz	loc_641E2A0E
mov	listener, [ebp+schedule]
mov	[listener], eax
mov	[listener+4], callback_0
mov	eax, [ebp+context]
mov	[listener+8], eax
and	require_fqdn_0,	1
shl	edi, 6
mov	al, [listener+13h]
and	eax, 3Fh
shl	edx, 7
or	eax, edi
or	eax, edx
mov	[listener+13h],	al
mov	callback_0, [ebp+local_ip_count]
test	esi, esi
jnz	loc_641E29EC
mov	dword ptr [esp+4], 4 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	[listener+0Ch],	eax
test	eax, eax
jz	loc_641E2A0C
mov	[ebp+local_ip_count], 1
xor	esi, esi
xor	edi, edi
jmp	loc_641E29D6
align 4
mov	eax, [ebp+local_ip_addr]
mov	edx, [eax+esi*4] 
mov	ecx, [ebp+port]
lea	eax, [ebp+server] 
call	_silc_net_set_sockaddr
test	al, al
jz	loc_641E2A49
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 1 
movsx	eax, word ptr [ebp+server]
mov	[esp], eax	
call	_socket@12
sub	esp, 0Ch
mov	[ebp+sock], eax
inc	eax
jz	loc_641E2A60
mov	dword ptr [esp+0Ch], 1 
mov	dword ptr [esp+8], 4 
mov	dword ptr [esp+4], 0FFFFh 
mov	edx, [ebp+sock]
mov	[esp], edx	
call	_silc_net_set_socket_opt
inc	eax
jz	loc_641E2A88
mov	dword ptr [esp+8], 10h 
lea	edx, [ebp+server]
mov	[esp+4], edx	
mov	rval, [ebp+sock]
mov	[esp], rval	
call	_bind@12
sub	esp, 0Ch
inc	rval
jz	loc_641E2A18
mov	dword ptr [esp+4], 7FFFFFFFh 
mov	rval, [ebp+sock]
mov	[esp], rval	
call	_listen@8
sub	esp, 8
inc	rval
jz	loc_641E2ABC
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], listener 
mov	dword ptr [esp+8], offset _silc_net_accept 
mov	rval, [ebp+sock]
mov	[esp+4], rval	
mov	edx, [ebp+schedule]
mov	[esp], edx	
call	_silc_schedule_task_add
mov	rval, [listener+0Ch]
mov	edx, [ebp+sock]
mov	[rval+esi*4], edx
mov	rval, [listener+10h]
lea	edx, [rval+1]
and	edx, 3FFFFFFFh
and	rval, 0C0000000h
or	rval, edx
mov	[listener+10h],	rval
inc	i
mov	esi, i
cmp	[ebp+local_ip_count], i
jbe	short loc_641E2A0E
mov	ecx, [ebp+local_ip_addr]
test	ecx, ecx
jnz	loc_641E28CC
mov	edx, offset a0_0_0_0 
jmp	loc_641E28D2
align 4
mov	dword ptr [esp+4], 4 
mov	edx, [ebp+local_ip_count]
mov	[esp], edx	
call	_silc_calloc
mov	[listener+0Ch],	rval
test	rval, rval
jnz	loc_641E28C2
xchg	ax, ax
			
xor	listener, listener
			
mov	rval, listener
lea	esp, [ebp-0Ch]
pop	listener
pop	esi
pop	i
leave
retn
call	_WSAGetLastError@0
mov	[esp+4], rval
mov	dword ptr [esp], offset	aCannotBindSock	
call	_silc_format
mov	[esp+4], rval	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	edx, [ebp+sock]
mov	[esp], edx	
call	_closesocket@4
push	rval
			
mov	[esp], listener	
call	_silc_net_close_listener
xor	listener, listener
mov	rval, listener
lea	esp, [ebp-0Ch]
pop	listener
pop	esi
pop	i
leave
retn
align 10h
call	_WSAGetLastError@0
mov	[esp+4], rval
mov	dword ptr [esp], offset	aCannotCreate_0	
call	_silc_format
mov	[esp+4], rval	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	short loc_641E2A49
align 4
call	_WSAGetLastError@0
mov	[esp+4], rval
mov	dword ptr [esp], offset	aCannotSetSoc_0	
call	_silc_format
mov	[esp+4], rval	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	rval, [ebp+sock]
mov	[esp], rval	
call	_closesocket@4
push	edx
jmp	short loc_641E2A49
align 4
call	_WSAGetLastError@0
mov	[esp+4], rval
mov	dword ptr [esp], offset	aCannotSetSoc_1	
jmp	loc_641E2A28
align 4
public _silc_net_accept
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	esi, [ebp+context]
mov	eax, [ebp+fd]
mov	[esp], eax	
call	_silc_net_accept_connection
mov	ebx, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641E2B45
mov	dword ptr [esp+0Ch], 1 
mov	dword ptr [esp+8], 4 
mov	dword ptr [esp+4], 0FFFFh 
mov	[esp], sock	
call	_silc_net_set_socket_opt
mov	[esp+14h], context_0 
mov	dword ptr [esp+10h], offset _silc_net_accept_stream 
mov	eax, [ebp+schedule]
mov	[esp+0Ch], eax	
mov	al, [context_0+13h]
mov	dl, al
shr	dl, 6
and	edx, 1
mov	[esp+8], edx	
shr	al, 7
movzx	eax, al
mov	[esp+4], eax	
mov	[esp], sock	
call	_silc_socket_tcp_stream_create
add	esp, 20h
pop	sock
pop	context_0
leave
retn
public _silc_net_connect_st_start
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	ebx, [ebp+fsm_context]
cmp	byte ptr [ebx+0C3h], 0
js	loc_641E2CD8
lea	edi, [fsm_context_0+74h]
mov	[ebp+var_49], 1
jmp	loc_641E2C01
align 4
mov	edx, [fsm_context_0+6Ch] 
test	edx, edx
jz	short loc_641E2B8D
xor	ecx, ecx	
lea	sock, [ebp+local] 
call	_silc_net_set_sockaddr
test	al, al
jnz	loc_641E2CB8
			
mov	dword ptr [esp+8], 10h 
lea	edx, [ebp+desthost]
mov	[esp+4], edx	
mov	[esp], sock	
call	_connect@12
sub	esp, 0Ch
mov	[ebp+rval], eax
call	_WSAGetLastError@0
mov	[ebp+err], eax
cmp	[ebp+rval], 0FFFFFFFFh
jnz	loc_641E2CE8
cmp	eax, 2733h
jz	loc_641E2CE8
mov	dword ptr [esp+4], 2 
mov	[esp], sock	
call	_shutdown@8
sub	esp, 8
mov	[esp], sock	
call	_closesocket@4
push	esi
cmp	[ebp+var_49], 0
jz	loc_641E2DD8
mov	[esp], edi	
call	_silc_net_is_ip6
test	al, al
jz	loc_641E2DD8
mov	[ebp+var_49], 0
mov	dword ptr [esp+0Ch], 40h 
mov	[esp+8], edi	
movzx	eax, [ebp+var_49]
mov	[esp+4], prefer_ipv6 
mov	prefer_ipv6, [fsm_context_0+70h]
mov	[esp], eax	
call	_silc_net_gethostbyname
test	al, al
jz	loc_641E2E18
mov	ecx, [fsm_context_0+0C0h]
and	ecx, 0FFFFFFh	
mov	edx, edi	
lea	eax, [ebp+desthost] 
call	_silc_net_set_sockaddr
test	al, al
jz	loc_641E2CD8
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 1 
movsx	eax, word ptr [ebp+desthost]
mov	[esp], eax	
call	_socket@12
sub	esp, 0Ch
mov	sock, eax
cmp	eax, 0FFFFFFFFh
jnz	loc_641E2B74
cmp	[ebp+var_49], 0
jz	short loc_641E2C86
mov	[esp], edi	
call	_silc_net_is_ip6
test	al, al
jnz	loc_641E2BFD
call	_WSAGetLastError@0
mov	[esp+4], eax
mov	dword ptr [esp], offset	aCannotCreate_0	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	eax, 3
lea	esp, [ebp-0Ch]
pop	fsm_context_0
pop	sock
pop	edi
leave
retn
mov	dword ptr [esp+8], 10h
lea	eax, [ebp+local]
mov	[esp+4], eax	
mov	[esp], sock	
call	_bind@12
sub	esp, 0Ch
jmp	loc_641E2B8D
align 4
			
mov	eax, 3
lea	esp, [ebp-0Ch]
pop	fsm_context_0
pop	sock
pop	edi
leave
retn
align 4
			
mov	[ebp+argp], 1
lea	eax, [ebp+argp]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 8004667Eh 
mov	[esp], sock	
call	_ioctlsocket@12
sub	esp, 0Ch
mov	dword ptr [esp+0Ch], 1 
mov	dword ptr [esp+8], 1 
mov	dword ptr [esp+4], 6 
mov	[esp], sock	
call	_silc_net_set_socket_opt
mov	dword ptr [esp+0Ch], 1 
mov	dword ptr [esp+8], 8 
mov	dword ptr [esp+4], 0FFFFh 
mov	[esp], sock	
call	_silc_net_set_socket_opt
mov	[fsm_context_0+0B4h], sock
mov	dword ptr [esp+4], offset _silc_net_connect_st_stream 
mov	ecx, [ebp+fsm]
mov	[esp], ecx	
call	_silc_fsm_next
mov	edx, [ebp+fsm]
mov	al, [edx+28h]
mov	dl, al
or	edx, 4
mov	ecx, [ebp+fsm]
mov	[ecx+28h], dl
test	al, 4
jnz	loc_641E2E57
lea	eax, [fsm_context_0+0Ch]
mov	[esp], eax	
call	_silc_fsm_get_schedule
mov	[esp+14h], fsm_context_0 
mov	dword ptr [esp+10h], offset _silc_net_connect_wait_stream 
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 1 
mov	eax, [fsm_context_0+0B4h]
mov	[esp], eax	
call	_silc_socket_tcp_stream_create
mov	[fsm_context_0+68h], eax
mov	eax, [ebp+fsm]
mov	dl, [eax+28h]
mov	al, dl
shr	al, 2
and	edx, 0FFFFFFFBh
mov	ecx, [ebp+fsm]
mov	[ecx+28h], dl
shl	eax, 1
and	eax, 2
lea	esp, [ebp-0Ch]
pop	fsm_context_0
pop	sock
pop	edi
leave
retn
			
cmp	[ebp+err], 274Dh
jz	loc_641E2E93
cmp	[ebp+err], 2751h
jz	loc_641E2E88
cmp	[ebp+err], 274Ch
jnz	short loc_641E2E01
mov	dword ptr [fsm_context_0], 5
			
call	_WSAGetLastError@0
mov	[esp+4], eax
mov	dword ptr [esp], offset	aCannotConnectT	
jmp	loc_641E2C96
align 4
call	_WSAGetLastError@0
mov	[esp+8], eax
mov	eax, [fsm_context_0+70h]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aNetworkSUnreac	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	dword ptr [fsm_context_0], 3
mov	eax, 3
lea	esp, [ebp-0Ch]
pop	fsm_context_0
pop	sock
pop	edi
leave
retn
mov	dword ptr [esp+8], 25Ah
mov	dword ptr [esp+4], offset aSilcwin32net_c 
mov	dword ptr [esp], offset	aSilc_verifySD 
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
jmp	loc_641E2D7B
mov	dword ptr [fsm_context_0], 3
jmp	loc_641E2E01
mov	dword ptr [fsm_context_0], 4
jmp	loc_641E2E01
align 10h
public _silc_schedule_internal_wakeup
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_schedule_internal_signal_register
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_schedule_internal_signal_unregister
			
			
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_schedule_internal_signals_call
			
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_schedule_internal_signals_block
			
			
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_schedule_internal_signals_unblock
			
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_schedule_internal_schedule_fd
			
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	edx, [ebp+context]
mov	ebx, [ebp+task]
mov	ecx, [ebp+event_mask]
test	edx, edx
jz	short loc_641E2F1A
mov	eax, event_mask_0
and	events,	1
neg	events
and	events,	0Dh
and	event_mask_0, 2
jnz	short loc_641E2F24
mov	[esp+0Ch], events 
mov	dword ptr [esp+8], 401h	
mov	events,	[context_0]
mov	[esp+4], eax	
mov	eax, [task_0+14h]
mov	[esp], eax	
call	_WSAAsyncSelect@16
sub	esp, 10h
and	dword ptr [task_0+10h],	0C0007FFFh
mov	al, 1
mov	task_0,	[ebp+var_4]
leave
retn
align 4
or	events,	2
jmp	short loc_641E2EF3
align 4
public _silc_schedule_internal_uninit
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	ebx, [ebp+context]
test	ebx, ebx
jz	short loc_641E2F94
mov	eax, [ebp+schedule]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aSilcscheduleP 
mov	dword ptr [esp+4], 20h 
lea	esi, [ebp+n]
mov	[esp], esi	
call	_silc_snprintf
mov	eax, [context_0]
mov	[esp], eax	
call	_DestroyWindow@4
push	edx
mov	dword ptr [esp+4], 0 
mov	[esp], esi	
call	_UnregisterClassA@8
sub	esp, 8
mov	eax, [context_0+2Ch]
mov	[esp], eax	
call	_CloseHandle@4
push	eax
call	_WSACleanup@0
mov	[esp], context_0 
call	_silc_free
lea	esp, [ebp-8]
pop	context_0
pop	esi
leave
retn
align 4
push	ebp
mov	ebp, esp
sub	esp, 1C8h
mov	[ebp+sopt], 20h
lea	eax, [ebp+wdata]
mov	[esp+4], eax	
mov	dword ptr [esp], 202h 
call	_WSAStartup@8
sub	esp, 8
test	eax, eax
jz	short loc_641E2FD0
xor	ret, ret
leave
retn
align 10h
mov	dword ptr [esp+10h], 4 
lea	ret, [ebp+sopt]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 7008h 
mov	dword ptr [esp+4], 0FFFFh 
mov	dword ptr [esp], 0FFFFFFFFh 
call	_setsockopt@20
sub	esp, 14h
test	eax, eax
setz	al
leave
retn
align 4
public _silc_schedule_internal_init
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+schedule]
call	_silc_net_win32_init
mov	dword ptr [esp+4], 34h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641E31CC
mov	eax, [schedule_0+5Ch]
and	eax, 0E0000000h
or	eax, 40h
mov	[schedule_0+5Ch], eax
mov	[esp+0Ch], schedule_0
mov	dword ptr [esp+8], offset aSilcscheduleP 
mov	dword ptr [esp+4], 20h 
lea	edi, [ebp+n]
mov	[esp], edi	
call	_silc_snprintf
mov	dword ptr [ebx+8], offset _silc_schedule_wnd_proc@16
mov	dword ptr [ebx+10h], 4
mov	[esp], edi	
call	_strdup
mov	[ebx+28h], eax
lea	eax, [ebx+4]
mov	[esp], eax	
call	_RegisterClassA@4
push	eax
mov	dword ptr [esp+2Ch], 0 
mov	dword ptr [esp+28h], 0 
mov	dword ptr [esp+24h], 0 
mov	dword ptr [esp+20h], 0 
mov	dword ptr [esp+1Ch], 0 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], offset WindowName 
mov	eax, [ebx+28h]
mov	[esp+4], eax	
mov	dword ptr [esp], 0 
call	_CreateWindowExA@48
sub	esp, 30h
mov	[ebx], eax
test	eax, eax
jz	loc_641E3188
mov	[esp+8], schedule_0 
mov	dword ptr [esp+4], 0FFFFFFEBh 
mov	[esp], eax	
call	_SetWindowLongA@12
sub	esp, 0Ch
mov	dword ptr [esp+18h], 20h 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 1 
mov	eax, [ebx]
mov	[esp], eax	
call	_SetWindowPos@28
sub	esp, 1Ch
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 64h 
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], 0 
call	_CreateSemaphoreA@16
sub	esp, 10h
mov	[ebx+2Ch], eax
test	eax, eax
jz	short loc_641E31D6
mov	eax, ebx
lea	esp, [ebp-0Ch]
pop	ebx
pop	schedule_0
pop	edi
leave
retn
align 4
mov	dword ptr [esp], offset	aCouldNotCreate	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	eax, [ebx]
mov	[esp], eax	
call	_DestroyWindow@4
push	ecx
mov	dword ptr [esp+4], 0 
mov	[esp], edi	
call	_UnregisterClassA@8
sub	esp, 8
mov	[esp], ebx	
call	_silc_free
xchg	ax, ax
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ebx
pop	schedule_0
pop	edi
leave
retn
mov	dword ptr [esp], offset	aCouldNotCrea_0
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
mov	[esp], ebx	
call	_silc_free
xor	eax, eax
jmp	loc_641E317D
align 4
public _silc_select
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 15Ch
mov	edx, [ebp+context]
mov	al, [edx+30h]
test	al, 1
jnz	short loc_641E3251
or	eax, 1
mov	[edx+30h], al
mov	edx, [ebp+schedule]
mov	eax, [edx+24h]
and	eax, 3
mov	[edx+24h], eax
mov	word ptr [edx+20h], 0
mov	word ptr [edx+22h], 0
mov	byte ptr [edx+24h], 0
mov	dword ptr [edx+1Ch], 0
mov	dword ptr [edx+18h], 0
mov	dword ptr [edx+14h], 0
mov	eax, [ebp+context]
mov	ebx, [eax+2Ch]
mov	edx, [ebp+schedule]
test	byte ptr [edx+5Fh], 20h
jnz	loc_641E3377
mov	esi, 0FFFFFFFFh
mov	edx, [ebp+schedule]
mov	eax, [edx+50h]
mov	[ebp+handles], ebx
mov	[esp], eax	
call	_silc_mutex_unlock
lea	ebx, [ebp+msg]
			
call	_GetTickCount@0
mov	curtime, eax
mov	dword ptr [esp+10h], 0FFh 
mov	[esp+0Ch], timeo 
mov	dword ptr [esp+8], 0 
lea	eax, [ebp+handles]
mov	[esp+4], eax	
mov	dword ptr [esp], 1 
call	_MsgWaitForMultipleObjects@20
sub	esp, 14h
cmp	eax, 0FFFFFFFFh
jz	loc_641E33D6
cmp	ready, 7Fh
jbe	short loc_641E3308
cmp	ready, 80h
jz	loc_641E3414
cmp	ready, 102h
jz	loc_641E33B7
test	ready, ready
jnz	loc_641E341D
mov	edx, [ebp+schedule]
mov	ready, [edx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebp+context]
and	byte ptr [eax+30h], 0FEh
mov	edx, [ebp+schedule]
mov	eax, [edx+24h]
shr	eax, 2
inc	eax
lea	esp, [ebp-0Ch]
pop	ebx
pop	timeo
pop	curtime
leave
retn
align 4
cmp	ready, 1
jz	short loc_641E3322
jmp	short loc_641E32D8
align 10h
mov	[esp], ebx	
call	_TranslateMessage@4
push	ecx
mov	[esp], ebx	
call	_DispatchMessageA@4
push	edx
mov	dword ptr [esp+10h], 1
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 0 
mov	[esp], ebx	
call	_PeekMessageA@20
sub	esp, 14h
test	eax, eax
jnz	short loc_641E3310
cmp	timeo, 0FFFFFFFFh
jz	loc_641E3280
call	_GetTickCount@0
add	timeo, curtime
sub	timeo, eax
call	_GetTickCount@0
test	timeo, timeo
jns	loc_641E3280
xor	timeo, timeo
jmp	loc_641E3280
mov	eax, [ebp+schedule]
mov	ecx, [eax+58h]
mov	esi, 10624DD3h
mov	eax, ecx
imul	esi
mov	[ebp+var_140], eax
mov	[ebp+var_13C], edx
mov	eax, [ebp+var_13C]
sar	eax, 6
sar	ecx, 1Fh
sub	eax, ecx
mov	edx, [ebp+schedule]
mov	ecx, [edx+54h]
lea	ecx, [ecx+ecx*4]
lea	ecx, [ecx+ecx*4]
lea	ecx, [ecx+ecx*4]
lea	esi, [eax+ecx*8]
jmp	loc_641E3269
mov	edx, [ebp+schedule]
mov	ready, [edx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebp+context]
and	byte ptr [eax+30h], 0FEh
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ebx
pop	timeo
pop	curtime
leave
retn
mov	dword ptr [esp], offset	aWaitformultipl
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 2 
call	_silc_log_output
mov	edx, [ebp+schedule]
mov	eax, [edx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	eax, [ebp+context]
and	byte ptr [eax+30h], 0FEh
mov	eax, 0FFFFFFFFh
lea	esp, [ebp-0Ch]
pop	ebx
pop	timeo
pop	curtime
leave
retn
mov	dword ptr [esp], offset	aWaitformulti_0
jmp	short loc_641E33DD
mov	ready, [ebp+context]
and	byte ptr [eax+30h], 0FEh
or	eax, 0FFFFFFFFh
jmp	loc_641E32FF
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+hwnd]
mov	edi, [ebp+wParam]
mov	dword ptr [esp+4], 0FFFFFFEBh 
mov	[esp], esi	
call	_GetWindowLongA@8
sub	esp, 8
mov	ebx, eax
cmp	[ebp+wMsg], 401h
jz	short loc_641E3480
mov	eax, [ebp+lParam]
mov	[esp+0Ch], eax	
mov	[esp+8], wParam_0 
mov	edx, [ebp+wMsg]
mov	[esp+4], edx	
mov	[esp], hwnd_0	
call	_DefWindowProcA@16
sub	esp, 10h
lea	esp, [ebp-0Ch]
pop	ebx
pop	hwnd_0
pop	wParam_0
leave
retn	10h
mov	eax, [eax]
mov	[ebp+internal],	eax
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_lock
mov	edx, [ebp+internal]
mov	al, [edx+30h]
test	al, 1
jnz	short loc_641E34CE
or	eax, 1
mov	[edx+30h], al
mov	eax, [ebx+24h]
and	eax, 3
mov	[ebx+24h], eax
mov	word ptr [ebx+20h], 0
mov	word ptr [ebx+22h], 0
mov	byte ptr [ebx+24h], 0
mov	dword ptr [ebx+1Ch], 0
mov	dword ptr [ebx+18h], 0
mov	dword ptr [ebx+14h], 0
lea	eax, [ebp+task]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	[esp+4], wParam_0 
mov	eax, [ebx+10h]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short loc_641E3564
mov	eax, [ebp+task]
test	byte ptr [eax+0Ch], 2
jz	short loc_641E3564
test	dword ptr [eax+10h], 7FFEh
jz	short loc_641E3564
mov	edx, [eax+10h]
and	edx, 0C0007FFFh
mov	[eax+10h], edx
cmp	word ptr [ebp+lParam], 2
jz	loc_641E35B8
jbe	short loc_641E3574
cmp	word ptr [ebp+lParam], 4
jz	short loc_641E3529
cmp	word ptr [ebp+lParam], 8
jnz	short loc_641E357B
			
or	dh, 80h
mov	[eax+10h], edx
mov	hwnd_0,	[ebx+14h]
test	esi, esi
jz	loc_641E35CC
movzx	edx, word ptr [ebx+20h]
mov	ecx, [ebx+18h]
mov	[ecx+edx], eax
test	byte ptr [ebx+24h], 1
jz	short loc_641E3554
movzx	ecx, word ptr [ebx+22h]
mov	esi, [ebx+18h]
mov	[eax+ecx], esi
mov	[ebx+18h], eax
mov	dword ptr [eax+edx], 0
add	dword ptr [ebx+24h], 4
jmp	short loc_641E357B
			
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
jmp	loc_641E3459
cmp	word ptr [ebp+lParam], 1
jz	short loc_641E3529
			
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 1 
mov	edx, [ebp+internal]
mov	eax, [edx+2Ch]
mov	[esp], eax	
call	_ReleaseSemaphore@12
sub	esp, 0Ch
mov	eax, [ebx+50h]
mov	[esp], eax	
call	_silc_mutex_unlock
mov	eax, 1
lea	esp, [ebp-0Ch]
pop	ebx
pop	esi
pop	edi
leave
retn	10h
align 4
or	edx, 10000h
mov	[eax+10h], edx
mov	wParam_0, [ebx+14h]
test	edi, edi
jnz	loc_641E353A
mov	[ebx+14h], eax
movzx	edx, word ptr [ebx+20h]
jmp	loc_641E3544
public _silc_socket_stream_io
push	ebp
mov	ebp, esp
sub	esp, 8
mov	ecx, [ebp+type]
mov	eax, [ebp+context]
mov	edx, [eax+1Ch]
test	edx, edx
jz	short locret_641E35F5
cmp	type_0,	1
jz	short loc_641E360C
cmp	type_0,	2
jz	short loc_641E35F8
leave
retn
align 4
mov	type_0,	[context_0+20h]
mov	[ebp+type], ecx
mov	[ebp+app_context], 1
mov	[ebp+schedule],	context_0
leave
jmp	edx
align 4
mov	type_0,	[context_0+20h]
mov	[ebp+type], ecx
mov	[ebp+app_context], 0
mov	[ebp+schedule],	context_0
leave
jmp	edx
align 10h
public _silc_socket_stream_notifier
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+stream]
mov	eax, [ebp+schedule]
mov	edx, [ebp+callback]
mov	[ebx+1Ch], edx
mov	ecx, [ebp+context]
mov	[ebx+20h], ecx
mov	[ebx+4], eax
test	edx, edx
jz	loc_641E36CC
test	schedule_0, schedule_0
jz	short loc_641E36C4
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], stream_0 
mov	dword ptr [esp+8], offset _silc_socket_stream_io 
mov	callback_0, [stream_0+8]
mov	[esp+4], edx	
mov	[esp], schedule_0 
call	_silc_schedule_task_add
test	eax, eax
jz	short loc_641E36BC
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
test	al, al
jz	short loc_641E36BC
mov	eax, [stream_0+4]
test	eax, eax
jz	short loc_641E36C4
mov	[esp], eax	
call	_silc_schedule_wakeup
mov	al, 1
add	esp, 24h
pop	stream_0
leave
retn
			
xor	eax, eax
add	esp, 24h
pop	stream_0
leave
retn
			
mov	al, 1
add	esp, 24h
pop	stream_0
leave
retn
test	schedule_0, schedule_0
jz	short loc_641E36C4
mov	callback_0, [stream_0+8]
mov	[esp+4], edx	
mov	[esp], schedule_0 
call	_silc_schedule_unset_listen_fd
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
jmp	short loc_641E36A5
align 4
public _silc_socket_stream_close
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+stream]
mov	eax, [ebx+4]
test	eax, eax
jz	short loc_641E3726
mov	edx, [stream_0+8]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
mov	eax, [stream_0+8]
mov	[esp], eax	
call	_silc_net_close_connection
mov	al, 1
add	esp, 14h
pop	stream_0
leave
retn
align 4
public _silc_socket_udp_stream_read
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+buf_len]
mov	[esp+14h], eax	
mov	eax, [ebp+buf]
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], 0 
mov	eax, [ebp+stream]
mov	[esp], eax	
call	_silc_net_udp_receive
leave
retn
align 4
public _silc_socket_stream_write
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	ebx, [ebp+stream]
mov	dword ptr [esp+0Ch], 0 
mov	eax, [ebp+data_len]
mov	[esp+8], eax	
mov	eax, [ebp+data]
mov	[esp+4], eax	
mov	eax, [ebx+8]
mov	[esp], eax	
call	_send@16
sub	esp, 10h
mov	esi, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641E37FC
mov	ret, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_get_fd_events
test	al, 2
jnz	short loc_641E37D0
mov	eax, ret
lea	esp, [ebp-8]
pop	stream_0
pop	ret
leave
retn
align 10h
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 1 
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	eax, ret
lea	esp, [ebp-8]
pop	stream_0
pop	ret
leave
retn
align 4
call	_WSAGetLastError@0
cmp	eax, 2733h
jz	short loc_641E3834
mov	edx, [stream_0+8]
mov	[esp+4], edx	
mov	edx, [stream_0+4]
mov	[esp], edx	
mov	[ebp+var_C], ret
call	_silc_schedule_unset_listen_fd
mov	eax, [ebp+var_C]
mov	[stream_0+16h],	ax
mov	ret, 0FFFFFFFEh
mov	eax, ret
lea	esp, [ebp-8]
pop	stream_0
pop	ret
leave
retn
align 4
mov	dword ptr [esp+0Ch], 0
mov	dword ptr [esp+8], 3
jmp	short loc_641E37E0
align 4
public _silc_socket_udp_stream_write
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 20h
mov	eax, [ebp+stream]
mov	edx, [ebp+data]
mov	ecx, [ebp+data_len]
test	byte ptr [eax+24h], 2
jnz	short loc_641E386E
mov	ebx, [stream_0+10h]
test	ebx, ebx
jz	short loc_641E386E
mov	esi, [stream_0+14h]
test	si, si
jnz	short loc_641E3884
			
mov	[ebp+data_len],	data_len_0
mov	[ebp+data], data_0
mov	[ebp+stream], stream_0
add	esp, 20h
pop	ebx
pop	esi
leave
jmp	_silc_socket_stream_write
align 4
mov	[esp+10h], data_len_0 
mov	[esp+0Ch], data_0 
movzx	esi, si
mov	[esp+8], esi	
mov	[esp+4], ebx	
mov	[esp], stream_0	
call	_silc_net_udp_send
add	esp, 20h
pop	ebx
pop	esi
leave
retn
align 4
public _silc_socket_stream_read
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	esi, [ebp+stream]
mov	ebx, [esi+8]
lea	eax, [ebp+argp]
mov	[esp+8], eax	
mov	dword ptr [esp+4], 4004667Fh 
mov	[esp], fd	
call	_ioctlsocket@12
sub	esp, 0Ch
mov	eax, [ebp+argp]
test	eax, eax
jz	loc_641E3990
mov	dword ptr [esp+0Ch], 0 
mov	eax, [ebp+buf_len]
mov	[esp+8], eax	
mov	eax, [ebp+buf]
mov	[esp+4], eax	
mov	[esp], fd	
call	_recv@16
sub	esp, 10h
mov	fd, eax
cmp	eax, 0FFFFFFFFh
jz	short loc_641E3924
test	len, len
jnz	short loc_641E3919
mov	len, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
			
mov	eax, len
lea	esp, [ebp-8]
pop	len
pop	stream_0
leave
retn
align 4
call	_WSAGetLastError@0
cmp	eax, 2733h
jz	short loc_641E3937
cmp	len, 2714h
jnz	short loc_641E396C
mov	len, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_get_fd_events
mov	dword ptr [esp+0Ch], 0 
or	eax, 1
mov	[esp+8], eax	
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
jmp	short loc_641E3919
mov	edx, [stream_0+8]
mov	[esp+4], edx	
mov	edx, [stream_0+4]
mov	[esp], edx	
mov	[ebp+var_1C], len
call	_silc_schedule_unset_listen_fd
mov	eax, [ebp+var_1C]
mov	[stream_0+16h],	ax
mov	len, 0FFFFFFFEh
jmp	short loc_641E3919
align 10h
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], 1 
call	_SleepEx@8
sub	esp, 8
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_get_fd_events
mov	dword ptr [esp+0Ch], 0 
or	eax, 1
mov	[esp+8], eax	
mov	eax, [stream_0+8]
mov	[esp+4], eax	
mov	eax, [stream_0+4]
mov	[esp], eax	
call	_silc_schedule_set_listen_fd
mov	fd, 0FFFFFFFFh
jmp	loc_641E3919
public _silc_socket_stream_destroy
			
			
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+stream]
mov	eax, [socket_stream+4]
test	eax, eax
jz	short loc_641E3A16
mov	edx, [socket_stream+8]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_schedule_unset_listen_fd
mov	eax, [socket_stream+8]
mov	[esp+4], eax	
mov	eax, [socket_stream+4]
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
mov	eax, [socket_stream+8]
mov	[esp], eax	
call	_silc_net_close_connection
mov	eax, [socket_stream+10h]
mov	[esp], eax	
call	_silc_free
mov	eax, [socket_stream+0Ch]
mov	[esp], eax	
call	_silc_free
mov	eax, [socket_stream+4]
test	eax, eax
jz	short loc_641E3A5C
mov	edx, [socket_stream+8]
mov	[esp+4], edx	
mov	[esp], eax	
call	_silc_schedule_task_del_by_fd
mov	eax, [socket_stream+4]
test	eax, eax
jz	short loc_641E3A5C
mov	[esp], eax	
call	_silc_schedule_wakeup
			
mov	[ebp+stream], socket_stream
add	esp, 14h
pop	socket_stream
leave
jmp	_silc_free
align 4
public _silc_thread_create
			
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+context]
mov	[esp], eax	
call	[ebp+start_func]
xor	eax, eax
leave
retn
align 10h
public _silc_thread_exit
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_thread_self
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 10h
public _silc_thread_wait
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 4
public _silc_thread_yield
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_mutex_alloc
			
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 4
public _silc_mutex_free
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_mutex_lock
			
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_mutex_unlock
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_mutex_assert_locked
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_rwlock_alloc
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 10h
public _silc_rwlock_free
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_rwlock_rdlock
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_rwlock_wrlock
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_rwlock_unlock
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_cond_alloc
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 4
public _silc_cond_free
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_cond_signal
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_cond_broadcast
			
push	ebp
mov	ebp, esp
leave
retn
align 10h
public _silc_cond_wait
push	ebp
mov	ebp, esp
leave
retn
align 4
public _silc_cond_timedwait
push	ebp
mov	ebp, esp
mov	al, 1
leave
retn
align 10h
public _silc_file_set_nonblock
			
push	ebp
mov	ebp, esp
xor	eax, eax
leave
retn
align 4
public _silc_get_username
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 0A4h
mov	[ebp+maxlen], 80h
lea	eax, [ebp+maxlen]
mov	[esp+4], eax	
lea	ebx, [ebp+username]
mov	[esp], ebx	
call	_GetUserNameA@8
sub	esp, 8
mov	[esp], ebx	
call	_strdup
mov	ebx, [ebp+var_4]
leave
retn
align 10h
public _silc_gettimeofday
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	edi, [ebp+tv]
lea	eax, [ebp+ft]
mov	[esp], eax	
call	_GetSystemTimeAsFileTime@4
push	eax
mov	eax, [ebp+ft.dwLowDateTime]
mov	edx, [ebp+ft.dwHighDateTime]
add	eax, 2AC18000h
adc	edx, 0FE624E21h
mov	dword ptr [esp+8], 0Ah 
mov	dword ptr [esp+0Ch], 0
mov	[esp], eax	
mov	[esp+4], edx
call	___divdi3
mov	ebx, eax
mov	esi, edx
mov	dword ptr [esp+8], 0F4240h 
mov	dword ptr [esp+0Ch], 0
mov	[esp], eax	
mov	[esp+4], edx
call	___divdi3
mov	[edi], eax
mov	dword ptr [esp+8], 0F4240h 
mov	dword ptr [esp+0Ch], 0
mov	[esp], ebx	
mov	[esp+4], esi
call	___moddi3
mov	[edi+4], eax
xor	eax, eax
lea	esp, [ebp-0Ch]
pop	ebx
pop	esi
pop	edi
leave
retn
public _silc_get_real_name
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 0A4h
mov	[ebp+nSize], 80h
lea	eax, [ebp+nSize]
mov	[esp+4], eax	
lea	ebx, [ebp+Buffer]
mov	[esp], ebx	
call	_GetUserNameA@8
sub	esp, 8
mov	[esp], ebx	
call	_strdup
mov	ebx, [ebp+var_4]
leave
retn
align 4
public _silc_get_status_message
push	ebp
mov	ebp, esp
mov	cl, [ebp+status]
mov	eax, ds:_silc_status_messages.message
test	eax, eax
jz	short loc_641E3C55
cmp	cl, 0Ah
jz	short locret_641E3C5A
xor	i, i
jmp	short loc_641E3C49
cmp	byte ptr ds:_silc_status_messages.status[i*8], cl
jz	short locret_641E3C5A
inc	i
mov	eax, ds:_silc_status_messages.message[i*8]
test	eax, eax
jnz	short loc_641E3C40
mov	eax, offset byte_64265840
			
leave
retn
public _silc_get_packet_name
push	ebp
mov	ebp, esp
mov	al, [ebp+type]
cmp	al, 0FFh
jz	short loc_641E3C84
cmp	al, 0C7h
ja	short loc_641E3C7C
cmp	al, 1Dh
ja	short loc_641E3C8C
movzx	type_0,	al
mov	type_0,	ds:_packet_name[type_0*4]
leave
retn
align 4
mov	type_0,	offset aPrivateRange 
leave
retn
align 4
mov	type_0,	offset aReserved 
leave
retn
align 4
mov	type_0,	offset aUnknown	
leave
retn
align 4
public _silc_get_command_name
push	ebp
mov	ebp, esp
mov	al, [ebp+command]
cmp	al, 0FFh
jz	short loc_641E3CBC
cmp	al, 0C7h
ja	short loc_641E3CB4
cmp	al, 1Ch
ja	short loc_641E3CC4
movzx	command_0, al
mov	command_0, ds:_command_name[command_0*4]
leave
retn
align 4
mov	command_0, offset aPrivateRange	
leave
retn
align 4
mov	command_0, offset aReserved 
leave
retn
align 4
mov	command_0, offset aUnknown 
leave
retn
align 4
public _silc_id_render
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 0ACh
mov	esi, [ebp+id]
mov	edx, [ebp+id_type]
xor	ebx, ebx
mov	ecx, 100h
mov	edi, offset _rid
mov	al, bl
rep stosb
cmp	dx, 2
jz	loc_641E3E50
cmp	dx, 3
jz	loc_641E3E24
dec	dx
jz	short loc_641E3D14
mov	eax, offset _rid
lea	esp, [ebp-0Ch]
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
cmp	byte ptr [id_0+10h], 4
jbe	loc_641E3F14
			
lea	ebx, [ebp+tmp]
mov	ecx, 64h
mov	edi, ebx
xor	cp, cp
rep stosb
movzx	eax, word ptr [id_0+12h]
mov	[esp], eax	
call	_ntohs@4
push	edx
movzx	eax, ax
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aD 
mov	dword ptr [esp+4], 63h 
mov	[esp], ebx	
call	_silc_snprintf
mov	edx, 0FFFFFFFFh
mov	ecx, edx
mov	edi, offset _rid
xor	eax, eax
repne scasb
add	ecx, 101h
mov	[ebp+var_8C], ecx
mov	ecx, edx
mov	edi, ebx
repne scasb
mov	edx, ecx
not	edx
dec	edx
cmp	[ebp+var_8C], edx
jnb	loc_641E406C
mov	eax, [ebp+var_8C]
test	eax, eax
jnz	loc_641E4088
			
mov	dx, [id_0+14h]
mov	ecx, 64h
mov	edi, ebx
xor	eax, eax
rep stosb
movzx	eax, dl
mov	[esp+10h], eax
movzx	edx, dh
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset a02x02x 
mov	dword ptr [esp+4], 63h 
mov	[esp], ebx	
call	_silc_snprintf
mov	edx, 0FFFFFFFFh
mov	ecx, edx
mov	edi, offset _rid
xor	eax, eax
repne scasb
lea	id_0, [ecx+101h]
mov	ecx, edx
mov	edi, ebx
repne scasb
mov	edx, ecx
not	edx
dec	edx
cmp	esi, edx
jnb	loc_641E4048
test	esi, esi
jz	loc_641E3D06
mov	[esp+8], esi	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
mov	eax, offset _rid
lea	esp, [ebp-0Ch]
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
cmp	byte ptr [id_0+10h], 4
ja	loc_641E3D1E
mov	dword ptr [esp+8], 4 
mov	[esp+4], id_0	
lea	eax, [ebp+ipv4_0]
mov	[esp], eax	
call	_memmove
mov	eax, dword ptr [ebp+ipv4_0.S_un]
jmp	loc_641E3F2E
align 10h
cmp	byte ptr [id_0+10h], 4
jbe	loc_641E3FBC
			
lea	ebx, [ebp+tmp]
mov	ecx, 64h
mov	edi, ebx
xor	cp, cp
rep stosb
movzx	eax, byte ptr [id_0+11h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a02x_2 
mov	dword ptr [esp+4], 63h 
mov	[esp], ebx	
call	_silc_snprintf
mov	edx, 0FFFFFFFFh
mov	ecx, edx
mov	edi, offset _rid
xor	eax, eax
repne scasb
add	ecx, 101h
mov	[ebp+var_8C], ecx
mov	ecx, edx
mov	edi, ebx
repne scasb
mov	edx, ecx
not	edx
dec	edx
cmp	[ebp+var_8C], edx
jnb	loc_641E3FA0
mov	eax, [ebp+var_8C]
test	eax, eax
jnz	loc_641E40A8
			
mov	ecx, 64h
mov	edi, ebx
xor	eax, eax
rep stosb
movzx	eax, byte ptr [id_0+15h]
mov	[esp+18h], eax
movzx	eax, byte ptr [id_0+14h]
mov	[esp+14h], eax
movzx	eax, byte ptr [id_0+13h]
mov	[esp+10h], eax
movzx	eax, byte ptr [id_0+12h]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset a02x02x02x02x__ 
mov	dword ptr [esp+4], 63h 
mov	[esp], ebx	
call	_silc_snprintf
jmp	loc_641E3DD1
mov	dword ptr [esp+8], 4 
mov	[esp+4], id_0	
lea	eax, [ebp+ipv4]
mov	[esp], eax	
call	_memmove
mov	eax, dword ptr [ebp+ipv4.S_un]
mov	[esp], eax	
call	_inet_ntoa@4
push	edi
mov	edx, eax
test	eax, eax
jz	loc_641E3D1E
mov	ecx, 0FFFFFFFFh
mov	edi, offset _rid
mov	al, bl
repne scasb
add	ecx, 101h
mov	[ebp+var_8C], ecx
mov	ecx, 0FFFFFFFFh
mov	edi, cp
repne scasb
not	ecx
dec	ecx
cmp	[ebp+var_8C], ecx
jnb	loc_641E40E4
mov	ecx, [ebp+var_8C]
test	ecx, ecx
jz	loc_641E3D1E
mov	ecx, [ebp+var_8C]
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3D1E
mov	[esp+8], edx	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3ECC
align 4
mov	dword ptr [esp+8], 4 
mov	[esp+4], id_0	
lea	eax, [ebp+ipv4_1]
mov	[esp], eax	
call	_memmove
mov	eax, dword ptr [ebp+ipv4_1.S_un]
mov	[esp], eax	
call	_inet_ntoa@4
push	edi
mov	edx, eax
test	eax, eax
jz	loc_641E3E5A
mov	ecx, 0FFFFFFFFh
mov	edi, offset _rid
mov	al, bl
repne scasb
add	ecx, 101h
mov	[ebp+var_8C], ecx
mov	ecx, 0FFFFFFFFh
mov	edi, cp
repne scasb
not	ecx
dec	ecx
cmp	[ebp+var_8C], ecx
jnb	loc_641E40C8
mov	ecx, [ebp+var_8C]
test	ecx, ecx
jz	loc_641E3E5A
mov	ecx, [ebp+var_8C]
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3E5A
mov	[esp+8], edx	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
mov	eax, offset _rid
lea	esp, [ebp-0Ch]
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
mov	[esp+8], edx	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3D9C
align 4
mov	eax, [ebp+var_8C]
mov	[esp+8], eax	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3D9C
align 4
mov	eax, [ebp+var_8C]
mov	[esp+8], eax	
mov	[esp+4], ebx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3ECC
align 4
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3E5A
align 4
mov	[esp+8], ecx	
mov	[esp+4], edx	
mov	dword ptr [esp], offset	_rid 
call	_strncat
jmp	loc_641E3D1E
align 10h
public _silc_client_chumode_char
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 50h
mov	ebx, [ebp+mode]
test	ebx, ebx
jnz	short loc_641E4118
xor	eax, eax
add	esp, 50h
pop	mode_0
pop	edi
leave
retn
lea	edx, [ebp+string]
xor	eax, eax
mov	ecx, 40h
mov	edi, edx
rep stosb
test	bl, 1
jnz	short loc_641E4144
test	bl, 2
jnz	short loc_641E415B
and	mode_0,	20h
jnz	short loc_641E4174
			
mov	[esp], edx	
call	_strdup
add	esp, 50h
pop	mode_0
pop	edi
leave
retn
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 2Ah
test	bl, 2
jz	short loc_641E4130
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 40h
and	mode_0,	20h
jz	short loc_641E4135
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 26h
jmp	short loc_641E4135
align 4
public _silc_client_chumode
push	ebp
mov	ebp, esp
push	edi
push	ebx
sub	esp, 50h
mov	ebx, [ebp+mode]
test	ebx, ebx
jnz	short loc_641E41A4
xor	eax, eax
add	esp, 50h
pop	mode_0
pop	edi
leave
retn
lea	edx, [ebp+string]
xor	eax, eax
mov	ecx, 40h
mov	edi, edx
rep stosb
test	bl, 1
jnz	short loc_641E41E4
test	bl, 2
jnz	short loc_641E41FB
test	bl, 4
jnz	short loc_641E4214
test	bl, 8
jnz	short loc_641E422D
test	bl, 10h
jnz	short loc_641E4246
and	mode_0,	20h
jnz	loc_641E4263
			
mov	[esp], edx	
call	_strdup
add	esp, 50h
pop	mode_0
pop	edi
leave
retn
align 4
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 66h
test	bl, 2
jz	short loc_641E41BC
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 6Fh
test	bl, 4
jz	short loc_641E41C1
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 62h
test	bl, 8
jz	short loc_641E41C6
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 75h
test	bl, 10h
jz	short loc_641E41CB
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 72h
and	mode_0,	20h
jz	loc_641E41D4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, edx
repne scasb
not	ecx
mov	word ptr [edx+ecx-1], 71h
jmp	loc_641E41D4
public _silc_client_chmode
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 9Ch
mov	edx, [ebp+mode]
test	edx, edx
jnz	short loc_641E429C
xor	eax, eax
add	esp, 9Ch
pop	ebx
pop	esi
pop	edi
leave
retn
lea	ebx, [ebp+string]
xor	eax, eax
mov	ecx, 64h
mov	edi, ebx
rep stosb
test	dl, 1
jnz	loc_641E4540
test	dl, 2
jnz	loc_641E4524
test	dl, 4
jnz	loc_641E4508
test	dl, 8
jnz	loc_641E44EC
test	dl, 10h
jnz	loc_641E44D0
test	dl, 20h
jnz	loc_641E44B4
test	dl, 40h
jnz	loc_641E4498
test	dh, 2
jnz	loc_641E447C
test	dh, 10h
jnz	loc_641E4460
test	dh, 4
jnz	loc_641E4444
test	dh, 8
jnz	loc_641E4428
mov	esi, mode_0
and	esi, 80h
jnz	loc_641E440C
and	mode_0,	100h
mov	[ebp+var_8C], mode_0
jnz	loc_641E43F0
test	esi, esi
jz	short loc_641E4380
mov	esi, 0FFFFFFFFh
xor	eax, eax
mov	ecx, esi
mov	edi, [ebp+cipher]
repne scasb
mov	mode_0,	ecx
not	edx
mov	ecx, esi
mov	edi, ebx
repne scasb
not	ecx
lea	edx, [edx+ecx-1]
cmp	edx, 63h
ja	short loc_641E4380
mov	ecx, esi
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 20h
mov	ecx, esi
mov	edi, [ebp+cipher]
repne scasb
not	ecx
dec	ecx
mov	[esp+8], ecx	
mov	eax, [ebp+cipher]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strncat
			
mov	eax, [ebp+var_8C]
test	eax, eax
jz	short loc_641E43DC
mov	esi, 0FFFFFFFFh
xor	eax, eax
mov	ecx, esi
mov	edi, [ebp+hmac]
repne scasb
mov	mode_0,	ecx
not	edx
mov	ecx, esi
mov	edi, ebx
repne scasb
not	ecx
lea	edx, [edx+ecx-1]
cmp	edx, 63h
ja	short loc_641E43DC
mov	ecx, esi
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 20h
mov	ecx, esi
mov	edi, [ebp+hmac]
repne scasb
not	ecx
dec	ecx
mov	[esp+8], ecx	
mov	eax, [ebp+hmac]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_strncat
lea	esi, [esi+0]
			
mov	[esp], ebx	
call	_strdup
add	esp, 9Ch
pop	ebx
pop	esi
pop	edi
leave
retn
align 10h
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 68h
jmp	loc_641E432D
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 63h
jmp	loc_641E431B
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 4Dh
jmp	loc_641E430D
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 6Dh
jmp	loc_641E4304
align 10h
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 43h
jmp	loc_641E42FB
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 66h
jmp	loc_641E42F2
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 61h
jmp	loc_641E42E9
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 6Ch
jmp	loc_641E42E0
align 10h
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 74h
jmp	loc_641E42D7
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 69h
jmp	loc_641E42CE
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 6Bh
jmp	loc_641E42C5
align 4
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 73h
jmp	loc_641E42BC
align 10h
mov	ecx, 0FFFFFFFFh
mov	edi, ebx
repne scasb
not	ecx
mov	word ptr [ebx+ecx-1], 70h
jmp	loc_641E42B3
align 4
public _silc_version_to_num
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	ebx, [ebp+version]
test	ebx, ebx
jz	short loc_641E45D4
mov	[esp], version_0 
call	_atoi
mov	esi, eax
mov	dword ptr [esp+4], 2Eh 
mov	[esp], version_0 
call	_strchr
test	eax, eax
jz	short loc_641E45D0
inc	eax
mov	[esp], eax	
call	_atoi
mov	edx, eax
lea	version_0, [ebp+buf]
mov	ecx, 20h
xor	eax, eax
mov	edi, ebx
rep stosb
mov	[esp+10h], min
mov	[esp+0Ch], maj
mov	dword ptr [esp+8], offset off_64265891 
mov	dword ptr [esp+4], 1Fh 
mov	[esp], ebx	
call	_silc_snprintf
mov	[esp], ebx	
call	_atoi
add	esp, 4Ch
pop	ebx
pop	maj
pop	edi
leave
retn
align 10h
xor	edx, edx
jmp	short loc_641E4591
xor	eax, eax
add	esp, 4Ch
pop	version_0
pop	esi
pop	edi
leave
retn
align 10h
public _silc_parse_version_string
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 5Ch
mov	esi, [ebp+version]
mov	dword ptr [esp+4], offset aSilc	
mov	[esp], esi	
call	_strstr
test	eax, eax
jz	short loc_641E460D
mov	ebx, version_0
add	cp, 5
jz	short loc_641E460D
cmp	byte ptr [version_0+5],	0
jnz	short loc_641E4618
			
xor	eax, eax
			
add	esp, 5Ch
pop	ebx
pop	maj
pop	edi
leave
retn
align 4
mov	[esp], cp	
call	_atoi
mov	version_0, eax
mov	dword ptr [esp+4], 2Eh 
mov	[esp], cp	
call	_strchr
test	eax, eax
jz	short loc_641E460D
mov	edx, eax
inc	edx
mov	[ebp+var_44], edx
jz	short loc_641E460D
cmp	byte ptr [eax+1], 0
jz	short loc_641E460D
mov	[esp], edx	
call	_atoi
mov	[ebp+var_48], eax
lea	cp, [ebp+buf]
mov	ecx, 20h
xor	eax, eax
mov	edi, ebx
rep stosb
mov	eax, [ebp+var_48]
mov	[esp+10h], eax
mov	[esp+0Ch], maj
mov	dword ptr [esp+8], offset off_64265891 
mov	dword ptr [esp+4], 1Fh 
mov	[esp], ebx	
call	_silc_snprintf
mov	ecx, [ebp+protocol_version]
test	ecx, ecx
jz	short loc_641E4694
mov	[esp], ebx	
call	_atoi
mov	edx, [ebp+protocol_version]
mov	[edx], eax
mov	ecx, 20h
xor	eax, eax
mov	edi, ebx
rep stosb
mov	eax, [ebp+var_48]
mov	[esp+10h], eax
mov	[esp+0Ch], maj
mov	dword ptr [esp+8], offset aD_D 
mov	dword ptr [esp+4], 1Fh 
mov	[esp], ebx	
call	_silc_snprintf
mov	edx, [ebp+protocol_version_string]
test	edx, edx
jz	short loc_641E46D6
mov	[esp], ebx	
call	_strdup
mov	edx, [ebp+protocol_version_string]
mov	[edx], eax
mov	dword ptr [esp+4], 2Dh 
mov	eax, [ebp+var_44]
mov	[esp], eax	
call	_strchr
test	eax, eax
jz	loc_641E460D
mov	maj, eax
inc	cp
jz	loc_641E460D
cmp	byte ptr [eax+1], 0
jz	loc_641E460D
mov	[esp], cp	
call	_atoi
mov	[ebp+var_3C], eax
mov	dword ptr [esp+4], 2Eh 
mov	[esp], cp	
call	_strchr
test	eax, eax
jz	short loc_641E4732
mov	cp, eax
inc	cp
jz	short loc_641E4732
cmp	byte ptr [eax+1], 0
jnz	loc_641E481B
			
mov	[ebp+min], 0
mov	ecx, 20h
xor	eax, eax
mov	edi, ebx
rep stosb
mov	edx, [ebp+min]
mov	[esp+10h], edx
mov	eax, [ebp+var_3C]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset off_64265891 
mov	dword ptr [esp+4], 1Fh 
mov	[esp], ebx	
call	_silc_snprintf
mov	eax, [ebp+software_version]
test	eax, eax
jz	short loc_641E477E
mov	[esp], ebx	
call	_atoi
mov	edx, [ebp+software_version]
mov	[edx], eax
mov	ecx, 20h
xor	eax, eax
mov	edi, ebx
rep stosb
mov	eax, [ebp+min]
mov	[esp+10h], eax
mov	edx, [ebp+var_3C]
mov	[esp+0Ch], edx
mov	dword ptr [esp+8], offset aD_D 
mov	dword ptr [esp+4], 1Fh 
mov	[esp], ebx	
call	_silc_snprintf
mov	edi, [ebp+software_version_string]
test	edi, edi
jz	short loc_641E47C3
mov	[esp], ebx	
call	_strdup
mov	edx, [ebp+software_version_string]
mov	[edx], eax
mov	dword ptr [esp+4], 2Eh 
mov	[esp], cp	
call	_strchr
test	eax, eax
jz	short loc_641E47FD
mov	edx, eax
inc	cp
jz	short loc_641E4814
cmp	byte ptr [eax+1], 0
jz	short loc_641E4814
mov	ecx, [ebp+vendor_version]
test	ecx, ecx
jz	short loc_641E4814
mov	[esp], cp	
call	_strdup
mov	edx, [ebp+vendor_version]
mov	[edx], eax
mov	al, 1
jmp	loc_641E460F
mov	dword ptr [esp+4], 20h
mov	[esp], cp	
call	_strchr
test	eax, eax
jnz	short loc_641E47D7
lea	esi, [esi+0]
			
mov	al, 1
jmp	loc_641E460F
mov	[esp], cp
call	_atoi
mov	[ebp+min], eax
jmp	loc_641E4739
align 4
public _silc_get_mode_list
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+mode_list]
mov	ebx, [esi+8]
sub	ebx, [esi+4]
shr	ebx, 2
cmp	ebx, [ebp+mode_list_count]
jz	short loc_641E4850
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	mode_list_0
pop	edi
leave
retn
mov	dword ptr [esp+4], 4
mov	[esp], ebx	
call	_silc_calloc
mov	edx, [ebp+list]
mov	[edx], eax
test	ebx, ebx
jz	short loc_641E48D4
mov	ecx, [mode_list_0+4]
mov	[ebp+var_20], ecx
mov	edx, ecx
mov	ecx, [mode_list_0+8]
mov	[ebp+var_24], ecx
xor	edi, edi
mov	[ebp+i], 0
mov	[ebp+var_28], ebx
jmp	short loc_641E4893
align 4
mov	ecx, [ebp+list]
mov	eax, [ecx]
mov	ecx, [mode_list_0+4]
mov	[ebp+var_20], ecx
movzx	ecx, byte ptr [edx+3]
movzx	ebx, byte ptr [edx]
shl	ebx, 18h
or	ecx, ebx
movzx	ebx, byte ptr [edx+1]
shl	ebx, 10h
or	ecx, ebx
movzx	edx, byte ptr [edx+2]
shl	edx, 8
or	ecx, edx
mov	[eax+edi*4], ecx
mov	edx, [ebp+var_20]
mov	eax, [ebp+var_24]
sub	eax, edx
cmp	eax, 3
jbe	short loc_641E48C7
add	edx, 4
mov	[mode_list_0+4], edx
inc	[ebp+i]
mov	edi, [ebp+i]
mov	eax, [ebp+var_28]
cmp	edi, eax
jnz	short loc_641E4888
mov	eax, [mode_list_0]
mov	[mode_list_0+4], eax
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	mode_list_0
pop	edi
leave
retn
align 4
public _silc_channel_name_verify
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	edx, [ebp+identifier]
mov	eax, [ebp+identifier_len]
mov	ecx, [ebp+max_allowed_length]
test	edx, edx
jz	short loc_641E4948
test	identifier_len_0, identifier_len_0
jz	short loc_641E4948
test	max_allowed_length_0, max_allowed_length_0
jz	short loc_641E4903
cmp	identifier_len_0, max_allowed_length_0
ja	short loc_641E4948
mov	dword ptr [esp+1Ch], 7 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset aSilcIdentifi_3 
mov	max_allowed_length_0, [ebp+identifier_encoding]
mov	[esp+8], ecx	
mov	[esp+4], identifier_len_0 
mov	[esp], identifier_0 
call	_silc_stringprep
test	eax, eax
setz	al
leave
retn
align 4
			
xor	identifier_len_0, identifier_len_0
leave
retn
public _silc_channel_name_check
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 34h
mov	eax, [ebp+identifier]
mov	edx, [ebp+identifier_len]
mov	ecx, [ebp+max_allowed_length]
mov	ebx, [ebp+out_len]
test	eax, eax
jnz	short loc_641E496C
			
xor	status,	status
add	esp, 34h
pop	out_len_0
leave
retn
align 4
test	identifier_len_0, identifier_len_0
jz	short loc_641E4963
test	max_allowed_length_0, max_allowed_length_0
jz	short loc_641E4978
cmp	identifier_len_0, max_allowed_length_0
ja	short loc_641E4963
mov	dword ptr [esp+1Ch], 7 
lea	max_allowed_length_0, [ebp+utf8s_len]
mov	[esp+18h], ecx	
lea	ecx, [ebp+utf8s]
mov	[esp+14h], ecx	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset aSilcIdentifi_3 
mov	ecx, [ebp+identifier_encoding]
mov	[esp+8], ecx	
mov	[esp+4], identifier_len_0 
mov	[esp], identifier_0 
call	_silc_stringprep
test	eax, eax
jnz	short loc_641E4963
test	out_len_0, out_len_0
jz	short loc_641E49BE
mov	status,	[ebp+utf8s_len]
mov	[out_len_0], eax
mov	status,	[ebp+utf8s]
jmp	short loc_641E4965
align 4
public _silc_identifier_verify
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	edx, [ebp+identifier]
mov	eax, [ebp+identifier_len]
mov	ecx, [ebp+max_allowed_length]
test	edx, edx
jz	short loc_641E4A28
test	identifier_len_0, identifier_len_0
jz	short loc_641E4A28
test	max_allowed_length_0, max_allowed_length_0
jz	short loc_641E49E3
cmp	identifier_len_0, max_allowed_length_0
ja	short loc_641E4A28
mov	dword ptr [esp+1Ch], 7 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset aSilcIdentifi_4 
mov	max_allowed_length_0, [ebp+identifier_encoding]
mov	[esp+8], ecx	
mov	[esp+4], identifier_len_0 
mov	[esp], identifier_0 
call	_silc_stringprep
test	eax, eax
setz	al
leave
retn
align 4
			
xor	identifier_len_0, identifier_len_0
leave
retn
public _silc_identifier_check
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 34h
mov	eax, [ebp+identifier]
mov	edx, [ebp+identifier_len]
mov	ecx, [ebp+max_allowed_length]
mov	ebx, [ebp+out_len]
test	eax, eax
jnz	short loc_641E4A4C
			
xor	status,	status
add	esp, 34h
pop	out_len_0
leave
retn
align 4
test	identifier_len_0, identifier_len_0
jz	short loc_641E4A43
test	max_allowed_length_0, max_allowed_length_0
jz	short loc_641E4A58
cmp	identifier_len_0, max_allowed_length_0
ja	short loc_641E4A43
mov	dword ptr [esp+1Ch], 7 
lea	max_allowed_length_0, [ebp+utf8s_len]
mov	[esp+18h], ecx	
lea	ecx, [ebp+utf8s]
mov	[esp+14h], ecx	
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset aSilcIdentifi_4 
mov	ecx, [ebp+identifier_encoding]
mov	[esp+8], ecx	
mov	[esp+4], identifier_len_0 
mov	[esp], identifier_0 
call	_silc_stringprep
test	eax, eax
jnz	short loc_641E4A43
test	out_len_0, out_len_0
jz	short loc_641E4A9E
mov	status,	[ebp+utf8s_len]
mov	[out_len_0], eax
mov	status,	[ebp+utf8s]
jmp	short loc_641E4A45
align 4
public _silc_change_private_key_passphrase
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 4Ch
mov	eax, [ebp+old_passphrase]
test	eax, eax
jz	loc_641E4C1C
mov	[esp], old_passphrase_0	
call	_strdup
mov	ebx, eax
test	eax, eax
jz	loc_641E4C1C
			
mov	esi, 0FFFFFFFFh
mov	ecx, esi
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
lea	eax, [ebp+private_key]
mov	[esp+0Ch], eax	
mov	[esp+8], ecx	
mov	[esp+4], ebx	
mov	edx, [ebp+prv_filename]
mov	[esp], edx	
call	_silc_pkcs_load_private_key
test	al, al
jz	loc_641E4BDC
mov	ecx, esi
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	edi, ebx
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	ebx, [ebp+new_passphrase]
test	ebx, ebx
jz	loc_641E4C50
mov	edx, [ebp+new_passphrase]
mov	[esp], edx	
call	_strdup
mov	ebx, eax
test	eax, eax
jz	loc_641E4C50
mov	pass, ds:__imp___iob
mov	[ebp+var_2C], eax
			
call	_silc_rng_alloc
mov	pass2, eax
mov	[esp], eax	
call	_silc_rng_init
mov	ecx, 0FFFFFFFFh
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	[esp+14h], rng	
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], ecx	
mov	[esp+8], ebx	
mov	eax, [ebp+private_key]
mov	[esp+4], eax	
mov	edx, [ebp+prv_filename]
mov	[esp], edx	
call	_silc_pkcs_save_private_key
mov	eax, [ebp+var_2C]
add	eax, 20h
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 14h 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aPassphraseChan	
call	_fwrite
mov	ecx, 0FFFFFFFFh
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	edi, ebx
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	eax, [ebp+private_key]
mov	[esp], eax	
call	_silc_pkcs_private_key_free
mov	[esp], rng	
call	_silc_rng_free
mov	al, 1
add	esp, 4Ch
pop	ebx
pop	rng
pop	pass
leave
retn
align 4
mov	ecx, esi
mov	edi, pass
repne scasb
not	ecx
dec	ecx
mov	edi, ebx
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	eax, [ebp+prv_filename]
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aCouldNotLoadPr 
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp], eax	
call	_fprintf
xor	eax, eax
add	esp, 4Ch
pop	ebx
pop	esi
pop	pass
leave
retn
align 4
			
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	prompt 
call	_silc_get_input
mov	pass, eax
test	eax, eax
jnz	loc_641E4ACA
mov	dword ptr [esp], offset	byte_64265840 
call	_strdup
mov	pass, eax
jmp	loc_641E4ACA
align 10h
			
mov	edx, ds:__imp___iob
mov	[ebp+var_2C], edx
mov	pass, edx
add	eax, 20h
mov	[esp+4], eax	
mov	dword ptr [esp], 0Ah 
call	_fputc
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aNewPassphrase 
call	_silc_get_input
mov	ebx, eax
test	eax, eax
jz	short loc_641E4D04
mov	edi, [ebp+var_2C]
add	edi, 40h
jmp	short loc_641E4CB0
mov	[esp+0Ch], edi
mov	dword ptr [esp+8], 19h 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aPassphrasesDoN	
call	_fwrite
mov	dword ptr [esp], 0Ah 
call	_putchar
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aRetypeNewPassp	
call	_silc_get_input
mov	pass2, eax
test	eax, eax
jz	short loc_641E4CF4
mov	[esp+4], pass2	
mov	[esp], pass	
call	_strcmp
test	eax, eax
jnz	short loc_641E4C90
mov	[esp], pass2	
call	_silc_free
jmp	loc_641E4B3B
align 4
mov	dword ptr [esp], offset	byte_64265840 
call	_strdup
mov	pass2, eax
jmp	short loc_641E4CD6
mov	dword ptr [esp], offset	byte_64265840
call	_strdup
mov	pass, eax
jmp	loc_641E4B3B
align 4
public _silc_load_key_pair
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	eax, [ebp+passphrase]
mov	esi, [ebp+return_public_key]
test	eax, eax
jz	loc_641E4DC8
mov	[esp], passphrase_0 
call	_strdup
mov	ebx, eax
mov	[esp+4], return_public_key_0
mov	eax, [ebp+pub_filename]
mov	[esp], eax	
call	_silc_pkcs_load_public_key
test	al, al
jnz	short loc_641E4D74
test	pass, pass
jz	short loc_641E4D60
mov	ecx, 0FFFFFFFFh
mov	edi, pass
repne scasb
not	ecx
dec	ecx
mov	edi, ebx
rep stosb
mov	[esp], ebx
call	_silc_free
xor	eax, eax
add	esp, 2Ch
pop	ebx
pop	return_public_key_0
pop	pass
leave
retn
align 4
test	pass, pass
jz	short loc_641E4DEC
			
mov	ecx, 0FFFFFFFFh
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	eax, [ebp+return_private_key]
mov	[esp+0Ch], eax	
mov	[esp+8], ecx	
mov	[esp+4], ebx	
mov	eax, [ebp+prv_filename]
mov	[esp], eax	
call	_silc_pkcs_load_private_key
test	al, al
jz	short loc_641E4DD0
mov	ecx, 0FFFFFFFFh
mov	edi, pass
xor	eax, eax
repne scasb
not	ecx
dec	ecx
mov	edi, ebx
rep stosb
mov	[esp], ebx	
call	_silc_free
mov	al, 1
add	esp, 2Ch
pop	ebx
pop	return_public_key_0
pop	pass
leave
retn
xor	ebx, ebx
jmp	loc_641E4D39
align 10h
mov	edx, [return_public_key_0]
mov	[esp], edx	
mov	[ebp+var_1C], al
call	_silc_pkcs_public_key_free
mov	dword ptr [return_public_key_0], 0
mov	al, [ebp+var_1C]
jmp	loc_641E4D50
align 4
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aPrivateKeyPass	
call	_silc_get_input
mov	pass, eax
test	eax, eax
jnz	loc_641E4D78
mov	dword ptr [esp], offset	byte_64265840 
call	_strdup
mov	pass, eax
jmp	loc_641E4D78
align 10h
public _silc_show_public_key
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+public_key]
mov	[esp+4], esi	
mov	dword ptr [esp], 1 
call	_silc_pkcs_get_context
mov	ebx, eax
test	eax, eax
jz	loc_641E4FC0
mov	[esp], public_key_0 
call	_silc_pkcs_public_key_get_len
mov	[ebp+key_len], eax
lea	eax, [ebp+pk_len]
mov	[esp+4], eax	
mov	[esp], public_key_0 
call	_silc_pkcs_public_key_encode
mov	edi, eax
test	eax, eax
jz	loc_641E4FC0
mov	pk, [ebp+pk_len]
mov	[esp+8], eax	
mov	[esp+4], pk	
mov	dword ptr [esp], 0 
call	_silc_hash_fingerprint
mov	[ebp+fingerprint], eax
mov	eax, [ebp+pk_len]
mov	[esp+8], eax	
mov	[esp+4], pk	
mov	dword ptr [esp], 0 
call	_silc_hash_babbleprint
mov	[ebp+babbleprint], eax
mov	[esp], public_key_0 
call	_silc_pkcs_get_name
mov	[esp+4], eax
mov	dword ptr [esp], offset	aAlgorithmS 
call	_printf
mov	public_key_0, [ebp+key_len]
test	esi, esi
jnz	loc_641E4FCC
mov	eax, [silc_pubkey+18h]
test	eax, eax
jz	short loc_641E4ED8
mov	[esp+4], eax
mov	dword ptr [esp], offset	aVersionS 
call	_printf
			
mov	eax, [silc_pubkey+8]
test	eax, eax
jz	short loc_641E4EEF
mov	[esp+4], eax
mov	dword ptr [esp], offset	aRealNameS 
call	_printf
mov	eax, [silc_pubkey]
test	eax, eax
jz	short loc_641E4F05
mov	[esp+4], eax
mov	dword ptr [esp], offset	aUsernameS 
call	_printf
mov	eax, [silc_pubkey+4]
test	eax, eax
jz	short loc_641E4F1C
mov	[esp+4], eax
mov	dword ptr [esp], offset	aHostnameS 
call	_printf
mov	eax, [silc_pubkey+0Ch]
test	eax, eax
jz	short loc_641E4F33
mov	[esp+4], eax
mov	dword ptr [esp], offset	aEmailS	
call	_printf
mov	eax, [silc_pubkey+10h]
test	eax, eax
jz	short loc_641E4F4A
mov	[esp+4], eax
mov	dword ptr [esp], offset	aOrganizationS 
call	_printf
mov	eax, [silc_pubkey+14h]
test	eax, eax
jz	short loc_641E4F61
mov	[esp+4], eax
mov	dword ptr [esp], offset	aCountryS 
call	_printf
mov	eax, [ebp+fingerprint]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aFingerprintSha	
call	_printf
mov	eax, [ebp+babbleprint]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aBabbleprintSha	
call	_printf
mov	eax, ds:__imp___iob
add	eax, 20h
mov	[esp], eax	
call	_fflush
mov	eax, [ebp+fingerprint]
mov	[esp], eax	
call	_silc_free
mov	eax, [ebp+babbleprint]
mov	[esp], eax	
call	_silc_free
mov	[esp], pk	
call	_silc_free
mov	al, 1
add	esp, 3Ch
pop	silc_pubkey
pop	esi
pop	pk
leave
retn
align 10h
			
xor	pk, pk
add	esp, 3Ch
pop	silc_pubkey
pop	public_key_0
pop	pk
leave
retn
align 4
mov	eax, [ebp+key_len]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aKeyLengthBitsD	
call	_printf
mov	eax, [silc_pubkey+18h]
test	eax, eax
jnz	loc_641E4EC8
jmp	loc_641E4ED8
align 10h
public _silc_show_public_key_file
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 34h
mov	ebx, [ebp+pub_filename]
lea	eax, [ebp+public_key]
mov	[esp+4], eax	
mov	[esp], ebx	
call	_silc_pkcs_load_public_key
test	al, al
jz	short loc_641E5040
mov	[esp+4], pub_filename_0
mov	dword ptr [esp], offset	aPublicKeyFileS	
call	_printf
mov	eax, [ebp+public_key]
mov	[esp], eax	
call	_silc_show_public_key
mov	edx, [ebp+public_key]
mov	[esp], edx	
mov	[ebp+var_1C], al
call	_silc_pkcs_public_key_free
mov	al, [ebp+var_1C]
add	esp, 34h
pop	pub_filename_0
leave
retn
align 10h
mov	[esp+8], pub_filename_0
mov	dword ptr [esp+4], offset aCouldNotLoadPu 
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp], eax	
call	_fprintf
xor	eax, eax
add	esp, 34h
pop	pub_filename_0
leave
retn
public _silc_create_key_pair
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 26Ch
mov	ebx, [ebp+pkcs_name]
mov	edi, [ebp+pub_filename]
mov	esi, [ebp+pub_identifier]
mov	al, [ebp+interactive]
mov	[ebp+var_235], al
test	edi, edi
jz	loc_641E5364
mov	[esp], pub_filename_0 
call	_strdup
mov	[ebp+pkfile], eax
mov	ecx, [ebp+prv_filename]
test	ecx, ecx
jz	loc_641E5379
mov	edx, [ebp+prv_filename]
mov	[esp], edx	
call	_strdup
mov	[ebp+prvfile], eax
test	pkcs_name_0, pkcs_name_0
jz	short loc_641E50C2
mov	[esp], pkcs_name_0 
call	_strdup
mov	pkcs_name_0, eax
test	pub_identifier_0, pub_identifier_0
jz	loc_641E5390
mov	[esp], pub_identifier_0	
call	_strdup
mov	[ebp+identifier], eax
mov	edx, [ebp+passphrase]
test	edx, edx
jz	loc_641E5388
mov	eax, [ebp+passphrase]
mov	[esp], eax	
call	_strdup
mov	pub_identifier_0, eax
cmp	[ebp+var_235], 0
jz	short loc_641E5114
test	alg, alg
jz	short loc_641E5108
test	pub_filename_0,	pub_filename_0
jz	short loc_641E5108
mov	eax, [ebp+prv_filename]
test	eax, eax
jnz	short loc_641E511C
			
mov	dword ptr [esp], offset	aNewPairOfKeysW	
call	_puts
test	alg, alg
jz	loc_641E53EC
			
mov	dword ptr [esp+4], 0
mov	[esp], alg	
call	_silc_pkcs_find_algorithm
test	eax, eax
jz	loc_641E56B4
mov	list, [ebp+key_len_bits]
test	edi, edi
jz	loc_641E5220
			
mov	edx, [ebp+identifier]
test	edx, edx
jz	loc_641E55A4
mov	dword ptr [esp+4], offset aUn 
mov	edx, [ebp+identifier]
mov	[esp], edx	
call	_strstr
test	eax, eax
jz	loc_641E53A0
mov	dword ptr [esp+4], offset aHn 
mov	eax, [ebp+identifier]
mov	[esp], eax	
call	_strstr
test	eax, eax
jz	loc_641E53A0
call	_silc_rng_alloc
mov	[ebp+def], eax
mov	[esp], eax	
call	_silc_rng_init
mov	edx, [ebp+def]
mov	[esp], edx	
call	_silc_rng_global_init
mov	ecx, [ebp+pkfile]
test	ecx, ecx
jz	loc_641E548C
			
mov	edx, [ebp+prvfile]
test	edx, edx
jz	loc_641E54B0
			
test	pass, pass
jz	loc_641E54D4
			
cmp	[ebp+var_235], 0
jnz	loc_641E53D8
lea	eax, [ebp+private_key]
mov	[esp+14h], eax	
lea	eax, [ebp+public_key]
mov	[esp+10h], eax	
mov	edx, [ebp+def]
mov	[esp+0Ch], edx	
mov	eax, [ebp+identifier]
mov	[esp+8], eax	
mov	edx, [ebp+key_len_bits]
mov	[esp+4], edx	
mov	[esp], alg	
call	_silc_pkcs_silc_generate_key
test	al, al
jnz	short loc_641E523C
			
xor	eax, eax
			
add	esp, 26Ch
pop	alg
pop	pass
pop	pass2
leave
retn
align 10h
cmp	[ebp+var_235], 0
jnz	loc_641E5448
mov	[ebp+key_len_bits], 800h
jmp	loc_641E513F
align 4
mov	dword ptr [esp+8], 1 
mov	eax, [ebp+public_key]
mov	[esp+4], eax	
mov	eax, [ebp+pkfile]
mov	[esp], eax	
call	_silc_pkcs_save_public_key
test	al, al
jz	short loc_641E5210
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	pass2, pass
repne scasb
not	ecx
dec	ecx
mov	edx, [ebp+def]
mov	[esp+14h], edx	
mov	dword ptr [esp+10h], 0 
mov	[esp+0Ch], ecx	
mov	[esp+8], esi	
mov	eax, [ebp+private_key]
mov	[esp+4], eax	
mov	eax, [ebp+prvfile]
mov	[esp], eax	
call	_silc_pkcs_save_private_key
test	al, al
jz	loc_641E5210
mov	eax, [ebp+return_public_key]
test	eax, eax
jz	loc_641E58C6
mov	eax, [ebp+public_key]
mov	edx, [ebp+return_public_key]
mov	[edx], eax
mov	edi, [ebp+return_private_key]
test	edi, edi
jz	loc_641E58B6
mov	eax, [ebp+private_key]
mov	edx, [ebp+return_private_key]
mov	[edx], eax
mov	eax, [ebp+pkfile]
mov	[esp+4], eax
mov	dword ptr [esp], offset	aPublicKeyHasBe	
call	_printf
mov	edx, [ebp+prvfile]
mov	[esp+4], edx
mov	dword ptr [esp], offset	aPrivateKeyHasB	
call	_printf
cmp	[ebp+var_235], 0
jnz	loc_641E561C
			
mov	eax, [ebp+def]
mov	[esp], eax	
call	_silc_rng_free
mov	[esp], alg	
call	_silc_free
mov	edx, [ebp+pkfile]
mov	[esp], edx	
call	_silc_free
mov	eax, [ebp+prvfile]
mov	[esp], eax	
call	_silc_free
mov	edx, [ebp+identifier]
mov	[esp], edx	
call	_silc_free
xor	eax, eax
mov	ecx, 0FFFFFFFFh
mov	edi, pass
repne scasb
not	ecx
dec	ecx
mov	edi, esi
rep stosb
mov	[esp], esi	
call	_silc_free
mov	al, 1
jmp	loc_641E5212
align 4
mov	[ebp+pkfile], 0
mov	ecx, [ebp+prv_filename]
test	ecx, ecx
jnz	loc_641E50A3
mov	[ebp+prvfile], 0
jmp	loc_641E50B4
xor	pub_identifier_0, pub_identifier_0
jmp	loc_641E50F0
align 10h
mov	[ebp+identifier], 0
jmp	loc_641E50D8
align 10h
			
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 40h 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aInvalidPublicK	
call	_fwrite
xor	eax, eax
add	esp, 26Ch
pop	alg
pop	pass
pop	length
leave
retn
align 4
mov	dword ptr [esp], offset	aGeneratingTheK	
call	_puts
jmp	loc_641E51DB
align 4
cmp	[ebp+var_235], 0
jz	loc_641E56D8
mov	dword ptr [esp+4], 0
mov	dword ptr [esp], offset	aPkcsNameLToLis	
call	_silc_get_input
mov	alg, eax
test	eax, eax
jz	loc_641E5590
mov	al, [alg]
cmp	al, 6Ch
jz	short loc_641E5425
cmp	al, 4Ch
jnz	loc_641E511C
call	_silc_pkcs_get_supported
mov	list, eax
mov	[esp], eax	
call	_puts
mov	[esp], list	
call	_silc_free
mov	[esp], alg	
call	_silc_free
jmp	short loc_641E53F9
align 4
mov	dword ptr [esp+4], 0 
mov	dword ptr [esp], offset	aKeyLengthInKey	
call	_silc_get_input
mov	edi, eax
test	eax, eax
jz	loc_641E56EC
mov	[esp], length	
call	_atoi
mov	[ebp+key_len_bits], eax
mov	[esp], length	
call	_silc_free
mov	ecx, [ebp+key_len_bits]
test	ecx, ecx
jnz	loc_641E513F
jmp	loc_641E522D
align 4
cmp	[ebp+var_235], 0
jnz	loc_641E575C
mov	dword ptr [esp], offset	aPublic_key_pub	
call	_strdup
mov	[ebp+pkfile], eax
jmp	loc_641E51B8
cmp	[ebp+var_235], 0
jnz	loc_641E5704
mov	dword ptr [esp], offset	aPrivate_key_pr	
call	_strdup
mov	[ebp+prvfile], eax
jmp	loc_641E51C6
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[ebp+var_22C], eax
jmp	short loc_641E5532
			
mov	[esp+4], pass2
mov	[esp], pass	
call	_strcmp
mov	[esp], pass2	
mov	[ebp+prompt], eax
call	_silc_free
mov	eax, [ebp+prompt]
test	eax, eax
jz	loc_641E51CE
mov	eax, [ebp+var_22C]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 1Bh 
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aPassphrasesD_0	
call	_fwrite
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aPrivateKeyPass	
call	_silc_get_input
mov	pass, eax
test	eax, eax
jz	loc_641E5608
mov	dword ptr [esp], 0Ah 
call	_putchar
mov	dword ptr [esp+4], 1 
mov	dword ptr [esp], offset	aRetypePrivateK	
call	_silc_get_input
mov	pass2, eax
test	eax, eax
jnz	loc_641E54E4
mov	dword ptr [esp], offset	byte_64265840 
call	_strdup
mov	pass2, eax
jmp	loc_641E54E4
align 10h
mov	dword ptr [esp], offset	aRsa 
call	_strdup
mov	alg, eax
jmp	loc_641E5417
align 4
call	_silc_get_real_name
mov	[ebp+identifier], eax
call	_silc_net_localhost
mov	length,	eax
test	eax, eax
jnz	loc_641E57E0
mov	[ebp+def], 0
cmp	[ebp+var_235], 0
jnz	short loc_641E5644
mov	edi, [ebp+def]
test	edi, edi
jz	loc_641E5896
mov	edx, [ebp+def]
mov	[esp], edx	
call	_strdup
mov	[ebp+identifier], eax
mov	identifier, [ebp+def]
mov	[esp], eax	
call	_silc_free
jmp	loc_641E514D
align 4
mov	dword ptr [esp], offset	byte_64265840 
call	_strdup
mov	pass, eax
jmp	loc_641E51CE
align 4
mov	dword ptr [esp], offset	aPressEnterToCo	
call	_puts
mov	eax, ds:__imp___iob
mov	edx, [eax+4]
dec	edx
mov	[eax+4], edx
test	edx, edx
js	loc_641E58F9
inc	dword ptr [eax]
jmp	loc_641E5301
align 4
lea	edx, [ebp+line]
mov	[ebp+var_24C], edx
mov	ecx, 100h
xor	eax, eax
mov	edi, edx
rep stosb
mov	ecx, [ebp+def]
test	ecx, ecx
jz	loc_641E58D6
mov	eax, [ebp+def]
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aIdentifierS 
mov	dword ptr [esp+4], 100h	
mov	[esp], edx	
call	_silc_snprintf
			
mov	dword ptr [esp+4], 0
lea	edx, [ebp+line]
mov	[esp], edx	
call	_silc_get_input
test	eax, eax
jz	loc_641E57B4
mov	[ebp+identifier], identifier
jmp	loc_641E55F3
mov	[esp+8], alg
mov	dword ptr [esp+4], offset aUnknownPkcsAlg 
mov	eax, ds:__imp___iob
add	eax, 40h
mov	[esp], eax	
call	_fprintf
xor	eax, eax
jmp	loc_641E5212
align 4
mov	dword ptr [esp], offset	aRsa 
call	_strdup
mov	alg, eax
jmp	loc_641E511C
align 4
mov	dword ptr [esp], 0 
call	_silc_free
mov	[ebp+key_len_bits], 800h
jmp	loc_641E513F
lea	edx, [ebp+line]
mov	ecx, 100h
xor	eax, eax
mov	length,	edx
rep stosb
mov	dword ptr [esp+8], offset aPrivateKeyFile 
mov	dword ptr [esp+4], 100h	
mov	[esp], edx	
mov	[ebp+prompt], edx
call	_silc_snprintf
mov	dword ptr [esp+4], 0 
mov	edx, [ebp+prompt]
mov	[esp], edx	
call	_silc_get_input
mov	[ebp+prvfile], eax
test	eax, eax
jnz	loc_641E51C6
jmp	loc_641E54BD
lea	edx, [ebp+line]
mov	ecx, 100h
xor	eax, eax
mov	length,	edx
rep stosb
mov	dword ptr [esp+8], offset aPublicKeyFilen 
mov	dword ptr [esp+4], 100h	
mov	[esp], edx	
mov	[ebp+prompt], edx
call	_silc_snprintf
mov	dword ptr [esp+4], 0 
mov	edx, [ebp+prompt]
mov	[esp], edx	
call	_silc_get_input
mov	[ebp+pkfile], eax
test	eax, eax
jnz	loc_641E51B8
jmp	loc_641E5499
mov	identifier, [ebp+def]
test	eax, eax
jz	loc_641E568B
mov	eax, [ebp+def]
mov	[esp], eax	
call	_strdup
test	eax, eax
jz	loc_641E568B
jmp	loc_641E56A9
align 10h
call	_silc_get_username
mov	[ebp+username],	eax
test	eax, eax
jz	loc_641E55BE
mov	[esp+10h], edi
mov	[esp+0Ch], eax
mov	dword ptr [esp+8], offset aS@S 
mov	dword ptr [esp+4], 100h	
lea	edx, [ebp+str]
mov	[esp], edx	
mov	[ebp+prompt], edx
call	_silc_snprintf
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	edx, [ebp+prompt]
mov	[esp+0Ch], edx	
mov	edx, [ebp+identifier]
mov	[esp+8], edx	
mov	[esp+4], edi	
mov	eax, [ebp+username]
mov	[esp], eax	
call	_silc_pkcs_silc_encode_identifier
mov	[ebp+def], eax
mov	eax, [ebp+identifier]
test	eax, eax
jz	short loc_641E587B
mov	edx, [ebp+identifier]
mov	[esp], edx	
call	_silc_free
mov	[esp], edi	
call	_silc_free
mov	eax, [ebp+username]
mov	[esp], eax	
call	_silc_free
jmp	loc_641E55C8
call	__errno
mov	eax, [eax]
mov	[esp], eax	
call	_strerror
mov	[esp+8], eax
mov	dword ptr [esp+4], offset aCouldNotCrea_1 
jmp	loc_641E56C0
mov	eax, [ebp+private_key]
mov	[esp], eax	
call	_silc_pkcs_private_key_free
jmp	loc_641E52C8
mov	eax, [ebp+public_key]
mov	[esp], eax	
call	_silc_pkcs_public_key_free
jmp	loc_641E52B5
mov	dword ptr [esp+8], offset aIdentifierEg_U 
mov	dword ptr [esp+4], 100h	
lea	eax, [ebp+line]
mov	[esp], eax	
call	_silc_snprintf
jmp	loc_641E568B
mov	[esp], eax	
call	__filbuf
jmp	loc_641E5301
align 4
			
push	ebp
mov	ebp, esp
push	esi
push	ebx
mov	edx, [ebp+context]
mov	eax, [ebp+user_context]
test	edx, edx
jz	short loc_641E593B
mov	ecx, [user_context_0]
test	ecx, ecx
jz	short loc_641E594C
movzx	ecx, word ptr [user_context_0+0Ch]
mov	ebx, [user_context_0+4]
mov	[ebx+ecx], context_0
test	byte ptr [user_context_0+10h], 1
jnz	short loc_641E5940
mov	[user_context_0+4], context_0
mov	dword ptr [context_0+ecx], 0
add	dword ptr [user_context_0+10h],	4
pop	ebx
pop	esi
leave
retn
align 10h
movzx	ebx, word ptr [user_context_0+0Eh]
mov	esi, [user_context_0+4]
mov	[context_0+ebx], esi
jmp	short loc_641E592D
mov	[user_context_0], context_0
movzx	ecx, word ptr [user_context_0+0Ch]
jmp	short loc_641E5927
public _silc_idcache_find_by_name_one
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+cache]
test	eax, eax
jz	short locret_641E5982
mov	edx, [ebp+ret]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	edx, [ebp+name]
mov	[esp+4], edx	
mov	cache_0, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_find
leave
retn
public _silc_idcache_find_by_context
push	ebp
mov	ebp, esp
sub	esp, 18h
mov	eax, [ebp+cache]
test	eax, eax
jz	short locret_641E59B2
mov	edx, [ebp+ret]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	edx, [ebp+context]
mov	[esp+4], edx	
mov	cache_0, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_find
leave
retn
public _silc_idcache_find_by_name
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+cache]
mov	ebx, [ebp+ret_list]
test	esi, esi
jz	short loc_641E59D9
test	ret_list_0, ret_list_0
jz	short loc_641E59D9
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_count
test	eax, eax
jnz	short loc_641E59E4
			
xor	eax, eax
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
align 4
mov	eax, [ret_list_0+10h]
and	eax, 3
mov	[ret_list_0+10h], eax
mov	word ptr [ret_list_0+0Ch], 0
mov	word ptr [ret_list_0+0Eh], 0
mov	byte ptr [ret_list_0+10h], 0
mov	dword ptr [ret_list_0+8], 0
mov	dword ptr [ret_list_0+4], 0
mov	dword ptr [ret_list_0],	0
mov	[esp+0Ch], ret_list_0 
mov	dword ptr [esp+8], offset _silc_idcache_get_all_foreach	
mov	eax, [ebp+name]
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_find_foreach
test	dword ptr [ret_list_0+10h], 0FFFFFFFCh
setnz	al
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
public _silc_idcache_find_by_id
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+cache]
mov	ebx, [ebp+ret_list]
test	esi, esi
jz	short loc_641E5A64
test	ret_list_0, ret_list_0
jz	short loc_641E5A64
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_count
test	eax, eax
jnz	short loc_641E5A70
			
xor	eax, eax
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
align 10h
mov	eax, [ret_list_0+10h]
and	eax, 3
mov	[ret_list_0+10h], eax
mov	word ptr [ret_list_0+0Ch], 0
mov	word ptr [ret_list_0+0Eh], 0
mov	byte ptr [ret_list_0+10h], 0
mov	dword ptr [ret_list_0+8], 0
mov	dword ptr [ret_list_0+4], 0
mov	dword ptr [ret_list_0],	0
mov	[esp+0Ch], ret_list_0 
mov	dword ptr [esp+8], offset _silc_idcache_get_all_foreach	
mov	eax, [ebp+id]
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_find_foreach
test	dword ptr [ret_list_0+10h], 0FFFFFFFCh
setnz	al
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
align 4
public _silc_idcache_find_by_id_one
push	ebp
mov	ebp, esp
sub	esp, 28h
mov	eax, [ebp+cache]
test	eax, eax
jz	short locret_641E5B19
movzx	edx, word ptr [cache_0+14h]
mov	[esp+1Ch], edx	
mov	dword ptr [esp+18h], offset _silc_hash_id_compare_full 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	edx, [ebp+ret]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	edx, [ebp+id]
mov	[esp+4], edx	
mov	cache_0, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_find_ext
leave
retn
align 4
public _silc_idcache_get_all
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 10h
mov	esi, [ebp+cache]
mov	ebx, [ebp+ret_list]
test	esi, esi
jz	short loc_641E5B40
test	ret_list_0, ret_list_0
jz	short loc_641E5B40
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_count
test	eax, eax
jnz	short loc_641E5B4C
			
xor	eax, eax
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
align 4
mov	eax, [ret_list_0+10h]
and	eax, 3
mov	[ret_list_0+10h], eax
mov	word ptr [ret_list_0+0Ch], 0
mov	word ptr [ret_list_0+0Eh], 0
mov	byte ptr [ret_list_0+10h], 0
mov	dword ptr [ret_list_0+8], 0
mov	dword ptr [ret_list_0+4], 0
mov	dword ptr [ret_list_0],	0
mov	[esp+8], ret_list_0 
mov	dword ptr [esp+4], offset _silc_idcache_get_all_foreach	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_foreach
test	dword ptr [ret_list_0+10h], 0FFFFFFFCh
setnz	al
add	esp, 10h
pop	ret_list_0
pop	cache_0
leave
retn
public _silc_idcache_move
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+from_cache]
mov	edi, [ebp+to_cache]
mov	ebx, [ebp+entry]
test	esi, esi
jz	short loc_641E5BF9
test	to_cache_0, to_cache_0
jz	short loc_641E5BF9
test	entry_0, entry_0
jz	short loc_641E5BF9
mov	eax, [from_cache_0+14h]
cmp	ax, [to_cache_0+14h]
jnz	short loc_641E5C04
mov	eax, [entry_0+0Ch]
test	eax, eax
jz	loc_641E5D04
lea	edx, [ebp+c]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	eax, [from_cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jz	short loc_641E5BF9
			
cmp	entry_0, [ebp+c]
jz	short loc_641E5C2C
			
xor	eax, eax
			
add	esp, 2Ch
pop	entry_0
pop	from_cache_0
pop	to_cache_0
leave
retn
align 4
mov	dword ptr [esp], offset	aIncompatibleId	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
add	esp, 2Ch
pop	entry_0
pop	from_cache_0
pop	to_cache_0
leave
retn
align 4
mov	eax, [entry_0+4]
test	eax, eax
jz	short loc_641E5C52
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	[esp], to_cache_0 
call	_silc_idcache_find_by_id_one
test	al, al
jnz	loc_641E5D6D
mov	entry_0, [ebp+c]
mov	eax, [entry_0+8]
test	eax, eax
jz	short loc_641E5C6F
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [from_cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	entry_0, [ebp+c]
mov	eax, [entry_0+0Ch]
test	eax, eax
jz	short loc_641E5C8C
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [from_cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	entry_0, [ebp+c]
mov	eax, [entry_0+4]
test	eax, eax
jz	short loc_641E5CC4
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [from_cache_0]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	entry_0, [ebp+c]
mov	eax, [entry_0+4]
test	eax, eax
jz	short loc_641E5CC4
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [to_cache_0]
mov	[esp], eax	
call	_silc_hash_table_add
mov	entry_0, [ebp+c]
			
mov	eax, [entry_0+8]
test	eax, eax
jz	short loc_641E5CE1
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [to_cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_add
mov	entry_0, [ebp+c]
mov	eax, [entry_0+0Ch]
test	eax, eax
jz	short loc_641E5CFB
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [to_cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_add
mov	al, 1
jmp	loc_641E5BFB
align 4
mov	eax, [entry_0+8]
test	eax, eax
jz	short loc_641E5D38
lea	edx, [ebp+c]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	eax, [from_cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	loc_641E5BF4
jmp	loc_641E5BF9
align 4
mov	eax, [entry_0+4]
test	eax, eax
jz	loc_641E5BF9
lea	edx, [ebp+c]
mov	[esp+0Ch], edx	
mov	dword ptr [esp+8], 0 
mov	[esp+4], eax	
mov	eax, [from_cache_0]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	loc_641E5BF4
jmp	loc_641E5BF9
movzx	eax, word ptr [to_cache_0+14h]
mov	[esp+4], eax	
mov	eax, [ebp+c]
mov	eax, [eax+4]
mov	[esp], eax	
call	_silc_id_render
mov	[esp+4], eax
mov	dword ptr [esp], offset	aAttemptedToAdd	
call	_silc_format
mov	[esp+4], eax	
mov	dword ptr [esp], 3 
call	_silc_log_output
xor	eax, eax
jmp	loc_641E5BFB
align 4
public _silc_idcache_update
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	ebx, [ebp+cache]
mov	edx, [ebp+entry]
mov	al, [ebp+free_old_name]
mov	[ebp+var_19], al
test	ebx, ebx
jz	loc_641E5EA0
mov	edi, [ebp+new_id]
test	edi, edi
jz	short loc_641E5E41
mov	eax, [entry_0+4]
test	eax, eax
jz	loc_641E5EAC
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
mov	[ebp+context], entry_0
call	_silc_hash_table_del_by_context
test	al, al
mov	edx, [ebp+context]
jz	loc_641E5EA0
mov	eax, [cache_0+14h]
cmp	ax, 2
jz	loc_641E5EB8
cmp	ax, 1
jz	loc_641E5EE4
cmp	ax, 3
jz	loc_641E5ED0
mov	eax, [edx+4]
mov	[ebp+new_id], eax
mov	[esp+8], entry_0
mov	eax, [ebp+new_id]
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
mov	[ebp+context], entry_0
call	_silc_hash_table_add
test	al, al
mov	edx, [ebp+context]
jz	short loc_641E5EA0
mov	esi, [ebp+new_name]
test	esi, esi
jz	loc_641E5F14
mov	eax, [edx+8]
test	eax, eax
jz	short loc_641E5E70
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
mov	[ebp+context], entry_0
call	_silc_hash_table_del_by_context
test	al, al
mov	edx, [ebp+context]
jz	short loc_641E5EA0
cmp	[ebp+var_19], 0
jnz	loc_641E5EFC
mov	eax, [ebp+new_name]
mov	[edx+8], eax
mov	[esp+8], edx	
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
setnz	al
add	esp, 2Ch
pop	cache_0
pop	esi
pop	edi
leave
retn
			
xor	eax, eax
add	esp, 2Ch
pop	cache_0
pop	esi
pop	edi
leave
retn
align 4
mov	eax, [ebp+new_id]
mov	[entry_0+4], eax
jmp	loc_641E5E22
align 4
mov	eax, [edx+4]
mov	ecx, 1Dh
mov	edi, eax
mov	esi, [ebp+new_id]
rep movsb
mov	eax, [cache_0+14h]
jmp	loc_641E5E08
align 10h
mov	eax, [edx+4]
mov	ecx, 16h
mov	edi, eax
mov	new_id_0, [ebp+new_id]
rep movsb
jmp	loc_641E5E1C
mov	eax, [edx+4]
mov	ecx, 16h
mov	edi, eax
mov	esi, [ebp+new_id]
rep movsb
mov	eax, [cache_0+14h]
jmp	loc_641E5E12
align 4
mov	eax, [edx+8]
mov	[esp], eax	
mov	[ebp+context], edx
call	_silc_free
mov	edx, [ebp+context]
jmp	loc_641E5E7A
align 4
mov	al, 1
jmp	short loc_641E5EA2
public _silc_idcache_update_by_context
push	ebp
mov	ebp, esp
push	esi
push	ebx
sub	esp, 30h
mov	ebx, [ebp+cache]
movzx	esi, [ebp+free_old_name]
test	ebx, ebx
jz	short loc_641E5F50
lea	eax, [ebp+c]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+context]
mov	[esp+4], eax	
mov	eax, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	short loc_641E5F5C
xor	eax, eax
add	esp, 30h
pop	cache_0
pop	free_old_name_0
leave
retn
align 4
and	free_old_name_0, 0FFh
mov	[esp+10h], free_old_name_0 
mov	eax, [ebp+new_name]
mov	[esp+0Ch], eax	
mov	eax, [ebp+new_id]
mov	[esp+8], eax	
mov	eax, [ebp+c]
mov	[esp+4], eax	
mov	[esp], cache_0	
call	_silc_idcache_update
add	esp, 30h
pop	cache_0
pop	free_old_name_0
leave
retn
align 4
public _silc_idcache_del
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 1Ch
mov	edi, [ebp+cache]
mov	esi, [ebp+entry]
test	edi, edi
jz	loc_641E6040
mov	eax, [entry_0+8]
test	eax, eax
jz	loc_641E603C
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	bl, al
mov	eax, [entry_0+0Ch]
test	eax, eax
jz	short loc_641E5FDF
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	bl, al
mov	eax, [entry_0+4]
test	eax, eax
jz	short loc_641E5FFA
mov	[esp+8], entry_0 
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	bl, al
test	bl, bl
jz	short loc_641E602F
mov	eax, [cache_0+0Ch]
test	eax, eax
jz	short loc_641E601C
mov	edx, [ebp+app_context]
mov	[esp+0Ch], edx
mov	edx, [cache_0+10h]
mov	[esp+8], edx
mov	[esp+4], entry_0
mov	[esp], cache_0
call	eax
mov	ecx, 10h
mov	al, 46h
mov	cache_0, entry_0
rep stosb
mov	[esp], esi	
call	_silc_free
mov	al, bl
add	esp, 1Ch
pop	ret
pop	entry_0
pop	edi
leave
retn
align 4
xor	ebx, ebx
jmp	short loc_641E5FC3
xor	ebx, ebx
mov	al, bl
add	esp, 1Ch
pop	ret
pop	entry_0
pop	cache_0
leave
retn
public _silc_idcache_del_by_context
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+cache]
test	ebx, ebx
jz	short loc_641E607F
lea	eax, [ebp+c]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+context]
mov	[esp+4], eax	
mov	eax, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	short loc_641E6088
xor	eax, eax
add	esp, 24h
pop	cache_0
leave
retn
align 4
mov	eax, [ebp+app_context]
mov	[esp+8], eax	
mov	eax, [ebp+c]
mov	[esp+4], eax	
mov	[esp], cache_0	
call	_silc_idcache_del
add	esp, 24h
pop	cache_0
leave
retn
public _silc_idcache_del_by_id
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 24h
mov	ebx, [ebp+cache]
test	ebx, ebx
jz	short loc_641E60D6
lea	eax, [ebp+c]
mov	[esp+0Ch], eax	
mov	dword ptr [esp+8], 0 
mov	eax, [ebp+id]
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_find
test	al, al
jnz	short loc_641E60E0
xor	eax, eax
add	esp, 24h
pop	cache_0
leave
retn
align 10h
mov	eax, [ebp+app_context]
mov	[esp+8], eax	
mov	eax, [ebp+c]
mov	[esp+4], eax	
mov	[esp], cache_0	
call	_silc_idcache_del
add	esp, 24h
pop	cache_0
leave
retn
public _silc_idcache_free
push	ebp
mov	ebp, esp
push	ebx
sub	esp, 14h
mov	ebx, [ebp+cache]
mov	eax, [ebx]
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [ebx+4]
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [ebx+8]
mov	[esp], eax	
call	_silc_hash_table_free
mov	[ebp+cache], ebx
add	esp, 14h
pop	ebx
leave
jmp	_silc_free
align 4
public _silc_idcache_alloc
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 3Ch
mov	esi, [ebp+count]
mov	edi, [ebp+id_type]
mov	[ebp+var_1A], di
mov	dword ptr [esp+4], 18h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641E624A
movzx	cache, [ebp+var_1A]
mov	dword ptr [esp+1Ch], 1 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	[esp+10h], eax	
mov	dword ptr [esp+0Ch], offset _silc_hash_id_compare 
mov	[esp+8], eax	
mov	dword ptr [esp+4], offset _silc_hash_id	
mov	[esp], count_0	
call	_silc_hash_table_alloc
mov	[cache], eax
mov	dword ptr [esp+1Ch], 1 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], offset _silc_hash_utf8_compare 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_utf8_string 
mov	[esp], count_0	
call	_silc_hash_table_alloc
mov	[cache+4], eax
mov	dword ptr [esp+1Ch], 1 
mov	dword ptr [esp+18h], 0 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	dword ptr [esp+4], offset _silc_hash_ptr 
mov	[esp], count_0	
call	_silc_hash_table_alloc
mov	[cache+8], eax
mov	edx, [ebp+destructor]
mov	[cache+0Ch], edx
mov	edx, [ebp+destructor_context]
mov	[cache+10h], edx
mov	[cache+14h], di
mov	edx, [cache]
test	edx, edx
jz	short loc_641E625C
mov	ecx, [cache+4]
test	ecx, ecx
jz	short loc_641E6254
test	eax, eax
jz	short loc_641E6254
			
mov	eax, cache
add	esp, 3Ch
pop	cache
pop	count_0
pop	id_type_0
leave
retn
			
mov	[esp], edx
call	_silc_hash_table_free
mov	eax, [cache+4]
test	eax, eax
jz	short loc_641E626B
mov	[esp], eax	
call	_silc_hash_table_free
mov	eax, [cache+8]
test	eax, eax
jz	short loc_641E627A
mov	[esp], eax	
call	_silc_hash_table_free
mov	[esp], cache	
call	_silc_free
xor	cache, cache
jmp	short loc_641E624A
align 4
public _silc_idcache_add
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
sub	esp, 2Ch
mov	esi, [ebp+cache]
mov	edi, [ebp+id]
test	esi, esi
jz	loc_641E63F3
mov	ecx, [ebp+name]
test	ecx, ecx
jnz	short loc_641E62AE
test	id_0, id_0
jz	loc_641E63E8
			
mov	dword ptr [esp+4], 10h 
mov	dword ptr [esp], 1 
call	_silc_calloc
mov	ebx, eax
test	eax, eax
jz	loc_641E6379
mov	[c+4], id_0
mov	c, [ebp+name]
mov	[c+8], eax
mov	eax, [ebp+context]
mov	[c+0Ch], eax
test	id_0, id_0
jz	short loc_641E6337
movzx	eax, word ptr [cache_0+14h]
mov	[esp+1Ch], eax	
mov	dword ptr [esp+18h], offset _silc_hash_id_compare_full 
mov	dword ptr [esp+14h], 0 
mov	dword ptr [esp+10h], 0 
mov	dword ptr [esp+0Ch], 0 
mov	dword ptr [esp+8], 0 
mov	[esp+4], id_0	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_find_ext
test	al, al
jnz	short err
mov	[esp+8], c	
mov	[esp+4], id_0	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
jz	short err
mov	eax, [ebp+name]
test	eax, eax
jz	short loc_641E6358
mov	[esp+8], c	
mov	eax, [ebp+name]
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
jz	short err
mov	id_0, [ebp+context]
test	edi, edi
jz	short loc_641E6379
mov	[esp+8], c	
mov	eax, [ebp+context]
mov	[esp+4], eax	
mov	eax, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_add
test	al, al
jz	short err
			
mov	eax, c
add	esp, 2Ch
pop	c
pop	cache_0
pop	edi
leave
retn
align 4
			
mov	eax, [c+8]
test	eax, eax
jz	short loc_641E639E
mov	[esp+8], c	
mov	[esp+4], eax	
mov	eax, [cache_0+4]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	eax, [c+0Ch]
test	eax, eax
jz	short loc_641E63B8
mov	[esp+8], c	
mov	[esp+4], eax	
mov	eax, [cache_0+8]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	eax, [c+4]
test	eax, eax
jz	short loc_641E63D1
mov	[esp+8], c	
mov	[esp+4], eax	
mov	eax, [cache_0]
mov	[esp], eax	
call	_silc_hash_table_del_by_context
mov	[esp], c	
call	_silc_free
xor	c, c
mov	eax, c
add	esp, 2Ch
pop	c
pop	cache_0
pop	edi
leave
retn
align 4
mov	edx, [ebp+context]
test	edx, edx
jnz	loc_641E62AE
xor	ebx, ebx
mov	eax, c
add	esp, 2Ch
pop	c
pop	cache_0
pop	id_0
leave
retn
align 10h
public _silc_aes_cbc_set_iv
retn
align 4
public _silc_aes_cbc_context_len
mov	eax, 104h
retn
align 4
public _silc_aes_ctr_set_iv
mov	eax, [esp+context]
mov	byte ptr [eax+0F2h], 0
retn
public _silc_aes_ctr_context_len
mov	eax, 104h
retn
align 10h
public _aes_encrypt_key128
			
push	ebp
push	edi
push	esi
push	ebx
mov	edx, [esp+10h+key]
mov	eax, [esp+10h+cx_0]
movzx	esi, byte ptr [edx+3]
shl	esi, 18h
movzx	ecx, byte ptr [edx+2]
shl	ecx, 10h
or	esi, ecx
movzx	ecx, byte ptr [edx]
or	esi, ecx
movzx	ecx, byte ptr [edx+1]
shl	ecx, 8
or	esi, ecx
mov	[eax], esi
movzx	ebx, byte ptr [edx+7]
shl	ebx, 18h
movzx	ecx, byte ptr [edx+6]
shl	ecx, 10h
or	ebx, ecx
movzx	ecx, byte ptr [edx+4]
or	ebx, ecx
movzx	ecx, byte ptr [edx+5]
shl	ecx, 8
or	ebx, ecx
mov	[eax+4], ebx
movzx	edi, byte ptr [edx+0Bh]
shl	edi, 18h
movzx	ecx, byte ptr [edx+0Ah]
shl	ecx, 10h
or	ecx, edi
movzx	edi, byte ptr [edx+8]
or	ecx, edi
movzx	edi, byte ptr [edx+9]
shl	edi, 8
or	ecx, edi
mov	[eax+8], ecx
movzx	ebp, byte ptr [edx+0Fh]
shl	ebp, 18h
movzx	edi, byte ptr [edx+0Eh]
shl	edi, 10h
or	ebp, edi
movzx	edi, byte ptr [edx+0Ch]
or	ebp, edi
movzx	edi, byte ptr [edx+0Dh]
shl	edi, 8
mov	edx, ebp
or	edx, edi
mov	[eax+0Ch], edx
xor	esi, 1
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+10h], esi
xor	ebx, esi
mov	[eax+14h], ebx
xor	ecx, ebx
mov	[eax+18h], ecx
xor	edx, ecx
mov	[eax+1Ch], edx
xor	esi, 2
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+20h], esi
xor	ebx, esi
mov	[eax+24h], ebx
xor	ecx, ebx
mov	[eax+28h], ecx
xor	edx, ecx
mov	[eax+2Ch], edx
xor	esi, 4
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+30h], esi
xor	ebx, esi
mov	[eax+34h], ebx
xor	ecx, ebx
mov	[eax+38h], ecx
xor	edx, ecx
mov	[eax+3Ch], edx
xor	esi, 8
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+40h], esi
xor	ebx, esi
mov	[eax+44h], ebx
xor	ecx, ebx
mov	[eax+48h], ecx
xor	edx, ecx
mov	[eax+4Ch], edx
xor	esi, 10h
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+50h], esi
xor	ebx, esi
mov	[eax+54h], ebx
xor	ecx, ebx
mov	[eax+58h], ecx
xor	edx, ecx
mov	[eax+5Ch], edx
xor	esi, 20h
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+60h], esi
xor	ebx, esi
mov	[eax+64h], ebx
xor	ecx, ebx
mov	[eax+68h], ecx
xor	edx, ecx
mov	[eax+6Ch], edx
xor	esi, 40h
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+70h], esi
xor	ebx, esi
mov	[eax+74h], ebx
xor	ecx, ebx
mov	[eax+78h], ecx
xor	edx, ecx
mov	[eax+7Ch], edx
xor	esi, 80h
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+80h], esi
xor	ebx, esi
mov	[eax+84h], ebx
xor	ecx, ebx
mov	[eax+88h], ecx
xor	edx, ecx
mov	[eax+8Ch], edx
xor	esi, 1Bh
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+90h], esi
xor	ebx, esi
mov	[eax+94h], ebx
xor	ecx, ebx
mov	[eax+98h], ecx
xor	edx, ecx
mov	[eax+9Ch], edx
xor	esi, 36h
movzx	edi, dl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	esi, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	esi, ds:(_t_fl+800h)[edi*4]
mov	[eax+0A0h], esi
xor	ebx, esi
mov	[eax+0A4h], ebx
xor	ecx, ebx
mov	[eax+0A8h], ecx
xor	ecx, edx
mov	[eax+0ACh], ecx
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0A0h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
align 4
public _aes_encrypt_key192
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 8
mov	edx, [esp+18h+key]
mov	eax, [esp+18h+cx_0]
movzx	ebp, byte ptr [edx+3]
shl	ebp, 18h
movzx	ecx, byte ptr [edx+2]
shl	ecx, 10h
or	ebp, ecx
movzx	ecx, byte ptr [edx]
or	ebp, ecx
movzx	ecx, byte ptr [edx+1]
shl	ecx, 8
or	ebp, ecx
mov	[eax], ebp
movzx	esi, byte ptr [edx+7]
shl	esi, 18h
movzx	ecx, byte ptr [edx+6]
shl	ecx, 10h
or	esi, ecx
movzx	ecx, byte ptr [edx+4]
or	esi, ecx
movzx	ecx, byte ptr [edx+5]
shl	ecx, 8
or	esi, ecx
mov	[eax+4], esi
movzx	ebx, byte ptr [edx+0Bh]
shl	ebx, 18h
movzx	ecx, byte ptr [edx+0Ah]
shl	ecx, 10h
or	ebx, ecx
movzx	ecx, byte ptr [edx+8]
or	ebx, ecx
movzx	ecx, byte ptr [edx+9]
shl	ecx, 8
or	ebx, ecx
mov	[eax+8], ebx
movzx	edi, byte ptr [edx+0Fh]
shl	edi, 18h
movzx	ecx, byte ptr [edx+0Eh]
shl	ecx, 10h
or	ecx, edi
movzx	edi, byte ptr [edx+0Ch]
or	ecx, edi
movzx	edi, byte ptr [edx+0Dh]
shl	edi, 8
or	ecx, edi
mov	[esp+18h+var_14], ecx
mov	[eax+0Ch], ecx
movzx	edi, byte ptr [edx+13h]
shl	edi, 18h
movzx	ecx, byte ptr [edx+12h]
shl	ecx, 10h
or	edi, ecx
movzx	ecx, byte ptr [edx+10h]
or	edi, ecx
movzx	ecx, byte ptr [edx+11h]
shl	ecx, 8
or	edi, ecx
mov	[eax+10h], edi
movzx	ecx, byte ptr [edx+17h]
shl	ecx, 18h
mov	[esp+18h+var_18], ecx
movzx	ecx, byte ptr [edx+16h]
shl	ecx, 10h
or	ecx, [esp+18h+var_18]
mov	[esp+18h+var_18], ecx
movzx	ecx, byte ptr [edx+14h]
or	ecx, [esp+18h+var_18]
movzx	edx, byte ptr [edx+15h]
shl	edx, 8
or	edx, ecx
mov	[eax+14h], edx
xor	ebp, 1
movzx	ecx, dl
xor	ebp, ds:(_t_fl+0C00h)[ecx*4]
movzx	ecx, dh
xor	ebp, ds:_t_fl[ecx*4]
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebp, ds:(_t_fl+400h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	ebp, ds:(_t_fl+800h)[ecx*4]
mov	[eax+18h], ebp
xor	esi, ebp
mov	[eax+1Ch], esi
xor	ebx, esi
mov	[eax+20h], ebx
mov	ecx, [esp+18h+var_14]
xor	ecx, ebx
mov	[eax+24h], ecx
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+28h], edi
xor	edx, edi
mov	[eax+2Ch], edx
xor	ebp, 2
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+30h], ebp
xor	esi, ebp
mov	[eax+34h], esi
xor	ebx, esi
mov	[eax+38h], ebx
xor	ecx, ebx
mov	[eax+3Ch], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+40h], edi
xor	edx, edi
mov	[eax+44h], edx
xor	ebp, 4
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+48h], ebp
xor	esi, ebp
mov	[eax+4Ch], esi
xor	ebx, esi
mov	[eax+50h], ebx
xor	ecx, ebx
mov	[eax+54h], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+58h], edi
xor	edx, edi
mov	[eax+5Ch], edx
xor	ebp, 8
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+60h], ebp
xor	esi, ebp
mov	[eax+64h], esi
xor	ebx, esi
mov	[eax+68h], ebx
xor	ecx, ebx
mov	[eax+6Ch], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+70h], edi
xor	edx, edi
mov	[eax+74h], edx
xor	ebp, 10h
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+78h], ebp
xor	esi, ebp
mov	[eax+7Ch], esi
xor	ebx, esi
mov	[eax+80h], ebx
xor	ecx, ebx
mov	[eax+84h], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+88h], edi
xor	edx, edi
mov	[eax+8Ch], edx
xor	ebp, 20h
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+90h], ebp
xor	esi, ebp
mov	[eax+94h], esi
xor	ebx, esi
mov	[eax+98h], ebx
xor	ecx, ebx
mov	[eax+9Ch], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[esp+18h+var_18], edi
mov	[eax+0A0h], edi
xor	edx, edi
mov	[eax+0A4h], edx
xor	ebp, 40h
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	[eax+0A8h], ebp
xor	esi, ebp
mov	[eax+0ACh], esi
xor	ebx, esi
mov	[eax+0B0h], ebx
xor	ecx, ebx
mov	[eax+0B4h], ecx
mov	edi, [esp+18h+var_18]
xor	edi, ecx
mov	[eax+0B8h], edi
xor	edx, edi
mov	[eax+0BCh], edx
xor	ebp, 80h
movzx	edi, dl
xor	ebp, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
shr	edx, 18h
xor	ebp, ds:(_t_fl+800h)[edx*4]
mov	[eax+0C0h], ebp
xor	esi, ebp
mov	[eax+0C4h], esi
xor	ebx, esi
mov	[eax+0C8h], ebx
xor	ebx, ecx
mov	[eax+0CCh], ebx
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0C0h
add	esp, 8
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
align 4
public _aes_encrypt_key256
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 14h
mov	ebp, [esp+24h+key]
mov	eax, [esp+24h+cx_0]
movzx	esi, byte ptr [ebp+3]
shl	esi, 18h
movzx	edx, byte ptr [ebp+2]
shl	edx, 10h
or	esi, edx
movzx	edx, byte ptr [ebp+0]
or	esi, edx
movzx	edx, byte ptr [ebp+1]
shl	edx, 8
or	esi, edx
mov	[eax], esi
movzx	ebx, byte ptr [ebp+7]
shl	ebx, 18h
movzx	edx, byte ptr [ebp+6]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [ebp+4]
or	ebx, edx
movzx	edx, byte ptr [ebp+5]
shl	edx, 8
or	ebx, edx
mov	[eax+4], ebx
movzx	ecx, byte ptr [ebp+0Bh]
shl	ecx, 18h
movzx	edx, byte ptr [ebp+0Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [ebp+8]
or	ecx, edx
movzx	edx, byte ptr [ebp+9]
shl	edx, 8
or	ecx, edx
mov	[esp+24h+var_20], ecx
mov	[eax+8], ecx
movzx	ecx, byte ptr [ebp+0Fh]
shl	ecx, 18h
movzx	edx, byte ptr [ebp+0Eh]
shl	edx, 10h
or	edx, ecx
movzx	ecx, byte ptr [ebp+0Ch]
or	edx, ecx
movzx	ecx, byte ptr [ebp+0Dh]
shl	ecx, 8
or	edx, ecx
mov	[esp+24h+var_14], edx
mov	[eax+0Ch], edx
movzx	edi, byte ptr [ebp+13h]
shl	edi, 18h
movzx	edx, byte ptr [ebp+12h]
shl	edx, 10h
or	edi, edx
movzx	edx, byte ptr [ebp+10h]
or	edi, edx
movzx	edx, byte ptr [ebp+11h]
shl	edx, 8
or	edi, edx
mov	[eax+10h], edi
movzx	ecx, byte ptr [ebp+17h]
shl	ecx, 18h
movzx	edx, byte ptr [ebp+16h]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [ebp+14h]
or	ecx, edx
movzx	edx, byte ptr [ebp+15h]
shl	edx, 8
or	ecx, edx
mov	[esp+24h+var_18], ecx
mov	[eax+14h], ecx
movzx	ecx, byte ptr [ebp+1Bh]
shl	ecx, 18h
movzx	edx, byte ptr [ebp+1Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [ebp+18h]
or	ecx, edx
movzx	edx, byte ptr [ebp+19h]
shl	edx, 8
or	ecx, edx
mov	[esp+24h+var_1C], ecx
mov	[eax+18h], ecx
movzx	ecx, byte ptr [ebp+1Fh]
shl	ecx, 18h
movzx	edx, byte ptr [ebp+1Eh]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [ebp+1Ch]
or	ecx, edx
movzx	edx, byte ptr [ebp+1Dh]
shl	edx, 8
or	ecx, edx
mov	[eax+1Ch], ecx
xor	esi, 1
movzx	edx, cl
xor	esi, ds:(_t_fl+0C00h)[edx*4]
movzx	edx, ch
xor	esi, ds:_t_fl[edx*4]
mov	edx, ecx
shr	edx, 10h
movzx	edx, dl
xor	esi, ds:(_t_fl+400h)[edx*4]
mov	edx, ecx
shr	edx, 18h
xor	esi, ds:(_t_fl+800h)[edx*4]
mov	[eax+20h], esi
xor	ebx, esi
mov	[esp+24h+var_24], ebx
mov	[eax+24h], ebx
mov	edx, [esp+24h+var_20]
xor	edx, ebx
mov	[esp+24h+var_20], edx
mov	[eax+28h], edx
xor	edx, [esp+24h+var_14]
mov	[eax+2Ch], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+30h], edi
mov	ebp, [esp+24h+var_18]
xor	ebp, edi
mov	[esp+24h+var_18], ebp
mov	[eax+34h], ebp
xor	ebp, [esp+24h+var_1C]
mov	[esp+24h+var_1C], ebp
mov	[eax+38h], ebp
xor	ecx, ebp
mov	[eax+3Ch], ecx
xor	esi, 2
movzx	ebp, cl
xor	esi, ds:(_t_fl+0C00h)[ebp*4]
movzx	ebp, ch
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	[eax+40h], esi
mov	ebp, [esp+24h+var_24]
xor	ebp, esi
mov	[esp+24h+var_14], ebp
mov	[eax+44h], ebp
mov	ebx, [esp+24h+var_20]
xor	ebx, ebp
mov	[esp+24h+var_20], ebx
mov	[eax+48h], ebx
xor	edx, ebx
mov	[eax+4Ch], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+50h], edi
mov	ebp, [esp+24h+var_18]
xor	ebp, edi
mov	[esp+24h+var_18], ebp
mov	[eax+54h], ebp
xor	ebp, [esp+24h+var_1C]
mov	[esp+24h+var_1C], ebp
mov	[eax+58h], ebp
xor	ecx, ebp
mov	[eax+5Ch], ecx
xor	esi, 4
movzx	ebp, cl
xor	esi, ds:(_t_fl+0C00h)[ebp*4]
movzx	ebp, ch
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	[eax+60h], esi
mov	ebp, [esp+24h+var_14]
xor	ebp, esi
mov	[esp+24h+var_14], ebp
mov	[eax+64h], ebp
mov	ebx, [esp+24h+var_20]
xor	ebx, ebp
mov	[esp+24h+var_20], ebx
mov	[eax+68h], ebx
xor	edx, ebx
mov	[eax+6Ch], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+70h], edi
mov	ebp, [esp+24h+var_18]
xor	ebp, edi
mov	[esp+24h+var_18], ebp
mov	[eax+74h], ebp
xor	ebp, [esp+24h+var_1C]
mov	[esp+24h+var_1C], ebp
mov	[eax+78h], ebp
xor	ecx, ebp
mov	[eax+7Ch], ecx
xor	esi, 8
movzx	ebp, cl
xor	esi, ds:(_t_fl+0C00h)[ebp*4]
movzx	ebp, ch
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	[eax+80h], esi
mov	ebp, [esp+24h+var_14]
xor	ebp, esi
mov	[esp+24h+var_14], ebp
mov	[eax+84h], ebp
mov	ebx, [esp+24h+var_20]
xor	ebx, ebp
mov	[esp+24h+var_20], ebx
mov	[eax+88h], ebx
xor	edx, ebx
mov	[eax+8Ch], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+90h], edi
mov	ebp, [esp+24h+var_18]
xor	ebp, edi
mov	[esp+24h+var_18], ebp
mov	[eax+94h], ebp
xor	ebp, [esp+24h+var_1C]
mov	[esp+24h+var_1C], ebp
mov	[eax+98h], ebp
xor	ecx, ebp
mov	[eax+9Ch], ecx
xor	esi, 10h
movzx	ebp, cl
xor	esi, ds:(_t_fl+0C00h)[ebp*4]
movzx	ebp, ch
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	[eax+0A0h], esi
mov	ebp, [esp+24h+var_14]
xor	ebp, esi
mov	[esp+24h+var_14], ebp
mov	[eax+0A4h], ebp
mov	ebx, [esp+24h+var_20]
xor	ebx, ebp
mov	[esp+24h+var_20], ebx
mov	[eax+0A8h], ebx
xor	edx, ebx
mov	[eax+0ACh], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+0B0h], edi
mov	ebp, [esp+24h+var_18]
xor	ebp, edi
mov	[esp+24h+var_18], ebp
mov	[eax+0B4h], ebp
xor	ebp, [esp+24h+var_1C]
mov	[esp+24h+var_1C], ebp
mov	[eax+0B8h], ebp
xor	ecx, ebp
mov	[eax+0BCh], ecx
xor	esi, 20h
movzx	ebp, cl
xor	esi, ds:(_t_fl+0C00h)[ebp*4]
movzx	ebp, ch
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	[eax+0C0h], esi
mov	ebp, [esp+24h+var_14]
xor	ebp, esi
mov	[esp+24h+var_14], ebp
mov	[eax+0C4h], ebp
mov	ebx, [esp+24h+var_20]
xor	ebx, ebp
mov	[esp+24h+var_20], ebx
mov	[eax+0C8h], ebx
xor	edx, ebx
mov	[eax+0CCh], edx
movzx	ebp, dl
xor	edi, ds:_t_fl[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+0C00h)[ebp*4]
mov	[eax+0D0h], edi
xor	edi, [esp+24h+var_18]
mov	[eax+0D4h], edi
xor	edi, [esp+24h+var_1C]
mov	[eax+0D8h], edi
xor	ecx, edi
mov	[eax+0DCh], ecx
xor	esi, 40h
movzx	edi, cl
xor	esi, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, ch
xor	esi, ds:_t_fl[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fl+400h)[edi*4]
shr	ecx, 18h
xor	esi, ds:(_t_fl+800h)[ecx*4]
mov	[eax+0E0h], esi
mov	ebx, [esp+24h+var_14]
xor	ebx, esi
mov	[eax+0E4h], ebx
xor	ebx, [esp+24h+var_20]
mov	[eax+0E8h], ebx
xor	edx, ebx
mov	[eax+0ECh], edx
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0E0h
add	esp, 14h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
public _aes_encrypt_key
mov	edx, [esp+key]
mov	eax, [esp+key_len]
mov	ecx, [esp+arg_8]
cmp	eax, 20h
jz	short loc_641E7198
jle	short loc_641E7180
cmp	key_len_0, 0C0h
jz	short loc_641E718A
cmp	key_len_0, 100h
jz	short loc_641E7198
add	key_len_0, 0FFFFFF80h
jz	short loc_641E71A8
retn
align 10h
cmp	key_len_0, 10h
jz	short loc_641E71A8
cmp	key_len_0, 18h
jnz	short locret_641E717E
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_encrypt_key192
align 4
			
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_encrypt_key256
align 4
			
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_encrypt_key128
align 4
public _aes_decrypt_key128
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 18h
mov	esi, [esp+28h+key]
mov	eax, [esp+28h+cx_0]
movzx	edi, byte ptr [esi+3]
shl	edi, 18h
movzx	edx, byte ptr [esi+2]
shl	edx, 10h
or	edi, edx
movzx	edx, byte ptr [esi]
or	edi, edx
movzx	edx, byte ptr [esi+1]
shl	edx, 8
or	edi, edx
mov	[eax+0A0h], edi
movzx	ebx, byte ptr [esi+7]
shl	ebx, 18h
movzx	edx, byte ptr [esi+6]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [esi+4]
or	ebx, edx
movzx	edx, byte ptr [esi+5]
shl	edx, 8
or	ebx, edx
mov	[eax+0A4h], ebx
movzx	ebp, byte ptr [esi+0Bh]
shl	ebp, 18h
movzx	edx, byte ptr [esi+0Ah]
shl	edx, 10h
or	ebp, edx
movzx	edx, byte ptr [esi+8]
or	ebp, edx
movzx	edx, byte ptr [esi+9]
shl	edx, 8
or	ebp, edx
mov	[esp+28h+var_24], ebp
mov	[eax+0A8h], ebp
movzx	ecx, byte ptr [esi+0Fh]
shl	ecx, 18h
movzx	edx, byte ptr [esi+0Eh]
shl	edx, 10h
or	edx, ecx
movzx	ecx, byte ptr [esi+0Ch]
or	edx, ecx
movzx	ecx, byte ptr [esi+0Dh]
shl	ecx, 8
or	edx, ecx
mov	[eax+0ACh], edx
movzx	ecx, dl
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
xor	ecx, 1
movzx	esi, dh
xor	ecx, ds:_t_fl[esi*4]
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
xor	ecx, ds:(_t_fl+400h)[esi*4]
mov	esi, edx
shr	esi, 18h
xor	ecx, ds:(_t_fl+800h)[esi*4]
mov	esi, ebx
xor	esi, edi
xor	esi, ebp
xor	esi, edx
xor	esi, ecx
mov	[esp+28h+var_14], esi
xor	ecx, edi
movzx	esi, ch
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
mov	esi, ds:(_t_im+400h)[esi*4]
xor	esi, ds:(_t_im+800h)[edi*4]
movzx	edi, cl
xor	esi, ds:_t_im[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	esi, ds:(_t_im+0C00h)[edi*4]
mov	[eax+90h], esi
xor	ecx, ebx
movzx	ebp, ch
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, cl
xor	ebp, ds:_t_im[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	ebp, ds:(_t_im+0C00h)[edi*4]
mov	[esp+28h+var_1C], ebp
mov	[eax+94h], ebp
xor	ecx, [esp+28h+var_24]
movzx	ebp, ch
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, cl
xor	ebp, ds:_t_im[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	ebp, ds:(_t_im+0C00h)[edi*4]
mov	[esp+28h+var_20], ebp
mov	[eax+98h], ebp
xor	ecx, edx
movzx	ebp, ch
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, cl
xor	ebp, ds:_t_im[edi*4]
shr	ecx, 18h
xor	ebp, ds:(_t_im+0C00h)[ecx*4]
mov	[esp+28h+var_28], ebp
mov	[eax+9Ch], ebp
movzx	edi, byte ptr [esp+28h+var_14]
mov	ebp, ds:(_t_fl+0C00h)[edi*4]
xor	ebp, 2
mov	ecx, [esp+28h+var_14]
movzx	edi, ch
xor	ebp, ds:_t_fl[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
xor	ebx, edx
xor	ebx, ebp
mov	[esp+28h+var_18], ebx
mov	ecx, ebp
movzx	ebx, cl
xor	esi, ds:_t_im[ebx*4]
mov	ecx, ebp
movzx	ebx, ch
mov	edi, ds:(_t_im+400h)[ebx*4]
xor	edi, esi
mov	ebx, ebp
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_im+800h)[ebx*4]
shr	ebp, 18h
xor	edi, ds:(_t_im+0C00h)[ebp*4]
mov	[eax+80h], edi
mov	esi, [esp+28h+var_1C]
xor	esi, edi
mov	[eax+84h], esi
mov	ebx, [esp+28h+var_20]
xor	ebx, esi
mov	[esp+28h+var_1C], ebx
mov	[eax+88h], ebx
mov	ecx, [esp+28h+var_28]
xor	ecx, ebx
mov	[esp+28h+var_20], ecx
mov	[eax+8Ch], ecx
movzx	ecx, byte ptr [esp+28h+var_18]
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
mov	ebx, ecx
xor	ebx, 4
mov	ecx, [esp+28h+var_18]
movzx	ebp, ch
xor	ebx, ds:_t_fl[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fl+400h)[ebp*4]
xor	ecx, ebx
mov	ebp, [esp+28h+var_18]
shr	ebp, 18h
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+28h+var_24]
xor	ebp, edx
xor	ebp, ecx
mov	[esp+28h+var_24], ebp
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+70h], edi
xor	esi, edi
mov	[eax+74h], esi
mov	ebx, [esp+28h+var_1C]
xor	ebx, esi
mov	[eax+78h], ebx
mov	ecx, [esp+28h+var_20]
xor	ecx, ebx
mov	[esp+28h+var_20], ecx
mov	[eax+7Ch], ecx
movzx	ecx, byte ptr [esp+28h+var_24]
mov	ebp, ds:(_t_fl+0C00h)[ecx*4]
xor	ebp, 8
mov	ecx, [esp+28h+var_24]
movzx	ecx, ch
xor	ebp, ds:_t_fl[ecx*4]
mov	ecx, [esp+28h+var_24]
shr	ecx, 10h
movzx	ecx, cl
xor	ebp, ds:(_t_fl+400h)[ecx*4]
mov	ecx, [esp+28h+var_24]
shr	ecx, 18h
xor	ebp, ds:(_t_fl+800h)[ecx*4]
mov	ecx, ebp
xor	edx, ebp
mov	[esp+28h+var_1C], edx
movzx	edx, cl
xor	edi, ds:_t_im[edx*4]
movzx	edx, ch
xor	edi, ds:(_t_im+400h)[edx*4]
mov	edx, ebp
shr	edx, 10h
movzx	edx, dl
xor	edi, ds:(_t_im+800h)[edx*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+60h], edi
xor	esi, edi
mov	[eax+64h], esi
xor	ebx, esi
mov	[eax+68h], ebx
mov	edx, [esp+28h+var_20]
xor	edx, ebx
mov	[esp+28h+var_20], edx
mov	[eax+6Ch], edx
movzx	edx, byte ptr [esp+28h+var_1C]
mov	edx, ds:(_t_fl+0C00h)[edx*4]
mov	ecx, edx
xor	ecx, 10h
mov	edx, [esp+28h+var_1C]
movzx	ebp, dh
mov	edx, ds:_t_fl[ebp*4]
xor	edx, ecx
mov	ebp, [esp+28h+var_1C]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, [esp+28h+var_1C]
shr	ebp, 18h
xor	edx, ds:(_t_fl+800h)[ebp*4]
mov	ecx, [esp+28h+var_14]
xor	ecx, edx
mov	[esp+28h+var_14], ecx
movzx	ebp, dl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[eax+50h], edi
xor	esi, edi
mov	[eax+54h], esi
xor	ebx, esi
mov	[eax+58h], ebx
mov	edx, [esp+28h+var_20]
xor	edx, ebx
mov	[esp+28h+var_20], edx
mov	[eax+5Ch], edx
movzx	edx, byte ptr [esp+28h+var_14]
mov	edx, ds:(_t_fl+0C00h)[edx*4]
mov	ecx, edx
xor	ecx, 20h
mov	edx, [esp+28h+var_14]
movzx	ebp, dh
mov	edx, ds:_t_fl[ebp*4]
xor	edx, ecx
mov	ebp, [esp+28h+var_14]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, [esp+28h+var_14]
shr	ebp, 18h
xor	edx, ds:(_t_fl+800h)[ebp*4]
mov	ecx, [esp+28h+var_18]
xor	ecx, edx
mov	[esp+28h+var_18], ecx
movzx	ebp, dl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[eax+40h], edi
xor	esi, edi
mov	[eax+44h], esi
xor	ebx, esi
mov	[eax+48h], ebx
mov	edx, [esp+28h+var_20]
xor	edx, ebx
mov	[esp+28h+var_20], edx
mov	[eax+4Ch], edx
movzx	edx, byte ptr [esp+28h+var_18]
mov	edx, ds:(_t_fl+0C00h)[edx*4]
mov	ecx, edx
xor	ecx, 40h
mov	edx, [esp+28h+var_18]
movzx	ebp, dh
mov	edx, ds:_t_fl[ebp*4]
xor	edx, ecx
mov	ebp, [esp+28h+var_18]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, [esp+28h+var_18]
shr	ebp, 18h
xor	edx, ds:(_t_fl+800h)[ebp*4]
mov	ecx, [esp+28h+var_24]
xor	ecx, edx
mov	[esp+28h+var_24], ecx
movzx	ebp, dl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[eax+30h], edi
xor	esi, edi
mov	[eax+34h], esi
xor	ebx, esi
mov	[esp+28h+var_28], ebx
mov	[eax+38h], ebx
mov	edx, [esp+28h+var_20]
xor	edx, ebx
mov	[esp+28h+var_20], edx
mov	[eax+3Ch], edx
movzx	edx, byte ptr [esp+28h+var_24]
mov	ecx, ds:(_t_fl+0C00h)[edx*4]
mov	ebx, ecx
xor	bl, 80h
mov	ecx, [esp+28h+var_24]
movzx	edx, ch
mov	ecx, ds:_t_fl[edx*4]
xor	ecx, ebx
mov	edx, [esp+28h+var_24]
shr	edx, 10h
movzx	edx, dl
xor	ecx, ds:(_t_fl+400h)[edx*4]
mov	edx, [esp+28h+var_24]
shr	edx, 18h
xor	ecx, ds:(_t_fl+800h)[edx*4]
mov	edx, [esp+28h+var_1C]
xor	edx, ecx
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+20h], edi
xor	esi, edi
mov	[eax+24h], esi
mov	ecx, [esp+28h+var_28]
xor	ecx, esi
mov	[esp+28h+var_1C], ecx
mov	[eax+28h], ecx
xor	ecx, [esp+28h+var_20]
mov	[esp+28h+var_20], ecx
mov	[eax+2Ch], ecx
movzx	ecx, dl
mov	ebx, ds:(_t_fl+0C00h)[ecx*4]
xor	ebx, 1Bh
movzx	ecx, dh
xor	ebx, ds:_t_fl[ecx*4]
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fl+400h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	ebx, ds:(_t_fl+800h)[ecx*4]
mov	ecx, [esp+28h+var_14]
xor	ecx, ebx
mov	[esp+28h+var_14], ecx
movzx	ebp, bl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, bh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ebx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ebx, 18h
xor	edi, ds:(_t_im+0C00h)[ebx*4]
mov	[eax+10h], edi
xor	edi, esi
mov	[eax+14h], edi
xor	edi, [esp+28h+var_1C]
mov	[eax+18h], edi
xor	edi, [esp+28h+var_20]
mov	[eax+1Ch], edi
mov	ebx, [esp+28h+var_18]
xor	ebx, 36h
movzx	esi, byte ptr [esp+28h+var_14]
xor	ebx, ds:(_t_fl+0C00h)[esi*4]
mov	ecx, [esp+28h+var_14]
movzx	esi, ch
xor	ebx, ds:_t_fl[esi*4]
mov	esi, ecx
shr	esi, 10h
and	esi, 0FFh
xor	ebx, ds:(_t_fl+400h)[esi*4]
mov	esi, ecx
shr	esi, 18h
xor	ebx, ds:(_t_fl+800h)[esi*4]
xor	ecx, ebx
mov	ebp, [esp+28h+var_24]
xor	ebp, edx
xor	ebp, ecx
mov	[eax], ebp
xor	edx, ebx
mov	[eax+4], edx
mov	[eax+8], ecx
mov	[eax+0Ch], ebx
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0A0h
add	esp, 18h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
align 4
public _aes_decrypt_key192
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 30h
mov	edi, [esp+40h+key]
mov	eax, [esp+40h+cx_0]
movzx	ebx, byte ptr [edi+3]
shl	ebx, 18h
movzx	edx, byte ptr [edi+2]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi]
or	ebx, edx
movzx	edx, byte ptr [edi+1]
shl	edx, 8
or	ebx, edx
mov	[esp+40h+var_34], ebx
mov	[eax+0C0h], ebx
movzx	ecx, byte ptr [edi+7]
shl	ecx, 18h
movzx	edx, byte ptr [edi+6]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+4]
or	ecx, edx
movzx	edx, byte ptr [edi+5]
shl	edx, 8
or	ecx, edx
mov	[esp+40h+var_28], ecx
mov	[eax+0C4h], ecx
movzx	ecx, byte ptr [edi+0Bh]
shl	ecx, 18h
movzx	edx, byte ptr [edi+0Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+8]
or	ecx, edx
movzx	edx, byte ptr [edi+9]
shl	edx, 8
or	ecx, edx
mov	[esp+40h+var_2C], ecx
mov	[eax+0C8h], ecx
movzx	ecx, byte ptr [edi+0Fh]
shl	ecx, 18h
movzx	edx, byte ptr [edi+0Eh]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+0Ch]
or	ecx, edx
movzx	edx, byte ptr [edi+0Dh]
shl	edx, 8
or	ecx, edx
mov	[esp+40h+var_30], ecx
mov	[eax+0CCh], ecx
movzx	ecx, byte ptr [edi+13h]
shl	ecx, 18h
movzx	edx, byte ptr [edi+12h]
shl	edx, 10h
or	edx, ecx
movzx	ecx, byte ptr [edi+10h]
or	edx, ecx
movzx	ecx, byte ptr [edi+11h]
shl	ecx, 8
or	edx, ecx
mov	[esp+40h+var_24], edx
movzx	ebx, dh
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
mov	ebx, ds:(_t_im+400h)[ebx*4]
xor	ebx, ds:(_t_im+800h)[ecx*4]
movzx	ecx, dl
xor	ebx, ds:_t_im[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	ebx, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+0B0h], ebx
movzx	esi, byte ptr [edi+17h]
shl	esi, 18h
movzx	ecx, byte ptr [edi+16h]
shl	ecx, 10h
or	esi, ecx
movzx	ecx, byte ptr [edi+14h]
or	esi, ecx
movzx	ecx, byte ptr [edi+15h]
shl	ecx, 8
or	esi, ecx
mov	edx, esi
movzx	ebx, dl
mov	ecx, esi
movzx	ebp, ch
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edx, esi
shr	edx, 18h
mov	ecx, ds:(_t_im+400h)[ebp*4]
xor	ecx, ds:(_t_im+800h)[edi*4]
xor	ecx, ds:_t_im[ebx*4]
xor	ecx, ds:(_t_im+0C00h)[edx*4]
mov	[eax+0B4h], ecx
mov	ecx, [esp+40h+var_34]
xor	ecx, 1
mov	ebx, ds:(_t_fl+0C00h)[ebx*4]
xor	ebx, ecx
xor	ebx, ds:_t_fl[ebp*4]
xor	ebx, ds:(_t_fl+400h)[edi*4]
xor	ebx, ds:(_t_fl+800h)[edx*4]
movzx	edi, bh
mov	ecx, ebx
shr	ecx, 10h
movzx	ecx, cl
mov	edi, ds:(_t_im+400h)[edi*4]
xor	edi, ds:(_t_im+800h)[ecx*4]
movzx	ecx, bl
xor	edi, ds:_t_im[ecx*4]
mov	ecx, ebx
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[esp+40h+var_1C], edi
mov	[eax+0B8h], edi
mov	edi, [esp+40h+var_28]
xor	edi, ebx
mov	[esp+40h+var_40], edi
mov	edx, edi
movzx	ebp, dh
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, dl
xor	ebp, ds:_t_im[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_im+0C00h)[edi*4]
mov	[esp+40h+var_14], ebp
mov	[eax+0BCh], ebp
mov	ecx, [esp+40h+var_2C]
xor	ecx, edx
mov	[esp+40h+var_2C], ecx
movzx	edi, ch
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
mov	edi, ds:(_t_im+400h)[edi*4]
xor	edi, ds:(_t_im+800h)[ebp*4]
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	edi, ds:(_t_im+0C00h)[ebp*4]
mov	[esp+40h+var_18], edi
mov	[eax+0A0h], edi
xor	ecx, [esp+40h+var_30]
mov	[esp+40h+var_30], ecx
movzx	ebp, ch
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, cl
xor	ebp, ds:_t_im[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	ebp, ds:(_t_im+0C00h)[edi*4]
mov	[esp+40h+var_38], ebp
mov	[eax+0A4h], ebp
mov	edx, [esp+40h+var_24]
xor	edx, ecx
movzx	ebp, dh
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
mov	ebp, ds:(_t_im+400h)[ebp*4]
xor	ebp, ds:(_t_im+800h)[edi*4]
movzx	edi, dl
xor	ebp, ds:_t_im[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_im+0C00h)[edi*4]
mov	[esp+40h+var_28], ebp
mov	[eax+0A8h], ebp
xor	esi, edx
mov	ecx, esi
movzx	ecx, cl
mov	[esp+40h+var_3C], ecx
mov	ecx, esi
movzx	edi, ch
mov	ebp, esi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	[esp+40h+var_20], ebp
mov	ebp, esi
shr	ebp, 18h
mov	[esp+40h+var_24], ebp
mov	ebp, ds:(_t_im+400h)[edi*4]
mov	ecx, [esp+40h+var_20]
xor	ebp, ds:(_t_im+800h)[ecx*4]
mov	ecx, [esp+40h+var_3C]
xor	ebp, ds:_t_im[ecx*4]
mov	ecx, [esp+40h+var_24]
xor	ebp, ds:(_t_im+0C00h)[ecx*4]
mov	[esp+40h+var_34], ebp
mov	[eax+0ACh], ebp
mov	ecx, [esp+40h+var_3C]
mov	ebp, ds:(_t_fl+0C00h)[ecx*4]
xor	ebp, 2
xor	ebp, ds:_t_fl[edi*4]
mov	edi, ebp
mov	ebp, [esp+40h+var_20]
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ecx, [esp+40h+var_24]
xor	edi, ds:(_t_fl+800h)[ecx*4]
xor	ebx, edi
mov	[esp+40h+var_24], ebx
mov	ecx, edi
movzx	ebx, cl
mov	ebx, ds:_t_im[ebx*4]
xor	ebx, [esp+40h+var_1C]
mov	ecx, edi
movzx	ebp, ch
xor	ebx, ds:(_t_im+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	ebx, ds:(_t_im+800h)[ebp*4]
shr	edi, 18h
xor	ebx, ds:(_t_im+0C00h)[edi*4]
mov	[eax+90h], ebx
mov	edi, [esp+40h+var_40]
xor	edi, [esp+40h+var_24]
mov	[esp+40h+var_1C], edi
mov	ebp, [esp+40h+var_14]
xor	ebp, ebx
mov	[esp+40h+var_14], ebp
mov	[eax+94h], ebp
xor	edi, [esp+40h+var_2C]
mov	[esp+40h+var_2C], edi
mov	edi, [esp+40h+var_18]
xor	edi, ebp
mov	[eax+98h], edi
mov	ecx, [esp+40h+var_2C]
xor	ecx, [esp+40h+var_30]
mov	[esp+40h+var_30], ecx
mov	ebp, [esp+40h+var_38]
xor	ebp, edi
mov	[esp+40h+var_38], ebp
mov	[eax+9Ch], ebp
xor	edx, ecx
mov	[esp+40h+var_20], edx
xor	ebp, [esp+40h+var_28]
mov	[esp+40h+var_28], ebp
mov	[eax+80h], ebp
xor	edx, esi
xor	ebp, [esp+40h+var_34]
mov	[esp+40h+var_34], ebp
mov	[eax+84h], ebp
movzx	esi, dl
mov	esi, ds:(_t_fl+0C00h)[esi*4]
xor	esi, 4
movzx	ebp, dh
xor	esi, ds:_t_fl[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	esi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	esi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+40h+var_24]
xor	ebp, esi
mov	[esp+40h+var_24], ebp
mov	ecx, esi
movzx	ebp, cl
xor	ebx, ds:_t_im[ebp*4]
mov	ecx, esi
movzx	ebp, ch
xor	ebx, ds:(_t_im+400h)[ebp*4]
mov	ebp, esi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	ebx, ds:(_t_im+800h)[ebp*4]
shr	esi, 18h
xor	ebx, ds:(_t_im+0C00h)[esi*4]
mov	[eax+88h], ebx
mov	esi, [esp+40h+var_24]
xor	esi, [esp+40h+var_1C]
mov	[esp+40h+var_1C], esi
mov	ebp, [esp+40h+var_14]
xor	ebp, ebx
mov	[esp+40h+var_18], ebp
mov	[eax+8Ch], ebp
xor	esi, [esp+40h+var_2C]
mov	[esp+40h+var_2C], esi
mov	esi, ebp
xor	esi, edi
mov	[eax+70h], esi
mov	ecx, [esp+40h+var_2C]
xor	ecx, [esp+40h+var_30]
mov	[esp+40h+var_30], ecx
mov	edi, [esp+40h+var_38]
xor	edi, esi
mov	[esp+40h+var_38], edi
mov	[eax+74h], edi
xor	ecx, [esp+40h+var_20]
mov	[esp+40h+var_20], ecx
xor	edi, [esp+40h+var_28]
mov	[esp+40h+var_28], edi
mov	[eax+78h], edi
xor	edx, ecx
xor	edi, [esp+40h+var_34]
mov	[esp+40h+var_34], edi
mov	[eax+7Ch], edi
movzx	edi, dl
mov	edi, ds:(_t_fl+0C00h)[edi*4]
xor	edi, 8
movzx	ebp, dh
xor	edi, ds:_t_fl[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+40h+var_24]
xor	ebp, edi
mov	[esp+40h+var_24], ebp
mov	ecx, edi
movzx	ebp, cl
xor	ebx, ds:_t_im[ebp*4]
mov	ecx, edi
movzx	ebp, ch
xor	ebx, ds:(_t_im+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	ebx, ds:(_t_im+800h)[ebp*4]
shr	edi, 18h
xor	ebx, ds:(_t_im+0C00h)[edi*4]
mov	[eax+60h], ebx
mov	edi, [esp+40h+var_24]
xor	edi, [esp+40h+var_1C]
mov	[esp+40h+var_1C], edi
mov	ebp, [esp+40h+var_18]
xor	ebp, ebx
mov	[esp+40h+var_18], ebp
mov	[eax+64h], ebp
xor	edi, [esp+40h+var_2C]
mov	[esp+40h+var_2C], edi
xor	esi, ebp
mov	[eax+68h], esi
xor	edi, [esp+40h+var_30]
mov	[esp+40h+var_30], edi
mov	ecx, [esp+40h+var_38]
xor	ecx, esi
mov	[esp+40h+var_38], ecx
mov	[eax+6Ch], ecx
xor	edi, [esp+40h+var_20]
mov	[esp+40h+var_20], edi
xor	ecx, [esp+40h+var_28]
mov	[esp+40h+var_28], ecx
mov	[eax+50h], ecx
xor	edx, edi
xor	ecx, [esp+40h+var_34]
mov	[esp+40h+var_34], ecx
mov	[eax+54h], ecx
movzx	edi, dl
mov	ebp, ds:(_t_fl+0C00h)[edi*4]
xor	ebp, 10h
movzx	edi, dh
xor	ebp, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fl+400h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_fl+800h)[edi*4]
mov	edi, [esp+40h+var_24]
xor	edi, ebp
mov	[esp+40h+var_24], edi
mov	ecx, ebp
movzx	edi, cl
xor	ebx, ds:_t_im[edi*4]
mov	edi, ebx
mov	ecx, ebp
movzx	ebx, ch
xor	edi, ds:(_t_im+400h)[ebx*4]
mov	ebx, ebp
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_im+800h)[ebx*4]
shr	ebp, 18h
xor	edi, ds:(_t_im+0C00h)[ebp*4]
mov	[eax+58h], edi
mov	ebx, [esp+40h+var_24]
xor	ebx, [esp+40h+var_1C]
mov	[esp+40h+var_1C], ebx
mov	ebp, [esp+40h+var_18]
xor	ebp, edi
mov	[esp+40h+var_18], ebp
mov	[eax+5Ch], ebp
xor	ebx, [esp+40h+var_2C]
mov	[esp+40h+var_2C], ebx
xor	esi, ebp
mov	[eax+40h], esi
xor	ebx, [esp+40h+var_30]
mov	[esp+40h+var_30], ebx
mov	ecx, [esp+40h+var_38]
xor	ecx, esi
mov	[esp+40h+var_38], ecx
mov	[eax+44h], ecx
xor	ebx, [esp+40h+var_20]
mov	[esp+40h+var_20], ebx
xor	ecx, [esp+40h+var_28]
mov	[esp+40h+var_28], ecx
mov	[eax+48h], ecx
xor	edx, ebx
xor	ecx, [esp+40h+var_34]
mov	[esp+40h+var_34], ecx
mov	[eax+4Ch], ecx
movzx	ebx, dl
mov	ebx, ds:(_t_fl+0C00h)[ebx*4]
xor	ebx, 20h
movzx	ebp, dh
mov	ecx, ds:_t_fl[ebp*4]
xor	ecx, ebx
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
mov	ebx, ds:(_t_fl+400h)[ebp*4]
xor	ebx, ecx
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+40h+var_24]
xor	ebp, ebx
mov	[esp+40h+var_24], ebp
movzx	ebp, bl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, bh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ebx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ebx, 18h
xor	edi, ds:(_t_im+0C00h)[ebx*4]
mov	[eax+30h], edi
mov	ebx, [esp+40h+var_24]
xor	ebx, [esp+40h+var_1C]
mov	[esp+40h+var_1C], ebx
mov	ebp, [esp+40h+var_18]
xor	ebp, edi
mov	[esp+40h+var_18], ebp
mov	[eax+34h], ebp
xor	ebx, [esp+40h+var_2C]
mov	[esp+40h+var_2C], ebx
xor	esi, ebp
mov	[eax+38h], esi
xor	ebx, [esp+40h+var_30]
mov	[esp+40h+var_30], ebx
mov	ecx, [esp+40h+var_38]
xor	ecx, esi
mov	[esp+40h+var_38], ecx
mov	[eax+3Ch], ecx
xor	ebx, [esp+40h+var_20]
mov	[esp+40h+var_20], ebx
xor	ecx, [esp+40h+var_28]
mov	[esp+40h+var_28], ecx
mov	[eax+20h], ecx
xor	edx, ebx
mov	ebx, [esp+40h+var_34]
xor	ebx, ecx
mov	[esp+40h+var_34], ebx
mov	[eax+24h], ebx
movzx	ecx, dl
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
xor	ecx, 40h
movzx	ebp, dh
mov	ebx, ds:_t_fl[ebp*4]
xor	ebx, ecx
mov	ebp, edx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fl+400h)[ebp*4]
xor	ecx, ebx
mov	ebp, edx
shr	ebp, 18h
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebx, [esp+40h+var_24]
xor	ebx, ecx
mov	[esp+40h+var_24], ebx
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_im+800h)[ebp*4]
mov	ebp, edi
shr	ecx, 18h
xor	ebp, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+28h], ebp
mov	ecx, [esp+40h+var_24]
xor	ecx, [esp+40h+var_1C]
xor	ebp, [esp+40h+var_18]
mov	[eax+2Ch], ebp
mov	edi, [esp+40h+var_2C]
xor	edi, ecx
xor	esi, ebp
mov	[eax+10h], esi
mov	ebp, [esp+40h+var_30]
xor	ebp, edi
xor	esi, [esp+40h+var_38]
mov	[eax+14h], esi
xor	esi, [esp+40h+var_28]
mov	[eax+18h], esi
xor	edx, [esp+40h+var_20]
xor	edx, ebp
xor	esi, [esp+40h+var_34]
mov	[eax+1Ch], esi
mov	esi, [esp+40h+var_24]
xor	esi, 80h
movzx	ebx, dl
xor	esi, ds:(_t_fl+0C00h)[ebx*4]
movzx	ebx, dh
xor	esi, ds:_t_fl[ebx*4]
mov	ebx, edx
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_fl+400h)[ebx*4]
mov	ebx, edx
shr	ebx, 18h
mov	edx, ds:(_t_fl+800h)[ebx*4]
xor	edx, esi
mov	[eax], edx
xor	ecx, edx
mov	[eax+4], ecx
xor	edi, ecx
mov	[eax+8], edi
xor	edi, ebp
mov	[eax+0Ch], edi
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0C0h
add	esp, 30h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
public _aes_decrypt_key256
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 40h
mov	edi, [esp+50h+key]
mov	eax, [esp+50h+cx_0]
movzx	ebx, byte ptr [edi+3]
shl	ebx, 18h
movzx	edx, byte ptr [edi+2]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi]
or	ebx, edx
movzx	edx, byte ptr [edi+1]
shl	edx, 8
or	ebx, edx
mov	[esp+50h+var_3C], ebx
mov	[eax+0E0h], ebx
movzx	ecx, byte ptr [edi+7]
shl	ecx, 18h
movzx	edx, byte ptr [edi+6]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+4]
or	ecx, edx
movzx	edx, byte ptr [edi+5]
shl	edx, 8
or	ecx, edx
mov	[esp+50h+var_48], ecx
mov	[eax+0E4h], ecx
movzx	ecx, byte ptr [edi+0Bh]
shl	ecx, 18h
movzx	edx, byte ptr [edi+0Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+8]
or	ecx, edx
movzx	edx, byte ptr [edi+9]
shl	edx, 8
or	ecx, edx
mov	[esp+50h+var_38], ecx
mov	[eax+0E8h], ecx
movzx	esi, byte ptr [edi+0Fh]
shl	esi, 18h
movzx	edx, byte ptr [edi+0Eh]
shl	edx, 10h
or	esi, edx
movzx	edx, byte ptr [edi+0Ch]
or	esi, edx
movzx	ecx, byte ptr [edi+0Dh]
shl	ecx, 8
or	esi, ecx
mov	[esp+50h+var_34], esi
mov	[eax+0ECh], esi
movzx	ecx, byte ptr [edi+13h]
shl	ecx, 18h
movzx	edx, byte ptr [edi+12h]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+10h]
or	ecx, edx
movzx	edx, byte ptr [edi+11h]
shl	edx, 8
or	ecx, edx
movzx	ebx, ch
mov	edx, ecx
shr	edx, 10h
movzx	edx, dl
mov	ebx, ds:(_t_im+400h)[ebx*4]
xor	ebx, ds:(_t_im+800h)[edx*4]
movzx	edx, cl
xor	ebx, ds:_t_im[edx*4]
mov	edx, ecx
shr	edx, 18h
xor	ebx, ds:(_t_im+0C00h)[edx*4]
mov	[eax+0D0h], ebx
movzx	ebx, byte ptr [edi+17h]
shl	ebx, 18h
movzx	edx, byte ptr [edi+16h]
shl	edx, 10h
or	edx, ebx
movzx	ebx, byte ptr [edi+14h]
or	edx, ebx
movzx	ebx, byte ptr [edi+15h]
shl	ebx, 8
or	edx, ebx
mov	[esp+50h+var_40], edx
movzx	ebx, dh
shr	edx, 10h
movzx	edx, dl
mov	ebx, ds:(_t_im+400h)[ebx*4]
xor	ebx, ds:(_t_im+800h)[edx*4]
movzx	edx, byte ptr [esp+50h+var_40]
xor	ebx, ds:_t_im[edx*4]
mov	edx, [esp+50h+var_40]
shr	edx, 18h
xor	ebx, ds:(_t_im+0C00h)[edx*4]
mov	[eax+0D4h], ebx
movzx	ebx, byte ptr [edi+1Bh]
shl	ebx, 18h
movzx	edx, byte ptr [edi+1Ah]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi+18h]
or	ebx, edx
movzx	edx, byte ptr [edi+19h]
shl	edx, 8
or	ebx, edx
mov	[esp+50h+var_44], ebx
movzx	ebx, bh
mov	edx, [esp+50h+var_44]
shr	edx, 10h
movzx	edx, dl
mov	ebx, ds:(_t_im+400h)[ebx*4]
xor	ebx, ds:(_t_im+800h)[edx*4]
movzx	edx, byte ptr [esp+50h+var_44]
xor	ebx, ds:_t_im[edx*4]
mov	edx, [esp+50h+var_44]
shr	edx, 18h
xor	ebx, ds:(_t_im+0C00h)[edx*4]
mov	[eax+0D8h], ebx
movzx	ebx, byte ptr [edi+1Fh]
shl	ebx, 18h
movzx	edx, byte ptr [edi+1Eh]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi+1Ch]
or	edx, ebx
movzx	ebx, byte ptr [edi+1Dh]
shl	ebx, 8
or	edx, ebx
mov	[esp+50h+var_18], edx
movzx	ebp, dl
movzx	edi, dh
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
shr	edx, 18h
mov	ebx, ds:(_t_im+400h)[edi*4]
xor	ebx, ds:(_t_im+800h)[esi*4]
xor	ebx, ds:_t_im[ebp*4]
xor	ebx, ds:(_t_im+0C00h)[edx*4]
mov	[eax+0DCh], ebx
mov	ebx, [esp+50h+var_3C]
xor	ebx, 1
xor	ebx, ds:(_t_fl+0C00h)[ebp*4]
xor	ebx, ds:_t_fl[edi*4]
xor	ebx, ds:(_t_fl+400h)[esi*4]
xor	ebx, ds:(_t_fl+800h)[edx*4]
movzx	esi, bh
mov	edx, ebx
shr	edx, 10h
movzx	edx, dl
mov	edi, ds:(_t_im+400h)[esi*4]
xor	edi, ds:(_t_im+800h)[edx*4]
movzx	edx, bl
xor	edi, ds:_t_im[edx*4]
mov	edx, ebx
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[esp+50h+var_1C], edi
mov	[eax+0C0h], edi
mov	edx, [esp+50h+var_48]
xor	edx, ebx
mov	[esp+50h+var_48], edx
movzx	esi, dh
shr	edx, 10h
movzx	edx, dl
mov	esi, ds:(_t_im+400h)[esi*4]
xor	esi, ds:(_t_im+800h)[edx*4]
movzx	edx, byte ptr [esp+50h+var_48]
xor	esi, ds:_t_im[edx*4]
mov	edx, [esp+50h+var_48]
shr	edx, 18h
xor	esi, ds:(_t_im+0C00h)[edx*4]
mov	[esp+50h+var_28], esi
mov	[eax+0C4h], esi
mov	edx, [esp+50h+var_48]
xor	edx, [esp+50h+var_38]
mov	[esp+50h+var_38], edx
movzx	esi, dh
shr	edx, 10h
movzx	edx, dl
mov	edi, ds:(_t_im+400h)[esi*4]
xor	edi, ds:(_t_im+800h)[edx*4]
movzx	edx, byte ptr [esp+50h+var_38]
xor	edi, ds:_t_im[edx*4]
mov	edx, [esp+50h+var_38]
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[esp+50h+var_2C], edi
mov	[eax+0C8h], edi
mov	edx, [esp+50h+var_38]
xor	edx, [esp+50h+var_34]
mov	[esp+50h+var_34], edx
movzx	ebp, dl
movzx	edi, dh
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
shr	edx, 18h
mov	[esp+50h+var_3C], edx
add	edi, 100h
add	esi, 200h
mov	[esp+50h+var_30], esi
mov	edx, ds:_t_im[edi*4]
xor	edx, ds:_t_im[esi*4]
xor	edx, ds:_t_im[ebp*4]
mov	[esp+50h+var_20], edx
mov	edx, [esp+50h+var_3C]
add	edx, 300h
mov	esi, [esp+50h+var_20]
xor	esi, ds:_t_im[edx*4]
mov	[esp+50h+var_20], esi
mov	[eax+0CCh], esi
xor	ecx, ds:_t_fl[ebp*4]
xor	ecx, ds:_t_fl[edi*4]
mov	ebp, [esp+50h+var_30]
xor	ecx, ds:_t_fl[ebp*4]
xor	ecx, ds:_t_fl[edx*4]
movzx	esi, ch
mov	edx, ecx
shr	edx, 10h
movzx	edx, dl
mov	esi, ds:(_t_im+400h)[esi*4]
xor	esi, ds:(_t_im+800h)[edx*4]
movzx	edx, cl
xor	esi, ds:_t_im[edx*4]
mov	edx, ecx
shr	edx, 18h
xor	esi, ds:(_t_im+0C00h)[edx*4]
mov	[esp+50h+var_14], esi
mov	[eax+0B0h], esi
mov	edx, [esp+50h+var_40]
xor	edx, ecx
mov	[esp+50h+var_50], edx
movzx	edi, dh
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
mov	edi, ds:(_t_im+400h)[edi*4]
xor	edi, ds:(_t_im+800h)[esi*4]
movzx	esi, dl
xor	edi, ds:_t_im[esi*4]
mov	esi, edx
shr	esi, 18h
xor	edi, ds:(_t_im+0C00h)[esi*4]
mov	[esp+50h+var_30], edi
mov	[eax+0B4h], edi
mov	edx, [esp+50h+var_44]
xor	edx, [esp+50h+var_50]
mov	[esp+50h+var_44], edx
movzx	edi, dh
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
mov	edi, ds:(_t_im+400h)[edi*4]
xor	edi, ds:(_t_im+800h)[esi*4]
movzx	esi, dl
xor	edi, ds:_t_im[esi*4]
mov	esi, edx
shr	esi, 18h
xor	edi, ds:(_t_im+0C00h)[esi*4]
mov	[esp+50h+var_3C], edi
mov	[eax+0B8h], edi
xor	edx, [esp+50h+var_18]
mov	[esp+50h+var_18], edx
movzx	ebp, dl
movzx	edi, dh
mov	esi, edx
shr	esi, 10h
mov	edx, esi
movzx	esi, dl
mov	[esp+50h+var_4C], esi
mov	esi, [esp+50h+var_18]
shr	esi, 18h
mov	[esp+50h+var_24], esi
mov	esi, ds:(_t_im+400h)[edi*4]
mov	edx, [esp+50h+var_4C]
xor	esi, ds:(_t_im+800h)[edx*4]
xor	esi, ds:_t_im[ebp*4]
mov	edx, [esp+50h+var_24]
xor	esi, ds:(_t_im+0C00h)[edx*4]
mov	[esp+50h+var_40], esi
mov	[eax+0BCh], esi
mov	ebp, ds:(_t_fl+0C00h)[ebp*4]
xor	ebp, 2
xor	ebp, ds:_t_fl[edi*4]
mov	esi, [esp+50h+var_4C]
xor	ebp, ds:(_t_fl+400h)[esi*4]
xor	ebp, ds:(_t_fl+800h)[edx*4]
xor	ebx, ebp
mov	[esp+50h+var_24], ebx
mov	edx, ebp
movzx	ebx, dl
mov	edi, [esp+50h+var_1C]
xor	edi, ds:_t_im[ebx*4]
mov	edx, ebp
movzx	ebx, dh
xor	edi, ds:(_t_im+400h)[ebx*4]
mov	ebx, ebp
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_im+800h)[ebx*4]
shr	ebp, 18h
xor	edi, ds:(_t_im+0C00h)[ebp*4]
mov	[eax+0A0h], edi
mov	ebx, [esp+50h+var_24]
xor	ebx, [esp+50h+var_48]
mov	[esp+50h+var_48], ebx
mov	esi, [esp+50h+var_28]
xor	esi, edi
mov	[esp+50h+var_28], esi
mov	[eax+0A4h], esi
xor	ebx, [esp+50h+var_38]
mov	[esp+50h+var_38], ebx
xor	esi, [esp+50h+var_2C]
mov	[esp+50h+var_2C], esi
mov	[eax+0A8h], esi
mov	esi, [esp+50h+var_34]
xor	esi, ebx
mov	ebp, [esp+50h+var_2C]
xor	ebp, [esp+50h+var_20]
mov	[esp+50h+var_20], ebp
mov	[eax+0ACh], ebp
mov	edx, esi
movzx	ebx, dh
mov	ebp, esi
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
mov	ebx, ds:(_t_fl+400h)[ebx*4]
xor	ebx, ds:(_t_fl+800h)[ebp*4]
mov	edx, esi
movzx	ebp, dl
xor	ebx, ds:_t_fl[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:(_t_fl+0C00h)[ebp*4]
xor	ecx, ebx
mov	[esp+50h+var_1C], ecx
movzx	ecx, bl
mov	ecx, ds:_t_im[ecx*4]
xor	ecx, [esp+50h+var_14]
movzx	ebp, bh
xor	ecx, ds:(_t_im+400h)[ebp*4]
mov	ebp, ebx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	ecx, ds:(_t_im+800h)[ebp*4]
shr	ebx, 18h
xor	ecx, ds:(_t_im+0C00h)[ebx*4]
mov	[eax+90h], ecx
mov	ebx, [esp+50h+var_50]
xor	ebx, [esp+50h+var_1C]
mov	[esp+50h+var_34], ebx
mov	ebp, [esp+50h+var_30]
xor	ebp, ecx
mov	[esp+50h+var_30], ebp
mov	[eax+94h], ebp
xor	ebx, [esp+50h+var_44]
mov	[esp+50h+var_44], ebx
xor	ebp, [esp+50h+var_3C]
mov	[esp+50h+var_3C], ebp
mov	[eax+98h], ebp
xor	ebx, [esp+50h+var_18]
mov	[esp+50h+var_14], ebx
xor	ebp, [esp+50h+var_40]
mov	[esp+50h+var_40], ebp
mov	[eax+9Ch], ebp
movzx	edx, bl
mov	edx, ds:(_t_fl+0C00h)[edx*4]
xor	edx, 4
movzx	ebp, bh
mov	ebx, ds:_t_fl[ebp*4]
xor	ebx, edx
mov	ebp, [esp+50h+var_14]
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
mov	edx, ds:(_t_fl+400h)[ebp*4]
xor	edx, ebx
mov	ebp, [esp+50h+var_14]
shr	ebp, 18h
xor	edx, ds:(_t_fl+800h)[ebp*4]
mov	ebx, [esp+50h+var_24]
xor	ebx, edx
mov	[esp+50h+var_24], ebx
movzx	ebp, dl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, dh
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	edx, 18h
xor	edi, ds:(_t_im+0C00h)[edx*4]
mov	[eax+80h], edi
mov	ebp, [esp+50h+var_24]
xor	ebp, [esp+50h+var_48]
mov	[esp+50h+var_48], ebp
mov	edx, [esp+50h+var_28]
xor	edx, edi
mov	[esp+50h+var_28], edx
mov	[eax+84h], edx
xor	ebp, [esp+50h+var_38]
mov	[esp+50h+var_38], ebp
xor	edx, [esp+50h+var_2C]
mov	[esp+50h+var_2C], edx
mov	[eax+88h], edx
xor	ebp, esi
mov	[esp+50h+var_18], ebp
xor	edx, [esp+50h+var_20]
mov	[esp+50h+var_20], edx
mov	[eax+8Ch], edx
mov	ebx, ebp
movzx	ebp, bh
mov	esi, ebx
shr	esi, 10h
and	esi, 0FFh
mov	ebp, ds:(_t_fl+400h)[ebp*4]
xor	ebp, ds:(_t_fl+800h)[esi*4]
movzx	esi, bl
xor	ebp, ds:_t_fl[esi*4]
mov	esi, ebx
shr	esi, 18h
xor	ebp, ds:(_t_fl+0C00h)[esi*4]
mov	esi, [esp+50h+var_1C]
xor	esi, ebp
mov	[esp+50h+var_1C], esi
mov	edx, ebp
movzx	esi, dl
xor	ecx, ds:_t_im[esi*4]
mov	esi, ecx
mov	ebx, ebp
movzx	ecx, bh
xor	esi, ds:(_t_im+400h)[ecx*4]
mov	ecx, ebp
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_im+800h)[ecx*4]
shr	ebp, 18h
xor	esi, ds:(_t_im+0C00h)[ebp*4]
mov	[eax+70h], esi
mov	ebp, [esp+50h+var_1C]
xor	ebp, [esp+50h+var_34]
mov	[esp+50h+var_34], ebp
mov	edx, [esp+50h+var_30]
xor	edx, esi
mov	[esp+50h+var_30], edx
mov	[eax+74h], edx
xor	ebp, [esp+50h+var_44]
mov	[esp+50h+var_44], ebp
xor	edx, [esp+50h+var_3C]
mov	[esp+50h+var_3C], edx
mov	[eax+78h], edx
mov	ebx, [esp+50h+var_14]
xor	ebx, ebp
xor	edx, [esp+50h+var_40]
mov	[esp+50h+var_40], edx
mov	[eax+7Ch], edx
movzx	ecx, bl
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
xor	ecx, 8
movzx	ebp, bh
mov	edx, ds:_t_fl[ebp*4]
xor	edx, ecx
mov	ebp, ebx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fl+400h)[ebp*4]
xor	ecx, edx
mov	ebp, ebx
shr	ebp, 18h
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+50h+var_24]
xor	ebp, ecx
mov	[esp+50h+var_24], ebp
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+60h], edi
mov	ecx, [esp+50h+var_24]
xor	ecx, [esp+50h+var_48]
mov	[esp+50h+var_48], ecx
mov	ebp, [esp+50h+var_28]
xor	ebp, edi
mov	[esp+50h+var_28], ebp
mov	[eax+64h], ebp
xor	ecx, [esp+50h+var_38]
mov	[esp+50h+var_38], ecx
xor	ebp, [esp+50h+var_2C]
mov	[esp+50h+var_2C], ebp
mov	[eax+68h], ebp
mov	edx, [esp+50h+var_18]
xor	edx, ecx
mov	[esp+50h+var_18], edx
xor	ebp, [esp+50h+var_20]
mov	[esp+50h+var_20], ebp
mov	[eax+6Ch], ebp
mov	ecx, edx
movzx	edx, dh
mov	ebp, ecx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fl+400h)[edx*4]
xor	ecx, ds:(_t_fl+800h)[ebp*4]
movzx	ebp, byte ptr [esp+50h+var_18]
xor	ecx, ds:_t_fl[ebp*4]
mov	ebp, [esp+50h+var_18]
shr	ebp, 18h
xor	ecx, ds:(_t_fl+0C00h)[ebp*4]
mov	ebp, [esp+50h+var_1C]
xor	ebp, ecx
mov	[esp+50h+var_1C], ebp
movzx	ebp, cl
xor	esi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	esi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	esi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	esi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+50h], esi
mov	ecx, [esp+50h+var_1C]
xor	ecx, [esp+50h+var_34]
mov	[esp+50h+var_34], ecx
mov	ebp, [esp+50h+var_30]
xor	ebp, esi
mov	[esp+50h+var_30], ebp
mov	[eax+54h], ebp
xor	ecx, [esp+50h+var_44]
mov	[esp+50h+var_44], ecx
xor	ebp, [esp+50h+var_3C]
mov	[esp+50h+var_3C], ebp
mov	[eax+58h], ebp
xor	ebx, ecx
xor	ebp, [esp+50h+var_40]
mov	[esp+50h+var_40], ebp
mov	[eax+5Ch], ebp
movzx	ecx, bl
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
xor	ecx, 10h
movzx	ebp, bh
xor	ecx, ds:_t_fl[ebp*4]
mov	ebp, ebx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	ecx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+50h+var_24]
xor	ebp, ecx
mov	[esp+50h+var_24], ebp
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+40h], edi
mov	ecx, [esp+50h+var_24]
xor	ecx, [esp+50h+var_48]
mov	[esp+50h+var_48], ecx
mov	ebp, [esp+50h+var_28]
xor	ebp, edi
mov	[esp+50h+var_28], ebp
mov	[eax+44h], ebp
xor	ecx, [esp+50h+var_38]
mov	[esp+50h+var_38], ecx
xor	ebp, [esp+50h+var_2C]
mov	[esp+50h+var_2C], ebp
mov	[eax+48h], ebp
mov	edx, [esp+50h+var_18]
xor	edx, ecx
mov	[esp+50h+var_18], edx
xor	ebp, [esp+50h+var_20]
mov	[esp+50h+var_20], ebp
mov	[eax+4Ch], ebp
mov	ecx, edx
movzx	edx, dh
mov	ebp, ecx
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fl+400h)[edx*4]
xor	ecx, ds:(_t_fl+800h)[ebp*4]
movzx	ebp, byte ptr [esp+50h+var_18]
xor	ecx, ds:_t_fl[ebp*4]
mov	ebp, [esp+50h+var_18]
shr	ebp, 18h
xor	ecx, ds:(_t_fl+0C00h)[ebp*4]
mov	ebp, [esp+50h+var_1C]
xor	ebp, ecx
mov	[esp+50h+var_1C], ebp
movzx	ebp, cl
xor	esi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	esi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	esi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	esi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+30h], esi
mov	ecx, [esp+50h+var_1C]
xor	ecx, [esp+50h+var_34]
mov	[esp+50h+var_34], ecx
mov	ebp, [esp+50h+var_30]
xor	ebp, esi
mov	[esp+50h+var_30], ebp
mov	[eax+34h], ebp
xor	ecx, [esp+50h+var_44]
mov	[esp+50h+var_44], ecx
xor	ebp, [esp+50h+var_3C]
mov	[esp+50h+var_3C], ebp
mov	[eax+38h], ebp
xor	ebx, ecx
xor	ebp, [esp+50h+var_40]
mov	[esp+50h+var_40], ebp
mov	[eax+3Ch], ebp
movzx	ecx, bl
mov	ecx, ds:(_t_fl+0C00h)[ecx*4]
xor	ecx, 20h
movzx	ebp, bh
xor	ecx, ds:_t_fl[ebp*4]
mov	ebp, ebx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	ecx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+50h+var_24]
xor	ebp, ecx
mov	[esp+50h+var_24], ebp
movzx	ebp, cl
xor	edi, ds:_t_im[ebp*4]
movzx	ebp, ch
xor	edi, ds:(_t_im+400h)[ebp*4]
mov	ebp, ecx
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
xor	edi, ds:(_t_im+800h)[ebp*4]
shr	ecx, 18h
xor	edi, ds:(_t_im+0C00h)[ecx*4]
mov	[eax+20h], edi
mov	ecx, [esp+50h+var_24]
xor	ecx, [esp+50h+var_48]
mov	[esp+50h+var_48], ecx
xor	edi, [esp+50h+var_28]
mov	[eax+24h], edi
mov	ebp, [esp+50h+var_38]
xor	ebp, ecx
xor	edi, [esp+50h+var_2C]
mov	[eax+28h], edi
mov	edx, [esp+50h+var_18]
xor	edx, ebp
xor	edi, [esp+50h+var_20]
mov	[eax+2Ch], edi
movzx	ecx, dh
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
mov	ecx, ds:(_t_fl+400h)[ecx*4]
xor	ecx, ds:(_t_fl+800h)[edi*4]
movzx	edi, dl
xor	ecx, ds:_t_fl[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ecx, ds:(_t_fl+0C00h)[edi*4]
movzx	edi, cl
xor	esi, ds:_t_im[edi*4]
movzx	edi, ch
xor	esi, ds:(_t_im+400h)[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_im+800h)[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	esi, ds:(_t_im+0C00h)[edi*4]
mov	[eax+10h], esi
xor	esi, [esp+50h+var_30]
mov	[eax+14h], esi
xor	esi, [esp+50h+var_3C]
mov	[eax+18h], esi
mov	edi, [esp+50h+var_34]
xor	edi, [esp+50h+var_1C]
xor	edi, [esp+50h+var_44]
xor	ebx, edi
xor	ebx, ecx
xor	esi, [esp+50h+var_40]
mov	[eax+1Ch], esi
mov	ecx, [esp+50h+var_24]
xor	ecx, 40h
movzx	esi, bl
xor	ecx, ds:(_t_fl+0C00h)[esi*4]
movzx	esi, bh
xor	ecx, ds:_t_fl[esi*4]
mov	esi, ebx
shr	esi, 10h
and	esi, 0FFh
xor	ecx, ds:(_t_fl+400h)[esi*4]
shr	ebx, 18h
xor	ecx, ds:(_t_fl+800h)[ebx*4]
mov	[eax], ecx
xor	ecx, [esp+50h+var_48]
mov	[eax+4], ecx
xor	ebp, ecx
mov	[eax+8], ebp
xor	edx, ebp
mov	[eax+0Ch], edx
mov	dword ptr [eax+0F0h], 0
mov	byte ptr [eax+0F0h], 0E0h
add	esp, 40h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
align 10h
public _aes_decrypt_key
mov	edx, [esp+key]
mov	eax, [esp+key_len]
mov	ecx, [esp+arg_8]
cmp	eax, 20h
jz	short loc_641E8D20
jle	short loc_641E8D08
cmp	key_len_0, 0C0h
jz	short loc_641E8D12
cmp	key_len_0, 100h
jz	short loc_641E8D20
add	key_len_0, 0FFFFFF80h
jz	short loc_641E8D30
retn
align 4
cmp	key_len_0, 10h
jz	short loc_641E8D30
cmp	key_len_0, 18h
jnz	short locret_641E8D06
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_decrypt_key192
align 10h
			
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_decrypt_key256
align 10h
			
mov	[esp+key_len], cx_0
mov	[esp+key], key_0
jmp	_aes_decrypt_key128
align 10h
public _aes_encrypt
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 10h
mov	edi, [esp+20h+in]
mov	ebp, [esp+20h+cx_0]
mov	eax, ebp
movzx	esi, byte ptr [edi+3]
shl	esi, 18h
movzx	edx, byte ptr [edi+2]
shl	edx, 10h
or	esi, edx
movzx	edx, byte ptr [edi]
or	esi, edx
movzx	edx, byte ptr [edi+1]
shl	edx, 8
or	esi, edx
xor	esi, [ebp+0]
movzx	ebx, byte ptr [edi+7]
shl	ebx, 18h
movzx	edx, byte ptr [edi+6]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi+4]
or	ebx, edx
movzx	edx, byte ptr [edi+5]
shl	edx, 8
or	ebx, edx
xor	ebx, [ebp+4]
mov	[esp+20h+var_20], ebx
movzx	ecx, byte ptr [edi+0Bh]
shl	ecx, 18h
movzx	edx, byte ptr [edi+0Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [edi+8]
or	ecx, edx
movzx	edx, byte ptr [edi+9]
shl	edx, 8
or	ecx, edx
xor	ecx, [ebp+8]
movzx	edx, byte ptr [edi+0Fh]
mov	ebx, edx
shl	ebx, 18h
movzx	edx, byte ptr [edi+0Eh]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [edi+0Ch]
or	edx, ebx
movzx	edi, byte ptr [edi+0Dh]
shl	edi, 8
or	edx, edi
xor	edx, [ebp+0Ch]
mov	bl, [ebp+0F0h]
mov	byte ptr [esp+20h+var_1C], bl
cmp	bl, 0C0h
jz	loc_641E8E8C
cmp	bl, 0E0h
jz	loc_641E99A4
cmp	bl, 0A0h
jz	loc_641E905C
mov	ebx, esi
mov	eax, [esp+20h+out]
mov	[eax], bl
mov	eax, esi
shr	eax, 8
mov	ebx, [esp+20h+out]
mov	[ebx+1], al
mov	eax, esi
shr	eax, 10h
mov	[ebx+2], al
mov	eax, esi
shr	eax, 18h
mov	[ebx+3], al
mov	al, byte ptr [esp+20h+var_20]
mov	[ebx+4], al
mov	eax, [esp+20h+var_20]
shr	eax, 8
mov	[ebx+5], al
mov	eax, [esp+20h+var_20]
shr	eax, 10h
mov	[ebx+6], al
mov	ebx, [esp+20h+var_20]
shr	ebx, 18h
mov	eax, [esp+20h+out]
mov	[eax+7], bl
mov	[eax+8], cl
mov	eax, ecx
shr	eax, 8
mov	ebx, [esp+20h+out]
mov	[ebx+9], al
mov	eax, ecx
shr	eax, 10h
mov	[ebx+0Ah], al
shr	ecx, 18h
mov	[ebx+0Bh], cl
mov	[ebx+0Ch], dl
mov	eax, edx
shr	eax, 8
mov	[ebx+0Dh], al
mov	eax, edx
shr	eax, 10h
mov	[ebx+0Eh], al
shr	edx, 18h
mov	[ebx+0Fh], dl
add	esp, 10h
pop	ebx
pop	esi
pop	edi
pop	kp
retn
align 4
mov	edi, kp
mov	ebx, esi
movzx	eax, bl
mov	cx_0_0,	ds:_t_fn[eax*4]
xor	ebp, [kp+10h]
mov	ebx, [esp+20h+var_20]
movzx	eax, bh
xor	ebp, ds:(_t_fn+400h)[eax*4]
mov	eax, ecx
shr	eax, 10h
movzx	eax, al
xor	ebp, ds:(_t_fn+800h)[eax*4]
mov	eax, edx
shr	eax, 18h
mov	eax, ds:(_t_fn+0C00h)[eax*4]
xor	eax, ebp
mov	[esp+20h+var_14], eax
movzx	eax, bl
mov	ebp, ds:_t_fn[eax*4]
xor	ebp, [kp+14h]
movzx	eax, ch
xor	ebp, ds:(_t_fn+400h)[eax*4]
mov	eax, edx
shr	eax, 10h
movzx	eax, al
xor	ebp, ds:(_t_fn+800h)[eax*4]
mov	eax, esi
shr	eax, 18h
mov	eax, ds:(_t_fn+0C00h)[eax*4]
xor	eax, ebp
mov	[esp+20h+var_18], eax
movzx	eax, cl
mov	ebp, ds:_t_fn[eax*4]
xor	ebp, [kp+18h]
movzx	eax, dh
xor	ebp, ds:(_t_fn+400h)[eax*4]
mov	eax, esi
shr	eax, 10h
movzx	eax, al
xor	ebp, ds:(_t_fn+800h)[eax*4]
mov	eax, ebx
shr	eax, 18h
xor	ebp, ds:(_t_fn+0C00h)[eax*4]
movzx	edx, dl
mov	edx, ds:_t_fn[edx*4]
xor	edx, [kp+1Ch]
mov	eax, esi
movzx	esi, ah
xor	edx, ds:(_t_fn+400h)[esi*4]
shr	ebx, 10h
movzx	ebx, bl
xor	edx, ds:(_t_fn+800h)[ebx*4]
shr	ecx, 18h
xor	edx, ds:(_t_fn+0C00h)[ecx*4]
lea	eax, [kp+20h]
movzx	ecx, byte ptr [esp+20h+var_14]
mov	esi, ds:_t_fn[ecx*4]
xor	esi, [edi+20h]
mov	ebx, [esp+20h+var_18]
movzx	ecx, bh
xor	esi, ds:(_t_fn+400h)[ecx*4]
mov	ecx, ebp
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_fn+800h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	esi, ds:(_t_fn+0C00h)[ecx*4]
movzx	ecx, bl
mov	ebx, ds:_t_fn[ecx*4]
xor	ebx, [edi+24h]
mov	[esp+20h+var_1C], ebx
mov	ebx, ebp
movzx	ecx, bh
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+400h)[ecx*4]
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, [esp+20h+var_14]
shr	ecx, 18h
xor	ebx, ds:(_t_fn+0C00h)[ecx*4]
mov	[esp+20h+var_20], ebx
mov	ebx, ebp
movzx	ecx, bl
mov	ecx, ds:_t_fn[ecx*4]
xor	ecx, [edi+28h]
mov	[esp+20h+var_1C], ecx
movzx	ecx, dh
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+400h)[ecx*4]
mov	ecx, [esp+20h+var_14]
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, [esp+20h+var_18]
shr	ecx, 18h
mov	ecx, ds:(_t_fn+0C00h)[ecx*4]
xor	ecx, ebx
movzx	edx, dl
mov	edx, ds:_t_fn[edx*4]
xor	edx, [edi+2Ch]
mov	ebx, [esp+20h+var_14]
movzx	edi, bh
xor	edx, ds:(_t_fn+400h)[edi*4]
mov	edi, [esp+20h+var_18]
shr	edi, 10h
and	edi, 0FFh
xor	edx, ds:(_t_fn+800h)[edi*4]
shr	ebp, 18h
xor	edx, ds:(_t_fn+0C00h)[ebp*4]
mov	ebx, esi
movzx	edi, bl
mov	ebp, ds:_t_fn[edi*4]
xor	ebp, [kp+10h]
mov	ebx, [esp+20h+var_20]
movzx	edi, bh
xor	ebp, ds:(_t_fn+400h)[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_fn+800h)[edi*4]
mov	edi, edx
shr	edi, 18h
mov	edi, ds:(_t_fn+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+20h+var_18], edi
movzx	edi, bl
mov	edi, ds:_t_fn[edi*4]
xor	edi, [kp+14h]
movzx	ebp, ch
xor	edi, ds:(_t_fn+400h)[ebp*4]
mov	ebp, edx
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fn+800h)[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:(_t_fn+0C00h)[ebp*4]
movzx	ebp, cl
mov	ebp, ds:_t_fn[ebp*4]
xor	ebp, [kp+18h]
mov	[esp+20h+var_1C], ebp
movzx	ebp, dh
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+400h)[ebp*4]
mov	[esp+20h+var_1C], ebx
mov	ebp, esi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+800h)[ebp*4]
mov	ebp, [esp+20h+var_20]
shr	ebp, 18h
mov	ebp, ds:(_t_fn+0C00h)[ebp*4]
xor	ebp, ebx
movzx	edx, dl
mov	edx, ds:_t_fn[edx*4]
xor	edx, [kp+1Ch]
mov	ebx, esi
movzx	esi, bh
xor	edx, ds:(_t_fn+400h)[esi*4]
mov	ebx, [esp+20h+var_20]
shr	ebx, 10h
movzx	ebx, bl
xor	edx, ds:(_t_fn+800h)[ebx*4]
shr	ecx, 18h
xor	edx, ds:(_t_fn+0C00h)[ecx*4]
movzx	ecx, byte ptr [esp+20h+var_18]
mov	ebx, ds:_t_fn[ecx*4]
xor	ebx, [kp+20h]
mov	ecx, edi
movzx	esi, ch
xor	ebx, ds:(_t_fn+400h)[esi*4]
mov	ecx, ebp
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	ebx, ds:(_t_fn+0C00h)[ecx*4]
mov	[esp+20h+var_14], ebx
mov	ebx, edi
movzx	ecx, bl
mov	esi, ds:_t_fn[ecx*4]
xor	esi, [kp+24h]
mov	ebx, ebp
movzx	ecx, bh
xor	esi, ds:(_t_fn+400h)[ecx*4]
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_fn+800h)[ecx*4]
mov	ecx, [esp+20h+var_18]
shr	ecx, 18h
xor	esi, ds:(_t_fn+0C00h)[ecx*4]
movzx	ecx, bl
mov	ebx, ds:_t_fn[ecx*4]
xor	ebx, [kp+28h]
movzx	ecx, dh
xor	ebx, ds:(_t_fn+400h)[ecx*4]
mov	ecx, [esp+20h+var_18]
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	ebx, ds:(_t_fn+0C00h)[ecx*4]
mov	[esp+20h+var_1C], ebx
movzx	edx, dl
mov	edx, ds:_t_fn[edx*4]
xor	edx, [kp+2Ch]
mov	ebx, [esp+20h+var_18]
movzx	ecx, bh
xor	edx, ds:(_t_fn+400h)[ecx*4]
shr	edi, 10h
and	edi, 0FFh
xor	edx, ds:(_t_fn+800h)[edi*4]
shr	ebp, 18h
mov	edi, ds:(_t_fn+0C00h)[ebp*4]
xor	edi, edx
movzx	edx, byte ptr [esp+20h+var_14]
mov	ebx, ds:_t_fn[edx*4]
xor	ebx, [kp+30h]
mov	ecx, esi
movzx	edx, ch
xor	ebx, ds:(_t_fn+400h)[edx*4]
mov	edx, [esp+20h+var_1C]
shr	edx, 10h
movzx	edx, dl
xor	ebx, ds:(_t_fn+800h)[edx*4]
mov	edx, edi
shr	edx, 18h
xor	ebx, ds:(_t_fn+0C00h)[edx*4]
mov	[esp+20h+var_20], ebx
movzx	edx, cl
mov	ecx, ds:_t_fn[edx*4]
mov	ebx, [kp+34h]
xor	ebx, ecx
mov	ecx, [esp+20h+var_1C]
movzx	edx, ch
mov	ecx, ds:(_t_fn+400h)[edx*4]
xor	ecx, ebx
mov	edx, edi
shr	edx, 10h
movzx	edx, dl
xor	ecx, ds:(_t_fn+800h)[edx*4]
mov	edx, [esp+20h+var_14]
shr	edx, 18h
xor	ecx, ds:(_t_fn+0C00h)[edx*4]
movzx	edx, byte ptr [esp+20h+var_1C]
mov	edx, ds:_t_fn[edx*4]
mov	ebx, [kp+38h]
xor	ebx, edx
mov	edx, edi
movzx	ebp, dh
xor	ebx, ds:(_t_fn+400h)[ebp*4]
mov	ebp, [esp+20h+var_14]
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
mov	edx, ds:(_t_fn+800h)[ebp*4]
xor	edx, ebx
mov	ebp, esi
shr	ebp, 18h
xor	edx, ds:(_t_fn+0C00h)[ebp*4]
and	edi, 0FFh
mov	ebp, ds:_t_fn[edi*4]
xor	ebp, [kp+3Ch]
mov	ebx, [esp+20h+var_14]
movzx	edi, bh
xor	ebp, ds:(_t_fn+400h)[edi*4]
shr	esi, 10h
and	esi, 0FFh
xor	ebp, ds:(_t_fn+800h)[esi*4]
mov	esi, [esp+20h+var_1C]
shr	esi, 18h
xor	ebp, ds:(_t_fn+0C00h)[esi*4]
movzx	esi, byte ptr [esp+20h+var_20]
mov	edi, ds:_t_fn[esi*4]
xor	edi, [kp+40h]
movzx	esi, ch
xor	edi, ds:(_t_fn+400h)[esi*4]
mov	esi, edx
shr	esi, 10h
and	esi, 0FFh
xor	edi, ds:(_t_fn+800h)[esi*4]
mov	esi, ebp
shr	esi, 18h
mov	esi, ds:(_t_fn+0C00h)[esi*4]
xor	esi, edi
mov	[esp+20h+var_18], esi
movzx	esi, cl
mov	edi, ds:_t_fn[esi*4]
xor	edi, [kp+44h]
movzx	esi, dh
xor	edi, ds:(_t_fn+400h)[esi*4]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
xor	edi, ds:(_t_fn+800h)[esi*4]
mov	esi, [esp+20h+var_20]
shr	esi, 18h
mov	esi, ds:(_t_fn+0C00h)[esi*4]
xor	esi, edi
mov	[esp+20h+var_1C], esi
movzx	esi, dl
mov	esi, ds:_t_fn[esi*4]
xor	esi, [kp+48h]
mov	ebx, ebp
movzx	edi, bh
xor	esi, ds:(_t_fn+400h)[edi*4]
mov	edi, [esp+20h+var_20]
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_fn+800h)[edi*4]
mov	edi, ecx
shr	edi, 18h
xor	esi, ds:(_t_fn+0C00h)[edi*4]
movzx	ebp, bl
mov	edi, ds:_t_fn[ebp*4]
xor	edi, [kp+4Ch]
mov	ebx, [esp+20h+var_20]
movzx	ebp, bh
xor	edi, ds:(_t_fn+400h)[ebp*4]
shr	ecx, 10h
movzx	ecx, cl
xor	edi, ds:(_t_fn+800h)[ecx*4]
shr	edx, 18h
xor	edi, ds:(_t_fn+0C00h)[edx*4]
mov	edx, edi
movzx	ecx, byte ptr [esp+20h+var_18]
mov	edi, ds:_t_fn[ecx*4]
xor	edi, [kp+50h]
mov	ebx, [esp+20h+var_1C]
movzx	ecx, bh
xor	edi, ds:(_t_fn+400h)[ecx*4]
mov	ecx, esi
shr	ecx, 10h
movzx	ecx, cl
xor	edi, ds:(_t_fn+800h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	edi, ds:(_t_fn+0C00h)[ecx*4]
movzx	ecx, bl
mov	ebx, ds:_t_fn[ecx*4]
mov	ebp, [kp+54h]
xor	ebp, ebx
mov	ebx, esi
movzx	ecx, bh
mov	ebx, ds:(_t_fn+400h)[ecx*4]
xor	ebx, ebp
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, [esp+20h+var_18]
shr	ecx, 18h
xor	ebx, ds:(_t_fn+0C00h)[ecx*4]
mov	[esp+20h+var_14], ebx
mov	ecx, esi
movzx	ebx, cl
mov	ecx, ds:_t_fn[ebx*4]
xor	ecx, [kp+58h]
movzx	ebp, dh
mov	ebx, ds:(_t_fn+400h)[ebp*4]
xor	ebx, ecx
mov	ebp, [esp+20h+var_18]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fn+800h)[ebp*4]
xor	ecx, ebx
mov	ebp, [esp+20h+var_1C]
shr	ebp, 18h
xor	ecx, ds:(_t_fn+0C00h)[ebp*4]
movzx	edx, dl
mov	ebp, ds:_t_fn[edx*4]
xor	ebp, [kp+5Ch]
mov	edx, [esp+20h+var_18]
movzx	ebx, dh
xor	ebp, ds:(_t_fn+400h)[ebx*4]
mov	edx, [esp+20h+var_1C]
shr	edx, 10h
movzx	edx, dl
xor	ebp, ds:(_t_fn+800h)[edx*4]
shr	esi, 18h
xor	ebp, ds:(_t_fn+0C00h)[esi*4]
mov	edx, edi
movzx	ebx, dl
mov	esi, ds:_t_fn[ebx*4]
xor	esi, [kp+60h]
mov	ebx, [esp+20h+var_14]
movzx	edx, bh
xor	esi, ds:(_t_fn+400h)[edx*4]
mov	edx, ecx
shr	edx, 10h
movzx	edx, dl
xor	esi, ds:(_t_fn+800h)[edx*4]
mov	edx, ebp
shr	edx, 18h
mov	edx, ds:(_t_fn+0C00h)[edx*4]
xor	edx, esi
mov	[esp+20h+var_18], edx
movzx	edx, bl
mov	esi, ds:_t_fn[edx*4]
xor	esi, [kp+64h]
movzx	edx, ch
xor	esi, ds:(_t_fn+400h)[edx*4]
mov	edx, ebp
shr	edx, 10h
movzx	edx, dl
xor	esi, ds:(_t_fn+800h)[edx*4]
mov	edx, edi
shr	edx, 18h
mov	edx, ds:(_t_fn+0C00h)[edx*4]
xor	edx, esi
mov	[esp+20h+var_1C], edx
movzx	edx, cl
mov	edx, ds:_t_fn[edx*4]
mov	ebx, [kp+68h]
xor	ebx, edx
mov	edx, ebp
movzx	esi, dh
mov	edx, ds:(_t_fn+400h)[esi*4]
xor	edx, ebx
mov	esi, edi
shr	esi, 10h
and	esi, 0FFh
xor	edx, ds:(_t_fn+800h)[esi*4]
mov	esi, [esp+20h+var_14]
shr	esi, 18h
xor	edx, ds:(_t_fn+0C00h)[esi*4]
mov	ebx, ebp
movzx	ebp, bl
mov	esi, ds:_t_fn[ebp*4]
xor	esi, [kp+6Ch]
mov	ebx, edi
movzx	edi, bh
xor	esi, ds:(_t_fn+400h)[edi*4]
mov	ebx, [esp+20h+var_14]
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_fn+800h)[ebx*4]
shr	ecx, 18h
mov	edi, ds:(_t_fn+0C00h)[ecx*4]
xor	edi, esi
movzx	ecx, byte ptr [esp+20h+var_18]
mov	esi, ds:_t_fn[ecx*4]
xor	esi, [kp+70h]
mov	ebx, [esp+20h+var_1C]
movzx	ecx, bh
xor	esi, ds:(_t_fn+400h)[ecx*4]
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_fn+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	esi, ds:(_t_fn+0C00h)[ecx*4]
movzx	ecx, bl
mov	ebx, ds:_t_fn[ecx*4]
xor	ebx, [kp+74h]
movzx	ecx, dh
xor	ebx, ds:(_t_fn+400h)[ecx*4]
mov	ecx, edi
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fn+800h)[ecx*4]
mov	ecx, [esp+20h+var_18]
shr	ecx, 18h
xor	ebx, ds:(_t_fn+0C00h)[ecx*4]
mov	[esp+20h+var_20], ebx
movzx	ecx, dl
mov	ecx, ds:_t_fn[ecx*4]
mov	ebx, [kp+78h]
xor	ebx, ecx
mov	ecx, edi
movzx	ebp, ch
xor	ebx, ds:(_t_fn+400h)[ebp*4]
mov	ebp, [esp+20h+var_18]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_fn+800h)[ebp*4]
xor	ecx, ebx
mov	ebp, [esp+20h+var_1C]
shr	ebp, 18h
xor	ecx, ds:(_t_fn+0C00h)[ebp*4]
and	edi, 0FFh
mov	edi, ds:_t_fn[edi*4]
xor	edi, [kp+7Ch]
mov	ebx, [esp+20h+var_18]
movzx	ebp, bh
xor	edi, ds:(_t_fn+400h)[ebp*4]
mov	ebp, [esp+20h+var_1C]
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_fn+800h)[ebp*4]
shr	edx, 18h
xor	edi, ds:(_t_fn+0C00h)[edx*4]
mov	ebx, esi
movzx	edx, bl
mov	ebp, ds:_t_fn[edx*4]
xor	ebp, [kp+80h]
mov	ebx, [esp+20h+var_20]
movzx	edx, bh
xor	ebp, ds:(_t_fn+400h)[edx*4]
mov	edx, ecx
shr	edx, 10h
movzx	edx, dl
xor	ebp, ds:(_t_fn+800h)[edx*4]
mov	edx, edi
shr	edx, 18h
mov	edx, ds:(_t_fn+0C00h)[edx*4]
xor	edx, ebp
mov	[esp+20h+var_14], edx
movzx	edx, bl
mov	edx, ds:_t_fn[edx*4]
xor	edx, [kp+84h]
movzx	ebp, ch
xor	edx, ds:(_t_fn+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edx, ds:(_t_fn+800h)[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edx, ds:(_t_fn+0C00h)[ebp*4]
movzx	ebp, cl
mov	ebp, ds:_t_fn[ebp*4]
xor	ebp, [kp+88h]
mov	[esp+20h+var_1C], ebp
mov	ebx, edi
movzx	ebp, bh
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+400h)[ebp*4]
mov	[esp+20h+var_1C], ebx
mov	ebp, esi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
mov	ebx, [esp+20h+var_1C]
xor	ebx, ds:(_t_fn+800h)[ebp*4]
mov	ebp, [esp+20h+var_20]
shr	ebp, 18h
mov	ebp, ds:(_t_fn+0C00h)[ebp*4]
xor	ebp, ebx
and	edi, 0FFh
mov	edi, ds:_t_fn[edi*4]
xor	edi, [kp+8Ch]
mov	ebx, esi
movzx	esi, bh
xor	edi, ds:(_t_fn+400h)[esi*4]
mov	ebx, [esp+20h+var_20]
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_fn+800h)[ebx*4]
shr	ecx, 18h
xor	edi, ds:(_t_fn+0C00h)[ecx*4]
mov	ecx, edi
movzx	ebx, byte ptr [esp+20h+var_14]
mov	edi, ds:_t_fn[ebx*4]
xor	edi, [kp+90h]
movzx	ebx, dh
xor	edi, ds:(_t_fn+400h)[ebx*4]
mov	ebx, ebp
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_fn+800h)[ebx*4]
mov	ebx, ecx
shr	ebx, 18h
xor	edi, ds:(_t_fn+0C00h)[ebx*4]
movzx	ebx, dl
mov	esi, ds:_t_fn[ebx*4]
xor	esi, [kp+94h]
mov	ebx, ebp
movzx	ebx, bh
xor	esi, ds:(_t_fn+400h)[ebx*4]
mov	ebx, ecx
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_fn+800h)[ebx*4]
mov	ebx, [esp+20h+var_14]
shr	ebx, 18h
mov	ebx, ds:(_t_fn+0C00h)[ebx*4]
xor	ebx, esi
mov	[esp+20h+var_18], ebx
mov	ebx, ebp
movzx	esi, bl
mov	esi, ds:_t_fn[esi*4]
xor	esi, [kp+98h]
movzx	ebx, ch
xor	esi, ds:(_t_fn+400h)[ebx*4]
mov	ebx, [esp+20h+var_14]
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_fn+800h)[ebx*4]
mov	ebx, edx
shr	ebx, 18h
mov	ebx, ds:(_t_fn+0C00h)[ebx*4]
xor	ebx, esi
mov	[esp+20h+var_1C], ebx
movzx	ecx, cl
mov	ebx, ds:_t_fn[ecx*4]
mov	esi, [kp+9Ch]
xor	esi, ebx
mov	ebx, [esp+20h+var_14]
movzx	ecx, bh
mov	ebx, ds:(_t_fn+400h)[ecx*4]
xor	ebx, esi
shr	edx, 10h
movzx	edx, dl
xor	ebx, ds:(_t_fn+800h)[edx*4]
shr	ebp, 18h
mov	edx, ds:(_t_fn+0C00h)[ebp*4]
xor	edx, ebx
mov	ebx, edi
movzx	ecx, bl
mov	esi, ds:_t_fl[ecx*4]
xor	esi, [kp+0A0h]
mov	ebx, [esp+20h+var_18]
movzx	ecx, bh
xor	esi, ds:(_t_fl+400h)[ecx*4]
mov	ecx, [esp+20h+var_1C]
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_fl+800h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	esi, ds:(_t_fl+0C00h)[ecx*4]
movzx	ecx, bl
mov	ebx, ds:_t_fl[ecx*4]
mov	ebp, [kp+0A4h]
xor	ebp, ebx
mov	ebx, [esp+20h+var_1C]
movzx	ecx, bh
mov	ebx, ds:(_t_fl+400h)[ecx*4]
xor	ebx, ebp
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_fl+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	ebx, ds:(_t_fl+0C00h)[ecx*4]
mov	[esp+20h+var_20], ebx
movzx	ecx, byte ptr [esp+20h+var_1C]
mov	ecx, ds:_t_fl[ecx*4]
xor	ecx, [kp+0A8h]
movzx	ebp, dh
xor	ecx, ds:(_t_fl+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	ecx, ds:(_t_fl+800h)[ebp*4]
mov	ebp, [esp+20h+var_18]
shr	ebp, 18h
xor	ecx, ds:(_t_fl+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_fl[edx*4]
xor	edx, [kp+0ACh]
mov	kp, edi
movzx	edi, ah
xor	edx, ds:(_t_fl+400h)[edi*4]
mov	eax, [esp+20h+var_18]
shr	eax, 10h
movzx	eax, al
xor	edx, ds:(_t_fl+800h)[eax*4]
mov	eax, [esp+20h+var_1C]
shr	eax, 18h
xor	edx, ds:(_t_fl+0C00h)[eax*4]
jmp	loc_641E8E02
align 4
mov	ebx, esi
movzx	eax, bl
mov	edi, ds:_t_fn[eax*4]
xor	edi, [kp+10h]
mov	ebx, [esp+20h+var_20]
movzx	eax, bh
xor	edi, ds:(_t_fn+400h)[eax*4]
mov	eax, ecx
shr	eax, 10h
movzx	eax, al
xor	edi, ds:(_t_fn+800h)[eax*4]
mov	eax, edx
shr	eax, 18h
mov	eax, ds:(_t_fn+0C00h)[eax*4]
xor	eax, edi
mov	[esp+20h+var_14], eax
movzx	eax, bl
mov	edi, ds:_t_fn[eax*4]
xor	edi, [kp+14h]
movzx	eax, ch
xor	edi, ds:(_t_fn+400h)[eax*4]
mov	eax, edx
shr	eax, 10h
movzx	eax, al
xor	edi, ds:(_t_fn+800h)[eax*4]
mov	eax, esi
shr	eax, 18h
mov	eax, ds:(_t_fn+0C00h)[eax*4]
xor	eax, edi
mov	[esp+20h+var_18], eax
movzx	eax, cl
mov	edi, ds:_t_fn[eax*4]
xor	edi, [kp+18h]
movzx	eax, dh
xor	edi, ds:(_t_fn+400h)[eax*4]
mov	eax, esi
shr	eax, 10h
movzx	eax, al
xor	edi, ds:(_t_fn+800h)[eax*4]
mov	eax, ebx
shr	eax, 18h
mov	eax, ds:(_t_fn+0C00h)[eax*4]
xor	eax, edi
mov	[esp+20h+var_1C], eax
movzx	edx, dl
mov	eax, ds:_t_fn[edx*4]
xor	eax, [kp+1Ch]
mov	edx, esi
movzx	esi, dh
xor	eax, ds:(_t_fn+400h)[esi*4]
shr	ebx, 10h
movzx	ebx, bl
xor	eax, ds:(_t_fn+800h)[ebx*4]
shr	ecx, 18h
xor	eax, ds:(_t_fn+0C00h)[ecx*4]
lea	edi, [kp+20h]
movzx	edx, byte ptr [esp+20h+var_14]
mov	esi, ds:_t_fn[edx*4]
xor	esi, [cx_0_0+20h]
mov	ecx, [esp+20h+var_18]
movzx	edx, ch
xor	esi, ds:(_t_fn+400h)[edx*4]
mov	edx, [esp+20h+var_1C]
shr	edx, 10h
movzx	edx, dl
xor	esi, ds:(_t_fn+800h)[edx*4]
mov	edx, eax
shr	edx, 18h
xor	esi, ds:(_t_fn+0C00h)[edx*4]
movzx	edx, cl
mov	ebx, ds:_t_fn[edx*4]
xor	ebx, [cx_0_0+24h]
mov	ecx, [esp+20h+var_1C]
movzx	edx, ch
xor	ebx, ds:(_t_fn+400h)[edx*4]
mov	edx, eax
shr	edx, 10h
movzx	edx, dl
xor	ebx, ds:(_t_fn+800h)[edx*4]
mov	edx, [esp+20h+var_14]
shr	edx, 18h
xor	ebx, ds:(_t_fn+0C00h)[edx*4]
mov	[esp+20h+var_20], ebx
movzx	edx, cl
mov	ecx, ds:_t_fn[edx*4]
xor	ecx, [cx_0_0+28h]
movzx	edx, ah
xor	ecx, ds:(_t_fn+400h)[edx*4]
mov	edx, [esp+20h+var_14]
shr	edx, 10h
movzx	edx, dl
xor	ecx, ds:(_t_fn+800h)[edx*4]
mov	edx, [esp+20h+var_18]
shr	edx, 18h
xor	ecx, ds:(_t_fn+0C00h)[edx*4]
movzx	eax, al
mov	edx, ds:_t_fn[eax*4]
xor	edx, [cx_0_0+2Ch]
mov	ebx, [esp+20h+var_14]
movzx	eax, bh
xor	edx, ds:(_t_fn+400h)[eax*4]
mov	eax, [esp+20h+var_18]
shr	eax, 10h
movzx	eax, al
xor	edx, ds:(_t_fn+800h)[eax*4]
mov	eax, [esp+20h+var_1C]
shr	eax, 18h
xor	edx, ds:(_t_fn+0C00h)[eax*4]
jmp	loc_641E8E8E
align 10h
public _silc_aes_ctr_encrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 28h
mov	edi, [esp+38h+context]
mov	ebp, [esp+38h+src]
mov	ecx, [esp+38h+dst]
mov	esi, [esp+38h+iv]
movzx	eax, byte ptr [edi+0F2h]
test	i, i
jnz	short loc_641E9B94
mov	al, 10h
mov	edx, [esp+38h+len]
test	edx, edx
jz	loc_641E9CDC
lea	edx, [context_0+0F4h]
mov	[esp+38h+var_14], edx
xor	ebx, ebx
lea	edx, [iv_0+0Fh]
mov	[esp+38h+var_28], edx
lea	edx, [iv_0+0Eh]
mov	[esp+38h+var_24], edx
lea	edx, [iv_0+0Dh]
mov	[esp+38h+var_20], edx
lea	edx, [iv_0+0Ch]
mov	[esp+38h+var_1C], edx
lea	edx, [iv_0+0Bh]
mov	[esp+38h+var_18], edx
jmp	short loc_641E9BF0
align 4
mov	edx, i
inc	i
mov	dl, [context_0+edx+0F4h]
xor	dl, [src_0+ebx+0]
mov	[ecx+ebx], dl
inc	ebx
cmp	ebx, [esp+38h+len]
jz	loc_641E9CDC
cmp	i, 10h
jnz	short loc_641E9BD4
mov	edx, [esp+38h+var_28]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641E9CB2
mov	edx, [esp+38h+var_24]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641E9CB2
mov	edx, [esp+38h+var_20]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641E9CB2
mov	edx, [esp+38h+var_1C]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	short loc_641E9CB2
mov	edx, [esp+38h+var_18]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+0Ah]
inc	eax
mov	[iv_0+0Ah], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+9]
inc	eax
mov	[iv_0+9], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+8]
inc	eax
mov	[iv_0+8], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+7]
inc	eax
mov	[iv_0+7], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+6]
inc	eax
mov	[iv_0+6], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+5]
inc	eax
mov	[iv_0+5], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+4]
inc	eax
mov	[iv_0+4], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+3]
inc	eax
mov	[iv_0+3], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+2]
inc	eax
mov	[iv_0+2], al
test	al, al
jnz	short loc_641E9CB2
mov	al, [iv_0+1]
inc	eax
mov	[iv_0+1], al
test	al, al
jnz	short loc_641E9CB2
inc	byte ptr [iv_0]
			
mov	[esp+38h+cx_0],	context_0 
mov	eax, [esp+38h+var_14]
mov	[esp+38h+out], eax 
mov	[esp+38h+in], iv_0 
mov	[esp+38h+var_2C], dst_0
call	_aes_encrypt
mov	eax, 1
xor	edx, edx
mov	ecx, [esp+38h+var_2C]
jmp	loc_641E9BD7
align 4
			
mov	[context_0+0F2h], al
mov	al, 1
add	esp, 28h
pop	ebx
pop	iv_0
pop	context_0
pop	src_0
retn
public _aes_decrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 14h
mov	eax, [esp+24h+in]
movzx	esi, byte ptr [eax+3]
shl	esi, 18h
movzx	edx, byte ptr [eax+2]
shl	edx, 10h
or	esi, edx
movzx	edx, byte ptr [eax]
or	esi, edx
movzx	edx, byte ptr [eax+1]
shl	edx, 8
or	esi, edx
mov	edx, [esp+24h+cx_0]
xor	esi, [edx]
movzx	ebx, byte ptr [eax+7]
shl	ebx, 18h
movzx	edx, byte ptr [eax+6]
shl	edx, 10h
or	ebx, edx
movzx	edx, byte ptr [eax+4]
or	ebx, edx
movzx	edx, byte ptr [eax+5]
shl	edx, 8
or	ebx, edx
mov	ecx, [esp+24h+cx_0]
xor	ebx, [ecx+4]
mov	[esp+24h+var_24], ebx
movzx	ecx, byte ptr [eax+0Bh]
shl	ecx, 18h
movzx	edx, byte ptr [eax+0Ah]
shl	edx, 10h
or	ecx, edx
movzx	edx, byte ptr [eax+8]
or	ecx, edx
movzx	edx, byte ptr [eax+9]
shl	edx, 8
or	ecx, edx
mov	ebx, [esp+24h+cx_0]
xor	ecx, [ebx+8]
movzx	edi, byte ptr [eax+0Fh]
shl	edi, 18h
movzx	edx, byte ptr [eax+0Eh]
shl	edx, 10h
or	edx, edi
movzx	edi, byte ptr [eax+0Ch]
or	edi, edx
movzx	edx, byte ptr [eax+0Dh]
shl	edx, 8
or	edx, edi
xor	edx, [ebx+0Ch]
mov	edi, ebx
mov	bl, [ebx+0F0h]
mov	al, bl
shr	al, 2
movzx	eax, al
mov	[esp+24h+var_14], eax
lea	eax, [edi+eax*4]
cmp	bl, 0C0h
jz	loc_641EA023
cmp	bl, 0E0h
jz	loc_641E9E3C
cmp	bl, 0A0h
jz	loc_641EA20B
mov	ebx, esi
mov	edi, [esp+24h+out]
mov	[edi], bl
mov	kp, esi
shr	eax, 8
mov	[edi+1], al
mov	eax, esi
shr	eax, 10h
mov	[edi+2], al
mov	eax, esi
shr	eax, 18h
mov	[edi+3], al
mov	al, byte ptr [esp+24h+var_24]
mov	[edi+4], al
mov	eax, [esp+24h+var_24]
shr	eax, 8
mov	[edi+5], al
mov	eax, [esp+24h+var_24]
shr	eax, 10h
mov	[edi+6], al
mov	ebx, [esp+24h+var_24]
shr	ebx, 18h
mov	[edi+7], bl
mov	[edi+8], cl
mov	eax, ecx
shr	eax, 8
mov	[edi+9], al
mov	eax, ecx
shr	eax, 10h
mov	[edi+0Ah], al
shr	ecx, 18h
mov	[edi+0Bh], cl
mov	[edi+0Ch], dl
mov	eax, edx
shr	eax, 8
mov	[edi+0Dh], al
mov	eax, edx
shr	eax, 10h
mov	[edi+0Eh], al
shr	edx, 18h
mov	[edi+0Fh], dl
add	esp, 14h
pop	ebx
pop	esi
pop	edi
pop	ebp
retn
align 4
mov	ebx, esi
movzx	edi, bl
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-0D0h]
movzx	edi, dh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, [esp+24h+var_24]
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_1C], edi
movzx	edi, byte ptr [esp+24h+var_24]
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-0CCh]
mov	ebx, esi
movzx	edi, bh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, ecx
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_20], edi
movzx	edi, cl
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-0C8h]
mov	ebx, [esp+24h+var_24]
movzx	ebp, bh
xor	edi, ds:(_t_in+400h)[ebp*4]
mov	ebp, esi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_in+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_in+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-0C4h]
movzx	ecx, ch
xor	edx, ds:(_t_in+400h)[ecx*4]
mov	ebx, [esp+24h+var_24]
shr	ebx, 10h
movzx	ebx, bl
xor	edx, ds:(_t_in+800h)[ebx*4]
shr	esi, 18h
xor	edx, ds:(_t_in+0C00h)[esi*4]
movzx	ecx, byte ptr [esp+24h+var_1C]
mov	esi, ds:_t_in[ecx*4]
xor	esi, [kp-0C0h]
movzx	ecx, dh
xor	esi, ds:(_t_in+400h)[ecx*4]
mov	ecx, edi
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_in+800h)[ecx*4]
mov	ecx, [esp+24h+var_20]
shr	ecx, 18h
xor	esi, ds:(_t_in+0C00h)[ecx*4]
movzx	ecx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_in[ecx*4]
mov	ebp, [kp-0BCh]
xor	ebp, ebx
mov	ebx, [esp+24h+var_1C]
movzx	ecx, bh
mov	ebx, ds:(_t_in+400h)[ecx*4]
xor	ebx, ebp
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_in+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	ebx, ds:(_t_in+0C00h)[ecx*4]
mov	[esp+24h+var_24], ebx
mov	ebx, edi
movzx	ecx, bl
mov	ecx, ds:_t_in[ecx*4]
xor	ecx, [kp-0B8h]
mov	ebx, [esp+24h+var_20]
movzx	ebp, bh
xor	ecx, ds:(_t_in+400h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	ecx, ds:(_t_in+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ecx, ds:(_t_in+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-0B4h]
mov	ebx, edi
movzx	edi, bh
xor	edx, ds:(_t_in+400h)[edi*4]
mov	ebp, [esp+24h+var_20]
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edx, ds:(_t_in+800h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 18h
xor	edx, ds:(_t_in+0C00h)[ebp*4]
mov	ebx, esi
movzx	edi, bl
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-0B0h]
movzx	edi, dh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, [esp+24h+var_24]
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_1C], edi
movzx	edi, byte ptr [esp+24h+var_24]
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-0ACh]
mov	ebx, esi
movzx	edi, bh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, ecx
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_20], edi
movzx	edi, cl
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-0A8h]
mov	ebx, [esp+24h+var_24]
movzx	ebp, bh
xor	edi, ds:(_t_in+400h)[ebp*4]
mov	ebp, esi
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	edi, ds:(_t_in+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_in+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-0A4h]
movzx	ecx, ch
xor	edx, ds:(_t_in+400h)[ecx*4]
mov	ebx, [esp+24h+var_24]
shr	ebx, 10h
movzx	ebx, bl
xor	edx, ds:(_t_in+800h)[ebx*4]
shr	esi, 18h
xor	edx, ds:(_t_in+0C00h)[esi*4]
movzx	ecx, byte ptr [esp+24h+var_1C]
mov	esi, ds:_t_in[ecx*4]
xor	esi, [kp-0A0h]
movzx	ecx, dh
xor	esi, ds:(_t_in+400h)[ecx*4]
mov	ecx, edi
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_in+800h)[ecx*4]
mov	ecx, [esp+24h+var_20]
shr	ecx, 18h
xor	esi, ds:(_t_in+0C00h)[ecx*4]
movzx	ecx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_in[ecx*4]
mov	ebp, [kp-9Ch]
xor	ebp, ebx
mov	ebx, [esp+24h+var_1C]
movzx	ecx, bh
mov	ebx, ds:(_t_in+400h)[ecx*4]
xor	ebx, ebp
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_in+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	ebx, ds:(_t_in+0C00h)[ecx*4]
mov	[esp+24h+var_24], ebx
mov	ebx, edi
movzx	ecx, bl
mov	ecx, ds:_t_in[ecx*4]
xor	ecx, [kp-98h]
mov	ebx, [esp+24h+var_20]
movzx	ebp, bh
xor	ecx, ds:(_t_in+400h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	ecx, ds:(_t_in+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ecx, ds:(_t_in+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-94h]
mov	ebx, edi
movzx	edi, bh
xor	edx, ds:(_t_in+400h)[edi*4]
mov	edi, [esp+24h+var_20]
shr	edi, 10h
and	edi, 0FFh
xor	edx, ds:(_t_in+800h)[edi*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 18h
xor	edx, ds:(_t_in+0C00h)[ebp*4]
mov	ebx, esi
movzx	edi, bl
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-90h]
movzx	edi, dh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, ecx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, [esp+24h+var_24]
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_18], edi
movzx	edi, byte ptr [esp+24h+var_24]
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-8Ch]
mov	ebx, esi
movzx	edi, bh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, ecx
shr	edi, 18h
mov	edi, ds:(_t_in+0C00h)[edi*4]
xor	edi, ebp
mov	[esp+24h+var_20], edi
movzx	edi, cl
mov	ebp, ds:_t_in[edi*4]
xor	ebp, [kp-88h]
mov	ebx, [esp+24h+var_24]
movzx	edi, bh
xor	ebp, ds:(_t_in+400h)[edi*4]
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
xor	ebp, ds:(_t_in+800h)[edi*4]
mov	edi, edx
shr	edi, 18h
xor	ebp, ds:(_t_in+0C00h)[edi*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-84h]
movzx	ecx, ch
xor	edx, ds:(_t_in+400h)[ecx*4]
shr	ebx, 10h
movzx	ebx, bl
xor	edx, ds:(_t_in+800h)[ebx*4]
shr	esi, 18h
xor	edx, ds:(_t_in+0C00h)[esi*4]
movzx	ecx, byte ptr [esp+24h+var_18]
mov	ebx, ds:_t_in[ecx*4]
xor	ebx, [kp-80h]
movzx	ecx, dh
xor	ebx, ds:(_t_in+400h)[ecx*4]
mov	ecx, ebp
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_in+800h)[ecx*4]
mov	ecx, [esp+24h+var_20]
shr	ecx, 18h
xor	ebx, ds:(_t_in+0C00h)[ecx*4]
mov	[esp+24h+var_1C], ebx
movzx	ecx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_in[ecx*4]
mov	esi, [kp-7Ch]
xor	esi, ebx
mov	ebx, [esp+24h+var_18]
movzx	ecx, bh
mov	ebx, ds:(_t_in+400h)[ecx*4]
xor	ebx, esi
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_in+800h)[ecx*4]
mov	ecx, ebp
shr	ecx, 18h
xor	ebx, ds:(_t_in+0C00h)[ecx*4]
mov	ecx, ebp
movzx	esi, cl
mov	esi, ds:_t_in[esi*4]
xor	esi, [kp-78h]
mov	ecx, [esp+24h+var_20]
movzx	edi, ch
xor	esi, ds:(_t_in+400h)[edi*4]
mov	ecx, [esp+24h+var_18]
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_in+800h)[ecx*4]
mov	ecx, edx
shr	ecx, 18h
xor	esi, ds:(_t_in+0C00h)[ecx*4]
movzx	edx, dl
mov	edi, ds:_t_in[edx*4]
xor	edi, [kp-74h]
mov	edx, ebp
movzx	ebp, dh
xor	edi, ds:(_t_in+400h)[ebp*4]
mov	edx, [esp+24h+var_20]
shr	edx, 10h
movzx	edx, dl
xor	edi, ds:(_t_in+800h)[edx*4]
mov	edx, [esp+24h+var_18]
shr	edx, 18h
xor	edi, ds:(_t_in+0C00h)[edx*4]
movzx	edx, byte ptr [esp+24h+var_1C]
mov	edx, ds:_t_in[edx*4]
mov	ebp, [kp-70h]
xor	ebp, edx
mov	edx, edi
movzx	ecx, dh
mov	edx, ds:(_t_in+400h)[ecx*4]
xor	edx, ebp
mov	ecx, esi
shr	ecx, 10h
movzx	ecx, cl
xor	edx, ds:(_t_in+800h)[ecx*4]
mov	ecx, ebx
shr	ecx, 18h
xor	edx, ds:(_t_in+0C00h)[ecx*4]
mov	[esp+24h+var_18], edx
movzx	ecx, bl
mov	ecx, ds:_t_in[ecx*4]
mov	edx, [kp-6Ch]
xor	edx, ecx
mov	ecx, [esp+24h+var_1C]
movzx	ebp, ch
xor	edx, ds:(_t_in+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, ds:(_t_in+800h)[ebp*4]
xor	ecx, edx
mov	ebp, esi
shr	ebp, 18h
xor	ecx, ds:(_t_in+0C00h)[ebp*4]
mov	edx, esi
movzx	ebp, dl
mov	ebp, ds:_t_in[ebp*4]
xor	ebp, [kp-68h]
mov	[esp+24h+var_20], ebp
movzx	ebp, bh
mov	edx, [esp+24h+var_20]
xor	edx, ds:(_t_in+400h)[ebp*4]
mov	[esp+24h+var_20], edx
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	edx, ebp
movzx	ebp, dl
mov	edx, [esp+24h+var_20]
xor	edx, ds:(_t_in+800h)[ebp*4]
mov	ebp, edi
shr	ebp, 18h
mov	ebp, ds:(_t_in+0C00h)[ebp*4]
xor	ebp, edx
and	edi, 0FFh
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-64h]
mov	edx, esi
movzx	esi, dh
xor	edi, ds:(_t_in+400h)[esi*4]
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_in+800h)[ebx*4]
mov	ebx, [esp+24h+var_1C]
shr	ebx, 18h
xor	edi, ds:(_t_in+0C00h)[ebx*4]
mov	ebx, edi
movzx	esi, byte ptr [esp+24h+var_18]
mov	edi, ds:_t_in[esi*4]
xor	edi, [kp-60h]
movzx	esi, bh
xor	edi, ds:(_t_in+400h)[esi*4]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
xor	edi, ds:(_t_in+800h)[esi*4]
mov	esi, ecx
shr	esi, 18h
mov	esi, ds:(_t_in+0C00h)[esi*4]
xor	esi, edi
mov	[esp+24h+var_1C], esi
movzx	esi, cl
mov	edi, ds:_t_in[esi*4]
xor	edi, [kp-5Ch]
mov	edx, [esp+24h+var_18]
movzx	esi, dh
xor	edi, ds:(_t_in+400h)[esi*4]
mov	esi, ebx
shr	esi, 10h
and	esi, 0FFh
xor	edi, ds:(_t_in+800h)[esi*4]
mov	esi, ebp
shr	esi, 18h
mov	esi, ds:(_t_in+0C00h)[esi*4]
xor	esi, edi
mov	[esp+24h+var_20], esi
mov	edx, ebp
movzx	esi, dl
mov	esi, ds:_t_in[esi*4]
xor	esi, [kp-58h]
movzx	edi, ch
xor	esi, ds:(_t_in+400h)[edi*4]
mov	edi, [esp+24h+var_18]
shr	edi, 10h
and	edi, 0FFh
xor	esi, ds:(_t_in+800h)[edi*4]
mov	edi, ebx
shr	edi, 18h
xor	esi, ds:(_t_in+0C00h)[edi*4]
movzx	ebx, bl
mov	ebx, ds:_t_in[ebx*4]
xor	ebx, [kp-54h]
mov	edx, ebp
movzx	ebp, dh
xor	ebx, ds:(_t_in+400h)[ebp*4]
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_in+800h)[ecx*4]
mov	edx, [esp+24h+var_18]
shr	edx, 18h
xor	ebx, ds:(_t_in+0C00h)[edx*4]
mov	edx, ebx
movzx	ecx, byte ptr [esp+24h+var_1C]
mov	ecx, ds:_t_in[ecx*4]
xor	ecx, [kp-50h]
movzx	ebx, bh
xor	ecx, ds:(_t_in+400h)[ebx*4]
mov	ebx, esi
shr	ebx, 10h
movzx	ebx, bl
xor	ecx, ds:(_t_in+800h)[ebx*4]
mov	ebx, [esp+24h+var_20]
shr	ebx, 18h
xor	ecx, ds:(_t_in+0C00h)[ebx*4]
mov	[esp+24h+var_18], ecx
movzx	ebx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_in[ebx*4]
mov	ecx, [kp-4Ch]
xor	ecx, ebx
mov	ebx, [esp+24h+var_1C]
movzx	edi, bh
mov	ebx, ds:(_t_in+400h)[edi*4]
xor	ebx, ecx
mov	edi, edx
shr	edi, 10h
and	edi, 0FFh
xor	ebx, ds:(_t_in+800h)[edi*4]
mov	edi, esi
shr	edi, 18h
xor	ebx, ds:(_t_in+0C00h)[edi*4]
mov	ecx, esi
movzx	edi, cl
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-48h]
mov	ecx, [esp+24h+var_20]
movzx	ebp, ch
xor	edi, ds:(_t_in+400h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edi, ds:(_t_in+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	edi, ds:(_t_in+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-44h]
mov	ecx, esi
movzx	esi, ch
xor	edx, ds:(_t_in+400h)[esi*4]
mov	esi, [esp+24h+var_20]
shr	esi, 10h
and	esi, 0FFh
xor	edx, ds:(_t_in+800h)[esi*4]
mov	esi, [esp+24h+var_1C]
shr	esi, 18h
xor	edx, ds:(_t_in+0C00h)[esi*4]
mov	esi, edx
movzx	edx, byte ptr [esp+24h+var_18]
mov	ebp, ds:_t_in[edx*4]
xor	ebp, [kp-40h]
mov	ecx, esi
movzx	edx, ch
xor	ebp, ds:(_t_in+400h)[edx*4]
mov	edx, edi
shr	edx, 10h
movzx	edx, dl
xor	ebp, ds:(_t_in+800h)[edx*4]
mov	edx, ebx
shr	edx, 18h
mov	edx, ds:(_t_in+0C00h)[edx*4]
xor	edx, ebp
mov	[esp+24h+var_1C], edx
movzx	edx, bl
mov	ebp, ds:_t_in[edx*4]
xor	ebp, [kp-3Ch]
mov	ecx, [esp+24h+var_18]
movzx	edx, ch
xor	ebp, ds:(_t_in+400h)[edx*4]
mov	edx, esi
shr	edx, 10h
movzx	edx, dl
xor	ebp, ds:(_t_in+800h)[edx*4]
mov	edx, edi
shr	edx, 18h
mov	edx, ds:(_t_in+0C00h)[edx*4]
xor	edx, ebp
mov	[esp+24h+var_20], edx
mov	ecx, edi
movzx	edx, cl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-38h]
movzx	ebp, bh
xor	edx, ds:(_t_in+400h)[ebp*4]
mov	ebp, [esp+24h+var_18]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edx, ds:(_t_in+800h)[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edx, ds:(_t_in+0C00h)[ebp*4]
and	esi, 0FFh
mov	esi, ds:_t_in[esi*4]
xor	esi, [kp-34h]
mov	ecx, edi
movzx	edi, ch
xor	esi, ds:(_t_in+400h)[edi*4]
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_in+800h)[ebx*4]
mov	ecx, [esp+24h+var_18]
shr	ecx, 18h
mov	edi, ds:(_t_in+0C00h)[ecx*4]
xor	edi, esi
movzx	ecx, byte ptr [esp+24h+var_1C]
mov	ecx, ds:_t_in[ecx*4]
mov	esi, [kp-30h]
xor	esi, ecx
mov	ecx, edi
movzx	ebx, ch
mov	ecx, ds:(_t_in+400h)[ebx*4]
xor	ecx, esi
mov	ebx, edx
shr	ebx, 10h
movzx	ebx, bl
xor	ecx, ds:(_t_in+800h)[ebx*4]
mov	ebx, [esp+24h+var_20]
shr	ebx, 18h
xor	ecx, ds:(_t_in+0C00h)[ebx*4]
mov	[esp+24h+var_24], ecx
movzx	ebx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_in[ebx*4]
mov	ecx, [kp-2Ch]
xor	ecx, ebx
mov	ebx, [esp+24h+var_1C]
movzx	esi, bh
mov	ebx, ds:(_t_in+400h)[esi*4]
xor	ebx, ecx
mov	esi, edi
shr	esi, 10h
and	esi, 0FFh
xor	ebx, ds:(_t_in+800h)[esi*4]
mov	esi, edx
shr	esi, 18h
xor	ebx, ds:(_t_in+0C00h)[esi*4]
movzx	esi, dl
mov	esi, ds:_t_in[esi*4]
xor	esi, [kp-28h]
mov	ecx, [esp+24h+var_20]
movzx	ebp, ch
xor	esi, ds:(_t_in+400h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	esi, ds:(_t_in+800h)[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	esi, ds:(_t_in+0C00h)[ebp*4]
and	edi, 0FFh
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-24h]
movzx	edx, dh
xor	edi, ds:(_t_in+400h)[edx*4]
mov	edx, [esp+24h+var_20]
shr	edx, 10h
movzx	edx, dl
xor	edi, ds:(_t_in+800h)[edx*4]
mov	edx, [esp+24h+var_1C]
shr	edx, 18h
xor	edi, ds:(_t_in+0C00h)[edx*4]
movzx	edx, byte ptr [esp+24h+var_24]
mov	ebp, ds:_t_in[edx*4]
xor	ebp, [kp-20h]
mov	ecx, edi
movzx	edx, ch
xor	ebp, ds:(_t_in+400h)[edx*4]
mov	edx, esi
shr	edx, 10h
movzx	edx, dl
xor	ebp, ds:(_t_in+800h)[edx*4]
mov	edx, ebx
shr	edx, 18h
mov	edx, ds:(_t_in+0C00h)[edx*4]
xor	edx, ebp
mov	[esp+24h+var_18], edx
movzx	edx, bl
mov	edx, ds:_t_in[edx*4]
xor	edx, [kp-1Ch]
mov	ecx, [esp+24h+var_24]
movzx	ebp, ch
xor	edx, ds:(_t_in+400h)[ebp*4]
mov	ebp, edi
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
xor	edx, ds:(_t_in+800h)[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edx, ds:(_t_in+0C00h)[ebp*4]
mov	ecx, esi
movzx	ebp, cl
mov	ebp, ds:_t_in[ebp*4]
xor	ebp, [kp-18h]
mov	[esp+24h+var_20], ebp
movzx	ebp, bh
mov	ecx, [esp+24h+var_20]
xor	ecx, ds:(_t_in+400h)[ebp*4]
mov	[esp+24h+var_20], ecx
mov	ebp, [esp+24h+var_24]
shr	ebp, 10h
mov	ecx, ebp
movzx	ebp, cl
mov	ecx, [esp+24h+var_20]
xor	ecx, ds:(_t_in+800h)[ebp*4]
mov	ebp, edi
shr	ebp, 18h
mov	ebp, ds:(_t_in+0C00h)[ebp*4]
xor	ebp, ecx
and	edi, 0FFh
mov	edi, ds:_t_in[edi*4]
xor	edi, [kp-14h]
mov	ecx, esi
movzx	esi, ch
xor	edi, ds:(_t_in+400h)[esi*4]
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_in+800h)[ebx*4]
mov	ecx, [esp+24h+var_24]
shr	ecx, 18h
xor	edi, ds:(_t_in+0C00h)[ecx*4]
mov	ecx, edi
movzx	ebx, byte ptr [esp+24h+var_18]
mov	esi, ds:_t_in[ebx*4]
xor	esi, [kp-10h]
movzx	ebx, ch
xor	esi, ds:(_t_in+400h)[ebx*4]
mov	ebx, ebp
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_in+800h)[ebx*4]
mov	ebx, edx
shr	ebx, 18h
mov	ebx, ds:(_t_in+0C00h)[ebx*4]
xor	ebx, esi
mov	[esp+24h+var_1C], ebx
movzx	ebx, dl
mov	esi, ds:_t_in[ebx*4]
xor	esi, [kp-0Ch]
mov	ebx, [esp+24h+var_18]
movzx	edi, bh
xor	esi, ds:(_t_in+400h)[edi*4]
mov	ebx, ecx
shr	ebx, 10h
movzx	ebx, bl
xor	esi, ds:(_t_in+800h)[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
mov	ebx, ds:(_t_in+0C00h)[ebx*4]
xor	ebx, esi
mov	[esp+24h+var_20], ebx
mov	ebx, ebp
movzx	esi, bl
mov	edi, ds:_t_in[esi*4]
xor	edi, [kp-8]
movzx	ebx, dh
xor	edi, ds:(_t_in+400h)[ebx*4]
mov	ebx, [esp+24h+var_18]
shr	ebx, 10h
movzx	ebx, bl
xor	edi, ds:(_t_in+800h)[ebx*4]
mov	ebx, ecx
shr	ebx, 18h
xor	edi, ds:(_t_in+0C00h)[ebx*4]
movzx	ecx, cl
mov	ecx, ds:_t_in[ecx*4]
xor	ecx, [kp-4]
mov	ebx, ebp
movzx	ebp, bh
xor	ecx, ds:(_t_in+400h)[ebp*4]
shr	edx, 10h
movzx	edx, dl
xor	ecx, ds:(_t_in+800h)[edx*4]
mov	edx, [esp+24h+var_18]
shr	edx, 18h
xor	ecx, ds:(_t_in+0C00h)[edx*4]
mov	edx, ecx
movzx	ecx, byte ptr [esp+24h+var_1C]
mov	esi, ds:_t_il[ecx*4]
mov	ebp, [esp+24h+var_14]
mov	ecx, [esp+24h+cx_0]
xor	esi, [ecx+ebp*4]
movzx	ecx, dh
xor	esi, ds:(_t_il+400h)[ecx*4]
mov	ecx, edi
shr	ecx, 10h
movzx	ecx, cl
xor	esi, ds:(_t_il+800h)[ecx*4]
mov	ecx, [esp+24h+var_20]
shr	ecx, 18h
xor	esi, ds:(_t_il+0C00h)[ecx*4]
movzx	ecx, byte ptr [esp+24h+var_20]
mov	ebx, ds:_t_il[ecx*4]
mov	ebp, [kp+4]
xor	ebp, ebx
mov	ebx, [esp+24h+var_1C]
movzx	ecx, bh
mov	ebx, ds:(_t_il+400h)[ecx*4]
xor	ebx, ebp
mov	ecx, edx
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:(_t_il+800h)[ecx*4]
mov	ecx, edi
shr	ecx, 18h
xor	ebx, ds:(_t_il+0C00h)[ecx*4]
mov	[esp+24h+var_24], ebx
mov	ebx, edi
movzx	ecx, bl
mov	ecx, ds:_t_il[ecx*4]
xor	ecx, [kp+8]
mov	ebx, [esp+24h+var_20]
movzx	ebp, bh
xor	ecx, ds:(_t_il+400h)[ebp*4]
mov	ebp, [esp+24h+var_1C]
shr	ebp, 10h
mov	ebx, ebp
movzx	ebp, bl
xor	ecx, ds:(_t_il+800h)[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ecx, ds:(_t_il+0C00h)[ebp*4]
movzx	edx, dl
mov	edx, ds:_t_il[edx*4]
xor	edx, [kp+0Ch]
mov	kp, edi
movzx	edi, ah
xor	edx, ds:(_t_il+400h)[edi*4]
mov	eax, [esp+24h+var_20]
shr	eax, 10h
movzx	eax, al
xor	edx, ds:(_t_il+800h)[eax*4]
mov	eax, [esp+24h+var_1C]
shr	eax, 18h
xor	edx, ds:(_t_il+0C00h)[eax*4]
jmp	loc_641E9DBE
public _silc_aes_cbc_decrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 6Ch
mov	edx, [esp+7Ch+src]
mov	ebx, [esp+7Ch+dst]
mov	eax, [esp+7Ch+len]
mov	ebp, [esp+7Ch+iv]
test	al, 0Fh
jnz	loc_641EAE10
shr	len_0, 4
mov	[esp+7Ch+var_68], len_0
jz	loc_641EAE05
lea	len_0, [iv_0+1]
mov	[esp+7Ch+var_3C], eax
lea	ecx, [iv_0+2]
mov	[esp+7Ch+var_38], ecx
lea	esi, [iv_0+3]
mov	[esp+7Ch+var_34], esi
lea	edi, [iv_0+4]
mov	[esp+7Ch+var_40], edi
lea	eax, [iv_0+5]
mov	[esp+7Ch+var_30], eax
lea	ecx, [iv_0+6]
mov	[esp+7Ch+var_44], ecx
lea	esi, [iv_0+7]
mov	[esp+7Ch+var_54], esi
lea	edi, [iv_0+8]
mov	[esp+7Ch+var_50], edi
lea	eax, [iv_0+9]
mov	[esp+7Ch+var_4C], eax
lea	ecx, [iv_0+0Ah]
mov	[esp+7Ch+var_48], ecx
lea	esi, [iv_0+0Bh]
mov	[esp+7Ch+var_2C], esi
lea	edi, [iv_0+0Ch]
mov	[esp+7Ch+var_28], edi
lea	eax, [iv_0+0Dh]
mov	[esp+7Ch+var_24], eax
lea	ecx, [iv_0+0Eh]
mov	[esp+7Ch+var_58], ecx
lea	esi, [iv_0+0Fh]
mov	[esp+7Ch+var_5C], esi
lea	edi, [esp+7Ch+tmp]
mov	[esp+7Ch+var_6C], edi
mov	[esp+7Ch+var_64], iv_0
mov	iv_0, src_0
nop
mov	edi, [esp+7Ch+var_6C]
mov	esi, src_0
mov	ecx, 4
rep movsd
mov	eax, [esp+7Ch+context]
mov	[esp+7Ch+cx_0],	eax 
mov	[esp+7Ch+out], dst_0 
mov	[esp+7Ch+in], ebp 
call	_aes_decrypt
mov	edx, [esp+7Ch+var_34]
movzx	ecx, byte ptr [edx]
mov	src_0, [esp+7Ch+var_64]
movzx	eax, byte ptr [esi]
shl	eax, 18h
or	eax, ecx
mov	edi, [esp+7Ch+var_3C]
movzx	edx, byte ptr [edi]
shl	edx, 10h
or	eax, edx
mov	ecx, [esp+7Ch+var_38]
movzx	edx, byte ptr [ecx]
shl	edx, 8
or	eax, edx
movzx	ecx, byte ptr [dst_0]
shl	ecx, 18h
movzx	edx, byte ptr [dst_0+1]
shl	edx, 10h
or	ecx, edx
movzx	esi, byte ptr [dst_0+3]
or	ecx, esi
movzx	edx, byte ptr [dst_0+2]
shl	edx, 8
or	ecx, edx
xor	ecx, eax
mov	[esp+7Ch+var_70], ecx
mov	esi, [esp+7Ch+var_40]
movzx	edx, byte ptr [esi]
shl	edx, 18h
mov	edi, [esp+7Ch+var_30]
movzx	eax, byte ptr [edi]
shl	eax, 10h
or	eax, edx
mov	edx, [esp+7Ch+var_54]
movzx	esi, byte ptr [edx]
or	eax, esi
mov	ecx, [esp+7Ch+var_44]
movzx	esi, byte ptr [ecx]
shl	esi, 8
or	eax, esi
movzx	esi, byte ptr [dst_0+4]
shl	esi, 18h
movzx	edx, byte ptr [dst_0+5]
shl	edx, 10h
or	edx, esi
movzx	edi, byte ptr [dst_0+7]
or	edx, edi
movzx	esi, byte ptr [dst_0+6]
shl	esi, 8
or	edx, esi
xor	edx, eax
mov	edi, [esp+7Ch+var_50]
movzx	esi, byte ptr [edi]
shl	esi, 18h
mov	ecx, [esp+7Ch+var_4C]
movzx	eax, byte ptr [ecx]
shl	eax, 10h
or	esi, eax
mov	eax, [esp+7Ch+var_2C]
movzx	edi, byte ptr [eax]
or	esi, edi
mov	ecx, [esp+7Ch+var_48]
movzx	edi, byte ptr [ecx]
shl	edi, 8
or	esi, edi
movzx	edi, byte ptr [dst_0+8]
shl	edi, 18h
movzx	eax, byte ptr [dst_0+9]
shl	eax, 10h
or	eax, edi
movzx	edi, byte ptr [dst_0+0Bh]
or	eax, edi
movzx	edi, byte ptr [dst_0+0Ah]
shl	edi, 8
or	eax, edi
xor	eax, esi
mov	esi, [esp+7Ch+var_28]
movzx	edi, byte ptr [esi]
mov	ecx, edi
shl	ecx, 18h
mov	edi, [esp+7Ch+var_24]
movzx	esi, byte ptr [edi]
shl	esi, 10h
or	ecx, esi
mov	edi, [esp+7Ch+var_5C]
movzx	esi, byte ptr [edi]
or	ecx, esi
mov	edi, [esp+7Ch+var_58]
movzx	esi, byte ptr [edi]
shl	esi, 8
or	ecx, esi
movzx	edi, byte ptr [dst_0+0Ch]
shl	edi, 18h
movzx	esi, byte ptr [dst_0+0Dh]
shl	esi, 10h
or	edi, esi
movzx	esi, byte ptr [dst_0+0Fh]
or	edi, esi
movzx	esi, byte ptr [dst_0+0Eh]
shl	esi, 8
or	esi, edi
xor	esi, ecx
mov	edi, [esp+7Ch+var_70]
shr	edi, 18h
mov	ecx, edi
mov	[dst_0], cl
mov	edi, [esp+7Ch+var_70]
shr	edi, 10h
mov	ecx, edi
mov	[dst_0+1], cl
mov	edi, [esp+7Ch+var_70]
shr	edi, 8
mov	ecx, edi
mov	[dst_0+2], cl
mov	cl, byte ptr [esp+7Ch+var_70]
mov	[dst_0+3], cl
mov	ecx, edx
shr	ecx, 18h
mov	[dst_0+4], cl
mov	ecx, edx
shr	ecx, 10h
mov	[dst_0+5], cl
mov	ecx, edx
shr	ecx, 8
mov	[dst_0+6], cl
mov	[dst_0+7], dl
mov	edx, eax
shr	edx, 18h
mov	[dst_0+8], dl
mov	edx, eax
shr	edx, 10h
mov	[dst_0+9], dl
mov	edx, eax
shr	edx, 8
mov	[dst_0+0Ah], dl
mov	[dst_0+0Bh], al
mov	eax, esi
shr	eax, 18h
mov	[dst_0+0Ch], al
mov	eax, esi
shr	eax, 10h
mov	[dst_0+0Dh], al
mov	eax, esi
shr	eax, 8
mov	[dst_0+0Eh], al
mov	eax, esi
mov	[dst_0+0Fh], al
mov	edi, [esp+7Ch+var_64]
mov	esi, [esp+7Ch+var_6C]
mov	ecx, 4
rep movsd
add	src_0, 10h
add	dst_0, 10h
dec	[esp+7Ch+var_68]
jnz	loc_641EAC10
mov	al, 1
add	esp, 6Ch
pop	dst_0
pop	esi
pop	edi
pop	iv_0
retn
align 10h
xor	len_0, len_0
add	esp, 6Ch
pop	dst_0
pop	esi
pop	edi
pop	iv_0
retn
align 4
public _silc_aes_cbc_encrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 54h
mov	ebx, [esp+64h+src]
mov	eax, [esp+64h+len]
mov	ebp, [esp+64h+iv]
test	al, 0Fh
jnz	loc_641EB0D0
shr	len_0, 4
mov	[esp+64h+var_54], len_0
jz	loc_641EB0C4
lea	len_0, [iv_0+1]
mov	[esp+64h+var_18], eax
lea	edx, [iv_0+2]
mov	[esp+64h+var_1C], edx
lea	ecx, [iv_0+3]
mov	[esp+64h+var_20], ecx
lea	esi, [iv_0+4]
mov	[esp+64h+var_24], esi
lea	edi, [iv_0+5]
mov	[esp+64h+var_28], edi
lea	eax, [iv_0+6]
mov	[esp+64h+var_2C], eax
lea	edx, [iv_0+7]
mov	[esp+64h+var_30], edx
lea	ecx, [iv_0+8]
mov	[esp+64h+var_34], ecx
lea	esi, [iv_0+9]
mov	[esp+64h+var_38], esi
lea	edi, [iv_0+0Ah]
mov	[esp+64h+var_3C], edi
lea	eax, [iv_0+0Bh]
mov	[esp+64h+var_40], eax
lea	edx, [iv_0+0Ch]
mov	[esp+64h+var_44], edx
lea	ecx, [iv_0+0Dh]
mov	[esp+64h+var_48], ecx
lea	esi, [iv_0+0Eh]
mov	[esp+64h+var_4C], esi
lea	edi, [iv_0+0Fh]
mov	[esp+64h+var_50], edi
lea	esi, [esi+0]
mov	eax, [esp+64h+var_20]
movzx	ecx, byte ptr [eax]
movzx	eax, byte ptr [iv_0+0]
shl	eax, 18h
or	eax, ecx
mov	ecx, [esp+64h+var_18]
movzx	edx, byte ptr [ecx]
shl	edx, 10h
or	eax, edx
mov	esi, [esp+64h+var_1C]
movzx	edx, byte ptr [esi]
shl	edx, 8
or	eax, edx
movzx	ecx, byte ptr [src_0]
shl	ecx, 18h
movzx	edx, byte ptr [src_0+1]
shl	edx, 10h
or	ecx, edx
movzx	esi, byte ptr [src_0+3]
or	ecx, esi
movzx	edx, byte ptr [src_0+2]
shl	edx, 8
or	ecx, edx
xor	ecx, eax
mov	[esp+64h+var_58], ecx
mov	edi, [esp+64h+var_24]
movzx	edx, byte ptr [edi]
shl	edx, 18h
mov	ecx, [esp+64h+var_28]
movzx	eax, byte ptr [ecx]
shl	eax, 10h
or	eax, edx
mov	edi, [esp+64h+var_30]
movzx	esi, byte ptr [edi]
or	eax, esi
mov	edx, [esp+64h+var_2C]
movzx	esi, byte ptr [edx]
shl	esi, 8
or	eax, esi
movzx	esi, byte ptr [src_0+4]
shl	esi, 18h
movzx	edx, byte ptr [src_0+5]
shl	edx, 10h
or	edx, esi
movzx	edi, byte ptr [src_0+7]
or	edx, edi
movzx	esi, byte ptr [src_0+6]
shl	esi, 8
or	edx, esi
xor	edx, eax
mov	ecx, [esp+64h+var_34]
movzx	esi, byte ptr [ecx]
shl	esi, 18h
mov	edi, [esp+64h+var_38]
movzx	eax, byte ptr [edi]
shl	eax, 10h
or	esi, eax
mov	eax, [esp+64h+var_40]
movzx	edi, byte ptr [eax]
or	esi, edi
mov	ecx, [esp+64h+var_3C]
movzx	edi, byte ptr [ecx]
shl	edi, 8
or	esi, edi
movzx	edi, byte ptr [src_0+8]
shl	edi, 18h
movzx	eax, byte ptr [src_0+9]
shl	eax, 10h
or	eax, edi
movzx	edi, byte ptr [src_0+0Bh]
or	eax, edi
movzx	edi, byte ptr [src_0+0Ah]
shl	edi, 8
or	eax, edi
xor	eax, esi
mov	esi, [esp+64h+var_44]
movzx	edi, byte ptr [esi]
mov	ecx, edi
shl	ecx, 18h
mov	edi, [esp+64h+var_48]
movzx	esi, byte ptr [edi]
shl	esi, 10h
or	ecx, esi
mov	edi, [esp+64h+var_50]
movzx	esi, byte ptr [edi]
or	ecx, esi
mov	edi, [esp+64h+var_4C]
movzx	esi, byte ptr [edi]
shl	esi, 8
or	ecx, esi
movzx	edi, byte ptr [src_0+0Ch]
shl	edi, 18h
movzx	esi, byte ptr [src_0+0Dh]
shl	esi, 10h
or	edi, esi
movzx	esi, byte ptr [src_0+0Fh]
or	edi, esi
movzx	esi, byte ptr [src_0+0Eh]
shl	esi, 8
or	esi, edi
xor	esi, ecx
mov	edi, [esp+64h+var_58]
shr	edi, 18h
mov	ecx, edi
mov	[iv_0+0], cl
mov	edi, [esp+64h+var_58]
shr	edi, 10h
mov	[esp+64h+var_14], edi
mov	cl, byte ptr [esp+64h+var_14]
mov	edi, [esp+64h+var_18]
mov	[edi], cl
mov	ecx, [esp+64h+var_58]
shr	ecx, 8
mov	edi, [esp+64h+var_1C]
mov	[edi], cl
mov	cl, byte ptr [esp+64h+var_58]
mov	edi, [esp+64h+var_20]
mov	[edi], cl
mov	ecx, edx
shr	ecx, 18h
mov	edi, [esp+64h+var_24]
mov	[edi], cl
mov	ecx, edx
shr	ecx, 10h
mov	edi, [esp+64h+var_28]
mov	[edi], cl
mov	ecx, edx
shr	ecx, 8
mov	edi, [esp+64h+var_2C]
mov	[edi], cl
mov	ecx, [esp+64h+var_30]
mov	[ecx], dl
mov	edx, eax
shr	edx, 18h
mov	edi, [esp+64h+var_34]
mov	[edi], dl
mov	edx, eax
shr	edx, 10h
mov	ecx, [esp+64h+var_38]
mov	[ecx], dl
mov	edx, eax
shr	edx, 8
mov	edi, [esp+64h+var_3C]
mov	[edi], dl
mov	edx, [esp+64h+var_40]
mov	[edx], al
mov	eax, esi
shr	eax, 18h
mov	ecx, [esp+64h+var_44]
mov	[ecx], al
mov	eax, esi
shr	eax, 10h
mov	edi, [esp+64h+var_48]
mov	[edi], al
mov	eax, esi
shr	eax, 8
mov	edx, [esp+64h+var_4C]
mov	[edx], al
mov	ecx, esi
mov	edi, [esp+64h+var_50]
mov	[edi], cl
mov	eax, [esp+64h+context]
mov	[esp+64h+cx_0],	eax 
mov	[esp+64h+out], iv_0 
mov	[esp+64h+in], iv_0 
call	_aes_encrypt
mov	edi, [esp+64h+dst]
mov	esi, iv_0
mov	ecx, 4
rep movsd
add	src_0, 10h
add	[esp+64h+dst], 10h
dec	[esp+64h+var_54]
jnz	loc_641EAEB0
mov	al, 1
add	esp, 54h
pop	src_0
pop	esi
pop	edi
pop	iv_0
retn
align 10h
xor	len_0, len_0
add	esp, 54h
pop	src_0
pop	esi
pop	edi
pop	iv_0
retn
align 4
public _silc_aes_ctr_decrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 28h
mov	edi, [esp+38h+context]
mov	ebp, [esp+38h+src]
mov	ecx, [esp+38h+dst]
mov	esi, [esp+38h+iv]
movzx	eax, byte ptr [edi+0F2h]
test	eax, eax
jnz	short loc_641EB100
mov	al, 10h
mov	ebx, [esp+38h+len]
test	ebx, ebx
jz	loc_641EB248
lea	edx, [context_0+0F4h]
mov	[esp+38h+var_14], edx
xor	ebx, ebx
lea	edx, [iv_0+0Fh]
mov	[esp+38h+var_28], edx
lea	edx, [iv_0+0Eh]
mov	[esp+38h+var_24], edx
lea	edx, [iv_0+0Dh]
mov	[esp+38h+var_20], edx
lea	edx, [iv_0+0Ch]
mov	[esp+38h+var_1C], edx
lea	edx, [iv_0+0Bh]
mov	[esp+38h+var_18], edx
jmp	short loc_641EB15C
align 10h
mov	edx, eax
inc	eax
mov	dl, [context_0+edx+0F4h]
xor	dl, [src_0+ebx+0]
mov	[ecx+ebx], dl
inc	ebx
cmp	[esp+38h+len], ebx
jz	loc_641EB248
cmp	eax, 10h
jnz	short loc_641EB140
mov	edx, [esp+38h+var_28]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641EB21E
mov	edx, [esp+38h+var_24]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641EB21E
mov	edx, [esp+38h+var_20]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	loc_641EB21E
mov	edx, [esp+38h+var_1C]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	short loc_641EB21E
mov	edx, [esp+38h+var_18]
mov	al, [edx]
inc	eax
mov	[edx], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+0Ah]
inc	eax
mov	[iv_0+0Ah], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+9]
inc	eax
mov	[iv_0+9], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+8]
inc	eax
mov	[iv_0+8], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+7]
inc	eax
mov	[iv_0+7], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+6]
inc	eax
mov	[iv_0+6], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+5]
inc	eax
mov	[iv_0+5], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+4]
inc	eax
mov	[iv_0+4], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+3]
inc	eax
mov	[iv_0+3], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+2]
inc	eax
mov	[iv_0+2], al
test	al, al
jnz	short loc_641EB21E
mov	al, [iv_0+1]
inc	eax
mov	[iv_0+1], al
test	al, al
jnz	short loc_641EB21E
inc	byte ptr [iv_0]
			
mov	[esp+38h+cx_0],	context_0 
mov	eax, [esp+38h+var_14]
mov	[esp+38h+out], eax 
mov	[esp+38h+in], iv_0 
mov	[esp+38h+var_2C], dst_0
call	_aes_encrypt
mov	eax, 1
xor	edx, edx
mov	ecx, [esp+38h+var_2C]
jmp	loc_641EB143
align 4
			
mov	[context_0+0F2h], al
mov	al, 1
add	esp, 28h
pop	ebx
pop	iv_0
pop	context_0
pop	src_0
retn
public _silc_aes_ctr_set_key
push	edi
push	esi
push	ebx
sub	esp, 8
mov	edx, [esp+14h+context]
mov	esi, [esp+14h+key]
mov	ebx, [esp+14h+keylen]
mov	ecx, 104h
xor	eax, eax
mov	edi, edx
rep stosb
cmp	ebx, 20h
jz	short loc_641EB2BC
jle	short loc_641EB29C
cmp	keylen_0, 0C0h
jz	short loc_641EB2A6
cmp	keylen_0, 100h
jz	short loc_641EB2BC
add	keylen_0, 0FFFFFF80h
jz	short loc_641EB2D4
mov	al, 1
add	esp, 8
pop	keylen_0
pop	key_0
pop	edi
retn
align 4
cmp	keylen_0, 10h
jz	short loc_641EB2D4
cmp	keylen_0, 18h
jnz	short loc_641EB291
mov	[esp+14h+cx_0],	context_0 
mov	[esp+14h+var_14], key_0	
call	_aes_encrypt_key192
mov	al, 1
add	esp, 8
pop	keylen_0
pop	key_0
pop	edi
retn
align 4
			
mov	[esp+14h+cx_0],	context_0 
mov	[esp+14h+var_14], key_0	
call	_aes_encrypt_key256
mov	al, 1
add	esp, 8
pop	keylen_0
pop	key_0
pop	edi
retn
align 4
			
mov	[esp+14h+cx_0],	context_0 
mov	[esp+14h+var_14], key_0	
call	_aes_encrypt_key128
mov	al, 1
add	esp, 8
pop	keylen_0
pop	key_0
pop	edi
retn
align 4
public _silc_aes_cbc_set_key
sub	esp, 8
mov	ecx, [esp+8+context]
mov	edx, [esp+8+key]
mov	eax, [esp+8+keylen]
cmp	[esp+8+encryption], 0
jnz	short loc_641EB328
cmp	keylen_0, 20h
jz	short loc_641EB378
jg	short loc_641EB350
cmp	keylen_0, 10h
jz	short loc_641EB363
cmp	keylen_0, 18h
jnz	short loc_641EB384
mov	[esp+8+cx_0], context_0	
mov	[esp+8+var_8], key_0 
call	_aes_decrypt_key192
mov	al, 1
add	esp, 8
retn
align 4
cmp	keylen_0, 20h
jz	short loc_641EB3A4
jle	short loc_641EB38C
cmp	keylen_0, 0C0h
jz	short loc_641EB396
cmp	keylen_0, 100h
jz	short loc_641EB3A4
add	keylen_0, 0FFFFFF80h
jnz	short loc_641EB384
mov	[esp+8+cx_0], context_0
mov	[esp+8+var_8], key_0 
call	_aes_encrypt_key128
jmp	short loc_641EB384
cmp	keylen_0, 0C0h
jz	short loc_641EB313
cmp	keylen_0, 100h
jz	short loc_641EB378
add	keylen_0, 0FFFFFF80h
jnz	short loc_641EB384
mov	[esp+8+cx_0], context_0
mov	[esp+8+var_8], key_0 
call	_aes_decrypt_key128
mov	al, 1
add	esp, 8
retn
align 4
			
mov	[esp+8+cx_0], context_0	
mov	[esp+8+var_8], key_0 
call	_aes_decrypt_key256
			
mov	al, 1
add	esp, 8
retn
align 4
cmp	keylen_0, 10h
jz	short loc_641EB342
cmp	keylen_0, 18h
jnz	short loc_641EB384
mov	[esp+8+cx_0], context_0	
mov	[esp+8+var_8], key_0 
call	_aes_encrypt_key192
jmp	short loc_641EB384
			
mov	[esp+8+cx_0], context_0
mov	[esp+8+var_8], key_0 
call	_aes_encrypt_key256
jmp	short loc_641EB384
align 4
public _silc_blowfish_cbc_set_iv
retn
align 4
public _silc_blowfish_cbc_context_len
mov	eax, 1048h
retn
align 10h
public _blowfish_encrypt
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 48h
mov	eax, [esp+58h+ctx]
mov	esi, [esp+58h+in_blk]
mov	edx, [esp+58h+size]
cmp	edx, 7
jle	loc_641EB7FE
lea	ecx, [ctx_0+4]
mov	[esp+58h+var_14], ecx
lea	edi, [ctx_0+8]
mov	[esp+58h+var_1C], edi
lea	ecx, [ctx_0+0Ch]
mov	[esp+58h+var_20], ecx
lea	edi, [ctx_0+10h]
mov	[esp+58h+var_24], edi
lea	ecx, [ctx_0+14h]
mov	[esp+58h+var_28], ecx
lea	edi, [ctx_0+18h]
mov	[esp+58h+var_2C], edi
lea	ecx, [ctx_0+1Ch]
mov	[esp+58h+var_30], ecx
lea	edi, [ctx_0+20h]
mov	[esp+58h+var_34], edi
lea	ecx, [ctx_0+24h]
mov	[esp+58h+var_38], ecx
lea	edi, [ctx_0+28h]
mov	[esp+58h+var_3C], edi
lea	ecx, [ctx_0+2Ch]
mov	[esp+58h+var_40], ecx
lea	edi, [ctx_0+30h]
mov	[esp+58h+var_44], edi
lea	ecx, [ctx_0+34h]
mov	[esp+58h+var_48], ecx
lea	edi, [ctx_0+38h]
mov	[esp+58h+var_4C], edi
lea	ecx, [ctx_0+3Ch]
mov	[esp+58h+var_50], ecx
lea	edi, [ctx_0+40h]
mov	[esp+58h+var_54], edi
lea	ecx, [ctx_0+44h]
mov	[esp+58h+var_58], ecx
sub	size_0,	8
shr	edx, 3
lea	edx, ds:8[edx*8]
mov	[esp+58h+var_18], edx
xor	edx, edx
lea	in_blk_0, [in_blk_0+0]
mov	ebx, [in_blk_0+edx]
mov	edi, [in_blk_0+edx+4]
xor	yl, [ctx_0]
mov	ecx, [esp+58h+var_14]
xor	yr, [ecx]
mov	ecx, yl
shr	ecx, 10h
and	ecx, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	ecx, [ctx_0+ecx*4+448h]
add	ecx, [ctx_0+ebp*4+48h]
movzx	ebp, bh
xor	ecx, [ctx_0+ebp*4+848h]
movzx	ebp, bl
add	ecx, [ctx_0+ebp*4+0C48h]
xor	ecx, yr
mov	edi, [esp+58h+var_1C]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_20]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_24]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_28]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_2C]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_30]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_34]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_38]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_3C]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_40]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_44]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_48]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_4C]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_50]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_54]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_58]
xor	yr, [edi]
mov	edi, [esp+58h+out_blk]
mov	[edi+edx], ecx
mov	[edi+edx+4], yl
add	edx, 8
cmp	edx, [esp+58h+var_18]
jnz	loc_641EB468
xor	ctx_0, ctx_0
add	esp, 48h
pop	yl
pop	in_blk_0
pop	edi
pop	ebp
retn
public _silc_blowfish_cbc_encrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 20h
mov	esi, [esp+38h]
mov	edi, [esp+3Ch]
mov	eax, [esp+44h]
mov	edx, [eax]
mov	ecx, eax
mov	eax, [eax+4]
mov	ebx, ecx
mov	ecx, [ecx+8]
mov	ebx, [ebx+0Ch]
xor	edx, [esi]
mov	[esp+10h], edx
xor	eax, [esi+4]
mov	[esp+14h], eax
xor	ecx, [esi+8]
mov	[esp+18h], ecx
xor	ebx, [esi+0Ch]
mov	[esp+1Ch], ebx
mov	dword ptr [esp+0Ch], 10h 
lea	ebp, [esp+10h]
mov	[esp+8], ebp	
mov	[esp+4], ebp	
mov	eax, [esp+34h]
mov	[esp], eax	
call	_blowfish_encrypt
mov	edx, [esp+10h]
mov	[edi], edx
mov	eax, [esp+14h]
mov	[edi+4], eax
mov	ecx, [esp+18h]
mov	[edi+8], ecx
mov	ebx, [esp+1Ch]
mov	[edi+0Ch], ebx
cmp	dword ptr [esp+40h], 10h
jbe	short loc_641EB8FF
mov	ebx, 10h
mov	eax, [src_0+i]
xor	[esp+10h], eax
mov	eax, [src_0+i+4]
xor	[esp+14h], eax
mov	eax, [src_0+i+8]
xor	[esp+18h], eax
mov	eax, [src_0+i+0Ch]
xor	[esp+1Ch], eax
mov	dword ptr [esp+0Ch], 10h 
mov	[esp+8], ebp	
mov	[esp+4], ebp	
mov	edx, [esp+34h]
mov	[esp], edx	
call	_blowfish_encrypt
mov	eax, [esp+10h]
mov	[dst_0+i], eax
mov	eax, [esp+14h]
mov	[dst_0+i+4], eax
mov	eax, [esp+18h]
mov	[dst_0+i+8], eax
mov	eax, [esp+1Ch]
mov	[dst_0+i+0Ch], eax
add	i, 10h
cmp	[esp+40h], i
ja	short loc_641EB88C
mov	edx, [esp+10h]
mov	eax, [esp+14h]
mov	ecx, [esp+18h]
mov	i, [esp+1Ch]
mov	src_0, [esp+44h]
mov	[esi], edx
mov	[esi+4], eax
mov	[esi+8], ecx
mov	[esi+0Ch], ebx
mov	al, 1
add	esp, 20h
pop	ebx
pop	esi
pop	dst_0
pop	ebp
retn
public _blowfish_decrypt
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 48h
mov	eax, [esp+58h+ctx]
mov	esi, [esp+58h+in_blk]
mov	edx, [esp+58h+size]
cmp	edx, 7
jle	loc_641EBD56
lea	ecx, [ctx_0+44h]
mov	[esp+58h+var_14], ecx
lea	edi, [ctx_0+40h]
mov	[esp+58h+var_1C], edi
lea	ecx, [ctx_0+3Ch]
mov	[esp+58h+var_20], ecx
lea	edi, [ctx_0+38h]
mov	[esp+58h+var_24], edi
lea	ecx, [ctx_0+34h]
mov	[esp+58h+var_28], ecx
lea	edi, [ctx_0+30h]
mov	[esp+58h+var_2C], edi
lea	ecx, [ctx_0+2Ch]
mov	[esp+58h+var_30], ecx
lea	edi, [ctx_0+28h]
mov	[esp+58h+var_34], edi
lea	ecx, [ctx_0+24h]
mov	[esp+58h+var_38], ecx
lea	edi, [ctx_0+20h]
mov	[esp+58h+var_3C], edi
lea	ecx, [ctx_0+1Ch]
mov	[esp+58h+var_40], ecx
lea	edi, [ctx_0+18h]
mov	[esp+58h+var_44], edi
lea	ecx, [ctx_0+14h]
mov	[esp+58h+var_48], ecx
lea	edi, [ctx_0+10h]
mov	[esp+58h+var_4C], edi
lea	ecx, [ctx_0+0Ch]
mov	[esp+58h+var_50], ecx
lea	edi, [ctx_0+8]
mov	[esp+58h+var_54], edi
lea	ecx, [ctx_0+4]
mov	[esp+58h+var_58], ecx
sub	size_0,	8
shr	edx, 3
lea	edx, ds:8[edx*8]
mov	[esp+58h+var_18], edx
xor	edx, edx
lea	in_blk_0, [in_blk_0+0]
mov	ebx, [in_blk_0+edx]
mov	edi, [in_blk_0+edx+4]
mov	ecx, [esp+58h+var_14]
xor	yl, [ecx]
mov	ecx, [esp+58h+var_1C]
xor	yr, [ecx]
mov	ecx, yl
shr	ecx, 10h
and	ecx, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	ecx, [ctx_0+ecx*4+448h]
add	ecx, [ctx_0+ebp*4+48h]
movzx	ebp, bh
xor	ecx, [ctx_0+ebp*4+848h]
movzx	ebp, bl
add	ecx, [ctx_0+ebp*4+0C48h]
xor	ecx, yr
mov	edi, [esp+58h+var_20]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_24]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_28]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_2C]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_30]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_34]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_38]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_3C]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_40]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_44]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_48]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_4C]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_50]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
mov	edi, [esp+58h+var_54]
xor	yr, [edi]
mov	ebp, yl
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yl
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, bh
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, bl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yr, ebp
mov	edi, [esp+58h+var_58]
xor	yl, [edi]
mov	ebp, yr
shr	ebp, 10h
and	ebp, 0FFh
mov	edi, yr
shr	edi, 18h
mov	ebp, [ctx_0+ebp*4+448h]
add	ebp, [ctx_0+edi*4+48h]
movzx	edi, ch
xor	ebp, [ctx_0+edi*4+848h]
movzx	edi, cl
add	ebp, [ctx_0+edi*4+0C48h]
xor	yl, ebp
xor	yr, [ctx_0]
mov	edi, [esp+58h+out_blk]
mov	[edi+edx], ecx
mov	[edi+edx+4], yl
add	edx, 8
cmp	edx, [esp+58h+var_18]
jnz	loc_641EB9C0
xor	ctx_0, ctx_0
add	esp, 48h
pop	yl
pop	in_blk_0
pop	edi
pop	ebp
retn
public _blowfish_set_key
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 24h
mov	ebx, [esp+34h+ctx]
mov	esi, [esp+34h+key]
mov	ebp, [esp+34h+keybytes]
xor	eax, eax
lea	key_0, [key_0+0]
mov	edx, ds:_bf_sbox[eax]
mov	[ctx_0+eax+48h], edx
mov	edx, ds:(_bf_sbox+4)[eax]
mov	[ctx_0+eax+4Ch], edx
mov	edx, ds:(_bf_sbox+8)[eax]
mov	[ctx_0+eax+50h], edx
mov	edx, ds:(_bf_sbox+0Ch)[eax]
mov	[ctx_0+eax+54h], edx
add	eax, 10h
cmp	eax, 1000h
jnz	short loc_641EBD78
xor	ax, ax
lea	key_0, [key_0+0]
mov	edx, ds:_bf_pbox[eax]
mov	[ctx_0+eax], edx
add	eax, 4
cmp	eax, 48h
jnz	short loc_641EBDB0
xor	edi, edi
xor	edx, edx
lea	key_0, [key_0+0]
movsx	ecx, dx
lea	eax, [ecx+3]
cdq
idiv	keybytes_0
movzx	edx, byte ptr [key_0+edx]
movzx	eax, byte ptr [key_0+ecx]
shl	eax, 18h
or	edx, eax
mov	[esp+34h+var_24], edx
lea	eax, [ecx+1]
cdq
idiv	keybytes_0
movzx	eax, byte ptr [key_0+edx]
shl	eax, 10h
or	eax, [esp+34h+var_24]
mov	[esp+34h+var_24], eax
lea	eax, [ecx+2]
cdq
idiv	keybytes_0
movzx	eax, byte ptr [key_0+edx]
shl	eax, 8
or	eax, [esp+34h+var_24]
xor	[ctx_0+edi], eax
lea	eax, [ecx+4]
cdq
idiv	keybytes_0
add	edi, 4
cmp	edi, 48h
jnz	short loc_641EBDC8
mov	[esp+34h+data],	0
mov	[esp+34h+data+4], 0
mov	[esp+34h+size],	8 
lea	edi, [esp+34h+data]
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+4], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+8], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+0Ch], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+10h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+14h], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+18h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+1Ch], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+20h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+24h], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+28h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+2Ch], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+30h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+34h], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+38h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+3Ch], eax
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
mov	eax, [esp+34h+data]
mov	[ctx_0+40h], eax
mov	eax, [esp+34h+data+4]
mov	[ctx_0+44h], eax
mov	keybytes_0, 100h
lea	count, [ebp-100h]
lea	count, [count+0]
mov	[esp+34h+size],	8 
mov	[esp+34h+out_blk], edi 
mov	[esp+34h+in_blk], edi 
mov	[esp+34h+var_34], ctx_0	
call	_blowfish_encrypt
movsx	eax, si
mov	edx, [esp+34h+data]
mov	[ctx_0+eax*4+48h], edx
mov	edx, [esp+34h+data+4]
mov	[ctx_0+eax*4+4Ch], edx
add	count, 2
cmp	bp, si
jnz	short loc_641EBF90
add	ebp, 100h
cmp	bp, 500h
jnz	short loc_641EBF87
xor	eax, eax
add	esp, 24h
pop	ctx_0
pop	count
pop	edi
pop	ebp
retn
align 4
public _silc_blowfish_cbc_set_key
sub	esp, 0Ch
mov	eax, [esp+0Ch+keylen]
mov	[esp+0Ch+keybytes], eax	
mov	eax, [esp+0Ch+key]
mov	[esp+0Ch+var_8], eax 
mov	eax, [esp+0Ch+context]
mov	[esp+0Ch+ctx], eax 
call	_blowfish_set_key
mov	al, 1
add	esp, 0Ch
retn
align 4
			
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 4
mov	esi, [in_blk]
mov	ebx, [in_blk+4]
xor	yl, [ctx+44h]
xor	yr, [ctx+40h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
mov	yr, yl
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
mov	ebp, yl
and	ebp, 0FFh
add	edi, [ctx+ebp*4+0C48h]
mov	ebx, [esp+14h+var_14]
xor	yr, edi
xor	yl, [ctx+3Ch]
mov	edi, yr
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yr
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
movzx	ebp, bl
add	edi, [ctx+ebp*4+0C48h]
xor	yl, edi
xor	yr, [ctx+38h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
mov	yr, yl
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
mov	ebp, yl
and	ebp, 0FFh
add	edi, [ctx+ebp*4+0C48h]
mov	ebx, [esp+14h+var_14]
xor	yr, edi
xor	yl, [ctx+34h]
mov	edi, yr
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yr
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
movzx	ebp, bl
add	edi, [ctx+ebp*4+0C48h]
xor	yl, edi
xor	yr, [ctx+30h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
mov	yr, yl
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
mov	ebp, yl
and	ebp, 0FFh
add	edi, [ctx+ebp*4+0C48h]
mov	ebx, [esp+14h+var_14]
xor	yr, edi
xor	yl, [ctx+2Ch]
mov	edi, yr
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yr
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
movzx	ebp, bl
add	edi, [ctx+ebp*4+0C48h]
xor	yl, edi
xor	yr, [ctx+28h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
mov	yr, yl
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
mov	ebp, yl
and	ebp, 0FFh
add	edi, [ctx+ebp*4+0C48h]
mov	ebx, [esp+14h+var_14]
xor	yr, edi
xor	yl, [ctx+24h]
mov	edi, yr
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yr
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
movzx	ebp, bl
add	edi, [ctx+ebp*4+0C48h]
xor	yl, edi
xor	yr, [ctx+20h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
mov	yr, yl
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
mov	ebp, yl
and	ebp, 0FFh
add	edi, [ctx+ebp*4+0C48h]
mov	ebx, [esp+14h+var_14]
xor	yr, edi
xor	yl, [ctx+1Ch]
mov	edi, yr
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yr
shr	ebp, 18h
mov	edi, [ctx+edi*4+448h]
add	edi, [ctx+ebp*4+48h]
movzx	ebp, bh
xor	edi, [ctx+ebp*4+848h]
movzx	ebp, bl
add	edi, [ctx+ebp*4+0C48h]
xor	yl, edi
xor	yr, [ctx+18h]
mov	[esp+14h+var_14], yr
mov	edi, yl
shr	edi, 10h
and	edi, 0FFh
mov	ebp, yl
shr	ebp, 18h
mov	yr, yl

