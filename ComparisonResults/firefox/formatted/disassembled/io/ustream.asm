endp
??2@YAPAXI@Z	proc near
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
mov ['[ebp+var_8],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['byte', 'ptr', '[eax],', '5']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??3@YAXPAX@Z	proc near
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
mov ['[ebp+var_8],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['byte', 'ptr', '[eax],', '5']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??6icu_56@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@std@@AAV12@ABVUnicodeString@0@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '1DCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_1DC]']
mov ['ecx,', '77h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_4]']
call ['dword', 'ptr', 'ds:__imp_?length@UnicodeString@icu_56@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jle ['loc_2BD']
mov ['[ebp+var_E8],', '0']
lea ['eax,', '[ebp+var_E8]']
push ['eax']
call ['_u_getDefaultConverter_56']
add ['esp,', '4']
mov ['[ebp+var_DC],', 'eax']
mov ['eax,', '[ebp+var_E8]']
push ['eax']
call ['?U_SUCCESS@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
jz ['loc_2BD']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_4]']
call ['dword', 'ptr', 'ds:__imp_?getBuffer@UnicodeString@icu_56@@QBEPB_WXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_F4],', 'eax']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_4]']
call ['dword', 'ptr', 'ds:__imp_?length@UnicodeString@icu_56@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_F4]']
lea ['edx,', '[ecx+eax*2]']
mov ['[ebp+var_100],', 'edx']
lea ['eax,', '[ebp+var_9]']
mov ['[ebp+var_118],', 'eax']
mov ['[ebp+var_E8],', '0']
lea ['eax,', '[ebp+Str]']
mov ['[ebp+var_10C],', 'eax']
lea ['eax,', '[ebp+var_E8]']
push ['eax']
push ['0']
push ['0']
mov ['ecx,', '[ebp+var_100]']
push ['ecx']
lea ['edx,', '[ebp+var_F4]']
push ['edx']
mov ['eax,', '[ebp+var_118]']
push ['eax']
lea ['ecx,', '[ebp+var_10C]']
push ['ecx']
mov ['edx,', '[ebp+var_DC]']
push ['edx']
call ['_ucnv_fromUnicode_56']
add ['esp,', '20h']
mov ['eax,', '[ebp+var_10C]']
mov ['byte', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_10C]']
lea ['ecx,', '[ebp+Str]']
cmp ['eax,', 'ecx']
jbe ['short', 'loc_2A1']
lea ['eax,', '[ebp+Str]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z']
add ['esp,', '8']
cmp ['[ebp+var_E8],', '0Fh']
jz ['loc_229']
mov ['eax,', '[ebp+var_DC]']
push ['eax']
call ['_u_releaseDefaultConverter_56']
add ['esp,', '4']
mov ['eax,', '[ebp+arg_0]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN14']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '1DCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
dd ['offset', '$LN13']
dd ['offset', '$LN9']
dd ['0FFFFFF18h,', '4']
dd ['offset', '$LN10']
dd ['0FFFFFF0Ch,', '4']
dd ['offset', '$LN11']
dd ['0FFFFFEF4h,', '4']
dd ['offset', '$LN12']
db ['0']
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?U_SUCCESS@@YACW4UErrorCode@@@Z	proc near
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
cmp ['[ebp+arg_0],', '0']
setle ['al']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??5icu_56@@YAAAV?$basic_istream@DU?$char_traits@D@std@@@std@@AAV12@AAVUnicodeString@0@@Z proc near
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
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?fail@ios_base@std@@QBE_NXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_3BF']
mov ['eax,', '[ebp+arg_0]']
jmp ['loc_6DE']
mov ['[ebp+var_4C],', '0']
mov ['[ebp+var_64],', '0']
lea ['eax,', '[ebp+var_64]']
push ['eax']
call ['_u_getDefaultConverter_56']
add ['esp,', '4']
mov ['[ebp+var_58],', 'eax']
mov ['eax,', '[ebp+var_64]']
push ['eax']
call ['?U_SUCCESS@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
jz ['loc_6DB']
lea ['eax,', '[ebp+var_28]']
mov ['[ebp+var_70],', 'eax']
lea ['eax,', '[ebp+var_8]']
mov ['[ebp+var_7C],', 'eax']
mov ['[ebp+var_B5],', '1']
mov ['[ebp+var_C1],', '1']
movsx ['eax,', '[ebp+var_C1]']
test ['eax,', 'eax']
jz ['$STOP_READING$35851']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?get@?$basic_istream@DU?$char_traits@D@std@@@std@@QAEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_9D],', 'al']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?eof@ios_base@std@@QBE_NXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_489']
movsx ['eax,', '[ebp+var_B5]']
test ['eax,', 'eax']
jnz ['short', 'loc_482']
mov ['esi,', 'esp']
push ['0']
push ['1']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_C1],', '0']
movsx ['eax,', '[ebp+var_C1]']
lea ['ecx,', '[ebp+eax+var_9D]']
mov ['[ebp+var_94],', 'ecx']
lea ['eax,', '[ebp+var_28]']
mov ['[ebp+var_70],', 'eax']
lea ['eax,', '[ebp+var_9D]']
mov ['[ebp+var_88],', 'eax']
mov ['[ebp+var_64],', '0']
lea ['eax,', '[ebp+var_64]']
push ['eax']
movsx ['ecx,', '[ebp+var_C1]']
test ['ecx,', 'ecx']
setz ['dl']
movzx ['eax,', 'dl']
push ['eax']
push ['0']
mov ['ecx,', '[ebp+var_94]']
push ['ecx']
lea ['edx,', '[ebp+var_88]']
push ['edx']
mov ['eax,', '[ebp+var_7C]']
push ['eax']
lea ['ecx,', '[ebp+var_70]']
push ['ecx']
mov ['edx,', '[ebp+var_58]']
push ['edx']
call ['_ucnv_toUnicode_56']
add ['esp,', '20h']
mov ['eax,', '[ebp+var_64]']
push ['eax']
call ['?U_FAILURE@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
jz ['short', 'loc_52B']
mov ['esi,', 'esp']
push ['0']
push ['2']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['$STOP_READING$35851']
jmp ['$STOP_READING$35851']
mov ['eax,', '[ebp+var_70]']
lea ['ecx,', '[ebp+var_28]']
cmp ['eax,', 'ecx']
jz ['loc_6B4']
mov ['eax,', '[ebp+var_70]']
lea ['ecx,', '[ebp+var_28]']
sub ['eax,', 'ecx']
sar ['eax,', '1']
mov ['[ebp+var_D0],', 'eax']
mov ['[ebp+var_DC],', '0']
mov ['eax,', '[ebp+var_DC]']
cmp ['eax,', '[ebp+var_D0]']
jge ['loc_6AB']
mov ['eax,', '[ebp+var_DC]']
mov ['cx,', '[ebp+eax*2+var_28]']
mov ['[ebp+var_AC],', 'cx']
mov ['edx,', '[ebp+var_DC]']
add ['edx,', '1']
mov ['[ebp+var_DC],', 'edx']
movzx ['eax,', '[ebp+var_AC]']
and ['eax,', '0FFFFFC00h']
cmp ['eax,', '0D800h']
jnz ['short', 'loc_5FC']
mov ['eax,', '[ebp+var_DC]']
cmp ['eax,', '[ebp+var_D0]']
jz ['short', 'loc_5FC']
mov ['eax,', '[ebp+var_DC]']
mov ['cx,', '[ebp+eax*2+var_28]']
mov ['[ebp+var_E8],', 'cx']
movzx ['edx,', '[ebp+var_E8]']
and ['edx,', '0FFFFFC00h']
cmp ['edx,', '0DC00h']
jnz ['short', 'loc_5FC']
mov ['eax,', '[ebp+var_DC]']
add ['eax,', '1']
mov ['[ebp+var_DC],', 'eax']
movzx ['eax,', '[ebp+var_AC]']
shl ['eax,', '0Ah']
movzx ['ecx,', '[ebp+var_E8]']
lea ['edx,', '[eax+ecx-35FDC00h]']
mov ['[ebp+var_AC],', 'dx']
movzx ['eax,', '[ebp+var_AC]']
push ['eax']
call ['_u_isWhitespace_56']
add ['esp,', '4']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
jz ['short', 'loc_666']
movsx ['eax,', '[ebp+var_B5]']
test ['eax,', 'eax']
jnz ['short', 'loc_664']
mov ['eax,', '[ebp+var_4C]']
mov ['cl,', '[ebp+var_9D]']
mov ['[ebp+eax+var_40],', 'cl']
mov ['edx,', '[ebp+var_4C]']
add ['edx,', '1']
mov ['[ebp+var_4C],', 'edx']
cmp ['[ebp+var_4C],', '0']
jle ['short', 'loc_660']
mov ['eax,', '[ebp+var_4C]']
sub ['eax,', '1']
mov ['[ebp+var_4C],', 'eax']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_4C]']
movzx ['edx,', '[ebp+ecx+var_40]']
push ['edx']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?putback@?$basic_istream@DU?$char_traits@D@std@@@std@@QAEAAV12@D@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_634']
jmp ['short', '$STOP_READING$35851']
jmp ['short', '$STOP_READING$35851']
jmp ['short', 'loc_6A6']
movsx ['eax,', '[ebp+var_B5]']
test ['eax,', 'eax']
jz ['short', 'loc_68C']
mov ['esi,', 'esp']
push ['0']
mov ['ecx,', '[ebp+arg_4]']
call ['dword', 'ptr', 'ds:__imp_?truncate@UnicodeString@icu_56@@QAECH@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_B5],', '0']
mov ['esi,', 'esp']
movzx ['eax,', '[ebp+var_AC]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
call ['dword', 'ptr', 'ds:__imp_?append@UnicodeString@icu_56@@QAEAAV12@_W@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['loc_553']
mov ['[ebp+var_4C],', '0']
jmp ['short', 'loc_6CA']
mov ['eax,', '[ebp+var_4C]']
mov ['cl,', '[ebp+var_9D]']
mov ['[ebp+eax+var_40],', 'cl']
mov ['edx,', '[ebp+var_4C]']
add ['edx,', '1']
mov ['[ebp+var_4C],', 'edx']
jmp ['loc_40D']
mov ['eax,', '[ebp+var_58]']
push ['eax']
call ['_u_releaseDefaultConverter_56']
add ['esp,', '4']
mov ['eax,', '[ebp+arg_0]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN31']
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
dd ['offset', '$LN30']
dd ['offset', '$LN24']
dd ['0FFFFFFC0h,', '10h']
dd ['offset', '$LN25']
dd ['0FFFFFF9Ch,', '4']
dd ['offset', '$LN26']
db ['90h']
db ['3', 'dup(0FFh)']
dd ['4']
dd ['offset', '$LN27']
dd ['0FFFFFF78h,', '4']
dd ['offset', '$LN28']
dd ['0FFFFFF63h,', '1']
dd ['offset', '$LN29']
db ['0']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?U_FAILURE@@YACW4UErrorCode@@@Z	proc near
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
cmp ['[ebp+arg_0],', '0']
setnle ['al']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
sub ['esp,', '150h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_160]']
mov ['ecx,', '54h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'esp']
mov ['[ebp+var_18],', '0']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['?length@?$char_traits@D@std@@SAIPBD@Z']
add ['esp,', '4']
xor ['ecx,', 'ecx']
mov ['[ebp+var_28],', 'eax']
mov ['[ebp+var_24],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?width@ios_base@std@@QBE_JXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_150],', 'eax']
mov ['[ebp+var_14C],', 'edx']
cmp ['[ebp+var_14C],', '0']
jl ['short', 'loc_8B6']
jg ['short', 'loc_848']
cmp ['[ebp+var_150],', '0']
jbe ['short', 'loc_8B6']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?width@ios_base@std@@QBE_JXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_158],', 'eax']
mov ['[ebp+var_154],', 'edx']
mov ['eax,', '[ebp+var_154]']
cmp ['eax,', '[ebp+var_24]']
jl ['short', 'loc_8B6']
jg ['short', 'loc_888']
mov ['ecx,', '[ebp+var_158]']
cmp ['ecx,', '[ebp+var_28]']
jbe ['short', 'loc_8B6']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[eax+4]']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?width@ios_base@std@@QBE_JXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
sub ['eax,', '[ebp+var_28]']
sbb ['edx,', '[ebp+var_24]']
mov ['[ebp+var_160],', 'eax']
mov ['[ebp+var_15C],', 'edx']
jmp ['short', 'loc_8CA']
mov ['[ebp+var_160],', '0']
mov ['[ebp+var_15C],', '0']
mov ['ecx,', '[ebp+var_160]']
mov ['[ebp+var_38],', 'ecx']
mov ['edx,', '[ebp+var_15C]']
mov ['[ebp+var_34],', 'edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
lea ['ecx,', '[ebp+var_48]']
call ['??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z']
mov ['[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_48]']
call ['??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QBEPQ_Bool_struct@2@HXZ']
cmp ['eax,', '0FFFFFFFFh']
jnz ['short', 'loc_90A']
mov ['eax,', '[ebp+var_18]']
or ['eax,', '4']
mov ['[ebp+var_18],', 'eax']
jmp ['$LN13_0']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?flags@ios_base@std@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14C],', 'eax']
mov ['eax,', '[ebp+var_14C]']
and ['eax,', '1C0h']
cmp ['eax,', '40h']
jz ['loc_A2F']
jmp ['short', 'loc_958']
mov ['eax,', '[ebp+var_38]']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_34]']
sbb ['ecx,', '0']
mov ['[ebp+var_38],', 'eax']
mov ['[ebp+var_34],', 'ecx']
cmp ['[ebp+var_34],', '0']
jl ['loc_A2F']
jg ['short', 'loc_96E']
cmp ['[ebp+var_38],', '0']
jbe ['loc_A2F']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEDXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['byte', 'ptr', '[ebp+var_14C+3],', 'al']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_150],', 'eax']
mov ['esi,', 'esp']
movzx ['eax,', 'byte', 'ptr', '[ebp+var_14C+3]']
push ['eax']
mov ['ecx,', '[ebp+var_150]']
call ['dword', 'ptr', 'ds:__imp_?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QAEHD@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_154],', 'eax']
mov ['ecx,', '[ebp+var_154]']
mov ['[ebp+var_144],', 'ecx']
call ['?eof@?$char_traits@D@std@@SAHXZ']
mov ['[ebp+var_158],', 'eax']
mov ['edx,', '[ebp+var_158]']
mov ['[ebp+var_138],', 'edx']
lea ['eax,', '[ebp+var_144]']
push ['eax']
lea ['ecx,', '[ebp+var_138]']
push ['ecx']
call ['?eq_int_type@?$char_traits@D@std@@SA_NABH0@Z']
add ['esp,', '8']
mov ['byte', 'ptr', '[ebp+var_15C+3],', 'al']
movzx ['edx,', 'byte', 'ptr', '[ebp+var_15C+3]']
test ['edx,', 'edx']
jz ['short', 'loc_A2A']
mov ['eax,', '[ebp+var_18]']
or ['eax,', '4']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_A2F']
jmp ['loc_946']
cmp ['[ebp+var_18],', '0']
jnz ['short', 'loc_AA3']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_14C],', 'eax']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_24]']
push ['eax']
mov ['ecx,', '[ebp+var_28]']
push ['ecx']
mov ['edx,', '[ebp+Str]']
push ['edx']
mov ['ecx,', '[ebp+var_14C]']
call ['dword', 'ptr', 'ds:__imp_?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QAE_JPBD_J@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_154],', 'eax']
mov ['[ebp+var_150],', 'edx']
mov ['eax,', '[ebp+var_154]']
cmp ['eax,', '[ebp+var_28]']
jnz ['short', 'loc_A9A']
mov ['ecx,', '[ebp+var_150]']
cmp ['ecx,', '[ebp+var_24]']
jz ['short', 'loc_AA3']
mov ['eax,', '[ebp+var_18]']
or ['eax,', '4']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jnz ['loc_B98']
jmp ['short', 'loc_AC1']
mov ['eax,', '[ebp+var_38]']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_34]']
sbb ['ecx,', '0']
mov ['[ebp+var_38],', 'eax']
mov ['[ebp+var_34],', 'ecx']
cmp ['[ebp+var_34],', '0']
jl ['loc_B98']
jg ['short', 'loc_AD7']
cmp ['[ebp+var_38],', '0']
jbe ['loc_B98']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEDXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['byte', 'ptr', '[ebp+var_14C+3],', 'al']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_150],', 'eax']
mov ['esi,', 'esp']
movzx ['eax,', 'byte', 'ptr', '[ebp+var_14C+3]']
push ['eax']
mov ['ecx,', '[ebp+var_150]']
call ['dword', 'ptr', 'ds:__imp_?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QAEHD@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_154],', 'eax']
mov ['ecx,', '[ebp+var_154]']
mov ['[ebp+var_12C],', 'ecx']
call ['?eof@?$char_traits@D@std@@SAHXZ']
mov ['[ebp+var_158],', 'eax']
mov ['edx,', '[ebp+var_158]']
mov ['[ebp+var_120],', 'edx']
lea ['eax,', '[ebp+var_12C]']
push ['eax']
lea ['ecx,', '[ebp+var_120]']
push ['ecx']
call ['?eq_int_type@?$char_traits@D@std@@SA_NABH0@Z']
add ['esp,', '8']
mov ['byte', 'ptr', '[ebp+var_15C+3],', 'al']
movzx ['edx,', 'byte', 'ptr', '[ebp+var_15C+3]']
test ['edx,', 'edx']
jz ['short', 'loc_B93']
mov ['eax,', '[ebp+var_18]']
or ['eax,', '4']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_B98']
jmp ['loc_AAF']
mov ['esi,', 'esp']
push ['0']
push ['0']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?width@ios_base@std@@QAE_J_J@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_BE7']
endp
__catch$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z$0 proc near
mov ['esi,', 'esp']
push ['1']
push ['4']
mov ['eax,', '[ebp+8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+8]']
add ['edx,', '[ecx+4]']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['dword', 'ptr', '[ebp-4],', '0']
mov ['eax,', 'offset', '$LN13_0']
retn
mov ['[ebp+var_4],', '0']
mov ['esi,', 'esp']
push ['0']
mov ['eax,', '[ebp+var_18]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[edx+4]']
call ['dword', 'ptr', 'ds:__imp_?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_114],', 'eax']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_48]']
call ['??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
mov ['eax,', '[ebp+var_114]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN33']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '160h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN32']
dd ['offset', '$LN30_0']
assume ['cs:_text$x']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
__unwindfunclet$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z$2 proc near
lea ['ecx,', '[ebp-48h]']
jmp ['??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
endp
__ehhandler$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z	proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-164h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z']
jmp ['___CxxFrameHandler3']
align ['4']
assume ['cs:_xdata$x']
dd ['2', 'dup(0)']
dd ['offset', '__catch$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z$0']
dd ['offset', '__catchsym$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z$3']
dd ['offset', '__unwindfunclet$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z$2']
dd ['4', 'dup(0)']
dd ['offset', '__unwindtable$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z']
dd ['1']
dd ['offset', '__tryblocktable$??$?6U?$char_traits@D@std@@@std@@YAAAV?$basic_ostream@DU?$char_traits@D@std@@@0@AAV10@PBD@Z']
dd ['3', 'dup(0)']
dd ['1']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?length@?$char_traits@D@std@@SAIPBD@Z proc near
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
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['_strlen']
add ['esp,', '4']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?eq_int_type@?$char_traits@D@std@@SA_NABH0@Z proc near
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
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[eax]']
xor ['eax,', 'eax']
cmp ['edx,', '[ecx]']
setz ['al']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?eof@?$char_traits@D@std@@SAHXZ	proc near
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
or ['eax,', '0FFFFFFFFh']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0CCh']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_D8]']
mov ['ecx,', '33h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_14],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_14]']
call ['??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?good@ios_base@std@@QBE_NXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_E5D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jz ['short', 'loc_E5D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
mov ['ecx,', 'eax']
call ['dword', 'ptr', 'ds:__imp_?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAEAAV12@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '[ecx+4]']
mov ['esi,', 'esp']
mov ['ecx,', 'edx']
call ['dword', 'ptr', 'ds:__imp_?good@ios_base@std@@QBE_NXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_14]']
mov ['[ecx+4],', 'al']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D8h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text$x']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
__unwindfunclet$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z$0 proc near
mov ['ecx,', '[ebp-14h]']
jmp ['??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
endp
__ehhandler$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z	proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-0DCh]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z']
jmp ['___CxxFrameHandler3']
align ['4']
assume ['cs:_xdata$x']
dd ['offset', '__unwindfunclet$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z$0']
dd ['offset', '__unwindtable$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z']
dd ['5', 'dup(0)']
dd ['1']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0CCh']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_D8]']
mov ['ecx,', '33h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_14],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?uncaught_exception@std@@YA_NXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jnz ['short', 'loc_F73']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[eax]']
call ['dword', 'ptr', 'ds:__imp_?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAEXXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_14]']
call ['??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D8h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text$x']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
__unwindfunclet$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ$0	proc near
mov ['ecx,', '[ebp-14h]']
jmp ['??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
endp
__ehhandler$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-0DCh]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
jmp ['___CxxFrameHandler3']
align ['4']
assume ['cs:_xdata$x']
dd ['offset', '__unwindfunclet$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ$0']
dd ['offset', '__unwindtable$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ']
dd ['5', 'dup(0)']
dd ['1']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QBEPQ_Bool_struct@2@HXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0CCh']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_CC]']
mov ['ecx,', '33h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['[ebp+var_8],', 'ecx']
mov ['eax,', '[ebp+var_8]']
movzx ['eax,', 'byte', 'ptr', '[eax+4]']
neg ['eax']
sbb ['eax,', 'eax']
neg ['eax']
sub ['eax,', '1']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@AAV12@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0D0h']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_D0]']
mov ['ecx,', '34h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['[ebp+var_8],', 'ecx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax],', 'ecx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
add ['ecx,', '[edx+4]']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jz ['short', 'loc_10C1']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
add ['ecx,', '[edx+4]']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_D0],', 'eax']
mov ['ecx,', '[ebp+var_D0]']
mov ['edx,', '[ecx]']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_D0]']
mov ['eax,', '[edx+4]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0D0h']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_D0]']
mov ['ecx,', '34h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['[ebp+var_8],', 'ecx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
add ['ecx,', '[edx+4]']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jz ['short', 'loc_1161']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
add ['ecx,', '[edx+4]']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_D0],', 'eax']
mov ['ecx,', '[ebp+var_D0]']
mov ['edx,', '[ecx]']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_D0]']
mov ['eax,', '[edx+8]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['_u_releaseDefaultConverter_56:near']
extrn ['_ucnv_fromUnicode_56:near']
extrn ['__imp_?getBuffer@UnicodeString@icu_56@@QBEPB_WXZ:near']
extrn ['_u_getDefaultConverter_56:near']
extrn ['__imp_?length@UnicodeString@icu_56@@QBEHXZ:near']
extrn ['___security_cookie:near']
extrn ['@__security_check_cookie@4:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__imp_?append@UnicodeString@icu_56@@QAEAAV12@_W@Z:near']
extrn ['__imp_?truncate@UnicodeString@icu_56@@QAECH@Z:near']
extrn ['__imp_?putback@?$basic_istream@DU?$char_traits@D@std@@@std@@QAEAAV12@D@Z:near']
extrn ['_u_isWhitespace_56:near']
extrn ['_ucnv_toUnicode_56:near']
extrn ['__imp_?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z:near']
extrn ['__imp_?eof@ios_base@std@@QBE_NXZ:near']
extrn ['__imp_?get@?$basic_istream@DU?$char_traits@D@std@@@std@@QAEHXZ:near']
extrn ['__imp_?fail@ios_base@std@@QBE_NXZ:near']
extrn ['__imp_?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QAEXH_N@Z:near']
extrn ['__imp_?width@ios_base@std@@QAE_J_J@Z:near']
extrn ['__imp_?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QAE_JPBD_J@Z:near']
extrn ['__imp_?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QAEHD@Z:near']
extrn ['__imp_?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ:near']
extrn ['__imp_?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEDXZ:near']
extrn ['__imp_?flags@ios_base@std@@QBEHXZ:near']
extrn ['__imp_?width@ios_base@std@@QBE_JXZ:near']
extrn ['___CxxFrameHandler3:near']
extrn ['_strlen:near']
extrn ['__imp_?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAEAAV12@XZ:near']
extrn ['__imp_?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QBEPAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ:near']
extrn ['__imp_?good@ios_base@std@@QBE_NXZ:near']
extrn ['__imp_?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QAEXXZ:near']
extrn ['__imp_?uncaught_exception@std@@YA_NXZ:near']
end
