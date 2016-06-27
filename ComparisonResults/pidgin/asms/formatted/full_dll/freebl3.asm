assume cs:_text

assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
public FREEBL_GetVector
push	ecx
movsx	eax, ds:byte_10039178
movsx	ecx, ds:byte_10039140
add	eax, ecx
mov	[esp+4+var_1], al
mov	eax, offset dword_100391A8
pop	ecx
retn
align 10h
			
sub	esp, 10h
push	esi
mov	esi, [esp+14h+Src]
test	esi, esi
jnz	short loc_10001033
xor	eax, eax
pop	esi
add	esp, 10h
retn
lea	eax, [esp+14h+PerformanceCount]
push	eax		
call	ds:QueryPerformanceCounter
test	eax, eax
jz	short loc_10001052
mov	ecx, dword ptr [esp+14h+PerformanceCount+4]
mov	edx, dword ptr [esp+14h+PerformanceCount]
mov	[esp+14h+var_10], ecx
mov	[esp+14h+Src], edx
push	edi
mov	edi, esi
cmp	esi, 4
jb	short loc_1000105F
mov	edi, 4
push	ebp
mov	ebp, [esp+1Ch+Dst]
push	edi		
lea	eax, [esp+20h+Src]
push	eax		
push	ebp		
call	memcpy
add	esp, 0Ch
sub	esi, edi
jnz	short loc_10001080
pop	ebp
mov	eax, edi
pop	edi
pop	esi
add	esp, 10h
retn
push	ebx
mov	ebx, esi
cmp	esi, 4
jb	short loc_1000108D
mov	ebx, 4
push	ebx		
lea	ecx, [esp+24h+var_10]
push	ecx		
lea	edx, [edi+ebp]
push	edx		
call	memcpy
add	esp, 0Ch
add	edi, ebx
sub	esi, ebx
jz	short loc_100010D3
call	ds:GetTickCount
mov	[esp+20h+Src], eax
mov	ebx, esi
cmp	esi, 4
jb	short loc_100010BB
mov	ebx, 4
push	ebx		
lea	eax, [esp+24h+Src]
push	eax		
lea	ecx, [edi+ebp]
push	ecx		
call	memcpy
add	esp, 0Ch
add	edi, ebx
sub	esi, ebx
jnz	short loc_100010DD
pop	ebx
pop	ebp
mov	eax, edi
pop	edi
pop	esi
add	esp, 10h
retn
lea	edx, [esp+20h+Time]
push	edx		
call	ds:time
add	esp, 4
cmp	esi, 4
jb	short loc_100010F5
mov	esi, 4
push	esi		
lea	eax, [esp+24h+Time]
push	eax		
lea	ecx, [edi+ebp]
push	ecx		
call	memcpy
add	esp, 0Ch
pop	ebx
pop	ebp
lea	eax, [esi+edi]
pop	edi
pop	esi
add	esp, 10h
retn
align 10h
			
			
sub	esp, 1C8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+1C8h+var_4], eax
lea	eax, [esp+1C8h+FileSystemNameBuffer]
push	14h		
push	eax		
call	sub_10001020
push	eax		
lea	ecx, [esp+1D4h+FileSystemNameBuffer]
push	ecx		
call	sub_1000CA80
add	esp, 10h
lea	edx, [esp+1C8h+Buffer]
push	edx		
mov	[esp+1CCh+Buffer.dwLength], 20h
call	ds:GlobalMemoryStatus
lea	eax, [esp+1C8h+Buffer]
push	20h		
push	eax		
call	sub_1000CA80
add	esp, 8
call	ds:GetLogicalDrives
lea	ecx, [esp+1C8h+var_1C8]
push	4		
push	ecx		
mov	[esp+1D0h+var_1C8], eax
call	sub_1000CA80
add	esp, 8
lea	edx, [esp+1C8h+var_1C8]
push	edx		
lea	eax, [esp+1CCh+FileSystemNameBuffer]
push	eax		
mov	[esp+1D0h+var_1C8], 100h
call	ds:GetComputerNameA
test	eax, eax
jz	short loc_100011B4
mov	ecx, [esp+1C8h+var_1C8]
push	ecx		
lea	edx, [esp+1CCh+FileSystemNameBuffer]
push	edx		
call	sub_1000CA80
add	esp, 8
call	ds:GetCurrentProcess
mov	[esp+1C8h+Src],	eax
lea	eax, [esp+1C8h+Src]
push	4		
push	eax		
call	sub_1000CA80
add	esp, 8
call	ds:GetCurrentProcessId
lea	ecx, [esp+1C8h+var_1C8]
push	4		
push	ecx		
mov	[esp+1D0h+var_1C8], eax
call	sub_1000CA80
add	esp, 8
call	ds:GetCurrentThreadId
lea	edx, [esp+1C8h+var_1C8]
push	4		
push	edx		
mov	[esp+1D0h+var_1C8], eax
call	sub_1000CA80
add	esp, 8
push	100h		
lea	eax, [esp+1CCh+FileSystemNameBuffer]
push	eax		
lea	ecx, [esp+1D0h+FileSystemFlags]
push	ecx		
lea	edx, [esp+1D4h+MaximumComponentLength]
push	edx		
lea	eax, [esp+1D8h+VolumeSerialNumber]
push	eax		
push	80h		
lea	ecx, [esp+1E0h+VolumeNameBuffer]
push	ecx		
push	0		
mov	[esp+1E8h+VolumeNameBuffer], 0
mov	[esp+1E8h+FileSystemNameBuffer], 0
call	ds:GetVolumeInformationA
lea	eax, [esp+1C8h+VolumeNameBuffer]
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10001242
sub	eax, edx
push	eax		
lea	edx, [esp+1CCh+VolumeNameBuffer]
push	edx		
call	sub_1000CA80
lea	eax, [esp+1D0h+VolumeSerialNumber]
push	4		
push	eax		
call	sub_1000CA80
lea	ecx, [esp+1D8h+MaximumComponentLength]
push	4		
push	ecx		
call	sub_1000CA80
lea	edx, [esp+1E0h+FileSystemFlags]
push	4		
push	edx		
call	sub_1000CA80
lea	eax, [esp+1E8h+FileSystemNameBuffer]
add	esp, 20h
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10001287
sub	eax, edx
push	eax		
lea	eax, [esp+1CCh+FileSystemNameBuffer]
push	eax		
call	sub_1000CA80
add	esp, 8
lea	ecx, [esp+1C8h+TotalNumberOfClusters]
push	ecx		
lea	edx, [esp+1CCh+NumberOfFreeClusters]
push	edx		
lea	eax, [esp+1D0h+BytesPerSector]
push	eax		
lea	ecx, [esp+1D4h+SectorsPerCluster]
push	ecx		
push	0		
call	ds:GetDiskFreeSpaceA
test	eax, eax
jz	short loc_100012F1
lea	edx, [esp+1C8h+SectorsPerCluster]
push	4		
push	edx		
call	sub_1000CA80
lea	eax, [esp+1D0h+BytesPerSector]
push	4		
push	eax		
call	sub_1000CA80
lea	ecx, [esp+1D8h+NumberOfFreeClusters]
push	4		
push	ecx		
call	sub_1000CA80
lea	edx, [esp+1E0h+TotalNumberOfClusters]
push	4		
push	edx		
call	sub_1000CA80
add	esp, 20h
lea	eax, [esp+1C8h+FileSystemNameBuffer]
push	14h		
push	eax		
call	sub_10001020
push	eax		
lea	ecx, [esp+1D4h+FileSystemNameBuffer]
push	ecx		
call	sub_1000CA80
mov	ecx, [esp+1D8h+var_4]
add	esp, 10h
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 1C8h
retn
			
mov	eax, [esp+arg_0]
push	esi
push	edi
mov	edi, [esp+8+arg_4]
push	edi
push	eax
xor	esi, esi
call	ds:SystemFunction036
test	al, al
mov	eax, edi
jnz	short loc_1000133C
mov	eax, esi
pop	edi
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
xor	ecx, ecx
mov	[eax+40h], ecx
mov	[eax+44h], ecx
mov	dword ptr [eax+48h], 67452301h
mov	dword ptr [eax+4Ch], 0EFCDAB89h
mov	dword ptr [eax+50h], 98BADCFEh
mov	dword ptr [eax+54h], 10325476h
mov	dword ptr [eax+58h], 0C3D2E1F0h
retn
mov	eax, [esp+arg_0]
mov	edx, [eax+48h]
mov	ecx, [esp+arg_4]
bswap	edx
mov	[ecx], edx
mov	edx, [eax+4Ch]
bswap	edx
mov	[ecx+4], edx
mov	edx, [eax+50h]
bswap	edx
mov	[ecx+8], edx
mov	edx, [eax+54h]
bswap	edx
mov	[ecx+0Ch], edx
mov	eax, [eax+58h]
bswap	eax
mov	[ecx+10h], eax
mov	eax, [esp+arg_8]
test	eax, eax
jz	short locret_100013AD
mov	dword ptr [eax], 14h
retn
align 10h
			
sub	esp, 14h
mov	edx, [eax-2Ch]
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [eax-28h]
mov	esi, [eax-24h]
mov	ebx, [eax-20h]
mov	ebp, [eax-1Ch]
mov	[esp+24h+var_4], ebp
mov	ebp, [ecx]
mov	[esp+24h+var_C], ebx
xor	ebx, esi
and	ebx, edi
xor	ebx, [esp+24h+var_C]
bswap	ebp
mov	[eax-18h], ebp
mov	[esp+24h+var_8], esi
mov	esi, [eax-18h]
add	esi, [esp+24h+var_4]
mov	ebp, edx
rol	ebp, 5
add	ebp, ebx
mov	ebx, [ecx+4]
lea	esi, [esi+ebp+5A827999h]
mov	ebp, [esp+24h+var_8]
bswap	ebx
mov	[eax-14h], ebx
rol	edi, 1Eh
xor	ebp, edi
and	ebp, edx
xor	ebp, [esp+24h+var_8]
mov	[esp+24h+var_10], edi
mov	edi, [eax-14h]
add	edi, [esp+24h+var_C]
mov	ebx, esi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_10]
lea	edi, [edi+ebx+5A827999h]
mov	ebx, [ecx+8]
rol	edx, 1Eh
xor	ebp, edx
and	ebp, esi
xor	ebp, [esp+24h+var_10]
bswap	ebx
mov	[eax-10h], ebx
mov	[esp+24h+var_14], edx
mov	edx, [eax-10h]
add	edx, [esp+24h+var_8]
mov	ebx, edi
rol	ebx, 5
add	ebx, ebp
rol	esi, 1Eh
lea	edx, [edx+ebx+5A827999h]
mov	ebx, [ecx+0Ch]
mov	[esp+24h+var_4], esi
mov	ebp, esi
mov	esi, [esp+24h+var_14]
xor	ebp, esi
bswap	ebx
mov	[eax-0Ch], ebx
and	ebp, edi
xor	ebp, esi
mov	esi, [eax-0Ch]
add	esi, [esp+24h+var_10]
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_4]
lea	esi, [esi+ebx+5A827999h]
mov	ebx, [ecx+10h]
rol	edi, 1Eh
bswap	ebx
mov	[eax-8], ebx
xor	ebp, edi
mov	ebx, esi
and	ebp, edx
rol	ebx, 5
xor	ebp, [esp+24h+var_4]
mov	[esp+24h+var_C], edi
add	ebx, ebp
mov	edi, [eax-8]
add	edi, [esp+24h+var_14]
mov	ebp, [esp+24h+var_C]
lea	edi, [edi+ebx+5A827999h]
mov	ebx, [ecx+14h]
bswap	ebx
mov	[eax-4], ebx
rol	edx, 1Eh
xor	ebp, edx
and	ebp, esi
xor	ebp, [esp+24h+var_C]
mov	[esp+24h+var_8], edx
mov	edx, [eax-4]
add	edx, [esp+24h+var_4]
mov	ebx, edi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_8]
lea	edx, [edx+ebx+5A827999h]
mov	ebx, [ecx+18h]
bswap	ebx
mov	[eax], ebx
rol	esi, 1Eh
xor	ebp, esi
and	ebp, edi
xor	ebp, [esp+24h+var_8]
mov	[esp+24h+var_10], esi
mov	esi, [eax]
add	esi, [esp+24h+var_C]
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_10]
lea	esi, [esi+ebx+5A827999h]
mov	ebx, [ecx+1Ch]
bswap	ebx
mov	[eax+4], ebx
rol	edi, 1Eh
xor	ebp, edi
and	ebp, edx
xor	ebp, [esp+24h+var_10]
mov	[esp+24h+var_14], edi
mov	edi, [eax+4]
add	edi, [esp+24h+var_8]
mov	ebx, esi
rol	ebx, 5
add	ebx, ebp
rol	edx, 1Eh
lea	edi, [edi+ebx+5A827999h]
mov	ebx, [ecx+20h]
mov	[esp+24h+var_4], edx
bswap	ebx
mov	[eax+8], ebx
mov	ebp, edx
mov	edx, [esp+24h+var_14]
xor	ebp, edx
and	ebp, esi
xor	ebp, edx
mov	edx, [eax+8]
add	edx, [esp+24h+var_10]
mov	ebx, edi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_4]
rol	esi, 1Eh
lea	edx, [edx+ebx+5A827999h]
mov	ebx, [ecx+24h]
xor	ebp, esi
bswap	ebx
mov	[eax+0Ch], ebx
mov	[esp+24h+var_C], esi
mov	esi, [eax+0Ch]
add	esi, [esp+24h+var_14]
and	ebp, edi
xor	ebp, [esp+24h+var_4]
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
lea	esi, [esi+ebx+5A827999h]
rol	edi, 1Eh
mov	ebx, [ecx+28h]
mov	ebp, [esp+24h+var_C]
xor	ebp, edi
and	ebp, edx
xor	ebp, [esp+24h+var_C]
bswap	ebx
mov	[eax+10h], ebx
mov	[esp+24h+var_8], edi
mov	edi, [eax+10h]
add	edi, [esp+24h+var_4]
mov	ebx, esi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_8]
lea	edi, [edi+ebx+5A827999h]
mov	ebx, [ecx+2Ch]
bswap	ebx
mov	[eax+14h], ebx
rol	edx, 1Eh
xor	ebp, edx
and	ebp, esi
xor	ebp, [esp+24h+var_8]
mov	[esp+24h+var_10], edx
mov	edx, [eax+14h]
add	edx, [esp+24h+var_C]
mov	ebx, edi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_10]
lea	edx, [edx+ebx+5A827999h]
mov	ebx, [ecx+30h]
bswap	ebx
mov	[eax+18h], ebx
rol	esi, 1Eh
xor	ebp, esi
and	ebp, edi
xor	ebp, [esp+24h+var_10]
mov	[esp+24h+var_14], esi
mov	esi, [eax+18h]
add	esi, [esp+24h+var_8]
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
lea	esi, [esi+ebx+5A827999h]
mov	ebx, [ecx+34h]
rol	edi, 1Eh
bswap	ebx
mov	[eax+1Ch], ebx
mov	[esp+24h+var_4], edi
mov	ebp, edi
mov	edi, [esp+24h+var_14]
xor	ebp, edi
and	ebp, edx
xor	ebp, edi
mov	edi, [eax+1Ch]
add	edi, [esp+24h+var_10]
mov	ebx, esi
rol	ebx, 5
add	ebx, ebp
mov	ebp, [esp+24h+var_4]
lea	edi, [edi+ebx+5A827999h]
mov	ebx, [ecx+38h]
rol	edx, 1Eh
xor	ebp, edx
bswap	ebx
mov	[eax+20h], ebx
and	ebp, esi
xor	ebp, [esp+24h+var_4]
mov	[esp+24h+var_C], edx
mov	edx, [eax+20h]
add	edx, [esp+24h+var_14]
mov	ecx, [ecx+3Ch]
mov	ebx, edi
rol	ebx, 5
add	ebx, ebp
lea	edx, [edx+ebx+5A827999h]
bswap	ecx
mov	ebx, edx
rol	esi, 1Eh
mov	[eax+24h], ecx
rol	ebx, 5
mov	ecx, [esp+24h+var_C]
mov	ebp, ecx
xor	ebp, esi
and	ebp, edi
xor	ebp, ecx
mov	ecx, [eax+24h]
add	ecx, [esp+24h+var_4]
add	ebx, ebp
rol	edi, 1Eh
lea	ecx, [ecx+ebx+5A827999h]
mov	ebx, [eax+1Ch]
mov	ebp, [eax-18h]
xor	ebx, ebp
mov	ebp, [eax-10h]
xor	ebp, ebx
mov	ebx, [eax+8]
xor	ebx, ebp
mov	[esp+24h+var_10], edi
rol	ebx, 1
mov	[eax-18h], ebx
mov	ebp, esi
xor	ebp, edi
mov	edi, [eax-18h]
add	edi, [esp+24h+var_C]
and	ebp, edx
xor	ebp, esi
mov	ebx, ecx
rol	ebx, 5
add	ebx, ebp
lea	ebx, [edi+ebx+5A827999h]
mov	edi, [eax+20h]
mov	ebp, [eax-14h]
xor	edi, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edi
mov	edi, [eax+0Ch]
xor	edi, ebp
mov	ebp, [esp+24h+var_10]
rol	edx, 1Eh
xor	ebp, edx
rol	edi, 1
mov	[eax-14h], edi
and	ebp, ecx
xor	ebp, [esp+24h+var_10]
mov	[esp+24h+var_14], edx
mov	edx, [eax-14h]
add	edx, esi
mov	edi, ebx
rol	edi, 5
add	edi, ebp
lea	esi, [edx+edi+5A827999h]
mov	edx, [eax-10h]
mov	edi, [eax+24h]
xor	edx, edi
mov	edi, [eax+10h]
xor	edi, edx
mov	edx, [eax-8]
xor	edx, edi
rol	ecx, 1Eh
rol	edx, 1
mov	[eax-10h], edx
mov	edx, [esp+24h+var_14]
mov	ebp, ecx
xor	ebp, edx
and	ebp, ebx
xor	ebp, edx
mov	edx, [eax-10h]
add	edx, [esp+24h+var_10]
mov	edi, esi
rol	edi, 5
add	edi, ebp
lea	edi, [edx+edi+5A827999h]
mov	edx, [eax-18h]
mov	ebp, [eax+14h]
xor	edx, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edx
mov	edx, [eax-4]
rol	ebx, 1Eh
mov	[esp+24h+var_C], ebx
xor	edx, ebp
rol	edx, 1
mov	[eax-0Ch], edx
mov	edx, edi
rol	edx, 5
mov	ebp, ecx
xor	ebp, ebx
mov	ebx, [eax-0Ch]
add	ebx, [esp+24h+var_14]
and	ebp, esi
xor	ebp, ecx
add	edx, ebp
lea	edx, [ebx+edx+5A827999h]
mov	ebx, [eax+18h]
mov	ebp, [eax-14h]
xor	ebx, ebp
mov	ebp, [eax-8]
xor	ebp, ebx
mov	ebx, [eax]
xor	ebx, ebp
mov	ebp, [esp+24h+var_C]
rol	esi, 1Eh
xor	ebp, esi
xor	ebp, edi
rol	ebx, 1
mov	[eax-8], ebx
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax-8]
add	ebp, ecx
lea	ecx, [ebx+ebp+6ED9EBA1h]
mov	ebx, [eax+1Ch]
mov	ebp, [eax-10h]
xor	ebx, ebp
mov	ebp, [eax-4]
xor	ebp, ebx
mov	ebx, [eax+4]
xor	ebx, ebp
rol	edi, 1Eh
rol	ebx, 1
mov	[eax-4], ebx
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
mov	ebx, ecx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax-4]
add	ebp, [esp+24h+var_C]
rol	edx, 1Eh
mov	[esp+24h+var_14], edx
mov	edx, [eax-0Ch]
lea	ebx, [ebx+ebp+6ED9EBA1h]
mov	ebp, [eax+20h]
xor	edx, ebp
mov	ebp, [eax+8]
xor	ebp, edx
mov	edx, [eax]
xor	edx, ebp
rol	edx, 1
mov	[eax], edx
mov	[esp+24h+var_10], edi
mov	ebp, ecx
xor	ebp, edi
mov	edi, ebp
mov	ebp, [esp+24h+var_14]
xor	edi, ebp
mov	edx, ebx
rol	edx, 5
add	edx, edi
mov	edi, [eax]
add	edi, esi
lea	esi, [edi+edx+6ED9EBA1h]
mov	edx, [eax+0Ch]
mov	edi, [eax+24h]
xor	edx, edi
mov	edi, [eax-8]
rol	ecx, 1Eh
xor	edi, edx
mov	edx, [eax+4]
xor	edx, edi
rol	edx, 1
mov	[eax+4], edx
mov	edi, ecx
xor	edi, ebx
xor	edi, ebp
mov	edx, esi
rol	edx, 5
add	edx, edi
mov	edi, [eax+4]
add	edi, [esp+24h+var_10]
rol	ebx, 1Eh
lea	edi, [edi+edx+6ED9EBA1h]
mov	edx, [eax-18h]
mov	ebp, [eax+10h]
xor	edx, ebp
mov	ebp, [eax+8]
xor	ebp, edx
mov	edx, [eax-4]
xor	edx, ebp
mov	[esp+24h+var_C], ebx
rol	edx, 1
mov	[eax+8], edx
mov	ebp, ecx
xor	ebp, ebx
mov	ebx, [eax+8]
add	ebx, [esp+24h+var_14]
xor	ebp, esi
mov	edx, edi
rol	edx, 5
add	edx, ebp
lea	edx, [ebx+edx+6ED9EBA1h]
mov	ebx, [eax+14h]
mov	ebp, [eax-14h]
xor	ebx, ebp
mov	ebp, [eax+0Ch]
xor	ebp, ebx
mov	ebx, [eax]
xor	ebx, ebp
mov	ebp, [esp+24h+var_C]
rol	esi, 1Eh
rol	ebx, 1
mov	[eax+0Ch], ebx
xor	ebp, esi
xor	ebp, edi
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax+0Ch]
add	ebp, ecx
lea	ecx, [ebx+ebp+6ED9EBA1h]
mov	ebx, [eax-10h]
mov	ebp, [eax+18h]
xor	ebx, ebp
mov	ebp, [eax+10h]
xor	ebp, ebx
mov	ebx, [eax+4]
xor	ebx, ebp
rol	edi, 1Eh
rol	ebx, 1
mov	[eax+10h], ebx
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
mov	ebx, ecx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax+10h]
add	ebp, [esp+24h+var_C]
rol	edx, 1Eh
mov	[esp+24h+var_14], edx
mov	edx, [eax+1Ch]
lea	ebx, [ebx+ebp+6ED9EBA1h]
mov	ebp, [eax+14h]
xor	edx, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edx
mov	edx, [eax+8]
xor	edx, ebp
mov	[esp+24h+var_10], edi
rol	edx, 1
mov	[eax+14h], edx
mov	edx, ebx
rol	edx, 5
mov	ebp, ecx
xor	ebp, edi
mov	edi, ebp
mov	ebp, [esp+24h+var_14]
xor	edi, ebp
add	edx, edi
mov	edi, [eax+14h]
add	edi, esi
lea	esi, [edi+edx+6ED9EBA1h]
mov	edx, [eax+18h]
mov	edi, [eax+20h]
xor	edx, edi
mov	edi, [eax+0Ch]
xor	edi, edx
mov	edx, [eax-8]
xor	edx, edi
rol	ecx, 1Eh
rol	edx, 1
mov	[eax+18h], edx
mov	edi, ecx
xor	edi, ebx
xor	edi, ebp
mov	edx, esi
rol	edx, 5
add	edx, edi
mov	edi, [eax+18h]
add	edi, [esp+24h+var_10]
rol	ebx, 1Eh
lea	edi, [edi+edx+6ED9EBA1h]
mov	edx, [eax+1Ch]
mov	ebp, [eax+24h]
xor	edx, ebp
mov	ebp, [eax+10h]
xor	ebp, edx
mov	edx, [eax-4]
xor	edx, ebp
mov	[esp+24h+var_C], ebx
rol	edx, 1
mov	[eax+1Ch], edx
mov	ebp, ecx
xor	ebp, ebx
mov	ebx, [eax+1Ch]
add	ebx, [esp+24h+var_14]
xor	ebp, esi
mov	edx, edi
rol	edx, 5
add	edx, ebp
lea	edx, [ebx+edx+6ED9EBA1h]
mov	ebx, [eax-18h]
mov	ebp, [eax+20h]
xor	ebx, ebp
mov	ebp, [eax+14h]
xor	ebp, ebx
mov	ebx, [eax]
xor	ebx, ebp
mov	ebp, [esp+24h+var_C]
rol	esi, 1Eh
rol	ebx, 1
mov	[eax+20h], ebx
xor	ebp, esi
xor	ebp, edi
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax+20h]
add	ebp, ecx
lea	ecx, [ebx+ebp+6ED9EBA1h]
mov	ebx, [eax+18h]
mov	ebp, [eax+24h]
xor	ebx, ebp
mov	ebp, [eax-14h]
xor	ebp, ebx
mov	ebx, [eax+4]
rol	edi, 1Eh
xor	ebx, ebp
mov	[esp+24h+var_10], edi
rol	ebx, 1
mov	[eax+24h], ebx
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
mov	ebx, ecx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax+24h]
add	ebp, [esp+24h+var_C]
rol	edx, 1Eh
mov	[esp+24h+var_14], edx
mov	edx, [eax+1Ch]
lea	ebx, [ebx+ebp+6ED9EBA1h]
mov	ebp, [eax-18h]
xor	edx, ebp
mov	ebp, [eax-10h]
xor	ebp, edx
mov	edx, [eax+8]
xor	edx, ebp
rol	edx, 1
mov	[eax-18h], edx
mov	edx, ebx
rol	edx, 5
mov	ebp, ecx
xor	ebp, edi
mov	edi, ebp
mov	ebp, [esp+24h+var_14]
xor	edi, ebp
add	edx, edi
mov	edi, [eax-18h]
add	edi, esi
lea	esi, [edi+edx+6ED9EBA1h]
mov	edx, [eax+20h]
mov	edi, [eax-14h]
xor	edx, edi
mov	edi, [eax-0Ch]
xor	edi, edx
mov	edx, [eax+0Ch]
xor	edx, edi
rol	ecx, 1Eh
rol	edx, 1
mov	[eax-14h], edx
mov	edi, ecx
xor	edi, ebx
xor	edi, ebp
mov	edx, esi
rol	edx, 5
add	edx, edi
mov	edi, [eax-14h]
add	edi, [esp+24h+var_10]
rol	ebx, 1Eh
lea	edi, [edi+edx+6ED9EBA1h]
mov	edx, [eax-10h]
mov	ebp, [eax+24h]
xor	edx, ebp
mov	ebp, [eax+10h]
xor	ebp, edx
mov	edx, [eax-8]
xor	edx, ebp
rol	edx, 1
mov	[eax-10h], edx
mov	[esp+24h+var_C], ebx
mov	ebp, ecx
xor	ebp, ebx
mov	ebx, [eax-10h]
add	ebx, [esp+24h+var_14]
xor	ebp, esi
mov	edx, edi
rol	edx, 5
add	edx, ebp
lea	edx, [ebx+edx+6ED9EBA1h]
mov	ebx, [eax-18h]
mov	ebp, [eax+14h]
xor	ebx, ebp
mov	ebp, [eax-0Ch]
xor	ebp, ebx
mov	ebx, [eax-4]
xor	ebx, ebp
rol	esi, 1Eh
rol	ebx, 1
mov	ebp, [esp+24h+var_C]
mov	[eax-0Ch], ebx
xor	ebp, esi
xor	ebp, edi
mov	ebx, edx
rol	ebx, 5
add	ebx, ebp
mov	ebp, [eax-0Ch]
add	ebp, ecx
lea	ecx, [ebx+ebp+6ED9EBA1h]
mov	ebx, [eax+18h]
mov	ebp, [eax-14h]
xor	ebx, ebp
mov	ebp, [eax-8]
xor	ebp, ebx
mov	ebx, [eax]
rol	edi, 1Eh
xor	ebx, ebp
rol	ebx, 1
mov	[eax-8], ebx
mov	ebx, ecx
rol	ebx, 5
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
add	ebx, ebp
mov	ebp, [eax-8]
add	ebp, [esp+24h+var_C]
rol	edx, 1Eh
lea	ebx, [ebx+ebp+6ED9EBA1h]
mov	[esp+24h+var_14], edx
mov	edx, [eax+1Ch]
mov	ebp, [eax-10h]
xor	edx, ebp
mov	ebp, [eax-4]
xor	ebp, edx
mov	edx, [eax+4]
xor	edx, ebp
mov	ebp, ecx
xor	ebp, edi
mov	[esp+24h+var_10], edi
rol	edx, 1
mov	[eax-4], edx
mov	edi, ebp
mov	ebp, [esp+24h+var_14]
xor	edi, ebp
mov	edx, ebx
rol	edx, 5
add	edx, edi
mov	edi, [eax-4]
add	edi, esi
rol	ecx, 1Eh
lea	esi, [edi+edx+6ED9EBA1h]
mov	edx, ecx
mov	ecx, [eax-0Ch]
mov	edi, [eax+20h]
xor	ecx, edi
mov	edi, [eax+8]
xor	edi, ecx
mov	ecx, [eax]
xor	ecx, edi
rol	ecx, 1
mov	[eax], ecx
mov	edi, edx
xor	edi, ebx
xor	edi, ebp
mov	ecx, esi
rol	ecx, 5
add	ecx, edi
mov	edi, [eax]
add	edi, [esp+24h+var_10]
rol	ebx, 1Eh
lea	ecx, [edi+ecx+6ED9EBA1h]
mov	edi, [eax+0Ch]
mov	ebp, [eax+24h]
xor	edi, ebp
mov	ebp, [eax-8]
mov	[esp+24h+var_4], edx
mov	[esp+24h+var_C], ebx
xor	ebp, edi
mov	edi, [eax+4]
xor	edi, ebp
xor	edx, ebx
rol	edi, 1
mov	[eax+4], edi
xor	edx, esi
mov	edi, ecx
rol	edi, 5
add	edi, edx
mov	edx, [eax+4]
add	edx, [esp+24h+var_14]
rol	esi, 1Eh
lea	edx, [edx+edi+6ED9EBA1h]
mov	ebp, esi
mov	esi, [eax-18h]
mov	edi, [eax+10h]
xor	esi, edi
mov	edi, [eax+8]
xor	edi, esi
mov	esi, [eax-4]
xor	esi, edi
rol	esi, 1
mov	[eax+8], esi
mov	edi, ebp
or	edi, ecx
and	edi, ebx
mov	esi, edx
rol	esi, 5
mov	ebx, ebp
and	ebx, ecx
or	edi, ebx
lea	esi, [esi+edi-70E44324h]
mov	edi, [eax+8]
add	edi, [esp+24h+var_4]
add	esi, edi
mov	edi, [eax+14h]
mov	ebx, [eax-14h]
xor	edi, ebx
mov	ebx, [eax+0Ch]
xor	ebx, edi
mov	edi, [eax]
xor	edi, ebx
rol	ecx, 1Eh
mov	ebx, ecx
or	ebx, edx
rol	edi, 1
mov	[esp+24h+var_10], ecx
and	ecx, edx
mov	[eax+0Ch], edi
and	ebx, ebp
or	ebx, ecx
mov	edi, esi
rol	edi, 5
lea	ecx, [edi+ebx-70E44324h]
mov	edi, [eax+0Ch]
add	edi, [esp+24h+var_C]
add	edi, ecx
mov	ecx, [eax-10h]
mov	ebx, [eax+18h]
xor	ecx, ebx
mov	ebx, [eax+10h]
xor	ebx, ecx
mov	ecx, [eax+4]
rol	edx, 1Eh
xor	ecx, ebx
mov	[esp+24h+var_14], edx
mov	ebx, esi
or	ebx, edx
and	ebx, [esp+24h+var_10]
rol	ecx, 1
mov	edx, esi
and	edx, [esp+24h+var_14]
mov	[eax+10h], ecx
or	ebx, edx
mov	edx, [eax+10h]
mov	ecx, edi
rol	ecx, 5
add	edx, ebp
lea	ecx, [ecx+ebx-70E44324h]
add	edx, ecx
rol	esi, 1Eh
mov	ecx, [eax+1Ch]
mov	ebx, [eax+14h]
xor	ecx, ebx
mov	ebx, [eax-0Ch]
xor	ebx, ecx
mov	ecx, [eax+8]
xor	ecx, ebx
rol	ecx, 1
mov	[eax+14h], ecx
mov	ecx, edx
rol	ecx, 5
mov	ebx, esi
or	ebx, edi
and	ebx, [esp+24h+var_14]
mov	ebp, esi
and	ebp, edi
or	ebx, ebp
lea	ecx, [ecx+ebx-70E44324h]
mov	ebx, [eax+14h]
add	ebx, [esp+24h+var_10]
add	ecx, ebx
mov	ebx, [eax+18h]
mov	ebp, [eax+20h]
xor	ebx, ebp
mov	ebp, [eax+0Ch]
xor	ebp, ebx
mov	ebx, [eax-8]
rol	edi, 1Eh
xor	ebx, ebp
mov	ebp, edi
or	ebp, edx
mov	[esp+24h+var_C], edi
and	edi, edx
rol	ebx, 1
mov	[eax+18h], ebx
and	ebp, esi
or	ebp, edi
mov	ebx, ecx
rol	ebx, 5
lea	edi, [ebx+ebp-70E44324h]
mov	ebx, [eax+18h]
add	ebx, [esp+24h+var_14]
add	ebx, edi
mov	edi, [eax+1Ch]
mov	ebp, [eax+24h]
xor	edi, ebp
mov	ebp, [eax+10h]
xor	ebp, edi
mov	edi, [eax-4]
rol	edx, 1Eh
xor	edi, ebp
mov	[esp+24h+var_8], edx
mov	ebp, [esp+24h+var_8]
rol	edi, 1
or	edx, ecx
and	edx, [esp+24h+var_C]
mov	[eax+1Ch], edi
and	ebp, ecx
or	edx, ebp
mov	edi, ebx
rol	edi, 5
lea	edx, [edi+edx-70E44324h]
mov	edi, [eax+1Ch]
add	esi, edi
add	esi, edx
mov	edx, [eax-18h]
mov	edi, [eax+20h]
xor	edx, edi
mov	edi, [eax+14h]
xor	edi, edx
mov	edx, [eax]
xor	edx, edi
rol	ecx, 1Eh
rol	edx, 1
mov	[eax+20h], edx
mov	edi, ecx
mov	edx, esi
or	edi, ebx
rol	edx, 5
and	edi, [esp+24h+var_8]
mov	ebp, ecx
and	ebp, ebx
or	edi, ebp
lea	edx, [edx+edi-70E44324h]
mov	edi, [eax+20h]
add	edi, [esp+24h+var_C]
add	edi, edx
mov	edx, [eax+18h]
mov	ebp, [eax+24h]
xor	edx, ebp
mov	ebp, [eax-14h]
rol	ebx, 1Eh
xor	ebp, edx
mov	edx, [eax+4]
xor	edx, ebp
mov	[esp+24h+var_14], ebx
mov	ebp, esi
or	ebp, ebx
and	ebp, ecx
mov	ebx, esi
and	ebx, [esp+24h+var_14]
rol	edx, 1
or	ebp, ebx
mov	[eax+24h], edx
mov	ebx, [eax+24h]
add	ebx, [esp+24h+var_8]
mov	edx, edi
rol	edx, 5
lea	edx, [edx+ebp-70E44324h]
add	edx, ebx
mov	ebx, [eax+1Ch]
mov	ebp, [eax-18h]
xor	ebx, ebp
mov	ebp, [eax-10h]
xor	ebp, ebx
mov	ebx, [eax+8]
xor	ebx, ebp
rol	esi, 1Eh
rol	ebx, 1
mov	[esp+24h+var_4], esi
mov	ebp, [esp+24h+var_4]
mov	[eax-18h], ebx
or	esi, edi
and	esi, [esp+24h+var_14]
and	ebp, edi
or	esi, ebp
mov	ebx, edx
rol	ebx, 5
lea	esi, [ebx+esi-70E44324h]
mov	ebx, [eax-18h]
add	ecx, ebx
add	ecx, esi
mov	esi, [eax+20h]
mov	ebx, [eax-14h]
xor	esi, ebx
mov	ebx, [eax-0Ch]
xor	ebx, esi
mov	esi, [eax+0Ch]
xor	esi, ebx
rol	edi, 1Eh
rol	esi, 1
mov	[eax-14h], esi
mov	ebx, edi
or	ebx, edx
and	ebx, [esp+24h+var_4]
mov	ebp, edi
and	ebp, edx
or	ebx, ebp
mov	esi, ecx
rol	esi, 5
lea	esi, [esi+ebx-70E44324h]
mov	ebx, [eax-14h]
add	ebx, [esp+24h+var_14]
add	ebx, esi
mov	esi, [eax-10h]
mov	ebp, [eax+24h]
xor	esi, ebp
mov	ebp, [eax+10h]
rol	edx, 1Eh
xor	ebp, esi
mov	esi, [eax-8]
mov	[esp+24h+var_8], edx
xor	esi, ebp
mov	ebp, edx
and	edx, ecx
or	ebp, ecx
and	ebp, edi
or	ebp, edx
rol	esi, 1
mov	[eax-10h], esi
mov	esi, ebx
rol	esi, 5
lea	edx, [esi+ebp-70E44324h]
mov	esi, [eax-10h]
add	esi, [esp+24h+var_4]
add	esi, edx
mov	edx, [eax-18h]
mov	ebp, [eax+14h]
rol	ecx, 1Eh
xor	edx, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edx
mov	edx, [eax-4]
mov	[esp+24h+var_10], ecx
or	ecx, ebx
and	ecx, [esp+24h+var_8]
xor	edx, ebp
mov	ebp, [esp+24h+var_10]
and	ebp, ebx
or	ecx, ebp
rol	edx, 1
mov	[eax-0Ch], edx
mov	edx, esi
rol	edx, 5
lea	ecx, [edx+ecx-70E44324h]
mov	edx, [eax-0Ch]
add	edi, edx
add	edi, ecx
mov	ecx, [eax+18h]
mov	edx, [eax-14h]
xor	ecx, edx
mov	edx, [eax-8]
xor	edx, ecx
mov	ecx, [eax]
xor	ecx, edx
rol	ebx, 1Eh
rol	ecx, 1
mov	[eax-8], ecx
mov	[esp+24h+var_14], ebx
mov	ecx, esi
or	ecx, ebx
and	ecx, [esp+24h+var_10]
mov	ebx, esi
and	ebx, [esp+24h+var_14]
mov	edx, edi
or	ecx, ebx
rol	edx, 5
lea	edx, [edx+ecx-70E44324h]
mov	ecx, [eax-8]
add	ecx, [esp+24h+var_8]
add	edx, ecx
mov	ecx, [eax+1Ch]
mov	ebx, [eax-10h]
xor	ecx, ebx
mov	ebx, [eax-4]
xor	ebx, ecx
mov	ecx, [eax+4]
xor	ecx, ebx
rol	esi, 1Eh
rol	ecx, 1
mov	[eax-4], ecx
mov	ebx, esi
or	ebx, edi
and	ebx, [esp+24h+var_14]
mov	ebp, esi
and	ebp, edi
or	ebx, ebp
mov	ecx, edx
rol	ecx, 5
lea	ecx, [ecx+ebx-70E44324h]
mov	ebx, [eax-4]
add	ebx, [esp+24h+var_10]
add	ecx, ebx
mov	ebx, [eax-0Ch]
mov	ebp, [eax+20h]
xor	ebx, ebp
mov	ebp, [eax+8]
xor	ebp, ebx
mov	ebx, [eax]
rol	edi, 1Eh
xor	ebx, ebp
mov	ebp, edi
or	ebp, edx
and	ebp, esi
mov	[esp+24h+var_C], edi
and	edi, edx
or	ebp, edi
rol	ebx, 1
mov	[eax], ebx
mov	ebx, ecx
rol	ebx, 5
lea	edi, [ebx+ebp-70E44324h]
mov	ebx, [eax]
add	ebx, [esp+24h+var_14]
add	ebx, edi
mov	edi, [eax+0Ch]
mov	ebp, [eax+24h]
xor	edi, ebp
mov	ebp, [eax-8]
xor	ebp, edi
mov	edi, [eax+4]
xor	edi, ebp
rol	edx, 1Eh
mov	[esp+24h+var_8], edx
mov	ebp, [esp+24h+var_8]
rol	edi, 1
or	edx, ecx
and	edx, [esp+24h+var_C]
mov	[eax+4], edi
and	ebp, ecx
or	edx, ebp
mov	edi, ebx
rol	edi, 5
lea	edx, [edi+edx-70E44324h]
mov	edi, [eax+4]
add	esi, edi
add	esi, edx
mov	edx, [eax-18h]
mov	edi, [eax+10h]
xor	edx, edi
mov	edi, [eax+8]
xor	edi, edx
mov	edx, [eax-4]
xor	edx, edi
rol	ecx, 1Eh
rol	edx, 1
mov	[eax+8], edx
mov	edi, ecx
or	edi, ebx
and	edi, [esp+24h+var_8]
mov	ebp, ecx
and	ebp, ebx
or	edi, ebp
mov	edx, esi
rol	edx, 5
lea	edx, [edx+edi-70E44324h]
mov	edi, [eax+8]
add	edi, [esp+24h+var_C]
add	edi, edx
mov	edx, [eax+14h]
mov	ebp, [eax-14h]
xor	edx, ebp
mov	ebp, [eax+0Ch]
xor	ebp, edx
mov	edx, [eax]
xor	edx, ebp
rol	ebx, 1Eh
rol	edx, 1
mov	[eax+0Ch], edx
mov	edx, edi
mov	ebp, esi
rol	edx, 5
mov	[esp+24h+var_14], ebx
or	ebp, ebx
and	ebp, ecx
mov	ebx, esi
and	ebx, [esp+24h+var_14]
or	ebp, ebx
mov	ebx, [eax+0Ch]
add	ebx, [esp+24h+var_8]
lea	edx, [edx+ebp-70E44324h]
add	edx, ebx
mov	ebx, [eax-10h]
mov	ebp, [eax+18h]
xor	ebx, ebp
mov	ebp, [eax+10h]
xor	ebp, ebx
mov	ebx, [eax+4]
xor	ebx, ebp
rol	esi, 1Eh
mov	[esp+24h+var_4], esi
mov	ebp, [esp+24h+var_4]
or	esi, edi
and	esi, [esp+24h+var_14]
rol	ebx, 1
mov	[eax+10h], ebx
and	ebp, edi
or	esi, ebp
mov	ebx, edx
rol	ebx, 5
lea	esi, [ebx+esi-70E44324h]
mov	ebx, [eax+10h]
add	ecx, ebx
add	ecx, esi
mov	esi, [eax+1Ch]
mov	ebx, [eax+14h]
xor	esi, ebx
mov	ebx, [eax-0Ch]
xor	ebx, esi
mov	esi, [eax+8]
xor	esi, ebx
rol	edi, 1Eh
rol	esi, 1
mov	[eax+14h], esi
mov	ebx, edi
or	ebx, edx
and	ebx, [esp+24h+var_4]
mov	ebp, edi
and	ebp, edx
or	ebx, ebp
mov	esi, ecx
rol	esi, 5
lea	esi, [esi+ebx-70E44324h]
mov	ebx, [eax+14h]
add	ebx, [esp+24h+var_14]
add	ebx, esi
mov	esi, [eax+18h]
mov	ebp, [eax+20h]
xor	esi, ebp
mov	ebp, [eax+0Ch]
xor	ebp, esi
mov	esi, [eax-8]
xor	esi, ebp
rol	edx, 1Eh
rol	esi, 1
mov	[eax+18h], esi
mov	[esp+24h+var_8], edx
mov	ebp, edi
xor	ebp, edx
xor	ebp, ecx
mov	esi, ebx
rol	esi, 5
lea	edx, [esi+ebp-359D3E2Ah]
mov	esi, [eax+18h]
add	esi, [esp+24h+var_4]
add	esi, edx
mov	edx, [eax+1Ch]
mov	ebp, [eax+24h]
xor	edx, ebp
mov	ebp, [eax+10h]
xor	ebp, edx
mov	edx, [eax-4]
xor	edx, ebp
rol	ecx, 1Eh
rol	edx, 1
mov	[eax+1Ch], edx
mov	ebp, [esp+24h+var_8]
xor	ebp, ecx
xor	ebp, ebx
mov	edx, esi
rol	edx, 5
lea	edx, [edx+ebp-359D3E2Ah]
mov	ebp, [eax+1Ch]
add	ebp, edi
lea	edi, [edx+ebp]
mov	edx, [eax-18h]
mov	ebp, [eax+20h]
xor	edx, ebp
mov	ebp, [eax+14h]
xor	ebp, edx
mov	edx, [eax]
xor	edx, ebp
rol	ebx, 1Eh
rol	edx, 1
mov	[eax+20h], edx
mov	[esp+24h+var_14], ebx
mov	ebp, esi
xor	ebp, ecx
xor	ebp, ebx
mov	ebx, [eax+20h]
add	ebx, [esp+24h+var_8]
mov	edx, edi
rol	edx, 5
lea	edx, [edx+ebp-359D3E2Ah]
add	edx, ebx
mov	ebx, [eax+18h]
mov	ebp, [eax+24h]
xor	ebx, ebp
mov	ebp, [eax-14h]
xor	ebp, ebx
mov	ebx, [eax+4]
xor	ebx, ebp
rol	esi, 1Eh
rol	ebx, 1
mov	[eax+24h], ebx
mov	ebx, edx
rol	ebx, 5
mov	ebp, esi
xor	ebp, edi
xor	ebp, [esp+24h+var_14]
lea	ebx, [ebx+ebp-359D3E2Ah]
mov	ebp, [eax+24h]
add	ebp, ecx
lea	ecx, [ebx+ebp]
mov	ebx, [eax+1Ch]
mov	ebp, [eax-18h]
xor	ebx, ebp
mov	ebp, [eax-10h]
xor	ebp, ebx
mov	ebx, [eax+8]
xor	ebx, ebp
rol	edi, 1Eh
rol	ebx, 1
mov	[eax-18h], ebx
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
mov	ebx, ecx
rol	ebx, 5
lea	ebx, [ebx+ebp-359D3E2Ah]
mov	ebp, [eax-18h]
add	ebp, [esp+24h+var_14]
add	ebx, ebp
rol	edx, 1Eh
mov	[esp+24h+var_8], edx
mov	edx, [eax+20h]
mov	ebp, [eax-14h]
xor	edx, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edx
mov	edx, [eax+0Ch]
xor	edx, ebp
rol	edx, 1
mov	[eax-14h], edx
mov	edx, ebx
rol	edx, 5
mov	ebp, edi
xor	ebp, [esp+24h+var_8]
xor	ebp, ecx
lea	edx, [edx+ebp-359D3E2Ah]
mov	ebp, [eax-14h]
add	ebp, esi
rol	ecx, 1Eh
mov	[esp+24h+var_10], ecx
mov	ecx, [eax-10h]
lea	esi, [edx+ebp]
mov	edx, [eax+24h]
xor	ecx, edx
mov	edx, [eax+10h]
xor	edx, ecx
mov	ecx, [eax-8]
xor	ecx, edx
rol	ecx, 1
mov	[eax-10h], ecx
mov	ecx, [esp+24h+var_8]
xor	ecx, [esp+24h+var_10]
mov	edx, esi
xor	ecx, ebx
rol	edx, 5
lea	edx, [edx+ecx-359D3E2Ah]
mov	ecx, [eax-10h]
add	edi, ecx
mov	ecx, [eax-18h]
add	edi, edx
mov	edx, [eax+14h]
xor	ecx, edx
mov	edx, [eax-0Ch]
xor	edx, ecx
mov	ecx, [eax-4]
xor	ecx, edx
rol	ebx, 1Eh
rol	ecx, 1
mov	[eax-0Ch], ecx
mov	ecx, esi
xor	ecx, [esp+24h+var_10]
mov	edx, edi
xor	ecx, ebx
rol	edx, 5
lea	edx, [edx+ecx-359D3E2Ah]
mov	ecx, [eax-0Ch]
add	ecx, [esp+24h+var_8]
add	edx, ecx
mov	ecx, [eax+18h]
mov	ebp, [eax-14h]
xor	ecx, ebp
mov	ebp, [eax-8]
xor	ebp, ecx
mov	ecx, [eax]
rol	esi, 1Eh
xor	ecx, ebp
mov	[esp+24h+var_4], esi
xor	esi, edi
rol	ecx, 1
mov	[eax-8], ecx
xor	esi, ebx
mov	ecx, edx
rol	ecx, 5
lea	ecx, [ecx+esi-359D3E2Ah]
mov	esi, [eax-8]
add	esi, [esp+24h+var_10]
add	ecx, esi
mov	esi, [eax+1Ch]
mov	ebp, [eax-10h]
xor	esi, ebp
mov	ebp, [eax-4]
xor	ebp, esi
mov	esi, [eax+4]
xor	esi, ebp
mov	ebp, [esp+24h+var_4]
rol	edi, 1Eh
rol	esi, 1
mov	[eax-4], esi
mov	esi, ecx
rol	esi, 5
xor	ebp, edi
xor	ebp, edx
lea	esi, [esi+ebp-359D3E2Ah]
mov	ebp, [eax-4]
add	ebp, ebx
lea	ebx, [esi+ebp]
mov	esi, [eax-0Ch]
mov	ebp, [eax+20h]
xor	esi, ebp
mov	ebp, [eax+8]
xor	ebp, esi
mov	esi, [eax]
xor	esi, ebp
rol	edx, 1Eh
rol	esi, 1
mov	[eax], esi
mov	esi, ebx
rol	esi, 5
mov	ebp, edi
xor	ebp, edx
xor	ebp, ecx
lea	esi, [esi+ebp-359D3E2Ah]
mov	ebp, [eax]
add	ebp, [esp+24h+var_4]
add	esi, ebp
rol	ecx, 1Eh
mov	[esp+24h+var_10], ecx
mov	ecx, [eax+0Ch]
mov	ebp, [eax+24h]
xor	ecx, ebp
mov	ebp, [eax-8]
xor	ebp, ecx
mov	ecx, [eax+4]
xor	ecx, ebp
rol	ecx, 1
mov	[eax+4], ecx
mov	ebp, edx
xor	ebp, [esp+24h+var_10]
mov	ecx, esi
xor	ebp, ebx
rol	ecx, 5
lea	ecx, [ecx+ebp-359D3E2Ah]
mov	ebp, [eax+4]
add	ebp, edi
rol	ebx, 1Eh
lea	edi, [ecx+ebp]
mov	ecx, [eax-18h]
mov	[esp+24h+var_14], ebx
mov	ebx, [eax+10h]
xor	ecx, ebx
mov	ebx, [eax+8]
xor	ebx, ecx
mov	ecx, [eax-4]
mov	ebp, [esp+24h+var_14]
xor	ecx, ebx
rol	ecx, 1
mov	[eax+8], ecx
mov	ebx, esi
xor	ebx, [esp+24h+var_10]
mov	ecx, edi
xor	ebx, ebp
rol	ecx, 5
lea	ecx, [ecx+ebx-359D3E2Ah]
mov	ebx, [eax+8]
add	edx, ebx
add	edx, ecx
mov	ecx, [eax+14h]
mov	ebx, [eax-14h]
xor	ecx, ebx
mov	ebx, [eax+0Ch]
xor	ebx, ecx
mov	ecx, [eax]
xor	ecx, ebx
rol	esi, 1Eh
rol	ecx, 1
mov	[eax+0Ch], ecx
mov	ebx, esi
xor	ebx, edi
mov	ecx, edx
xor	ebx, ebp
rol	ecx, 5
lea	ecx, [ecx+ebx-359D3E2Ah]
mov	ebx, [eax+0Ch]
add	ebx, [esp+24h+var_10]
add	ecx, ebx
mov	ebx, [eax-10h]
mov	ebp, [eax+18h]
xor	ebx, ebp
mov	ebp, [eax+10h]
xor	ebp, ebx
mov	ebx, [eax+4]
xor	ebx, ebp
rol	edi, 1Eh
rol	ebx, 1
mov	[eax+10h], ebx
mov	[esp+24h+var_C], edi
mov	ebp, esi
xor	ebp, edi
xor	ebp, edx
mov	ebx, ecx
rol	ebx, 5
lea	edi, [ebx+ebp-359D3E2Ah]
mov	ebx, [eax+10h]
add	ebx, [esp+24h+var_14]
add	ebx, edi
mov	edi, [eax+1Ch]
mov	ebp, [eax+14h]
xor	edi, ebp
mov	ebp, [eax-0Ch]
xor	ebp, edi
mov	edi, [eax+8]
xor	edi, ebp
mov	ebp, [esp+24h+var_C]
rol	edx, 1Eh
xor	ebp, edx
xor	ebp, ecx
rol	edi, 1
mov	[eax+14h], edi
mov	edi, ebx
rol	edi, 5
lea	edi, [edi+ebp-359D3E2Ah]
mov	ebp, [eax+14h]
add	ebp, esi
lea	esi, [edi+ebp]
mov	edi, [eax+18h]
mov	ebp, [eax+20h]
xor	edi, ebp
mov	ebp, [eax+0Ch]
xor	ebp, edi
mov	edi, [eax-8]
xor	edi, ebp
rol	ecx, 1Eh
rol	edi, 1
mov	[eax+18h], edi
mov	ebp, edx
xor	ebp, ecx
xor	ebp, ebx
mov	edi, esi
rol	edi, 5
lea	edi, [edi+ebp-359D3E2Ah]
mov	ebp, [eax+18h]
add	ebp, [esp+24h+var_C]
mov	[esp+24h+var_10], ecx
add	edi, ebp
rol	ebx, 1Eh
mov	[esp+24h+var_14], ebx
mov	ebx, [eax+1Ch]
mov	ebp, [eax+24h]
xor	ebx, ebp
mov	ebp, [eax+10h]
xor	ebp, ebx
mov	ebx, [eax-4]
xor	ebx, ebp
rol	ebx, 1
mov	[eax+1Ch], ebx
mov	ebp, esi
xor	ebp, ecx
mov	ecx, [esp+24h+var_14]
mov	ebx, edi
xor	ebp, ecx
rol	ebx, 5
lea	ebx, [ebx+ebp-359D3E2Ah]
mov	ebp, [eax+1Ch]
add	ebp, edx
lea	edx, [ebx+ebp]
mov	ebx, [eax-18h]
mov	ebp, [eax+20h]
xor	ebx, ebp
mov	ebp, [eax+14h]
xor	ebp, ebx
mov	ebx, [eax]
xor	ebx, ebp
rol	esi, 1Eh
rol	ebx, 1
mov	[eax+20h], ebx
mov	ebp, esi
xor	ebp, edi
xor	ebp, ecx
mov	ebx, edx
rol	ebx, 5
lea	ebx, [ebx+ebp-359D3E2Ah]
mov	ebp, [eax+20h]
add	ebp, [esp+24h+var_10]
add	ebx, ebp
rol	edi, 1Eh
mov	[esp+24h+var_C], edi
mov	edi, [eax+18h]
mov	ebp, [eax+24h]
xor	edi, ebp
mov	ebp, [eax-14h]
xor	ebp, edi
mov	edi, [eax+4]
xor	edi, ebp
rol	edi, 1
mov	[eax+24h], edi
mov	ebp, esi
xor	ebp, [esp+24h+var_C]
mov	edi, ebx
xor	ebp, edx
rol	edi, 5
lea	edi, [edi+ebp-359D3E2Ah]
mov	ebp, [eax+24h]
add	ebp, ecx
lea	ecx, [edi+ebp]
add	[eax-2Ch], ecx
add	[eax-28h], ebx
rol	edx, 1Eh
add	[eax-24h], edx
mov	edx, [esp+24h+var_C]
add	[eax-20h], edx
add	[eax-1Ch], esi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 14h
retn
align 10h
			
push	0A0h
call	PORT_Alloc_Util
add	esp, 4
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	0A0h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10002595
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
mov	eax, 0A0h
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, 28h
rep movsd
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
push	0A0h
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jnz	short loc_100025E2
retn
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	ecx, 28h
mov	edi, eax
rep movsd
pop	edi
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, 28h
rep movsd
pop	edi
pop	esi
retn
align 10h
			
			
push	edi
mov	edi, [esp+4+arg_8]
test	edi, edi
jz	loc_100026B6
mov	eax, [esp+4+Dst]
push	ebx
mov	ebx, [eax+40h]
add	[eax+40h], edi
push	ebp
push	esi
adc	dword ptr [eax+44h], 0
and	ebx, 3Fh
jz	short loc_100026B8
mov	esi, 40h
sub	esi, ebx
cmp	edi, esi
jnb	short loc_10002650
mov	esi, edi
mov	ebp, [esp+10h+Src]
push	esi		
add	eax, ebx
push	ebp		
push	eax		
call	memcpy
lea	ecx, [esi+ebx]
add	esp, 0Ch
sub	edi, esi
add	ebp, esi
test	cl, 3Fh
jnz	short loc_10002679
mov	ecx, [esp+10h+Dst]
lea	eax, [ecx+74h]
call	sub_100013B0
mov	eax, [esp+10h+Dst]
cmp	edi, 40h
jb	short loc_100026A4
mov	esi, edi
add	eax, 74h
shr	esi, 6
lea	ebx, [ebx+0]
mov	ecx, ebp
sub	edi, 40h
call	sub_100013B0
add	ebp, 40h
dec	esi
jnz	short loc_10002690
mov	eax, [esp+10h+Dst]
test	edi, edi
jz	short loc_100026B3
push	edi		
push	ebp		
push	eax		
call	memcpy
add	esp, 0Ch
pop	esi
pop	ebp
pop	ebx
pop	edi
retn
mov	ebp, [esp+10h+Src]
jmp	short loc_1000267D
align 10h
			
push	ebx
push	esi
mov	esi, [esp+8+Dst]
mov	ebx, [esi+44h]
push	edi
mov	edi, [esi+40h]
mov	eax, 0FFFFFFF7h
sub	eax, edi
and	eax, 3Fh
inc	eax
push	eax		
push	offset dword_100394F0 
push	esi		
call	sub_10002620
shld	ebx, edi, 3
add	edi, edi
add	edi, edi
add	edi, edi
bswap	ebx
bswap	edi
add	esp, 0Ch
lea	eax, [esi+74h]
mov	ecx, esi
mov	[esi+38h], ebx
mov	[esi+3Ch], edi
call	sub_100013B0
mov	ecx, [esi+48h]
mov	eax, [esp+0Ch+arg_4]
bswap	ecx
mov	[eax], ecx
mov	edx, [esi+4Ch]
bswap	edx
mov	[eax+4], edx
mov	ecx, [esi+50h]
bswap	ecx
mov	[eax+8], ecx
mov	edx, [esi+54h]
bswap	edx
mov	[eax+0Ch], edx
mov	ecx, [esi+58h]
bswap	ecx
pop	edi
mov	[eax+10h], ecx
mov	eax, [esp+8+arg_8]
pop	esi
pop	ebx
test	eax, eax
jz	short locret_10002741
mov	dword ptr [eax], 14h
retn
align 10h
			
			
sub	esp, 0A8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A8h+var_4], eax
mov	eax, [esp+0A8h+Src]
xor	ecx, ecx
push	esi
mov	esi, [esp+0ACh+arg_0]
mov	[esp+0ACh+var_64], ecx
mov	[esp+0ACh+var_60], ecx
mov	ecx, [esp+0ACh+arg_8]
push	ecx		
push	eax		
lea	edx, [esp+0B4h+Dst]
push	edx		
mov	[esp+0B8h+var_5C], 67452301h
mov	[esp+0B8h+var_58], 0EFCDAB89h
mov	[esp+0B8h+var_54], 98BADCFEh
mov	[esp+0B8h+var_50], 10325476h
mov	[esp+0B8h+var_4C], 0C3D2E1F0h
call	sub_10002620
push	14h
lea	eax, [esp+0BCh+var_A8]
push	eax		
lea	ecx, [esp+0C0h+Dst]
push	esi		
push	ecx		
call	sub_100026C0
mov	ecx, [esp+0C8h+var_4]
add	esp, 1Ch
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 0A8h
retn
align 10h
mov	edx, [esp+Src]
mov	eax, edx
push	esi
lea	esi, [eax+1]
lea	ebx, [ebx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10002800
sub	eax, esi
push	eax		
mov	eax, [esp+8+arg_0]
push	edx		
push	eax		
call	sub_10002750
add	esp, 0Ch
pop	esi
retn
align 10h
			
push	41h
call	PORT_ZAlloc_Util
add	esp, 4
test	eax, eax
jnz	short locret_1000283D
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
align 10h
			
cmp	[esp+arg_4], 0
jz	short locret_10002854
mov	[esp+arg_4], 41h
jmp	PORT_ZFree_Util
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	41h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
mov	byte ptr [esi+40h], 10h
pop	esi
retn
align 10h
			
sub	esp, 34h
push	ebx
push	esi
movzx	ecx, byte ptr [eax+20h]
movzx	edx, byte ptr [eax+0Fh]
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax]
mov	dl, [eax+10h]
xor	dl, [eax+20h]
mov	[eax], cl
mov	[eax+30h], dl
mov	[esp+3Ch+var_28], dl
movzx	edx, byte ptr [eax+21h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+1]
mov	dl, [eax+11h]
xor	dl, [eax+21h]
mov	[eax+1], cl
mov	[eax+31h], dl
mov	[esp+3Ch+var_25], dl
movzx	edx, byte ptr [eax+22h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+2]
mov	dl, [eax+12h]
xor	dl, [eax+22h]
mov	[eax+2], cl
mov	[eax+32h], dl
mov	[esp+3Ch+var_27], dl
movzx	edx, byte ptr [eax+23h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+3]
mov	dl, [eax+13h]
xor	dl, [eax+23h]
mov	[eax+3], cl
mov	[eax+33h], dl
mov	[esp+3Ch+var_29], dl
movzx	edx, byte ptr [eax+24h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+4]
mov	dl, [eax+14h]
xor	dl, [eax+24h]
mov	[eax+4], cl
mov	[eax+34h], dl
mov	[esp+3Ch+var_2B], dl
movzx	edx, byte ptr [eax+25h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+5]
mov	dl, [eax+15h]
xor	dl, [eax+25h]
mov	[eax+5], cl
mov	[eax+35h], dl
mov	[esp+3Ch+var_2D], dl
movzx	edx, byte ptr [eax+26h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+6]
mov	dl, [eax+16h]
xor	dl, [eax+26h]
mov	[eax+6], cl
mov	[eax+36h], dl
mov	[esp+3Ch+var_2F], dl
movzx	edx, byte ptr [eax+27h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+7]
mov	dl, [eax+17h]
xor	dl, [eax+27h]
mov	[eax+7], cl
mov	[esp+3Ch+var_30], dl
mov	[eax+37h], dl
movzx	edx, byte ptr [eax+28h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+8]
mov	dl, [eax+18h]
xor	dl, [eax+28h]
mov	[eax+8], cl
mov	[eax+38h], dl
mov	[esp+3Ch+var_31], dl
movzx	edx, byte ptr [eax+29h]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+9]
mov	dl, [eax+19h]
xor	dl, [eax+29h]
mov	[eax+9], cl
mov	[eax+39h], dl
mov	[esp+3Ch+var_2C], dl
movzx	edx, byte ptr [eax+2Ah]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+0Ah]
mov	dl, [eax+1Ah]
xor	dl, [eax+2Ah]
mov	[eax+0Ah], cl
mov	[eax+3Ah], dl
mov	[esp+3Ch+var_26], dl
movzx	edx, byte ptr [eax+2Bh]
movzx	ecx, cl
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+0Bh]
mov	dl, [eax+1Bh]
xor	dl, [eax+2Bh]
mov	[eax+0Bh], cl
mov	[eax+3Bh], dl
movzx	ecx, cl
mov	[esp+3Ch+var_2E], dl
movzx	edx, byte ptr [eax+2Ch]
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+0Ch]
mov	dl, [eax+1Ch]
xor	dl, [eax+2Ch]
mov	[eax+0Ch], cl
mov	[eax+3Ch], dl
mov	bl, [eax+2Fh]
movzx	ecx, cl
mov	[esp+3Ch+var_2A], dl
movzx	edx, byte ptr [eax+2Dh]
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+0Dh]
mov	dl, [eax+1Dh]
xor	dl, [eax+2Dh]
mov	[eax+0Dh], cl
movzx	ecx, cl
mov	[eax+3Dh], dl
mov	[esp+3Ch+var_3], dl
movzx	edx, byte ptr [eax+2Eh]
xor	edx, ecx
mov	cl, ds:byte_10039530[edx]
xor	cl, [eax+0Eh]
mov	dl, [eax+1Eh]
xor	dl, [eax+2Eh]
mov	[eax+0Eh], cl
movzx	ecx, cl
movzx	esi, bl
xor	esi, ecx
mov	[eax+3Eh], dl
movzx	ecx, ds:byte_10039530[esi]
xor	cl, [eax+0Fh]
mov	[esp+3Ch+var_32], bl
mov	[eax+0Fh], cl
mov	cl, [eax+1Fh]
xor	cl, bl
mov	[esp+3Ch+var_2], cl
movzx	ebx, [esp+3Ch+var_28]
mov	[esp+3Ch+var_12], bl
movzx	ebx, byte ptr [eax+21h]
mov	[esp+3Ch+var_4], bl
movzx	ebx, byte ptr [eax+11h]
mov	[esp+3Ch+var_7], bl
movzx	ebx, [esp+3Ch+var_25]
mov	[esp+3Ch+var_23], bl
movzx	ebx, byte ptr [eax+22h]
mov	[esp+3Ch+var_20], bl
movzx	ebx, byte ptr [eax+12h]
mov	[esp+3Ch+var_5], bl
movzx	ebx, [esp+3Ch+var_27]
mov	[esp+3Ch+var_21], bl
movzx	ebx, byte ptr [eax+23h]
mov	[esp+3Ch+var_10], bl
movzx	ebx, byte ptr [eax+13h]
mov	[esp+3Ch+var_16], bl
movzx	ebx, [esp+3Ch+var_29]
mov	[esp+3Ch+var_1F], bl
movzx	ebx, byte ptr [eax+24h]
mov	[esp+3Ch+var_1E], bl
movzx	ebx, byte ptr [eax+14h]
mov	[esp+3Ch+var_6], bl
movzx	ebx, [esp+3Ch+var_2B]
mov	[esp+3Ch+var_1D], bl
movzx	ebx, byte ptr [eax+25h]
mov	[esp+3Ch+var_8], bl
movzx	ebx, byte ptr [eax+15h]
mov	[esp+3Ch+var_14], bl
movzx	ebx, [esp+3Ch+var_2D]
mov	[esp+3Ch+var_1B], bl
movzx	ebx, byte ptr [eax+26h]
mov	[esp+3Ch+var_1C], bl
movzx	ebx, byte ptr [eax+16h]
mov	[esp+3Ch+var_A], bl
movzx	ebx, [esp+3Ch+var_2F]
mov	[esp+3Ch+var_19], bl
movzx	ebx, byte ptr [eax+27h]
mov	[esp+3Ch+var_E], bl
movzx	ebx, byte ptr [eax+17h]
mov	[esp+3Ch+var_15], bl
movzx	ebx, [esp+3Ch+var_30]
mov	[esp+3Ch+var_17], bl
movzx	ebx, byte ptr [eax+28h]
mov	[esp+3Ch+var_1A], bl
movzx	ebx, byte ptr [eax+18h]
mov	[esp+3Ch+var_13], bl
movzx	ebx, [esp+3Ch+var_31]
mov	[esp+3Ch+var_30], bl
movzx	ebx, byte ptr [eax+29h]
mov	[esp+3Ch+var_24], bl
movzx	ebx, byte ptr [eax+19h]
mov	[esp+3Ch+var_11], bl
movzx	ebx, [esp+3Ch+var_2C]
mov	[esp+3Ch+var_2F], bl
movzx	ebx, byte ptr [eax+2Ah]
mov	[esp+3Ch+var_18], bl
movzx	ebx, byte ptr [eax+1Ah]
mov	[esp+3Ch+var_F], bl
movzx	ebx, [esp+3Ch+var_26]
mov	[esp+3Ch+var_2D], bl
movzx	ebx, byte ptr [eax+2Bh]
mov	[esp+3Ch+var_C], bl
movzx	ebx, byte ptr [eax+1Bh]
mov	[esp+3Ch+var_D], bl
movzx	ebx, [esp+3Ch+var_2E]
mov	[esp+3Ch+var_2B], bl
movzx	ebx, byte ptr [eax+2Ch]
mov	[esp+3Ch+var_2E], bl
movzx	ebx, byte ptr [eax+1Ch]
mov	[eax+3Fh], cl
movzx	ecx, byte ptr [eax+20h]
mov	[esp+3Ch+var_B], bl
movzx	ebx, [esp+3Ch+var_2A]
mov	[esp+3Ch+var_22], cl
mov	cl, [eax+10h]
mov	[esp+3Ch+var_29], bl
movzx	ebx, byte ptr [eax+2Dh]
mov	[esp+3Ch+var_1], 0
xor	esi, esi
mov	[esp+3Ch+var_26], bl
movzx	ebx, byte ptr [eax+1Dh]
mov	[esp+3Ch+var_9], bl
movzx	ebx, [esp+3Ch+var_3]
mov	[esp+3Ch+var_25], dl
movzx	edx, [esp+3Ch+var_32]
mov	[esp+3Ch+var_27], bl
movzx	ebx, byte ptr [eax+2Eh]
mov	[esp+3Ch+var_31], dl
mov	dl, [eax+1Fh]
mov	[esp+3Ch+var_32], dl
movzx	edx, [esp+3Ch+var_2]
mov	[esp+3Ch+var_2C], bl
movzx	ebx, byte ptr [eax+1Eh]
mov	[esp+3Ch+var_28], dl
mov	dl, [esp+3Ch+var_1]
mov	[esp+3Ch+var_2A], bl
jmp	short loc_10002C40
align 10h
			
movzx	edx, dl
movzx	edx, ds:byte_10039530[edx]
xor	cl, dl
mov	[eax+10h], cl
movzx	edx, cl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_7]
mov	[esp+3Ch+var_7], dl
mov	[eax+11h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_5]
mov	[esp+3Ch+var_5], dl
mov	[eax+12h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_16]
mov	[esp+3Ch+var_16], dl
mov	[eax+13h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_6]
mov	[esp+3Ch+var_6], dl
mov	[eax+14h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_14]
mov	[esp+3Ch+var_14], dl
mov	[eax+15h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_A]
mov	[esp+3Ch+var_A], dl
mov	[eax+16h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_15]
mov	[esp+3Ch+var_15], dl
mov	[eax+17h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_13]
mov	[esp+3Ch+var_13], dl
mov	[eax+18h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_11]
mov	[esp+3Ch+var_11], dl
mov	[eax+19h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_F]
mov	[esp+3Ch+var_F], dl
mov	[eax+1Ah], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_D]
mov	[esp+3Ch+var_D], dl
mov	[eax+1Bh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_B]
mov	[esp+3Ch+var_B], dl
mov	[eax+1Ch], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_9]
mov	[esp+3Ch+var_9], dl
mov	[eax+1Dh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2A]
mov	[esp+3Ch+var_2A], dl
mov	[eax+1Eh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_32]
mov	[esp+3Ch+var_32], dl
mov	[eax+1Fh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_22]
mov	[esp+3Ch+var_22], dl
mov	[eax+20h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_4]
mov	[esp+3Ch+var_4], dl
mov	[eax+21h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_20]
mov	[esp+3Ch+var_20], dl
mov	[eax+22h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_10]
mov	[esp+3Ch+var_10], dl
mov	[eax+23h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1E]
mov	[esp+3Ch+var_1E], dl
mov	[eax+24h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_8]
mov	[esp+3Ch+var_8], dl
mov	[eax+25h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1C]
mov	[esp+3Ch+var_1C], dl
mov	[eax+26h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_E]
mov	[esp+3Ch+var_E], dl
mov	[eax+27h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1A]
mov	[esp+3Ch+var_1A], dl
mov	[eax+28h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_24]
mov	[esp+3Ch+var_24], dl
mov	[eax+29h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_18]
mov	[esp+3Ch+var_18], dl
mov	[eax+2Ah], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_C]
mov	[esp+3Ch+var_C], dl
mov	[eax+2Bh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2E]
mov	[esp+3Ch+var_2E], dl
mov	[eax+2Ch], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_26]
mov	[esp+3Ch+var_26], dl
mov	[eax+2Dh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2C]
mov	[esp+3Ch+var_2C], dl
mov	[eax+2Eh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_31]
mov	[esp+3Ch+var_31], dl
mov	[eax+2Fh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_12]
mov	[esp+3Ch+var_12], dl
mov	[eax+30h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_23]
mov	[esp+3Ch+var_23], dl
mov	[eax+31h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_21]
mov	[esp+3Ch+var_21], dl
mov	[eax+32h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1F]
mov	[esp+3Ch+var_1F], dl
mov	[eax+33h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1D]
mov	[esp+3Ch+var_1D], dl
mov	[eax+34h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_1B]
mov	[esp+3Ch+var_1B], dl
mov	[eax+35h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_19]
mov	[esp+3Ch+var_19], dl
mov	[eax+36h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_17]
mov	[esp+3Ch+var_17], dl
mov	[eax+37h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_30]
mov	[esp+3Ch+var_30], dl
mov	[eax+38h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2F]
mov	[esp+3Ch+var_2F], dl
mov	[eax+39h], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2D]
mov	[esp+3Ch+var_2D], dl
mov	[eax+3Ah], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_2B]
mov	[esp+3Ch+var_2B], dl
mov	[eax+3Bh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_29]
mov	[esp+3Ch+var_29], dl
mov	[eax+3Ch], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_27]
mov	[esp+3Ch+var_27], dl
mov	[eax+3Dh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_25]
mov	[esp+3Ch+var_25], dl
mov	[eax+3Eh], dl
movzx	edx, dl
mov	dl, ds:byte_10039530[edx]
xor	dl, [esp+3Ch+var_28]
mov	[esp+3Ch+var_28], dl
mov	[eax+3Fh], dl
movzx	edx, dl
add	edx, esi
and	edx, 800000FFh
jns	short loc_10003010
dec	edx
or	edx, 0FFFFFF00h
inc	edx
inc	esi
cmp	esi, 12h
jl	loc_10002C40
pop	esi
mov	byte ptr [eax+40h], 10h
pop	ebx
add	esp, 34h
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+Size]
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
mov	al, [esi+40h]
push	edi
cmp	al, 10h
jz	short loc_1000307C
movzx	eax, al
mov	ebp, ebx
cmp	ebx, eax
jb	short loc_1000304E
mov	ebp, eax
mov	edi, [esp+10h+Src]
mov	ecx, esi
push	ebp		
sub	ecx, eax
add	ecx, 30h
push	edi		
push	ecx		
call	memcpy
movzx	edx, byte ptr [esi+40h]
add	edx, ebp
add	esp, 0Ch
cmp	edx, 10h
jb	short loc_10003076
mov	eax, esi
call	sub_10002880
sub	ebx, ebp
add	edi, ebp
jmp	short loc_10003080
mov	edi, [esp+10h+Src]
cmp	ebx, 10h
jb	short loc_100030B7
mov	ebp, ebx
shr	ebp, 4
lea	ebx, [ebx+0]
mov	eax, [edi]
mov	[esi+20h], eax
mov	ecx, [edi+4]
mov	[esi+24h], ecx
mov	edx, [edi+8]
mov	[esi+28h], edx
mov	eax, [edi+0Ch]
mov	[esi+2Ch], eax
mov	eax, esi
call	sub_10002880
sub	ebx, 10h
add	edi, 10h
dec	ebp
jnz	short loc_10003090
test	ebx, ebx
jz	short loc_100030C9
push	ebx		
lea	ecx, [esi+20h]
push	edi		
push	ecx		
call	memcpy
add	esp, 0Ch
mov	dl, 10h
sub	dl, bl
pop	edi
mov	[esi+40h], dl
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
cmp	[esp+arg_C], 10h
jnb	short loc_100030F5
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
retn
push	esi
mov	esi, [esp+4+arg_0]
mov	al, [esi+40h]
movzx	ecx, al
push	ecx		
push	ecx		
mov	cl, 10h
sub	cl, al
movzx	edx, cl
lea	eax, [edx+esi+20h]
push	eax		
call	memset
add	esp, 0Ch
mov	eax, esi
call	sub_10002880
mov	ecx, [esi]
mov	edx, [esi+4]
mov	eax, [esi+8]
mov	[esi+20h], ecx
mov	ecx, [esi+0Ch]
mov	[esi+24h], edx
mov	[esi+28h], eax
mov	eax, esi
mov	[esi+2Ch], ecx
call	sub_10002880
mov	edx, [esp+4+arg_8]
mov	eax, [esp+4+arg_4]
mov	dword ptr [edx], 10h
mov	ecx, [esi+10h]
mov	[eax], ecx
mov	edx, [esi+14h]
mov	[eax+4], edx
mov	ecx, [esi+18h]
mov	[eax+8], ecx
mov	edx, [esi+1Ch]
mov	[eax+0Ch], edx
pop	esi
retn
align 10h
mov	eax, 41h
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, 10h
rep movsd
movsb
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
push	41h
call	PORT_ZAlloc_Util
add	esp, 4
test	eax, eax
jnz	short loc_100031BE
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	ecx, 10h
mov	edi, eax
rep movsd
movsb
pop	edi
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, 10h
rep movsd
movsb
pop	edi
pop	esi
retn
align 10h
push	esi
push	41h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000322D
push	0FFFFE890h
call	PORT_SetError_Util
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 8
or	eax, 0FFFFFFFFh
pop	esi
retn
push	edi
push	41h		
push	0		
push	esi		
call	memset
mov	ecx, [esp+14h+Src]
mov	eax, ecx
add	esp, 0Ch
mov	byte ptr [esi+40h], 10h
lea	edi, [eax+1]
mov	dl, [eax]
inc	eax
test	dl, dl
jnz	short loc_10003248
sub	eax, edi
push	eax		
push	ecx		
push	esi		
call	sub_10003030
mov	al, [esi+40h]
movzx	ecx, al
push	ecx		
push	ecx		
mov	cl, 10h
sub	cl, al
movzx	edx, cl
lea	eax, [edx+esi+20h]
push	eax		
call	memset
mov	eax, esi
call	sub_10002880
mov	ecx, [esi]
mov	edx, [esi+4]
mov	eax, [esi+8]
mov	[esi+20h], ecx
mov	ecx, [esi+0Ch]
mov	[esi+24h], edx
mov	[esi+28h], eax
mov	eax, esi
mov	[esi+2Ch], ecx
call	sub_10002880
mov	edx, [esi+10h]
mov	eax, [esp+20h+arg_0]
mov	[eax], edx
mov	ecx, [esi+14h]
mov	[eax+4], ecx
mov	edx, [esi+18h]
mov	[eax+8], edx
mov	ecx, [esi+1Ch]
push	41h
push	esi
mov	[eax+0Ch], ecx
call	PORT_ZFree_Util
add	esp, 20h
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	58h
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jnz	short locret_100032ED
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	58h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10003312
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	dword ptr [eax], 0
mov	dword ptr [eax+4], 0
mov	dword ptr [eax+8], 67452301h
mov	dword ptr [eax+0Ch], 0EFCDAB89h
mov	dword ptr [eax+10h], 98BADCFEh
mov	dword ptr [eax+14h], 10325476h
retn
align 10h
			
sub	esp, 3Ch
push	ebx
mov	ecx, [esp+40h+arg_0]
mov	edx, [ecx+14h]
push	ebp
push	esi
mov	esi, [ecx+10h]
push	edi
mov	edi, [ecx+0Ch]
mov	ecx, [ecx+8]
mov	ebx, edi
not	ebx
and	ebx, edx
mov	ebp, esi
and	ebp, edi
or	ebx, ebp
add	ebx, [eax]
mov	ebp, edi
lea	ecx, [ebx+ecx-28955B88h]
rol	ecx, 7
add	ecx, edi
and	ebp, ecx
mov	ebx, ecx
not	ebx
and	ebx, esi
or	ebx, ebp
add	ebx, [eax+4]
lea	edx, [ebx+edx-173848AAh]
rol	edx, 0Ch
add	edx, ecx
mov	ebx, edx
not	ebx
and	ebx, edi
mov	ebp, edx
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+8]
mov	ebp, edx
lea	esi, [ebx+esi+242070DBh]
ror	esi, 0Fh
add	esi, edx
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, ecx
or	ebx, ebp
add	ebx, [eax+0Ch]
mov	ebp, esi
lea	edi, [ebx+edi-3E423112h]
ror	edi, 0Ah
add	edi, esi
mov	[esp+4Ch+var_3C], edi
and	ebp, [esp+4Ch+var_3C]
not	edi
and	edi, edx
or	edi, ebp
add	edi, [eax+10h]
lea	ecx, [edi+ecx-0A83F051h]
mov	edi, [esp+4Ch+var_3C]
rol	ecx, 7
add	ecx, edi
mov	ebx, ecx
not	ebx
and	ebx, esi
mov	ebp, edi
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+14h]
lea	edx, [ebx+edx+4787C62Ah]
rol	edx, 0Ch
add	edx, ecx
mov	ebx, edx
not	ebx
and	ebx, edi
mov	ebp, edx
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+18h]
lea	esi, [ebx+esi-57CFB9EDh]
mov	ebx, [eax+1Ch]
ror	esi, 0Fh
add	esi, edx
mov	[esp+4Ch+var_38], ebx
mov	ebp, edx
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, ecx
or	ebx, ebp
add	ebx, [esp+4Ch+var_38]
mov	ebp, esi
lea	edi, [ebx+edi-2B96AFFh]
ror	edi, 0Ah
add	edi, esi
mov	[esp+4Ch+var_3C], edi
and	ebp, [esp+4Ch+var_3C]
not	edi
and	edi, edx
or	edi, ebp
add	edi, [eax+20h]
lea	ecx, [edi+ecx+698098D8h]
mov	edi, [esp+4Ch+var_3C]
rol	ecx, 7
add	ecx, edi
mov	ebp, edi
and	ebp, ecx
mov	ebx, ecx
not	ebx
and	ebx, esi
or	ebx, ebp
add	ebx, [eax+24h]
lea	edx, [ebx+edx-74BB0851h]
rol	edx, 0Ch
add	edx, ecx
mov	ebx, edx
not	ebx
and	ebx, edi
mov	ebp, edx
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+28h]
mov	ebp, edx
lea	esi, [ebx+esi-0A44Fh]
ror	esi, 0Fh
add	esi, edx
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, ecx
or	ebx, ebp
add	ebx, [eax+2Ch]
mov	ebp, esi
lea	edi, [ebx+edi-76A32842h]
ror	edi, 0Ah
add	edi, esi
mov	[esp+4Ch+var_3C], edi
and	ebp, [esp+4Ch+var_3C]
not	edi
and	edi, edx
or	edi, ebp
add	edi, [eax+30h]
lea	ecx, [edi+ecx+6B901122h]
mov	edi, [esp+4Ch+var_3C]
rol	ecx, 7
add	ecx, edi
mov	ebx, ecx
not	ebx
and	ebx, esi
mov	ebp, edi
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+34h]
lea	edx, [ebx+edx-2678E6Dh]
rol	edx, 0Ch
add	edx, ecx
mov	ebx, edx
not	ebx
mov	ebp, ebx
and	ebp, edi
mov	edi, edx
and	edi, ecx
or	ebp, edi
add	ebp, [eax+38h]
lea	esi, [esi+ebp-5986BC72h]
ror	esi, 0Fh
add	esi, edx
and	ebx, esi
mov	edi, esi
not	edi
mov	[esp+4Ch+var_34], edi
and	edi, ecx
mov	ebp, edx
and	ebp, esi
or	edi, ebp
add	edi, [eax+3Ch]
mov	ebp, [esp+4Ch+var_3C]
lea	edi, [edi+ebp+49B40821h]
ror	edi, 0Ah
add	edi, esi
mov	ebp, edx
and	ebp, edi
or	ebx, ebp
add	ebx, [eax+4]
mov	ebp, esi
lea	ecx, [ebx+ecx-9E1DA9Eh]
mov	ebx, [esp+4Ch+var_34]
and	ebx, edi
rol	ecx, 5
add	ecx, edi
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax+18h]
lea	edx, [ebx+edx-3FBF4CC0h]
rol	edx, 9
add	edx, ecx
mov	ebx, edi
not	ebx
and	ebx, ecx
mov	ebp, edx
and	ebp, edi
or	ebx, ebp
add	ebx, [eax+2Ch]
lea	esi, [ebx+esi+265E5A51h]
mov	ebx, ecx
rol	esi, 0Eh
add	esi, edx
not	ebx
and	ebx, edx
mov	ebp, esi
and	ebp, ecx
or	ebx, ebp
add	ebx, [eax]
mov	ebp, edx
lea	edi, [ebx+edi-16493856h]
not	ebp
and	ebp, esi
ror	edi, 0Ch
add	edi, esi
mov	ebx, edx
and	ebx, edi
or	ebp, ebx
mov	ebx, [eax+14h]
add	ebp, ebx
lea	ecx, [ecx+ebp-29D0EFA3h]
rol	ecx, 5
add	ecx, edi
mov	[esp+4Ch+var_3C], ecx
mov	ecx, esi
not	ecx
and	ecx, edi
mov	ebp, esi
and	ebp, [esp+4Ch+var_3C]
mov	[esp+4Ch+var_24], ebx
or	ecx, ebp
add	ecx, [eax+28h]
mov	ebp, edi
lea	edx, [ecx+edx+2441453h]
mov	ecx, [esp+4Ch+var_3C]
rol	edx, 9
add	edx, ecx
not	ebp
and	ebp, ecx
mov	ecx, edx
and	ecx, edi
or	ebp, ecx
add	ebp, [eax+3Ch]
mov	ecx, [esp+4Ch+var_3C]
lea	esi, [esi+ebp-275E197Fh]
not	ecx
and	ecx, edx
rol	esi, 0Eh
add	esi, edx
mov	ebp, esi
and	ebp, [esp+4Ch+var_3C]
or	ecx, ebp
add	ecx, [eax+10h]
mov	ebp, edx
lea	edi, [ecx+edi-182C0438h]
ror	edi, 0Ch
add	edi, esi
and	ebp, edi
mov	ecx, edx
not	ecx
and	ecx, esi
or	ecx, ebp
add	ecx, [eax+24h]
mov	ebp, [esp+4Ch+var_3C]
lea	ecx, [ecx+ebp+21E1CDE6h]
rol	ecx, 5
add	ecx, edi
mov	[esp+4Ch+var_3C], ecx
mov	ecx, esi
not	ecx
and	ecx, edi
mov	ebp, esi
and	ebp, [esp+4Ch+var_3C]
or	ecx, ebp
add	ecx, [eax+38h]
mov	ebp, edi
lea	edx, [ecx+edx-3CC8F82Ah]
mov	ecx, [esp+4Ch+var_3C]
not	ebp
and	ebp, ecx
rol	edx, 9
add	edx, ecx
mov	ecx, edx
and	ecx, edi
or	ebp, ecx
add	ebp, [eax+0Ch]
lea	esi, [esi+ebp-0B2AF279h]
mov	ebp, [esp+4Ch+var_3C]
not	ebp
and	ebp, edx
rol	esi, 0Eh
add	esi, edx
mov	ecx, esi
and	ecx, [esp+4Ch+var_3C]
or	ebp, ecx
mov	ecx, [eax+20h]
add	ebp, ecx
mov	[esp+4Ch+var_34], ecx
lea	edi, [edi+ebp+455A14EDh]
ror	edi, 0Ch
add	edi, esi
mov	ecx, edx
not	ecx
and	ecx, esi
mov	ebp, edx
and	ebp, edi
or	ecx, ebp
add	ecx, [eax+34h]
mov	ebp, [esp+4Ch+var_3C]
lea	ecx, [ecx+ebp-561C16FBh]
rol	ecx, 5
add	ecx, edi
mov	[esp+4Ch+var_3C], ecx
mov	ebp, esi
not	ebp
mov	ecx, esi
and	ecx, [esp+4Ch+var_3C]
and	ebp, edi
or	ebp, ecx
mov	ecx, [eax+8]
mov	[esp+4Ch+var_30], ecx
add	ebp, ecx
mov	ecx, [esp+4Ch+var_3C]
lea	edx, [edx+ebp-3105C08h]
rol	edx, 9
add	edx, ecx
mov	ebp, edi
not	ebp
and	ebp, ecx
mov	ecx, edx
and	ecx, edi
or	ebp, ecx
add	ebp, [eax+1Ch]
mov	ecx, [esp+4Ch+var_3C]
lea	esi, [esi+ebp+676F02D9h]
rol	esi, 0Eh
add	esi, edx
not	ecx
and	ecx, edx
mov	ebp, esi
and	ebp, [esp+4Ch+var_3C]
or	ecx, ebp
add	ecx, [eax+30h]
lea	edi, [ecx+edi-72D5B376h]
ror	edi, 0Ch
add	edi, esi
mov	ecx, edx
xor	ecx, esi
xor	ecx, edi
add	ecx, ebx
mov	ebx, [esp+4Ch+var_3C]
lea	ecx, [ecx+ebx-5C6BEh]
rol	ecx, 4
add	ecx, edi
mov	ebx, esi
xor	ebx, edi
xor	ebx, ecx
add	ebx, [esp+4Ch+var_34]
lea	edx, [ebx+edx-788E097Fh]
mov	ebx, [eax+2Ch]
rol	edx, 0Bh
add	edx, ecx
mov	ebp, edx
xor	ebp, edi
xor	ebp, ecx
add	ebp, ebx
lea	esi, [esi+ebp+6D9D6122h]
mov	ebp, [eax+38h]
mov	[esp+4Ch+var_8], ebx
rol	esi, 10h
add	esi, edx
mov	ebx, edx
xor	ebx, esi
mov	[esp+4Ch+var_3C], ebx
xor	ebx, ecx
add	ebx, ebp
lea	edi, [ebx+edi-21AC7F4h]
mov	ebx, [esp+4Ch+var_3C]
ror	edi, 9
add	edi, esi
xor	ebx, edi
mov	[esp+4Ch+var_28], ebp
mov	ebp, [eax+4]
add	ebx, ebp
lea	ecx, [ebx+ecx-5B4115BCh]
mov	ebx, [eax+10h]
mov	[esp+4Ch+var_18], ebp
rol	ecx, 4
add	ecx, edi
mov	ebp, esi
xor	ebp, edi
xor	ebp, ecx
add	ebp, ebx
mov	[esp+4Ch+var_C], ebx
lea	ebx, [edx+ebp+4BDECFA9h]
rol	ebx, 0Bh
add	ebx, ecx
mov	edx, ebx
xor	edx, edi
xor	edx, ecx
add	edx, [eax+1Ch]
lea	esi, [edx+esi-944B4A0h]
rol	esi, 10h
add	esi, ebx
mov	edx, ebx
xor	edx, esi
mov	[esp+4Ch+var_3C], edx
mov	ebp, edx
mov	edx, [eax+28h]
xor	ebp, ecx
add	ebp, edx
mov	[esp+4Ch+var_1C], edx
lea	edx, [edi+ebp-41404390h]
mov	ebp, [eax+34h]
mov	edi, [esp+4Ch+var_3C]
ror	edx, 9
add	edx, esi
xor	edi, edx
add	edi, ebp
lea	ecx, [edi+ecx+289B7EC6h]
mov	edi, [eax]
mov	[esp+4Ch+var_10], ebp
mov	ebp, esi
xor	ebp, edx
rol	ecx, 4
add	ecx, edx
xor	ebp, ecx
add	ebp, edi
lea	ebx, [ebx+ebp-155ED806h]
rol	ebx, 0Bh
add	ebx, ecx
mov	ebp, ebx
xor	ebp, edx
xor	ebp, ecx
mov	[esp+4Ch+var_2C], edi
mov	edi, [eax+0Ch]
add	ebp, edi
mov	[esp+4Ch+var_20], edi
lea	edi, [esi+ebp-2B10CF7Bh]
rol	edi, 10h
add	edi, ebx
mov	esi, ebx
xor	esi, edi
mov	ebp, esi
mov	[esp+4Ch+var_3C], esi
mov	esi, [eax+18h]
xor	ebp, ecx
add	ebp, esi
mov	[esp+4Ch+var_14], esi
mov	esi, [esp+4Ch+var_3C]
lea	edx, [edx+ebp+4881D05h]
mov	ebp, [eax+24h]
ror	edx, 9
add	edx, edi
xor	esi, edx
add	esi, ebp
lea	ecx, [esi+ecx-262B2FC7h]
rol	ecx, 4
add	ecx, edx
mov	esi, edi
xor	esi, edx
xor	esi, ecx
mov	[esp+4Ch+var_4], ebp
mov	ebp, [eax+30h]
mov	eax, [eax+3Ch]
add	esi, ebp
lea	esi, [esi+ebx-1924661Bh]
rol	esi, 0Bh
add	esi, ecx
mov	ebx, esi
xor	ebx, edx
xor	ebx, ecx
add	ebx, eax
lea	edi, [ebx+edi+1FA27CF8h]
mov	ebx, [esp+4Ch+var_30]
mov	[esp+4Ch+var_3C], eax
rol	edi, 10h
add	edi, esi
mov	eax, esi
xor	eax, edi
xor	eax, ecx
add	eax, ebx
lea	edx, [eax+edx-3B53A99Bh]
ror	edx, 9
add	edx, edi
mov	eax, esi
not	eax
or	eax, edx
xor	eax, edi
add	eax, [esp+4Ch+var_2C]
lea	ecx, [eax+ecx-0BD6DDBCh]
rol	ecx, 6
add	ecx, edx
mov	eax, edi
not	eax
or	eax, ecx
xor	eax, edx
add	eax, [esp+4Ch+var_38]
lea	esi, [eax+esi+432AFF97h]
rol	esi, 0Ah
add	esi, ecx
mov	eax, edx
not	eax
or	eax, esi
xor	eax, ecx
add	eax, [esp+4Ch+var_28]
lea	edi, [eax+edi-546BDC59h]
rol	edi, 0Fh
add	edi, esi
mov	eax, ecx
not	eax
or	eax, edi
xor	eax, esi
add	eax, [esp+4Ch+var_24]
lea	edx, [eax+edx-36C5FC7h]
ror	edx, 0Bh
add	edx, edi
mov	eax, esi
not	eax
or	eax, edx
xor	eax, edi
add	eax, ebp
lea	ecx, [eax+ecx+655B59C3h]
rol	ecx, 6
add	ecx, edx
mov	eax, edi
not	eax
or	eax, ecx
xor	eax, edx
add	eax, [esp+4Ch+var_20]
lea	esi, [eax+esi-70F3336Eh]
rol	esi, 0Ah
add	esi, ecx
mov	eax, edx
not	eax
or	eax, esi
xor	eax, ecx
add	eax, [esp+4Ch+var_1C]
lea	edi, [eax+edi-100B83h]
rol	edi, 0Fh
add	edi, esi
mov	eax, ecx
not	eax
or	eax, edi
xor	eax, esi
add	eax, [esp+4Ch+var_18]
lea	edx, [eax+edx-7A7BA22Fh]
ror	edx, 0Bh
add	edx, edi
mov	eax, esi
not	eax
or	eax, edx
xor	eax, edi
add	eax, [esp+4Ch+var_34]
lea	ecx, [eax+ecx+6FA87E4Fh]
rol	ecx, 6
add	ecx, edx
mov	eax, edi
not	eax
or	eax, ecx
xor	eax, edx
add	eax, [esp+4Ch+var_3C]
lea	eax, [eax+esi-1D31920h]
rol	eax, 0Ah
add	eax, ecx
mov	esi, edx
not	esi
or	esi, eax
xor	esi, ecx
add	esi, [esp+4Ch+var_14]
lea	esi, [esi+edi-5CFEBCECh]
rol	esi, 0Fh
add	esi, eax
mov	edi, ecx
not	edi
or	edi, esi
xor	edi, eax
add	edi, [esp+4Ch+var_10]
lea	edx, [edi+edx+4E0811A1h]
mov	edi, eax
not	edi
ror	edx, 0Bh
add	edx, esi
or	edi, edx
xor	edi, esi
add	edi, [esp+4Ch+var_C]
lea	ecx, [edi+ecx-8AC817Eh]
rol	ecx, 6
add	ecx, edx
mov	edi, esi
not	edi
or	edi, ecx
xor	edi, edx
add	edi, [esp+4Ch+var_8]
lea	edi, [edi+eax-42C50DCBh]
rol	edi, 0Ah
add	edi, ecx
mov	eax, edx
not	eax
or	eax, edi
xor	eax, ecx
add	eax, ebx
lea	esi, [eax+esi+2AD7D2BBh]
mov	eax, ecx
rol	esi, 0Fh
add	esi, edi
not	eax
or	eax, esi
xor	eax, edi
add	eax, [esp+4Ch+var_4]
lea	edx, [eax+edx-14792C6Fh]
mov	eax, [esp+4Ch+arg_0]
mov	ebx, [eax+8]
add	ebx, ecx
mov	ecx, [eax+10h]
ror	edx, 0Bh
add	edx, [eax+0Ch]
add	ecx, esi
mov	[eax+10h], ecx
mov	ecx, [eax+14h]
add	edx, esi
add	ecx, edi
pop	edi
pop	esi
pop	ebp
mov	[eax+8], ebx
mov	[eax+0Ch], edx
mov	[eax+14h], ecx
pop	ebx
add	esp, 3Ch
retn
align 10h
			
push	ebx
push	ebp
mov	ebp, [esp+8+Size]
mov	eax, [ebp+0]
push	esi
mov	esi, [esp+0Ch+arg_8]
push	edi
mov	edi, eax
add	eax, esi
and	edi, 3Fh
mov	[ebp+0], eax
cmp	eax, esi
jnb	short loc_10003AA0
inc	dword ptr [ebp+4]
test	edi, edi
jz	short loc_10003AF0
mov	eax, 40h
sub	eax, edi
mov	[esp+10h+Size],	esi
cmp	esi, eax
jb	short loc_10003AB7
mov	[esp+10h+Size],	eax
mov	eax, [esp+10h+Size]
mov	ebx, [esp+10h+Src]
push	eax		
lea	ecx, [edi+ebp+18h]
push	ebx		
push	ecx		
call	memcpy
mov	eax, [esp+1Ch+Size]
lea	edx, [eax+edi]
add	esp, 0Ch
cmp	edx, 40h
jb	short loc_10003AEA
lea	eax, [ebp+18h]
push	ebp
call	sub_10003350
mov	eax, [esp+14h+Size]
add	esp, 4
sub	esi, eax
add	ebx, eax
jmp	short loc_10003AF4
mov	ebx, [esp+10h+Src]
cmp	esi, 40h
jb	short loc_10003B14
mov	edi, esi
shr	edi, 6
mov	edi, edi
push	ebp
mov	eax, ebx
call	sub_10003350
add	esp, 4
sub	esi, 40h
add	ebx, 40h
dec	edi
jnz	short loc_10003B00
test	esi, esi
jz	short loc_10003B26
push	esi		
push	ebx		
add	ebp, 18h
push	ebp		
call	memcpy
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
			
push	ebx
push	esi
mov	esi, [esp+8+Size]
mov	ebx, [esi]
mov	eax, ebx
and	eax, 3Fh
cmp	[esp+8+arg_C], 10h
jnb	short loc_10003B54
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebx
retn
push	edi
mov	edi, [esi+4]
add	edi, edi
mov	ecx, ebx
add	edi, edi
add	ebx, ebx
add	edi, edi
shr	ecx, 1Dh
add	ebx, ebx
or	edi, ecx
add	ebx, ebx
cmp	eax, 38h
jnb	short loc_10003B7A
mov	edx, 38h
sub	edx, eax
push	edx
jmp	short loc_10003B82
mov	ecx, 78h
sub	ecx, eax
push	ecx		
push	offset dword_10039630 
push	esi		
call	sub_10003A80
add	esp, 0Ch
lea	eax, [esi+18h]
push	esi
mov	[esi+50h], ebx
mov	[esi+54h], edi
call	sub_10003350
mov	eax, [esp+10h+arg_8]
add	esp, 4
pop	edi
test	eax, eax
jz	short loc_10003BB1
mov	dword ptr [eax], 10h
mov	edx, [esi+8]
mov	eax, [esp+8+arg_4]
mov	[eax], edx
mov	ecx, [esi+0Ch]
mov	[eax+4], ecx
mov	edx, [esi+10h]
mov	[eax+8], edx
mov	ecx, [esi+14h]
pop	esi
mov	[eax+0Ch], ecx
pop	ebx
retn
align 10h
cmp	[esp+arg_C], 10h
jnb	short loc_10003BE5
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
retn
mov	eax, [esp+arg_0]
mov	edx, [eax+8]
mov	ecx, [esp+arg_4]
push	esi
mov	esi, [eax+0Ch]
push	edi
mov	edi, [eax+10h]
mov	eax, [eax+14h]
mov	[ecx], edx
mov	[ecx+4], esi
mov	[ecx+8], edi
mov	[ecx+0Ch], eax
mov	eax, [esp+8+arg_8]
pop	edi
pop	esi
test	eax, eax
jz	short locret_10003C16
mov	dword ptr [eax], 10h
retn
align 10h
mov	eax, 58h
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, 16h
rep movsd
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
push	58h
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jnz	short loc_10003C6E
push	0FFFFE890h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	ecx, 16h
mov	edi, eax
rep movsd
pop	edi
pop	esi
retn
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, 16h
rep movsd
pop	edi
pop	esi
retn
align 10h
			
mov	[esp+arg_0], 0FFFFE898h
jmp	PORT_SetError_Util
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	eax, [esp+60h+Src]
xor	ecx, ecx
push	esi
mov	esi, [esp+64h+arg_0]
mov	[esp+64h+Size],	ecx
mov	[esp+64h+var_58], ecx
mov	ecx, [esp+64h+arg_8]
push	ecx		
push	eax		
lea	edx, [esp+6Ch+Size]
push	edx		
mov	[esp+70h+var_54], 67452301h
mov	[esp+70h+var_50], 0EFCDAB89h
mov	[esp+70h+var_4C], 98BADCFEh
mov	[esp+70h+var_48], 10325476h
call	sub_10003A80
push	10h		
lea	eax, [esp+74h+var_60]
push	eax		
lea	ecx, [esp+78h+Size]
push	esi		
push	ecx		
call	sub_10003B30
mov	ecx, [esp+80h+var_4]
add	esp, 1Ch
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 60h
retn
align 10h
sub	esp, 60h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+60h+var_4], eax
mov	edx, [esp+60h+Src]
push	esi
mov	esi, [esp+64h+arg_0]
mov	eax, edx
push	edi
lea	edi, [eax+1]
lea	ecx, [ecx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10003D50
sub	eax, edi
push	eax		
push	edx		
lea	eax, [esp+70h+Size]
push	eax		
mov	[esp+74h+Size],	0
mov	[esp+74h+var_58], 0
mov	[esp+74h+var_54], 67452301h
mov	[esp+74h+var_50], 0EFCDAB89h
mov	[esp+74h+var_4C], 98BADCFEh
mov	[esp+74h+var_48], 10325476h
call	sub_10003A80
push	10h		
lea	ecx, [esp+78h+var_60]
push	ecx		
lea	edx, [esp+7Ch+Size]
push	esi		
push	edx		
call	sub_10003B30
mov	ecx, [esp+84h+var_4]
add	esp, 1Ch
pop	edi
pop	esi
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 60h
retn
			
push	128h
call	PORT_Alloc_Util
add	esp, 4
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	128h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10003DF5
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	edi
push	128h		
push	0		
push	esi		
call	memset
lea	edi, [esi+100h]
add	esp, 0Ch
mov	ecx, 8
mov	esi, offset dword_10039898
rep movsd
pop	edi
pop	esi
retn
align 10h
			
sub	esp, 58h
push	ebx
push	ebp
push	esi
push	edi
mov	ecx, [eax]
bswap	ecx
mov	[esp+68h+var_34], ecx
mov	[eax], ecx
mov	ecx, [eax+0Ch]
bswap	ecx
mov	[esp+68h+var_58], ecx
mov	[eax+0Ch], ecx
mov	ecx, [eax+10h]
bswap	ecx
mov	[esp+68h+var_20], ecx
mov	[eax+10h], ecx
mov	ecx, [eax+14h]
bswap	ecx
mov	[esp+68h+var_1C], ecx
mov	[eax+14h], ecx
mov	ecx, [eax+18h]
bswap	ecx
mov	[esp+68h+var_18], ecx
mov	[eax+18h], ecx
mov	ecx, [eax+1Ch]
bswap	ecx
mov	[esp+68h+var_14], ecx
mov	[eax+1Ch], ecx
mov	ecx, [eax+20h]
bswap	ecx
mov	[esp+68h+var_10], ecx
mov	[eax+20h], ecx
mov	ecx, [eax+24h]
bswap	ecx
mov	[esp+68h+var_3C], ecx
mov	[eax+24h], ecx
mov	ecx, [eax+28h]
bswap	ecx
mov	edx, [eax+3Ch]
mov	[esp+68h+var_30], ecx
mov	[eax+28h], ecx
mov	ecx, [eax+2Ch]
bswap	ecx
mov	[esp+68h+var_2C], ecx
mov	[eax+2Ch], ecx
mov	ecx, [eax+30h]
mov	esi, [eax+8]
mov	edi, [eax+4]
bswap	edi
bswap	ecx
mov	[esp+68h+var_28], ecx
mov	[eax+30h], ecx
mov	ecx, [eax+34h]
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
bswap	ecx
ror	ebp, 7
xor	ebx, ebp
mov	[esp+68h+var_40], edi
mov	[eax+4], edi
shr	edi, 3
mov	[esp+68h+var_24], ecx
mov	[eax+34h], ecx
mov	ecx, [eax+38h]
bswap	ecx
xor	ebx, edi
mov	edi, ecx
ror	edi, 13h
mov	ebp, ecx
ror	ebp, 11h
bswap	esi
bswap	edx
xor	edi, ebp
mov	[esp+68h+var_54], esi
mov	[eax+8], esi
mov	[esp+68h+var_C], ecx
mov	[eax+38h], ecx
mov	[esp+68h+var_8], edx
mov	[eax+3Ch], edx
mov	ebp, ecx
add	ebx, [esp+68h+var_3C]
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, [esp+68h+var_34]
mov	ebx, esi
mov	[eax+40h], edi
mov	edi, esi
ror	edi, 12h
ror	ebx, 7
xor	edi, ebx
mov	ebx, esi
shr	ebx, 3
xor	edi, ebx
add	edi, [esp+68h+var_30]
mov	ebx, edx
ror	ebx, 13h
mov	ebp, edx
ror	ebp, 11h
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 0Ah
xor	ebx, ebp
add	ebx, edi
add	ebx, [esp+68h+var_40]
mov	edi, [esp+68h+var_58]
mov	ebp, edi
mov	[eax+44h], ebx
mov	ebx, edi
shr	edi, 3
ror	ebx, 12h
ror	ebp, 7
xor	ebx, ebp
xor	ebx, edi
add	ebx, [esp+68h+var_2C]
mov	edi, [eax+40h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+40h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_20]
add	ebp, ebx
add	ebp, esi
mov	esi, [eax+44h]
mov	[eax+48h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
shr	edi, 3
ror	ebp, 7
xor	ebx, ebp
xor	ebx, edi
add	ebx, [esp+68h+var_28]
mov	edi, esi
ror	edi, 13h
mov	ebp, esi
ror	ebp, 11h
xor	edi, ebp
mov	ebp, esi
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, [esp+68h+var_58]
mov	[eax+4Ch], edi
mov	edi, [esp+68h+var_1C]
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
shr	edi, 3
xor	ebx, ebp
xor	ebx, edi
mov	edi, [eax+48h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+48h]
add	ebx, [esp+68h+var_24]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [esp+68h+var_20]
mov	edi, [esp+68h+var_18]
mov	[eax+50h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+4Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+4Ch]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_14]
add	ebx, ecx
add	ebp, ebx
add	ebp, [esp+68h+var_1C]
mov	ebx, edi
mov	[eax+54h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+50h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+50h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_10]
add	ebx, edx
add	ebp, ebx
add	ebp, [esp+68h+var_18]
mov	ebx, edi
mov	[eax+58h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+54h]
add	ebx, [eax+40h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+54h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_3C]
add	ebp, ebx
add	ebp, [esp+68h+var_14]
mov	ebx, edi
mov	[eax+5Ch], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+58h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+58h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, esi
add	ebp, ebx
add	ebp, [esp+68h+var_10]
mov	edi, [esp+68h+var_30]
mov	[eax+60h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+48h]
mov	edi, [eax+5Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+5Ch]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [esp+68h+var_3C]
mov	edi, [esp+68h+var_2C]
mov	[eax+64h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+4Ch]
mov	edi, [eax+60h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+60h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_28]
add	ebp, ebx
add	ebp, [esp+68h+var_30]
mov	ebx, edi
mov	[eax+68h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+64h]
add	ebx, [eax+50h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+64h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [esp+68h+var_24]
add	ebp, ebx
add	ebp, [esp+68h+var_2C]
mov	ebx, edi
mov	[eax+6Ch], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
shr	edi, 3
xor	ebx, ebp
xor	ebx, edi
mov	edi, [eax+68h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+68h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, [eax+54h]
mov	edi, [eax+6Ch]
add	ebp, ebx
add	ebp, [esp+68h+var_28]
mov	ebx, ecx
mov	[eax+70h], ebp
ror	ebx, 12h
mov	ebp, ecx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, ecx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+58h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+6Ch]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [esp+68h+var_24]
mov	edi, [eax+70h]
mov	[eax+74h], ebp
mov	ebx, edx
ror	ebx, 12h
mov	ebp, edx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+5Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+70h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+40h]
add	ebp, ebx
add	ebp, ecx
mov	ecx, [eax+74h]
mov	ebx, edi
ror	ebx, 12h
mov	[eax+78h], ebp
mov	ebp, edi
shr	edi, 3
ror	ebp, 7
xor	ebx, ebp
xor	ebx, edi
add	ebx, [eax+60h]
mov	edi, ecx
ror	edi, 13h
mov	ebp, ecx
ror	ebp, 11h
xor	edi, ebp
mov	ebp, ecx
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, edx
mov	edx, [eax+78h]
mov	[eax+7Ch], edi
mov	edi, esi
ror	edi, 12h
mov	ebx, esi
ror	ebx, 7
xor	edi, ebx
mov	ebx, esi
shr	ebx, 3
xor	edi, ebx
mov	ebx, edx
ror	ebx, 13h
mov	ebp, edx
ror	ebp, 11h
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 0Ah
add	edi, [eax+64h]
xor	ebx, ebp
add	ebx, edi
add	ebx, [eax+40h]
mov	edi, [eax+48h]
mov	ebp, edi
mov	[eax+80h], ebx
mov	ebx, edi
shr	edi, 3
ror	ebx, 12h
ror	ebp, 7
xor	ebx, ebp
xor	ebx, edi
add	ebx, [eax+68h]
mov	edi, [eax+7Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+7Ch]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
mov	edi, [eax+4Ch]
add	ebp, esi
mov	esi, [eax+80h]
mov	[eax+84h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+6Ch]
mov	edi, esi
ror	edi, 13h
mov	ebp, esi
ror	ebp, 11h
xor	edi, ebp
mov	ebp, esi
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, [eax+48h]
mov	[eax+88h], edi
mov	edi, [eax+50h]
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+84h]
add	ebx, [eax+70h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+84h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+54h]
add	ebp, ebx
add	ebp, [eax+4Ch]
mov	ebx, edi
mov	[eax+8Ch], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+88h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+88h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, ecx
add	ebp, ebx
add	ebp, [eax+50h]
mov	edi, [eax+58h]
mov	[eax+90h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+8Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+8Ch]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+5Ch]
add	ebx, edx
add	ebp, ebx
add	ebp, [eax+54h]
mov	ebx, edi
mov	[eax+94h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+7Ch]
mov	edi, [eax+90h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+90h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+60h]
add	ebp, ebx
add	ebp, [eax+58h]
mov	ebx, edi
mov	[eax+98h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+94h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+94h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+64h]
add	ebx, esi
add	ebp, ebx
add	ebp, [eax+5Ch]
mov	ebx, edi
mov	[eax+9Ch], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
shr	edi, 3
xor	ebx, ebp
xor	ebx, edi
mov	edi, [eax+98h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+98h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, [eax+84h]
mov	edi, [eax+68h]
add	ebp, ebx
add	ebp, [eax+60h]
mov	ebx, edi
mov	[eax+0A0h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+88h]
mov	edi, [eax+9Ch]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+9Ch]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [eax+64h]
mov	edi, [eax+6Ch]
mov	[eax+0A4h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+8Ch]
mov	edi, [eax+0A0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0A0h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+70h]
add	ebp, ebx
add	ebp, [eax+68h]
mov	ebx, edi
mov	[eax+0A8h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+0A4h]
add	ebx, [eax+90h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0A4h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+0A8h]
add	ebp, ebx
add	ebp, [eax+6Ch]
mov	ebx, ecx
mov	[eax+0ACh], ebp
ror	ebx, 12h
mov	ebp, ecx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, ecx
shr	ebp, 3
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0A8h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, [eax+94h]
add	ebp, ebx
add	ebp, [eax+70h]
mov	edi, [eax+0ACh]
mov	[eax+0B0h], ebp
mov	ebx, edx
ror	ebx, 12h
mov	ebp, edx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+98h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0ACh]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
mov	edi, [eax+7Ch]
add	ebp, ecx
mov	ecx, [eax+0B0h]
mov	ebx, edi
ror	ebx, 12h
mov	[eax+0B4h], ebp
mov	ebp, edi
shr	edi, 3
ror	ebp, 7
xor	ebx, ebp
xor	ebx, edi
add	ebx, [eax+9Ch]
mov	edi, ecx
ror	edi, 13h
mov	ebp, ecx
ror	ebp, 11h
xor	edi, ebp
mov	ebp, ecx
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, edx
mov	edx, [eax+0B4h]
mov	[eax+0B8h], edi
mov	edi, esi
ror	edi, 12h
mov	ebx, esi
ror	ebx, 7
xor	edi, ebx
mov	ebx, esi
shr	ebx, 3
xor	edi, ebx
add	edi, [eax+0A0h]
mov	ebx, edx
ror	ebx, 13h
mov	ebp, edx
ror	ebp, 11h
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 0Ah
xor	ebx, ebp
add	ebx, edi
add	ebx, [eax+7Ch]
mov	edi, [eax+84h]
mov	[eax+0BCh], ebx
mov	ebx, edi
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
shr	edi, 3
xor	ebx, ebp
xor	ebx, edi
mov	edi, [eax+0B8h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0B8h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, [eax+0A4h]
mov	edi, [eax+88h]
add	ebp, ebx
add	ebp, esi
mov	[eax+0C0h], ebp
mov	esi, [eax+0BCh]
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+0A8h]
mov	edi, esi
ror	edi, 13h
mov	ebp, esi
ror	ebp, 11h
xor	edi, ebp
mov	ebp, esi
shr	ebp, 0Ah
xor	edi, ebp
add	edi, ebx
add	edi, [eax+84h]
mov	[eax+0C4h], edi
mov	edi, [eax+8Ch]
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+0ACh]
mov	edi, [eax+0C0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0C0h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+90h]
add	ebp, ebx
add	ebp, [eax+88h]
mov	ebx, edi
mov	[eax+0C8h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+0C4h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0C4h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+94h]
add	ebx, ecx
add	ebp, ebx
add	ebp, [eax+8Ch]
mov	ebx, edi
mov	[eax+0CCh], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
shr	edi, 3
xor	ebx, ebp
xor	ebx, edi
mov	edi, [eax+0C8h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0C8h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, edx
add	ebp, ebx
add	ebp, [eax+90h]
mov	edi, [eax+98h]
mov	[eax+0D0h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+0B8h]
mov	edi, [eax+0CCh]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0CCh]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [eax+94h]
mov	edi, [eax+9Ch]
mov	[eax+0D4h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+0D0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0D0h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+0A0h]
add	ebx, esi
add	ebp, ebx
add	ebp, [eax+98h]
mov	ebx, edi
mov	[eax+0D8h], ebp
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+0D4h]
add	ebx, [eax+0C0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0D4h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+0A4h]
add	ebp, ebx
add	ebp, [eax+9Ch]
mov	ebx, edi
mov	[eax+0DCh], ebp
mov	ebp, edi
ror	ebx, 12h
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
mov	edi, [eax+0D8h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0D8h]
shr	edi, 0Ah
xor	ebp, edi
add	ebx, [eax+0C4h]
add	ebp, ebx
add	ebp, [eax+0A0h]
mov	edi, [eax+0A8h]
mov	[eax+0E0h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+0C8h]
mov	edi, [eax+0DCh]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0DCh]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [eax+0A4h]
mov	edi, [eax+0ACh]
mov	[eax+0E4h], ebp
mov	ebx, edi
ror	ebx, 12h
mov	ebp, edi
ror	ebp, 7
xor	ebx, ebp
shr	edi, 3
xor	ebx, edi
add	ebx, [eax+0CCh]
mov	edi, [eax+0E0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0E0h]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, [eax+0A8h]
mov	edi, [eax+0E4h]
mov	[eax+0E8h], ebp
mov	ebx, ecx
ror	ebx, 12h
mov	ebp, ecx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, ecx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+0D0h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0E4h]
shr	edi, 0Ah
xor	ebp, edi
mov	edi, [eax+0E8h]
add	ebp, ebx
add	ebp, [eax+0ACh]
mov	ebx, edx
mov	[eax+0ECh], ebp
ror	ebx, 12h
mov	ebp, edx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, edx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+0D4h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0E8h]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, ecx
mov	ecx, [eax+0B8h]
mov	edi, [eax+0ECh]
mov	[eax+0F0h], ebp
mov	ebx, ecx
ror	ebx, 12h
mov	ebp, ecx
ror	ebp, 7
xor	ebx, ebp
mov	ebp, ecx
shr	ebp, 3
xor	ebx, ebp
add	ebx, [eax+0D8h]
mov	ebp, edi
ror	ebp, 13h
ror	edi, 11h
xor	ebp, edi
mov	edi, [eax+0ECh]
shr	edi, 0Ah
xor	ebp, edi
add	ebp, ebx
add	ebp, edx
mov	edx, [eax+0F0h]
mov	edi, esi
ror	edi, 12h
mov	ebx, esi
ror	ebx, 7
xor	edi, ebx
mov	[eax+0F4h], ebp
mov	ebx, esi
shr	ebx, 3
xor	edi, ebx
add	edi, [eax+0DCh]
mov	ebx, edx
ror	ebx, 13h
mov	ebp, edx
ror	ebp, 11h
xor	ebx, ebp
shr	edx, 0Ah
xor	ebx, edx
mov	edx, [eax+0F4h]
add	ebx, edi
add	ebx, ecx
mov	ecx, [eax+0C0h]
mov	[eax+0F8h], ebx
mov	edi, ecx
ror	edi, 12h
mov	ebx, ecx
ror	ebx, 7
xor	edi, ebx
shr	ecx, 3
xor	edi, ecx
add	edi, [eax+0E0h]
mov	ecx, edx
ror	ecx, 13h
mov	ebx, edx
ror	ebx, 11h
xor	ecx, ebx
shr	edx, 0Ah
xor	ecx, edx
mov	edx, [eax+100h]
add	ecx, edi
mov	edi, [eax+114h]
add	esi, ecx
mov	ecx, [eax+110h]
mov	ebx, ecx
ror	ebx, 19h
mov	ebp, ecx
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, ecx
ror	ebp, 6
xor	ebx, ebp
mov	ebp, ecx
not	ebp
and	ebp, [eax+118h]
mov	[esp+68h+var_4], esi
mov	[eax+0FCh], esi
mov	esi, [eax+104h]
mov	[esp+68h+var_48], edx
mov	edx, [eax+108h]
add	ebx, [eax+11Ch]
and	edi, ecx
xor	ebp, edi
add	ebp, ebx
mov	edi, [esp+68h+var_34]
lea	edi, [edi+ebp+428A2F98h]
mov	ebx, [eax+10Ch]
add	ebx, edi
mov	[esp+68h+var_4C], ebx
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_48]
mov	ebp, edi
mov	ebx, esi
xor	ebx, edi
mov	[esp+68h+var_34], ebx
mov	ebx, esi
and	ebx, edi
mov	[esp+68h+var_38], ebx
mov	ebx, edi
ror	ebx, 16h
ror	ebp, 0Dh
xor	ebx, ebp
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_34]
and	edi, edx
xor	edi, [esp+68h+var_38]
add	edi, [esp+68h+var_50]
add	edi, ebx
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_4C]
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
and	ecx, edi
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [esp+68h+var_40]
mov	ebp, edi
mov	edi, [esp+68h+var_50]
not	ebp
and	ebp, [eax+114h]
xor	ebp, ecx
mov	ecx, [eax+118h]
add	ebp, ebx
lea	ebx, [ecx+ebp+71374491h]
add	edx, ebx
mov	ebp, edi
ror	ebp, 16h
mov	ecx, edi
ror	ecx, 0Dh
xor	ebp, ecx
mov	ecx, edi
ror	ecx, 2
xor	ebp, ecx
mov	ecx, [esp+68h+var_34]
and	ecx, edi
xor	ecx, [esp+68h+var_38]
mov	edi, edx
add	ecx, ebx
add	ecx, ebp
mov	ebp, [esp+68h+var_4C]
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_54]
mov	ebx, edx
not	ebx
and	ebx, [eax+110h]
and	ebp, edx
xor	ebx, ebp
mov	[esp+68h+var_44], edx
mov	edx, [eax+114h]
add	ebx, edi
lea	edx, [edx+ebx-4A3F0431h]
add	esi, edx
mov	[esp+68h+var_40], edx
mov	edi, ecx
ror	edi, 16h
mov	edx, ecx
ror	edx, 0Dh
xor	edi, edx
mov	edx, ecx
ror	edx, 2
xor	edi, edx
mov	edx, [esp+68h+var_48]
mov	ebp, [esp+68h+var_44]
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_50]
and	edx, ecx
xor	edx, ebx
add	edx, [esp+68h+var_40]
and	ebp, esi
add	edx, edi
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_58]
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_4C]
mov	[esp+68h+var_54], esi
xor	ebx, ebp
add	ebx, edi
mov	edi, [eax+110h]
lea	edi, [edi+ebx-164A245Bh]
add	[esp+68h+var_48], edi
mov	[esp+68h+var_58], edi
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, edx
xor	ebx, ebp
add	ebx, [esp+68h+var_58]
add	ebx, edi
mov	edi, [esp+68h+var_48]
mov	[esp+68h+var_58], ebx
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [esp+68h+var_20]
mov	ebp, edi
not	ebp
and	ebp, [esp+68h+var_44]
and	esi, edi
xor	ebp, esi
mov	esi, [esp+68h+var_4C]
add	ebp, ebx
lea	esi, [esi+ebp+3956C25Bh]
add	[esp+68h+var_50], esi
mov	[esp+68h+var_4C], esi
mov	esi, [esp+68h+var_58]
mov	edi, esi
ror	edi, 16h
mov	ebx, esi
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 2
xor	edi, ebx
mov	ebx, edx
xor	ebx, esi
and	ebx, ecx
mov	ebp, edx
and	ebp, esi
xor	ebx, ebp
add	ebx, [esp+68h+var_4C]
mov	esi, [esp+68h+var_50]
add	ebx, edi
mov	[esp+68h+var_4C], ebx
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_1C]
mov	ebx, esi
and	esi, [esp+68h+var_48]
not	ebx
and	ebx, [esp+68h+var_54]
xor	ebx, esi
add	ebx, edi
mov	esi, [esp+68h+var_44]
lea	esi, [esi+ebx+59F111F1h]
add	ecx, esi
mov	[esp+68h+var_44], esi
mov	esi, [esp+68h+var_4C]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_58]
mov	ebp, edi
and	edi, esi
xor	ebp, esi
and	ebp, edx
xor	ebp, edi
add	ebp, [esp+68h+var_44]
mov	edi, ecx
lea	esi, [ebx+ebp]
mov	ebp, [esp+68h+var_50]
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_18]
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_48]
and	ebp, ecx
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_54]
lea	edi, [edi+ebx-6DC07D5Ch]
add	edx, edi
mov	[esp+68h+var_54], edi
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_4C]
mov	[esp+68h+var_44], esi
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+68h+var_58]
and	edi, esi
xor	ebp, edi
add	ebp, [esp+68h+var_54]
mov	edi, edx
add	ebp, ebx
ror	edi, 19h
mov	[esp+68h+var_54], ebp
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_14]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, edx
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_48]
lea	edi, [edi+ebx-54E3A12Bh]
add	[esp+68h+var_58], edi
mov	[esp+68h+var_48], edi
mov	edi, [esp+68h+var_54]
mov	ebx, edi
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, esi
xor	ebp, edi
and	ebp, [esp+68h+var_4C]
and	esi, edi
xor	ebp, esi
add	ebp, [esp+68h+var_48]
mov	esi, [esp+68h+var_58]
add	ebp, ebx
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	[esp+68h+var_48], ebp
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_10]
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ebp, edx
and	ebp, esi
xor	ebx, ebp
mov	ebp, [esp+68h+var_54]
add	ebx, edi
mov	edi, [esp+68h+var_50]
lea	edi, [edi+ebx-27F85568h]
add	[esp+68h+var_4C], edi
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_48]
mov	ebx, ebp
xor	ebx, edi
and	ebp, edi
mov	[esp+68h+var_34], ebx
mov	ebx, edi
mov	[esp+68h+var_38], ebp
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_34]
and	edi, [esp+68h+var_44]
xor	edi, [esp+68h+var_38]
add	edi, [esp+68h+var_50]
add	edi, ebx
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_4C]
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [esp+68h+var_3C]
and	esi, edi
mov	ebp, edi
not	ebp
and	ebp, edx
xor	ebp, esi
mov	esi, [esp+68h+var_50]
add	ebp, ebx
mov	ebx, [esp+68h+var_44]
lea	ecx, [ecx+ebp+12835B01h]
add	ebx, ecx
mov	ebp, esi
ror	ebp, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebp, edi
mov	edi, esi
ror	edi, 2
xor	ebp, edi
mov	edi, [esp+68h+var_34]
and	edi, esi
xor	edi, [esp+68h+var_38]
mov	[esp+68h+var_44], ebx
add	ecx, edi
add	ecx, ebp
mov	edi, ebx
ror	edi, 19h
mov	ebp, ebx
ror	ebp, 0Bh
xor	edi, ebp
mov	ebp, ebx
ror	ebp, 6
xor	edi, ebp
add	edi, [esp+68h+var_30]
mov	ebp, [esp+68h+var_4C]
and	ebp, [esp+68h+var_44]
not	ebx
and	ebx, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+243185BEh]
add	[esp+68h+var_54], edx
mov	[esp+68h+var_40], edx
mov	edi, ecx
ror	edi, 16h
mov	edx, ecx
ror	edx, 0Dh
xor	edi, edx
mov	edx, ecx
ror	edx, 2
xor	edi, edx
mov	edx, [esp+68h+var_48]
mov	ebx, ecx
xor	ebx, edx
and	ebx, esi
mov	ebp, ecx
and	ebp, edx
mov	edx, [esp+68h+var_54]
xor	ebx, ebp
add	ebx, [esp+68h+var_40]
add	ebx, edi
mov	[esp+68h+var_40], ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebp, [esp+68h+var_44]
and	ebp, edx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_2C]
mov	ebx, edx
mov	edx, [esp+68h+var_58]
not	ebx
and	ebx, [esp+68h+var_4C]
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+550C7DC3h]
add	[esp+68h+var_48], edx
mov	[esp+68h+var_58], edx
mov	edx, [esp+68h+var_40]
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, esi
mov	ebp, ecx
and	ebp, edx
mov	edx, [esp+68h+var_48]
xor	ebx, ebp
add	ebx, [esp+68h+var_58]
mov	ebp, [esp+68h+var_54]
add	ebx, edi
mov	[esp+68h+var_58], ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
and	ebp, edx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_28]
mov	ebx, edx
mov	edx, [esp+68h+var_4C]
not	ebx
and	ebx, [esp+68h+var_44]
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+72BE5D74h]
add	esi, edx
mov	[esp+68h+var_4C], edx
mov	edx, [esp+68h+var_58]
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_40]
mov	ebp, edi
xor	ebp, edx
and	edi, edx
and	ebp, ecx
xor	ebp, edi
add	ebp, [esp+68h+var_4C]
mov	edx, esi
add	ebp, ebx
ror	edx, 19h
mov	edi, esi
ror	edi, 0Bh
xor	edx, edi
mov	edi, esi
ror	edi, 6
xor	edx, edi
mov	[esp+68h+var_4C], ebp
mov	edi, esi
add	edx, [esp+68h+var_24]
not	edi
and	edi, [esp+68h+var_54]
mov	ebx, esi
and	ebx, [esp+68h+var_48]
xor	edi, ebx
add	edi, edx
mov	edx, [esp+68h+var_44]
lea	edx, [edx+edi-7F214E02h]
add	ecx, edx
mov	[esp+68h+var_44], edx
mov	edx, ebp
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_58]
mov	ebp, edi
xor	ebp, edx
and	ebp, [esp+68h+var_40]
and	edi, edx
xor	ebp, edi
add	ebp, [esp+68h+var_44]
mov	edi, ecx
add	ebp, ebx
ror	edi, 19h
mov	[esp+68h+var_44], ebp
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_C]
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_48]
mov	ebp, esi
and	ebp, ecx
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_54]
lea	edi, [edi+ebx-6423F959h]
add	[esp+68h+var_40], edi
mov	[esp+68h+var_54], edi
mov	edi, [esp+68h+var_44]
mov	ebx, edi
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, edx
xor	ebp, edi
and	ebp, [esp+68h+var_58]
and	edx, edi
xor	ebp, edx
add	ebp, [esp+68h+var_54]
mov	edx, [esp+68h+var_40]
add	ebp, ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
mov	[esp+68h+var_54], ebp
mov	ebx, edx
not	ebx
mov	ebp, ecx
and	ebx, esi
and	ebp, edx
xor	ebx, ebp
add	edi, [esp+68h+var_8]
mov	edx, [esp+68h+var_48]
add	ebx, edi
lea	edx, [edx+ebx-3E640E8Ch]
add	[esp+68h+var_58], edx
mov	[esp+68h+var_48], edx
mov	edx, [esp+68h+var_54]
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_44]
mov	ebp, edi
xor	ebp, edx
and	ebp, [esp+68h+var_4C]
and	edi, edx
mov	edx, [esp+68h+var_58]
xor	ebp, edi
add	ebp, [esp+68h+var_48]
mov	edi, edx
add	ebp, ebx
ror	edi, 19h
mov	[esp+68h+var_48], ebp
mov	ebp, [esp+68h+var_40]
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
and	ebp, edx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+40h]
mov	ebx, edx
mov	edx, [esp+68h+var_48]
not	ebx
and	ebx, ecx
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx-1B64963Fh]
add	[esp+68h+var_4C], esi
mov	ebx, [esp+68h+var_54]
mov	[esp+68h+var_50], esi
mov	esi, ebx
xor	esi, edx
and	ebx, edx
mov	ebp, edx
ror	ebp, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebp, edi
mov	[esp+68h+var_34], esi
mov	edi, edx
ror	edi, 2
xor	ebp, edi
mov	edi, [esp+68h+var_44]
and	esi, edi
xor	esi, ebx
add	esi, [esp+68h+var_50]
mov	[esp+68h+var_38], ebx
add	esi, ebp
mov	[esp+68h+var_50], esi
mov	esi, [esp+68h+var_4C]
mov	ebx, esi
ror	ebx, 19h
mov	ebp, esi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 6
xor	ebx, ebp
mov	ebp, [esp+68h+var_58]
and	ebp, [esp+68h+var_4C]
add	ebx, [eax+44h]
not	esi
and	esi, [esp+68h+var_40]
xor	esi, ebp
add	esi, ebx
mov	ebx, [esp+68h+var_50]
mov	ebp, ebx
lea	ecx, [ecx+esi-1041B87Ah]
mov	esi, ebx
add	edi, ecx
ror	ebp, 16h
ror	esi, 0Dh
xor	ebp, esi
mov	esi, ebx
ror	esi, 2
xor	ebp, esi
mov	esi, [esp+68h+var_34]
and	esi, ebx
xor	esi, [esp+68h+var_38]
mov	ebx, edi
add	ecx, esi
add	ecx, ebp
mov	ebp, [esp+68h+var_4C]
mov	esi, edi
ror	esi, 19h
ror	ebx, 0Bh
xor	esi, ebx
and	ebp, edi
mov	ebx, edi
ror	ebx, 6
xor	esi, ebx
add	esi, [eax+48h]
mov	ebx, edi
not	ebx
and	ebx, [esp+68h+var_58]
mov	[esp+68h+var_44], edi
xor	ebx, ebp
add	ebx, esi
mov	esi, [esp+68h+var_40]
lea	esi, [esi+ebx+0FC19DC6h]
add	[esp+68h+var_54], esi
mov	[esp+68h+var_40], esi
mov	esi, ecx
ror	esi, 16h
mov	ebx, ecx
ror	ebx, 0Dh
xor	esi, ebx
mov	ebx, ecx
ror	ebx, 2
xor	esi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, edx
xor	ebx, ebp
add	ebx, [esp+68h+var_40]
add	ebx, esi
mov	esi, [esp+68h+var_54]
mov	[esp+68h+var_40], ebx
mov	ebx, esi
ror	ebx, 19h
mov	ebp, esi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+4Ch]
mov	ebp, esi
and	edi, esi
mov	esi, [esp+68h+var_58]
not	ebp
and	ebp, [esp+68h+var_4C]
xor	ebp, edi
add	ebp, ebx
lea	esi, [esi+ebp+240CA1CCh]
add	edx, esi
mov	[esp+68h+var_58], esi
mov	esi, [esp+68h+var_40]
mov	edi, esi
ror	edi, 16h
mov	ebx, esi
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 2
xor	edi, ebx
mov	ebp, [esp+68h+var_54]
mov	ebx, ecx
xor	ebx, esi
and	ebx, [esp+68h+var_50]
and	esi, ecx
xor	esi, ebx
add	esi, [esp+68h+var_58]
and	ebp, edx
add	esi, edi
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+50h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_44]
mov	[esp+68h+var_58], esi
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_4C]
lea	edi, [edi+ebx+2DE92C6Fh]
add	[esp+68h+var_50], edi
mov	[esp+68h+var_4C], edi
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_40]
mov	ebp, edi
xor	ebp, esi
and	ebp, ecx
and	edi, esi
xor	ebp, edi
add	ebp, [esp+68h+var_4C]
mov	edi, [esp+68h+var_50]
add	ebp, ebx
mov	[esp+68h+var_4C], ebp
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+54h]
mov	ebp, edi
not	ebp
and	ebp, [esp+68h+var_54]
and	edi, edx
xor	ebp, edi
mov	edi, [esp+68h+var_44]
add	ebp, ebx
lea	edi, [edi+ebp+4A7484AAh]
add	ecx, edi
mov	[esp+68h+var_44], edi
mov	edi, [esp+68h+var_4C]
mov	ebx, edi
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, esi
xor	ebp, edi
and	ebp, [esp+68h+var_40]
and	esi, edi
xor	ebp, esi
add	ebp, [esp+68h+var_44]
mov	esi, ecx
add	ebp, ebx
ror	esi, 19h
mov	[esp+68h+var_44], ebp
mov	ebp, [esp+68h+var_50]
and	ebp, ecx
mov	ebx, ecx
ror	ebx, 0Bh
xor	esi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	esi, ebx
add	esi, [eax+58h]
mov	ebx, ecx
not	ebx
and	ebx, edx
xor	ebx, ebp
add	ebx, esi
mov	esi, [esp+68h+var_54]
lea	esi, [esi+ebx+5CB0A9DCh]
add	[esp+68h+var_40], esi
mov	[esp+68h+var_54], esi
mov	esi, [esp+68h+var_44]
mov	ebx, esi
ror	ebx, 16h
mov	ebp, esi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+68h+var_58]
and	edi, esi
mov	esi, [esp+68h+var_40]
xor	ebp, edi
add	ebp, [esp+68h+var_54]
mov	edi, esi
add	ebp, ebx
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	[esp+68h+var_54], ebp
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+5Ch]
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, esi
mov	esi, [esp+68h+var_54]
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_58]
lea	edx, [edx+ebx+76F988DAh]
add	edi, edx
mov	[esp+68h+var_48], edx
mov	ebx, esi
ror	ebx, 16h
mov	edx, esi
ror	edx, 0Dh
xor	ebx, edx
mov	edx, esi
ror	edx, 2
xor	ebx, edx
mov	edx, [esp+68h+var_44]
mov	ebp, edx
xor	ebp, esi
and	ebp, [esp+68h+var_4C]
and	edx, esi
xor	ebp, edx
add	ebp, [esp+68h+var_48]
mov	[esp+68h+var_58], edi
add	ebp, ebx
mov	[esp+68h+var_48], ebp
mov	edx, edi
mov	ebp, [esp+68h+var_40]
ror	edx, 19h
and	ebp, edi
mov	ebx, edi
ror	ebx, 0Bh
xor	edx, ebx
mov	ebx, edi
ror	ebx, 6
xor	edx, ebx
add	edx, [eax+60h]
mov	ebx, edi
not	ebx
and	ebx, ecx
xor	ebx, ebp
add	ebx, edx
mov	edx, [esp+68h+var_50]
lea	edi, [edx+ebx-67C1AEAEh]
mov	edx, [esp+68h+var_4C]
add	edx, edi
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_48]
mov	ebp, edi
mov	ebx, esi
xor	ebx, edi
mov	[esp+68h+var_34], ebx
mov	ebx, esi
and	ebx, edi
mov	[esp+68h+var_38], ebx
mov	ebx, edi
ror	ebx, 16h
ror	ebp, 0Dh
xor	ebx, ebp
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_34]
and	edi, [esp+68h+var_44]
mov	ebp, [esp+68h+var_58]
xor	edi, [esp+68h+var_38]
and	ebp, edx
add	edi, [esp+68h+var_50]
mov	[esp+68h+var_4C], edx
add	edi, ebx
mov	[esp+68h+var_50], edi
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+64h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_40]
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_44]
lea	ecx, [ecx+ebx-57CE3993h]
mov	ebx, [esp+68h+var_50]
add	edi, ecx
mov	ebp, ebx
mov	[esp+68h+var_3C], ecx
mov	ecx, ebx
ror	ecx, 16h
ror	ebp, 0Dh
xor	ecx, ebp
ror	ebx, 2
xor	ecx, ebx
mov	ebx, [esp+68h+var_34]
and	ebx, [esp+68h+var_50]
mov	ebp, edi
xor	ebx, [esp+68h+var_38]
mov	[esp+68h+var_44], edi
add	ebx, [esp+68h+var_3C]
add	ecx, ebx
mov	ebx, edi
ror	ebx, 19h
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
and	edx, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+68h]
mov	ebp, edi
not	ebp
and	ebp, [esp+68h+var_58]
mov	edi, ecx
xor	ebp, edx
add	ebp, ebx
mov	edx, [esp+68h+var_40]
lea	edx, [edx+ebp-4FFCD838h]
add	esi, edx
ror	edi, 16h
mov	[esp+68h+var_40], edx
mov	edx, ecx
ror	edx, 0Dh
xor	edi, edx
mov	edx, ecx
ror	edx, 2
xor	edi, edx
mov	edx, [esp+68h+var_48]
mov	ebp, [esp+68h+var_44]
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_50]
and	edx, ecx
xor	edx, ebx
add	edx, [esp+68h+var_40]
mov	ebx, esi
add	edx, edi
mov	edi, esi
ror	edi, 19h
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+6Ch]
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_4C]
mov	[esp+68h+var_40], edx
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_58]
lea	edi, [edi+ebx-40A68039h]
add	[esp+68h+var_48], edi
mov	[esp+68h+var_58], edi
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, edx
mov	edx, [esp+68h+var_48]
xor	ebx, ebp
add	ebx, [esp+68h+var_58]
mov	ebp, esi
add	ebx, edi
mov	[esp+68h+var_58], ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_44]
and	ebp, edx
add	edi, [eax+70h]
xor	ebx, ebp
add	ebx, edi
mov	edx, [esp+68h+var_4C]
lea	edx, [edx+ebx-391FF40Dh]
add	[esp+68h+var_50], edx
mov	[esp+68h+var_4C], edx
mov	edx, [esp+68h+var_58]
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_40]
mov	ebp, edi
xor	ebp, edx
and	edi, edx
mov	edx, [esp+68h+var_50]
and	ebp, ecx
xor	ebp, edi
add	ebp, [esp+68h+var_4C]
mov	edi, edx
add	ebp, ebx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+74h]
mov	ebx, edx
and	edx, [esp+68h+var_48]
not	ebx
and	ebx, esi
xor	ebx, edx
mov	edx, [esp+68h+var_44]
add	ebx, edi
lea	edx, [edx+ebx-2A586EB9h]
add	ecx, edx
mov	[esp+68h+var_44], edx
mov	edx, ebp
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_58]
mov	ebp, edi
xor	ebp, edx
and	ebp, [esp+68h+var_40]
and	edi, edx
xor	ebp, edi
add	ebp, [esp+68h+var_44]
mov	edi, ecx
add	ebp, ebx
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+78h]
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_48]
mov	[esp+68h+var_44], ebp
mov	ebp, [esp+68h+var_50]
and	ebp, ecx
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx+6CA6351h]
add	[esp+68h+var_40], esi
mov	[esp+68h+var_54], esi
mov	esi, [esp+68h+var_44]
mov	edi, esi
ror	edi, 16h
mov	ebx, esi
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 2
xor	edi, ebx
mov	ebx, edx
xor	ebx, esi
and	ebx, [esp+68h+var_58]
mov	ebp, edx
and	ebp, esi
xor	ebx, ebp
add	ebx, [esp+68h+var_54]
mov	esi, [esp+68h+var_40]
add	ebx, edi
mov	[esp+68h+var_54], ebx
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+7Ch]
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_50]
mov	ebp, ecx
and	ebp, esi
mov	esi, [esp+68h+var_48]
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx+14292967h]
add	[esp+68h+var_58], esi
mov	[esp+68h+var_48], esi
mov	esi, [esp+68h+var_54]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_44]
mov	ebp, edi
xor	ebp, esi
and	edi, esi
mov	esi, [esp+68h+var_58]
and	ebp, edx
xor	ebp, edi
add	ebp, [esp+68h+var_48]
mov	edi, esi
add	ebp, ebx
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+80h]
mov	ebx, esi
mov	[esp+68h+var_48], ebp
mov	ebp, [esp+68h+var_40]
not	ebx
and	ebp, esi
mov	esi, [esp+68h+var_50]
and	ebx, ecx
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx+27B70A85h]
mov	ebx, [esp+68h+var_54]
mov	[esp+68h+var_50], esi
add	edx, esi
mov	esi, [esp+68h+var_48]
mov	edi, ebx
and	ebx, esi
mov	[esp+68h+var_38], ebx
xor	edi, esi
mov	[esp+68h+var_34], edi
and	edi, [esp+68h+var_44]
mov	ebx, esi
xor	edi, [esp+68h+var_38]
ror	ebx, 16h
add	edi, [esp+68h+var_50]
mov	ebp, esi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 2
xor	ebx, ebp
add	edi, ebx
mov	ebp, [esp+68h+var_58]
mov	[esp+68h+var_50], edi
mov	edi, edx
ror	edi, 19h
and	ebp, edx
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+84h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_40]
xor	ebx, ebp
add	ebx, edi
mov	edi, [esp+68h+var_44]
lea	ecx, [ecx+ebx+2E1B2138h]
mov	ebx, [esp+68h+var_50]
add	edi, ecx
mov	[esp+68h+var_3C], ecx
mov	ebp, ebx
ror	ebp, 16h
mov	ecx, ebx
ror	ecx, 0Dh
xor	ebp, ecx
mov	ecx, ebx
ror	ecx, 2
xor	ebp, ecx
mov	ecx, [esp+68h+var_34]
and	ecx, ebx
xor	ecx, [esp+68h+var_38]
mov	ebx, edi
add	ecx, [esp+68h+var_3C]
mov	[esp+68h+var_44], edi
add	ecx, ebp
mov	[esp+68h+var_3C], ecx
mov	ecx, edi
ror	ecx, 19h
ror	ebx, 0Bh
xor	ecx, ebx
mov	ebx, edi
ror	ebx, 6
xor	ecx, ebx
add	ecx, [eax+88h]
mov	ebx, edi
not	ebx
and	ebx, [esp+68h+var_58]
mov	ebp, edx
and	ebp, edi
xor	ebx, ebp
add	ebx, ecx
mov	ecx, [esp+68h+var_40]
lea	ecx, [ecx+ebx+4D2C6DFCh]
add	[esp+68h+var_54], ecx
mov	[esp+68h+var_40], ecx
mov	ecx, [esp+68h+var_3C]
mov	ebx, ecx
ror	ebx, 16h
mov	ebp, ecx
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, ecx
ror	ebp, 2
xor	ebx, ebp
mov	ebp, ecx
xor	ebp, esi
and	ebp, [esp+68h+var_50]
and	ecx, esi
xor	ebp, ecx
add	ebp, [esp+68h+var_40]
mov	ecx, [esp+68h+var_54]
add	ebp, ebx
mov	[esp+68h+var_40], ebp
and	edi, ecx
mov	ebx, ecx
ror	ebx, 19h
mov	ebp, ecx
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, ecx
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+8Ch]
mov	ebp, ecx
mov	ecx, [esp+68h+var_58]
not	ebp
and	ebp, edx
xor	ebp, edi
add	ebp, ebx
lea	ecx, [ecx+ebp+53380D13h]
add	esi, ecx
mov	[esp+68h+var_58], ecx
mov	ecx, [esp+68h+var_40]
mov	ebx, ecx
ror	ebx, 16h
mov	edi, ecx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_3C]
mov	ebp, edi
xor	ebp, ecx
and	ebp, [esp+68h+var_50]
and	edi, ecx
xor	ebp, edi
add	ebp, [esp+68h+var_58]
mov	edi, esi
add	ebp, ebx
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+90h]
mov	[esp+68h+var_58], ebp
mov	ebp, [esp+68h+var_54]
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_44]
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+650A7354h]
add	[esp+68h+var_50], edx
mov	[esp+68h+var_4C], edx
mov	edx, [esp+68h+var_58]
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_3C]
mov	ebp, ecx
and	ebp, edx
xor	ebx, ebp
add	ebx, [esp+68h+var_4C]
add	ebx, edi
mov	edi, [esp+68h+var_50]
mov	[esp+68h+var_4C], ebx
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+94h]
mov	ebp, edi
not	ebp
and	ebp, [esp+68h+var_54]
and	edi, esi
xor	ebp, edi
add	ebp, ebx
mov	edi, [esp+68h+var_44]
lea	edi, [edi+ebp+766A0ABBh]
add	[esp+68h+var_3C], edi
mov	[esp+68h+var_44], edi
mov	edi, [esp+68h+var_4C]
mov	ebx, edi
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, edx
xor	ebp, edi
and	edx, edi
and	ebp, ecx
xor	ebp, edx
add	ebp, [esp+68h+var_44]
mov	edx, [esp+68h+var_3C]
add	ebp, ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+98h]
mov	[esp+68h+var_44], ebp
mov	ebp, [esp+68h+var_50]
and	ebp, edx
mov	ebx, edx
mov	edx, [esp+68h+var_54]
not	ebx
and	ebx, esi
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx-7E3D36D2h]
add	ecx, edx
mov	[esp+68h+var_54], edx
mov	edx, [esp+68h+var_44]
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_4C]
mov	ebp, edi
xor	ebp, edx
and	ebp, [esp+68h+var_58]
and	edi, edx
xor	ebp, edi
add	ebp, [esp+68h+var_54]
mov	edi, ecx
add	ebp, ebx
mov	[esp+68h+var_54], ebp
ror	edi, 19h
mov	ebp, [esp+68h+var_3C]
and	ebp, ecx
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+9Ch]
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_50]
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx-6D8DD37Bh]
add	[esp+68h+var_58], esi
mov	[esp+68h+var_48], esi
mov	esi, [esp+68h+var_54]
mov	edi, esi
ror	edi, 16h
mov	ebx, esi
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 2
xor	edi, ebx
mov	ebx, edx
xor	ebx, esi
and	ebx, [esp+68h+var_4C]
mov	ebp, edx
and	ebp, esi
mov	esi, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, [esp+68h+var_48]
mov	ebp, ecx
add	ebx, edi
mov	[esp+68h+var_48], ebx
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0A0h]
and	ebp, esi
mov	ebx, esi
mov	esi, [esp+68h+var_50]
not	ebx
and	ebx, [esp+68h+var_3C]
xor	ebx, ebp
mov	ebp, [esp+68h+var_54]
add	ebx, edi
lea	edi, [esi+ebx-5D40175Fh]
mov	esi, [esp+68h+var_4C]
add	esi, edi
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_48]
mov	ebx, ebp
xor	ebx, edi
and	ebp, edi
mov	[esp+68h+var_34], ebx
mov	ebx, edi
ror	ebx, 16h
mov	[esp+68h+var_38], ebp
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_34]
and	edi, edx
xor	edi, [esp+68h+var_38]
mov	[esp+68h+var_4C], esi
add	edi, [esp+68h+var_50]
add	edi, ebx
mov	[esp+68h+var_50], edi
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebp, [esp+68h+var_58]
and	ebp, esi
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0A4h]
mov	ebx, esi
mov	esi, [esp+68h+var_3C]
not	ebx
and	ebx, ecx
xor	ebx, ebp
add	ebx, edi
lea	ebx, [esi+ebx-57E599B5h]
mov	esi, [esp+68h+var_50]
add	edx, ebx
mov	ebp, esi
ror	ebp, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebp, edi
mov	edi, esi
ror	edi, 2
xor	ebp, edi
mov	edi, [esp+68h+var_34]
and	edi, esi
xor	edi, [esp+68h+var_38]
add	edi, ebx
add	edi, ebp
mov	ebp, [esp+68h+var_4C]
mov	[esp+68h+var_3C], edi
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
and	ebp, edx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0A8h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, edi
lea	ecx, [ecx+ebx-3DB47490h]
add	[esp+68h+var_54], ecx
mov	[esp+68h+var_40], ecx
mov	ecx, [esp+68h+var_3C]
mov	ebx, ecx
ror	ebx, 16h
mov	edi, ecx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_48]
mov	ebp, ecx
xor	ebp, edi
and	ecx, edi
and	ebp, esi
xor	ebp, ecx
add	ebp, [esp+68h+var_40]
mov	ecx, [esp+68h+var_54]
add	ebp, ebx
mov	edi, ecx
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_4C]
mov	[esp+68h+var_40], ebp
mov	ebp, edx
add	edi, [eax+0ACh]
and	ebp, ecx
xor	ebx, ebp
add	ebx, edi
mov	ecx, [esp+68h+var_58]
lea	ecx, [ecx+ebx-3893AE5Dh]
add	[esp+68h+var_48], ecx
mov	[esp+68h+var_58], ecx
mov	ecx, [esp+68h+var_40]
mov	ebx, ecx
ror	ebx, 16h
mov	edi, ecx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_3C]
mov	ebp, edi
and	edi, ecx
xor	ebp, ecx
mov	ecx, [esp+68h+var_48]
and	ebp, esi
xor	ebp, edi
add	ebp, [esp+68h+var_58]
mov	edi, ecx
add	ebp, ebx
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0B0h]
mov	ebx, ecx
mov	[esp+68h+var_58], ebp
mov	ebp, [esp+68h+var_54]
and	ebp, ecx
mov	ecx, [esp+68h+var_4C]
not	ebx
and	ebx, edx
xor	ebx, ebp
add	ebx, edi
lea	ecx, [ecx+ebx-2E6D17E7h]
add	esi, ecx
mov	[esp+68h+var_4C], ecx
mov	ecx, [esp+68h+var_58]
mov	ebx, ecx
ror	ebx, 16h
mov	edi, ecx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_40]
mov	ebp, edi
xor	ebp, ecx
and	ebp, [esp+68h+var_3C]
and	edi, ecx
xor	ebp, edi
add	ebp, [esp+68h+var_4C]
mov	ecx, esi
add	ebp, ebx
ror	ecx, 19h
mov	edi, esi
ror	edi, 0Bh
xor	ecx, edi
mov	edi, esi
ror	edi, 6
xor	ecx, edi
add	ecx, [eax+0B4h]
mov	edi, esi
not	edi
and	edi, [esp+68h+var_54]
mov	ebx, esi
and	ebx, [esp+68h+var_48]
xor	edi, ebx
add	edi, ecx
lea	edx, [edx+edi-2966F9DCh]
mov	edi, [esp+68h+var_3C]
add	edi, edx
mov	[esp+68h+var_44], edx
mov	ecx, ebp
mov	ebx, ecx
ror	ebx, 16h
mov	edx, ecx
ror	edx, 0Dh
xor	ebx, edx
mov	edx, ecx
ror	edx, 2
xor	ebx, edx
mov	edx, [esp+68h+var_58]
mov	ebp, edx
xor	ebp, ecx
and	ebp, [esp+68h+var_40]
and	edx, ecx
xor	ebp, edx
add	ebp, [esp+68h+var_44]
mov	edx, edi
add	ebp, ebx
ror	edx, 19h
mov	ebx, edi
ror	ebx, 0Bh
xor	edx, ebx
mov	ebx, edi
ror	ebx, 6
xor	edx, ebx
add	edx, [eax+0B8h]
mov	ebx, edi
not	ebx
and	ebx, [esp+68h+var_48]
mov	[esp+68h+var_44], ebp
mov	ebp, esi
and	ebp, edi
xor	ebx, ebp
add	ebx, edx
mov	edx, [esp+68h+var_54]
lea	edx, [edx+ebx-0BF1CA7Bh]
add	[esp+68h+var_40], edx
mov	[esp+68h+var_3C], edi
mov	[esp+68h+var_54], edx
mov	edx, [esp+68h+var_44]
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_58]
mov	ebp, ecx
and	ebp, edx
mov	edx, [esp+68h+var_40]
xor	ebx, ebp
add	ebx, [esp+68h+var_54]
mov	ebp, [esp+68h+var_3C]
add	ebx, edi
mov	[esp+68h+var_54], ebx
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0BCh]
mov	ebx, edx
not	ebx
and	ebp, edx
mov	edx, [esp+68h+var_48]
and	ebx, esi
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+106AA070h]
add	[esp+68h+var_58], edx
mov	[esp+68h+var_48], edx
mov	edx, [esp+68h+var_54]
mov	ebx, edx
ror	ebx, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, edx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_44]
mov	ebp, edi
xor	ebp, edx
and	ebp, ecx
and	edi, edx
mov	edx, [esp+68h+var_58]
xor	ebp, edi
add	ebp, [esp+68h+var_48]
mov	edi, edx
add	ebp, ebx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	[esp+68h+var_48], ebp
mov	ebp, [esp+68h+var_40]
and	ebp, edx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0C0h]
mov	ebx, edx
mov	edx, [esp+68h+var_48]
not	ebx
and	ebx, [esp+68h+var_3C]
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx+19A4C116h]
mov	ebx, [esp+68h+var_54]
add	ecx, esi
mov	[esp+68h+var_50], esi
mov	esi, ebx
xor	esi, edx
and	ebx, edx
mov	ebp, edx
ror	ebp, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebp, edi
mov	[esp+68h+var_34], esi
mov	edi, edx
ror	edi, 2
xor	ebp, edi
mov	edi, [esp+68h+var_44]
and	esi, edi
xor	esi, ebx
add	esi, [esp+68h+var_50]
mov	[esp+68h+var_38], ebx
add	esi, ebp
mov	ebp, [esp+68h+var_58]
mov	[esp+68h+var_50], esi
mov	esi, ecx
ror	esi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	esi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	esi, ebx
add	esi, [eax+0C4h]
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_40]
and	ebp, ecx
xor	ebx, ebp
add	ebx, esi
mov	esi, [esp+68h+var_3C]
lea	esi, [esi+ebx+1E376C08h]
mov	ebx, [esp+68h+var_50]
add	edi, esi
mov	[esp+68h+var_3C], esi
mov	[esp+68h+var_44], edi
mov	ebp, ebx
ror	ebp, 16h
mov	esi, ebx
ror	esi, 0Dh
xor	ebp, esi
mov	esi, ebx
ror	esi, 2
xor	ebp, esi
mov	esi, [esp+68h+var_34]
and	esi, ebx
xor	esi, [esp+68h+var_38]
mov	ebx, edi
add	esi, [esp+68h+var_3C]
add	esi, ebp
mov	[esp+68h+var_3C], esi
mov	esi, edi
ror	esi, 19h
ror	ebx, 0Bh
xor	esi, ebx
mov	ebx, edi
ror	ebx, 6
xor	esi, ebx
add	esi, [eax+0C8h]
mov	ebx, edi
not	ebx
and	ebx, [esp+68h+var_58]
mov	ebp, ecx
and	ebp, edi
xor	ebx, ebp
add	ebx, esi
mov	esi, [esp+68h+var_40]
lea	esi, [esi+ebx+2748774Ch]
add	[esp+68h+var_54], esi
mov	[esp+68h+var_40], esi
mov	esi, [esp+68h+var_3C]
mov	ebx, esi
ror	ebx, 16h
mov	ebp, esi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, esi
xor	ebp, edx
and	ebp, [esp+68h+var_50]
and	esi, edx
xor	ebp, esi
add	ebp, [esp+68h+var_40]
mov	esi, [esp+68h+var_54]
add	ebp, ebx
mov	[esp+68h+var_40], ebp
mov	ebx, esi
ror	ebx, 19h
mov	ebp, esi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, esi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+0CCh]
and	edi, esi
mov	ebp, esi
mov	esi, [esp+68h+var_58]
not	ebp
and	ebp, ecx
xor	ebp, edi
add	ebp, ebx
lea	esi, [esi+ebp+34B0BCB5h]
add	edx, esi
mov	[esp+68h+var_58], esi
mov	esi, [esp+68h+var_40]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_3C]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+68h+var_50]
and	edi, esi
xor	ebp, edi
add	ebp, [esp+68h+var_58]
mov	edi, edx
add	ebp, ebx
ror	edi, 19h
mov	[esp+68h+var_58], ebp
mov	ebp, [esp+68h+var_54]
and	ebp, edx
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0D0h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_44]
xor	ebx, ebp
add	ebx, edi
lea	ecx, [ecx+ebx+391C0CB3h]
add	[esp+68h+var_50], ecx
mov	[esp+68h+var_4C], ecx
mov	ecx, [esp+68h+var_58]
mov	edi, ecx
ror	edi, 16h
mov	ebx, ecx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 2
xor	edi, ebx
mov	ebx, esi
xor	ebx, ecx
and	ebx, [esp+68h+var_3C]
mov	ebp, esi
and	ebp, ecx
xor	ebx, ebp
add	ebx, [esp+68h+var_4C]
add	ebx, edi
mov	edi, [esp+68h+var_50]
mov	[esp+68h+var_4C], ebx
mov	ebx, edi
ror	ebx, 19h
mov	ebp, edi
ror	ebp, 0Bh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 6
xor	ebx, ebp
add	ebx, [eax+0D4h]
mov	ebp, edi
not	ebp
and	ebp, [esp+68h+var_54]
and	edi, edx
xor	ebp, edi
mov	edi, [esp+68h+var_44]
add	ebp, ebx
lea	edi, [edi+ebp+4ED8AA4Ah]
add	[esp+68h+var_3C], edi
mov	[esp+68h+var_44], edi
mov	edi, [esp+68h+var_4C]
mov	ebx, edi
ror	ebx, 16h
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
mov	ebp, edi
ror	ebp, 2
xor	ebx, ebp
mov	ebp, ecx
xor	ebp, edi
and	ebp, esi
and	ecx, edi
xor	ebp, ecx
add	ebp, [esp+68h+var_44]
add	ebp, ebx
mov	ecx, [esp+68h+var_3C]
mov	edi, ecx
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	[esp+68h+var_44], ebp
mov	ebp, [esp+68h+var_50]
and	ebp, ecx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0D8h]
mov	ebx, ecx
mov	ecx, [esp+68h+var_54]
not	ebx
and	ebx, edx
xor	ebx, ebp
add	ebx, edi
lea	ecx, [ecx+ebx+5B9CCA4Fh]
add	esi, ecx
mov	[esp+68h+var_54], ecx
mov	ecx, [esp+68h+var_44]
mov	ebx, ecx
ror	ebx, 16h
mov	edi, ecx
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_4C]
mov	ebp, edi
xor	ebp, ecx
and	ebp, [esp+68h+var_58]
and	edi, ecx
xor	ebp, edi
add	ebp, [esp+68h+var_54]
mov	edi, esi
add	ebp, ebx
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0DCh]
mov	[esp+68h+var_54], ebp
mov	ebp, [esp+68h+var_3C]
and	ebp, esi
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_50]
xor	ebx, ebp
add	ebx, edi
lea	edx, [edx+ebx+682E6FF3h]
add	[esp+68h+var_58], edx
mov	[esp+68h+var_48], edx
mov	edx, [esp+68h+var_54]
mov	edi, edx
ror	edi, 16h
mov	ebx, edx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 2
xor	edi, ebx
mov	ebx, ecx
xor	ebx, edx
and	ebx, [esp+68h+var_4C]
mov	ebp, ecx
and	ebp, edx
mov	edx, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, [esp+68h+var_48]
add	ebx, edi
mov	edi, edx
mov	[esp+68h+var_48], ebx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0E0h]
mov	ebx, edx
not	ebx
and	ebx, [esp+68h+var_3C]
mov	ebp, esi
and	ebp, edx
xor	ebx, ebp
add	ebx, edi
mov	edx, [esp+68h+var_50]
mov	ebp, [esp+68h+var_54]
lea	edi, [edx+ebx+748F82EEh]
mov	edx, [esp+68h+var_4C]
add	edx, edi
mov	[esp+68h+var_50], edi
mov	edi, [esp+68h+var_48]
mov	ebx, ebp
xor	ebx, edi
and	ebp, edi
mov	[esp+68h+var_34], ebx
mov	ebx, edi
ror	ebx, 16h
mov	[esp+68h+var_38], ebp
mov	ebp, edi
ror	ebp, 0Dh
xor	ebx, ebp
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_34]
and	edi, ecx
xor	edi, [esp+68h+var_38]
mov	ebp, [esp+68h+var_58]
add	edi, [esp+68h+var_50]
and	ebp, edx
add	edi, ebx
mov	[esp+68h+var_50], edi
mov	edi, edx
ror	edi, 19h
mov	ebx, edx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, edx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0E4h]
mov	ebx, edx
not	ebx
and	ebx, esi
xor	ebx, ebp
add	ebx, edi
mov	[esp+68h+var_4C], edx
mov	edx, [esp+68h+var_3C]
lea	ebx, [edx+ebx+78A5636Fh]
mov	edx, [esp+68h+var_50]
add	ecx, ebx
mov	ebp, edx
ror	ebp, 16h
mov	edi, edx
ror	edi, 0Dh
xor	ebp, edi
mov	edi, edx
ror	edi, 2
xor	ebp, edi
mov	edi, [esp+68h+var_34]
and	edi, edx
xor	edi, [esp+68h+var_38]
add	edi, ebx
add	edi, ebp
mov	[esp+68h+var_3C], edi
mov	edi, ecx
ror	edi, 19h
mov	ebx, ecx
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0E8h]
mov	ebp, [esp+68h+var_4C]
and	ebp, ecx
mov	ebx, ecx
not	ebx
and	ebx, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx-7B3787ECh]
add	[esp+68h+var_54], esi
mov	[esp+68h+var_40], esi
mov	esi, [esp+68h+var_3C]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_48]
mov	ebp, esi
xor	ebp, edi
and	esi, edi
and	ebp, edx
xor	ebp, esi
add	ebp, [esp+68h+var_40]
mov	esi, [esp+68h+var_54]
add	ebp, ebx
mov	edi, esi
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
add	edi, [eax+0ECh]
mov	[esp+68h+var_40], ebp
mov	ebx, esi
not	ebx
and	ebx, [esp+68h+var_4C]
mov	ebp, ecx
and	ebp, esi
mov	esi, [esp+68h+var_58]
xor	ebx, ebp
add	ebx, edi
lea	esi, [esi+ebx-7338FDF8h]
add	[esp+68h+var_48], esi
mov	[esp+68h+var_58], esi
mov	esi, [esp+68h+var_40]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_3C]
mov	ebp, edi
xor	ebp, esi
and	edi, esi
mov	esi, [esp+68h+var_48]
and	ebp, edx
xor	ebp, edi
add	ebp, [esp+68h+var_58]
mov	edi, esi
add	ebp, ebx
ror	edi, 19h
mov	ebx, esi
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, esi
ror	ebx, 6
xor	edi, ebx
mov	ebx, esi
not	ebx
mov	[esp+68h+var_58], ebp
mov	ebp, [esp+68h+var_54]
and	ebx, ecx
add	edi, [eax+0F0h]
and	ebp, esi
xor	ebx, ebp
add	ebx, edi
mov	esi, [esp+68h+var_4C]
lea	esi, [esi+ebx-6F410006h]
add	edx, esi
mov	[esp+68h+var_4C], esi
mov	esi, [esp+68h+var_58]
mov	ebx, esi
ror	ebx, 16h
mov	edi, esi
ror	edi, 0Dh
xor	ebx, edi
mov	edi, esi
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_40]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+68h+var_3C]
and	edi, esi
xor	ebp, edi
add	ebp, [esp+68h+var_4C]
mov	esi, edx
add	ebp, ebx
ror	esi, 19h
mov	edi, edx
ror	edi, 0Bh
xor	esi, edi
mov	edi, edx
ror	edi, 6
xor	esi, edi
add	esi, [eax+0F4h]
mov	edi, edx
not	edi
and	edi, [esp+68h+var_54]
mov	ebx, edx
and	ebx, [esp+68h+var_48]
xor	edi, ebx
add	edi, esi
lea	ecx, [ecx+edi-5BAF9315h]
mov	edi, [esp+68h+var_3C]
add	edi, ecx
mov	[esp+68h+var_44], ecx
mov	esi, ebp
mov	ebx, esi
ror	ebx, 16h
mov	ecx, esi
ror	ecx, 0Dh
xor	ebx, ecx
mov	ecx, esi
ror	ecx, 2
xor	ebx, ecx
mov	ecx, [esp+68h+var_58]
mov	ebp, ecx
xor	ebp, esi
and	ebp, [esp+68h+var_40]
and	ecx, esi
xor	ebp, ecx
add	ebp, [esp+68h+var_44]
mov	ecx, edi
add	ebp, ebx
ror	ecx, 19h
mov	ebx, edi
ror	ebx, 0Bh
xor	ecx, ebx
mov	ebx, edi
ror	ebx, 6
xor	ecx, ebx
mov	ebx, edi
mov	[esp+68h+var_44], ebp
not	ebx
and	ebx, [esp+68h+var_48]
mov	ebp, edx
and	ebp, edi
xor	ebx, ebp
add	ecx, ebx
add	ecx, [eax+0F8h]
mov	[esp+68h+var_3C], edi
mov	edi, [esp+68h+var_54]
lea	ecx, [edi+ecx-41065C09h]
add	[esp+68h+var_40], ecx
mov	[esp+68h+var_54], ecx
mov	ecx, [esp+68h+var_44]
mov	edi, ecx
ror	edi, 16h
mov	ebx, ecx
ror	ebx, 0Dh
xor	edi, ebx
mov	ebx, ecx
ror	ebx, 2
xor	edi, ebx
mov	ebx, esi
xor	ebx, ecx
and	ebx, [esp+68h+var_58]
mov	ebp, esi
and	ebp, ecx
mov	ecx, [esp+68h+var_40]
xor	ebx, ebp
add	ebx, [esp+68h+var_54]
mov	ebp, [esp+68h+var_3C]
add	ebx, edi
mov	[esp+68h+var_54], ebx
mov	edi, ecx
mov	ebx, ecx
ror	edi, 19h
ror	ebx, 0Bh
xor	edi, ebx
mov	ebx, ecx
and	ebp, ecx
ror	ebx, 6
xor	edi, ebx
add	edi, [esp+68h+var_4]
mov	ebx, ecx
mov	ecx, [esp+68h+var_48]
not	ebx
and	ebx, edx
xor	ebx, ebp
add	ebx, edi
lea	ecx, [ecx+ebx-398E870Eh]
mov	[esp+68h+var_48], ecx
mov	ecx, [esp+68h+var_54]
mov	ebx, ecx
mov	edi, ecx
ror	ebx, 16h
ror	edi, 0Dh
xor	ebx, edi
mov	edi, ecx
ror	edi, 2
xor	ebx, edi
mov	edi, [esp+68h+var_44]
add	ebx, [eax+100h]
mov	ebp, edi
xor	ebp, ecx
and	edi, ecx
and	ebp, esi
xor	ebp, edi
mov	edi, [esp+68h+var_48]
add	ebp, ebx
mov	ebx, [eax+104h]
add	ebx, ecx
mov	ecx, [eax+108h]
add	ecx, [esp+68h+var_44]
add	ebp, edi
mov	[eax+108h], ecx
mov	ecx, [eax+10Ch]
add	ecx, esi
mov	[eax+10Ch], ecx
mov	ecx, [eax+110h]
add	ecx, [esp+68h+var_58]
mov	[eax+100h], ebp
add	ecx, edi
mov	[eax+110h], ecx
mov	ecx, [eax+114h]
add	ecx, [esp+68h+var_40]
mov	[eax+104h], ebx
mov	[eax+114h], ecx
mov	ecx, [eax+118h]
add	ecx, [esp+68h+var_3C]
mov	[eax+118h], ecx
mov	ecx, [eax+11Ch]
pop	edi
pop	esi
add	ecx, edx
pop	ebp
mov	[eax+11Ch], ecx
pop	ebx
add	esp, 58h
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+Size]
push	ebp
mov	ebp, [esp+8+Dst]
mov	eax, [ebp+124h]
push	edi
mov	edi, eax
and	edi, 3Fh
test	ebx, ebx
jz	loc_10006666
add	eax, ebx
mov	[ebp+124h], eax
cmp	eax, ebx
jnb	short loc_100065E0
inc	dword ptr [ebp+120h]
push	esi
test	edi, edi
jz	short loc_10006618
mov	esi, 40h
sub	esi, edi
cmp	ebx, esi
jnb	short loc_100065F2
mov	esi, ebx
mov	eax, [esp+10h+Src]
push	esi		
push	eax		
lea	ecx, [edi+ebp]
push	ecx		
call	memcpy
add	[esp+1Ch+Src], esi
sub	ebx, esi
add	esi, edi
add	esp, 0Ch
cmp	esi, 40h
jnz	short loc_10006618
mov	eax, ebp
call	sub_10003E30
			
cmp	ebx, 40h
jb	short loc_10006652
mov	eax, ebx
shr	eax, 6
mov	[esp+10h+Dst], eax
jmp	short loc_10006630
align 10h
			
mov	esi, [esp+10h+Src]
add	[esp+10h+Src], 40h
mov	ecx, 10h
mov	edi, ebp
mov	eax, ebp
rep movsd
sub	ebx, 40h
call	sub_10003E30
dec	[esp+10h+Dst]
jnz	short loc_10006630
pop	esi
test	ebx, ebx
jz	short loc_10006666
mov	edx, [esp+0Ch+Src]
push	ebx		
push	edx		
push	ebp		
call	memcpy
add	esp, 0Ch
			
pop	edi
pop	ebp
pop	ebx
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
mov	ecx, [esi+124h]
mov	edx, ecx
and	edx, 3Fh
mov	eax, 38h
cmp	edx, 38h
jb	short loc_1000668F
mov	eax, 78h
push	ebx
push	edi
mov	edi, [esi+120h]
sub	eax, edx
add	edi, edi
push	eax		
add	edi, edi
mov	edx, ecx
shr	edx, 1Dh
push	offset dword_100396A8 
add	edi, edi
push	esi		
or	edi, edx
lea	ebx, ds:0[ecx*8]
call	sub_100065B0
bswap	edi
bswap	ebx
add	esp, 0Ch
mov	eax, esi
mov	[esi+38h], edi
mov	[esi+3Ch], ebx
call	sub_10003E30
mov	ecx, [esi+100h]
mov	edx, [esi+104h]
bswap	ecx
lea	eax, [esi+100h]
mov	[eax], ecx
mov	ecx, [esi+108h]
bswap	edx
mov	[esi+104h], edx
mov	edx, [esi+10Ch]
bswap	ecx
mov	[esi+108h], ecx
mov	ecx, [esi+110h]
bswap	edx
mov	[esi+10Ch], edx
mov	edx, [esi+114h]
bswap	ecx
mov	[esi+110h], ecx
mov	ecx, [esi+118h]
bswap	edx
mov	[esi+114h], edx
mov	edx, [esi+11Ch]
bswap	ecx
mov	[esi+118h], ecx
mov	ecx, [esp+0Ch+arg_C]
bswap	edx
pop	edi
mov	[esi+11Ch], edx
pop	ebx
mov	esi, 20h
cmp	ecx, 20h
ja	short loc_10006751
mov	esi, ecx
push	esi		
push	eax		
mov	eax, [esp+0Ch+Dst]
push	eax		
call	memcpy
mov	eax, [esp+10h+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_1000676A
mov	[eax], esi
pop	esi
retn
align 10h
			
sub	esp, 20h
push	esi
mov	esi, [esp+24h+arg_0]
push	edi
add	esi, 100h
mov	ecx, 8
lea	edi, [esp+28h+Src]
rep movsd
mov	eax, [esp+28h+Src]
mov	ecx, [esp+28h+var_1C]
mov	edx, [esp+28h+var_18]
mov	esi, [esp+28h+Size]
bswap	eax
bswap	ecx
mov	[esp+28h+Src], eax
mov	eax, [esp+28h+var_14]
mov	[esp+28h+var_1C], ecx
mov	ecx, [esp+28h+var_10]
bswap	edx
bswap	eax
bswap	ecx
mov	[esp+28h+var_18], edx
mov	edx, [esp+28h+var_C]
mov	[esp+28h+var_14], eax
mov	eax, [esp+28h+var_8]
mov	[esp+28h+var_10], ecx
mov	ecx, [esp+28h+var_4]
bswap	edx
bswap	eax
bswap	ecx
mov	[esp+28h+var_C], edx
mov	[esp+28h+var_8], eax
mov	[esp+28h+var_4], ecx
cmp	esi, 20h
jbe	short loc_100067E8
mov	esi, 20h
mov	eax, [esp+28h+Dst]
push	esi		
lea	edx, [esp+2Ch+Src]
push	edx		
push	eax		
call	memcpy
mov	eax, [esp+34h+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_10006805
mov	[eax], esi
pop	edi
pop	esi
add	esp, 20h
retn
align 10h
			
			
sub	esp, 130h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+130h+var_4], eax
push	ebx
mov	ebx, [esp+134h+arg_0]
push	ebp
mov	ebp, [esp+138h+Src]
push	esi
push	edi
push	128h		
lea	eax, [esp+144h+Dst]
push	0		
push	eax		
call	memset
mov	ecx, 8
mov	esi, offset dword_10039898
lea	edi, [esp+14Ch+var_2C]
rep movsd
mov	ecx, [esp+14Ch+Size]
push	ecx		
lea	edx, [esp+150h+Dst]
push	ebp		
push	edx		
call	sub_100065B0
push	20h		
lea	eax, [esp+15Ch+var_130]
push	eax		
lea	ecx, [esp+160h+Dst]
push	ebx		
push	ecx		
call	sub_10006670
mov	ecx, [esp+168h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 130h
retn
align 10h
sub	esp, 130h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+130h+var_4], eax
mov	eax, [esp+130h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+138h+Src]
mov	[esp+138h+var_130], eax
push	esi
mov	eax, ebp
push	edi
lea	edx, [eax+1]
nop
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_100068D0
push	128h		
lea	ecx, [esp+144h+Dst]
sub	eax, edx
push	0		
push	ecx		
mov	ebx, eax
call	memset
push	ebx		
lea	edx, [esp+150h+Dst]
push	ebp		
mov	ecx, 8
mov	esi, offset dword_10039898
lea	edi, [esp+154h+var_2C]
push	edx		
rep movsd
call	sub_100065B0
mov	ecx, [esp+158h+var_130]
push	20h		
lea	eax, [esp+15Ch+var_130]
push	eax		
push	ecx		
lea	edx, [esp+164h+Dst]
push	edx		
call	sub_10006670
mov	ecx, [esp+168h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 130h
retn
align 10h
			
mov	eax, 128h
retn
align 10h
			
push	128h
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jz	short locret_10006972
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	ecx, 4Ah
mov	edi, eax
rep movsd
pop	edi
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	edi
push	128h		
push	0		
push	esi		
call	memset
lea	edi, [esi+100h]
add	esp, 0Ch
mov	ecx, 8
mov	esi, offset dword_100398B8
rep movsd
pop	edi
pop	esi
retn
align 10h
			
jmp	sub_100065B0
align 10h
			
mov	eax, [esp+arg_C]
cmp	eax, 1Ch
jb	short loc_100069CE
mov	eax, 1Ch
mov	[esp+arg_C], eax 
jmp	sub_10006670
align 10h
mov	eax, [esp+Size]
cmp	eax, 1Ch
jb	short loc_100069EE
mov	eax, 1Ch
mov	[esp+Size], eax	
jmp	sub_10006770
align 10h
sub	esp, 130h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+130h+var_4], eax
push	ebx
mov	ebx, [esp+134h+arg_0]
push	ebp
mov	ebp, [esp+138h+Src]
push	esi
push	edi
push	128h		
lea	eax, [esp+144h+Dst]
push	0		
push	eax		
call	memset
mov	ecx, 8
mov	esi, offset dword_100398B8
lea	edi, [esp+14Ch+var_2C]
rep movsd
mov	ecx, [esp+14Ch+Size]
push	ecx		
lea	edx, [esp+150h+Dst]
push	ebp		
push	edx		
call	sub_100065B0
push	1Ch		
lea	eax, [esp+15Ch+var_130]
push	eax		
lea	ecx, [esp+160h+Dst]
push	ebx		
push	ecx		
call	sub_10006670
mov	ecx, [esp+168h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 130h
retn
align 10h
sub	esp, 130h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+130h+var_4], eax
mov	eax, [esp+130h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+138h+Src]
mov	[esp+138h+var_130], eax
push	esi
mov	eax, ebp
push	edi
lea	edx, [eax+1]
nop
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10006AC0
push	128h		
lea	ecx, [esp+144h+Dst]
sub	eax, edx
push	0		
push	ecx		
mov	ebx, eax
call	memset
push	ebx		
lea	edx, [esp+150h+Dst]
push	ebp		
mov	ecx, 8
mov	esi, offset dword_100398B8
lea	edi, [esp+154h+var_2C]
push	edx		
rep movsd
call	sub_100065B0
mov	ecx, [esp+158h+var_130]
push	1Ch		
lea	eax, [esp+15Ch+var_130]
push	eax		
push	ecx		
lea	edx, [esp+164h+Dst]
push	edx		
call	sub_10006670
mov	ecx, [esp+168h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 130h
retn
align 10h
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, 4Ah
rep movsd
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, 4Ah
rep movsd
pop	edi
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	edi
push	2C8h		
push	0		
push	esi		
call	memset
lea	edi, [esi+280h]
add	esp, 0Ch
mov	ecx, 10h
mov	esi, offset dword_10039B58
rep movsd
pop	edi
pop	esi
retn
align 10h
			
sub	esp, 94h
push	ebx
push	ebp
push	esi
push	edi
mov	ecx, [eax]
mov	edx, [eax+4]
bswap	edx
mov	[eax], edx
mov	edx, [eax+8]
bswap	edx
bswap	ecx
mov	esi, [eax+0Ch]
bswap	esi
mov	[eax+8], esi
mov	esi, [eax+14h]
mov	[eax+0Ch], edx
mov	edx, [eax+10h]
bswap	edx
bswap	esi
mov	[eax+10h], esi
mov	esi, [eax+1Ch]
mov	[eax+14h], edx
mov	edx, [eax+18h]
bswap	edx
bswap	esi
mov	[eax+4], ecx
lea	ecx, [eax+8]
mov	[eax+18h], esi
mov	esi, [eax+24h]
mov	[eax+1Ch], edx
mov	edx, [eax+20h]
bswap	edx
bswap	esi
mov	[eax+20h], esi
mov	esi, [eax+2Ch]
mov	[eax+24h], edx
mov	edx, [eax+28h]
bswap	edx
bswap	esi
mov	[eax+28h], esi
mov	esi, [eax+34h]
mov	[eax+2Ch], edx
mov	edx, [eax+30h]
bswap	edx
bswap	esi
mov	[eax+30h], esi
mov	esi, [eax+3Ch]
mov	[eax+34h], edx
mov	edx, [eax+38h]
bswap	edx
bswap	esi
mov	[eax+38h], esi
mov	esi, [eax+44h]
mov	[eax+3Ch], edx
mov	edx, [eax+40h]
bswap	edx
bswap	esi
mov	[eax+40h], esi
mov	esi, [eax+4Ch]
mov	[eax+44h], edx
mov	edx, [eax+48h]
bswap	edx
bswap	esi
mov	[eax+48h], esi
mov	esi, [eax+54h]
mov	[eax+4Ch], edx
mov	edx, [eax+50h]
bswap	edx
bswap	esi
mov	[eax+50h], esi
mov	esi, [eax+5Ch]
mov	[eax+54h], edx
mov	edx, [eax+58h]
bswap	edx
bswap	esi
mov	[eax+58h], esi
mov	esi, [eax+64h]
mov	[eax+5Ch], edx
mov	edx, [eax+60h]
bswap	edx
bswap	esi
mov	[eax+60h], esi
mov	esi, [eax+6Ch]
mov	[eax+64h], edx
mov	edx, [eax+68h]
bswap	edx
bswap	esi
mov	[eax+68h], esi
mov	esi, [eax+74h]
mov	[eax+6Ch], edx
mov	edx, [eax+70h]
bswap	edx
bswap	esi
mov	[eax+70h], esi
mov	esi, [eax+7Ch]
mov	[eax+74h], edx
mov	edx, [eax+78h]
bswap	edx
bswap	esi
mov	[eax+78h], esi
mov	[eax+7Ch], edx
mov	[esp+0A4h+var_44], 40h
mov	esi, [ecx+6Ch]
mov	edi, [ecx+68h]
mov	ebx, edi
shr	ebx, 13h
mov	edx, esi
shl	edx, 0Dh
or	edx, ebx
mov	ebp, edi
mov	ebx, esi
shl	ebx, 1Ah
shr	ebp, 6
or	ebx, ebp
xor	edx, ebx
add	edi, edi
add	edi, edi
mov	ebx, esi
add	edi, edi
shr	ebx, 1Dh
or	ebx, edi
mov	edi, [ecx+40h]
xor	edx, ebx
add	edx, edi
mov	[esp+0A4h+var_94], 0
cmp	edx, edi
jnb	short loc_10006D0B
mov	[esp+0A4h+var_94], 1
mov	edi, [ecx+4]
mov	ebp, [ecx]
shr	ebp, 8
mov	ebx, edi
shl	ebx, 18h
or	ebx, ebp
mov	ebp, [ecx]
mov	[esp+0A4h+var_5C], ebx
shr	ebp, 7
mov	ebx, edi
shl	ebx, 19h
or	ebx, ebp
xor	[esp+0A4h+var_5C], ebx
mov	ebx, [ecx]
shr	ebx, 1
mov	ebp, edi
shl	ebp, 1Fh
or	ebp, ebx
mov	ebx, [esp+0A4h+var_5C]
xor	ebx, ebp
add	edx, ebx
cmp	edx, ebx
jnb	short loc_10006D49
inc	[esp+0A4h+var_94]
mov	ebx, [ecx-8]
add	edx, ebx
cmp	edx, ebx
jnb	short loc_10006D56
inc	[esp+0A4h+var_94]
mov	[ecx+78h], edx
mov	edx, [ecx]
mov	ebx, edi
shr	ebx, 1
mov	ebp, edx
shl	ebp, 1Fh
or	ebx, ebp
mov	ebp, edi
shr	ebp, 8
shl	edx, 18h
or	ebp, edx
mov	edx, [ecx+68h]
xor	ebx, ebp
shr	edi, 7
xor	ebx, edi
mov	ebp, edx
shr	ebp, 1Dh
lea	edi, ds:0[esi*8]
or	edi, ebp
mov	ebp, esi
shr	ebp, 13h
shl	edx, 0Dh
or	ebp, edx
xor	edi, ebp
shr	esi, 6
xor	edi, esi
add	ebx, edi
add	ebx, [ecx+44h]
add	ecx, 8
add	ebx, [ecx-0Ch]
add	ebx, [esp+0A4h+var_94]
dec	[esp+0A4h+var_44]
mov	[ecx+74h], ebx
jnz	loc_10006CC3
mov	edi, [eax+2BCh]
mov	[esp+0A4h+var_4C], edi
lea	edi, [eax+8]
mov	[esp+0A4h+var_90], edi
mov	edi, offset dword_100398D8
sub	edi, eax
mov	[esp+0A4h+var_4], edi
mov	ecx, [eax+284h]
mov	edi, offset dword_100398DC
sub	edi, eax
mov	[esp+0A4h+var_30], edi
mov	edi, offset dword_100398E0
sub	edi, eax
mov	[esp+0A4h+var_38], edi
mov	edi, offset dword_100398E4
sub	edi, eax
mov	[esp+0A4h+var_34], edi
mov	edi, offset dword_100398E8
sub	edi, eax
mov	[esp+0A4h+var_2C], edi
mov	edi, offset dword_100398EC
sub	edi, eax
mov	[esp+0A4h+var_24], edi
mov	[esp+0A4h+var_54], ecx
mov	ecx, [eax+288h]
mov	edi, offset dword_100398F0
sub	edi, eax
mov	[esp+0A4h+var_1C], edi
mov	[esp+0A4h+var_7C], ecx
mov	ecx, [eax+28Ch]
mov	ebx, [eax+2A0h]
mov	esi, [eax+2A4h]
mov	edi, offset dword_100398F4
sub	edi, eax
mov	[esp+0A4h+var_14], edi
mov	[esp+0A4h+var_78], ecx
mov	ecx, [eax+290h]
mov	edx, [eax+280h]
mov	[esp+0A4h+var_84], ecx
mov	ecx, [eax+294h]
mov	edi, offset dword_100398F8
sub	edi, eax
mov	[esp+0A4h+var_C], edi
mov	[esp+0A4h+var_80], ecx
mov	ecx, [eax+298h]
mov	edi, offset dword_100398FC
sub	edi, eax
mov	[esp+0A4h+var_3C], edi
mov	[esp+0A4h+var_8C], ecx
mov	ecx, [eax+29Ch]
mov	edi, offset dword_10039900
sub	edi, eax
mov	[esp+0A4h+var_18], edi
mov	[esp+0A4h+var_88], ecx
mov	ecx, [eax+2A8h]
mov	edi, offset dword_10039904
sub	edi, eax
mov	[esp+0A4h+var_74], ecx
mov	ecx, [eax+2ACh]
mov	[esp+0A4h+var_28], edi
mov	[esp+0A4h+var_70], ecx
mov	ecx, [eax+2B0h]
mov	edi, offset dword_10039908
sub	edi, eax
mov	[esp+0A4h+var_8], edi
mov	[esp+0A4h+var_64], ecx
mov	ecx, [eax+2B4h]
mov	edi, offset dword_1003990C
sub	edi, eax
mov	[esp+0A4h+var_60], ecx
mov	ecx, [eax+2B8h]
mov	[esp+0A4h+var_6C], ebx
mov	[esp+0A4h+var_68], esi
mov	[esp+0A4h+var_5C], offset dword_100398DC
mov	[esp+0A4h+var_20], edi
jmp	short loc_10006F18
mov	ebx, [esp+0A4h+var_6C]
mov	esi, [esp+0A4h+var_68]
mov	ebp, [esp+0A4h+var_74]
and	ebp, ebx
mov	edi, ebx
not	edi
and	edi, [esp+0A4h+var_64]
xor	edi, ebp
mov	[esp+0A4h+var_48], edi
mov	ebp, ebx
shl	ebp, 17h
shr	ebx, 12h
mov	edi, esi
shr	edi, 9
or	edi, ebp
mov	ebp, esi
shl	ebp, 0Eh
or	ebp, ebx
xor	edi, ebp
mov	ebp, [esp+0A4h+var_6C]
shr	ebp, 0Eh
mov	ebx, esi
shl	ebx, 12h
or	ebx, ebp
mov	ebp, [esp+0A4h+var_5C]
mov	ebp, [ebp-4]
xor	edi, ebx
mov	ebx, [esp+0A4h+var_48]
add	edi, ebx
cmp	edi, ebx
sbb	ebx, ebx
neg	ebx
add	edi, ebp
mov	[esp+0A4h+var_94], ebx
cmp	edi, ebp
jnb	short loc_10006F76
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebp, [esp+0A4h+var_90]
mov	ebp, [ebp-8]
add	edi, ebp
cmp	edi, ebp
jnb	short loc_10006F88
inc	ebx
mov	[esp+0A4h+var_94], ebx
add	ecx, edi
cmp	ecx, edi
jnb	short loc_10006F93
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	edi, [esp+0A4h+var_6C]
mov	ebp, edi
shl	ebp, 12h
shl	edi, 0Eh
mov	ebx, esi
shr	ebx, 0Eh
or	ebx, ebp
mov	ebp, esi
shr	ebp, 12h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_6C]
mov	edi, esi
shl	edi, 17h
shr	ebp, 9
or	edi, ebp
mov	ebp, [esp+0A4h+var_70]
xor	ebx, edi
and	ebp, esi
mov	edi, esi
mov	esi, [esp+0A4h+var_90]
not	edi
and	edi, [esp+0A4h+var_60]
xor	edi, ebp
add	ebx, edi
add	ebx, [esi-4]
mov	esi, [esp+0A4h+var_5C]
add	ebx, [esi]
mov	edi, [esp+0A4h+var_8C]
add	ebx, [esp+0A4h+var_94]
mov	esi, [esp+0A4h+var_4C]
add	esi, ebx
mov	ebx, [esp+0A4h+var_54]
add	edi, ecx
cmp	edi, ecx
mov	[esp+0A4h+var_8C], edi
sbb	edi, edi
neg	edi
add	edi, esi
add	[esp+0A4h+var_88], edi
mov	[esp+0A4h+var_4C], esi
mov	esi, [esp+0A4h+var_7C]
mov	edi, esi
xor	edi, edx
and	edi, [esp+0A4h+var_84]
and	esi, edx
xor	edi, esi
mov	esi, ebx
shl	esi, 4
mov	ebp, edx
shr	ebp, 1Ch
or	esi, ebp
shr	ebx, 2
mov	ebp, edx
shl	ebp, 1Eh
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_54]
shr	ebx, 7
mov	ebp, edx
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
add	esi, edi
cmp	esi, edi
sbb	edi, edi
neg	edi
add	ecx, esi
mov	[esp+0A4h+var_94], edi
cmp	ecx, esi
jnb	short loc_10007055
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_54]
mov	ebx, esi
shl	ebx, 19h
mov	edi, edx
shr	edi, 7
or	ebx, edi
mov	edi, esi
shl	edi, 1Eh
mov	ebp, edx
shr	ebp, 2
or	edi, ebp
xor	ebx, edi
mov	edi, esi
shr	edi, 1Ch
mov	ebp, edx
shl	ebp, 4
or	edi, ebp
xor	ebx, edi
add	ebx, [esp+0A4h+var_94]
mov	edi, [esp+0A4h+var_78]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+0A4h+var_80]
and	edi, esi
xor	ebp, edi
add	ebp, ebx
mov	ebx, [esp+0A4h+var_8C]
add	[esp+0A4h+var_4C], ebp
mov	edi, ebx
mov	esi, ebx
and	esi, [esp+0A4h+var_6C]
not	edi
and	edi, [esp+0A4h+var_74]
mov	ebp, ebx
xor	edi, esi
mov	esi, [esp+0A4h+var_88]
shl	ebp, 17h
shr	esi, 9
or	esi, ebp
mov	ebp, [esp+0A4h+var_88]
shr	ebx, 12h
shl	ebp, 0Eh
or	ebp, ebx
mov	ebx, [esp+0A4h+var_88]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_8C]
shl	ebx, 12h
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
add	esi, edi
cmp	esi, edi
mov	edi, [esp+0A4h+var_4]
mov	edi, [edi+ebp]
sbb	ebx, ebx
neg	ebx
add	esi, edi
mov	[esp+0A4h+var_94], ebx
cmp	esi, edi
jnb	short loc_10007102
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebp, [ebp+0]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_10007110
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	edi, [esp+0A4h+var_64]
add	edi, esi
mov	[esp+0A4h+var_64], edi
cmp	edi, esi
jnb	short loc_10007123
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	esi, [esp+0A4h+var_88]
mov	edi, [esp+0A4h+var_8C]
mov	ebp, edi
mov	ebx, esi
shr	ebx, 0Eh
shl	ebp, 12h
or	ebx, ebp
shl	edi, 0Eh
mov	ebp, esi
shr	ebp, 12h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_8C]
mov	edi, esi
shl	edi, 17h
shr	ebp, 9
or	edi, ebp
xor	ebx, edi
mov	edi, esi
and	esi, [esp+0A4h+var_68]
not	edi
and	edi, [esp+0A4h+var_70]
mov	ebp, ecx
xor	edi, esi
mov	esi, [esp+0A4h+var_90]
add	ebx, edi
mov	edi, [esp+0A4h+var_30]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_60]
add	ebx, [esi+4]
mov	esi, [esp+0A4h+var_64]
add	ebx, [esp+0A4h+var_94]
add	edi, ebx
mov	ebx, [esp+0A4h+var_84]
add	ebx, esi
cmp	ebx, esi
sbb	esi, esi
neg	esi
add	esi, edi
add	[esp+0A4h+var_80], esi
mov	[esp+0A4h+var_60], edi
mov	[esp+0A4h+var_84], ebx
mov	ebx, [esp+0A4h+var_4C]
mov	edi, edx
xor	edi, ecx
and	edi, [esp+0A4h+var_7C]
mov	esi, edx
and	esi, ecx
xor	edi, esi
mov	esi, ebx
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
shr	ebx, 2
mov	ebp, ecx
shl	ebp, 1Eh
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_4C]
shr	ebx, 7
mov	ebp, ecx
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_64]
add	esi, edi
cmp	esi, edi
sbb	edi, edi
add	ebx, esi
neg	edi
mov	[esp+0A4h+var_94], edi
mov	[esp+0A4h+var_64], ebx
cmp	ebx, esi
jnb	short loc_100071F2
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_4C]
mov	ebx, esi
shl	ebx, 19h
mov	edi, ecx
shr	edi, 7
or	ebx, edi
mov	edi, esi
shl	edi, 1Eh
mov	ebp, ecx
shr	ebp, 2
or	edi, ebp
xor	ebx, edi
mov	edi, esi
shr	edi, 1Ch
mov	ebp, ecx
shl	ebp, 4
or	edi, ebp
xor	ebx, edi
add	ebx, [esp+0A4h+var_94]
mov	edi, [esp+0A4h+var_54]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+0A4h+var_78]
and	edi, esi
xor	ebp, edi
add	ebp, ebx
mov	ebx, [esp+0A4h+var_84]
add	[esp+0A4h+var_60], ebp
mov	edi, ebx
mov	esi, ebx
and	esi, [esp+0A4h+var_8C]
not	edi
and	edi, [esp+0A4h+var_6C]
mov	ebp, ebx
xor	edi, esi
mov	esi, [esp+0A4h+var_80]
shl	ebp, 17h
shr	esi, 9
or	esi, ebp
mov	ebp, [esp+0A4h+var_80]
shr	ebx, 12h
shl	ebp, 0Eh
or	ebp, ebx
mov	ebx, [esp+0A4h+var_80]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_84]
shl	ebx, 12h
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
add	esi, edi
cmp	esi, edi
mov	edi, [esp+0A4h+var_38]
mov	edi, [edi+ebp]
sbb	ebx, ebx
neg	ebx
add	esi, edi
mov	[esp+0A4h+var_94], ebx
cmp	esi, edi
jnb	short loc_1000729C
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebp, [ebp+8]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_100072AA
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	edi, [esp+0A4h+var_74]
add	edi, esi
mov	[esp+0A4h+var_74], edi
cmp	edi, esi
jnb	short loc_100072BD
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	esi, [esp+0A4h+var_80]
mov	edi, [esp+0A4h+var_84]
mov	ebp, edi
mov	ebx, esi
shr	ebx, 0Eh
shl	ebp, 12h
or	ebx, ebp
shl	edi, 0Eh
mov	ebp, esi
shr	ebp, 12h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_84]
mov	edi, esi
shl	edi, 17h
shr	ebp, 9
or	edi, ebp
xor	ebx, edi
mov	edi, esi
and	esi, [esp+0A4h+var_88]
not	edi
and	edi, [esp+0A4h+var_68]
xor	edi, esi
mov	esi, [esp+0A4h+var_90]
add	ebx, edi
mov	edi, [esp+0A4h+var_34]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_70]
add	ebx, [esi+0Ch]
mov	esi, [esp+0A4h+var_74]
add	ebx, [esp+0A4h+var_94]
add	edi, ebx
mov	ebx, [esp+0A4h+var_7C]
add	ebx, esi
cmp	ebx, esi
sbb	esi, esi
neg	esi
add	esi, edi
add	[esp+0A4h+var_78], esi
mov	[esp+0A4h+var_7C], ebx
mov	ebx, [esp+0A4h+var_64]
mov	[esp+0A4h+var_70], edi
mov	edi, ecx
xor	edi, ebx
and	edi, edx
mov	ebp, ebx
mov	esi, ecx
and	esi, ebx
xor	edi, esi
mov	esi, [esp+0A4h+var_60]
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_60]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_60]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_64]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_74]
add	esi, edi
cmp	esi, edi
sbb	edi, edi
add	ebx, esi
neg	edi
mov	[esp+0A4h+var_94], edi
mov	[esp+0A4h+var_74], ebx
cmp	ebx, esi
jnb	short loc_10007390
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_60]
mov	edi, [esp+0A4h+var_64]
mov	ebp, edi
shr	ebp, 7
mov	ebx, esi
shl	ebx, 19h
or	ebx, ebp
shr	edi, 2
mov	ebp, esi
shl	ebp, 1Eh
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_64]
shl	ebp, 4
mov	edi, esi
shr	edi, 1Ch
or	edi, ebp
xor	ebx, edi
add	ebx, [esp+0A4h+var_94]
mov	edi, [esp+0A4h+var_4C]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+0A4h+var_54]
and	edi, esi
mov	esi, [esp+0A4h+var_84]
xor	ebp, edi
add	ebp, ebx
mov	ebx, [esp+0A4h+var_7C]
add	[esp+0A4h+var_70], ebp
and	esi, ebx
mov	edi, ebx
not	edi
and	edi, [esp+0A4h+var_8C]
mov	ebp, ebx
xor	edi, esi
mov	esi, [esp+0A4h+var_78]
shl	ebp, 17h
shr	esi, 9
or	esi, ebp
mov	ebp, [esp+0A4h+var_78]
shr	ebx, 12h
shl	ebp, 0Eh
or	ebp, ebx
mov	ebx, [esp+0A4h+var_78]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_7C]
shl	ebx, 12h
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
add	esi, edi
cmp	esi, edi
mov	edi, [esp+0A4h+var_2C]
mov	edi, [edi+ebp]
sbb	ebx, ebx
neg	ebx
add	esi, edi
mov	[esp+0A4h+var_94], ebx
cmp	esi, edi
jnb	short loc_1000743E
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebp, [ebp+10h]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_1000744C
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	edi, [esp+0A4h+var_6C]
add	edi, esi
mov	[esp+0A4h+var_6C], edi
cmp	edi, esi
jnb	short loc_1000745F
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	esi, [esp+0A4h+var_78]
mov	edi, [esp+0A4h+var_7C]
mov	ebp, edi
shl	ebp, 12h
mov	ebx, esi
shr	ebx, 0Eh
or	ebx, ebp
shl	edi, 0Eh
mov	ebp, esi
shr	ebp, 12h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_7C]
mov	edi, esi
shl	edi, 17h
shr	ebp, 9
or	edi, ebp
mov	ebp, [esp+0A4h+var_80]
xor	ebx, edi
and	ebp, esi
mov	edi, esi
mov	esi, [esp+0A4h+var_90]
not	edi
and	edi, [esp+0A4h+var_88]
xor	edi, ebp
add	ebx, edi
mov	edi, [esp+0A4h+var_24]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_68]
add	ebx, [esi+14h]
mov	esi, [esp+0A4h+var_6C]
add	ebx, [esp+0A4h+var_94]
add	edx, esi
add	edi, ebx
mov	ebx, [esp+0A4h+var_74]
cmp	edx, esi
sbb	esi, esi
neg	esi
add	esi, edi
add	[esp+0A4h+var_54], esi
mov	esi, [esp+0A4h+var_64]
mov	[esp+0A4h+var_68], edi
mov	edi, esi
and	esi, ebx
xor	edi, ebx
and	edi, ecx
xor	edi, esi
mov	esi, [esp+0A4h+var_70]
mov	ebp, ebx
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_70]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_70]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_74]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_6C]
add	esi, edi
cmp	esi, edi
sbb	edi, edi
add	ebx, esi
neg	edi
mov	[esp+0A4h+var_94], edi
mov	[esp+0A4h+var_6C], ebx
cmp	ebx, esi
jnb	short loc_10007531
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_70]
mov	edi, [esp+0A4h+var_74]
mov	ebx, esi
shl	ebx, 19h
mov	ebp, edi
shr	ebp, 7
or	ebx, ebp
mov	ebp, esi
shl	ebp, 1Eh
shr	edi, 2
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_74]
mov	edi, esi
shl	ebp, 4
shr	edi, 1Ch
or	edi, ebp
xor	ebx, edi
add	ebx, [esp+0A4h+var_94]
mov	edi, [esp+0A4h+var_60]
mov	ebp, edi
xor	ebp, esi
and	ebp, [esp+0A4h+var_4C]
and	edi, esi
xor	ebp, edi
mov	edi, [esp+0A4h+var_7C]
add	ebp, ebx
add	[esp+0A4h+var_68], ebp
mov	esi, edx
not	esi
and	esi, [esp+0A4h+var_84]
and	edi, edx
xor	esi, edi
mov	edi, [esp+0A4h+var_54]
mov	[esp+0A4h+var_94], esi
mov	esi, edi
shr	esi, 9
mov	ebx, edx
shl	ebx, 17h
or	esi, ebx
mov	ebx, edi
shl	ebx, 0Eh
mov	ebp, edx
shr	ebp, 12h
or	ebx, ebp
xor	esi, ebx
mov	ebx, edi
shl	ebx, 12h
mov	ebp, edx
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
mov	ebx, [esp+0A4h+var_94]
add	esi, ebx
cmp	esi, ebx
sbb	ebx, ebx
neg	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebx, [esp+0A4h+var_1C]
mov	ebx, [ebx+ebp]
add	esi, ebx
cmp	esi, ebx
jnb	short loc_100075E3
inc	[esp+0A4h+var_94]
mov	ebp, [ebp+18h]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_100075F0
inc	[esp+0A4h+var_94]
mov	ebx, [esp+0A4h+var_8C]
add	ebx, esi
mov	[esp+0A4h+var_8C], ebx
cmp	ebx, esi
jnb	short loc_10007602
inc	[esp+0A4h+var_94]
mov	ebx, edi
shr	ebx, 0Eh
mov	esi, edx
shl	esi, 12h
or	ebx, esi
mov	esi, edi
shr	esi, 12h
mov	ebp, edx
shl	ebp, 0Eh
or	esi, ebp
xor	ebx, esi
mov	esi, edi
shl	esi, 17h
mov	ebp, edx
shr	ebp, 9
or	esi, ebp
xor	ebx, esi
mov	ebp, [esp+0A4h+var_78]
and	ebp, edi
mov	esi, edi
mov	edi, [esp+0A4h+var_14]
not	esi
and	esi, [esp+0A4h+var_80]
xor	esi, ebp
add	ebx, esi
mov	esi, [esp+0A4h+var_90]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_8C]
add	ebx, [esi+1Ch]
mov	esi, [esp+0A4h+var_88]
add	ebx, [esp+0A4h+var_94]
mov	ebp, [esp+0A4h+var_74]
add	esi, ebx
add	ecx, edi
cmp	ecx, edi
mov	edi, [esp+0A4h+var_4C]
sbb	ebx, ebx
neg	ebx
add	ebx, esi
add	edi, ebx
mov	ebx, [esp+0A4h+var_6C]
mov	[esp+0A4h+var_88], esi
mov	esi, ebp
xor	esi, ebx
and	ebp, ebx
mov	[esp+0A4h+var_10], esi
and	esi, [esp+0A4h+var_64]
mov	[esp+0A4h+var_40], ebp
xor	esi, ebp
mov	[esp+0A4h+var_94], esi
mov	esi, [esp+0A4h+var_68]
mov	ebp, ebx
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_68]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_68]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_6C]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
mov	ebp, [esp+0A4h+var_8C]
xor	esi, ebx
mov	ebx, [esp+0A4h+var_94]
add	esi, ebx
cmp	esi, ebx
sbb	ebx, ebx
add	ebp, esi
neg	ebx
mov	[esp+0A4h+var_4C], edi
mov	[esp+0A4h+var_94], ebx
mov	[esp+0A4h+var_8C], ebp
cmp	ebp, esi
jnb	short loc_100076E7
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebx, [esp+0A4h+var_70]
mov	esi, [esp+0A4h+var_68]
mov	ebp, ebx
and	ebx, esi
xor	ebp, esi
mov	[esp+0A4h+var_48], ebx
mov	ebx, esi
shl	ebx, 19h
shl	esi, 1Eh
mov	[esp+0A4h+var_44], ebp
mov	ebp, [esp+0A4h+var_6C]
shr	ebp, 7
or	ebx, ebp
mov	ebp, [esp+0A4h+var_6C]
shr	ebp, 2
or	esi, ebp
xor	ebx, esi
mov	esi, [esp+0A4h+var_68]
mov	ebp, [esp+0A4h+var_6C]
shr	esi, 1Ch
shl	ebp, 4
or	esi, ebp
xor	ebx, esi
add	ebx, [esp+0A4h+var_94]
mov	esi, [esp+0A4h+var_44]
and	esi, [esp+0A4h+var_60]
mov	ebp, ecx
xor	esi, [esp+0A4h+var_48]
shr	ebp, 12h
add	esi, ebx
add	[esp+0A4h+var_88], esi
mov	esi, ecx
not	esi
and	esi, [esp+0A4h+var_7C]
mov	ebx, edx
and	ebx, ecx
xor	esi, ebx
mov	[esp+0A4h+var_94], esi
mov	esi, edi
shr	esi, 9
mov	ebx, ecx
shl	ebx, 17h
or	esi, ebx
mov	ebx, edi
shl	ebx, 0Eh
or	ebx, ebp
xor	esi, ebx
mov	ebx, edi
shl	ebx, 12h
mov	ebp, ecx
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
mov	ebx, [esp+0A4h+var_94]
add	esi, ebx
cmp	esi, ebx
sbb	ebx, ebx
neg	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebx, [esp+0A4h+var_C]
mov	ebx, [ebx+ebp]
add	esi, ebx
cmp	esi, ebx
jnb	short loc_100077A3
inc	[esp+0A4h+var_94]
mov	ebp, [ebp+20h]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_100077B0
inc	[esp+0A4h+var_94]
mov	ebx, [esp+0A4h+var_84]
add	ebx, esi
mov	[esp+0A4h+var_84], ebx
cmp	ebx, esi
jnb	short loc_100077C2
inc	[esp+0A4h+var_94]
mov	ebx, edi
shr	ebx, 0Eh
mov	esi, ecx
shl	esi, 12h
or	ebx, esi
mov	esi, edi
shr	esi, 12h
mov	ebp, ecx
shl	ebp, 0Eh
or	esi, ebp
xor	ebx, esi
mov	esi, edi
shl	esi, 17h
mov	ebp, ecx
shr	ebp, 9
or	esi, ebp
xor	ebx, esi
mov	ebp, [esp+0A4h+var_54]
and	ebp, edi
mov	esi, edi
mov	edi, [esp+0A4h+var_3C]
not	esi
and	esi, [esp+0A4h+var_78]
xor	esi, ebp
add	ebx, esi
mov	esi, [esp+0A4h+var_90]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_64]
add	ebx, [esi+24h]
mov	esi, [esp+0A4h+var_80]
add	ebx, [esp+0A4h+var_94]
add	esi, ebx
mov	ebx, [esp+0A4h+var_84]
add	edi, ebx
cmp	edi, ebx
sbb	ebx, ebx
neg	ebx
add	ebx, esi
add	[esp+0A4h+var_60], ebx
mov	ebx, [esp+0A4h+var_8C]
mov	[esp+0A4h+var_80], esi
mov	esi, [esp+0A4h+var_10]
and	esi, ebx
xor	esi, [esp+0A4h+var_40]
mov	ebp, ebx
mov	[esp+0A4h+var_94], esi
mov	esi, [esp+0A4h+var_88]
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_88]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_88]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_8C]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
mov	ebp, [esp+0A4h+var_84]
xor	esi, ebx
mov	ebx, [esp+0A4h+var_94]
add	esi, ebx
cmp	esi, ebx
sbb	ebx, ebx
add	ebp, esi
neg	ebx
mov	[esp+0A4h+var_64], edi
mov	[esp+0A4h+var_94], ebx
mov	[esp+0A4h+var_84], ebp
cmp	ebp, esi
jnb	short loc_10007898
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	esi, [esp+0A4h+var_88]
mov	ebp, [esp+0A4h+var_8C]
mov	ebx, esi
shl	ebx, 19h
shl	esi, 1Eh
shr	ebp, 7
or	ebx, ebp
mov	ebp, [esp+0A4h+var_8C]
shr	ebp, 2
or	esi, ebp
xor	ebx, esi
mov	esi, [esp+0A4h+var_88]
mov	ebp, [esp+0A4h+var_8C]
shr	esi, 1Ch
shl	ebp, 4
or	esi, ebp
xor	ebx, esi
add	ebx, [esp+0A4h+var_94]
mov	esi, [esp+0A4h+var_44]
and	esi, [esp+0A4h+var_88]
mov	ebp, edi
xor	esi, [esp+0A4h+var_48]
shl	ebp, 17h
add	esi, ebx
add	[esp+0A4h+var_80], esi
mov	esi, edi
not	esi
and	esi, edx
mov	ebx, ecx
and	ebx, edi
xor	esi, ebx
mov	ebx, [esp+0A4h+var_60]
mov	[esp+0A4h+var_40], esi
mov	esi, ebx
shr	esi, 9
or	esi, ebp
shl	ebx, 0Eh
mov	ebp, edi
shr	ebp, 12h
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_60]
shl	ebx, 12h
mov	ebp, edi
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
mov	ebx, [esp+0A4h+var_40]
add	esi, ebx
cmp	esi, ebx
sbb	ebx, ebx
neg	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebx, [esp+0A4h+var_18]
mov	ebx, [ebx+ebp]
add	esi, ebx
cmp	esi, ebx
jnb	short loc_10007944
inc	[esp+0A4h+var_94]
mov	ebp, [ebp+28h]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_10007951
inc	[esp+0A4h+var_94]
mov	ebx, [esp+0A4h+var_7C]
add	ebx, esi
mov	[esp+0A4h+var_7C], ebx
cmp	ebx, esi
jnb	short loc_10007963
inc	[esp+0A4h+var_94]
mov	esi, [esp+0A4h+var_60]
mov	ebx, esi
shr	ebx, 0Eh
mov	ebp, edi
shl	ebp, 12h
or	ebx, ebp
shr	esi, 12h
mov	ebp, edi
shl	ebp, 0Eh
or	esi, ebp
xor	ebx, esi
mov	esi, [esp+0A4h+var_60]
shr	edi, 9
mov	ebp, esi
shl	ebp, 17h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_4C]
and	ebp, esi
mov	edi, esi
mov	esi, [esp+0A4h+var_90]
not	edi
and	edi, [esp+0A4h+var_54]
xor	edi, ebp
add	ebx, edi
mov	edi, [esp+0A4h+var_28]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_78]
add	ebx, [esi+2Ch]
mov	esi, [esp+0A4h+var_7C]
add	ebx, [esp+0A4h+var_94]
mov	ebp, [esp+0A4h+var_8C]
add	edi, ebx
mov	ebx, [esp+0A4h+var_74]
add	ebx, esi
cmp	ebx, esi
sbb	esi, esi
neg	esi
add	esi, edi
add	[esp+0A4h+var_70], esi
mov	esi, [esp+0A4h+var_6C]
mov	[esp+0A4h+var_78], edi
mov	edi, ebp
and	ebp, esi
xor	edi, esi
mov	esi, [esp+0A4h+var_80]
mov	[esp+0A4h+var_74], ebx
mov	ebx, [esp+0A4h+var_84]
and	edi, ebx
xor	edi, ebp
mov	ebp, ebx
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_80]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_80]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_84]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
mov	ebx, [esp+0A4h+var_7C]
add	esi, edi
cmp	esi, edi
sbb	edi, edi
add	ebx, esi
neg	edi
mov	[esp+0A4h+var_94], edi
mov	[esp+0A4h+var_7C], ebx
cmp	ebx, esi
jnb	short loc_10007A3A
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_80]
mov	edi, [esp+0A4h+var_84]
mov	ebx, esi
mov	ebp, edi
shr	ebp, 7
shl	ebx, 19h
or	ebx, ebp
mov	ebp, esi
shl	ebp, 1Eh
shr	edi, 2
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_84]
shl	ebp, 4
mov	edi, esi
shr	edi, 1Ch
or	edi, ebp
mov	ebp, [esp+0A4h+var_88]
xor	ebx, edi
mov	edi, [esp+0A4h+var_68]
add	ebx, [esp+0A4h+var_94]
xor	ebp, edi
and	ebp, esi
mov	esi, [esp+0A4h+var_88]
and	esi, edi
xor	ebp, esi
mov	esi, [esp+0A4h+var_64]
add	ebp, ebx
mov	ebx, [esp+0A4h+var_74]
add	[esp+0A4h+var_78], ebp
and	esi, ebx
mov	edi, ebx
not	edi
and	edi, ecx
xor	edi, esi
mov	esi, [esp+0A4h+var_70]
mov	ebp, ebx
shl	ebp, 17h
shr	esi, 9
or	esi, ebp
mov	ebp, [esp+0A4h+var_70]
shr	ebx, 12h
shl	ebp, 0Eh
or	ebp, ebx
mov	ebx, [esp+0A4h+var_70]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_74]
shl	ebx, 12h
shr	ebp, 0Eh
or	ebx, ebp
mov	ebp, [esp+0A4h+var_90]
xor	esi, ebx
add	esi, edi
cmp	esi, edi
mov	edi, [esp+0A4h+var_8]
mov	edi, [edi+ebp]
sbb	ebx, ebx
neg	ebx
add	esi, edi
mov	[esp+0A4h+var_94], ebx
cmp	esi, edi
jnb	short loc_10007AED
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	ebp, [ebp+30h]
add	esi, ebp
cmp	esi, ebp
jnb	short loc_10007AFB
inc	ebx
mov	[esp+0A4h+var_94], ebx
add	edx, esi
cmp	edx, esi
jnb	short loc_10007B06
inc	ebx
mov	[esp+0A4h+var_94], ebx
mov	esi, [esp+0A4h+var_70]
mov	edi, [esp+0A4h+var_74]
mov	ebp, edi
shl	ebp, 12h
shl	edi, 0Eh
mov	ebx, esi
shr	ebx, 0Eh
or	ebx, ebp
mov	ebp, esi
shr	ebp, 12h
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_74]
shr	ebp, 9
mov	edi, esi
shl	edi, 17h
or	edi, ebp
mov	ebp, [esp+0A4h+var_60]
xor	ebx, edi
and	ebp, esi
mov	edi, esi
mov	esi, [esp+0A4h+var_90]
not	edi
and	edi, [esp+0A4h+var_4C]
xor	edi, ebp
add	ebx, edi
mov	edi, [esp+0A4h+var_20]
add	ebx, [edi+esi]
mov	edi, [esp+0A4h+var_6C]
add	ebx, [esi+34h]
mov	esi, [esp+0A4h+var_54]
add	ebx, [esp+0A4h+var_94]
add	edi, edx
add	esi, ebx
mov	ebx, [esp+0A4h+var_7C]
cmp	edi, edx
mov	[esp+0A4h+var_6C], edi
sbb	edi, edi
neg	edi
add	edi, esi
add	[esp+0A4h+var_68], edi
mov	[esp+0A4h+var_54], esi
mov	esi, [esp+0A4h+var_8C]
mov	edi, ebx
xor	edi, esi
and	edi, [esp+0A4h+var_84]
mov	ebp, ebx
and	ebp, esi
mov	esi, [esp+0A4h+var_78]
xor	edi, ebp
mov	ebp, ebx
shr	ebp, 1Ch
shl	esi, 4
or	esi, ebp
mov	ebp, [esp+0A4h+var_78]
shl	ebx, 1Eh
shr	ebp, 2
or	ebp, ebx
mov	ebx, [esp+0A4h+var_78]
xor	esi, ebp
mov	ebp, [esp+0A4h+var_7C]
shr	ebx, 7
shl	ebp, 19h
or	ebx, ebp
xor	esi, ebx
add	esi, edi
cmp	esi, edi
sbb	edi, edi
neg	edi
add	edx, esi
mov	[esp+0A4h+var_94], edi
cmp	edx, esi
jnb	short loc_10007BD8
inc	edi
mov	[esp+0A4h+var_94], edi
mov	esi, [esp+0A4h+var_78]
mov	edi, [esp+0A4h+var_7C]
mov	ebp, edi
shr	ebp, 7
mov	ebx, esi
shl	ebx, 19h
or	ebx, ebp
add	[esp+0A4h+var_90], 40h
mov	ebp, esi
shl	ebp, 1Eh
shr	edi, 2
or	ebp, edi
xor	ebx, ebp
mov	ebp, [esp+0A4h+var_7C]
shl	ebp, 4
mov	edi, esi
shr	edi, 1Ch
or	edi, ebp
xor	ebx, edi
mov	edi, [esp+0A4h+var_88]
add	ebx, [esp+0A4h+var_94]
mov	ebp, esi
xor	ebp, edi
and	ebp, [esp+0A4h+var_80]
and	esi, edi
xor	ebp, esi
mov	esi, [esp+0A4h+var_5C]
add	ebp, ebx
add	[esp+0A4h+var_54], ebp
add	esi, 40h
mov	[esp+0A4h+var_5C], esi
cmp	esi, offset dword_10039B5C
jl	loc_10006F10
add	[eax+280h], edx
cmp	[eax+280h], edx
sbb	edx, edx
neg	edx
add	edx, [esp+0A4h+var_54]
add	[eax+284h], edx
mov	edx, [esp+0A4h+var_7C]
add	[eax+288h], edx
cmp	[eax+288h], edx
sbb	edx, edx
neg	edx
add	edx, [esp+0A4h+var_78]
add	[eax+28Ch], edx
mov	edx, [esp+0A4h+var_84]
add	[eax+290h], edx
cmp	[eax+290h], edx
sbb	edx, edx
neg	edx
add	edx, [esp+0A4h+var_80]
add	[eax+294h], edx
mov	edx, [esp+0A4h+var_8C]
add	[eax+298h], edx
cmp	[eax+298h], edx
sbb	edx, edx
neg	edx
add	edx, edi
add	[eax+29Ch], edx
mov	edx, [esp+0A4h+var_6C]
add	[eax+2A0h], edx
cmp	[eax+2A0h], edx
pop	edi
sbb	edx, edx
neg	edx
add	edx, [esp+0A0h+var_68]
pop	esi
add	[eax+2A4h], edx
mov	edx, [esp+9Ch+var_74]
add	[eax+2A8h], edx
cmp	[eax+2A8h], edx
pop	ebp
sbb	edx, edx
neg	edx
add	edx, [esp+98h+var_70]
pop	ebx
add	[eax+2ACh], edx
mov	edx, [esp+94h+var_64]
add	[eax+2B0h], edx
cmp	[eax+2B0h], edx
sbb	edx, edx
add	[eax+2B8h], ecx
neg	edx
add	edx, [esp+94h+var_60]
add	[eax+2B4h], edx
cmp	[eax+2B8h], ecx
sbb	ecx, ecx
neg	ecx
add	ecx, [esp+94h+var_4C]
add	[eax+2BCh], ecx
add	esp, 94h
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+Size]
test	ebp, ebp
jz	loc_10007DE8
push	ebx
mov	ebx, [esp+8+Dst]
mov	eax, [ebx+2C0h]
push	edi
mov	edi, eax
add	eax, ebp
and	edi, 7Fh
mov	[ebx+2C0h], eax
cmp	eax, ebp
jnb	short loc_10007D60
inc	dword ptr [ebx+2C4h]
push	esi
test	edi, edi
jz	short loc_10007D9B
mov	esi, 80h
sub	esi, edi
cmp	ebp, esi
jnb	short loc_10007D72
mov	esi, ebp
mov	eax, [esp+10h+Src]
push	esi		
push	eax		
lea	ecx, [edi+ebx]
push	ecx		
call	memcpy
add	[esp+1Ch+Src], esi
sub	ebp, esi
add	esi, edi
add	esp, 0Ch
cmp	esi, 80h
jnz	short loc_10007D9B
mov	eax, ebx
call	sub_10006BB0
			
cmp	ebp, 80h
jb	short loc_10007DD2
mov	eax, ebp
shr	eax, 7
mov	[esp+10h+Size],	eax
lea	esp, [esp+0]
mov	esi, [esp+10h+Src]
sub	[esp+10h+Src], 0FFFFFF80h
mov	ecx, 20h
mov	edi, ebx
mov	eax, ebx
rep movsd
add	ebp, 0FFFFFF80h
call	sub_10006BB0
dec	[esp+10h+Size]
jnz	short loc_10007DB0
pop	esi
test	ebp, ebp
jz	short loc_10007DE6
mov	edx, [esp+0Ch+Src]
push	ebp		
push	edx		
push	ebx		
call	memcpy
add	esp, 0Ch
pop	edi
pop	ebx
pop	ebp
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+2C0h]
and	eax, 7Fh
mov	edx, 70h
cmp	eax, 70h
jb	short loc_10007E0D
mov	edx, 0F0h
mov	ecx, [esi+2C4h]
push	ebx
push	edi
sub	edx, eax
mov	eax, [esi+2C0h]
push	edx		
lea	ebx, ds:0[eax*8]
lea	edi, ds:0[ecx*8]
shr	eax, 1Dh
push	offset dword_100396A8 
push	esi		
or	edi, eax
call	sub_10007D30
mov	eax, ebx
bswap	eax
mov	ecx, edi
bswap	ecx
mov	[esi+7Ch], eax
add	esp, 0Ch
mov	eax, esi
mov	dword ptr [esi+70h], 0
mov	dword ptr [esi+74h], 0
mov	[esi+78h], ecx
call	sub_10006BB0
mov	eax, [esi+280h]
mov	edx, [esi+284h]
bswap	eax
mov	[esi+284h], eax
mov	eax, [esi+288h]
bswap	edx
mov	[esi+280h], edx
mov	edx, [esi+28Ch]
bswap	eax
lea	ecx, [esi+280h]
mov	[esi+28Ch], eax
mov	eax, [esi+290h]
bswap	edx
mov	[esi+288h], edx
mov	edx, [esi+294h]
bswap	eax
mov	[esi+294h], eax
mov	eax, [esi+298h]
bswap	edx
mov	[esi+290h], edx
mov	edx, [esi+29Ch]
bswap	eax
mov	[esi+29Ch], eax
mov	eax, [esi+2A0h]
bswap	edx
mov	[esi+298h], edx
mov	edx, [esi+2A4h]
bswap	eax
mov	[esi+2A4h], eax
mov	eax, [esi+2A8h]
bswap	edx
mov	[esi+2A0h], edx
mov	edx, [esi+2ACh]
bswap	eax
mov	[esi+2ACh], eax
mov	eax, [esi+2B0h]
bswap	edx
mov	[esi+2A8h], edx
mov	edx, [esi+2B4h]
bswap	eax
mov	[esi+2B4h], eax
mov	eax, [esi+2B8h]
bswap	edx
mov	[esi+2B0h], edx
mov	edx, [esi+2BCh]
bswap	eax
mov	[esi+2BCh], eax
mov	eax, [esp+0Ch+arg_C]
bswap	edx
pop	edi
mov	[esi+2B8h], edx
pop	ebx
mov	esi, 40h
cmp	eax, 40h
ja	short loc_10007F5A
mov	esi, eax
mov	eax, [esp+4+Dst]
push	esi		
push	ecx		
push	eax		
call	memcpy
mov	eax, [esp+10h+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_10007F73
mov	[eax], esi
pop	esi
retn
align 10h
			
sub	esp, 40h
push	esi
mov	esi, [esp+44h+arg_0]
push	edi
add	esi, 280h
mov	ecx, 10h
lea	edi, [esp+48h+Src]
rep movsd
mov	eax, [esp+48h+Src]
mov	ecx, [esp+48h+var_3C]
bswap	eax
mov	[esp+48h+var_3C], eax
mov	eax, [esp+48h+var_38]
bswap	ecx
mov	[esp+48h+Src], ecx
mov	ecx, [esp+48h+var_34]
bswap	eax
mov	[esp+48h+var_34], eax
mov	eax, [esp+48h+var_30]
bswap	ecx
mov	[esp+48h+var_38], ecx
mov	ecx, [esp+48h+var_2C]
bswap	eax
mov	[esp+48h+var_2C], eax
mov	eax, [esp+48h+var_28]
bswap	ecx
mov	[esp+48h+var_30], ecx
mov	ecx, [esp+48h+var_24]
bswap	eax
mov	[esp+48h+var_24], eax
mov	eax, [esp+48h+var_20]
bswap	ecx
mov	[esp+48h+var_28], ecx
mov	ecx, [esp+48h+var_1C]
bswap	eax
mov	[esp+48h+var_1C], eax
mov	eax, [esp+48h+var_18]
bswap	ecx
mov	[esp+48h+var_20], ecx
mov	ecx, [esp+48h+var_14]
bswap	eax
mov	[esp+48h+var_14], eax
mov	eax, [esp+48h+var_10]
bswap	ecx
mov	[esp+48h+var_18], ecx
mov	ecx, [esp+48h+var_C]
bswap	eax
mov	[esp+48h+var_C], eax
mov	eax, [esp+48h+var_8]
bswap	ecx
mov	[esp+48h+var_10], ecx
mov	ecx, [esp+48h+var_4]
bswap	eax
mov	[esp+48h+var_4], eax
mov	eax, [esp+48h+arg_C]
bswap	ecx
mov	[esp+48h+var_8], ecx
mov	esi, 40h
cmp	eax, 40h
ja	short loc_1000804A
mov	esi, eax
mov	ecx, [esp+48h+Dst]
push	esi		
lea	eax, [esp+4Ch+Src]
push	eax		
push	ecx		
call	memcpy
mov	eax, [esp+54h+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_10008067
mov	[eax], esi
pop	edi
pop	esi
add	esp, 40h
retn
align 10h
sub	esp, 2D0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2D0h+var_4], eax
push	ebx
mov	ebx, [esp+2D4h+arg_0]
push	ebp
mov	ebp, [esp+2D8h+Src]
push	esi
push	edi
push	2C8h		
lea	eax, [esp+2E4h+Dst]
push	0		
push	eax		
call	memset
mov	ecx, 10h
mov	esi, offset dword_10039B58
lea	edi, [esp+2ECh+var_4C]
rep movsd
mov	ecx, [esp+2ECh+Size]
push	ecx		
lea	edx, [esp+2F0h+Dst]
push	ebp		
push	edx		
call	sub_10007D30
push	40h		
lea	eax, [esp+2FCh+var_2D0]
push	eax		
lea	ecx, [esp+300h+Dst]
push	ebx		
push	ecx		
call	sub_10007DF0
mov	ecx, [esp+308h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 2D0h
retn
align 10h
sub	esp, 2D0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2D0h+var_4], eax
mov	eax, [esp+2D0h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+2D8h+Src]
mov	[esp+2D8h+var_2D0], eax
push	esi
mov	eax, ebp
push	edi
lea	edx, [eax+1]
nop
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10008130
push	2C8h		
lea	ecx, [esp+2E4h+Dst]
sub	eax, edx
push	0		
push	ecx		
mov	ebx, eax
call	memset
push	ebx		
lea	edx, [esp+2F0h+Dst]
push	ebp		
mov	ecx, 10h
mov	esi, offset dword_10039B58
lea	edi, [esp+2F4h+var_4C]
push	edx		
rep movsd
call	sub_10007D30
mov	ecx, [esp+2F8h+var_2D0]
push	40h		
lea	eax, [esp+2FCh+var_2D0]
push	eax		
push	ecx		
lea	edx, [esp+304h+Dst]
push	edx		
call	sub_10007DF0
mov	ecx, [esp+308h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 2D0h
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, 0B2h
rep movsd
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
push	2C8h
call	PORT_Alloc_Util
add	esp, 4
test	eax, eax
jz	short locret_100081E2
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	ecx, 0B2h
mov	edi, eax
rep movsd
pop	edi
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, [esp+8+arg_0]
mov	ecx, 0B2h
rep movsd
pop	edi
pop	esi
retn
align 10h
			
push	2C8h
call	PORT_Alloc_Util
add	esp, 4
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	2C8h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10008245
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+Dst]
push	edi
push	2C8h		
push	0		
push	esi		
call	memset
lea	edi, [esi+280h]
add	esp, 0Ch
mov	ecx, 10h
mov	esi, offset dword_10039B98
rep movsd
pop	edi
pop	esi
retn
align 10h
			
jmp	sub_10007D30
align 10h
			
mov	eax, [esp+arg_C]
cmp	eax, 30h
jb	short loc_1000829E
mov	eax, 30h
mov	[esp+arg_C], eax 
jmp	sub_10007DF0
align 10h
mov	eax, [esp+arg_C]
cmp	eax, 30h
jb	short loc_100082BE
mov	eax, 30h
mov	[esp+arg_C], eax 
jmp	sub_10007F80
align 10h
sub	esp, 2D0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2D0h+var_4], eax
push	ebx
mov	ebx, [esp+2D4h+arg_0]
push	ebp
mov	ebp, [esp+2D8h+Src]
push	esi
push	edi
push	2C8h		
lea	eax, [esp+2E4h+Dst]
push	0		
push	eax		
call	memset
mov	ecx, 10h
mov	esi, offset dword_10039B98
lea	edi, [esp+2ECh+var_4C]
rep movsd
mov	ecx, [esp+2ECh+Size]
push	ecx		
lea	edx, [esp+2F0h+Dst]
push	ebp		
push	edx		
call	sub_10007D30
push	30h		
lea	eax, [esp+2FCh+var_2D0]
push	eax		
lea	ecx, [esp+300h+Dst]
push	ebx		
push	ecx		
call	sub_10007DF0
mov	ecx, [esp+308h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 2D0h
retn
align 10h
sub	esp, 2D0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2D0h+var_4], eax
mov	eax, [esp+2D0h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+2D8h+Src]
mov	[esp+2D8h+var_2D0], eax
push	esi
mov	eax, ebp
push	edi
lea	edx, [eax+1]
nop
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10008390
push	2C8h		
lea	ecx, [esp+2E4h+Dst]
sub	eax, edx
push	0		
push	ecx		
mov	ebx, eax
call	memset
push	ebx		
lea	edx, [esp+2F0h+Dst]
push	ebp		
mov	ecx, 10h
mov	esi, offset dword_10039B98
lea	edi, [esp+2F4h+var_4C]
push	edx		
rep movsd
call	sub_10007D30
mov	ecx, [esp+2F8h+var_2D0]
push	30h		
lea	eax, [esp+2FCh+var_2D0]
push	eax		
push	ecx		
lea	edx, [esp+304h+Dst]
push	edx		
call	sub_10007DF0
mov	ecx, [esp+308h+var_4]
add	esp, 28h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 2D0h
retn
align 10h
			
mov	eax, 2C8h
retn
align 10h
			
			
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_1000844A
mov	eax, [esi]
test	eax, eax
jz	short loc_1000843A
mov	ecx, [esi+4]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
push	10Ch		
push	0		
push	esi		
call	memset
add	esp, 14h
cmp	[esp+4+arg_4], 0
jz	short loc_1000844A
push	esi
call	PORT_Free_Util
add	esp, 4
			
pop	esi
retn
align 10h
			
sub	esp, 44h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+44h+var_4], eax
cmp	[esp+44h+arg_10], 0
mov	eax, [esp+44h+arg_4]
push	ebp
mov	ebp, [esp+48h+arg_8]
push	esi
mov	esi, [esp+4Ch+arg_0]
jz	short loc_1000849E
mov	ecx, [eax]
shr	ecx, 1
cmp	[esp+4Ch+arg_C], ecx
jnb	short loc_1000849E
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+44h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 44h
retn
			
test	esi, esi
jz	short loc_1000847D
mov	dword ptr [esi+8], 0
mov	[esi+4], eax
mov	edx, [eax+4]
push	edi
call	edx
mov	[esi], eax
test	eax, eax
jz	short loc_10008514
mov	ecx, [esi+4]
mov	edi, [esp+50h+arg_C]
cmp	edi, [ecx+1Ch]
jbe	loc_10008552
push	eax
mov	eax, [ecx+10h]
call	eax
mov	edx, [esp+54h+arg_C]
mov	ecx, [esi+4]
mov	eax, [esi]
mov	ecx, [ecx+14h]
push	edx
push	ebp
push	eax
call	ecx
mov	edx, [esi+4]
push	40h
lea	eax, [esp+64h+arg_C]
push	eax
mov	eax, [esi]
lea	ecx, [esp+68h+Dst]
push	ecx
mov	ecx, [edx+18h]
push	eax
call	ecx
mov	ecx, [esi+4]
mov	edi, [esp+70h+arg_C]
add	esp, 20h
cmp	edi, [ecx]
jz	short loc_1000854E
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
push	40h		
lea	edx, [esp+54h+Dst]
push	0		
push	edx		
call	memset
mov	eax, [esi]
add	esp, 0Ch
test	eax, eax
jz	short loc_10008539
mov	ecx, [esi+4]
mov	edx, [ecx+0Ch]
push	1
push	eax
call	edx
add	esp, 8
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+44h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 44h
retn
lea	ebp, [esp+50h+Dst]
mov	eax, [ecx+1Ch]
push	ebx
push	eax		
lea	ecx, [esi+0Ch]
push	36h		
push	ecx		
call	memset
mov	edx, [esi+4]
mov	eax, [edx+1Ch]
push	eax		
lea	ebx, [esi+8Ch]
push	5Ch		
push	ebx		
call	memset
add	esp, 18h
test	edi, edi
jz	short loc_10008592
mov	eax, ebx
mov	ecx, ebp
movzx	edx, byte ptr [ecx]
xor	[eax-80h], dl
movzx	edx, byte ptr [ecx]
xor	[eax], dl
inc	ecx
inc	eax
dec	edi
jnz	short loc_10008582
mov	ecx, [esp+54h+var_4]
pop	ebx
pop	edi
pop	esi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 44h
retn
align 10h
			
push	esi
push	10Ch
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_100085C6
pop	esi
retn
mov	eax, [esp+4+arg_C]
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_4]
push	eax
mov	eax, [esp+8+arg_0]
push	ecx
push	edx
push	eax
push	esi
call	sub_10008450
add	esp, 14h
mov	dword ptr [esi+8], 1
test	eax, eax
jz	short loc_100085F9
push	esi
call	PORT_Free_Util
add	esp, 4
xor	esi, esi
mov	eax, esi
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+4]
mov	ecx, [esi]
mov	edx, [eax+10h]
push	ecx
call	edx
mov	eax, [esi+4]
mov	ecx, [eax+1Ch]
push	ecx
mov	ecx, [esi]
lea	edx, [esi+0Ch]
push	edx
mov	edx, [eax+14h]
push	ecx
call	edx
add	esp, 10h
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	ecx, [eax+4]
mov	eax, [eax]
mov	ecx, [ecx+14h]
mov	[esp+arg_0], eax
jmp	ecx
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_C]
push	esi
mov	esi, [esp+8+arg_0]
mov	eax, [esi+4]
cmp	ebp, [eax]
jnb	short loc_10008674
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	ecx, [esi]
mov	edx, [eax+18h]
push	ebx
mov	ebx, [esp+0Ch+arg_4]
push	edi
mov	edi, [esp+10h+arg_8]
push	ebp
push	edi
push	ebx
push	ecx
call	edx
mov	eax, [esi+4]
mov	ecx, [edi]
add	esp, 10h
cmp	ecx, [eax]
jz	short loc_1000869D
pop	edi
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	edx, [esi]
mov	eax, [eax+10h]
push	edx
call	eax
mov	eax, [esi+4]
mov	ecx, [eax+1Ch]
push	ecx
mov	ecx, [esi]
lea	edx, [esi+8Ch]
push	edx
mov	edx, [eax+14h]
push	ecx
call	edx
mov	ecx, [edi]
mov	eax, [esi+4]
mov	edx, [esi]
mov	eax, [eax+14h]
push	ecx
push	ebx
push	edx
call	eax
mov	ecx, [esi+4]
mov	edx, [esi]
mov	eax, [ecx+18h]
push	ebp
push	edi
push	ebx
push	edx
call	eax
add	esp, 2Ch
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
retn
align 10h
push	esi
push	edi
push	10Ch
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10008733
mov	edi, [esp+8+arg_0]
mov	dword ptr [esi+8], 1
mov	eax, [edi+4]
mov	[esi+4], eax
mov	ecx, [edi+4]
mov	edx, [edi]
mov	eax, [ecx+8]
push	edx
call	eax
add	esp, 4
mov	[esi], eax
test	eax, eax
jnz	short loc_10008738
push	esi
call	PORT_Free_Util
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
retn
mov	ecx, [edi+4]
mov	edx, [ecx+1Ch]
push	edx		
lea	eax, [edi+0Ch]
push	eax		
lea	ecx, [esi+0Ch]
push	ecx		
call	memcpy
mov	edx, [edi+4]
mov	eax, [edx+1Ch]
push	eax		
add	edi, 8Ch
lea	ecx, [esi+8Ch]
push	edi		
push	ecx		
call	memcpy
add	esp, 18h
pop	edi
mov	eax, esi
pop	esi
retn
align 10h
			
xor	eax, eax
retn
align 10h
			
mov	eax, [esp+arg_8]
mov	dword ptr [eax], 0
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 7
ja	short loc_100087A4
lea	eax, [eax+eax*4]
lea	eax, dword_10039BD8[eax*8]
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
align 10h
push	90h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_100087F9
push	90h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_100087F9
push	esi
call	PORT_Free_Util
add	esp, 4
			
pop	esi
retn
align 10h
			
sub	esp, 10h
movzx	ecx, word ptr [edx+6]
push	ebx
movzx	ebx, word ptr [edx+2]
mov	[esp+14h+var_8], ebx
push	ebp
mov	ebp, ecx
push	esi
movzx	esi, word ptr [edx+4]
not	ebp
and	ebp, ebx
mov	ebx, ecx
and	ebx, esi
add	ebp, ebx
add	bp, [eax]
mov	[esp+1Ch+var_10], esi
add	bp, [edx]
mov	[esp+1Ch+var_C], ecx
rol	bp, 1
movzx	edx, bp
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+2]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+4]
mov	[esp+1Ch+var_8], esi
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+6]
mov	[esp+1Ch+var_10], ecx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+8]
mov	[esp+1Ch+var_C], edx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, edx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+0Ah]
mov	[esp+1Ch+var_4], esi
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
mov	[esp+1Ch+var_8], ecx
add	ebx, edx
add	bx, [eax+0Ch]
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+0Eh]
mov	[esp+1Ch+var_10], edx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+10h]
mov	[esp+1Ch+var_C], esi
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, esi
and	edx, ecx
add	ebx, edx
add	bx, [eax+12h]
mov	[esp+1Ch+var_4], ecx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+14h]
mov	[esp+1Ch+var_8], edx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+16h]
mov	[esp+1Ch+var_10], esi
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+18h]
mov	[esp+1Ch+var_C], ecx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+1Ah]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+1Ch]
mov	[esp+1Ch+var_8], esi
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+1Eh]
mov	[esp+1Ch+var_10], ecx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+20h]
mov	[esp+1Ch+var_C], edx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, edx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+22h]
mov	[esp+1Ch+var_4], esi
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+24h]
mov	[esp+1Ch+var_8], ecx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	[esp+1Ch+var_10], edx
and	edx, ecx
add	ebx, edx
add	bx, [eax+26h]
mov	dx, si
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	bx, word ptr [esp+1Ch+var_8]
mov	[esp+1Ch+var_C], ecx
and	ecx, 3Fh
add	dx, [eax+ecx*2]
mov	word ptr [esp+1Ch+var_4], dx
mov	ecx, [esp+1Ch+var_4]
and	ecx, 3Fh
add	bx, [eax+ecx*2]
mov	word ptr [esp+1Ch+var_8], bx
mov	ecx, [esp+1Ch+var_8]
mov	esi, ecx
and	esi, 3Fh
movzx	esi, word ptr [eax+esi*2]
add	word ptr [esp+1Ch+var_10], si
mov	esi, [esp+1Ch+var_10]
and	esi, 3Fh
movzx	esi, word ptr [eax+esi*2]
add	word ptr [esp+1Ch+var_C], si
mov	esi, [esp+1Ch+var_C]
mov	ebp, esi
not	ebp
and	ebp, ecx
mov	ecx, esi
and	ecx, [esp+1Ch+var_10]
add	ebp, ecx
add	bp, [eax+28h]
add	bp, dx
rol	bp, 1
movzx	ecx, bp
mov	edx, ecx
not	edx
and	edx, [esp+1Ch+var_10]
mov	ebp, esi
and	ebp, ecx
add	edx, ebp
add	dx, [eax+2Ah]
mov	[esp+1Ch+var_4], ecx
add	dx, bx
rol	dx, 2
movzx	edx, dx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+2Ch]
mov	[esp+1Ch+var_8], edx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+2Eh]
mov	[esp+1Ch+var_10], esi
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+30h]
mov	[esp+1Ch+var_C], ecx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+32h]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+34h]
mov	[esp+1Ch+var_8], esi
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	[esp+1Ch+var_10], ecx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+36h]
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+38h]
mov	[esp+1Ch+var_C], edx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, edx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+3Ah]
mov	[esp+1Ch+var_4], esi
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+3Ch]
mov	[esp+1Ch+var_8], ecx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+3Eh]
mov	[esp+1Ch+var_10], edx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+40h]
mov	[esp+1Ch+var_C], esi
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, esi
and	edx, ecx
add	ebx, edx
add	bx, [eax+42h]
mov	[esp+1Ch+var_4], ecx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	[esp+1Ch+var_8], edx
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+44h]
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+46h]
mov	[esp+1Ch+var_10], esi
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+48h]
mov	[esp+1Ch+var_C], ecx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+4Ah]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+4Ch]
mov	[esp+1Ch+var_8], esi
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+4Eh]
mov	[esp+1Ch+var_10], ecx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+50h]
mov	[esp+1Ch+var_C], edx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, edx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+52h]
mov	[esp+1Ch+var_4], esi
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+54h]
mov	[esp+1Ch+var_8], ecx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	edx, bx
mov	[esp+1Ch+var_10], edx
mov	ebx, edx
and	edx, ecx
not	ebx
and	ebx, esi
add	ebx, edx
add	bx, [eax+56h]
mov	dx, si
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	bx, word ptr [esp+1Ch+var_8]
mov	[esp+1Ch+var_C], ecx
and	ecx, 3Fh
add	dx, [eax+ecx*2]
mov	word ptr [esp+1Ch+var_4], dx
mov	ecx, [esp+1Ch+var_4]
and	ecx, 3Fh
add	bx, [eax+ecx*2]
mov	word ptr [esp+1Ch+var_8], bx
mov	ecx, [esp+1Ch+var_8]
mov	esi, ecx
and	esi, 3Fh
movzx	esi, word ptr [eax+esi*2]
add	word ptr [esp+1Ch+var_10], si
mov	esi, [esp+1Ch+var_10]
and	esi, 3Fh
movzx	esi, word ptr [eax+esi*2]
add	word ptr [esp+1Ch+var_C], si
mov	esi, [esp+1Ch+var_C]
mov	ebp, esi
not	ebp
and	ebp, ecx
mov	ecx, esi
and	ecx, [esp+1Ch+var_10]
add	ebp, ecx
add	bp, [eax+58h]
add	bp, dx
rol	bp, 1
movzx	ecx, bp
mov	edx, ecx
not	edx
and	edx, [esp+1Ch+var_10]
mov	ebp, esi
and	ebp, ecx
add	edx, ebp
add	dx, [eax+5Ah]
mov	[esp+1Ch+var_4], ecx
add	dx, bx
rol	dx, 2
movzx	edx, dx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+5Ch]
mov	[esp+1Ch+var_8], edx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
mov	[esp+1Ch+var_10], esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+5Eh]
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+60h]
mov	[esp+1Ch+var_C], ecx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+62h]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+64h]
mov	[esp+1Ch+var_8], esi
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+66h]
mov	[esp+1Ch+var_10], ecx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+68h]
mov	[esp+1Ch+var_C], edx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, edx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+6Ah]
mov	[esp+1Ch+var_4], esi
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+6Ch]
mov	[esp+1Ch+var_8], ecx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+6Eh]
mov	[esp+1Ch+var_10], edx
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+70h]
mov	[esp+1Ch+var_C], esi
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, esi
and	edx, ecx
add	ebx, edx
add	bx, [eax+72h]
mov	[esp+1Ch+var_4], ecx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, edx
and	esi, ecx
add	ebx, esi
add	bx, [eax+74h]
mov	[esp+1Ch+var_8], edx
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	esi, bx
mov	ebx, esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+76h]
mov	[esp+1Ch+var_10], esi
add	bx, word ptr [esp+1Ch+var_C]
rol	bx, 5
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	edx, ecx
and	edx, esi
add	ebx, edx
add	bx, [eax+78h]
mov	[esp+1Ch+var_C], ecx
add	bx, word ptr [esp+1Ch+var_4]
rol	bx, 1
movzx	edx, bx
mov	ebx, edx
not	ebx
and	ebx, esi
mov	esi, ecx
and	esi, edx
add	ebx, esi
add	bx, [eax+7Ah]
mov	[esp+1Ch+var_4], edx
add	bx, word ptr [esp+1Ch+var_8]
rol	bx, 2
movzx	esi, bx
mov	ebx, esi
mov	[esp+1Ch+var_8], esi
not	ebx
and	ebx, ecx
mov	ecx, esi
and	ecx, edx
add	ebx, ecx
add	bx, [eax+7Ch]
add	bx, word ptr [esp+1Ch+var_10]
rol	bx, 3
movzx	ecx, bx
mov	ebx, ecx
not	ebx
and	ebx, edx
mov	[esp+1Ch+var_10], ecx
and	ecx, esi
add	ebx, ecx
add	bx, [eax+7Eh]
movzx	eax, word ptr [esp+1Ch+var_4]
add	bx, word ptr [esp+1Ch+var_C]
mov	cx, si
rol	bx, 5
movzx	edx, bx
mov	[esp+1Ch+var_C], edx
movzx	edx, word ptr [esp+1Ch+var_10]
mov	[edi], ax
movzx	eax, word ptr [esp+1Ch+var_C]
pop	esi
pop	ebp
mov	[edi+2], cx
mov	[edi+4], dx
mov	[edi+6], ax
pop	ebx
add	esp, 10h
retn
align 10h
			
sub	esp, 10h
movzx	ecx, word ptr [edx]
push	ebx
push	ebp
push	esi
movzx	esi, word ptr [edx+2]
push	edi
movzx	edi, word ptr [edx+4]
movzx	edx, word ptr [edx+6]
mov	ebx, edi
mov	[esp+20h+var_10], edi
and	edi, esi
not	ebx
and	ebx, ecx
ror	dx, 5
sub	dx, bx
sub	dx, di
sub	dx, [eax+7Eh]
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
movzx	edx, dx
mov	ebx, esi
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_8], esi
and	esi, ecx
sub	di, si
sub	di, [eax+7Ch]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, esi
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+7Ah]
mov	[esp+20h+var_C], ecx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
mov	ebx, edx
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_4], edx
and	edx, esi
sub	di, dx
sub	di, [eax+78h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_10], esi
and	esi, ecx
sub	di, si
sub	di, [eax+76h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_8], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+74h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_8]
mov	[esp+20h+var_C], edx
mov	[esp+20h+var_4], esi
mov	[esp+20h+var_10], ecx
ror	di, 2
not	ebx
and	ebx, ecx
sub	di, bx
mov	ebx, esi
and	ebx, edx
sub	di, bx
sub	di, [eax+72h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, edx
sub	di, bx
and	esi, ecx
sub	di, si
sub	di, [eax+70h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, esi
sub	di, bx
and	ecx, edx
sub	di, cx
sub	di, [eax+6Eh]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_8], edx
and	edx, esi
sub	di, dx
sub	di, [eax+6Ch]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, edx
sub	di, bx
mov	ebx, ecx
and	ebx, esi
sub	di, bx
sub	di, [eax+6Ah]
mov	[esp+20h+var_C], esi
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
mov	ebx, ecx
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_4], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+68h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_10], edx
and	edx, esi
sub	di, dx
sub	di, [eax+66h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_10]
not	ebx
ror	di, 3
and	ebx, edx
mov	[esp+20h+var_8], esi
mov	[esp+20h+var_C], ecx
mov	[esp+20h+var_4], edx
sub	di, bx
and	esi, ecx
sub	di, si
sub	di, [eax+64h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
not	ebx
and	ebx, esi
ror	di, 2
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+62h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
not	ebx
and	ebx, ecx
and	edx, esi
ror	di, 1
sub	di, bx
sub	di, dx
sub	di, [eax+60h]
movzx	edx, word ptr [esp+20h+var_4]
ror	dx, 5
movzx	edi, di
mov	ebx, esi
not	ebx
and	ebx, edi
sub	dx, bx
mov	[esp+20h+var_10], esi
and	esi, ecx
sub	dx, si
sub	dx, [eax+5Eh]
mov	ebx, ecx
movzx	esi, dx
movzx	edx, word ptr [esp+20h+var_10]
mov	[esp+20h+var_8], ecx
and	ecx, edi
not	ebx
and	ebx, esi
ror	dx, 3
sub	dx, bx
sub	dx, cx
sub	dx, [eax+5Ch]
movzx	ecx, word ptr [esp+20h+var_8]
ror	cx, 2
movzx	edx, dx
mov	ebx, edi
not	ebx
and	ebx, edx
sub	cx, bx
mov	ebx, esi
and	ebx, edi
sub	cx, bx
sub	cx, [eax+5Ah]
mov	[esp+20h+var_C], edi
movzx	edi, cx
movzx	ecx, word ptr [esp+20h+var_C]
ror	cx, 1
mov	ebx, esi
not	ebx
and	ebx, edi
sub	cx, bx
mov	[esp+20h+var_4], esi
and	esi, edx
sub	cx, si
sub	cx, [eax+58h]
mov	[esp+20h+var_10], edx
movzx	ebx, cx
mov	cx, word ptr [esp+20h+var_4]
and	edx, 3Fh
sub	cx, [eax+edx*2]
mov	dx, word ptr [esp+20h+var_10]
mov	[esp+20h+var_8], edi
and	edi, 3Fh
sub	dx, [eax+edi*2]
mov	[esp+20h+var_C], ebx
mov	word ptr [esp+20h+var_4], cx
mov	word ptr [esp+20h+var_10], dx
mov	si, word ptr [esp+20h+var_8]
mov	di, word ptr [esp+20h+var_C]
and	ebx, 3Fh
sub	si, [eax+ebx*2]
mov	ebx, [esp+20h+var_4]
and	ebx, 3Fh
sub	di, [eax+ebx*2]
mov	ebx, [esp+20h+var_10]
mov	ebp, [esp+20h+var_10]
mov	word ptr [esp+20h+var_C], di
not	ebx
and	ebx, [esp+20h+var_C]
ror	cx, 5
sub	cx, bx
mov	word ptr [esp+20h+var_8], si
mov	ebx, [esp+20h+var_8]
and	ebp, ebx
sub	cx, bp
sub	cx, [eax+56h]
mov	ebp, ebx
ror	dx, 3
movzx	ecx, cx
not	ebp
and	ebp, ecx
sub	dx, bp
mov	ebp, ebx
mov	ebx, [esp+20h+var_C]
and	ebp, ebx
sub	dx, bp
sub	dx, [eax+54h]
mov	ebp, ebx
ror	si, 2
movzx	edx, dx
not	ebp
and	ebp, edx
sub	si, bp
mov	ebp, ecx
and	ebp, ebx
sub	si, bp
sub	si, [eax+52h]
ror	di, 1
movzx	esi, si
mov	ebx, ecx
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_4], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+50h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_10], edx
and	edx, esi
sub	di, dx
sub	di, [eax+4Eh]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_8], esi
and	esi, ecx
sub	di, si
sub	di, [eax+4Ch]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
not	ebx
ror	di, 2
mov	[esp+20h+var_C], ecx
mov	[esp+20h+var_4], edx
mov	[esp+20h+var_10], esi
and	ebx, esi
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+4Ah]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, ecx
sub	di, bx
and	edx, esi
sub	di, dx
sub	di, [eax+48h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, edx
sub	di, bx
and	esi, ecx
sub	di, si
sub	di, [eax+46h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_8], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+44h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, ecx
sub	di, bx
mov	ebx, esi
and	ebx, edx
sub	di, bx
sub	di, [eax+42h]
mov	[esp+20h+var_C], edx
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
mov	ebx, esi
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_4], esi
and	esi, ecx
sub	di, si
sub	di, [eax+40h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_10], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+3Eh]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_10]
not	ebx
ror	di, 3
and	ebx, ecx
mov	[esp+20h+var_8], edx
sub	di, bx
mov	[esp+20h+var_C], esi
mov	[esp+20h+var_4], ecx
and	edx, esi
sub	di, dx
sub	di, [eax+3Ch]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, edx
sub	di, bx
mov	ebx, ecx
and	ebx, esi
sub	di, bx
sub	di, [eax+3Ah]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, esi
sub	di, bx
and	ecx, edx
sub	di, cx
sub	di, [eax+38h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_10], edx
and	edx, esi
sub	di, dx
sub	di, [eax+36h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_8], esi
and	esi, ecx
sub	di, si
sub	di, [eax+34h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, esi
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+32h]
mov	ebx, edx
mov	[esp+20h+var_C], ecx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_4], edx
and	edx, esi
sub	di, dx
sub	di, [eax+30h]
movzx	edx, word ptr [esp+20h+var_4]
movzx	edi, di
mov	ebx, esi
ror	dx, 5
not	ebx
and	ebx, edi
mov	[esp+20h+var_10], esi
sub	dx, bx
and	esi, ecx
sub	dx, si
sub	dx, [eax+2Eh]
mov	[esp+20h+var_8], ecx
mov	[esp+20h+var_C], edi
movzx	esi, dx
movzx	edx, word ptr [esp+20h+var_10]
mov	ebx, ecx
and	ecx, edi
not	ebx
and	ebx, esi
ror	dx, 3
sub	dx, bx
sub	dx, cx
sub	dx, [eax+2Ch]
movzx	ecx, word ptr [esp+20h+var_8]
ror	cx, 2
movzx	edx, dx
mov	ebx, edi
not	ebx
and	ebx, edx
sub	cx, bx
mov	ebx, esi
and	ebx, edi
sub	cx, bx
sub	cx, [eax+2Ah]
mov	ebx, esi
movzx	edi, cx
movzx	ecx, word ptr [esp+20h+var_C]
ror	cx, 1
not	ebx
and	ebx, edi
sub	cx, bx
mov	[esp+20h+var_4], esi
and	esi, edx
sub	cx, si
sub	cx, [eax+28h]
mov	[esp+20h+var_10], edx
and	edx, 3Fh
movzx	ebx, cx
mov	cx, word ptr [esp+20h+var_4]
sub	cx, [eax+edx*2]
mov	dx, word ptr [esp+20h+var_10]
mov	[esp+20h+var_C], ebx
and	ebx, 3Fh
mov	[esp+20h+var_8], edi
mov	si, word ptr [esp+20h+var_8]
sub	si, [eax+ebx*2]
mov	word ptr [esp+20h+var_4], cx
mov	ebx, [esp+20h+var_4]
and	edi, 3Fh
sub	dx, [eax+edi*2]
mov	di, word ptr [esp+20h+var_C]
and	ebx, 3Fh
sub	di, [eax+ebx*2]
mov	word ptr [esp+20h+var_10], dx
mov	ebx, [esp+20h+var_10]
mov	ebp, [esp+20h+var_10]
ror	cx, 5
not	ebx
mov	word ptr [esp+20h+var_C], di
and	ebx, [esp+20h+var_C]
mov	word ptr [esp+20h+var_8], si
sub	cx, bx
mov	ebx, [esp+20h+var_8]
and	ebp, ebx
sub	cx, bp
sub	cx, [eax+26h]
ror	dx, 3
movzx	ecx, cx
mov	ebp, ebx
not	ebp
and	ebp, ecx
sub	dx, bp
mov	ebp, ebx
mov	ebx, [esp+20h+var_C]
and	ebp, ebx
sub	dx, bp
sub	dx, [eax+24h]
mov	ebp, ebx
movzx	edx, dx
not	ebp
ror	si, 2
mov	[esp+20h+var_4], ecx
mov	[esp+20h+var_10], edx
and	ebp, edx
sub	si, bp
mov	ebp, ecx
and	ebp, ebx
sub	si, bp
sub	si, [eax+22h]
ror	di, 1
movzx	esi, si
mov	ebx, ecx
not	ebx
and	ebx, esi
sub	di, bx
and	ecx, edx
sub	di, cx
sub	di, [eax+20h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, ecx
sub	di, bx
and	edx, esi
sub	di, dx
sub	di, [eax+1Eh]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_8], esi
and	esi, ecx
sub	di, si
sub	di, [eax+1Ch]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, esi
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+1Ah]
mov	[esp+20h+var_C], ecx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
mov	ebx, edx
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_4], edx
and	edx, esi
sub	di, dx
sub	di, [eax+18h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, edx
sub	di, bx
mov	[esp+20h+var_10], esi
and	esi, ecx
sub	di, si
sub	di, [eax+16h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_10]
not	ebx
ror	di, 3
and	ebx, esi
mov	[esp+20h+var_8], ecx
sub	di, bx
and	ecx, edx
mov	[esp+20h+var_C], edx
mov	[esp+20h+var_4], esi
sub	di, cx
sub	di, [eax+14h]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, ecx
sub	di, bx
mov	ebx, esi
and	ebx, edx
sub	di, bx
sub	di, [eax+12h]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, edx
sub	di, bx
and	esi, ecx
sub	di, si
sub	di, [eax+10h]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_10], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+0Eh]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
not	ebx
and	ebx, ecx
sub	di, bx
mov	[esp+20h+var_8], edx
and	edx, esi
sub	di, dx
sub	di, [eax+0Ch]
mov	ebx, esi
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, edx
sub	di, bx
mov	ebx, ecx
and	ebx, esi
sub	di, bx
sub	di, [eax+0Ah]
mov	[esp+20h+var_C], esi
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
mov	ebx, ecx
not	ebx
and	ebx, esi
sub	di, bx
mov	[esp+20h+var_4], ecx
and	ecx, edx
sub	di, cx
sub	di, [eax+8]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_4]
ror	di, 5
not	ebx
and	ebx, ecx
mov	[esp+20h+var_10], edx
and	edx, esi
sub	di, bx
sub	di, dx
sub	di, [eax+6]
mov	[esp+20h+var_8], esi
mov	[esp+20h+var_C], ecx
movzx	edx, di
movzx	edi, word ptr [esp+20h+var_10]
ror	di, 3
mov	ebx, esi
not	ebx
and	ebx, edx
sub	di, bx
and	esi, ecx
sub	di, si
sub	di, [eax+4]
mov	ebx, ecx
movzx	esi, di
movzx	edi, word ptr [esp+20h+var_8]
ror	di, 2
not	ebx
and	ebx, esi
sub	di, bx
mov	ebx, edx
and	ebx, ecx
sub	di, bx
sub	di, [eax+2]
mov	ebx, edx
movzx	ecx, di
movzx	edi, word ptr [esp+20h+var_C]
ror	di, 1
not	ebx
and	ebx, ecx
mov	[esp+20h+var_4], edx
and	edx, esi
sub	di, bx
sub	di, dx
sub	di, [eax]
mov	eax, [esp+20h+arg_0]
movzx	edx, cx
mov	[eax], di
pop	edi
mov	[esp+1Ch+var_8], ecx
movzx	ecx, si
mov	[esp+1Ch+var_10], esi
mov	[eax+2], dx
movzx	edx, word ptr [esp+1Ch+var_4]
pop	esi
pop	ebp
mov	[eax+4], cx
mov	[eax+6], dx
pop	ebx
add	esp, 10h
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
mov	edx, [ebp+arg_C]
sub	esp, 14h
push	ebx
push	esi
push	edi
test	edx, edx
jz	loc_10009ACB
mov	eax, [ebp+arg_8]
mov	ecx, [ebp+arg_4]
lea	ebx, [eax+4]
sub	eax, ecx
add	eax, 0FFFFFFFCh
mov	[esp+20h+var_C], eax
lea	eax, [edx-1]
shr	eax, 3
inc	eax
lea	esi, [ecx+4]
mov	[esp+20h+var_10], eax
mov	eax, [esp+20h+var_C]
movzx	ecx, word ptr [eax+esi]
movzx	edx, word ptr [ebx-2]
movzx	eax, word ptr [ebx]
mov	[esp+20h+var_8], cx
movzx	ecx, word ptr [ebx+2]
mov	[esp+20h+var_6], dx
lea	edx, [esp+20h+var_8]
mov	[esp+20h+var_4], ax
mov	eax, [ebp+arg_0]
mov	edi, edx
mov	[esp+20h+var_2], cx
call	sub_10008800
movzx	edx, [esp+20h+var_8]
movzx	eax, [esp+20h+var_6]
movzx	ecx, [esp+20h+var_4]
mov	[esi-4], dx
movzx	edx, [esp+20h+var_2]
mov	[esi-2], ax
mov	[esi], cx
mov	[esi+2], dx
add	ebx, 8
add	esi, 8
dec	[esp+20h+var_10]
jnz	short loc_10009A67
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 0Ch
push	ebx
mov	ebx, [ebp+arg_C]
push	esi
push	edi
test	ebx, ebx
jz	short loc_10009B70
mov	eax, [ebp+arg_8]
mov	ecx, [ebp+arg_4]
lea	edi, [eax+4]
sub	eax, ecx
dec	ebx
add	eax, 0FFFFFFFCh
shr	ebx, 3
lea	esi, [ecx+4]
mov	[esp+18h+var_C], eax
inc	ebx
mov	eax, [esp+18h+var_C]
movzx	ecx, word ptr [eax+esi]
movzx	edx, word ptr [edi-2]
movzx	eax, word ptr [edi]
mov	[esp+18h+var_8], cx
movzx	ecx, word ptr [edi+2]
mov	[esp+18h+var_6], dx
lea	edx, [esp+18h+var_8]
mov	[esp+18h+var_4], ax
mov	eax, [ebp+arg_0]
push	edx
mov	[esp+1Ch+var_2], cx
call	sub_100090D0
movzx	eax, [esp+1Ch+var_8]
movzx	ecx, [esp+1Ch+var_6]
movzx	edx, [esp+1Ch+var_4]
mov	[esi-4], ax
movzx	eax, [esp+1Ch+var_2]
mov	[esi-2], cx
mov	[esi], dx
mov	[esi+2], ax
add	esp, 4
add	edi, 8
add	esi, 8
dec	ebx
jnz	short loc_10009B0D
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 14h
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_C]
test	edi, edi
jz	loc_10009C51
mov	ecx, [ebp+arg_8]
mov	edx, [ebp+arg_4]
mov	ebx, [ebp+arg_0]
lea	eax, [ecx+4]
sub	ecx, edx
add	ecx, 0FFFFFFFCh
mov	[esp+20h+var_C], ecx
lea	ecx, [edi-1]
shr	ecx, 3
inc	ecx
mov	[esp+20h+var_14], eax
lea	esi, [edx+4]
mov	[esp+20h+var_10], ecx
jmp	short loc_10009BC4
mov	eax, [esp+20h+var_14]
mov	ecx, [esp+20h+var_C]
movzx	edx, word ptr [ecx+esi]
movzx	ecx, word ptr [eax-2]
mov	word ptr [esp+20h+var_8], dx
movzx	edx, word ptr [eax]
movzx	eax, word ptr [eax+2]
mov	word ptr [esp+20h+var_4], dx
mov	edx, [ebx+84h]
mov	word ptr [esp+20h+var_4+2], ax
xor	[esp+20h+var_4], edx
mov	word ptr [esp+20h+var_8+2], cx
mov	ecx, [ebx+80h]
xor	[esp+20h+var_8], ecx
lea	edx, [esp+20h+var_8]
mov	edi, edx
mov	eax, ebx
call	sub_10008800
mov	eax, [esp+20h+var_8]
mov	ecx, [esp+20h+var_4]
add	[esp+20h+var_14], 8
movzx	edx, ax
mov	[ebx+80h], eax
movzx	eax, word ptr [esp+20h+var_8+2]
mov	[ebx+84h], ecx
mov	[esi-4], dx
movzx	edx, word ptr [esp+20h+var_4+2]
movzx	ecx, cx
mov	[esi-2], ax
mov	[esi], cx
mov	[esi+2], dx
add	esi, 8
dec	[esp+20h+var_10]
jnz	loc_10009BC0
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
mov	edx, [ebp+arg_C]
sub	esp, 1Ch
push	ebx
push	esi
push	edi
test	edx, edx
jz	loc_10009D29
mov	eax, [ebp+arg_8]
mov	ecx, [ebp+arg_4]
mov	edi, [ebp+arg_0]
lea	ebx, [eax+4]
sub	eax, ecx
add	eax, 0FFFFFFFCh
mov	[esp+28h+var_14], eax
lea	eax, [edx-1]
shr	eax, 3
inc	eax
lea	esi, [ecx+4]
mov	[esp+28h+var_18], eax
mov	eax, [esp+28h+var_14]
movzx	ecx, word ptr [eax+esi]
mov	dx, [ebx-2]
mov	ax, [ebx]
mov	word ptr [esp+28h+var_10+2], dx
mov	word ptr [esp+28h+var_10], cx
movzx	ecx, word ptr [ebx+2]
lea	edx, [esp+28h+var_8]
mov	word ptr [esp+28h+var_C], ax
push	edx
lea	edx, [esp+2Ch+var_10]
mov	eax, edi
mov	word ptr [esp+2Ch+var_C+2], cx
call	sub_100090D0
mov	eax, [esp+2Ch+var_8]
xor	eax, [edi+80h]
mov	edx, [esp+2Ch+var_10]
mov	ecx, [esp+2Ch+var_4]
xor	ecx, [edi+84h]
mov	[edi+80h], edx
mov	edx, [esp+2Ch+var_C]
mov	[edi+84h], edx
mov	[esi-4], ax
mov	[esi], cx
mov	[esp+2Ch+var_8], eax
mov	[esp+2Ch+var_4], ecx
shr	eax, 10h
shr	ecx, 10h
mov	[esi-2], ax
mov	[esi+2], cx
add	esp, 4
add	ebx, 8
add	esi, 8
dec	[esp+28h+var_18]
jnz	loc_10009C9A
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_14]
xor	eax, eax
test	ebx, ebx
jz	short loc_10009D99
test	bl, 7
jz	short loc_10009D62
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
cmp	[esp+4+arg_C], ebx
jnb	short loc_10009D7A
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esp+4+arg_10]
mov	ecx, [esp+4+arg_4]
push	ebx
push	eax
mov	eax, [esp+0Ch+arg_0]
mov	edx, [eax+88h]
push	ecx
push	eax
call	edx
add	esp, 10h
test	eax, eax
jnz	short loc_10009D9F
mov	ecx, [esp+4+arg_8]
mov	[ecx], ebx
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_14]
xor	eax, eax
test	ebx, ebx
jz	short loc_10009E09
test	bl, 7
jz	short loc_10009DD2
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
cmp	[esp+4+arg_C], ebx
jnb	short loc_10009DEA
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esp+4+arg_10]
mov	ecx, [esp+4+arg_4]
push	ebx
push	eax
mov	eax, [esp+0Ch+arg_0]
mov	edx, [eax+8Ch]
push	ecx
push	eax
call	edx
add	esp, 10h
test	eax, eax
jnz	short loc_10009E0F
mov	ecx, [esp+4+arg_8]
mov	[ecx], ebx
pop	ebx
retn
align 10h
			
mov	ecx, [esp+Src]
push	ebx
push	ebp
push	esi
test	ecx, ecx
jz	loc_10009F4D
mov	esi, [esp+0Ch+Dst]
test	esi, esi
jz	loc_10009F4D
mov	ebp, [esp+0Ch+Size]
test	ebp, ebp
jz	loc_10009F4D
cmp	ebp, 80h
ja	loc_10009F4D
mov	ebx, [esp+0Ch+arg_14]
cmp	ebx, 80h
ja	loc_10009F4D
mov	eax, [esp+0Ch+arg_10]
test	eax, eax
jz	short loc_10009EC1
cmp	eax, 1
jnz	loc_10009F4D
mov	eax, [esp+0Ch+arg_C]
test	eax, eax
jz	loc_10009F4D
mov	dword ptr [esi+88h], offset sub_10009B80
mov	dword ptr [esi+8Ch], offset sub_10009C60
movzx	edx, word ptr [eax]
mov	[esi+80h], dx
movzx	edx, word ptr [eax+2]
mov	[esi+82h], dx
movzx	edx, word ptr [eax+4]
mov	[esi+84h], dx
mov	ax, [eax+6]
mov	[esi+86h], ax
jmp	short loc_10009ED5
mov	dword ptr [esi+88h], offset sub_10009A30
mov	dword ptr [esi+8Ch], offset sub_10009AE0
push	edi
push	ebp		
push	ecx		
push	esi		
call	memcpy
mov	cl, [esi+ebp-1]
mov	eax, 80h
sub	eax, ebp
add	esp, 0Ch
mov	edi, esi
test	eax, eax
jle	short loc_10009F08
mov	dl, [edi]
add	dl, cl
movzx	ecx, dl
mov	cl, ds:byte_10039D18[ecx]
mov	[edi+ebp], cl
dec	eax
inc	edi
test	eax, eax
jg	short loc_10009EF2
mov	eax, esi
sub	eax, ebx
movzx	edx, byte ptr [eax+80h]
mov	cl, ds:byte_10039D18[edx]
mov	[eax+80h], cl
sub	eax, 0FFFFFF81h
lea	edx, [eax+ebx]
cmp	eax, esi
jb	short loc_10009F46
lea	esp, [esp+0]
movzx	edi, byte ptr [edx]
movzx	ecx, cl
xor	ecx, edi
mov	cl, ds:byte_10039D18[ecx]
mov	[eax], cl
dec	eax
dec	edx
cmp	eax, esi
jnb	short loc_10009F30
pop	edi
pop	esi
pop	ebp
xor	eax, eax
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
push	esi
push	90h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_10009FC8
mov	eax, [esp+4+arg_10]
mov	ecx, [esp+4+arg_C]
mov	edx, [esp+4+arg_8]
push	0
push	eax		
mov	eax, [esp+0Ch+Size]
push	ecx		
mov	ecx, [esp+10h+Src]
push	edx		
push	eax		
push	ecx		
push	esi		
call	sub_10009E20
add	esp, 1Ch
test	eax, eax
jz	short loc_10009FC6
push	90h		
push	0		
push	esi		
call	memset
push	esi
call	PORT_Free_Util
add	esp, 10h
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
push	102h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
			
sub	esp, 114h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+114h+var_4], eax
mov	eax, [esp+114h+arg_4]
push	ebx
mov	ebx, [esp+118h+Size]
push	ebp
mov	ebp, [esp+11Ch+arg_0]
mov	[esp+11Ch+Src],	eax
test	ebx, ebx
jz	loc_1000A13D
cmp	ebx, 100h
jnb	loc_1000A13D
test	ebp, ebp
jnz	short loc_1000A031
push	0FFFFE005h
jmp	loc_1000A142
push	esi
push	edi
mov	ecx, 40h
mov	esi, offset dword_10039E18
mov	edi, ebp
rep movsd
mov	edi, 100h
lea	esi, [esp+124h+Dst]
cmp	ebx, edi
jnb	short loc_1000A067
mov	edi, edi
mov	ecx, [esp+124h+Src]
push	ebx		
push	ecx		
push	esi		
call	memcpy
sub	edi, ebx
add	esp, 0Ch
add	esi, ebx
cmp	edi, ebx
ja	short loc_1000A050
mov	edx, [esp+124h+Src]
push	edi		
push	edx		
push	esi		
call	memcpy
lea	edx, [esp+130h+var_103]
sub	edx, ebp
mov	[esp+130h+var_108], edx
lea	edx, [esp+130h+var_102]
sub	edx, ebp
mov	[esp+130h+var_110], edx
lea	edi, [esp+130h+Dst]
lea	edx, [esp+130h+var_101]
add	esp, 0Ch
xor	cl, cl
sub	edi, ebp
sub	edx, ebp
mov	eax, ebp
mov	[esp+124h+var_10C], edx
mov	[esp+124h+Src],	40h
mov	dl, [eax]
movzx	ebx, byte ptr [edi+eax]
add	bl, dl
add	cl, bl
movzx	esi, cl
movzx	ebx, byte ptr [esi+ebp]
mov	[eax], bl
mov	[esi+ebp], dl
mov	dl, [eax+1]
mov	esi, [esp+124h+var_108]
movzx	ebx, byte ptr [esi+eax]
add	bl, dl
add	cl, bl
movzx	esi, cl
movzx	ebx, byte ptr [esi+ebp]
mov	[eax+1], bl
mov	[esi+ebp], dl
mov	dl, [eax+2]
mov	esi, [esp+124h+var_110]
movzx	ebx, byte ptr [esi+eax]
add	bl, dl
add	cl, bl
movzx	esi, cl
movzx	ebx, byte ptr [esi+ebp]
mov	[eax+2], bl
mov	[esi+ebp], dl
mov	esi, [esp+124h+var_10C]
movzx	ebx, byte ptr [esi+eax]
mov	dl, [eax+3]
add	bl, dl
add	cl, bl
movzx	esi, cl
movzx	ebx, byte ptr [esi+ebp]
mov	[eax+3], bl
add	eax, 4
dec	[esp+124h+Src]
mov	[esi+ebp], dl
jnz	short loc_1000A0A6
pop	edi
pop	esi
mov	word ptr [ebp+100h], 0
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+114h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 114h
retn
			
push	0FFFFE00Eh
call	PORT_SetError_Util
mov	ecx, [esp+120h+var_4]
add	esp, 4
pop	ebp
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 114h
retn
align 10h
push	esi
push	102h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000A1B7
mov	eax, [esp+4+Size]
mov	ecx, [esp+4+arg_0]
push	0
push	0
push	0
push	0
push	eax		
push	ecx		
push	esi		
call	sub_10009FE0
add	esp, 1Ch
test	eax, eax
jz	short loc_1000A1B5
push	102h
push	esi
call	PORT_ZFree_Util
add	esp, 8
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
cmp	[esp+arg_4], 0
jz	short locret_1000A1D4
mov	[esp+arg_4], 102h
jmp	PORT_ZFree_Util
retn
align 10h
sub	esp, 8
push	ebx
mov	bl, [edx+100h]
push	esi
mov	esi, eax
mov	al, [edx+101h]
mov	[esp+10h+var_5], al
mov	eax, [esp+10h+arg_C]
cmp	[esp+10h+arg_4], eax
jnb	short loc_1000A217
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
test	eax, eax
jz	short loc_1000A270
mov	ecx, [esp+10h+arg_8]
sub	ecx, esi
push	ebp
mov	[esp+14h+var_4], ecx
mov	[esp+14h+arg_4], eax
push	edi
jmp	short loc_1000A230
align 10h
			
mov	al, [esp+18h+var_5]
inc	bl
movzx	edi, bl
mov	cl, [edi+edx]
add	al, cl
movzx	ebp, al
mov	[esp+18h+var_5], al
mov	al, [ebp+edx+0]
mov	[edi+edx], al
add	al, cl
mov	[ebp+edx+0], cl
movzx	ecx, al
movzx	eax, byte ptr [ecx+edx]
mov	ecx, [esp+18h+var_4]
xor	al, [ecx+esi]
inc	esi
dec	[esp+18h+arg_4]
mov	[esi-1], al
jnz	short loc_1000A230
mov	eax, [esp+18h+arg_C]
pop	edi
pop	ebp
mov	ecx, [esp+10h+arg_0]
mov	[ecx], eax
mov	al, [esp+10h+var_5]
pop	esi
mov	[edx+100h], bl
mov	[edx+101h], al
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
sub	esp, 24h
mov	ecx, [esp+24h+arg_C]
mov	al, [edx+101h]
push	ebx
mov	bl, [edx+100h]
push	ebp
mov	ebp, [esp+2Ch+arg_8]
push	esi
mov	esi, [esp+30h+arg_0]
push	edi
mov	edi, [esp+34h+arg_10]
and	ecx, 3
and	esi, 3
mov	[esp+34h+var_8], ecx
mov	[esp+34h+var_C], esi
cmp	ebp, edi
jnb	short loc_1000A2DD
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 24h
retn
cmp	edi, 8
jnb	short loc_1000A302
mov	eax, [esp+34h+arg_C]
mov	ecx, [esp+34h+arg_4]
push	edi
push	eax
mov	eax, [esp+3Ch+arg_0]
push	ebp
push	ecx
call	sub_1000A1E0
add	esp, 10h
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
mov	ebp, [esp+34h+arg_4]
mov	[ebp+0], edi
mov	edi, [esp+34h+arg_C]
mov	ebp, [esp+34h+arg_0]
sub	ebp, esi
sub	edi, ecx
mov	[esp+34h+var_1C], ebp
cmp	ecx, esi
ja	short loc_1000A32E
sub	esi, ecx
add	esi, esi
add	esi, esi
add	esi, esi
mov	ecx, 20h
sub	ecx, esi
jmp	short loc_1000A33D
sub	ecx, esi
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
mov	esi, 20h
sub	esi, ecx
mov	[esp+34h+var_14], esi
mov	esi, [esp+34h+var_C]
mov	[esp+34h+var_10], ecx
xor	ecx, ecx
cmp	esi, ecx
jz	loc_1000A468
mov	ecx, 4
sub	ecx, esi
mov	[esp+34h+var_18], ecx
jz	short loc_1000A3D5
mov	esi, [esp+34h+arg_0]
mov	ecx, [esp+34h+arg_C]
sub	ecx, esi
mov	[esp+34h+var_4], ecx
mov	ecx, [esp+34h+var_18]
mov	[esp+34h+var_1C], esi
mov	[esp+34h+var_20], ecx
lea	ebx, [ebx+0]
inc	bl
movzx	esi, bl
movzx	ecx, byte ptr [esi+edx]
add	al, cl
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[esi+edx], al
mov	esi, [esp+34h+var_24]
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
movzx	eax, al
mov	[esi], cl
movzx	ecx, byte ptr [eax+edx]
mov	esi, [esp+34h+var_1C]
mov	eax, [esp+34h+var_4]
xor	cl, [eax+esi]
mov	al, byte ptr [esp+34h+arg_8]
mov	[esi], cl
inc	esi
dec	[esp+34h+var_20]
mov	[esp+34h+var_1C], esi
jnz	short loc_1000A380
mov	ecx, [esp+34h+var_18]
sub	[esp+34h+arg_10], ecx
mov	ecx, [esp+34h+var_8]
mov	esi, [esp+34h+var_C]
add	ebp, 4
add	edi, 4
mov	[esp+34h+var_1C], ebp
cmp	ecx, esi
jnb	short loc_1000A44B
sub	esi, ecx
mov	[esp+34h+arg_8], 0
mov	[esp+34h+var_20], 0
mov	[esp+34h+arg_0], 0
mov	[esp+34h+var_4], esi
jz	loc_1000A4B9
mov	ecx, [esp+34h+var_18]
add	ecx, [esp+34h+arg_C]
mov	[esp+34h+arg_C], ecx
mov	ecx, [esp+34h+arg_0]
mov	esi, [esp+34h+arg_C]
movzx	esi, byte ptr [esi+ecx]
mov	ecx, [esp+34h+arg_8]
add	[esp+34h+arg_8], 8
shl	esi, cl
mov	ecx, [esp+34h+arg_0]
inc	ecx
mov	[esp+34h+arg_0], ecx
or	[esp+34h+var_20], esi
cmp	ecx, [esp+34h+var_4]
jb	short loc_1000A423
jmp	short loc_1000A4B9
jbe	short loc_1000A45E
mov	esi, [edi]
mov	ecx, [esp+34h+var_10]
add	edi, 4
shr	esi, cl
mov	[esp+34h+var_20], esi
jmp	short loc_1000A4B9
mov	[esp+34h+var_20], 0
jmp	short loc_1000A4B9
mov	esi, [esp+34h+var_8]
mov	[esp+34h+var_20], ecx
cmp	esi, ecx
jz	short loc_1000A4B9
mov	[esp+34h+arg_8], ecx
mov	[esp+34h+arg_0], ecx
mov	ecx, 4
sub	ecx, esi
mov	[esp+34h+var_4], ecx
jz	short loc_1000A4B6
mov	ecx, [esp+34h+arg_0]
lea	ecx, [ecx+0]
mov	esi, [esp+34h+arg_C]
movzx	esi, byte ptr [ecx+esi]
mov	ecx, [esp+34h+arg_8]
add	[esp+34h+arg_8], 8
shl	esi, cl
mov	ecx, [esp+34h+arg_0]
inc	ecx
mov	[esp+34h+arg_0], ecx
or	[esp+34h+var_20], esi
cmp	ecx, [esp+34h+var_4]
jb	short loc_1000A490
add	edi, 4
			
mov	ecx, [esp+34h+var_14]
test	ecx, ecx
jz	loc_1000A698
shr	ecx, 3
lea	esi, [ecx+4]
mov	[esp+34h+var_4], ecx
mov	ecx, [esp+34h+arg_10]
cmp	ecx, esi
jb	loc_1000A627
sub	ecx, esi
shr	ecx, 2
inc	ecx
mov	[esp+34h+arg_C], ecx
mov	esi, [edi]
add	edi, 4
mov	[esp+34h+var_8], edi
inc	bl
movzx	edi, bl
movzx	ecx, byte ptr [edi+edx]
add	al, cl
movzx	ebp, al
mov	byte ptr [esp+34h+arg_8], al
mov	al, [ebp+edx+0]
mov	[edi+edx], al
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
mov	[ebp+edx+0], cl
movzx	eax, al
movzx	edi, byte ptr [eax+edx]
inc	bl
movzx	ebp, bl
movzx	eax, byte ptr [ebp+edx+0]
mov	byte ptr [esp+34h+arg_0], al
mov	al, byte ptr [esp+34h+arg_8]
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, byte ptr [esp+34h+arg_0]
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
add	al, byte ptr [esp+34h+arg_0]
mov	ebp, [esp+34h+var_24]
movzx	eax, al
mov	[ebp+0], cl
movzx	ecx, byte ptr [eax+edx]
mov	al, byte ptr [esp+34h+arg_8]
shl	ecx, 8
or	edi, ecx
inc	bl
movzx	ebp, bl
movzx	ecx, byte ptr [ebp+edx+0]
add	al, cl
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
mov	ebp, [esp+34h+var_24]
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
movzx	eax, al
mov	[ebp+0], cl
movzx	ecx, byte ptr [eax+edx]
mov	al, byte ptr [esp+34h+arg_8]
shl	ecx, 10h
or	edi, ecx
inc	bl
movzx	ebp, bl
movzx	ecx, byte ptr [ebp+edx+0]
add	al, cl
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
mov	ebp, [esp+34h+var_24]
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
movzx	eax, al
mov	[ebp+0], cl
movzx	eax, byte ptr [eax+edx]
mov	ecx, [esp+34h+var_14]
shl	eax, 18h
or	eax, edi
mov	edi, esi
shl	edi, cl
or	edi, [esp+34h+var_20]
mov	ecx, [esp+34h+var_10]
mov	ebp, [esp+34h+var_1C]
xor	eax, edi
mov	edi, [esp+34h+var_8]
shr	esi, cl
mov	ecx, [esp+34h+arg_10]
mov	[ebp+0], eax
mov	al, byte ptr [esp+34h+arg_8]
add	ebp, 4
sub	ecx, 4
dec	[esp+34h+arg_C]
mov	[esp+34h+var_1C], ebp
mov	[esp+34h+var_20], esi
mov	[esp+34h+arg_10], ecx
jnz	loc_1000A4E5
test	ecx, ecx
jz	short loc_1000A682
sub	edi, [esp+34h+var_4]
test	ecx, ecx
jz	short loc_1000A682
mov	esi, edi
sub	esi, ebp
mov	[esp+34h+arg_C], esi
mov	[esp+34h+arg_10], ecx
nop
inc	bl
movzx	esi, bl
movzx	ecx, byte ptr [esi+edx]
add	al, cl
movzx	edi, al
mov	byte ptr [esp+34h+arg_8], al
mov	al, [edi+edx]
mov	[esi+edx], al
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
movzx	eax, al
mov	[edi+edx], cl
movzx	ecx, byte ptr [eax+edx]
mov	eax, [esp+34h+arg_C]
xor	cl, [eax+ebp]
mov	al, byte ptr [esp+34h+arg_8]
mov	[ebp+0], cl
inc	ebp
dec	[esp+34h+arg_10]
jnz	short loc_1000A640
			
pop	edi
pop	esi
pop	ebp
mov	[edx+101h], al
mov	[edx+100h], bl
xor	eax, eax
pop	ebx
add	esp, 24h
retn
mov	ecx, [esp+34h+arg_10]
cmp	ecx, 4
jb	loc_1000A7DA
shr	ecx, 2
mov	[esp+34h+arg_C], ecx
lea	esp, [esp+0]
mov	ecx, [edi]
mov	[esp+34h+var_20], ecx
inc	bl
movzx	esi, bl
movzx	ecx, byte ptr [esi+edx]
add	al, cl
movzx	ebp, al
mov	byte ptr [esp+34h+arg_8], al
mov	al, [ebp+edx+0]
mov	[esi+edx], al
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
mov	[ebp+edx+0], cl
movzx	eax, al
movzx	esi, byte ptr [eax+edx]
inc	bl
movzx	ebp, bl
movzx	eax, byte ptr [ebp+edx+0]
mov	byte ptr [esp+34h+arg_0], al
mov	al, byte ptr [esp+34h+arg_8]
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, byte ptr [esp+34h+arg_0]
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
add	al, byte ptr [esp+34h+arg_0]
mov	ebp, [esp+34h+var_24]
mov	[ebp+0], cl
movzx	eax, al
movzx	ecx, byte ptr [eax+edx]
mov	al, byte ptr [esp+34h+arg_8]
shl	ecx, 8
or	esi, ecx
inc	bl
movzx	ebp, bl
movzx	ecx, byte ptr [ebp+edx+0]
add	al, cl
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
mov	ebp, [esp+34h+var_24]
mov	byte ptr [esp+34h+arg_0], cl
add	al, byte ptr [esp+34h+arg_0]
movzx	ecx, cl
mov	[ebp+0], cl
movzx	eax, al
movzx	ecx, byte ptr [eax+edx]
mov	al, byte ptr [esp+34h+arg_8]
shl	ecx, 10h
or	esi, ecx
inc	bl
movzx	ebp, bl
movzx	ecx, byte ptr [ebp+edx+0]
add	al, cl
mov	byte ptr [esp+34h+arg_8], al
movzx	eax, al
add	eax, edx
mov	byte ptr [esp+34h+arg_0], cl
mov	[esp+34h+var_24], eax
mov	al, [eax]
mov	[ebp+edx+0], al
add	al, byte ptr [esp+34h+arg_0]
mov	ebp, [esp+34h+var_24]
movzx	ecx, cl
mov	[ebp+0], cl
mov	ebp, [esp+34h+var_1C]
movzx	eax, al
movzx	ecx, byte ptr [eax+edx]
shl	ecx, 18h
or	ecx, esi
xor	ecx, [esp+34h+var_20]
add	edi, 4
mov	[ebp+0], ecx
add	ebp, 4
mov	ecx, [esp+34h+arg_10]
mov	al, byte ptr [esp+34h+arg_8]
sub	ecx, 4
dec	[esp+34h+arg_C]
mov	[esp+34h+var_1C], ebp
mov	[esp+34h+arg_10], ecx
jnz	loc_1000A6B0
test	ecx, ecx
jnz	loc_1000A633
jmp	loc_1000A682
align 10h
			
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_14]
cmp	eax, ecx
jnb	short loc_1000A80D
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	edx, [esp+arg_8]
push	ecx
mov	ecx, [esp+4+arg_10]
push	ecx
push	eax
mov	eax, [esp+0Ch+arg_4]
push	edx
mov	edx, [esp+10h+arg_0]
push	eax
call	sub_1000A290
add	esp, 14h
retn
align 10h
push	0FFFFE898h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
push	0FFFFE898h
call	PORT_SetError_Util
pop	ecx
retn
align 10h
push	edi
mov	edi, [esp+14h]
test	edi, edi
jz	short loc_1000A889
push	ebx
mov	ebx, [esp+10h]
push	ebp
mov	ebp, [esp+10h]
push	esi
mov	esi, [esp+1Ch]
sub	ebx, esi
lea	ebx, [ebx+0]
lea	eax, [ebx+esi]
push	eax
push	esi
push	ebp
call	sub_1000B0A0
add	esp, 0Ch
add	esi, 8
sub	edi, 8
jnz	short loc_1000A870
pop	esi
pop	ebp
pop	ebx
pop	edi
retn
align 10h
push	edi
mov	edi, [esp+14h]
test	edi, edi
jz	short loc_1000A8E5
push	ebx
mov	ebx, [esp+0Ch]
push	ebp
mov	ebp, [esp+18h]
push	esi
mov	esi, [esp+18h]
sub	ebp, esi
lea	ebx, [ebx+0]
push	esi
lea	eax, [esi+ebp]
push	eax
push	ebx
call	sub_1000B0A0
push	esi
lea	eax, [ebx+80h]
push	esi
push	eax
call	sub_1000B0A0
push	esi
lea	eax, [ebx+100h]
push	esi
push	eax
call	sub_1000B0A0
add	esp, 24h
add	esi, 8
sub	edi, 8
jnz	short loc_1000A8B0
pop	esi
pop	ebp
pop	ebx
pop	edi
retn
align 10h
sub	esp, 8
mov	eax, [esp+8+arg_C]
push	esi
mov	esi, [esp+0Ch+arg_8]
add	eax, esi
mov	[esp+0Ch+arg_8], eax
cmp	esi, eax
jz	short loc_1000A961
push	ebx
push	ebp
mov	ebp, [esp+14h+arg_4]
push	edi
mov	edi, [esp+18h+arg_0]
lea	ebx, [edi+180h]
jmp	short loc_1000A920
align 10h
			
mov	ecx, [esi+4]
xor	ecx, [edi+184h]
mov	eax, [esi]
xor	eax, [ebx]
mov	[esp+18h+var_4], ecx
push	ebx
lea	ecx, [esp+1Ch+var_8]
push	ecx
push	edi
add	esi, 8
mov	[esp+24h+var_8], eax
call	sub_1000B0A0
mov	edx, [ebx]
mov	[ebp+0], edx
mov	eax, [edi+184h]
mov	[ebp+4], eax
add	esp, 0Ch
add	ebp, 8
cmp	esi, [esp+18h+arg_8]
jnz	short loc_1000A920
pop	edi
pop	ebp
pop	ebx
pop	esi
add	esp, 8
retn
align 10h
sub	esp, 10h
mov	eax, [esp+10h+arg_C]
push	esi
mov	esi, [esp+14h+arg_8]
add	eax, esi
mov	[esp+14h+arg_8], eax
cmp	esi, eax
jz	short loc_1000A9F9
push	ebx
push	ebp
mov	ebp, [esp+1Ch+arg_4]
push	edi
mov	edi, [esp+20h+arg_0]
lea	ebx, [edi+180h]
jmp	short loc_1000A9A0
align 10h
			
mov	edx, [edi+184h]
mov	ecx, [ebx]
mov	eax, [esi]
mov	[esp+20h+var_4], edx
lea	edx, [esp+20h+var_10]
push	edx
mov	[esp+24h+var_8], ecx
mov	[ebx], eax
mov	ecx, [esi+4]
push	ebx
push	edi
mov	[edi+184h], ecx
add	esi, 8
call	sub_1000B0A0
mov	eax, [esp+2Ch+var_10]
mov	ecx, [esp+2Ch+var_C]
xor	eax, [esp+2Ch+var_8]
xor	ecx, [esp+2Ch+var_4]
mov	[ebp+0], eax
mov	[ebp+4], ecx
add	esp, 0Ch
add	ebp, 8
mov	[esp+20h+var_10], eax
mov	[esp+20h+var_C], ecx
cmp	esi, [esp+20h+arg_8]
jnz	short loc_1000A9A0
pop	edi
pop	ebp
pop	ebx
pop	esi
add	esp, 10h
retn
align 10h
sub	esp, 8
mov	eax, [esp+8+arg_C]
push	edi
mov	edi, [esp+0Ch+arg_8]
add	eax, edi
mov	[esp+0Ch+arg_8], eax
cmp	edi, eax
jz	short loc_1000AA8D
push	ebx
mov	ebx, [esp+10h+arg_0]
push	ebp
mov	ebp, [esp+14h+arg_4]
push	esi
lea	esi, [ebx+180h]
jmp	short loc_1000AA30
align 10h
			
mov	ecx, [edi+4]
xor	ecx, [ebx+184h]
mov	eax, [edi]
xor	eax, [esi]
mov	[esp+18h+var_4], ecx
push	esi
lea	ecx, [esp+1Ch+var_8]
push	ecx
push	ebx
add	edi, 8
mov	[esp+24h+var_8], eax
call	sub_1000B0A0
push	esi
lea	eax, [ebx+80h]
push	esi
push	eax
call	sub_1000B0A0
push	esi
lea	eax, [ebx+100h]
push	esi
push	eax
call	sub_1000B0A0
mov	edx, [esi]
mov	[ebp+0], edx
mov	eax, [ebx+184h]
mov	[ebp+4], eax
add	esp, 24h
add	ebp, 8
cmp	edi, [esp+18h+arg_8]
jnz	short loc_1000AA30
pop	esi
pop	ebp
pop	ebx
pop	edi
add	esp, 8
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 14h
mov	eax, [ebp+arg_C]
push	ebx
push	esi
mov	esi, [ebp+arg_8]
add	eax, esi
push	edi
mov	[esp+20h+var_14], eax
cmp	esi, eax
jz	loc_1000AB57
mov	edi, [ebp+arg_0]
lea	ebx, [edi+180h]
lea	esp, [esp+0]
mov	edx, [edi+184h]
mov	ecx, [ebx]
mov	eax, [esi]
mov	[esp+20h+var_4], edx
lea	edx, [esp+20h+var_10]
push	edx
mov	[esp+24h+var_8], ecx
mov	[ebx], eax
mov	ecx, [esi+4]
push	ebx
push	edi
mov	[edi+184h], ecx
add	esi, 8
call	sub_1000B0A0
lea	eax, [esp+2Ch+var_10]
push	eax
mov	ecx, eax
push	ecx
lea	eax, [edi+80h]
push	eax
call	sub_1000B0A0
lea	edx, [esp+38h+var_10]
push	edx
mov	eax, edx
push	eax
lea	eax, [edi+100h]
push	eax
call	sub_1000B0A0
mov	eax, [esp+44h+var_10]
mov	ecx, [esp+44h+var_C]
xor	eax, [esp+44h+var_8]
xor	ecx, [esp+44h+var_4]
mov	edx, [ebp+arg_4]
mov	[edx], eax
mov	[edx+4], ecx
add	edx, 8
add	esp, 24h
mov	[esp+20h+var_10], eax
mov	[esp+20h+var_C], ecx
mov	[ebp+arg_4], edx
cmp	esi, [esp+20h+var_14]
jnz	loc_1000AAD0
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
push	190h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jnz	short loc_1000AB8B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	ecx, [esp+4+arg_14]
mov	edx, [esp+4+arg_10]
mov	eax, ecx
neg	eax
sbb	eax, eax
push	ebx
push	edi
and	eax, 0FFFFAAABh
add	eax, 0AAAAh
mov	edi, ecx
neg	edi
sbb	edi, edi
and	edi, 5555h
add	edi, 5555h
mov	[esi+188h], eax
cmp	edx, 3		
ja	loc_1000AD3E	
jmp	ds:off_1000AD54[edx*4] 
			
push	eax		
mov	eax, [esp+10h+arg_4]
push	eax
push	esi
call	sub_1000AEB0
add	esp, 0Ch
pop	edi
pop	ebx
mov	dword ptr [esi+18Ch], offset loc_1000A850
xor	eax, eax
pop	esi
retn
			
mov	ebx, [esp+0Ch+arg_4] 
push	eax
mov	dword ptr [esi+18Ch], offset loc_1000A890
push	ebx
test	ecx, ecx
jz	short loc_1000AC28
push	esi
call	sub_1000AEB0
push	edi
lea	ecx, [ebx+8]
push	ecx
lea	edx, [esi+80h]
push	edx
call	sub_1000AEB0
mov	eax, [esi+188h]
add	esi, 100h
jmp	loc_1000AD2A
lea	ecx, [esi+100h]
push	ecx
call	sub_1000AEB0
push	edi
lea	edx, [ebx+8]
push	edx
lea	eax, [esi+80h]
push	eax
call	sub_1000AEB0
mov	ecx, [esi+188h]
push	ecx
add	ebx, 10h
push	ebx
push	esi
call	sub_1000AEB0
add	esp, 24h
pop	edi
pop	ebx
xor	eax, eax
pop	esi
retn
			
mov	edx, [esp+0Ch+arg_C] 
mov	edi, [edx]
mov	[esi+180h], edi
mov	edx, [edx+4]
test	ecx, ecx
mov	[esi+184h], edx
mov	ecx, offset sub_1000A8F0
jnz	short loc_1000AC82
mov	ecx, offset sub_1000A970
push	eax
mov	eax, [esp+10h+arg_4]
push	eax
push	esi
mov	[esi+18Ch], ecx
call	sub_1000AEB0
add	esp, 0Ch
pop	edi
pop	ebx
xor	eax, eax
pop	esi
retn
			
mov	edx, [esp+0Ch+arg_C] 
mov	ebx, [edx]
mov	[esi+180h], ebx
mov	edx, [edx+4]
mov	ebx, [esp+0Ch+arg_4]
push	eax
mov	[esi+184h], edx
push	ebx
test	ecx, ecx
jz	short loc_1000ACFD
push	esi
mov	dword ptr [esi+18Ch], offset sub_1000AA00
call	sub_1000AEB0
push	edi
lea	eax, [ebx+8]
push	eax
lea	ecx, [esi+80h]
push	ecx
call	sub_1000AEB0
mov	edx, [esi+188h]
push	edx
add	ebx, 10h
add	esi, 100h
push	ebx
push	esi
call	sub_1000AEB0
add	esp, 24h
pop	edi
pop	ebx
xor	eax, eax
pop	esi
retn
lea	eax, [esi+100h]
push	eax
mov	dword ptr [esi+18Ch], offset sub_1000AAA0
call	sub_1000AEB0
push	edi
lea	ecx, [ebx+8]
push	ecx
lea	edx, [esi+80h]
push	edx
call	sub_1000AEB0
mov	eax, [esi+188h]
push	eax
add	ebx, 10h
push	ebx
push	esi
call	sub_1000AEB0
add	esp, 24h
pop	edi
pop	ebx
xor	eax, eax
pop	esi
retn
push	0FFFFE005h	
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebx
or	eax, 0FFFFFFFFh
pop	esi
retn
align 4
dd offset loc_1000AC5F	
dd offset loc_1000ABEC
dd offset loc_1000AC9D
align 10h
push	esi
push	190h
call	PORT_ZAlloc_Util
mov	ecx, [esp+8+arg_8]
mov	edx, [esp+8+arg_4]
push	0
mov	esi, eax
mov	eax, [esp+0Ch+arg_C]
push	eax
mov	eax, [esp+10h+arg_0]
push	ecx
push	edx
push	0
push	eax
push	esi
call	sub_1000AB70
add	esp, 20h
test	eax, eax
jz	short loc_1000ADB4
push	190h
push	esi
call	PORT_ZFree_Util
add	esp, 8
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_1000ADE9
push	190h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_1000ADE9
push	esi
call	PORT_Free_Util
add	esp, 4
			
pop	esi
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_14]
test	bl, 7
jnz	short loc_1000AE39
cmp	[esp+4+arg_C], ebx
jb	short loc_1000AE39
mov	eax, [esp+4+arg_0]
test	eax, eax
jz	short loc_1000AE39
cmp	dword ptr [eax+188h], 5555h
jnz	short loc_1000AE39
mov	ecx, [esp+4+arg_10]
mov	edx, [esp+4+arg_4]
push	ebx
push	ecx
push	edx
push	eax
mov	eax, [eax+18Ch]
call	eax
mov	eax, [esp+14h+arg_8]
add	esp, 10h
test	eax, eax
jz	short loc_1000AE35
mov	[eax], ebx
xor	eax, eax
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_14]
test	bl, 7
jnz	short loc_1000AE99
cmp	[esp+4+arg_C], ebx
jb	short loc_1000AE99
mov	eax, [esp+4+arg_0]
test	eax, eax
jz	short loc_1000AE99
cmp	dword ptr [eax+188h], 0AAAAh
jnz	short loc_1000AE99
mov	ecx, [esp+4+arg_10]
mov	edx, [esp+4+arg_4]
push	ebx
push	ecx
push	edx
push	eax
mov	eax, [eax+18Ch]
call	eax
mov	eax, [esp+14h+arg_8]
add	esp, 10h
test	eax, eax
jz	short loc_1000AE95
mov	[eax], ebx
xor	eax, eax
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
			
push	ebx
push	ebp
push	esi
push	edi
mov	eax, [esp+10h+arg_4]
mov	esi, [eax]
mov	eax, [eax+4]
bswap	esi
mov	ecx, esi
shr	ecx, 4
bswap	eax
xor	ecx, eax
and	ecx, 0F0F0F0Fh
xor	eax, ecx
shl	ecx, 4
xor	esi, ecx
mov	ecx, esi
shr	ecx, 12h
xor	ecx, esi
and	ecx, 3333h
mov	edx, ecx
shl	edx, 12h
or	edx, ecx
xor	esi, edx
mov	ecx, esi
shr	ecx, 9
xor	ecx, esi
and	ecx, 550055h
mov	edx, ecx
shl	edx, 9
or	edx, ecx
xor	esi, edx
mov	ecx, eax
shr	ecx, 12h
xor	ecx, eax
and	ecx, 3333h
mov	edx, ecx
shl	edx, 12h
or	edx, ecx
xor	eax, edx
mov	ecx, eax
shr	ecx, 9
xor	ecx, eax
and	ecx, 550055h
mov	edx, ecx
shl	edx, 9
or	edx, ecx
xor	eax, edx
bswap	eax
and	esi, 0FFFFFFh
mov	edx, eax
shl	esi, 4
and	eax, 0Fh
shr	edx, 4
or	esi, eax
cmp	[esp+10h+arg_8], 5555h
mov	edi, [esp+10h+arg_0]
jnz	short loc_1000AF5A
mov	[esp+10h+arg_8], 8
jmp	short loc_1000AF65
add	edi, 78h
mov	[esp+10h+arg_8], 0FFFFFFF8h
mov	[esp+10h+arg_4], 8103h
lea	ecx, [ecx+0]
test	byte ptr [esp+10h+arg_4], 1
mov	eax, edx
jz	short loc_1000AF89
shr	eax, 1Bh
add	edx, edx
or	edx, eax
mov	eax, esi
shr	eax, 1Bh
add	esi, esi
jmp	short loc_1000AFA1
shr	eax, 1Ah
lea	edx, ds:0[edx*4]
or	edx, eax
mov	eax, esi
shr	eax, 1Ah
lea	esi, ds:0[esi*4]
or	esi, eax
and	edx, 0FFFFFFFh
mov	eax, edx
shr	eax, 7
and	eax, 6000h
mov	ecx, edx
and	ecx, 1800h
or	eax, ecx
shr	eax, 9
mov	ecx, edx
and	ecx, 30h
add	ecx, ecx
add	ecx, ecx
or	eax, ecx
mov	ecx, edx
and	ecx, 7
add	ecx, ecx
add	ecx, ecx
mov	ebx, edx
shr	ebx, 2
and	ebx, 0E0h
or	ebx, ecx
mov	ecx, ds:dword_1003AA18[eax]
or	ecx, ds:dword_1003A918[ebx]
mov	eax, edx
shr	eax, 14h
and	eax, 0FCh
or	ecx, ds:dword_1003A718[eax]
and	esi, 0FFFFFFFh
mov	eax, edx
shr	eax, 0Bh
and	eax, 0FCh
or	ecx, ds:dword_1003A818[eax]
mov	eax, esi
shr	eax, 1
and	eax, 0C0000h
mov	ebx, esi
and	ebx, 3C000h
or	eax, ebx
shr	eax, 0Ch
mov	eax, ds:dword_1003AC18[eax]
mov	ebx, esi
and	ebx, 3
add	ebx, ebx
mov	ebp, esi
and	ebp, 78h
or	ebx, ebp
or	eax, ds:dword_1003AE18[ebx*2]
mov	ebx, esi
shr	ebx, 14h
and	ebx, 0FCh
or	eax, ds:dword_1003AB18[ebx]
mov	ebx, esi
shr	ebx, 5
and	ebx, 0FCh
or	eax, ds:dword_1003AD18[ebx]
mov	ebp, ecx
mov	ebx, eax
xor	eax, ecx
shr	ebx, 10h
shl	ebp, 10h
and	eax, 0FFFFh
or	ebx, ebp
xor	eax, ecx
mov	[edi], ebx
mov	[edi+4], eax
add	edi, [esp+10h+arg_8]
shr	[esp+10h+arg_4], 1
jnz	loc_1000AF70
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
push	ebx
push	esi
push	edi
mov	eax, [esp+0Ch+arg_4]
mov	edx, [eax]
mov	esi, [eax+4]
bswap	esi
bswap	edx
mov	eax, edx
shr	eax, 4
xor	eax, esi
and	eax, 0F0F0F0Fh
xor	esi, eax
shl	eax, 4
xor	edx, eax
mov	eax, edx
shr	eax, 10h
xor	eax, esi
and	eax, 0FFFFh
xor	esi, eax
shl	eax, 10h
xor	edx, eax
lea	eax, ds:0[edx*4]
xor	eax, esi
and	eax, 0CCCCCCCCh
xor	esi, eax
shr	eax, 2
xor	edx, eax
mov	eax, edx
shl	eax, 8
xor	eax, esi
and	eax, 0FF00FF00h
xor	esi, eax
shr	eax, 8
xor	edx, eax
mov	ecx, edx
shr	ecx, 1
xor	ecx, esi
and	ecx, 55555555h
lea	eax, [ecx+ecx]
xor	ecx, esi
xor	eax, edx
mov	edx, [esp+0Ch+arg_0]
mov	esi, [edx]
rol	eax, 3
rol	ecx, 3
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+4]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+8]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+0Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+10h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+14h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+18h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+1Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+20h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+24h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+28h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+2Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+30h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+34h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+38h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+3Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
xor	ecx, edi
mov	esi, [edx+40h]
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+44h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+48h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+4Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+50h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
mov	ebx, esi
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+54h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+58h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+5Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+60h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+64h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+68h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+6Ch]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+70h]
xor	ecx, edi
xor	esi, ecx
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A618[esi]
mov	esi, ecx
xor	eax, edi
ror	esi, 4
xor	esi, [edx+74h]
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_10039F18[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A118[ebx]
mov	ebx, esi
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A318[ebx]
and	esi, 0FCh
xor	edi, ds:dword_1003A518[esi]
mov	esi, [edx+78h]
xor	eax, edi
xor	esi, eax
mov	edi, esi
shr	edi, 18h
and	edi, 0FCh
mov	edi, ds:dword_1003A018[edi]
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FCh
xor	edi, ds:dword_1003A218[ebx]
mov	ebx, esi
and	esi, 0FCh
shr	ebx, 8
and	ebx, 0FCh
xor	edi, ds:dword_1003A418[ebx]
xor	edi, ds:dword_1003A618[esi]
mov	esi, eax
xor	ecx, edi
ror	esi, 4
xor	esi, [edx+7Ch]
mov	edx, esi
shr	edx, 18h
and	edx, 0FCh
mov	edx, ds:dword_10039F18[edx]
mov	edi, esi
shr	edi, 10h
and	edi, 0FCh
xor	edx, ds:dword_1003A118[edi]
mov	edi, esi
shr	edi, 8
and	edi, 0FCh
xor	edx, ds:dword_1003A318[edi]
and	esi, 0FCh
xor	edx, ds:dword_1003A518[esi]
pop	edi
xor	ecx, edx
ror	eax, 3
ror	ecx, 3
mov	edx, ecx
shr	edx, 1
xor	edx, eax
and	edx, 55555555h
xor	eax, edx
add	edx, edx
xor	ecx, edx
mov	edx, ecx
shl	edx, 8
xor	edx, eax
and	edx, 0FF00FF00h
xor	eax, edx
shr	edx, 8
xor	ecx, edx
lea	edx, ds:0[ecx*4]
xor	edx, eax
and	edx, 0CCCCCCCCh
xor	eax, edx
shr	edx, 2
xor	ecx, edx
mov	edx, ecx
shr	edx, 10h
xor	edx, eax
and	edx, 0FFFFh
xor	eax, edx
shl	edx, 10h
xor	ecx, edx
mov	edx, ecx
shr	edx, 4
xor	edx, eax
and	edx, 0F0F0F0Fh
mov	esi, edx
shl	esi, 4
xor	esi, ecx
mov	ecx, [esp+8+arg_8]
xor	edx, eax
bswap	esi
bswap	edx
mov	[ecx], esi
mov	[ecx+4], edx
pop	esi
pop	ebx
retn
align 10h
			
sub	esp, 138h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+138h+var_4], eax
push	ebp
mov	ebp, [esp+13Ch+arg_0]
push	esi
mov	esi, ecx
lea	eax, ds:0[esi*8]
bswap	eax
push	edi
mov	edi, edx
mov	[esp+144h+var_134], eax
mov	[esp+144h+Src],	1
test	esi, esi
jz	loc_1000BB4E
lea	esp, [esp+0]
lea	ecx, [esp+144h+Dst]
push	ecx		
call	sub_10003E00
push	1		
lea	edx, [esp+14Ch+Src]
push	edx		
lea	eax, [esp+150h+Dst]
push	eax		
call	sub_100065B0
push	4		
lea	ecx, [esp+158h+var_134]
push	ecx		
lea	edx, [esp+15Ch+Dst]
push	edx		
call	sub_100065B0
mov	eax, [esp+160h+Size]
push	eax		
lea	ecx, [esp+164h+Dst]
push	ebp		
push	ecx		
call	sub_100065B0
add	esp, 28h
test	ebx, ebx
jz	short loc_1000BB2C
mov	edx, [esp+144h+arg_8]
push	edx		
lea	eax, [esp+148h+Dst]
push	ebx		
push	eax		
call	sub_100065B0
add	esp, 0Ch
push	esi		
lea	ecx, [esp+148h+var_130]
push	ecx		
lea	edx, [esp+14Ch+Dst]
push	edi		
push	edx		
call	sub_10006670
mov	eax, [esp+154h+var_130]
inc	[esp+154h+Src]
add	esp, 10h
add	edi, eax
sub	esi, eax
jnz	short loc_1000BAD0
mov	ecx, [esp+144h+var_4]
pop	edi
pop	esi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 138h
retn
align 10h
			
cmp	eax, 37h
jnb	short loc_1000BB86
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	ebx
push	0		
push	eax		
mov	eax, [esp+0Ch+arg_0]
xor	ebx, ebx
push	eax		
lea	edx, [esi+5]	
lea	ecx, [ebx+37h]	
call	sub_1000BA90
push	ebx		
lea	eax, [esi+4]
push	38h		
push	eax		
lea	edx, [esi+3Ch]	
lea	ecx, [ebx+37h]	
mov	[eax], bl
call	sub_1000BA90
xor	eax, eax
mov	[esi+0AAh], eax
add	esp, 18h
mov	[esi+0AEh], ax
mov	byte ptr [esi+0B0h], 1
pop	ebx
retn
align 10h
			
sub	esp, 7Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+7Ch+var_4], eax
mov	eax, [esp+7Ch+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+84h+arg_0]
push	esi
push	edi
mov	esi, ecx
lea	edi, [esp+8Ch+var_74]
mov	ebx, edx
mov	[esp+8Ch+var_78], eax
mov	[esp+8Ch+Dst], edi
test	esi, esi
jnz	short loc_1000BC17
lea	ecx, [esp+8Ch+var_3C]
push	37h
push	ecx
call	sub_10001320
add	esp, 8
mov	ebx, eax
jmp	short loc_1000BC40
cmp	ebx, 37h
jbe	short loc_1000BC32
lea	edx, [ebx+38h]
push	edx
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+8Ch+Dst], eax
test	eax, eax
jz	short loc_1000BC52
mov	edi, eax
push	ebx		
lea	eax, [edi+38h]
push	esi		
push	eax		
call	memcpy
add	esp, 0Ch
cmp	ebx, 20h
jnb	short loc_1000BC68
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+7Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 7Ch
retn
mov	edx, [esp+8Ch+Dst]
lea	esi, [ebp+4]
mov	byte ptr [esi],	1
mov	ecx, 0Eh
rep movsd
mov	ecx, [esp+8Ch+arg_8]
push	ecx		
lea	esi, [ebx+38h]
mov	ebx, [esp+90h+var_78]
push	esi		
push	edx		
lea	edx, [ebp+5]	
mov	ecx, 37h	
call	sub_1000BA90
push	esi		
mov	esi, [esp+9Ch+Dst]
push	0		
push	esi		
call	memset
push	0		
lea	eax, [ebp+4]
xor	ebx, ebx
push	38h		
push	eax		
lea	edx, [ebp+3Ch]	
lea	ecx, [ebx+37h]	
mov	byte ptr [eax],	0
call	sub_1000BA90
xor	eax, eax
mov	[ebp+0AAh], eax
mov	[ebp+0AEh], ax
lea	eax, [esp+0B0h+var_74]
add	esp, 24h
mov	byte ptr [ebp+0B0h], 1
cmp	esi, eax
jz	short loc_1000BCE6
push	esi
call	PORT_Free_Util
add	esp, 4
mov	ecx, [esp+8Ch+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 7Ch
retn
align 10h
sub	esp, 168h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+168h+var_4], eax
push	ebx
push	ebp
mov	ebp, [esp+170h+arg_4]
push	esi
mov	esi, [esp+174h+arg_0]
push	edi
add	esi, 5
mov	ebx, ecx
mov	ecx, 0Dh
lea	edi, [esp+178h+Src]
rep movsd
movsw
movsb
test	ebp, ebp
jz	short loc_1000BD9C
			
lea	eax, [esp+178h+Dst]
push	eax		
call	sub_10003E00
push	37h		
lea	ecx, [esp+180h+Src]
push	ecx		
lea	edx, [esp+184h+Dst]
push	edx		
call	sub_100065B0
push	ebp		
lea	eax, [esp+18Ch+var_168]
push	eax		
lea	ecx, [esp+190h+Dst]
push	ebx		
push	ecx		
call	sub_10006670
mov	eax, [esp+198h+var_168]
add	esp, 20h
add	ebx, eax
sub	ebp, eax
mov	ecx, 36h
jz	short loc_1000BD9C
test	ecx, ecx
js	short loc_1000BD40
mov	al, [esp+ecx+178h+Src]
inc	al
mov	[esp+ecx+178h+Src], al
dec	ecx
test	al, al
jz	short loc_1000BD81
jmp	short loc_1000BD40
			
mov	ecx, [esp+178h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 168h
retn
align 10h
			
sub	esp, 170h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+170h+var_4], eax
push	ebp
mov	ebp, [esp+174h+arg_0]
cmp	dword ptr [ebp+20D8h], 0
push	esi
mov	[esp+178h+var_16C], ecx
mov	esi, edx
jnz	short loc_1000BE13
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+170h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 170h
retn
push	ebx
push	edi
test	esi, esi
jz	loc_1000BF95
lea	eax, [esp+180h+Dst]
lea	edi, [ebp+4]
push	eax		
mov	byte ptr [edi],	2
call	sub_10003E00
push	38h		
lea	ecx, [esp+188h+Dst]
push	edi		
push	ecx		
call	sub_100065B0
mov	edx, [esp+190h+Size]
push	edx		
lea	eax, [esp+194h+Dst]
push	esi		
push	eax		
call	sub_100065B0
push	20h		
push	0		
lea	ecx, [esp+1A4h+var_24]
push	ecx		
lea	edx, [esp+1A8h+Dst]
push	edx		
call	sub_10006670
lea	edx, [esp+1ACh+var_24]
dec	edx
lea	ebx, [esp+1ACh+var_24]
sub	ebx, edx
mov	[esp+1ACh+var_15C], ebx
lea	ebx, [esp+1ACh+var_24]
sub	ebx, edx
add	ebx, 0FFFFFFFEh
mov	[esp+1ACh+var_158], ebx
lea	esi, [edx+1Fh]
lea	ebx, [esp+1ACh+var_24]
sub	ebx, edx
mov	edx, ebp
sub	edx, edi
add	edx, 3
add	ebx, 0FFFFFFFDh
mov	[esp+1ACh+var_168], edx
mov	[esp+1ACh+var_160], ebx
mov	edx, ebp
mov	ebx, ebp
sub	edx, edi
add	esp, 2Ch
xor	ecx, ecx
sub	ebx, edi
add	edx, 2
lea	eax, [edi+36h]
mov	[esp+180h+var_164], edx
mov	[esp+180h+var_170], 8
jmp	short loc_1000BED0
align 10h
			
movzx	edi, byte ptr [ebx+eax+5]
mov	edx, [esp+180h+var_15C]
movzx	edx, byte ptr [edx+esi]
add	ecx, edi
add	ecx, edx
movzx	edx, byte ptr [esi]
mov	[ebx+eax+5], cl
shr	ecx, 8
add	ecx, edx
movzx	edx, byte ptr [eax]
add	edx, ecx
mov	ecx, [esp+180h+var_158]
movzx	ecx, byte ptr [ecx+esi]
mov	[eax], dl
shr	edx, 8
add	ecx, edx
mov	edx, [esp+180h+var_168]
movzx	edi, byte ptr [edx+eax]
add	ecx, edi
mov	[edx+eax], cl
mov	edx, [esp+180h+var_160]
movzx	edi, byte ptr [edx+esi]
mov	edx, [esp+180h+var_164]
shr	ecx, 8
add	edi, ecx
movzx	ecx, byte ptr [edx+eax]
add	ecx, edi
mov	[edx+eax], cl
shr	ecx, 8
sub	eax, 4
sub	esi, 4
dec	[esp+180h+var_170]
jnz	short loc_1000BED0
test	ecx, ecx
jz	short loc_1000BF57
mov	edx, 0FFFFFFFBh
lea	ecx, [ebp+1Bh]
sub	edx, ebp
lea	eax, [edx+ecx]
test	eax, eax
js	short loc_1000BF57
mov	al, [ecx]
inc	al
mov	[ecx], al
dec	ecx
test	al, al
jz	short loc_1000BF45
			
mov	ecx, [esp+180h+var_16C]	
xor	eax, eax
mov	[esp+180h+var_24], eax
mov	[esp+180h+var_20], eax
mov	[esp+180h+var_1C], eax
mov	[esp+180h+var_18], eax
mov	[esp+180h+var_14], eax
mov	[esp+180h+var_10], eax
mov	[esp+180h+var_C], eax
mov	[esp+180h+var_8], eax
mov	eax, [esp+180h+arg_4]
cmp	eax, 20h
jnz	short loc_1000BFB2
push	37h		
lea	edx, [ebp+5]
push	edx		
push	ecx		
call	sub_10006810
add	esp, 0Ch
jmp	short loc_1000BFBC
push	eax		
push	ebp		
call	sub_1000BD00
add	esp, 8
lea	ebx, [ebp+4]
push	38h		
lea	eax, [esp+184h+var_24]
push	ebx		
push	eax		
mov	byte ptr [ebx],	3
call	sub_10006810
lea	ecx, [esp+18Ch+var_24]
dec	ecx
lea	edx, [esp+18Ch+var_24]
sub	edx, ecx
mov	[esp+18Ch+var_15C], edx
lea	edx, [esp+18Ch+var_24]
sub	edx, ecx
add	edx, 0FFFFFFFEh
mov	[esp+18Ch+var_158], edx
lea	edx, [esp+18Ch+var_24]
sub	edx, ecx
add	edx, 0FFFFFFFDh
mov	[esp+18Ch+var_160], edx
lea	edx, [ebp+3]
sub	edx, ebx
lea	esi, [ebp+5]
lea	edi, [ecx+1Fh]
mov	[esp+18Ch+var_168], edx
mov	ecx, esi
sub	ecx, ebx
lea	edx, [ebp+2]
add	esp, 0Ch
sub	edx, ebx
mov	[esp+180h+var_154], 0
lea	eax, [ebx+36h]
mov	[esp+180h+var_170], ecx
mov	[esp+180h+var_164], edx
mov	[esp+180h+var_16C], 8
jmp	short loc_1000C044
align 10h
mov	ecx, [esp+180h+var_170]
movzx	ecx, byte ptr [ecx+eax]
add	ecx, [esp+180h+var_154]
mov	edx, [esp+180h+var_15C]
movzx	edx, byte ptr [edx+edi]
add	ecx, edx
mov	edx, [esp+180h+var_170]
mov	[edx+eax], cl
movzx	edx, byte ptr [edi]
shr	ecx, 8
add	ecx, edx
movzx	edx, byte ptr [eax]
add	edx, ecx
mov	ecx, [esp+180h+var_158]
movzx	ecx, byte ptr [ecx+edi]
mov	[eax], dl
shr	edx, 8
add	ecx, edx
mov	edx, [esp+180h+var_168]
movzx	edx, byte ptr [edx+eax]
add	ecx, edx
mov	edx, [esp+180h+var_168]
mov	[edx+eax], cl
mov	edx, [esp+180h+var_160]
movzx	edx, byte ptr [edx+edi]
shr	ecx, 8
add	edx, ecx
mov	ecx, [esp+180h+var_164]
movzx	ecx, byte ptr [ecx+eax]
add	ecx, edx
mov	edx, [esp+180h+var_164]
mov	[edx+eax], cl
shr	ecx, 8
sub	eax, 4
sub	edi, 4
dec	[esp+180h+var_16C]
mov	[esp+180h+var_154], ecx
jnz	short loc_1000C040
test	ecx, ecx
jz	short loc_1000C0E2
mov	edx, 0FFFFFFFBh
lea	ecx, [ebp+1Bh]
sub	edx, ebp
lea	esp, [esp+0]
lea	eax, [ecx+edx]
test	eax, eax
js	short loc_1000C0E2
mov	al, [ecx]
inc	al
mov	[ecx], al
dec	ecx
test	al, al
jz	short loc_1000C0D0
			
mov	edx, ebp
sub	edx, esi
add	edx, 3Ch
mov	[esp+180h+var_154], edx
mov	edx, ebp
sub	edx, esi
add	edx, 3Bh
mov	[esp+180h+var_170], edx
mov	edx, ebp
sub	edx, esi
add	edx, 3Ah
mov	[esp+180h+var_160], edx
lea	edx, [ebp+3]
sub	edx, esi
mov	[esp+180h+var_158], edx
mov	edx, ebp
sub	edx, esi
add	edx, 39h
mov	[esp+180h+var_15C], edx
lea	edx, [ebp+2]
sub	edx, esi
mov	[esp+180h+var_164], edx
mov	edx, ebp
sub	edx, esi
add	edx, 38h
mov	[esp+180h+var_168], edx
mov	edx, ebp
sub	edx, esi
xor	ecx, ecx
sub	ebx, esi
inc	edx
lea	eax, [esi+36h]
mov	[esp+180h+var_150], edx
mov	[esp+180h+var_16C], 0Bh
movzx	edi, byte ptr [eax]
mov	edx, [esp+180h+var_154]
movzx	edx, byte ptr [edx+eax]
add	edi, ecx
mov	ecx, [esp+180h+var_170]
add	edx, edi
mov	[eax], dl
movzx	ecx, byte ptr [ecx+eax]
shr	edx, 8
add	ecx, edx
movzx	edx, byte ptr [ebx+eax]
add	ecx, edx
mov	edx, [esp+180h+var_160]
mov	[ebx+eax], cl
movzx	edx, byte ptr [edx+eax]
shr	ecx, 8
add	edx, ecx
mov	ecx, [esp+180h+var_158]
movzx	edi, byte ptr [ecx+eax]
add	edx, edi
mov	[ecx+eax], dl
mov	ecx, [esp+180h+var_15C]
movzx	ecx, byte ptr [ecx+eax]
shr	edx, 8
add	ecx, edx
mov	edx, [esp+180h+var_164]
movzx	edi, byte ptr [edx+eax]
add	ecx, edi
mov	[edx+eax], cl
mov	edx, [esp+180h+var_168]
movzx	edi, byte ptr [edx+eax]
mov	edx, [esp+180h+var_150]
shr	ecx, 8
add	edi, ecx
movzx	ecx, byte ptr [edx+eax]
add	ecx, edi
mov	[edx+eax], cl
shr	ecx, 8
sub	eax, 5
dec	[esp+180h+var_16C]
jnz	loc_1000C143
movzx	ecx, byte ptr [ebp+0B0h]
movzx	edx, byte ptr [ebp+3Bh]
add	ecx, edx
movzx	edx, byte ptr [ebp+39h]
mov	[ebp+3Bh], cl
movzx	eax, byte ptr [ebp+0AFh]
shr	ecx, 8
add	eax, ecx
movzx	ecx, byte ptr [ebp+3Ah]
add	eax, ecx
mov	[ebp+3Ah], al
movzx	ecx, byte ptr [ebp+0AEh]
shr	eax, 8
add	ecx, eax
add	ecx, edx
movzx	edx, byte ptr [ebp+37h]
mov	[ebp+39h], cl
movzx	eax, byte ptr [ebp+0ADh]
shr	ecx, 8
add	eax, ecx
movzx	ecx, byte ptr [ebp+38h]
add	eax, ecx
mov	[ebp+38h], al
movzx	ecx, byte ptr [ebp+0ACh]
shr	eax, 8
add	ecx, eax
add	ecx, edx
movzx	edx, byte ptr [ebp+35h]
mov	[ebp+37h], cl
movzx	eax, byte ptr [ebp+0ABh]
shr	ecx, 8
add	eax, ecx
movzx	ecx, byte ptr [ebp+36h]
add	eax, ecx
mov	[ebp+36h], al
movzx	ecx, byte ptr [ebp+0AAh]
shr	eax, 8
add	ecx, eax
add	ecx, edx
mov	[ebp+35h], cl
shr	ecx, 8
test	ecx, ecx
jz	short loc_1000C279
mov	edx, 0FFFFFFFBh
lea	ecx, [ebp+34h]
sub	edx, ebp
lea	eax, [ecx+edx]
test	eax, eax
js	short loc_1000C279
mov	al, [ecx]
inc	al
mov	[ecx], al
dec	ecx
test	al, al
jz	short loc_1000C267
			
mov	ecx, 6
mov	edi, edi
test	ecx, ecx
js	short loc_1000C299
mov	al, [ecx+ebp+0AAh]
inc	al
mov	[ecx+ebp+0AAh],	al
dec	ecx
test	al, al
jz	short loc_1000C280
lea	edi, [ebp+73h]
mov	edx, 37h
mov	eax, edi
mov	ecx, esi
mov	ebx, [ecx]
cmp	ebx, [eax]
jnz	short loc_1000C2EB
sub	edx, 4
add	eax, 4
add	ecx, 4
cmp	edx, 4
jnb	short loc_1000C2A5
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_1000C2EB
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_1000C2EB
mov	al, [eax+2]
cmp	al, [ecx+2]
jnz	short loc_1000C2EB
push	0FFFFE001h
mov	dword ptr [ebp+20D8h], 0
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1000C2F7
			
mov	ecx, 0Dh
rep movsd
movsw
movsb
xor	eax, eax
mov	ecx, [esp+180h+var_4]
pop	edi
pop	ebx
pop	esi
pop	ebp
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 170h
retn
sub	esp, 74h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+74h+var_4], eax
mov	eax, Dst
push	ebx
push	ebp
push	esi
mov	esi, ecx
mov	ecx, [eax]
push	edi
push	ecx
call	ds:PR_DestroyLock
push	0		
xor	ebx, ebx
lea	edi, [esi+3Ch]
push	37h		
push	edi		
lea	ecx, [ebx+37h]	
lea	edx, [esp+94h+Dst] 
call	sub_1000BA90
push	ebx		
lea	ebp, [esi+5]
push	37h		
push	ebp		
lea	ecx, [ebx+37h]	
lea	edx, [esp+0A0h+var_3D] 
call	sub_1000BA90
push	20DCh		
push	ebx		
push	esi		
call	memset
mov	ecx, 0Dh
lea	esi, [esp+0ACh+Dst]
rep movsd
movsw
movsb
mov	edi, ebp
mov	ecx, 0Dh
lea	esi, [esp+0ACh+var_3D]
rep movsd
mov	ecx, [esp+0ACh+var_4]
movsw
add	esp, 28h
movsb
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
align 10h
mov	ecx, Dst	
test	ecx, ecx
jnz	short loc_1000C3B8
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
retn
call	sub_1000C310
mov	eax, ds:dword_1003AF18
mov	ecx, ds:dword_1003AF1C
mov	edx, ds:dword_1003AF20
mov	Dst, 0
mov	dword_10049640,	eax
mov	dword_10049644,	ecx
mov	dword_10049648,	edx
retn
align 10h
push	ebx
push	ebp
mov	ebp, [esp+8+arg_C]
push	esi
mov	esi, [esp+0Ch+Size]
lea	ebx, [esi+ebp]
add	ebx, [esp+0Ch+arg_14]
cmp	esi, 20h
jnb	short loc_1000C41B
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	edi
push	ebx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1000C440
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esp+10h+Src]
push	esi		
push	eax		
push	edi		
call	memcpy
mov	eax, [esp+1Ch+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_1000C465
push	ebp		
push	eax		
lea	ecx, [edi+esi]
push	ecx		
call	memcpy
add	esp, 0Ch
mov	eax, [esp+10h+arg_10]
test	eax, eax
jz	short loc_1000C481
mov	edx, [esp+10h+arg_14]
push	edx		
push	eax		
lea	eax, [edi+esi]
add	eax, ebp
push	eax		
call	memcpy
add	esp, 0Ch
push	edi
mov	eax, ebx
mov	esi, offset dword_1004BA80
call	sub_1000BB70
push	ebx
push	edi
mov	esi, eax
call	PORT_ZFree_Util
add	esp, 0Ch
cmp	esi, 0FFFFFFFFh
jz	short loc_1000C438
pop	edi
pop	esi
pop	ebp
mov	dword_1004DB58,	1
xor	eax, eax
pop	ebx
retn
cmp	dword_1004DB58,	0
jnz	short loc_1000C4CA
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+Src]	
mov	eax, [esp+arg_C]
mov	edx, [esp+Size]	
push	esi
mov	esi, [esp+4+arg_8]
test	ecx, ecx
jnz	short loc_1000C4F4
test	edx, edx
jnz	short loc_1000C4F4
test	esi, esi
jnz	short loc_1000C4F4
test	eax, eax
jnz	short loc_1000C4F4
mov	byte_1004BB2A, 1
pop	esi
retn
			
push	eax		
push	esi		
push	offset dword_1004BA80 
call	sub_1000BBD0
add	esp, 0Ch
pop	esi
retn
align 10h
			
cmp	dword_1004DB58,	0
jnz	short loc_1000C52A
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
cmp	byte_1004BB2A, 1
jb	short loc_1000C54C
push	0		
push	0		
push	offset dword_1004BA80 
xor	edx, edx	
xor	ecx, ecx	
call	sub_1000BBD0
add	esp, 0Ch
test	eax, eax
jnz	short locret_1000C56B
mov	eax, [esp+Size]
mov	ecx, [esp+arg_4]
mov	edx, [esp+Src]	
push	eax		
push	ecx		
mov	ecx, [esp+8+arg_0] 
push	offset dword_1004BA80 
call	sub_1000BDC0
add	esp, 0Ch
retn
align 10h
			
cmp	dword_1004DB58,	0
jnz	short loc_1000C58A
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	20DCh		
push	0		
push	offset dword_1004BA80 
call	memset
add	esp, 0Ch
xor	eax, eax
retn
align 10h
			
sub	esp, 3Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+3Ch+var_4], eax
push	esi
push	edi
push	20h
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1000C607
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
call	PORT_GetError_Util
cmp	eax, 0FFFFE03Fh
jnz	loc_1000C8CC
push	50h
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1000C645
push	0FFFFE013h
jmp	loc_1000C8D1
push	20h		
push	offset dword_1003AF30 
push	edi		
call	memcpy
push	edi
mov	eax, 20h
mov	esi, offset dword_1004BA80
call	sub_1000BB70
push	20h
push	edi
mov	esi, eax
call	PORT_ZFree_Util
add	esp, 18h
cmp	esi, 0FFFFFFFFh
jz	short loc_1000C5DD
mov	dword_1004DB58,	1
jmp	loc_1000C8CC
push	50h		
push	offset dword_1003AF30 
push	edi		
call	memcpy
push	edi
mov	eax, 50h
mov	esi, offset dword_1004BA80
call	sub_1000BB70
push	50h
push	edi
mov	esi, eax
call	PORT_ZFree_Util
add	esp, 18h
cmp	esi, 0FFFFFFFFh
jz	loc_1000C8D9
push	0		
push	0		
lea	eax, [esp+4Ch+var_3C]
push	37h		
push	eax		
mov	dword_1004DB58,	1
call	sub_1000C510
add	esp, 10h
test	eax, eax
jnz	loc_1000C8A0
lea	edx, [eax+37h]
mov	eax, offset dword_1003AF80
lea	ecx, [esp+44h+var_3C]
lea	esp, [esp+0]
mov	esi, [ecx]
cmp	esi, [eax]
jnz	loc_1000C8A0
sub	edx, 4
add	eax, 4
add	ecx, 4
cmp	edx, 4
jnb	short loc_1000C6B0
mov	dl, [eax]
cmp	dl, [ecx]
jnz	loc_1000C8A0
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	loc_1000C8A0
mov	al, [eax+2]
cmp	al, [ecx+2]
jnz	loc_1000C8A0
cmp	dword_1004DB58,	0
jnz	short loc_1000C719
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
call	sub_1000C570
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
push	20h		
push	offset dword_1003AFD8 
push	offset dword_1004BA80 
mov	edx, 20h	
mov	ecx, offset dword_1003AFB8 
call	sub_1000BBD0
add	esp, 0Ch
test	eax, eax
jz	short loc_1000C754
call	sub_1000C570
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
push	0		
push	0		
lea	ecx, [esp+4Ch+var_3C]
push	37h		
push	ecx		
call	sub_1000C510
add	esp, 10h
test	eax, eax
jnz	loc_1000C8A0
lea	edx, [eax+37h]
mov	eax, offset dword_1003AFF8
lea	ecx, [esp+44h+var_3C]
jmp	short loc_1000C780
align 10h
			
mov	esi, [ecx]
cmp	esi, [eax]
jnz	loc_1000C8A0
sub	edx, 4
add	eax, 4
add	ecx, 4
cmp	edx, 4
jnb	short loc_1000C780
mov	dl, [eax]
cmp	dl, [ecx]
jnz	loc_1000C8A0
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	loc_1000C8A0
mov	al, [eax+2]
cmp	al, [ecx+2]
jnz	loc_1000C8A0
cmp	dword_1004DB58,	0
jz	loc_1000C6F3
push	0		
push	0		
lea	ecx, [esp+4Ch+var_3C]
push	37h		
push	ecx		
mov	byte_1004BB2A, 1
call	sub_1000C510
add	esp, 10h
test	eax, eax
jnz	loc_1000C899
lea	edx, [eax+37h]
mov	eax, offset dword_1003B030
lea	ecx, [esp+44h+var_3C]
mov	esi, [ecx]
cmp	esi, [eax]
jnz	short loc_1000C81F
sub	edx, 4
add	eax, 4
add	ecx, 4
cmp	edx, 4
jnb	short loc_1000C7F5
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_1000C81F
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_1000C81F
mov	al, [eax+2]
cmp	al, [ecx+2]
jz	short loc_1000C899
			
cmp	dword_1004DB58,	0
jnz	short loc_1000C87A
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
call	PORT_GetError_Util
cmp	eax, 0FFFFE03Fh
jnz	short loc_1000C899
call	sub_1000C570
test	eax, eax
jnz	loc_1000C8DC
call	sub_1000C570
mov	esi, eax
test	esi, esi
jz	short loc_1000C8CC
call	PORT_GetError_Util
sub	eax, 0FFFFE001h
neg	eax
sbb	eax, eax
pop	edi
and	eax, esi
pop	esi
mov	ecx, [esp+3Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
push	0		
push	0		
push	offset dword_1004BA80 
mov	edx, 4		
mov	ecx, offset dword_1003AFB8 
call	sub_1000BBD0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000C835
			
call	sub_1000C570
jmp	short loc_1000C8CC
			
cmp	dword_1004DB58,	0
jnz	short loc_1000C8B8
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1000C8CC
push	20DCh		
push	0		
push	offset dword_1004BA80 
call	memset
add	esp, 0Ch
			
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
mov	ecx, [esp+44h+var_4]
pop	edi
pop	esi
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 3Ch
retn
align 10h
call	sub_1000C5B0
test	eax, eax
jz	short loc_1000C907
mov	dword ptr [esi+20D8h], 0
or	eax, 0FFFFFFFFh
retn
mov	eax, [esp+arg_C]
mov	ecx, [esp+arg_8]
mov	edx, [esp+Size]	
push	eax		
push	ecx		
mov	ecx, [esp+8+Src] 
push	esi		
call	sub_1000BBD0
add	esp, 0Ch
retn
align 10h
sub	esp, 74h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+74h+var_4], eax
cmp	Dst, 0
push	edi
jnz	loc_1000CA14
mov	Dst, offset dword_10049650
call	ds:PR_NewLock
mov	ecx, Dst
mov	[ecx], eax
test	eax, eax
jnz	short loc_1000C98D
push	0FFFFE890h
mov	Dst, eax
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
lea	edx, [esp+78h+Dst]
push	6Eh
push	edx
call	sub_10001320
mov	edi, eax
add	esp, 8
test	edi, edi
jz	loc_1000CA26
push	esi
mov	esi, Dst
cmp	byte ptr [esi+5], 0
jnz	short loc_1000C9C4
lea	eax, [esp+7Ch+Dst]
push	eax
mov	eax, edi
call	sub_1000BB70
add	esp, 4
jmp	short loc_1000C9D6
push	0
push	0
lea	ecx, [esp+84h+Dst]
push	edi
push	ecx
call	sub_1000C8F0
add	esp, 10h
push	edi		
lea	edx, [esp+80h+Dst]
push	0		
push	edx		
mov	esi, eax
call	memset
add	esp, 0Ch
test	esi, esi
pop	esi
jnz	short loc_1000C97A
mov	eax, Dst
push	0		
push	20h		
push	eax		
xor	edx, edx	
lea	ecx, [esp+84h+Dst] 
mov	dword ptr [eax+20D8h], 1
call	sub_1000BDC0
add	esp, 0Ch
call	sub_10001120
xor	eax, eax
pop	edi
mov	ecx, [esp+74h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 74h
retn
mov	eax, Dst
mov	ecx, [eax]
push	ecx
call	ds:PR_DestroyLock
mov	edx, Dst
mov	ecx, [esp+7Ch+var_4]
add	esp, 4
pop	edi
xor	ecx, esp
mov	dword ptr [edx], 0
mov	Dst, 0
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 74h
retn
push	offset sub_1000C930
push	offset dword_10049640
call	ds:PR_CallOnce
mov	eax, Dst
add	esp, 8
neg	eax
sbb	eax, eax
neg	eax
dec	eax
retn
			
mov	eax, Dst
mov	ecx, [eax]
push	ebx
push	esi
push	edi
push	ecx
call	ds:PR_Lock
mov	ebx, [esp+10h+Size]
mov	esi, Dst
add	esp, 4
cmp	ebx, 2000h
jbe	short loc_1000CB01
call	sub_1000C5B0
test	eax, eax
jz	short loc_1000CAD4
mov	dword ptr [esi+20D8h], 0
mov	esi, Dst
mov	edx, [esi]
push	edx
or	edi, 0FFFFFFFFh
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
mov	edx, [esp+0Ch+Src]
push	ebx		
push	edx		
push	esi		
xor	edx, edx	
xor	ecx, ecx	
call	sub_1000BBD0
mov	esi, Dst
mov	edx, [esi]
add	esp, 0Ch
push	edx
mov	edi, eax
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
mov	eax, [esi+20D4h]
mov	edi, 2000h
sub	edi, eax
cmp	ebx, edi
jnb	short loc_1000CB42
mov	ecx, [esp+0Ch+Src]
push	ebx		
push	ecx		
lea	edx, [eax+esi+0D2h]
push	edx		
call	memcpy
add	[esi+20D4h], ebx
mov	edx, [esi]
add	esp, 0Ch
push	edx
xor	edi, edi
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
push	ebp
mov	ebp, [esp+10h+Src]
test	edi, edi
jz	short loc_1000CB61
push	edi		
lea	eax, [eax+esi+0D2h]
push	ebp		
push	eax		
call	memcpy
add	esp, 0Ch
add	ebp, edi
sub	ebx, edi
lea	edi, [esi+0D2h]
call	sub_1000C5B0
test	eax, eax
jz	short loc_1000CB7F
mov	dword ptr [esi+20D8h], 0
or	edi, 0FFFFFFFFh
jmp	short loc_1000CB94
push	2000h		
push	edi		
push	esi		
xor	edx, edx	
xor	ecx, ecx	
call	sub_1000BBD0
add	esp, 0Ch
mov	edi, eax
mov	esi, Dst
push	ebx		
lea	ecx, [esi+0D2h]
push	ebp		
push	ecx		
call	memcpy
add	esp, 0Ch
mov	[esi+20D4h], ebx
mov	edx, [esi]
pop	ebp
push	edx
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
align 10h
test	esi, esi
jnz	short loc_1000CBE5
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
cmp	ebx, 10000h
ja	short loc_1000CBD4
mov	eax, [esi]
push	ebp
mov	ebp, ds:PR_Lock
push	edi
push	eax
call	ebp 
add	esp, 4
cmp	byte ptr [esi+0AAh], 1
jb	short loc_1000CC52
call	sub_1000C5B0
test	eax, eax
jz	short loc_1000CC1E
mov	dword ptr [esi+20D8h], 0
or	edi, 0FFFFFFFFh
jmp	short loc_1000CC31
push	0		
push	0		
push	esi		
xor	edx, edx	
xor	ecx, ecx	
call	sub_1000BBD0
add	esp, 0Ch
mov	edi, eax
mov	ecx, [esi]
push	ecx
call	ds:PR_Unlock
add	esp, 4
test	edi, edi
jnz	loc_1000CD4D
call	sub_10001120
mov	edx, [esi]
push	edx
call	ebp 
add	esp, 4
movzx	eax, byte ptr [esi+0D1h]
cmp	ebx, eax
ja	short loc_1000CCA9
mov	edx, [esp+8+Dst]
mov	ecx, esi
sub	ecx, eax
push	ebx		
add	ecx, 0D1h
push	ecx		
push	edx		
call	memcpy
movzx	eax, byte ptr [esi+0D1h]
mov	ecx, esi
push	ebx		
sub	ecx, eax
add	ecx, 0D1h
push	0		
push	ecx		
call	memset
mov	ecx, [esi]
sub	[esi+0D1h], bl
add	esp, 18h
push	ecx
xor	edi, edi
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	ebp
retn
mov	eax, [esi+20D4h]
cmp	ebx, 20h
jnb	short loc_1000CD18
test	eax, eax
jz	short loc_1000CCC0
lea	edx, [esi+0D2h]
jmp	short loc_1000CCC2
xor	edx, edx	
push	eax		
lea	ebp, [esi+0B1h]
push	20h		
push	esi		
mov	ecx, ebp	
call	sub_1000BDC0
mov	edi, eax
add	esp, 0Ch
mov	dword ptr [esi+20D4h], 0
test	edi, edi
jnz	short loc_1000CD41
mov	edx, [esp+8+Dst]
push	ebx		
push	ebp		
push	edx		
call	memcpy
push	ebx		
push	edi		
push	ebp		
call	memset
mov	ecx, [esi]
mov	al, 20h
add	esp, 18h
sub	al, bl
push	ecx
mov	[esi+0D1h], al
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	ebp
retn
test	eax, eax
jz	short loc_1000CD24
lea	edx, [esi+0D2h]
jmp	short loc_1000CD26
xor	edx, edx	
mov	ecx, [esp+8+Dst] 
push	eax		
push	ebx		
push	esi		
call	sub_1000BDC0
add	esp, 0Ch
mov	edi, eax
mov	dword ptr [esi+20D4h], 0
mov	ecx, [esi]
push	ecx
call	ds:PR_Unlock
add	esp, 4
mov	eax, edi
pop	edi
pop	ebp
retn
align 10h
			
mov	eax, [esp+arg_0]
push	ebx
mov	ebx, [esp+4+arg_4]
push	esi
mov	esi, Dst
push	eax
call	sub_1000CBD0
add	esp, 4
pop	esi
pop	ebx
retn
align 10h
push	edi
mov	edi, [esp+4+Size]
cmp	edi, 10h
jbe	short loc_1000CD9B
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	edi
retn
push	esi
push	18h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000CDAF
pop	esi
pop	edi
retn
mov	eax, [esp+8+Src]
push	edi		
push	eax		
lea	ecx, [esi+8]
push	ecx		
call	memcpy
mov	eax, [esp+14h+arg_0]
mov	edx, [esp+14h+arg_4]
add	esp, 0Ch
mov	[esi+4], eax
mov	[esi], edx
mov	eax, esi
pop	esi
pop	edi
retn
align 10h
cmp	[esp+arg_4], 0
jz	short locret_1000CDF2
mov	eax, [esp+arg_0]
push	eax
call	PORT_Free_Util
pop	ecx
retn
align 10h
sub	esp, 28h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+28h+var_4], eax
mov	ecx, [esp+28h+arg_0]
mov	eax, [esp+28h+arg_4]
mov	edx, [esp+28h+arg_10]
push	ebx
mov	ebx, [esp+2Ch+arg_8]
push	esi
mov	esi, [esp+30h+arg_18]
push	edi
mov	edi, [esp+34h+arg_14]
mov	[esp+34h+var_20], ecx
mov	[esp+34h+var_24], eax
mov	[esp+34h+var_1C], ebx
mov	[esp+34h+var_28], edx
cmp	edi, esi
jnb	short loc_1000CE5F
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+28h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
cmp	[esp+34h+arg_C], edi
jnb	short loc_1000CE89
push	0FFFFE003h
mov	[ebx], edi
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+28h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
xor	edx, edx
mov	eax, edi
div	esi
mov	edx, [esp+34h+arg_C]
push	ebp
push	esi
mov	ebp, eax
mov	eax, [esp+3Ch+var_28]
imul	ebp, esi
push	ebp
push	eax
mov	eax, [esp+44h+var_24]
push	edx
mov	edx, [ecx+4]
push	ebx
push	eax
mov	eax, [ecx]
push	edx
call	eax
add	esp, 1Ch
test	eax, eax
jz	short loc_1000CECC
pop	ebp
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+28h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
sub	edi, ebp
mov	[ebx], ebp
jnz	short loc_1000CEE7
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	ecx, [esp+28h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
mov	ecx, [esp+38h+var_28]
push	edi		
add	ecx, ebp
mov	ebx, edi
push	ecx		
lea	edx, [esp+40h+Dst]
sub	ebx, esi
push	edx		
add	ebx, ebp
call	memcpy
mov	eax, esi
sub	eax, edi
push	eax		
lea	ecx, [esp+edi+48h+Dst]
push	0		
push	ecx		
call	memset
mov	eax, [esp+50h+arg_C]
mov	ecx, [esp+50h+var_24]
push	esi
push	esi
sub	eax, ebx
lea	edx, [esp+58h+Dst]
push	edx
push	eax
lea	eax, [esp+60h+var_18]
push	eax
mov	eax, [esp+64h+var_20]
mov	edx, [eax+4]
mov	eax, [eax]
add	ecx, ebx
push	ecx
push	edx
call	eax
add	esp, 34h
test	eax, eax
jnz	short loc_1000CF45
mov	ecx, [esp+38h+var_1C]
add	ebx, esi
mov	[ecx], ebx
mov	ecx, [esp+38h+var_4]
pop	ebp
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 28h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, [esp+58h+arg_0]
mov	ecx, [esp+58h+Dst]
push	ebx
mov	ebx, [esp+5Ch+Size]
push	esi
mov	esi, [esp+60h+arg_18]
mov	[esp+60h+var_50], eax
mov	eax, [esp+60h+arg_8]
push	edi
mov	edi, [esp+64h+Src]
mov	[esp+64h+var_58], ecx
mov	[esp+64h+var_4C], eax
cmp	ebx, esi
jnb	short loc_1000CFBB
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
cmp	[esp+64h+arg_C], ebx
jnb	short loc_1000CFE5
push	0FFFFE003h
mov	[eax], ebx
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
xor	edx, edx
mov	eax, ebx
div	esi
push	ebp
mov	ebp, eax
imul	ebp, esi
mov	eax, ebx
sub	eax, ebp
mov	[esp+68h+var_48], eax
jz	short loc_1000D059
cmp	edi, ecx
jz	short loc_1000D00E
push	ebx		
push	edi		
push	ecx		
call	memcpy
mov	edi, [esp+74h+var_58]
add	esp, 0Ch
mov	eax, ebx
sub	eax, esi
mov	[esp+68h+var_54], eax
push	esi		
add	eax, edi
push	eax		
lea	ecx, [esp+70h+var_44]
push	ecx		
call	memcpy
mov	ecx, [esp+74h+var_48]
mov	eax, [esp+74h+var_54]
sub	eax, ecx
mov	[esp+74h+var_54], eax
push	ecx		
sub	ebx, ecx
add	ebx, [esp+78h+var_58]
add	eax, edi
push	eax		
push	ebx		
call	memcpy
mov	eax, [esp+80h+var_54]
add	eax, [esp+80h+var_58]
push	esi		
lea	edx, [esp+84h+var_44]
push	edx		
push	eax		
call	memcpy
add	esp, 24h
lea	ecx, [esi+esi]
cmp	ebp, ecx
jnb	short loc_1000D069
mov	eax, [esp+68h+var_50]
add	eax, 8
jmp	short loc_1000D06F
mov	eax, edi
sub	eax, ecx
add	eax, ebp
push	esi		
push	eax		
lea	edx, [esp+70h+var_24]
push	edx		
call	memcpy
mov	eax, edi
sub	eax, esi
push	esi		
add	eax, ebp
push	eax		
lea	ecx, [esp+7Ch+var_34]
push	ecx		
call	memcpy
mov	edx, [esp+80h+arg_C]
mov	ebx, [esp+80h+var_4C]
mov	eax, [esp+80h+var_58]
push	esi
push	ebp
push	edi
push	edx
push	ebx
push	eax
mov	eax, [esp+98h+var_50]
mov	ecx, [eax+4]
mov	edx, [eax]
push	ecx
call	edx
add	esp, 34h
test	eax, eax
jnz	loc_1000D175
mov	[ebx], ebp
mov	ebx, [esp+68h+var_48]
add	edi, ebp
test	ebx, ebx
jz	loc_1000D1EC
add	[esp+68h+var_58], ebp
push	esi		
push	eax		
lea	eax, [esp+70h+var_44]
push	eax		
call	memset
push	ebx		
lea	ecx, [esp+78h+var_44]
push	edi		
push	ecx		
call	memcpy
push	ebx		
lea	edx, [esp+84h+var_14]
push	edi		
push	edx		
call	memcpy
mov	edi, [esp+8Ch+var_58]
add	esp, 24h
sub	edi, esi
xor	eax, eax
test	esi, esi
jz	short loc_1000D10D
mov	cl, [esp+eax+68h+var_24]
xor	[esp+eax+68h+var_44], cl
inc	eax
cmp	eax, esi
jb	short loc_1000D100
xor	ecx, ecx
test	esi, esi
jz	short loc_1000D12E
mov	ebp, edi
lea	edx, [esp+68h+var_44]
sub	ebp, edx
jmp	short loc_1000D120
align 10h
			
lea	eax, [esp+ecx+68h+var_44]
mov	dl, [eax+ebp]
xor	[eax], dl
inc	ecx
cmp	ecx, esi
jb	short loc_1000D120
mov	ecx, [esp+68h+var_58]
push	ebx		
lea	eax, [esp+6Ch+var_44]
push	eax		
push	ecx		
call	memcpy
mov	eax, [esp+74h+var_4C]
add	[eax], ebx
push	ebx		
lea	edx, [esp+78h+var_14]
push	edx		
lea	eax, [esp+7Ch+var_44]
push	eax		
call	memcpy
mov	ebx, [esp+80h+var_50]
mov	eax, [ebx+4]
push	esi
push	esi
lea	ecx, [esp+88h+var_44]
push	ecx
mov	ecx, [ebx]
push	esi
lea	edx, [esp+90h+var_54]
push	edx
push	edi
push	eax
call	ecx
add	esp, 34h
test	eax, eax
jz	short loc_1000D18B
pop	ebp
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
test	esi, esi
jz	short loc_1000D1C0
lea	ecx, [esp+68h+var_24]
mov	eax, edi
sub	ecx, edi
mov	ebp, esi
lea	esp, [esp+0]
mov	dl, [ecx+eax]
xor	[eax], dl
inc	eax
dec	ebp
jnz	short loc_1000D1A0
test	esi, esi
jz	short loc_1000D1C0
lea	ecx, [esp+68h+var_34]
mov	eax, edi
sub	ecx, edi
mov	edi, esi
mov	dl, [ecx+eax]
xor	[eax], dl
inc	eax
dec	edi
jnz	short loc_1000D1B7
			
push	esi		
lea	eax, [esp+6Ch+var_34]
push	eax		
lea	ecx, [ebx+8]
push	ecx		
call	memcpy
push	esi
push	esi
lea	edx, [esp+7Ch+var_34]
push	edx
mov	edx, [ebx+4]
push	esi
lea	eax, [esp+84h+var_54]
push	eax
mov	eax, [ebx]
lea	ecx, [esp+88h+var_44]
push	ecx
push	edx
call	eax
add	esp, 28h
mov	ecx, [esp+68h+var_4]
pop	ebp
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
			
mov	edx, [esp+arg_C]
mov	eax, [edx]
push	esi
test	eax, eax
jz	short loc_1000D26F
mov	ecx, [esp+4+Size]
lea	esi, ds:0[ecx*8]
cmp	eax, esi
ja	short loc_1000D26F
mov	eax, [esp+4+arg_0]
mov	esi, [esp+4+arg_8]
mov	[eax], esi
mov	esi, [esp+4+arg_4]
mov	[eax+2Ch], ecx
mov	[eax+4], esi
mov	esi, [edx]
mov	[eax+28h], esi
cmp	ecx, 10h
ja	short loc_1000D25D
push	ecx		
add	edx, 4
push	edx		
add	eax, 8
push	eax		
call	memcpy
add	esp, 0Ch
xor	eax, eax
pop	esi
retn
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
			
			
push	esi
mov	esi, [esp+4+Dst]
push	30h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_1000D2B2
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
lea	eax, [edx+eax-1]
cmp	ecx, 8
jb	short loc_1000D2E1
lea	esp, [esp+0]
inc	byte ptr [eax]
mov	dl, [eax]
dec	eax
test	dl, dl
jnz	short locret_1000D2F9
sub	ecx, 8
cmp	ecx, 8
jnb	short loc_1000D2D0
test	ecx, ecx
jz	short locret_1000D2F9
mov	dl, 1
shl	dl, cl
dec	dl
mov	cl, dl
not	cl
or	cl, dl
mov	dl, [eax]
inc	dl
and	cl, dl
mov	[eax], cl
			
retn
align 10h
push	edi
mov	edi, edx
test	edi, edi
jz	short loc_1000D31E
push	esi
mov	esi, [esp+8+arg_0]
sub	ecx, eax
sub	esi, eax
mov	dl, [ecx+eax]
xor	dl, [eax]
inc	eax
dec	edi
mov	[esi+eax-1], dl
jnz	short loc_1000D310
pop	esi
pop	edi
retn
			
push	ecx
mov	eax, [esp+4+arg_14]
cmp	[esp+4+arg_C], eax
jnb	short loc_1000D343
mov	ecx, [esp+4+arg_8]
push	0FFFFE003h
mov	[ecx], eax
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ecx
retn
mov	edx, [esp+4+arg_8]
push	ebx
push	ebp
push	esi
mov	esi, [esp+10h+arg_18]
push	edi
mov	edi, [esp+14h+arg_0]
mov	dword ptr [edx], 0
mov	ebp, [edi+2Ch]
cmp	ebp, esi
jz	short loc_1000D3AC
mov	ecx, esi
sub	ecx, ebp
cmp	ecx, eax
jb	short loc_1000D36A
mov	ecx, eax
xor	eax, eax
lea	ebp, [edi+ebp+18h]
test	ecx, ecx
jz	short loc_1000D38B
mov	edx, [esp+14h+arg_10]
mov	dl, [eax+edx]
xor	dl, [ebp+0]
mov	ebx, [esp+14h+arg_4]
mov	[eax+ebx], dl
inc	eax
inc	ebp
cmp	eax, ecx
jb	short loc_1000D374
mov	eax, [esp+14h+arg_8]
add	[edi+2Ch], ecx
add	[eax], ecx
mov	eax, [esp+14h+arg_14]
add	[esp+14h+arg_4], ecx
add	[esp+14h+arg_10], ecx
sub	eax, ecx
mov	[esp+14h+arg_14], eax
jz	loc_1000D4A8
cmp	eax, esi
jb	loc_1000D447
lea	ebp, [edi+18h]
mov	ecx, [edi+4]
mov	edx, [edi]
push	esi
push	esi
lea	eax, [edi+8]
push	eax
push	esi
lea	eax, [esp+24h+arg_C]
push	eax
push	ebp
push	ecx
call	edx
mov	ecx, [edi+28h]
add	esp, 1Ch
lea	edx, [edi+esi+7]
cmp	ecx, 8
jb	short loc_1000D3F1
jmp	short loc_1000D3E0
align 10h
			
inc	byte ptr [edx]
mov	bl, [edx]
dec	edx
test	bl, bl
jnz	short loc_1000D409
sub	ecx, 8
cmp	ecx, 8
jnb	short loc_1000D3E0
test	ecx, ecx
jz	short loc_1000D409
mov	bl, 1
shl	bl, cl
dec	bl
mov	cl, bl
not	cl
or	cl, bl
mov	bl, [edx]
inc	bl
and	cl, bl
mov	[edx], cl
			
test	eax, eax
jnz	short loc_1000D47D
test	esi, esi
jz	short loc_1000D427
mov	dl, [eax+ebp]
mov	ecx, [esp+14h+arg_10]
xor	dl, [eax+ecx]
mov	ecx, [esp+14h+arg_4]
mov	[eax+ecx], dl
inc	eax
cmp	eax, esi
jb	short loc_1000D411
mov	eax, [esp+14h+arg_8]
add	[eax], esi
mov	eax, [esp+14h+arg_14]
add	[esp+14h+arg_4], esi
add	[esp+14h+arg_10], esi
sub	eax, esi
mov	[esp+14h+arg_14], eax
cmp	eax, esi
jnb	loc_1000D3B7
test	eax, eax
jz	short loc_1000D4A8
mov	eax, [edi+4]
mov	ecx, [edi]
push	esi
push	esi
lea	ebp, [edi+8]
push	ebp
push	esi
lea	edx, [esp+24h+arg_C]
push	edx
lea	ebx, [edi+18h]
push	ebx
push	eax
call	ecx
mov	ecx, [edi+28h]
mov	[esp+30h+var_4], eax
add	esp, 1Ch
mov	eax, esi
mov	edx, ebp
call	sub_1000D2C0
cmp	[esp+14h+var_4], 0
jz	short loc_1000D486
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
mov	edx, [esp+14h+arg_4]
mov	esi, [esp+14h+arg_14]
mov	eax, [esp+14h+arg_10]
push	edx
mov	edx, esi
mov	ecx, ebx
call	sub_1000D300
mov	eax, [esp+18h+arg_8]
add	esp, 4
mov	[edi+2Ch], esi
add	[eax], esi
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
push	esi
push	30h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000D4C3
pop	esi
retn
mov	eax, [esp+4+Size]
mov	ecx, [esp+4+arg_8]
mov	edx, [esp+4+arg_4]
push	eax		
mov	eax, [esp+8+arg_0]
push	ecx		
push	edx		
push	eax		
push	esi		
call	sub_1000D210
add	esp, 14h
test	eax, eax
jz	short loc_1000D4F9
push	30h		
push	0		
push	esi		
call	memset
push	esi
call	PORT_Free_Util
add	esp, 10h
xor	esi, esi
mov	eax, esi
pop	esi
retn
align 10h
			
xor	eax, eax
test	esi, esi
jz	short locret_1000D522
lea	ecx, [ecx+esi-1]
lea	ebx, [ebx+0]
movzx	edx, byte ptr [eax+edi]
mov	dl, ds:byte_1003B068[edx]
mov	[ecx], dl
inc	eax
dec	ecx
cmp	eax, esi
jb	short loc_1000D510
retn
align 10h
sub	esp, 18h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+18h+var_4], eax
push	ebp
mov	ebp, [esp+1Ch+arg_0]
push	esi
push	edi
add	ebp, 10h
push	ebp
mov	[esp+28h+var_18], ecx
mov	esi, edx
call	sub_10029E60
mov	edi, eax
add	esp, 4
test	edi, edi
jg	short loc_1000D57F
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+18h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 18h
retn
push	ebx
lea	ebx, [esp+28h+Dst]
cmp	edi, esi
ja	short loc_1000D5B1
jz	short loc_1000D5A2
mov	ebx, esi
sub	ebx, edi
push	ebx		
lea	edx, [esp+2Ch+Dst]
push	0		
push	edx		
call	memset
add	esp, 0Ch
lea	ebx, [esp+ebx+28h+Dst]
push	edi
push	ebx
push	ebp
call	sub_10029ED0
add	esp, 0Ch
test	eax, eax
jns	short loc_1000D5D4
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+18h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 18h
retn
mov	ecx, [esp+28h+var_18]
lea	edi, [esp+28h+Dst]
call	sub_1000D500
mov	ecx, [esp+28h+var_4]
pop	ebx
pop	edi
pop	esi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 18h
retn
align 10h
			
sub	esp, 18h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+18h+var_4], eax
cmp	[esp+18h+arg_4], 0
push	ebx
push	ebp
mov	[esp+20h+var_18], 0
jbe	short loc_1000D691
lea	ebp, [edi+20h]
inc	dword ptr [edi+48h]
xor	eax, eax
test	esi, esi
jz	short loc_1000D646
lea	ecx, [esp+esi+20h+var_18+3]
nop
mov	edx, [esp+20h+arg_0]
movzx	edx, byte ptr [eax+edx]
mov	dl, ds:byte_1003B068[edx]
mov	[ecx], dl
inc	eax
dec	ecx
cmp	eax, esi
jb	short loc_1000D630
push	esi
lea	eax, [esp+24h+var_14]
push	eax
push	ebp
call	sub_10029D30
add	esp, 0Ch
test	eax, eax
js	short loc_1000D6A4
push	ebp
lea	ebx, [edi+10h]
push	ebp
push	ebx
call	sub_1002CB50
add	esp, 0Ch
test	eax, eax
js	short loc_1000D6A4
mov	ecx, [edi+30h]
push	ebx
push	ecx
push	edi
push	ebp
call	sub_1002D5B0
add	esp, 10h
test	eax, eax
js	short loc_1000D6A4
mov	eax, [esp+20h+var_18]
add	[esp+20h+arg_0], esi
inc	eax
mov	[esp+20h+var_18], eax
cmp	eax, [esp+20h+arg_4]
jb	short loc_1000D622
pop	ebp
xor	eax, eax
pop	ebx
mov	ecx, [esp+18h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 18h
retn
			
cmp	eax, 0FFFFFFFCh
jz	short loc_1000D6C8
cmp	eax, 0FFFFFFFDh
jz	short loc_1000D6C1
cmp	eax, 0FFFFFFFEh
jz	short loc_1000D6BA
push	0FFFFE001h
jmp	short loc_1000D6CD
push	0FFFFE013h
jmp	short loc_1000D6CD
push	0FFFFE002h
jmp	short loc_1000D6CD
push	0FFFFE005h
			
call	PORT_SetError_Util
mov	ecx, [esp+24h+var_4]
add	esp, 4
pop	ebp
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 18h
retn
align 10h
			
push	ecx
push	ebx
push	ebp
mov	ebp, [esp+0Ch+Size]
push	esi
mov	ebx, eax
push	edi
mov	edi, ecx
lea	eax, ds:0[ebx*8]
add	[edi+60h], eax
mov	eax, [edi+44h]
adc	dword ptr [edi+64h], 0
test	eax, eax
jz	short loc_1000D770
mov	esi, ebp
sub	esi, eax
cmp	ebx, esi
jnb	short loc_1000D71C
mov	esi, ebx
test	esi, esi
jz	short loc_1000D733
mov	ecx, [esp+14h+Src]
push	esi		
push	ecx		
lea	edx, [eax+edi+34h]
push	edx		
call	memcpy
add	esp, 0Ch
add	[esp+14h+Src], esi
add	[edi+44h], esi
sub	ebx, esi
jz	short loc_1000D7B8
lea	eax, [edi+34h]
push	1
push	eax
mov	esi, ebp
call	sub_1000D600
push	ebp		
mov	esi, eax
lea	eax, [edi+34h]
push	0		
push	eax		
call	memset
add	esp, 14h
mov	dword ptr [edi+44h], 0
test	esi, esi
jz	short loc_1000D770
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
			
xor	edx, edx
mov	eax, ebx
div	ebp
mov	[esp+14h+var_4], eax
test	eax, eax
jz	short loc_1000D79F
push	eax
mov	eax, [esp+18h+Src]
push	eax
mov	esi, ebp
call	sub_1000D600
add	esp, 8
test	eax, eax
jnz	short loc_1000D767
mov	eax, [esp+14h+var_4]
imul	eax, ebp
add	[esp+14h+Src], eax
sub	ebx, eax
test	ebx, ebx
jz	short loc_1000D7B8
mov	ecx, [esp+14h+Src]
push	ebx		
push	ecx		
lea	edx, [edi+34h]
push	edx		
call	memcpy
add	esp, 0Ch
mov	[edi+44h], ebx
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
			
sub	esp, 20h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+20h+var_4], eax
mov	eax, [esi+54h]
mov	ecx, [esi+58h]
mov	[esi+50h], ecx
mov	[esi+4Ch], eax
mov	dl, [esi+67h]
mov	[esi+54h], dl
mov	al, [esi+66h]
mov	[esi+55h], al
mov	eax, [esi+60h]
mov	edx, [esi+64h]
push	ebx
mov	cl, 28h
call	sub_10037470
mov	[esi+56h], al
mov	eax, [esi+60h]
mov	edx, [esi+64h]
mov	cl, 20h
call	sub_10037470
mov	[esi+57h], al
mov	ecx, [esi+60h]
mov	edx, [esi+64h]
shrd	ecx, edx, 18h
mov	[esi+58h], cl
mov	eax, [esi+60h]
mov	ecx, [esi+64h]
shrd	eax, ecx, 10h
mov	[esi+59h], al
mov	eax, [esi+64h]
shr	edx, 18h
mov	edx, [esi+60h]
shrd	edx, eax, 8
mov	[esi+5Ah], dl
shr	ecx, 10h
mov	cl, [esi+60h]
mov	[esi+5Bh], cl
shr	eax, 8
mov	eax, [esi+44h]
xor	ebx, ebx
mov	[esi+60h], ebx
mov	[esi+64h], ebx
cmp	eax, ebx
jz	loc_1000D959
push	ebp
mov	edx, edi
sub	edx, eax
push	edx		
lea	eax, [eax+esi+34h]
push	ebx		
push	eax		
call	memset
lea	edx, [esi+34h]
add	esp, 0Ch
mov	[esp+28h+var_20], edx
mov	[esp+28h+var_18], 0FFFFFFFFh
mov	[esp+28h+var_1C], ebx
lea	ebp, [esi+20h]
jmp	short loc_1000D884
align 10h
mov	edx, [esp+28h+var_20]
inc	dword ptr [esi+48h]
xor	eax, eax
test	edi, edi
jz	short loc_1000D8A3
lea	ecx, [esp+edi+28h+var_18+3]
movzx	ebx, byte ptr [eax+edx]
mov	bl, ds:byte_1003B068[ebx]
mov	[ecx], bl
inc	eax
dec	ecx
cmp	eax, edi
jb	short loc_1000D891
push	edi
lea	ecx, [esp+2Ch+var_14]
push	ecx
push	ebp
call	sub_10029D30
add	esp, 0Ch
test	eax, eax
js	short loc_1000D8F7
push	ebp
lea	ebx, [esi+10h]
push	ebp
push	ebx
call	sub_1002CB50
add	esp, 0Ch
test	eax, eax
js	short loc_1000D8F7
mov	edx, [esi+30h]
push	ebx
push	edx
push	esi
push	ebp
call	sub_1002D5B0
add	esp, 10h
test	eax, eax
js	short loc_1000D8F7
mov	eax, [esp+28h+var_1C]
add	[esp+28h+var_20], edi
inc	eax
mov	[esp+28h+var_1C], eax
cmp	eax, 1
jb	short loc_1000D880
mov	[esp+28h+var_18], 0
jmp	short loc_1000D928
			
cmp	eax, 0FFFFFFFCh
jz	short loc_1000D91B
cmp	eax, 0FFFFFFFDh
jz	short loc_1000D914
cmp	eax, 0FFFFFFFEh
jz	short loc_1000D90D
push	0FFFFE001h
jmp	short loc_1000D920
push	0FFFFE013h
jmp	short loc_1000D920
push	0FFFFE002h
jmp	short loc_1000D920
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
push	edi		
lea	eax, [esi+34h]
push	0		
push	eax		
call	memset
add	esp, 0Ch
cmp	[esp+28h+var_18], 0
mov	dword ptr [esi+44h], 0
pop	ebp
jz	short loc_1000D959
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+20h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 20h
retn
			
mov	ecx, [esp+24h+var_4]
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 20h
retn
align 10h
			
sub	esp, 1Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+1Ch+var_4], eax
mov	eax, [esp+1Ch+arg_0]
push	ebp
mov	ebp, [esp+20h+arg_8]
push	esi
push	edi
mov	edi, ebp
mov	esi, ebx
mov	[esp+28h+Dst], eax
mov	[esp+28h+var_1C], ecx
call	sub_1000D7C0
test	eax, eax
jz	short loc_1000D9B3
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+1Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 1Ch
retn
xor	edx, edx
mov	eax, 10h
div	ebp
lea	edx, [ebx+4Ch]
mov	esi, ebp
mov	edi, ebx
push	eax
push	edx
call	sub_1000D600
add	esp, 8
test	eax, eax
jnz	short loc_1000D99E
push	ebx
mov	edx, ebp
lea	ecx, [esp+2Ch+Src]
call	sub_1000D530
add	esp, 4
test	eax, eax
jnz	short loc_1000D99E
mov	esi, [esp+28h+Size]
cmp	esi, ebp
jbe	short loc_1000D9EE
mov	esi, ebp
mov	ecx, [esp+28h+Dst]
push	esi		
lea	eax, [esp+2Ch+Src]
push	eax		
push	ecx		
call	memcpy
mov	edx, [esp+34h+var_1C]
mov	ecx, [esp+34h+var_4]
add	esp, 0Ch
pop	edi
mov	[edx], esi
pop	esi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 1Ch
retn
align 10h
push	ebx
push	ebp
mov	ebp, [esp+8+arg_4]
push	esi
mov	esi, ecx
push	edi
mov	edi, eax
xor	eax, eax
xor	ebx, ebx
mov	[esi+60h], ebx
mov	[esi+64h], ebx
mov	[esi+4Ch], eax
mov	[esi+50h], eax
mov	[esi+54h], eax
mov	[esi+58h], eax
lea	eax, [esi+10h]
push	eax
mov	[esi+44h], ebx
call	sub_10028F40
add	esp, 4
mov	[esi+48h], ebx
cmp	ebp, ebx
jz	short loc_1000DA7F
mov	ecx, [esp+10h+arg_0]
push	edi
push	ecx
mov	eax, ebp
mov	ecx, esi
call	sub_1000D6F0
add	esp, 8
test	eax, eax
jz	short loc_1000DA76
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
call	sub_1000D7C0
test	eax, eax
jnz	short loc_1000DA6E
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
lea	eax, [esi+68h]
push	0		
push	eax		
call	sub_1000D290
push	esi
call	sub_10028EF0
lea	ecx, [esi+10h]
push	ecx
call	sub_10028EF0
lea	edx, [esi+20h]
push	edx
call	sub_10028EF0
add	esp, 14h
cmp	[esp+4+arg_4], 0
mov	dword ptr [esi+0Ch], 0
mov	dword ptr [esi+1Ch], 0
mov	dword ptr [esi+2Ch], 0
jz	short loc_1000DAE0
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
push	ebx
push	ebp
mov	ebx, eax
mov	eax, [ebx+98h]
push	esi
lea	esi, [eax+7]
shr	esi, 3
lea	ebp, ds:0[esi*8]
sub	ebp, eax
test	edi, edi
jnz	short loc_1000DB28
mov	eax, [esp+0Ch+arg_0]
push	0FFFFE003h
mov	[eax], esi
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	ecx, [esp+0Ch+arg_0]
cmp	[esp+0Ch+arg_4], esi
jnb	short loc_1000DB48
push	0FFFFE003h
mov	[ecx], esi
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	edx, [esp+0Ch+arg_8]
push	edx		
push	esi		
push	edi		
call	sub_1000D970
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000DB21
mov	ecx, [esp+0Ch+arg_0]
cmp	[ecx], eax
jbe	short loc_1000DB72
mov	dl, [ebx+eax+9Ch]
xor	[eax+edi], dl
inc	eax
cmp	eax, [ecx]
jb	short loc_1000DB63
test	ebp, ebp
jz	short loc_1000DB84
mov	al, 1
mov	ecx, ebp
shl	al, cl
dec	al
not	al
and	[esi+edi-1], al
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
mov	ecx, [esp+arg_14]
push	ebp
mov	ebp, [esp+4+arg_0]
mov	eax, [ebp+98h]
add	eax, 7
or	edx, 0FFFFFFFFh
shr	eax, 3
sub	edx, ecx
cmp	edx, eax
jnb	short loc_1000DBC0
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebp
retn
push	edi
mov	edi, [esp+8+arg_C]
add	eax, ecx
cmp	edi, eax
jnb	short loc_1000DBE4
mov	ecx, [esp+8+arg_8]
push	0FFFFE003h
mov	[ecx], eax
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	edx, [esp+8+arg_18]
mov	eax, [esp+8+arg_10]
push	ebx
mov	ebx, [esp+0Ch+Dst]
push	esi
mov	esi, [esp+10h+arg_8]
push	edx
push	ecx
push	eax
push	edi
push	esi
lea	ecx, [ebp+68h]
push	ebx
push	ecx
call	sub_1000D320
add	esp, 1Ch
test	eax, eax
jnz	short loc_1000DC56
mov	edx, [esp+10h+arg_18]
mov	eax, [esi]
push	edx
push	ebx
mov	ecx, ebp
call	sub_1000D6F0
add	esp, 8
test	eax, eax
mov	eax, [esi]
jnz	short loc_1000DC44
mov	ecx, [esp+10h+arg_18]
sub	edi, eax
push	ecx
push	edi
lea	edx, [esp+18h+arg_0]
lea	edi, [eax+ebx]
push	edx
mov	eax, ebp
call	sub_1000DAF0
add	esp, 0Ch
test	eax, eax
jz	short loc_1000DC5E
mov	eax, [esi]
push	eax		
push	0		
push	ebx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi], 0
pop	esi
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	ecx, [esp+10h+arg_0]
add	[esi], ecx
pop	esi
pop	ebx
pop	edi
xor	eax, eax
pop	ebp
retn
align 10h
sub	esp, 24h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+24h+var_4], eax
mov	eax, [esp+24h+arg_4]
mov	ecx, [esp+24h+arg_8]
push	ebx
mov	ebx, [esp+28h+arg_14]
push	ebp
mov	ebp, [esp+2Ch+arg_0]
push	esi
mov	esi, [ebp+98h]
add	esi, 7
mov	[esp+30h+var_24], eax
mov	eax, [esp+30h+arg_10]
shr	esi, 3
mov	[esp+30h+var_1C], ecx
mov	[esp+30h+var_20], eax
cmp	ebx, esi
jnb	short loc_1000DCD3
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+24h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24h
retn
push	edi
mov	edi, [esp+34h+arg_18]
push	edi
sub	ebx, esi
push	eax
mov	eax, ebx
mov	ecx, ebp
call	sub_1000D6F0
add	esp, 8
test	eax, eax
jnz	short loc_1000DD2A
push	edi
push	edi
lea	edx, [esp+3Ch+var_18]
push	edx
lea	edi, [esp+40h+var_14]
mov	eax, ebp
call	sub_1000DAF0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000DD2A
push	esi
mov	esi, [esp+38h+var_20]
lea	eax, [ebx+esi]
push	eax
mov	ecx, edi
push	ecx
call	NSS_SecureMemcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_1000DD40
push	0FFFFE002h
call	PORT_SetError_Util
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
mov	edx, [esp+34h+arg_18]
mov	eax, [esp+34h+arg_C]
mov	ecx, [esp+34h+var_1C]
push	edx
mov	edx, [esp+38h+var_24]
push	ebx
push	esi
push	eax
push	ecx
push	edx
add	ebp, 68h
push	ebp
call	sub_1000D320
mov	ecx, [esp+50h+var_4]
add	esp, 1Ch
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24h
retn
align 10h
sub	esp, 14h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+14h+var_4], eax
push	ebp
push	esi
xor	ebp, ebp
push	edi
push	ebx
mov	esi, ecx
mov	[ebx+0Ch], ebp
mov	[ebx+1Ch], ebp
mov	[ebx+2Ch], ebp
call	sub_1002A030
add	esp, 4
test	eax, eax
js	short loc_1000DE03
lea	edi, [ebx+10h]
push	edi
call	sub_1002A030
add	esp, 4
test	eax, eax
js	short loc_1000DE03
lea	eax, [ebx+20h]
push	eax
call	sub_1002A030
add	esp, 4
test	eax, eax
js	short loc_1000DE03
push	edi
call	sub_10028F40
mov	edi, [esp+24h+arg_0]
lea	ecx, [esp+24h+var_14]
call	sub_1000D500
push	esi
lea	ecx, [esp+28h+var_14]
push	ecx
push	ebx
call	sub_10029D30
add	esp, 10h
test	eax, eax
js	short loc_1000DE03
cmp	esi, 10h
jz	short loc_1000DE3C
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
			
push	ebx
call	sub_10028EF0
lea	edx, [ebx+10h]
push	edx
call	sub_10028EF0
lea	eax, [ebx+20h]
push	eax
call	sub_10028EF0
add	esp, 0Ch
pop	edi
pop	esi
mov	[ebx+0Ch], ebp
mov	[ebx+1Ch], ebp
mov	[ebx+2Ch], ebp
or	eax, 0FFFFFFFFh
pop	ebp
mov	ecx, [esp+14h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 14h
retn
mov	ecx, [esp+20h+var_4]
xor	eax, eax
mov	[ebx+60h], ebp
mov	[ebx+64h], ebp
mov	[ebx+44h], ebp
mov	[ebx+48h], ebp
pop	edi
mov	dword ptr [ebx+30h], offset dword_1003B168
mov	[ebx+4Ch], eax
pop	esi
mov	[ebx+50h], eax
pop	ebp
mov	[ebx+54h], eax
xor	ecx, esp
mov	[ebx+58h], eax
call	@__security_check_cookie@4 
add	esp, 14h
retn
align 10h
sub	esp, 34h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+34h+var_4], eax
mov	eax, [esp+34h+arg_4]
push	ebp
mov	ebp, [esp+38h+arg_8]
push	esi
mov	esi, [esp+3Ch+Size]
push	edi
mov	edi, [esp+40h+arg_0]
mov	[esp+40h+var_2C], edi
mov	[esp+40h+var_34], eax
cmp	esi, 10h
ja	loc_1000E032
push	ebx
push	0B0h
call	PORT_ZAlloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jz	loc_1000E008
push	esi		
lea	ecx, [esp+48h+Dst]
push	0		
push	ecx		
call	memset
push	esi
push	esi
lea	edx, [esp+58h+Dst]
push	edx
push	esi
lea	eax, [esp+60h+var_30]
push	eax
mov	ecx, edx
push	ecx
push	edi
call	[esp+6Ch+var_34]
add	esp, 28h
test	eax, eax
jnz	loc_1000DFFF
lea	edx, [esp+44h+Dst]
push	edx
mov	ecx, esi
call	sub_1000DD80
add	esp, 4
test	eax, eax
jnz	loc_1000DFFF
mov	[esp+44h+var_28], 20h
mov	[esp+44h+var_24], eax
mov	[esp+44h+var_20], eax
mov	[esp+44h+var_1C], eax
mov	[esp+44h+var_18], eax
cmp	esi, 10h
jnz	short loc_1000DF3F
cmp	dword ptr [ebp+4], 0Ch
jnz	short loc_1000DF3F
mov	eax, [ebp+0]
mov	ecx, [eax]
mov	[esp+44h+var_24], ecx
mov	edx, [eax+4]
mov	[esp+44h+var_20], edx
mov	eax, [eax+8]
mov	[esp+44h+var_1C], eax
mov	byte ptr [esp+44h+var_18+3], 1
jmp	short loc_1000DF70
			
mov	ecx, [ebp+0]
mov	eax, [ebp+4]
push	esi
push	ecx
mov	ecx, ebx
call	sub_1000D6F0
add	esp, 8
test	eax, eax
jnz	loc_1000DFD9
push	esi		
lea	edx, [esp+48h+var_24]
push	esi		
push	edx		
lea	ecx, [esp+50h+var_30]
call	sub_1000D970
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000DFD9
mov	ecx, [esp+44h+var_34]
mov	edx, [esp+44h+var_2C]
push	esi		
lea	eax, [esp+48h+var_28]
push	eax		
push	ecx		
push	edx		
lea	edi, [ebx+68h]
push	edi		
call	sub_1000D210
add	esp, 14h
test	eax, eax
jnz	short loc_1000DFD9
mov	eax, [ebp+10h]
push	esi
push	esi
mov	[ebx+98h], eax
lea	eax, [ebx+9Ch]
push	eax
push	esi
lea	ecx, [esp+54h+var_30]
push	ecx
push	eax
push	edi
call	sub_1000D320
add	esp, 1Ch
test	eax, eax
jnz	short loc_1000DFCE
mov	edx, [ebp+0Ch]
mov	eax, [ebp+8]
push	edx
push	eax
mov	eax, esi
mov	ecx, ebx
call	sub_1000DA20
add	esp, 8
test	eax, eax
jz	short loc_1000E01D
push	0		
push	edi		
call	sub_1000D290
add	esp, 8
			
push	ebx
call	sub_10028EF0
lea	ecx, [ebx+10h]
push	ecx
call	sub_10028EF0
lea	edx, [ebx+20h]
push	edx
call	sub_10028EF0
add	esp, 0Ch
xor	eax, eax
mov	[ebx+0Ch], eax
mov	[ebx+1Ch], eax
mov	[ebx+2Ch], eax
			
push	ebx
call	PORT_Free_Util
add	esp, 4
pop	ebx
pop	edi
pop	esi
xor	eax, eax
pop	ebp
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
mov	eax, ebx
pop	ebx
pop	edi
pop	esi
pop	ebp
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
push	0FFFFE001h
call	PORT_SetError_Util
mov	ecx, [esp+44h+var_4]
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 34h
retn
align 10h
			
sub	esp, 224h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+224h+var_4], eax
mov	eax, [esp+224h+arg_0]
push	ebx
push	ebp
mov	ebp, [esp+22Ch+arg_8]
push	esi
push	edi
mov	edi, [esp+234h+arg_14]
mov	[esp+234h+var_1D8], eax
mov	eax, [esp+234h+arg_10]
mov	[esp+234h+var_1E4], ecx
mov	ecx, [esp+234h+arg_18]
mov	[esp+234h+Src],	edx
mov	edx, [ebp+4]
mov	[esp+234h+var_20C], eax
mov	[esp+234h+var_1F4], edi
mov	[esp+234h+var_204], ecx
call	edx
mov	esi, [ebp+1Ch]
xor	edx, edx
cmp	esi, 40h
setnz	dl
xor	ecx, ecx
cmp	dword ptr [ebp+20h], 2
mov	ebx, eax
setz	cl
mov	eax, [ebp+0]
mov	[esp+234h+var_208], eax
lea	edx, ds:8[edx*8]
mov	[esp+234h+var_200], edx
mov	[esp+234h+var_1E0], ebx
lea	ecx, ds:28h[ecx*8]
mov	[esp+234h+var_1DC], ecx
xor	ecx, ecx
cmp	[esp+234h+arg_24], cl
setz	cl
lea	ecx, ds:2[ecx*4]
mov	[esp+234h+var_1FC], ecx
mov	ecx, edi
sub	ecx, eax
mov	eax, [esp+234h+arg_20]
add	edx, ecx
add	edx, esi
lea	eax, [edx+eax-1]
xor	edx, edx
div	esi
add	ecx, [esp+234h+arg_1C]
xor	edx, edx
mov	edi, eax
mov	eax, ecx
div	esi
mov	[esp+234h+var_1F0], eax
mov	eax, [esp+234h+var_200]
mov	[esp+234h+var_1E8], edx
xor	edx, edx
add	eax, ecx
div	esi
xor	edx, edx
mov	[esp+234h+var_1F8], eax
xor	eax, eax
cmp	[esp+234h+arg_24], al
mov	[esp+234h+var_210], eax
setnz	dl
mov	[esp+234h+var_21C], eax
mov	eax, [esp+234h+var_1FC]
add	edx, eax
cmp	edi, edx
jbe	short loc_1000E171
sub	edi, eax
mov	eax, edi
mov	[esp+234h+var_210], eax
imul	eax, esi
mov	[esp+234h+var_21C], eax
mov	eax, [ebp+10h]
lea	edi, ds:0[ecx*8]
push	ebx
mov	[esp+238h+var_220], edi
call	eax
add	esp, 4
cmp	[esp+234h+arg_24], 0
jnz	short loc_1000E1DF
push	esi		
lea	edx, [esp+238h+Dst]
lea	ecx, [edi+esi*8]
push	0		
push	edx		
mov	[esp+240h+var_220], ecx
call	memset
mov	eax, [esp+240h+Size]
mov	ecx, [esp+240h+Src]
push	eax		
push	ecx		
lea	edx, [esp+248h+Dst]
push	edx		
call	memcpy
add	esp, 18h
xor	eax, eax
test	esi, esi
jz	short loc_1000E1D0
xor	[esp+eax+234h+Dst], 36h
inc	eax
cmp	eax, esi
jb	short loc_1000E1C6
mov	ecx, [ebp+14h]
push	esi
lea	eax, [esp+238h+Dst]
push	eax
push	ebx
call	ecx
add	esp, 0Ch
xor	eax, eax
xor	ecx, ecx
cmp	[esp+234h+var_200], 10h
mov	[esp+234h+var_1D4], eax
mov	[esp+234h+var_1D0], eax
mov	[esp+234h+var_1CC], eax
mov	[esp+234h+var_1C8], eax
jnz	short loc_1000E1FD
lea	ecx, [eax+8]
cmp	dword ptr [ebp+20h], 2
jnz	short loc_1000E22B
lea	edx, [esp+ecx+234h+var_1D4]
xor	eax, eax
xor	edi, edi
mov	[esp+234h+var_218], edx
nop
mov	edx, [esp+234h+var_220]
mov	ecx, edi
shr	edx, cl
mov	ecx, [esp+234h+var_218]
add	edi, 8
inc	eax
mov	[ecx+eax-1], dl
cmp	edi, 20h
jb	short loc_1000E210
jmp	short loc_1000E24E
xor	edi, edi
lea	eax, [esp+ecx+234h+var_1D0]
mov	edx, [esp+234h+var_220]
mov	ecx, 3
sub	ecx, edi
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
shr	edx, cl
inc	edi
mov	[eax+edi-1], dl
cmp	edi, 4
jb	short loc_1000E231
cmp	[esp+234h+var_21C], 0
jbe	loc_1000E373
cmp	[esp+234h+arg_24], 0
mov	eax, [esp+234h+var_20C]
jz	loc_1000E2F8
mov	edi, [esp+234h+var_1F4]
mov	ecx, [ebp+14h]
push	esi
push	eax
push	ebx
sub	edi, esi
call	ecx
mov	edx, [esp+240h+var_20C]
push	edi		
add	edx, esi
push	edx		
lea	eax, [esp+248h+var_104]
push	eax		
call	memcpy
mov	edx, [esp+24Ch+var_204]
mov	ecx, esi
sub	ecx, edi
push	ecx		
push	edx		
lea	eax, [esp+edi+254h+var_104]
push	eax		
call	memcpy
mov	edx, [ebp+14h]
push	esi
lea	ecx, [esp+25Ch+var_104]
push	ecx
push	ebx
call	edx
mov	eax, [esp+264h+var_21C]
xor	edx, edx
div	esi
add	esp, 30h
lea	ecx, [eax-1]
cmp	ecx, 1
jbe	loc_1000E373
mov	eax, [esp+234h+var_204]
sub	eax, edi
add	eax, esi
mov	[esp+234h+var_220], eax
lea	edi, [ecx-1]
jmp	short loc_1000E2E4
align 10h
mov	eax, [esp+234h+var_220]
push	esi
push	eax
mov	eax, [ebp+14h]
push	ebx
call	eax
add	[esp+240h+var_220], esi
add	esp, 0Ch
dec	edi
jnz	short loc_1000E2E0
jmp	short loc_1000E373
mov	ecx, [eax]
mov	edx, [eax+4]
mov	edi, [esp+234h+var_204]
mov	[esp+234h+var_104], ecx
mov	ecx, [eax+8]
mov	[esp+234h+var_100], edx
mov	dl, [eax+0Ch]
lea	eax, [esi-0Dh]
push	eax		
mov	[esp+238h+var_FC], ecx
lea	ecx, [esp+238h+var_F7]
push	edi		
push	ecx		
mov	[esp+240h+var_F8], dl
call	memcpy
mov	eax, [ebp+14h]
push	esi
lea	edx, [esp+244h+var_104]
push	edx
push	ebx
call	eax
mov	eax, [esp+24Ch+var_21C]
xor	edx, edx
div	esi
add	esp, 18h
cmp	eax, 1
jbe	short loc_1000E373
dec	eax
lea	edi, [edi+esi-0Dh]
mov	[esp+234h+var_218], eax
lea	ecx, [ecx+0]
mov	ecx, [ebp+14h]
push	esi
push	edi
push	ebx
call	ecx
add	esp, 0Ch
add	edi, esi
dec	[esp+234h+var_218]
jnz	short loc_1000E360
			
push	40h		
lea	edx, [esp+238h+var_144]
push	0		
push	edx		
call	memset
mov	eax, [esp+240h+var_210]
mov	ecx, [esp+240h+var_1FC]
add	ecx, eax
add	esp, 0Ch
mov	[esp+234h+var_218], eax
mov	[esp+234h+var_210], ecx
cmp	eax, ecx
ja	loc_1000E51A
movzx	edx, byte ptr [esp+234h+var_1F0]
movzx	eax, byte ptr [esp+234h+var_1F8]
mov	[esp+234h+var_1F0], edx
mov	[esp+234h+var_1F8], eax
movzx	edi, byte ptr [esp+234h+var_218]
mov	eax, [esp+234h+var_1F0]
mov	ecx, [esp+234h+var_1F8]
xor	eax, edi
xor	ecx, edi
dec	eax
dec	ecx
sar	eax, 1Fh
sar	ecx, 1Fh
mov	[esp+234h+var_213], al
mov	[esp+234h+var_221], cl
test	esi, esi
jz	loc_1000E4B8
mov	edi, [esp+234h+var_1E8]
not	cl
mov	[esp+234h+var_211], cl
or	cl, al
mov	[esp+234h+var_214], cl
mov	ecx, esi
sub	ecx, [esp+234h+var_200]
neg	edi
mov	[esp+234h+var_1FC], ecx
mov	ecx, [esp+234h+var_200]
sub	ecx, esi
lea	edx, [esp+ecx+234h+var_1D4]
mov	[esp+234h+var_220], edx
jmp	short loc_1000E414
jmp	short loc_1000E410
align 10h
			
mov	al, [esp+234h+var_213]
mov	ebx, [esp+234h+var_21C]
mov	ecx, edi
lea	edx, [edi-1]
not	ecx
not	edx
sar	ecx, 1Fh
sar	edx, 1Fh
and	cl, al
and	dl, al
mov	eax, [esp+234h+var_1F4]
mov	[esp+234h+var_212], 0
cmp	ebx, eax
jnb	short loc_1000E441
mov	eax, [esp+234h+var_20C]
mov	bl, [eax+ebx]
jmp	short loc_1000E465
mov	ebx, [esp+234h+arg_20]
add	eax, ebx
cmp	[esp+234h+var_21C], eax
jnb	short loc_1000E461
mov	eax, [esp+234h+var_204]
sub	eax, [esp+234h+var_1F4]
mov	ebx, [esp+234h+var_21C]
mov	bl, [eax+ebx]
jmp	short loc_1000E465
mov	bl, [esp+234h+var_212]
			
inc	[esp+234h+var_21C]
mov	al, cl
not	al
and	al, bl
and	cl, 80h
or	al, cl
mov	ecx, [esp+234h+var_1E8]
not	dl
and	al, dl
and	al, [esp+234h+var_214]
lea	edx, [edi+ecx]
cmp	edx, [esp+234h+var_1FC]
jb	short loc_1000E49B
mov	dl, [esp+234h+var_211]
and	dl, al
mov	eax, [esp+234h+var_220]
mov	al, [eax]
and	al, [esp+234h+var_221]
or	al, dl
inc	[esp+234h+var_220]
lea	edx, [esp+ecx+234h+var_84]
mov	[edx+edi], al
inc	edi
add	ecx, edi
cmp	ecx, esi
jb	loc_1000E410
mov	ebx, [esp+234h+var_1E0]
mov	eax, [ebp+14h]
push	esi
lea	edx, [esp+238h+var_84]
push	edx
push	ebx
call	eax
mov	edi, [esp+240h+var_208]
mov	edx, [ebp+24h]
push	edi
push	0
lea	ecx, [esp+248h+var_84]
push	ecx
push	ebx
call	edx
add	esp, 1Ch
xor	eax, eax
test	edi, edi
jz	short loc_1000E507
jmp	short loc_1000E4F0
align 10h
			
mov	cl, [esp+eax+234h+var_84]
and	cl, [esp+234h+var_221]
inc	eax
or	[esp+eax+234h+var_145],	cl
cmp	eax, edi
jb	short loc_1000E4F0
mov	eax, [esp+234h+var_218]
inc	eax
mov	[esp+234h+var_218], eax
cmp	eax, [esp+234h+var_210]
jbe	loc_1000E3B3
mov	edx, [ebp+10h]
push	ebx
call	edx
add	esp, 4
cmp	[esp+234h+arg_24], 0
jz	short loc_1000E57F
mov	esi, [esp+234h+var_1DC]
test	esi, esi
jz	short loc_1000E545
push	esi		
lea	eax, [esp+238h+Dst]
push	5Ch		
push	eax		
call	memset
add	esp, 0Ch
mov	ecx, [esp+234h+Size]
mov	edx, [esp+234h+Src]
mov	eax, [ebp+14h]
push	ecx
push	edx
push	ebx
call	eax
mov	edx, [ebp+14h]
push	esi
lea	ecx, [esp+244h+Dst]
push	ecx
push	ebx
call	edx
mov	eax, [esp+24Ch+var_208]
mov	edx, [ebp+14h]
push	eax
lea	ecx, [esp+250h+var_144]
push	ecx
push	ebx
call	edx
add	esp, 24h
jmp	short loc_1000E5B1
xor	eax, eax
test	esi, esi
jz	short loc_1000E58F
xor	[esp+eax+234h+Dst], 6Ah
inc	eax
cmp	eax, esi
jb	short loc_1000E585
mov	ecx, [ebp+14h]
push	esi
lea	eax, [esp+238h+Dst]
push	eax
push	ebx
call	ecx
mov	edx, [esp+240h+var_208]
mov	ecx, [ebp+14h]
push	edx
lea	eax, [esp+244h+var_144]
push	eax
push	ebx
call	ecx
add	esp, 18h
mov	edx, [esp+234h+arg_4]
mov	eax, [esp+234h+var_1E4]
mov	ecx, [esp+234h+var_1D8]
push	edx
mov	edx, [ebp+18h]
push	eax
push	ecx
push	ebx
call	edx
mov	eax, [ebp+0Ch]
push	1
push	ebx
call	eax
mov	ecx, [esp+24Ch+var_4]
add	esp, 18h
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 224h
retn
align 10h
mov	eax, [esp+arg_C]
cmp	dword ptr [eax+24h], 0
jnz	short loc_1000E5FE
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+arg_28]
mov	edx, [esp+arg_24]
push	0		
push	ecx		
mov	ecx, [esp+8+arg_20]
push	edx		
mov	edx, [esp+0Ch+arg_1C]
push	ecx		
mov	ecx, [esp+10h+arg_18]
push	edx		
mov	edx, [esp+14h+Size]
push	ecx		
mov	ecx, [esp+18h+arg_0]
push	edx		
mov	edx, [esp+1Ch+arg_10]
push	eax		
mov	eax, [esp+20h+arg_8]
push	eax		
push	ecx		
mov	ecx, [esp+28h+arg_4]
call	sub_1000E060
add	esp, 28h
retn
align 10h
mov	eax, [esp+arg_C]
cmp	dword ptr [eax+24h], 0
jnz	short loc_1000E64E
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+arg_28]
mov	edx, [esp+arg_24]
push	1		
push	ecx		
mov	ecx, [esp+8+arg_20]
push	edx		
mov	edx, [esp+0Ch+arg_1C]
push	ecx		
mov	ecx, [esp+10h+arg_18]
push	edx		
mov	edx, [esp+14h+Size]
push	ecx		
mov	ecx, [esp+18h+arg_0]
push	edx		
mov	edx, [esp+1Ch+arg_10]
push	eax		
mov	eax, [esp+20h+arg_8]
push	eax		
push	ecx		
mov	ecx, [esp+28h+arg_4]
call	sub_1000E060
add	esp, 28h
retn
align 10h
push	ecx
push	ebp
push	esi
push	edi
mov	edi, [esp+10h+arg_0]
lea	esi, ds:0[edi*4]
push	esi		
push	eax		
lea	ebp, [ebx+2Ch]
push	ebp		
call	memcpy
mov	ecx, [ebx+4]
inc	ecx
imul	ecx, [ebx]
add	esp, 0Ch
lea	esi, [esi+ebp-4]
cmp	edi, ecx
jnb	loc_1000E7A7
mov	[esp+10h+var_4], ebp
xor	edx, edx
mov	eax, edi
div	[esp+10h+arg_0]
mov	ecx, [esi]
add	esi, 4
test	edx, edx
jnz	short loc_1000E731
ror	ecx, 8
mov	edx, ecx
shr	edx, 10h
mov	ebp, ecx
shr	ebp, 18h
movzx	ebp, byte ptr ds:dword_1003BE80[ebp*4]
and	edx, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	ebp, 8
or	edx, ebp
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
movzx	ebp, byte ptr ds:dword_1003BE80[ebp*4]
shl	edx, 8
and	ecx, 0FFh
movzx	ecx, byte ptr ds:dword_1003BE80[ecx*4]
or	edx, ebp
shl	edx, 8
or	ecx, edx
xor	ecx, ds:dword_1003E27C[eax*4]
jmp	short loc_1000E786
cmp	edx, 4
jnz	short loc_1000E786
mov	edx, ecx
shr	edx, 10h
and	edx, 0FFh
movzx	eax, byte ptr ds:dword_1003BE80[edx*4]
mov	edx, ecx
shr	edx, 18h
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	edx, 8
or	eax, edx
mov	edx, ecx
shr	edx, 8
and	edx, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	eax, 8
and	ecx, 0FFh
movzx	ecx, byte ptr ds:dword_1003BE80[ecx*4]
or	eax, edx
shl	eax, 8
or	ecx, eax
			
mov	eax, [esp+10h+var_4]
mov	edx, [eax]
add	eax, 4
xor	edx, ecx
mov	[esp+10h+var_4], eax
mov	[esi], edx
mov	eax, [ebx+4]
inc	eax
imul	eax, [ebx]
inc	edi
cmp	edi, eax
jb	loc_1000E6C4
pop	edi
pop	esi
xor	eax, eax
pop	ebp
pop	ecx
retn
align 10h
			
sub	esp, 0Ch
push	ebx
mov	ebx, [ecx+4]
inc	ebx
imul	ebx, [ecx]
push	ebp
mov	ebp, [esp+14h+arg_0]
mov	[esp+14h+var_8], ebx
cmp	ebp, 7
jnz	short loc_1000E7DA
push	ebp
mov	ebx, ecx
call	sub_1000E690
add	esp, 4
pop	ebp
pop	ebx
add	esp, 0Ch
retn
push	esi
push	edi
lea	esi, ds:0[ebp*4]
push	esi		
add	ecx, 2Ch
push	eax		
push	ecx		
mov	[esp+28h+var_C], ecx
call	memcpy
mov	edx, [esp+28h+var_C]
mov	eax, ebx
sub	eax, ebp
add	esp, 0Ch
mov	edi, ebp
lea	ecx, [esi+edx-4]
mov	[esp+1Ch+var_4], eax
cmp	ebp, eax
jnb	loc_1000E955
mov	esi, edx
mov	eax, [ecx]
ror	eax, 8
mov	edx, eax
shr	edx, 10h
and	edx, 0FFh
movzx	ebp, byte ptr ds:dword_1003BE80[edx*4]
mov	edx, eax
shr	edx, 18h
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	edx, 8
or	ebp, edx
mov	edx, eax
shr	edx, 8
and	edx, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	ebp, 8
or	ebp, edx
and	eax, 0FFh
movzx	eax, byte ptr ds:dword_1003BE80[eax*4]
shl	ebp, 8
or	ebp, eax
xor	edx, edx
mov	eax, edi
div	[esp+1Ch+arg_0]
add	ecx, 10h
add	edi, 4
add	esi, 10h
xor	ebp, ds:dword_1003E27C[eax*4]
xor	ebp, [esi-10h]
mov	[ecx-0Ch], ebp
mov	edx, [esi-0Ch]
mov	eax, ebp
mov	ebp, [esp+1Ch+arg_0]
xor	edx, eax
mov	[ecx-8], edx
mov	eax, edx
mov	edx, [esi-8]
xor	edx, eax
mov	[ecx-4], edx
mov	eax, edx
mov	edx, [esi-4]
xor	edx, eax
mov	[ecx], edx
cmp	ebp, 4
jz	loc_1000E94B	
lea	eax, [ebp-5]	
cmp	eax, 3
ja	loc_1000E94B	
jmp	ds:off_1000EA80[eax*4] 
			
mov	eax, edx	
shr	edx, 10h
and	edx, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
mov	ebx, eax
shr	ebx, 18h
movzx	ebx, byte ptr ds:dword_1003BE80[ebx*4]
shl	ebx, 8
or	edx, ebx
mov	ebx, eax
shr	ebx, 8
and	ebx, 0FFh
movzx	ebx, byte ptr ds:dword_1003BE80[ebx*4]
shl	edx, 8
or	edx, ebx
mov	ebx, [esp+1Ch+var_8]
and	eax, 0FFh
movzx	eax, byte ptr ds:dword_1003BE80[eax*4]
shl	edx, 8
or	edx, eax
xor	edx, [esi]
add	ecx, 4
inc	edi
mov	[ecx], edx
add	esi, 4
			
mov	eax, [ecx]	
mov	edx, [esi]
add	ecx, 4
xor	edx, eax
inc	edi
mov	[ecx], edx
add	esi, 4
			
mov	eax, [ecx]	
mov	edx, [esi]
add	ecx, 4
xor	edx, eax
inc	edi
mov	[ecx], edx
add	esi, 4
			
mov	eax, [ecx]	
mov	edx, [esi]
add	ecx, 4
xor	edx, eax
inc	edi
mov	[ecx], edx
add	esi, 4
			
cmp	edi, [esp+1Ch+var_4] 
jb	loc_1000E811
mov	eax, [ecx]
add	ecx, 4
ror	eax, 8
mov	edx, eax
shr	edx, 10h
and	edx, 0FFh
movzx	esi, byte ptr ds:dword_1003BE80[edx*4]
mov	edx, eax
shr	edx, 18h
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	edx, 8
or	esi, edx
mov	edx, eax
shr	edx, 8
and	edx, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[edx*4]
shl	esi, 8
or	esi, edx
and	eax, 0FFh
movzx	eax, byte ptr ds:dword_1003BE80[eax*4]
shl	esi, 8
or	esi, eax
xor	edx, edx
mov	eax, edi
div	ebp
mov	edx, edi
sub	edx, ebp
inc	edi
xor	esi, ds:dword_1003E27C[eax*4]
mov	eax, [esp+1Ch+var_C]
xor	esi, [eax+edx*4]
mov	[ecx], esi
cmp	ebp, 8
jnb	short loc_1000E9FB
cmp	edi, ebx
jnb	loc_1000EA74
mov	edx, edi
sub	edx, ebp
sub	ebx, edi
lea	eax, [eax+edx*4]
mov	esi, ebx
nop
mov	edx, [ecx]
mov	edi, [eax]
add	ecx, 4
xor	edi, edx
add	eax, 4
dec	esi
mov	[ecx], edi
jnz	short loc_1000E9E0
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
cmp	edi, ebx
jnb	short loc_1000EA74
mov	edx, edi
sub	edx, ebp
lea	ebx, [eax+edx*4]
xor	edx, edx
mov	eax, edi
div	ebp
mov	esi, [ecx]
add	ecx, 4
cmp	edx, 4
jnz	short loc_1000EA64
mov	eax, esi
shr	eax, 10h
and	eax, 0FFh
movzx	edx, byte ptr ds:dword_1003BE80[eax*4]
mov	eax, esi
shr	eax, 18h
movzx	eax, byte ptr ds:dword_1003BE80[eax*4]
shl	eax, 8
or	edx, eax
mov	eax, esi
shr	eax, 8
and	eax, 0FFh
movzx	eax, byte ptr ds:dword_1003BE80[eax*4]
shl	edx, 8
and	esi, 0FFh
movzx	esi, byte ptr ds:dword_1003BE80[esi*4]
or	edx, eax
shl	edx, 8
or	esi, edx
mov	edx, [ebx]
xor	edx, esi
inc	edi
add	ebx, 4
mov	[ecx], edx
cmp	edi, [esp+1Ch+var_8]
jb	short loc_1000EA06
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
dd offset loc_1000E92D	
dd offset loc_1000E91E
dd offset loc_1000E8C0
push	edi
mov	edi, [esi]
push	eax
mov	eax, [esp+8+arg_0]
mov	ecx, esi
call	sub_1000E7B0
add	esp, 4
test	eax, eax
jz	short loc_1000EAAB
or	eax, 0FFFFFFFFh
pop	edi
retn
mov	ecx, [esi]
mov	edx, 1
lea	eax, [esi+ecx*4+2Ch]
cmp	[esi+4], edx
jbe	loc_1000EC69
push	ebx
movzx	ecx, byte ptr [eax+3]
mov	ecx, ds:dword_1003DE80[ecx*4]
movzx	ebx, byte ptr [eax+2]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax+1]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax]
xor	ecx, ds:dword_1003D280[ebx*4]
add	eax, 10h
mov	[eax-10h], ecx
movzx	ecx, byte ptr [eax-9]
mov	ecx, ds:dword_1003DE80[ecx*4]
movzx	ebx, byte ptr [eax-0Ah]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax-0Bh]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax-0Ch]
xor	ecx, ds:dword_1003D280[ebx*4]
mov	[eax-0Ch], ecx
movzx	ecx, byte ptr [eax-5]
mov	ecx, ds:dword_1003DE80[ecx*4]
movzx	ebx, byte ptr [eax-6]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax-7]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax-8]
xor	ecx, ds:dword_1003D280[ebx*4]
mov	[eax-8], ecx
movzx	ecx, byte ptr [eax-1]
movzx	ebx, byte ptr [eax-2]
mov	ecx, ds:dword_1003DE80[ecx*4]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax-3]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax-4]
xor	ecx, ds:dword_1003D280[ebx*4]
mov	[eax-4], ecx
cmp	edi, 4
jle	loc_1000EC5E	
lea	ecx, [edi-5]	
cmp	ecx, 3
ja	loc_1000EC5E	
jmp	ds:off_1000EC70[ecx*4] 
			
movzx	ecx, byte ptr [eax+3] 
movzx	ebx, byte ptr [eax+2]
mov	ecx, ds:dword_1003DE80[ecx*4]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax+1]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax]
xor	ecx, ds:dword_1003D280[ebx*4]
add	eax, 4
mov	[eax-4], ecx
			
movzx	ecx, byte ptr [eax+3] 
movzx	ebx, byte ptr [eax+2]
mov	ecx, ds:dword_1003DE80[ecx*4]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax+1]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax]
xor	ecx, ds:dword_1003D280[ebx*4]
add	eax, 4
mov	[eax-4], ecx
			
movzx	ecx, byte ptr [eax+3] 
movzx	ebx, byte ptr [eax+2]
mov	ecx, ds:dword_1003DE80[ecx*4]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax+1]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax]
xor	ecx, ds:dword_1003D280[ebx*4]
add	eax, 4
mov	[eax-4], ecx
			
movzx	ecx, byte ptr [eax+3] 
movzx	ebx, byte ptr [eax+2]
mov	ecx, ds:dword_1003DE80[ecx*4]
xor	ecx, ds:dword_1003DA80[ebx*4]
movzx	ebx, byte ptr [eax+1]
xor	ecx, ds:dword_1003D680[ebx*4]
movzx	ebx, byte ptr [eax]
xor	ecx, ds:dword_1003D280[ebx*4]
add	eax, 4
mov	[eax-4], ecx
			
inc	edx		
cmp	edx, [esi+4]
jb	loc_1000EAC0
pop	ebx
xor	eax, eax
pop	edi
retn
align 10h
dd offset loc_1000EBFC	
dd offset loc_1000EBCB
dd offset loc_1000EB9A
			
sub	esp, 10h
mov	ecx, [esp+10h+arg_8]
push	ebx
push	ebp
push	esi
mov	esi, [ecx+4]
push	edi
mov	edi, [esp+20h+arg_0]
xor	esi, [edi+30h]
mov	edx, [edi+2Ch]
xor	edx, [ecx]
lea	eax, [edi+2Ch]
mov	edi, [edi+4]
mov	[esp+20h+var_C], esi
mov	esi, [ecx+8]
xor	esi, [eax+8]
mov	ecx, [ecx+0Ch]
xor	ecx, [eax+0Ch]
add	eax, 10h
mov	[esp+20h+var_10], edx
mov	[esp+20h+var_8], esi
cmp	edi, 1
jbe	loc_1000EDBB
dec	edi
mov	[esp+20h+arg_0], edi
lea	esp, [esp+0]
movzx	edi, byte ptr [esp+20h+var_10+3]
mov	ebx, ecx
shr	ebx, 10h
movzx	esi, bl
mov	esi, ds:dword_1003BA80[esi*4]
xor	esi, ds:dword_1003BE80[edi*4]
movzx	edi, byte ptr [esp+20h+var_8+1]
xor	esi, ds:dword_1003B680[edi*4]
movzx	edi, byte ptr [esp+20h+var_C]
xor	esi, ds:dword_1003B280[edi*4]
movzx	ebp, byte ptr [esp+20h+var_C+2]
mov	ebx, ecx
shr	ebx, 8
movzx	edi, bl
movzx	ebx, byte ptr [esp+20h+var_C+3]
mov	edi, ds:dword_1003B680[edi*4]
xor	edi, ds:dword_1003BE80[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_10+2]
xor	edi, ds:dword_1003BA80[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_8]
xor	edi, ds:dword_1003B280[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_8+3]
mov	ebx, ds:dword_1003BE80[ebx*4]
xor	ebx, ds:dword_1003BA80[ebp*4]
movzx	ebp, dh
xor	ebx, ds:dword_1003B680[ebp*4]
movzx	ebp, cl
xor	ebx, ds:dword_1003B280[ebp*4]
movzx	ebp, byte ptr [esp+20h+var_8+2]
shr	ecx, 18h
mov	ecx, ds:dword_1003BE80[ecx*4]
xor	ecx, ds:dword_1003BA80[ebp*4]
movzx	ebp, byte ptr [esp+20h+var_C+1]
xor	ecx, ds:dword_1003B680[ebp*4]
movzx	edx, dl
xor	ecx, ds:dword_1003B280[edx*4]
add	eax, 10h
xor	ecx, [eax-10h]
mov	edx, ecx
mov	ecx, [eax-0Ch]
xor	ecx, esi
mov	esi, [eax-8]
mov	[esp+20h+var_C], ecx
mov	ecx, [eax-4]
xor	esi, edi
xor	ecx, ebx
dec	[esp+20h+arg_0]
mov	[esp+20h+var_10], edx
mov	[esp+20h+var_8], esi
jnz	loc_1000ECD0
mov	ebx, esi
shr	ebx, 10h
movzx	esi, bl
mov	esi, ds:dword_1003B280[esi*4]
mov	ebx, [esp+20h+var_C]
shr	ebx, 8
mov	edi, ecx
shr	edi, 18h
mov	edi, ds:dword_1003B680[edi*4]
and	edi, 0FF000000h
and	esi, 0FF0000h
or	esi, edi
movzx	edi, bl
mov	edi, ds:dword_1003BE80[edi*4]
and	edi, 0FF00h
or	esi, edi
movzx	edi, dl
movzx	edi, byte ptr ds:dword_1003BA80[edi*4]
or	esi, edi
mov	ebx, ecx
shr	ebx, 10h
movzx	edi, bl
mov	ebx, [esp+20h+var_8]
mov	edi, ds:dword_1003B280[edi*4]
shr	ebx, 8
movzx	ebx, bl
mov	ebx, ds:dword_1003BE80[ebx*4]
and	ebx, 0FF00h
and	edi, 0FF0000h
or	edi, ebx
mov	ebx, edx
shr	ebx, 18h
mov	ebx, ds:dword_1003B680[ebx*4]
and	ebx, 0FF000000h
or	edi, ebx
movzx	ebx, byte ptr [esp+20h+var_C]
movzx	ebx, byte ptr ds:dword_1003BA80[ebx*4]
or	edi, ebx
mov	ebx, edx
shr	ebx, 10h
movzx	ebx, bl
mov	ebp, ds:dword_1003B280[ebx*4]
mov	ebx, ecx
shr	ebx, 8
movzx	ebx, bl
mov	ebx, ds:dword_1003BE80[ebx*4]
and	ebx, 0FF00h
and	ebp, 0FF0000h
or	ebp, ebx
mov	ebx, [esp+20h+var_C]
shr	ebx, 18h
mov	ebx, ds:dword_1003B680[ebx*4]
and	ebx, 0FF000000h
or	ebp, ebx
movzx	ebx, byte ptr [esp+20h+var_8]
movzx	ebx, byte ptr ds:dword_1003BA80[ebx*4]
or	ebp, ebx
xor	ebp, [eax+8]
mov	ebx, [esp+20h+var_C]
xor	esi, [eax]
xor	edi, [eax+4]
shr	ebx, 10h
movzx	ebx, bl
mov	[esp+20h+arg_8], ebp
mov	ebp, ds:dword_1003B280[ebx*4]
mov	ebx, [esp+20h+var_8]
shr	edx, 8
shr	ebx, 18h
mov	ebx, ds:dword_1003B680[ebx*4]
movzx	edx, dl
mov	edx, ds:dword_1003BE80[edx*4]
and	ebp, 0FF0000h
and	ebx, 0FF000000h
or	ebp, ebx
and	edx, 0FF00h
movzx	ecx, cl
or	ebp, edx
movzx	edx, byte ptr ds:dword_1003BA80[ecx*4]
or	ebp, edx
xor	ebp, [eax+0Ch]
mov	eax, [esp+20h+arg_4]
mov	ecx, [esp+20h+arg_8]
mov	[eax+4], edi
pop	edi
mov	[eax], esi
pop	esi
mov	[eax+0Ch], ebp
pop	ebp
mov	[eax+8], ecx
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
			
sub	esp, 10h
mov	eax, [esp+10h+arg_0]
mov	ecx, [eax]
push	ebx
push	esi
mov	esi, [esp+18h+arg_8]
mov	ebx, [esi+0Ch]
push	edi
mov	edi, [eax+4]
imul	ecx, edi
xor	ebx, [eax+ecx*4+38h]
mov	edx, [eax+ecx*4+2Ch]
xor	edx, [esi]
lea	eax, [eax+ecx*4+38h]
mov	ecx, [esi+8]
xor	ecx, [eax-4]
sub	eax, 10h
mov	[esp+1Ch+var_8], ecx
mov	ecx, [esi+4]
xor	ecx, [eax+8]
mov	[esp+1Ch+var_4], ebx
cmp	edi, 1
jle	loc_1000F071
dec	edi
mov	[esp+1Ch+arg_0], edi
push	ebp
lea	ecx, [ecx+0]
movzx	edi, byte ptr [esp+20h+var_8+2]
mov	esi, ecx
shr	esi, 18h
mov	esi, ds:dword_1003CE80[esi*4]
xor	esi, ds:dword_1003CA80[edi*4]
movzx	edi, bh
xor	esi, ds:dword_1003C680[edi*4]
movzx	edi, dl
xor	esi, ds:dword_1003C280[edi*4]
mov	ebx, edx
shr	ebx, 8
movzx	edi, bl
movzx	ebx, byte ptr [esp+20h+var_8+3]
mov	edi, ds:dword_1003C680[edi*4]
xor	edi, ds:dword_1003CE80[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_4+2]
xor	edi, ds:dword_1003CA80[ebx*4]
movzx	ebx, cl
xor	edi, ds:dword_1003C280[ebx*4]
mov	ebx, edx
shr	ebx, 10h
movzx	ebx, bl
mov	ebp, ds:dword_1003CA80[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_4+3]
mov	[esp+20h+arg_8], eax
mov	eax, ecx
shr	eax, 8
movzx	eax, al
xor	ebp, ds:dword_1003C680[eax*4]
mov	eax, [esp+20h+arg_8]
xor	ebp, ds:dword_1003CE80[ebx*4]
movzx	ebx, byte ptr [esp+20h+var_8]
xor	ebp, ds:dword_1003C280[ebx*4]
shr	edx, 18h
mov	ebx, ds:dword_1003CE80[edx*4]
movzx	edx, byte ptr [esp+20h+var_8+1]
shr	ecx, 10h
movzx	ecx, cl
xor	ebx, ds:dword_1003CA80[ecx*4]
movzx	ecx, byte ptr [esp+20h+var_4]
xor	ebx, ds:dword_1003C680[edx*4]
mov	edx, [eax-4]
xor	ebx, ds:dword_1003C280[ecx*4]
mov	ecx, [eax-8]
xor	ebx, [eax]
xor	edx, ebp
mov	[esp+20h+var_8], edx
mov	edx, [eax-0Ch]
xor	ecx, edi
xor	edx, esi
sub	eax, 10h
dec	[esp+20h+arg_0]
mov	[esp+20h+var_4], ebx
jnz	loc_1000EF80
pop	ebp
movzx	esi, dl
movzx	ebx, ds:byte_1003B180[esi]
mov	esi, [esp+1Ch+arg_4]
mov	[esi], bl
mov	ebx, [esp+1Ch+var_4]
shr	ebx, 8
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+1], bl
mov	ebx, [esp+1Ch+var_8]
shr	ebx, 10h
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+2], bl
mov	edi, ecx
shr	edi, 18h
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+3], bl
movzx	edi, cl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+4], bl
mov	ebx, edx
shr	ebx, 8
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+5], bl
mov	ebx, [esp+1Ch+var_4]
shr	ebx, 10h
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	edi, [esp+1Ch+var_8]
mov	[esi+6], bl
shr	edi, 18h
movzx	ebx, ds:byte_1003B180[edi]
movzx	edi, byte ptr [esp+1Ch+var_8]
mov	[esi+7], bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+8], bl
mov	ebx, ecx
shr	ebx, 8
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+9], bl
mov	ebx, edx
shr	ebx, 10h
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
mov	edi, [esp+1Ch+var_4]
mov	[esi+0Ah], bl
shr	edi, 18h
movzx	ebx, ds:byte_1003B180[edi]
movzx	edi, byte ptr [esp+1Ch+var_4]
mov	[esi+0Bh], bl
movzx	ebx, ds:byte_1003B180[edi]
mov	[esi+0Ch], bl
mov	ebx, [esp+1Ch+var_8]
shr	ebx, 8
movzx	edi, bl
movzx	ebx, ds:byte_1003B180[edi]
shr	ecx, 10h
mov	[esi+0Dh], bl
movzx	ecx, cl
mov	cl, ds:byte_1003B180[ecx]
mov	[esi+0Eh], cl
shr	edx, 18h
mov	dl, ds:byte_1003B180[edx]
mov	[esi+0Fh], dl
mov	ecx, [eax]
xor	[esi+0Ch], ecx
mov	edx, [eax-4]
xor	[esi+8], edx
mov	ecx, [eax-8]
xor	[esi+4], ecx
mov	edx, [eax-0Ch]
xor	[esi], edx
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 10h
retn
align 10h
			
or	eax, 0FFFFFFFFh
retn
align 10h
cmp	[esp+arg_18], 10h
push	ebx
push	ebp
push	esi
push	edi
mov	ebp, offset sub_1000EC80
jz	short loc_1000F1C5
mov	ebp, offset sub_1000F1A0
cmp	[esp+10h+arg_14], 0
jbe	short loc_1000F1FB
mov	edi, [esp+10h+arg_4]
mov	esi, [esp+10h+arg_10]
mov	ebx, [esp+10h+arg_0]
sub	edi, esi
lea	ebx, [ebx+0]
push	esi
lea	eax, [edi+esi]
push	eax
push	ebx
call	ebp 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F1FD
mov	eax, [esp+10h+arg_18]
add	esi, eax
sub	[esp+10h+arg_14], eax
jnz	short loc_1000F1E0
xor	eax, eax
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 118h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+118h+var_4], eax
mov	edx, [esp+118h+arg_14]
mov	eax, [esp+118h+arg_0]
mov	ecx, [esp+118h+arg_4]
push	edi
mov	edi, [esp+11Ch+Size]
mov	[esp+11Ch+var_114], eax
test	edx, edx
jnz	short loc_1000F261
xor	eax, eax
pop	edi
mov	ecx, [esp+118h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 118h
retn
add	eax, 0Ch
push	ebx
mov	[esp+120h+var_10C], eax
mov	ebx, eax
mov	[esp+120h+var_118], offset sub_1000EC80
cmp	edi, 10h
jz	short loc_1000F280
mov	[esp+120h+var_118], offset sub_1000F1A0
push	ebp
push	esi
test	edx, edx
jz	short loc_1000F2EC
mov	esi, [esp+128h+arg_10]
mov	eax, edi
lea	ebp, [esp+128h+var_104]
neg	eax
sub	ebp, esi
sub	ecx, esi
mov	[esp+128h+var_110], eax
mov	[esp+128h+var_108], ecx
test	edi, edi
jz	short loc_1000F2BD
mov	ecx, ebx
mov	eax, esi
sub	ecx, esi
mov	ebx, edi
lea	ecx, [ecx+0]
mov	dl, [ecx+eax]
xor	dl, [eax]
inc	eax
dec	ebx
mov	[eax+ebp-1], dl
jnz	short loc_1000F2B0
mov	ebx, [esp+128h+var_108]
mov	edx, [esp+128h+var_114]
lea	ecx, [esp+128h+var_104]
push	ecx
add	ebx, esi
push	ebx
push	edx
call	[esp+134h+var_118]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F2F9
add	ebp, [esp+128h+var_110]
add	esi, edi
sub	[esp+128h+arg_14], edi
jnz	short loc_1000F2A1
mov	eax, [esp+128h+var_10C]
push	edi		
push	ebx		
push	eax		
call	memcpy
add	esp, 0Ch
xor	eax, eax
mov	ecx, [esp+128h+var_4]
pop	esi
pop	ebp
pop	ebx
pop	edi
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 118h
retn
align 10h
cmp	[esp+arg_18], 10h
push	ebx
push	ebp
push	esi
push	edi
mov	ebp, offset sub_1000EF30
jz	short loc_1000F335
mov	ebp, offset sub_1000F1A0
cmp	[esp+10h+arg_14], 0
jbe	short loc_1000F36B
mov	edi, [esp+10h+arg_4]
mov	esi, [esp+10h+arg_10]
mov	ebx, [esp+10h+arg_0]
sub	edi, esi
lea	ebx, [ebx+0]
push	esi
lea	eax, [edi+esi]
push	eax
push	ebx
call	ebp 
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F36D
mov	eax, [esp+10h+arg_18]
add	esi, eax
sub	[esp+10h+arg_14], eax
jnz	short loc_1000F350
xor	eax, eax
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 38h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+38h+var_4], eax
mov	eax, [esp+38h+arg_0]
mov	ecx, [esp+38h+arg_4]
push	ebp
mov	ebp, [esp+3Ch+arg_14]
mov	[esp+3Ch+var_34], eax
mov	eax, [esp+3Ch+arg_10]
push	esi
mov	esi, [esp+40h+Size]
mov	[esp+40h+var_28], ecx
mov	[esp+40h+var_2C], eax
mov	[esp+40h+var_30], ebp
test	ebp, ebp
jnz	short loc_1000F3CB
pop	esi
xor	eax, eax
pop	ebp
mov	ecx, [esp+38h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
mov	[esp+40h+var_38], offset sub_1000EF30
cmp	esi, 10h
jz	short loc_1000F3E0
mov	[esp+40h+var_38], offset sub_1000F1A0
push	ebx
push	edi
mov	edi, ebp
sub	edi, esi
lea	ebx, [edi+eax]
push	esi		
lea	edx, [esp+4Ch+Dst]
push	ebx		
push	edx		
call	memcpy
add	edi, [esp+54h+var_28]
add	esp, 0Ch
cmp	ebp, esi
jbe	short loc_1000F43F
mov	ebp, ebx
sub	ebp, esi
mov	ecx, [esp+48h+var_34]
push	ebx
push	edi
push	ecx
call	[esp+54h+var_38]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F486
test	esi, esi
jz	short loc_1000F42B
lea	ebx, [ebx+0]
mov	dl, [eax+ebp]
xor	[eax+edi], dl
inc	eax
cmp	eax, esi
jb	short loc_1000F420
mov	eax, [esp+48h+var_30]
sub	eax, esi
sub	edi, esi
sub	ebx, esi
sub	ebp, esi
mov	[esp+48h+var_30], eax
cmp	eax, esi
ja	short loc_1000F404
cmp	ebx, [esp+48h+var_2C]
jnz	short loc_1000F46E
push	ebx
mov	ebx, [esp+4Ch+var_34]
push	edi
push	ebx
call	[esp+54h+var_38]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1000F486
test	esi, esi
jz	short loc_1000F472
jmp	short loc_1000F460
align 10h
			
mov	cl, [ebx+eax+0Ch]
xor	[eax+edi], cl
inc	eax
cmp	eax, esi
jb	short loc_1000F460
jmp	short loc_1000F472
mov	ebx, [esp+48h+var_34]
			
push	esi		
lea	edx, [esp+4Ch+Dst]
push	edx		
add	ebx, 0Ch
push	ebx		
call	memcpy
add	esp, 0Ch
xor	eax, eax
			
mov	ecx, [esp+48h+var_4]
pop	edi
pop	ebx
pop	esi
pop	ebp
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 38h
retn
align 10h
push	218h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
cmp	[esp+arg_4], 0
push	ebp
mov	ebp, [esp+4+Src]
push	esi
mov	esi, [esp+8+arg_0]
jz	short loc_1000F4E4
lea	eax, [ecx-10h]
cmp	eax, 10h
ja	short loc_1000F4E4
test	cl, 3
jnz	short loc_1000F4E4
lea	eax, [edx-10h]
cmp	eax, 10h
ja	short loc_1000F4E4
test	dl, 3
jnz	short loc_1000F4E4
test	ebx, ebx
jz	short loc_1000F4FB
cmp	ebx, 1
jz	short loc_1000F4F7
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
test	ebp, ebp
jz	short loc_1000F4E4
test	esi, esi
jz	short loc_1000F4E4
shr	ecx, 2
mov	eax, edx
push	edi
shr	eax, 2
mov	edi, ecx
mov	[esi], eax
cmp	edi, eax
jbe	short loc_1000F512
mov	eax, edi
add	eax, 6
mov	[esi+4], eax
cmp	ebx, 1
jnz	short loc_1000F53E
push	edx		
lea	ecx, [esi+0Ch]
push	ebp		
push	ecx		
call	memcpy
add	esp, 0Ch
cmp	[esp+0Ch+arg_C], 0
mov	eax, offset sub_1000F210
jnz	short loc_1000F54F
mov	eax, offset sub_1000F380
jmp	short loc_1000F54F
cmp	[esp+0Ch+arg_C], 0
mov	eax, offset sub_1000F1B0
jnz	short loc_1000F54F
mov	eax, offset sub_1000F320
			
mov	edx, [esi+4]
inc	edx
imul	edx, [esi]
mov	[esi+8], eax
cmp	edx, 78h
jbe	short loc_1000F572
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
cmp	[esp+0Ch+arg_C], 0
mov	eax, [esp+0Ch+arg_4]
jz	short loc_1000F5AC
push	edi
mov	ecx, esi
call	sub_1000E7B0
add	esp, 4
test	eax, eax
jnz	short loc_1000F5BB
pop	edi
mov	[esi+210h], esi
mov	dword ptr [esi+20Ch], 0
mov	dword ptr [esi+214h], 1
pop	esi
xor	eax, eax
pop	ebp
retn
push	eax
mov	eax, edi
call	sub_1000EA90
add	esp, 4
test	eax, eax
jz	short loc_1000F58C
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
mov	ecx, [esi+210h]
test	ecx, ecx
jz	short loc_1000F605
mov	eax, [esi+20Ch]
test	eax, eax
jz	short loc_1000F605
push	1
push	ecx
call	eax
add	esp, 8
mov	dword ptr [esi+210h], 0
mov	dword ptr [esi+20Ch], 0
			
cmp	[esp+4+arg_4], 0
jz	short loc_1000F615
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
			
push	ebx
push	ebp
push	edi
mov	edi, [esp+0Ch+arg_0]
test	edi, edi
jz	loc_1000F6B3
mov	ebp, [esp+0Ch+arg_4]
test	ebp, ebp
jz	short loc_1000F6B3
mov	ebx, [esp+0Ch+arg_10]
mov	ecx, [esp+0Ch+arg_14]
test	ebx, ebx
jnz	short loc_1000F647
test	ecx, ecx
jnz	short loc_1000F6B3
push	esi
mov	esi, [edi]
add	esi, esi
add	esi, esi
cmp	dword ptr [edi+214h], 0
jz	short loc_1000F676
xor	edx, edx
mov	eax, ecx
div	esi
test	edx, edx
jz	short loc_1000F676
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
			
mov	edx, [esp+10h+arg_C]
cmp	edx, ecx
jnb	short loc_1000F693
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esp+10h+arg_8]
push	esi
push	ecx
push	ebx
push	edx
push	eax
mov	[eax], ecx
mov	eax, [edi+210h]
mov	ecx, [edi+8]
push	ebp
push	eax
call	ecx
add	esp, 1Ch
pop	esi
pop	edi
pop	ebp
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
			
mov	eax, [esp+arg_14]
push	ebx
mov	ebx, [esp+4+arg_10]
push	ebp
push	esi
push	edi
cmp	ebx, 2
jz	short loc_1000F6EF
jle	short loc_1000F6F4
cmp	ebx, 4
jg	short loc_1000F6F4
xor	ebx, ebx
lea	eax, [ebx+1]
jmp	short loc_1000F6F4
mov	ebx, 1
			
mov	edi, [esp+10h+Src]
mov	esi, [esp+10h+arg_0]
mov	ebp, [esp+10h+Size]
push	eax
mov	eax, [esp+14h+arg_4]
xor	ecx, ecx
push	edi
push	eax
mov	[esi+210h], ecx
mov	[esi+20Ch], ecx
mov	ecx, [esp+1Ch+arg_8]
push	esi
mov	edx, ebp
call	sub_1000F4B0
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jz	short loc_1000F75B
mov	ecx, [esi+210h]
test	ecx, ecx
jz	short loc_1000F754
mov	eax, [esi+20Ch]
test	eax, eax
jz	short loc_1000F754
push	1
push	ecx
call	eax
add	esp, 8
xor	eax, eax
mov	[esi+210h], eax
mov	[esi+20Ch], eax
			
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
retn
mov	eax, [esp+10h+arg_10]
sub	eax, 2
jz	short loc_1000F7C8
dec	eax
jz	short loc_1000F7A0
dec	eax
jnz	loc_1000F820
mov	ecx, [esi+8]
push	ebp		
push	edi		
push	ecx		
push	esi		
call	sub_1000DE70
add	esp, 10h
cmp	[esp+10h+arg_14], 0
mov	[esi+210h], eax
mov	eax, offset sub_1000DB90
jnz	short loc_1000F794
mov	eax, offset sub_1000DC70
mov	dword ptr [esi+20Ch], offset sub_1000DA90
jmp	short loc_1000F7F8
mov	edx, [esi+8]
push	ebp		
push	edi		
push	edx		
push	esi		
call	sub_1000D4B0
add	esp, 10h
mov	[esi+210h], eax
mov	dword ptr [esi+8], offset sub_1000D320
mov	dword ptr [esi+20Ch], offset sub_1000D290
jmp	short loc_1000F7FB
mov	eax, [esi+8]
push	ebp		
push	edi		
push	eax		
push	esi		
call	sub_1000CD80
add	esp, 10h
cmp	[esp+10h+arg_14], 0
mov	[esi+210h], eax
mov	eax, offset sub_1000CE00
jnz	short loc_1000F7EE
mov	eax, offset sub_1000CF60
mov	dword ptr [esi+20Ch], offset sub_1000CDE0
mov	[esi+8], eax
cmp	dword ptr [esi+210h], 0
mov	dword ptr [esi+214h], 0
jnz	short loc_1000F820
pop	edi
mov	dword ptr [esi+20Ch], 0
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
push	esi
push	218h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1000F8AE
mov	eax, [esp+4+Size]
mov	ecx, [esp+4+arg_C]
mov	edx, [esp+4+arg_8]
push	eax		
mov	eax, [esp+8+Src]
push	ecx		
mov	ecx, [esp+0Ch+arg_10]
push	edx		
mov	edx, [esp+10h+arg_0]
push	eax		
push	ecx		
push	edx		
push	esi		
call	sub_1000F6D0
add	esp, 1Ch
test	eax, eax
jz	short loc_1000F8AC
mov	ecx, [esi+210h]
test	ecx, ecx
jz	short loc_1000F89F
mov	eax, [esi+20Ch]
test	eax, eax
jz	short loc_1000F89F
push	1
push	ecx
call	eax
add	esp, 8
mov	dword ptr [esi+210h], 0
mov	dword ptr [esi+20Ch], 0
			
push	esi
call	PORT_Free_Util
add	esp, 4
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
push	220h
call	PORT_Alloc_Util
add	esp, 4
retn
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_1000F8D9
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
mov	ecx, [esp+Src]
test	ecx, ecx
jz	short loc_1000F8EA
mov	edx, [ecx]
mov	[eax], edx
mov	ecx, [ecx+4]
jmp	short loc_1000F8F1
mov	ecx, 0A6A6A6A6h
mov	[eax], ecx
mov	[eax+4], ecx
add	eax, 8
mov	[esp+Size], 10h	
mov	[esp+arg_10], 0	
mov	[esp+Src], 0	
mov	[esp+arg_0], eax 
jmp	sub_1000F6D0
align 10h
push	esi
push	220h
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1000F936
pop	esi
retn
mov	eax, [esp+4+arg_4]
test	eax, eax
jz	short loc_1000F94A
mov	ecx, [eax]
mov	[esi], ecx
mov	edx, [eax+4]
mov	[esi+4], edx
jmp	short loc_1000F954
mov	eax, 0A6A6A6A6h
mov	[esi], eax
mov	[esi+4], eax
mov	eax, [esp+4+arg_8]
mov	ecx, [esp+4+arg_C]
mov	edx, [esp+4+arg_0]
push	10h		
push	eax		
push	0		
push	0		
push	ecx		
push	edx		
lea	eax, [esi+8]
push	eax		
call	sub_1000F6D0
add	esp, 1Ch
test	eax, eax
jz	short loc_1000F984
push	esi
call	PORT_Free_Util
add	esp, 4
xor	esi, esi
mov	eax, esi
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1000F9B7
lea	eax, [esi+8]
push	0
push	eax
call	sub_1000F5D0
add	esp, 8
cmp	[esp+4+arg_4], 0
jz	short loc_1000F9B7
push	esi
call	PORT_Free_Util
add	esp, 4
			
pop	esi
retn
align 10h
mov	dl, 1
add	[eax+7], dl
jnz	short loc_1000F9E7
add	[eax+6], dl
jnz	short loc_1000F9E7
add	[eax+5], dl
jnz	short loc_1000F9E7
add	[eax+4], dl
jnz	short loc_1000F9E7
add	[eax+3], dl
jnz	short loc_1000F9E7
add	[eax+2], dl
jnz	short loc_1000F9E7
add	[eax+1], dl
jnz	short loc_1000F9E7
add	[eax], dl
			
movzx	edx, byte ptr [eax]
xor	[ecx], dl
movzx	edx, byte ptr [eax+1]
xor	[ecx+1], dl
movzx	edx, byte ptr [eax+2]
xor	[ecx+2], dl
movzx	edx, byte ptr [eax+3]
xor	[ecx+3], dl
movzx	edx, byte ptr [eax+4]
xor	[ecx+4], dl
movzx	edx, byte ptr [eax+5]
xor	[ecx+5], dl
movzx	edx, byte ptr [eax+6]
xor	[ecx+6], dl
mov	al, [eax+7]
xor	[ecx+7], al
retn
align 10h
movzx	edx, byte ptr [eax]
xor	[ecx], dl
movzx	edx, byte ptr [eax+1]
xor	[ecx+1], dl
movzx	edx, byte ptr [eax+2]
xor	[ecx+2], dl
movzx	edx, byte ptr [eax+3]
xor	[ecx+3], dl
movzx	edx, byte ptr [eax+4]
xor	[ecx+4], dl
movzx	edx, byte ptr [eax+5]
xor	[ecx+5], dl
movzx	edx, byte ptr [eax+6]
xor	[ecx+6], dl
movzx	edx, byte ptr [eax+7]
xor	[ecx+7], dl
mov	cl, [eax+7]
lea	edx, [ecx-1]
mov	[eax+7], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+6]
lea	edx, [ecx-1]
mov	[eax+6], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+5]
lea	edx, [ecx-1]
mov	[eax+5], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+4]
lea	edx, [ecx-1]
mov	[eax+4], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+3]
lea	edx, [ecx-1]
mov	[eax+3], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+2]
lea	edx, [ecx-1]
mov	[eax+2], dl
test	cl, cl
jnz	short locret_1000FAB3
mov	cl, [eax+1]
lea	edx, [ecx-1]
mov	[eax+1], dl
test	cl, cl
jnz	short locret_1000FAB3
dec	byte ptr [eax]
			
retn
align 10h
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 2Ch
push	ebx
push	esi
mov	esi, [ebp+Size]
lea	eax, [esi+8]
or	ebx, 0FFFFFFFFh
push	edi
mov	[esp+38h+var_1C], 10h
mov	[esp+38h+var_20], eax
test	esi, esi
jz	loc_1000FC69
test	esi, 7
jnz	loc_1000FC69
cmp	[ebp+arg_C], eax
jnb	short loc_1000FB10
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, ebx
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
cmp	[ebp+arg_0], 0
jz	loc_1000FC52
cmp	[ebp+Dst], 0
jz	loc_1000FC52
cmp	[ebp+Src], 0
jz	loc_1000FC52
mov	eax, esi
shr	eax, 3
mov	[esp+38h+var_28], eax
lea	eax, ds:8[eax*8]
push	eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_1000FC76
mov	eax, [ebp+arg_0]
mov	ecx, [eax]
mov	edx, [eax+4]
mov	eax, [ebp+Src]
push	esi		
mov	[esp+3Ch+var_10], ecx
push	eax		
lea	ecx, [edi+8]
push	ecx		
mov	[esp+44h+var_C], edx
call	memcpy
add	esp, 0Ch
xor	eax, eax
mov	[esp+38h+var_18], eax
mov	[esp+38h+var_14], eax
mov	[esp+38h+var_24], 6
mov	esi, 1
cmp	[esp+38h+var_28], esi
jb	short loc_1000FBE7
mov	edx, [edi+esi*8]
push	10h
lea	ecx, [esp+3Ch+var_10]
push	ecx
mov	[esp+40h+var_8], edx
mov	eax, [edi+esi*8+4]
mov	[esp+40h+var_4], eax
push	10h
lea	edx, [esp+44h+var_1C]
push	edx
mov	eax, ecx
push	eax
mov	eax, [ebp+arg_0]
add	eax, 8
push	eax
call	sub_1000F620
mov	ebx, eax
add	esp, 18h
test	ebx, ebx
jnz	short loc_1000FBE7
mov	ecx, [esp+38h+var_8]
mov	[edi+esi*8], ecx
mov	edx, [esp+38h+var_4]
lea	eax, [esp+38h+var_18]
lea	ecx, [esp+38h+var_10]
mov	[edi+esi*8+4], edx
call	sub_1000F9C0
inc	esi
cmp	esi, [esp+38h+var_28]
jbe	short loc_1000FB8F
			
dec	[esp+38h+var_24]
jnz	short loc_1000FB84
test	ebx, ebx
jnz	short loc_1000FC2E
mov	eax, [esp+38h+var_10]
mov	esi, [esp+38h+var_20]
mov	edx, [ebp+Dst]
push	esi		
mov	[edi], eax
mov	ecx, [esp+3Ch+var_C]
push	edi		
push	edx		
mov	[edi+4], ecx
call	memcpy
mov	eax, [ebp+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_1000FC3B
mov	[eax], esi
mov	eax, esi
push	eax
push	edi
call	PORT_ZFree_Util
add	esp, 8
mov	eax, ebx
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
mov	eax, [ebp+arg_8]
test	eax, eax
jz	short loc_1000FC3B
mov	dword ptr [eax], 0
			
mov	eax, [esp+38h+var_20]
push	eax
push	edi
call	PORT_ZFree_Util
add	esp, 8
mov	eax, ebx
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	esp, ebp
pop	ebp
retn
push	ebp
mov	ebp, esp
and	esp, 0FFFFFFF8h
sub	esp, 24h
push	ebx
push	esi
mov	esi, [ebp+Size]
push	edi
mov	[esp+30h+var_1C], 10h
mov	[esp+30h+var_24], 0FFFFFFFFh
cmp	esi, 18h
jb	loc_1000FEAD
test	esi, 7
jnz	loc_1000FEAD
lea	eax, [esi-8]
cmp	[ebp+arg_C], eax
jnb	short loc_1000FCD3
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
cmp	[ebp+arg_0], 0
jz	loc_1000FE96
cmp	[ebp+Dst], 0
jz	loc_1000FE96
cmp	[ebp+Src], 0
jz	loc_1000FE96
mov	ebx, esi
shr	ebx, 3
lea	eax, ds:0[ebx*8]
push	eax
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_1000FEBA
mov	ecx, [ebp+Src]
push	esi		
push	ecx		
push	edi		
dec	ebx
call	memcpy
mov	edx, [edi]
mov	[esp+3Ch+var_10], edx
mov	eax, [edi+4]
mov	[esp+3Ch+var_C], eax
lea	eax, [ebx+ebx*2]
add	eax, eax
mov	[esp+3Ch+var_11], al
shr	eax, 8
mov	[esp+3Ch+var_12], al
shr	eax, 8
mov	[esp+3Ch+var_13], al
shr	eax, 8
mov	[esp+3Ch+var_14], al
shr	eax, 8
mov	[esp+3Ch+var_15], al
shr	eax, 8
mov	[esp+3Ch+var_16], al
shr	eax, 8
add	esp, 0Ch
mov	[esp+30h+var_17], al
shr	eax, 8
mov	[esp+30h+var_18], al
mov	[esp+30h+var_20], 6
mov	edi, edi
mov	esi, ebx
test	ebx, ebx
jz	short loc_1000FDCD
lea	eax, [esp+30h+var_18]
lea	ecx, [esp+30h+var_10]
call	sub_1000FA20
mov	ecx, [edi+esi*8]
push	10h
lea	eax, [esp+34h+var_10]
push	eax
mov	[esp+38h+var_8], ecx
mov	edx, [edi+esi*8+4]
push	10h
mov	[esp+3Ch+var_4], edx
mov	edx, eax
mov	eax, [ebp+arg_0]
lea	ecx, [esp+3Ch+var_1C]
push	ecx
push	edx
add	eax, 8
push	eax
call	sub_1000F620
add	esp, 18h
mov	[esp+30h+var_24], eax
test	eax, eax
jnz	short loc_1000FDCD
dec	esi
mov	eax, [esp+30h+var_8]
mov	[edi+esi*8+8], eax
mov	ecx, [esp+30h+var_4]
mov	[edi+esi*8+0Ch], ecx
jnz	short loc_1000FD76
			
dec	[esp+30h+var_20]
jnz	short loc_1000FD70
cmp	[esp+30h+var_24], 0
jnz	loc_1000FE71
mov	ecx, [ebp+arg_0]
mov	eax, 8
lea	edx, [esp+30h+var_10]
lea	ebx, [ebx+0]
mov	esi, [edx]
cmp	esi, [ecx]
jnz	short loc_1000FE06
sub	eax, 4
add	ecx, 4
add	edx, 4
cmp	eax, 4
jnb	short loc_1000FDF0
jmp	short loc_1000FE3A
movzx	eax, byte ptr [edx]
movzx	esi, byte ptr [ecx]
sub	eax, esi
jnz	short loc_1000FE32
movzx	eax, byte ptr [edx+1]
movzx	esi, byte ptr [ecx+1]
sub	eax, esi
jnz	short loc_1000FE32
movzx	eax, byte ptr [edx+2]
movzx	esi, byte ptr [ecx+2]
sub	eax, esi
jnz	short loc_1000FE32
movzx	eax, byte ptr [edx+3]
movzx	edx, byte ptr [ecx+3]
sub	eax, edx
			
sar	eax, 1Fh
or	eax, 1
jnz	short loc_1000FE5C
mov	esi, [ebp+Size]
mov	ecx, [ebp+Dst]
add	esi, 0FFFFFFF8h
push	esi		
lea	eax, [edi+8]
push	eax		
push	ecx		
call	memcpy
mov	eax, [ebp+arg_8]
add	esp, 0Ch
test	eax, eax
jz	short loc_1000FE7E
mov	[eax], esi
jmp	short loc_1000FE7E
push	0FFFFE002h
mov	[esp+34h+var_24], 0FFFFFFFFh
call	PORT_SetError_Util
add	esp, 4
mov	eax, [ebp+arg_8]
test	eax, eax
jz	short loc_1000FE7E
mov	dword ptr [eax], 0
			
mov	edx, [ebp+Size]
push	edx
push	edi
call	PORT_ZFree_Util
mov	eax, [esp+38h+var_24]
add	esp, 8
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
pop	esi
pop	ebx
mov	esp, ebp
pop	ebp
retn
			
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
mov	esp, ebp
pop	ebp
retn
align 10h
sub	esp, 0F8h
mov	eax, [esp+0F8h+arg_0]
push	ebx
mov	ebx, [eax+8]
push	ebp
mov	ebp, [eax+0Ch]
push	esi
mov	esi, [eax]
push	edi
mov	edi, [eax+4]
bswap	edi
bswap	esi
mov	edx, edi
mov	[esp+108h+var_F8], esi
bswap	ebx
mov	[esp+108h+var_78], esi
shl	esi, 0Fh
bswap	ebp
shr	edx, 11h
add	edx, esi
mov	esi, ebx
mov	[esp+108h+var_E0], edi
shl	edi, 0Fh
shr	esi, 11h
add	esi, edi
mov	edi, ebp
mov	eax, ebx
shl	ebx, 0Fh
mov	ecx, ebp
shl	ebp, 0Fh
shr	edi, 11h
add	edi, ebx
mov	ebx, [esp+108h+var_F8]
shr	ebx, 11h
add	ebx, ebp
mov	[esp+108h+var_F8], edx
mov	ebp, esi
shr	ebp, 2
mov	[esp+108h+var_68], edx
shl	edx, 1Eh
add	edx, ebp
mov	ebp, edi
shr	ebp, 2
mov	[esp+108h+var_D0], esi
shl	esi, 1Eh
add	esi, ebp
mov	ebp, ebx
mov	[esp+108h+var_64], edi
shr	ebp, 2
shl	edi, 1Eh
add	edi, ebp
mov	ebp, [esp+108h+var_F8]
mov	[esp+108h+var_CC], ebx
shl	ebx, 1Eh
shr	ebp, 2
add	ebx, ebp
mov	[esp+108h+var_F4], ebx
mov	ebp, edi
mov	[esp+108h+var_B4], ebx
mov	ebx, esi
mov	[esp+108h+var_B8], esi
mov	[esp+108h+var_F8], edx
shl	esi, 0Fh
mov	[esp+108h+var_50], edx
shl	edx, 0Fh
shr	ebp, 11h
add	ebp, esi
mov	esi, [esp+108h+var_F4]
shr	ebx, 11h
add	ebx, edx
mov	[esp+108h+var_4C], edi
mov	edx, esi
shl	edi, 0Fh
shr	edx, 11h
add	edx, edi
mov	edi, [esp+108h+var_F8]
shr	edi, 11h
shl	esi, 0Fh
add	edi, esi
mov	[esp+108h+var_F4], edi
mov	[esp+108h+var_44], edx
mov	[esp+108h+var_AC], edi
mov	edi, edx
mov	esi, ebp
shl	edx, 11h
mov	[esp+108h+var_F8], ebx
shl	ebp, 11h
shr	esi, 0Fh
shl	ebx, 11h
add	esi, ebx
shr	edi, 0Fh
add	edi, ebp
mov	ebp, [esp+108h+var_F4]
mov	ebx, ebp
shr	ebx, 0Fh
add	ebx, edx
mov	edx, [esp+108h+var_F8]
shr	edx, 0Fh
shl	ebp, 11h
add	ebp, edx
mov	[esp+108h+var_F8], esi
mov	[esp+108h+var_38], esi
shl	esi, 11h
mov	edx, edi
shr	edx, 0Fh
add	edx, esi
mov	esi, ebx
mov	[esp+108h+var_A0], edi
shr	esi, 0Fh
shl	edi, 11h
add	esi, edi
mov	edi, ebp
mov	[esp+108h+var_34], ebx
shl	ebx, 11h
shr	edi, 0Fh
add	edi, ebx
mov	ebx, [esp+108h+var_F8]
mov	[esp+108h+var_F8], edx
mov	[esp+108h+var_30], edx
shl	edx, 11h
mov	[esp+108h+var_9C], ebp
shl	ebp, 11h
shr	ebx, 0Fh
add	ebx, ebp
mov	ebp, esi
shr	ebp, 0Fh
add	ebp, edx
mov	[esp+108h+var_98], esi
shl	esi, 11h
mov	edx, edi
shr	edx, 0Fh
add	edx, esi
mov	[esp+108h+var_88], edx
mov	edx, [esp+108h+var_F8]
shr	edx, 0Fh
mov	esi, ebx
mov	[esp+108h+var_2C], edi
shr	esi, 0Fh
shl	edi, 11h
add	esi, edi
mov	[esp+108h+var_94], ebx
shl	ebx, 11h
add	edx, ebx
mov	ebx, [esp+108h+var_E0]
mov	[esp+108h+var_84], edx
mov	[esp+108h+var_1C], esi
mov	esi, [esp+108h+var_78]
xor	esi, 0A09E667Fh
xor	ebx, 3BCC908Bh
mov	edx, ebx
shr	edx, 10h
mov	[esp+108h+var_F8], edx
mov	edi, esi
shr	edi, 10h
mov	[esp+108h+var_20], ebp
mov	edx, edi
shr	edx, 8
mov	ebp, esi
and	edx, 0FFh
mov	edx, ds:dword_1003E2F8[edx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edx, ds:dword_1003EAF8[ebp*4]
and	esi, 0FFh
and	edi, 0FFh
xor	edx, ds:dword_1003E6F8[edi*4]
mov	ebp, ebx
xor	edx, ds:dword_1003EEF8[esi*4]
mov	esi, [esp+108h+var_F8]
shr	ebp, 8
mov	edi, esi
and	ebp, 0FFh
shr	edi, 8
and	ebx, 0FFh
and	esi, 0FFh
and	edi, 0FFh
mov	edi, ds:dword_1003E6F8[edi*4]
xor	edi, ds:dword_1003EEF8[ebp*4]
xor	edi, ds:dword_1003EAF8[esi*4]
xor	edi, ds:dword_1003E2F8[ebx*4]
mov	ebx, edx
xor	edi, edx
shl	ebx, 18h
shr	edx, 8
add	ebx, edx
xor	ebx, edi
mov	[esp+108h+var_EC], ebx
xor	ebx, ecx
xor	ebx, 4CAA73B2h
mov	ebp, ebx
shr	ebp, 10h
mov	[esp+108h+var_F8], ebp
mov	edx, edi
xor	edx, eax
xor	edx, 0B67AE858h
mov	esi, edx
shr	esi, 10h
mov	[esp+108h+var_F4], esi
mov	ebp, edx
shr	ebp, 8
shr	esi, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_1003E2F8[esi*4]
xor	esi, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+108h+var_F4]
and	ebp, 0FFh
xor	esi, ds:dword_1003E6F8[ebp*4]
and	edx, 0FFh
xor	esi, ds:dword_1003EEF8[edx*4]
mov	edx, [esp+108h+var_F8]
mov	ebp, ebx
shr	edx, 8
shr	ebp, 8
and	edx, 0FFh
mov	edx, ds:dword_1003E6F8[edx*4]
and	ebp, 0FFh
xor	edx, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+108h+var_F8]
and	ebx, 0FFh
and	ebp, 0FFh
xor	edx, ds:dword_1003EAF8[ebp*4]
xor	edx, ds:dword_1003E2F8[ebx*4]
mov	ebx, esi
shl	ebx, 18h
xor	edx, esi
shr	esi, 8
add	ebx, esi
xor	ebx, edx
mov	[esp+108h+var_E8], ebx
xor	ebx, 0E94F82BEh
mov	esi, edx
xor	esi, 0C6EF372Fh
mov	[esp+108h+var_E4], ebx
shr	ebx, 10h
mov	ebp, esi
shr	ebp, 10h
mov	[esp+108h+var_F8], ebx
mov	[esp+108h+var_F4], ebp
shr	ebp, 8
mov	ebx, esi
shr	ebx, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+108h+var_F0], ebx
mov	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+108h+var_F0]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+108h+var_F4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, [esp+108h+var_E4]
and	esi, 0FFh
xor	ebx, ds:dword_1003EEF8[esi*4]
mov	esi, [esp+108h+var_F8]
shr	ebp, 8
shr	esi, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_1003E6F8[esi*4]
xor	esi, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+108h+var_F8]
and	ebp, 0FFh
xor	esi, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+108h+var_E4]
and	ebp, 0FFh
xor	esi, ds:dword_1003E2F8[ebp*4]
mov	ebp, ebx
xor	esi, ebx
shr	ebx, 8
shl	ebp, 18h
add	ebp, ebx
xor	ebp, esi
xor	ebp, [esp+108h+var_EC]
xor	esi, edi
mov	ebx, ebp
xor	ebx, 0F1D36F1Ch
mov	[esp+108h+var_E4], ebx
mov	edi, esi
xor	edi, 54FF53A5h
mov	ebx, edi
shr	ebx, 10h
mov	[esp+108h+var_F4], ebx
mov	ebx, [esp+108h+var_E4]
shr	ebx, 10h
mov	[esp+108h+var_F8], ebx
mov	ebx, [esp+108h+var_F4]
mov	[esp+108h+var_EC], edi
shr	edi, 8
shr	ebx, 8
and	edi, 0FFh
and	ebx, 0FFh
mov	[esp+108h+var_F0], edi
mov	edi, ds:dword_1003E2F8[ebx*4]
mov	ebx, [esp+108h+var_F0]
xor	edi, ds:dword_1003EAF8[ebx*4]
mov	ebx, [esp+108h+var_F4]
and	ebx, 0FFh
xor	edi, ds:dword_1003E6F8[ebx*4]
mov	ebx, [esp+108h+var_EC]
and	ebx, 0FFh
xor	edi, ds:dword_1003EEF8[ebx*4]
mov	ebx, [esp+108h+var_E4]
mov	[esp+108h+var_EC], edi
mov	edi, [esp+108h+var_F8]
shr	edi, 8
and	edi, 0FFh
mov	edi, ds:dword_1003E6F8[edi*4]
shr	ebx, 8
and	ebx, 0FFh
xor	edi, ds:dword_1003EEF8[ebx*4]
mov	ebx, [esp+108h+var_F8]
and	ebx, 0FFh
xor	edi, ds:dword_1003EAF8[ebx*4]
mov	ebx, [esp+108h+var_E4]
and	ebx, 0FFh
xor	edi, ds:dword_1003E2F8[ebx*4]
mov	ebx, [esp+108h+var_EC]
xor	edi, ebx
mov	[esp+108h+var_F8], edi
xor	edx, edi
mov	edi, ebx
shl	edi, 18h
shr	ebx, 8
add	edi, ebx
xor	edi, [esp+108h+var_F8]
mov	ebx, [esp+108h+var_E8]
xor	ebx, edi
mov	[esp+108h+var_F8], edx
mov	[esp+108h+var_70], edx
shl	edx, 0Fh
mov	edi, ebx
shr	edi, 11h
add	edi, edx
mov	edx, esi
mov	[esp+108h+var_D8], ebx
shr	edx, 11h
shl	ebx, 0Fh
add	edx, ebx
mov	[esp+108h+var_6C], esi
shl	esi, 0Fh
mov	ebx, ebp
shr	ebx, 11h
add	ebx, esi
mov	esi, [esp+108h+var_F8]
shr	esi, 11h
mov	[esp+108h+var_D4], ebp
shl	ebp, 0Fh
add	ebp, esi
mov	esi, edx
mov	[esp+108h+var_F8], edi
mov	[esp+108h+var_60], edi
shl	edi, 0Fh
shr	esi, 11h
add	esi, edi
mov	[esp+108h+var_C8], edx
shl	edx, 0Fh
mov	edi, ebx
shr	edi, 11h
add	edi, edx
mov	[esp+108h+var_5C], ebx
mov	edx, ebp
shr	edx, 11h
shl	ebx, 0Fh
add	edx, ebx
mov	ebx, [esp+108h+var_F8]
mov	[esp+108h+var_C4], ebp
shr	ebx, 11h
shl	ebp, 0Fh
add	ebp, ebx
mov	[esp+108h+var_F8], esi
mov	[esp+108h+var_58], esi
mov	ebx, edi
shl	esi, 0Fh
shr	ebx, 11h
add	ebx, esi
mov	esi, edx
mov	[esp+108h+var_C0], edi
shl	edi, 0Fh
shr	esi, 11h
add	esi, edi
mov	[esp+108h+var_54], edx
shl	edx, 0Fh
mov	edi, ebp
shr	edi, 11h
add	edi, edx
mov	edx, [esp+108h+var_F8]
mov	[esp+108h+var_BC], ebp
shr	edx, 11h
shl	ebp, 0Fh
add	edx, ebp
mov	ebp, esi
mov	[esp+108h+var_F4], edx
mov	[esp+108h+var_48], ebx
mov	[esp+108h+var_F8], ebx
shl	ebx, 0Fh
mov	[esp+108h+var_B0], esi
shr	ebp, 11h
mov	edx, edi
shl	esi, 0Fh
add	ebp, ebx
mov	ebx, [esp+108h+var_F4]
shr	edx, 11h
add	edx, esi
mov	esi, ebx
shr	esi, 11h
shl	edi, 0Fh
add	esi, edi
mov	edi, [esp+108h+var_F8]
shl	ebx, 0Fh
mov	[esp+108h+var_40], ebp
mov	[esp+108h+var_F8], ebp
shr	edi, 11h
add	edi, ebx
mov	ebp, esi
shr	ebp, 1Eh
mov	ebx, edx
mov	[esp+108h+var_A8], edx
lea	edx, [ebp+edx*4+0]
mov	ebp, edi
shr	ebp, 1Eh
mov	[esp+108h+var_3C], esi
lea	esi, [ebp+esi*4+0]
mov	ebp, [esp+108h+var_F8]
mov	[esp+108h+var_A4], edi
shr	ebx, 1Eh
shr	ebp, 1Eh
lea	edi, [ebp+edi*4+0]
mov	ebp, [esp+108h+var_F8]
lea	ebx, [ebx+ebp*4]
xor	[esp+108h+var_6C], eax
xor	[esp+108h+var_64], eax
xor	[esp+108h+var_5C], eax
mov	[esp+108h+var_F4], ebx
mov	ebx, edx
mov	[esp+108h+var_28], edx
mov	ebp, esi
shl	edx, 11h
shr	ebp, 0Fh
add	ebp, edx
mov	edx, edi
xor	[esp+108h+var_D4], ecx
xor	[esp+108h+var_CC], ecx
xor	[esp+108h+var_C4], ecx
mov	[esp+108h+var_90], esi
shl	esi, 11h
shr	edx, 0Fh
add	edx, esi
mov	esi, [esp+108h+var_F4]
shr	ebx, 0Fh
mov	[esp+108h+var_24], edi
mov	[esp+108h+var_E8], edx
mov	edx, esi
shl	edi, 11h
shl	esi, 11h
add	ebx, esi
mov	esi, [esp+108h+var_BC]
shr	edx, 0Fh
add	edx, edi
not	esi
mov	edi, esi
and	edi, ecx
xor	eax, edi
mov	edi, [esp+108h+var_54]
xor	[esp+108h+var_4C], eax
xor	[esp+108h+var_44], eax
xor	[esp+108h+var_3C], eax
mov	[esp+108h+var_7C], ebx
and	edi, eax
mov	ebx, edi
shr	ebx, 1Fh
lea	edi, [ebx+edi*2]
xor	ecx, edi
mov	edi, [esp+108h+var_9C]
xor	[esp+108h+var_B4], ecx
xor	[esp+108h+var_AC], ecx
xor	[esp+108h+var_A4], ecx
not	edi
mov	ebx, edi
and	ebx, ecx
xor	eax, ebx
mov	ebx, [esp+108h+var_34]
and	ebx, eax
mov	[esp+108h+var_F0], ebp
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	[esp+108h+var_2C], eax
xor	[esp+108h+var_24], eax
xor	[esp+108h+var_1C], eax
xor	eax, [esp+108h+var_F0]
xor	[esp+108h+var_20], edx
xor	[esp+108h+var_28], edx
xor	[esp+108h+var_30], edx
xor	ecx, ebx
xor	[esp+108h+var_94], ecx
xor	[esp+108h+var_84], ecx
mov	ebx, ecx
xor	ecx, [esp+108h+var_E8]
xor	ebx, [esp+108h+var_F4]
mov	[esp+108h+var_80], ecx
mov	ecx, [esp+108h+var_7C]
xor	[esp+108h+var_88], ecx
xor	[esp+108h+var_90], ecx
xor	[esp+108h+var_98], ecx
mov	[esp+108h+var_8C], ebx
mov	ebx, [esp+108h+var_A0]
mov	[esp+108h+var_18], eax
not	ebx
mov	eax, ebx
and	eax, ecx
xor	eax, edx
xor	[esp+108h+var_50], eax
xor	[esp+108h+var_40], eax
xor	[esp+108h+var_48], eax
mov	edx, eax
and	edx, [esp+108h+var_38]
mov	ebp, edx
shr	ebp, 1Fh
lea	edx, [ebp+edx*2+0]
xor	edx, ecx
mov	ecx, [esp+108h+var_C0]
xor	[esp+108h+var_B8], edx
xor	[esp+108h+var_A8], edx
xor	[esp+108h+var_B0], edx
not	ecx
mov	[esp+108h+var_F0], ecx
and	ecx, edx
xor	eax, ecx
xor	[esp+108h+var_68], eax
xor	[esp+108h+var_60], eax
mov	ecx, eax
and	ecx, [esp+108h+var_58]
mov	ebp, ecx
shr	ebp, 1Fh
lea	ecx, [ebp+ecx*2+0]
mov	ebp, [esp+108h+var_78]
xor	edx, ecx
xor	[esp+108h+var_C8], edx
xor	[esp+108h+var_D0], edx
xor	[esp+108h+var_D8], edx
xor	[esp+108h+var_E0], edx
mov	ecx, [esp+108h+var_70]
xor	ecx, eax
mov	edx, ecx
xor	ebp, eax
mov	eax, [esp+108h+arg_4]
xor	edx, ebp
mov	[eax], edx
mov	edx, [esp+108h+var_D8]
xor	edx, [esp+108h+var_E0]
mov	[eax+4], edx
mov	edx, ecx
mov	ecx, [esp+108h+var_6C]
xor	ecx, [esp+108h+var_64]
xor	edx, [esp+108h+var_68]
mov	[esp+108h+var_E4], ecx
mov	ecx, [esp+108h+var_60]
xor	ecx, [esp+108h+var_68]
mov	[esp+108h+var_F4], ecx
mov	ecx, [esp+108h+var_5C]
xor	ecx, [esp+108h+var_64]
mov	[esp+108h+var_F8], ecx
mov	ecx, [esp+108h+var_F0]
and	ecx, [esp+108h+var_B8]
xor	ecx, [esp+108h+var_50]
mov	[esp+108h+var_E8], ecx
and	ecx, [esp+108h+var_58]
mov	[esp+108h+var_EC], ecx
mov	ecx, [esp+108h+var_E8]
xor	ecx, [esp+108h+var_60]
and	ebx, [esp+108h+var_98]
mov	[eax+38h], ecx
mov	ecx, [esp+108h+var_EC]
mov	ebp, ecx
shr	ebp, 1Fh
lea	ecx, [ebp+ecx*2+0]
xor	ecx, [esp+108h+var_C8]
mov	ebp, [esp+108h+var_C4]
xor	ecx, [esp+108h+var_B8]
and	esi, ebp
mov	[eax+3Ch], ecx
mov	ecx, [esp+108h+var_58]
xor	esi, [esp+108h+var_5C]
mov	[eax+40h], ecx
mov	ecx, [esp+108h+var_C0]
mov	[eax+44h], ecx
mov	ecx, [esp+108h+var_54]
mov	[eax+48h], ecx
mov	ecx, [esp+108h+var_BC]
mov	[eax+4Ch], ecx
xor	ebx, [esp+108h+var_30]
mov	ecx, esi
and	ecx, [esp+108h+var_54]
xor	esi, [esp+108h+var_4C]
and	edi, [esp+108h+var_A4]
mov	[eax+50h], esi
mov	esi, ecx
shr	esi, 1Fh
lea	ecx, [esi+ecx*2]
xor	ecx, ebp
xor	ecx, [esp+108h+var_B4]
xor	edi, [esp+108h+var_3C]
mov	[eax+54h], ecx
mov	ecx, [esp+108h+var_44]
xor	ecx, [esp+108h+var_4C]
mov	esi, [esp+108h+var_48]
mov	[esp+108h+var_F0], ecx
mov	ecx, [esp+108h+var_40]
xor	ecx, [esp+108h+var_48]
mov	ebp, [esp+108h+var_3C]
mov	[esp+108h+var_C], ecx
mov	ecx, ebx
and	ecx, [esp+108h+var_38]
xor	ebx, [esp+108h+var_40]
xor	esi, [esp+108h+var_50]
mov	[eax+78h], ebx
mov	ebx, ecx
shr	ebx, 1Fh
lea	ecx, [ebx+ecx*2]
xor	ecx, [esp+108h+var_A8]
mov	ebx, [esp+108h+var_34]
xor	ecx, [esp+108h+var_98]
xor	ebp, [esp+108h+var_44]
mov	[eax+7Ch], ecx
mov	ecx, [esp+108h+var_38]
mov	[eax+80h], ecx
mov	ecx, [esp+108h+var_A0]
mov	[eax+84h], ecx
mov	ecx, [esp+108h+var_9C]
mov	[eax+8Ch], ecx
mov	ecx, edi
and	ecx, ebx
xor	edi, [esp+108h+var_2C]
mov	[eax+88h], ebx
mov	ebx, ecx
shr	ebx, 1Fh
lea	ecx, [ebx+ecx*2]
xor	ecx, [esp+108h+var_A4]
xor	ecx, [esp+108h+var_94]
mov	[eax+94h], ecx
mov	ecx, [esp+108h+var_28]
xor	ecx, [esp+108h+var_30]
mov	[esp+108h+var_E8], ecx
mov	ecx, [esp+108h+var_24]
xor	ecx, [esp+108h+var_2C]
mov	[esp+108h+var_10], ecx
mov	ecx, [esp+108h+var_28]
xor	ecx, [esp+108h+var_20]
mov	ebx, [esp+108h+var_1C]
mov	[esp+108h+var_4], ecx
mov	ecx, [esp+108h+var_24]
xor	ecx, ebx
mov	[esp+108h+var_8], ecx
mov	ecx, [esp+108h+var_18]
xor	ecx, ebx
mov	[eax+0C0h], ecx
mov	ecx, [esp+108h+var_80]
xor	ecx, [esp+108h+var_84]
mov	[eax+0C4h], ecx
mov	ecx, [esp+108h+var_D4]
xor	ecx, [esp+108h+var_6C]
mov	ebx, ecx
shr	ecx, 18h
shl	ebx, 8
add	ebx, ecx
mov	[esp+108h+var_EC], ebx
xor	ebx, [esp+108h+var_6C]
mov	ecx, [esp+108h+var_EC]
mov	[eax+10h], ecx
mov	ecx, edx
xor	ecx, [esp+108h+var_D8]
mov	[eax+14h], ebx
xor	ecx, [esp+108h+var_D0]
mov	ebx, ecx
shr	ecx, 18h
shl	ebx, 8
add	ebx, ecx
xor	edx, ebx
mov	[eax+18h], ebx
mov	ebx, [esp+108h+var_E4]
mov	ecx, ebx
xor	ecx, [esp+108h+var_D4]
mov	[eax+1Ch], edx
xor	ecx, [esp+108h+var_CC]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	ebx, edx
mov	[eax+24h], ebx
mov	ebx, [esp+108h+var_F4]
mov	ecx, ebx
xor	ecx, [esp+108h+var_C8]
mov	[eax+20h], edx
xor	ecx, [esp+108h+var_D0]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	ebx, edx
mov	[eax+2Ch], ebx
mov	ebx, [esp+108h+var_F8]
mov	ecx, ebx
xor	ecx, [esp+108h+var_C4]
mov	[eax+28h], edx
xor	ecx, [esp+108h+var_CC]
mov	edx, ecx
shl	edx, 8
shr	ecx, 18h
add	edx, ecx
mov	ecx, [eax+3Ch]
xor	ebx, edx
mov	[eax+34h], ebx
mov	ebx, [eax+38h]
xor	ecx, ebx
mov	[eax+30h], edx
mov	edx, ecx
shl	edx, 8
shr	ecx, 18h
add	edx, ecx
mov	ecx, [eax+54h]
xor	ebx, edx
mov	[eax+3Ch], ebx
mov	ebx, [eax+50h]
xor	ecx, ebx
mov	[eax+38h], edx
mov	edx, ecx
shl	edx, 8
shr	ecx, 18h
add	edx, ecx
xor	ebx, edx
mov	[eax+50h], edx
mov	ecx, esi
mov	[eax+54h], ebx
mov	ebx, [esp+108h+var_B0]
xor	ecx, ebx
xor	ecx, [esp+108h+var_B8]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	[eax+5Ch], esi
mov	esi, [esp+108h+var_F0]
mov	[eax+58h], edx
mov	ecx, esi
xor	ecx, [esp+108h+var_AC]
xor	ecx, [esp+108h+var_B4]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	[eax+64h], esi
mov	esi, [esp+108h+var_C]
mov	[eax+60h], edx
mov	ecx, esi
xor	ecx, [esp+108h+var_A8]
xor	ecx, ebx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	[eax+68h], edx
mov	ecx, ebp
xor	ecx, [esp+108h+var_A4]
mov	ebx, [esp+108h+var_90]
xor	ecx, [esp+108h+var_AC]
mov	[eax+6Ch], esi
mov	esi, [eax+78h]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, [eax+7Ch]
xor	ecx, esi
xor	ebp, edx
mov	[eax+70h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, [eax+94h]
xor	esi, edx
xor	ecx, edi
mov	[eax+78h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	[eax+7Ch], esi
mov	esi, [esp+108h+var_E8]
mov	ecx, esi
xor	ecx, ebx
xor	ecx, [esp+108h+var_98]
xor	edi, edx
mov	[eax+90h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	[eax+9Ch], esi
mov	esi, [esp+108h+var_10]
mov	[eax+74h], ebp
mov	ebp, [esp+108h+var_8C]
mov	[eax+94h], edi
mov	[eax+98h], edx
mov	ecx, esi
mov	edi, [esp+108h+var_4]
xor	ecx, ebp
xor	ecx, [esp+108h+var_94]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	ecx, edi
xor	ecx, ebx
mov	[eax+0A0h], edx
mov	[eax+0A4h], esi
mov	esi, [esp+108h+var_88]
xor	ecx, esi
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	edi, edx
mov	[eax+0ACh], edi
mov	edi, [esp+108h+var_8]
mov	ecx, edi
xor	ecx, ebp
xor	ecx, [esp+108h+var_84]
mov	[eax+0A8h], edx
mov	edx, ecx
shl	edx, 8
shr	ecx, 18h
add	edx, ecx
xor	edi, edx
mov	[eax+0B4h], edi
mov	edi, [esp+108h+var_20]
xor	esi, edi
mov	[eax+0B0h], edx
mov	edx, esi
mov	ecx, edx
shr	edx, 18h
shl	ecx, 8
add	ecx, edx
mov	edx, ecx
xor	edx, edi
pop	edi
pop	esi
pop	ebp
mov	[eax+0BCh], edx
mov	[eax+0B8h], ecx
pop	ebx
add	esp, 0F8h
retn
align 10h
			
sub	esp, 158h
mov	eax, [esp+158h+arg_0]
mov	ecx, [eax+10h]
mov	edx, [eax+4]
push	ebx
mov	ebx, [eax]
push	ebp
push	esi
mov	esi, [eax+8]
push	edi
mov	edi, [eax+0Ch]
bswap	ecx
mov	[esp+168h+var_144], ecx
mov	ecx, [eax+14h]
bswap	edx
bswap	esi
bswap	edi
bswap	ecx
mov	[esp+168h+var_154], edx
mov	ebp, esi
shr	ebp, 13h
mov	[esp+168h+var_A4], edx
shl	edx, 0Dh
add	edx, ebp
mov	ebp, edi
mov	[esp+168h+var_140], ecx
mov	ecx, [eax+18h]
mov	eax, [eax+1Ch]
shr	ebp, 13h
bswap	ebx
bswap	eax
mov	[esp+168h+var_148], eax
mov	eax, esi
shl	esi, 0Dh
add	esi, ebp
mov	ebp, ebx
shr	ebp, 13h
bswap	ecx
mov	[esp+168h+var_138], ecx
mov	ecx, edi
shl	edi, 0Dh
add	edi, ebp
mov	ebp, [esp+168h+var_154]
mov	[esp+168h+var_12C], ebx
shl	ebx, 0Dh
shr	ebp, 13h
add	ebp, ebx
mov	[esp+168h+var_158], edx
mov	ebx, esi
mov	[esp+168h+var_FC], edx
shl	edx, 0Fh
shr	ebx, 11h
add	ebx, edx
mov	edx, edi
mov	[esp+168h+var_74], esi
mov	[esp+168h+var_F8], edi
shl	esi, 0Fh
shl	edi, 0Fh
shr	edx, 11h
add	edx, esi
mov	esi, ebp
shr	esi, 11h
add	esi, edi
mov	edi, [esp+168h+var_158]
shr	edi, 11h
mov	[esp+168h+var_70], ebp
shl	ebp, 0Fh
add	ebp, edi
mov	edi, edx
shr	edi, 0Fh
mov	[esp+168h+var_EC], ebx
mov	[esp+168h+var_158], ebx
shl	ebx, 11h
add	edi, ebx
mov	[esp+168h+var_150], edi
mov	edi, esi
mov	[esp+168h+var_64], edx
shr	edi, 0Fh
shl	edx, 11h
mov	[esp+168h+var_E8], esi
mov	[esp+168h+var_60], ebp
add	edi, edx
mov	ebx, [esp+168h+var_150]
shl	esi, 11h
mov	edx, ebp
shr	edx, 0Fh
add	edx, esi
mov	esi, [esp+168h+var_158]
mov	[esp+168h+var_158], ebx
mov	[esp+168h+var_D4], ebx
mov	ebx, edx
shr	ebx, 1Eh
shr	esi, 0Fh
shl	ebp, 11h
add	esi, ebp
lea	ebp, [ebx+edi*4]
mov	[esp+168h+var_D0], edx
mov	ebx, esi
shr	ebx, 1Eh
lea	edx, [ebx+edx*4]
mov	ebx, [esp+168h+var_158]
mov	[esp+168h+var_134], edx
mov	edx, ebx
shr	edx, 1Eh
mov	[esp+168h+var_48], esi
lea	esi, [edx+esi*4]
mov	edx, [esp+168h+var_134]
mov	[esp+168h+var_2C], edx
mov	[esp+168h+var_4C], edi
shr	edi, 1Eh
lea	edx, [edi+ebx*4]
mov	ebx, [esp+168h+var_140]
mov	[esp+168h+var_28], edx
mov	edx, [esp+168h+var_144]
mov	[esp+168h+var_B0], esi
mov	esi, ebx
mov	[esp+168h+var_B4], ebp
mov	ebp, edx
shl	edx, 0Fh
shr	esi, 11h
add	esi, edx
mov	edx, [esp+168h+var_138]
mov	edi, edx
shl	ebx, 0Fh
shr	edi, 11h
add	edi, ebx
mov	ebx, [esp+168h+var_148]
shl	edx, 0Fh
shr	ebx, 11h
add	ebx, edx
mov	edx, [esp+168h+var_148]
shl	edx, 0Fh
shr	ebp, 11h
add	ebp, edx
mov	[esp+168h+var_158], esi
mov	edx, edi
mov	[esp+168h+var_11C], esi
shl	esi, 0Fh
shr	edx, 11h
add	edx, esi
mov	esi, ebx
mov	[esp+168h+var_94], edi
shl	edi, 0Fh
shr	esi, 11h
add	esi, edi
mov	edi, ebp
mov	[esp+168h+var_118], ebx
shl	ebx, 0Fh
shr	edi, 11h
add	edi, ebx
mov	ebx, [esp+168h+var_158]
mov	[esp+168h+var_90], ebp
shl	ebp, 0Fh
shr	ebx, 11h
add	ebx, ebp
mov	[esp+168h+var_10C], edx
mov	[esp+168h+var_158], edx
mov	ebp, esi
shl	edx, 1Eh
mov	[esp+168h+var_84], esi
mov	[esp+168h+var_108], edi
mov	[esp+168h+var_80], ebx
shr	ebp, 2
add	edx, ebp
mov	ebp, edi
shr	ebp, 2
shl	esi, 1Eh
add	esi, ebp
mov	ebp, ebx
shr	ebp, 2
shl	edi, 1Eh
add	edi, ebp
mov	ebp, [esp+168h+var_158]
shr	ebp, 2
mov	[esp+168h+var_158], edx
mov	[esp+168h+var_E4], edx
shl	ebx, 1Eh
add	ebx, ebp
mov	ebp, edi
shr	ebp, 1Eh
mov	edx, esi
mov	[esp+168h+var_5C], esi
lea	esi, [ebp+esi*4+0]
mov	ebp, ebx
shr	ebp, 1Eh
mov	[esp+168h+var_E0], edi
lea	edi, [ebp+edi*4+0]
mov	ebp, [esp+168h+var_158]
shr	ebp, 1Eh
shr	edx, 1Eh
mov	[esp+168h+var_58], ebx
lea	ebx, [ebp+ebx*4+0]
mov	ebp, [esp+168h+var_158]
lea	edx, [edx+ebp*4]
mov	[esp+168h+var_158], esi
mov	ebp, ebx
shr	ebp, 1Eh
mov	[esp+168h+var_C4], esi
mov	esi, edi
mov	[esp+168h+var_3C], edi
lea	edi, [ebp+edi*4+0]
mov	ebp, edx
shr	ebp, 1Eh
mov	[esp+168h+var_C0], ebx
lea	ebx, [ebp+ebx*4+0]
mov	[esp+168h+var_38], edx
mov	[esp+168h+var_140], ebx
mov	ebx, [esp+168h+var_158]
mov	ebp, ebx
shr	ebp, 1Eh
lea	edx, [ebp+edx*4+0]
mov	[esp+168h+var_138], edx
shr	esi, 1Eh
lea	edx, [esi+ebx*4]
mov	ebx, [esp+168h+var_A4]
xor	ebx, [esp+168h+var_140]
mov	esi, [esp+168h+var_12C]
xor	esi, edi
mov	[esp+168h+var_148], edx
mov	[esp+168h+var_144], edi
xor	esi, 0A09E667Fh
xor	ebx, 3BCC908Bh
mov	edi, esi
shr	edi, 10h
mov	edx, ebx
shr	edx, 10h
mov	[esp+168h+var_158], edx
mov	edx, edi
shr	edx, 8
and	edx, 0FFh
mov	edx, ds:dword_1003E2F8[edx*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edx, ds:dword_1003EAF8[ebp*4]
and	edi, 0FFh
xor	edx, ds:dword_1003E6F8[edi*4]
and	esi, 0FFh
xor	edx, ds:dword_1003EEF8[esi*4]
mov	esi, [esp+168h+var_158]
mov	edi, esi
shr	edi, 8
and	edi, 0FFh
mov	ebp, ebx
mov	edi, ds:dword_1003E6F8[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003EEF8[ebp*4]
and	ebx, 0FFh
and	esi, 0FFh
xor	edi, ds:dword_1003EAF8[esi*4]
xor	edi, ds:dword_1003E2F8[ebx*4]
mov	ebx, edx
xor	edi, edx
shl	ebx, 18h
shr	edx, 8
add	ebx, edx
xor	ebx, edi
mov	[esp+168h+var_154], ebx
xor	ebx, ecx
xor	ebx, [esp+168h+var_148]
mov	edx, edi
xor	edx, eax
xor	edx, [esp+168h+var_138]
xor	ebx, 4CAA73B2h
xor	edx, 0B67AE858h
mov	ebp, ebx
shr	ebp, 10h
mov	[esp+168h+var_158], ebp
mov	esi, edx
shr	esi, 10h
mov	[esp+168h+var_150], esi
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
shr	esi, 8
and	esi, 0FFh
mov	esi, ds:dword_1003E2F8[esi*4]
xor	esi, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_150]
and	ebp, 0FFh
xor	esi, ds:dword_1003E6F8[ebp*4]
and	edx, 0FFh
xor	esi, ds:dword_1003EEF8[edx*4]
mov	edx, [esp+168h+var_158]
mov	ebp, ebx
shr	edx, 8
shr	ebp, 8
and	ebp, 0FFh
and	edx, 0FFh
mov	edx, ds:dword_1003E6F8[edx*4]
xor	edx, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+168h+var_158]
and	ebx, 0FFh
and	ebp, 0FFh
xor	edx, ds:dword_1003EAF8[ebp*4]
xor	edx, ds:dword_1003E2F8[ebx*4]
mov	ebx, esi
shl	ebx, 18h
xor	edx, esi
shr	esi, 8
add	ebx, esi
xor	ebx, edx
xor	ebx, [esp+168h+var_140]
xor	edx, [esp+168h+var_144]
mov	[esp+168h+var_134], ebx
xor	ebx, 0E94F82BEh
mov	[esp+168h+var_14C], ebx
shr	ebx, 10h
mov	esi, edx
xor	esi, 0C6EF372Fh
mov	[esp+168h+var_158], ebx
mov	ebp, esi
shr	ebp, 10h
mov	[esp+168h+var_150], ebp
shr	ebp, 8
mov	ebx, esi
shr	ebx, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+168h+var_13C], ebx
mov	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+168h+var_13C]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_150]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, [esp+168h+var_14C]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, [esp+168h+var_138]
and	esi, 0FFh
xor	ebx, ds:dword_1003EEF8[esi*4]
mov	esi, [esp+168h+var_158]
shr	esi, 8
and	esi, 0FFh
mov	esi, ds:dword_1003E6F8[esi*4]
xor	esi, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+168h+var_158]
and	ebp, 0FFh
xor	esi, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_14C]
and	ebp, 0FFh
xor	esi, ds:dword_1003E2F8[ebp*4]
mov	ebp, ebx
shl	ebp, 18h
xor	esi, ebx
shr	ebx, 8
add	ebp, ebx
xor	ebp, esi
xor	esi, edi
mov	edi, [esp+168h+var_154]
xor	edi, [esp+168h+var_148]
mov	ebx, esi
xor	ebp, edi
mov	[esp+168h+var_13C], ebp
xor	ebp, 0F1D36F1Ch
mov	[esp+168h+var_14C], ebp
shr	ebp, 10h
xor	ebx, 54FF53A5h
mov	[esp+168h+var_158], ebp
mov	edi, ebx
shr	edi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	[esp+168h+var_150], edi
shr	edi, 8
and	edi, 0FFh
mov	edi, ds:dword_1003E2F8[edi*4]
xor	edi, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_150]
and	ebp, 0FFh
xor	edi, ds:dword_1003E6F8[ebp*4]
mov	ebp, [esp+168h+var_14C]
and	ebx, 0FFh
xor	edi, ds:dword_1003EEF8[ebx*4]
mov	ebx, [esp+168h+var_158]
shr	ebp, 8
shr	ebx, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+168h+var_158]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_14C]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edi
xor	ebx, edi
shl	ebp, 18h
shr	edi, 8
add	ebp, edi
mov	edi, [esp+168h+var_144]
xor	ebp, ebx
mov	[esp+168h+var_154], ebp
mov	ebp, [esp+168h+var_134]
xor	ebp, [esp+168h+var_154]
xor	edx, ebx
mov	ebx, [esp+168h+var_140]
xor	edi, edx
mov	[esp+168h+var_134], ebp
mov	[esp+168h+var_144], edi
xor	ebx, ebp
mov	[esp+168h+var_140], ebx
xor	ebx, 0DE682D1Dh
mov	[esp+168h+var_14C], ebx
xor	edi, 10E527FAh
shr	ebx, 10h
mov	[esp+168h+var_158], ebx
mov	ebp, edi
shr	ebp, 10h
mov	[esp+168h+var_150], ebp
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edi
shr	ebx, 8
and	ebx, 0FFh
mov	[esp+168h+var_154], ebx
mov	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+168h+var_154]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_150]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, [esp+168h+var_14C]
and	edi, 0FFh
xor	ebx, ds:dword_1003EEF8[edi*4]
mov	edi, [esp+168h+var_158]
shr	ebp, 8
and	ebp, 0FFh
mov	[esp+168h+var_154], ebp
shr	edi, 8
and	edi, 0FFh
mov	ebp, ds:dword_1003E6F8[edi*4]
mov	edi, [esp+168h+var_154]
xor	ebp, ds:dword_1003EEF8[edi*4]
mov	edi, [esp+168h+var_158]
and	edi, 0FFh
xor	ebp, ds:dword_1003EAF8[edi*4]
mov	edi, [esp+168h+var_14C]
and	edi, 0FFh
xor	ebp, ds:dword_1003E2F8[edi*4]
xor	ebp, ebx
mov	edi, ebp
xor	edi, [esp+168h+var_138]
xor	edi, esi
mov	[esp+168h+var_138], edi
mov	edi, ebx
shr	ebx, 8
shl	edi, 18h
add	edi, ebx
mov	ebx, [esp+168h+var_138]
xor	edi, ebp
xor	edi, [esp+168h+var_148]
xor	ebx, 0B05688C2h
xor	edi, [esp+168h+var_13C]
mov	[esp+168h+var_148], ebx
mov	ebp, edi
xor	ebp, 0B3E6C1FDh
mov	[esp+168h+var_14C], ebp
mov	ebp, ebx
shr	ebp, 10h
mov	[esp+168h+var_150], ebp
mov	ebp, [esp+168h+var_14C]
shr	ebp, 10h
mov	[esp+168h+var_158], ebp
mov	ebp, [esp+168h+var_150]
shr	ebx, 8
shr	ebp, 8
and	ebx, 0FFh
and	ebp, 0FFh
mov	[esp+168h+var_154], ebx
mov	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+168h+var_154]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_150]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, [esp+168h+var_148]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	[esp+168h+var_154], ebx
mov	ebx, [esp+168h+var_158]
shr	ebx, 8
mov	ebp, [esp+168h+var_14C]
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, [esp+168h+var_158]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, [esp+168h+var_14C]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
xor	ebx, [esp+168h+var_154]
xor	[esp+168h+var_144], ebx
mov	[esp+168h+var_158], ebx
mov	ebx, [esp+168h+var_154]
mov	ebp, ebx
shl	ebp, 18h
shr	ebx, 8
add	ebp, ebx
xor	ebp, [esp+168h+var_158]
mov	[esp+168h+var_158], edx
xor	[esp+168h+var_140], ebp
mov	ebp, [esp+168h+var_134]
mov	ebx, ebp
shl	ebp, 0Fh
shl	edx, 0Fh
shr	ebx, 11h
add	ebx, edx
mov	edx, esi
shr	edx, 11h
add	edx, ebp
mov	ebp, [esp+168h+var_13C]
shr	ebp, 11h
shl	esi, 0Fh
add	ebp, esi
mov	esi, [esp+168h+var_158]
mov	[esp+168h+var_14C], ebp
mov	ebp, [esp+168h+var_13C]
shl	ebp, 0Fh
shr	esi, 11h
add	esi, ebp
mov	ebp, [esp+168h+var_14C]
mov	[esp+168h+var_110], ebp
mov	[esp+168h+var_158], ebx
mov	[esp+168h+var_114], ebx
mov	ebp, edx
shr	ebp, 2
shl	ebx, 1Eh
add	ebx, ebp
mov	[esp+168h+var_150], ebx
mov	ebx, [esp+168h+var_14C]
mov	ebp, ebx
shr	ebp, 2
mov	[esp+168h+var_8C], edx
shl	edx, 1Eh
add	edx, ebp
mov	ebp, esi
shr	ebp, 2
mov	[esp+168h+var_88], esi
shl	ebx, 1Eh
add	ebx, ebp
mov	ebp, [esp+168h+var_158]
shl	esi, 1Eh
shr	ebp, 2
add	esi, ebp
mov	ebp, [esp+168h+var_150]
mov	[esp+168h+var_13C], esi
mov	esi, ebx
mov	[esp+168h+var_6C], edx
mov	[esp+168h+var_CC], edx
mov	[esp+168h+var_154], edx
shr	esi, 0Fh
shl	edx, 11h
add	esi, edx
mov	[esp+168h+var_150], esi
mov	esi, [esp+168h+var_13C]
mov	[esp+168h+var_F4], ebp
mov	[esp+168h+var_F0], ebx
mov	[esp+168h+var_44], ebx
mov	[esp+168h+var_40], ebp
mov	edx, esi
shr	edx, 0Fh
shl	ebx, 11h
add	edx, ebx
mov	ebx, [esp+168h+var_140]
mov	[esp+168h+var_134], edx
mov	edx, ebp
shr	edx, 0Fh
shl	esi, 11h
add	edx, esi
mov	[esp+168h+var_14C], edx
mov	edx, [esp+168h+var_154]
shr	edx, 0Fh
shl	ebp, 11h
add	edx, ebp
mov	ebp, [esp+168h+var_138]
mov	[esp+168h+var_30], edx
mov	edx, [esp+168h+var_144]
mov	[esp+168h+var_158], edx
mov	[esp+168h+var_124], edx
shl	edx, 1Eh
mov	esi, ebx
shr	esi, 2
add	edx, esi
mov	esi, ebp
mov	[esp+168h+var_9C], ebx
shl	ebx, 1Eh
shr	esi, 2
add	ebx, esi
mov	esi, edi
mov	[esp+168h+var_120], ebp
shl	ebp, 1Eh
shr	esi, 2
add	ebp, esi
mov	esi, [esp+168h+var_158]
mov	[esp+168h+var_98], edi
shl	edi, 1Eh
mov	[esp+168h+var_158], edx
shr	esi, 2
add	edi, esi
mov	[esp+168h+var_148], edi
mov	[esp+168h+var_104], edx
mov	[esp+168h+var_78], edi
shl	edx, 1Eh
mov	edi, ebx
shr	edi, 2
add	edx, edi
mov	edi, [esp+168h+var_148]
mov	[esp+168h+var_144], edx
mov	edx, ebp
mov	esi, ebx
shr	edx, 2
shl	ebx, 1Eh
add	ebx, edx
mov	[esp+168h+var_100], ebp
shl	ebp, 1Eh
mov	edx, edi
shr	edx, 2
add	edx, ebp
mov	ebp, [esp+168h+var_158]
shr	ebp, 2
shl	edi, 1Eh
add	edi, ebp
mov	[esp+168h+var_54], ebx
mov	[esp+168h+var_154], ebx
mov	ebp, edx
shl	ebx, 13h
shr	ebp, 0Dh
add	ebp, ebx
mov	[esp+168h+var_148], edi
mov	edi, [esp+168h+var_144]
mov	[esp+168h+var_144], ebp
mov	ebp, [esp+168h+var_148]
mov	[esp+168h+var_D8], edx
mov	ebx, ebp
shl	edx, 13h
shr	ebx, 0Dh
add	ebx, edx
mov	[esp+168h+var_DC], edi
mov	[esp+168h+var_140], ebx
mov	edx, edi
xor	[esp+168h+var_120], eax
xor	[esp+168h+var_118], eax
xor	[esp+168h+var_110], eax
shl	edi, 13h
xor	[esp+168h+var_98], ecx
xor	[esp+168h+var_90], ecx
xor	[esp+168h+var_88], ecx
mov	ebx, ebp
shl	ebx, 13h
shr	edx, 0Dh
add	edx, ebx
mov	ebx, [esp+168h+var_154]
shr	ebx, 0Dh
add	ebx, edi
mov	edi, [esp+168h+var_80]
not	edi
mov	[esp+168h+var_138], edi
and	edi, ecx
xor	eax, edi
mov	edi, [esp+168h+var_108]
and	edi, eax
xor	[esp+168h+var_100], eax
xor	[esp+168h+var_F8], eax
xor	[esp+168h+var_F0], eax
mov	[esp+168h+var_20], ebx
mov	ebx, edi
shr	ebx, 1Fh
lea	edi, [ebx+edi*2]
xor	ecx, edi
xor	[esp+168h+var_78], ecx
xor	[esp+168h+var_70], ecx
mov	edi, ecx
xor	edi, [esp+168h+var_13C]
xor	[esp+168h+var_B4], edx
mov	[esp+168h+var_68], edi
mov	edi, [esp+168h+var_60]
not	edi
mov	[esp+168h+var_148], edi
and	edi, ecx
xor	eax, edi
mov	edi, [esp+168h+var_E8]
xor	[esp+168h+var_E0], eax
xor	[esp+168h+var_D8], eax
xor	[esp+168h+var_D0], eax
and	edi, eax
mov	ebx, edi
shr	ebx, 1Fh
lea	edi, [ebx+edi*2]
mov	ebx, [esp+168h+var_40]
xor	ecx, edi
xor	[esp+168h+var_58], ecx
xor	[esp+168h+var_48], ecx
not	ebx
mov	[esp+168h+var_130], ebx
and	ebx, ecx
xor	eax, ebx
xor	[esp+168h+var_C0], eax
xor	[esp+168h+var_B0], eax
mov	ebx, eax
and	ebx, [esp+168h+var_13C]
mov	edi, ecx
xor	edi, ebp
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
xor	[esp+168h+var_38], ecx
xor	[esp+168h+var_30], ecx
xor	[esp+168h+var_28], ecx
xor	ecx, [esp+168h+var_140]
mov	ebx, eax
xor	eax, [esp+168h+var_144]
xor	ebx, [esp+168h+var_14C]
mov	[esp+168h+var_AC], eax
mov	[esp+168h+var_24], ecx
mov	ecx, [esp+168h+var_20]
xor	[esp+168h+var_2C], ecx
mov	eax, edx
xor	eax, [esp+168h+var_150]
mov	[esp+168h+var_B8], ebx
mov	[esp+168h+var_BC], eax
xor	[esp+168h+var_3C], ecx
xor	[esp+168h+var_C4], edx
mov	ebp, [esp+168h+var_44]
mov	eax, ecx
not	ebp
and	eax, ebp
xor	eax, edx
xor	[esp+168h+var_D4], eax
xor	[esp+168h+var_DC], eax
xor	[esp+168h+var_E4], eax
mov	ebx, ecx
mov	[esp+168h+var_150], ebp
mov	edx, eax
and	edx, [esp+168h+var_CC]
xor	ebx, [esp+168h+var_134]
mov	ebp, edx
shr	ebp, 1Fh
lea	edx, [ebp+edx*2+0]
xor	edx, ecx
mov	ecx, [esp+168h+var_64]
not	ecx
xor	[esp+168h+var_4C], edx
xor	[esp+168h+var_54], edx
xor	[esp+168h+var_5C], edx
mov	[esp+168h+var_154], ecx
mov	ebp, edx
and	ebp, ecx
xor	eax, ebp
xor	[esp+168h+var_F4], eax
xor	[esp+168h+var_FC], eax
xor	[esp+168h+var_104], eax
mov	ecx, eax
and	ecx, [esp+168h+var_EC]
mov	ebp, ecx
shr	ebp, 1Fh
lea	ecx, [ebp+ecx*2+0]
xor	edx, ecx
mov	ecx, [esp+168h+var_84]
xor	[esp+168h+var_6C], edx
xor	[esp+168h+var_74], edx
not	ecx
mov	[esp+168h+var_134], ecx
mov	ebp, edx
and	ebp, ecx
xor	eax, ebp
xor	[esp+168h+var_124], eax
xor	[esp+168h+var_11C], eax
xor	[esp+168h+var_114], eax
mov	ecx, eax
and	ecx, [esp+168h+var_10C]
xor	esi, edx
mov	ebp, ecx
shr	ebp, 1Fh
lea	ecx, [ebp+ecx*2+0]
mov	ebp, [esp+168h+var_9C]
xor	edx, ecx
xor	[esp+168h+var_A4], edx
xor	[esp+168h+var_8C], edx
xor	[esp+168h+var_94], edx
mov	ecx, [esp+168h+var_12C]
xor	ecx, eax
mov	eax, [esp+168h+arg_4]
xor	ebp, edx
mov	edx, [esp+168h+var_124]
xor	edx, ecx
mov	ecx, ebp
xor	ecx, [esp+168h+var_A4]
mov	[eax], edx
mov	[eax+4], ecx
mov	ecx, [esp+168h+var_124]
xor	ecx, [esp+168h+var_11C]
mov	[esp+168h+var_140], ecx
mov	ecx, [esp+168h+var_120]
xor	ecx, [esp+168h+var_118]
mov	[esp+168h+var_144], ecx
mov	ecx, [esp+168h+var_114]
xor	ecx, [esp+168h+var_11C]
mov	[esp+168h+var_14C], ecx
mov	ecx, [esp+168h+var_110]
xor	ecx, [esp+168h+var_118]
mov	[esp+168h+var_8], ecx
mov	ecx, esi
and	ecx, [esp+168h+var_134]
xor	ecx, [esp+168h+var_104]
mov	edx, ecx
xor	ecx, [esp+168h+var_114]
and	edx, [esp+168h+var_10C]
mov	[eax+38h], ecx
mov	ecx, edx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, esi
xor	ecx, [esp+168h+var_8C]
mov	edx, [esp+168h+var_10C]
mov	[eax+3Ch], ecx
mov	ecx, [esp+168h+var_84]
mov	[eax+44h], ecx
mov	ecx, [esp+168h+var_80]
mov	[eax+4Ch], ecx
mov	ecx, [esp+168h+var_88]
and	ecx, [esp+168h+var_138]
mov	[eax+40h], edx
xor	ecx, [esp+168h+var_110]
mov	edx, [esp+168h+var_108]
mov	[eax+48h], edx
mov	edx, ecx
xor	ecx, [esp+168h+var_100]
and	edx, [esp+168h+var_108]
mov	[eax+50h], ecx
mov	ecx, edx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, [esp+168h+var_78]
xor	ecx, [esp+168h+var_88]
mov	[eax+54h], ecx
mov	ecx, [esp+168h+var_104]
xor	ecx, [esp+168h+var_FC]
mov	[esp+168h+var_134], ecx
mov	ecx, [esp+168h+var_100]
xor	ecx, [esp+168h+var_F8]
mov	[esp+168h+var_138], ecx
mov	ecx, [esp+168h+var_F4]
xor	ecx, [esp+168h+var_FC]
mov	[esp+168h+var_C], ecx
mov	ecx, [esp+168h+var_F0]
xor	ecx, [esp+168h+var_F8]
mov	[esp+168h+var_4], ecx
mov	ecx, [esp+168h+var_5C]
and	ecx, [esp+168h+var_154]
xor	ecx, [esp+168h+var_E4]
mov	edx, ecx
xor	ecx, [esp+168h+var_F4]
and	edx, [esp+168h+var_EC]
mov	[eax+78h], ecx
mov	ecx, edx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, [esp+168h+var_6C]
mov	edx, [esp+168h+var_EC]
xor	ecx, [esp+168h+var_5C]
mov	[eax+80h], edx
mov	edx, [esp+168h+var_E8]
mov	[eax+7Ch], ecx
mov	ecx, [esp+168h+var_64]
mov	[eax+84h], ecx
mov	ecx, [esp+168h+var_60]
mov	[eax+8Ch], ecx
mov	ecx, [esp+168h+var_68]
and	ecx, [esp+168h+var_148]
mov	[eax+88h], edx
xor	ecx, [esp+168h+var_F0]
mov	edx, ecx
xor	ecx, [esp+168h+var_E0]
and	edx, [esp+168h+var_E8]
mov	[eax+90h], ecx
mov	ecx, edx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, [esp+168h+var_68]
xor	ecx, [esp+168h+var_58]
mov	[eax+94h], ecx
mov	ecx, [esp+168h+var_DC]
xor	ecx, [esp+168h+var_E4]
mov	[esp+168h+var_154], ecx
mov	ecx, [esp+168h+var_D8]
xor	ecx, [esp+168h+var_E0]
mov	[esp+168h+var_148], ecx
mov	ecx, [esp+168h+var_DC]
xor	ecx, [esp+168h+var_D4]
mov	[esp+168h+var_1C], ecx
mov	ecx, [esp+168h+var_D8]
xor	ecx, [esp+168h+var_D0]
mov	[esp+168h+var_10], ecx
mov	ecx, [esp+168h+var_3C]
and	ecx, [esp+168h+var_150]
xor	ecx, [esp+168h+var_C4]
mov	edx, ecx
xor	ecx, [esp+168h+var_D4]
and	edx, [esp+168h+var_CC]
mov	[eax+0B8h], ecx
mov	ecx, edx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, [esp+168h+var_3C]
mov	edx, [esp+168h+var_CC]
xor	ecx, [esp+168h+var_4C]
mov	[eax+0C0h], edx
mov	[eax+0BCh], ecx
mov	ecx, [esp+168h+var_44]
mov	[eax+0C4h], ecx
mov	ecx, [esp+168h+var_40]
mov	edx, [esp+168h+var_13C]
mov	[eax+0CCh], ecx
mov	ecx, [esp+168h+var_130]
and	ecx, [esp+168h+var_48]
mov	[eax+0C8h], edx
xor	ecx, [esp+168h+var_D0]
mov	[esp+168h+var_130], ecx
and	ecx, edx
mov	[esp+168h+var_158], ecx
mov	ecx, [esp+168h+var_130]
xor	ecx, [esp+168h+var_C0]
mov	[esp+168h+var_130], ecx
mov	ecx, [esp+168h+var_158]
mov	edx, ecx
shr	edx, 1Fh
lea	ecx, [edx+ecx*2]
xor	ecx, [esp+168h+var_38]
mov	edx, [esp+168h+var_B0]
xor	ecx, [esp+168h+var_48]
mov	[eax+0D4h], ecx
mov	ecx, [esp+168h+var_BC]
xor	ecx, [esp+168h+var_C4]
mov	[esp+168h+var_13C], ecx
mov	ecx, [esp+168h+var_B8]
xor	ecx, [esp+168h+var_C0]
mov	[esp+168h+var_150], ecx
mov	ecx, [esp+168h+var_BC]
xor	ecx, [esp+168h+var_B4]
mov	[esp+168h+var_18], ecx
mov	ecx, [esp+168h+var_B8]
xor	ecx, edx
mov	[esp+168h+var_14], ecx
mov	ecx, [esp+168h+var_AC]
xor	ecx, edx
mov	[eax+100h], ecx
mov	ecx, [esp+168h+var_24]
xor	ecx, [esp+168h+var_28]
mov	[eax+104h], ecx
mov	ecx, [esp+168h+var_98]
xor	ecx, [esp+168h+var_120]
mov	edx, ecx
shl	edx, 8
shr	ecx, 18h
add	edx, ecx
mov	[esp+168h+var_158], edx
xor	edx, [esp+168h+var_120]
mov	[eax+14h], edx
mov	edx, [esp+168h+var_158]
mov	[eax+10h], edx
mov	edx, [esp+168h+var_140]
xor	ebp, edx
xor	ebp, [esp+168h+var_94]
mov	ecx, ebp
shl	ecx, 8
shr	ebp, 18h
add	ecx, ebp
mov	ebp, ecx
xor	ebp, edx
mov	edx, [esp+168h+var_98]
mov	[eax+18h], ecx
mov	[eax+1Ch], ebp
mov	ebp, [esp+168h+var_144]
xor	edx, ebp
xor	edx, [esp+168h+var_90]
mov	ecx, edx
shl	ecx, 8
shr	edx, 18h
add	ecx, edx
mov	edx, ecx
xor	edx, ebp
mov	ebp, [esp+168h+var_14C]
mov	[eax+20h], ecx
mov	[eax+24h], edx
mov	ecx, ebp
xor	ecx, [esp+168h+var_8C]
xor	ecx, [esp+168h+var_94]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, edx
xor	ecx, ebp
mov	ebp, [esp+168h+var_8]
mov	[eax+2Ch], ecx
mov	[eax+28h], edx
mov	ecx, ebp
xor	ecx, [esp+168h+var_88]
xor	ecx, [esp+168h+var_90]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, edx
xor	ecx, ebp
mov	ebp, [eax+38h]
mov	[eax+34h], ecx
mov	ecx, [eax+3Ch]
xor	ecx, ebp
mov	[eax+30h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, [eax+54h]
xor	ebp, edx
mov	[eax+3Ch], ebp
mov	ebp, [eax+50h]
xor	ecx, ebp
mov	[eax+38h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	ebp, edx
mov	[eax+50h], edx
mov	edx, [esp+168h+var_134]
xor	esi, edx
mov	[eax+54h], ebp
mov	ebp, [esp+168h+var_74]
xor	esi, ebp
mov	ecx, esi
shr	esi, 18h
shl	ecx, 8
add	ecx, esi
mov	esi, ecx
xor	esi, edx
mov	edx, [esp+168h+var_78]
mov	[eax+5Ch], esi
mov	esi, [esp+168h+var_138]
xor	edx, esi
xor	edx, [esp+168h+var_70]
mov	[eax+58h], ecx
mov	ecx, edx
shl	ecx, 8
shr	edx, 18h
add	ecx, edx
mov	edx, ecx
xor	edx, esi
mov	esi, [esp+168h+var_C]
mov	[eax+60h], ecx
mov	ecx, esi
xor	ecx, [esp+168h+var_6C]
mov	[eax+64h], edx
xor	ecx, ebp
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, edx
xor	ecx, esi
mov	esi, [esp+168h+var_4]
mov	[eax+6Ch], ecx
mov	ecx, esi
xor	ecx, [esp+168h+var_68]
mov	[eax+68h], edx
xor	ecx, [esp+168h+var_70]
mov	ebp, [esp+168h+var_154]
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, edx
xor	ecx, esi
mov	esi, [eax+78h]
mov	[eax+74h], ecx
mov	ecx, [eax+7Ch]
xor	ecx, esi
mov	[eax+70h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, [eax+94h]
xor	esi, edx
mov	[eax+7Ch], esi
mov	esi, [eax+90h]
xor	ecx, esi
mov	[eax+78h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
xor	esi, edx
mov	[eax+90h], edx
mov	edx, [esp+168h+var_54]
mov	ecx, edx
xor	ecx, ebp
xor	ecx, [esp+168h+var_5C]
mov	[eax+94h], esi
mov	esi, ecx
shr	ecx, 18h
shl	esi, 8
add	esi, ecx
mov	ecx, esi
xor	ecx, ebp
mov	ebp, [esp+168h+var_148]
mov	[eax+9Ch], ecx
mov	ecx, edi
xor	ecx, ebp
xor	ecx, [esp+168h+var_58]
mov	[eax+98h], esi
mov	esi, ecx
shr	ecx, 18h
shl	esi, 8
add	esi, ecx
mov	ecx, esi
mov	[eax+0A0h], esi
mov	esi, [esp+168h+var_1C]
xor	edx, esi
xor	edx, [esp+168h+var_4C]
xor	ecx, ebp
mov	[eax+0A4h], ecx
mov	ecx, edx
shl	ecx, 8
shr	edx, 18h
add	ecx, edx
mov	edx, ecx
xor	edx, esi
mov	[eax+0A8h], ecx
mov	[eax+0ACh], edx
mov	edx, [esp+168h+var_10]
xor	edi, edx
xor	edi, [esp+168h+var_48]
mov	ecx, edi
shl	ecx, 8
shr	edi, 18h
add	ecx, edi
mov	esi, ecx
mov	[eax+0B0h], ecx
mov	ecx, [eax+0BCh]
xor	esi, edx
mov	[eax+0B4h], esi
mov	esi, [eax+0B8h]
xor	ecx, esi
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, [eax+0D4h]
xor	esi, edx
mov	[eax+0BCh], esi
mov	esi, [esp+168h+var_130]
xor	ecx, esi
mov	[eax+0B8h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	edi, [esp+168h+var_150]
mov	ecx, edx
xor	ecx, esi
mov	esi, [esp+168h+var_13C]
mov	[eax+0D4h], ecx
mov	ecx, ebx
xor	ecx, esi
xor	ecx, [esp+168h+var_3C]
mov	[eax+0D0h], edx
mov	edx, ecx
shr	ecx, 18h
shl	edx, 8
add	edx, ecx
mov	ecx, edx
xor	ecx, esi
mov	[eax+0DCh], ecx
mov	[eax+0D8h], edx
mov	edx, [esp+168h+var_30]
mov	ecx, edx
xor	ecx, edi
xor	ecx, [esp+168h+var_38]
mov	esi, ecx
shr	ecx, 18h
shl	esi, 8
add	esi, ecx
mov	ecx, esi
xor	ecx, edi
mov	edi, [esp+168h+var_18]
xor	ebx, edi
mov	[eax+0E4h], ecx
mov	[eax+0E0h], esi
mov	esi, [esp+168h+var_2C]
xor	ebx, esi
mov	ecx, ebx
shl	ecx, 8
shr	ebx, 18h
add	ecx, ebx
mov	ebx, ecx
xor	ebx, edi
mov	edi, [esp+168h+var_14]
xor	edx, edi
xor	edx, [esp+168h+var_28]
mov	[eax+0E8h], ecx
mov	ecx, edx
shl	ecx, 8
mov	[eax+0ECh], ebx
shr	edx, 18h
add	ecx, edx
mov	edx, ecx
xor	edx, edi
mov	[eax+0F4h], edx
mov	edx, [esp+168h+var_B4]
xor	esi, edx
mov	[eax+0F0h], ecx
mov	ecx, esi
shr	esi, 18h
shl	ecx, 8
add	ecx, esi
mov	esi, ecx
xor	esi, edx
pop	edi
mov	[eax+0FCh], esi
pop	esi
pop	ebp
mov	[eax+0F8h], ecx
pop	ebx
add	esp, 158h
retn
align 10h
sub	esp, 20h
mov	eax, [esp+20h+arg_0]
mov	edx, [eax+4]
mov	ecx, [eax]
mov	[esp+20h+var_20], ecx
mov	ecx, [eax+8]
mov	[esp+20h+var_1C], edx
mov	edx, [eax+0Ch]
mov	[esp+20h+var_18], ecx
mov	ecx, [eax+10h]
mov	[esp+20h+var_14], edx
mov	edx, [eax+14h]
mov	eax, edx
not	eax
mov	[esp+20h+var_10], ecx
not	ecx
mov	[esp+20h+var_4], eax
mov	eax, [esp+20h+arg_4]
mov	[esp+20h+var_8], ecx
push	eax
lea	ecx, [esp+24h+var_20]
push	ecx
mov	[esp+28h+var_C], edx
call	sub_10010B90
add	esp, 28h
retn
align 20h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_8]
mov	eax, [esi]
mov	ecx, [esi+4]
push	edi
mov	edi, [esp+10h+arg_0]
bswap	eax
xor	eax, [edi]
mov	edx, [esi+8]
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
bswap	ecx
xor	ebx, [edi+10h]
xor	ecx, [edi+4]
mov	[esp+10h+arg_8], ebx
mov	esi, [esi+0Ch]
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+14h]
bswap	edx
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+18h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+1Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+20h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+24h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+28h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+2Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+30h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+34h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+38h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+3Ch]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+40h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+44h]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+4Ch]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+48h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+50h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+54h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+58h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+5Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+60h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+64h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+68h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+6Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+70h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+74h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+78h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+7Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+80h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+84h]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+8Ch]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+88h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+90h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+94h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+98h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+9Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0A0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0A4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0A8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ACh]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0B0h]
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
shr	ebp, 8
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0B4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
xor	edx, [edi+0C0h]
xor	ebx, [edi+0B8h]
mov	ebp, esi
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
xor	esi, [edi+0C4h]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0BCh]
mov	edi, [esp+10h+arg_4]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	ecx, ebx
bswap	eax
bswap	edx
bswap	ecx
mov	[edi+4], esi
mov	[edi+8], eax
mov	[edi], edx
mov	[edi+0Ch], ecx
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_8]
mov	eax, [esi]
mov	ecx, [esi+4]
push	edi
mov	edi, [esp+10h+arg_0]
bswap	eax
xor	eax, [edi+0C0h]
mov	edx, [esi+8]
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
bswap	ecx
xor	ebx, [edi+0B8h]
xor	ecx, [edi+0C4h]
mov	[esp+10h+arg_8], ebx
mov	esi, [esi+0Ch]
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0BCh]
bswap	edx
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0B0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0B4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0A8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ACh]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0A0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0A4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+98h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+9Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+90h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+94h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+88h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+8Ch]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+84h]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+80h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+78h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+7Ch]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+70h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+74h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+68h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+6Ch]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+60h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+64h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+58h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+5Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+50h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+54h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+48h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+4Ch]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+44h]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+40h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+38h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+3Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+30h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+34h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+28h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+2Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+20h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+24h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+18h]
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
shr	ebp, 8
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+1Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
xor	edx, [edi]
xor	ebx, [edi+10h]
mov	ebp, esi
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
xor	esi, [edi+4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+14h]
mov	edi, [esp+10h+arg_4]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	ecx, ebx
bswap	eax
bswap	edx
bswap	ecx
mov	[edi+4], esi
mov	[edi+8], eax
mov	[edi], edx
mov	[edi+0Ch], ecx
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_8]
mov	eax, [esi]
mov	ecx, [esi+4]
push	edi
mov	edi, [esp+10h+arg_0]
bswap	eax
xor	eax, [edi]
mov	edx, [esi+8]
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
bswap	ecx
xor	ebx, [edi+10h]
xor	ecx, [edi+4]
mov	[esp+10h+arg_8], ebx
mov	esi, [esi+0Ch]
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+14h]
bswap	edx
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+18h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+1Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+20h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+24h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+28h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+2Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+30h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+34h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+38h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+3Ch]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+40h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+44h]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+4Ch]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+48h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+50h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+54h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+58h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+5Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+60h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+64h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+68h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+6Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+70h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+74h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+78h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+7Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+80h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+84h]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+8Ch]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+88h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+90h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+94h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+98h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+9Ch]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0A0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0A4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0A8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ACh]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0B0h]
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
shr	ebp, 8
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0B4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0B8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0BCh]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+0C0h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+0C4h]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+0CCh]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+0C8h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0D0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0D4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0D8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0DCh]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0E0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0E4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0E8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ECh]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0F0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0F4h]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0F8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0FCh]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, [edi+104h]
xor	edx, [edi+100h]
mov	edi, [esp+10h+arg_4]
xor	ecx, ebx
bswap	esi
bswap	eax
bswap	edx
bswap	ecx
mov	[edi+4], esi
mov	[edi+8], eax
mov	[edi], edx
mov	[edi+0Ch], ecx
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_8]
mov	eax, [esi]
mov	ecx, [esi+4]
push	edi
mov	edi, [esp+10h+arg_0]
bswap	eax
xor	eax, [edi+100h]
mov	edx, [esi+8]
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
bswap	ecx
xor	ebx, [edi+0F8h]
xor	ecx, [edi+104h]
mov	[esp+10h+arg_8], ebx
mov	esi, [esi+0Ch]
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0FCh]
bswap	edx
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
bswap	esi
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0F0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0F4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0E8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ECh]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0E0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0E4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0D8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0DCh]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0D0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0D4h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+0C8h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+0CCh]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+0C4h]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+0C0h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0B8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0BCh]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0B0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0B4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+0A8h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0ACh]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	edx, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+0A0h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+0A4h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+98h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+9Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, ebx
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+90h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+94h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+88h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+8Ch]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+84h]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+80h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+78h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+7Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+70h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+74h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+68h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+6Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+60h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+64h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, eax
xor	ecx, ebx
shr	ebp, 8
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+58h]
mov	[esp+10h+arg_8], ebx
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
shr	ebp, 8
mov	ebx, ds:dword_1003EAF8[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+5Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+50h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+54h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, [edi+48h]
and	ebx, eax
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	ecx, ebx
mov	ebx, [edi+4Ch]
or	ebx, ecx
xor	eax, ebx
mov	ebx, [edi+44h]
or	ebx, esi
xor	edx, ebx
mov	ebx, [edi+40h]
and	ebx, edx
mov	ebp, ebx
shr	ebp, 1Fh
lea	ebx, [ebp+ebx*2+0]
xor	esi, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+38h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+3Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+30h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+34h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+28h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+2Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+20h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+24h]
xor	ebx, ebp
xor	eax, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	ecx, ebx
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, eax
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
xor	ebx, [edi+18h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, ecx
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+1Ch]
xor	ebx, ebp
xor	edx, ebx
mov	[esp+10h+arg_8], ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
mov	ebp, edx
xor	esi, ebx
shr	ebp, 8
and	ebp, 0FFh
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003E6F8[ebx*4]
xor	ebx, ds:dword_1003EAF8[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, edx
and	ebp, 0FFh
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
xor	ebx, [edi+10h]
shr	ebp, 8
mov	[esp+10h+arg_8], ebx
and	ebp, 0FFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_1003EAF8[ebx*4]
xor	ebx, ds:dword_1003EEF8[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_1003E6F8[ebp*4]
mov	ebp, esi
and	ebp, 0FFh
xor	ebx, ds:dword_1003E2F8[ebp*4]
mov	ebp, [esp+10h+arg_8]
xor	ebx, [edi+14h]
xor	ebx, ebp
mov	[esp+10h+arg_8], ebx
xor	eax, ebx
mov	ebx, ebp
shl	ebx, 18h
shr	ebp, 8
add	ebx, ebp
xor	ebx, [esp+10h+arg_8]
xor	esi, [edi+4]
xor	edx, [edi]
mov	edi, [esp+10h+arg_4]
xor	ecx, ebx
bswap	esi
bswap	eax
bswap	edx
bswap	ecx
mov	[edi+4], esi
mov	[edi+8], eax
mov	[edi], edx
mov	[edi+0Ch], ecx
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
			
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_0]
mov	[ecx], eax
cmp	eax, 10h
jz	short loc_10015941
cmp	eax, 18h
jz	short loc_1001592D
cmp	eax, 20h
jnz	short loc_10015952
mov	eax, [esp+arg_4]
add	ecx, 8
push	ecx
push	eax
call	sub_10010B90
add	esp, 8
xor	eax, eax
retn
add	ecx, 8
push	ecx
mov	ecx, [esp+4+arg_4]
push	ecx
call	sub_10011E80
add	esp, 8
xor	eax, eax
retn
mov	edx, [esp+arg_4]
add	ecx, 8
push	ecx
push	edx
call	sub_1000FED0
add	esp, 8
xor	eax, eax
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_0]
cmp	dword ptr [ebp+0], 10h
push	edi
mov	[esp+8+arg_0], offset sub_10011EE0
jz	short loc_1001597C
mov	[esp+8+arg_0], offset sub_100137C0
mov	edi, [esp+8+arg_14]
test	edi, edi
jz	short loc_100159AD
push	ebx
mov	ebx, [esp+0Ch+arg_4]
dec	edi
push	esi
mov	esi, [esp+10h+arg_10]
shr	edi, 4
add	ebp, 8
sub	ebx, esi
inc	edi
push	esi
lea	eax, [ebx+esi]
push	eax
push	ebp
call	[esp+1Ch+arg_0]
add	esp, 0Ch
add	esi, 10h
dec	edi
jnz	short loc_10015998
pop	esi
pop	ebx
pop	edi
xor	eax, eax
pop	ebp
retn
align 10h
			
sub	esp, 24h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+24h+var_4], eax
mov	edx, [esp+24h+arg_14]
mov	eax, [esp+24h+arg_0]
push	ebx
mov	ebx, [esp+28h+arg_4]
test	edx, edx
jz	loc_10015AB6
cmp	dword ptr [eax], 10h
lea	ecx, [eax+118h]
push	edi
mov	[esp+2Ch+var_18], ecx
mov	edi, ecx
mov	[esp+2Ch+var_24], offset sub_10011EE0
jz	short loc_10015A05
mov	[esp+2Ch+var_24], offset sub_100137C0
test	edx, edx
jz	loc_10015A9F
add	eax, 8
push	ebp
push	esi
mov	[esp+34h+var_1C], eax
mov	eax, [esp+34h+arg_10]
lea	ecx, [edx-1]
lea	esi, [esp+34h+var_13]
shr	ecx, 4
sub	esi, eax
inc	ecx
mov	[esp+34h+var_20], ecx
jmp	short loc_10015A34
align 10h
mov	eax, [esp+34h+arg_10]
lea	ecx, [edi+2]
sub	edi, eax
mov	ebp, 4
mov	edi, edi
movzx	edx, byte ptr [edi+eax]
xor	dl, [eax]
add	eax, 4
mov	[esi+eax-5], dl
movzx	edx, byte ptr [eax-3]
xor	dl, [ecx-1]
add	ecx, 4
mov	[esi+eax-4], dl
movzx	edx, byte ptr [eax-2]
xor	dl, [ecx-4]
mov	[esi+eax-3], dl
movzx	edx, byte ptr [eax-1]
xor	dl, [ecx-3]
dec	ebp
mov	[esi+eax-2], dl
jnz	short loc_10015A40
mov	ecx, [esp+34h+var_1C]
lea	eax, [esp+34h+var_14]
push	eax
push	ebx
push	ecx
call	[esp+40h+var_24]
add	[esp+40h+arg_10], 10h
mov	edi, ebx
add	esp, 0Ch
sub	esi, 10h
add	ebx, 10h
dec	[esp+34h+var_20]
jnz	short loc_10015A30
mov	ecx, [esp+34h+var_18]
pop	esi
pop	ebp
mov	edx, [edi]
mov	[ecx], edx
mov	eax, [edi+4]
mov	[ecx+4], eax
mov	edx, [edi+8]
mov	[ecx+8], edx
mov	eax, [edi+0Ch]
mov	[ecx+0Ch], eax
pop	edi
mov	ecx, [esp+28h+var_4]
pop	ebx
xor	ecx, esp
xor	eax, eax
call	@__security_check_cookie@4 
add	esp, 24h
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_0]
cmp	dword ptr [ebp+0], 10h
push	edi
mov	[esp+8+arg_0], offset sub_10012B50
jz	short loc_10015AEC
mov	[esp+8+arg_0], offset sub_10014860
mov	edi, [esp+8+arg_14]
test	edi, edi
jz	short loc_10015B1D
push	ebx
mov	ebx, [esp+0Ch+arg_4]
dec	edi
push	esi
mov	esi, [esp+10h+arg_10]
shr	edi, 4
add	ebp, 8
sub	ebx, esi
inc	edi
push	esi
lea	eax, [ebx+esi]
push	eax
push	ebp
call	[esp+1Ch+arg_0]
add	esp, 0Ch
add	esi, 10h
dec	edi
jnz	short loc_10015B08
pop	esi
pop	ebx
pop	edi
xor	eax, eax
pop	ebp
retn
align 10h
			
mov	eax, [esp+arg_14]
sub	esp, 14h
test	eax, eax
jz	loc_10015C5F
mov	ecx, [esp+14h+arg_10]
mov	edx, [ecx+eax-10h]
push	ebx
mov	ebx, [esp+18h+arg_0]
cmp	dword ptr [ebx], 10h
push	esi
lea	esi, [ecx+eax-10h]
mov	ecx, [esi+4]
mov	[esp+1Ch+var_10], edx
mov	edx, [esi+8]
mov	[esp+1Ch+var_C], ecx
mov	ecx, [esi+0Ch]
mov	[esp+1Ch+var_8], edx
mov	edx, [esp+1Ch+arg_4]
push	edi
mov	[esp+20h+var_4], ecx
lea	edi, [edx+eax-10h]
mov	[esp+20h+arg_14], offset sub_10012B50
jz	short loc_10015B88
mov	[esp+20h+arg_14], offset sub_10014860
cmp	eax, 10h
jbe	short loc_10015BF0
add	eax, 0FFFFFFEFh
shr	eax, 4
inc	eax
mov	[esp+20h+var_14], eax
push	ebp
lea	esp, [esp+0]
push	esi
lea	eax, [ebx+8]
push	edi
push	eax
call	[esp+30h+arg_14]
add	esp, 0Ch
lea	eax, [edi+1]
lea	ecx, [esi-0Fh]
mov	ebp, 4
jmp	short loc_10015BC0
align 10h
			
movzx	edx, byte ptr [ecx-1]
xor	[eax-1], dl
movzx	edx, byte ptr [ecx]
xor	[eax], dl
movzx	edx, byte ptr [ecx+1]
xor	[eax+1], dl
movzx	edx, byte ptr [ecx+2]
xor	[eax+2], dl
add	ecx, 4
add	eax, 4
dec	ebp
jnz	short loc_10015BC0
sub	edi, 10h
sub	esi, 10h
dec	[esp+24h+var_14]
jnz	short loc_10015BA0
pop	ebp
cmp	esi, [esp+20h+arg_10]
jnz	short loc_10015C34
push	esi
lea	eax, [ebx+8]
push	edi
push	eax
call	[esp+2Ch+arg_14]
add	esp, 0Ch
lea	eax, [edi+1]
lea	ecx, [ebx+119h]
mov	esi, 4
movzx	edx, byte ptr [ecx-1]
xor	[eax-1], dl
movzx	edx, byte ptr [ecx]
xor	[eax], dl
movzx	edx, byte ptr [ecx+1]
xor	[eax+1], dl
movzx	edx, byte ptr [ecx+2]
xor	[eax+2], dl
add	ecx, 4
add	eax, 4
dec	esi
jnz	short loc_10015C11
mov	eax, [esp+20h+var_10]
mov	ecx, [esp+20h+var_C]
mov	edx, [esp+20h+var_8]
mov	[ebx+118h], eax
mov	eax, [esp+20h+var_4]
mov	[ebx+11Ch], ecx
pop	edi
mov	[ebx+120h], edx
pop	esi
mov	[ebx+124h], eax
pop	ebx
xor	eax, eax
add	esp, 14h
retn
align 10h
push	128h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
push	esi
push	edi
mov	edi, [esp+8+arg_4]
test	edi, edi
jz	loc_10015D1F
mov	esi, [esp+8+arg_8]
cmp	esi, 10h
jz	short loc_10015CA1
cmp	esi, 18h
jz	short loc_10015CA1
cmp	esi, 20h
jnz	short loc_10015D1F
			
mov	edx, [esp+8+arg_10]
mov	ecx, [esp+8+arg_C]
test	edx, edx
jz	short loc_10015CB6
cmp	edx, 1
jnz	short loc_10015D1F
test	ecx, ecx
jz	short loc_10015D1F
mov	eax, [esp+8+arg_0]
test	eax, eax
jz	short loc_10015D1F
cmp	edx, 1
jnz	short loc_10015CF9
cmp	[esp+8+arg_14],	0
mov	edx, [ecx]
mov	[eax+118h], edx
mov	edx, [ecx+4]
mov	[eax+11Ch], edx
mov	edx, [ecx+8]
mov	[eax+120h], edx
mov	ecx, [ecx+0Ch]
mov	[eax+124h], ecx
mov	ecx, offset sub_100159C0
jnz	short loc_10015D0A
mov	ecx, offset sub_10015B30
jmp	short loc_10015D0A
cmp	[esp+8+arg_14],	0
mov	ecx, offset sub_10015960
jnz	short loc_10015D0A
mov	ecx, offset sub_10015AD0
			
push	esi
push	edi
push	eax
mov	[eax+4], ecx
call	sub_10015900
add	esp, 0Ch
neg	eax
pop	edi
sbb	eax, eax
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
cmp	[esp+arg_0], 0
push	ebp
jz	loc_10015E35
mov	ebp, [esp+4+arg_10]
cmp	ebp, 10h
jz	short loc_10015D63
cmp	ebp, 18h
jz	short loc_10015D63
cmp	ebp, 20h
jnz	loc_10015E35
			
push	ebx
mov	ebx, [esp+8+arg_8]
push	edi
mov	edi, [esp+0Ch+arg_4]
test	ebx, ebx
jz	short loc_10015D8D
cmp	ebx, 1
jnz	short loc_10015D7A
test	edi, edi
jnz	short loc_10015D8D
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebx
xor	eax, eax
pop	ebp
retn
			
push	esi
push	128h
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10015DB5
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebx
xor	eax, eax
pop	ebp
retn
cmp	ebx, 1
jnz	short loc_10015DF0
cmp	[esp+10h+arg_C], 0
mov	eax, [edi]
mov	[esi+118h], eax
mov	ecx, [edi+4]
mov	[esi+11Ch], ecx
mov	edx, [edi+8]
mov	[esi+120h], edx
mov	eax, [edi+0Ch]
mov	[esi+124h], eax
mov	eax, offset sub_100159C0
jnz	short loc_10015E01
mov	eax, offset sub_10015B30
jmp	short loc_10015E01
cmp	[esp+10h+arg_C], 0
mov	eax, offset sub_10015960
jnz	short loc_10015E01
mov	eax, offset sub_10015AD0
			
mov	ecx, [esp+10h+arg_0]
push	ebp
push	ecx
push	esi
mov	[esi+4], eax
mov	[esi], ebp
call	sub_10015900
add	esp, 0Ch
test	eax, eax
jz	short loc_10015E2E
push	128h
push	esi
call	PORT_ZFree_Util
add	esp, 8
pop	esi
pop	edi
pop	ebx
xor	eax, eax
pop	ebp
retn
mov	eax, esi
pop	esi
pop	edi
pop	ebx
pop	ebp
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
pop	ebp
retn
align 10h
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_10015E69
push	128h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10015E79
push	esi
call	PORT_Free_Util
add	esp, 4
pop	esi
retn
align 10h
			
mov	edx, [esp+arg_0]
push	ebx
push	edi
test	edx, edx
jz	short loc_10015EEE
mov	ebx, [esp+8+arg_4]
test	ebx, ebx
jz	short loc_10015EEE
mov	edi, [esp+8+arg_10]
test	edi, edi
jz	short loc_10015EEE
mov	ecx, [esp+8+arg_8]
test	ecx, ecx
jz	short loc_10015EEE
mov	eax, [esp+8+arg_14]
test	al, 0Fh
jz	short loc_10015EBD
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
mov	esi, [esp+0Ch+arg_C]
cmp	esi, eax
jnb	short loc_10015EDA
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	eax
push	edi
push	esi
push	ecx
mov	[ecx], eax
mov	eax, [edx+4]
push	ebx
push	edx
call	eax
add	esp, 18h
pop	esi
pop	edi
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
cmp	eax, 780h
jb	short loc_10015F1D
mov	eax, 40h
retn
cmp	eax, 3C0h
jb	short loc_10015F2A
mov	eax, 30h
retn
cmp	eax, 180h
jb	short loc_10015F37
mov	eax, 20h
retn
cmp	eax, 100h
sbb	eax, eax
and	eax, 0FFFFFFF8h
add	eax, 1Ch
retn
align 10h
sub	esp, 74h
push	ebx
xor	ebx, ebx
push	ebp
mov	[esp+7Ch+var_70], ebx
mov	[esp+7Ch+var_6C], ebx
mov	[esp+7Ch+var_64], ebx
mov	[esp+7Ch+var_74], ebx
cmp	[esp+7Ch+arg_4], ebx
jz	loc_100163D8
mov	ebp, [esp+7Ch+arg_0]
cmp	ebp, ebx
jl	loc_100163D8
push	esi
push	800h
call	PORT_NewArena_Util
mov	esi, eax
add	esp, 4
mov	[esp+80h+var_68], esi
cmp	esi, ebx
jnz	short loc_10015FB2
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 74h
retn
push	edi
push	1Ch
push	esi
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, ebx
jnz	short loc_10015FE4
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	esi
call	PORT_FreeArena_Util
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 74h
retn
mov	[edi], esi
lea	eax, [esp+84h+var_50]
push	eax
mov	[esp+88h+var_44], ebx
mov	[esp+88h+var_24], ebx
mov	[esp+88h+var_54], ebx
mov	[esp+88h+var_4], ebx
mov	[esp+88h+var_34], ebx
mov	[esp+88h+var_14], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
lea	ecx, [esp+84h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
lea	edx, [esp+84h+var_60]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
lea	eax, [esp+84h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
lea	ecx, [esp+84h+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
lea	edx, [esp+84h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100162E2
push	ebp
call	PORT_Alloc_Util
push	ebp
push	eax
mov	[esp+90h+var_70], eax
call	sub_1000CD60
add	esp, 0Ch
mov	[esp+84h+var_74], eax
cmp	eax, ebx
jnz	loc_100162E2
mov	eax, [esp+84h+var_70]
or	byte ptr [eax],	80h
or	byte ptr [eax+ebp-1], 1
push	ebp
push	eax
lea	eax, [esp+8Ch+var_50]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_100162E2
lea	ecx, [esp+84h+var_64]
push	ecx
push	1
lea	edx, ds:0[ebp*8]
push	edx
lea	eax, [esp+90h+var_50]
push	eax
call	sub_10026630
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_100162E2
lea	ecx, [esp+84h+var_40]
push	ecx
lea	edx, [esp+88h+var_50]
push	1
push	edx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_100162E2
lea	eax, [esp+84h+var_30]
push	eax
lea	ecx, [esp+88h+var_40]
push	ecx
call	sub_1002B6B0
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_100162E2
push	ebp
call	PORT_Alloc_Util
push	ebp
push	eax
mov	[esp+90h+var_6C], eax
call	sub_1000CD60
add	esp, 0Ch
mov	[esp+84h+var_74], eax
cmp	eax, ebx
jnz	loc_100162E2
mov	edx, [esp+84h+var_6C]
push	ebp
push	edx
lea	eax, [esp+8Ch+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_100162E2
lea	ecx, [esp+84h+var_50]
push	ecx
lea	edx, [esp+88h+var_60]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jle	short loc_100161A2
lea	eax, [esp+84h+var_60]
push	eax
lea	ecx, [esp+88h+var_50]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_100162E2
			
lea	eax, [esp+84h+var_60]
push	2
push	eax
call	sub_1002A650
add	esp, 8
test	eax, eax
js	short loc_100161CB
lea	ecx, [esp+84h+var_40]
push	ecx
lea	edx, [esp+88h+var_60]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_100161DA
lea	eax, [esp+84h+var_60]
push	3
push	eax
call	sub_10028F70
add	esp, 8
lea	ecx, [esp+84h+var_20]
push	ecx
lea	edx, [esp+88h+var_50]
push	edx
lea	eax, [esp+8Ch+var_30]
push	eax
lea	ecx, [esp+90h+var_60]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_100162E2
lea	edx, [esp+84h+var_20]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jnz	short loc_10016234
lea	eax, [esp+84h+var_60]
push	eax
mov	ecx, eax
push	1
push	ecx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jge	loc_100161A2
jmp	loc_100162E2
lea	edx, [esp+84h+var_50]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001624F
mov	esi, 0FFFFFFFDh
jmp	loc_100162E2
mov	ecx, [esp+84h+var_68]
push	eax
lea	eax, [edi+4]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+8]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001626F
mov	esi, 0FFFFFFFEh
jmp	short loc_100162E2
mov	edx, [edi+0Ch]
push	edx
push	eax
lea	eax, [esp+8Ch+var_50]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_100162E2
lea	ecx, [esp+84h+var_60]
push	ecx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001629F
mov	esi, 0FFFFFFFDh
jmp	short loc_100162E2
push	eax
mov	eax, [esp+88h+var_68]
lea	edx, [edi+10h]
push	edx
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [edi+14h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_100162BF
mov	esi, 0FFFFFFFEh
jmp	short loc_100162E2
mov	ecx, [edi+18h]
push	ecx
push	eax
lea	edx, [esp+8Ch+var_60]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_100162E2
mov	eax, [esp+84h+arg_4]
xor	esi, esi
mov	[eax], edi
			
lea	ecx, [esp+84h+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+88h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+8Ch+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+90h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+94h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+98h+var_20]
push	eax
call	sub_10028EF0
mov	eax, [esp+9Ch+var_70]
add	esp, 18h
cmp	eax, ebx
jz	short loc_10016336
push	ebp
push	eax
call	PORT_ZFree_Util
add	esp, 8
mov	eax, [esp+84h+var_6C]
cmp	eax, ebx
jz	short loc_10016348
push	ebp
push	eax
call	PORT_ZFree_Util
add	esp, 8
cmp	esi, ebx
jz	short loc_100163B7
cmp	esi, 0FFFFFFFCh
jz	short loc_100163A0
cmp	esi, 0FFFFFFFDh
jz	short loc_10016389
cmp	esi, 0FFFFFFFEh
jz	short loc_10016372
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+84h+var_74], 0FFFFFFFFh
jmp	short loc_100163BD
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+84h+var_74], 0FFFFFFFFh
jmp	short loc_100163BD
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+84h+var_74], 0FFFFFFFFh
jmp	short loc_100163BD
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+84h+var_74], 0FFFFFFFFh
jmp	short loc_100163BD
cmp	[esp+84h+var_74], ebx
jz	short loc_100163CC
			
mov	ecx, [esp+84h+var_68]
push	1
push	ecx
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, [esp+84h+var_74]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 74h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 74h
retn
align 10h
sub	esp, 44h
push	ebx
xor	ebx, ebx
mov	[esp+48h+var_44], ebx
cmp	[esp+48h+arg_0], ebx
jz	loc_10016741
cmp	[esp+48h+arg_4], ebx
jz	loc_10016741
push	ebp
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jnz	short loc_10016438
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 44h
retn
push	esi
push	34h
push	ebp
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jnz	short loc_10016469
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	ebp
call	PORT_FreeArena_Util
add	esp, 0Ch
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 44h
retn
mov	[esi], ebp
lea	eax, [esp+50h+var_10]
push	edi
push	eax
mov	[esp+58h+var_4], ebx
mov	[esp+58h+var_34], ebx
mov	[esp+58h+var_24], ebx
mov	[esp+58h+var_14], ebx
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jl	loc_1001662E
lea	ecx, [esp+54h+var_40]
push	ecx
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jl	loc_1001662E
lea	edx, [esp+54h+var_30]
push	edx
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jl	loc_1001662E
lea	eax, [esp+54h+var_20]
push	eax
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebx
jl	loc_1001662E
mov	ecx, [esp+54h+arg_0]
add	ecx, 4
push	ecx
lea	edx, [esi+4]
push	edx
push	ebp
call	SECITEM_CopyItem_Util
add	esp, 0Ch
mov	[esp+54h+var_44], eax
cmp	eax, ebx
jnz	loc_1001662E
mov	eax, [esi+0Ch]
mov	ecx, [esi+8]
push	eax
push	ecx
lea	edx, [esp+5Ch+var_30]
push	edx
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jl	loc_1001662E
mov	eax, [esp+54h+arg_0]
add	eax, 10h
push	eax
lea	ecx, [esi+10h]
push	ecx
push	ebp
call	SECITEM_CopyItem_Util
add	esp, 0Ch
mov	[esp+54h+var_44], eax
cmp	eax, ebx
jnz	loc_1001662E
mov	edx, [esi+18h]
mov	eax, [esi+14h]
push	edx
push	eax
lea	ecx, [esp+5Ch+var_10]
push	ecx
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jl	loc_1001662E
mov	edx, [esp+54h+arg_0]
mov	eax, [edx+0Ch]
call	sub_10015F10
push	eax
lea	eax, [esi+28h]
push	eax
push	ebp
call	SECITEM_AllocItem_Util
mov	ecx, [esi+30h]
mov	edx, [esi+2Ch]
push	ecx
push	edx
call	sub_1000CD60
mov	eax, [esi+30h]
mov	ecx, [esi+2Ch]
push	eax
push	ecx
lea	edx, [esp+70h+var_40]
push	edx
call	sub_10029D30
mov	edi, eax
add	esp, 20h
cmp	edi, ebx
jl	loc_1001662E
lea	eax, [esp+54h+var_40]
push	eax
lea	ecx, [esp+58h+var_30]
push	ecx
mov	edx, eax
push	edx
call	sub_1002C150
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jl	short loc_1001662E
lea	eax, [esp+54h+var_20]
push	eax
lea	ecx, [esp+58h+var_30]
push	ecx
lea	edx, [esp+5Ch+var_40]
push	edx
lea	eax, [esp+60h+var_10]
push	eax
call	sub_100288A0
mov	edi, eax
add	esp, 10h
cmp	edi, ebx
jl	short loc_1001662E
lea	ecx, [esp+54h+var_20]
push	ecx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_100165F0
mov	edi, 0FFFFFFFDh
jmp	short loc_1001662E
push	eax
mov	eax, [esi]
lea	edx, [esi+1Ch]
push	edx
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [esi+20h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001660E
mov	edi, 0FFFFFFFEh
jmp	short loc_1001662E
mov	ecx, [esi+24h]
push	ecx
push	eax
lea	edx, [esp+5Ch+var_20]
push	edx
call	sub_10029ED0
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebx
jl	short loc_1001662E
mov	eax, [esp+54h+arg_4]
xor	edi, edi
mov	[eax], esi
			
lea	ecx, [esp+54h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+58h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+5Ch+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+60h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 10h
cmp	edi, ebx
jz	loc_10016724
cmp	edi, 0FFFFFFFCh
jz	loc_100166F8
cmp	edi, 0FFFFFFFDh
jz	short loc_100166CC
cmp	edi, 0FFFFFFFEh
jz	short loc_100166A0
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
push	1
push	ebp
mov	[esp+5Ch+var_44], 0FFFFFFFFh
call	PORT_FreeArena_Util
mov	eax, [esp+5Ch+var_44]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 44h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
push	1
push	ebp
mov	[esp+5Ch+var_44], 0FFFFFFFFh
call	PORT_FreeArena_Util
mov	eax, [esp+5Ch+var_44]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 44h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
push	1
push	ebp
mov	[esp+5Ch+var_44], 0FFFFFFFFh
call	PORT_FreeArena_Util
mov	eax, [esp+5Ch+var_44]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 44h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
push	1
push	ebp
mov	[esp+5Ch+var_44], 0FFFFFFFFh
call	PORT_FreeArena_Util
mov	eax, [esp+5Ch+var_44]
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 44h
retn
cmp	[esp+54h+var_44], ebx
jz	short loc_10016735
push	1
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, [esp+54h+var_44]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 44h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 44h
retn
align 10h
sub	esp, 54h
push	ebx
push	ebp
push	edi
xor	edi, edi
xor	ebx, ebx
mov	[esp+60h+Src], edi
cmp	[esp+60h+arg_0], edi
jz	loc_10016A43
cmp	[esp+60h+arg_4], edi
jz	loc_10016A43
cmp	[esp+60h+arg_8], edi
jz	loc_10016A43
mov	ebp, [esp+60h+arg_C]
cmp	ebp, edi
jz	loc_10016A43
xor	eax, eax
mov	[ebp+0], eax
mov	[ebp+4], eax
mov	[ebp+8], eax
lea	eax, [esp+60h+var_40]
push	esi
push	eax
mov	[esp+68h+var_34], edi
mov	[esp+68h+var_14], edi
mov	[esp+68h+var_44], edi
mov	[esp+68h+var_24], edi
mov	[esp+68h+var_4], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001699E
lea	ecx, [esp+64h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001699E
lea	edx, [esp+64h+var_50]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001699E
lea	eax, [esp+64h+var_30]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001699E
lea	ecx, [esp+64h+var_10]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001699E
mov	eax, [esp+64h+arg_0]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+6Ch+var_50]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001699E
mov	eax, [esp+64h+arg_8]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+6Ch+var_20]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001699E
mov	eax, [esp+64h+arg_4]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+6Ch+var_40]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001699E
lea	edx, [esp+64h+var_10]
push	edx
lea	eax, [esp+68h+var_40]
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001699E
lea	ecx, [esp+64h+var_50]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jle	loc_10016999
lea	edx, [esp+64h+var_10]
push	edx
lea	eax, [esp+68h+var_50]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_10016999
lea	ecx, [esp+64h+var_30]
push	ecx
lea	edx, [esp+68h+var_40]
push	edx
lea	eax, [esp+6Ch+var_20]
push	eax
lea	ecx, [esp+70h+var_50]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_1001699E
lea	edx, [esp+64h+var_30]
push	edx
call	sub_10029E60
mov	ebx, eax
add	esp, 4
cmp	ebx, edi
jle	short loc_10016999
push	ebx
call	PORT_Alloc_Util
push	ebx
push	eax
mov	[esp+70h+Src], eax
lea	eax, [esp+70h+var_30]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_1001693D
xor	esi, esi
mov	eax, [esp+64h+Size]
cmp	eax, edi
mov	edi, eax
ja	short loc_10016949
mov	edi, ebx
push	edi
push	ebp
push	0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
cmp	ebx, edi
jnb	short loc_1001697F
mov	ecx, [ebp+4]
sub	edi, ebx
push	edi		
push	0		
push	ecx		
call	memset
mov	edx, [esp+70h+Src]
mov	eax, [ebp+4]
push	ebx		
push	edx		
add	eax, edi
push	eax		
call	memcpy
add	esp, 18h
xor	edi, edi
jmp	short loc_1001699E
mov	ecx, [esp+64h+Src]
mov	edx, [ebp+4]
sub	ecx, edi
push	edi		
add	ecx, ebx
push	ecx		
push	edx		
call	memcpy
add	esp, 0Ch
xor	edi, edi
jmp	short loc_1001699E
			
mov	esi, 0FFFFFFFCh
			
lea	eax, [esp+64h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+68h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+6Ch+var_50]
push	edx
call	sub_10028EF0
lea	eax, [esp+70h+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+74h+var_10]
push	ecx
call	sub_10028EF0
mov	eax, [esp+78h+Src]
add	esp, 14h
cmp	eax, edi
jz	short loc_100169E5
push	ebx
push	eax
call	PORT_ZFree_Util
add	esp, 8
cmp	esi, edi
jz	short loc_10016A39
cmp	esi, 0FFFFFFFCh
jz	short loc_10016A0D
cmp	esi, 0FFFFFFFDh
jz	short loc_10016A06
cmp	esi, 0FFFFFFFEh
jz	short loc_100169FF
push	0FFFFE001h
jmp	short loc_10016A12
push	0FFFFE013h
jmp	short loc_10016A12
push	0FFFFE002h
jmp	short loc_10016A12
push	0FFFFE005h
			
call	PORT_SetError_Util
mov	eax, [ebp+4]
add	esp, 4
cmp	eax, edi
jz	short loc_10016A2E
mov	edx, [ebp+8]
push	edx
push	eax
call	PORT_ZFree_Util
add	esp, 8
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 54h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
align 10h
sub	esp, 88h
push	ebp
push	esi
mov	esi, [esp+90h+arg_0]
xor	ebp, ebp
push	edi
mov	[esp+94h+Src], ebp
mov	[esp+94h+var_84], ebp
cmp	esi, ebp
jz	loc_10016E26
cmp	[esp+94h+arg_4], ebp
jz	loc_10016E26
cmp	[esp+94h+arg_8], ebp
jz	loc_10016E26
cmp	[esp+94h+arg_C], ebp
jz	loc_10016E26
cmp	[esp+94h+arg_10], ebp
jz	loc_10016E26
mov	edi, [esp+94h+arg_14]
cmp	edi, ebp
jz	loc_10016E26
xor	eax, eax
mov	[edi], eax
mov	[edi+4], eax
mov	[edi+8], eax
lea	eax, [esp+94h+var_80]
push	ebx
push	eax
mov	[esp+9Ch+var_74], ebp
mov	[esp+9Ch+var_54], ebp
mov	[esp+9Ch+var_34], ebp
mov	[esp+9Ch+var_14], ebp
mov	[esp+9Ch+var_44], ebp
mov	[esp+9Ch+var_24], ebp
mov	[esp+9Ch+var_4], ebp
mov	[esp+9Ch+var_64], ebp
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	ecx, [esp+98h+var_60]
push	ecx
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	edx, [esp+98h+var_40]
push	edx
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	eax, [esp+98h+var_20]
push	eax
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	ecx, [esp+98h+var_50]
push	ecx
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	edx, [esp+98h+var_30]
push	edx
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	eax, [esp+98h+var_10]
push	eax
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
lea	ecx, [esp+98h+var_70]
push	ecx
call	sub_1002A030
mov	ebx, eax
add	esp, 4
cmp	ebx, ebp
jl	loc_10016D67
mov	edx, [esi+8]
mov	eax, [esi+4]
push	edx
push	eax
lea	ecx, [esp+0A0h+var_80]
push	ecx
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, ebp
jl	loc_10016D67
mov	eax, [esp+98h+arg_4]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+0A0h+var_60]
push	ecx
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, ebp
jl	loc_10016D67
mov	eax, [esp+98h+arg_8]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+0A0h+var_40]
push	ecx
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, ebp
jl	loc_10016D67
mov	eax, [esp+98h+arg_C]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+0A0h+var_20]
push	ecx
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, ebp
jl	loc_10016D67
mov	eax, [esp+98h+arg_10]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+0A0h+var_50]
push	ecx
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, ebp
jl	loc_10016D67
lea	edx, [esp+98h+var_30]
push	edx
lea	eax, [esp+9Ch+var_80]
push	eax
lea	ecx, [esp+0A0h+var_20]
push	ecx
lea	edx, [esp+0A4h+var_60]
push	edx
call	sub_100288A0
mov	ebx, eax
add	esp, 10h
cmp	ebx, ebp
jl	loc_10016D67
lea	eax, [esp+98h+var_10]
push	eax
lea	ecx, [esp+9Ch+var_80]
push	ecx
lea	edx, [esp+0A0h+var_50]
push	edx
lea	eax, [esp+0A4h+var_40]
push	eax
call	sub_100288A0
mov	ebx, eax
add	esp, 10h
cmp	ebx, ebp
jl	loc_10016D67
lea	ecx, [esp+98h+var_70]
push	ecx
lea	edx, [esp+9Ch+var_80]
push	edx
lea	eax, [esp+0A0h+var_10]
push	eax
lea	ecx, [esp+0A4h+var_30]
push	ecx
call	sub_1002C3B0
mov	ebx, eax
add	esp, 10h
cmp	ebx, ebp
jl	loc_10016D67
lea	edx, [esp+98h+var_70]
push	edx
call	sub_10029E60
mov	esi, eax
push	esi
mov	[esp+0A0h+var_84], esi
call	PORT_Alloc_Util
push	esi
push	eax
mov	[esp+0A8h+Src],	eax
lea	eax, [esp+0A8h+var_70]
push	eax
call	sub_10029ED0
mov	ebx, eax
add	esp, 14h
cmp	ebx, ebp
jle	short loc_10016D17
xor	ebx, ebx
push	80h
push	edi
push	ebp
call	SECITEM_AllocItem_Util
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx		
push	ebp		
push	edx		
call	memset
add	esp, 18h
cmp	esi, 80h
jb	short loc_10016D50
mov	eax, [esp+98h+Src]
mov	edi, [edi+4]
lea	esi, [esi+eax-80h]
mov	ecx, 20h
rep movsd
jmp	short loc_10016D67
mov	edx, [edi+4]
mov	ecx, [esp+98h+Src]
push	esi		
sub	edx, esi
push	ecx		
sub	edx, 0FFFFFF80h
push	edx		
call	memcpy
add	esp, 0Ch
			
lea	eax, [esp+98h+var_80]
push	eax
call	sub_10028EF0
lea	ecx, [esp+9Ch+var_60]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0A0h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+0A4h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0A8h+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0ACh+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0B0h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0B4h+var_70]
push	ecx
call	sub_10028EF0
mov	eax, [esp+0B8h+Src]
add	esp, 20h
cmp	eax, ebp
jz	short loc_10016DD6
mov	edx, [esp+98h+var_84]
push	edx
push	eax
call	PORT_ZFree_Util
add	esp, 8
cmp	ebx, ebp
jz	short loc_10016E19
cmp	ebx, 0FFFFFFFCh
jz	short loc_10016DFE
cmp	ebx, 0FFFFFFFDh
jz	short loc_10016DF7
cmp	ebx, 0FFFFFFFEh
jz	short loc_10016DF0
push	0FFFFE001h
jmp	short loc_10016E03
push	0FFFFE013h
jmp	short loc_10016E03
push	0FFFFE002h
jmp	short loc_10016E03
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 88h
retn
pop	ebx
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 88h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 88h
retn
sub	esp, 44h
push	ebx
xor	ebx, ebx
push	ebp
push	edi
mov	[esp+50h+var_44], 1
cmp	[esp+50h+arg_0], ebx
jz	loc_10017016
mov	edi, [esp+50h+arg_4]
cmp	edi, ebx
jz	loc_10017016
mov	ebp, [esp+50h+arg_8]
cmp	ebp, ebx
jz	loc_10017016
lea	eax, [esp+50h+var_40]
push	esi
push	eax
mov	[esp+58h+var_34], ebx
mov	[esp+58h+var_24], ebx
mov	[esp+58h+var_14], ebx
mov	[esp+58h+var_4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_10016F69
lea	ecx, [esp+54h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_10016F69
lea	edx, [esp+54h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_10016F69
lea	eax, [esp+54h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_10016F69
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx
push	edx
lea	eax, [esp+5Ch+var_40]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_10016F69
mov	ecx, [ebp+8]
mov	edx, [ebp+4]
push	ecx
push	edx
lea	eax, [esp+5Ch+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_10016F69
mov	eax, [esp+54h+arg_0]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+5Ch+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_10016F69
lea	ecx, [esp+54h+var_10]
push	ecx
lea	edx, [esp+58h+var_40]
push	edx
lea	eax, [esp+5Ch+var_30]
push	eax
lea	ecx, [esp+60h+var_20]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	short loc_10016F69
lea	edx, [esp+54h+var_10]
push	1
push	edx
call	sub_1002A650
add	esp, 8
mov	edi, eax
jmp	short loc_10016F6D
			
mov	edi, [esp+54h+var_44]
lea	eax, [esp+54h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+58h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+5Ch+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+60h+var_10]
push	eax
call	sub_10028EF0
add	esp, 10h
cmp	esi, ebx
jz	short loc_10017007
cmp	esi, 0FFFFFFFCh
jz	short loc_10016FF0
cmp	esi, 0FFFFFFFDh
jz	short loc_10016FD9
cmp	esi, 0FFFFFFFEh
jz	short loc_10016FC2
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 44h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 44h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 44h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 44h
retn
pop	esi
xor	eax, eax
cmp	edi, ebx
pop	edi
pop	ebp
setz	al
pop	ebx
add	esp, 44h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 44h
retn
align 10h
			
mov	edx, [esp+arg_0]
mov	ecx, [edx+8]
mov	eax, 1
cmp	ecx, eax
jbe	short loc_1001704E
mov	edx, [edx+4]
cmp	byte ptr [edx+eax], 0
jnz	short loc_10017054
inc	eax
cmp	eax, ecx
jb	short loc_10017043
mov	eax, 1
retn
xor	eax, eax
retn
align 10h
			
sub	esp, 0A8h
mov	eax, [esp+0A8h+arg_0]
push	ebx
mov	ebx, [esp+0ACh+arg_C]
push	ebp
push	edi
mov	edi, [eax+8]
add	edi, 7
xor	ebp, ebp
sar	edi, 3
mov	[esp+0B4h+var_A8], ebp
mov	[esp+0B4h+var_A4], 0FFFFFFFFh
cmp	ebx, ebp
jz	short loc_100170BD
mov	ecx, [ebx+4]
cmp	byte ptr [ecx],	4
jnz	short loc_100170A3
lea	edx, [edi+edi+1]
cmp	[ebx+8], edx
jz	short loc_100170BD
push	0FFFFE08Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0A8h
retn
			
lea	eax, [esp+0B4h+var_70]
push	esi
push	eax
mov	[esp+0BCh+var_64], ebp
mov	[esp+0BCh+var_74], ebp
mov	[esp+0BCh+var_94], ebp
mov	[esp+0BCh+var_84], ebp
mov	[esp+0BCh+var_14], ebp
mov	[esp+0BCh+var_34], ebp
mov	[esp+0BCh+var_54], ebp
mov	[esp+0BCh+var_44], ebp
mov	[esp+0BCh+var_24], ebp
mov	[esp+0BCh+var_4], ebp
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	ecx, [esp+0B8h+var_80]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	edx, [esp+0B8h+var_A0]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	eax, [esp+0B8h+var_90]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	ecx, [esp+0B8h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	edx, [esp+0B8h+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	eax, [esp+0B8h+var_60]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	ecx, [esp+0B8h+var_50]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	edx, [esp+0B8h+var_30]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
lea	eax, [esp+0B8h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_10017384
cmp	[esp+0B8h+arg_8], ebp
jz	short loc_1001722B
cmp	ebx, ebp
jz	short loc_1001722B
mov	ecx, [ebx+4]
push	edi
inc	ecx
push	ecx
lea	edx, [esp+0C0h+var_70]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_10017384
mov	eax, [ebx+4]
push	edi
lea	ecx, [eax+edi+1]
push	ecx
lea	edx, [esp+0C0h+var_80]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_10017384
			
mov	eax, [esp+0B8h+arg_0]
mov	eax, [eax+74h]
cmp	eax, ebp
jz	loc_100172EA
push	eax
call	sub_1002E430
add	esp, 4
mov	[esp+0B8h+var_A8], eax
cmp	eax, ebp
jz	loc_100172EE
mov	ecx, [esp+0B8h+arg_8]
cmp	ecx, ebp
jz	short loc_10017280
cmp	ebx, ebp
jz	short loc_10017280
lea	edx, [esp+0B8h+var_90]
push	edx
lea	edx, [esp+0BCh+var_A0]
push	edx
lea	edx, [esp+0C0h+var_80]
push	edx
lea	edx, [esp+0C4h+var_70]
push	edx
push	ecx
mov	ecx, [esp+0CCh+arg_4]
push	ecx
jmp	short loc_10017295
			
lea	edx, [esp+0B8h+var_90]
push	edx
mov	edx, [esp+0BCh+arg_4]
lea	ecx, [esp+0BCh+var_A0]
push	ecx
push	ebp
push	ebp
push	ebp
push	edx
push	eax
call	sub_1002EE10
mov	esi, eax
add	esp, 1Ch
cmp	esi, ebp
jl	short loc_100172EA
mov	ebx, [esp+0B8h+arg_10]
mov	eax, [ebx+4]
mov	byte ptr [eax],	4
mov	ecx, [ebx+4]
push	edi		
inc	ecx
push	ecx		
lea	edx, [esp+0C0h+var_A0]
push	edx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_100172EA
mov	eax, [ebx+4]
push	edi		
lea	ecx, [edi+eax+1]
push	ecx		
lea	edx, [esp+0C0h+var_90]
push	edx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_100172EA
mov	[esp+0B8h+var_A4], ebp
			
mov	eax, [esp+0B8h+var_A8]
			
push	eax		
call	sub_1002DE30
lea	eax, [esp+0BCh+var_70]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C0h+var_80]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C4h+var_A0]
push	edx
call	sub_10028EF0
lea	eax, [esp+0C8h+var_90]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0CCh+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0D0h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+0D4h+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D8h+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0DCh+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E0h+var_10]
push	eax
call	sub_10028EF0
add	esp, 2Ch
cmp	esi, ebp
jz	short loc_100173AE
cmp	esi, 0FFFFFFFCh
jz	short loc_10017399
cmp	esi, 0FFFFFFFDh
jz	short loc_10017392
cmp	esi, 0FFFFFFFEh
jz	short loc_1001738B
push	0FFFFE001h
jmp	short loc_1001739E
			
mov	eax, ebp
jmp	loc_100172EE
push	0FFFFE013h
jmp	short loc_1001739E
push	0FFFFE002h
jmp	short loc_1001739E
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0B8h+var_A4], 0FFFFFFFFh
mov	eax, [esp+0B8h+var_A4]
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 0A8h
retn
align 10h
			
sub	esp, 10h
push	edi
mov	edi, [esp+14h+Size]
mov	[esp+14h+var_4], 0
test	edi, edi
jz	loc_10017675
cmp	[esp+14h+arg_4], 0
jz	loc_10017675
cmp	[esp+14h+Src], 0
jz	loc_10017675
cmp	[esp+14h+arg_C], 0
jl	loc_10017675
push	ebp
push	800h
call	PORT_NewArena_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jnz	short loc_10017416
pop	ebp
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 10h
retn
push	esi
push	0A8h
push	ebp
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_10017440
push	1
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 10h
retn
push	ebx
push	1
lea	eax, [esi+9Ch]
push	eax
push	ebp
call	SECITEM_AllocItem_Util
mov	ecx, [esi+0A0h]
mov	byte ptr [ecx],	1
mov	[esi], ebp
mov	edx, [edi+4]
mov	[esi+4], edx
mov	eax, [edi+8]
mov	[esi+8], eax
mov	ecx, [edi+0Ch]
add	esp, 0Ch
mov	[esi+0Ch], ecx
cmp	dword ptr [edi+0Ch], 1
jnz	short loc_10017480
lea	edx, [edi+10h]
push	edx
lea	eax, [esi+10h]
push	eax
jmp	short loc_10017488
lea	ecx, [edi+10h]
push	ecx
lea	edx, [esi+10h]
push	edx
push	ebp
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
mov	eax, [edi+1Ch]
mov	[esi+1Ch], eax
mov	ecx, [edi+20h]
mov	[esi+20h], ecx
mov	edx, [edi+24h]
lea	eax, [edi+28h]
push	eax
lea	ecx, [esi+28h]
push	ecx
push	ebp
mov	[esi+24h], edx
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
lea	edx, [edi+34h]
push	edx
lea	eax, [esi+34h]
push	eax
push	ebp
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
lea	ecx, [edi+40h]
push	ecx
lea	edx, [esi+40h]
push	edx
push	ebp
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
lea	eax, [edi+4Ch]
push	eax
lea	ecx, [esi+4Ch]
push	ecx
push	ebp
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
lea	edx, [edi+58h]
push	edx
lea	eax, [esi+58h]
push	eax
push	ebp
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
mov	ecx, [edi+64h]
lea	edx, [edi+68h]
push	edx
lea	eax, [esi+68h]
push	eax
push	ebp
mov	[esi+64h], ecx
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
mov	ecx, [edi+74h]
lea	edx, [edi+78h]
push	edx
lea	eax, [esi+78h]
push	eax
push	ebp
mov	[esi+74h], ecx
call	SECITEM_CopyItem_Util
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_1001764F
mov	ecx, [edi+8]
add	ecx, 7
sar	ecx, 3
lea	edx, [ecx+ecx+1]
push	edx
lea	eax, [esi+84h]
push	eax
push	ebp
call	SECITEM_AllocItem_Util
mov	eax, [edi+60h]
push	eax
mov	[esp+30h+Size],	eax
lea	eax, [esi+90h]
push	eax
push	ebp
call	SECITEM_AllocItem_Util
mov	ecx, [esp+38h+arg_C]
mov	eax, [esp+38h+Size]
add	esp, 18h
cmp	ecx, eax
jl	short loc_100175CC
mov	ecx, [esp+20h+Src]
mov	edx, [esi+94h]
push	eax		
push	ecx		
push	edx		
call	memcpy
add	esp, 0Ch
jmp	short loc_100175FC
sub	eax, ecx
push	eax		
mov	eax, [esi+94h]
push	0		
push	eax		
call	memset
mov	eax, [esp+2Ch+arg_C]
mov	edx, [esp+2Ch+Size]
mov	ecx, [esp+2Ch+Src]
push	eax		
sub	edx, eax
add	edx, [esi+94h]
push	ecx		
push	edx		
call	memcpy
add	esp, 18h
lea	eax, [esp+20h+var_10]
push	eax
call	sub_1002A030
add	esp, 4
test	eax, eax
js	short loc_1001764F
mov	ecx, [esp+20h+Size]
mov	edx, [esi+94h]
push	ecx
push	edx
lea	eax, [esp+28h+var_10]
push	eax
call	sub_10029D30
add	esp, 0Ch
test	eax, eax
js	short loc_1001764F
lea	eax, [esi+84h]
push	eax
push	0
push	0
lea	ecx, [esp+2Ch+var_10]
push	ecx
push	edi
call	sub_10017060
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
jnz	short loc_1001764F
mov	edx, [esp+20h+arg_4]
mov	[edx], esi
			
lea	eax, [esp+20h+var_10]
push	eax
call	sub_10028EF0
add	esp, 4
test	ebx, ebx
jz	short loc_1001766B
push	1
push	ebp
call	PORT_FreeArena_Util
add	esp, 8
mov	eax, ebx
pop	ebx
pop	esi
pop	ebp
pop	edi
add	esp, 10h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 10h
retn
align 10h
jmp	sub_100173C0
align 10h
			
sub	esp, 34h
push	ebx
push	ebp
mov	ebp, [esp+3Ch+Size]
push	esi
xor	ebx, ebx
push	edi
lea	eax, [esp+44h+var_30]
push	eax
mov	[esp+48h+var_34], ebx
xor	edi, edi
mov	[esp+48h+var_24], ebx
mov	[esp+48h+var_14], ebx
mov	[esp+48h+var_4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100177F3
lea	ecx, [esp+44h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100177F3
lea	edx, [esp+44h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_100177F3
lea	ebx, [ebp+ebp+0]
push	ebx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	loc_100177F1
push	ebx
push	edi
call	sub_1000CD60
add	esp, 8
mov	[esp+44h+var_34], eax
test	eax, eax
jnz	loc_100177F1
push	ebx
lea	eax, [esp+48h+var_30]
push	edi
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_100177F1
mov	ecx, [esp+44h+arg_0]
push	ebp
push	ecx
lea	edx, [esp+4Ch+var_20]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_100177F1
lea	eax, [esp+44h+var_10]
push	1
push	eax
call	sub_1002B2B0
mov	esi, eax
add	esp, 8
test	esi, esi
js	short loc_100177F1
lea	ecx, [esp+44h+var_20]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_100177F1
lea	ecx, [esp+44h+var_30]
push	ecx
lea	edx, [esp+48h+var_20]
push	edx
mov	eax, ecx
push	eax
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_100177F1
lea	ecx, [esp+44h+var_30]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_100177F1
push	ebp		
lea	ecx, [esp+48h+var_30]
push	edi		
push	ecx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_100177F1
push	ebp		
lea	edx, [edi+ebp]
push	0		
push	edx		
call	memset
add	esp, 0Ch
			
xor	ebx, ebx
			
lea	eax, [esp+44h+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+48h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+4Ch+var_10]
push	edx
call	sub_10028EF0
add	esp, 0Ch
cmp	esi, ebx
jge	short loc_10017863
cmp	esi, 0FFFFFFFCh
jz	short loc_10017854
cmp	esi, 0FFFFFFFDh
jz	short loc_10017845
cmp	esi, 0FFFFFFFEh
jz	short loc_10017836
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10017869
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10017869
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10017869
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10017869
cmp	[esp+44h+var_34], ebx
jz	short loc_10017880
			
cmp	edi, ebx
jz	short loc_10017880
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 34h
retn
			
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 34h
retn
align 10h
push	ebx
mov	ebx, [esp+4+Size]
push	ebp
or	ebp, 0FFFFFFFFh
test	ebx, ebx
jnz	short loc_100178AF
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, ebp
pop	ebp
pop	ebx
retn
mov	eax, [ebx+5Ch]
push	esi
mov	esi, [ebx+60h]
push	edi
push	esi		
push	eax		
call	sub_100176A0
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_100178E0
mov	ecx, [esp+10h+arg_4]
push	esi		
push	edi		
push	ecx		
push	ebx		
call	sub_100173C0
push	esi
push	edi
mov	ebp, eax
call	PORT_ZFree_Util
add	esp, 18h
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 28h
push	ebx
push	ebp
mov	ebp, [esp+30h+arg_0]
xor	eax, eax
mov	[esp+30h+var_24], eax
mov	[esp+30h+var_28], 0FFFFFFFFh
cmp	ebp, eax
jz	loc_10017AA5
mov	ebx, [esp+30h+arg_4]
cmp	ebx, eax
jz	loc_10017AA5
mov	ecx, [ebx+4]
push	edi
mov	edi, [ebp+8]
add	edi, 7
sar	edi, 3
cmp	byte ptr [ecx],	4
jz	short loc_10017944
push	0FFFFE08Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 28h
retn
lea	edx, [edi+edi+1]
cmp	[ebx+8], edx
jz	short loc_10017964
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 28h
retn
mov	[esp+34h+var_14], eax
mov	[esp+34h+var_4], eax
lea	eax, [esp+34h+var_20]
push	esi
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10017A3B
lea	ecx, [esp+38h+var_10]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10017A3B
mov	edx, [ebx+4]
push	edi
inc	edx
push	edx
lea	eax, [esp+40h+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10017A3B
mov	ecx, [ebx+4]
push	edi
lea	edx, [ecx+edi+1]
push	edx
lea	eax, [esp+40h+var_10]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_10017A3B
mov	ecx, [ebp+74h]
push	ecx
call	sub_1002E430
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100179FE
mov	eax, [ebp+74h]
test	eax, eax
jle	short loc_100179F7
cmp	eax, 3Ah
jge	short loc_100179F7
lea	esi, [edi-5]
jmp	short loc_10017A3F
			
mov	esi, 0FFFFFFFCh
jmp	short loc_10017A3F
lea	edx, [esp+38h+var_10]
push	edx
lea	eax, [esp+3Ch+var_20]
push	eax
push	edi
call	sub_1002DE10
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jns	short loc_10017A31
cmp	esi, 0FFFFFFFFh
jnz	short loc_10017A3F
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
mov	[esp+38h+var_28], esi
xor	esi, esi
jmp	short loc_10017A3F
mov	[esp+38h+var_28], 0
jmp	short loc_10017A3F
			
mov	edi, [esp+38h+var_24]
			
push	edi		
call	sub_1002DE30
lea	ecx, [esp+3Ch+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+40h+var_10]
push	edx
call	sub_10028EF0
add	esp, 0Ch
test	esi, esi
jz	short loc_10017A99
cmp	esi, 0FFFFFFFCh
jz	short loc_10017A84
cmp	esi, 0FFFFFFFDh
jz	short loc_10017A7D
cmp	esi, 0FFFFFFFEh
jz	short loc_10017A76
push	0FFFFE001h
jmp	short loc_10017A89
push	0FFFFE013h
jmp	short loc_10017A89
push	0FFFFE002h
jmp	short loc_10017A89
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+38h+var_28], 0FFFFFFFFh
mov	eax, [esp+38h+var_28]
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 28h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 28h
retn
align 10h
sub	esp, 34h
xor	eax, eax
push	ebx
xor	ebx, ebx
push	edi
mov	[esp+3Ch+var_34], 0FFFFFFFFh
mov	[esp+3Ch+var_2C], eax
mov	[esp+3Ch+var_28], eax
mov	[esp+3Ch+var_24], eax
cmp	[esp+3Ch+arg_0], eax
jz	loc_10017C9E
mov	ecx, [esp+3Ch+arg_4]
cmp	ecx, eax
jz	loc_10017C9E
cmp	[esp+3Ch+arg_8], eax
jz	loc_10017C9E
mov	edi, [esp+3Ch+arg_10]
cmp	edi, eax
jz	loc_10017C9E
mov	[edi], eax
mov	[edi+4], eax
push	ebp
push	esi
mov	[edi+8], eax
mov	esi, [ecx+8]
add	esi, 7
mov	[esp+44h+var_14], eax
sar	esi, 3
lea	eax, [esi+esi+1]
push	eax
mov	[esp+48h+var_30], eax
mov	[esp+48h+var_24], eax
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
mov	[esp+44h+var_28], ebp
test	ebp, ebp
jz	loc_10017C3E
lea	eax, [esp+44h+var_20]
push	eax
call	sub_1002A030
mov	ebx, eax
add	esp, 4
test	ebx, ebx
js	loc_10017C3E
mov	eax, [esp+44h+arg_8]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+4Ch+var_20]
push	eax
call	sub_10029D30
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
js	loc_10017C3E
cmp	[esp+44h+arg_C], 0
jz	short loc_10017BDA
mov	ecx, [esp+44h+arg_4]
cmp	dword ptr [ecx+64h], 1
jz	short loc_10017BDA
lea	edx, [esp+44h+var_10]
push	edx
mov	[esp+48h+var_4], 0
call	sub_1002A030
mov	ebx, eax
add	esp, 4
test	ebx, ebx
js	loc_10017C3E
mov	eax, [esp+44h+arg_4]
mov	ecx, [eax+64h]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
call	sub_10028F70
lea	eax, [esp+4Ch+var_20]
push	eax
lea	ecx, [esp+50h+var_10]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A260
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
js	short loc_10017C3E
			
mov	ecx, [esp+44h+arg_0]
lea	eax, [esp+44h+var_2C]
push	eax
mov	eax, [esp+48h+arg_4]
push	ecx
lea	edx, [esp+4Ch+var_20]
push	edx
push	0
push	eax
call	sub_10017060
add	esp, 14h
test	eax, eax
jnz	short loc_10017C3E
lea	ecx, [esp+44h+var_2C]
push	ecx
call	sub_10017030
add	esp, 4
test	eax, eax
jz	short loc_10017C1C
push	0FFFFE00Eh
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10017C3E
push	esi
push	edi
push	0
call	SECITEM_AllocItem_Util
mov	eax, [edi+4]
push	esi		
lea	edx, [ebp+1]
push	edx		
push	eax		
call	memcpy
add	esp, 18h
mov	[esp+44h+var_34], 0
			
lea	ecx, [esp+44h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 4
test	ebx, ebx
jz	short loc_10017C80
cmp	ebx, 0FFFFFFFCh
jz	short loc_10017C73
cmp	ebx, 0FFFFFFFDh
jz	short loc_10017C6C
cmp	ebx, 0FFFFFFFEh
jz	short loc_10017C65
push	0FFFFE001h
jmp	short loc_10017C78
push	0FFFFE013h
jmp	short loc_10017C78
push	0FFFFE002h
jmp	short loc_10017C78
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
test	ebp, ebp
jz	short loc_10017C92
mov	edx, [esp+44h+var_30]
push	edx
push	ebp
call	PORT_ZFree_Util
add	esp, 8
mov	eax, [esp+44h+var_34]
pop	esi
pop	ebp
pop	edi
pop	ebx
add	esp, 34h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 34h
retn
align 10h
			
sub	esp, 78h
push	ebx
mov	ebx, [esp+7Ch+arg_0]
push	ebp
push	esi
push	edi
xor	edi, edi
xor	esi, esi
mov	[esp+88h+var_74], 0FFFFFFFFh
mov	[esp+88h+var_6C], edi
mov	[esp+88h+var_68], edi
mov	[esp+88h+var_64], edi
mov	[esp+88h+var_78], edi
mov	[esp+88h+var_4], edi
mov	[esp+88h+var_24], edi
mov	[esp+88h+var_54], edi
mov	[esp+88h+var_14], edi
mov	[esp+88h+var_34], edi
mov	[esp+88h+var_44], edi
cmp	ebx, edi
jz	loc_100180D3
mov	ecx, [esp+88h+arg_4]
cmp	ecx, edi
jz	loc_100180D3
cmp	[esp+88h+arg_8], edi
jz	loc_100180D3
cmp	[esp+88h+arg_C], edi
jz	loc_100180D3
cmp	[esp+88h+arg_10], edi
jl	loc_100180D3
mov	eax, [ebx+8]
mov	ebp, [ebx+60h]
add	eax, 7
sar	eax, 3
mov	[esp+88h+var_78], eax
mov	[esp+88h+var_70], ebp
cmp	[ecx+4], edi
jz	loc_100180C4
lea	eax, [ebp+ebp+0]
cmp	[ecx+8], eax
jnb	short loc_10017D73
push	0FFFFE003h
jmp	loc_100180D8
lea	ecx, [esp+88h+var_10]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
lea	edx, [esp+88h+var_30]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
lea	eax, [esp+88h+var_60]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
lea	edx, [esp+88h+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
lea	eax, [esp+88h+var_50]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
mov	ecx, [ebx+60h]
mov	edx, [ebx+5Ch]
push	ecx
push	edx
lea	eax, [esp+90h+var_50]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
mov	ecx, [ebx+98h]
mov	edx, [ebx+94h]
push	ecx
push	edx
lea	eax, [esp+90h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
mov	ecx, [esp+88h+arg_10]
mov	edx, [esp+88h+arg_C]
push	ecx
push	edx
lea	eax, [esp+90h+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_60]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_10017F85
lea	edx, [esp+88h+var_50]
push	edx
lea	eax, [esp+8Ch+var_60]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_10017F85
lea	ecx, [esp+88h+var_60]
push	ecx
lea	edx, [esp+8Ch+var_50]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_50]
push	ecx
call	sub_10028CE0
lea	edx, [esp+8Ch+var_60]
push	edx
mov	ebp, eax
call	sub_10028CE0
add	esp, 8
cmp	eax, ebp
jg	short loc_10017EF2
lea	eax, [esp+88h+var_60]
push	eax
lea	ecx, [esp+8Ch+var_50]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
mov	eax, [esp+88h+var_78]
lea	eax, [eax+eax+1]
push	eax
mov	[esp+8Ch+var_64], eax
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
mov	[esp+88h+var_68], ebp
cmp	ebp, edi
jz	loc_100180E0
lea	eax, [esp+88h+var_6C]
push	eax
push	edi
push	edi
lea	ecx, [esp+94h+var_60]
push	ecx
push	ebx
call	sub_10017060
add	esp, 14h
test	eax, eax
jnz	loc_100180E0
mov	edx, [esp+88h+var_78]
push	edx
inc	ebp
lea	eax, [esp+8Ch+var_10]
push	ebp
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_20]
push	ecx
lea	edx, [esp+8Ch+var_50]
push	edx
lea	eax, [esp+90h+var_10]
push	eax
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_20]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_10017F8F
			
push	0FFFFE03Fh
jmp	loc_100180D8
mov	ebx, [esp+88h+arg_8]
mov	edx, [ebx+8]
mov	eax, [ebx+4]
push	edx
push	eax
lea	ecx, [esp+90h+var_40]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	edx, [esp+88h+var_50]
push	edx
call	sub_10028CE0
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100180E0
mov	eax, [ebx+8]
add	eax, eax
add	eax, eax
add	eax, eax
cmp	eax, esi
jbe	short loc_10017FEC
sub	eax, esi
push	eax
lea	eax, [esp+8Ch+var_40]
push	eax
mov	ecx, eax
push	ecx
call	sub_10028B10
add	esp, 0Ch
lea	edx, [esp+88h+var_60]
push	edx
lea	eax, [esp+8Ch+var_50]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002CAC0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100180E0
lea	edx, [esp+88h+var_30]
push	edx
lea	eax, [esp+8Ch+var_50]
push	eax
lea	ecx, [esp+90h+var_20]
push	ecx
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_100180E0
lea	eax, [esp+88h+var_40]
push	eax
lea	ecx, [esp+8Ch+var_50]
push	ecx
lea	edx, [esp+90h+var_30]
push	edx
push	eax
call	sub_1002C3B0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_100180E0
lea	ecx, [esp+88h+var_40]
push	ecx
lea	edx, [esp+8Ch+var_50]
push	edx
lea	eax, [esp+90h+var_60]
push	eax
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_100180E0
lea	edx, [esp+88h+var_40]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_10018085
push	0FFFFE03Fh
jmp	short loc_100180D8
mov	ebp, [esp+88h+var_70]
mov	ebx, [esp+88h+arg_4]
mov	eax, [ebx+4]
push	ebp		
push	eax		
lea	ecx, [esp+90h+var_20]
push	ecx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_100180E0
mov	edx, [ebx+4]
push	ebp		
add	edx, ebp
push	edx		
lea	eax, [esp+90h+var_40]
push	eax		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_100180E0
mov	ecx, ebx
lea	edx, [ebp+ebp+0]
mov	[ecx+8], edx
mov	[esp+88h+var_74], edi
xor	esi, esi
jmp	short loc_100180E0
			
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
			
lea	eax, [esp+88h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+8Ch+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+90h+var_60]
push	edx
call	sub_10028EF0
lea	eax, [esp+94h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+98h+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+9Ch+var_50]
push	edx
call	sub_10028EF0
mov	eax, [esp+0A0h+var_68]
add	esp, 18h
cmp	eax, edi
jz	short loc_10018139
mov	ecx, [esp+88h+var_78]
lea	edx, [ecx+ecx+1]
push	edx
push	eax
call	PORT_ZFree_Util
add	esp, 8
cmp	esi, edi
jz	short loc_100181AC
cmp	esi, 0FFFFFFFCh
jz	short loc_10018194
cmp	esi, 0FFFFFFFDh
jz	short loc_1001817C
cmp	esi, 0FFFFFFFEh
jz	short loc_10018164
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 78h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 78h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 78h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 78h
retn
mov	eax, [esp+88h+var_74]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 78h
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_0]
push	ebp
or	ebp, 0FFFFFFFFh
test	ebx, ebx
jnz	short loc_100181DF
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, ebp
pop	ebp
pop	ebx
retn
mov	eax, [ebx+5Ch]
push	esi
mov	esi, [ebx+60h]
push	edi
push	esi		
push	eax		
call	sub_100176A0
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10018215
mov	ecx, [esp+10h+arg_8]
mov	edx, [esp+10h+arg_4]
push	esi
push	edi
push	ecx
push	edx
push	ebx
call	sub_10017CC0
push	esi
push	edi
mov	ebp, eax
call	PORT_ZFree_Util
add	esp, 1Ch
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 90h
mov	ecx, [esp+90h+arg_0]
push	ebx
push	ebp
push	esi
push	edi
xor	edi, edi
xor	esi, esi
mov	[esp+0A0h+var_90], 0FFFFFFFFh
mov	[esp+0A0h+var_8C], edi
mov	[esp+0A0h+var_88], edi
mov	[esp+0A0h+var_84], edi
mov	[esp+0A0h+var_54], edi
mov	[esp+0A0h+var_44], edi
mov	[esp+0A0h+var_34], edi
mov	[esp+0A0h+var_64], edi
mov	[esp+0A0h+var_24], edi
mov	[esp+0A0h+var_14], edi
mov	[esp+0A0h+var_4], edi
mov	[esp+0A0h+var_74], edi
cmp	ecx, edi
jz	loc_100185F6
mov	eax, [esp+0A0h+arg_4]
cmp	eax, edi
jz	loc_100185F6
cmp	[esp+0A0h+arg_8], edi
jz	loc_100185F6
mov	ebp, [ecx+8]
mov	eax, [eax+8]
add	ebp, 7
sar	ebp, 3
cmp	eax, edi
jz	loc_100185EF
test	al, 1
jnz	loc_100185EF
mov	ecx, [ecx+60h]
add	ecx, ecx
cmp	eax, ecx
ja	loc_100185EF
shr	eax, 1
lea	edx, [ebp+ebp+1]
mov	ebx, eax
push	edx
lea	eax, [esp+0A4h+var_8C]
push	eax
push	edi
call	SECITEM_AllocItem_Util
add	esp, 0Ch
cmp	[esp+0A0h+var_88], edi
jz	loc_10018603
lea	ecx, [esp+0A0h+var_60]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	edx, [esp+0A0h+var_50]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	eax, [esp+0A0h+var_40]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	ecx, [esp+0A0h+var_70]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	edx, [esp+0A0h+var_30]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	eax, [esp+0A0h+var_20]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	ecx, [esp+0A0h+var_10]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
lea	edx, [esp+0A0h+var_80]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
mov	eax, [esp+0A0h+arg_4]
mov	ecx, [eax+4]
push	ebx
push	ecx
lea	edx, [esp+0A8h+var_60]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10018603
mov	eax, [esp+0A0h+arg_4]
mov	ecx, [eax+4]
push	ebx
add	ecx, ebx
push	ecx
lea	edx, [esp+0A8h+var_50]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10018603
mov	eax, [esp+0A0h+arg_0]
mov	ecx, [eax+60h]
mov	edx, [eax+5Ch]
push	ecx
push	edx
lea	eax, [esp+0A8h+var_80]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10018603
lea	ecx, [esp+0A0h+var_60]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_100185E8
lea	edx, [esp+0A0h+var_50]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_100185E8
lea	eax, [esp+0A0h+var_80]
push	eax
lea	ecx, [esp+0A4h+var_60]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_100185E8
lea	edx, [esp+0A0h+var_80]
push	edx
lea	eax, [esp+0A4h+var_50]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_100185E8
lea	ecx, [esp+0A0h+var_40]
push	ecx
lea	edx, [esp+0A4h+var_80]
push	edx
lea	eax, [esp+0A8h+var_50]
push	eax
call	sub_1002CAC0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10018603
mov	ebx, [esp+0A0h+arg_8]
mov	ecx, [ebx+8]
mov	edx, [ebx+4]
push	ecx
push	edx
lea	eax, [esp+0A8h+var_70]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10018603
lea	ecx, [esp+0A0h+var_80]
push	ecx
call	sub_10028CE0
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10018603
mov	eax, [ebx+8]
add	eax, eax
add	eax, eax
add	eax, eax
cmp	eax, esi
jbe	short loc_100184E5
sub	eax, esi
push	eax
lea	edx, [esp+0A4h+var_70]
push	edx
mov	eax, edx
push	eax
call	sub_10028B10
add	esp, 0Ch
lea	ecx, [esp+0A0h+var_70]
push	ecx
lea	edx, [esp+0A4h+var_80]
push	edx
lea	eax, [esp+0A8h+var_40]
push	eax
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10018603
lea	edx, [esp+0A0h+var_30]
push	edx
lea	eax, [esp+0A4h+var_80]
push	eax
lea	ecx, [esp+0A8h+var_40]
push	ecx
lea	edx, [esp+0ACh+var_60]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10018603
lea	eax, [esp+0A0h+var_8C]
push	eax
mov	eax, [esp+0A4h+arg_0]
lea	ecx, [eax+84h]
push	ecx
lea	edx, [esp+0A8h+var_30]
push	edx
lea	ecx, [esp+0ACh+var_70]
push	ecx
push	eax
call	sub_10017060
add	esp, 14h
test	eax, eax
jz	short loc_10018564
mov	[esp+0A0h+var_90], 0FFFFFFFFh
jmp	loc_10018603
lea	edx, [esp+0A0h+var_8C]
push	edx
call	sub_10017030
add	esp, 4
test	eax, eax
jz	short loc_10018589
push	0FFFFE00Ah
call	PORT_SetError_Util
mov	[esp+0A4h+var_90], 0FFFFFFFFh
jmp	short loc_10018600
mov	eax, [esp+0A0h+var_88]
push	ebp
inc	eax
push	eax
lea	ecx, [esp+0A8h+var_20]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10018603
lea	edx, [esp+0A0h+var_10]
push	edx
lea	eax, [esp+0A4h+var_80]
push	eax
lea	ecx, [esp+0A8h+var_20]
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10018603
lea	edx, [esp+0A0h+var_60]
push	edx
lea	eax, [esp+0A4h+var_10]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jnz	short loc_10018575
mov	[esp+0A0h+var_90], edi
jmp	short loc_10018603
			
push	0FFFFE00Ah
jmp	short loc_100185FB
			
push	0FFFFE004h
jmp	short loc_100185FB
			
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
			
lea	ecx, [esp+0A0h+var_60]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0A4h+var_50]
push	edx
call	sub_10028EF0
lea	eax, [esp+0A8h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0ACh+var_70]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0B0h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0B4h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0B8h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0BCh+var_80]
push	edx
call	sub_10028EF0
add	esp, 20h
cmp	[esp+0A0h+var_88], edi
jz	short loc_10018673
lea	eax, [esp+0A0h+var_8C]
push	edi
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
cmp	esi, edi
jz	short loc_100186F2
cmp	esi, 0FFFFFFFCh
jz	short loc_100186D7
cmp	esi, 0FFFFFFFDh
jz	short loc_100186BC
cmp	esi, 0FFFFFFFEh
jz	short loc_100186A1
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
mov	eax, [esp+0A0h+var_90]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 90h
retn
align 10h
			
push	ebx
push	ebp
mov	ebp, [esp+8+arg_8]
push	edi
mov	eax, ebp
xor	edi, edi
xor	ebx, ebx
lea	edx, [eax+1]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10018720
sub	eax, edx
mov	ecx, eax
and	ecx, 80000001h
jns	short loc_10018738
dec	ecx
or	ecx, 0FFFFFFFEh
inc	ecx
jz	short loc_10018740
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
retn
cmp	eax, 2
jle	short loc_1001875C
cmp	byte ptr [ebp+0], 30h
jnz	short loc_1001875C
cmp	byte ptr [ebp+1], 30h
jnz	short loc_1001875C
sub	eax, 2
add	ebp, 2
cmp	eax, 2
jg	short loc_10018745
			
cdq
push	esi
sub	eax, edx
mov	edx, [esp+10h+arg_0]
mov	esi, eax
sar	esi, 1
push	esi
push	edx
call	PORT_ArenaAlloc_Util
mov	ecx, [esp+18h+arg_4]
add	esp, 8
mov	[ecx+4], eax
test	eax, eax
jz	short loc_100187E8
mov	[ecx+8], esi
cmp	[ebp+0], bl
jz	short loc_100187E1
mov	al, [edi+ebp]
cmp	al, 30h
jl	short loc_10018798
cmp	al, 39h
jg	short loc_10018798
movsx	eax, al
sub	eax, 30h
jmp	short loc_100187B6
			
cmp	al, 61h
jl	short loc_100187A8
cmp	al, 66h
jg	short loc_100187A8
movsx	eax, al
sub	eax, 57h
jmp	short loc_100187B6
			
cmp	al, 41h
jl	short loc_100187E8
cmp	al, 46h
jg	short loc_100187E8
movsx	eax, al
sub	eax, 37h
			
shl	ebx, 4
add	ebx, eax
mov	eax, edi
and	eax, 80000001h
jns	short loc_100187C9
dec	eax
or	eax, 0FFFFFFFEh
inc	eax
jz	short loc_100187DA
mov	eax, edi
cdq
sub	eax, edx
mov	edx, [ecx+4]
sar	eax, 1
mov	[eax+edx], bl
xor	ebx, ebx
inc	edi
cmp	byte ptr [edi+ebp], 0
jnz	short loc_10018785
pop	esi
pop	edi
pop	ebp
mov	eax, ecx
pop	ebx
retn
			
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [esp+8+arg_4]
mov	[esi], ebx
push	edi
mov	edi, [esp+0Ch+arg_8]
mov	eax, [edi+4]
mov	[esi+4], eax
mov	ecx, [edi+8]
mov	[esi+8], ecx
mov	edx, [edi+0Ch]
mov	[esi+0Ch], edx
cmp	dword ptr [edi+0Ch], 1
jnz	short loc_10018823
lea	eax, [edi+10h]
push	eax
lea	ecx, [esi+10h]
push	ecx
jmp	short loc_1001882B
lea	edx, [edi+10h]
push	edx
lea	eax, [esi+10h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_100188EB
mov	ecx, [edi+1Ch]
mov	[esi+1Ch], ecx
mov	edx, [edi+20h]
mov	[esi+20h], edx
mov	eax, [edi+24h]
lea	ecx, [edi+28h]
push	ecx
lea	edx, [esi+28h]
push	edx
push	ebx
mov	[esi+24h], eax
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	loc_100188EB
lea	eax, [edi+34h]
push	eax
lea	ecx, [esi+34h]
push	ecx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100188EB
lea	edx, [edi+40h]
push	edx
lea	eax, [esi+40h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100188EB
lea	ecx, [edi+4Ch]
push	ecx
lea	edx, [esi+4Ch]
push	edx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100188EB
lea	eax, [edi+58h]
push	eax
lea	ecx, [esi+58h]
push	ecx
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100188EB
lea	edx, [edi+68h]
push	edx
lea	eax, [esi+68h]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_100188EB
mov	ecx, [edi+74h]
lea	edx, [edi+78h]
push	edx
lea	eax, [esi+78h]
push	eax
push	ebx
mov	[esi+74h], ecx
call	SECITEM_CopyItem_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_100188F2
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	ecx, [edi+64h]
pop	edi
mov	[esi+64h], ecx
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
sub	esp, 12Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+12Ch+var_4], eax
mov	eax, [esp+12Ch+arg_0]
mov	[esp+12Ch+var_12C], 0FFFFFFFFh
cmp	eax, 3Ah
ja	loc_10018A46
push	ebp
mov	[ebx+74h], eax
mov	ebp, dword_10049000[eax*4]
test	ebp, ebp
jz	loc_10018A45
mov	eax, [ebp+8]
mov	[ebx+8], eax
mov	eax, [ebx]
mov	[ebx+0Ch], ecx
cmp	ecx, 1
mov	ecx, [ebp+0Ch]
push	ecx
lea	edx, [ebx+10h]
push	edx
push	eax
call	sub_10018710
add	esp, 0Ch
test	eax, eax
jz	loc_10018A45
mov	ecx, [ebp+10h]
mov	eax, [ebx]
push	ecx
lea	edx, [ebx+28h]
push	edx
push	eax
call	sub_10018710
add	esp, 0Ch
test	eax, eax
jz	loc_10018A45
mov	ecx, [ebp+14h]
mov	eax, [ebx]
push	ecx
lea	edx, [ebx+34h]
push	edx
push	eax
call	sub_10018710
add	esp, 0Ch
test	eax, eax
jz	loc_10018A45
mov	eax, [ebp+18h]
push	esi
push	edi
mov	[esp+138h+var_128], 3430h
mov	[esp+138h+var_126], 0
mov	esi, eax
mov	edi, edi
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_100189B0
lea	edi, [esp+138h+var_128]
sub	eax, esi
dec	edi
mov	edi, edi
mov	cl, [edi+1]
inc	edi
test	cl, cl
jnz	short loc_100189C0
mov	ecx, eax
shr	ecx, 2
rep movsd
mov	ecx, eax
mov	eax, [ebp+1Ch]
and	ecx, 3
rep movsb
mov	esi, eax
jmp	short loc_100189E0
align 10h
			
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_100189E0
lea	edi, [esp+138h+var_128]
sub	eax, esi
dec	edi
mov	edi, edi
mov	cl, [edi+1]
inc	edi
test	cl, cl
jnz	short loc_100189F0
mov	ecx, eax
shr	ecx, 2
rep movsd
mov	ecx, eax
mov	eax, [ebx]
and	ecx, 3
rep movsb
lea	ecx, [esp+138h+var_128]
push	ecx
lea	edx, [ebx+4Ch]
push	edx
push	eax
call	sub_10018710
add	esp, 0Ch
pop	edi
pop	esi
test	eax, eax
jz	short loc_10018A45
mov	ecx, [ebp+20h]
mov	eax, [ebx]
push	ecx
lea	edx, [ebx+58h]
push	edx
push	eax
call	sub_10018710
add	esp, 0Ch
test	eax, eax
jz	short loc_10018A45
mov	ecx, [ebp+24h]
mov	[ebx+64h], ecx
mov	[esp+130h+var_12C], 0
			
pop	ebp
mov	ecx, [esp+12Ch+var_4]
mov	eax, [esp+12Ch+var_12C]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 12Ch
retn
align 10h
			
sub	esp, 0Ch
mov	ecx, [esp+0Ch+arg_4]
mov	eax, [ecx+8]
push	ebp
xor	ebp, ebp
push	esi
or	esi, 0FFFFFFFFh
mov	[esp+14h+var_C], ebp
mov	[esp+14h+Src], ebp
mov	[esp+14h+Size],	ebp
cmp	eax, 0Ah
jz	short loc_10018A9C
cmp	eax, 7
jz	short loc_10018A9C
push	0FFFFE08Dh
call	PORT_SetError_Util
add	esp, 4
or	eax, esi
pop	esi
pop	ebp
add	esp, 0Ch
retn
			
add	eax, 0FFFFFFFEh
mov	[esp+14h+Size],	eax
mov	eax, [ecx+4]
lea	ecx, [eax+2]
mov	[esp+14h+Src], ecx
cmp	byte ptr [eax],	6
push	edi
jnz	loc_10018D30
lea	edx, [esp+18h+var_C]
push	edx
call	SECOID_FindOIDTag_Util
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jz	loc_10018D30
mov	ecx, [esp+18h+Size]
mov	eax, [esp+18h+arg_0]
push	ebx
mov	ebx, [esp+1Ch+arg_8]
push	ecx
push	eax
mov	[ebx], eax
mov	[ebx+64h], ebp
mov	dword ptr [ebx+4], 1
mov	[ebx+74h], ebp
mov	[ebx+80h], ecx
call	PORT_ArenaAlloc_Util
add	esp, 8
mov	[ebx+7Ch], eax
cmp	eax, ebp
jz	loc_10018D14	
mov	ecx, [esp+1Ch+Size]
mov	edx, [esp+1Ch+Src]
push	ecx		
push	edx		
push	eax		
call	memcpy
lea	eax, [edi-0CAh]
add	esp, 0Ch
cmp	eax, 39h	
ja	loc_10018D14	
jmp	ds:off_10018D48[eax*4] 
			
push	15h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	16h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	17h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	18h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	19h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Ah		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Bh		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Ch		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Dh		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Eh		
mov	ecx, 2
jmp	loc_10018D0A
			
push	1Fh		
mov	ecx, 2
jmp	loc_10018D0A
			
push	20h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	21h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	22h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	23h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	24h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	2Fh		
mov	ecx, 2
jmp	loc_10018D0A
			
push	30h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	31h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	32h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	6		
mov	ecx, 2
jmp	loc_10018D0A
			
push	33h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	7		
mov	ecx, 2
jmp	loc_10018D0A
			
push	34h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	35h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	8		
mov	ecx, 2
jmp	loc_10018D0A
			
push	9		
mov	ecx, 2
jmp	loc_10018D0A
			
push	36h		
mov	ecx, 2
jmp	loc_10018D0A
			
push	0Ah		
mov	ecx, 2
jmp	loc_10018D0A
			
push	0Bh		
mov	ecx, 2
jmp	short loc_10018D0A
			
push	0Ch		
mov	ecx, 2
jmp	short loc_10018D0A
			
push	0Dh		
mov	ecx, 2
jmp	short loc_10018D0A
			
push	0Eh		
mov	ecx, 2
jmp	short loc_10018D0A
			
push	0Fh		
mov	ecx, 2
jmp	short loc_10018D0A
			
push	1		
jmp	short loc_10018D05
			
push	10h		
jmp	short loc_10018D05
			
push	11h		
jmp	short loc_10018D05
			
push	12h		
jmp	short loc_10018D05
			
push	13h		
jmp	short loc_10018D05
			
push	14h		
jmp	short loc_10018D05
			
push	3		
jmp	short loc_10018D05
			
push	25h		
jmp	short loc_10018D05
			
push	26h		
jmp	short loc_10018D05
			
push	27h		
jmp	short loc_10018D05
			
push	28h		
jmp	short loc_10018D05
			
push	29h		
jmp	short loc_10018D05
			
push	2Ah		
jmp	short loc_10018D05
			
push	2Bh		
jmp	short loc_10018D05
			
push	2Ch		
jmp	short loc_10018D05
			
push	2Dh		
jmp	short loc_10018D05
			
push	2		
jmp	short loc_10018D05
			
push	2Eh		
jmp	short loc_10018D05
			
push	4		
jmp	short loc_10018D05
			
push	5		
			
mov	ecx, 1
			
call	sub_10018900
mov	esi, eax
add	esp, 4
			
cmp	[ebx+64h], ebp	
pop	ebx
jnz	short loc_10018D27
push	0FFFFE08Dh
call	PORT_SetError_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
add	esp, 0Ch
retn
			
push	0FFFFE08Dh
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
align 4
			
dd offset loc_10018CC3,	offset loc_10018CC7, offset loc_10018CCB 
dd offset loc_10018CCF,	offset loc_10018CD3, offset loc_10018CD7
dd offset loc_10018CDB,	offset loc_10018CDF, offset loc_10018CE3
dd offset loc_10018CE7,	offset loc_10018CEB, offset loc_10018CEF
dd offset loc_10018CF3,	offset loc_10018CF7, offset loc_10018CFB
dd offset loc_10018CFF,	offset loc_10018D03, offset loc_10018B2E
dd offset loc_10018B3A,	offset loc_10018B46, offset loc_10018B52
dd offset loc_10018B5E,	offset loc_10018B6A, offset loc_10018B76
dd offset loc_10018D14,	offset loc_10018D14, offset loc_10018B82
dd offset loc_10018B8E,	offset loc_10018B9A, offset loc_10018BA6
dd offset loc_10018D14,	offset loc_10018D14, offset loc_10018BB2
dd offset loc_10018BBE,	offset loc_10018BCA, offset loc_10018BD6
dd offset loc_10018BE2,	offset loc_10018BEE, offset loc_10018BFA
dd offset loc_10018C06,	offset loc_10018C12, offset loc_10018C1E
dd offset loc_10018C2A,	offset loc_10018C36, offset loc_10018C42
dd offset loc_10018C4E,	offset loc_10018C5A, offset loc_10018C66
dd offset loc_10018C72,	offset loc_10018C7E, offset loc_10018C8A
dd offset loc_10018C93,	offset loc_10018C9C, offset loc_10018CA5
dd offset loc_10018CAE
push	edi
push	800h
call	PORT_NewArena_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_10018E49
or	eax, 0FFFFFFFFh
pop	edi
retn
push	esi
push	84h
push	edi
call	PORT_ArenaZAlloc_Util
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_10018E93
push	ebx
mov	ebx, [esp+0Ch+arg_0]
mov	eax, [ebx+8]
push	eax
lea	ecx, [esi+68h]
push	ecx
push	edi
call	SECITEM_AllocItem_Util
mov	edx, [ebx+8]
mov	eax, [ebx+4]
mov	ecx, [esi+6Ch]
push	edx		
push	eax		
push	ecx		
call	memcpy
push	esi
push	ebx
push	edi
call	sub_10018A60
add	esp, 24h
pop	ebx
cmp	eax, 0FFFFFFFFh
jnz	short loc_10018EA4
push	1
push	edi
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
or	eax, 0FFFFFFFFh
pop	edi
retn
mov	edx, [esp+8+arg_4]
mov	[edx], esi
pop	esi
xor	eax, eax
pop	edi
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	eax, 400h
jz	short loc_10018ED8
cmp	eax, 800h
jz	short loc_10018ED2
sub	eax, 0C00h
neg	eax
sbb	eax, eax
and	eax, 0FFFFFFF2h
add	eax, 40h
retn
mov	eax, 38h
retn
mov	eax, 28h
retn
align 10h
			
cmp	eax, 400h
jz	short loc_10018F0D
cmp	eax, 800h
jz	short loc_10018EFD
cmp	eax, 0C00h
jnz	short loc_10018F15
cmp	ecx, 100h
jmp	short loc_10018F13
cmp	ecx, 0E0h
jz	short loc_10018F26
cmp	ecx, 100h
jmp	short loc_10018F13
cmp	ecx, 0A0h
			
jz	short loc_10018F26
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
			
xor	eax, eax
retn
align 10h
cmp	eax, 0E0h
jnb	short loc_10018F3D
mov	eax, 3
retn
cmp	eax, 100h
jnb	short loc_10018F4A
mov	eax, 7
retn
cmp	eax, 180h
jnb	short loc_10018F57
mov	eax, 4
retn
cmp	eax, 200h
sbb	eax, eax
add	eax, 6
retn
align 10h
			
push	ecx
push	esi
push	eax
call	sub_10008790
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10018F87
or	eax, 0FFFFFFFFh
pop	esi
pop	ecx
retn
mov	ecx, [esi+4]
push	edi
call	ecx
mov	edi, eax
test	edi, edi
jnz	short loc_10018F9A
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
pop	ecx
retn
mov	edx, [esi+10h]
push	edi
call	edx
mov	eax, [esp+10h+arg_8]
mov	ecx, [esp+10h+arg_4]
mov	edx, [esi+14h]
push	eax
push	ecx
push	edi
call	edx
mov	eax, [esi]
mov	edx, [esp+1Ch+arg_0]
push	eax
mov	eax, [esi+18h]
lea	ecx, [esp+20h+var_4]
push	ecx
push	edx
push	edi
call	eax
mov	ecx, [esi+0Ch]
push	1
push	edi
call	ecx
add	esp, 28h
pop	edi
xor	eax, eax
pop	esi
pop	ecx
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	eax, [ecx+8]
mov	ecx, [ecx+4]
test	ecx, ecx
jnz	short loc_10018FF1
xor	eax, eax
retn
cmp	eax, 1
jbe	short locret_10018FFC
cmp	byte ptr [ecx],	0
jnz	short locret_10018FFC
dec	eax
			
retn
align 10h
mov	ecx, [esp+arg_0]
push	esi
xor	esi, esi
test	ecx, ecx
jnz	short loc_1001901D
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [ecx+8]
mov	edx, [ecx+0Ch]
test	eax, eax
jz	short loc_10019034
cmp	edx, 1
jbe	short loc_10019032
cmp	byte ptr [eax],	0
jnz	short loc_10019032
dec	edx
			
mov	eax, edx
mov	edx, [ecx+18h]
mov	ecx, [ecx+14h]
add	eax, eax
add	eax, eax
add	eax, eax
test	ecx, ecx
jnz	short loc_10019048
xor	edx, edx
jmp	short loc_10019053
cmp	edx, 1
jbe	short loc_10019053
cmp	byte ptr [ecx],	0
jnz	short loc_10019053
dec	edx
			
lea	ecx, ds:0[edx*8]
cmp	eax, 400h
jnb	short loc_100190A1
cmp	ecx, 0A0h
jnz	short loc_1001900B
lea	ecx, [eax-200h]
cmp	ecx, 200h
ja	short loc_1001908D
test	al, 3Fh
jnz	short loc_1001908D
add	eax, 0FFFFFE00h
cdq
and	edx, 3Fh
add	eax, edx
sar	eax, 6
test	eax, eax
jns	short loc_100190A8
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
mov	eax, esi
pop	esi
retn
call	sub_10018EE0
mov	esi, eax
mov	eax, esi
pop	esi
retn
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_100190C8
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
xor	eax, eax
retn
mov	ecx, [eax+18h]
mov	eax, [eax+14h]
test	eax, eax
jnz	short loc_100190D6
xor	ecx, ecx
jmp	short loc_100190E1
cmp	ecx, 1
jbe	short loc_100190E1
cmp	byte ptr [eax],	0
jnz	short loc_100190E1
dec	ecx
			
lea	eax, ds:0[ecx*8]
cmp	eax, 0E0h
jnb	short loc_100190F5
mov	eax, 3
retn
cmp	eax, 100h
jnb	short loc_10019102
mov	eax, 7
retn
cmp	eax, 180h
jnb	short loc_1001910F
mov	eax, 4
retn
cmp	eax, 200h
sbb	eax, eax
add	eax, 6
retn
align 10h
push	esi
mov	esi, eax
cmp	dword ptr [esi+4], 0
jnz	short loc_10019139
mov	eax, [esi+8]
push	eax
push	ecx
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esi+4], eax
mov	eax, [esi+4]
test	eax, eax
jnz	short loc_10019152
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	edx, [esi+8]
push	edx
push	eax
call	sub_1000CD60
mov	esi, [esi+4]
or	byte ptr [esi],	80h
add	esp, 8
pop	esi
retn
align 10h
mov	eax, [esi+8]
mov	ecx, [esi+4]
push	eax
push	ecx
call	sub_1000CD60
add	esp, 8
test	eax, eax
jnz	short loc_100191EC
mov	edx, [esi+8]
mov	eax, [esi+4]
mov	ecx, [esp+arg_0]
push	edx
push	eax
push	ecx
call	sub_10029D30
add	esp, 0Ch
test	eax, eax
jz	short loc_100191F0
cmp	eax, 0FFFFFFFCh
jz	short loc_100191DF
cmp	eax, 0FFFFFFFDh
jz	short loc_100191CE
cmp	eax, 0FFFFFFFEh
jz	short loc_100191BD
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
xor	eax, eax
retn
align 10h
			
sub	esp, 40h
push	ebp
mov	ebp, [esp+44h+arg_0]
push	esi
push	edi
xor	edi, edi
lea	eax, [esp+4Ch+var_40]
push	eax
mov	[esp+50h+var_34], edi
mov	[esp+50h+var_24], edi
mov	[esp+50h+var_4], edi
mov	[esp+50h+var_14], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001935B
lea	ecx, [esp+4Ch+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001935B
lea	edx, [esp+4Ch+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001935B
mov	eax, [ebp+8]
mov	ecx, [ebp+4]
push	eax
push	ecx
lea	edx, [esp+54h+var_40]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001935B
mov	ebp, [esp+4Ch+arg_4]
cmp	ebp, 0FFFFFFFFh
jnb	short loc_10019299
lea	eax, [esp+4Ch+var_40]
push	eax
mov	ecx, eax
push	ebp
push	ecx
call	sub_1002B360
jmp	short loc_100192DA
lea	edx, [esp+4Ch+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001935B
lea	eax, [esp+4Ch+var_20]
push	ebp
push	eax
call	sub_1002B310
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001935B
lea	ecx, [esp+4Ch+var_40]
push	ecx
lea	edx, [esp+50h+var_20]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001935B
mov	edx, [esp+4Ch+arg_8]
lea	ecx, [esp+4Ch+var_30]
push	ecx
push	edi
push	edx
lea	eax, [esp+58h+var_40]
push	eax
call	sub_1002A5C0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_1001935B
cmp	[ebx+4], edi
jz	short loc_10019310
push	edi
push	ebx
call	SECITEM_ZfreeItem_Util
add	esp, 8
lea	ecx, [esp+4Ch+var_30]
push	ecx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_10019328
mov	esi, 0FFFFFFFDh
jmp	short loc_1001935B
push	eax
push	ebx
push	edi
call	SECITEM_AllocItem_Util
mov	eax, [ebx+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_10019341
mov	esi, 0FFFFFFFEh
jmp	short loc_1001935B
mov	edx, [ebx+8]
push	edx
push	eax
lea	eax, [esp+54h+var_30]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001935B
xor	esi, esi
			
lea	ecx, [esp+4Ch+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+50h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+54h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+58h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 10h
cmp	esi, edi
jz	short loc_100193F5
cmp	esi, 0FFFFFFFCh
jz	short loc_100193DE
cmp	esi, 0FFFFFFFDh
jz	short loc_100193C7
cmp	esi, 0FFFFFFFEh
jz	short loc_100193B0
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 40h
retn
align 10h
			
sub	esp, 0Ch
push	ebx
push	eax
push	ecx
push	edx
lea	ebx, [esp+1Ch+var_C]
mov	[esp+1Ch+var_C], 0
mov	[esp+1Ch+var_8], 0
mov	[esp+1Ch+var_4], 0
call	sub_10019200
add	esp, 0Ch
pop	ebx
test	eax, eax
jnz	short loc_10019467
mov	eax, [esp+0Ch+var_4]
mov	ecx, [esp+0Ch+var_8]
mov	edx, [esp+0Ch+arg_4]
push	edi
push	eax
mov	eax, [esp+14h+arg_0]
push	ecx
push	edx
call	sub_10018F70
add	esp, 0Ch
cmp	[esp+10h+var_8], 0
mov	edi, eax
jz	short loc_10019464
lea	eax, [esp+10h+var_C]
push	0
push	eax
call	SECITEM_ZfreeItem_Util
add	esp, 8
mov	eax, edi
pop	edi
add	esp, 0Ch
retn
align 10h
			
sub	esp, 40h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+40h+var_4], eax
mov	eax, [esi+8]
mov	ecx, [esi+4]
push	ebx
push	ebp
mov	ebp, [esp+48h+arg_4]
push	edi
push	eax		
push	ecx		
lea	edx, [esp+54h+var_2C]
push	edx		
xor	edi, edi
call	sub_10002750
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	loc_10019535
lea	eax, [esp+4Ch+var_18]
push	eax
mov	eax, [esp+50h+arg_0]
push	3
lea	ecx, [edi+1]
mov	edx, esi
call	sub_10019400
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_10019535
jmp	short loc_100194D0
align 10h
			
movzx	ecx, byte ptr [esp+eax+4Ch+var_18]
xor	cl, byte ptr [esp+eax+4Ch+var_2C]
movzx	edx, byte ptr [esp+eax+4Ch+var_2C+1]
xor	dl, byte ptr [esp+eax+4Ch+var_18+1]
mov	byte ptr [esp+eax+4Ch+var_40], cl
movzx	ecx, byte ptr [esp+eax+4Ch+var_2C+2]
xor	cl, byte ptr [esp+eax+4Ch+var_18+2]
mov	byte ptr [esp+eax+4Ch+var_40+1], dl
movzx	edx, byte ptr [esp+eax+4Ch+var_2C+3]
xor	dl, byte ptr [esp+eax+4Ch+var_18+3]
mov	byte ptr [esp+eax+4Ch+var_40+2], cl
movzx	ecx, byte ptr [esp+eax+4Ch+var_28]
xor	cl, byte ptr [esp+eax+4Ch+var_14]
mov	byte ptr [esp+eax+4Ch+var_40+3], dl
mov	byte ptr [esp+eax+4Ch+var_3C], cl
add	eax, 5
cmp	eax, 14h
jl	short loc_100194D0
or	byte ptr [esp+4Ch+var_40], 80h
or	[esp+4Ch+var_2D], 1
push	14h
lea	edx, [esp+50h+var_40]
push	edx
push	ebp
call	sub_10029D30
add	esp, 0Ch
mov	edi, eax
			
xor	eax, eax
mov	[esp+4Ch+var_40], eax
mov	[esp+4Ch+var_3C], eax
mov	[esp+4Ch+var_38], eax
mov	[esp+4Ch+var_34], eax
mov	[esp+1Ch], eax
mov	[esp+4Ch+var_2C], eax
mov	[esp+4Ch+var_28], eax
mov	[esp+4Ch+var_24], eax
mov	[esp+4Ch+var_20], eax
mov	[esp+4Ch+var_1C], eax
mov	[esp+4Ch+var_18], eax
mov	[esp+4Ch+var_14], eax
mov	[esp+4Ch+var_10], eax
mov	[esp+4Ch+var_C], eax
mov	[esp+4Ch+var_8], eax
test	edi, edi
jz	loc_10019612
cmp	edi, 0FFFFFFFCh
jz	short loc_100195F0
cmp	edi, 0FFFFFFFDh
jz	short loc_100195CE
cmp	edi, 0FFFFFFFEh
jz	short loc_100195AC
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+40h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 40h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+40h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 40h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+40h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 40h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+40h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 40h
retn
mov	ecx, [esp+4Ch+var_4]
pop	edi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 40h
retn
align 10h
			
sub	esp, 4Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+4Ch+var_4], eax
push	ebx
push	ebp
mov	ebp, [esp+54h+arg_4]
push	esi
push	edi
mov	edi, edx
mov	edx, [esp+5Ch+arg_0]
push	edx
mov	[esp+60h+var_48], ecx
xor	esi, esi
xor	ebx, ebx
shr	ebp, 3
call	sub_10008790
add	esp, 4
cmp	eax, esi
jnz	short loc_1001966A
mov	[esp+5Ch+var_4C], esi
jmp	short loc_10019670
mov	eax, [eax]
mov	[esp+5Ch+var_4C], eax
mov	ecx, [edi+8]
mov	edx, [edi+4]
push	ecx
push	edx
lea	eax, [esp+64h+Dst]
push	eax
mov	eax, [esp+68h+arg_0]
call	sub_10018F70
mov	edi, eax
add	esp, 0Ch
test	edi, edi
jnz	short loc_100196BE
mov	ecx, [esp+5Ch+var_4C]
cmp	ecx, ebp
jle	short loc_1001969B
mov	esi, ecx
sub	esi, ebp
or	[esp+esi+5Ch+Dst], 80h
or	byte ptr [esp+ecx+5Ch+var_48+3], 1
lea	eax, [esp+esi+5Ch+Dst]
lea	ecx, [esp+ecx+5Ch+var_48+3]
mov	ecx, [esp+5Ch+var_48]
push	ebp
push	eax
push	ecx
call	sub_10029D30
add	esp, 0Ch
mov	ebx, eax
push	40h		
lea	edx, [esp+60h+Dst]
push	0		
push	edx		
call	memset
add	esp, 0Ch
test	ebx, ebx
jz	loc_10019772
cmp	ebx, 0FFFFFFFCh
jz	short loc_1001974F
cmp	ebx, 0FFFFFFFDh
jz	short loc_1001972C
cmp	ebx, 0FFFFFFFEh
jz	short loc_10019709
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
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
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
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
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
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
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
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
mov	ecx, [esp+5Ch+var_4]
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 4Ch
retn
align 10h
			
sub	esp, 24Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+24Ch+var_4], eax
mov	ecx, [esp+24Ch+arg_C]
mov	eax, [esp+24Ch+arg_8]
mov	edx, [esp+24Ch+arg_10]
push	ebx
mov	ebx, [esp+250h+arg_18]
push	ebp
push	esi
mov	[esp+258h+var_1DC], ecx
mov	ecx, [esp+258h+arg_0]
mov	[esp+258h+var_1E4], eax
mov	eax, [esp+258h+arg_14]
push	edi
push	ecx
mov	[esp+260h+var_1E0], edx
mov	[esp+260h+var_248], eax
mov	[esp+260h+var_22C], ebx
or	ebp, 0FFFFFFFFh
call	sub_10008790
xor	ecx, ecx
add	esp, 4
cmp	eax, ecx
jnz	short loc_10019801
mov	[esp+25Ch+var_24C], ecx
jmp	short loc_10019807
mov	edx, [eax]
mov	[esp+25Ch+var_24C], edx
mov	edi, [esp+25Ch+var_24C]
add	edi, edi
lea	eax, [esp+25Ch+var_228]
add	edi, edi
push	eax
add	edi, edi
mov	[esp+260h+var_21C], ecx
mov	[esp+260h+var_1F8], ecx
mov	[esp+260h+var_234], ecx
mov	[esp+260h+var_208], ecx
mov	[esp+260h+var_1E8], ecx
mov	[esp+260h+var_1C8], ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
lea	ecx, [esp+25Ch+var_204]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_240]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_214]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
lea	ecx, [esp+25Ch+var_1F4]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_1D4]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10019DF0
mov	eax, [esp+25Ch+arg_4]
lea	eax, [edi+eax-1]
xor	edx, edx
div	edi
mov	ecx, [ebx]
push	1C0h		
lea	edx, [esp+260h+Dst]
push	0		
push	edx		
mov	[esp+268h+var_1D8], ecx
mov	edi, eax
mov	[esp+268h+var_218], edi
call	memset
add	esp, 0Ch
xor	ebx, ebx
test	edi, edi
jle	short loc_10019948
mov	ecx, [esp+25Ch+var_24C]
mov	eax, ecx
neg	eax
mov	[esp+25Ch+var_230], eax
lea	eax, [edi-1]
imul	eax, ecx
lea	ecx, [esp+eax+25Ch+Dst]
mov	[esp+25Ch+var_244], ecx
mov	edx, [esp+25Ch+var_244]
mov	eax, [esp+25Ch+arg_0]
push	edx
mov	edx, [esp+260h+var_248]
push	eax
mov	eax, 200h
mov	ecx, ebx
call	sub_10019400
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	loc_10019DF0
mov	ecx, [esp+25Ch+var_230]
add	[esp+25Ch+var_244], ecx
inc	ebx
cmp	ebx, edi
jl	short loc_10019911
mov	ebx, [esp+25Ch+var_248]
push	200h
push	edi
push	ebx
call	sub_10019200
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jnz	loc_10019DF0
mov	ecx, [esp+25Ch+var_24C]
mov	ebx, [esp+25Ch+arg_4]
add	ecx, ecx
add	ecx, ecx
add	ecx, ecx
mov	eax, edi
imul	eax, ecx
lea	ecx, [ebx-1]
and	ecx, 7
mov	dl, 1
shl	dl, cl
sub	eax, ebx
shr	eax, 3
lea	esi, [esp+eax+25Ch+Dst]
lea	ecx, [edx-1]
and	cl, [esi]
or	cl, dl
mov	[esi], cl
mov	ecx, [esp+25Ch+var_24C]
imul	ecx, edi
mov	[esp+25Ch+var_244], ecx
sub	ecx, eax
push	ecx
lea	edx, [esp+260h+var_240]
push	esi
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
mov	ecx, [esp+25Ch+var_1DC]
mov	edx, [esp+25Ch+var_1E4]
lea	eax, [esp+25Ch+var_204]
push	eax
push	ecx
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_204]
push	eax
mov	ecx, eax
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_240]
push	eax
lea	ecx, [esp+260h+var_204]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_240]
push	eax
mov	ecx, eax
push	1
push	ecx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
push	ebp
lea	edx, [esp+260h+var_240]
push	edx
lea	eax, [esp+264h+var_204]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_10019DF0
lea	edx, [ebx-1]
push	edx
lea	eax, [esp+260h+var_1D4]
push	eax
call	sub_1002A630
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_10019DF0
lea	ecx, [esp+25Ch+var_228]
push	ecx
lea	edx, [esp+260h+var_204]
push	edx
lea	eax, [esp+264h+var_240]
push	eax
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
jmp	short loc_10019AA7
align 10h
mov	ebx, [esp+25Ch+arg_4]
lea	ecx, [esp+25Ch+var_228]
push	ecx
mov	edx, ecx
push	1
push	edx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_228]
push	eax
call	sub_10028CE0
add	esp, 4
cmp	eax, ebx
jbe	loc_10019B76
lea	ecx, [esp+25Ch+var_240]
push	ecx
lea	edx, [esp+260h+var_204]
push	1
push	edx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_240]
push	eax
mov	ecx, eax
push	ecx
lea	edx, [esp+264h+var_1D4]
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
push	0
lea	eax, [esp+260h+var_240]
push	eax
lea	ecx, [esp+264h+var_204]
push	ecx
mov	edx, eax
push	edx
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_228]
push	eax
lea	ecx, [esp+260h+var_204]
push	ecx
lea	edx, [esp+264h+var_240]
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_228]
push	eax
mov	ecx, eax
push	1
push	ecx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
mov	eax, [esp+25Ch+var_22C]
inc	dword ptr [eax]
push	1C0h		
lea	edx, [esp+260h+Dst]
push	0		
push	edx		
call	memset
mov	eax, [esp+268h+var_218]
add	esp, 0Ch
xor	edi, edi
test	eax, eax
jle	short loc_10019BF5
mov	edx, [esp+25Ch+var_24C]
mov	ecx, edx
neg	ecx
lea	ebx, [eax-1]
imul	ebx, edx
mov	[esp+25Ch+var_230], ecx
lea	ebx, [esp+ebx+25Ch+Dst]
jmp	short loc_10019BC0
align 10h
			
mov	eax, [esp+25Ch+arg_0]
mov	edx, [esp+25Ch+var_248]
push	ebx
push	eax
mov	eax, 200h
mov	ecx, edi
call	sub_10019400
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	loc_10019DF0
add	ebx, [esp+25Ch+var_230]
inc	edi
cmp	edi, [esp+25Ch+var_218]
jl	short loc_10019BC0
mov	eax, [esp+25Ch+var_218]
mov	ebx, [esp+25Ch+var_248]
push	200h
push	eax
push	ebx
call	sub_10019200
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jnz	loc_10019DF0
mov	ecx, [esp+25Ch+var_244]
push	ecx
lea	edx, [esp+260h+Dst]
push	edx
lea	eax, [esp+264h+var_214]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	ecx, [esp+25Ch+var_1F4]
push	ecx
lea	edx, [esp+260h+var_228]
push	3
push	edx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_214]
push	eax
lea	ecx, [esp+260h+var_1F4]
push	ecx
mov	edx, eax
push	edx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_214]
push	eax
mov	ecx, eax
push	2
push	ecx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
mov	eax, [esp+25Ch+var_1DC]
lea	edx, [esp+25Ch+var_1F4]
push	edx
push	eax
lea	ecx, [esp+264h+var_240]
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_1F4]
push	edx
mov	eax, edx
push	eax
mov	ecx, edx
push	ecx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_1F4]
push	edx
lea	eax, [esp+260h+var_228]
push	eax
mov	ecx, edx
push	ecx
lea	edx, [esp+268h+var_214]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_10019DF0
lea	eax, [esp+25Ch+var_214]
push	eax
lea	ecx, [esp+260h+var_1F4]
push	1
push	ecx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_214]
push	edx
lea	eax, [esp+260h+var_228]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002B820
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10019DF0
lea	edx, [esp+25Ch+var_214]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jnz	short loc_10019D7D
mov	edx, [esp+25Ch+var_1E4]
lea	eax, [esp+25Ch+var_214]
push	eax
lea	ecx, [esp+260h+var_228]
push	ecx
push	edx
lea	eax, [esp+268h+var_1F4]
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_10019DF0
lea	ecx, [esp+25Ch+var_214]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_10019DD1
mov	edx, [esp+25Ch+var_1D8]
mov	eax, [esp+25Ch+arg_4]
lea	ecx, [edx+eax*4]
mov	edx, [esp+25Ch+var_22C]
cmp	[edx], ecx
jnb	short loc_10019DED
lea	eax, [esp+25Ch+var_240]
push	eax
mov	ecx, eax
push	1
push	ecx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_10019DF0
lea	edx, [esp+25Ch+var_228]
push	edx
lea	eax, [esp+260h+var_204]
push	eax
lea	ecx, [esp+264h+var_240]
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jns	loc_10019AA0
jmp	short loc_10019DF0
mov	edx, [esp+25Ch+var_1E0]
push	edx
lea	eax, [esp+260h+var_228]
push	eax
call	sub_10028E00
mov	esi, eax
add	esp, 8
test	esi, esi
js	short loc_10019DF0
xor	ebp, ebp
jmp	short loc_10019DF0
or	ebp, 0FFFFFFFFh
			
lea	ecx, [esp+25Ch+var_228]
push	ecx
call	sub_10028EF0
lea	edx, [esp+260h+var_204]
push	edx
call	sub_10028EF0
lea	eax, [esp+264h+var_240]
push	eax
call	sub_10028EF0
lea	ecx, [esp+268h+var_214]
push	ecx
call	sub_10028EF0
lea	edx, [esp+26Ch+var_1F4]
push	edx
call	sub_10028EF0
lea	eax, [esp+270h+var_1D4]
push	eax
call	sub_10028EF0
add	esp, 18h
test	esi, esi
jz	short loc_10019E8D
cmp	esi, 0FFFFFFFCh
jz	short loc_10019E7B
cmp	esi, 0FFFFFFFDh
jz	short loc_10019E69
cmp	esi, 0FFFFFFFEh
jz	short loc_10019E57
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	ebp, 0FFFFFFFFh
jmp	short loc_10019E92
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	ebp, 0FFFFFFFFh
jmp	short loc_10019E92
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	ebp, 0FFFFFFFFh
jmp	short loc_10019E92
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	ebp, 0FFFFFFFFh
jmp	short loc_10019E92
cmp	ebp, 0FFFFFFFFh
jnz	short loc_10019EBE
			
mov	ecx, [esp+25Ch+var_1E0]
push	ecx
call	sub_10028F40
mov	eax, [esp+260h+var_248]
add	esp, 4
cmp	dword ptr [eax+4], 0
jz	short loc_10019EB4
push	0
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
mov	edx, [esp+25Ch+var_22C]
mov	dword ptr [edx], 0
mov	ecx, [esp+25Ch+var_4]
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 24Ch
retn
align 10h
			
sub	esp, 0CCh
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0CCh+var_4], eax
mov	eax, [esp+0CCh+arg_8]
mov	ecx, [esp+0CCh+arg_C]
mov	edx, [esp+0CCh+arg_14]
push	ebx
push	ebp
mov	ebp, [esp+0D4h+arg_10]
push	esi
mov	[esp+0D8h+var_BC], eax
mov	eax, [esp+0D8h+arg_0]
push	edi
push	eax
mov	[esp+0E0h+var_C0], ecx
mov	[esp+0E0h+var_CC], ebp
mov	[esp+0E0h+var_C8], edx
or	esi, 0FFFFFFFFh
call	sub_10008790
xor	ecx, ecx
add	esp, 4
cmp	eax, ecx
jnz	short loc_10019F45
xor	ebx, ebx
mov	[esp+0DCh+var_C4], ebx
jmp	short loc_10019F4D
mov	edx, [eax]
mov	[esp+0DCh+var_C4], edx
mov	ebx, edx
lea	eax, [esp+0DCh+var_A4]
push	eax
mov	[esp+0E0h+var_98], ecx
mov	[esp+0E0h+var_88], ecx
mov	[esp+0E0h+var_A8], ecx
call	sub_1002A030
mov	edi, eax
add	esp, 4
test	edi, edi
js	loc_1001A1B6
lea	ecx, [esp+0DCh+var_94]
push	ecx
call	sub_1002A030
mov	edi, eax
add	esp, 4
test	edi, edi
js	loc_1001A1B6
lea	edx, [esp+0DCh+var_B4]
push	edx
call	sub_1002A030
mov	edi, eax
add	esp, 4
test	edi, edi
js	loc_1001A1B6
mov	eax, [esp+0DCh+arg_4]
cmp	eax, 2
jnb	short loc_10019FB2
or	esi, 0FFFFFFFFh
jmp	loc_1001A1B6
cmp	eax, 21h
jb	loc_1001A046
lea	eax, [esp+0DCh+var_B4]
push	eax
call	sub_10028F40
lea	ecx, [esp+0E0h+var_B4]
push	ecx
mov	edx, ecx
push	1
push	edx
call	sub_1002B360
mov	edi, eax
add	esp, 10h
test	edi, edi
js	loc_1001A1B6
mov	eax, [esp+0DCh+var_C8]
mov	ebx, [esp+0DCh+arg_4]
mov	edx, [esp+0DCh+var_BC]
push	eax
push	ebp
lea	ecx, [esp+0E4h+var_94]
push	ecx
mov	ecx, [esp+0E8h+arg_0]
lea	eax, [ebx+1]
shr	eax, 1
push	edx
inc	eax
push	eax
push	ecx
call	sub_10019EE0
mov	esi, eax
add	esp, 18h
test	esi, esi
jnz	loc_1001A1B6
mov	edx, [esp+0DCh+var_C8]
mov	eax, [esp+0DCh+var_C0]
push	edx
push	ebp
push	eax
mov	eax, [esp+0E8h+arg_0]
lea	ecx, [esp+0E8h+var_B4]
push	ecx
lea	edx, [esp+0ECh+var_94]
push	edx
push	ebx
push	eax
call	sub_10019790
add	esp, 1Ch
mov	esi, eax
jmp	loc_1001A1B6
mov	ecx, [esp+0DCh+var_BC]
push	ecx
push	ebp
push	0
call	SECITEM_CopyItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1001A1B6
mov	edx, [esp+0DCh+var_C8]
mov	[edx], eax
mov	eax, [ebp+8]
mov	ecx, [ebp+4]
push	eax
mov	eax, [esp+0E0h+arg_0]
push	ecx
lea	edx, [esp+0E4h+var_84]
push	edx
call	sub_10018F70
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1001A1B6
mov	eax, [esp+0DCh+arg_0]
mov	edx, [esp+0DCh+var_CC]
lea	ebp, [esp+ebx+0DCh+var_84]
push	ebp
push	eax
mov	eax, 200h
lea	ecx, [esi+1]
call	sub_10019400
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1001A1B2
xor	edi, edi
test	ebx, ebx
jle	short loc_1001A0CE
lea	ecx, [ecx+0]
lea	eax, [esp+edi+0DCh+var_84]
mov	cl, [eax+ebx]
xor	[eax], cl
inc	edi
cmp	edi, ebx
jl	short loc_1001A0C0
mov	ecx, [esp+0DCh+arg_4]
lea	eax, ds:0[ebx*8]
sub	eax, ecx
dec	ecx
and	ecx, 7
mov	dl, 1
shl	dl, cl
shr	eax, 3
lea	edi, [esp+eax+0DCh+var_84]
sub	ebx, eax
push	ebx
push	edi
lea	ecx, [edx-1]
and	cl, [edi]
or	cl, dl
lea	edx, [esp+0E4h+var_A4]
mov	[edi], cl
or	byte ptr [ebp-1], 1
push	edx
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
test	edi, edi
js	loc_1001A1B2
mov	ebx, [esp+0DCh+var_CC]
mov	eax, [esp+0DCh+var_C8]
inc	dword ptr [eax]
push	200h
push	2
push	ebx
call	sub_10019200
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1001A18E
mov	eax, ds:dword_10040B00
cmp	ds:dword_10040B04[eax*4], 0FFF1h
jb	short loc_1001A18B
mov	[esp+0DCh+var_B8], eax
lea	eax, [esp+0DCh+var_B8]
push	eax
lea	ecx, [esp+0E0h+var_A4]
push	ecx
call	sub_100265D0
mov	edi, eax
add	esp, 8
cmp	edi, 0FFFFFFFFh
jz	short loc_1001A192
test	edi, edi
jnz	short loc_1001A18E
mov	edx, [esp+0DCh+arg_4]
mov	ecx, [esp+0DCh+var_C8]
lea	eax, ds:0[edx*4]
cmp	[ecx], eax
ja	short loc_1001A18B
mov	ebx, [esp+0DCh+var_C4]
mov	ebp, [esp+0DCh+var_CC]
jmp	loc_1001A066
			
or	esi, 0FFFFFFFFh
			
mov	ebp, ebx
jmp	short loc_1001A1B6
mov	edx, [esp+0DCh+var_C0]
push	edx
lea	eax, [esp+0E0h+var_A4]
push	eax
call	sub_10028E00
mov	edi, eax
add	esp, 8
test	edi, edi
js	short loc_1001A18E
xor	edi, edi
xor	esi, esi
mov	ebp, ebx
jmp	short loc_1001A1B6
			
mov	ebp, [esp+0DCh+var_CC]
			
lea	ecx, [esp+0DCh+var_A4]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0E0h+var_94]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E4h+var_B4]
push	eax
call	sub_10028EF0
add	esp, 0Ch
test	edi, edi
jz	short loc_1001A232
cmp	edi, 0FFFFFFFCh
jz	short loc_1001A220
cmp	edi, 0FFFFFFFDh
jz	short loc_1001A20E
cmp	edi, 0FFFFFFFEh
jz	short loc_1001A1FC
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001A237
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001A237
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001A237
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001A237
cmp	esi, 0FFFFFFFFh
jnz	short loc_1001A25F
			
mov	ecx, [esp+0DCh+var_C0]
push	ecx
call	sub_10028F40
add	esp, 4
cmp	dword ptr [ebp+4], 0
jz	short loc_1001A255
push	0
push	ebp
call	SECITEM_FreeItem_Util
add	esp, 8
mov	edx, [esp+0DCh+var_C8]
mov	dword ptr [edx], 0
mov	ecx, [esp+0DCh+var_4]
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0CCh
retn
align 10h
sub	esp, 1Ch
mov	edx, [esp+1Ch+arg_C]
push	ebp
mov	ebp, [esp+20h+arg_0]
push	esi
push	edi
xor	edi, edi
mov	[esp+28h+var_C], edi
mov	[esp+28h+var_8], edi
mov	[esp+28h+var_4], edi
mov	[esp+28h+var_18], edi
mov	[esp+28h+var_14], edi
mov	[esp+28h+var_10], edi
mov	[edx], edi
cmp	eax, 400h
jnb	short loc_1001A2F6
mov	esi, [esp+28h+arg_4]
push	ebx
push	ecx
call	sub_10019470
add	esp, 8
test	eax, eax
jnz	loc_1001A53D
mov	eax, [esp+28h+arg_8]
push	ebx
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jnz	loc_1001A53D
mov	ecx, [esp+28h+arg_10]
mov	edx, [esp+28h+arg_14]
mov	dword ptr [ecx], 3
mov	[edx], edi
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
jnz	short loc_1001A31C
mov	esi, [esp+28h+arg_4]
push	ebx
push	ecx
call	sub_10019470
add	esp, 8
test	eax, eax
jnz	short loc_1001A31C
mov	eax, [esp+28h+arg_8]
push	ebx
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001A2DD
			
cmp	ebp, 0E0h
jnb	short loc_1001A32B
mov	edi, 3
jmp	short loc_1001A354
cmp	ebp, 100h
jnb	short loc_1001A33A
mov	edi, 7
jmp	short loc_1001A354
cmp	ebp, 180h
jnb	short loc_1001A349
mov	edi, 4
jmp	short loc_1001A354
cmp	ebp, 200h
sbb	edi, edi
add	edi, 6
			
mov	esi, [esp+28h+arg_4]
push	ebp
push	edi
mov	ecx, ebx
mov	edx, esi
call	sub_10019630
add	esp, 8
test	eax, eax
jnz	short loc_1001A37C
mov	eax, [esp+28h+arg_8]
push	ebx
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001A3E1
lea	eax, [edi-3]	
cmp	eax, 4
ja	short loc_1001A3A7 
jmp	ds:off_1001A548[eax*4] 
			
mov	edi, 7		
jmp	short loc_1001A3AC
			
mov	edi, 4		
jmp	short loc_1001A3AC
			
mov	edi, 5		
jmp	short loc_1001A3AC
			
mov	edi, 6		
jmp	short loc_1001A3AC
			
			
mov	edi, 8		
			
cmp	edi, 8
jnz	short loc_1001A354
mov	eax, [esi]
mov	edx, [esi+8]
mov	ecx, [esi+4]
mov	[esp+28h+var_C], eax
mov	[esp+28h+var_4], edx
mov	eax, 0AAAAAAABh
mul	edx
shr	edx, 1
mov	[esp+28h+var_8], ecx
mov	[esp+28h+var_4], edx
cmp	ebp, 0E0h
jnb	short loc_1001A3FA
mov	edi, 3
jmp	short loc_1001A423
mov	ecx, [esp+28h+arg_10]
mov	edx, [esp+28h+arg_14]
mov	[ecx], edi
pop	edi
pop	esi
mov	dword ptr [edx], 1
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
cmp	ebp, 100h
jnb	short loc_1001A409
mov	edi, 7
jmp	short loc_1001A423
cmp	ebp, 180h
jnb	short loc_1001A418
mov	edi, 4
jmp	short loc_1001A423
cmp	ebp, 200h
sbb	edi, edi
add	edi, 6
			
lea	eax, [esp+28h+var_1C]
push	eax
lea	ecx, [esp+2Ch+var_18]
push	ecx
push	ebx
lea	edx, [esp+34h+var_C]
push	edx
push	ebp
push	edi
call	sub_10019EE0
add	esp, 18h
test	eax, eax
jnz	short loc_1001A462
mov	eax, [esp+28h+arg_8]
push	ebx
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001A4A3
lea	ecx, [esp+28h+var_18]
push	0
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 8
lea	eax, [edi-3]	
cmp	eax, 4
ja	short loc_1001A48D 
jmp	ds:off_1001A55C[eax*4] 
			
mov	eax, 7		
jmp	short loc_1001A492
			
mov	eax, 4		
jmp	short loc_1001A492
			
mov	eax, 5		
jmp	short loc_1001A492
			
mov	eax, 6		
jmp	short loc_1001A492
			
			
mov	eax, 8		
			
mov	edi, eax
cmp	eax, 8
jnz	short loc_1001A423
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 1Ch
retn
mov	edx, [esi+8]
mov	esi, [esp+28h+var_10]
sub	edx, esi
js	loc_1001A52E
mov	eax, [esp+28h+arg_4]
mov	eax, [eax+4]
mov	ebp, [esp+28h+var_14]
add	eax, edx
mov	ecx, esi
cmp	esi, 4
jb	short loc_1001A4DB
mov	edx, [eax]
cmp	edx, [ebp+0]
jnz	short loc_1001A52E
sub	ecx, 4
add	ebp, 4
add	eax, 4
cmp	ecx, 4
jnb	short loc_1001A4C6
test	ecx, ecx
jz	short loc_1001A500
mov	dl, [ebp+0]
cmp	dl, [eax]
jnz	short loc_1001A52E
cmp	ecx, 1
jbe	short loc_1001A500
mov	dl, [ebp+1]
cmp	dl, [eax+1]
jnz	short loc_1001A52E
cmp	ecx, 2
jbe	short loc_1001A500
mov	cl, [ebp+2]
cmp	cl, [eax+2]
jnz	short loc_1001A52E
			
mov	edx, [esp+28h+arg_C]
mov	eax, [esp+28h+arg_10]
mov	ecx, [esp+28h+arg_14]
mov	[edx], esi
lea	edx, [esp+28h+var_18]
push	0
mov	[eax], edi
push	edx
mov	dword ptr [ecx], 2
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
pop	esi
xor	eax, eax
pop	ebp
add	esp, 1Ch
retn
			
lea	eax, [esp+28h+var_18]
push	0
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 1Ch
retn
align 4
dd offset loc_1001A399	
dd offset loc_1001A3A0
dd offset loc_1001A3A7
dd offset loc_1001A392
dd offset loc_1001A47F	
dd offset loc_1001A486
dd offset loc_1001A48D
dd offset loc_1001A478
			
sub	esp, 0C8h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0C8h+var_4], eax
mov	eax, [esp+0C8h+arg_10]
push	ebx
push	ebp
xor	ebx, ebx
mov	[esp+0D0h+var_BC], eax
lea	eax, [esp+0D0h+var_8C]
push	esi
push	eax
mov	[esp+0D8h+var_A4], ecx
mov	[esp+0D8h+var_78], edx
xor	ebp, ebp
mov	[esp+0D8h+var_80], ebx
mov	[esp+0D8h+var_94], ebx
mov	[esp+0D8h+var_68], ebx
mov	[esp+0D8h+var_48], ebx
mov	[esp+0D8h+var_58], ebx
mov	[esp+0D8h+var_A8], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
lea	ecx, [esp+0D4h+var_A0]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
lea	edx, [esp+0D4h+var_74]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
lea	eax, [esp+0D4h+var_54]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
lea	ecx, [esp+0D4h+var_B4]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
lea	edx, [esp+0D4h+var_64]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001A8B9
mov	eax, [esp+0D4h+arg_0]
push	eax
call	sub_10008790
add	esp, 4
cmp	eax, ebx
jnz	short loc_1001A663
mov	[esp+0D4h+var_C8], ebx
jmp	short loc_1001A669
mov	ecx, [eax]
mov	[esp+0D4h+var_C8], ecx
mov	ecx, [esp+0D4h+var_C8]
mov	eax, [esp+0D4h+arg_4]
add	ecx, ecx
add	ecx, ecx
dec	eax
add	ecx, ecx
xor	edx, edx
mov	[esp+0D4h+var_7C], eax
div	ecx
push	edi
xor	edi, edi
mov	[esp+0D8h+var_B8], ecx
mov	[esp+0D8h+var_90], edx
mov	[esp+0D8h+var_C4], eax
cmp	eax, ebx
jbe	loc_1001A750
mov	[esp+0D8h+var_C0], ebx
mov	edi, edi
mov	eax, [esp+0D8h+arg_8]
lea	edx, [esp+0D8h+var_44]
push	edx
mov	edx, [esp+0DCh+arg_0]
lea	ecx, [edi+eax]
mov	eax, [esp+0DCh+arg_C]
push	edx
mov	edx, [esp+0E0h+var_BC]
call	sub_10019400
mov	ebp, eax
add	esp, 8
cmp	ebp, ebx
jnz	loc_1001A8B8
mov	eax, [esp+0D8h+var_C8]
push	eax
lea	ecx, [esp+0DCh+var_44]
push	ecx
lea	edx, [esp+0E0h+var_B4]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
mov	eax, [esp+0D8h+var_C0]
push	eax
lea	ecx, [esp+0DCh+var_B4]
push	ecx
mov	edx, ecx
push	edx
call	sub_10028B50
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
lea	eax, [esp+0D8h+var_8C]
push	eax
lea	ecx, [esp+0DCh+var_B4]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
mov	eax, [esp+0D8h+var_B8]
add	[esp+0D8h+var_C0], eax
inc	edi
cmp	edi, [esp+0D8h+var_C4]
jb	loc_1001A6A0
mov	eax, [esp+0D8h+var_C4]
mov	edx, [esp+0D8h+arg_8]
lea	ecx, [esp+0D8h+var_44]
push	ecx
lea	ecx, [eax+edx]
mov	eax, [esp+0DCh+arg_0]
mov	edx, [esp+0DCh+var_BC]
push	eax
mov	eax, [esp+0E0h+arg_C]
call	sub_10019400
mov	ebp, eax
add	esp, 8
cmp	ebp, ebx
jnz	loc_1001A8B8
mov	ecx, [esp+0D8h+var_C8]
push	ecx
lea	edx, [esp+0DCh+var_44]
push	edx
lea	eax, [esp+0E0h+var_64]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
mov	edx, [esp+0D8h+var_90]
lea	ecx, [esp+0D8h+var_B4]
push	ecx
push	ebx
push	edx
lea	eax, [esp+0E4h+var_64]
push	eax
call	sub_1002A5C0
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001A8B8
mov	eax, [esp+0D8h+var_C4]
imul	eax, [esp+0D8h+var_B8]
push	eax
lea	ecx, [esp+0DCh+var_B4]
push	ecx
mov	edx, ecx
push	edx
call	sub_10028B50
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
lea	eax, [esp+0D8h+var_8C]
push	eax
lea	ecx, [esp+0DCh+var_B4]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
mov	eax, [esp+0D8h+var_7C]
push	1
push	eax
lea	ecx, [esp+0E0h+var_A0]
push	ecx
call	sub_10028B90
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001A8B8
lea	edx, [esp+0D8h+var_A0]
push	edx
lea	eax, [esp+0DCh+var_8C]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001A8B8
mov	eax, [esp+0D8h+var_A4]
lea	edx, [esp+0D8h+var_54]
push	edx
push	eax
call	sub_1002A0A0
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	short loc_1001A8B8
lea	ecx, [esp+0D8h+var_74]
push	ecx
lea	edx, [esp+0DCh+var_54]
push	edx
lea	eax, [esp+0E0h+var_A0]
push	eax
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001A8B8
lea	ecx, [esp+0D8h+var_74]
push	ecx
mov	edx, ecx
push	1
push	edx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001A8B8
mov	eax, [esp+0D8h+var_78]
push	eax
lea	ecx, [esp+0DCh+var_74]
push	ecx
lea	edx, [esp+0E0h+var_A0]
push	edx
call	sub_1002A1A0
add	esp, 0Ch
mov	esi, eax
			
pop	edi
			
lea	eax, [esp+0D4h+var_8C]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D8h+var_A0]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0DCh+var_74]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E0h+var_54]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0E4h+var_64]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0E8h+var_B4]
push	edx
call	sub_10028EF0
add	esp, 18h
cmp	esi, ebx
jz	loc_1001A9B9
cmp	esi, 0FFFFFFFCh
jz	loc_1001A991
cmp	esi, 0FFFFFFFDh
jz	short loc_1001A969
cmp	esi, 0FFFFFFFEh
jz	short loc_1001A941
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+0C8h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C8h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+0C8h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C8h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+0C8h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C8h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+0C8h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C8h
retn
mov	ecx, [esp+0D4h+var_4]
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0C8h
retn
align 10h
			
sub	esp, 24h
mov	eax, [esp+24h+arg_8]
lea	ecx, [esp+24h+var_10]
push	esi
push	ecx
mov	[esp+2Ch+var_24], 0
mov	dword ptr [eax], 0
mov	[esp+2Ch+var_4], 0
mov	[esp+2Ch+var_14], 0
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001AAEE
lea	edx, [esp+28h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001AAEE
lea	eax, [esp+28h+var_20]
push	eax
push	1
push	ebx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001AAEE
lea	ecx, [esp+28h+var_20]
push	ecx
push	edi
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_1001AA75
push	edi
lea	edx, [esp+2Ch+var_20]
push	edx
push	edi
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001AAEE
push	1
push	edi
call	sub_1002A650
add	esp, 8
test	eax, eax
jg	short loc_1001AA8E
mov	[esp+28h+var_24], 0FFFFFFFFh
jmp	short loc_1001AAEE
mov	ecx, [esp+28h+arg_0]
push	0
lea	eax, [esp+2Ch+var_10]
push	eax
push	ecx
lea	edx, [esp+34h+var_20]
push	edx
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
test	esi, esi
js	short loc_1001AAEE
mov	eax, [esp+28h+arg_4]
push	eax
push	ebx
lea	ecx, [esp+30h+var_10]
push	ecx
push	edi
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	short loc_1001AAEE
mov	edx, [esp+28h+arg_4]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jg	short loc_1001AAE4
mov	[esp+28h+var_24], 0FFFFFFFFh
jmp	short loc_1001AAEE
mov	eax, [esp+28h+arg_8]
mov	dword ptr [eax], 1
			
lea	ecx, [esp+28h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+2Ch+var_20]
push	edx
call	sub_10028EF0
add	esp, 8
test	esi, esi
jz	short loc_1001AB6C
cmp	esi, 0FFFFFFFCh
jz	short loc_1001AB57
cmp	esi, 0FFFFFFFDh
jz	short loc_1001AB42
cmp	esi, 0FFFFFFFEh
jz	short loc_1001AB2D
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 24h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 24h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 24h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 24h
retn
mov	eax, [esp+28h+var_24]
pop	esi
add	esp, 24h
retn
align 10h
			
sub	esp, 88h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+88h+var_4], eax
mov	eax, [esp+88h+arg_4]
push	ebx
mov	ebx, [esp+8Ch+arg_8]
push	ebp
push	esi
mov	[esp+94h+var_80], eax
xor	esi, esi
push	edi
mov	edi, [esp+98h+arg_0]
lea	eax, [esp+98h+var_74]
push	eax
mov	[esp+9Ch+var_78], ecx
mov	[esp+9Ch+var_7C], edx
mov	[esp+9Ch+var_88], esi
mov	[esp+9Ch+var_68], esi
mov	[esp+9Ch+var_48], esi
mov	[esp+9Ch+var_58], esi
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001AD7E
lea	ecx, [esp+98h+var_54]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001AD7E
lea	edx, [esp+98h+var_64]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001AD7E
push	edi
call	sub_10008790
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1001AC39
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+98h+var_88], 0FFFFFFFFh
jmp	loc_1001AD82
mov	eax, [edi+4]
call	eax
mov	esi, eax
test	esi, esi
jnz	short loc_1001AC51
mov	[esp+98h+var_88], 0FFFFFFFFh
jmp	loc_1001AD82
mov	edx, [esp+98h+var_80]
lea	ecx, [esp+98h+var_54]
push	ecx
push	1
push	edx
call	sub_1002B460
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001AD82
push	0
lea	eax, [esp+9Ch+var_74]
push	eax
lea	ecx, [esp+0A0h+var_54]
push	ebx
push	ecx
call	sub_1002BF60
mov	ebp, eax
add	esp, 10h
test	ebp, ebp
js	loc_1001AD82
mov	ebx, 1
mov	edx, [edi+10h]
push	esi
call	edx
mov	eax, [esp+9Ch+var_78]
mov	ecx, [eax+8]
mov	edx, [eax+4]
mov	eax, [edi+14h]
push	ecx
push	edx
push	esi
call	eax
mov	ecx, [edi+14h]
push	4
push	offset aGgen	
push	esi
call	ecx
mov	eax, [edi+14h]
push	1
lea	edx, [esp+0B8h+arg_C]
push	edx
push	esi
call	eax
mov	ecx, ebx
push	2
lea	edx, [esp+0C4h+Dst]
shr	ecx, 8
push	edx
mov	[esp+0C8h+Dst],	cl
mov	[esp+0C8h+var_43], bl
mov	eax, [edi+14h]
push	esi
call	eax
mov	eax, [edi+18h]
push	40h
lea	ecx, [esp+0D0h+var_84]
push	ecx
lea	edx, [esp+0D4h+Dst]
push	edx
push	esi
call	eax
mov	ecx, [esp+0DCh+var_84]
add	esp, 44h
push	ecx
lea	edx, [esp+9Ch+Dst]
push	edx
lea	eax, [esp+0A0h+var_64]
push	eax
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	short loc_1001AD82
mov	ecx, [esp+98h+var_7C]
mov	edx, [esp+98h+var_80]
push	ecx
push	edx
lea	eax, [esp+0A0h+var_74]
push	eax
lea	ecx, [esp+0A4h+var_64]
push	ecx
call	sub_100288A0
mov	ebp, eax
add	esp, 10h
test	ebp, ebp
js	short loc_1001AD82
mov	edx, [esp+98h+var_7C]
push	2
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jns	short loc_1001AD6C
inc	ebx
cmp	ebx, 10000h
jb	loc_1001AC93
mov	[esp+98h+var_88], 0FFFFFFFFh
jmp	short loc_1001AD82
cmp	ebx, 10000h
jb	short loc_1001AD82
mov	[esp+98h+var_88], 0FFFFFFFFh
jmp	short loc_1001AD82
			
mov	edi, [esp+98h+var_84]
			
push	40h		
lea	eax, [esp+9Ch+Dst]
push	0		
push	eax		
call	memset
add	esp, 0Ch
test	esi, esi
jz	short loc_1001ADA2
mov	ecx, [edi+0Ch]
push	1
push	esi
call	ecx
add	esp, 8
lea	edx, [esp+98h+var_74]
push	edx
call	sub_10028EF0
lea	eax, [esp+9Ch+var_54]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0A0h+var_64]
push	ecx
call	sub_10028EF0
add	esp, 0Ch
test	ebp, ebp
jz	short loc_1001AE1E
cmp	ebp, 0FFFFFFFCh
jz	short loc_1001AE0C
cmp	ebp, 0FFFFFFFDh
jz	short loc_1001ADFA
cmp	ebp, 0FFFFFFFEh
jz	short loc_1001ADE8
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001AE22
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001AE22
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001AE22
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001AE22
mov	eax, [esp+98h+var_88]
			
mov	ecx, [esp+98h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 88h
retn
align 10h
			
sub	esp, 0B0h
mov	eax, [esp+0B0h+arg_4]
push	esi
push	edi
xor	edi, edi
shr	eax, 3
or	esi, 0FFFFFFFFh
mov	[esp+0B8h+var_4C], edi
mov	[esp+0B8h+var_48], edi
mov	[esp+0B8h+var_44], edi
mov	[esp+0B8h+var_A0], edi
mov	[esp+0B8h+Src],	edi
mov	[esp+0B8h+Size], edi
mov	[esp+0B8h+var_6C], edi
mov	[esp+0B8h+var_68], edi
mov	[esp+0B8h+var_64], edi
mov	[esp+0B8h+var_88], edi
mov	[esp+0B8h+var_84], edi
mov	[esp+0B8h+var_80], edi
mov	[esp+0B8h+var_A4], edi
cmp	[esp+0B8h+arg_C], eax
jb	loc_1001B6FC
cmp	[esp+0B8h+arg_10], edi
jz	loc_1001B6FC
cmp	[esp+0B8h+arg_14], edi
jz	loc_1001B6FC
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
cmp	ebx, edi
jnz	short loc_1001AEDF
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
or	eax, esi
pop	esi
add	esp, 0B0h
retn
push	ebp
push	28h
push	ebx
call	PORT_ArenaZAlloc_Util
mov	ebp, eax
add	esp, 8
mov	[esp+0C0h+var_60], ebp
cmp	ebp, edi
jnz	short loc_1001AF18
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	ebx
call	PORT_FreeArena_Util
add	esp, 0Ch
pop	ebp
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0B0h
retn
push	800h
mov	[ebp+0], ebx
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
cmp	ebx, edi
jnz	short loc_1001AF40
push	0FFFFE013h
call	PORT_SetError_Util
mov	ecx, [ebp+0]
push	1
push	ecx
jmp	short loc_1001AF02
push	20h
push	ebx
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[esp+0C0h+var_B0], eax
cmp	eax, edi
jnz	short loc_1001AF81
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	ebx
call	PORT_FreeArena_Util
mov	edx, [ebp+0]
push	1
push	edx
call	PORT_FreeArena_Util
add	esp, 14h
pop	ebp
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0B0h
retn
mov	[eax], ebx
lea	ebx, [eax+8]
lea	eax, [esp+0C0h+var_5C]
push	eax
mov	[esp+0C4h+var_50], edi
mov	[esp+0C4h+var_70], edi
mov	[esp+0C4h+var_24], edi
mov	[esp+0C4h+var_34], edi
mov	[esp+0C4h+var_14], edi
mov	[esp+0C4h+var_4], edi
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, edi
jl	loc_1001B5EE
lea	ecx, [esp+0C0h+var_7C]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001B5EE
lea	edx, [esp+0C0h+var_30]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001B5EE
lea	eax, [esp+0C0h+var_40]
push	eax
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001B5EE
lea	ecx, [esp+0C0h+var_20]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001B5EE
lea	edx, [esp+0C0h+var_10]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001B5EE
mov	edi, [esp+0C0h+arg_4]
mov	eax, edi
call	sub_10018F30
push	eax
mov	[esp+0C4h+var_AC], eax
call	sub_10008790
add	esp, 4
test	eax, eax
jnz	short loc_1001B063
xor	ecx, ecx
jmp	short loc_1001B065
mov	ecx, [eax]
mov	eax, [esp+0C0h+arg_0]
add	ecx, ecx
add	ecx, ecx
dec	eax
add	ecx, ecx
xor	edx, edx
div	ecx
mov	[esp+0C0h+var_8C], eax
jmp	short loc_1001B080
align 10h
			
mov	eax, [esp+0C0h+var_A4]
inc	eax
mov	[esp+0C0h+var_A4], eax
cmp	eax, 3E8h
jg	loc_1001B255
mov	edx, [esp+0C0h+arg_C]
mov	eax, [esp+0C0h+var_B0]
mov	[ebx+8], edx
mov	ecx, [eax]
mov	eax, ebx
call	sub_10019120
mov	esi, eax
test	esi, esi
jnz	loc_1001B5EE
mov	eax, [esp+0C0h+arg_8]
test	eax, eax
jnz	short loc_1001B0DC
mov	eax, [esp+0C0h+arg_C]
add	eax, eax
lea	ecx, [esp+0C0h+var_7C]
add	eax, eax
push	ecx
add	eax, eax
push	eax
mov	esi, ebx
call	sub_10019470
jmp	short loc_1001B0F6
cmp	eax, 1
jnz	loc_1001B267
mov	edx, [esp+0C0h+var_AC]
push	edi
push	edx
lea	ecx, [esp+0C8h+var_7C]
mov	edx, ebx
call	sub_10019630
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1001B5EE
mov	eax, [esp+0C0h+arg_0]
push	edi
push	eax
call	sub_10018EB0
push	eax
lea	ecx, [esp+0CCh+var_7C]
push	ecx
call	sub_100262E0
add	esp, 10h
mov	ebp, eax
neg	eax
sbb	eax, eax
mov	[esp+0C0h+var_94], eax
jnz	loc_1001B080
mov	edi, [esp+0C0h+arg_8]
mov	eax, [esp+0C0h+arg_0]
neg	edi
sbb	edi, edi
add	edi, 2
cmp	eax, 400h
jb	short loc_1001B158
lea	edx, ds:0FFFFFFFFh[eax*4]
mov	[esp+0C0h+var_90], edx
jmp	short loc_1001B160
mov	[esp+0C0h+var_90], 0FFFh
mov	[esp+0C0h+var_A8], 0
jmp	short loc_1001B170
align 10h
			
mov	eax, [esp+0C0h+arg_C]
mov	ecx, [esp+0C0h+var_AC]
add	eax, eax
add	eax, eax
push	ebx
add	eax, eax
push	eax
mov	eax, [esp+0C8h+arg_0]
push	edi
push	eax
push	ecx
lea	edx, [esp+0D4h+var_5C]
lea	ecx, [esp+0D4h+var_7C]
call	sub_1001A570
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	loc_1001B5EE
mov	eax, [esp+0C0h+arg_0]
push	1
dec	eax
push	eax
lea	edx, [esp+0C8h+var_20]
push	edx
call	sub_10028B90
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001B5EE
lea	eax, [esp+0C0h+var_20]
push	eax
lea	ecx, [esp+0C4h+var_5C]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_1001B214
mov	edx, [esp+0C0h+arg_4]
mov	eax, [esp+0C0h+arg_0]
push	edx
push	eax
call	sub_10018EB0
push	eax
lea	ecx, [esp+0CCh+var_5C]
push	ecx
call	sub_100262E0
add	esp, 10h
mov	ebp, eax
neg	eax
sbb	eax, eax
mov	[esp+0C0h+var_94], eax
jz	short loc_1001B23B
mov	eax, [esp+0C0h+var_A8]
mov	edx, [esp+0C0h+var_8C]
inc	eax
lea	edi, [edi+edx+1]
mov	[esp+0C0h+var_A8], eax
cmp	eax, [esp+0C0h+var_90]
jbe	loc_1001B170
mov	edi, [esp+0C0h+arg_4]
jmp	loc_1001B080
mov	eax, [esp+0C0h+var_90]
cmp	[esp+0C0h+var_A8], eax
jbe	loc_1001B397
mov	edi, [esp+0C0h+arg_4]
jmp	loc_1001B080
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1001B5EE
mov	ecx, [ebx]
mov	[esp+0C0h+var_A0], ecx
mov	edx, [ebx+4]
mov	[esp+0C0h+Src],	edx
mov	eax, [ebx+8]
lea	ecx, [esp+0C0h+var_8C]
push	ecx
lea	edx, [esp+0C4h+var_6C]
push	edx
mov	edx, [esp+0C8h+var_AC]
mov	[esp+0C8h+Size], eax
lea	eax, [esp+0C8h+var_7C]
push	eax
lea	ecx, [esp+0CCh+var_A0]
push	ecx
push	edi
push	edx
mov	[esp+0D8h+var_8C], 0
call	sub_10019EE0
mov	esi, eax
add	esp, 18h
test	esi, esi
jnz	loc_1001B5EE
mov	edi, [esp+0C0h+var_AC]
mov	[esp+0C0h+var_A4], eax
lea	eax, [esp+0C0h+var_A4]
push	eax
lea	ecx, [esp+0C4h+var_88]
push	ecx
mov	ecx, [esp+0C8h+arg_0]
inc	ecx
lea	edx, [esp+0C8h+var_10]
push	edx
lea	eax, [esp+0CCh+var_6C]
shr	ecx, 1
push	eax
inc	ecx
push	ecx
push	edi
call	sub_10019EE0
mov	esi, eax
add	esp, 18h
test	esi, esi
jnz	loc_1001B5EE
lea	edx, [esp+0C0h+var_A4]
push	edx
lea	eax, [esp+0C4h+var_88]
push	eax
lea	ecx, [esp+0C8h+var_5C]
push	ecx
mov	ecx, [esp+0CCh+arg_0]
lea	edx, [esp+0CCh+var_7C]
push	edx
lea	eax, [esp+0D0h+var_10]
push	eax
push	ecx
push	edi
call	sub_10019790
mov	esi, eax
add	esp, 1Ch
test	esi, esi
jnz	loc_1001B5EE
mov	eax, [esp+0C0h+var_80]
add	eax, [esp+0C0h+var_64]
mov	edx, [esp+0C0h+var_B0]
add	eax, [esp+0C0h+Size]
push	eax
mov	[ebx+8], eax
mov	eax, [edx]
push	eax
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[ebx+4], eax
test	eax, eax
jz	loc_1001B5EE
mov	ecx, [esp+0C0h+Size]
mov	edx, [esp+0C0h+Src]
push	ecx		
push	edx		
push	eax		
call	memcpy
mov	eax, [esp+0CCh+var_80]
mov	edx, [ebx+4]
mov	ecx, [esp+0CCh+var_84]
add	edx, [esp+0CCh+Size]
push	eax		
push	ecx		
push	edx		
call	memcpy
mov	edx, [ebx+4]
mov	eax, [esp+0D8h+var_64]
add	edx, [esp+0D8h+var_80]
mov	ecx, [esp+0D8h+var_68]
add	edx, [esp+0D8h+Size]
push	eax		
push	ecx		
push	edx		
call	memcpy
add	esp, 24h
mov	[esp+0C0h+var_A8], esi
cmp	[esp+0C0h+arg_8], 0
jnz	loc_1001B47F
mov	eax, [esp+0C0h+arg_0]
shr	eax, 3
push	eax
lea	eax, [esp+0C4h+var_4C]
push	eax
push	0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
cmp	[esp+0C0h+var_48], 0
jz	loc_1001B5EE
lea	ebx, [ebx+0]
lea	ecx, [esp+0C0h+var_40]
push	ecx
lea	esi, [esp+0C4h+var_4C]
call	sub_10019170
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	loc_1001B5EE
lea	edx, [esp+0C0h+var_94]
push	edx
lea	eax, [esp+0C4h+var_30]
push	eax
lea	ecx, [esp+0C8h+var_7C]
push	ecx
lea	edi, [esp+0CCh+var_40]
lea	ebx, [esp+0CCh+var_5C]
call	sub_1001A9E0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1001B5EE
cmp	[esp+0C0h+var_94], 1
jnz	short loc_1001B3D0
mov	edx, edi
push	edx
call	sub_10029E60
add	esp, 4
test	eax, eax
jg	short loc_1001B43B
lea	ebp, [esi-3]
jmp	loc_1001B5EE
mov	ebx, [esp+0C0h+var_B0]
mov	ecx, [ebx]
push	eax
lea	eax, [ebx+14h]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [ebx+18h]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001B45E
lea	ebp, [eax-2]
jmp	loc_1001B5EE
mov	edx, [ebx+1Ch]
push	edx
push	eax
lea	eax, [esp+0C8h+var_40]
push	eax
call	sub_10029ED0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001B5EE
jmp	short loc_1001B4D5
mov	edi, [esp+0C0h+var_B0]
mov	ecx, [edi]
push	1
push	ecx
call	PORT_ArenaZAlloc_Util
add	esp, 8
mov	[edi+18h], eax
test	eax, eax
jz	loc_1001B5EE
mov	edx, edi
mov	dword ptr [edx+1Ch], 1
mov	edx, [esp+0C0h+var_AC]
mov	byte ptr [eax],	1
push	1
lea	eax, [esp+0C4h+var_7C]
push	eax
lea	ecx, [esp+0C8h+var_5C]
push	ecx
push	edx
lea	edx, [esp+0D0h+var_30]
mov	ecx, ebx
call	sub_1001AB80
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	loc_1001B5EE
mov	ebx, edi
lea	eax, [esp+0C0h+var_5C]
push	eax
call	sub_10029E60
add	esp, 4
test	eax, eax
jg	short loc_1001B4F0
mov	ebp, 0FFFFFFFDh
jmp	loc_1001B5EE
mov	edi, [esp+0C0h+var_60]
mov	edx, [edi]
push	eax
lea	ecx, [edi+4]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+8]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001B513
lea	ebp, [eax-2]
jmp	loc_1001B5EE
mov	ecx, [edi+0Ch]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_5C]
push	edx
call	sub_10029ED0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001B5EE
lea	eax, [esp+0C0h+var_7C]
push	eax
call	sub_10029E60
add	esp, 4
test	eax, eax
jg	short loc_1001B54A
mov	ebp, 0FFFFFFFDh
jmp	loc_1001B5EE
mov	edx, [edi]
push	eax
lea	ecx, [edi+10h]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+14h]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001B569
lea	ebp, [eax-2]
jmp	loc_1001B5EE
mov	ecx, [edi+18h]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_7C]
push	edx
call	sub_10029ED0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	short loc_1001B5EE
lea	eax, [esp+0C0h+var_30]
push	eax
call	sub_10029E60
add	esp, 4
test	eax, eax
jg	short loc_1001B59C
mov	ebp, 0FFFFFFFDh
jmp	short loc_1001B5EE
mov	edx, [edi]
push	eax
lea	ecx, [edi+1Ch]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+20h]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001B5B8
lea	ebp, [eax-2]
jmp	short loc_1001B5EE
mov	ecx, [edi+24h]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_30]
push	edx
call	sub_10029ED0
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	short loc_1001B5EE
mov	eax, [esp+0C0h+var_A8]
mov	ecx, [esp+0C0h+arg_10]
mov	edx, [esp+0C0h+arg_14]
mov	[ebx+4], eax
mov	[ecx], edi
xor	ebp, ebp
mov	[edx], ebx
			
mov	eax, [esp+0C0h+var_84]
test	eax, eax
jz	short loc_1001B5FF
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+0C0h+var_68]
test	eax, eax
jz	short loc_1001B610
push	eax
call	PORT_Free_Util
add	esp, 4
lea	eax, [esp+0C0h+var_5C]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C4h+var_7C]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C8h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0CCh+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D0h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0D4h+var_10]
push	edx
call	sub_10028EF0
add	esp, 18h
test	ebp, ebp
jz	short loc_1001B6B6
cmp	ebp, 0FFFFFFFCh
jz	short loc_1001B6A4
cmp	ebp, 0FFFFFFFDh
jz	short loc_1001B692
cmp	ebp, 0FFFFFFFEh
jz	short loc_1001B680
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001B6BA
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001B6BA
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001B6BA
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001B6BA
test	esi, esi
jz	short loc_1001B6D9
			
mov	eax, [esp+0C0h+var_60]
mov	ecx, [eax]
push	1
push	ecx
call	PORT_FreeArena_Util
mov	edx, [esp+0C8h+var_B0]
mov	eax, [edx]
push	1
push	eax
call	PORT_FreeArena_Util
add	esp, 10h
cmp	[esp+0C0h+var_48], 0
jz	short loc_1001B6EF
lea	ecx, [esp+0C0h+var_4C]
push	0
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 8
pop	ebp
pop	ebx
pop	edi
mov	eax, esi
pop	esi
add	esp, 0B0h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 0B0h
retn
align 10h
mov	eax, [esp+arg_0]
cmp	eax, 8
ja	short loc_1001B758
mov	edx, [esp+arg_4]
test	edx, edx
jz	short loc_1001B758
mov	ecx, [esp+arg_8]
test	ecx, ecx
jz	short loc_1001B758
push	ecx
add	eax, 8
shl	eax, 6
push	edx
mov	ecx, eax
shr	ecx, 3
push	ecx
push	0
push	0A0h
push	eax
call	sub_1001AE40
add	esp, 18h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
mov	edx, [esp+arg_0]
cmp	edx, 8
ja	short loc_1001B7A7
mov	ecx, [esp+arg_8]
test	ecx, ecx
jz	short loc_1001B7A7
mov	eax, [esp+arg_C]
test	eax, eax
jz	short loc_1001B7A7
push	eax
mov	eax, [esp+4+arg_4]
push	ecx
push	eax
push	0
add	edx, 8
shl	edx, 6
push	0A0h
push	edx
call	sub_1001AE40
add	esp, 18h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
mov	eax, [esp+arg_4]
push	edi
mov	edi, [esp+4+arg_0]
test	eax, eax
jnz	short loc_1001B80D
push	esi
xor	esi, esi
cmp	edi, 400h
jz	short loc_1001B805
cmp	edi, 800h
jz	short loc_1001B7FE
cmp	edi, 0C00h
jz	short loc_1001B7F7
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1001B80A
mov	esi, 100h
jmp	short loc_1001B80A
mov	esi, 0E0h
jmp	short loc_1001B80A
mov	esi, 0A0h
			
mov	eax, esi
pop	esi
mov	ecx, [esp+4+arg_8]
test	ecx, ecx
jnz	short loc_1001B81A
mov	ecx, eax
shr	ecx, 3
cmp	edi, 400h
jz	short loc_1001B847
cmp	edi, 800h
jz	short loc_1001B839
cmp	edi, 0C00h
jnz	short loc_1001B84E
cmp	eax, 100h
jmp	short loc_1001B84C
cmp	eax, 0E0h
jz	short loc_1001B860
cmp	eax, 100h
jmp	short loc_1001B84C
cmp	eax, 0A0h
			
jz	short loc_1001B860
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
retn
			
mov	edx, [esp+4+arg_10]
push	edx
mov	edx, [esp+8+arg_C]
push	edx
push	ecx
push	2
push	eax
push	edi
call	sub_1001AE40
add	esp, 18h
pop	edi
retn
align 10h
sub	esp, 0D0h
push	ebx
xor	ebx, ebx
push	esi
mov	esi, [esp+0D8h+arg_0]
push	edi
mov	[esp+0DCh+var_CC], ebx
mov	[esp+0DCh+var_84], ebx
mov	[esp+0DCh+var_80], ebx
mov	[esp+0DCh+var_7C], ebx
cmp	esi, ebx
jz	loc_1001C18E
mov	edi, [esp+0DCh+arg_4]
cmp	edi, ebx
jz	loc_1001C18E
cmp	[esp+0DCh+arg_8], ebx
jz	loc_1001C18E
cmp	[esi+0Ch], ebx
jz	loc_1001C18E
cmp	[esi+18h], ebx
jz	loc_1001C18E
cmp	[edi+10h], ebx
jz	loc_1001C18E
cmp	[esi+24h], ebx
jnz	short loc_1001B8F0
cmp	dword ptr [edi+4], 0FFFFFFFFh
jz	loc_1001C18E
lea	eax, [esp+0DCh+var_20]
push	ebp
push	eax
mov	[esp+0E4h+var_14], ebx
mov	[esp+0E4h+var_B4], ebx
mov	[esp+0E4h+var_9C], ebx
mov	[esp+0E4h+var_88], ebx
mov	[esp+0E4h+var_34], ebx
mov	[esp+0E4h+var_24], ebx
mov	[esp+0E4h+var_44], ebx
mov	[esp+0E4h+var_4], ebx
mov	[esp+0E4h+var_54], ebx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	ecx, [esp+0E0h+var_C0]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	edx, [esp+0E0h+var_A8]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	eax, [esp+0E0h+var_94]
push	eax
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	ecx, [esp+0E0h+var_40]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	edx, [esp+0E0h+var_30]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	eax, [esp+0E0h+var_50]
push	eax
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	ecx, [esp+0E0h+var_10]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
lea	edx, [esp+0E0h+var_60]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
cmp	ebp, ebx
jl	loc_1001C0BD
mov	eax, [esp+0E0h+arg_8]
mov	[eax], ebx
mov	ecx, [esi+0Ch]
mov	edx, [esi+8]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_C0]
push	eax
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, ebx
jl	loc_1001C0BD
mov	ecx, [esi+18h]
mov	edx, [esi+14h]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_A8]
push	eax
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, ebx
jl	loc_1001C0BD
mov	eax, [esi+24h]
cmp	eax, ebx
jz	short loc_1001BA72
mov	ecx, [esi+20h]
push	eax
push	ecx
lea	edx, [esp+0E8h+var_94]
push	edx
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
cmp	ebp, ebx
jl	loc_1001C0BD
lea	eax, [esp+0E0h+var_A8]
push	eax
call	sub_10028CE0
lea	ecx, [esp+0E4h+var_C0]
push	ecx
mov	[esp+0E8h+var_C8], eax
call	sub_10028CE0
mov	ebx, eax
add	esp, 8
mov	[esp+0E0h+var_B0], ebx
cmp	ebx, 400h
jnb	short loc_1001BAE5
cmp	[esp+0E0h+var_C8], 0A0h
jnz	loc_1001C0B0
lea	eax, [ebx-200h]
cmp	eax, 200h
ja	loc_1001BB8C
test	bl, 3Fh
jnz	loc_1001BB8C
lea	eax, [ebx-200h]
cdq
and	edx, 3Fh
add	eax, edx
sar	eax, 6
cmp	eax, 8
ja	loc_1001BB8C
mov	[esp+0E0h+var_D0], 1000h
jmp	short loc_1001BB03
mov	ecx, [esp+0E0h+var_C8]
mov	eax, ebx
call	sub_10018EE0
test	eax, eax
jnz	loc_1001C0B0
lea	eax, ds:0[ebx*4]
mov	[esp+0E0h+var_D0], eax
cmp	dword ptr [esi+24h], 0
jz	short loc_1001BB31
lea	ecx, [esp+0E0h+var_C0]
push	ecx
lea	edx, [esp+0E4h+var_94]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_1001BB31
			
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
			
lea	ecx, [esp+0E0h+var_10]
push	ecx
lea	edx, [esp+0E4h+var_A8]
push	edx
lea	eax, [esp+0E8h+var_C0]
push	eax
call	sub_1002C150
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001C0BD
lea	ecx, [esp+0E0h+var_10]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jnz	loc_1001C0B0
mov	esi, [esp+0E0h+var_C8]
push	esi
push	ebx
call	sub_10018EB0
push	eax
lea	eax, [esp+0ECh+var_A8]
push	eax
call	sub_100262E0
add	esp, 10h
test	eax, eax
jz	short loc_1001BB9E
			
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
push	esi
push	ebx
call	sub_10018EB0
push	eax
lea	edx, [esp+0ECh+var_C0]
push	edx
call	sub_100262E0
add	esp, 10h
test	eax, eax
jz	short loc_1001BBC9
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
mov	eax, [edi+4]
cmp	eax, 0FFFFFFFFh
jz	short loc_1001BBE9
cmp	eax, [esp+0E0h+var_D0]
jb	short loc_1001BBE9
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
			
mov	esi, [edi+10h]
add	esi, esi
add	esi, esi
add	esi, esi
cmp	esi, [esp+0E0h+var_C8]
jb	loc_1001C0B0
mov	eax, [esp+0E0h+var_D0]
shr	eax, 1
cmp	esi, eax
jnb	loc_1001C0B0
lea	edx, [esp+0E0h+var_D0]
push	edx
lea	ecx, [esp+0E4h+var_C4]
push	ecx
lea	edx, [esp+0E8h+var_AC]
push	edx
mov	edx, [esp+0ECh+var_C8]
lea	ecx, [esp+0ECh+var_A8]
push	ecx
lea	eax, [edi+8]
push	eax
mov	[esp+0F4h+var_98], eax
mov	eax, [esp+0F4h+var_B0]
push	edx
lea	ebx, [esp+0F8h+var_30]
mov	ecx, esi
call	sub_1001A280
add	esp, 18h
test	eax, eax
jz	short loc_1001BC56
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
lea	ecx, [esp+0E0h+var_30]
push	ecx
lea	edx, [esp+0E4h+var_A8]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001BC81
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
mov	eax, [esp+0E0h+var_D0]
mov	ebx, [esp+0E0h+var_C4]
cmp	eax, 2
jnz	loc_1001BDF1
mov	esi, [edi+10h]
mov	ecx, [esp+0E0h+var_AC]
xor	eax, eax
mov	[esp+0E0h+var_6C], eax
mov	[esp+0E0h+var_68], eax
mov	[esp+0E0h+var_64], eax
mov	[esp+0E0h+var_78], eax
mov	[esp+0E0h+var_74], eax
mov	[esp+0E0h+var_70], eax
mov	[esp+0E0h+var_C4], eax
mov	eax, 0AAAAAAABh
mul	esi
shr	edx, 1
cmp	ecx, esi
jb	short loc_1001BCD6
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
mov	esi, [esp+0E0h+var_C8]
lea	eax, ds:0[edx*8]
dec	esi
cmp	eax, esi
ja	short loc_1001BCF8
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
mov	eax, [edi+10h]
lea	esi, [edx+ecx]
cmp	esi, eax
jnb	loc_1001C0B0
mov	esi, [edi+0Ch]
mov	edi, esi
sub	edi, ecx
add	edi, eax
sub	eax, edx
sub	eax, ecx
mov	[esp+0E0h+var_64], ecx
mov	[esp+0E0h+var_70], eax
add	esi, edx
lea	eax, [esp+0E0h+var_C4]
push	eax
mov	[esp+0E4h+var_74], esi
mov	esi, [esp+0E4h+var_B0]
lea	ecx, [esp+0E4h+var_84]
push	ecx
lea	edx, [esp+0E8h+var_20]
push	edx
lea	ecx, [esi+1]
lea	eax, [esp+0ECh+var_6C]
shr	ecx, 1
push	eax
inc	ecx
push	ecx
push	ebx
mov	[esp+0F8h+var_68], edi
call	sub_10019EE0
add	esp, 18h
mov	[esp+0E0h+var_CC], eax
test	eax, eax
jnz	loc_1001C0BD
lea	edx, [esp+0E0h+var_C4]
push	edx
lea	eax, [esp+0E4h+var_84]
push	eax
lea	ecx, [esp+0E8h+var_40]
push	ecx
lea	edx, [esp+0ECh+var_30]
push	edx
lea	eax, [esp+0F0h+var_20]
push	eax
push	esi
push	ebx
call	sub_10019790
add	esp, 1Ch
mov	[esp+0E0h+var_CC], eax
test	eax, eax
jnz	loc_1001C0BD
lea	ecx, [esp+0E0h+var_40]
push	ecx
lea	edx, [esp+0E4h+var_C0]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001BDC5
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
lea	ecx, [esp+0E0h+var_84]
push	ecx
lea	edx, [esp+0E4h+var_78]
push	edx
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jz	loc_1001BE91
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFFh
jmp	loc_1001C0BD
cmp	dword ptr [edi+4], 0FFFFFFFFh
jnz	short loc_1001BE11
test	eax, eax
jnz	loc_1001BE98
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
push	ebx
call	sub_10008790
add	esp, 4
test	eax, eax
jz	short loc_1001BE20
mov	eax, [eax]
mov	ecx, [esp+0E0h+var_B0]
lea	edi, ds:0[eax*8]
xor	edx, edx
lea	eax, [ecx-1]
div	edi
mov	edi, [esp+0E0h+arg_4]
mov	edx, [esp+0E0h+var_D0]
inc	eax
imul	eax, [edi+4]
neg	edx
sbb	edx, edx
add	edx, 2
add	eax, edx
mov	edx, [esp+0E0h+var_98]
push	edx
push	esi
push	eax
push	ecx
push	ebx
lea	edx, [esp+0F4h+var_40]
lea	ecx, [esp+0F4h+var_A8]
call	sub_1001A570
add	esp, 14h
mov	[esp+0E0h+var_CC], eax
test	eax, eax
jnz	loc_1001C0BD
lea	eax, [esp+0E0h+var_40]
push	eax
lea	ecx, [esp+0E4h+var_C0]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001BE98
jmp	loc_1001C0B0
mov	edi, [esp+0E0h+arg_4]
			
mov	eax, [esp+0E0h+arg_0]
cmp	dword ptr [eax+24h], 0
jz	loc_1001C0BD
push	0
lea	ecx, [esp+0E4h+var_C0]
push	0
push	ecx
call	sub_10028B90
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001C0BD
lea	edx, [esp+0E0h+var_94]
push	2
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jle	loc_1001BB8C
lea	eax, [esp+0E0h+var_C0]
push	eax
lea	ecx, [esp+0E4h+var_94]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_1001BB8C
push	1
lea	edx, [esp+0E4h+var_C0]
push	0
push	edx
call	sub_10028B90
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001C0BD
lea	eax, [esp+0E0h+var_60]
push	eax
lea	ecx, [esp+0E4h+var_C0]
push	ecx
lea	edx, [esp+0E8h+var_A8]
push	edx
lea	eax, [esp+0ECh+var_94]
push	eax
call	sub_100288A0
mov	ebp, eax
add	esp, 10h
test	ebp, ebp
js	loc_1001C0BD
lea	ecx, [esp+0E0h+var_60]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jnz	loc_1001C0B0
mov	eax, [edi+1Ch]
test	eax, eax
jnz	short loc_1001BF76
cmp	[esp+0E0h+var_D0], eax
jz	loc_1001C0BD
mov	eax, [esp+0E0h+arg_8]
mov	dword ptr [eax], 0FFFFFFFEh
jmp	loc_1001C0BD
cmp	eax, 1
jnz	short loc_1001BFE2
cmp	[esp+0E0h+var_D0], 0
jz	short loc_1001BFE2
mov	ecx, [edi+18h]
movzx	edx, byte ptr [ecx]
push	edx
lea	eax, [esp+0E4h+var_A8]
push	eax
lea	ecx, [esp+0E8h+var_C0]
push	ecx
mov	ecx, [esp+0ECh+var_98]
push	ebx
lea	edx, [esp+0F0h+var_50]
call	sub_1001AB80
add	esp, 10h
mov	[esp+0E0h+var_CC], eax
test	eax, eax
jnz	loc_1001C0BD
lea	edx, [esp+0E0h+var_50]
push	edx
lea	eax, [esp+0E4h+var_94]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	loc_1001C0BD
mov	ecx, [esp+0E0h+arg_8]
mov	dword ptr [ecx], 0FFFFFFFFh
jmp	loc_1001C0BD
			
mov	edx, [edi+18h]
push	eax
push	edx
lea	eax, [esp+0E8h+var_60]
push	eax
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001C0BD
push	0
lea	ecx, [esp+0E4h+var_C0]
push	0
push	ecx
call	sub_10028B90
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	loc_1001C0BD
lea	edx, [esp+0E0h+var_94]
push	2
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jle	loc_1001BB1F
lea	eax, [esp+0E0h+var_C0]
push	eax
lea	ecx, [esp+0E4h+var_94]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	loc_1001BB1F
push	1
lea	edx, [esp+0E4h+var_C0]
push	0
push	edx
call	sub_10028B90
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	short loc_1001C0BD
lea	eax, [esp+0E0h+var_AC]
push	eax
lea	ecx, [esp+0E4h+var_50]
push	ecx
lea	edx, [esp+0E8h+var_A8]
push	edx
lea	edi, [esp+0ECh+var_60]
lea	ebx, [esp+0ECh+var_C0]
call	sub_1001A9E0
add	esp, 0Ch
mov	[esp+0E0h+var_CC], eax
test	eax, eax
jnz	short loc_1001C0BD
cmp	[esp+0E0h+var_AC], eax
jz	short loc_1001C0B0
lea	eax, [esp+0E0h+var_50]
push	eax
lea	ecx, [esp+0E4h+var_94]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001C0BD
			
mov	edx, [esp+0E0h+arg_8]
mov	dword ptr [edx], 0FFFFFFFFh
			
lea	eax, [esp+0E0h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0E4h+var_C0]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0E8h+var_A8]
push	edx
call	sub_10028EF0
lea	eax, [esp+0ECh+var_94]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0F0h+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0F4h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0F8h+var_50]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0FCh+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+100h+var_60]
push	edx
call	sub_10028EF0
add	esp, 24h
cmp	[esp+0E0h+var_80], 0
jz	short loc_1001C142
lea	eax, [esp+0E0h+var_84]
push	0
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
test	ebp, ebp
jz	short loc_1001C17F
cmp	ebp, 0FFFFFFFCh
jz	short loc_1001C16A
cmp	ebp, 0FFFFFFFDh
jz	short loc_1001C163
cmp	ebp, 0FFFFFFFEh
jz	short loc_1001C15C
push	0FFFFE001h
jmp	short loc_1001C16F
push	0FFFFE013h
jmp	short loc_1001C16F
push	0FFFFE002h
jmp	short loc_1001C16F
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0E0h+var_CC], 0FFFFFFFFh
mov	eax, [esp+0E0h+var_CC]
pop	ebp
pop	edi
pop	esi
pop	ebx
add	esp, 0D0h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0D0h
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1001C1F4
mov	eax, [esi]
push	0
test	eax, eax
jz	short loc_1001C1CC
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
retn
lea	eax, [esi+4]
push	eax
call	SECITEM_FreeItem_Util
lea	ecx, [esi+10h]
push	0
push	ecx
call	SECITEM_FreeItem_Util
lea	edx, [esi+1Ch]
push	0
push	edx
call	SECITEM_FreeItem_Util
push	esi
call	PORT_Free_Util
add	esp, 1Ch
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_1001C239
mov	eax, [esi]
push	0
test	eax, eax
jz	short loc_1001C21C
push	eax
call	PORT_FreeArena_Util
add	esp, 8
pop	esi
retn
lea	eax, [esi+8]
push	eax
call	SECITEM_FreeItem_Util
lea	ecx, [esi+14h]
push	0
push	ecx
call	SECITEM_FreeItem_Util
push	esi
call	PORT_Free_Util
add	esp, 14h
pop	esi
retn
align 10h
			
sub	esp, 30h
push	esi
push	edi
xor	edi, edi
lea	eax, [esp+38h+var_30]
push	eax
mov	[esp+3Ch+var_24], edi
mov	[esp+3Ch+var_14], edi
mov	[esp+3Ch+var_4], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001C2F7
lea	ecx, [esp+38h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	short loc_1001C2F7
lea	edx, [esp+38h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	short loc_1001C2F7
mov	ecx, [esp+38h+arg_0]
lea	eax, [ebx+ebx]
push	eax
push	ecx
lea	edx, [esp+40h+var_30]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001C2F7
mov	eax, [esp+38h+arg_4]
push	ebx
push	eax
lea	ecx, [esp+40h+var_20]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001C2F7
lea	edx, [esp+38h+var_10]
push	edx
lea	eax, [esp+3Ch+var_20]
push	eax
lea	ecx, [esp+40h+var_30]
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001C2F7
mov	edx, [esp+38h+Dst]
push	ebx		
push	edx		
lea	eax, [esp+40h+var_10]
push	eax		
call	sub_10029F70
add	esp, 0Ch
mov	esi, eax
			
lea	ecx, [esp+38h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+3Ch+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+40h+var_10]
push	eax
call	sub_10028EF0
add	esp, 0Ch
cmp	esi, edi
jz	short loc_1001C383
cmp	esi, 0FFFFFFFCh
jz	short loc_1001C36D
cmp	esi, 0FFFFFFFDh
jz	short loc_1001C357
cmp	esi, 0FFFFFFFEh
jz	short loc_1001C341
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 30h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 30h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 30h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 30h
retn
mov	eax, edi
pop	edi
pop	esi
add	esp, 30h
retn
align 10h
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	ebx
push	eax
push	ecx
push	edx
mov	ebx, 14h
call	sub_1001C240
add	esp, 0Ch
pop	ebx
retn
align 10h
			
push	0FFFFE898h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
align 10h
			
sub	esp, 0Ch
push	ebx
mov	ebx, [eax+8]
push	esi
mov	esi, [eax+4]
cmp	byte ptr [esi],	0
jnz	short loc_1001C3E2
inc	esi
dec	ebx
cmp	[esp+14h+arg_8], ebx
jnb	short loc_1001C3FE
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
lea	eax, [ebx+ebx]
push	eax
lea	ecx, [esp+18h+var_C]
push	ecx
push	0
mov	[esp+20h+var_8], 0
call	SECITEM_AllocItem_Util
add	esp, 0Ch
test	eax, eax
jz	short loc_1001C3F5
mov	eax, [esp+14h+var_4]
mov	ecx, [esp+14h+var_8]
mov	edx, [esp+14h+arg_4]
push	edi
push	eax
push	ecx
mov	[edx], ebx
call	sub_1000CD60
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1001C451
mov	edx, [esp+18h+arg_0]
mov	eax, [esp+18h+var_8]
push	edx
push	esi
push	eax
call	sub_1001C240
add	esp, 0Ch
mov	edi, eax
lea	ecx, [esp+18h+var_C]
push	0
push	ecx
call	SECITEM_FreeItem_Util
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
pop	ebx
add	esp, 0Ch
retn
align 10h
			
cmp	eax, 0FFFFFFFCh
jz	short loc_1001C4A9
cmp	eax, 0FFFFFFFDh
jz	short loc_1001C49B
cmp	eax, 0FFFFFFFEh
jz	short loc_1001C48D
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
retn
push	0FFFFE005h
call	PORT_SetError_Util
pop	ecx
retn
align 10h
			
sub	esp, 40h
push	ebp
mov	ebp, [esp+44h+arg_0]
push	esi
xor	esi, esi
cmp	ebp, esi
jz	loc_1001C760
cmp	[esp+48h+arg_8], esi
jz	loc_1001C760
mov	eax, [esp+48h+arg_4]
cmp	eax, esi
jz	loc_1001C760
cmp	[eax+4], esi
jz	loc_1001C760
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
cmp	ebx, esi
jnz	short loc_1001C51D
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
push	edi
push	40h
push	ebx
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
cmp	edi, esi
jnz	short loc_1001C54F
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	ebx
call	PORT_FreeArena_Util
add	esp, 0Ch
pop	edi
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
mov	[edi], ebx
lea	eax, [esp+50h+var_30]
push	eax
mov	[esp+54h+var_24], esi
mov	[esp+54h+var_14], esi
mov	[esp+54h+var_4], esi
mov	[esp+54h+var_34], esi
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001C704
lea	ecx, [esp+50h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001C704
lea	edx, [esp+50h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001C704
lea	eax, [esp+50h+var_40]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001C704
lea	ecx, [ebp+4]
push	ecx
lea	edx, [edi+4]
push	edx
push	ebx
call	SECITEM_CopyItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
lea	eax, [ebp+10h]
push	eax
lea	ecx, [edi+10h]
push	ecx
push	ebx
call	SECITEM_CopyItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
lea	edx, [ebp+1Ch]
push	edx
lea	eax, [edi+1Ch]
push	eax
push	ebx
call	SECITEM_CopyItem_Util
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
mov	ecx, [ebp+0Ch]
mov	edx, [ebp+8]
push	ecx
push	edx
lea	eax, [esp+58h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
mov	ecx, [ebp+24h]
mov	edx, [ebp+20h]
push	ecx
push	edx
lea	eax, [esp+58h+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
mov	ebp, [esp+50h+arg_4]
mov	ecx, [ebp+8]
mov	edx, [ebp+4]
push	ecx
push	edx
lea	eax, [esp+58h+var_10]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001C704
mov	ecx, [ebp+8]
push	ecx
lea	edx, [edi+34h]
push	edx
push	ebx
call	SECITEM_AllocItem_Util
mov	eax, [ebp+8]
mov	ecx, [ebp+4]
mov	edx, [edi+38h]
push	eax		
push	ecx		
push	edx		
call	memcpy
lea	eax, [esp+68h+var_40]
push	eax
lea	ecx, [esp+6Ch+var_30]
push	ecx
lea	edx, [esp+70h+var_10]
push	edx
lea	eax, [esp+74h+var_20]
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 28h
test	esi, esi
js	short loc_1001C704
lea	ecx, [esp+50h+var_40]
push	ecx
call	sub_10029E60
add	esp, 4
test	eax, eax
jg	short loc_1001C6C8
mov	esi, 0FFFFFFFDh
jmp	short loc_1001C704
push	eax
lea	edx, [edi+28h]
push	edx
push	ebx
call	SECITEM_AllocItem_Util
mov	eax, [edi+2Ch]
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001C6E2
lea	esi, [eax-2]
jmp	short loc_1001C704
mov	ecx, [edi+30h]
push	ecx
push	eax
lea	edx, [esp+58h+var_40]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001C704
mov	eax, [esp+50h+arg_8]
xor	esi, esi
mov	[eax], edi
xor	edi, edi
			
lea	ecx, [esp+50h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+54h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+58h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+5Ch+var_40]
push	ecx
call	sub_10028EF0
add	esp, 10h
test	edi, edi
jz	short loc_1001C740
mov	edx, [edi]
push	1
push	edx
call	PORT_FreeArena_Util
add	esp, 8
test	esi, esi
jz	short loc_1001C756
mov	eax, esi
call	sub_1001C470
pop	edi
pop	ebx
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 40h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 40h
retn
align 10h
			
			
push	ebx
mov	ebx, [esp+4+arg_4]
push	ebp
mov	ebp, 0Ah
test	ebx, ebx
jz	loc_1001C847
mov	ecx, [ebx+4]
test	ecx, ecx
jz	loc_1001C847
mov	eax, [ebx+8]
test	eax, eax
jz	loc_1001C847
cmp	byte ptr [ecx],	0
jnz	short loc_1001C7B7
cmp	eax, 1
jz	loc_1001C847
push	edi
mov	edi, [esp+0Ch+arg_8]
push	eax
mov	eax, [esp+10h+arg_0]
push	edi
push	eax
call	SECITEM_AllocItem_Util
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001C7D6
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
lea	esi, [edi+8]
lea	ebx, [ebx+0]
mov	ecx, [esi]
mov	edx, [edi+4]
push	ecx
push	esi
push	edx
mov	eax, ebx
call	sub_1001C3D0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1001C826
mov	ecx, [esi]
dec	ecx
jz	short loc_1001C80B
mov	edx, [edi+4]
mov	edi, edi
cmp	byte ptr [edx+eax], 0
jnz	short loc_1001C840
inc	eax
cmp	eax, ecx
jb	short loc_1001C800
mov	ecx, [edi+4]
cmp	byte ptr [eax+ecx], 1
ja	short loc_1001C840
dec	ebp
test	ebp, ebp
jg	short loc_1001C7E0
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
cmp	[esp+10h+arg_0], 0
jz	short loc_1001C838
push	0
push	edi
call	SECITEM_FreeItem_Util
add	esp, 8
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
			
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
push	ebx
call	sub_10019000
add	esp, 4
test	eax, eax
jnz	short loc_1001C8DD
push	esi
push	edi
mov	[esp+18h+var_8], eax
lea	eax, [esp+18h+var_C]
push	eax
lea	edi, [ebx+10h]
push	edi
push	0
call	sub_1001C780
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1001C8CA
push	edi
call	sub_10018FE0
add	esp, 4
cmp	[esp+18h+var_4], eax
jz	short loc_1001C8B5
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001C8CA
mov	ecx, [esp+18h+arg_4]
push	ecx
lea	edx, [esp+1Ch+var_C]
push	edx
push	ebx
call	sub_1001C4C0
add	esp, 0Ch
mov	esi, eax
			
lea	eax, [esp+18h+var_C]
push	0
push	eax
call	SECITEM_FreeItem_Util
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebx
add	esp, 0Ch
retn
align 10h
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_4]
push	esi
mov	esi, [esp+10h+arg_0]
lea	ecx, [esi+10h]
push	ecx
mov	[esp+14h+var_8], eax
call	sub_10018FE0
mov	edx, [esp+14h+arg_8]
mov	[esp+14h+var_4], eax
push	edx
lea	eax, [esp+18h+var_C]
push	eax
push	esi
call	sub_1001C4C0
add	esp, 10h
pop	esi
add	esp, 0Ch
retn
align 10h
			
sub	esp, 0A4h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A4h+var_4], eax
mov	eax, [esp+0A4h+arg_0]
push	ebp
push	esi
mov	esi, [esp+0ACh+arg_4]
push	edi
xor	ebp, ebp
mov	edi, edx
mov	[esp+0B0h+var_A0], eax
mov	[esp+0B0h+var_58], ecx
mov	[esp+0B0h+var_A4], ebp
cmp	edi, ebp
jz	loc_1001CD77
cmp	eax, ebp
jz	loc_1001CD77
cmp	esi, ebp
jz	loc_1001CD77
lea	edx, [edi+10h]
push	ebx
push	edx
call	sub_10018FE0
mov	ecx, [esp+0B8h+var_A0]
mov	ebx, eax
lea	eax, [ebx+ebx]
add	esp, 4
mov	[esp+0B4h+var_5C], eax
cmp	[ecx+8], eax
jb	loc_1001CD65
mov	eax, [esi+8]
cmp	eax, 40h
ja	loc_1001CD65
cmp	eax, 14h
jb	loc_1001CD65
push	ebx		
lea	edx, [esp+0B8h+Dst]
push	ebp		
push	edx		
call	memset
mov	ecx, [esi+8]
add	esp, 0Ch
cmp	ecx, ebx
jnb	short loc_1001C9D4
mov	eax, ebx
sub	eax, ecx
jmp	short loc_1001C9D6
xor	eax, eax
mov	edx, [esi+4]
mov	ecx, ebx
sub	ecx, eax
push	ecx		
push	edx		
lea	eax, [esp+eax+0BCh+Dst]
push	eax		
call	memcpy
lea	ecx, [esp+0C0h+var_34]
push	ecx
mov	[esp+0C4h+var_28], ebp
mov	[esp+0C4h+var_80], ebp
mov	[esp+0C4h+var_38], ebp
mov	[esp+0C4h+var_48], ebp
mov	[esp+0C4h+var_60], ebp
mov	[esp+0C4h+var_70], ebp
mov	[esp+0C4h+var_90], ebp
call	sub_1002A030
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	loc_1001CCAF
lea	edx, [esp+0B4h+var_8C]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
lea	eax, [esp+0B4h+var_44]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
lea	ecx, [esp+0B4h+var_54]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
lea	edx, [esp+0B4h+var_6C]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
lea	eax, [esp+0B4h+var_7C]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
lea	ecx, [esp+0B4h+var_9C]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1001CCAF
mov	edx, [edi+0Ch]
mov	eax, [edi+8]
push	edx
push	eax
lea	ecx, [esp+0BCh+var_34]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
mov	edx, [edi+18h]
mov	eax, [edi+14h]
push	edx
push	eax
lea	ecx, [esp+0BCh+var_8C]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
mov	edx, [edi+24h]
mov	eax, [edi+20h]
push	edx
push	eax
lea	ecx, [esp+0BCh+var_44]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
mov	edx, [edi+3Ch]
mov	eax, [edi+38h]
push	edx
push	eax
lea	ecx, [esp+0BCh+var_54]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
mov	edx, [esp+0B4h+var_58]
push	ebx
push	edx
lea	eax, [esp+0BCh+var_6C]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
lea	ecx, [esp+0B4h+var_7C]
push	ecx
lea	edx, [esp+0B8h+var_34]
push	edx
lea	eax, [esp+0BCh+var_6C]
push	eax
lea	ecx, [esp+0C0h+var_44]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	loc_1001CCAF
lea	edx, [esp+0B4h+var_7C]
push	edx
lea	eax, [esp+0B8h+var_8C]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
push	ebx
lea	edx, [esp+0B8h+Dst]
push	edx
lea	eax, [esp+0BCh+var_9C]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
lea	ecx, [esp+0B4h+var_6C]
push	ecx
lea	edx, [esp+0B8h+var_8C]
push	edx
mov	eax, ecx
push	eax
call	sub_1002CAC0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1001CCAF
lea	ecx, [esp+0B4h+var_54]
push	ecx
lea	edx, [esp+0B8h+var_8C]
push	edx
lea	eax, [esp+0BCh+var_7C]
push	eax
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	loc_1001CCAF
lea	edx, [esp+0B4h+var_9C]
push	edx
lea	eax, [esp+0B8h+var_8C]
push	eax
lea	ecx, [esp+0BCh+var_54]
push	ecx
push	edx
call	sub_1002C3B0
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	loc_1001CCAF
lea	eax, [esp+0B4h+var_9C]
push	eax
lea	ecx, [esp+0B8h+var_8C]
push	ecx
lea	edx, [esp+0BCh+var_6C]
push	edx
push	eax
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	short loc_1001CCAF
lea	ecx, [esp+0B4h+var_7C]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jz	short loc_1001CC9A
lea	edx, [esp+0B4h+var_9C]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jz	short loc_1001CC9A
mov	edi, [esp+0B4h+var_A0]
mov	eax, [edi+4]
push	ebx		
push	eax		
lea	ecx, [esp+0BCh+var_7C]
push	ecx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1001CCAF
mov	edx, [edi+4]
push	ebx		
add	edx, ebx
push	edx		
lea	eax, [esp+0BCh+var_9C]
push	eax		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1001CCAF
mov	ecx, [esp+0B4h+var_5C]
xor	esi, esi
mov	[edi+8], ecx
jmp	short loc_1001CCAF
			
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0B4h+var_A4], 0FFFFFFFFh
			
xor	eax, eax
lea	edx, [esp+0B4h+var_34]
push	edx
mov	[esp+0B8h+Dst],	eax
mov	[esp+0B8h+var_20], eax
mov	[esp+0B8h+var_1C], eax
mov	[esp+0B8h+var_18], eax
mov	[esp+0B8h+var_14], eax
mov	[esp+0B8h+var_10], eax
mov	[esp+0B8h+var_C], eax
mov	[esp+0B8h+var_8], eax
call	sub_10028EF0
lea	eax, [esp+0B8h+var_8C]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0BCh+var_44]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C0h+var_54]
push	edx
call	sub_10028EF0
lea	eax, [esp+0C4h+var_6C]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C8h+var_7C]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0CCh+var_9C]
push	edx
call	sub_10028EF0
add	esp, 1Ch
cmp	esi, ebp
jz	short loc_1001CD48
mov	eax, esi
call	sub_1001C470
mov	[esp+0B4h+var_A4], 0FFFFFFFFh
mov	eax, [esp+0B4h+var_A4]
pop	ebx
pop	edi
pop	esi
pop	ebp
mov	ecx, [esp+0A4h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A4h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001CD4C
			
push	0FFFFE005h
call	PORT_SetError_Util
mov	ecx, [esp+0B4h+var_4]
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 0A4h
retn
align 10h
sub	esp, 34h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+34h+var_4], eax
mov	eax, [esp+34h+arg_4]
mov	ecx, [esp+34h+arg_8]
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [esp+44h+arg_0]
lea	ebx, [edi+10h]
push	ebx
mov	[esp+48h+var_2C], eax
mov	[esp+48h+var_30], ecx
mov	ebp, 0Ah
mov	[esp+48h+var_34], 0
call	sub_10018FE0
push	0
mov	[esp+4Ch+var_28], eax
call	PORT_SetError_Util
add	esp, 8
lea	ebx, [ebx+0]
push	20h
lea	edx, [esp+48h+var_34]
push	edx
lea	eax, [esp+4Ch+var_24]
push	eax
mov	eax, ebx
call	sub_1001C3D0
add	esp, 0Ch
test	eax, eax
jnz	loc_1001CE94
mov	ecx, [esp+44h+var_34]
cmp	ecx, [esp+44h+var_28]
jnz	short loc_1001CE82
test	ecx, ecx
jz	short loc_1001CE2C
lea	esp, [esp+0]
cmp	[esp+eax+44h+var_24], 0
jnz	short loc_1001CE3E
inc	eax
cmp	eax, ecx
jb	short loc_1001CE20
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
jmp	short loc_1001CE5C
mov	ecx, [esp+44h+var_30]
mov	edx, [esp+44h+var_2C]
push	ecx
push	edx
lea	ecx, [esp+4Ch+var_24]
mov	edx, edi
call	sub_1001C930
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1001CE92
call	PORT_GetError_Util
cmp	eax, 0FFFFE03Fh
jnz	short loc_1001CE92
dec	ebp
test	ebp, ebp
jg	short loc_1001CDF0
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
mov	ecx, [esp+34h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	esi, 0FFFFFFFFh
			
mov	eax, esi
mov	ecx, [esp+44h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 34h
retn
align 10h
mov	eax, [esp+arg_8]
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
push	eax
push	ecx
mov	ecx, [esp+8+arg_C]
call	sub_1001C930
add	esp, 8
retn
align 10h
			
sub	esp, 0D0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0D0h+var_4], eax
mov	eax, [esp+0D0h+arg_8]
push	ebx
push	esi
mov	esi, [esp+0D8h+arg_4]
push	edi
mov	edi, [esp+0DCh+arg_0]
xor	ebx, ebx
mov	[esp+0DCh+var_B8], esi
mov	[esp+0DCh+var_CC], eax
mov	[esp+0DCh+var_D0], 0FFFFFFFFh
cmp	edi, ebx
jz	loc_1001D3E8
cmp	esi, ebx
jz	loc_1001D3E8
cmp	eax, ebx
jz	loc_1001D3E8
lea	eax, [edi+10h]
push	ebp
push	eax
call	sub_10018FE0
mov	ebp, eax
lea	ecx, [ebp+ebp+0]
add	esp, 4
cmp	[esi+8], ecx
jnz	loc_1001D3D6
mov	edx, [esp+0E0h+var_CC]
mov	esi, [edx+8]
cmp	esi, 40h
ja	loc_1001D3D6
cmp	esi, 14h
jb	loc_1001D3D6
push	ebp		
lea	eax, [esp+0E4h+Dst]
push	ebx		
push	eax		
call	memset
add	esp, 0Ch
cmp	esi, ebp
jnb	short loc_1001CF77
mov	eax, ebp
sub	eax, esi
jmp	short loc_1001CF79
xor	eax, eax
mov	edx, [esp+0E0h+var_CC]
mov	ecx, ebp
sub	ecx, eax
push	ecx		
mov	ecx, [edx+4]
push	ecx		
lea	edx, [esp+eax+0E8h+Dst]
push	edx		
call	memcpy
lea	eax, [esp+0ECh+var_64]
push	eax
mov	[esp+0F0h+var_58], ebx
mov	[esp+0F0h+var_BC], ebx
mov	[esp+0F0h+var_98], ebx
mov	[esp+0F0h+var_68], ebx
mov	[esp+0F0h+var_A8], ebx
mov	[esp+0F0h+var_48], ebx
mov	[esp+0F0h+var_88], ebx
mov	[esp+0F0h+var_28], ebx
mov	[esp+0F0h+var_78], ebx
mov	[esp+0F0h+var_38], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001D33E
lea	ecx, [esp+0E0h+var_C8]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	edx, [esp+0E0h+var_A4]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	eax, [esp+0E0h+var_74]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	ecx, [esp+0E0h+var_B4]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	edx, [esp+0E0h+var_54]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	eax, [esp+0E0h+var_94]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	ecx, [esp+0E0h+var_34]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	edx, [esp+0E0h+var_84]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
lea	eax, [esp+0E0h+var_44]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D33E
mov	ecx, [edi+0Ch]
mov	edx, [edi+8]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_64]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
mov	ecx, [edi+18h]
mov	edx, [edi+14h]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_C8]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
mov	ecx, [edi+24h]
mov	edx, [edi+20h]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_A4]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
mov	ecx, [edi+30h]
mov	edx, [edi+2Ch]
push	ecx
push	edx
lea	eax, [esp+0E8h+var_74]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
mov	edi, [esp+0E0h+var_B8]
mov	ecx, [edi+4]
push	ebp
push	ecx
lea	edx, [esp+0E8h+var_B4]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
mov	eax, [edi+4]
push	ebp
add	eax, ebp
push	eax
lea	ecx, [esp+0E8h+var_54]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
lea	edx, [esp+0E0h+var_B4]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_1001D331
lea	eax, [esp+0E0h+var_54]
push	eax
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_1001D331
lea	ecx, [esp+0E0h+var_C8]
push	ecx
lea	edx, [esp+0E4h+var_B4]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_1001D331
lea	eax, [esp+0E0h+var_C8]
push	eax
lea	ecx, [esp+0E4h+var_54]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_1001D331
lea	edx, [esp+0E0h+var_44]
push	edx
lea	eax, [esp+0E4h+var_C8]
push	eax
lea	ecx, [esp+0E8h+var_54]
push	ecx
call	sub_1002CAC0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
push	ebp
lea	edx, [esp+0E4h+Dst]
push	edx
lea	eax, [esp+0E8h+var_94]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D33E
lea	ecx, [esp+0E0h+var_94]
push	ecx
lea	edx, [esp+0E4h+var_C8]
push	edx
lea	eax, [esp+0E8h+var_44]
push	eax
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001D33E
lea	edx, [esp+0E0h+var_34]
push	edx
lea	eax, [esp+0E4h+var_C8]
push	eax
lea	ecx, [esp+0E8h+var_44]
push	ecx
lea	edx, [esp+0ECh+var_B4]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001D33E
lea	eax, [esp+0E0h+var_A4]
push	eax
lea	ecx, [esp+0E4h+var_64]
push	ecx
lea	edx, [esp+0E8h+var_94]
push	edx
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001D33E
lea	ecx, [esp+0E0h+var_74]
push	ecx
lea	edx, [esp+0E4h+var_64]
push	edx
lea	eax, [esp+0E8h+var_34]
push	eax
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	short loc_1001D33E
lea	edx, [esp+0E0h+var_84]
push	edx
lea	eax, [esp+0E4h+var_64]
push	eax
lea	ecx, [esp+0E8h+var_74]
push	ecx
lea	edx, [esp+0ECh+var_A4]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	short loc_1001D33E
lea	eax, [esp+0E0h+var_84]
push	eax
lea	ecx, [esp+0E4h+var_C8]
push	ecx
mov	edx, eax
push	edx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001D33E
lea	eax, [esp+0E0h+var_B4]
push	eax
lea	ecx, [esp+0E4h+var_84]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001D32B
push	0FFFFE00Ah
call	PORT_SetError_Util
mov	[esp+0E4h+var_D0], 0FFFFFFFFh
jmp	short loc_1001D33B
mov	[esp+0E0h+var_D0], ebx
jmp	short loc_1001D33E
			
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
			
lea	edx, [esp+0E0h+var_64]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E4h+var_C8]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0E8h+var_A4]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0ECh+var_74]
push	edx
call	sub_10028EF0
lea	eax, [esp+0F0h+var_B4]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0F4h+var_54]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0F8h+var_94]
push	edx
call	sub_10028EF0
lea	eax, [esp+0FCh+var_34]
push	eax
call	sub_10028EF0
lea	ecx, [esp+100h+var_84]
push	ecx
call	sub_10028EF0
lea	edx, [esp+104h+var_44]
push	edx
call	sub_10028EF0
add	esp, 28h
cmp	esi, ebx
jz	short loc_1001D3B9
mov	eax, esi
call	sub_1001C470
mov	eax, [esp+0E0h+var_D0]
pop	ebp
pop	edi
pop	esi
pop	ebx
mov	ecx, [esp+0D0h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0D0h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
jmp	short loc_1001D3BD
			
push	0FFFFE005h
call	PORT_SetError_Util
mov	ecx, [esp+0E0h+var_4]
add	esp, 4
pop	edi
pop	esi
pop	ebx
xor	ecx, esp
or	eax, 0FFFFFFFFh
call	@__security_check_cookie@4 
add	esp, 0D0h
retn
			
sub	esp, 54h
push	ebx
push	ebp
mov	ebp, [esp+5Ch+arg_C]
xor	ebx, ebx
lea	eax, [esp+5Ch+var_40]
push	esi
push	eax
mov	[esp+64h+var_54], ebx
mov	[esp+64h+var_34], ebx
mov	[esp+64h+var_24], ebx
mov	[esp+64h+var_14], ebx
mov	[esp+64h+var_4], ebx
mov	[esp+64h+var_44], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D8CC
lea	ecx, [esp+60h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D8CC
lea	edx, [esp+60h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D8CC
lea	eax, [esp+60h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D8CC
lea	ecx, [esp+60h+var_50]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001D8CC
mov	eax, [esp+60h+arg_4]
mov	ecx, [esp+60h+arg_0]
lea	edx, [esp+60h+var_40]
push	edx
push	eax
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	edx, [esp+60h+var_40]
push	edx
call	sub_10028CE0
add	esp, 4
cmp	eax, [esp+60h+arg_18]
jz	short loc_1001D4F5
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
mov	[esp+60h+var_54], 0FFFFFFFFh
jmp	loc_1001D8CC
mov	ecx, [esp+60h+arg_0]
lea	eax, [esp+60h+var_20]
push	eax
push	1
push	ecx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
mov	eax, [esp+60h+arg_4]
lea	edx, [esp+60h+var_10]
push	edx
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
cmp	ebp, ebx
jnz	short loc_1001D53F
cmp	[esp+60h+arg_14], ebx
jz	loc_1001D5C1
lea	ecx, [esp+60h+var_30]
push	ecx
lea	edx, [esp+64h+var_10]
push	edx
lea	eax, [esp+68h+var_20]
push	eax
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
cmp	ebp, ebx
jz	short loc_1001D57A
mov	ecx, [esp+60h+arg_8]
mov	ebp, [esp+60h+arg_10]
push	ecx
lea	edx, [esp+64h+var_30]
push	edx
push	ebp
call	sub_1002CAC0
jmp	short loc_1001D595
mov	eax, [esp+60h+arg_10]
mov	edx, [esp+60h+arg_8]
push	eax
lea	ecx, [esp+64h+var_30]
push	ecx
push	edx
call	sub_1002CAC0
mov	ebp, [esp+6Ch+arg_10]
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jz	short loc_1001D5C5
cmp	esi, 0FFFFFFFBh
jnz	loc_1001D8CC
push	0FFFFE03Fh
call	PORT_SetError_Util
add	esp, 4
mov	[esp+60h+var_54], 0FFFFFFFFh
jmp	loc_1001D8CA
mov	ebp, [esp+60h+arg_10]
lea	eax, [esp+60h+var_50]
push	eax
lea	ecx, [esp+64h+var_20]
push	ecx
push	ebp
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	edx, [esp+60h+var_50]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D5FD
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	ecx, [edi]
push	eax
lea	eax, [edi+4Ch]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+50h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D61E
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	edx, [edi+54h]
push	edx
push	eax
lea	eax, [esp+68h+var_50]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	ecx, [esp+60h+var_50]
push	ecx
lea	edx, [esp+64h+var_10]
push	edx
push	ebp
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	eax, [esp+60h+var_50]
push	eax
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D672
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	edx, [edi]
push	eax
lea	ecx, [edi+58h]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+5Ch]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D693
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	ecx, [edi+60h]
push	ecx
push	eax
lea	edx, [esp+68h+var_50]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
mov	ecx, [esp+60h+arg_0]
mov	edx, [esp+60h+arg_4]
lea	eax, [esp+60h+var_50]
push	eax
push	ecx
push	edx
call	sub_1002CAC0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	eax, [esp+60h+var_50]
push	eax
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D6EB
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	edx, [edi]
push	eax
lea	ecx, [edi+64h]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+68h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D70C
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	ecx, [edi+6Ch]
push	ecx
push	eax
lea	edx, [esp+68h+var_50]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
lea	eax, [esp+60h+var_40]
push	eax
mov	[edi+14h], ebx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D746
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	edx, [edi]
push	eax
lea	ecx, [edi+10h]
push	ecx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [edi+14h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D767
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	ecx, [edi+18h]
push	ecx
push	eax
lea	edx, [esp+68h+var_40]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
push	ebp
mov	[edi+2Ch], ebx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D79D
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	ecx, [edi]
push	eax
lea	eax, [edi+28h]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+2Ch]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D7BE
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	edx, [edi+30h]
push	edx
push	eax
push	ebp
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
mov	esi, [esp+60h+arg_8]
push	esi
mov	[edi+20h], ebx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D7F4
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	ecx, [edi]
push	eax
lea	eax, [edi+1Ch]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+20h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D815
mov	esi, 0FFFFFFFEh
jmp	loc_1001D8CC
mov	edx, [edi+24h]
push	edx
push	eax
push	esi
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001D8CC
mov	esi, [esp+60h+arg_0]
push	esi
mov	[edi+38h], ebx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D84B
mov	esi, 0FFFFFFFDh
jmp	loc_1001D8CC
mov	ecx, [edi]
push	eax
lea	eax, [edi+34h]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+38h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D869
mov	esi, 0FFFFFFFEh
jmp	short loc_1001D8CC
mov	edx, [edi+3Ch]
push	edx
push	eax
push	esi
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001D8CC
mov	esi, [esp+60h+arg_4]
push	esi
mov	[edi+44h], ebx
call	sub_10029E60
add	esp, 4
cmp	eax, ebx
jg	short loc_1001D898
mov	esi, 0FFFFFFFDh
jmp	short loc_1001D8CC
mov	ecx, [edi]
push	eax
lea	eax, [edi+40h]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [edi+44h]
add	esp, 0Ch
cmp	eax, ebx
jnz	short loc_1001D8B6
mov	esi, 0FFFFFFFEh
jmp	short loc_1001D8CC
mov	edx, [edi+48h]
push	edx
push	eax
push	esi
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001D8CC
xor	esi, esi
			
lea	eax, [esp+60h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+64h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+68h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+6Ch+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+70h+var_50]
push	ecx
call	sub_10028EF0
add	esp, 14h
cmp	esi, ebx
jz	short loc_1001D970
cmp	esi, 0FFFFFFFCh
jz	short loc_1001D959
cmp	esi, 0FFFFFFFDh
jz	short loc_1001D942
cmp	esi, 0FFFFFFFEh
jz	short loc_1001D92B
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 54h
retn
mov	eax, [esp+60h+var_54]
pop	esi
pop	ebp
pop	ebx
add	esp, 54h
retn
align 10h
			
sub	esp, 0Ch
push	ebp
push	esi
xor	ebp, ebp
push	edi
mov	[esp+18h+var_8], ebp
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1001D9AF
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
xor	eax, eax
pop	ebp
add	esp, 0Ch
retn
mov	[esp+14h+var_C], ebp
push	edi
push	esi
call	sub_1000CD60
add	esp, 8
mov	[esp+14h+var_4], eax
test	eax, eax
jnz	short loc_1001DA0B
or	byte ptr [esi],	0C0h
or	byte ptr [esi+edi-1], 1
push	edi
push	esi
push	ebx
call	sub_10029D30
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
js	short loc_1001DA0B
lea	eax, [esp+14h+var_8]
push	eax
push	0
lea	ecx, ds:0[edi*8]
push	ecx
push	ebx
call	sub_10026630
mov	ebp, eax
add	esp, 10h
cmp	ebp, 0FFFFFFFFh
jnz	short loc_1001DA0B
mov	eax, [esp+14h+var_C]
inc	eax
mov	[esp+14h+var_C], eax
cmp	eax, 0Ah
jl	short loc_1001D9B3
			
push	edi
push	esi
call	PORT_ZFree_Util
add	esp, 8
test	ebp, ebp
jz	short loc_1001DA80
cmp	ebp, 0FFFFFFFCh
jz	short loc_1001DA6A
cmp	ebp, 0FFFFFFFDh
jz	short loc_1001DA54
cmp	ebp, 0FFFFFFFEh
jz	short loc_1001DA3E
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 0Ch
retn
mov	eax, [esp+14h+var_4]
pop	esi
pop	ebp
add	esp, 0Ch
retn
align 10h
mov	ecx, [esp+arg_4]
sub	esp, 4Ch
push	ebp
push	esi
xor	esi, esi
cmp	ecx, esi
jz	loc_1001DD43
mov	ebp, [esp+54h+arg_0]
mov	eax, ebp
and	eax, 8000000Fh
jns	short loc_1001DAB5
dec	eax
or	eax, 0FFFFFFF0h
inc	eax
jnz	loc_1001DD43
mov	ecx, [ecx+8]
mov	eax, ebp
cdq
and	edx, 7
add	eax, edx
sar	eax, 3
cmp	ecx, eax
ja	loc_1001DD43
cmp	eax, 800h
jg	loc_1001DD43
cmp	ecx, 8
ja	loc_1001DD43
push	ebx
push	800h
call	PORT_NewArena_Util
mov	ebx, eax
add	esp, 4
mov	[esp+58h+var_44], ebx
cmp	ebx, esi
jnz	short loc_1001DB13
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 4Ch
retn
push	edi
push	70h
push	ebx
call	PORT_ArenaZAlloc_Util
mov	edi, eax
add	esp, 8
mov	[esp+5Ch+var_4C], edi
cmp	edi, esi
jnz	short loc_1001DB48
push	0FFFFE013h
call	PORT_SetError_Util
push	1
push	ebx
call	PORT_FreeArena_Util
add	esp, 0Ch
pop	edi
pop	ebx
pop	esi
xor	eax, eax
pop	ebp
add	esp, 4Ch
retn
mov	eax, ebp
cdq
and	edx, 0Fh
mov	[edi], ebx
add	eax, edx
lea	ecx, [esp+5Ch+var_40]
sar	eax, 4
push	ecx
mov	[esp+60h+var_48], eax
mov	[esp+60h+var_34], esi
mov	[esp+60h+var_24], esi
mov	[esp+60h+var_14], esi
mov	[esp+60h+var_4], esi
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001DCA4
lea	edx, [esp+5Ch+var_30]
push	edx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001DCA4
lea	eax, [esp+5Ch+var_20]
push	eax
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001DCA4
lea	ecx, [esp+5Ch+var_10]
push	ecx
call	sub_1002A030
mov	ebp, eax
add	esp, 4
test	ebp, ebp
js	loc_1001DCA4
push	1
lea	edx, [edi+4]
push	edx
push	ebx
call	SECITEM_AllocItem_Util
mov	eax, [edi+8]
mov	byte ptr [eax],	0
mov	eax, [esp+68h+arg_4]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+70h+var_20]
push	eax
call	sub_10029D30
mov	ebp, eax
add	esp, 18h
test	ebp, ebp
js	loc_1001DCA4
mov	[esp+5Ch+arg_4], esi
mov	edi, edi
push	0
call	PORT_SetError_Util
mov	edi, [esp+60h+var_48]
add	esp, 4
lea	ebx, [esp+5Ch+var_40]
call	sub_1001D980
mov	esi, eax
test	esi, esi
jnz	short loc_1001DC9C
lea	ebx, [esp+5Ch+var_30]
call	sub_1001D980
mov	esi, eax
test	esi, esi
jnz	short loc_1001DC9C
mov	ecx, ebx
push	ecx
lea	edx, [esp+60h+var_40]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	short loc_1001DC50
mov	eax, ebx
push	eax
lea	ecx, [esp+60h+var_40]
push	ecx
call	sub_1002A050
add	esp, 8
mov	edx, [esp+5Ch+arg_0]
mov	edi, [esp+5Ch+var_4C]
push	edx
push	1
lea	eax, [esp+64h+var_10]
push	eax
push	0
lea	ecx, [esp+6Ch+var_20]
push	ecx
lea	edx, [esp+70h+var_30]
push	edx
lea	eax, [esp+74h+var_40]
push	eax
call	sub_1001D410
mov	esi, eax
add	esp, 1Ch
test	esi, esi
jz	short loc_1001DCA0
inc	[esp+5Ch+arg_4]
call	PORT_GetError_Util
cmp	eax, 0FFFFE03Fh
jnz	short loc_1001DCA0
cmp	[esp+5Ch+arg_4], 0Ah
jl	loc_1001DC00
jmp	short loc_1001DCA0
			
mov	edi, [esp+5Ch+var_4C]
			
mov	ebx, [esp+5Ch+var_44]
			
lea	ecx, [esp+5Ch+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+60h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+64h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+68h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 10h
test	ebp, ebp
jz	short loc_1001DD1E
cmp	ebp, 0FFFFFFFCh
jz	short loc_1001DD0F
cmp	ebp, 0FFFFFFFDh
jz	short loc_1001DD00
cmp	ebp, 0FFFFFFFEh
jz	short loc_1001DCF1
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1001DD22
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1001DD22
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1001DD22
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_1001DD22
test	esi, esi
jz	short loc_1001DD39
			
push	1
push	ebx
call	PORT_FreeArena_Util
mov	[esp+64h+var_4C], 0
mov	edi, [esp+64h+var_4C]
add	esp, 8
mov	eax, edi
pop	edi
pop	ebx
pop	esi
pop	ebp
add	esp, 4Ch
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
xor	eax, eax
pop	ebp
add	esp, 4Ch
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
push	2
push	esi
call	sub_10026250
add	esp, 8
test	eax, eax
jnz	short loc_1001DD7F
push	2
push	esi
call	sub_100262E0
add	esp, 8
pop	esi
retn
align 10h
sub	esp, 74h
push	ebx
push	ebp
mov	ebp, [esp+7Ch+arg_8]
push	esi
mov	ebx, eax
push	edi
xor	edi, edi
lea	eax, [esp+84h+var_50]
push	eax
mov	[esp+88h+var_44], edi
mov	[esp+88h+var_24], edi
mov	[esp+88h+var_4], edi
mov	[esp+88h+var_64], edi
mov	[esp+88h+var_34], edi
mov	[esp+88h+var_14], edi
mov	[esp+88h+var_54], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_70]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_60]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001E290
push	ebx
call	sub_10028CE0
add	esp, 4
cmp	eax, 17h
jg	loc_1001E28B
mov	edx, [esp+84h+arg_0]
lea	ecx, [esp+84h+var_50]
push	ecx
push	edx
push	ebx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_50]
push	eax
mov	ecx, eax
push	1
push	ecx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_50]
push	edx
call	sub_10028CE0
mov	ecx, [esp+88h+arg_14]
sub	eax, ecx
dec	ecx
mov	[esp+88h+var_74], eax
push	ecx
lea	eax, [esp+8Ch+var_70]
push	eax
call	sub_1002A630
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
push	edi
lea	ecx, [esp+88h+var_70]
push	ecx
mov	edx, ecx
push	edx
lea	eax, [esp+90h+var_50]
push	eax
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_70]
push	ebx
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_1001DF2C
lea	edx, [esp+84h+var_70]
push	edx
push	1
push	ebx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
cmp	[esp+84h+arg_10], edi
jz	short loc_1001DF58
mov	ebx, [esp+84h+arg_C]
lea	eax, [esp+84h+var_20]
push	eax
push	1
push	ebx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
jmp	short loc_1001DFC2
mov	edx, [esp+84h+arg_4]
lea	ecx, [esp+84h+var_20]
push	ecx
push	1
push	edx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_40]
push	eax
lea	ecx, [esp+88h+var_50]
push	ecx
lea	edx, [esp+8Ch+var_20]
push	edx
mov	eax, ecx
push	eax
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_40]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	loc_1001E28B
push	ebp
call	sub_10028F40
mov	ebx, [esp+88h+arg_C]
add	esp, 4
cmp	esi, edi
jnz	loc_1001E262
lea	ebx, [ebx+0]
lea	edx, [esp+84h+var_70]
push	edx
call	sub_10028CE0
add	esp, 4
cmp	eax, [esp+84h+var_74]
jb	loc_1001E262
lea	eax, [esp+84h+var_40]
push	eax
lea	ecx, [esp+88h+var_30]
push	ecx
lea	edx, [esp+8Ch+var_70]
push	edx
lea	eax, [esp+90h+var_50]
push	eax
call	sub_1002BF60
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_40]
push	ecx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	loc_1001E204
cmp	[esp+84h+arg_10], edi
jnz	loc_1001E0D2
lea	edx, [esp+84h+var_30]
push	edx
call	sub_10028CE0
mov	ecx, [esp+88h+arg_14]
shr	ecx, 1
add	esp, 4
cmp	eax, ecx
jnz	loc_1001E204
lea	edx, [esp+84h+var_30]
push	2
push	edx
call	sub_100261C0
add	esp, 8
cmp	eax, 0FFFFFFFFh
jz	loc_1001E204
lea	eax, [esp+84h+var_20]
push	eax
lea	ecx, [esp+88h+var_30]
push	1
push	ecx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_20]
push	edx
call	sub_1001DD60
mov	esi, eax
add	esp, 4
cmp	esi, edi
jz	short loc_1001E0A4
cmp	esi, 0FFFFFFFFh
jnz	loc_1001E290
jmp	loc_1001E204
push	ebp
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	loc_1001E222
lea	eax, [esp+84h+var_20]
push	ebp
push	eax
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
jmp	loc_1001E204
lea	ecx, [esp+84h+var_30]
push	ecx
call	sub_10028CE0
add	esp, 4
cmp	eax, [esp+84h+arg_14]
jnz	loc_1001E204
lea	edx, [esp+84h+var_30]
push	4
push	edx
call	sub_100261C0
add	esp, 8
cmp	eax, 0FFFFFFFFh
jz	loc_1001E204
lea	eax, [esp+84h+var_10]
push	eax
lea	ecx, [esp+88h+var_30]
push	ecx
lea	edx, [esp+8Ch+var_20]
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_10]
push	eax
mov	ecx, eax
push	ecx
call	sub_1002B6B0
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_60]
push	edx
lea	eax, [esp+88h+var_10]
push	eax
call	sub_1002A440
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_40]
push	ecx
lea	edx, [esp+88h+var_60]
push	ebx
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_60]
push	eax
lea	ecx, [esp+88h+var_40]
push	ecx
call	sub_1002C1F0
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
lea	edx, [esp+84h+var_60]
push	ebp
push	edx
call	sub_1002A440
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_40]
push	ebp
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001E229
lea	ecx, [esp+84h+var_60]
push	ecx
mov	edx, ecx
push	1
push	edx
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001E290
lea	eax, [esp+84h+var_60]
push	ebp
push	eax
call	sub_1002A440
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1001E290
lea	ecx, [esp+84h+var_40]
push	ebp
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001E229
			
lea	edx, [esp+84h+var_70]
push	edx
mov	eax, edx
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jz	loc_1001DFD0
jmp	short loc_1001E262
mov	esi, 0FFFFFFFDh
jmp	short loc_1001E262
			
mov	ecx, [esp+84h+arg_4]
push	ecx
lea	edx, [esp+88h+var_60]
push	edx
lea	eax, [esp+8Ch+var_10]
push	eax
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001E290
push	ebp
lea	ecx, [esp+88h+var_60]
push	ecx
lea	edx, [esp+8Ch+var_10]
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001E290
			
lea	eax, [esp+84h+var_70]
push	eax
call	sub_10028CE0
add	esp, 4
cmp	eax, [esp+84h+var_74]
jnb	short loc_1001E290
cmp	[esp+84h+arg_10], edi
jnz	short loc_1001E28B
push	ebp
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_1001E290
			
mov	esi, 0FFFFFFFDh
			
lea	ecx, [esp+84h+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+88h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+8Ch+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+90h+var_70]
push	ecx
call	sub_10028EF0
lea	edx, [esp+94h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+98h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+9Ch+var_60]
push	ecx
call	sub_10028EF0
add	esp, 1Ch
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 74h
retn
align 10h
sub	esp, 78h
push	ebx
push	ebp
xor	ebx, ebx
mov	eax, 1
push	esi
mov	[esp+84h+var_70], eax
mov	[esp+84h+var_6C], eax
lea	eax, [esp+84h+var_60]
push	edi
push	eax
mov	[esp+8Ch+var_68], ebx
xor	ebp, ebp
mov	[esp+8Ch+var_78], ebx
mov	[esp+8Ch+var_74], 0FFFFFFFFh
mov	[esp+8Ch+var_54], ebx
mov	[esp+8Ch+var_44], ebx
mov	[esp+8Ch+var_34], ebx
mov	[esp+8Ch+var_24], ebx
mov	[esp+8Ch+var_14], ebx
mov	[esp+8Ch+var_4], ebx
call	sub_1002A030
mov	edi, [esp+8Ch+arg_0]
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
lea	ecx, [esp+88h+var_50]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
lea	edx, [esp+88h+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
lea	eax, [esp+88h+var_30]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
lea	ecx, [esp+88h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
lea	edx, [esp+88h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001E5CF
cmp	[edi], ebx
jnz	short loc_1001E3E3
push	800h
call	PORT_NewArena_Util
add	esp, 4
mov	[esp+88h+var_68], eax
cmp	eax, ebx
jz	loc_1001E5CF
mov	[edi], eax
mov	eax, [edi+20h]
cmp	eax, ebx
jz	short loc_1001E40A
mov	ecx, [edi+24h]
push	ecx
push	eax
lea	edx, [esp+90h+var_40]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001E5CF
mov	[esp+88h+var_70], ebx
mov	eax, [edi+2Ch]
cmp	eax, ebx
jz	loc_1001E4E1
mov	ecx, [edi+30h]
push	ecx
push	eax
lea	edx, [esp+90h+var_30]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001E5CF
mov	[esp+88h+var_6C], ebx
mov	ecx, [edi+38h]
cmp	ecx, ebx
jz	short loc_1001E46C
mov	edx, [edi+3Ch]
mov	eax, edx
cmp	[ecx], bl
jnz	short loc_1001E446
dec	eax
shl	eax, 4
push	edx
mov	ebp, eax
push	ecx
lea	eax, [esp+90h+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001E5CF
mov	[esp+88h+var_78], 1
mov	ecx, [edi+44h]
cmp	ecx, ebx
jz	short loc_1001E4A9
mov	edx, [edi+48h]
mov	eax, edx
cmp	[ecx], bl
jnz	short loc_1001E47D
dec	eax
shl	eax, 4
mov	ebp, eax
lea	eax, [esp+88h+var_50]
cmp	[esp+88h+var_78], ebx
jnz	short loc_1001E490
lea	eax, [esp+88h+var_60]
push	edx
push	ecx
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001E5CF
inc	[esp+88h+var_78]
mov	eax, [edi+14h]
cmp	eax, ebx
jz	short loc_1001E4F5
mov	ecx, [edi+18h]
mov	edx, ecx
cmp	[eax], bl
jnz	short loc_1001E4BA
dec	edx
push	ecx
push	eax
lea	ecx, [esp+90h+var_20]
push	ecx
lea	ebp, ds:0[edx*8]
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001E5CF
mov	eax, 1
jmp	short loc_1001E4F7
cmp	[esp+88h+var_70], ebx
jz	loc_1001E435
			
mov	esi, 0FFFFFFFCh
jmp	loc_1001E5CF
mov	eax, ebx
mov	ecx, [esp+88h+var_78]
cmp	ecx, 1
jnz	short loc_1001E53B
cmp	eax, ebx
jz	short loc_1001E540
lea	edx, [esp+88h+var_10]
push	edx
lea	eax, [esp+8Ch+var_50]
push	eax
lea	ecx, [esp+90h+var_60]
push	ecx
lea	edx, [esp+94h+var_20]
push	edx
call	sub_1002BF60
lea	eax, [esp+98h+var_10]
push	eax
call	sub_10028FB0
add	esp, 14h
test	eax, eax
jz	short loc_1001E57C
mov	esi, 0FFFFFFFCh
jmp	loc_1001E5CF
cmp	ecx, 2
jge	short loc_1001E57C
cmp	[esp+88h+var_70], ebx
jnz	short loc_1001E4EB
cmp	[esp+88h+var_6C], ebx
jnz	short loc_1001E4EB
cmp	ecx, ebx
jg	short loc_1001E554
cmp	eax, ebx
jz	short loc_1001E4EB
push	ebp
push	eax
lea	ecx, [esp+90h+var_20]
push	ecx
lea	edx, [esp+94h+var_50]
push	edx
lea	eax, [esp+98h+var_60]
push	eax
lea	ecx, [esp+9Ch+var_30]
push	ecx
lea	eax, [esp+0A0h+var_40]
call	sub_1001DD90
mov	esi, eax
add	esp, 18h
cmp	esi, ebx
jl	short loc_1001E5CF
			
lea	edx, [esp+88h+var_50]
push	edx
lea	eax, [esp+8Ch+var_60]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	short loc_1001E5A4
lea	ecx, [esp+88h+var_50]
push	ecx
lea	edx, [esp+8Ch+var_60]
push	edx
call	sub_1002A050
add	esp, 8
mov	eax, [esp+88h+var_6C]
mov	edx, [esp+88h+var_70]
push	ebp
push	eax
lea	ecx, [esp+90h+var_30]
push	ecx
push	edx
lea	eax, [esp+98h+var_40]
push	eax
lea	ecx, [esp+9Ch+var_50]
push	ecx
lea	edx, [esp+0A0h+var_60]
push	edx
call	sub_1001D410
add	esp, 1Ch
mov	[esp+88h+var_74], eax
			
lea	eax, [esp+88h+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+8Ch+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+90h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+94h+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+98h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+9Ch+var_10]
push	edx
call	sub_10028EF0
add	esp, 18h
cmp	esi, ebx
jz	short loc_1001E680
cmp	esi, 0FFFFFFFCh
jz	short loc_1001E669
cmp	esi, 0FFFFFFFDh
jz	short loc_1001E652
cmp	esi, 0FFFFFFFEh
jz	short loc_1001E63B
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+88h+var_74], 0FFFFFFFFh
jmp	short loc_1001E688
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+88h+var_74], 0FFFFFFFFh
jmp	short loc_1001E688
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+88h+var_74], 0FFFFFFFFh
jmp	short loc_1001E688
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+88h+var_74], 0FFFFFFFFh
jmp	short loc_1001E688
mov	eax, [esp+88h+var_74]
cmp	eax, ebx
jz	short loc_1001E6A1
			
mov	eax, [esp+88h+var_68]
cmp	eax, ebx
jz	short loc_1001E69D
push	1
push	eax
call	PORT_FreeArena_Util
add	esp, 8
mov	[edi], ebx
mov	eax, [esp+88h+var_74]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 78h
retn
align 10h
			
sub	esp, 44h
push	ebp
push	esi
mov	esi, [esp+4Ch+arg_0]
xor	ebp, ebp
mov	[esp+4Ch+var_44], ebp
cmp	esi, ebp
jz	loc_1001E92A
cmp	[esp+4Ch+Dst], ebp
jz	loc_1001E92A
cmp	[esp+4Ch+arg_8], ebp
jz	loc_1001E92A
lea	eax, [esp+4Ch+var_40]
push	edi
push	eax
mov	[esp+54h+var_34], ebp
mov	[esp+54h+var_24], ebp
mov	[esp+54h+var_14], ebp
mov	[esp+54h+var_4], ebp
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jl	loc_1001E8B7
lea	ecx, [esp+50h+var_30]
push	ecx
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jl	loc_1001E8B7
lea	edx, [esp+50h+var_20]
push	edx
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jl	loc_1001E8B7
lea	eax, [esp+50h+var_10]
push	eax
call	sub_1002A030
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jl	loc_1001E8B7
mov	ecx, [esi+8]
mov	eax, [esi+14h]
xor	edx, edx
cmp	[ecx], dl
push	ebx
mov	ebx, [esi+0Ch]
setz	dl
xor	ecx, ecx
sub	ebx, edx
cmp	[eax], cl
mov	eax, [esi+18h]
setz	cl
sub	eax, ecx
cmp	eax, ebx
ja	loc_1001E8A1
cmp	ebx, 800h
ja	loc_1001E8A1
cmp	eax, 8
ja	loc_1001E8A1
mov	edx, [esi+0Ch]
mov	eax, [esi+8]
push	edx
push	eax
lea	ecx, [esp+5Ch+var_40]
push	ecx
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebp
jl	loc_1001E8B6
mov	edx, [esi+18h]
mov	eax, [esi+14h]
push	edx
push	eax
lea	ecx, [esp+5Ch+var_30]
push	ecx
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
cmp	edi, ebp
jl	loc_1001E8B6
mov	edx, [esp+54h+var_28]
cmp	edx, [esp+54h+var_38]
ja	loc_1001E8A1
mov	esi, [esi+8]
mov	edx, [esp+54h+arg_8]
xor	ecx, ecx
cmp	[esi], cl
mov	ebp, ebx
setz	cl
add	ecx, esi
cmp	ebx, 4
jb	short loc_1001E7FB
mov	eax, [edx]
cmp	eax, [ecx]
jnz	short loc_1001E7FF
sub	ebp, 4
add	ecx, 4
add	edx, 4
cmp	ebp, 4
jnb	short loc_1001E7E7
test	ebp, ebp
jz	short loc_1001E842
movzx	eax, byte ptr [edx]
movzx	esi, byte ptr [ecx]
sub	eax, esi
jnz	short loc_1001E83A
cmp	ebp, 1
jbe	short loc_1001E842
movzx	eax, byte ptr [edx+1]
movzx	esi, byte ptr [ecx+1]
sub	eax, esi
jnz	short loc_1001E83A
cmp	ebp, 2
jbe	short loc_1001E842
movzx	eax, byte ptr [edx+2]
movzx	esi, byte ptr [ecx+2]
sub	eax, esi
jnz	short loc_1001E83A
cmp	ebp, 3
jbe	short loc_1001E842
movzx	eax, byte ptr [edx+3]
movzx	ecx, byte ptr [ecx+3]
sub	eax, ecx
			
sar	eax, 1Fh
or	eax, 1
jl	short loc_1001E849
			
push	0FFFFE004h
jmp	short loc_1001E8A6
mov	edx, [esp+54h+arg_8]
push	ebx
push	edx
lea	eax, [esp+5Ch+var_20]
push	eax
call	sub_10029D30
mov	edi, eax
add	esp, 0Ch
test	edi, edi
js	short loc_1001E8B6
lea	ecx, [esp+54h+var_10]
push	ecx
lea	edx, [esp+58h+var_40]
push	edx
lea	eax, [esp+5Ch+var_30]
push	eax
lea	ecx, [esp+60h+var_20]
push	ecx
call	sub_100288A0
mov	edi, eax
add	esp, 10h
test	edi, edi
js	short loc_1001E8B6
mov	edx, [esp+54h+Dst]
push	ebx		
push	edx		
lea	eax, [esp+5Ch+var_10]
push	eax		
call	sub_10029F70
mov	edi, eax
add	esp, 0Ch
test	edi, edi
js	short loc_1001E8B6
xor	edi, edi
jmp	short loc_1001E8B6
			
push	0FFFFE028h
call	PORT_SetError_Util
add	esp, 4
mov	[esp+54h+var_44], 0FFFFFFFFh
			
pop	ebx
			
lea	ecx, [esp+50h+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+54h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+58h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+5Ch+var_10]
push	ecx
call	sub_10028EF0
add	esp, 10h
test	edi, edi
jz	short loc_1001E91F
cmp	edi, 0FFFFFFFCh
jz	short loc_1001E90A
cmp	edi, 0FFFFFFFDh
jz	short loc_1001E903
cmp	edi, 0FFFFFFFEh
jz	short loc_1001E8FC
push	0FFFFE001h
jmp	short loc_1001E90F
push	0FFFFE013h
jmp	short loc_1001E90F
push	0FFFFE002h
jmp	short loc_1001E90F
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+50h+var_44], 0FFFFFFFFh
mov	eax, [esp+50h+var_44]
pop	edi
pop	esi
pop	ebp
add	esp, 44h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 44h
retn
sub	esp, 10h
push	ebx
lea	eax, [esp+14h+var_10]
push	esi
xor	ebx, ebx
push	eax
mov	[esp+1Ch+var_4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	short loc_1001E997
mov	ecx, [edi+30h]
mov	edx, [edi+2Ch]
push	ecx
push	edx
lea	eax, [esp+20h+var_10]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001E997
mov	ecx, [esp+18h+arg_0]
mov	edx, [esp+18h+arg_8]
push	ecx
mov	ecx, [esp+1Ch+arg_4]
push	edx
lea	eax, [esp+20h+var_10]
push	eax
push	ecx
call	sub_100288A0
add	esp, 10h
mov	esi, eax
			
lea	edx, [esp+18h+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
cmp	esi, ebx
jz	short loc_1001EA0F
cmp	esi, 0FFFFFFFCh
jz	short loc_1001E9F9
cmp	esi, 0FFFFFFFDh
jz	short loc_1001E9E3
cmp	esi, 0FFFFFFFEh
jz	short loc_1001E9CD
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 10h
retn
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 10h
retn
align 10h
			
sub	esp, 90h
push	ebx
push	ebp
mov	ebp, [esp+98h+arg_4]
push	esi
mov	ebx, eax
push	edi
xor	edi, edi
lea	eax, [esp+0A0h+var_90]
push	eax
mov	[esp+0A4h+var_84], edi
mov	[esp+0A4h+var_74], edi
mov	[esp+0A4h+var_14], edi
mov	[esp+0A4h+var_34], edi
mov	[esp+0A4h+var_24], edi
mov	[esp+0A4h+var_4], edi
mov	[esp+0A4h+var_44], edi
mov	[esp+0A4h+var_64], edi
mov	[esp+0A4h+var_54], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	ecx, [esp+0A0h+var_80]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	edx, [esp+0A0h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	eax, [esp+0A0h+var_40]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	ecx, [esp+0A0h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	edx, [esp+0A0h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	eax, [esp+0A0h+var_50]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	ecx, [esp+0A0h+var_70]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
lea	edx, [esp+0A0h+var_60]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_1001ECD1
mov	eax, [ebx+3Ch]
mov	ecx, [ebx+38h]
push	eax
push	ecx
lea	edx, [esp+0A8h+var_90]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
mov	eax, [ebx+48h]
mov	ecx, [ebx+44h]
push	eax
push	ecx
lea	edx, [esp+0A8h+var_80]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
mov	eax, [ebx+54h]
mov	ecx, [ebx+50h]
push	eax
push	ecx
lea	edx, [esp+0A8h+var_20]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
mov	eax, [ebx+60h]
mov	ecx, [ebx+5Ch]
push	eax
push	ecx
lea	edx, [esp+0A8h+var_40]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
mov	eax, [ebx+6Ch]
mov	ecx, [ebx+68h]
push	eax
push	ecx
lea	edx, [esp+0A8h+var_30]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
lea	eax, [esp+0A0h+var_60]
push	eax
lea	ecx, [esp+0A4h+var_90]
push	ecx
push	ebp
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
lea	edx, [esp+0A0h+var_10]
push	edx
lea	eax, [esp+0A4h+var_90]
push	eax
lea	ecx, [esp+0A8h+var_20]
push	ecx
lea	edx, [esp+0ACh+var_60]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_1001ECD1
lea	eax, [esp+0A0h+var_60]
push	eax
lea	ecx, [esp+0A4h+var_80]
push	ecx
push	ebp
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_1001ECD1
lea	edx, [esp+0A0h+var_50]
push	edx
lea	eax, [esp+0A4h+var_80]
push	eax
lea	ecx, [esp+0A8h+var_40]
push	ecx
lea	edx, [esp+0ACh+var_60]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_1001ECD1
lea	eax, [esp+0A0h+var_70]
push	eax
lea	ecx, [esp+0A4h+var_90]
push	ecx
lea	edx, [esp+0A8h+var_50]
push	edx
lea	eax, [esp+0ACh+var_10]
push	eax
call	sub_1002C400
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_1001ECD1
lea	ecx, [esp+0A0h+var_70]
push	ecx
lea	edx, [esp+0A4h+var_90]
push	edx
lea	eax, [esp+0A8h+var_30]
push	eax
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_1001ECD1
mov	ebx, [esp+0A0h+arg_0]
push	ebx
lea	edx, [esp+0A4h+var_80]
push	edx
lea	eax, [esp+0A8h+var_70]
push	eax
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_1001ECD1
push	ebx
lea	ecx, [esp+0A4h+var_50]
push	ecx
push	ebx
call	sub_1002A130
add	esp, 0Ch
mov	esi, eax
			
lea	edx, [esp+0A0h+var_90]
push	edx
call	sub_10028EF0
lea	eax, [esp+0A4h+var_80]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0A8h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0ACh+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+0B0h+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0B4h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0B8h+var_50]
push	edx
call	sub_10028EF0
lea	eax, [esp+0BCh+var_70]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C0h+var_60]
push	ecx
call	sub_10028EF0
add	esp, 24h
cmp	esi, edi
jz	short loc_1001EDB6
cmp	esi, 0FFFFFFFCh
jz	short loc_1001ED9B
cmp	esi, 0FFFFFFFDh
jz	short loc_1001ED80
cmp	esi, 0FFFFFFFEh
jz	short loc_1001ED65
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 90h
retn
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 90h
retn
align 10h
sub	esp, 30h
push	ebx
xor	ebx, ebx
lea	eax, [esp+34h+var_30]
push	esi
push	eax
mov	[esp+3Ch+var_24], ebx
mov	[esp+3Ch+var_14], ebx
mov	[esp+3Ch+var_4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001EEB3
lea	ecx, [esp+38h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001EEB3
lea	edx, [esp+38h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001EEB3
mov	eax, [esp+38h+arg_4]
mov	ecx, [esp+38h+arg_0]
push	eax
push	ecx
mov	eax, edi
call	sub_1001EA20
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_1001EEB3
mov	edx, [edi+18h]
mov	eax, [edi+14h]
push	edx
push	eax
lea	ecx, [esp+40h+var_30]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001EEB3
mov	edx, [edi+24h]
mov	eax, [edi+20h]
push	edx
push	eax
lea	ecx, [esp+40h+var_20]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001EEB3
lea	edx, [esp+38h+var_10]
push	edx
mov	edx, [esp+3Ch+arg_0]
lea	eax, [esp+3Ch+var_30]
push	eax
lea	ecx, [esp+40h+var_20]
push	ecx
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	short loc_1001EEB3
mov	eax, [esp+38h+arg_4]
push	eax
lea	ecx, [esp+3Ch+var_10]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001EEB3
or	ebx, 0FFFFFFFFh
			
lea	edx, [esp+38h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+3Ch+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+40h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 0Ch
test	esi, esi
jz	short loc_1001EF3F
cmp	esi, 0FFFFFFFCh
jz	short loc_1001EF29
cmp	esi, 0FFFFFFFDh
jz	short loc_1001EF13
cmp	esi, 0FFFFFFFEh
jz	short loc_1001EEFD
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 30h
retn
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 30h
retn
align 10h
call	ds:PR_NewLock
mov	dword_1004B730,	eax
test	eax, eax
jnz	short loc_1001EF70
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
push	eax
call	ds:PR_NewCondVar
add	esp, 4
mov	dword_1004B734,	eax
test	eax, eax
jz	short loc_1001EF5F
mov	eax, offset dword_1004B73C
mov	dword_1004B73C,	eax
mov	dword_1004B740,	eax
mov	dword_1004B738,	0
xor	eax, eax
retn
align 10h
sub	esp, 24h
push	ebp
mov	ebp, [esp+28h+arg_C]
push	esi
push	edi
mov	edi, eax
lea	eax, [esp+30h+var_10]
push	eax
mov	[esp+34h+var_24], 0
mov	[esp+34h+var_4], 0
mov	[esp+34h+var_14], 0
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001F0B9
lea	ecx, [esp+30h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1001F0B9
mov	edx, [edi+24h]
mov	eax, [edi+20h]
push	edx
push	eax
lea	ecx, [esp+38h+var_10]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1001F0B9
push	ebp
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_1001F032
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1001F0B9
push	ebp
push	edi
call	sub_1000CD60
add	esp, 8
mov	[esp+30h+var_24], eax
test	eax, eax
jnz	short loc_1001F0AF
push	ebp
lea	edx, [esp+34h+var_20]
push	edi
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001F0AF
mov	ecx, [esp+30h+arg_8]
lea	eax, [esp+30h+var_20]
push	eax
push	ecx
mov	edx, eax
push	edx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001F0AF
mov	eax, [esp+30h+arg_0]
mov	ecx, [esp+30h+arg_8]
push	eax
push	ecx
lea	edx, [esp+38h+var_10]
push	edx
lea	eax, [esp+3Ch+var_20]
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	short loc_1001F0AF
mov	ecx, [esp+30h+arg_4]
mov	edx, [esp+30h+arg_8]
push	ecx
push	edx
lea	eax, [esp+38h+var_20]
push	eax
call	sub_1002CAC0
add	esp, 0Ch
mov	esi, eax
			
push	ebp
push	edi
call	PORT_ZFree_Util
add	esp, 8
			
lea	ecx, [esp+30h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+34h+var_10]
push	edx
call	sub_10028EF0
add	esp, 8
test	esi, esi
jz	short loc_1001F13F
cmp	esi, 0FFFFFFFCh
jz	short loc_1001F128
cmp	esi, 0FFFFFFFDh
jz	short loc_1001F111
cmp	esi, 0FFFFFFFEh
jz	short loc_1001F0FA
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
add	esp, 24h
retn
mov	eax, [esp+30h+var_24]
pop	edi
pop	esi
pop	ebp
add	esp, 24h
retn
align 10h
sub	esp, 8
mov	eax, dword_1004B730
push	ebx
push	ebp
push	esi
xor	ebx, ebx
xor	esi, esi
push	edi
mov	[esp+18h+var_8], ebx
mov	[esp+18h+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	loc_1001F267
push	eax
call	ds:PR_Lock
mov	edi, dword_1004B73C
add	esp, 4
cmp	edi, offset dword_1004B73C
jz	short loc_1001F1B4
mov	ebp, [esp+18h+arg_0]
add	ebp, 10h
lea	eax, [edi+8]
push	ebp
push	eax
mov	esi, edi
call	SECITEM_CompareItem_Util
add	esp, 8
mov	[esp+18h+var_4], eax
cmp	eax, ebx
jge	short loc_1001F1B4
mov	edi, [edi]
cmp	edi, offset dword_1004B73C
jnz	short loc_1001F193
			
cmp	[esp+18h+var_4], ebx
jz	short loc_1001F224
push	33Ch
call	PORT_ZAlloc_Util
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jz	loc_1001F27F
lea	ebp, [esi+1Ch]
mov	eax, ebp
mov	[esi], esi
mov	[esi+4], esi
mov	edx, 14h
dec	edx
lea	ecx, [eax+28h]
mov	[eax], ecx
mov	[eax+10h], ebx
mov	[eax+20h], ebx
mov	[eax+24h], ebx
mov	eax, ecx
jnz	short loc_1001F1E0
mov	ecx, [esp+18h+arg_0]
add	ecx, 10h
push	ecx
lea	edx, [esi+8]
push	edx
push	ebx
mov	[esi+314h], ebx
mov	[esi+18h], ebx
mov	[esi+14h], ebp
call	SECITEM_CopyItem_Util
mov	[esi], edi
mov	eax, [edi+4]
mov	[esi+4], eax
mov	ecx, [edi+4]
mov	[ecx], esi
add	esp, 0Ch
mov	[edi+4], esi
mov	edi, [esi+18h]
cmp	edi, ebx
jnz	short loc_1001F291
mov	edi, [esi+14h]
cmp	edi, ebx
jnz	loc_1001F34E
mov	edx, dword_1004B734
inc	dword_1004B738
push	0FFFFFFFFh
push	edx
call	ds:PR_WaitCondVar
mov	eax, dword_1004B730
push	eax
call	ds:PR_Unlock
mov	eax, dword_1004B730
add	esp, 0Ch
cmp	eax, ebx
jnz	loc_1001F174
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1001F40E
dec	dword ptr [edi+24h]
cmp	[edi+24h], ebx
jle	short loc_1001F2D8
mov	ecx, [esp+18h+arg_C]
push	ecx
lea	edx, [edi+4]
push	edx
call	sub_10028E00
add	esp, 8
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jl	loc_1001F40E
mov	eax, [esp+18h+arg_10]
push	eax
add	edi, 14h
push	edi
call	sub_10028E00
add	esp, 8
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jl	loc_1001F40E
jmp	loc_1001F4D0
mov	edx, [esp+18h+arg_C]
push	edx
lea	ebp, [edi+4]
push	ebp
call	sub_1002A050
mov	ecx, [esp+20h+arg_10]
lea	eax, [edi+14h]
push	ecx
push	eax
call	sub_1002A050
push	ebp
call	sub_10028EF0
lea	eax, [edi+14h]
push	eax
call	sub_10028EF0
mov	edx, [edi]
mov	[edi+24h], ebx
mov	eax, [esi+14h]
mov	[esi+18h], edx
mov	[edi], eax
add	esp, 18h
mov	[esi+14h], edi
cmp	dword_1004B738,	ebx
jle	short loc_1001F334
mov	ecx, dword_1004B734
push	ecx
call	ds:PR_NotifyCondVar
add	esp, 4
dec	dword_1004B738
mov	edx, dword_1004B730
push	edx
call	ds:PR_Unlock
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
mov	eax, [edi]
mov	[esi+14h], eax
mov	[edi], ebx
mov	ecx, dword_1004B730
push	ecx
call	ds:PR_Unlock
mov	edx, [esp+1Ch+arg_8]
mov	eax, [esp+1Ch+arg_4]
mov	ecx, [esp+1Ch+arg_10]
push	edx
mov	edx, [esp+20h+arg_C]
push	eax
mov	eax, [esp+24h+arg_0]
push	ecx
push	edx
call	sub_1001EFA0
add	esp, 14h
test	eax, eax
jnz	short loc_1001F3E1
lea	eax, [edi+4]
push	eax
call	sub_1002A030
add	esp, 4
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jl	short loc_1001F3E1
lea	ebp, [edi+14h]
push	ebp
call	sub_1002A030
add	esp, 4
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jl	short loc_1001F3E1
lea	eax, [edi+4]
push	eax
mov	eax, [esp+1Ch+arg_C]
push	eax
call	sub_10028E00
add	esp, 8
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jl	short loc_1001F3E1
mov	ecx, [esp+18h+arg_10]
push	ebp
push	ecx
call	sub_10028E00
add	esp, 8
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jge	loc_1001F494
			
mov	edx, dword_1004B730
push	edx
call	ds:PR_Lock
lea	eax, [edi+4]
push	eax
call	sub_10028EF0
lea	ecx, [edi+14h]
push	ecx
call	sub_10028EF0
mov	[edi+24h], ebx
mov	edx, [esi+14h]
mov	[edi], edx
add	esp, 0Ch
mov	[esi+14h], edi
			
mov	eax, dword_1004B730
push	eax
call	ds:PR_Unlock
mov	eax, [esp+1Ch+var_8]
add	esp, 4
cmp	eax, ebx
jz	short loc_1001F489
cmp	eax, 0FFFFFFFCh
jz	short loc_1001F47C
cmp	eax, 0FFFFFFFDh
jz	short loc_1001F464
cmp	eax, 0FFFFFFFEh
jz	short loc_1001F44C
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
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
mov	ecx, dword_1004B730
push	ecx
call	ds:PR_Lock
mov	dword ptr [edi+24h], 32h
mov	edx, [esi+18h]
mov	[edi], edx
add	esp, 4
mov	[esi+18h], edi
cmp	dword_1004B738,	ebx
jle	short loc_1001F4D0
mov	eax, dword_1004B734
push	eax
call	ds:PR_NotifyAllCondVar
add	esp, 4
mov	dword_1004B738,	ebx
			
mov	ecx, dword_1004B730
push	ecx
call	ds:PR_Unlock
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
align 10h
			
mov	edx, [esp+arg_4]
sub	esp, 54h
push	edi
mov	edi, eax
test	edi, edi
jz	loc_1001F81C
cmp	[esp+58h+Dst], 0
jz	loc_1001F81C
test	edx, edx
jz	loc_1001F81C
mov	eax, [edi+14h]
xor	ecx, ecx
cmp	[eax], cl
push	ebx
setz	cl
push	ebp
mov	ebp, [edi+18h]
push	esi
sub	ebp, ecx
xor	ecx, ecx
cmp	[eax], cl
mov	esi, ebp
setz	cl
add	ecx, eax
cmp	ebp, 4
jb	short loc_1001F54B
mov	eax, [edx]
cmp	eax, [ecx]
jnz	short loc_1001F54F
sub	esi, 4
add	ecx, 4
add	edx, 4
cmp	esi, 4
jnb	short loc_1001F537
test	esi, esi
jz	short loc_1001F596
movzx	eax, byte ptr [edx]
movzx	ebx, byte ptr [ecx]
sub	eax, ebx
jnz	short loc_1001F58A
cmp	esi, 1
jbe	short loc_1001F596
movzx	eax, byte ptr [edx+1]
movzx	ebx, byte ptr [ecx+1]
sub	eax, ebx
jnz	short loc_1001F58A
cmp	esi, 2
jbe	short loc_1001F596
movzx	eax, byte ptr [edx+2]
movzx	ebx, byte ptr [ecx+2]
sub	eax, ebx
jnz	short loc_1001F58A
cmp	esi, 3
jbe	short loc_1001F596
movzx	eax, byte ptr [edx+3]
movzx	ecx, byte ptr [ecx+3]
sub	eax, ecx
			
sar	eax, 1Fh
or	eax, 1
xor	ebx, ebx
cmp	eax, ebx
jl	short loc_1001F5AE
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
pop	ebx
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 54h
retn
lea	edx, [esp+64h+var_30]
push	edx
mov	[esp+68h+var_24], ebx
mov	[esp+68h+var_44], ebx
mov	[esp+68h+var_34], ebx
mov	[esp+68h+var_14], ebx
mov	[esp+68h+var_4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001F76C
lea	eax, [esp+64h+var_50]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001F76C
lea	ecx, [esp+64h+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001F76C
lea	edx, [esp+64h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001F76C
lea	eax, [esp+64h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001F76C
mov	ecx, [edi+18h]
mov	edx, [edi+14h]
push	ecx
push	edx
lea	eax, [esp+6Ch+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001F76C
mov	ecx, [esp+64h+arg_4]
push	ebp
push	ecx
lea	edx, [esp+6Ch+var_50]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001F76C
cmp	dword_100490EC,	ebx
jz	short loc_1001F6BE
lea	eax, [esp+64h+var_10]
push	eax
lea	ecx, [esp+68h+var_20]
push	ecx
push	ebp
lea	edx, [esp+70h+var_30]
push	edx
push	edi
call	sub_1001F150
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
jnz	loc_1001F76C
lea	eax, [esp+64h+var_50]
push	eax
lea	ecx, [esp+68h+var_30]
push	ecx
lea	edx, [esp+6Ch+var_20]
push	edx
push	eax
call	sub_1002C450
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_1001F76C
cmp	[edi+3Ch], ebx
jz	short loc_1001F70D
cmp	[edi+48h], ebx
jz	short loc_1001F70D
cmp	[edi+54h], ebx
jz	short loc_1001F70D
cmp	[edi+60h], ebx
jz	short loc_1001F70D
cmp	[edi+6Ch], ebx
jz	short loc_1001F70D
cmp	[esp+64h+arg_8], ebx
jz	short loc_1001F6F1
lea	ecx, [esp+64h+var_50]
push	ecx
lea	edx, [esp+68h+var_40]
push	edx
call	sub_1001EDD0
add	esp, 8
jmp	short loc_1001F724
lea	eax, [esp+64h+var_50]
push	eax
lea	ecx, [esp+68h+var_40]
push	ecx
mov	eax, edi
call	sub_1001EA20
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jz	short loc_1001F72A
jmp	short loc_1001F76C
			
lea	edx, [esp+64h+var_30]
push	edx
lea	eax, [esp+68h+var_50]
push	eax
lea	ecx, [esp+6Ch+var_40]
push	ecx
call	sub_1001E940
add	esp, 0Ch
mov	ebx, eax
test	ebx, ebx
jnz	short loc_1001F76C
cmp	dword_100490EC,	0
jz	short loc_1001F751
lea	edx, [esp+64h+var_40]
push	edx
lea	eax, [esp+68h+var_30]
push	eax
lea	ecx, [esp+6Ch+var_10]
push	ecx
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
test	esi, esi
js	short loc_1001F76C
mov	eax, [esp+64h+Dst]
push	ebp		
push	eax		
lea	ecx, [esp+6Ch+var_40]
push	ecx		
call	sub_10029F70
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1001F76C
xor	esi, esi
			
lea	edx, [esp+64h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+68h+var_50]
push	eax
call	sub_10028EF0
lea	ecx, [esp+6Ch+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+70h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+74h+var_10]
push	eax
call	sub_10028EF0
add	esp, 14h
test	esi, esi
jz	short loc_1001F812
cmp	esi, 0FFFFFFFCh
jz	short loc_1001F802
cmp	esi, 0FFFFFFFDh
jz	short loc_1001F7E8
cmp	esi, 0FFFFFFFEh
jz	short loc_1001F7CE
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	ebx, 0FFFFFFFFh
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 54h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	ebx, 0FFFFFFFFh
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 54h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
or	ebx, 0FFFFFFFFh
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 54h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	ebx, 0FFFFFFFFh
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 54h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	edi
add	esp, 54h
retn
align 10h
			
			
mov	eax, [esp+arg_8]
mov	ecx, [esp+Dst]
push	0		
push	eax		
mov	eax, [esp+8+arg_0]
push	ecx		
call	sub_1001F4F0
add	esp, 0Ch
retn
align 10h
			
mov	eax, [esp+arg_8]
mov	ecx, [esp+Dst]
push	1		
push	eax		
mov	eax, [esp+8+arg_0]
push	ecx		
call	sub_1001F4F0
add	esp, 0Ch
retn
align 10h
sub	esp, 0B0h
push	ebx
xor	ebx, ebx
push	ebp
lea	eax, [esp+0B8h+var_80]
push	esi
push	eax
xor	ebp, ebp
mov	[esp+0C0h+var_74], ebx
mov	[esp+0C0h+var_94], ebx
mov	[esp+0C0h+var_14], ebx
mov	[esp+0C0h+var_54], ebx
mov	[esp+0C0h+var_44], ebx
mov	[esp+0C0h+var_84], ebx
mov	[esp+0C0h+var_64], ebx
mov	[esp+0C0h+var_34], ebx
mov	[esp+0C0h+var_24], ebx
mov	[esp+0C0h+var_4], ebx
mov	[esp+0C0h+var_A4], ebx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	ecx, [esp+0BCh+var_A0]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	edx, [esp+0BCh+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	eax, [esp+0BCh+var_60]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	ecx, [esp+0BCh+var_50]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	edx, [esp+0BCh+var_90]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	eax, [esp+0BCh+var_70]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	ecx, [esp+0BCh+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	edx, [esp+0BCh+var_30]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	eax, [esp+0BCh+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
lea	ecx, [esp+0BCh+var_B0]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebx
jl	loc_1001FD71
push	edi
mov	edi, [esp+0C0h+arg_0]
mov	eax, [edi+14h]
cmp	eax, ebx
jz	loc_1001FD6B
cmp	[edi+38h], ebx
jz	loc_1001FD6B
cmp	[edi+44h], ebx
jz	loc_1001FD6B
cmp	[edi+20h], ebx
jz	loc_1001FD6B
cmp	[edi+2Ch], ebx
jz	loc_1001FD6B
cmp	[edi+50h], ebx
jz	loc_1001FD6B
cmp	[edi+5Ch], ebx
jz	loc_1001FD6B
cmp	[edi+68h], ebx
jz	loc_1001FD6B
mov	edx, [edi+18h]
push	edx
push	eax
lea	eax, [esp+0C8h+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+3Ch]
mov	edx, [edi+38h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_80]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+48h]
mov	edx, [edi+44h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_A0]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+24h]
mov	edx, [edi+20h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_90]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+30h]
mov	edx, [edi+2Ch]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_70]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+54h]
mov	edx, [edi+50h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_40]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+60h]
mov	edx, [edi+5Ch]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
mov	ecx, [edi+6Ch]
mov	edx, [edi+68h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_10]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	ecx, [esp+0C0h+var_A0]
push	ecx
lea	edx, [esp+0C4h+var_80]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jg	short loc_1001FB3C
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	eax, [esp+0C0h+var_B0]
push	eax
lea	ecx, [esp+0C4h+var_A0]
push	ecx
lea	edx, [esp+0C8h+var_80]
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	eax, [esp+0C0h+var_20]
push	eax
lea	ecx, [esp+0C4h+var_B0]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001FB7E
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	edx, [esp+0C0h+var_60]
push	edx
lea	eax, [esp+0C4h+var_80]
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	ecx
lea	edx, [esp+0C4h+var_60]
push	edx
lea	eax, [esp+0C8h+var_90]
push	eax
call	sub_1002B820
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_1001FBD8
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	edx, [esp+0C0h+var_50]
push	edx
lea	eax, [esp+0C4h+var_A0]
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	ecx
lea	edx, [esp+0C4h+var_50]
push	edx
lea	eax, [esp+0C8h+var_90]
push	eax
call	sub_1002B820
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_1001FC32
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	edx, [esp+0C0h+var_B0]
push	edx
lea	eax, [esp+0C4h+var_60]
push	eax
lea	ecx, [esp+0C8h+var_90]
push	ecx
lea	edx, [esp+0CCh+var_70]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001FD70
lea	eax, [esp+0C0h+var_B0]
push	1
push	eax
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_1001FC73
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	ecx
lea	edx, [esp+0C4h+var_50]
push	edx
lea	eax, [esp+0C8h+var_90]
push	eax
lea	ecx, [esp+0CCh+var_70]
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1001FD70
lea	edx, [esp+0C0h+var_B0]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_1001FCB4
or	ebp, 0FFFFFFFFh
jmp	loc_1001FD70
lea	eax, [esp+0C0h+var_B0]
push	eax
lea	ecx, [esp+0C4h+var_60]
push	ecx
lea	edx, [esp+0C8h+var_70]
push	edx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1001FD70
lea	eax, [esp+0C0h+var_40]
push	eax
lea	ecx, [esp+0C4h+var_B0]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001FCF3
or	ebp, 0FFFFFFFFh
jmp	short loc_1001FD70
lea	edx, [esp+0C0h+var_B0]
push	edx
lea	eax, [esp+0C4h+var_50]
push	eax
lea	ecx, [esp+0C8h+var_70]
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1001FD70
lea	edx, [esp+0C0h+var_30]
push	edx
lea	eax, [esp+0C4h+var_B0]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1001FD2E
or	ebp, 0FFFFFFFFh
jmp	short loc_1001FD70
lea	ecx, [esp+0C0h+var_B0]
push	ecx
lea	edx, [esp+0C4h+var_80]
push	edx
lea	eax, [esp+0C8h+var_10]
push	eax
lea	ecx, [esp+0CCh+var_A0]
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	short loc_1001FD70
lea	edx, [esp+0C0h+var_B0]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_1001FD70
or	ebp, 0FFFFFFFFh
jmp	short loc_1001FD70
			
mov	esi, 0FFFFFFFCh
			
pop	edi
			
lea	eax, [esp+0BCh+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C0h+var_80]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C4h+var_A0]
push	edx
call	sub_10028EF0
lea	eax, [esp+0C8h+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0CCh+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0D0h+var_90]
push	edx
call	sub_10028EF0
lea	eax, [esp+0D4h+var_70]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D8h+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0DCh+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E0h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0E4h+var_B0]
push	ecx
call	sub_10028EF0
add	esp, 2Ch
cmp	esi, ebx
jz	short loc_1001FE69
cmp	esi, 0FFFFFFFCh
jz	short loc_1001FE4F
cmp	esi, 0FFFFFFFDh
jz	short loc_1001FE35
cmp	esi, 0FFFFFFFEh
jz	short loc_1001FE1B
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0B0h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0B0h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0B0h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0B0h
retn
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 0B0h
retn
align 10h
push	offset sub_1001EF50
push	offset dword_1004B744
call	ds:PR_CallOnce
add	esp, 8
test	eax, eax
jz	short loc_1001FEA8
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
xor	eax, eax
retn
align 10h
push	ebx
xor	ebx, ebx
cmp	dword_1004B744,	ebx
jz	loc_1001FF6D
push	esi
mov	esi, dword_1004B73C
cmp	esi, offset dword_1004B73C
jz	short loc_1001FF28
push	edi
nop
mov	ecx, [esi+4]
mov	edx, [esi]
mov	[ecx], edx
mov	ecx, [esi]
mov	edx, [esi+4]
mov	[ecx+4], edx
cmp	[esi+18h], ebx
jz	short loc_1001FF06
mov	edi, [esi+18h]
mov	eax, [edi]
lea	ecx, [edi+4]
push	ecx
mov	[esi+18h], eax
call	sub_10028EF0
add	edi, 14h
push	edi
call	sub_10028EF0
add	esp, 8
cmp	[esi+18h], ebx
jnz	short loc_1001FEE4
lea	edx, [esi+8]
push	ebx
push	edx
call	SECITEM_FreeItem_Util
push	esi
call	PORT_Free_Util
mov	esi, dword_1004B73C
add	esp, 0Ch
cmp	esi, offset dword_1004B73C
jnz	short loc_1001FED0
pop	edi
mov	eax, dword_1004B734
pop	esi
cmp	eax, ebx
jz	short loc_1001FF42
push	eax
call	ds:PR_DestroyCondVar
add	esp, 4
mov	dword_1004B734,	ebx
mov	eax, dword_1004B730
cmp	eax, ebx
jz	short loc_1001FF5B
push	eax
call	ds:PR_DestroyLock
add	esp, 4
mov	dword_1004B730,	ebx
mov	dword_1004B744,	ebx
mov	dword_1004B748,	ebx
mov	dword_1004B74C,	ebx
pop	ebx
retn
align 10h
jmp	sub_1001FEB0
align 10h
mov	eax, [esp+arg_0]
mov	dword_1004BA7C,	eax
retn
align 10h
			
push	ecx
push	ebx
push	ebp
push	edi
mov	edi, [esp+10h+arg_0]
push	edi
mov	ebx, eax
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
mov	[esp+10h+var_4], ebp
test	ebp, ebp
jnz	short loc_1001FFB2
pop	edi
pop	ebp
pop	ebx
pop	ecx
retn
push	esi
lea	esi, [ebp+1]
mov	byte ptr [ebp+0], 0
mov	[esi], bl
mov	eax, ebx
inc	esi
dec	eax
jz	loc_1002008D
dec	eax
jnz	loc_1002009C
mov	eax, [esp+14h+arg_4]
mov	ebx, edi
sub	ebx, [eax+8]
sub	ebx, 3
cmp	ebx, 8
jl	loc_1002009C
add	edi, 0FFFFFFFEh
push	edi
push	esi
call	sub_1000CD60
add	esp, 8
test	eax, eax
jnz	short loc_10020072
xor	ebp, ebp
test	ebx, ebx
jle	short loc_10020047
lea	esp, [esp+0]
cmp	byte ptr [esi+ebp], 0
jnz	short loc_10020042
cmp	edi, ebx
jg	short loc_10020030
mov	edi, [esp+14h+arg_0]
mov	ecx, edi
sub	ecx, ebx
sub	ecx, 2
push	ecx
lea	edx, [ebx+esi]
push	edx
call	sub_1000CD60
add	esp, 8
test	eax, eax
jnz	short loc_1002006E
add	edi, 0FFFFFFFEh
lea	esp, [esp+0]
			
mov	al, [edi+esi-1]
dec	edi
test	al, al
jnz	short loc_1002003F
cmp	edi, ebx
jg	short loc_10020030
jmp	short loc_10020043
mov	[esi+ebp], al
inc	ebp
cmp	ebp, ebx
jl	short loc_10020000
mov	eax, [esp+14h+arg_4]
add	esi, ebx
mov	byte ptr [esi],	0
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx		
push	edx		
inc	esi
push	esi		
call	memcpy
mov	ebp, [esp+20h+var_4]
add	esp, 0Ch
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
pop	ebx
pop	ecx
retn
mov	ebp, [esp+14h+var_4]
push	ebp
call	PORT_Free_Util
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 8
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
mov	ebx, [esp+14h+arg_4]
sub	edi, [ebx+8]
sub	edi, 3
cmp	edi, 8
jge	short loc_100200AD
			
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
push	edi		
push	0FFh		
push	esi		
call	memset
add	esi, edi
mov	byte ptr [esi],	0
mov	eax, [ebx+8]
mov	ecx, [ebx+4]
push	eax		
push	ecx		
inc	esi
push	esi		
call	memcpy
add	esp, 18h
pop	esi
pop	edi
mov	eax, ebp
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
sub	esp, 10h
push	esi
push	eax
call	sub_10008790
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_100200FB
or	eax, 0FFFFFFFFh
pop	esi
add	esp, 10h
retn
mov	ecx, [esi+4]
push	ebx
push	ebp
call	ecx
mov	ecx, [esi]
mov	edx, [esp+1Ch+arg_4]
mov	ebp, eax
lea	eax, [ecx+edx-1]
xor	edx, edx
div	ecx
xor	ebx, ebx
mov	[esp+1Ch+var_8], eax
test	eax, eax
jz	loc_100201D4
push	edi
mov	eax, ebx
shr	eax, 18h
mov	ecx, ebx
mov	edx, ebx
shr	ecx, 10h
shr	edx, 8
mov	[esp+20h+var_10], al
mov	[esp+20h+var_F], cl
mov	[esp+20h+var_E], dl
mov	[esp+20h+var_D], bl
mov	eax, [esi+10h]
push	ebp
call	eax
mov	ecx, [esp+24h+arg_C]
mov	edx, [esp+24h+arg_8]
mov	eax, [esi+14h]
push	ecx
push	edx
push	ebp
call	eax
mov	edx, [esi+14h]
push	4
lea	ecx, [esp+34h+var_10]
push	ecx
push	ebp
call	edx
mov	eax, [esi]
mov	ecx, [esp+3Ch+var_8]
mov	edi, eax
imul	edi, ebx
add	edi, [esp+3Ch+arg_0]
add	esp, 1Ch
dec	ecx
push	eax
cmp	ebx, ecx
jz	short loc_1002018C
mov	ecx, [esi+18h]
lea	eax, [esp+24h+var_4]
push	eax
push	edi
push	ebp
call	ecx
add	esp, 10h
jmp	short loc_100201C8
call	PORT_Alloc_Util
mov	edx, [esi]
push	edx
mov	edx, [esi+18h]
lea	ecx, [esp+28h+var_4]
push	ecx
push	eax
push	ebp
mov	[esp+34h+Src], eax
call	edx
mov	eax, [esi]
mov	ecx, [esp+34h+arg_4]
imul	eax, ebx
mov	edx, [esp+34h+Src]
sub	ecx, eax
push	ecx		
push	edx		
push	edi		
call	memcpy
mov	eax, [esp+40h+Src]
push	eax
call	PORT_Free_Util
add	esp, 24h
inc	ebx
cmp	ebx, [esp+20h+var_8]
jb	loc_10020121
pop	edi
mov	ecx, [esi+0Ch]
push	1
push	ebp
call	ecx
add	esp, 8
pop	ebp
pop	ebx
xor	eax, eax
pop	esi
add	esp, 10h
retn
align 10h
push	ebp
mov	ebp, [esp+4+arg_0]
mov	eax, [ebp+14h]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebp+18h]
setz	cl
sub	esi, ecx
cmp	[esp+8+arg_C], esi
jnb	short loc_10020211
pop	esi
or	eax, 0FFFFFFFFh
pop	ebp
retn
push	ebx
mov	ebx, [esp+0Ch+Size]
cmp	ebx, esi
jbe	short loc_10020223
or	ebx, 0FFFFFFFFh
mov	eax, ebx
pop	ebx
pop	esi
pop	ebp
retn
push	edi
push	esi
call	PORT_ZAlloc_Util
mov	edx, [esp+14h+Src]
mov	edi, eax
push	ebx		
sub	eax, ebx
push	edx		
add	eax, esi
push	eax		
call	memcpy
mov	ecx, [esp+20h+Dst]
push	edi		
push	ecx		
push	ebp		
call	sub_1001F860
mov	edx, [esp+2Ch+arg_8]
add	esp, 1Ch
mov	ebx, eax
mov	[edx], esi
test	edi, edi
jz	short loc_10020261
push	esi
push	edi
call	PORT_ZFree_Util
add	esp, 8
pop	edi
mov	eax, ebx
pop	ebx
pop	esi
pop	ebp
retn
align 10h
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
mov	eax, [esi+8]
xor	ecx, ecx
cmp	[eax], cl
push	edi
mov	edi, [esi+0Ch]
setz	cl
sub	edi, ecx
cmp	[esp+10h+arg_8], edi
jnz	loc_10020311
mov	ebx, [esp+10h+arg_10]
cmp	ebx, edi
ja	short loc_10020311
lea	edx, [edi+1]
push	edx
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	short loc_10020311
mov	eax, [esp+10h+arg_4]
push	eax		
push	ebp		
push	esi		
call	sub_1001E6B0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10020308
mov	esi, [esp+10h+arg_C]
mov	eax, ebp
sub	eax, ebx
add	eax, edi
mov	ecx, ebx
cmp	ebx, 4
jb	short loc_100202E4
nop
mov	edx, [eax]
cmp	edx, [esi]
jnz	short loc_10020308
sub	ecx, 4
add	esi, 4
add	eax, 4
cmp	ecx, 4
jnb	short loc_100202D0
test	ecx, ecx
jz	short loc_10020319
mov	dl, [esi]
cmp	dl, [eax]
jnz	short loc_10020308
cmp	ecx, 1
jbe	short loc_10020319
mov	dl, [esi+1]
cmp	dl, [eax+1]
jnz	short loc_10020308
cmp	ecx, 2
jbe	short loc_10020319
mov	cl, [esi+2]
cmp	cl, [eax+2]
jz	short loc_10020319
			
push	ebp
call	PORT_Free_Util
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
			
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
mov	eax, [esp+arg_0]
mov	ecx, [eax+8]
xor	edx, edx
cmp	[ecx], dl
push	esi
mov	esi, [eax+0Ch]
setz	dl
sub	esi, edx
cmp	[esp+4+arg_14],	esi
jnz	short loc_10020367
cmp	[esp+4+arg_C], esi
jb	short loc_10020367
mov	ecx, [esp+4+arg_10]
mov	edx, [esp+4+Dst]
push	ecx		
push	edx		
push	eax		
call	sub_1001E6B0
add	esp, 0Ch
test	eax, eax
jz	short loc_1002036C
			
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esp+4+arg_8]
mov	[eax], esi
xor	eax, eax
pop	esi
retn
align 10h
push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
mov	eax, [ebp+8]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebp+0Ch]
setz	cl
push	edi
sub	esi, ecx
cmp	[esp+10h+arg_C], esi
jb	short loc_100203DE
mov	ebx, [esp+10h+Size]
cmp	ebx, esi
ja	short loc_100203DE
push	esi
call	PORT_ZAlloc_Util
mov	edx, [esp+14h+Src]
mov	edi, eax
push	ebx		
sub	eax, ebx
push	edx		
add	eax, esi
push	eax		
call	memcpy
mov	ecx, [esp+20h+Dst]
push	edi		
push	ecx		
push	ebp		
call	sub_1001E6B0
add	esp, 1Ch
test	eax, eax
jz	short loc_100203E6
test	edi, edi
jz	short loc_100203DE
push	esi
push	edi
call	PORT_ZFree_Util
add	esp, 8
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	esi
push	edi
call	PORT_ZFree_Util
mov	edx, [esp+18h+arg_8]
add	esp, 8
pop	edi
mov	[edx], esi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+14h]
xor	edx, edx
cmp	[ecx], dl
push	esi
mov	esi, [eax+18h]
setz	dl
sub	esi, edx
cmp	esi, [esp+4+arg_C]
ja	short loc_10020437
cmp	[esp+4+arg_14],	esi
jnz	short loc_10020437
mov	ecx, [esp+4+arg_10]
mov	edx, [esp+4+Dst]
push	ecx		
push	edx		
push	eax		
call	sub_1001F840
add	esp, 0Ch
test	eax, eax
jz	short loc_1002043C
			
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esp+4+arg_8]
mov	[eax], esi
xor	eax, eax
pop	esi
retn
align 10h
sub	esp, 70h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+70h+var_4], eax
mov	eax, [esp+70h+arg_0]
push	ebx
mov	ebx, [esp+74h+arg_14]
push	ebp
mov	ebp, [esp+78h+Size]
mov	[esp+78h+Dst], eax
mov	eax, [esp+78h+arg_C]
push	esi
push	eax
mov	[esp+80h+var_48], ecx
mov	[esp+80h+Src], edx
mov	[esp+80h+var_58], 0FFFFFFFFh
call	sub_10008790
mov	esi, eax
mov	eax, [esi]
lea	ecx, [eax+eax+2]
add	esp, 4
cmp	ebp, ecx
jnb	short loc_100204C5
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+70h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
mov	edx, [esi+4]
push	edi
call	edx
mov	edi, eax
test	edi, edi
jnz	short loc_100204F4
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
mov	ecx, [esp+70h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
mov	eax, [esi+10h]
push	edi
call	eax
mov	eax, [esp+84h+arg_18]
add	esp, 4
test	eax, eax
jz	short loc_10020513
mov	ecx, [esi+14h]
push	eax
push	ebx
push	edi
call	ecx
add	esp, 0Ch
mov	ecx, [esi+18h]
push	40h
lea	edx, [esp+84h+var_6C]
push	edx
lea	eax, [esp+88h+var_44]
push	eax
push	edi
call	ecx
mov	edx, [esi+0Ch]
push	1
push	edi
call	edx
push	ebp
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 1Ch
test	edi, edi
jnz	short loc_1002054E
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_1002075C
mov	ebx, ebp
sub	ebx, [esi]
dec	ebx
push	ebx
mov	[esp+84h+var_4C], ebx
call	PORT_Alloc_Util
add	esp, 4
mov	[esp+80h+var_68], eax
test	eax, eax
jnz	short loc_1002057A
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
jmp	loc_10020752
mov	eax, [esp+80h+Src]
push	ebp		
push	eax		
push	edi		
call	memcpy
mov	eax, [esi]
mov	ecx, ebp
sub	ecx, eax
dec	ecx
push	ecx
lea	edx, [eax+edi+1]
push	edx
push	eax
mov	eax, [esp+98h+var_68]
push	eax
mov	eax, [esp+9Ch+arg_10]
call	sub_100200E0
xor	eax, eax
add	esp, 1Ch
mov	[esp+80h+var_6C], eax
cmp	[esi], eax
jbe	short loc_100205CA
mov	ecx, [esp+80h+var_68]
mov	dl, [eax+ecx]
xor	[edi+eax+1], dl
mov	eax, [esp+80h+var_6C]
inc	eax
mov	[esp+80h+var_6C], eax
cmp	eax, [esi]
jb	short loc_100205B2
mov	eax, [esi]
mov	edx, [esp+80h+var_68]
push	eax
mov	eax, [esp+84h+arg_10]
lea	ecx, [edi+1]
push	ecx
push	ebx
push	edx
call	sub_100200E0
xor	eax, eax
add	esp, 10h
mov	[esp+80h+var_6C], eax
test	ebx, ebx
jz	short loc_10020610
mov	ecx, [esi]
mov	edx, [esp+80h+var_68]
add	ecx, eax
mov	al, [eax+edx]
xor	[ecx+edi+1], al
mov	eax, [esp+80h+var_6C]
lea	ecx, [ecx+edi+1]
inc	eax
mov	[esp+80h+var_6C], eax
cmp	eax, ebx
jb	short loc_100205F0
mov	cl, [edi]
mov	al, cl
neg	al
or	al, cl
mov	ecx, [esi]
not	al
xor	dl, dl
xor	bl, bl
shr	al, 7
mov	[esp+80h+var_60], 0
mov	[esp+80h+var_5C], ecx
lea	esi, [ecx+edi+1]
mov	[esp+80h+var_6D], dl
test	ecx, ecx
jz	short loc_10020662
lea	edx, [esp+80h+var_44]
sub	edx, esi
mov	[esp+80h+var_50], edx
mov	dl, [esp+80h+var_6D]
mov	[esp+80h+Src], ecx
lea	ecx, [ecx+0]
mov	ecx, [esp+80h+var_50]
mov	cl, [ecx+esi]
xor	cl, [esi]
inc	esi
or	dl, cl
dec	[esp+80h+Src]
jnz	short loc_10020650
mov	esi, [esp+80h+var_5C]
mov	cl, dl
neg	cl
or	cl, dl
not	cl
shr	cl, 7
lea	esi, [esi+esi+1]
and	al, cl
mov	[esp+80h+var_6D], al
mov	[esp+80h+var_6C], esi
cmp	esi, ebp
jnb	short loc_100206E9
mov	cl, [esi+edi]
mov	al, 1
sub	al, cl
lea	edx, [ecx-1]
or	al, dl
not	al
shr	al, 7
movzx	eax, al
mov	[esp+80h+var_5C], eax
movzx	edx, bl
not	edx
and	edx, eax
dec	edx
mov	eax, edx
and	edx, [esp+80h+var_60]
not	eax
and	eax, esi
or	eax, edx
mov	[esp+80h+var_60], eax
mov	al, byte ptr [esp+80h+var_5C]
dec	al
and	bl, al
not	al
and	al, 1
mov	dl, cl
neg	dl
or	dl, cl
or	bl, al
not	dl
shr	dl, 7
mov	al, bl
not	al
not	dl
and	dl, al
mov	al, [esp+80h+var_6D]
dec	dl
inc	esi
and	al, dl
mov	[esp+80h+var_6D], al
mov	[esp+80h+var_6C], esi
cmp	esi, ebp
jb	short loc_10020683
test	al, bl
jnz	short loc_100206FC
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10020740
mov	ecx, [esp+80h+var_60]
mov	edx, [esp+80h+var_48]
inc	ecx
mov	eax, ebp
sub	eax, ecx
mov	[edx], eax
cmp	eax, [esp+80h+arg_4]
jbe	short loc_10020723
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
jmp	short loc_10020740
test	eax, eax
jz	short loc_10020738
push	eax		
mov	eax, [esp+84h+Dst]
add	ecx, edi
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
mov	[esp+80h+var_58], 0
			
mov	ecx, [esp+80h+var_4C]
mov	edx, [esp+80h+var_68]
push	ecx
push	edx
call	PORT_ZFree_Util
add	esp, 8
push	ebp
push	edi
call	PORT_ZFree_Util
add	esp, 8
mov	ecx, [esp+80h+var_4]
mov	eax, [esp+80h+var_58]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 70h
retn
align 10h
sub	esp, 8
push	ebx
push	ebp
mov	ebp, [esp+10h+arg_0]
push	esi
push	eax
mov	ebx, ecx
call	sub_10008790
mov	esi, eax
mov	eax, [esi]
lea	eax, [eax+eax+2]
add	esp, 4
cmp	ebx, eax
jb	loc_1002092B
mov	ecx, ebx
sub	ecx, eax
mov	[esp+14h+var_4], ecx
cmp	[esp+14h+Size],	ecx
ja	loc_1002092B
mov	byte ptr [ebp+0], 0
mov	ecx, [esi+4]
push	edi
call	ecx
mov	edi, eax
test	edi, edi
jz	loc_1002088C
mov	edx, [esi+10h]
push	edi
call	edx
mov	eax, [esp+1Ch+arg_14]
add	esp, 4
test	eax, eax
jz	short loc_100207EB
mov	ecx, [esi+14h]
push	eax
mov	eax, [esp+1Ch+arg_10]
push	eax
push	edi
call	ecx
add	esp, 0Ch
mov	eax, [esi]
mov	ecx, [esi+18h]
push	eax
lea	edx, [esp+1Ch+var_8]
push	edx
lea	eax, [eax+ebp+1]
push	eax
push	edi
call	ecx
mov	edx, [esi+0Ch]
push	1
push	edi
call	edx
mov	eax, [esp+30h+var_4]
mov	edi, [esp+30h+Size]
add	esp, 18h
sub	eax, edi
jz	short loc_10020827
push	eax		
mov	eax, [esi]
lea	ecx, [ebp+eax*2+1]
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	eax, ebp
sub	eax, edi
add	eax, ebx
mov	byte ptr [eax-1], 1
test	edi, edi
jz	short loc_10020844
mov	ecx, [esp+18h+Src]
push	edi		
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
mov	ecx, [esp+18h+arg_18]
lea	eax, [ebp+1]
mov	[esp+18h+var_4], eax
test	ecx, ecx
jnz	short loc_1002086B
mov	edx, [esi]
push	edx
push	eax
call	sub_1000CD60
add	esp, 8
test	eax, eax
jz	short loc_1002087A
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 8
retn
mov	edx, [esp+18h+arg_1C]
push	edx		
push	ecx		
push	eax		
call	memcpy
add	esp, 0Ch
sub	ebx, [esi]
dec	ebx
push	ebx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100208A4
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
mov	eax, [esi]
mov	ecx, [esp+18h+var_4]
push	eax
mov	eax, [esp+1Ch+arg_C]
push	ecx
push	ebx
push	edi
call	sub_100200E0
xor	eax, eax
add	esp, 10h
mov	[esp+18h+var_8], eax
test	ebx, ebx
jz	short loc_100208E0
mov	edx, [esi]
add	edx, eax
mov	al, [edi+eax]
xor	[edx+ebp+1], al
mov	eax, [esp+18h+var_8]
lea	ecx, [edx+ebp+1]
inc	eax
mov	[esp+18h+var_8], eax
cmp	eax, ebx
jb	short loc_100208C4
mov	eax, [esi]
push	ebx
lea	ecx, [eax+ebp+1]
push	ecx
push	eax
mov	eax, [esp+24h+arg_C]
push	edi
call	sub_100200E0
xor	eax, eax
add	esp, 10h
mov	[esp+18h+var_8], eax
cmp	[esi], eax
jbe	short loc_10020917
mov	dl, [edi+eax]
mov	ebp, [esp+18h+var_4]
xor	[eax+ebp], dl
mov	eax, [esp+18h+var_8]
inc	eax
mov	[esp+18h+var_8], eax
cmp	eax, [esi]
jb	short loc_10020900
push	ebx
push	edi
call	PORT_ZFree_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 8
retn
			
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 8
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [eax+8]
xor	edx, edx
cmp	[ecx], dl
push	ebx
mov	ebx, [eax+0Ch]
setz	dl
sub	ebx, edx
cmp	[esp+4+arg_24],	ebx
jnb	short loc_1002097C
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
cmp	[esp+4+arg_4], 0
jz	loc_10020A40
cmp	[esp+4+arg_8], 0
jz	loc_10020A40
push	ebp
mov	ebp, [esp+8+arg_C]
push	esi
mov	esi, [esp+0Ch+arg_10]
test	esi, esi
jnz	short loc_100209C9
test	ebp, ebp
jnz	short loc_100209CD
push	edi
push	ebx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jnz	short loc_100209E1
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
test	ebp, ebp
jnz	short loc_100209A4
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	eax, [esp+10h+arg_18]
mov	ecx, [esp+10h+arg_14]
mov	edx, [esp+10h+arg_8]
push	eax		
mov	eax, [esp+14h+Size]
push	ecx		
mov	ecx, [esp+18h+Src]
push	esi		
push	ebp		
push	edx		
push	eax		
mov	eax, [esp+28h+arg_4]
push	ecx		
push	edi		
mov	ecx, ebx
call	sub_10020780
mov	esi, eax
add	esp, 20h
test	esi, esi
jnz	short loc_10020A30
mov	edx, [esp+10h+Dst]
mov	eax, [esp+10h+arg_0]
push	edi		
push	edx		
push	eax		
call	sub_1001E6B0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_10020A30
mov	ecx, [esp+10h+arg_20]
mov	[ecx], ebx
			
push	edi
call	PORT_Free_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
retn
			
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_0]
mov	eax, [ebx+14h]
xor	ecx, ecx
cmp	[eax], cl
push	edi
mov	edi, [ebx+18h]
setz	cl
sub	edi, ecx
cmp	[esp+8+arg_4], 0
jz	loc_10020B44
cmp	[esp+8+arg_8], 0
jz	loc_10020B44
cmp	[esp+8+arg_24],	edi
jz	short loc_10020AA4
push	0FFFFE004h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
push	ebp
mov	ebp, [esp+0Ch+arg_10]
test	ebp, ebp
jnz	short loc_10020AD8
cmp	[esp+0Ch+arg_C], ebp
jnz	short loc_10020ADF
push	esi
push	edi
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10020AF3
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebp
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
cmp	[esp+0Ch+arg_C], 0
jnz	short loc_10020AB3
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
pop	ebp
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	edx, [esp+10h+arg_20]
push	edx		
push	esi		
push	ebx		
call	sub_1001F860
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	short loc_10020B33
mov	eax, [esp+10h+arg_C]
mov	ecx, [esp+10h+arg_8]
mov	edx, [esp+10h+arg_4]
push	ebp		
push	eax		
mov	eax, [esp+18h+arg_1C]
push	ecx		
mov	ecx, [esp+1Ch+arg_14]
push	edx		
push	edi		
push	eax		
push	ecx		
mov	ecx, [esp+2Ch+arg_18]
mov	edx, esi
call	sub_10020450
add	esp, 1Ch
mov	ebx, eax
push	edi
push	esi
call	PORT_ZFree_Util
add	esp, 8
pop	esi
pop	ebp
pop	edi
mov	eax, ebx
pop	ebx
retn
			
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
mov	eax, [ebx+8]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebx+0Ch]
setz	cl
push	edi
sub	esi, ecx
cmp	[esp+18h+arg_C], esi
jb	short loc_10020BC5
mov	eax, [esp+18h+arg_10]
mov	edx, [esp+18h+arg_14]
lea	ecx, [esp+18h+var_C]
push	ecx
mov	[esp+1Ch+var_8], eax
push	esi
mov	eax, 2
mov	[esp+20h+var_4], edx
call	sub_1001FF90
mov	edi, eax
add	esp, 8
test	edi, edi
jz	short loc_10020BC5
mov	edx, [esp+18h+Dst]
push	edi		
push	edx		
push	ebx		
call	sub_1001E6B0
add	esp, 0Ch
push	esi
push	edi
test	eax, eax
jz	short loc_10020BCF
call	PORT_ZFree_Util
add	esp, 8
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
call	PORT_ZFree_Util
mov	eax, [esp+20h+arg_8]
add	esp, 8
pop	edi
mov	[eax], esi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_0]
mov	eax, [ebx+14h]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebx+18h]
setz	cl
push	edi
sub	esi, ecx
cmp	[esp+0Ch+arg_14], esi
jnz	short loc_10020C64
lea	edx, [esi+1]
push	edx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_10020C64
mov	eax, [esp+0Ch+arg_10]
push	eax		
push	edi		
push	ebx		
call	sub_1001F840
add	esp, 0Ch
test	eax, eax
jnz	short loc_10020C5B
cmp	[edi], al
jnz	short loc_10020C5B
mov	eax, 2
cmp	[edi+1], al
jnz	short loc_10020C5B
mov	ecx, [esp+0Ch+arg_8]
mov	dword ptr [ecx], 0
cmp	esi, eax
jbe	short loc_10020C5B
lea	ecx, [ecx+0]
cmp	byte ptr [eax+edi], 0
jz	short loc_10020C6B
inc	eax
cmp	eax, esi
jb	short loc_10020C50
			
push	edi
call	PORT_Free_Util
add	esp, 4
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	edx, esi
sub	edx, eax
lea	eax, [edx-1]
mov	[ecx], eax
test	eax, eax
jz	short loc_10020C5B
cmp	eax, [esp+0Ch+arg_C]
ja	short loc_10020C5B
mov	edx, [esp+0Ch+Dst]
mov	ecx, edi
sub	ecx, eax
push	eax		
add	ecx, esi
push	ecx		
push	edx		
call	memcpy
push	edi
call	PORT_Free_Util
add	esp, 10h
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
sub	esp, 0Ch
push	ebx
push	ebp
mov	ebp, [esp+14h+Dst]
push	esi
push	edi
push	eax
mov	ebx, ecx
call	sub_10008790
mov	edx, [esp+20h+arg_4]
mov	ecx, [esp+20h+Size]
mov	esi, eax
mov	eax, [esi]
mov	edi, edx
sub	edi, eax
lea	eax, [eax+ecx+2]
add	esp, 4
dec	edi
cmp	edx, eax
jnb	short loc_10020CE7
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, edi
sub	eax, ecx
mov	[esp+1Ch+var_4], eax
add	eax, ebp
push	ecx		
mov	[esp+20h+var_C], eax
test	ebx, ebx
jnz	short loc_10020D0F
push	eax
call	sub_1000CD60
add	esp, 8
test	eax, eax
jz	short loc_10020D19
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
push	ebx		
push	eax		
call	memcpy
add	esp, 0Ch
mov	ecx, [esi+4]
call	ecx
mov	ebx, eax
test	ebx, ebx
jnz	short loc_10020D3C
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	edx, [esi+10h]
push	ebx
call	edx
mov	eax, [esi+14h]
push	8
push	offset dword_1003FAE8
push	ebx
call	eax
mov	ecx, [esi]
mov	edx, [esp+2Ch+arg_8]
mov	eax, [esi+14h]
push	ecx
push	edx
push	ebx
call	eax
mov	ecx, [esp+38h+Size]
mov	edx, [esp+38h+var_C]
mov	eax, [esi+14h]
push	ecx
push	edx
push	ebx
call	eax
mov	ecx, [esi]
push	ecx
lea	edx, [esp+48h+var_8]
push	edx
lea	eax, [edi+ebp]
push	eax
mov	eax, [esi+18h]
push	ebx
call	eax
mov	ecx, [esi+0Ch]
push	1
push	ebx
call	ecx
mov	edx, [esp+5Ch+var_4]
add	esp, 40h
dec	edx
push	edx		
push	0		
push	ebp		
call	memset
mov	eax, [esp+28h+var_C]
push	edi
mov	byte ptr [eax-1], 1
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jz	loc_10020D24
mov	ecx, [esi]
push	ecx
lea	eax, [edi+ebp]
push	eax
mov	eax, [esp+24h+arg_C]
push	edi
push	ebx
call	sub_100200E0
xor	eax, eax
add	esp, 10h
mov	[esp+1Ch+var_8], eax
test	edi, edi
jz	short loc_10020DE5
mov	dl, [ebx+eax]
xor	[eax+ebp], dl
mov	eax, [esp+1Ch+var_8]
inc	eax
mov	[esp+1Ch+var_8], eax
cmp	eax, edi
jb	short loc_10020DD2
push	ebx
call	PORT_Free_Util
and	byte ptr [ebp+0], 7Fh
mov	eax, [esp+20h+arg_4]
add	esp, 4
pop	edi
pop	esi
mov	byte ptr [eax+ebp-1], 0BCh
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 0Ch
retn
align 10h
sub	esp, 0Ch
push	ebx
push	ebp
mov	ebp, [esp+14h+arg_4]
push	esi
push	edi
push	eax
mov	ebx, ecx
call	sub_10008790
mov	ecx, [esp+20h+arg_C]
mov	esi, eax
mov	eax, [esi]
mov	edi, ebx
sub	edi, eax
lea	edx, [eax+ecx+2]
add	esp, 4
dec	edi
cmp	ebx, edx
jb	loc_10021033
cmp	byte ptr [ebx+ebp-1], 0BCh
jnz	loc_10021033
test	byte ptr [ebp+0], 80h
jnz	loc_10021033
push	edi
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_10020E7B
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	ecx, [esi]
push	ecx
lea	eax, [edi+ebp]
push	eax
mov	[esp+24h+var_4], eax
mov	eax, [esp+24h+arg_8]
push	edi
push	ebx
call	sub_100200E0
xor	eax, eax
add	esp, 10h
mov	[esp+1Ch+var_C], eax
test	edi, edi
jz	short loc_10020EB3
mov	edi, edi
mov	dl, [eax+ebp]
xor	[eax+ebx], dl
mov	eax, [esp+1Ch+var_C]
inc	eax
mov	[esp+1Ch+var_C], eax
cmp	eax, edi
jb	short loc_10020EA0
mov	edx, [esp+1Ch+arg_C]
and	byte ptr [ebx],	7Fh
mov	eax, edi
xor	ecx, ecx
sub	eax, edx
dec	eax
mov	[esp+1Ch+var_C], ecx
jz	short loc_10020ED6
cmp	byte ptr [ecx+ebx], 0
jnz	short loc_10020F15
inc	ecx
mov	[esp+1Ch+var_C], ecx
cmp	ecx, eax
jb	short loc_10020EC7
mov	eax, ebx
sub	eax, edx
add	edi, eax
cmp	byte ptr [edi-1], 1
mov	[esp+1Ch+var_8], edi
jnz	short loc_10020F15
mov	ecx, [esi]
push	ecx
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jnz	short loc_10020F33
push	ebx
call	PORT_Free_Util
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
			
push	ebx
call	PORT_Free_Util
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 8
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	edx, [esi+4]
call	edx
mov	edi, eax
test	edi, edi
jnz	short loc_10020F62
push	ebx
call	PORT_Free_Util
push	ebp
call	PORT_Free_Util
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 0Ch
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esi+10h]
push	edi
call	eax
mov	ecx, [esi+14h]
push	8
push	offset dword_1003FAE8
push	edi
call	ecx
mov	edx, [esi]
mov	eax, [esp+2Ch+arg_0]
mov	ecx, [esi+14h]
push	edx
push	eax
push	edi
call	ecx
mov	edx, [esp+38h+arg_C]
mov	eax, [esp+38h+var_8]
mov	ecx, [esi+14h]
push	edx
push	eax
push	edi
call	ecx
mov	edx, [esi]
mov	ecx, [esi+18h]
push	edx
lea	eax, [esp+48h+var_C]
push	eax
push	ebp
push	edi
call	ecx
mov	edx, [esi+0Ch]
push	1
push	edi
call	edx
add	esp, 40h
push	ebx
call	PORT_Free_Util
mov	esi, [esi]
mov	eax, [esp+20h+var_4]
add	esp, 4
mov	ecx, ebp
cmp	esi, 4
jb	short loc_10020FD7
mov	edx, [ecx]
cmp	edx, [eax]
jnz	short loc_10020FFB
sub	esi, 4
add	eax, 4
add	ecx, 4
cmp	esi, 4
jnb	short loc_10020FC3
test	esi, esi
jz	short loc_1002101E
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_10020FFB
cmp	esi, 1
jbe	short loc_1002101E
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_10020FFB
cmp	esi, 2
jbe	short loc_1002101E
mov	al, [eax+2]
cmp	al, [ecx+2]
jz	short loc_1002101E
			
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
push	ebp
or	esi, 0FFFFFFFFh
call	PORT_Free_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
			
push	ebp
xor	esi, esi
call	PORT_Free_Util
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 0Ch
retn
			
push	0FFFFE00Ah
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
mov	eax, [esp+arg_0]
mov	ecx, [eax+14h]
xor	edx, edx
cmp	[ecx], dl
push	esi
mov	esi, [eax+18h]
setz	dl
sub	esi, edx
cmp	[esp+4+arg_1C],	esi
jnb	short loc_1002107C
push	0FFFFE003h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
push	ebp
mov	ebp, [esp+8+arg_4]
push	edi
test	ebp, ebp
jz	short loc_100210FF
mov	edi, [esp+0Ch+arg_8]
test	edi, edi
jz	short loc_100210FF
push	ebx
push	esi
call	PORT_Alloc_Util
mov	ebx, eax
add	esp, 4
test	ebx, ebx
jnz	short loc_100210B3
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esp+10h+Size]
mov	ecx, [esp+10h+arg_20]
push	eax		
push	edi		
push	ecx		
mov	ecx, [esp+1Ch+Src] 
push	esi		
push	ebx		
mov	eax, ebp
call	sub_10020CA0
mov	edi, eax
add	esp, 14h
test	edi, edi
jnz	short loc_100210EF
mov	edx, [esp+10h+Dst]
mov	eax, [esp+10h+arg_0]
push	ebx		
push	edx		
push	eax		
call	sub_1001F860
mov	ecx, [esp+1Ch+arg_18]
add	esp, 0Ch
mov	edi, eax
mov	[ecx], esi
push	ebx
call	PORT_Free_Util
add	esp, 4
pop	ebx
mov	eax, edi
pop	edi
pop	ebp
pop	esi
retn
			
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	esi
retn
align 10h
push	ebp
mov	ebp, [esp+4+arg_0]
mov	eax, [ebp+8]
xor	ecx, ecx
cmp	[eax], cl
push	edi
mov	edi, [ebp+0Ch]
setz	cl
sub	edi, ecx
cmp	[esp+8+arg_14],	edi
jz	short loc_1002114E
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
cmp	[esp+8+arg_4], 0
push	ebx
jz	loc_100211DE
mov	ebx, [esp+0Ch+arg_8]
test	ebx, ebx
jz	short loc_100211DE
push	esi
push	edi
call	PORT_Alloc_Util
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_10021187
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	edx, [esp+10h+arg_10]
push	edx		
push	esi		
push	ebp		
call	sub_1001E6B0
add	esp, 0Ch
test	eax, eax
jz	short loc_100211B5
push	esi
call	PORT_Free_Util
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 8
pop	esi
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
mov	eax, [esp+10h+arg_C]
mov	ecx, [esp+10h+arg_18]
push	eax
mov	eax, [esp+14h+arg_4]
push	ebx
push	esi
push	ecx
mov	ecx, edi
call	sub_10020E10
push	esi
mov	edi, eax
call	PORT_Free_Util
add	esp, 14h
pop	esi
pop	ebx
mov	eax, edi
pop	edi
pop	ebp
retn
			
push	0FFFFE006h
call	PORT_SetError_Util
add	esp, 4
pop	ebx
pop	edi
or	eax, 0FFFFFFFFh
pop	ebp
retn
align 10h
sub	esp, 0Ch
push	ebx
mov	ebx, [esp+10h+arg_0]
mov	eax, [ebx+14h]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebx+18h]
setz	cl
sub	esi, ecx
cmp	[esp+14h+arg_C], esi
jnb	short loc_10021227
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0Ch
retn
mov	eax, [esp+14h+arg_10]
mov	edx, [esp+14h+arg_14]
push	edi
lea	ecx, [esp+18h+var_C]
push	ecx
mov	[esp+1Ch+var_8], eax
push	esi
mov	eax, 1
mov	[esp+20h+var_4], edx
call	sub_1001FF90
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1002125D
pop	edi
or	ebx, 0FFFFFFFFh
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
mov	edx, [esp+18h+Dst]
push	edi		
push	edx		
push	ebx		
call	sub_1001F860
mov	ebx, eax
mov	eax, [esp+24h+arg_8]
push	esi
push	edi
mov	[eax], esi
call	PORT_ZFree_Util
add	esp, 14h
pop	edi
pop	esi
mov	eax, ebx
pop	ebx
add	esp, 0Ch
retn
align 10h
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
mov	eax, [esi+8]
xor	ecx, ecx
cmp	[eax], cl
push	edi
mov	edi, [esi+0Ch]
setz	cl
sub	edi, ecx
cmp	[esp+10h+arg_8], edi
jnz	loc_10021377
mov	ebx, [esp+10h+arg_10]
lea	edx, [edi-0Bh]
cmp	ebx, edx
ja	loc_10021377
lea	eax, [edi+1]
push	eax
call	PORT_Alloc_Util
mov	ebp, eax
add	esp, 4
test	ebp, ebp
jz	loc_10021377
mov	ecx, [esp+10h+arg_4]
push	ecx		
push	ebp		
push	esi		
call	sub_1001E6B0
add	esp, 0Ch
test	eax, eax
jnz	loc_1002136E
cmp	[ebp+0], al
jnz	short loc_1002136E
cmp	byte ptr [ebp+1], 1
jnz	short loc_1002136E
lea	ecx, [eax+2]
mov	eax, edi
sub	eax, ebx
dec	eax
cmp	eax, ecx
jbe	short loc_1002130F
cmp	byte ptr [ecx+ebp], 0FFh
jnz	short loc_1002136E
inc	ecx
cmp	ecx, eax
jb	short loc_10021304
cmp	byte ptr [ecx+ebp], 0
jnz	short loc_1002136E
mov	esi, [esp+10h+arg_C]
mov	eax, ebp
sub	eax, ebx
add	eax, edi
mov	ecx, ebx
cmp	ebx, 4
jb	short loc_1002133A
mov	edx, [eax]
cmp	edx, [esi]
jnz	short loc_1002136E
sub	ecx, 4
add	esi, 4
add	eax, 4
cmp	ecx, 4
jnb	short loc_10021326
test	ecx, ecx
jz	short loc_1002135E
mov	dl, [esi]
cmp	dl, [eax]
jnz	short loc_1002136E
cmp	ecx, 1
jbe	short loc_1002135E
mov	dl, [esi+1]
cmp	dl, [eax+1]
jnz	short loc_1002136E
cmp	ecx, 2
jbe	short loc_1002135E
mov	cl, [esi+2]
cmp	cl, [eax+2]
jnz	short loc_1002136E
			
push	ebp
call	PORT_Free_Util
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
			
push	ebp
call	PORT_Free_Util
add	esp, 4
			
pop	edi
pop	esi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_0]
mov	eax, [ebx+8]
xor	ecx, ecx
cmp	[eax], cl
push	esi
mov	esi, [ebx+0Ch]
setz	cl
push	edi
sub	esi, ecx
cmp	[esp+0Ch+arg_14], esi
jnz	short loc_100213FA
lea	edx, [esi+1]
push	edx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
test	edi, edi
jz	short loc_100213FA
mov	eax, [esp+0Ch+arg_10]
push	eax		
push	edi		
push	ebx		
call	sub_1001E6B0
add	esp, 0Ch
test	eax, eax
jnz	short loc_100213F1
mov	edx, [esp+0Ch+arg_8]
mov	[edx], eax
cmp	[edi], al
jnz	short loc_100213F1
cmp	byte ptr [edi+1], 1
jnz	short loc_100213F1
mov	eax, 2
cmp	esi, eax
jbe	short loc_100213F1
lea	ebx, [ebx+0]
mov	cl, [eax+edi]
test	cl, cl
jz	short loc_10021401
cmp	cl, 0FFh
jnz	short loc_100213F1
inc	eax
cmp	eax, esi
jb	short loc_100213E0
			
push	edi
call	PORT_Free_Util
add	esp, 4
			
pop	edi
pop	esi
or	eax, 0FFFFFFFFh
pop	ebx
retn
mov	ecx, esi
sub	ecx, eax
lea	eax, [ecx-1]
mov	[edx], eax
test	eax, eax
jz	short loc_100213F1
cmp	eax, [esp+0Ch+arg_C]
ja	short loc_100213F1
mov	edx, edi
sub	edx, eax
push	eax		
mov	eax, [esp+10h+Dst]
add	edx, esi
push	edx		
push	eax		
call	memcpy
push	edi
call	PORT_Free_Util
add	esp, 10h
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
push	ebx
push	ebp
mov	ebp, [esp+8+Src]
push	esi
mov	eax, ebp
push	edi
lea	edx, [eax+1]
lea	ecx, [ecx+0]
mov	cl, [eax]
inc	eax
test	cl, cl
jnz	short loc_10021450
sub	eax, edx
mov	esi, eax
lea	eax, [esi+5]
push	eax
call	PORT_Alloc_Util
lea	ebx, [esi-4]
add	esp, 4
mov	edi, eax
test	ebx, ebx
jle	short loc_1002148A
push	5		
lea	ecx, [ebx+ebp]
push	offset Str2	
push	ecx		
call	ds:strncmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002148A
mov	esi, ebx
			
push	esi		
push	ebp		
push	edi		
call	memcpy
mov	edx, ds:dword_1003FAF0
mov	[edi+esi], edx
mov	al, ds:byte_1003FAF4
add	esp, 0Ch
mov	[edi+esi+4], al
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
mov	ecx, [esp+arg_0]
movzx	eax, byte ptr [ecx]
movzx	edx, byte ptr [ecx+1]
shl	eax, 8
or	eax, edx
movzx	edx, byte ptr [ecx+2]
movzx	ecx, byte ptr [ecx+3]
shl	eax, 8
or	eax, edx
shl	eax, 8
or	eax, ecx
retn
align 10h
			
push	ecx
push	ebx
mov	ebx, ds:PR_Read
push	4
lea	eax, [esp+0Ch+var_4]
push	eax
push	edi
call	ebx 
add	esp, 0Ch
cmp	eax, 4
jnz	short loc_1002155A
mov	ecx, [esp+8+var_4]
movzx	edx, byte ptr [esp+8+var_4+2]
movzx	eax, cl
shl	eax, 8
movzx	ecx, ch
or	eax, ecx
movzx	ecx, byte ptr [esp+8+var_4+3]
shl	eax, 8
or	eax, edx
shl	eax, 8
or	eax, ecx
push	eax
mov	[esi+8], eax
call	PORT_Alloc_Util
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jz	short loc_10021553
mov	edx, [esi+8]
push	edx
push	eax
push	edi
call	ebx 
add	esp, 0Ch
cmp	eax, [esi+8]
jz	short loc_10021560
mov	eax, [esi+4]
push	eax
call	PORT_Free_Util
add	esp, 4
mov	dword ptr [esi+4], 0
mov	dword ptr [esi+8], 0
or	eax, 0FFFFFFFFh
pop	ebx
pop	ecx
retn
xor	eax, eax
pop	ebx
pop	ecx
retn
align 10h
			
			
mov	eax, 10A4h
call	__alloca_probe
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+10A4h+var_4], eax
push	ebx
push	ebp
push	esi
mov	esi, [esp+10B0h+Src]
xor	ebx, ebx
push	34h		
lea	eax, [esp+10B4h+Dst]
push	ebx		
push	eax		
mov	[esp+10BCh+var_107C], esi
mov	[esp+10BCh+var_10A0], ebx
xor	ebp, ebp
mov	[esp+10BCh+var_1094], ebx
mov	[esp+10BCh+var_1090], ebx
mov	[esp+10BCh+var_108C], ebx
mov	[esp+10BCh+var_109C], ebx
call	memset
add	esp, 0Ch
lea	ecx, [esp+10B0h+var_1044]
mov	[esp+10B0h+var_1084], ecx
mov	[esp+10B0h+var_1080], 40h
cmp	esi, ebx
jz	loc_10021813
push	esi		
call	sub_10021440
add	esp, 4
mov	[esp+10B0h+var_1098], eax
cmp	eax, ebx
jz	loc_10021802
push	edi
push	ebx
push	1
push	eax
call	ds:PR_Open
mov	edi, eax
add	esp, 0Ch
mov	[esp+10B4h+var_10A4], edi
test	edi, edi
jz	loc_100217BF
push	0Ch
lea	edx, [esp+10B8h+var_1004]
push	edx
push	edi
call	ds:PR_Read
add	esp, 0Ch
cmp	eax, 0Ch
jnz	loc_100217BF
cmp	[esp+10B4h+var_1004], 0F1h
jnz	loc_100217BF
cmp	[esp+10B4h+var_1003], 0C5h
jnz	loc_100217BF
cmp	[esp+10B4h+var_1002], 1
jnz	loc_100217BF
cmp	[esp+10B4h+var_1001], 2
jb	loc_100217BF
lea	eax, [esp+10B4h+var_1000]
push	ebp
push	eax
call	sub_100214B0
add	esp, 4
push	eax
push	edi
call	ds:PR_Seek
add	esp, 0Ch
lea	esi, [esp+10B4h+var_1074]
call	sub_100214E0
test	eax, eax
jnz	loc_100217BB
lea	esi, [esp+10B4h+var_1068]
call	sub_100214E0
test	eax, eax
jnz	loc_100217BB
lea	esi, [esp+10B4h+var_105C]
call	sub_100214E0
test	eax, eax
jnz	loc_100217BB
lea	esi, [esp+10B4h+var_1050]
call	sub_100214E0
test	eax, eax
jnz	loc_100217BB
lea	esi, [esp+10B4h+var_1094]
call	sub_100214E0
test	eax, eax
jnz	loc_100217BB
mov	ecx, edi
push	ecx
call	ds:PR_Close
lea	edx, [esp+10B8h+Dst]
push	edx
mov	[esp+10BCh+var_10A4], ebx
call	sub_100190B0
push	eax
call	sub_10008790
mov	ebp, eax
add	esp, 0Ch
test	ebp, ebp
jz	loc_100217BB
mov	eax, [esp+10B4h+var_107C]
push	ebx
push	1
push	eax
call	ds:PR_Open
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jz	loc_100217BB
mov	ecx, [ebp+4]
call	ecx
mov	[esp+10B4h+var_10A0], eax
test	eax, eax
jz	loc_100217BB
mov	edx, [ebp+10h]
mov	esi, eax
push	esi
call	edx
mov	edi, ds:PR_Read
push	1000h
lea	eax, [esp+10BCh+var_1004]
push	eax
push	ebx
call	edi 
add	esp, 10h
test	eax, eax
jle	short loc_10021776
jmp	short loc_10021750
align 10h
			
mov	edx, [ebp+14h]
push	eax
lea	ecx, [esp+10B8h+var_1004]
push	ecx
push	esi
call	edx
push	1000h
lea	eax, [esp+10C4h+var_1004]
push	eax
push	ebx
call	edi 
add	esp, 18h
test	eax, eax
jg	short loc_10021750
push	ebx
call	ds:PR_Close
mov	ecx, [esp+10B8h+var_1080]
mov	eax, [esp+10B8h+var_1084]
push	ecx
mov	ecx, [ebp+18h]
lea	edx, [esp+10BCh+var_1080]
push	edx
push	eax
push	esi
xor	ebx, ebx
call	ecx
lea	edx, [esp+10C8h+var_1088]
push	edx
lea	eax, [esp+10CCh+var_1094]
push	eax
lea	ecx, [esp+10D0h+Dst]
push	ecx
call	sub_1001CED0
add	esp, 20h
mov	edi, ebx
test	eax, eax
jnz	short loc_100217BF
mov	[esp+10B4h+var_109C], 1
jmp	short loc_100217BF
			
mov	edi, [esp+10B4h+var_10A4]
			
mov	edx, [esp+10B4h+var_1098]
push	edx
call	PORT_Free_Util
add	esp, 4
test	edi, edi
jz	short loc_100217DA
push	edi
call	ds:PR_Close
add	esp, 4
pop	edi
test	ebx, ebx
jz	short loc_100217E9
push	ebx
call	ds:PR_Close
add	esp, 4
mov	eax, [esp+10B0h+var_10A0]
test	eax, eax
jz	short loc_10021800
test	ebp, ebp
jz	short loc_10021800
push	1
push	eax
mov	eax, [ebp+0Ch]
call	eax
add	esp, 8
			
xor	ebx, ebx
mov	eax, [esp+10B0h+var_1090]
cmp	eax, ebx
jz	short loc_10021813
push	eax
call	PORT_Free_Util
add	esp, 4
			
mov	eax, [esp+10B0h+var_1070]
cmp	eax, ebx
jz	short loc_10021824
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+10B0h+var_1064]
cmp	eax, ebx
jz	short loc_10021835
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+10B0h+var_1058]
cmp	eax, ebx
jz	short loc_10021846
push	eax
call	PORT_Free_Util
add	esp, 4
mov	eax, [esp+10B0h+var_104C]
pop	esi
pop	ebp
cmp	eax, ebx
pop	ebx
jz	short loc_1002185A
push	eax
call	PORT_Free_Util
add	esp, 4
mov	ecx, [esp+10A4h+var_4]
mov	eax, [esp+10A4h+var_109C]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 10A4h
retn
align 10h
mov	eax, [esp+arg_4]
mov	ecx, [esp+arg_0]
push	esi
push	edi
push	eax
push	ecx
xor	edi, edi
call	ds:PR_GetLibraryFilePathname
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100218AF
push	esi		
call	sub_10021570
push	esi
mov	edi, eax
call	ds:PR_Free
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_100218CE
mov	eax, 1
retn
push	esi
push	edi
push	offset sub_100214B0
push	eax
xor	edi, edi
call	ds:PR_GetLibraryFilePathname
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_100218F9
push	esi		
call	sub_10021570
push	esi
mov	edi, eax
call	ds:PR_Free
add	esp, 8
mov	eax, edi
pop	edi
pop	esi
retn
align 10h
			
			
sub	esp, 0A0h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+0A0h+var_4], eax
mov	eax, [esp+0A0h+arg_0]
mov	ecx, [esp+0A0h+arg_C]
mov	edx, [esp+0A0h+arg_14]
push	ebx
mov	ebx, [esp+0A4h+arg_8]
push	ebp
push	esi
mov	esi, [esp+0ACh+arg_10]
push	edi
mov	edi, [esp+0B0h+arg_4]
xor	ebp, ebp
push	eax
mov	[esp+0B4h+var_90], ecx
mov	[esp+0B4h+var_88], edx
mov	[esp+0B4h+var_9C], ebp
mov	[esp+0B4h+Size], ebp
mov	[esp+0B4h+var_8C], 0FFFFFFFFh
call	sub_10008790
mov	ecx, [esi+8]
mov	edx, [esi+4]
add	esp, 4
mov	[esp+0B0h+var_A0], ecx
mov	[esp+0B0h+Dst],	edx
test	ebx, ebx
jz	short loc_1002198B
mov	ecx, ebx
lea	esi, [ecx+1]
lea	esp, [esp+0]
mov	dl, [ecx]
inc	ecx
test	dl, dl
jnz	short loc_10021980
sub	ecx, esi
mov	ebp, ecx
mov	ecx, [esp+0B0h+var_88]
mov	edx, [edi+8]
push	ecx
mov	ecx, [edi+4]
push	edx
push	ecx
push	eax
call	sub_100085B0
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	loc_10021ACC
push	esi
call	sub_10008600
push	ebp
push	ebx
push	esi
call	sub_10008630
mov	edi, [esp+0C0h+var_90]
mov	edx, [edi+8]
mov	eax, [edi+4]
push	edx
push	eax
push	esi
call	sub_10008630
push	40h
lea	ecx, [esp+0D0h+var_9C]
push	ecx
lea	edx, [esp+0D4h+var_84]
push	edx
push	esi
call	sub_10008650
add	esp, 2Ch
test	eax, eax
jnz	loc_10021AB9
cmp	[esp+0B0h+var_A0], eax
jbe	loc_10021AA8
jmp	short loc_100219F8
mov	edi, [esp+0B0h+var_90]
push	esi
call	sub_10008600
mov	eax, [esp+0B4h+var_9C]
push	eax
lea	ecx, [esp+0B8h+var_84]
push	ecx
push	esi
call	sub_10008630
add	esp, 10h
test	ebp, ebp
jz	short loc_10021A20
push	ebp
push	ebx
push	esi
call	sub_10008630
add	esp, 0Ch
mov	edx, [edi+8]
mov	eax, [edi+4]
push	edx
push	eax
push	esi
call	sub_10008630
push	40h
lea	ecx, [esp+0C0h+Size]
push	ecx
lea	edx, [esp+0C4h+Src]
push	edx
push	esi
call	sub_10008650
add	esp, 1Ch
test	eax, eax
jnz	short loc_10021AB9
push	esi
call	sub_10008600
mov	eax, [esp+0B4h+var_9C]
push	eax
lea	ecx, [esp+0B8h+var_84]
push	ecx
push	esi
call	sub_10008630
push	40h
lea	edx, [esp+0C4h+var_9C]
push	edx
lea	eax, [esp+0C8h+var_84]
push	eax
push	esi
call	sub_10008650
add	esp, 20h
test	eax, eax
jnz	short loc_10021AB9
mov	edi, [esp+0B0h+Size]
mov	eax, [esp+0B0h+var_A0]
cmp	edi, eax
jb	short loc_10021A87
mov	edi, eax
mov	edx, [esp+0B0h+Dst]
push	edi		
lea	ecx, [esp+0B4h+Src]
push	ecx		
push	edx		
call	memcpy
add	[esp+0BCh+Dst],	edi
add	esp, 0Ch
sub	[esp+0B0h+var_A0], edi
jnz	loc_100219F4
push	1		
push	esi		
xor	edi, edi
call	sub_10008410
add	esp, 8
mov	eax, edi
jmp	short loc_10021AD0
			
mov	edi, [esp+0B0h+var_8C]
push	1		
push	esi		
call	sub_10008410
add	esp, 8
mov	eax, edi
jmp	short loc_10021AD0
mov	eax, [esp+0B0h+var_8C]
			
mov	ecx, [esp+0B0h+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 0A0h
retn
align 10h
sub	esp, 24h
mov	ecx, [esp+24h+arg_0]
mov	edx, [ecx+8]
mov	ecx, [ecx+4]
push	ebx
push	ebp
push	esi
mov	eax, edx
mov	esi, edx
shr	eax, 1
and	esi, 1
add	eax, esi
mov	esi, [esp+30h+arg_C]
mov	[esp+30h+var_14], ecx
sub	ecx, eax
xor	ebp, ebp
mov	[esp+30h+var_10], eax
mov	[esp+30h+var_4], eax
mov	eax, [esi+8]
push	edi
add	ecx, edx
push	eax
or	ebx, 0FFFFFFFFh
mov	[esp+38h+var_24], ebp
mov	[esp+38h+var_1C], ebp
mov	[esp+38h+var_18], ebp
mov	[esp+38h+var_C], ebp
mov	[esp+38h+var_8], ecx
call	PORT_Alloc_Util
mov	edi, eax
add	esp, 4
mov	[esp+34h+var_20], edi
cmp	edi, ebp
jz	short loc_10021BC8
mov	ebp, [esp+34h+arg_10]
mov	ecx, [esi+8]
mov	edx, [esp+34h+arg_8]
mov	eax, [esp+34h+arg_4]
push	ebp
push	esi
push	edx
mov	[esp+40h+var_1C], ecx
push	eax
lea	ecx, [esp+44h+var_18]
push	ecx
push	2
call	sub_10021900
add	esp, 18h
test	eax, eax
jnz	short loc_10021BB6
mov	eax, [esp+34h+arg_8]
mov	ecx, [esp+34h+arg_4]
push	ebp
lea	edx, [esp+38h+var_24]
push	edx
push	eax
push	ecx
lea	edx, [esp+44h+var_C]
push	edx
push	3
call	sub_10021900
mov	edi, [esp+4Ch+var_20]
add	esp, 18h
test	eax, eax
jnz	short loc_10021BB6
cmp	[esi+8], eax
jbe	short loc_10021BB4
mov	dl, [eax+edi]
mov	ecx, [esi+4]
xor	[ecx+eax], dl
inc	eax
cmp	eax, [esi+8]
jb	short loc_10021BA5
xor	ebx, ebx
			
test	edi, edi
jz	short loc_10021BC8
mov	eax, [esp+34h+var_1C]
push	eax
push	edi
call	PORT_ZFree_Util
add	esp, 8
			
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 24h
retn
align 10h
			
push	ecx
mov	eax, [esp+4+arg_0]
movzx	ecx, byte ptr [eax+1]
movzx	edx, byte ptr [eax+2]
push	ebx
push	ebp
push	esi
movzx	esi, byte ptr [eax]
shl	esi, 8
or	esi, ecx
movzx	ecx, byte ptr [eax+3]
push	edi
movzx	edi, byte ptr [eax+4]
movzx	ebx, byte ptr [eax+0Dh]
shl	esi, 8
or	esi, edx
movzx	edx, byte ptr [eax+5]
shl	edi, 8
or	edi, edx
movzx	edx, byte ptr [eax+7]
shl	esi, 8
or	esi, ecx
movzx	ecx, byte ptr [eax+6]
shl	edi, 8
or	edi, ecx
movzx	ecx, byte ptr [eax+8]
shl	edi, 8
or	edi, edx
movzx	edx, byte ptr [eax+9]
shl	ecx, 8
or	ecx, edx
movzx	edx, byte ptr [eax+0Ah]
shl	ecx, 8
or	ecx, edx
movzx	edx, byte ptr [eax+0Bh]
shl	ecx, 8
or	ecx, edx
movzx	edx, byte ptr [eax+0Ch]
shl	edx, 8
or	edx, ebx
movzx	ebx, byte ptr [eax+0Eh]
movzx	eax, byte ptr [eax+0Fh]
shl	edx, 8
or	edx, ebx
shl	edx, 8
or	edx, eax
mov	ebx, edi
sub	ebx, edx
sub	ebx, 61C88647h
mov	[esp+14h+arg_0], ebx
lea	eax, [ecx+esi+61C88647h]
mov	ebx, eax
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, eax
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, eax
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	eax, 0FFh
xor	ebx, ds:dword_1003FB00[eax*4]
mov	eax, [esp+14h+arg_4]
mov	[eax], ebx
mov	ebx, [esp+14h+arg_0]
mov	ebp, ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
mov	[eax+4], ebp
mov	ebp, esi
shl	ebp, 18h
mov	ebx, edi
shr	edi, 8
xor	ebp, edi
mov	[esp+14h+arg_4], ebp
shr	esi, 8
shl	ebx, 18h
xor	ebx, esi
mov	esi, ebp
lea	edi, [ecx+ebx-3C6EF373h]
mov	ebp, edi
shr	ebp, 10h
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
mov	[esp+14h+arg_0], edi
shr	edi, 8
and	edi, 0FFh
xor	ebp, ds:dword_1003FF00[edi*4]
mov	edi, [esp+14h+arg_0]
sub	esi, edx
shr	edi, 18h
xor	ebp, ds:dword_10040700[edi*4]
mov	edi, [esp+14h+arg_0]
and	edi, 0FFh
xor	ebp, ds:dword_1003FB00[edi*4]
add	esi, 3C6EF373h
mov	[eax+8], ebp
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	esi, edx
shl	edx, 8
mov	[eax+0Ch], edi
mov	edi, ecx
shl	ecx, 8
shr	esi, 18h
xor	esi, ecx
mov	ecx, [esp+14h+arg_4]
shr	edi, 18h
xor	edi, edx
lea	edx, [esi+ebx-78DDE6E6h]
mov	ebp, edx
mov	[esp+14h+arg_0], edx
shr	ebp, 10h
shr	edx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	edx, 0FFh
xor	ebp, ds:dword_1003FF00[edx*4]
mov	edx, [esp+14h+arg_0]
shr	edx, 18h
xor	ebp, ds:dword_10040700[edx*4]
mov	edx, [esp+14h+arg_0]
and	edx, 0FFh
xor	ebp, ds:dword_1003FB00[edx*4]
sub	ecx, edi
mov	[eax+10h], ebp
add	ecx, 78DDE6E6h
mov	edx, ecx
shr	edx, 10h
and	edx, 0FFh
mov	edx, ds:dword_10040300[edx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	edx, ds:dword_1003FF00[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	edx, ds:dword_10040700[ebp*4]
and	ecx, 0FFh
xor	edx, ds:dword_1003FB00[ecx*4]
mov	ebp, [esp+14h+arg_4]
mov	ecx, ebp
mov	[eax+14h], edx
mov	edx, ebx
shr	ebx, 8
shr	ebp, 8
shl	edx, 18h
xor	edx, ebp
shl	ecx, 18h
xor	ecx, ebx
lea	ebx, [esi+ecx+0E443234h]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebx, 8
shr	ebp, 10h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
mov	[esp+14h+arg_4], edx
mov	[eax+18h], ebp
sub	edx, edi
sub	edx, 0E443234h
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edx, 0FFh
xor	ebx, ds:dword_1003FB00[edx*4]
mov	edx, edi
mov	[eax+1Ch], ebx
mov	ebx, esi
shr	ebx, 18h
shl	esi, 8
shr	edx, 18h
xor	edx, esi
mov	esi, [esp+14h+arg_4]
shl	edi, 8
xor	edi, ebx
lea	ebx, [edx+ecx+1C886467h]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	esi, edi
mov	[eax+20h], ebp
sub	esi, 1C886467h
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
mov	ebp, [esp+14h+arg_4]
and	esi, 0FFh
xor	ebx, ds:dword_1003FB00[esi*4]
mov	esi, ebp
mov	[eax+24h], ebx
shr	ebp, 8
mov	ebx, ecx
shl	ebx, 18h
xor	ebx, ebp
mov	[esp+14h+arg_4], ebx
shr	ecx, 8
shl	esi, 18h
xor	esi, ecx
mov	ecx, ebx
lea	ebp, [edx+esi+3910C8CDh]
mov	ebx, ebp
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	[esp+14h+arg_0], ebp
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, [esp+14h+arg_0]
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
sub	ecx, edi
mov	ebp, ebx
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	ecx, 3910C8CDh
mov	[eax+28h], ebp
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	ecx, 0FFh
xor	ebx, ds:dword_1003FB00[ecx*4]
mov	ecx, edi
mov	[eax+2Ch], ebx
mov	ebx, edx
shr	ebx, 18h
shl	edx, 8
shr	ecx, 18h
xor	ecx, edx
mov	edx, [esp+14h+arg_4]
shl	edi, 8
xor	edi, ebx
lea	ebx, [ecx+esi+72219199h]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	edx, edi
sub	edx, 72219199h
mov	[eax+30h], ebp
mov	ebx, edx
shr	ebx, 10h
mov	ebp, edx
shr	ebp, 8
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edx, 0FFh
xor	ebx, ds:dword_1003FB00[edx*4]
mov	ebp, esi
mov	[eax+34h], ebx
mov	ebx, [esp+14h+arg_4]
mov	edx, ebx
shr	ebx, 8
shl	ebp, 18h
xor	ebp, ebx
mov	[esp+14h+arg_4], ebp
shr	esi, 8
shl	edx, 18h
xor	edx, esi
mov	esi, ebp
lea	ebx, [ecx+edx-1BBCDCCFh]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebx, 8
and	ebx, 0FFh
shr	ebp, 10h
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	esi, edi
mov	[eax+38h], ebp
add	esi, 1BBCDCCFh
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	ebx, ds:dword_1003FB00[esi*4]
mov	esi, edi
mov	[eax+3Ch], ebx
mov	ebx, ecx
shr	ebx, 18h
shl	ecx, 8
shr	esi, 18h
xor	esi, ecx
mov	ecx, [esp+14h+arg_4]
shl	edi, 8
xor	edi, ebx
lea	ebx, [esi+edx-3779B99Eh]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebp, 10h
shr	ebx, 8
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	ecx, edi
add	ecx, 3779B99Eh
mov	ebx, ecx
shr	ebx, 10h
mov	[eax+40h], ebp
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	ecx, 0FFh
xor	ebx, ds:dword_1003FB00[ecx*4]
mov	ebp, edx
mov	[eax+44h], ebx
mov	ebx, [esp+14h+arg_4]
mov	ecx, ebx
shr	ebx, 8
shl	ebp, 18h
xor	ebp, ebx
mov	[esp+14h+arg_4], ebp
shr	edx, 8
shl	ecx, 18h
xor	ecx, edx
mov	edx, ebp
lea	ebx, [esi+ecx-6EF3733Ch]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebx, 8
and	ebx, 0FFh
shr	ebp, 10h
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	edx, edi
mov	[eax+48h], ebp
add	edx, 6EF3733Ch
mov	ebx, edx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edx, 0FFh
xor	ebx, ds:dword_1003FB00[edx*4]
mov	edx, edi
mov	[eax+4Ch], ebx
mov	ebx, esi
shr	ebx, 18h
shl	esi, 8
shr	edx, 18h
xor	edx, esi
mov	esi, [esp+14h+arg_4]
shl	edi, 8
xor	edi, ebx
lea	ebx, [edx+ecx+22191988h]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
sub	esi, edi
and	ebx, 0FFh
sub	esi, 22191988h
xor	ebp, ds:dword_1003FB00[ebx*4]
mov	[eax+50h], ebp
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	ebx, ds:dword_1003FB00[esi*4]
mov	ebp, ecx
mov	[eax+54h], ebx
mov	ebx, [esp+14h+arg_4]
mov	esi, ebx
shr	ebx, 8
shl	ebp, 18h
xor	ebp, ebx
mov	[esp+14h+arg_4], ebp
shr	ecx, 8
shl	esi, 18h
xor	esi, ecx
mov	ecx, ebp
lea	ebx, [edx+esi+4432330Fh]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebx, 8
and	ebx, 0FFh
shr	ebp, 10h
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	ecx, edi
mov	[eax+58h], ebp
sub	ecx, 4432330Fh
mov	ebx, ecx
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, ecx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, ecx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	ecx, 0FFh
xor	ebx, ds:dword_1003FB00[ecx*4]
mov	ecx, edi
mov	[eax+5Ch], ebx
mov	ebx, edx
shr	ebx, 18h
shl	edx, 8
shr	ecx, 18h
xor	ecx, edx
mov	edx, [esp+14h+arg_4]
shl	edi, 8
xor	edi, ebx
lea	ebx, [ecx+esi-779B99E3h]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
sub	edx, edi
shr	ebx, 18h
add	edx, 779B99E3h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
mov	ebx, edx
mov	[eax+60h], ebp
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edx
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edx
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edx, 0FFh
xor	ebx, ds:dword_1003FB00[edx*4]
mov	ebp, esi
mov	[eax+64h], ebx
mov	ebx, [esp+14h+arg_4]
mov	edx, ebx
shr	ebx, 8
shl	ebp, 18h
xor	ebp, ebx
mov	[esp+14h+arg_4], ebp
shr	esi, 8
shl	edx, 18h
xor	edx, esi
mov	esi, ebp
lea	ebx, [ecx+edx+10C8CC3Ah]
mov	ebp, ebx
mov	[esp+14h+arg_0], ebx
shr	ebx, 8
and	ebx, 0FFh
shr	ebp, 10h
and	ebp, 0FFh
mov	ebp, ds:dword_10040300[ebp*4]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, [esp+14h+arg_0]
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
mov	ebx, [esp+14h+arg_0]
and	ebx, 0FFh
xor	ebp, ds:dword_1003FB00[ebx*4]
sub	esi, edi
sub	esi, 10C8CC3Ah
mov	[eax+68h], ebp
mov	ebx, esi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	ebx, ds:dword_1003FB00[esi*4]
mov	esi, edi
mov	[eax+6Ch], ebx
mov	ebx, ecx
shl	ecx, 8
shr	ebx, 18h
shr	esi, 18h
xor	esi, ecx
shl	edi, 8
xor	ebx, edi
lea	edi, [esi+edx+21919873h]
mov	[esp+14h+arg_0], esi
mov	esi, [esp+14h+arg_4]
mov	[esp+14h+var_4], ebx
mov	ecx, esi
sub	ecx, ebx
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
shr	ebp, 8
sub	ecx, 21919873h
and	ebx, 0FFh
and	ebp, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
and	edi, 0FFh
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
xor	ebx, ds:dword_1003FB00[edi*4]
mov	edi, ecx
mov	[eax+70h], ebx
shr	edi, 10h
mov	ebx, ecx
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebx, 8
and	ebx, 0FFh
xor	edi, ds:dword_1003FF00[ebx*4]
mov	ebx, ecx
and	ecx, 0FFh
shr	ebx, 18h
xor	edi, ds:dword_10040700[ebx*4]
xor	edi, ds:dword_1003FB00[ecx*4]
mov	ecx, edx
mov	[eax+74h], edi
mov	edi, esi
shr	esi, 8
shl	ecx, 18h
xor	ecx, esi
shl	edi, 18h
shr	edx, 8
xor	edi, edx
mov	edx, ecx
mov	ecx, [esp+14h+arg_0]
sub	edx, [esp+14h+var_4]
lea	ecx, [ecx+edi+432330E5h]
mov	esi, ecx
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
mov	edi, ecx
shr	edi, 8
and	edi, 0FFh
xor	esi, ds:dword_1003FF00[edi*4]
mov	edi, ecx
and	ecx, 0FFh
shr	edi, 18h
xor	esi, ds:dword_10040700[edi*4]
sub	edx, 432330E5h
xor	esi, ds:dword_1003FB00[ecx*4]
mov	ecx, edx
mov	[eax+78h], esi
shr	ecx, 10h
and	ecx, 0FFh
mov	ecx, ds:dword_10040300[ecx*4]
mov	esi, edx
shr	esi, 8
and	esi, 0FFh
xor	ecx, ds:dword_1003FF00[esi*4]
mov	esi, edx
shr	esi, 18h
xor	ecx, ds:dword_10040700[esi*4]
pop	edi
and	edx, 0FFh
xor	ecx, ds:dword_1003FB00[edx*4]
pop	esi
pop	ebp
mov	[eax+7Ch], ecx
pop	ebx
pop	ecx
retn
align 10h
			
push	ecx
push	ebx
push	ebp
push	esi
mov	esi, [esp+10h+arg_0]
movzx	ecx, byte ptr [esi+8]
movzx	eax, byte ptr [esi+9]
movzx	edx, byte ptr [esi+0Ah]
shl	ecx, 8
or	ecx, eax
movzx	eax, byte ptr [esi+0Bh]
shl	ecx, 8
or	ecx, edx
movzx	edx, byte ptr [esi+0Ch]
shl	ecx, 8
or	ecx, eax
movzx	eax, byte ptr [esi+0Dh]
shl	edx, 8
or	edx, eax
movzx	eax, byte ptr [esi+0Eh]
shl	edx, 8
or	edx, eax
movzx	eax, byte ptr [esi+0Fh]
push	edi
shl	edx, 8
or	edx, eax
mov	eax, [esp+14h+arg_8]
mov	edi, [eax]
mov	ebx, [eax+4]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	ebp, ebx
shr	ebp, 8
mov	[esp+14h+arg_0], edi
mov	edi, ebx
and	ebp, 0FFh
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	edi, ds:dword_1003FB00[ebx*4]
mov	ebx, [esp+14h+arg_0]
add	ebx, edi
mov	[esp+14h+arg_0], ebx
mov	ebp, ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+14h+arg_8], ebx
mov	ebx, ds:dword_10040300[ebp*4]
mov	ebp, [esp+14h+arg_8]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, [esp+14h+arg_0]
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
mov	ebp, [esp+14h+arg_0]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FB00[ebp*4]
add	edi, ebx
mov	[esp+14h+arg_0], ebx
mov	ebp, edi
shr	ebp, 8
mov	ebx, edi
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+14h+arg_8], ebp
mov	ebp, ds:dword_10040300[ebx*4]
mov	ebx, [esp+14h+arg_8]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, edi
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
and	edi, 0FFh
xor	ebp, ds:dword_1003FB00[edi*4]
mov	[esp+14h+var_4], ebp
movzx	edi, byte ptr [esi]
movzx	ebx, byte ptr [esi+1]
add	ebp, [esp+14h+arg_0]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+2]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+3]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+5]
xor	edi, ebp
mov	[esp+14h+arg_0], edi
movzx	edi, byte ptr [esi+4]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+6]
movzx	esi, byte ptr [esi+7]
shl	edi, 8
or	edi, ebx
mov	ebp, [eax+0Ch]
shl	edi, 8
or	edi, esi
xor	edi, [esp+14h+var_4]
mov	[esp+14h+arg_8], edi
mov	edi, [eax+8]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
and	edi, 0FFh
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+14h]
xor	edx, edi
mov	edi, [eax+10h]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
shr	ebp, 8
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+1Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+18h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	ebp, esi
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+24h]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+20h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
mov	ebp, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+2Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+28h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+34h]
xor	edx, edi
mov	edi, [eax+30h]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
add	edi, ebx
xor	[esp+14h+arg_0], edi
xor	[esp+14h+arg_8], esi
mov	edi, [eax+38h]
xor	edi, [esp+14h+arg_0]
mov	ebp, [eax+3Ch]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+44h]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+40h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
mov	ebp, ebx
shr	ebp, 8
shr	esi, 10h
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+4Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+48h]
xor	edi, [esp+14h+arg_0]
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	esi, 10h
shr	ebx, 8
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+54h]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+50h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+5Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+58h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
shr	ebp, 8
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+64h]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+60h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
mov	ebp, ebx
shr	ebp, 8
shr	esi, 10h
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+6Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+68h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebp, edi
mov	ebx, ds:dword_10040300[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+74h]
xor	edx, edi
mov	edi, [eax+70h]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
and	edi, 0FFh
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+7Ch]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+78h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
mov	ebx, [esp+14h+arg_8]
xor	ebp, ebx
mov	esi, ebp
mov	eax, ebp
shr	eax, 10h
and	eax, 0FFh
shr	esi, 8
and	esi, 0FFh
mov	[esp+14h+arg_8], esi
mov	esi, ds:dword_10040300[eax*4]
mov	eax, [esp+14h+arg_8]
xor	esi, ds:dword_1003FF00[eax*4]
mov	eax, ebp
shr	eax, 18h
xor	esi, ds:dword_10040700[eax*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	eax, edi
shr	eax, 10h
and	eax, 0FFh
mov	eax, ds:dword_10040300[eax*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	eax, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	eax, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	eax, ds:dword_1003FB00[edi*4]
add	esi, eax
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	esi, [esp+14h+arg_4]
add	eax, edi
xor	ecx, eax
mov	eax, ecx
shr	eax, 18h
mov	[esi], al
mov	eax, ecx
shr	eax, 10h
mov	[esi+1], al
mov	eax, ecx
xor	edx, edi
shr	eax, 8
mov	[esi+3], cl
mov	[esi+2], al
mov	eax, edx
mov	ecx, edx
shr	ecx, 18h
shr	eax, 10h
mov	[esi+4], cl
mov	ecx, edx
mov	[esi+5], al
mov	eax, [esp+14h+arg_0]
mov	[esi+7], dl
shr	ecx, 8
mov	edx, eax
shr	edx, 18h
mov	[esi+6], cl
mov	[esi+8], dl
mov	ecx, eax
mov	edx, eax
shr	ecx, 10h
shr	edx, 8
mov	[esi+0Bh], al
mov	[esi+9], cl
mov	[esi+0Ah], dl
mov	eax, ebx
mov	ecx, ebx
mov	edx, ebx
shr	eax, 18h
shr	ecx, 10h
pop	edi
shr	edx, 8
mov	[esi+0Fh], bl
mov	[esi+0Ch], al
mov	[esi+0Dh], cl
mov	[esi+0Eh], dl
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
push	ecx
push	ebx
push	ebp
push	esi
mov	esi, [esp+10h+arg_0]
movzx	ecx, byte ptr [esi+8]
movzx	eax, byte ptr [esi+9]
movzx	edx, byte ptr [esi+0Ah]
shl	ecx, 8
or	ecx, eax
movzx	eax, byte ptr [esi+0Bh]
shl	ecx, 8
or	ecx, edx
movzx	edx, byte ptr [esi+0Ch]
shl	ecx, 8
or	ecx, eax
movzx	eax, byte ptr [esi+0Dh]
shl	edx, 8
or	edx, eax
movzx	eax, byte ptr [esi+0Eh]
shl	edx, 8
or	edx, eax
movzx	eax, byte ptr [esi+0Fh]
push	edi
shl	edx, 8
or	edx, eax
mov	eax, [esp+14h+arg_8]
mov	edi, [eax+78h]
mov	ebx, [eax+7Ch]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	ebp, ebx
shr	ebp, 8
mov	[esp+14h+arg_0], edi
mov	edi, ebx
and	ebp, 0FFh
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	edi, ds:dword_1003FB00[ebx*4]
mov	ebx, [esp+14h+arg_0]
add	ebx, edi
mov	[esp+14h+arg_0], ebx
mov	ebp, ebx
shr	ebp, 10h
shr	ebx, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+14h+arg_8], ebx
mov	ebx, ds:dword_10040300[ebp*4]
mov	ebp, [esp+14h+arg_8]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, [esp+14h+arg_0]
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
mov	ebp, [esp+14h+arg_0]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FB00[ebp*4]
add	edi, ebx
mov	[esp+14h+arg_0], ebx
mov	ebp, edi
shr	ebp, 8
mov	ebx, edi
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	[esp+14h+arg_8], ebp
mov	ebp, ds:dword_10040300[ebx*4]
mov	ebx, [esp+14h+arg_8]
xor	ebp, ds:dword_1003FF00[ebx*4]
mov	ebx, edi
shr	ebx, 18h
xor	ebp, ds:dword_10040700[ebx*4]
and	edi, 0FFh
xor	ebp, ds:dword_1003FB00[edi*4]
mov	[esp+14h+var_4], ebp
movzx	edi, byte ptr [esi]
movzx	ebx, byte ptr [esi+1]
add	ebp, [esp+14h+arg_0]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+2]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+3]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+5]
xor	edi, ebp
mov	[esp+14h+arg_0], edi
movzx	edi, byte ptr [esi+4]
shl	edi, 8
or	edi, ebx
movzx	ebx, byte ptr [esi+6]
movzx	esi, byte ptr [esi+7]
shl	edi, 8
or	edi, ebx
mov	ebp, [eax+74h]
shl	edi, 8
or	edi, esi
xor	edi, [esp+14h+var_4]
mov	[esp+14h+arg_8], edi
mov	edi, [eax+70h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
and	edi, 0FFh
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+6Ch]
xor	edx, edi
mov	edi, [eax+68h]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
shr	ebp, 8
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+64h]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+60h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	ebp, esi
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+5Ch]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+58h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
mov	ebp, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+54h]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+50h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+4Ch]
xor	edx, edi
mov	edi, [eax+48h]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
add	edi, ebx
xor	[esp+14h+arg_0], edi
xor	[esp+14h+arg_8], esi
mov	edi, [eax+40h]
xor	edi, [esp+14h+arg_0]
mov	ebp, [eax+44h]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+3Ch]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+38h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
mov	ebp, ebx
shr	ebp, 8
shr	esi, 10h
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+34h]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+30h]
xor	edi, [esp+14h+arg_0]
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	esi, 10h
shr	ebx, 8
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+2Ch]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+28h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+24h]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+20h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
mov	ebx, ebp
shr	ebx, 8
shr	esi, 10h
and	ebx, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebx, 10h
shr	ebp, 8
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
shr	ebp, 8
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+1Ch]
xor	ecx, esi
xor	edx, edi
mov	edi, [eax+18h]
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
mov	ebp, ebx
shr	ebp, 8
shr	esi, 10h
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
mov	ebp, edi
shr	ebp, 8
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
mov	ebp, esi
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+14h]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax+10h]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
xor	ebp, [esp+14h+arg_8]
mov	esi, ebp
shr	esi, 10h
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
mov	ebx, ebp
shr	ebx, 8
and	ebx, 0FFh
xor	esi, ds:dword_1003FF00[ebx*4]
mov	ebx, ebp
shr	ebx, 18h
xor	esi, ds:dword_10040700[ebx*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	ebx, edi
shr	ebx, 10h
and	ebx, 0FFh
mov	ebp, edi
mov	ebx, ds:dword_10040300[ebx*4]
shr	ebp, 8
and	ebp, 0FFh
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
lea	esi, [edi+ebx]
mov	ebx, [eax+0Ch]
xor	edx, edi
mov	edi, [eax+8]
xor	ecx, esi
xor	edi, ecx
xor	ebx, edi
xor	ebx, edx
mov	esi, ebx
shr	esi, 10h
mov	ebp, ebx
shr	ebp, 8
and	ebp, 0FFh
and	esi, 0FFh
mov	esi, ds:dword_10040300[esi*4]
xor	esi, ds:dword_1003FF00[ebp*4]
mov	ebp, ebx
shr	ebp, 18h
xor	esi, ds:dword_10040700[ebp*4]
and	ebx, 0FFh
xor	esi, ds:dword_1003FB00[ebx*4]
add	edi, esi
mov	ebx, edi
mov	ebp, edi
shr	ebp, 8
shr	ebx, 10h
and	ebp, 0FFh
and	ebx, 0FFh
mov	ebx, ds:dword_10040300[ebx*4]
xor	ebx, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
and	edi, 0FFh
shr	ebp, 18h
xor	ebx, ds:dword_10040700[ebp*4]
xor	ebx, ds:dword_1003FB00[edi*4]
add	esi, ebx
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
mov	ebp, [eax+4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	[esp+14h+var_4], edi
mov	esi, [esp+14h+var_4]
xor	[esp+14h+arg_8], esi
add	edi, ebx
xor	[esp+14h+arg_0], edi
mov	edi, [eax]
xor	edi, [esp+14h+arg_0]
xor	ebp, edi
mov	ebx, [esp+14h+arg_8]
xor	ebp, ebx
mov	esi, ebp
mov	eax, ebp
shr	eax, 10h
and	eax, 0FFh
shr	esi, 8
and	esi, 0FFh
mov	[esp+14h+arg_8], esi
mov	esi, ds:dword_10040300[eax*4]
mov	eax, [esp+14h+arg_8]
xor	esi, ds:dword_1003FF00[eax*4]
mov	eax, ebp
shr	eax, 18h
xor	esi, ds:dword_10040700[eax*4]
and	ebp, 0FFh
xor	esi, ds:dword_1003FB00[ebp*4]
add	edi, esi
mov	eax, edi
shr	eax, 10h
and	eax, 0FFh
mov	eax, ds:dword_10040300[eax*4]
mov	ebp, edi
shr	ebp, 8
and	ebp, 0FFh
xor	eax, ds:dword_1003FF00[ebp*4]
mov	ebp, edi
shr	ebp, 18h
xor	eax, ds:dword_10040700[ebp*4]
and	edi, 0FFh
xor	eax, ds:dword_1003FB00[edi*4]
add	esi, eax
mov	edi, esi
shr	edi, 10h
and	edi, 0FFh
mov	edi, ds:dword_10040300[edi*4]
mov	ebp, esi
shr	ebp, 8
and	ebp, 0FFh
xor	edi, ds:dword_1003FF00[ebp*4]
mov	ebp, esi
shr	ebp, 18h
xor	edi, ds:dword_10040700[ebp*4]
and	esi, 0FFh
xor	edi, ds:dword_1003FB00[esi*4]
mov	esi, [esp+14h+arg_4]
add	eax, edi
xor	ecx, eax
mov	eax, ecx
shr	eax, 18h
mov	[esi], al
mov	eax, ecx
shr	eax, 10h
mov	[esi+1], al
mov	eax, ecx
xor	edx, edi
shr	eax, 8
mov	[esi+3], cl
mov	[esi+2], al
mov	eax, edx
mov	ecx, edx
shr	ecx, 18h
shr	eax, 10h
mov	[esi+4], cl
mov	ecx, edx
mov	[esi+5], al
mov	eax, [esp+14h+arg_0]
mov	[esi+7], dl
shr	ecx, 8
mov	edx, eax
shr	edx, 18h
mov	[esi+6], cl
mov	[esi+8], dl
mov	ecx, eax
mov	edx, eax
shr	ecx, 10h
shr	edx, 8
mov	[esi+0Bh], al
mov	[esi+9], cl
mov	[esi+0Ah], dl
mov	eax, ebx
mov	ecx, ebx
mov	edx, ebx
shr	eax, 18h
shr	ecx, 10h
pop	edi
shr	edx, 8
mov	[esi+0Fh], bl
mov	[esi+0Ch], al
mov	[esi+0Dh], cl
mov	[esi+0Eh], dl
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
sub	esp, 2Ch
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+2Ch+var_4], eax
cmp	[esp+2Ch+arg_14], 0
mov	eax, [esp+2Ch+arg_C]
push	ebx
push	ebp
mov	ebp, [esp+34h+arg_10]
push	esi
mov	esi, [esp+38h+arg_4]
push	edi
mov	edi, [esp+3Ch+arg_0]
mov	[esp+3Ch+var_28], eax
mov	[esp+3Ch+var_24], ebp
mov	ebx, ebp
jz	loc_100245EA
mov	edx, [esp+3Ch+arg_8]
cmp	edx, 10h
jb	loc_10024571
shr	edx, 4
mov	[esp+3Ch+var_2C], edx
jmp	short loc_100244E0
align 10h
			
mov	edx, edi
sub	edx, ebx
mov	[esp+3Ch+var_20], edx
mov	edx, esi
mov	eax, ebx
sub	edx, ebx
mov	ebx, edi
sub	ebx, esi
lea	ebp, [edi+3]
lea	ecx, [esi+1]
mov	[esp+3Ch+var_18], ebx
mov	[esp+3Ch+var_1C], 4
mov	ebx, [esp+3Ch+var_20]
movzx	ebx, byte ptr [ebx+eax]
xor	bl, [eax]
add	eax, 4
mov	[edx+eax-4], bl
mov	ebx, [esp+3Ch+var_18]
movzx	ebx, byte ptr [ebx+ecx]
xor	bl, [eax-3]
add	ecx, 4
mov	[ecx-4], bl
movzx	ebx, byte ptr [eax-2]
xor	bl, [ebp-1]
add	ebp, 4
mov	[ecx-3], bl
movzx	ebx, byte ptr [eax-1]
xor	bl, [ebp-4]
dec	[esp+3Ch+var_1C]
mov	[ecx-2], bl
jnz	short loc_10024504
mov	ecx, [esp+3Ch+var_28]
push	ecx
push	esi
push	esi
call	sub_10022770
sub	[esp+48h+arg_8], 10h
mov	ebx, esi
add	esp, 0Ch
add	edi, 10h
add	esi, 10h
dec	[esp+3Ch+var_2C]
jnz	loc_100244E0
mov	edx, [esp+3Ch+arg_8]
mov	ebp, [esp+3Ch+var_24]
test	edx, edx
jz	short loc_100245D1
mov	ecx, edi
sub	ecx, ebx
mov	edi, esi
mov	eax, ebx
mov	[esp+3Ch+var_20], ecx
sub	edi, ebx
mov	[esp+3Ch+var_2C], edx
jmp	short loc_10024594
align 10h
mov	ecx, [esp+3Ch+var_20]
mov	cl, [eax+ecx]
xor	cl, [eax]
inc	eax
dec	[esp+3Ch+var_2C]
mov	[eax+edi-1], cl
jnz	short loc_10024590
cmp	edx, 10h
jnb	short loc_100245C0
mov	edi, ebx
mov	ecx, 10h
sub	edi, esi
lea	eax, [esi+edx]
sub	ecx, edx
mov	dl, [edi+eax]
mov	[eax], dl
inc	eax
dec	ecx
jnz	short loc_100245B7
mov	eax, [esp+3Ch+var_28]
push	eax
push	esi
push	esi
call	sub_10022770
add	esp, 0Ch
mov	ebx, esi
mov	ecx, [ebx]
mov	[ebp+0], ecx
mov	edx, [ebx+4]
mov	[ebp+4], edx
mov	eax, [ebx+8]
mov	[ebp+8], eax
mov	ecx, [ebx+0Ch]
jmp	loc_100247DC
mov	eax, [esp+3Ch+arg_8]
cmp	edi, esi
jz	loc_100246C6
cmp	eax, 10h
jb	short loc_1002465E
shr	eax, 4
mov	[esp+3Ch+var_2C], eax
mov	edx, [esp+3Ch+var_28]
push	edx
push	esi
push	edi
call	sub_10023600
mov	ebp, ebx
add	esp, 0Ch
lea	ecx, [ebx+2]
mov	eax, esi
sub	ebp, esi
mov	edx, 4
nop
movzx	ebx, byte ptr [eax+ebp]
xor	[eax], bl
movzx	ebx, byte ptr [ecx-1]
xor	[eax+1], bl
movzx	ebx, byte ptr [ecx]
xor	[eax+2], bl
movzx	ebx, byte ptr [ecx+1]
xor	[eax+3], bl
add	eax, 4
add	ecx, 4
dec	edx
jnz	short loc_10024620
sub	[esp+3Ch+arg_8], 10h
mov	ebx, edi
add	edi, 10h
add	esi, 10h
dec	[esp+3Ch+var_2C]
jnz	short loc_10024602
mov	ebp, [esp+3Ch+var_24]
mov	eax, [esp+3Ch+arg_8]
test	eax, eax
jz	short loc_1002469C
mov	eax, [esp+3Ch+var_28]
push	eax
lea	ecx, [esp+40h+var_14]
push	ecx
push	edi
call	sub_10023600
xor	ecx, ecx
add	esp, 0Ch
cmp	[esp+3Ch+arg_8], ecx
jbe	short loc_1002469A
lea	edx, [esp+3Ch+var_14]
mov	eax, edx
sub	ebx, edx
sub	esi, eax
lea	eax, [esp+ecx+3Ch+var_14]
mov	dl, [eax+ebx]
xor	dl, [eax]
inc	ecx
mov	[eax+esi], dl
cmp	ecx, [esp+3Ch+arg_8]
jb	short loc_10024687
mov	ebx, edi
mov	eax, [ebx]
mov	[ebp+0], eax
mov	ecx, [ebx+4]
mov	[ebp+4], ecx
mov	edx, [ebx+8]
mov	[ebp+8], edx
mov	eax, [ebx+0Ch]
pop	edi
pop	esi
mov	[ebp+0Ch], eax
pop	ebp
pop	ebx
mov	ecx, [esp+2Ch+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
cmp	eax, 10h
jb	loc_1002476A
sub	ebx, esi
shr	eax, 4
mov	[esp+3Ch+var_24], eax
mov	edx, [edi+4]
mov	ecx, [edi]
mov	eax, [edi+8]
mov	[esp+3Ch+var_10], edx
mov	edx, [esp+3Ch+var_28]
push	edx
mov	[esp+40h+var_14], ecx
mov	ecx, [edi+0Ch]
push	esi
push	edi
mov	[esp+48h+var_C], eax
mov	[esp+48h+var_8], ecx
call	sub_10023600
mov	eax, esi
add	esp, 0Ch
lea	ecx, [ebp+2]
mov	esi, 4
lea	esp, [esp+0]
movzx	edx, byte ptr [ebx+eax]
xor	[eax], dl
movzx	edx, byte ptr [ecx-1]
xor	[eax+1], dl
movzx	edx, byte ptr [ecx]
xor	[eax+2], dl
movzx	edx, byte ptr [ecx+1]
xor	[eax+3], dl
add	eax, 4
add	ecx, 4
dec	esi
jnz	short loc_10024710
mov	ecx, [esp+3Ch+var_14]
mov	edx, [esp+3Ch+var_10]
sub	[esp+3Ch+arg_8], 10h
mov	[ebp+0], ecx
mov	ecx, [esp+3Ch+var_C]
mov	[ebp+4], edx
mov	edx, [esp+3Ch+var_8]
add	edi, 10h
sub	ebx, 10h
dec	[esp+3Ch+var_24]
mov	[ebp+8], ecx
mov	[ebp+0Ch], edx
mov	esi, eax
jnz	loc_100246D8
mov	eax, [esp+3Ch+arg_8]
test	eax, eax
jz	short loc_100247DF
mov	ecx, [edi+4]
mov	eax, [edi]
mov	edx, [edi+8]
mov	[esp+3Ch+var_14], eax
mov	eax, [edi+0Ch]
mov	[esp+3Ch+var_10], ecx
mov	ecx, [esp+3Ch+var_28]
mov	[esp+3Ch+var_C], edx
push	ecx
lea	edx, [esp+40h+var_14]
mov	[esp+40h+var_8], eax
push	edx
mov	eax, edx
push	eax
call	sub_10023600
mov	edx, [esp+48h+arg_8]
add	esp, 0Ch
xor	ecx, ecx
test	edx, edx
jz	short loc_100247C3
lea	eax, [esp+3Ch+var_14]
mov	edi, ebp
sub	edi, eax
sub	esi, eax
lea	eax, [esp+ecx+3Ch+var_14]
mov	bl, [edi+eax]
xor	bl, [eax]
inc	ecx
mov	[eax+esi], bl
cmp	ecx, edx
jb	short loc_100247B2
mov	ecx, [esp+3Ch+var_14]
mov	edx, [esp+3Ch+var_10]
mov	eax, [esp+3Ch+var_C]
mov	[ebp+0], ecx
mov	ecx, [esp+3Ch+var_8]
mov	[ebp+4], edx
mov	[ebp+8], eax
mov	[ebp+0Ch], ecx
mov	ecx, [esp+3Ch+var_4]
pop	edi
pop	esi
pop	ebp
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 2Ch
retn
align 10h
push	98h
call	PORT_ZAlloc_Util
add	esp, 4
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jnz	short loc_1002482B
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
pop	esi
retn
mov	eax, [esp+4+arg_10]
sub	eax, 0
jz	short loc_1002487A
dec	eax
jnz	short loc_10024819
mov	eax, [esp+4+arg_C]
mov	ecx, [eax]
mov	[esi], ecx
mov	edx, [eax+4]
mov	[esi+4], edx
mov	ecx, [eax+8]
mov	[esi+8], ecx
mov	edx, [eax+0Ch]
mov	ecx, [esp+4+arg_4]
lea	eax, [esi+10h]
push	eax
push	ecx
mov	[esi+0Ch], edx
call	sub_10021BE0
mov	edx, [esp+0Ch+arg_14]
add	esp, 8
mov	dword ptr [esi+90h], 1
mov	[esi+94h], edx
xor	eax, eax
pop	esi
retn
mov	ecx, [esp+4+arg_4]
lea	eax, [esi+10h]
push	eax
push	ecx
call	sub_10021BE0
mov	edx, [esp+0Ch+arg_14]
add	esp, 8
mov	dword ptr [esi+90h], 0
mov	[esi+94h], edx
xor	eax, eax
pop	esi
retn
align 10h
push	esi
push	98h
call	PORT_ZAlloc_Util
mov	ecx, [esp+8+arg_8]
mov	edx, [esp+8+arg_4]
push	0
mov	esi, eax
mov	eax, [esp+0Ch+arg_C]
push	eax
mov	eax, [esp+10h+arg_0]
push	ecx
push	edx
push	10h
push	eax
push	esi
call	sub_10024810
add	esp, 20h
test	eax, eax
jz	short loc_100248F4
push	98h
push	esi
call	PORT_ZFree_Util
add	esp, 8
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
push	esi
mov	esi, [esp+4+Dst]
test	esi, esi
jz	short loc_10024929
push	98h		
push	0		
push	esi		
call	memset
add	esp, 0Ch
cmp	[esp+4+arg_4], 0
jz	short loc_10024929
push	esi
call	PORT_Free_Util
add	esp, 4
			
pop	esi
retn
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_10024949
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
cmp	dword ptr [eax+94h], 0
jz	short loc_10024938
mov	ecx, [eax+90h]
sub	ecx, 0
jz	short loc_10024989
dec	ecx
jnz	short loc_10024938
mov	ecx, [esp+arg_10]
push	esi
mov	esi, [esp+4+arg_14]
push	1
push	eax
add	eax, 10h
push	eax
mov	eax, [esp+10h+arg_4]
push	esi
push	eax
push	ecx
call	sub_10024490
mov	edx, [esp+1Ch+arg_8]
add	esp, 18h
mov	[edx], esi
pop	esi
xor	eax, eax
retn
mov	ecx, [esp+arg_10]
add	eax, 10h
push	eax
mov	eax, [esp+4+arg_4]
push	eax
push	ecx
call	sub_10022770
mov	eax, [esp+0Ch+arg_8]
mov	edx, [esp+0Ch+arg_14]
mov	[eax], edx
add	esp, 0Ch
xor	eax, eax
retn
align 10h
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_100249C9
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
or	eax, 0FFFFFFFFh
retn
cmp	dword ptr [eax+94h], 0
jnz	short loc_100249B8
mov	ecx, [eax+90h]
sub	ecx, 0
jz	short loc_10024A08
dec	ecx
jnz	short loc_100249B8
push	esi
mov	esi, [esp+4+arg_14]
push	ecx
mov	ecx, [esp+8+arg_10]
push	eax
add	eax, 10h
push	eax
mov	eax, [esp+10h+arg_4]
push	esi
push	eax
push	ecx
call	sub_10024490
mov	edx, [esp+1Ch+arg_8]
add	esp, 18h
mov	[edx], esi
pop	esi
xor	eax, eax
retn
mov	ecx, [esp+arg_10]
add	eax, 10h
push	eax
mov	eax, [esp+4+arg_4]
push	eax
push	ecx
call	sub_10023600
mov	eax, [esp+0Ch+arg_8]
mov	edx, [esp+0Ch+arg_14]
mov	[eax], edx
add	esp, 0Ch
xor	eax, eax
retn
align 10h
			
push	ecx
mov	eax, [esi+8]
cmp	eax, 0FFFFh
jbe	short loc_10024A42
mov	eax, 0FFFFFFFCh
pop	ecx
retn
mov	ecx, [edi]
shr	eax, 8
mov	[esp+4+var_4], al
mov	al, [esi+8]
mov	[esp+4+var_3], al
mov	eax, [edi+4]
mov	ecx, [ecx+14h]
push	2
lea	edx, [esp+8+var_4]
push	edx
push	eax
call	ecx
mov	eax, [esi+8]
mov	ecx, [esi+4]
mov	edx, [edi]
push	eax
mov	eax, [edi+4]
push	ecx
mov	ecx, [edx+14h]
push	eax
call	ecx
add	esp, 18h
xor	eax, eax
pop	ecx
retn
align 10h
			
sub	esp, 68h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+68h+var_4], eax
mov	eax, [esp+68h+arg_0]
push	ebx
push	esi
mov	esi, [esp+70h+arg_4]
mov	[esp+70h+var_48], ecx
mov	ecx, [esp+70h+arg_8]
mov	[esp+70h+var_5C], edx
mov	edx, [esp+70h+arg_C]
push	eax
mov	[esp+74h+var_58], ecx
mov	[esp+74h+var_60], edx
call	sub_10008790
mov	ebx, eax
add	esp, 4
mov	[esp+70h+var_68], ebx
test	ebx, ebx
jz	loc_10024B97
cmp	dword ptr [ebx], 40h
ja	loc_10024B97
mov	eax, [ebx+4]
push	ebp
call	eax
mov	ebp, eax
mov	[esp+74h+var_64], ebp
test	ebp, ebp
jnz	short loc_10024AF8
lea	eax, [ebp-2]
pop	ebp
pop	esi
pop	ebx
mov	ecx, [esp+68h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 68h
retn
lea	ecx, [esp+74h+var_44]
mov	[esp+74h+var_50], ecx
mov	edx, [ebx]
push	edi
mov	[esp+78h+var_4C], edx
mov	eax, [ebx+10h]
push	ebp
call	eax
add	esp, 4
lea	edi, [esp+78h+var_68]
call	sub_10024A30
mov	esi, eax
test	esi, esi
js	short loc_10024B77
mov	esi, [esp+78h+var_48]
call	sub_10024A30
mov	esi, eax
test	esi, esi
js	short loc_10024B77
mov	esi, [esp+78h+var_5C]
call	sub_10024A30
mov	esi, eax
test	esi, esi
js	short loc_10024B77
mov	esi, [esp+78h+var_58]
call	sub_10024A30
mov	esi, eax
test	esi, esi
js	short loc_10024B77
mov	edx, [esp+78h+var_50]
mov	eax, [ebx+18h]
push	40h
lea	ecx, [esp+7Ch+var_4C]
push	ecx
push	edx
push	ebp
call	eax
mov	ecx, [esp+88h+var_4C]
mov	edx, [esp+88h+var_50]
mov	eax, [esp+88h+var_60]
push	ecx
push	edx
push	eax
call	sub_10029D30
add	esp, 1Ch
mov	esi, eax
			
mov	ecx, [ebx+0Ch]
push	1
push	ebp
call	ecx
add	esp, 8
pop	edi
pop	ebp
mov	eax, esi
pop	esi
pop	ebx
mov	ecx, [esp+68h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 68h
retn
			
mov	ecx, [esp+70h+var_4]
pop	esi
pop	ebx
xor	ecx, esp
mov	eax, 0FFFFFFFCh
call	@__security_check_cookie@4 
add	esp, 68h
retn
align 10h
sub	esp, 0B0h
push	ebx
push	ebp
push	edi
xor	edi, edi
mov	[esp+0BCh+var_B0], edi
cmp	[esp+0BCh+arg_0], edi
jz	loc_100251ED
mov	ebp, [esp+0BCh+arg_4]
cmp	ebp, edi
jz	loc_100251ED
cmp	[ebp+8], edi
jz	loc_100251ED
cmp	[ebp+0Ch], edi
jz	loc_100251ED
cmp	[ebp+14h], edi
jz	loc_100251ED
cmp	[ebp+18h], edi
jz	loc_100251ED
cmp	[ebp+20h], edi
jz	loc_100251ED
cmp	[ebp+24h], edi
jz	loc_100251ED
mov	eax, [esp+0BCh+arg_C]
cmp	eax, edi
jz	loc_100251ED
cmp	[eax+4], edi
jz	loc_100251ED
cmp	[eax+8], edi
jz	loc_100251ED
mov	eax, [esp+0BCh+arg_10]
cmp	eax, edi
jz	loc_100251ED
cmp	[eax+4], edi
jz	loc_100251ED
cmp	[eax+8], edi
jz	loc_100251ED
mov	eax, [esp+0BCh+arg_14]
cmp	eax, edi
jz	short loc_10024C70
cmp	[eax+4], edi
jz	loc_100251ED
cmp	[eax+8], edi
jz	loc_100251ED
mov	eax, [esp+0BCh+arg_18]
cmp	eax, edi
jnz	short loc_10024C8F
mov	ebx, [esp+0BCh+arg_1C]
cmp	ebx, edi
jz	loc_100251ED
cmp	[ebx+4], edi
jmp	short loc_10024CAA
cmp	[eax+4], edi
jz	loc_100251ED
cmp	[eax+8], edi
jz	loc_100251ED
mov	ebx, [esp+0BCh+arg_1C]
cmp	ebx, edi
jnz	loc_100251ED
mov	eax, [esp+0BCh+arg_20]
cmp	eax, edi
jz	loc_100251ED
cmp	[eax+4], edi
jnz	loc_100251ED
mov	eax, [esp+0BCh+arg_24]
cmp	eax, edi
jz	loc_100251ED
cmp	[eax+4], edi
jnz	loc_100251ED
lea	eax, [esp+0BCh+var_60]
push	esi
push	eax
mov	[esp+0C4h+var_54], edi
mov	[esp+0C4h+var_34], edi
mov	[esp+0C4h+var_84], edi
mov	[esp+0C4h+var_24], edi
mov	[esp+0C4h+var_94], edi
mov	[esp+0C4h+var_74], edi
mov	[esp+0C4h+var_64], edi
mov	[esp+0C4h+var_14], edi
mov	[esp+0C4h+var_4], edi
mov	[esp+0C4h+var_44], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	ecx, [esp+0C0h+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	edx, [esp+0C0h+var_90]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	eax, [esp+0C0h+var_30]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	ecx, [esp+0C0h+var_A0]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	edx, [esp+0C0h+var_80]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	eax, [esp+0C0h+var_70]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	ecx, [esp+0C0h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	edx, [esp+0C0h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
lea	eax, [esp+0C0h+var_50]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025125
mov	ecx, [ebp+0Ch]
mov	edx, [ebp+8]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	ecx, [ebp+18h]
mov	edx, [ebp+14h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_40]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	ecx, [ebp+24h]
mov	edx, [ebp+20h]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_90]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	eax, [esp+0C0h+arg_10]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	eax, [esp+0C0h+arg_18]
cmp	eax, edi
jnz	loc_10024F30
lea	ecx, [esp+0C0h+var_A0]
push	ecx
lea	edx, [esp+0C4h+var_60]
push	edx
lea	eax, [esp+0C8h+var_30]
push	eax
lea	ecx, [esp+0CCh+var_90]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025125
lea	edx, [esp+0C0h+var_A0]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_10024EE6
mov	esi, 0FFFFFFFDh
jmp	loc_10025125
push	eax
mov	eax, [esp+0C4h+arg_0]
push	ebx
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [ebx+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_10024F09
mov	esi, 0FFFFFFFEh
jmp	loc_10025125
mov	ecx, [ebx+8]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_A0]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
xor	esi, esi
mov	[esp+0C0h+arg_18], ebx
jmp	short loc_10024F4F
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+0C8h+var_A0]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	eax, [esp+0C0h+arg_14]
cmp	eax, edi
jnz	short loc_10024F85
mov	eax, [esp+0C0h+arg_0]
lea	ecx, [esp+0C0h+var_AC]
push	ecx
lea	edx, [ebp+10h]
push	edx
push	eax
mov	[esp+0CCh+var_A8], edi
call	sub_1001C780
add	esp, 0Ch
mov	[esp+0C0h+var_B0], eax
cmp	eax, edi
jnz	loc_10025125
jmp	short loc_10024F93
mov	ecx, [eax+4]
mov	edx, [eax+8]
mov	[esp+0C0h+var_A8], ecx
mov	[esp+0C0h+var_A4], edx
mov	eax, [esp+0C0h+var_A4]
mov	ecx, [esp+0C0h+var_A8]
push	eax
push	ecx
lea	edx, [esp+0C8h+var_80]
push	edx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
lea	eax, [esp+0C0h+var_70]
push	eax
lea	ecx, [esp+0C4h+var_60]
push	ecx
lea	edx, [esp+0C8h+var_80]
push	edx
lea	eax, [esp+0CCh+var_90]
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025125
lea	ecx, [esp+0C0h+var_70]
push	ecx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_10024FF5
mov	esi, 0FFFFFFFDh
jmp	loc_10025125
mov	ebx, [esp+0C0h+arg_20]
mov	edx, [esp+0C0h+arg_0]
push	eax
push	ebx
push	edx
call	SECITEM_AllocItem_Util
mov	eax, [ebx+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_1002501F
mov	esi, 0FFFFFFFEh
jmp	loc_10025125
mov	ecx, [ebx+8]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_70]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025125
mov	ecx, [esp+0C0h+arg_C]
mov	edx, [esp+0C0h+arg_8]
lea	eax, [esp+0C0h+var_20]
push	eax
push	ecx
add	ebp, 1Ch
push	ebp
push	edx
mov	edx, [esp+0D0h+arg_18]
mov	ecx, ebx
call	sub_10024A80
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025125
lea	eax, [esp+0C0h+var_10]
push	eax
lea	ecx, [esp+0C4h+var_40]
push	ecx
lea	edx, [esp+0C8h+var_20]
push	edx
lea	eax, [esp+0CCh+var_30]
push	eax
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025125
lea	ecx, [esp+0C0h+var_50]
push	ecx
lea	edx, [esp+0C4h+var_40]
push	edx
lea	eax, [esp+0C8h+var_10]
push	eax
lea	ecx, [esp+0CCh+var_80]
push	ecx
call	sub_1002C400
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_10025125
lea	edx, [esp+0C0h+var_50]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_100250E4
mov	esi, 0FFFFFFFDh
jmp	short loc_10025125
mov	esi, [esp+0C0h+arg_24]
push	eax
mov	eax, [esp+0C4h+arg_0]
push	esi
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [esi+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_1002510B
mov	esi, 0FFFFFFFEh
jmp	short loc_10025125
mov	ecx, [esi+8]
push	ecx
push	eax
lea	edx, [esp+0C8h+var_50]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025125
xor	esi, esi
			
lea	eax, [esp+0C0h+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0C4h+var_40]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C8h+var_90]
push	edx
call	sub_10028EF0
lea	eax, [esp+0CCh+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D0h+var_A0]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0D4h+var_80]
push	edx
call	sub_10028EF0
lea	eax, [esp+0D8h+var_70]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0DCh+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0E0h+var_10]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E4h+var_50]
push	eax
call	sub_10028EF0
add	esp, 28h
cmp	[esp+0C0h+var_B0], edi
jnz	short loc_100251DE
cmp	esi, edi
jz	short loc_100251DE
cmp	esi, 0FFFFFFFCh
jz	short loc_100251C9
cmp	esi, 0FFFFFFFDh
jz	short loc_100251C2
cmp	esi, 0FFFFFFFEh
jz	short loc_100251BB
push	0FFFFE001h
jmp	short loc_100251CE
push	0FFFFE013h
jmp	short loc_100251CE
push	0FFFFE002h
jmp	short loc_100251CE
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0C0h+var_B0], 0FFFFFFFFh
			
mov	eax, [esp+0C0h+var_B0]
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 0B0h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0B0h
retn
align 10h
sub	esp, 0C0h
push	ebx
push	ebp
push	edi
xor	edi, edi
mov	[esp+0CCh+var_C0], edi
cmp	[esp+0CCh+arg_0], edi
jz	loc_100257EA
mov	ebx, [esp+0CCh+arg_4]
cmp	ebx, edi
jz	loc_100257EA
cmp	[ebx+8], edi
jz	loc_100257EA
cmp	[ebx+0Ch], edi
jz	loc_100257EA
cmp	[ebx+14h], edi
jz	loc_100257EA
cmp	[ebx+18h], edi
jz	loc_100257EA
cmp	[ebx+20h], edi
jz	loc_100257EA
cmp	[ebx+24h], edi
jz	loc_100257EA
mov	eax, [esp+0CCh+arg_C]
cmp	eax, edi
jz	loc_100257EA
cmp	[eax+4], edi
jz	loc_100257EA
cmp	[eax+8], edi
jz	loc_100257EA
mov	edx, [esp+0CCh+arg_10]
cmp	edx, edi
jz	loc_100257EA
cmp	[edx+4], edi
jz	loc_100257EA
cmp	[edx+8], edi
jz	loc_100257EA
mov	ecx, [esp+0CCh+arg_14]
cmp	ecx, edi
jz	loc_100257EA
cmp	[ecx+4], edi
jz	loc_100257EA
cmp	[ecx+8], edi
jz	loc_100257EA
mov	ecx, [esp+0CCh+arg_18]
cmp	ecx, edi
jz	loc_100257EA
cmp	[ecx+4], edi
jz	loc_100257EA
cmp	[ecx+8], edi
jz	loc_100257EA
mov	ebp, [esp+0CCh+arg_1C]
cmp	ebp, edi
jz	loc_100257EA
cmp	[ebp+4], edi
jz	loc_100257EA
cmp	[ebp+8], edi
jz	loc_100257EA
push	edx
push	eax
call	SECITEM_CompareItem_Util
add	esp, 8
test	eax, eax
jz	loc_100257EA
lea	eax, [esp+0CCh+var_BC]
push	esi
push	eax
mov	[esp+0D4h+var_B0], edi
mov	[esp+0D4h+var_64], edi
mov	[esp+0D4h+var_34], edi
mov	[esp+0D4h+var_54], edi
mov	[esp+0D4h+var_94], edi
mov	[esp+0D4h+var_14], edi
mov	[esp+0D4h+var_44], edi
mov	[esp+0D4h+var_74], edi
mov	[esp+0D4h+var_24], edi
mov	[esp+0D4h+var_4], edi
mov	[esp+0D4h+var_84], edi
mov	[esp+0D4h+var_A8], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_70]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	eax, [esp+0D0h+var_60]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_A0]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	eax, [esp+0D0h+var_50]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_80]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_30]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	eax, [esp+0D0h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_90]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025718
mov	edx, [ebx+0Ch]
mov	eax, [ebx+8]
push	edx
push	eax
lea	ecx, [esp+0D8h+var_BC]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
mov	edx, [ebx+18h]
mov	eax, [ebx+14h]
push	edx
push	eax
lea	ecx, [esp+0D8h+var_70]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
mov	edx, [ebx+24h]
mov	eax, [ebx+20h]
push	edx
push	eax
lea	ecx, [esp+0D8h+var_40]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
mov	eax, [esp+0D0h+arg_14]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+0D8h+var_A0]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
mov	edx, [ebp+8]
mov	eax, [ebp+4]
push	edx
push	eax
lea	ecx, [esp+0D8h+var_80]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_60]
push	edx
lea	eax, [esp+0D4h+var_BC]
push	1
push	eax
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_50]
push	ecx
lea	edx, [esp+0D4h+var_BC]
push	edx
lea	eax, [esp+0D8h+var_70]
push	eax
lea	ecx, [esp+0DCh+var_A0]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_A0]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_10025703
lea	eax, [esp+0D0h+var_60]
push	eax
lea	ecx, [esp+0D4h+var_A0]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_10025703
lea	edx, [esp+0D0h+var_70]
push	edx
lea	eax, [esp+0D4h+var_80]
push	eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_10025703
lea	ecx, [esp+0D0h+var_50]
push	1
push	ecx
call	sub_1002A650
add	esp, 8
test	eax, eax
jnz	loc_10025703
mov	eax, [esp+0D0h+arg_10]
mov	ecx, [esp+0D0h+arg_8]
lea	edx, [esp+0D0h+var_20]
push	edx
mov	edx, [esp+0D4h+arg_14]
push	eax
add	ebx, 1Ch
push	ebx
mov	ebx, [esp+0DCh+arg_18]
push	ecx
mov	ecx, ebx
call	sub_10024A80
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_30]
push	edx
lea	eax, [esp+0D4h+var_BC]
push	eax
lea	ecx, [esp+0D8h+var_80]
push	ecx
lea	edx, [esp+0DCh+var_40]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025718
lea	eax, [esp+0D0h+var_10]
push	eax
lea	ecx, [esp+0D4h+var_BC]
push	ecx
lea	edx, [esp+0D8h+var_20]
push	edx
lea	eax, [esp+0DCh+var_A0]
push	eax
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025718
lea	ecx, [esp+0D0h+var_90]
push	ecx
lea	edx, [esp+0D4h+var_BC]
push	edx
lea	eax, [esp+0D8h+var_10]
push	eax
lea	ecx, [esp+0DCh+var_30]
push	ecx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025718
lea	edx, [esp+0D0h+var_90]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_1002569E
lea	esi, [edi-3]
jmp	short loc_10025718
mov	ecx, [esp+0D0h+arg_0]
push	eax
lea	eax, [esp+0D4h+var_AC]
push	eax
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [esp+0DCh+var_A8]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_100256C3
mov	esi, 0FFFFFFFEh
jmp	short loc_10025718
mov	edx, [esp+0D0h+var_A4]
push	edx
push	eax
lea	eax, [esp+0D8h+var_90]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025718
mov	eax, [esp+0D0h+var_A4]
xor	esi, esi
cmp	eax, [ebx+8]
jnz	short loc_10025703
mov	ecx, [ebx+4]
mov	edx, [esp+0D0h+var_A8]
push	eax
push	ecx
push	edx
call	NSS_SecureMemcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_10025703
mov	[esp+0D0h+var_C0], edi
jmp	short loc_10025718
			
push	0FFFFE00Ah
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0D0h+var_C0], 0FFFFFFFFh
			
lea	eax, [esp+0D0h+var_BC]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0D4h+var_70]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0D8h+var_40]
push	edx
call	sub_10028EF0
lea	eax, [esp+0DCh+var_60]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0E0h+var_A0]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0E4h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+0E8h+var_50]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0ECh+var_80]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0F0h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+0F4h+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0F8h+var_90]
push	ecx
call	sub_10028EF0
add	esp, 2Ch
cmp	[esp+0D0h+var_C0], edi
jnz	short loc_100257DB
cmp	esi, edi
jz	short loc_100257DB
cmp	esi, 0FFFFFFFCh
jz	short loc_100257C6
cmp	esi, 0FFFFFFFDh
jz	short loc_100257BF
cmp	esi, 0FFFFFFFEh
jz	short loc_100257B8
push	0FFFFE001h
jmp	short loc_100257CB
push	0FFFFE013h
jmp	short loc_100257CB
push	0FFFFE002h
jmp	short loc_100257CB
push	0FFFFE005h
			
call	PORT_SetError_Util
add	esp, 4
mov	[esp+0D0h+var_C0], 0FFFFFFFFh
			
mov	eax, [esp+0D0h+var_C0]
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 0C0h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 0C0h
retn
align 10h
sub	esp, 40h
push	ebp
mov	ebp, [esp+44h+arg_0]
push	esi
push	edi
xor	edi, edi
lea	eax, [esp+4Ch+var_10]
push	eax
mov	[esp+50h+var_4], edi
mov	[esp+50h+var_24], edi
mov	[esp+50h+var_14], edi
mov	[esp+50h+var_34], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025956
lea	ecx, [esp+4Ch+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025956
lea	edx, [esp+4Ch+var_20]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025956
lea	eax, [esp+4Ch+var_40]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025956
mov	ecx, [ebx+8]
mov	edx, [ebx+4]
push	ecx
push	edx
lea	eax, [esp+54h+var_10]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025956
mov	ecx, [ebp+8]
mov	edx, [ebp+4]
push	ecx
push	edx
lea	eax, [esp+54h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025956
mov	eax, [esp+4Ch+arg_4]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+54h+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025956
lea	ecx, [esp+4Ch+var_20]
push	ecx
lea	edx, [esp+50h+var_30]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jnz	short loc_10025905
lea	eax, [edi-4]
pop	edi
pop	esi
pop	ebp
add	esp, 40h
retn
lea	eax, [esp+4Ch+var_40]
push	eax
lea	ecx, [esp+50h+var_30]
push	ecx
lea	edx, [esp+54h+var_10]
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025956
lea	eax, [esp+4Ch+var_40]
push	eax
lea	ecx, [esp+50h+var_20]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025956
mov	eax, [esp+4Ch+arg_C]
mov	ecx, [esp+4Ch+arg_8]
push	eax
push	ecx
lea	edx, [esp+54h+var_40]
push	edx
call	sub_1002C150
add	esp, 0Ch
mov	esi, eax
			
lea	eax, [esp+4Ch+var_10]
push	eax
call	sub_10028EF0
lea	ecx, [esp+50h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+54h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+58h+var_40]
push	eax
call	sub_10028EF0
add	esp, 10h
pop	edi
mov	eax, esi
pop	esi
pop	ebp
add	esp, 40h
retn
align 10h
sub	esp, 50h
push	ebx
push	ebp
push	edi
xor	edi, edi
cmp	[esp+5Ch+arg_0], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_4]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_8]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_C]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_10]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_14]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_18]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jnz	loc_10025D99
mov	ebx, [esp+5Ch+arg_24]
mov	ebp, [esp+5Ch+arg_1C]
cmp	ebx, edi
jz	short loc_10025AA0
cmp	[ebx+4], edi
jnz	loc_10025D99
cmp	ebp, edi
jz	loc_10025D99
cmp	[ebp+4], edi
jz	loc_10025D99
cmp	[ebp+8], edi
jz	loc_10025D99
mov	eax, [esp+5Ch+arg_20]
cmp	eax, edi
jz	loc_10025D99
cmp	[eax+4], edi
jz	loc_10025D99
cmp	[eax+8], edi
jz	loc_10025D99
lea	eax, [esp+5Ch+var_20]
push	esi
push	eax
mov	[esp+64h+var_14], edi
mov	[esp+64h+var_24], edi
mov	[esp+64h+var_4], edi
mov	[esp+64h+var_34], edi
mov	[esp+64h+var_44], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025CE7
lea	ecx, [esp+60h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025CE7
lea	edx, [esp+60h+var_50]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025CE7
cmp	ebx, edi
jz	loc_10025C44
lea	eax, [esp+60h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025CE7
lea	ecx, [esp+60h+var_40]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_10025CE7
mov	eax, [esp+60h+arg_8]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+68h+var_30]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025CE7
mov	edx, [ebp+8]
mov	eax, [ebp+4]
push	edx
push	eax
lea	ecx, [esp+68h+var_10]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025CE7
mov	eax, [esp+60h+arg_20]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+68h+var_40]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025CE7
lea	edx, [esp+60h+var_40]
push	edx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_10025CA5
lea	eax, [esp+60h+var_30]
push	eax
lea	ecx, [esp+64h+var_40]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	loc_10025CA5
lea	edx, [esp+60h+var_50]
push	edx
lea	eax, [esp+64h+var_30]
push	eax
lea	ecx, [esp+68h+var_40]
push	ecx
lea	edx, [esp+6Ch+var_10]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_10025CE7
lea	eax, [esp+60h+var_50]
push	eax
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_10025C08
mov	esi, 0FFFFFFFDh
jmp	loc_10025CE7
mov	ecx, [esp+60h+arg_0]
push	eax
push	ebx
push	ecx
call	SECITEM_AllocItem_Util
mov	eax, [ebx+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_10025C28
mov	esi, 0FFFFFFFEh
jmp	loc_10025CE7
mov	edx, [ebx+8]
push	edx
push	eax
lea	eax, [esp+68h+var_50]
push	eax
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025CE7
mov	eax, [esp+60h+arg_4]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+68h+var_20]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_10025CE7
mov	eax, [esp+60h+arg_14]
mov	ebx, [esp+60h+arg_C]
lea	ecx, [esp+60h+var_50]
push	ecx
mov	ecx, [esp+64h+arg_10]
lea	edx, [esp+64h+var_20]
push	edx
push	eax
push	ecx
call	sub_10025810
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_10025CE7
lea	edx, [esp+60h+var_50]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_10025CAC
mov	esi, 0FFFFFFFDh
jmp	short loc_10025CE7
			
mov	esi, 0FFFFFFFCh
jmp	short loc_10025CE7
mov	esi, [esp+60h+arg_18]
push	eax
mov	eax, [esp+64h+arg_0]
push	esi
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [esi+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_10025CCD
mov	esi, 0FFFFFFFEh
jmp	short loc_10025CE7
mov	ecx, [esi+8]
push	ecx
push	eax
lea	edx, [esp+68h+var_50]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_10025CE7
xor	esi, esi
			
lea	eax, [esp+60h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+64h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+68h+var_10]
push	edx
call	sub_10028EF0
lea	eax, [esp+6Ch+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+70h+var_50]
push	ecx
call	sub_10028EF0
add	esp, 14h
cmp	esi, edi
jz	short loc_10025D8F
cmp	esi, 0FFFFFFFCh
jz	short loc_10025D77
cmp	esi, 0FFFFFFFDh
jz	short loc_10025D5F
cmp	esi, 0FFFFFFFEh
jz	short loc_10025D47
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 50h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 50h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 50h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 50h
retn
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 50h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 50h
retn
sub	esp, 60h
push	ebx
push	ebp
push	edi
xor	edi, edi
cmp	[esp+6Ch+arg_0], edi
jz	loc_100261A5
mov	eax, [esp+6Ch+arg_4]
cmp	eax, edi
jz	loc_100261A5
cmp	[eax+4], edi
jz	loc_100261A5
cmp	[eax+8], edi
jz	loc_100261A5
mov	eax, [esp+6Ch+arg_8]
cmp	eax, edi
jz	loc_100261A5
cmp	[eax+4], edi
jz	loc_100261A5
cmp	[eax+8], edi
jz	loc_100261A5
mov	eax, [esp+6Ch+arg_C]
cmp	eax, edi
jz	loc_100261A5
cmp	[eax+4], edi
jz	loc_100261A5
cmp	[eax+8], edi
jz	loc_100261A5
mov	eax, [esp+6Ch+arg_10]
cmp	eax, edi
jz	loc_100261A5
cmp	[eax+4], edi
jz	loc_100261A5
cmp	[eax+8], edi
jz	loc_100261A5
mov	ebx, [esp+6Ch+arg_14]
cmp	ebx, edi
jz	loc_100261A5
cmp	[ebx+4], edi
jz	loc_100261A5
cmp	[ebx+8], edi
jz	loc_100261A5
mov	eax, [esp+6Ch+arg_18]
cmp	eax, edi
jz	loc_100261A5
cmp	[eax+4], edi
jz	loc_100261A5
cmp	[eax+8], edi
jz	loc_100261A5
mov	ebp, [esp+6Ch+arg_1C]
cmp	ebp, edi
jz	loc_100261A5
cmp	[ebp+4], edi
jnz	loc_100261A5
lea	eax, [esp+6Ch+var_50]
push	esi
push	eax
mov	[esp+74h+var_44], edi
mov	[esp+74h+var_24], edi
mov	[esp+74h+var_54], edi
mov	[esp+74h+var_34], edi
mov	[esp+74h+var_14], edi
mov	[esp+74h+var_4], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
lea	ecx, [esp+70h+var_30]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
lea	edx, [esp+70h+var_60]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
lea	eax, [esp+70h+var_40]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
lea	ecx, [esp+70h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
lea	edx, [esp+70h+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100260E9
mov	eax, [esp+70h+arg_8]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+78h+var_30]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
mov	ecx, [ebx+8]
mov	edx, [ebx+4]
push	ecx
push	edx
lea	eax, [esp+78h+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
lea	ecx, [esp+70h+var_40]
push	ecx
lea	edx, [esp+74h+var_60]
push	edx
lea	eax, [esp+78h+var_30]
push	eax
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
mov	eax, [esp+70h+arg_4]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+78h+var_50]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
mov	eax, [esp+70h+arg_10]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+78h+var_60]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
lea	ecx, [esp+70h+var_20]
push	ecx
lea	edx, [esp+74h+var_50]
push	edx
lea	eax, [esp+78h+var_40]
push	eax
lea	ecx, [esp+7Ch+var_60]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_100260E9
mov	eax, [esp+70h+arg_18]
mov	edx, [eax+8]
mov	eax, [eax+4]
push	edx
push	eax
lea	ecx, [esp+78h+var_60]
push	ecx
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100260E9
lea	edx, [esp+70h+var_10]
push	edx
lea	eax, [esp+74h+var_50]
push	eax
lea	ecx, [esp+78h+var_60]
push	ecx
lea	edx, [esp+7Ch+var_20]
push	edx
call	sub_1002C450
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_100260E9
mov	eax, [esp+70h+arg_C]
mov	ecx, [eax+8]
mov	edx, [eax+4]
push	ecx
push	edx
lea	eax, [esp+78h+var_40]
push	eax
call	sub_10029D30
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_100260E9
lea	ecx, [esp+70h+var_60]
push	ecx
lea	edx, [esp+74h+var_50]
push	edx
lea	eax, [esp+78h+var_40]
push	eax
lea	ecx, [esp+7Ch+var_10]
push	ecx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	short loc_100260E9
lea	edx, [esp+70h+var_60]
push	edx
call	sub_10029E60
add	esp, 4
cmp	eax, edi
jg	short loc_100260B2
lea	esi, [edi-3]
jmp	short loc_100260E9
push	eax
mov	eax, [esp+74h+arg_0]
push	ebp
push	eax
call	SECITEM_AllocItem_Util
mov	eax, [ebp+4]
add	esp, 0Ch
cmp	eax, edi
jnz	short loc_100260CF
mov	esi, 0FFFFFFFEh
jmp	short loc_100260E9
mov	ecx, [ebp+8]
push	ecx
push	eax
lea	edx, [esp+78h+var_60]
push	edx
call	sub_10029ED0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	short loc_100260E9
xor	esi, esi
			
lea	eax, [esp+70h+var_50]
push	eax
call	sub_10028EF0
lea	ecx, [esp+74h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+78h+var_60]
push	edx
call	sub_10028EF0
lea	eax, [esp+7Ch+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+80h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+84h+var_10]
push	edx
call	sub_10028EF0
add	esp, 18h
cmp	esi, edi
jz	short loc_1002619B
cmp	esi, 0FFFFFFFCh
jz	short loc_10026183
cmp	esi, 0FFFFFFFDh
jz	short loc_1002616B
cmp	esi, 0FFFFFFFEh
jz	short loc_10026153
push	0FFFFE001h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 60h
retn
push	0FFFFE013h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 60h
retn
push	0FFFFE002h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 60h
retn
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	esi
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 60h
retn
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 60h
retn
			
push	0FFFFE005h
call	PORT_SetError_Util
add	esp, 4
pop	edi
pop	ebp
or	eax, 0FFFFFFFFh
pop	ebx
add	esp, 60h
retn
align 10h
			
mov	ecx, [esp+arg_0]
test	ecx, ecx
jnz	short loc_100261CE
mov	eax, 0FFFFFFFCh
retn
mov	eax, [esp+arg_4]
test	eax, eax
jnz	short loc_100261DA
or	eax, 0FFFFFFFFh
retn
lea	edx, [esp+arg_0]
push	edx
push	eax
push	ecx
call	sub_1002B6F0
add	esp, 0Ch
test	eax, eax
jnz	short locret_100261F5
mov	eax, [esp+arg_0]
neg	eax
sbb	eax, eax
retn
align 10h
mov	eax, [esp+arg_0]
push	esi
xor	esi, esi
test	eax, eax
jnz	short loc_10026210
lea	eax, [esi-4]
pop	esi
retn
push	ebp
xor	ebp, ebp
cmp	[eax+8], esi
jbe	short loc_10026246
push	ebx
mov	ebx, ds:rand
push	edi
mov	edi, 4
call	ebx 
and	eax, 0FFh
shl	esi, 8
or	esi, eax
dec	edi
jnz	short loc_10026225
mov	eax, [esp+10h+arg_0]
mov	ecx, [eax+0Ch]
mov	[ecx+ebp*4], esi
inc	ebp
cmp	ebp, [eax+8]
jb	short loc_10026220
pop	edi
pop	ebx
pop	ebp
xor	eax, eax
pop	esi
retn
align 10h
			
lea	eax, [esp+var_20]
sub	esp, 20h
push	eax
call	sub_1002A030
add	esp, 4
test	eax, eax
jnz	short loc_100262DA
mov	ecx, [esp+20h+arg_4]
push	esi
push	ecx
lea	edx, [esp+28h+var_20]
push	edx
call	sub_10028F70
lea	eax, [esp+2Ch+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_100262CA
mov	eax, [esp+24h+arg_0]
lea	ecx, [esp+24h+var_10]
push	ecx
push	eax
push	eax
lea	edx, [esp+30h+var_20]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	short loc_100262BD
lea	eax, [esp+24h+var_10]
push	eax
lea	ecx, [esp+28h+var_20]
push	ecx
call	sub_1002A680
add	esp, 8
mov	esi, eax
neg	esi
sbb	esi, esi
lea	edx, [esp+24h+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
lea	eax, [esp+24h+var_20]
push	eax
call	sub_10028EF0
add	esp, 4
mov	eax, esi
pop	esi
add	esp, 20h
retn
align 10h
			
sub	esp, 40h
push	ebx
mov	ebx, [esp+44h+arg_0]
push	edi
xor	edi, edi
cmp	ebx, edi
jnz	short loc_100262F8
lea	eax, [edi-4]
pop	edi
pop	ebx
add	esp, 40h
retn
lea	eax, [esp+48h+var_20]
push	esi
push	eax
mov	[esp+50h+var_24], edi
mov	[esp+50h+var_14], edi
mov	[esp+50h+var_4], edi
mov	[esp+50h+var_34], edi
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100264D1
lea	ecx, [esp+4Ch+var_20]
push	ecx
push	1
push	ebx
call	sub_1002B460
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jl	loc_100264D1
lea	edx, [esp+4Ch+var_20]
push	ebp
push	edx
call	sub_10029030
mov	ebp, eax
add	esp, 4
cmp	ebp, edi
jnz	short loc_10026356
or	esi, 0FFFFFFFFh
jmp	loc_100264D0
mov	eax, [ebx+8]
push	eax
lea	ecx, [esp+54h+var_30]
push	ecx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_100264D0
lea	edx, [esp+50h+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100264D0
lea	eax, [esp+50h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, edi
jl	loc_100264D0
push	edi
lea	ecx, [esp+54h+var_10]
push	ecx
lea	edx, [esp+58h+var_20]
push	ebp
push	edx
call	sub_1002A5C0
mov	esi, eax
add	esp, 10h
cmp	esi, edi
jl	loc_100264D0
mov	[esp+50h+arg_0], edi
cmp	[esp+50h+arg_4], edi
jle	loc_100264D0
jmp	short loc_100263D0
align 10h
			
mov	eax, [ebx+8]
push	eax
lea	ecx, [esp+54h+var_30]
push	ecx
call	sub_100291A0
lea	edx, [esp+58h+var_30]
push	edx
call	sub_10026200
lea	eax, [esp+5Ch+var_30]
push	eax
mov	ecx, eax
push	ebx
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 18h
test	esi, esi
js	loc_100264D0
lea	edx, [esp+50h+var_30]
push	1
push	edx
call	sub_1002A650
add	esp, 8
test	eax, eax
jg	short loc_1002641C
dec	edi
jmp	loc_100264C1
lea	eax, [esp+50h+var_40]
push	eax
push	ebx
lea	ecx, [esp+58h+var_10]
push	ecx
lea	edx, [esp+5Ch+var_30]
push	edx
call	sub_100288A0
mov	esi, eax
add	esp, 10h
test	esi, esi
js	loc_100264D0
lea	eax, [esp+50h+var_40]
push	1
push	eax
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_100264BF
lea	ecx, [esp+50h+var_20]
push	ecx
lea	edx, [esp+54h+var_40]
push	edx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_100264BF
or	esi, 0FFFFFFFFh
lea	edi, [esi+2]
cmp	ebp, edi
jbe	short loc_100264D0
lea	eax, [esp+50h+var_40]
push	eax
mov	ecx, eax
push	ebx
push	ecx
call	sub_1002C4A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_100264D0
lea	edx, [esp+50h+var_40]
push	1
push	edx
or	esi, 0FFFFFFFFh
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	short loc_100264D0
lea	eax, [esp+50h+var_20]
push	eax
lea	ecx, [esp+54h+var_40]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_100264BB
inc	edi
cmp	edi, ebp
jb	short loc_10026471
jmp	short loc_100264D0
mov	edi, [esp+50h+arg_0]
			
xor	esi, esi
inc	edi
mov	[esp+50h+arg_0], edi
cmp	edi, [esp+50h+arg_4]
jl	loc_100263D0
			
pop	ebp
			
lea	edx, [esp+4Ch+var_10]
push	edx
call	sub_10028EF0
lea	eax, [esp+50h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+54h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+58h+var_20]
push	edx
call	sub_10028EF0
add	esp, 10h
mov	eax, esi
pop	esi
pop	edi
pop	ebx
add	esp, 40h
retn
align 10h
push	ecx
push	ebx
push	ebp
mov	ebp, [esp+0Ch+Dst]
push	esi
push	edi
mov	edi, [esp+14h+Size]
push	edi		
push	0		
push	ebp		
call	memset
xor	ebx, ebx
add	esp, 0Ch
cmp	[esp+14h+arg_8], ebx
jbe	short loc_10026572
mov	eax, [esp+14h+arg_4]
mov	esi, [eax+ebx*4]
mov	edx, [esp+14h+arg_0]
lea	ecx, [esp+14h+var_4]
push	ecx
push	esi
push	edx
call	sub_1002B6F0
add	esp, 0Ch
test	eax, eax
jnz	short loc_10026574
mov	ecx, [esp+14h+var_4]
test	ecx, ecx
jz	short loc_1002655D
shr	ecx, 1
mov	eax, esi
sub	eax, ecx
cmp	eax, edi
jnb	short loc_1002656B
mov	byte ptr [eax+ebp], 1
add	eax, esi
cmp	eax, edi
jb	short loc_10026561
inc	ebx
cmp	ebx, [esp+14h+arg_8]
jb	short loc_10026531
xor	eax, eax
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
push	ebx
push	ebp
mov	ebp, [esp+8+arg_8]
push	esi
xor	esi, esi
push	edi
test	ebp, ebp
jle	short loc_100265B7
mov	edi, [esp+10h+arg_4]
mov	ebx, [esp+10h+arg_0]
mov	ecx, [edi+esi*4]
lea	eax, [esp+10h+arg_8]
push	eax
push	ecx
push	ebx
call	sub_1002B6F0
add	esp, 0Ch
test	eax, eax
jnz	short loc_100265BA
cmp	[esp+10h+arg_8], eax
jz	short loc_100265BF
inc	esi
cmp	esi, ebp
jl	short loc_10026596
or	eax, 0FFFFFFFFh
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
mov	eax, [esp+10h+arg_C]
test	eax, eax
jz	short loc_100265C9
mov	[eax], esi
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
			
mov	ecx, [esp+arg_0]
push	esi
test	ecx, ecx
jz	short loc_1002661C
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_1002661C
mov	eax, [esi]
cmp	eax, 198Eh
jle	short loc_100265F1
mov	eax, 198Eh
jmp	short loc_100265F5
test	eax, eax
jle	short loc_1002661C
lea	edx, [esp+4+arg_0]
push	edx
push	eax
push	offset dword_10040B08
push	ecx
call	sub_10026580
add	esp, 10h
test	eax, eax
jnz	short loc_10026621
mov	ecx, [esp+4+arg_0]
mov	edx, ds:dword_10040B08[ecx*4]
mov	[esi], edx
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
sub	esp, 28h
push	ebp
xor	ebp, ebp
cmp	[esp+2Ch+arg_0], ebp
jnz	short loc_10026644
lea	eax, [ebp-4]
pop	ebp
add	esp, 28h
retn
push	edi
mov	edi, [esp+30h+arg_4]
cmp	edi, 10h
ja	short loc_10026659
pop	edi
mov	eax, 0FFFFFFFDh
pop	ebp
add	esp, 28h
retn
push	ebx
push	8000h		
call	ds:malloc
mov	ebx, eax
add	esp, 4
mov	[esp+34h+Dst], ebx
cmp	ebx, ebp
jnz	short loc_1002667E
pop	ebx
pop	edi
mov	eax, 0FFFFFFFEh
pop	ebp
add	esp, 28h
retn
lea	eax, [esp+34h+var_10]
push	esi
push	eax
mov	[esp+3Ch+var_4], ebp
mov	[esp+3Ch+var_14], ebp
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1002695B
lea	ecx, [esp+38h+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1002695B
cmp	edi, 514h
jb	short loc_100266C7
mov	ebx, 2
jmp	loc_1002676E
cmp	edi, 352h
jb	short loc_100266D9
mov	ebx, 3
jmp	loc_1002676E
cmp	edi, 28Ah
jb	short loc_100266EB
mov	ebx, 4
jmp	loc_1002676E
cmp	edi, 226h
jb	short loc_100266FA
mov	ebx, 5
jmp	short loc_1002676E
cmp	edi, 1C2h
jb	short loc_10026709
mov	ebx, 6
jmp	short loc_1002676E
cmp	edi, 190h
jb	short loc_10026718
mov	ebx, 7
jmp	short loc_1002676E
cmp	edi, 15Eh
jb	short loc_10026727
mov	ebx, 8
jmp	short loc_1002676E
cmp	edi, 12Ch
jb	short loc_10026736
mov	ebx, 9
jmp	short loc_1002676E
cmp	edi, 0FAh
jb	short loc_10026745
mov	ebx, 0Ch
jmp	short loc_1002676E
cmp	edi, 0C8h
jb	short loc_10026754
mov	ebx, 0Fh
jmp	short loc_1002676E
cmp	edi, 96h
jb	short loc_10026763
mov	ebx, 12h
jmp	short loc_1002676E
cmp	edi, 64h
sbb	ebx, ebx
and	ebx, 17h
add	ebx, 1Bh
			
cmp	[esp+38h+arg_8], ebp
jz	short loc_10026775
dec	edi
mov	eax, [esp+38h+arg_0]
push	1
lea	edx, [edi-1]
push	edx
push	eax
call	sub_10028B90
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10026957
mov	ecx, [esp+38h+arg_0]
push	1
push	0
push	ecx
call	sub_10028B90
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10026957
mov	edx, [esp+38h+arg_0]
push	edx
call	sub_10028CE0
lea	ebp, [eax-1]
add	esp, 4
cmp	ebp, edi
jb	short loc_100267E0
mov	eax, [esp+38h+arg_0]
push	0
push	ebp
push	eax
call	sub_10028B90
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10026957
dec	ebp
cmp	ebp, edi
jnb	short loc_100267C1
mov	ecx, [esp+38h+Dst]
mov	edx, [esp+38h+arg_0]
push	8000h		
push	ecx		
push	198Dh		
push	offset dword_10040B0C 
push	edx		
call	sub_10026510
mov	esi, eax
add	esp, 14h
test	esi, esi
js	loc_10026957
or	esi, 0FFFFFFFFh
xor	ebp, ebp
mov	edi, 198Eh
jmp	short loc_10026820
align 10h
			
mov	eax, [esp+38h+Dst]
cmp	byte ptr [eax+ebp], 0
jnz	loc_10026934
mov	eax, [esp+38h+arg_0]
lea	ecx, [esp+38h+var_10]
push	ecx
lea	edx, [ebp+ebp+0]
push	edx
push	eax
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10026957
lea	ecx, [esp+38h+var_10]
push	2
push	ecx
call	sub_10026250
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002692F
lea	edx, [esp+38h+var_10]
push	ebx
push	edx
call	sub_100262E0
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002692F
cmp	[esp+38h+arg_8], eax
jz	loc_10026945
lea	eax, [esp+38h+var_20]
push	eax
lea	ecx, [esp+3Ch+var_10]
push	ecx
call	sub_1002A0A0
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_10026957
lea	edx, [esp+38h+var_20]
push	edx
mov	eax, edx
push	1
push	eax
call	sub_1002B360
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10026957
lea	ecx, [esp+38h+var_24]
push	ecx
lea	edx, [esp+3Ch+var_20]
push	edx
mov	[esp+40h+var_24], edi
call	sub_100265D0
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	short loc_100268ED
lea	eax, [esp+38h+var_20]
push	eax
call	sub_10028EF0
add	esp, 4
jmp	short loc_10026934
cmp	esi, 0FFFFFFFFh
jnz	short loc_10026957
lea	ecx, [esp+38h+var_20]
push	2
push	ecx
call	sub_10026250
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1002690E
lea	edx, [esp+38h+var_20]
push	edx
jmp	short loc_10026927
lea	eax, [esp+38h+var_20]
push	ebx
push	eax
call	sub_100262E0
mov	esi, eax
add	esp, 8
test	esi, esi
jz	short loc_1002699D
lea	ecx, [esp+38h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 4
			
cmp	esi, 0FFFFFFFFh
jnz	short loc_10026957
			
inc	ebp
cmp	ebp, 8000h
jl	loc_10026820
test	esi, esi
jnz	short loc_10026957
			
mov	edx, [esp+38h+arg_0]
push	edx
lea	eax, [esp+3Ch+var_10]
push	eax
call	sub_1002A050
add	esp, 8
			
mov	ebx, [esp+38h+Dst]
			
lea	ecx, [esp+38h+var_10]
push	ecx
call	sub_10028EF0
lea	edx, [esp+3Ch+var_20]
push	edx
call	sub_10028EF0
mov	eax, [esp+40h+arg_C]
add	esp, 8
test	eax, eax
jz	short loc_1002697C
add	[eax], ebp
push	8000h		
push	0		
push	ebx		
call	memset
push	ebx		
call	ds:free
add	esp, 10h
mov	eax, esi
pop	esi
pop	ebx
pop	edi
pop	ebp
add	esp, 28h
retn
lea	edx, [esp+38h+var_10]
push	edx
lea	eax, [esp+3Ch+var_20]
push	eax
call	sub_1002A050
lea	ecx, [esp+40h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 0Ch
jmp	short loc_10026945
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, [esp+8+arg_4]
mov	eax, [esi+8]
lea	ecx, [eax+eax+1]
push	ecx
push	ebx
call	sub_100291A0
add	esp, 8
test	eax, eax
js	short loc_10026A5C
mov	eax, [esi+8]
push	edi
xor	edi, edi
test	eax, eax
jz	short loc_10026A13
lea	esp, [esp+0]
mov	edx, [ebx+0Ch]
lea	ecx, [edx+edi*4]
mov	edx, [esi+0Ch]
push	ecx
mov	ecx, [ecx]
imul	ecx, [esi+10h]
push	ecx
push	eax
push	edx
call	sub_1002D730
mov	eax, [esi+8]
inc	edi
add	esp, 10h
cmp	edi, eax
jb	short loc_100269F0
mov	eax, [ebx+8]
pop	edi
cmp	eax, 1
jbe	short loc_10026A31
mov	ecx, [ebx+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_10026A31
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10026A23
			
mov	[ebx+8], eax
mov	edx, [esi+8]
push	edx
push	ebx
call	sub_100293C0
push	esi
push	ebx
call	sub_10029C10
add	esp, 10h
test	eax, eax
js	short loc_10026A5A
push	esi
push	ebx
call	sub_100299B0
add	esp, 8
test	eax, eax
js	short loc_10026A5C
xor	eax, eax
			
pop	esi
pop	ebx
retn
align 10h
			
sub	esp, 8
push	ebp
mov	ebp, [esp+0Ch+arg_0]
push	edi
test	ebp, ebp
jz	loc_10026C14
mov	eax, [esp+10h+arg_4]
test	eax, eax
jz	loc_10026C14
mov	edi, [esp+10h+arg_8]
test	edi, edi
jz	loc_10026C14
mov	ecx, [ebp+8]
cmp	ecx, [eax+8]
jnb	short loc_10026A9B
mov	[esp+10h+arg_4], ebp
mov	[esp+10h+arg_0], eax
mov	ebp, eax
mov	edx, [edi+0Ch]
push	ebx
push	esi
mov	esi, [esp+18h+arg_C]
mov	dword ptr [edi+8], 1
mov	dword ptr [edx], 0
mov	ebx, [esi+8]
lea	ebx, [ebx+ebx+1]
push	ebx
push	edi
call	sub_100291A0
add	esp, 8
test	eax, eax
jnz	loc_10026C0C
mov	eax, [esp+18h+arg_4]
mov	eax, [eax+0Ch]
mov	ecx, [edi+0Ch]
mov	ebp, [ebp+8]
mov	edx, [esp+18h+arg_0]
mov	[esp+18h+var_8], eax
mov	eax, [eax]
push	ecx
push	eax
mov	eax, [edx+0Ch]
push	ebp
push	eax
call	sub_1002D600
mov	edx, [edi+0Ch]
add	[esp+28h+var_8], 4
sub	ebx, ebp
lea	ecx, ds:0FFFFFFFCh[ebx*4]
push	ecx		
lea	eax, [edx+ebp*4+4]
push	0		
push	eax		
call	memset
mov	eax, [edi+0Ch]
mov	ecx, [eax]
imul	ecx, [esi+10h]
mov	edx, [esi+8]
push	eax
mov	eax, [esi+0Ch]
push	ecx
push	edx
push	eax
call	sub_1002D730
mov	ecx, [esp+44h+arg_4]
mov	eax, [ecx+8]
mov	ebx, 1
add	esp, 2Ch
mov	[esp+18h+var_4], eax
cmp	eax, ebx
jbe	short loc_10026B94
lea	ebx, [ebx+0]
mov	ecx, [esp+18h+var_8]
mov	eax, [ecx]
add	ecx, 4
mov	[esp+18h+var_8], ecx
test	eax, eax
jz	short loc_10026B6A
mov	edx, [edi+0Ch]
lea	ecx, [edx+ebx*4]
mov	edx, [esp+18h+arg_0]
push	ecx
push	eax
mov	eax, [edx+0Ch]
push	ebp
push	eax
call	sub_1002D730
add	esp, 10h
mov	ecx, [edi+0Ch]
mov	edx, [esi+10h]
imul	edx, [ecx+ebx*4]
lea	eax, [ecx+ebx*4]
mov	ecx, [esi+0Ch]
push	eax
mov	eax, [esi+8]
push	edx
push	eax
push	ecx
call	sub_1002D730
inc	ebx
add	esp, 10h
cmp	ebx, [esp+18h+var_4]
jb	short loc_10026B40
mov	eax, [esp+18h+var_4]
mov	ebp, [esi+8]
cmp	eax, ebp
jnb	short loc_10026BC4
cmp	ebx, ebp
jnb	short loc_10026BC4
nop
mov	edx, [edi+0Ch]
mov	ecx, [esi+10h]
imul	ecx, [edx+ebx*4]
lea	eax, [edx+ebx*4]
mov	edx, [esi+8]
push	eax
mov	eax, [esi+0Ch]
push	ecx
push	edx
push	eax
call	sub_1002D730
inc	ebx
add	esp, 10h
cmp	ebx, ebp
jb	short loc_10026BA0
			
mov	eax, [edi+8]
cmp	eax, 1
jbe	short loc_10026BE1
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_10026BE1
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10026BD3
			
mov	[edi+8], eax
mov	edx, [esi+8]
push	edx
push	edi
call	sub_100293C0
push	esi
push	edi
call	sub_10029C10
add	esp, 10h
test	eax, eax
js	short loc_10026C0A
push	esi
push	edi
call	sub_100299B0
add	esp, 8
test	eax, eax
js	short loc_10026C0C
xor	eax, eax
			
pop	esi
pop	ebx
pop	edi
pop	ebp
add	esp, 8
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	ebp
add	esp, 8
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
mov	esi, [esp+4+arg_8]
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_10026C5B
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, [edi+8]
push	ecx
push	esi
call	sub_10029230
add	esp, 8
test	eax, eax
js	short loc_10026C5A
push	esi
push	0
push	edi
push	esi
call	sub_1002BF60
add	esp, 10h
pop	edi
pop	esi
retn
align 10h
sub	esp, 244h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+244h+var_4], eax
mov	eax, [esp+244h+arg_4]
mov	ecx, [esp+244h+arg_C]
push	ebx
push	ebp
mov	ebp, [esp+24Ch+arg_10]
xor	edx, edx
push	esi
push	edi
mov	edi, [esp+254h+arg_0]
mov	[esp+254h+var_228], eax
mov	[esp+254h+var_22C], ecx
mov	[esp+254h+var_230], edx
mov	[esp+254h+var_208], edx
mov	[esp+254h+var_218], edx
lea	eax, [esp+254h+var_1F8]
mov	ecx, 20h
mov	[eax], edx
add	eax, 10h
dec	ecx
jnz	short loc_10026CB3
mov	eax, [esp+254h+arg_14]
lea	esi, [eax+eax*2+2]
lea	edx, [esp+254h+var_23C]
push	esi
push	edx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
lea	eax, [esp+254h+var_214]
push	esi
push	eax
call	sub_10028D30
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
lea	ecx, [esp+254h+var_204]
push	edi
push	ecx
call	sub_10028D90
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	edx, [edi+8]
mov	eax, [esp+254h+arg_14]
lea	ecx, [eax+edx*2+2]
push	ecx
lea	edx, [esp+258h+var_224]
push	edx
call	sub_10028D30
lea	eax, [esp+25Ch+var_224]
push	eax
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
lea	ecx, [esp+254h+var_224]
push	ebp
push	ecx
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	edi, 1
cmp	[esp+254h+arg_20], edi
jbe	short loc_10026DC3
lea	esi, [esp+254h+var_1F4]
lea	esp, [esp+0]
mov	edx, [esp+254h+var_21C]
mov	eax, [esp+254h+arg_14]
lea	ecx, [eax+edx*2+2]
push	ecx
push	esi
call	sub_10028D30
push	esi
lea	edx, [esp+260h+var_224]
push	edx
lea	eax, [esi-10h]
push	eax
call	sub_1002A260
mov	ebx, eax
add	esp, 14h
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
inc	edi
add	esi, 10h
cmp	edi, [esp+254h+arg_20]
jb	short loc_10026D70
lea	ecx, [esp+254h+var_23C]
push	1
push	ecx
call	sub_10028F70
lea	edx, [esp+25Ch+var_23C]
push	edx
mov	eax, edx
push	eax
call	sub_10028E00
add	esp, 10h
test	eax, eax
js	short loc_10026E0B
mov	ecx, [ebp+8]
push	ecx
lea	edx, [esp+258h+var_23C]
push	edx
call	sub_10029230
add	esp, 8
test	eax, eax
js	short loc_10026E0B
lea	eax, [esp+254h+var_23C]
push	eax
push	0
mov	ecx, eax
push	ebp
push	ecx
call	sub_1002BF60
add	esp, 10h
			
mov	ebx, eax
test	eax, eax
js	loc_10027F50
mov	eax, [esp+254h+arg_18]
sub	eax, [esp+254h+arg_1C]
lea	edi, [esp+254h+var_23C]
lea	esi, [esp+254h+var_214]
mov	[esp+254h+var_240], eax
js	loc_10027F39
jmp	short loc_10026E40
align 10h
			
mov	edx, [esp+254h+arg_1C]
mov	eax, [esp+254h+var_240]
mov	ecx, [esp+254h+var_228]
push	edx
push	eax
push	ecx
call	sub_10028C50
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+arg_1C]
mov	[esp+254h+var_244], ebx
cmp	eax, 1
jnz	short loc_10026EE8
test	ebx, ebx
jnz	short loc_10026EAB
			
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
add	esp, 8
			
mov	ebx, eax
test	ebx, ebx
js	loc_10027F50
mov	eax, edi
mov	edi, esi
mov	esi, eax
jmp	loc_10027F28
test	bl, 1
jz	loc_10027F22
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
lea	edx, [esp+25Ch+var_204]
push	edx
jmp	loc_1002744F
cmp	eax, 4
jnz	loc_100272B9
test	ebx, ebx
jnz	loc_10026F9E
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 1
jz	loc_10027064
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 1
push	ebp
add	eax, eax
push	esi
lea	eax, [esp+eax*8+25Ch+var_204]
push	eax
push	edi
call	sub_10026A60
add	esp, 10h
jmp	loc_10026E96
test	bl, 2
jz	loc_1002713B
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 2
push	ebp
add	eax, eax
push	edi
lea	ecx, [esp+eax*8+25Ch+var_204]
push	ecx
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, edi
mov	edi, esi
mov	esi, eax
jmp	loc_10027F28
test	bl, 4
jz	loc_10027212
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 3
push	ebp
add	eax, eax
push	esi
lea	edx, [esp+eax*8+25Ch+var_204]
push	edx
push	edi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, edi
mov	edi, esi
mov	esi, eax
jmp	loc_10027F28
test	bl, 8
jz	loc_10027F22
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
push	ebp
and	eax, 0FFFFFFF0h
push	edi
lea	eax, [esp+eax+25Ch+var_204]
push	eax
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
cmp	eax, 5
jnz	loc_1002783F
test	ebx, ebx
jnz	loc_1002736F
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
test	bl, 1
jz	loc_10027467
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 1
push	ebp
add	eax, eax
push	edi
lea	ecx, [esp+eax*8+25Ch+var_204]
push	ecx
push	esi
call	sub_10026A60
add	esp, 10h
mov	ebx, eax
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 2
jz	loc_10027560
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 2
push	ebp
add	eax, eax
push	esi
lea	edx, [esp+eax*8+25Ch+var_204]
push	edx
push	edi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 4
jz	loc_10027659
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 3
push	ebp
add	eax, eax
push	edi
lea	eax, [esp+eax*8+25Ch+var_204]
push	eax
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 8
jz	loc_10027750
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
push	ebp
and	eax, 0FFFFFFF0h
push	esi
lea	ecx, [esp+eax+25Ch+var_204]
push	ecx
push	edi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 10h
jz	loc_10027F22
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 5
push	ebp
add	eax, eax
push	edi
lea	edx, [esp+eax*8+25Ch+var_204]
push	edx
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
add	esp, 8
jmp	loc_10027458
cmp	eax, 6
jnz	loc_10027F22
test	ebx, ebx
jnz	loc_10027945
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10027F28
test	bl, 1
jz	loc_10027A5B
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 1
push	ebp
add	eax, eax
push	esi
lea	eax, [esp+eax*8+25Ch+var_204]
push	eax
push	edi
call	sub_10026A60
add	esp, 10h
jmp	loc_10026E96
test	bl, 2
jz	loc_10027B54
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 2
push	ebp
add	eax, eax
push	edi
lea	ecx, [esp+eax*8+25Ch+var_204]
push	ecx
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
test	bl, 4
jz	loc_10027C4D
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 3
push	ebp
add	eax, eax
push	esi
lea	edx, [esp+eax*8+25Ch+var_204]
push	edx
push	edi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
test	bl, 8
jz	loc_10027D44
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
push	ebp
and	eax, 0FFFFFFF0h
push	edi
lea	eax, [esp+eax+25Ch+var_204]
push	eax
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
test	bl, 10h
jz	loc_10027E3D
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 5
push	ebp
add	eax, eax
push	esi
lea	ecx, [esp+eax*8+25Ch+var_204]
push	ecx
push	edi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
jmp	loc_10026E78
test	bl, 20h
jz	loc_10027F22
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
mov	eax, [esp+254h+var_244]
shr	eax, 6
push	ebp
add	eax, eax
push	edi
lea	edx, [esp+eax*8+25Ch+var_204]
push	edx
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_10027F50
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_10027F50
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_10027F50
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_10027F50
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_10027F50
jmp	loc_10026E78
			
call	ds:abort
			
mov	eax, [esp+254h+arg_1C]
sub	[esp+254h+var_240], eax
jns	loc_10026E40
push	ebp
push	edi
call	sub_100269C0
mov	ecx, [esp+25Ch+var_22C]
push	ecx
push	edi
mov	ebx, eax
call	sub_1002A050
add	esp, 10h
			
lea	edx, [esp+254h+var_23C]
push	edx
call	sub_10028EF0
lea	eax, [esp+258h+var_214]
push	eax
call	sub_10028EF0
lea	ecx, [esp+25Ch+var_224]
push	ecx
call	sub_10028EF0
mov	edi, [esp+260h+arg_20]
add	esp, 0Ch
test	edi, edi
jz	short loc_10027F8F
lea	esi, [esp+254h+var_204]
push	esi
call	sub_10028EF0
add	esp, 4
add	esi, 10h
dec	edi
jnz	short loc_10027F80
mov	ecx, [esp+254h+var_4]
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 244h
retn
align 10h
			
push	ecx
mov	eax, [esp+4+arg_8]
mov	ecx, [esp+4+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+0Ch+arg_C]
imul	eax, ebp
push	esi
mov	esi, [esp+10h+arg_0]
lea	edx, [ecx+eax*4]
xor	eax, eax
push	edi
mov	[esp+14h+var_4], edx
mov	[esp+14h+arg_C], eax
add	esi, 0Ch
jmp	short loc_10027FE0
align 10h
			
mov	edx, [esi-4]
mov	ecx, [esi]
add	eax, [esp+14h+arg_4]
cmp	dword ptr [esi-0Ch], 0
lea	edi, [ecx+edx*4]
jnz	short loc_10028035
cmp	edx, [esp+14h+arg_8]
ja	short loc_10028035
cmp	ecx, edi
jnb	short loc_1002800B
lea	esp, [esp+0]
mov	dl, [ecx]
mov	[eax], dl
inc	ecx
add	eax, ebp
cmp	ecx, edi
jb	short loc_10028000
mov	ecx, [esp+14h+var_4]
cmp	eax, ecx
jnb	short loc_1002801C
mov	byte ptr [eax],	0
add	eax, ebp
cmp	eax, ecx
jb	short loc_10028013
mov	eax, [esp+14h+arg_C]
inc	eax
add	esi, 10h
mov	[esp+14h+arg_C], eax
cmp	eax, 4
jb	short loc_10027FE0
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
pop	ecx
retn
			
pop	edi
pop	esi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
pop	ecx
retn
			
mov	edx, [esp+arg_8]
push	edi
mov	edi, [esp+4+arg_0]
mov	eax, [edi+0Ch]
lea	ecx, [eax+edx*4]
mov	dword ptr [edi], 0
mov	[edi+8], edx
cmp	eax, ecx
jnb	short loc_10028073
push	ebp
mov	ebp, [esp+8+arg_C]
push	esi
mov	esi, [esp+0Ch+arg_4]
mov	dl, [esi]
mov	[eax], dl
inc	eax
add	esi, ebp
cmp	eax, ecx
jb	short loc_10028066
pop	esi
pop	ebp
mov	eax, [edi+8]
cmp	eax, 1
jbe	short loc_10028090
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_10028090
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10028082
			
mov	[edi+8], eax
xor	eax, eax
pop	edi
retn
align 10h
sub	esp, 98h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+98h+var_4], eax
mov	eax, [esp+98h+arg_0]
mov	ecx, [esp+98h+arg_C]
push	ebx
mov	ebx, [esp+9Ch+arg_20]
mov	[esp+9Ch+var_84], eax
mov	eax, [esp+9Ch+arg_14]
lea	edx, ds:1[eax*4]
imul	edx, ebx
push	ebp
mov	ebp, [esp+0A0h+arg_10]
push	esi
mov	esi, [esp+0A4h+arg_4]
push	edi
xor	edi, edi
push	edx		
mov	[esp+0ACh+var_70], esi
mov	[esp+0ACh+var_58], ecx
mov	[esp+0ACh+var_8C], eax
mov	[esp+0ACh+var_94], ebx
mov	[esp+0ACh+var_74], edi
mov	[esp+0ACh+var_60], edi
mov	[esp+0ACh+var_38], edi
mov	[esp+0ACh+var_28], edi
mov	[esp+0ACh+var_18], edi
mov	[esp+0ACh+var_8], edi
mov	[esp+0ACh+var_48], edi
call	ds:malloc
add	esp, 4
mov	[esp+0A8h+Memory], eax
cmp	eax, edi
jnz	short loc_10028141
lea	ebx, [edi-2]
jmp	loc_1002880D
mov	ecx, [esp+0A8h+arg_18]
lea	eax, [ebx+eax-1]
neg	ebx
and	eax, ebx
mov	[esp+0A8h+var_88], eax
mov	eax, [esp+0A8h+arg_1C]
push	eax
sub	ecx, eax
push	ecx
push	esi
call	sub_10028C50
mov	ebx, eax
add	esp, 0Ch
cmp	ebx, edi
jl	loc_1002880D
mov	esi, [esp+0A8h+var_8C]
lea	esi, [esi+esi*2+2]
lea	edx, [esp+0A8h+var_80]
push	esi
push	edx
mov	[esp+0B0h+var_90], ebx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	eax, [esp+0A8h+var_6C]
push	esi
push	eax
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	ecx, [esp+0A8h+var_54]
push	esi
push	ecx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
cmp	[esp+0A8h+var_94], 2
jbe	loc_10028327
lea	edx, [esp+0A8h+var_44]
push	esi
push	edx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	eax, [esp+0A8h+var_34]
push	esi
push	eax
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	ecx, [esp+0A8h+var_24]
push	esi
push	ecx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	edx, [esp+0A8h+var_14]
push	esi
push	edx
call	sub_10028D30
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	eax, [esp+0A8h+var_44]
push	1
push	eax
call	sub_10028F70
lea	ecx, [esp+0B0h+var_44]
push	ecx
mov	edx, ecx
push	ebp
push	edx
call	sub_10026C20
mov	ebx, eax
add	esp, 14h
cmp	ebx, edi
jl	loc_1002880D
mov	esi, [esp+0A8h+var_84]
lea	eax, [esp+0A8h+var_34]
push	eax
push	esi
call	sub_10028E00
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	ecx, [esp+0A8h+var_24]
push	ecx
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
lea	edx, [esp+0A8h+var_24]
push	ebp
push	edx
call	sub_100269C0
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
push	ebp
lea	eax, [esp+0ACh+var_14]
push	eax
lea	ecx, [esp+0B0h+var_24]
push	esi
push	ecx
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jl	loc_1002880D
mov	esi, [esp+0A8h+var_94]
mov	edx, [esp+0A8h+var_8C]
mov	eax, [esp+0A8h+var_88]
push	esi
push	edx
push	eax
lea	ecx, [esp+0B4h+var_44]
push	ecx
call	sub_10027FB0
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jl	loc_1002880D
mov	eax, [esp+0A8h+var_90]
cmp	eax, 4
jnb	short loc_10028364
lea	edx, [esp+0A8h+var_80]
add	eax, eax
push	edx
lea	eax, [esp+eax*8+0ACh+var_44]
push	eax
call	sub_10028E00
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
mov	[esp+0A8h+var_90], esi
jmp	short loc_10028364
lea	ecx, [esp+0A8h+var_80]
cmp	[esp+0A8h+var_90], edi
jnz	short loc_1002834C
push	1
push	ecx
call	sub_10028F70
lea	edx, [esp+0B0h+var_80]
push	edx
mov	eax, edx
push	ebp
push	eax
call	sub_10026C20
add	esp, 14h
jmp	short loc_1002835A
mov	edx, [esp+0A8h+var_84]
push	ecx
push	edx
call	sub_10028E00
add	esp, 8
mov	ebx, eax
cmp	ebx, edi
jl	loc_1002880D
			
mov	eax, 4
mov	[esp+0A8h+var_98], eax
cmp	[esp+0A8h+var_94], eax
jbe	loc_100284DC
jmp	short loc_10028384
align 10h
mov	eax, [esp+0A8h+var_98]
mov	esi, eax
and	esi, 3
test	al, 1
jz	loc_10028425
mov	ecx, [esp+0A8h+var_84]
mov	eax, esi
add	eax, eax
lea	eax, [esp+eax*8+0A8h+var_44]
push	ebp
push	eax
push	ecx
add	eax, 0FFFFFFF0h
push	eax
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jl	loc_1002880D
cmp	esi, 3
jnz	loc_100284C9
mov	esi, [esp+0A8h+var_94]
mov	edx, [esp+0A8h+var_8C]
mov	eax, [esp+0A8h+var_98]
mov	ecx, [esp+0A8h+var_88]
push	esi
push	edx
lea	edx, [eax+ecx-3]
push	edx
lea	eax, [esp+0B4h+var_44]
push	eax
call	sub_10027FB0
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jl	loc_1002880D
mov	eax, [esp+0A8h+var_90]
cmp	eax, [esp+0A8h+var_98]
ja	loc_100284C9
and	eax, 3
lea	ecx, [esp+0A8h+var_80]
add	eax, eax
push	ecx
lea	edx, [esp+eax*8+0ACh+var_44]
push	edx
call	sub_10028E00
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
mov	[esp+0A8h+var_90], esi
jmp	loc_100284C9
cmp	eax, 8
jbe	short loc_10028460
mov	ecx, [esp+0A8h+var_94]
mov	edx, [esp+0A8h+var_8C]
push	ecx
shr	eax, 1
add	eax, [esp+0ACh+var_88]
push	edx
push	eax
lea	eax, [esp+0B4h+var_6C]
push	eax
call	sub_10028040
mov	ebx, eax
add	esp, 10h
cmp	ebx, edi
jl	loc_1002880D
add	esi, esi
lea	esi, [esp+esi*8+0A8h+var_44]
push	esi
lea	ecx, [esp+0ACh+var_6C]
push	ecx
jmp	short loc_100284A3
shr	eax, 1
and	eax, 3
cmp	eax, esi
jnz	short loc_10028495
lea	edx, [esp+0A8h+var_6C]
add	eax, eax
push	edx
lea	eax, [esp+eax*8+0ACh+var_44]
push	eax
call	sub_10028E00
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
add	esi, esi
lea	esi, [esp+esi*8+0A8h+var_44]
push	esi
lea	ecx, [esp+0ACh+var_6C]
push	ecx
jmp	short loc_100284A3
add	esi, esi
lea	esi, [esp+esi*8+0A8h+var_44]
add	eax, eax
push	esi
lea	edx, [esp+eax*8+0ACh+var_44]
push	edx
			
call	sub_1002A440
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
cmp	ebx, edi
jl	loc_1002880D
			
mov	eax, [esp+0A8h+var_98]
inc	eax
mov	[esp+0A8h+var_98], eax
cmp	eax, [esp+0A8h+var_94]
jb	loc_10028380
mov	eax, [esp+0A8h+arg_1C]
lea	ecx, [eax+eax]
mov	eax, [esp+0A8h+arg_18]
sub	eax, ecx
lea	edi, [esp+0A8h+var_80]
lea	esi, [esp+0A8h+var_6C]
mov	[esp+0A8h+var_98], eax
js	loc_100287F6
mov	edx, [esp+0A8h+arg_1C]
mov	eax, [esp+0A8h+var_98]
mov	ecx, [esp+0A8h+var_70]
push	edx
push	eax
push	ecx
call	sub_10028C50
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
js	loc_1002880D
mov	eax, [esp+0A8h+arg_1C]
dec	eax
mov	[esp+0A8h+var_90], ebx
cmp	eax, 5		
ja	loc_100287DF	
jmp	ds:off_10028888[eax*4] 
			
test	ebx, ebx	
jnz	short loc_10028568
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
add	esp, 8
jmp	loc_100286CC
test	bl, 1
jz	loc_100287DF	
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
mov	edx, [esp+0A8h+var_84]
jmp	loc_100287CB
			
push	esi		
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
			
push	esi		
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
mov	eax, [esp+0A8h+var_94]
mov	ecx, [esp+0A8h+var_8C]
mov	edx, [esp+0A8h+var_90]
add	edx, [esp+0A8h+var_88]
push	eax
push	ecx
push	edx
lea	ecx, [esp+0B4h+var_54]
push	ecx
call	sub_10028040
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
lea	edx, [esp+0B0h+var_54]
push	edx
push	edi
call	sub_10026A60
add	esp, 10h
mov	ebx, eax
test	ebx, ebx
js	loc_1002880D
mov	eax, edi
mov	edi, esi
mov	esi, eax
jmp	loc_100287E5
			
push	esi		
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	edi
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	ebp
push	edi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002880D
push	esi
push	edi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_1002880D
push	ebp
push	esi
call	sub_100269C0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	short loc_1002880D
mov	eax, [esp+0A8h+var_94]
mov	ecx, [esp+0A8h+var_8C]
mov	edx, [esp+0A8h+var_90]
add	edx, [esp+0A8h+var_88]
push	eax
push	ecx
push	edx
lea	ecx, [esp+0B4h+var_54]
push	ecx
call	sub_10028040
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	short loc_1002880D
lea	edx, [esp+0A8h+var_54]
push	ebp
push	edi
push	edx
push	esi
call	sub_10026A60
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
js	short loc_1002880D
jmp	short loc_100287E5
			
call	ds:abort	
			
mov	eax, [esp+0A8h+arg_1C]
sub	[esp+0A8h+var_98], eax
jns	loc_10028501
push	ebp
push	edi
call	sub_100269C0
mov	ecx, [esp+0B0h+var_58]
push	ecx
push	edi
mov	ebx, eax
call	sub_1002A050
add	esp, 10h
			
lea	edx, [esp+0A8h+var_80]
push	edx
call	sub_10028EF0
lea	eax, [esp+0ACh+var_6C]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0B0h+var_44]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0B4h+var_34]
push	edx
call	sub_10028EF0
lea	eax, [esp+0B8h+var_24]
push	eax
call	sub_10028EF0
lea	ecx, [esp+0BCh+var_14]
push	ecx
call	sub_10028EF0
lea	edx, [esp+0C0h+var_54]
push	edx
call	sub_10028EF0
mov	eax, [esp+0C4h+Memory]
push	eax		
call	ds:free
mov	ecx, [esp+0C8h+var_4]
add	esp, 20h
pop	edi
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 98h
retn
align 4
dd offset loc_100287DF	
dd offset loc_100287DF
dd offset loc_100285F2
dd offset loc_100286E1
dd offset loc_100285A2
			
sub	esp, 38h
push	ebp
mov	ebp, [esp+3Ch+arg_8]
push	ebp
call	sub_10028FE0
add	esp, 4
test	eax, eax
jnz	short loc_100288D2
mov	eax, [esp+3Ch+arg_C]
mov	ecx, [esp+3Ch+arg_4]
mov	edx, [esp+3Ch+arg_0]
push	eax
push	ebp
push	ecx
push	edx
call	sub_1002C4E0
add	esp, 10h
pop	ebp
add	esp, 38h
retn
push	ebx
mov	ebx, [esp+40h+arg_0]
push	esi
push	edi
xor	eax, eax
push	ebp
push	ebx
mov	[esp+50h+var_28], eax
mov	[esp+50h+var_18], eax
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	short loc_100288F5
mov	edi, ebx
jmp	short loc_10028927
lea	eax, [esp+48h+var_24]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_10028AEF
lea	edi, [esp+48h+var_24]
mov	ecx, edi
push	ecx
push	ebp
push	ebx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_10028AEF
mov	eax, [ebp+8]
lea	edx, [eax+eax+2]
mov	[esp+48h+var_38], eax
push	edx
lea	eax, [esp+4Ch+var_34]
push	eax
call	sub_10028D30
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_10028AEF
mov	ecx, [ebp+0]
mov	eax, [ebp+8]
mov	edx, [ebp+4]
mov	[esp+48h+var_14], ecx
mov	ecx, [ebp+0Ch]
mov	[esp+48h+var_10], edx
mov	[esp+48h+var_C], eax
mov	[esp+48h+var_8], ecx
mov	eax, [ecx]
push	eax
call	sub_100290C0
lea	ecx, [esp+4Ch+var_34]
push	ecx
neg	eax
push	edi
mov	[esp+54h+var_4], eax
call	sub_10028E00
add	esp, 0Ch
test	eax, eax
js	short loc_100289B3
mov	edx, [esp+48h+var_C]
push	edx
lea	eax, [esp+4Ch+var_34]
push	eax
call	sub_10029230
add	esp, 8
test	eax, eax
js	short loc_100289B3
lea	ecx, [esp+48h+var_34]
push	ecx
push	0
lea	edx, [esp+50h+var_14]
push	edx
mov	eax, ecx
push	eax
call	sub_1002BF60
add	esp, 10h
			
mov	esi, eax
test	eax, eax
js	loc_10028AEF
mov	ecx, [esp+48h+arg_4]
push	ecx
call	sub_10028CE0
add	esp, 4
cmp	dword_100490F0,	0
mov	edi, eax
jz	short loc_100289FC
cmp	edi, 30Ch
jbe	short loc_100289E4
mov	esi, 6
jmp	short loc_10028A27
cmp	edi, 100h
jbe	short loc_100289F3
mov	esi, 5
jmp	short loc_10028A27
mov	edx, 14h
cmp	edx, edi
jmp	short loc_10028A21
cmp	edi, 1E0h
jbe	short loc_10028A0B
mov	esi, 6
jmp	short loc_10028A27
cmp	edi, 0A0h
jbe	short loc_10028A1A
mov	esi, 5
jmp	short loc_10028A27
mov	eax, 14h
cmp	eax, edi
sbb	esi, esi
and	esi, 3
inc	esi
			
mov	eax, dword_1004B750
test	eax, eax
jnz	short loc_10028A48
call	sub_1002DD00
test	eax, eax
jnz	short loc_10028AA7
mov	dword_100490F0,	eax
mov	eax, 6
			
mov	dword_1004B750,	eax
cmp	dword_100490F0,	0
jz	short loc_10028A57
cmp	esi, eax
jbe	short loc_10028A57
mov	esi, eax
			
xor	edx, edx
mov	eax, edi
div	esi
lea	ecx, [esi-1]
mov	ebx, 1
shl	ebx, cl
test	edx, edx
jz	short loc_10028A71
mov	ecx, esi
sub	ecx, edx
add	edi, ecx
cmp	dword_100490F0,	0
jz	short loc_10028AC8
mov	eax, [esp+48h+var_38]
mov	ecx, esi
mov	edx, 1
shl	edx, cl
lea	ecx, [esp+48h+var_14]
push	edx
mov	edx, [esp+4Ch+arg_C]
push	esi
push	edi
push	eax
mov	eax, [esp+58h+arg_4]
push	ecx
push	edx
push	ebp
push	eax
lea	ecx, [esp+68h+var_34]
push	ecx
call	sub_100280A0
jmp	short loc_10028AEA
cmp	eax, 40h
jnb	short loc_10028A3E
cmp	eax, 20h
jb	short loc_10028AB8
mov	eax, 5
jmp	short loc_10028A43
cmp	eax, 10h
sbb	eax, eax
and	eax, 0FFFFFFFDh
add	eax, 4
jmp	loc_10028A43
mov	edx, [esp+48h+var_38]
mov	ecx, [esp+48h+arg_C]
push	ebx
push	esi
push	edi
push	edx
mov	edx, [esp+58h+arg_4]
lea	eax, [esp+58h+var_14]
push	eax
push	ecx
push	ebp
push	edx
lea	eax, [esp+68h+var_34]
push	eax
call	sub_10026C60
mov	esi, eax
add	esp, 24h
			
lea	ecx, [esp+48h+var_34]
push	ecx
call	sub_10028EF0
lea	edx, [esp+4Ch+var_24]
push	edx
call	sub_10028EF0
add	esp, 8
pop	edi
mov	eax, esi
pop	esi
pop	ebx
pop	ebp
add	esp, 38h
retn
			
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_10028B41
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_10028B41
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_10028B46
mov	eax, [esp+4+arg_8]
push	eax
push	esi
call	sub_10029570
add	esp, 8
xor	eax, eax
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_10028B7F
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_10028B7F
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_10028B84
mov	eax, [esp+4+arg_8]
push	eax
push	esi
call	sub_100292D0
add	esp, 8
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_10028B9E
lea	eax, [edi-4]
pop	edi
retn
push	ebx
mov	ebx, [esp+8+arg_4]
push	esi
mov	esi, ebx
shr	esi, 5
lea	eax, [esi+1]
cmp	eax, [edi+8]
jbe	short loc_10028BBF
push	eax
push	edi
call	sub_100291A0
add	esp, 8
test	eax, eax
jnz	short loc_10028C09
mov	ecx, ebx
and	ecx, 1Fh
mov	eax, 1
shl	eax, cl
cmp	[esp+0Ch+arg_8], 0
jz	short loc_10028BDD
mov	ecx, [edi+0Ch]
or	[ecx+esi*4], eax
lea	ecx, [ecx+esi*4]
jmp	short loc_10028BE7
mov	edx, [edi+0Ch]
lea	ecx, [edx+esi*4]
not	eax
and	[ecx], eax
mov	eax, [edi+8]
cmp	eax, 1
jbe	short loc_10028C04
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_10028C04
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10028BF6
			
mov	[edi+8], eax
xor	eax, eax
pop	esi
pop	ebx
pop	edi
retn
align 10h
			
mov	edx, [esp+arg_0]
test	edx, edx
jnz	short loc_10028C1C
lea	eax, [edx-4]
retn
mov	ecx, [esp+arg_4]
push	esi
mov	esi, [edx+8]
mov	eax, ecx
dec	esi
shr	eax, 5
cmp	eax, esi
pop	esi
jbe	short loc_10028C35
mov	eax, 0FFFFFFFDh
retn
mov	edx, [edx+0Ch]
mov	eax, [edx+eax*4]
and	ecx, 1Fh
shr	eax, cl
and	eax, 1
retn
align 10h
			
mov	ecx, [esp+arg_8]
push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
mov	eax, [ebp+0Ch]
push	esi
push	edi
mov	edi, [esp+10h+arg_4]
mov	edx, edi
shr	edx, 5
lea	ebx, [eax+edx*4]
mov	eax, 1
shl	eax, cl
mov	esi, edi
and	esi, 1Fh
dec	eax
cmp	ecx, 20h
jb	short loc_10028C87
pop	edi
pop	esi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
retn
mov	ebp, [ebp+8]
add	edi, 1Fh
shr	edi, 5
cmp	edi, ebp
jbe	short loc_10028C9E
pop	edi
pop	esi
pop	ebp
mov	eax, 0FFFFFFFDh
pop	ebx
retn
add	ecx, esi
cmp	ecx, 20h
jbe	short loc_10028CC5
inc	edx
cmp	edx, ebp
jnb	short loc_10028CC5
mov	edx, [ebx+4]
mov	edi, [ebx]
mov	ecx, 20h
sub	ecx, esi
shl	edx, cl
mov	ecx, esi
shr	edi, cl
or	edx, edi
pop	edi
pop	esi
pop	ebp
and	eax, edx
pop	ebx
retn
			
mov	edx, [ebx]
mov	ecx, esi
pop	edi
shr	edx, cl
pop	esi
pop	ebp
pop	ebx
and	eax, edx
retn
align 10h
			
mov	ecx, [esp+arg_0]
xor	eax, eax
test	ecx, ecx
jnz	short loc_10028CEE
lea	eax, [ecx-4]
retn
mov	edx, [ecx+8]
test	edx, edx
jle	short loc_10028D17
mov	ecx, [ecx+0Ch]
push	esi
lea	esi, [ecx+edx*4]
lea	esp, [esp+0]
mov	ecx, [esi-4]
sub	esi, 4
dec	edx
test	ecx, ecx
jnz	short loc_10028D11
test	edx, edx
jg	short loc_10028D00
jmp	short loc_10028D16
			
inc	eax
shr	ecx, 1
jnz	short loc_10028D11
pop	esi
shl	edx, 5
add	eax, edx
jnz	short locret_10028D23
mov	eax, 1
retn
align 10h
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jz	short loc_10028D85
mov	eax, [esp+4+arg_4]
test	eax, eax
jz	short loc_10028D85
mov	ecx, dword_10049218
lea	eax, [ecx+eax-1]
xor	edx, edx
div	ecx
push	esi
push	4		
mov	esi, eax
imul	esi, ecx
push	esi		
call	ds:calloc
add	esp, 8
mov	[edi+0Ch], eax
test	eax, eax
jnz	short loc_10028D70
pop	esi
mov	eax, 0FFFFFFFEh
pop	edi
retn
mov	[edi+4], esi
pop	esi
mov	dword ptr [edi], 0
mov	dword ptr [edi+8], 1
xor	eax, eax
pop	edi
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
retn
align 10h
			
push	esi
push	edi
mov	edi, [esp+8+arg_0]
test	edi, edi
jz	short loc_10028DEE
mov	esi, [esp+8+arg_4]
test	esi, esi
jz	short loc_10028DEE
cmp	edi, esi
jz	short loc_10028DE9
mov	eax, [esi+4]
push	4		
push	eax		
call	ds:calloc
add	esp, 8
mov	[edi+0Ch], eax
test	eax, eax
jnz	short loc_10028DC4
pop	edi
mov	eax, 0FFFFFFFEh
pop	esi
retn
mov	ecx, [esi+8]
mov	edx, [esi+0Ch]
add	ecx, ecx
add	ecx, ecx
push	ecx		
push	edx		
push	eax		
call	memcpy
mov	eax, [esi+8]
mov	[edi+8], eax
mov	ecx, [esi+4]
mov	[edi+4], ecx
mov	edx, [esi]
add	esp, 0Ch
mov	[edi], edx
pop	edi
xor	eax, eax
pop	esi
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
push	esi
push	edi
mov	edi, [esp+8+arg_0]
test	edi, edi
jz	loc_10028EE6
mov	esi, [esp+8+arg_4]
test	esi, esi
jz	loc_10028EE6
cmp	edi, esi
jnz	short loc_10028E23
pop	edi
xor	eax, eax
pop	esi
retn
mov	eax, [esi+4]
push	ebx
push	ebp
mov	ebp, [edi+8]
cmp	eax, ebp
jb	short loc_10028E6F
mov	ecx, ebp
sub	eax, ecx
add	eax, eax
add	eax, eax
push	eax		
mov	eax, [esi+0Ch]
lea	ecx, [eax+ecx*4]
push	0		
push	ecx		
call	memset
mov	edx, [edi+8]
mov	eax, [edi+0Ch]
mov	ecx, [esi+0Ch]
add	edx, edx
add	edx, edx
push	edx		
push	eax		
push	ecx		
call	memcpy
mov	ecx, [edi+8]
add	esp, 18h
pop	ebp
mov	[esi+8], ecx
mov	edx, [edi]
pop	ebx
pop	edi
mov	[esi], edx
xor	eax, eax
pop	esi
retn
mov	edx, [edi+4]
push	4		
push	edx		
call	ds:calloc
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_10028E8C
pop	ebp
lea	eax, [ebx-2]
pop	ebx
pop	edi
pop	esi
retn
mov	ecx, [edi+0Ch]
lea	eax, ds:0[ebp*4]
push	eax		
push	ecx		
push	ebx		
call	memcpy
mov	eax, [esi+0Ch]
add	esp, 0Ch
test	eax, eax
jz	short loc_10028ECC
mov	edx, [esi+4]
add	edx, edx
add	edx, edx
push	edx		
push	0		
push	eax		
call	memset
mov	eax, [esi+0Ch]
add	esp, 0Ch
test	eax, eax
jz	short loc_10028ECC
push	eax		
call	ds:free
add	esp, 4
			
mov	[esi+0Ch], ebx
mov	eax, [edi+4]
mov	[esi+4], eax
mov	ecx, [edi+8]
pop	ebp
mov	[esi+8], ecx
mov	edx, [edi]
pop	ebx
pop	edi
mov	[esi], edx
xor	eax, eax
pop	esi
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10028F39
mov	eax, [esi+0Ch]
test	eax, eax
jz	short loc_10028F2B
mov	ecx, [esi+4]
add	ecx, ecx
add	ecx, ecx
push	ecx		
push	0		
push	eax		
call	memset
mov	eax, [esi+0Ch]
add	esp, 0Ch
test	eax, eax
jz	short loc_10028F24
push	eax		
call	ds:free
add	esp, 4
mov	dword ptr [esi+0Ch], 0
mov	dword ptr [esi+8], 0
mov	dword ptr [esi+4], 0
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10028F6C
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
pop	esi
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jz	short loc_10028FA5
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
mov	edx, [esi+0Ch]
mov	eax, [esp+10h+arg_4]
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
add	esp, 0Ch
mov	[edx], eax
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	dword ptr [eax], 1
jnz	short loc_10028FBD
or	eax, 0FFFFFFFFh
retn
cmp	dword ptr [eax+8], 1
jnz	short loc_10028FCE
mov	eax, [eax+0Ch]
cmp	dword ptr [eax], 0
jnz	short loc_10028FCE
xor	eax, eax
retn
			
mov	eax, 1
retn
align 10h
			
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_10028FE9
retn
mov	eax, [eax+0Ch]
mov	eax, [eax]
and	eax, 1
retn
align 10h
			
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_10029012
xor	ecx, ecx
test	eax, eax
setz	cl
mov	eax, ecx
retn
mov	eax, [eax+0Ch]
mov	eax, [eax]
and	eax, 1
xor	ecx, ecx
test	eax, eax
setz	cl
mov	eax, ecx
retn
align 10h
			
push	edi
mov	edi, [esp+4+arg_0]
xor	eax, eax
test	edi, edi
jz	short loc_100290AF
mov	edx, [edi+0Ch]
test	edx, edx
jz	short loc_100290AF
cmp	dword ptr [edi], 1
jz	short loc_10029051
cmp	dword ptr [edi+8], 1
jnz	short loc_10029051
cmp	[edx], eax
jz	short loc_100290AF
			
mov	ecx, [edx]
push	esi
xor	esi, esi
test	ecx, ecx
jnz	short loc_10029072
mov	edi, [edi+8]
lea	ecx, [ecx+0]
cmp	esi, edi
jnb	short loc_100290A6
mov	ecx, [edx+4]
add	edx, 4
add	eax, 20h
inc	esi
test	ecx, ecx
jz	short loc_10029060
			
test	cx, cx
jnz	short loc_1002907D
shr	ecx, 10h
add	eax, 10h
test	cl, cl
jnz	short loc_10029087
shr	ecx, 8
add	eax, 8
test	cl, 0Fh
jnz	short loc_10029092
shr	ecx, 4
add	eax, 4
test	cl, 3
jnz	short loc_1002909D
shr	ecx, 2
add	eax, 2
test	cl, 1
jnz	short loc_100290A3
inc	eax
pop	esi
pop	edi
retn
test	ecx, ecx
jnz	short loc_10029072
pop	esi
xor	eax, eax
pop	edi
retn
			
xor	eax, eax
pop	edi
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	edx, eax
imul	edx, eax
mov	ecx, 2
sub	ecx, edx
imul	ecx, eax
push	esi
mov	esi, ecx
imul	esi, eax
mov	edx, 2
sub	edx, esi
imul	edx, ecx
mov	esi, edx
imul	esi, eax
mov	ecx, 2
sub	ecx, esi
imul	ecx, edx
mov	edx, ecx
imul	edx, eax
mov	eax, 2
sub	eax, edx
imul	eax, ecx
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_4]
push	ebx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
cmp	eax, [esi+4]
jbe	short loc_1002918B
mov	ecx, dword_10049218
lea	eax, [ecx+eax-1]
xor	edx, edx
div	ecx
push	4		
mov	edi, eax
imul	edi, ecx
push	edi		
call	ds:calloc
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_1002914C
pop	edi
pop	esi
lea	eax, [ebx-2]
pop	ebx
retn
mov	eax, [esi+8]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	ecx		
push	ebx		
call	memcpy
mov	edx, [esi+4]
mov	eax, [esi+0Ch]
add	edx, edx
add	edx, edx
push	edx		
push	0		
push	eax		
call	memset
mov	eax, [esi+0Ch]
add	esp, 18h
test	eax, eax
jz	short loc_10029185
push	eax		
call	ds:free
add	esp, 4
mov	[esi+0Ch], ebx
mov	[esi+4], edi
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
			
push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+8]
push	edi
mov	edi, [esp+8+arg_4]
cmp	edi, eax
jbe	short loc_100291E4
cmp	edi, [esi+4]
jbe	short loc_100291C7
push	edi
push	esi
call	sub_10029110
add	esp, 8
test	eax, eax
jz	short loc_100291E1
pop	edi
pop	esi
retn
mov	edx, [esi+0Ch]
mov	ecx, edi
sub	ecx, eax
add	ecx, ecx
add	ecx, ecx
push	ecx		
lea	eax, [edx+eax*4]
push	0		
push	eax		
call	memset
add	esp, 0Ch
mov	[esi+8], edi
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
mov	ecx, [esp+arg_4]
mov	eax, [esp+arg_0]
mov	edx, [eax]
push	ebx
mov	ebx, [eax+0Ch]
push	ebp
mov	ebp, [ecx]
push	esi
mov	esi, [eax+4]
push	edi
mov	edi, [eax+8]
mov	[eax], ebp
mov	ebp, [ecx+4]
mov	[eax+4], ebp
mov	ebp, [ecx+8]
mov	[eax+8], ebp
mov	ebp, [ecx+0Ch]
mov	[eax+0Ch], ebp
mov	[ecx], edx
mov	[ecx+4], esi
mov	[ecx+8], edi
pop	edi
pop	esi
pop	ebp
mov	[ecx+0Ch], ebx
pop	ebx
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_4]
test	ebx, ebx
jnz	short loc_1002923D
xor	eax, eax
pop	ebx
retn
push	esi
mov	esi, [esp+8+arg_0]
mov	eax, [esi+8]
cmp	eax, 1
jnz	short loc_10029257
mov	ecx, [esi+0Ch]
cmp	dword ptr [ecx], 0
jnz	short loc_10029257
pop	esi
xor	eax, eax
pop	ebx
retn
			
push	edi
lea	edi, [eax+ebx]
cmp	edi, eax
jbe	short loc_10029291
cmp	edi, [esi+4]
jbe	short loc_10029274
push	edi
push	esi
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	short loc_100292C6
jmp	short loc_1002928E
mov	ecx, [esi+0Ch]
mov	edx, edi
sub	edx, eax
add	edx, edx
add	edx, edx
push	edx		
lea	edx, [ecx+eax*4]
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	[esi+8], edi
mov	eax, [esi+8]
sub	eax, ebx
dec	eax
js	short loc_100292AF
lea	edx, [eax+ebx]
add	edx, edx
add	edx, edx
mov	ecx, [esi+0Ch]
mov	edi, [ecx+eax*4]
mov	[edx+ecx], edi
sub	edx, 4
dec	eax
jns	short loc_100292A0
xor	eax, eax
test	ebx, ebx
jz	short loc_100292C4
mov	ecx, [esi+0Ch]
mov	dword ptr [ecx+eax*4], 0
inc	eax
cmp	eax, ebx
jb	short loc_100292B5
xor	eax, eax
pop	edi
pop	esi
pop	ebx
retn
align 10h
			
push	ecx
push	ebx
mov	ebx, [esp+8+arg_0]
test	ebx, ebx
jnz	short loc_100292E0
lea	eax, [ebx-4]
pop	ebx
pop	ecx
retn
mov	eax, [esp+8+arg_4]
mov	ecx, [ebx+0Ch]
push	ebp
push	esi
push	edi
mov	edi, eax
and	eax, 1Fh
mov	ebp, eax
mov	eax, [ebx+8]
or	esi, 0FFFFFFFFh
lea	edx, [ecx+eax*4]
mov	ecx, 20h
sub	ecx, ebp
shl	esi, cl
shr	edi, 5
mov	[esp+14h+arg_0], ebp
mov	[esp+14h+var_4], ecx
and	esi, [edx-4]
neg	esi
sbb	esi, esi
neg	esi
add	esi, eax
add	esi, edi
cmp	esi, eax
jbe	short loc_1002934F
cmp	esi, [ebx+4]
jbe	short loc_10029338
push	esi
push	ebx
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	loc_100293B7
jmp	short loc_1002934C
mov	ecx, esi
sub	ecx, eax
add	ecx, ecx
add	ecx, ecx
push	ecx		
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	[ebx+8], esi
test	edi, edi
jz	short loc_10029361
push	edi
push	ebx
call	sub_10029230
add	esp, 8
test	eax, eax
jnz	short loc_100293B7
test	ebp, ebp
jz	short loc_10029395
mov	eax, [ebx+0Ch]
mov	edx, [ebx+8]
lea	ebp, [eax+edx*4]
lea	edx, [eax+edi*4]
xor	esi, esi
cmp	edx, ebp
jnb	short loc_10029395
mov	eax, [edx]
mov	ecx, [esp+14h+arg_0]
mov	edi, eax
shl	edi, cl
mov	ecx, [esp+14h+var_4]
shr	eax, cl
add	edx, 4
or	edi, esi
mov	[edx-4], edi
mov	esi, eax
cmp	edx, ebp
jb	short loc_10029377
			
mov	eax, [ebx+8]
cmp	eax, 1
jbe	short loc_100293B2
mov	ecx, [ebx+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_100293B2
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_100293A4
			
mov	[ebx+8], eax
xor	eax, eax
			
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
align 10h
			
mov	ecx, [esp+arg_4]
test	ecx, ecx
jz	short locret_10029420
push	esi
mov	esi, [esp+4+arg_0]
mov	edx, [esi+8]
cmp	ecx, edx
jb	short loc_100293F9
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
pop	esi
retn
sub	edx, ecx
push	edi
mov	edi, [esi+0Ch]
lea	eax, [edi+ecx*4]
jz	short loc_10029413
push	ebx
mov	ebx, [eax]
mov	[edi], ebx
add	edi, 4
add	eax, 4
dec	edx
jnz	short loc_10029405
pop	ebx
sub	[esi+8], ecx
test	ecx, ecx
jz	short loc_1002941E
xor	eax, eax
rep stosd
pop	edi
pop	esi
retn
align 10h
			
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
mov	ecx, [esi+0Ch]
push	edi
mov	edi, [esi+8]
xor	ebx, ebx
mov	[esp+10h+arg_0], edi
test	edi, edi
jle	loc_100294E9
mov	edx, edi
mov	edi, edi
mov	eax, [ecx]
lea	ebp, [eax+eax]
or	ebp, ebx
mov	[ecx], ebp
shr	eax, 1Fh
add	ecx, 4
dec	edx
mov	ebx, eax
jnz	short loc_10029450
test	ebx, ebx
jz	loc_100294E9
mov	ecx, [esi+4]
cmp	edi, ecx
jb	short loc_100294E0
lea	eax, [ecx+1]
cmp	eax, ecx
jbe	short loc_100294E0
mov	ecx, dword_10049218
lea	eax, [ecx+eax-1]
div	ecx
push	4		
mov	edi, eax
imul	edi, ecx
push	edi		
call	ds:calloc
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jz	short loc_100294F0
mov	eax, [esi+8]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	ecx		
push	ebp		
call	memcpy
mov	edx, [esi+4]
mov	eax, [esi+0Ch]
add	edx, edx
add	edx, edx
push	edx		
push	0		
push	eax		
call	memset
mov	eax, [esi+0Ch]
add	esp, 18h
test	eax, eax
jz	short loc_100294D6
push	eax		
call	ds:free
add	esp, 4
mov	[esi+4], edi
mov	edi, [esp+10h+arg_0]
mov	[esi+0Ch], ebp
			
mov	ecx, [esi+0Ch]
mov	[ecx+edi*4], ebx
inc	dword ptr [esi+8]
			
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
pop	edi
pop	esi
pop	ebp
mov	eax, 0FFFFFFFEh
pop	ebx
retn
align 10h
			
mov	ecx, [esp+arg_4]
mov	edx, [esp+arg_0]
mov	eax, ecx
shr	eax, 5
cmp	eax, [edx+8]
jnb	short locret_10029561
push	esi
mov	esi, [edx+0Ch]
push	edi
and	ecx, 1Fh
mov	edi, 1
shl	edi, cl
lea	esi, [esi+eax*4]
inc	eax
dec	edi
and	[esi], edi
pop	edi
pop	esi
cmp	eax, [edx+8]
jnb	short loc_10029540
nop
mov	ecx, [edx+0Ch]
mov	dword ptr [ecx+eax*4], 0
inc	eax
cmp	eax, [edx+8]
jb	short loc_10029530
mov	eax, [edx+8]
cmp	eax, 1
jbe	short loc_1002955E
mov	ecx, [edx+0Ch]
lea	ecx, [ecx+eax*4-4]
nop
cmp	dword ptr [ecx], 0
jnz	short loc_1002955E
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10029550
			
mov	[edx+8], eax
retn
align 10h
			
push	ecx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
mov	edi, [esp+0Ch+arg_4]
mov	eax, edi
shr	eax, 5
push	eax
push	esi
call	sub_100293C0
add	esp, 8
and	edi, 1Fh
mov	[esp+0Ch+arg_4], edi
jz	short loc_100295DE
push	ebx
mov	ecx, edi
mov	edi, [esi+8]
mov	ebx, 1
shl	ebx, cl
push	ebp
xor	ebp, ebp
dec	ebx
dec	edi
js	short loc_100295DC
mov	ecx, 20h
sub	ecx, [esp+14h+arg_4]
mov	[esp+14h+var_4], ecx
jmp	short loc_100295BA
mov	ecx, [esp+14h+var_4]
mov	edx, [esi+0Ch]
mov	eax, [edx+edi*4]
lea	esi, [edx+edi*4]
shl	ebp, cl
mov	ecx, [esp+14h+arg_4]
mov	edx, eax
shr	eax, cl
and	edx, ebx
or	ebp, eax
dec	edi
mov	[esi], ebp
mov	esi, [esp+14h+arg_0]
mov	ebp, edx
jns	short loc_100295B6
pop	ebp
pop	ebx
mov	eax, [esi+8]
cmp	eax, 1
jbe	short loc_100295FE
mov	ecx, [esi+0Ch]
lea	ecx, [ecx+eax*4-4]
lea	ecx, [ecx+0]
cmp	dword ptr [ecx], 0
jnz	short loc_100295FE
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_100295F0
			
pop	edi
mov	[esi+8], eax
pop	esi
pop	ecx
retn
align 10h
push	esi
push	edi
mov	edi, [esp+8+arg_4]
mov	ecx, [edi+8]
mov	edx, [edi+0Ch]
mov	ecx, [edx+ecx*4-4]
xor	eax, eax
xor	esi, esi
test	ecx, ecx
js	short loc_10029651
inc	esi
add	ecx, ecx
jns	short loc_10029628
test	esi, esi
jz	short loc_10029651
mov	eax, [esp+8+arg_0]
push	esi
push	eax
call	sub_100292D0
add	esp, 8
test	eax, eax
js	short loc_10029657
push	esi
push	edi
call	sub_100292D0
add	esp, 8
test	eax, eax
js	short loc_10029657
			
mov	ecx, [esp+8+arg_8]
mov	[ecx], esi
			
pop	edi
pop	esi
retn
align 10h
			
push	ebp
push	esi
mov	esi, [esp+8+arg_4]
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	ecx, [edi+0Ch]
mov	edx, [ecx]
mov	ebp, [edi+8]
add	edx, esi
xor	eax, eax
mov	[ecx], edx
add	ecx, 4
cmp	edx, esi
sbb	esi, esi
neg	esi
jz	short loc_100296C8
push	ebx
dec	ebp
test	ebp, ebp
jle	short loc_100296A5
mov	edx, [ecx]
add	edx, esi
xor	ebx, ebx
mov	[ecx], edx
add	ecx, 4
test	edx, edx
setz	bl
mov	esi, ebx
test	esi, esi
jnz	short loc_10029685
pop	ebx
pop	edi
pop	esi
pop	ebp
retn
test	esi, esi
jz	short loc_100296C7
test	ebp, ebp
jnz	short loc_100296C7
mov	ebx, [edi+8]
lea	eax, [ebx+1]
push	eax
push	edi
call	sub_100291A0
add	esp, 8
test	eax, eax
js	short loc_100296C7
mov	ecx, [edi+0Ch]
mov	[ecx+ebx*4], esi
			
pop	ebx
pop	edi
pop	esi
pop	ebp
retn
align 10h
			
push	ebx
push	edi
mov	edi, [esp+8+arg_0]
mov	eax, [edi+0Ch]
mov	edx, [eax]
mov	ebx, [edi+8]
mov	ecx, edx
sub	ecx, [esp+8+arg_4]
add	eax, 4
mov	[eax-4], ecx
cmp	edx, ecx
sbb	edx, edx
neg	edx
jz	short loc_1002970A
push	esi
dec	ebx
jz	short loc_10029709
mov	esi, [eax]
mov	ecx, esi
sub	ecx, edx
mov	[eax], ecx
add	eax, 4
cmp	esi, ecx
sbb	edx, edx
neg	edx
jnz	short loc_100296F3
pop	esi
mov	eax, [edi+8]
cmp	eax, 1
jbe	short loc_1002972E
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
lea	esp, [esp+0]
cmp	dword ptr [ecx], 0
jnz	short loc_1002972E
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10029720
			
mov	[edi+8], eax
test	edx, edx
jz	short loc_10029741
test	ebx, ebx
jnz	short loc_10029741
pop	edi
mov	eax, 0FFFFFFFDh
pop	ebx
retn
			
pop	edi
xor	eax, eax
pop	ebx
retn
align 10h
push	ebx
mov	ebx, [esp+4+arg_4]
push	ebp
mov	ebp, [esp+8+arg_0]
mov	eax, [ebp+8]
push	esi
push	edi
mov	edi, [ebx+8]
xor	esi, esi
cmp	edi, eax
jbe	short loc_1002979E
cmp	edi, [ebp+4]
jbe	short loc_10029781
push	edi
push	ebp
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	loc_1002985F
jmp	short loc_1002979B
mov	edx, [ebp+0Ch]
mov	ecx, edi
sub	ecx, eax
add	ecx, ecx
add	ecx, ecx
push	ecx		
lea	eax, [edx+eax*4]
push	0		
push	eax		
call	memset
add	esp, 0Ch
mov	[ebp+8], edi
mov	eax, [ebx+8]
mov	ecx, [ebp+0Ch]
mov	edi, [ebx+0Ch]
xor	edx, edx
test	eax, eax
jz	short loc_100297D8
mov	ebx, eax
mov	[esp+10h+arg_0], eax
mov	edx, [ecx]
mov	eax, [edi]
add	eax, edx
add	edi, 4
cmp	eax, edx
sbb	edx, edx
add	eax, esi
neg	edx
mov	[ecx], eax
add	ecx, 4
cmp	eax, esi
sbb	esi, esi
neg	esi
add	esi, edx
dec	ebx
jnz	short loc_100297B3
mov	edx, [esp+10h+arg_0]
mov	ebx, [ebp+8]
mov	[esp+10h+arg_0], ebx
test	esi, esi
jz	short loc_1002985D
jmp	short loc_100297E9
mov	ebx, [esp+10h+arg_0]
cmp	edx, ebx
jnb	short loc_1002980B
mov	eax, [ecx]
add	eax, esi
xor	ebx, ebx
mov	[ecx], eax
add	ecx, 4
test	eax, eax
setz	bl
inc	edx
mov	esi, ebx
test	esi, esi
jnz	short loc_100297E5
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
test	esi, esi
jz	short loc_1002985D
mov	eax, [ebp+8]
lea	edi, [ebx+1]
cmp	edi, eax
jbe	short loc_10029857
cmp	edi, [ebp+4]
jbe	short loc_1002983A
push	edi
push	ebp
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	short loc_1002985F
mov	ecx, [ebp+0Ch]
mov	[ebp+8], edi
pop	edi
mov	[ecx+ebx*4], esi
pop	esi
pop	ebp
pop	ebx
retn
mov	edx, [ebp+0Ch]
mov	ecx, edi
sub	ecx, eax
add	ecx, ecx
add	ecx, ecx
push	ecx		
lea	eax, [edx+eax*4]
push	0		
push	eax		
call	memset
add	esp, 0Ch
mov	[ebp+8], edi
mov	ecx, [ebp+0Ch]
mov	[ecx+ebx*4], esi
			
xor	eax, eax
			
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
mov	edx, [esp+arg_0]
mov	eax, [edx]
push	ebp
mov	ebp, [esp+4+arg_8]
mov	[ebp+0], eax
mov	ecx, [edx+8]
mov	eax, [esp+4+arg_4]
push	esi
xor	esi, esi
push	edi
cmp	ecx, [eax+8]
jnb	short loc_1002989C
mov	[esp+0Ch+arg_4], edx
mov	[esp+0Ch+arg_0], eax
mov	edx, eax
mov	eax, [esp+0Ch+arg_4]
mov	edi, [edx+8]
mov	ecx, [ebp+8]
cmp	edi, ecx
jbe	short loc_100298E4
cmp	edi, [ebp+4]
jbe	short loc_100298BF
push	edi
push	ebp
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	loc_100299A2
jmp	short loc_100298D9
mov	eax, [ebp+0Ch]
mov	edx, edi
sub	edx, ecx
add	edx, edx
add	edx, edx
push	edx		
lea	ecx, [eax+ecx*4]
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	edx, [esp+0Ch+arg_0]
mov	eax, [esp+0Ch+arg_4]
mov	[ebp+8], edi
mov	ecx, [edx+0Ch]
mov	edi, [ebp+0Ch]
push	ebx
mov	ebx, [eax+0Ch]
mov	eax, [eax+8]
mov	[esp+10h+arg_4], eax
mov	[esp+10h+arg_8], esi
test	eax, eax
jz	short loc_10029930
mov	[esp+10h+arg_4], eax
mov	[esp+10h+arg_8], eax
mov	edx, [ecx]
mov	eax, [ebx]
add	eax, edx
add	ecx, 4
add	ebx, 4
cmp	eax, edx
sbb	edx, edx
add	eax, esi
neg	edx
mov	[edi], eax
add	edi, 4
cmp	eax, esi
sbb	esi, esi
neg	esi
add	esi, edx
dec	[esp+10h+arg_4]
jnz	short loc_10029905
mov	edx, [esp+10h+arg_0]
mov	ebx, [edx+8]
mov	eax, [esp+10h+arg_8]
cmp	eax, ebx
jnb	short loc_10029954
mov	edx, ebx
sub	edi, ecx
sub	edx, eax
mov	eax, [ecx]
add	eax, esi
mov	[edi+ecx], eax
add	ecx, 4
cmp	eax, esi
sbb	esi, esi
neg	esi
dec	edx
jnz	short loc_10029941
test	esi, esi
jz	short loc_1002999C
mov	eax, [ebp+8]
lea	edi, [ebx+1]
cmp	edi, eax
jbe	short loc_10029994
cmp	edi, [ebp+4]
jbe	short loc_10029977
push	edi
push	ebp
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	short loc_100299A1
jmp	short loc_10029991
mov	edx, [ebp+0Ch]
mov	ecx, edi
sub	ecx, eax
add	ecx, ecx
add	ecx, ecx
push	ecx		
lea	eax, [edx+eax*4]
push	0		
push	eax		
call	memset
add	esp, 0Ch
mov	[ebp+8], edi
mov	ecx, [ebp+0Ch]
mov	[ecx+ebx*4], esi
mov	ebx, edi
mov	[ebp+8], ebx
xor	eax, eax
pop	ebx
pop	edi
pop	esi
pop	ebp
retn
align 10h
			
mov	ecx, [esp+arg_4]
push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
mov	edx, [ebp+0Ch]
push	esi
mov	esi, [ecx+0Ch]
mov	ecx, [ecx+8]
lea	ebx, [esi+ecx*4]
xor	eax, eax
push	edi
cmp	esi, ebx
jnb	short loc_100299F5
mov	edi, edi
mov	edi, [edx]
mov	ecx, edi
sub	ecx, [esi]
add	esi, 4
cmp	edi, ecx
sbb	edi, edi
neg	edi
test	eax, eax
jz	short loc_100299EA
dec	ecx
cmp	ecx, 0FFFFFFFFh
jnz	short loc_100299EA
inc	edi
			
mov	[edx], ecx
add	edx, 4
mov	eax, edi
cmp	esi, ebx
jb	short loc_100299D0
mov	ecx, [ebp+8]
mov	esi, [ebp+0Ch]
lea	edi, [esi+ecx*4]
test	eax, eax
jz	short loc_10029A19
cmp	edx, edi
jnb	short loc_10029A19
mov	esi, [edx]
mov	ecx, esi
sub	ecx, eax
mov	[edx], ecx
add	edx, 4
cmp	esi, ecx
sbb	eax, eax
neg	eax
jnz	short loc_10029A02
			
mov	ecx, [ebp+8]
cmp	ecx, 1
jbe	short loc_10029A36
mov	edx, [ebp+0Ch]
lea	edx, [edx+ecx*4-4]
cmp	dword ptr [edx], 0
jnz	short loc_10029A36
dec	ecx
sub	edx, 4
cmp	ecx, 1
ja	short loc_10029A28
			
pop	edi
neg	eax
pop	esi
mov	[ebp+8], ecx
sbb	eax, eax
pop	ebp
and	eax, 0FFFFFFFDh
pop	ebx
retn
align 10h
			
push	ecx
mov	edx, [esp+4+arg_0]
mov	eax, [edx]
mov	ecx, [esp+4+arg_8]
push	esi
mov	[ecx], eax
mov	esi, [edx+8]
mov	eax, [ecx+8]
push	edi
xor	edi, edi
cmp	esi, eax
jbe	short loc_10029AAB
cmp	esi, [ecx+4]
jbe	short loc_10029A84
push	esi
push	ecx
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	loc_10029B60
jmp	short loc_10029A9E
mov	ecx, [ecx+0Ch]
mov	edx, esi
sub	edx, eax
add	edx, edx
add	edx, edx
push	edx		
lea	edx, [ecx+eax*4]
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	eax, [esp+0Ch+arg_8]
mov	edx, [esp+0Ch+arg_0]
mov	[eax+8], esi
mov	ecx, eax
mov	eax, [esp+0Ch+arg_4]
mov	edx, [edx+0Ch]
mov	esi, [ecx+0Ch]
push	ebx
mov	ebx, [eax+0Ch]
mov	eax, [eax+8]
push	ebp
xor	ebp, ebp
test	eax, eax
jle	short loc_10029AFE
mov	[esp+14h+var_4], eax
mov	ebp, eax
lea	esp, [esp+0]
mov	ecx, [edx]
mov	eax, ecx
sub	eax, [ebx]
add	edx, 4
add	ebx, 4
cmp	ecx, eax
sbb	ecx, ecx
neg	ecx
test	edi, edi
jz	short loc_10029AED
dec	eax
cmp	eax, 0FFFFFFFFh
jnz	short loc_10029AED
inc	ecx
			
mov	[esi], eax
add	esi, 4
dec	[esp+14h+var_4]
mov	edi, ecx
jnz	short loc_10029AD0
mov	ecx, [esp+14h+arg_8]
mov	eax, [esp+14h+arg_0]
mov	ebx, [eax+8]
cmp	ebp, ebx
jge	short loc_10029B2B
sub	ebx, ebp
add	ebp, ebx
lea	ecx, [ecx+0]
mov	ecx, [edx]
mov	eax, ecx
sub	eax, edi
add	edx, 4
mov	[esi], eax
add	esi, 4
cmp	ecx, eax
sbb	edi, edi
neg	edi
dec	ebx
jnz	short loc_10029B10
mov	ecx, [esp+14h+arg_8]
mov	[ecx+8], ebp
mov	eax, ebp
cmp	ebp, 1
jbe	short loc_10029B52
mov	ecx, [ecx+0Ch]
lea	ecx, [ecx+ebp*4-4]
lea	esp, [esp+0]
cmp	dword ptr [ecx], 0
jnz	short loc_10029B4E
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_10029B40
mov	ecx, [esp+14h+arg_8]
mov	[ecx+8], eax
mov	eax, edi
neg	eax
sbb	eax, eax
pop	ebp
and	eax, 0FFFFFFFDh
pop	ebx
pop	edi
pop	esi
pop	ecx
retn
align 10h
			
mov	eax, [esp+arg_4]
push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
mov	ebx, eax
and	eax, 1Fh
shr	ebx, 5
push	edi
mov	ebp, eax
test	esi, esi
jz	short loc_10029BAD
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
mov	eax, [esi+8]
lea	edi, [ebx+1]
cmp	edi, eax
jbe	short loc_10029BE9
cmp	edi, [esi+4]
jbe	short loc_10029BCC
push	edi
push	esi
call	sub_10029110
add	esp, 8
test	eax, eax
jnz	short loc_10029BFC
jmp	short loc_10029BE6
mov	ecx, [esi+0Ch]
mov	edx, edi
sub	edx, eax
add	edx, edx
add	edx, edx
push	edx		
lea	edx, [ecx+eax*4]
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	[esi+8], edi
mov	eax, [esi+0Ch]
mov	edx, 1
mov	ecx, ebp
shl	edx, cl
lea	eax, [eax+ebx*4]
or	[eax], edx
xor	eax, eax
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
mov	esi, [esp+4+arg_4]
mov	ecx, [esi+8]
push	edi
mov	edi, [eax+8]
cmp	edi, ecx
ja	short loc_10029C91
jb	short loc_10029C9B
mov	eax, [eax+0Ch]
mov	esi, [esi+0Ch]
push	ebx
lea	ebx, ds:0[edi*4]
xor	ecx, ecx
xor	edx, edx
add	eax, ebx
add	esi, ebx
cmp	edi, 4
jb	short loc_10029C75
mov	ecx, [eax-4]
mov	edx, [esi-4]
sub	eax, 10h
sub	esi, 10h
sub	edi, 4
cmp	ecx, edx
jnz	short loc_10029C8C
mov	ecx, [eax+8]
mov	edx, [esi+8]
cmp	ecx, edx
jnz	short loc_10029C8C
mov	ecx, [eax+4]
mov	edx, [esi+4]
cmp	ecx, edx
jnz	short loc_10029C8C
mov	ecx, [eax]
mov	edx, [esi]
cmp	ecx, edx
jnz	short loc_10029C8C
cmp	edi, 4
jnb	short loc_10029C41
sub	esi, eax
mov	ebx, edi
dec	edi
test	ebx, ebx
jz	short loc_10029C8C
mov	ecx, [eax-4]
mov	edx, [esi+eax-4]
sub	eax, 4
cmp	ecx, edx
jz	short loc_10029C77
			
pop	ebx
cmp	ecx, edx
jbe	short loc_10029C99
pop	edi
mov	eax, 1
pop	esi
retn
jnb	short loc_10029CA1
pop	edi
or	eax, 0FFFFFFFFh
pop	esi
retn
pop	edi
xor	eax, eax
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
cmp	dword ptr [eax+8], 1
jbe	short loc_10029CC0
mov	eax, 1
retn
mov	eax, [eax+0Ch]
mov	eax, [eax]
mov	ecx, [esp+arg_4]
cmp	ecx, eax
jbe	short loc_10029CD1
or	eax, 0FFFFFFFFh
retn
sbb	eax, eax
neg	eax
retn
align 10h
			
mov	ecx, [esp+arg_0]
test	ecx, ecx
jz	short loc_10029D29
lea	eax, [ecx-1]
test	ecx, eax
jnz	short loc_10029D29
xor	eax, eax
test	ecx, 0FFFF0000h
jz	short loc_10029CFE
mov	eax, 10h
test	ecx, 0FF00FF00h
jz	short loc_10029D09
add	eax, 8
test	ecx, 0F0F0F0F0h
jz	short loc_10029D14
add	eax, 4
test	ecx, 0CCCCCCCCh
jz	short loc_10029D1F
add	eax, 2
test	ecx, 0AAAAAAAAh
jz	short locret_10029D2C
inc	eax
retn
			
or	eax, 0FFFFFFFFh
retn
align 10h
			
push	ebx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
test	esi, esi
jz	loc_10029E55
mov	edi, [esp+0Ch+arg_4]
test	edi, edi
jz	loc_10029E55
mov	ebx, [esp+0Ch+arg_8]
test	ebx, ebx
jz	loc_10029E55
push	esi
call	sub_10028F40
mov	eax, ebx
add	esp, 4
and	eax, 3
jz	short loc_10029D88
xor	ecx, ecx
test	eax, eax
jle	short loc_10029D83
lea	ecx, [ecx+0]
movzx	edx, byte ptr [edi]
shl	ecx, 8
dec	eax
or	ecx, edx
inc	edi
dec	ebx
test	eax, eax
jg	short loc_10029D70
mov	[esp+0Ch+arg_8], ebx
mov	eax, [esi+0Ch]
mov	[eax], ecx
push	ebp
test	ebx, ebx
jz	loc_10029E4E
lea	ebp, [edi+2]
movzx	edi, byte ptr [ebp-2]
movzx	ecx, byte ptr [ebp-1]
movzx	edx, byte ptr [ebp+0]
movzx	eax, byte ptr [ebp+1]
shl	edi, 8
or	edi, ecx
shl	edi, 8
or	edi, edx
shl	edi, 8
push	esi
or	edi, eax
add	ebp, 4
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_10029DC9
test	edi, edi
jz	short loc_10029E41
jmp	short loc_10029E3C
mov	eax, [esi+8]
cmp	eax, 1
jnz	short loc_10029DD9
mov	ecx, [esi+0Ch]
cmp	dword ptr [ecx], 0
jz	short loc_10029E3C
lea	ebx, [eax+1]
cmp	ebx, eax
jbe	short loc_10029E15
cmp	ebx, [esi+4]
jbe	short loc_10029DF8
push	ebx
push	esi
call	sub_10029110
add	esp, 8
test	eax, eax
jz	short loc_10029E12
pop	ebp
pop	edi
pop	esi
pop	ebx
retn
mov	ecx, [esi+0Ch]
mov	edx, ebx
sub	edx, eax
add	edx, edx
add	edx, edx
push	edx		
lea	edx, [ecx+eax*4]
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	[esi+8], ebx
mov	eax, [esi+8]
sub	eax, 2
js	short loc_10029E2F
lea	ecx, [ecx+0]
mov	ecx, [esi+0Ch]
mov	edx, [ecx+eax*4]
lea	ecx, [ecx+eax*4]
dec	eax
mov	[ecx+4], edx
jns	short loc_10029E20
mov	eax, [esi+0Ch]
mov	ebx, [esp+10h+arg_8]
mov	dword ptr [eax], 0
			
mov	ecx, [esi+0Ch]
mov	[ecx], edi
sub	ebx, 4
mov	[esp+10h+arg_8], ebx
jnz	loc_10029D94
pop	ebp
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFCh
pop	ebx
retn
align 10h
			
mov	edx, [esp+arg_0]
push	edi
xor	edi, edi
test	edx, edx
jnz	short loc_10029E72
mov	eax, 0FFFFFFFCh
pop	edi
retn
cmp	[edx], edi
jnz	short loc_10029E6B
mov	ecx, [edx+8]
lea	eax, ds:0[ecx*4]
dec	ecx
js	short loc_10029E9F
mov	edx, [edx+0Ch]
lea	edx, [edx+ecx*4]
lea	esp, [esp+0]
mov	edi, [edx]
test	edi, edi
jnz	short loc_10029E9F
sub	eax, 4
sub	edx, 4
dec	ecx
jns	short loc_10029E90
			
test	eax, eax
jnz	short loc_10029EAA
mov	eax, 1
pop	edi
retn
push	esi
mov	esi, 18h
mov	edx, edi
mov	ecx, esi
shr	edx, cl
test	dl, dl
jnz	short loc_10029EC0
dec	eax
sub	esi, 8
jns	short loc_10029EB0
pop	esi
pop	edi
retn
align 10h
			
push	ebp
mov	ebp, [esp+4+arg_0]
push	esi
xor	esi, esi
push	edi
test	ebp, ebp
jz	loc_10029F61
mov	edi, [esp+0Ch+arg_4]
test	edi, edi
jz	short loc_10029F61
cmp	[ebp+0], esi
jnz	short loc_10029F61
push	ebp
call	sub_10029E60
add	esp, 4
test	eax, eax
js	short loc_10029F61
cmp	eax, [esp+0Ch+arg_8]
ja	short loc_10029F61
mov	edx, [ebp+8]
dec	edx
js	short loc_10029F53
mov	eax, [ebp+0Ch]
mov	eax, [eax+edx*4]
mov	ecx, eax
shr	ecx, 18h
test	esi, esi
jnz	short loc_10029F1A
test	cl, cl
jz	short loc_10029F1E
mov	[esi+edi], cl
inc	esi
mov	ecx, eax
shr	ecx, 10h
test	esi, esi
jnz	short loc_10029F2B
test	cl, cl
jz	short loc_10029F2F
mov	[esi+edi], cl
inc	esi
mov	ecx, eax
shr	ecx, 8
test	esi, esi
jnz	short loc_10029F3C
test	cl, cl
jz	short loc_10029F40
mov	[esi+edi], cl
inc	esi
test	esi, esi
jnz	short loc_10029F48
test	al, al
jz	short loc_10029F4C
mov	[esi+edi], al
inc	esi
dec	edx
jns	short loc_10029F07
test	esi, esi
jnz	short loc_10029F5B
mov	byte ptr [edi],	0
mov	esi, 1
pop	edi
mov	eax, esi
pop	esi
pop	ebp
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFCh
pop	ebp
retn
align 10h
			
push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
xor	esi, esi
test	ebp, ebp
jz	loc_1002A01B
mov	ebx, [esp+0Ch+Dst]
test	ebx, ebx
jz	loc_1002A01B
cmp	[ebp+0], esi
jnz	loc_1002A01B
push	ebp
call	sub_10029E60
add	esp, 4
test	eax, eax
js	short loc_1002A01B
mov	ecx, [esp+0Ch+arg_8]
cmp	ecx, eax
jb	short loc_1002A01B
push	edi
jbe	short loc_10029FBF
sub	ecx, eax
mov	edi, ecx
push	edi		
push	esi		
push	ebx		
call	memset
add	esp, 0Ch
add	ebx, edi
mov	edi, [ebp+8]
dec	edi
js	short loc_1002A011
mov	eax, [ebp+0Ch]
mov	eax, [eax+edi*4]
mov	ecx, eax
shr	ecx, 18h
test	esi, esi
jnz	short loc_10029FD8
test	cl, cl
jz	short loc_10029FDC
mov	[esi+ebx], cl
inc	esi
mov	ecx, eax
shr	ecx, 10h
test	esi, esi
jnz	short loc_10029FE9
test	cl, cl
jz	short loc_10029FED
mov	[esi+ebx], cl
inc	esi
mov	ecx, eax
shr	ecx, 8
test	esi, esi
jnz	short loc_10029FFA
test	cl, cl
jz	short loc_10029FFE
mov	[esi+ebx], cl
inc	esi
test	esi, esi
jnz	short loc_1002A006
test	al, al
jz	short loc_1002A00A
mov	[esi+ebx], al
inc	esi
dec	edi
jns	short loc_10029FC5
test	esi, esi
jnz	short loc_1002A014
mov	byte ptr [ebx],	0
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
			
pop	esi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
retn
align 10h
			
mov	eax, dword_10049218
mov	ecx, [esp+arg_0]
push	eax
push	ecx
call	sub_10028D30
add	esp, 8
retn
align 10h
			
mov	ecx, [esp+arg_0]
test	ecx, ecx
jz	short locret_1002A094
mov	eax, [esp+arg_4]
test	eax, eax
jz	short locret_1002A094
mov	edx, [ecx]
push	ebx
mov	ebx, [ecx+0Ch]
push	ebp
mov	ebp, [eax]
push	esi
mov	esi, [ecx+4]
push	edi
mov	edi, [ecx+8]
mov	[ecx], ebp
mov	ebp, [eax+4]
mov	[ecx+4], ebp
mov	ebp, [eax+8]
mov	[ecx+8], ebp
mov	ebp, [eax+0Ch]
mov	[ecx+0Ch], ebp
mov	[eax], edx
mov	[eax+4], esi
mov	[eax+8], edi
pop	edi
pop	esi
pop	ebp
mov	[eax+0Ch], ebx
pop	ebx
			
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_1002A0CA
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_1002A0CA
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002A0CF
push	esi
call	sub_10029430
add	esp, 4
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_1002A125
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_1002A125
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002A12A
cmp	dword ptr [esi+8], 1
ja	short loc_1002A117
mov	eax, [esi+0Ch]
cmp	dword ptr [eax], 0
ja	short loc_1002A117
mov	dword ptr [esi], 0
xor	eax, eax
pop	esi
retn
			
xor	ecx, ecx
cmp	dword ptr [esi], 1
setnz	cl
xor	eax, eax
mov	[esi], ecx
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
push	edi
test	ebx, ebx
jz	short loc_1002A195
mov	esi, [esp+0Ch+arg_4]
test	esi, esi
jz	short loc_1002A195
mov	edi, [esp+0Ch+arg_8]
test	edi, edi
jz	short loc_1002A195
mov	eax, [ebx]
cmp	eax, [esi]
jnz	short loc_1002A15B
push	edi
push	esi
push	ebx
call	sub_10029870
jmp	short loc_1002A175
push	esi
push	ebx
call	sub_10029C10
add	esp, 8
push	edi
test	eax, eax
js	short loc_1002A16E
push	esi
push	ebx
jmp	short loc_1002A170
push	ebx
push	esi
call	sub_10029A50
mov	edx, eax
add	esp, 0Ch
test	edx, edx
js	short loc_1002A18F
push	0
push	edi
call	sub_10029CB0
add	esp, 8
test	eax, eax
jnz	short loc_1002A18F
mov	[edi], eax
			
pop	edi
pop	esi
mov	eax, edx
pop	ebx
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFCh
pop	ebx
retn
align 10h
			
push	ebx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
test	esi, esi
jz	loc_1002A252
mov	ebx, [esp+0Ch+arg_4]
test	ebx, ebx
jz	loc_1002A252
mov	edi, [esp+0Ch+arg_8]
test	edi, edi
jz	loc_1002A252
cmp	esi, ebx
jnz	short loc_1002A1DA
push	edi
call	sub_10028F40
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
mov	eax, [esi]
cmp	eax, [ebx]
jz	short loc_1002A1F3
push	edi
push	ebx
push	esi
call	sub_10029870
mov	edx, eax
add	esp, 0Ch
test	edx, edx
js	short loc_1002A24C
jmp	short loc_1002A23B
push	ebx
push	esi
call	sub_10029C10
add	esp, 8
push	edi
test	eax, eax
jnz	short loc_1002A20E
call	sub_10028F40
add	esp, 4
xor	edx, edx
jmp	short loc_1002A23B
jle	short loc_1002A222
push	ebx
push	esi
call	sub_10029A50
mov	edx, eax
add	esp, 0Ch
test	edx, edx
js	short loc_1002A24C
jmp	short loc_1002A23B
push	esi
push	ebx
call	sub_10029A50
mov	edx, eax
add	esp, 0Ch
test	edx, edx
js	short loc_1002A24C
xor	ecx, ecx
cmp	[esi], ecx
setz	cl
mov	[edi], ecx
			
push	0
push	edi
call	sub_10029CB0
add	esp, 8
test	eax, eax
jnz	short loc_1002A24C
mov	[edi], eax
			
pop	edi
pop	esi
mov	eax, edx
pop	ebx
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFCh
pop	ebx
retn
align 10h
			
sub	esp, 1Ch
push	ebx
push	esi
mov	esi, [esp+24h+arg_0]
push	edi
test	esi, esi
jz	loc_1002A425
mov	ebx, [esp+28h+arg_4]
test	ebx, ebx
jz	loc_1002A425
mov	edi, [esp+28h+arg_8]
test	edi, edi
jz	loc_1002A425
cmp	esi, edi
jnz	short loc_1002A2B8
lea	eax, [esp+28h+var_10]
push	esi
push	eax
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	loc_1002A42A
cmp	esi, ebx
jnz	short loc_1002A2B2
lea	ecx, [esp+28h+var_10]
mov	[esp+28h+arg_4], ecx
mov	ebx, ecx
lea	esi, [esp+28h+var_10]
jmp	short loc_1002A2E6
cmp	ebx, edi
jnz	short loc_1002A2DE
lea	edx, [esp+28h+var_10]
push	ebx
push	edx
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	loc_1002A42A
lea	eax, [esp+28h+var_10]
mov	[esp+28h+arg_4], eax
mov	ebx, eax
jmp	short loc_1002A2E6
mov	[esp+28h+var_4], 0
			
mov	ecx, [esi+8]
cmp	ecx, [ebx+8]
jnb	short loc_1002A2F8
mov	[esp+28h+arg_4], esi
mov	esi, ebx
mov	ebx, [esp+28h+arg_4]
mov	edx, [edi+0Ch]
mov	dword ptr [edi+8], 1
mov	dword ptr [edx], 0
mov	eax, [esi+8]
add	eax, [ebx+8]
push	eax
push	edi
call	sub_100291A0
add	esp, 8
mov	[esp+28h+var_14], eax
test	eax, eax
jnz	loc_1002A40D
mov	ecx, [edi+0Ch]
mov	edx, [esi+8]
push	ebp
mov	ebp, [ebx+0Ch]
mov	eax, [ebp+0]
push	ecx
push	eax
mov	eax, [esi+0Ch]
push	edx
push	eax
call	sub_1002D600
mov	ecx, [ebx+8]
mov	edx, [esi+8]
mov	ebx, 1
add	esp, 10h
add	ebp, 4
mov	[esp+2Ch+var_1C], edx
mov	[esp+2Ch+var_18], ecx
cmp	ecx, ebx
jbe	short loc_1002A3B1
lea	eax, ds:4[edx*4]
mov	[esp+2Ch+arg_0], eax
jmp	short loc_1002A374
jmp	short loc_1002A370
align 10h
			
mov	edx, [esp+2Ch+var_1C]
mov	eax, [ebp+0]
add	ebp, 4
test	eax, eax
jz	short loc_1002A399
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+ebx*4]
push	ecx
push	eax
push	edx
mov	edx, [esi+0Ch]
push	edx
call	sub_1002D690
mov	ecx, [esp+3Ch+var_18]
add	esp, 10h
jmp	short loc_1002A3A7
mov	eax, [edi+0Ch]
mov	edx, [esp+2Ch+arg_0]
mov	dword ptr [edx+eax], 0
add	[esp+2Ch+arg_0], 4
inc	ebx
cmp	ebx, ecx
jb	short loc_1002A370
mov	eax, [edi+8]
pop	ebp
cmp	eax, 1
jbe	short loc_1002A3CF
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002A3CF
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002A3C1
			
mov	ecx, [esp+28h+arg_4]
mov	[edi+8], eax
mov	edx, [esi]
cmp	edx, [ecx]
jz	short loc_1002A407
cmp	eax, 1
ja	short loc_1002A3E9
mov	edx, [edi+0Ch]
cmp	dword ptr [edx], 0
jbe	short loc_1002A407
lea	eax, [esp+28h+var_10]
push	eax
mov	dword ptr [edi], 1
call	sub_10028EF0
mov	eax, [esp+2Ch+var_14]
add	esp, 4
pop	edi
pop	esi
pop	ebx
add	esp, 1Ch
retn
			
mov	dword ptr [edi], 0
lea	eax, [esp+28h+var_10]
push	eax
call	sub_10028EF0
mov	eax, [esp+2Ch+var_14]
add	esp, 4
pop	edi
pop	esi
pop	ebx
add	esp, 1Ch
retn
			
mov	eax, 0FFFFFFFCh
			
pop	edi
pop	esi
pop	ebx
add	esp, 1Ch
retn
align 10h
			
sub	esp, 14h
push	ebx
push	ebp
mov	ebp, [esp+1Ch+arg_0]
push	edi
xor	edi, edi
cmp	ebp, edi
jz	loc_1002A5A7
mov	ebx, [esp+20h+arg_4]
cmp	ebx, edi
jz	loc_1002A5A7
cmp	ebp, ebx
jnz	short loc_1002A48E
lea	eax, [esp+20h+var_10]
push	ebp
push	eax
call	sub_10028D90
add	esp, 8
mov	[esp+20h+var_14], eax
cmp	eax, edi
jnz	loc_1002A5AC
mov	edi, [esp+20h+Dst]
lea	ecx, [esp+20h+var_10]
mov	[esp+20h+arg_0], ecx
mov	ebp, ecx
jmp	short loc_1002A496
mov	[esp+20h+Dst], edi
mov	[esp+20h+var_14], edi
push	esi
mov	esi, [ebp+8]
add	esi, esi
cmp	esi, [ebx+4]
jbe	short loc_1002A4BE
push	esi
push	ebx
mov	dword ptr [ebx+8], 1
call	sub_10029110
add	esp, 8
mov	[esp+24h+var_14], eax
test	eax, eax
js	loc_1002A579
mov	edx, [ebx+0Ch]
mov	[ebx+8], esi
mov	dword ptr [edx], 0
mov	esi, [ebp+8]
mov	edi, [ebp+0Ch]
dec	esi
test	esi, esi
jle	short loc_1002A531
mov	ecx, [ebx+0Ch]
mov	eax, [edi]
add	ecx, 4
push	ecx
push	eax
add	edi, 4
push	esi
push	edi
call	sub_1002D600
dec	esi
add	esp, 10h
test	esi, esi
jle	short loc_1002A518
mov	ebp, 0Ch
mov	edx, [ebx+0Ch]
mov	eax, [edi]
add	edx, ebp
push	edx
push	eax
add	edi, 4
push	esi
push	edi
call	sub_1002D690
dec	esi
add	esp, 10h
add	ebp, 8
test	esi, esi
jg	short loc_1002A4F6
mov	ebp, [esp+24h+arg_0]
mov	eax, [ebx+8]
mov	ecx, [ebx+0Ch]
push	ebx
mov	dword ptr [ecx+eax*4-4], 0
call	sub_10029430
add	esp, 4
jmp	short loc_1002A53B
mov	edx, [ebx+0Ch]
mov	dword ptr [edx+4], 0
mov	eax, [ebx+0Ch]
mov	ecx, [ebp+8]
mov	edx, [ebp+0Ch]
push	eax
push	ecx
push	edx
call	sub_1002D800
mov	eax, [ebx+8]
add	esp, 0Ch
mov	dword ptr [ebx], 0
cmp	eax, 1
jbe	short loc_1002A572
mov	ecx, [ebx+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002A572
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002A564
			
mov	edi, [esp+24h+Dst]
mov	[ebx+8], eax
pop	esi
test	edi, edi
jz	short loc_1002A59C
mov	edx, [esp+20h+var_C]
lea	eax, ds:0[edx*4]
push	eax		
push	0		
push	edi		
call	memset
push	edi		
call	ds:free
add	esp, 10h
mov	eax, [esp+20h+var_14]
pop	edi
pop	ebp
pop	ebx
add	esp, 14h
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	ebp
pop	ebx
add	esp, 14h
retn
align 10h
			
push	edi
mov	edi, [esp+4+arg_0]
test	edi, edi
jnz	short loc_1002A5CE
lea	eax, [edi-4]
pop	edi
retn
push	esi
mov	esi, [esp+8+arg_8]
test	esi, esi
jz	short loc_1002A5E5
push	esi
push	edi
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002A61F
push	ebx
mov	ebx, [esp+0Ch+arg_C]
test	ebx, ebx
jz	short loc_1002A5FC
push	ebx
push	edi
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002A61E
mov	edi, [esp+0Ch+arg_4]
test	esi, esi
jz	short loc_1002A60E
push	edi
push	esi
call	sub_10029570
add	esp, 8
test	ebx, ebx
jz	short loc_1002A61C
push	edi
push	ebx
call	sub_10029500
add	esp, 8
xor	eax, eax
pop	ebx
pop	esi
pop	edi
retn
align 10h
			
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_1002A63E
mov	eax, 0FFFFFFFCh
retn
mov	[esp+arg_0], eax
jmp	sub_10029B70
align 10h
			
mov	eax, [esp+arg_0]
test	eax, eax
jnz	short loc_1002A659
retn
cmp	dword ptr [eax], 1
jnz	short loc_1002A662
or	eax, 0FFFFFFFFh
retn
cmp	dword ptr [eax+8], 1
jbe	short loc_1002A66E
mov	eax, 1
retn
mov	eax, [eax+0Ch]
mov	eax, [eax]
mov	ecx, [esp+arg_4]
cmp	ecx, eax
ja	short loc_1002A65E
sbb	eax, eax
neg	eax
retn
			
mov	ecx, [esp+arg_0]
test	ecx, ecx
jz	short loc_1002A6BC
mov	eax, [esp+arg_4]
test	eax, eax
jz	short loc_1002A6BC
push	esi
mov	esi, [ecx]
cmp	esi, [eax]
jnz	short loc_1002A6AF
push	eax
push	ecx
call	sub_10029C10
add	esp, 8
test	eax, eax
jnz	short loc_1002A6A7
pop	esi
retn
test	esi, esi
jz	short loc_1002A6A5
neg	eax
pop	esi
retn
xor	eax, eax
test	esi, esi
setz	al
pop	esi
lea	eax, [eax+eax-1]
retn
			
xor	eax, eax
retn
align 10h
sub	esp, 34h
push	ebx
push	ebp
push	edi
mov	edi, [esp+40h+arg_0]
xor	ebp, ebp
mov	[esp+40h+var_34], ebp
cmp	edi, ebp
jz	loc_1002A8DE
cmp	[esp+40h+arg_4], ebp
jz	loc_1002A8DE
mov	ebx, [esp+40h+arg_8]
cmp	ebx, ebp
jz	loc_1002A8DE
mov	eax, dword_10049218
push	esi
push	eax
lea	ecx, [esp+48h+var_20]
push	ecx
mov	[esp+4Ch+var_14], ebp
mov	[esp+4Ch+var_24], ebp
mov	[esp+4Ch+var_4], ebp
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jl	loc_1002A8B3
lea	edx, [esp+44h+var_30]
push	edi
push	edx
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jl	loc_1002A8B3
mov	eax, [esp+44h+arg_4]
push	eax
lea	ecx, [esp+48h+var_10]
push	ecx
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jl	loc_1002A8B3
push	1
push	ebx
call	sub_10028F70
lea	edx, [esp+4Ch+var_20]
push	edx
call	sub_10028F40
lea	eax, [esp+50h+var_30]
push	eax
call	sub_10028FB0
add	esp, 10h
test	eax, eax
jz	loc_1002A883
			
mov	ecx, [esp+44h+var_24]
mov	edx, [ecx]
and	edx, 1
lea	eax, [esp+44h+var_30]
jnz	short loc_1002A7BE
push	eax
call	sub_10029030
mov	edi, eax
add	esp, 4
cmp	edi, ebp
jz	loc_1002A883
lea	ecx, [esp+44h+var_30]
push	edi
push	ecx
call	sub_10029570
lea	edx, [esp+4Ch+var_20]
push	edi
push	edx
call	sub_100292D0
mov	esi, eax
add	esp, 10h
cmp	esi, ebp
jl	loc_1002A8B3
add	[esp+44h+var_34], edi
jmp	short loc_1002A773
push	1
push	eax
call	sub_1002A650
add	esp, 8
test	eax, eax
jz	loc_1002A88A
lea	ecx, [esp+44h+var_10]
push	ecx
lea	edx, [esp+48h+var_30]
push	edx
call	sub_1002A680
add	esp, 8
cmp	eax, ebp
jge	short loc_1002A806
lea	eax, [esp+44h+var_10]
push	eax
lea	ecx, [esp+48h+var_30]
push	ecx
call	sub_100291F0
lea	edx, [esp+4Ch+var_20]
push	edx
push	ebx
call	sub_100291F0
add	esp, 10h
jmp	short loc_1002A808
jz	short loc_1002A883
mov	eax, [esp+44h+var_4]
mov	ecx, [eax]
mov	edx, [esp+44h+var_24]
xor	ecx, [edx]
lea	eax, [esp+44h+var_30]
test	cl, 3
jnz	short loc_1002A84F
push	eax
lea	ecx, [esp+48h+var_10]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1002A8B3
push	ebx
lea	eax, [esp+48h+var_20]
push	eax
push	ebx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jge	loc_1002A773
jmp	short loc_1002A8B3
lea	ecx, [esp+44h+var_30]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
push	eax
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1002A8B3
push	ebx
lea	ecx, [esp+48h+var_20]
push	ecx
push	ebx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jge	loc_1002A773
jmp	short loc_1002A8B3
			
mov	esi, 0FFFFFFFBh
jmp	short loc_1002A8B3
mov	edi, [esp+44h+var_34]
mov	esi, edi
cmp	edi, ebp
jl	short loc_1002A8B3
cmp	[ebx], ebp
jz	short loc_1002A8B1
mov	edx, [esp+44h+arg_4]
push	ebx
push	edx
push	ebx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1002A8B3
cmp	[ebx], ebp
jnz	short loc_1002A898
mov	esi, edi
			
lea	eax, [esp+44h+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+48h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+4Ch+var_10]
push	edx
call	sub_10028EF0
add	esp, 0Ch
mov	eax, esi
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 34h
retn
			
pop	edi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
add	esp, 34h
retn
align 10h
push	ecx
mov	eax, [esp+4+arg_0]
cmp	dword ptr [eax], 1
push	ebx
mov	ebx, [esp+8+arg_8]
push	ebp
mov	ebp, [esp+0Ch+arg_C]
push	edi
mov	[esp+10h+var_4], ebx
push	ebp
jnz	short loc_1002A922
mov	edi, [esp+14h+arg_4]
push	edi
push	eax
call	sub_1002A130
add	esp, 0Ch
test	eax, eax
js	loc_1002AA43
jmp	short loc_1002A937
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
js	loc_1002AA43
mov	edi, [esp+10h+arg_4]
mov	ecx, [edi+8]
lea	eax, [ebx+1Fh]
shr	eax, 5
push	esi
lea	esi, [eax+ecx+1]
mov	eax, [ebp+8]
cmp	esi, eax
ja	short loc_1002A952
mov	esi, eax
cmp	esi, eax
jbe	short loc_1002A975
cmp	esi, [ebp+4]
jbe	loc_1002AA48
push	esi
push	ebp
call	sub_10029110
add	esp, 8
test	eax, eax
jz	loc_1002AA62
test	eax, eax
js	loc_1002AA42
			
mov	eax, [edi+0Ch]
mov	eax, [eax]
mov	edx, eax
imul	edx, eax
mov	ecx, 2
sub	ecx, edx
imul	ecx, eax
mov	esi, ecx
imul	esi, eax
mov	edx, 2
sub	edx, esi
imul	edx, ecx
mov	esi, edx
imul	esi, eax
mov	ecx, 2
sub	ecx, esi
imul	ecx, edx
mov	edx, ecx
imul	edx, eax
mov	esi, 2
sub	esi, edx
imul	esi, ecx
neg	esi
test	ebx, ebx
jle	short loc_1002AA12
mov	[esp+14h+arg_8], 0
mov	edi, ebx
cmp	ebx, 20h
jb	short loc_1002A9D0
mov	edi, 20h
mov	edx, [ebp+0Ch]
add	edx, [esp+14h+arg_8]
mov	eax, [edx]
imul	eax, esi
cmp	edi, 20h
jnb	short loc_1002A9F1
mov	ebp, 1
mov	ecx, edi
shl	ebp, cl
dec	ebp
and	eax, ebp
mov	ebp, [esp+14h+arg_C]
push	edx
push	eax
mov	eax, [esp+1Ch+arg_4]
mov	edx, [eax+8]
mov	eax, [eax+0Ch]
push	edx
push	eax
call	sub_1002D730
add	[esp+24h+arg_8], 4
sub	ebx, edi
add	esp, 10h
test	ebx, ebx
jg	short loc_1002A9C4
mov	eax, [ebp+8]
cmp	eax, 1
jbe	short loc_1002AA2F
mov	ecx, [ebp+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002AA2F
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002AA21
			
mov	edx, [esp+14h+var_4]
push	edx
push	ebp
mov	[ebp+8], eax
call	sub_10029570
add	esp, 8
xor	eax, eax
pop	esi
			
pop	edi
pop	ebp
pop	ebx
pop	ecx
retn
mov	ecx, [ebp+0Ch]
mov	edx, esi
sub	edx, eax
add	edx, edx
add	edx, edx
push	edx		
lea	edx, [ecx+eax*4]
push	0		
push	edx		
call	memset
add	esp, 0Ch
mov	[ebp+8], esi
jmp	loc_1002A975
align 10h
			
sub	esp, 10h
push	ebx
push	esi
mov	esi, [esp+18h+arg_0]
push	edi
test	esi, esi
jz	loc_1002AB6C
mov	edi, [esp+1Ch+arg_4]
test	edi, edi
jz	loc_1002AB6C
mov	ebx, [esp+1Ch+arg_8]
test	ebx, ebx
jz	loc_1002AB6C
cmp	dword ptr [esi], 1
jz	short loc_1002AAB1
cmp	dword ptr [esi+8], 1
jnz	short loc_1002AAB1
mov	eax, [esi+0Ch]
cmp	dword ptr [eax], 0
jz	loc_1002AB60
			
push	edi
call	sub_10028FB0
add	esp, 4
test	eax, eax
jz	loc_1002AB60
push	edi
call	sub_10029000
add	esp, 4
test	eax, eax
jz	short loc_1002AADB
pop	edi
pop	esi
mov	eax, 0FFFFFFFBh
pop	ebx
add	esp, 10h
retn
mov	[esp+1Ch+var_4], 0
cmp	esi, ebx
jnz	short loc_1002AB07
lea	ecx, [esp+1Ch+var_10]
push	esi
push	ecx
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	short loc_1002AB71
cmp	esi, edi
jnz	short loc_1002AB01
lea	edi, [esp+1Ch+var_10]
lea	esi, [esp+1Ch+var_10]
jmp	short loc_1002AB2B
cmp	edi, ebx
jnz	short loc_1002AB23
lea	edx, [esp+1Ch+var_10]
push	edi
push	edx
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	short loc_1002AB71
lea	edi, [esp+1Ch+var_10]
jmp	short loc_1002AB2B
mov	[esp+1Ch+var_4], 0
			
push	ebx
push	edi
push	esi
call	sub_1002A6C0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002AB4A
push	ebx
push	esi
push	edi
push	ebx
call	sub_1002A8F0
add	esp, 10h
mov	esi, eax
lea	eax, [esp+1Ch+var_10]
push	eax
call	sub_10028EF0
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebx
add	esp, 10h
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFDh
pop	ebx
add	esp, 10h
retn
			
mov	eax, 0FFFFFFFCh
			
pop	edi
pop	esi
pop	ebx
add	esp, 10h
retn
align 10h
			
mov	ecx, [esp+arg_0]
sub	esp, 50h
push	ebx
push	ebp
push	edi
mov	edi, [esp+5Ch+arg_4]
xor	ebx, ebx
lea	ebp, [edi+4]
cmp	ecx, ebx
jz	short loc_1002ABA3
mov	eax, [ecx+0Ch]
mov	eax, [eax]
mov	edx, eax
and	edx, 1
jnz	short loc_1002ABAF
pop	edi
pop	ebp
mov	eax, 0FFFFFFFBh
pop	ebx
add	esp, 50h
retn
push	esi
cmp	edi, 20h
ja	loc_1002AC3B
mov	edx, eax
imul	edx, eax
mov	ecx, 2
sub	ecx, edx
imul	ecx, eax
mov	esi, ecx
imul	esi, eax
mov	edx, 2
sub	edx, esi
imul	edx, ecx
mov	esi, edx
imul	esi, eax
mov	ecx, 2
sub	ecx, esi
imul	ecx, edx
mov	edx, ecx
imul	edx, eax
mov	esi, 2
sub	esi, edx
imul	esi, ecx
cmp	edi, 20h
jnb	short loc_1002AC06
mov	eax, 1
mov	ecx, edi
shl	eax, cl
dec	eax
and	esi, eax
mov	edi, [esp+60h+arg_8]
cmp	edi, ebx
jz	short loc_1002AC31
mov	ecx, [edi+4]
mov	edx, [edi+0Ch]
add	ecx, ecx
add	ecx, ecx
push	ecx		
push	ebx		
push	edx		
call	memset
mov	eax, [edi+0Ch]
mov	dword ptr [edi+8], 1
mov	[edi], ebx
add	esp, 0Ch
mov	[eax], esi
pop	esi
pop	edi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 50h
retn
push	ecx
lea	ecx, [esp+64h+var_20]
push	ecx
mov	[esp+68h+var_24], ebx
mov	[esp+68h+var_44], ebx
mov	[esp+68h+var_14], ebx
mov	[esp+68h+var_34], ebx
mov	[esp+68h+var_4], ebx
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002ADE6
lea	edx, [esp+60h+var_20]
push	edi
push	edx
call	sub_10029500
lea	eax, [esp+68h+var_20]
push	eax
lea	ecx, [esp+6Ch+var_30]
push	ecx
call	sub_10028D90
mov	esi, eax
add	esp, 10h
cmp	esi, ebx
jl	loc_1002ADE6
lea	edx, [esp+60h+var_30]
push	edx
lea	eax, [esp+64h+var_50]
push	eax
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002ADE6
mov	ecx, dword_10049218
push	ecx
lea	edx, [esp+64h+var_40]
push	edx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002ADE6
mov	eax, dword_10049218
push	eax
lea	ecx, [esp+64h+var_10]
push	ecx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002ADE6
lea	edx, [esp+60h+var_10]
push	edi
push	edx
call	sub_10029B70
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002ADE6
lea	ecx, [ecx+0]
lea	eax, [esp+60h+var_40]
push	eax
lea	ecx, [esp+64h+var_50]
push	ecx
lea	edx, [esp+68h+var_20]
push	edx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1002ADE6
lea	eax, [esp+60h+var_40]
push	eax
mov	ecx, eax
push	ecx
push	offset dword_10047318
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1002ADE6
lea	edx, [esp+60h+var_50]
push	edx
lea	eax, [esp+64h+var_40]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	loc_1002ADE6
lea	edx, [esp+60h+var_50]
push	edi
push	edx
call	sub_10029500
add	esp, 8
cmp	[esp+60h+var_50], ebx
jz	short loc_1002AD94
lea	eax, [esp+60h+var_50]
push	eax
lea	ecx, [esp+64h+var_10]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebx
jl	short loc_1002ADE6
cmp	[esp+60h+var_50], ebx
jnz	short loc_1002AD73
lea	eax, [esp+60h+var_30]
push	eax
lea	ecx, [esp+64h+var_50]
push	ecx
call	sub_1002A680
add	esp, 8
test	eax, eax
jz	short loc_1002ADC9
lea	edx, [esp+60h+var_30]
push	edx
lea	eax, [esp+64h+var_50]
push	eax
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	short loc_1002ADE6
dec	ebp
jnz	loc_1002AD00
cmp	ebp, ebx
jnz	short loc_1002ADD4
mov	esi, 0FFFFFFFBh
jmp	short loc_1002ADE6
mov	edx, [esp+60h+arg_8]
lea	ecx, [esp+60h+var_50]
push	ecx
push	edx
call	sub_1002A050
add	esp, 8
			
lea	eax, [esp+60h+var_30]
push	eax
call	sub_10028EF0
lea	ecx, [esp+64h+var_50]
push	ecx
call	sub_10028EF0
lea	edx, [esp+68h+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+6Ch+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+70h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 14h
mov	eax, esi
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 50h
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+Val]
push	esi
test	ebx, ebx
jnz	short loc_1002AE65
mov	esi, [esp+8+arg_0]
test	esi, esi
jz	short loc_1002AE60
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	ebx		
push	ecx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	[esi], ebx
			
pop	esi
xor	eax, eax
pop	ebx
retn
cmp	ebx, 1
jz	short loc_1002AE60
push	ebx
call	sub_10029CE0
add	esp, 4
test	eax, eax
js	short loc_1002AE82
pop	esi
pop	ebx
mov	[esp+Val], eax
jmp	sub_100292D0
mov	esi, [esp+8+arg_0]
push	ebp
push	edi
mov	edi, [esi+8]
lea	eax, [edi+1]
push	eax
push	esi
call	sub_100291A0
mov	ebp, eax
add	esp, 8
test	ebp, ebp
js	short loc_1002AED1
mov	eax, [esi+0Ch]
push	eax
push	ebx
push	edi
push	eax
call	sub_1002D600
mov	eax, [esi+8]
add	esp, 10h
cmp	eax, 1
jbe	short loc_1002AECE
mov	ecx, [esi+0Ch]
lea	ecx, [ecx+eax*4-4]
lea	esp, [esp+0]
cmp	dword ptr [ecx], 0
jnz	short loc_1002AECE
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002AEC0
			
mov	[esi+8], eax
pop	edi
mov	eax, ebp
pop	ebp
pop	esi
pop	ebx
retn
align 10h
sub	esp, 24h
push	ebx
push	edi
mov	edi, [esp+2Ch+arg_4]
xor	ebx, ebx
cmp	edi, ebx
jnz	short loc_1002AEF8
pop	edi
lea	eax, [ebx-3]
pop	ebx
add	esp, 24h
retn
cmp	edi, 1
jnz	short loc_1002AF0F
mov	eax, [esp+2Ch+arg_8]
cmp	eax, ebx
jz	short loc_1002AF07
mov	[eax], ebx
pop	edi
xor	eax, eax
pop	ebx
add	esp, 24h
retn
push	ebp
mov	ebp, [esp+30h+arg_0]
mov	eax, [ebp+8]
cmp	eax, 1
jnz	short loc_1002AF3A
mov	ecx, [ebp+0Ch]
mov	eax, [ecx]
xor	edx, edx
div	edi
mov	[ecx], eax
mov	eax, [esp+30h+arg_8]
cmp	eax, ebx
jz	short loc_1002AF31
mov	[eax], edx
pop	ebp
pop	edi
xor	eax, eax
pop	ebx
add	esp, 24h
retn
push	esi
push	eax
lea	eax, [esp+38h+var_20]
push	eax
mov	[esp+3Ch+var_4], ebx
mov	[esp+3Ch+var_14], ebx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002B030
lea	ecx, [esp+34h+var_10]
push	ebp
push	ecx
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, ebx
jl	loc_1002B030
mov	ebx, [esp+34h+var_8]
xor	ecx, ecx
dec	ebx
js	short loc_1002AFF1
mov	ebp, [esp+34h+var_4]
mov	eax, [ebp+ebx*4+0]
mov	[esp+34h+arg_4], eax
test	ecx, ecx
jz	short loc_1002AFAD
lea	edx, [esp+34h+arg_4]
push	edx
lea	edx, [esp+38h+var_24]
push	edx
push	edi
push	eax
push	ecx
call	sub_1002D8E0
mov	esi, eax
add	esp, 14h
test	esi, esi
js	loc_1002B030
jmp	short loc_1002AFC7
cmp	eax, edi
jb	short loc_1002AFBF
xor	edx, edx
div	edi
mov	[esp+34h+var_24], eax
mov	[esp+34h+arg_4], edx
jmp	short loc_1002AFC7
mov	[esp+34h+var_24], 0
			
lea	eax, [esp+34h+var_20]
push	1
push	eax
call	sub_10029230
mov	esi, eax
add	esp, 8
test	esi, esi
js	short loc_1002B030
dec	ebx
mov	ecx, [esp+34h+var_24]
mov	edx, [esp+34h+var_14]
mov	[edx], ecx
mov	ecx, [esp+34h+arg_4]
jns	short loc_1002AF80
mov	ebp, [esp+34h+arg_0]
mov	eax, [esp+34h+arg_8]
test	eax, eax
jz	short loc_1002AFFF
mov	ecx, [esp+34h+arg_4]
mov	[eax], ecx
mov	eax, [esp+34h+var_18]
cmp	eax, 1
jbe	short loc_1002B01E
mov	edx, [esp+34h+var_14]
lea	ecx, [edx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002B01E
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002B010
			
mov	[esp+34h+var_18], eax
lea	eax, [esp+34h+var_20]
push	ebp
push	eax
call	sub_1002A050
add	esp, 8
			
lea	ecx, [esp+34h+var_20]
push	ecx
call	sub_10028EF0
lea	edx, [esp+38h+var_10]
push	edx
call	sub_10028EF0
add	esp, 8
mov	eax, esi
pop	esi
pop	ebp
pop	edi
pop	ebx
add	esp, 24h
retn
align 10h
			
sub	esp, 10h
push	esi
mov	esi, [esp+14h+arg_0]
mov	eax, [esi+8]
add	eax, eax
push	eax
lea	ecx, [esp+18h+var_10]
push	ecx
call	sub_10028D30
add	esp, 8
test	eax, eax
jnz	short loc_1002B0F9
push	ebx
push	ebp
push	edi
lea	edx, [esp+20h+var_10]
push	edx
push	esi
call	sub_1002A440
mov	ebx, eax
add	esp, 8
mov	[esp+20h+arg_0], ebx
test	ebx, ebx
jnz	short loc_1002B0CE
mov	edi, [esi]
mov	eax, [esp+20h+var_10]
mov	edx, [esp+20h+var_8]
mov	ebp, [esi+4]
mov	ecx, [esp+20h+var_C]
mov	ebx, [esp+20h+var_4]
mov	[esp+20h+var_10], edi
mov	edi, [esi+8]
mov	[esp+20h+var_8], edi
mov	edi, [esi+0Ch]
mov	[esi], eax
mov	[esi+4], ecx
mov	[esi+8], edx
mov	[esi+0Ch], ebx
mov	ebx, [esp+20h+arg_0]
jmp	short loc_1002B0D6
mov	edi, [esp+20h+var_4]
mov	ebp, [esp+20h+var_C]
test	edi, edi
jz	short loc_1002B0F4
lea	eax, ds:0[ebp*4]
push	eax		
push	0		
push	edi		
call	memset
push	edi		
call	ds:free
add	esp, 10h
pop	edi
pop	ebp
mov	eax, ebx
pop	ebx
pop	esi
add	esp, 10h
retn
align 10h
			
sub	esp, 10h
push	edi
mov	edi, [esp+14h+arg_0]
lea	eax, [esp+14h+var_10]
push	edi
push	eax
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	loc_1002B22B
push	ebx
push	esi
mov	esi, [esp+1Ch+arg_4]
mov	ecx, [esi+8]
dec	ecx
push	ecx
lea	edx, [esp+20h+var_10]
push	edx
call	sub_100293C0
mov	ecx, [esp+24h+arg_8]
lea	eax, [esp+24h+var_10]
push	eax
push	ecx
mov	edx, eax
push	edx
call	sub_1002A260
mov	eax, [esi+8]
inc	eax
push	eax
lea	ecx, [esp+34h+var_10]
push	ecx
call	sub_100293C0
mov	edx, [esi+8]
inc	edx
shl	edx, 5
push	edx
push	edi
call	sub_10029500
lea	eax, [esp+40h+var_10]
push	eax
mov	ecx, eax
push	esi
push	ecx
call	sub_1002A260
mov	edx, [esi+8]
inc	edx
shl	edx, 5
push	edx
lea	eax, [esp+50h+var_10]
push	eax
call	sub_10029500
push	edi
lea	ecx, [esp+58h+var_10]
push	ecx
push	edi
call	sub_1002A1A0
mov	ebx, eax
add	esp, 44h
test	ebx, ebx
jnz	short loc_1002B201
cmp	dword ptr [edi], 1
jnz	short loc_1002B1D5
lea	edx, [esp+1Ch+var_10]
push	1
push	edx
call	sub_10028F70
mov	eax, [esi+8]
inc	eax
push	eax
lea	ecx, [esp+28h+var_10]
push	ecx
call	sub_10029230
mov	ebx, eax
add	esp, 10h
test	ebx, ebx
jnz	short loc_1002B201
push	edi
lea	edx, [esp+20h+var_10]
push	edx
push	edi
call	sub_1002A130
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
jnz	short loc_1002B201
push	esi
push	edi
call	sub_1002A680
add	esp, 8
test	eax, eax
js	short loc_1002B201
push	esi
push	edi
call	sub_100299B0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
jnz	short loc_1002B201
push	esi
push	edi
call	sub_1002A680
add	esp, 8
test	eax, eax
jns	short loc_1002B1E3
			
mov	esi, [esp+1Ch+Dst]
test	esi, esi
jz	short loc_1002B227
mov	eax, [esp+1Ch+var_C]
lea	ecx, ds:0[eax*4]
push	ecx		
push	0		
push	esi		
call	memset
push	esi		
call	ds:free
add	esp, 10h
pop	esi
mov	eax, ebx
pop	ebx
pop	edi
add	esp, 10h
retn
			
mov	eax, [esp+arg_0]
mov	ecx, [eax+8]
push	esi
mov	esi, [eax+0Ch]
mov	eax, [esi+ecx*4-4]
dec	ecx
test	eax, eax
jz	short loc_1002B2A0
lea	edx, [eax-1]
test	eax, edx
jnz	short loc_1002B2A0
xor	edx, edx
test	eax, 0FFFF0000h
jz	short loc_1002B259
mov	edx, 10h
test	eax, 0FF00FF00h
jz	short loc_1002B263
add	edx, 8
test	eax, 0F0F0F0F0h
jz	short loc_1002B26D
add	edx, 4
test	eax, 0CCCCCCCCh
jz	short loc_1002B277
add	edx, 2
test	eax, 0AAAAAAAAh
jz	short loc_1002B27F
inc	edx
mov	eax, edx
test	edx, edx
js	short loc_1002B2A3
test	ecx, ecx
jz	short loc_1002B2A3
dec	ecx
js	short loc_1002B2A3
lea	edx, [esi+ecx*4]
nop
cmp	dword ptr [edx], 0
jnz	short loc_1002B2A0
add	eax, 20h
sub	edx, 4
dec	ecx
jns	short loc_1002B290
pop	esi
retn
			
or	eax, 0FFFFFFFFh
			
pop	esi
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_4]
mov	eax, ebx
push	esi
mov	esi, [esp+8+arg_0]
cdq
push	edi
mov	edi, eax
xor	edi, edx
sub	edi, edx
test	esi, esi
jnz	short loc_1002B2CF
pop	edi
lea	eax, [esi-4]
pop	esi
pop	ebx
retn
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
test	ebx, ebx
jz	short loc_1002B303
mov	edx, [esi+0Ch]
mov	[edx], edi
jns	short loc_1002B303
mov	dword ptr [esi], 1
			
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
push	esi
mov	esi, [esp+4+arg_0]
test	esi, esi
jnz	short loc_1002B320
mov	eax, 0FFFFFFFCh
pop	esi
retn
mov	eax, [esi+4]
mov	ecx, [esi+0Ch]
add	eax, eax
add	eax, eax
push	eax		
push	0		
push	ecx		
call	memset
mov	eax, [esp+10h+arg_4]
add	esp, 0Ch
mov	dword ptr [esi+8], 1
mov	dword ptr [esi], 0
test	eax, eax
jz	short loc_1002B350
mov	edx, [esi+0Ch]
mov	[edx], eax
xor	eax, eax
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
sub	esp, 10h
push	esi
test	eax, eax
jz	loc_1002B44D
mov	esi, [esp+14h+arg_8]
test	esi, esi
jz	loc_1002B44D
push	ebp
push	eax
lea	eax, [esp+1Ch+var_10]
push	eax
call	sub_10028D90
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	loc_1002B447
push	ebx
push	edi
cmp	[esp+20h+var_10], eax
jnz	short loc_1002B3AE
mov	ecx, [esp+20h+arg_4]
push	ecx
lea	edx, [esp+24h+var_10]
push	edx
call	sub_10029660
jmp	short loc_1002B3CF
mov	ebx, [esp+20h+arg_4]
lea	eax, [esp+20h+var_10]
push	ebx
push	eax
call	sub_10029CB0
add	esp, 8
test	eax, eax
js	short loc_1002B3DE
lea	ecx, [esp+20h+var_10]
push	ebx
push	ecx
call	sub_100296D0
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_1002B436
mov	edi, [esp+20h+var_4]
jmp	short loc_1002B3F6
lea	edx, [esp+20h+var_10]
push	edx
mov	eax, edx
push	eax
call	sub_1002A0E0
mov	edi, [esp+28h+var_4]
add	esp, 8
sub	ebx, [edi]
mov	[edi], ebx
mov	edx, [esp+20h+var_8]
cmp	edx, 1
ja	short loc_1002B408
cmp	dword ptr [edi], 0
ja	short loc_1002B408
xor	eax, eax
jmp	short loc_1002B40C
			
mov	eax, [esp+20h+var_10]
mov	ebx, [esi]
mov	ecx, [esp+20h+var_C]
mov	[esp+20h+var_10], ebx
mov	ebx, [esi+4]
mov	[esp+20h+var_C], ebx
mov	ebx, [esi+8]
mov	[esp+20h+var_8], ebx
mov	ebx, [esi+0Ch]
mov	[esi], eax
mov	[esi+4], ecx
mov	[esi+8], edx
mov	[esp+20h+var_4], ebx
mov	[esi+0Ch], edi
lea	ecx, [esp+20h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 4
pop	edi
mov	eax, ebp
pop	ebx
pop	ebp
pop	esi
add	esp, 10h
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
add	esp, 10h
retn
align 10h
			
mov	eax, [esp+arg_0]
sub	esp, 10h
push	esi
test	eax, eax
jz	loc_1002B566
mov	esi, [esp+14h+arg_8]
test	esi, esi
jz	loc_1002B566
push	ebp
push	eax
lea	eax, [esp+1Ch+var_10]
push	eax
call	sub_10028D90
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	loc_1002B560
cmp	[esp+18h+var_10], 1
push	ebx
push	edi
jnz	short loc_1002B4C4
mov	ecx, [esp+20h+arg_4]
push	ecx
lea	edx, [esp+24h+var_10]
push	edx
call	sub_10029660
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	loc_1002B54F
mov	edi, [esp+20h+var_4]
mov	eax, [esp+20h+var_10]
jmp	short loc_1002B515
mov	ebx, [esp+20h+arg_4]
lea	eax, [esp+20h+var_10]
push	ebx
push	eax
call	sub_10029CB0
add	esp, 8
test	eax, eax
js	short loc_1002B4F8
lea	ecx, [esp+20h+var_10]
push	ebx
push	ecx
call	sub_100296D0
mov	ebp, eax
add	esp, 8
test	ebp, ebp
jnz	short loc_1002B54F
mov	edi, [esp+20h+var_4]
mov	eax, [esp+20h+var_10]
jmp	short loc_1002B515
lea	edx, [esp+20h+var_10]
push	edx
mov	eax, edx
push	eax
call	sub_1002A0E0
mov	edi, [esp+28h+var_4]
add	esp, 8
sub	ebx, [edi]
mov	eax, 1
mov	[edi], ebx
			
mov	edx, [esp+20h+var_8]
cmp	edx, 1
ja	short loc_1002B525
cmp	dword ptr [edi], 0
ja	short loc_1002B525
xor	eax, eax
			
mov	ebx, [esi]
mov	ecx, [esp+20h+var_C]
mov	[esp+20h+var_10], ebx
mov	ebx, [esi+4]
mov	[esp+20h+var_C], ebx
mov	ebx, [esi+8]
mov	[esp+20h+var_8], ebx
mov	ebx, [esi+0Ch]
mov	[esi], eax
mov	[esi+4], ecx
mov	[esi+8], edx
mov	[esp+20h+var_4], ebx
mov	[esi+0Ch], edi
			
lea	ecx, [esp+20h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 4
pop	edi
mov	eax, ebp
pop	ebx
pop	ebp
pop	esi
add	esp, 10h
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
add	esp, 10h
retn
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_1002B5B2
mov	esi, [esp+4+arg_8]
test	esi, esi
jz	short loc_1002B5B2
push	edi
mov	edi, [esp+8+Val]
push	esi
test	edi, edi
jnz	short loc_1002B598
call	sub_10028F40
add	esp, 4
xor	eax, eax
pop	edi
pop	esi
retn
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002B595
push	edi		
push	esi		
call	sub_1002AE30
add	esp, 8
pop	edi
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
mov	edx, [esp+arg_0]
sub	esp, 10h
test	edx, edx
jnz	short loc_1002B5D2
lea	eax, [edx-4]
add	esp, 10h
retn
push	esi
mov	esi, [esp+14h+arg_4]
test	esi, esi
jnz	short loc_1002B5E3
lea	eax, [esi-3]
pop	esi
add	esp, 10h
retn
push	edi
push	esi
call	sub_10029CE0
mov	edi, eax
add	esp, 4
test	edi, edi
js	short loc_1002B62F
mov	eax, [edx+0Ch]
mov	esi, 1
mov	ecx, edi
shl	esi, cl
push	ebx
mov	ebx, [esp+1Ch+arg_8]
dec	esi
and	esi, [eax]
test	ebx, ebx
jz	short loc_1002B61C
push	ebx
push	edx
call	sub_10028E00
push	edi
push	ebx
call	sub_10029570
add	esp, 10h
mov	eax, [esp+1Ch+arg_C]
pop	ebx
test	eax, eax
jz	short loc_1002B627
mov	[eax], esi
pop	edi
xor	eax, eax
pop	esi
add	esp, 10h
retn
push	edx
lea	ecx, [esp+1Ch+var_10]
push	ecx
call	sub_10028D90
add	esp, 8
test	eax, eax
jnz	short loc_1002B69F
lea	edx, [esp+18h+arg_0]
push	edx
lea	eax, [esp+1Ch+var_10]
push	esi
push	eax
call	sub_1002AEE0
lea	ecx, [esp+24h+var_10]
push	0
push	ecx
mov	esi, eax
call	sub_10029CB0
add	esp, 14h
test	eax, eax
mov	eax, [esp+18h+arg_8]
jnz	short loc_1002B670
mov	dword ptr [eax], 0
mov	ecx, [esp+18h+arg_C]
test	ecx, ecx
jz	short loc_1002B67E
mov	edx, [esp+18h+arg_0]
mov	[ecx], edx
test	eax, eax
jz	short loc_1002B690
push	eax
lea	eax, [esp+1Ch+var_10]
push	eax
call	sub_100291F0
add	esp, 8
lea	ecx, [esp+18h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 4
mov	eax, esi
pop	edi
pop	esi
add	esp, 10h
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
test	eax, eax
jz	short loc_1002B6DE
mov	esi, [esp+4+arg_4]
test	esi, esi
jz	short loc_1002B6DE
push	esi
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002B6E3
push	1
push	esi
call	sub_10029570
add	esp, 8
xor	eax, eax
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
mov	edx, [esp+arg_0]
push	esi
test	edx, edx
jz	short loc_1002B748
mov	esi, [esp+4+arg_8]
test	esi, esi
jz	short loc_1002B748
cmp	dword ptr [edx+8], 1
mov	eax, [esp+4+arg_4]
ja	short loc_1002B714
mov	ecx, [edx+0Ch]
mov	ecx, [ecx]
cmp	ecx, eax
jbe	short loc_1002B733
lea	ecx, [esp+4+arg_0]
push	ecx
push	0
push	eax
push	edx
call	sub_1002B5C0
add	esp, 10h
test	eax, eax
jnz	short loc_1002B74D
mov	eax, [esp+4+arg_0]
mov	[esi], eax
xor	eax, eax
pop	esi
retn
cmp	dword ptr [edx], 1
jnz	short loc_1002B740
sub	eax, ecx
mov	[esi], eax
xor	eax, eax
pop	esi
retn
mov	eax, ecx
mov	[esi], eax
xor	eax, eax
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
sub	esp, 10h
cmp	[esp+10h+arg_0], 0
jnz	short loc_1002B760
xor	eax, eax
add	esp, 10h
retn
mov	eax, dword_10049218
push	ebx
push	ebp
push	esi
push	edi
push	eax
lea	ecx, [esp+24h+var_10]
push	ecx
call	sub_10028D30
mov	edi, [esp+28h+arg_4]
mov	ebp, [esp+28h+var_C]
mov	ebx, [esp+28h+Dst]
mov	eax, edi
cdq
add	ebp, ebp
add	ebp, ebp
push	ebp		
mov	esi, eax
xor	esi, edx
push	0		
push	ebx		
sub	esi, edx
call	memset
xor	eax, eax
add	esp, 14h
mov	[esp+20h+var_8], 1
mov	[esp+20h+var_10], eax
test	edi, edi
jz	short loc_1002B7B8
mov	[ebx], esi
jns	short loc_1002B7B8
mov	eax, 1
mov	[esp+20h+var_10], eax
			
mov	ecx, [esp+20h+arg_0]
mov	esi, [ecx]
cmp	esi, eax
jnz	short loc_1002B7E6
lea	edx, [esp+20h+var_10]
push	edx
push	ecx
call	sub_10029C10
add	esp, 8
test	eax, eax
jnz	short loc_1002B7D8
xor	esi, esi
jmp	short loc_1002B7F1
test	esi, esi
jnz	short loc_1002B7E0
mov	esi, eax
jmp	short loc_1002B7F1
neg	eax
mov	esi, eax
jmp	short loc_1002B7F1
xor	eax, eax
test	esi, esi
setz	al
lea	esi, [eax+eax-1]
			
test	ebx, ebx
jz	short loc_1002B808
push	ebp		
push	0		
push	ebx		
call	memset
push	ebx		
call	ds:free
add	esp, 10h
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
align 10h
			
sub	esp, 30h
push	ebx
push	ebp
push	esi
mov	esi, [esp+3Ch+arg_0]
xor	ebx, ebx
push	edi
test	esi, esi
jz	loc_1002BAA1
mov	edi, [esp+40h+arg_4]
test	edi, edi
jz	loc_1002BAA1
mov	ebp, [esp+40h+arg_8]
test	ebp, ebp
jz	loc_1002BAA1
cmp	dword ptr [esi], 1
jz	short loc_1002B897
mov	ecx, [esi+8]
cmp	ecx, 1
jnz	short loc_1002B897
mov	eax, [esi+0Ch]
cmp	[eax], ebx
jnz	short loc_1002B879
push	edi
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_1002B879
pop	edi
pop	esi
pop	ebp
lea	eax, [ebx-3]
pop	ebx
add	esp, 30h
retn
			
cmp	ecx, 1
jnz	short loc_1002B897
mov	ecx, [esi+0Ch]
cmp	[ecx], ebx
jnz	short loc_1002B897
push	ebp
push	edi
call	sub_10028E00
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
			
push	edi
call	sub_10028FB0
add	esp, 4
test	eax, eax
jnz	short loc_1002B8B6
push	ebp
push	esi
call	sub_10028E00
add	esp, 8
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
mov	edx, dword_10049218
push	edx
lea	eax, [esp+44h+var_30]
push	eax
call	sub_10028D30
add	esp, 8
test	eax, eax
jnz	loc_1002BAA6
lea	ecx, [esp+40h+var_10]
push	esi
push	ecx
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002BA8A
lea	edx, [esp+40h+var_20]
push	edi
push	edx
call	sub_10028D90
mov	esi, eax
xor	edi, edi
add	esp, 8
cmp	esi, edi
jnz	loc_1002BA7D
lea	eax, [esp+40h+var_10]
push	eax
mov	[esp+44h+var_10], edi
mov	[esp+44h+var_20], edi
call	sub_10029000
add	esp, 4
test	eax, eax
jz	short loc_1002B95B
lea	ecx, [ecx+0]
lea	ecx, [esp+40h+var_20]
push	ecx
call	sub_10029000
add	esp, 4
test	eax, eax
jz	short loc_1002B95B
lea	edx, [esp+40h+var_10]
push	1
push	edx
call	sub_10029570
lea	eax, [esp+48h+var_20]
push	1
push	eax
call	sub_10029570
lea	ecx, [esp+50h+var_10]
push	ecx
inc	ebx
call	sub_10029000
add	esp, 14h
test	eax, eax
jnz	short loc_1002B920
			
mov	edx, [esp+40h+var_4]
mov	eax, [edx]
and	eax, 1
lea	ecx, [esp+40h+var_30]
push	ecx
jz	short loc_1002B991
lea	edx, [esp+44h+var_20]
push	edx
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, edi
jnz	loc_1002BA70
xor	eax, eax
cmp	[esp+40h+var_20], edi
setz	al
mov	[esp+40h+var_30], eax
jmp	short loc_1002B9B0
lea	edx, [esp+44h+var_10]
push	edx
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, edi
jnz	loc_1002BA70
jmp	short loc_1002B9B0
align 10h
			
mov	eax, [esp+40h+var_24]
mov	ecx, [eax]
and	ecx, 1
jnz	short loc_1002B9CC
lea	edx, [esp+40h+var_30]
push	1
push	edx
call	sub_10029570
add	esp, 8
jmp	short loc_1002B9B0
lea	eax, [esp+40h+var_30]
push	eax
call	sub_10028FB0
add	esp, 4
cmp	eax, 1
jnz	short loc_1002B9F8
lea	ecx, [esp+40h+var_10]
push	ecx
lea	edx, [esp+44h+var_30]
push	edx
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, edi
jnz	short loc_1002BA70
jmp	short loc_1002BA1D
lea	eax, [esp+40h+var_20]
push	eax
lea	ecx, [esp+44h+var_30]
push	ecx
call	sub_10028E00
mov	esi, eax
add	esp, 8
cmp	esi, edi
jnz	short loc_1002BA70
xor	edx, edx
cmp	[esp+40h+var_30], edi
setz	dl
mov	[esp+40h+var_20], edx
lea	eax, [esp+40h+var_30]
push	eax
lea	ecx, [esp+44h+var_20]
push	ecx
lea	edx, [esp+48h+var_10]
push	edx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
cmp	esi, edi
jnz	short loc_1002BA70
lea	eax, [esp+40h+var_30]
push	edi
push	eax
call	sub_10029CB0
add	esp, 8
test	eax, eax
jnz	loc_1002B9B0
lea	ecx, [esp+40h+var_20]
push	ebx
push	ecx
call	sub_10029B70
push	ebp
lea	edx, [esp+4Ch+var_20]
push	edx
lea	eax, [esp+50h+var_10]
push	eax
call	sub_1002A260
add	esp, 14h
mov	esi, eax
			
lea	ecx, [esp+40h+var_20]
push	ecx
call	sub_10028EF0
add	esp, 4
lea	edx, [esp+40h+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
lea	eax, [esp+40h+var_30]
push	eax
call	sub_10028EF0
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 30h
retn
align 10h
			
push	ecx
mov	eax, [esp+4+arg_0]
push	ebx
push	ebp
push	edi
xor	edi, edi
mov	[esp+10h+var_4], edi
cmp	eax, edi
jz	loc_1002BC48
mov	ebx, [esp+10h+arg_4]
cmp	ebx, edi
jz	loc_1002BC48
mov	ebp, [esp+10h+Val]
lea	ecx, [ebp-2]
cmp	ecx, 3Eh
ja	loc_1002BC48
push	esi
push	eax
call	sub_10028F40
add	esp, 4
cmp	byte ptr [ebx],	0
jz	short loc_1002BB38
mov	al, [edi+ebx]
cmp	ebp, 24h
jle	short loc_1002BAFE
movsx	esi, al
jmp	short loc_1002BB0D
movsx	edx, al
push	edx		
call	ds:toupper
add	esp, 4
mov	esi, eax
push	esi		
call	ds:isdigit
add	esp, 4
test	eax, eax
jz	short loc_1002BB49
lea	eax, [esi-30h]
			
test	eax, eax
js	short loc_1002BB26
			
cmp	eax, ebp
jl	short loc_1002BB38
			
mov	al, [edi+ebx]
cmp	al, 2Dh
jz	short loc_1002BB38
cmp	al, 2Bh
jz	short loc_1002BB38
inc	edi
cmp	byte ptr [edi+ebx], 0
jnz	short loc_1002BAF1
			
mov	al, [edi+ebx]
cmp	al, 2Dh
jnz	short loc_1002BB83
mov	[esp+14h+var_4], 1
jmp	short loc_1002BB8F
push	esi		
call	ds:isupper
add	esp, 4
test	eax, eax
jz	short loc_1002BB5C
lea	eax, [esi-37h]
jmp	short loc_1002BB1E
push	esi		
call	ds:islower
add	esp, 4
test	eax, eax
jz	short loc_1002BB6F
lea	eax, [esi-3Dh]
jmp	short loc_1002BB1E
cmp	esi, 2Bh
jnz	short loc_1002BB79
lea	eax, [esi+13h]
jmp	short loc_1002BB22
cmp	esi, 2Fh
jnz	short loc_1002BB26
lea	eax, [esi+10h]
jmp	short loc_1002BB22
cmp	al, 2Bh
jnz	short loc_1002BB90
mov	[esp+14h+var_4], 0
inc	edi
add	edi, ebx
mov	al, [edi]
cmp	ebp, 24h
jle	short loc_1002BB9E
movsx	esi, al
jmp	short loc_1002BBAD
movsx	eax, al
push	eax		
call	ds:toupper
add	esp, 4
mov	esi, eax
push	esi		
call	ds:isdigit
add	esp, 4
test	eax, eax
jz	short loc_1002BBE9
add	esi, 0FFFFFFD0h
			
test	esi, esi
js	short loc_1002BC27
			
cmp	esi, ebp
jge	short loc_1002BC27
mov	ebx, [esp+14h+arg_0]
push	ebp		
push	ebx		
call	sub_1002AE30
add	esp, 8
test	eax, eax
jnz	short loc_1002BC42
push	esi
push	ebx
call	sub_10029660
add	esp, 8
test	eax, eax
jnz	short loc_1002BC42
inc	edi
jmp	short loc_1002BB92
push	esi		
call	ds:isupper
add	esp, 4
test	eax, eax
jz	short loc_1002BBFC
add	esi, 0FFFFFFC9h
jmp	short loc_1002BBBE
push	esi		
call	ds:islower
add	esp, 4
test	eax, eax
jz	short loc_1002BC0F
add	esi, 0FFFFFFC3h
jmp	short loc_1002BBBE
cmp	esi, 2Bh
jnz	short loc_1002BC1B
mov	esi, 3Eh
jmp	short loc_1002BBC2
cmp	esi, 2Fh
jnz	short loc_1002BC27
mov	esi, 3Fh
jmp	short loc_1002BBC2
			
mov	edx, [esp+14h+arg_0]
push	0
push	edx
call	sub_10029CB0
add	esp, 8
neg	eax
sbb	eax, eax
and	eax, [esp+14h+var_4]
mov	[edx], eax
xor	eax, eax
			
pop	esi
pop	edi
pop	ebp
pop	ebx
pop	ecx
retn
			
pop	edi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
pop	ecx
retn
align 10h
sub	esp, 34h
push	ebx
mov	ebx, [esp+38h+arg_4]
cmp	dword ptr [ebx], 1
jz	short loc_1002BC85
cmp	dword ptr [ebx+8], 1
jnz	short loc_1002BC85
mov	eax, [ebx+0Ch]
cmp	dword ptr [eax], 0
jnz	short loc_1002BC85
mov	eax, 0FFFFFFFDh
pop	ebx
add	esp, 34h
retn
			
push	esi
push	edi
push	ebx
mov	[esp+44h+Dst], 0
call	sub_1002B230
mov	esi, eax
add	esp, 4
test	esi, esi
js	short loc_1002BCD2
mov	edi, [esp+40h+arg_8]
mov	ebx, [esp+40h+arg_0]
push	edi
push	ebx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	loc_1002BF56
push	esi
push	edi
call	sub_10029570
push	esi
push	ebx
call	sub_10029500
add	esp, 10h
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 34h
retn
mov	edi, [esp+40h+arg_0]
mov	dword ptr [edi], 0
mov	dword ptr [ebx], 0
mov	ecx, [edi+4]
push	ecx
lea	edx, [esp+44h+var_10]
push	edx
call	sub_10028D30
add	esp, 8
mov	[esp+40h+var_30], eax
test	eax, eax
js	loc_1002BF2C
lea	eax, [esp+40h+var_28]
push	eax
push	ebx
push	edi
call	sub_10029610
add	esp, 0Ch
mov	[esp+40h+var_30], eax
test	eax, eax
js	loc_1002BF2C
mov	eax, [edi+8]
mov	ecx, [edi]
mov	edx, [edi+4]
mov	[esp+40h+var_18], eax
mov	eax, [esp+40h+arg_8]
mov	[esp+40h+var_20], ecx
mov	ecx, [edi+0Ch]
mov	[esp+40h+var_1C], edx
mov	edx, [eax+4]
mov	[esp+40h+var_14], ecx
mov	[eax+8], edx
push	ebp
mov	esi, [edi+8]
mov	ebp, [ebx+8]
cmp	esi, ebp
ja	short loc_1002BD5C
push	ebx
push	edi
call	sub_10029C10
add	esp, 8
test	eax, eax
js	loc_1002BEEA
mov	ecx, [edi+0Ch]
mov	edi, [edi+4]
mov	edx, [esp+44h+arg_4]
sub	esi, ebp
mov	eax, esi
lea	esi, [ecx+eax*4]
sub	edi, eax
mov	[esp+44h+var_2C], eax
push	edx
lea	eax, [esp+48h+var_20]
mov	ebx, ebp
push	eax
mov	[esp+4Ch+var_14], esi
mov	[esp+4Ch+var_1C], edi
mov	[esp+4Ch+var_18], ebx
call	sub_10029C10
add	esp, 8
test	eax, eax
jns	short loc_1002BDA8
dec	[esp+44h+var_2C]
sub	esi, 4
inc	ebx
inc	edi
mov	[esp+44h+var_14], esi
mov	[esp+44h+var_18], ebx
mov	[esp+44h+var_1C], edi
mov	eax, [esi+ebx*4-4]
mov	edi, [esp+44h+arg_4]
mov	ecx, [edi+0Ch]
mov	[esp+44h+Val], eax
mov	ebp, [ecx+ebp*4-4]
cmp	eax, ebp
jb	short loc_1002BDC9
mov	[esp+44h+Val], 1
jmp	short loc_1002BE02
cmp	ebx, 1
jbe	loc_1002BEDE
lea	edx, [esp+44h+var_24]
push	edx
mov	edx, [esi+ebx*4-8]
lea	ecx, [esp+48h+Val]
push	ecx
push	ebp
push	edx
push	eax
call	sub_1002D8E0
add	esp, 14h
mov	[esp+44h+var_30], eax
test	eax, eax
js	loc_1002BF2B
cmp	[esp+44h+Val], 0
jbe	loc_1002BEE6
lea	eax, [esp+44h+var_10]
push	eax
push	edi
call	sub_10028E00
mov	ecx, [esp+4Ch+Val]
push	ecx		
lea	edx, [esp+50h+var_10]
push	edx		
call	sub_1002AE30
add	esp, 10h
mov	[esp+44h+var_30], eax
test	eax, eax
js	loc_1002BF2B
lea	eax, [esp+44h+var_20]
push	eax
lea	ecx, [esp+48h+var_10]
push	ecx
mov	esi, 4
call	sub_10029C10
add	esp, 8
test	eax, eax
jle	short loc_1002BE78
test	esi, esi
jle	short loc_1002BE72
dec	[esp+44h+Val]
lea	edx, [esp+44h+var_10]
push	edi
push	edx
call	sub_100299B0
lea	eax, [esp+4Ch+var_20]
push	eax
lea	ecx, [esp+50h+var_10]
push	ecx
dec	esi
call	sub_10029C10
add	esp, 10h
test	eax, eax
jg	short loc_1002BE46
test	esi, esi
js	loc_1002BF23
lea	edx, [esp+44h+var_10]
push	edx
lea	eax, [esp+48h+var_20]
push	eax
call	sub_100299B0
add	esp, 8
mov	[esp+44h+var_30], eax
test	eax, eax
js	loc_1002BF2B
mov	edx, [esp+44h+arg_0]
mov	eax, [edx+8]
cmp	eax, 1
jbe	short loc_1002BEBE
mov	ecx, [edx+0Ch]
lea	ecx, [ecx+eax*4-4]
lea	esp, [esp+0]
cmp	dword ptr [ecx], 0
jnz	short loc_1002BEBE
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002BEB0
			
mov	ecx, [esp+44h+Val]
mov	[edx+8], eax
mov	edx, [esp+44h+arg_8]
mov	eax, [edx+0Ch]
mov	edx, [esp+44h+var_2C]
mov	ebx, edi
mov	edi, [esp+44h+arg_0]
mov	[eax+edx*4], ecx
jmp	loc_1002BD40
mov	[esp+44h+Val], 0
mov	edi, [esp+44h+arg_0]
mov	eax, [esp+44h+var_28]
test	eax, eax
jz	short loc_1002BEFC
push	eax
push	edi
call	sub_10029570
add	esp, 8
mov	edx, [esp+44h+arg_8]
mov	eax, [edx+8]
cmp	eax, 1
jbe	short loc_1002BF1E
mov	ecx, [edx+0Ch]
lea	ecx, [ecx+eax*4-4]
nop
cmp	dword ptr [ecx], 0
jnz	short loc_1002BF1E
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002BF10
			
mov	[edx+8], eax
jmp	short loc_1002BF2B
mov	[esp+44h+var_30], 0FFFFFFFDh
			
pop	ebp
			
mov	esi, [esp+40h+Dst]
test	esi, esi
jz	short loc_1002BF52
mov	edx, [esp+40h+var_C]
lea	eax, ds:0[edx*4]
push	eax		
push	0		
push	esi		
call	memset
push	esi		
call	ds:free
add	esp, 10h
mov	eax, [esp+40h+var_30]
pop	edi
pop	esi
pop	ebx
add	esp, 34h
retn
align 10h
			
sub	esp, 38h
push	ebx
mov	ebx, [esp+3Ch+arg_0]
xor	ecx, ecx
push	ebp
cmp	ebx, ecx
jz	loc_1002C13F
mov	ebp, [esp+40h+arg_4]
cmp	ebp, ecx
jz	loc_1002C13F
mov	eax, [ebx]
mov	[esp+40h+var_38], eax
mov	eax, [ebp+0]
mov	[esp+40h+var_34], eax
cmp	eax, 1
jz	short loc_1002BFA7
cmp	dword ptr [ebp+8], 1
jnz	short loc_1002BFA7
mov	edx, [ebp+0Ch]
cmp	[edx], ecx
jnz	short loc_1002BFA7
pop	ebp
lea	eax, [ecx-3]
pop	ebx
add	esp, 38h
retn
			
push	esi
push	edi
mov	edi, [esp+48h+arg_C]
mov	[esp+48h+var_4], ecx
mov	[esp+48h+var_14], ecx
mov	[esp+48h+var_24], ecx
cmp	edi, ecx
jz	short loc_1002BFDF
cmp	edi, ebx
jz	short loc_1002BFDF
cmp	edi, ebp
jz	short loc_1002BFDF
push	edi
push	ebx
call	sub_10028E00
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002C114
mov	[esp+48h+arg_0], edi
jmp	short loc_1002BFFF
			
lea	eax, [esp+48h+var_20]
push	ebx
push	eax
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002C114
lea	ecx, [esp+48h+var_20]
mov	[esp+48h+arg_0], ecx
mov	edi, [esp+48h+arg_8]
test	edi, edi
jz	short loc_1002C033
cmp	edi, ebx
jz	short loc_1002C033
cmp	edi, ebp
jz	short loc_1002C033
mov	edx, [ebx+8]
push	edx
push	edi
call	sub_100291A0
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002C114
mov	eax, edi
push	eax
call	sub_10028F40
add	esp, 4
jmp	short loc_1002C052
			
mov	ecx, [ebx+8]
push	ecx
lea	edx, [esp+4Ch+var_10]
push	edx
call	sub_10028D30
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002C114
lea	edi, [esp+48h+var_10]
push	ebp
push	ebx
call	sub_10029C10
add	esp, 8
test	eax, eax
jg	short loc_1002C084
jz	short loc_1002C06D
push	edi
call	sub_10028F40
add	esp, 4
jmp	short loc_1002C0B1
push	1
push	edi
call	sub_10028F70
mov	ebx, [esp+50h+arg_0]
push	ebx
call	sub_10028F40
add	esp, 0Ch
jmp	short loc_1002C0B5
lea	eax, [esp+48h+var_30]
push	ebp
push	eax
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
js	short loc_1002C114
mov	edx, [esp+48h+arg_0]
push	edi
lea	ecx, [esp+4Ch+var_30]
push	ecx
push	edx
call	sub_1002BC60
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002C114
mov	ebx, [esp+48h+arg_0]
mov	eax, [esp+48h+var_38]
xor	ecx, ecx
cmp	eax, [esp+48h+var_34]
push	0
setnz	cl
mov	[ebx], eax
push	edi
mov	[edi], ecx
call	sub_10029CB0
add	esp, 8
test	eax, eax
jnz	short loc_1002C0D7
mov	[edi], eax
push	0
push	ebx
call	sub_10029CB0
add	esp, 8
test	eax, eax
jnz	short loc_1002C0E8
mov	[ebx], eax
mov	eax, [esp+48h+arg_8]
test	eax, eax
jz	short loc_1002C0FE
cmp	eax, edi
jz	short loc_1002C0FE
push	eax
push	edi
call	sub_100291F0
add	esp, 8
			
mov	eax, [esp+48h+arg_C]
test	eax, eax
jz	short loc_1002C114
cmp	eax, ebx
jz	short loc_1002C114
push	eax
push	ebx
call	sub_100291F0
add	esp, 8
			
lea	edx, [esp+48h+var_30]
push	edx
call	sub_10028EF0
lea	eax, [esp+4Ch+var_20]
push	eax
call	sub_10028EF0
lea	ecx, [esp+50h+var_10]
push	ecx
call	sub_10028EF0
add	esp, 0Ch
pop	edi
mov	eax, esi
pop	esi
pop	ebp
pop	ebx
add	esp, 38h
retn
			
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
add	esp, 38h
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
push	edi
test	ebx, ebx
jz	loc_1002C1E0
mov	edi, [esp+0Ch+arg_4]
test	edi, edi
jz	short loc_1002C1E0
mov	esi, [esp+0Ch+arg_8]
test	esi, esi
jz	short loc_1002C1E0
cmp	dword ptr [edi], 1
jnz	short loc_1002C17D
pop	edi
pop	esi
mov	eax, 0FFFFFFFDh
pop	ebx
retn
push	edi
push	ebx
call	sub_10029C10
add	esp, 8
push	esi
test	eax, eax
jle	short loc_1002C1B4
push	0
push	edi
push	ebx
call	sub_1002BF60
add	esp, 10h
test	eax, eax
jnz	short loc_1002C1E5
cmp	dword ptr [esi], 1
jnz	short loc_1002C1DA
push	esi
push	edi
push	esi
call	sub_1002A130
add	esp, 0Ch
test	eax, eax
jz	short loc_1002C1DA
pop	edi
pop	esi
pop	ebx
retn
jns	short loc_1002C1D2
push	ebx
call	sub_10028E00
add	esp, 8
test	eax, eax
jnz	short loc_1002C1E5
push	ebx
call	sub_10028FB0
add	esp, 4
test	eax, eax
jns	short loc_1002C1DA
jmp	short loc_1002C1A1
call	sub_10028F40
add	esp, 4
			
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
			
mov	eax, 0FFFFFFFCh
			
pop	edi
pop	esi
pop	ebx
retn
align 10h
sub	esp, 20h
push	ebp
push	edi
mov	edi, [esp+28h+arg_0]
test	edi, edi
jz	loc_1002C39D
mov	ebp, [esp+28h+arg_4]
test	ebp, ebp
jz	loc_1002C39D
push	ebx
mov	ebx, 1
cmp	[edi], ebx
jnz	short loc_1002C221
lea	eax, [ebx-4]
pop	ebx
pop	edi
pop	ebp
add	esp, 20h
retn
mov	ecx, [edi+8]
cmp	ecx, ebx
ja	short loc_1002C244
mov	eax, [edi+0Ch]
mov	eax, [eax]
cmp	eax, ebx
jb	short loc_1002C233
ja	short loc_1002C244
push	ebp
push	edi
call	sub_10028E00
add	esp, 8
pop	ebx
pop	edi
pop	ebp
add	esp, 20h
retn
			
push	ecx
lea	ecx, [esp+30h+var_20]
push	ecx
call	sub_10028D30
add	esp, 8
test	eax, eax
jnz	short loc_1002C21A
push	esi
lea	edx, [esp+30h+var_10]
push	edi
push	edx
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002C386
mov	eax, [esp+30h+var_8]
cmp	eax, ebx
jbe	short loc_1002C287
shr	eax, 1
push	eax
lea	eax, [esp+34h+var_10]
push	eax
call	sub_100293C0
add	esp, 8
lea	ecx, [esp+30h+var_20]
push	ecx
lea	edx, [esp+34h+var_10]
push	edx
call	sub_10028E00
lea	eax, [esp+38h+var_20]
push	eax
mov	ecx, eax
push	ecx
call	sub_1002A440
mov	esi, eax
add	esp, 10h
test	esi, esi
jnz	loc_1002C379
lea	edx, [esp+30h+var_20]
push	edx
mov	eax, edx
push	edi
push	eax
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1002C379
lea	ecx, [esp+30h+var_10]
push	ecx
call	sub_10029430
push	esi
lea	edx, [esp+38h+var_20]
push	edx
lea	eax, [esp+3Ch+var_10]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002BF60
mov	esi, eax
add	esp, 14h
test	esi, esi
jnz	loc_1002C379
lea	edx, [esp+30h+var_10]
push	ebx
push	edx
call	sub_10029570
add	esp, 8
cmp	[esp+30h+var_20], ebx
jz	short loc_1002C317
cmp	[esp+30h+var_18], ebx
jnz	short loc_1002C317
mov	eax, [esp+30h+var_14]
cmp	[eax], esi
jz	short loc_1002C35D
			
lea	ecx, [esp+30h+var_10]
push	ecx
lea	edx, [esp+34h+var_20]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1002C379
lea	ecx, [esp+30h+var_20]
push	ecx
lea	edx, [esp+34h+var_10]
push	edx
call	sub_10028E00
lea	eax, [esp+38h+var_20]
push	eax
mov	ecx, eax
push	ecx
call	sub_1002A440
mov	esi, eax
add	esp, 10h
test	esi, esi
jz	loc_1002C2B0
jmp	short loc_1002C379
lea	edx, [esp+30h+var_10]
push	edx
mov	eax, edx
push	ebx
push	eax
call	sub_1002B460
lea	ecx, [esp+3Ch+var_10]
push	ebp
push	ecx
call	sub_100291F0
add	esp, 14h
			
lea	edx, [esp+30h+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
lea	eax, [esp+30h+var_20]
push	eax
call	sub_10028EF0
add	esp, 4
mov	eax, esi
pop	esi
pop	ebx
pop	edi
pop	ebp
add	esp, 20h
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	ebp
add	esp, 20h
retn
align 10h
			
mov	ecx, [esp+arg_0]
push	esi
push	edi
test	ecx, ecx
jz	short loc_1002C3EF
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_1002C3EF
mov	edi, [esp+8+arg_8]
test	edi, edi
jz	short loc_1002C3EF
mov	esi, [esp+8+arg_C]
test	esi, esi
jz	short loc_1002C3EF
push	esi
push	eax
push	ecx
call	sub_1002A130
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002C3F4
push	esi
push	edi
push	esi
call	sub_1002C150
add	esp, 0Ch
pop	edi
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	esi
retn
align 10h
			
mov	ecx, [esp+arg_0]
push	esi
push	edi
test	ecx, ecx
jz	short loc_1002C43F
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_1002C43F
mov	edi, [esp+8+arg_8]
test	edi, edi
jz	short loc_1002C43F
mov	esi, [esp+8+arg_C]
test	esi, esi
jz	short loc_1002C43F
push	esi
push	eax
push	ecx
call	sub_1002A1A0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002C444
push	esi
push	edi
push	esi
call	sub_1002C150
add	esp, 0Ch
pop	edi
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	esi
retn
align 10h
			
mov	ecx, [esp+arg_0]
push	esi
push	edi
test	ecx, ecx
jz	short loc_1002C48F
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_1002C48F
mov	edi, [esp+8+arg_8]
test	edi, edi
jz	short loc_1002C48F
mov	esi, [esp+8+arg_C]
test	esi, esi
jz	short loc_1002C48F
push	esi
push	eax
push	ecx
call	sub_1002A260
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002C494
push	esi
push	edi
push	esi
call	sub_1002C150
add	esp, 0Ch
pop	edi
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	esi
retn
align 10h
			
mov	eax, [esp+arg_0]
push	esi
push	edi
test	eax, eax
jz	short loc_1002C4D6
mov	edi, [esp+8+arg_4]
test	edi, edi
jz	short loc_1002C4D6
mov	esi, [esp+8+arg_8]
test	esi, esi
jz	short loc_1002C4D6
push	esi
push	eax
call	sub_1002A440
add	esp, 8
test	eax, eax
jnz	short loc_1002C4DB
push	esi
push	edi
push	esi
call	sub_1002C150
add	esp, 0Ch
pop	edi
pop	esi
retn
			
mov	eax, 0FFFFFFFCh
pop	edi
pop	esi
retn
align 10h
sub	esp, 30h
push	esi
mov	esi, [esp+34h+arg_0]
push	edi
test	esi, esi
jz	loc_1002C752
mov	edi, [esp+38h+arg_4]
test	edi, edi
jz	loc_1002C752
cmp	[esp+38h+arg_C], 0
jz	loc_1002C752
cmp	dword ptr [edi], 1
push	ebp
jz	loc_1002C746
mov	ebp, [esp+3Ch+arg_8]
push	ebp
call	sub_10028FB0
add	esp, 4
test	eax, eax
jle	loc_1002C746
mov	eax, dword_10049218
push	eax
lea	ecx, [esp+40h+var_10]
push	ecx
call	sub_10028D30
add	esp, 8
test	eax, eax
jnz	loc_1002C73F
lea	edx, [esp+3Ch+var_20]
push	esi
push	edx
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002C730
lea	eax, [esp+3Ch+var_20]
push	eax
mov	ecx, eax
push	ebp
push	ecx
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1002C730
mov	edx, dword_10049218
push	edx
lea	eax, [esp+40h+var_30]
push	eax
call	sub_10028D30
mov	esi, eax
add	esp, 8
test	esi, esi
jnz	loc_1002C723
lea	ecx, [esp+3Ch+var_10]
push	1
push	ecx
call	sub_10028F70
lea	edx, [esp+44h+var_30]
push	1
push	edx
call	sub_10029660
mov	eax, [ebp+8]
add	eax, eax
push	eax
lea	ecx, [esp+50h+var_30]
push	ecx
call	sub_10029230
push	esi
lea	edx, [esp+58h+var_30]
push	edx
mov	eax, edx
push	ebp
push	eax
call	sub_1002BF60
mov	esi, eax
add	esp, 28h
test	esi, esi
jnz	loc_1002C716
mov	ecx, [edi+8]
dec	ecx
push	ebx
mov	[esp+40h+arg_0], eax
jz	loc_1002C68A
mov	edx, [edi+0Ch]
mov	eax, [esp+40h+arg_0]
mov	ebx, [edx+eax*4]
xor	edi, edi
test	bl, 1
jz	short loc_1002C633
lea	ecx, [esp+40h+var_10]
push	ecx
lea	edx, [esp+44h+var_20]
push	edx
mov	eax, ecx
push	eax
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1002C715
lea	ecx, [esp+40h+var_30]
push	ecx
lea	edx, [esp+44h+var_10]
push	ebp
push	edx
call	sub_1002B100
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1002C715
lea	eax, [esp+40h+var_20]
push	eax
shr	ebx, 1
call	sub_1002B060
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	loc_1002C715
lea	ecx, [esp+40h+var_30]
push	ecx
lea	edx, [esp+44h+var_20]
push	ebp
push	edx
call	sub_1002B100
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	loc_1002C715
inc	edi
cmp	edi, 20h
jb	short loc_1002C5F2
mov	ecx, [esp+40h+arg_4]
mov	eax, [esp+40h+arg_0]
mov	edx, [ecx+8]
inc	eax
dec	edx
mov	[esp+40h+arg_0], eax
mov	edi, ecx
cmp	eax, edx
jb	loc_1002C5E6
mov	eax, [edi+0Ch]
mov	ecx, [esp+40h+arg_0]
mov	ebx, [eax+ecx*4]
test	ebx, ebx
jz	short loc_1002C703
test	bl, 1
jz	short loc_1002C6D1
lea	edx, [esp+40h+var_10]
push	edx
lea	eax, [esp+44h+var_20]
push	eax
mov	ecx, edx
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1002C715
lea	edx, [esp+40h+var_30]
push	edx
lea	eax, [esp+44h+var_10]
push	ebp
push	eax
call	sub_1002B100
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1002C715
lea	ecx, [esp+40h+var_20]
push	ecx
shr	ebx, 1
call	sub_1002B060
mov	esi, eax
add	esp, 4
test	esi, esi
jnz	short loc_1002C715
lea	edx, [esp+40h+var_30]
push	edx
lea	eax, [esp+44h+var_20]
push	ebp
push	eax
call	sub_1002B100
mov	esi, eax
add	esp, 0Ch
test	esi, esi
jnz	short loc_1002C715
test	ebx, ebx
jnz	short loc_1002C698
mov	ecx, [esp+40h+arg_C]
push	ecx
lea	edx, [esp+44h+var_10]
push	edx
call	sub_100291F0
add	esp, 8
			
pop	ebx
lea	eax, [esp+3Ch+var_30]
push	eax
call	sub_10028EF0
add	esp, 4
lea	ecx, [esp+3Ch+var_20]
push	ecx
call	sub_10028EF0
add	esp, 4
			
lea	edx, [esp+3Ch+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
mov	eax, esi
pop	ebp
pop	edi
pop	esi
add	esp, 30h
retn
			
pop	ebp
pop	edi
mov	eax, 0FFFFFFFDh
pop	esi
add	esp, 30h
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	esi
add	esp, 30h
retn
align 10h
sub	esp, 70h
push	ebp
mov	ebp, [esp+74h+arg_4]
push	edi
push	ebp
call	sub_1002B230
xor	edi, edi
add	esp, 4
cmp	eax, edi
jl	short loc_1002C786
pop	edi
pop	ebp
add	esp, 70h
mov	[esp+arg_4], eax
jmp	sub_1002AB80
push	ebx
push	esi
lea	eax, [esp+80h+var_60]
push	ebp
push	eax
mov	[esp+88h+Dst], edi
mov	[esp+88h+Memory], edi
mov	[esp+88h+var_44], edi
mov	[esp+88h+var_24], edi
mov	[esp+88h+var_14], edi
mov	[esp+88h+var_4], edi
mov	[esp+88h+var_64], edi
call	sub_10028D90
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	ecx, dword_10049218
push	ecx
lea	edx, [esp+84h+var_40]
push	edx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	eax, dword_10049218
push	eax
lea	ecx, [esp+84h+var_50]
push	ecx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	edx, dword_10049218
push	edx
lea	eax, [esp+84h+var_30]
push	eax
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	ecx, dword_10049218
push	ecx
lea	edx, [esp+84h+var_20]
push	edx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	eax, dword_10049218
push	eax
lea	ecx, [esp+84h+var_10]
push	ecx
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
mov	edx, dword_10049218
push	edx
lea	eax, [esp+84h+var_70]
push	eax
call	sub_10028D30
mov	esi, eax
add	esp, 8
cmp	esi, edi
jl	loc_1002C9B6
push	ebp
call	sub_10029030
mov	edi, eax
lea	ecx, [esp+84h+var_60]
push	edi
push	ecx
call	sub_10029570
lea	edx, [esp+8Ch+var_40]
push	edi
push	edx
call	sub_10029B70
mov	esi, eax
add	esp, 14h
test	esi, esi
js	loc_1002C9B4
mov	ebx, [esp+80h+arg_0]
lea	eax, [esp+80h+var_50]
push	eax
lea	ecx, [esp+84h+var_60]
push	ecx
push	ebx
call	sub_1002AA70
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002C9B4
lea	edx, [esp+80h+var_30]
push	edx
push	edi
push	ebx
call	sub_1002AB80
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002C9B4
lea	eax, [esp+80h+var_20]
push	eax
lea	ecx, [esp+84h+var_60]
push	edi
push	ecx
call	sub_1002AB80
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002C9B4
lea	edx, [esp+80h+var_10]
push	edx
lea	eax, [esp+84h+var_50]
push	eax
lea	ecx, [esp+88h+var_30]
push	ecx
call	sub_1002A1A0
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002C9B4
lea	edx, [esp+80h+var_70]
push	edx
lea	eax, [esp+84h+var_20]
push	eax
lea	ecx, [esp+88h+var_10]
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002C9B4
lea	edx, [esp+80h+var_70]
push	edi
push	edx
call	sub_10029500
add	esp, 8
cmp	[esp+80h+var_70], 0
jz	short loc_1002C972
lea	ecx, [ecx+0]
lea	eax, [esp+80h+var_70]
push	eax
lea	ecx, [esp+84h+var_40]
push	ecx
mov	edx, eax
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002C9B4
cmp	[esp+80h+var_70], 0
jnz	short loc_1002C950
mov	edi, [esp+80h+arg_8]
push	edi
lea	eax, [esp+84h+var_60]
push	eax
lea	ecx, [esp+88h+var_70]
push	ecx
call	sub_1002A260
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002C9B4
push	edi
lea	edx, [esp+84h+var_50]
push	edi
push	edx
call	sub_1002A130
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002C9B4
push	edi
push	ebp
push	edi
call	sub_1002C150
add	esp, 0Ch
mov	esi, eax
			
xor	edi, edi
			
mov	ebx, [esp+80h+Dst]
cmp	ebx, edi
mov	edi, ds:free
jz	short loc_1002C9DE
mov	eax, [esp+80h+var_5C]
lea	ecx, ds:0[eax*4]
push	ecx		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+Memory]
test	ebx, ebx
jz	short loc_1002CA00
mov	edx, [esp+80h+var_3C]
lea	eax, ds:0[edx*4]
push	eax		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+var_44]
test	ebx, ebx
jz	short loc_1002CA22
mov	ecx, [esp+80h+var_4C]
lea	edx, ds:0[ecx*4]
push	edx		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+var_24]
test	ebx, ebx
jz	short loc_1002CA44
mov	eax, [esp+80h+var_2C]
lea	ecx, ds:0[eax*4]
push	ecx		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+var_14]
test	ebx, ebx
jz	short loc_1002CA66
mov	edx, [esp+80h+var_1C]
lea	eax, ds:0[edx*4]
push	eax		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+var_4]
test	ebx, ebx
jz	short loc_1002CA88
mov	ecx, [esp+80h+var_C]
lea	edx, ds:0[ecx*4]
push	edx		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	ebx, [esp+80h+var_64]
test	ebx, ebx
jz	short loc_1002CAAA
mov	eax, [esp+80h+var_6C]
lea	ecx, ds:0[eax*4]
push	ecx		
push	0		
push	ebx		
call	memset
push	ebx		
call	edi 
add	esp, 10h
mov	eax, esi
pop	esi
pop	ebx
pop	edi
pop	ebp
add	esp, 70h
retn
align 10h
			
mov	edx, [esp+arg_0]
push	esi
push	edi
test	edx, edx
jz	short loc_1002CB3D
mov	esi, [esp+8+arg_4]
test	esi, esi
jz	short loc_1002CB3D
mov	edi, [esp+8+arg_8]
test	edi, edi
jz	short loc_1002CB3D
cmp	dword ptr [edx], 1
jz	short loc_1002CAED
cmp	dword ptr [edx+8], 1
jnz	short loc_1002CAED
mov	eax, [edx+0Ch]
cmp	dword ptr [eax], 0
jz	short loc_1002CB35
			
push	esi
call	sub_10028FB0
add	esp, 4
test	eax, eax
jz	short loc_1002CB35
mov	ecx, [esi+0Ch]
mov	eax, [ecx]
and	eax, 1
jz	short loc_1002CB12
push	edi
push	esi
push	edx
call	sub_1002AA70
add	esp, 0Ch
pop	edi
pop	esi
retn
push	edx
call	sub_10029000
add	esp, 4
test	eax, eax
jz	short loc_1002CB27
pop	edi
mov	eax, 0FFFFFFFBh
pop	esi
retn
push	edi
push	esi
push	edx
call	sub_1002C760
add	esp, 0Ch
pop	edi
pop	esi
retn
			
pop	edi
mov	eax, 0FFFFFFFDh
pop	esi
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	esi
retn
align 10h
			
mov	ecx, [esp+arg_0]
mov	edx, [esp+arg_4]
mov	eax, [ecx+8]
push	ebx
push	ebp
push	esi
push	edi
mov	edi, [edx+8]
cmp	eax, edi
jb	short loc_1002CB70
mov	esi, [ecx+0Ch]
mov	ebp, [edx+0Ch]
mov	ebx, eax
jmp	short loc_1002CB7A
mov	esi, [edx+0Ch]
mov	ebp, [ecx+0Ch]
mov	ebx, edi
mov	edi, eax
mov	eax, [esp+10h+arg_8]
push	ebx
push	eax
call	sub_100291A0
add	esp, 8
mov	[esp+10h+arg_0], eax
test	eax, eax
js	short loc_1002CBFD
mov	edx, [esp+10h+arg_8]
mov	ecx, [edx+0Ch]
xor	eax, eax
test	edi, edi
jz	short loc_1002CBB8
mov	edx, ebp
sub	edx, esi
mov	eax, edi
mov	ebp, [edx+esi]
xor	ebp, [esi]
add	ecx, 4
mov	[ecx-4], ebp
add	esi, 4
dec	edi
jnz	short loc_1002CBA3
mov	edx, [esp+10h+arg_8]
cmp	eax, ebx
jnb	short loc_1002CBD1
mov	edx, ebx
sub	ecx, esi
sub	edx, eax
mov	eax, [esi]
mov	[ecx+esi], eax
add	esi, 4
dec	edx
jnz	short loc_1002CBC2
mov	edx, [esp+10h+arg_8]
mov	[edx+8], ebx
mov	dword ptr [edx], 0
mov	ecx, ebx
cmp	ebx, 1
jbe	short loc_1002CBF6
mov	eax, [edx+0Ch]
lea	ebx, [eax+ebx*4-4]
cmp	dword ptr [ebx], 0
jnz	short loc_1002CBF6
dec	ecx
sub	ebx, 4
cmp	ecx, 1
ja	short loc_1002CBE8
			
mov	eax, [esp+10h+arg_0]
mov	[edx+8], ecx
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, [esp+58h+arg_4]
push	edi
mov	edi, ecx
xor	ecx, ecx
mov	[esp+5Ch+var_58], eax
mov	[esp+5Ch+var_54], ecx
cmp	[esp+5Ch+arg_0], ecx
jz	loc_1002CE3F
mov	eax, esi
shr	eax, 3
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_30], ecx
mov	edx, esi
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	[esp+5Ch+var_48], eax
mov	ecx, esi
shr	ecx, 6
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	[esp+5Ch+var_28], edx
mov	eax, esi
shr	eax, 9
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_40], ecx
mov	edx, esi
shr	edx, 0Ch
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	[esp+5Ch+var_50], eax
mov	ecx, esi
shr	ecx, 0Fh
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	[esp+5Ch+var_38], edx
mov	eax, esi
shr	eax, 12h
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_4C], ecx
mov	edx, esi
shr	edx, 15h
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	ecx, esi
shr	ecx, 18h
mov	[esp+5Ch+var_44], eax
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	eax, esi
shr	eax, 1Bh
mov	[esp+5Ch+var_3C], edx
and	eax, 7
mov	edx, esi
lea	ecx, [esp+eax*4+5Ch+var_24]
shr	edx, 1Eh
lea	eax, [esp+edx*4+5Ch+var_24]
push	ebx
mov	[esp+60h+var_34], ecx
mov	[esp+60h+var_2C], eax
push	ebp
mov	eax, [edi]
mov	ebx, eax
and	eax, 3FFFFFFFh
lea	edx, [eax+eax]
mov	ebp, edx
xor	ebp, eax
lea	ecx, [edx+edx]
mov	[esp+64h+var_18], ebp
mov	[esp+64h+var_14], ecx
mov	[esp+64h+var_1C], edx
mov	ebp, ecx
xor	ecx, edx
mov	edx, [esp+64h+var_48]
xor	ebp, eax
mov	[esp+64h+var_10], ebp
mov	[esp+64h+var_C], ecx
xor	ecx, eax
mov	[esp+64h+var_8], ecx
mov	ecx, [esp+64h+var_30]
mov	[esp+64h+var_20], eax
mov	[esp+64h+var_24], 0
mov	ecx, [ecx]
lea	eax, ds:0[ecx*8]
xor	eax, [edx]
mov	edx, [esp+64h+var_28]
mov	edx, [edx]
mov	ebp, edx
shr	edx, 1Ah
shl	ebp, 6
xor	eax, ebp
shr	ecx, 1Dh
xor	ecx, edx
mov	edx, [esp+64h+var_40]
mov	edx, [edx]
mov	ebp, edx
shr	edx, 17h
xor	ecx, edx
mov	edx, [esp+64h+var_50]
mov	edx, [edx]
shl	ebp, 9
xor	eax, ebp
mov	ebp, edx
shr	edx, 14h
xor	ecx, edx
mov	edx, [esp+64h+var_38]
mov	edx, [edx]
shl	ebp, 0Ch
xor	eax, ebp
mov	ebp, edx
shr	edx, 11h
xor	ecx, edx
mov	edx, [esp+64h+var_4C]
mov	edx, [edx]
shl	ebp, 0Fh
xor	eax, ebp
mov	ebp, edx
shr	edx, 0Eh
dec	[esp+64h+arg_0]
xor	ecx, edx
mov	edx, [esp+64h+var_44]
mov	edx, [edx]
shl	ebp, 12h
xor	eax, ebp
mov	ebp, edx
shr	edx, 0Bh
xor	ecx, edx
mov	edx, [esp+64h+var_3C]
mov	edx, [edx]
shl	ebp, 15h
xor	eax, ebp
mov	ebp, edx
shr	edx, 8
xor	ecx, edx
mov	edx, [esp+64h+var_34]
mov	edx, [edx]
shl	ebp, 18h
xor	eax, ebp
mov	ebp, edx
add	edi, 4
shr	ebx, 1Eh
shl	ebp, 1Bh
shr	edx, 5
xor	ecx, edx
mov	edx, [esp+64h+var_2C]
mov	edx, [edx]
xor	eax, ebp
mov	ebp, edx
shl	ebp, 1Eh
shr	edx, 2
xor	eax, ebp
xor	ecx, edx
test	bl, 1
jz	short loc_1002CDF9
mov	edx, esi
shl	edx, 1Eh
xor	eax, edx
mov	edx, esi
shr	edx, 2
xor	ecx, edx
test	bl, 2
jz	short loc_1002CE0B
mov	edx, esi
shl	edx, 1Fh
xor	eax, edx
mov	edx, esi
shr	edx, 1
xor	ecx, edx
xor	eax, [esp+64h+var_54]
mov	edx, [esp+64h+var_58]
mov	[edx], eax
add	edx, 4
cmp	[esp+64h+arg_0], 0
mov	[esp+64h+var_58], edx
mov	[esp+64h+var_54], ecx
jnz	loc_1002CCE5
pop	ebp
pop	ebx
mov	[edx], ecx
pop	edi
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
mov	[eax], ecx
mov	ecx, [esp+5Ch+var_4]
pop	edi
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 58h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+58h+var_4], eax
mov	eax, [esp+58h+arg_4]
push	edi
mov	edi, ecx
xor	ecx, ecx
mov	[esp+5Ch+var_58], eax
mov	[esp+5Ch+var_54], ecx
cmp	[esp+5Ch+arg_0], ecx
jz	loc_1002D094
mov	eax, esi
shr	eax, 3
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_30], ecx
mov	edx, esi
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	[esp+5Ch+var_48], eax
mov	ecx, esi
shr	ecx, 6
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	[esp+5Ch+var_28], edx
mov	eax, esi
shr	eax, 9
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_40], ecx
mov	edx, esi
shr	edx, 0Ch
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	[esp+5Ch+var_50], eax
mov	ecx, esi
shr	ecx, 0Fh
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	[esp+5Ch+var_38], edx
mov	eax, esi
shr	eax, 12h
and	eax, 7
lea	ecx, [esp+eax*4+5Ch+var_24]
mov	[esp+5Ch+var_4C], ecx
mov	edx, esi
shr	edx, 15h
and	edx, 7
lea	eax, [esp+edx*4+5Ch+var_24]
mov	ecx, esi
shr	ecx, 18h
mov	[esp+5Ch+var_44], eax
and	ecx, 7
lea	edx, [esp+ecx*4+5Ch+var_24]
mov	eax, esi
shr	eax, 1Bh
mov	[esp+5Ch+var_3C], edx
and	eax, 7
mov	edx, esi
lea	ecx, [esp+eax*4+5Ch+var_24]
shr	edx, 1Eh
lea	eax, [esp+edx*4+5Ch+var_24]
push	ebx
mov	[esp+60h+var_34], ecx
mov	[esp+60h+var_2C], eax
push	ebp
mov	eax, [edi]
mov	ebx, eax
and	eax, 3FFFFFFFh
lea	edx, [eax+eax]
mov	ebp, edx
xor	ebp, eax
lea	ecx, [edx+edx]
mov	[esp+64h+var_18], ebp
mov	[esp+64h+var_14], ecx
mov	[esp+64h+var_1C], edx
mov	ebp, ecx
xor	ecx, edx
mov	edx, [esp+64h+var_48]
xor	ebp, eax
mov	[esp+64h+var_10], ebp
mov	[esp+64h+var_C], ecx
xor	ecx, eax
mov	[esp+64h+var_8], ecx
mov	ecx, [esp+64h+var_30]
mov	[esp+64h+var_20], eax
mov	[esp+64h+var_24], 0
mov	ecx, [ecx]
lea	eax, ds:0[ecx*8]
xor	eax, [edx]
mov	edx, [esp+64h+var_28]
mov	edx, [edx]
mov	ebp, edx
shr	edx, 1Ah
shl	ebp, 6
xor	eax, ebp
shr	ecx, 1Dh
xor	ecx, edx
mov	edx, [esp+64h+var_40]
mov	edx, [edx]
mov	ebp, edx
shr	edx, 17h
xor	ecx, edx
mov	edx, [esp+64h+var_50]
mov	edx, [edx]
shl	ebp, 9
xor	eax, ebp
mov	ebp, edx
shr	edx, 14h
xor	ecx, edx
mov	edx, [esp+64h+var_38]
mov	edx, [edx]
shl	ebp, 0Ch
xor	eax, ebp
mov	ebp, edx
shr	edx, 11h
xor	ecx, edx
mov	edx, [esp+64h+var_4C]
mov	edx, [edx]
shl	ebp, 0Fh
xor	eax, ebp
mov	ebp, edx
shr	edx, 0Eh
dec	[esp+64h+arg_0]
xor	ecx, edx
mov	edx, [esp+64h+var_44]
mov	edx, [edx]
shl	ebp, 12h
xor	eax, ebp
mov	ebp, edx
shr	edx, 0Bh
xor	ecx, edx
mov	edx, [esp+64h+var_3C]
mov	edx, [edx]
shl	ebp, 15h
xor	eax, ebp
mov	ebp, edx
shr	edx, 8
xor	ecx, edx
mov	edx, [esp+64h+var_34]
mov	edx, [edx]
shl	ebp, 18h
xor	eax, ebp
mov	ebp, edx
add	edi, 4
shr	ebx, 1Eh
shl	ebp, 1Bh
shr	edx, 5
xor	ecx, edx
mov	edx, [esp+64h+var_2C]
mov	edx, [edx]
xor	eax, ebp
mov	ebp, edx
shl	ebp, 1Eh
shr	edx, 2
xor	eax, ebp
xor	ecx, edx
test	bl, 1
jz	short loc_1002D049
mov	edx, esi
shl	edx, 1Eh
xor	eax, edx
mov	edx, esi
shr	edx, 2
xor	ecx, edx
test	bl, 2
jz	short loc_1002D05B
mov	edx, esi
shl	edx, 1Fh
xor	eax, edx
mov	edx, esi
shr	edx, 1
xor	ecx, edx
mov	edx, [esp+64h+var_58]
mov	ebx, [edx]
xor	ebx, eax
xor	ebx, [esp+64h+var_54]
add	edx, 4
cmp	[esp+64h+arg_0], 0
mov	[edx-4], ebx
mov	[esp+64h+var_58], edx
mov	[esp+64h+var_54], ecx
jnz	loc_1002CF35
xor	[edx], ecx
pop	ebp
pop	ebx
pop	edi
mov	ecx, [esp+58h+var_4]
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
xor	[eax], ecx
mov	ecx, [esp+5Ch+var_4]
pop	edi
xor	ecx, esp
call	@__security_check_cookie@4 
add	esp, 58h
retn
align 10h
sub	esp, 20h
push	ebx
mov	ebx, [esp+24h+arg_0]
push	ebp
push	edi
mov	[esp+2Ch+var_4], 0
test	ebx, ebx
jz	loc_1002D239
mov	ebp, [esp+2Ch+arg_4]
test	ebp, ebp
jz	loc_1002D239
mov	edi, [esp+2Ch+arg_8]
test	edi, edi
jz	loc_1002D239
push	esi
cmp	ebx, edi
jnz	short loc_1002D10D
lea	eax, [esp+30h+var_10]
push	ebx
push	eax
call	sub_10028D90
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002D222
cmp	ebx, ebp
jnz	short loc_1002D107
lea	ebp, [esp+30h+var_10]
lea	ebx, [esp+30h+var_10]
jmp	short loc_1002D12F
cmp	ebp, edi
jnz	short loc_1002D12F
lea	ecx, [esp+30h+var_10]
push	ebp
push	ecx
call	sub_10028D90
add	esp, 8
mov	[esp+30h+var_1C], eax
test	eax, eax
js	loc_1002D21E
lea	ebp, [esp+30h+var_10]
			
mov	edx, [ebx+8]
cmp	edx, [ebp+8]
jnb	short loc_1002D13D
mov	eax, ebp
mov	ebp, ebx
mov	ebx, eax
mov	eax, [edi+0Ch]
mov	dword ptr [edi+8], 1
mov	dword ptr [eax], 0
mov	ecx, [ebx+8]
add	ecx, [ebp+8]
push	ecx
push	edi
call	sub_100291A0
add	esp, 8
mov	[esp+30h+var_1C], eax
test	eax, eax
js	loc_1002D21E
mov	edx, [edi+0Ch]
mov	ecx, [ebx+8]
mov	eax, [ebp+0Ch]
mov	esi, [eax]
push	edx
push	ecx
mov	ecx, [ebx+0Ch]
mov	[esp+38h+arg_0], eax
call	sub_1002CC10
mov	eax, [ebp+8]
mov	ecx, [ebx+8]
add	[esp+38h+arg_0], 4
mov	ebp, 1
add	esp, 8
lea	edx, [eax+ecx]
mov	[esp+30h+var_18], ecx
mov	[esp+30h+var_14], eax
mov	[edi+8], edx
cmp	eax, ebp
jbe	short loc_1002D1F8
lea	edx, ds:4[ecx*4]
mov	[esp+30h+var_20], edx
mov	edx, [esp+30h+arg_0]
mov	esi, [edx]
add	edx, 4
mov	[esp+30h+arg_0], edx
test	esi, esi
jz	short loc_1002D1E0
mov	eax, [edi+0Ch]
lea	edx, [eax+ebp*4]
push	edx
push	ecx
mov	ecx, [ebx+0Ch]
call	sub_1002CE60
mov	ecx, [esp+38h+var_18]
mov	eax, [esp+38h+var_14]
add	esp, 8
jmp	short loc_1002D1EE
mov	edx, [edi+0Ch]
mov	esi, [esp+30h+var_20]
mov	dword ptr [esi+edx], 0
add	[esp+30h+var_20], 4
inc	ebp
cmp	ebp, eax
jb	short loc_1002D1B2
mov	eax, [edi+8]
cmp	eax, 1
jbe	short loc_1002D215
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002D215
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002D207
			
mov	[edi+8], eax
mov	dword ptr [edi], 0
			
mov	esi, [esp+30h+var_1C]
lea	edx, [esp+30h+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
mov	eax, esi
pop	esi
pop	edi
pop	ebp
pop	ebx
add	esp, 20h
retn
			
pop	edi
pop	ebp
mov	eax, 0FFFFFFFCh
pop	ebx
add	esp, 20h
retn
align 10h
			
sub	esp, 0Ch
mov	eax, [esp+0Ch+arg_0]
push	edi
mov	edi, [esp+10h+arg_8]
mov	[esp+10h+var_8], 0
cmp	eax, edi
jz	short loc_1002D27E
push	edi
push	eax
call	sub_10028E00
add	esp, 8
mov	[esp+10h+var_8], eax
test	eax, eax
js	loc_1002D387
push	ebx
mov	ebx, [edi+8]
push	ebp
mov	ebp, [esp+18h+arg_4]
mov	ecx, [ebp+0]
shr	ecx, 5
dec	ebx
push	esi
mov	esi, [edi+0Ch]
mov	[esp+1Ch+arg_0], ecx
cmp	ebx, ecx
jle	loc_1002D35E
mov	eax, ebx
sub	eax, ecx
lea	edi, [esi+eax*4]
mov	[esp+1Ch+var_4], edi
lea	esp, [esp+0]
mov	eax, [esi+ebx*4]
test	eax, eax
jnz	short loc_1002D2C4
dec	ebx
sub	edi, 4
mov	[esp+1Ch+var_4], edi
jmp	loc_1002D352
lea	edx, [ebp+4]
mov	dword ptr [esi+ebx*4], 0
cmp	dword ptr [edx], 0
mov	[esp+1Ch+var_C], 1
jbe	short loc_1002D326
jmp	short loc_1002D2E0
align 10h
			
mov	ecx, [ebp+0]
sub	ecx, [edx]
mov	edi, ebx
mov	edx, ecx
sar	ecx, 5
and	edx, 1Fh
sub	edi, ecx
mov	ebp, eax
mov	ecx, edx
shr	ebp, cl
lea	edi, [esi+edi*4]
xor	[edi], ebp
test	edx, edx
jz	short loc_1002D30E
mov	ecx, 20h
sub	ecx, edx
mov	edx, eax
shl	edx, cl
xor	[edi-4], edx
mov	ecx, [esp+1Ch+var_C]
mov	ebp, [esp+1Ch+arg_4]
inc	ecx
cmp	dword ptr [ebp+ecx*4+0], 0
lea	edx, [ebp+ecx*4+0]
mov	[esp+1Ch+var_C], ecx
ja	short loc_1002D2E0
mov	edx, [ebp+0]
and	edx, 1Fh
mov	ecx, edx
mov	edi, eax
shr	edi, cl
mov	[esp+1Ch+var_C], eax
mov	ecx, edi
mov	edi, [esp+1Ch+var_4]
xor	[edi], ecx
test	edx, edx
jz	short loc_1002D34E
mov	ecx, 20h
sub	ecx, edx
shl	eax, cl
xor	[edi-4], eax
mov	ecx, [esp+1Ch+arg_0]
cmp	ebx, ecx
jg	loc_1002D2B0
mov	edi, [esp+1Ch+arg_8]
jz	short loc_1002D394
mov	eax, [edi+8]
pop	esi
pop	ebp
pop	ebx
cmp	eax, 1
jbe	short loc_1002D380
mov	ecx, [edi+0Ch]
lea	ecx, [ecx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002D380
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002D372
			
mov	[edi+8], eax
mov	eax, [esp+10h+var_8]
pop	edi
add	esp, 0Ch
retn
align 10h
			
mov	ecx, [esp+1Ch+arg_0]
mov	edx, [ebp+0]
mov	ebx, [esi+ecx*4]
and	edx, 1Fh
mov	eax, ebx
mov	ecx, edx
shr	eax, cl
test	eax, eax
jz	short loc_1002D360
mov	ecx, 20h
sub	ecx, edx
test	edx, edx
jz	short loc_1002D3BF
shl	ebx, cl
shr	ebx, cl
mov	ecx, [esp+1Ch+arg_0]
mov	[esi+ecx*4], ebx
jmp	short loc_1002D3CA
mov	edx, [esp+1Ch+arg_0]
mov	dword ptr [esi+edx*4], 0
xor	[esi], eax
cmp	dword ptr [ebp+4], 0
lea	ecx, [ebp+4]
mov	[esp+1Ch+var_C], 1
jbe	short loc_1002D390
lea	ecx, [ecx+0]
mov	ecx, [ecx]
mov	edx, ecx
and	ecx, 1Fh
mov	ebx, eax
shl	ebx, cl
mov	edi, ecx
shr	edx, 5
mov	ecx, 20h
xor	[esi+edx*4], ebx
sub	ecx, edi
mov	ebx, eax
shr	ebx, cl
test	edi, edi
jz	short loc_1002D40E
test	ebx, ebx
jz	short loc_1002D40E
xor	[esi+edx*4+4], ebx
lea	edx, [esi+edx*4+4]
			
mov	ecx, [esp+1Ch+var_C]
inc	ecx
cmp	dword ptr [ebp+ecx*4+0], 0
mov	[esp+1Ch+var_C], ecx
lea	ecx, [ebp+ecx*4+0]
ja	short loc_1002D3E0
mov	edi, [esp+1Ch+arg_8]
jmp	loc_1002D390
align 10h
sub	esp, 10h
push	esi
push	edi
mov	edi, [esp+18h+arg_0]
test	edi, edi
jz	loc_1002D59F
mov	esi, [esp+18h+arg_8]
test	esi, esi
jz	loc_1002D59F
push	ebx
mov	[esp+1Ch+var_4], 0
cmp	edi, esi
jnz	short loc_1002D476
lea	eax, [esp+1Ch+var_10]
push	edi
push	eax
call	sub_10028D90
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002D589
lea	edi, [esp+1Ch+var_10]
mov	ecx, [esi+0Ch]
mov	dword ptr [esi+8], 1
mov	dword ptr [ecx], 0
mov	edx, [edi+8]
add	edx, edx
push	edx
push	esi
call	sub_100291A0
mov	ebx, eax
add	esp, 8
test	ebx, ebx
js	loc_1002D589
mov	edx, [edi+0Ch]
mov	edi, [edi+8]
mov	ecx, [esi+0Ch]
lea	eax, [edi+edi]
mov	[esi+8], eax
test	edi, edi
jz	loc_1002D54E
push	ebp
mov	eax, [edx]
mov	ebx, eax
shr	ebx, 0Ch
and	ebx, 0Fh
mov	ebx, ds:dword_10047328[ebx*4]
shl	ebx, 8
mov	ebp, eax
shr	ebp, 8
and	ebp, 0Fh
or	ebx, ds:dword_10047328[ebp*4]
mov	ebp, eax
shr	ebp, 4
and	ebp, 0Fh
shl	ebx, 8
or	ebx, ds:dword_10047328[ebp*4]
mov	ebp, eax
and	ebp, 0Fh
shl	ebx, 8
or	ebx, ds:dword_10047328[ebp*4]
mov	ebp, eax
mov	[ecx], ebx
shr	ebp, 1Ch
mov	ebp, ds:dword_10047328[ebp*4]
mov	ebx, eax
shr	ebx, 18h
shl	ebp, 8
and	ebx, 0Fh
or	ebp, ds:dword_10047328[ebx*4]
mov	ebx, eax
shl	ebp, 8
shr	ebx, 14h
and	ebx, 0Fh
or	ebp, ds:dword_10047328[ebx*4]
shr	eax, 10h
shl	ebp, 8
and	eax, 0Fh
or	ebp, ds:dword_10047328[eax*4]
add	edx, 4
mov	[ecx+4], ebp
add	ecx, 8
dec	edi
jnz	loc_1002D4B7
pop	ebp
mov	ecx, [esp+1Ch+arg_4]
push	esi
push	ecx
push	esi
call	sub_1002D250
mov	ebx, eax
add	esp, 0Ch
test	ebx, ebx
js	short loc_1002D589
mov	eax, [esi+8]
cmp	eax, 1
jbe	short loc_1002D580
mov	edx, [esi+0Ch]
lea	ecx, [edx+eax*4-4]
cmp	dword ptr [ecx], 0
jnz	short loc_1002D580
dec	eax
sub	ecx, 4
cmp	eax, 1
ja	short loc_1002D572
			
mov	[esi+8], eax
mov	dword ptr [esi], 0
			
lea	eax, [esp+1Ch+var_10]
push	eax
call	sub_10028EF0
add	esp, 4
mov	eax, ebx
pop	ebx
pop	edi
pop	esi
add	esp, 10h
retn
			
pop	edi
mov	eax, 0FFFFFFFCh
pop	esi
add	esp, 10h
retn
align 10h
			
mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
cmp	eax, ecx
jnz	short loc_1002D5D0
mov	ecx, [esp+arg_C]
mov	edx, [esp+arg_8]
push	ecx
push	edx
push	eax
call	sub_1002D430
add	esp, 0Ch
retn
push	esi
mov	esi, [esp+4+arg_C]
push	esi
push	ecx
push	eax
call	sub_1002D0B0
add	esp, 0Ch
test	eax, eax
jnz	short loc_1002D5F3
mov	eax, [esp+4+arg_8]
push	esi
push	eax
push	esi
call	sub_1002D250
add	esp, 0Ch
pop	esi
retn
align 10h
			
mov	eax, dword_1004921C
cmp	eax, 0
jz	short loc_1002D61B
jg	short loc_1002D651
call	sub_1002DBE0
mov	dword_1004921C,	eax
cmp	eax, 0
jg	short loc_1002D651
push	ebp
mov	ebp, esp
sub	esp, 1Ch
push	edi
push	esi
push	ebx
mov	ebx, 0
mov	ecx, [ebp+0Ch]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D649
mov	esi, [ebp+8]
cld
lodsd
mov	edx, [ebp+10h]
mul	edx
add	eax, ebx
adc	edx, 0
mov	ebx, edx
stosd
dec	ecx
jnz	short loc_1002D638
mov	[edi], ebx
pop	ebx
pop	esi
pop	edi
leave
retn
db 90h
			
push	ebp
mov	ebp, esp
push	edi
push	esi
psubq	mm2, mm2
mov	ecx, [ebp+0Ch]
movd	mm1, dword ptr [ebp+10h]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D685
mov	esi, [ebp+8]
cld
movd	mm0, dword ptr [esi]
add	esi, 4
pmuludq	mm0, mm1
paddq	mm2, mm0
movd	dword ptr [edi], mm2
add	edi, 4
psrlq	mm2, 20h
dec	ecx
jnz	short loc_1002D66C
movd	dword ptr [edi], mm2
emms
pop	esi
pop	edi
leave
retn
align 10h
			
mov	eax, dword_1004921C
cmp	eax, 0
jz	short loc_1002D6AB
jg	short loc_1002D6E8
call	sub_1002DBE0
mov	dword_1004921C,	eax
cmp	eax, 0
jg	short loc_1002D6E8
push	ebp
mov	ebp, esp
sub	esp, 1Ch
push	edi
push	esi
push	ebx
mov	ebx, 0
mov	ecx, [ebp+0Ch]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D6E0
mov	esi, [ebp+8]
cld
lodsd
mov	edx, [ebp+10h]
mul	edx
add	eax, ebx
adc	edx, 0
mov	ebx, [edi]
add	eax, ebx
adc	edx, 0
mov	ebx, edx
stosd
dec	ecx
jnz	short loc_1002D6C8
mov	[edi], ebx
pop	ebx
pop	esi
pop	edi
leave
retn
align 4
			
push	ebp
mov	ebp, esp
push	edi
push	esi
psubq	mm2, mm2
mov	ecx, [ebp+0Ch]
movd	mm1, dword ptr [ebp+10h]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D722
mov	esi, [ebp+8]
cld
movd	mm0, dword ptr [esi]
add	esi, 4
pmuludq	mm0, mm1
paddq	mm2, mm0
movd	mm0, dword ptr [edi]
paddq	mm2, mm0
movd	dword ptr [edi], mm2
add	edi, 4
psrlq	mm2, 20h
dec	ecx
jnz	short loc_1002D703
movd	dword ptr [edi], mm2
emms
pop	esi
pop	edi
leave
retn
align 10h
			
mov	eax, dword_1004921C
cmp	eax, 0
jz	short loc_1002D74B
jg	short loc_1002D79A
call	sub_1002DBE0
mov	dword_1004921C,	eax
cmp	eax, 0
jg	short loc_1002D79A
push	ebp
mov	ebp, esp
sub	esp, 1Ch
push	edi
push	esi
push	ebx
mov	ebx, 0
mov	ecx, [ebp+0Ch]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D780
cld
mov	esi, [ebp+8]
lodsd
mov	edx, [ebp+10h]
mul	edx
add	eax, ebx
adc	edx, 0
mov	ebx, [edi]
add	eax, ebx
adc	edx, 0
mov	ebx, edx
stosd
dec	ecx
jnz	short loc_1002D768
cmp	ebx, 0
jz	short loc_1002D794
mov	eax, [edi]
add	eax, ebx
stosd
jnb	short loc_1002D794
mov	eax, [edi]
adc	eax, 0
stosd
jb	short loc_1002D78C
			
pop	ebx
pop	esi
pop	edi
leave
retn
align 2
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
psubq	mm2, mm2
mov	ecx, [ebp+0Ch]
movd	mm1, dword ptr [ebp+10h]
mov	edi, [ebp+14h]
cmp	ecx, 0
jz	short loc_1002D7D5
mov	esi, [ebp+8]
cld
movd	mm0, dword ptr [esi]
movd	mm3, dword ptr [edi]
add	esi, 4
pmuludq	mm0, mm1
paddq	mm2, mm0
paddq	mm2, mm3
movd	dword ptr [edi], mm2
add	edi, 4
psrlq	mm2, 20h
dec	ecx
jnz	short loc_1002D7B6
movd	ebx, mm2
cmp	ebx, 0
jz	short loc_1002D7EC
mov	eax, [edi]
add	eax, ebx
stosd
jnb	short loc_1002D7EC
mov	eax, [edi]
adc	eax, 0
stosd
jb	short loc_1002D7E4
			
emms
pop	ebx
pop	esi
pop	edi
leave
retn
align 10h
mov	eax, dword_1004921C
cmp	eax, 0
jz	short loc_1002D81B
jg	short loc_1002D872
call	sub_1002DBE0
mov	dword_1004921C,	eax
cmp	eax, 0
jg	short loc_1002D872
push	ebp
mov	ebp, esp
sub	esp, 0Ch
push	edi
push	esi
push	ebx
mov	ebx, 0
mov	ecx, [ebp+0Ch]
mov	edi, [ebp+10h]
cmp	ecx, 0
jz	short loc_1002D858
cld
mov	esi, [ebp+8]
lodsd
mul	eax
add	eax, ebx
adc	edx, 0
mov	ebx, [edi]
add	eax, ebx
mov	ebx, [edi+4]
stosd
adc	edx, ebx
mov	ebx, 0
mov	eax, edx
adc	ebx, 0
stosd
dec	ecx
jnz	short loc_1002D838
cmp	ebx, 0
jz	short loc_1002D86C
mov	eax, [edi]
add	eax, ebx
stosd
jnb	short loc_1002D86C
mov	eax, [edi]
adc	eax, 0
stosd
jb	short loc_1002D864
			
pop	ebx
pop	esi
pop	edi
leave
retn
align 2
			
push	ebp
mov	ebp, esp
push	edi
push	esi
push	ebx
psubq	mm2, mm2
mov	ecx, [ebp+0Ch]
mov	edi, [ebp+10h]
cmp	ecx, 0
jz	short loc_1002D8B8
mov	esi, [ebp+8]
cld
movd	mm0, dword ptr [esi]
movd	mm3, dword ptr [edi]
add	esi, 4
pmuludq	mm0, mm0
paddq	mm2, mm0
paddq	mm2, mm3
movd	mm3, dword ptr [edi+4]
movd	dword ptr [edi], mm2
psrlq	mm2, 20h
paddq	mm2, mm3
movd	dword ptr [edi+4], mm2
psrlq	mm2, 20h
add	edi, 8
dec	ecx
jnz	short loc_1002D88A
movd	ebx, mm2
cmp	ebx, 0
jz	short loc_1002D8CF
mov	eax, [edi]
add	eax, ebx
stosd
jnb	short loc_1002D8CF
mov	eax, [edi]
adc	eax, 0
stosd
jb	short loc_1002D8C7
			
emms
pop	ebx
pop	esi
pop	edi
leave
retn
align 10h
			
push	ebx
mov	edx, [esp+4+arg_0]
mov	eax, [esp+4+arg_4]
mov	ebx, [esp+4+arg_8]
div	ebx
mov	ebx, [esp+4+arg_C]
mov	[ebx], eax
mov	ebx, [esp+4+arg_10]
mov	[ebx], edx
xor	eax, eax
pop	ebx
retn
align 10h
			
cmp	ds:byte_10047409[eax*2], 0
movzx	edx, ds:byte_10047408[eax*2]
jz	short locret_1002D93F
cmp	edx, 6
jz	short loc_1002D961
cmp	edx, 8
jz	short loc_1002D961
push	esi
mov	esi, [ecx]
cmp	esi, 2
jl	short loc_1002D940
cmp	edx, 9
jz	short loc_1002D92E
cmp	edx, 0Bh
jnz	short loc_1002D940
mov	dword ptr [ecx], 2
movzx	eax, ds:byte_10047409[eax*2]
mov	[edi], eax
			
pop	esi
retn
			
cmp	esi, 3
jl	short loc_1002D93E
cmp	edx, 0Ch
jz	short loc_1002D94F
cmp	edx, 0Eh
jnz	short loc_1002D93E
mov	dword ptr [ecx], 3
movzx	ecx, ds:byte_10047409[eax*2]
mov	[edi], ecx
pop	esi
retn
			
mov	dword ptr [ecx], 1
movzx	edx, ds:byte_10047409[eax*2]
mov	[edi], edx
retn
align 10h
sub	esp, 24h
push	ebx
push	ebp
xor	ebp, ebp
cmp	[esp+2Ch+arg_0], 2
push	esi
push	edi
mov	[esp+34h+var_20], 4
mov	[esp+34h+var_24], ebp
jge	short loc_1002D9A6
xor	eax, eax
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
pusha
mov	eax, 2
cpuid
mov	[esp+54h+arg_0], eax
mov	[esp+54h+var_18], ebx
mov	[esp+54h+var_1C], ecx
mov	[esp+54h+var_14], edx
popa
mov	eax, [esp+34h+arg_0]
mov	ecx, [esp+34h+var_1C]
mov	ebx, [esp+34h+var_18]
mov	edx, [esp+34h+var_14]
mov	esi, eax
and	eax, 0Fh
mov	[esp+34h+var_18], ebx
mov	[esp+34h+arg_0], ecx
mov	[esp+34h+var_1C], edx
mov	[esp+34h+var_4], eax
jle	loc_1002DB70
lea	ebx, [ebx+0]
test	esi, esi
js	short loc_1002DA44
mov	ebx, esi
and	ebx, 0FFFFFF00h
mov	eax, ebx
shr	eax, 18h
lea	edi, [esp+34h+var_24]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, ebx
shr	eax, 10h
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, ebx
shr	eax, 8
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
movzx	eax, bl
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	ebx, [esp+34h+var_18]
test	ebx, ebx
js	short loc_1002DA8C
mov	eax, ebx
shr	eax, 18h
lea	edi, [esp+34h+var_24]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, ebx
shr	eax, 10h
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, ebx
shr	eax, 8
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
movzx	eax, bl
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+arg_0]
test	eax, eax
js	short loc_1002DADC
shr	eax, 18h
lea	edi, [esp+34h+var_24]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+arg_0]
shr	eax, 10h
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+arg_0]
shr	eax, 8
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
movzx	eax, byte ptr [esp+34h+arg_0]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+var_1C]
test	eax, eax
js	short loc_1002DB2C
shr	eax, 18h
lea	edi, [esp+34h+var_24]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+var_1C]
shr	eax, 10h
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
mov	eax, [esp+34h+var_1C]
shr	eax, 8
and	eax, 0FFh
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
movzx	eax, byte ptr [esp+34h+var_1C]
lea	ecx, [esp+34h+var_20]
call	sub_1002D900
inc	ebp
cmp	ebp, [esp+34h+var_4]
jz	short loc_1002DB70
pusha
mov	eax, 2
cpuid
mov	[esp+54h+var_14], eax
mov	[esp+54h+var_10], ebx
mov	[esp+54h+var_C], ecx
mov	[esp+54h+var_8], edx
popa
mov	eax, [esp+34h+var_10]
mov	ecx, [esp+34h+var_C]
mov	edx, [esp+34h+var_8]
mov	esi, [esp+34h+var_14]
mov	[esp+34h+var_18], eax
mov	[esp+34h+arg_0], ecx
mov	[esp+34h+var_1C], edx
mov	ebx, eax
jl	loc_1002D9F0
			
mov	eax, [esp+34h+var_24]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 24h
retn
align 10h
sub	esp, 10h
push	ebx
push	ebp
push	esi
push	edi
xor	ebp, ebp
pusha
mov	eax, 80000000h
cpuid
mov	[esp+40h+var_10], eax
mov	[esp+40h+var_4], ebx
mov	[esp+40h+var_8], ecx
mov	[esp+40h+var_C], edx
popa
cmp	[esp+20h+var_10], 80000005h
jb	short loc_1002DBD2
pusha
mov	eax, 80000005h
cpuid
mov	[esp+40h+var_4], eax
mov	[esp+40h+var_C], ebx
mov	[esp+40h+var_10], ecx
mov	[esp+40h+var_8], edx
popa
movzx	eax, byte ptr [esp+20h+var_10]
pop	edi
pop	esi
pop	ebp
pop	ebx
add	esp, 10h
retn
pop	edi
pop	esi
mov	eax, ebp
pop	ebp
pop	ebx
add	esp, 10h
retn
align 10h
			
sub	esp, 20h
push	ebx
push	esi
push	edi
push	eax
push	ebx
pushf
pop	eax
push	eax
mov	[esp+38h+var_1C], eax
mov	ebx, 40000h
xor	eax, ebx
push	eax
popf
pushf
pop	eax
popf
mov	[esp+34h+var_20], eax
pop	ebx
pop	eax
mov	eax, [esp+2Ch+var_20]
xor	eax, [esp+2Ch+var_1C]
jz	loc_1002DCEF
push	eax
push	ebx
pushf
pop	eax
push	eax
mov	[esp+38h+var_20], eax
mov	ebx, 200000h
xor	eax, ebx
push	eax
popf
pushf
pop	eax
popf
mov	[esp+34h+var_1C], eax
pop	ebx
pop	eax
mov	ecx, [esp+2Ch+var_1C]
xor	ecx, [esp+2Ch+var_20]
jz	loc_1002DCEF
pusha
mov	eax, 0
cpuid
mov	[esp+4Ch+var_14], eax
mov	[esp+4Ch+var_1C], ebx
mov	[esp+4Ch+var_18], ecx
mov	[esp+4Ch+var_20], edx
popa
cmp	[esp+2Ch+var_14], 0
mov	edx, [esp+2Ch+var_1C]
mov	eax, [esp+2Ch+var_20]
mov	ecx, [esp+2Ch+var_18]
mov	[esp+2Ch+var_10], edx
mov	[esp+2Ch+var_C], eax
mov	[esp+2Ch+var_8], ecx
mov	[esp+2Ch+var_4], 0
jz	short loc_1002DCEF
mov	esi, offset off_10047608
lea	ebx, [ebx+0]
mov	eax, [esi]
lea	ecx, [esp+2Ch+var_10]
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_1002DCA6
test	dl, dl
jz	short loc_1002DCA2
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_1002DCA6
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_1002DC86
xor	eax, eax
jmp	short loc_1002DCAB
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jz	short loc_1002DCBA
add	esi, 4
cmp	esi, offset dword_10047630
jl	short loc_1002DC80
pusha
mov	eax, 1
cpuid
mov	[esp+4Ch+var_18], eax
mov	[esp+4Ch+var_20], ebx
mov	[esp+4Ch+var_1C], ecx
mov	[esp+4Ch+var_14], edx
popa
mov	edx, [esp+2Ch+var_14]
and	edx, 4000000h
xor	eax, eax
cmp	edx, 4000000h
setz	al
pop	edi
pop	esi
pop	ebx
add	esp, 20h
retn
			
pop	edi
pop	esi
xor	eax, eax
pop	ebx
add	esp, 20h
retn
align 10h
sub	esp, 54h
push	ebx
push	esi
push	edi
push	eax
push	ebx
pushf
pop	eax
push	eax
mov	[esp+6Ch+var_50], eax
mov	ebx, 40000h
xor	eax, ebx
push	eax
popf
pushf
pop	eax
popf
mov	[esp+68h+var_54], eax
pop	ebx
pop	eax
mov	eax, [esp+60h+var_54]
xor	eax, [esp+60h+var_50]
jnz	short loc_1002DD32
pop	edi
pop	esi
pop	ebx
add	esp, 54h
retn
push	eax
push	ebx
pushf
pop	eax
push	eax
mov	[esp+6Ch+var_54], eax
mov	ebx, 200000h
xor	eax, ebx
push	eax
popf
pushf
pop	eax
popf
mov	[esp+68h+var_50], eax
pop	ebx
pop	eax
mov	ecx, [esp+60h+var_50]
xor	ecx, [esp+60h+var_54]
jz	loc_1002DDFD
pusha
mov	eax, 0
cpuid
mov	[esp+80h+var_48], eax
mov	[esp+80h+var_50], ebx
mov	[esp+80h+var_4C], ecx
mov	[esp+80h+var_54], edx
popa
mov	edx, [esp+60h+var_50]
mov	eax, [esp+60h+var_54]
mov	ecx, [esp+60h+var_4C]
mov	[esp+60h+var_44], edx
mov	[esp+60h+var_40], eax
mov	[esp+60h+var_3C], ecx
mov	[esp+60h+var_38], 0
mov	edi, 9
xor	esi, esi
jmp	short loc_1002DDA0
align 10h
			
mov	eax, ds:off_10047608[esi*4]
lea	ecx, [esp+60h+var_44]
jmp	short loc_1002DDB0
align 10h
			
mov	dl, [eax]
cmp	dl, [ecx]
jnz	short loc_1002DDD0
test	dl, dl
jz	short loc_1002DDCC
mov	dl, [eax+1]
cmp	dl, [ecx+1]
jnz	short loc_1002DDD0
add	eax, 2
add	ecx, 2
test	dl, dl
jnz	short loc_1002DDB0
xor	eax, eax
jmp	short loc_1002DDD5
			
sbb	eax, eax
sbb	eax, 0FFFFFFFFh
test	eax, eax
jnz	short loc_1002DDDB
mov	edi, esi
inc	esi
cmp	esi, 0Ah
jl	short loc_1002DDA0
test	edi, edi
jnz	short loc_1002DDF4
mov	edx, [esp+60h+var_48]
push	edx
call	sub_1002D980
add	esp, 4
jmp	short loc_1002DDF9
call	sub_1002DB80
test	eax, eax
jnz	short loc_1002DE02
mov	eax, 20h
pop	edi
pop	esi
pop	ebx
add	esp, 54h
retn
align 10h
mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_8]
mov	edx, [esp+arg_4]
push	eax
mov	eax, [eax+78h]
push	ecx
push	edx
call	eax
add	esp, 0Ch
retn
align 10h
			
push	esi
mov	esi, [esp+4+Memory]
test	esi, esi
jz	short loc_1002DEA5
mov	eax, [esi+4]
push	eax		
call	sub_1002EF50
add	esp, 4
cmp	dword ptr [esi], 0FFFFFFFFh
jz	short loc_1002DEA5
lea	ecx, [esi+0Ch]
push	edi
push	ecx
call	sub_10028EF0
lea	edx, [esi+1Ch]
push	edx
call	sub_10028EF0
lea	eax, [esi+2Ch]
push	eax
call	sub_10028EF0
lea	ecx, [esi+3Ch]
push	ecx
call	sub_10028EF0
lea	edx, [esi+4Ch]
push	edx
call	sub_10028EF0
mov	eax, [esi+8]
mov	edi, ds:free
add	esp, 14h
test	eax, eax
jz	short loc_1002DE8E
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+84h]
test	eax, eax
jz	short loc_1002DE9E
push	esi
call	eax
add	esp, 4
push	esi		
call	edi 
add	esp, 4
pop	edi
			
pop	esi
retn
align 10h
			
push	esi
push	edi
push	88h		
call	ds:malloc
mov	esi, eax
xor	edi, edi
add	esp, 4
cmp	esi, edi
jz	loc_1002DF54
lea	eax, [esi+0Ch]
push	eax
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
mov	[esi+18h], edi
mov	[esi+28h], edi
mov	[esi+38h], edi
mov	[esi+48h], edi
mov	[esi+58h], edi
mov	[esi+70h], edi
mov	[esi+74h], edi
mov	[esi+78h], edi
mov	[esi+7Ch], edi
mov	[esi+80h], edi
mov	[esi+84h], edi
call	sub_1002A030
add	esp, 4
cmp	eax, edi
jl	short loc_1002DF4B
lea	ecx, [esi+1Ch]
push	ecx
call	sub_1002A030
add	esp, 4
cmp	eax, edi
jl	short loc_1002DF4B
lea	edx, [esi+2Ch]
push	edx
call	sub_1002A030
add	esp, 4
cmp	eax, edi
jl	short loc_1002DF4B
lea	eax, [esi+3Ch]
push	eax
call	sub_1002A030
add	esp, 4
cmp	eax, edi
jl	short loc_1002DF4B
lea	ecx, [esi+4Ch]
push	ecx
call	sub_1002A030
add	esp, 4
cmp	eax, edi
jz	short loc_1002DF59
			
push	esi		
call	sub_1002DE30
add	esp, 4
pop	edi
xor	eax, eax
pop	esi
retn
pop	edi
mov	eax, esi
pop	esi
retn
db 12h dup(0CCh)
			
push	esi
call	sub_1002DEB0
mov	esi, eax
test	esi, esi
jz	loc_1002E048
mov	eax, [esp+4+arg_0]
push	eax
call	sub_100302D0
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jz	loc_1002E03F
mov	edx, [esp+4+arg_4]
lea	ecx, [esi+0Ch]
push	ecx
push	edx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	loc_1002E03D
mov	ecx, [esp+4+arg_8]
lea	eax, [esi+1Ch]
push	eax
push	ecx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_1002E03D
mov	eax, [esp+4+arg_C]
lea	edx, [esi+2Ch]
push	edx
push	eax
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_1002E03D
mov	edx, [esp+4+arg_10]
lea	ecx, [esi+3Ch]
push	ecx
push	edx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_1002E03D
mov	ecx, [esp+4+arg_14]
lea	eax, [esi+4Ch]
push	eax
push	ecx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_1002E03D
mov	edx, [esp+4+arg_18]
mov	[esi+5Ch], edx
mov	dword ptr [esi+60h], offset sub_10030450
mov	dword ptr [esi+64h], offset sub_10030860
mov	dword ptr [esi+68h], offset loc_100308E0
mov	dword ptr [esi+6Ch], offset sub_100326B0
mov	dword ptr [esi+70h], 0
mov	dword ptr [esi+74h], offset sub_100316E0
mov	dword ptr [esi+78h], offset sub_10030910
			
jz	short loc_1002E04C
push	esi		
call	sub_1002DE30
add	esp, 4
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
push	esi
call	sub_1002DEB0
mov	esi, eax
test	esi, esi
jz	loc_1002E135
mov	eax, [esp+4+arg_0]
push	eax
call	sub_10031F70
add	esp, 4
mov	[esi+4], eax
test	eax, eax
jz	loc_1002E12C
mov	edx, [esp+4+arg_4]
push	eax
mov	eax, [eax+44h]
lea	ecx, [esi+0Ch]
push	ecx
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
js	loc_1002E12A
mov	eax, [esi+4]
mov	edx, [esp+4+arg_8]
push	eax
mov	eax, [eax+44h]
lea	ecx, [esi+1Ch]
push	ecx
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
js	short loc_1002E12A
mov	eax, [esi+4]
mov	edx, [esp+4+arg_C]
push	eax
mov	eax, [eax+44h]
lea	ecx, [esi+2Ch]
push	ecx
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
js	short loc_1002E12A
mov	eax, [esi+4]
mov	edx, [esp+4+arg_10]
push	eax
mov	eax, [eax+44h]
lea	ecx, [esi+3Ch]
push	ecx
push	edx
call	eax
add	esp, 0Ch
test	eax, eax
js	short loc_1002E12A
mov	edx, [esp+4+arg_14]
lea	ecx, [esi+4Ch]
push	ecx
push	edx
call	sub_10028E00
add	esp, 8
test	eax, eax
js	short loc_1002E12A
mov	ecx, [esp+4+arg_18]
mov	[esi+5Ch], ecx
mov	dword ptr [esi+60h], offset sub_10030450
mov	dword ptr [esi+64h], offset sub_10030860
mov	dword ptr [esi+68h], offset loc_100308E0
mov	dword ptr [esi+6Ch], offset sub_100326B0
mov	dword ptr [esi+70h], 0
mov	dword ptr [esi+74h], offset sub_100316E0
mov	dword ptr [esi+78h], offset sub_10030910
			
jz	short loc_1002E139
push	esi		
call	sub_1002DE30
add	esp, 4
xor	eax, eax
pop	esi
retn
mov	eax, esi
pop	esi
retn
align 10h
sub	esp, 60h
push	ebx
push	ebp
xor	ebp, ebp
lea	eax, [esp+68h+var_60]
push	esi
push	eax
xor	ebx, ebx
mov	[esp+70h+var_54], ebp
mov	[esp+70h+var_44], ebp
mov	[esp+70h+var_34], ebp
mov	[esp+70h+var_24], ebp
mov	[esp+70h+var_14], ebp
mov	[esp+70h+var_4], ebp
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
lea	ecx, [esp+6Ch+var_50]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
lea	edx, [esp+6Ch+var_40]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
lea	eax, [esp+6Ch+var_30]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
lea	ecx, [esp+6Ch+var_20]
push	ecx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
lea	edx, [esp+6Ch+var_10]
push	edx
call	sub_1002A030
mov	esi, eax
add	esp, 4
cmp	esi, ebp
jl	loc_1002E304
push	edi
mov	edi, [esp+70h+arg_4]
mov	eax, [edi+0Ch]
push	10h		
push	eax		
lea	ecx, [esp+78h+var_60]
push	ecx		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1002E303
mov	edx, [edi+10h]
push	10h		
push	edx		
lea	eax, [esp+78h+var_50]
push	eax		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1002E303
mov	ecx, [edi+14h]
push	10h		
push	ecx		
lea	edx, [esp+78h+var_40]
push	edx		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1002E303
mov	eax, [edi+18h]
push	10h		
push	eax		
lea	ecx, [esp+78h+var_30]
push	ecx		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1002E303
mov	edx, [edi+1Ch]
push	10h		
push	edx		
lea	eax, [esp+78h+var_20]
push	eax		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	loc_1002E303
mov	ecx, [edi+20h]
push	10h		
push	ecx		
lea	edx, [esp+78h+var_10]
push	edx		
call	sub_1002BAB0
mov	esi, eax
add	esp, 0Ch
cmp	esi, ebp
jl	short loc_1002E303
lea	eax, [esp+70h+var_60]
push	eax
call	sub_10028CE0
add	esp, 4
dec	eax
jns	short loc_1002E2AF
mov	esi, eax
jmp	short loc_1002E303
cmp	[edi+4], ebp
jnz	short loc_1002E2FE
mov	eax, [esp+70h+arg_0]
sub	eax, 3
jz	loc_1002E39B
sub	eax, 2
jz	loc_1002E35D
mov	ecx, [edi+24h]
push	ecx
lea	edx, [esp+74h+var_10]
push	edx
lea	eax, [esp+78h+var_20]
push	eax
lea	ecx, [esp+7Ch+var_30]
push	ecx
lea	edx, [esp+80h+var_40]
push	edx
lea	eax, [esp+84h+var_50]
push	eax
lea	ecx, [esp+88h+var_60]
push	ecx
call	sub_1002E050
mov	ebx, eax
add	esp, 1Ch
cmp	ebx, ebp
jnz	loc_1002E3F9
			
mov	esi, 0FFFFFFFBh
			
pop	edi
			
lea	ecx, [esp+6Ch+var_60]
push	ecx
call	sub_10028EF0
lea	edx, [esp+70h+var_50]
push	edx
call	sub_10028EF0
lea	eax, [esp+74h+var_40]
push	eax
call	sub_10028EF0
lea	ecx, [esp+78h+var_30]
push	ecx
call	sub_10028EF0
lea	edx, [esp+7Ch+var_20]
push	edx
call	sub_10028EF0
lea	eax, [esp+80h+var_10]
push	eax
call	sub_10028EF0
add	esp, 18h
cmp	esi, ebp
jz	loc_1002E422
push	ebx		
call	sub_1002DE30
add	esp, 4
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
add	esp, 60h
retn
mov	edx, [edi+24h]
push	edx
lea	eax, [esp+74h+var_10]
push	eax
lea	ecx, [esp+78h+var_20]
push	ecx
lea	edx, [esp+7Ch+var_30]
push	edx
lea	eax, [esp+80h+var_40]
push	eax
lea	ecx, [esp+84h+var_50]
push	ecx
lea	edx, [esp+88h+var_60]
push	edx
call	sub_1002DF70
mov	ebx, eax
add	esp, 1Ch
cmp	ebx, ebp
jz	loc_1002E2FE
push	5
push	ebx
call	sub_100338E0
jmp	short loc_1002E3EC
mov	eax, [edi+24h]
push	eax
lea	ecx, [esp+74h+var_10]
push	ecx
lea	edx, [esp+78h+var_20]
push	edx
lea	eax, [esp+7Ch+var_30]
push	eax
lea	ecx, [esp+80h+var_40]
push	ecx
lea	edx, [esp+84h+var_50]
push	edx
lea	eax, [esp+88h+var_60]
push	eax
call	sub_1002DF70
mov	ebx, eax
add	esp, 1Ch
cmp	ebx, ebp
jz	loc_1002E2FE
push	3
push	ebx
call	sub_100335D0
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jl	loc_1002E303
push	3
push	ebx
call	sub_100373C0
mov	esi, eax
add	esp, 8
cmp	esi, ebp
jl	loc_1002E303
mov	edi, [edi]
cmp	edi, ebp
jz	loc_1002E303
push	edi		
call	ds:_strdup
add	esp, 4
mov	[ebx+8], eax
cmp	eax, ebp
jnz	loc_1002E303
mov	esi, 0FFFFFFFEh
jmp	loc_1002E303
pop	esi
pop	ebp
mov	eax, ebx
pop	ebx
add	esp, 60h
retn
align 10h
			
push	ebx
mov	ebx, [esp+4+arg_0]
push	ebp
push	esi
push	edi
push	ebx
xor	edi, edi
xor	ebp, ebp
call	sub_1002E5F0
mov	esi, eax
add	esp, 4
test	esi, esi
jz	short loc_1002E45B
push	esi
push	ebx
call	sub_1002E140
mov	edi, eax
add	esp, 8
test	edi, edi
jnz	short loc_1002E460
mov	ebp, 0FFFFFFFBh
push	esi		
call	sub_1002E490
add	esp, 4
test	ebp, ebp
jz	short loc_1002E47D
push	edi		
call	sub_1002DE30
add	esp, 4
pop	edi
pop	esi
pop	ebp
xor	eax, eax
pop	ebx
retn
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
align 10h
			
push	esi
mov	esi, [esp+4+Memory]
test	esi, esi
jz	short loc_1002E501
mov	eax, [esi]
push	edi
mov	edi, ds:free
test	eax, eax
jz	short loc_1002E4AC
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+0Ch]
test	eax, eax
jz	short loc_1002E4B9
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+10h]
test	eax, eax
jz	short loc_1002E4C6
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+14h]
test	eax, eax
jz	short loc_1002E4D3
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+18h]
test	eax, eax
jz	short loc_1002E4E0
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+1Ch]
test	eax, eax
jz	short loc_1002E4ED
push	eax		
call	edi 
add	esp, 4
mov	eax, [esi+20h]
test	eax, eax
jz	short loc_1002E4FA
push	eax		
call	edi 
add	esp, 4
push	esi		
call	edi 
add	esp, 4
pop	edi
pop	esi
retn
align 10h
push	ebx
push	esi
push	edi
push	28h		
push	1		
call	ds:calloc
mov	esi, eax
add	esp, 8
test	esi, esi
jz	loc_1002E5DA
mov	ebx, [esp+0Ch+arg_0]
mov	eax, [ebx]
mov	edi, ds:_strdup
test	eax, eax
jz	short loc_1002E54A
push	eax		
call	edi 
add	esp, 4
mov	[esi], eax
test	eax, eax
jz	loc_1002E5DA
mov	eax, [ebx+4]
mov	[esi+4], eax
mov	ecx, [ebx+8]
mov	[esi+8], ecx
mov	eax, [ebx+0Ch]
test	eax, eax
jz	short loc_1002E56A
push	eax		
call	edi 
add	esp, 4
mov	[esi+0Ch], eax
test	eax, eax
jz	short loc_1002E5DA
mov	eax, [ebx+10h]
test	eax, eax
jz	short loc_1002E57E
push	eax		
call	edi 
add	esp, 4
mov	[esi+10h], eax
test	eax, eax
jz	short loc_1002E5DA
mov	eax, [ebx+14h]
test	eax, eax
jz	short loc_1002E592
push	eax		
call	edi 
add	esp, 4
mov	[esi+14h], eax
test	eax, eax
jz	short loc_1002E5DA
mov	eax, [ebx+18h]
test	eax, eax
jz	short loc_1002E5A6
push	eax		
call	edi 
add	esp, 4
mov	[esi+18h], eax
test	eax, eax
jz	short loc_1002E5DA
mov	eax, [ebx+1Ch]
test	eax, eax
jz	short loc_1002E5BA
push	eax		
call	edi 
add	esp, 4
mov	[esi+1Ch], eax
test	eax, eax
jz	short loc_1002E5DA
mov	eax, [ebx+20h]
test	eax, eax
jz	short loc_1002E5CE
push	eax		
call	edi 
add	esp, 4
mov	[esi+20h], eax
test	eax, eax
jz	short loc_1002E5DA
mov	edx, [ebx+24h]
pop	edi
mov	[esi+24h], edx
mov	eax, esi
pop	esi
pop	ebx
retn
			
push	esi		
call	sub_1002E490
add	esp, 4
pop	edi
pop	esi
xor	eax, eax
pop	ebx
retn
align 10h
mov	eax, [esp+arg_0]
lea	ecx, [eax-1]
cmp	ecx, 38h
ja	short loc_1002E610
mov	eax, dword_10049220[eax*4]
test	eax, eax
jz	short loc_1002E610
mov	[esp+arg_0], eax
jmp	sub_1002E510
			
xor	eax, eax
retn
align 10h
			
sub	esp, 10h
push	ebp
mov	ebp, [esp+14h+arg_4]
push	esi
xor	esi, esi
push	edi
cmp	ebp, esi
jz	loc_1002E7AC
mov	edi, [esp+1Ch+arg_0]
cmp	edi, esi
jz	loc_1002E7AC
push	ebx
lea	ebx, [edi+4Ch]
push	ebx
push	ebp
mov	[esp+28h+var_4], esi
call	sub_1002A680
add	esp, 8
test	eax, eax
jle	short loc_1002E688
lea	eax, [esp+20h+var_10]
push	eax
call	sub_1002A030
mov	esi, eax
add	esp, 4
test	esi, esi
js	loc_1002E78C
lea	ecx, [esp+20h+var_10]
push	ecx
push	ebx
push	ebp
call	sub_1002C150
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002E78C
jmp	short loc_1002E6A1
mov	edx, [ebp+8]
mov	eax, [ebp+4]
mov	ecx, [ebp+0Ch]
mov	[esp+20h+var_10], esi
mov	[esp+20h+var_8], edx
mov	[esp+20h+var_C], eax
mov	[esp+20h+var_4], ecx
mov	ecx, [esp+20h+arg_8]
test	ecx, ecx
jz	short loc_1002E727
cmp	[esp+20h+arg_C], 0
jz	short loc_1002E727
mov	edx, [edi+4]
cmp	dword ptr [edx+44h], 0
mov	ebx, [esp+20h+arg_10]
jz	short loc_1002E705
mov	eax, edx
push	eax
mov	eax, [eax+44h]
push	ebx
push	ecx
call	eax
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002E78C
mov	eax, [edi+4]
mov	ebp, [esp+20h+arg_14]
mov	ecx, [esp+20h+arg_C]
mov	edx, [eax+44h]
push	eax
push	ebp
push	ecx
call	edx
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002E788
mov	ecx, [edi+6Ch]
push	edi
push	ebp
push	ebx
push	ebp
lea	eax, [esp+30h+var_10]
push	ebx
push	eax
call	ecx
jmp	short loc_1002E753
mov	ebp, [esp+20h+arg_14]
mov	edx, [esp+20h+arg_C]
push	edi
push	ebp
push	ebx
push	edx
push	ecx
mov	ecx, [edi+6Ch]
lea	eax, [esp+34h+var_10]
push	eax
call	ecx
mov	esi, eax
add	esp, 18h
test	esi, esi
jns	short loc_1002E75C
jmp	short loc_1002E788
			
mov	ebp, [esp+20h+arg_14]
mov	eax, [edi+70h]
mov	ebx, [esp+20h+arg_10]
push	edi
push	ebp
lea	edx, [esp+28h+var_10]
push	ebx
test	eax, eax
jz	short loc_1002E745
push	edx
call	eax
add	esp, 10h
jmp	short loc_1002E756
lea	eax, [edi+3Ch]
push	eax
mov	eax, [edi+6Ch]
lea	ecx, [edi+2Ch]
push	ecx
push	edx
call	eax
add	esp, 18h
mov	esi, eax
test	esi, esi
js	short loc_1002E788
mov	ecx, [edi+4]
cmp	dword ptr [ecx+48h], 0
jz	short loc_1002E788
mov	eax, ecx
mov	edx, [eax+48h]
push	eax
push	ebx
push	ebx
call	edx
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	short loc_1002E788
mov	edi, [edi+4]
mov	eax, [edi+48h]
push	edi
push	ebp
push	ebp
call	eax
add	esp, 0Ch
mov	esi, eax
			
mov	ebp, [esp+20h+arg_4]
			
mov	ecx, [esp+20h+var_4]
pop	ebx
cmp	ecx, [ebp+0Ch]
jz	short loc_1002E7A3
lea	edx, [esp+1Ch+var_10]
push	edx
call	sub_10028EF0
add	esp, 4
pop	edi
mov	eax, esi
pop	esi
pop	ebp
add	esp, 10h
retn
			
pop	edi
pop	esi
mov	eax, 0FFFFFFFCh
pop	ebp
add	esp, 10h
retn
align 10h
sub	esp, 224h
mov	eax, ___security_cookie
xor	eax, esp
mov	[esp+224h+var_4], eax
mov	eax, [esp+224h+arg_4]
mov	ecx, [esp+224h+arg_8]
mov	edx, [esp+224h+arg_C]
push	ebx
mov	ebx, [esp+228h+arg_10]
push	ebp
push	esi
mov	esi, [esp+230h+arg_0]
push	edi
mov	edi, [esp+234h+arg_14]
mov	[esp+234h+var_218], edi
mov	edi, [esp+234h+arg_18]
xor	ebp, ebp
mov	[esp+234h+var_208], esi
mov	[esp+234h+var_210], eax
mov	[esp+234h+var_220], ecx
mov	[esp+234h+var_224], edx
mov	[esp+234h+var_20C], ebx
cmp	edi, ebp
jnz	short loc_1002E831
			
mov	eax, 0FFFFFFFCh
jmp	loc_1002EDF6
cmp	esi, ebp
jnz	short loc_1002E84F
cmp	eax, ebp
jz	short loc_1002E827
cmp	ecx, ebp
jz	short loc_1002E827
cmp	edx, ebp
jz	short loc_1002E827
mov	esi, [esp+234h+var_218]
push	esi
push	ebx
push	edx
push	ecx
push	eax
jmp	loc_1002EDED
cmp	eax, ebp
jz	loc_1002EDE4
cmp	ecx, ebp
jz	loc_1002EDE4
cmp	edx, ebp
jz	loc_1002EDE4
lea	eax, [esp+234h+var_1E8]
mov	ecx, 4
mov	[eax-10h], ebp
mov	[eax], ebp
mov	[eax+10h], ebp
mov	[eax+20h], ebp
mov	[eax+30h], ebp
mov	[eax+40h], ebp
mov	[eax+50h], ebp
mov	[eax+60h], ebp
sub	eax, 0FFFFFF80h
dec	ecx
jnz	short loc_1002E870
lea	eax, [esp+234h+var_1F4]
mov	[esp+234h+var_214], ebp
mov	[esp+234h+var_21C], eax
jmp	short loc_1002E8A2
jmp	short loc_1002E8A0
align 10h
			
xor	ebp, ebp
mov	ebx, [esp+234h+var_21C]
lea	ecx, [ebx-10h]
push	14h
push	ecx
call	sub_10028D30
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002EDB2
push	14h
push	ebx
call	sub_10028D30
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002EDB2
inc	ebp
add	ebx, 20h
cmp	ebp, 4
jl	short loc_1002E8A6
mov	eax, [esp+234h+var_214]
sub	[esp+234h+var_21C], 0FFFFFF80h
inc	eax
mov	[esp+234h+var_214], eax
cmp	eax, 4
jl	short loc_1002E8A0
mov	ebx, [esp+234h+var_210]
push	ebx
call	sub_10028CE0
mov	esi, [esp+238h+var_208]
push	esi
mov	ebp, eax
call	sub_10028CE0
add	esp, 8
cmp	eax, ebp
jge	loc_1002E9BE
mov	edx, [edi+4]
cmp	dword ptr [edx+44h], 0
mov	[esp+234h+var_21C], ebx
mov	[esp+234h+var_210], esi
lea	ecx, [esp+234h+var_184]
jz	short loc_1002E95E
mov	eax, edx
mov	edx, [esp+234h+var_220]
push	eax
mov	eax, [eax+44h]
push	ecx
push	edx
call	eax
mov	esi, eax
add	esp, 0Ch
test	esi, esi
js	loc_1002EDB2
mov	eax, [edi+4]
mov	edx, [esp+234h+var_224]
push	eax
mov	eax, [eax+44h]
lea	ecx, [esp+238h+var_174]
push	ecx
push	edx
call	eax
add	esp, 0Ch
jmp	short loc_1002E98B
mov	edx, [esp+234h+var_220]
push	ecx
push	edx
call	sub_10028E00
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002EDB2
mov	ecx, [esp+234h+var_224]
lea	eax, [esp+234h+var_174]
push	eax
push	ecx
call	sub_10028E00
add	esp, 8
mov	esi, eax
test	esi, esi
js	loc_1002EDB2
lea	edx, [esp+234h+var_1E4]
push	edx
lea	eax, [edi+2Ch]
push	eax
call	sub_10028E00
mov	esi, eax
add	esp, 8
test	esi, esi
js	loc_1002EDB2
lea	ecx, [esp+234h+var_1D4]
push	ecx
lea	edx, [edi+3Ch]
push	edx
jmp	loc_1002EA68
lea	eax, [esp+234h+var_184]
push	eax
lea	ecx, [edi+2Ch]
push	ecx
mov	[esp+23Ch+var_21C], esi
