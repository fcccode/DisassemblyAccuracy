endp
_uscript_getCode_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '1ACh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_1AC]']
mov ['ecx,', '6Bh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_53']
xor ['eax,', 'eax']
jmp ['loc_20E']
cmp ['[ebp+Str],', '0']
jz ['short', 'loc_88']
cmp ['[ebp+arg_4],', '0']
jnz ['short', 'loc_70']
xor ['eax,', 'eax']
cmp ['[ebp+arg_8],', '0']
setnz ['al']
mov ['[ebp+var_1AC],', 'eax']
jmp ['short', 'loc_7F']
xor ['ecx,', 'ecx']
cmp ['[ebp+arg_8],', '0']
setl ['cl']
mov ['[ebp+var_1AC],', 'ecx']
cmp ['[ebp+var_1AC],', '0']
jz ['short', 'loc_98']
mov ['eax,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[eax],', '1']
xor ['eax,', 'eax']
jmp ['loc_20E']
mov ['[ebp+var_9],', '0']
mov ['esi,', 'esp']
push ['2Dh']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_118']
mov ['esi,', 'esp']
push ['5Fh']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_118']
mov ['eax,', '[ebp+Str]']
push ['eax']
push ['100Ah']
call ['_u_getPropertyValueEnum_56']
add ['esp,', '8']
mov ['[ebp+var_D8],', 'eax']
cmp ['[ebp+var_D8],', '0FFFFFFFFh']
jz ['short', 'loc_114']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+var_D8]']
push ['eax']
call ['_setOneCode']
add ['esp,', '10h']
jmp ['loc_20E']
mov ['[ebp+var_9],', '1']
mov ['[ebp+var_C0],', '0']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['_getCodesFromLocale']
add ['esp,', '10h']
mov ['[ebp+var_CC],', 'eax']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jg ['short', 'loc_151']
cmp ['[ebp+var_CC],', '0']
jz ['short', 'loc_15C']
mov ['eax,', '[ebp+var_CC]']
jmp ['loc_20E']
lea ['eax,', '[ebp+var_C0]']
push ['eax']
push ['9Dh']
lea ['ecx,', '[ebp+var_B4]']
push ['ecx']
mov ['edx,', '[ebp+Str]']
push ['edx']
call ['_uloc_addLikelySubtags_56']
add ['esp,', '10h']
cmp ['[ebp+var_C0],', '0']
jg ['short', 'loc_1C7']
cmp ['[ebp+var_C0],', '0FFFFFF84h']
jz ['short', 'loc_1C7']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
lea ['eax,', '[ebp+var_B4]']
push ['eax']
call ['_getCodesFromLocale']
add ['esp,', '10h']
mov ['[ebp+var_CC],', 'eax']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jg ['short', 'loc_1BF']
cmp ['[ebp+var_CC],', '0']
jz ['short', 'loc_1C7']
mov ['eax,', '[ebp+var_CC]']
jmp ['short', 'loc_20E']
movsx ['eax,', '[ebp+var_9]']
test ['eax,', 'eax']
jnz ['short', 'loc_20C']
mov ['eax,', '[ebp+Str]']
push ['eax']
push ['100Ah']
call ['_u_getPropertyValueEnum_56']
add ['esp,', '8']
mov ['[ebp+var_E4],', 'eax']
cmp ['[ebp+var_E4],', '0FFFFFFFFh']
jz ['short', 'loc_20C']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+var_E4]']
push ['eax']
call ['_setOneCode']
add ['esp,', '10h']
jmp ['short', 'loc_20E']
xor ['eax,', 'eax']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN20']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '1ACh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
dd ['offset', '$LN19']
dd ['offset', '$LN17']
dd ['0FFFFFF40h,', '4']
dd ['offset', '$LN18']
align ['4']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_setOneCode	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C0h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C0]']
mov ['ecx,', '30h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_2AE']
xor ['eax,', 'eax']
jmp ['short', 'loc_2D1']
cmp ['[ebp+arg_8],', '1']
jge ['short', 'loc_2C4']
mov ['eax,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[eax],', '0Fh']
mov ['eax,', '1']
jmp ['short', 'loc_2D1']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax],', 'ecx']
mov ['eax,', '1']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getCodesFromLocale proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '108h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_108]']
mov ['ecx,', '42h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_C],', '0']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_316']
xor ['eax,', 'eax']
jmp ['loc_46B']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['8']
lea ['ecx,', '[ebp+Str1]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_uloc_getLanguage_56']
add ['esp,', '10h']
cmp ['[ebp+var_C],', '0']
jg ['short', 'loc_338']
cmp ['[ebp+var_C],', '0FFFFFF84h']
jnz ['short', 'loc_33F']
xor ['eax,', 'eax']
jmp ['loc_46B']
push ['offset', '??_C@_02DJBIDCPN@ja?$AA@']
lea ['eax,', '[ebp+Str1]']
push ['eax']
call ['_strcmp']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_374']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
push ['3']
push ['offset', '_JAPANESE']
call ['_setCodes']
add ['esp,', '14h']
jmp ['loc_46B']
push ['offset', '??_C@_02KGFJHFEE@ko?$AA@']
lea ['eax,', '[ebp+Str1]']
push ['eax']
call ['_strcmp']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_3A9']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
push ['2']
push ['offset', '_KOREAN']
call ['_setCodes']
add ['esp,', '14h']
jmp ['loc_46B']
lea ['eax,', '[ebp+var_C]']
push ['eax']
push ['8']
lea ['ecx,', '[ebp+var_2C]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_uloc_getScript_56']
add ['esp,', '10h']
mov ['[ebp+var_38],', 'eax']
cmp ['[ebp+var_C],', '0']
jg ['short', 'loc_3CE']
cmp ['[ebp+var_C],', '0FFFFFF84h']
jnz ['short', 'loc_3D5']
xor ['eax,', 'eax']
jmp ['loc_46B']
push ['offset', '??_C@_02PEPMCKME@zh?$AA@']
lea ['eax,', '[ebp+Str1]']
push ['eax']
call ['_strcmp']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_41C']
push ['offset', '??_C@_04NLNONBNE@Hant?$AA@']
lea ['eax,', '[ebp+var_2C]']
push ['eax']
call ['_strcmp']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_41C']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
push ['2']
push ['offset', '_HAN_BOPO']
call ['_setCodes']
add ['esp,', '14h']
jmp ['short', 'loc_46B']
cmp ['[ebp+var_38],', '0']
jz ['short', 'loc_469']
lea ['eax,', '[ebp+var_2C]']
push ['eax']
push ['100Ah']
call ['_u_getPropertyValueEnum_56']
add ['esp,', '8']
mov ['[ebp+var_44],', 'eax']
cmp ['[ebp+var_44],', '0FFFFFFFFh']
jz ['short', 'loc_469']
cmp ['[ebp+var_44],', '49h']
jz ['short', 'loc_448']
cmp ['[ebp+var_44],', '4Ah']
jnz ['short', 'loc_44F']
mov ['[ebp+var_44],', '11h']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+var_44]']
push ['eax']
call ['_setOneCode']
add ['esp,', '10h']
jmp ['short', 'loc_46B']
xor ['eax,', 'eax']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN19_0']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '108h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
dd ['offset', '$LN18_0']
dd ['offset', '$LN15']
dd ['0FFFFFFE4h,', '8']
dd ['offset', '$LN16']
dd ['0FFFFFFD4h,', '8']
dd ['offset', '$LN17_0']
align ['4']
assume ['cs:_rdata']
public ['??_C@_04NLNONBNE@Hant?$AA@']
align ['10h']
assume ['cs:_rdata']
public ['??_C@_02PEPMCKME@zh?$AA@']
align ['4']
assume ['cs:_rdata']
public ['??_C@_02KGFJHFEE@ko?$AA@']
align ['4']
assume ['cs:_rdata']
public ['??_C@_02DJBIDCPN@ja?$AA@']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_setCodes	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0CCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_CC]']
mov ['ecx,', '33h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_10]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_526']
xor ['eax,', 'eax']
jmp ['short', 'loc_56D']
mov ['eax,', '[ebp+arg_4]']
cmp ['eax,', '[ebp+arg_C]']
jle ['short', 'loc_53C']
mov ['eax,', '[ebp+arg_10]']
mov ['dword', 'ptr', '[eax],', '0Fh']
mov ['eax,', '[ebp+arg_4]']
jmp ['short', 'loc_56D']
mov ['[ebp+var_8],', '0']
jmp ['short', 'loc_54E']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['eax,', '[ebp+var_8]']
cmp ['eax,', '[ebp+arg_4]']
jge ['short', 'loc_56A']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+var_8]']
mov ['esi,', '[ebp+arg_0]']
mov ['edx,', '[esi+edx*4]']
mov ['[ecx+eax*4],', 'edx']
jmp ['short', 'loc_545']
mov ['eax,', '[ebp+arg_4]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
extrn ['_uloc_addLikelySubtags_56:near']
extrn ['_u_getPropertyValueEnum_56:near']
extrn ['__imp__strchr:near']
extrn ['___security_cookie:near']
extrn ['@__security_check_cookie@4:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['_uloc_getScript_56:near']
extrn ['_strcmp:near']
extrn ['_uloc_getLanguage_56:near']
end
