endp
??0IcuToolErrorCode@icu_56@@QAE@PBD@Z proc near
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
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_8]']
call ['dword', 'ptr', 'ds:__imp_??0ErrorCode@icu_56@@QAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7IcuToolErrorCode@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+8],', 'ecx']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
assume ['cs:_rdata']
dd ['offset', '??_R4IcuToolErrorCode@icu_56@@6B@']
public ['??_7IcuToolErrorCode@icu_56@@6B@']
dd ['offset', '?handleFailure@IcuToolErrorCode@icu_56@@MBEXXZ']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_rdata$r']
public ['??_R4IcuToolErrorCode@icu_56@@6B@']
dd ['offset', '??_R0?AVIcuToolErrorCode@icu_56@@@8']
dd ['offset', '??_R3IcuToolErrorCode@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVIcuToolErrorCode@icu_56@@@8']
dd ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3IcuToolErrorCode@icu_56@@8']
dd ['3']
dd ['offset', '??_R2IcuToolErrorCode@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2IcuToolErrorCode@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@IcuToolErrorCode@icu_56@@8']
dd ['2,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '?_Rank@?$_Arithmetic_traits@N@std@@2HB']
dd ['offset', '??_R3IcuToolErrorCode@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@ErrorCode@icu_56@@8']
dd ['1,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '?_Rank@?$_Arithmetic_traits@N@std@@2HB']
assume ['cs:_data']
public ['??_R0?AVErrorCode@icu_56@@@8']
dd ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3ErrorCode@icu_56@@8']
dd ['2']
dd ['offset', '??_R2ErrorCode@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2ErrorCode@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['10h']
assume ['cs:_rdata$r']
public ['??_R13?0A@EA@UMemory@icu_56@@8']
align ['8']
dd ['4,', '0FFFFFFFFh,', '0']
dd ['offset', '?_Rank@?$_Arithmetic_traits@N@std@@2HB']
dd ['offset', '??_R3UMemory@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVUMemory@icu_56@@@8']
dd ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3UMemory@icu_56@@8']
dd ['1']
dd ['offset', '??_R2UMemory@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2UMemory@icu_56@@8']
db ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@UMemory@icu_56@@8']
align ['10h']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '?_Rank@?$_Arithmetic_traits@N@std@@2HB']
dd ['offset', '??_R3UMemory@icu_56@@8']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??0IcuToolErrorCode@icu_56@@QAE@ABV01@@Z proc near
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
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
call ['dword', 'ptr', 'ds:__imp_??0ErrorCode@icu_56@@QAE@ABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7IcuToolErrorCode@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
mov ['[eax+8],', 'edx']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??4IcuToolErrorCode@icu_56@@QAEAAV01@ABV01@@Z proc near
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
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
call ['dword', 'ptr', 'ds:__imp_??4ErrorCode@icu_56@@QAEAAV01@ABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
mov ['[eax+8],', 'edx']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??_GIcuToolErrorCode@icu_56@@UAEPAXI@Z proc near
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
mov ['ecx,', '[ebp+var_8]']
call ['??1IcuToolErrorCode@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_3C1']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_8]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp_??3UMemory@icu_56@@SAXPAX@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??_EIcuToolErrorCode@icu_56@@UAEPAXI@Z proc near
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
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '2']
jz ['short', 'loc_447']
push ['offset', '??1IcuToolErrorCode@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax-4]']
push ['ecx']
push ['0Ch']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??_M@YGXPAXIHP6EX0@Z@Z']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_43F']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '4']
mov ['esi,', 'esp']
push ['eax']
call ['dword', 'ptr', 'ds:__imp_??_VUMemory@icu_56@@SAXPAX@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '4']
jmp ['short', 'loc_470']
mov ['ecx,', '[ebp+var_8]']
call ['??1IcuToolErrorCode@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_46D']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_8]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp_??3UMemory@icu_56@@SAXPAX@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
??1IcuToolErrorCode@icu_56@@UAE@XZ proc	near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1IcuToolErrorCode@icu_56@@UAE@XZ']
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
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7IcuToolErrorCode@icu_56@@6B@']
mov ['[ebp+var_4],', '0']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_14]']
call ['dword', 'ptr', 'ds:__imp_?isFailure@ErrorCode@icu_56@@QBECXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movsx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_4FB']
mov ['ecx,', '[ebp+var_14]']
call ['?handleFailure@IcuToolErrorCode@icu_56@@MBEXXZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_14]']
call ['dword', 'ptr', 'ds:__imp_??1ErrorCode@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
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
__unwindfunclet$??1IcuToolErrorCode@icu_56@@UAE@XZ$0 proc near
mov ['esi,', 'esp']
mov ['ecx,', '[ebp-14h]']
call ['dword', 'ptr', 'ds:__imp_??1ErrorCode@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
jmp ['__RTC_CheckEsp']
endp
__ehhandler$??1IcuToolErrorCode@icu_56@@UAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-0DCh]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1IcuToolErrorCode@icu_56@@UAE@XZ']
jmp ['___CxxFrameHandler3']
assume ['cs:_xdata$x']
dd ['offset', '__unwindfunclet$??1IcuToolErrorCode@icu_56@@UAE@XZ$0']
dd ['offset', '__unwindtable$??1IcuToolErrorCode@icu_56@@UAE@XZ']
dd ['5', 'dup(0)']
dd ['1']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?handleFailure@IcuToolErrorCode@icu_56@@MBEXXZ proc near
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
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_8]']
call ['dword', 'ptr', 'ds:__imp_?errorName@ErrorCode@icu_56@@QBEPBDXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
push ['eax']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
push ['ecx']
push ['offset', '??_C@_0BB@IABMEDBC@error?5at?5?$CFs?3?5?$CFs?6?$AA@']
mov ['edi,', 'esp']
call ['dword', 'ptr', 'ds:__imp____iob_func']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
add ['eax,', '40h']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__fprintf']
add ['esp,', '10h']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__exit']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_rdata']
public ['??_C@_0BB@IABMEDBC@error?5at?5?$CFs?3?5?$CFs?6?$AA@']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getCurrentYear	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0D8h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_D8]']
mov ['ecx,', '36h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['[ebp+var_8],', '0']
mov ['[ebp+var_14],', '0']
cmp ['ds:_currentYear,', '0FFFFFFFFh']
jnz ['short', 'loc_6C2']
lea ['eax,', '[ebp+var_8]']
push ['eax']
push ['0']
push ['0']
push ['0FFFFFFFFh']
push ['0']
call ['_ucal_open_56']
add ['esp,', '14h']
mov ['[ebp+var_14],', 'eax']
lea ['eax,', '[ebp+var_8]']
push ['eax']
call ['_ucal_getNow_56']
sub ['esp,', '8']
fstp ['[esp+0F0h+var_F0]']
mov ['ecx,', '[ebp+var_14]']
push ['ecx']
call ['_ucal_setMillis_56']
add ['esp,', '10h']
lea ['eax,', '[ebp+var_8]']
push ['eax']
push ['1']
mov ['ecx,', '[ebp+var_14]']
push ['ecx']
call ['_ucal_get_56']
add ['esp,', '0Ch']
mov ['ds:_currentYear,', 'eax']
mov ['eax,', '[ebp+var_14]']
push ['eax']
call ['_ucal_close_56']
add ['esp,', '4']
mov ['eax,', 'ds:_currentYear']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN6']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D8h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN5']
dd ['offset', '$LN4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_getLongPathname proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0D8h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_D8]']
mov ['ecx,', '36h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['esi,', 'esp']
push ['offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A']
mov ['eax,', '[ebp+lpFileName]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__FindFirstFileA@8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+hFindFile],', 'eax']
cmp ['[ebp+hFindFile],', '0FFFFFFFFh']
jz ['loc_7F4']
movsx ['eax,', 'ds:?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cAlternateFileName']
test ['eax,', 'eax']
jz ['loc_7E1']
mov ['eax,', '[ebp+lpFileName]']
push ['eax']
call ['_findBasename']
add ['esp,', '4']
mov ['[ebp+var_14],', 'eax']
mov ['eax,', '[ebp+var_14]']
cmp ['eax,', '[ebp+lpFileName]']
jz ['short', 'loc_7DA']
push ['1']
push ['offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
push ['offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
call ['_strlen']
add ['esp,', '4']
add ['eax,', '1']
mov ['esi,', 'esp']
push ['eax']
push ['offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
mov ['eax,', '[ebp+var_14]']
sub ['eax,', '[ebp+lpFileName]']
add ['eax,', 'offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__memmove']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['1']
mov ['eax,', '[ebp+lpFileName]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_14]']
sub ['ecx,', '[ebp+lpFileName]']
push ['ecx']
mov ['edx,', '[ebp+lpFileName]']
push ['edx']
push ['offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['[ebp+lpFileName],', 'offset', '?info@?1??getLongPathname@@9@4U_WIN32_FIND_DATAA@@A.cFileName']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+hFindFile]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__FindClose@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+lpFileName]']
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
assume ['cs:_bss']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_findDirname	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0F0h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_F0]']
mov ['ecx,', '3Ch']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['?U_FAILURE@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['edx,', 'al']
test ['edx,', 'edx']
jz ['short', 'loc_986']
xor ['eax,', 'eax']
jmp ['loc_A68']
mov ['[ebp+Source],', '0']
mov ['[ebp+Count],', '0']
mov ['esi,', 'esp']
push ['5Ch']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strrchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_20],', 'eax']
mov ['esi,', 'esp']
push ['2Fh']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strrchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_2C],', 'eax']
cmp ['[ebp+var_2C],', '0']
jz ['short', 'loc_9E4']
cmp ['[ebp+var_20],', '0']
jz ['short', 'loc_9DE']
mov ['eax,', '[ebp+var_20]']
cmp ['eax,', '[ebp+var_2C]']
jnb ['short', 'loc_9E4']
mov ['eax,', '[ebp+var_2C]']
mov ['[ebp+var_20],', 'eax']
cmp ['[ebp+var_20],', '0']
jnz ['short', 'loc_9FA']
mov ['[ebp+Source],', 'offset', '??_C@_00CNPNBAHC@?$AA@']
mov ['[ebp+Count],', '0']
jmp ['short', 'loc_A16']
mov ['eax,', '[ebp+Str]']
mov ['[ebp+Source],', 'eax']
mov ['eax,', '[ebp+var_20]']
sub ['eax,', '[ebp+Str]']
mov ['[ebp+Count],', 'eax']
cmp ['[ebp+Count],', '1']
jge ['short', 'loc_A16']
mov ['[ebp+Count],', '1']
mov ['eax,', '[ebp+Count]']
add ['eax,', '1']
cmp ['eax,', '[ebp+arg_8]']
jg ['short', 'loc_A5D']
push ['1']
mov ['eax,', '[ebp+Source]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+Count]']
push ['ecx']
mov ['edx,', '[ebp+Source]']
push ['edx']
mov ['eax,', '[ebp+Dest]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strncpy']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+Dest]']
add ['eax,', '[ebp+Count]']
mov ['byte', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+Dest]']
jmp ['short', 'loc_A68']
jmp ['short', 'loc_A68']
mov ['eax,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[eax],', '0Fh']
xor ['eax,', 'eax']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0F0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_rdata']
public ['??_C@_00CNPNBAHC@?$AA@']
align ['10h']
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
_findBasename	proc near		
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
mov ['esi,', 'esp']
push ['5Ch']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strrchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_8],', 'eax']
cmp ['[ebp+var_8],', '0']
jnz ['short', 'loc_B06']
mov ['esi,', 'esp']
push ['2Fh']
mov ['eax,', '[ebp+Str]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__strrchr']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_8],', 'eax']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_B16']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
jmp ['short', 'loc_B19']
jmp ['short', 'loc_B19']
mov ['eax,', '[ebp+Str]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_uprv_mkdir	proc near
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
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp___mkdir']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_8],', 'eax']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_B91']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp___errno']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['dword', 'ptr', '[eax],', '11h']
jz ['short', 'loc_B91']
mov ['eax,', '[ebp+arg_4]']
mov ['dword', 'ptr', '[eax],', '4']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_uprv_fileExists proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0FCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_FC]']
mov ['ecx,', '3Fh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
lea ['eax,', '[ebp+var_38]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_stat']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_BEA']
mov ['al,', '1']
jmp ['short', 'loc_BEC']
jmp ['short', 'loc_BEC']
xor ['al,', 'al']
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
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '0FCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
dd ['offset', '$LN6_0']
dd ['offset', '$LN5_0']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_stat		proc near		
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
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp___stat64i32']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utm_open	proc near
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
mov ['eax,', '[ebp+arg_8]']
cmp ['eax,', '[ebp+arg_4]']
jge ['short', 'loc_CB4']
mov ['eax,', '[ebp+arg_4]']
mov ['[ebp+arg_8],', 'eax']
mov ['eax,', '[ebp+arg_4]']
imul ['eax,', '[ebp+arg_C]']
add ['eax,', '60h']
push ['eax']
call ['_uprv_malloc_56']
add ['esp,', '4']
mov ['[ebp+Dest],', 'eax']
cmp ['[ebp+Dest],', '0']
jnz ['short', 'loc_D0F']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+Source]']
push ['eax']
push ['offset', '??_C@_0BL@HEDJGADP@error?3?5?$CFs?5?9?5out?5of?5memory?6?$AA@']
mov ['edi,', 'esp']
call ['dword', 'ptr', 'ds:__imp____iob_func']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
add ['eax,', '40h']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__fprintf']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
push ['7']
call ['dword', 'ptr', 'ds:__imp__exit']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+Dest]']
add ['eax,', '58h']
mov ['ecx,', '[ebp+Dest]']
mov ['[ecx+50h],', 'eax']
mov ['eax,', '[ebp+Source]']
push ['eax']
mov ['ecx,', '[ebp+Dest]']
push ['ecx']
call ['_strcpy']
add ['esp,', '8']
mov ['eax,', '[ebp+Dest]']
mov ['ecx,', '[ebp+arg_4]']
mov ['[eax+40h],', 'ecx']
mov ['eax,', '[ebp+Dest]']
mov ['ecx,', '[ebp+arg_8]']
mov ['[eax+44h],', 'ecx']
mov ['eax,', '[ebp+Dest]']
mov ['ecx,', '[ebp+arg_C]']
mov ['[eax+48h],', 'ecx']
mov ['eax,', '[ebp+Dest]']
mov ['dword', 'ptr', '[eax+4Ch],', '0']
mov ['eax,', '[ebp+Dest]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_rdata']
public ['??_C@_0BL@HEDJGADP@error?3?5?$CFs?5?9?5out?5of?5memory?6?$AA@']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utm_close	proc near
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
jz ['short', 'loc_DD1']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '58h']
mov ['ecx,', '[ebp+arg_0]']
cmp ['[ecx+50h],', 'eax']
jz ['short', 'loc_DC5']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+50h]']
push ['ecx']
call ['_uprv_free_56']
add ['esp,', '4']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_uprv_free_56']
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
_utm_getStart	proc near
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
mov ['eax,', '[eax+50h]']
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
_utm_countItems	proc near
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
mov ['eax,', '[eax+4Ch]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utm_alloc	proc near
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
mov ['[ebp+Dst],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4Ch]']
mov ['[ebp+var_14],', 'ecx']
mov ['eax,', '[ebp+var_14]']
add ['eax,', '1']
mov ['[ebp+var_20],', 'eax']
mov ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['?utm_hasCapacity@@YACPAUUToolMemory@@H@Z']
add ['esp,', '8']
movsx ['edx,', 'al']
test ['edx,', 'edx']
jz ['short', 'loc_EBF']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_14]']
imul ['ecx,', '[eax+48h]']
mov ['edx,', '[ebp+arg_0]']
add ['ecx,', '[edx+50h]']
mov ['[ebp+Dst],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_20]']
mov ['[eax+4Ch],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+48h]']
push ['ecx']
push ['0']
mov ['edx,', '[ebp+Dst]']
push ['edx']
call ['_memset']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+Dst]']
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
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
?utm_hasCapacity@@YACPAUUToolMemory@@H@Z proc near 
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
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+40h]']
cmp ['ecx,', '[ebp+arg_4]']
jge ['loc_106F']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+44h]']
cmp ['ecx,', '[ebp+arg_4]']
jge ['short', 'loc_F56']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+44h]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
push ['offset', '??_C@_0DL@CHCGDJBB@error?3?5?$CFs?5?9?5trying?5to?5use?5more?5t@']
mov ['edi,', 'esp']
call ['dword', 'ptr', 'ds:__imp____iob_func']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
add ['eax,', '40h']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__fprintf']
add ['esp,', '10h']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
push ['7']
call ['dword', 'ptr', 'ds:__imp__exit']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+40h]']
shl ['ecx,', '1']
cmp ['[ebp+arg_4],', 'ecx']
jl ['short', 'loc_F6B']
mov ['eax,', '[ebp+arg_4]']
mov ['[ebp+var_8],', 'eax']
jmp ['short', 'loc_F97']
mov ['eax,', '[ebp+arg_0]']
mov ['eax,', '[eax+44h]']
cdq
mov ['ecx,', '3']
idiv ['ecx']
mov ['edx,', '[ebp+arg_0]']
cmp ['[edx+40h],', 'eax']
jg ['short', 'loc_F8E']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+40h]']
shl ['ecx,', '1']
mov ['[ebp+var_8],', 'ecx']
jmp ['short', 'loc_F97']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+44h]']
mov ['[ebp+var_8],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '58h']
mov ['ecx,', '[ebp+arg_0]']
cmp ['[ecx+50h],', 'eax']
jnz ['short', 'loc_FFE']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_8]']
imul ['ecx,', '[eax+48h]']
push ['ecx']
call ['_uprv_malloc_56']
add ['esp,', '4']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+50h],', 'eax']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+50h],', '0']
jz ['short', 'loc_FFC']
push ['1']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '58h']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ecx+4Ch]']
imul ['eax,', '[edx+48h]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '58h']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+50h]']
push ['eax']
call ['_memcpy']
add ['esp,', '0Ch']
jmp ['short', 'loc_101E']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_8]']
imul ['ecx,', '[eax+48h]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+50h]']
push ['eax']
call ['_uprv_realloc_56']
add ['esp,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+50h],', 'eax']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+50h],', '0']
jnz ['short', 'loc_1066']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
push ['offset', '??_C@_0BL@HEDJGADP@error?3?5?$CFs?5?9?5out?5of?5memory?6?$AA@']
mov ['edi,', 'esp']
call ['dword', 'ptr', 'ds:__imp____iob_func']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
add ['eax,', '40h']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__fprintf']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
push ['7']
call ['dword', 'ptr', 'ds:__imp__exit']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax+40h],', 'ecx']
mov ['al,', '1']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0CCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_rdata']
public ['??_C@_0DL@CHCGDJBB@error?3?5?$CFs?5?9?5trying?5to?5use?5more?5t@']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utm_allocN	proc near
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
mov ['[ebp+Dst],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4Ch]']
mov ['[ebp+var_14],', 'ecx']
mov ['eax,', '[ebp+var_14]']
add ['eax,', '[ebp+arg_4]']
mov ['[ebp+var_20],', 'eax']
mov ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['?utm_hasCapacity@@YACPAUUToolMemory@@H@Z']
add ['esp,', '8']
movsx ['edx,', 'al']
test ['edx,', 'edx']
jz ['short', 'loc_1147']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_14]']
imul ['ecx,', '[eax+48h]']
mov ['edx,', '[ebp+arg_0]']
add ['ecx,', '[edx+50h]']
mov ['[ebp+Dst],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_20]']
mov ['[eax+4Ch],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
imul ['ecx,', '[eax+48h]']
push ['ecx']
push ['0']
mov ['edx,', '[ebp+Dst]']
push ['edx']
call ['_memset']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+Dst]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0E4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
extrn ['__imp_??0ErrorCode@icu_56@@QAE@XZ:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['??_7type_info@@6B@:near']
extrn ['__imp_??0ErrorCode@icu_56@@QAE@ABV01@@Z:near']
extrn ['__imp_??4ErrorCode@icu_56@@QAEAAV01@ABV01@@Z:near']
extrn ['__imp_??3UMemory@icu_56@@SAXPAX@Z:near']
extrn ['__imp_??_VUMemory@icu_56@@SAXPAX@Z:near']
extrn ['??_M@YGXPAXIHP6EX0@Z@Z:near']
extrn ['__imp_??1ErrorCode@icu_56@@UAE@XZ:near']
extrn ['__imp_?isFailure@ErrorCode@icu_56@@QBECXZ:near']
extrn ['___security_cookie:near']
extrn ['___CxxFrameHandler3:near']
extrn ['@__security_check_cookie@4:near']
extrn ['__imp__exit:near']
extrn ['__imp__fprintf:near']
extrn ['__imp____iob_func:near']
extrn ['__imp_?errorName@ErrorCode@icu_56@@QBEPBDXZ:near']
extrn ['_ucal_close_56:near']
extrn ['_ucal_get_56:near']
extrn ['_ucal_setMillis_56:near']
extrn ['_ucal_getNow_56:near']
extrn ['_ucal_open_56:near']
extrn ['__fltused:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['__imp__FindClose@4:near']
extrn ['_memcpy:near']
extrn ['__imp__memmove:near']
extrn ['_strlen:near']
extrn ['_uprv_checkValidMemory:near']
extrn ['__imp__FindFirstFileA@8:near']
extrn ['__imp__strncpy:near']
extrn ['__imp__strrchr:near']
extrn ['__imp___errno:near']
extrn ['__imp___mkdir:near']
extrn ['__imp___stat64i32:near']
extrn ['_strcpy:near']
extrn ['_uprv_malloc_56:near']
extrn ['_uprv_free_56:near']
extrn ['_memset:near']
extrn ['_uprv_realloc_56:near']
end
