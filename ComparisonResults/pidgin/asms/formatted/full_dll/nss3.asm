assume cs:_text

assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
align 10h
push	ebx
push	esi
push	edi
push	43h
call	PORT_Alloc_Util
push	43h		
mov	ebx, eax
push	0		
push	ebx		
mov	esi, 1
call	memset
add	esp, 10h
cmp	[esp+0Ch+arg_0], 0
jz	short loc_1000105C
lea	eax, [ebx-1]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_10001038
mov	ecx, ds:dword_100A1524
mov	[eax], ecx
mov	edx, ds:dword_100A1528
mov	[eax+4], edx
mov	cl, ds:byte_100A152C
mov	[eax+8], cl
xor	esi, esi
cmp	[esp+0Ch+arg_4], 0
jz	short loc_100010A9
test	esi, esi
jnz	short loc_10001082
lea	edi, [ebx-1]
lea	ebx, [ebx+0]
mov	al, [edi+1]
inc	edi
test	al, al
jnz	short loc_10001070
mov	dx, ds:word_100A1520
mov	[edi], dx
lea	eax, [ebx-1]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_10001085
mov	ecx, ds:dword_100A1514
mov	[eax], ecx
mov	edx, ds:dword_100A1518
mov	[eax+4], edx
mov	cl, ds:byte_100A151C
mov	[eax+8], cl
xor	esi, esi
cmp	[esp+0Ch+arg_8], 0
jz	short loc_100010EB
test	esi, esi
jnz	short loc_100010C9
lea	edi, [ebx-1]
mov	al, [edi+1]
inc	edi
test	al, al
jnz	short loc_100010B7
mov	dx, ds:word_100A1520
mov	[edi], dx
lea	eax, [ebx-1]
lea	esp, [esp+0]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_100010D0
mov	ecx, ds:dword_100A150C
mov	[eax], ecx
mov	edx, ds:dword_100A1510
mov	[eax+4], edx
xor	esi, esi
cmp	[esp+0Ch+arg_C], 0
jz	short loc_1000113A
test	esi, esi
jnz	short loc_10001111
lea	edi, [ebx-1]
lea	esp, [esp+0]
mov	al, [edi+1]
inc	edi
test	al, al
jnz	short loc_10001100
mov	ax, ds:word_100A1520
mov	[edi], ax
lea	eax, [ebx-1]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_10001114
mov	ecx, ds:dword_100A1500
mov	[eax], ecx
mov	edx, ds:dword_100A1504
mov	[eax+4], edx
mov	cx, ds:word_100A1508
mov	[eax+8], cx
xor	esi, esi
cmp	[esp+0Ch+arg_10], 0
jz	short loc_10001196
test	esi, esi
jnz	short loc_1000115A
lea	edi, [ebx-1]
mov	al, [edi+1]
inc	edi
test	al, al
jnz	short loc_10001148
mov	dx, ds:word_100A1520
mov	[edi], dx
lea	eax, [ebx-1]
lea	ecx, [ecx+0]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_10001160
mov	ecx, ds:dword_100A14EC
mov	[eax], ecx
mov	edx, ds:dword_100A14F0
mov	[eax+4], edx
mov	ecx, ds:dword_100A14F4
mov	[eax+8], ecx
mov	edx, ds:dword_100A14F8
mov	[eax+0Ch], edx
mov	cl, ds:byte_100A14FC
mov	[eax+10h], cl
xor	esi, esi
cmp	[esp+0Ch+arg_14], 0
jz	short loc_100011ED
test	esi, esi
jnz	short loc_100011B6
lea	edi, [ebx-1]
mov	al, [edi+1]
inc	edi
test	al, al
jnz	short loc_100011A4
mov	dx, ds:word_100A1520
mov	[edi], dx
lea	eax, [ebx-1]
lea	esp, [esp+0]
mov	cl, [eax+1]
inc	eax
test	cl, cl
jnz	short loc_100011C0
mov	ecx, ds:dword_100A14DC
mov	[eax], ecx
mov	edx, ds:dword_100A14E0
mov	[eax+4], edx
mov	ecx, ds:dword_100A14E4
mov	[eax+8], ecx
mov	dx, ds:word_100A14E8
mov	[eax+0Ch], dx
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
			
push	esi
push	edi
mov	edi, ds:PR_smprintf
push	offset byte_100A1623
call	edi 
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000121B
pop	edi
pop	esi
retn
mov	eax, [esp+8+arg_0]
push	ebx
mov	ebx, ds:PR_smprintf_free
push	ebp
test	eax, eax
jz	short loc_1000123E
push	eax
push	esi
push	offset aSManufactureri 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	loc_10001327
mov	eax, [esp+10h+arg_4]
test	eax, eax
jz	short loc_10001261
push	eax
push	esi
push	offset aSLibrarydescri 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	loc_10001327
mov	eax, [esp+10h+arg_8]
test	eax, eax
jz	short loc_10001284
push	eax
push	esi
push	offset aSCryptotokende 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	loc_10001327
mov	eax, [esp+10h+arg_C]
test	eax, eax
jz	short loc_100012A7
push	eax
push	esi
push	offset aSDbtokendescri 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	short loc_10001327
mov	eax, [esp+10h+arg_10]
test	eax, eax
jz	short loc_100012C6
push	eax
push	esi
push	offset aSCryptoslotdes 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	short loc_10001327
mov	eax, [esp+10h+arg_14]
test	eax, eax
jz	short loc_100012E5
push	eax
push	esi
push	offset aSDbslotdescrip 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	short loc_10001327
mov	eax, [esp+10h+arg_18]
test	eax, eax
jz	short loc_10001304
push	eax
push	esi
push	offset aSFipsslotdescr 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jz	short loc_10001327
mov	eax, [esp+10h+arg_1C]
test	eax, eax
jz	short loc_10001323
push	eax
push	esi
push	offset aSFipstokendesc 
call	edi 
push	esi
mov	ebp, eax
call	ebx 
add	esp, 10h
mov	esi, ebp
test	esi, esi
jnz	short loc_1000132E
			
pop	ebp
pop	ebx
pop	edi
xor	eax, eax
pop	esi
retn
mov	eax, [esp+10h+arg_20]
push	eax
push	esi
push	offset aSMinpsD	
call	edi 
push	esi
mov	edi, eax
call	ebx 
add	esp, 10h
pop	ebp
pop	ebx
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public PK11_ConfigurePKCS11
mov	eax, [esp+arg_20]
mov	ecx, [esp+arg_1C]
mov	edx, [esp+arg_18]
push	esi
mov	esi, [esp+4+arg_4]
push	edi
push	eax
mov	eax, [esp+0Ch+arg_14]
push	ecx
mov	ecx, [esp+10h+arg_10]
push	edx
mov	edx, [esp+14h+arg_C]
push	eax
mov	eax, [esp+18h+arg_8]
push	ecx
mov	ecx, [esp+1Ch+arg_0]
push	edx
push	eax
push	esi
push	ecx
call	sub_10001200
mov	edi, eax
add	esp, 24h
test	edi, edi
jz	short loc_100013D4
test	esi, esi
jz	short loc_100013B1
mov	eax, dword_100BAB5C
test	eax, eax
jz	short loc_100013A3
push	eax
call	PORT_Free_Util
add	esp, 4
push	esi
call	PORT_Strdup_Util
add	esp, 4
mov	dword_100BAB5C,	eax
mov	eax, dword_100BAB58
test	eax, eax
jz	short loc_100013C4
push	eax
call	ds:PR_smprintf_free
add	esp, 4
mov	edx, [esp+8+arg_24]
mov	dword_100BAB58,	edi
mov	dword_100BAB60,	edx
pop	edi
pop	esi
retn
align 10h
public PK11_UnconfigurePKCS11
mov	eax, dword_100BAB58
test	eax, eax
jz	short loc_100013FD
push	eax
call	ds:PR_smprintf_free
add	esp, 4
mov	dword_100BAB58,	0
mov	eax, dword_100BAB5C
test	eax, eax
jz	short locret_10001419
push	eax
call	PORT_Free_Util
add	esp, 4
mov	dword_100BAB5C,	0
retn
align 10h
push	ecx
mov	eax, [esp+4+Src]
push	ebx
push	ebp
push	esi
push	edi
xor	ebp, ebp
lea	edx, [eax+1]
mov	edi, edi
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10001430
sub	eax, edx
mov	esi, eax
mov	eax, [esp+14h+Str]
test	eax, eax
jz	short loc_10001453
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10001446
sub	eax, edx
mov	ebx, eax
jmp	short loc_10001455
xor	ebx, ebx
mov	eax, off_100BA000
lea	edx, [eax+1]
lea	ecx, [ecx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10001460
sub	eax, edx
add	eax, ebx
lea	eax, [eax+esi+2]
push	eax
mov	[esp+18h+var_4], eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_10001536
mov	eax, [esp+14h+Src]
push	esi		
push	eax		
push	edi		
call	memcpy
add	esp, 0Ch
cmp	byte ptr [edi+esi-1], 2Fh
jz	short loc_100014A1
mov	byte ptr [edi+esi], 2Fh
inc	esi
mov	eax, off_100BA000
lea	edx, [edi+esi]
sub	edx, eax
jmp	short loc_100014B0
align 10h
			
mov	cl, [eax]
mov	[edx+eax], cl
inc	eax
test	cl, cl
jnz	short loc_100014B0
test	ebx, ebx
jle	short loc_1000152A
mov	ebx, [esp+14h+Str]
push	2Fh		
push	ebx		
call	ds:strrchr
add	esp, 8
test	eax, eax
jz	short loc_1000152A
mov	ecx, [esp+14h+var_4]
sub	eax, ebx
push	ecx
lea	ebx, [eax+1]
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jnz	short loc_100014F9
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
push	esi		
push	edi		
push	ebp		
call	memcpy
mov	edx, [esp+20h+Str]
push	ebx		
push	edx		
lea	eax, [esi+ebp]
push	eax		
call	memcpy
mov	eax, off_100BA000
lea	edx, [esi+ebx]
add	edx, ebp
add	esp, 18h
sub	edx, eax
nop
mov	cl, [eax]
mov	[edx+eax], cl
inc	eax
test	cl, cl
jnz	short loc_10001520
			
mov	ecx, [esp+14h+arg_8]
mov	edx, [esp+14h+arg_C]
mov	[ecx], ebp
mov	[edx], edi
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
sub	esp, 8
push	ebp
push	esi
push	edi
lea	eax, [esp+14h+var_4]
push	eax		
mov	eax, [esp+18h+Src]
lea	ecx, [esp+18h+var_8]
push	ecx		
push	edx		
push	eax		
mov	[esp+24h+var_4], 0
mov	[esp+24h+var_8], 0
xor	esi, esi
call	sub_10001420
mov	edi, [esp+24h+var_8]
add	esp, 10h
test	edi, edi
jz	short loc_1000158F
push	esi
push	esi
push	edi
push	offset aRootCerts 
call	SECMOD_AddNewModule
add	esp, 10h
call	SECMOD_HasRootCerts
mov	esi, eax
mov	ebp, [esp+14h+var_4]
test	ebp, ebp
jz	short loc_100015B4
test	esi, esi
jnz	short loc_100015AB
push	esi
push	esi
push	ebp
push	offset aRootCerts 
call	SECMOD_AddNewModule
add	esp, 10h
push	ebp
call	PORT_Free_Util
add	esp, 4
test	edi, edi
jz	short loc_100015C1
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
add	esp, 8
retn
align 10h
			
sub	esp, 20h
push	ebx
push	ebp
push	esi
xor	esi, esi
push	edi
mov	[esp+30h+var_4], 0FFFFFFFFh
mov	[esp+30h+var_8], esi
xor	edi, edi
xor	ebx, ebx
xor	ebp, ebp
mov	[esp+30h+var_20], esi
mov	[esp+30h+var_1C], esi
mov	[esp+30h+var_18], esi
mov	[esp+30h+var_14], esi
call	NSS_InitializePRErrorTable
test	eax, eax
jz	short loc_1000161C
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 20h
retn
mov	eax, [esp+30h+arg_40]
mov	ecx, [esp+30h+arg_2C]
mov	edx, [esp+30h+arg_3C]
push	eax
mov	eax, [esp+34h+arg_38]
push	ecx
mov	ecx, [esp+38h+arg_34]
push	edx
mov	edx, [esp+3Ch+arg_30]
push	eax
push	ecx
push	edx
call	sub_10001010
add	esp, 18h
mov	[esp+30h+var_10], eax
test	eax, eax
jz	short loc_10001611
mov	eax, [esp+30h+arg_0]
push	22h
push	27h
push	eax
call	NSSUTIL_DoubleEscape
add	esp, 0Ch
mov	[esp+30h+var_C], eax
test	eax, eax
jz	loc_100017A1
mov	ecx, [esp+30h+arg_4]
push	22h
push	27h
push	ecx
call	NSSUTIL_DoubleEscape
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	loc_100017A1
mov	edx, [esp+30h+arg_8]
push	22h
push	27h
push	edx
call	NSSUTIL_DoubleEscape
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	loc_100017A1
mov	eax, [esp+30h+arg_C]
push	22h
push	27h
push	eax
call	NSSUTIL_DoubleEscape
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	loc_100017A1
mov	ecx, [esp+30h+arg_10]
push	22h
push	27h
push	ecx
call	NSSUTIL_DoubleEscape
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_100017A1
mov	edx, [esp+30h+arg_14]
push	22h
push	27h
push	edx
call	NSSUTIL_DoubleEscape
add	esp, 0Ch
mov	[esp+30h+var_20], eax
test	eax, eax
jz	loc_100017A1
mov	eax, [esp+30h+arg_18]
push	22h
push	27h
push	eax
call	NSSUTIL_DoubleEscape
add	esp, 0Ch
mov	[esp+30h+var_1C], eax
test	eax, eax
jz	loc_100017A1
mov	ecx, [esp+30h+arg_1C]
push	22h
push	27h
push	ecx
call	NSSUTIL_DoubleEscape
add	esp, 0Ch
mov	[esp+30h+var_18], eax
test	eax, eax
jz	short loc_100017A1
mov	edx, [esp+30h+arg_20]
push	22h
push	27h
push	edx
call	NSSUTIL_DoubleEscape
add	esp, 0Ch
mov	[esp+30h+var_14], eax
test	eax, eax
jz	short loc_100017A1
cmp	[esp+30h+arg_44], 0
mov	eax, offset byte_100A1623
jnz	short loc_10001750
mov	eax, offset aDefaultmoddbIn 
mov	edx, [esp+30h+arg_28]
test	edx, edx
jnz	short loc_1000175D
mov	edx, offset byte_100A1623
mov	ecx, [esp+30h+arg_24]
test	ecx, ecx
jnz	short loc_1000176A
mov	ecx, offset aNssInternalMod 
push	eax
mov	eax, [esp+34h+var_14]
push	edx
mov	edx, [esp+38h+var_18]
push	eax
mov	eax, [esp+3Ch+var_1C]
push	edx
mov	edx, [esp+40h+var_20]
push	eax
mov	eax, [esp+44h+var_10]
push	edx
mov	edx, [esp+48h+var_C]
push	ebp
push	eax
push	ebx
push	edi
push	esi
push	edx
push	ecx
push	offset aNameSParameter 
call	ds:PR_smprintf
add	esp, 38h
mov	[esp+30h+var_8], eax
			
mov	eax, [esp+30h+var_10]
push	eax
call	PORT_Free_Util
mov	eax, [esp+34h+var_C]
add	esp, 4
test	eax, eax
jz	short loc_100017BF
push	eax
call	PORT_Free_Util
add	esp, 4
test	esi, esi
jz	short loc_100017CC
push	esi
call	PORT_Free_Util
add	esp, 4
test	edi, edi
jz	short loc_100017D9
push	edi
call	PORT_Free_Util
add	esp, 4
test	ebx, ebx
jz	short loc_100017E6
push	ebx
call	PORT_Free_Util
add	esp, 4
test	ebp, ebp
jz	short loc_100017F3
push	ebp
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+30h+var_20]
test	eax, eax
jz	short loc_10001804
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+30h+var_1C]
test	eax, eax
jz	short loc_10001815
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+30h+var_18]
test	eax, eax
jz	short loc_10001826
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+30h+var_14]
test	eax, eax
jz	short loc_10001837
push	eax
call	PORT_Free_Util
add	esp, 4
mov	esi, [esp+30h+var_8]
test	esi, esi
jz	short loc_10001870
push	1
push	0
push	esi
call	SECMOD_LoadModule
push	esi
mov	edi, eax
call	ds:PR_smprintf_free
add	esp, 10h
test	edi, edi
jz	short loc_10001870
cmp	dword ptr [edi+8], 0
jz	short loc_10001867
mov	[esp+30h+var_4], 0
push	edi
call	SECMOD_DestroyModule
add	esp, 4
			
mov	eax, [esp+30h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 20h
retn
align 10h
			
call	ds:PR_NewLock
mov	dword_100BAB40,	eax
test	eax, eax
jnz	short loc_10001893
or	eax, 0FFFFFFFFh
retn
push	eax
call	ds:PR_NewCondVar
mov	dword_100BAB54,	eax
add	esp, 4
neg	eax
sbb	eax, eax
neg	eax
dec	eax
retn
align 10h
			
mov	edx, dword_100BAB78
xor	eax, eax
test	edx, edx
jle	short loc_100018D2
mov	ecx, dword_100BAB7C
cmp	[ecx+eax*8], edi
jnz	short loc_100018CD
cmp	[ecx+eax*8+4], esi
jz	short locret_100018D5
inc	eax
cmp	eax, edx
jl	short loc_100018C2
or	eax, 0FFFFFFFFh
retn
align 10h
			
cmp	dword_100BAB70,	0
jnz	short loc_1000193C
call	ds:PR_NewLock
mov	dword_100BAB70,	eax
test	eax, eax
jz	short loc_10001924
push	50h
call	PORT_ZAlloc_Util
add	esp, 4
mov	dword_100BAB7C,	eax
test	eax, eax
jnz	short loc_10001928
mov	eax, dword_100BAB70
push	eax
call	ds:PR_DestroyLock
add	esp, 4
mov	dword_100BAB70,	0
or	eax, 0FFFFFFFFh
retn
mov	dword_100BAB74,	0Ah
mov	dword_100BAB78,	0
xor	eax, eax
retn
align 10h
push	ebx
push	esi
push	edi
xor	ebx, ebx
xor	edi, edi
xor	esi, esi
cmp	dword_100BAB78,	ebx
jle	short loc_10001979
mov	ecx, dword_100BAB7C
mov	eax, [ecx+esi*8]
cmp	eax, ebx
jz	short loc_10001970
mov	ecx, [ecx+esi*8+4]
push	ebx
push	ecx
call	eax
add	esp, 8
test	eax, eax
jz	short loc_10001970
or	edi, 0FFFFFFFFh
			
inc	esi
cmp	esi, dword_100BAB78
jl	short loc_10001951
mov	edx, dword_100BAB7C
push	edx
mov	dword_100BAB78,	ebx
mov	dword_100BAB74,	ebx
call	PORT_Free_Util
mov	eax, dword_100BAB70
add	esp, 4
mov	dword_100BAB7C,	ebx
cmp	eax, ebx
jz	short loc_100019AD
push	eax
call	ds:PR_DestroyLock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
mov	dword_100BAB70,	ebx
pop	ebx
retn
align 10h
			
push	ebx
push	esi
push	edi
xor	ebx, ebx
xor	edi, edi
call	sub_10001940
test	eax, eax
jz	short loc_100019D3
or	edi, 0FFFFFFFFh
call	sub_1003D940
call	sub_10040530
call	sub_10005110
mov	eax, dword_100BAB6C
push	eax
call	sub_1006A7D0
call	SECOID_Shutdown
call	sub_1004ABD0
mov	esi, eax
call	sub_1003DD10
push	ebx
call	sub_100362D0
add	esp, 8
call	sub_100396F0
test	eax, eax
jz	short loc_10001A13
or	edi, 0FFFFFFFFh
call	sub_10030A90
call	__PBE_GenerateBits
cmp	esi, 0FFFFFFFFh
jnz	short loc_10001A3F
call	sub_10050A60
cmp	eax, ds:dword_100A7E68
jnz	short loc_10001A3C
push	0FFFFE08Bh
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
call	sub_10050AD0
mov	eax, dword_100BAB68
mov	dword_100BAB64,	ebx
mov	dword_100BAB68,	ebx
cmp	eax, ebx
jz	short loc_10001A74
lea	esp, [esp+0]
mov	esi, [eax]
push	eax
mov	[eax+4], ebx
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
cmp	esi, ebx
jnz	short loc_10001A60
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
align 10h
public NSS_Shutdown
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jnz	short loc_10001AC9
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Lock
add	esp, 4
cmp	dword_100BAB64,	0
jnz	short loc_10001ACD
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
retn
cmp	dword_100BAB44,	0
push	esi
jz	short loc_10001AF7
mov	esi, ds:PR_WaitCondVar
lea	ecx, [ecx+0]
mov	edx, dword_100BAB54
push	0FFFFFFFFh
push	edx
call	esi 
add	esp, 8
cmp	dword_100BAB44,	0
jnz	short loc_10001AE0
call	sub_100019C0
mov	esi, eax
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Unlock
add	esp, 4
mov	eax, esi
pop	esi
retn
align 10h
mov	eax, dword_100BAB68
mov	ecx, offset dword_100BAB68
test	eax, eax
jz	short loc_10001B3E
mov	edx, [esp+arg_0]
cmp	eax, edx
jz	short loc_10001B41
mov	ecx, eax
mov	eax, [eax]
test	eax, eax
jnz	short loc_10001B32
xor	eax, eax
retn
mov	edx, [eax]
mov	[ecx], edx
push	eax
mov	dword ptr [eax+4], 0
call	PORT_Free_Util
add	esp, 4
mov	eax, 1
retn
align 10h
public NSS_ShutdownContext
push	edi
push	offset loc_10001880
push	offset dword_100BAB48
xor	edi, edi
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jnz	short loc_10001BE1
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Lock
add	esp, 4
cmp	dword_100BAB44,	edi
jz	short loc_10001BB7
push	esi
mov	esi, ds:PR_WaitCondVar
jmp	short loc_10001BA0
align 10h
			
mov	ecx, dword_100BAB54
push	0FFFFFFFFh
push	ecx
call	esi 
add	esp, 8
cmp	dword_100BAB44,	edi
jnz	short loc_10001BA0
pop	esi
mov	eax, [esp+4+arg_0]
cmp	eax, edi
jnz	short loc_10001BEE
cmp	dword_100BAB64,	edi
jnz	short loc_10001BE6
mov	edx, dword_100BAB40
push	edx
call	ds:PR_Unlock
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	edi
retn
mov	dword_100BAB64,	edi
jmp	short loc_10001C0B
push	eax
call	sub_10001B20
add	esp, 4
test	eax, eax
jnz	short loc_10001C03
mov	eax, dword_100BAB40
push	eax
jmp	short loc_10001BCE
cmp	dword_100BAB64,	edi
jnz	short loc_10001C1A
cmp	dword_100BAB68,	edi
jnz	short loc_10001C1A
call	sub_100019C0
mov	edi, eax
			
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
retn
align 10h
public NSS_IsInitialized
			
cmp	dword_100BAB64,	0
jnz	short loc_10001C45
cmp	dword_100BAB68,	0
jnz	short loc_10001C45
xor	eax, eax
retn
			
mov	eax, 1
retn
align 10h
public NSS_VersionCheck
sub	esp, 8
movsx	eax, ds:byte_100A17EC
movsx	ecx, ds:byte_100A17B4
push	ebx
push	ebp
push	esi
mov	esi, [esp+14h+arg_0]
movsx	edx, byte ptr [esi]
push	edi
mov	edi, ds:isdigit
xor	ebx, ebx
add	eax, ecx
push	edx		
mov	[esp+1Ch+var_8], ebx
xor	ebp, ebp
mov	[esp+1Ch+var_4], ebx
mov	byte ptr [esp+1Ch+arg_0], al
call	edi 
add	esp, 4
test	eax, eax
jz	short loc_10001CB1
mov	edi, edi
movsx	ecx, byte ptr [esi]
mov	eax, [esp+18h+var_8]
lea	eax, [eax+eax*4]
lea	edx, [ecx+eax*2-30h]
movsx	eax, byte ptr [esi+1]
inc	esi
push	eax
mov	[esp+1Ch+var_8], edx
call	edi
add	esp, 4
test	eax, eax
jnz	short loc_10001C90
cmp	byte ptr [esi],	2Eh
jnz	loc_10001D51
movsx	ecx, byte ptr [esi+1]
inc	esi
push	ecx		
call	edi 
add	esp, 4
test	eax, eax
jz	short loc_10001CE9
lea	esp, [esp+0]
movsx	eax, byte ptr [esi]
movsx	ecx, byte ptr [esi+1]
inc	esi
lea	edx, [ebx+ebx*4]
push	ecx		
lea	ebx, [eax+edx*2-30h]
call	edi 
add	esp, 4
test	eax, eax
jnz	short loc_10001CD0
cmp	byte ptr [esi],	2Eh
jnz	short loc_10001D51
movsx	edx, byte ptr [esi+1]
inc	esi
push	edx		
call	edi 
add	esp, 4
test	eax, eax
jz	short loc_10001D1A
lea	ecx, [ecx+0]
movsx	ecx, byte ptr [esi]
movsx	edx, byte ptr [esi+1]
inc	esi
lea	eax, [ebp+ebp*4+0]
push	edx		
lea	ebp, [ecx+eax*2-30h]
call	edi 
add	esp, 4
test	eax, eax
jnz	short loc_10001D00
cmp	byte ptr [esi],	2Eh
jnz	short loc_10001D51
movsx	eax, byte ptr [esi+1]
inc	esi
push	eax		
call	edi 
add	esp, 4
test	eax, eax
jz	short loc_10001D51
mov	edi, edi
mov	eax, [esp+18h+var_4]
movsx	edx, byte ptr [esi]
lea	ecx, [eax+eax*4]
lea	eax, [edx+ecx*2-30h]
movsx	ecx, byte ptr [esi+1]
inc	esi
push	ecx
mov	[esp+1Ch+var_4], eax
call	edi
add	esp, 4
test	eax, eax
jnz	short loc_10001D30
			
cmp	[esp+18h+var_8], 3
jz	short loc_10001D62
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
cmp	ebx, 11h
jg	short loc_10001D58
jnz	short loc_10001D77
cmp	ebp, 1
jg	short loc_10001D58
jnz	short loc_10001D77
cmp	[esp+18h+var_4], 0
jg	short loc_10001D58
			
pop	edi
pop	esi
pop	ebp
mov	eax, 1
pop	ebx
add	esp, 8
retn
align 10h
public NSS_GetVersion
mov	eax, offset a3_17_1BasicEcc 
retn
align 10h
sub	esp, 0Ch
push	ebp
mov	ebp, [esp+10h+arg_24]
push	esi
xor	esi, esi
push	edi
xor	edi, edi
mov	[esp+18h+var_4], esi
mov	[esp+18h+var_8], esi
cmp	ebx, esi
jnz	short loc_10001DC6
cmp	dword_100BAB64,	esi
jnz	loc_100021AE
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jnz	loc_10002110
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Lock
add	esp, 4
cmp	dword_100BAB64,	esi
jnz	loc_10001EDD
cmp	dword_100BAB68,	esi
jnz	loc_10001EDD
mov	[esp+18h+var_C], esi
lea	esp, [esp+0]
cmp	dword_100BAB44,	esi
jz	short loc_10001E37
mov	ecx, dword_100BAB54
push	0FFFFFFFFh
push	ecx
call	ds:PR_WaitCondVar
add	esp, 8
call	NSS_IsInitialized
mov	[esp+18h+var_C], eax
test	eax, eax
jz	short loc_10001E10
			
mov	edx, dword_100BAB40
inc	dword_100BAB44
push	edx
call	ds:PR_Unlock
add	esp, 4
cmp	[esp+18h+var_C], esi
jnz	short loc_10001E7A
call	sub_1003D8E0
test	eax, eax
jnz	loc_100020B6
call	sub_1003F8B0
test	eax, eax
jnz	loc_100020B6
call	sub_10005070
test	eax, eax
jnz	loc_100020B6
mov	eax, [esp+18h+arg_40]
test	eax, eax
jnz	short loc_10001E8E
cmp	[esp+18h+arg_44], esi
jnz	short loc_10001E8E
cmp	[esp+18h+arg_48], esi
jz	short loc_10001EA1
			
mov	ecx, [esp+18h+arg_48]
mov	edx, [esp+18h+arg_44]
push	ecx
push	edx
push	eax
call	sub_10024450
add	esp, 0Ch
test	ebx, ebx
jz	loc_10001F38
push	8
call	PORT_ZAlloc_Util
add	esp, 4
mov	[ebx], eax
test	eax, eax
jz	loc_100020B6
test	ebp, ebp
jz	loc_10001F4D
cmp	dword ptr [ebp+0], 2Ch
jnb	short loc_10001EEA
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_100020B6
			
mov	[esp+18h+var_C], 1
jmp	loc_10001E37
mov	eax, [ebp+8]
mov	ecx, [ebp+1Ch]
mov	edx, [ebp+28h]
push	eax
mov	eax, [ebp+24h]
push	ecx
mov	ecx, [ebp+20h]
push	edx
mov	edx, [ebp+18h]
push	eax
mov	eax, [ebp+14h]
push	ecx
mov	ecx, [ebp+10h]
push	edx
mov	edx, [ebp+0Ch]
push	eax
push	ecx
push	edx
call	sub_10001200
add	esp, 24h
mov	[esp+18h+var_8], eax
test	eax, eax
jnz	short loc_10001F30
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_100020B6
mov	esi, [ebp+10h]
mov	edi, [ebp+4]
jmp	short loc_10001F4D
mov	eax, dword_100BAB58
mov	esi, dword_100BAB5C
mov	edi, dword_100BAB60
mov	[esp+18h+var_8], eax
			
cmp	[esp+18h+var_C], 0
mov	ebp, [esp+18h+arg_2C]
jz	short loc_10001F63
test	ebp, ebp
jz	short loc_10001F63
cmp	[esp+18h+arg_30], 0
jnz	short loc_10001FC6
			
mov	edx, [esp+18h+arg_3C]
mov	eax, [esp+18h+arg_34]
xor	ecx, ecx
test	ebx, ebx
setnz	cl
push	ecx
mov	ecx, [esp+1Ch+arg_30]
push	edx
mov	edx, [esp+20h+arg_28]
push	eax
mov	eax, [esp+24h+var_8]
push	ecx
mov	ecx, [esp+28h+arg_20]
push	ebp
push	edx
mov	edx, [esp+30h+arg_1C]
push	edi
push	eax
mov	eax, [esp+38h+arg_18]
push	esi
mov	esi, [esp+3Ch+Str1]
push	ecx
mov	ecx, [esp+40h+arg_14]
push	edx
mov	edx, [esp+44h+arg_10]
push	eax
mov	eax, [esp+48h+arg_C]
push	ecx
mov	ecx, [esp+4Ch+arg_8]
push	edx
mov	edx, [esp+50h+arg_4]
push	eax
push	ecx
push	edx
push	esi
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	loc_100020B6
jmp	short loc_10001FCA
mov	esi, [esp+18h+Str1]
cmp	[esp+18h+var_C], 0
jnz	loc_1000213B
call	SECOID_Init
test	eax, eax
jnz	loc_100020B6
call	sub_1004A920
test	eax, eax
jnz	loc_100020B6
call	sub_100018E0
test	eax, eax
jnz	loc_100020B6
call	sub_1004A850
push	eax
call	sub_1003C170
add	esp, 4
cmp	[esp+18h+arg_30], 0
jnz	short loc_1000208E
test	ebp, ebp
jnz	short loc_1000208E
cmp	[esp+18h+arg_38], ebp
jnz	short loc_1000208E
call	SECMOD_HasRootCerts
test	eax, eax
jnz	short loc_1000208E
mov	edi, ds:strncmp
push	4		
push	offset Str2	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002040
add	esi, 4
jmp	short loc_1000207D
push	4		
push	offset aDbm	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002056
add	esi, 4
jmp	short loc_1000207D
push	7		
push	offset aExtern	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000206C
add	esi, 7
jmp	short loc_1000207D
push	4		
push	offset aRdb	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jz	short loc_1000208E
			
test	esi, esi
jz	short loc_1000208E
mov	edx, [esp+18h+arg_C]
push	esi
call	sub_10001540
add	esp, 4
			
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	eax, [esp+1Ch+var_4]
push	eax
push	3
push	3
push	0
push	0
call	sub_1006A540
add	esp, 18h
test	eax, eax
jz	short loc_1000211A
			
test	ebx, ebx
jz	short loc_100020E1
mov	eax, [ebx]
test	eax, eax
jz	short loc_100020E1
push	eax
call	PORT_Free_Util
mov	eax, [esp+1Ch+var_8]
add	esp, 4
mov	dword ptr [ebx], 0
test	eax, eax
jz	short loc_100020E1
push	eax
call	ds:PR_smprintf_free
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Lock
mov	edx, dword_100BAB54
dec	dword_100BAB44
push	edx
call	ds:PR_NotifyCondVar
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Unlock
add	esp, 0Ch
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_1000213B
cmp	byte ptr [eax],	0
jz	short loc_1000213B
push	1
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Lock
add	esp, 4
test	ebx, ebx
jnz	short loc_1000215B
mov	dword_100BAB64,	1
jmp	short loc_10002176
mov	edx, [ebx]
mov	dword ptr [edx+4], 1413A91Ch
mov	eax, [ebx]
mov	ecx, dword_100BAB68
mov	[eax], ecx
mov	edx, [ebx]
mov	dword_100BAB68,	edx
mov	eax, dword_100BAB54
dec	dword_100BAB44
push	eax
call	ds:PR_NotifyAllCondVar
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
add	esp, 8
test	ebx, ebx
jz	short loc_100021AE
mov	eax, [esp+18h+var_8]
test	eax, eax
jz	short loc_100021AE
push	eax
call	ds:PR_smprintf_free
add	esp, 4
			
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
align 10h
public NSS_Init
push	ecx
push	edi
xor	edi, edi
mov	[esp+8+var_4], edi
cmp	dword_100BAB64,	edi
jz	short loc_100021D5
xor	eax, eax
pop	edi
pop	ecx
retn
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_100021F2
or	eax, 0FFFFFFFFh
pop	edi
pop	ecx
retn
mov	eax, dword_100BAB40
push	ebp
mov	ebp, ds:PR_Lock
push	esi
push	eax
call	ebp 
add	esp, 4
cmp	dword_100BAB64,	edi
jnz	short loc_10002215
cmp	dword_100BAB68,	edi
jz	short loc_1000221C
mov	edi, 1
jmp	short loc_10002244
mov	esi, ds:PR_WaitCondVar
cmp	dword_100BAB44,	0
jz	short loc_10002244
mov	ecx, dword_100BAB54
push	0FFFFFFFFh
push	ecx
call	esi 
add	esp, 8
call	NSS_IsInitialized
mov	edi, eax
test	edi, edi
jz	short loc_10002222
mov	edx, dword_100BAB40
inc	dword_100BAB44
push	ebx
mov	ebx, ds:PR_Unlock
push	edx
call	ebx 
add	esp, 4
test	edi, edi
jnz	short loc_10002288
call	sub_1003D8E0
test	eax, eax
jnz	loc_100023BE
call	sub_1003F8B0
test	eax, eax
jnz	loc_100023BE
call	sub_10005070
test	eax, eax
jnz	loc_100023BE
mov	eax, dword_100BAB60
mov	ecx, dword_100BAB58
mov	edx, dword_100BAB5C
push	0
push	1
push	0
push	0
push	0
push	1
mov	esi, [esp+2Ch+Str1]
push	eax
push	ecx
push	edx
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset aSecmod_db 
push	offset byte_100A1623
push	offset byte_100A1623
push	esi
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	loc_100023BE
test	edi, edi
jnz	loc_1000240F
call	SECOID_Init
test	eax, eax
jnz	loc_100023BE
call	sub_1004A920
test	eax, eax
jnz	loc_100023BE
call	sub_100018E0
test	eax, eax
jnz	loc_100023BE
call	sub_1004A850
push	eax
call	sub_1003C170
add	esp, 4
call	SECMOD_HasRootCerts
test	eax, eax
jnz	short loc_10002396
mov	edi, ds:strncmp
push	4		
push	offset Str2	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002347
add	esi, 4
jmp	short loc_10002384
push	4		
push	offset aDbm	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000235D
add	esi, 4
jmp	short loc_10002384
push	7		
push	offset aExtern	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002373
add	esi, 7
jmp	short loc_10002384
push	4		
push	offset aRdb	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jz	short loc_10002396
			
test	esi, esi
jz	short loc_10002396
push	esi
mov	edx, offset aSecmod_db 
call	sub_10001540
add	esp, 4
			
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	eax, [esp+18h+var_4]
push	eax
push	3
push	3
push	0
push	0
call	sub_1006A540
add	esp, 18h
test	eax, eax
jz	short loc_100023EE
mov	ecx, dword_100BAB40
push	ecx
call	ebp 
mov	edx, dword_100BAB54
dec	dword_100BAB44
push	edx
call	ds:PR_NotifyCondVar
mov	eax, dword_100BAB40
push	eax
call	ebx 
add	esp, 0Ch
pop	ebx
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	edi
pop	ecx
retn
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_1000240F
cmp	byte ptr [eax],	0
jz	short loc_1000240F
push	1
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ebp 
mov	edx, dword_100BAB54
mov	eax, 1
sub	dword_100BAB44,	eax
push	edx
mov	dword_100BAB64,	eax
call	ds:PR_NotifyAllCondVar
mov	eax, dword_100BAB40
push	eax
call	ebx 
add	esp, 0Ch
pop	ebx
pop	esi
pop	ebp
xor	eax, eax
pop	edi
pop	ecx
retn
align 10h
public NSS_InitReadWrite
push	ecx
push	edi
xor	edi, edi
mov	[esp+8+var_4], edi
cmp	dword_100BAB64,	edi
jz	short loc_10002465
xor	eax, eax
pop	edi
pop	ecx
retn
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_10002482
or	eax, 0FFFFFFFFh
pop	edi
pop	ecx
retn
mov	eax, dword_100BAB40
push	ebp
mov	ebp, ds:PR_Lock
push	esi
push	eax
call	ebp 
add	esp, 4
cmp	dword_100BAB64,	edi
jnz	short loc_100024A5
cmp	dword_100BAB68,	edi
jz	short loc_100024AC
mov	edi, 1
jmp	short loc_100024D4
mov	esi, ds:PR_WaitCondVar
cmp	dword_100BAB44,	0
jz	short loc_100024D4
mov	ecx, dword_100BAB54
push	0FFFFFFFFh
push	ecx
call	esi 
add	esp, 8
call	NSS_IsInitialized
mov	edi, eax
test	edi, edi
jz	short loc_100024B2
			
mov	edx, dword_100BAB40
inc	dword_100BAB44
push	ebx
mov	ebx, ds:PR_Unlock
push	edx
call	ebx 
add	esp, 4
test	edi, edi
jnz	short loc_10002518
call	sub_1003D8E0
test	eax, eax
jnz	loc_1000264E
call	sub_1003F8B0
test	eax, eax
jnz	loc_1000264E
call	sub_10005070
test	eax, eax
jnz	loc_1000264E
mov	eax, dword_100BAB60
mov	ecx, dword_100BAB58
mov	edx, dword_100BAB5C
push	0
push	1
push	0
push	0
push	0
push	0
mov	esi, [esp+2Ch+Str1]
push	eax
push	ecx
push	edx
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset aSecmod_db 
push	offset byte_100A1623
push	offset byte_100A1623
push	esi
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	loc_1000264E
test	edi, edi
jnz	loc_1000269F
call	SECOID_Init
test	eax, eax
jnz	loc_1000264E
call	sub_1004A920
test	eax, eax
jnz	loc_1000264E
call	sub_100018E0
test	eax, eax
jnz	loc_1000264E
call	sub_1004A850
push	eax
call	sub_1003C170
add	esp, 4
call	SECMOD_HasRootCerts
test	eax, eax
jnz	short loc_10002626
mov	edi, ds:strncmp
push	4		
push	offset Str2	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_100025D7
add	esi, 4
jmp	short loc_10002614
push	4		
push	offset aDbm	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_100025ED
add	esi, 4
jmp	short loc_10002614
push	7		
push	offset aExtern	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002603
add	esi, 7
jmp	short loc_10002614
push	4		
push	offset aRdb	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jz	short loc_10002626
			
test	esi, esi
jz	short loc_10002626
push	esi
mov	edx, offset aSecmod_db 
call	sub_10001540
add	esp, 4
			
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	eax, [esp+18h+var_4]
push	eax
push	3
push	3
push	0
push	0
call	sub_1006A540
add	esp, 18h
test	eax, eax
jz	short loc_1000267E
			
mov	ecx, dword_100BAB40
push	ecx
call	ebp 
mov	edx, dword_100BAB54
dec	dword_100BAB44
push	edx
call	ds:PR_NotifyCondVar
mov	eax, dword_100BAB40
push	eax
call	ebx 
add	esp, 0Ch
pop	ebx
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	edi
pop	ecx
retn
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_1000269F
cmp	byte ptr [eax],	0
jz	short loc_1000269F
push	1
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ebp 
mov	edx, dword_100BAB54
mov	eax, 1
sub	dword_100BAB44,	eax
push	edx
mov	dword_100BAB64,	eax
call	ds:PR_NotifyAllCondVar
mov	eax, dword_100BAB40
push	eax
call	ebx 
add	esp, 0Ch
pop	ebx
pop	esi
pop	ebp
xor	eax, eax
pop	edi
pop	ecx
retn
align 10h
public NSS_Initialize
sub	esp, 10h
push	ebx
push	ebp
push	edi
xor	ecx, ecx
mov	ebx, [esp+1Ch+arg_10]
mov	eax, ebx
and	eax, 100h
cmp	eax, 100h
setz	cl
xor	eax, eax
mov	edx, ebx
and	dl, 80h
cmp	dl, 80h
setz	al
xor	edx, edx
mov	[esp+1Ch+var_10], ecx
mov	ecx, ebx
and	cl, 40h
cmp	cl, 40h
setz	dl
mov	[esp+1Ch+var_C], eax
mov	eax, ebx
and	al, 4
xor	ecx, ecx
cmp	al, 4
setz	cl
mov	[esp+1Ch+var_8], edx
mov	edx, ebx
xor	eax, eax
and	dl, 2
cmp	dl, 2
setz	al
xor	edi, edi
mov	ebp, ecx
mov	[esp+1Ch+var_4], edi
mov	[esp+1Ch+arg_10], eax
cmp	dword_100BAB64,	edi
jz	short loc_10002756
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_10002777
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
mov	ecx, dword_100BAB40
push	esi
push	ecx
call	ds:PR_Lock
add	esp, 4
cmp	dword_100BAB64,	edi
jnz	short loc_10002798
cmp	dword_100BAB68,	edi
jz	short loc_1000279F
mov	edi, 1
jmp	short loc_100027C7
mov	esi, ds:PR_WaitCondVar
cmp	dword_100BAB44,	0
jz	short loc_100027C7
mov	edx, dword_100BAB54
push	0FFFFFFFFh
push	edx
call	esi 
add	esp, 8
call	NSS_IsInitialized
mov	edi, eax
test	edi, edi
jz	short loc_100027A5
			
mov	eax, dword_100BAB40
inc	dword_100BAB44
push	eax
call	ds:PR_Unlock
add	esp, 4
test	edi, edi
jnz	short loc_10002807
call	sub_1003D8E0
test	eax, eax
jnz	loc_100029A5
call	sub_1003F8B0
test	eax, eax
jnz	loc_100029A5
call	sub_10005070
test	eax, eax
jnz	loc_100029A5
mov	eax, [esp+20h+var_8]
test	eax, eax
jnz	short loc_1000281B
cmp	[esp+20h+var_C], eax
jnz	short loc_1000281B
cmp	[esp+20h+var_10], eax
jz	short loc_1000282E
			
mov	ecx, [esp+20h+var_10]
mov	edx, [esp+20h+var_C]
push	ecx
push	edx
push	eax
call	sub_10024450
add	esp, 0Ch
mov	esi, [esp+20h+Str1]
test	edi, edi
jz	short loc_10002841
cmp	[esp+20h+arg_10], 0
jz	short loc_10002841
test	ebp, ebp
jnz	short loc_100028BE
			
xor	ecx, ecx
push	0
mov	eax, ebx
and	al, 20h
cmp	al, 20h
setz	cl
xor	eax, eax
mov	edx, ebx
and	dl, 8
cmp	dl, 8
setz	al
mov	edx, ebx
push	ecx
mov	ecx, [esp+28h+arg_10]
and	dl, 1
push	eax
push	ebp
push	ecx
mov	ecx, dword_100BAB60
xor	eax, eax
cmp	dl, 1
mov	edx, dword_100BAB58
setz	al
push	eax
mov	eax, dword_100BAB5C
push	ecx
mov	ecx, [esp+3Ch+arg_C]
push	edx
mov	edx, [esp+40h+arg_8]
push	eax
mov	eax, [esp+44h+arg_4]
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	ecx
push	edx
push	eax
push	esi
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	loc_100029A5
test	edi, edi
jnz	loc_10002A00
call	SECOID_Init
test	eax, eax
jnz	loc_100029A5
call	sub_1004A920
test	eax, eax
jnz	loc_100029A5
call	sub_100018E0
test	eax, eax
jnz	loc_100029A5
call	sub_1004A850
push	eax
call	sub_1003C170
add	esp, 4
test	ebp, ebp
jnz	short loc_1000297D
cmp	[esp+20h+arg_10], ebp
jnz	short loc_1000297D
test	bl, 10h
jnz	short loc_1000297D
call	SECMOD_HasRootCerts
test	eax, eax
jnz	short loc_1000297D
mov	edi, ds:strncmp
push	4		
push	offset Str2	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000292F
add	esi, 4
jmp	short loc_1000296C
push	4		
push	offset aDbm	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002945
add	esi, 4
jmp	short loc_1000296C
push	7		
push	offset aExtern	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000295B
add	esi, 7
jmp	short loc_1000296C
push	4		
push	offset aRdb	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jz	short loc_1000297D
			
test	esi, esi
jz	short loc_1000297D
mov	edx, [esp+20h+arg_C]
push	esi
call	sub_10001540
add	esp, 4
			
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	ecx, [esp+24h+var_4]
push	ecx
push	3
push	3
push	0
push	0
call	sub_1006A540
add	esp, 18h
test	eax, eax
jz	short loc_100029DF
			
mov	edx, dword_100BAB40
push	edx
call	ds:PR_Lock
mov	eax, dword_100BAB54
dec	dword_100BAB44
push	eax
call	ds:PR_NotifyCondVar
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
add	esp, 0Ch
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_10002A00
cmp	byte ptr [eax],	0
jz	short loc_10002A00
push	1
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	edx, dword_100BAB40
push	edx
call	ds:PR_Lock
mov	eax, 1
sub	dword_100BAB44,	eax
mov	dword_100BAB64,	eax
mov	eax, dword_100BAB54
push	eax
call	ds:PR_NotifyAllCondVar
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
add	esp, 0Ch
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
public NSS_InitContext
mov	eax, [esp+arg_14]
xor	edx, edx
push	ebx
mov	ecx, eax
and	ecx, 100h
cmp	ecx, 100h
setz	dl
mov	ecx, eax
and	cl, 80h
lea	ebx, [esp+4+arg_14]
push	edx		
xor	edx, edx
cmp	cl, 80h
setz	dl
mov	ecx, eax
and	cl, 40h
push	edx		
xor	edx, edx
cmp	cl, 40h
setz	dl
mov	ecx, eax
and	cl, 20h
push	edx		
xor	edx, edx
cmp	cl, 20h
setz	dl
mov	ecx, eax
and	cl, 8
push	edx		
xor	edx, edx
cmp	cl, 8
setz	dl
push	1		
mov	ecx, eax
and	cl, 4
push	edx		
xor	edx, edx
cmp	cl, 4
setz	dl
mov	ecx, eax
and	cl, 2
push	edx		
xor	edx, edx
cmp	cl, 2
setz	dl
and	al, 1
xor	ecx, ecx
cmp	al, 1
mov	eax, [esp+20h+arg_C]
setz	cl
push	edx		
mov	edx, [esp+24h+arg_10]
push	ecx		
mov	ecx, [esp+28h+arg_8]
push	edx		
mov	edx, [esp+2Ch+arg_4]
push	offset byte_100A1623 
push	offset byte_100A1623 
push	offset byte_100A1623 
push	offset byte_100A1623 
push	offset byte_100A1623 
push	eax		
mov	eax, [esp+44h+Str1]
push	ecx		
push	edx		
push	eax		
call	sub_10001DA0
add	esp, 4Ch
neg	eax
sbb	eax, eax
not	eax
and	eax, [esp+4+arg_14]
pop	ebx
retn
align 10h
public NSS_InitWithMerge
sub	esp, 10h
push	ebx
push	ebp
push	edi
xor	ecx, ecx
mov	ebx, [esp+1Ch+arg_24]
mov	eax, ebx
and	eax, 100h
cmp	eax, 100h
setz	cl
xor	eax, eax
mov	edx, ebx
and	dl, 80h
cmp	dl, 80h
setz	al
xor	edx, edx
mov	[esp+1Ch+var_10], ecx
mov	ecx, ebx
and	cl, 40h
cmp	cl, 40h
setz	dl
mov	[esp+1Ch+var_C], eax
mov	eax, ebx
and	al, 4
xor	ecx, ecx
cmp	al, 4
setz	cl
mov	[esp+1Ch+var_8], edx
mov	edx, ebx
xor	eax, eax
and	dl, 2
cmp	dl, 2
setz	al
xor	edi, edi
mov	ebp, ecx
mov	[esp+1Ch+var_4], edi
mov	[esp+1Ch+arg_24], eax
cmp	dword_100BAB64,	edi
jz	short loc_10002B96
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_10002BB7
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
mov	ecx, dword_100BAB40
push	esi
push	ecx
call	ds:PR_Lock
add	esp, 4
cmp	dword_100BAB64,	edi
jnz	short loc_10002BD8
cmp	dword_100BAB68,	edi
jz	short loc_10002BDF
mov	edi, 1
jmp	short loc_10002C07
mov	esi, ds:PR_WaitCondVar
cmp	dword_100BAB44,	0
jz	short loc_10002C07
mov	edx, dword_100BAB54
push	0FFFFFFFFh
push	edx
call	esi 
add	esp, 8
call	NSS_IsInitialized
mov	edi, eax
test	edi, edi
jz	short loc_10002BE5
			
mov	eax, dword_100BAB40
inc	dword_100BAB44
push	eax
call	ds:PR_Unlock
add	esp, 4
test	edi, edi
jnz	short loc_10002C47
call	sub_1003D8E0
test	eax, eax
jnz	loc_10002DE5
call	sub_1003F8B0
test	eax, eax
jnz	loc_10002DE5
call	sub_10005070
test	eax, eax
jnz	loc_10002DE5
mov	eax, [esp+20h+var_8]
test	eax, eax
jnz	short loc_10002C5B
cmp	[esp+20h+var_C], eax
jnz	short loc_10002C5B
cmp	[esp+20h+var_10], eax
jz	short loc_10002C6E
			
mov	ecx, [esp+20h+var_10]
mov	edx, [esp+20h+var_C]
push	ecx
push	edx
push	eax
call	sub_10024450
add	esp, 0Ch
mov	esi, [esp+20h+Str1]
test	edi, edi
jz	short loc_10002C81
cmp	[esp+20h+arg_24], 0
jz	short loc_10002C81
test	ebp, ebp
jnz	short loc_10002CFE
			
xor	ecx, ecx
push	0
mov	eax, ebx
and	al, 20h
cmp	al, 20h
setz	cl
xor	eax, eax
mov	edx, ebx
and	dl, 8
cmp	dl, 8
setz	al
mov	edx, ebx
push	ecx
mov	ecx, [esp+28h+arg_24]
and	dl, 1
push	eax
push	ebp
push	ecx
mov	ecx, dword_100BAB60
xor	eax, eax
cmp	dl, 1
mov	edx, dword_100BAB58
setz	al
push	eax
mov	eax, dword_100BAB5C
push	ecx
mov	ecx, [esp+3Ch+arg_20]
push	edx
mov	edx, [esp+40h+arg_1C]
push	eax
mov	eax, [esp+44h+arg_18]
push	ecx
mov	ecx, [esp+48h+arg_14]
push	edx
mov	edx, [esp+4Ch+arg_10]
push	eax
mov	eax, [esp+50h+arg_C]
push	ecx
mov	ecx, [esp+54h+arg_8]
push	edx
mov	edx, [esp+58h+arg_4]
push	eax
push	ecx
push	edx
push	esi
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	loc_10002DE5
test	edi, edi
jnz	loc_10002E40
call	SECOID_Init
test	eax, eax
jnz	loc_10002DE5
call	sub_1004A920
test	eax, eax
jnz	loc_10002DE5
call	sub_100018E0
test	eax, eax
jnz	loc_10002DE5
call	sub_1004A850
push	eax
call	sub_1003C170
add	esp, 4
test	ebp, ebp
jnz	short loc_10002DBD
cmp	[esp+20h+arg_24], ebp
jnz	short loc_10002DBD
test	bl, 10h
jnz	short loc_10002DBD
call	SECMOD_HasRootCerts
test	eax, eax
jnz	short loc_10002DBD
mov	edi, ds:strncmp
push	4		
push	offset Str2	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002D6F
add	esi, 4
jmp	short loc_10002DAC
push	4		
push	offset aDbm	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002D85
add	esi, 4
jmp	short loc_10002DAC
push	7		
push	offset aExtern	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jnz	short loc_10002D9B
add	esi, 7
jmp	short loc_10002DAC
push	4		
push	offset aRdb	
push	esi		
call	edi 
add	esp, 0Ch
test	eax, eax
jz	short loc_10002DBD
			
test	esi, esi
jz	short loc_10002DBD
mov	edx, [esp+20h+arg_C]
push	esi
call	sub_10001540
add	esp, 4
			
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	eax, [esp+24h+var_4]
push	eax
push	3
push	3
push	0
push	0
call	sub_1006A540
add	esp, 18h
test	eax, eax
jz	short loc_10002E1F
			
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Lock
mov	edx, dword_100BAB54
dec	dword_100BAB44
push	edx
call	ds:PR_NotifyCondVar
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Unlock
add	esp, 0Ch
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_10002E40
cmp	byte ptr [eax],	0
jz	short loc_10002E40
push	1
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Lock
mov	edx, dword_100BAB54
mov	eax, 1
sub	dword_100BAB44,	eax
push	edx
mov	dword_100BAB64,	eax
call	ds:PR_NotifyAllCondVar
mov	eax, dword_100BAB40
push	eax
call	ds:PR_Unlock
add	esp, 0Ch
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
public NSS_NoDB_Init
push	ecx
cmp	dword_100BAB64,	0
mov	[esp+4+var_4], 0
jz	short loc_10002EA5
xor	eax, eax
pop	ecx
retn
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_10002EC1
or	eax, 0FFFFFFFFh
pop	ecx
retn
mov	eax, dword_100BAB40
push	ebx
mov	ebx, ds:PR_Lock
push	ebp
push	esi
push	edi
push	eax
call	ebx 
add	esp, 4
cmp	dword_100BAB64,	0
mov	ebp, 1
jnz	loc_10003038
cmp	dword_100BAB68,	0
jnz	loc_10003038
mov	edi, ds:PR_WaitCondVar
xor	esi, esi
lea	ecx, [ecx+0]
cmp	dword_100BAB44,	0
jz	short loc_10002F22
mov	ecx, dword_100BAB54
push	0FFFFFFFFh
push	ecx
call	edi 
add	esp, 8
call	NSS_IsInitialized
mov	esi, eax
test	esi, esi
jz	short loc_10002F00
			
mov	edx, dword_100BAB40
mov	edi, ds:PR_Unlock
add	dword_100BAB44,	ebp
push	edx
call	edi 
add	esp, 4
test	esi, esi
jnz	loc_1000305F
call	sub_1003D8E0
test	eax, eax
jnz	loc_10003008
call	sub_1003F8B0
test	eax, eax
jnz	loc_10003008
call	sub_10005070
test	eax, eax
jnz	loc_10003008
mov	ecx, dword_100BAB58
mov	edx, dword_100BAB5C
push	eax
mov	eax, dword_100BAB60
push	ebp
push	ebp
push	ebp
push	ebp
push	ebp
push	eax
push	ecx
push	edx
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
push	offset byte_100A1623
call	sub_100015D0
add	esp, 48h
test	eax, eax
jnz	short loc_10003008
call	SECOID_Init
test	eax, eax
jnz	short loc_10003008
call	sub_1004A920
test	eax, eax
jnz	short loc_10003008
call	sub_100018E0
test	eax, eax
jnz	short loc_10003008
call	sub_1004A850
push	eax
call	sub_1003C170
call	sub_10030A80
call	sub_1003E480
push	offset dword_100BAB6C
lea	eax, [esp+1Ch+var_4]
push	eax
push	3
push	3
push	esi
push	esi
call	sub_1006A540
add	esp, 1Ch
test	eax, eax
jz	short loc_1000303F
			
mov	ecx, dword_100BAB40
push	ecx
call	ebx 
mov	edx, dword_100BAB54
sub	dword_100BAB44,	ebp
push	edx
call	ds:PR_NotifyCondVar
mov	eax, dword_100BAB40
push	eax
call	edi 
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
			
mov	esi, ebp
jmp	loc_10002F22
push	offset VarName	
call	ds:getenv
add	esp, 4
test	eax, eax
jz	short loc_1000305F
cmp	byte ptr [eax],	0
jz	short loc_1000305F
push	ebp
call	CERT_SetUsePKIXForValidation
add	esp, 4
			
mov	ecx, dword_100BAB40
push	ecx
call	ebx 
mov	edx, dword_100BAB54
sub	dword_100BAB44,	ebp
push	edx
mov	dword_100BAB64,	ebp
call	ds:PR_NotifyAllCondVar
mov	eax, dword_100BAB40
push	eax
call	edi 
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
public NSS_RegisterShutdown
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_100030BB
or	eax, 0FFFFFFFFh
retn
mov	eax, dword_100BAB40
push	esi
mov	esi, ds:PR_Lock
push	eax
call	esi 
add	esp, 4
cmp	dword_100BAB64,	0
jnz	short loc_100030FE
cmp	dword_100BAB68,	0
jnz	short loc_100030FE
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	esi
retn
			
mov	edx, dword_100BAB40
push	ebx
push	ebp
mov	ebp, ds:PR_Unlock
push	edx
call	ebp 
mov	ebx, [esp+10h+arg_0]
add	esp, 4
test	ebx, ebx
jnz	short loc_1000312E
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, dword_100BAB70
push	edi
push	eax
call	esi 
mov	esi, [esp+14h+arg_4]
add	esp, 4
mov	edi, ebx
call	sub_100018B0
test	eax, eax
js	short loc_10003167
mov	ecx, dword_100BAB70
push	ecx
call	ebp 
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
xor	esi, esi
xor	edi, edi
call	sub_100018B0
test	eax, eax
js	short loc_10003197
mov	ecx, dword_100BAB7C
mov	edx, [esp+10h+arg_4]
mov	[ecx+eax*8], ebx
mov	[ecx+eax*8+4], edx
mov	eax, dword_100BAB70
push	eax
call	ebp 
add	esp, 4
pop	edi
pop	ebp
pop	ebx
xor	eax, eax
pop	esi
retn
mov	ecx, dword_100BAB74
mov	eax, dword_100BAB78
cmp	ecx, eax
jnz	short loc_100031EA
mov	edx, dword_100BAB7C
lea	ecx, ds:50h[ecx*8]
push	ecx
push	edx
call	PORT_Realloc_Util
add	esp, 8
test	eax, eax
jnz	short loc_100031D4
mov	eax, dword_100BAB70
push	eax
call	ebp 
add	esp, 4
pop	edi
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
add	dword_100BAB74,	0Ah
mov	ecx, eax
mov	eax, dword_100BAB78
mov	dword_100BAB7C,	ecx
jmp	short loc_100031F0
mov	ecx, dword_100BAB7C
mov	edx, [esp+10h+arg_4]
mov	[ecx+eax*8], ebx
mov	[ecx+eax*8+4], edx
inc	eax
mov	dword_100BAB78,	eax
mov	eax, dword_100BAB70
push	eax
call	ebp 
add	esp, 4
pop	edi
pop	ebp
pop	ebx
xor	eax, eax
pop	esi
retn
align 10h
public NSS_UnregisterShutdown
push	offset loc_10001880
push	offset dword_100BAB48
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_1000323B
or	eax, 0FFFFFFFFh
retn
mov	eax, dword_100BAB40
push	esi
mov	esi, ds:PR_Lock
push	eax
call	esi 
add	esp, 4
cmp	dword_100BAB64,	0
jnz	short loc_1000327E
cmp	dword_100BAB68,	0
jnz	short loc_1000327E
mov	ecx, dword_100BAB40
push	ecx
call	ds:PR_Unlock
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	esi
retn
			
mov	edx, dword_100BAB40
push	ebx
mov	ebx, ds:PR_Unlock
push	edi
push	edx
call	ebx 
mov	eax, dword_100BAB70
push	eax
call	esi 
mov	edx, dword_100BAB78
add	esp, 8
xor	eax, eax
test	edx, edx
jle	short loc_100032C4
mov	esi, [esp+0Ch+arg_4]
mov	edi, [esp+0Ch+arg_0]
mov	ecx, dword_100BAB7C
cmp	[ecx+eax*8], edi
jnz	short loc_100032BF
cmp	[ecx+eax*8+4], esi
jz	short loc_100032C9
inc	eax
cmp	eax, edx
jl	short loc_100032B4
or	esi, 0FFFFFFFFh
jmp	short loc_100032DE
mov	esi, eax
test	eax, eax
js	short loc_100032DE
mov	dword ptr [ecx+eax*8], 0
mov	dword ptr [ecx+eax*8+4], 0
			
mov	ecx, dword_100BAB70
push	ecx
call	ebx 
add	esp, 4
pop	edi
pop	ebx
test	esi, esi
jns	short loc_10003302
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
xor	eax, eax
pop	esi
retn
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
public DER_TimeToUTCTime
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	eax
push	ecx
push	edx
call	DER_TimeToUTCTime_Util
add	esp, 0Ch
retn
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
public DER_TimeToGeneralizedTime
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	eax
push	ecx
push	edx
call	DER_TimeToGeneralizedTime_Util
add	esp, 0Ch
retn
align 10h
public DER_TimeToGeneralizedTimeArena
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_8]
mov	edx, [esp+arg_4]
push	eax
mov	eax, [esp+4+arg_0]
push	ecx
push	edx
push	eax
call	DER_TimeToGeneralizedTimeArena_Util
add	esp, 10h
retn
align 10h
align 10h
public CERT_GenTime2FormattedAscii
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	eax
push	ecx
push	edx
call	CERT_GenTime2FormattedAscii_Util
add	esp, 0Ch
retn
align 10h
align 10h
public DER_EncodeTimeChoice
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_8]
mov	edx, [esp+arg_4]
push	eax
mov	eax, [esp+4+arg_0]
push	ecx
push	edx
push	eax
call	DER_EncodeTimeChoice_Util
add	esp, 10h
retn
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
align 10h
public __nss_InitLock
push	0FFFFE898h	
			
			
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
public NSS_Get_SECOID_AlgorithmIDTemplate
mov	eax, offset dword_100A1820
retn
align 10h
public NSS_Get_SEC_AnyTemplate
mov	eax, offset dword_100A1860
retn
align 10h
public NSS_Get_SEC_BMPStringTemplate
mov	eax, offset dword_100A1870
retn
align 10h
public NSS_Get_SEC_BitStringTemplate
mov	eax, offset dword_100A1880
retn
align 10h
public NSS_Get_SEC_BooleanTemplate
mov	eax, offset dword_100A1890
retn
align 10h
public NSS_Get_SEC_GeneralizedTimeTemplate
mov	eax, offset dword_100A18A0
retn
align 10h
public NSS_Get_SEC_IA5StringTemplate
mov	eax, offset dword_100A18B0
retn
align 10h
public NSS_Get_SEC_IntegerTemplate
mov	eax, offset dword_100A18C0
retn
align 10h
public NSS_Get_SEC_NullTemplate
mov	eax, offset dword_100A18D0
retn
align 10h
public NSS_Get_SEC_ObjectIDTemplate
mov	eax, offset dword_100A18E0
retn
align 10h
public NSS_Get_SEC_OctetStringTemplate
mov	eax, offset dword_100A18F0
retn
align 10h
public NSS_Get_SEC_PointerToAnyTemplate
mov	eax, offset dword_100A1900
retn
align 10h
public NSS_Get_SEC_PointerToOctetStringTemplate
mov	eax, offset dword_100A1910
retn
align 10h
public NSS_Get_SEC_SetOfAnyTemplate
mov	eax, offset dword_100A1920
retn
align 10h
public NSS_Get_SEC_UTCTimeTemplate
mov	eax, offset dword_100A1930
retn
align 10h
public NSS_Get_SEC_UTF8StringTemplate
mov	eax, offset dword_100A1940
retn
align 10h
public NSS_Get_sgn_DigestInfoTemplate
mov	eax, offset dword_100A1950
retn
align 10h
public CERT_Hexify
			
push	edi
mov	edi, [esp+4+arg_0]
mov	eax, [edi+8]
test	eax, eax
jnz	short loc_10003B2B
push	offset a00	
call	PORT_Strdup_Util
add	esp, 4
pop	edi
retn
lea	eax, [eax+eax*2]
push	eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+4+arg_0], eax
test	eax, eax
jnz	short loc_10003B41
pop	edi
retn
push	ebp
mov	ebp, [edi+8]
push	esi
mov	esi, [edi+4]
add	ebp, esi
cmp	esi, ebp
jnb	short loc_10003B8E
mov	edx, [esp+0Ch+arg_4]
mov	edi, off_100BA004
push	ebx
lea	ebx, [ebx+0]
mov	cl, [esi]
movzx	ecx, cl
mov	ebx, ecx
shr	ebx, 4
mov	bl, [ebx+edi]
mov	[eax], bl
and	ecx, 0Fh
movzx	ecx, byte ptr [ecx+edi]
inc	esi
mov	[eax+1], cl
add	eax, 2
cmp	esi, ebp
jz	short loc_10003B8D
test	edx, edx
jz	short loc_10003B89
mov	byte ptr [eax],	3Ah
inc	eax
cmp	esi, ebp
jb	short loc_10003B60
pop	ebx
pop	esi
pop	ebp
mov	byte ptr [eax],	0
mov	eax, [esp+4+arg_0]
pop	edi
retn
align 10h
public CERT_FormatName
sub	esp, 0C8h
mov	eax, [esp+0C8h+arg_0]
push	ebx
push	ebp
mov	ebp, [eax+4]
mov	eax, [ebp+0]
push	esi
xor	esi, esi
push	edi
xor	ebx, ebx
xor	edi, edi
mov	[esp+0D8h+var_A4], esi
mov	[esp+0D8h+var_B0], ebx
mov	[esp+0D8h+var_B8], esi
mov	[esp+0D8h+var_C0], esi
mov	[esp+0D8h+var_A8], esi
mov	[esp+0D8h+var_BC], esi
mov	[esp+0D8h+var_B4], esi
mov	[esp+0D8h+var_AC], esi
mov	[esp+0D8h+var_C8], esi
mov	[esp+0D8h+var_C4], esi
cmp	eax, esi
jz	loc_10003E77
lea	ecx, [ecx+0]
mov	ebx, [eax]
mov	esi, [ebx]
add	ebp, 4
test	esi, esi
jz	loc_10003E66
nop
push	esi
add	ebx, 4
call	CERT_GetAVATag
add	eax, 0FFFFFFE1h
add	esp, 4
cmp	eax, 44h	
ja	loc_10003E5C	
movzx	ecx, ds:byte_1000406C[eax]
jmp	ds:off_10004044[ecx*4] 
			
cmp	[esp+0D8h+var_B0], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_B0], eax
test	eax, eax
jnz	loc_10003E59
mov	ebp, [esp+0D8h+var_A4]
xor	esi, esi
			
mov	eax, [esp+0D8h+var_B8]
cmp	eax, esi
jz	short loc_10003C62
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	esi, [esp+0D8h+var_C8]
dec	esi
js	short loc_10003C82
lea	esp, [esp+0]
mov	eax, [esp+esi*4+0D8h+var_A0]
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
dec	esi
jns	short loc_10003C70
mov	eax, [esp+0D8h+var_AC]
test	eax, eax
jz	short loc_10003C95
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+0D8h+var_C0]
test	eax, eax
jz	short loc_10003CA8
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	esi, [esp+0D8h+var_C4]
dec	esi
js	short loc_10003CC5
nop
mov	ecx, [esp+esi*4+0D8h+var_50]
push	1
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 8
dec	esi
jns	short loc_10003CB0
mov	eax, [esp+0D8h+var_A8]
test	eax, eax
jz	short loc_10003CD8
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+0D8h+var_BC]
test	eax, eax
jz	short loc_10003CEB
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+0D8h+var_B4]
test	eax, eax
jz	short loc_10003CFE
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 0C8h
retn
			
cmp	[esp+0D8h+var_B4], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_B4], eax
test	eax, eax
jz	loc_10004022
mov	edx, eax
add	edi, [edx+8]
jmp	loc_10003E5C	
			
cmp	[esp+0D8h+var_A8], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_A8], eax
test	eax, eax
jz	loc_10004022
jmp	loc_10003E59
			
cmp	[esp+0D8h+var_BC], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_BC], eax
test	eax, eax
jz	loc_10004022
mov	ecx, eax
add	edi, [ecx+8]
jmp	loc_10003E5C	
			
cmp	[esp+0D8h+var_C0], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_C0], eax
test	eax, eax
jz	loc_10004022
mov	edx, eax
add	edi, [edx+8]
jmp	loc_10003E5C	
			
cmp	[esp+0D8h+var_AC], 0 
jnz	loc_10003E5C	
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_AC], eax
test	eax, eax
jz	loc_10004022
jmp	short loc_10003E59
			
cmp	[esp+0D8h+var_C8], 14h 
jge	short loc_10003E5C 
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
mov	ecx, [esp+0DCh+var_C8]
add	esp, 4
mov	[esp+ecx*4+0D8h+var_A0], eax
test	eax, eax
jz	loc_10004022
add	edi, [eax+8]
inc	[esp+0D8h+var_C8]
jmp	short loc_10003E5C 
			
cmp	[esp+0D8h+var_C4], 14h 
jge	short loc_10003E5C 
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
mov	edx, [esp+0DCh+var_C4]
add	esp, 4
mov	[esp+edx*4+0D8h+var_50], eax
test	eax, eax
jz	loc_10004022
add	edi, [eax+8]
inc	[esp+0D8h+var_C4]
jmp	short loc_10003E5C 
			
cmp	[esp+0D8h+var_B8], 0 
jnz	short loc_10003E5C 
add	esi, 0Ch
push	esi
call	CERT_DecodeAVAValue
add	esp, 4
mov	[esp+0D8h+var_B8], eax
test	eax, eax
jz	loc_10004022
			
add	edi, [eax+8]
			
mov	esi, [ebx]	
test	esi, esi
jnz	loc_10003C00
mov	eax, [ebp+0]
test	eax, eax
jnz	loc_10003BF0
mov	ebx, [esp+0D8h+var_B0]
xor	esi, esi
sub	edi, 0FFFFFF80h
push	edi
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, esi
jz	loc_1000402C
mov	esi, ebp
test	ebx, ebx
jz	short loc_10003EB2
mov	ecx, [ebx+8]
mov	edx, [ebx+4]
push	ecx		
push	edx		
push	ebp		
call	memcpy
mov	esi, [ebx+8]
add	esi, ebp
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	edi, [esp+0D8h+var_B8]
test	edi, edi
jz	short loc_10003ED7
mov	eax, [edi+8]
mov	ecx, [edi+4]
push	eax		
push	ecx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	ebx, [esp+0D8h+var_C8]
dec	ebx
js	short loc_10003F04
mov	edi, edi
mov	edi, [esp+ebx*4+0D8h+var_A0]
mov	edx, [edi+8]
mov	eax, [edi+4]
push	edx		
push	eax		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
dec	ebx
jns	short loc_10003EE0
mov	edi, [esp+0D8h+var_AC]
test	edi, edi
jz	short loc_10003F29
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	edx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	edi, [esp+0D8h+var_C0]
test	edi, edi
jz	short loc_10003F4E
mov	eax, [edi+8]
mov	ecx, [edi+4]
push	eax		
push	ecx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	ebx, [esp+0D8h+var_C4]
dec	ebx
js	short loc_10003F87
jmp	short loc_10003F60
align 10h
			
mov	edi, [esp+ebx*4+0D8h+var_50]
mov	edx, [edi+8]
mov	eax, [edi+4]
push	edx		
push	eax		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
dec	ebx
jns	short loc_10003F60
mov	edi, [esp+0D8h+var_A8]
mov	eax, 1
test	edi, edi
jz	short loc_10003FAA
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	edx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
xor	eax, eax
mov	edi, [esp+0D8h+var_BC]
test	edi, edi
jz	short loc_10003FD7
test	eax, eax
jnz	short loc_10003FC1
mov	eax, 202Ch
mov	[esi], ax
add	esi, 2
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	edx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
xor	eax, eax
mov	edi, [esp+0D8h+var_B4]
test	edi, edi
jz	short loc_10004010
test	eax, eax
jnz	short loc_10003FEE
mov	eax, 202Ch
mov	[esi], ax
add	esi, 2
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	edx		
push	esi		
call	memcpy
add	esi, [edi+8]
add	esp, 0Ch
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	byte ptr [esi],	0
jmp	short loc_10004026
test	eax, eax
jnz	short loc_1000401D
mov	dword ptr [esi], 3E72623Ch
add	esi, 4
mov	byte ptr [esi],	0
jmp	short loc_10004026
			
mov	ebp, [esp+0D8h+var_A4]
			
mov	ebx, [esp+0D8h+var_B0]
xor	esi, esi
cmp	ebx, esi
jz	loc_10003C4F
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
jmp	loc_10003C4F
			
dd offset loc_10003D38,	offset loc_10003D60, offset loc_10003D8D 
dd offset loc_10003DDF,	offset loc_10003DBA, offset loc_10003E0B
dd offset loc_10003E5C
db	9,     9,     9,     9 
db	9,     9,     1,     2
db	3,     4,     5,     6
db	7,     8,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	9,     9,     9,     9
db	0
align 10h
public NSS_Get_CERT_CertificateRequestTemplate
mov	eax, offset dword_100A1A00
retn
align 10h
public CERT_CreateCertificate
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100040E6
pop	edi
retn
push	esi
push	188h
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000410A
push	eax
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	edi
retn
push	ebx
push	0
lea	eax, [esi+78h]
push	eax
push	edi
mov	dword ptr [esi+164h], 1
mov	[esi], edi
call	DER_SetUInteger
add	esp, 0Ch
test	eax, eax
jnz	short loc_100041A9
mov	ecx, [esp+0Ch+arg_0]
push	ecx
lea	edx, [esi+84h]
push	edx
push	edi
call	DER_SetUInteger
add	esp, 0Ch
test	eax, eax
jnz	short loc_100041A9
mov	eax, [esp+0Ch+arg_4]
push	eax
lea	ecx, [esi+0A8h]
push	ecx
push	edi
call	CERT_CopyName
add	esp, 0Ch
test	eax, eax
jnz	short loc_100041A9
mov	edx, [esp+0Ch+arg_8]
push	edx
lea	eax, [esi+0B0h]
push	eax
push	edi
call	sub_1003E190
add	esp, 0Ch
test	eax, eax
jnz	short loc_100041A9
mov	ebx, [esp+0Ch+arg_C]
lea	ecx, [ebx+10h]
push	ecx
lea	edx, [esi+0CCh]
push	edx
push	edi
call	CERT_CopyName
add	esp, 0Ch
test	eax, eax
jnz	short loc_100041A9
add	ebx, 18h
push	ebx
lea	eax, [esi+0D4h]
push	eax
push	edi
call	SECKEY_CopySubjectPublicKeyInfo
add	esp, 0Ch
test	eax, eax
jz	short loc_100041B8
			
push	esi
call	CERT_DestroyCertificate
add	esp, 4
pop	ebx
pop	esi
xor	eax, eax
pop	edi
retn
pop	ebx
mov	eax, esi
pop	esi
pop	edi
retn
align 10h
mov	eax, [esp+8]
mov	ecx, [esp+4]
mov	[ecx+40h], eax
retn
align 10h
public CERT_StartCertificateRequestAttributes
mov	eax, [esp+arg_0]
mov	ecx, [eax]
push	offset loc_100041C0
push	ecx
push	eax
call	sub_1003EBB0
add	esp, 0Ch
retn
align 10h
public CERT_FinishCertificateRequestAttributes
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	loc_100042DB
cmp	dword ptr [esi], 0
jz	loc_100042DB
mov	eax, [esi+40h]
push	ebx
lea	ebx, [esi+40h]
test	eax, eax
jz	loc_100042D6
cmp	dword ptr [eax], 0
jz	loc_100042D6
push	ebp
push	0
push	0
call	NSS_Get_CERT_SequenceOfCertExtensionTemplate
push	eax
mov	eax, [esi]
push	ebx
push	0
push	eax
call	SEC_ASN1EncodeItem_Util
mov	ebp, eax
add	esp, 18h
test	ebp, ebp
jz	short loc_10004252
push	112h
call	SECOID_FindOIDByTag_Util
add	esp, 4
mov	[esp+0Ch+arg_0], eax
test	eax, eax
jnz	short loc_10004259
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [esi]
push	edi
push	8
push	ecx
call	PORT_ArenaZAlloc_Util
mov	edx, [esi]
push	10h
push	edx
mov	[ebx], eax
call	PORT_ArenaZAlloc_Util
add	esp, 10h
cmp	dword ptr [ebx], 0
mov	edi, eax
jz	short loc_100042C1
test	edi, edi
jz	short loc_100042C1
mov	eax, [esp+10h+arg_0]
mov	ecx, [esi]
push	eax
push	edi
push	ecx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100042C1
mov	edx, [esi]
push	8
push	edx
call	PORT_ArenaZAlloc_Util
xor	ecx, ecx
add	esp, 8
mov	[edi+0Ch], eax
cmp	eax, ecx
jz	short loc_100042CE
mov	[eax], ebp
mov	eax, [edi+0Ch]
mov	[eax+4], ecx
mov	edx, [ebx]
mov	[edx], edi
mov	eax, [ebx]
pop	edi
pop	ebp
pop	ebx
mov	[eax+4], ecx
xor	eax, eax
pop	esi
retn
			
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
			
pop	ebx
xor	eax, eax
pop	esi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
public CERT_GetCertificateRequestExtensions
push	esi
mov	esi, [esp+4+arg_0]
push	edi
test	esi, esi
jz	short loc_1000433B
mov	edi, [esp+8+arg_4]
test	edi, edi
jz	short loc_1000433B
mov	eax, [esi+40h]
test	eax, eax
jz	short loc_10004336
cmp	dword ptr [eax], 0
jz	short loc_10004336
mov	eax, [eax]
mov	eax, [eax+0Ch]
test	eax, eax
jz	short loc_1000433B
mov	ecx, [eax]
push	ecx
push	0
push	0
call	NSS_Get_CERT_SequenceOfCertExtensionTemplate
mov	edx, [esi]
add	esp, 8
push	eax
push	edi
push	edx
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
pop	edi
pop	esi
retn
			
pop	edi
xor	eax, eax
pop	esi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
public CERT_CreateCertificateRequest
sub	esp, 8
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1000436C
pop	edi
add	esp, 8
retn
push	esi
push	44h
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
mov	[esp+10h+var_8], esi
test	esi, esi
jnz	short loc_10004394
push	eax
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	edi
add	esp, 8
retn
push	ebx
push	ebp
push	0
lea	eax, [esi+4]
push	eax
push	edi
mov	[esi], edi
call	DER_SetUInteger
add	esp, 0Ch
test	eax, eax
jnz	loc_100044CB
mov	ecx, [esp+18h+arg_0]
push	ecx
lea	edx, [esi+10h]
push	edx
push	edi
call	CERT_CopyName
add	esp, 0Ch
test	eax, eax
jnz	loc_100044CB
mov	eax, [esp+18h+arg_4]
push	eax
lea	ecx, [esi+18h]
push	ecx
push	edi
call	SECKEY_CopySubjectPublicKeyInfo
add	esp, 0Ch
test	eax, eax
jnz	loc_100044CB
push	8
push	edi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esi+40h], eax
test	eax, eax
jz	loc_100044CB
mov	ebx, [esp+18h+arg_8]
test	ebx, ebx
jz	loc_100044E6
cmp	dword ptr [ebx], 0
jz	loc_100044E6
push	10h
push	edi
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
mov	[esp+18h+var_4], ebp
test	ebp, ebp
jz	loc_100044CB
push	112h
call	SECOID_FindOIDByTag_Util
add	esp, 4
test	eax, eax
jz	loc_100044CB
push	eax
push	ebp
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_100044CB
cmp	[ebx], eax
jz	short loc_1000445A
inc	eax
cmp	dword ptr [ebx+eax*4], 0
jnz	short loc_10004453
lea	edx, ds:4[eax*4]
push	edx
push	edi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[ebp+0Ch], eax
test	eax, eax
jz	short loc_100044CB
xor	ebp, ebp
cmp	[ebx], ebp
jz	short loc_100044B4
mov	eax, ebx
xor	esi, esi
lea	esp, [esp+0]
mov	eax, [eax]
push	eax
push	edi
call	SECITEM_ArenaDupItem_Util
mov	ecx, [esp+20h+var_4]
mov	edx, [ecx+0Ch]
mov	[esi+edx], eax
mov	eax, [ecx+0Ch]
add	esp, 8
cmp	dword ptr [esi+eax], 0
jz	short loc_100044C7
inc	ebp
lea	esi, ds:0[ebp*4]
cmp	dword ptr [esi+ebx], 0
lea	eax, [esi+ebx]
jnz	short loc_10004480
mov	esi, [esp+18h+var_8]
mov	ecx, [esi+40h]
mov	edx, [esp+18h+var_4]
pop	ebp
pop	ebx
mov	eax, esi
pop	esi
mov	[ecx], edx
pop	edi
add	esp, 8
retn
mov	esi, [esp+18h+var_8]
			
mov	esi, [esi]
test	esi, esi
jz	short loc_100044DC
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	ebp
pop	ebx
pop	esi
xor	eax, eax
pop	edi
add	esp, 8
retn
			
pop	ebp
pop	ebx
mov	dword ptr [eax], 0
mov	eax, esi
pop	esi
pop	edi
add	esp, 8
retn
align 10h
mov	eax, [esp+4]
mov	ecx, [esp+8]
lea	edx, [eax+4]
push	1
mov	[eax+58h], ecx
mov	eax, [eax]
push	edx
push	eax
call	DER_SetUInteger
add	esp, 0Ch
retn
align 10h
public CERT_StartCRLExtensions
mov	eax, [esp+arg_0]
mov	ecx, [eax]
push	offset loc_10004500
push	ecx
push	eax
call	sub_1003EBB0
add	esp, 0Ch
retn
align 10h
mov	eax, [esp+8]
mov	ecx, [esp+4]
mov	[ecx+18h], eax
retn
align 10h
public CERT_StartCRLEntryExtensions
mov	eax, [esp+arg_0]
mov	ecx, [eax]
mov	edx, [esp+arg_4]
push	offset loc_10004540
push	ecx
push	edx
call	sub_1003EBB0
add	esp, 0Ch
retn
align 10h
public CERT_FindCRLNumberExten
			
sub	esp, 0Ch
mov	ecx, [esp+0Ch+arg_4]
mov	edx, [ecx+58h]
push	edi
lea	eax, [esp+10h+var_C]
push	eax
xor	edi, edi
push	5Eh
push	edx
mov	[esp+1Ch+var_8], edi
mov	[esp+1Ch+var_4], edi
call	sub_1003EB90
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_1000460B
push	ebx
push	esi
mov	esi, [esp+18h+arg_0]
push	esi
call	PORT_ArenaMark_Util
mov	ebx, eax
lea	eax, [esp+1Ch+var_C]
push	eax
push	esi
call	SECITEM_ArenaDupItem_Util
add	esp, 0Ch
cmp	eax, edi
jz	short loc_100045D7
push	eax
push	edi
push	edi
call	NSS_Get_SEC_IntegerTemplate_Util
mov	ecx, [esp+24h+arg_8]
add	esp, 8
push	eax
push	ecx
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
mov	edi, eax
jmp	short loc_100045DA
or	edi, 0FFFFFFFFh
mov	edx, [esp+18h+var_8]
push	edx
call	PORT_Free_Util
add	esp, 4
push	ebx
push	esi
cmp	edi, 0FFFFFFFFh
jnz	short loc_100045FF
call	PORT_ArenaRelease_Util
add	esp, 8
pop	esi
pop	ebx
mov	eax, edi
pop	edi
add	esp, 0Ch
retn
call	PORT_ArenaUnmark_Util
add	esp, 8
pop	esi
mov	eax, edi
pop	ebx
pop	edi
add	esp, 0Ch
retn
public CERT_FindCRLEntryReasonExten
			
			
sub	esp, 18h
push	ebx
xor	ebx, ebx
push	edi
push	800h
mov	[esp+24h+var_18], ebx
mov	[esp+24h+var_14], ebx
mov	[esp+24h+var_10], ebx
mov	[esp+24h+var_C], ebx
mov	[esp+24h+var_8], ebx
mov	[esp+24h+var_4], ebx
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jnz	short loc_1000464B
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 18h
retn
mov	ecx, [esp+20h+arg_0]
mov	edx, [ecx+18h]
push	esi
lea	eax, [esp+24h+var_18]
push	eax
push	5Fh
push	edx
call	sub_1003EB90
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	short loc_100046A0
lea	eax, [esp+24h+var_18]
push	eax
push	ebx
push	ebx
call	NSS_Get_SEC_EnumeratedTemplate
add	esp, 8
push	eax
lea	ecx, [esp+2Ch+var_C]
push	ecx
push	edi
call	SEC_QuickDERDecodeItem_Util
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jnz	short loc_100046A0
lea	edx, [esp+24h+var_C]
push	edx
call	DER_GetInteger_Util
mov	ecx, [esp+28h+arg_4]
add	esp, 4
mov	[ecx], eax
			
push	ebx
push	edi
call	PORT_FreeArena_Util
mov	eax, [esp+2Ch+var_14]
add	esp, 8
cmp	eax, ebx
jz	short loc_100046BB
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	esi
pop	edi
pop	ebx
add	esp, 18h
retn
align 10h
public SEC_RegisterDefaultHttpClient
			
mov	eax, dword_100BA008
test	eax, eax
jnz	short loc_100046EA
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	eax
call	ds:PR_EnterMonitor
mov	ecx, dword_100BA008
mov	eax, [esp+4+arg_0]
push	ecx
mov	dword_100BA00C,	eax
call	ds:PR_ExitMonitor
add	esp, 8
xor	eax, eax
retn
align 10h
public CERT_RegisterAlternateOCSPAIAInfoCallBack
mov	eax, dword_100BA008
test	eax, eax
jnz	short loc_1000472A
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	esi
push	eax
call	ds:PR_EnterMonitor
mov	ecx, dword_100BA008
mov	eax, [esp+8+arg_0]
mov	esi, dword_100BA034
push	ecx
mov	dword_100BA034,	eax
call	ds:PR_ExitMonitor
mov	eax, [esp+0Ch+arg_4]
add	esp, 8
test	eax, eax
jz	short loc_1000475B
mov	[eax], esi
xor	eax, eax
pop	esi
retn
align 10h
push	ecx
mov	ecx, [esp+8]
mov	eax, [ecx+1Ch]
push	ebx
push	ebp
push	esi
mov	esi, [ecx+20h]
xor	edx, edx
xor	ebx, ebx
xor	ebp, ebp
push	edi
mov	[esp+10h], edx
cmp	esi, 2
jl	short loc_100047A5
lea	edx, [esi-2]
shr	edx, 1
inc	edx
lea	edi, [edx+edx]
mov	[esp+18h], edi
jmp	short loc_10004790
align 10h
			
movzx	edi, byte ptr [eax]
add	ebx, edi
movzx	edi, byte ptr [eax+1]
add	ebp, edi
add	eax, 2
dec	edx
jnz	short loc_10004790
mov	edx, [esp+18h]
cmp	edx, esi
jnb	short loc_100047B0
movzx	eax, byte ptr [eax]
mov	[esp+10h], eax
mov	eax, [ecx+28h]
add	ebp, ebx
mov	ebx, [ecx+2Ch]
add	[esp+10h], ebp
xor	esi, esi
xor	edi, edi
xor	edx, edx
cmp	ebx, 2
jl	short loc_100047E9
lea	edx, [ebx-2]
shr	edx, 1
inc	edx
lea	ebp, [edx+edx]
mov	[esp+18h], ebp
movzx	ebp, byte ptr [eax]
add	esi, ebp
movzx	ebp, byte ptr [eax+1]
add	edi, ebp
add	eax, 2
dec	edx
jnz	short loc_100047D4
mov	edx, [esp+18h]
cmp	edx, ebx
jnb	short loc_100047F4
movzx	edx, byte ptr [eax]
add	[esp+10h], edx
mov	eax, [ecx+34h]
mov	ecx, [ecx+38h]
add	edi, esi
add	[esp+10h], edi
xor	ebx, ebx
xor	ebp, ebp
xor	esi, esi
cmp	ecx, 2
jl	short loc_10004825
lea	edx, [ecx-2]
shr	edx, 1
inc	edx
lea	esi, [edx+edx]
movzx	edi, byte ptr [eax]
add	ebx, edi
movzx	edi, byte ptr [eax+1]
add	ebp, edi
add	eax, 2
dec	edx
jnz	short loc_10004814
cmp	esi, ecx
jnb	short loc_10004830
movzx	eax, byte ptr [eax]
add	[esp+10h], eax
pop	edi
lea	eax, [ebx+ebp]
add	eax, [esp+0Ch]
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
push	esi
mov	esi, [esp+0Ch]
push	edi
mov	edi, [esp+0Ch]
lea	eax, [esi+18h]
push	eax
lea	ecx, [edi+18h]
push	ecx
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_1000488E
lea	edx, [esi+24h]
push	edx
lea	eax, [edi+24h]
push	eax
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_1000488E
add	esi, 30h
push	esi
add	edi, 30h
push	edi
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_1000488E
pop	edi
mov	eax, 1
pop	esi
retn
			
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
push	ebp
push	esi
call	PORT_ArenaMark_Util
push	10h
push	esi
mov	ebp, eax
call	PORT_ArenaZAlloc_Util
add	esp, 0Ch
mov	[edi+4], eax
test	eax, eax
jz	short loc_100048EA
push	ebx
push	eax
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100048EA
mov	eax, [ebx+0Ch]
test	eax, eax
jz	short loc_100048F9
push	eax
push	esi
call	SECITEM_ArenaDupItem_Util
mov	ecx, [edi+4]
mov	[ecx+0Ch], eax
mov	edx, [edi+4]
add	esp, 8
cmp	dword ptr [edx+0Ch], 0
jnz	short loc_10004903
			
push	ebp
push	esi
call	PORT_ArenaRelease_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	eax, [edi+4]
mov	dword ptr [eax+0Ch], 0
push	ebp
push	esi
call	PORT_ArenaUnmark_Util
add	esp, 8
xor	eax, eax
pop	ebp
retn
align 10h
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	ecx, [eax]
mov	[edi], ecx
mov	ecx, [eax]
or	ebx, 0FFFFFFFFh
sub	ecx, 0
mov	esi, edx
jz	short loc_1000497B
dec	ecx
jz	short loc_1000496F
dec	ecx
jz	short loc_10004955
mov	edx, [eax+4]
push	edx
push	esi
call	SECITEM_ArenaDupItem_Util
add	esp, 8
mov	[edi+4], eax
test	eax, eax
jz	short loc_10004995
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
mov	eax, [eax+4]
push	eax
push	esi
call	SECITEM_ArenaDupItem_Util
add	esp, 8
mov	[edi+4], eax
test	eax, eax
jz	short loc_10004995
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
mov	ebx, [eax+4]
call	sub_100048A0
pop	edi
pop	esi
pop	ebx
retn
mov	ecx, [eax+4]
push	ecx
push	esi
call	SECITEM_ArenaDupItem_Util
add	esp, 8
mov	[edi+4], eax
test	eax, eax
jz	short loc_10004995
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
			
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword ptr [edi+0Ch], 0
jnz	short loc_100049B8
mov	[edi+0Ch], esi
mov	ecx, [edi+8]
mov	[esi+4], ecx
mov	dword ptr [esi], 0
mov	eax, [edi+8]
test	eax, eax
jz	short loc_100049CD
mov	[eax], esi
mov	[edi+8], esi
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
pop	ecx
retn
align 10h
			
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
mov	eax, [esi+4]
xor	ecx, ecx
add	esp, 4
cmp	eax, ecx
jnz	short loc_10004A1D
cmp	[esi], ecx
jnz	short loc_10004A1D
cmp	esi, [edi+0Ch]
jnz	short loc_10004A0C
cmp	esi, [edi+8]
jnz	short loc_10004A0C
mov	[edi+8], ecx
mov	[edi+0Ch], ecx
			
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
retn
			
cmp	esi, [edi+0Ch]
jnz	short loc_10004A3D
mov	eax, [esi]
mov	[edi+0Ch], eax
mov	[eax+4], ecx
mov	[esi+4], ecx
mov	[esi], ecx
mov	eax, dword_100BA008
push	eax
call	ds:PR_ExitMonitor
pop	ecx
retn
cmp	esi, [edi+8]
jnz	short loc_10004A5A
mov	[edi+8], eax
mov	[eax], ecx
mov	[esi+4], ecx
mov	[esi], ecx
mov	eax, dword_100BA008
push	eax
call	ds:PR_ExitMonitor
pop	ecx
retn
mov	edx, [esi]
mov	[edx+4], eax
mov	eax, [esi+4]
mov	edx, [esi]
mov	[eax], edx
mov	[esi+4], ecx
mov	[esi], ecx
mov	eax, dword_100BA008
push	eax
call	ds:PR_ExitMonitor
pop	ecx
retn
align 10h
push	ebx
mov	ebx, ds:PR_EnterMonitor
push	esi
mov	esi, eax
mov	eax, dword_100BA008
push	edi
push	eax
mov	edi, ecx
call	ebx 
add	esp, 4
cmp	[edi+8], esi
jnz	short loc_10004AB1
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
pop	esi
pop	ebx
retn
call	sub_100049E0
mov	edx, dword_100BA008
push	edx
call	ebx 
add	esp, 4
cmp	dword ptr [edi+0Ch], 0
jnz	short loc_10004ACB
mov	[edi+0Ch], esi
mov	eax, [edi+8]
mov	[esi+4], eax
mov	dword ptr [esi], 0
mov	eax, [edi+8]
test	eax, eax
jz	short loc_10004AE0
mov	[eax], esi
mov	[edi+8], esi
mov	ecx, dword_100BA008
mov	esi, ds:PR_ExitMonitor
push	ecx
call	esi 
mov	edx, dword_100BA008
push	edx
call	esi 
add	esp, 8
pop	edi
pop	esi
pop	ebx
retn
align 10h
			
mov	eax, dword_100BA008
push	ebp
push	esi
push	edi
mov	edi, ds:PR_EnterMonitor
push	eax
xor	esi, esi
call	edi 
mov	ecx, dword_100BA008
push	ecx
call	edi 
mov	eax, dword_100BA008
mov	ebp, ds:PR_ExitMonitor
xor	edx, edx
cmp	dword_100BA010,	edx
push	eax
setl	dl
mov	edi, edx
call	ebp 
add	esp, 0Ch
test	edi, edi
jnz	short loc_10004B6B
mov	ecx, [esp+0Ch+arg_0]
mov	edx, [ebx]
push	ecx
push	edx
call	PL_HashTableLookup
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10004B6B
mov	ecx, ebx
call	sub_10004A80
			
mov	eax, dword_100BA008
push	eax
call	ebp 
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
retn
align 10h
push	esi
mov	esi, eax
mov	eax, dword_100BA008
push	edi
push	eax
mov	edi, ecx
call	ds:PR_EnterMonitor
call	sub_100049E0
mov	ecx, [esi+8]
mov	edx, [edi]
push	ecx
push	edx
call	PL_HashTableRemove
dec	dword ptr [edi+4]
mov	eax, [esi+18h]
add	esp, 0Ch
test	eax, eax
jz	short loc_10004BBB
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, [esi+8]
mov	eax, [eax+84h]
pop	edi
pop	esi
test	eax, eax
jz	short loc_10004BD5
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
pop	ecx
retn
align 10h
			
push	ebx
mov	ebx, ds:PR_EnterMonitor
push	edi
mov	edi, eax
mov	eax, dword_100BA008
push	eax
call	ebx 
mov	eax, dword_100BA010
add	esp, 4
test	eax, eax
jle	short loc_10004C7D
cmp	[edi+4], eax
jbe	short loc_10004C7D
push	esi
mov	ecx, dword_100BA008
mov	esi, [edi+0Ch]
push	ecx
call	ebx 
call	sub_100049E0
mov	edx, [esi+8]
mov	eax, [edi]
push	edx
push	eax
call	PL_HashTableRemove
dec	dword ptr [edi+4]
mov	eax, [esi+18h]
add	esp, 0Ch
test	eax, eax
jz	short loc_10004C49
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esi+8]
mov	eax, [ecx+84h]
test	eax, eax
jz	short loc_10004C61
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
mov	eax, [edi+4]
add	esp, 4
cmp	eax, dword_100BA010
ja	short loc_10004C14
pop	esi
			
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
pop	ebx
retn
public CERT_ClearOCSPCache
			
mov	eax, dword_100BA008
push	ebx
mov	ebx, ds:PR_EnterMonitor
push	ebp
push	eax
call	ebx 
mov	ebp, ds:PR_ExitMonitor
add	esp, 4
cmp	dword_100BA024,	0
jbe	loc_10004D32
push	esi
push	edi
jmp	short loc_10004CC0
align 10h
			
mov	ecx, dword_100BA008
mov	esi, dword_100BA02C
push	ecx
call	ebx 
mov	edi, offset dword_100BA020
call	sub_100049E0
mov	edx, [esi+8]
mov	eax, dword_100BA020
push	edx
push	eax
call	PL_HashTableRemove
dec	dword_100BA024
mov	eax, [esi+18h]
add	esp, 0Ch
test	eax, eax
jz	short loc_10004D03
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esi+8]
mov	eax, [ecx+84h]
test	eax, eax
jz	short loc_10004D1B
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	edx, dword_100BA008
push	edx
call	ebp 
add	esp, 4
cmp	dword_100BA024,	0
ja	short loc_10004CC0
pop	edi
pop	esi
mov	eax, dword_100BA008
push	eax
call	ebp 
add	esp, 4
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
push	ecx
mov	eax, [esp+4+arg_4]
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
mov	dword ptr [eax], 0
mov	ecx, dword_100BA008
push	edi
push	ecx
call	ds:PR_EnterMonitor
mov	edi, [ebx+84h]
push	edi
call	PORT_ArenaMark_Util
mov	edx, [ebx+84h]
push	40h
push	edx
mov	[esp+20h+var_4], eax
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	short loc_10004DAB
push	esi
mov	[esi+8], ebx
mov	eax, [ebp+0]
push	ebx
push	eax
call	PL_HashTableAdd
add	esp, 0Ch
test	eax, eax
jnz	short loc_10004DCE
mov	ecx, [esp+10h+var_4]
push	ecx
push	edi
call	PORT_ArenaRelease_Util
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 0Ch
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
pop	ecx
retn
mov	eax, [esp+10h+var_4]
inc	dword ptr [ebp+4]
push	eax
push	edi
call	PORT_ArenaUnmark_Util
mov	edi, ebp
call	sub_100049A0
mov	ecx, [esp+18h+arg_4]
mov	[ecx], esi
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 0Ch
pop	edi
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
mov	eax, [esi+18h]
push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
xor	ebx, ebx
push	edi
cmp	eax, ebx
jz	short loc_10004E1D
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	[esi+18h], ebx
mov	[esi+28h], bx
cmp	ebp, ebx
jz	loc_10004EAD
push	800h
call	PORT_NewArena_Util
mov	edx, eax
add	esp, 4
mov	[esi+18h], edx
cmp	edx, ebx
jnz	short loc_10004E46
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [ebp+14h]
lea	ecx, [esi+1Ch]
call	sub_10004920
mov	edi, eax
cmp	edi, ebx
jz	short loc_10004E6D
mov	eax, [esi+18h]
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	ebp
mov	[esi+18h], ebx
pop	ebx
retn
lea	ecx, [ebp+18h]
push	ecx
lea	edx, [esi+30h]
push	edx
mov	[esi+24h], ebx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
setz	al
mov	[esi+28h], al
mov	ebp, [ebp+24h]
cmp	ebp, ebx
jz	short loc_10004EAA
lea	ecx, [esi+38h]
push	ebp
push	ecx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
pop	edi
setz	dl
pop	ebp
mov	[esi+29h], dl
xor	eax, eax
pop	ebx
retn
mov	[esi+29h], bl
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
sub	esp, 8
mov	eax, dword_100BA008
push	ebx
push	ebp
mov	ebp, [esp+10h+arg_0]
push	esi
push	edi
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
call	ds:PR_Now
cmp	byte ptr [ebp+28h], 0
mov	ebx, dword_100BA014
mov	[esp+18h+var_4], edx
jz	short loc_10004F06
mov	esi, dword_100BA018
imul	esi, 0F4240h
xor	ecx, ecx
add	esi, [ebp+30h]
adc	ecx, [ebp+34h]
jmp	short loc_10004F14
mov	esi, ebx
imul	esi, 0F4240h
xor	ecx, ecx
add	esi, eax
adc	ecx, edx
cmp	byte ptr [ebp+29h], 0
jz	short loc_10004F2E
mov	edi, [ebp+3Ch]
mov	edx, [ebp+38h]
cmp	edi, ecx
jg	short loc_10004F2E
jl	short loc_10004F2A
cmp	edx, esi
jnb	short loc_10004F2E
mov	esi, edx
mov	ecx, edi
			
imul	ebx, 0F4240h
xor	edi, edi
add	ebx, eax
adc	edi, [esp+18h+var_4]
cmp	ecx, edi
jg	short loc_10004F4A
jl	short loc_10004F46
cmp	esi, ebx
jnb	short loc_10004F4A
mov	esi, ebx
mov	ecx, edi
			
pop	edi
mov	[ebp+10h], esi
pop	esi
mov	[ebp+14h], ecx
mov	edx, dword_100BA008
pop	ebp
pop	ebx
add	esp, 8
mov	[esp+arg_0], edx
jmp	ds:PR_ExitMonitor
align 10h
public CERT_SetOCSPFailureMode
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
js	short loc_10004FA4
cmp	esi, 1
jg	short loc_10004FA4
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
mov	ecx, dword_100BA008
push	ecx
mov	dword_100BA030,	esi
call	ds:PR_ExitMonitor
add	esp, 8
xor	eax, eax
pop	esi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
db 1Ah dup(0CCh)
public CERT_OCSPCacheSettings
push	ebx
mov	ebx, [esp+4+arg_8]
push	esi
push	edi
mov	edi, [esp+0Ch+arg_4]
cmp	edi, ebx
ja	short loc_1000504C
mov	esi, [esp+0Ch+arg_0]
cmp	esi, 0FFFFFFFFh
jl	short loc_1000504C
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
mov	dword_100BA010,	0FFFFFFFFh
test	esi, esi
js	short loc_1000500B
mov	dword_100BA010,	esi
cmp	edi, dword_100BA014
jb	short loc_1000501B
cmp	ebx, dword_100BA018
jnb	short loc_10005020
call	CERT_ClearOCSPCache
mov	eax, offset dword_100BA020
mov	dword_100BA014,	edi
mov	dword_100BA018,	ebx
call	sub_10004BF0
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
public CERT_SetOCSPTimeout
mov	eax, [esp+arg_0]
mov	dword_100BA01C,	eax
xor	eax, eax
retn
align 10h
			
mov	eax, dword_100BA008
push	esi
push	edi
xor	esi, esi
or	edi, 0FFFFFFFFh
cmp	eax, esi
jnz	short loc_10005094
call	ds:PR_NewMonitor
mov	dword_100BA008,	eax
cmp	eax, esi
jnz	short loc_10005094
or	eax, edi
pop	edi
pop	esi
retn
			
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword_100BA020,	esi
jnz	short loc_100050DF
push	esi
push	esi
push	offset PL_CompareValues
push	offset loc_10004840
push	offset loc_10004760
push	esi
call	PL_NewHashTable
add	esp, 18h
mov	dword_100BA020,	eax
mov	dword_100BA030,	esi
mov	dword_100BA024,	esi
mov	dword_100BA028,	esi
mov	dword_100BA02C,	esi
jmp	short loc_100050EC
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
cmp	dword_100BA020,	esi
jz	short loc_100050F6
xor	edi, edi
mov	eax, dword_100BA008
push	eax
call	ds:PR_ExitMonitor
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
mov	eax, dword_100BA008
push	esi
xor	esi, esi
cmp	eax, esi
jz	loc_100051A4
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword_100BA020,	esi
jz	short loc_1000514B
call	CERT_ClearOCSPCache
mov	eax, dword_100BA020
push	eax
call	PL_HashTableDestroy
add	esp, 4
mov	dword_100BA020,	esi
mov	ecx, dword_100BA008
push	ecx
mov	dword_100BA028,	esi
mov	dword_100BA02C,	esi
mov	dword_100BA00C,	esi
mov	dword_100BA010,	3E8h
mov	dword_100BA014,	0E10h
mov	dword_100BA018,	15180h
mov	dword_100BA030,	esi
call	ds:PR_ExitMonitor
mov	edx, dword_100BA008
push	edx
call	ds:PR_DestroyMonitor
add	esp, 8
mov	dword_100BA008,	esi
xor	eax, eax
pop	esi
retn
align 10h
public SEC_GetRegisteredHttpClient
			
mov	eax, dword_100BA008
test	eax, eax
jnz	short loc_100051C9
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	esi
push	eax
call	ds:PR_EnterMonitor
mov	eax, dword_100BA008
mov	esi, dword_100BA00C
push	eax
call	ds:PR_ExitMonitor
add	esp, 8
mov	eax, esi
pop	esi
retn
align 10h
public CERT_EncodeOCSPRequest
			
			
push	esi
mov	esi, [esp+4+arg_4]
mov	eax, [esi+4]
mov	eax, [eax+1Ch]
test	eax, eax
jz	short loc_1000521A
push	eax
call	CERT_FinishExtensions
mov	ecx, [esi+4]
add	esp, 4
mov	dword ptr [ecx+1Ch], 0
test	eax, eax
jz	short loc_1000521A
xor	eax, eax
pop	esi
retn
			
mov	edx, [esp+4+arg_0]
push	offset dword_100A1BE8
push	esi
push	0
push	edx
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
pop	esi
retn
align 10h
public CERT_DecodeOCSPRequest
sub	esp, 0Ch
push	esi
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_100052BE
push	0Ch
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100052B3
mov	eax, [esp+14h+arg_0]
push	eax
lea	ecx, [esp+18h+var_C]
push	ecx
push	edi
mov	[esi], edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100052B3
lea	edx, [esp+14h+var_C]
push	edx
push	offset dword_100A1BE8
push	esi
push	edi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_100052C6
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	short loc_100052B3
push	0FFFFE078h
call	PORT_SetError_Util
add	esp, 4
			
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
mov	eax, [esi+4]
mov	edx, [eax+14h]
xor	ecx, ecx
cmp	[edx], ecx
jz	short loc_100052F3
xor	eax, eax
mov	edx, [esi+4]
mov	edx, [edx+14h]
mov	eax, [eax+edx]
mov	[eax], edi
mov	edx, [esi+4]
mov	edx, [edx+14h]
inc	ecx
lea	eax, ds:0[ecx*4]
cmp	dword ptr [eax+edx], 0
jnz	short loc_100052D4
pop	edi
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
align 10h
public CERT_DestroyOCSPCertID
			
mov	eax, [esp+arg_0]
test	eax, eax
jz	short loc_10005320
mov	eax, [eax+84h]
test	eax, eax
jz	short loc_10005320
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
xor	eax, eax
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
			
push	ecx
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+14h+arg_0]
xor	esi, esi
mov	[esp+14h+var_4], esi
cmp	edi, esi
jz	short loc_10005360
push	edi
call	PORT_ArenaMark_Util
add	esp, 4
mov	[esp+14h+var_4], eax
mov	ebp, [esp+14h+arg_4]
push	ebp
call	HASH_GetHashObjectByOidTag
mov	ebx, [esp+18h+arg_8]
add	esp, 4
cmp	eax, esi
jz	short loc_100053CA
test	ebx, ebx
jz	short loc_1000539A
mov	ecx, [ebx+4]
test	ecx, ecx
jz	short loc_1000539A
mov	edx, [ebx+8]
cmp	edx, [eax]
jnb	short loc_10005396
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_100053CA
mov	eax, ecx
jmp	short loc_100053B0
			
mov	eax, [eax]
push	eax
push	ebx
push	edi
call	SECITEM_AllocItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_100053CA
mov	eax, [esi+4]
mov	ecx, [esp+14h+arg_C]
mov	edx, [ecx+8]
mov	ecx, [ecx+4]
push	edx
push	ecx
push	eax
push	ebp
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jz	short loc_10005401
			
test	edi, edi
jz	short loc_100053E4
mov	edx, [esp+14h+var_4]
push	edx
push	edi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
test	esi, esi
jz	short loc_100053F9
xor	eax, eax
test	ebx, ebx
setz	al
push	eax
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
test	edi, edi
jz	short loc_10005413
mov	ecx, [esp+14h+var_4]
push	ecx
push	edi
call	PORT_ArenaUnmark_Util
add	esp, 8
test	esi, esi
jnz	short loc_10005419
mov	esi, ebx
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
public CERT_GetSubjectPublicKeyDigest
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
mov	ecx, [eax+0F0h]
mov	edx, [eax+0F4h]
mov	eax, [eax+0F8h]
add	eax, 7
shr	eax, 3
mov	[esp+0Ch+var_4], eax
lea	eax, [esp+0Ch+var_C]
push	eax
mov	eax, [esp+10h+arg_0]
mov	[esp+10h+var_C], ecx
mov	ecx, [esp+10h+arg_C]
mov	[esp+10h+var_8], edx
mov	edx, [esp+10h+arg_8]
push	ecx
push	edx
push	eax
call	sub_10005340
add	esp, 1Ch
retn
align 10h
public CERT_GetSubjectNameDigest
			
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
mov	ecx, [eax+54h]
mov	edx, [eax+58h]
mov	eax, [eax+5Ch]
mov	[esp+0Ch+var_C], ecx
lea	ecx, [esp+0Ch+var_C]
push	ecx
mov	ecx, [esp+10h+arg_0]
mov	[esp+10h+var_8], edx
mov	edx, [esp+10h+arg_C]
mov	[esp+10h+var_4], eax
mov	eax, [esp+10h+arg_8]
push	edx
push	eax
push	ecx
call	sub_10005340
add	esp, 1Ch
retn
align 10h
			
sub	esp, 10h
push	ebx
push	ebp
mov	ebp, [esp+18h+arg_0]
push	esi
push	edi
call	PORT_ArenaMark_Util
push	88h
push	edi
mov	[esp+28h+var_10], eax
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	loc_10005610
push	0
push	4
push	esi
push	edi
call	SECOID_SetAlgorithmID_Util
add	esp, 10h
test	eax, eax
jnz	loc_10005610
mov	eax, [esp+1Ch+arg_8]
mov	ecx, [esp+1Ch+arg_4]
push	0Bh
push	eax
push	ecx
push	ebp
call	CERT_FindCertIssuer
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jz	loc_10005610
mov	edx, [ebx+54h]
mov	eax, [ebx+58h]
mov	ecx, [ebx+5Ch]
mov	[esp+1Ch+var_C], edx
lea	edx, [esp+1Ch+var_C]
push	edx
mov	[esp+20h+var_8], eax
lea	eax, [esi+18h]
push	eax
push	4
push	edi
mov	[esp+2Ch+var_4], ecx
call	sub_10005340
add	esp, 10h
test	eax, eax
jz	loc_10005607
mov	ecx, [esi+1Ch]
mov	edx, [esi+20h]
lea	eax, [esi+48h]
push	eax
push	3
push	ebx
push	edi
mov	[esi+40h], ecx
mov	[esi+44h], edx
call	CERT_GetSubjectNameDigest
add	esp, 10h
test	eax, eax
jz	loc_10005607
lea	ecx, [esi+54h]
push	ecx
push	1
push	ebx
push	edi
call	CERT_GetSubjectNameDigest
add	esp, 10h
test	eax, eax
jz	short loc_10005607
lea	edx, [esi+24h]
push	edx
push	4
push	ebx
push	edi
call	CERT_GetSubjectPublicKeyDigest
add	esp, 10h
test	eax, eax
jz	short loc_10005607
mov	eax, [esi+28h]
mov	ecx, [esi+2Ch]
lea	edx, [esi+6Ch]
push	edx
push	3
push	ebx
push	edi
mov	[esi+64h], eax
mov	[esi+68h], ecx
call	CERT_GetSubjectPublicKeyDigest
add	esp, 10h
test	eax, eax
jz	short loc_10005607
lea	eax, [esi+78h]
push	eax
push	1
push	ebx
push	edi
call	CERT_GetSubjectPublicKeyDigest
add	esp, 10h
test	eax, eax
jz	short loc_10005607
push	ebx
call	CERT_DestroyCertificate
add	ebp, 84h
push	ebp
lea	ecx, [esi+30h]
push	ecx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_10005610
mov	eax, [esp+1Ch+var_10]
push	eax
push	edi
call	PORT_ArenaUnmark_Util
add	esp, 8
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
			
push	ebx
call	CERT_DestroyCertificate
add	esp, 4
			
mov	edx, [esp+1Ch+var_10]
push	edx
push	edi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
public CERT_CreateOCSPCertID
			
			
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10005669
mov	eax, [esp+4+arg_8]
mov	ecx, [esp+4+arg_4]
mov	edx, [esp+4+arg_0]
push	eax
push	ecx
push	edx
call	sub_100054C0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000566D
push	eax
push	edi
call	PORT_FreeArena_Util
add	esp, 8
xor	eax, eax
pop	edi
retn
mov	[eax+84h], edi
pop	edi
retn
align 10h
push	esi
mov	esi, eax
test	esi, esi
jnz	short loc_10005698
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
retn
push	ebx
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_1000580F
push	88h
push	edi
call	PORT_ArenaZAlloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	loc_10005804
cmp	dword ptr [esi+4], 0
jz	short loc_100056E2
push	esi
push	ebx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+10h], 0
jz	short loc_10005701
lea	eax, [esi+0Ch]
push	eax
lea	ecx, [ebx+0Ch]
push	ecx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+1Ch], 0
jz	short loc_10005720
lea	edx, [esi+18h]
push	edx
lea	eax, [ebx+18h]
push	eax
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+28h], 0
jz	short loc_1000573F
lea	ecx, [esi+24h]
push	ecx
lea	edx, [ebx+24h]
push	edx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+34h], 0
jz	short loc_1000575E
lea	eax, [esi+30h]
push	eax
lea	ecx, [ebx+30h]
push	ecx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+40h], 0
jz	short loc_1000577D
lea	edx, [esi+3Ch]
push	edx
lea	eax, [ebx+3Ch]
push	eax
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005804
cmp	dword ptr [esi+4Ch], 0
jz	short loc_10005798
lea	ecx, [esi+48h]
push	ecx
lea	edx, [ebx+48h]
push	edx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10005804
cmp	dword ptr [esi+58h], 0
jz	short loc_100057B3
lea	eax, [esi+54h]
push	eax
lea	ecx, [ebx+54h]
push	ecx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10005804
cmp	dword ptr [esi+64h], 0
jz	short loc_100057CE
lea	edx, [esi+60h]
push	edx
lea	eax, [ebx+60h]
push	eax
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10005804
cmp	dword ptr [esi+70h], 0
jz	short loc_100057E9
lea	ecx, [esi+6Ch]
push	ecx
lea	edx, [ebx+6Ch]
push	edx
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10005804
cmp	dword ptr [esi+7Ch], 0
jz	short loc_10005822
add	esi, 78h
push	esi
lea	eax, [ebx+78h]
push	eax
push	edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_10005822
			
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebx
xor	eax, eax
pop	esi
retn
			
mov	[ebx+84h], edi
pop	edi
mov	eax, ebx
pop	ebx
pop	esi
retn
align 10h
mov	eax, [esp+8]
mov	ecx, [esp+4]
mov	[ecx+8], eax
retn
align 10h
			
push	ebx
push	ebp
push	esi
push	edi
push	10h
mov	esi, eax
mov	ebx, ecx
or	ebp, 0FFFFFFFFh
call	PORT_ZAlloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_100058EE
lea	ebp, [edi+4]
push	ebp
lea	eax, [esi+0A8h]
push	5Dh
push	esi
mov	[edi], eax
call	CERT_FindCertExtension
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10005888
call	PORT_GetError_Util
cmp	eax, 0FFFFE023h
jnz	short loc_100058CD
push	0
or	esi, 0FFFFFFFFh
call	PORT_SetError_Util
mov	ecx, [ebx]
push	offset loc_10005830
push	ecx
push	ebx
call	sub_1003EBB0
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jz	short loc_100058CD
push	offset dword_100A1EC8
push	0
push	edi
push	89h
push	ebx
call	sub_1003ECE0
push	ebx
mov	esi, eax
call	CERT_FinishExtensions
add	esp, 18h
test	esi, esi
jnz	short loc_100058CD
mov	esi, eax
			
cmp	dword ptr [edi+8], 0
jz	short loc_100058DE
push	0
push	ebp
call	SECITEM_FreeItem_Util
add	esp, 8
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
push	ecx
push	ebx
push	ebp
push	esi
push	edi
mov	edi, eax
push	edi
call	PORT_ArenaMark_Util
mov	esi, [esp+18h+arg_0]
mov	[esp+18h+var_4], eax
mov	eax, [esi]
add	esp, 4
xor	ecx, ecx
cmp	eax, esi
jz	loc_100059CB
mov	eax, [eax]
inc	ecx
cmp	eax, esi
jnz	short loc_10005924
test	ecx, ecx
jz	loc_100059CB
lea	eax, ds:4[ecx*4]
push	eax
push	edi
call	PORT_ArenaAlloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	loc_100059CB
mov	ebp, [esi]
xor	esi, esi
cmp	ebp, [esp+14h+arg_0]
jz	short loc_100059AE
push	0Ch
push	edi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[ebx+esi*4], eax
test	eax, eax
jz	short loc_100059CB
mov	ecx, [esp+14h+arg_8]
mov	edx, [esp+14h+arg_4]
push	ecx
mov	[eax], edi
mov	eax, [ebp+8]
push	edx
push	eax
call	sub_100054C0
mov	ecx, [ebx+esi*4]
mov	[ecx+4], eax
mov	ecx, [ebx+esi*4]
add	esp, 0Ch
cmp	dword ptr [ecx+4], 0
jz	short loc_100059CB
cmp	[esp+14h+arg_C], 1
jnz	short loc_100059A4
mov	eax, [ebp+8]
call	sub_10005840
test	eax, eax
jnz	short loc_100059CB
mov	ebp, [ebp+0]
inc	esi
cmp	ebp, [esp+14h+arg_0]
jnz	short loc_10005958
mov	eax, [esp+14h+var_4]
push	eax
push	edi
call	PORT_ArenaUnmark_Util
add	esp, 8
pop	edi
mov	dword ptr [ebx+esi*4], 0
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	ecx
retn
			
mov	edx, [esp+14h+var_4]
push	edx
push	edi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
			
push	ebx
push	esi
push	edi
call	PORT_ArenaMark_Util
push	8
push	edi
mov	ebx, eax
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10005A3D
push	0Ch
push	edi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esi], eax
test	eax, eax
jz	short loc_10005A3D
cmp	[esp+8+arg_8], 1
mov	ecx, [esp+8+arg_0]
mov	[eax], edi
mov	eax, [esi]
mov	[eax+4], ecx
jnz	short loc_10005A4C
mov	eax, [esp+8+arg_4]
mov	ecx, [esi]
call	sub_10005840
test	eax, eax
jz	short loc_10005A4C
			
push	ebx
push	edi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	ebx
retn
			
push	ebx
push	edi
call	PORT_ArenaUnmark_Util
add	esp, 8
mov	dword ptr [esi+4], 0
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
			
push	esi
push	edi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10005AB2
push	0Ch
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10005AA7
push	20h
push	esi
mov	[edi], esi
call	PORT_ArenaZAlloc_Util
add	esp, 8
test	eax, eax
jnz	short loc_10005AB7
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
mov	[edi+4], eax
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
cmp	[esp+arg_14], 0
jz	short loc_10005AD7
push	0FFFFE898h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	esi
call	sub_10005A70
mov	esi, eax
test	esi, esi
jz	short loc_10005B1A
mov	eax, [esp+4+arg_10]
mov	ecx, [esp+4+arg_4]
mov	edx, [esp+4+arg_0]
push	edi
mov	edi, [esi]
push	eax
push	ecx
push	edx
call	sub_100059F0
mov	ecx, [esi+4]
mov	[ecx+14h], eax
mov	edx, [esi+4]
add	esp, 0Ch
cmp	dword ptr [edx+14h], 0
pop	edi
jnz	short loc_10005B1E
mov	eax, [esi]
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
public CERT_CreateOCSPRequest
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_10005B4A
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
cmp	[esp+4+arg_10],	0
jz	short loc_10005B62
push	0FFFFE898h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
push	esi
call	sub_10005A70
mov	esi, eax
test	esi, esi
jz	short loc_10005BA4
mov	eax, [esp+8+arg_C]
mov	ecx, [esp+8+arg_8]
mov	edx, [esp+8+arg_4]
push	eax
mov	eax, [esi]
push	ecx
push	edx
push	edi
call	sub_10005900
mov	ecx, [esi+4]
mov	[ecx+14h], eax
mov	edx, [esi+4]
add	esp, 10h
cmp	dword ptr [edx+14h], 0
jnz	short loc_10005BA9
mov	eax, [esi]
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	edi
retn
mov	eax, esi
pop	esi
pop	edi
retn
align 10h
mov	eax, [esp+4]
mov	ecx, [eax+4]
mov	edx, [esp+8]
mov	[ecx+18h], edx
retn
align 10h
public CERT_AddOCSPAcceptableResponses
			
			
sub	esp, 8
push	ebx
mov	ebx, [esp+0Ch+arg_0]
mov	eax, [ebx+4]
push	ebp
mov	[esp+10h+var_8], 0
mov	ebp, [eax+1Ch]
push	esi
push	edi
mov	[esp+18h+var_4], 0FFFFFFFFh
test	ebp, ebp
jnz	short loc_10005C00
mov	ecx, [ebx]
push	offset loc_10005BB0
push	ecx
push	ebx
call	sub_1003EBB0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_10005CA6
mov	esi, [esp+18h+arg_4]
mov	edi, 1
cmp	esi, 83h
jz	short loc_10005C21
lea	eax, [esp+18h+arg_4]
add	eax, 4
inc	edi
cmp	dword ptr [eax], 83h
jnz	short loc_10005C15
lea	edx, ds:4[edi*4]
push	edx
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+18h+var_8], eax
test	eax, eax
jz	short loc_10005CB7
push	esi
call	SECOID_FindOIDByTag_Util
mov	ecx, [esp+1Ch+var_8]
mov	esi, 1
add	esp, 4
mov	[ecx], eax
cmp	edi, esi
jle	short loc_10005C74
lea	ebx, [esp+18h+arg_4]
mov	edx, [ebx+4]
add	ebx, 4
push	edx
call	SECOID_FindOIDByTag_Util
mov	ecx, [esp+1Ch+var_8]
mov	[ecx+esi*4], eax
inc	esi
add	esp, 4
cmp	esi, edi
jl	short loc_10005C55
mov	ebx, [esp+18h+arg_0]
mov	edx, [esp+18h+var_8]
push	0
push	0
mov	dword ptr [edx+esi*4], 0
call	NSS_Get_SEC_SequenceOfObjectIDTemplate
push	eax
push	0
lea	eax, [esp+28h+var_8]
push	eax
push	86h
push	ebp
call	sub_1003ECE0
add	esp, 1Ch
mov	[esp+18h+var_4], eax
test	eax, eax
jz	short loc_10005CD0
mov	eax, [esp+18h+var_8]
test	eax, eax
jz	short loc_10005CB7
push	eax
call	PORT_Free_Util
add	esp, 4
			
test	ebp, ebp
jz	short loc_10005CC4
push	ebp
call	CERT_FinishExtensions
add	esp, 4
mov	eax, [esp+18h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
mov	ecx, [esp+18h+var_8]
push	ecx
call	PORT_Free_Util
mov	eax, [ebx+4]
add	esp, 4
cmp	dword ptr [eax+1Ch], 0
jnz	short loc_10005CE9
mov	[eax+1Ch], ebp
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
public CERT_DestroyOCSPRequest
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10005D5B
mov	eax, [esi+4]
test	eax, eax
jz	short loc_10005D33
mov	eax, [eax+10h]
test	eax, eax
jz	short loc_10005D20
push	eax
call	sub_10041C80
add	esp, 4
mov	eax, [esi+4]
mov	eax, [eax+1Ch]
test	eax, eax
jz	short loc_10005D33
push	eax
call	CERT_FinishExtensions
add	esp, 4
			
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10005D4A
mov	eax, [eax+28h]
test	eax, eax
jz	short loc_10005D4A
push	eax
call	CERT_DestroyCertificate
add	esp, 4
			
mov	esi, [esi]
test	esi, esi
jz	short loc_10005D5B
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
			
pop	esi
retn
align 10h
sub	esp, 8
cmp	[esp+8+arg_0], 0
mov	[esp+8+var_4], 0FFFFFFFFh
jnz	short loc_10005D86
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
add	esp, 8
retn
push	edi
mov	edi, [esp+0Ch+arg_4]
test	edi, edi
jnz	short loc_10005D96
xor	eax, eax
pop	edi
add	esp, 8
retn
cmp	dword ptr [edi], 0
push	ebx
push	ebp
push	esi
mov	[esp+18h+var_8], 0
jz	loc_10005E69
lea	ebx, [ebx+0]
mov	eax, [edi]
mov	ecx, [eax+0Ch]
movzx	eax, byte ptr [ecx]
and	eax, 1Fh
sub	eax, 0
jz	short loc_10005DDB
dec	eax
jz	short loc_10005DD4
dec	eax
jz	short loc_10005DCD
mov	ebp, 3
jmp	short loc_10005DDD
mov	ebp, 2
jmp	short loc_10005DDD
mov	ebp, 1
jmp	short loc_10005DDD
xor	ebp, ebp
			
mov	eax, ebp
sub	eax, 0
jz	short loc_10005DFF
dec	eax
jz	short loc_10005DF8
dec	eax
jz	short loc_10005DF1
mov	ebx, offset dword_100A1EB8
jmp	short loc_10005E04
mov	ebx, offset dword_100A1EA8
jmp	short loc_10005E04
mov	ebx, offset dword_100A1E98
jmp	short loc_10005E04
mov	ebx, offset dword_100A1E48
			
mov	edx, [esp+18h+arg_0]
push	8
push	edx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10005E96
mov	eax, [edi]
mov	ecx, [esp+18h+arg_0]
add	eax, 8
push	eax
push	ecx
call	SECITEM_ArenaDupItem_Util
add	esp, 8
test	eax, eax
jz	short loc_10005E96
mov	edx, [esp+18h+arg_0]
push	eax
push	ebx
push	esi
push	edx
call	SEC_QuickDERDecodeItem_Util
mov	ebx, eax
add	esp, 10h
mov	[esp+18h+var_4], ebx
test	ebx, ebx
jnz	short loc_10005E73
mov	ecx, [esp+18h+arg_4]
mov	[esi], ebp
mov	eax, [edi]
mov	[eax+14h], esi
mov	eax, [esp+18h+var_8]
inc	eax
lea	edi, [ecx+eax*4]
mov	[esp+18h+var_8], eax
cmp	[edi], ebx
jnz	loc_10005DB0
pop	esi
pop	ebp
pop	ebx
xor	eax, eax
pop	edi
add	esp, 8
retn
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	short loc_10005E9A
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 8
retn
			
mov	ebx, [esp+18h+var_4]
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 8
retn
align 10h
sub	esp, 18h
push	ebx
push	ebp
push	edi
push	esi
call	PORT_ArenaMark_Util
push	48h
push	esi
mov	[esp+30h+var_14], eax
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 0Ch
mov	[esp+24h+var_10], edi
test	edi, edi
jz	loc_10005FCD
mov	eax, [esp+24h+arg_0]
push	eax
lea	ecx, [esp+28h+var_C]
push	ecx
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10005FCD
lea	edx, [esp+24h+var_C]
push	edx
push	offset dword_100A1D98
push	edi
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_10005F40
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	loc_10005FCD
push	0FFFFE081h
call	PORT_SetError_Util
mov	ecx, [esp+28h+var_14]
add	esp, 4
push	ecx
push	esi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
mov	ebx, [edi+0Ch]
mov	eax, [ebx+10h]
movzx	eax, byte ptr [eax]
and	eax, 1Fh
dec	eax
jz	short loc_10005F66
dec	eax
jz	short loc_10005F5C
mov	[esp+24h+var_18], 0FFFFFFFFh
jmp	short loc_10005F6E
mov	[esp+24h+var_18], 2
jmp	short loc_10005F6E
mov	[esp+24h+var_18], 1
			
mov	eax, [esp+24h+var_18]
dec	eax
jz	short loc_10005F86
dec	eax
jz	short loc_10005F7F
mov	ebp, offset dword_100A1E28
jmp	short loc_10005F8B
mov	ebp, offset dword_100A1E18
jmp	short loc_10005F8B
mov	ebp, offset dword_100A1E08
			
push	10h
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10005FCD
lea	ecx, [ebx+0Ch]
push	ecx
push	ebp
push	edi
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10005F0C
mov	edx, [esp+24h+var_18]
mov	[edi], edx
mov	eax, [ebx+28h]
push	eax
push	esi
mov	[ebx+18h], edi
call	sub_10005D60
add	esp, 8
test	eax, eax
jz	short loc_10005FE4
			
mov	ecx, [esp+24h+var_14]
push	ecx
push	esi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
mov	edx, [esp+24h+var_14]
push	edx
push	esi
call	PORT_ArenaUnmark_Util
mov	eax, [esp+2Ch+var_10]
add	esp, 8
pop	edi
pop	ebp
pop	ebx
add	esp, 18h
retn
align 10h
test	edi, edi
jnz	short loc_10006015
push	0FFFFE076h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	edi
call	SECOID_FindOIDTag_Util
add	esp, 4
mov	[edi+0Ch], eax
cmp	eax, 83h
jnz	short loc_10006004
lea	eax, [edi+10h]
push	eax
call	sub_10005EB0
add	esp, 4
test	eax, eax
jz	short loc_10006011
mov	[edi+1Ch], eax
xor	eax, eax
retn
align 10h
public CERT_DecodeOCSPResponse
			
			
sub	esp, 0Ch
push	ebx
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_100060F6
push	18h
push	esi
call	PORT_ArenaZAlloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_100060EB
mov	eax, [esp+14h+arg_0]
push	eax
lea	ecx, [esp+18h+var_C]
push	ecx
push	esi
mov	[ebx], esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100060EB
lea	edx, [esp+14h+var_C]
push	edx
push	offset dword_100A1C78
push	ebx
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_100060CA
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	short loc_100060EB
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
lea	eax, [ebx+4]
push	eax
call	DER_GetInteger_Util
add	esp, 4
mov	[ebx+10h], eax
test	eax, eax
jnz	short loc_100060FE
push	edi
mov	edi, [ebx+14h]
call	sub_10006000
pop	edi
test	eax, eax
jz	short loc_100060FE
			
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+14h]
mov	edx, [esp+arg_4]
mov	ecx, [ecx+1Ch]
mov	eax, [ecx+0Ch]
test	edx, edx
jz	short locret_10006127
mov	[edx], ecx
retn
align 10h
mov	eax, [esp+arg_0]
mov	eax, [eax+14h]
test	eax, eax
jnz	short loc_1000613E
xor	eax, eax
retn
cmp	dword ptr [eax+0Ch], 83h
jnz	short loc_1000613B
mov	eax, [eax+1Ch]
add	eax, 10h
retn
align 10h
public CERT_DestroyOCSPResponse
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10006192
mov	eax, [esi+14h]
test	eax, eax
jz	short loc_10006181
cmp	dword ptr [eax+0Ch], 83h
jnz	short loc_10006181
mov	eax, [eax+1Ch]
add	eax, 10h
jz	short loc_10006181
mov	eax, [eax+28h]
test	eax, eax
jz	short loc_10006181
push	eax
call	CERT_DestroyCertificate
add	esp, 4
			
mov	eax, [esi]
test	eax, eax
jz	short loc_10006192
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
			
pop	esi
retn
align 10h
			
sub	esp, 0Ch
push	ebx
push	ebp
push	esi
mov	esi, eax
push	edi
mov	[esp+1Ch+var_8], 50h
test	esi, esi
jz	loc_1000631D
mov	al, [esi]
cmp	al, 20h
jz	short loc_100061C3
cmp	al, 9
jnz	short loc_100061CE
test	al, al
jz	loc_1000631D
inc	esi
jmp	short loc_100061B9
test	al, al
jz	loc_1000631D
push	7
push	offset aHttp	
push	esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	loc_1000631D
mov	bl, [esi+7]
add	esi, 7
mov	eax, esi
mov	[esp+1Ch+Src], eax
cmp	bl, 2Fh
jz	short loc_1000621C
nop
cmp	bl, 3Ah
jz	short loc_1000621C
test	bl, bl
jz	short loc_1000621C
cmp	bl, 20h
jz	short loc_1000621C
cmp	bl, 9
jz	short loc_1000621C
mov	bl, [esi+1]
inc	esi
cmp	bl, 2Fh
jnz	short loc_10006200
			
mov	edi, esi
sub	edi, eax
lea	eax, [edi+1]
push	eax
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
mov	[esp+1Ch+var_C], ebp
test	ebp, ebp
jz	loc_1000631D
mov	ecx, [esp+1Ch+Src]
push	edi		
push	ecx		
push	ebp		
call	memcpy
add	esp, 0Ch
mov	byte ptr [edi+ebp], 0
cmp	bl, 3Ah
jnz	short loc_10006295
push	0Ah		
inc	esi
push	0		
push	esi		
call	ds:strtol
mov	bl, [esi]
movzx	edx, ax
add	esp, 0Ch
mov	[esp+1Ch+var_8], edx
cmp	bl, 2Fh
jz	short loc_1000629A
nop
test	bl, bl
jz	short loc_10006295
cmp	bl, 20h
jz	short loc_10006295
cmp	bl, 9
jz	short loc_10006295
sub	bl, 30h
cmp	bl, 9
ja	loc_10006314
mov	bl, [esi+1]
inc	esi
cmp	bl, 2Fh
jnz	short loc_10006270
jmp	short loc_1000629A
			
cmp	bl, 2Fh
jnz	short loc_100062FB
			
mov	ebp, esi
test	bl, bl
jz	short loc_100062B2
cmp	bl, 20h
jz	short loc_100062B2
cmp	bl, 9
jz	short loc_100062B2
mov	bl, [esi+1]
inc	esi
test	bl, bl
jnz	short loc_100062A0
			
sub	esi, ebp
lea	eax, [esi+1]
push	eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10006310
push	esi		
push	ebp		
push	edi		
call	memcpy
mov	ebp, [esp+28h+var_C]
add	esp, 0Ch
mov	byte ptr [esi+edi], 0
mov	ecx, [esp+1Ch+arg_0]
mov	ax, word ptr [esp+1Ch+var_8]
mov	edx, [esp+1Ch+arg_4]
mov	[ecx], ebp
mov	ecx, [esp+1Ch+arg_8]
mov	[edx], ax
mov	[ecx], edi
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
push	offset dword_100A1F08
call	PORT_Strdup_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100062D9
jmp	short loc_10006314
mov	ebp, [esp+1Ch+var_C]
			
push	ebp
call	PORT_Free_Util
add	esp, 4
			
push	0FFFFE075h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
align 10h
sub	esp, 38h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+38h+var_4], eax
push	ebx
push	ebp
push	esi
push	edi
mov	esi, ecx
xor	ebx, ebx
call	ds:PR_NewTCPSocket
mov	edi, eax
test	edi, edi
jz	loc_1000645C
push	1Eh
call	ds:PR_SecondsToInterval
mov	ebp, eax
lea	eax, [esp+4Ch+var_24]
push	eax
push	esi
mov	[esp+54h+var_38], ebp
call	ds:PR_StringToNetAddr
add	esp, 0Ch
test	eax, eax
jz	loc_10006418
push	400h
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	loc_10006445
lea	ecx, [esp+48h+var_34]
push	ecx
push	400h
push	ebx
push	esi
call	ds:PR_GetHostByName
add	esp, 10h
test	eax, eax
jnz	loc_10006445
mov	ebp, ds:PR_EnumerateHostEnt
xor	esi, esi
mov	eax, [esp+48h+arg_0]
lea	edx, [esp+48h+var_24]
push	edx
push	eax
lea	ecx, [esp+50h+var_34]
push	ecx
push	esi
call	ebp 
mov	esi, eax
add	esp, 10h
test	esi, esi
jle	short loc_10006445
mov	edx, [esp+48h+var_38]
push	edx
lea	eax, [esp+4Ch+var_24]
push	eax
push	edi
call	ds:PR_Connect
add	esp, 0Ch
test	eax, eax
jnz	short loc_100063C7
push	ebx
call	PORT_Free_Util
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+38h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
mov	edx, [esp+48h+arg_0]
lea	ecx, [esp+48h+var_24]
push	ecx
push	edx
push	0
call	ds:PR_InitializeNetAddr
add	esp, 0Ch
test	eax, eax
jnz	short loc_10006445
push	ebp
lea	eax, [esp+4Ch+var_24]
push	eax
push	edi
call	ds:PR_Connect
add	esp, 0Ch
test	eax, eax
jz	short loc_10006403
			
push	edi
call	ds:PR_Close
add	esp, 4
test	ebx, ebx
jz	short loc_1000645C
push	ebx
call	PORT_Free_Util
add	esp, 4
			
mov	ecx, [esp+48h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 38h
retn
align 10h
sub	esp, 24h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+24h+var_4], eax
mov	eax, [esp+24h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+2Ch+arg_4]
xor	ecx, ecx
push	esi
mov	[esp+30h+var_24], ecx
mov	[esp+30h+var_20], ecx
mov	[esp+30h+var_1C], ecx
push	edi
lea	ecx, [esp+34h+var_20]
push	ecx
lea	edx, [esp+38h+var_18]
push	edx
lea	ecx, [esp+3Ch+var_24]
push	ecx
call	sub_100061A0
mov	ebx, [esp+40h+var_24]
add	esp, 0Ch
test	eax, eax
jnz	loc_100065C5
mov	esi, [esp+34h+var_18]
push	esi
mov	ecx, ebx
call	sub_10006340
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_100065C5
mov	[esp+34h+var_14], 0
cmp	si, 50h
jz	short loc_10006508
movzx	edx, si
push	edx
push	offset aD	
lea	eax, [esp+3Ch+var_14]
push	10h
push	eax
call	ds:PR_snprintf
add	esp, 10h
mov	edx, [esp+34h+var_20]
lea	ecx, [esp+34h+var_14]
test	ebp, ebp
jnz	short loc_10006553
push	ecx
push	ebx
push	edx
push	offset aGetSHttp1_0Hos 
call	ds:PR_smprintf
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	loc_100065B7
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10006532
sub	eax, edx
push	eax
push	esi
push	edi
call	ds:PR_Write
add	esp, 0Ch
test	eax, eax
js	short loc_100065AE
mov	[esp+34h+var_1C], edi
xor	edi, edi
jmp	short loc_100065AE
mov	eax, [ebp+8]
push	eax
push	ecx
push	ebx
push	edx
push	offset aPostSHttp1_0Ho 
call	ds:PR_smprintf
mov	esi, eax
add	esp, 14h
test	esi, esi
jz	short loc_100065B7
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10006571
mov	ebx, ds:PR_Write
sub	eax, edx
push	eax
push	esi
push	edi
call	ebx 
add	esp, 0Ch
test	eax, eax
js	short loc_100065AA
mov	eax, [ebp+8]
mov	ecx, [ebp+4]
push	eax
push	ecx
push	edi
call	ebx 
add	esp, 0Ch
test	eax, eax
js	short loc_100065AA
mov	ebx, [esp+34h+var_24]
mov	[esp+34h+var_1C], edi
xor	edi, edi
jmp	short loc_100065AE
			
mov	ebx, [esp+34h+var_24]
			
push	esi
call	PORT_Free_Util
add	esp, 4
			
test	edi, edi
jz	short loc_100065C5
push	edi
call	ds:PR_Close
add	esp, 4
			
mov	eax, [esp+34h+var_20]
test	eax, eax
jz	short loc_100065D6
push	eax
call	PORT_Free_Util
add	esp, 4
test	ebx, ebx
jz	short loc_100065E3
push	ebx
call	PORT_Free_Util
add	esp, 4
mov	ecx, [esp+34h+var_4]
mov	eax, [esp+34h+var_1C]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24h
retn
align 10h
push	ebp
mov	ebp, [esp+4+arg_8]
push	esi
xor	esi, esi
test	edi, edi
jle	short loc_1000664A
push	ebx
mov	ebx, ds:PR_Recv
mov	ecx, [esp+0Ch+arg_4]
push	ebp
push	0
mov	eax, edi
sub	eax, esi
push	eax
mov	eax, [esp+18h+arg_0]
lea	edx, [esi+ecx]
push	edx
push	eax
call	ebx 
add	esp, 14h
test	eax, eax
js	short loc_1000663F
jz	short loc_10006639
add	esi, eax
cmp	esi, edi
jl	short loc_10006613
			
pop	ebx
mov	eax, esi
pop	esi
pop	ebp
retn
test	esi, esi
jnz	short loc_10006639
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	eax, esi
pop	esi
pop	ebp
retn
align 10h
sub	esp, 1Ch
push	ebx
push	ebp
push	esi
push	edi
push	1Eh
xor	esi, esi
xor	ebx, ebx
xor	ebp, ebp
call	ds:PR_SecondsToInterval
add	esp, 4
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_14], esi
mov	[esp+2Ch+var_10], esi
mov	[esp+2Ch+var_C], esi
jmp	short loc_10006680
align 10h
			
add	esi, 400h
mov	[esp+2Ch+var_1C], esi
inc	esi
push	esi
push	ebx
call	PORT_Realloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	loc_1000697E
xor	esi, esi
lea	edi, [ebx+ebp]
mov	eax, [esp+2Ch+var_8]
push	eax
mov	eax, [esp+30h+arg_4]
push	0
mov	ecx, 400h
sub	ecx, esi
push	ecx
lea	edx, [edi+esi]
push	edx
push	eax
call	ds:PR_Recv
add	esp, 14h
test	eax, eax
js	short loc_100066D7
jz	short loc_100066DF
add	esi, eax
cmp	esi, 400h
jl	short loc_100066A4
jmp	short loc_100066DF
test	esi, esi
jz	loc_100069B3
			
test	esi, esi
jle	loc_100069B3
mov	edi, ds:strstr
lea	eax, [ebp-4]
xor	ecx, ecx
test	eax, eax
setle	cl
push	offset SubStr	
add	ebp, esi
mov	byte ptr [ebx+ebp], 0
dec	ecx
and	eax, ecx
add	eax, ebx
push	eax		
call	edi 
add	esp, 8
mov	[esp+2Ch+var_18], eax
cmp	esi, 400h
jge	short loc_10006721
mov	[esp+2Ch+var_14], 1
test	eax, eax
jnz	short loc_10006746
cmp	[esp+2Ch+var_14], eax
jnz	loc_100069B3
cmp	[esp+2Ch+var_1C], 2000h
jge	loc_100069B3
mov	esi, [esp+2Ch+var_1C]
jmp	loc_10006680
push	offset asc_100A1FE4 
push	ebx		
mov	[esp+34h+var_1C], ebp
call	edi 
add	esp, 8
mov	[esp+2Ch+var_4], eax
test	eax, eax
jz	loc_100069B3
mov	edi, ds:strchr
push	20h		
push	ebx		
mov	byte ptr [eax],	0
call	edi 
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_100069B3
push	5
push	offset aHttp_0	
push	ebx
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	loc_100069B3
lea	ebp, [esi+1]
push	20h		
push	ebp		
call	edi 
add	esp, 8
test	eax, eax
jz	loc_100069B3
mov	byte ptr [eax],	0
mov	esi, offset a200 
mov	eax, ebp
mov	cl, [eax]
cmp	cl, [esi]
jnz	short loc_100067D1
test	cl, cl
jz	short loc_100067CD
mov	cl, [eax+1]
cmp	cl, [esi+1]
jnz	short loc_100067D1
add	eax, 2
add	esi, 2
test	cl, cl
jnz	short loc_100067B1
xor	eax, eax
jmp	short loc_100067D6
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	loc_100069B3
mov	ebp, [esp+2Ch+var_4]
mov	edx, [esp+2Ch+var_18]
add	ebp, 2
mov	[edx], al
jmp	short loc_100067F0
align 10h
			
push	3Ah		
push	ebp		
call	edi 
add	esp, 8
test	eax, eax
jz	loc_100069B3
lea	esi, [eax+1]
mov	byte ptr [eax],	0
cmp	byte ptr [esi],	20h
jnz	loc_100069B3
inc	esi
push	offset asc_100A1FE4 
push	esi		
call	ds:strstr
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10006828
mov	byte ptr [edi],	0
push	offset aContentType 
push	ebp
call	PL_strcasecmp
add	esp, 8
test	eax, eax
jnz	short loc_10006840
mov	[esp+2Ch+var_10], esi
jmp	short loc_10006860
push	offset aContentLength 
push	ebp
call	PL_strcasecmp
add	esp, 8
test	eax, eax
jnz	short loc_10006860
push	esi		
call	ds:atoi
add	esp, 4
mov	[esp+2Ch+var_C], eax
			
test	edi, edi
jz	short loc_10006881
lea	ebp, [edi+2]
test	ebp, ebp
jz	short loc_10006881
mov	edi, [esp+2Ch+var_18]
lea	eax, [edi+2]
cmp	ebp, eax
jnb	short loc_10006885
mov	edi, ds:strchr
jmp	loc_100067F0
			
mov	edi, [esp+2Ch+var_18]
mov	eax, [esp+2Ch+var_10]
test	eax, eax
jz	loc_100069B3
push	offset aApplicationOcs 
push	eax
call	PL_strcasecmp
add	esp, 8
test	eax, eax
jnz	loc_100069B3
mov	edx, [esp+2Ch+var_1C]
mov	ecx, ebx
sub	ecx, edi
lea	esi, [edx+ecx-4]
test	esi, esi
jz	short loc_100068C6
push	esi		
add	edi, 4
push	edi		
push	ebx		
call	ds:memmove
add	esp, 0Ch
lea	eax, [esi-1]
cdq
and	edx, 3FFh
lea	ebp, [edx+eax]
sar	ebp, 0Ah
inc	ebp
shl	ebp, 0Ah
cmp	[esp+2Ch+var_14], 0
jnz	short loc_10006933
mov	eax, [esp+2Ch+var_C]
test	eax, eax
jz	short loc_100068ED
cmp	esi, eax
jge	short loc_10006933
cmp	ebp, 2000h
jge	short loc_10006933
add	ebp, 400h
lea	eax, [ebp+1]
push	eax
push	ebx
call	PORT_Realloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_1000697E
mov	ecx, [esp+2Ch+var_8]
mov	eax, [esp+2Ch+arg_4]
push	ecx
lea	edx, [esi+ebx]
push	edx
push	eax
mov	edi, 400h
call	sub_10006600
add	esp, 0Ch
test	eax, eax
jle	short loc_10006933
add	esi, eax
cmp	eax, edi
jge	short loc_100068E1
			
test	esi, esi
jnz	short loc_1000695B
test	ebx, ebx
jz	short loc_10006944
push	ebx
call	PORT_Free_Util
add	esp, 4
push	0FFFFE077h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
mov	ecx, [esp+2Ch+arg_0]
push	esi
push	0
push	ecx
call	SECITEM_AllocItem_Util
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_10006995
test	ebx, ebx
jz	short loc_1000697E
push	ebx
call	PORT_Free_Util
add	esp, 4
			
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
mov	edx, [edi+4]
push	esi		
push	ebx		
push	edx		
call	memcpy
push	ebx
call	PORT_Free_Util
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 1Ch
retn
			
push	ebx
call	PORT_Free_Util
push	0FFFFE077h
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
			
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_8]
mov	edx, [esp+arg_4]
push	eax
mov	eax, [esp+4+arg_0]
push	ecx
push	edx
call	sub_100061A0
add	esp, 0Ch
retn
align 10h
sub	esp, 24h
push	ebp
mov	ebp, [esp+28h+arg_8]
push	esi
lea	eax, [esp+2Ch+var_14]
push	eax
mov	eax, [esp+30h+arg_4]
xor	esi, esi
lea	ecx, [esp+30h+var_8]
push	ecx
lea	edx, [esp+34h+var_10]
push	edx
mov	[esp+38h+var_10], esi
mov	[esp+38h+var_14], esi
mov	[esp+38h+var_C], esi
mov	[esp+38h+var_18], esi
mov	[esp+38h+var_20], esi
call	sub_100061A0
add	esp, 0Ch
cmp	eax, 0FFFFFFFFh
jnz	short loc_10006A41
push	0FFFFE078h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10006B87
mov	ecx, [esp+2Ch+var_8]
mov	edx, [esp+2Ch+var_10]
lea	eax, [esp+2Ch+var_18]
push	eax
mov	eax, [edi]
push	ecx
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
jz	short loc_10006A6D
push	0FFFFE079h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10006B87
push	ebx
mov	ebx, offset aPost 
cmp	ebp, esi
jnz	short loc_10006A7C
mov	ebx, offset aGet 
lea	ecx, [esp+30h+var_20]
push	ecx
call	ds:PR_TicksPerSecond
imul	eax, dword_100BA01C
mov	edx, [esp+34h+var_14]
mov	ecx, [edi+0Ch]
push	eax
mov	eax, [esp+38h+var_18]
push	ebx
push	edx
push	offset aHttp_1	
push	eax
call	ecx
add	esp, 18h
pop	ebx
test	eax, eax
jz	short loc_10006ABE
push	0FFFFE079h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10006B87
cmp	ebp, esi
jz	short loc_10006AF2
mov	edx, [ebp+8]
mov	eax, [ebp+4]
mov	ecx, [esp+2Ch+var_20]
push	offset aApplicationO_0 
push	edx
mov	edx, [edi+10h]
push	eax
push	ecx
call	edx
add	esp, 10h
test	eax, eax
jz	short loc_10006AF2
push	0FFFFE079h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10006B87
			
lea	eax, [esp+2Ch+Size]
push	eax
mov	eax, [esp+30h+var_20]
lea	ecx, [esp+30h+Src]
push	ecx
mov	ecx, [edi+18h]
push	esi
push	esi
lea	edx, [esp+3Ch+var_24]
push	edx
push	esi
push	eax
mov	[esp+48h+Size],	10000h
call	ecx
add	esp, 1Ch
test	eax, eax
jz	short loc_10006B2C
push	0FFFFE079h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10006B87
mov	edx, 0C8h
cmp	[esp+2Ch+var_24], dx
jz	short loc_10006B47
push	0FFFFE077h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10006B87
mov	eax, [esp+2Ch+Size]
mov	ecx, [esp+2Ch+arg_0]
push	eax
push	esi
push	ecx
call	SECITEM_AllocItem_Util
add	esp, 0Ch
mov	[esp+2Ch+var_C], eax
cmp	eax, esi
jnz	short loc_10006B71
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10006B87
mov	edx, [esp+2Ch+Size]
mov	ecx, [esp+2Ch+Src]
push	edx		
mov	edx, [eax+4]
push	ecx		
push	edx		
call	memcpy
add	esp, 0Ch
			
mov	eax, [esp+2Ch+var_20]
cmp	eax, esi
jz	short loc_10006B98
push	eax
mov	eax, [edi+20h]
call	eax
add	esp, 4
mov	eax, [esp+2Ch+var_18]
cmp	eax, esi
jz	short loc_10006BA9
mov	ecx, [edi+8]
push	eax
call	ecx
add	esp, 4
mov	eax, [esp+2Ch+var_14]
cmp	eax, esi
jz	short loc_10006BBA
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+2Ch+var_10]
cmp	eax, esi
pop	esi
pop	ebp
jz	short loc_10006BCD
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+24h+var_C]
add	esp, 24h
retn
align 10h
			
mov	eax, [esp+arg_0]
push	ebp
push	esi
mov	esi, [esp+8+arg_4]
xor	ebp, ebp
cmp	byte ptr [eax],	0
push	edi
mov	edi, eax
jz	short loc_10006C5D
push	ebx
mov	bl, [edi]
movsx	eax, bl
push	eax		
call	ds:isspace
add	esp, 4
test	eax, eax
jnz	short loc_10006C56
cmp	bl, 2Bh
jz	short loc_10006C43
cmp	bl, 2Fh
jz	short loc_10006C34
cmp	bl, 3Dh
jz	short loc_10006C25
cmp	[esp+10h+arg_4], eax
jz	short loc_10006C22
mov	cl, [edi]
mov	[esi], cl
inc	esi
inc	ebp
jmp	short loc_10006C56
cmp	[esp+10h+arg_4], 0
jz	short loc_10006C53
mov	dword ptr [esi], 443325h
jmp	short loc_10006C50
cmp	[esp+10h+arg_4], 0
jz	short loc_10006C53
mov	dword ptr [esi], 463225h
jmp	short loc_10006C50
cmp	[esp+10h+arg_4], 0
jz	short loc_10006C53
mov	dword ptr [esi], 423225h
			
add	esi, 3
			
add	ebp, 3
			
inc	edi
cmp	byte ptr [edi],	0
jnz	short loc_10006BF5
pop	ebx
cmp	[esp+0Ch+arg_4], 0
lea	eax, [ebp+1]
jz	short loc_10006C6A
mov	byte ptr [esi],	0
pop	edi
pop	esi
pop	ebp
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_0]
push	esi
push	edi
mov	edi, eax
mov	eax, dword_100BA008
test	eax, eax
jnz	short loc_10006CB8
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
			
push	edi
push	ebx
call	sub_10006480
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10006CF0
push	esi
push	ebp
call	sub_10006650
push	esi
mov	edi, eax
call	ds:PR_Close
add	esp, 0Ch
mov	eax, edi
pop	edi
pop	esi
pop	ebp
retn
push	eax
call	ds:PR_EnterMonitor
mov	eax, dword_100BA008
mov	esi, dword_100BA00C
push	eax
call	ds:PR_ExitMonitor
add	esp, 8
test	esi, esi
jz	short loc_10006C8F
cmp	word ptr [esi],	1
jnz	short loc_10006C8F
push	edi
push	ebx
lea	edi, [esi+4]
push	ebp
call	sub_100069F0
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
retn
pop	edi
pop	esi
xor	eax, eax
pop	ebp
retn
align 10h
sub	esp, 0Ch
push	esi
push	edi
lea	eax, [esp+14h+var_C]
push	eax
push	5Ch
xor	edi, edi
push	ecx
mov	[esp+20h+var_8], edi
call	CERT_FindCertExtension
add	esp, 0Ch
test	eax, eax
jnz	short loc_10006D5A
lea	edx, [esp+14h+var_C]
push	edx
call	CERT_DecodeOidSequence
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10006D5A
mov	esi, [edi+4]
mov	eax, [esi]
test	eax, eax
jz	short loc_10006D5A
jmp	short loc_10006D40
align 10h
			
push	eax
call	SECOID_FindOIDTag_Util
add	esp, 4
cmp	eax, 97h
jz	short loc_10006D8F
mov	eax, [esi+4]
add	esi, 4
test	eax, eax
jnz	short loc_10006D40
			
push	0FFFFE090h
xor	esi, esi
call	PORT_SetError_Util
add	esp, 4
mov	eax, [esp+14h+var_8]
test	eax, eax
jz	short loc_10006D7A
push	eax
call	PORT_Free_Util
add	esp, 4
test	edi, edi
jz	short loc_10006D87
push	edi
call	CERT_DestroyUserNotice
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
mov	esi, 1
jmp	short loc_10006D69
align 10h
			
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	eax, [esp+60h+arg_0]
mov	edx, [esi+0F0h]
push	ebx
push	ebp
mov	ebp, [esi+0F4h]
push	edi
mov	edi, [esi+0F8h]
lea	ecx, [esp+6Ch+var_44]
lea	edi, [edi+7]
push	4
mov	[esp+70h+var_54], eax
mov	[esp+70h+var_5C], ecx
mov	[esp+70h+var_58], 14h
mov	[esp+70h+var_50], edx
shr	edi, 3
xor	ebx, ebx
call	HASH_GetHashObjectByOidTag
add	esp, 4
test	eax, eax
jz	short loc_10006E65
mov	ecx, [esp+6Ch+var_5C]
test	ecx, ecx
jz	short loc_10006E2A
mov	edx, [esp+6Ch+var_58]
cmp	edx, [eax]
jnb	short loc_10006E26
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+60h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
mov	eax, ecx
jmp	short loc_10006E45
mov	eax, [eax]
push	eax
lea	ecx, [esp+70h+var_60]
push	ecx
push	0
call	SECITEM_AllocItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	short loc_10006E65
mov	eax, [ebx+4]
push	edi
push	ebp
push	eax
push	4
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jz	short loc_10006E79
test	ebx, ebx
jz	short loc_10006E65
push	0
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
			
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+60h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
mov	eax, [esp+6Ch+var_54]
lea	edx, [esp+6Ch+var_60]
push	edx
push	eax
call	SECITEM_ItemsAreEqual_Util
add	esp, 8
test	eax, eax
jz	short loc_10006EA6
pop	edi
pop	ebp
mov	eax, 1
pop	ebx
mov	ecx, [esp+60h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
mov	edi, [esi+0F8h]
mov	ecx, [esi+0F0h]
mov	ebp, [esi+0F4h]
lea	edi, [edi+7]
push	3
mov	[esp+70h+var_50], ecx
shr	edi, 3
xor	ebx, ebx
call	HASH_GetHashObjectByOidTag
add	esp, 4
test	eax, eax
jz	short loc_10006E65
mov	ecx, [esp+6Ch+var_5C]
test	ecx, ecx
jz	short loc_10006EEA
mov	edx, [esp+6Ch+var_58]
cmp	edx, [eax]
jb	loc_10006E05
mov	eax, ecx
jmp	short loc_10006F09
mov	eax, [eax]
push	eax
lea	ecx, [esp+70h+var_60]
push	ecx
push	0
call	SECITEM_AllocItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	loc_10006E65
mov	eax, [ebx+4]
push	edi
push	ebp
push	eax
push	3
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jnz	loc_10006E56
mov	edi, [esp+6Ch+var_54]
lea	edx, [esp+6Ch+var_60]
push	edx
push	edi
call	SECITEM_ItemsAreEqual_Util
add	esp, 8
test	eax, eax
jnz	loc_10006E8F
lea	eax, [esp+6Ch+var_60]
push	eax
push	1
push	esi
push	0
call	CERT_GetSubjectPublicKeyDigest
add	esp, 10h
test	eax, eax
jz	loc_10006E65
lea	ecx, [esp+6Ch+var_60]
push	ecx
push	edi
call	SECITEM_ItemsAreEqual_Util
mov	ecx, [esp+74h+var_4]
add	esp, 8
pop	edi
neg	eax
pop	ebp
sbb	eax, eax
pop	ebx
xor	ecx, esp
neg	eax
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
			
mov	eax, [esp+arg_0]
sub	esp, 30h
push	edi
push	eax
call	CERT_ExtractPublicKey
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10006F9F
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 30h
retn
mov	eax, [esp+34h+arg_4]
mov	ecx, [eax+18h]
mov	edx, [eax+1Ch]
mov	[esp+34h+var_C], ecx
mov	ecx, [eax+20h]
mov	[esp+34h+var_8], edx
mov	edx, [eax]
mov	[esp+34h+var_4], ecx
mov	ecx, [eax+4]
mov	[esp+34h+var_24], edx
mov	edx, [eax+8]
mov	[esp+34h+var_20], ecx
mov	ecx, [eax+0Ch]
mov	[esp+34h+var_1C], edx
mov	edx, [eax+10h]
mov	eax, [eax+14h]
mov	[esp+34h+var_10], eax
mov	eax, [esp+34h+arg_8]
mov	[esp+34h+var_18], ecx
mov	ecx, [eax]
push	esi
mov	[esp+38h+var_14], edx
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	[esp+38h+var_30], ecx
mov	ecx, [esp+38h+arg_C]
push	ecx
mov	[esp+3Ch+var_2C], edx
lea	edx, [esp+3Ch+var_30]
push	edi
push	edx
mov	[esp+44h+var_28], eax
call	CERT_VerifySignedDataWithPublicKey
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10007038
call	PORT_GetError_Util
cmp	eax, 0FFFFE00Ah
jz	short loc_1000702B
call	PORT_GetError_Util
cmp	eax, 0FFFFE0B0h
jnz	short loc_10007038
push	0FFFFE09Dh
call	PORT_SetError_Util
add	esp, 4
			
push	edi
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, esi
pop	esi
pop	edi
add	esp, 30h
retn
align 10h
push	ecx
mov	eax, [esp+4+arg_0]
test	eax, eax
jnz	short loc_1000705B
pop	ecx
retn
cmp	dword ptr [eax], 0
push	ebp
push	esi
push	edi
mov	[esp+10h+var_4], 0
jz	loc_1000713C
nop
mov	ebp, [eax]
mov	esi, [ebp+4]
lea	eax, [esi+30h]
push	eax
lea	eax, [ebx+30h]
push	eax
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	loc_10007122
cmp	dword ptr [esi+14h], 2
ja	loc_10007122
push	esi
push	ebx
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_100070C3
lea	ecx, [esi+18h]
push	ecx
lea	edx, [ebx+18h]
push	edx
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_10007122
add	esi, 24h
push	esi
lea	eax, [ebx+24h]
push	eax
jmp	short loc_10007116
push	esi
call	SECOID_FindOIDTag_Util
add	esp, 4
dec	eax
jz	short loc_100070F6
sub	eax, 2
jz	short loc_100070EE
dec	eax
jz	short loc_100070E6
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10007122
lea	edi, [ebx+60h]
lea	eax, [ebx+3Ch]
jmp	short loc_100070FC
lea	edi, [ebx+6Ch]
lea	eax, [ebx+48h]
jmp	short loc_100070FC
lea	edi, [ebx+78h]
lea	eax, [ebx+54h]
			
test	edi, edi
jz	short loc_10007122
lea	ecx, [esi+18h]
push	ecx
push	eax
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jnz	short loc_10007122
add	esi, 24h
push	esi
push	edi
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jz	short loc_10007150
			
mov	eax, [esp+10h+var_4]
mov	edx, [esp+10h+arg_0]
inc	eax
cmp	dword ptr [edx+eax*4], 0
mov	[esp+10h+var_4], eax
lea	eax, [edx+eax*4]
jnz	loc_10007070
push	0FFFFE07Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ecx
retn
align 10h
			
push	esi
push	eax
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_10007177
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_10007184
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
mov	eax, esi
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
push	eax
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_100071AB
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_100071BC
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_100071DD
cmp	dword ptr [esi], 0
jz	short loc_100071DD
mov	ecx, [esp+4+arg_4]
mov	edx, [esi+0Ch]
push	ecx
push	edx
call	CERT_CompareCerts
add	esp, 8
test	eax, eax
jz	short loc_100071DD
mov	eax, 1
pop	esi
retn
			
xor	eax, eax
pop	esi
retn
align 10h
sub	esp, 14h
push	ebx
push	esi
push	eax
mov	ebx, ecx
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_1000720D
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_1000721E
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_10007243
cmp	dword ptr [esi], 0
jz	short loc_10007243
mov	esi, [esi+0Ch]
test	esi, esi
jz	short loc_10007243
push	ebx
push	esi
call	CERT_CompareCerts
add	esp, 8
test	eax, eax
jz	short loc_10007243
pop	esi
mov	eax, 1
pop	ebx
add	esp, 14h
retn
			
mov	ecx, [esp+1Ch+arg_0]
push	ebp
push	edi
push	ecx
call	SECOID_FindOIDTag_Util
mov	edi, [ebx+0F8h]
mov	edx, [ebx+0F0h]
mov	esi, eax
mov	eax, [ebx+0F4h]
add	edi, 7
push	esi
mov	[esp+2Ch+var_C], edx
mov	[esp+2Ch+var_8], eax
shr	edi, 3
call	HASH_GetHashObjectByOidTag
add	esp, 8
test	eax, eax
jz	loc_10007360
mov	ecx, [eax]
push	ecx
push	0
push	0
call	SECITEM_AllocItem_Util
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_10007360
mov	edx, [esp+24h+var_8]
mov	eax, [ebp+4]
push	edi
push	edx
push	eax
push	esi
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jnz	loc_10007355
mov	eax, [esp+24h+arg_0]
add	eax, 24h
push	eax
push	ebp
call	SECITEM_CompareItem_Util
mov	edi, eax
push	1
neg	edi
push	ebp
sbb	edi, edi
call	SECITEM_FreeItem_Util
add	esp, 10h
inc	edi
jz	loc_10007360
mov	ecx, [ebx+54h]
mov	edx, [ebx+5Ch]
mov	edi, [ebx+58h]
push	esi
mov	[esp+28h+var_C], ecx
mov	[esp+28h+var_4], edx
call	HASH_GetHashObjectByOidTag
add	esp, 4
test	eax, eax
jz	short loc_10007360
mov	eax, [eax]
push	eax
push	0
push	0
call	SECITEM_AllocItem_Util
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_10007360
mov	ecx, [esp+24h+var_4]
mov	eax, [ebp+4]
push	ecx
push	edi
push	eax
push	esi
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jnz	short loc_10007355
mov	edx, [esp+24h+arg_0]
add	edx, 18h
push	edx
push	ebp
call	SECITEM_CompareItem_Util
mov	edi, eax
push	1
neg	edi
push	ebp
sbb	edi, edi
call	SECITEM_FreeItem_Util
add	esp, 10h
inc	edi
jz	short loc_10007360
pop	edi
pop	ebp
pop	esi
mov	eax, 1
pop	ebx
add	esp, 14h
retn
			
push	1
push	ebp
call	SECITEM_FreeItem_Util
add	esp, 8
			
mov	ecx, ebx
xor	ebp, ebp
call	sub_10006D00
test	eax, eax
jz	loc_1000746F
mov	eax, [esp+24h+arg_8]
mov	ecx, [esp+24h+arg_4]
push	0Bh
push	eax
push	ecx
push	ebx
call	CERT_FindCertIssuer
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	loc_1000746F
push	ebp
push	esi
push	edi
push	ebp
call	CERT_GetSubjectPublicKeyDigest
mov	edx, [edi+54h]
mov	ecx, [edi+5Ch]
mov	[esp+34h+var_10], eax
mov	eax, [edi+58h]
push	esi
mov	[esp+38h+var_C], edx
mov	[esp+38h+var_8], eax
mov	[esp+38h+var_4], ecx
call	HASH_GetHashObjectByOidTag
add	esp, 14h
test	eax, eax
jz	short loc_100073F8
mov	edx, [eax]
push	edx
push	ebp
push	ebp
call	SECITEM_AllocItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	short loc_100073F8
mov	ecx, [esp+24h+var_4]
mov	edx, [esp+24h+var_8]
mov	eax, [ebx+4]
push	ecx
push	edx
push	eax
push	esi
call	PK11_HashBuf
add	esp, 10h
test	eax, eax
jz	short loc_100073FA
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
			
xor	ebx, ebx
push	edi
call	CERT_DestroyCertificate
mov	edi, [esp+28h+var_10]
add	esp, 4
test	edi, edi
jz	short loc_10007452
test	ebx, ebx
jz	short loc_10007443
mov	esi, [esp+24h+arg_0]
lea	eax, [esi+24h]
push	eax
push	edi
call	SECITEM_CompareItem_Util
neg	eax
sbb	ebp, ebp
add	esi, 18h
push	esi
push	ebx
inc	ebp
call	SECITEM_CompareItem_Util
add	esp, 10h
mov	esi, eax
neg	esi
sbb	esi, esi
push	1
push	edi
inc	esi
call	SECITEM_FreeItem_Util
add	esp, 8
jmp	short loc_10007454
push	1
push	edi
mov	esi, ebp
call	SECITEM_FreeItem_Util
add	esp, 8
jmp	short loc_10007454
mov	esi, ebp
			
test	ebx, ebx
jz	short loc_10007463
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
test	ebp, ebp
jz	short loc_1000746F
test	esi, esi
jnz	loc_10007348
			
push	0FFFFE082h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
pop	esi
xor	eax, eax
pop	ebx
add	esp, 14h
retn
align 10h
public CERT_GetOCSPAuthorityInfoAccessLocation
			
			
sub	esp, 0Ch
push	ebx
push	ebp
xor	ebx, ebx
push	esi
push	ebx
push	ebx
push	ebx
mov	[esp+24h+var_C], ebx
xor	ebp, ebp
call	SECITEM_AllocItem_Util
mov	esi, eax
add	esp, 0Ch
mov	[esp+18h+var_4], esi
cmp	esi, ebx
jz	loc_100075B9
mov	eax, [esp+18h+arg_0]
push	esi
push	5Dh
push	eax
call	CERT_FindCertExtension
add	esp, 0Ch
cmp	eax, 0FFFFFFFFh
jnz	short loc_100074ED
push	0FFFFE075h
call	PORT_SetError_Util
add	esp, 4
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 0Ch
retn
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jz	loc_100075AE
push	edi
push	esi
push	eax
call	CERT_DecodeAuthInfoAccessExtension
mov	edi, eax
add	esp, 8
cmp	edi, ebx
jz	loc_1000759A
cmp	[edi], ebx
jz	short loc_1000754D
mov	esi, edi
mov	ecx, [esi]
push	ecx
call	SECOID_FindOIDTag_Util
add	esp, 4
cmp	eax, 82h
jnz	short loc_1000753C
mov	edx, [esi]
mov	eax, [edx+18h]
mov	[esp+1Ch+var_C], eax
inc	ebx
cmp	[edi+ebx*4], ebp
lea	esi, [edi+ebx*4]
jnz	short loc_10007521
mov	eax, [esp+1Ch+var_C]
test	eax, eax
jnz	short loc_1000755C
			
push	0FFFFE075h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000759A
push	0
push	7
push	eax
call	sub_100427C0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_1000754D
mov	ecx, [esi+8]
inc	ecx
push	ecx
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_1000759A
mov	edx, [esi+8]
mov	eax, [esi+4]
push	edx		
push	eax		
push	ebp		
call	memcpy
mov	ecx, [esi+8]
add	esp, 0Ch
mov	byte ptr [ecx+ebp], 0
			
mov	edx, [esp+1Ch+var_8]
push	0
push	edx
call	PORT_FreeArena_Util
mov	esi, [esp+24h+var_4]
add	esp, 8
pop	edi
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 0Ch
retn
align 10h
cmp	[esp+arg_8], 0
push	esi
jz	short loc_10007620
mov	eax, [esp+4+arg_0]
push	eax
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_100075F2
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_10007603
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_10007620
cmp	dword ptr [esi], 0
jz	short loc_10007620
mov	ecx, [esp+4+arg_C]
mov	dword ptr [ecx], 1
mov	edx, [esi+4]
push	edx
call	PORT_Strdup_Util
add	esp, 4
pop	esi
retn
			
push	ebx
mov	ebx, [esp+8+arg_4]
push	ebp
mov	ebp, [esp+0Ch+arg_C]
push	ebx
mov	dword ptr [ebp+0], 0
call	CERT_GetOCSPAuthorityInfoAccessLocation
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000767B
mov	eax, dword_100BA008
push	edi
push	eax
call	ds:PR_EnterMonitor
mov	ecx, dword_100BA008
mov	edi, dword_100BA034
push	ecx
call	ds:PR_ExitMonitor
add	esp, 8
test	edi, edi
jz	short loc_1000767A
push	ebx
call	edi 
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000767A
mov	dword ptr [ebp+0], 1
			
pop	edi
pop	ebp
pop	ebx
mov	eax, esi
pop	esi
retn
align 10h
			
sub	esp, 8
push	eax
lea	ecx, [esp+0Ch+var_8]
push	ecx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
jnz	short loc_100076D0
push	0FFFFE00Ch
call	PORT_SetError_Util
mov	edx, [esp+0Ch+var_4]
add	esp, 4
cmp	edx, [esp+8+arg_4]
jl	short loc_100076CD
jg	short loc_100076C7
mov	eax, [esp+8+var_8]
cmp	eax, [esp+8+arg_0]
jbe	short loc_100076CD
xor	eax, eax
add	esp, 8
retn
			
or	eax, 0FFFFFFFFh
add	esp, 8
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, [ecx]
sub	eax, 0
jz	short loc_10007729
dec	eax
jz	short loc_10007713
dec	eax
jz	short loc_10007702
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0FFFFE07Eh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	eax, [esp+arg_8]
mov	edx, [esp+arg_4]
push	eax
mov	eax, [ecx+4]
push	edx
call	sub_10007690
add	esp, 8
retn
xor	eax, eax
retn
align 10h
			
mov	ecx, [eax+14h]
mov	eax, [ecx]
sub	eax, 0
jz	short loc_10007778
dec	eax
jz	short loc_10007762
dec	eax
jz	short loc_10007751
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0FFFFE07Eh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	edx, [esp+arg_4]
mov	eax, [esp+arg_0]
push	edx
push	eax
mov	eax, [ecx+4]
call	sub_10007690
add	esp, 8
retn
xor	eax, eax
retn
align 10h
			
push	ebp
push	esi
mov	esi, [esp+8+arg_0]
push	edi
test	esi, esi
jz	loc_10007884
mov	eax, [esp+0Ch+arg_14]
test	eax, eax
jz	loc_10007884
mov	ebp, [esp+0Ch+arg_10]
test	ebp, ebp
jz	loc_10007884
mov	edi, [esp+0Ch+arg_18]
test	edi, edi
jz	loc_10007884
mov	dword ptr [ebp+0], 0FFFFFFFFh
mov	dword ptr [eax], 0
mov	dword ptr [edi], 0
mov	eax, dword_100BA008
push	ebx
push	eax
call	ds:PR_EnterMonitor
push	esi
mov	ebx, offset dword_100BA020
call	sub_10004B10
add	esp, 8
mov	esi, eax
pop	ebx
test	esi, esi
jz	loc_1000786E
call	ds:PR_Now
cmp	[esi+14h], edx
jl	short loc_1000780F
jg	short loc_100077FE
cmp	[esi+10h], eax
jbe	short loc_1000780F
cmp	dword ptr [esi+18h], 0
mov	eax, 1
jz	short loc_10007811
cmp	dword ptr [esi+1Ch], 2
jnz	short loc_10007811
			
xor	eax, eax
			
neg	eax
sbb	eax, eax
add	eax, 2
mov	[edi], eax
cmp	dword ptr [esi+18h], 0
jz	short loc_1000784A
mov	eax, [esp+0Ch+arg_8]
mov	ecx, [esp+0Ch+arg_4]
push	eax
push	ecx
add	esi, 1Ch
push	esi
call	sub_100076E0
add	esp, 0Ch
mov	[ebp+0], eax
test	eax, eax
jz	short loc_1000786E
call	PORT_GetError_Util
mov	edx, [esp+0Ch+arg_14]
mov	[edx], eax
jmp	short loc_1000786E
cmp	eax, 1
jnz	short loc_10007865
cmp	[esp+0Ch+arg_C], 0
jnz	short loc_10007865
cmp	dword_100BA030,	eax
jnz	short loc_10007865
mov	dword ptr [ebp+0], 0
			
mov	eax, [esi+24h]
mov	ecx, [esp+0Ch+arg_14]
mov	[ecx], eax
			
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebp
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
align 10h
			
mov	eax, dword_100BA008
push	esi
push	eax
call	ds:PR_EnterMonitor
mov	edx, dword_100BA008
xor	ecx, ecx
cmp	dword_100BA030,	ecx
push	edx
setz	cl
mov	esi, ecx
call	ds:PR_ExitMonitor
add	esp, 8
mov	eax, esi
pop	esi
retn
align 10h
push	esi
push	edi
mov	edi, [esp+0Ch]
mov	esi, [edi+8]
mov	dword ptr [edi], 0
test	esi, esi
jnz	short loc_100078E9
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esi+4]
test	eax, eax
jz	short loc_100078F9
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10007909
push	eax
call	PORT_Free_Util
add	esp, 4
push	esi
call	PORT_Free_Util
push	edi
mov	dword ptr [edi+8], 0
call	PORT_Free_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	edi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_10007941
or	eax, 0FFFFFFFFh
retn
push	esi
push	0Ch
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10007969
push	10h
call	PORT_ZAlloc_Util
add	esp, 4
push	esi
test	eax, eax
jnz	short loc_1000796E
call	PORT_Free_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
push	edi
mov	dword ptr [esi+4], offset loc_100078D0
mov	[esi+8], eax
call	sub_1003D9B0
add	esp, 8
xor	eax, eax
pop	esi
retn
align 10h
public CERT_SetOCSPDefaultResponder
push	ecx
push	ebx
push	esi
push	edi
mov	edi, [esp+10h+arg_0]
test	edi, edi
jz	loc_10007ABE
mov	ebx, [esp+10h+arg_4]
test	ebx, ebx
jz	loc_10007ABE
mov	esi, [esp+10h+Str]
test	esi, esi
jz	loc_10007ABE
push	ebp
push	esi		
push	edi		
call	CERT_FindCertByNickname
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_100079E2
push	eax		
push	esi		
call	PK11_FindCertFromNickname
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_100079E2
pop	ebp
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
			
push	ebx
call	PORT_Strdup_Util
push	esi
mov	ebx, eax
call	PORT_Strdup_Util
add	esp, 8
mov	esi, eax
mov	[esp+14h+arg_0], esi
test	ebx, ebx
jz	loc_10007A83
test	esi, esi
jz	short loc_10007A83
mov	eax, edi
call	sub_10007160
mov	esi, eax
test	esi, esi
jnz	short loc_10007A28
call	sub_10007930
mov	[esp+14h+var_4], eax
test	eax, eax
jnz	short loc_10007A8D
mov	eax, edi
call	sub_10007160
mov	esi, eax
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10007A38
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+4]
test	eax, eax
jz	short loc_10007A48
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+14h+arg_0]
mov	[esi+8], eax
mov	eax, [esi+0Ch]
mov	[esi+4], ebx
test	eax, eax
jz	short loc_10007A72
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	[esi+0Ch], ebp
call	CERT_ClearOCSPCache
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
pop	ecx
retn
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
pop	ecx
retn
			
mov	[esp+14h+var_4], 0FFFFFFFFh
jmp	short loc_10007A91
mov	esi, [esp+14h+arg_0]
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
test	ebx, ebx
jz	short loc_10007AA7
push	ebx
call	PORT_Free_Util
add	esp, 4
test	esi, esi
jz	short loc_10007AB4
push	esi
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+14h+var_4]
pop	ebp
pop	edi
pop	esi
pop	ebx
pop	ecx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
align 10h
public CERT_EnableOCSPDefaultResponder
sub	esp, 8
push	ebx
mov	ebx, [esp+0Ch+arg_0]
test	ebx, ebx
jnz	short loc_10007B01
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	esi
push	ebx
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_10007B18
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_10007B29
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_10007B36
cmp	dword ptr [esi+4], 0
jz	short loc_10007B36
mov	eax, [esi+8]
test	eax, eax
jnz	short loc_10007B4C
			
push	0FFFFE080h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	edi
push	eax		
push	ebx		
call	CERT_FindCertByNickname
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10007B70
push	eax		
mov	eax, [esi+8]
push	eax		
call	PK11_FindCertFromNickname
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10007BBE
lea	ecx, [esp+14h+var_8]
push	ecx
push	0
push	0
push	0
push	1
push	edi
push	ebx
call	CERT_VerifyCertificateNow
add	esp, 1Ch
test	eax, eax
jnz	short loc_10007BB1
mov	eax, [esp+14h+var_8]
and	eax, 45Fh
xor	ecx, ecx
or	eax, ecx
jz	short loc_10007BB1
mov	[esi+0Ch], edi
call	CERT_ClearOCSPCache
pop	edi
mov	dword ptr [esi], 1
pop	esi
xor	eax, eax
pop	ebx
add	esp, 8
retn
			
push	0FFFFE09Ch
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
align 10h
public CERT_DisableOCSPDefaultResponder
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_10007BEB
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
retn
push	edi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jnz	short loc_10007BFA
pop	edi
retn
push	esi
push	edi
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_10007C11
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_10007C28
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jnz	short loc_10007C28
pop	esi
or	eax, 0FFFFFFFFh
pop	edi
retn
			
mov	eax, [esi+0Ch]
test	eax, eax
jz	short loc_10007C44
push	eax
mov	dword ptr [esi+0Ch], 0
call	CERT_DestroyCertificate
add	esp, 4
call	CERT_ClearOCSPCache
mov	dword ptr [esi], 0
pop	esi
xor	eax, eax
pop	edi
retn
align 10h
public CERT_ForcePostMethodForOCSP
mov	eax, dword_100BA008
test	eax, eax
jnz	short loc_10007C6A
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	eax
call	ds:PR_EnterMonitor
mov	ecx, dword_100BA008
mov	eax, [esp+4+arg_0]
push	ecx
mov	dword_100BA038,	eax
call	ds:PR_ExitMonitor
add	esp, 8
xor	eax, eax
retn
align 10h
public CERT_GetOCSPResponseStatus
			
			
mov	eax, [esp+arg_0]
mov	eax, [eax+10h]
test	eax, eax
jnz	short loc_10007C9C
retn
dec	eax
cmp	eax, 5		
ja	short loc_10007CFE 
jmp	ds:off_10007D10[eax*4] 
			
push	0FFFFE078h	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
push	0FFFFE079h	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
push	0FFFFE07Ah	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
push	0FFFFE07Bh	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
push	0FFFFE07Ch	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
			
push	0FFFFE07Dh	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
dd offset loc_10007CBA	
dd offset loc_10007CCB
dd offset loc_10007CFE
dd offset loc_10007CDC
dd offset loc_10007CED
align 10h
			
sub	esp, 8
push	ebx
push	ebp
mov	ebp, [esp+10h+arg_8]
push	esi
push	edi
mov	edi, eax
test	ebp, ebp
jz	short loc_10007D48
mov	dword ptr [ebp+0], 0
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
mov	ebx, [esp+1Ch+arg_0]
push	edi
call	sub_10004B10
mov	ebx, [esp+20h+arg_4]
add	esp, 8
mov	esi, eax
mov	[esp+18h+arg_8], esi
test	ebx, ebx
jnz	short loc_10007D9F
test	esi, esi
jz	short loc_10007DA3
cmp	[esi+18h], ebx
jz	short loc_10007D9F
mov	eax, [esi+1Ch]
cmp	eax, 1
jz	short loc_10007D85
cmp	eax, 2
jnz	short loc_10007D9F
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
			
test	esi, esi
jnz	short loc_10007E1C
mov	eax, edi
test	ebp, ebp
jz	short loc_10007DE4
mov	dword ptr [ebp+0], 1
mov	ebp, [esp+18h+arg_0]
lea	ecx, [esp+18h+arg_8]
push	ecx
push	ebp
mov	ebx, eax
call	sub_10004D50
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10007E12
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
call	sub_10005680
test	eax, eax
jnz	short loc_10007DB0
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
mov	esi, [esp+18h+arg_8]
mov	ebx, [esp+18h+arg_4]
jmp	short loc_10007E20
mov	ebp, [esp+18h+arg_0]
test	ebx, ebx
jz	short loc_10007E85
lea	eax, [ebx+18h]
push	eax
lea	ecx, [esp+1Ch+var_8]
push	ecx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
cmp	byte ptr [esi+28h], 0
jz	short loc_10007E53
test	eax, eax
jnz	short loc_10007EA8
mov	edx, [esi+34h]
cmp	edx, [esp+18h+var_4]
jg	short loc_10007EA8
jl	short loc_10007E53
mov	eax, [esi+30h]
cmp	eax, [esp+18h+var_8]
jnb	short loc_10007EA8
			
push	ebx
call	sub_10004E00
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10007EA8
mov	eax, esi
mov	ecx, ebp
call	sub_10004B80
mov	ecx, dword_100BA008
push	ecx
call	ds:PR_ExitMonitor
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
call	PORT_GetError_Util
mov	[esi+24h], eax
cmp	dword ptr [esi+18h], 0
jz	short loc_10007EA8
mov	edx, [esi+18h]
push	0
push	edx
call	PORT_FreeArena_Util
add	esp, 8
mov	dword ptr [esi+18h], 0
			
push	esi
call	sub_10004EC0
mov	eax, ebp
call	sub_10004BF0
mov	eax, dword_100BA008
push	eax
call	ds:PR_ExitMonitor
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
sub	esp, 110h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+110h+var_4], eax
mov	eax, [esp+110h+arg_0]
push	ebp
mov	ebp, [esp+114h+arg_4]
push	edi
mov	[esp+118h+var_108], eax
mov	edi, ecx
mov	[esp+118h+var_110], 0
test	ebp, ebp
jz	loc_10008061
cmp	byte ptr [ebp+0], 0
jz	loc_10008061
mov	eax, ebp
lea	edx, [eax+1]
lea	esp, [esp+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10007F20
sub	eax, edx
push	ebx
mov	ebx, eax
cmp	byte ptr [ebx+ebp-1], 2Fh
mov	[esp+11Ch+var_10C], ebx
jz	short loc_10007F3F
mov	[esp+11Ch+var_110], 1
push	esi
mov	esi, [edi+8]
lea	ecx, [esi+2]
mov	eax, 0AAAAAAABh
mul	ecx
shr	edx, 1
add	edx, edx
add	edx, edx
cmp	edx, 0FFh
ja	loc_10007FEE
push	100h		
lea	edx, [esp+124h+Dst]
push	0		
push	edx		
call	memset
mov	ecx, [edi+4]
lea	eax, [esp+12Ch+Dst]
push	eax
push	esi
push	ecx
call	PL_Base64Encode
add	esp, 18h
xor	esi, esi
cmp	[esp+120h+Dst],	0
lea	edi, [esp+120h+Dst]
jz	short loc_10007FC2
nop
mov	bl, [edi]
movsx	edx, bl
push	edx		
call	ds:isspace
add	esp, 4
test	eax, eax
jnz	short loc_10007FB8
cmp	bl, 2Bh
jz	short loc_10007FB5
cmp	bl, 2Fh
jz	short loc_10007FB5
cmp	bl, 3Dh
jz	short loc_10007FB5
inc	esi
jmp	short loc_10007FB8
			
add	esi, 3
			
inc	edi
cmp	byte ptr [edi],	0
jnz	short loc_10007F90
mov	ebx, [esp+120h+var_10C]
mov	eax, [esp+120h+var_110]
mov	ecx, [esp+120h+var_108]
add	esi, ebx
lea	eax, [esi+eax+1]
push	eax
test	ecx, ecx
jz	short loc_10007FE0
push	ecx
call	PORT_ArenaAlloc_Util
add	esp, 8
jmp	short loc_10007FE8
call	PORT_Alloc_Util
add	esp, 4
mov	ebx, eax
test	ebx, ebx
jnz	short loc_10008009
xor	eax, eax
pop	esi
pop	ebx
pop	edi
pop	ebp
mov	ecx, [esp+110h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 110h
retn
mov	edx, ebx
mov	eax, ebp
sub	edx, ebp
nop
mov	cl, [eax]
mov	[edx+eax], cl
inc	eax
test	cl, cl
jnz	short loc_10008010
mov	eax, [esp+120h+var_10C]
add	eax, ebx
cmp	eax, ebx
jbe	short loc_10008034
cmp	[esp+120h+var_110], 0
jz	short loc_10008034
mov	edx, 2Fh
mov	[eax], dx
inc	eax
			
push	eax
lea	eax, [esp+124h+Dst]
push	eax
call	sub_10006BE0
mov	edi, [esp+128h+var_108]
push	edi
xor	eax, eax
call	sub_10006C70
add	esp, 0Ch
mov	esi, eax
test	edi, edi
jnz	short loc_1000805D
push	ebx
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
jmp	short loc_10007FF0
			
mov	ecx, [esp+118h+var_4]
pop	edi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 110h
retn
align 10h
public CERT_PostOCSPRequest
mov	eax, [esp+arg_0]
push	ebx
mov	ebx, [esp+4+arg_4]
push	eax
mov	eax, [esp+8+arg_8]
call	sub_10006C70
add	esp, 4
pop	ebx
retn
align 10h
			
sub	esp, 10h
mov	edx, [esp+10h+arg_4]
mov	ecx, [edx+18h]
push	ebx
push	ebp
xor	ebp, ebp
mov	[esp+18h+var_10], ebp
mov	eax, [ecx]
xor	ebx, ebx
dec	eax
push	esi
jz	short loc_100080DE
dec	eax
jz	short loc_100080D3
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
xor	esi, esi
add	ecx, 4
mov	[esp+1Ch+arg_4], ecx
jmp	short loc_100080EA
add	edx, 0Ch
mov	esi, 1
mov	[esp+1Ch+arg_4], edx
mov	eax, [esp+1Ch+arg_8]
mov	ecx, [eax+24h]
push	edi
mov	edi, [esp+20h+arg_0]
cmp	ecx, ebp
jz	short loc_10008128
cmp	[ecx], ebx
jz	short loc_10008108
mov	eax, ecx
add	eax, 4
inc	ebp
cmp	[eax], ebx
jnz	short loc_10008100
push	0
push	0
push	0
lea	edx, [esp+2Ch+var_10]
push	edx
push	ecx
push	ebp
push	0Ah
push	edi
call	CERT_ImportCerts
add	esp, 20h
test	eax, eax
jnz	loc_1000825B
test	esi, esi
jz	short loc_100081A8
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_1000825B
mov	eax, [esp+20h+arg_4]
push	eax
push	offset dword_100A1E38
lea	ecx, [esp+28h+var_C]
push	ecx
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_10008188
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	short loc_10008198
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
jmp	loc_1000825B
lea	edx, [esp+20h+var_C]
push	edx
push	edi
call	CERT_FindCertByName
add	esp, 8
mov	ebx, eax
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
jmp	loc_1000825B
push	edi
xor	esi, esi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_100081BE
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_100081CF
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_100081EB
cmp	[esi], ebx
jz	short loc_100081EB
mov	esi, [esi+0Ch]
test	esi, esi
jz	short loc_100081EB
mov	eax, [esp+20h+arg_4]
push	eax
call	sub_10006DA0
add	esp, 4
test	eax, eax
jnz	short loc_10008204
			
mov	esi, [esp+20h+arg_C]
test	esi, esi
jz	short loc_1000820F
mov	ecx, [esp+20h+arg_4]
push	ecx
call	sub_10006DA0
add	esp, 4
test	eax, eax
jz	short loc_1000820F
push	esi
call	CERT_DupCertificate
mov	ebx, eax
add	esp, 4
			
xor	edi, edi
test	ebx, ebx
jnz	short loc_1000825B
cmp	edi, ebp
jge	short loc_1000824A
mov	edx, [esp+20h+arg_4]
mov	eax, [esp+20h+var_10]
mov	esi, [eax+edi*4]
push	edx
call	sub_10006DA0
add	esp, 4
test	eax, eax
jz	short loc_10008243
mov	ecx, [esp+20h+var_10]
mov	edx, [ecx+edi*4]
push	edx
call	CERT_DupCertificate
add	esp, 4
mov	ebx, eax
inc	edi
test	ebx, ebx
jz	short loc_10008215
jmp	short loc_1000825B
test	ebx, ebx
jnz	short loc_1000825B
push	0FFFFE073h
call	PORT_SetError_Util
add	esp, 4
			
mov	eax, [esp+20h+var_10]
pop	edi
test	eax, eax
jz	short loc_1000826E
push	ebp
push	eax
call	CERT_DestroyCertArray
add	esp, 8
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 10h
retn
align 10h
public CERT_VerifyOCSPResponseSignature
			
sub	esp, 8
mov	eax, [esp+8+arg_0]
mov	eax, [eax+14h]
push	ebx
push	edi
mov	edi, [eax+1Ch]
mov	ebx, [edi+0Ch]
mov	[esp+10h+arg_0], edi
test	eax, eax
jz	short loc_100082A8
cmp	dword ptr [eax+0Ch], 83h
jnz	short loc_100082A8
add	edi, 10h
jnz	short loc_100082BE
			
push	0FFFFE09Dh
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
cmp	dword ptr [edi+2Ch], 0
push	esi
jz	short loc_10008301
cmp	dword ptr [edi+30h], 0
jnz	short loc_100082EB
mov	esi, [esp+14h+arg_C]
test	esi, esi
jz	short loc_100082F7
mov	ecx, [edi+28h]
push	ecx
call	CERT_DupCertificate
add	esp, 4
mov	[esi], eax
mov	eax, [edi+30h]
pop	esi
pop	edi
pop	ebx
add	esp, 8
retn
mov	edx, [edi+34h]
push	edx
call	PORT_SetError_Util
add	esp, 4
mov	eax, [edi+30h]
pop	esi
pop	edi
pop	ebx
add	esp, 8
retn
mov	eax, [esp+14h+arg_10]
push	ebp
mov	ebp, [esp+18h+arg_4]
push	eax
push	edi
push	ebx
push	ebp
call	sub_100080A0
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10008341
or	ebx, 0FFFFFFFFh
call	PORT_GetError_Util
cmp	eax, 0FFFFE073h
jnz	loc_100083C7
push	0FFFFE090h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_100083C7
add	ebx, 1Ch
lea	ecx, [esp+18h+var_8]
push	ebx
push	ecx
mov	dword ptr [edi+2Ch], 1
call	DER_GeneralizedTimeToTime_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_100083C7
push	esi
push	ebp
call	sub_10007190
add	esp, 8
test	eax, eax
jnz	short loc_100083B1
push	eax
push	esi
call	CERT_IsCACert
mov	edx, [esp+20h+arg_8]
mov	ecx, [esp+20h+var_4]
push	ebx
push	edx
mov	edx, [esp+28h+var_8]
neg	eax
push	1
push	ecx
sbb	eax, eax
push	edx
neg	eax
add	eax, 0Ah
push	eax
push	1
push	esi
push	ebp
call	sub_1000BC50
mov	ebx, eax
add	esp, 2Ch
test	ebx, ebx
jz	short loc_100083B1
push	0FFFFE090h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_100083C7
			
mov	eax, [esp+18h+arg_8]
mov	ecx, [esp+18h+arg_0]
push	eax
push	ecx
push	edi
push	esi
call	sub_10006F80
add	esp, 10h
mov	ebx, eax
			
cmp	dword ptr [edi+2Ch], 0
pop	ebp
jz	short loc_100083D1
mov	[edi+30h], ebx
test	ebx, ebx
jz	short loc_100083F3
call	PORT_GetError_Util
mov	[edi+34h], eax
test	esi, esi
jz	short loc_10008409
push	esi
call	CERT_DestroyCertificate
add	esp, 4
pop	esi
pop	edi
mov	eax, ebx
pop	ebx
add	esp, 8
retn
mov	[edi+28h], esi
mov	edi, [esp+14h+arg_C]
test	edi, edi
jz	short loc_10008409
push	esi
call	CERT_DupCertificate
mov	[edi], eax
add	esp, 4
			
pop	esi
pop	edi
mov	eax, ebx
pop	ebx
add	esp, 8
retn
align 10h
			
mov	eax, [eax+14h]
sub	esp, 8
cmp	dword ptr [eax], 1
jnz	short loc_10008474
mov	eax, [eax+4]
push	eax
lea	ecx, [esp+0Ch+var_8]
push	ecx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
jnz	short loc_10008462
push	0FFFFE00Ch
call	PORT_SetError_Util
mov	edx, [esp+0Ch+var_4]
add	esp, 4
cmp	edx, [esp+8+arg_4]
jg	short loc_10008474
jl	short loc_10008462
mov	eax, [esp+8+var_8]
cmp	eax, [esp+8+arg_0]
ja	short loc_10008474
			
call	PORT_GetError_Util
cmp	eax, 0FFFFE00Ch
jnz	short loc_10008474
xor	eax, eax
add	esp, 8
retn
			
push	0FFFFE084h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
add	esp, 8
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+14h]
sub	esp, 18h
cmp	dword ptr [ecx], 2
push	esi
mov	esi, [eax+4]
jnz	short loc_100084AA
xor	eax, eax
pop	esi
add	esp, 18h
retn
add	eax, 18h
push	eax
lea	edx, [esp+20h+var_18]
push	edx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
jnz	loc_100085FB
mov	eax, [esp+1Ch+var_14]
mov	ecx, [esp+1Ch+var_18]
push	eax
mov	eax, [esp+20h+arg_4]
push	ecx
mov	ecx, [esp+24h+arg_8]
push	esi
call	sub_100071F0
add	esp, 0Ch
cmp	eax, 1
jz	short loc_100084EB
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 18h
retn
push	ebx
push	ebp
push	edi
call	ds:PR_Now
mov	edi, eax
mov	eax, dword_100BA03C
mov	ebp, edx
mov	edx, 0F4240h
mul	edx
mov	ebx, eax
mov	esi, edx
mov	ecx, ebx
add	ecx, edi
mov	eax, esi
mov	[esp+28h+var_10], edi
mov	edi, [esp+28h+var_14]
adc	eax, ebp
cmp	edi, eax
jg	loc_100085E8
mov	eax, [esp+28h+var_18]
jl	short loc_1000852E
cmp	eax, ecx
ja	loc_100085E8
cmp	[esp+28h+arg_10], edi
jl	loc_100085E8
jg	short loc_10008544
cmp	[esp+28h+arg_C], eax
jb	loc_100085E8
mov	ecx, [esp+28h+arg_0]
mov	ecx, [ecx+24h]
test	ecx, ecx
jz	short loc_100085A9
push	ecx
lea	edx, [esp+2Ch+var_8]
push	edx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
jnz	loc_100085F8
mov	edi, [esp+28h+var_8]
mov	edx, [esp+28h+var_4]
mov	ecx, edi
add	ecx, ebx
mov	eax, edx
adc	eax, esi
cmp	eax, ebp
jl	short loc_1000858F
jg	short loc_10008581
cmp	ecx, [esp+28h+var_10]
jb	short loc_1000858F
cmp	[esp+28h+arg_10], edx
jl	short loc_100085DE
jg	short loc_1000858F
cmp	[esp+28h+arg_C], edi
jbe	short loc_100085DE
			
mov	eax, [esp+28h+var_10]
push	ebp
push	eax
mov	eax, [esp+30h+arg_0]
call	sub_10008420
add	esp, 8
pop	edi
pop	ebp
pop	ebx
pop	esi
add	esp, 18h
retn
mov	esi, eax
call	ds:PR_Now
add	esi, 1DD76000h
adc	edi, 14h
cmp	edx, edi
jl	short loc_100085DE
jg	short loc_100085C4
cmp	eax, esi
jbe	short loc_100085DE
mov	ecx, [esp+28h+var_10]
mov	eax, [esp+28h+arg_0]
push	ebp
push	ecx
call	sub_10008420
add	esp, 8
pop	edi
pop	ebp
pop	ebx
pop	esi
add	esp, 18h
retn
			
pop	edi
pop	ebp
pop	ebx
xor	eax, eax
pop	esi
add	esp, 18h
retn
			
push	0FFFFE083h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
pop	ebp
pop	ebx
pop	esi
add	esp, 18h
retn
			
push	esi
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_10008648
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword_100BA010,	0
jl	short loc_10008638
mov	ecx, [esp+4+arg_8]
mov	eax, [esp+4+arg_0]
push	ecx
push	esi
push	offset dword_100BA020
call	sub_10007D30
add	esp, 0Ch
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 4
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_4]
mov	ecx, [eax+14h]
mov	edx, [ecx+1Ch]
sub	esp, 8
push	esi
mov	esi, [edx+0Ch]
test	esi, esi
jnz	short loc_1000866D
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
lea	eax, [esi+1Ch]
push	eax
lea	ecx, [esp+10h+var_8]
push	ecx
call	DER_GeneralizedTimeToTime_Util
add	esp, 8
test	eax, eax
jnz	short loc_100086C1
mov	edx, [esi+28h]
push	ebx
mov	ebx, [esp+10h+arg_8]
push	edx
call	sub_10007050
add	esp, 4
mov	esi, eax
pop	ebx
test	esi, esi
jz	short loc_10008665
mov	eax, [esp+0Ch+var_4]
mov	ecx, [esp+0Ch+var_8]
mov	edx, [esp+0Ch+arg_C]
push	eax
mov	eax, [esp+10h+arg_0]
push	ecx
push	edx
push	eax
push	esi
call	sub_10008490
add	esp, 14h
test	eax, eax
jnz	short loc_100086C1
mov	ecx, [esp+0Ch+arg_18]
mov	[ecx], esi
			
pop	esi
add	esp, 8
retn
align 10h
push	ecx
mov	ecx, [esp+4+arg_C]
mov	edx, [esp+4+arg_8]
push	ebx
mov	ebx, [esp+8+arg_10]
push	ebp
push	esi
push	edi
mov	edi, [esp+14h+arg_14]
lea	eax, [esp+14h+var_4]
push	eax
mov	eax, [esp+18h+arg_4]
push	edi
push	ebx
push	ecx
mov	ecx, [esp+24h+arg_0]
push	edx
push	eax
xor	ebp, ebp
push	ecx
mov	[esp+30h+var_4], ebp
call	sub_10008650
mov	esi, eax
add	esp, 1Ch
test	esi, esi
jnz	short loc_10008756
mov	edx, [esp+14h+var_4]
mov	ecx, [edx+14h]
mov	eax, [ecx]
sub	eax, esi
jz	short loc_10008752
dec	eax
jz	short loc_10008743
dec	eax
jz	short loc_10008731
push	0FFFFE081h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_10008754
push	0FFFFE07Eh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_10008754
mov	eax, [ecx+4]
push	edi
push	ebx
call	sub_10007690
add	esp, 8
jmp	short loc_10008754
xor	eax, eax
			
mov	esi, eax
mov	edi, [esp+14h+arg_18]
test	edi, edi
jz	short loc_100087A8
mov	eax, dword_100BA008
push	eax
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword_100BA010,	ebp
jl	short loc_1000878E
mov	ecx, [esp+14h+var_4]
mov	eax, [esp+14h+arg_8]
push	edi
push	ecx
push	offset dword_100BA020
call	sub_10007D30
add	esp, 0Ch
mov	ebp, eax
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
mov	eax, [esp+18h+arg_1C]
add	esp, 4
test	eax, eax
jz	short loc_100087A8
mov	[eax], ebp
			
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
			
mov	eax, dword_100BA008
push	esi
push	eax
xor	esi, esi
call	ds:PR_EnterMonitor
add	esp, 4
cmp	dword_100BA010,	esi
jl	short loc_100087E3
mov	ecx, [esp+4+arg_4]
mov	eax, [esp+4+arg_0]
push	ecx
push	esi
push	offset dword_100BA020
call	sub_10007D30
add	esp, 0Ch
mov	esi, eax
mov	edx, dword_100BA008
push	edx
call	ds:PR_ExitMonitor
add	esp, 4
mov	eax, esi
pop	esi
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	ebx, eax
xor	esi, esi
xor	ebp, ebp
test	ebx, ebx
jz	loc_100088EE
cmp	byte ptr [ebx],	0
jz	loc_100088EE
mov	eax, [esp+0Ch+arg_4]
push	83h
push	eax
call	CERT_AddOCSPAcceptableResponses
add	esp, 8
test	eax, eax
jnz	loc_100088EE
mov	ecx, [esp+0Ch+arg_8]
mov	edx, [esp+0Ch+arg_4]
push	ecx
push	edx
push	eax
call	CERT_EncodeOCSPRequest
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	loc_100088EE
mov	ecx, offset aGet 
mov	eax, edi
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10008878
test	dl, dl
jz	short loc_10008874
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10008878
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10008858
xor	eax, eax
jmp	short loc_1000887D
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_10008893
mov	eax, [esp+0Ch+arg_0]
push	ebx
push	eax
mov	ecx, esi
call	sub_10007ED0
add	esp, 8
jmp	short loc_100088D8
mov	ecx, offset aPost 
mov	eax, edi
lea	ebx, [ebx+0]
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_100088C0
test	dl, dl
jz	short loc_100088BC
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_100088C0
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_100088A0
xor	eax, eax
jmp	short loc_100088C5
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_100088EE
mov	ecx, [esp+0Ch+arg_0]
push	ecx
mov	eax, esi
call	sub_10006C70
add	esp, 4
mov	ebp, eax
test	ebp, ebp
jz	short loc_100088EE
mov	eax, [esp+0Ch+arg_C]
test	eax, eax
jz	short loc_100088EE
mov	edx, [esp+0Ch+arg_4]
mov	[eax], edx
jmp	short loc_100088FF
			
mov	eax, [esp+0Ch+arg_4]
test	eax, eax
jz	short loc_100088FF
push	eax
call	CERT_DestroyOCSPRequest
add	esp, 4
			
test	esi, esi
jz	short loc_1000890E
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
push	esi
push	edi
call	sub_10005A70
mov	esi, eax
test	esi, esi
jz	short loc_10008962
mov	eax, [esp+8+arg_14]
mov	ecx, [esp+8+arg_8]
mov	edx, [esp+8+arg_4]
mov	edi, [esi]
push	eax
push	ecx
push	edx
call	sub_100059F0
mov	ecx, [esi+4]
mov	[ecx+14h], eax
mov	edx, [esi+4]
add	esp, 0Ch
cmp	dword ptr [edx+14h], 0
jnz	short loc_10008967
mov	eax, [esi]
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
mov	ecx, [esp+8+arg_1C]
mov	edx, [esp+8+arg_18]
mov	eax, [esp+8+arg_0]
mov	edi, [esp+8+arg_10]
push	ecx
push	edx
push	esi
push	eax
mov	eax, [esp+18h+arg_C]
call	sub_10008800
add	esp, 10h
pop	edi
pop	esi
retn
align 10h
			
push	ecx
mov	eax, [esp+4+arg_1C]
push	esi
or	esi, 0FFFFFFFFh
mov	[esp+8+var_4], 0
test	eax, eax
jz	loc_10008A68
test	edi, edi
jz	loc_10008A68
mov	dword ptr [eax], 0
mov	eax, [esp+8+arg_18]
push	eax
call	CERT_DecodeOCSPResponse
add	esp, 4
mov	[edi], eax
test	eax, eax
jz	loc_10008A68
push	eax
call	CERT_GetOCSPResponseStatus
add	esp, 4
test	eax, eax
jnz	loc_10008A63
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
push	ebx
push	ebp
mov	ebp, [esp+10h+arg_10]
push	0Bh
push	ebp
push	ecx
push	edx
call	CERT_FindCertIssuer
mov	ecx, [esp+20h+arg_14]
mov	edx, [esp+20h+arg_0]
mov	ebx, eax
push	ebx
lea	eax, [esp+24h+var_4]
push	eax
mov	eax, [edi]
push	ecx
push	edx
push	eax
call	CERT_VerifyOCSPResponseSignature
mov	esi, eax
add	esp, 24h
test	esi, esi
jnz	short loc_10008A43
mov	ecx, [esp+10h+arg_1C]
mov	edx, [esp+10h+arg_C]
mov	eax, [esp+10h+arg_4]
push	ecx
mov	ecx, [edi]
push	ebp
mov	ebp, [esp+18h+var_4]
push	edx
mov	edx, [esp+1Ch+arg_0]
push	ebp
push	eax
push	ecx
push	edx
call	sub_10008650
add	esp, 1Ch
mov	esi, eax
jmp	short loc_10008A47
mov	ebp, [esp+10h+var_4]
test	ebx, ebx
jz	short loc_10008A54
push	ebx
call	CERT_DestroyCertificate
add	esp, 4
test	ebp, ebp
jz	short loc_10008A61
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
pop	ebp
pop	ebx
mov	eax, esi
pop	esi
pop	ecx
retn
			
or	eax, 0FFFFFFFFh
pop	esi
pop	ecx
retn
align 10h
public CERT_GetOCSPStatusForCertID
mov	eax, [esp+arg_14]
mov	ecx, [esp+arg_10]
mov	edx, [esp+arg_C]
push	0
push	0
push	eax
mov	eax, [esp+0Ch+arg_8]
push	ecx
mov	ecx, [esp+10h+arg_4]
push	edx
mov	edx, [esp+14h+arg_0]
push	eax
push	ecx
push	edx
call	sub_100086D0
add	esp, 20h
retn
align 10h
public CERT_GetEncodedOCSPResponse
mov	eax, [esp+arg_18]
mov	ecx, [esp+arg_14]
mov	edx, [esp+arg_10]
push	eax
mov	eax, [esp+4+arg_C]
push	ecx
mov	ecx, [esp+8+arg_4]
push	edx
push	eax
push	ecx
call	CERT_CreateOCSPRequest
add	esp, 14h
test	eax, eax
jnz	short loc_10008AC6
retn
mov	edx, [esp+arg_20]
mov	ecx, [esp+arg_1C]
push	edi
push	edx
mov	edx, [esp+8+arg_0]
push	ecx
push	eax
mov	eax, [esp+10h+arg_8]
push	edx
mov	edi, offset aPost 
call	sub_10008800
add	esp, 10h
pop	edi
retn
align 10h
public CERT_CacheOCSPResponseFromSideChannel
sub	esp, 14h
xor	eax, eax
push	edi
mov	edi, [esp+18h+arg_4]
mov	[esp+18h+var_8], eax
mov	[esp+18h+var_14], 0FFFFFFFFh
mov	[esp+18h+var_C], eax
mov	[esp+18h+var_10], eax
cmp	edi, eax
jz	loc_10008C0A
cmp	[esp+18h+arg_10], eax
jz	loc_10008C0A
push	ebx
mov	ebx, [esp+1Ch+arg_C]
push	ebp
mov	ebp, [esp+20h+arg_8]
push	esi
push	ebx
push	ebp
push	edi
call	CERT_CreateOCSPCertID
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10008B47
or	eax, 0FFFFFFFFh
pop	esi
pop	ebp
pop	ebx
pop	edi
add	esp, 14h
retn
lea	eax, [esp+24h+arg_4]
push	eax
lea	ecx, [esp+28h+var_4]
push	ecx
lea	edx, [esp+2Ch+var_14]
push	edx
push	1
push	ebx
push	ebp
push	esi
call	sub_10007780
add	esp, 1Ch
test	eax, eax
jnz	short loc_10008B87
cmp	[esp+24h+var_14], eax
jnz	short loc_10008B87
cmp	[esp+24h+arg_4], 1
jnz	short loc_10008B87
push	esi
call	CERT_DestroyOCSPCertID
add	esp, 4
pop	esi
pop	ebp
pop	ebx
xor	eax, eax
pop	edi
add	esp, 14h
retn
			
mov	ecx, [esp+24h+arg_10]
mov	edx, [esp+24h+arg_14]
lea	eax, [esp+24h+var_10]
push	eax
mov	eax, [esp+28h+arg_0]
push	ecx
push	edx
push	ebx
push	ebp
push	edi
push	esi
push	eax
lea	edi, [esp+44h+var_C]
call	sub_10008990
mov	edi, eax
add	esp, 20h
test	edi, edi
jnz	short loc_10008BD1
push	ebx
mov	ebx, [esp+28h+var_10]
push	ebp
mov	eax, ebx
call	sub_10007730
lea	ecx, [esp+2Ch+var_8]
push	ecx
push	ebx
push	esi
mov	ebp, eax
call	sub_10008600
add	esp, 14h
jmp	short loc_10008BD5
mov	ebp, [esp+24h+var_14]
mov	eax, [esp+24h+var_C]
test	eax, eax
jz	short loc_10008BE6
push	eax
call	CERT_DestroyOCSPResponse
add	esp, 4
cmp	[esp+24h+var_8], 0
jnz	short loc_10008BF6
push	esi
call	CERT_DestroyOCSPCertID
add	esp, 4
mov	eax, ebp
test	edi, edi
jz	loc_10008B3F
pop	esi
pop	ebp
pop	ebx
mov	eax, edi
pop	edi
add	esp, 14h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 14h
retn
align 10h
sub	esp, 24h
mov	eax, [esp+24h+arg_18]
push	ebp
push	esi
xor	esi, esi
xor	ebp, ebp
mov	[esp+2Ch+var_14], esi
mov	[esp+2Ch+var_4], 0FFFFFFFFh
mov	[esp+2Ch+var_10], esi
mov	[esp+2Ch+var_24], ebp
cmp	eax, esi
jz	loc_10008EE1
mov	ecx, [esp+2Ch+arg_1C]
cmp	ecx, esi
jz	loc_10008EE1
mov	[eax], esi
mov	dword ptr [ecx], 0FFFFFFFFh
mov	eax, dword_100BA008
cmp	eax, esi
jnz	short loc_10008C7C
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
push	ebx
push	edi
mov	edi, ds:PR_EnterMonitor
push	eax
call	edi 
mov	ecx, dword_100BA008
mov	ebx, ds:PR_ExitMonitor
xor	eax, eax
cmp	dword_100BA038,	esi
push	ecx
setnz	al
mov	[esp+3Ch+var_18], eax
call	ebx 
mov	edx, [esp+3Ch+arg_0]
push	edx
call	PK11_IsReadOnly
add	esp, 0Ch
test	eax, eax
jz	short loc_10008CBD
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_10008CCE
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_10008CEC
cmp	[esi], ebp
jz	short loc_10008CEC
mov	eax, [esi+4]
push	eax
mov	[esp+38h+var_1C], 1
call	PORT_Strdup_Util
add	esp, 4
mov	[esp+34h+var_20], eax
jmp	short loc_10008D3D
			
mov	ecx, [esp+34h+arg_8]
push	ecx
mov	[esp+38h+var_1C], ebp
call	CERT_GetOCSPAuthorityInfoAccessLocation
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10008D39
mov	edx, dword_100BA008
push	edx
call	edi 
mov	eax, dword_100BA008
mov	edi, dword_100BA034
push	eax
call	ebx 
add	esp, 8
test	edi, edi
jz	short loc_10008D39
mov	ecx, [esp+34h+arg_8]
push	ecx
call	edi 
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10008D39
mov	[esp+34h+var_1C], 1
			
mov	[esp+34h+var_20], esi
cmp	[esp+34h+var_20], ebp
jnz	short loc_10008D80
call	PORT_GetError_Util
cmp	eax, 0FFFFE023h
jz	short loc_10008D61
cmp	eax, 0FFFFE075h
jz	short loc_10008D61
pop	edi
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
			
push	0
call	PORT_SetError_Util
mov	edx, [esp+38h+arg_1C]
add	esp, 4
pop	edi
pop	ebx
pop	esi
mov	[edx], ebp
xor	eax, eax
pop	ebp
add	esp, 24h
retn
jmp	short loc_10008D80
align 10h
			
mov	eax, [esp+34h+arg_1C]
xor	ecx, ecx
mov	dword ptr [eax], 0FFFFFFFFh
mov	[esp+34h+var_C], ecx
mov	[esp+34h+var_8], ecx
mov	eax, offset aGet 
cmp	[esp+34h+var_18], ecx
jz	short loc_10008DA4
mov	eax, offset aPost 
mov	edi, [esp+34h+arg_14]
mov	ebx, [esp+34h+arg_4]
lea	edx, [esp+34h+var_14]
push	edx
mov	edx, [esp+38h+var_1C]
push	edi
push	edx
mov	edx, [esp+40h+arg_8]
push	eax
mov	eax, [esp+44h+var_20]
push	eax
push	edx
push	ebx
push	ecx
call	sub_10008920
mov	esi, eax
add	esp, 20h
test	esi, esi
jz	short loc_10008E30
mov	ecx, [esp+34h+arg_10]
mov	edx, [esp+34h+arg_C]
lea	eax, [esp+34h+var_24]
push	eax
mov	eax, [esp+38h+arg_8]
push	esi
push	edi
push	ecx
mov	ecx, [esp+44h+arg_0]
push	edx
push	eax
push	ebx
push	ecx
lea	edi, [esp+54h+var_10]
call	sub_10008990
mov	ebp, [esp+54h+var_24]
add	esp, 20h
mov	[esp+34h+var_4], eax
test	eax, eax
jnz	short loc_10008E30
mov	edx, [ebp+14h]
cmp	dword ptr [edx], 1
ja	short loc_10008E16
mov	[esp+34h+var_C], 1
mov	eax, [esp+34h+arg_10]
mov	ecx, [esp+34h+arg_C]
push	eax
push	ecx
mov	eax, ebp
call	sub_10007730
mov	edx, [esp+3Ch+arg_1C]
add	esp, 8
mov	[edx], eax
			
cmp	[esp+34h+var_18], 0
jnz	short loc_10008E54
cmp	[esp+34h+var_C], 0
jz	short loc_10008E45
mov	eax, [esp+34h+arg_18]
push	eax
jmp	short loc_10008E6D
mov	eax, 1
mov	[esp+34h+var_8], eax
mov	[esp+34h+var_18], eax
jmp	short loc_10008E77
test	ebp, ebp
jnz	short loc_10008E68
mov	ecx, [esp+34h+arg_18]
push	ecx
push	ebx
call	sub_100087B0
add	esp, 8
jmp	short loc_10008E77
mov	edx, [esp+34h+arg_18]
push	edx
push	ebp
push	ebx
call	sub_10008600
add	esp, 0Ch
			
test	esi, esi
jz	short loc_10008E86
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+34h+var_14]
test	eax, eax
jz	short loc_10008E9F
push	eax
call	CERT_DestroyOCSPRequest
add	esp, 4
mov	[esp+34h+var_14], 0
mov	eax, [esp+34h+var_10]
test	eax, eax
jz	short loc_10008EB8
push	eax
call	CERT_DestroyOCSPResponse
add	esp, 4
mov	[esp+34h+var_10], 0
xor	ebp, ebp
mov	[esp+34h+var_24], ebp
cmp	[esp+34h+var_8], ebp
jnz	loc_10008D80
mov	eax, [esp+34h+var_20]
push	eax
call	PORT_Free_Util
mov	eax, [esp+38h+var_4]
add	esp, 4
pop	edi
pop	ebx
pop	esi
pop	ebp
add	esp, 24h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
align 10h
public CERT_CheckOCSPStatus
			
sub	esp, 10h
push	ebx
push	ebp
push	esi
push	edi
push	800h
mov	[esp+24h+var_8], 0
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_10008FAB
mov	ebx, [esp+20h+arg_C]
mov	ebp, [esp+20h+arg_8]
mov	eax, [esp+20h+arg_4]
push	ebx
push	ebp
push	eax
call	sub_100054C0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10008F58
push	eax
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
lea	ecx, [esp+20h+var_4]
push	ecx
lea	edx, [esp+24h+var_C]
push	edx
lea	eax, [esp+28h+var_10]
push	eax
push	0
push	ebx
push	ebp
push	esi
mov	[esi+84h], edi
call	sub_10007780
add	esp, 1Ch
test	eax, eax
jz	short loc_10008FB6
mov	esi, [esi+84h]
test	esi, esi
jz	short loc_10008F9E
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
mov	edi, [esp+20h+var_4]
cmp	edi, 1
jnz	short loc_10008FE7
push	esi
call	CERT_DestroyOCSPCertID
mov	esi, [esp+24h+var_10]
add	esp, 4
test	esi, esi
jz	short loc_10008FDD
mov	ecx, [esp+20h+var_C]
push	ecx
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
mov	ecx, [esp+20h+arg_10]
lea	edx, [esp+20h+var_10]
push	edx
mov	edx, [esp+24h+arg_4]
lea	eax, [esp+24h+var_8]
push	eax
mov	eax, [esp+28h+arg_0]
push	ecx
push	ebx
push	ebp
push	edx
push	esi
push	eax
call	sub_10008C20
add	esp, 20h
test	eax, eax
jz	short loc_10009056
call	PORT_GetError_Util
mov	ebx, eax
call	sub_100078A0
test	eax, eax
jz	short loc_1000902D
push	ebx
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
jmp	short loc_1000905A
cmp	edi, 2
jnz	short loc_10009052
mov	eax, [esp+20h+var_C]
cmp	eax, 0FFFFE07Eh
jz	short loc_10009044
cmp	eax, 0FFFFE00Ch
jnz	short loc_10009052
push	eax
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
jmp	short loc_1000905A
			
xor	edi, edi
jmp	short loc_1000905A
mov	edi, [esp+20h+var_10]
			
cmp	[esp+20h+var_8], 0
jnz	short loc_1000906A
push	esi
call	CERT_DestroyOCSPCertID
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
align 10h
public CERT_DisableOCSPChecking
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jnz	short loc_1000909B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
push	edi
push	esi
call	PK11_IsReadOnly
push	esi
mov	edi, eax
call	PK11_IsReadOnly
add	esp, 8
test	eax, eax
jz	short loc_100090BF
cmp	dword ptr [eax+8], 0
jz	short loc_100090BF
cmp	dword ptr [edi], offset	CERT_CheckOCSPStatus
jz	short loc_100090D2
			
push	0FFFFE07Fh
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
call	CERT_ClearOCSPCache
mov	dword ptr [edi], 0
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
public CERT_EnableOCSPChecking
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_1000910B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
retn
push	edi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jnz	short loc_1000912A
call	sub_10007930
test	eax, eax
jnz	short loc_10009132
push	edi
call	PK11_IsReadOnly
add	esp, 4
mov	dword ptr [eax], offset	CERT_CheckOCSPStatus
xor	eax, eax
pop	edi
retn
align 10h
			
push	ebx
push	ebp
mov	ebp, [esp+8+arg_C]
mov	ebx, eax
test	edi, edi
jz	loc_10009206
test	ebx, ebx
jz	loc_10009206
cmp	[esp+8+arg_0], 0
jz	loc_10009206
push	esi
push	2Ch
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100091DD
mov	eax, [esp+0Ch+arg_8]
mov	ecx, [esp+0Ch+arg_4]
push	eax
push	ecx
lea	edx, [esi+18h]
mov	[esi+4], ebx
mov	ebx, [esp+14h+arg_0]
push	edx
push	edi
mov	[esi], edi
mov	[esi+14h], ebx
call	DER_TimeToGeneralizedTimeArena_Util
add	esp, 10h
test	eax, eax
jnz	short loc_100091DD
mov	[esi+24h], eax
test	ebp, ebp
jz	short loc_100091CB
push	eax
push	eax
push	edi
call	SECITEM_AllocItem_Util
add	esp, 0Ch
mov	[esi+24h], eax
test	eax, eax
jz	short loc_100091DD
mov	ecx, [ebp+4]
mov	edx, [ebp+0]
push	ecx
push	edx
push	eax
push	edi
call	DER_TimeToGeneralizedTimeArena_Util
add	esp, 10h
test	eax, eax
jnz	short loc_100091DD
push	4
push	edi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi+28h], eax
test	eax, eax
jnz	short loc_100091E3
			
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
push	offset dword_100A2090
mov	dword ptr [eax], 0
push	ebx
lea	eax, [esi+8]
push	eax
push	edi
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
neg	eax
sbb	eax, eax
and	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
public CERT_CreateOCSPSingleResponseGood
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_1000923A
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
push	esi
push	8
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10009266
push	0
push	0
push	edi
mov	dword ptr [esi], 0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
mov	[esi+4], eax
test	eax, eax
jnz	short loc_1000926B
pop	esi
xor	eax, eax
pop	edi
retn
mov	eax, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
push	eax
mov	eax, [esp+0Ch+arg_4]
push	ecx
push	edx
push	esi
call	sub_10009140
add	esp, 10h
pop	esi
pop	edi
retn
align 10h
public CERT_CreateOCSPSingleResponseUnknown
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_100092AA
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
push	esi
push	8
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100092D6
push	0
push	0
push	edi
mov	dword ptr [esi], 2
call	SECITEM_AllocItem_Util
add	esp, 0Ch
mov	[esi+4], eax
test	eax, eax
jnz	short loc_100092DB
pop	esi
xor	eax, eax
pop	edi
retn
mov	eax, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
push	eax
mov	eax, [esp+0Ch+arg_4]
push	ecx
push	edx
push	esi
call	sub_10009140
add	esp, 10h
pop	esi
pop	edi
retn
align 10h
public CERT_CreateOCSPSingleResponseRevoked
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jz	loc_1000939A
cmp	[esp+4+arg_1C],	0
jnz	loc_1000939A
push	esi
push	8
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10009376
push	10h
push	edi
mov	dword ptr [esi], 1
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esi+4], eax
test	eax, eax
jz	short loc_10009376
push	0
push	0
push	edi
call	SECITEM_AllocItem_Util
mov	ecx, [esi+4]
mov	[ecx+0Ch], eax
mov	eax, [esi+4]
add	esp, 0Ch
cmp	dword ptr [eax+0Ch], 0
jz	short loc_10009376
mov	edx, [esp+8+arg_18]
mov	ecx, [esp+8+arg_14]
push	edx
push	ecx
push	eax
push	edi
call	DER_TimeToGeneralizedTimeArena_Util
add	esp, 10h
test	eax, eax
jz	short loc_1000937B
			
pop	esi
xor	eax, eax
pop	edi
retn
mov	edx, [esp+8+arg_10]
mov	eax, [esp+8+arg_C]
mov	ecx, [esp+8+arg_8]
push	edx
push	eax
mov	eax, [esp+10h+arg_4]
push	ecx
push	esi
call	sub_10009140
add	esp, 10h
pop	esi
pop	edi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
align 10h
public CERT_CreateEncodedOCSPSuccessResponse
sub	esp, 20h
push	edi
xor	edi, edi
mov	[esp+24h+var_1C], edi
mov	[esp+24h+var_18], edi
cmp	[esp+24h+arg_0], edi
jz	short loc_100093D8
cmp	[esp+24h+arg_14], edi
jz	short loc_100093D8
mov	eax, [esp+24h+arg_8]
cmp	eax, 1
jz	short loc_100093EC
cmp	eax, 2
jz	short loc_100093EC
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
add	esp, 20h
retn
			
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
cmp	esi, edi
jnz	short loc_10009408
pop	esi
xor	eax, eax
pop	edi
add	esp, 20h
retn
push	ebx
push	30h
push	esi
call	PORT_ArenaZAlloc_Util
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jz	loc_10009728
push	ebp
push	10h
push	esi
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jz	loc_10009727
push	48h
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jz	loc_10009727
push	20h
push	esi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esp+30h+var_14], eax
test	eax, eax
jz	loc_10009727
push	18h
push	esi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esp+30h+var_10], eax
test	eax, eax
jz	loc_10009727
mov	ecx, [esp+30h+arg_10]
mov	edx, [esp+30h+arg_C]
xor	eax, eax
mov	[ebx+4], eax
mov	[ebx+8], eax
mov	[ebx+2Ch], eax
mov	eax, [esp+30h+arg_14]
push	ecx
mov	[ebx+28h], eax
push	edx
lea	eax, [ebx+1Ch]
push	eax
push	esi
call	DER_TimeToGeneralizedTimeArena_Util
add	esp, 10h
test	eax, eax
jnz	loc_10009727
mov	eax, [esp+30h+arg_4]
test	eax, eax
jnz	loc_1000957E
lea	edx, [esp+30h+var_C]
push	edx
lea	eax, [ebp+4]
push	eax
lea	ecx, [esp+38h+var_1D]
push	4
push	esi
mov	[esp+40h+var_1D], 64h
mov	[esp+40h+var_4], 1
mov	[esp+40h+var_8], ecx
mov	dword ptr [ebp+0], 2
call	sub_10005340
add	esp, 10h
test	eax, eax
jz	loc_10009727
push	offset dword_100A1E18
push	ebp
lea	ecx, [ebx+0Ch]
push	ecx
push	esi
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	loc_10009727
push	offset dword_100A22D0
push	ebx
push	edi
push	esi
mov	[edi+0Ch], ebx
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	loc_10009727
push	4
push	esi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi+34h], eax
test	eax, eax
jz	loc_10009727
push	4
push	1
mov	dword ptr [eax], 0
call	SEC_GetSignatureAlgorithmOidTag
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	loc_10009727
push	1
lea	edx, [edi+28h]
push	edx
push	0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
test	eax, eax
jz	loc_10009727
mov	eax, [edi+2Ch]
mov	cl, [esp+30h+var_1D]
mov	ebp, [esp+30h+var_1C]
mov	[eax], cl
jmp	loc_10009677
mov	ecx, [esp+30h+arg_8]
mov	[ebp+0], ecx
cmp	ecx, 1
jnz	short loc_100095AF
add	eax, 0CCh
push	eax
lea	edx, [ebp+4]
push	edx
push	esi
mov	[esp+3Ch+var_1C], offset dword_100A1E08
call	CERT_CopyName
add	esp, 0Ch
test	eax, eax
jnz	loc_10009727
jmp	short loc_100095CF
lea	ecx, [ebp+4]
push	ecx
push	4
push	eax
push	esi
mov	[esp+40h+var_1C], offset dword_100A1E18
call	CERT_GetSubjectPublicKeyDigest
add	esp, 10h
test	eax, eax
jz	loc_10009727
mov	edx, [esp+30h+var_1C]
push	edx
push	ebp
lea	eax, [ebx+0Ch]
push	eax
push	esi
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	loc_10009727
push	offset dword_100A22D0
push	ebx
push	edi
push	esi
mov	[edi+0Ch], ebx
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	loc_10009727
push	4
push	esi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi+34h], eax
test	eax, eax
jz	loc_10009727
mov	ecx, [esp+30h+arg_18]
mov	edx, [esp+30h+arg_4]
push	ecx
push	edx
mov	dword ptr [eax], 0
call	PK11_FindKeyByAnyCert
mov	ebp, eax
add	esp, 8
mov	[esp+30h+var_1C], ebp
test	ebp, ebp
jz	loc_10009727
mov	eax, [ebp+4]
push	4
push	eax
call	SEC_GetSignatureAlgorithmOidTag
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	loc_1000971A
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ebx
push	ebp
push	ecx
push	edx
lea	eax, [edi+28h]
push	eax
call	SEC_SignData
add	esp, 14h
test	eax, eax
jnz	loc_1000971A
shl	dword ptr [edi+30h], 3
push	0
push	ebx
lea	ecx, [edi+10h]
push	ecx
push	esi
call	SECOID_SetAlgorithmID_Util
add	esp, 10h
test	eax, eax
jnz	loc_1000971A
mov	ebx, [esp+30h+var_14]
push	offset dword_100A2340
push	edi
lea	edx, [ebx+10h]
push	edx
push	esi
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_1000971A
push	83h
mov	dword ptr [ebx+0Ch], 83h
call	SECOID_FindOIDByTag_Util
add	esp, 4
test	eax, eax
jz	short loc_1000971A
mov	ecx, [eax]
mov	ebp, [esp+30h+var_10]
mov	[ebx], ecx
mov	edx, [eax+4]
mov	[ebx+4], edx
mov	eax, [eax+8]
push	0
lea	ecx, [ebp+4]
mov	[ebx+8], eax
mov	[ebx+1Ch], edi
push	ecx
push	esi
mov	[ebp+0], esi
mov	[ebp+14h], ebx
mov	dword ptr [ebp+10h], 0
call	SEC_ASN1EncodeInteger_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_10009716
mov	edx, [esp+30h+arg_0]
push	offset dword_100A1C78
push	ebp
push	0
push	edx
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
mov	[esp+30h+var_18], eax
mov	ebp, [esp+30h+var_1C]
			
test	ebp, ebp
jz	short loc_10009727
push	ebp
call	SECKEY_DestroyPrivateKey
add	esp, 4
			
pop	ebp
cmp	dword ptr [edi+2Ch], 0
pop	ebx
jz	short loc_1000973D
push	0
add	edi, 28h
push	edi
call	SECITEM_FreeItem_Util
add	esp, 8
push	0
push	esi
call	PORT_FreeArena_Util
mov	eax, [esp+30h+var_18]
add	esp, 8
pop	esi
pop	edi
add	esp, 20h
retn
align 10h
public CERT_CreateEncodedOCSPErrorResponse
mov	eax, [esp+arg_4]
add	eax, 1F88h
sub	esp, 18h
cmp	eax, 4		
ja	short loc_100097E0 
jmp	ds:off_100097F4[eax*4] 
			
mov	eax, 1		
jmp	short loc_10009799
			
mov	eax, 2		
jmp	short loc_10009799
			
mov	eax, 3		
jmp	short loc_10009799
			
mov	eax, 5		
jmp	short loc_10009799
			
mov	eax, 6		
			
push	eax
mov	[esp+1Ch+var_8], eax
lea	eax, [esp+1Ch+var_14]
push	eax
push	0
call	SEC_ASN1EncodeInteger_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_100097ED
mov	edx, [esp+18h+arg_0]
push	esi
push	offset dword_100A23A0
lea	ecx, [esp+20h+var_18]
push	ecx
push	0
push	edx
call	SEC_ASN1EncodeItem_Util
mov	esi, eax
lea	eax, [esp+2Ch+var_14]
push	0
push	eax
call	SECITEM_FreeItem_Util
add	esp, 18h
mov	eax, esi
pop	esi
add	esp, 18h
retn
push	0FFFFE005h	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
add	esp, 18h
retn
align 4
dd offset loc_1000977F	
dd offset loc_10009786
dd offset loc_1000978D
dd offset loc_10009794
align 10h
push	ebx
mov	ebx, [esp+4+arg_4]
push	ebp
mov	ebp, [esp+8+Str]
mov	ecx, ebx
mov	eax, ebp
mov	edi, edi
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10009840
test	dl, dl
jz	short loc_1000983C
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10009840
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10009820
xor	eax, eax
jmp	short loc_10009845
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_10009851
pop	ebp
mov	eax, 1
pop	ebx
retn
push	esi
push	edi
mov	edi, ds:strchr
push	3Ah		
push	ebp		
call	edi 
push	3Ah		
push	ebx		
mov	esi, eax
call	edi 
add	esp, 10h
test	esi, esi
jz	short loc_10009876
test	eax, eax
jnz	short loc_1000987A
mov	eax, esi
mov	ecx, ebx
jmp	short loc_10009883
test	eax, eax
jnz	short loc_10009881
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
mov	ecx, ebp
inc	eax
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_100098B0
test	dl, dl
jz	short loc_100098A0
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_100098B0
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10009884
xor	eax, eax
xor	ecx, ecx
test	eax, eax
setz	cl
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	eax, ecx
retn
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
xor	ecx, ecx
test	eax, eax
setz	cl
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	eax, ecx
retn
align 10h
public CERT_FindUserCertByUsage
push	ecx
push	ebx
push	ebp
push	esi
push	edi
call	ds:PR_Now
mov	ebp, [esp+14h+Str]
mov	edi, eax
mov	eax, [esp+14h+arg_10]
mov	ebx, edx
test	eax, eax
jz	short loc_100098FB
push	eax		
push	ebp		
call	PK11_FindCertFromNickname
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10009913
mov	eax, [esp+14h+arg_0]
push	ebp		
push	eax		
call	CERT_FindCertByNickname
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_100099E1
mov	eax, [esp+14h+arg_8]
lea	ecx, [esp+14h+var_4]
push	ecx
lea	edx, [esp+18h+arg_10]
push	edx
push	0
push	eax
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jz	short loc_10009943
push	esi
call	CERT_DestroyCertificate
add	esp, 4
xor	esi, esi
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
mov	ebp, [esp+14h+arg_C]
test	ebp, ebp
jz	short loc_1000995C
push	0
push	ebx
push	edi
push	esi
call	CERT_CheckCertValidTimes
add	esp, 10h
test	eax, eax
jnz	short loc_10009987
mov	ecx, [esp+14h+arg_10]
push	ecx
push	esi
call	sub_1003C090
add	esp, 8
test	eax, eax
jnz	short loc_10009987
mov	edx, [esp+14h+var_4]
test	[esi+13Ch], edx
jz	short loc_10009987
push	esi
call	CERT_IsUserCert
add	esp, 4
test	eax, eax
jnz	short loc_100099E1
			
mov	ecx, [esp+14h+arg_0]
push	ebp
push	ebx
push	edi
lea	eax, [esi+54h]
push	eax
push	ecx
push	0
call	CERT_CreateSubjectCertList
mov	edi, eax
push	edi
call	CERT_FilterCertListForUserCerts
push	esi
call	CERT_DestroyCertificate
add	esp, 20h
xor	esi, esi
test	edi, edi
jz	short loc_100099E1
mov	edx, [esp+14h+arg_8]
push	esi
push	edx
push	edi
call	CERT_FilterCertListByUsage
add	esp, 0Ch
test	eax, eax
jnz	short loc_100099D8
mov	eax, [edi]
cmp	eax, edi
jz	short loc_100099D8
mov	eax, [eax+8]
push	eax
call	CERT_DupCertificate
add	esp, 4
mov	esi, eax
			
push	edi
call	CERT_DestroyCertList
add	esp, 4
			
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
push	edi
push	0
push	esi
call	sub_100461D0
add	esp, 8
test	eax, eax
jz	loc_10009AEE
push	eax
call	sub_10050550
mov	ebx, [esp+14h+arg_4]
add	esp, 4
cmp	dword ptr [ebx+10h], 2
jnz	loc_10009AEE
push	0
push	0
push	esi
call	sub_10046430
add	esp, 0Ch
test	eax, eax
jz	loc_10009AEE
push	esi
push	0
call	sub_1004B510
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jz	short loc_10009AA0
mov	esi, [ebx+4]
test	esi, esi
jz	short loc_10009A84
nop
mov	ecx, [esi+4]
mov	eax, ebp
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10009A75
test	dl, dl
jz	short loc_10009A71
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10009A75
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10009A55
xor	eax, eax
jmp	short loc_10009A7A
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jz	short loc_10009AE5
mov	esi, [esi]
test	esi, esi
jnz	short loc_10009A50
mov	eax, [ebx]
push	8
push	eax
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10009AA8
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, ebp
lea	edx, [eax+1]
lea	ecx, [ecx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10009AB0
mov	ecx, [ebx]
sub	eax, edx
lea	esi, [eax+1]
push	esi
push	ecx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi+4], eax
test	eax, eax
jz	short loc_10009A97
push	esi		
push	ebp		
push	eax		
call	memcpy
mov	edx, [ebx+4]
mov	[edi], edx
add	esp, 0Ch
inc	dword ptr [ebx+8]
mov	[ebx+4], edi
push	ebp
call	PORT_Free_Util
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
public CERT_GetCertNicknames
			
push	ebx
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
xor	ebx, ebx
add	esp, 4
cmp	edi, ebx
jnz	short loc_10009B29
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	ebx
retn
push	esi
push	18h
push	edi
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	short loc_10009B8D
mov	ecx, [esp+0Ch+arg_8]
mov	eax, [esp+0Ch+arg_4]
push	ecx
push	1
push	ebx
push	ebx
mov	[esi], edi
mov	[esi+4], ebx
mov	[esi+8], ebx
mov	[esi+0Ch], ebx
mov	[esi+10h], eax
mov	[esi+14h], ebx
call	sub_1002C850
mov	edx, [esp+1Ch+arg_0]
push	esi
push	offset sub_100099F0
push	edx
call	sub_100475B0
mov	eax, [esi+8]
add	esp, 1Ch
cmp	eax, ebx
jz	short loc_10009BD5
add	eax, eax
add	eax, eax
push	eax
push	edi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi+0Ch], eax
cmp	eax, ebx
jnz	short loc_10009B9D
push	ebx
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	edi
xor	eax, eax
pop	ebx
retn
mov	ecx, [esi+4]
xor	edi, edi
cmp	[esi+8], ebx
jle	short loc_10009BD5
push	ebp
jmp	short loc_10009BB0
align 10h
			
mov	eax, [ecx+4]
mov	edx, [esi+0Ch]
mov	[edx+edi*4], eax
mov	eax, [ecx+4]
lea	ebp, [eax+1]
nop
mov	dl, [eax]
inc	eax
cmp	dl, bl
jnz	short loc_10009BC0
sub	eax, ebp
add	[esi+14h], eax
mov	ecx, [ecx]
inc	edi
cmp	edi, [esi+8]
jl	short loc_10009BB0
pop	ebp
			
mov	eax, esi
pop	esi
pop	edi
pop	ebx
retn
align 10h
public CERT_FreeNicknames
mov	eax, [esp+arg_0] 
mov	ecx, [eax]
push	0
push	ecx
call	PORT_FreeArena_Util
add	esp, 8
retn
align 10h
sub	esp, 10h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+10h+var_4], eax
push	ebx
push	ebp
mov	ebp, [esp+18h+arg_0]
push	esi
push	edi
mov	edi, [esp+20h+arg_8]
lea	eax, [esp+20h+var_10]
push	eax
push	ebp
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_10009C95
test	[esp+20h+var_10], 80h
jz	short loc_10009C95
mov	ecx, [edi]
push	10h
push	ecx
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10009C5C
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
mov	ebx, [ebp+5Ch]
mov	[esi+0Ch], ebx
mov	dword ptr [esi+4], 0
mov	edx, [edi]
push	ebx
push	edx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi+8], eax
test	eax, eax
jz	short loc_10009C46
mov	ecx, [ebp+58h]
push	ebx		
push	ecx		
push	eax		
call	memcpy
mov	edx, [edi+0Ch]
mov	[esi], edx
add	esp, 0Ch
inc	dword ptr [edi+4]
mov	[edi+0Ch], esi
			
mov	ecx, [esp+20h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 10h
retn
align 10h
public CERT_DupDistNames
push	ecx
push	ebx
push	ebp
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
xor	ebx, ebx
add	esp, 4
cmp	ebp, ebx
jnz	short loc_10009CDB
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
push	esi
push	edi
push	10h
push	ebp
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, ebx
jz	short loc_10009D64
mov	esi, [esp+14h+arg_0]
mov	[edi], ebp
mov	[edi+0Ch], ebx
mov	eax, [esi+4]
mov	[edi+4], eax
mov	[edi+8], ebx
cmp	[esi+4], ebx
jz	short loc_10009D5A
mov	eax, [esi+4]
lea	ecx, [eax+eax*2]
add	ecx, ecx
add	ecx, ecx
push	ecx
push	ebp
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi+8], eax
cmp	eax, ebx
jz	short loc_10009D64
mov	[esp+14h+var_4], ebx
cmp	[esi+4], ebx
jle	short loc_10009D5A
lea	esp, [esp+0]
mov	edx, [esi+8]
mov	eax, [edi+8]
add	edx, ebx
push	edx
add	eax, ebx
push	eax
push	ebp
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10009D62
mov	eax, [esp+14h+var_4]
inc	eax
add	ebx, 0Ch
mov	[esp+14h+var_4], eax
cmp	eax, [esi+4]
jl	short loc_10009D30
			
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
xor	ebx, ebx
			
push	ebx
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
public CERT_GetSSLCACerts
push	ebx
push	edi
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
xor	edi, edi
add	esp, 4
cmp	ebx, edi
jnz	short loc_10009DA9
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	ebx
retn
push	esi
push	10h
push	ebx
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, edi
jz	short loc_10009DF8
push	edi
push	esi
push	offset sub_10009C00
mov	[esi], ebx
mov	[esi+0Ch], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	PK11_TraverseSlotCerts
add	esp, 0Ch
test	eax, eax
jnz	short loc_10009DF8
mov	eax, [esi+4]
cmp	eax, edi
jz	short loc_10009E34
lea	eax, [eax+eax*2]
add	eax, eax
add	eax, eax
push	eax
push	ebx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi+8], eax
cmp	eax, edi
jnz	short loc_10009E08
			
push	edi
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	edi
xor	eax, eax
pop	ebx
retn
mov	ecx, [esi+0Ch]
xor	edx, edx
cmp	[esi+4], edi
jle	short loc_10009E34
mov	ebx, [ecx+4]
mov	eax, [esi+8]
mov	[eax+edi], ebx
mov	ebx, [ecx+8]
mov	[eax+edi+4], ebx
mov	ebx, [ecx+0Ch]
mov	[eax+edi+8], ebx
mov	ecx, [ecx]
inc	edx
add	edi, 0Ch
cmp	edx, [esi+4]
jl	short loc_10009E12
			
mov	eax, esi
pop	esi
pop	edi
pop	ebx
retn
align 10h
public CERT_DistNamesFromCertList
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
xor	esi, esi
test	ebx, ebx
jnz	short loc_10009E5E
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
xor	eax, eax
pop	ebx
retn
mov	eax, [ebx]
cmp	eax, ebx
jz	short loc_10009E6B
mov	eax, [eax]
inc	esi
cmp	eax, ebx
jnz	short loc_10009E64
push	ebp
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10009EEC
push	10h
push	edi
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jz	short loc_10009EE1
lea	eax, [esi+esi*2]
add	eax, eax
add	eax, eax
push	eax
push	edi
mov	[ebp+0], edi
mov	[ebp+4], esi
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[ebp+8], eax
test	eax, eax
jz	short loc_10009EE1
mov	esi, [ebx]
cmp	esi, ebx
jz	short loc_10009EDA
mov	ebx, eax
mov	eax, [esi+8]
add	eax, 54h
mov	ecx, ebx
push	eax
push	ecx
push	edi
add	ebx, 0Ch
call	SECITEM_CopyItem_Util
add	esp, 0Ch
cmp	eax, 0FFFFFFFFh
jz	short loc_10009EE1
mov	esi, [esi]
cmp	esi, [esp+10h+arg_0]
jnz	short loc_10009EB7
pop	edi
mov	eax, ebp
pop	ebp
pop	esi
pop	ebx
retn
			
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	ebp
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
sub	esp, 0Ch
xor	eax, eax
push	esi
mov	esi, [esp+10h+arg_0]
mov	ecx, [esi+114h]
mov	[esp+10h+var_8], eax
mov	[esp+10h+var_4], eax
lea	eax, [esp+10h+var_C]
push	eax
push	57h
push	ecx
call	sub_1003EB90
add	esp, 0Ch
test	eax, eax
jz	short loc_10009F33
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
mov	eax, [esi]
lea	edx, [esp+10h+var_C]
push	edx
push	eax
call	CERT_DecodeCRLDistributionPoints
mov	ecx, [esp+18h+var_8]
push	ecx
mov	esi, eax
call	PORT_Free_Util
add	esp, 0Ch
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
align 10h
public CERT_ImportCRL
push	esi
push	edi
call	PK11_GetInternalKeySlot
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
push	0
push	0
mov	esi, eax
mov	eax, [esp+10h+arg_10]
push	0
push	eax
mov	eax, [esp+18h+arg_4]
push	ecx
push	edx
push	eax
push	esi
call	PK11_ImportCRL
push	esi
mov	edi, eax
call	PK11_FreeSlot
add	esp, 24h
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
			
sub	esp, 1Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+1Ch+var_4], eax
push	ebx
push	ebp
push	esi
push	edi
mov	ebx, ecx
xor	esi, esi
call	CERT_GetDefaultCertDB
mov	[esp+2Ch+var_1C], eax
cmp	[esp+2Ch+arg_0], esi
jz	loc_1000A10F
lea	esp, [esp+0]
dec	[esp+2Ch+arg_0]
push	0		
mov	edi, ebx
push	0		
add	ebx, 0Ch
push	edi		
mov	[esp+38h+var_18], ebx
call	__CERT_DecodeDERCertificate_0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_1000A124
cmp	[esp+2Ch+arg_8], 0
jnz	short loc_1000A00D
push	ebp
call	CERT_CertTimesValid
add	esp, 4
cmp	eax, 0FFFFFFFFh
jz	loc_1000A0FB
lea	eax, [esp+2Ch+var_14]
push	eax
push	ebp
call	CERT_IsCACert
add	esp, 8
test	eax, eax
jnz	short loc_1000A03C
cmp	[esp+2Ch+arg_8], eax
jz	loc_1000A0FB
mov	eax, 8
mov	[esp+2Ch+var_10], eax
mov	[esp+2Ch+var_C], eax
mov	[esp+2Ch+var_8], eax
jmp	short loc_1000A09B
mov	edx, [esp+2Ch+arg_4]
mov	cl, [esp+2Ch+var_14]
cmp	edx, 3
jnz	short loc_1000A052
test	cl, 4
jz	loc_1000A0FB
xor	eax, eax
mov	[esp+2Ch+var_10], eax
mov	[esp+2Ch+var_C], eax
mov	[esp+2Ch+var_8], eax
cmp	edx, 3
jz	short loc_1000A093
cmp	edx, 7
jnz	short loc_1000A09B
test	cl, 4
jz	short loc_1000A077
mov	[esp+2Ch+var_10], 8
test	cl, 2
jz	short loc_1000A084
mov	[esp+2Ch+var_C], 8
test	cl, 1
jz	short loc_1000A09B
mov	[esp+2Ch+var_8], 8
jmp	short loc_1000A09B
mov	[esp+2Ch+var_10], 8
			
mov	ecx, [esp+2Ch+var_1C]
push	0		
push	0		
push	0		
push	edi		
push	ecx		
call	CERT_NewTempCertificate
mov	esi, eax
add	esp, 14h
test	esi, esi
jz	short loc_1000A124
cmp	dword ptr [esi+150h], 0
jz	short loc_1000A0E6
push	esi
call	CERT_MakeCANickname
lea	edx, [esp+30h+var_10]
push	edx
mov	edi, eax
push	edi
push	esi
call	j___CERT_AddTempCertToPerm
add	esp, 10h
mov	ebx, eax
test	edi, edi
jz	short loc_1000A0E8
push	edi
call	PORT_Free_Util
add	esp, 4
jmp	short loc_1000A0E8
xor	ebx, ebx
			
push	esi
call	CERT_DestroyCertificate
add	esp, 4
xor	esi, esi
test	ebx, ebx
jnz	short loc_1000A124
mov	ebx, [esp+2Ch+var_18]
			
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
cmp	[esp+2Ch+arg_0], 0
jnz	loc_10009FD0
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+1Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 1Ch
retn
			
or	edi, 0FFFFFFFFh
test	ebp, ebp
jz	short loc_1000A134
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
test	esi, esi
jz	short loc_1000A141
push	esi
call	CERT_DestroyCertificate
add	esp, 4
mov	ecx, [esp+2Ch+var_4]
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 1Ch
retn
align 10h
public CERT_ImportCAChain
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
push	0
push	eax
push	ecx
mov	ecx, [esp+0Ch+arg_0]
call	sub_10009FA0
add	esp, 0Ch
retn
align 10h
public CERT_ImportCAChainTrusted
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
push	1
push	eax
push	ecx
mov	ecx, [esp+0Ch+arg_0]
call	sub_10009FA0
add	esp, 0Ch
retn
align 10h
public CERT_CertChainFromCert
sub	esp, 2Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2Ch+var_4], eax
push	ebx
push	ebp
push	esi
mov	esi, [esp+38h+arg_0]
push	edi
call	sub_1004A850
mov	edi, eax
call	sub_1004A860
push	esi
mov	ebx, eax
call	sub_1004B930
xor	ebp, ebp
add	esp, 4
cmp	eax, ebp
jz	short loc_1000A211
mov	ecx, [esp+3Ch+arg_4]
push	ebx
push	edi
push	ebp
push	ebp
push	14h
push	ebp
push	ebp
lea	edx, [esp+58h+var_10]
push	edx
push	ebp
push	eax
mov	[esp+64h+var_10], ebp
mov	[esp+64h+var_C], ecx
mov	[esp+64h+var_8], ebp
call	sub_10046C40
mov	ebx, eax
add	esp, 28h
mov	[esp+3Ch+var_24], ebx
cmp	ebx, ebp
jnz	short loc_1000A226
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+2Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
xor	edi, edi
mov	[esp+3Ch+var_28], edi
cmp	[ebx], ebp
jz	short loc_1000A23A
inc	edi
cmp	[ebx+edi*4], ebp
jnz	short loc_1000A230
mov	[esp+3Ch+var_28], edi
push	1000h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
mov	[esp+3Ch+var_2C], esi
cmp	esi, ebp
jz	loc_1000A34C
push	0Ch
push	esi
call	PORT_ArenaAlloc_Util
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jz	loc_1000A34C
lea	eax, [edi+edi*2]
add	eax, eax
add	eax, eax
push	eax
push	esi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[ebp+0], eax
test	eax, eax
jz	loc_1000A34C
mov	esi, [ebx]
test	esi, esi
jz	loc_1000A30F
xor	edi, edi
push	esi
call	sub_1004B8F0
add	esp, 4
mov	[esp+3Ch+var_20], eax
test	eax, eax
jz	loc_1000A344
mov	ecx, [esi+34h]
mov	[esp+3Ch+var_14], ecx
mov	edx, [esi+30h]
mov	ecx, [ebp+0]
lea	eax, [esp+3Ch+var_1C]
push	eax
add	ecx, edi
mov	[esp+40h+var_18], edx
mov	edx, [esp+40h+var_2C]
push	ecx
push	edx
mov	[esp+48h+var_1C], 0
call	SECITEM_CopyItem_Util
mov	esi, [ebx+4]
add	ebx, 4
add	esp, 0Ch
add	edi, 0Ch
test	esi, esi
jnz	short loc_1000A2F6
mov	eax, [esp+3Ch+var_20]
cmp	[eax+170h], esi
jnz	short loc_1000A2F6
mov	[esp+3Ch+arg_8], 1
			
mov	ecx, [esp+3Ch+var_20]
push	ecx
call	CERT_DestroyCertificate
add	esp, 4
test	esi, esi
jnz	short loc_1000A292
mov	ebx, [esp+3Ch+var_24]
mov	edi, [esp+3Ch+var_28]
cmp	[esp+3Ch+arg_8], 0
jnz	short loc_1000A31C
cmp	edi, 1
jle	short loc_1000A31C
dec	edi
			
mov	edx, [esp+3Ch+var_2C]
push	ebx
mov	[ebp+4], edi
mov	[ebp+8], edx
call	sub_10050550
add	esp, 4
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
mov	ecx, [esp+2Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
mov	ebx, [esp+3Ch+var_24]
mov	esi, [esp+3Ch+var_2C]
			
mov	eax, [ebx]
test	eax, eax
jz	short loc_1000A374
mov	edi, ebx
push	eax
call	sub_1004B8F0
add	esp, 4
test	eax, eax
jz	short loc_1000A36A
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, [edi+4]
add	edi, 4
test	eax, eax
jnz	short loc_1000A354
push	ebx
call	sub_10050550
add	esp, 4
test	esi, esi
jz	short loc_1000A38C
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esp+3Ch+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
align 10h
public CERT_CertListFromCert
push	esi
push	edi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000A3E7
push	0Ch
push	esi
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_1000A3E7
push	0Ch
push	esi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi], eax
test	eax, eax
jnz	short loc_1000A3F6
			
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000A40C
mov	ecx, [esp+8+arg_0]
add	ecx, 3Ch
push	ecx
push	eax
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jns	short loc_1000A420
test	esi, esi
jz	short loc_1000A41B
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
mov	[edi+8], esi
mov	dword ptr [edi+4], 1
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public CERT_DupCertList
push	ecx
mov	eax, [esp+4+arg_0]
push	ebx
push	ebp
push	esi
mov	esi, [eax+4]
push	edi
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_1000A47E
push	0Ch
push	ebp
call	PORT_ArenaAlloc_Util
mov	ebx, eax
add	esp, 8
mov	[esp+14h+var_4], ebx
test	ebx, ebx
jz	short loc_1000A47E
lea	ecx, [esi+esi*2]
add	ecx, ecx
add	ecx, ecx
push	ecx
push	ebp
mov	[ebx+8], ebp
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1000A4A2
			
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
test	ebp, ebp
jz	short loc_1000A49A
push	0
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
mov	edx, [esp+14h+arg_0]
mov	[ebx], edi
mov	[ebx+4], esi
mov	ebx, [edx]
test	esi, esi
jle	short loc_1000A4CB
push	ebx
push	edi
push	ebp
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
js	short loc_1000A48B
dec	esi
add	edi, 0Ch
add	ebx, 0Ch
test	esi, esi
jg	short loc_1000A4B1
mov	eax, [esp+14h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
public CERT_DestroyCertificateList
mov	eax, [esp+arg_0]
mov	ecx, [eax+8]
push	0
push	ecx
call	PORT_FreeArena_Util
add	esp, 8
retn
align 10h
public CERT_FindUserCertsByUsage
sub	esp, 10h
push	ebp
push	esi
xor	ebp, ebp
call	ds:PR_Now
mov	ecx, [esp+18h+arg_0]
mov	[esp+18h+var_8], eax
mov	eax, [esp+18h+arg_10]
push	eax
push	2
push	ecx
mov	[esp+24h+var_4], edx
call	CERT_GetCertNicknames
mov	esi, eax
add	esp, 0Ch
mov	[esp+18h+var_10], esi
test	esi, esi
jz	loc_1000A690
push	ebx
mov	ebx, [esi+8]
test	ebx, ebx
jz	loc_1000A682
push	edi
mov	edi, [esi+0Ch]
jle	short loc_1000A5BB
lea	esp, [esp+0]
mov	eax, [esp+20h+arg_10]
test	eax, eax
jz	short loc_1000A56A
mov	edx, [edi]
push	eax		
push	edx		
call	PK11_FindCertFromNickname
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000A580
mov	eax, [edi]
mov	ecx, [esp+20h+arg_0]
push	eax		
push	ecx		
call	CERT_FindCertByNickname
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1000A5AF
mov	edx, [esp+20h+arg_C]
mov	eax, [esp+20h+var_4]
mov	ecx, [esp+20h+var_8]
push	edx
push	eax
mov	eax, [esp+28h+arg_0]
push	ecx
lea	edx, [esi+54h]
push	edx
push	eax
push	ebp
call	CERT_CreateSubjectCertList
mov	ebp, eax
push	ebp
call	CERT_FilterCertListForUserCerts
push	esi
call	CERT_DestroyCertificate
add	esp, 20h
dec	ebx
add	edi, 4
test	ebx, ebx
jg	short loc_1000A550
mov	esi, [esp+20h+var_10]
mov	ecx, [esp+20h+arg_4]
push	0
push	ecx
push	ebp
call	CERT_FilterCertListByUsage
add	esp, 0Ch
test	eax, eax
jnz	loc_1000A672
cmp	[esp+20h+arg_8], eax
jz	loc_1000A681
mov	ebx, [esi+8]
mov	edx, [esi+0Ch]
lea	eax, ds:0[ebx*4]
push	eax
mov	[esp+24h+var_8], edx
call	PORT_ZAlloc_Util
add	esp, 4
mov	[esp+20h+var_C], eax
test	eax, eax
jz	short loc_1000A672
mov	edi, [ebp+0]
cmp	edi, ebp
jz	short loc_1000A667
xor	esi, esi
test	ebx, ebx
jle	short loc_1000A655
lea	esp, [esp+0]
mov	ecx, [edi+8]
mov	edx, [ecx+154h]
mov	eax, [esp+20h+var_8]
mov	ecx, [eax+esi*4]
push	edx		
push	ecx		
call	sub_10009810
add	esp, 8
test	eax, eax
jnz	short loc_1000A635
inc	esi
cmp	esi, ebx
jl	short loc_1000A610
jmp	short loc_1000A655
mov	eax, [esp+20h+var_C]
cmp	dword ptr [eax+esi*4], 0
jz	short loc_1000A64C
push	edi
mov	edi, [edi]
call	CERT_RemoveCertListNode
add	esp, 4
jmp	short loc_1000A655
mov	dword ptr [eax+esi*4], 1
mov	edi, [edi]
			
cmp	esi, ebx
jnz	short loc_1000A65B
mov	edi, [edi]
cmp	edi, ebp
jnz	short loc_1000A606
mov	esi, [esp+20h+var_10]
mov	eax, [esp+20h+var_C]
push	eax
call	PORT_Free_Util
add	esp, 4
jmp	short loc_1000A681
			
test	ebp, ebp
jz	short loc_1000A681
push	ebp
call	CERT_DestroyCertList
add	esp, 4
xor	ebp, ebp
			
pop	edi
mov	edx, [esi]
push	0
push	edx
call	PORT_FreeArena_Util
add	esp, 8
pop	ebx
pop	esi
mov	eax, ebp
pop	ebp
add	esp, 10h
retn
align 10h
public CERT_CertTimesValid
			
push	1
call	ds:PR_Now
push	edx
push	eax
mov	eax, [esp+0Ch+arg_0]
push	eax
call	CERT_CheckCertValidTimes
add	esp, 10h
neg	eax
sbb	eax, eax
retn
align 10h
public CERT_VerifySignedDataWithPublicKey
			
sub	esp, 10h
mov	edx, [esp+10h+arg_4]
mov	[esp+10h+var_10], 0
test	edx, edx
jz	short loc_1000A751
mov	eax, [esp+10h+arg_0]
test	eax, eax
jz	short loc_1000A751
mov	ecx, [eax+24h]
mov	[esp+10h+var_C], ecx
mov	ecx, [eax+28h]
mov	[esp+10h+var_8], ecx
mov	ecx, [eax+2Ch]
add	ecx, 7
shr	ecx, 3
mov	[esp+10h+var_4], ecx
mov	ecx, [esp+10h+arg_8]
push	ecx
lea	ecx, [esp+14h+var_10]
push	ecx
lea	ecx, [eax+0Ch]
push	ecx
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	edx
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
call	VFY_VerifyDataWithAlgorithmID
add	esp, 1Ch
test	eax, eax
jnz	short loc_1000A761
mov	edx, [esp+10h+var_10]
lea	ecx, [esp+10h+arg_4]
push	ecx
push	edx
mov	[esp+18h+arg_4], eax
call	NSS_GetAlgorithmPolicy
add	esp, 8
test	eax, eax
jnz	short loc_1000A761
test	byte ptr [esp+10h+arg_4], 1
jnz	short loc_1000A761
push	0FFFFE0B0h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
add	esp, 10h
retn
			
push	0FFFFE89Dh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
			
add	esp, 10h
retn
align 10h
public CERT_VerifySignedDataWithPublicKeyInfo
mov	eax, [esp+arg_4]
push	esi
push	edi
push	eax
or	edi, 0FFFFFFFFh
call	SECKEY_ExtractPublicKey
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000A7A3
mov	ecx, [esp+8+arg_8]
mov	edx, [esp+8+arg_0]
push	ecx
push	esi
push	edx
call	CERT_VerifySignedDataWithPublicKey
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public CERT_VerifySignedData
			
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_8]
push	esi
mov	esi, [esp+4+arg_4]
push	edi
push	0
push	eax
push	ecx
push	esi
or	edi, 0FFFFFFFFh
call	CERT_CheckCertValidTimes
add	esp, 10h
test	eax, eax
jz	short loc_1000A7D7
or	eax, edi
pop	edi
pop	esi
retn
push	esi
call	CERT_ExtractPublicKey
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000A801
mov	edx, [esp+8+arg_10]
mov	eax, [esp+8+arg_0]
push	edx
push	esi
push	eax
call	CERT_VerifySignedDataWithPublicKey
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_14]
mov	ecx, [esp+arg_10]
mov	edx, [esp+arg_C]
push	eax
mov	eax, [esp+4+arg_8]
push	ecx
mov	ecx, [esp+8+arg_4]
push	edx
push	0
push	eax
push	ecx
call	sub_100411C0
add	esp, 18h
retn
align 10h
public CERT_FindCertIssuer
			
sub	esp, 20h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+20h+var_4], eax
push	ebx
mov	ebx, [esp+24h+arg_8]
push	ebp
mov	ebp, [esp+28h+arg_0]
push	esi
mov	esi, [esp+2Ch+arg_4]
push	edi
push	ebp
call	sub_1004B930
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1000A877
push	0FFFFE013h
jmp	loc_1000A93A
push	ebx
push	esi
push	0
call	sub_1004A1F0
mov	ecx, [esp+3Ch+arg_C]
mov	esi, eax
xor	eax, eax
mov	[esp+3Ch+var_10], eax
mov	[esp+3Ch+var_C], ecx
mov	[esp+3Ch+var_8], 1
mov	[esp+3Ch+var_20], eax
mov	[esp+3Ch+var_1C], eax
mov	[esp+3Ch+var_18], eax
call	sub_1004A850
mov	ebx, eax
call	sub_1004A860
push	eax
push	ebx
lea	edx, [esp+44h+var_14]
push	edx
push	0
push	2
lea	eax, [esp+50h+var_20]
push	eax
push	0
lea	ecx, [esp+58h+var_10]
push	ecx
push	esi
push	edi
call	sub_10046C40
push	esi
call	sub_10050550
add	esp, 38h
cmp	[esp+30h+var_14], 0
jnz	short loc_1000A924
cmp	[esp+30h+var_1C], 0
jnz	short loc_1000A8FA
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
mov	ecx, [esp+20h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 20h
retn
mov	edx, [esp+30h+var_20]
push	edx
call	sub_100461A0
mov	eax, [esp+34h+var_1C]
push	eax
call	sub_1004B8F0
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+20h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 20h
retn
mov	eax, [esp+30h+var_20]
test	eax, eax
jz	short loc_1000A935
push	eax
call	sub_100461A0
add	esp, 4
push	0FFFFE00Dh
call	PORT_SetError_Util
mov	ecx, [esp+34h+var_4]
add	esp, 4
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 20h
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 0Bh	
ja	short loc_1000A9B5 
jmp	ds:off_1000A9BC[eax*4] 
			
mov	eax, 80h	
xor	ecx, ecx
jmp	short loc_1000A99E
			
xor	ecx, ecx	
jmp	short loc_1000A999
			
mov	eax, 210h	
xor	ecx, ecx
jmp	short loc_1000A99E
			
mov	ecx, 1		
jmp	short loc_1000A999
			
mov	ecx, 2		
jmp	short loc_1000A999
			
mov	ecx, 3		
			
mov	eax, 10h
			
mov	edx, [esp+arg_4]
test	edx, edx
jz	short loc_1000A9A8
mov	[edx], eax
mov	eax, [esp+arg_8]
test	eax, eax
jz	short loc_1000A9B2
mov	[eax], ecx
xor	eax, eax
retn
			
			
or	eax, 0FFFFFFFFh	
retn
align 4
dd offset loc_1000A979	
dd offset loc_1000A97D
dd offset loc_1000A979
dd offset loc_1000A986
dd offset loc_1000A986
dd offset loc_1000A98D
dd offset loc_1000A9B5
dd offset loc_1000A994
dd offset loc_1000A9B5
dd offset loc_1000A994
dd offset loc_1000A994
align 10h
			
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	eax, [edi]
push	18h
push	eax
call	PORT_ArenaAlloc_Util
mov	esi, eax
xor	ebx, ebx
add	esp, 8
cmp	esi, ebx
jz	loc_1000AAB8
mov	ecx, [esp+0Ch+arg_4]
push	ecx
call	CERT_DupCertificate
mov	edx, [esp+10h+arg_8]
mov	ecx, [esp+10h+arg_C]
mov	[esi], eax
mov	eax, [esp+10h+arg_10]
mov	[esi+4], edx
mov	[esi+8], ecx
mov	[esi+0Ch], eax
mov	eax, [edi+0Ch]
add	esp, 4
cmp	eax, ebx
jnz	short loc_1000AA4E
mov	[edi+0Ch], esi
mov	[edi+8], esi
mov	[esi+14h], ebx
mov	[esi+10h], ebx
inc	dword ptr [edi+4]
pop	edi
pop	esi
pop	ebx
retn
cmp	ecx, [eax+8]
jb	short loc_1000AA69
mov	[esi+14h], eax
mov	ecx, [edi+0Ch]
mov	[ecx+10h], esi
mov	[edi+0Ch], esi
mov	[esi+10h], ebx
inc	dword ptr [edi+4]
pop	edi
pop	esi
pop	ebx
retn
mov	edx, [edi+8]
cmp	ecx, [edx+8]
jnb	short loc_1000AA90
mov	[esi+14h], ebx
mov	eax, [edi+8]
mov	[esi+10h], eax
mov	ecx, [edi+8]
mov	[ecx+14h], esi
inc	dword ptr [edi+4]
mov	[edi+8], esi
pop	edi
pop	esi
pop	ebx
retn
align 10h
			
cmp	ecx, [eax+8]
jnb	short loc_1000AAA3
mov	eax, [eax+14h]
cmp	eax, ebx
jnz	short loc_1000AA90
inc	dword ptr [edi+4]
pop	edi
pop	esi
pop	ebx
retn
mov	[esi+14h], eax
mov	edx, [eax+10h]
mov	[esi+10h], edx
mov	ecx, [eax+10h]
mov	[ecx+14h], esi
mov	[eax+10h], esi
inc	dword ptr [edi+4]
pop	edi
pop	esi
pop	ebx
retn
align 10h
sub	esp, 78h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+78h+var_4], eax
mov	eax, [esp+78h+arg_8]
mov	edx, [esp+78h+arg_14]
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+80h+arg_C]
mov	[esp+80h+var_20], eax
mov	eax, [esp+80h+arg_18]
push	esi
mov	[esp+84h+var_28], eax
mov	eax, [esp+84h+arg_20]
push	edi
mov	edi, [esp+88h+arg_1C]
mov	esi, ecx
mov	ecx, [esp+88h+arg_10]
mov	[esp+88h+var_40], ebp
mov	[esp+88h+var_54], ecx
mov	[esp+88h+var_50], edx
mov	[esp+88h+var_1C], edi
mov	[esp+88h+var_24], eax
mov	[esp+88h+var_70], ebx
mov	[esp+88h+var_78], ebx
mov	[esp+88h+var_3C], ebx
mov	[esp+88h+var_44], ebx
mov	[esp+88h+var_4C], ebx
mov	[esp+88h+var_60], ebx
mov	[esp+88h+var_34], ebx
mov	[esp+88h+var_68], ebx
mov	[esp+88h+var_30], 10h
mov	[esp+88h+var_58], ebx
cmp	eax, ebx
jz	short loc_1000AB55
mov	[eax], ebx
lea	ecx, [esp+88h+var_38]
push	ecx
lea	edx, [esp+8Ch+var_5C]
push	edx
push	1
push	ebp
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jz	short loc_1000AB7E
cmp	edi, ebx
jz	loc_1000B21E
mov	[esp+88h+var_5C], ebx
mov	[esp+88h+var_38], ebx
cmp	ebp, 0Bh	
ja	short loc_1000ABB2 
movzx	eax, ss:byte_1000B300[ebp]
jmp	ds:off_1000B2F8[eax*4] 
			
lea	ecx, [esp+88h+var_74] 
push	ecx
lea	edx, [esp+8Ch+var_64]
push	edx
push	ebp
call	sub_1000A960
add	esp, 0Ch
test	eax, eax
jz	short loc_1000ABC6
cmp	edi, ebx
jz	loc_1000B21E
jmp	short loc_1000ABBE
			
			
cmp	edi, ebx	
jz	loc_1000B21E
mov	[esp+88h+var_38], ebx
mov	[esp+88h+var_74], ebx
mov	[esp+88h+var_64], ebx
push	esi
call	CERT_DupCertificate
add	esp, 4
mov	[esp+88h+var_78], eax
cmp	eax, ebx
jz	loc_1000B21E
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+88h+var_60], eax
cmp	eax, ebx
jz	loc_1000B21E
push	40h
call	PORT_ZAlloc_Util
add	esp, 4
mov	[esp+88h+var_68], eax
cmp	eax, ebx
jz	loc_1000B21E
xor	esi, esi
xor	ebp, ebp
mov	[esp+88h+var_6C], ebp
jmp	short loc_1000AC16
xor	ebx, ebx
mov	[esp+88h+var_48], ebx
cmp	esi, ebx
jnz	loc_1000ACCC
cmp	ebp, ebx
jnz	short loc_1000AC31
mov	eax, 1
cmp	[esp+88h+var_40], eax
jz	short loc_1000AC33
xor	eax, eax
mov	ecx, [esp+88h+var_78]
push	eax
mov	eax, [esp+8Ch+var_60]
push	eax
push	ecx
call	CERT_GetConstrainedCertificateNames
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_1000B21E
push	ebp
call	sub_10042820
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_1000B21E
mov	edx, [esp+88h+var_58]
lea	ebx, [esi+edx]
cmp	[esp+88h+var_30], ebx
jg	short loc_1000AC95
mov	ecx, [esp+88h+var_68]
lea	eax, [ebx+ebx]
mov	[esp+88h+var_30], eax
add	eax, eax
add	eax, eax
push	eax
push	ecx
call	PORT_Realloc_Util
add	esp, 8
test	eax, eax
jz	loc_1000B21E
mov	[esp+88h+var_68], eax
test	esi, esi
jle	short loc_1000ACB0
mov	eax, [esp+88h+var_58]
mov	edx, [esp+88h+var_68]
lea	edi, [edx+eax*4]
mov	eax, [esp+88h+var_78]
mov	ecx, esi
rep stosd
mov	edi, [esp+88h+var_1C]
mov	ecx, [esp+88h+var_34]
push	ebp
push	ecx
mov	[esp+90h+var_58], ebx
call	sub_10042640
mov	ebp, [esp+90h+var_6C]
add	esp, 8
mov	[esp+88h+var_34], eax
xor	ebx, ebx
mov	edx, [esp+88h+var_78]
test	byte ptr [edx+174h], 1
jz	short loc_1000AD04
push	0FFFFE029h
call	PORT_SetError_Util
add	esp, 4
cmp	edi, ebx
jz	loc_1000B21E
push	ebx
push	ebp
call	PORT_GetError_Util
push	eax
mov	eax, [esp+94h+var_78]
push	eax
push	edi
call	sub_1000A9F0
add	esp, 14h
mov	ecx, [esp+88h+var_40]
mov	edx, [esp+88h+var_50]
mov	eax, [esp+88h+var_54]
mov	esi, [esp+88h+var_78]
push	ecx
push	edx
push	eax
push	esi
call	CERT_FindCertIssuer
mov	ebx, eax
add	esp, 10h
mov	[esp+88h+var_70], ebx
test	ebx, ebx
jz	loc_1000B27F
cmp	[esp+88h+arg_4], 0
jz	loc_1000ADCE
mov	ecx, [esp+88h+var_28]
mov	edx, [esp+88h+var_50]
mov	eax, [esp+88h+var_54]
push	ecx
push	edx
push	eax
lea	ecx, [esi+0Ch]
push	ebx
push	ecx
call	CERT_VerifySignedData
add	esp, 14h
test	eax, eax
jz	short loc_1000ADCE
mov	eax, [esp+88h+var_20]
test	eax, eax
jz	short loc_1000AD6A
mov	dword ptr [eax], 1
call	PORT_GetError_Util
cmp	eax, 0FFFFE00Bh
jnz	short loc_1000AD9A
push	0FFFFE01Eh
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
lea	edx, [ebp+1]
push	0
push	edx
call	PORT_GetError_Util
push	eax
push	ebx
jmp	short loc_1000ADC5
call	PORT_GetError_Util
cmp	eax, 0FFFFE0B0h
jz	short loc_1000ADB3
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
push	0
push	ebp
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
			
lea	eax, [esp+88h+var_18]
push	eax
push	ebx
call	sub_1003E930
add	esp, 8
test	eax, eax
jz	short loc_1000AE14
call	PORT_GetError_Util
cmp	eax, 0FFFFE023h
jz	short loc_1000AE0A
test	edi, edi
jz	loc_1000B21E
lea	ecx, [ebp+1]
push	0
push	ecx
call	PORT_GetError_Util
push	eax
push	ebx
push	edi
call	sub_1000A9F0
add	esp, 14h
mov	[esp+88h+var_2C], 0
jmp	short loc_1000AE88
cmp	[esp+88h+var_18], 0
jnz	short loc_1000AE46
push	0FFFFE024h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
lea	edx, [ebp+1]
push	0
push	edx
call	PORT_GetError_Util
push	eax
push	ebx
push	edi
call	sub_1000A9F0
add	esp, 14h
mov	eax, [esp+88h+var_14]
mov	esi, eax
mov	[esp+88h+var_2C], 1
test	eax, eax
js	short loc_1000AE88
cmp	[esp+88h+var_4C], eax
jle	short loc_1000AE88
push	0FFFFE025h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
lea	eax, [ebp+1]
push	esi
push	eax
call	PORT_GetError_Util
push	eax
push	ebx
push	edi
call	sub_1000A9F0
add	esp, 14h
			
mov	edx, [esp+88h+var_60]
mov	eax, [esp+88h+var_68]
lea	ecx, [esp+88h+var_3C]
push	ecx
mov	ecx, [esp+8Ch+var_34]
push	edx
push	eax
push	ecx
push	ebx
call	sub_100431A0
add	esp, 14h
test	eax, eax
jnz	loc_1000B2CD
cmp	[esp+88h+var_3C], eax
jnz	loc_1000B2CD
mov	edx, [esp+88h+var_28]
mov	eax, [esp+88h+var_50]
mov	ecx, [esp+88h+var_54]
mov	esi, [esp+88h+var_78]
push	edx
mov	edx, [esp+8Ch+arg_0]
push	eax
push	ecx
push	ebx
push	esi
push	edx
call	sub_1000A810
add	esp, 18h
cmp	eax, 0FFFFFFFFh
jnz	short loc_1000AEF9
mov	eax, [esp+88h+var_24]
test	eax, eax
jz	short loc_1000AEEF
mov	dword ptr [eax], 1
test	edi, edi
jz	loc_1000B21E
jmp	short loc_1000AF18
cmp	eax, 0FFFFFFFEh
jnz	short loc_1000AF2B
mov	eax, [esp+88h+var_24]
mov	[esp+88h+var_44], 0FFFFFFFFh
test	eax, eax
jz	short loc_1000AF14
mov	dword ptr [eax], 1
test	edi, edi
jz	short loc_1000AF2B
push	0
push	ebp
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
			
lea	eax, [esp+88h+var_10]
push	eax
push	ebx
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	loc_1000B10A
mov	eax, [esp+88h+var_40]
cmp	eax, 0Bh
jz	loc_1000B02C
cmp	eax, 0Ah
jz	loc_1000B02C
cmp	eax, 8
jnz	loc_1000B00C
mov	ecx, [esp+88h+var_78]
mov	eax, [ecx+13Ch]
test	al, 2
jz	short loc_1000AF7C
mov	ebx, [esp+88h+var_C]
mov	[esp+88h+var_74], 1
jmp	short loc_1000AFA8
test	al, 4
jz	short loc_1000AF8E
mov	ebx, [esp+88h+var_10]
mov	[esp+88h+var_74], 0
jmp	short loc_1000AFA8
mov	[esp+88h+var_74], 2
xor	ebx, ebx
cmp	[esp+88h+var_74], 2
setnz	bl
dec	ebx
and	ebx, [esp+88h+var_8]
			
mov	eax, [esp+88h+var_64]
mov	edx, ebx
and	edx, eax
cmp	edx, eax
jz	loc_1000B29F
test	bl, 8
jz	short loc_1000AFC5
mov	[esp+88h+var_48], 1
test	bl, 1
jz	loc_1000B0F7
test	bl, 12h
jnz	loc_1000B0F7
push	0FFFFE014h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
mov	eax, [esp+88h+var_6C]
inc	eax
push	ebx
push	eax
call	PORT_GetError_Util
mov	ecx, [esp+90h+var_70]
push	eax
push	ecx
push	edi
call	sub_1000A9F0
add	esp, 14h
jmp	loc_1000B0F7
mov	eax, [esp+88h+var_74]
test	eax, eax
jnz	short loc_1000B01A
mov	ebx, [esp+88h+var_10]
jmp	short loc_1000AFA8
cmp	eax, 1
jnz	loc_1000AF96
mov	ebx, [esp+88h+var_C]
jmp	loc_1000AFA8
			
mov	ebp, [esp+88h+var_8]
mov	edx, [esp+88h+var_64]
xor	ecx, ecx
lea	esi, [ecx+1]
lea	esp, [esp+0]
test	ecx, ecx
jnz	short loc_1000B04A
mov	eax, [esp+88h+var_10]
jmp	short loc_1000B05F
cmp	ecx, esi
jnz	short loc_1000B054
mov	eax, [esp+88h+var_C]
jmp	short loc_1000B05F
xor	eax, eax
cmp	ecx, 2
setnz	al
dec	eax
and	eax, ebp
			
mov	ebx, eax
and	ebx, edx
cmp	ebx, edx
jz	loc_1000B29F
test	al, 8
jz	short loc_1000B073
mov	[esp+88h+var_48], esi
add	ecx, esi
cmp	ecx, 3
jl	short loc_1000B040
xor	eax, eax
mov	[esp+88h+var_74], eax
jmp	short loc_1000B086
mov	eax, [esp+88h+var_74]
test	eax, eax
jnz	short loc_1000B090
mov	ebx, [esp+88h+var_10]
jmp	short loc_1000B0A8
cmp	eax, 1
jnz	short loc_1000B09B
mov	ebx, [esp+88h+var_C]
jmp	short loc_1000B0A8
xor	ebx, ebx
cmp	[esp+88h+var_74], 2
setnz	bl
dec	ebx
and	ebx, ebp
			
test	bl, 1
jz	short loc_1000B0E9
test	bl, 12h
jnz	short loc_1000B0E9
push	0FFFFE014h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
mov	edx, [esp+88h+var_6C]
inc	edx
push	ebx
push	edx
call	PORT_GetError_Util
push	eax
mov	eax, [esp+94h+var_70]
push	eax
push	edi
call	sub_1000A9F0
mov	ebp, [esp+9Ch+var_8]
add	esp, 14h
			
mov	eax, [esp+88h+var_74]
inc	eax
mov	[esp+88h+var_74], eax
cmp	eax, 3
jl	short loc_1000B082
			
cmp	[esp+88h+var_48], 0
mov	ebp, [esp+88h+var_6C]
mov	ebx, [esp+88h+var_70]
jnz	loc_1000B19D
mov	eax, [esp+88h+var_2C]
test	eax, eax
jz	short loc_1000B11E
test	dword ptr [ebx+13Ch], 4007h
jz	short loc_1000B12E
mov	eax, [ebx+13Ch]
and	eax, [esp+88h+var_38]
neg	eax
sbb	eax, eax
neg	eax
test	eax, eax
jnz	short loc_1000B15D
push	0FFFFE024h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
lea	ecx, [ebp+1]
push	0
push	ecx
call	PORT_GetError_Util
push	eax
push	ebx
push	edi
call	sub_1000A9F0
add	esp, 14h
mov	edx, [esp+88h+var_5C]
push	edx
push	ebx
call	sub_1003C090
add	esp, 8
test	eax, eax
jz	short loc_1000B19D
push	0FFFFE05Ah
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
mov	eax, [esp+88h+var_5C]
push	eax
lea	ecx, [ebp+1]
push	ecx
call	PORT_GetError_Util
push	eax
push	ebx
push	edi
call	sub_1000A9F0
add	esp, 14h
			
cmp	dword ptr [ebx+170h], 0
jnz	loc_1000B2A8
lea	edx, [ebx+54h]
push	edx
lea	eax, [ebx+48h]
push	eax
call	SECITEM_ItemsAreEqual_Util
add	esp, 8
test	eax, eax
jz	short loc_1000B1CB
cmp	dword ptr [ebx+5Ch], 0
jbe	short loc_1000B1CB
mov	esi, 1
jmp	short loc_1000B1D1
			
xor	esi, esi
inc	[esp+88h+var_4C]
mov	ecx, [esp+88h+var_78]
push	ecx
call	CERT_DestroyCertificate
inc	ebp
add	esp, 4
mov	[esp+88h+var_78], ebx
mov	[esp+88h+var_70], 0
mov	[esp+88h+var_6C], ebp
cmp	ebp, 14h
jl	loc_1000AC14
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	short loc_1000B21E
push	0
push	ebp
call	PORT_GetError_Util
push	eax
mov	eax, ebx
push	eax
			
push	edi
call	sub_1000A9F0
add	esp, 14h
			
or	esi, 0FFFFFFFFh
mov	eax, [esp+88h+var_68]
test	eax, eax
jz	short loc_1000B232
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+88h+var_70]
test	eax, eax
jz	short loc_1000B243
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, [esp+88h+var_78]
test	eax, eax
jz	short loc_1000B254
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, [esp+88h+var_60]
test	eax, eax
jz	short loc_1000B267
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esp+88h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 78h
retn
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	short loc_1000B21E
push	0
push	ebp
call	PORT_GetError_Util
push	eax
push	esi
jmp	loc_1000B215
			
mov	esi, [esp+88h+var_44]
jmp	loc_1000B221
push	0FFFFE014h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
inc	ebp
push	0
push	ebp
call	PORT_GetError_Util
push	eax
push	ebx
jmp	loc_1000B215
			
push	0FFFFE070h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000B21E
inc	ebp
push	0
push	ebp
call	PORT_GetError_Util
mov	edx, [esp+90h+var_3C]
push	eax
push	edx
jmp	loc_1000B215
align 4
dd offset loc_1000ABB2	
db	0,     0,     0,     1 
db	0,     1,     0,     0
align 10h
			
call	CERT_GetUsePKIXForValidation
test	eax, eax
mov	eax, [esp+arg_24]
push	eax
jz	short loc_1000B34F
mov	ecx, [esp+4+arg_C]
mov	edx, [esp+4+arg_20]
mov	eax, [esp+4+arg_1C]
push	ecx
mov	ecx, [esp+8+arg_18]
push	edx
mov	edx, [esp+0Ch+arg_14]
push	eax
mov	eax, [esp+10h+arg_10]
push	ecx
mov	ecx, [esp+14h+arg_8]
push	edx
mov	edx, [esp+18h+arg_4]
push	eax
push	ecx
push	edx
call	sub_1000DA60
add	esp, 24h
retn
mov	ecx, [esp+4+arg_20]
mov	edx, [esp+4+arg_1C]
mov	eax, [esp+4+arg_18]
push	ecx
mov	ecx, [esp+8+arg_14]
push	edx
mov	edx, [esp+0Ch+arg_10]
push	eax
mov	eax, [esp+10h+arg_C]
push	ecx
mov	ecx, [esp+14h+arg_8]
push	edx
mov	edx, [esp+18h+arg_0]
push	eax
push	ecx
mov	ecx, [esp+20h+arg_4]
push	edx
call	sub_1000AAC0
add	esp, 24h
retn
align 10h
mov	eax, [esp+arg_1C]
mov	ecx, [esp+arg_18]
mov	edx, [esp+arg_14]
push	0
push	eax
mov	eax, [esp+8+arg_10]
push	ecx
mov	ecx, [esp+0Ch+arg_C]
push	edx
mov	edx, [esp+10h+arg_8]
push	eax
mov	eax, [esp+14h+arg_4]
push	ecx
mov	ecx, [esp+18h+arg_0]
push	0
push	edx
push	eax
push	ecx
call	sub_1000B310
add	esp, 28h
retn
align 10h
public CERT_VerifyCACertForUsage
sub	esp, 3Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+3Ch+var_4], eax
mov	eax, [esp+3Ch+arg_10]
mov	ecx, [esp+3Ch+arg_14]
mov	edx, [esp+3Ch+arg_18]
push	ebx
mov	ebx, [esp+40h+arg_C]
push	ebp
push	esi
mov	esi, [esp+48h+arg_1C]
push	edi
mov	edi, [esp+4Ch+arg_4]
mov	[esp+4Ch+var_28], eax
lea	eax, [esp+4Ch+var_34]
push	eax
mov	[esp+50h+var_24], ecx
lea	ecx, [esp+50h+var_30]
push	ecx
push	1
xor	ebp, ebp
push	ebx
mov	[esp+5Ch+var_20], ebx
mov	[esp+5Ch+var_1C], edx
mov	[esp+5Ch+var_2C], ebp
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jz	short loc_1000B439
cmp	esi, ebp
jz	loc_1000B6B4
mov	[esp+4Ch+var_30], ebp
mov	[esp+4Ch+var_34], ebp
cmp	ebx, 0Ah	
ja	short loc_1000B46D 
movzx	edx, ds:byte_1000B70C[ebx]
jmp	ds:off_1000B704[edx*4] 
			
lea	eax, [esp+4Ch+var_3C] 
push	eax
lea	ecx, [esp+50h+var_38]
push	ecx
push	ebx
call	sub_1000A960
add	esp, 0Ch
test	eax, eax
jz	short loc_1000B481
cmp	esi, ebp
jz	loc_1000B6B4
jmp	short loc_1000B479
			
			
cmp	esi, ebp	
jz	loc_1000B6B4
mov	[esp+4Ch+var_34], ebp
mov	[esp+4Ch+var_3C], ebp
mov	[esp+4Ch+var_38], ebp
lea	edx, [esp+4Ch+var_18]
push	edx
push	edi
call	sub_1003E930
add	esp, 8
test	eax, eax
jz	short loc_1000B4BB
call	PORT_GetError_Util
cmp	eax, 0FFFFE023h
jz	short loc_1000B4ED
cmp	esi, ebp
jz	loc_1000B6B4
push	ebp
push	ebp
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
jmp	short loc_1000B4ED
cmp	[esp+4Ch+var_18], ebp
jnz	short loc_1000B4E8
push	0FFFFE024h
call	PORT_SetError_Util
add	esp, 4
cmp	esi, ebp
jz	loc_1000B6B4
push	ebp
push	ebp
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
mov	ebp, 1
			
lea	eax, [esp+4Ch+var_10]
push	eax
push	edi
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	loc_1000B605
cmp	ebx, 0Ah
jnz	short loc_1000B583
mov	ebp, [esp+4Ch+var_24]
push	ebx
mov	ebx, [esp+50h+var_28]
push	ebp
push	ebx
push	edi
call	CERT_FindCertIssuer
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	short loc_1000B56E
mov	ecx, [esp+4Ch+var_1C]
mov	edx, [esp+4Ch+arg_0]
push	ecx
push	ebp
push	ebx
push	esi
push	edi
push	edx
call	sub_1000A810
add	esp, 18h
test	eax, eax
jz	short loc_1000B565
push	0FFFFE00Ch
call	PORT_SetError_Util
push	esi
call	CERT_DestroyCertificate
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
push	esi
call	CERT_DestroyCertificate
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
mov	eax, [esp+4Ch+var_3C]
test	eax, eax
jnz	short loc_1000B591
mov	ebx, [esp+4Ch+var_10]
jmp	short loc_1000B5AB
cmp	eax, 1
jnz	short loc_1000B59C
mov	ebx, [esp+4Ch+var_C]
jmp	short loc_1000B5AB
xor	ebx, ebx
cmp	[esp+4Ch+var_3C], 2
setnz	bl
dec	ebx
and	ebx, [esp+4Ch+var_8]
			
mov	eax, [esp+4Ch+var_38]
mov	ecx, ebx
and	ecx, eax
cmp	ecx, eax
jz	short loc_1000B56E
test	bl, 8
jz	short loc_1000B5C4
mov	[esp+4Ch+var_2C], 1
test	bl, 1
jz	short loc_1000B5F6
test	bl, 12h
jnz	short loc_1000B5F6
push	0FFFFE015h
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	loc_1000B6B4
push	ebx
push	0
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
			
cmp	[esp+4Ch+var_2C], 0
mov	ebx, [esp+4Ch+var_20]
jnz	loc_1000B686
test	ebp, ebp
jz	short loc_1000B615
test	dword ptr [edi+13Ch], 4007h
jz	short loc_1000B625
mov	ebp, [edi+13Ch]
and	ebp, [esp+4Ch+var_34]
neg	ebp
sbb	ebp, ebp
neg	ebp
test	ebp, ebp
jnz	short loc_1000B64C
push	0FFFFE024h
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_1000B6B4
push	ebp
push	ebp
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
mov	edx, [esp+4Ch+var_30]
push	edx
push	edi
call	sub_1003C090
add	esp, 8
test	eax, eax
jz	short loc_1000B686
push	0FFFFE05Ah
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_1000B6B4
mov	eax, [esp+4Ch+var_30]
push	eax
push	0
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
			
cmp	dword ptr [edi+170h], 0
jz	short loc_1000B6CA
push	0FFFFE014h
call	PORT_SetError_Util
add	esp, 4
test	esi, esi
jz	short loc_1000B6B4
push	0
push	0
call	PORT_GetError_Util
push	eax
push	edi
push	esi
call	sub_1000A9F0
add	esp, 14h
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
mov	ecx, [esp+4Ch+var_1C]
mov	edx, [esp+4Ch+var_24]
mov	eax, [esp+4Ch+var_28]
push	esi
push	ecx
mov	ecx, [esp+54h+arg_8]
push	edx
mov	edx, [esp+58h+arg_0]
push	eax
push	ebx
push	ecx
push	edi
push	edx
call	sub_1000B390
mov	ecx, [esp+6Ch+var_4]
add	esp, 20h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
align 4
dd offset loc_1000B46D	
db	0,     0,     0,     1 
db	0,     1,     0
align 10h
			
sub	esp, 10h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+10h+var_4], eax
mov	eax, [esp+10h+arg_0]
push	ebx
push	esi
mov	esi, [esp+18h+arg_C]
push	edi
mov	edi, [esp+1Ch+arg_8]
lea	ecx, [esp+1Ch+var_10]
push	ecx
mov	dword ptr [edi], 0
push	eax
mov	dword ptr [esi], 0
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_1000B789 
mov	eax, [esp+1Ch+arg_4]
cmp	eax, 0Bh	
ja	short loc_1000B789 
mov	ebx, [esp+1Ch+var_8]
mov	edx, [esp+1Ch+var_C]
mov	ecx, [esp+1Ch+var_10]
jmp	ds:off_1000B87C[eax*4] 
			
mov	eax, [esp+1Ch+var_10] 
			
test	al, 1
jz	short loc_1000B789 
test	al, 2
jz	short loc_1000B7A9
			
mov	dword ptr [esi], 1
			
pop	edi		
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
mov	eax, [esp+1Ch+var_10] 
test	al, 1
jz	short loc_1000B789 
test	al, 2
jnz	short loc_1000B789 
mov	[edi], eax
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
mov	eax, [esp+1Ch+var_10] 
test	al, 1
jz	short loc_1000B789 
test	al, 12h
jnz	short loc_1000B789 
mov	[edi], eax
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
mov	eax, [esp+1Ch+var_C] 
jmp	short loc_1000B77B
			
mov	eax, [esp+1Ch+var_8] 
jmp	short loc_1000B77B
			
mov	eax, ecx	
and	eax, 18h
cmp	al, 18h
jz	short loc_1000B783
mov	eax, edx
and	eax, 18h
cmp	al, 18h
jz	short loc_1000B783
mov	eax, ebx
and	eax, 18h
cmp	al, 18h
jz	loc_1000B783
			
test	cl, 1		
jz	short loc_1000B82F
test	cl, 12h
jnz	short loc_1000B82F
mov	[edi], ecx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
test	dl, 1
jz	short loc_1000B850 
test	dl, 12h
jnz	short loc_1000B850 
mov	[edi], edx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
test	bl, 1		
jz	loc_1000B789	
test	bl, 12h
jnz	loc_1000B789	
mov	ecx, [esp+1Ch+var_4]
mov	[edi], ebx
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 10h
retn
align 4
dd offset loc_1000B777	
dd offset loc_1000B79D
dd offset loc_1000B7C0
dd offset loc_1000B7E3
dd offset loc_1000B7E3
dd offset loc_1000B7E9
dd offset loc_1000B80E
dd offset loc_1000B7EF
dd offset loc_1000B850
dd offset loc_1000B7EF
dd offset loc_1000B80E
align 10h
public CERT_VerifyCertificate
			
sub	esp, 24h
mov	edx, [esp+24h+arg_C]
push	ebx
push	ebp
xor	ebp, ebp
mov	eax, edx
or	eax, [esp+2Ch+arg_10]
push	esi
push	edi
mov	[esp+34h+var_C], ebp
mov	[esp+34h+var_1C], ebp
mov	[esp+34h+var_18], ebp
mov	[esp+34h+var_10], ebp
mov	[esp+34h+var_14], ebp
jnz	short loc_1000B8E1
mov	[esp+34h+var_1C], 1
mov	ebx, [esp+34h+arg_24]
cmp	ebx, ebp
jz	short loc_1000B8F0
mov	[ebx], ebp
mov	[ebx+4], ebp
jmp	short loc_1000B8F4
mov	[esp+34h+var_1C], ebp
mov	eax, edx
and	eax, 2
xor	ecx, ecx
or	eax, ecx
mov	[esp+34h+arg_24], ebp
jnz	short loc_1000B90C
mov	eax, edx
and	eax, 4
or	eax, ecx
jz	short loc_1000B911
mov	eax, 1
mov	ecx, [esp+34h+arg_18]
mov	edx, [esp+34h+arg_14]
mov	esi, [esp+34h+arg_4]
push	eax
push	ecx
push	edx
push	esi
call	CERT_CheckCertValidTimes
mov	edi, [esp+44h+arg_20]
add	esp, 10h
cmp	eax, ebp
jz	short loc_1000B952
or	ecx, 0FFFFFFFFh
mov	[esp+34h+arg_24], ecx
cmp	edi, ebp
jz	loc_1000BC2D
push	eax
push	ebp
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
push	esi
call	sub_1003E510
mov	eax, [esi+13Ch]
add	esp, 4
mov	[esp+34h+var_8], eax
mov	edi, 1
lea	ebx, [ebx+0]
mov	eax, [esp+34h+arg_24]
test	eax, eax
jz	short loc_1000B986
test	ebx, ebx
jnz	short loc_1000B986
cmp	[esp+34h+arg_20], ebx
jz	loc_1000BC2F
			
mov	eax, edi
cdq
mov	ecx, eax
and	ecx, [esp+34h+arg_C]
mov	esi, edx
and	esi, [esp+34h+arg_10]
or	ecx, esi
jz	short loc_1000B9A0
mov	esi, 1
jmp	short loc_1000B9AC
xor	esi, esi
cmp	[esp+34h+var_1C], esi
jz	loc_1000BC12	
xor	ecx, ecx
cmp	ebx, ecx
jz	short loc_1000B9B7
or	[ebx], eax
or	[ebx+4], edx
cmp	ebp, 0Bh	
ja	loc_1000BBEF	
movzx	edx, ss:byte_1000BC40[ebp]
jmp	ds:off_1000BC38[edx*4] 
			
lea	eax, [esp+34h+var_20] 
push	eax
lea	ecx, [esp+38h+var_24]
push	ecx
push	0
push	ebp
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jz	short loc_1000B9F8
xor	eax, eax
mov	[esp+34h+var_24], eax
mov	[esp+34h+var_20], eax
cmp	ebx, eax
jmp	loc_1000BBF9
mov	edx, [esp+34h+var_24]
mov	eax, [esp+34h+arg_4]
push	edx
push	eax
call	sub_1003C090
add	esp, 8
test	eax, eax
jz	short loc_1000BA4D
cmp	esi, 1
jnz	short loc_1000BA20
push	0FFFFE05Ah
call	PORT_SetError_Util
add	esp, 4
cmp	[esp+34h+arg_20], 0
jz	short loc_1000BA46
mov	ecx, [esp+34h+var_24]
push	ecx
push	0
call	PORT_GetError_Util
mov	edx, [esp+3Ch+arg_4]
push	eax
mov	eax, [esp+40h+arg_20]
push	edx
push	eax
call	sub_1000A9F0
add	esp, 14h
			
test	ebx, ebx
jmp	loc_1000BBF9
mov	ecx, [esp+34h+var_8]
test	[esp+34h+var_20], ecx
jnz	short loc_1000BA96
cmp	esi, 1
jnz	short loc_1000BA69
push	0FFFFE05Bh
call	PORT_SetError_Util
add	esp, 4
cmp	[esp+34h+arg_20], 0
jz	short loc_1000BA46
mov	edx, [esp+34h+var_20]
push	edx
push	0
call	PORT_GetError_Util
mov	ecx, [esp+3Ch+arg_20]
push	eax
mov	eax, [esp+40h+arg_4]
push	eax
push	ecx
call	sub_1000A9F0
add	esp, 14h
test	ebx, ebx
jmp	loc_1000BBF9
mov	ecx, [esp+34h+arg_4]
lea	edx, [esp+34h+var_14]
push	edx
lea	eax, [esp+38h+var_4]
push	eax
push	ebp
push	ecx
call	sub_1000B720
add	esp, 10h
cmp	eax, 0FFFFFFFFh
jnz	short loc_1000BAD6
cmp	esi, 1
jnz	short loc_1000BAC5
push	0FFFFE015h
call	PORT_SetError_Util
add	esp, 4
cmp	[esp+34h+arg_20], 0
jz	loc_1000BA46
mov	edx, [esp+34h+var_4]
jmp	short loc_1000BA74
cmp	[esp+34h+var_14], 0
jnz	loc_1000BC12	
mov	ecx, 1
cmp	[esp+34h+var_18], ecx
jz	loc_1000BBCF
cmp	[esp+34h+var_10], ecx
jz	loc_1000BBCF
mov	eax, [esp+34h+arg_20]
mov	ecx, [esp+34h+arg_1C]
lea	edx, [esp+34h+var_18]
push	edx
mov	edx, [esp+38h+arg_18]
push	eax
mov	eax, [esp+3Ch+arg_14]
push	ecx
push	edx
mov	edx, [esp+44h+arg_8]
push	eax
mov	eax, [esp+48h+arg_4]
push	ebp
lea	ecx, [esp+4Ch+var_10]
push	ecx
mov	ecx, [esp+50h+arg_0]
push	edx
push	eax
push	ecx
call	sub_1000B310
add	esp, 28h
test	eax, eax
jnz	loc_1000BA46
cmp	[esp+34h+var_C], eax
jnz	loc_1000BC12	
mov	edx, [esp+34h+arg_0]
push	edx
mov	[esp+38h+var_C], 1
call	PK11_IsReadOnly
add	esp, 4
cmp	[esp+34h+arg_C], 400h
jnz	short loc_1000BB6C
cmp	[esp+34h+arg_10], 0
jz	loc_1000BC12	
test	eax, eax
jz	loc_1000BC12	
mov	eax, [eax]
test	eax, eax
jz	loc_1000BC12	
mov	ecx, [esp+34h+arg_1C]
mov	edx, [esp+34h+arg_18]
push	ecx
mov	ecx, [esp+38h+arg_14]
push	edx
mov	edx, [esp+3Ch+arg_4]
push	ecx
mov	ecx, [esp+40h+arg_0]
push	edx
push	ecx
call	eax
add	esp, 14h
test	eax, eax
jz	short loc_1000BC12 
cmp	[esp+34h+arg_20], 0
jz	short loc_1000BBC3
push	0
push	0
call	PORT_GetError_Util
mov	edx, [esp+3Ch+arg_4]
push	eax
mov	eax, [esp+40h+arg_20]
push	edx
push	eax
call	sub_1000A9F0
add	esp, 14h
mov	[esp+34h+var_18], 1
test	ebx, ebx
jmp	short loc_1000BBF9
			
test	ebx, ebx
jz	short loc_1000BBDD
mov	eax, edi
not	eax
cdq
and	[ebx], eax
and	[ebx+4], edx
cmp	esi, ecx
jnz	short loc_1000BBE9
mov	[esp+34h+arg_24], 0FFFFFFFFh
add	edi, edi
add	ebp, ecx
jmp	short loc_1000BC15
mov	[esp+34h+var_24], ecx 
mov	[esp+34h+var_20], ecx
cmp	ebx, ecx
			
jz	short loc_1000BC05
mov	eax, edi
not	eax
cdq
and	[ebx], eax
and	[ebx+4], edx
cmp	esi, 1
jnz	short loc_1000BC12 
mov	[esp+34h+arg_24], 0FFFFFFFFh
			
add	edi, edi	
inc	ebp
cmp	edi, 800h
jle	loc_1000B970
mov	eax, [esp+34h+arg_24]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
mov	eax, ecx
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
align 4
dd offset loc_1000BC12	
db	0,     0,     0,     1 
db	1,     1,     0,     1
align 10h
			
sub	esp, 10h
push	ebx
mov	ebx, [esp+14h+arg_C]
push	ebp
push	esi
push	edi
cmp	ebx, 1
jz	short loc_1000BC69
cmp	ebx, 2
jz	short loc_1000BC69
xor	eax, eax
jmp	short loc_1000BC6E
			
mov	eax, 1
mov	ecx, [esp+20h+arg_10]
mov	esi, [esp+20h+arg_4]
push	eax
mov	eax, [esp+24h+arg_14]
push	eax
push	ecx
push	esi
call	CERT_CheckCertValidTimes
mov	edi, [esp+30h+arg_20]
add	esp, 10h
test	eax, eax
jz	short loc_1000BCA9
test	edi, edi
jz	loc_1000BE64
push	eax
push	0
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
push	esi
call	sub_1003E510
mov	ebp, [esi+13Ch]
add	esp, 4
cmp	ebx, 0Bh	
ja	short loc_1000BCE4 
movzx	edx, ds:byte_1000BE88[ebx]
jmp	ds:off_1000BE7C[edx*4] 
			
lea	eax, [esp+20h+var_C] 
push	eax
lea	ecx, [esp+24h+var_10]
push	ecx
push	0
push	ebx
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jz	short loc_1000BCF6
			
			
xor	eax, eax	
cmp	edi, eax
jz	loc_1000BE64
mov	[esp+20h+var_C], eax
mov	[esp+20h+var_10], eax
			
mov	edx, [esp+20h+var_10]
push	edx
push	esi
call	sub_1003C090
add	esp, 8
test	eax, eax
jz	short loc_1000BD34
push	0FFFFE05Ah
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000BE64
mov	eax, [esp+20h+var_10]
push	eax
push	0
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
test	[esp+20h+var_C], ebp
jnz	short loc_1000BD66
push	0FFFFE05Bh
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000BE64
mov	ecx, [esp+20h+var_C]
push	ecx
push	0
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
lea	edx, [esp+20h+var_4]
push	edx
lea	eax, [esp+24h+var_8]
push	eax
push	ebx
push	esi
call	sub_1000B720
add	esp, 10h
cmp	eax, 0FFFFFFFFh
jnz	short loc_1000BDD4
push	0FFFFE015h
call	PORT_SetError_Util
add	esp, 4
test	edi, edi
jz	loc_1000BE64
mov	ecx, [esp+20h+var_8]
push	ecx
push	0
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
jmp	short loc_1000BDDB
			
mov	[esp+20h+var_10], 4 
mov	[esp+20h+var_C], 4007h
test	ebp, 4007h
jnz	loc_1000BCF6
or	ebp, 4007h
jmp	loc_1000BCF6
cmp	[esp+20h+var_4], 0
jnz	short loc_1000BE5A
mov	ebp, [esp+20h+arg_1C]
mov	edx, [esp+20h+arg_14]
mov	eax, [esp+20h+arg_10]
mov	ecx, [esp+20h+arg_8]
push	0
push	edi
push	ebp
push	edx
push	eax
push	ebx
mov	ebx, [esp+38h+arg_0]
push	0
push	ecx
push	esi
push	ebx
call	sub_1000B310
add	esp, 28h
test	eax, eax
jz	short loc_1000BE0B
test	edi, edi
jz	short loc_1000BE64
test	[esp+20h+arg_18], 1
jnz	short loc_1000BE5A
cmp	[esp+20h+arg_C], 0Ah
jz	short loc_1000BE5A
push	ebx
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_1000BE5A
mov	eax, [eax]
test	eax, eax
jz	short loc_1000BE5A
mov	edx, [esp+20h+arg_14]
mov	ecx, [esp+20h+arg_10]
push	ebp
push	edx
push	ecx
push	esi
push	ebx
call	eax
add	esp, 14h
test	eax, eax
jz	short loc_1000BE5A
test	edi, edi
jz	short loc_1000BE64
push	0
push	0
call	PORT_GetError_Util
push	eax
push	esi
push	edi
call	sub_1000A9F0
add	esp, 14h
			
test	edi, edi
jz	short loc_1000BE6F
cmp	dword ptr [edi+8], 0
jz	short loc_1000BE6F
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 4
dd offset loc_1000BDAD	
dd offset loc_1000BCE4
db	0,     0,     0,     2 
db	1,     2,     0,     1
align 10h
public CERT_VerifyCertificateNow
			
mov	eax, [esp+arg_18]
mov	ecx, [esp+arg_14]
push	eax
push	0
push	ecx
call	ds:PR_Now
mov	ecx, [esp+0Ch+arg_8]
push	edx
mov	edx, [esp+10h+arg_10]
push	eax
mov	eax, [esp+14h+arg_C]
push	edx
mov	edx, [esp+18h+arg_4]
push	eax
mov	eax, [esp+1Ch+arg_0]
push	ecx
push	edx
push	eax
call	CERT_VerifyCertificate
add	esp, 28h
retn
align 10h
public CERT_FilterCertListByCANames
sub	esp, 3Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+3Ch+var_4], eax
mov	eax, [esp+3Ch+arg_C]
push	ebx
push	edi
mov	edi, [esp+44h+arg_0]
xor	ebx, ebx
mov	[esp+44h+var_14], edi
mov	[esp+44h+var_18], eax
cmp	[esp+44h+arg_4], ebx
jle	loc_1000C0D9
push	esi
call	ds:PR_Now
mov	esi, [edi]
mov	[esp+48h+var_20], eax
mov	[esp+48h+var_1C], edx
mov	[esp+48h+var_3C], esi
cmp	esi, edi
jz	loc_1000C0D8
push	ebp
jmp	short loc_1000BF34
align 10h
mov	esi, [esp+4Ch+var_3C]
mov	eax, [esi+8]
push	eax
call	CERT_DupCertificate
add	esp, 4
mov	[esp+4Ch+var_38], eax
mov	[esp+4Ch+var_34], ebx
cmp	eax, ebx
jz	loc_1000C09F
mov	ecx, [esp+4Ch+var_38]
mov	ebp, [ecx+8]
mov	edi, [esp+4Ch+arg_4]
mov	esi, [esp+4Ch+arg_8]
cmp	ebp, ebx
jz	short loc_1000BF9C
mov	eax, [esi]
mov	ecx, ebp
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_1000BF87
cmp	dl, bl
jz	short loc_1000BF83
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_1000BF87
add	eax, 2
add	ecx, 2
cmp	dl, bl
jnz	short loc_1000BF67
xor	eax, eax
jmp	short loc_1000BF8C
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
cmp	eax, ebx
jz	loc_1000C084
dec	edi
add	esi, 4
cmp	edi, ebx
jg	short loc_1000BF63
mov	edx, [esp+4Ch+var_38]
push	edx
call	sub_1004B930
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jnz	short loc_1000BFB9
push	0FFFFE013h
jmp	loc_1000C05B
mov	eax, [esp+4Ch+var_1C]
mov	ecx, [esp+4Ch+var_20]
push	eax
push	ecx
push	ebx
call	sub_1004A1F0
mov	edx, [esp+58h+var_18]
mov	esi, eax
xor	eax, eax
mov	[esp+58h+var_10], ebx
mov	[esp+58h+var_C], edx
mov	[esp+58h+var_8], 1
mov	[esp+58h+var_30], eax
mov	[esp+58h+var_2C], eax
mov	[esp+58h+var_28], eax
call	sub_1004A850
mov	edi, eax
call	sub_1004A860
push	eax
push	edi
lea	eax, [esp+60h+var_24]
push	eax
push	ebx
push	2
lea	ecx, [esp+6Ch+var_30]
push	ecx
push	ebx
lea	edx, [esp+74h+var_10]
push	edx
push	esi
push	ebp
call	sub_10046C40
push	esi
call	sub_10050550
add	esp, 38h
cmp	[esp+4Ch+var_24], ebx
jnz	short loc_1000C045
cmp	[esp+4Ch+var_2C], ebx
jz	short loc_1000C08E
mov	eax, [esp+4Ch+var_30]
push	eax
call	sub_100461A0
mov	ecx, [esp+50h+var_2C]
push	ecx
call	sub_1004B8F0
add	esp, 8
mov	esi, eax
jmp	short loc_1000C065
mov	eax, [esp+4Ch+var_30]
cmp	eax, ebx
jz	short loc_1000C056
push	eax
call	sub_100461A0
add	esp, 4
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
xor	esi, esi
mov	eax, [esp+4Ch+var_38]
cmp	esi, eax
jz	short loc_1000C092
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	[esp+4Ch+var_38], esi
cmp	esi, ebx
jnz	loc_1000BF50
jmp	short loc_1000C09B
mov	[esp+4Ch+var_34], 1
jmp	short loc_1000C09B
mov	esi, [esp+4Ch+var_38]
push	esi
call	CERT_DestroyCertificate
add	esp, 4
			
mov	esi, [esp+4Ch+var_3C]
mov	edx, [esp+4Ch+var_38]
push	edx
call	CERT_DestroyCertificate
add	esp, 4
cmp	[esp+4Ch+var_34], ebx
jnz	short loc_1000C0C3
mov	ecx, [esi]
push	esi
mov	[esp+50h+var_3C], ecx
call	CERT_RemoveCertListNode
add	esp, 4
jmp	short loc_1000C0C9
mov	edx, [esi]
mov	[esp+4Ch+var_3C], edx
mov	eax, [esp+4Ch+var_14]
cmp	[esp+4Ch+var_3C], eax
jnz	loc_1000BF30
pop	ebp
pop	esi
mov	ecx, [esp+44h+var_4]
pop	edi
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
align 10h
push	esi
push	edi
push	0
call	ds:PR_Now
mov	esi, [esp+0Ch+arg_4]
push	edx
push	eax
push	esi
call	CERT_CheckCertValidTimes
add	esp, 10h
test	eax, eax
jnz	short loc_1000C145
mov	eax, [esp+8+arg_0]
test	eax, eax
jnz	short loc_1000C126
mov	eax, [esi+154h]
push	eax
call	PORT_Strdup_Util
add	esp, 4
jmp	short loc_1000C136
mov	ecx, [esi+154h]
push	ecx
push	eax
call	PORT_ArenaStrdup_Util
add	esp, 8
mov	esi, eax
test	esi, esi
jz	loc_1000C1C6
pop	edi
mov	eax, esi
pop	esi
retn
cmp	eax, 1
jnz	short loc_1000C166
mov	edx, [esp+8+arg_8]
mov	eax, [esi+154h]
push	edx
push	eax
push	offset aSS	
call	ds:PR_smprintf
add	esp, 0Ch
jmp	short loc_1000C19A
cmp	eax, 2
jnz	short loc_1000C187
mov	ecx, [esp+8+arg_C]
mov	edx, [esi+154h]
push	ecx
push	edx
push	offset aSS	
call	ds:PR_smprintf
add	esp, 0Ch
jmp	short loc_1000C19A
push	offset aNullValidityUn 
push	offset dword_100A23E0
call	ds:PR_smprintf
add	esp, 8
			
mov	edi, eax
test	edi, edi
jz	short loc_1000C1C6
mov	eax, [esp+8+arg_0]
test	eax, eax
jz	short loc_1000C1BC
push	edi
push	eax
call	PORT_ArenaStrdup_Util
push	edi
mov	esi, eax
call	PORT_Free_Util
add	esp, 0Ch
jmp	short loc_1000C1BE
mov	esi, edi
test	esi, esi
jnz	loc_1000C140
			
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
public CERT_NicknameStringsFromCertList
push	ecx
push	ebp
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
xor	ebp, ebp
add	esp, 4
mov	[esp+0Ch+var_4], esi
cmp	esi, ebp
jnz	short loc_1000C1F2
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
push	ebx
push	edi
push	18h
push	esi
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, ebp
jz	loc_1000C2B8
mov	ebx, [esp+14h+arg_0]
mov	[edi], esi
mov	[edi+4], ebp
mov	[edi+8], ebp
mov	[edi+0Ch], ebp
mov	[edi+14h], ebp
mov	eax, [ebx]
cmp	eax, ebx
jz	short loc_1000C22D
xor	ecx, ecx
inc	ecx
mov	[edi+8], ecx
mov	eax, [eax]
cmp	eax, ebx
jnz	short loc_1000C223
mov	eax, [edi+8]
add	eax, eax
add	eax, eax
push	eax
push	esi
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[edi+0Ch], eax
cmp	eax, ebp
jz	short loc_1000C2B8
mov	ecx, offset byte_100A1623
cmp	[esp+14h+arg_4], ebp
jnz	short loc_1000C254
mov	[esp+14h+arg_4], ecx
cmp	[esp+14h+arg_8], ebp
jnz	short loc_1000C25E
mov	[esp+14h+arg_8], ecx
mov	esi, [ebx]
mov	ebp, eax
cmp	esi, ebx
jz	short loc_1000C2AA
jmp	short loc_1000C270
align 10h
			
mov	ecx, [esp+14h+arg_8]
mov	edx, [esp+14h+arg_4]
mov	eax, [esi+8]
push	ecx
mov	ecx, [esp+18h+var_4]
push	edx
push	eax
push	ecx
call	sub_1000C0F0
add	esp, 10h
mov	[ebp+0], eax
test	eax, eax
jz	short loc_1000C2B2
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_1000C295
sub	eax, edx
add	[edi+14h], eax
mov	esi, [esi]
add	ebp, 4
cmp	esi, ebx
jnz	short loc_1000C270
mov	eax, edi
pop	edi
pop	ebx
pop	esi
pop	ebp
pop	ecx
retn
mov	esi, [esp+14h+var_4]
xor	ebp, ebp
			
push	ebp
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
align 10h
public CERT_GetCertChainFromCert
sub	esp, 38h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+38h+var_4], eax
mov	eax, [esp+38h+arg_0]
mov	ecx, [esp+38h+arg_8]
mov	edx, [esp+38h+arg_C]
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+40h+arg_4]
mov	[esp+40h+var_14], ecx
mov	[esp+40h+var_20], edx
test	eax, eax
jnz	short loc_1000C30F
pop	ebp
pop	ebx
mov	ecx, [esp+38h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
push	esi
push	eax
call	CERT_DupCertificate
mov	esi, eax
add	esp, 4
mov	[esp+44h+var_34], esi
test	esi, esi
jnz	short loc_1000C344
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+38h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
push	edi
call	SECKEY_NewPrivateKeyList
mov	edi, eax
mov	[esp+48h+var_38], edi
test	edi, edi
jnz	short loc_1000C376
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+38h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
			
inc	ebx
mov	[esp+48h+var_1C], ebx
cmp	ebx, 14h
jg	loc_1000C467
push	esi
push	edi
call	CERT_AddCertToListTail
add	esp, 8
test	eax, eax
jnz	loc_1000C4AD
cmp	[esi+170h], eax
jnz	loc_1000C474
push	esi
call	sub_1004B930
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	loc_1000C45A
mov	eax, [esp+48h+var_14]
push	eax
push	ebp
push	0
call	sub_1004A1F0
mov	ecx, [esp+54h+var_20]
mov	esi, eax
xor	eax, eax
mov	[esp+54h+var_10], eax
mov	[esp+54h+var_C], ecx
mov	[esp+54h+var_8], 1
mov	[esp+54h+var_30], eax
mov	[esp+54h+var_2C], eax
mov	[esp+54h+var_28], eax
call	sub_1004A850
mov	edi, eax
call	sub_1004A860
push	eax
push	edi
lea	edx, [esp+5Ch+var_24]
push	edx
push	0
push	2
lea	eax, [esp+68h+var_30]
push	eax
push	0
lea	ecx, [esp+70h+var_10]
push	ecx
push	esi
push	ebx
call	sub_10046C40
push	esi
call	sub_10050550
add	esp, 38h
cmp	[esp+48h+var_24], 0
jnz	short loc_1000C489
cmp	[esp+48h+var_2C], 0
jz	short loc_1000C442
mov	edx, [esp+48h+var_30]
push	edx
call	sub_100461A0
mov	eax, [esp+4Ch+var_2C]
push	eax
call	sub_1004B8F0
add	esp, 8
mov	[esp+48h+var_34], eax
cmp	[esp+48h+var_34], 0
mov	edi, [esp+48h+var_38]
jz	short loc_1000C467
mov	ebx, [esp+48h+var_1C]
mov	esi, [esp+48h+var_34]
jmp	loc_1000C376
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
			
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
mov	ecx, [esp+48h+var_4]
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
mov	eax, [esp+48h+var_30]
test	eax, eax
jz	short loc_1000C49A
push	eax
call	sub_100461A0
add	esp, 4
push	0FFFFE00Dh
call	PORT_SetError_Util
mov	edi, [esp+4Ch+var_38]
add	esp, 4
jmp	short loc_1000C467
push	0FFFFE013h
jmp	short loc_1000C46C
align 10h
public CERT_VerifyCert
			
mov	eax, [esp+arg_1C]
mov	ecx, [esp+arg_18]
mov	edx, [esp+arg_14]
push	eax
mov	eax, [esp+4+arg_10]
push	ecx
mov	ecx, [esp+8+arg_C]
push	0
push	edx
mov	edx, [esp+10h+arg_8]
push	eax
mov	eax, [esp+14h+arg_4]
push	ecx
mov	ecx, [esp+18h+arg_0]
push	edx
push	eax
push	ecx
call	sub_1000BC50
add	esp, 24h
retn
align 10h
public CERT_VerifyCertNow
sub	esp, 14h
push	ebx
push	ebp
push	esi
push	edi
call	ds:PR_Now
mov	ebx, [esp+24h+arg_C]
mov	edi, eax
mov	[esp+24h+var_8], edi
mov	[esp+24h+var_4], edx
cmp	ebx, 1
jz	short loc_1000C529
cmp	ebx, 2
jz	short loc_1000C529
xor	eax, eax
jmp	short loc_1000C52E
			
mov	eax, 1
mov	esi, [esp+24h+arg_4]
push	eax
push	edx
push	edi
push	esi
call	CERT_CheckCertValidTimes
add	esp, 10h
test	eax, eax
jnz	short loc_1000C5BC 
push	esi
call	sub_1003E510
mov	ebp, [esi+13Ch]
add	esp, 4
cmp	ebx, 0Bh	
ja	short loc_1000C5BC 
movzx	eax, ds:byte_1000C694[ebx]
jmp	ds:off_1000C688[eax*4] 
			
lea	ecx, [esp+24h+var_14] 
push	ecx
lea	edx, [esp+28h+arg_C]
push	edx
push	0
push	ebx
call	sub_1003BF70
add	esp, 10h
test	eax, eax
jnz	short loc_1000C5BC 
jmp	short loc_1000C59D
			
mov	[esp+24h+arg_C], 4 
mov	[esp+24h+var_14], 4007h
test	ebp, 4007h
jnz	short loc_1000C59D
or	ebp, 4007h
			
mov	eax, [esp+24h+arg_C]
push	eax
push	esi
call	sub_1003C090
add	esp, 8
test	eax, eax
jz	short loc_1000C5C7
push	0FFFFE05Ah
call	PORT_SetError_Util
add	esp, 4
			
pop	edi		
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
test	[esp+24h+var_14], ebp
jnz	short loc_1000C5E5
push	0FFFFE05Bh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
lea	ecx, [esp+24h+var_10]
push	ecx
lea	edx, [esp+28h+var_C]
push	edx
push	ebx
push	esi
call	sub_1000B720
add	esp, 10h
cmp	eax, 0FFFFFFFFh
jnz	short loc_1000C616
push	0FFFFE015h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
cmp	[esp+24h+var_10], 0
jnz	short loc_1000C67C
mov	ebp, [esp+24h+arg_10]
mov	eax, [esp+24h+var_4]
mov	ecx, [esp+24h+arg_8]
push	0
push	0
push	ebp
push	eax
push	edi
mov	edi, [esp+38h+arg_0]
push	ebx
push	0
push	ecx
push	esi
push	edi
call	sub_1000B310
add	esp, 28h
test	eax, eax
jnz	loc_1000C5BC	
cmp	ebx, 0Ah
jz	short loc_1000C67C
push	edi
call	PK11_IsReadOnly
add	esp, 4
test	eax, eax
jz	short loc_1000C67C
mov	eax, [eax]
test	eax, eax
jz	short loc_1000C67C
mov	edx, [esp+24h+var_4]
mov	ecx, [esp+24h+var_8]
push	ebp
push	edx
push	ecx
push	esi
push	edi
call	eax
add	esp, 14h
test	eax, eax
jnz	loc_1000C5BC	
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 14h
retn
align 4
dd offset loc_1000C57F	
dd offset loc_1000C5BC
db	0,     0,     0,     2 
db	1,     2,     0,     1
public CERT_SetUsePKIXForValidation
			
xor	eax, eax
cmp	[esp+arg_0], eax
setnle	al
mov	dword_100BAB80,	eax
xor	eax, eax
retn
align 10h
public CERT_GetUsePKIXForValidation
			
mov	eax, dword_100BAB80
retn
align 10h
sub	esp, 34h
push	ebp
push	esi
push	edi
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+40h+var_2C]
rep movsd
mov	esi, [esp+40h+arg_0]
xor	ebp, ebp
mov	[esp+40h+var_34], ebp
mov	[esp+40h+var_30], ebp
mov	[esp+40h+var_2C], offset aCert_processin 
mov	[esp+40h+var_C], 12h
cmp	esi, ebp
jz	loc_1000C846
cmp	ebx, ebp
jz	loc_1000C846
mov	ecx, [esp+40h+arg_4]
push	ebx
lea	eax, [ebp+1]
xor	edx, edx
call	sub_1009FF80
push	edx
push	eax
call	sub_1009C210
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000C749
mov	eax, [eax+4]
mov	[esp+40h+var_10], eax
mov	[esp+40h+var_1C], 2B6h
jmp	loc_1000C7CB
mov	edi, [esp+40h+arg_8]
cmp	edi, ebp
jz	short loc_1000C7CB
push	ebx
lea	ecx, [esp+44h+var_34]
push	ecx
push	esi
call	sub_10061B40
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000C779
mov	edx, [eax+4]
mov	[esp+40h+var_10], edx
mov	[esp+40h+var_1C], 375h
jmp	short loc_1000C7CB
mov	ecx, [esp+40h+var_34]
push	ebx
lea	eax, [esp+44h+var_30]
push	eax
push	ecx
call	sub_10053CF0
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000C7A5
mov	edx, [eax+4]
mov	[esp+40h+var_10], edx
mov	[esp+40h+var_1C], 0B5h
jmp	short loc_1000C7CB
mov	eax, [esp+40h+var_30]
push	ebx
push	edi
push	eax
call	sub_10055650
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000C7CB
mov	ecx, [eax+4]
mov	[esp+40h+var_10], ecx
mov	[esp+40h+var_1C], 108h
			
mov	eax, [esp+40h+var_34]
cmp	eax, ebp
jz	short loc_1000C7FC
push	ebx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+40h+var_24], eax
cmp	eax, ebp
jz	short loc_1000C7F8
push	ebx
push	eax
lea	edx, [esp+48h+var_2C]
push	edx
call	sub_10078030
add	esp, 0Ch
mov	[esp+40h+var_24], ebp
mov	[esp+40h+var_34], ebp
mov	eax, [esp+40h+var_30]
cmp	eax, ebp
jz	short loc_1000C82D
push	ebx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+40h+var_24], eax
cmp	eax, ebp
jz	short loc_1000C829
push	ebx
push	eax
lea	eax, [esp+48h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+40h+var_24], ebp
mov	[esp+40h+var_30], ebp
push	ebx
push	1
lea	ecx, [esp+48h+var_2C]
push	12h
push	ecx
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
add	esp, 34h
retn
			
push	ebx
push	1
lea	edx, [esp+48h+var_2C]
push	1Fh
push	edx
mov	[esp+50h+var_18], 1
mov	[esp+50h+var_1C], 2BCh
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
add	esp, 34h
retn
align 10h
sub	esp, 4Ch
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+54h+arg_0]
push	esi
push	edi
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+5Ch+var_2C]
rep movsd
mov	[esp+5Ch+var_38], ebx
mov	[esp+5Ch+var_34], ebx
mov	[esp+5Ch+var_4C], ebx
mov	[esp+5Ch+var_44], ebx
mov	[esp+5Ch+var_40], ebx
mov	[esp+5Ch+var_30], ebx
mov	[esp+5Ch+var_3C], ebx
mov	[esp+5Ch+var_48], ebx
mov	[esp+5Ch+arg_0], ebx
mov	[esp+5Ch+var_2C], offset aCert_createpki 
mov	[esp+5Ch+var_C], 12h
cmp	ebp, ebx
jz	loc_1000CF7A
mov	edi, [esp+5Ch+arg_14]
cmp	edi, ebx
jz	loc_1000CF7A
mov	ecx, [esp+5Ch+arg_C]
lea	eax, [esp+5Ch+arg_0]
push	eax
push	ecx
push	edx
push	ebx
call	sub_1009C050
add	esp, 10h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C905
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 2B0h
jmp	loc_1000CD94
mov	eax, [esp+5Ch+arg_0]
mov	ecx, [esp+5Ch+arg_18]
push	eax
lea	edx, [esp+60h+var_4C]
push	edx
mov	[ecx], eax
call	sub_100613C0
add	esp, 8
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C939
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 36Ah
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
push	ecx
lea	edx, [esp+60h+var_40]
push	edx
call	sub_10054720
add	esp, 8
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C967
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 0F0h
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
push	ecx
lea	edx, [esp+60h+var_38]
push	edx
push	ebp
call	sub_1007D6A0
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C996
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 69h
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_38]
mov	eax, [esp+5Ch+var_40]
push	ecx
push	edx
push	eax
call	sub_10054D20
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C9C9
mov	ecx, [eax+4]
mov	[esp+5Ch+var_10], ecx
mov	[esp+5Ch+var_1C], 105h
jmp	loc_1000CD94
mov	edx, [esp+5Ch+arg_0]
push	edx
lea	eax, [esp+60h+var_44]
push	eax
push	ebx
push	ebx
call	sub_10053B50
add	esp, 10h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000C9F9
mov	ecx, [eax+4]
mov	[esp+5Ch+var_10], ecx
mov	[esp+5Ch+var_1C], 12Bh
jmp	loc_1000CD94
mov	edx, [esp+5Ch+arg_0]
mov	eax, [esp+5Ch+var_40]
mov	ecx, [esp+5Ch+var_44]
push	edx
push	eax
push	ecx
call	sub_10053DC0
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CA2C
mov	edx, [eax+4]
mov	[esp+5Ch+var_10], edx
mov	[esp+5Ch+var_1C], 0CBh
jmp	loc_1000CD94
mov	eax, [esp+5Ch+arg_0]
mov	ecx, [esp+5Ch+var_44]
mov	edx, [esp+5Ch+var_4C]
push	eax
push	ecx
push	edx
call	sub_10061C10
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CA5F
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 383h
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_4C]
push	ecx
push	ebx
push	edx
call	sub_10061620
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CA8E
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 384h
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
push	ecx
lea	edx, [esp+60h+var_30]
push	edx
call	sub_1009E060
add	esp, 8
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CABC
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 33Bh
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
push	ecx
lea	edx, [esp+60h+var_3C]
push	edx
call	sub_100755D0
add	esp, 8
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CAEA
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 3EEh
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_30]
mov	eax, [esp+5Ch+var_3C]
push	ecx
push	edx
push	eax
call	sub_10075970
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CB1D
mov	ecx, [eax+4]
mov	[esp+5Ch+var_10], ecx
mov	[esp+5Ch+var_1C], 278h
jmp	loc_1000CD94
mov	edx, [esp+5Ch+arg_0]
mov	eax, [esp+5Ch+var_3C]
mov	ecx, [esp+5Ch+var_4C]
push	edx
push	eax
push	ecx
call	sub_100624A0
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CB50
mov	edx, [eax+4]
mov	[esp+5Ch+var_10], edx
mov	[esp+5Ch+var_1C], 368h
jmp	loc_1000CD94
mov	eax, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+arg_8]
push	eax
mov	eax, [esp+60h+arg_4]
lea	ecx, [esp+60h+var_34]
push	ecx
push	edx
push	eax
call	sub_10088F20
add	esp, 10h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CB88
mov	ecx, [eax+4]
mov	[esp+5Ch+var_10], ecx
mov	[esp+5Ch+var_1C], 17Fh
jmp	loc_1000CD94
mov	edx, [esp+5Ch+arg_0]
mov	eax, [esp+5Ch+var_34]
mov	ecx, [esp+5Ch+var_4C]
push	edx
push	eax
push	ecx
call	sub_100619F0
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CBBB
mov	edx, [eax+4]
mov	[esp+5Ch+var_10], edx
mov	[esp+5Ch+var_1C], 37Ch
jmp	loc_1000CD94
mov	eax, [esp+5Ch+arg_0]
push	eax
lea	ecx, [esp+60h+var_48]
push	ecx
push	1
push	1
call	sub_10058B80
add	esp, 10h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CBED
mov	edx, [eax+4]
mov	[esp+5Ch+var_10], edx
mov	[esp+5Ch+var_1C], 39Fh
jmp	loc_1000CD94
mov	eax, [esp+5Ch+arg_0]
mov	ecx, [esp+5Ch+var_48]
mov	edx, [esp+5Ch+var_4C]
push	eax
push	ecx
push	edx
call	sub_10062270
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CC20
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 382h
jmp	loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_4C]
mov	eax, [esp+5Ch+var_48]
push	ecx
push	1
push	ebx
push	ebx
push	23h
push	ebx
push	edx
push	eax
call	sub_10058C90
add	esp, 20h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CC5A
mov	ecx, [eax+4]
mov	[esp+5Ch+var_10], ecx
mov	[esp+5Ch+var_1C], 39Eh
jmp	loc_1000CD94
mov	edx, [esp+5Ch+arg_0]
mov	eax, [esp+5Ch+var_4C]
mov	ecx, [esp+5Ch+var_48]
push	edx
push	ebx
push	ebx
push	ebx
push	23h
push	ebx
push	eax
push	ecx
call	sub_10058C90
add	esp, 20h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CC93
mov	edx, [eax+4]
mov	[esp+5Ch+var_10], edx
mov	[esp+5Ch+var_1C], 39Eh
jmp	loc_1000CD94
call	CERT_GetDefaultCertDB
push	eax
call	PK11_IsReadOnly
add	esp, 4
cmp	eax, ebx
jz	short loc_1000CD06
cmp	[eax], ebx
jz	short loc_1000CD06
mov	ebp, [esp+5Ch+arg_10]
mov	esi, 21h
cmp	ebp, ebx
jz	short loc_1000CCBB
mov	esi, 23h
call	sub_100078A0
test	eax, eax
jz	short loc_1000CCCB
cmp	ebp, ebx
jnz	short loc_1000CCCB
or	esi, 10h
			
mov	eax, [esp+5Ch+arg_0]
mov	ecx, [esp+5Ch+var_4C]
mov	edx, [esp+5Ch+var_48]
push	eax
push	1
push	ebx
push	1
push	esi
push	1
push	ecx
push	edx
call	sub_10058C90
add	esp, 20h
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CD06
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 39Eh
jmp	loc_1000CD94
			
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_4C]
push	ecx
push	ebx
push	edx
call	sub_10062740
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CD32
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 37Ah
jmp	short loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_4C]
push	ecx
push	ebx
push	edx
call	sub_10062860
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CD5E
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 37Dh
jmp	short loc_1000CD94
mov	ecx, [esp+5Ch+arg_0]
mov	edx, [esp+5Ch+var_4C]
push	ecx
push	ebx
push	edx
call	sub_10062980
add	esp, 0Ch
mov	[esp+5Ch+var_28], eax
cmp	eax, ebx
jz	short loc_1000CD8A
mov	eax, [eax+4]
mov	[esp+5Ch+var_10], eax
mov	[esp+5Ch+var_1C], 381h
jmp	short loc_1000CD94
mov	ecx, [esp+5Ch+var_4C]
mov	[edi], ecx
mov	[esp+5Ch+var_4C], ebx
			
mov	eax, [esp+5Ch+var_38]
cmp	eax, ebx
jz	short loc_1000CDCD
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CDC9
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
lea	edx, [esp+64h+var_2C]
push	edx
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_38], ebx
mov	eax, [esp+5Ch+var_34]
cmp	eax, ebx
jz	short loc_1000CE06
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CE02
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_34], ebx
mov	eax, [esp+5Ch+var_44]
cmp	eax, ebx
jz	short loc_1000CE3F
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CE3B
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_44], ebx
mov	eax, [esp+5Ch+var_40]
cmp	eax, ebx
jz	short loc_1000CE78
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CE74
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_40], ebx
mov	eax, [esp+5Ch+var_30]
cmp	eax, ebx
jz	short loc_1000CEB1
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CEAD
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_30], ebx
mov	eax, [esp+5Ch+var_3C]
cmp	eax, ebx
jz	short loc_1000CEEA
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CEE6
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_3C], ebx
mov	eax, [esp+5Ch+var_4C]
cmp	eax, ebx
jz	short loc_1000CF23
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CF1F
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_4C], ebx
mov	eax, [esp+5Ch+var_48]
cmp	eax, ebx
jz	short loc_1000CF5C
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+5Ch+var_24], eax
cmp	eax, ebx
jz	short loc_1000CF58
mov	edx, [esp+5Ch+arg_0]
push	edx
push	eax
lea	eax, [esp+64h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_48], ebx
mov	ecx, [esp+5Ch+arg_0]
push	ecx
push	1
lea	edx, [esp+64h+var_2C]
push	12h
push	edx
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 4Ch
retn
			
push	ebx
push	1
lea	eax, [esp+64h+var_2C]
push	1Fh
push	eax
mov	[esp+6Ch+var_18], 1
mov	[esp+6Ch+var_1C], 2BCh
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 4Ch
retn
align 10h
			
sub	esp, 38h
push	ebx
push	ebp
mov	ebp, [esp+40h+arg_8]
push	esi
xor	ebx, ebx
push	edi
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+48h+var_2C]
rep movsd
mov	[esp+48h+var_34], ebx
mov	[esp+48h+var_38], ebx
mov	[esp+48h+var_30], ebx
mov	[esp+48h+var_2C], offset aCert_pkixtonss 
mov	[esp+48h+var_C], 12h
cmp	[esp+48h+arg_4], ebx
jnz	short loc_1000D019
push	ebp
push	1
lea	eax, [esp+50h+var_2C]
push	1Fh
push	eax
mov	[esp+58h+var_18], 1
mov	[esp+58h+var_1C], 2BCh
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 38h
retn
cmp	[esp+48h+arg_0], ebx
jz	loc_1000D26C
push	800h
call	PORT_NewArena_Util
mov	esi, eax
xor	edi, edi
add	esp, 4
cmp	esi, edi
jnz	short loc_1000D06A
mov	eax, dword_100BAE9C
cmp	eax, edi
jz	short loc_1000D058
mov	ecx, [esp+48h+var_C]
push	ebp
push	2
push	ecx
push	edi
push	338h
push	eax
call	sub_10074820
add	esp, 18h
mov	[esp+48h+var_18], 1
mov	[esp+48h+var_1C], 338h
jmp	short loc_1000D0B9
push	0Ch
push	esi
call	PORT_ArenaZAlloc_Util
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jnz	loc_1000D117
mov	eax, dword_100BAE9C
cmp	eax, edi
jz	short loc_1000D09F
mov	edx, [esp+48h+var_C]
push	ebp
push	2
push	edx
push	edi
push	356h
push	eax
call	sub_10074820
add	esp, 18h
push	edi
push	esi
mov	[esp+50h+var_18], 1
mov	[esp+50h+var_1C], 356h
call	PORT_FreeArena_Util
add	esp, 8
			
mov	eax, [esp+48h+var_34]
test	eax, eax
jz	short loc_1000D0CA
push	eax
call	CERT_DestroyCertificate
add	esp, 4
			
mov	eax, [esp+48h+var_38]
test	eax, eax
jz	short loc_1000D0FD
push	ebp
push	eax
call	sub_100955D0
xor	esi, esi
add	esp, 8
mov	[esp+48h+var_24], eax
cmp	eax, esi
jz	short loc_1000D0F9
push	ebp
push	eax
lea	eax, [esp+50h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+48h+var_24], esi
mov	[esp+48h+var_38], esi
push	ebp
push	1
lea	ecx, [esp+50h+var_2C]
push	12h
push	ecx
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 38h
retn
mov	ecx, [esp+48h+arg_0]
push	ebp
lea	eax, [esp+4Ch+var_30]
push	eax
push	ecx
mov	[ebx], ebx
mov	[ebx+4], ebx
mov	[ebx+8], esi
call	sub_100757C0
add	esp, 0Ch
mov	[esp+48h+var_28], eax
cmp	eax, edi
jz	short loc_1000D14E
mov	edx, [eax+4]
mov	[esp+48h+var_10], edx
mov	[esp+48h+var_1C], 284h
jmp	loc_1000D270
xor	esi, esi
cmp	[esp+48h+var_30], edi
jbe	loc_1000D210
lea	ebx, [ebx+0]
mov	ecx, [esp+48h+arg_0]
push	ebp
lea	eax, [esp+4Ch+var_38]
push	eax
push	esi
push	ecx
call	sub_10075D80
add	esp, 10h
mov	[esp+48h+var_28], eax
cmp	eax, edi
jnz	loc_1000D218
mov	eax, [esp+48h+var_38]
push	ebp
lea	edx, [esp+4Ch+var_34]
push	edx
push	eax
call	sub_10081BC0
add	esp, 0Ch
mov	[esp+48h+var_28], eax
cmp	eax, edi
jnz	loc_1000D229
mov	ecx, [ebx+8]
push	10h
push	ecx
call	PORT_ArenaZAlloc_Util
add	esp, 8
cmp	eax, edi
jz	loc_1000D23A
mov	[eax], ebx
mov	edx, [ebx+4]
mov	[eax+4], edx
mov	ecx, [ebx+4]
mov	[ecx], eax
mov	[ebx+4], eax
mov	edx, [esp+48h+var_34]
mov	[eax+8], edx
mov	eax, [esp+48h+var_38]
mov	[esp+48h+var_34], edi
cmp	eax, edi
jz	short loc_1000D201
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+48h+var_24], eax
cmp	eax, edi
jz	short loc_1000D1FD
push	ebp
push	eax
lea	eax, [esp+50h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+48h+var_24], edi
mov	[esp+48h+var_38], edi
inc	esi
cmp	esi, [esp+48h+var_30]
jb	loc_1000D160
mov	eax, [esp+48h+var_28]
mov	edx, [esp+48h+arg_4]
mov	[edx], ebx
jmp	short loc_1000D270
mov	ecx, [eax+4]
mov	[esp+48h+var_10], ecx
mov	[esp+48h+var_1C], 283h
jmp	short loc_1000D270
mov	edx, [eax+4]
mov	[esp+48h+var_10], edx
mov	[esp+48h+var_1C], 7Eh
jmp	short loc_1000D270
mov	eax, dword_100BAE9C
cmp	eax, edi
jz	short loc_1000D25A
mov	ecx, [esp+48h+var_C]
push	ebp
push	2
push	ecx
push	edi
push	356h
push	eax
call	sub_10074820
add	esp, 18h
mov	[esp+48h+var_18], 1
mov	[esp+48h+var_1C], 356h
jmp	short loc_1000D28B
mov	eax, [esp+48h+var_28]
			
cmp	[esp+48h+var_18], 0
jnz	short loc_1000D28B
test	eax, eax
jnz	short loc_1000D28B
cmp	[esp+48h+var_14], eax
jnz	short loc_1000D28B
cmp	[esp+48h+var_4], eax
jz	loc_1000D0CA
			
test	ebx, ebx
jz	loc_1000D0B9
push	ebx
call	CERT_DestroyCertList
add	esp, 4
jmp	loc_1000D0B9
align 10h
sub	esp, 3Ch
push	esi
push	edi
xor	eax, eax
xor	edx, edx
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+44h+var_2C]
rep movsd
mov	[esp+44h+var_34], 0
mov	[esp+44h+var_30], 0
mov	[esp+44h+var_3C], eax
mov	[esp+44h+var_38], edx
mov	[esp+44h+var_2C], offset aCert_buildandv 
mov	[esp+44h+var_C], 12h
test	ebx, ebx
jz	loc_1000D3D8
mov	edi, [esp+44h+arg_0]
test	edi, edi
jz	loc_1000D3D8
mov	esi, ds:PR_Poll
jmp	short loc_1000D310
align 10h
			
test	eax, eax
jz	short loc_1000D326
test	edx, edx
jz	short loc_1000D326
push	0FFFFFFFFh
push	1
push	eax
call	esi 
add	esp, 0Ch
test	eax, eax
jle	short loc_1000D390
			
mov	eax, [esp+44h+arg_8]
push	eax
lea	ecx, [esp+48h+var_30]
push	ecx
lea	edx, [esp+4Ch+var_34]
push	edx
lea	eax, [esp+50h+var_38]
push	eax
lea	ecx, [esp+54h+var_3C]
push	ecx
push	ebx
call	sub_10071FD0
add	esp, 18h
mov	[esp+44h+var_28], eax
test	eax, eax
jnz	short loc_1000D3C7
mov	eax, [esp+44h+var_3C]
test	eax, eax
jz	short loc_1000D360
mov	edx, [esp+44h+var_38]
test	edx, edx
jnz	short loc_1000D310
mov	eax, [esp+44h+var_34]
mov	[edi], eax
			
mov	eax, [esp+44h+arg_4]
test	eax, eax
jz	short loc_1000D374
mov	ecx, [esp+44h+var_30]
mov	[eax], ecx
mov	edx, [esp+44h+arg_8]
push	edx
push	1
lea	eax, [esp+4Ch+var_2C]
push	12h
push	eax
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
add	esp, 3Ch
retn
mov	eax, dword_100BAE9C
test	eax, eax
jz	short loc_1000D3B5
mov	edx, [esp+44h+arg_8]
mov	ecx, [esp+44h+var_C]
push	edx
push	2
push	ecx
push	0
push	386h
push	eax
call	sub_10074820
add	esp, 18h
mov	[esp+44h+var_18], 1
mov	[esp+44h+var_1C], 386h
jmp	short loc_1000D366
mov	edx, [eax+4]
mov	[esp+44h+var_10], edx
mov	[esp+44h+var_1C], 3E9h
jmp	short loc_1000D366
			
mov	ecx, [esp+44h+arg_8]
push	ecx
push	1
lea	edx, [esp+4Ch+var_2C]
push	1Fh
push	edx
mov	[esp+54h+var_18], 1
mov	[esp+54h+var_1C], 2BCh
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
add	esp, 3Ch
retn
align 10h
			
sub	esp, 2Ch
push	ebx
push	ebp
mov	ebp, [esp+34h+arg_0]
push	esi
push	edi
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+3Ch+var_2C]
xor	ebx, ebx
rep movsd
mov	[esp+3Ch+var_2C], offset aCert_pkixerror 
mov	[esp+3Ch+var_C], 12h
test	edx, edx
jz	short loc_1000D4B2
test	ebp, ebp
jz	short loc_1000D4B2
mov	ecx, dword_100BAEAC
jmp	short loc_1000D450
align 10h
			
mov	eax, [edx+8]
test	eax, eax
jz	short loc_1000D461
test	ebx, ebx
jnz	short loc_1000D461
mov	ebx, eax
test	ecx, ecx
jz	short loc_1000D468
			
mov	edx, [edx+0Ch]
test	edx, edx
jnz	short loc_1000D450
test	ebx, ebx
jnz	short loc_1000D491
mov	eax, [esp+3Ch+arg_4]
push	eax
push	1
lea	ecx, [esp+44h+var_2C]
push	12h
push	ecx
mov	dword ptr [ebp+0], 0FFFFE0A6h
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 2Ch
retn
mov	eax, [esp+3Ch+arg_4]
push	eax
push	1
lea	ecx, [esp+44h+var_2C]
push	12h
push	ecx
mov	[ebp+0], ebx
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 2Ch
retn
			
mov	edx, [esp+3Ch+arg_4]
push	edx
push	1
lea	eax, [esp+44h+var_2C]
push	1Fh
push	eax
mov	[esp+4Ch+var_18], 1
mov	[esp+4Ch+var_1C], 2BCh
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 2Ch
retn
			
sub	esp, 30h
push	ebx
push	ebp
push	esi
push	edi
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+40h+var_2C]
rep movsd
mov	edi, [esp+40h+arg_4]
mov	ebx, [edi+4]
mov	esi, [esp+40h+arg_8]
xor	ebp, ebp
mov	[esp+40h+var_30], ebp
mov	[esp+40h+var_2C], offset aCert_getlogfro 
mov	[esp+40h+var_C], 12h
cmp	ebx, ebp
jnz	short loc_1000D58E
mov	edx, [edi+0Ch]
cmp	edx, ebp
jz	short loc_1000D574
cmp	dword ptr [edx], 0Bh
jz	short loc_1000D574
cmp	[esp+40h+arg_0], ebp
jz	short loc_1000D574
mov	eax, [edi]
mov	ebx, [eax]
lea	ecx, [esp+40h+arg_4]
push	esi
push	ecx
mov	[esp+48h+arg_4], ebp
call	sub_1000D410
add	esp, 8
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000D55C
mov	edx, [eax+4]
mov	[esp+40h+var_1C], 207h
jmp	loc_1000D64E
mov	eax, [edi+8]
mov	ecx, [esp+40h+arg_4]
mov	edx, [esp+40h+arg_0]
push	ebp
push	eax
push	ecx
push	ebx
push	edx
call	sub_1000A9F0
add	esp, 14h
			
push	esi
push	1
lea	eax, [esp+48h+var_2C]
push	12h
push	eax
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
push	esi
lea	ecx, [esp+44h+arg_4]
push	ecx
push	ebx
mov	[esp+4Ch+arg_4], ebp
call	sub_100757C0
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jz	short loc_1000D5B9
mov	edx, [eax+4]
mov	[esp+40h+var_1C], 284h
jmp	loc_1000D64E
xor	edi, edi
cmp	[esp+40h+arg_4], ebp
jbe	loc_1000D652
push	esi
lea	eax, [esp+44h+var_30]
push	eax
push	edi
push	ebx
call	sub_10075D80
add	esp, 10h
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jnz	short loc_1000D632
mov	ecx, [esp+40h+var_30]
mov	edx, [esp+40h+arg_0]
push	esi
push	ecx
push	edx
call	sub_1000D4E0
add	esp, 0Ch
mov	[esp+40h+var_28], eax
cmp	eax, ebp
jnz	short loc_1000D643
mov	eax, [esp+40h+var_30]
cmp	eax, ebp
jz	short loc_1000D629
push	esi
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+40h+var_24], eax
cmp	eax, ebp
jz	short loc_1000D625
push	esi
push	eax
lea	eax, [esp+48h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+40h+var_24], ebp
mov	[esp+40h+var_30], ebp
inc	edi
cmp	edi, [esp+40h+arg_4]
jb	short loc_1000D5C5
jmp	short loc_1000D652
mov	ecx, [eax+4]
mov	[esp+40h+var_10], ecx
mov	[esp+40h+var_1C], 283h
jmp	short loc_1000D652
mov	edx, [eax+4]
mov	[esp+40h+var_1C], 1B0h
			
mov	[esp+40h+var_10], edx
			
mov	eax, [esp+40h+var_30]
cmp	eax, ebp
jz	short loc_1000D683
push	esi
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+40h+var_24], eax
cmp	eax, ebp
jz	short loc_1000D67F
push	esi
push	eax
lea	eax, [esp+48h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+40h+var_24], ebp
mov	[esp+40h+var_30], ebp
push	esi
push	1
lea	ecx, [esp+48h+var_2C]
push	12h
push	ecx
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
align 10h
sub	esp, 44h
push	ebp
mov	ebp, [esp+48h+arg_10]
push	esi
push	edi
xor	edx, edx
mov	ecx, 0Bh
mov	esi, offset dword_100BBAC0
lea	edi, [esp+50h+var_2C]
rep movsd
mov	edi, [esp+50h+arg_0]
mov	[esp+50h+var_38], edx
mov	[esp+50h+var_30], edx
mov	[esp+50h+var_34], edx
mov	[esp+50h+var_44], edx
mov	[esp+50h+var_40], edx
mov	[esp+50h+var_3C], edx
mov	[esp+50h+var_2C], offset aCert_getbuildr 
mov	[esp+50h+var_C], 12h
cmp	edi, edx
jnz	short loc_1000D724
cmp	[esp+50h+arg_8], edx
jnz	short loc_1000D72A
mov	eax, dword_100BAE9C
cmp	eax, edx
jz	short loc_1000D70F
push	ebx
push	2
push	12h
push	edx
push	2BCh
push	eax
call	sub_10074820
add	esp, 18h
mov	[esp+50h+var_18], 1
mov	[esp+50h+var_1C], 2BCh
jmp	loc_1000D8C1
cmp	[esp+50h+arg_8], edx
jz	short loc_1000D778
mov	eax, [esp+50h+arg_4]
mov	[esp+50h+arg_0], edx
cmp	eax, edx
jz	short loc_1000D753
push	ebx
push	eax
mov	eax, [esp+58h+arg_C]
push	eax
call	sub_1000D4E0
add	esp, 0Ch
test	eax, eax
jz	short loc_1000D753
push	ebx
push	eax
call	sub_100955D0
add	esp, 8
			
mov	edx, [esp+50h+arg_8]
lea	ecx, [esp+50h+arg_0]
push	ebx
push	ecx
call	sub_1000D410
mov	edx, [esp+58h+arg_0]
push	edx
call	PORT_SetError_Util
mov	eax, [esp+5Ch+var_28]
add	esp, 0Ch
jmp	loc_1000D8AA
mov	esi, [esp+50h+arg_14]
cmp	esi, edx
jz	short loc_1000D7DA
push	ebx
lea	eax, [esp+54h+var_3C]
push	eax
push	edi
call	sub_10064740
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D7AB
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 2Dh
jmp	loc_1000D8AA
mov	eax, [esp+50h+var_3C]
push	ebx
lea	edx, [esp+54h+var_30]
push	edx
push	eax
call	sub_1000CFB0
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D7DE
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 5Ah
jmp	loc_1000D8AA
mov	eax, [esp+50h+var_28]
test	ebp, ebp
jz	loc_1000D895
push	ebx
lea	edx, [esp+54h+var_38]
push	edx
push	edi
call	sub_10064670
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D811
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 2Eh
jmp	loc_1000D8AA
mov	eax, [esp+50h+var_38]
push	ebx
lea	edx, [esp+54h+var_44]
push	edx
push	eax
call	sub_10067550
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D83D
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 41Dh
jmp	short loc_1000D8AA
mov	eax, [esp+50h+var_44]
push	ebx
lea	edx, [esp+54h+var_40]
push	edx
push	eax
call	sub_10060600
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D869
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 3E4h
jmp	short loc_1000D8AA
mov	eax, [esp+50h+var_40]
push	ebx
lea	edx, [esp+54h+var_34]
push	edx
push	eax
call	sub_10081BC0
add	esp, 0Ch
mov	[esp+50h+var_28], eax
test	eax, eax
jz	short loc_1000D895
mov	ecx, [eax+4]
mov	[esp+50h+var_10], ecx
mov	[esp+50h+var_1C], 7Eh
jmp	short loc_1000D8AA
			
mov	ecx, [esp+50h+var_34]
test	ecx, ecx
jz	short loc_1000D8A0
mov	[ebp+0], ecx
mov	ecx, [esp+50h+var_30]
test	ecx, ecx
jz	short loc_1000D8AA
mov	[esi], ecx
			
cmp	[esp+50h+var_18], 0
jnz	short loc_1000D8C1
test	eax, eax
jnz	short loc_1000D8C1
cmp	[esp+50h+var_14], eax
jnz	short loc_1000D8C1
cmp	[esp+50h+var_4], eax
jz	short loc_1000D8E3
			
mov	eax, [esp+50h+var_34]
test	eax, eax
jz	short loc_1000D8D2
push	eax
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, [esp+50h+var_30]
test	eax, eax
jz	short loc_1000D8E3
push	eax
call	CERT_DestroyCertList
add	esp, 4
			
mov	eax, [esp+50h+var_44]
test	eax, eax
jz	short loc_1000D916
push	ebx
push	eax
call	sub_100955D0
xor	esi, esi
add	esp, 8
mov	[esp+50h+var_24], eax
cmp	eax, esi
jz	short loc_1000D912
push	ebx
push	eax
lea	edx, [esp+58h+var_2C]
push	edx
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], esi
mov	[esp+50h+var_44], esi
mov	eax, [esp+50h+var_40]
test	eax, eax
jz	short loc_1000D949
push	ebx
push	eax
call	sub_100955D0
xor	esi, esi
add	esp, 8
mov	[esp+50h+var_24], eax
cmp	eax, esi
jz	short loc_1000D945
push	ebx
push	eax
lea	eax, [esp+58h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], esi
mov	[esp+50h+var_40], esi
mov	eax, [esp+50h+var_3C]
test	eax, eax
jz	short loc_1000D97C
push	ebx
push	eax
call	sub_100955D0
xor	esi, esi
add	esp, 8
mov	[esp+50h+var_24], eax
cmp	eax, esi
jz	short loc_1000D978
push	ebx
push	eax
lea	ecx, [esp+58h+var_2C]
push	ecx
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], esi
mov	[esp+50h+var_3C], esi
mov	eax, [esp+50h+var_38]
test	eax, eax
jz	short loc_1000D9AF
push	ebx
push	eax
call	sub_100955D0
xor	esi, esi
add	esp, 8
mov	[esp+50h+var_24], eax
cmp	eax, esi
jz	short loc_1000D9AB
push	ebx
push	eax
lea	edx, [esp+58h+var_2C]
push	edx
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], esi
mov	[esp+50h+var_38], esi
mov	eax, [esp+50h+arg_8]
test	eax, eax
jz	short loc_1000D9E0
push	ebx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+50h+var_24], eax
test	eax, eax
jz	short loc_1000D9E0
push	ebx
push	eax
lea	eax, [esp+58h+var_2C]
push	eax
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], 0
			
mov	eax, [esp+50h+arg_4]
test	eax, eax
jz	short loc_1000DA11
push	ebx
push	eax
call	sub_100955D0
add	esp, 8
mov	[esp+50h+var_24], eax
test	eax, eax
jz	short loc_1000DA11
push	ebx
push	eax
lea	ecx, [esp+58h+var_2C]
push	ecx
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], 0
			
test	edi, edi
jz	short loc_1000DA3E
push	ebx
push	edi
call	sub_100955D0
add	esp, 8
mov	[esp+50h+var_24], eax
test	eax, eax
jz	short loc_1000DA3E
push	ebx
push	eax
lea	edx, [esp+58h+var_2C]
push	edx
call	sub_10078030
add	esp, 0Ch
mov	[esp+50h+var_24], 0
			
push	ebx
push	1
lea	eax, [esp+58h+var_2C]
push	12h
push	eax
call	sub_100781E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
add	esp, 44h
retn
align 10h
sub	esp, 14h
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+24h+arg_8]
xor	edx, edx
xor	ebp, ebp
cmp	edi, 0Ah
setz	dl
lea	eax, [esp+24h+var_C]
push	eax
mov	eax, [esp+28h+arg_14]
lea	ecx, [esp+28h+var_14]
push	ecx
mov	ecx, [esp+2Ch+arg_10]
push	edx
mov	edx, [esp+30h+arg_C]
push	eax
mov	eax, [esp+34h+arg_0]
push	ecx
push	edx
push	eax
xor	edx, edx
mov	[esp+40h+var_14], ebp
mov	[esp+40h+var_4], ebp
mov	[esp+40h+var_8], ebp
mov	[esp+40h+var_10], 0FFFFFFFFh
mov	[esp+40h+var_C], ebp
call	sub_1000C870
mov	esi, [esp+40h+var_C]
add	esp, 1Ch
cmp	eax, ebp
jnz	short loc_1000DB06
push	ebp
push	edi
mov	edi, [esp+2Ch+var_14]
push	edi
mov	ebx, esi
call	sub_1000C6D0
add	esp, 0Ch
cmp	eax, ebp
jnz	short loc_1000DB0A
push	esi
lea	ecx, [esp+28h+var_8]
push	ecx
lea	edx, [esp+2Ch+var_4]
push	edx
mov	ebx, edi
call	sub_1000D2B0
add	esp, 0Ch
cmp	eax, ebp
jnz	short loc_1000DB0A
mov	ecx, [esp+24h+arg_20]
cmp	ecx, ebp
jz	short loc_1000DAF6
mov	[ecx], ebp
mov	ecx, [esp+24h+arg_1C]
cmp	ecx, ebp
jz	short loc_1000DB00
mov	[ecx], ebp
mov	[esp+24h+var_10], ebp
jmp	short loc_1000DB0A
mov	edi, [esp+24h+var_14]
			
mov	ecx, [esp+24h+arg_18]
mov	edx, [esp+24h+var_8]
push	ebp
push	ebp
push	ecx
push	eax
mov	eax, [esp+34h+var_4]
push	edx
push	eax
mov	ebx, esi
call	sub_1000D6A0
add	esp, 18h
cmp	eax, ebp
jz	short loc_1000DB34
push	esi
push	eax
call	sub_100955D0
add	esp, 8
cmp	edi, ebp
jz	short loc_1000DB42
push	esi
push	edi
call	sub_100955D0
add	esp, 8
cmp	esi, ebp
jz	short loc_1000DB4F
push	esi
call	sub_1009C180
add	esp, 4
mov	eax, [esp+24h+var_10]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 14h
retn
align 10h
sub	esp, 10h
mov	ecx, [esp+10h+arg_0]
push	ebp
push	esi
push	edi
mov	edi, [esp+1Ch+arg_4]
push	edi
lea	eax, [esp+20h+var_8]
push	eax
xor	ebp, ebp
push	ecx
mov	[esp+28h+var_C], 0
mov	[esp+28h+var_10], 0
mov	[esp+28h+var_8], ebp
call	sub_1007D6A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DC0D
push	edi
lea	edx, [esp+20h+var_10]
push	edx
push	eax
push	eax
call	sub_10053B50
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_1000DC0D
lea	eax, [esp+1Ch+var_C]
push	edi
push	eax
call	sub_10054720
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DC0D
mov	ecx, [esp+1Ch+var_8]
mov	edx, [esp+1Ch+var_C]
push	edi
push	ecx
push	edx
call	sub_10054D20
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DC0D
mov	eax, [esp+1Ch+var_C]
mov	ecx, [esp+1Ch+var_10]
push	edi
push	eax
push	ecx
call	sub_10053DC0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DC0D
mov	edx, [esp+1Ch+var_10]
push	edi
push	edx
call	sub_10095450
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DC0D
mov	ebp, [esp+1Ch+var_10]
			
mov	eax, [esp+1Ch+var_C]
test	eax, eax
jz	short loc_1000DC1F
push	edi
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+1Ch+var_8]
test	eax, eax
jz	short loc_1000DC31
push	edi
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+1Ch+var_10]
test	eax, eax
jz	short loc_1000DC43
push	edi
push	eax
call	sub_100955D0
add	esp, 8
test	esi, esi
jz	short loc_1000DC68
lea	eax, [esp+1Ch+var_4]
push	edi
push	eax
mov	edx, esi
call	sub_1000D410
push	edi
push	esi
call	sub_100955D0
mov	ecx, [esp+2Ch+var_4]
push	ecx
call	PORT_SetError_Util
add	esp, 14h
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
add	esp, 10h
retn
align 10h
sub	esp, 0Ch
push	ebp
push	esi
lea	eax, [esp+14h+var_8]
push	edi
push	eax
mov	[esp+1Ch+var_8], 0
mov	[esp+1Ch+var_C], 0
xor	ebp, ebp
call	sub_1009E060
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DCF4
lea	ecx, [esp+14h+var_C]
push	edi
push	ecx
call	sub_100755D0
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DCF4
mov	edx, [esp+14h+var_8]
mov	eax, [esp+14h+var_C]
push	edi
push	edx
push	eax
call	sub_10075970
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DCF4
mov	ecx, [esp+14h+var_C]
push	edi
push	ecx
call	sub_10095450
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DCF4
mov	eax, [esp+14h+var_C]
mov	ebp, eax
jmp	short loc_1000DCF8
			
mov	eax, [esp+14h+var_C]
test	eax, eax
jz	short loc_1000DD06
push	edi
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+14h+var_8]
test	eax, eax
jz	short loc_1000DD18
push	edi
push	eax
call	sub_100955D0
add	esp, 8
test	esi, esi
jz	short loc_1000DD3D
lea	edx, [esp+14h+var_4]
push	edi
push	edx
mov	edx, esi
call	sub_1000D410
push	edi
push	esi
call	sub_100955D0
mov	eax, [esp+24h+var_4]
push	eax
call	PORT_SetError_Util
add	esp, 14h
pop	esi
mov	eax, ebp
pop	ebp
add	esp, 0Ch
retn
align 10h
sub	esp, 0Ch
push	ebx
push	esi
push	edi
mov	edi, [esp+18h+arg_8]
xor	ebx, ebx
lea	eax, [esp+18h+var_C]
push	edi
push	eax
mov	[esp+20h+var_4], ebx
mov	[esp+20h+var_C], ebx
mov	[esp+20h+var_8], ebx
call	sub_100755D0
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jnz	loc_1000DE0D
push	ebp
mov	ebp, [esp+1Ch+arg_4]
test	ebp, ebp
jle	short loc_1000DDDC
lea	esp, [esp+0]
mov	edx, [esp+1Ch+arg_0]
mov	eax, [edx+ebx*4]
push	edi
lea	ecx, [esp+20h+var_8]
push	ecx
push	eax
call	sub_10096B50
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DE0C
mov	ecx, [esp+1Ch+var_8]
mov	edx, [esp+1Ch+var_C]
push	edi
push	ecx
push	edx
call	sub_10075970
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DE0C
mov	eax, [esp+1Ch+var_8]
push	edi
push	eax
call	sub_100955D0
inc	ebx
add	esp, 8
mov	[esp+1Ch+var_8], esi
cmp	ebx, ebp
jl	short loc_1000DD90
mov	ecx, [esp+1Ch+var_C]
push	edi
push	ecx
call	sub_10075700
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DE0C
mov	edx, [esp+1Ch+var_C]
push	edi
push	edx
call	sub_10095450
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000DE0C
mov	eax, [esp+1Ch+var_C]
mov	[esp+1Ch+var_4], eax
			
pop	ebp
mov	eax, [esp+18h+var_8]
test	eax, eax
jz	short loc_1000DE1F
push	edi
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+18h+var_C]
test	eax, eax
jz	short loc_1000DE31
push	edi
push	eax
call	sub_100955D0
add	esp, 8
test	esi, esi
jz	short loc_1000DE3F
push	edi
push	esi
call	sub_100955D0
add	esp, 8
mov	eax, [esp+18h+var_4]
pop	edi
pop	esi
pop	ebx
add	esp, 0Ch
retn
align 10h
			
mov	eax, [esp+arg_0]
test	eax, eax
jz	short loc_1000DE70
mov	ecx, [eax]
test	ecx, ecx
jz	short loc_1000DE70
mov	edx, [esp+arg_4]
cmp	ecx, edx
jz	short locret_1000DE72
mov	ecx, [eax+20h]
add	eax, 20h
test	ecx, ecx
jnz	short loc_1000DE62
			
xor	eax, eax
retn
align 10h
			
xor	eax, eax
cmp	[esi], edi
ja	short loc_1000DE87
retn
mov	ecx, [esi+0Ch]
test	ecx, ecx
jz	short loc_1000DEA3
mov	edx, [esi+8]
xor	eax, eax
test	edx, edx
jz	short loc_1000DEA3
cmp	[ecx], edi
jz	short loc_1000DEA3
inc	eax
add	ecx, 4
cmp	eax, edx
jb	short loc_1000DE97
			
cmp	[esp+arg_8], 0
mov	ecx, [esi+4]
mov	ecx, [ecx+edi*8]
jz	short loc_1000DEB8
cmp	ebx, 1
jnz	short loc_1000DEB8
or	ecx, 2
			
mov	edx, [esp+arg_10]
push	edx
mov	edx, [esp+4+arg_C]
push	edx
push	0
push	eax
mov	eax, [esp+10h+arg_4]
push	ecx
mov	ecx, [esp+14h+arg_0]
push	ebx
push	eax
push	ecx
call	sub_10058C90
add	esp, 20h
retn
align 10h
sub	esp, 1Ch
push	ebx
push	ebp
mov	ebp, [esp+24h+arg_8]
push	esi
mov	esi, [esp+28h+arg_4]
mov	eax, [esi]
xor	ebx, ebx
push	edi
xor	ecx, ecx
add	eax, 0FFFFFFFCh
xor	edi, edi
mov	[esp+2Ch+var_18], ecx
mov	[esp+2Ch+var_C], ebx
mov	[esp+2Ch+var_8], ebx
mov	[esp+2Ch+var_4], 0FFFFE005h
mov	[esp+2Ch+var_10], ebx
mov	[esp+2Ch+var_14], ebx
mov	[esp+2Ch+var_1C], ebx
cmp	eax, 0Ah	
ja	loc_1000E07C	
jmp	ds:off_1000E2C0[eax*4] 
			
mov	ebx, [esp+2Ch+arg_0] 
push	ebp
push	1
push	ebx
call	sub_10062860
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_1000DF85
mov	eax, [esi+18h]
mov	ecx, [esi+14h]
push	ebp
push	eax
push	ecx
call	sub_1000DD50
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1000DF6E
push	0FFFFE005h
mov	[esp+30h+var_18], 0FFFFFFFFh
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000DF85
push	ebp
push	esi
push	ebx
call	sub_10061F00
add	esp, 0Ch
push	ebp
push	esi
mov	edi, eax
call	sub_100955D0
add	esp, 8
			
xor	ebx, ebx
			
mov	eax, [esp+2Ch+var_C]
cmp	eax, ebx
jz	short loc_1000DF99
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+2Ch+var_1C]
cmp	eax, ebx
jz	short loc_1000DFAB
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+2Ch+var_8]
cmp	eax, ebx
jz	short loc_1000DFBD
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+2Ch+var_14]
cmp	eax, ebx
jz	short loc_1000DFCF
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+2Ch+var_10]
cmp	eax, ebx
jz	short loc_1000DFE1
push	ebp
push	eax
call	sub_100955D0
add	esp, 8
cmp	edi, ebx
jz	loc_1000E2B1
push	ebp
push	edi
call	sub_100955D0
mov	edx, [esp+34h+var_4]
push	edx
call	PORT_SetError_Util
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 1Ch
retn
			
mov	eax, [esi+8]	
mov	esi, [esi+0Ch]
mov	edx, eax
or	edx, esi
push	ebp
jnz	short loc_1000E036
lea	eax, [esp+30h+var_C]
push	eax
push	ebx
call	sub_10088CB0
add	esp, 0Ch
mov	edi, eax
cmp	edi, ebx
jz	short loc_1000E047
mov	[esp+2Ch+var_4], 0FFFFE008h
jmp	loc_1000DF87
lea	ecx, [esp+30h+var_C]
push	ecx
push	esi
push	eax
call	sub_10088480
add	esp, 10h
jmp	short loc_1000E023
mov	edx, [esp+2Ch+var_C]
mov	eax, [esp+2Ch+arg_0]
push	ebp
push	edx
push	eax
call	sub_100619F0
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jz	loc_1000DF87
mov	[esp+2Ch+var_4], 0FFFFE008h
jmp	loc_1000DF87
			
mov	esi, [esi+10h]	
mov	[esp+2Ch+arg_8], ebx
cmp	esi, ebx
jnz	short loc_1000E096
			
push	0FFFFE005h	
call	PORT_SetError_Util
add	esp, 4
mov	[esp+2Ch+var_18], 0FFFFFFFFh
jmp	loc_1000DF87
mov	ecx, [esi+28h]
mov	eax, [esi+10h]
push	ebp
lea	edx, [esp+30h+var_1C]
push	edx
push	ecx
push	eax
call	sub_10058B80
mov	edi, eax
add	esp, 10h
cmp	edi, ebx
jnz	loc_1000DF87
mov	eax, [esp+2Ch+var_1C]
mov	ebx, [esp+2Ch+arg_0]
push	ebp
push	eax
push	ebx
call	sub_10062270
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	loc_1000DF85
mov	eax, [ebp+0]
and	eax, 400h
xor	ecx, ecx
or	eax, ecx
jz	short loc_1000E0E9
mov	[esp+2Ch+arg_8], 1
mov	ecx, [esp+2Ch+arg_8]
mov	edx, [esp+2Ch+var_1C]
push	ebp
push	1
push	ecx
push	ebx
push	edx
xor	ebx, ebx
xor	edi, edi
call	sub_1000DE80
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	loc_1000DF85
mov	eax, [esp+2Ch+arg_8]
mov	ecx, [esp+2Ch+arg_0]
mov	edx, [esp+2Ch+var_1C]
push	ebp
push	1
push	eax
push	ecx
mov	ebx, 1
push	edx
mov	edi, ebx
call	sub_1000DE80
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	loc_1000DF85
mov	ecx, [esp+2Ch+arg_0]
mov	edx, [esp+2Ch+var_1C]
push	ebp
push	eax
mov	eax, [esp+34h+arg_8]
push	eax
push	ecx
add	esi, 18h
push	edx
xor	ebx, ebx
call	sub_1000DE80
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	loc_1000DF85
mov	ecx, [esp+2Ch+arg_0]
mov	edx, [esp+2Ch+var_1C]
push	ebp
push	eax
mov	eax, [esp+34h+arg_8]
push	eax
push	ecx
mov	ebx, 1
push	edx
mov	edi, ebx
call	sub_1000DE80
add	esp, 14h
mov	edi, eax
jmp	loc_1000DF85
			
mov	esi, [esi+10h]	
cmp	esi, ebx
jnz	short loc_1000E1A8
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+2Ch+var_18], 0FFFFFFFFh
jmp	loc_1000DF87
lea	eax, [esp+2Ch+var_8]
push	ebp
push	eax
call	sub_100755D0
mov	edi, eax
add	esp, 8
cmp	edi, ebx
jnz	loc_1000DF87
mov	edi, [esi]
cmp	edi, esi
jz	short loc_1000E231
mov	edx, [edi+8]
push	ebp
lea	ecx, [esp+30h+var_10]
push	ecx
push	edx
call	sub_1007D6A0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000E231
mov	ecx, [esp+2Ch+var_10]
push	ebp
lea	eax, [esp+30h+var_14]
push	eax
push	ecx
call	sub_10060470
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000E231
mov	edx, [esp+2Ch+var_14]
mov	eax, [esp+2Ch+var_8]
push	ebp
push	edx
push	eax
call	sub_10075970
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000E231
mov	ecx, [esp+2Ch+var_14]
push	ebp
push	ecx
call	sub_100955D0
mov	edx, [esp+34h+var_10]
push	ebp
push	edx
mov	[esp+3Ch+var_14], ebx
call	sub_100955D0
mov	[esp+3Ch+var_10], ebx
mov	edi, [edi]
add	esp, 10h
cmp	edi, esi
jnz	short loc_1000E1C6
			
mov	eax, [esp+2Ch+var_8]
mov	ecx, [esp+2Ch+arg_0]
push	ebp
push	eax
push	ecx
call	sub_100616A0
add	esp, 0Ch
mov	edi, eax
jmp	loc_1000DF87
			
mov	eax, [esp+2Ch+arg_0] 
xor	edx, edx
cmp	[esi+8], ebx
push	ebp
setnz	dl
push	edx
push	eax
call	sub_100615A0
add	esp, 0Ch
mov	edi, eax
jmp	loc_1000DF87
			
mov	esi, [esi+10h]	
cmp	esi, ebx
jz	loc_1000E07C	
cmp	[esi], ebx
jz	loc_1000E07C	
mov	edx, [esi]
mov	eax, ebp
pop	edi
mov	[eax+28h], edx
mov	edx, [esi+4]
pop	esi
pop	ebp
mov	[eax+2Ch], edx
mov	eax, ecx
pop	ebx
add	esp, 1Ch
retn
			
mov	ecx, [esp+2Ch+arg_0] 
xor	eax, eax
cmp	[esi+8], ebx
push	ebp
setnz	al
push	eax
push	ecx
call	sub_100618A0
add	esp, 0Ch
mov	edi, eax
jmp	loc_1000DF87
mov	eax, [esp+2Ch+var_18]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 1Ch
retn
align 10h
dd offset loc_1000E07C	
dd offset loc_1000E07C
dd offset loc_1000E07C
dd offset loc_1000E008
dd offset loc_1000E071
dd offset loc_1000E07C
dd offset loc_1000E187
dd offset loc_1000E24B
dd offset loc_1000E269
dd offset loc_1000E293
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jz	short locret_1000E339
cmp	dword ptr [eax], 0
jz	short locret_1000E339
push	esi
lea	esi, [eax+10h]
mov	eax, [esi-10h]
sub	eax, 2
jz	short loc_1000E31A
dec	eax
jnz	short loc_1000E32F
mov	eax, [esi]
test	eax, eax
jz	short loc_1000E32F
push	eax
call	CERT_DestroyCertList
jmp	short loc_1000E326
mov	eax, [esi]
test	eax, eax
jz	short loc_1000E32F
push	eax
call	CERT_DestroyCertificate
mov	dword ptr [esi], 0
add	esp, 4
			
add	esi, 20h
cmp	dword ptr [esi-10h], 0
jnz	short loc_1000E301
pop	esi
			
retn
align 10h
public CERT_GetClassicOCSPEnabledSoftFailurePolicy
mov	eax, offset dword_100A24D8
retn
align 10h
public CERT_GetClassicOCSPEnabledHardFailurePolicy
mov	eax, offset dword_100A2508
retn
align 10h
public CERT_GetClassicOCSPDisabledPolicy
mov	eax, offset dword_100A2538
retn
align 10h
public CERT_GetPKIXVerifyNistRevocationPolicy
mov	eax, offset dword_100A2568
retn
align 10h
public CERT_DestroyCERTRevocationFlags
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1000E3D2
mov	eax, [esi+4]
test	eax, eax
jz	short loc_1000E399
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+0Ch]
test	eax, eax
jz	short loc_1000E3A9
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+1Ch]
test	eax, eax
jz	short loc_1000E3B9
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+24h]
test	eax, eax
jz	short loc_1000E3C9
push	eax
call	PORT_Free_Util
add	esp, 4
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
public CERT_PKIXVerifyCert
sub	esp, 34h
mov	ecx, [esp+34h+arg_14]
push	ebx
xor	ebx, ebx
push	esi
push	edi
lea	eax, [esp+40h+var_34]
push	eax
push	ecx
push	ebx
push	ebx
mov	[esp+50h+var_C], 0FFFFFFFFh
mov	[esp+50h+var_30], ebx
mov	[esp+50h+var_2C], ebx
mov	[esp+50h+var_4], ebx
mov	[esp+50h+var_8], ebx
mov	[esp+50h+var_14], ebx
mov	[esp+50h+var_18], ebx
mov	[esp+50h+var_1C], ebx
mov	[esp+50h+var_28], ebx
mov	[esp+50h+var_20], ebx
mov	[esp+50h+var_24], ebx
mov	[esp+50h+var_10], ebx
mov	[esp+50h+var_34], ebx
call	sub_1009C050
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jz	short loc_1000E44C
push	0FFFFE01Ch
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1000E682
mov	edx, [esp+40h+var_34]
mov	eax, [esp+40h+arg_8]
mov	ecx, [esp+40h+arg_4]
push	edx
push	eax
push	ecx
call	sub_1009C210
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jz	short loc_1000E47B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1000E682
mov	edx, [esp+40h+var_34]
push	edx
lea	eax, [esp+44h+var_30]
push	eax
call	sub_100613C0
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	short loc_1000E4A5
push	0FFFFE01Ch
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1000E682
mov	edi, [esp+40h+var_34]
call	sub_1000DC80
mov	[esp+40h+var_18], eax
cmp	eax, ebx
jz	loc_1000E682
mov	ecx, [esp+40h+var_34]
push	ecx
mov	edx, eax
mov	eax, [esp+44h+var_30]
push	edx
push	eax
call	sub_100624A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	loc_1000E682
push	ebp
mov	ebp, [esp+44h+arg_C]
cmp	ebp, ebx
jz	short loc_1000E520
xor	edi, edi
cmp	[ebp+0], ebx
jz	short loc_1000E520
mov	eax, ebp
jmp	short loc_1000E4F0
align 10h
			
cmp	dword ptr [eax], 0Fh
jge	loc_1000E623
mov	ecx, [esp+44h+var_34]
mov	edx, [esp+44h+var_30]
push	ecx
push	eax
push	edx
call	sub_1000DEE0
add	esp, 0Ch
test	eax, eax
jnz	loc_1000E623
inc	edi
mov	eax, edi
shl	eax, 5
add	eax, ebp
cmp	[eax], ebx
jnz	short loc_1000E4F0
			
mov	ecx, [esp+44h+var_34]
mov	edx, [esp+44h+arg_0]
push	ecx
push	edx
call	sub_1000DB60
add	esp, 8
mov	[esp+44h+var_14], eax
cmp	eax, ebx
jz	loc_1000E681
mov	eax, [esp+44h+var_34]
mov	ecx, [esp+44h+var_14]
mov	edx, [esp+44h+var_30]
push	eax
push	ecx
push	edx
call	sub_10061C10
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	loc_1000E681
mov	eax, [esp+44h+var_34]
push	eax
lea	ecx, [esp+48h+var_28]
push	ecx
lea	edx, [esp+4Ch+var_2C]
push	edx
mov	edx, [esp+50h+var_30]
lea	eax, [esp+50h+var_8]
push	eax
lea	ecx, [esp+54h+var_4]
push	ecx
push	edx
call	sub_10071FD0
mov	esi, eax
add	esp, 18h
cmp	esi, ebx
jnz	loc_1000E681
mov	eax, [esp+44h+var_34]
mov	edx, [esp+44h+var_2C]
push	eax
lea	ecx, [esp+48h+var_1C]
push	ecx
push	edx
call	sub_10064670
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	loc_1000E681
mov	eax, [esp+44h+var_34]
mov	edx, [esp+44h+var_1C]
push	eax
lea	ecx, [esp+48h+var_20]
push	ecx
push	edx
call	sub_10067550
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	loc_1000E681
mov	eax, [esp+44h+var_20]
cmp	eax, ebx
jz	short loc_1000E5F6
mov	ecx, [esp+44h+var_34]
push	ecx
lea	edx, [esp+48h+var_24]
push	edx
push	eax
call	sub_10060600
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	loc_1000E681
mov	edi, [esp+44h+arg_10]
push	2
push	edi
call	sub_1000DE50
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	short loc_1000E635
mov	eax, [esp+44h+var_24]
cmp	eax, ebx
jz	short loc_1000E632
mov	eax, [eax]
push	eax
call	CERT_DupCertificate
add	esp, 4
mov	[esi+10h], eax
jmp	short loc_1000E635
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000E681
mov	[esi+10h], ebx
			
mov	ecx, [esp+44h+var_34]
mov	eax, [esp+44h+var_2C]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
push	eax
call	sub_10064740
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	short loc_1000E681
push	3
push	edi
call	sub_1000DE50
add	esp, 8
cmp	eax, ebx
jz	short loc_1000E67D
mov	ecx, [esp+44h+var_34]
mov	edx, [esp+44h+var_10]
push	ecx
add	eax, 10h
push	eax
push	edx
call	sub_1000CFB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	short loc_1000E681
mov	[esp+44h+var_C], ebx
			
pop	ebp
			
mov	edx, [esp+40h+var_28]
mov	edi, [esp+40h+arg_10]
cmp	edx, ebx
jz	short loc_1000E6F1
cmp	edi, ebx
jz	short loc_1000E6AF
mov	eax, [edi]
mov	ecx, edi
cmp	eax, ebx
jz	short loc_1000E6AF
lea	ebx, [ebx+0]
cmp	eax, 5
jz	short loc_1000E6B1
mov	eax, [ecx+20h]
add	ecx, 20h
cmp	eax, ebx
jnz	short loc_1000E6A0
			
xor	ecx, ecx
cmp	[esp+40h+var_C], ebx
jz	short loc_1000E6DF
cmp	ecx, ebx
jz	short loc_1000E6DF
mov	eax, [esp+40h+var_34]
mov	ecx, [ecx+10h]
push	eax
push	edx
push	ecx
call	sub_1000D4E0
add	esp, 0Ch
cmp	eax, ebx
jz	short loc_1000E6DF
mov	edx, [esp+40h+var_34]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
			
mov	eax, [esp+40h+var_34]
mov	ecx, [esp+40h+var_28]
push	eax
push	ecx
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_30]
cmp	eax, ebx
jz	short loc_1000E707
mov	edx, [esp+40h+var_34]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_24]
cmp	eax, ebx
jz	short loc_1000E71D
mov	ecx, [esp+40h+var_34]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_20]
cmp	eax, ebx
jz	short loc_1000E733
mov	edx, [esp+40h+var_34]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_1C]
cmp	eax, ebx
jz	short loc_1000E749
mov	ecx, [esp+40h+var_34]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_2C]
cmp	eax, ebx
jz	short loc_1000E75F
mov	edx, [esp+40h+var_34]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_18]
cmp	eax, ebx
jz	short loc_1000E775
mov	ecx, [esp+40h+var_34]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_14]
cmp	eax, ebx
jz	short loc_1000E78B
mov	edx, [esp+40h+var_34]
push	edx
push	eax
call	sub_100955D0
add	esp, 8
mov	eax, [esp+40h+var_10]
cmp	eax, ebx
jz	short loc_1000E7A1
mov	ecx, [esp+40h+var_34]
push	ecx
push	eax
call	sub_100955D0
add	esp, 8
cmp	esi, ebx
jz	short loc_1000E7D8
mov	edx, [esp+40h+var_34]
push	edx
lea	eax, [esp+44h+var_14]
push	eax
mov	edx, esi
mov	[esp+48h+var_14], ebx
call	sub_1000D410
push	edi
call	sub_1000E2F0
mov	ecx, [esp+4Ch+var_14]
push	ecx
call	PORT_SetError_Util
mov	edx, [esp+50h+var_34]
push	edx
push	esi
call	sub_100955D0
add	esp, 18h
mov	eax, [esp+40h+var_34]
push	eax
call	sub_1009C180
mov	eax, [esp+44h+var_C]
add	esp, 4
pop	edi
pop	esi
pop	ebx
add	esp, 34h
retn
public CERT_AllocCERTRevocationFlags
push	esi
push	30h
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000E87E
mov	eax, [esp+4+arg_0]
mov	[esi], eax
add	eax, eax
add	eax, eax
add	eax, eax
push	eax
call	PORT_Alloc_Util
mov	[esi+4], eax
mov	eax, [esp+8+arg_4]
lea	ecx, ds:0[eax*4]
push	ecx
mov	[esi+8], eax
call	PORT_Alloc_Util
mov	[esi+0Ch], eax
mov	eax, [esp+0Ch+arg_8]
lea	edx, ds:0[eax*8]
push	edx
mov	[esi+18h], eax
call	PORT_Alloc_Util
mov	[esi+1Ch], eax
mov	eax, [esp+10h+arg_C]
mov	[esi+20h], eax
add	eax, eax
add	eax, eax
push	eax
call	PORT_Alloc_Util
add	esp, 10h
cmp	dword ptr [esi+4], 0
mov	[esi+24h], eax
jz	short loc_1000E875
cmp	dword ptr [esi+0Ch], 0
jz	short loc_1000E875
cmp	dword ptr [esi+1Ch], 0
jz	short loc_1000E875
test	eax, eax
jz	short loc_1000E875
mov	eax, esi
pop	esi
retn
			
push	esi
call	CERT_DestroyCERTRevocationFlags
add	esp, 4
xor	eax, eax
pop	esi
retn
align 10h
public CERT_EncodeCRLDistributionPoints
push	ecx
push	ebp
push	edi
xor	ebp, ebp
push	800h
mov	[esp+10h+var_4], ebp
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jnz	short loc_1000E8C6
push	ebp
push	edi
mov	[esp+14h+var_4], 0FFFFFFFFh
call	PORT_FreeArena_Util
mov	eax, [esp+14h+var_4]
add	esp, 8
pop	edi
pop	ebp
pop	ecx
retn
mov	eax, [esp+0Ch+arg_4]
push	ebx
mov	ebx, [eax]
push	esi
mov	esi, [ebx]
cmp	esi, ebp
jz	loc_1000E960
mov	eax, [esi]
sub	eax, ebp
mov	[esi+34h], ebp
mov	[esi+1Ch], ebp
jz	short loc_1000E925
dec	eax
jz	short loc_1000E8FA
dec	eax
jnz	loc_1000E99C
push	offset dword_100A25B0
push	esi
lea	ecx, [esi+18h]
push	ecx
jmp	short loc_1000E918
mov	edx, [esi+4]
push	edx
push	edi
call	sub_10041E00
add	esp, 8
mov	[esi+34h], eax
cmp	eax, ebp
jz	short loc_1000E980
push	offset dword_100A25A0
push	esi
lea	eax, [esi+18h]
push	eax
push	edi
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_1000E980
cmp	[esi+0Ch], ebp
jz	short loc_1000E93A
lea	ecx, [esi+8]
push	ecx
lea	edx, [esi+38h]
push	edx
call	sub_1003ED30
add	esp, 8
mov	eax, [esi+14h]
cmp	eax, ebp
jz	short loc_1000E952
push	eax
push	edi
call	sub_10041E00
add	esp, 8
mov	[esi+30h], eax
cmp	eax, ebp
jz	short loc_1000E980
mov	esi, [ebx+4]
add	ebx, 4
cmp	esi, ebp
jnz	loc_1000E8D8
mov	eax, [esp+14h+arg_4]
mov	ecx, [esp+14h+arg_8]
mov	edx, [esp+14h+arg_0]
push	offset dword_100A2650
push	eax
push	ecx
push	edx
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_1000E988
			
mov	[esp+14h+var_4], 0FFFFFFFFh
pop	esi
pop	ebx
push	ebp
push	edi
call	PORT_FreeArena_Util
mov	eax, [esp+14h+var_4]
add	esp, 8
pop	edi
pop	ebp
pop	ecx
retn
push	0FFFFE022h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000E980
align 10h
public CERT_DecodeCRLDistributionPoints
			
sub	esp, 1Ch
push	ebx
mov	ebx, [esp+20h+arg_0]
push	esi
push	edi
push	4
push	ebx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
mov	[esp+28h+var_1C], esi
test	esi, esi
jnz	short loc_1000E9E1
or	edi, 0FFFFFFFFh
neg	edi
sbb	eax, eax
not	eax
pop	edi
and	eax, esi
pop	esi
pop	ebx
add	esp, 1Ch
retn
mov	eax, [esp+28h+arg_4]
push	eax
lea	ecx, [esp+2Ch+var_C]
push	ecx
push	ebx
call	SECITEM_CopyItem_Util
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_1000EA5C
lea	edx, [esp+28h+var_C]
push	edx
push	offset dword_100A2650
push	esi
push	ebx
call	SEC_QuickDERDecodeItem_Util
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_1000EA5C
push	ebp
mov	ebp, [esi]
mov	esi, [ebp+0]
test	esi, esi
jz	short loc_1000EA57
mov	edi, edi
cmp	dword ptr [esi+1Ch], 0
jz	short loc_1000EA86
lea	eax, [esi+18h]
push	eax
push	offset dword_100A25C0
push	esi
push	ebx
call	SEC_QuickDERDecodeItem_Util
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_1000EA57
mov	eax, [esi]
dec	eax
jz	short loc_1000EA6B
dec	eax
jz	short loc_1000EA86
push	0FFFFE022h
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
			
mov	esi, [esp+2Ch+var_1C]
pop	ebp
			
neg	edi
sbb	eax, eax
not	eax
pop	edi
and	eax, esi
pop	esi
pop	ebx
add	esp, 1Ch
retn
mov	ecx, [esi+34h]
push	ecx
push	ebx
call	sub_100420B0
mov	[esi+4], eax
add	esp, 8
neg	eax
sbb	eax, eax
neg	eax
dec	eax
mov	edi, eax
jnz	short loc_1000EA57
			
cmp	dword ptr [esi+3Ch], 0
jz	short loc_1000EABF
mov	eax, [esi+3Ch]
mov	edx, [esi+38h]
mov	[esp+2Ch+var_14], eax
mov	eax, [esi+40h]
lea	ecx, [esp+2Ch+var_18]
mov	[esp+2Ch+var_18], edx
push	ecx
lea	edx, [esi+8]
add	eax, 7
push	edx
shr	eax, 3
push	ebx
mov	[esp+38h+var_10], eax
call	SECITEM_CopyItem_Util
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_1000EA57
mov	eax, [esi+30h]
test	eax, eax
jz	short loc_1000EAD7
push	eax
push	ebx
call	sub_100420B0
add	esp, 8
mov	[esi+14h], eax
test	eax, eax
jz	short loc_1000EA57
mov	esi, [ebp+4]
add	ebp, 4
test	esi, esi
jnz	loc_1000EA20
mov	esi, [esp+2Ch+var_1C]
neg	edi
sbb	eax, eax
pop	ebp
not	eax
pop	edi
and	eax, esi
pop	esi
pop	ebx
add	esp, 1Ch
retn
align 10h
public __PBE_GenerateBits
			
xor	eax, eax	
			
retn
align 10h
mov	eax, [esp+arg_8]
mov	dword ptr [eax], 0
retn
align 10h
push	1
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	3
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	4
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	135h
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	0BFh
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	0C0h
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
push	0C1h
call	PK11_CreateDigestContext
add	esp, 4
retn
align 10h
public HASH_GetHashObject
mov	eax, [esp+arg_0]
lea	eax, [eax+eax*4]
lea	eax, dword_100A2660[eax*8]
retn
align 10h
public HASH_GetHashTypeByOidTag
			
mov	eax, [esp+arg_0]
cmp	eax, 0BFh
jg	short loc_1000EBD0
jz	short loc_1000EBCA
dec	eax
jz	short loc_1000EBC4
sub	eax, 2
jz	short loc_1000EBBE
dec	eax
jnz	short loc_1000EBDF
mov	eax, 3
retn
mov	eax, 2
retn
mov	eax, 1
retn
mov	eax, 4
retn
sub	eax, 0C0h
jz	short loc_1000EBFF
dec	eax
jz	short loc_1000EBF9
sub	eax, 74h
jz	short loc_1000EBF3
push	esi
push	0FFFFE006h
xor	esi, esi
call	PORT_SetError_Util
add	esp, 4
mov	eax, esi
pop	esi
retn
mov	eax, 7
retn
mov	eax, 6
retn
mov	eax, 5
retn
align 10h
			
mov	eax, [esp+arg_0]
add	eax, 0FFFFFEDAh	
cmp	eax, 4
ja	short loc_1000EC43 
jmp	ds:off_1000EC58[eax*4] 
			
mov	eax, 4		
retn
			
mov	eax, 135h	
retn
			
mov	eax, 0BFh	
retn
			
mov	eax, 0C0h	
retn
			
mov	eax, 0C1h	
retn
push	esi		
push	0FFFFE006h
xor	esi, esi
call	PORT_SetError_Util
add	esp, 4
mov	eax, esi
pop	esi
retn
align 4
dd offset loc_1000EC2B	
dd offset loc_1000EC31
dd offset loc_1000EC37
dd offset loc_1000EC3D
align 10h
public HASH_GetHashObjectByOidTag
			
mov	eax, [esp+arg_0]
push	eax
call	HASH_GetHashTypeByOidTag
add	esp, 4
test	eax, eax
jnz	short loc_1000EC82
retn
lea	eax, [eax+eax*4]
lea	eax, dword_100A2660[eax*8]
retn
align 10h
public HASH_ResultLenByOidTag
			
			
mov	eax, [esp+arg_0]
push	eax
call	HASH_GetHashTypeByOidTag
add	esp, 4
test	eax, eax
jnz	short loc_1000ECA5
xor	ecx, ecx
jmp	short loc_1000ECAF
lea	ecx, [eax+eax*4]
lea	ecx, dword_100A2660[ecx*8]
xor	eax, eax
test	ecx, ecx
jz	short locret_1000ECB7
mov	eax, [ecx]
retn
align 10h
public HASH_ResultLen
mov	eax, [esp+arg_0]
cmp	eax, 7
ja	short loc_1000ECD4
lea	eax, [eax+eax*4]
mov	eax, ds:dword_100A2660[eax*8]
retn
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
align 10h
public HASH_ResultLenContext
mov	eax, [esp+arg_0]
mov	ecx, [eax]
mov	eax, [ecx]
retn
align 10h
public HASH_Create
			
mov	eax, [esp+arg_0]
cmp	eax, 7
ja	short loc_1000ED52
push	esi
lea	esi, [eax+eax*4]
add	esi, esi
add	esi, esi
mov	eax, ds:off_100A2664[esi+esi]
add	esi, esi
push	edi
call	eax
mov	edi, eax
test	edi, edi
jz	short loc_1000ED3F
push	8
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jnz	short loc_1000ED44
mov	ecx, ds:off_100A266C[esi]
push	1
push	edi
call	ecx
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
mov	[eax+4], edi
lea	edx, dword_100A2660[esi]
pop	edi
mov	[eax], edx
pop	esi
retn
xor	eax, eax
retn
align 10h
public HASH_Clone
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi]
mov	ecx, [esi+4]
mov	edx, [eax+8]
push	edi
push	ecx
call	edx
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_1000ED95
push	8
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jnz	short loc_1000ED9A
mov	eax, [esi]
mov	ecx, [eax+0Ch]
push	1
push	edi
call	ecx
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
mov	[eax+4], edi
mov	edx, [esi]
pop	edi
mov	[eax], edx
pop	esi
retn
align 10h
public HASH_Destroy
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi]
mov	ecx, [esi+4]
mov	edx, [eax+0Ch]
push	1
push	ecx
call	edx
push	esi
call	PORT_Free_Util
add	esp, 0Ch
pop	esi
retn
align 10h
public HASH_Begin
mov	eax, [esp+arg_0]
mov	edx, [eax+4]
mov	ecx, [eax]
mov	eax, [ecx+10h]
mov	[esp+arg_0], edx
jmp	eax
align 10h
public HASH_Update
mov	eax, [esp+arg_0]
mov	ecx, [eax]
mov	eax, [eax+4]
mov	ecx, [ecx+14h]
mov	[esp+arg_0], eax
jmp	ecx
align 10h
public HASH_End
mov	eax, [esp+arg_0]
mov	ecx, [eax]
mov	eax, [eax+4]
mov	ecx, [ecx+18h]
mov	[esp+arg_0], eax
jmp	ecx
align 10h
public HASH_GetType
mov	eax, [esp+arg_0]
mov	ecx, [eax]
mov	eax, [ecx+20h]
retn
align 10h
public HASH_HashBuf
mov	eax, [esp+arg_0]
cmp	eax, 7
ja	short loc_1000EEB0
push	esi
push	eax
call	HASH_Create
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000EE5E
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esi]
mov	ecx, [esi+4]
mov	edx, [eax+10h]
push	ecx
call	edx
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
mov	eax, [esi]
push	ecx
mov	ecx, [esi+4]
push	edx
mov	edx, [eax+14h]
push	ecx
call	edx
mov	eax, [esi]
mov	ecx, [eax]
mov	eax, [eax+18h]
push	ecx
mov	ecx, [esp+18h+arg_4]
lea	edx, [esp+18h+arg_0]
push	edx
mov	edx, [esi+4]
push	ecx
push	edx
call	eax
mov	ecx, [esi]
mov	edx, [esi+4]
mov	eax, [ecx+0Ch]
push	1
push	edx
call	eax
push	esi
call	PORT_Free_Util
add	esp, 2Ch
xor	eax, eax
pop	esi
retn
or	eax, 0FFFFFFFFh
retn
align 10h
public NSS_Get_SECKEY_DSAPublicKeyTemplate
mov	eax, offset dword_100A28D8
retn
align 10h
public NSS_Get_SECKEY_RSAPublicKeyTemplate
mov	eax, offset dword_100A2828
retn
align 10h
public NSS_Get_SECKEY_RSAPSSParamsTemplate
mov	eax, offset dword_100A2878
retn
align 10h
public NSS_Get_CERT_SubjectPublicKeyInfoTemplate
mov	eax, offset dword_100A27A8
retn
align 10h
public SECKEY_CreateRSAPrivateKey
sub	esp, 8
push	esi
push	edi
mov	edi, [esp+10h+arg_8]
push	edi
push	0
call	PK11_GetBestSlot
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000EF20
pop	edi
pop	esi
add	esp, 8
retn
mov	ecx, [esp+10h+arg_4]
mov	eax, [esp+10h+arg_0]
push	edi
push	1
push	0
push	ecx
lea	edx, [esp+20h+var_8]
push	edx
push	0
push	esi
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], 10001h
call	PK11_GenerateKeyPair
push	esi
mov	edi, eax
call	PK11_FreeSlot
add	esp, 20h
mov	eax, edi
pop	edi
pop	esi
add	esp, 8
retn
align 10h
public SECKEY_CreateDHPrivateKey
push	ebx
mov	ebx, [esp+4+arg_0]
test	ebx, ebx
jz	loc_1000EFFB
mov	edx, [ebx+14h]
test	edx, edx
jz	loc_1000EFFB
cmp	dword ptr [ebx+8], 0
jz	short loc_1000EFFB
mov	ecx, [ebx+0Ch]
cmp	ecx, 40h
jb	short loc_1000EFFB
mov	eax, [ebx+18h]
test	eax, eax
jz	short loc_1000EFFB
inc	ecx
cmp	eax, ecx
ja	short loc_1000EFFB
cmp	eax, 1
jnz	short loc_1000EF9C
cmp	byte ptr [edx],	0
jz	short loc_1000EFFB
push	ebp
mov	ebp, [esp+8+arg_8]
push	esi
push	ebp
push	20h
call	PK11_GetBestSlot
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000EFB7
pop	esi
pop	ebp
pop	ebx
retn
mov	eax, [esp+0Ch+arg_4]
push	edi
push	ebp
push	0
push	0
push	eax
push	ebx
push	20h
push	esi
call	PK11_GenerateKeyPair
mov	edi, eax
add	esp, 1Ch
test	edi, edi
jnz	short loc_1000EFEB
mov	ecx, [esp+10h+arg_4]
push	ebp
push	1
push	eax
push	ecx
push	ebx
push	20h
push	esi
call	PK11_GenerateKeyPair
add	esp, 1Ch
mov	edi, eax
push	esi
call	PK11_FreeSlot
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	ebx
retn
align 10h
public SECKEY_CreateECPrivateKey
push	ebx
mov	ebx, [esp+4+arg_8]
push	edi
push	ebx
push	1040h
call	PK11_GetBestSlot
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1000F02D
pop	edi
pop	ebx
retn
mov	eax, [esp+8+arg_0]
push	ebp
mov	ebp, [esp+0Ch+arg_4]
push	esi
push	ebx
push	80800h
push	80000h
push	8Ah
push	ebp
push	eax
push	1040h
push	edi
call	PK11_GenerateKeyPairWithOpFlags
mov	esi, eax
add	esp, 20h
test	esi, esi
jnz	short loc_1000F080
mov	ecx, [esp+10h+arg_0]
push	ebx
push	80800h
push	80000h
push	46h
push	ebp
push	ecx
push	1040h
push	edi
call	PK11_GenerateKeyPairWithOpFlags
add	esp, 20h
mov	esi, eax
push	edi
call	PK11_FreeSlot
add	esp, 4
mov	eax, esi
pop	esi
pop	ebp
pop	edi
pop	ebx
retn
public SECKEY_DestroyPrivateKey
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1000F0D0
mov	eax, [esi+8]
test	eax, eax
jz	short loc_1000F0BF
cmp	dword ptr [esi+10h], 0
jz	short loc_1000F0B3
mov	ecx, [esi+0Ch]
push	ecx
push	eax
call	PK11_DestroyObject
add	esp, 8
mov	edx, [esi+8]
push	edx
call	PK11_FreeSlot
add	esp, 4
mov	esi, [esi]
test	esi, esi
jz	short loc_1000F0D0
push	1
push	esi
call	PORT_FreeArena_Util
add	esp, 8
			
pop	esi
retn
align 10h
public SECKEY_DestroyPublicKey
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1000F12E
mov	eax, [esi+8]
test	eax, eax
jz	short loc_1000F11D
mov	ecx, [esi+0Ch]
push	ecx
push	eax
call	sub_1002A4C0
add	esp, 8
test	eax, eax
jnz	short loc_1000F111
mov	edx, [esi+0Ch]
mov	eax, [esi+8]
push	edx
push	eax
call	PK11_DestroyObject
add	esp, 8
mov	ecx, [esi+8]
push	ecx
call	PK11_FreeSlot
add	esp, 4
mov	esi, [esi]
test	esi, esi
jz	short loc_1000F12E
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
			
pop	esi
retn
public SECKEY_CopySubjectPublicKeyInfo
			
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
push	esi
mov	esi, [esp+14h+arg_8]
push	edi
mov	edi, [esp+18h+arg_4]
lea	eax, [esi+4]
push	eax
lea	ecx, [edi+4]
push	ecx
push	ebx
call	SECOID_CopyAlgorithmID_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F18E
mov	eax, [esi+20h]
mov	edx, [esi+1Ch]
mov	[esp+18h+var_8], eax
mov	eax, [esi+24h]
lea	ecx, [esp+18h+var_C]
mov	[esp+18h+var_C], edx
push	ecx
lea	edx, [edi+1Ch]
add	eax, 7
push	edx
shr	eax, 3
push	ebx
mov	[esp+24h+var_4], eax
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F18E
mov	ecx, [esi+24h]
mov	[edi+24h], ecx
			
pop	edi
pop	esi
pop	ebx
add	esp, 0Ch
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_4]
inc	ebx
cmp	ebx, 14h
jle	short loc_1000F1B0
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	edi
mov	edi, [esp+8+arg_0]
lea	eax, [edi+0D8h]
push	eax
call	SECOID_FindOID_Util
add	esp, 4
test	eax, eax
jz	short loc_1000F20D
mov	eax, [eax+0Ch]
cmp	eax, 7Ch
jz	short loc_1000F1F6
cmp	eax, 7Dh
jz	short loc_1000F1F6
cmp	eax, 13Ah
jz	short loc_1000F1F6
cmp	eax, 13Bh
jz	short loc_1000F1F6
cmp	eax, 7Eh
jz	short loc_1000F1F6
cmp	eax, 0BDh
jz	short loc_1000F1F6
cmp	eax, 0C8h
jnz	short loc_1000F1FF
			
cmp	dword ptr [edi+0ECh], 0
jz	short loc_1000F204
pop	edi
xor	eax, eax
pop	ebx
retn
cmp	dword ptr [edi+170h], 0
jz	short loc_1000F213
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
push	0Bh
call	ds:PR_Now
push	edx
push	eax
push	edi
call	CERT_FindCertIssuer
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_1000F234
pop	esi
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
lea	ecx, [esi+0D8h]
push	ecx
call	SECOID_FindOID_Util
add	esp, 4
test	eax, eax
jz	short loc_1000F2B5
mov	eax, [eax+0Ch]
cmp	eax, 7Ch
jz	short loc_1000F275
cmp	eax, 7Dh
jz	short loc_1000F275
cmp	eax, 13Ah
jz	short loc_1000F275
cmp	eax, 13Bh
jz	short loc_1000F275
cmp	eax, 7Eh
jz	short loc_1000F275
cmp	eax, 0BDh
jz	short loc_1000F275
cmp	eax, 0C8h
jnz	short loc_1000F2B5
			
push	ebx
push	esi
call	sub_1000F1A0
add	esp, 8
test	eax, eax
jnz	short loc_1000F2B5
cmp	[esi+0ECh], eax
jz	short loc_1000F2B5
mov	ecx, [edi]
lea	edx, [esi+0E4h]
push	edx
lea	eax, [edi+0E4h]
push	eax
push	ecx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
push	esi
mov	edi, eax
call	CERT_DestroyCertificate
add	esp, 4
pop	esi
mov	eax, edi
pop	edi
pop	ebx
retn
			
push	esi
or	edi, 0FFFFFFFFh
call	CERT_DestroyCertificate
add	esp, 4
pop	esi
mov	eax, edi
pop	edi
pop	ebx
retn
align 10h
public SECKEY_UpdateCertPQG
			
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_1000F2E9
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0
push	eax
call	sub_1000F1A0
add	esp, 8
retn
align 10h
sub	esp, 0Ch
test	eax, eax
jz	short loc_1000F36D
cmp	dword ptr [eax+4], 0
jz	short loc_1000F36D
push	eax
lea	eax, [esp+10h+var_C]
push	eax
push	esi
call	SECITEM_CopyItem_Util
mov	ecx, [esp+18h+var_8]
mov	cl, [ecx]
add	esp, 0Ch
cmp	cl, 0A1h
jz	short loc_1000F35C
cmp	cl, 0A0h
jz	short loc_1000F35C
test	eax, eax
jnz	short loc_1000F370
mov	eax, [esp+0Ch+arg_0]
lea	edx, [esp+0Ch+var_C]
push	edx
add	eax, 10h
push	offset dword_100A28F8
mov	ecx, 0Ah
push	eax
push	esi
mov	[eax+4], ecx
mov	[eax+10h], ecx
mov	[eax+1Ch], ecx
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
add	esp, 0Ch
retn
			
test	eax, eax
jnz	short loc_1000F370
push	0FFFFE009h
call	PORT_SetError_Util
add	esp, 4
			
or	eax, 0FFFFFFFFh
			
add	esp, 0Ch
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 39h
jg	short loc_1000F3A6
cmp	eax, 36h
jge	short loc_1000F3A0
cmp	eax, 10h
jz	short loc_1000F3BE 
cmp	eax, 12h
jle	short loc_1000F39D 
cmp	eax, 14h
jle	short loc_1000F3BE 
			
xor	eax, eax	
retn
mov	eax, 3
retn
add	eax, 0FFFFFFC6h	
cmp	eax, 0FAh
ja	short loc_1000F39D 
movzx	eax, ds:byte_1000F408[eax]
jmp	ds:off_1000F3E8[eax*4] 
			
mov	eax, 1		
retn
			
mov	eax, 7		
retn
			
mov	eax, 8		
retn
			
mov	eax, 2		
retn
			
mov	eax, 5		
retn
			
mov	eax, 4		
retn
			
mov	eax, 6		
retn
			
dd offset loc_1000F3DC,	offset loc_1000F3E2, offset loc_1000F3CA 
dd offset loc_1000F3C4,	offset loc_1000F39D
			
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7	
db 7, 7, 7, 1, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 2, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 3, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 1, 1, 1, 7, 7,	7, 4, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 7, 7, 7,	7, 7, 7
db 7, 7, 7, 7, 7, 7, 7,	7, 7, 7, 7, 7, 5, 7, 7,	6, 1
align 10h
			
mov	eax, [esp+arg_0]
add	eax, 4
push	eax
call	SECOID_GetAlgorithmTag_Util
add	esp, 4
mov	[esp+arg_0], eax
jmp	sub_1000F380
align 10h
			
sub	esp, 24h
push	ebx
push	ebp
push	esi
push	800h
mov	ebx, eax
call	PORT_NewArena_Util
mov	esi, eax
xor	ebp, ebp
add	esp, 4
cmp	esi, ebp
jnz	short loc_1000F556
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 24h
retn
push	edi
push	0ACh
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, ebp
jnz	short loc_1000F57F
push	ebp
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 24h
retn
mov	[edi], esi
mov	[edi+8], ebp
mov	[edi+0Ch], ebp
mov	eax, [ebx+1Ch]
mov	ecx, [ebx+20h]
mov	[esp+34h+var_18], eax
mov	eax, [ebx+24h]
add	eax, 7
lea	edx, [ebx+4]
shr	eax, 3
push	edx
mov	[esp+38h+var_14], ecx
mov	[esp+38h+var_10], eax
call	SECOID_GetAlgorithmTag_Util
mov	ebp, eax
lea	eax, [esp+38h+var_18]
push	eax
lea	ecx, [esp+3Ch+var_24]
push	ecx
push	esi
call	SECITEM_CopyItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_1000F71D
lea	eax, [ebp-10h]	
cmp	eax, 0B8h
ja	loc_1000F710	
movzx	edx, ds:byte_1000F744[eax]
jmp	ds:off_1000F730[edx*4] 
			
mov	eax, 0Ah	
mov	[edi+14h], eax
mov	[edi+20h], eax
lea	eax, [esp+34h+var_24]
push	eax
push	offset dword_100A2828
push	edi
push	esi
mov	dword ptr [edi+4], 1
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_1000F71D
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
			
lea	ecx, [esp+34h+var_24] 
push	ecx
push	offset dword_100A28D8
push	edi
push	esi
mov	dword ptr [edi+4], 2
mov	dword ptr [edi+38h], 0Ah
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_1000F71D
lea	eax, [ebx+10h]
push	edi
call	sub_1000F300
add	esp, 4
test	eax, eax
jnz	loc_1000F71D
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
			
lea	edx, [esp+34h+var_24] 
push	edx
push	offset dword_100A2948
mov	eax, 0Ah
push	edi
push	esi
mov	dword ptr [edi+4], 4
mov	[edi+14h], eax
mov	[edi+20h], eax
mov	[edi+2Ch], eax
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_1000F71D
add	ebx, 10h
push	ebx
lea	eax, [esp+38h+var_C]
push	eax
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F71D
lea	ecx, [esp+34h+var_C]
push	ecx
push	offset dword_100A2968
push	edi
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_1000F71D
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
			
add	ebx, 10h	
push	ebx
lea	edx, [edi+10h]
push	edx
push	esi
mov	dword ptr [edi+4], 6
mov	dword ptr [edi+1Ch], 0
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F71D
lea	eax, [esp+34h+var_24]
push	eax
lea	ecx, [edi+20h]
push	ecx
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F71D
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
			
			
push	0FFFFE030h	
call	PORT_SetError_Util
add	esp, 4
			
push	edi
call	SECKEY_DestroyPublicKey
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 24h
retn
			
dd offset loc_1000F6CD,	offset loc_1000F710 
db	4,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     0,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	1,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     2,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     1,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	3
align 10h
public SECKEY_ExtractPublicKey
			
			
mov	eax, [esp+arg_0]
jmp	sub_1000F530
align 10h
public CERT_ExtractPublicKey
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jnz	short loc_1000F82A
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
retn
push	0
push	esi
call	sub_1000F1A0
add	esp, 8
test	eax, eax
jnz	short loc_1000F826
lea	eax, [esi+0D4h]
pop	esi
jmp	sub_1000F530
align 10h
public SECKEY_ECParamsToKeySize
			
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_0]
mov	eax, [eax+4]
mov	[esp+0Ch+var_8], 0
mov	[esp+0Ch+var_4], 0
mov	[esp+0Ch+var_C], 0
movzx	ecx, byte ptr [eax+1]
lea	edx, [esp+0Ch+var_C]
add	eax, 2
push	edx
mov	[esp+10h+var_4], ecx
mov	[esp+10h+var_8], eax
call	SECOID_FindOIDTag_Util
add	esp, 4
test	eax, eax
jz	loc_1000F99E
add	eax, 0FFFFFF36h	
cmp	eax, 39h
ja	loc_1000F991	
movzx	eax, ds:byte_1000FA08[eax]
jmp	ds:off_1000F9A4[eax*4] 
			
mov	eax, 70h	
add	esp, 0Ch
retn
			
mov	eax, 71h	
add	esp, 0Ch
retn
			
mov	eax, 80h	
add	esp, 0Ch
retn
			
mov	eax, 83h	
add	esp, 0Ch
retn
			
mov	eax, 0A0h	
add	esp, 0Ch
retn
			
mov	eax, 0A3h	
add	esp, 0Ch
retn
			
mov	eax, 0B0h	
add	esp, 0Ch
retn
			
mov	eax, 0BFh	
add	esp, 0Ch
retn
			
mov	eax, 0C0h	
add	esp, 0Ch
retn
			
mov	eax, 0C1h	
add	esp, 0Ch
retn
			
mov	eax, 0D0h	
add	esp, 0Ch
retn
			
mov	eax, 0E0h	
add	esp, 0Ch
retn
			
mov	eax, 0E9h	
add	esp, 0Ch
retn
			
mov	eax, 0EFh	
add	esp, 0Ch
retn
			
mov	eax, 100h	
add	esp, 0Ch
retn
			
mov	eax, 110h	
add	esp, 0Ch
retn
			
mov	eax, 11Bh	
add	esp, 0Ch
retn
			
mov	eax, 130h	
add	esp, 0Ch
retn
			
mov	eax, 167h	
add	esp, 0Ch
retn
			
mov	eax, 170h	
add	esp, 0Ch
retn
			
mov	eax, 180h	
add	esp, 0Ch
retn
			
mov	eax, 199h	
add	esp, 0Ch
retn
			
mov	eax, 1AFh	
add	esp, 0Ch
retn
			
mov	eax, 209h	
add	esp, 0Ch
retn
			
mov	eax, 23Bh	
add	esp, 0Ch
retn
push	0FFFFE08Dh	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
add	esp, 0Ch
retn
			
dd offset loc_1000F8B0,	offset loc_1000F8C2, offset loc_1000F8D4 
dd offset loc_1000F913,	offset loc_1000F964, offset loc_1000F97F
dd offset loc_1000F8DD,	offset loc_1000F8E6, offset loc_1000F8EF
dd offset loc_1000F90A,	offset loc_1000F937, offset loc_1000F949
dd offset loc_1000F952,	offset loc_1000F95B, offset loc_1000F976
dd offset loc_1000F8B9,	offset loc_1000F8CB, offset loc_1000F901
dd offset loc_1000F91C,	offset loc_1000F940, offset loc_1000F96D
dd offset loc_1000F988
db	1,     1,     2,     3 
db	3,     4,     4,     5
db	5,     5,     0,     6
db	6,     2,     7,     8
db	9,     9,     9,   0Ah
db    0Bh,   0Bh,   0Bh,   0Bh
db    0Bh,   0Ch,     1,     1
db	1,     1,     1,   0Dh
db    0Eh,   0Fh,   10h,   11h
db    12h,   12h,   13h,   13h
db	9,     9,     9,   14h
db    14h,   15h,   15h,     1
db    16h,   16h,   17h,   17h
db    18h,   18h
align 10h
public SECKEY_ECParamsToBasePointOrderLen
			
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_0]
mov	eax, [eax+4]
mov	[esp+0Ch+var_8], 0
mov	[esp+0Ch+var_4], 0
mov	[esp+0Ch+var_C], 0
movzx	ecx, byte ptr [eax+1]
lea	edx, [esp+0Ch+var_C]
add	eax, 2
push	edx
mov	[esp+10h+var_4], ecx
mov	[esp+10h+var_8], eax
call	SECOID_FindOIDTag_Util
add	esp, 4
test	eax, eax
jz	loc_1000FBF1
add	eax, 0FFFFFF36h	
cmp	eax, 39h
ja	loc_1000FBE4	
jmp	ds:off_1000FBF8[eax*4] 
			
mov	eax, 70h	
add	esp, 0Ch
retn
			
mov	eax, 6Eh	
add	esp, 0Ch
retn
			
mov	eax, 71h	
add	esp, 0Ch
retn
			
mov	eax, 80h	
add	esp, 0Ch
retn
			
mov	eax, 7Eh	
add	esp, 0Ch
retn
			
mov	eax, 83h	
add	esp, 0Ch
retn
			
mov	eax, 0A1h	
add	esp, 0Ch
retn
			
mov	eax, 0A3h	
add	esp, 0Ch
retn
			
mov	eax, 0A2h	
add	esp, 0Ch
retn
			
mov	eax, 0BFh	
add	esp, 0Ch
retn
			
mov	eax, 0BEh	
add	esp, 0Ch
retn
			
mov	eax, 0BDh	
add	esp, 0Ch
retn
			
mov	eax, 0BCh	
add	esp, 0Ch
retn
			
mov	eax, 0C0h	
add	esp, 0Ch
retn
			
mov	eax, 0C1h	
add	esp, 0Ch
retn
			
mov	eax, 0E1h	
add	esp, 0Ch
retn
			
mov	eax, 0E0h	
add	esp, 0Ch
retn
			
mov	eax, 0E8h	
add	esp, 0Ch
retn
			
mov	eax, 0E9h	
add	esp, 0Ch
retn
			
mov	eax, 0EEh	
add	esp, 0Ch
retn
			
mov	eax, 0EDh	
add	esp, 0Ch
retn
			
mov	eax, 0ECh	
add	esp, 0Ch
retn
			
mov	eax, 0EFh	
add	esp, 0Ch
retn
			
mov	eax, 100h	
add	esp, 0Ch
retn
			
mov	eax, 101h	
add	esp, 0Ch
retn
			
mov	eax, 119h	
add	esp, 0Ch
retn
			
mov	eax, 11Ah	
add	esp, 0Ch
retn
			
mov	eax, 121h	
add	esp, 0Ch
retn
			
mov	eax, 161h	
add	esp, 0Ch
retn
			
mov	eax, 180h	
add	esp, 0Ch
retn
			
mov	eax, 197h	
add	esp, 0Ch
retn
			
mov	eax, 199h	
add	esp, 0Ch
retn
			
mov	eax, 1A2h	
add	esp, 0Ch
retn
			
mov	eax, 209h	
add	esp, 0Ch
retn
			
mov	eax, 23Ah	
add	esp, 0Ch
retn
push	0FFFFE08Dh	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
add	esp, 0Ch
retn
align 4
			
dd offset loc_1000FB6F,	offset loc_1000FB6F, offset loc_1000FB6F 
dd offset loc_1000FB78,	offset loc_1000FAA9, offset loc_1000FAB2
dd offset loc_1000FAC4,	offset loc_1000FACD, offset loc_1000FADF
dd offset loc_1000FADF,	offset loc_1000FADF, offset loc_1000FB1E
dd offset loc_1000FB30,	offset loc_1000FB39, offset loc_1000FB78
dd offset loc_1000FBAE,	offset loc_1000FBD2, offset loc_1000FAE8
dd offset loc_1000FAF1,	offset loc_1000FAF1, offset loc_1000FADF
dd offset loc_1000FAFA,	offset loc_1000FB03, offset loc_1000FB0C
dd offset loc_1000FAFA,	offset loc_1000FB15, offset loc_1000FB27
dd offset loc_1000FB54,	offset loc_1000FB5D, offset loc_1000FB66
dd offset loc_1000FB54,	offset loc_1000FB5D, offset loc_1000FB81
dd offset loc_1000FB9C,	offset loc_1000FBA5, offset loc_1000FBA5
dd offset loc_1000FBC9,	offset loc_1000FABB, offset loc_1000FABB
dd offset loc_1000FAD6,	offset loc_1000FAD6, offset loc_1000FAE8
dd offset loc_1000FAF1,	offset loc_1000FAE8, offset loc_1000FB27
dd offset loc_1000FB27,	offset loc_1000FB42, offset loc_1000FB4B
dd offset loc_1000FB54,	offset loc_1000FB8A, offset loc_1000FB93
dd offset loc_1000FBB7,	offset loc_1000FBC0, offset loc_1000FBDB
dd offset loc_1000FBDB
public SECKEY_PublicKeyStrength
			
mov	eax, [esp+arg_0]
test	eax, eax
jz	short loc_1000FD3E 
mov	ecx, [eax+4]
dec	ecx
cmp	ecx, 5		
ja	short loc_1000FD3E 
jmp	ds:off_1000FD50[ecx*4] 
			
mov	ecx, [eax+18h]	
test	ecx, ecx
jz	short loc_1000FD3E 
cmp	byte ptr [ecx],	0
mov	eax, [eax+1Ch]
jnz	short locret_1000FD4D
dec	eax
retn
			
mov	ecx, [eax+3Ch]	
test	ecx, ecx
jz	short loc_1000FD3E 
cmp	byte ptr [ecx],	0
mov	eax, [eax+40h]
jnz	short locret_1000FD4D
dec	eax
retn
			
mov	ecx, [eax+30h]	
test	ecx, ecx
jz	short loc_1000FD3E 
cmp	byte ptr [ecx],	0
mov	eax, [eax+34h]
jnz	short locret_1000FD4D
dec	eax
retn
			
add	eax, 10h	
push	eax
call	SECKEY_ECParamsToKeySize
add	eax, 7
add	esp, 4
shr	eax, 3
retn
			
push	0FFFFE028h	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
			
retn
align 10h
dd offset loc_1000FD09	
dd offset loc_1000FD3E
dd offset loc_1000FD1A
dd offset loc_1000FD3E
dd offset loc_1000FD2B
align 10h
public SECKEY_PublicKeyStrengthInBits
mov	ecx, [esp+arg_0]
mov	eax, [ecx+4]
dec	eax
cmp	eax, 5		
ja	short loc_1000FDA0 
jmp	ds:off_1000FDB0[eax*4] 
			
push	ecx		
call	SECKEY_PublicKeyStrength
add	eax, eax
add	eax, eax
add	esp, 4
add	eax, eax
retn
			
add	ecx, 10h	
mov	[esp+arg_0], ecx
jmp	SECKEY_ECParamsToKeySize
			
			
push	0FFFFE028h	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
dd offset loc_1000FD84	
dd offset loc_1000FDA0
dd offset loc_1000FD84
dd offset loc_1000FDA0
dd offset loc_1000FD94
align 10h
public SECKEY_SignatureLen
			
mov	ecx, [esp+arg_0]
mov	eax, [ecx+4]
dec	eax
jz	short loc_1000FE0D
dec	eax
jz	short loc_1000FE07
sub	eax, 4
jz	short loc_1000FDF2
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
add	ecx, 10h
push	ecx
call	SECKEY_ECParamsToBasePointOrderLen
add	eax, 7
shr	eax, 3
add	esp, 4
add	eax, eax
retn
mov	eax, [ecx+28h]
add	eax, eax
retn
mov	eax, [ecx+18h]
cmp	byte ptr [eax],	0
mov	eax, [ecx+1Ch]
jnz	short locret_1000FE19
dec	eax
retn
align 10h
public SECKEY_CopyPrivateKey
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jz	loc_1000FED2
cmp	dword ptr [edi+8], 0
jz	loc_1000FED2
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_1000FE4E
pop	ebx
pop	edi
retn
push	esi
push	1Ch
push	ebx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1000FEB4
mov	[esi], ebx
mov	eax, [edi+4]
mov	[esi+4], eax
mov	ecx, [edi+8]
push	ecx
call	PK11_ReferenceSlot
add	esp, 4
mov	[esi+8], eax
cmp	dword ptr [edi+10h], 0
jz	short loc_1000FE96
mov	edx, [edi+0Ch]
mov	eax, [edi+8]
push	edx
push	eax
call	sub_1002AC00
add	esp, 8
mov	[esi+0Ch], eax
test	eax, eax
jz	short loc_1000FEC1
jmp	short loc_1000FE9C
mov	ecx, [edi+0Ch]
mov	[esi+0Ch], ecx
mov	edx, [edi+10h]
mov	[esi+10h], edx
mov	eax, [edi+14h]
mov	[esi+14h], eax
mov	ecx, [edi+18h]
mov	[esi+18h], ecx
mov	eax, esi
pop	esi
pop	ebx
pop	edi
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
push	0
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	ebx
xor	eax, eax
pop	edi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
align 10h
public SECKEY_CopyPublicKey
			
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_1000FF15
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	ebx
retn
push	esi
push	0ACh
push	ebx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_1000FF43
push	eax
push	ebx
call	PORT_FreeArena_Util
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 0Ch
pop	esi
xor	eax, eax
pop	ebx
retn
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	[esi], ebx
mov	eax, [edi+4]
mov	[esi+4], eax
mov	eax, [edi+8]
test	eax, eax
jz	short loc_1000FF7F
mov	ecx, [edi+0Ch]
push	ecx
push	eax
call	sub_1002A4C0
add	esp, 8
test	eax, eax
jz	short loc_1000FF7F
mov	edx, [edi+8]
push	edx
call	PK11_ReferenceSlot
mov	[esi+8], eax
mov	eax, [edi+0Ch]
add	esp, 4
mov	[esi+0Ch], eax
jmp	short loc_1000FF8D
			
mov	dword ptr [esi+8], 0
mov	dword ptr [esi+0Ch], 0
mov	eax, [edi+4]
cmp	eax, 6		
ja	loc_10010086	
jmp	ds:off_100100A4[eax*4] 
			
lea	ecx, [edi+14h]	
push	ecx
lea	edx, [esi+14h]
push	edx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10010093
add	edi, 20h
lea	eax, [esi+20h]
push	edi
push	eax
			
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10010093
			
pop	edi		
mov	eax, esi
pop	esi
pop	ebx
retn
			
lea	ecx, [edi+38h]	
push	ecx
lea	edx, [esi+38h]
push	edx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10010093
lea	eax, [edi+14h]
push	eax
lea	ecx, [esi+14h]
push	ecx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_10010093
lea	edx, [edi+20h]
push	edx
lea	eax, [esi+20h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10010093
add	edi, 2Ch
push	edi
lea	ecx, [esi+2Ch]
push	ecx
jmp	short loc_1000FFC1
			
lea	edx, [edi+14h]	
push	edx
lea	eax, [esi+14h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10010093
lea	ecx, [edi+20h]
push	ecx
lea	edx, [esi+20h]
push	edx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10010093
add	edi, 2Ch
lea	eax, [esi+2Ch]
jmp	loc_1000FFBF
			
mov	ecx, [edi+1Ch]	
lea	edx, [edi+10h]
push	edx
lea	eax, [esi+10h]
push	eax
push	ebx
mov	[esi+1Ch], ecx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10010093
add	edi, 20h
push	edi
lea	ecx, [esi+20h]
push	ecx
jmp	loc_1000FFC1
			
			
push	0FFFFE028h	
call	PORT_SetError_Util
add	esp, 4
			
push	esi
call	SECKEY_DestroyPublicKey
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 4
dd offset loc_1000FFA0	
dd offset loc_1000FFD8
dd offset loc_10010086
dd offset loc_10010029
dd offset loc_10010086
dd offset loc_1001005E
public SECKEY_ConvertToPublicKey
push	esi
push	edi
mov	edi, [esp+8+arg_0]
push	edi
call	PK11_GetCertFromPrivateKey
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1001010F
push	0
push	esi
call	sub_1000F1A0
add	esp, 8
test	eax, eax
jz	short loc_100100F4
push	esi
xor	edi, edi
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
lea	eax, [esi+0D4h]
call	sub_1000F530
push	esi
mov	edi, eax
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_10010136
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
xor	eax, eax
pop	esi
retn
push	0ACh
push	ebx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100101A2
mov	eax, [edi+4]
mov	[esi+4], eax
mov	dword ptr [esi+8], 0
mov	dword ptr [esi+0Ch], 0
mov	[esi], ebx
mov	eax, [edi+4]
dec	eax
jnz	short loc_100101A2
mov	edx, [edi+0Ch]
mov	eax, [edi+8]
lea	ecx, [esi+14h]
push	ecx
push	ebx
push	120h
push	edx
push	eax
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_100101A2
mov	edx, [edi+0Ch]
mov	eax, [edi+8]
lea	ecx, [esi+20h]
push	ecx
push	ebx
push	122h
push	edx
push	eax
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jz	short loc_100101B3
			
push	0
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	ebx
pop	edi
xor	eax, eax
pop	esi
retn
pop	ebx
pop	edi
mov	eax, esi
pop	esi
retn
align 10h
			
sub	esp, 0Ch
push	ebx
push	ebp
xor	ebp, ebp
push	esi
push	800h
mov	ebx, eax
mov	[esp+1Ch+var_C], ebp
mov	[esp+1Ch+var_8], ebp
mov	[esp+1Ch+var_4], ebp
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jnz	short loc_100101FF
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
push	edi
push	28h
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, ebp
jz	loc_1001033D
mov	[edi], esi
mov	eax, [ebx+4]
dec	eax
jz	loc_100102F9
dec	eax
jz	short loc_1001028D
sub	eax, 4
jnz	loc_1001034A
lea	eax, [ebx+10h]
push	eax
lea	eax, [esp+20h+var_C]
push	eax
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_1001034A
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	0C8h
lea	edx, [edi+4]
push	edx
push	esi
call	SECOID_SetAlgorithmID_Util
add	esp, 10h
test	eax, eax
jnz	loc_1001034A
add	ebx, 20h
push	ebx
lea	eax, [edi+1Ch]
push	eax
push	esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_1001034A
shl	dword ptr [edi+24h], 3
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
lea	eax, [ebx+10h]
push	offset dword_100A28F8
push	eax
lea	ecx, [esp+24h+var_C]
mov	ebp, 0Ah
push	ecx
push	esi
mov	[eax+4], ebp
mov	[eax+10h], ebp
mov	[eax+1Ch], ebp
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_100102E8
lea	edx, [esp+1Ch+var_C]
push	edx
push	7Ch
lea	eax, [edi+4]
push	eax
push	esi
call	SECOID_SetAlgorithmID_Util
add	esp, 10h
test	eax, eax
jnz	short loc_100102E8
push	offset dword_100A28D8
push	ebx
lea	ecx, [edi+1Ch]
push	ecx
push	esi
mov	[ebx+38h], ebp
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_1001032F
			
lea	edx, [esp+1Ch+var_C]
push	0
push	edx
call	SECITEM_FreeItem_Util
add	esp, 8
jmp	short loc_1001034A
push	ebp
push	10h
lea	eax, [edi+4]
push	eax
push	esi
call	SECOID_SetAlgorithmID_Util
add	esp, 10h
test	eax, eax
jnz	short loc_1001034A
push	offset dword_100A2828
push	ebx
lea	ecx, [edi+1Ch]
push	ecx
mov	ebp, 0Ah
push	esi
mov	[ebx+14h], ebp
mov	[ebx+20h], ebp
call	SEC_ASN1EncodeItem_Util
add	esp, 10h
test	eax, eax
jz	short loc_1001034A
shl	dword ptr [edi+24h], 3
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
			
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
public SECKEY_CreateSubjectPublicKeyInfo
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_10010378
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	esi
push	eax
call	SECKEY_CopyPublicKey
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1001038A
pop	esi
retn
push	edi
call	sub_100101C0
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
public SECKEY_EncodeDERSubjectPublicKeyInfo
			
mov	eax, [esp+arg_0]
push	ebx
xor	ebx, ebx
test	eax, eax
jnz	short loc_100103BC
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
mov	eax, ebx
pop	ebx
retn
push	edi
push	eax
call	SECKEY_CopyPublicKey
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10010412
push	esi
call	sub_100101C0
push	edi
mov	esi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
test	esi, esi
jz	short loc_1001040C
push	offset dword_100A27A8
push	esi
push	0
push	0
call	SEC_ASN1EncodeItem_Util
mov	esi, [esi]
add	esp, 10h
mov	edi, eax
test	esi, esi
jz	short loc_10010408
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	esi
pop	edi
pop	ebx
retn
pop	esi
pop	edi
mov	eax, ebx
pop	ebx
retn
pop	edi
mov	eax, ebx
pop	ebx
retn
align 10h
public SECKEY_DecodeDERSubjectPublicKeyInfo
sub	esp, 0Ch
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1001044B
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
push	edi
push	28h
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10010496
mov	eax, [esp+14h+arg_0]
push	eax
lea	ecx, [esp+18h+var_C]
push	ecx
push	esi
mov	[edi], esi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100104A3
lea	edx, [esp+14h+var_C]
push	edx
push	offset dword_100A27A8
push	edi
push	esi
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_100104A3
mov	eax, edi
pop	edi
pop	esi
add	esp, 0Ch
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
			
push	0
push	esi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
align 10h
public SECKEY_DestroyPrivateKeyInfo
			
			
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_10010545
push	edi
mov	edi, [esi]
test	edi, edi
jz	short loc_10010506
mov	eax, [esi+30h]
mov	ecx, [esi+2Ch]
push	eax		
push	0		
push	ecx		
call	memset
push	38h		
push	0		
push	esi		
call	memset
add	esp, 18h
cmp	[esp+8+arg_4], 1
jnz	short loc_10010501
push	1
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
retn
mov	[esi], edi
pop	edi
pop	esi
retn
lea	edx, [esi+4]
push	0
push	edx
call	SECITEM_ZfreeItem_Util
lea	eax, [esi+28h]
push	0
push	eax
call	SECITEM_ZfreeItem_Util
lea	ecx, [esi+10h]
push	0
push	ecx
call	SECOID_DestroyAlgorithmID_Util
push	38h		
push	0		
push	esi		
call	memset
add	esp, 24h
cmp	[esp+8+arg_4], 1
jnz	short loc_10010544
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
retn
align 10h
public SECKEY_DestroyEncryptedPrivateKeyInfo
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	loc_100105F8
push	edi
mov	edi, [esi]
test	edi, edi
jz	short loc_100105AF
mov	eax, [esi+24h]
mov	ecx, [esi+20h]
push	eax		
push	0		
push	ecx		
call	memset
xor	eax, eax
mov	[esi], eax
mov	[esi+4], eax
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	[esi+10h], eax
mov	[esi+14h], eax
mov	[esi+18h], eax
mov	[esi+1Ch], eax
add	esp, 0Ch
cmp	[esp+8+arg_4], 1
mov	[esi+20h], eax
mov	[esi+24h], eax
jnz	short loc_100105AA
push	1
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
retn
mov	[esi], edi
pop	edi
pop	esi
retn
lea	edx, [esi+1Ch]
push	0
push	edx
call	SECITEM_ZfreeItem_Util
lea	eax, [esi+4]
push	0
push	eax
call	SECOID_DestroyAlgorithmID_Util
xor	eax, eax
mov	[esi], eax
mov	[esi+4], eax
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	[esi+10h], eax
mov	[esi+14h], eax
mov	[esi+18h], eax
mov	[esi+1Ch], eax
add	esp, 10h
cmp	[esp+8+arg_4], 1
mov	[esi+20h], eax
mov	[esi+24h], eax
jnz	short loc_100105F7
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
retn
align 10h
public SECKEY_CopyPrivateKeyInfo
push	esi
push	edi
mov	edi, [esp+8+arg_4]
test	edi, edi
jz	short loc_1001065D
mov	esi, [esp+8+arg_8]
test	esi, esi
jz	short loc_1001065D
push	ebx
mov	ebx, [esp+0Ch+arg_0]
lea	eax, [esi+10h]
push	eax
lea	ecx, [edi+10h]
push	ecx
push	ebx
call	SECOID_CopyAlgorithmID_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10010641
lea	edx, [esi+28h]
push	edx
lea	eax, [edi+28h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_10010648
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
add	esi, 4
push	esi
add	edi, 4
push	edi
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
pop	ebx
pop	edi
pop	esi
retn
			
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
public SECKEY_CopyEncryptedPrivateKeyInfo
push	esi
push	edi
mov	edi, [esp+8+arg_4]
test	edi, edi
jz	short loc_100106B8
mov	esi, [esp+8+arg_8]
test	esi, esi
jz	short loc_100106B8
push	ebx
mov	ebx, [esp+0Ch+arg_0]
lea	eax, [esi+4]
push	eax
lea	ecx, [edi+4]
push	ecx
push	ebx
call	SECOID_CopyAlgorithmID_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_100106A3
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
add	esi, 1Ch
push	esi
add	edi, 1Ch
push	edi
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
pop	ebx
pop	edi
pop	esi
retn
			
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
public SECKEY_ImportDERPublicKey
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
test	ebx, ebx
jnz	short loc_100106D3
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
push	esi
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10010700
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
xor	esi, esi
pop	edi
mov	eax, esi
pop	esi
pop	ebx
add	esp, 0Ch
retn
push	0ACh
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_100107BF
push	ebx
lea	eax, [esp+1Ch+var_C]
push	eax
push	edi
mov	[esi], edi
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_100107BF
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	eax, [esp+18h+arg_4]
sub	eax, 0
jz	short loc_10010793
dec	eax
jz	short loc_10010770
dec	eax
jnz	short loc_100107BF
mov	edx, [esi]
lea	ecx, [esp+18h+var_C]
push	ecx
push	offset dword_100A2948
mov	eax, 0Ah
push	esi
push	edx
mov	[esi+14h], eax
mov	[esi+20h], eax
mov	[esi+2Ch], eax
call	SEC_QuickDERDecodeItem_Util
mov	dword ptr [esi+4], 4
jmp	short loc_100107B8
mov	ecx, [esi]
lea	eax, [esp+18h+var_C]
push	eax
push	offset dword_100A28D8
push	esi
push	ecx
mov	dword ptr [esi+38h], 0Ah
call	SEC_QuickDERDecodeItem_Util
mov	dword ptr [esi+4], 2
jmp	short loc_100107B8
lea	edx, [esp+18h+var_C]
push	edx
mov	eax, 0Ah
push	offset dword_100A2828
mov	[esi+14h], eax
mov	[esi+20h], eax
mov	eax, [esi]
push	esi
push	eax
call	SEC_QuickDERDecodeItem_Util
mov	dword ptr [esi+4], 1
			
add	esp, 10h
test	eax, eax
jz	short loc_100107CC
			
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
xor	esi, esi
pop	edi
mov	eax, esi
pop	esi
pop	ebx
add	esp, 0Ch
retn
align 10h
public SECKEY_RemovePrivateKeyListNode
push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, [edi+8]
test	esi, esi
jz	short loc_10010824
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10010813
cmp	dword ptr [esi+10h], 0
jz	short loc_10010807
mov	ecx, [esi+0Ch]
push	ecx
push	eax
call	PK11_DestroyObject
add	esp, 8
mov	edx, [esi+8]
push	edx
call	PK11_FreeSlot
add	esp, 4
mov	esi, [esi]
test	esi, esi
jz	short loc_10010824
push	1
push	esi
call	PORT_FreeArena_Util
add	esp, 8
			
mov	eax, [edi+4]
mov	ecx, [edi]
mov	dword ptr [edi+8], 0
mov	[eax], ecx
mov	edx, [edi]
mov	eax, [edi+4]
pop	edi
mov	[edx+4], eax
pop	esi
retn
align 10h
public SECKEY_AddPrivateKeyToListTail
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+8]
push	0Ch
push	eax
call	PORT_ArenaZAlloc_Util
add	esp, 8
test	eax, eax
jnz	short loc_1001085C
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	[eax], esi
mov	ecx, [esi+4]
mov	[eax+4], ecx
mov	edx, [esi+4]
mov	ecx, [esp+4+arg_4]
mov	[edx], eax
mov	[esi+4], eax
mov	[eax+8], ecx
xor	eax, eax
pop	esi
retn
align 10h
public SECKEY_CacheStaticFlags
push	esi
mov	esi, [esp+4+arg_0]
or	eax, 0FFFFFFFFh
test	esi, esi
jz	short loc_100108E3
mov	edx, [esi+8]
test	edx, edx
jz	short loc_100108E3
mov	ecx, [esi+0Ch]
test	ecx, ecx
jz	short loc_100108E3
or	dword ptr [esi+18h], 1
push	0
push	2
push	ecx
push	edx
call	sub_1002A280
add	esp, 10h
cmp	al, 1
jnz	short loc_100108B6
or	dword ptr [esi+18h], 2
jmp	short loc_100108BA
and	dword ptr [esi+18h], 0FFFFFFFDh
mov	eax, [esi+0Ch]
mov	ecx, [esi+8]
push	0
push	202h
push	eax
push	ecx
call	sub_1002A280
add	esp, 10h
cmp	al, 1
jnz	short loc_100108DD
or	dword ptr [esi+18h], 4
xor	eax, eax
pop	esi
retn
and	dword ptr [esi+18h], 0FFFFFFFBh
xor	eax, eax
			
pop	esi
retn
align 10h
public SECKEY_DestroyPrivateKeyList
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [ebx]
cmp	esi, ebx
jz	short loc_1001095B
push	edi
lea	ecx, [ecx+0]
mov	edi, [esi+8]
test	edi, edi
jz	short loc_1001093E
mov	eax, [edi+8]
test	eax, eax
jz	short loc_1001092D
cmp	dword ptr [edi+10h], 0
jz	short loc_10010921
mov	ecx, [edi+0Ch]
push	ecx
push	eax
call	PK11_DestroyObject
add	esp, 8
mov	edx, [edi+8]
push	edx
call	PK11_FreeSlot
add	esp, 4
mov	edi, [edi]
test	edi, edi
jz	short loc_1001093E
push	1
push	edi
call	PORT_FreeArena_Util
add	esp, 8
			
mov	eax, [esi+4]
mov	ecx, [esi]
mov	dword ptr [esi+8], 0
mov	[eax], ecx
mov	edx, [esi]
mov	eax, [esi+4]
mov	[edx+4], eax
mov	esi, [ebx]
cmp	esi, ebx
jnz	short loc_10010900
pop	edi
mov	ecx, [ebx+8]
push	0
push	ecx
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	ebx
retn
align 10h
public SECKEY_DestroyPublicKeyList
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [ebx]
cmp	esi, ebx
jz	short loc_100109E9
push	edi
lea	ecx, [ecx+0]
mov	edi, [esi+8]
test	edi, edi
jz	short loc_100109CC
mov	eax, [edi+8]
test	eax, eax
jz	short loc_100109BB
mov	ecx, [edi+0Ch]
push	ecx
push	eax
call	sub_1002A4C0
add	esp, 8
test	eax, eax
jnz	short loc_100109AF
mov	edx, [edi+0Ch]
mov	eax, [edi+8]
push	edx
push	eax
call	PK11_DestroyObject
add	esp, 8
mov	ecx, [edi+8]
push	ecx
call	PK11_FreeSlot
add	esp, 4
mov	edi, [edi]
test	edi, edi
jz	short loc_100109CC
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
			
mov	edx, [esi+4]
mov	eax, [esi]
mov	dword ptr [esi+8], 0
mov	[edx], eax
mov	ecx, [esi]
mov	edx, [esi+4]
mov	[ecx+4], edx
mov	esi, [ebx]
cmp	esi, ebx
jnz	short loc_10010980
pop	edi
mov	eax, [ebx+8]
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	ebx
retn
align 10h
public SGN_NewContext
			
mov	edx, [esp+arg_0]
sub	esp, 8
lea	eax, [esp+8+var_4]
push	eax
lea	ecx, [esp+0Ch+var_8]
push	ecx
push	0
push	edx
push	0
call	sub_10011310
add	esp, 14h
test	eax, eax
jz	short loc_10010A35
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
add	esp, 8
retn
mov	eax, [esp+8+var_8]
push	esi
push	eax
call	sub_1000F380
mov	esi, [esp+10h+arg_4]
mov	ecx, [esi+4]
add	esp, 4
cmp	ecx, eax
jz	short loc_10010A6B
cmp	ecx, 2
jnz	short loc_10010A57
cmp	eax, 3
jz	short loc_10010A6B
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
add	esp, 8
retn
			
push	14h
call	PORT_ZAlloc_Util
add	esp, 4
test	eax, eax
jz	short loc_10010A89
mov	ecx, [esp+0Ch+var_4]
mov	[eax+4], ecx
mov	edx, [esp+0Ch+var_8]
mov	[eax], edx
mov	[eax+10h], esi
pop	esi
add	esp, 8
retn
align 10h
public SGN_DestroyContext
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10010AC7
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10010AB5
mov	ecx, [esi+0Ch]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+8], 0
cmp	[esp+4+arg_4], 0
jz	short loc_10010AC7
push	14h
push	esi
call	PORT_ZFree_Util
add	esp, 8
			
pop	esi
retn
align 10h
public SGN_Begin
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10010AF1
mov	ecx, [esi+0Ch]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+8], 0
mov	eax, [esi+4]
push	eax
call	HASH_GetHashObjectByOidTag
add	esp, 4
mov	[esi+0Ch], eax
test	eax, eax
jnz	short loc_10010B09
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [eax+4]
call	ecx
mov	[esi+8], eax
test	eax, eax
jz	short loc_10010B04
mov	edx, [esi+0Ch]
push	eax
mov	eax, [edx+10h]
call	eax
add	esp, 4
xor	eax, eax
pop	esi
retn
align 10h
public SGN_Update
mov	ecx, [esp+arg_0]
mov	eax, [ecx+8]
test	eax, eax
jnz	short loc_10010B4C
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	edx, [esp+arg_8]
mov	ecx, [ecx+0Ch]
push	edx
mov	edx, [esp+4+arg_4]
push	edx
push	eax
mov	eax, [ecx+14h]
call	eax
add	esp, 0Ch
xor	eax, eax
retn
align 10h
public SGN_End
			
sub	esp, 68h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+68h+var_4], eax
mov	eax, [esp+68h+arg_4]
push	ebx
push	ebp
push	esi
mov	esi, [esp+74h+arg_0]
mov	ebx, [esi+10h]
push	edi
xor	edi, edi
mov	[esp+78h+var_58], eax
mov	[eax+4], edi
mov	eax, [esi+8]
xor	ebp, ebp
mov	[esp+78h+var_68], edi
mov	[esp+78h+var_4C], edi
cmp	eax, edi
jnz	short loc_10010BCA
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+68h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 68h
retn
mov	ecx, [esi+0Ch]
push	40h
lea	edx, [esp+7Ch+var_54]
push	edx
lea	edx, [esp+80h+var_44]
push	edx
push	eax
mov	eax, [ecx+18h]
call	eax
add	esp, 10h
cmp	dword ptr [ebx+4], 1
jnz	short loc_10010C4D
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+78h+var_68], eax
cmp	eax, edi
jnz	short loc_10010C05
or	edi, 0FFFFFFFFh
jmp	loc_10010D0F
mov	ecx, [esp+78h+var_54]
mov	eax, [esi+4]
push	ecx
lea	edx, [esp+7Ch+var_44]
push	edx
push	eax
call	SGN_CreateDigestInfo_Util
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, edi
jnz	short loc_10010C29
or	edi, 0FFFFFFFFh
jmp	loc_10010D0F
mov	edx, [esp+78h+var_68]
push	ebp
push	offset dword_100BA100
lea	ecx, [esp+80h+var_50]
push	ecx
push	edx
call	DER_Encode_Util
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	loc_10010D0F
jmp	short loc_10010C5D
mov	ecx, [esp+78h+var_54]
lea	eax, [esp+78h+var_44]
mov	[esp+78h+var_4C], eax
mov	[esp+78h+var_48], ecx
push	ebx
call	PK11_SignatureLen
add	esp, 4
cmp	eax, edi
jg	short loc_10010C7F
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
jmp	loc_10010D0F
push	eax
mov	[esp+7Ch+var_5C], eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+78h+var_60], eax
cmp	eax, edi
jnz	short loc_10010C99
or	edi, 0FFFFFFFFh
jmp	short loc_10010D0F
lea	edx, [esp+78h+var_50]
push	edx
lea	eax, [esp+7Ch+var_64]
push	eax
push	ebx
call	PK11_Sign
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_10010CC9
mov	ecx, [esp+78h+var_60]
push	ecx
call	PORT_Free_Util
add	esp, 4
mov	[esp+78h+var_60], 0
jmp	short loc_10010D0F
mov	esi, [esi]
cmp	esi, 7Ch
jz	short loc_10010CEC
cmp	esi, 0C8h
jz	short loc_10010CEC
mov	eax, [esp+78h+var_58]
mov	edx, [esp+78h+var_5C]
mov	ecx, [esp+78h+var_60]
mov	[eax+8], edx
mov	[eax+4], ecx
jmp	short loc_10010D0F
mov	edx, [esp+78h+var_5C]
mov	ecx, [esp+78h+var_58]
push	edx
lea	eax, [esp+7Ch+var_64]
push	eax
push	ecx
call	DSAU_EncodeDerSigWithLen
mov	edx, [esp+84h+var_60]
push	edx
mov	edi, eax
call	PORT_Free_Util
add	esp, 10h
push	ebp
call	SGN_DestroyDigestInfo_Util
mov	eax, [esp+7Ch+var_68]
add	esp, 4
test	eax, eax
jz	short loc_10010D2B
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esp+78h+var_4]
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 68h
retn
public SEC_SignData
			
			
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_10]
push	esi
push	eax
push	ecx
call	SGN_NewContext
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10010D5E
or	eax, 0FFFFFFFFh
pop	esi
retn
push	edi
push	esi
call	SGN_Begin
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10010DAA
mov	eax, [esi+8]
test	eax, eax
jnz	short loc_10010D87
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
jmp	short loc_10010DAA
mov	ecx, [esp+8+arg_8]
mov	edx, [esi+0Ch]
mov	edx, [edx+14h]
push	ecx
mov	ecx, [esp+0Ch+arg_4]
push	ecx
push	eax
call	edx
mov	eax, [esp+14h+arg_0]
push	eax
push	esi
call	SGN_End
add	esp, 14h
mov	edi, eax
			
mov	eax, [esi+8]
test	eax, eax
jz	short loc_10010DC6
mov	ecx, [esi+0Ch]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+8], 0
push	14h
push	esi
call	PORT_ZFree_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public NSS_Get_CERT_SignedDataTemplate
mov	eax, offset dword_100A29C0
retn
align 10h
public SEC_DerSignData
sub	esp, 3Ch
push	esi
mov	esi, [esp+40h+arg_10]
push	edi
mov	edi, [esp+44h+arg_14]
mov	[esp+44h+var_38], 0
test	edi, edi
jnz	short loc_10010E63
mov	eax, [esi+4]
dec	eax
jz	short loc_10010E5E
dec	eax
jz	short loc_10010E34
sub	eax, 4
jz	short loc_10010E2D
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 3Ch
retn
mov	edi, 0C9h
jmp	short loc_10010E63
push	esi
call	PK11_SignatureLen
add	esp, 4
sub	eax, 1C0h
jz	short loc_10010E57
sub	eax, 40h
jz	short loc_10010E50
mov	edi, 7Dh
jmp	short loc_10010E63
mov	edi, 13Bh
jmp	short loc_10010E63
mov	edi, 13Ah
jmp	short loc_10010E63
mov	edi, 14h
			
push	ebx
mov	ebx, [esp+48h+arg_C]
push	ebp
mov	ebp, [esp+4Ch+arg_8]
push	edi
push	esi
push	ebx
lea	eax, [esp+58h+var_3C]
push	ebp
push	eax
call	SEC_SignData
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	short loc_10010EE4
push	30h		
push	eax		
lea	ecx, [esp+54h+Dst]
push	ecx		
call	memset
mov	edx, [esp+58h+var_38]
mov	eax, [esp+58h+var_34]
push	esi
mov	[esp+5Ch+var_8], edx
push	edi
mov	edi, [esp+60h+arg_0]
lea	edx, [esp+60h+var_24]
push	edx
lea	ecx, ds:0[eax*8]
push	edi
mov	[esp+68h+var_2C], ebp
mov	[esp+68h+var_28], ebx
mov	[esp+68h+var_4], ecx
call	SECOID_SetAlgorithmID_Util
mov	esi, eax
add	esp, 1Ch
test	esi, esi
jnz	short loc_10010EE4
mov	ecx, [esp+4Ch+arg_4]
lea	eax, [esp+4Ch+Dst]
push	eax
push	offset dword_100BA140
push	ecx
push	edi
call	DER_Encode_Util
add	esp, 10h
mov	esi, eax
			
mov	edx, [esp+4Ch+var_38]
push	edx
call	PORT_Free_Util
add	esp, 4
pop	ebp
pop	ebx
pop	edi
mov	eax, esi
pop	esi
add	esp, 3Ch
retn
align 10h
public SGN_Digest
sub	esp, 0Ch
push	ebx
push	ebp
push	esi
mov	esi, [esp+18h+arg_0]
push	edi
mov	edi, [esp+1Ch+arg_8]
xor	ebp, ebp
xor	ebx, ebx
mov	[edi+4], ebp
cmp	dword ptr [esi+4], 1
jnz	short loc_10010F7E
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_10010F37
or	esi, 0FFFFFFFFh
jmp	loc_10010FEF
mov	eax, [esp+1Ch+arg_C]
mov	ecx, [eax+8]
mov	edx, [eax+4]
mov	eax, [esp+1Ch+arg_4]
push	ecx
push	edx
push	eax
call	SGN_CreateDigestInfo_Util
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jnz	short loc_10010F5E
or	esi, 0FFFFFFFFh
jmp	loc_10010FEF
push	ebp
push	offset dword_100BA100
lea	ecx, [esp+24h+var_C]
push	ecx
push	ebx
call	DER_Encode_Util
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10010FEF
mov	esi, [esp+1Ch+arg_0]
jmp	short loc_10010F90
mov	eax, [esp+1Ch+arg_C]
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	[esp+1Ch+var_8], edx
mov	[esp+1Ch+var_4], eax
push	esi
call	PK11_SignatureLen
add	esp, 4
test	eax, eax
jg	short loc_10010FAF
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_10010FEF
push	eax
mov	[edi+8], eax
call	PORT_Alloc_Util
add	esp, 4
mov	[edi+4], eax
test	eax, eax
jnz	short loc_10010FC7
or	esi, 0FFFFFFFFh
jmp	short loc_10010FEF
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	edi
push	esi
call	PK11_Sign
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10010FEF
mov	edx, [edi+4]
push	edx
call	PORT_Free_Util
add	esp, 4
mov	dword ptr [edi+4], 0
			
push	ebp
call	SGN_DestroyDigestInfo_Util
add	esp, 4
test	ebx, ebx
jz	short loc_10011007
push	0
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
align 10h
public SEC_GetSignatureAlgorithmOidTag
			
			
			
mov	ecx, [esp+arg_0]
xor	eax, eax
dec	ecx
jz	loc_100110B8
dec	ecx
jz	short loc_10011089
sub	ecx, 4
jnz	locret_1001110B	
mov	ecx, [esp+arg_4]
cmp	ecx, 0C0h
jg	short loc_1001106C
jz	short loc_10011066
test	ecx, ecx
jz	short loc_10011060
cmp	ecx, 4
jz	short loc_10011060
cmp	ecx, 0BFh
jnz	locret_1001110B	
lea	eax, [ecx+57h]
retn
			
mov	eax, 0C9h
retn
mov	eax, 117h
retn
sub	ecx, 0C1h
jz	short loc_10011083
sub	ecx, 74h
jnz	locret_1001110B	
mov	eax, 115h
retn
mov	eax, 118h
retn
mov	ecx, [esp+arg_4]
cmp	ecx, 0BFh
jg	short loc_100110AC
jz	short loc_100110A6
test	ecx, ecx
jz	short loc_100110A0
cmp	ecx, 4
jnz	short locret_1001110B 
mov	eax, 7Dh
retn
mov	eax, 13Bh
retn
cmp	ecx, 135h
jnz	short locret_1001110B 
lea	eax, [ecx+5]
retn
mov	ecx, [esp+arg_4]
cmp	ecx, 0BFh
jg	short loc_100110EA
jz	short loc_100110E4 
cmp	ecx, 4		
ja	short locret_1001110B 
jmp	ds:off_1001110C[ecx*4] 
			
mov	eax, 11h	
retn
			
mov	eax, 13h	
retn
			
mov	eax, 14h	
retn
			
			
mov	eax, 0C2h	
retn
sub	ecx, 0C0h
jz	short loc_10011106
dec	ecx
jz	short loc_10011100
sub	ecx, 74h
jnz	short locret_1001110B 
mov	eax, 134h
retn
mov	eax, 0C4h
retn
mov	eax, 0C3h
			
retn			
dd offset loc_100110D2	
dd offset locret_1001110B
dd offset loc_100110D8
dd offset loc_100110DE
			
sub	esp, 0Ch
push	ebp
mov	ebp, [esp+10h+arg_0]
push	esi
mov	esi, eax
push	edi
push	esi
mov	[esp+1Ch+var_8], 0
call	SECKEY_PublicKeyStrength
add	esp, 4
mov	[esp+18h+var_4], eax
test	eax, eax
jz	loc_100111FC
push	eax
call	PORT_Alloc_Util
add	esp, 4
cmp	[esp+18h+var_4], 0
mov	[esp+18h+var_8], eax
jz	loc_100111FC
test	eax, eax
jz	loc_100111FC
mov	eax, [esp+18h+arg_10]
mov	edx, [esp+18h+arg_C]
push	eax
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	edx
push	esi
call	PK11_VerifyRecover
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_100111FF
test	ebp, ebp
jz	short loc_100111AA
mov	eax, [esp+18h+var_4]
mov	ecx, [esp+18h+arg_8]
mov	edx, [esp+18h+var_8]
mov	[ecx], eax
mov	eax, [esp+18h+arg_4]
pop	edi
mov	[eax], edx
pop	esi
mov	[ebx], ebp
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
lea	ecx, [esp+18h+var_C]
push	ecx
call	SGN_DecodeDigestInfo
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_100111FC
lea	edx, [esi+4]
push	edx
call	SECOID_GetAlgorithmTag_Util
add	esp, 4
mov	[ebx], eax
test	eax, eax
jnz	short loc_100111D2
or	edi, 0FFFFFFFFh
push	esi
call	SGN_DestroyDigestInfo_Util
add	esp, 4
test	edi, edi
jnz	short loc_100111FF
mov	eax, [esp+18h+var_4]
mov	ecx, [esp+18h+arg_8]
mov	edx, [esp+18h+var_8]
mov	[ecx], eax
mov	eax, [esp+18h+arg_4]
mov	[eax], edx
mov	eax, edi
pop	edi
pop	esi
pop	ebp
add	esp, 0Ch
retn
			
or	edi, 0FFFFFFFFh
			
mov	eax, [esp+18h+var_8]
test	eax, eax
jz	short loc_10011210
push	eax
call	PORT_Free_Util
add	esp, 4
mov	ecx, [esp+18h+arg_4]
mov	edx, [esp+18h+arg_8]
mov	dword ptr [ecx], 0
push	0FFFFE00Ah
mov	dword ptr [edx], 0
call	PORT_SetError_Util
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
add	esp, 0Ch
retn
align 10h
sub	esp, 0Ch
mov	ecx, [eax+9Ch]
mov	edx, [eax+98h]
mov	eax, [eax]
mov	[esp+0Ch+var_8], ecx
push	1
lea	ecx, [esp+10h+var_C]
mov	[esp+10h+var_4], edx
mov	edx, [esp+10h+arg_0]
push	ecx
push	edx
push	eax
call	_SGN_VerifyPKCS1DigestInfo
add	esp, 1Ch
retn
align 10h
			
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+8+Dst]
cmp	ecx, 7Ch
jz	short loc_100112BA
cmp	ecx, 0C8h
jz	short loc_100112B2
mov	ecx, [eax+8]
cmp	ecx, edi
jz	short loc_1001129F
push	0FFFFE009h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [eax+4]
push	ecx		
push	eax		
push	ebp		
call	memcpy
add	esp, 0Ch
pop	ebp
xor	eax, eax
pop	ebx
retn
cmp	edi, 90h
ja	short loc_1001128C
push	esi
push	edi
push	eax
call	DSAU_DecodeDerSigToLen
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100112E2
mov	eax, [esi+8]
cmp	eax, edi
jnz	short loc_100112E2
mov	ecx, [esi+4]
push	eax		
push	ecx		
push	ebp		
call	memcpy
add	esp, 0Ch
jmp	short loc_100112E5
			
or	ebx, 0FFFFFFFFh
test	esi, esi
jz	short loc_100112F4
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	esi
cmp	ebx, 0FFFFFFFFh
jnz	short loc_10011307
push	0FFFFE009h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
mov	eax, ebx
pop	ebx
retn
align 10h
			
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_4]
push	ebp
push	esi
push	edi
cmp	ebx, 113h
jg	loc_100113DF
jz	short loc_10011372
lea	eax, [ebx-0Fh]	
cmp	eax, 0BAh
ja	loc_1001155B	
movzx	eax, ds:byte_10011598[eax]
jmp	ds:off_10011574[eax*4] 
			
mov	ecx, [esp+1Ch+arg_10] 
mov	dword ptr [ecx], 1
jmp	loc_100114D1
			
mov	edx, [esp+1Ch+arg_10] 
mov	dword ptr [edx], 3
jmp	loc_100114D1
			
mov	eax, [esp+1Ch+arg_10] 
mov	dword ptr [eax], 4
jmp	loc_100114D1
mov	edx, [esp+1Ch+arg_0]
push	edx
call	SECKEY_PublicKeyStrength
add	esp, 4
cmp	eax, 1Ch
jge	short loc_100113AB
mov	eax, [esp+1Ch+arg_10]
mov	dword ptr [eax], 4
			
lea	eax, [ebx-113h]	
cmp	eax, 28h
ja	loc_1001155B	
movzx	eax, ds:byte_10011668[eax]
jmp	ds:off_10011654[eax*4] 
cmp	eax, 20h
jge	short loc_100113BC
mov	ecx, [esp+1Ch+arg_10]
mov	dword ptr [ecx], 135h
jmp	short loc_1001138E
mov	edx, [esp+1Ch+arg_10]
cmp	eax, 30h
jge	short loc_100113CD
mov	dword ptr [edx], 0BFh
jmp	short loc_1001138E
xor	ecx, ecx
cmp	eax, 40h
setnl	cl
add	ecx, 0C0h
mov	[edx], ecx
jmp	short loc_1001138E
lea	eax, [ebx-114h]	
cmp	eax, 27h
ja	loc_1001155B	
movzx	eax, ds:byte_100116B4[eax]
jmp	ds:off_10011694[eax*4] 
			
			
mov	ecx, [esp+1Ch+arg_10] 
			
mov	dword ptr [ecx], 4
jmp	loc_100114D1
			
			
mov	edx, [esp+1Ch+arg_10] 
			
mov	dword ptr [edx], 0
jmp	loc_100114D1
			
mov	eax, [esp+1Ch+arg_10] 
mov	dword ptr [eax], 135h
jmp	loc_100114D1
			
			
mov	ecx, [esp+1Ch+arg_10] 
			
mov	dword ptr [ecx], 0BFh
jmp	loc_100114D1
			
			
mov	edx, [esp+1Ch+arg_10] 
			
mov	dword ptr [edx], 0C0h
jmp	loc_100114D1
			
			
mov	eax, [esp+1Ch+arg_10] 
			
mov	dword ptr [eax], 0C1h
jmp	short loc_100114D1
			
mov	esi, [esp+1Ch+arg_8] 
test	esi, esi
jz	loc_1001155B	
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_10011568
push	esi
push	offset dword_100A2A10
lea	ecx, [esp+24h+var_C]
push	ecx
push	edi
call	SEC_QuickDERDecodeItem_Util
mov	ebp, [esp+2Ch+arg_10]
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_100114A4
lea	edx, [esp+1Ch+var_C]
push	edx
call	SECOID_FindOIDTag_Util
add	esp, 4
mov	[ebp+0], eax
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
test	esi, esi
jz	short loc_100114BD
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
mov	eax, [ebp+0]
push	eax
call	HASH_GetHashTypeByOidTag
add	esp, 4
test	eax, eax
jz	loc_10011568
			
cmp	ebx, 0C9h
jg	loc_1001138E
jz	short loc_10011547 
lea	eax, [ebx-0Fh]	
cmp	eax, 0B5h
ja	short loc_1001155B 
movzx	ecx, ds:byte_100116EC[eax]
jmp	ds:off_100116DC[ecx*4] 
			
mov	edx, [esp+1Ch+arg_C] 
pop	edi
pop	esi
pop	ebp
mov	dword ptr [edx], 39h
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
			
mov	ecx, [esp+1Ch+arg_C] 
			
pop	edi
pop	esi
pop	ebp
mov	dword ptr [ecx], 10h
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
mov	edx, [esp+1Ch+arg_C] 
pop	edi
pop	esi
pop	ebp
mov	dword ptr [edx], 133h
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
			
mov	eax, [esp+1Ch+arg_C] 
			
pop	edi
pop	esi
pop	ebp
mov	dword ptr [eax], 7Ch
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
			
mov	ecx, [esp+1Ch+arg_C] 
pop	edi
pop	esi
pop	ebp
mov	dword ptr [ecx], 0C8h
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
push	0FFFFE006h	
call	PORT_SetError_Util
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
align 4
			
dd offset loc_10011354,	offset loc_10011363, offset loc_10011429 
dd offset loc_10011438,	offset loc_10011447, offset loc_1001155B
db	3,     0,     8,     8 
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     0
db	0,     0,     0,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     4,     4
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     8
db	8,     8,     8,     5
db	6,     7,     8,     8
db	8,     8,     4
align 4
dd offset loc_1001150B	
dd offset loc_1001151F
dd offset loc_10011533
dd offset loc_1001155B
db	0,     0,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     1,     4
db	4,     4,     4,     4
db	2,     1,     4,     4
db	4,     4,     4,     3
db	3
align 4
dd offset loc_1001141A	
dd offset loc_10011429
dd offset loc_10011438
dd offset loc_10011447
dd offset loc_100113FC
dd offset loc_1001140B
dd offset loc_1001155B
db	4,     7,     7,     7 
db	7,     7,     7,     7
db	7,     7,     7,     7
db	7,     7,     7,     7
db	7,     7,     7,     7
db	7,     5,     7,     7
db	7,     7,     7,     6
db	1,     7,     7,     7
db	7,     7,     1,     2
			
dd offset loc_1001155B	
db	0,     0,     3,     3 
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     1
db	1,     1,     1,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     2,     2
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     0
db	0,     0
align 10h
public VFY_DestroyContext
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10011816
mov	eax, [esi+0A4h]
test	eax, eax
jz	short loc_100117DE
mov	ecx, [esi+0A8h]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+0A4h], 0
mov	eax, [esi+4]
test	eax, eax
jz	short loc_100117EE
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, [esi+9Ch]
test	eax, eax
jz	short loc_10011801
push	eax
call	PORT_Free_Util
add	esp, 4
cmp	[esp+4+arg_4], 0
jz	short loc_10011816
push	0B4h
push	esi
call	PORT_ZFree_Util
add	esp, 8
			
pop	esi
retn
align 10h
public VFY_Begin
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+0A4h]
test	eax, eax
jz	short loc_1001184A
mov	ecx, [esi+0A8h]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+0A4h], 0
mov	eax, [esi]
push	eax
call	HASH_GetHashObjectByOidTag
add	esp, 4
mov	[esi+0A8h], eax
test	eax, eax
jnz	short loc_10011864
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [eax+4]
call	ecx
mov	[esi+0A4h], eax
test	eax, eax
jz	short loc_1001185F
mov	edx, [esi+0A8h]
push	eax
mov	eax, [edx+10h]
call	eax
add	esp, 4
xor	eax, eax
pop	esi
retn
align 10h
public VFY_Update
mov	ecx, [esp+arg_0]
mov	eax, [ecx+0A4h]
test	eax, eax
jnz	short loc_100118AF
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	edx, [esp+arg_8]
mov	ecx, [ecx+0A8h]
push	edx
mov	edx, [esp+4+arg_4]
push	edx
push	eax
mov	eax, [ecx+14h]
call	eax
add	esp, 0Ch
xor	eax, eax
retn
align 10h
public VFY_EndWithSignature
			
			
sub	esp, 70h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+70h+var_4], eax
push	ebx
mov	ebx, [esp+74h+arg_4]
push	esi
mov	esi, [esp+78h+arg_0]
cmp	dword ptr [esi+0B0h], 0
jnz	short loc_10011916
test	ebx, ebx
jnz	short loc_10011916
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
			
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+70h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
			
mov	eax, [esi+0A4h]
test	eax, eax
jz	short loc_100118F5
mov	ecx, [esi+0A8h]
push	40h
lea	edx, [esp+7Ch+var_70]
push	edx
lea	edx, [esp+80h+var_44]
push	edx
push	eax
mov	eax, [ecx+18h]
call	eax
mov	eax, [esi+4]
mov	ecx, [eax+4]
add	esp, 10h
dec	ecx
jz	loc_100119EC
dec	ecx
jz	short loc_10011950
sub	ecx, 4
jnz	short loc_10011989
lea	ecx, [esi+8]
push	eax
mov	[esp+7Ch+Dst], ecx
call	SECKEY_SignatureLen
add	esp, 4
mov	[esp+78h+var_64], eax
test	eax, eax
jz	short loc_10011902
test	ebx, ebx
jz	short loc_100119AA
mov	edx, [esp+78h+Dst]
mov	ecx, [esi+0ACh]
push	edi
mov	edi, eax
push	edx		
mov	eax, ebx
call	sub_10011270
add	esp, 4
pop	edi
test	eax, eax
jz	short loc_100119AA
			
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+70h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
			
mov	edx, [esi+0A0h]
mov	ecx, [esp+78h+var_70]
lea	eax, [esp+78h+var_44]
push	edx
mov	edx, [esi+4]
mov	[esp+7Ch+var_5C], eax
lea	eax, [esp+7Ch+var_60]
mov	[esp+7Ch+var_58], ecx
push	eax
lea	ecx, [esp+80h+var_6C]
push	ecx
push	edx
call	PK11_Verify
add	esp, 10h
test	eax, eax
jnz	short loc_10011989
pop	esi
pop	ebx
mov	ecx, [esp+70h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
mov	edx, [esp+78h+var_70]
lea	ecx, [esp+78h+var_44]
mov	[esp+78h+var_50], ecx
mov	[esp+78h+var_4C], edx
test	ebx, ebx
jz	short loc_10011A2D
mov	ecx, [esi+0A0h]
push	ecx
push	ebx
lea	edx, [esi+98h]
push	edx
mov	edx, [esi]
lea	ecx, [esi+9Ch]
push	ecx
push	edx
lea	ebx, [esp+8Ch+var_48]
call	sub_10011120
add	esp, 14h
test	eax, eax
jnz	loc_10011902
lea	eax, [esp+78h+var_54]
push	eax
mov	eax, esi
call	sub_10011240
mov	ecx, [esp+7Ch+var_4]
add	esp, 4
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
align 10h
public VFY_End
mov	eax, [esp+arg_0]
push	0
push	eax
call	VFY_EndWithSignature
add	esp, 8
retn
			
push	ecx
push	ebp
mov	ebp, [esp+8+arg_0]
push	edi
push	ebp
mov	edi, eax
call	sub_1000F380
mov	ecx, eax
mov	eax, [edi+4]
add	esp, 4
mov	[esp+0Ch+var_4], ecx
cmp	eax, ecx
jz	short loc_10011A9C
cmp	eax, 1
jnz	short loc_10011A89
cmp	ecx, 7
jz	short loc_10011A9C
push	0FFFFE02Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	ebp
pop	ecx
retn
			
push	ebx
push	0B4h
call	PORT_ZAlloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	loc_10011BB6
mov	eax, [esp+10h+arg_C]
mov	edx, [esp+10h+arg_4]
xor	ecx, ecx
test	esi, esi
setnz	cl
push	edi
mov	[ebx+0A0h], eax
mov	[ebx+0ACh], ebp
mov	[ebx], edx
mov	[ebx+0B0h], ecx
call	SECKEY_CopyPublicKey
add	esp, 4
lea	ecx, [ebx+9Ch]
mov	[ebx+4], eax
mov	dword ptr [ecx], 0
test	esi, esi
jz	short loc_10011B51
mov	edx, [esp+10h+var_4]
dec	edx
jz	short loc_10011B32
dec	edx
jz	short loc_10011B11
sub	edx, 4
jz	short loc_10011B11
push	0FFFFE030h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10011B60
			
push	edi
call	SECKEY_SignatureLen
add	esp, 4
test	eax, eax
jz	short loc_10011B60
lea	ecx, [ebx+8]
push	ecx		
mov	edi, eax
mov	eax, esi
mov	ecx, ebp
call	sub_10011270
add	esp, 4
jmp	short loc_10011B4D
mov	edx, [esp+10h+arg_C]
push	edx
push	esi
lea	edx, [ebx+98h]
push	edx
push	ecx
mov	ecx, [esp+20h+arg_4]
push	ecx
call	sub_10011120
add	esp, 14h
test	eax, eax
jnz	short loc_10011B60
mov	edx, [ebx]
push	edx
call	HASH_GetHashTypeByOidTag
add	esp, 4
test	eax, eax
jnz	short loc_10011BBD
			
mov	eax, [ebx+0A4h]
test	eax, eax
jz	short loc_10011B85
mov	ecx, [ebx+0A8h]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [ebx+0A4h], 0
mov	eax, [ebx+4]
test	eax, eax
jz	short loc_10011B95
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, [ebx+9Ch]
test	eax, eax
jz	short loc_10011BA8
push	eax
call	PORT_Free_Util
add	esp, 4
push	0B4h
push	ebx
call	PORT_ZFree_Util
add	esp, 8
pop	ebx
pop	edi
xor	eax, eax
pop	ebp
pop	ecx
retn
mov	eax, [esp+10h+arg_8]
test	eax, eax
jz	short loc_10011BC9
mov	ecx, [ebx]
mov	[eax], ecx
mov	eax, ebx
pop	ebx
pop	edi
pop	ebp
pop	ecx
retn
public VFY_CreateContext
mov	edx, [esp+arg_8]
sub	esp, 8
push	edi
mov	edi, [esp+0Ch+arg_0]
lea	eax, [esp+0Ch+var_8]
push	eax
lea	ecx, [esp+10h+var_4]
push	ecx
push	0
push	edx
push	edi
call	sub_10011310
add	esp, 14h
test	eax, eax
jz	short loc_10011BFD
xor	eax, eax
pop	edi
add	esp, 8
retn
mov	eax, [esp+0Ch+arg_C]
mov	ecx, [esp+0Ch+var_8]
mov	edx, [esp+0Ch+var_4]
push	esi
mov	esi, [esp+10h+arg_4]
push	eax
push	0
push	ecx
push	edx
mov	eax, edi
call	sub_10011A60
add	esp, 10h
pop	esi
pop	edi
add	esp, 8
retn
align 10h
public VFY_CreateContextDirect
mov	eax, [esp+arg_14]
mov	ecx, [esp+arg_10]
mov	edx, [esp+arg_C]
push	esi
mov	esi, [esp+4+arg_4]
push	eax
mov	eax, [esp+8+arg_8]
push	ecx
push	edx
push	eax
mov	eax, [esp+14h+arg_0]
call	sub_10011A60
add	esp, 10h
pop	esi
retn
align 10h
public VFY_CreateContextWithAlgorithmID
push	ecx
push	edi
lea	eax, [esp+8+arg_8]
push	eax
mov	eax, [esp+0Ch+arg_8]
lea	ecx, [esp+0Ch+var_4]
push	ecx
lea	edx, [eax+0Ch]
push	edx
push	eax
call	SECOID_GetAlgorithmTag_Util
mov	edi, [esp+18h+arg_0]
add	esp, 4
push	eax
push	edi
call	sub_10011310
add	esp, 14h
test	eax, eax
jz	short loc_10011C94
xor	eax, eax
pop	edi
pop	ecx
retn
mov	eax, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_8]
push	esi
mov	esi, [esp+0Ch+arg_4]
push	eax
mov	eax, [esp+10h+var_4]
push	ecx
push	edx
push	eax
mov	eax, edi
call	sub_10011A60
add	esp, 10h
pop	esi
pop	edi
pop	ecx
retn
align 10h
			
sub	esp, 18h
push	ebx
push	ebp
mov	ebp, [esp+20h+arg_0]
push	esi
mov	esi, [esp+24h+arg_8]
push	edi
mov	edi, [esp+28h+arg_4]
push	eax
push	0
push	ecx
push	edx
mov	eax, edi
or	ebx, 0FFFFFFFFh
call	sub_10011A60
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	loc_10011DC7
mov	edi, [edi+4]
dec	edi
jz	short loc_10011D48
dec	edi
jz	short loc_10011CFD
sub	edi, 4
jnz	short loc_10011D71
lea	eax, [esi+8]
mov	[esp+28h+var_14], eax
mov	ecx, [esi+4]
push	ecx
call	SECKEY_SignatureLen
add	esp, 4
mov	[esp+28h+var_10], eax
test	eax, eax
jz	short loc_10011D71
mov	edx, [esi+0A0h]
mov	ecx, [esi+4]
push	edx
push	ebp
lea	eax, [esp+30h+var_18]
push	eax
push	ecx
call	PK11_Verify
add	esp, 10h
test	eax, eax
jz	short loc_10011D44
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10011D71
xor	ebx, ebx
jmp	short loc_10011D71
mov	edx, [esi+9Ch]
mov	eax, [esi+98h]
push	1
lea	ecx, [esp+2Ch+var_C]
push	ecx
mov	[esp+30h+var_8], edx
mov	edx, [esi]
push	ebp
push	edx
mov	[esp+38h+var_4], eax
call	_SGN_VerifyPKCS1DigestInfo
add	esp, 10h
mov	ebx, eax
			
mov	eax, [esi+0A4h]
test	eax, eax
jz	short loc_10011D96
mov	ecx, [esi+0A8h]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+0A4h], 0
mov	eax, [esi+4]
test	eax, eax
jz	short loc_10011DA6
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, [esi+9Ch]
test	eax, eax
jz	short loc_10011DB9
push	eax
call	PORT_Free_Util
add	esp, 4
push	0B4h
push	esi
call	PORT_ZFree_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 18h
retn
align 10h
public VFY_VerifyDigestDirect
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	eax
mov	eax, [esp+4+arg_14]
push	ecx
mov	ecx, [esp+8+arg_10]
push	edx
mov	edx, [esp+0Ch+arg_C]
call	sub_10011CC0
add	esp, 0Ch
retn
align 10h
public VFY_VerifyDigest
mov	edx, [esp+arg_C]
sub	esp, 8
push	esi
mov	esi, [esp+0Ch+arg_4]
lea	eax, [esp+0Ch+var_8]
push	eax
lea	ecx, [esp+10h+var_4]
push	ecx
push	0
push	edx
push	esi
call	sub_10011310
add	esp, 14h
test	eax, eax
jz	short loc_10011E3E
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
mov	eax, [esp+0Ch+arg_8]
mov	ecx, [esp+0Ch+arg_0]
mov	edx, [esp+0Ch+var_4]
push	eax
mov	eax, [esp+10h+arg_10]
push	esi
push	ecx
mov	ecx, [esp+18h+var_8]
call	sub_10011CC0
add	esp, 0Ch
pop	esi
add	esp, 8
retn
align 10h
public VFY_VerifyDigestWithAlgorithmID
push	ecx
push	esi
lea	eax, [esp+8+arg_C]
push	eax
mov	eax, [esp+0Ch+arg_C]
lea	ecx, [esp+0Ch+var_4]
push	ecx
lea	edx, [eax+0Ch]
push	edx
push	eax
call	SECOID_GetAlgorithmTag_Util
mov	esi, [esp+18h+arg_4]
add	esp, 4
push	eax
push	esi
call	sub_10011310
add	esp, 14h
test	eax, eax
jnz	short loc_10011EE1
mov	eax, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
test	eax, eax
jz	short loc_10011EC6
test	ecx, ecx
jz	short loc_10011EC6
cmp	eax, ecx
jz	short loc_10011EC6
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
pop	ecx
retn
			
mov	eax, [esp+8+arg_8]
mov	edx, [esp+8+arg_0]
push	eax
mov	eax, [esp+0Ch+arg_14]
push	esi
push	edx
mov	edx, [esp+14h+var_4]
call	sub_10011CC0
add	esp, 0Ch
pop	esi
pop	ecx
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_C]
push	eax
mov	eax, [esp+8+arg_10]
push	ecx
push	edx
push	eax
mov	eax, [esp+14h+arg_8]
call	sub_10011A60
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10011F14
or	eax, 0FFFFFFFFh
pop	esi
retn
push	edi
push	esi
call	VFY_Begin
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10011F63
mov	eax, [esi+0A4h]
test	eax, eax
jnz	short loc_10011F40
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	edi, 0FFFFFFFFh
jmp	short loc_10011F63
mov	edx, [esp+8+arg_4]
mov	ecx, [esi+0A8h]
push	edx
mov	edx, [esp+0Ch+arg_0]
push	edx
push	eax
mov	eax, [ecx+14h]
call	eax
push	0
push	esi
call	VFY_EndWithSignature
add	esp, 14h
mov	edi, eax
			
mov	eax, [esi+0A4h]
test	eax, eax
jz	short loc_10011F88
mov	ecx, [esi+0A8h]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
mov	dword ptr [esi+0A4h], 0
mov	eax, [esi+4]
test	eax, eax
jz	short loc_10011F98
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, [esi+9Ch]
test	eax, eax
jz	short loc_10011FAB
push	eax
call	PORT_Free_Util
add	esp, 4
push	0B4h
push	esi
call	PORT_ZFree_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public VFY_VerifyDataDirect
mov	eax, [esp+arg_10]
mov	ecx, [esp+arg_C]
mov	edx, [esp+arg_8]
push	eax
mov	eax, [esp+4+arg_4]
push	ecx
mov	ecx, [esp+8+arg_0]
push	edx
mov	edx, [esp+0Ch+arg_14]
push	eax
mov	eax, [esp+10h+arg_1C]
push	ecx
mov	ecx, [esp+14h+arg_18]
call	sub_10011EF0
add	esp, 14h
retn
align 10h
public VFY_VerifyData
mov	edx, [esp+arg_10]
sub	esp, 8
push	esi
mov	esi, [esp+0Ch+arg_8]
lea	eax, [esp+0Ch+var_4]
push	eax
lea	ecx, [esp+10h+var_8]
push	ecx
push	0
push	edx
push	esi
call	sub_10011310
add	esp, 14h
test	eax, eax
jnz	short loc_1001203D
mov	eax, [esp+0Ch+var_8]
mov	ecx, [esp+0Ch+arg_C]
mov	edx, [esp+0Ch+arg_4]
push	eax
mov	eax, [esp+10h+arg_0]
push	ecx
push	esi
push	edx
mov	edx, [esp+1Ch+var_4]
push	eax
mov	eax, [esp+20h+arg_14]
xor	ecx, ecx
call	sub_10011EF0
add	esp, 14h
pop	esi
add	esp, 8
retn
align 10h
public VFY_VerifyDataWithAlgorithmID
			
push	ecx
push	esi
mov	esi, [esp+8+arg_10]
push	esi
call	SECOID_GetAlgorithmTag_Util
lea	ecx, [esp+0Ch+var_4]
push	ecx
lea	edx, [esp+10h+arg_10]
push	edx
add	esi, 0Ch
push	esi
mov	esi, [esp+18h+arg_8]
push	eax
push	esi
call	sub_10011310
add	esp, 18h
test	eax, eax
jnz	short loc_100120A5
mov	eax, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
mov	edx, [esp+8+arg_4]
push	eax
mov	eax, [esp+0Ch+arg_0]
push	ecx
mov	ecx, [esp+10h+arg_14]
push	esi
push	edx
mov	edx, [esp+18h+var_4]
push	eax
mov	eax, [esp+1Ch+arg_18]
call	sub_10011EF0
add	esp, 14h
pop	esi
pop	ecx
retn
align 10h
			
mov	ecx, [esp+arg_4]
mov	eax, [ecx+4]
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [ecx+8]
push	edi
mov	edi, [ebx+4]
test	esi, esi
jz	short loc_100120E3
cmp	byte ptr [eax],	0
jnz	short loc_100120DF
inc	eax
dec	esi
jnz	short loc_100120C8
mov	byte ptr [edi],	0
pop	edi
pop	esi
mov	dword ptr [ebx+8], 1
pop	ebx
retn
test	esi, esi
jnz	short loc_100120F1
mov	byte ptr [edi],	0
pop	edi
pop	esi
mov	dword ptr [ebx+8], 1
pop	ebx
retn
test	byte ptr [eax],	80h
jz	short loc_100120FA
mov	byte ptr [edi],	0
inc	edi
push	esi		
push	eax		
push	edi		
call	memcpy
sub	esi, [ebx+4]
add	esp, 0Ch
add	esi, edi
pop	edi
mov	[ebx+8], esi
pop	esi
pop	ebx
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, [esp+arg_4]
push	ebx
mov	ebx, [eax+8]
push	ebp
mov	ebp, [ecx+4]
mov	ecx, [ecx+8]
push	esi
mov	esi, ecx
sub	esi, ebx
push	edi
mov	edi, [eax+4]
test	esi, esi
jle	short loc_1001215D
push	esi		
push	0		
push	ebp		
call	memset
push	ebx		
push	edi		
add	esi, ebp
push	esi		
call	memcpy
add	esp, 18h
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
jns	short loc_10012173
mov	eax, ecx
sub	eax, edi
sub	eax, ebx
add	eax, edi
mov	dl, [edi]
inc	edi
inc	eax
test	dl, dl
jnz	short loc_10012185
test	eax, eax
js	short loc_10012167
push	ecx		
push	edi		
push	ebp		
call	memcpy
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
push	0FFFFE89Dh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
			
sub	esp, 24h
push	ebx
push	ebp
mov	ebp, [esp+2Ch+arg_4]
push	esi
mov	esi, [ebp+8]
shr	esi, 1
push	edi
lea	ebx, [esi+1]
push	ebx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_100121DA
push	ebx
call	PORT_ZAlloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_100121E5
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 24h
retn
mov	ebp, [ebp+4]
xor	eax, eax
mov	[esp+34h+var_18], eax
mov	[esp+34h+var_14], eax
mov	[esp+34h+var_10], eax
mov	[esp+34h+var_C], eax
mov	[esp+34h+var_8], eax
mov	[esp+34h+var_4], eax
mov	eax, 4
mov	ecx, 0Ah
mov	[esp+34h+var_10], eax
mov	[esp+34h+var_4], eax
lea	eax, [esp+34h+var_24]
mov	[esp+34h+var_18], ecx
mov	[esp+34h+var_C], ecx
push	eax
lea	ecx, [esp+38h+var_18]
push	ecx
mov	[esp+3Ch+var_14], edi
mov	[esp+3Ch+var_8], ebx
mov	[esp+3Ch+var_20], ebp
mov	[esp+3Ch+var_1C], esi
call	sub_100120B0
lea	edx, [esp+3Ch+var_24]
push	edx
lea	eax, [esp+40h+var_C]
add	ebp, esi
push	eax
mov	[esp+44h+var_20], ebp
call	sub_100120B0
mov	edx, [esp+44h+arg_0]
push	offset dword_100A2A50
lea	ecx, [esp+48h+var_18]
push	ecx
push	edx
push	0
call	SEC_ASN1EncodeItem_Util
push	edi
mov	esi, eax
call	PORT_Free_Util
push	ebx
call	PORT_Free_Util
add	esp, 28h
mov	eax, esi
neg	eax
pop	edi
sbb	eax, eax
pop	esi
neg	eax
pop	ebp
dec	eax
pop	ebx
add	esp, 24h
retn
align 10h
			
sub	esp, 24h
xor	eax, eax
push	esi
push	0Ch
mov	[esp+2Ch+var_18], eax
mov	[esp+2Ch+var_14], eax
mov	[esp+2Ch+var_10], eax
mov	[esp+2Ch+var_C], eax
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], eax
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_1001234A
lea	eax, [edi+edi]
push	eax
mov	[esi+8], eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jz	short loc_1001233D
mov	eax, 0Ah
mov	[esp+28h+var_18], eax
mov	[esp+28h+var_C], eax
mov	eax, [esp+28h+arg_0]
push	eax
push	offset dword_100A2A50
lea	ecx, [esp+30h+var_18]
push	ecx
push	0
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_1001233D
mov	edx, [esi+4]
lea	eax, [esp+28h+var_18]
push	eax
lea	ecx, [esp+2Ch+var_24]
push	ecx
mov	[esp+30h+var_20], edx
mov	[esp+30h+var_1C], edi
call	sub_10012120
add	esp, 8
test	eax, eax
jnz	short loc_1001233D
add	[esp+28h+var_20], edi
lea	edx, [esp+28h+var_C]
push	edx
lea	eax, [esp+2Ch+var_24]
push	eax
call	sub_10012120
add	esp, 8
test	eax, eax
jz	short loc_1001234A
			
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
xor	esi, esi
			
mov	eax, [esp+28h+var_14]
test	eax, eax
jz	short loc_1001235B
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+28h+var_8]
test	eax, eax
jz	short loc_1001236C
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 24h
retn
align 10h
public DSAU_EncodeDerSig
mov	eax, [esp+arg_4]
cmp	dword ptr [eax+8], 28h
jz	short loc_1001239B
push	0FFFFE89Dh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	[esp+arg_4], eax
jmp	sub_100121A0
align 10h
public DSAU_EncodeDerSigWithLen
			
mov	ecx, [esp+arg_4]
mov	eax, [ecx+8]
cmp	eax, [esp+arg_8]
jnz	short loc_100123D0
test	al, 1
jnz	short loc_100123D0
mov	eax, [esp+arg_0]
push	ecx
push	eax
call	sub_100121A0
add	esp, 8
retn
			
push	0FFFFE89Dh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
public DSAU_DecodeDerSig
mov	eax, [esp+arg_0]
push	edi
push	eax
mov	edi, 14h
call	sub_10012290
add	esp, 4
pop	edi
retn
align 10h
public DSAU_DecodeDerSigToLen
			
mov	eax, [esp+arg_0]
push	edi
mov	edi, [esp+4+arg_4]
shr	edi, 1
push	eax
call	sub_10012290
add	esp, 4
pop	edi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_4]
xor	eax, eax
test	esi, esi
jz	short loc_10012465
mov	eax, [esp+4+arg_0]
push	14h
push	eax
call	sub_100504B0
add	esp, 8
test	eax, eax
jz	short loc_10012465
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_C]
mov	[eax+4], esi
mov	[eax], ecx
mov	dword ptr [eax+10h], 0
mov	[eax+0Ch], edx
			
pop	esi
retn
align 10h
			
cmp	[esp+arg_8], 0
jnz	short loc_1001247A
xor	eax, eax
retn
mov	eax, [esp+arg_4]
push	esi
push	14h
push	eax
call	sub_100504B0
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10012492
pop	esi
retn
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, [edi+44h]
push	ecx
call	sub_10035690
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jnz	short loc_100124B8
push	esi
call	sub_10050550
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
retn
mov	[esi+8], edi
pop	edi
mov	dword ptr [esi+0Ch], 1
mov	dword ptr [esi], 0
mov	dword ptr [esi+10h], 0
mov	eax, esi
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
xor	eax, eax
test	esi, esi
jz	short loc_1001250C
cmp	[esi+0Ch], eax
jz	short loc_10012503
mov	eax, [esi+4]
mov	ecx, [esi+8]
mov	edx, [ecx+44h]
push	eax
push	edx
call	sub_10035750
add	esp, 8
push	esi
call	sub_10050550
add	esp, 4
pop	esi
retn
align 10h
push	ebx
push	edi
mov	edi, eax
call	sub_100507B0
mov	ebx, eax
test	ebx, ebx
jnz	short loc_10012522
pop	edi
pop	ebx
retn
push	esi
push	48h
push	ebx
call	sub_100504B0
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10012543
push	ebx
call	sub_10050840
add	esp, 4
pop	esi
pop	edi
xor	eax, eax
pop	ebx
retn
mov	dword ptr [esi+8], 1
call	ds:PR_NewLock
mov	edx, [esp+0Ch+arg_0]
mov	[esi+4], eax
mov	[esi], ebx
mov	[esi+44h], edi
mov	eax, [edi]
mov	[esi+40h], eax
mov	ecx, [edi+40h]
mov	[esi+1Ch], ecx
mov	eax, [edx+4]
push	eax		
lea	ecx, [edi+0B8h]
push	ecx		
call	sub_10050D50
add	esp, 8
mov	[esi+0Ch], eax
cmp	dword ptr [edi+30h], 0
jz	short loc_1001258E
xor	edi, edi
mov	[esi+3Ch], edi
mov	eax, esi
pop	esi
pop	edi
pop	ebx
retn
mov	edi, [edi+3Ch]
mov	[esi+3Ch], edi
mov	eax, esi
pop	esi
pop	edi
pop	ebx
retn
align 10h
			
push	edi
mov	edi, [esp+4+arg_4]
cmp	dword ptr [edi+18h], 0
jz	short loc_100125BC
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
push	ebp
call	sub_100507B0
mov	ebp, eax
test	ebp, ebp
jnz	short loc_100125CB
pop	ebp
pop	edi
retn
push	esi
push	38h
push	ebp
call	sub_100504B0
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100125F1
mov	dword ptr [esi+8], 1
call	ds:PR_NewLock
mov	[esi+4], eax
test	eax, eax
jnz	short loc_10012600
push	ebp
call	sub_10050840
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	edi
retn
mov	[esi], ebp
mov	[esi+34h], edi
mov	eax, [edi]
mov	[esi+20h], eax
mov	ecx, [edi+2Ch]
mov	edx, [edi+3Ch]
mov	eax, [edi+38h]
push	ebx
mov	ebx, [esp+10h+arg_0]
push	ecx
mov	ecx, [ebx+4]
push	edx
push	eax
push	ecx
call	sub_10012430
push	edi
mov	[esi+24h], eax
call	PK11_IsInternal
add	esp, 14h
test	eax, eax
jnz	short loc_10012657
push	edi
call	PK11_IsHW
add	esp, 4
test	eax, eax
jz	short loc_10012657
push	1
push	1
push	1
push	esi
call	sub_1004F590
add	esp, 10h
mov	[esi+30h], eax
test	eax, eax
jz	short loc_1001267F
			
mov	[esi+28h], ebx
mov	edx, [ebx+4]
push	edx		
lea	eax, [edi+0F9h]
push	eax		
call	sub_10050D50
mov	[esi+0Ch], eax
push	ebx
mov	eax, edi
call	sub_10012510
add	esp, 0Ch
mov	[esi+14h], eax
test	eax, eax
jnz	short loc_10012699
mov	ecx, [esi+4]
push	ecx
call	ds:PR_DestroyLock
push	ebp
call	sub_10050840
add	esp, 8
pop	ebx
pop	esi
pop	ebp
xor	eax, eax
pop	edi
retn
mov	[eax+18h], esi
mov	eax, [esi+24h]
test	eax, eax
jz	short loc_100126A9
mov	edx, [esi+14h]
mov	[eax+8], edx
pop	ebx
mov	eax, esi
pop	esi
pop	ebp
pop	edi
retn
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_100126D1
mov	eax, [esi]
mov	ecx, [esi+34h]
push	eax		
add	ecx, 0F9h
push	ecx		
call	sub_10050D50
add	esp, 8
mov	[esi+0Ch], eax
pop	esi
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+44h]
mov	eax, [ecx+0Ch]
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+44h]
mov	[esp+arg_0], ecx
jmp	PK11_IsFriendly
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_1001270D
xor	eax, eax
pop	edi
retn
mov	eax, [edi+34h]
push	ebx
mov	ebx, [eax+2Ch]
push	ebp
mov	ebp, [eax+3Ch]
push	esi
mov	esi, [eax+38h]
mov	eax, [edi+14h]
mov	ecx, [eax]
xor	eax, eax
test	esi, esi
jz	short loc_10012745
push	14h
push	ecx
call	sub_100504B0
add	esp, 8
test	eax, eax
jz	short loc_10012745
mov	[eax+4], esi
mov	[eax], ebp
mov	dword ptr [eax+10h], 0
mov	[eax+0Ch], ebx
			
mov	[edi+24h], eax
neg	eax
pop	esi
sbb	eax, eax
pop	ebp
neg	eax
pop	ebx
dec	eax
pop	edi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+18h]
mov	ecx, [esi+44h]
push	edi
xor	edi, edi
test	eax, eax
jz	short loc_1001277F
mov	eax, [eax+0Ch]
cmp	byte ptr [eax],	0
jnz	short loc_1001277F
mov	edi, 1
			
push	0
push	ecx
call	sub_10036D20
add	esp, 8
test	eax, eax
jz	short loc_10012794
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
test	edi, edi
jz	short loc_100127A8
mov	eax, [esi+18h]
mov	ecx, [eax+28h]
push	eax
push	ecx
call	sub_100487C0
add	esp, 8
mov	edx, [esi+18h]
pop	edi
pop	esi
mov	[esp+arg_0], edx
jmp	sub_10012700
align 10h
mov	eax, [esp+arg_0]
mov	eax, [eax+34h]
push	eax
call	SECKEY_GetPublicKeyType
mov	eax, [eax+60h]
add	esp, 4
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	eax, [eax+44h]
cmp	dword ptr [eax+24h], 0
jnz	short loc_100127F3
mov	eax, 1
retn
push	0
push	eax
call	PK11_IsLoggedIn
add	esp, 8
retn
align 10h
			
mov	eax, [esp+arg_0]
push	eax
mov	eax, [eax+28h]
push	eax
call	sub_10047C80
add	esp, 8
retn
align 10h
			
mov	dword ptr [esi+4], 0
mov	eax, [edi+8]
push	eax
push	esi
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [esi+4]
add	esp, 0Ch
test	eax, eax
jnz	short loc_10012842
mov	eax, 2
retn
mov	edx, [esi+8]
mov	ecx, [edi+4]
push	edx		
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
xor	eax, eax
retn
align 10h
sub	esp, 0Ch
push	eax
push	0
push	0
call	NSS_Get_SEC_ObjectIDTemplate_Util
mov	edx, [esp+18h+arg_0]
add	esp, 8
push	eax
lea	ecx, [esp+14h+var_C]
push	ecx
push	edx
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10012982	
lea	eax, [esp+0Ch+var_C]
push	eax
call	SECOID_FindOIDTag_Util
add	eax, 0FFFFFF36h
add	esp, 4
cmp	eax, 39h	
ja	loc_10012982	
movzx	ecx, ds:byte_100129E8[eax]
jmp	ds:off_10012988[ecx*4] 
			
mov	eax, 1Dh	
add	esp, 0Ch
retn
			
mov	eax, 1Fh	
add	esp, 0Ch
retn
			
mov	eax, 21h	
add	esp, 0Ch
retn
			
mov	eax, 23h	
add	esp, 0Ch
retn
			
mov	eax, 29h	
add	esp, 0Ch
retn
			
mov	eax, 2Bh	
add	esp, 0Ch
retn
			
mov	eax, 2Dh	
add	esp, 0Ch
retn
			
mov	eax, 31h	
add	esp, 0Ch
retn
			
mov	eax, 33h	
add	esp, 0Ch
retn
			
mov	eax, 35h	
add	esp, 0Ch
retn
			
mov	eax, 39h	
add	esp, 0Ch
retn
			
mov	eax, 3Dh	
add	esp, 0Ch
retn
			
mov	eax, 41h	
add	esp, 0Ch
retn
			
mov	eax, 45h	
add	esp, 0Ch
retn
			
mov	eax, 49h	
add	esp, 0Ch
retn
			
mov	eax, 4Dh	
add	esp, 0Ch
retn
			
mov	eax, 5Bh	
add	esp, 0Ch
retn
			
mov	eax, 5Dh	
add	esp, 0Ch
retn
			
mov	eax, 61h	
add	esp, 0Ch
retn
			
mov	eax, 69h	
add	esp, 0Ch
retn
			
mov	eax, 6Dh	
add	esp, 0Ch
retn
			
mov	eax, 85h	
add	esp, 0Ch
retn
			
mov	eax, 91h	
add	esp, 0Ch
retn
			
xor	eax, eax	
add	esp, 0Ch
retn
			
dd offset loc_100128B3,	offset loc_100128C5, offset loc_100128D7 
dd offset loc_1001290D,	offset loc_10012955, offset loc_10012970
dd offset loc_100128E0,	offset loc_100128E9, offset loc_10012904
dd offset loc_10012928,	offset loc_1001293A, offset loc_10012943
dd offset loc_1001294C,	offset loc_10012967, offset loc_100128BC
dd offset loc_100128CE,	offset loc_100128FB, offset loc_10012931
dd offset loc_1001295E,	offset loc_10012979, offset loc_10012982
db	1,     1,     2,     3 
db	3,     4,     4,     5
db	5,     5,     0,     6
db	6,     2,     7,     8
db	9,     9,     9,   0Ah
db	0,     0,     0,   17h
db    17h,   0Bh,     1,     1
db	1,   17h,   17h,   0Ch
db    0Dh,   0Eh,   0Fh,   10h
db    11h,   11h,   12h,   12h
db	9,     9,     9,   13h
db    13h,     1,     1,     1
db    14h,   14h,   15h,   15h
db    16h,   16h
align 10h
			
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
push	esi
push	edi
mov	edi, ecx
cmp	dword ptr [edi+8], 0
mov	esi, eax
jnz	short loc_10012A50
pop	edi
pop	esi
mov	eax, 13h
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+18h+arg_4]
push	ebp
push	ebx
call	sub_10012860
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_10012B46
mov	eax, [edi+4]
mov	cl, [eax]
cmp	cl, 4
jnz	loc_10012B46
cmp	[edi+8], ebp
jz	loc_10012B37
cmp	cl, cl
jnz	loc_10012B46
lea	ecx, [esp+1Ch+var_C]
push	ecx
mov	[esp+20h+var_8], eax
mov	eax, [edi+8]
push	0
push	0
mov	[esp+28h+var_4], eax
call	NSS_Get_SEC_OctetStringTemplate_Util
add	esp, 8
push	eax
push	esi
push	ebx
call	SEC_QuickDERDecodeItem_Util
add	esp, 10h
test	ebp, ebp
jz	short loc_10012ACD
test	eax, eax
jnz	loc_10012B46
cmp	[esi+8], ebp
jnz	loc_10012B46
			
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
mov	edx, [esp+1Ch+var_4]
test	eax, eax
jnz	short loc_10012B32
test	byte ptr [esi+8], 1
jz	short loc_10012B32
mov	ebp, [esi+4]
cmp	byte ptr [ebp+0], 4
jnz	short loc_10012B32
mov	ecx, [esi+8]
mov	eax, edx
sub	eax, ecx
add	eax, [esp+1Ch+var_8]
cmp	ecx, 4
jb	short loc_10012B09
mov	ebx, [eax]
cmp	ebx, [ebp+0]
jnz	short loc_10012B2E
sub	ecx, 4
add	ebp, 4
add	eax, 4
cmp	ecx, 4
jnb	short loc_10012AF4
test	ecx, ecx
jz	short loc_10012AC3
mov	bl, [ebp+0]
cmp	bl, [eax]
jnz	short loc_10012B2E
cmp	ecx, 1
jbe	short loc_10012AC3
mov	bl, [ebp+1]
cmp	bl, [eax+1]
jnz	short loc_10012B2E
cmp	ecx, 2
jbe	short loc_10012AC3
mov	cl, [ebp+2]
cmp	cl, [eax+2]
jz	short loc_10012AC3
			
mov	ebx, [esp+1Ch+arg_0]
			
test	dl, 1
jz	short loc_10012B46
mov	ecx, ebx
call	sub_10012820
pop	ebp
pop	edi
pop	esi
pop	ebx
add	esp, 0Ch
retn
			
pop	ebp
pop	edi
pop	esi
mov	eax, 13h
pop	ebx
add	esp, 0Ch
retn
align 10h
			
sub	esp, 74h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+74h+var_4], eax
push	ebx
push	esi
push	edi
mov	edi, [esp+80h+arg_0]
xor	esi, esi
mov	ebx, 2
mov	[esp+80h+var_68], edi
mov	[esp+80h+var_70], ebx
cmp	[esp+80h+arg_4], esi
jnz	short loc_10012BCE
mov	eax, [esp+80h+arg_8]
push	100h
push	eax
push	edi
call	sub_1002A210
add	esp, 0Ch
mov	[esp+80h+var_6C], eax
cmp	eax, 0FFFFFFFFh
jz	loc_10012C4A
cmp	eax, 3		
ja	loc_10012C3D	
jmp	ds:off_10012FBC[eax*4] 
			
mov	[esp+80h+arg_4], 1 
			
push	ebp
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, esi
jz	loc_10012D9F
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+84h+var_74], eax
cmp	eax, esi
jnz	short loc_10012C5E
push	esi
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
			
mov	[esp+80h+arg_4], ebx 
jmp	short loc_10012BCE
			
mov	[esp+80h+arg_4], 4 
jmp	short loc_10012BCE
			
mov	[esp+80h+arg_4], 6 
jmp	short loc_10012BCE
push	0FFFFE00Eh	
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
push	0ACh
push	ebp
call	PORT_ArenaZAlloc_Util
mov	ebx, eax
add	esp, 8
cmp	ebx, esi
jnz	short loc_10012C9C
push	esi
push	ebp
call	PORT_FreeArena_Util
mov	ecx, [esp+8Ch+var_74]
push	esi
push	ecx
call	PORT_FreeArena_Util
add	esp, 10h
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
mov	edx, [esp+84h+arg_4]
push	edi
mov	[ebx], ebp
mov	[ebx+4], edx
call	PK11_ReferenceSlot
mov	[ebx+8], eax
mov	eax, [esp+88h+arg_8]
mov	[ebx+0Ch], eax
lea	ecx, [esp+88h+var_70]
mov	[esp+88h+var_60], ecx
mov	edx, 4
lea	ecx, [esp+88h+var_6C]
mov	[esp+88h+var_54], ecx
mov	[esp+88h+var_64], esi
mov	[esp+88h+var_5C], edx
mov	[esp+88h+var_58], 100h
mov	[esp+88h+var_50], edx
mov	ecx, [ebx+4]
dec	ecx
add	esp, 4
cmp	ecx, 5		
ja	loc_10012DB4	
jmp	ds:off_10012FCC[ecx*4] 
			
push	edx		
lea	edx, [esp+88h+var_64]
push	edx
push	eax
mov	eax, [esp+90h+var_74]
push	edi
push	eax
mov	[esp+98h+var_4C], 120h
mov	[esp+98h+var_48], esi
mov	[esp+98h+var_44], esi
mov	[esp+98h+var_40], 122h
mov	[esp+98h+var_3C], esi
mov	[esp+98h+var_38], esi
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, esi
jnz	short loc_10012D69
cmp	[esp+84h+var_70], 2
jnz	short loc_10012DB4 
cmp	[esp+84h+var_6C], esi
jnz	short loc_10012DB4 
lea	esi, [ebx+14h]
lea	edi, [esp+84h+var_4C]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	short loc_10012D67
lea	esi, [ebx+20h]
lea	edi, [esp+84h+var_40]
			
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
			
xor	esi, esi
			
mov	edx, [esp+84h+var_74]
push	esi
push	edx
call	PORT_FreeArena_Util
add	esp, 8
cmp	edi, esi
jz	loc_10012FA4
push	esi
push	ebp
call	PORT_FreeArena_Util
mov	eax, [esp+8Ch+var_68]
push	eax
call	PK11_FreeSlot
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 14h
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
			
mov	edi, 82h	
jmp	short loc_10012D69
			
mov	edx, [esp+84h+var_74] 
push	6
lea	ecx, [esp+88h+var_64]
push	ecx
push	eax
push	edi
push	edx
mov	[esp+98h+var_4C], 130h
mov	[esp+98h+var_48], esi
mov	[esp+98h+var_44], esi
mov	[esp+98h+var_40], 131h
mov	[esp+98h+var_3C], esi
mov	[esp+98h+var_38], esi
mov	[esp+98h+var_34], 132h
mov	[esp+98h+var_30], esi
mov	[esp+98h+var_2C], esi
mov	[esp+98h+var_28], 11h
mov	[esp+98h+var_24], esi
mov	[esp+98h+var_20], esi
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, esi
jnz	loc_10012D69
cmp	[esp+84h+var_70], 2
jnz	short loc_10012DB4 
cmp	[esp+84h+var_6C], 1
jnz	short loc_10012DB4 
lea	esi, [ebx+14h]
lea	edi, [esp+84h+var_4C]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
lea	esi, [ebx+20h]
lea	edi, [esp+84h+var_40]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
lea	esi, [ebx+2Ch]
lea	edi, [esp+84h+var_34]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
lea	esi, [ebx+38h]
lea	edi, [esp+84h+var_28]
jmp	loc_10012D5E
			
mov	edx, [esp+84h+var_74] 
push	5
lea	ecx, [esp+88h+var_64]
push	ecx
push	eax
push	edi
push	edx
mov	[esp+98h+var_4C], 130h
mov	[esp+98h+var_48], esi
mov	[esp+98h+var_44], esi
mov	[esp+98h+var_40], 132h
mov	[esp+98h+var_3C], esi
mov	[esp+98h+var_38], esi
mov	[esp+98h+var_34], 11h
mov	[esp+98h+var_30], esi
mov	[esp+98h+var_2C], esi
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, esi
jnz	loc_10012D69
mov	eax, 2
cmp	[esp+84h+var_70], eax
jnz	loc_10012DB4	
cmp	[esp+84h+var_6C], eax
jnz	loc_10012DB4	
lea	esi, [ebx+14h]
lea	edi, [esp+84h+var_4C]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
lea	esi, [ebx+20h]
lea	edi, [esp+84h+var_40]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
lea	esi, [ebx+2Ch]
lea	edi, [esp+84h+var_34]
jmp	loc_10012D5E
			
push	edx		
lea	ecx, [esp+88h+var_64]
push	ecx
mov	[ebx+1Ch], esi
push	eax
push	edi
push	ebp
mov	[esp+98h+var_4C], 180h
mov	[esp+98h+var_48], esi
mov	[esp+98h+var_44], esi
mov	[esp+98h+var_40], 181h
mov	[esp+98h+var_3C], esi
mov	[esp+98h+var_38], esi
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, esi
jnz	loc_10012D69
cmp	[esp+84h+var_70], 2
jnz	loc_10012DB4	
cmp	[esp+84h+var_6C], 3
jnz	loc_10012DB4	
lea	esi, [ebx+10h]
lea	edi, [esp+84h+var_4C]
mov	ecx, ebp
call	sub_10012820
mov	edi, eax
test	edi, edi
jnz	loc_10012D67
push	esi
lea	eax, [ebx+20h]
push	ebp
lea	ecx, [esp+8Ch+var_40]
call	sub_10012A30
add	esp, 8
jmp	loc_10012D65
mov	ecx, [esp+84h+var_4]
pop	ebp
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
dd offset loc_10012C1A	
dd offset loc_10012C23
dd offset loc_10012C30
dd offset loc_10012DBB	
dd offset loc_10012DB4
dd offset loc_10012E7D
dd offset loc_10012DB4
dd offset loc_10012F22
align 10h
			
cmp	[esp+arg_4], 0
push	ebp
mov	ebp, [esp+4+arg_C]
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
jnz	short loc_10013065 
push	100h
push	ebp
push	edi
call	sub_1002A210
push	0
push	1
push	ebp
push	edi
mov	esi, eax
call	sub_1002A280
xor	ecx, ecx
add	esp, 1Ch
test	al, al
setz	cl
mov	[esp+0Ch+arg_8], ecx
cmp	esi, 5		
ja	short loc_10013065 
jmp	ds:off_100130F4[esi*4] 
			
mov	[esp+0Ch+arg_4], 1 
jmp	short loc_10013065 
			
mov	[esp+0Ch+arg_4], 2 
jmp	short loc_10013065 
			
mov	[esp+0Ch+arg_4], 4 
jmp	short loc_10013065 
			
mov	[esp+0Ch+arg_4], 3 
jmp	short loc_10013065 
			
mov	[esp+0Ch+arg_4], 6 
			
push	0		
push	2
push	ebp
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10013091
mov	edx, [esp+0Ch+arg_10]
push	edx
push	1
push	edi
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jz	short loc_10013091
pop	edi
pop	esi
xor	eax, eax
pop	ebp
retn
			
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	short loc_100130C0
push	1Ch
push	ebx
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_100130C7
push	eax
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	ebx
pop	edi
pop	esi
xor	eax, eax
pop	ebp
retn
mov	eax, [esp+10h+arg_4]
push	edi
mov	[esi], ebx
mov	[esi+4], eax
call	PK11_ReferenceSlot
mov	ecx, [esp+14h+arg_8]
mov	edx, [esp+14h+arg_10]
add	esp, 4
pop	ebx
mov	[esi+8], eax
pop	edi
mov	[esi+0Ch], ebp
mov	[esi+10h], ecx
mov	[esi+14h], edx
mov	eax, esi
pop	esi
pop	ebp
retn
dd offset loc_1001303F	
dd offset loc_10013049
dd offset loc_1001305D
dd offset loc_10013065
dd offset loc_10013053
align 10h
public PK11_GetSlotFromPrivateKey
mov	eax, [esp+arg_0]
mov	eax, [eax+8]
mov	[esp+arg_0], eax
jmp	PK11_ReferenceSlot
public PK11_GetPrivateModulusLen
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_0]
mov	ecx, [eax+4]
dec	ecx
mov	edx, [eax+8]
mov	[esp+0Ch+var_C], 120h
mov	[esp+0Ch+var_8], 0
mov	[esp+0Ch+var_4], 0
jz	short loc_1001315B
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
add	esp, 0Ch
retn
mov	eax, [eax+0Ch]
push	1
lea	ecx, [esp+10h+var_C]
push	ecx
push	eax
push	edx
push	0
call	sub_1002A310
add	esp, 14h
test	eax, eax
jz	short loc_1001318B
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
add	esp, 0Ch
retn
mov	eax, [esp+0Ch+var_8]
cmp	byte ptr [eax],	0
push	esi
mov	esi, [esp+10h+var_4]
jnz	short loc_1001319A
dec	esi
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
align 10h
public PK11_MakeKEAPubKey
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_0]
mov	ecx, [esp+0Ch+arg_4]
push	edi
push	800h
mov	[esp+14h+var_8], eax
mov	[esp+14h+var_4], ecx
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100131DC
pop	edi
add	esp, 0Ch
retn
push	esi
push	0ACh
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1001321E
lea	edx, [esp+14h+var_C]
push	edx
lea	eax, [esi+44h]
push	eax
push	edi
mov	[esi], edi
mov	dword ptr [esi+8], 0
mov	dword ptr [esi+0Ch], 0
mov	dword ptr [esi+4], 3
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_10013231
push	0
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
xor	eax, eax
pop	edi
add	esp, 0Ch
retn
mov	eax, esi
pop	esi
pop	edi
add	esp, 0Ch
retn
align 10h
public PK11_ImportEncryptedPrivateKeyInfoAndReturnKey
			
			
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, [esp+58h+arg_C]
mov	edx, [esp+58h+arg_10]
mov	ecx, [esp+58h+arg_4]
push	ebx
mov	[esp+5Ch+var_34], eax
mov	eax, [esp+5Ch+arg_14]
mov	[esp+5Ch+var_18], edx
mov	edx, [esp+5Ch+arg_18]
push	ebp
mov	ebp, [esp+60h+arg_0]
mov	[esp+60h+var_28], eax
mov	eax, [esp+60h+arg_24]
mov	[esp+60h+var_20], edx
mov	edx, [esp+60h+arg_28]
push	esi
mov	esi, [esp+64h+arg_8]
push	edi
xor	edi, edi
mov	[esp+68h+var_24], eax
mov	eax, 108h
mov	[esp+68h+var_50], edx
mov	edx, 10Ch
xor	ebx, ebx
mov	[esp+68h+var_4C], ecx
mov	[esp+68h+var_44], esi
mov	[esp+68h+var_58], edi
mov	[esp+68h+var_48], edi
mov	[esp+68h+var_14], 107h
mov	[esp+68h+var_10], 105h
mov	[esp+68h+var_C], eax
mov	[esp+68h+var_8], 109h
mov	[esp+68h+var_1C], eax
mov	[esp+68h+var_30], edx
mov	[esp+68h+var_40], eax
mov	[esp+68h+var_3C], edx
test	ecx, ecx
jz	loc_100134F9
test	esi, esi
jz	loc_100134F9
add	ecx, 4
push	ecx
mov	[esp+6Ch+var_38], ecx
call	SECOID_FindOIDTag_Util
push	eax
call	PK11_AlgtagToMechanism
mov	[esp+70h+var_2C], eax
mov	eax, [esp+70h+arg_1C]
add	esp, 8
sub	eax, 2
jz	loc_100133A8
sub	eax, 2
jz	short loc_10013395
sub	eax, 2
mov	eax, [esp+68h+arg_20]
jz	short loc_10013368
and	eax, 0A0h
mov	[esp+68h+var_54], ebx
cmp	eax, 0A0h	
ja	short loc_100133B5 
movzx	eax, ds:byte_10013520[eax]
jmp	ds:off_10013510[eax*4] 
			
lea	edi, [esp+68h+var_14] 
mov	ebx, 2
jmp	short loc_100133B5 
			
lea	edi, [esp+68h+var_C] 
mov	ebx, 2
jmp	short loc_100133B5 
			
lea	edi, [esp+68h+var_14] 
mov	ebx, 4
jmp	short loc_100133B5 
and	eax, 88h
sub	eax, 8
mov	[esp+68h+var_54], 3
jz	short loc_1001338A
sub	eax, 78h
lea	edi, [esp+68h+var_40]
jz	short loc_100133A1
mov	ebx, 2
jmp	short loc_100133B5 
lea	edi, [esp+68h+var_3C]
mov	ebx, 1
jmp	short loc_100133B5 
mov	[esp+68h+var_54], 2
lea	edi, [esp+68h+var_30]
mov	ebx, 1
jmp	short loc_100133B5 
mov	ebx, 1
mov	[esp+68h+var_54], ebx
lea	edi, [esp+68h+var_1C]
			
mov	ecx, [esp+68h+var_50] 
mov	edx, [esp+68h+var_38]
push	ecx
push	0
push	esi
push	edx
push	ebp
call	PK11_PBEKeyGen
mov	esi, eax
add	esp, 14h
test	esi, esi
jz	loc_100134A6
mov	eax, [esp+68h+var_48]
mov	ecx, [esp+68h+var_44]
push	eax
mov	eax, [esp+6Ch+var_4C]
push	ecx
lea	edx, [esp+70h+var_58]
push	edx
add	eax, 4
push	eax
call	sub_1002F560
add	esp, 10h
cmp	eax, 0FFFFFFFFh
jz	loc_100134A6
push	eax
call	PK11_GetPadMechanism
mov	ecx, [esp+6Ch+var_50]
mov	edx, [esp+6Ch+var_54]
push	ecx
mov	ecx, [esp+70h+var_20]
push	ebx
push	edi
push	edx
mov	edx, [esp+7Ch+var_28]
push	ecx
mov	ecx, [esp+80h+var_18]
push	edx
mov	edx, [esp+84h+var_34]
push	ecx
mov	ecx, [esp+88h+var_4C]
push	edx
mov	edx, [esp+8Ch+var_58]
add	ecx, 1Ch
push	ecx
push	edx
push	eax
push	esi
push	ebp
call	PK11_UnwrapPrivKey
add	esp, 38h
test	eax, eax
jnz	loc_100134DE
cmp	[esp+68h+var_2C], 80000003h
jnz	short loc_100134A6
cmp	[esp+68h+var_48], eax
jnz	short loc_100134A6
push	esi
call	PK11_FreeSymKey
mov	eax, [esp+6Ch+var_58]
add	esp, 4
test	eax, eax
jz	short loc_10013477
push	1
push	eax
call	SECITEM_ZfreeItem_Util
add	esp, 8
mov	[esp+68h+var_58], 0
mov	eax, [esp+68h+var_50]
mov	ecx, [esp+68h+var_44]
push	eax
mov	eax, [esp+6Ch+var_4C]
push	1
push	ecx
add	eax, 4
push	eax
push	ebp
mov	[esp+7Ch+var_48], 1
call	PK11_PBEKeyGen
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	loc_100133D5
			
or	edi, 0FFFFFFFFh
			
mov	eax, [esp+68h+var_58]
test	eax, eax
jz	short loc_100134BC
push	1
push	eax
call	SECITEM_ZfreeItem_Util
add	esp, 8
test	esi, esi
jz	short loc_100134C9
push	esi
call	PK11_FreeSymKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
mov	ecx, [esp+68h+var_24]
test	ecx, ecx
jz	short loc_100134EC
mov	[ecx], eax
xor	edi, edi
jmp	short loc_100134A9
push	eax
call	SECKEY_DestroyPrivateKey
add	esp, 4
xor	edi, edi
jmp	short loc_100134A9
			
mov	ecx, [esp+68h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
			
dd offset loc_100133B5	
			
db	3,     3,     3,     3 
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	2,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	0
align 10h
public PK11_ExportPrivateKeyInfo
mov	eax, [esp+arg_0]
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_4]
push	edi
push	eax
xor	ebx, ebx
call	PK11_FindKeyByAnyCert
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10013605
push	edi
push	esi
call	PK11_ExportPrivKeyInfo
push	esi
mov	edi, eax
call	SECKEY_DestroyPrivateKey
add	esp, 0Ch
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
public PK11_DEREncodePublicKey
jmp	SECKEY_EncodeDERSubjectPublicKeyInfo
align 10h
public PK11_GetPublicKeyNickname
mov	eax, [esp+arg_0] 
mov	ecx, [eax+0Ch]
mov	edx, [eax+8]
push	ecx
push	edx
call	sub_1002A540
add	esp, 8
retn
align 10h
public PK11_SetPublicKeyNickname
mov	eax, [esp+arg_4] 
push	eax
mov	eax, [esp+4+arg_0]
mov	ecx, [eax+0Ch]
mov	edx, [eax+8]
push	ecx
push	edx
call	sub_1002A5C0
add	esp, 0Ch
retn
align 10h
public PK11_GetPQGParamsFromPrivateKey
sub	esp, 28h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+28h+var_4], eax
push	ebx
mov	ebx, [esp+2Ch+arg_0]
push	ebp
xor	ebp, ebp
push	esi
push	edi
push	800h
mov	[esp+3Ch+var_28], 130h
mov	[esp+3Ch+var_24], ebp
mov	[esp+3Ch+var_20], ebp
mov	[esp+3Ch+var_1C], 131h
mov	[esp+3Ch+var_18], ebp
mov	[esp+3Ch+var_14], ebp
mov	[esp+3Ch+var_10], 132h
mov	[esp+3Ch+var_C], ebp
mov	[esp+3Ch+var_8], ebp
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jz	short loc_10013701
push	28h
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jz	short loc_100136F7
mov	ecx, [ebx+0Ch]
mov	edx, [ebx+8]
push	3
lea	eax, [esp+3Ch+var_28]
push	eax
push	ecx
push	edx
push	edi
call	sub_1002A310
add	esp, 14h
cmp	eax, ebp
jz	short loc_10013716
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
push	ebp
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+28h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
mov	[esi], edi
mov	eax, [esp+38h+var_24]
mov	[esi+8], eax
mov	ecx, [esp+38h+var_20]
mov	[esi+0Ch], ecx
mov	edx, [esp+38h+var_18]
mov	[esi+14h], edx
mov	eax, [esp+38h+var_14]
mov	[esi+18h], eax
mov	ecx, [esp+38h+var_C]
mov	[esi+20h], ecx
mov	edx, [esp+38h+var_8]
mov	ecx, [esp+38h+var_4]
pop	edi
mov	[esi+24h], edx
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
align 10h
public PK11_ConvertSessionPrivKeyToTokenPrivKey
sub	esp, 10h
mov	ecx, [esp+10h+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+18h+arg_0]
push	esi
mov	esi, [ebp+8]
push	edi
mov	ebx, 1
push	ecx
lea	eax, [esp+24h+arg_0]
push	ebx
push	esi
mov	byte ptr [esp+2Ch+arg_0], bl
mov	[esp+2Ch+var_C], ebx
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], ebx
call	PK11_Authenticate
push	esi
call	sub_10035690
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_100137B9
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
mov	edx, [esi]
lea	eax, [esp+20h+var_10]
push	eax
mov	eax, [ebp+0Ch]
push	ebx
lea	ecx, [esp+28h+var_C]
push	ecx
mov	ecx, [edx+56h]
push	eax
push	edi
call	ecx
push	edi
push	esi
mov	ebx, eax
call	sub_10035750
add	esp, 1Ch
test	ebx, ebx
jz	short loc_100137F9
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
mov	edx, [esp+20h+var_10]
push	0
push	edx
push	0
push	0
push	esi
call	sub_10012FF0
add	esp, 14h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
align 10h
public PK11_DeleteTokenPrivateKey
			
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
push	edi
call	PK11_GetCertFromPrivateKey
mov	esi, eax
add	esp, 4
mov	ebx, 0FFFFFFFEh
test	esi, esi
jz	short loc_10013842
cmp	[esp+0Ch+arg_4], 0
jz	short loc_10013854
mov	eax, [edi+0Ch]
mov	ecx, [edi+8]
push	eax
push	ecx
call	PK11_DestroyTokenObject
add	esp, 8
mov	ebx, eax
test	esi, esi
jz	short loc_10013861
push	esi
call	CERT_DestroyCertificate
add	esp, 4
push	edi
call	SECKEY_DestroyPrivateKey
add	esp, 4
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
public PK11_DeleteTokenPublicKey
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+8]
test	eax, eax
jnz	short loc_10013881
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [esi+0Ch]
push	ecx
push	eax
call	PK11_DestroyTokenObject
push	esi
call	SECKEY_DestroyPublicKey
add	esp, 0Ch
xor	eax, eax
pop	esi
retn
align 10h
push	ebx
push	esi
mov	esi, [esp+8+arg_8]
xor	ebx, ebx
test	esi, esi
jnz	short loc_100138B2
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esi+8]
mov	ecx, [esp+8+arg_4]
mov	edx, [esp+8+arg_0]
push	edi
push	eax
push	ecx
push	1
push	0
push	edx
call	sub_10012FF0
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	short loc_100138DA
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esi]
test	eax, eax
jz	short loc_100138EC
mov	ecx, [esi+4]
push	ecx
push	edi
call	eax
add	esp, 8
mov	ebx, eax
push	edi
call	SECKEY_DestroyPrivateKey
add	esp, 4
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
sub	esp, 3Ch
mov	eax, 1
lea	edx, [esp+3Ch+var_38]
mov	[esp+3Ch+var_39], al
xor	ecx, ecx
mov	[esp+3Ch+var_C], eax
mov	[esp+3Ch+var_4], eax
mov	eax, [esp+3Ch+arg_0]
mov	[esp+3Ch+var_14], edx
lea	edx, [esp+3Ch+var_39]
mov	[esp+3Ch+var_38], 3
mov	[esp+3Ch+var_18], ecx
mov	[esp+3Ch+var_10], 4
mov	[esp+3Ch+var_8], edx
cmp	eax, ecx
jnz	short loc_10013948
xor	eax, eax
add	esp, 3Ch
retn
lea	edx, [esp+3Ch+var_34]
mov	[esp+3Ch+var_24], edx
lea	edx, [esp+3Ch+var_18]
mov	[esp+3Ch+var_20], edx
mov	edx, [esp+3Ch+arg_4]
mov	[esp+3Ch+var_2C], ecx
lea	ecx, [esp+3Ch+var_28]
mov	[esp+3Ch+var_34], edx
mov	edx, [esp+3Ch+arg_8]
push	ecx
push	eax
mov	[esp+44h+var_28], offset sub_100138A0
mov	[esp+44h+var_1C], 2
mov	[esp+44h+var_30], edx
call	sub_1002C7E0
add	esp, 8
add	esp, 3Ch
retn
align 10h
			
sub	esp, 1Ch
mov	eax, [esp+1Ch+arg_4]
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	[esp+1Ch+var_14], ecx
push	2
lea	ecx, [esp+20h+var_18]
mov	[esp+20h+var_10], edx
mov	edx, [esp+20h+arg_0]
push	ecx
lea	eax, [esp+24h+var_1C]
push	edx
mov	[esp+28h+var_1C], 3
mov	[esp+28h+var_18], 102h
mov	[esp+28h+var_C], 0
mov	[esp+28h+var_8], eax
mov	[esp+28h+var_4], 4
call	sub_1002C4F0
add	esp, 28h
retn
align 10h
public PK11_FindKeyByKeyID
sub	esp, 1Ch
mov	eax, [esp+1Ch+arg_4]
mov	ecx, [eax+4]
mov	edx, [eax+8]
push	esi
mov	esi, [esp+20h+arg_0]
mov	[esp+20h+var_14], ecx
push	2
lea	ecx, [esp+24h+var_18]
push	ecx
lea	eax, [esp+28h+var_1C]
push	esi
mov	[esp+2Ch+var_1C], 3
mov	[esp+2Ch+var_18], 102h
mov	[esp+2Ch+var_10], edx
mov	[esp+2Ch+var_C], 0
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], 4
call	sub_1002C4F0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10013A4B
pop	esi
add	esp, 1Ch
retn
mov	edx, [esp+20h+arg_8]
push	edx
push	eax
push	1
push	0
push	esi
call	sub_10012FF0
add	esp, 14h
pop	esi
add	esp, 1Ch
retn
align 10h
public PK11_MakeIDFromPubKey
			
push	edi
mov	edi, [esp+4+arg_0]
cmp	dword ptr [edi+8], 14h
ja	short loc_10013A86
push	edi
call	SECITEM_DupItem_Util
add	esp, 4
pop	edi
retn
push	esi
push	4
call	PK11_CreateDigestContext
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10013AC4
push	esi
call	PK11_DigestBegin
add	esp, 4
test	eax, eax
jnz	short loc_10013AB9
mov	eax, [edi+8]
mov	ecx, [edi+4]
push	eax
push	ecx
push	esi
call	PK11_DigestOp
add	esp, 0Ch
test	eax, eax
jz	short loc_10013AC9
push	1
push	esi
call	PK11_DestroyContext
add	esp, 8
pop	esi
xor	eax, eax
pop	edi
retn
push	ebx
push	0Ch
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_10013AEB
push	1
push	esi
call	PK11_DestroyContext
add	esp, 8
pop	ebx
pop	esi
xor	eax, eax
pop	edi
retn
lea	edi, [ebx+8]
push	14h
mov	dword ptr [edi], 14h
call	PORT_Alloc_Util
add	esp, 4
mov	[ebx+4], eax
test	eax, eax
jnz	short loc_10013B1C
push	ebx
call	PORT_Free_Util
push	1
push	esi
call	PK11_DestroyContext
add	esp, 0Ch
pop	ebx
pop	esi
xor	eax, eax
pop	edi
retn
push	14h
push	edi
push	eax
push	esi
call	PK11_DigestFinal
push	1
push	esi
mov	edi, eax
call	PK11_DestroyContext
add	esp, 18h
test	edi, edi
jz	short loc_10013B48
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
pop	ebx
pop	esi
xor	eax, eax
pop	edi
retn
mov	eax, ebx
pop	ebx
pop	esi
pop	edi
retn
align 10h
public PK11_GetLowLevelKeyIDForPrivateKey
mov	eax, [esp+arg_0]
mov	ecx, [eax+0Ch]
mov	edx, [eax+8]
push	ecx
push	edx
call	sub_1002C8D0
add	esp, 8
retn
align 10h
mov	eax, [esp+4]
push	eax
call	SECKEY_CopyPrivateKey
mov	ecx, [esp+0Ch]
push	eax
push	ecx
call	SECKEY_AddPrivateKeyToListTail
add	esp, 0Ch
retn
align 10h
public PK11_ListPrivateKeysInSlot
push	esi
call	SECKEY_NewPrivateKeyList
mov	esi, eax
test	esi, esi
jnz	short loc_10013B9E
pop	esi
retn
mov	eax, [esp+4+arg_0]
push	esi
push	offset loc_10013B70
push	eax
call	sub_10013900
add	esp, 0Ch
test	eax, eax
jz	short loc_10013BC0
push	esi
call	SECKEY_DestroyPrivateKeyList
add	esp, 4
xor	esi, esi
mov	eax, esi
pop	esi
retn
align 10h
public PK11_ListPublicKeysInSlot
sub	esp, 0C4h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0C4h+var_4], eax
push	ebx
push	esi
mov	esi, [esp+0CCh+arg_0]
lea	eax, [esp+0CCh+var_98]
xor	ebx, ebx
mov	[esp+0CCh+var_30], eax
mov	eax, 1
push	edi
mov	edi, [esp+0D0h+arg_4]
lea	ecx, [esp+0D0h+var_BD]
mov	[esp+0D0h+var_28], eax
mov	[esp+0D0h+var_20], eax
mov	[esp+0D0h+var_B8], esi
mov	[esp+0D0h+var_BD], 1
mov	[esp+0D0h+var_98], 2
mov	[esp+0D0h+var_A8], ebx
mov	[esp+0D0h+var_34], ebx
mov	[esp+0D0h+var_2C], 4
mov	[esp+0D0h+var_24], ecx
lea	eax, [esp+0D0h+var_1C]
cmp	edi, ebx
jz	short loc_10013C80
mov	eax, edi
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
cmp	cl, bl
jnz	short loc_10013C57
sub	eax, edx
mov	[esp+0D0h+var_14], eax
mov	[esp+0D0h+var_1C], 3
mov	[esp+0D0h+var_18], edi
lea	eax, [esp+0D0h+var_10]
lea	ecx, [esp+0D0h+var_34]
sub	eax, ecx
mov	ecx, eax
lea	edx, [esp+0D0h+var_A8]
push	edx
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
push	eax
lea	ecx, [esp+0D8h+var_34]
push	ecx
push	esi
call	sub_1002C5B0
mov	edi, eax
add	esp, 10h
mov	[esp+0D0h+var_A4], edi
cmp	edi, ebx
jnz	short loc_10013CD6
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+0C4h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C4h
retn
push	ebp
call	SECKEY_NewPrivateKeyList
mov	ebp, eax
mov	[esp+0D4h+var_A0], ebp
cmp	ebp, ebx
jnz	short loc_10013CF6
push	edi
call	PORT_Free_Util
add	esp, 4
xor	eax, eax
jmp	loc_1001414C
xor	eax, eax
mov	[esp+0D4h+var_9C], eax
cmp	[esp+0D4h+var_A8], ebx
jle	loc_10014141
mov	edi, [edi+eax*4]
push	100h
push	edi
mov	ebp, 2
push	esi
mov	[esp+0E0h+var_BC], ebp
call	sub_1002A210
add	esp, 0Ch
mov	[esp+0D4h+var_B4], eax
cmp	eax, 0FFFFFFFFh
jz	loc_10014126
cmp	eax, 3		
ja	short loc_10013D98 
jmp	ds:off_10014168[eax*4] 
			
mov	[esp+0D4h+var_AC], 1 
			
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
mov	[esp+0D4h+var_C4], ebp
cmp	ebp, ebx
jz	loc_10014126
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+0D4h+var_B0], eax
cmp	eax, ebx
jnz	short loc_10013DAA
push	ebx
push	ebp
call	PORT_FreeArena_Util
jmp	loc_10014123
			
mov	[esp+0D4h+var_AC], ebp 
jmp	short loc_10013D42
			
mov	[esp+0D4h+var_AC], 4 
jmp	short loc_10013D42
			
mov	[esp+0D4h+var_AC], 6 
jmp	short loc_10013D42
push	0FFFFE00Eh	
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10014126
push	0ACh
push	ebp
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
cmp	ebp, ebx
jnz	short loc_10013DDC
mov	edx, [esp+0D4h+var_C4]
push	ebx
push	edx
call	PORT_FreeArena_Util
mov	eax, [esp+0DCh+var_B0]
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 10h
jmp	loc_10014126
mov	ecx, [esp+0D4h+var_C4]
mov	edx, [esp+0D4h+var_AC]
push	esi
mov	[ebp+0], ecx
mov	[ebp+4], edx
call	PK11_ReferenceSlot
mov	[ebp+8], eax
mov	[ebp+0Ch], edi
lea	eax, [esp+0D8h+var_BC]
mov	ecx, 4
lea	edx, [esp+0D8h+var_B4]
mov	[esp+0D8h+var_90], eax
mov	[esp+0D8h+var_94], ebx
mov	[esp+0D8h+var_8C], ecx
mov	[esp+0D8h+var_88], 100h
mov	[esp+0D8h+var_84], edx
mov	[esp+0D8h+var_80], ecx
mov	eax, [ebp+4]
dec	eax
add	esp, 4
cmp	eax, 5		
ja	loc_10013EE8	
jmp	ds:off_10014178[eax*4] 
			
push	ecx		
mov	ecx, [esp+0D8h+var_B0]
lea	eax, [esp+0D8h+var_94]
push	eax
push	edi
push	esi
push	ecx
mov	[esp+0E8h+var_7C], 120h
mov	[esp+0E8h+var_78], ebx
mov	[esp+0E8h+var_74], ebx
mov	[esp+0E8h+var_70], 122h
mov	[esp+0E8h+var_6C], ebx
mov	[esp+0E8h+var_68], ebx
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, ebx
jnz	short loc_10013EAD
cmp	[esp+0D4h+var_BC], 2
jnz	short loc_10013EE8 
cmp	[esp+0D4h+var_B4], ebx
jnz	short loc_10013EE8 
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+14h]
lea	edi, [esp+0D4h+var_7C]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	short loc_10013EA9
lea	esi, [ebp+20h]
lea	edi, [esp+0D4h+var_70]
			
mov	ecx, [esp+0D4h+var_C4]
call	sub_10012820
mov	edi, eax
			
mov	esi, [esp+0D4h+var_B8]
			
mov	eax, [esp+0D4h+var_B0]
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
cmp	edi, ebx
jz	loc_10014118
mov	ecx, [esp+0D4h+var_C4]
push	ebx
push	ecx
call	PORT_FreeArena_Util
push	esi
call	PK11_FreeSlot
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 14h
jmp	loc_10014126
			
mov	edi, 82h	
jmp	short loc_10013EAD
			
mov	eax, [esp+0D4h+var_B0] 
push	6
lea	edx, [esp+0D8h+var_94]
push	edx
push	edi
push	esi
push	eax
mov	[esp+0E8h+var_7C], 130h
mov	[esp+0E8h+var_78], ebx
mov	[esp+0E8h+var_74], ebx
mov	[esp+0E8h+var_70], 131h
mov	[esp+0E8h+var_6C], ebx
mov	[esp+0E8h+var_68], ebx
mov	[esp+0E8h+var_64], 132h
mov	[esp+0E8h+var_60], ebx
mov	[esp+0E8h+var_5C], ebx
mov	[esp+0E8h+var_58], 11h
mov	[esp+0E8h+var_54], ebx
mov	[esp+0E8h+var_50], ebx
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, ebx
jnz	loc_10013EAD
cmp	[esp+0D4h+var_BC], 2
jnz	loc_10013EE8	
cmp	[esp+0D4h+var_B4], 1
jnz	loc_10013EE8	
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+14h]
lea	edi, [esp+0D4h+var_7C]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+20h]
lea	edi, [esp+0D4h+var_70]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+2Ch]
lea	edi, [esp+0D4h+var_64]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
lea	esi, [ebp+38h]
lea	edi, [esp+0D4h+var_58]
jmp	loc_10013E9E
			
mov	edx, [esp+0D4h+var_B0] 
push	5
lea	ecx, [esp+0D8h+var_94]
push	ecx
push	edi
push	esi
push	edx
mov	[esp+0E8h+var_7C], 130h
mov	[esp+0E8h+var_78], ebx
mov	[esp+0E8h+var_74], ebx
mov	[esp+0E8h+var_70], 132h
mov	[esp+0E8h+var_6C], ebx
mov	[esp+0E8h+var_68], ebx
mov	[esp+0E8h+var_64], 11h
mov	[esp+0E8h+var_60], ebx
mov	[esp+0E8h+var_5C], ebx
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, ebx
jnz	loc_10013EAD
mov	eax, 2
cmp	[esp+0D4h+var_BC], eax
jnz	loc_10013EE8	
cmp	[esp+0D4h+var_B4], eax
jnz	loc_10013EE8	
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+14h]
lea	edi, [esp+0D4h+var_7C]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+20h]
lea	edi, [esp+0D4h+var_70]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
lea	esi, [ebp+2Ch]
lea	edi, [esp+0D4h+var_64]
jmp	loc_10013E9E
			
push	ecx		
mov	ecx, [esp+0D8h+var_C4]
lea	eax, [esp+0D8h+var_94]
push	eax
mov	[ebp+1Ch], ebx
push	edi
push	esi
push	ecx
mov	[esp+0E8h+var_7C], 180h
mov	[esp+0E8h+var_78], ebx
mov	[esp+0E8h+var_74], ebx
mov	[esp+0E8h+var_70], 181h
mov	[esp+0E8h+var_6C], ebx
mov	[esp+0E8h+var_68], ebx
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, ebx
jnz	loc_10013EAD
cmp	[esp+0D4h+var_BC], 2
jnz	loc_10013EE8	
cmp	[esp+0D4h+var_B4], 3
jnz	loc_10013EE8	
mov	ecx, [esp+0D4h+var_C4]
lea	esi, [ebp+10h]
lea	edi, [esp+0D4h+var_7C]
call	sub_10012820
mov	edi, eax
cmp	edi, ebx
jnz	loc_10013EA9
mov	edx, [esp+0D4h+var_C4]
push	esi
lea	eax, [ebp+20h]
push	edx
lea	ecx, [esp+0DCh+var_70]
call	sub_10012A30
add	esp, 8
jmp	loc_10013EA7
mov	edx, [esp+0D4h+var_A0]
push	ebp
push	edx
call	SECKEY_AddPrivateKeyToListTail
add	esp, 8
			
mov	eax, [esp+0D4h+var_9C]
mov	edi, [esp+0D4h+var_A4]
inc	eax
mov	[esp+0D4h+var_9C], eax
cmp	eax, [esp+0D4h+var_A8]
jl	loc_10013D06
mov	ebp, [esp+0D4h+var_A0]
push	edi
call	PORT_Free_Util
add	esp, 4
mov	eax, ebp
mov	ecx, [esp+0D4h+var_4]
pop	ebp
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C4h
retn
align 4
dd offset loc_10013D7E	
dd offset loc_10013D84
dd offset loc_10013D8E
dd offset loc_10013EEF	
dd offset loc_10013EE8
dd offset loc_10013FD4
dd offset loc_10013EE8
dd offset loc_10014089
public PK11_ListPrivKeysInSlot
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, [esp+58h+arg_8]
push	ebx
push	ebp
mov	ebp, [esp+60h+arg_0]
lea	ecx, [esp+60h+var_3C]
push	esi
mov	[esp+64h+var_4C], eax
xor	ebx, ebx
mov	eax, 1
mov	[esp+64h+var_30], ecx
mov	ecx, [esp+64h+arg_4]
push	edi
mov	edi, 3
lea	edx, [esp+68h+var_55]
mov	[esp+68h+var_28], eax
mov	[esp+68h+var_20], eax
mov	[esp+68h+var_55], 1
mov	[esp+68h+var_3C], edi
mov	[esp+68h+var_50], ebx
mov	[esp+68h+var_34], ebx
mov	[esp+68h+var_2C], 4
mov	[esp+68h+var_24], edx
lea	eax, [esp+68h+var_1C]
cmp	ecx, ebx
jz	short loc_10014219
mov	eax, ecx
lea	esi, [eax+1]
lea	esp, [esp+0]
mov	dl, [eax]
inc	eax
test	dl, dl
jnz	short loc_10014200
sub	eax, esi
mov	[esp+68h+var_14], eax
mov	[esp+68h+var_1C], edi
mov	[esp+68h+var_18], ecx
lea	eax, [esp+68h+var_10]
lea	edx, [esp+68h+var_34]
sub	eax, edx
lea	ecx, [esp+68h+var_50]
push	ecx
mov	ecx, eax
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
push	eax
lea	ecx, [esp+70h+var_34]
push	ecx
push	ebp
call	sub_1002C5B0
mov	esi, eax
add	esp, 10h
mov	[esp+68h+var_44], esi
cmp	esi, ebx
jz	short loc_10014267
call	SECKEY_NewPrivateKeyList
mov	edi, eax
mov	[esp+68h+var_48], edi
cmp	edi, ebx
jnz	short loc_1001427C
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
mov	[esp+68h+var_54], ebx
cmp	[esp+68h+var_50], ebx
jle	loc_1001439F
lea	ebx, [ebx+0]
mov	edx, [esp+68h+var_54]
mov	edi, [esi+edx*4]
push	100h
push	edi
push	ebp
xor	ebx, ebx
call	sub_1002A210
push	ebx
push	1
push	edi
push	ebp
mov	esi, eax
call	sub_1002A280
xor	ecx, ecx
add	esp, 1Ch
test	al, al
setz	cl
mov	[esp+68h+var_38], ecx
cmp	esi, 5		
ja	short loc_100142EC 
jmp	ds:off_100143C0[esi*4] 
			
mov	ebx, 1		
jmp	short loc_100142EC 
			
mov	ebx, 2		
jmp	short loc_100142EC 
			
mov	ebx, 4		
jmp	short loc_100142EC 
			
mov	ebx, 3		
jmp	short loc_100142EC 
			
mov	ebx, 6		
			
push	0		
push	2
push	edi
push	ebp
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10014316
mov	edx, [esp+68h+var_4C]
push	edx
push	1
push	ebp
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jz	short loc_10014316
xor	esi, esi
jmp	short loc_10014376
			
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+68h+var_40], eax
test	eax, eax
jnz	short loc_1001432F
xor	esi, esi
jmp	short loc_10014376
push	1Ch
push	eax
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10014350
push	eax
mov	eax, [esp+6Ch+var_40]
push	eax
call	PORT_FreeArena_Util
add	esp, 8
jmp	short loc_10014376
mov	ecx, [esp+68h+var_40]
push	ebp
mov	[esi], ecx
mov	[esi+4], ebx
call	PK11_ReferenceSlot
mov	edx, [esp+6Ch+var_38]
mov	[esi+8], eax
mov	eax, [esp+6Ch+var_4C]
add	esp, 4
mov	[esi+0Ch], edi
mov	[esi+10h], edx
mov	[esi+14h], eax
			
mov	ecx, [esp+68h+var_48]
push	esi
push	ecx
call	SECKEY_AddPrivateKeyToListTail
mov	eax, [esp+70h+var_54]
mov	esi, [esp+70h+var_44]
inc	eax
add	esp, 8
mov	[esp+68h+var_54], eax
cmp	eax, [esp+68h+var_50]
jl	loc_10014290
mov	edi, [esp+68h+var_48]
push	esi
call	PORT_Free_Util
mov	ecx, [esp+6Ch+var_4]
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
dd offset loc_100142D2	
dd offset loc_100142D9
dd offset loc_100142E7
dd offset loc_100142EC
dd offset loc_100142E0
align 10h
			
mov	ecx, [eax+4]
dec	ecx
cmp	ecx, 5		
ja	short loc_10014424 
jmp	ds:off_10014428[ecx*4] 
			
add	eax, 14h	
push	eax
call	PK11_MakeIDFromPubKey
add	esp, 4
retn
			
add	eax, 38h	
push	eax
call	PK11_MakeIDFromPubKey
add	esp, 4
retn
			
add	eax, 2Ch	
push	eax
call	PK11_MakeIDFromPubKey
add	esp, 4
retn
			
add	eax, 20h	
push	eax
call	PK11_MakeIDFromPubKey
add	esp, 4
retn
			
			
xor	eax, eax	
retn
align 4
dd offset loc_100143FD	
dd offset loc_10014424
dd offset loc_1001440A
dd offset loc_10014424
dd offset loc_10014417
public PK11_ImportPublicKey
			
sub	esp, 0A4h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A4h+var_4], eax
mov	eax, [esp+0A4h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+0ACh+arg_8]
xor	ebx, ebx
push	edi
mov	edi, [esp+0B0h+arg_4]
mov	[esp+0B0h+var_8C], eax
mov	[esp+0B0h+var_A2], 1
mov	[esp+0B0h+var_A1], 0
mov	[esp+0B0h+var_90], 2
mov	[esp+0B0h+var_A0], 10h
mov	[esp+0B0h+var_9C], ebx
mov	[esp+0B0h+var_98], ebx
cmp	ebp, ebx
jnz	short loc_100144B8
cmp	[edi+8], eax
jnz	short loc_100144B8
mov	eax, [edi+0Ch]
pop	edi
pop	ebp
pop	ebx
mov	ecx, [esp+0A4h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A4h
retn
			
push	esi
mov	esi, [edi+8]
cmp	esi, ebx
jz	short loc_100144FB
mov	eax, [edi+0Ch]
push	eax
push	esi
call	sub_1002A4C0
add	esp, 8
test	eax, eax
jnz	short loc_100144EF
push	esi
call	sub_10035650
mov	edx, [edi+0Ch]
mov	ecx, [esi]
mov	eax, [esi+38h]
mov	ecx, [ecx+5Ah]
push	edx
push	eax
call	ecx
push	esi
call	sub_10035670
add	esp, 10h
push	esi
call	PK11_FreeSlot
add	esp, 4
mov	[edi+8], ebx
mov	eax, 4
mov	[esp+0B4h+var_88], ebx
lea	edx, [esp+0B4h+var_90]
lea	ecx, [esp+0B4h+var_A0]
mov	ebx, 1
mov	[esp+0B4h+var_80], eax
mov	[esp+0B4h+var_74], eax
mov	[esp+0B4h+var_84], edx
mov	[esp+0B4h+var_7C], 100h
mov	[esp+0B4h+var_78], ecx
mov	[esp+0B4h+var_70], ebx
lea	eax, [esp+0B4h+var_A2]
test	ebp, ebp
jnz	short loc_10014539
lea	eax, [esp+0B4h+var_A1]
mov	[esp+0B4h+var_6C], eax
mov	[esp+0B4h+var_68], ebx
lea	esi, [esp+0B4h+var_64]
test	ebp, ebp
jz	short loc_10014576
mov	eax, edi
call	sub_100143E0
mov	[esp+0B4h+var_9C], eax
test	eax, eax
jz	loc_10014888
mov	[esp+0B4h+var_64], 102h
mov	edx, [eax+4]
mov	[esp+0B4h+var_60], edx
mov	eax, [eax+8]
mov	[esp+0B4h+var_5C], eax
lea	esi, [esp+0B4h+var_58]
mov	eax, [edi+4]
dec	eax
cmp	eax, 5		
ja	loc_10014876	
jmp	ds:off_100148B0[eax*4] 
			
mov	dword ptr [esi], 106h 
mov	[esi+8], ebx
lea	ecx, [esp+0B4h+var_A2]
mov	[esi+4], ecx
mov	dword ptr [esi+0Ch], 104h
mov	[esi+14h], ebx
mov	edx, ecx
mov	[esi+10h], edx
mov	edx, [edi+1Ch]
mov	dword ptr [esi+18h], 10Ah
mov	[esi+20h], ebx
mov	eax, ecx
mov	ecx, [edi+18h]
mov	[esi+1Ch], eax
mov	eax, [edi+24h]
mov	[esi+28h], ecx
mov	ecx, [edi+28h]
mov	dword ptr [esi+24h], 120h
mov	[esi+2Ch], edx
lea	ebp, [esi+24h]
mov	dword ptr [esi+30h], 122h
mov	[esi+34h], eax
mov	[esi+38h], ecx
mov	[esp+0B4h+var_A0], 0
add	esi, 3Ch
jmp	loc_100147D4
			
mov	eax, [edi+18h]	
mov	ecx, [edi+1Ch]
mov	dword ptr [esi], 10Ah
mov	[esi+8], ebx
lea	edx, [esp+0B4h+var_A2]
mov	[esi+4], edx
mov	edx, [edi+24h]
mov	[esi+10h], eax
mov	eax, [edi+28h]
mov	[esi+14h], ecx
mov	ecx, [edi+30h]
mov	dword ptr [esi+0Ch], 130h
mov	[esi+1Ch], edx
mov	edx, [edi+34h]
mov	[esi+20h], eax
mov	eax, [edi+3Ch]
mov	dword ptr [esi+18h], 131h
mov	[esi+28h], ecx
mov	ecx, [edi+40h]
mov	dword ptr [esi+24h], 132h
mov	[esi+2Ch], edx
lea	ebp, [esi+0Ch]
mov	dword ptr [esi+30h], 11h
mov	[esi+34h], eax
mov	[esi+38h], ecx
mov	[esp+0B4h+var_A0], ebx
add	esi, 3Ch
jmp	loc_100147D4
			
mov	eax, [edi+64h]	
mov	ecx, [edi+68h]
mov	dword ptr [esi], 10Ah
mov	[esi+8], ebx
lea	edx, [esp+0B4h+var_A2]
mov	[esi+4], edx
mov	edx, [edi+70h]
mov	[esi+10h], eax
mov	eax, [edi+74h]
mov	[esi+14h], ecx
mov	ecx, [edi+7Ch]
mov	dword ptr [esi+0Ch], 130h
mov	[esi+1Ch], edx
mov	edx, [edi+80h]
mov	[esi+20h], eax
mov	eax, [edi+54h]
mov	dword ptr [esi+18h], 131h
mov	[esi+28h], ecx
mov	ecx, [edi+58h]
mov	dword ptr [esi+24h], 132h
mov	[esi+2Ch], edx
lea	ebp, [esi+0Ch]
mov	dword ptr [esi+30h], 11h
mov	[esi+34h], eax
mov	[esi+38h], ecx
mov	[esp+0B4h+var_A0], ebx
add	esi, 3Ch
jmp	loc_100147D4
			
mov	eax, [edi+18h]	
mov	ecx, [edi+1Ch]
mov	dword ptr [esi], 10Ch
mov	[esi+8], ebx
lea	edx, [esp+0B4h+var_A2]
mov	[esi+4], edx
mov	edx, [edi+24h]
mov	[esi+10h], eax
mov	eax, [edi+28h]
mov	[esi+14h], ecx
mov	ecx, [edi+30h]
mov	dword ptr [esi+0Ch], 130h
mov	[esi+1Ch], edx
mov	edx, [edi+34h]
mov	dword ptr [esi+18h], 132h
mov	[esi+20h], eax
mov	[esp+0B4h+var_A0], 2
lea	ebp, [esi+0Ch]
mov	dword ptr [esi+24h], 11h
mov	[esi+28h], ecx
jmp	loc_100147CE
			
mov	edx, [edi+14h]	
mov	dword ptr [esi], 10Ah
mov	[esi+8], ebx
lea	eax, [esp+0B4h+var_A2]
mov	[esi+4], eax
mov	ecx, eax
mov	eax, [edi+18h]
mov	dword ptr [esi+0Ch], 10Ch
mov	[esi+10h], ecx
mov	[esi+14h], ebx
push	offset aNss_use_decode 
mov	[esp+0B8h+var_A0], 3
lea	ebp, [esi+18h]
mov	dword ptr [esi+18h], 180h
mov	[esi+1Ch], edx
mov	[esi+20h], eax
call	ds:PR_GetEnv
add	esp, 4
test	eax, eax
jz	short loc_10014781
mov	ecx, [edi+24h]
mov	edx, [edi+28h]
mov	dword ptr [esi+24h], 181h
mov	[esi+28h], ecx
jmp	short loc_100147CE
push	0
push	0
call	NSS_Get_SEC_OctetStringTemplate_Util
push	eax
lea	eax, [edi+20h]
push	eax
push	0
push	0
call	SEC_ASN1EncodeItem_Util
add	esp, 18h
mov	[esp+0B4h+var_98], eax
test	eax, eax
jnz	short loc_100147BE
mov	eax, [esp+0B4h+var_9C]
test	eax, eax
jz	loc_10014895
push	ebx
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
jmp	loc_10014895
mov	dword ptr [esi+24h], 181h
mov	ecx, [eax+4]
mov	[esi+28h], ecx
mov	edx, [eax+8]
			
mov	[esi+2Ch], edx
add	esi, 30h
			
mov	ecx, esi
lea	eax, [esp+0B4h+var_88]
sub	ecx, eax
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	ebx, edx
sub	esi, ebp
shr	ebx, 1Fh
add	ebx, edx
mov	eax, 2AAAAAABh
imul	esi
sar	edx, 1
mov	esi, edx
shr	esi, 1Fh
add	esi, edx
jz	short loc_1001480F
push	ebp
call	sub_1002A670
add	esp, 4
add	ebp, 0Ch
dec	esi
jnz	short loc_10014800
mov	edx, [esp+0B4h+arg_8]
lea	ecx, [esp+0B4h+var_94]
push	ecx
push	edx
push	ebx
mov	ebx, [esp+0C0h+var_8C]
lea	eax, [esp+0C0h+var_88]
push	eax
push	0
push	ebx
call	sub_1002A750
mov	esi, eax
mov	eax, [esp+0CCh+var_9C]
add	esp, 18h
test	eax, eax
jz	short loc_10014846
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+0B4h+var_98]
test	eax, eax
jz	short loc_10014859
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
test	esi, esi
jnz	short loc_10014895
mov	ecx, [esp+0B4h+var_94]
push	ebx
mov	[edi+0Ch], ecx
call	PK11_ReferenceSlot
mov	[edi+8], eax
mov	eax, [esp+0B8h+var_94]
add	esp, 4
jmp	short loc_10014897
			
			
mov	eax, [esp+0B4h+var_9C] 
test	eax, eax
jz	short loc_10014888
push	ebx
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
			
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
			
xor	eax, eax
mov	ecx, [esp+0B4h+var_4]
pop	esi
pop	edi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A4h
retn
dd offset loc_100145F1	
dd offset loc_1001465C
dd offset loc_100146CA
dd offset loc_10014876
dd offset loc_10014720
align 10h
			
sub	esp, 11Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+11Ch+var_4], eax
mov	eax, [esp+11Ch+arg_0]
mov	[esp+11Ch+var_10C], ecx
mov	ecx, [esp+11Ch+arg_8]
push	ebx
xor	ebx, ebx
mov	[esp+120h+var_104], eax
mov	eax, ecx
push	ebp
mov	ebp, [esp+124h+arg_4]
and	eax, 1
push	ecx
mov	[esp+128h+var_114], ebp
mov	[esp+128h+var_100], ebx
mov	[esp+128h+var_FC], ebx
mov	[esp+128h+var_F8], ebx
mov	[esp+128h+var_F4], 100h
mov	[esp+128h+var_F0], ebx
mov	[esp+128h+var_EC], ebx
mov	[esp+128h+var_E8], 102h
mov	[esp+128h+var_E4], ebx
mov	[esp+128h+var_E0], ebx
mov	[esp+128h+var_DC], 120h
mov	[esp+128h+var_D8], ebx
mov	[esp+128h+var_D4], ebx
mov	[esp+128h+var_D0], 123h
mov	[esp+128h+var_CC], ebx
mov	[esp+128h+var_C8], ebx
mov	[esp+128h+var_C4], 122h
mov	[esp+128h+var_C0], ebx
mov	[esp+128h+var_BC], ebx
mov	[esp+128h+var_B8], 124h
mov	[esp+128h+var_B4], ebx
mov	[esp+128h+var_B0], ebx
mov	[esp+128h+var_AC], 125h
mov	[esp+128h+var_A8], ebx
mov	[esp+128h+var_A4], ebx
mov	[esp+128h+var_A0], 126h
mov	[esp+128h+var_9C], ebx
mov	[esp+128h+var_98], ebx
mov	[esp+128h+var_94], 127h
mov	[esp+128h+var_90], ebx
mov	[esp+128h+var_8C], ebx
mov	[esp+128h+var_88], 128h
mov	[esp+128h+var_84], ebx
mov	[esp+128h+var_80], ebx
mov	[esp+128h+var_7C], 105h
mov	[esp+128h+var_78], ebx
mov	[esp+128h+var_74], ebx
mov	[esp+128h+var_70], 10Ch
mov	[esp+128h+var_6C], ebx
mov	[esp+128h+var_68], ebx
mov	[esp+128h+var_64], 108h
mov	[esp+128h+var_60], ebx
mov	[esp+128h+var_5C], ebx
mov	[esp+128h+var_58], 109h
mov	[esp+128h+var_54], ebx
mov	[esp+128h+var_50], ebx
mov	[esp+128h+var_4C], 107h
mov	[esp+128h+var_48], ebx
mov	[esp+128h+var_44], ebx
mov	[esp+128h+var_40], 1
mov	[esp+128h+var_3C], ebx
mov	[esp+128h+var_38], ebx
mov	[esp+128h+var_34], 2
mov	[esp+128h+var_30], ebx
mov	[esp+128h+var_2C], ebx
mov	[esp+128h+var_28], 170h
mov	[esp+128h+var_24], ebx
mov	[esp+128h+var_20], ebx
mov	[esp+128h+var_1C], 103h
mov	[esp+128h+var_18], ebx
mov	[esp+128h+var_14], ebx
mov	[esp+128h+var_10], 162h
mov	[esp+128h+var_C], ebx
mov	[esp+128h+var_8], ebx
mov	[esp+128h+var_11A], 1
mov	[esp+128h+var_119], bl
mov	[esp+128h+var_110], eax
call	sub_1002A880
add	esp, 4
test	eax, eax
jz	short loc_10014B15
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+11Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 11Ch
retn
push	edi
xor	edi, edi
lea	eax, [esp+128h+var_100]
push	esi
lea	ecx, [ecx+0]
cmp	dword ptr [eax], 120h
jz	short loc_10014B45
inc	edi
add	eax, 0Ch
cmp	edi, 15h
jl	short loc_10014B20
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
jmp	loc_10014D20
lea	esi, [edi+edi*2]
lea	esi, [esp+esi*4+12Ch+var_100]
cmp	esi, ebx
jz	loc_10014C56	
mov	eax, [ebp+4]
dec	eax
cmp	eax, 5		
ja	loc_10014C56	
jmp	ds:off_10014D3C[eax*4] 
			
lea	edx, [esp+12Ch+var_100]	
mov	ecx, esi
sub	ecx, edx
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
mov	edi, 10h
add	eax, edx
mov	ebp, edi
sub	ebp, eax
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+12Ch+var_118], eax
cmp	eax, ebx
jz	short loc_10014BDC
push	edi
lea	ecx, [esp+130h+var_100]
push	ecx
mov	ecx, [esp+134h+var_114]
mov	edx, [ecx+0Ch]
mov	ecx, [ecx+8]
push	edx
push	ecx
push	eax
call	sub_1002A310
add	esp, 14h
cmp	eax, ebx
jz	loc_10014C6A
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	edx, [esp+134h+var_118]
push	1
push	edx
call	PORT_FreeArena_Util
add	esp, 10h
			
xor	eax, eax
jmp	loc_10014D20
			
mov	dword ptr [esi], 130h 
mov	dword ptr [esi+0Ch], 131h
mov	dword ptr [esi+18h], 132h
mov	dword ptr [esi+24h], 11h
mov	dword ptr [esi+30h], 108h
add	edi, 5
mov	ebp, 5
jmp	short loc_10014C4E
			
mov	dword ptr [esi], 130h 
mov	dword ptr [esi+0Ch], 132h
mov	dword ptr [esi+18h], 11h
mov	dword ptr [esi+24h], 10Ch
jmp	short loc_10014C47
			
mov	dword ptr [esi], 180h 
mov	dword ptr [esi+0Ch], 11h
mov	dword ptr [esi+18h], 10Ch
mov	dword ptr [esi+24h], 108h
mov	ebp, 4
add	edi, ebp
cmp	edi, ebx
jnz	loc_10014B89
			
push	0FFFFE001h	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
jmp	loc_10014D20
lea	eax, [esp+12Ch+var_119]
push	eax
lea	ecx, [esp+130h+var_11A]
push	ecx
mov	ecx, [esp+134h+arg_8]
lea	edx, [edi+edi*2]
lea	eax, [esp+edx*4+134h+var_100]
push	eax
push	ecx
call	sub_1002A8A0
add	esp, 10h
add	edi, eax
cmp	ebp, ebx
jz	short loc_10014CA1
push	esi
call	sub_1002A670
add	esp, 4
add	esi, 0Ch
dec	ebp
jnz	short loc_10014C92
mov	ebp, [esp+12Ch+var_110]
lea	edx, [esp+12Ch+var_108]
push	edx
push	ebp
push	edi
mov	edi, [esp+138h+var_104]
lea	eax, [esp+138h+var_100]
push	eax
push	ebx
push	edi
call	sub_1002A750
mov	ecx, [esp+144h+var_118]
push	1
push	ecx
mov	esi, eax
call	PORT_FreeArena_Util
add	esp, 20h
cmp	esi, ebx
jnz	loc_10014BDC
mov	esi, [esp+12Ch+var_10C]
cmp	esi, ebx
jz	short loc_10014CFE
push	ebp
push	esi
push	edi
call	PK11_ImportPublicKey
mov	eax, [esi+8]
add	esp, 0Ch
cmp	eax, ebx
jz	short loc_10014CFE
push	eax
call	PK11_FreeSlot
add	esp, 4
mov	[esi+8], ebx
mov	[esi+0Ch], ebx
			
mov	eax, [esp+12Ch+var_114]
mov	edx, [eax+14h]
mov	ecx, [esp+12Ch+var_108]
mov	eax, [eax+4]
push	edx
xor	edx, edx
cmp	ebp, ebx
setz	dl
push	ecx
push	edx
push	eax
push	edi
call	sub_10012FF0
add	esp, 14h
			
mov	ecx, [esp+12Ch+var_4]
pop	esi
pop	edi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 11Ch
retn
align 4
dd offset loc_10014BE3	
dd offset loc_10014C56
dd offset loc_10014C0F
dd offset loc_10014C56
dd offset loc_10014C2C
align 10h
public PK11_LoadPrivKey
			
			
mov	eax, [esp+arg_C]
neg	eax
sbb	eax, eax
and	eax, 0FFFFFFFBh
add	eax, 0Ah
cmp	[esp+arg_10], 0
jz	short loc_10014D7A
or	eax, 40h
jmp	short loc_10014D7F
or	eax, 80h
mov	ecx, [esp+arg_0]
push	eax
mov	eax, [esp+4+arg_4]
push	eax
push	ecx
mov	ecx, [esp+0Ch+arg_8]
call	sub_100148D0
add	esp, 0Ch
retn
align 10h
public PK11_GenerateKeyPairWithOpFlags
			
sub	esp, 294h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+294h+var_4], eax
mov	eax, [esp+294h+arg_0]
mov	ecx, [esp+294h+arg_C]
mov	edx, [esp+294h+arg_1C]
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+29Ch+arg_4]
push	esi
mov	esi, [esp+2A0h+arg_8]
mov	[esp+2A0h+var_290], eax
mov	[esp+2A0h+var_27C], ecx
mov	[esp+2A0h+var_264], edx
mov	edx, 1
mov	ecx, 10Ch
mov	eax, 170h
push	edi
mov	edi, [esp+2A4h+arg_10]
mov	[esp+2A4h+var_292], bl
mov	[esp+2A4h+var_291], 1
mov	[esp+2A4h+var_70], 103h
mov	[esp+2A4h+var_6C], ebx
mov	[esp+2A4h+var_68], ebx
mov	[esp+2A4h+var_64], edx
mov	[esp+2A4h+var_60], ebx
mov	[esp+2A4h+var_5C], ebx
mov	[esp+2A4h+var_58], 2
mov	[esp+2A4h+var_54], ebx
mov	[esp+2A4h+var_50], ebx
mov	[esp+2A4h+var_4C], ecx
mov	[esp+2A4h+var_48], ebx
mov	[esp+2A4h+var_44], ebx
mov	[esp+2A4h+var_40], 107h
mov	[esp+2A4h+var_3C], ebx
mov	[esp+2A4h+var_38], ebx
mov	[esp+2A4h+var_34], 108h
mov	[esp+2A4h+var_30], ebx
mov	[esp+2A4h+var_2C], ebx
mov	[esp+2A4h+var_28], 105h
mov	[esp+2A4h+var_24], ebx
mov	[esp+2A4h+var_20], ebx
mov	[esp+2A4h+var_1C], 162h
mov	[esp+2A4h+var_18], ebx
mov	[esp+2A4h+var_14], ebx
mov	[esp+2A4h+var_10], eax
mov	[esp+2A4h+var_C], ebx
mov	[esp+2A4h+var_8], ebx
mov	[esp+2A4h+var_1A8], 121h
mov	[esp+2A4h+var_1A4], ebx
mov	[esp+2A4h+var_1A0], ebx
mov	[esp+2A4h+var_19C], 122h
mov	[esp+2A4h+var_198], ebx
mov	[esp+2A4h+var_194], ebx
mov	[esp+2A4h+var_190], edx
mov	[esp+2A4h+var_18C], ebx
mov	[esp+2A4h+var_188], ebx
mov	[esp+2A4h+var_184], ecx
mov	[esp+2A4h+var_180], ebx
mov	[esp+2A4h+var_17C], ebx
mov	[esp+2A4h+var_178], 106h
mov	[esp+2A4h+var_174], ebx
mov	[esp+2A4h+var_170], ebx
mov	[esp+2A4h+var_16C], 10Ah
mov	[esp+2A4h+var_168], ebx
mov	[esp+2A4h+var_164], ebx
mov	[esp+2A4h+var_160], 10Bh
mov	[esp+2A4h+var_15C], ebx
mov	[esp+2A4h+var_158], ebx
mov	[esp+2A4h+var_154], 104h
mov	[esp+2A4h+var_150], ebx
mov	[esp+2A4h+var_14C], ebx
mov	[esp+2A4h+var_148], eax
mov	[esp+2A4h+var_144], ebx
mov	[esp+2A4h+var_140], ebx
mov	[esp+2A4h+var_220], 130h
mov	[esp+2A4h+var_21C], ebx
mov	[esp+2A4h+var_218], ebx
mov	[esp+2A4h+var_214], 131h
mov	[esp+2A4h+var_210], ebx
mov	[esp+2A4h+var_20C], ebx
mov	[esp+2A4h+var_208], 132h
mov	[esp+2A4h+var_204], ebx
mov	[esp+2A4h+var_1B4], eax
mov	[esp+2A4h+var_DC], eax
mov	[esp+2A4h+var_7C], eax
mov	eax, edi
and	eax, edx
mov	[esp+2A4h+var_268], eax
mov	eax, edi
and	eax, 33h
push	edi
mov	[esp+2A8h+var_200], ebx
mov	[esp+2A8h+var_1FC], edx
mov	[esp+2A8h+var_1F8], ebx
mov	[esp+2A8h+var_1F4], ebx
mov	[esp+2A8h+var_1F0], ecx
mov	[esp+2A8h+var_1EC], ebx
mov	[esp+2A8h+var_1E8], ebx
mov	[esp+2A8h+var_1E4], 106h
mov	[esp+2A8h+var_1E0], ebx
mov	[esp+2A8h+var_1DC], ebx
mov	[esp+2A8h+var_1D8], 10Ah
mov	[esp+2A8h+var_1D4], ebx
mov	[esp+2A8h+var_1D0], ebx
mov	[esp+2A8h+var_1CC], 10Bh
mov	[esp+2A8h+var_1C8], ebx
mov	[esp+2A8h+var_1C4], ebx
mov	[esp+2A8h+var_1C0], 104h
mov	[esp+2A8h+var_1BC], ebx
mov	[esp+2A8h+var_1B8], ebx
mov	[esp+2A8h+var_1B0], ebx
mov	[esp+2A8h+var_1AC], ebx
mov	[esp+2A8h+var_13C], 130h
mov	[esp+2A8h+var_138], ebx
mov	[esp+2A8h+var_134], ebx
mov	[esp+2A8h+var_130], 132h
mov	[esp+2A8h+var_12C], ebx
mov	[esp+2A8h+var_128], ebx
mov	[esp+2A8h+var_124], edx
mov	[esp+2A8h+var_120], ebx
mov	[esp+2A8h+var_11C], ebx
mov	[esp+2A8h+var_118], ecx
mov	[esp+2A8h+var_114], ebx
mov	[esp+2A8h+var_110], ebx
mov	[esp+2A8h+var_10C], 106h
mov	[esp+2A8h+var_108], ebx
mov	[esp+2A8h+var_104], ebx
mov	[esp+2A8h+var_100], 10Ah
mov	[esp+2A8h+var_FC], ebx
mov	[esp+2A8h+var_F8], ebx
mov	[esp+2A8h+var_F4], 10Bh
mov	[esp+2A8h+var_F0], ebx
mov	[esp+2A8h+var_EC], ebx
mov	[esp+2A8h+var_E8], 104h
mov	[esp+2A8h+var_E4], ebx
mov	[esp+2A8h+var_E0], ebx
mov	[esp+2A8h+var_D8], ebx
mov	[esp+2A8h+var_D4], ebx
mov	[esp+2A8h+var_D0], 180h
mov	[esp+2A8h+var_CC], ebx
mov	[esp+2A8h+var_C8], ebx
mov	[esp+2A8h+var_C4], edx
mov	[esp+2A8h+var_C0], ebx
mov	[esp+2A8h+var_BC], ebx
mov	[esp+2A8h+var_B8], ecx
mov	[esp+2A8h+var_B4], ebx
mov	[esp+2A8h+var_B0], ebx
mov	[esp+2A8h+var_AC], 106h
mov	[esp+2A8h+var_A8], ebx
mov	[esp+2A8h+var_A4], ebx
mov	[esp+2A8h+var_A0], 10Ah
mov	[esp+2A8h+var_9C], ebx
mov	[esp+2A8h+var_98], ebx
mov	[esp+2A8h+var_94], 10Bh
mov	[esp+2A8h+var_90], ebx
mov	[esp+2A8h+var_8C], ebx
mov	[esp+2A8h+var_88], 104h
mov	[esp+2A8h+var_84], ebx
mov	[esp+2A8h+var_80], ebx
mov	[esp+2A8h+var_78], ebx
mov	[esp+2A8h+var_74], ebx
mov	[esp+2A8h+var_274], eax
call	sub_1002A880
add	esp, 4
test	eax, eax
jz	short loc_10015261
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10015AE4
cmp	esi, ebx
jz	short loc_1001524F
mov	eax, [esp+2A4h+arg_18]
and	[esp+2A4h+arg_14], eax
cmp	[esp+2A4h+var_290], ebx
jnz	short loc_1001528B
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10015AE4
mov	ecx, [esp+2A4h+var_290]
push	ebp
push	ecx
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jnz	loc_1001533A
call	PK11_GetInternalSlot
mov	[esp+2A4h+var_28C], eax
cmp	[esp+2A4h+var_290], eax
jnz	short loc_100152CA
mov	edx, eax
push	edx
call	PK11_FreeSlot
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 8
jmp	loc_10015AE4
cmp	eax, ebx
jz	short loc_10015279
mov	eax, [esp+2A4h+var_264]
mov	ecx, [esp+2A4h+var_27C]
mov	edx, [esp+2A4h+var_28C]
push	eax
push	ebx
push	ebx
push	8Ah
push	ecx
push	esi
push	ebp
push	edx
call	PK11_GenerateKeyPairWithOpFlags
mov	esi, eax
mov	eax, [esp+2C4h+var_28C]
push	eax
call	PK11_FreeSlot
add	esp, 24h
cmp	esi, ebx
jz	loc_10015AE4
mov	ecx, [esp+2A4h+var_290]
mov	ebp, [esp+2A4h+var_27C]
push	edi
push	esi
push	ecx
mov	ecx, [ebp+0]
call	sub_100148D0
push	esi
mov	edi, eax
call	SECKEY_DestroyPrivateKey
add	esp, 10h
cmp	edi, ebx
jnz	short loc_10015333
mov	edx, [ebp+0]
push	edx
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	[ebp+0], ebx
mov	eax, edi
jmp	loc_10015AE6
lea	eax, [esp+2A4h+var_292]
push	eax
lea	ecx, [esp+2A8h+var_291]
push	ecx
lea	edx, [esp+2ACh+var_70]
push	edx
push	edi
mov	[esp+2B4h+var_244], ebp
mov	[esp+2B4h+var_240], ebx
mov	[esp+2B4h+var_23C], ebx
mov	[esp+2B4h+var_260], 0FFFFFFFFh
call	sub_1002A8A0
add	esp, 10h
lea	edi, [eax+eax*2]
lea	edi, [esp+edi*4+2A4h+var_70]
cmp	ebp, 10h
ja	loc_100154D2
jz	loc_1001544D
cmp	ebp, ebx
jz	short loc_1001538F
cmp	ebp, 0Ah
jnz	loc_100154E3
mov	ecx, [esi+4]
cmp	ecx, ebx
jz	loc_1001524F
mov	eax, [esi]
mov	[esp+2A4h+var_254], eax
xor	eax, eax
test	ecx, 0FF000000h
jz	short loc_100153BA
mov	edx, ecx
shr	edx, 18h
mov	[esp+2A4h+var_278], dl
mov	eax, 1
jmp	short loc_100153C2
test	ecx, 0FF0000h
jz	short loc_100153CE
mov	edx, ecx
shr	edx, 10h
inc	eax
mov	byte ptr [esp+eax+2A4h+var_27C+3], dl
jnz	short loc_100153D6
test	ecx, 0FF00h
jz	short loc_100153E2
mov	edx, ecx
shr	edx, 8
inc	eax
mov	byte ptr [esp+eax+2A4h+var_27C+3], dl
jnz	short loc_100153E6
cmp	cl, bl
jz	short loc_100153EB
mov	[esp+eax+2A4h+var_278],	cl
inc	eax
lea	ecx, [esp+2A4h+var_254]
mov	[esp+2A4h+var_1A4], ecx
mov	[esp+2A4h+var_194], eax
lea	edx, [esp+2A4h+var_278]
lea	eax, [esp+2A4h+var_190]
lea	ecx, [esp+2A4h+var_1A8]
mov	esi, 1
mov	[esp+2A4h+var_1A8], 121h
mov	[esp+2A4h+var_1A0], 4
mov	[esp+2A4h+var_19C], 122h
mov	[esp+2A4h+var_198], edx
mov	[esp+2A4h+var_288], eax
mov	[esp+2A4h+var_270], ecx
mov	[esp+2A4h+var_28C], esi
jmp	loc_100155E0
mov	edx, [esi+8]
mov	eax, [esi+0Ch]
mov	ecx, [esi+14h]
mov	[esp+2A4h+var_21C], edx
mov	edx, [esi+18h]
mov	[esp+2A4h+var_218], eax
mov	eax, [esi+20h]
mov	[esp+2A4h+var_210], ecx
mov	ecx, [esi+24h]
mov	[esp+2A4h+var_20C], edx
mov	[esp+2A4h+var_204], eax
lea	edx, [esp+2A4h+var_1FC]
lea	eax, [esp+2A4h+var_220]
mov	[esp+2A4h+var_220], 130h
mov	[esp+2A4h+var_214], 131h
mov	[esp+2A4h+var_208], 132h
mov	[esp+2A4h+var_200], ecx
mov	[esp+2A4h+var_288], edx
mov	[esp+2A4h+var_270], eax
mov	[esp+2A4h+var_28C], 2
mov	esi, 11h
jmp	loc_100155E0
cmp	ebp, 20h
jz	loc_1001557F
cmp	ebp, 1040h
jz	short loc_100154F5
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10015AE4
mov	edx, [esi+8]
mov	ecx, [esi+4]
lea	eax, [esp+2A4h+var_C4]
mov	[esp+2A4h+var_288], eax
mov	eax, [esp+2A4h+arg_14]
mov	[esp+2A4h+var_C8], edx
mov	edx, eax
mov	[esp+2A4h+var_CC], ecx
and	edx, 80800h
lea	ecx, [esp+2A4h+var_D0]
mov	[esp+2A4h+var_D0], 180h
mov	[esp+2A4h+var_270], ecx
mov	[esp+2A4h+var_28C], 6
cmp	edx, 80800h
jnz	short loc_1001555B
mov	esi, 1050h
mov	[esp+2A4h+var_260], 1041h
jmp	loc_100155E0
test	eax, 800h
jz	short loc_10015569
mov	esi, 1041h
jmp	short loc_100155E0
mov	esi, 1050h
test	eax, 80000h
jnz	short loc_100155E0
mov	[esp+2A4h+var_260], 1041h
jmp	short loc_100155E0
mov	eax, [esi+8]
mov	ecx, [esi+0Ch]
mov	edx, [esi+14h]
mov	[esp+2A4h+var_138], eax
mov	eax, [esi+18h]
mov	[esp+2A4h+var_134], ecx
mov	[esp+2A4h+var_12C], edx
lea	ecx, [esp+2A4h+var_124]
lea	edx, [esp+2A4h+var_13C]
mov	[esp+2A4h+var_13C], 130h
mov	[esp+2A4h+var_130], 132h
mov	[esp+2A4h+var_128], eax
mov	[esp+2A4h+var_288], ecx
mov	[esp+2A4h+var_270], edx
mov	[esp+2A4h+var_28C], 4
mov	esi, 21h
			
mov	ebp, [esp+2A4h+var_290]
cmp	[ebp+30h], ebx
jnz	short loc_100155F2
push	ebp
call	sub_10035650
add	esp, 4
mov	eax, [ebp+0]
mov	edx, [ebp+40h]
mov	eax, [eax+22h]
lea	ecx, [esp+2A4h+var_238]
push	ecx
push	esi
push	edx
call	eax
add	esp, 0Ch
cmp	[esp+2A4h+var_260], 0FFFFFFFFh
mov	[esp+2A4h+var_290], eax
jz	short loc_1001564C
cmp	eax, ebx
jz	short loc_1001561A
mov	[esp+2A4h+var_230], ebx
mov	eax, [esp+2A4h+var_260]
mov	ecx, [ebp+0]
lea	edx, [esp+2A4h+var_22C]
push	edx
mov	edx, [ebp+40h]
push	eax
mov	eax, [ecx+22h]
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001564C
mov	ecx, [esp+2A4h+var_230]
or	ecx, [esp+2A4h+var_224]
mov	[esp+2A4h+var_290], ebx
mov	[esp+2A4h+var_230], ecx
jmp	short loc_10015650
			
mov	ecx, [esp+2A4h+var_230]
cmp	[ebp+30h], ebx
jnz	short loc_10015662
push	ebp
call	sub_10035670
mov	ecx, [esp+2A8h+var_230]
add	esp, 4
cmp	[esp+2A4h+var_290], ebx
jnz	short loc_1001566C
cmp	ecx, ebx
jnz	short loc_1001568C
cmp	esi, 21h
ja	loc_1001581C
jz	loc_10015812
dec	esi
jz	loc_10015808
sub	esi, 10h
jnz	short loc_1001568C
mov	ecx, 2800h
			
mov	eax, [esp+2A4h+arg_18]
mov	esi, [esp+2A4h+var_288]
not	eax
and	eax, ecx
or	eax, [esp+2A4h+arg_14]
lea	ecx, [esp+2A4h+var_292]
push	ecx
lea	edx, [esp+2A8h+var_291]
push	edx
mov	[esp+2ACh+var_230], eax
mov	eax, [esp+2ACh+var_274]
push	esi
push	eax
call	sub_1002A8A0
lea	ecx, [eax+eax*2]
lea	esi, [esi+ecx*4]
add	esp, 10h
mov	dword ptr [esi], 10Ch
test	[esp+2A4h+var_230], 80000h
lea	eax, [esp+2A4h+var_291]
jnz	short loc_100156DC
lea	eax, [esp+2A4h+var_292]
mov	[esi+4], eax
mov	eax, 1
mov	[esi+8], eax
mov	dword ptr [esi+0Ch], 106h
test	[esp+2A4h+var_230], 20000h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_10015700
lea	ecx, [esp+2A4h+var_292]
mov	[esi+10h], ecx
mov	[esi+14h], eax
mov	dword ptr [esi+18h], 10Ah
test	[esp+2A4h+var_230], 2000h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_1001571F
lea	ecx, [esp+2A4h+var_292]
mov	[esi+1Ch], ecx
mov	[esi+20h], eax
mov	dword ptr [esi+24h], 10Bh
test	[esp+2A4h+var_230], 4000h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_1001573E
lea	ecx, [esp+2A4h+var_292]
mov	[esi+28h], ecx
mov	[esi+2Ch], eax
mov	dword ptr [esi+30h], 104h
test	[esp+2A4h+var_230], 100h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_1001575D
lea	ecx, [esp+2A4h+var_292]
mov	[esi+34h], ecx
mov	[esi+38h], eax
add	esi, 3Ch
mov	dword ptr [edi], 10Ch
test	[esp+2A4h+var_230], 80000h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_1001577E
lea	ecx, [esp+2A4h+var_292]
mov	[edi+4], ecx
mov	[edi+8], eax
mov	dword ptr [edi+0Ch], 107h
test	[esp+2A4h+var_230], 40000h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_1001579D
lea	ecx, [esp+2A4h+var_292]
mov	[edi+10h], ecx
mov	[edi+14h], eax
mov	dword ptr [edi+18h], 108h
test	[esp+2A4h+var_230], 800h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_100157BC
lea	ecx, [esp+2A4h+var_292]
mov	[edi+1Ch], ecx
mov	[edi+20h], eax
mov	dword ptr [edi+24h], 105h
test	[esp+2A4h+var_230], 200h
lea	ecx, [esp+2A4h+var_291]
jnz	short loc_100157DB
lea	ecx, [esp+2A4h+var_292]
mov	[edi+28h], ecx
mov	[edi+2Ch], eax
add	edi, 30h
cmp	[esp+2A4h+var_268], ebx
jz	short loc_1001584E
push	ebp
call	sub_10035690
push	eax
push	ebp
mov	[esp+2B0h+var_290], eax
call	sub_10035730
add	esp, 0Ch
mov	[esp+2A4h+var_288], 1
jmp	short loc_1001586B
mov	ecx, 24B00h
jmp	loc_1001568C
mov	ecx, 80000h
jmp	loc_1001568C
sub	esi, 1041h
jz	loc_10015687
sub	esi, 0Fh
jnz	loc_1001568C
cmp	[esp+2A4h+var_260], 1041h
mov	ecx, 80000h
jnz	loc_1001568C
mov	ecx, 82800h
jmp	loc_1001568C
mov	ecx, [ebp+38h]
mov	[esp+2A4h+var_290], ecx
cmp	ecx, ebx
jz	short loc_10015867
push	ebp
call	sub_10035650
add	esp, 4
mov	eax, 1
mov	[esp+2A4h+var_288], ebx
mov	[esp+2A4h+var_274], eax
cmp	[esp+2A4h+var_290], ebx
jnz	short loc_10015887
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10015AE4
lea	edx, [esp+2A4h+var_280]
push	edx
lea	edx, [esp+2A8h+var_70]
sub	edi, edx
mov	eax, 2AAAAAABh
imul	edi
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
lea	ecx, [esp+2A8h+var_284]
push	ecx
push	eax
lea	ecx, [esp+2B0h+var_70]
push	ecx
mov	ecx, [esp+2B4h+var_270]
sub	esi, ecx
mov	eax, 2AAAAAABh
imul	esi
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
mov	edx, [esp+2B4h+var_290]
push	eax
mov	eax, [ebp+0]
mov	eax, [eax+0EEh]
push	ecx
lea	ecx, [esp+2BCh+var_244]
push	ecx
push	edx
call	eax
mov	esi, eax
add	esp, 20h
cmp	esi, ebx
jz	short loc_1001592E
cmp	[esp+2A4h+var_288], ebx
jz	short loc_10015911
mov	ecx, [esp+2A4h+var_290]
push	ecx
push	ebp
call	sub_10035750
add	esp, 8
push	esi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	loc_10015AE4
push	ebp
call	sub_10035670
add	esp, 4
push	esi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	loc_10015AE4
mov	esi, [esp+2A4h+var_274]
cmp	esi, ebx
jz	short loc_1001593F
push	ebp
call	sub_10035670
add	esp, 4
mov	edx, [esp+2A4h+var_284]
push	ebx
push	edx
push	ebp
call	sub_1002A210
add	esp, 0Ch
cmp	eax, 2
jz	short loc_10015963
mov	eax, [esp+2A4h+var_284]
mov	ecx, [esp+2A4h+var_280]
mov	[esp+2A4h+var_284], ecx
mov	[esp+2A4h+var_280], eax
mov	edx, [esp+2A4h+var_284]
mov	eax, [esp+2A4h+var_28C]
push	edx
push	eax
push	ebp
call	sub_10012B60
mov	ecx, [esp+2B0h+var_27C]
add	esp, 0Ch
mov	[ecx], eax
cmp	eax, ebx
jnz	short loc_100159BF
cmp	[esp+2A4h+var_288], ebx
jz	short loc_100159A1
cmp	esi, ebx
jz	short loc_10015993
push	ebp
call	sub_10035650
add	esp, 4
mov	edx, [esp+2A4h+var_290]
push	edx
push	ebp
call	sub_10035750
add	esp, 8
mov	eax, [esp+2A4h+var_284]
push	eax
push	ebp
call	PK11_DestroyObject
mov	ecx, [esp+2ACh+var_280]
push	ecx
push	ebp
call	PK11_DestroyObject
add	esp, 10h
jmp	loc_10015AE4
call	sub_100143E0
mov	edx, [esp+2A4h+var_284]
push	ebx
push	1
push	edx
push	ebp
mov	edi, eax
call	sub_1002A280
mov	[esp+2B4h+var_250], 102h
mov	ecx, [edi+4]
movzx	eax, al
mov	[esp+2B4h+var_24C], ecx
mov	edx, [edi+8]
add	esp, 10h
mov	[esp+2A4h+var_26C], eax
mov	[esp+2A4h+var_248], edx
cmp	esi, ebx
jz	short loc_10015A01
push	ebp
call	sub_10035650
add	esp, 4
mov	edx, [esp+2A4h+var_280]
mov	eax, [ebp+0]
push	1
lea	ecx, [esp+2A8h+var_250]
push	ecx
mov	ecx, [esp+2ACh+var_290]
push	edx
mov	edx, [eax+66h]
push	ecx
call	edx
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jnz	short loc_10015A47
cmp	[esp+2A4h+var_26C], ebx
jz	short loc_10015A47
mov	edx, [esp+2A4h+var_284]
mov	eax, [ebp+0]
push	1
lea	ecx, [esp+2A8h+var_250]
push	ecx
mov	ecx, [esp+2ACh+var_290]
push	edx
mov	edx, [eax+66h]
push	ecx
call	edx
add	esp, 10h
mov	esi, eax
			
cmp	[esp+2A4h+var_288], ebx
jz	short loc_10015A5D
mov	eax, [esp+2A4h+var_290]
push	eax
push	ebp
call	sub_10035750
add	esp, 8
jmp	short loc_10015A66
push	ebp
call	sub_10035670
add	esp, 4
push	1
push	edi
call	SECITEM_FreeItem_Util
add	esp, 8
cmp	esi, ebx
jz	short loc_10015AA2
mov	ecx, [esp+2A4h+var_284]
push	ecx
push	ebp
call	PK11_DestroyObject
mov	edx, [esp+2ACh+var_280]
push	edx
push	ebp
call	PK11_DestroyObject
push	esi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	eax, [esp+2BCh+var_27C]
add	esp, 18h
mov	[eax], ebx
jmp	short loc_10015AE4
mov	ecx, [esp+2A4h+var_264]
mov	edx, [esp+2A4h+var_280]
xor	eax, eax
cmp	[esp+2A4h+var_268], ebx
push	ecx
mov	ecx, [esp+2A8h+var_28C]
setz	al
push	edx
push	eax
push	ecx
push	ebp
call	sub_10012FF0
add	esp, 14h
cmp	eax, ebx
jnz	short loc_10015AE6
mov	esi, [esp+2A4h+var_27C]
mov	edx, [esi]
push	edx
call	SECKEY_DestroyPublicKey
mov	eax, [esp+2A8h+var_280]
push	eax
push	ebp
call	PK11_DestroyObject
add	esp, 0Ch
mov	[esi], ebx
			
xor	eax, eax
			
mov	ecx, [esp+2A4h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 294h
retn
align 10h
public PK11_GenerateKeyPairWithFlags
mov	eax, [esp+arg_14]
mov	ecx, [esp+arg_10]
mov	edx, [esp+arg_C]
push	eax
mov	eax, [esp+4+arg_8]
push	0
push	0
push	ecx
mov	ecx, [esp+10h+arg_4]
push	edx
mov	edx, [esp+14h+arg_0]
push	eax
push	ecx
push	edx
call	PK11_GenerateKeyPairWithOpFlags
add	esp, 20h
retn
align 10h
public PK11_GenerateKeyPair
			
mov	eax, [esp+arg_10]
neg	eax
sbb	eax, eax
add	eax, 2
cmp	[esp+arg_14], 0
jz	short loc_10015B47
or	eax, 44h
jmp	short loc_10015B4C
or	eax, 88h
mov	ecx, [esp+arg_18]
mov	edx, [esp+arg_C]
push	ecx
mov	ecx, [esp+4+arg_4]
push	0
push	0
push	eax
mov	eax, [esp+10h+arg_8]
push	edx
mov	edx, [esp+14h+arg_0]
push	eax
push	ecx
push	edx
call	PK11_GenerateKeyPairWithOpFlags
add	esp, 20h
retn
align 10h
public PK11_ImportEncryptedPrivateKeyInfo
			
mov	eax, [esp+arg_14]
test	eax, eax
jnz	short loc_10015B99
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+arg_24]
mov	edx, [esp+arg_20]
push	ecx
mov	ecx, [esp+4+arg_1C]
push	0
push	edx
mov	edx, [esp+0Ch+arg_18]
push	ecx
mov	ecx, [esp+10h+arg_C]
push	edx
mov	edx, [esp+14h+arg_8]
push	eax
mov	eax, [esp+18h+arg_10]
push	eax
mov	eax, [esp+1Ch+arg_4]
push	ecx
mov	ecx, [esp+20h+arg_0]
push	edx
push	eax
push	ecx
call	PK11_ImportEncryptedPrivateKeyInfoAndReturnKey
add	esp, 2Ch
retn
align 10h
public PK11_ExportEncryptedPrivKeyInfo
			
			
			
sub	esp, 20h
push	ebx
mov	ebx, [esp+24h+arg_8]
push	ebp
push	esi
push	edi
xor	edi, edi
xor	ebp, ebp
mov	[esp+30h+var_14], edi
mov	[esp+30h+var_20], edi
mov	[esp+30h+var_10], edi
cmp	ebx, edi
jz	loc_10015EA9
mov	esi, [esp+30h+arg_C]
cmp	esi, edi
jz	loc_10015EA9
mov	eax, [esp+30h+arg_10]
mov	edx, [esp+30h+arg_4]
push	eax
push	edi
push	edi
lea	ecx, [esp+3Ch+var_14]
push	ecx
push	edi
push	edi
push	edx
call	sub_1002E8B0
add	esp, 1Ch
mov	[esp+30h+var_1C], eax
test	eax, eax
jz	loc_10015EB6
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+30h+var_18], eax
test	eax, eax
jz	short loc_10015C5C
push	28h
push	eax
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_10015C64
or	esi, 0FFFFFFFFh
jmp	loc_10015E3D
mov	edi, [esp+30h+arg_0]
mov	eax, [esp+30h+var_18]
mov	[ebp+0], eax
test	edi, edi
jnz	short loc_10015C76
mov	edi, [esi+8]
mov	ecx, [esp+30h+var_14]
push	ecx
call	PK11_AlgtagToMechanism
mov	ecx, [esi+8]
add	esp, 4
cmp	edi, ecx
jz	short loc_10015C9B
push	eax
push	ecx
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jz	short loc_10015C9B
mov	edi, [esi+8]
			
mov	edx, [esp+30h+arg_14]
mov	eax, [esp+30h+var_1C]
push	edx
push	0
push	ebx
push	eax
push	edi
call	PK11_PBEKeyGen
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	short loc_10015CBF
or	esi, 0FFFFFFFFh
jmp	loc_10015E3D
mov	edx, [esp+30h+var_1C]
push	ebx
lea	ecx, [esp+34h+var_20]
push	ecx
push	edx
call	PK11_GetPBECryptoMechanism
add	esp, 0Ch
cmp	eax, 0FFFFFFFFh
jnz	short loc_10015CDE
or	esi, eax
jmp	loc_10015E3D
push	eax
call	PK11_GetPadMechanism
mov	[esp+34h+var_C], eax
mov	eax, [esp+34h+var_20]
xor	ecx, ecx
add	esp, 4
cmp	eax, ecx
jz	short loc_10015D05
mov	ecx, [eax+4]
mov	[esp+30h+var_8], ecx
mov	edx, [eax+8]
mov	[esp+30h+var_4], edx
jmp	short loc_10015D0D
mov	[esp+30h+var_8], ecx
mov	[esp+30h+var_4], ecx
mov	eax, [esi+8]
cmp	[edi+8], eax
jz	short loc_10015D5D
mov	ecx, [edi]
push	edi
push	106h
push	ecx
push	eax
call	sub_100321F0
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jnz	short loc_10015D52
mov	eax, [edi+8]
push	4Ah
push	esi
push	eax
xor	ecx, ecx
call	sub_100148D0
add	esp, 0Ch
mov	[esp+30h+var_10], eax
test	eax, eax
jnz	short loc_10015D4E
or	esi, 0FFFFFFFFh
jmp	loc_10015E3D
mov	esi, eax
jmp	short loc_10015D5D
push	edi
call	PK11_FreeSymKey
add	esp, 4
mov	edi, ebx
			
mov	[esp+30h+arg_8], 0
mov	edx, [esi+8]
push	edx
call	sub_10035650
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [eax+38h]
mov	ecx, [ecx+0F2h]
lea	edx, [esp+34h+arg_8]
push	edx
mov	edx, [esi+0Ch]
push	0
push	edx
mov	edx, [edi+4]
push	edx
lea	edx, [esp+44h+var_C]
push	edx
push	eax
call	ecx
mov	edx, [esi+8]
push	edx
mov	ebx, eax
call	sub_10035670
add	esp, 20h
test	ebx, ebx
jz	short loc_10015DAD
or	esi, 0FFFFFFFFh
jmp	loc_10015E3D
mov	eax, [esp+30h+arg_8]
mov	ecx, [esp+30h+var_18]
push	eax
push	ecx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[ebp+20h], eax
test	eax, eax
jnz	short loc_10015DCB
or	esi, 0FFFFFFFFh
jmp	short loc_10015E3D
mov	edx, [esi+8]
push	edx
call	sub_10035650
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [eax+38h]
mov	ecx, [ecx+0F2h]
lea	edx, [esp+34h+arg_8]
push	edx
mov	edx, [ebp+20h]
push	edx
mov	edx, [esi+0Ch]
push	edx
mov	edx, [edi+4]
push	edx
lea	edx, [esp+44h+var_C]
push	edx
push	eax
call	ecx
mov	edx, [esi+8]
push	edx
mov	ebx, eax
call	sub_10035670
mov	eax, [esp+50h+arg_8]
add	esp, 20h
mov	[ebp+24h], eax
test	ebx, ebx
jz	short loc_10015E19
or	esi, 0FFFFFFFFh
jmp	short loc_10015E3D
cmp	[esp+30h+arg_8], 0
jnz	short loc_10015E25
or	esi, 0FFFFFFFFh
jmp	short loc_10015E3D
mov	ecx, [esp+30h+var_1C]
mov	eax, [esp+30h+var_18]
push	ecx
lea	edx, [ebp+4]
push	edx
push	eax
call	SECOID_CopyAlgorithmID_Util
add	esp, 0Ch
mov	esi, eax
			
mov	eax, [esp+30h+var_20]
test	eax, eax
jz	short loc_10015E58
push	1
push	eax
call	SECITEM_ZfreeItem_Util
add	esp, 8
mov	[esp+30h+var_20], 0
test	edi, edi
jz	short loc_10015E65
push	edi
call	PK11_FreeSymKey
add	esp, 4
mov	eax, [esp+30h+var_10]
test	eax, eax
jz	short loc_10015E76
push	eax
call	SECKEY_DestroyPrivateKey
add	esp, 4
mov	ecx, [esp+30h+var_1C]
push	1
push	ecx
call	SECOID_DestroyAlgorithmID_Util
add	esp, 8
cmp	esi, 0FFFFFFFFh
jnz	short loc_10015E9F
mov	eax, [esp+30h+var_18]
test	eax, eax
jz	short loc_10015E9D
push	1
push	eax
call	PORT_FreeArena_Util
add	esp, 8
xor	ebp, ebp
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 20h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 20h
retn
public PK11_ExportEncryptedPrivateKeyInfo
mov	eax, [esp+arg_C]
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_14]
push	edi
push	eax
xor	ebx, ebx
call	PK11_FindKeyByAnyCert
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10015F09
mov	ecx, [esp+0Ch+arg_10]
mov	edx, [esp+0Ch+arg_8]
mov	eax, [esp+0Ch+arg_4]
push	edi
push	ecx
mov	ecx, [esp+14h+arg_0]
push	esi
push	edx
push	eax
push	ecx
call	PK11_ExportEncryptedPrivKeyInfo
push	esi
mov	edi, eax
call	SECKEY_DestroyPrivateKey
add	esp, 1Ch
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
public PK11_CopyTokenPrivKeyToSessionPrivKey
mov	eax, [esp+arg_0]
push	edi
mov	edi, [esp+4+arg_4]
test	eax, eax
jz	short loc_10015F37
cmp	eax, [edi+8]
jz	short loc_10015F37
push	8Ah
push	edi
push	eax
xor	ecx, ecx
call	sub_100148D0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10015FA7
			
mov	eax, [edi+14h]
push	ebx
push	esi
mov	esi, [edi+8]
push	eax
push	1
push	esi
call	PK11_Authenticate
push	esi
call	sub_10035650
mov	eax, [edi+0Ch]
mov	ecx, [esi]
lea	edx, [esp+1Ch+arg_0]
push	edx
mov	edx, [esi+38h]
push	1
push	offset dword_100A2A94
push	eax
mov	eax, [ecx+56h]
push	edx
call	eax
push	esi
mov	ebx, eax
call	sub_10035670
add	esp, 28h
test	ebx, ebx
jz	short loc_10015F8D
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	esi
pop	ebx
xor	eax, eax
pop	edi
retn
mov	ecx, [edi+14h]
mov	edx, [esp+0Ch+arg_0]
mov	eax, [edi+4]
push	ecx
push	edx
push	1
push	eax
push	esi
call	sub_10012FF0
add	esp, 14h
pop	esi
pop	ebx
pop	edi
retn
align 10h
sub	esp, 10h
push	ebx
push	ebp
mov	ebp, [esp+18h+arg_0]
push	edi
call	ds:PR_Now
xor	edi, edi
mov	[esp+1Ch+var_8], eax
mov	[esp+1Ch+var_4], edx
mov	[esp+1Ch+var_10], edi
cmp	[esi+12Ch], edi
jz	short loc_10015FDE
xor	ebx, ebx
mov	[esp+1Ch+arg_4], edi
jmp	short loc_1001600B
mov	eax, [esp+1Ch+arg_4]
cmp	eax, edi
jnz	short loc_10015FFD
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016000
sub	eax, edx
mov	ebx, eax
xor	eax, eax
cmp	[esp+1Ch+arg_C], edi
setnz	al
inc	eax
mov	[esp+1Ch+var_C], eax
lea	esp, [esp+0]
cmp	[esp+1Ch+arg_8], 0
jnz	short loc_10016030
push	esi
call	sub_10035650
add	esp, 4
mov	edx, [esp+1Ch+arg_4]
mov	eax, [esp+1Ch+var_C]
mov	ecx, [esi]
mov	ecx, [ecx+4Ah]
push	ebx
push	edx
push	eax
push	ebp
call	ecx
add	esp, 10h
cmp	[esp+1Ch+arg_8], 0
mov	edi, eax
mov	dword ptr [esi+134h], 0
jnz	short loc_10016062
push	esi
call	sub_10035670
add	esp, 4
cmp	edi, 0B0h
ja	short loc_10016091
jz	short loc_1001609A
test	edi, edi
jz	short loc_100160E8
cmp	edi, 0A0h
jnz	short loc_100160CF
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
mov	eax, 0FFFFFFFEh
pop	ebx
add	esp, 10h
retn
mov	eax, edi
sub	eax, 0B3h
jnz	short loc_100160CA
cmp	ebp, [esi+38h]
jnz	short loc_100160CF
mov	eax, [esp+1Ch+var_10]
mov	edx, eax
inc	eax
mov	[esp+1Ch+var_10], eax
test	edx, edx
jnz	short loc_100160CF
push	edx
push	esi
call	sub_10036D20
add	esp, 8
test	eax, eax
jnz	short loc_100160E1
mov	eax, [esi+38h]
test	eax, eax
jz	short loc_100160CF
mov	ebp, eax
jmp	loc_10016020
sub	eax, 4Dh
jz	short loc_100160F0
			
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	edi
pop	ebp
pop	ebx
add	esp, 10h
retn
mov	eax, dword_100BA190
mov	[esi+68h], eax
mov	ecx, [esp+1Ch+var_8]
mov	edx, [esp+1Ch+var_4]
pop	edi
pop	ebp
mov	[esi+70h], ecx
mov	[esi+74h], edx
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
public PK11_CheckUserPassword
sub	esp, 8
push	ebx
push	ebp
push	esi
push	edi
call	ds:PR_Now
mov	esi, [esp+18h+arg_0]
cmp	dword ptr [esi+12Ch], 0
mov	ebp, eax
mov	[esp+18h+var_4], edx
jz	short loc_10016136
xor	edi, edi
xor	ebx, ebx
jmp	short loc_1001616B
mov	ebx, [esp+18h+arg_4]
test	ebx, ebx
jnz	short loc_10016156
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
mov	eax, ebx
lea	edx, [eax+1]
jmp	short loc_10016160
align 10h
			
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016160
sub	eax, edx
mov	edi, eax
cmp	dword ptr [esi+24h], 0
jnz	short loc_10016191
test	edi, edi
jz	loc_10016218
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	esi
call	sub_10035650
mov	eax, [esi]
mov	ecx, [esi+38h]
mov	edx, [eax+4Eh]
push	ecx
call	edx
mov	eax, [esi]
mov	ecx, [esi+38h]
mov	edx, [eax+4Ah]
push	edi
push	ebx
push	1
push	ecx
call	edx
push	esi
mov	edi, eax
mov	dword ptr [esi+134h], 0
call	sub_10035670
add	esp, 1Ch
test	edi, edi
jz	short loc_10016206
cmp	edi, 0A0h
jz	short loc_100161EC
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, 0FFFFFFFEh
pop	ebx
add	esp, 8
retn
mov	eax, dword_100BA190
mov	ecx, [esp+18h+var_4]
mov	[esi+68h], eax
mov	[esi+70h], ebp
mov	[esi+74h], ecx
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
public PK11_Logout
push	esi
mov	esi, [esp+4+arg_0]
push	edi
push	esi
call	sub_10035650
mov	eax, [esi]
mov	ecx, [esi+38h]
mov	edx, [eax+4Eh]
push	ecx
call	edx
push	esi
mov	edi, eax
mov	dword ptr [esi+134h], 0
call	sub_10035670
add	esp, 0Ch
test	edi, edi
jz	short loc_10016275
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
public PK11_SetSlotPWValues
mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_8]
or	dword ptr [eax+44h], 20000000h
mov	[eax+60h], ecx
mov	[eax+64h], edx
mov	eax, [eax+4]
push	eax
call	SECMOD_UpdateModule
pop	ecx
retn
align 10h
public PK11_GetSlotPWValues
mov	eax, [esp+arg_0]
mov	ecx, [eax+60h]
push	esi
mov	esi, [esp+4+arg_4]
mov	[esi], ecx
mov	edx, [eax+64h]
push	edi
mov	edi, [esp+8+arg_8]
mov	[edi], edx
test	dword ptr [eax+44h], 20000000h
jnz	short loc_100162ED
call	PK11_GetInternalKeySlot
test	eax, eax
jz	short loc_100162ED
mov	ecx, [eax+60h]
mov	[esi], ecx
mov	edx, [eax+64h]
push	eax
mov	[edi], edx
call	PK11_FreeSlot
add	esp, 4
			
pop	edi
pop	esi
retn
public PK11_CheckSSOPassword
push	ebp
push	esi
mov	esi, [esp+8+arg_0]
push	esi
call	sub_10035690
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jnz	short loc_10016318
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
cmp	dword ptr [esi+12Ch], 0
push	edi
jz	short loc_10016328
xor	eax, eax
xor	edx, edx
jmp	short loc_10016359
mov	edx, [esp+0Ch+arg_4]
test	edx, edx
jnz	short loc_10016344
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	eax, edx
lea	edi, [eax+1]
lea	esp, [esp+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016350
sub	eax, edi
mov	ecx, [esi]
push	eax
push	edx
mov	edx, [ecx+4Ah]
push	0
push	ebp
call	edx
add	esp, 10h
mov	dword ptr [esi+134h], 0
test	eax, eax
jz	short loc_100163A5
cmp	eax, 0A0h
jz	short loc_10016391
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	edi, 0FFFFFFFFh
jmp	short loc_100163A7
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
mov	edi, 0FFFFFFFEh
jmp	short loc_100163A7
xor	edi, edi
			
mov	eax, [esi]
mov	ecx, [eax+4Eh]
push	ebp
call	ecx
push	ebp
push	esi
mov	dword ptr [esi+134h], 0
call	sub_10035750
add	esp, 0Ch
mov	eax, edi
pop	edi
pop	esi
pop	ebp
retn
align 10h
public PK11_InitPin
push	ecx
cmp	[esp+4+arg_8], 0
mov	[esp+4+var_4], 0FFFFFFFFh
jnz	short loc_100163E7
mov	[esp+4+arg_8], offset byte_100A1623
push	ebx
mov	ebx, [esp+8+arg_4]
push	ebp
push	esi
push	edi
test	ebx, ebx
jnz	short loc_100163F8
mov	ebx, offset byte_100A1623
mov	eax, [esp+14h+arg_8]
lea	edx, [eax+1]
nop
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016400
sub	eax, edx
mov	[esp+14h+arg_4], eax
mov	eax, ebx
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016412
mov	esi, [esp+14h+arg_0]
sub	eax, edx
push	esi
mov	ebp, eax
call	sub_10035690
mov	edi, eax
xor	eax, eax
add	esp, 4
cmp	edi, eax
jnz	short loc_10016452
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	dword ptr [esi+134h], 0
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
cmp	[esi+12Ch], eax
jz	short loc_10016466
xor	ebp, ebp
mov	[esp+14h+arg_4], eax
xor	ebx, ebx
mov	[esp+14h+arg_8], eax
mov	ecx, [esi]
mov	edx, [ecx+4Ah]
push	ebp
push	ebx
push	eax
push	edi
call	edx
xor	ebx, ebx
add	esp, 10h
mov	[esi+134h], ebx
cmp	eax, ebx
jz	short loc_10016495
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	ebp, [esp+1Ch+var_4]
add	esp, 8
jmp	short loc_100164B0
mov	ecx, [esp+14h+arg_4]
mov	edx, [esp+14h+arg_8]
mov	eax, [esi]
mov	eax, [eax+2Ah]
push	ecx
push	edx
push	edi
call	eax
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_10016480
xor	ebp, ebp
mov	ecx, [esi]
mov	edx, [ecx+4Eh]
push	edi
call	edx
push	edi
push	esi
mov	[esi+134h], ebx
call	sub_10035750
add	esp, 0Ch
cmp	ebp, ebx
jnz	short loc_10016508
push	1
push	esi
call	sub_10036D20
add	esp, 8
cmp	[esi+24h], ebx
jz	short loc_10016508
push	esi
call	sub_10035650
mov	ecx, [esp+18h+arg_4]
mov	edx, [esp+18h+arg_8]
mov	eax, [esi]
push	ecx
mov	ecx, [esi+38h]
push	edx
mov	edx, [eax+4Ah]
push	1
push	ecx
call	edx
push	esi
mov	[esi+134h], ebx
call	sub_10035670
add	esp, 18h
			
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
pop	ecx
retn
public PK11_ChangePW
sub	esp, 8
mov	eax, [esp+8+arg_0]
push	ebx
mov	ebx, [esp+0Ch+arg_8]
push	ebp
xor	ebp, ebp
push	esi
push	edi
mov	[esp+18h+var_4], 0FFFFFFFFh
mov	[esp+18h+var_8], ebp
cmp	[eax+12Ch], ebp
jnz	short loc_1001654D
cmp	ebx, ebp
jnz	short loc_1001653E
mov	ebx, offset byte_100A1623
mov	edi, [esp+18h+arg_4]
cmp	edi, ebp
jnz	short loc_10016551
mov	edi, offset byte_100A1623
jmp	short loc_10016551
mov	edi, [esp+18h+arg_4]
			
cmp	ebx, ebp
jz	short loc_1001656D
mov	eax, ebx
lea	edx, [eax+1]
lea	ebx, [ebx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016560
sub	eax, edx
mov	[esp+18h+var_8], eax
cmp	edi, ebp
jz	short loc_10016581
mov	eax, edi
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016576
sub	eax, edx
mov	ebp, eax
mov	ecx, [esp+18h+arg_0]
push	ecx
call	sub_10035690
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_100165AC
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
mov	ecx, [esp+18h+var_8]
mov	edx, [esp+18h+arg_0]
mov	eax, [edx]
mov	edx, [eax+2Eh]
push	ecx
push	ebx
push	ebp
push	edi
push	esi
call	edx
add	esp, 14h
test	eax, eax
jnz	short loc_100165CB
xor	edi, edi
jmp	short loc_100165DE
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	edi, [esp+20h+var_4]
add	esp, 8
push	esi
mov	esi, [esp+1Ch+arg_0]
push	esi
call	sub_10035750
push	1
push	esi
call	sub_10036D20
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
align 10h
public PK11_SetPasswordFunc
mov	eax, [esp+arg_0]
mov	dword_100BA198,	eax
retn
align 10h
public PK11_LogoutAll
push	ecx
push	esi
call	SECMOD_GetDefaultModuleListLock
mov	esi, eax
mov	[esp+8+var_4], esi
test	esi, esi
jz	loc_100166AF
push	ebp
push	esi
call	SECMOD_GetReadLock
add	esp, 4
call	SECMOD_GetDefaultModuleList
mov	ebp, eax
test	ebp, ebp
jz	short loc_100166A5
push	ebx
push	edi
lea	esp, [esp+0]
mov	eax, [ebp+4]
xor	edi, edi
cmp	[eax+2Ch], edi
jle	short loc_1001669C
lea	ebx, [ebx+0]
mov	eax, [eax+28h]
mov	esi, [eax+edi*4]
push	esi
call	sub_10035650
mov	ecx, [esi]
mov	edx, [esi+38h]
mov	eax, [ecx+4Eh]
push	edx
call	eax
push	esi
mov	ebx, eax
mov	dword ptr [esi+134h], 0
call	sub_10035670
add	esp, 0Ch
test	ebx, ebx
jz	short loc_1001668F
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
mov	eax, [ebp+4]
inc	edi
cmp	edi, [eax+2Ch]
jl	short loc_10016650
mov	esi, [esp+14h+var_4]
mov	ebp, [ebp+0]
test	ebp, ebp
jnz	short loc_10016640
pop	edi
pop	ebx
push	esi
call	SECMOD_ReleaseReadLock
add	esp, 4
pop	ebp
pop	esi
pop	ecx
retn
align 10h
public PK11_GetMinimumPwdLength
mov	eax, [esp+arg_0]
mov	eax, [eax+78h]
retn
align 10h
public PK11_ProtectedAuthenticationPath
mov	eax, [esp+arg_0]
mov	eax, [eax+12Ch]
retn
align 10h
public PK11_NeedPWInit
push	esi
push	edi
call	PK11_GetInternalKeySlot
mov	esi, eax
cmp	dword ptr [esi+24h], 0
jz	short loc_10016715
push	esi
call	PK11_NeedUserInit
add	esp, 4
test	eax, eax
jz	short loc_1001670F
push	esi
mov	edi, 1
call	PK11_FreeSlot
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
cmp	dword ptr [esi+24h], 0
jnz	short loc_10016722
push	esi
call	PK11_NeedUserInit
add	esp, 4
test	eax, eax
jz	short loc_100166FC
push	esi
xor	edi, edi
call	PK11_FreeSlot
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public PK11_IsLoggedIn
			
sub	esp, 14h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+14h+var_4], eax
cmp	dword_100BAB8C,	0
push	ebx
push	ebp
push	esi
mov	esi, [esp+20h+arg_0]
mov	ebx, [esi+60h]
mov	ebp, [esi+64h]
push	edi
mov	edi, [esp+24h+arg_4]
jnz	short loc_10016779
push	1
call	ds:PR_SecondsToInterval
add	esp, 4
mov	dword_100BAB8C,	eax
test	dword ptr [esi+44h], 20000000h
jnz	short loc_1001679A
call	PK11_GetInternalKeySlot
test	eax, eax
jz	short loc_1001679A
mov	ebx, [eax+60h]
mov	ebp, [eax+64h]
push	eax
call	PK11_FreeSlot
add	esp, 4
			
test	edi, edi
jz	short loc_100167B6
mov	eax, dword_100BA1A0
test	eax, eax
jz	short loc_100167B6
push	edi
push	esi
call	eax 
add	esp, 8
test	eax, eax
jz	loc_10016884
			
cmp	ebx, 1
jnz	short loc_10016812
call	ds:PR_Now
mov	ebx, eax
push	0
mov	edi, edx
mov	eax, ebp
cdq
push	3938700h
push	edx
push	eax
call	sub_1009FFA0
add	eax, [esi+70h]
adc	edx, [esi+74h]
cmp	edx, edi
jg	short loc_1001680C
jl	short loc_100167E6
cmp	eax, ebx
jnb	short loc_1001680C
push	esi
call	sub_10035650
mov	eax, [esi]
mov	ecx, [esi+38h]
mov	edx, [eax+4Eh]
push	ecx
call	edx
push	esi
mov	dword ptr [esi+134h], 0
call	sub_10035670
add	esp, 0Ch
jmp	short loc_10016812
			
mov	[esi+70h], ebx
mov	[esi+74h], edi
			
push	esi
call	sub_10035650
mov	ebp, dword_100BAB8C
mov	edi, [esi+134h]
add	esp, 4
call	ds:PR_IntervalNow
mov	ebx, eax
test	edi, edi
jz	short loc_10016847
sub	eax, edi
cmp	eax, ebp
jnb	short loc_10016847
mov	ecx, [esi+138h]
mov	[esp+24h+var_10], ecx
xor	edi, edi
jmp	short loc_10016870
			
mov	edx, [esi]
mov	ecx, [esi+38h]
mov	edx, [edx+3Eh]
lea	eax, [esp+24h+var_14]
push	eax
push	ecx
call	edx
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10016870
mov	eax, [esp+24h+var_10]
mov	[esi+138h], eax
mov	[esi+134h], ebx
			
push	esi
call	sub_10035670
add	esp, 4
test	edi, edi
jz	short loc_10016899
mov	dword ptr [esi+38h], 0
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+14h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 14h
retn
mov	eax, [esp+24h+var_10]
cmp	eax, 1
jz	short loc_100168AC
cmp	eax, 2
jbe	short loc_10016884
cmp	eax, 4
ja	short loc_10016884
mov	ecx, [esp+24h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
mov	eax, 1
call	@__security_check_cookie@4 
add	esp, 14h
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	dword ptr [eax+24h], 0
jz	short loc_100168F2
mov	ecx, [esp+arg_4]
push	ecx
push	eax
call	PK11_IsLoggedIn
add	esp, 8
test	eax, eax
jnz	short loc_100168F2
mov	eax, 1
retn
			
xor	eax, eax
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
push	esi
or	ebx, 0FFFFFFFFh
xor	ebp, ebp
call	PK11_NeedUserInit
add	esp, 4
test	eax, eax
jz	short loc_1001692C
push	0FFFFE000h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, ebx
pop	ebx
retn
push	0
push	esi
call	PK11_IsLoggedIn
add	esp, 8
test	eax, eax
jz	short loc_1001696D
mov	eax, dword_100BA19C
test	eax, eax
jz	short loc_1001696D
mov	ecx, [esp+0Ch+arg_C]
push	ecx
push	esi
call	eax 
add	esp, 8
test	eax, eax
jnz	short loc_10016967
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
			
push	edi
mov	edi, edi
			
mov	eax, dword_100BA198
test	eax, eax
jz	loc_10016A54
mov	edx, [esp+10h+arg_C]
push	edx
push	ebp
push	esi
call	eax 
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	loc_10016A54
cmp	dword ptr [esi+12Ch], 0
mov	ebp, 1
jz	short loc_10016A0D
mov	ecx, offset aRetry 
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_100169C6
test	dl, dl
jz	short loc_100169C2
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_100169C6
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_100169A6
xor	eax, eax
jmp	short loc_100169CB
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_100169DD
push	edi
lea	ebx, [eax-2]
call	PORT_Free_Util
add	esp, 4
jmp	short loc_10016970
mov	ecx, offset aAuth 
mov	eax, edi
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10016A04
test	dl, dl
jz	short loc_10016A00
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10016A04
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_100169E4
xor	eax, eax
jmp	short loc_10016A09
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jz	short loc_10016A7F
mov	eax, [esp+10h+arg_14]
mov	ecx, [esp+10h+arg_10]
mov	edx, [esp+10h+arg_4]
push	eax
push	ecx
push	edi
push	edx
call	sub_10015FB0
mov	ebx, eax
mov	eax, edi
add	esp, 10h
lea	edx, [eax+1]
lea	esp, [esp+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10016A30
sub	eax, edx
push	eax		
push	0		
push	edi		
call	memset
push	edi
call	PORT_Free_Util
add	esp, 10h
cmp	ebx, 0FFFFFFFEh
jz	loc_10016970
			
test	ebx, ebx
jnz	short loc_10016A8C
push	esi
call	PK11_IsFriendly
add	esp, 4
test	eax, eax
jnz	short loc_10016A9D
mov	eax, [esi+13Ch]
push	eax
mov	eax, [eax+28h]
push	eax
call	sub_100487C0
add	esp, 8
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
push	edi
xor	ebx, ebx
call	PORT_Free_Util
add	esp, 4
jmp	short loc_10016A58
test	ebp, ebp
jnz	short loc_10016A9D
push	0FFFFE00Fh
call	PORT_SetError_Util
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+24h], 0
push	edi
mov	edi, [esi+60h]
jz	loc_10016B45
test	dword ptr [esi+44h], 20000000h
jnz	short loc_10016AE1
call	PK11_GetInternalKeySlot
test	eax, eax
jz	short loc_10016AE1
mov	edi, [eax+60h]
push	eax
call	PK11_FreeSlot
add	esp, 4
			
push	ebx
mov	ebx, [esp+0Ch+arg_4]
push	ebx
push	esi
call	PK11_IsLoggedIn
add	esp, 8
test	eax, eax
jz	short loc_10016B30
cmp	edi, 0FFFFFFFFh
jnz	short loc_10016B44
cmp	dword_100BA194,	0
jz	short loc_10016B0C
mov	eax, dword_100BA190
cmp	eax, [esi+68h]
jz	short loc_10016B44
push	esi
call	sub_10035650
mov	ecx, [esi]
mov	edx, [esi+38h]
mov	eax, [ecx+4Eh]
push	edx
call	eax
push	esi
mov	dword ptr [esi+134h], 0
call	sub_10035670
add	esp, 0Ch
mov	ecx, [esi+38h]
push	0
push	0
push	ebx
push	1
push	ecx
push	esi
call	sub_10016900
add	esp, 18h
			
pop	ebx
pop	edi
pop	esi
retn
align 10h
public PK11_Authenticate
			
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+24h], 0
push	edi
jz	short loc_10016B86
mov	edi, [esp+8+arg_8]
push	edi
push	esi
call	PK11_IsLoggedIn
add	esp, 8
test	eax, eax
jnz	short loc_10016B86
mov	ecx, [esi+38h]
push	eax
push	eax
mov	eax, [esp+10h+arg_4]
push	edi
push	eax
push	ecx
push	esi
call	sub_10016900
add	esp, 18h
pop	edi
pop	esi
retn
			
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
push	edi
push	esi
xor	edi, edi
call	PK11_IsFriendly
add	esp, 4
test	eax, eax
jnz	short loc_10016BD9
cmp	[esi+24h], edi
jz	short loc_10016BD4
mov	edi, [esp+8+arg_8]
push	edi
push	esi
call	PK11_IsLoggedIn
add	esp, 8
test	eax, eax
jnz	short loc_10016BD4
mov	ecx, [esi+38h]
push	eax
push	eax
mov	eax, [esp+10h+arg_4]
push	edi
push	eax
push	ecx
push	esi
call	sub_10016900
add	esp, 18h
pop	edi
pop	esi
retn
			
pop	edi
xor	eax, eax
pop	esi
retn
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
mov	eax, [esp+4]
push	eax
call	sub_1004B8F0
add	esp, 4
test	eax, eax
jnz	short loc_10016BF5
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+8]
mov	edx, [ecx+8]
push	edx
push	eax
mov	eax, [ecx]
call	eax
add	esp, 8
neg	eax
sbb	eax, eax
retn
align 10h
sub	esp, 20h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+20h+var_4], eax
mov	eax, [esp+20h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+28h+arg_4]
push	esi
add	eax, 0F9h
push	edi
mov	edi, edx
mov	[esp+30h+Src], eax
lea	esi, [eax+1]
mov	dl, [eax]
inc	eax
test	dl, dl
jnz	short loc_10016C38
sub	eax, esi
mov	esi, eax
mov	[esp+30h+var_1C], esi
test	ecx, ecx
jz	short loc_10016C5A
mov	ebx, [ecx+8]
test	ebx, ebx
jz	short loc_10016C5A
mov	ebp, [ecx+4]
jmp	loc_10016CFF
			
test	edi, edi
jz	short loc_10016C6D
mov	ebx, [edi+8]
test	ebx, ebx
jz	short loc_10016C6D
mov	ebp, [edi+4]
jmp	loc_10016CFF
			
test	ebp, ebp
jz	loc_10016D48
mov	edi, [ebp+8]
test	edi, edi
jz	loc_10016D48
mov	ecx, ds:dword_100A2ADC
mov	edx, ds:dword_100A2AE0
mov	ebp, [ebp+4]
lea	eax, [edi-4]
mov	[esp+30h+var_18], ecx
mov	[esp+30h+var_14], edx
lea	ecx, [esp+30h+var_F]
test	eax, eax
jns	short loc_10016CA4
xor	eax, eax
mov	esi, eax
cmp	eax, edi
jge	short loc_10016CE6
lea	ebx, [ebx+0]
mov	dl, [esi+ebp]
movzx	eax, dl
shr	eax, 4
cmp	eax, 0Ah
jge	short loc_10016CC3
add	eax, 30h
jmp	short loc_10016CC6
add	eax, 57h
mov	[ecx], al
movsx	eax, dl
and	eax, 0Fh
cmp	eax, 0Ah
jge	short loc_10016CD8
add	eax, 30h
jmp	short loc_10016CDB
add	eax, 57h
mov	[ecx+1], al
inc	esi
add	ecx, 2
cmp	esi, edi
jl	short loc_10016CB0
lea	ebp, [esp+30h+var_18]
mov	ebx, ebp
mov	byte ptr [ecx],	0
lea	ecx, [ebx+1]
mov	al, [ebx]
inc	ebx
test	al, al
jnz	short loc_10016CF2
mov	esi, [esp+30h+var_1C]
sub	ebx, ecx
			
lea	eax, [ebx+esi+2]
push	eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10016D55
mov	ecx, [esp+30h+Src]
push	esi		
push	ecx		
push	edi		
call	memcpy
add	esi, edi
push	ebx		
mov	byte ptr [esi],	3Ah
inc	esi
push	ebp		
push	esi		
call	memcpy
add	esp, 18h
mov	eax, edi
pop	edi
mov	byte ptr [esi+ebx], 0
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+20h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 20h
retn
			
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
mov	ecx, [esp+30h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 20h
retn
align 10h
sub	esp, 0Ch
push	ebp
mov	ebp, [esp+10h+arg_0]
test	ebp, ebp
jnz	short loc_10016D83
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
push	edi
mov	edi, [esp+14h+arg_4]
test	edi, edi
jnz	short loc_10016D94
pop	edi
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
push	esi
push	0
push	ebp
mov	esi, 3
call	sub_100168D0
add	esp, 8
test	eax, eax
jz	short loc_10016DAE
mov	esi, 2
mov	eax, [esp+18h+arg_8]
push	esi
push	eax
push	ebp
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jnz	loc_10016E8A
cmp	esi, 2
jnz	loc_10016E9F
push	edi
call	CERT_ExtractPublicKey
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_10016E9F
mov	[esp+18h+var_C], 0
mov	[esp+18h+var_8], 0
mov	[esp+18h+var_4], 0
mov	eax, [esi+4]
dec	eax
cmp	eax, 5		
ja	loc_10016E96	
jmp	ds:off_10016EA8[eax*4] 
			
mov	[esp+18h+var_C], 120h 
mov	ecx, [esi+18h]
mov	[esp+18h+var_8], ecx
mov	eax, [esi+1Ch]
jmp	short loc_10016E5B
			
mov	[esp+18h+var_C], 11h 
mov	edx, [esi+3Ch]
mov	[esp+18h+var_8], edx
mov	eax, [esi+40h]
jmp	short loc_10016E5B
			
mov	[esp+18h+var_C], 11h 
mov	eax, [esi+30h]
mov	[esp+18h+var_8], eax
mov	eax, [esi+34h]
jmp	short loc_10016E5B
			
mov	[esp+18h+var_C], 181h 
mov	ecx, [esi+24h]
mov	[esp+18h+var_8], ecx
mov	eax, [esi+28h]
			
mov	[esp+18h+var_4], eax
test	eax, eax
jz	short loc_10016E96 
lea	edx, [esp+18h+var_C]
push	edx
call	sub_1002A670
push	1
lea	eax, [esp+20h+var_C]
push	eax
push	ebp
call	sub_1002C4F0
add	esp, 10h
test	eax, eax
jz	short loc_10016E96 
push	esi
call	SECKEY_DestroyPublicKey
add	esp, 4
pop	esi
pop	edi
mov	eax, 1
pop	ebp
add	esp, 0Ch
retn
			
push	esi		
call	SECKEY_DestroyPublicKey
add	esp, 4
			
pop	esi
pop	edi
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
dd offset loc_10016E21	
dd offset loc_10016E96
dd offset loc_10016E35
dd offset loc_10016E96
dd offset loc_10016E49
sub	esp, 0Ch
mov	ecx, [esp+0Ch+arg_4]
mov	edx, [esp+0Ch+arg_0]
push	esi
push	1
lea	eax, [esp+14h+var_C]
push	eax
push	ecx
push	edx
xor	esi, esi
push	esi
mov	[esp+24h+var_C], 102h
mov	[esp+24h+var_8], 0
mov	[esp+24h+var_4], 0
call	sub_1002A310
add	esp, 14h
test	eax, eax
jz	short loc_10016F03
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
mov	ecx, [esp+10h+var_4]
mov	edx, [esp+10h+var_8]
test	ecx, ecx
jz	short loc_10016F3D
xor	eax, eax
mov	esi, 1
test	ecx, ecx
jle	short loc_10016F3D
lea	ebx, [ebx+0]
cmp	byte ptr [eax+edx], 0
jnz	short loc_10016F3B
inc	eax
cmp	eax, ecx
jl	short loc_10016F20
push	edx
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
xor	esi, esi
			
push	edx
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
align 10h
sub	esp, 1Ch
push	ebp
push	esi
call	sub_1004A850
push	ebx
mov	ebp, eax
call	sub_10036730
mov	ecx, [eax+24h]
add	esp, 4
test	ecx, ecx
jz	short loc_10016F87
mov	edx, [esp+24h+arg_0]
push	edx
push	ecx
push	eax
call	sub_1004E620
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10016F9C
pop	esi
pop	ebp
add	esp, 1Ch
retn
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 4
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
push	edi
push	2
push	0
push	ebp
push	esi
push	0
call	sub_1004A230
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	short loc_10016FC5
push	esi
call	sub_1004E6D0
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
push	edi
call	sub_10045FA0
add	esp, 4
mov	[esp+28h+var_1C], eax
test	eax, eax
jnz	short loc_10016FE8
push	edi
call	sub_10049400
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
mov	edi, [esp+28h+arg_8]
test	edi, edi
jz	short loc_10017043
cmp	dword ptr [esi+0Ch], 0
jz	short loc_10017043
mov	ecx, [esi+0Ch]
mov	[esp+28h+var_C], 3
mov	[esp+28h+var_8], ecx
lea	esi, [ecx+1]
mov	dl, [ecx]
inc	ecx
test	dl, dl
jnz	short loc_10017008
mov	edx, [eax+2Ch]
sub	ecx, esi
mov	[esp+28h+var_4], ecx
mov	ecx, [eax+28h]
lea	eax, [esp+28h+var_18]
push	eax
mov	[esp+2Ch+var_14], ecx
mov	[esp+2Ch+var_10], edx
mov	edx, [esp+2Ch+arg_4]
push	ebx
lea	ecx, [esp+30h+var_C]
mov	[esp+30h+var_18], 102h
call	sub_10016C10
add	esp, 8
mov	[edi], eax
			
push	1
lea	ecx, [esp+2Ch+var_1C]
push	ecx
push	ebp
call	sub_100480B0
mov	edx, [esp+34h+var_1C]
push	edx
call	sub_1004B900
add	esp, 10h
pop	edi
pop	esi
pop	ebp
add	esp, 1Ch
retn
align 10h
			
push	ecx
mov	ecx, [esp+4+arg_8]
push	ebx
mov	ebx, [esp+8+arg_0]
push	ebp
push	esi
push	edi
mov	edi, [esp+14h+arg_4]
lea	eax, [esp+14h+var_4]
push	eax
push	ecx
push	edi
mov	[esp+20h+var_4], 0
call	sub_10016F50
mov	ebp, [esp+20h+var_4]
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10017118
test	ebp, ebp
jz	short loc_100170D0
mov	eax, [esi+154h]
test	eax, eax
jz	short loc_100170B6
mov	[esi+158h], eax
mov	edx, [esi]
push	ebp
push	edx
call	PORT_ArenaStrdup_Util
push	ebp
mov	[esi+154h], eax
call	PORT_Free_Util
add	esp, 0Ch
xor	ebp, ebp
cmp	dword ptr [esi+17Ch], 0
jnz	short loc_10017105
push	ebx
call	PK11_ReferenceSlot
mov	[esi+17Ch], eax
mov	[esi+180h], edi
mov	dword ptr [esi+184h], 1
movzx	eax, word ptr [ebx+80h]
add	esp, 4
mov	[esi+178h], eax
mov	ecx, [esi]
push	0Ch
push	ecx
call	PORT_ArenaAlloc_Util
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1001713A
test	ebp, ebp
jz	short loc_10017125
push	ebp
call	PORT_Free_Util
add	esp, 4
test	esi, esi
jz	short loc_10017132
push	esi
call	CERT_DestroyCertificate
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
xor	eax, eax
push	edi
mov	[edi], eax
push	esi
mov	[edi+4], eax
push	ebx
mov	[edi+8], eax
call	sub_10029030
add	esp, 0Ch
test	eax, eax
jnz	short loc_100171B8
lea	edx, [esp+14h+var_4]
push	edx
push	esi
call	CERT_IsCACert
add	esp, 8
test	eax, eax
jz	short loc_100171B8
mov	eax, [esp+14h+arg_4]
push	eax
push	ebx
mov	ebp, 8
call	sub_10016EC0
add	esp, 8
test	eax, eax
jz	short loc_100171A0
cmp	dword ptr [esi+170h], 0
jz	short loc_100171A0
push	1011h
push	ebx
mov	ebp, 18h
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jz	short loc_100171A0
or	dword ptr [edi+8], 8
			
mov	al, byte ptr [esp+14h+var_4]
test	al, 4
jz	short loc_100171AA
or	[edi], ebp
test	al, 2
jz	short loc_100171B1
or	[edi+4], ebp
test	al, 1
jz	short loc_100171B8
or	[edi+8], ebp
			
mov	ecx, [esp+14h+arg_4]
push	ecx
push	esi
push	ebx
call	sub_10016D70
add	esp, 0Ch
test	eax, eax
jz	short loc_100171D2
or	dword ptr [edi], 40h
or	dword ptr [edi+4], 40h
push	esi
call	sub_1003D8D0
push	esi
mov	[esi+160h], edi
call	sub_1003D990
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
public PK11_GetCertFromPrivateKey
			
			
mov	eax, [esp+arg_0]
push	esi
mov	esi, [eax+8]
mov	eax, [eax+0Ch]
push	1
push	eax
push	esi
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001721C
push	0FFFFD003h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
retn
push	0
push	eax
push	esi
call	sub_10017070
add	esp, 0Ch
pop	esi
retn
align 10h
mov	eax, [esp+8]
mov	ecx, [eax+4]
mov	eax, [eax]
push	ecx
mov	ecx, [esp+8]
lea	edx, [ecx+3Ch]
push	edx
push	ecx
call	eax
add	esp, 0Ch
retn
align 10h
public PK11_TraverseSlotCerts
			
			
sub	esp, 14h
push	esi
call	sub_1004A850
mov	esi, eax
mov	eax, [esp+18h+arg_8]
push	eax
push	1
push	0
push	0
call	sub_1002C850
mov	ecx, [esp+28h+arg_0]
mov	edx, [esp+28h+arg_4]
mov	[esp+28h+var_14], ecx
lea	ecx, [esp+28h+var_C]
push	ecx
lea	eax, [esp+2Ch+var_14]
push	offset loc_10016BE0
push	esi
mov	[esp+34h+var_10], edx
mov	[esp+34h+var_C], offset	loc_10017230
mov	[esp+34h+var_4], eax
call	sub_100475B0
add	esp, 1Ch
xor	eax, eax
pop	esi
add	esp, 14h
retn
align 10h
			
push	ecx
push	esi
push	edi
mov	edi, eax
push	edi
call	PK11_GetWindow
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_1001736F
push	ebx
lea	eax, ds:0[esi*4]
push	eax
push	0
call	sub_100504B0
mov	ebx, eax
add	esp, 8
mov	[esp+10h+var_4], ebx
test	ebx, ebx
jz	loc_1001736E
push	esi
push	ebx
push	edi
call	sub_10051290
add	esp, 0Ch
test	esi, esi
jz	short loc_10017365
push	ebp
mov	edi, ebx
mov	ebp, esi
lea	ecx, [ecx+0]
mov	ecx, [edi]
push	0
push	ecx
call	sub_100497B0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_10017349
cmp	dword ptr [ebx], 0
mov	esi, ebx
jz	short loc_10017340
lea	ebx, [ebx+0]
mov	edx, [esp+14h+arg_0]
cmp	[esi], edx
jnz	short loc_10017338
mov	eax, [edi]
mov	ecx, [esp+14h+arg_4]
push	eax
push	ecx
call	sub_10049B90
add	esp, 8
add	esi, 4
cmp	dword ptr [esi], 0
jnz	short loc_10017320
push	ebx
call	sub_1004E7B0
add	esp, 4
mov	edx, [edi]
push	edx
call	sub_1004B900
push	eax
call	CERT_DestroyCertificate
add	esp, 8
add	edi, 4
dec	ebp
jnz	short loc_10017300
mov	ebx, [esp+14h+var_4]
pop	ebp
push	ebx
call	sub_10050550
add	esp, 4
pop	ebx
pop	edi
pop	esi
pop	ecx
retn
align 10h
public PK11_FindCertFromNickname
			
sub	esp, 14h
push	ebx
push	ebp
push	edi
xor	edi, edi
mov	[esp+20h+var_C], edi
call	sub_1004A850
mov	ebx, eax
mov	eax, [esp+20h+Str]
push	eax
mov	[esp+24h+var_8], ebx
mov	[esp+24h+var_14], edi
call	PORT_Strdup_Util
mov	ebp, eax
add	esp, 4
mov	[esp+20h+var_10], ebp
cmp	ebp, edi
jnz	short loc_100173BB
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 14h
retn
push	esi
push	3Ah		
push	ebp		
call	ds:strchr
mov	esi, eax
add	esp, 8
cmp	esi, edi
jz	short loc_10017409
lea	ecx, [esi+1]
push	ebp
push	ebx
mov	[esp+2Ch+Str], ecx
mov	byte ptr [esi],	0
call	sub_10047110
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_100173FA
mov	edx, [edi+34h]
push	edx
call	PK11_ReferenceSlot
mov	[esp+28h+var_14], eax
mov	byte ptr [esi],	3Ah
jmp	short loc_1001741A
push	0FFFFE041h
call	PORT_SetError_Util
mov	byte ptr [esi],	3Ah
jmp	short loc_1001741A
call	PK11_GetInternalKeySlot
push	eax
mov	[esp+28h+var_14], eax
call	sub_10036730
mov	edi, eax
			
add	esp, 4
test	edi, edi
jz	loc_1001759E
mov	esi, [esp+24h+var_14]
push	esi
call	PK11_IsPresent
add	esp, 4
test	eax, eax
jz	short loc_1001747D
mov	eax, [esp+24h+arg_4]
push	eax
push	1
push	esi
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001747D
push	eax
push	ebx
call	sub_10049F10
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10017479
push	0
push	0
call	sub_10050FA0
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_1001749D
push	esi
call	sub_10049AD0
mov	ebp, [esp+28h+var_10]
add	esp, 4
mov	esi, [esp+24h+var_14]
			
test	esi, esi
jz	short loc_1001748A
push	esi
call	PK11_FreeSlot
add	esp, 4
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 14h
retn
mov	ecx, [esp+24h+Str]
push	ebp
push	ecx
push	ebx
call	sub_100484A0
push	esi
push	edi
mov	eax, ebp
call	sub_100172B0
mov	eax, [esp+38h+Str]
lea	edx, [esp+38h+var_4]
push	edx
push	0
push	2
push	eax
push	0
push	edi
call	sub_1004D170
mov	ebx, eax
push	0
push	ebx
push	esi
call	sub_1004A450
push	ebx
call	sub_10050550
push	esi
call	PK11_IsInternal
add	esp, 40h
test	eax, eax
jnz	short loc_1001754A
mov	ebx, [esp+24h+Str]
push	40h		
push	ebx		
call	ds:strchr
add	esp, 8
test	eax, eax
jz	short loc_1001754A
push	ebx
call	sub_1003D180
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	short loc_1001754A
mov	ecx, [esp+24h+var_8]
push	ebp
push	ebx
push	ecx
call	sub_10048500
push	esi
push	edi
mov	eax, ebp
call	sub_100172B0
lea	edx, [esp+38h+var_4]
push	edx
push	0
push	2
push	ebx
push	0
push	edi
call	sub_1004D290
mov	edi, eax
push	0
push	edi
push	esi
call	sub_1004A450
push	edi
call	sub_10050550
push	ebx
call	PORT_Free_Util
add	esp, 40h
			
push	0
push	0
push	0
push	esi
call	sub_1004A170
push	esi
mov	edi, eax
call	sub_10049AD0
add	esp, 14h
test	edi, edi
jz	short loc_10017591
push	0
push	offset dword_100A2AD0
push	0
push	edi
call	sub_1004A690
add	esp, 10h
test	eax, eax
jz	short loc_10017588
push	eax
call	sub_1004B900
add	esp, 4
mov	[esp+24h+var_C], eax
push	edi
call	sub_100499A0
add	esp, 4
push	ebp
call	sub_10051450
mov	ebp, [esp+28h+var_10]
add	esp, 4
mov	eax, [esp+24h+var_14]
test	eax, eax
jz	short loc_100175AF
push	eax
call	PK11_FreeSlot
add	esp, 4
push	ebp
call	PORT_Free_Util
mov	eax, [esp+28h+var_C]
add	esp, 4
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 14h
retn
align 10h
sub	esp, 8
push	ebx
mov	ebx, [esp+0Ch+arg_0]
push	ebp
push	esi
push	ebx
call	CERT_GetFirstEmailAddress
mov	esi, eax
add	esp, 4
xor	ebp, ebp
test	esi, esi
jnz	short loc_100175F2
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
push	edi
mov	edi, [esp+18h+arg_8]
cmp	[edi], ebp
jnz	short loc_10017606
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
			
mov	ecx, [edi]
mov	eax, esi
lea	ebx, [ebx+0]
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10017630
test	dl, dl
jz	short loc_1001762C
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10017630
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10017610
xor	eax, eax
jmp	short loc_10017635
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_1001766C
call	ds:PR_Now
mov	[esp+18h+var_8], eax
lea	eax, [esp+18h+var_8]
push	eax
push	offset loc_1003D510
push	ebx
mov	[esp+24h+var_4], edx
mov	ebp, 1
call	CERT_DupCertificate
mov	ecx, [edi+4]
add	esp, 4
push	eax
push	ecx
call	CERT_AddCertToListSorted
add	esp, 10h
push	esi
push	ebx
call	CERT_GetNextEmailAddress
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10017680
test	ebp, ebp
jz	short loc_10017606
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
public PK11_FindCertsFromEmailAddress
sub	esp, 8
call	SECKEY_NewPrivateKeyList
mov	[esp+8+var_4], eax
test	eax, eax
jz	short loc_100176C1
mov	eax, [esp+8+arg_0]
push	eax
call	sub_1003D180
add	esp, 4
mov	[esp+8+var_8], eax
test	eax, eax
jnz	short loc_100176C7
mov	ecx, [esp+8+var_4]
push	ecx
call	CERT_DestroyCertList
add	esp, 4
xor	eax, eax
add	esp, 8
retn
push	0
lea	edx, [esp+0Ch+var_8]
push	edx
push	offset sub_100175D0
call	PK11_TraverseSlotCerts
add	esp, 0Ch
test	eax, eax
jz	short loc_100176FC
mov	eax, [esp+8+var_4]
push	eax
call	CERT_DestroyCertList
mov	ecx, [esp+0Ch+var_8]
push	ecx
call	PORT_Free_Util
add	esp, 8
xor	eax, eax
add	esp, 8
retn
mov	ecx, [esp+8+var_4]
mov	eax, [ecx]
test	eax, eax
jz	short loc_1001770A
cmp	eax, ecx
jnz	short loc_1001771B
push	ecx
call	CERT_DestroyCertList
add	esp, 4
mov	[esp+8+var_4], 0
mov	edx, [esp+8+var_8]
push	edx
call	PORT_Free_Util
mov	eax, [esp+0Ch+var_4]
add	esp, 4
add	esp, 8
retn
align 10h
public PK11_FindCertsFromNickname
			
sub	esp, 1Ch
push	ebx
push	ebp
xor	ebx, ebx
push	edi
mov	[esp+28h+var_10], ebx
mov	[esp+28h+var_14], ebx
call	sub_1004A850
mov	edi, eax
mov	eax, [esp+28h+Str]
push	eax
mov	[esp+2Ch+var_18], edi
call	PORT_Strdup_Util
mov	ebp, eax
add	esp, 4
mov	[esp+28h+var_8], ebp
cmp	ebp, ebx
jnz	short loc_1001776B
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
push	esi
push	3Ah		
push	ebp		
call	ds:strchr
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	short loc_100177BE
lea	ecx, [esi+1]
push	ebp
push	edi
mov	[esp+34h+Str], ecx
mov	[esi], bl
call	sub_10047110
mov	edi, eax
add	esp, 8
cmp	edi, ebx
jz	short loc_100177AB
mov	edx, [edi+34h]
push	edx
call	PK11_ReferenceSlot
mov	ebx, eax
mov	[esp+30h+var_1C], ebx
mov	byte ptr [esi],	3Ah
jmp	short loc_100177D3
push	0FFFFE041h
call	PORT_SetError_Util
mov	[esp+30h+var_1C], ebx
mov	byte ptr [esi],	3Ah
jmp	short loc_100177D3
call	PK11_GetInternalKeySlot
push	eax
mov	[esp+30h+var_1C], eax
call	sub_10036730
mov	ebx, [esp+30h+var_1C]
mov	edi, eax
			
add	esp, 4
test	edi, edi
jz	loc_10017910
mov	eax, [esp+2Ch+arg_4]
push	eax
push	1
push	ebx
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_10017806
mov	ecx, [esp+2Ch+var_18]
push	eax
push	ecx
call	sub_10049F10
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10017809
push	ebx
jmp	short loc_10017820
push	0
push	0
call	sub_10050FA0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_10017838
mov	edx, [esp+2Ch+var_1C]
push	edx
call	PK11_FreeSlot
push	ebp
call	PORT_Free_Util
add	esp, 8
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
mov	ebp, [esp+2Ch+Str]
mov	eax, [esp+2Ch+var_18]
push	ebx
push	ebp
push	eax
call	sub_100484A0
push	esi
push	edi
mov	eax, ebx
call	sub_100172B0
lea	ecx, [esp+40h+var_C]
push	ecx
push	0
push	2
push	ebp
push	0
push	edi
call	sub_1004D170
mov	ebp, eax
push	0
push	ebp
push	esi
call	sub_1004A450
push	ebp
call	sub_10050550
push	esi
call	PK11_IsInternal
add	esp, 40h
test	eax, eax
jnz	short loc_100178E5
mov	ebp, [esp+2Ch+Str]
push	40h		
push	ebp		
call	ds:strchr
add	esp, 8
test	eax, eax
jz	short loc_100178E5
push	ebp
call	sub_1003D180
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_100178E5
mov	edx, [esp+2Ch+var_18]
push	ebx
push	ebp
push	edx
call	sub_10048500
push	esi
push	edi
mov	eax, ebx
call	sub_100172B0
lea	eax, [esp+40h+var_C]
push	eax
push	0
push	2
push	ebp
push	0
push	edi
call	sub_1004D290
mov	edi, eax
push	0
push	edi
push	esi
call	sub_1004A450
push	edi
call	sub_10050550
push	ebp
call	PORT_Free_Util
add	esp, 40h
			
push	ebx
call	sub_10051450
push	0
push	0
push	0
push	esi
call	sub_1004A170
mov	edi, eax
push	esi
mov	[esp+44h+var_14], edi
call	sub_10049AD0
mov	ebp, [esp+44h+var_8]
mov	ebx, [esp+44h+var_1C]
add	esp, 18h
jmp	short loc_10017914
mov	edi, [esp+2Ch+var_14]
test	ebx, ebx
jz	short loc_10017921
push	ebx
call	PK11_FreeSlot
add	esp, 4
push	ebp
call	PORT_Free_Util
add	esp, 4
test	edi, edi
jz	loc_100179B1
call	ds:PR_Now
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], edx
call	SECKEY_NewPrivateKeyList
mov	esi, eax
mov	eax, [edi]
mov	[esp+2Ch+var_10], esi
test	eax, eax
jz	short loc_1001798E
push	eax
test	esi, esi
jz	short loc_10017978
call	sub_1004B900
add	esp, 4
test	eax, eax
jz	short loc_10017980
lea	ecx, [esp+2Ch+var_8]
push	ecx
push	offset loc_1003D510
push	eax
push	esi
call	CERT_AddCertToListSorted
add	esp, 10h
jmp	short loc_10017980
call	sub_10046070
add	esp, 4
			
mov	eax, [edi+4]
add	edi, 4
test	eax, eax
jnz	short loc_10017951
mov	edi, [esp+2Ch+var_14]
test	esi, esi
jz	short loc_100179A8
cmp	dword ptr [esi], 0
jnz	short loc_100179A8
push	esi
call	CERT_DestroyCertList
add	esp, 4
mov	[esp+2Ch+var_10], 0
			
push	edi
call	sub_10050550
add	esp, 4
mov	eax, [esp+2Ch+var_10]
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 1Ch
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
push	eax
call	CERT_ExtractPublicKey
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_100179D6
pop	esi
retn
mov	eax, [esi+4]
dec	eax
push	edi
cmp	eax, 5		
ja	short loc_10017A57 
jmp	ds:off_10017A68[eax*4] 
			
lea	ecx, [esi+14h]	
push	ecx
call	SECITEM_DupItem_Util
add	esp, 4
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
lea	edx, [esi+38h]	
push	edx
call	SECITEM_DupItem_Util
add	esp, 4
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
lea	eax, [esi+2Ch]	
push	eax
call	SECITEM_DupItem_Util
add	esp, 4
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
lea	ecx, [esi+20h]	
push	ecx
call	SECITEM_DupItem_Util
add	esp, 4
push	esi
mov	edi, eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
			
push	esi		
xor	edi, edi
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
align 4
dd offset loc_10017A03	
dd offset loc_10017A57
dd offset loc_10017A1F
dd offset loc_10017A57
dd offset loc_10017A3B
public PK11_ImportCert
			
sub	esp, 30h
mov	eax, [esp+30h+arg_0]
push	ebx
push	ebp
push	esi
push	edi
push	eax
call	sub_10036730
mov	ebp, [esp+44h+arg_4]
push	ebp
mov	[esp+48h+var_28], eax
call	sub_100179C0
mov	esi, eax
xor	ebx, ebx
add	esp, 8
cmp	esi, ebx
jnz	short loc_10017AB2
xor	esi, esi
mov	[esp+40h+var_2C], esi
jmp	short loc_10017ACB
push	esi
call	PK11_MakeIDFromPubKey
push	1
push	esi
mov	[esp+4Ch+var_2C], eax
call	SECITEM_FreeItem_Util
mov	esi, [esp+4Ch+var_2C]
add	esp, 0Ch
mov	[esp+40h+var_24], ebx
mov	[esp+40h+var_20], ebx
mov	[esp+40h+var_1C], ebx
mov	[esp+40h+var_18], ebx
mov	[esp+40h+var_14], ebx
mov	[esp+40h+var_10], ebx
mov	[esp+40h+var_C], ebx
mov	[esp+40h+var_8], ebx
mov	[esp+40h+var_4], ebx
cmp	esi, ebx
jz	loc_10017C40
cmp	[esp+40h+var_28], ebx
jnz	short loc_10017B0F
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10017C40
mov	ecx, [esp+40h+arg_0]
push	ecx
call	PK11_IsInternal
add	esp, 4
test	eax, eax
jz	short loc_10017B32
mov	eax, [ebp+118h]
cmp	eax, ebx
jz	short loc_10017B32
cmp	[eax], bl
jz	short loc_10017B32
mov	[esp+40h+var_24], eax
			
mov	eax, [ebp+15Ch]
cmp	eax, ebx
jz	short loc_10017B42
mov	[esp+40h+var_30], eax
jmp	short loc_10017B57
push	ebp
call	sub_1004B930
add	esp, 4
mov	[esp+40h+var_30], eax
cmp	eax, ebx
jz	loc_10017C40
mov	edx, [esi+4]
mov	ecx, [esi+8]
push	edx		
push	ecx		
lea	edx, [eax+28h]
mov	eax, [eax]
push	edx		
push	eax		
call	sub_10050C70
mov	eax, [esp+50h+var_30]
add	esp, 10h
cmp	[eax+28h], ebx
jz	loc_10017C40
mov	edi, [esp+40h+arg_8]
mov	ebp, [esp+40h+arg_C]
cmp	edi, ebx
jz	short loc_10017BD9
push	10h
push	ebx
call	sub_100504B0
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	loc_10017C3C
mov	ecx, [esp+40h+var_28]
push	ecx
call	sub_1004C2A0
mov	[esi+4], eax
mov	[esi], edi
mov	dword ptr [esi+8], 1
mov	eax, [esp+44h+var_30]
lea	edx, [eax+40h]
push	edx
add	eax, 28h
push	eax
push	ebp
push	ebx
push	esi
call	sub_10050180
push	esi
mov	edi, eax
call	sub_1004E6D0
add	esp, 1Ch
cmp	edi, ebx
jnz	short loc_10017C3C
mov	eax, [esp+40h+var_30]
mov	ecx, [esp+40h+var_24]
push	1
push	ecx
lea	edx, [eax+48h]
push	edx
lea	ecx, [eax+40h]
push	ecx
lea	edx, [eax+38h]
push	edx
mov	edx, [esp+54h+var_28]
lea	ecx, [eax+30h]
push	ecx
push	ebp
add	eax, 28h
push	eax
push	1
push	ebx
push	edx
call	sub_1004DE50
mov	edi, eax
add	esp, 2Ch
cmp	edi, ebx
jnz	short loc_10017C74
call	sub_10050A60
cmp	eax, ds:dword_100A7E64
jnz	short loc_10017C3C
push	0FFFFE08Ah
call	PORT_SetError_Util
mov	eax, [esp+44h+var_2C]
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
			
mov	esi, [esp+40h+var_2C]
			
call	sub_10043350
push	1
push	esi
call	SECITEM_FreeItem_Util
add	esp, 8
call	PORT_GetError_Util
cmp	eax, 0FFFFE09Bh
jz	short loc_10017C69
push	0FFFFE018h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
mov	eax, [esp+40h+var_30]
cmp	[eax+1Ch], ebx
jz	short loc_10017CD1
mov	esi, [eax+1Ch]
mov	edx, [esi+14h]
lea	ecx, [esp+40h+var_20]
push	ecx
push	edx
call	sub_10048AB0
mov	eax, [esp+48h+var_30]
mov	ecx, [esi+14h]
push	eax
push	ecx
call	sub_10048A80
mov	ecx, [esi+14h]
lea	edx, [esp+50h+var_10]
push	edx
lea	eax, [esp+54h+var_20]
push	eax
push	ecx
call	sub_10048AC0
mov	eax, [esp+5Ch+arg_4]
mov	edx, [esp+5Ch+var_30]
mov	[edx+1Ch], ebx
mov	[eax+150h], ebx
mov	dword ptr [eax+14Ch], 1
mov	eax, [esp+5Ch+var_30]
add	esp, 1Ch
push	edi
push	eax
call	sub_100494A0
mov	eax, [esp+48h+var_30]
push	eax
call	sub_10046950
add	esp, 0Ch
lea	ecx, [esp+40h+var_30]
push	1
push	ecx
call	sub_1004A850
push	eax
call	sub_100480B0
mov	edx, [esp+4Ch+var_30]
push	edx
call	sub_1004B8D0
mov	eax, [esp+50h+var_30]
push	eax
call	sub_10046070
mov	ecx, [esp+54h+var_2C]
push	1
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 1Ch
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 30h
retn
align 10h
public PK11_ImportDERCert
mov	eax, [esp+arg_4]
push	esi
push	1		
push	0		
push	0		
push	eax		
call	CERT_GetDefaultCertDB
push	eax		
call	CERT_NewTempCertificate
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	short loc_10017D55
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [esp+4+arg_10]
mov	edx, [esp+4+arg_C]
mov	eax, [esp+4+arg_8]
push	edi
push	ecx
mov	ecx, [esp+0Ch+arg_0]
push	edx
push	eax
push	esi
push	ecx
call	PK11_ImportCert
push	esi
mov	edi, eax
call	CERT_DestroyCertificate
add	esp, 18h
mov	eax, edi
pop	edi
pop	esi
retn
			
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
cmp	[esi+17Ch], edi
jnz	short loc_10017DD4
mov	eax, [esi+180h]
test	eax, eax
jz	short loc_10017DAB
movzx	ecx, word ptr [edi+80h]
cmp	[esi+178h], ecx
jz	short loc_10017DE7
mov	edx, [esp+8+arg_C]
mov	eax, [esp+8+arg_8]
push	edx
push	eax
push	edi
call	sub_1002C4F0
mov	[esi+180h], eax
movzx	ecx, word ptr [edi+80h]
add	esp, 0Ch
pop	edi
mov	[esi+178h], ecx
pop	esi
retn
mov	edx, [esp+8+arg_C]
mov	eax, [esp+8+arg_8]
push	edx
push	eax
push	edi
call	sub_1002C4F0
add	esp, 0Ch
pop	edi
pop	esi
retn
align 10h
public PK11_FindPrivateKeyFromCert
sub	esp, 1Ch
push	ebx
mov	ebx, [esp+20h+arg_8]
push	esi
mov	esi, [esp+24h+arg_0]
push	edi
mov	edi, [esp+28h+arg_4]
mov	eax, [edi+40h]
mov	ecx, [edi+44h]
push	ebx
lea	edx, [esp+2Ch+var_1C]
push	1
push	esi
mov	[esp+34h+var_1C], 1
mov	[esp+34h+var_18], 11h
mov	[esp+34h+var_14], eax
mov	[esp+34h+var_10], ecx
mov	[esp+34h+var_C], 0
mov	[esp+34h+var_8], edx
mov	[esp+34h+var_4], 4
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jz	short loc_10017E51
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
push	2
lea	eax, [esp+2Ch+var_18]
push	eax
push	edi
push	esi
call	sub_10017D80
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	short loc_10017E48
push	ebp
push	ebx
push	esi
call	sub_100168D0
push	3
push	edi
push	esi
mov	ebp, eax
call	sub_1002C6E0
add	esp, 14h
test	eax, eax
jnz	short loc_10017EC3
test	ebp, ebp
jz	short loc_10017EB9
call	PORT_GetError_Util
cmp	eax, 0FFFFD003h
jz	short loc_10017E99
cmp	eax, 0FFFFE09Bh
jnz	short loc_10017EB9
push	ebx
push	1
push	esi
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jnz	short loc_10017EB9
push	3
push	edi
push	esi
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10017EC3
			
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
			
push	ebx
push	eax
push	1
push	0
push	esi
call	sub_10012FF0
add	esp, 14h
pop	ebp
pop	edi
pop	esi
pop	ebx
add	esp, 1Ch
retn
align 10h
public PK11_KeyForCertExists
			
			
sub	esp, 8
mov	eax, [esp+8+arg_0]
push	ebx
push	esi
push	edi
push	eax
mov	[esp+18h+var_4], 0
call	sub_100179C0
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10017F05
xor	ebx, ebx
jmp	short loc_10017F18
push	esi
call	PK11_MakeIDFromPubKey
push	1
push	esi
mov	ebx, eax
call	SECITEM_FreeItem_Util
add	esp, 0Ch
mov	ecx, [esp+14h+arg_8]
push	ecx
push	1
push	0
push	0FFFFFFFFh
call	PK11_GetAllTokens
add	esp, 10h
mov	edi, eax
mov	[esp+14h+var_8], edi
test	ebx, ebx
jz	loc_1001800B
test	edi, edi
jz	loc_10017FF7
mov	esi, [edi]
test	esi, esi
jz	loc_10017FDB
push	ebp
lea	esp, [esp+0]
mov	edx, [esp+18h+arg_8]
mov	eax, [esi+8]
push	edx
push	eax
call	sub_100168D0
mov	ecx, [esi+8]
push	ebx
push	ecx
mov	ebp, eax
call	sub_10013990
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_10017FBC
test	ebp, ebp
jz	short loc_10017FB4
call	PORT_GetError_Util
cmp	eax, 0FFFFD003h
jz	short loc_10017F8A
cmp	eax, 0FFFFE09Bh
jnz	short loc_10017FB4
mov	edx, [esp+18h+arg_8]
mov	eax, [esi+8]
push	edx
push	1
push	eax
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jnz	short loc_10017FB4
mov	ecx, [esi+8]
push	ebx
push	ecx
call	sub_10013990
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10017FBC
			
mov	esi, [esi]
test	esi, esi
jnz	short loc_10017F50
jmp	short loc_10017FD6
			
mov	edx, [esi+8]
push	edx
call	PK11_ReferenceSlot
mov	[esp+1Ch+var_4], eax
mov	eax, [esp+1Ch+arg_4]
add	esp, 4
test	eax, eax
jz	short loc_10017FD6
mov	[eax], edi
			
mov	edi, [esp+18h+var_8]
pop	ebp
push	1
push	ebx
call	SECITEM_FreeItem_Util
push	edi
call	PK11_FreeSlotList
mov	eax, [esp+20h+var_4]
add	esp, 0Ch
pop	edi
pop	esi
pop	ebx
add	esp, 8
retn
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 8
retn
test	edi, edi
jz	short loc_10018018
push	edi
call	PK11_FreeSlotList
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
public PK11_KeyForDERCertExists
mov	eax, [esp+arg_0]
push	esi
push	0		
push	0		
push	eax		
call	__CERT_DecodeDERCertificate_0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1001804A
pop	esi
retn
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_4]
push	edi
push	ecx
push	edx
push	esi
call	PK11_KeyForCertExists
push	esi
mov	edi, eax
call	CERT_DestroyCertificate
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public PK11_ImportCertForKey
			
push	ecx
mov	eax, [esp+4+arg_8]
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
push	eax
lea	ecx, [esp+10h+var_4]
push	ecx
push	edi
call	PK11_KeyForCertExists
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_100180B9
mov	edx, [esp+0Ch+arg_4]
mov	eax, [esp+0Ch+var_4]
push	0
push	edx
push	eax
push	edi
push	esi
call	PK11_ImportCert
add	esp, 14h
test	eax, eax
jz	short loc_100180C6
push	esi
call	PK11_FreeSlot
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
pop	ecx
retn
push	0FFFFE018h
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ecx
retn
align 10h
public PK11_ImportDERCertForKey
mov	eax, [esp+arg_0]
push	esi
push	1		
push	0		
push	0		
push	eax		
call	CERT_GetDefaultCertDB
push	eax		
call	CERT_NewTempCertificate
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	short loc_100180F2
pop	esi
retn
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_4]
push	edi
push	ecx
push	edx
push	esi
call	PK11_ImportCertForKey
push	esi
mov	edi, eax
call	CERT_DestroyCertificate
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
push	ecx
mov	eax, [esp+4+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+0Ch+arg_C]
push	edi
push	ebp
xor	edi, edi
push	1
push	edi
push	0FFFFFFFFh
mov	[esp+20h+var_4], edi
mov	[eax], edi
call	PK11_GetAllTokens
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jnz	short loc_1001814F
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
push	esi
mov	esi, [ebx]
test	esi, esi
jz	short loc_100181A1
mov	ecx, [esi+8]
push	ebp
push	1
push	ecx
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_10018185
mov	edx, [esp+14h+arg_8]
mov	eax, [esp+14h+arg_4]
mov	ecx, [esi+8]
push	edx
push	eax
push	ecx
call	sub_1002C4F0
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_10018191
mov	esi, [esi]
test	esi, esi
jnz	short loc_10018156
mov	esi, [esp+14h+var_4]
jmp	short loc_100181A3
mov	edx, [esi+8]
push	edx
call	PK11_ReferenceSlot
add	esp, 4
mov	esi, eax
jmp	short loc_100181A3
mov	esi, edi
			
push	ebx
call	PK11_FreeSlotList
add	esp, 4
test	esi, esi
jnz	short loc_100181B8
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
mov	eax, [esp+14h+arg_0]
mov	[eax], esi
pop	esi
mov	eax, edi
pop	edi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
sub	esp, 18h
push	ebx
push	ebp
push	esi
mov	[esp+24h+var_18], 0
call	sub_1004A850
mov	esi, [esp+24h+arg_4]
mov	ebp, eax
mov	eax, [esp+24h+arg_0]
mov	ebx, [eax+13Ch]
test	esi, esi
jz	loc_10018348
cmp	dword ptr [esi+4], 0
jz	loc_10018348
mov	ecx, [esi+8]
test	ecx, ecx
jz	loc_10018348
cmp	dword ptr [esi+18h], 0
jz	loc_10018348
mov	eax, [esi+1Ch]
test	eax, eax
jz	loc_10018348
cmp	ecx, 1000h
ja	loc_10018348
cmp	eax, 14h
ja	loc_10018348
test	ebx, ebx
jnz	short loc_10018254
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
push	edi
push	0
push	0
call	NSS_Get_SEC_IntegerTemplate_Util
push	eax
lea	ecx, [esi+14h]
push	ecx
push	0
push	0
call	SEC_ASN1EncodeItem_Util
mov	edi, eax
add	esp, 18h
test	edi, edi
jz	loc_1001833E
mov	edx, [esi+4]
mov	eax, [esi+8]
mov	[esp+28h+var_8], edx
mov	[esp+28h+var_4], eax
mov	ecx, [edi+4]
mov	[esp+28h+var_10], ecx
mov	edx, [edi+8]
push	ebx
mov	[esp+2Ch+var_C], edx
call	PK11_NeedLogin
add	esp, 4
test	eax, eax
jz	loc_1001832D
lea	ecx, [esp+28h+var_14]
push	ecx
push	3
lea	edx, [esp+30h+var_10]
push	edx
lea	ecx, [esp+34h+var_8]
push	ecx
push	eax
push	ebx
call	sub_1004D400
push	1
push	edi
mov	esi, eax
call	SECITEM_FreeItem_Util
add	esp, 20h
test	esi, esi
jz	short loc_1001832D
push	2
push	0
push	ebp
push	esi
push	0
call	sub_1004A230
mov	edi, eax
add	esp, 14h
test	edi, edi
jz	short loc_1001831C
push	edi
call	sub_10045FA0
add	esp, 4
mov	[esp+28h+var_18], eax
test	eax, eax
jz	short loc_10018324
push	1
lea	edx, [esp+2Ch+var_18]
push	edx
push	ebp
call	sub_100480B0
mov	eax, [esp+34h+var_18]
push	eax
call	sub_1004B8F0
add	esp, 10h
test	eax, eax
jz	short loc_1001832D
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 18h
retn
push	esi
call	sub_1004E6D0
jmp	short loc_1001832A
push	edi
call	sub_10049400
add	esp, 4
			
mov	eax, [esp+28h+var_18]
test	eax, eax
jz	short loc_1001833E
push	eax
call	sub_10046070
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
align 10h
sub	esp, 2Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2Ch+var_4], eax
mov	eax, [esp+2Ch+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+34h+arg_4]
push	esi
push	edi
push	ebp
xor	esi, esi
push	1
mov	edi, ecx
mov	ebx, edx
push	esi
push	0FFFFFFFFh
mov	[esp+4Ch+var_18], eax
mov	[esp+4Ch+var_14], edi
mov	[esp+4Ch+var_20], ebx
mov	[esp+4Ch+var_28], esi
mov	[eax], esi
call	PK11_GetAllTokens
add	esp, 10h
mov	[esp+3Ch+var_24], eax
test	eax, eax
jnz	short loc_100183BD
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+2Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
mov	[ebx], esi
mov	ebx, [eax]
mov	[esp+3Ch+var_2C], ebx
test	ebx, ebx
jz	loc_10018479
lea	ecx, [ecx+0]
mov	eax, [ebx+8]
push	ebp
push	1
push	eax
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001844A
mov	esi, [edi]
mov	ecx, [ebx+8]
mov	[esp+3Ch+var_1C], ecx
test	esi, esi
jz	short loc_1001843E
mov	ebx, edi
mov	edx, [esi+0Ch]
mov	eax, [esp+3Ch+var_1C]
push	ebp
push	edx
push	eax
call	sub_100181D0
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_1001842C
lea	ecx, [esp+3Ch+var_10]
push	ecx
push	edi
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_10018423
test	[esp+3Ch+var_C], 40h
jnz	short loc_10018459
push	edi
call	CERT_DestroyCertificate
add	esp, 4
mov	esi, [ebx+4]
add	ebx, 4
test	esi, esi
jnz	short loc_100183F2
mov	ebx, [esp+3Ch+var_2C]
mov	edi, [esp+3Ch+var_14]
mov	edx, [esp+3Ch+var_20]
mov	dword ptr [edx], 0
xor	esi, esi
mov	ebx, [ebx]
mov	[esp+3Ch+var_2C], ebx
test	ebx, ebx
jz	short loc_10018475
jmp	loc_100183D0
mov	eax, [esp+3Ch+var_20]
mov	ecx, [esp+3Ch+var_2C]
mov	[eax], esi
mov	edx, [ecx+8]
push	edx
mov	esi, edi
call	PK11_ReferenceSlot
add	esp, 4
mov	[esp+3Ch+var_28], eax
mov	eax, [esp+3Ch+var_24]
push	eax
call	PK11_FreeSlotList
mov	eax, [esp+40h+var_28]
add	esp, 4
test	eax, eax
jz	loc_100183A8
mov	ecx, [esp+3Ch+var_18]
mov	[ecx], eax
mov	ecx, [esp+3Ch+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
align 10h
public PK11_FindCertByIssuerAndSN
			
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 14h
push	ebx
push	esi
mov	esi, [ebp+arg_4]
push	edi
xor	edi, edi
test	esi, esi
jz	loc_10018602
cmp	[esi+4], edi
jz	loc_10018602
mov	ecx, [esi+8]
test	ecx, ecx
jz	loc_10018602
cmp	[esi+18h], edi
jz	loc_10018602
mov	eax, [esi+1Ch]
test	eax, eax
jz	loc_10018602
cmp	ecx, 1000h
ja	loc_10018602
cmp	eax, 14h
ja	loc_10018602
mov	eax, [ebp+arg_0]
test	eax, eax
jz	short loc_1001850F
mov	[eax], edi
push	0
push	0
call	NSS_Get_SEC_IntegerTemplate_Util
push	eax
lea	eax, [esi+14h]
push	eax
push	0
push	0
call	SEC_ASN1EncodeItem_Util
mov	ebx, eax
add	esp, 18h
test	ebx, ebx
jz	loc_1001860F
mov	ecx, [esi+4]
mov	edx, [esi+8]
mov	[esp+20h+var_8], ecx
mov	[esp+20h+var_4], edx
mov	eax, [ebx+4]
mov	[esp+20h+var_10], eax
mov	ecx, [ebx+8]
mov	[esp+20h+var_C], ecx
call	sub_1004A860
lea	edx, [esp+20h+var_10]
push	edx
lea	ecx, [esp+24h+var_8]
push	ecx
push	eax
call	sub_10046DB0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_10018585
push	1
push	ebx
call	SECITEM_FreeItem_Util
push	esi
call	sub_1004B900
add	esp, 0Ch
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
test	edi, edi
jz	short loc_10018594
push	edi
call	CERT_DestroyCertificate
add	esp, 4
xor	edi, edi
lea	edx, [esp+20h+var_10]
push	edx
lea	eax, [esp+24h+var_8]
push	eax
call	sub_1004A850
push	eax
call	sub_10047500
add	esp, 0Ch
test	eax, eax
jz	short loc_100185D2
push	eax
call	sub_1004B900
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_100185EE
mov	ecx, [edi+17Ch]
push	ecx
call	PK11_IsPresent
add	esp, 4
test	eax, eax
jz	short loc_10018585
test	edi, edi
jz	short loc_100185EE
mov	esi, [ebp+arg_0]
test	esi, esi
jz	short loc_100185EE
mov	edx, [edi+17Ch]
push	edx
call	PK11_ReferenceSlot
add	esp, 4
mov	[esi], eax
			
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
			
sub	esp, 1Ch
push	esi
mov	esi, [esp+20h+arg_0]
mov	ecx, [esi+40h]
mov	edx, [esi+44h]
lea	eax, [esp+20h+var_1C]
mov	[esp+20h+var_14], eax
mov	eax, [esi+17Ch]
push	edi
mov	[esp+24h+var_1C], 1
mov	[esp+24h+var_18], 0
mov	[esp+24h+var_10], 4
mov	[esp+24h+var_C], 11h
mov	[esp+24h+var_8], ecx
mov	[esp+24h+var_4], edx
test	eax, eax
jz	short loc_1001869D
push	2
lea	ecx, [esp+28h+var_18]
push	ecx
push	esi
push	eax
call	sub_10017D80
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	short loc_1001869D
mov	edx, [esi+17Ch]
push	edx
call	PK11_ReferenceSlot
mov	ecx, [esp+28h+arg_8]
add	esp, 4
mov	[ecx], eax
mov	eax, edi
pop	edi
pop	esi
add	esp, 1Ch
retn
			
mov	edx, [esp+24h+arg_4]
push	ebx
mov	ebx, [esp+28h+arg_8]
push	edx
push	2
lea	eax, [esp+30h+var_18]
push	eax
push	ebx
call	sub_10018120
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	short loc_100186F4
cmp	dword ptr [esi+17Ch], 0
jnz	short loc_100186F4
mov	ecx, [ebx]
push	ecx
call	PK11_ReferenceSlot
mov	[esi+17Ch], eax
mov	[esi+180h], edi
mov	dword ptr [esi+184h], 1
movzx	edx, word ptr [eax+80h]
add	esp, 4
mov	[esi+178h], edx
			
pop	ebx
mov	eax, edi
pop	edi
pop	esi
add	esp, 1Ch
retn
align 10h
public PK11_FindKeyByAnyCert
			
sub	esp, 8
mov	ecx, [esp+8+arg_0]
push	ebx
mov	ebx, [esp+0Ch+arg_4]
push	esi
push	edi
lea	eax, [esp+14h+var_8]
push	eax
xor	esi, esi
push	ebx
push	ecx
mov	[esp+20h+var_8], esi
mov	[esp+20h+var_4], esi
call	sub_10018620
mov	edi, eax
add	esp, 0Ch
cmp	edi, esi
jnz	short loc_10018736
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 8
retn
mov	esi, [esp+14h+var_8]
push	ebp
push	ebx
push	esi
call	sub_100168D0
push	3
push	edi
push	esi
mov	ebp, eax
call	sub_1002C6E0
add	esp, 14h
test	eax, eax
jnz	short loc_1001878B
test	ebp, ebp
jz	short loc_1001879E
call	PORT_GetError_Util
cmp	eax, 0FFFFD003h
jz	short loc_1001876B
cmp	eax, 0FFFFE09Bh
jnz	short loc_1001879E
push	ebx
push	1
push	esi
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001879E
push	3
push	edi
push	esi
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jz	short loc_1001879E
push	ebx
push	eax
push	1
push	0
push	esi
call	sub_10012FF0
add	esp, 14h
mov	[esp+18h+var_4], eax
			
pop	ebp
test	esi, esi
jz	short loc_100187AC
push	esi
call	PK11_FreeSlot
add	esp, 4
mov	eax, [esp+14h+var_4]
pop	edi
pop	esi
pop	ebx
add	esp, 8
retn
align 10h
public PK11_TraverseCertsForSubjectInSlot
sub	esp, 0Ch
push	ebx
push	ebp
mov	[esp+14h+var_C], 0
call	sub_1004A850
mov	ebp, eax
mov	eax, [esp+14h+arg_0]
mov	ecx, [eax+58h]
mov	edx, [eax+5Ch]
mov	eax, [esp+14h+arg_4]
push	eax
mov	[esp+18h+var_8], ecx
mov	[esp+18h+var_4], edx
call	sub_10036730
mov	ebx, eax
push	ebx
call	sub_1004DBD0
add	esp, 8
test	eax, eax
jnz	short loc_10018805
pop	ebp
pop	ebx
add	esp, 0Ch
retn
push	esi
push	0
push	ebp
call	sub_10049F10
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10018821
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
push	edi
push	0
push	0
call	sub_10050FA0
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10018848
push	esi
call	sub_10049AD0
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
push	edi
lea	ecx, [esp+20h+var_8]
push	ecx
push	ebp
call	sub_10048440
push	esi
push	ebx
mov	eax, edi
call	sub_100172B0
lea	edx, [esp+30h+var_C]
push	edx
push	0
push	2
lea	eax, [esp+3Ch+var_8]
push	eax
push	0
push	ebx
call	sub_1004D0A0
mov	ebx, eax
push	0
push	ebx
push	esi
call	sub_1004A450
push	ebx
call	sub_10050550
push	edi
call	sub_10051450
add	esp, 40h
push	0
push	0
push	0
push	esi
call	sub_1004A170
push	esi
mov	edi, eax
call	sub_10049AD0
add	esp, 14h
test	edi, edi
jz	short loc_100188EC
cmp	dword ptr [edi], 0
mov	esi, edi
jz	short loc_100188E3
mov	ebx, [esp+1Ch+arg_C]
mov	ebp, [esp+1Ch+arg_8]
mov	ecx, [esi]
push	ecx
call	sub_1004B8F0
add	esp, 4
test	eax, eax
jz	short loc_100188D1
push	ebx
push	eax
call	ebp
add	esp, 8
test	eax, eax
jnz	short loc_100188DB
add	esi, 4
cmp	dword ptr [esi], 0
jnz	short loc_100188B7
jmp	short loc_100188E3
mov	[esp+1Ch+var_C], 0FFFFFFFFh
			
push	edi
call	sub_100499A0
add	esp, 4
mov	eax, [esp+1Ch+var_C]
pop	edi
pop	esi
neg	eax
pop	ebp
sbb	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
public PK11_TraverseCertsForNicknameInSlot
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
push	ebx
push	edi
xor	edi, edi
push	eax
mov	[esp+18h+var_4], edi
mov	[esp+18h+var_8], edi
call	sub_10036730
mov	ebx, eax
push	ebx
call	sub_1004DBD0
add	esp, 8
test	eax, eax
jnz	short loc_1001892E
pop	edi
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+14h+arg_0]
mov	ecx, [eax+8]
mov	eax, [eax+4]
cmp	byte ptr [eax+ecx-1], 0
jz	short loc_10018954
push	ecx		
push	eax		
push	5		
push	edi		
call	sub_10050DB0
add	esp, 10h
mov	[esp+14h+var_8], 1
push	ebp
push	esi
mov	[esp+1Ch+var_C], eax
call	sub_1004A850
mov	ebp, eax
push	edi
push	ebp
call	sub_10049F10
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10018983
push	0
push	0
call	sub_10050FA0
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_100189BC
cmp	[esp+1Ch+var_8], 0
jz	short loc_10018997
mov	ecx, [esp+1Ch+var_C]
push	ecx
call	sub_10050550
add	esp, 4
test	esi, esi
jz	short loc_100189A4
push	esi
call	sub_10049AD0
add	esp, 4
test	edi, edi
jz	short loc_100189B1
push	edi
call	sub_10051450
add	esp, 4
pop	esi
pop	ebp
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	edx, [esp+1Ch+var_C]
push	edi
push	edx
push	ebp
call	sub_100484A0
push	esi
push	ebx
mov	eax, edi
call	sub_100172B0
mov	ecx, [esp+30h+var_C]
lea	eax, [esp+30h+var_4]
push	eax
push	0
push	2
push	ecx
push	0
push	ebx
call	sub_1004D170
mov	ebx, eax
push	0
push	ebx
push	esi
call	sub_1004A450
push	ebx
call	sub_10050550
push	edi
call	sub_10051450
add	esp, 40h
push	0
push	0
push	0
push	esi
call	sub_1004A170
push	esi
mov	edi, eax
call	sub_10049AD0
add	esp, 14h
test	edi, edi
jz	short loc_10018A65
cmp	dword ptr [edi], 0
mov	esi, edi
jz	short loc_10018A5C
mov	ebx, [esp+1Ch+arg_C]
mov	ebp, [esp+1Ch+arg_8]
jmp	short loc_10018A30
align 10h
			
mov	edx, [esi]
push	edx
call	sub_1004B8F0
add	esp, 4
test	eax, eax
jz	short loc_10018A4A
push	ebx
push	eax
call	ebp
add	esp, 8
test	eax, eax
jnz	short loc_10018A54
add	esi, 4
cmp	dword ptr [esi], 0
jnz	short loc_10018A30
jmp	short loc_10018A5C
mov	[esp+1Ch+var_4], 0FFFFFFFFh
			
push	edi
call	sub_100499A0
add	esp, 4
cmp	[esp+1Ch+var_8], 0
jz	short loc_10018A79
mov	eax, [esp+1Ch+var_C]
push	eax
call	sub_10050550
add	esp, 4
mov	eax, [esp+1Ch+var_4]
pop	esi
pop	ebp
neg	eax
pop	edi
sbb	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
			
push	ecx
push	ebx
push	ebp
call	sub_1004A850
mov	ebp, eax
mov	eax, [esp+0Ch+arg_0]
push	eax
call	sub_10036730
mov	ebx, eax
push	ebx
call	sub_1004DBD0
add	esp, 8
test	eax, eax
jnz	short loc_10018AB7
pop	ebp
pop	ebx
pop	ecx
retn
push	esi
push	0
push	ebp
call	sub_10049F10
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10018AD1
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
push	edi
push	0
push	0
call	sub_10050FA0
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10018AF6
push	esi
call	sub_10049AD0
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
push	edi
push	ebp
call	sub_100486F0
push	esi
push	ebx
mov	eax, edi
call	sub_100172B0
lea	ecx, [esp+24h+var_4]
push	ecx
push	0
push	2
push	1
push	0
push	ebx
call	sub_1004CFD0
mov	ebx, eax
push	0
push	ebx
push	esi
call	sub_1004A450
push	ebx
call	sub_10050550
push	edi
call	sub_10051450
push	0
push	0
push	0
push	esi
call	sub_1004A170
add	esp, 4Ch
push	esi
mov	edi, eax
call	sub_10049AD0
add	esp, 4
test	edi, edi
jz	short loc_10018B95
cmp	dword ptr [edi], 0
mov	esi, edi
jz	short loc_10018B8C
mov	ebx, [esp+14h+arg_8]
mov	ebp, [esp+14h+arg_4]
lea	ecx, [ecx+0]
mov	edx, [esi]
push	edx
call	sub_1004B8F0
add	esp, 4
test	eax, eax
jz	short loc_10018B7A
push	ebx
push	eax
call	ebp
add	esp, 8
test	eax, eax
jnz	short loc_10018B84
add	esi, 4
cmp	dword ptr [esi], 0
jnz	short loc_10018B60
jmp	short loc_10018B8C
mov	[esp+14h+var_4], 0FFFFFFFFh
			
push	edi
call	sub_100499A0
add	esp, 4
mov	eax, [esp+14h+var_4]
pop	edi
pop	esi
neg	eax
pop	ebp
sbb	eax, eax
pop	ebx
pop	ecx
retn
align 10h
public PK11_FindCertFromDERCertItem
			
			
sub	esp, 8
push	esi
push	edi
call	sub_1004A850
mov	esi, [esp+10h+arg_0]
push	esi
call	sub_10036730
mov	edi, eax
mov	eax, [esp+14h+arg_4]
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	eax, [esp+14h+arg_8]
push	eax
push	1
push	esi
mov	[esp+20h+var_8], ecx
mov	[esp+20h+var_4], edx
call	sub_10016B90
add	esp, 10h
test	eax, eax
jz	short loc_10018BFD
push	esi
call	PK11_FreeSlot
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
add	esp, 8
retn
push	0
push	2
lea	ecx, [esp+18h+var_8]
push	ecx
push	0
push	edi
call	sub_1004D600
add	esp, 14h
test	eax, eax
jz	short loc_10018BF5
mov	edx, [eax]
push	0
push	edx
push	esi
call	sub_10017070
add	esp, 0Ch
pop	edi
pop	esi
add	esp, 8
retn
align 10h
			
test	edi, edi
jz	loc_10018CD3
test	eax, eax
jz	loc_10018CD3
push	ebx
push	esi
push	eax
call	sub_100179C0
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	short loc_10018C68
push	ebx
call	PK11_MakeIDFromPubKey
push	1
push	ebx
mov	esi, eax
call	SECITEM_FreeItem_Util
add	esp, 0Ch
test	esi, esi
jnz	short loc_10018C6D
pop	esi
xor	eax, eax
pop	ebx
retn
mov	eax, [esp+8+arg_0]
push	ebp
push	eax
push	edi
call	sub_100168D0
push	esi
push	edi
mov	ebp, eax
call	sub_10013990
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jnz	short loc_10018CC2
test	ebp, ebp
jz	short loc_10018CC2
call	PORT_GetError_Util
cmp	eax, 0FFFFD003h
jz	short loc_10018CA2
cmp	eax, 0FFFFE09Bh
jnz	short loc_10018CC2
mov	ecx, [esp+0Ch+arg_0]
push	ecx
push	1
push	edi
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jnz	short loc_10018CC2
push	esi
push	edi
call	sub_10013990
add	esp, 8
mov	ebx, eax
			
push	1
push	esi
call	SECITEM_ZfreeItem_Util
add	esp, 8
pop	ebp
pop	esi
mov	eax, ebx
pop	ebx
retn
			
xor	eax, eax
retn
align 10h
public PK11_FindKeyByDERCert
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jz	short loc_10018D18
mov	eax, [esp+4+arg_4]
test	eax, eax
jz	short loc_10018D18
push	esi
mov	esi, [esp+8+arg_8]
push	esi
call	sub_10018C30
add	esp, 4
test	eax, eax
jnz	short loc_10018D06
pop	esi
pop	edi
retn
push	esi
push	eax
push	1
push	0
push	edi
call	sub_10012FF0
add	esp, 14h
pop	esi
pop	edi
retn
			
xor	eax, eax
pop	edi
retn
align 10h
public PK11_ImportCertForKeyToSlot
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
test	edi, edi
jz	short loc_10018D63
mov	esi, [esp+0Ch+arg_4]
test	esi, esi
jz	short loc_10018D63
mov	ebx, [esp+0Ch+arg_8]
test	ebx, ebx
jz	short loc_10018D63
mov	eax, [esp+0Ch+arg_10]
push	eax
mov	eax, esi
call	sub_10018C30
add	esp, 4
test	eax, eax
jz	short loc_10018D63
mov	ecx, [esp+0Ch+arg_C]
push	ecx
push	ebx
push	eax
push	esi
push	edi
call	PK11_ImportCert
add	esp, 14h
pop	edi
pop	esi
pop	ebx
retn
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
public PK11_FortezzaHasKEA
sub	esp, 10h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+10h+var_4], eax
push	esi
mov	esi, [esp+14h+arg_0]
lea	eax, [esp+14h+var_10]
push	eax
push	esi
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_10018DD8
test	[esp+14h+var_10], 40h
jz	short loc_10018DD8
add	esi, 0D8h
push	esi
call	SECOID_FindOID_Util
add	esp, 4
test	eax, eax
jz	short loc_10018DD8
mov	eax, [eax+0Ch]
cmp	eax, 36h
jz	short loc_10018DC3
cmp	eax, 38h
jz	short loc_10018DC3
cmp	eax, 12Ch
jnz	short loc_10018DD8
			
mov	eax, 1
pop	esi
mov	ecx, [esp+10h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10h
retn
			
mov	ecx, [esp+14h+var_4]
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 10h
retn
align 10h
sub	esp, 10h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+10h+var_4], eax
push	esi
xor	esi, esi
cmp	[edi+0A4h], esi
jle	short loc_10018E4B
push	ebp
lea	ebx, [ebx+0]
mov	eax, [edi+9Ch]
mov	ebp, [eax+esi*4]
lea	ecx, [esp+18h+var_10]
push	ecx
push	ebp
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_10018E41
test	[esp+18h+var_10], 40h
jz	short loc_10018E41
add	ebp, 0D8h
push	ebp
call	SECOID_FindOID_Util
add	esp, 4
			
inc	esi
cmp	esi, [edi+0A4h]
jl	short loc_10018E10
pop	ebp
mov	ecx, [esp+14h+var_4]
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 10h
retn
align 10h
public PK11_FindBestKEAMatch
mov	eax, [esp+arg_4]
push	ebx
push	ebp
push	eax
push	1
push	0
push	1011h
call	PK11_GetAllTokens
mov	ebp, eax
add	esp, 10h
xor	ebx, ebx
test	ebp, ebp
jnz	short loc_10018E83
pop	ebp
pop	ebx
retn
push	esi
mov	esi, [ebp+0]
test	esi, esi
jz	short loc_10018EC1
push	edi
lea	esp, [esp+0]
mov	ecx, [esp+10h+arg_4]
mov	edx, [esi+8]
push	ecx
push	1
push	edx
call	PK11_Authenticate
add	esp, 0Ch
test	eax, eax
jnz	short loc_10018EBA
mov	edi, [esi+8]
cmp	[edi+38h], eax
jz	short loc_10018EBA
call	sub_10018DF0
mov	ebx, eax
test	ebx, ebx
jnz	short loc_10018EC0
			
mov	esi, [esi]
test	esi, esi
jnz	short loc_10018E90
pop	edi
push	ebp
call	PK11_FreeSlotList
add	esp, 4
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
public PK11_FindCertInSlot
			
sub	esp, 1Ch
push	esi
mov	esi, [esp+20h+arg_4]
mov	eax, [esi+40h]
mov	ecx, [esi+44h]
push	edi
mov	edi, [esp+24h+arg_0]
mov	[esp+24h+var_14], eax
mov	eax, [esp+24h+arg_8]
push	eax
lea	edx, [esp+28h+var_1C]
push	1
push	edi
mov	[esp+30h+var_1C], 1
mov	[esp+30h+var_18], 11h
mov	[esp+30h+var_10], ecx
mov	[esp+30h+var_C], 0
mov	[esp+30h+var_8], edx
mov	[esp+30h+var_4], 4
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jz	short loc_10018F2F
pop	edi
xor	eax, eax
pop	esi
add	esp, 1Ch
retn
push	2
lea	ecx, [esp+28h+var_18]
push	ecx
push	esi
push	edi
call	sub_10017D80
add	esp, 10h
pop	edi
pop	esi
add	esp, 1Ch
retn
align 10h
			
sub	esp, 8
mov	eax, [esp+8+arg_4]
push	ebx
push	ebp
mov	ebp, [eax+4]
push	esi
mov	esi, [eax]
xor	ebx, ebx
push	edi
mov	[esp+18h+arg_4], 0
test	esi, esi
jz	short loc_10018F7D
cmp	esi, 2
jz	short loc_10018F7D
cmp	esi, 4
jz	short loc_10018F7D
cmp	esi, 5
jnz	short loc_10018F85
			
mov	[esp+18h+arg_4], 1
cmp	esi, 3
jz	short loc_10018F94
cmp	esi, 2
jz	short loc_10018F94
cmp	esi, 4
jnz	short loc_10018F99
			
mov	ebx, 1
cmp	esi, 1
jz	short loc_10018FA3
cmp	esi, 5
jnz	short loc_10018FC0
mov	edi, [esp+18h+arg_0]
push	0
push	0
push	edi
call	sub_10046430
add	esp, 0Ch
test	eax, eax
jnz	short loc_10018FC4
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
mov	edi, [esp+18h+arg_0]
cmp	esi, 2
jnz	short loc_10018FDE
push	0
push	0
push	edi
call	sub_10046430
add	esp, 0Ch
test	eax, eax
jnz	loc_10019106
push	edi
call	sub_1004B8F0
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_10019106
test	ebx, ebx
jz	short loc_1001900B
lea	eax, [esp+18h+var_4]
push	eax
push	esi
call	CERT_IsCACert
add	esp, 8
test	eax, eax
jz	loc_10019106
cmp	[esp+18h+arg_4], 0
jz	short loc_1001906E
push	esi
call	CERT_DupCertificate
mov	ecx, [ebp+8]
push	edi
push	ecx
call	sub_1004B510
mov	edi, eax
mov	eax, [esi+17Ch]
add	esp, 0Ch
test	eax, eax
jz	short loc_10019048
push	eax
call	PK11_IsInternal
add	esp, 4
test	eax, eax
jnz	short loc_10019048
push	edi
push	esi
push	ebp
call	sub_1003D3F0
jmp	short loc_10019050
			
push	edi
push	esi
push	ebp
call	sub_1003D470
add	esp, 0Ch
test	eax, eax
jz	loc_10019106
push	esi
call	CERT_DestroyCertificate
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
push	edi
call	sub_10049900
add	esp, 4
mov	[esp+18h+var_8], eax
test	eax, eax
jz	loc_10019106
cmp	dword ptr [eax], 0
mov	[esp+18h+arg_4], eax
jz	short loc_100190FD
lea	esp, [esp+0]
mov	edx, [esp+18h+arg_4]
mov	edi, [edx]
mov	eax, [edi+4]
mov	ebx, [eax+34h]
push	esi
call	CERT_DupCertificate
mov	ecx, [esp+1Ch+arg_0]
mov	edx, [ebp+8]
push	edi		
push	ecx		
push	edx		
call	sub_1004B420
add	esp, 10h
mov	edi, eax
test	ebx, ebx
jz	short loc_100190D1
push	ebx
call	PK11_IsInternal
add	esp, 4
test	eax, eax
jnz	short loc_100190D1
push	edi
push	esi
push	ebp
call	sub_1003D3F0
jmp	short loc_100190D9
			
push	edi
push	esi
push	ebp
call	sub_1003D470
add	esp, 0Ch
test	eax, eax
jz	short loc_100190E9
push	esi
call	CERT_DestroyCertificate
add	esp, 4
mov	eax, [esp+18h+arg_4]
add	eax, 4
cmp	dword ptr [eax], 0
mov	[esp+18h+arg_4], eax
jnz	short loc_10019090
mov	eax, [esp+18h+var_8]
push	eax
call	sub_1004E7F0
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
public PK11_ListCerts
			
sub	esp, 8
push	esi
push	edi
call	sub_1004A850
mov	edi, eax
call	SECKEY_NewPrivateKeyList
mov	ecx, [esp+10h+arg_4]
push	ecx
push	1
mov	esi, eax
mov	eax, [esp+18h+arg_0]
push	0
push	0
mov	[esp+20h+var_8], eax
mov	[esp+20h+var_4], esi
call	sub_1002C850
lea	edx, [esp+20h+var_8]
push	edx
push	offset sub_10018F50
push	edi
call	sub_100475B0
add	esp, 1Ch
pop	edi
mov	eax, esi
pop	esi
add	esp, 8
retn
align 10h
public PK11_GetLowLevelKeyIDForCert
sub	esp, 20h
push	ebx
push	ebp
xor	ebx, ebx
push	esi
mov	esi, [esp+2Ch+arg_0]
xor	ebp, ebp
mov	eax, 11h
push	edi
mov	[esp+30h+var_1C], 1
mov	[esp+30h+var_18], eax
mov	[esp+30h+var_14], ebx
mov	[esp+30h+var_10], ebx
mov	[esp+30h+var_C], ebx
mov	[esp+30h+var_8], ebx
mov	[esp+30h+var_4], ebx
mov	[esp+30h+var_20], ebp
cmp	esi, ebx
jz	short loc_100191F7
mov	edi, [esp+30h+arg_4]
mov	ecx, [edi+44h]
mov	[esp+30h+var_18], eax
mov	eax, [edi+40h]
mov	[esp+30h+var_14], eax
mov	eax, [esp+30h+arg_8]
push	eax
lea	edx, [esp+34h+var_1C]
push	1
push	esi
mov	[esp+3Ch+var_10], ecx
mov	[esp+3Ch+var_C], ebx
mov	[esp+3Ch+var_8], edx
mov	[esp+3Ch+var_4], 4
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jz	short loc_100191E4
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 20h
retn
push	2
lea	ecx, [esp+34h+var_18]
push	ecx
push	edi
push	esi
call	sub_10017D80
add	esp, 10h
jmp	short loc_10019244
mov	eax, [esp+30h+arg_8]
mov	esi, [esp+30h+arg_4]
lea	edx, [esp+30h+var_20]
push	edx
push	eax
push	esi
call	sub_10018620
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001923E
push	esi
call	sub_100179C0
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	short loc_100191DA
push	esi
call	PK11_MakeIDFromPubKey
push	1
push	esi
mov	edi, eax
call	SECITEM_FreeItem_Util
add	esp, 0Ch
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 20h
retn
mov	ebp, [esp+30h+var_20]
mov	esi, ebp
cmp	eax, ebx
jz	short loc_100191DA
push	eax
push	esi
call	sub_1002C8D0
add	esp, 8
mov	esi, eax
cmp	ebp, ebx
jz	short loc_10019261
push	ebp
call	PK11_FreeSlot
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 20h
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_0]
push	esi
push	ebp
call	sub_1004B930
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1001928B
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
push	edi
push	esi
call	sub_10049900
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100192A2
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	eax, [edi]
push	ebx
mov	ecx, edi
test	eax, eax
jz	short loc_100192CC
mov	ebx, [esp+10h+arg_4]
mov	edx, [ebx+4]
mov	eax, [eax+4]
cmp	[eax+34h], edx
jz	short loc_100192C6
mov	eax, [ecx+4]
add	ecx, 4
test	eax, eax
jnz	short loc_100192B2
jmp	short loc_100192CC
mov	ecx, [ecx]
test	ecx, ecx
jnz	short loc_100192E7
			
push	edi
call	sub_1004E7F0
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 8
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
push	ecx		
mov	ecx, [ebx]
mov	edx, [ecx+8]
push	esi		
push	edx		
call	sub_1004B420
push	edi
mov	esi, eax
call	sub_1004E7F0
push	ebp
call	CERT_DupCertificate
mov	eax, [ebx]
push	esi
push	ebp
push	eax
call	sub_1003D3F0
mov	esi, eax
add	esp, 20h
test	esi, esi
jz	short loc_1001931E
push	ebp
call	CERT_DestroyCertificate
add	esp, 4
pop	ebx
pop	edi
mov	eax, esi
pop	esi
pop	ebp
retn
align 10h
public PK11_ListCertsInSlot
sub	esp, 8
push	esi
call	SECKEY_NewPrivateKeyList
mov	esi, eax
test	esi, esi
jnz	short loc_10019344
pop	esi
add	esp, 8
retn
mov	eax, [esp+0Ch+arg_0]
lea	ecx, [esp+0Ch+var_8]
push	ecx
push	offset sub_10019270
push	eax
mov	[esp+18h+var_8], esi
mov	[esp+18h+var_4], eax
call	sub_10018A90
add	esp, 0Ch
test	eax, eax
jz	short loc_10019372
push	esi
call	CERT_DestroyCertList
add	esp, 4
xor	esi, esi
mov	eax, esi
pop	esi
add	esp, 8
retn
align 10h
public PK11_GetAllSlotsForCert
mov	eax, [esp+arg_0]
push	ebp
xor	ebp, ebp
test	eax, eax
jnz	short loc_1001939C
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	ebp
retn
push	eax
call	sub_1004B930
add	esp, 4
test	eax, eax
jnz	short loc_100193B2
call	sub_10043350
xor	eax, eax
pop	ebp
retn
push	ebx
push	eax
call	sub_10049900
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_100193D4
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
xor	eax, eax
pop	ebp
retn
push	edi
call	sub_100353C0
mov	edi, eax
test	edi, edi
jnz	short loc_100193EF
push	ebx
call	sub_1004E7F0
add	esp, 4
pop	edi
pop	ebx
xor	eax, eax
pop	ebp
retn
push	esi
mov	esi, ebx
cmp	[ebx], ebp
jz	short loc_1001941F
mov	eax, [esi]
mov	ecx, [eax+4]
mov	eax, [ecx+34h]
test	eax, eax
jz	short loc_10019413
push	1
push	eax
push	edi
call	sub_10036890
add	esp, 0Ch
mov	ebp, 1
add	esi, 4
cmp	dword ptr [esi], 0
jnz	short loc_100193F6
test	ebp, ebp
jnz	short loc_10019434
push	edi
call	PK11_FreeSlotList
push	0FFFFE041h
call	PORT_SetError_Util
add	esp, 8
xor	edi, edi
push	ebx
call	sub_1004E7F0
add	esp, 4
pop	esi
mov	eax, edi
pop	edi
pop	ebx
pop	ebp
retn
align 10h
public PK11_DeleteTokenCertAndKey
push	ecx
push	ebx
push	ebp
push	esi
mov	esi, [esp+10h+arg_4]
push	edi
mov	edi, [esp+14h+arg_0]
push	esi
push	edi
call	PK11_FindKeyByAnyCert
mov	ebp, eax
lea	eax, [esp+1Ch+var_4]
push	eax
push	esi
push	edi
mov	[esp+28h+var_4], 0
call	sub_10018620
mov	ebx, [esp+28h+var_4]
add	esp, 14h
test	eax, eax
jnz	short loc_10019489
xor	esi, esi
jmp	short loc_100194A8
push	2
push	eax
push	ebx
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jnz	short loc_100194A6
push	ebx
call	PK11_FreeSlot
add	esp, 4
xor	esi, esi
jmp	short loc_100194A8
mov	esi, eax
			
test	ebp, ebp
jz	short loc_100194BD
push	edi
call	SEC_DeletePermCertificate
push	0
push	ebp
call	PK11_DeleteTokenPrivateKey
add	esp, 0Ch
test	esi, esi
jz	short loc_100194D5
test	ebx, ebx
jz	short loc_100194D5
push	esi
push	ebx
call	PK11_DestroyTokenObject
push	ebx
call	PK11_FreeSlot
add	esp, 0Ch
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
sub	esp, 14h
push	ebp
xor	ebp, ebp
push	esi
push	edi
mov	[esp+20h+var_C], ebp
mov	[esp+20h+var_8], ebp
mov	[esp+20h+var_4], ebp
call	sub_1004A850
mov	esi, eax
call	SECKEY_NewPrivateKeyList
mov	edi, eax
mov	eax, [esp+20h+arg_0]
push	eax
push	1
push	ebp
push	ebp
mov	[esp+30h+var_14], 1
mov	[esp+30h+var_10], edi
call	sub_1002C850
lea	ecx, [esp+30h+var_14]
push	ecx
push	offset sub_10018F50
push	esi
call	sub_100475B0
add	esp, 1Ch
cmp	edi, ebp
jnz	short loc_1001953D
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 14h
retn
mov	esi, [edi]
cmp	esi, edi
jz	short loc_10019580
mov	eax, [esi+8]
lea	edx, [esp+20h+var_C]
push	edx
push	eax
call	CERT_FindSubjectKeyIDExtension
add	esp, 8
test	eax, eax
jnz	short loc_1001957A
cmp	[esp+20h+var_8], ebp
jz	short loc_1001957A
mov	ecx, [esi+8]
push	ecx
lea	edx, [esp+24h+var_C]
push	edx
call	sub_1003DAA0
lea	eax, [esp+28h+var_C]
push	ebp
push	eax
call	SECITEM_FreeItem_Util
add	esp, 10h
			
mov	esi, [esi]
cmp	esi, edi
jnz	short loc_10019543
push	ebx
push	edi
call	CERT_DestroyCertList
push	8
push	ebp
push	ebp
call	SECITEM_AllocItem_Util
mov	ebx, eax
add	esp, 10h
cmp	ebx, ebp
jnz	short loc_100195B1
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 14h
retn
call	SECMOD_GetDefaultModuleListLock
mov	ebp, eax
test	ebp, ebp
jnz	short loc_100195D4
push	0FFFFE09Ah
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 14h
retn
push	ebp
call	SECMOD_GetReadLock
add	esp, 4
call	SECMOD_GetDefaultModuleList
mov	edi, eax
test	edi, edi
jz	short loc_10019635
mov	eax, [edi+4]
xor	esi, esi
cmp	[eax+2Ch], esi
jle	short loc_1001962F
mov	ecx, [eax+28h]
mov	edx, [ecx+esi*4]
mov	ecx, [edx+40h]
mov	eax, [ebx+4]
mov	[eax], ecx
mov	edx, [edi+4]
mov	ecx, [edx+38h]
mov	eax, [ebx+4]
mov	[eax+4], ecx
mov	edx, [edi+4]
mov	eax, [edx+28h]
mov	ecx, [eax+esi*4]
movzx	edx, word ptr [ecx+80h]
push	edx
push	ebx
call	sub_1003DB70
mov	eax, [edi+4]
inc	esi
add	esp, 8
cmp	esi, [eax+2Ch]
jl	short loc_100195F2
mov	edi, [edi]
test	edi, edi
jnz	short loc_100195E8
push	ebp
call	SECMOD_ReleaseReadLock
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 0Ch
pop	ebx
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 14h
retn
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 4Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+4Ch+var_4], eax
mov	eax, [ebp+arg_0]
push	ebx
push	esi
push	edi
mov	edi, edx
push	edi
push	1
xor	esi, esi
push	esi
push	0FFFFFFFFh
mov	[esp+68h+var_34], eax
mov	[esp+68h+var_48], edi
mov	[esp+68h+var_2C], ecx
call	PK11_GetAllTokens
add	esp, 10h
mov	[esp+58h+var_30], eax
test	eax, eax
jnz	short loc_100196A2
pop	edi
pop	esi
pop	ebx
mov	ecx, [esp+4Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
mov	esp, ebp
pop	ebp
retn
mov	ecx, [eax]
mov	[esp+58h+var_40], ecx
test	ecx, ecx
jz	loc_1001995A
mov	ebx, [esp+58h+var_40]
mov	edx, [ebx+8]
push	edi
push	1
push	edx
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_100196EE
mov	ecx, [esp+58h+var_34]
mov	eax, [ebx+8]
mov	esi, [ecx]
xor	ebx, ebx
mov	[esp+58h+var_3C], eax
mov	[esp+58h+var_38], ebx
mov	[esp+58h+var_4C], esi
test	esi, esi
jnz	short loc_10019718
mov	edx, [esp+58h+var_2C]
mov	dword ptr [edx], 0FFFFFFFFh
xor	esi, esi
mov	eax, [esp+58h+var_40]
mov	eax, [eax]
mov	[esp+58h+var_40], eax
test	eax, eax
jz	loc_10019956
mov	edi, [esp+58h+var_48]
jmp	short loc_100196B0
jmp	short loc_10019710
align 10h
			
mov	esi, [esp+58h+var_4C]
mov	edi, [esp+58h+var_48]
cmp	dword ptr [esi+8], 1
jnz	loc_100198CB
mov	edx, [esi+0Ch]
push	edx
call	sub_1003DD70
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	loc_100198AC
test	ebx, ebx
jnz	loc_10019905
mov	eax, [esp+58h+var_48]
push	eax
push	ebx
push	ebx
push	0FFFFFFFFh
call	PK11_GetAllTokens
mov	ebx, eax
add	esp, 10h
mov	[esp+58h+var_1C], ebx
test	ebx, ebx
jz	loc_10019895
push	8
push	edi
push	edi
call	SECITEM_AllocItem_Util
mov	esi, eax
add	esp, 0Ch
mov	[esp+58h+var_44], esi
test	esi, esi
jz	loc_10019926
mov	edi, [ebx]
test	edi, edi
jz	loc_10019880
mov	ecx, [edi+8]
mov	eax, [ecx+40h]
mov	edx, [esi+4]
mov	[edx], eax
mov	ecx, [edi+8]
mov	edx, [ecx+4]
mov	ecx, [edx+38h]
mov	eax, [esi+4]
mov	[eax+4], ecx
mov	edx, [edi+8]
push	edx
call	PK11_GetSlotSeries
push	esi
mov	ebx, eax
call	sub_1003DC40
add	esp, 8
cmp	eax, ebx
jz	loc_10019872
mov	esi, [edi+8]
xor	eax, eax
mov	[esp+58h+var_28], eax
mov	[esp+58h+var_24], eax
mov	[esp+58h+var_20], eax
call	SECKEY_NewPrivateKeyList
mov	ebx, eax
test	ebx, ebx
jz	loc_1001986E
lea	eax, [esp+58h+var_18]
push	eax
push	offset sub_10019270
push	esi
mov	[esp+64h+var_18], ebx
mov	[esp+64h+var_14], esi
call	sub_10018A90
add	esp, 0Ch
test	eax, eax
jnz	short loc_10019865
mov	esi, [ebx]
cmp	esi, ebx
jz	short loc_10019865
mov	edi, edi
mov	ecx, [esi+8]
push	ecx
call	CERT_IsUserCert
add	esp, 4
test	eax, eax
jz	short loc_1001985F
mov	eax, [esi+8]
lea	edx, [esp+58h+var_28]
push	edx
push	eax
call	CERT_FindSubjectKeyIDExtension
add	esp, 8
test	eax, eax
jnz	short loc_1001985F
cmp	[esp+58h+var_24], eax
jz	short loc_10019850
mov	ecx, [esi+8]
push	ecx
lea	edx, [esp+5Ch+var_28]
push	edx
call	sub_1003DAA0
mov	eax, [edi+8]
push	eax
call	PK11_GetSlotSeries
mov	ecx, [esp+64h+var_44]
push	eax
push	ecx
call	sub_1003DB70
add	esp, 14h
lea	edx, [esp+58h+var_28]
push	0
push	edx
call	SECITEM_FreeItem_Util
add	esp, 8
			
mov	esi, [esi]
cmp	esi, ebx
jnz	short loc_10019800
			
push	ebx
call	CERT_DestroyCertList
add	esp, 4
mov	esi, [esp+58h+var_44]
mov	edi, [edi]
test	edi, edi
jnz	loc_10019783
mov	ebx, [esp+58h+var_1C]
push	ebx
call	PK11_FreeSlotList
push	1
push	esi
call	SECITEM_FreeItem_Util
mov	esi, [esp+64h+var_4C]
add	esp, 0Ch
mov	eax, [esi+0Ch]
push	eax
mov	ebx, 1
call	sub_1003DD70
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10019905
mov	ecx, [esp+58h+var_48]
mov	edx, [esp+58h+var_3C]
push	ecx
push	edi
push	edx
call	PK11_FindCertFromDERCertItem
push	1
push	edi
mov	esi, eax
call	SECITEM_FreeItem_Util
add	esp, 14h
jmp	short loc_100198DF
mov	eax, [esi+0Ch]
mov	ecx, [esp+58h+var_3C]
push	edi
push	eax
push	ecx
call	sub_100181D0
add	esp, 0Ch
mov	esi, eax
test	esi, esi
jz	short loc_10019905
lea	edx, [esp+58h+var_10]
push	edx
push	esi
call	CERT_GetCertTrust
add	esp, 8
test	eax, eax
jnz	short loc_100198FC
test	[esp+58h+var_C], 40h
jnz	short loc_10019938
push	esi
call	CERT_DestroyCertificate
add	esp, 4
			
mov	eax, [esp+58h+var_38]
mov	ecx, [esp+58h+var_34]
inc	eax
mov	[esp+58h+var_38], eax
mov	eax, [ecx+eax*4]
mov	[esp+58h+var_4C], eax
test	eax, eax
jnz	loc_10019710
jmp	loc_100196E2
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_100196EC
mov	ecx, [esp+58h+var_3C]
push	ecx
call	PK11_ReferenceSlot
mov	edx, [esp+5Ch+var_4C]
mov	ecx, [esp+5Ch+var_2C]
mov	[edx+18h], eax
mov	eax, [esp+5Ch+var_38]
add	esp, 4
mov	[ecx], eax
mov	eax, [esp+58h+var_30]
push	eax
call	PK11_FreeSlotList
mov	ecx, [esp+5Ch+var_4]
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
mov	esp, ebp
pop	ebp
retn
align 10h
public PK11_FindCertAndKeyByRecipientList
mov	edx, [esp+arg_8]
mov	ecx, [esp+arg_4]
push	ebx
mov	ebx, [esp+4+arg_C]
push	ebp
mov	ebp, [esp+8+arg_10]
push	esi
push	edi
mov	edi, [esp+10h+arg_0]
push	ebp
mov	dword ptr [ebx], 0
push	edi
mov	dword ptr [edi], 0
call	sub_10018360
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100199E2
push	ebp
push	esi
call	PK11_FindKeyByAnyCert
add	esp, 8
mov	[ebx], eax
test	eax, eax
jnz	short loc_100199E9
push	esi
call	CERT_DestroyCertificate
mov	eax, [edi]
add	esp, 4
test	eax, eax
jz	short loc_100199DC
push	eax
call	PK11_FreeSlot
add	esp, 4
mov	dword ptr [edi], 0
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
public PK11_FindCertAndKeyByRecipientListNew
push	ecx
push	ebx
mov	ebx, [esp+8+arg_4]
push	ebx
push	offset sub_100194E0
push	offset dword_100BAB90
call	ds:PR_CallOnceWithArg
add	esp, 0Ch
test	eax, eax
jz	short loc_10019A14
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
push	esi
mov	esi, [esp+0Ch+arg_0]
push	edi
push	esi
lea	ecx, [esp+14h+var_4]
mov	edx, ebx
call	sub_10019650
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10019A37
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
push	ebp
mov	ebp, [esp+14h+var_4]
mov	esi, [esi+ebp*4]
push	ebx
push	edi
call	PK11_FindKeyByAnyCert
add	esp, 8
mov	[esi+14h], eax
test	eax, eax
jnz	short loc_10019A79
push	edi
call	CERT_DestroyCertificate
mov	eax, [esi+18h]
add	esp, 4
test	eax, eax
jz	short loc_10019A69
push	eax
call	PK11_FreeSlot
add	esp, 4
pop	ebp
pop	edi
mov	dword ptr [esi+18h], 0
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
mov	eax, ebp
pop	ebp
mov	[esi+10h], edi
pop	edi
pop	esi
pop	ebx
pop	ecx
retn
align 10h
public PK11_FindCertFromDERCert
mov	ecx, [esp+arg_4]
add	ecx, 3Ch
mov	[esp+arg_4], ecx
jmp	PK11_FindCertFromDERCertItem
			
mov	eax, [esp+arg_0]
cmp	dword ptr [eax+14h], 0
jz	short loc_10019AC0
mov	ecx, [eax+8]
cmp	dword ptr [ecx+30h], 0
jz	short loc_10019AC0
mov	edx, [eax+10h]
mov	[esp+arg_0], edx
jmp	ds:PR_Lock
			
mov	eax, [eax+8]
mov	[esp+arg_0], eax
jmp	sub_10035650
align 10h
			
mov	eax, [esp+arg_0]
cmp	dword ptr [eax+14h], 0
jz	short loc_10019AF0
mov	ecx, [eax+8]
cmp	dword ptr [ecx+30h], 0
jz	short loc_10019AF0
mov	edx, [eax+10h]
mov	[esp+arg_0], edx
jmp	ds:PR_Unlock
			
mov	eax, [eax+8]
mov	[esp+arg_0], eax
jmp	sub_10035670
align 10h
public PK11_DestroyContext
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+14h]
mov	ecx, [esi+0Ch]
mov	edx, [esi+8]
push	eax
push	ecx
push	edx
call	sub_1002A710
mov	eax, [esi+1Ch]
add	esp, 0Ch
test	eax, eax
jz	short loc_10019B29
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esi+4]
test	eax, eax
jz	short loc_10019B39
push	eax
call	PK11_FreeSymKey
add	esp, 4
mov	eax, [esi+24h]
test	eax, eax
jz	short loc_10019B52
cmp	eax, offset dword_100A2AE8
jz	short loc_10019B52
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
			
mov	eax, [esi+10h]
test	eax, eax
jz	short loc_10019B63
push	eax
call	ds:PR_DestroyLock
add	esp, 4
mov	eax, [esi+8]
push	eax
call	PK11_FreeSlot
add	esp, 4
cmp	[esp+4+arg_4], 0
jz	short loc_10019B7F
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
push	ecx
mov	edx, [ebx+0Ch]
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
push	edi
mov	esi, eax
mov	eax, [ebx+8]
mov	ecx, [eax]
mov	eax, [ecx+42h]
push	ebp
push	esi
push	edx
call	eax
add	esp, 0Ch
mov	edi, eax
test	esi, esi
jz	short loc_10019BBB
cmp	edi, 150h
jnz	short loc_10019BF8
mov	eax, [ebp+0]
push	eax
mov	[esp+14h+var_4], eax
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10019C0B
mov	ecx, [ebx+8]
mov	edx, [ecx]
mov	eax, [ebx+0Ch]
mov	ecx, [edx+42h]
push	ebp
push	esi
push	eax
call	ecx
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_10019C12
mov	edx, [esp+10h+var_4]
push	edx
push	esi
call	PORT_ZFree_Util
add	esp, 8
test	edi, edi
jz	short loc_10019C12
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
			
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ecx
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	ecx, [eax+4]
test	ecx, ecx
jz	short loc_10019C30
mov	ecx, [ecx+4]
jmp	short loc_10019C32
xor	ecx, ecx
mov	edx, [esp+arg_4]
test	edx, edx
jnz	short loc_10019C4B
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	esi
mov	esi, [eax+8]
mov	esi, [esi]
push	0
push	ecx
mov	ecx, [esp+0Ch+arg_8]
push	ecx
push	edx
mov	edx, [eax+0Ch]
mov	eax, [esi+46h]
push	edx
call	eax
add	esp, 14h
pop	esi
test	eax, eax
jz	short loc_10019C7E
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
retn
xor	eax, eax
retn
align 10h
public PK11_SaveContext
mov	eax, [esp+arg_C]
push	ebx
mov	ebx, [esp+4+arg_0]
cmp	dword ptr [ebx+14h], 0
push	esi
push	edi
mov	edi, eax
mov	[esp+0Ch+arg_C], edi
jz	short loc_10019D0F
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_10019CBC
mov	eax, [ebx+10h]
push	eax
call	ds:PR_Lock
jmp	short loc_10019CC2
push	eax
call	sub_10035650
mov	eax, [esp+10h+Dst]
lea	ecx, [esp+10h+arg_C]
add	esp, 4
push	ecx
call	sub_10019B90
add	esp, 4
cmp	dword ptr [ebx+14h], 0
mov	esi, eax
jz	short loc_10019CF3
mov	edx, [ebx+8]
cmp	dword ptr [edx+30h], 0
jz	short loc_10019CF3
mov	eax, [ebx+10h]
push	eax
call	ds:PR_Unlock
jmp	short loc_10019CFC
			
mov	ecx, [ebx+8]
push	ecx
call	sub_10035670
add	esp, 4
test	esi, esi
jz	short loc_10019D4F
mov	edi, [esp+0Ch+arg_C]
mov	edx, [esp+0Ch+arg_8]
mov	[edx], edi
jmp	short loc_10019D35
mov	ecx, [ebx+20h]
cmp	eax, ecx
jb	short loc_10019D4F
mov	esi, [ebx+1Ch]
test	esi, esi
jz	short loc_10019D2C
mov	eax, [esp+0Ch+Dst]
push	ecx		
push	esi		
push	eax		
call	memcpy
add	esp, 0Ch
mov	ecx, [ebx+20h]
mov	edx, [esp+0Ch+arg_8]
mov	[edx], ecx
test	esi, esi
jz	short loc_10019D4F
cmp	dword ptr [ebx+14h], 0
jz	short loc_10019D49
push	edi
push	esi
call	PORT_ZFree_Util
add	esp, 8
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
public PK11_SaveContextAlloc
mov	ecx, [esp+arg_8]
push	ebx
mov	ebx, [esp+4+arg_0]
cmp	dword ptr [ebx+14h], 0
push	esi
mov	[esp+8+arg_8], ecx
jz	loc_10019DFB
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_10019D8D
mov	eax, [ebx+10h]
push	eax
call	ds:PR_Lock
jmp	short loc_10019D93
push	eax
call	sub_10035650
mov	eax, [esp+0Ch+arg_4]
lea	ecx, [esp+0Ch+arg_8]
add	esp, 4
push	ecx
call	sub_10019B90
add	esp, 4
cmp	dword ptr [ebx+14h], 0
mov	esi, eax
jz	short loc_10019DDA
mov	edx, [ebx+8]
cmp	dword ptr [edx+30h], 0
jz	short loc_10019DDA
mov	eax, [ebx+10h]
push	eax
call	ds:PR_Unlock
mov	eax, [esp+0Ch+arg_C]
add	esp, 4
mov	edx, esi
neg	edx
sbb	edx, edx
and	edx, [esp+8+arg_8]
mov	[eax], edx
mov	eax, esi
pop	esi
pop	ebx
retn
			
mov	ecx, [ebx+8]
push	ecx
call	sub_10035670
mov	eax, [esp+0Ch+arg_C]
add	esp, 4
mov	edx, esi
neg	edx
sbb	edx, edx
and	edx, [esp+8+arg_8]
mov	[eax], edx
mov	eax, esi
pop	esi
pop	ebx
retn
mov	eax, [ebx+20h]
cmp	ecx, eax
jnb	short loc_10019E14
push	eax
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10019E18
pop	esi
pop	ebx
retn
mov	esi, [esp+8+arg_4]
mov	eax, [ebx+1Ch]
test	eax, eax
jz	short loc_10019E2D
mov	ecx, [ebx+20h]
push	ecx		
push	eax		
push	esi		
call	memcpy
add	esp, 0Ch
mov	edx, [ebx+20h]
mov	eax, [esp+8+arg_C]
mov	[eax], edx
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
			
sub	esp, 108h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+108h+var_4], eax
push	ebx
push	esi
mov	esi, [esp+110h+arg_0]
xor	ecx, ecx
xor	ebx, ebx
mov	[esp+110h+var_108], ecx
cmp	[esi+14h], ecx
jnz	short loc_10019E83
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+108h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 108h
retn
push	edi
			
mov	eax, [esi]
cmp	eax, 108h
ja	short loc_10019EE1
jz	short loc_10019ECF
sub	eax, 104h
jz	short loc_10019EB6
dec	eax
jnz	loc_10019F59
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [esi+0Ch]
mov	ecx, [ecx+92h]
lea	edx, [esp+114h+var_108]
push	edx
push	ebx
push	eax
call	ecx
jmp	short loc_10019F1B
mov	edx, [esi+8]
mov	eax, [edx]
mov	edx, [esi+0Ch]
mov	eax, [eax+82h]
lea	ecx, [esp+114h+var_108]
push	ecx
push	ebx
push	edx
call	eax
jmp	short loc_10019F1B
mov	ecx, [esi+8]
mov	edx, [ecx]
mov	edx, [edx+0B6h]
lea	eax, [esp+114h+var_108]
push	eax
jmp	short loc_10019F14
cmp	eax, 10Ah
jz	short loc_10019F08
cmp	eax, 81000000h
jnz	short loc_10019F59
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [esi+0Ch]
mov	ecx, [ecx+0A6h]
lea	edx, [esp+114h+var_108]
push	edx
push	ebx
push	eax
call	ecx
jmp	short loc_10019F1B
mov	edx, [esi+8]
mov	eax, [edx]
mov	edx, [eax+0CEh]
push	ecx
mov	ecx, [esi+0Ch]
push	ebx
push	ecx
call	edx
			
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_10019F5E
test	ebx, ebx
jnz	loc_10019FC9
mov	ecx, [esp+114h+var_108]
cmp	ecx, 100h
ja	short loc_10019F41
lea	ebx, [esp+114h+var_104]
jmp	loc_10019E84
push	ecx
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	short loc_10019FA1
mov	ecx, [esp+114h+var_108]
jmp	loc_10019E84
			
mov	edi, 91h
lea	eax, [esp+114h+var_104]
cmp	ebx, eax
jz	short loc_10019F6F
push	ebx
call	PORT_Free_Util
add	esp, 4
cmp	edi, 91h
jz	short loc_10019FDA
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+108h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 108h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+108h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 108h
retn
lea	ecx, [esp+114h+var_104]
cmp	ebx, ecx
jz	short loc_10019FDA
push	ebx
call	PORT_Free_Util
add	esp, 4
			
mov	ecx, [esp+114h+var_4]
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 108h
retn
align 10h
public PK11_DigestFinal
			
			
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+14h], 0
push	edi
jz	short loc_1001A021
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A021
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Lock
jmp	short loc_1001A02A
			
mov	edx, [esi+8]
push	edx
call	sub_10035650
add	esp, 4
cmp	dword ptr [esi+14h], 0
jnz	short loc_1001A07C
mov	eax, [esi+20h]
mov	ecx, [esi+1Ch]
push	eax
push	ecx
push	esi
call	sub_10019C20
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_1001A07C
cmp	dword ptr [esi+14h], 0
jz	short loc_1001A06B
mov	edx, [esi+8]
cmp	dword ptr [edx+30h], 0
jz	short loc_1001A06B
mov	eax, [esi+10h]
push	eax
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
mov	ecx, [esi+8]
push	ecx
call	sub_10035670
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
mov	eax, [esi]
mov	ecx, [esp+8+arg_C]
mov	[esp+8+arg_0], ecx
cmp	eax, 108h
ja	short loc_1001A0EA
jz	short loc_1001A0CD
sub	eax, 104h
jz	short loc_1001A0B0
dec	eax
jnz	short loc_1001A0F8
mov	edx, [esi+8]
mov	eax, [edx]
mov	edx, [esp+8+arg_4]
lea	ecx, [esp+8+arg_0]
push	ecx
push	edx
mov	edx, [eax+92h]
jmp	short loc_1001A127
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [esp+8+arg_4]
lea	edx, [esp+8+arg_0]
push	edx
mov	edx, [esi+0Ch]
push	eax
mov	eax, [ecx+82h]
push	edx
call	eax
jmp	short loc_1001A12D
mov	ecx, [esi+8]
mov	edx, [ecx]
mov	ecx, [esp+8+arg_4]
lea	eax, [esp+8+arg_0]
push	eax
mov	eax, [esi+0Ch]
push	ecx
mov	ecx, [edx+0B6h]
push	eax
call	ecx
jmp	short loc_1001A12D
cmp	eax, 10Ah
jz	short loc_1001A116
cmp	eax, 81000000h
jz	short loc_1001A0FF
mov	edi, 91h
jmp	short loc_1001A132
mov	edx, [esi+8]
mov	eax, [edx]
mov	edx, [esp+8+arg_4]
lea	ecx, [esp+8+arg_0]
push	ecx
push	edx
mov	edx, [eax+0A6h]
jmp	short loc_1001A127
mov	eax, [esi+8]
mov	edx, [eax]
mov	eax, [esp+8+arg_4]
mov	edx, [edx+0CEh]
push	ecx
push	eax
			
mov	ecx, [esi+0Ch]
push	ecx
call	edx
			
add	esp, 0Ch
mov	edi, eax
cmp	dword ptr [esi+14h], 0
jz	short loc_1001A14D
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A14D
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Unlock
jmp	short loc_1001A156
			
mov	edx, [esi+8]
push	edx
call	sub_10035670
mov	eax, [esp+0Ch+arg_8]
mov	ecx, [esp+0Ch+arg_0]
add	esp, 4
mov	[eax], ecx
mov	dword ptr [esi+28h], 0
test	edi, edi
jz	short loc_1001A183
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	ecx
push	ebx
mov	ebx, eax
mov	eax, [ebx]
push	ebp
xor	ebp, ebp
push	esi
mov	esi, [ebx+4]
cmp	eax, 108h
ja	short loc_1001A222
jz	loc_1001A24E
sub	eax, 104h
jz	short loc_1001A20D
dec	eax
jnz	short loc_1001A230
cmp	[ebx+30h], ebp
jz	short loc_1001A1F5
mov	eax, [ebx+8]
mov	edx, [esi+4]
mov	[esp+10h+var_4], ebp
mov	ecx, [eax]
mov	eax, [ebx+0Ch]
mov	ecx, [ecx+76h]
push	edx
push	edi
push	eax
call	ecx
add	esp, 0Ch
test	eax, eax
jnz	loc_1001A26B
mov	edx, [ebx+8]
mov	eax, [edx]
mov	edx, [ebx+0Ch]
mov	eax, [eax+82h]
lea	ecx, [esp+10h+var_4]
push	ecx
push	ebp
push	edx
call	eax
add	esp, 0Ch
mov	ecx, [ebx+8]
mov	eax, [esi+4]
mov	edx, [ecx]
mov	ecx, [ebx+0Ch]
mov	edx, [edx+86h]
push	eax
push	edi
push	ecx
call	edx
jmp	short loc_1001A264
mov	eax, [ebx+8]
mov	edx, [esi+4]
mov	ecx, [eax]
mov	eax, [ebx+0Ch]
mov	ecx, [ecx+76h]
push	edx
push	edi
push	eax
call	ecx
jmp	short loc_1001A264
cmp	eax, 10Ah
jz	short loc_1001A24E
cmp	eax, 81000000h
jz	short loc_1001A237
mov	eax, 91h
jmp	short loc_1001A26B
mov	ecx, [ebx+8]
mov	edx, [ecx]
mov	eax, [ebx+0Ch]
mov	ecx, [edx+96h]
push	edi
push	eax
call	ecx
add	esp, 8
jmp	short loc_1001A267
			
mov	ecx, [esi+4]
mov	edx, [ebx+8]
mov	eax, [edx]
mov	edx, [ebx+0Ch]
mov	eax, [eax+0AAh]
push	ecx
push	edi
push	edx
call	eax
			
add	esp, 0Ch
test	eax, eax
jz	short loc_1001A282
			
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
cmp	[ebx+14h], ebp
jnz	short loc_1001A2A9
mov	eax, [ebx+1Ch]
lea	ecx, [ebx+20h]
push	ecx
call	sub_10019B90
add	esp, 4
mov	[ebx+1Ch], eax
test	eax, eax
jnz	short loc_1001A2A0
or	ebp, 0FFFFFFFFh
push	ebx
call	sub_10019E40
add	esp, 4
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
pop	ecx
retn
			
sub	esp, 0Ch
push	ebx
push	ebp
mov	ebx, ecx
xor	ebp, ebp
push	edi
mov	edi, eax
cmp	ebx, ebp
jz	loc_1001A3FC
cmp	edi, ebp
jnz	short loc_1001A2E4
cmp	[esp+18h+arg_4], 81000000h
jnz	loc_1001A3FC
cmp	[esp+18h+arg_0], 1002h
jz	loc_1001A3FC
push	esi
push	34h
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jz	loc_1001A3F2
cmp	[esp+1Ch+arg_0], 1002h
mov	[esi+30h], ebp
jnz	short loc_1001A313
cmp	dword ptr [edi+34h], 3
jnz	short loc_1001A313
mov	dword ptr [esi+30h], 1
			
mov	eax, [esp+1Ch+arg_4]
mov	[esi], eax
cmp	edi, ebp
jz	short loc_1001A328
push	edi
call	PK11_ReferenceSymKey
add	esp, 4
jmp	short loc_1001A32A
xor	eax, eax
push	ebx
mov	[esi+4], eax
call	PK11_ReferenceSlot
lea	ecx, [esi+14h]
push	ecx
push	ebx
mov	[esi+8], eax
call	sub_1002A6A0
add	esp, 0Ch
mov	[esi+0Ch], eax
cmp	edi, ebp
jz	short loc_1001A34F
mov	edi, [edi+0Ch]
jmp	short loc_1001A351
xor	edi, edi
mov	ebx, [esp+1Ch+arg_0]
mov	[esi+18h], edi
mov	edi, [esp+1Ch+arg_8]
mov	[esi+1Ch], ebp
mov	[esi+2Ch], ebx
cmp	edi, ebp
jz	short loc_1001A37F
cmp	[edi+8], ebp
jbe	short loc_1001A376
push	edi
call	SECITEM_DupItem_Util
mov	[esi+24h], eax
jmp	short loc_1001A38C
mov	dword ptr [esi+24h], offset dword_100A2AE8
jmp	short loc_1001A38F
push	0FFFFE005h
call	PORT_SetError_Util
mov	[esi+24h], ebp
add	esp, 4
mov	[esi+28h], ebp
call	ds:PR_NewLock
mov	[esi+10h], eax
cmp	[esi+24h], ebp
jz	short loc_1001A3E7
cmp	eax, ebp
jz	short loc_1001A3E7
mov	edx, [edi+4]
mov	eax, [edi+8]
push	esi
mov	[esp+20h+var_C], ebx
mov	[esp+20h+var_8], edx
mov	[esp+20h+var_4], eax
call	sub_10019AA0
lea	edi, [esp+20h+var_C]
mov	eax, esi
call	sub_1001A190
push	esi
mov	edi, eax
call	sub_10019AD0
add	esp, 8
cmp	edi, ebp
jnz	short loc_1001A3E7
mov	dword ptr [esi+28h], 1
mov	eax, esi
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
			
push	1
push	esi
call	PK11_DestroyContext
add	esp, 8
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
public PK11_CreateContextBySymKey
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [esp+8+arg_8]
push	edi
mov	edi, [esp+0Ch+arg_4]
push	edi
push	ebx
push	esi
call	sub_100322D0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001A449
push	esi
call	PK11_ReferenceSymKey
add	esp, 4
jmp	short loc_1001A44B
mov	esi, eax
mov	eax, [esp+0Ch+arg_C]
mov	ecx, [esi+8]
push	eax
push	edi
push	ebx
mov	eax, esi
call	sub_1001A2B0
push	esi
mov	edi, eax
call	PK11_FreeSymKey
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
align 10h
public PK11_CreateDigestContext
			
mov	eax, [esp+arg_0]
sub	esp, 0Ch
push	esi
push	edi
push	eax
call	PK11_AlgtagToMechanism
mov	edi, eax
push	0
push	edi
call	PK11_GetBestSlot
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1001A4A7
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
lea	ecx, [esp+14h+var_C]
push	ecx
push	81000000h
push	edi
xor	eax, eax
mov	ecx, esi
mov	[esp+20h+var_8], 0
mov	[esp+20h+var_4], 0
mov	[esp+20h+var_C], 0
call	sub_1001A2B0
push	esi
mov	edi, eax
call	PK11_FreeSlot
add	esp, 10h
mov	eax, edi
pop	edi
pop	esi
add	esp, 0Ch
retn
align 10h
public PK11_CloneContext
			
sub	esp, 8
push	ebx
push	ebp
push	esi
mov	esi, [esp+14h+Size]
mov	eax, [esi+24h]
mov	ecx, [esi]
mov	edx, [esi+2Ch]
push	eax
mov	eax, [esi+4]
push	ecx
mov	ecx, [esi+8]
xor	ebx, ebx
push	edx
mov	[esp+20h+var_8], ebx
call	sub_1001A2B0
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, ebx
jnz	short loc_1001A528
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
push	edi
cmp	[esi+14h], ebx
jz	loc_1001A5F1
mov	eax, [esi+8]
cmp	[eax+30h], ebx
jz	short loc_1001A546
mov	eax, [esi+10h]
push	eax
call	ds:PR_Lock
jmp	short loc_1001A54C
push	eax
call	sub_10035650
mov	ecx, [esi+8]
mov	edx, [ecx]
mov	ecx, [esi+0Ch]
mov	edx, [edx+42h]
add	esp, 4
lea	eax, [esp+18h+Size]
push	eax
push	ebx
push	ecx
call	edx
mov	eax, [esp+24h+Size]
push	eax
mov	[esp+28h+var_4], eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	short loc_1001A5B1
mov	eax, [esi+8]
mov	ecx, [eax]
mov	eax, [esi+0Ch]
mov	ecx, [ecx+42h]
lea	edx, [esp+18h+Size]
push	edx
push	edi
push	eax
call	ecx
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	short loc_1001A5B3
mov	edx, [esp+18h+var_4]
push	edx
push	edi
call	PORT_ZFree_Util
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 10h
xor	edi, edi
cmp	dword ptr [esi+14h], 0
jz	short loc_1001A5DA
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A5DA
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Unlock
mov	esi, [esp+1Ch+Size]
add	esp, 4
mov	ebx, 1
jmp	short loc_1001A5FB
			
mov	edx, [esi+8]
push	edx
call	sub_10035670
mov	esi, [esp+1Ch+Size]
add	esp, 4
mov	ebx, 1
jmp	short loc_1001A5FB
mov	edi, [esi+1Ch]
mov	esi, [esi+20h]
mov	[esp+18h+Size],	esi
			
test	edi, edi
jz	short loc_1001A66F
cmp	dword ptr [ebp+14h], 0
jz	short loc_1001A626
push	ebp
call	sub_10019AA0
mov	eax, [esp+1Ch+Size]
push	eax
push	edi
push	ebp
call	sub_10019C20
push	ebp
mov	[esp+2Ch+var_8], eax
call	sub_10019AD0
add	esp, 14h
jmp	short loc_1001A65B
mov	eax, [ebp+1Ch]
test	eax, eax
jz	short loc_1001A646
cmp	[ebp+20h], esi
jb	short loc_1001A646
push	esi		
push	edi		
push	eax		
call	memcpy
mov	ecx, [esp+24h+Size]
add	esp, 0Ch
mov	[ebp+20h], ecx
jmp	short loc_1001A65B
			
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+18h+var_8], 0FFFFFFFFh
			
test	ebx, ebx
jz	short loc_1001A668
push	edi
call	PORT_Free_Util
add	esp, 4
cmp	[esp+18h+var_8], 0
jz	short loc_1001A684
push	1
push	ebp
call	PK11_DestroyContext
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 8
retn
align 10h
public PK11_RestoreContext
push	ebx
push	esi
mov	esi, [esp+8+arg_0]
xor	ebx, ebx
push	edi
cmp	[esi+14h], ebx
jz	short loc_1001A708
mov	eax, [esi+8]
cmp	[eax+30h], ebx
jz	short loc_1001A6B2
mov	eax, [esi+10h]
push	eax
call	ds:PR_Lock
jmp	short loc_1001A6B8
push	eax
call	sub_10035650
add	esp, 4
push	esi
call	sub_10019E40
mov	ecx, [esp+10h+Size]
mov	edx, [esp+10h+Src]
push	ecx
push	edx
push	esi
call	sub_10019C20
add	esp, 10h
mov	edi, eax
cmp	[esi+14h], ebx
jz	short loc_1001A6F6
mov	eax, [esi+8]
cmp	[eax+30h], ebx
jz	short loc_1001A6F6
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
			
mov	edx, [esi+8]
push	edx
call	sub_10035670
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
mov	eax, [esi+1Ch]
test	eax, eax
jz	short loc_1001A730
mov	edi, [esp+0Ch+Size]
cmp	[esi+20h], edi
jb	short loc_1001A730
mov	ecx, [esp+0Ch+Src]
push	edi		
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
mov	[esi+20h], edi
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
			
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
public PK11_DigestBegin
			
			
sub	esp, 0Ch
push	esi
mov	esi, [esp+10h+arg_0]
cmp	dword ptr [esi+28h], 1
jz	loc_1001A7F3
cmp	dword ptr [esi+14h], 0
jz	short loc_1001A77D
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A77D
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Lock
jmp	short loc_1001A786
			
mov	edx, [esi+8]
push	edx
call	sub_10035650
add	esp, 4
push	edi
push	esi
call	sub_10019E40
mov	eax, [esi+2Ch]
mov	[esp+18h+var_C], eax
mov	eax, [esi+24h]
mov	ecx, [eax+4]
mov	[esp+18h+var_8], ecx
mov	edx, [eax+8]
add	esp, 4
lea	edi, [esp+14h+var_C]
mov	eax, esi
mov	[esp+14h+var_4], edx
call	sub_1001A190
cmp	dword ptr [esi+14h], 0
mov	edi, eax
jz	short loc_1001A7D3
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A7D3
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Unlock
jmp	short loc_1001A7DC
			
mov	edx, [esi+8]
push	edx
call	sub_10035670
add	esp, 4
test	edi, edi
pop	edi
jz	short loc_1001A7EC
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
mov	dword ptr [esi+28h], 1
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
align 10h
public PK11_CipherOp
			
sub	esp, 24h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+24h+var_4], eax
mov	eax, [esp+24h+arg_8]
push	ebx
mov	ebx, [esp+28h+arg_0]
push	ebp
mov	ebp, [esp+2Ch+arg_10]
push	esi
mov	esi, [esp+30h+arg_4]
mov	[esp+30h+var_1C], eax
xor	eax, eax
push	edi
mov	edi, [esp+34h+arg_C]
mov	[esp+34h+Size],	edi
mov	[esp+34h+var_14], eax
mov	[esp+34h+var_20], eax
mov	[esp+34h+Dst], esi
mov	[esp+34h+Src], eax
cmp	[ebx+14h], eax
jz	short loc_1001A859
mov	ecx, [ebx+8]
cmp	[ecx+30h], eax
jz	short loc_1001A859
mov	edx, [ebx+10h]
push	edx
call	ds:PR_Lock
jmp	short loc_1001A862
			
mov	eax, [ebx+8]
push	eax
call	sub_10035650
add	esp, 4
cmp	dword ptr [ebx+14h], 0
jnz	short loc_1001A888
mov	ecx, [ebx+20h]
mov	edx, [ebx+1Ch]
push	ecx
push	edx
push	ebx
call	sub_10019C20
add	esp, 0Ch
mov	[esp+34h+var_20], eax
test	eax, eax
jnz	loc_1001AA91
cmp	dword ptr [ebx+30h], 0
jz	loc_1001A99F
mov	eax, [ebx]
cmp	eax, 104h
jnz	loc_1001A95E
cmp	dword ptr [ebx+14h], 0
jz	short loc_1001A8BA
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001A8BA
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Unlock
jmp	short loc_1001A8C3
			
mov	edx, [ebx+8]
push	edx
call	sub_10035670
add	esp, 4
lea	eax, [esp+34h+var_C]
push	8
push	eax
call	PK11_GenerateRandom
add	esp, 8
cmp	dword ptr [ebx+14h], 0
mov	[esp+34h+var_20], eax
jz	short loc_1001A8F4
mov	ecx, [ebx+8]
cmp	dword ptr [ecx+30h], 0
jz	short loc_1001A8F4
mov	edx, [ebx+10h]
push	edx
call	ds:PR_Lock
jmp	short loc_1001A8FD
			
mov	eax, [ebx+8]
push	eax
call	sub_10035650
add	esp, 4
push	edi
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
mov	[esp+34h+Src], esi
test	esi, esi
jnz	short loc_1001A932
push	ebx
call	sub_10019AD0
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+24h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24h
retn
mov	ecx, [ebx+8]
mov	edx, [ecx]
lea	eax, [esp+34h+Size]
push	eax
mov	eax, [ebx+0Ch]
push	esi
push	8
lea	ecx, [esp+40h+var_C]
push	ecx
mov	ecx, [edx+7Eh]
push	eax
call	ecx
mov	eax, [esp+48h+Size]
add	esp, 14h
add	esi, eax
sub	edi, eax
mov	[esp+34h+var_14], eax
jmp	short loc_1001A99F
cmp	eax, 105h
jnz	short loc_1001A99F
mov	edx, [ebx+8]
mov	[esp+34h+Size],	8
mov	eax, [edx]
lea	ecx, [esp+34h+Size]
push	ecx
mov	ecx, [ebx+0Ch]
lea	edx, [esp+38h+var_C]
push	edx
mov	edx, [eax+8Eh]
push	8
push	ebp
push	ecx
call	edx
mov	eax, [esp+48h+Size]
sub	[esp+48h+arg_14], eax
add	esp, 14h
add	ebp, eax
mov	dword ptr [ebx+30h], 0
			
mov	eax, [ebx]
sub	eax, 104h
jz	short loc_1001A9D8
dec	eax
jz	short loc_1001A9B2
mov	eax, 91h
jmp	short loc_1001AA05
mov	eax, [ebx+8]
lea	edx, [esp+34h+Size]
push	edx
mov	edx, [ebx+0Ch]
mov	[esp+38h+Size],	edi
mov	ecx, [eax]
mov	eax, [esp+38h+arg_14]
push	esi
push	eax
mov	eax, [ecx+8Eh]
push	ebp
push	edx
call	eax
add	esp, 14h
jmp	short loc_1001AA01
mov	ecx, [ebx+8]
lea	eax, [esp+34h+Size]
push	eax
mov	eax, [ebx+0Ch]
mov	[esp+38h+Size],	edi
mov	edx, [ecx]
mov	ecx, [esp+38h+arg_14]
push	esi
push	ecx
mov	ecx, [edx+7Eh]
push	ebp
push	eax
call	ecx
mov	edx, [esp+48h+var_14]
add	esp, 14h
add	[esp+34h+Size],	edx
test	eax, eax
jz	short loc_1001AA28
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	eax, [esp+3Ch+var_1C]
add	esp, 8
mov	dword ptr [eax], 0
mov	[esp+34h+var_20], 0FFFFFFFFh
jmp	short loc_1001AA32
mov	ecx, [esp+34h+var_1C]
mov	edx, [esp+34h+Size]
mov	[ecx], edx
cmp	dword ptr [ebx+30h], 0
jz	short loc_1001AA64
cmp	dword ptr [ebx], 104h
jnz	short loc_1001AA5D
mov	eax, [esp+34h+Size]
mov	esi, [esp+34h+Src]
mov	ecx, [esp+34h+Dst]
push	eax		
push	esi		
push	ecx		
call	memcpy
push	esi
call	PORT_Free_Util
add	esp, 10h
mov	dword ptr [ebx+30h], 0
cmp	dword ptr [ebx+14h], 0
jnz	short loc_1001AA97
mov	eax, [ebx+1Ch]
lea	edx, [ebx+20h]
push	edx
call	sub_10019B90
add	esp, 4
mov	[ebx+1Ch], eax
test	eax, eax
jnz	short loc_1001AA88
mov	[esp+34h+var_20], 0FFFFFFFFh
push	ebx
call	sub_10019E40
add	esp, 4
cmp	dword ptr [ebx+14h], 0
jz	short loc_1001AAAC
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001AAAC
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Unlock
jmp	short loc_1001AAB5
			
mov	edx, [ebx+8]
push	edx
call	sub_10035670
mov	ecx, [esp+38h+var_4]
mov	eax, [esp+38h+var_20]
add	esp, 4
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24h
retn
align 10h
public PK11_DigestOp
			
			
push	ebp
push	edi
mov	edi, [esp+8+arg_8]
xor	ebp, ebp
cmp	edi, ebp
jnz	short loc_1001AAE1
pop	edi
xor	eax, eax
pop	ebp
retn
push	esi
mov	esi, [esp+0Ch+arg_4]
cmp	esi, ebp
jnz	short loc_1001AAFE
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
push	ebx
mov	ebx, [esp+10h+arg_0]
mov	[ebx+28h], ebp
cmp	[ebx+14h], ebp
jz	short loc_1001AB1F
mov	eax, [ebx+8]
cmp	[eax+30h], ebp
jz	short loc_1001AB1F
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Lock
jmp	short loc_1001AB28
			
mov	edx, [ebx+8]
push	edx
call	sub_10035650
add	esp, 4
cmp	[ebx+14h], ebp
jnz	short loc_1001AB57
mov	eax, [ebx+20h]
mov	ecx, [ebx+1Ch]
push	eax
push	ecx
push	ebx
call	sub_10019C20
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1001AB57
push	ebx
call	sub_10019AD0
add	esp, 4
pop	ebx
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
retn
			
mov	eax, [ebx]
cmp	eax, 108h
jz	short loc_1001AB9F
cmp	eax, 10Ah
jz	short loc_1001AB8A
cmp	eax, 81000000h
jz	short loc_1001AB75
mov	eax, 91h
jmp	short loc_1001ABB9
mov	edx, [ebx+8]
mov	eax, [edx]
mov	ecx, [ebx+0Ch]
mov	edx, [eax+9Eh]
push	edi
push	esi
push	ecx
call	edx
jmp	short loc_1001ABB2
mov	eax, [ebx+8]
mov	ecx, [eax]
mov	edx, [ebx+0Ch]
mov	eax, [ecx+0CAh]
push	edi
push	esi
push	edx
call	eax
jmp	short loc_1001ABB2
mov	ecx, [ebx+8]
mov	edx, [ecx]
mov	eax, [ebx+0Ch]
mov	ecx, [edx+0B2h]
push	edi
push	esi
push	eax
call	ecx
			
add	esp, 0Ch
test	eax, eax
jz	short loc_1001ABCB
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	ebp, 0FFFFFFFFh
cmp	dword ptr [ebx+14h], 0
jnz	short loc_1001ABF9
mov	eax, [ebx+1Ch]
lea	edx, [ebx+20h]
push	edx
call	sub_10019B90
add	esp, 4
mov	[ebx+1Ch], eax
test	eax, eax
jnz	short loc_1001ABEA
or	ebp, 0FFFFFFFFh
push	ebx
call	sub_10019E40
add	esp, 4
cmp	dword ptr [ebx+14h], 0
jz	short loc_1001AC16
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001AC16
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Unlock
add	esp, 4
pop	ebx
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
retn
			
mov	edx, [ebx+8]
push	edx
call	sub_10035670
add	esp, 4
pop	ebx
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
retn
align 10h
public PK11_DigestKey
push	ebx
mov	ebx, [esp+4+arg_0]
push	ebp
xor	ebp, ebp
push	esi
test	ebx, ebx
jz	loc_1001AD8E
mov	esi, [esp+0Ch+arg_4]
test	esi, esi
jz	loc_1001AD8E
mov	eax, [ebx+8]
push	edi
push	esi
cmp	eax, [esi+8]
jz	short loc_1001AC6C
push	108h
push	381h
push	eax
call	sub_100321F0
add	esp, 10h
jmp	short loc_1001AC74
call	PK11_ReferenceSymKey
add	esp, 4
mov	edi, eax
mov	[ebx+28h], ebp
cmp	[ebx+14h], ebp
jz	short loc_1001AC92
mov	eax, [ebx+8]
cmp	[eax+30h], ebp
jz	short loc_1001AC92
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Lock
jmp	short loc_1001AC9B
			
mov	edx, [ebx+8]
push	edx
call	sub_10035650
add	esp, 4
cmp	[ebx+14h], ebp
jnz	short loc_1001ACD0
mov	eax, [ebx+20h]
mov	ecx, [ebx+1Ch]
push	eax
push	ecx
push	ebx
call	sub_10019C20
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1001ACD0
push	ebx
call	sub_10019AD0
push	edi
call	PK11_FreeSymKey
add	esp, 8
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
			
test	edi, edi
jnz	short loc_1001ACF9
mov	ecx, [esi+1Ch]
lea	eax, [edi+63h]
test	ecx, ecx
jz	short loc_1001AD15
mov	edx, [ebx+8]
mov	eax, [edx]
mov	edx, [esi+20h]
push	edx
mov	edx, [eax+9Eh]
push	ecx
mov	ecx, [ebx+0Ch]
push	ecx
call	edx
add	esp, 0Ch
jmp	short loc_1001AD11
mov	eax, [ebx+8]
mov	ecx, [eax]
mov	edx, [edi+4]
mov	eax, [ebx+0Ch]
mov	ecx, [ecx+0A2h]
push	edx
push	eax
call	ecx
add	esp, 8
test	eax, eax
jz	short loc_1001AD27
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	ebp, 0FFFFFFFFh
cmp	dword ptr [ebx+14h], 0
jnz	short loc_1001AD55
mov	eax, [ebx+1Ch]
lea	edx, [ebx+20h]
push	edx
call	sub_10019B90
add	esp, 4
mov	[ebx+1Ch], eax
test	eax, eax
jnz	short loc_1001AD46
or	ebp, 0FFFFFFFFh
push	ebx
call	sub_10019E40
add	esp, 4
cmp	dword ptr [ebx+14h], 0
jz	short loc_1001AD6A
mov	eax, [ebx+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001AD6A
mov	ecx, [ebx+10h]
push	ecx
call	ds:PR_Unlock
jmp	short loc_1001AD73
			
mov	edx, [ebx+8]
push	edx
call	sub_10035670
add	esp, 4
test	edi, edi
jz	loc_1001ACC9
push	edi
call	PK11_FreeSymKey
add	esp, 4
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
public PK11_Finalize
			
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+14h], 0
push	edi
jz	short loc_1001ADD1
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001ADD1
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Lock
jmp	short loc_1001ADDA
			
mov	edx, [esi+8]
push	edx
call	sub_10035650
add	esp, 4
push	esi
call	sub_10019E40
add	esp, 4
cmp	dword ptr [esi+14h], 0
mov	edi, eax
jz	short loc_1001AE09
mov	eax, [esi+8]
cmp	dword ptr [eax+30h], 0
jz	short loc_1001AE09
mov	ecx, [esi+10h]
push	ecx
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
			
mov	edx, [esi+8]
push	edx
call	sub_10035670
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
public __PK11_CreateContextByRawKey
push	ecx
push	ebx
mov	ebx, [esp+8+arg_4]
push	ebp
push	esi
mov	esi, [esp+10h+arg_18]
push	edi
mov	edi, [esp+14h+arg_0]
xor	ebp, ebp
mov	[esp+14h+var_4], ebp
test	edi, edi
jnz	short loc_1001AE62
push	esi
push	ebx
call	PK11_GetBestSlot
add	esp, 8
mov	[esp+14h+arg_0], eax
test	eax, eax
jnz	short loc_1001AE6D
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
pop	ecx
retn
push	edi
call	PK11_ReferenceSlot
add	esp, 4
jmp	short loc_1001AE6F
mov	edi, eax
mov	eax, [esp+14h+arg_10]
mov	ebp, [esp+14h+arg_C]
mov	ecx, [esp+14h+arg_8]
push	esi
push	eax
push	ebp
push	ecx
push	ebx
push	edi
call	PK11_ImportSymKey
mov	esi, eax
add	esp, 18h
test	esi, esi
jz	short loc_1001AEE4
push	ebp
push	ebx
push	esi
mov	edi, esi
call	sub_100322D0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001AEAB
push	esi
call	PK11_ReferenceSymKey
add	esp, 4
jmp	short loc_1001AEAD
mov	edi, eax
mov	edx, [esp+14h+arg_14]
mov	ecx, [edi+8]
push	edx
push	ebp
push	ebx
mov	eax, edi
call	sub_1001A2B0
push	edi
mov	ebx, eax
call	PK11_FreeSymKey
push	esi
call	PK11_FreeSymKey
mov	edi, [esp+28h+arg_0]
add	esp, 14h
push	edi
call	PK11_FreeSlot
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	ecx
retn
mov	ebx, [esp+14h+var_4]
push	edi
call	PK11_FreeSlot
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	ecx
retn
align 10h
public PK11_HashBuf
			
push	ebx
mov	ebx, [esp+4+arg_C]
test	ebx, ebx
jns	short loc_1001AF1B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
push	ebp
call	PK11_CreateDigestContext
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1001AF37
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	edi
push	esi
call	PK11_DigestBegin
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_1001AF59
push	1
push	esi
call	PK11_DestroyContext
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
mov	eax, [esp+10h+arg_8]
push	ebx
push	eax
push	esi
call	PK11_DigestOp
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_1001AF47
push	ebp
call	HASH_ResultLenByOidTag
add	esp, 4
test	eax, eax
jnz	short loc_1001AF80
mov	eax, 40h
mov	edx, [esp+10h+arg_4]
push	eax
lea	ecx, [esp+14h+arg_C]
push	ecx
push	edx
push	esi
call	PK11_DigestFinal
push	1
push	esi
mov	edi, eax
call	PK11_DestroyContext
add	esp, 18h
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 100h
ja	loc_1001B04F
jz	short loc_1001AFDA 
cmp	eax, 0F2h	
ja	loc_1001B0AC	
movzx	eax, ds:byte_1001B11C[eax]
jmp	ds:off_1001B0C0[eax*4] 
			
			
xor	eax, eax	
retn
			
mov	eax, 0FFFFE000h	
retn
			
mov	eax, 0FFFFE013h	
retn
			
mov	eax, 0FFFFE002h	
retn
			
mov	eax, 0FFFFE005h	
retn
			
mov	eax, 0FFFFE042h	
retn
			
mov	eax, 0FFFFE004h	
retn
			
mov	eax, 0FFFFE0A9h	
retn
			
			
mov	eax, 0FFFFE041h	
			
retn
			
mov	eax, 0FFFFE0A8h	
retn
			
mov	eax, 0FFFFE898h	
retn
			
mov	eax, 0FFFFE0A7h	
retn
			
mov	eax, 0FFFFE006h	
retn
			
mov	eax, 0FFFFE098h	
retn
			
mov	eax, 0FFFFE00Fh	
retn
			
mov	eax, 0FFFFE065h	
retn
			
mov	eax, 0FFFFE0ACh	
retn
			
mov	eax, 0FFFFE0ADh	
retn
			
mov	eax, 0FFFFE00Ah	
retn
			
mov	eax, 0FFFFE097h	
retn
cmp	eax, 114h
ja	short loc_1001B076
jz	short loc_1001B08B 
			
add	eax, 0FFFFFEFFh	
cmp	eax, 12h
ja	short loc_1001B0AC 
movzx	ecx, ds:byte_1001B224[eax]
jmp	ds:off_1001B210[ecx*4] 
			
mov	eax, 0FFFFE09Bh	
retn
cmp	eax, 150h
ja	short loc_1001B097
jz	short loc_1001B091
sub	eax, 115h
jz	short loc_1001B08B 
			
sub	eax, 1Bh
jnz	short loc_1001B0AC 
			
mov	eax, 0FFFFE028h	
			
retn
mov	eax, 0FFFFE003h
retn
cmp	eax, 80000000h
jz	short loc_1001B0B8 
			
cmp	eax, 0CE534351h
jz	short loc_1001B0B2
cmp	eax, 0CE534352h
jz	short loc_1001B0B2
			
mov	eax, 0FFFFE0AEh	
retn
			
mov	eax, 0FFFFE012h
retn
			
mov	eax, 0FFFFE001h	
			
retn
align 10h
			
dd offset loc_1001AFE9,	offset loc_1001B019, offset loc_1001B00D 
dd offset loc_1001AFEF,	offset loc_1001B025, offset loc_1001B049
dd offset loc_1001AFF5,	offset loc_1001AFFB, offset loc_1001B001
dd offset loc_1001B007,	offset loc_1001B0B8, offset loc_1001B013
dd offset loc_1001B08B,	offset loc_1001B01F, offset loc_1001B02B
dd offset loc_1001B031,	offset loc_1001B037, offset loc_1001B03D
dd offset loc_1001B043,	offset loc_1001B0AC
			
db 16h,	16h, 9,	1, 3, 3, 16h, 16h, 16h,	16h, 16h, 16h 
db 16h,	16h, 16h, 16h, 16h, 16h, 3, 0Ah, 16h, 16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 0Bh,	2, 0Ch,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h
db 16h,	16h, 16h, 16h, 16h, 3, 3, 16h, 16h, 16h, 16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	0Dh, 0Dh
db 16h,	16h, 0Eh, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 16h,	16h, 16h, 0Fh, 16h, 0Fh, 0Fh, 16h, 16h,	16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 10h,	3, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 16h,	16h, 16h, 16h, 3, 16h, 16h, 16h, 16h, 16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 0Dh, 0Dh,	16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 16h,	11h, 12h, 12h, 13h, 14h, 16h, 16h, 16h,	16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 0Dh, 2, 16h, 3, 0Dh, 9
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 15h
db 15h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 16h,	16h, 16h, 16h, 3, 3, 16h, 16h, 16h, 16h, 16h, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 0Ch,	1, 9, 16h
db 16h,	16h, 16h, 16h, 16h, 16h, 16h, 16h, 16h,	16h, 16h
db 16h,	0Fh, 0Fh, 0Fh
align 10h
dd offset loc_1001B007	
dd offset loc_1001B0B8
dd offset loc_1001B08B
dd offset loc_1001B0AC
db	4,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     3
db	4,     3,     3
align 10h
sub	esp, 20h
xor	eax, eax
mov	[esp+20h+var_1C], eax
mov	[esp+20h+var_18], eax
lea	eax, [esp+20h+var_20]
mov	[esp+20h+var_14], eax
mov	eax, 4
push	2
lea	edx, [esp+24h+var_18]
mov	[esp+24h+var_10], eax
mov	[esp+24h+var_4], eax
mov	eax, [esp+24h+arg_0]
push	edx
lea	ecx, [esp+28h+var_1C]
push	eax
mov	[esp+2Ch+var_20], 2
mov	[esp+2Ch+var_C], 100h
mov	[esp+2Ch+var_8], ecx
call	sub_1002C4F0
add	esp, 2Ch
retn
align 10h
			
sub	esp, 18h
push	ebx
push	ebp
mov	ebp, [esp+20h+arg_14]
mov	eax, [ebp+8]
push	esi
push	1
xor	ebx, ebx
push	eax
mov	[esp+2Ch+var_10], ebx
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jz	loc_1001B476
mov	esi, [esp+24h+arg_0]
push	1
push	esi
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jz	loc_1001B476
push	edi
push	ebp
mov	[esp+2Ch+arg_14], ebx
call	PK11_GetKeyLength
push	esi
mov	[esp+30h+var_18], eax
mov	[esp+30h+var_8], ebx
call	sub_1001B240
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_1001B2FF
push	3
push	edi
push	esi
call	sub_1002C6E0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001B359
mov	edi, [esp+28h+var_18]
cmp	edi, 35h
jbe	short loc_1001B317
push	0FFFFE069h
call	PORT_SetError_Util
jmp	loc_1001B438
cmp	edi, 15h
ja	short loc_1001B328
mov	[esp+28h+var_18], 100h
test	edi, edi
jnz	short loc_1001B330
mov	[esp+28h+var_18], 200h
mov	ecx, [ebp+0Ch]
push	ecx
push	1
push	0
lea	edx, [esp+34h+arg_14]
push	edx
lea	eax, [esp+38h+var_18]
push	eax
push	0
push	esi
mov	[esp+44h+var_14], 10001h
call	PK11_GenerateKeyPair
add	esp, 1Ch
mov	ebx, eax
jmp	short loc_1001B3AF
mov	ecx, [ebp+0Ch]
push	ecx
push	eax
push	1
push	0
push	esi
call	sub_10012FF0
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
jz	loc_1001B43B
push	edi
push	1
push	esi
call	sub_10012B60
add	esp, 0Ch
mov	[esp+28h+arg_14], eax
test	eax, eax
jz	short loc_1001B3AB
cmp	dword ptr [eax+8], 0
jz	short loc_1001B3AB
mov	edx, [eax+8]
push	edx
call	PK11_FreeSlot
mov	ecx, [esp+2Ch+arg_14]
add	esp, 4
xor	eax, eax
mov	[ecx+8], eax
mov	edx, [esp+28h+arg_14]
mov	[edx+0Ch], eax
			
mov	edi, [esp+28h+var_18]
test	ebx, ebx
jz	loc_1001B43B
mov	eax, [esp+28h+arg_14]
test	eax, eax
jz	short loc_1001B43B
push	eax
call	SECKEY_PublicKeyStrength
add	esp, 4
mov	[esp+28h+var_4], eax
test	eax, eax
jz	short loc_1001B43B
push	eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+28h+var_8], eax
test	eax, eax
jz	short loc_1001B44C
mov	ecx, [esp+28h+arg_14]
lea	eax, [esp+28h+var_C]
push	eax
push	ebp
push	ecx
push	1
call	PK11_PubWrapSymKey
add	esp, 10h
test	eax, eax
jnz	short loc_1001B43B
mov	edx, [esp+28h+arg_10]
mov	eax, [esp+28h+arg_C]
mov	ecx, [esp+28h+arg_8]
push	edx
mov	edx, [esp+2Ch+arg_4]
push	eax
push	edi
push	ecx
push	edx
lea	eax, [esp+3Ch+var_C]
push	eax
push	ebx
call	PK11_PubUnwrapSymKeyWithFlagsPerm
add	esp, 1Ch
mov	[esp+28h+var_10], eax
test	eax, eax
jz	short loc_1001B43B
cmp	[eax+8], esi
jz	short loc_1001B43B
push	eax
call	PK11_FreeSymKey
mov	[esp+2Ch+var_10], 0
add	esp, 4
			
mov	eax, [esp+28h+var_8]
test	eax, eax
jz	short loc_1001B44C
push	eax
call	PORT_Free_Util
add	esp, 4
			
pop	edi
test	ebx, ebx
jz	short loc_1001B45A
push	ebx
call	SECKEY_DestroyPrivateKey
add	esp, 4
mov	eax, [esp+24h+arg_14]
test	eax, eax
jz	short loc_1001B46B
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
mov	eax, [esp+24h+var_10]
pop	esi
pop	ebp
pop	ebx
add	esp, 18h
retn
			
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 18h
retn
align 10h
push	offset aModulelistlock 
push	0Ah
call	NSSRWLock_New_Util
add	esp, 8
retn
align 10h
align 10h
			
mov	eax, [esp+arg_4]
mov	ecx, [eax]
mov	edx, [esp+arg_0]
mov	[edx], ecx
mov	dword ptr [eax], 0
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_8]
test	esi, esi
jz	short loc_1001B4F2
push	esi
call	NSSRWLock_LockWrite_Util
add	esp, 4
mov	eax, [esp+4+arg_0]
mov	edx, [eax]
mov	ecx, [esp+4+arg_4]
mov	[ecx], edx
mov	[eax], ecx
test	esi, esi
jz	short loc_1001B50D
push	esi
call	NSSRWLock_UnlockWrite_Util
add	esp, 4
pop	esi
retn
align 10h
cmp	eax, 100h
ja	loc_1001B6AA
jz	loc_1001B693
cmp	eax, 87h	
ja	loc_1001BE6B	
movzx	ecx, ds:byte_1001BEC0[eax]
jmp	ds:off_1001BE80[ecx*4] 
			
mov	eax, offset aCka_class 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_token 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_private 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_label 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_applicatio 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_value 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_object_id 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_certificat 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_certific_0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_issuer	
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_serial_num 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_ac_issuer 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_owner 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_attr_types 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trusted 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_key_type 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 200h
ja	loc_1001BA5C
jz	loc_1001BA45
lea	ecx, [eax-101h]	
cmp	ecx, 80h
ja	loc_1001BE6B	
movzx	ecx, ds:byte_1001BFE4[ecx]
jmp	ds:off_1001BF48[ecx*4] 
			
mov	eax, offset aCka_subject 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_id 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_sensitive 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_encrypt 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_decrypt 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_wrap 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_unwrap	
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_sign 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_sign_recov 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_verify	
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_verify_rec 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_derive	
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_start_date 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_end_date 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_modulus 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_modulus_bi 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_public_exp 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_private_ex 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_prime_1 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_prime_2 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_exponent_1 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_exponent_2 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_coefficien 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_prime 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_subprime 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_base 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_prime_bits 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_subprime_b 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_value_bits 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_value_len 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_extractabl 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_local 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_never_extr 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_always_sen 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_key_gen_me 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_modifiable 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_ecdsa_para 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_ec_point 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_secondary_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 0CE536350h
ja	loc_1001BC9F
jz	loc_1001BC88
cmp	eax, 0CE534354h
ja	loc_1001BBB3
jz	loc_1001BB9C
cmp	eax, 300h
ja	short loc_1001BAC0
jz	short loc_1001BAA9
cmp	eax, 201h
jnz	loc_1001BE6B	
mov	eax, offset aCka_auth_pin_f 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_hw_feature 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 80000001h
ja	short loc_1001BB3E
jz	short loc_1001BB27
cmp	eax, 301h
jz	short loc_1001BB10
cmp	eax, 302h
jz	short loc_1001BAF9
cmp	eax, 80000000h
jnz	loc_1001BE6B	
mov	eax, offset aCka_vendor_def 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_has_reset 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_reset_on_i 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_netscape_t 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 0CE534351h
jz	short loc_1001BB85
cmp	eax, 0CE534352h
jz	short loc_1001BB6E
cmp	eax, 0CE534353h
jnz	loc_1001BE6B	
mov	eax, offset aCka_nss_smime_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_nss_email 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_nss_url 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_nss_smim_0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
lea	ecx, [eax+31ACBCABh] 
cmp	ecx, 12h
ja	loc_1001BE6B	
movzx	ecx, ds:byte_1001C08C[ecx]
jmp	ds:off_1001C068[ecx*4] 
			
mov	eax, offset aCka_nss_pkcs8_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_passwo 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_expire 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_krl 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_pqg_co 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_pqg_se 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_pqg_h 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_nss_pqg__0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_trust 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 0D5A0DB00h
ja	loc_1001BE6B	
jz	loc_1001BE54
lea	ecx, [eax+31AC9CAFh] 
cmp	ecx, 64h
ja	loc_1001BE6B	
movzx	ecx, ds:byte_1001C0E8[ecx]
jmp	ds:off_1001C0A0[ecx*4] 
			
mov	eax, offset aCka_trust_digi 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_non_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_key_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_data 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_ke_0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_ke_1 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_crl_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_serv 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_clie 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_code 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_emai 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_ipse 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_ip_0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_ip_1 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_trust_time 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_cert_sha1_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCka_cert_md5_h 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCka_netscape_d 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
push	eax		
push	offset a0xP	
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
align 10h
			
dd offset loc_1001B57F,	offset loc_1001B596, offset loc_1001B5AD 
dd offset loc_1001B5C4,	offset loc_1001B5DB, offset loc_1001B609
dd offset loc_1001B620,	offset loc_1001B637, offset loc_1001B64E
dd offset loc_1001B665,	offset loc_1001B67C, offset loc_1001B5F2
dd offset loc_1001BE6B
db    0Fh,   0Fh,   0Fh,   0Fh 
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db	4,     5,     6,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db    0Fh,   0Fh,   0Fh,   0Fh
db	7,     8,     9,   0Ah
db    0Bh,   0Ch,   0Dh,   0Eh
			
dd offset loc_1001B720,	offset loc_1001B737, offset loc_1001B74E 
dd offset loc_1001B765,	offset loc_1001B77C, offset loc_1001B793
dd offset loc_1001B7AA,	offset loc_1001B7C1, offset loc_1001B7D8
dd offset loc_1001B7EF,	offset loc_1001B806, offset loc_1001B81D
dd offset loc_1001B834,	offset loc_1001B84B, offset loc_1001B862
dd offset loc_1001B879,	offset loc_1001B890, offset loc_1001B8A7
dd offset loc_1001B8BE,	offset loc_1001B8D5, offset loc_1001B8EC
dd offset loc_1001B903,	offset loc_1001B91A, offset loc_1001B931
dd offset loc_1001B948,	offset loc_1001B95F, offset loc_1001B976
dd offset loc_1001B98D,	offset loc_1001B9A4, offset loc_1001B9BB
dd offset loc_1001B9D2,	offset loc_1001B9E9, offset loc_1001BA00
dd offset loc_1001BA17,	offset loc_1001BA2E, offset loc_1001BE6B
db	4,     5,     6,     7 
db	8,     9,   0Ah,   0Bh
db    26h,   26h,   26h,   0Ch
db    0Dh,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   0Eh
db    0Fh,   10h,   11h,   12h
db    13h,   14h,   15h,   16h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   17h
db    18h,   19h,   1Ah,   1Bh
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   1Ch
db    1Dh,   1Eh,   1Fh,   20h
db    21h,   22h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   23h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   26h
db    26h,   26h,   26h,   24h
db    25h
align 4
dd offset loc_1001BBE7	
dd offset loc_1001BBFE
dd offset loc_1001BC15
dd offset loc_1001BC2C
dd offset loc_1001BC43
dd offset loc_1001BC5A
dd offset loc_1001BC71
dd offset loc_1001BE6B
db	8,     8,     8,     8 
db	8,     8,     8,     8
db	8,     8,     8,     4
db	5,     6,     7
align 10h
			
dd offset loc_1001BD12,	offset loc_1001BD29, offset loc_1001BD40 
dd offset loc_1001BD57,	offset loc_1001BD6E, offset loc_1001BD85
dd offset loc_1001BD9C,	offset loc_1001BDB3, offset loc_1001BDCA
dd offset loc_1001BDE1,	offset loc_1001BDF8, offset loc_1001BE0F
dd offset loc_1001BE26,	offset loc_1001BE3D, offset loc_1001BE6B
db	4,     5,     6,     7 
db	8,     9,   0Ah,   0Bh
db    0Ch,   0Dh,   0Eh,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   0Fh
db    10h
align 10h
cmp	eax, 5
ja	loc_1001C1F9
jz	loc_1001C1E2
cmp	eax, 4		
ja	loc_1001C293	
jmp	ds:off_1001C2A8[eax*4] 
			
mov	eax, offset aCko_data 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCko_certificat 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCko_public_key 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCko_private_ke 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCko_secret_key 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCko_hw_feature 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 0CE534352h
ja	short loc_1001C257
jz	short loc_1001C240
cmp	eax, 6
jz	short loc_1001C229
cmp	eax, 0CE534351h
jnz	loc_1001C293	
mov	eax, offset aCko_nss_crl 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCko_domain_par 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCko_nss_smime 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 0CE534353h
jz	short loc_1001C27C
cmp	eax, 0CE534354h
jnz	short loc_1001C293 
mov	eax, offset aCko_nss_builti 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCko_nss_trust 
push	eax
push	offset dword_100A23E0
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
			
push	eax		
push	offset a0xP	
push	ecx
push	edx
call	ds:PR_snprintf
add	esp, 10h
retn
align 4
dd offset loc_1001C186	
dd offset loc_1001C19D
dd offset loc_1001C1B4
dd offset loc_1001C1CB
align 10h
lea	eax, [ecx+31ACBCAFh] 
cmp	eax, 0Ah
ja	loc_1001C360	
jmp	ds:off_1001C374[eax*4] 
			
mov	eax, offset aCkt_nss_truste 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkt_nss_trus_0 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkt_nss_not_tr 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkt_nss_must_v 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkt_nss_trust_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkt_nss_valid_ 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
			
push	ecx		
push	offset a0xP	
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
align 4
dd offset loc_1001C2ED	
dd offset loc_1001C31B
dd offset loc_1001C360
dd offset loc_1001C332
dd offset loc_1001C360
dd offset loc_1001C360
dd offset loc_1001C360
dd offset loc_1001C360
dd offset loc_1001C304
dd offset loc_1001C349
			
cmp	eax, 100h
ja	loc_1001C64A
jz	loc_1001C640
cmp	eax, 0F2h	
ja	loc_1001C738	
movzx	ecx, ds:byte_1001C854[eax]
jmp	ds:off_1001C754[ecx*4] 
			
mov	eax, offset aCkr_ok 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_cancel	
jmp	loc_1001C71C
			
mov	eax, offset aCkr_host_memor 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_slot_id_in 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_general_er 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_function_f 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_arguments_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_no_event 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_need_to_cr 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_cant_lock 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_attribute_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_attribut_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_attribut_1 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_attribut_2 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_data_inval 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_data_len_r 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_device_err 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_device_mem 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_device_rem 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_encrypted_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_encrypte_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_function_c 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_function_n 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_function_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_handle 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_size_r 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_type_i 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_not_ne 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_change 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_needed 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_indige 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_functi 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_not_wr 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_unextr 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_mechanism_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_mechanis_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_object_han 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_operation_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_operatio_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_pin_incorr 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_pin_invali 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_pin_len_ra 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_pin_expire 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_pin_locked 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_cl 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_co 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_ha 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_pa 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_re 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session_ex 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session__0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_session__1 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_signature_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_signatur_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_template_i 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_template_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_token_not_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_token_no_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_token_writ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_unwrapping 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_unwrappi_0 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_unwrappi_1 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_key_params 
jmp	loc_1001C71C
mov	eax, offset aCkr_user_alrea 
jmp	loc_1001C71C
cmp	eax, 200h
ja	loc_1001C738	
jz	loc_1001C717
lea	ecx, [eax-101h]	
cmp	ecx, 0A0h
ja	loc_1001C738	
movzx	edx, ds:byte_1001C9A0[ecx]
jmp	ds:off_1001C948[edx*4] 
			
mov	eax, offset aCkr_user_not_l 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_user_pin_n 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_user_type_ 
jmp	loc_1001C71C
			
mov	eax, offset aCkr_user_anoth 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_user_too_m 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_wrapped_ke 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_wrapped__0 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_wrapping_k 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_wrapping_0 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_wrapping_1 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_random_see 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_random_no_ 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_domain_par 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_buffer_too 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_saved_stat 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_informatio 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_state_unsa 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_cryptoki_n 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_cryptoki_a 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_mutex_bad 
jmp	short loc_1001C71C
			
mov	eax, offset aCkr_mutex_not_ 
jmp	short loc_1001C71C
mov	eax, offset aCkr_function_r 
			
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
jl	short locret_1001C753
push	eax
push	offset aRvS	
call	ds:PR_LogPrint
add	esp, 8
retn
			
mov	edx, dword_100BACD0 
cmp	dword ptr [edx+4], 1
jl	short locret_1001C753
push	eax
push	offset aRv0xX	
call	ds:PR_LogPrint
add	esp, 8
			
retn
			
dd offset loc_1001C3E8,	offset loc_1001C3F2, offset loc_1001C3FC 
dd offset loc_1001C406,	offset loc_1001C410, offset loc_1001C41A
dd offset loc_1001C424,	offset loc_1001C42E, offset loc_1001C438
dd offset loc_1001C442,	offset loc_1001C44C, offset loc_1001C456
dd offset loc_1001C460,	offset loc_1001C46A, offset loc_1001C474
dd offset loc_1001C47E,	offset loc_1001C488, offset loc_1001C492
dd offset loc_1001C49C,	offset loc_1001C4A6, offset loc_1001C4B0
dd offset loc_1001C4BA,	offset loc_1001C4C4, offset loc_1001C4CE
dd offset loc_1001C4D8,	offset loc_1001C4E2, offset loc_1001C4EC
dd offset loc_1001C4F6,	offset loc_1001C500, offset loc_1001C50A
dd offset loc_1001C514,	offset loc_1001C636, offset loc_1001C51E
dd offset loc_1001C528,	offset loc_1001C532, offset loc_1001C53C
dd offset loc_1001C546,	offset loc_1001C550, offset loc_1001C55A
dd offset loc_1001C564,	offset loc_1001C56E, offset loc_1001C578
dd offset loc_1001C582,	offset loc_1001C58C, offset loc_1001C596
dd offset loc_1001C5A0,	offset loc_1001C5AA, offset loc_1001C5B4
dd offset loc_1001C5BE,	offset loc_1001C5C8, offset loc_1001C5D2
dd offset loc_1001C5DC,	offset loc_1001C5E6, offset loc_1001C5F0
dd offset loc_1001C5FA,	offset loc_1001C604, offset loc_1001C60E
dd offset loc_1001C618,	offset loc_1001C622, offset loc_1001C62C
dd offset loc_1001C738
			
db 3Fh,	0Ah, 0Bh, 0Ch, 0Dh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh 
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 0Eh, 0Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 10h,	11h, 12h, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 13h, 14h, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 15h
db 16h,	3Fh, 3Fh, 17h, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 18h, 3Fh, 19h, 1Ah, 1Bh,	1Ch, 1Dh
db 1Eh,	1Fh, 20h, 21h, 22h, 3Fh, 3Fh, 3Fh, 3Fh,	23h, 24h
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 25h, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 26h,	27h, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 28h, 29h, 2Ah, 2Bh, 2Ch, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 2Dh, 2Eh,	3Fh, 2Fh
db 30h,	31h, 32h, 33h, 34h, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	35h, 36h, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 37h, 38h, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 39h,	3Ah, 3Bh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh, 3Fh,	3Fh, 3Fh
db 3Fh,	3Fh, 3Fh, 3Fh, 3Fh, 3Ch, 3Dh, 3Eh
align 4
			
dd offset loc_1001C699,	offset loc_1001C6A0, offset loc_1001C6A7 
dd offset loc_1001C6AE,	offset loc_1001C6B5, offset loc_1001C6BC
dd offset loc_1001C6C3,	offset loc_1001C6CA, offset loc_1001C6D1
dd offset loc_1001C6D8,	offset loc_1001C6DF, offset loc_1001C6E6
dd offset loc_1001C6ED,	offset loc_1001C6F4, offset loc_1001C6FB
dd offset loc_1001C702,	offset loc_1001C709, offset loc_1001C710
dd offset loc_1001C738
db	4,   15h,   15h,   15h 
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,     5
db    15h,     6,     7,     8
db	9,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   0Ah
db    0Bh,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   0Ch
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   0Dh
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   0Eh
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   0Fh
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   10h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   11h
db    12h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   15h
db    15h,   15h,   15h,   13h
db    14h
align 10h
cmp	eax, 4		
ja	short loc_1001CA99 
jmp	ds:off_1001CAB8[eax*4] 
			
mov	eax, offset aCks_ro_public_ 
jmp	short loc_1001CA7D
			
mov	eax, offset aCks_ro_user_fu 
jmp	short loc_1001CA7D
			
mov	eax, offset aCks_rw_public_ 
jmp	short loc_1001CA7D
			
mov	eax, offset aCks_rw_user_fu 
jmp	short loc_1001CA7D
			
mov	eax, offset aCks_rw_so_func 
			
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
jl	short locret_1001CAB4
push	eax
push	offset aStateS	
call	ds:PR_LogPrint
add	esp, 8
retn
mov	edx, dword_100BACD0 
cmp	dword ptr [edx+4], 1
jl	short locret_1001CAB4
push	eax
push	offset aState0xX 
call	ds:PR_LogPrint
add	esp, 8
			
retn
align 4
dd offset loc_1001CA63	
dd offset loc_1001CA6A
dd offset loc_1001CA71
dd offset loc_1001CA78
align 20h
			
mov	ecx, [eax]
mov	eax, ecx
mov	edx, 4
cmp	eax, 100h
ja	loc_1001CC5B
jz	loc_1001CC51
cmp	eax, 47h	
ja	loc_1001D35B	
movzx	eax, ds:byte_1001D3FC[eax]
jmp	ds:off_1001D378[eax*4] 
			
mov	eax, offset aCkm_dh_pkcs_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_dh_pkcs_ke 
jmp	loc_1001D340
			
mov	eax, offset aCkm_dsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_dsa_key_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_dsa_sha1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md2_rsa_pk 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md5_rsa_pk 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd128_ 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd160_ 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_9796 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_pkcs 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_pkcs_k 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_pkcs_o 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_pkcs_p 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_x9_31 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_x9_31_ 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rsa_x_509 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha1_rsa_p 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha1_rsa_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha1_rsa_x 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224_rsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224_r_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256_rsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256_r_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384_rsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384_r_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512_rsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512_r_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_x9_42_dh_d 
jmp	loc_1001D340
			
mov	eax, offset aCkm_x9_42_dh_h 
jmp	loc_1001D340
			
mov	eax, offset aCkm_x9_42_dh_k 
jmp	loc_1001D340
			
mov	eax, offset aCkm_x9_42_mqv_ 
jmp	loc_1001D340
mov	eax, offset aCkm_rc2_key_ge 
jmp	loc_1001D340
cmp	eax, 200h
ja	loc_1001CDBE
jz	loc_1001CDB4
sub	eax, 101h	
cmp	eax, 52h
ja	loc_1001D35B	
movzx	eax, ds:byte_1001D4C0[eax]
jmp	ds:off_1001D444[eax*4] 
			
mov	eax, offset aCkm_cdmf_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_cdmf_cbc_p 
jmp	loc_1001D340
			
mov	eax, offset aCkm_cdmf_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_cdmf_key_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_cdmf_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_cdmf_mac_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des2_key_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_cbc_p 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_key_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des3_mac_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_cbc_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_cfb64 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_cfb8 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_key_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_mac_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_ofb64 
jmp	loc_1001D340
			
mov	eax, offset aCkm_des_ofb8 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc2_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc2_cbc_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc2_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc2_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc2_mac_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc4 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc4_key_ge 
jmp	loc_1001D340
mov	eax, offset aCkm_md2 
jmp	loc_1001D340
cmp	eax, 330h
ja	loc_1001CEF9
jz	loc_1001CEEF
sub	eax, 201h	
cmp	eax, 71h
ja	loc_1001D35B	
movzx	eax, ds:byte_1001D580[eax]
jmp	ds:off_1001D514[eax*4] 
			
mov	eax, offset aCkm_md2_hmac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md2_hmac_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md5 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md5_hmac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md5_hmac_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd128 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd12_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd12_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd160 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd16_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ripemd16_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224	
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224_hma 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224_h_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256	
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256_hma 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256_h_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384	
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384_hma 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384_h_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512	
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512_hma 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512_h_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha_1_hmac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha_1_hm_0 
jmp	loc_1001D340
mov	eax, offset aCkm_rc5_key_ge 
jmp	loc_1001D340
cmp	eax, 500h
ja	loc_1001D108
jz	loc_1001D0FE
sub	eax, 331h	
cmp	eax, 0D0h
ja	loc_1001D35B	
movzx	eax, ds:byte_1001D6B4[eax]
jmp	ds:off_1001D5F4[eax*4] 
			
mov	eax, offset aCkm_concatenat 
jmp	loc_1001D340
			
mov	eax, offset aCkm_concaten_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_concaten_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_extract_ke 
jmp	loc_1001D340
			
mov	eax, offset aCkm_generic_se 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_cbc_p 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_key_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_idea_mac_g 
jmp	loc_1001D340
			
mov	eax, offset aCkm_key_wrap_l 
jmp	loc_1001D340
			
mov	eax, offset aCkm_key_wrap_s 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md2_key_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_md5_key_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pba_sha1_w 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_md2_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_md5_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_d 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_r 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_2 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pbe_sha1_3 
jmp	loc_1001D340
			
mov	eax, offset aCkm_pkcs5_pbkd 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc5_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc5_cbc_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc5_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc5_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_rc5_mac_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha1_key_d 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha224_key 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha256_key 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha384_key 
jmp	loc_1001D340
			
mov	eax, offset aCkm_sha512_key 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_key_a 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_maste 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_mas_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_md5_m 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_pre_m 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ssl3_sha1_ 
jmp	loc_1001D340
			
mov	eax, offset aCkm_tls_key_an 
jmp	loc_1001D340
			
mov	eax, offset aCkm_tls_master 
jmp	loc_1001D340
			
mov	eax, offset aCkm_tls_mast_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_tls_pre_ma 
jmp	loc_1001D340
			
mov	eax, offset aCkm_tls_prf 
jmp	loc_1001D340
			
mov	eax, offset aCkm_xor_base_a 
jmp	loc_1001D340
mov	eax, offset aCkm_cms_sig 
jmp	loc_1001D340
cmp	eax, 1000h
ja	short loc_1001D180
jz	short loc_1001D176
sub	eax, 550h	
cmp	eax, 7
ja	loc_1001D35B	
jmp	ds:off_1001D788[eax*4] 
			
mov	eax, offset aCkm_camellia_c 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_e 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_2 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_k 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_m 
jmp	loc_1001D340
			
mov	eax, offset aCkm_camellia_3 
jmp	loc_1001D340
mov	eax, offset aCkm_skipjack_k 
jmp	loc_1001D340
cmp	eax, 1100h
ja	loc_1001D2E7
jz	loc_1001D2E0
sub	eax, 1001h	
cmp	eax, 92h
ja	loc_1001D35B	
movzx	eax, ds:byte_1001D82C[eax]
jmp	ds:off_1001D7A8[eax*4] 
			
mov	eax, offset aCkm_aes_cbc 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_cbc_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_ccm 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_ctr 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_cts 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_gcm 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_ecb 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_key_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_mac 
jmp	loc_1001D340
			
mov	eax, offset aCkm_aes_mac_ge 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ecdh1_cofa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ecdh1_deri 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ecdsa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ecdsa_sha1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ecmqv_deri 
jmp	loc_1001D340
			
mov	eax, offset aCkm_ec_key_pai 
jmp	loc_1001D340
			
mov	eax, offset aCkm_fasthash 
jmp	loc_1001D340
			
mov	eax, offset aCkm_fortezza_t 
jmp	loc_1001D340
			
mov	eax, offset aCkm_kea_key_de 
jmp	loc_1001D340
			
mov	eax, offset aCkm_kea_key_pa 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_c 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_0 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_1 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_2 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_3 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_e 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_o 
jmp	loc_1001D340
			
mov	eax, offset aCkm_skipjack_p 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_skipjack_r 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_skipjack_w 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_twofish_cb 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_twofish_ke 
jmp	short loc_1001D340
mov	eax, offset aCkm_des_ecb_en 
jmp	short loc_1001D340
cmp	eax, 2000h
ja	short loc_1001D32A
jz	short loc_1001D323
sub	eax, 1101h
cmp	eax, edx	
ja	short loc_1001D35B 
jmp	ds:off_1001D8C0[eax*4] 
			
mov	eax, offset aCkm_aes_cbc_en 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_aes_ecb_en 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_des3_cbc_e 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_des3_ecb_e 
jmp	short loc_1001D340
			
mov	eax, offset aCkm_des_cbc_en 
jmp	short loc_1001D340
mov	eax, offset aCkm_dsa_parame 
jmp	short loc_1001D340
sub	eax, 2001h
jz	short loc_1001D33B
dec	eax
jnz	short loc_1001D35B 
mov	eax, offset aCkm_x9_42_dh_p 
jmp	short loc_1001D340
mov	eax, offset aCkm_dh_pkcs_pa 
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], edx
jl	short locret_1001D374
push	eax
push	offset aMechanismS 
call	ds:PR_LogPrint
add	esp, 8
retn
			
mov	eax, dword_100BACD0 
cmp	[eax+4], edx
jl	short locret_1001D374
push	ecx
push	offset aMechanism0xP 
call	ds:PR_LogPrint
add	esp, 8
			
retn
align 4
			
dd offset loc_1001CBB1,	offset loc_1001CB43, offset loc_1001CB4D 
dd offset loc_1001CBBB,	offset loc_1001CB57, offset loc_1001CB61
dd offset loc_1001CB89,	offset loc_1001CBA7, offset loc_1001CB9D
dd offset loc_1001CBCF,	offset loc_1001CB93, offset loc_1001CBC5
dd offset loc_1001CB2F,	offset loc_1001CB25, offset loc_1001CB39
dd offset loc_1001CB1B,	offset loc_1001CB11, offset loc_1001CC3D
dd offset loc_1001CC29,	offset loc_1001CC33, offset loc_1001CC47
dd offset loc_1001CBED,	offset loc_1001CC01, offset loc_1001CC15
dd offset loc_1001CBF7,	offset loc_1001CC0B, offset loc_1001CC1F
dd offset loc_1001CBD9,	offset loc_1001CBE3, offset loc_1001D35B
db	4,     5,     6,     7 
db	8,     9,   0Ah,   0Bh
db    0Ch,   0Dh,   0Eh,   20h
db    0Fh,   10h,   11h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    12h,   13h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    14h,   15h,   16h,   17h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    18h,   19h,   1Ah,   1Bh
db    1Ch,   1Dh,   1Eh,   1Fh
			
dd offset loc_1001CD96,	offset loc_1001CD78, offset loc_1001CDAA 
dd offset loc_1001CDA0,	offset loc_1001CD3C, offset loc_1001CD32
dd offset loc_1001CD0A,	offset loc_1001CD46, offset loc_1001CD50
dd offset loc_1001CD14,	offset loc_1001CCC4, offset loc_1001CCEC
dd offset loc_1001CCE2,	offset loc_1001CCCE, offset loc_1001CCF6
dd offset loc_1001CD00,	offset loc_1001CCD8, offset loc_1001CCA6
dd offset loc_1001CC9C,	offset loc_1001CC88, offset loc_1001CCB0
dd offset loc_1001CCBA,	offset loc_1001CC92, offset loc_1001CD5A
dd offset loc_1001CD64,	offset loc_1001CD1E, offset loc_1001CD28
dd offset loc_1001D35B
db	4,   1Eh,   1Eh,   1Eh 
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,     5
db	6,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,     7
db	8,     9,   0Ah,   0Bh
db    0Ch,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   0Dh
db    0Eh,   0Fh,   10h,   11h
db    12h,   13h,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   14h
db    15h,   16h,   17h,   18h
db    19h,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Eh
db    1Eh,   1Eh,   1Eh,   1Ah
db    1Bh,   1Ch,   1Dh
align 4
			
dd offset loc_1001CE09,	offset loc_1001CE13, offset loc_1001CED1 
dd offset loc_1001CEDB,	offset loc_1001CEE5, offset loc_1001CE1D
dd offset loc_1001CE27,	offset loc_1001CE31, offset loc_1001CE3B
dd offset loc_1001CE45,	offset loc_1001CE4F, offset loc_1001CE77
dd offset loc_1001CE81,	offset loc_1001CE8B, offset loc_1001CE59
dd offset loc_1001CE63,	offset loc_1001CE6D, offset loc_1001CE95
dd offset loc_1001CE9F,	offset loc_1001CEA9, offset loc_1001CEB3
dd offset loc_1001CEBD,	offset loc_1001CEC7, offset loc_1001D35B
db    1Ah,   1Ah,   1Ah,   1Ah 
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,     2
db	3,     4,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,     5
db	6,     7,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,     8
db	9,   0Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   0Bh
db    0Ch,   0Dh,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   0Eh
db    0Fh,   10h,   1Ah,   1Ah
db    11h,   12h,   13h,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   14h
db    15h,   16h,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   1Ah
db    1Ah,   1Ah,   1Ah,   17h
db    18h,   19h
align 4
			
dd offset loc_1001D04A,	offset loc_1001D02C, offset loc_1001CF78 
dd offset loc_1001CF6E,	offset loc_1001CF5A, offset loc_1001CF82
dd offset loc_1001CF8C,	offset loc_1001CF64, offset loc_1001CF50
dd offset loc_1001CF32,	offset loc_1001CF28, offset loc_1001CF3C
dd offset loc_1001D0F4,	offset loc_1001CF46, offset loc_1001D0AE
dd offset loc_1001D090,	offset loc_1001D086, offset loc_1001D09A
dd offset loc_1001D0E0,	offset loc_1001D0CC, offset loc_1001D0C2
dd offset loc_1001D0D6,	offset loc_1001D0EA, offset loc_1001D0A4
dd offset loc_1001D0B8,	offset loc_1001CFB4, offset loc_1001CFAA
dd offset loc_1001D054,	offset loc_1001D068, offset loc_1001D072
dd offset loc_1001D07C,	offset loc_1001D05E, offset loc_1001CFC8
dd offset loc_1001CFD2,	offset loc_1001D004, offset loc_1001D00E
dd offset loc_1001CFE6,	offset loc_1001CFDC, offset loc_1001CFF0
dd offset loc_1001CFFA,	offset loc_1001D018, offset loc_1001CFBE
dd offset loc_1001CF96,	offset loc_1001CFA0, offset loc_1001D35B
			
db 2Fh,	2Fh, 5,	6, 7, 8, 9, 0Ah, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh 
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 0Bh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 0Ch
db 2Fh,	0Dh, 0Eh, 0Fh, 10h, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 11h, 12h, 13h, 14h, 15h,	16h, 17h
db 18h,	19h, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	1Ah, 1Bh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 1Ch, 1Dh, 1Eh, 1Fh, 20h, 21h,	22h, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 23h,	24h, 2Fh
db 2Fh,	2Fh, 2Fh, 25h, 26h, 27h, 28h, 29h, 2Ah,	2Fh, 2Fh
db 2Fh,	2Fh, 2Bh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Ch, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh, 2Fh,	2Fh, 2Fh
db 2Fh,	2Fh, 2Fh, 2Fh, 2Fh, 2Dh, 2Eh
align 4
dd offset loc_1001D144	
dd offset loc_1001D126
dd offset loc_1001D162
dd offset loc_1001D16C
dd offset loc_1001D13A
dd offset loc_1001D14E
dd offset loc_1001D130
			
dd offset loc_1001D295,	offset loc_1001D28B, offset loc_1001D281 
dd offset loc_1001D29F,	offset loc_1001D2CB, offset loc_1001D2BD
dd offset loc_1001D2C4,	offset loc_1001D26D, offset loc_1001D263
dd offset loc_1001D259,	offset loc_1001D245, offset loc_1001D227
dd offset loc_1001D231,	offset loc_1001D21D, offset loc_1001D213
dd offset loc_1001D23B,	offset loc_1001D24F, offset loc_1001D1F5
dd offset loc_1001D1EB,	offset loc_1001D1AF, offset loc_1001D1FF
dd offset loc_1001D209,	offset loc_1001D1B9, offset loc_1001D1CD
dd offset loc_1001D1E1,	offset loc_1001D1C3, offset loc_1001D1D7
dd offset loc_1001D2D9,	offset loc_1001D2D2, offset loc_1001D35B
db	4,     5,     6,     7 
db	8,     9,   20h,   20h
db    20h,   20h,   20h,   0Ah
db    0Bh,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   0Ch
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   0Dh
db    0Eh,   0Fh,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   10h
db    11h,   12h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   13h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   20h,   20h,   14h
db    15h,   16h,   17h,   18h
db    19h,   1Ah,   1Bh,   1Ch
db    1Dh,   20h,   20h,   20h
db    20h,   20h,   20h,   20h
db    20h,   1Eh,   1Fh
align 10h
dd offset loc_1001D315	
dd offset loc_1001D30E
dd offset loc_1001D307
dd offset loc_1001D300
align 10h
cmp	eax, 14h
ja	loc_1001DA03
jz	loc_1001D9EC
cmp	eax, 13h	
ja	loc_1001DB0B	
movzx	ecx, ds:byte_1001DB4C[eax]
jmp	ds:off_1001DB20[ecx*4] 
			
mov	eax, offset aCkk_des 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_dh 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_dsa 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_ec 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_generic_se 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_kea 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_rc2 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_rc4 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_rsa 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
mov	eax, offset aCkk_x9_42_dh 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_des2 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 19h
ja	short loc_1001DA41
jz	short loc_1001DA2A
cmp	eax, 15h
jnz	loc_1001DB0B	
mov	eax, offset aCkk_des3 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_rc5 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 1Fh
ja	short loc_1001DAB7
jz	short loc_1001DAA0
mov	ecx, eax
sub	ecx, 1Ah
jz	short loc_1001DA89
dec	ecx
jz	short loc_1001DA72
sub	ecx, 3
jnz	loc_1001DB0B	
mov	eax, offset aCkk_cdmf 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_skipjack 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_idea 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_aes 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
cmp	eax, 21h
jz	short loc_1001DAF4
cmp	eax, 25h
jz	short loc_1001DADD
cmp	eax, 0FFFFFFFFh
jnz	short loc_1001DB0B 
mov	eax, offset aCkk_invalid_ke 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_camellia 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
mov	eax, offset aCkk_twofish 
push	eax
push	offset dword_100A23E0
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
			
push	eax		
push	offset a0xP	
push	edx
push	esi
call	ds:PR_snprintf
add	esp, 10h
retn
align 10h
dd offset loc_1001D934	
dd offset loc_1001D91D
dd offset loc_1001D94B
dd offset loc_1001D9D5
dd offset loc_1001D979
dd offset loc_1001D962
dd offset loc_1001D990
dd offset loc_1001D9A7
dd offset loc_1001D906
dd offset loc_1001DB0B
db	4,     5,   0Ah,   0Ah 
db    0Ah,   0Ah,   0Ah,   0Ah
db    0Ah,   0Ah,   0Ah,   0Ah
db	6,     7,     8,     9
			
sub	esp, 80h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+80h+var_4], eax
mov	eax, [edi]
push	ebx
push	esi
mov	edx, 30h
lea	esi, [esp+88h+var_68]
call	sub_1001B510
mov	eax, [edi]
cmp	eax, 81h
ja	short loc_1001DBA2
jz	loc_1001DE47	
cmp	eax, 3		
ja	loc_1001DC82	
jmp	ds:off_1001DF58[eax*4] 
cmp	eax, 404h
ja	loc_1001DC61
cmp	eax, 400h
jnb	loc_1001DDAA	
sub	eax, 87h	
cmp	eax, 0E9h
ja	loc_1001DC82	
movzx	eax, ds:byte_1001DF80[eax]
jmp	ds:off_1001DF68[eax*4] 
			
			
mov	ecx, [edi+8]	
			
test	ecx, ecx
jz	short loc_1001DC14 
mov	eax, [edi+4]
test	eax, eax
jz	short loc_1001DC14 
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 4
jl	loc_1001DF3E
cmp	byte ptr [eax],	0
mov	eax, offset aCk_true 
jnz	short loc_1001DC03
mov	eax, offset aCk_false 
push	ecx
push	eax
lea	eax, [esp+90h+var_68]
push	eax
push	offset aSSD_0	
jmp	loc_1001DF35
			
cmp	dword ptr [edi+8], 0 
jbe	loc_1001DDF1	
mov	eax, [edi+4]
test	eax, eax
jz	loc_1001DD1D
mov	eax, [eax]
mov	ecx, 31h
lea	edx, [esp+88h+var_38]
call	sub_1001C150
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	loc_1001DF3E
mov	edx, [edi+8]
push	edx
lea	eax, [esp+8Ch+var_38]
push	eax
lea	ecx, [esp+90h+var_68]
push	ecx
push	offset aSSD_0	
jmp	loc_1001DF35
cmp	eax, 0CE534352h
ja	loc_1001DD0F
cmp	eax, 0CE534351h
jnb	loc_1001DDF1	
cmp	eax, 406h
jz	loc_1001DDAA	
			
mov	ecx, [edi+8]	
test	ecx, ecx
jz	loc_1001DF17
mov	eax, [edi+4]
test	eax, eax
jz	loc_1001DF17
mov	[esp+88h+var_80], 5
mov	[esp+88h+var_7C], eax
mov	[esp+88h+var_78], ecx
cmp	ecx, 18h
jb	short loc_1001DCB5
mov	[esp+88h+var_78], 18h
lea	eax, [esp+88h+var_80]
push	0
push	eax
call	CERT_Hexify
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_1001DF17
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001DCF2
mov	edx, [edi+8]
push	edx
push	esi
lea	eax, [esp+90h+var_68]
push	eax
push	offset aSSD_0	
call	ds:PR_LogPrint
add	esp, 10h
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	ebx
mov	ecx, [esp+80h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 80h
retn
add	eax, 31AC9CA8h
cmp	eax, 3
ja	loc_1001DC82	
cmp	dword ptr [edi+8], 0
jbe	loc_1001DDF1	
mov	eax, [edi+4]
test	eax, eax
jz	short loc_1001DD64 
mov	ecx, [eax]
mov	edx, 31h
lea	esi, [esp+88h+var_38]
call	sub_1001C2C0
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 4
jl	loc_1001DF3E
mov	eax, [edi+8]
push	eax
mov	ecx, esi
push	ecx
lea	edx, [esp+90h+var_68]
push	edx
push	offset aSSD_0	
jmp	loc_1001DF35
			
			
cmp	dword ptr [edi+8], 0 
jbe	loc_1001DDF1	
mov	eax, [edi+4]
test	eax, eax
jz	short loc_1001DDAA 
mov	eax, [eax]
mov	edx, 31h
lea	esi, [esp+88h+var_38]
call	sub_1001D8E0
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 4
jl	loc_1001DF3E
mov	ecx, [edi+8]
push	ecx
mov	edx, esi
push	edx
lea	eax, [esp+90h+var_68]
push	eax
push	offset aSSD_0	
jmp	loc_1001DF35
			
cmp	dword ptr [edi+8], 0 
jbe	short loc_1001DDF1 
mov	eax, [edi+4]
test	eax, eax
jz	short loc_1001DDF1 
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	loc_1001DF3E
mov	edx, [eax]
push	edx
lea	eax, [esp+8Ch+var_68]
push	eax
push	offset aSLu	
call	ds:PR_LogPrint
add	esp, 0Ch
pop	esi
pop	ebx
mov	ecx, [esp+80h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 80h
retn
			
mov	eax, [edi+8]	
test	eax, eax
jz	short loc_1001DE47 
mov	ecx, [edi+4]
test	ecx, ecx
jz	short loc_1001DE47 
inc	eax
cmp	eax, 31h
jb	short loc_1001DE0A
mov	eax, 31h
push	ecx
push	offset dword_100A23E0
push	eax
lea	ecx, [esp+94h+var_38]
push	ecx
call	ds:PR_snprintf
mov	edx, dword_100BACD0
add	esp, 10h
cmp	dword ptr [edx+4], 4
jl	loc_1001DF3E
mov	eax, [edi+8]
push	eax
lea	ecx, [esp+8Ch+var_38]
push	ecx
lea	edx, [esp+90h+var_68]
push	edx
push	offset aSSD_1	
jmp	loc_1001DF35
			
mov	ecx, [edi+8]	
test	ecx, ecx
jz	short loc_1001DEBD 
mov	eax, [edi+4]
test	eax, eax
jz	short loc_1001DEBD 
mov	[esp+88h+var_70], eax
lea	eax, [esp+88h+var_74]
push	eax
mov	[esp+8Ch+var_74], 5
mov	[esp+8Ch+var_6C], ecx
call	CERT_DerNameToAscii
mov	esi, eax
add	esp, 4
test	esi, esi
jz	loc_1001DC82	
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001DEA0
mov	edx, [edi+8]
push	edx
push	esi
lea	eax, [esp+90h+var_68]
push	eax
push	offset aSSD_0	
call	ds:PR_LogPrint
add	esp, 10h
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	ebx
mov	ecx, [esp+80h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 80h
retn
			
mov	esi, [edi+8]	
test	esi, esi
jz	loc_1001DC82	
mov	ebx, [edi+4]
test	ebx, ebx
jz	loc_1001DC82	
mov	ecx, esi
mov	edx, ebx
test	ecx, ecx
jle	short loc_1001DEFE
jmp	short loc_1001DEE0
align 10h
			
movzx	eax, byte ptr [edx]
inc	edx
cmp	eax, 20h
jb	short loc_1001DEEE
cmp	eax, 7Fh
jb	short loc_1001DEF7
test	eax, eax
jnz	short loc_1001DEFC
cmp	ecx, 1
jnz	short loc_1001DEFC
dec	ecx
test	ecx, ecx
jg	short loc_1001DEE0
			
test	ecx, ecx
jnz	loc_1001DC82	
lea	eax, [esi+1]
cmp	eax, 31h
jb	short loc_1001DF11
mov	eax, 31h
push	ebx
jmp	loc_1001DE0B
			
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001DF3E
mov	edx, [edi+8]
mov	eax, [edi+4]
push	edx
push	eax
lea	ecx, [esp+90h+var_68]
push	ecx
push	offset aS0xPD	
			
call	ds:PR_LogPrint
add	esp, 10h
			
mov	ecx, [esp+88h+var_4]
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 80h
retn
align 4
dd offset loc_1001DBD6	
dd offset loc_1001DBD6
dd offset loc_1001DDF1
			
dd offset loc_1001DEBD,	offset loc_1001DBD6, offset loc_1001DC82 
			
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5	
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 1, 2,	3, 4, 4
db 4, 4, 4, 4, 4, 4, 4,	4, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 0, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 0, 0, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 5, 5, 5, 5, 5, 5,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 5
db 5, 0, 0, 4, 4, 4, 4,	5, 5, 5, 5, 5, 5, 5, 5,	5, 5, 4
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E08E
push	offset aC_initialize 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
mov	esi, [esp+10h]
jl	short loc_1001E0A9
push	esi
push	offset aPinitargs0xP 
call	edi 
add	esp, 8
push	offset dword_100BA1AC
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+2]
push	esi
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1A8
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E10E
push	offset aC_finalize 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
mov	esi, [esp+10h]
jl	short loc_1001E129
push	esi
push	offset aPreserved0xP 
call	edi 
add	esp, 8
push	offset dword_100BA1B8
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+6]
push	esi
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1B4
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
push	ecx
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
jl	short loc_1001E190
push	offset aC_getinfo 
call	ebp 
add	esp, 4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
mov	esi, [esp+18h]
jl	short loc_1001E1AB
push	esi
push	offset aPinfo0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA1C4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+0Ah]
push	esi
call	eax
mov	[esp+18h], eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1C0
call	ds:PR_AtomicAdd
mov	ebx, [esp+20h]
add	esp, 10h
test	ebx, ebx
jnz	short loc_1001E25E
mov	ecx, dword_100BACD0
mov	edi, 4
cmp	[ecx+4], edi
jl	short loc_1001E20E
movzx	edx, byte ptr [esi+1]
movzx	eax, byte ptr [esi]
push	edx
push	eax
push	offset aCryptokiVersio 
call	ebp 
add	esp, 0Ch
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1001E227
lea	edx, [esi+2]
push	edx
push	offset aManufacturerid 
call	ebp 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1001E23F
lea	ecx, [esi+26h]
push	ecx
push	offset aLibraryDescrip 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_1001E25E
movzx	eax, byte ptr [esi+47h]
movzx	ecx, byte ptr [esi+46h]
push	eax
push	ecx
push	offset aLibraryVersion 
call	ebp 
add	esp, 0Ch
			
mov	eax, ebx
call	sub_1001C3A0
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	ecx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E28E
push	offset aC_getfunctionl 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
mov	esi, [esp+10h]
jl	short loc_1001E2A9
push	esi
push	offset aPpfunctionlist 
call	edi 
add	esp, 8
push	offset dword_100BA1D0
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+0Eh]
push	esi
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1CC
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, ds:PR_LogPrint
push	edi
jl	short loc_1001E30F
push	offset aC_getslotlist 
call	esi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_1001E32F
movzx	edx, byte ptr [esp+14h]
push	edx
push	offset aTokenpresent0x 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
mov	ebx, [esp+18h]
cmp	[eax+4], edi
jl	short loc_1001E348
push	ebx
push	offset aPslotlist0xP 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebp, [esp+1Ch]
cmp	[ecx+4], edi
jl	short loc_1001E362
push	ebp
push	offset aPulcount0xP 
call	esi 
add	esp, 8
push	offset dword_100BA1DC
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+18h]
push	ebp
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+12h]
push	ebx
push	edx
call	ecx
mov	[esp+28h], eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA1D8
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
mov	edi, ds:PR_LogPrint
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_1001E3BF
mov	eax, [ebp+0]
push	eax
push	offset aPulcount0xX 
call	edi 
add	esp, 8
test	ebx, ebx
jz	short loc_1001E3F1
xor	esi, esi
cmp	[ebp+0], esi
jbe	short loc_1001E3F1
lea	ebx, [ebx+0]
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001E3EB
mov	edx, [ebx+esi*4]
push	edx
push	esi
push	offset aSlotidDX 
call	edi 
add	esp, 0Ch
inc	esi
cmp	esi, [ebp+0]
jb	short loc_1001E3D0
			
mov	esi, [esp+18h]
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E42F
push	offset aC_getslotinfo 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	ebp, [esp+14h]
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001E44E
push	ebp
push	offset aSlotid0xX 
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
mov	esi, [esp+18h]
jl	short loc_1001E468
push	esi
push	offset aPinfo0xP 
call	edi 
add	esp, 8
push	offset dword_100BA1E8
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+16h]
push	esi
push	ebp
call	ecx
mov	ebp, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1E4
call	ds:PR_AtomicAdd
add	esp, 14h
test	ebp, ebp
jnz	loc_1001E560
mov	edx, dword_100BACD0
mov	edi, ds:PR_LogPrint
mov	ebx, 4
cmp	[edx+4], ebx
jl	short loc_1001E4C7
push	esi
push	offset aSlotdescript_0 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E4DF
lea	ecx, [esi+40h]
push	ecx
push	offset aManufacturerid 
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], ebx
jl	short loc_1001E524
mov	eax, [esi+60h]
mov	edx, offset aCkf_token_pres 
test	al, 1
jnz	short loc_1001E4FB
mov	edx, offset byte_100A1623
mov	ecx, offset aCkf_removable_ 
test	al, 2
jnz	short loc_1001E509
mov	ecx, offset byte_100A1623
test	bl, al
mov	eax, offset aCkf_hw_slot 
jnz	short loc_1001E517
mov	eax, offset byte_100A1623
push	edx
push	ecx
push	eax
push	offset aFlagsSSS 
call	edi 
add	esp, 10h
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E542
movzx	ecx, byte ptr [esi+65h]
movzx	edx, byte ptr [esi+64h]
push	ecx
push	edx
push	offset aHardwareVersio 
call	edi 
add	esp, 0Ch
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E560
movzx	ecx, byte ptr [esi+67h]
movzx	edx, byte ptr [esi+66h]
push	ecx
push	edx
push	offset aFirmwareVersio 
call	edi 
add	esp, 0Ch
			
mov	eax, ebp
call	sub_1001C3A0
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
push	ecx
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
jl	short loc_1001E590
push	offset aC_gettokeninfo 
call	ebp 
add	esp, 4
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001E5AF
mov	edx, [esp+18h]
push	edx
push	offset aSlotid0xX 
call	ebp 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
mov	esi, [esp+1Ch]
jl	short loc_1001E5C8
push	esi
push	offset aPinfo0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA1F4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+1Ch]
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+1Ah]
push	esi
push	ecx
call	eax
mov	[esp+1Ch], eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA1F0
call	ds:PR_AtomicAdd
mov	edi, [esp+24h]
add	esp, 14h
test	edi, edi
jnz	loc_1001E74E
mov	ecx, dword_100BACD0
mov	ebx, 4
cmp	[ecx+4], ebx
jl	short loc_1001E62C
push	esi
push	offset aLabel_32s 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], ebx
jl	short loc_1001E645
lea	eax, [esi+20h]
push	eax
push	offset aManufacturerid 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1001E65E
lea	edx, [esi+40h]
push	edx
push	offset aModel_16s 
call	ebp 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E676
lea	ecx, [esi+50h]
push	ecx
push	offset aSerial_16s 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], ebx
jl	short loc_1001E6CE
mov	eax, [esi+60h]
mov	edi, offset aCkf_user_pin_i 
test	al, 8
jnz	short loc_1001E692
mov	edi, offset byte_100A1623
mov	edx, offset aCkf_login_requ 
test	bl, al
jnz	short loc_1001E6A0
mov	edx, offset byte_100A1623
mov	ecx, offset aCkf_write_prot 
test	al, 2
jnz	short loc_1001E6AE
mov	ecx, offset byte_100A1623
test	al, 1
mov	eax, offset aCkf_rng 
jnz	short loc_1001E6BC
mov	eax, offset byte_100A1623
push	edi
push	edx
push	ecx
push	eax
push	offset aFlagsSSSS 
call	ebp 
mov	edi, [esp+24h]
add	esp, 14h
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E6EA
mov	ecx, [esi+68h]
mov	edx, [esi+64h]
push	ecx
push	edx
push	offset aMaxsessionsUSe 
call	ebp 
add	esp, 0Ch
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E706
mov	ecx, [esi+70h]
mov	edx, [esi+6Ch]
push	ecx
push	edx
push	offset aMaxrwsessionsU 
call	ebp 
add	esp, 0Ch
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E72A
movzx	ecx, byte ptr [esi+8Dh]
movzx	edx, byte ptr [esi+8Ch]
push	ecx
push	edx
push	offset aHardwareVersio 
call	ebp 
add	esp, 0Ch
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001E74E
movzx	ecx, byte ptr [esi+8Fh]
movzx	edx, byte ptr [esi+8Eh]
push	ecx
push	edx
push	offset aFirmwareVersio 
call	ebp 
add	esp, 0Ch
			
mov	eax, edi
call	sub_1001C3A0
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, ds:PR_LogPrint
push	edi
jl	short loc_1001E77F
push	offset aC_getmechanism 
call	esi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_1001E79E
mov	edx, [esp+14h]
push	edx
push	offset aSlotid0xX 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
mov	ebp, [esp+18h]
cmp	[eax+4], edi
jl	short loc_1001E7B7
push	ebp
push	offset aPmechanismlist 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+1Ch]
cmp	[ecx+4], edi
jl	short loc_1001E7D1
push	ebx
push	offset aPulcount0xP 
call	esi 
add	esp, 8
push	offset dword_100BA200
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+18h]
push	ebx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+1Eh]
push	ebp
push	edx
call	ecx
mov	ebp, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA1FC
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_1001E829
mov	eax, [ebx]
push	eax
push	offset aPulcount0xX 
call	ds:PR_LogPrint
add	esp, 8
mov	eax, ebp
call	sub_1001C3A0
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E85F
push	offset aC_getmechani_0 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001E87E
mov	edx, [esp+14h]
push	edx
push	offset aSlotid0xX 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
mov	ebp, [esp+18h]
cmp	[eax+4], esi
jl	short loc_1001E897
push	ebp
push	offset aType0xX	
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+1Ch]
jl	short loc_1001E8B1
push	esi
push	offset aPinfo0xP 
call	edi 
add	esp, 8
push	offset dword_100BA20C
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+18h]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+22h]
push	ebp
push	edx
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA208
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001E91F
push	offset aC_inittoken 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001E93E
mov	edx, [esp+14h]
push	edx
push	offset aSlotid0xX 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001E957
mov	ecx, [esp+18h]
push	ecx
push	offset aPpin0xP	
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebp, [esp+1Ch]
cmp	[edx+4], esi
jl	short loc_1001E971
push	ebp
push	offset aUlpinlenD 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
mov	esi, [esp+20h]
jl	short loc_1001E98A
push	esi
push	offset aPlabel0xP 
call	edi 
add	esp, 8
push	offset dword_100BA218
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+1Ch]
mov	edx, [esp+18h]
push	esi
push	ebp
mov	ebx, eax
mov	eax, dword_100BACBC
push	ecx
mov	ecx, [eax+26h]
push	edx
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA214
call	ds:PR_AtomicAdd
add	esp, 1Ch
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_1001EA15
push	offset aC_initpin 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_1001EA35
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001EA76
push	ebp
push	offset aHsession0xX 
jmp	short loc_1001EA71
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001EA76
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001EA8B
push	ebx
push	offset aPpin0xP	
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_1001EAA5
push	esi
push	offset aUlpinlenD 
call	edi 
add	esp, 8
push	offset dword_100BA224
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+2Ah]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA220
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+60h+arg_C]
push	ebp
mov	ebp, [esp+64h+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+6Ch+var_5C], ebp
mov	[esp+6Ch+var_58], ebx
jl	short loc_1001EB3D
push	offset aC_setpin 
call	edi 
add	esp, 4
mov	eax, [esp+6Ch+arg_0]
test	eax, eax
jz	short loc_1001EB5D
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001EB9E
push	eax
push	offset aHsession0xX 
jmp	short loc_1001EB99
push	50h
lea	edx, [esp+70h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+7Ch+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001EB9E
push	0
lea	edx, [esp+70h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001EBB3
push	ebp
push	offset aPoldpin0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebp, [esp+6Ch+arg_8]
cmp	[ecx+4], esi
jl	short loc_1001EBCD
push	ebp
push	offset aUloldlenD 
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1001EBE3
push	ebx
push	offset aPnewpin0xP 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
mov	esi, [esp+6Ch+arg_10]
jl	short loc_1001EBFF
push	esi
push	offset aUlnewlenD 
call	edi 
add	esp, 8
push	offset dword_100BA230
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+70h+var_58]
mov	edx, [esp+70h+var_5C]
push	esi
push	ecx
mov	ecx, dword_100BACBC
push	ebp
mov	ebx, eax
mov	eax, [esp+7Ch+arg_0]
push	edx
mov	edx, [ecx+2Eh]
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA22C
call	ds:PR_AtomicAdd
add	esp, 20h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	eax, [esp+5Ch+arg_8]
mov	ecx, [esp+5Ch+arg_C]
push	ebx
mov	ebx, [esp+60h+arg_10]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_AtomicIncrement
push	offset dword_100BACD4
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_58], ecx
call	edi 
mov	eax, dword_100BACD4
add	esp, 4
cmp	eax, dword_100BACD8
jbe	short loc_1001ECB8
mov	dword_100BACD8,	eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	esi, ds:PR_LogPrint
jl	short loc_1001ECD4
push	offset aC_opensession 
call	esi 
add	esp, 4
mov	eax, dword_100BACD0
mov	ebp, 3
cmp	[eax+4], ebp
jl	short loc_1001ECF2
mov	ecx, [esp+6Ch+arg_0]
push	ecx
push	offset aSlotid0xX 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], ebp
mov	ebp, [esp+6Ch+arg_4]
jl	short loc_1001ED0C
push	ebp
push	offset aFlags0xX 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 3
jl	short loc_1001ED26
mov	ecx, [esp+6Ch+var_5C]
push	ecx
push	offset aPapplication0x 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 3
jl	short loc_1001ED41
mov	eax, [esp+6Ch+var_58]
push	eax
push	offset aNotify0xX 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_1001ED58
push	ebx
push	offset aPhsession0xP 
call	esi 
add	esp, 8
push	offset dword_100BA23C
call	edi 
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+70h+var_58]
mov	ecx, [esp+70h+arg_0]
push	ebx
push	edx
mov	edx, dword_100BACBC
mov	edi, eax
mov	eax, [esp+78h+var_5C]
push	eax
mov	eax, [edx+32h]
push	ebp
push	ecx
call	eax
mov	ebp, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA238
call	ds:PR_AtomicAdd
mov	eax, [ebx]
add	esp, 20h
test	eax, eax
jz	short loc_1001EDB4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001EDF5
push	eax
push	offset aPhsession0xX 
jmp	short loc_1001EDEC
push	50h
lea	edx, [esp+70h+var_54]
push	offset aPhsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+7Ch+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_1001EDF5
push	0
lea	edx, [esp+70h+var_54]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, ebp
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
push	ebx
push	esi
push	edi
push	offset dword_100BACD4
call	ds:PR_AtomicDecrement
mov	eax, dword_100BACD0
mov	edi, ds:PR_LogPrint
add	esp, 4
cmp	dword ptr [eax+4], 1
jl	short loc_1001EE5A
push	offset aC_closesession 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_1001EE76
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_1001EEB3
push	esi
push	offset aHsession0xX 
jmp	short loc_1001EEAE
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_1001EEB3
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA248
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+36h]
push	esi
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA244
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001EF2E
push	offset aC_closeallsess 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
mov	esi, [esp+10h]
jl	short loc_1001EF49
push	esi
push	offset aSlotid0xX 
call	edi 
add	esp, 8
push	offset dword_100BA254
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+3Ah]
push	esi
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA250
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebx
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
mov	esi, ds:PR_LogPrint
push	edi
jl	short loc_1001EFC1
push	offset aC_getsessionin 
call	esi 
add	esp, 4
mov	ebx, [esp+64h+arg_0]
test	ebx, ebx
jz	short loc_1001EFE1
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_1001F022
push	ebx
push	offset aHsession0xX 
jmp	short loc_1001F01D
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_1001F022
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	esi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1001F037
push	ebp
push	offset aPinfo0xP 
call	esi 
add	esp, 8
push	offset dword_100BA260
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+3Eh]
push	ebp
push	ebx
mov	edi, eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA25C
call	ds:PR_AtomicAdd
add	esp, 14h
test	ebx, ebx
jnz	short loc_1001F0EB
mov	eax, dword_100BACD0
mov	esi, ds:PR_LogPrint
mov	edi, 4
cmp	[eax+4], edi
jl	short loc_1001F095
mov	ecx, [ebp+0]
push	ecx
push	offset aSlotid0xX 
call	esi 
add	esp, 8
mov	eax, [ebp+4]
call	sub_1001CA50
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_1001F0D3
mov	eax, [ebp+8]
mov	ecx, offset aCkf_serial_ses 
test	al, 4
jnz	short loc_1001F0B9
mov	ecx, offset byte_100A1623
test	al, 2
mov	eax, offset aCkf_rw_session 
jnz	short loc_1001F0C7
mov	eax, offset byte_100A1623
push	ecx
push	eax
push	offset aFlagsSS	
call	esi 
add	esp, 0Ch
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1001F0EB
mov	ecx, [ebp+0Ch]
push	ecx
push	offset aDeviceerror0xX 
call	esi 
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_8]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+6Ch+arg_4]
mov	[esp+6Ch+var_58], edi
mov	[esp+6Ch+var_5C], eax
jl	short loc_1001F14E
push	offset aC_getoperation 
call	ebp 
add	esp, 4
mov	ebx, [esp+6Ch+arg_0]
test	ebx, ebx
jz	short loc_1001F16E
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_1001F1AF
push	ebx
push	offset aHsession0xX 
jmp	short loc_1001F1AA
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_1001F1AF
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_1001F1C5
push	edi
push	offset aPoperationstat 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1001F1DF
mov	eax, [esp+6Ch+var_5C]
push	eax
push	offset aPuloperationst 
call	ebp 
add	esp, 8
push	offset dword_100BA26C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_5C]
mov	edx, [esp+70h+var_58]
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+42h]
push	edx
push	ebx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA268
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_1001F23B
mov	eax, [esp+6Ch+var_5C]
mov	ecx, [eax]
push	ecx
push	offset aPuloperation_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 0A8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A8h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, [esp+0B4h+arg_4]
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+0B8h+var_A8], esi
jl	short loc_1001F29E
push	offset aC_setoperation 
call	edi 
add	esp, 4
mov	eax, [esp+0B8h+arg_0]
test	eax, eax
jz	short loc_1001F2C1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_1001F302
push	eax
push	offset aHsession0xX 
jmp	short loc_1001F2FD
push	50h
lea	edx, [esp+0BCh+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1001F302
push	0
lea	edx, [esp+0BCh+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001F317
push	esi
push	offset aPoperationstat 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1001F334
mov	edx, [esp+0B8h+arg_8]
push	edx
push	offset aUloperationsta 
call	edi 
add	esp, 8
mov	ebp, [esp+0B8h+arg_C]
test	ebp, ebp
jz	short loc_1001F351
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001F38C
push	ebp
push	offset aHencryptionkey 
jmp	short loc_1001F387
push	50h
lea	ecx, [esp+0BCh+var_A4]
push	offset aHencryptionkey 
push	ecx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	edx, [esp+0C8h+var_A4]
push	50h
push	edx
call	PL_strcatn
mov	eax, dword_100BACD0
add	esp, 18h
cmp	[eax+4], ebx
jl	short loc_1001F38C
push	0
lea	ecx, [esp+0BCh+var_A4]
push	ecx
call	edi 
add	esp, 8
			
mov	esi, [esp+0B8h+arg_10]
test	esi, esi
jz	short loc_1001F3AA
mov	edx, dword_100BACD0
cmp	[edx+4], ebx
jl	short loc_1001F3E6
push	esi
push	offset aHauthenticatio 
jmp	short loc_1001F3E1
push	50h
lea	eax, [esp+0BCh+var_A4]
push	offset aHauthenticatio 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+0C8h+var_A4]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
add	esp, 18h
cmp	[edx+4], ebx
jl	short loc_1001F3E6
push	0
lea	eax, [esp+0BCh+var_A4]
push	eax
call	edi 
add	esp, 8
			
push	offset dword_100BA278
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+0BCh+arg_8]
mov	edx, [esp+0BCh+var_A8]
push	esi
push	ebp
push	ecx
mov	ecx, dword_100BACBC
mov	ebx, eax
mov	eax, [esp+0C8h+arg_0]
push	edx
mov	edx, [ecx+46h]
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA274
call	ds:PR_AtomicAdd
add	esp, 20h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+0B8h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A8h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_8]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_1001F495
push	offset aC_login	
call	edi 
add	esp, 4
mov	eax, [esp+68h+arg_0]
test	eax, eax
jz	short loc_1001F4B5
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001F4F6
push	eax
push	offset aHsession0xX 
jmp	short loc_1001F4F1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001F4F6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
mov	ebp, [esp+68h+arg_4]
cmp	[eax+4], esi
jl	short loc_1001F50F
push	ebp
push	offset aUsertype0xX 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_1001F525
push	ebx
push	offset aPpin0xP	
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
mov	esi, [esp+68h+arg_C]
jl	short loc_1001F53F
push	esi
push	offset aUlpinlenD 
call	edi 
add	esp, 8
push	offset dword_100BA284
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+6Ch+arg_0]
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [esp+6Ch+var_58]
push	esi
push	eax
mov	eax, [edx+4Ah]
push	ebp
push	ecx
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA280
call	ds:PR_AtomicAdd
add	esp, 1Ch
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001F5CC
push	offset aC_logout 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_1001F5E8
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_1001F625
push	esi
push	offset aHsession0xX 
jmp	short loc_1001F620
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_1001F625
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA290
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+4Eh]
push	esi
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA28C
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
mov	ebp, [esp+60h+arg_C]
push	esi
mov	esi, ds:PR_LogPrint
mov	[esp+64h+var_58], ebx
jl	short loc_1001F6B8
push	offset aC_createobject 
call	esi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
push	edi
test	eax, eax
jz	short loc_1001F6D9
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_1001F71A
push	eax
push	offset aHsession0xX 
jmp	short loc_1001F715
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_1001F71A
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	esi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1001F72F
push	ebx
push	offset aPtemplate0xP 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+68h+arg_8]
cmp	[ecx+4], edi
jl	short loc_1001F749
push	ebx
push	offset aUlcountD 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_1001F75F
push	ebp
push	offset aPhobject0xP 
call	esi 
add	esp, 8
test	ebx, ebx
jz	short loc_1001F77B
mov	edi, [esp+68h+var_58]
mov	esi, ebx
lea	esp, [esp+0]
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_1001F770
push	offset dword_100BA29C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+6Ch+arg_0]
mov	edx, dword_100BACBC
push	ebp
mov	edi, eax
mov	eax, [esp+70h+var_58]
push	ebx
push	eax
mov	eax, [edx+52h]
push	ecx
call	eax
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA298
call	ds:PR_AtomicAdd
mov	eax, [ebp+0]
add	esp, 1Ch
pop	edi
test	eax, eax
jz	short loc_1001F7D8
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1001F819
push	eax
push	offset aPhobject0xX 
jmp	short loc_1001F810
push	50h
lea	edx, [esp+68h+var_54]
push	offset aPhobject0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_1001F819
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 0ACh
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0ACh+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+0ACh+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+0BCh+arg_8]
mov	[esp+0BCh+var_A8], edi
mov	[esp+0BCh+var_AC], eax
jl	short loc_1001F88A
push	offset aC_copyobject 
call	ebp 
add	esp, 4
mov	eax, [esp+0BCh+arg_0]
test	eax, eax
jz	short loc_1001F8AD
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_1001F8EE
push	eax
push	offset aHsession0xX 
jmp	short loc_1001F8E9
push	50h
lea	eax, [esp+0C0h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+0CCh+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_1001F8EE
push	0
lea	eax, [esp+0C0h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	eax, [esp+0BCh+arg_4]
test	eax, eax
jz	short loc_1001F90C
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_1001F948
push	eax
push	offset aHobject0xX 
jmp	short loc_1001F943
push	50h
lea	edx, [esp+0C0h+var_A4]
push	offset aHobject0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0CCh+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001F948
push	0
lea	edx, [esp+0C0h+var_A4]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001F95D
push	edi
push	offset aPtemplate0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+0BCh+arg_C]
cmp	[ecx+4], esi
jl	short loc_1001F97A
push	ebx
push	offset aUlcountD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1001F994
mov	eax, [esp+0BCh+var_AC]
push	eax
push	offset aPhnewobject0xP 
call	ebp 
add	esp, 8
test	ebx, ebx
jz	short loc_1001F9AB
mov	esi, ebx
lea	ebx, [ebx+0]
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_1001F9A0
push	offset dword_100BA2A8
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+0C0h+var_AC]
mov	edx, [esp+0C0h+var_A8]
push	ecx
mov	ecx, [esp+0C4h+arg_0]
push	ebx
mov	edi, eax
mov	eax, [esp+0C8h+arg_4]
push	edx
mov	edx, dword_100BACBC
push	eax
mov	eax, [edx+56h]
push	ecx
call	eax
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA2A4
call	ds:PR_AtomicAdd
mov	ecx, [esp+0DCh+var_AC]
mov	eax, [ecx]
add	esp, 20h
test	eax, eax
jz	short loc_1001FA19
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 4
jl	short loc_1001FA56
push	eax
push	offset aPhnewobject0xX 
jmp	short loc_1001FA51
push	50h
lea	eax, [esp+0C0h+var_A4]
push	offset aPhnewobject0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+0CCh+var_A4]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_1001FA56
push	0
lea	eax, [esp+0C0h+var_A4]
push	eax
call	ebp 
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+0BCh+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0ACh
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1001FAAD
push	offset aC_destroyobjec 
call	edi 
add	esp, 4
mov	ebp, [esp+64h+arg_0]
test	ebp, ebp
jz	short loc_1001FACD
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_1001FB0E
push	ebp
push	offset aHsession0xX 
jmp	short loc_1001FB09
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1001FB0E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	esi, [esp+64h+arg_4]
test	esi, esi
jz	short loc_1001FB28
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1001FB63
push	esi
push	offset aHobject0xX 
jmp	short loc_1001FB5E
push	50h
lea	ecx, [esp+68h+var_54]
push	offset aHobject0xX 
push	ecx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	edx, [esp+74h+var_54]
push	50h
push	edx
call	PL_strcatn
mov	eax, dword_100BACD0
add	esp, 18h
cmp	[eax+4], ebx
jl	short loc_1001FB63
push	0
lea	ecx, [esp+68h+var_54]
push	ecx
call	edi 
add	esp, 8
			
push	offset dword_100BA2B4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, dword_100BACBC
mov	ebx, eax
mov	eax, [edx+5Ah]
push	esi
push	ebp
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA2B0
call	ds:PR_AtomicAdd
add	esp, 14h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 0A8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A8h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+0B8h+arg_8]
mov	[esp+0B8h+var_A8], edi
jl	short loc_1001FBFE
push	offset aC_getobjectsiz 
call	ebp 
add	esp, 4
mov	eax, [esp+0B8h+arg_0]
test	eax, eax
jz	short loc_1001FC21
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001FC62
push	eax
push	offset aHsession0xX 
jmp	short loc_1001FC5D
push	50h
lea	edx, [esp+0BCh+var_A4]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001FC62
push	0
lea	edx, [esp+0BCh+var_A4]
push	edx
call	ebp 
add	esp, 8
			
mov	ebx, [esp+0B8h+arg_4]
test	ebx, ebx
jz	short loc_1001FC7F
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001FCBA
push	ebx
push	offset aHobject0xX 
jmp	short loc_1001FCB5
push	50h
lea	ecx, [esp+0BCh+var_54]
push	offset aHobject0xX 
push	ecx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	edx, [esp+0C8h+var_54]
push	50h
push	edx
call	PL_strcatn
mov	eax, dword_100BACD0
add	esp, 18h
cmp	[eax+4], esi
jl	short loc_1001FCBA
push	0
lea	ecx, [esp+0BCh+var_54]
push	ecx
call	ebp 
add	esp, 8
			
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1001FCD0
push	edi
push	offset aPulsize0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA2C0
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+0BCh+arg_0]
mov	edx, dword_100BACBC
mov	edi, eax
mov	eax, [esp+0BCh+var_A8]
push	eax
mov	eax, [edx+5Eh]
push	ebx
push	ecx
call	eax
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA2BC
call	ds:PR_AtomicAdd
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_1001FD30
mov	edx, [esp+0B8h+var_A8]
mov	eax, [edx]
push	eax
push	offset aPulsize0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+0B8h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A8h
retn
align 10h
sub	esp, 0A8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A8h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+0ACh+arg_8]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+0B8h+var_A8], ebx
jl	short loc_1001FD9E
push	offset aC_getattribute 
call	edi 
add	esp, 4
mov	eax, [esp+0B8h+arg_0]
test	eax, eax
jz	short loc_1001FDC1
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1001FE02
push	eax
push	offset aHsession0xX 
jmp	short loc_1001FDFD
push	50h
lea	edx, [esp+0BCh+var_A4]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1001FE02
push	0
lea	edx, [esp+0BCh+var_A4]
push	edx
call	edi 
add	esp, 8
			
mov	ebp, [esp+0B8h+arg_4]
test	ebp, ebp
jz	short loc_1001FE1F
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1001FE5A
push	ebp
push	offset aHobject0xX 
jmp	short loc_1001FE55
push	50h
lea	ecx, [esp+0BCh+var_54]
push	offset aHobject0xX 
push	ecx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	edx, [esp+0C8h+var_54]
push	50h
push	edx
call	PL_strcatn
mov	eax, dword_100BACD0
add	esp, 18h
cmp	[eax+4], esi
jl	short loc_1001FE5A
push	0
lea	ecx, [esp+0BCh+var_54]
push	ecx
call	edi 
add	esp, 8
			
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1001FE70
push	ebx
push	offset aPtemplate0xP 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
mov	esi, [esp+0B8h+arg_C]
jl	short loc_1001FE8C
push	esi
push	offset aUlcountD 
call	edi 
add	esp, 8
push	offset dword_100BA2CC
call	ds:PR_AtomicIncrement
mov	ebx, ds:PR_IntervalNow
call	ebx 
mov	ecx, [esp+0BCh+var_A8]
mov	edx, [esp+0BCh+arg_0]
push	esi
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+62h]
push	ebp
push	edx
call	ecx
mov	ebp, eax
call	ebx 
sub	eax, edi
push	eax
push	offset dword_100BA2C8
call	ds:PR_AtomicAdd
add	esp, 1Ch
test	esi, esi
jz	short loc_1001FEE2
mov	edi, [esp+0B8h+var_A8]
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_1001FED7
mov	eax, ebp
call	sub_1001C3A0
mov	ecx, [esp+0B8h+var_4]
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A8h
retn
align 10h
sub	esp, 0A8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A8h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, ds:PR_LogPrint
push	edi
mov	edi, [esp+0B8h+arg_8]
mov	[esp+0B8h+var_A8], edi
jl	short loc_1001FF4E
push	offset aC_setattribute 
call	esi 
add	esp, 4
mov	eax, [esp+0B8h+arg_0]
test	eax, eax
jz	short loc_1001FF71
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_1001FFB2
push	eax
push	offset aHsession0xX 
jmp	short loc_1001FFAD
push	50h
lea	edx, [esp+0BCh+var_A4]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1001FFB2
push	0
lea	edx, [esp+0BCh+var_A4]
push	edx
call	esi 
add	esp, 8
			
mov	eax, [esp+0B8h+arg_4]
test	eax, eax
jz	short loc_1001FFD0
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1002000C
push	eax
push	offset aHobject0xX 
jmp	short loc_10020007
push	50h
lea	edx, [esp+0BCh+var_54]
push	offset aHobject0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1002000C
push	0
lea	edx, [esp+0BCh+var_54]
push	edx
call	esi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10020021
push	edi
push	offset aPtemplate0xP 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebp, [esp+0B8h+arg_C]
cmp	[ecx+4], ebx
jl	short loc_1002003E
push	ebp
push	offset aUlcountD 
call	esi 
add	esp, 8
test	ebp, ebp
jz	short loc_1002004F
mov	esi, ebp
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10020044
push	offset dword_100BA2D8
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+0BCh+var_A8]
mov	ecx, [esp+0BCh+arg_0]
push	ebp
mov	ebx, eax
mov	eax, [esp+0C0h+arg_4]
push	edx
mov	edx, dword_100BACBC
push	eax
mov	eax, [edx+66h]
push	ecx
call	eax
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA2D4
call	ds:PR_AtomicAdd
add	esp, 1Ch
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+0B8h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A8h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, ds:PR_LogPrint
push	edi
mov	edi, [esp+68h+arg_4]
mov	[esp+68h+var_58], edi
jl	short loc_100200F5
push	offset aC_findobjectsi 
call	esi 
add	esp, 4
mov	eax, [esp+68h+arg_0]
test	eax, eax
jz	short loc_10020115
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10020156
push	eax
push	offset aHsession0xX 
jmp	short loc_10020151
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10020156
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	esi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_1002016B
push	edi
push	offset aPtemplate0xP 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebp, [esp+68h+arg_8]
cmp	[ecx+4], ebx
jl	short loc_10020185
push	ebp
push	offset aUlcountD 
call	esi 
add	esp, 8
test	ebp, ebp
jz	short loc_1002019B
mov	esi, ebp
jmp	short loc_10020190
align 10h
			
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10020190
push	offset dword_100BA2E4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
mov	ecx, dword_100BACBC
push	ebp
mov	ebx, eax
mov	eax, [esp+70h+arg_0]
push	edx
mov	edx, [ecx+6Ah]
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA2E0
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_C]
push	ebx
mov	ebx, [esp+60h+arg_4]
push	ebp
push	esi
mov	esi, ds:PR_LogPrint
push	edi
mov	[esp+6Ch+var_58], ebx
mov	[esp+6Ch+var_5C], eax
jl	short loc_1002023E
push	offset aC_findobjects 
call	esi 
add	esp, 4
mov	ebp, [esp+6Ch+arg_0]
test	ebp, ebp
jz	short loc_1002025E
mov	edx, dword_100BACD0
mov	edi, 3
cmp	[edx+4], edi
jl	short loc_1002029F
push	ebp
push	offset aHsession0xX 
jmp	short loc_1002029A
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[edx+4], edi
jl	short loc_1002029F
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	esi 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_100202B5
push	ebx
push	offset aPhobject0xP 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebx, [esp+6Ch+arg_8]
cmp	[edx+4], edi
jl	short loc_100202CF
push	ebx
push	offset aUlmaxobjectcou 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_100202E8
mov	ecx, [esp+6Ch+var_5C]
push	ecx
push	offset aPulobjectcount 
call	esi 
add	esp, 8
push	offset dword_100BA2F0
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+70h+var_5C]
push	edx
push	ebx
mov	ebx, [esp+78h+var_58]
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+6Eh]
push	ebx
push	ebp
call	ecx
mov	[esp+80h+var_58], eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA2EC
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
mov	ebp, [esp+88h+var_5C]
mov	edi, ds:PR_LogPrint
add	esp, 1Ch
cmp	dword ptr [edx+4], 4
jl	short loc_1002034E
mov	eax, [ebp+0]
push	eax
push	offset aPulobjectcou_0 
call	edi 
add	esp, 8
xor	esi, esi
cmp	[ebp+0], esi
jbe	short loc_10020390
jmp	short loc_10020360
align 10h
			
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_1002038A
mov	eax, [ebx+esi*4]
mov	ecx, offset byte_100A1623
test	eax, eax
jnz	short loc_1002037D
mov	ecx, offset aCk_invalid_han 
push	ecx
push	eax
push	esi
push	offset aPhobjectD0xXS 
call	edi 
add	esp, 10h
inc	esi
cmp	esi, [ebp+0]
jb	short loc_10020360
mov	esi, [esp+6Ch+var_58]
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_100203DC
push	offset aC_findobjectsf 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_100203F8
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_10020435
push	esi
push	offset aHsession0xX 
jmp	short loc_10020430
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_10020435
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA2FC
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+72h]
push	esi
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA2F8
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_100204C1
push	offset aC_encryptinit 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_100204E1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10020522
push	eax
push	offset aHsession0xX 
jmp	short loc_1002051D
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10020522
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10020537
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_10020552
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1002058E
push	esi
push	offset aHkey0xX	
jmp	short loc_10020589
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1002058E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA308
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+76h]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA304
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10020636
push	offset aC_encrypt 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10020656
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10020697
push	eax
push	offset aHsession0xX 
jmp	short loc_10020692
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10020697
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_100206AC
push	esi
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_100206C6
push	ebx
push	offset aUldatalenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_100206E0
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPencrypteddata 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_100206FA
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulencryptedda 
call	ebp 
add	esp, 8
push	offset dword_100BA314
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+7Ah]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA310
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10020760
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulencrypted_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_100207C6
push	offset aC_encryptupdat 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_100207E6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10020827
push	eax
push	offset aHsession0xX 
jmp	short loc_10020822
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10020827
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1002083C
push	esi
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10020856
push	ebx
push	offset aUlpartlenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10020870
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002088A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulencryptedpa 
call	ebp 
add	esp, 8
push	offset dword_100BA320
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+7Eh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA31C
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_100208F0
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulencrypted_1 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_8]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+6Ch+arg_4]
mov	[esp+6Ch+var_58], edi
mov	[esp+6Ch+var_5C], eax
jl	short loc_1002094E
push	offset aC_encryptfinal 
call	ebp 
add	esp, 4
mov	ebx, [esp+6Ch+arg_0]
test	ebx, ebx
jz	short loc_1002096E
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_100209AF
push	ebx
push	offset aHsession0xX 
jmp	short loc_100209AA
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_100209AF
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_100209C5
push	edi
push	offset aPlastencrypted 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_100209DF
mov	eax, [esp+6Ch+var_5C]
push	eax
push	offset aPullastencrypt 
call	ebp 
add	esp, 8
push	offset dword_100BA32C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_5C]
mov	edx, [esp+70h+var_58]
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+82h]
push	edx
push	ebx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA328
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_10020A3E
mov	eax, [esp+6Ch+var_5C]
mov	ecx, [eax]
push	ecx
push	offset aPullastencry_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10020A91
push	offset aC_decryptinit 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_10020AB1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10020AF2
push	eax
push	offset aHsession0xX 
jmp	short loc_10020AED
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10020AF2
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10020B07
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_10020B22
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_10020B5E
push	esi
push	offset aHkey0xX	
jmp	short loc_10020B59
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10020B5E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA338
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+86h]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA334
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10020C06
push	offset aC_decrypt 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10020C26
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10020C67
push	eax
push	offset aHsession0xX 
jmp	short loc_10020C62
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10020C67
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10020C7C
push	esi
push	offset aPencrypteddata 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10020C96
push	ebx
push	offset aUlencrypteddat 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10020CB0
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10020CCA
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPuldatalen0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA344
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+8Ah]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA340
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10020D33
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPuldatalen0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10020D96
push	offset aC_decryptupdat 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10020DB6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10020DF7
push	eax
push	offset aHsession0xX 
jmp	short loc_10020DF2
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10020DF7
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10020E0C
push	esi
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10020E26
push	ebx
push	offset aUlencryptedpar 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10020E40
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10020E5A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulpartlen0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA350
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+8Eh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA34C
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10020EC3
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulpartlen0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_8]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+6Ch+arg_4]
mov	[esp+6Ch+var_58], edi
mov	[esp+6Ch+var_5C], eax
jl	short loc_10020F1E
push	offset aC_decryptfinal 
call	ebp 
add	esp, 4
mov	ebx, [esp+6Ch+arg_0]
test	ebx, ebx
jz	short loc_10020F3E
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_10020F7F
push	ebx
push	offset aHsession0xX 
jmp	short loc_10020F7A
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_10020F7F
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10020F95
push	edi
push	offset aPlastpart0xP 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_10020FAF
mov	eax, [esp+6Ch+var_5C]
push	eax
push	offset aPullastpartlen 
call	ebp 
add	esp, 8
push	offset dword_100BA35C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_5C]
mov	edx, [esp+70h+var_58]
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+92h]
push	edx
push	ebx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA358
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_1002100E
mov	eax, [esp+6Ch+var_5C]
mov	ecx, [eax]
push	ecx
push	offset aPullastpartl_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
mov	esi, [esp+60h+arg_4]
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10021061
push	offset aC_digestinit 
call	edi 
add	esp, 4
mov	ebp, [esp+64h+arg_0]
test	ebp, ebp
jz	short loc_10021081
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_100210C2
push	ebp
push	offset aHsession0xX 
jmp	short loc_100210BD
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_100210C2
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_100210D7
push	esi
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	eax, esi
call	sub_1001CAE0
push	offset dword_100BA368
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+96h]
push	esi
push	ebp
mov	ebx, eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA364
call	ds:PR_AtomicAdd
add	esp, 14h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10021186
push	offset aC_digest 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_100211A6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_100211E7
push	eax
push	offset aHsession0xX 
jmp	short loc_100211E2
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_100211E7
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_100211FC
push	esi
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10021216
push	ebx
push	offset aUldatalenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10021230
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPdigest0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002124A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPuldigestlen0x 
call	ebp 
add	esp, 8
push	offset dword_100BA374
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+9Ah]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA370
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_100212B3
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPuldigestlen_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10021305
push	offset aC_digestupdate 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_10021325
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_10021366
push	ebp
push	offset aHsession0xX 
jmp	short loc_10021361
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10021366
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1002137B
push	ebx
push	offset aPpart0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_10021395
push	esi
push	offset aUlpartlenD 
call	edi 
add	esp, 8
push	offset dword_100BA380
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+9Eh]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA37C
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_1002141C
push	offset aC_digestkey 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_10021438
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_10021475
push	esi
push	offset aHsession0xX 
jmp	short loc_10021470
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_10021475
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA38C
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+0A2h]
mov	ebx, eax
mov	eax, [esp+64h+arg_4]
push	eax
push	esi
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA388
call	ds:PR_AtomicAdd
add	esp, 14h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_8]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+6Ch+arg_4]
mov	[esp+6Ch+var_58], edi
mov	[esp+6Ch+var_5C], eax
jl	short loc_1002150E
push	offset aC_digestfinal 
call	ebp 
add	esp, 4
mov	ebx, [esp+6Ch+arg_0]
test	ebx, ebx
jz	short loc_1002152E
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_1002156F
push	ebx
push	offset aHsession0xX 
jmp	short loc_1002156A
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_1002156F
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10021585
push	edi
push	offset aPdigest0xP 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_1002159F
mov	eax, [esp+6Ch+var_5C]
push	eax
push	offset aPuldigestlen0x 
call	ebp 
add	esp, 8
push	offset dword_100BA398
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_5C]
mov	edx, [esp+70h+var_58]
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0A6h]
push	edx
push	ebx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA394
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_100215FE
mov	eax, [esp+6Ch+var_5C]
mov	ecx, [eax]
push	ecx
push	offset aPuldigestlen_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10021651
push	offset aC_signinit 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_10021671
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_100216B2
push	eax
push	offset aHsession0xX 
jmp	short loc_100216AD
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_100216B2
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_100216C7
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_100216E2
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1002171E
push	esi
push	offset aHkey0xX	
jmp	short loc_10021719
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1002171E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA3A4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+0AAh]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA3A0
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_100217C6
push	offset aC_sign	
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_100217E6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10021827
push	eax
push	offset aHsession0xX 
jmp	short loc_10021822
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10021827
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1002183C
push	esi
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10021856
push	ebx
push	offset aUldatalenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10021870
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPsignature0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002188A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulsignaturele 
call	ebp 
add	esp, 8
push	offset dword_100BA3B0
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0AEh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA3AC
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_100218F3
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulsignature_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10021945
push	offset aC_signupdate 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_10021965
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_100219A6
push	ebp
push	offset aHsession0xX 
jmp	short loc_100219A1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100219A6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_100219BB
push	ebx
push	offset aPpart0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_100219D5
push	esi
push	offset aUlpartlenD 
call	edi 
add	esp, 8
push	offset dword_100BA3BC
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0B2h]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA3B8
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_8]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+6Ch+arg_4]
mov	[esp+6Ch+var_58], edi
mov	[esp+6Ch+var_5C], eax
jl	short loc_10021A6E
push	offset aC_signfinal 
call	ebp 
add	esp, 4
mov	ebx, [esp+6Ch+arg_0]
test	ebx, ebx
jz	short loc_10021A8E
mov	edx, dword_100BACD0
mov	esi, 3
cmp	[edx+4], esi
jl	short loc_10021ACF
push	ebx
push	offset aHsession0xX 
jmp	short loc_10021ACA
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[edx+4], esi
jl	short loc_10021ACF
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	ebp 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10021AE5
push	edi
push	offset aPsignature0xP 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_10021AFF
mov	eax, [esp+6Ch+var_5C]
push	eax
push	offset aPulsignaturele 
call	ebp 
add	esp, 8
push	offset dword_100BA3C8
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_5C]
mov	edx, [esp+70h+var_58]
push	ecx
mov	edi, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0B6h]
push	edx
push	ebx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA3C4
call	ds:PR_AtomicAdd
mov	edx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [edx+4], 4
jl	short loc_10021B5E
mov	eax, [esp+6Ch+var_5C]
mov	ecx, [eax]
push	ecx
push	offset aPulsignature_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10021BB1
push	offset aC_signrecoveri 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_10021BD1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10021C12
push	eax
push	offset aHsession0xX 
jmp	short loc_10021C0D
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10021C12
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10021C27
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_10021C42
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_10021C7E
push	esi
push	offset aHkey0xX	
jmp	short loc_10021C79
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10021C7E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA3D4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+0BAh]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA3D0
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10021D26
push	offset aC_signrecover 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10021D46
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10021D87
push	eax
push	offset aHsession0xX 
jmp	short loc_10021D82
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10021D87
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10021D9C
push	esi
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10021DB6
push	ebx
push	offset aUldatalenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10021DD0
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPsignature0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10021DEA
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulsignaturele 
call	ebp 
add	esp, 8
push	offset dword_100BA3E0
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0BEh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA3DC
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10021E53
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulsignature_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10021EA1
push	offset aC_verifyinit 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_10021EC1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10021F02
push	eax
push	offset aHsession0xX 
jmp	short loc_10021EFD
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10021F02
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10021F17
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_10021F32
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_10021F6E
push	esi
push	offset aHkey0xX	
jmp	short loc_10021F69
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10021F6E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA3EC
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+0C2h]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA3E8
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+60h+arg_C]
push	ebp
mov	ebp, [esp+64h+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+6Ch+var_5C], ebp
mov	[esp+6Ch+var_58], ebx
jl	short loc_1002200D
push	offset aC_verify 
call	edi 
add	esp, 4
mov	eax, [esp+6Ch+arg_0]
test	eax, eax
jz	short loc_1002202D
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_1002206E
push	eax
push	offset aHsession0xX 
jmp	short loc_10022069
push	50h
lea	edx, [esp+70h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+7Ch+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_1002206E
push	0
lea	edx, [esp+70h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_10022083
push	ebp
push	offset aPdata0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebp, [esp+6Ch+arg_8]
cmp	[ecx+4], esi
jl	short loc_1002209D
push	ebp
push	offset aUldatalenD 
call	edi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_100220B3
push	ebx
push	offset aPsignature0xP 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
mov	esi, [esp+6Ch+arg_10]
jl	short loc_100220CF
push	esi
push	offset aUlsignaturelen 
call	edi 
add	esp, 8
push	offset dword_100BA3F8
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, [esp+70h+var_58]
mov	edx, [esp+70h+var_5C]
push	esi
push	ecx
mov	ecx, dword_100BACBC
push	ebp
mov	ebx, eax
mov	eax, [esp+7Ch+arg_0]
push	edx
mov	edx, [ecx+0C6h]
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA3F4
call	ds:PR_AtomicAdd
add	esp, 20h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+6Ch+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10022175
push	offset aC_verifyupdate 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_10022195
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_100221D6
push	ebp
push	offset aHsession0xX 
jmp	short loc_100221D1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100221D6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_100221EB
push	ebx
push	offset aPpart0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_10022205
push	esi
push	offset aUlpartlenD 
call	edi 
add	esp, 8
push	offset dword_100BA404
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0CAh]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA400
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10022295
push	offset aC_verifyfinal 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_100222B5
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_100222F6
push	ebp
push	offset aHsession0xX 
jmp	short loc_100222F1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100222F6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1002230B
push	ebx
push	offset aPsignature0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_10022325
push	esi
push	offset aUlsignaturelen 
call	edi 
add	esp, 8
push	offset dword_100BA410
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0CEh]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA40C
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_4]
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_100223B1
push	offset aC_verifyrecove 
call	edi 
add	esp, 4
mov	eax, [esp+64h+arg_0]
test	eax, eax
jz	short loc_100223D1
mov	ecx, dword_100BACD0
mov	ebx, 3
cmp	[ecx+4], ebx
jl	short loc_10022412
push	eax
push	offset aHsession0xX 
jmp	short loc_1002240D
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	ebx, 3
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_10022412
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], ebx
jl	short loc_10022427
push	ebp
push	offset aPmechanism0xP 
call	edi 
add	esp, 8
mov	esi, [esp+64h+arg_8]
test	esi, esi
jz	short loc_10022442
mov	ecx, dword_100BACD0
cmp	[ecx+4], ebx
jl	short loc_1002247E
push	esi
push	offset aHkey0xX	
jmp	short loc_10022479
push	50h
lea	edx, [esp+68h+var_54]
push	offset aHkey0xX	
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+74h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], ebx
jl	short loc_1002247E
push	0
lea	edx, [esp+68h+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA41C
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ecx, dword_100BACBC
mov	edx, [ecx+0D2h]
push	esi
mov	ebx, eax
mov	eax, [esp+6Ch+arg_0]
push	ebp
push	eax
call	edx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA418
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+64h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10022526
push	offset aC_verifyreco_0 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10022546
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10022587
push	eax
push	offset aHsession0xX 
jmp	short loc_10022582
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10022587
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1002259C
push	esi
push	offset aPsignature0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_100225B6
push	ebx
push	offset aUlsignaturelen 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_100225D0
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPdata0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_100225EA
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPuldatalen0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA428
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0D6h]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA424
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10022653
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPuldatalen0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_100226B6
push	offset aC_digestencryp 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_100226D6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10022717
push	eax
push	offset aHsession0xX 
jmp	short loc_10022712
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10022717
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_1002272C
push	esi
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10022746
push	ebx
push	offset aUlpartlenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10022760
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002277A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulencryptedpa 
call	ebp 
add	esp, 8
push	offset dword_100BA434
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0DAh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA430
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_100227E3
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulencrypted_1 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10022846
push	offset aC_decryptdiges 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10022866
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_100228A7
push	eax
push	offset aHsession0xX 
jmp	short loc_100228A2
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_100228A7
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_100228BC
push	esi
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_100228D6
push	ebx
push	offset aUlencryptedpar 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_100228F0
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002290A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulpartlen0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA440
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0DEh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA43C
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10022973
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulpartlen0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_100229D6
push	offset aC_signencryptu 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_100229F6
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10022A37
push	eax
push	offset aHsession0xX 
jmp	short loc_10022A32
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10022A37
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10022A4C
push	esi
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10022A66
push	ebx
push	offset aUlpartlenD 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10022A80
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10022A9A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulencryptedpa 
call	ebp 
add	esp, 8
push	offset dword_100BA44C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0E2h]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA448
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10022B03
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulencrypted_1 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+60h+arg_C]
mov	ecx, [esp+60h+arg_10]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
mov	esi, [esp+6Ch+arg_4]
push	edi
mov	[esp+70h+var_58], esi
mov	[esp+70h+var_5C], eax
mov	[esp+70h+var_60], ecx
jl	short loc_10022B66
push	offset aC_decryptverif 
call	ebp 
add	esp, 4
mov	eax, [esp+70h+arg_0]
test	eax, eax
jz	short loc_10022B86
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10022BC7
push	eax
push	offset aHsession0xX 
jmp	short loc_10022BC2
push	50h
lea	edx, [esp+74h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+80h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[ecx+4], edi
jl	short loc_10022BC7
push	0
lea	edx, [esp+74h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10022BDC
push	esi
push	offset aPencryptedpart 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
mov	ebx, [esp+70h+arg_8]
cmp	[ecx+4], edi
jl	short loc_10022BF6
push	ebx
push	offset aUlencryptedpar 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10022C10
mov	eax, [esp+70h+var_5C]
push	eax
push	offset aPpart0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10022C2A
mov	edx, [esp+70h+var_60]
push	edx
push	offset aPulpartlen0xP 
call	ebp 
add	esp, 8
push	offset dword_100BA458
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+74h+var_5C]
mov	edx, [esp+74h+var_58]
mov	edi, eax
mov	eax, [esp+74h+var_60]
push	eax
mov	eax, [esp+78h+arg_0]
push	ecx
mov	ecx, dword_100BACBC
push	ebx
push	edx
mov	edx, [ecx+0E6h]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA454
call	ds:PR_AtomicAdd
mov	eax, dword_100BACD0
add	esp, 20h
cmp	dword ptr [eax+4], 4
jl	short loc_10022C93
mov	ecx, [esp+70h+var_60]
mov	edx, [ecx]
push	edx
push	offset aPulpartlen0xX 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+5Ch+arg_10]
push	ebx
mov	ebx, [esp+60h+arg_8]
push	ebp
mov	ebp, [esp+64h+arg_4]
push	esi
mov	esi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
mov	[esp+68h+var_5C], eax
jl	short loc_10022CF1
push	offset aC_generatekey 
call	esi 
add	esp, 4
mov	eax, [esp+68h+arg_0]
push	edi
test	eax, eax
jz	short loc_10022D12
mov	edx, dword_100BACD0
mov	edi, 3
cmp	[edx+4], edi
jl	short loc_10022D53
push	eax
push	offset aHsession0xX 
jmp	short loc_10022D4E
push	50h
lea	eax, [esp+70h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+7Ch+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[edx+4], edi
jl	short loc_10022D53
push	0
lea	eax, [esp+70h+var_54]
push	eax
call	esi 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10022D69
push	ebp
push	offset aPmechanism0xP 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10022D7F
push	ebx
push	offset aPtemplate0xP 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
mov	ebx, [esp+6Ch+arg_C]
cmp	[eax+4], edi
jl	short loc_10022D98
push	ebx
push	offset aUlcountD 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10022DB2
mov	edx, [esp+6Ch+var_5C]
push	edx
push	offset aPhkey0xP 
call	esi 
add	esp, 8
test	ebx, ebx
jz	short loc_10022DCB
mov	edi, [esp+6Ch+var_58]
mov	esi, ebx
lea	esp, [esp+0]
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10022DC0
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA464
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+70h+var_58]
mov	edx, [esp+70h+arg_0]
mov	edi, eax
mov	eax, [esp+70h+var_5C]
push	eax
mov	eax, dword_100BACBC
push	ebx
push	ecx
mov	ecx, [eax+0EAh]
push	ebp
push	edx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA460
call	ds:PR_AtomicAdd
mov	edx, [esp+8Ch+var_5C]
mov	eax, [edx]
add	esp, 20h
pop	edi
test	eax, eax
jz	short loc_10022E39
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_10022E7A
push	eax
push	offset aPhkey0xX 
jmp	short loc_10022E71
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aPhkey0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_10022E7A
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
sub	esp, 68h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+68h+var_4], eax
mov	eax, [esp+68h+arg_10]
mov	ecx, [esp+68h+arg_18]
mov	edx, [esp+68h+arg_1C]
push	ebx
mov	ebx, [esp+6Ch+arg_8]
push	ebp
mov	ebp, [esp+70h+arg_4]
mov	[esp+70h+var_60], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	esi
mov	esi, ds:PR_LogPrint
mov	[esp+74h+var_58], ebp
mov	[esp+74h+var_5C], ebx
mov	[esp+74h+var_64], ecx
mov	[esp+74h+var_68], edx
jl	short loc_10022EFA
push	offset aC_generatekeyp 
call	esi 
add	esp, 4
mov	eax, [esp+74h+arg_0]
push	edi
test	eax, eax
jz	short loc_10022F20
mov	ecx, dword_100BACD0
mov	edi, 3
cmp	[ecx+4], edi
jl	short loc_10022F62
push	eax
push	offset aHsession0xX 
call	esi 
add	esp, 8
jmp	short loc_10022F62
push	50h
lea	edx, [esp+7Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+88h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_10022F5D
lea	edx, [esp+78h+var_54]
push	0
push	edx
call	esi 
add	esp, 8
mov	edi, 3
			
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10022F77
push	ebp
push	offset aPmechanism0xP 
call	esi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_10022F8D
push	ebx
push	offset aPpublickeytemp 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebp, [esp+78h+arg_C]
cmp	[edx+4], edi
jl	short loc_10022FAA
push	ebp
push	offset aUlpublickeyatt 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10022FC3
mov	ecx, [esp+78h+var_60]
push	ecx
push	offset aPprivatekeytem 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebx, [esp+78h+arg_14]
cmp	[edx+4], edi
jl	short loc_10022FE0
push	ebx
push	offset aUlprivatekeyat 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10022FF9
mov	ecx, [esp+78h+var_64]
push	ecx
push	offset aPhpublickey0xP 
call	esi 
add	esp, 8
test	ebp, ebp
jz	short loc_10023019
mov	edi, [esp+78h+var_5C]
mov	esi, ebp
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10023003
mov	esi, ds:PR_LogPrint
mov	edi, 3
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_10023033
mov	eax, [esp+78h+var_68]
push	eax
push	offset aPhprivatekey0x 
call	esi 
add	esp, 8
test	ebx, ebx
jz	short loc_1002304B
mov	edi, [esp+78h+var_60]
mov	esi, ebx
lea	ecx, [ecx+0]
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10023040
mov	eax, [esp+78h+var_58]
call	sub_1001CAE0
push	offset dword_100BA470
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+7Ch+var_68]
mov	edx, [esp+7Ch+var_64]
push	ecx
mov	ecx, [esp+80h+var_5C]
push	edx
mov	edx, [esp+84h+var_58]
push	ebx
mov	edi, eax
mov	eax, [esp+88h+var_60]
push	eax
mov	eax, [esp+8Ch+arg_0]
push	ebp
push	ecx
mov	ecx, dword_100BACBC
push	edx
mov	edx, [ecx+0EEh]
push	eax
call	edx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA46C
call	ds:PR_AtomicAdd
mov	eax, [esp+0A4h+var_64]
mov	eax, [eax]
add	esp, 2Ch
pop	edi
test	eax, eax
jz	short loc_100230D2
mov	ecx, dword_100BACD0
mov	esi, 4
cmp	[ecx+4], esi
jl	short loc_10023117
push	eax
push	offset aPhpublickey0xX 
jmp	short loc_1002310E
push	50h
lea	edx, [esp+78h+var_54]
push	offset aPhpublickey0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+84h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 4
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10023117
push	0
lea	edx, [esp+78h+var_54]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, [esp+74h+var_68]
mov	eax, [eax]
test	eax, eax
jz	short loc_10023134
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10023174
push	eax
push	offset aPhprivatekey_0 
jmp	short loc_1002316B
push	50h
lea	edx, [esp+78h+var_54]
push	offset aPhprivatekey_0 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+84h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10023174
push	0
lea	edx, [esp+78h+var_54]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+74h+var_4]
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 68h
retn
align 10h
sub	esp, 100h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+100h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+100h+arg_10]
mov	ecx, [esp+100h+arg_14]
push	ebx
push	ebp
mov	ebp, ds:PR_LogPrint
push	esi
push	edi
mov	edi, [esp+110h+arg_4]
mov	[esp+110h+var_F8], edi
mov	[esp+110h+var_FC], eax
mov	[esp+110h+var_100], ecx
jl	short loc_100231E5
push	offset aC_wrapkey 
call	ebp 
add	esp, 4
mov	eax, [esp+110h+arg_0]
test	eax, eax
jz	short loc_10023208
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_10023249
push	eax
push	offset aHsession0xX 
jmp	short loc_10023244
push	50h
lea	edx, [esp+114h+var_A4]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+120h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10023249
push	0
lea	edx, [esp+114h+var_A4]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1002325E
push	edi
push	offset aPmechanism0xP 
call	ebp 
add	esp, 8
mov	eax, [esp+110h+arg_8]
test	eax, eax
jz	short loc_1002327C
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_100232B8
push	eax
push	offset aHwrappingkey0x 
jmp	short loc_100232B3
push	50h
lea	edx, [esp+114h+var_F4]
push	offset aHwrappingkey0x 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+120h+var_F4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100232B8
push	0
lea	edx, [esp+114h+var_F4]
push	edx
call	ebp 
add	esp, 8
			
mov	ebx, [esp+110h+arg_C]
test	ebx, ebx
jz	short loc_100232D5
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_10023319
push	ebx
push	offset aHkey0xX	
jmp	short loc_10023314
push	50h
lea	ecx, [esp+114h+var_54]
push	offset aHkey0xX	
push	ecx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	edx, [esp+120h+var_54]
push	50h
push	edx
call	PL_strcatn
mov	eax, dword_100BACD0
add	esp, 18h
cmp	[eax+4], esi
jl	short loc_10023319
push	0
lea	ecx, [esp+114h+var_54]
push	ecx
call	ebp 
add	esp, 8
			
mov	edx, dword_100BACD0
cmp	[edx+4], esi
jl	short loc_10023333
mov	eax, [esp+110h+var_FC]
push	eax
push	offset aPwrappedkey0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_1002334D
mov	edx, [esp+110h+var_100]
push	edx
push	offset aPulwrappedkeyl 
call	ebp 
add	esp, 8
mov	eax, edi
call	sub_1001CAE0
push	offset dword_100BA47C
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	ecx, [esp+114h+var_FC]
mov	edx, [esp+114h+arg_8]
mov	edi, eax
mov	eax, [esp+114h+var_100]
push	eax
mov	eax, [esp+118h+var_F8]
push	ecx
mov	ecx, [esp+11Ch+arg_0]
push	ebx
push	edx
mov	edx, dword_100BACBC
push	eax
mov	eax, [edx+0F2h]
push	ecx
call	eax
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA478
call	ds:PR_AtomicAdd
mov	ecx, dword_100BACD0
add	esp, 24h
cmp	dword ptr [ecx+4], 4
jl	short loc_100233C9
mov	edx, [esp+110h+var_100]
mov	eax, [edx]
push	eax
push	offset aPulwrappedke_0 
call	ebp 
add	esp, 8
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+110h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 100h
retn
align 10h
sub	esp, 0B4h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0B4h+var_4], eax
mov	edx, dword_100BACD0
cmp	dword ptr [edx+4], 1
mov	eax, [esp+0B4h+arg_14]
mov	ecx, [esp+0B4h+arg_1C]
push	ebx
mov	ebx, [esp+0B8h+arg_C]
push	ebp
mov	ebp, ds:PR_LogPrint
push	edi
mov	edi, [esp+0C0h+arg_4]
mov	[esp+0C0h+var_AC], edi
mov	[esp+0C0h+var_A8], ebx
mov	[esp+0C0h+var_B4], eax
mov	[esp+0C0h+var_B0], ecx
jl	short loc_1002344F
push	offset aC_unwrapkey 
call	ebp 
add	esp, 4
mov	eax, [esp+0C0h+arg_0]
push	esi
test	eax, eax
jz	short loc_10023473
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_100234B7
push	eax
push	offset aHsession0xX 
jmp	short loc_100234B2
push	50h
lea	edx, [esp+0C8h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0D4h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100234B7
push	0
lea	edx, [esp+0C8h+var_54]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_100234CC
push	edi
push	offset aPmechanism0xP 
call	ebp 
add	esp, 8
mov	eax, [esp+0C4h+arg_8]
test	eax, eax
jz	short loc_100234EA
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10023526
push	eax
push	offset aHunwrappingkey 
jmp	short loc_10023521
push	50h
lea	edx, [esp+0C8h+var_A4]
push	offset aHunwrappingkey 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0D4h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10023526
push	0
lea	edx, [esp+0C8h+var_A4]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_1002353B
push	ebx
push	offset aPwrappedkey0xP 
call	ebp 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
jl	short loc_10023558
mov	edx, [esp+0C4h+arg_10]
push	edx
push	offset aUlwrappedkeyle 
call	ebp 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_10023571
mov	ecx, [esp+0C4h+var_B4]
push	ecx
push	offset aPtemplate0xP 
call	ebp 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebx, [esp+0C4h+arg_18]
cmp	[edx+4], esi
jl	short loc_1002358E
push	ebx
push	offset aUlattributecou 
call	ebp 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_100235A7
mov	ecx, [esp+0C4h+var_B0]
push	ecx
push	offset aPhkey0xP 
call	ebp 
add	esp, 8
test	ebx, ebx
jz	short loc_100235C0
mov	edi, [esp+0C4h+var_B4]
mov	esi, ebx
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_100235B1
mov	edi, [esp+0C4h+var_AC]
mov	eax, edi
call	sub_1001CAE0
push	offset dword_100BA488
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+0C8h+var_B0]
mov	ecx, [esp+0C8h+arg_10]
push	edx
mov	edx, [esp+0CCh+var_A8]
push	ebx
mov	edi, eax
mov	eax, [esp+0D0h+var_B4]
push	eax
mov	eax, [esp+0D4h+arg_8]
push	ecx
mov	ecx, [esp+0D8h+var_AC]
push	edx
mov	edx, [esp+0DCh+arg_0]
push	eax
mov	eax, dword_100BACBC
push	ecx
mov	ecx, [eax+0F6h]
push	edx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA484
call	ds:PR_AtomicAdd
mov	edx, [esp+0F0h+var_B0]
mov	eax, [edx]
add	esp, 2Ch
pop	esi
test	eax, eax
jz	short loc_1002364A
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_10023687
push	eax
push	offset aPhkey0xX 
jmp	short loc_10023682
push	50h
lea	edx, [esp+0C4h+var_A4]
push	offset aPhkey0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0D0h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_10023687
push	0
lea	edx, [esp+0C4h+var_A4]
push	edx
call	ebp 
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+0C0h+var_4]
pop	edi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0B4h
retn
align 10h
sub	esp, 0ACh
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0ACh+var_4], eax
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 1
mov	eax, [esp+0ACh+arg_14]
push	ebx
mov	ebx, [esp+0B0h+arg_C]
push	ebp
mov	ebp, [esp+0B4h+arg_4]
push	esi
mov	esi, ds:PR_LogPrint
mov	[esp+0B8h+var_A8], ebx
mov	[esp+0B8h+var_AC], eax
jl	short loc_10023700
push	offset aC_derivekey 
call	esi 
add	esp, 4
mov	eax, [esp+0B8h+arg_0]
push	edi
test	eax, eax
jz	short loc_10023724
mov	edx, dword_100BACD0
mov	edi, 3
cmp	[edx+4], edi
jl	short loc_10023765
push	eax
push	offset aHsession0xX 
jmp	short loc_10023760
push	50h
lea	eax, [esp+0C0h+var_54]
push	offset aHsession0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+0CCh+var_54]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
mov	edi, 3
add	esp, 18h
cmp	[edx+4], edi
jl	short loc_10023765
push	0
lea	eax, [esp+0C0h+var_54]
push	eax
call	esi 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_1002377B
push	ebp
push	offset aPmechanism0xP 
call	esi 
add	esp, 8
mov	eax, [esp+0BCh+arg_8]
test	eax, eax
jz	short loc_10023799
mov	edx, dword_100BACD0
cmp	[edx+4], edi
jl	short loc_100237D5
push	eax
push	offset aHbasekey0xX 
jmp	short loc_100237D0
push	50h
lea	eax, [esp+0C0h+var_A4]
push	offset aHbasekey0xX 
push	eax
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	ecx, [esp+0CCh+var_A4]
push	50h
push	ecx
call	PL_strcatn
mov	edx, dword_100BACD0
add	esp, 18h
cmp	[edx+4], edi
jl	short loc_100237D5
push	0
lea	eax, [esp+0C0h+var_A4]
push	eax
call	esi 
add	esp, 8
			
mov	ecx, dword_100BACD0
cmp	[ecx+4], edi
jl	short loc_100237EB
push	ebx
push	offset aPtemplate0xP 
call	esi 
add	esp, 8
mov	edx, dword_100BACD0
mov	ebx, [esp+0BCh+arg_10]
cmp	[edx+4], edi
jl	short loc_10023808
push	ebx
push	offset aUlattributecou 
call	esi 
add	esp, 8
mov	eax, dword_100BACD0
cmp	[eax+4], edi
jl	short loc_10023821
mov	ecx, [esp+0BCh+var_AC]
push	ecx
push	offset aPhkey0xP 
call	esi 
add	esp, 8
test	ebx, ebx
jz	short loc_1002383B
mov	edi, [esp+0BCh+var_A8]
mov	esi, ebx
jmp	short loc_10023830
align 10h
			
call	sub_1001DB60
add	edi, 0Ch
dec	esi
jnz	short loc_10023830
mov	eax, ebp
call	sub_1001CAE0
push	offset dword_100BA494
call	ds:PR_AtomicIncrement
mov	esi, ds:PR_IntervalNow
call	esi 
mov	edx, [esp+0C0h+var_AC]
mov	ecx, [esp+0C0h+arg_8]
push	edx
mov	edx, [esp+0C4h+arg_0]
mov	edi, eax
mov	eax, [esp+0C4h+var_A8]
push	ebx
push	eax
mov	eax, dword_100BACBC
push	ecx
mov	ecx, [eax+0FAh]
push	ebp
push	edx
call	ecx
mov	ebx, eax
call	esi 
sub	eax, edi
push	eax
push	offset dword_100BA490
call	ds:PR_AtomicAdd
mov	edx, [esp+0E0h+var_AC]
mov	eax, [edx]
add	esp, 24h
pop	edi
test	eax, eax
jz	short loc_100238B4
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 4
jl	short loc_100238F5
push	eax
push	offset aPhkey0xX 
jmp	short loc_100238EC
push	50h
lea	edx, [esp+0BCh+var_A4]
push	offset aPhkey0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+0C8h+var_A4]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 4
jl	short loc_100238F5
push	0
lea	edx, [esp+0BCh+var_A4]
push	edx
call	ds:PR_LogPrint
add	esp, 8
			
mov	eax, ebx
call	sub_1001C3A0
mov	ecx, [esp+0B8h+var_4]
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0ACh
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10023955
push	offset aC_seedrandom 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_10023975
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_100239B6
push	ebp
push	offset aHsession0xX 
jmp	short loc_100239B1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_100239B6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_100239CB
push	ebx
push	offset aPseed0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_100239E5
push	esi
push	offset aUlseedlenD 
call	edi 
add	esp, 8
push	offset dword_100BA4A0
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+0FEh]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA49C
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
mov	ebx, [esp+5Ch+arg_4]
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
mov	[esp+68h+var_58], ebx
jl	short loc_10023A75
push	offset aC_generaterand 
call	edi 
add	esp, 4
mov	ebp, [esp+68h+arg_0]
test	ebp, ebp
jz	short loc_10023A95
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_10023AD6
push	ebp
push	offset aHsession0xX 
jmp	short loc_10023AD1
push	50h
lea	edx, [esp+6Ch+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+78h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
mov	esi, 3
add	esp, 18h
cmp	[ecx+4], esi
jl	short loc_10023AD6
push	0
lea	edx, [esp+6Ch+var_54]
push	edx
call	edi 
add	esp, 8
			
mov	eax, dword_100BACD0
cmp	[eax+4], esi
jl	short loc_10023AEB
push	ebx
push	offset aRandomdata0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+68h+arg_8]
jl	short loc_10023B05
push	esi
push	offset aUlrandomlenD 
call	edi 
add	esp, 8
push	offset dword_100BA4AC
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+6Ch+var_58]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+102h]
push	edx
push	ebp
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA4A8
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+68h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10023B8C
push	offset aC_getfunctions 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_10023BA8
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_10023BE5
push	esi
push	offset aHsession0xX 
jmp	short loc_10023BE0
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_10023BE5
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA4B8
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+106h]
push	esi
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA4B4
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
sub	esp, 54h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+54h+var_4], eax
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10023C6C
push	offset aC_cancelfuncti 
call	edi 
add	esp, 4
mov	esi, [esp+60h+arg_0]
test	esi, esi
jz	short loc_10023C88
mov	ecx, dword_100BACD0
cmp	dword ptr [ecx+4], 3
jl	short loc_10023CC5
push	esi
push	offset aHsession0xX 
jmp	short loc_10023CC0
push	50h
lea	edx, [esp+64h+var_54]
push	offset aHsession0xX 
push	edx
call	PL_strncpyz
push	offset aCk_invalid_han 
lea	eax, [esp+70h+var_54]
push	50h
push	eax
call	PL_strcatn
mov	ecx, dword_100BACD0
add	esp, 18h
cmp	dword ptr [ecx+4], 3
jl	short loc_10023CC5
push	0
lea	edx, [esp+64h+var_54]
push	edx
call	edi 
add	esp, 8
			
push	offset dword_100BA4C4
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+10Ah]
push	esi
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA4C0
call	ds:PR_AtomicAdd
add	esp, 10h
mov	eax, esi
call	sub_1001C3A0
mov	ecx, [esp+60h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 54h
retn
align 10h
mov	eax, dword_100BACD0
cmp	dword ptr [eax+4], 1
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:PR_LogPrint
jl	short loc_10023D3F
push	offset aC_waitforslote 
call	edi 
add	esp, 4
mov	ecx, dword_100BACD0
mov	esi, 3
cmp	[ecx+4], esi
jl	short loc_10023D5E
mov	edx, [esp+14h]
push	edx
push	offset aFlags0xX 
call	edi 
add	esp, 8
mov	eax, dword_100BACD0
mov	ebp, [esp+18h]
cmp	[eax+4], esi
jl	short loc_10023D77
push	ebp
push	offset aPslot0xP 
call	edi 
add	esp, 8
mov	ecx, dword_100BACD0
cmp	[ecx+4], esi
mov	esi, [esp+1Ch]
jl	short loc_10023D91
push	esi
push	offset aPrserved0xP 
call	edi 
add	esp, 8
push	offset dword_100BA4D0
call	ds:PR_AtomicIncrement
mov	edi, ds:PR_IntervalNow
call	edi 
mov	edx, [esp+18h]
push	esi
mov	ebx, eax
mov	eax, dword_100BACBC
mov	ecx, [eax+10Eh]
push	ebp
push	edx
call	ecx
mov	esi, eax
call	edi 
sub	eax, ebx
push	eax
push	offset dword_100BA4CC
call	ds:PR_AtomicAdd
add	esp, 18h
mov	eax, esi
call	sub_1001C3A0
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
mov	eax, [esp+arg_0]
push	offset aNss_mod_log 
mov	dword_100BACBC,	eax
call	ds:PR_NewLogModule
mov	dword_100BACD0,	eax
add	esp, 4
mov	dword_100BABAA,	offset loc_1001E070
mov	dword_100BABAE,	offset loc_1001E0F0
mov	dword_100BABB2,	offset loc_1001E170
mov	dword_100BABB6,	offset loc_1001E270
mov	dword_100BABBA,	offset loc_1001E2F0
mov	dword_100BABBE,	offset loc_1001E410
mov	dword_100BABC2,	offset loc_1001E570
mov	dword_100BABC6,	offset loc_1001E760
mov	dword_100BABCA,	offset loc_1001E840
mov	dword_100BABCE,	offset loc_1001E900
mov	dword_100BABD2,	offset sub_1001E9E0
mov	dword_100BABD6,	offset sub_1001EB00
mov	dword_100BABDA,	offset sub_1001EC70
mov	dword_100BABDE,	offset sub_1001EE20
mov	dword_100BABE2,	offset loc_1001EF10
mov	dword_100BABE6,	offset sub_1001EF90
mov	dword_100BABEA,	offset sub_1001F110
mov	dword_100BABEE,	offset sub_1001F260
mov	dword_100BABF2,	offset sub_1001F460
mov	dword_100BABF6,	offset sub_1001F5A0
mov	dword_100BABFA,	offset sub_1001F680
mov	dword_100BABFE,	offset sub_1001F840
mov	dword_100BAC02,	offset sub_1001FA80
mov	dword_100BAC06,	offset sub_1001FBC0
mov	dword_100BAC0A,	offset sub_1001FD60
mov	dword_100BAC0E,	offset sub_1001FF10
mov	dword_100BAC12,	offset sub_100200C0
mov	dword_100BAC16,	offset sub_10020200
mov	dword_100BAC1A,	offset sub_100203B0
mov	dword_100BAC1E,	offset sub_10020490
mov	dword_100BAC22,	offset sub_100205F0
mov	dword_100BAC26,	offset sub_10020780
mov	dword_100BAC2A,	offset sub_10020910
mov	dword_100BAC2E,	offset sub_10020A60
mov	dword_100BAC32,	offset sub_10020BC0
mov	dword_100BAC36,	offset sub_10020D50
mov	dword_100BAC3A,	offset sub_10020EE0
mov	dword_100BAC3E,	offset sub_10021030
mov	dword_100BAC42,	offset sub_10021140
mov	dword_100BAC46,	offset sub_100212D0
mov	dword_100BAC4A,	offset sub_100213F0
mov	dword_100BAC4E,	offset sub_100214D0
mov	dword_100BAC52,	offset sub_10021620
mov	dword_100BAC56,	offset sub_10021780
mov	dword_100BAC5A,	offset sub_10021910
mov	dword_100BAC5E,	offset sub_10021A30
mov	dword_100BAC62,	offset sub_10021B80
mov	dword_100BAC66,	offset sub_10021CE0
mov	dword_100BAC6A,	offset sub_10021E70
mov	dword_100BAC6E,	offset sub_10021FD0
mov	dword_100BAC72,	offset sub_10022140
mov	dword_100BAC76,	offset sub_10022260
mov	dword_100BAC7A,	offset sub_10022380
mov	dword_100BAC7E,	offset sub_100224E0
mov	dword_100BAC82,	offset sub_10022670
mov	dword_100BAC86,	offset sub_10022800
mov	dword_100BAC8A,	offset sub_10022990
mov	dword_100BAC8E,	offset sub_10022B20
mov	dword_100BAC92,	offset sub_10022CB0
mov	dword_100BAC96,	offset sub_10022EA0
mov	dword_100BAC9A,	offset sub_10023190
mov	dword_100BAC9E,	offset sub_100233F0
mov	dword_100BACA2,	offset sub_100236B0
mov	dword_100BACA6,	offset sub_10023920
mov	dword_100BACAA,	offset sub_10023A40
mov	dword_100BACAE,	offset sub_10023B60
mov	dword_100BACB2,	offset sub_10023C40
mov	dword_100BACB6,	offset loc_10023D20
mov	eax, offset byte_100BABA8
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFC0h
sub	esp, 30h
push	ebx
push	ebp
push	esi
push	edi
xor	edi, edi
push	offset aNss_output_fil 
mov	[esp+44h+var_10], edi
mov	[esp+44h+var_18], edi
call	ds:PR_GetEnv
add	esp, 4
cmp	eax, edi
jz	short loc_100240EE
push	offset Mode	
push	eax		
call	ds:fopen
mov	esi, eax
add	esp, 8
cmp	esi, edi
jnz	short loc_100240F7
mov	esi, ds:_iob
add	esi, 20h
mov	ebx, ds:fprintf
push	offset aTime	
push	offset aAvg_	
push	offset aTime_0	
push	offset aCalls	
push	offset aFunction 
push	offset Format	
push	esi		
mov	[esp+5Ch+var_C], edi
xor	ebp, ebp
mov	[esp+5Ch+var_8], edi
call	ebx 
push	offset asc_100A5D14 
push	esi		
call	ebx 
mov	ecx, dword_100BA4D8
add	esp, 24h
xor	eax, eax
cmp	ecx, 2
jl	short loc_10024175
add	ecx, 0FFFFFFFEh
shr	ecx, 1
inc	ecx
lea	edx, [ecx+ecx]
mov	eax, offset dword_100BA1A8
mov	[esp+40h+var_14], edx
mov	edx, [eax+10h]
add	[esp+40h+var_8], edx
mov	edx, [eax+0Ch]
add	ebp, [eax+4]
add	edi, [eax]
add	[esp+40h+var_C], edx
add	eax, 18h
dec	ecx
jnz	short loc_10024152
mov	ecx, dword_100BA4D8
mov	eax, [esp+40h+var_14]
cmp	eax, ecx
jge	short loc_10024195
lea	eax, [eax+eax*2]
add	eax, eax
mov	edx, dword_100BA1AC[eax+eax]
add	eax, eax
mov	eax, dword_100BA1A8[eax]
mov	[esp+40h+var_10], edx
mov	[esp+40h+var_18], eax
mov	edx, [esp+40h+var_C]
mov	eax, [esp+40h+var_8]
add	edx, edi
add	[esp+40h+var_18], edx
add	eax, ebp
add	[esp+40h+var_10], eax
mov	[esp+40h+var_14], 0
test	ecx, ecx
jle	loc_10024300
mov	edi, offset dword_100BA1AC
mov	[esp+40h+var_8], edi
mov	ebp, [edi-4]
push	ebp
call	ds:PR_IntervalToMicroseconds
mov	[esp+44h+var_4], eax
mov	eax, [edi]
add	esp, 4
mov	[esp+40h+var_C], eax
test	eax, eax
jz	loc_100242E4
test	ebp, ebp
jnz	short loc_100241EE
mov	edi, offset aZ	
xor	eax, eax
jmp	short loc_10024248
push	ebp
call	ds:PR_IntervalToSeconds
mov	ecx, eax
add	esp, 4
cmp	ecx, 258h
jb	short loc_10024215
mov	eax, 88888889h
mul	ecx
mov	eax, edx
mov	edi, offset aM	
shr	eax, 5
jmp	short loc_10024248
cmp	ecx, 0Ah
jb	short loc_10024223
mov	edi, offset aS_0 
mov	eax, ecx
jmp	short loc_10024248
push	ebp
call	ds:PR_IntervalToMilliseconds
add	esp, 4
cmp	eax, 0Ah
jb	short loc_10024239
mov	edi, offset aMs	
jmp	short loc_10024248
push	ebp
mov	edi, offset aUs	
call	ds:PR_IntervalToMicroseconds
add	esp, 4
			
mov	ecx, [esp+40h+var_C]
mov	edx, [esp+40h+var_8]
push	edi
push	eax
mov	eax, [edx+4]
push	ecx
push	eax
push	offset a25s10d10d2s 
push	esi		
call	ebx 
fild	[esp+58h+var_4]
mov	ecx, [esp+58h+var_4]
add	esp, 18h
push	offset aUs	
test	ecx, ecx
jns	short loc_10024279
fadd	ds:flt_100A5CFC
mov	edx, [esp+44h+var_C]
fild	[esp+44h+var_C]
test	edx, edx
jns	short loc_1002428B
fadd	ds:flt_100A5CFC
fdivp	st(1), st
sub	esp, 8
fstp	[esp+4Ch+var_4C]
push	offset a10_2f2s	
push	esi		
call	ebx 
mov	[esp+54h+var_4], ebp
fild	[esp+54h+var_4]
test	ebp, ebp
jns	short loc_100242AD
fadd	ds:flt_100A5CFC
mov	eax, [esp+54h+var_18]
fild	[esp+54h+var_18]
test	eax, eax
jns	short loc_100242BF
fadd	ds:flt_100A5CFC
fdivp	st(1), st
add	esp, 0Ch
fmul	ds:dbl_100A5CE8
fstp	[esp+48h+var_4C+4]
push	offset a10_2f	
push	esi		
call	ebx 
push	offset asc_100A5D14 
push	esi		
call	ebx 
mov	edi, [esp+58h+var_8]
add	esp, 18h
mov	eax, [esp+40h+var_14]
inc	eax
add	edi, 0Ch
mov	[esp+40h+var_14], eax
mov	[esp+40h+var_8], edi
cmp	eax, dword_100BA4D8
jl	loc_100241C2
push	offset asc_100A5D14 
push	esi		
call	ebx 
mov	edi, [esp+48h+var_18]
add	esp, 8
test	edi, edi
jnz	short loc_1002431C
mov	ebp, offset aZ	
xor	eax, eax
jmp	short loc_10024376
push	edi
call	ds:PR_IntervalToSeconds
mov	ecx, eax
add	esp, 4
cmp	ecx, 258h
jb	short loc_10024343
mov	eax, 88888889h
mul	ecx
mov	eax, edx
mov	ebp, offset aM	
shr	eax, 5
jmp	short loc_10024376
cmp	ecx, 0Ah
jb	short loc_10024351
mov	ebp, offset aS_0 
mov	eax, ecx
jmp	short loc_10024376
push	edi
call	ds:PR_IntervalToMilliseconds
add	esp, 4
cmp	eax, 0Ah
jb	short loc_10024367
mov	ebp, offset aMs	
jmp	short loc_10024376
push	edi
mov	ebp, offset aUs	
call	ds:PR_IntervalToMicroseconds
add	esp, 4
			
mov	ecx, [esp+40h+var_10]
push	ebp
push	eax
push	ecx
push	offset aTotals	
push	offset a25s10d10d2s_0 
push	esi		
call	ebx 
mov	edx, dword_100BACD8
push	edx
push	offset aMaximumNumberO 
push	esi		
call	ebx 
push	esi		
call	ds:fflush
mov	eax, ds:_iob
add	eax, 20h
add	esp, 28h
cmp	esi, eax
jz	short loc_100243B9
push	esi		
call	ds:fclose
add	esp, 4
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
call	ds:PR_NewLock
mov	ecx, [esp+arg_0]
mov	[ecx], eax
neg	eax
sbb	eax, eax
and	eax, 0FFFFFFFEh
add	eax, 2
retn
align 10h
mov	eax, [esp+arg_0]
push	eax
call	ds:PR_DestroyLock
add	esp, 4
xor	eax, eax
retn
align 10h
mov	eax, [esp+arg_0]
push	eax
call	ds:PR_Lock
add	esp, 4
xor	eax, eax
retn
align 10h
mov	eax, [esp+arg_0]
push	eax
call	ds:PR_Unlock
add	esp, 4
xor	eax, eax
retn
align 10h
			
xor	eax, eax
cmp	[esp+arg_0], eax
setz	al
xor	ecx, ecx
cmp	[esp+arg_4], ecx
setz	cl
xor	edx, edx
cmp	[esp+arg_8], edx
mov	dword_100BA4E0,	eax
setz	dl
xor	eax, eax
mov	dword_100BA4E4,	ecx
mov	dword_100BA4E8,	edx
retn
align 10h
			
mov	eax, dword_100BA4E8
retn
align 10h
sub	esp, 14h
push	ebp
push	esi
push	edi
mov	edi, eax
xor	eax, eax
lea	ecx, [esp+20h+var_8]
push	ecx		
mov	[esp+24h+var_14], eax
mov	[esp+24h+var_10], eax
mov	eax, [edi+48h]
lea	edx, [esp+24h+var_4]
push	edx		
push	eax		
mov	eax, [edi+0Ch]
push	eax		
push	1		
or	ebp, 0FFFFFFFFh
call	sub_1002CE00
mov	esi, eax
add	esp, 14h
mov	[esp+20h+var_C], esi
test	esi, esi
jnz	short loc_100244D4
pop	edi
pop	esi
or	eax, ebp
pop	ebp
add	esp, 14h
retn
cmp	dword ptr [ebx+4], 0
jz	short loc_10024513
mov	edx, [ebx+48h]
mov	eax, [ebx+0Ch]
lea	ecx, [esp+20h+var_10]
push	ecx		
push	edx		
push	eax		
call	sub_1002DFC0
add	esp, 0Ch
mov	[esp+20h+var_14], eax
test	eax, eax
jz	short loc_10024513
mov	ecx, [esp+20h+var_10]
push	ecx
mov	edx, eax
push	edx
push	esi
call	sub_1002D4E0
add	esp, 0Ch
test	eax, eax
jz	short loc_10024513
xor	ebp, ebp
jmp	loc_100245D0
			
push	esi
push	ebx
call	SECMOD_OpenNewSlot
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_100245CC
push	edi
call	sub_1002CD10
add	esp, 4
test	eax, eax
jz	short loc_1002453D
push	esi
call	sub_10036320
add	esp, 4
mov	ebp, [esi+40h]
push	esi
call	PK11_FreeSlot
mov	esi, [esp+24h+var_4]
mov	edi, [esp+24h+var_8]
add	esp, 4
test	esi, esi
jz	short loc_100245A8
mov	eax, [esi]
test	eax, eax
jz	short loc_100245A4
mov	ecx, [esp+20h+var_14]
test	ecx, ecx
jz	short loc_10024576
mov	edx, [esp+20h+var_10]
push	edx
push	ecx
push	eax
call	sub_1002D4E0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10024596
mov	eax, [esi]
push	eax
push	ebx
call	SECMOD_OpenNewSlot
add	esp, 8
test	eax, eax
jz	short loc_10024596
mov	ecx, [eax+40h]
push	eax
mov	[edi], ecx
call	PK11_FreeSlot
add	esp, 4
jmp	short loc_1002459C
			
mov	dword ptr [edi], 0FFFFFFFFh
add	edi, 4
add	esi, 4
jnz	short loc_10024555
mov	esi, [esp+20h+var_4]
mov	edx, [esp+20h+var_8]
mov	eax, [esp+20h+var_C]
mov	ecx, [ebx+48h]
push	edx		
mov	edx, [ebx]
push	esi		
push	ebp		
push	eax		
push	ecx		
push	edx		
call	sub_1002D750
add	esp, 18h
test	eax, eax
jz	short loc_100245CA
mov	[ebx+48h], eax
xor	ebp, ebp
mov	esi, [esp+20h+var_C]
mov	eax, [esp+20h+var_8]
mov	ecx, [esp+20h+var_4]
push	eax
push	ecx
call	sub_1002D660
push	esi
call	PORT_Free_Util
mov	eax, [esp+2Ch+var_14]
add	esp, 0Ch
test	eax, eax
jz	short loc_100245FE
mov	edx, [esp+20h+var_10]
push	edx
push	eax
call	sub_1002D610
add	esp, 8
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
add	esp, 14h
retn
align 10h
			
sub	esp, 1Ch
push	ebx
mov	ebx, [esp+20h+arg_4]
push	ebp
test	ebx, ebx
jz	short loc_10024623
mov	dword ptr [ebx], 0
mov	ebp, [esp+24h+arg_0]
test	ebp, ebp
jz	loc_100247AE
cmp	[esp+24h+arg_8], 0
jz	loc_100247AE
mov	eax, [ebp+48h]
push	esi
push	edi
test	eax, eax
jnz	short loc_10024651
mov	eax, [ebp+3Ch]
neg	eax
sbb	eax, eax
and	eax, offset off_100A3360
jmp	short loc_10024674
cmp	dword ptr [ebp+3Ch], 0
mov	ecx, 7
lea	edi, [esp+2Ch+var_1C]
mov	esi, offset off_100A3360
jnz	short loc_1002466A
mov	esi, offset dword_100A337C
rep movsd
mov	[esp+2Ch+var_8], eax
lea	eax, [esp+2Ch+var_1C]
mov	ecx, [ebp+1Ch]
mov	edx, [ecx+2]
push	eax
call	edx
mov	edi, eax
add	esp, 4
cmp	edi, 191h
jnz	short loc_100246EC
test	ebx, ebx
jz	short loc_100246CF
cmp	dword ptr [ebp+48h], 0
jz	short loc_100246CF
mov	eax, [ebp+1Ch]
push	eax
call	sub_10039560
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_100246CF
mov	eax, ebp
mov	ebx, esi
call	sub_10024490
test	eax, eax
jnz	short loc_100246C6
mov	ecx, [esp+2Ch+arg_4]
mov	[ebp+1Ch], eax
mov	[ecx], esi
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
push	esi
call	SECMOD_DestroyModule
add	esp, 4
			
cmp	dword_100BA4E4,	0
jnz	short loc_100246F0
mov	edx, [esp+2Ch+arg_8]
pop	edi
pop	esi
pop	ebp
mov	dword ptr [edx], 1
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
test	edi, edi
jz	short loc_100246BC
cmp	dword ptr [ebp+3Ch], 0
jz	loc_10024794
cmp	edi, 0CE534351h
jz	loc_10024794
cmp	edi, 0CE534352h
jz	loc_10024794
cmp	dword_100BA4E0,	0
jnz	short loc_10024733
push	0FFFFE097h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 1Ch
retn
mov	eax, [ebp+48h]
mov	dword ptr [ebp+3Ch], 0
test	eax, eax
jz	short loc_10024759
mov	ecx, 7
mov	esi, offset dword_100A337C
lea	edi, [esp+2Ch+var_1C]
rep movsd
mov	[esp+2Ch+var_8], eax
lea	eax, [esp+2Ch+var_1C]
mov	ecx, [ebp+1Ch]
mov	edx, [ecx+2]
push	eax
call	edx
add	esp, 4
cmp	eax, 191h
jnz	short loc_10024789
cmp	dword_100BA4E4,	0
jnz	short loc_10024791
mov	eax, [esp+2Ch+arg_8]
pop	edi
pop	esi
pop	ebp
mov	dword ptr [eax], 1
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
test	eax, eax
jz	loc_100246BC
push	eax
jmp	short loc_10024795
			
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 1Ch
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 1Ch
retn
align 10h
mov	ecx, [esp+arg_0]
cmp	dword ptr [ecx+11Ch], 0
jz	locret_1002487E
push	ebp
push	esi
mov	esi, [esp+8+arg_4]
mov	edx, [esi+34h]
xor	eax, eax
push	edi
test	edx, edx
jle	short loc_10024818
mov	edi, [esi+30h]
mov	ebp, [ecx+40h]
mov	ecx, edi
lea	esp, [esp+0]
cmp	ebp, [ecx]
jz	short loc_1002480E
inc	eax
add	ecx, 24h
cmp	eax, edx
jl	short loc_10024800
jmp	short loc_10024818
lea	eax, [eax+eax*8]
lea	eax, [edi+eax*4]
test	eax, eax
jnz	short loc_10024877
			
lea	ecx, [edx+edx*8+9]
mov	edx, [esi]
add	ecx, ecx
add	ecx, ecx
push	ecx
push	edx
call	PORT_ArenaAlloc_Util
mov	edi, eax
mov	eax, [esi+34h]
add	esp, 8
test	eax, eax
jle	short loc_1002484A
mov	ecx, [esi+30h]
lea	eax, [eax+eax*8]
add	eax, eax
add	eax, eax
push	eax		
push	ecx		
push	edi		
call	memcpy
add	esp, 0Ch
mov	eax, [esi+34h]
mov	ecx, [esp+0Ch+arg_0]
lea	edx, [eax+eax*8]
lea	eax, [edi+edx*4]
mov	edx, [ecx+40h]
mov	[eax], edx
mov	dword ptr [eax+8], 0
mov	dword ptr [eax+0Ch], 0
mov	dword ptr [eax+4], 0
inc	dword ptr [esi+34h]
mov	[esi+30h], edi
pop	edi
pop	esi
mov	byte ptr [eax+10h], 1
pop	ebp
retn
align 10h
			
mov	eax, off_100BA4F0
mov	ecx, off_100BA4EC
push	eax
push	offset sub_10024880
push	ecx
call	PORT_LoadLibraryFromOrigin
add	esp, 0Ch
test	eax, eax
jz	short loc_100248A6
mov	dword_100BABA4,	eax
xor	eax, eax
retn
or	eax, 0FFFFFFFFh
retn
align 10h
			
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
mov	eax, [esp+5Ch+arg_4]
push	esi
mov	esi, [esp+60h+arg_0]
push	edi
xor	edi, edi
mov	[esp+64h+var_50], eax
mov	[esp+64h+var_58], edi
mov	[esp+64h+var_5C], edi
mov	[esp+64h+var_54], edi
cmp	[esi+8], edi
jz	short loc_100248F2
pop	edi
xor	eax, eax
pop	esi
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
push	ebx
push	ebp
cmp	[esi+4], edi
jz	loc_100249AA
cmp	[esi+10h], edi
jnz	loc_100249AA
cmp	dword_100BABA4,	edi
jnz	short loc_10024929
push	offset sub_10024880
push	offset dword_100BACC0
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jnz	loc_10024C0B
push	offset dword_100BABA0
call	ds:PR_AtomicIncrement
mov	ebp, ds:PR_FindSymbol
add	esp, 4
cmp	[esi+0Ch], edi
jz	short loc_10024950
mov	ecx, dword_100BABA4
push	offset aFc_getfunction 
push	ecx
jmp	short loc_1002495C
mov	edx, dword_100BABA4
push	offset aNsc_getfunctio 
push	edx
call	ebp 
mov	edi, eax
add	esp, 8
test	edi, edi
jz	loc_10024C0B
cmp	dword ptr [esi+58h], 0
jz	short loc_10024984
mov	eax, dword_100BABA4
push	offset aNsc_moduledbfu 
push	eax
call	ebp 
add	esp, 8
mov	[esi+4Ch], eax
cmp	dword ptr [esi+5Ch], 0
jz	loc_10024A54
pop	ebp
pop	ebx
pop	edi
mov	dword ptr [esi+8], 1
xor	eax, eax
pop	esi
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
			
mov	eax, [esi+10h]
cmp	eax, edi
jz	loc_10024C0B
push	eax
call	ds:PR_LoadLibrary
mov	ebx, eax
add	esp, 4
mov	[esp+6Ch+var_58], ebx
mov	[esi+18h], ebx
cmp	ebx, edi
jz	loc_10024C0B
mov	ebp, ds:PR_FindSymbol
cmp	[esi+5Ch], edi
jnz	short loc_100249E8
push	offset aC_getfunctionl 
push	ebx
call	ebp 
add	esp, 8
mov	edi, eax
cmp	dword ptr [esi+58h], 0
jz	short loc_100249FC
push	offset aNss_returnmodu 
push	ebx
call	ebp 
add	esp, 8
mov	[esi+4Ch], eax
cmp	dword ptr [esi+4Ch], 0
jnz	short loc_10024A09
mov	dword ptr [esi+58h], 0
test	edi, edi
jnz	short loc_10024A54
cmp	[esi+58h], edi
jz	short loc_10024A32
pop	ebp
mov	eax, 1
pop	ebx
mov	[esi+8], eax
mov	[esi+5Ch], eax
pop	edi
xor	eax, eax
pop	esi
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
mov	ecx, ebx
push	ecx
call	ds:PR_UnloadLibrary
add	esp, 4
pop	ebp
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
			
lea	ebx, [esi+1Ch]
push	ebx
call	edi
mov	edi, ds:PR_GetEnv
add	esp, 4
test	eax, eax
jnz	loc_10024BE5
push	offset aNss_debug_pkcs 
call	edi 
add	esp, 4
mov	dword_100BACCC,	eax
test	eax, eax
jz	short loc_10024AB9
mov	ecx, eax
mov	eax, [esi+14h]
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10024AA3
test	dl, dl
jz	short loc_10024A9F
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10024AA3
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_10024A83
xor	eax, eax
jmp	short loc_10024AA8
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_10024AB9
mov	edx, [ebx]
push	edx
call	sub_10023DE0
add	esp, 4
mov	[ebx], eax
			
mov	ecx, [esp+6Ch+var_50]
lea	eax, [esp+6Ch+var_54]
push	eax
push	ecx
mov	ebp, 1
push	esi
mov	[esi+3Ch], ebp
call	sub_10024610
add	esp, 0Ch
test	eax, eax
jnz	loc_10024BE5
mov	eax, [ebx]
test	eax, eax
jz	loc_10024CC7
mov	eax, [eax+0Ah]
lea	edx, [esp+6Ch+var_4C]
push	edx
call	eax
add	esp, 4
test	eax, eax
jnz	loc_10024BC9
mov	ax, [esp+6Ch+var_4C]
cmp	al, 2
jnz	loc_10024BC9
cmp	ah, 1
jnb	short loc_10024B2C
cmp	dword_100BA4E0,	0
jnz	short loc_10024B25
push	0FFFFE097h
call	PORT_SetError_Util
jmp	loc_10024BC6
mov	dword ptr [esi+3Ch], 0
mov	[esi+6Ch], ax
mov	eax, [esi+14h]
test	eax, eax
jz	short loc_10024B3C
cmp	byte ptr [eax],	0
jnz	short loc_10024B57
mov	edx, [esi]
push	20h		
lea	ecx, [esp+70h+Src]
push	ecx		
push	0		
push	edx		
call	sub_10035BD0
add	esp, 10h
mov	[esi+14h], eax
test	eax, eax
jz	short loc_10024BC9
mov	eax, [ebx]
mov	edx, [eax+12h]
lea	ecx, [esp+6Ch+var_5C]
push	ecx
push	0
push	0
call	edx
add	esp, 0Ch
test	eax, eax
jnz	loc_10024CB8
mov	eax, [esp+6Ch+var_5C]
mov	edx, [esi]
lea	ecx, ds:0[eax*4]
push	ecx
push	edx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi+28h], eax
test	eax, eax
jz	short loc_10024BC9
mov	eax, [esp+6Ch+var_5C]
lea	ecx, ds:0[eax*4]
push	ecx
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_10024BC9
mov	edx, [ebx]
mov	ecx, [edx+12h]
lea	eax, [esp+6Ch+var_5C]
push	eax
push	ebp
push	0
call	ecx
add	esp, 0Ch
test	eax, eax
jz	short loc_10024C21
push	ebp
call	PORT_Free_Util
add	esp, 4
			
cmp	dword_100BA4E4,	0
jnz	short loc_10024BD9
cmp	[esp+6Ch+var_54], 0
jnz	short loc_10024BE5
mov	edx, [ebx]
mov	eax, [edx+6]
push	0
call	eax
add	esp, 4
			
push	offset aNss_disable_un 
mov	dword ptr [ebx], 0
call	edi 
mov	ecx, [esp+70h+var_58]
add	esp, 4
test	ecx, ecx
jz	short loc_10024C0B
test	eax, eax
jnz	short loc_10024C0B
push	ecx
call	ds:PR_UnloadLibrary
add	esp, 4
			
pop	ebp
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
mov	eax, [esp+6Ch+var_5C]
xor	edi, edi
test	eax, eax
jle	short loc_10024CA0
jmp	short loc_10024C30
align 10h
			
push	esi
call	sub_10035430
mov	ecx, [esi+28h]
mov	[ecx+edi*4], eax
mov	edx, [esi+28h]
mov	eax, [edx+edi*4]
mov	ecx, [ebp+edi*4+0]
push	eax
push	ecx
push	esi
call	sub_100371A0
mov	edx, [esi+34h]
mov	eax, [esi+30h]
mov	ecx, [esi+28h]
push	edx
mov	edx, [ecx+edi*4]
push	eax
push	edx
call	sub_10036B80
mov	eax, [esi+28h]
mov	ecx, [eax+edi*4]
push	esi
push	ecx
call	sub_100247D0
push	esi
call	sub_1002CD10
add	esp, 28h
test	eax, eax
jz	short loc_10024C97
xor	edx, edx
cmp	[esi+0Ch], edx
setz	dl
cmp	edi, edx
jnz	short loc_10024C97
mov	eax, [esi+28h]
mov	ecx, [eax+edi*4]
push	ecx
call	sub_10036320
add	esp, 4
			
mov	eax, [esp+6Ch+var_5C]
inc	edi
cmp	edi, eax
jl	short loc_10024C30
push	ebp
mov	[esi+2Ch], eax
mov	dword ptr [esi+34h], 0
call	PORT_Free_Util
add	esp, 4
mov	ebp, 1
mov	eax, dword_100BA4DC
mov	[esi+38h], eax
add	eax, ebp
mov	dword_100BA4DC,	eax
mov	ecx, [esp+6Ch+var_4]
mov	[esi+8], ebp
pop	ebp
pop	ebx
pop	edi
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+8], 0
jnz	short loc_10024CF0
or	eax, 0FFFFFFFFh
pop	esi
retn
cmp	dword_100BA4E8,	0
jz	short loc_10024D10
mov	eax, [esi+1Ch]
test	eax, eax
jz	short loc_10024D10
cmp	dword ptr [esi+5Ch], 0
jnz	short loc_10024D10
mov	eax, [eax+6]
push	0
call	eax
add	esp, 4
			
cmp	dword ptr [esi+4], 0
mov	dword ptr [esi+38h], 0
mov	dword ptr [esi+8], 0
jz	short loc_10024D9A
cmp	dword ptr [esi+10h], 0
jnz	short loc_10024D9A
push	offset dword_100BABA0
call	ds:PR_AtomicDecrement
add	esp, 4
test	eax, eax
jnz	loc_10024DC1
cmp	dword_100BABA4,	eax
jz	short loc_10024D74
push	offset aNss_disable_un 
call	ds:PR_GetEnv
add	esp, 4
test	eax, eax
jnz	short loc_10024D6A
mov	ecx, dword_100BABA4
push	ecx
call	ds:PR_UnloadLibrary
add	esp, 4
mov	dword_100BABA4,	0
mov	eax, ds:dword_100A2F78
mov	edx, ds:dword_100A2F74
mov	ecx, ds:dword_100A2F7C
mov	dword_100BACC4,	eax
mov	dword_100BACC0,	edx
mov	dword_100BACC8,	ecx
xor	eax, eax
pop	esi
retn
			
mov	esi, [esi+18h]
test	esi, esi
jz	loc_10024CEB
push	offset aNss_disable_un 
call	ds:PR_GetEnv
add	esp, 4
test	eax, eax
jnz	short loc_10024DC1
push	esi
call	ds:PR_UnloadLibrary
add	esp, 4
			
xor	eax, eax
pop	esi
retn
align 10h
cmp	dword_100BACCC,	0
jz	short locret_10024DDE
jmp	sub_100240B0
retn
align 10h
			
mov	edx, dword_100BACE4
xor	eax, eax
push	edi
test	edx, edx
jle	short loc_10024E02
mov	edi, dword_100BACDC
lea	ecx, [edi+8]
cmp	[ecx], esi
jz	short loc_10024E09
inc	eax
add	ecx, 18h
cmp	eax, edx
jl	short loc_10024DF6
mov	eax, offset dword_100BA4F4
pop	edi
retn
lea	eax, [eax+eax*2]
lea	eax, [edi+eax*8]
pop	edi
retn
align 10h
public PK11_GetBestWrapMechanism
push	esi
xor	esi, esi
push	edi
cmp	dword_100BA548,	esi
jle	short loc_10024E4E
mov	edi, [esp+8+arg_0]
mov	eax, dword_100BA50C[esi*4]
push	eax
push	edi
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jnz	short loc_10024E54
inc	esi
cmp	esi, dword_100BA548
jl	short loc_10024E30
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, dword_100BA50C[esi*4]
pop	edi
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 26h	
ja	loc_10024EFF	
movzx	eax, ds:byte_10024F64[eax]
jmp	ds:off_10024F08[eax*4] 
			
mov	eax, 652h	
retn
			
mov	eax, 552h	
retn
			
mov	eax, 1082h	
retn
			
mov	eax, 122h	
retn
			
mov	eax, 131h	
retn
			
mov	eax, 130h	
retn
			
mov	eax, 142h	
retn
			
mov	eax, 102h	
retn
			
mov	eax, 111h	
retn
			
mov	eax, 332h	
retn
			
mov	eax, 1002h	
retn
			
mov	eax, 1033h	
retn
			
mov	eax, 1062h	
retn
			
mov	eax, 342h	
retn
			
mov	eax, 302h	
retn
			
mov	eax, 312h	
retn
			
mov	eax, 322h	
retn
			
mov	eax, 1		
retn
			
mov	eax, 11h	
retn
			
mov	eax, 21h	
retn
			
mov	eax, 1011h	
retn
			
mov	eax, 1041h	
retn
			
			
mov	eax, 221h	
retn
align 4
dd offset loc_10024EE7	
dd offset loc_10024EED
dd offset loc_10024EF9
dd offset loc_10024EF3
dd offset loc_10024EA5
dd offset loc_10024EAB
dd offset loc_10024E8D
dd offset loc_10024E99
dd offset loc_10024E93
dd offset loc_10024ECF
dd offset loc_10024ED5
dd offset loc_10024EDB
dd offset loc_10024EB1
dd offset loc_10024EC9
dd offset loc_10024EB7
dd offset loc_10024EBD
dd offset loc_10024EC3
dd offset loc_10024E9F
dd offset loc_10024E87
dd offset loc_10024E81
dd offset loc_10024E7B
dd offset loc_10024EFF
db    16h,     4,   16h,   16h 
db    16h,   16h,   16h,   16h
db    16h,   16h,   16h,   16h
db    16h,     5,     6,     7
db	8,     9,   0Ah,   0Bh
db    0Ch,   0Dh,   0Eh,   0Fh
db    10h,   11h,   12h,   13h
db    16h,   16h,   16h,   16h
db    16h,   14h,   15h
align 20h
public PK11_GetKeyType
			
mov	eax, [esp+arg_0]
cmp	eax, 305h
ja	loc_1002507B
cmp	eax, 300h
jnb	loc_100250CD	
cmp	eax, 131h
ja	short loc_10025018
jz	loc_100250B5	
cmp	eax, 46h
ja	short loc_10024FF5
jz	loc_100250DF	
			
cmp	eax, 42h	
ja	loc_10025172	
movzx	ecx, ds:byte_100251E0[eax]
jmp	ds:off_100251D0[ecx*4] 
			
mov	eax, 1		
retn
			
mov	eax, 2		
retn
lea	ecx, [eax-100h]	
cmp	ecx, 30h
ja	loc_10025172	
movzx	edx, ds:byte_10025238[ecx]
jmp	ds:off_10025224[edx*4] 
			
mov	eax, 12h	
retn
cmp	eax, 222h
ja	short loc_1002505E
cmp	eax, 221h
jnb	loc_100251BB	
			
			
lea	ecx, [eax-132h]	
cmp	ecx, 0E0h
ja	loc_10025172	
movzx	ecx, ds:byte_1002527C[ecx]
jmp	ds:off_1002526C[ecx*4] 
			
xor	eax, eax	
cmp	[esp+arg_4], 10h
setnz	al
add	eax, 14h
retn
			
mov	eax, 1Eh	
retn
lea	ecx, [eax-251h]	
cmp	ecx, 21h
ja	loc_10025172	
movzx	edx, ds:byte_10025368[ecx]
jmp	ds:off_10025360[edx*4] 
cmp	eax, 555h
ja	short loc_100250E8
cmp	eax, 550h
jnb	short loc_100250E2
lea	ecx, [eax-310h]	
cmp	ecx, 0F1h
ja	loc_10025172	
movzx	ecx, ds:byte_100253BC[ecx]
jmp	ds:off_1002538C[ecx*4] 
			
			
mov	eax, 13h	
			
retn
			
			
mov	eax, 14h	
			
retn
			
			
mov	eax, 15h	
retn
			
			
mov	eax, 11h	
			
retn
			
mov	eax, 19h	
retn
			
mov	eax, 1Ah	
retn
			
			
mov	eax, 16h	
retn
			
mov	eax, 17h	
retn
			
mov	eax, 18h	
retn
			
xor	eax, eax	
			
retn
mov	eax, 25h
retn
cmp	eax, 1009h
ja	short loc_10025110
cmp	eax, 1000h
jnb	short loc_1002510A
cmp	eax, 650h
jb	short loc_10025172 
cmp	eax, 655h
ja	short loc_10025172 
mov	eax, 26h
retn
mov	eax, 1Bh
retn
cmp	eax, 1065h
ja	short loc_1002514F
cmp	eax, 1060h
jnb	short loc_10025149
lea	ecx, [eax-1010h] 
cmp	ecx, 40h
ja	short loc_10025172 
movzx	edx, ds:byte_100254C0[ecx]
jmp	ds:off_100254B0[edx*4] 
			
mov	eax, 1Ch	
retn
			
mov	eax, 5		
retn
			
mov	eax, 3		
retn
mov	eax, 1Dh
retn
cmp	eax, 0CE534352h
ja	short loc_100251AD
cmp	eax, 0CE534351h
jnb	short loc_100251A7
cmp	eax, 1080h
jb	short loc_10025172 
cmp	eax, 1089h
jbe	short loc_100251A7
cmp	eax, 80000373h
jz	short loc_100251BB 
			
			
			
push	esi		
mov	esi, dword_100BACE4
xor	ecx, ecx
push	edi
test	esi, esi
jle	short loc_1002519C
mov	edi, dword_100BACDC
lea	edx, [edi+8]
lea	esp, [esp+0]
cmp	[edx], eax
jz	short loc_100251C1
inc	ecx
add	edx, 18h
cmp	ecx, esi
jl	short loc_10025190
mov	eax, offset dword_100BA4F4
mov	eax, [eax+4]
pop	edi
pop	esi
retn
			
mov	eax, 1Fh
retn
cmp	eax, 0CE534365h
jb	short loc_10025172 
cmp	eax, 0CE534368h
ja	short loc_10025172 
			
mov	eax, 10h	
			
			
retn
lea	eax, [ecx+ecx*2]
lea	eax, [edi+eax*8]
mov	eax, [eax+4]
pop	edi
pop	esi
retn
align 10h
			
dd offset loc_10025172	
db	0,     0,     0,     3 
db	3,     3,     0,     3
db	3,     3,     3,     3
db	1,     1,     1,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	2,     2,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	0,     0,     0
align 4
dd offset loc_10025012	
dd offset loc_100250A9
dd offset loc_100250AF
dd offset loc_10025172
db	0,     0,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	1,     1,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     2,     2,     2
db	2,     2,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	3
align 4
			
dd offset loc_10025172	
			
db 1, 1, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3	
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 2, 2, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	2, 2
align 10h
dd offset loc_10025172	
db	1,     0,     0,     1 
db	1,     1,     1,     1
db	1,     1,     1,     1
db	0,     0,     1,     1
db	1,     1,     1,     1
db	1,     1,     1,     1
db	1,     1,     1,     1
db	0,     0
align 4
			
dd offset loc_100250C7,	offset loc_100251BB, offset loc_100250A9 
dd offset loc_100250CD,	offset loc_100250B5, offset loc_100250AF
dd offset loc_100250BB,	offset loc_100250DF, offset loc_10025172
			
db 0Bh,	0Bh, 0Bh, 1, 1,	1, 1, 1, 1, 0Bh, 0Bh, 0Bh, 0Bh 
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 2, 2, 2, 2, 2,	2, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	3, 3, 3
db 3, 3, 3, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh
db 0Bh,	4, 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 4, 4, 4, 4, 0Bh, 4, 4, 4, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh
db 0Bh,	0Bh, 4,	4, 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 5, 5, 6, 0, 1, 0Bh, 0Bh, 0Bh, 7, 8, 9, 9, 0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh, 0Bh,	0Bh, 0Bh
db 0Bh,	0Bh, 0Bh, 0Bh, 0Bh, 5, 0Ah
align 10h
			
dd offset loc_10025172	
db	3,     3,     3,     3 
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     1,     1,     1
db	1,     1,     1,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	2,     2,     2,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	2
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 305h
ja	loc_10025607
cmp	eax, 300h
jnb	loc_10025601
cmp	eax, 131h
ja	short loc_1002559C
jz	short loc_10025596
cmp	eax, 46h
ja	short loc_10025567
jz	loc_10025653	
			
cmp	eax, 42h	
ja	loc_100256F8	
movzx	ecx, ds:byte_1002574C[eax]
jmp	ds:off_10025738[ecx*4] 
			
mov	eax, 0Ah	
retn
			
mov	eax, 10h	
retn
			
mov	eax, 20h	
retn
lea	ecx, [eax-100h]	
cmp	ecx, 30h
ja	loc_100256F8	
movzx	edx, ds:byte_100257A4[ecx]
jmp	ds:off_10025790[edx*4] 
			
mov	eax, 130h	
retn
			
mov	eax, 100h	
retn
			
mov	eax, 110h	
retn
mov	eax, 131h
retn
cmp	eax, 222h
ja	short loc_100255E4
cmp	eax, 221h
jnb	loc_100256EB	
			
			
lea	ecx, [eax-132h]	
cmp	ecx, 0E0h
ja	loc_100256F8	
movzx	ecx, ds:byte_100257E8[ecx]
jmp	ds:off_100257D8[ecx*4] 
			
xor	eax, eax	
cmp	[esp+arg_4], 10h
setnz	al
add	eax, 130h
retn
			
mov	eax, 140h	
retn
lea	ecx, [eax-251h]	
cmp	ecx, 21h
ja	loc_100256F8	
movzx	edx, ds:byte_100258D4[ecx]
jmp	ds:off_100258CC[edx*4] 
mov	eax, 300h
retn
cmp	eax, 555h
ja	short loc_1002565C
cmp	eax, 550h
jnb	short loc_10025656
lea	ecx, [eax-310h]	
cmp	ecx, 0F1h
ja	loc_100256F8	
movzx	ecx, ds:byte_10025920[ecx]
jmp	ds:off_100258F8[ecx*4] 
			
			
mov	eax, 120h	
			
retn
			
mov	eax, 330h	
retn
			
mov	eax, 340h	
retn
			
mov	eax, 310h	
retn
			
mov	eax, 320h	
retn
			
xor	eax, eax	
			
retn
mov	eax, 550h
retn
cmp	eax, 1008h
ja	short loc_10025688
cmp	eax, 1000h
jnb	short loc_10025682
cmp	eax, 650h
jb	loc_100256F8	
cmp	eax, 655h
ja	short loc_100256F8 
mov	eax, 650h
retn
mov	eax, 1000h
retn
cmp	eax, 1089h
ja	short loc_100256CD
cmp	eax, 1080h
jnb	short loc_100256C7
lea	ecx, [eax-1010h] 
cmp	ecx, 55h
ja	short loc_100256F8 
movzx	edx, ds:byte_10025A28[ecx]
jmp	ds:off_10025A14[edx*4] 
			
mov	eax, 1030h	
retn
			
mov	eax, 1060h	
retn
			
mov	eax, 1010h	
retn
			
mov	eax, 1040h	
retn
mov	eax, 1080h
retn
cmp	eax, 0CE534365h
ja	short loc_100256F1
jz	short loc_100256EB 
			
			
cmp	eax, 80000002h
jb	short loc_100256F8 
cmp	eax, 8000000Bh
jbe	short locret_10025736 
cmp	eax, 80000373h
jnz	short loc_100256F8 
			
mov	eax, 350h	
			
			
retn
cmp	eax, 0CE534367h
jz	short loc_10025731 
			
push	esi		
mov	esi, dword_100BACE4
xor	ecx, ecx
push	edi
test	esi, esi
jle	short loc_1002571C
mov	edi, dword_100BACDC
lea	edx, [edi+8]
nop
cmp	[edx], eax
jz	short loc_10025726
inc	ecx
add	edx, 18h
cmp	ecx, esi
jl	short loc_10025710
mov	eax, offset dword_100BA4F4
mov	eax, [eax]
pop	edi
pop	esi
retn
lea	eax, [ecx+ecx*2]
lea	eax, [edi+eax*8]
mov	eax, [eax]
pop	edi
pop	esi
retn
			
			
mov	eax, 370h	
			
			
retn			
align 4
			
dd offset loc_10025561,	offset loc_100256F8 
db	0,     0,     0,     4 
db	4,     4,     1,     4
db	4,     4,     4,     4
db	2,     2,     2,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	3,     3,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	0,     0,     0
align 10h
dd offset loc_10025590	
dd offset loc_10025635
dd offset loc_10025584
dd offset loc_100256F8
db	0,     0,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	1,     1,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     2,     2,     2
db	2,     2,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	3
align 4
			
dd offset loc_100256F8	
			
db 1, 1, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3	
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 3, 3, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	3, 3, 2, 2, 3, 3, 3, 3,	3, 3, 3
db 3, 3, 3, 3, 3, 3, 3,	2, 2
align 4
dd offset loc_100256F8	
db	1,     0,     0,     1 
db	1,     1,     1,     1
db	1,     1,     1,     1
db	0,     0,     1,     1
db	1,     1,     1,     1
db	1,     1,     1,     1
db	1,     1,     1,     1
db	0,     0
align 4
			
dd offset loc_10025641,	offset loc_100256EB, offset loc_10025731 
dd offset locret_10025736, offset loc_10025635,	offset loc_10025653
dd offset loc_100256F8
			
db 1, 1, 1, 1, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 2,	2, 2, 2	
db 2, 2, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 3, 3, 3,	3, 3, 3
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 4, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 5,	5, 5, 9, 9, 5, 5, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 5, 5, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 6, 6, 9, 9, 9, 9, 6,	6, 6, 6, 6, 6, 9, 9, 9,	9, 6, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 6,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 9,	9, 9, 9, 9, 9, 9, 9, 9,	9, 9, 9
db 9, 9, 9, 9, 9, 9, 7,	8
align 4
			
dd offset loc_100256B5,	offset loc_100256F8 
db	4,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	1,     1,     1,     1
db	1,     1,     1,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     2,     2,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	3,     3,     3,     3
db	3,     3
align 10h
public PK11_GetBlockSize
			
mov	eax, [esp+arg_0]
cmp	eax, 302h
ja	loc_10025B0F
cmp	eax, 301h
jnb	loc_10025BE5	
			
cmp	eax, 122h
ja	short loc_10025AF2
cmp	eax, 121h
jnb	loc_10025BE5	
			
cmp	eax, 105h
ja	short loc_10025AE4
jz	loc_10025BE5	
			
cmp	eax, 102h
ja	loc_10025BF2	
cmp	eax, 101h
jnb	loc_10025BE5	
			
test	eax, eax
jz	loc_10025BF2	
cmp	eax, 3
ja	loc_10025BF2	
or	eax, 0FFFFFFFFh
retn
cmp	eax, 111h
jnz	loc_10025BF2	
			
			
xor	eax, eax	
retn
lea	ecx, [eax-125h]	
cmp	ecx, 11h
ja	loc_10025BF2	
movzx	ecx, ds:byte_10025C3C[ecx]
jmp	ds:off_10025C34[ecx*4] 
cmp	eax, 552h
ja	short loc_10025B59
cmp	eax, 551h
jnb	short loc_10025B7C 
lea	ecx, [eax-305h]	
cmp	ecx, 0A6h
ja	loc_10025BF2	
movzx	edx, ds:byte_10025C60[ecx]
jmp	ds:off_10025C50[edx*4] 
			
mov	eax, [esp+arg_4] 
test	eax, eax
jz	loc_10025BE5	
			
mov	eax, [eax+4]
test	eax, eax
jz	loc_10025BE5	
			
mov	eax, [eax]
add	eax, eax
retn
cmp	eax, 1004h
ja	short loc_10025B8B
cmp	eax, 1001h
jnb	short loc_10025BE5 
			
cmp	eax, 652h
ja	short loc_10025B82
cmp	eax, 651h
jnb	short loc_10025B7C 
cmp	eax, 555h
jnz	short loc_10025BF2 
			
mov	eax, 10h	
retn
cmp	eax, 655h
jz	short loc_10025B7C 
jmp	short loc_10025BF2 
cmp	eax, 1082h
ja	short loc_10025BBE
cmp	eax, 1081h
jnb	short loc_10025B7C 
lea	ecx, [eax-1005h] 
cmp	ecx, 5Fh
ja	short loc_10025BF2 
movzx	ecx, ds:byte_10025D18[ecx]
jmp	ds:off_10025D08[ecx*4] 
			
mov	eax, 4		
retn
			
mov	eax, 0Ch	
retn
cmp	eax, 80000007h
ja	short loc_10025BEB
cmp	eax, 80000006h
jnb	loc_10025AEF	
cmp	eax, 1085h
jz	short loc_10025B7C 
cmp	eax, 80000001h
jbe	short loc_10025BF2 
cmp	eax, 80000005h
ja	short loc_10025BF2 
			
mov	eax, 8		
			
retn
cmp	eax, 80000008h
jz	short loc_10025BE5 
			
			
push	esi		
mov	esi, dword_100BACE4
xor	ecx, ecx
push	edi
test	esi, esi
jle	short loc_10025C1C
mov	edi, dword_100BACDC
lea	edx, [edi+8]
lea	esp, [esp+0]
cmp	[edx], eax
jz	short loc_10025C27
inc	ecx
add	edx, 18h
cmp	ecx, esi
jl	short loc_10025C10
mov	eax, offset dword_100BA4F4
mov	eax, [eax+10h]
pop	edi
pop	esi
retn
lea	edx, [ecx+ecx*2]
lea	eax, [edi+edx*8]
mov	eax, [eax+10h]
pop	edi
pop	esi
retn
align 4
dd offset loc_10025BF2	
db	1,     1,     1,     1 
db	1,     1,     1,     1
db	1,     0,     0,     1
db	1,     0
align 10h
			
dd offset loc_10025BF2	
db	3,     3,     3,     3 
db	3,     3,     3,     3
db	0,     0,     3,     3
db	0,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	0,     0,     3,     3
db	0,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     1,     3,     3
db	1,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	0,     0,     3,     3
db	0,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     0
db	0,     3,     3,     3
db	3,     2,     2,     0
db	0,     0,     0
align 4
			
dd offset loc_10025BF2	
db	3,     3,     3,     3 
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     2,     1,     1
db	1,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     1,     1,     1
align 10h
public PK11_GetIVLength
			
mov	eax, [esp+arg_0]
cmp	eax, 301h
ja	short loc_10025DC7
jz	short loc_10025DA7 
			
			
cmp	eax, 101h
ja	short loc_10025DAA
jz	short loc_10025DA7 
			
			
test	eax, eax
jz	loc_10025E89	
cmp	eax, 3
ja	loc_10025E89	
			
xor	eax, eax	
			
			
retn
lea	ecx, [eax-102h]	
cmp	ecx, 34h
ja	loc_10025E89	
movzx	ecx, ds:byte_10025ED0[ecx]
jmp	ds:off_10025EC4[ecx*4] 
cmp	eax, 551h
ja	short loc_10025DF0
jz	short loc_10025DA7 
			
			
lea	ecx, [eax-302h]	
cmp	ecx, 0A9h
ja	loc_10025E89	
movzx	edx, ds:byte_10025F14[ecx]
jmp	ds:off_10025F08[edx*4] 
cmp	eax, 1007h
ja	short loc_10025E2D
cmp	eax, 1001h
jnb	short loc_10025E4F 
cmp	eax, 651h
ja	short loc_10025E1C
jz	short loc_10025DA7 
			
			
mov	ecx, eax
sub	ecx, 552h
jz	short loc_10025E16
sub	ecx, 3
jnz	short loc_10025E89 
			
mov	eax, 10h
retn
mov	ecx, eax
sub	ecx, 652h
jz	short loc_10025E16
sub	ecx, 3
jz	short loc_10025E16
jmp	short loc_10025E89 
cmp	eax, 1082h
ja	short loc_10025E55
jz	short loc_10025E16
lea	ecx, [eax-1008h] 
cmp	ecx, 79h
ja	short loc_10025E89 
movzx	ecx, ds:byte_10025FCC[ecx]
jmp	ds:off_10025FC0[ecx*4] 
			
			
mov	eax, 18h	
retn
cmp	eax, 80000007h
ja	short loc_10025E82
cmp	eax, 80000006h
jnb	loc_10025DA7	
			
			
cmp	eax, 1085h
jz	short loc_10025E16
cmp	eax, 80000001h
jbe	short loc_10025E89 
cmp	eax, 80000005h
ja	short loc_10025E89 
			
mov	eax, 8		
			
retn
cmp	eax, 80000008h
jz	short loc_10025E7C 
			
			
push	esi		
mov	esi, dword_100BACE4
xor	ecx, ecx
push	edi
test	esi, esi
jle	short loc_10025EAC
mov	edi, dword_100BACDC
lea	edx, [edi+8]
cmp	[edx], eax
jz	short loc_10025EB7
inc	ecx
add	edx, 18h
cmp	ecx, esi
jl	short loc_10025EA0
mov	eax, offset dword_100BA4F4
mov	eax, [eax+14h]
pop	edi
pop	esi
retn
lea	edx, [ecx+ecx*2]
lea	eax, [edi+edx*8]
mov	eax, [eax+14h]
pop	edi
pop	esi
retn
align 4
			
			
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     1
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     1
db	0,     2,     2,     0
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	1,     0,     2,     2
db	0
align 4
			
			
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     1
db	0,     2,     2,     0
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     1
db	0,     2,     2,     0
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     1
db	0,     2,     2,     0
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     1
db	0,     2,     2,     0
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     0,     0
db	2,     2,     2,     2
db	1,     1,     0,     0
db	0,     0
align 10h
			
			
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     1,     1,     1
db	1,     1,     0,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     1,     1,     1
db	1,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     0
align 10h
			
push	ebx
push	ebp
push	0Ch
call	PORT_Alloc_Util
mov	ebx, eax
xor	ebp, ebp
add	esp, 4
cmp	ebx, ebp
jnz	short loc_10026069
pop	ebp
xor	eax, eax
pop	ebx
retn
push	esi
mov	esi, [esp+0Ch+arg_0]
push	edi
mov	[ebx+4], ebp
mov	[ebx+8], ebp
mov	[ebx], ebp
cmp	esi, 301h
ja	loc_10026198
jz	short loc_100260DD 
			
			
cmp	esi, 101h
ja	loc_1002612B
jz	short loc_100260E4
cmp	esi, ebp
jbe	short loc_1002609C 
cmp	esi, 3
jbe	short loc_100260DD 
			
			
			
call	sub_10024DE0	
cmp	[eax+14h], ebp
jz	short loc_100260DD 
			
			
mov	esi, [esp+10h+arg_4]
cmp	esi, ebp
jz	short loc_100260DD 
			
			
cmp	[esi+4], ebp
jz	short loc_100260DD 
			
			
mov	ecx, [esi+8]
push	ecx
call	PORT_Alloc_Util
add	esp, 4
mov	[ebx+4], eax
cmp	eax, ebp
jz	short loc_100260DD 
			
			
mov	edx, [esi+8]
mov	ecx, [esi+4]
push	edx		
push	ecx		
push	eax		
call	memcpy
mov	edx, [esi+8]
mov	[ebx+8], edx
add	esp, 0Ch
			
pop	edi		
			
			
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
push	4
call	PORT_Alloc_Util
add	esp, 4
cmp	eax, ebp
jz	short loc_100260DD 
			
			
mov	ecx, [esp+10h+arg_8]
cmp	ecx, ebp
jz	short loc_10026113
add	ecx, ecx
pop	edi
add	ecx, ecx
add	ecx, ecx
mov	[eax], ecx
pop	esi
mov	[ebx+4], eax
pop	ebp
mov	dword ptr [ebx+8], 4
mov	eax, ebx
pop	ebx
retn
pop	edi
mov	ecx, 80h
mov	[eax], ecx
pop	esi
mov	[ebx+4], eax
pop	ebp
mov	dword ptr [ebx+8], 4
mov	eax, ebx
pop	ebx
retn
lea	eax, [esi-102h]	
cmp	eax, 43h
ja	loc_1002609C	
movzx	eax, ds:byte_1002636C[eax]
jmp	ds:off_1002635C[eax*4] 
			
push	0Ch		
call	PORT_Alloc_Util
add	esp, 4
cmp	eax, ebp
jz	short loc_100260DD 
			
			
mov	ecx, [esp+10h+arg_8]
cmp	ecx, ebp
jz	short loc_10026166
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
jmp	short loc_1002616B
mov	ecx, 80h
mov	[eax], ecx
mov	ecx, [esp+10h+arg_4]
cmp	ecx, ebp
jz	short loc_10026187
mov	ecx, [ecx+4]
cmp	ecx, ebp
jz	short loc_10026187
mov	edx, [ecx]
mov	[eax+4], edx
mov	ecx, [ecx+4]
mov	[eax+8], ecx
			
pop	edi
pop	esi
mov	[ebx+4], eax
pop	ebp
mov	dword ptr [ebx+8], 0Ch
mov	eax, ebx
pop	ebx
retn
cmp	esi, 551h
ja	loc_1002629E
jz	loc_100260DD	
			
			
lea	eax, [esi-302h]	
cmp	eax, 43h
ja	loc_1002609C	
movzx	edx, ds:byte_100263C4[eax]
jmp	ds:off_100263B0[edx*4] 
			
mov	edi, [esp+10h+arg_4] 
cmp	edi, ebp
jz	short loc_100261D4
mov	eax, [edi+8]
jmp	short loc_100261D6
xor	eax, eax
add	eax, 10h
push	eax
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jz	loc_100260DD	
			
			
cmp	edi, ebp
jz	short loc_10026233
cmp	[edi+4], ebp
jz	short loc_10026233
cmp	[edi+8], ebp
jz	short loc_10026233
lea	eax, [esi+10h]
mov	[esi+8], eax
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	edx		
push	eax		
call	memcpy
mov	eax, [edi+8]
mov	[esi+0Ch], eax
mov	ecx, [edi+8]
add	esp, 0Ch
mov	eax, 10h
mov	[esi+4], eax
shr	ecx, 1
mov	[esi], ecx
pop	edi
mov	[ebx+4], esi
pop	esi
mov	[ebx+8], eax
pop	ebp
mov	eax, ebx
pop	ebx
retn
			
mov	eax, 10h
mov	[esi+8], ebp
mov	[esi+0Ch], ebp
mov	[esi+4], eax
mov	dword ptr [esi], 4
pop	edi
mov	[ebx+4], esi
pop	esi
mov	[ebx+8], eax
pop	ebp
mov	eax, ebx
pop	ebx
retn
			
push	8		
call	PORT_Alloc_Util
add	esp, 4
cmp	eax, ebp
jz	loc_100260DD	
			
			
mov	ecx, [esp+10h+arg_4]
cmp	ecx, ebp
jz	short loc_10026280
cmp	[ecx+4], ebp
jz	short loc_10026280
mov	ecx, [ecx+8]
cmp	ecx, ebp
jz	short loc_10026280
shr	ecx, 1
mov	[eax], ecx
jmp	short loc_10026286
			
mov	dword ptr [eax], 4
pop	edi
mov	dword ptr [eax+4], 10h
pop	esi
mov	[ebx+4], eax
pop	ebp
mov	dword ptr [ebx+8], 8
mov	eax, ebx
pop	ebx
retn
cmp	esi, 1035h
ja	loc_1002633D
cmp	esi, 1031h
jnb	short loc_100262D2 
			
			
cmp	esi, 651h
ja	short loc_1002631C
jz	loc_100260DD	
			
			
mov	eax, esi
sub	eax, 552h
jz	short loc_100262D2 
			
			
sub	eax, 3
jnz	loc_1002609C	
			
mov	esi, [esp+10h+arg_4] 
			
			
cmp	esi, ebp
jz	loc_100260DD	
			
			
cmp	[esi+4], ebp
jz	loc_100260DD	
			
			
mov	eax, [esi+8]
push	eax
call	PORT_Alloc_Util
add	esp, 4
mov	[ebx+4], eax
cmp	eax, ebp
jz	loc_100260DD	
			
			
mov	ecx, [esi+8]
mov	edx, [esi+4]
push	ecx		
push	edx		
push	eax		
call	memcpy
mov	eax, [esi+8]
add	esp, 0Ch
pop	edi
pop	esi
mov	[ebx+8], eax
pop	ebp
mov	eax, ebx
pop	ebx
retn
cmp	esi, 652h
jz	short loc_100262D2 
			
			
cmp	esi, 1000h
jbe	loc_1002609C	
cmp	esi, 1007h
jbe	short loc_100262D2 
			
			
jmp	loc_1002609C	
lea	eax, [esi-1061h] 
cmp	eax, 24h
ja	loc_1002609C	
movzx	edx, ds:byte_10026414[eax]
jmp	ds:off_10026408[edx*4] 
align 4
			
dd offset loc_1002609C	
db	3,     3,     3,     3 
db	3,     3,     3,     3
db	3,     3,     3,     1
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     1
db	2,     3,     3,     2
db	3,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     3
db	1,     2,     3,     3
db	2,     3,     3,     3
db	3,     3,     3,     3
db	3,     3,     3,     1
db	2,     3,     3,     2
			
dd offset loc_100261C7,	offset loc_1002609C 
db	4,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     2
db	3,     4,     4,     3
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
dd offset loc_100260DD	
dd offset loc_1002609C
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	1,     0,     2,     2
db	0
align 10h
public PK11_ParamFromIV
			
mov	eax, [esp+arg_4]
mov	ecx, [esp+arg_0]
push	0
push	eax
push	ecx
call	sub_10026050
add	esp, 0Ch
retn
align 10h
public PK11_IVFromParam
			
mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_8]
mov	dword ptr [ecx], 0
cmp	eax, 301h
ja	short loc_100264C5
jz	short loc_10026499 
cmp	eax, 111h
ja	short loc_100264B4
jz	short loc_10026499 
cmp	eax, 102h
ja	short loc_1002649C
jz	short loc_100264A3
test	eax, eax
jz	short loc_1002650B 
cmp	eax, 3
jbe	short loc_10026499 
cmp	eax, 101h
jnz	short loc_1002650B 
			
xor	eax, eax	
retn
cmp	eax, 105h
jnz	short loc_1002650B 
mov	eax, [esp+arg_4]
mov	eax, [eax+4]
mov	dword ptr [ecx], 8
add	eax, 4
retn
sub	eax, 121h
jz	short loc_10026499 
sub	eax, 11h
jz	short loc_10026499 
sub	eax, 0Fh
jmp	short loc_10026509
cmp	eax, 341h
ja	short loc_100264F6
jz	short loc_10026499 
add	eax, 0FFFFFCEFh	
cmp	eax, 24h
ja	short loc_1002650B 
movzx	edx, ds:byte_1002652C[eax]
jmp	ds:off_10026520[edx*4] 
			
mov	eax, [esp+arg_4] 
mov	eax, [eax+4]
mov	edx, [eax+0Ch]
mov	[ecx], edx
mov	eax, [eax+8]
retn
cmp	eax, 551h
jz	short loc_10026499 
cmp	eax, 651h
jz	short loc_10026499 
cmp	eax, 1081h
jz	short loc_10026499 
			
mov	eax, [esp+arg_4] 
cmp	dword ptr [eax+4], 0
jz	short loc_1002651A
mov	edx, [eax+8]
mov	[ecx], edx
mov	eax, [eax+4]
retn
align 10h
dd offset loc_100264E6	
dd offset loc_1002650B
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     2
db	0,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     1,     2,     2
db	1
align 10h
			
push	eax
call	DER_GetInteger_Util
add	esp, 4
sub	eax, 3Ah
jz	short loc_1002657E
sub	eax, 3Eh
jz	short loc_1002657B
sub	eax, 28h
jnz	short loc_1002657E
mov	al, 28h
retn
mov	al, 40h
retn
			
mov	al, 80h
retn
align 10h
			
push	edi
push	eax
call	PK11_GetIVLength
xor	edi, edi
add	esp, 4
mov	[esi+8], eax
cmp	eax, edi
jnz	short loc_100265AA
mov	[esi+4], edi
xor	eax, eax
pop	edi
retn
push	eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esi+4], eax
cmp	eax, edi
jz	short loc_100265DA
mov	ecx, [esi+8]
push	ecx
push	eax
call	PK11_GenerateRandom
add	esp, 8
test	eax, eax
jz	short loc_100265A6
mov	edx, [esi+4]
push	edx
call	PORT_Free_Util
add	esp, 4
mov	[esi+4], edi
mov	[esi+8], edi
or	eax, 0FFFFFFFFh
pop	edi
retn
align 10h
			
sub	esp, 0Ch
push	ebx
push	ebp
push	0Ch
call	PORT_Alloc_Util
mov	ebx, eax
xor	ebp, ebp
add	esp, 4
cmp	ebx, ebp
jnz	short loc_1002660F
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
push	esi
push	edi
mov	edi, [esp+1Ch+arg_0]
mov	[ebx], ebp
cmp	edi, 301h
ja	loc_10026705
jz	loc_10026805	
			
			
lea	eax, [edi-101h]	
cmp	eax, 44h
ja	loc_1002679D	
movzx	eax, ds:byte_1002684C[eax]
jmp	ds:off_10026838[eax*4] 
			
push	4		
call	PORT_Alloc_Util
add	esp, 4
cmp	eax, ebp
jz	short loc_100266A9
mov	ecx, [esp+1Ch+arg_4]
cmp	ecx, ebp
jz	short loc_10026664
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
jmp	short loc_10026669
mov	ecx, 80h
pop	edi
mov	[eax], ecx
pop	esi
mov	[ebx+4], eax
pop	ebp
mov	dword ptr [ebx+8], 4
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
			
lea	esi, [esp+1Ch+var_C] 
mov	eax, edi
call	sub_10026590
cmp	eax, ebp
jnz	short loc_100266A9
push	0Ch
call	PORT_Alloc_Util
add	esp, 4
cmp	eax, ebp
jnz	short loc_100266BE
mov	ecx, [esp+1Ch+Src]
push	ecx
call	PORT_Free_Util
add	esp, 4
			
push	1
push	ebx
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
mov	ecx, [esp+1Ch+arg_4]
cmp	ecx, ebp
jz	short loc_100266CE
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
jmp	short loc_100266D3
mov	ecx, 80h
mov	[eax], ecx
mov	ecx, [esp+1Ch+Src]
cmp	ecx, ebp
jz	short loc_100266E8
mov	edx, [ecx]
mov	[eax+4], edx
mov	edx, [ecx+4]
mov	[eax+8], edx
push	ecx
mov	[ebx+4], eax
mov	dword ptr [ebx+8], 0Ch
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
cmp	edi, 551h
ja	short loc_10026773
jz	loc_10026805	
			
			
lea	eax, [edi-302h]	
cmp	eax, 43h
ja	short loc_1002679D 
movzx	eax, ds:byte_100268A8[eax]
jmp	ds:off_10026894[eax*4] 
			
push	ebx		
call	PORT_Free_Util
push	ebp
push	ebp
push	edi
call	sub_10026050
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
			
lea	esi, [esp+1Ch+var_C] 
mov	eax, edi
call	sub_10026590
cmp	eax, ebp
jnz	loc_100266A9
push	ebx
call	PORT_Free_Util
push	ebp
mov	ecx, esi
push	ecx
push	edi
call	sub_10026050
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
cmp	edi, 1035h
ja	short loc_100267EC
cmp	edi, 1031h
jnb	short loc_100267A9 
			
			
cmp	edi, 652h
ja	short loc_100267DA
jz	short loc_100267A9 
			
			
cmp	edi, 552h
jz	short loc_100267A9 
			
			
cmp	edi, 651h
jz	short loc_10026805 
			
			
			
mov	esi, edi	
call	sub_10024DE0
cmp	[eax+14h], ebp
jz	short loc_10026805 
			
			
			
lea	esi, [esp+1Ch+var_C] 
			
			
mov	eax, edi
call	sub_10026590
cmp	eax, ebp
jnz	loc_100266A9
mov	esi, [esp+1Ch+Size]
push	esi
call	PORT_Alloc_Util
add	esp, 4
mov	[ebx+4], eax
cmp	eax, ebp
jnz	short loc_10026815
mov	eax, [esp+1Ch+Src]
push	eax
jmp	loc_100266A1
cmp	edi, 1001h
jb	short loc_1002679D 
cmp	edi, 1007h
jbe	short loc_100267A9 
			
			
jmp	short loc_1002679D 
lea	eax, [edi-1061h] 
cmp	eax, 21h
ja	short loc_1002679D 
movzx	edx, ds:byte_100268F8[eax]
jmp	ds:off_100268EC[edx*4] 
			
pop	edi		
			
			
pop	esi
mov	[ebx+4], ebp
mov	[ebx+8], ebp
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
mov	edi, [esp+1Ch+Src]
push	esi		
push	edi		
push	eax		
call	memcpy
push	edi
mov	[ebx+8], esi
call	PORT_Free_Util
add	esp, 10h
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
align 4
			
dd offset loc_100267A9,	offset loc_1002679D 
db	1,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     2,     3,     4
db	4,     3,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3
align 4
			
dd offset loc_10026745,	offset loc_1002679D 
db	4,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     2
db	3,     4,     4,     3
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     1
db	0,     4,     4,     0
dd offset loc_10026805	
dd offset loc_1002679D
db	2,     2,     2,     2 
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	2,     2,     2,     2
db	1,     0
align 10h
public PK11_GenerateNewParam
			
			
mov	eax, [esp+arg_4]
test	eax, eax
jz	short loc_1002693A
push	eax
call	PK11_GetKeyLength
add	esp, 4
mov	[esp+arg_4], eax
jmp	sub_100265F0
xor	eax, eax
mov	[esp+arg_4], eax
jmp	sub_100265F0
align 10h
public PK11_AlgtagToMechanism
			
mov	eax, [esp+arg_0]
push	eax
call	SECOID_FindOIDByTag_Util
add	esp, 4
test	eax, eax
jz	short loc_10026965
mov	eax, [eax+14h]
retn
or	eax, 0FFFFFFFFh
retn
align 10h
public PK11_MechanismToAlgtag
mov	eax, [esp+arg_0]
push	eax
call	SECOID_FindOIDByMechanism
add	esp, 4
test	eax, eax
jz	short loc_10026985
mov	eax, [eax+0Ch]
retn
xor	eax, eax
retn
align 10h
public PK11_GetPadMechanism
			
			
mov	eax, [esp+arg_0]
cmp	eax, 322h
ja	short loc_100269F3
jz	short loc_100269ED
cmp	eax, 142h
ja	short loc_100269D2
jz	short loc_100269CC
mov	ecx, eax
sub	ecx, 102h
jz	short loc_100269C6
sub	ecx, 20h
jz	short loc_100269C0
sub	ecx, 11h
jnz	short locret_10026A36
mov	eax, 136h
retn
mov	eax, 125h
retn
mov	eax, 105h
retn
mov	eax, 145h
retn
mov	ecx, eax
sub	ecx, 302h
jz	short loc_100269E7
sub	ecx, 10h
jnz	short locret_10026A36
mov	eax, 315h
retn
mov	eax, 305h
retn
mov	eax, 325h
retn
cmp	eax, 552h
ja	short loc_10026A1D
jz	short loc_10026A17
mov	ecx, eax
sub	ecx, 332h
jz	short loc_10026A11
sub	ecx, 10h
jnz	short locret_10026A36
mov	eax, 345h
retn
mov	eax, 335h
retn
mov	eax, 555h
retn
cmp	eax, 652h
jz	short loc_10026A31
cmp	eax, 1082h
jnz	short locret_10026A36
mov	eax, 1085h
retn
mov	eax, 655h
			
retn
align 10h
public PK11_MapPBEMechanismToCryptoMechanism
sub	esp, 0Ch
push	esi
mov	esi, [esp+10h+arg_0]
push	edi
test	esi, esi
jz	loc_10026C19
mov	edi, [esp+14h+arg_4]
test	edi, edi
jz	loc_10026C19
mov	eax, [esi]
cmp	eax, 0FFFFFFFFh
jz	loc_10026C0E
cmp	eax, 3B0h
jz	loc_10026C0E
push	ebx
mov	ebx, [esi+4]
push	ebp
push	eax
mov	[esp+20h+arg_0], ebx
call	PK11_GetIVLength
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_10026AFC
mov	ecx, [ebx]
lea	ecx, [ecx+0]
mov	dl, [ecx]
dec	eax
inc	ecx
test	dl, dl
jnz	short loc_10026AFC
test	eax, eax
jnz	short loc_10026A90
call	PK11_GetInternalSlot
mov	edi, eax
test	edi, edi
jz	short loc_10026ADE
mov	eax, [esi+4]
mov	ecx, [esi+8]
mov	edx, [esp+1Ch+arg_C]
push	0
push	edx
mov	edx, [esi]
mov	[esp+24h+var_8], eax
mov	eax, [esp+24h+arg_8]
push	eax
mov	[esp+28h+var_4], ecx
lea	ecx, [esp+28h+var_C]
push	ecx
push	edx
push	edi
call	PK11_RawPBEKeyGen
push	edi
mov	ebx, eax
call	PK11_FreeSlot
add	esp, 1Ch
test	ebx, ebx
jnz	short loc_10026AEB
pop	ebp
pop	ebx
pop	edi
mov	eax, 30h
pop	esi
add	esp, 0Ch
retn
push	ebx
call	PK11_FreeSymKey
mov	edi, [esp+20h+arg_4]
mov	ebx, [esp+20h+arg_0]
add	esp, 4
			
mov	eax, [esi]
cmp	eax, 80000003h
ja	loc_10026B8E
jz	short loc_10026B4F 
cmp	eax, 3A7h
ja	short loc_10026B38
cmp	eax, 3A6h
jnb	loc_10026B9F	
cmp	eax, 3A0h
jb	short loc_10026B2B 
cmp	eax, 3A1h
jbe	short loc_10026B86
			
pop	ebp		
pop	ebx
pop	edi
mov	eax, 70h
pop	esi
add	esp, 0Ch
retn
cmp	eax, 3ABh
ja	short loc_10026B7F
jz	short loc_10026BB5 
cmp	eax, 3A8h
jb	short loc_10026B2B 
cmp	eax, 3A9h
ja	short loc_10026B2B 
			
			
mov	dword ptr [edi], 133h 
push	ebp
call	PORT_Alloc_Util
add	esp, 4
mov	[edi+4], eax
mov	[edi+8], ebp
test	eax, eax
jz	short loc_10026BE1
mov	ecx, [ebx]
push	ebp		
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
pop	ebp
pop	ebx
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
cmp	eax, 80000002h
jnz	short loc_10026B2B 
mov	dword ptr [edi], 122h
jmp	short loc_10026B55
add	eax, 7FFFFFFCh	
cmp	eax, 4
ja	short loc_10026B2B 
jmp	ds:off_10026C24[eax*4] 
			
			
pop	ebp		
xor	eax, eax
pop	ebx
mov	dword ptr [edi], 111h
mov	[edi+8], eax
mov	[edi+4], eax
pop	edi
pop	esi
add	esp, 0Ch
retn
			
			
mov	ebx, 28h	
jmp	short loc_10026BC1
			
mov	ebx, 80h	
push	0Ch
mov	dword ptr [edi], 102h
mov	dword ptr [edi+8], 0Ch
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
mov	[edi+4], esi
test	esi, esi
jnz	short loc_10026BEE
pop	ebp
pop	ebx
pop	edi
mov	eax, 2
pop	esi
add	esp, 0Ch
retn
mov	edx, [esp+1Ch+arg_0]
mov	eax, [edx]
push	ebp		
push	eax		
lea	ecx, [esi+4]
push	ecx		
call	memcpy
add	esp, 0Ch
pop	ebp
mov	[esi], ebx
pop	ebx
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
			
pop	edi
mov	eax, 70h
pop	esi
add	esp, 0Ch
retn
			
pop	edi
mov	eax, 2
pop	esi
add	esp, 0Ch
retn
dd offset loc_10026BBC	
dd offset loc_10026B9F
dd offset loc_10026B9F
dd offset loc_10026B4F
align 10h
public PK11_MapSignKeyType
			
mov	eax, [esp+arg_0]
dec	eax
cmp	eax, 5		
ja	short loc_10026C63 
jmp	ds:off_10026C68[eax*4] 
			
mov	eax, 1		
retn
			
mov	eax, 11h	
retn
			
mov	eax, 1041h	
retn
			
			
or	eax, 0FFFFFFFFh	
retn
align 4
dd offset loc_10026C57	
dd offset loc_10026C57
dd offset loc_10026C63
dd offset loc_10026C63
dd offset loc_10026C5D
			
mov	eax, [esp+arg_0]
dec	eax
jz	short loc_10026C8B
or	eax, 0FFFFFFFFh
retn
mov	eax, 1
retn
align 10h
public PK11_FortezzaMapSig
mov	eax, [esp+arg_0]
cmp	eax, 36h
jl	short locret_10026CB8
cmp	eax, 39h
jle	short loc_10026CB3
cmp	eax, 7Eh
jnz	short locret_10026CB8
mov	eax, 7Ch
			
retn
align 10h
public PK11_GetKeyGen
mov	eax, [esp+arg_0]
push	0
push	eax
call	sub_10025510
add	esp, 8
retn
public PK11_ParamFromAlgid
			
sub	esp, 58h
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+60h+arg_0]
push	esi
push	edi
push	ebp
mov	[esp+6Ch+var_54], ebx
mov	[esp+6Ch+var_50], ebx
mov	[esp+6Ch+var_4C], ebx
mov	[esp+6Ch+var_48], ebx
mov	[esp+6Ch+var_44], ebx
mov	[esp+6Ch+var_40], ebx
mov	[esp+6Ch+var_3C], ebx
mov	[esp+6Ch+var_38], ebx
mov	[esp+6Ch+var_34], ebx
mov	[esp+6Ch+var_30], ebx
mov	[esp+6Ch+var_2C], ebx
mov	[esp+6Ch+var_28], ebx
mov	[esp+6Ch+var_24], ebx
mov	[esp+6Ch+var_20], ebx
mov	[esp+6Ch+var_1C], ebx
mov	[esp+6Ch+var_18], ebx
mov	[esp+6Ch+var_14], ebx
mov	[esp+6Ch+var_10], ebx
mov	[esp+6Ch+var_C], ebx
mov	[esp+6Ch+Src], ebx
mov	[esp+6Ch+Size],	ebx
call	SECOID_GetAlgorithmTag_Util
push	eax
call	SECOID_FindOIDByTag_Util
add	esp, 8
cmp	eax, ebx
jz	short loc_10026D49
mov	esi, [eax+14h]
jmp	short loc_10026D4C
or	esi, 0FFFFFFFFh
push	0Ch
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jz	loc_10026E85
push	400h
mov	[edi], ebx
mov	[edi+4], ebx
mov	[edi+8], ebx
call	PORT_NewArena_Util
mov	ecx, eax
add	esp, 4
mov	[esp+68h+var_58], ecx
cmp	ecx, ebx
jz	loc_10026E7A
cmp	esi, 301h
ja	loc_10026EBA
jz	loc_100270C2	
			
lea	eax, [esi-101h]	
cmp	eax, 44h
ja	loc_10027053	
movzx	eax, ds:byte_10027160[eax]
jmp	ds:off_1002714C[eax*4] 
			
add	ebp, 0Ch	
push	ebp
push	offset dword_100A5EE8
lea	edx, [esp+70h+var_48]
push	edx
push	ecx
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10026E6C
push	4
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	loc_10026E6C
lea	eax, [esp+68h+var_48]
call	sub_10026560
movzx	eax, al
mov	[esi], eax
mov	eax, [esp+68h+var_58]
push	ebx
push	eax
mov	[edi+4], esi
mov	dword ptr [edi+8], 4
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 58h
retn
			
add	ebp, 0Ch	
push	ebp
push	offset dword_100A5EA8
lea	edx, [esp+70h+var_48]
push	edx
push	ecx
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	short loc_10026E6C
push	0Ch
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	short loc_10026E6C
lea	eax, [esp+68h+var_48]
mov	[edi+4], esi
mov	dword ptr [edi+8], 0Ch
call	sub_10026560
movzx	eax, al
mov	[esi], eax
cmp	[esp+68h+var_34], 8
jz	short loc_10026E8F
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
			
mov	ecx, [esp+68h+var_58]
push	ebx
push	ecx
call	PORT_FreeArena_Util
add	esp, 8
push	1
push	edi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 58h
retn
mov	ecx, [esp+68h+var_38]
mov	edx, [ecx]
mov	[esi+4], edx
mov	eax, [esp+68h+var_38]
mov	ecx, [eax+4]
mov	eax, [esp+68h+var_58]
push	ebx
push	eax
mov	[esi+8], ecx
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 58h
retn
cmp	esi, 551h
ja	loc_10027002
jz	loc_100270C2	
			
lea	eax, [esi-302h]	
cmp	eax, 0AEh
ja	loc_10027053	
movzx	edx, ds:byte_100271C0[eax]
jmp	ds:off_100271A8[edx*4] 
			
add	ebp, 0Ch	
push	ebp
push	offset dword_100A5DF8
lea	eax, [esp+70h+var_30]
push	eax
push	ecx
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10026E6C
push	8
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	loc_10026E6C
lea	ecx, [esp+68h+var_24]
push	ecx
call	DER_GetInteger_Util
lea	edx, [esp+6Ch+var_18]
push	edx
mov	[esi+4], eax
call	DER_GetInteger_Util
cdq
and	edx, 7
add	eax, edx
sar	eax, 3
mov	[esi], eax
mov	eax, [esp+70h+var_58]
add	esp, 8
push	ebx
push	eax
mov	[edi+4], esi
mov	dword ptr [edi+8], 8
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 58h
retn
			
add	ebp, 0Ch	
push	ebp
push	offset dword_100A5E48
lea	eax, [esp+70h+var_30]
push	eax
push	ecx
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10026E6C
mov	ecx, [esp+68h+Size]
add	ecx, 10h
push	ecx
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	loc_10026E6C
lea	edx, [esp+68h+var_24]
push	edx
mov	[edi+4], esi
mov	dword ptr [edi+8], 10h
call	DER_GetInteger_Util
mov	[esi+4], eax
lea	eax, [esp+6Ch+var_18]
push	eax
call	DER_GetInteger_Util
cdq
and	edx, 7
add	eax, edx
sar	eax, 3
mov	[esi], eax
lea	eax, [esi+10h]
mov	[esi+8], eax
mov	ecx, [esp+70h+Size]
mov	[esi+0Ch], ecx
mov	edx, [esp+70h+Size]
mov	ecx, [esp+70h+Src]
push	edx		
push	ecx		
push	eax		
call	memcpy
mov	eax, [esp+7Ch+var_58]
add	esp, 14h
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 58h
retn
cmp	esi, 1035h
ja	loc_100270DA
cmp	esi, 1031h
jnb	short loc_1002705D 
			
cmp	esi, 652h
ja	short loc_1002703B
jz	short loc_1002705D 
			
mov	eax, esi
sub	eax, 552h
jz	short loc_1002705D 
			
sub	eax, 3
jz	short loc_1002705D 
			
sub	eax, 0FCh
jz	loc_100270C2	
			
jmp	short loc_10027053 
cmp	esi, 655h
jz	short loc_1002705D 
			
cmp	esi, 1000h
jbe	short loc_10027053 
cmp	esi, 1007h
jbe	short loc_1002705D 
			
			
call	sub_10024DE0	
cmp	[eax+14h], ebx
jz	short loc_100270C2 
			
			
add	ebp, 0Ch	
			
push	ebp
push	ebx
push	ebx
call	NSS_Get_SEC_OctetStringTemplate_Util
add	esp, 8
push	eax
mov	eax, [esp+70h+var_58]
lea	edx, [esp+70h+var_54]
push	edx
push	eax
call	SEC_ASN1DecodeItem_Util
add	esp, 10h
test	eax, eax
jnz	loc_10026E6C
cmp	[esp+68h+var_50], ebx
jz	loc_10026E6C
mov	ecx, [esp+68h+var_4C]
push	ecx
call	PORT_Alloc_Util
add	esp, 4
mov	[edi+4], eax
cmp	eax, ebx
jz	loc_10026E6C
mov	edx, [esp+68h+var_4C]
mov	ecx, [esp+68h+var_50]
push	edx		
push	ecx		
push	eax		
call	memcpy
mov	edx, [esp+74h+var_4C]
add	esp, 0Ch
mov	[edi+8], edx
			
mov	eax, [esp+68h+var_58] 
			
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 58h
retn
cmp	esi, 1081h
ja	short loc_100270FB
jz	short loc_100270C2 
			
cmp	esi, 1061h
jb	loc_10027053	
cmp	esi, 1064h
jmp	loc_10027051
cmp	esi, 1085h
ja	short loc_1002711A
jz	loc_1002705D	
			
cmp	esi, 1082h
jz	loc_1002705D	
			
jmp	loc_10027053	
cmp	esi, 80000002h
jb	loc_10027053	
cmp	esi, 80000008h
ja	loc_10027053	
			
push	edi		
push	ebp
call	sub_1002EB70
add	esp, 8
test	eax, eax
jnz	loc_10026E6C
jmp	loc_100270C2	
align 4
			
dd offset loc_1002705D,	offset loc_10027053 
db	1,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     2,     3,     4
db	4,     3,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3
align 4
			
dd offset loc_10026F65,	offset loc_10027132, offset loc_10027053 
db	5,     5,     5,     5 
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     2
db	3,     5,     5,     3
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     4,     4
db	5,     5,     5,     5
db	4,     4,     4,     4
db	4,     4,     5,     5
db	5,     5,     4
align 10h
public PK11_ParamToAlgid
			
			
sub	esp, 48h
push	ebx
mov	ebx, [esp+4Ch+arg_0]
push	esi
push	edi
push	ebx
call	SECOID_FindOIDByTag_Util
add	esp, 4
test	eax, eax
jz	short loc_100272B4
mov	eax, [eax+14h]
cmp	eax, 301h
ja	loc_100273B3
jz	loc_1002753C	
			
lea	ecx, [eax-101h]	
cmp	ecx, 44h
ja	short loc_100272B7 
movzx	ecx, ds:byte_10027598[ecx]
jmp	ds:off_10027584[ecx*4] 
or	eax, 0FFFFFFFFh
			
mov	esi, dword_100BACE4 
xor	ecx, ecx
test	esi, esi
jle	short loc_100272E0
mov	edi, dword_100BACDC
lea	edx, [edi+8]
lea	esp, [esp+0]
cmp	[edx], eax
jz	loc_10027578
inc	ecx
add	edx, 18h
cmp	ecx, esi
jl	short loc_100272D0
mov	eax, offset dword_100BA4F4
cmp	dword ptr [eax+14h], 0
jz	loc_1002753C	
			
			
push	0		
			
push	0
call	NSS_Get_SEC_OctetStringTemplate_Util
push	eax
mov	eax, [esp+60h+arg_4]
push	eax
push	0
push	0
call	SEC_ASN1EncodeItem_Util
mov	esi, eax
add	esp, 18h
test	esi, esi
jnz	short loc_1002738C
			
pop	edi		
			
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 48h
retn
			
mov	edx, [esp+54h+arg_4] 
mov	esi, [edx+4]
mov	eax, [esi]
sub	eax, 28h
jz	short loc_1002733E
sub	eax, 18h
jz	short loc_10027337
sub	eax, 40h
mov	eax, 3Ah
jmp	short loc_10027343
mov	eax, 78h
jmp	short loc_10027343
mov	eax, 0A0h
			
push	eax
lea	eax, [esp+58h+var_48]
push	eax
push	0
call	SEC_ASN1EncodeUnsignedInteger_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_10027310 
			
push	offset dword_100A5EA8
lea	ecx, [esp+58h+var_48]
push	ecx
push	0
add	esi, 4
push	0
mov	[esp+64h+var_38], esi
mov	[esp+64h+var_34], 8
call	SEC_ASN1EncodeItem_Util
mov	edx, [esp+64h+var_44]
push	edx
mov	esi, eax
call	PORT_Free_Util
add	esp, 14h
test	esi, esi
jz	short loc_10027310 
			
			
mov	ecx, [esp+54h+arg_C]
mov	edx, [esp+54h+arg_8]
push	esi
push	ebx
push	ecx
push	edx
call	SECOID_SetAlgorithmID_Util
push	1
push	esi
mov	edi, eax
call	SECITEM_FreeItem_Util
add	esp, 18h
mov	eax, edi
pop	edi
pop	esi
pop	ebx
add	esp, 48h
retn
cmp	eax, 551h
ja	loc_100274BD
jz	loc_1002753C	
			
lea	ecx, [eax-302h]	
cmp	ecx, 0A9h
ja	loc_100272B7	
movzx	ecx, ds:byte_100275F8[ecx]
jmp	ds:off_100275E0[ecx*4] 
			
mov	edx, [esp+54h+arg_4] 
mov	esi, [edx+4]
push	10h
lea	eax, [esp+58h+var_30]
push	eax
push	0
call	SEC_ASN1EncodeUnsignedInteger_Util
add	esp, 0Ch
test	eax, eax
jz	loc_10027310	
			
mov	ecx, [esi]
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
push	ecx
lea	edx, [esp+58h+var_18]
push	edx
push	0
call	SEC_ASN1EncodeUnsignedInteger_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10027437
mov	eax, [esp+54h+var_2C]
push	eax
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 48h
retn
mov	ecx, [esi]
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
push	ecx
lea	edx, [esp+58h+var_24]
push	edx
push	0
call	SEC_ASN1EncodeUnsignedInteger_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_10027474
mov	eax, [esp+54h+var_14]
push	eax
call	PORT_Free_Util
mov	ecx, [esp+58h+var_2C]
push	ecx
call	PORT_Free_Util
add	esp, 8
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 48h
retn
mov	edx, [esi+8]
push	offset dword_100A5E48
lea	ecx, [esp+58h+var_30]
push	ecx
mov	[esp+5Ch+var_8], edx
mov	eax, [esi+0Ch]
push	0
push	0
mov	[esp+64h+var_4], eax
call	SEC_ASN1EncodeItem_Util
mov	edx, [esp+64h+var_2C]
push	edx
mov	esi, eax
call	PORT_Free_Util
mov	eax, [esp+68h+var_14]
push	eax
call	PORT_Free_Util
mov	ecx, [esp+6Ch+var_20]
push	ecx
call	PORT_Free_Util
add	esp, 1Ch
jmp	loc_10027388
cmp	eax, 1035h
ja	short loc_1002750E
cmp	eax, 1031h
jnb	loc_100272EF	
			
cmp	eax, 652h
ja	short loc_100274F3
jz	loc_100272EF	
			
cmp	eax, 552h
jz	loc_100272EF	
			
cmp	eax, 651h
jz	short loc_1002753C 
			
jmp	loc_100272B7	
cmp	eax, 1001h
jb	loc_100272B7	
cmp	eax, 1007h
jbe	loc_100272EF	
			
jmp	loc_100272B7	
cmp	eax, 1082h
ja	short loc_10027543
jz	loc_100272EF	
			
cmp	eax, 1061h
jb	loc_100272B7	
cmp	eax, 1064h
jbe	loc_100272EF	
			
cmp	eax, 1081h
jnz	loc_100272B7	
			
xor	esi, esi	
			
jmp	loc_1002738C
cmp	eax, 80000002h
jb	loc_100272B7	
cmp	eax, 80000008h
ja	loc_100272B7	
			
mov	edx, [esp+54h+arg_C] 
mov	eax, [esp+54h+arg_8]
mov	ecx, [esp+54h+arg_4]
push	edx
push	eax
push	ecx
push	ebx
call	sub_1002ED60
add	esp, 10h
pop	edi
pop	esi
pop	ebx
add	esp, 48h
retn
lea	edx, [ecx+ecx*2]
lea	eax, [edi+edx*8]
jmp	loc_100272E5
align 4
			
dd offset loc_100272EF,	offset loc_100272B7 
db	1,     4,     4,     4 
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3,     4,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	4,     2,     3,     4
db	4,     3,     4,     4
db	4,     4,     4,     4
db	4,     4,     4,     4
db	2,     3,     4,     4
db	3
align 10h
			
dd offset loc_100273E4,	offset loc_10027559, offset loc_100272B7 
db	5,     5,     5,     5 
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     2
db	3,     5,     5,     3
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     1
db	0,     5,     5,     0
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     5,     5
db	5,     5,     4,     4
db	5,     5,     5,     5
db	4,     4,     4,     4
db	4,     4
align 10h
			
push	esi
push	edi
call	sub_10035690
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_100276D2
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_4]
mov	eax, [edi]
push	ebx
push	ecx
mov	ecx, [esp+0Ch+arg_0]
push	edx
mov	edx, [eax+66h]
push	ecx
push	esi
call	edx
push	esi
push	edi
mov	ebx, eax
call	sub_10035750
add	esp, 18h
test	ebx, ebx
jz	short loc_1002770F
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
pop	ebx
xor	eax, eax
pop	esi
retn
align 10h
			
mov	edx, [esp+arg_0]
push	edi
mov	edi, [esp+4+arg_4]
push	esi
push	ebx
push	eax
push	ecx
push	edx
call	sub_1002A310
add	esp, 14h
test	eax, eax
jnz	short loc_10027763
mov	eax, [esp+4+arg_8]
test	eax, eax
jnz	short loc_10027758
lea	eax, [esp+4+arg_8]
push	eax
push	1
push	esi
push	ebx
push	0
push	edi
call	sub_1002A750
add	esp, 18h
pop	edi
retn
push	esi
push	ebx
push	eax
call	sub_100276B0
add	esp, 0Ch
pop	edi
retn
align 10h
			
mov	ecx, [esp+arg_8]
mov	edx, [esp+arg_0]
push	ebx
push	esi
push	eax
push	ecx
push	edx
mov	dword ptr [edi], 0
call	sub_1002A310
add	esp, 14h
test	eax, eax
jz	short loc_10027792
push	eax
jmp	short loc_1002779A
cmp	dword ptr [esi+8], 0FFFFFFFFh
jnz	short loc_100277AC
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
retn
mov	eax, [esp+arg_4]
push	ebx
push	esi
push	eax
call	sub_1002C4F0
mov	[edi], eax
add	esp, 0Ch
xor	eax, eax
retn
			
push	ebx
mov	ebx, [esp+4+arg_10]
mov	eax, [ebx]
push	esi
push	edi
test	eax, eax
jz	short loc_100277D8
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	edi, [esp+0Ch+arg_C]
mov	eax, [edi+8]
add	eax, 14h
push	eax
push	0
push	0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
mov	[ebx], eax
test	eax, eax
jnz	short loc_100277FA
or	edi, 0FFFFFFFFh
jmp	short loc_10027854
mov	ecx, [esp+0Ch+arg_8]
mov	edx, [esp+0Ch+arg_0]
mov	eax, [esp+0Ch+arg_4]
push	ecx
push	edx
push	104h
push	eax
call	PK11_CreateContextBySymKey
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10027821
or	edi, 0FFFFFFFFh
jmp	short loc_10027854
mov	edx, [edi+8]
mov	eax, [ebx]
push	edx
mov	edx, [edi+4]
push	edx
mov	edx, [eax+8]
lea	ecx, [eax+8]
mov	eax, [eax+4]
push	edx
push	ecx
push	eax
push	esi
call	PK11_CipherOp
push	esi
mov	edi, eax
call	PK11_Finalize
push	1
push	esi
call	PK11_DestroyContext
add	esp, 24h
test	edi, edi
jz	short loc_1002786B
			
mov	eax, [ebx]
test	eax, eax
jz	short loc_1002786B
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	dword ptr [ebx], 0
			
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
align 10h
push	ebx
push	esi
mov	esi, [esp+8+arg_4]
push	edi
mov	edi, [esp+0Ch+arg_0]
xor	ebx, ebx
push	ebx
push	107h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jnz	short loc_100278B6
push	0
push	105h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_100278BB
mov	ebx, 20h
push	0
push	10Ch
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_100278D3
or	ebx, 8
push	0
push	109h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jnz	short loc_100278FD
push	0
push	108h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027903
or	ebx, 80h
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
sub	esp, 84h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+84h+var_4], eax
mov	eax, [esp+84h+arg_8]
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+8Ch+arg_0]
push	esi
push	edi
mov	edi, [esp+94h+arg_4]
mov	esi, edx
push	800h
mov	[esp+98h+var_6C], esi
mov	[esp+98h+var_74], edi
mov	[esp+98h+var_64], eax
mov	[esp+98h+var_70], ecx
mov	[esp+98h+var_84], ebx
mov	[esp+98h+var_80], ebx
mov	[esp+98h+var_78], ebx
mov	[esp+98h+var_60], 102h
mov	[esp+98h+var_5C], ebx
mov	[esp+98h+var_58], ebx
mov	[esp+98h+var_54], ebx
mov	[esp+98h+var_50], ebx
mov	[esp+98h+var_4C], ebx
mov	[esp+98h+var_3C], 101h
mov	[esp+98h+var_38], ebx
mov	[esp+98h+var_34], ebx
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+94h+var_7C], eax
cmp	eax, ebx
jnz	short loc_100279A6
or	esi, 0FFFFFFFFh
jmp	loc_10027B58
push	2
lea	edx, [esp+98h+var_60]
push	edx
push	edi
push	ebp
push	eax
call	sub_1002A310
add	esp, 14h
cmp	eax, ebx
jz	short loc_100279BF
push	eax
jmp	short loc_100279C8
cmp	[esp+94h+var_58], 0FFFFFFFFh
jnz	short loc_100279DE
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	esi, 0FFFFFFFFh
jmp	loc_10027B58
push	2
lea	eax, [esp+98h+var_60]
push	eax
push	esi
call	sub_1002C4F0
add	esp, 0Ch
xor	esi, esi
mov	[esp+94h+var_68], eax
cmp	eax, ebx
jnz	loc_10027B58
mov	ecx, [esp+94h+var_70]
push	ecx
push	edi
push	ebx
push	ebx
push	ebp
call	sub_10012FF0
add	esp, 14h
mov	[esp+94h+var_84], eax
cmp	eax, ebx
jnz	short loc_10027A1D
or	esi, 0FFFFFFFFh
jmp	loc_10027B58
lea	edx, [esp+94h+var_18]
push	14h
push	edx
call	PK11_GenerateRandom
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jnz	loc_10027B58
mov	ecx, [esp+94h+var_70]
mov	edx, [esp+94h+var_84]
push	ecx
push	1
lea	eax, [esp+9Ch+var_18]
push	edx
mov	[esp+0A0h+var_44], eax
lea	eax, [esp+0A0h+var_48]
push	eax
push	9Ch
push	ebp
mov	[esp+0ACh+var_40], 14h
call	PK11_ExportEncryptedPrivKeyInfo
add	esp, 18h
mov	[esp+94h+var_80], eax
cmp	eax, ebx
jnz	short loc_10027A78
or	esi, 0FFFFFFFFh
jmp	loc_10027B58
push	edi
push	ebp
call	sub_1002A540
mov	esi, eax
add	esp, 8
mov	[esp+94h+var_78], esi
cmp	esi, ebx
jz	short loc_10027AA0
mov	[esp+94h+var_2C], esi
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
cmp	cl, bl
jnz	short loc_10027A93
sub	eax, edx
mov	[esp+94h+var_28], eax
push	edi
push	ebp
call	sub_10027880
mov	ecx, [esp+9Ch+var_5C]
mov	edx, [esp+9Ch+var_58]
mov	edi, [esp+9Ch+var_6C]
mov	[esp+9Ch+var_20], ecx
mov	ecx, [esp+9Ch+var_64]
push	ecx
push	eax
mov	[esp+0A4h+var_1C], edx
mov	edx, [esp+0A4h+var_84]
mov	eax, [edx+4]
push	eax
push	1
push	1
neg	esi
lea	ecx, [esp+0B0h+var_24]
push	ecx
mov	ecx, [esp+0B4h+var_80]
sbb	esi, esi
lea	edx, [esp+0B4h+var_30]
and	esi, edx
push	esi
lea	eax, [esp+0B8h+var_48]
push	eax
push	ecx
push	edi
call	PK11_ImportEncryptedPrivateKeyInfo
mov	esi, eax
add	esp, 30h
cmp	esi, ebx
jnz	short loc_10027B58
mov	edx, [esp+94h+var_7C]
mov	eax, [esp+94h+var_74]
push	ebp
push	edi
push	edx
lea	edi, [esp+0A0h+var_68]
mov	ebx, 2
lea	esi, [esp+0A0h+var_60]
call	sub_10027770
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10027B56
mov	eax, [esp+94h+var_68]
test	eax, eax
jnz	short loc_10027B32
or	esi, 0FFFFFFFFh
jmp	short loc_10027B56
mov	ecx, [esp+94h+var_7C]
push	eax
mov	eax, [esp+98h+var_6C]
push	eax
mov	eax, [esp+9Ch+var_74]
push	ecx
mov	esi, 1
lea	ebx, [esp+0A0h+var_3C]
mov	ecx, ebp
call	sub_10027720
add	esp, 0Ch
mov	esi, eax
			
xor	ebx, ebx
			
mov	eax, [esp+94h+var_78]
mov	[esp+94h+var_18], ebx
mov	[esp+94h+var_14], ebx
mov	[esp+94h+var_10], ebx
mov	[esp+94h+var_C], ebx
mov	[esp+94h+var_8], ebx
cmp	eax, ebx
jz	short loc_10027B89
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+94h+var_84]
cmp	eax, ebx
jz	short loc_10027B9A
push	eax
call	SECKEY_DestroyPrivateKey
add	esp, 4
mov	eax, [esp+94h+var_80]
cmp	eax, ebx
jz	short loc_10027BAD
push	1
push	eax
call	SECKEY_DestroyEncryptedPrivateKeyInfo
add	esp, 8
mov	eax, [esp+94h+var_7C]
cmp	eax, ebx
jz	short loc_10027BBF
push	ebx
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	ecx, [esp+94h+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 84h
retn
align 10h
mov	ecx, [edi+4]
mov	edx, [edi+8]
push	esi
test	ecx, ecx
jz	short loc_10027C0E
cmp	edx, 0FFFFFFFFh
jz	short loc_10027C0E
test	edx, edx
jz	short loc_10027C10
mov	esi, 1
lea	eax, [edx+ecx-1]
sub	esi, ecx
nop
inc	byte ptr [eax]
jnz	short loc_10027C30
dec	eax
lea	ecx, [esi+eax]
test	ecx, ecx
jnz	short loc_10027C00
jmp	short loc_10027C10
			
xor	edx, edx
			
lea	esi, [edx+1]
mov	edx, [esp+4+arg_0]
push	esi
push	edx
call	PORT_ArenaZAlloc_Util
add	esp, 8
test	eax, eax
jnz	short loc_10027C2A
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	[edi+4], eax
mov	[edi+8], esi
xor	eax, eax
pop	esi
retn
align 10h
push	ebx
xor	ebx, ebx
push	ebx
push	107h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027C5C
mov	ebx, 40000h
push	0
push	106h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027C77
or	ebx, 20000h
push	0
push	104h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027C92
or	ebx, 100h
push	0
push	105h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027CAD
or	ebx, 200h
push	0
push	10Ch
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027CC8
or	ebx, 80000h
push	0
push	108h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027CE3
or	ebx, 800h
push	0
push	109h
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027CFE
or	ebx, 1000h
push	0
push	10Ah
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027D19
or	ebx, 2000h
push	0
push	10Bh
push	esi
push	edi
call	sub_1002A280
add	esp, 10h
test	al, al
jz	short loc_10027D34
or	ebx, 4000h
mov	eax, ebx
pop	ebx
retn
align 10h
sub	esp, 54h
push	ebx
push	ebp
xor	ebp, ebp
push	800h
mov	[esp+60h+var_4C], ebp
mov	[esp+60h+var_48], ebp
mov	[esp+60h+var_54], ebp
mov	[esp+60h+var_18], 102h
mov	[esp+60h+var_14], ebp
mov	[esp+60h+var_10], ebp
mov	[esp+60h+var_C], ebp
mov	[esp+60h+var_8], ebp
mov	[esp+60h+var_4], ebp
mov	[esp+60h+var_24], 3
mov	[esp+60h+var_20], ebp
mov	[esp+60h+var_1C], ebp
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
mov	[esp+5Ch+var_44], ebx
cmp	ebx, ebp
jnz	short loc_10027D9F
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
push	esi
mov	esi, [esp+60h+arg_8]
push	edi
mov	edi, [esp+64h+arg_4]
push	100h
push	esi
push	edi
call	sub_1002A210
add	esp, 0Ch
mov	[esp+64h+var_38], eax
cmp	eax, 0FFFFFFFFh
jnz	short loc_10027DD8
push	ebp
push	ebx
or	esi, 0FFFFFFFFh
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 54h
retn
push	eax
call	sub_10024E60
add	esp, 4
mov	[esp+64h+var_34], eax
mov	[esp+64h+var_40], eax
cmp	eax, 131h
jz	short loc_10027DF7
cmp	eax, 130h
jnz	short loc_10027DFF
mov	[esp+64h+var_40], 133h
mov	ecx, [esp+64h+arg_10]
push	ecx
push	ebp
push	esi
push	eax
push	1
push	ebp
push	edi
call	PK11_SymKeyFromHandle
add	esp, 1Ch
mov	[esp+64h+var_50], eax
cmp	eax, ebp
jz	short loc_10027DC1
mov	edx, [esp+64h+arg_0]
push	edi
push	edx
push	ebx
mov	eax, esi
lea	edi, [esp+70h+var_3C]
mov	ebx, 2
lea	esi, [esp+70h+var_18]
call	sub_10027770
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_10028008
mov	ebx, [esp+64h+var_40]
push	eax
push	ebx
mov	[esp+6Ch+var_2C], offset aMyEncrytionTes 
call	PK11_GetBlockSize
add	esp, 8
test	eax, eax
jns	short loc_10027E65
or	esi, 0FFFFFFFFh
jmp	loc_10028008
mov	[esp+64h+var_28], eax
test	eax, eax
jnz	short loc_10027E75
mov	[esp+64h+var_28], 3Ah
mov	esi, [esp+64h+var_3C]
test	esi, esi
jz	loc_10027F9B
mov	eax, [esp+64h+arg_8]
mov	ecx, [esp+64h+arg_4]
push	100h
push	eax
push	ecx
call	sub_1002A210
add	esp, 0Ch
cmp	eax, [esp+64h+var_38]
jnz	loc_10027F64
mov	edx, [esp+64h+arg_C]
mov	eax, [esp+64h+var_34]
mov	ecx, [esp+64h+arg_0]
push	edx
push	0
push	esi
push	eax
push	1
push	0
push	ecx
call	PK11_SymKeyFromHandle
add	esp, 1Ch
cmp	[esp+64h+var_54], 0
mov	ebp, eax
jnz	short loc_10027EE3
mov	edx, [esp+64h+var_50]
push	edx
push	ebx
call	PK11_GenerateNewParam
add	esp, 8
mov	[esp+64h+var_54], eax
test	eax, eax
jz	loc_10027E5D
cmp	[esp+64h+var_4C], 0
jnz	short loc_10027F11
mov	edx, [esp+64h+var_54]
lea	eax, [esp+64h+var_4C]
push	eax
mov	eax, [esp+68h+var_50]
lea	ecx, [esp+68h+var_30]
push	ecx
push	edx
push	ebx
push	eax
call	sub_100277C0
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	loc_10028008
mov	eax, [esp+64h+var_54]
lea	ecx, [esp+64h+var_48]
push	ecx
lea	edx, [esp+68h+var_30]
push	edx
push	eax
push	ebx
push	ebp
call	sub_100277C0
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	short loc_10027F59
mov	edi, [esp+64h+var_48]
mov	ecx, [esp+64h+var_4C]
push	edi
push	ecx
call	SECITEM_ItemsAreEqual_Util
add	esp, 8
test	eax, eax
jnz	loc_10028008
push	1
push	edi
call	SECITEM_FreeItem_Util
add	esp, 8
mov	[esp+64h+var_48], esi
push	ebp
call	PK11_FreeSymKey
add	esp, 4
xor	ebp, ebp
mov	edx, [esp+64h+var_44]
push	edx
lea	edi, [esp+68h+var_18]
call	sub_10027BE0
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	loc_10028008
mov	ecx, [esp+64h+arg_0]
push	2
mov	eax, edi
push	eax
push	ecx
call	sub_1002C4F0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_10027E81
mov	esi, [esp+64h+arg_8]
mov	edi, [esp+64h+arg_4]
call	sub_10027C40
mov	edx, [esp+64h+var_50]
mov	edi, [esp+64h+arg_0]
push	edx
push	1
push	eax
push	1
push	edi
call	PK11_MoveSymKey
mov	ebp, eax
add	esp, 14h
test	ebp, ebp
jnz	short loc_10027FCA
or	esi, 0FFFFFFFFh
jmp	short loc_10028008
mov	ecx, [ebp+4]
push	1
lea	eax, [esp+68h+var_18]
push	eax
push	ecx
call	sub_100276B0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10028008
mov	edx, [ebp+4]
mov	eax, [esp+64h+var_44]
mov	ecx, [esp+64h+arg_4]
push	edx
push	edi
push	eax
mov	eax, [esp+70h+arg_8]
mov	esi, 1
lea	ebx, [esp+70h+var_24]
call	sub_10027720
add	esp, 0Ch
mov	esi, eax
			
mov	ecx, [esp+64h+var_50]
push	ecx
call	PK11_FreeSymKey
add	esp, 4
test	ebp, ebp
jz	short loc_10028022
push	ebp
call	PK11_FreeSymKey
add	esp, 4
mov	eax, [esp+64h+var_4C]
test	eax, eax
jz	short loc_10028035
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+64h+var_48]
test	eax, eax
jz	short loc_10028048
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, [esp+64h+var_54]
test	eax, eax
jz	short loc_1002805B
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	ebx, [esp+64h+var_44]
xor	ebp, ebp
push	ebp
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 54h
retn
align 10h
sub	esp, 4Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+4Ch+var_4], eax
mov	eax, [esp+4Ch+arg_0]
push	ebx
push	ebp
push	esi
push	edi
xor	edi, edi
mov	[esp+5Ch+var_4C], eax
mov	eax, 102h
mov	esi, edx
push	800h
mov	ebx, ecx
mov	[esp+60h+var_48], esi
mov	[esp+60h+var_40], eax
mov	[esp+60h+var_3C], edi
mov	[esp+60h+var_38], edi
mov	[esp+60h+var_34], edi
mov	[esp+60h+var_30], edi
mov	[esp+60h+var_2C], edi
mov	[esp+60h+var_28], eax
mov	[esp+60h+var_24], edi
mov	[esp+60h+var_20], edi
mov	[esp+60h+var_1C], 3
mov	[esp+60h+var_18], edi
mov	[esp+60h+var_14], edi
mov	[esp+60h+var_10], 101h
mov	[esp+60h+var_C], edi
mov	[esp+60h+var_8], edi
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, edi
jnz	short loc_10028116
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+4Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 4Ch
retn
mov	edx, [esp+5Ch+var_4C]
push	2
lea	ecx, [esp+60h+var_40]
push	ecx
push	edx
push	esi
push	ebp
call	sub_1002A310
add	esp, 14h
cmp	eax, edi
jz	short loc_10028133
push	eax
jmp	short loc_1002813C
cmp	[esp+5Ch+var_38], 0FFFFFFFFh
jnz	short loc_1002814F
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	esi, 0FFFFFFFFh
jmp	short loc_100281C0
push	2
lea	eax, [esp+60h+var_40]
push	eax
push	ebx
call	sub_1002C4F0
add	esp, 0Ch
xor	esi, esi
cmp	eax, edi
jnz	short loc_100281C0
mov	ecx, [esp+5Ch+var_4C]
mov	edx, [esp+5Ch+var_48]
push	ecx
push	edi
push	edx
call	sub_10012B60
add	esp, 0Ch
mov	[esp+5Ch+var_44], eax
cmp	eax, edi
jz	short loc_1002814A
push	1
push	eax
push	ebx
call	PK11_ImportPublicKey
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_10028195
or	esi, 0FFFFFFFFh
jmp	short loc_100281B3
mov	ecx, [esp+5Ch+var_48]
push	eax
mov	eax, [esp+60h+var_4C]
push	ebx
push	ebp
mov	esi, 3
lea	ebx, [esp+68h+var_28]
call	sub_10027720
add	esp, 0Ch
mov	esi, eax
mov	eax, [esp+5Ch+var_44]
push	eax
call	SECKEY_DestroyPublicKey
add	esp, 4
			
push	edi
push	ebp
call	PORT_FreeArena_Util
mov	ecx, [esp+64h+var_4]
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 4Ch
retn
align 10h
push	ebx
push	ebp
push	esi
push	edi
mov	edi, eax
lea	edx, [eax+1]
lea	esp, [esp+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_100281F0
sub	eax, edx
mov	ebp, eax
lea	esi, [ebp-1]
mov	eax, esi
cmp	eax, 2
jl	short loc_10028217
movsx	ecx, byte ptr [eax+edi]
add	ecx, 0FFFFFFD0h
cmp	ecx, 9
ja	short loc_10028217
dec	eax
cmp	eax, 2
jge	short loc_10028205
			
cmp	ebp, 3
jl	short loc_1002828C
cmp	eax, esi
jge	short loc_1002828C
cmp	byte ptr [eax+edi], 23h
jnz	short loc_1002828C
cmp	byte ptr [eax+edi-1], 20h
jnz	short loc_1002828C
test	esi, esi
js	short loc_1002824A
movsx	eax, byte ptr [esi+edi]
lea	ecx, [eax-30h]
cmp	ecx, 9
ja	short loc_1002824A
cmp	eax, 39h
jl	short loc_10028282
dec	esi
mov	byte ptr [esi+edi+1], 30h
jns	short loc_10028231
			
lea	edx, [ebp+2]
push	edx
push	edi
call	PORT_Realloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_100282D1
inc	esi
mov	eax, ebp
sub	eax, esi
push	eax		
lea	ecx, [esi+ebx+1]
push	30h		
push	ecx		
mov	byte ptr [esi+ebx], 31h
call	memset
add	esp, 0Ch
pop	edi
pop	esi
mov	byte ptr [ebx+ebp+1], 0
pop	ebp
mov	eax, ebx
pop	ebx
retn
inc	byte ptr [esi+edi]
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
			
add	ebp, 4
push	ebp
push	edi
call	PORT_Realloc_Util
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_100282D1
mov	eax, offset a2	
mov	edx, eax
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_100282A6
sub	eax, edx
lea	edi, [ebx-1]
mov	cl, [edi+1]
inc	edi
test	cl, cl
jnz	short loc_100282B2
mov	ecx, eax
shr	ecx, 2
mov	esi, edx
rep movsd
mov	ecx, eax
and	ecx, 3
rep movsb
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
			
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
align 10h
sub	esp, 2Ch
push	ebx
push	esi
mov	esi, [esp+34h+arg_8]
xor	ebx, ebx
push	edi
mov	edi, [esp+38h+arg_4]
push	ebx
mov	eax, 102h
push	esi
push	edi
mov	[esp+44h+var_24], ebx
mov	[esp+44h+var_18], eax
mov	[esp+44h+var_14], ebx
mov	[esp+44h+var_10], ebx
mov	[esp+44h+var_C], eax
mov	[esp+44h+var_8], ebx
mov	[esp+44h+var_4], ebx
mov	[esp+44h+var_28], ebx
call	sub_10017070
add	esp, 0Ch
mov	[esp+38h+var_2C], eax
cmp	eax, ebx
jnz	short loc_10028342
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 2Ch
retn
push	ebp
push	esi
push	edi
call	sub_1002A540
mov	ebp, eax
add	esp, 8
cmp	ebp, ebx
jz	short loc_100283CA
mov	eax, [esp+3Ch+arg_0]
push	eax
call	PK11_GetTokenName
mov	ebx, ds:PR_smprintf
mov	edi, eax
push	ebp
push	edi
push	offset aSS_0	
call	ebx 
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	short loc_100283C8
call	CERT_GetDefaultCertDB
push	eax		
mov	eax, [esp+40h+var_2C]
add	eax, 54h
push	eax		
push	esi		
call	SEC_CertNicknameConflict
add	esp, 0Ch
test	eax, eax
jz	short loc_100283BA
mov	eax, ebp
call	sub_100281E0
mov	ebp, eax
test	ebp, ebp
jz	short loc_100283BA
push	esi
call	ds:PR_smprintf_free
push	ebp
push	edi
push	offset aSS_0	
call	ebx 
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10028377
jmp	short loc_100283C8
			
test	esi, esi
jz	short loc_100283C8
push	esi
call	ds:PR_smprintf_free
add	esp, 4
			
xor	ebx, ebx
mov	ecx, [esp+3Ch+arg_C]
mov	edx, [esp+3Ch+var_2C]
mov	edi, [esp+3Ch+arg_0]
push	ecx
push	edx
push	edi
call	PK11_FindCertInSlot
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jnz	short loc_100283FF
mov	eax, [esp+3Ch+var_2C]
push	ebx
push	ebp
push	ebx
push	eax
push	edi
call	PK11_ImportCert
add	esp, 14h
mov	ebx, eax
jmp	loc_100284EF
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
mov	[esp+3Ch+var_24], ebx
test	ebx, ebx
jnz	short loc_1002841E
or	ebx, 0FFFFFFFFh
jmp	loc_100284EF
mov	edx, [esp+3Ch+arg_8]
mov	eax, [esp+3Ch+arg_4]
push	1
lea	ecx, [esp+40h+var_18]
push	ecx
push	edx
push	eax
push	ebx
call	sub_1002A310
add	esp, 14h
test	eax, eax
jz	short loc_10028446
mov	[esp+3Ch+var_10], 0
jmp	short loc_10028495
cmp	[esp+3Ch+var_10], 0
jz	short loc_10028495
push	1
lea	ecx, [esp+40h+var_C]
push	ecx
push	esi
push	edi
push	ebx
call	sub_1002A310
add	esp, 14h
test	eax, eax
jz	short loc_1002846D
mov	[esp+3Ch+var_4], 0
jmp	short loc_10028474
cmp	[esp+3Ch+var_4], 0
jnz	short loc_10028495
push	1
lea	edx, [esp+40h+var_18]
push	edx
push	esi
call	sub_100276B0
add	esp, 0Ch
mov	[esp+3Ch+var_28], eax
test	eax, eax
jz	short loc_10028495
call	PORT_GetError_Util
mov	[esp+3Ch+var_1C], eax
			
xor	ebx, ebx
test	ebp, ebp
jz	short loc_100284D8
cmp	[ebp+0], bl
jz	short loc_100284D8
push	esi
push	edi
call	sub_1002A540
add	esp, 8
mov	[esp+3Ch+var_20], eax
test	eax, eax
jz	short loc_100284B6
cmp	[eax], bl
jnz	short loc_100284C7
push	ebp
push	esi
push	edi
call	sub_1002A5C0
mov	ebx, eax
mov	eax, [esp+48h+var_20]
add	esp, 0Ch
test	eax, eax
jz	short loc_100284D4
push	eax
call	PORT_Free_Util
add	esp, 4
test	ebx, ebx
jnz	short loc_100284EF
			
mov	eax, [esp+3Ch+var_28]
test	eax, eax
jz	short loc_100284EF
mov	ebx, eax
mov	eax, [esp+3Ch+var_1C]
push	eax
call	PORT_SetError_Util
add	esp, 4
			
test	ebp, ebp
jz	short loc_100284FC
push	ebp
call	PORT_Free_Util
add	esp, 4
mov	ecx, [esp+3Ch+var_2C]
push	ecx
call	CERT_DestroyCertificate
mov	eax, [esp+40h+var_24]
add	esp, 4
pop	ebp
test	eax, eax
jz	short loc_1002851D
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 2Ch
retn
align 10h
sub	esp, 98h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+98h+var_4], eax
push	ebx
push	ebp
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	ecx, 101h
mov	eax, 0CE534358h
mov	ebx, edx
push	800h
mov	[esp+0ACh+var_98], ebx
mov	[esp+0ACh+var_94], ecx
mov	[esp+0ACh+var_90], edi
mov	[esp+0ACh+var_8C], edi
mov	[esp+0ACh+var_88], edi
mov	[esp+0ACh+var_84], edi
mov	[esp+0ACh+var_80], edi
mov	[esp+0ACh+var_7C], eax
mov	[esp+0ACh+var_78], edi
mov	[esp+0ACh+var_74], edi
mov	[esp+0ACh+var_70], edi
mov	[esp+0ACh+var_6C], edi
mov	[esp+0ACh+var_68], edi
mov	[esp+0ACh+var_64], 1
mov	[esp+0ACh+var_60], edi
mov	[esp+0ACh+var_5C], edi
mov	[esp+0ACh+var_58], 3
mov	[esp+0ACh+var_54], edi
mov	[esp+0ACh+var_50], edi
mov	[esp+0ACh+var_4C], 2
mov	[esp+0ACh+var_48], edi
mov	[esp+0ACh+var_44], edi
mov	[esp+0ACh+var_40], 170h
mov	[esp+0ACh+var_3C], edi
mov	[esp+0ACh+var_38], edi
mov	[esp+0ACh+var_34], ecx
mov	[esp+0ACh+var_30], edi
mov	[esp+0ACh+var_2C], edi
mov	[esp+0ACh+var_28], eax
mov	[esp+0ACh+var_24], edi
mov	[esp+0ACh+var_20], edi
mov	[esp+0ACh+var_1C], 0CE534351h
mov	[esp+0ACh+var_18], edi
mov	[esp+0ACh+var_14], edi
mov	[esp+0ACh+var_10], 11h
mov	[esp+0ACh+var_C], edi
mov	[esp+0ACh+var_8], edi
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, edi
jnz	short loc_1002863D
or	eax, 0FFFFFFFFh
jmp	loc_100286C7
mov	ecx, [esp+0A8h+arg_0]
push	3
lea	eax, [esp+0ACh+var_94]
push	eax
push	ecx
push	ebx
push	ebp
call	sub_1002A310
add	esp, 14h
or	ebx, 0FFFFFFFFh
cmp	eax, edi
jz	short loc_1002866E
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	short loc_100286BB
cmp	[esp+0A8h+var_8C], ebx
jnz	short loc_10028686
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	short loc_100286BB
push	3
lea	edx, [esp+0ACh+var_94]
push	edx
push	esi
call	sub_1002C4F0
add	esp, 0Ch
xor	ebx, ebx
cmp	eax, edi
jnz	short loc_100286BB
mov	eax, [esp+0A8h+arg_0]
mov	ecx, [esp+0A8h+var_98]
push	edi
push	esi
lea	esi, [ebx+9]
push	ebp
lea	ebx, [esp+0B4h+var_70]
call	sub_10027720
add	esp, 0Ch
mov	ebx, eax
			
push	edi
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, ebx
mov	ecx, [esp+0A8h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 98h
retn
sub	esp, 98h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+98h+var_4], eax
push	ebx
push	ebp
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	ecx, 101h
mov	eax, 0CE534352h
mov	ebx, edx
push	800h
mov	[esp+0ACh+var_98], ebx
mov	[esp+0ACh+var_94], ecx
mov	[esp+0ACh+var_90], edi
mov	[esp+0ACh+var_8C], edi
mov	[esp+0ACh+var_88], eax
mov	[esp+0ACh+var_84], edi
mov	[esp+0ACh+var_80], edi
mov	[esp+0ACh+var_7C], edi
mov	[esp+0ACh+var_78], edi
mov	[esp+0ACh+var_74], edi
mov	[esp+0ACh+var_70], edi
mov	[esp+0ACh+var_6C], edi
mov	[esp+0ACh+var_68], edi
mov	[esp+0ACh+var_64], 1
mov	[esp+0ACh+var_60], edi
mov	[esp+0ACh+var_5C], edi
mov	[esp+0ACh+var_58], 3
mov	[esp+0ACh+var_54], edi
mov	[esp+0ACh+var_50], edi
mov	[esp+0ACh+var_4C], 2
mov	[esp+0ACh+var_48], edi
mov	[esp+0ACh+var_44], edi
mov	[esp+0ACh+var_40], 170h
mov	[esp+0ACh+var_3C], edi
mov	[esp+0ACh+var_38], edi
mov	[esp+0ACh+var_34], ecx
mov	[esp+0ACh+var_30], edi
mov	[esp+0ACh+var_2C], edi
mov	[esp+0ACh+var_28], eax
mov	[esp+0ACh+var_24], edi
mov	[esp+0ACh+var_20], edi
mov	[esp+0ACh+var_1C], 0CE534354h
mov	[esp+0ACh+var_18], edi
mov	[esp+0ACh+var_14], edi
mov	[esp+0ACh+var_10], 11h
mov	[esp+0ACh+var_C], edi
mov	[esp+0ACh+var_8], edi
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, edi
jnz	short loc_100287ED
or	eax, 0FFFFFFFFh
jmp	loc_10028877
mov	ecx, [esp+0A8h+arg_0]
push	3
lea	eax, [esp+0ACh+var_94]
push	eax
push	ecx
push	ebx
push	ebp
call	sub_1002A310
add	esp, 14h
or	ebx, 0FFFFFFFFh
cmp	eax, edi
jz	short loc_1002881E
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	short loc_1002886B
cmp	[esp+0A8h+var_8C], ebx
jnz	short loc_10028836
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	short loc_1002886B
push	3
lea	edx, [esp+0ACh+var_94]
push	edx
push	esi
call	sub_1002C4F0
add	esp, 0Ch
xor	ebx, ebx
cmp	eax, edi
jnz	short loc_1002886B
mov	eax, [esp+0A8h+arg_0]
mov	ecx, [esp+0A8h+var_98]
push	edi
push	esi
lea	esi, [ebx+9]
push	ebp
lea	ebx, [esp+0B4h+var_70]
call	sub_10027720
add	esp, 0Ch
mov	ebx, eax
			
push	edi
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, ebx
mov	ecx, [esp+0A8h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 98h
retn
mov	eax, [esp+arg_0]
mov	edx, 4
cmp	[eax+8], edx
jnz	short loc_100288A5
mov	eax, [eax+4]
mov	ecx, [eax]
jmp	short loc_100288AA
mov	ecx, 0CE534355h
mov	eax, [esp+arg_4]
cmp	[eax+8], edx
jnz	short loc_100288BA
mov	edx, [eax+4]
mov	eax, [edx]
jmp	short loc_100288BF
mov	eax, 0CE534355h
cmp	eax, ecx
jz	short loc_100288F6
cmp	eax, 0CE534355h
jz	short loc_100288F6
cmp	ecx, 0CE534355h
jnz	short loc_100288D8
			
mov	eax, 1
retn
cmp	eax, 0CE534353h
jz	short loc_100288F6
cmp	eax, 0CE53435Bh
jz	short loc_100288F6
cmp	ecx, 0CE534353h
jz	short loc_100288D2
cmp	ecx, 0CE53435Bh
jz	short loc_100288D2
			
xor	eax, eax
retn
align 10h
sub	esp, 118h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+118h+var_4], eax
push	ebx
push	ebp
xor	ebp, ebp
push	esi
mov	esi, ecx
mov	ecx, 81h
mov	eax, 82h
push	edi
mov	ebx, edx
push	800h
mov	[esp+12Ch+var_FC], ebx
mov	[esp+12Ch+var_104], ebp
mov	[esp+12Ch+var_EC], ecx
mov	[esp+12Ch+var_E8], ebp
mov	[esp+12Ch+var_E4], ebp
mov	[esp+12Ch+var_E0], eax
mov	[esp+12Ch+var_DC], ebp
mov	[esp+12Ch+var_D8], ebp
mov	[esp+12Ch+var_D4], ebp
mov	[esp+12Ch+var_D0], ebp
mov	[esp+12Ch+var_CC], ebp
mov	[esp+12Ch+var_AC], ebp
mov	[esp+12Ch+var_A8], ebp
mov	[esp+12Ch+var_A4], ebp
mov	[esp+12Ch+var_A0], 1
mov	[esp+12Ch+var_9C], ebp
mov	[esp+12Ch+var_98], ebp
mov	[esp+12Ch+var_94], 3
mov	[esp+12Ch+var_90], ebp
mov	[esp+12Ch+var_8C], ebp
mov	[esp+12Ch+var_88], 2
mov	[esp+12Ch+var_84], ebp
mov	[esp+12Ch+var_80], ebp
mov	[esp+12Ch+var_7C], 170h
mov	[esp+12Ch+var_78], ebp
mov	[esp+12Ch+var_74], ebp
mov	[esp+12Ch+var_70], ecx
mov	[esp+12Ch+var_6C], ebp
mov	[esp+12Ch+var_68], ebp
mov	[esp+12Ch+var_64], eax
mov	[esp+12Ch+var_60], ebp
mov	[esp+12Ch+var_5C], ebp
mov	[esp+12Ch+var_58], 0CE5363B4h
mov	[esp+12Ch+var_54], ebp
mov	[esp+12Ch+var_50], ebp
mov	[esp+12Ch+var_4C], 0CE5363B5h
mov	[esp+12Ch+var_48], ebp
mov	[esp+12Ch+var_44], ebp
mov	[esp+12Ch+var_40], 0CE536358h
mov	[esp+12Ch+var_3C], ebp
mov	[esp+12Ch+var_38], ebp
mov	[esp+12Ch+var_34], 0CE536359h
mov	[esp+12Ch+var_30], ebp
mov	[esp+12Ch+var_2C], ebp
mov	[esp+12Ch+var_28], 0CE53635Ah
mov	[esp+12Ch+var_24], ebp
mov	[esp+12Ch+var_20], ebp
mov	[esp+12Ch+var_1C], 0CE53635Bh
mov	[esp+12Ch+var_18], ebp
mov	[esp+12Ch+var_14], ebp
mov	[esp+12Ch+var_10], 0CE536360h
mov	[esp+12Ch+var_C], ebp
mov	[esp+12Ch+var_8], ebp
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
mov	[esp+128h+var_114], edi
cmp	edi, ebp
jnz	short loc_10028AC5
or	eax, 0FFFFFFFFh
jmp	loc_10028C8E
mov	ecx, [esp+128h+arg_0]
push	3
lea	eax, [esp+12Ch+var_EC]
push	eax
push	ecx
push	ebx
push	edi
call	sub_1002A310
add	esp, 14h
cmp	eax, ebp
jz	short loc_10028AE5
push	eax
jmp	short loc_10028AEE
cmp	[esp+128h+var_E4], 0FFFFFFFFh
jnz	short loc_10028B04
push	12h
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
or	esi, 0FFFFFFFFh
jmp	loc_10028C6C
push	3
lea	edx, [esp+12Ch+var_EC]
push	edx
push	esi
call	sub_1002C4F0
add	esp, 0Ch
mov	[esp+128h+var_100], eax
mov	[esp+128h+var_118], ebp
cmp	eax, ebp
jz	loc_10028CA7
mov	[esp+128h+var_C8], 0CE536358h
mov	[esp+128h+var_C4], 0CE536359h
mov	[esp+128h+var_C0], 0CE53635Ah
mov	[esp+128h+var_BC], 0CE53635Bh
mov	[esp+128h+var_B8], 0CE53635Dh
mov	[esp+128h+var_B4], 0CE53635Eh
mov	[esp+128h+var_B0], 0CE53635Fh
xor	ebx, ebx
mov	edi, edi
mov	eax, [esp+ebx*4+128h+var_C8]
mov	ecx, [esp+128h+arg_0]
mov	edx, [esp+128h+var_FC]
push	1
mov	[esp+12Ch+var_110], eax
mov	[esp+12Ch+var_F8], eax
lea	eax, [esp+12Ch+var_110]
push	eax
push	ecx
push	edx
push	edi
mov	[esp+13Ch+var_10C], ebp
mov	[esp+13Ch+var_F4], ebp
mov	[esp+13Ch+var_108], ebp
mov	[esp+13Ch+var_F0], ebp
call	sub_1002A310
mov	ecx, [esp+13Ch+var_100]
push	1
lea	eax, [esp+140h+var_F8]
push	eax
push	ecx
push	esi
push	edi
call	sub_1002A310
lea	edx, [esp+150h+var_110]
push	edx
lea	eax, [esp+154h+var_F8]
push	eax
call	sub_10028890
add	esp, 30h
test	eax, eax
jz	short loc_10028BEE
mov	edx, [esp+128h+var_100]
push	1
lea	ecx, [esp+12Ch+var_110]
push	ecx
push	edx
mov	edi, esi
call	sub_100276B0
add	esp, 0Ch
test	eax, eax
jz	short loc_10028BEA
mov	[esp+128h+var_118], 0FFFFFFFFh
call	PORT_GetError_Util
mov	[esp+128h+var_104], eax
mov	edi, [esp+128h+var_114]
inc	ebx
cmp	ebx, 7
jb	loc_10028B60
mov	ecx, [esp+128h+arg_0]
mov	edx, [esp+128h+var_FC]
push	1
lea	eax, [esp+12Ch+var_110]
push	eax
push	ecx
push	edx
push	edi
mov	[esp+13Ch+var_110], 0CE536360h
mov	[esp+13Ch+var_10C], ebp
mov	[esp+13Ch+var_108], ebp
call	sub_1002A310
add	esp, 14h
cmp	[esp+128h+var_108], 1
jnz	short loc_10028C68
mov	eax, [esp+128h+var_10C]
cmp	eax, ebp
jz	short loc_10028C68
cmp	byte ptr [eax],	1
jnz	short loc_10028C68
mov	ecx, [esp+128h+var_100]
push	1
lea	eax, [esp+12Ch+var_110]
push	eax
push	ecx
mov	edi, esi
call	sub_100276B0
add	esp, 0Ch
test	eax, eax
jz	short loc_10028C64
mov	[esp+128h+var_118], 0FFFFFFFFh
call	PORT_GetError_Util
mov	[esp+128h+var_104], eax
mov	edi, [esp+128h+var_114]
			
mov	esi, [esp+128h+var_118]
			
push	ebp
push	edi
call	PORT_FreeArena_Util
add	esp, 8
cmp	esi, 0FFFFFFFFh
jnz	short loc_10028C8C
mov	eax, [esp+128h+var_104]
cmp	eax, ebp
jz	short loc_10028C8C
push	eax
call	PORT_SetError_Util
add	esp, 4
			
mov	eax, esi
mov	ecx, [esp+128h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 118h
retn
mov	eax, [esp+128h+arg_0]
mov	ecx, [esp+128h+var_FC]
push	ebp
push	esi
push	edi
mov	esi, 0Eh
lea	ebx, [esp+134h+var_AC]
call	sub_10027720
add	esp, 0Ch
mov	esi, eax
jmp	short loc_10028C6C
align 10h
push	ebp
mov	ebp, [esp+4+arg_0]
push	0
push	esi
push	edi
call	sub_1002A210
add	esp, 0Ch
cmp	eax, 0FFFFFFFFh
jnz	short loc_10028CF8
			
push	0FFFFE096h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebp
retn
cmp	eax, 4
ja	short loc_10028D4B
jz	short loc_10028D38
dec	eax
jz	short loc_10028D2A
dec	eax
jz	short loc_10028D1B
dec	eax
jnz	short loc_10028CE6
mov	ecx, [esp+4+arg_4]
push	ebp
push	esi
push	edi
mov	edx, ebx
call	sub_10027910
add	esp, 0Ch
pop	ebp
retn
push	esi
mov	edx, edi
mov	ecx, ebx
call	sub_10028080
add	esp, 4
pop	ebp
retn
push	ebp
push	esi
push	edi
push	ebx
call	sub_100282F0
add	esp, 10h
pop	ebp
retn
mov	eax, [esp+4+arg_4]
push	eax
push	ebp
push	esi
push	edi
push	ebx
call	sub_10027D40
add	esp, 14h
pop	ebp
retn
cmp	eax, 0CE534351h
jz	short loc_10028D7E
cmp	eax, 0CE534352h
jz	short loc_10028D6F
cmp	eax, 0CE534353h
jnz	short loc_10028CE6
push	esi
mov	edx, edi
mov	ecx, ebx
call	sub_10028900
add	esp, 4
pop	ebp
retn
push	esi
mov	edx, edi
mov	ecx, ebx
call	sub_100286E0
add	esp, 4
pop	ebp
retn
push	esi
mov	edx, edi
mov	ecx, ebx
call	sub_10028530
add	esp, 4
pop	ebp
retn
align 10h
			
sub	esp, 0Ch
xor	eax, eax
push	ebp
mov	ebp, [esp+10h+arg_10]
mov	[esp+10h+var_8], eax
mov	[esp+10h+var_C], eax
cmp	[esp+10h+arg_C], eax
jle	loc_10028E7A
push	ebx
push	esi
push	edi
nop
mov	eax, [esp+1Ch+arg_18]
mov	ecx, [esp+1Ch+arg_14]
mov	edx, [esp+1Ch+arg_8]
mov	edi, [esp+1Ch+arg_4]
mov	ebx, [esp+1Ch+arg_0]
push	eax
mov	eax, [esp+20h+var_C]
mov	esi, [edx+eax*4]
push	ecx
call	sub_10028CD0
add	esp, 8
test	eax, eax
jz	short loc_10028E4D
mov	[esp+1Ch+var_8], 0FFFFFFFFh
call	PORT_GetError_Util
mov	[esp+1Ch+var_4], eax
test	ebp, ebp
jz	short loc_10028E4D
mov	edi, [ebp+8]
mov	ecx, [esp+1Ch+arg_8]
mov	edx, [esp+1Ch+var_C]
mov	ebx, [ecx+edx*4]
push	24h
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10028E4D
push	10h
push	edi
call	PORT_ArenaZAlloc_Util
add	esp, 8
test	eax, eax
jz	short loc_10028E4D
mov	ecx, [esp+1Ch+arg_4]
mov	edx, [esp+1Ch+var_4]
mov	[eax+8], ecx
mov	[eax+0Ch], ebx
mov	[esi+8], eax
mov	[esi+0Ch], edx
mov	dword ptr [esi], 0
mov	eax, [ebp+4]
test	eax, eax
jz	short loc_10028E41
mov	[eax], esi
jmp	short loc_10028E44
mov	[ebp+0], esi
mov	eax, [ebp+4]
mov	[esi+4], eax
mov	[ebp+4], esi
			
mov	eax, [esp+1Ch+var_C]
inc	eax
mov	[esp+1Ch+var_C], eax
cmp	eax, [esp+1Ch+arg_C]
jl	loc_10028DB0
mov	esi, [esp+1Ch+var_8]
test	esi, esi
jz	short loc_10028E75
mov	ecx, [esp+1Ch+var_4]
push	ecx
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebx
pop	ebp
add	esp, 0Ch
retn
align 10h
public PK11_MergeTokens
sub	esp, 28h
mov	edx, [esp+28h+arg_C]
push	ebx
push	esi
mov	esi, 1
lea	eax, [esp+30h+var_25]
push	edx
mov	[esp+34h+var_14], eax
mov	eax, [esp+34h+arg_0]
xor	ebx, ebx
lea	ecx, [esp+34h+var_20]
push	esi
push	eax
mov	[esp+3Ch+var_24], ebx
mov	[esp+3Ch+var_25], 1
mov	[esp+3Ch+var_20], 3
mov	[esp+3Ch+var_18], esi
mov	[esp+3Ch+var_10], esi
mov	[esp+3Ch+var_C], ebx
mov	[esp+3Ch+var_8], ecx
mov	[esp+3Ch+var_4], 4
call	PK11_Authenticate
add	esp, 0Ch
cmp	eax, ebx
jnz	loc_10028FBE
push	ebp
mov	ebp, [esp+34h+arg_10]
push	ebp
push	esi
mov	esi, [esp+3Ch+arg_4]
push	esi
call	PK11_Authenticate
add	esp, 0Ch
cmp	eax, ebx
jnz	loc_10028FBD
push	edi
lea	ecx, [esp+38h+var_24]
push	ecx
push	2
lea	edx, [esp+40h+var_18]
push	edx
push	esi
call	sub_1002C5B0
mov	edi, eax
add	esp, 10h
test	edi, edi
jz	short loc_10028F53
mov	eax, [esp+38h+arg_C]
mov	ecx, [esp+38h+arg_8]
mov	edx, [esp+38h+var_24]
push	ebp
push	eax
mov	eax, [esp+40h+arg_0]
push	ecx
push	edx
push	edi
push	esi
push	eax
call	sub_10028D90
mov	ebx, eax
add	esp, 1Ch
test	ebx, ebx
jz	short loc_10028F42
call	PORT_GetError_Util
mov	[esp+38h+var_1C], eax
push	edi
call	PORT_Free_Util
add	esp, 4
mov	[esp+38h+var_24], 0
lea	ecx, [esp+38h+var_24]
push	ecx
push	1
lea	edx, [esp+40h+var_18]
push	edx
push	esi
call	sub_1002C5B0
mov	edi, eax
add	esp, 10h
test	edi, edi
jnz	short loc_10028F79
pop	edi
pop	ebp
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 28h
retn
mov	eax, [esp+38h+arg_C]
mov	ecx, [esp+38h+arg_8]
mov	edx, [esp+38h+var_24]
push	ebp
push	eax
mov	eax, [esp+40h+arg_0]
push	ecx
push	edx
push	edi
push	esi
push	eax
call	sub_10028D90
mov	esi, eax
add	esp, 1Ch
test	esi, esi
jnz	short loc_10028FB1
test	ebx, ebx
jz	short loc_10028FB1
mov	ecx, [esp+38h+var_1C]
push	ecx
mov	esi, ebx
call	PORT_SetError_Util
add	esp, 4
			
push	edi
call	PORT_Free_Util
add	esp, 4
mov	eax, esi
pop	edi
pop	ebp
pop	esi
pop	ebx
add	esp, 28h
retn
align 10h
public PK11_CreateMergeLog
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10028FFD
push	24h
push	esi
call	PORT_ArenaZAlloc_Util
add	esp, 8
test	eax, eax
jnz	short loc_10029001
push	eax
push	esi
call	PORT_FreeArena_Util
add	esp, 8
xor	eax, eax
pop	esi
retn
mov	[eax+8], esi
mov	dword ptr [eax+0Ch], 1
pop	esi
retn
align 10h
public PK11_DestroyMergeLog
mov	eax, [esp+arg_0]
test	eax, eax
jz	short locret_1002902A
mov	eax, [eax+8]
test	eax, eax
jz	short locret_1002902A
push	0
push	eax
call	PORT_FreeArena_Util
add	esp, 8
			
retn
align 10h
sub	esp, 50h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+50h+var_4], eax
mov	eax, [esp+50h+arg_4]
mov	ecx, [eax+44h]
mov	edx, [eax+40h]
push	ebx
push	ebp
mov	ebp, [esp+58h+arg_8]
push	esi
mov	esi, [esp+5Ch+arg_0]
push	edi
push	ecx
push	edx
xor	ebx, ebx
lea	eax, [esp+68h+var_18]
push	eax
mov	edi, 0CE5363B4h
push	4
mov	[esp+70h+var_34], ebx
mov	[esp+70h+var_30], ebx
mov	[esp+70h+var_2C], ebx
mov	[esp+70h+var_28], edi
mov	[esp+70h+var_24], ebx
mov	[esp+70h+var_20], ebx
mov	[esp+70h+var_1C], 0CE534353h
call	PK11_HashBuf
push	2
lea	eax, [esp+74h+var_34]
push	eax
lea	ecx, [esp+78h+var_1C]
lea	edx, [esp+78h+var_18]
push	esi
mov	[esp+7Ch+var_34], ebx
mov	[esp+7Ch+var_30], ecx
mov	[esp+7Ch+var_2C], 4
mov	[esp+7Ch+var_28], edi
mov	[esp+7Ch+var_24], edx
mov	[esp+7Ch+var_20], 14h
call	sub_1002C4F0
mov	edi, eax
add	esp, 1Ch
cmp	edi, ebx
jnz	short loc_100290DC
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+50h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 50h
retn
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+60h+var_44], eax
cmp	eax, ebx
jz	short loc_100290C7
lea	ecx, [esp+60h+var_50]
push	ecx
push	eax
push	0CE536358h
push	edi
push	esi
mov	[esp+74h+var_4C], ebx
mov	[esp+74h+var_48], ebx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_1002911E
mov	edx, [esp+60h+var_4C]
mov	eax, [edx]
mov	[esp+60h+var_38], eax
jmp	short loc_10029122
mov	[esp+60h+var_38], ebx
mov	edx, [esp+60h+var_44]
lea	ecx, [esp+60h+var_50]
push	ecx
push	edx
push	0CE536359h
push	edi
push	esi
mov	[esp+74h+var_4C], ebx
mov	[esp+74h+var_48], ebx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_10029153
mov	eax, [esp+60h+var_4C]
mov	ecx, [eax]
mov	[esp+60h+var_3C], ecx
jmp	short loc_10029157
mov	[esp+60h+var_3C], ebx
mov	eax, [esp+60h+var_44]
lea	edx, [esp+60h+var_50]
push	edx
push	eax
push	0CE53635Ah
push	edi
push	esi
mov	[esp+74h+var_4C], ebx
mov	[esp+74h+var_48], ebx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_10029188
mov	ecx, [esp+60h+var_4C]
mov	edx, [ecx]
mov	[esp+60h+var_40], edx
jmp	short loc_1002918C
mov	[esp+60h+var_40], ebx
mov	ecx, [esp+60h+var_44]
lea	eax, [esp+60h+var_50]
push	eax
push	ecx
push	0CE53635Bh
push	edi
push	esi
mov	[esp+74h+var_4C], ebx
mov	[esp+74h+var_48], ebx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_100291B9
mov	edx, [esp+60h+var_4C]
mov	ecx, [edx]
jmp	short loc_100291BB
xor	ecx, ecx
mov	eax, [esp+60h+var_38]
mov	edx, 3
lea	esi, [edx+35h]
cmp	eax, 0CE534351h
jnz	short loc_100291D3
or	[ebp+0], edx
jmp	short loc_100291DD
cmp	eax, 0CE534352h
jnz	short loc_100291DD
or	[ebp+0], esi
			
cmp	[esp+60h+var_3C], 0CE534352h
jnz	short loc_100291EE
or	dword ptr [ebp+0], 80h
cmp	ecx, 0CE534351h
jnz	short loc_100291FB
or	[ebp+4], edx
jmp	short loc_10029206
cmp	ecx, 0CE534352h
jnz	short loc_10029206
or	[ebp+4], esi
			
mov	eax, [esp+60h+var_40]
cmp	eax, 0CE534351h
jnz	short loc_10029216
or	[ebp+8], edx
jmp	short loc_10029220
cmp	eax, 0CE534352h
jnz	short loc_10029220
or	[ebp+8], esi
			
mov	eax, [esp+60h+var_44]
push	ebx
push	eax
call	PORT_FreeArena_Util
mov	ecx, [esp+68h+var_4]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
mov	eax, 1
call	@__security_check_cookie@4 
add	esp, 50h
retn
align 10h
sub	esp, 34h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+34h+var_4], eax
mov	edx, [esp+34h+arg_4]
mov	eax, [esp+34h+arg_0]
push	ebx
push	ebp
push	edi
mov	edi, [esp+40h+arg_8]
push	3
lea	ecx, [esp+44h+var_28]
push	ecx
push	edx
xor	ebx, ebx
push	eax
mov	eax, [edi]
push	eax
mov	[esp+54h+var_28], 11h
mov	[esp+54h+var_24], ebx
mov	[esp+54h+var_20], ebx
mov	[esp+54h+var_1C], 0CE534358h
mov	[esp+54h+var_18], ebx
mov	[esp+54h+var_14], ebx
mov	[esp+54h+var_10], 0CE534351h
mov	[esp+54h+Src], ebx
mov	[esp+54h+Size],	ebx
or	ebp, 0FFFFFFFFh
call	sub_1002A310
add	esp, 14h
cmp	eax, ebx
jz	short loc_100292DD
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
mov	eax, ebp
pop	ebp
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
cmp	[esp+40h+var_18], ebx
jnz	short loc_10029304
push	0FFFFE021h
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	eax, ebp
pop	ebp
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
mov	ecx, [edi]
push	esi
push	0Ch
push	ecx
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	loc_100293F3
mov	edx, [esp+44h+var_18]
cmp	[edx], bl
jz	short loc_10029329
mov	[esi+4], ebx
jmp	short loc_10029330
mov	dword ptr [esi+4], 1
mov	eax, [esp+44h+var_24]
mov	ecx, [esp+44h+var_20]
mov	[esp+44h+var_30], eax
mov	[esp+44h+var_2C], ecx
mov	ecx, [edi]
mov	[esp+44h+var_34], ebx
mov	edx, [esi+4]
push	edx
lea	eax, [esp+48h+var_34]
push	eax
push	ecx
call	CERT_DecodeDERCrl
add	esp, 0Ch
mov	[esi+8], eax
cmp	eax, ebx
jz	loc_100293F3
cmp	[esp+44h+Src], ebx
jz	short loc_100293AF
mov	ebp, [esp+44h+Size]
mov	eax, [edi]
lea	edx, [ebp+1]
push	edx
push	eax
call	PORT_ArenaAlloc_Util
mov	ecx, [esi+8]
mov	[ecx+0A8h], eax
mov	edx, [esi+8]
mov	eax, [edx+0A8h]
add	esp, 8
cmp	eax, ebx
jz	short loc_10029408
mov	ecx, [esp+44h+Src]
push	ebp		
push	ecx		
push	eax		
call	memcpy
mov	edx, [esi+8]
mov	eax, [edx+0A8h]
add	esp, 0Ch
mov	[eax+ebp], bl
jmp	short loc_100293B5
mov	[eax+0A8h], ebx
mov	[esi], ebx
mov	eax, [edi+0Ch]
cmp	eax, ebx
jz	short loc_100293D8
mov	[eax], esi
mov	[edi+0Ch], esi
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
mov	[edi+8], esi
mov	[edi+0Ch], esi
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
			
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
mov	ecx, [esp+44h+var_4]
pop	esi
pop	edi
pop	ebp
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 34h
retn
align 10h
sub	esp, 30h
mov	ecx, [esp+30h+arg_4]
lea	eax, [esp+30h+var_2C]
mov	[esp+30h+var_14], eax
mov	[esp+30h+var_2C], 0CE534351h
mov	[esp+30h+var_2D], 0
mov	[esp+30h+var_18], 0
mov	[esp+30h+var_10], 4
lea	eax, [esp+30h+var_C]
cmp	ecx, 0FFFFFFFFh
jz	short loc_1002947A
test	ecx, ecx
setz	cl
lea	edx, [esp+30h+var_2D]
mov	[esp+30h+var_2D], cl
mov	[esp+30h+var_C], 0CE534358h
mov	[esp+30h+var_8], edx
mov	[esp+30h+var_4], 1
lea	eax, [esp+30h]
mov	ecx, [esp+30h+arg_0]
mov	[esp+30h+var_24], ecx
lea	edx, [esp+30h+var_18]
mov	ecx, edx
sub	eax, ecx
mov	ecx, eax
mov	[esp+30h+var_20], edx
mov	eax, 2AAAAAABh
imul	ecx
mov	ecx, [esp+30h+arg_8]
sar	edx, 1
mov	eax, edx
push	ecx
shr	eax, 1Fh
add	eax, edx
push	0
lea	edx, [esp+38h+var_28]
push	edx
push	offset sub_1002C7E0
mov	[esp+40h+var_28], offset sub_10029250
mov	[esp+40h+var_1C], eax
call	sub_1002C850
add	esp, 40h
retn
align 10h
sub	esp, 38h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+38h+var_4], eax
mov	edx, [esp+38h+arg_4]
mov	eax, [esp+38h+arg_0]
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+48h+arg_8]
mov	esi, [edi]
push	3
xor	ebx, ebx
lea	ecx, [esp+4Ch+var_28]
push	ecx
push	edx
push	eax
push	ebx
mov	[esp+5Ch+var_2C], eax
xor	ebp, ebp
mov	[esp+5Ch+var_30], esi
mov	[esp+5Ch+var_28], 11h
mov	[esp+5Ch+var_24], ebx
mov	[esp+5Ch+var_20], ebx
mov	[esp+5Ch+var_1C], 0CE534358h
mov	[esp+5Ch+var_18], ebx
mov	[esp+5Ch+var_14], ebx
mov	[esp+5Ch+var_10], 0CE534351h
mov	[esp+5Ch+Src], ebx
mov	[esp+5Ch+Size],	ebx
mov	[esp+5Ch+var_38], 0FFFFFFFFh
mov	[esp+5Ch+var_34], ebx
call	sub_1002A310
add	esp, 14h
cmp	eax, ebx
jz	short loc_10029562
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	loc_10029674
cmp	[esp+48h+var_18], ebx
jnz	short loc_10029577
push	0FFFFE021h
call	PORT_SetError_Util
jmp	loc_10029671
mov	eax, [esi]
push	0Ch
push	eax
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jz	loc_10029674
push	ebx
push	ebx
push	ebx
mov	dword ptr [esi+4], 1
call	SECITEM_AllocItem_Util
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, ebx
jz	loc_10029674
mov	[ebp+0], ebx
mov	ecx, [esp+48h+var_24]
mov	[ebp+4], ecx
mov	edx, [esp+48h+var_20]
mov	[ebp+8], edx
mov	eax, [edi+4]
mov	ecx, [esi+4]
push	eax
push	ecx
push	ebp
push	ebx
call	CERT_DecodeDERCrlWithFlags
add	esp, 10h
mov	[esi+8], eax
cmp	eax, ebx
jz	loc_10029674
mov	[esp+48h+var_34], 1
cmp	[esp+48h+Src], ebx
jz	short loc_10029630
mov	edi, [esp+48h+Size]
cmp	edi, ebx
jz	short loc_10029630
mov	eax, [eax]
lea	edx, [edi+1]
push	edx
push	eax
call	PORT_ArenaAlloc_Util
mov	ecx, [esi+8]
mov	[ecx+0A8h], eax
mov	edx, [esi+8]
mov	eax, [edx+0A8h]
add	esp, 8
cmp	eax, ebx
jz	short loc_10029674
mov	ecx, [esp+48h+Src]
push	edi		
push	ecx		
push	eax		
call	memcpy
mov	edx, [esi+8]
mov	eax, [edx+0A8h]
add	esp, 0Ch
mov	[edi+eax], bl
jmp	short loc_10029636
			
mov	[eax+0A8h], ebx
mov	ecx, [esp+48h+var_30]
mov	[esi], ebx
mov	eax, [ecx+0Ch]
cmp	eax, ebx
jz	short loc_10029647
mov	[eax], esi
jmp	short loc_1002964A
mov	[ecx+8], esi
mov	[ecx+0Ch], esi
mov	ecx, [esp+48h+var_2C]
push	ecx
mov	[esp+4Ch+var_38], ebx
call	PK11_ReferenceSlot
mov	edx, [esi+8]
mov	ecx, [esp+4Ch+arg_4]
mov	[edx+0B0h], eax
mov	eax, [esi+8]
mov	[eax+0B4h], ecx
add	esp, 4
			
lea	esi, [esp+48h+var_18]
mov	edi, 2
lea	ecx, [ecx+0]
mov	eax, [esi]
cmp	eax, ebx
jz	short loc_1002968F
push	eax
call	PORT_Free_Util
add	esp, 4
add	esi, 0Ch
dec	edi
jnz	short loc_10029680
mov	eax, [esp+48h+var_24]
cmp	eax, ebx
jz	short loc_100296AC
cmp	[esp+48h+var_34], ebx
jnz	short loc_100296AC
push	eax
call	PORT_Free_Util
add	esp, 4
			
cmp	ebp, ebx
jz	short loc_100296C7
cmp	[esp+48h+var_34], ebx
jnz	short loc_100296C7
push	1
push	ebp
mov	[ebp+4], ebx
mov	[ebp+8], ebx
call	SECITEM_FreeItem_Util
add	esp, 8
			
mov	ecx, [esp+48h+var_4]
mov	eax, [esp+48h+var_38]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
align 10h
sub	esp, 34h
mov	ecx, [esp+34h+arg_0]
lea	eax, [esp+34h+var_34]
mov	[esp+34h+var_30], ecx
mov	ecx, [esp+34h+arg_4]
mov	[esp+34h+var_14], eax
mov	[esp+34h+var_34], 0CE534351h
mov	[esp+34h+var_18], 0
mov	[esp+34h+var_10], 4
lea	eax, [esp+34h+var_C]
mov	[esp+34h+var_2C], 0Fh
test	ecx, ecx
jz	short loc_10029737
mov	eax, [ecx+8]
mov	edx, [ecx+4]
mov	[esp+34h+var_4], eax
mov	[esp+34h+var_C], 101h
mov	[esp+34h+var_8], edx
lea	eax, [esp+34h]
lea	ecx, [esp+34h+var_30]
mov	[esp+34h+var_24], ecx
lea	edx, [esp+34h+var_18]
mov	ecx, edx
sub	eax, ecx
mov	ecx, eax
mov	[esp+34h+var_20], edx
mov	eax, 2AAAAAABh
imul	ecx
mov	ecx, [esp+34h+arg_8]
sar	edx, 1
mov	eax, edx
push	ecx
shr	eax, 1Fh
add	eax, edx
push	0
lea	edx, [esp+3Ch+var_28]
push	edx
push	offset sub_1002C7E0
mov	[esp+44h+var_28], offset sub_100294D0
mov	[esp+44h+var_1C], eax
call	sub_1002C850
add	esp, 44h
retn
align 10h
sub	esp, 8
push	ebx
push	ebp
push	esi
push	edi
xor	ebx, ebx
call	sub_1004A850
xor	ebp, ebp
push	ebp
mov	esi, eax
call	PORT_SetError_Util
mov	eax, [esp+1Ch+arg_8]
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	eax, [esp+1Ch+arg_0]
mov	eax, [eax]
add	esp, 4
mov	[esp+18h+var_8], ecx
mov	[esp+18h+var_4], edx
test	eax, eax
jz	short loc_10029819
push	eax
call	sub_10036730
push	ebp
push	esi
mov	edi, eax
call	sub_1004A080
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	loc_10029941
push	ebp
push	ebp
push	2
lea	ecx, [esp+24h+var_8]
push	ecx
push	ebp
push	edi
call	sub_1004D960
mov	edi, eax
push	ebp
push	edi
push	esi
call	sub_1004A450
push	edi
call	sub_10050550
push	ebp
push	ebp
push	ebp
push	esi
call	sub_1004A170
push	esi
mov	edi, eax
call	sub_10049AD0
add	esp, 3Ch
jmp	short loc_10029829
lea	edx, [esp+18h+var_8]
push	edx
push	esi
call	sub_100477D0
add	esp, 8
mov	edi, eax
test	edi, edi
jz	loc_10029912
mov	eax, [edi]
test	eax, eax
jz	loc_10029909
mov	edx, [esp+18h+arg_C]
mov	ecx, edi
mov	eax, [eax+30h]
test	eax, eax
jnz	short loc_10029851
cmp	edx, 1
jz	short loc_10029862
test	eax, eax
jz	short loc_10029856
cmp	edx, 1
jnz	short loc_10029862
mov	eax, [ecx+4]
add	ecx, 4
test	eax, eax
jnz	short loc_10029841
jmp	short loc_1002986F
			
mov	eax, [ecx]
push	eax
call	sub_10046950
add	esp, 4
mov	ebx, eax
push	edi
call	sub_10049A90
add	esp, 4
test	ebx, ebx
jnz	short loc_1002988B
push	0FFFFE089h
call	PORT_SetError_Util
jmp	loc_1002993E
mov	eax, [ebx+2Ch]
test	eax, eax
jz	short loc_100298A5
push	eax
call	PORT_Strdup_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	loc_10029938
mov	ecx, [ebx+28h]
push	ecx
push	0
push	0
call	SECITEM_AllocItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jz	short loc_1002992B
mov	edx, [ebx+28h]
mov	eax, [ebx+24h]
mov	ecx, [esi+4]
push	edx		
push	eax		
push	ecx		
call	memcpy
mov	edx, [ebx+10h]
mov	eax, [edx]
mov	ecx, [eax+4]
mov	edx, [ecx+34h]
push	edx
call	PK11_ReferenceSlot
mov	ecx, [esp+28h+arg_0]
mov	[ecx], eax
mov	edx, [ebx+10h]
mov	eax, [edx]
mov	ecx, [eax]
mov	edx, [esp+28h+arg_4]
mov	eax, [esp+28h+arg_10]
mov	[edx], ecx
push	ebx
mov	[eax], ebp
call	sub_100468D0
add	esp, 14h
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
push	edi
call	sub_10049A90
add	esp, 4
call	sub_10050A60
cmp	eax, ds:dword_100A7E44
jnz	short loc_10029941
push	0FFFFE089h
call	PORT_SetError_Util
jmp	short loc_1002993E
test	ebp, ebp
jz	short loc_10029938
push	ebp
call	PORT_Free_Util
add	esp, 4
			
push	ebx
call	sub_100468D0
			
add	esp, 4
			
call	PORT_GetError_Util
test	eax, eax
jnz	short loc_10029957
push	0FFFFE089h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
sub	esp, 10h
mov	eax, [esp+10h+arg_0]
push	esi
push	eax
call	sub_10036730
mov	ecx, [esp+18h+arg_8]
mov	edx, [ecx+4]
mov	ecx, [ecx+8]
mov	[esp+18h+var_4], ecx
mov	ecx, [esp+18h+arg_4]
mov	[esp+18h+var_8], edx
mov	edx, [ecx+4]
mov	ecx, [ecx+8]
mov	[esp+18h+var_C], ecx
xor	ecx, ecx
cmp	[esp+18h+arg_10], 1
push	1
setnz	cl
mov	[esp+1Ch+var_10], edx
mov	edx, [esp+1Ch+arg_C]
push	edx
lea	edx, [esp+20h+var_10]
push	ecx
push	edx
lea	ecx, [esp+28h+var_8]
push	ecx
push	0
push	eax
call	sub_1004D810
add	esp, 20h
test	eax, eax
jz	short loc_100299DF
mov	esi, [eax]
push	eax
call	sub_1004E6D0
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 10h
retn
push	0FFFFE0ABh
xor	esi, esi
call	PORT_SetError_Util
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 10h
retn
align 10h
public SEC_DeletePermCRL
			
push	ebx
mov	ebx, [esp+4+arg_0]
mov	eax, [ebx+0B0h]
test	eax, eax
jnz	short loc_10029A21
push	0FFFFE021h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
push	edi
push	eax
call	sub_10036730
push	10h
push	0
mov	edi, eax
call	sub_100504B0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10029A44
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	edi
call	sub_1004C2A0
mov	[esi+4], eax
mov	eax, [ebx+0B4h]
push	esi
mov	[esi], eax
mov	dword ptr [esi+8], 1
call	sub_1004C670
push	esi
mov	edi, eax
call	sub_1004E6D0
add	esp, 0Ch
mov	eax, edi
pop	edi
neg	eax
pop	esi
sbb	eax, eax
pop	ebx
retn
align 10h
			
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	eax, [esp+60h+arg_C]
push	ebx
xor	ebx, ebx
push	ebp
mov	ebp, [esp+68h+arg_0]
push	esi
mov	esi, [esp+6Ch+arg_8]
mov	[esp+6Ch+var_5C], eax
mov	eax, [esp+6Ch+arg_4]
push	edi
mov	edx, 0CE534352h
mov	ecx, 101h
xor	edi, edi
mov	[esp+70h+var_58], ebp
mov	[esp+70h+var_38], esi
mov	[esp+70h+var_3C], edx
mov	[esp+70h+var_28], ecx
mov	[esp+70h+var_24], ebx
mov	[esp+70h+var_20], ebx
mov	[esp+70h+var_1C], ebx
mov	[esp+70h+var_18], ebx
mov	[esp+70h+var_14], ebx
mov	[esp+70h+var_10], edx
mov	[esp+70h+var_C], ebx
mov	[esp+70h+var_8], ebx
mov	[esp+70h+var_54], ecx
mov	[esp+70h+var_50], ebx
mov	[esp+70h+var_4C], ebx
mov	[esp+70h+var_48], 11h
mov	[esp+70h+var_44], ebx
mov	[esp+70h+var_40], ebx
mov	[esp+70h+var_60], ebx
cmp	eax, ebx
jz	loc_10029CDC
cmp	[eax], bl
jz	loc_10029CDC
mov	[esp+70h+var_28], ecx
mov	ecx, [esi+4]
mov	[esp+70h+var_24], ecx
mov	ecx, [esi+8]
mov	[esp+70h+var_20], ecx
lea	ecx, [esp+70h+var_3C]
mov	[esp+70h+var_10], edx
mov	[esp+70h+var_1C], ebx
mov	[esp+70h+var_18], ecx
mov	[esp+70h+var_14], 4
mov	[esp+70h+var_C], eax
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
cmp	cl, bl
jnz	short loc_10029B45
sub	eax, edx
mov	[esp+70h+var_8], eax
mov	eax, [ebp+0]
cmp	eax, ebx
jz	short loc_10029B6D
push	3
lea	edx, [esp+74h+var_28]
push	edx
push	eax
call	sub_1002C4F0
add	esp, 0Ch
mov	edi, eax
jmp	short loc_10029BD4
push	ebx
push	1
push	ebx
push	0FFFFFFFFh
call	PK11_GetAllTokens
mov	ebp, eax
add	esp, 10h
cmp	ebp, ebx
jz	loc_10029CE9
mov	esi, [ebp+0]
cmp	esi, ebx
jz	short loc_10029BC3
lea	esp, [esp+0]
mov	ecx, [esi+8]
push	3
lea	eax, [esp+74h+var_28]
push	eax
push	ecx
call	sub_1002C4F0
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jnz	short loc_10029BB1
mov	esi, [esi]
cmp	esi, ebx
jnz	short loc_10029B90
jmp	short loc_10029BC3
mov	edx, [esi+8]
push	edx
call	PK11_ReferenceSlot
mov	ecx, [esp+74h+var_58]
add	esp, 4
mov	[ecx], eax
			
push	ebp
call	PK11_FreeSlotList
mov	ebp, [esp+74h+var_58]
mov	esi, [esp+74h+var_38]
add	esp, 4
cmp	edi, ebx
jnz	short loc_10029BE2
push	0FFFFE03Ah
jmp	loc_10029CE1
cmp	[esp+70h+var_5C], ebx
jz	short loc_10029BF8
mov	[esp+70h+var_54], 0CE534354h
mov	[esp+70h+var_50], ebx
mov	[esp+70h+var_4C], ebx
mov	eax, [ebp+0]
push	2
lea	edx, [esp+74h+var_54]
push	edx
push	edi
push	eax
push	ebx
call	sub_1002A310
add	esp, 14h
cmp	eax, ebx
jz	short loc_10029C65
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	edi, [esp+78h+var_5C]
add	esp, 8
			
mov	eax, [esp+70h+var_44]
cmp	eax, ebx
jz	short loc_10029C35
push	eax
call	PORT_Free_Util
add	esp, 4
			
cmp	edi, ebx
jz	short loc_10029C3D
cmp	[edi], ebx
jnz	short loc_10029C4E
			
mov	eax, [esp+70h+var_50]
cmp	eax, ebx
jz	short loc_10029C4E
push	eax
call	PORT_Free_Util
add	esp, 4
			
mov	eax, [esp+70h+var_60]
pop	edi
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+60h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 60h
retn
mov	edi, [esp+70h+var_5C]
cmp	edi, ebx
jnz	short loc_10029C8F
mov	ecx, [esp+70h+var_50]
mov	edx, [esp+70h+var_4C]
lea	eax, [esp+70h+var_34]
push	esi
push	eax
mov	[esp+78h+var_30], ecx
mov	[esp+78h+var_2C], edx
call	SECITEM_ItemsAreEqual_Util
add	esp, 8
test	eax, eax
jz	short loc_10029C24
push	0Ch
call	PORT_ZAlloc_Util
add	esp, 4
mov	[esp+70h+var_60], eax
cmp	eax, ebx
jz	short loc_10029C24
mov	ecx, [esp+70h+var_44]
mov	[eax+4], ecx
mov	edx, [esp+70h+var_40]
mov	[eax+8], edx
cmp	edi, ebx
jz	short loc_10029C3D
push	0Ch
call	PORT_ZAlloc_Util
add	esp, 4
mov	[edi], eax
cmp	eax, ebx
jz	loc_10029C35
mov	ecx, [esp+70h+var_50]
mov	[eax+4], ecx
mov	edx, [edi]
mov	eax, [esp+70h+var_4C]
mov	[edx+8], eax
jmp	loc_10029C35
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
mov	ecx, [esp+70h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 5Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+5Ch+var_4], eax
push	ebx
push	ebp
push	esi
mov	eax, 1
lea	esi, [esp+68h+var_54]
mov	[esp+68h+var_48], esi
mov	[esp+68h+var_59], al
mov	[esp+68h+var_40], eax
mov	[esp+68h+var_38], eax
mov	eax, [esp+68h+arg_8]
lea	esi, [esp+68h+var_59]
xor	ebx, ebx
mov	[esp+68h+var_3C], esi
mov	esi, [eax+4]
mov	eax, [eax+8]
mov	ecx, 0CE534352h
mov	[esp+68h+var_2C], eax
mov	eax, [esp+68h+arg_4]
mov	ebp, 0CE534354h
mov	edx, 11h
push	edi
mov	edi, [esp+6Ch+arg_0]
mov	[esp+6Ch+var_30], esi
mov	[esp+6Ch+var_54], ecx
mov	[esp+6Ch+var_1C], ebp
mov	[esp+6Ch+var_18], ebx
mov	[esp+6Ch+var_14], ebx
mov	[esp+6Ch+var_10], edx
mov	[esp+6Ch+var_C], ebx
mov	[esp+6Ch+var_8], ebx
mov	[esp+6Ch+var_50], ebx
mov	[esp+6Ch+var_58], ebx
mov	[esp+6Ch+var_4C], ebx
mov	[esp+6Ch+var_44], 4
mov	[esp+6Ch+var_34], 101h
mov	[esp+6Ch+var_28], ecx
mov	[esp+6Ch+var_24], eax
lea	esi, [eax+1]
mov	cl, [eax]
inc	eax
cmp	cl, bl
jnz	short loc_10029DA1
mov	ecx, [esp+6Ch+arg_10]
sub	eax, esi
inc	eax
mov	[esp+6Ch+var_20], eax
lea	eax, [esp+6Ch+var_1C]
cmp	ecx, ebx
jz	short loc_10029DEA
mov	eax, [ecx+4]
mov	ecx, [ecx+8]
mov	[esp+6Ch+var_18], eax
mov	eax, [esp+6Ch+arg_C]
mov	[esp+6Ch+var_10], edx
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	[esp+6Ch+var_8], eax
mov	[esp+6Ch+var_1C], ebp
mov	[esp+6Ch+var_14], ecx
mov	[esp+6Ch+var_C], edx
lea	eax, [esp+6Ch+var_4]
lea	ecx, [esp+6Ch+var_4C]
sub	eax, ecx
mov	ecx, eax
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	esi, edx
shr	esi, 1Fh
add	esi, edx
cmp	edi, ebx
jnz	short loc_10029E11
call	PK11_GetInternalKeySlot
mov	edi, eax
mov	[esp+6Ch+var_58], edi
push	edi
call	sub_10035690
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jnz	short loc_10029E54
push	0FFFFE042h
call	PORT_SetError_Util
mov	eax, [esp+70h+var_58]
add	esp, 4
cmp	eax, ebx
jz	short loc_10029E3E
push	eax
call	PK11_FreeSlot
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+5Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
mov	edx, [edi]
mov	edx, [edx+52h]
lea	eax, [esp+6Ch+var_50]
push	eax
push	esi
lea	ecx, [esp+74h+var_4C]
push	ecx
push	ebp
call	edx
add	esp, 10h
cmp	eax, ebx
jz	short loc_10029E7D
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
push	ebp
push	edi
call	sub_10035750
mov	eax, [esp+74h+var_58]
add	esp, 8
cmp	eax, ebx
jz	short loc_10029E98
push	eax
call	PK11_FreeSlot
add	esp, 4
mov	ecx, [esp+6Ch+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 5Ch
retn
align 10h
public PK11_ImportCRL
			
			
mov	eax, [esp+arg_1C]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_18]
push	ebx
push	ebp
mov	ebp, [esp+8+arg_C]
push	esi
push	edi
push	eax
push	ebp
push	ecx
push	edx
xor	edi, edi
xor	ebx, ebx
call	CERT_DecodeDERCrlWithFlags
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_10029F13
cmp	ebp, 1
jnz	short loc_10029F01
call	PORT_GetError_Util
cmp	eax, 0FFFFE009h
jnz	loc_10029FB3
push	0FFFFE021h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10029FB3
push	0FFFFE03Eh
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10029FB3
test	[esp+10h+arg_14], 1
jnz	short loc_10029F94
call	CERT_GetDefaultCertDB
lea	ecx, [esi+2Ch]
push	ecx
push	eax
call	CERT_FindCertByName
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_10029F44
push	0FFFFE00Dh
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10029FB3
push	2
push	edi
call	CERT_CheckCertUsage
add	esp, 8
test	eax, eax
jnz	short loc_10029FB3
mov	edx, [esp+10h+arg_10]
push	edx
call	ds:PR_Now
push	edx
push	eax
lea	eax, [esi+78h]
push	edi
push	eax
call	CERT_VerifySignedData
add	esp, 14h
test	eax, eax
jz	short loc_10029F94
cmp	ebp, 1
jnz	short loc_10029F85
push	0FFFFE020h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10029FB3
push	0FFFFE03Ch
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10029FB3
			
mov	ecx, [esp+10h+arg_4]
mov	edx, [esp+10h+arg_8]
mov	eax, [esp+10h+arg_0]
push	ebp
push	ecx
push	esi
push	edx
push	eax
call	sub_10041930
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
jnz	short loc_10029FBC
			
push	esi
call	SEC_DestroyCrl
add	esp, 4
test	edi, edi
jz	short loc_10029FC9
push	edi
call	CERT_DestroyCertificate
add	esp, 4
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
public PK11_BlockData
			
push	esi
push	0Ch
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10029FE3
pop	esi
retn
mov	ecx, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	eax, [edi+8]
lea	eax, [eax+ecx-1]
xor	edx, edx
div	ecx
imul	eax, ecx
push	eax
mov	[esi+8], eax
call	PORT_ZAlloc_Util
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jnz	short loc_1002A01B
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
retn
mov	ecx, [esi+8]
push	ecx		
sub	ecx, [edi+8]
push	ecx		
push	eax		
call	memset
mov	ecx, [edi+8]
mov	edx, [edi+4]
mov	eax, [esi+4]
push	ecx		
push	edx		
push	eax		
call	memcpy
add	esp, 18h
pop	edi
mov	eax, esi
pop	esi
retn
align 10h
public PK11_DestroyObject
			
push	esi
mov	esi, [esp+4+arg_0]
push	edi
push	esi
call	sub_10035650
mov	ecx, [esp+0Ch+arg_4]
mov	eax, [esi]
mov	edx, [esi+38h]
mov	eax, [eax+5Ah]
push	ecx
push	edx
call	eax
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 10h
neg	edi
sbb	eax, eax
pop	edi
pop	esi
retn
align 10h
public PK11_DestroyTokenObject
			
push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
push	edi
xor	ebx, ebx
call	sub_10035690
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1002A0AC
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	ecx, [esp+0Ch+arg_4]
mov	eax, [edi]
mov	edx, [eax+5Ah]
push	ecx
push	esi
call	edx
add	esp, 8
test	eax, eax
jz	short loc_1002A0D2
push	eax
or	ebx, 0FFFFFFFFh
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
push	esi
push	edi
call	sub_10035750
add	esp, 8
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
retn
align 10h
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_8]
push	ebx
push	esi
mov	esi, [esp+14h+arg_0]
push	edi
push	esi
mov	[esp+1Ch+var_8], 0
mov	[esp+1Ch+var_4], 0
mov	[esp+1Ch+var_C], eax
call	sub_10035650
mov	ebx, [esp+1Ch+arg_4]
mov	ecx, [esi]
mov	eax, [esi+38h]
mov	ecx, [ecx+62h]
push	1
lea	edx, [esp+20h+var_C]
push	edx
push	ebx
push	eax
call	ecx
mov	edi, eax
add	esp, 14h
test	edi, edi
jz	short loc_1002A157
push	esi
call	sub_10035670
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 0Ch
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+18h+arg_C]
test	eax, eax
jz	short loc_1002A16F
mov	edx, [esp+18h+var_4]
push	edx
push	eax
call	PORT_ArenaAlloc_Util
add	esp, 8
jmp	short loc_1002A17C
mov	eax, [esp+18h+var_4]
push	eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+18h+var_8], eax
test	eax, eax
jnz	short loc_1002A197
push	esi
call	sub_10035670
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	ecx, [esi]
mov	eax, [esi+38h]
mov	ecx, [ecx+62h]
push	1
lea	edx, [esp+1Ch+var_C]
push	edx
push	ebx
push	eax
call	ecx
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 14h
test	edi, edi
jz	short loc_1002A1E6
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
cmp	[esp+18h+arg_C], 0
jnz	short loc_1002A1DC
mov	edx, [esp+18h+var_8]
push	edx
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+18h+arg_10]
mov	ecx, [esp+18h+var_8]
mov	edx, [esp+18h+var_4]
pop	edi
pop	esi
mov	[eax+4], ecx
mov	[eax+8], edx
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
			
sub	esp, 10h
mov	eax, [esp+10h+arg_8]
push	esi
mov	esi, [esp+14h+arg_0]
push	edi
lea	ecx, [esp+18h+var_10]
push	esi
mov	[esp+1Ch+var_10], 0FFFFFFFFh
mov	[esp+1Ch+var_C], eax
mov	[esp+1Ch+var_8], ecx
mov	[esp+1Ch+var_4], 4
call	sub_10035650
mov	ecx, [esp+1Ch+arg_4]
mov	edx, [esi]
push	1
lea	eax, [esp+20h+var_C]
push	eax
mov	eax, [esi+38h]
push	ecx
mov	ecx, [edx+62h]
push	eax
call	ecx
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 18h
test	edi, edi
jz	short loc_1002A274
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
mov	eax, [esp+18h+var_10]
pop	edi
pop	esi
add	esp, 10h
retn
align 10h
			
sub	esp, 10h
mov	eax, [esp+10h+arg_8]
push	ebx
push	esi
mov	esi, [esp+18h+arg_0]
push	edi
mov	edi, [esp+1Ch+arg_C]
lea	ecx, [esp+1Ch+var_D]
mov	[esp+1Ch+var_D], 0
mov	[esp+1Ch+var_C], eax
mov	[esp+1Ch+var_8], ecx
mov	[esp+1Ch+var_4], 1
test	edi, edi
jnz	short loc_1002A2B8
push	esi
call	sub_10035650
add	esp, 4
mov	ecx, [esp+1Ch+arg_4]
mov	edx, [esi]
push	1
lea	eax, [esp+20h+var_C]
push	eax
mov	eax, [esi+38h]
push	ecx
mov	ecx, [edx+62h]
push	eax
call	ecx
add	esp, 10h
mov	ebx, eax
test	edi, edi
jnz	short loc_1002A2E1
push	esi
call	sub_10035670
add	esp, 4
test	ebx, ebx
jz	short loc_1002A2FD
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
xor	al, al
pop	ebx
add	esp, 10h
retn
mov	al, [esp+1Ch+var_D]
pop	edi
pop	esi
pop	ebx
add	esp, 10h
retn
align 10h
			
push	ecx
push	ebp
mov	ebp, [esp+8+arg_4]
push	edi
xor	edi, edi
mov	[esp+0Ch+var_4], edi
cmp	[ebp+38h], edi
jnz	short loc_1002A32B
pop	edi
mov	eax, 0B3h
pop	ebp
pop	ecx
retn
push	ebx
push	esi
push	ebp
call	sub_10035650
mov	ebx, [esp+18h+arg_10]
mov	ecx, [esp+18h+arg_C]
mov	edx, [esp+18h+arg_8]
mov	eax, [ebp+0]
push	ebx
push	ecx
mov	ecx, [ebp+38h]
push	edx
mov	edx, [eax+62h]
push	ecx
call	edx
mov	esi, eax
add	esp, 14h
cmp	esi, edi
jz	short loc_1002A368
push	ebp
call	sub_10035670
add	esp, 4
mov	eax, esi
pop	esi
pop	ebx
pop	edi
pop	ebp
pop	ecx
retn
mov	esi, [esp+14h+arg_0]
cmp	esi, edi
jz	short loc_1002A385
push	esi
call	PORT_ArenaMark_Util
add	esp, 4
mov	[esp+14h+var_4], eax
cmp	eax, edi
jz	loc_1002A460
test	ebx, ebx
jle	short loc_1002A3ED
mov	esi, [esp+14h+arg_C]
add	esi, 8
mov	eax, [esi]
test	eax, eax
jz	short loc_1002A3E1
mov	ecx, [esp+14h+arg_0]
push	eax
test	ecx, ecx
jz	short loc_1002A3D2
push	ecx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[esi-4], eax
test	eax, eax
jnz	short loc_1002A3E1
mov	eax, [esp+14h+var_4]
mov	ecx, [esp+14h+arg_0]
push	eax
push	ecx
call	PORT_ArenaRelease_Util
push	ebp
call	sub_10035670
add	esp, 0Ch
pop	esi
pop	ebx
pop	edi
mov	eax, 2
pop	ebp
pop	ecx
retn
call	PORT_Alloc_Util
add	esp, 4
mov	[esi-4], eax
test	eax, eax
jz	short loc_1002A431
			
inc	edi
add	esi, 0Ch
cmp	edi, ebx
jl	short loc_1002A390
mov	esi, [esp+14h+arg_0]
mov	ecx, [esp+14h+arg_C]
mov	edx, [esp+14h+arg_8]
mov	eax, [ebp+0]
push	ebx
push	ecx
mov	ecx, [ebp+38h]
push	edx
mov	edx, [eax+62h]
push	ecx
call	edx
push	ebp
mov	edi, eax
call	sub_10035670
add	esp, 14h
test	edi, edi
jz	loc_1002A495
test	esi, esi
jz	short loc_1002A46B
mov	eax, [esp+14h+var_4]
push	eax
push	esi
call	PORT_ArenaRelease_Util
add	esp, 8
pop	esi
pop	ebx
mov	eax, edi
pop	edi
pop	ebp
pop	ecx
retn
test	edi, edi
jle	short loc_1002A457
mov	esi, [esp+14h+arg_C]
add	esi, 4
lea	esp, [esp+0]
mov	edx, [esi]
push	edx
call	PORT_Free_Util
mov	dword ptr [esi], 0
add	esp, 4
add	esi, 0Ch
dec	edi
jnz	short loc_1002A440
push	ebp
call	sub_10035670
add	esp, 4
pop	esi
pop	ebx
pop	edi
mov	eax, 2
pop	ebp
pop	ecx
retn
test	ebx, ebx
jle	short loc_1002A4AB
mov	esi, [esp+14h+arg_C]
add	esi, 4
mov	ecx, [esi]
push	ecx
call	PORT_Free_Util
mov	dword ptr [esi], 0
add	esp, 4
add	esi, 0Ch
dec	ebx
jnz	short loc_1002A476
pop	esi
pop	ebx
mov	eax, edi
pop	edi
pop	ebp
pop	ecx
retn
test	esi, esi
jz	short loc_1002A4AB
mov	eax, [esp+14h+var_4]
test	eax, eax
jz	short loc_1002A4AB
push	eax
push	esi
call	PORT_ArenaUnmark_Util
add	esp, 8
			
pop	esi
pop	ebx
mov	eax, edi
pop	edi
pop	ebp
pop	ecx
retn
align 10h
			
sub	esp, 10h
push	esi
mov	esi, [esp+14h+arg_0]
push	edi
mov	edi, 1
lea	eax, [esp+18h+var_D]
push	esi
mov	[esp+1Ch+var_D], 0
mov	[esp+1Ch+var_C], edi
mov	[esp+1Ch+var_8], eax
mov	[esp+1Ch+var_4], edi
call	sub_10035650
mov	eax, [esp+1Ch+arg_4]
mov	ecx, [esi]
push	edi
lea	edx, [esp+20h+var_C]
push	edx
mov	edx, [esi+38h]
push	eax
mov	eax, [ecx+62h]
push	edx
call	eax
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 18h
test	edi, edi
jz	short loc_1002A528
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
xor	al, al
pop	edi
movzx	eax, al
pop	esi
add	esp, 10h
retn
movzx	eax, [esp+18h+var_D]
pop	edi
pop	esi
add	esp, 10h
retn
align 10h
			
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
sub	esp, 0Ch
lea	eax, [esp+0Ch+var_C]
push	eax
push	0
push	3
push	ecx
push	edx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jz	short loc_1002A567
xor	eax, eax
add	esp, 0Ch
retn
push	esi
push	edi
mov	edi, [esp+14h+Size]
lea	eax, [edi+1]
push	eax
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1002A594
mov	ecx, [esp+14h+Src]
push	ecx
call	PORT_Free_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
push	edi		
mov	edi, [esp+18h+Src]
push	edi		
push	esi		
call	memcpy
push	edi
call	PORT_Free_Util
add	esp, 10h
pop	edi
mov	eax, esi
pop	esi
add	esp, 0Ch
retn
align 10h
			
mov	edx, [esp+arg_8]
sub	esp, 0Ch
mov	eax, edx
push	esi
lea	esi, [eax+1]
lea	ecx, [ecx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_1002A5D0
sub	eax, esi
jns	short loc_1002A5E3
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
push	edi
mov	edi, [esp+14h+arg_0]
push	edi
mov	[esp+18h+var_C], 3
mov	[esp+18h+var_8], edx
mov	[esp+18h+var_4], eax
call	sub_10035690
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1002A61D
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
mov	edx, [esp+14h+arg_4]
mov	eax, [edi]
mov	eax, [eax+66h]
push	ebx
push	1
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	edx
push	esi
call	eax
push	esi
push	edi
mov	ebx, eax
call	sub_10035750
add	esp, 18h
test	ebx, ebx
jz	short loc_1002A65B
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
pop	ebx
pop	edi
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, [ecx+8]
mov	edx, [ecx+4]
cmp	eax, 1
jbe	short loc_1002A68C
nop
cmp	byte ptr [edx],	0
jnz	short loc_1002A68C
dec	eax
inc	edx
cmp	eax, 1
ja	short loc_1002A680
			
mov	[ecx+4], edx
mov	[ecx+8], eax
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	dword ptr [edi], 1
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002A6BF
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	edx, [esi+40h]
mov	eax, [eax+32h]
lea	ecx, [esp+8+arg_4]
push	ecx
push	offset __PBE_GenerateBits
push	esi
push	4
push	edx
call	eax
add	esp, 14h
test	eax, eax
jz	short loc_1002A6EB
mov	dword ptr [edi], 0
mov	ecx, [esi+38h]
mov	[esp+8+arg_4], ecx
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002A6FA
push	esi
call	sub_10035670
add	esp, 4
mov	eax, [esp+8+arg_4]
pop	edi
pop	esi
retn
align 10h
			
cmp	[esp+arg_8], 0
jz	short locret_1002A74A
push	esi
mov	esi, [esp+4+arg_0]
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002A72B
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [esp+4+arg_4]
mov	edx, [eax+36h]
push	ecx
call	edx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002A749
push	esi
call	sub_10035670
add	esp, 4
pop	esi
retn
align 10h
			
push	ecx
push	ebx
mov	ebx, [esp+8+arg_4]
push	ebp
mov	ebp, [esp+0Ch+arg_10]
push	esi
push	edi
mov	edi, [esp+14h+arg_0]
mov	[esp+14h+var_4], 0
mov	esi, ebx
test	ebp, ebp
jz	short loc_1002A779
push	edi
call	sub_10035690
mov	esi, eax
jmp	short loc_1002A78A
test	ebx, ebx
jnz	short loc_1002A7A7
mov	esi, [edi+38h]
test	esi, esi
jz	short loc_1002A791
push	edi
call	sub_10035650
add	esp, 4
test	esi, esi
jnz	short loc_1002A7A7
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
			
mov	ecx, [esp+14h+arg_14]
mov	edx, [esp+14h+arg_C]
mov	eax, [edi]
push	ecx
mov	ecx, [esp+18h+arg_8]
push	edx
mov	edx, [eax+52h]
push	ecx
push	esi
call	edx
add	esp, 10h
test	eax, eax
jz	short loc_1002A7DC
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
mov	[esp+14h+var_4], 0FFFFFFFFh
test	ebp, ebp
jz	short loc_1002A7F4
push	esi
push	edi
call	sub_10035750
mov	eax, [esp+1Ch+var_4]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
test	ebx, ebx
jnz	short loc_1002A801
push	edi
call	sub_10035670
add	esp, 4
mov	eax, [esp+14h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
mov	edx, [esp+arg_0]
and	edx, 0E7B00h
mov	eax, [esp+arg_4]
push	esi
mov	esi, offset dword_100A5F60
mov	ecx, 100h
jz	short loc_1002A85B
push	edi
mov	edi, [esp+8+arg_8]
push	ebp
cmp	ecx, 80000h
ja	short loc_1002A859
test	edx, ecx
jz	short loc_1002A850
mov	ebp, [esi]
xor	edx, ecx
mov	[eax], ebp
mov	[eax+4], edi
mov	dword ptr [eax+8], 1
add	eax, 0Ch
add	ecx, ecx
add	esi, 4
test	edx, edx
jnz	short loc_1002A831
pop	ebp
pop	edi
sub	eax, [esp+4+arg_4]
pop	esi
mov	ecx, eax
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, ecx
shr	eax, 1
and	eax, ecx
and	eax, 55555555h
neg	eax
sbb	eax, eax
neg	eax
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, [esp+arg_4]
push	ebx
mov	ebx, 1
push	esi
mov	esi, offset dword_100A5F90
mov	edx, ebx
test	ecx, ecx
jz	short loc_1002A8FE
push	ebp
mov	ebp, [esp+0Ch+arg_C]
push	edi
cmp	edx, 100h
ja	short loc_1002A8FC
test	ecx, edx
jz	short loc_1002A8DB
mov	edi, [esi]
mov	[eax], edi
mov	edi, [esp+10h+arg_8]
xor	ecx, edx
mov	[eax+4], edi
jmp	short loc_1002A8EB
lea	edi, [edx+edx]
test	ecx, edi
jz	short loc_1002A8F1
xor	ecx, edi
mov	edi, [esi]
mov	[eax], edi
mov	[eax+4], ebp
mov	[eax+8], ebx
add	eax, 0Ch
add	edx, edx
add	edx, edx
add	esi, 4
test	ecx, ecx
jnz	short loc_1002A8C0
pop	edi
pop	ebp
sub	eax, [esp+8+arg_4]
pop	esi
mov	ecx, eax
mov	eax, 2AAAAAABh
imul	ecx
sar	edx, 1
mov	eax, edx
shr	eax, 1Fh
add	eax, edx
pop	ebx
retn
align 10h
			
sub	esp, 48h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+48h+var_4], eax
push	ebx
xor	eax, eax
push	ebp
push	esi
push	edi
mov	edi, ecx
mov	esi, [edi+8]
xor	ebx, ebx
mov	[esp+58h+var_2B], eax
mov	[esp+58h+var_27], eax
mov	[esp+58h+var_23], eax
mov	[esp+58h+var_1F], eax
mov	[esp+58h+var_1B], ax
mov	[esp+58h+var_19], al
mov	eax, [edi+4]
push	eax
mov	[esp+5Ch+var_38], ebx
mov	[esp+5Ch+var_34], ebx
mov	[esp+5Ch+var_30], ebx
mov	[esp+5Ch+var_48], 1
mov	[esp+5Ch+var_2C], bl
mov	[esp+5Ch+var_3C], 14h
call	PK11_MapSignKeyType
lea	ecx, [esp+5Ch+var_48]
push	ecx
push	esi
mov	[esp+64h+var_38], eax
call	sub_1002A6A0
add	esp, 0Ch
mov	ebp, eax
cmp	[esp+58h+var_48], ebx
jz	short loc_1002A99C
cmp	[esi+30h], ebx
jnz	short loc_1002A9A5
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [edi+0Ch]
mov	edx, [esi]
mov	edx, [edx+0AAh]
push	eax
lea	ecx, [esp+5Ch+var_38]
push	ecx
push	ebp
call	edx
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jz	short loc_1002AA28
cmp	[esp+58h+var_48], ebx
jz	short loc_1002A9CD
cmp	[esi+30h], ebx
jnz	short loc_1002A9D6
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+58h+var_48], ebx
jz	short loc_1002AA03
cmp	[esi+30h], ebx
jnz	short loc_1002A9EA
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebp
call	ecx
add	esp, 4
cmp	[esi+30h], ebx
jnz	short loc_1002AA03
push	esi
call	sub_10035670
add	esp, 4
			
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+48h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 48h
retn
lea	eax, [esp+58h+var_44]
push	eax
push	ebx
mov	[esp+60h+var_44], ebx
mov	edx, [esi]
mov	edx, [edx+0AEh]
push	14h
lea	ecx, [esp+64h+var_2C]
push	ecx
push	ebp
call	edx
lea	ecx, [esp+6Ch+var_3C]
push	ecx
lea	edx, [esp+70h+var_18]
push	edx
push	14h
lea	ecx, [esp+78h+var_2C]
mov	[esp+78h+var_40], eax
mov	eax, [esi]
mov	edx, [eax+0AEh]
push	ecx
push	ebp
call	edx
mov	edi, [esp+80h+var_48]
add	esp, 28h
cmp	edi, ebx
jz	short loc_1002AA74
cmp	[esi+30h], ebx
jnz	short loc_1002AA7D
push	esi
call	sub_10035670
add	esp, 4
cmp	edi, ebx
jz	short loc_1002AAA8
cmp	[esi+30h], ebx
jnz	short loc_1002AA8F
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebp
call	ecx
add	esp, 4
cmp	[esi+30h], ebx
jnz	short loc_1002AAA8
push	esi
call	sub_10035670
add	esp, 4
			
mov	eax, [esp+58h+var_40]
cmp	eax, ebx
jz	short loc_1002AAB6
push	eax
jmp	loc_1002AA04
mov	ecx, [esp+58h+var_4]
mov	eax, [esp+58h+var_44]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 48h
retn
align 10h
public PK11_SignatureLen
			
sub	esp, 0Ch
push	esi
mov	esi, [esp+10h+arg_0]
mov	eax, [esi+4]
dec	eax
mov	[esp+10h+var_C], 0
mov	[esp+10h+var_8], 0
mov	[esp+10h+var_4], 0
cmp	eax, 5		
ja	loc_1002ABD2	
jmp	ds:off_1002ABE8[eax*4] 
			
push	esi		
call	PK11_GetPrivateModulusLen
add	esp, 4
cmp	eax, 0FFFFFFFFh
jnz	loc_1002ABC0
mov	ecx, esi
call	sub_1002A920
pop	esi
add	esp, 0Ch
retn
			
mov	eax, 28h	
pop	esi
add	esp, 0Ch
retn
			
mov	ecx, [esi+0Ch]	
mov	edx, [esi+8]
lea	eax, [esp+10h+var_C]
push	eax
push	0
push	131h
push	ecx
push	edx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_1002AB16
mov	eax, [esp+10h+var_4]
mov	ecx, [esp+10h+var_8]
mov	esi, eax
test	eax, eax
jle	short loc_1002AB62
cmp	byte ptr [ecx],	0
jnz	short loc_1002AB62
lea	esi, [eax-1]
			
push	ecx
call	PORT_Free_Util
add	esp, 4
lea	eax, [esi+esi]
pop	esi
add	esp, 0Ch
retn
			
mov	ecx, [esi+0Ch]	
mov	edx, [esi+8]
push	edi
lea	eax, [esp+14h+var_C]
push	eax
push	0
push	180h
push	ecx
push	edx
call	sub_1002A0F0
add	esp, 14h
test	eax, eax
jnz	short loc_1002ABC5
lea	eax, [esp+14h+var_C]
push	eax
call	SECKEY_ECParamsToBasePointOrderLen
mov	ecx, [esp+18h+var_8]
push	ecx
mov	edi, eax
call	PORT_Free_Util
add	esp, 8
test	edi, edi
jz	short loc_1002ABC5
lea	eax, [edi+7]
cdq
and	edx, 7
add	eax, edx
sar	eax, 3
add	eax, eax
pop	edi
pop	esi
add	esp, 0Ch
retn
			
mov	ecx, esi
call	sub_1002A920
pop	edi
pop	esi
add	esp, 0Ch
retn
			
			
push	0FFFFE028h	
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	esi
add	esp, 0Ch
retn
align 4
dd offset loc_1002AB2C	
dd offset loc_1002AB22
dd offset loc_1002ABD2
dd offset loc_1002ABD2
dd offset loc_1002AB73
push	esi
mov	esi, [esp+4+arg_0]
push	edi
push	esi
call	sub_10035650
mov	edx, [esp+0Ch+arg_4]
mov	eax, [esi]
lea	ecx, [esp+0Ch+arg_0]
push	ecx
mov	ecx, [esi+38h]
push	0
push	0
push	edx
mov	edx, [eax+56h]
push	ecx
call	edx
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 1Ch
test	edi, edi
jnz	short loc_1002AC3B
mov	eax, [esp+8+arg_0]
pop	edi
pop	esi
retn
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
mov	ecx, [esp+arg_4]
test	ecx, ecx
jz	short loc_1002AC6A
mov	edx, [esp+arg_8]
mov	eax, [esp+arg_0]
cmp	[eax], edx
jz	short loc_1002AC6D
add	eax, 0Ch
dec	ecx
jnz	short loc_1002AC60
xor	eax, eax
retn
mov	eax, 1
retn
align 10h
public PK11_VerifyRecover
			
sub	esp, 10h
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+20h+arg_0]
mov	eax, [edi+4]
mov	esi, [edi+8]
mov	ebx, [edi+0Ch]
xor	ebp, ebp
push	eax
mov	[esp+24h+var_C], ebp
mov	[esp+24h+var_8], ebp
mov	[esp+24h+var_4], ebp
mov	[esp+24h+arg_0], 1
call	PK11_MapSignKeyType
add	esp, 4
mov	[esp+20h+var_C], eax
cmp	esi, ebp
jnz	short loc_1002ACFC
mov	ecx, [esp+20h+arg_C]
push	ecx
push	ebp
push	4000h
push	eax
call	PK11_GetBestSlotWithAttributes
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jnz	short loc_1002ACED
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	ebp
push	edi
push	esi
call	PK11_ImportPublicKey
add	esp, 0Ch
mov	ebx, eax
jmp	short loc_1002AD05
push	esi
call	PK11_ReferenceSlot
add	esp, 4
cmp	ebx, ebp
jnz	short loc_1002AD27
push	esi
call	PK11_FreeSlot
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
lea	edx, [esp+20h+arg_0]
push	edx
push	esi
call	sub_1002A6A0
mov	ebp, [esp+28h+arg_0]
add	esp, 8
mov	edi, eax
test	ebp, ebp
jz	short loc_1002AD45
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002AD4E
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	edx, [eax+0D2h]
push	ebx
lea	ecx, [esp+24h+var_C]
push	ecx
push	edi
call	edx
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	short loc_1002ADA3
test	ebp, ebp
jz	short loc_1002AD72
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002AD7B
push	esi
call	sub_10035670
add	esp, 4
push	ebp
push	edi
push	esi
call	sub_1002A710
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
push	esi
call	PK11_FreeSlot
add	esp, 18h
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
mov	ebx, [esp+20h+arg_8]
mov	eax, [ebx+8]
mov	[esp+20h+var_10], eax
mov	eax, [ebx+4]
mov	ecx, [esi]
mov	ecx, [ecx+0D6h]
lea	edx, [esp+20h+var_10]
push	edx
push	eax
mov	eax, [esp+28h+arg_4]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
push	edi
call	ecx
add	esp, 14h
mov	[esp+20h+arg_0], eax
test	ebp, ebp
jz	short loc_1002ADDF
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002ADE8
push	esi
call	sub_10035670
add	esp, 4
push	ebp
push	edi
push	esi
call	sub_1002A710
mov	eax, [esp+2Ch+arg_0]
mov	edx, [esp+2Ch+var_10]
add	esp, 0Ch
mov	[ebx+8], edx
test	eax, eax
jz	short loc_1002AE22
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
push	esi
call	PK11_FreeSlot
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	esi
call	PK11_FreeSlot
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
public PK11_Verify
			
			
sub	esp, 0Ch
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+1Ch+arg_0]
mov	eax, [edi+4]
mov	esi, [edi+8]
mov	ebx, [edi+0Ch]
xor	ebp, ebp
push	eax
mov	[esp+20h+var_C], ebp
mov	[esp+20h+var_8], ebp
mov	[esp+20h+var_4], ebp
mov	[esp+20h+arg_0], 1
call	PK11_MapSignKeyType
add	esp, 4
mov	[esp+1Ch+var_C], eax
cmp	esi, ebp
jnz	short loc_1002AEDF
xor	ecx, ecx
cmp	eax, 11h
jnz	short loc_1002AE9E
mov	edx, [edi+1Ch]
cmp	edx, 81h
jbe	short loc_1002AE9E
mov	ecx, edx
mov	edx, [edi+18h]
cmp	byte ptr [edx],	0
jnz	short loc_1002AE98
dec	ecx
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
			
mov	edx, [esp+1Ch+arg_C]
push	edx
push	ecx
push	2000h
push	eax
call	PK11_GetBestSlotWithAttributes
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jnz	short loc_1002AED0
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
push	ebp
push	edi
push	esi
call	PK11_ImportPublicKey
add	esp, 0Ch
mov	ebx, eax
jmp	short loc_1002AEE8
push	esi
call	PK11_ReferenceSlot
add	esp, 4
cmp	ebx, ebp
jnz	short loc_1002AF0A
push	esi
call	PK11_FreeSlot
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
lea	eax, [esp+1Ch+arg_0]
push	eax
push	esi
call	sub_1002A6A0
mov	ebp, [esp+24h+arg_0]
add	esp, 8
mov	edi, eax
test	ebp, ebp
jz	short loc_1002AF28
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002AF31
push	esi
call	sub_10035650
add	esp, 4
mov	ecx, [esi]
mov	eax, [ecx+0C2h]
push	ebx
lea	edx, [esp+20h+var_C]
push	edx
push	edi
call	eax
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	short loc_1002AF86
test	ebp, ebp
jz	short loc_1002AF55
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002AF5E
push	esi
call	sub_10035670
add	esp, 4
push	ebp
push	edi
push	esi
call	sub_1002A710
push	esi
call	PK11_FreeSlot
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 18h
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+1Ch+arg_4]
mov	edx, [eax+8]
mov	eax, [eax+4]
mov	ecx, [esi]
mov	ecx, [ecx+0C6h]
push	edx
push	eax
mov	eax, [esp+24h+arg_8]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
push	edi
call	ecx
add	esp, 14h
mov	ebx, eax
test	ebp, ebp
jz	short loc_1002AFB8
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002AFC1
push	esi
call	sub_10035670
add	esp, 4
push	ebp
push	edi
push	esi
call	sub_1002A710
push	esi
call	PK11_FreeSlot
add	esp, 10h
test	ebx, ebx
jz	short loc_1002AFF0
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
public PK11_Sign
			
			
sub	esp, 20h
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+30h+arg_0]
mov	eax, [edi+4]
mov	esi, [edi+8]
xor	ebp, ebp
push	eax
mov	[esp+34h+var_18], ebp
mov	[esp+34h+var_14], ebp
mov	[esp+34h+var_10], ebp
mov	[esp+34h+var_20], 1
call	PK11_MapSignKeyType
mov	[esp+34h+var_18], eax
mov	eax, [edi+18h]
add	esp, 4
test	al, 1
jz	short loc_1002B042
shr	eax, 1
and	eax, 1
jmp	short loc_1002B0AA
mov	ebp, [edi+8]
mov	ebx, [edi+0Ch]
lea	ecx, [esp+30h+arg_0]
push	ebp
mov	byte ptr [esp+34h+arg_0], 0
mov	[esp+34h+var_C], 2
mov	[esp+34h+var_8], ecx
mov	[esp+34h+var_4], 1
call	sub_10035650
mov	edx, [ebp+0]
mov	ecx, [ebp+38h]
mov	edx, [edx+62h]
push	1
lea	eax, [esp+38h+var_C]
push	eax
push	ebx
push	ecx
call	edx
push	ebp
mov	ebx, eax
call	sub_10035670
add	esp, 18h
test	ebx, ebx
jz	short loc_1002B0A1
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
xor	al, al
jmp	short loc_1002B0A5
mov	al, byte ptr [esp+30h+arg_0]
movzx	eax, al
xor	ebp, ebp
cmp	eax, ebp
jz	short loc_1002B0BB
mov	eax, [edi+14h]
push	eax
push	esi
call	sub_10016AB0
add	esp, 8
lea	ecx, [esp+30h+var_20]
push	ecx
push	esi
call	sub_1002A6A0
add	esp, 8
mov	ebx, eax
cmp	[esp+30h+var_20], ebp
jz	short loc_1002B0D6
cmp	[esi+30h], ebp
jnz	short loc_1002B0E4
push	esi
mov	ebp, 1
call	sub_10035650
add	esp, 4
mov	eax, [edi+0Ch]
mov	edx, [esi]
mov	edx, [edx+0AAh]
push	eax
lea	ecx, [esp+34h+var_18]
push	ecx
push	ebx
call	edx
add	esp, 0Ch
mov	[esp+30h+arg_0], eax
test	eax, eax
jz	short loc_1002B15E
test	ebp, ebp
jz	short loc_1002B110
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+30h+var_20], 0
jz	short loc_1002B140
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B126
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebx
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B140
push	esi
call	sub_10035670
add	esp, 4
			
mov	edx, [esp+30h+arg_0]
push	edx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 20h
retn
mov	eax, [edi+18h]
test	al, 1
jz	short loc_1002B16D
shr	eax, 2
and	eax, 1
jmp	short loc_1002B186
mov	eax, [edi+0Ch]
mov	ecx, [edi+8]
push	ebp
push	202h
push	eax
push	ecx
call	sub_1002A280
add	esp, 10h
movzx	eax, al
test	eax, eax
jz	short loc_1002B19D
mov	edx, [edi+14h]
push	1
push	ebp
push	edx
push	0
push	ebx
push	esi
call	sub_10016900
add	esp, 18h
mov	edi, [esp+30h+arg_4]
mov	eax, [edi+8]
mov	[esp+30h+var_1C], eax
mov	eax, [edi+4]
mov	ecx, [esi]
mov	ecx, [ecx+0AEh]
lea	edx, [esp+30h+var_1C]
push	edx
push	eax
mov	eax, [esp+38h+arg_8]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
push	ebx
call	ecx
add	esp, 14h
mov	[esp+30h+arg_0], eax
test	ebp, ebp
jz	short loc_1002B1DC
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+30h+var_20], 0
jz	short loc_1002B20C
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B1F2
push	esi
call	sub_10035650
add	esp, 4
mov	edx, [esi]
mov	eax, [edx+36h]
push	ebx
call	eax
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B20C
push	esi
call	sub_10035670
add	esp, 4
			
mov	eax, [esp+30h+arg_0]
mov	ecx, [esp+30h+var_1C]
mov	[edi+8], ecx
test	eax, eax
jz	short loc_1002B221
push	eax
jmp	loc_1002B145
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 20h
retn
align 10h
public PK11_SignWithSymKey
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
push	ebx
push	ebp
push	esi
xor	ebx, ebx
mov	[esp+18h+var_C], eax
mov	eax, [esp+18h+arg_8]
push	edi
mov	edi, [esp+1Ch+arg_0]
mov	esi, [edi+8]
mov	[esp+1Ch+var_8], ebx
mov	[esp+1Ch+var_4], ebx
mov	[esp+1Ch+arg_0], 1
cmp	eax, ebx
jz	short loc_1002B26E
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	[esp+1Ch+var_8], ecx
mov	[esp+1Ch+var_4], edx
lea	eax, [esp+1Ch+arg_0]
push	eax
push	esi
call	sub_1002A6A0
add	esp, 8
mov	ebp, eax
cmp	[esp+1Ch+arg_0], ebx
jz	short loc_1002B289
cmp	[esi+30h], ebx
jnz	short loc_1002B297
push	esi
mov	ebx, 1
call	sub_10035650
add	esp, 4
mov	edx, [edi+4]
mov	ecx, [esi]
mov	ecx, [ecx+0AAh]
push	edx
lea	eax, [esp+20h+var_C]
push	eax
push	ebp
call	ecx
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_1002B30B
test	ebx, ebx
jz	short loc_1002B2C1
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B2F1
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B2D7
push	esi
call	sub_10035650
add	esp, 4
mov	edx, [esi]
mov	eax, [edx+36h]
push	ebp
call	eax
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B2F1
push	esi
call	sub_10035670
add	esp, 4
			
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	edi, [esp+1Ch+arg_C]
mov	ecx, [edi+8]
mov	[esp+1Ch+arg_4], ecx
mov	ecx, [edi+4]
mov	edx, [esi]
lea	eax, [esp+1Ch+arg_4]
push	eax
mov	eax, [esp+20h+arg_10]
push	ecx
mov	ecx, [eax+8]
mov	eax, [eax+4]
push	ecx
mov	ecx, [edx+0AEh]
push	eax
push	ebp
call	ecx
add	esp, 14h
mov	[esp+1Ch+arg_8], eax
test	ebx, ebx
jz	short loc_1002B34A
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B37A
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B360
push	esi
call	sub_10035650
add	esp, 4
mov	edx, [esi]
mov	eax, [edx+36h]
push	ebp
call	eax
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B37A
push	esi
call	sub_10035670
add	esp, 4
			
mov	eax, [esp+1Ch+arg_8]
mov	ecx, [esp+1Ch+arg_4]
mov	[edi+8], ecx
test	eax, eax
jz	short loc_1002B38F
push	eax
jmp	loc_1002B2F2
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
public PK11_Decrypt
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_14]
mov	ecx, [esp+0Ch+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+14h+arg_0]
push	esi
mov	esi, [ebp+8]
push	edi
xor	edi, edi
mov	[esp+1Ch+arg_14], eax
mov	eax, [esp+1Ch+arg_8]
mov	[esp+1Ch+var_8], edi
mov	[esp+1Ch+var_4], edi
mov	[esp+1Ch+arg_0], 1
mov	[esp+1Ch+var_C], ecx
cmp	eax, edi
jz	short loc_1002B3E6
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	[esp+1Ch+var_8], edx
mov	[esp+1Ch+var_4], eax
lea	ecx, [esp+1Ch+arg_0]
push	ecx
push	esi
call	sub_1002A6A0
add	esp, 8
mov	ebx, eax
cmp	[esp+1Ch+arg_0], edi
jz	short loc_1002B401
cmp	[esi+30h], edi
jnz	short loc_1002B40F
push	esi
mov	edi, 1
call	sub_10035650
add	esp, 4
mov	eax, [ebp+4]
mov	edx, [esi]
mov	edx, [edx+86h]
push	eax
lea	ecx, [esp+20h+var_C]
push	ecx
push	ebx
call	edx
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1002B483
test	edi, edi
jz	short loc_1002B439
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B469
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B44F
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebx
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B469
push	esi
call	sub_10035670
add	esp, 4
			
push	ebp
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	ecx, [esp+1Ch+arg_C]
mov	edx, [esi]
mov	edx, [edx+8Ah]
lea	eax, [esp+1Ch+arg_14]
push	eax
mov	eax, [esp+20h+arg_1C]
push	ecx
mov	ecx, [esp+24h+arg_18]
push	eax
push	ecx
push	ebx
call	edx
add	esp, 14h
mov	ebp, eax
test	edi, edi
jz	short loc_1002B4B4
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B4E4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B4CA
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebx
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B4E4
push	esi
call	sub_10035670
add	esp, 4
			
mov	edx, [esp+1Ch+arg_10]
mov	eax, [esp+1Ch+arg_14]
mov	[edx], eax
test	ebp, ebp
jnz	loc_1002B469
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
public PK11_Encrypt
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_14]
mov	ecx, [esp+0Ch+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+14h+arg_0]
push	esi
mov	esi, [ebp+8]
push	edi
xor	edi, edi
mov	[esp+1Ch+arg_14], eax
mov	eax, [esp+1Ch+arg_8]
mov	[esp+1Ch+var_8], edi
mov	[esp+1Ch+var_4], edi
mov	[esp+1Ch+arg_0], 1
mov	[esp+1Ch+var_C], ecx
cmp	eax, edi
jz	short loc_1002B546
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	[esp+1Ch+var_8], edx
mov	[esp+1Ch+var_4], eax
lea	ecx, [esp+1Ch+arg_0]
push	ecx
push	esi
call	sub_1002A6A0
add	esp, 8
mov	ebx, eax
cmp	[esp+1Ch+arg_0], edi
jz	short loc_1002B561
cmp	[esi+30h], edi
jnz	short loc_1002B56F
push	esi
mov	edi, 1
call	sub_10035650
add	esp, 4
mov	eax, [ebp+4]
mov	edx, [esi]
mov	edx, [edx+76h]
push	eax
lea	ecx, [esp+20h+var_C]
push	ecx
push	ebx
call	edx
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1002B5E0
test	edi, edi
jz	short loc_1002B596
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B5C6
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B5AC
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebx
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B5C6
push	esi
call	sub_10035670
add	esp, 4
			
push	ebp
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	ecx, [esp+1Ch+arg_C]
mov	edx, [esi]
mov	edx, [edx+7Ah]
lea	eax, [esp+1Ch+arg_14]
push	eax
mov	eax, [esp+20h+arg_1C]
push	ecx
mov	ecx, [esp+24h+arg_18]
push	eax
push	ecx
push	ebx
call	edx
add	esp, 14h
mov	ebp, eax
test	edi, edi
jz	short loc_1002B60E
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+1Ch+arg_0], 0
jz	short loc_1002B63E
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B624
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebx
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B63E
push	esi
call	sub_10035670
add	esp, 4
			
mov	edx, [esp+1Ch+arg_10]
mov	eax, [esp+1Ch+arg_14]
mov	[edx], eax
test	ebp, ebp
jnz	loc_1002B5C6
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
			
sub	esp, 1Ch
push	ebp
push	esi
push	edi
mov	edi, ecx
mov	esi, [edi+8]
mov	ebp, 1
mov	[esp+28h+var_14], eax
mov	[esp+28h+var_18], ebp
cmp	[edi+4], ebp
jz	short loc_1002B694
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 1Ch
retn
mov	eax, [edi+18h]
push	ebx
test	ebp, eax
jz	short loc_1002B6A2
shr	eax, 1
and	eax, ebp
jmp	short loc_1002B6FF
mov	ebx, [edi+0Ch]
lea	ecx, [esp+2Ch+var_19]
push	esi
mov	[esp+30h+var_19], 0
mov	[esp+30h+var_C], 2
mov	[esp+30h+var_8], ecx
mov	[esp+30h+var_4], ebp
call	sub_10035650
mov	edx, [esi]
mov	ecx, [esi+38h]
mov	edx, [edx+62h]
push	ebp
lea	eax, [esp+34h+var_C]
push	eax
push	ebx
push	ecx
call	edx
push	esi
mov	ebx, eax
call	sub_10035670
add	esp, 18h
test	ebx, ebx
jz	short loc_1002B6F8
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
xor	al, al
jmp	short loc_1002B6FC
mov	al, [esp+2Ch+var_19]
movzx	eax, al
test	eax, eax
jz	short loc_1002B710
mov	eax, [edi+14h]
push	eax
push	esi
call	sub_10016AB0
add	esp, 8
lea	ecx, [esp+2Ch+var_18]
push	ecx
push	esi
call	sub_1002A6A0
add	esp, 8
cmp	[esp+2Ch+var_18], 0
mov	ebp, eax
jz	short loc_1002B731
cmp	dword ptr [esi+30h], 0
jz	short loc_1002B731
xor	ebx, ebx
jmp	short loc_1002B73F
			
push	esi
mov	ebx, 1
call	sub_10035650
add	esp, 4
mov	eax, [edi+0Ch]
mov	ecx, [esp+2Ch+arg_10]
mov	edx, [esi]
mov	edx, [edx+86h]
push	eax
push	ecx
push	ebp
call	edx
add	esp, 0Ch
mov	[esp+2Ch+var_10], eax
test	eax, eax
jz	short loc_1002B7A5
test	ebx, ebx
jz	short loc_1002B76B
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+2Ch+var_18], 0
jz	short loc_1002B79B
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B781
push	esi
call	sub_10035650
add	esp, 4
mov	eax, [esi]
mov	ecx, [eax+36h]
push	ebp
call	ecx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B79B
push	esi
call	sub_10035670
add	esp, 4
			
mov	edx, [esp+2Ch+var_10]
push	edx
jmp	loc_1002B854
mov	eax, [edi+18h]
test	al, 1
jz	short loc_1002B7B4
shr	eax, 2
and	eax, 1
jmp	short loc_1002B7CD
mov	eax, [edi+0Ch]
mov	ecx, [edi+8]
push	ebx
push	202h
push	eax
push	ecx
call	sub_1002A280
add	esp, 10h
movzx	eax, al
test	eax, eax
jz	short loc_1002B7E4
mov	edx, [edi+14h]
push	1
push	ebx
push	edx
push	0
push	ebp
push	esi
call	sub_10016900
add	esp, 18h
mov	edx, [esp+2Ch+arg_0]
mov	eax, [esi]
mov	eax, [eax+8Ah]
lea	ecx, [esp+2Ch+var_14]
push	ecx
mov	ecx, [esp+30h+arg_C]
push	edx
mov	edx, [esp+34h+arg_8]
push	ecx
push	edx
push	ebp
call	eax
add	esp, 14h
mov	edi, eax
test	ebx, ebx
jz	short loc_1002B815
push	esi
call	sub_10035670
add	esp, 4
cmp	[esp+2Ch+var_18], 0
jz	short loc_1002B845
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B82B
push	esi
call	sub_10035650
add	esp, 4
mov	ecx, [esi]
mov	edx, [ecx+36h]
push	ebp
call	edx
add	esp, 4
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B845
push	esi
call	sub_10035670
add	esp, 4
			
mov	eax, [esp+2Ch+var_14]
mov	ecx, [esp+2Ch+arg_4]
mov	[ecx], eax
test	edi, edi
jz	short loc_1002B86D
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 1Ch
retn
pop	ebx
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
align 10h
public PK11_PubDecryptRaw
sub	esp, 0Ch
mov	ecx, [esp+0Ch+arg_14]
mov	edx, [esp+0Ch+arg_10]
xor	eax, eax
mov	[esp+0Ch+var_8], eax
mov	[esp+0Ch+var_4], eax
lea	eax, [esp+0Ch+var_C]
push	eax
mov	eax, [esp+10h+arg_8]
push	ecx
mov	ecx, [esp+14h+arg_4]
push	edx
push	eax
mov	eax, [esp+1Ch+arg_C]
push	ecx
mov	ecx, [esp+20h+arg_0]
mov	[esp+20h+var_C], 3
call	sub_1002B660
add	esp, 20h
retn
align 10h
public PK11_PrivDecryptPKCS1
sub	esp, 0Ch
mov	ecx, [esp+0Ch+arg_14]
mov	edx, [esp+0Ch+arg_10]
xor	eax, eax
mov	[esp+0Ch+var_8], eax
mov	[esp+0Ch+var_4], eax
lea	eax, [esp+0Ch+var_C]
push	eax
mov	eax, [esp+10h+arg_8]
push	ecx
mov	ecx, [esp+14h+arg_4]
push	edx
push	eax
mov	eax, [esp+1Ch+arg_C]
push	ecx
mov	ecx, [esp+20h+arg_0]
mov	[esp+20h+var_C], 1
call	sub_1002B660
add	esp, 20h
retn
align 10h
			
sub	esp, 8
mov	edx, [esp+8+arg_14]
push	esi
push	ecx
push	0
mov	[esp+14h+var_4], eax
mov	eax, [edx]
push	100h
push	eax
mov	[esp+1Ch+var_8], 1
call	PK11_GetBestSlotWithAttributes
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_1002B942
push	0FFFFE040h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
mov	ecx, [esp+0Ch+arg_0]
push	ebp
push	0
push	ecx
push	esi
call	PK11_ImportPublicKey
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jnz	short loc_1002B975
push	esi
call	PK11_FreeSlot
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 8
pop	ebp
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
push	ebx
push	edi
lea	edx, [esp+18h+var_8]
push	edx
push	esi
call	sub_1002A6A0
mov	ebx, [esp+20h+var_8]
add	esp, 8
mov	edi, eax
test	ebx, ebx
jz	short loc_1002B995
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B99E
push	esi
call	sub_10035650
add	esp, 4
mov	ecx, [esp+18h+arg_14]
mov	eax, [esi]
mov	edx, [eax+76h]
push	ebp
push	ecx
push	edi
call	edx
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1002B9F0
test	ebx, ebx
jz	short loc_1002B9BF
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002B9C8
push	esi
call	sub_10035670
add	esp, 4
push	ebx
push	edi
push	esi
call	sub_1002A710
push	esi
call	PK11_FreeSlot
push	ebp
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 18h
pop	edi
pop	ebx
pop	ebp
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
mov	edx, [esp+18h+arg_4]
mov	eax, [esi]
mov	eax, [eax+7Ah]
lea	ecx, [esp+18h+var_4]
push	ecx
mov	ecx, [esp+1Ch+arg_10]
push	edx
mov	edx, [esp+20h+arg_C]
push	ecx
push	edx
push	edi
call	eax
add	esp, 14h
mov	ebp, eax
test	ebx, ebx
jz	short loc_1002BA1B
cmp	dword ptr [esi+30h], 0
jnz	short loc_1002BA24
push	esi
call	sub_10035670
add	esp, 4
push	ebx
push	edi
push	esi
call	sub_1002A710
push	esi
call	PK11_FreeSlot
mov	ecx, [esp+28h+var_4]
mov	edx, [esp+28h+arg_8]
add	esp, 10h
mov	[edx], ecx
test	ebp, ebp
jz	short loc_1002BA5D
push	ebp
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	ebx
pop	ebp
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 8
retn
pop	edi
pop	ebx
pop	ebp
xor	eax, eax
pop	esi
add	esp, 8
retn
align 10h
public PK11_PubEncryptRaw
sub	esp, 0Ch
xor	eax, eax
push	esi
mov	esi, [esp+10h+arg_0]
mov	[esp+10h+var_C], 3
mov	[esp+10h+var_8], eax
mov	[esp+10h+var_4], eax
cmp	esi, eax
jz	short loc_1002BAC5
cmp	dword ptr [esi+4], 1
jnz	short loc_1002BAC5
push	esi
call	SECKEY_PublicKeyStrength
mov	edx, [esp+14h+arg_C]
lea	ecx, [esp+14h+var_C]
push	ecx
mov	ecx, [esp+18h+arg_8]
push	edx
push	ecx
mov	ecx, [esp+20h+arg_4]
lea	edx, [esp+20h+arg_0]
push	edx
push	ecx
mov	ecx, [esp+28h+arg_10]
push	esi
call	sub_1002B900
add	esp, 1Ch
pop	esi
add	esp, 0Ch
retn
			
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
align 10h
public PK11_PubEncryptPKCS1
sub	esp, 0Ch
xor	eax, eax
push	esi
mov	esi, [esp+10h+arg_0]
mov	ecx, 1
mov	[esp+10h+var_C], ecx
mov	[esp+10h+var_8], eax
mov	[esp+10h+var_4], eax
cmp	esi, eax
jz	short loc_1002BB35
cmp	[esi+4], ecx
jnz	short loc_1002BB35
push	esi
call	SECKEY_PublicKeyStrength
mov	edx, [esp+14h+arg_C]
lea	ecx, [esp+14h+var_C]
push	ecx
mov	ecx, [esp+18h+arg_8]
push	edx
push	ecx
mov	ecx, [esp+20h+arg_4]
lea	edx, [esp+20h+arg_0]
push	edx
push	ecx
mov	ecx, [esp+28h+arg_10]
push	esi
call	sub_1002B900
add	esp, 1Ch
pop	esi
add	esp, 0Ch
retn
			
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0Ch
retn
align 10h
public PK11_PrivDecrypt
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
xor	ecx, ecx
mov	[esp+0Ch+var_C], eax
mov	eax, [esp+0Ch+arg_8]
mov	[esp+0Ch+var_8], ecx
mov	[esp+0Ch+var_4], ecx
cmp	eax, ecx
jz	short loc_1002BB7A
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	[esp+0Ch+var_8], ecx
mov	[esp+0Ch+var_4], edx
mov	ecx, [esp+0Ch+arg_1C]
mov	edx, [esp+0Ch+arg_18]
lea	eax, [esp+0Ch+var_C]
push	eax
mov	eax, [esp+10h+arg_10]
push	ecx
mov	ecx, [esp+14h+arg_C]
push	edx
push	eax
mov	eax, [esp+1Ch+arg_14]
push	ecx
mov	ecx, [esp+20h+arg_0]
call	sub_1002B660
add	esp, 20h
retn
align 10h
public PK11_PubEncrypt
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
xor	ecx, ecx
mov	[esp+0Ch+var_C], eax
mov	eax, [esp+0Ch+arg_8]
mov	[esp+0Ch+var_8], ecx
mov	[esp+0Ch+var_4], ecx
cmp	eax, ecx
jz	short loc_1002BBDA
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	[esp+0Ch+var_8], ecx
mov	[esp+0Ch+var_4], edx
mov	ecx, [esp+0Ch+arg_1C]
mov	edx, [esp+0Ch+arg_18]
lea	eax, [esp+0Ch+var_C]
push	eax
mov	eax, [esp+10h+arg_10]
push	ecx
mov	ecx, [esp+14h+arg_C]
push	edx
mov	edx, [esp+18h+arg_0]
push	eax
mov	eax, [esp+1Ch+arg_14]
push	ecx
mov	ecx, [esp+20h+arg_20]
push	edx
call	sub_1002B900
add	esp, 24h
retn
align 10h
public PK11_UnwrapPrivKey
			
			
sub	esp, 108h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+108h+var_4], eax
mov	edx, [esp+108h+arg_C]
mov	eax, [esp+108h+arg_4]
mov	ecx, [esp+108h+arg_8]
mov	[esp+108h+var_104], edx
mov	edx, [esp+108h+arg_1C]
push	ebx
mov	ebx, [esp+10Ch+arg_14]
mov	[esp+10Ch+var_100], edx
mov	edx, [esp+10Ch+arg_24]
push	ebp
mov	ebp, [esp+110h+arg_0]
mov	[esp+110h+var_E0], edx
mov	edx, [esp+110h+arg_28]
push	esi
mov	esi, [esp+114h+arg_20]
push	edi
mov	edi, [esp+118h+arg_2C]
mov	[esp+118h+var_E4], eax
mov	eax, [esp+118h+arg_10]
mov	[esp+118h+var_EC], ecx
mov	ecx, [esp+118h+arg_18]
mov	[esp+118h+var_DC], edx
mov	edx, [esp+118h+arg_30]
mov	[esp+118h+var_F8], eax
mov	[esp+118h+var_CC], ebx
mov	[esp+118h+var_E8], ecx
mov	[esp+118h+var_D4], esi
mov	[esp+118h+var_BC], edi
mov	[esp+118h+var_F4], edx
mov	[esp+118h+var_106], 1
mov	[esp+118h+var_105], 0
mov	[esp+118h+var_D8], 3
test	ebp, ebp
jz	loc_1002BEE6
test	eax, eax
jz	loc_1002BEE6
test	ecx, ecx
jz	loc_1002BEE6
push	ecx
call	PK11_MakeIDFromPubKey
add	esp, 4
mov	[esp+118h+var_F0], eax
test	eax, eax
jz	loc_1002BEE6
cmp	[esp+118h+var_100], 0
mov	edx, 1
mov	[esp+118h+var_B8], edx
lea	ecx, [esp+118h+var_106]
jnz	short loc_1002BD0A
lea	ecx, [esp+118h+var_105]
mov	[esp+118h+var_B4], ecx
lea	ecx, [esp+118h+var_D8]
mov	[esp+118h+var_A8], ecx
mov	ecx, 4
mov	[esp+118h+var_B0], edx
lea	edx, [esp+118h+var_E0]
mov	[esp+118h+var_A4], ecx
mov	[esp+118h+var_98], ecx
mov	[esp+118h+var_AC], 0
mov	[esp+118h+var_A0], 100h
mov	[esp+118h+var_9C], edx
mov	[esp+118h+var_94], 2
lea	ecx, [esp+118h+var_106]
test	esi, esi
jnz	short loc_1002BD59
lea	ecx, [esp+118h+var_105]
mov	edx, 1
mov	[esp+118h+var_90], ecx
mov	[esp+118h+var_8C], edx
mov	[esp+118h+var_88], 103h
lea	ecx, [esp+118h+var_106]
test	esi, esi
jnz	short loc_1002BD83
lea	ecx, [esp+118h+var_105]
mov	[esp+118h+var_84], ecx
mov	[esp+118h+var_80], edx
lea	esi, [esp+118h+var_7C]
test	ebx, ebx
jz	short loc_1002BDC6
mov	ecx, [ebx+4]
test	ecx, ecx
jz	short loc_1002BDC6
mov	[esp+118h+var_78], ecx
mov	ecx, [ebx+8]
mov	[esp+118h+var_7C], 3
mov	[esp+118h+var_74], ecx
lea	esi, [esp+118h+var_70]
			
mov	dword ptr [esi], 102h
mov	ecx, [eax+4]
mov	[esi+4], ecx
mov	eax, [eax+8]
mov	[esi+8], eax
add	esi, 0Ch
xor	eax, eax
test	edi, edi
jle	short loc_1002BDFD
mov	ecx, [esp+118h+var_DC]
mov	ecx, [ecx+eax*4]
mov	[esi], ecx
lea	ecx, [esp+118h+var_106]
mov	[esi+4], ecx
mov	[esi+8], edx
add	eax, edx
add	esi, 0Ch
cmp	eax, edi
jl	short loc_1002BDE1
push	ebp
call	PK11_IsInternal
add	esp, 4
test	eax, eax
jz	short loc_1002BE23
mov	eax, [esp+118h+var_E8]
mov	edx, [eax+4]
mov	eax, [eax+8]
mov	dword ptr [esi], 0D5A0DB00h
mov	[esi+4], edx
mov	[esi+8], eax
add	esi, 0Ch
mov	edi, [esp+118h+var_EC]
lea	ecx, [esp+118h+var_B8]
sub	esi, ecx
mov	eax, 2AAAAAABh
imul	esi
mov	eax, [esp+118h+var_104]
sar	edx, 1
mov	esi, edx
shr	esi, 1Fh
xor	ebx, ebx
add	esi, edx
mov	[esp+118h+var_C8], edi
cmp	eax, ebx
jnz	short loc_1002BE5D
push	ebx
push	edi
call	PK11_ParamFromIV
add	esp, 8
mov	[esp+118h+var_104], eax
cmp	eax, ebx
jz	short loc_1002BE6D
mov	edx, [eax+4]
mov	[esp+118h+var_C4], edx
mov	eax, [eax+8]
mov	[esp+118h+var_C0], eax
jmp	short loc_1002BE75
mov	[esp+118h+var_C4], ebx
mov	[esp+118h+var_C0], ebx
mov	eax, [esp+118h+var_E4]
push	eax
cmp	[eax+8], ebp
jz	short loc_1002BE90
push	107h
push	edi
push	ebp
call	sub_100321F0
add	esp, 10h
jmp	short loc_1002BE98
call	PK11_ReferenceSymKey
add	esp, 4
mov	ebx, eax
test	ebx, ebx
jz	loc_1002BF64
cmp	[esp+118h+var_100], 0
jz	short loc_1002BEB3
push	ebp
call	sub_10035690
mov	edi, eax
jmp	short loc_1002BEC0
mov	edi, [ebp+38h]
test	edi, edi
jz	short loc_1002BEC7
push	ebp
call	sub_10035650
add	esp, 4
test	edi, edi
jnz	short loc_1002BF01
push	0FFFFE002h
call	PORT_SetError_Util
push	ebx
call	PK11_FreeSymKey
mov	ecx, [esp+120h+var_F0]
push	1
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 10h
			
xor	eax, eax
			
mov	ecx, [esp+118h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 108h
retn
mov	edx, [ebp+0]
lea	eax, [esp+118h+var_D0]
push	eax
mov	eax, [esp+11Ch+var_F8]
push	esi
lea	ecx, [esp+120h+var_B8]
push	ecx
mov	ecx, [eax+8]
mov	eax, [eax+4]
push	ecx
mov	ecx, [ebx+4]
push	eax
push	ecx
mov	ecx, [edx+0F6h]
lea	eax, [esp+130h+var_C8]
push	eax
push	edi
call	ecx
add	esp, 20h
cmp	[esp+118h+var_100], 0
mov	[esp+118h+var_FC], eax
jz	short loc_1002BF50
push	edi
push	ebp
call	sub_10035750
add	esp, 8
push	ebx
call	PK11_FreeSymKey
add	esp, 4
jmp	short loc_1002BF6C
push	ebp
call	sub_10035670
add	esp, 4
push	ebx
call	PK11_FreeSymKey
add	esp, 4
jmp	short loc_1002BF6C
mov	[esp+118h+var_FC], 54h
			
mov	edx, [esp+118h+var_F0]
push	1
push	edx
call	SECITEM_FreeItem_Util
add	esp, 8
cmp	[esp+118h+var_FC], 0
jz	loc_1002C026
call	PK11_GetInternalSlot
mov	edi, eax
test	edi, edi
jz	short loc_1002C00E
cmp	ebp, edi
jz	short loc_1002C005
mov	eax, [esp+118h+var_F4]
mov	ecx, [esp+118h+var_BC]
mov	edx, [esp+118h+var_DC]
push	eax
mov	eax, [esp+11Ch+var_E0]
push	ecx
mov	ecx, [esp+120h+var_E8]
push	edx
mov	edx, [esp+124h+var_CC]
push	eax
mov	eax, [esp+128h+var_F8]
push	0
push	0
push	ecx
mov	ecx, [esp+134h+var_104]
push	edx
mov	edx, [esp+138h+var_EC]
push	eax
mov	eax, [esp+13Ch+var_E4]
push	ecx
push	edx
push	eax
push	edi
call	PK11_UnwrapPrivKey
mov	esi, eax
add	esp, 34h
test	esi, esi
jz	short loc_1002C005
mov	ecx, [esp+118h+var_D4]
mov	edx, [esp+118h+var_100]
push	ecx
push	edx
push	0
push	esi
push	ebp
call	PK11_LoadPrivKey
push	esi
mov	ebx, eax
call	SECKEY_DestroyPrivateKey
push	edi
call	PK11_FreeSlot
add	esp, 1Ch
mov	eax, ebx
jmp	loc_1002BEE8
			
push	edi
call	PK11_FreeSlot
add	esp, 4
mov	eax, [esp+118h+var_FC]
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
jmp	loc_1002BEE6
mov	ecx, [esp+118h+var_F4]
mov	edx, [esp+118h+var_D0]
push	ecx
push	edx
push	0
push	0
push	ebp
call	sub_10012FF0
add	esp, 14h
jmp	loc_1002BEE8
align 10h
public PK11_WrapPrivKey
sub	esp, 14h
mov	eax, [esp+14h+arg_14]
mov	ecx, [eax+8]
push	ebx
push	ebp
mov	ebp, [esp+1Ch+arg_8]
xor	ebx, ebx
push	esi
mov	esi, [ebp+8]
mov	[esp+20h+arg_8], ebx
mov	[esp+20h+var_14], ebx
mov	[esp+20h+var_10], ecx
cmp	esi, ebx
jz	short loc_1002C088
mov	edx, [esp+20h+arg_C]
push	edx
push	esi
call	PK11_DoesMechanism
add	esp, 8
test	eax, eax
jnz	short loc_1002C0B6
call	PK11_GetInternalSlot
push	ebx
push	ebx
push	ebx
mov	esi, eax
push	ebp
push	esi
call	PK11_LoadPrivKey
mov	ebp, eax
push	esi
mov	[esp+38h+arg_8], ebp
call	PK11_FreeSlot
add	esp, 18h
cmp	ebp, ebx
jnz	short loc_1002C0B6
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
			
push	edi
mov	edi, [esp+24h+arg_4]
cmp	esi, [edi+8]
jz	short loc_1002C0D8
mov	eax, [esp+24h+arg_C]
push	edi
push	106h
push	eax
push	esi
call	sub_100321F0
mov	ebx, eax
add	esp, 10h
mov	edi, ebx
test	edi, edi
jnz	short loc_1002C0F8
mov	eax, [esp+24h+arg_8]
test	eax, eax
jz	short loc_1002C0ED
push	eax
call	SECKEY_DestroyPrivateKey
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
mov	eax, [esp+24h+arg_10]
mov	ecx, [esp+24h+arg_C]
mov	[esp+24h+var_C], ecx
test	eax, eax
jnz	short loc_1002C11A
push	eax
push	ecx
call	PK11_ParamFromIV
add	esp, 8
mov	[esp+24h+var_14], eax
test	eax, eax
jz	short loc_1002C12A
mov	ecx, [eax+4]
mov	[esp+24h+var_8], ecx
mov	edx, [eax+8]
mov	[esp+24h+var_4], edx
jmp	short loc_1002C134
xor	eax, eax
mov	[esp+24h+var_8], eax
mov	[esp+24h+var_4], eax
push	esi
call	sub_10035650
mov	edx, [esp+28h+arg_14]
mov	eax, [esi]
lea	ecx, [esp+28h+var_10]
push	ecx
mov	ecx, [edx+4]
mov	edx, [ebp+0Ch]
push	ecx
mov	ecx, [edi+4]
push	edx
push	ecx
mov	ecx, [esi+38h]
lea	edx, [esp+38h+var_C]
push	edx
mov	edx, [eax+0F2h]
push	ecx
call	edx
push	esi
mov	edi, eax
call	sub_10035670
add	esp, 20h
test	ebx, ebx
jz	short loc_1002C17A
push	ebx
call	PK11_FreeSymKey
add	esp, 4
mov	eax, [esp+24h+arg_8]
test	eax, eax
jz	short loc_1002C18B
push	eax
call	SECKEY_DestroyPrivateKey
add	esp, 4
mov	eax, [esp+24h+var_14]
test	eax, eax
jz	short loc_1002C19E
push	1
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
test	edi, edi
jz	short loc_1002C1BC
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 14h
retn
mov	eax, [esp+24h+var_10]
mov	ecx, [esp+24h+arg_14]
pop	edi
pop	esi
pop	ebp
mov	[ecx+8], eax
xor	eax, eax
pop	ebx
add	esp, 14h
retn
align 10h
public SECKEY_GetPublicKeyType
			
mov	eax, [esp+arg_0] 
			
			
			
			
mov	eax, [eax+4]
retn
align 10h
public PK11_UnlinkGenericObject
mov	eax, [esp+arg_0]
mov	ecx, [eax]
test	ecx, ecx
jz	short loc_1002C200
mov	edx, [eax+4]
mov	[ecx+4], edx
mov	ecx, [eax+4]
test	ecx, ecx
jz	short loc_1002C20B
mov	edx, [eax]
mov	[ecx], edx
mov	dword ptr [eax+4], 0
mov	dword ptr [eax], 0
xor	eax, eax
retn
align 10h
public PK11_DestroyGenericObject
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1002C266
mov	eax, [esi]
test	eax, eax
jz	short loc_1002C235
mov	ecx, [esi+4]
mov	[eax+4], ecx
mov	eax, [esi+4]
test	eax, eax
jz	short loc_1002C240
mov	edx, [esi]
mov	[eax], edx
mov	eax, [esi+8]
mov	dword ptr [esi+4], 0
mov	dword ptr [esi], 0
test	eax, eax
jz	short loc_1002C25D
push	eax
call	PK11_FreeSlot
add	esp, 4
push	esi
call	PORT_Free_Util
add	esp, 4
xor	eax, eax
pop	esi
retn
align 10h
public PK11_DestroyGenericObjects
			
push	ebp
push	esi
mov	esi, [esp+8+arg_0]
xor	ebp, ebp
cmp	esi, ebp
jz	loc_1002C306
push	ebx
mov	ebx, [esi]
push	edi
mov	ecx, [esi]
mov	eax, [esi+4]
mov	edi, eax
cmp	ecx, ebp
jz	short loc_1002C292
mov	[ecx+4], eax
mov	eax, [esi+4]
cmp	eax, ebp
jz	short loc_1002C29D
mov	ecx, [esi]
mov	[eax], ecx
mov	eax, [esi+8]
mov	[esi+4], ebp
mov	[esi], ebp
cmp	eax, ebp
jz	short loc_1002C2B2
push	eax
call	PK11_FreeSlot
add	esp, 4
push	esi
call	PORT_Free_Util
add	esp, 4
mov	esi, edi
cmp	edi, ebp
jnz	short loc_1002C284
mov	esi, ebx
pop	edi
cmp	ebx, ebp
jz	short loc_1002C305
mov	eax, [esi]
mov	ebx, [ebx]
cmp	eax, ebp
jz	short loc_1002C2D6
mov	edx, [esi+4]
mov	[eax+4], edx
mov	eax, [esi+4]
cmp	eax, ebp
jz	short loc_1002C2E1
mov	ecx, [esi]
mov	[eax], ecx
mov	eax, [esi+8]
mov	[esi+4], ebp
mov	[esi], ebp
cmp	eax, ebp
jz	short loc_1002C2F6
push	eax
call	PK11_FreeSlot
add	esp, 4
push	esi
call	PORT_Free_Util
add	esp, 4
mov	esi, ebx
cmp	ebx, ebp
jnz	short loc_1002C2C8
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
retn
align 10h
public PK11_CreateGenericObject
push	esi
push	edi
mov	edi, [esp+8+arg_0]
push	edi
call	sub_10035650
mov	ecx, [esp+0Ch+arg_C]
mov	edx, [esp+0Ch+arg_8]
lea	eax, [esp+0Ch+arg_0]
push	eax
mov	eax, [esp+10h+arg_4]
push	ecx
mov	ecx, [edi+38h]
push	edx
push	eax
push	ecx
push	edi
call	sub_1002A750
push	edi
mov	esi, eax
call	sub_10035670
add	esp, 20h
test	esi, esi
jz	short loc_1002C35D
push	esi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
xor	eax, eax
pop	esi
retn
push	10h
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1002C358
push	edi
call	PK11_ReferenceSlot
mov	[esi+8], eax
mov	edx, [esp+0Ch+arg_0]
add	esp, 4
pop	edi
mov	[esi+0Ch], edx
mov	dword ptr [esi+4], 0
mov	dword ptr [esi], 0
mov	eax, esi
pop	esi
retn
align 10h
public PK11_WriteRawAttribute
mov	eax, [esp+arg_0]
sub	esp, 0Ch
push	ebx
push	esi
cmp	eax, 4		
ja	short loc_1002C3CC 
jmp	ds:off_1002C468[eax*4] 
			
mov	eax, [esp+14h+arg_4] 
mov	ebx, [eax+0Ch]
jmp	short loc_1002C3C5
			
mov	eax, [esp+14h+arg_4] 
mov	ebx, [eax+4]
mov	esi, [eax+8]
test	esi, esi
jnz	short loc_1002C3E2
			
			
push	0FFFFE096h	
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+14h+arg_8]
mov	[esp+14h+var_C], eax
mov	eax, [esp+14h+arg_C]
mov	ecx, [eax+4]
mov	edx, [eax+8]
push	edi
push	esi
mov	[esp+1Ch+var_8], ecx
mov	[esp+1Ch+var_4], edx
call	sub_10035690
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1002C423
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esi]
mov	edx, [eax+66h]
push	1
lea	ecx, [esp+1Ch+var_C]
push	ecx
push	ebx
push	edi
call	edx
push	edi
push	esi
mov	ebx, eax
call	sub_10035750
add	esp, 18h
test	ebx, ebx
jz	short loc_1002C45C
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 4
dd offset loc_1002C3B5	
dd offset loc_1002C3B5
dd offset loc_1002C3CC
dd offset loc_1002C3BE
align 10h
public PK11_ReadRawAttribute
mov	eax, [esp+arg_0]
cmp	eax, 4		
ja	short loc_1002C4AA 
jmp	ds:off_1002C4D4[eax*4] 
			
mov	ecx, [esp+arg_4] 
mov	eax, [ecx+8]
mov	ecx, [ecx+0Ch]
jmp	short loc_1002C4A6
			
mov	ecx, [esp+arg_4] 
mov	eax, [ecx+8]
mov	ecx, [ecx+4]
test	eax, eax
jnz	short loc_1002C4BB
			
			
push	0FFFFE096h	
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	edx, [esp+arg_C]
push	edx
mov	edx, [esp+4+arg_8]
push	0
push	edx
push	ecx
push	eax
call	sub_1002A0F0
add	esp, 14h
retn
align 4
dd offset loc_1002C490	
dd offset loc_1002C490
dd offset loc_1002C4AA
dd offset loc_1002C49C
align 10h
			
push	ecx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
push	esi
mov	edi, 0B3h
call	sub_10035650
mov	eax, [esi+38h]
add	esp, 4
test	eax, eax
jz	short loc_1002C527
mov	edx, [esp+0Ch+arg_8]
mov	ecx, [esi]
push	edx
mov	edx, [esp+10h+arg_4]
push	edx
push	eax
mov	eax, [ecx+6Ah]
call	eax
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jz	short loc_1002C542
push	esi
call	sub_10035670
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 0Ch
pop	edi
xor	eax, eax
pop	esi
pop	ecx
retn
mov	ecx, [esi]
lea	edx, [esp+0Ch+arg_0]
push	edx
mov	edx, [esi+38h]
push	1
lea	eax, [esp+14h+var_4]
push	eax
mov	eax, [ecx+6Eh]
push	edx
call	eax
mov	ecx, [esi]
mov	edx, [esi+38h]
mov	edi, eax
mov	eax, [ecx+72h]
push	edx
call	eax
push	esi
call	sub_10035670
add	esp, 18h
test	edi, edi
jnz	short loc_1002C582
cmp	[esp+0Ch+arg_0], 1
jb	short loc_1002C59A
mov	eax, [esp+0Ch+var_4]
pop	edi
pop	esi
pop	ecx
retn
push	edi
call	sub_1001AFB0
add	esp, 4
push	eax
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
pop	ecx
retn
mov	eax, 0FFFFD003h
push	eax
call	PORT_SetError_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
pop	ecx
retn
align 10h
			
push	ecx
push	ebx
push	esi
push	edi
mov	edi, [esp+10h+arg_0]
xor	esi, esi
push	edi
mov	[esp+14h+var_4], esi
mov	ebx, 0B3h
call	sub_10035650
mov	eax, [edi+38h]
add	esp, 4
cmp	eax, esi
jz	short loc_1002C5EE
mov	edx, [esp+10h+arg_8]
mov	ecx, [edi]
push	edx
mov	edx, [esp+14h+arg_4]
push	edx
push	eax
mov	eax, [ecx+6Ah]
call	eax
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, esi
jz	short loc_1002C614
push	edi
call	sub_10035670
push	ebx
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
mov	ecx, [esp+1Ch+arg_C]
add	esp, 0Ch
pop	edi
pop	esi
mov	dword ptr [ecx], 0FFFFFFFFh
xor	eax, eax
pop	ebx
pop	ecx
retn
mov	ebx, [esp+10h+arg_C]
push	ebp
lea	esp, [esp+0]
mov	ebp, esi
test	esi, esi
jnz	short loc_1002C63A
mov	edx, [ebx]
lea	eax, ds:28h[edx*4]
push	eax
call	PORT_Alloc_Util
add	esp, 4
jmp	short loc_1002C64D
mov	ecx, [ebx]
lea	edx, ds:28h[ecx*4]
push	edx
push	esi
call	PORT_Realloc_Util
add	esp, 8
mov	esi, eax
test	esi, esi
jz	short loc_1002C67F
mov	edx, [ebx]
mov	eax, [edi]
mov	eax, [eax+6Eh]
lea	ecx, [esp+14h+var_4]
push	ecx
lea	ecx, [esi+edx*4]
mov	edx, [edi+38h]
push	0Ah
push	ecx
push	edx
call	eax
add	esp, 10h
test	eax, eax
jnz	short loc_1002C68E
mov	eax, [esp+14h+var_4]
add	[ebx], eax
cmp	eax, 0Ah
jz	short loc_1002C620
jmp	short loc_1002C6A5
test	ebp, ebp
jz	short loc_1002C6A5
push	ebp
call	PORT_Free_Util
add	esp, 4
jmp	short loc_1002C6A5
push	eax
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
push	esi
call	PORT_Free_Util
add	esp, 0Ch
xor	esi, esi
			
mov	ecx, [edi]
mov	edx, [edi+38h]
mov	eax, [ecx+72h]
push	edx
call	eax
push	edi
call	sub_10035670
add	esp, 8
pop	ebp
test	esi, esi
jz	short loc_1002C6D3
cmp	dword ptr [ebx], 0
jnz	short loc_1002C6D9
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
pop	ecx
retn
mov	dword ptr [ebx], 0FFFFFFFFh
pop	edi
mov	eax, esi
pop	esi
pop	ebx
pop	ecx
retn
			
sub	esp, 18h
push	ebp
xor	ebp, ebp
push	esi
push	800h
mov	[esp+24h+var_18], 102h
mov	[esp+24h+var_14], ebp
mov	[esp+24h+var_10], ebp
mov	[esp+24h+var_C], ebp
mov	[esp+24h+var_8], ebp
mov	[esp+24h+var_4], ebp
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jnz	short loc_1002C71E
pop	esi
xor	eax, eax
pop	ebp
add	esp, 18h
retn
mov	ecx, [esp+20h+arg_4]
push	ebx
mov	ebx, [esp+24h+arg_0]
push	edi
push	2
lea	eax, [esp+2Ch+var_18]
push	eax
push	ecx
push	ebx
push	esi
call	sub_1002A310
mov	edi, eax
add	esp, 14h
cmp	edi, ebp
jz	short loc_1002C760
push	ebp
push	esi
call	PORT_FreeArena_Util
push	edi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 10h
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 18h
retn
mov	eax, [esp+28h+var_10]
cmp	eax, ebp
jz	short loc_1002C79A
cmp	eax, 0FFFFFFFFh
jz	short loc_1002C79A
mov	edx, [esp+28h+arg_8]
mov	eax, [esp+28h+var_8]
push	2
lea	ecx, [esp+2Ch+var_18]
push	ecx
push	ebx
mov	[eax], edx
call	sub_1002C4F0
push	ebp
push	esi
mov	edi, eax
call	PORT_FreeArena_Util
add	esp, 14h
mov	eax, edi
pop	edi
pop	ebx
pop	esi
pop	ebp
add	esp, 18h
retn
			
push	ebp
push	esi
call	PORT_FreeArena_Util
add	esp, 8
cmp	[esp+28h+arg_8], 1
jnz	short loc_1002C7C2
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 18h
retn
push	0FFFFE01Ah
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 18h
retn
align 10h
			
push	ecx
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+14h+arg_4]
mov	ecx, [edi+0Ch]
mov	edx, [edi+8]
lea	eax, [esp+14h+var_4]
push	eax
mov	eax, [esp+18h+arg_0]
push	ecx
push	edx
xor	esi, esi
push	eax
mov	[esp+24h+var_4], esi
call	sub_1002C5B0
mov	ebx, [esp+24h+var_4]
add	esp, 10h
mov	ebp, eax
cmp	ebx, esi
jz	short loc_1002C847
cmp	ebp, esi
jnz	short loc_1002C820
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
cmp	ebx, esi
jle	short loc_1002C83E
mov	ecx, [edi+4]
mov	edx, [ebp+esi*4+0]
mov	eax, [esp+14h+arg_0]
push	ecx
mov	ecx, [edi]
push	edx
push	eax
call	ecx
inc	esi
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1002C824
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
			
push	ebx
push	ebp
mov	ebp, [esp+8+arg_C]
push	ebp
push	0
push	0
push	0FFFFFFFFh
call	PK11_GetAllTokens
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jnz	short loc_1002C871
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
mov	esi, [ebx]
test	esi, esi
jz	short loc_1002C8B3
push	edi
mov	edi, [esp+10h+arg_0]
lea	ecx, [ecx+0]
cmp	[esp+10h+arg_8], 0
jz	short loc_1002C89A
mov	eax, [esi+8]
push	ebp
push	0
push	eax
call	sub_10016B90
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002C8AC
test	edi, edi
jz	short loc_1002C8AC
mov	ecx, [esp+10h+arg_4]
mov	edx, [esi+8]
push	ecx
push	edx
call	edi
add	esp, 8
			
mov	esi, [esi]
test	esi, esi
jnz	short loc_1002C880
pop	edi
push	ebx
call	PK11_FreeSlotList
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
			
sub	esp, 0Ch
push	edi
push	0
push	0
push	0
mov	[esp+1Ch+var_C], 102h
mov	[esp+1Ch+var_8], 0
mov	[esp+1Ch+var_4], 0
call	SECITEM_AllocItem_Util
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_1002C905
pop	edi
add	esp, 0Ch
retn
mov	ecx, [esp+10h+arg_4]
mov	edx, [esp+10h+arg_0]
push	esi
push	1
lea	eax, [esp+18h+var_C]
push	eax
push	ecx
push	edx
push	0
call	sub_1002A310
mov	esi, eax
add	esp, 14h
test	esi, esi
jz	short loc_1002C946
push	1
push	edi
call	SECITEM_FreeItem_Util
push	esi
call	sub_1001AFB0
push	eax
call	PORT_SetError_Util
add	esp, 10h
pop	esi
xor	eax, eax
pop	edi
add	esp, 0Ch
retn
mov	eax, [esp+14h+var_8]
mov	[edi+4], eax
mov	ecx, [esp+14h+var_4]
pop	esi
mov	[edi+8], ecx
mov	eax, edi
pop	edi
add	esp, 0Ch
retn
align 10h
public PK11_LinkGenericObject
mov	eax, [esp+arg_4]
mov	ecx, [eax]
test	ecx, ecx
jz	short loc_1002C970
mov	edx, [eax+4]
mov	[ecx+4], edx
mov	ecx, [eax+4]
test	ecx, ecx
jz	short loc_1002C97B
mov	edx, [eax]
mov	[ecx], edx
mov	ecx, [esp+arg_0]
mov	dword ptr [eax+4], 0
mov	[eax], ecx
mov	edx, [ecx+4]
mov	[eax+4], edx
mov	[ecx+4], eax
mov	ecx, [eax+4]
test	ecx, ecx
jz	short loc_1002C99A
mov	[ecx], eax
xor	eax, eax
retn
align 10h
public PK11_FindGenericObjects
sub	esp, 14h
push	ebp
push	edi
lea	ecx, [esp+1Ch+var_14]
push	ecx
lea	eax, [esp+20h+arg_4]
push	1
lea	edx, [esp+24h+var_C]
mov	[esp+24h+var_8], eax
mov	eax, [esp+24h+arg_0]
push	edx
xor	edi, edi
push	eax
xor	ebp, ebp
mov	[esp+2Ch+var_14], edi
mov	[esp+2Ch+var_C], edi
mov	[esp+2Ch+var_4], 4
call	sub_1002C5B0
add	esp, 10h
mov	[esp+1Ch+var_10], eax
cmp	eax, edi
jnz	short loc_1002C9EA
pop	edi
xor	eax, eax
pop	ebp
add	esp, 14h
retn
push	ebx
xor	ebx, ebx
push	esi
cmp	[esp+24h+var_14], edi
jle	short loc_1002CA51
push	10h
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1002CA64
mov	ecx, [esp+24h+arg_0]
push	ecx
call	PK11_ReferenceSlot
mov	edx, [esp+28h+var_10]
xor	ecx, ecx
mov	[esi+8], eax
mov	eax, [edx+ebx*4]
add	esp, 4
mov	[esi+0Ch], eax
mov	[esi+4], ecx
mov	[esi], ecx
cmp	ebp, ecx
jnz	short loc_1002CA2D
mov	ebp, esi
jmp	short loc_1002CA44
mov	[esi+4], ecx
mov	[esi], edi
mov	edx, [edi+4]
mov	[esi+4], edx
mov	[edi+4], esi
mov	eax, [esi+4]
cmp	eax, ecx
jz	short loc_1002CA44
mov	[eax], esi
			
inc	ebx
mov	edi, esi
cmp	ebx, [esp+24h+var_14]
jl	short loc_1002C9F4
mov	eax, [esp+24h+var_10]
push	eax
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	ebx
pop	edi
mov	eax, ebp
pop	ebp
add	esp, 14h
retn
test	ebp, ebp
jz	short loc_1002CA71
push	ebp
call	PK11_DestroyGenericObjects
add	esp, 4
mov	eax, [esp+24h+var_10]
push	eax
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	ebx
pop	edi
xor	eax, eax
pop	ebp
add	esp, 14h
retn
align 10h
push	ebx
push	edi
push	200h
call	PORT_NewArena_Util
mov	ebx, eax
xor	edi, edi
add	esp, 4
cmp	ebx, edi
jnz	short loc_1002CAAC
pop	edi
xor	eax, eax
pop	ebx
retn
push	esi
push	70h
push	ebx
call	PORT_ArenaAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, edi
jz	short loc_1002CB16
mov	[esi], ebx
mov	[esi+4], edi
mov	[esi+8], edi
mov	[esi+0Ch], edi
mov	[esi+10h], edi
mov	[esi+14h], edi
mov	[esi+18h], edi
mov	[esi+1Ch], edi
mov	[esi+2Ch], edi
mov	[esi+28h], edi
mov	[esi+30h], edi
mov	[esi+34h], edi
mov	dword ptr [esi+24h], 1
mov	[esi+40h], edi
mov	[esi+44h], edi
mov	[esi+48h], edi
mov	[esi+4Ch], edi
mov	[esi+50h], edi
mov	[esi+54h], edi
mov	[esi+58h], edi
mov	[esi+5Ch], edi
mov	[esi+60h], edi
mov	[esi+64h], edi
mov	[esi+68h], edi
call	ds:PR_NewLock
mov	[esi+20h], eax
cmp	eax, edi
jnz	short loc_1002CB26
push	edi
push	ebx
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	edi
xor	eax, eax
pop	ebx
retn
mov	eax, esi
pop	esi
pop	edi
pop	ebx
retn
align 10h
public SECMOD_CreateModule
			
push	esi
call	sub_1002CA90
mov	esi, eax
test	esi, esi
jnz	short loc_1002CB3E
pop	esi
retn
mov	eax, [esp+4+arg_4]
test	eax, eax
jnz	short loc_1002CB4B
mov	eax, offset byte_100A1623
push	eax
mov	eax, [esi]
push	eax
call	PORT_ArenaStrdup_Util
mov	[esi+14h], eax
mov	eax, [esp+0Ch+arg_0]
add	esp, 8
test	eax, eax
jz	short loc_1002CB71
mov	ecx, [esi]
push	eax
push	ecx
call	PORT_ArenaStrdup_Util
add	esp, 8
mov	[esi+10h], eax
mov	eax, [esp+4+arg_8]
test	eax, eax
jz	short loc_1002CB88
mov	edx, [esi]
push	eax
push	edx
call	PORT_ArenaStrdup_Util
add	esp, 8
mov	[esi+48h], eax
push	ebx
push	edi
mov	edi, [esp+0Ch+arg_C]
push	edi
push	offset aInternal 
push	offset aFlags	
call	NSSUTIL_ArgHasFlag
push	edi
push	offset aFips	
push	offset aFlags	
mov	[esi+4], eax
call	NSSUTIL_ArgHasFlag
push	edi
push	offset aCritical 
push	offset aFlags	
mov	[esi+0Ch], eax
call	NSSUTIL_ArgHasFlag
push	edi
push	offset aSlotparams 
mov	[esi+54h], eax
call	NSSUTIL_ArgGetParamValue
mov	ecx, [esi]
mov	ebx, eax
lea	eax, [esi+34h]
push	eax
push	ebx
push	ecx
call	NSSUTIL_ArgParseSlotInfo
add	esp, 38h
mov	[esi+30h], eax
test	ebx, ebx
jz	short loc_1002CBF4
push	ebx
call	PORT_Free_Util
add	esp, 4
push	0
push	32h
push	edi
push	offset aTrustorder 
call	NSSUTIL_ArgReadLong
push	0
push	0
push	edi
push	offset aCipherorder 
mov	[esi+60h], eax
call	NSSUTIL_ArgReadLong
push	edi
push	offset aModuledb 
push	offset aFlags	
mov	[esi+64h], eax
call	NSSUTIL_ArgHasFlag
push	edi
push	offset aModuledbonly 
push	offset aFlags	
mov	[esi+58h], eax
call	NSSUTIL_ArgHasFlag
add	esp, 38h
mov	[esi+5Ch], eax
test	eax, eax
jz	short loc_1002CC4C
mov	dword ptr [esi+58h], 1
cmp	dword ptr [esi+58h], 0
jz	short loc_1002CC8D
push	edi
push	offset aSkipfirst 
push	offset aFlags	
mov	bl, 1
call	NSSUTIL_ArgHasFlag
add	esp, 0Ch
test	eax, eax
jz	short loc_1002CC6D
mov	bl, 3
push	edi
push	offset aDefaultmoddb 
push	offset aFlags	
call	NSSUTIL_ArgHasFlag
add	esp, 0Ch
test	eax, eax
jz	short loc_1002CC87
or	bl, 4
movsx	edx, bl
mov	[esi+58h], edx
cmp	dword ptr [esi+4], 0
jz	short loc_1002CCB4
push	edi
push	offset aInternalkeyslo 
push	offset aFlags	
mov	bl, 1
call	NSSUTIL_ArgHasFlag
add	esp, 0Ch
test	eax, eax
jz	short loc_1002CCAE
mov	bl, 3
movsx	eax, bl
mov	[esi+4], eax
push	edi
push	offset aCiphers	
call	NSSUTIL_ArgGetParamValue
mov	edi, eax
lea	ecx, [esi+40h]
push	edi
push	ecx
call	NSSUTIL_ArgParseCipherFlags
add	esp, 10h
test	edi, edi
jz	short loc_1002CCDB
push	edi
call	PORT_Free_Util
add	esp, 4
inc	dword_100BAE00
pop	edi
pop	ebx
mov	eax, esi
pop	esi
retn
align 10h
public SECMOD_GetSkipFirstFlag
mov	eax, [esp+arg_0]
movsx	eax, byte ptr [eax+58h]
and	eax, 2
shr	eax, 1
retn
align 10h
public SECMOD_GetDefaultModDBFlag
			
mov	eax, [esp+arg_0]
movsx	eax, byte ptr [eax+58h]
and	eax, 4
shr	eax, 2
retn
align 10h
			
mov	eax, [esp+arg_0]
movsx	eax, byte ptr [eax+4]
and	eax, 2
shr	eax, 1
retn
align 10h
cmp	[esp+arg_4], 0
mov	ecx, [esp+arg_0]
mov	al, [ecx+4]
jz	short loc_1002CD37
or	al, 2
movsx	eax, al
mov	[ecx+4], eax
retn
and	al, 0FDh
movsx	edx, al
mov	[ecx+4], edx
retn
			
push	ecx
push	ebx
push	ebp
mov	ebp, [esp+0Ch+arg_C]
push	esi
push	edi
push	22h
push	ebp
mov	esi, eax
call	NSSUTIL_EscapeSize
lea	ebx, [eax-1]
mov	eax, ebp
add	esp, 8
lea	edi, [eax+1]
mov	edi, edi
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_1002CD60
sub	eax, edi
mov	edi, ebx
sub	edi, eax
test	edi, edi
jle	short loc_1002CDB7
mov	eax, [esp+14h+arg_0]
mov	ecx, [eax]
imul	ecx, edi
push	ecx
push	esi
call	PORT_Realloc_Util
add	esp, 8
mov	[esp+14h+var_4], eax
test	eax, eax
jnz	short loc_1002CD94
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
mov	ecx, [esp+14h+arg_0]
add	[ecx], edi
push	22h
push	ebp
mov	esi, eax
call	NSSUTIL_Escape
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_1002CDB7
mov	eax, [esp+14h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
			
mov	edx, [esp+14h+Size]
mov	eax, [esp+14h+Src]
push	edx		
push	eax		
push	esi		
call	memcpy
add	esi, [esp+20h+Size]
push	ebx		
mov	byte ptr [esi],	22h
inc	esi
push	ebp		
push	esi		
call	memcpy
add	esp, 18h
mov	byte ptr [esi+ebx], 22h
test	edi, edi
jle	short loc_1002CDEB
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	edi
lea	eax, [esi+ebx+1]
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
sub	esp, 1Ch
push	ebx
push	ebp
mov	ebp, [esp+24h+Src]
mov	eax, ebp
push	edi
lea	ecx, [eax+1]
nop
mov	dl, [eax]
inc	eax
test	dl, dl
jnz	short loc_1002CE10
sub	eax, ecx
add	eax, 2
push	eax
mov	[esp+2Ch+var_14], eax
call	PORT_Alloc_Util
xor	edi, edi
mov	ebx, eax
add	esp, 4
mov	[esp+28h+Dst], ebx
mov	[esp+28h+var_1C], ebx
mov	[esp+28h+var_C], edi
mov	[esp+28h+var_8], edi
mov	[esp+28h+var_10], edi
cmp	ebx, edi
jnz	short loc_1002CE4E
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 1Ch
retn
mov	eax, [esp+28h+arg_C]
mov	[eax], edi
mov	eax, [esp+28h+arg_10]
cmp	eax, edi
jz	short loc_1002CE5E
mov	[eax], edi
push	esi
push	ebp
call	NSSUTIL_ArgStrip
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jbe	short loc_1002CE89
mov	ebx, esi
sub	ebx, ebp
push	ebx		
push	ebp		
mov	ebp, [esp+34h+Dst]
push	ebp		
call	memcpy
add	esp, 0Ch
add	ebx, ebp
mov	[esp+2Ch+var_1C], ebx
mov	ebx, ebp
cmp	byte ptr [esi],	0
jz	loc_1002D130
push	7
push	offset aTokens	
push	esi
mov	ebp, esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002CED4
mov	eax, [esp+2Ch+var_C]
add	esi, 7
test	eax, eax
jz	short loc_1002CEBC
push	eax
call	PORT_Free_Util
add	esp, 4
lea	ecx, [esp+2Ch+Src]
push	ecx
push	esi
call	NSSUTIL_ArgFetchValue
add	esp, 8
add	esi, [esp+2Ch+Src]
mov	[esp+2Ch+var_C], eax
jmp	short loc_1002CF13
push	17h
push	offset aCryptotokendes 
push	esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002CF15
add	esi, 17h
test	edi, edi
jz	short loc_1002CEF8
push	edi
call	PORT_Free_Util
add	esp, 4
lea	edx, [esp+2Ch+Src]
push	edx
push	esi
call	NSSUTIL_ArgFetchValue
add	esi, [esp+34h+Src]
add	esp, 8
cmp	[esp+2Ch+arg_0], 0
mov	edi, eax
jz	short loc_1002CF15
mov	ebp, esi
			
push	16h
push	offset aCryptoslotdesc 
push	esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002CF56
add	esi, 16h
test	edi, edi
jz	short loc_1002CF39
push	edi
call	PORT_Free_Util
add	esp, 4
lea	eax, [esp+2Ch+Src]
push	eax
push	esi
call	NSSUTIL_ArgFetchValue
add	esi, [esp+34h+Src]
add	esp, 8
cmp	[esp+2Ch+arg_0], 0
mov	edi, eax
jz	short loc_1002CF56
mov	ebp, esi
			
push	13h
push	offset aDbtokendescrip 
push	esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002CFBE
add	esi, 13h
test	edi, edi
jz	short loc_1002CF7A
push	edi
call	PORT_Free_Util
add	esp, 4
lea	ecx, [esp+2Ch+Src]
push	ecx
push	esi
call	NSSUTIL_ArgFetchValue
add	esi, [esp+34h+Src]
add	esp, 8
cmp	[esp+2Ch+arg_0], 0
mov	edi, eax
jz	short loc_1002CFBE
mov	ebx, [esp+2Ch+arg_4]
mov	ebp, esi
test	ebx, ebx
jnz	short loc_1002CFC2
mov	eax, [esp+2Ch+var_1C]
push	edi
push	11h
lea	edx, [esp+34h+var_14]
push	offset aTokendescripti 
push	edx
call	sub_1002CD40
add	esp, 10h
mov	[esp+2Ch+var_1C], eax
jmp	short loc_1002CFC2
			
mov	ebx, [esp+2Ch+arg_4]
			
push	12h
push	offset aDbslotdescript 
push	esi
call	PL_strncasecmp
add	esp, 0Ch
test	eax, eax
add	esi, 12h