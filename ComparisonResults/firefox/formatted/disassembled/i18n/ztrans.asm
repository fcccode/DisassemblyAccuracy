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
align ['4']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_open_56	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0DCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_DC]']
mov ['ecx,', '37h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['esi,', 'esp']
push ['18h']
call ['dword', 'ptr', 'ds:__imp_??2UMemory@icu_56@@SAPAXI@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_C8],', 'eax']
cmp ['[ebp+var_C8],', '0']
jz ['short', 'loc_D9']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
sub ['esp,', '8']
fld ['[ebp+arg_0]']
fstp ['[esp+0F8h+var_F8]']
mov ['ecx,', '[ebp+var_C8]']
call ['??0TimeZoneTransition@icu_56@@QAE@NABVTimeZoneRule@1@0@Z']
mov ['[ebp+var_DC],', 'eax']
jmp ['short', 'loc_E3']
mov ['[ebp+var_DC],', '0']
mov ['edx,', '[ebp+var_DC]']
mov ['[ebp+var_D4],', 'edx']
mov ['eax,', '[ebp+var_D4]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0DCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_openEmpty_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0DCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_DC]']
mov ['ecx,', '37h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['esi,', 'esp']
push ['18h']
call ['dword', 'ptr', 'ds:__imp_??2UMemory@icu_56@@SAPAXI@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_C8],', 'eax']
cmp ['[ebp+var_C8],', '0']
jz ['short', 'loc_160']
mov ['ecx,', '[ebp+var_C8]']
call ['??0TimeZoneTransition@icu_56@@QAE@XZ']
mov ['[ebp+var_DC],', 'eax']
jmp ['short', 'loc_16A']
mov ['[ebp+var_DC],', '0']
mov ['eax,', '[ebp+var_DC]']
mov ['[ebp+var_D4],', 'eax']
mov ['eax,', '[ebp+var_D4]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0DCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_close_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0DCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_DC]']
mov ['ecx,', '37h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_C8],', 'eax']
mov ['ecx,', '[ebp+var_C8]']
mov ['[ebp+var_D4],', 'ecx']
cmp ['[ebp+var_D4],', '0']
jz ['short', 'loc_1F1']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+var_D4]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_D4]']
mov ['edx,', '[eax]']
call ['edx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_DC],', 'eax']
jmp ['short', 'loc_1FB']
mov ['[ebp+var_DC],', '0']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0DCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_clone_56 proc near
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
mov ['ecx,', '[ebp+arg_0]']
call ['?clone@TimeZoneTransition@icu_56@@QBEPAV12@XZ']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_equals_56 proc near
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
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['??8TimeZoneTransition@icu_56@@QBECABV01@@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_getTime_56 proc	near
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
mov ['ecx,', '[ebp+arg_0]']
call ['?getTime@TimeZoneTransition@icu_56@@QBENXZ']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_setTime_56 proc	near
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
sub ['esp,', '8']
fld ['[ebp+arg_4]']
fstp ['[esp+0D4h+var_D4]']
mov ['ecx,', '[ebp+arg_0]']
call ['?setTime@TimeZoneTransition@icu_56@@QAEXN@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_getFrom_56 proc	near
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
mov ['ecx,', '[eax]']
call ['?getFrom@TimeZoneTransition@icu_56@@QBEPBVTimeZoneRule@2@XZ']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_setFrom_56 proc	near
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
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?setFrom@TimeZoneTransition@icu_56@@QAEXABVTimeZoneRule@2@@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_adoptFrom_56 proc near
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
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?adoptFrom@TimeZoneTransition@icu_56@@QAEXPAVTimeZoneRule@2@@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_getTo_56 proc near
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
mov ['ecx,', '[ebp+arg_0]']
call ['?getTo@TimeZoneTransition@icu_56@@QBEPBVTimeZoneRule@2@XZ']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_setTo_56 proc near
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
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?setTo@TimeZoneTransition@icu_56@@QAEXABVTimeZoneRule@2@@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_adoptTo_56 proc	near
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
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?adoptTo@TimeZoneTransition@icu_56@@QAEXPAVTimeZoneRule@2@@Z']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_getStaticClassID_56 proc near
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
call ['?getStaticClassID@TimeZoneTransition@icu_56@@SAPAXXZ']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ztrans_getDynamicClassID_56 proc near
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
mov ['ecx,', '[ebp+arg_0]']
call ['?getDynamicClassID@TimeZoneTransition@icu_56@@UBEPAXXZ']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['??0TimeZoneTransition@icu_56@@QAE@NABVTimeZoneRule@1@0@Z:near']
extrn ['__imp_??2UMemory@icu_56@@SAPAXI@Z:near']
extrn ['__fltused:near']
extrn ['__RTC_CheckEsp:near']
extrn ['??0TimeZoneTransition@icu_56@@QAE@XZ:near']
extrn ['?clone@TimeZoneTransition@icu_56@@QBEPAV12@XZ:near']
extrn ['??8TimeZoneTransition@icu_56@@QBECABV01@@Z:near']
extrn ['?getTime@TimeZoneTransition@icu_56@@QBENXZ:near']
extrn ['?setTime@TimeZoneTransition@icu_56@@QAEXN@Z:near']
extrn ['?getFrom@TimeZoneTransition@icu_56@@QBEPBVTimeZoneRule@2@XZ:near']
extrn ['?setFrom@TimeZoneTransition@icu_56@@QAEXABVTimeZoneRule@2@@Z:near']
extrn ['?adoptFrom@TimeZoneTransition@icu_56@@QAEXPAVTimeZoneRule@2@@Z:near']
extrn ['?getTo@TimeZoneTransition@icu_56@@QBEPBVTimeZoneRule@2@XZ:near']
extrn ['?setTo@TimeZoneTransition@icu_56@@QAEXABVTimeZoneRule@2@@Z:near']
extrn ['?adoptTo@TimeZoneTransition@icu_56@@QAEXPAVTimeZoneRule@2@@Z:near']
extrn ['?getStaticClassID@TimeZoneTransition@icu_56@@SAPAXXZ:near']
extrn ['?getDynamicClassID@TimeZoneTransition@icu_56@@UBEPAXXZ:near']
end