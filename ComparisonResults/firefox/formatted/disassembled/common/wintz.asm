endp
_uprv_detectWindowsTimeZone proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '3F4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_3F4]']
mov ['ecx,', '0FDh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_C],', '0']
mov ['[ebp+var_18],', '0']
mov ['[ebp+var_24],', '0']
push ['0ACh']
push ['0']
lea ['eax,', '[ebp+Dst]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
push ['2Ch']
push ['0']
lea ['eax,', '[ebp+Buf1]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
push ['2Ch']
push ['0']
lea ['eax,', '[ebp+Buf2]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+Dst]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__GetTimeZoneInformation@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+Dst]']
mov ['[ebp+Buf1],', 'eax']
push ['1']
lea ['eax,', '[ebp+Src]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
push ['10h']
lea ['ecx,', '[ebp+Src]']
push ['ecx']
lea ['edx,', '[ebp+var_128]']
push ['edx']
call ['_memcpy']
add ['esp,', '0Ch']
push ['1']
lea ['eax,', '[ebp+var_184]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
push ['10h']
lea ['ecx,', '[ebp+var_184]']
push ['ecx']
lea ['edx,', '[ebp+var_118]']
push ['edx']
call ['_memcpy']
add ['esp,', '0Ch']
push ['28h']
push ['0']
lea ['eax,', '[ebp+Dest]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
mov ['esi,', 'esp']
push ['28h']
lea ['eax,', '[ebp+Source]']
push ['eax']
lea ['ecx,', '[ebp+Dest]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__wcstombs']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+Str],', '0']
mov ['esi,', 'esp']
push ['10h']
call ['dword', 'ptr', 'ds:__imp__GetUserGeoID@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+Location],', 'eax']
mov ['esi,', 'esp']
push ['0']
push ['3']
lea ['eax,', '[ebp+GeoData]']
push ['eax']
push ['4']
mov ['ecx,', '[ebp+Location]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__GetGeoInfoW@20']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_D8],', 'eax']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['3']
lea ['ecx,', '[ebp+GeoData]']
push ['ecx']
push ['0']
push ['3']
lea ['edx,', '[ebp+var_F4]']
push ['edx']
call ['_u_strToUTF8_56']
add ['esp,', '18h']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['offset', '??_C@_0N@IHBGPIIF@windowsZones?$AA@']
push ['0']
call ['_ures_openDirect_56']
add ['esp,', '0Ch']
mov ['[ebp+var_18],', 'eax']
lea ['eax,', '[ebp+var_C]']
push ['eax']
mov ['ecx,', '[ebp+var_18]']
push ['ecx']
push ['offset', '??_C@_0N@GPCNLNJ@mapTimezones?$AA@']
mov ['edx,', '[ebp+var_18]']
push ['edx']
call ['_ures_getByKey_56']
add ['esp,', '10h']
push ['94h']
push ['0']
lea ['eax,', '[ebp+VersionInformation]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
mov ['[ebp+VersionInformation.dwOSVersionInfoSize],', '94h']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+VersionInformation]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__GetVersionExA@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+VersionInformation.dwMajorVersion],', '6']
sbb ['eax,', 'eax']
add ['eax,', '1']
mov ['[ebp+var_228],', 'eax']
mov ['[ebp+var_234],', '1']
cmp ['[ebp+var_228],', '0']
jz ['loc_49A']
push ['28h']
lea ['eax,', '[ebp+Str2]']
push ['eax']
call ['_getTZKeyName']
add ['esp,', '8']
mov ['[ebp+var_100],', 'eax']
cmp ['[ebp+var_100],', '0']
jnz ['loc_49A']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['0']
lea ['ecx,', '[ebp+Str2]']
push ['ecx']
mov ['edx,', '[ebp+var_18]']
push ['edx']
call ['_ures_getByKey_56']
add ['esp,', '10h']
mov ['[ebp+var_2DC],', 'eax']
cmp ['[ebp+var_C],', '0']
jg ['loc_49A']
mov ['[ebp+var_2E8],', '0']
cmp ['[ebp+var_D8],', '0']
jz ['short', 'loc_3E4']
lea ['eax,', '[ebp+var_C]']
push ['eax']
lea ['ecx,', '[ebp+var_C0]']
push ['ecx']
lea ['edx,', '[ebp+var_F4]']
push ['edx']
mov ['eax,', '[ebp+var_2DC]']
push ['eax']
call ['_ures_getStringByKey_56']
add ['esp,', '10h']
mov ['[ebp+var_2E8],', 'eax']
cmp ['[ebp+var_D8],', '0']
jz ['short', 'loc_3F6']
cmp ['[ebp+var_2E8],', '0']
jnz ['short', 'loc_422']
mov ['[ebp+var_C],', '0']
lea ['eax,', '[ebp+var_C]']
push ['eax']
lea ['ecx,', '[ebp+var_C0]']
push ['ecx']
push ['offset', '??_C@_03MMKGDKGA@001?$AA@']
mov ['edx,', '[ebp+var_2DC]']
push ['edx']
call ['_ures_getStringByKey_56']
add ['esp,', '10h']
mov ['[ebp+var_2E8],', 'eax']
cmp ['[ebp+var_C],', '0']
jg ['short', 'loc_49A']
mov ['[ebp+var_2F4],', '0']
mov ['eax,', '[ebp+var_2E8]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
test ['ecx,', 'ecx']
jz ['short', 'loc_482']
mov ['eax,', '[ebp+var_2E8]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
cmp ['ecx,', '20h']
jz ['short', 'loc_482']
mov ['eax,', '[ebp+var_2F4]']
mov ['ecx,', '[ebp+var_2E8]']
mov ['dl,', '[ecx]']
mov ['[ebp+eax+Str],', 'dl']
mov ['eax,', '[ebp+var_2F4]']
add ['eax,', '1']
mov ['[ebp+var_2F4],', 'eax']
mov ['ecx,', '[ebp+var_2E8]']
add ['ecx,', '2']
mov ['[ebp+var_2E8],', 'ecx']
jmp ['short', 'loc_432']
mov ['eax,', '[ebp+var_2F4]']
mov ['[ebp+eax+Str],', '0']
mov ['[ebp+var_234],', '0']
cmp ['[ebp+var_234],', '0']
jz ['loc_6E1']
cmp ['[ebp+var_C],', '0']
jg ['loc_6E1']
mov ['eax,', '[ebp+var_18]']
push ['eax']
call ['_ures_hasNext_56']
add ['esp,', '4']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
jz ['loc_6E1']
mov ['[ebp+var_2FD],', '0']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['0']
mov ['ecx,', '[ebp+var_18]']
push ['ecx']
call ['_ures_getNextResource_56']
add ['esp,', '0Ch']
mov ['[ebp+var_318],', 'eax']
cmp ['[ebp+var_C],', '0']
jle ['short', 'loc_4F2']
jmp ['loc_6E1']
mov ['eax,', '[ebp+var_318]']
push ['eax']
call ['_ures_getKey_56']
add ['esp,', '4']
mov ['[ebp+var_30C],', 'eax']
lea ['eax,', '[ebp+Buf2]']
push ['eax']
mov ['ecx,', '[ebp+var_30C]']
push ['ecx']
call ['_getTZI']
add ['esp,', '8']
mov ['[ebp+var_100],', 'eax']
cmp ['[ebp+var_100],', '0']
jnz ['loc_6C0']
mov ['eax,', '[ebp+var_164]']
mov ['[ebp+var_130],', 'eax']
mov ['eax,', '[ebp+var_160]']
mov ['[ebp+var_12C],', 'eax']
push ['2Ch']
lea ['eax,', '[ebp+Buf2]']
push ['eax']
lea ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['_memcmp']
add ['esp,', '0Ch']
test ['eax,', 'eax']
jnz ['loc_6C0']
mov ['[ebp+var_324],', '0']
cmp ['[ebp+var_D8],', '0']
jz ['short', 'loc_5A2']
lea ['eax,', '[ebp+var_C]']
push ['eax']
lea ['ecx,', '[ebp+var_C0]']
push ['ecx']
lea ['edx,', '[ebp+var_F4]']
push ['edx']
mov ['eax,', '[ebp+var_318]']
push ['eax']
call ['_ures_getStringByKey_56']
add ['esp,', '10h']
mov ['[ebp+var_324],', 'eax']
cmp ['[ebp+var_D8],', '0']
jz ['short', 'loc_5B4']
cmp ['[ebp+var_324],', '0']
jnz ['short', 'loc_5E0']
mov ['[ebp+var_C],', '0']
lea ['eax,', '[ebp+var_C]']
push ['eax']
lea ['ecx,', '[ebp+var_C0]']
push ['ecx']
push ['offset', '??_C@_03MMKGDKGA@001?$AA@']
mov ['edx,', '[ebp+var_318]']
push ['edx']
call ['_ures_getStringByKey_56']
add ['esp,', '10h']
mov ['[ebp+var_324],', 'eax']
cmp ['[ebp+var_C],', '0']
jg ['loc_6C0']
push ['28h']
push ['0']
lea ['eax,', '[ebp+Str2]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
push ['28h']
lea ['eax,', '[ebp+Str2]']
push ['eax']
mov ['ecx,', '[ebp+var_30C]']
push ['ecx']
call ['_getSTDName']
add ['esp,', '0Ch']
mov ['[ebp+var_100],', 'eax']
cmp ['[ebp+var_100],', '0']
jnz ['short', 'loc_642']
lea ['eax,', '[ebp+Str2]']
push ['eax']
lea ['ecx,', '[ebp+Dest]']
push ['ecx']
call ['_strcmp']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_642']
mov ['[ebp+var_2FD],', '1']
movsx ['eax,', '[ebp+var_2FD]']
test ['eax,', 'eax']
jnz ['short', 'loc_658']
movsx ['eax,', '[ebp+Str]']
test ['eax,', 'eax']
jnz ['short', 'loc_6C0']
mov ['[ebp+var_330],', '0']
mov ['eax,', '[ebp+var_324]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
test ['ecx,', 'ecx']
jz ['short', 'loc_6B2']
mov ['eax,', '[ebp+var_324]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
cmp ['ecx,', '20h']
jz ['short', 'loc_6B2']
mov ['eax,', '[ebp+var_330]']
mov ['ecx,', '[ebp+var_324]']
mov ['dl,', '[ecx]']
mov ['[ebp+eax+Str],', 'dl']
mov ['eax,', '[ebp+var_330]']
add ['eax,', '1']
mov ['[ebp+var_330],', 'eax']
mov ['ecx,', '[ebp+var_324]']
add ['ecx,', '2']
mov ['[ebp+var_324],', 'ecx']
jmp ['short', 'loc_662']
mov ['eax,', '[ebp+var_330]']
mov ['[ebp+eax+Str],', '0']
mov ['eax,', '[ebp+var_318]']
push ['eax']
call ['_ures_close_56']
add ['esp,', '4']
movsx ['eax,', '[ebp+var_2FD]']
test ['eax,', 'eax']
jz ['short', 'loc_6DC']
jmp ['short', 'loc_6E1']
jmp ['loc_4A7']
movsx ['eax,', '[ebp+Str]']
test ['eax,', 'eax']
jz ['short', 'loc_731']
lea ['eax,', '[ebp+Str]']
push ['eax']
call ['_strlen']
add ['esp,', '4']
mov ['[ebp+var_C0],', 'eax']
push ['1']
mov ['eax,', '[ebp+var_C0]']
add ['eax,', '1']
push ['eax']
call ['_uprv_calloc_56']
add ['esp,', '8']
mov ['[ebp+var_24],', 'eax']
cmp ['[ebp+var_24],', '0']
jz ['short', 'loc_731']
lea ['eax,', '[ebp+Str]']
push ['eax']
mov ['ecx,', '[ebp+var_24]']
push ['ecx']
call ['_strcpy']
add ['esp,', '8']
mov ['eax,', '[ebp+var_18]']
push ['eax']
call ['_ures_close_56']
add ['esp,', '4']
mov ['eax,', '[ebp+var_24]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN43']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '3F4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
dd ['offset', '$LN42']
dd ['offset', '$LN31']
dd ['0FFFFFFACh,', '28h']
dd ['offset', '$LN32']
dd ['0FFFFFF7Ch,', '28h']
dd ['offset', '$LN33']
dd ['0FFFFFF4Ch,', '28h']
dd ['offset', '$LN34']
dd ['0FFFFFF40h,', '4']
dd ['offset', '$LN35']
dd ['0FFFFFF18h,', '6']
dd ['offset', '$LN36']
dd ['0FFFFFF0Ch,', '3']
dd ['offset', '$LN37']
db ['0CCh']
db ['0FEh,', '2', 'dup(0FFh)']
dd ['offset', '??_C@_0DJ@JKGGCIEE@SOFTWARE?2Microsoft?2Windows?5NT?2Cu@+2Ch']
dd ['offset', '$LN38']
dd ['0FFFFFE98h,', '2Ch']
dd ['offset', '$LN39']
dd ['0FFFFFDE4h,', '0ACh']
dd ['offset', '$LN40']
dd ['0FFFFFD30h,', '94h']
dd ['offset', '$LN41']
assume ['cs:_rdata']
public ['??_C@_03MMKGDKGA@001?$AA@']
assume ['cs:_rdata']
public ['??_C@_0N@GPCNLNJ@mapTimezones?$AA@']
align ['4']
assume ['cs:_rdata']
public ['??_C@_0N@IHBGPIIF@windowsZones?$AA@']
align ['4']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getTZI		proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0E4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_E4]']
mov ['ecx,', '39h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['[ebp+cbData],', '2Ch']
mov ['eax,', '[ebp+Source]']
push ['eax']
lea ['ecx,', '[ebp+hKey]']
push ['ecx']
call ['_openTZRegKey']
add ['esp,', '8']
mov ['[ebp+var_14],', 'eax']
cmp ['[ebp+var_14],', '0']
jnz ['short', 'loc_8E5']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+cbData]']
push ['eax']
mov ['ecx,', '[ebp+lpData]']
push ['ecx']
push ['0']
push ['0']
push ['offset', '_TZI_REGKEY']
mov ['edx,', '[ebp+hKey]']
push ['edx']
call ['dword', 'ptr', 'ds:__imp__RegQueryValueExA@24']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14],', 'eax']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+hKey]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__RegCloseKey@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_14]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0E4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN6']
dd ['offset', '$LN4']
dd ['0FFFFFFE0h,', '4']
dd ['offset', '$LN5']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_openTZRegKey	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '160h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_160]']
mov ['ecx,', '58h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
cmp ['ds:_gWinType,', '0']
jg ['short', 'loc_987']
call ['_detectWindowsType']
mov ['ds:_gWinType,', 'eax']
xor ['eax,', 'eax']
cmp ['ds:_gWinType,', '1']
setnz ['al']
mov ['ecx,', 'ds:_TZ_REGKEY[eax*4]']
push ['ecx']
lea ['edx,', '[ebp+Dest]']
push ['edx']
call ['_strcpy']
add ['esp,', '8']
lea ['eax,', '[ebp+Dest]']
push ['eax']
call ['_strlen']
add ['esp,', '4']
lea ['ecx,', '[ebp+eax+Dest]']
mov ['[ebp+var_84],', 'ecx']
mov ['eax,', '[ebp+Source]']
push ['eax']
lea ['ecx,', '[ebp+Dest]']
push ['ecx']
call ['_strcat']
add ['esp,', '8']
cmp ['ds:_gWinType,', '1']
jnz ['short', 'loc_A09']
mov ['esi,', 'esp']
push ['offset', '_STANDARD_TIME_REGKEY']
lea ['eax,', '[ebp+Dest]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strstr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_9C],', 'eax']
cmp ['[ebp+var_9C],', '0']
jz ['short', 'loc_A09']
mov ['eax,', '[ebp+var_9C]']
mov ['byte', 'ptr', '[eax],', '0']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+phkResult]']
push ['eax']
push ['1']
push ['0']
lea ['ecx,', '[ebp+Dest]']
push ['ecx']
push ['80000002h']
call ['dword', 'ptr', 'ds:__imp__RegOpenKeyExA@20']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_90],', 'eax']
mov ['eax,', '[ebp+var_90]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN8']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '160h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN7_0']
dw ['0FFFFh']
dd ['offset', '??_C@_0DG@MFEMHAMF@SOFTWARE?2Microsoft?2Windows?2Curre@+32h']
dd ['offset', '$LN6_0']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_detectWindowsType proc	near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0E4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_E4]']
mov ['ecx,', '39h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['[ebp+var_8],', '0']
jmp ['short', 'loc_AB4']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
cmp ['[ebp+var_8],', '2']
jge ['short', 'loc_B01']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+phkResult]']
push ['eax']
push ['1']
push ['0']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', 'ds:_WIN_TYPE_PROBE_REGKEY[ecx*4]']
push ['edx']
push ['80000002h']
call ['dword', 'ptr', 'ds:__imp__RegOpenKeyExA@20']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14],', 'eax']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+phkResult]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__RegCloseKey@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+var_14],', '0']
jnz ['short', 'loc_AFF']
jmp ['short', 'loc_B01']
jmp ['short', 'loc_AAB']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN9']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0E4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN8_0']
dd ['offset', '$LN7_1']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getSTDName	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0E4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_E4]']
mov ['ecx,', '39h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
mov ['[ebp+cbData],', 'eax']
mov ['eax,', '[ebp+Source]']
push ['eax']
lea ['ecx,', '[ebp+hKey]']
push ['ecx']
call ['_openTZRegKey']
add ['esp,', '8']
mov ['[ebp+var_14],', 'eax']
cmp ['[ebp+var_14],', '0']
jnz ['short', 'loc_BAC']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+cbData]']
push ['eax']
mov ['ecx,', '[ebp+lpData]']
push ['ecx']
push ['0']
push ['0']
push ['offset', '_STD_REGKEY']
mov ['edx,', '[ebp+hKey]']
push ['edx']
call ['dword', 'ptr', 'ds:__imp__RegQueryValueExA@24']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14],', 'eax']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+hKey]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__RegCloseKey@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_14]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7_2']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0E4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
dd ['offset', '$LN6_1']
dd ['offset', '$LN4_0']
dd ['0FFFFFFE0h,', '4']
dd ['offset', '$LN5_0']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getTZKeyName	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0E4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_E4]']
mov ['ecx,', '39h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['[ebp+var_14],', '0']
mov ['eax,', '[ebp+arg_4]']
mov ['[ebp+cbData],', 'eax']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+phkResult]']
push ['eax']
push ['1']
push ['0']
push ['offset', '_CURRENT_ZONE_REGKEY']
push ['80000002h']
call ['dword', 'ptr', 'ds:__imp__RegOpenKeyExA@20']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_C8B']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+cbData]']
push ['eax']
mov ['ecx,', '[ebp+lpData]']
push ['ecx']
push ['0']
push ['0']
push ['offset', '??_C@_0BA@GCKJIEGO@TimeZoneKeyName?$AA@']
mov ['edx,', '[ebp+phkResult]']
push ['edx']
call ['dword', 'ptr', 'ds:__imp__RegQueryValueExA@24']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14],', 'eax']
mov ['eax,', '[ebp+var_14]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7_3']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0E4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
dd ['offset', '$LN6_2']
dd ['offset', '$LN4_1']
dd ['0FFFFFFE0h,', '4']
dd ['offset', '$LN5_1']
assume ['cs:_rdata']
public ['??_C@_0BA@GCKJIEGO@TimeZoneKeyName?$AA@']
extrn ['_strcpy:near']
extrn ['_uprv_calloc_56:near']
extrn ['_strlen:near']
extrn ['_ures_close_56:near']
extrn ['_strcmp:near']
extrn ['_memcmp:near']
extrn ['_ures_getKey_56:near']
extrn ['_ures_getNextResource_56:near']
extrn ['_ures_hasNext_56:near']
extrn ['_ures_getStringByKey_56:near']
extrn ['__imp__GetVersionExA@4:near']
extrn ['_ures_getByKey_56:near']
extrn ['_ures_openDirect_56:near']
extrn ['_u_strToUTF8_56:near']
extrn ['__imp__GetGeoInfoW@20:near']
extrn ['__imp__GetUserGeoID@4:near']
extrn ['__imp__wcstombs:near']
extrn ['_memcpy:near']
extrn ['_uprv_checkValidMemory:near']
extrn ['__imp__GetTimeZoneInformation@4:near']
extrn ['_memset:near']
extrn ['___security_cookie:near']
extrn ['@__security_check_cookie@4:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['__imp__RegCloseKey@4:near']
extrn ['__imp__RegQueryValueExA@24:near']
extrn ['__imp__RegOpenKeyExA@20:near']
extrn ['__imp__strstr:near']
extrn ['_strcat:near']
end
