?RegisterCodec@@YGXPBUCCodecInfo@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
cmp ['ds:?g_NumCodecs@@3IA,', '40h']
jnb ['short', 'loc_172']
mov ['eax,', 'ds:?g_NumCodecs@@3IA']
mov ['ecx,', '[ebp+arg_0]']
mov ['ds:?g_Codecs@@3PAPBUCCodecInfo@@A[eax*4],', 'ecx']
mov ['edx,', 'ds:?g_NumCodecs@@3IA']
add ['edx,', '1']
mov ['ds:?g_NumCodecs@@3IA,', 'edx']
pop ['ebp']
retn ['4']
endp
?RegisterHasher@@YGXPBUCHasherInfo@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
cmp ['ds:?g_NumHashers@@3IA,', '10h']
jnb ['short', 'loc_1A2']
mov ['eax,', 'ds:?g_NumHashers@@3IA']
mov ['ecx,', '[ebp+arg_0]']
mov ['ds:?g_Hashers@@3PAPBUCHasherInfo@@A[eax*4],', 'ecx']
mov ['edx,', 'ds:?g_NumHashers@@3IA']
add ['edx,', '1']
mov ['ds:?g_NumHashers@@3IA,', 'edx']
pop ['ebp']
retn ['4']
endp
?FindMethod@@YG_NABVAString@@AA_KAAI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_1CE']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['ecx,', 'ds:?g_NumCodecs@@3IA']
jnb ['short', 'loc_224']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', 'ds:?g_Codecs@@3PAPBUCCodecInfo@@A[edx*4]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+10h]']
push ['edx']
mov ['ecx,', '[ebp+arg_0]']
call ['??BAString@@QBEPBDXZ']
push ['eax']
call ['?StringsAreEqualNoCase_Ascii@@YG_NPBD0@Z']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_222']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+8]']
mov ['[ecx],', 'eax']
mov ['edx,', '[edx+0Ch]']
mov ['[ecx+4],', 'edx']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+14h]']
mov ['[eax],', 'edx']
mov ['al,', '1']
jmp ['short', 'loc_226']
jmp ['short', 'loc_1C5']
xor ['al,', 'al']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?FindMethod@@YG_N_KAAVAString@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
mov ['[ebp+var_C],', '0CCCCCCCCh']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['ecx,', '[ebp+arg_8]']
call ['?Empty@AString@@QAEXXZ']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_26D']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['ecx,', 'ds:?g_NumCodecs@@3IA']
jnb ['short', 'loc_2B6']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', 'ds:?g_Codecs@@3PAPBUCCodecInfo@@A[edx*4]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['[ebp+var_C],', 'ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', 'dword', 'ptr', '[ebp+arg_0]']
cmp ['eax,', '[edx+8]']
jnz ['short', 'loc_2B4']
mov ['ecx,', '[ebp+var_C]']
mov ['edx,', 'dword', 'ptr', '[ebp+arg_0+4]']
cmp ['edx,', '[ecx+0Ch]']
jnz ['short', 'loc_2B4']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+10h]']
push ['ecx']
mov ['ecx,', '[ebp+arg_8]']
call ['??4AString@@QAEAAV0@PBD@Z']
mov ['al,', '1']
jmp ['short', 'loc_2B8']
jmp ['short', 'loc_264']
xor ['al,', 'al']
add ['esp,', '0Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?FindHashMethod@@YG_NABVAString@@AA_K@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_2EE']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['ecx,', 'ds:?g_NumHashers@@3IA']
jnb ['short', 'loc_339']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', 'ds:?g_Hashers@@3PAPBUCHasherInfo@@A[edx*4]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+10h]']
push ['edx']
mov ['ecx,', '[ebp+arg_0]']
call ['??BAString@@QBEPBDXZ']
push ['eax']
call ['?StringsAreEqualNoCase_Ascii@@YG_NPBD0@Z']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_337']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+8]']
mov ['[ecx],', 'eax']
mov ['edx,', '[edx+0Ch]']
mov ['[ecx+4],', 'edx']
mov ['al,', '1']
jmp ['short', 'loc_33B']
jmp ['short', 'loc_2E5']
xor ['al,', 'al']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?GetHashMethods@@YGXAAV?$CRecordVector@_K@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', 'ds:?g_NumHashers@@3IA']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?ClearAndSetSize@?$CRecordVector@_K@@QAEXI@Z']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_384']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '1']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+var_4]']
cmp ['edx,', 'ds:?g_NumHashers@@3IA']
jnb ['short', 'loc_3B2']
mov ['eax,', '[ebp+var_4]']
mov ['esi,', 'ds:?g_Hashers@@3PAPBUCHasherInfo@@A[eax*4]']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
mov ['ecx,', '[ebp+arg_0]']
call ['??A?$CRecordVector@_K@@QAEAA_KI@Z']
mov ['edx,', '[esi+8]']
mov ['[eax],', 'edx']
mov ['ecx,', '[esi+0Ch]']
mov ['[eax+4],', 'ecx']
jmp ['short', 'loc_37B']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@AAUCCreatedCoder@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '14h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_10]']
mov ['byte', 'ptr', '[eax+8],', '0']
mov ['ecx,', '[ebp+arg_10]']
mov ['byte', 'ptr', '[ecx+9],', '0']
mov ['edx,', '[ebp+arg_10]']
mov ['dword', 'ptr', '[edx+0Ch],', '1']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_40D']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['ecx,', 'ds:?g_NumCodecs@@3IA']
jnb ['loc_532']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', 'ds:?g_Codecs@@3PAPBUCCodecInfo@@A[edx*4]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['[ebp+var_14],', 'ecx']
mov ['edx,', '[ebp+var_14]']
mov ['eax,', '[edx+8]']
cmp ['eax,', '[ebp+arg_0]']
jnz ['loc_52D']
mov ['ecx,', '[ebp+var_14]']
mov ['edx,', '[ecx+0Ch]']
cmp ['edx,', '[ebp+arg_4]']
jnz ['loc_52D']
movzx ['eax,', '[ebp+arg_8]']
test ['eax,', 'eax']
jz ['short', 'loc_4C3']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+4],', '0']
jz ['short', 'loc_4C1']
mov ['edx,', '[ebp+var_8]']
mov ['esi,', 'esp']
mov ['eax,', '[edx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_C],', 'eax']
mov ['ecx,', '[ebp+var_8]']
movzx ['edx,', 'byte', 'ptr', '[ecx+18h]']
test ['edx,', 'edx']
jz ['short', 'loc_48B']
mov ['eax,', '[ebp+var_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_C]']
call ['??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@PAU1@@Z']
jmp ['short', 'loc_4BD']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+14h],', '1']
jnz ['short', 'loc_4A2']
mov ['edx,', '[ebp+var_C]']
push ['edx']
mov ['ecx,', '[ebp+arg_10]']
call ['??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@PAU1@@Z']
jmp ['short', 'loc_4BD']
mov ['eax,', '[ebp+var_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_10]']
add ['ecx,', '4']
call ['??4?$CMyComPtr@UICompressCoder2@@@@QAEPAUICompressCoder2@@PAU1@@Z']
mov ['ecx,', '[ebp+arg_10]']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+14h]']
mov ['[ecx+0Ch],', 'eax']
xor ['eax,', 'eax']
jmp ['short', 'loc_534']
jmp ['short', 'loc_52D']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_52D']
mov ['edx,', '[ebp+var_8]']
mov ['esi,', 'esp']
mov ['eax,', '[edx]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_8]']
movzx ['edx,', 'byte', 'ptr', '[ecx+18h]']
test ['edx,', 'edx']
jz ['short', 'loc_4F7']
mov ['eax,', '[ebp+var_10]']
push ['eax']
mov ['ecx,', '[ebp+arg_C]']
call ['??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@PAU1@@Z']
jmp ['short', 'loc_529']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+14h],', '1']
jnz ['short', 'loc_50E']
mov ['edx,', '[ebp+var_10]']
push ['edx']
mov ['ecx,', '[ebp+arg_10]']
call ['??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@PAU1@@Z']
jmp ['short', 'loc_529']
mov ['eax,', '[ebp+var_10]']
push ['eax']
mov ['ecx,', '[ebp+arg_10]']
add ['ecx,', '4']
call ['??4?$CMyComPtr@UICompressCoder2@@@@QAEPAUICompressCoder2@@PAU1@@Z']
mov ['ecx,', '[ebp+arg_10]']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+14h]']
mov ['[ecx+0Ch],', 'eax']
xor ['eax,', 'eax']
jmp ['short', 'loc_534']
jmp ['loc_404']
xor ['eax,', 'eax']
pop ['esi']
add ['esp,', '14h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['14h']
endp
?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '24h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_30],', 'eax']
mov ['[ebp+var_2C],', 'eax']
mov ['[ebp+var_28],', 'eax']
mov ['[ebp+var_24],', 'eax']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
lea ['ecx,', '[ebp+var_14]']
call ['??0?$CMyComPtr@UICompressFilter@@@@QAE@XZ']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
lea ['ecx,', '[ebp+var_14]']
push ['ecx']
movzx ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', 'dword', 'ptr', '[ebp+arg_0+4]']
push ['eax']
mov ['ecx,', 'dword', 'ptr', '[ebp+arg_0]']
push ['ecx']
call ['?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@AAUCCreatedCoder@@@Z']
mov ['[ebp+var_1C],', 'eax']
lea ['ecx,', '[ebp+var_14]']
call ['??B?$CMyComPtr@UICompressFilter@@@@QBEPAUICompressFilter@@XZ']
test ['eax,', 'eax']
jz ['short', 'loc_62D']
mov ['edx,', '[ebp+arg_C]']
mov ['byte', 'ptr', '[edx+9],', '1']
push ['98h']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_28],', 'eax']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
cmp ['[ebp+var_28],', '0']
jz ['short', 'loc_5F8']
movzx ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+var_28]']
call ['??0CFilterCoder@@QAE@_N@Z']
mov ['[ebp+var_30],', 'eax']
jmp ['short', 'loc_5FF']
mov ['[ebp+var_30],', '0']
mov ['ecx,', '[ebp+var_30]']
mov ['[ebp+var_24],', 'ecx']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
mov ['edx,', '[ebp+var_24]']
mov ['[ebp+var_20],', 'edx']
mov ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+arg_C]']
call ['??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@PAU1@@Z']
lea ['ecx,', '[ebp+var_14]']
push ['ecx']
mov ['ecx,', '[ebp+var_20]']
add ['ecx,', '94h']
call ['??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@ABV0@@Z']
mov ['edx,', '[ebp+var_1C]']
mov ['[ebp+var_2C],', 'edx']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_14]']
call ['??1?$CMyComPtr@UICompressFilter@@@@QAE@XZ']
mov ['eax,', '[ebp+var_2C]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN11']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '30h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressCoder@@@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressCoder@@@@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '20h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_2C],', 'eax']
mov ['[ebp+var_28],', 'eax']
mov ['[ebp+var_24],', 'eax']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
lea ['ecx,', '[ebp+var_20]']
call ['??0CCreatedCoder@@QAE@XZ']
mov ['[ebp+var_4],', '0']
lea ['eax,', '[ebp+var_20]']
push ['eax']
movzx ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', 'dword', 'ptr', '[ebp+arg_0+4]']
push ['edx']
mov ['eax,', 'dword', 'ptr', '[ebp+arg_0]']
push ['eax']
call ['?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z']
mov ['[ebp+var_28],', 'eax']
lea ['ecx,', '[ebp+var_20]']
push ['ecx']
mov ['ecx,', '[ebp+arg_C]']
call ['??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@ABV0@@Z']
mov ['edx,', '[ebp+var_28]']
mov ['[ebp+var_2C],', 'edx']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_20]']
call ['??1CCreatedCoder@@QAE@XZ']
mov ['eax,', '[ebp+var_2C]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '2Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?CreateFilter@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateFilter@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '1Ch']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_28],', 'eax']
mov ['[ebp+var_24],', 'eax']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
lea ['ecx,', '[ebp+var_20]']
call ['??0CCreatedCoder@@QAE@XZ']
mov ['[ebp+var_4],', '0']
lea ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+arg_C]']
push ['ecx']
movzx ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@AAUCCreatedCoder@@@Z']
mov ['[ebp+var_28],', 'eax']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_20]']
call ['??1CCreatedCoder@@QAE@XZ']
mov ['eax,', '[ebp+var_28]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7_0']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '28h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?CreateHasher@@YGJ_KAAVAString@@AAV?$CMyComPtr@UIHasher@@@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
push ['esi']
mov ['[ebp+var_C],', '0CCCCCCCCh']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['ecx,', '[ebp+arg_8]']
call ['?Empty@AString@@QAEXXZ']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_87E']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['ecx,', 'ds:?g_NumHashers@@3IA']
jnb ['short', 'loc_8DE']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', 'ds:?g_Hashers@@3PAPBUCHasherInfo@@A[edx*4]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['[ebp+var_C],', 'ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx+8]']
cmp ['eax,', '[ebp+arg_0]']
jnz ['short', 'loc_8DC']
mov ['ecx,', '[ebp+var_C]']
mov ['edx,', '[ecx+0Ch]']
cmp ['edx,', '[ebp+arg_4]']
jnz ['short', 'loc_8DC']
mov ['eax,', '[ebp+var_8]']
mov ['esi,', 'esp']
mov ['ecx,', '[eax]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
mov ['ecx,', '[ebp+arg_C]']
call ['??4?$CMyComPtr@UIHasher@@@@QAEPAUIHasher@@PAU1@@Z']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+10h]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
call ['??4AString@@QAEAAV0@PBD@Z']
jmp ['short', 'loc_8DE']
jmp ['short', 'loc_875']
xor ['eax,', 'eax']
pop ['esi']
add ['esp,', '0Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
??BAString@@QBEPBDXZ proc near          
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['eax,', '[eax]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Empty@AString@@QAEXXZ proc near        
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['byte', 'ptr', '[edx],', '0']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z$0 proc near
lea ['ecx,', '[ebp-14h]']
jmp ['??1?$CMyComPtr@UICompressFilter@@@@QAE@XZ']
endp
__unwindfunclet$?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z$1 proc near
mov ['eax,', '[ebp-28h]']
push ['eax']
call ['??3@YAXPAX@Z']
pop ['ecx']
retn
endp
__ehhandler$?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-28h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateCoder@@YGJ_K_NAAUCCreatedCoder@@@Z']
jmp ['___CxxFrameHandler3']
endp
__unwindfunclet$?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressCoder@@@@@Z$0 proc near
lea ['ecx,', '[ebp-20h]']
jmp ['??1CCreatedCoder@@QAE@XZ']
endp
__ehhandler$?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressCoder@@@@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-24h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateCoder@@YGJ_K_NAAV?$CMyComPtr@UICompressCoder@@@@@Z']
jmp ['___CxxFrameHandler3']
endp
__unwindfunclet$?CreateFilter@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@@Z$0 proc near
lea ['ecx,', '[ebp-20h]']
jmp ['??1CCreatedCoder@@QAE@XZ']
endp
__ehhandler$?CreateFilter@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-20h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateFilter@@YGJ_K_NAAV?$CMyComPtr@UICompressFilter@@@@@Z']
jmp ['___CxxFrameHandler3']
endp
??0CCreatedCoder@@QAE@XZ proc near      
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??0CCreatedCoder@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['ecx,', '[ebp+var_10]']
call ['??0?$CMyComPtr@UICompressCoder@@@@QAE@XZ']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '4']
call ['??0?$CMyComPtr@UICompressCoder2@@@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??0CCreatedCoder@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CMyComPtr@UICompressCoder@@@@QAE@XZ']
endp
__ehhandler$??0CCreatedCoder@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??0CCreatedCoder@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1CCreatedCoder@@QAE@XZ proc near      
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CCreatedCoder@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '4']
call ['??1?$CMyComPtr@UICompressCoder2@@@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1?$CMyComPtr@UICompressCoder@@@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CCreatedCoder@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CMyComPtr@UICompressCoder@@@@QAE@XZ']
endp
__ehhandler$??1CCreatedCoder@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CCreatedCoder@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??0?$CMyComPtr@UICompressCoder@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CMyComPtr@UICompressCoder@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax],', '0']
jz ['short', 'loc_BFE']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[edx]']
mov ['esi,', 'esp']
push ['ecx']
mov ['eax,', '[edx+8]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@PAU1@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
cmp ['[ebp+arg_0],', '0']
jz ['short', 'loc_C3C']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
mov ['eax,', '[ecx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_C5F']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[eax]']
mov ['esi,', 'esp']
push ['edx']
mov ['ecx,', '[eax+8]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[edx],', 'eax']
mov ['eax,', '[ebp+arg_0]']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@ABV0@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
push ['ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??4?$CMyComPtr@UICompressCoder@@@@QAEPAUICompressCoder@@PAU1@@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??0?$CMyComPtr@UICompressCoder2@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CMyComPtr@UICompressCoder2@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax],', '0']
jz ['short', 'loc_CFA']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[edx]']
mov ['esi,', 'esp']
push ['ecx']
mov ['eax,', '[edx+8]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??4?$CMyComPtr@UICompressCoder2@@@@QAEPAUICompressCoder2@@PAU1@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
cmp ['[ebp+arg_0],', '0']
jz ['short', 'loc_D38']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
mov ['eax,', '[ecx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_D5B']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[eax]']
mov ['esi,', 'esp']
push ['edx']
mov ['ecx,', '[eax+8]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[edx],', 'eax']
mov ['eax,', '[ebp+arg_0]']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??0?$CMyComPtr@UICompressFilter@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CMyComPtr@UICompressFilter@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax],', '0']
jz ['short', 'loc_DCA']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[edx]']
mov ['esi,', 'esp']
push ['ecx']
mov ['eax,', '[edx+8]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??B?$CMyComPtr@UICompressFilter@@@@QBEPAUICompressFilter@@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['eax,', '[eax]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@PAU1@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
cmp ['[ebp+arg_0],', '0']
jz ['short', 'loc_E20']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
mov ['eax,', '[ecx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_E43']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[eax]']
mov ['esi,', 'esp']
push ['edx']
mov ['ecx,', '[eax+8]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[edx],', 'eax']
mov ['eax,', '[ebp+arg_0]']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@ABV0@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
push ['ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??4?$CMyComPtr@UICompressFilter@@@@QAEPAUICompressFilter@@PAU1@@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?ClearAndSetSize@?$CRecordVector@_K@@QAEXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
call ['?ClearAndReserve@?$CRecordVector@_K@@QAEXI@Z']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ebp+arg_0]']
mov ['[ecx+4],', 'edx']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??A?$CRecordVector@_K@@QAEAA_KI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
lea ['eax,', '[ecx+edx*8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??4?$CMyComPtr@UIHasher@@@@QAEPAUIHasher@@PAU1@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
cmp ['[ebp+arg_0],', '0']
jz ['short', 'loc_F0C']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
mov ['eax,', '[ecx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_F2F']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[eax]']
mov ['esi,', 'esp']
push ['edx']
mov ['ecx,', '[eax+8]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[edx],', 'eax']
mov ['eax,', '[ebp+arg_0]']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?ClearAndReserve@?$CRecordVector@_K@@QAEXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
mov ['[ebp+var_C],', '0CCCCCCCCh']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?Clear@?$CRecordVector@_K@@QAEXXZ']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+arg_0]']
cmp ['ecx,', '[eax+8]']
jbe ['short', 'loc_FD4']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
push ['ecx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+8],', '0']
xor ['ecx,', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['edx,', '8']
mul ['edx']
seto ['cl']
neg ['ecx']
or ['ecx,', 'eax']
push ['ecx']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_C],', 'eax']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_C]']
mov ['[eax],', 'ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[edx+8],', 'eax']
add ['esp,', '0Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?Clear@?$CRecordVector@_K@@QAEXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
