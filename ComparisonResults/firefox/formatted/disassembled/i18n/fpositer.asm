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
??0FieldPosition@icu_56@@QAE@XZ	proc near
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
call ['dword', 'ptr', 'ds:__imp_??0UObject@icu_56@@QAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPosition@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+0Ch],', '0']
mov ['eax,', '[ebp+var_8]']
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
dd ['offset', '??_R4FieldPosition@icu_56@@6B@']
public ['??_7FieldPosition@icu_56@@6B@']
dd ['offset', '?getDynamicClassID@FieldPosition@icu_56@@UBEPAXXZ']
assume ['cs:_rdata$r']
public ['??_R4FieldPosition@icu_56@@6B@']
dd ['offset', '??_R0?AVFieldPosition@icu_56@@@8']
dd ['offset', '??_R3FieldPosition@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVFieldPosition@icu_56@@@8']
align ['10h']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3FieldPosition@icu_56@@8']
dd ['3']
dd ['offset', '??_R2FieldPosition@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2FieldPosition@icu_56@@8']
dd ['offset', '??_R1A@?0A@EA@UObject@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@FieldPosition@icu_56@@8']
dd ['2,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '??3@YAXPAX@Z']
dd ['offset', '??_R3FieldPosition@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@UObject@icu_56@@8']
dd ['1,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '??3@YAXPAX@Z']
dd ['offset', '??_R3UObject@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVUObject@icu_56@@@8']
dd ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3UObject@icu_56@@8']
dd ['2']
dd ['offset', '??_R2UObject@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2UObject@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['10h']
assume ['cs:_rdata$r']
public ['??_R13?0A@EA@UMemory@icu_56@@8']
align ['8']
dd ['4,', '0FFFFFFFFh,', '0']
dd ['offset', '??3@YAXPAX@Z']
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
dd ['offset', '??3@YAXPAX@Z']
dd ['offset', '??_R3UMemory@icu_56@@8']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??0FieldPosition@icu_56@@QAE@H@Z proc near
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
call ['dword', 'ptr', 'ds:__imp_??0UObject@icu_56@@QAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPosition@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+4],', 'ecx']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+0Ch],', '0']
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
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??0FieldPosition@icu_56@@QAE@ABV01@@Z proc near
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
call ['dword', 'ptr', 'ds:__imp_??0UObject@icu_56@@QAE@ABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPosition@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+4]']
mov ['[eax+4],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
mov ['[eax+8],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
mov ['[eax+0Ch],', 'edx']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?getField@FieldPosition@icu_56@@QBEHXZ proc near
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
mov ['eax,', '[eax+4]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?getBeginIndex@FieldPosition@icu_56@@QBEHXZ proc near
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
mov ['eax,', '[eax+8]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?getEndIndex@FieldPosition@icu_56@@QBEHXZ proc near
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
mov ['eax,', '[eax+0Ch]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?setField@FieldPosition@icu_56@@QAEXH@Z	proc near
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
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+4],', 'ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?setBeginIndex@FieldPosition@icu_56@@QAEXH@Z proc near
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
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+8],', 'ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?setEndIndex@FieldPosition@icu_56@@QAEXH@Z proc	near
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
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+0Ch],', 'ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??_GFieldPosition@icu_56@@UAEPAXI@Z proc near
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
call ['??1FieldPosition@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_4A5']
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
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??_EFieldPosition@icu_56@@UAEPAXI@Z proc near
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
jz ['short', 'loc_52B']
push ['offset', '??1FieldPosition@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax-4]']
push ['ecx']
push ['10h']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??_M@YGXPAXIHP6EX0@Z@Z']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_523']
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
jmp ['short', 'loc_554']
mov ['ecx,', '[ebp+var_8]']
call ['??1FieldPosition@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_551']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??4FieldPosition@icu_56@@QAEAAV01@ABV01@@Z proc	near
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
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+4]']
mov ['[eax+4],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
mov ['[eax+0Ch],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
mov ['[eax+8],', 'edx']
mov ['eax,', '[ebp+var_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??8FieldPosition@icu_56@@QBECABV01@@Z proc near
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
mov ['edx,', '[eax+4]']
cmp ['edx,', '[ecx+4]']
jnz ['short', 'loc_616']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[eax+0Ch]']
cmp ['edx,', '[ecx+0Ch]']
jnz ['short', 'loc_616']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[eax+8]']
cmp ['edx,', '[ecx+8]']
jnz ['short', 'loc_616']
mov ['[ebp+var_CD],', '1']
jmp ['short', 'loc_61D']
mov ['[ebp+var_CD],', '0']
mov ['al,', '[ebp+var_CD]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??9FieldPosition@icu_56@@QBECABV01@@Z proc near
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
push ['eax']
mov ['ecx,', '[ebp+var_8]']
call ['??8FieldPosition@icu_56@@QBECABV01@@Z']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
setz ['al']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??9FieldPositionIterator@icu_56@@QBECABV01@@Z proc near
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
push ['eax']
mov ['ecx,', '[ebp+var_8]']
call ['??8FieldPositionIterator@icu_56@@QBECABV01@@Z']
movsx ['ecx,', 'al']
test ['ecx,', 'ecx']
setz ['al']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??4FieldPositionIterator@icu_56@@QAEAAV01@ABV01@@Z proc	near
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
call ['dword', 'ptr', 'ds:__imp_??4UObject@icu_56@@QAEAAV01@ABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+4]']
mov ['[eax+4],', 'edx']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??_GFieldPositionIterator@icu_56@@UAEPAXI@Z proc near
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
call ['??1FieldPositionIterator@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_781']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??_EFieldPositionIterator@icu_56@@UAEPAXI@Z proc near
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
jz ['short', 'loc_807']
push ['offset', '??1FieldPositionIterator@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax-4]']
push ['ecx']
push ['0Ch']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??_M@YGXPAXIHP6EX0@Z@Z']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_7FF']
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
jmp ['short', 'loc_830']
mov ['ecx,', '[ebp+var_8]']
call ['??1FieldPositionIterator@icu_56@@UAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_82D']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??1FieldPositionIterator@icu_56@@UAE@XZ	proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1FieldPositionIterator@icu_56@@UAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0E8h']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_F4]']
mov ['ecx,', '3Ah']
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
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPositionIterator@icu_56@@6B@']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[eax+4]']
mov ['[ebp+var_E0],', 'ecx']
mov ['edx,', '[ebp+var_E0]']
mov ['[ebp+var_EC],', 'edx']
cmp ['[ebp+var_EC],', '0']
jz ['short', 'loc_8E0']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_EC]']
mov ['edx,', '[eax]']
mov ['ecx,', '[ebp+var_EC]']
mov ['eax,', '[edx]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_F4],', 'eax']
jmp ['short', 'loc_8EA']
mov ['[ebp+var_F4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax+8],', '0FFFFFFFFh']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_14]']
call ['dword', 'ptr', 'ds:__imp_??1UObject@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0F4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text$x']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
__unwindfunclet$??1FieldPositionIterator@icu_56@@UAE@XZ$0 proc near
mov ['esi,', 'esp']
mov ['ecx,', '[ebp-14h]']
call ['dword', 'ptr', 'ds:__imp_??1UObject@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
jmp ['__RTC_CheckEsp']
endp
__ehhandler$??1FieldPositionIterator@icu_56@@UAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-0F8h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1FieldPositionIterator@icu_56@@UAE@XZ']
jmp ['___CxxFrameHandler3']
assume ['cs:_rdata']
dd ['offset', '??_R4FieldPositionIterator@icu_56@@6B@']
public ['??_7FieldPositionIterator@icu_56@@6B@']
dd ['offset', '?getDynamicClassID@UObject@icu_56@@UBEPAXXZ']
assume ['cs:_xdata$x']
dd ['offset', '__unwindfunclet$??1FieldPositionIterator@icu_56@@UAE@XZ$0']
dd ['offset', '__unwindtable$??1FieldPositionIterator@icu_56@@UAE@XZ']
dd ['5', 'dup(0)']
dd ['1']
assume ['cs:_rdata$r']
public ['??_R4FieldPositionIterator@icu_56@@6B@']
dd ['offset', '??_R0?AVFieldPositionIterator@icu_56@@@8']
dd ['offset', '??_R3FieldPositionIterator@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVFieldPositionIterator@icu_56@@@8']
dd ['0']
align ['10h']
assume ['cs:_rdata$r']
public ['??_R3FieldPositionIterator@icu_56@@8']
dd ['3']
dd ['offset', '??_R2FieldPositionIterator@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2FieldPositionIterator@icu_56@@8']
dd ['offset', '??_R1A@?0A@EA@UObject@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['10h']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@FieldPositionIterator@icu_56@@8']
dd ['2,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '??3@YAXPAX@Z']
dd ['offset', '??_R3FieldPositionIterator@icu_56@@8']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??0FieldPositionIterator@icu_56@@QAE@XZ	proc near
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
call ['dword', 'ptr', 'ds:__imp_??0UObject@icu_56@@QAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPositionIterator@icu_56@@6B@']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+8],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_8]']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '10Ch']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_118]']
mov ['ecx,', '43h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_14],', 'ecx']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_14]']
call ['dword', 'ptr', 'ds:__imp_??0UObject@icu_56@@QAE@ABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7FieldPositionIterator@icu_56@@6B@']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
mov ['[eax+8],', 'edx']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+4],', '0']
jz ['loc_C24']
mov ['[ebp+var_20],', '0']
mov ['esi,', 'esp']
push ['14h']
call ['dword', 'ptr', 'ds:__imp_??2UMemory@icu_56@@SAPAXI@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_104],', 'eax']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
cmp ['[ebp+var_104],', '0']
jz ['short', 'loc_B74']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+var_104]']
call ['dword', 'ptr', 'ds:__imp_??0UVector32@icu_56@@QAE@AAW4UErrorCode@@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_104]']
mov ['dword', 'ptr', '[ecx],', 'offset', '??_SUVector32@icu_56@@6B@']
mov ['edx,', '[ebp+var_104]']
mov ['[ebp+var_118],', 'edx']
jmp ['short', 'loc_B7E']
mov ['[ebp+var_118],', '0']
mov ['eax,', '[ebp+var_118]']
mov ['[ebp+var_110],', 'eax']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_14]']
mov ['edx,', '[ebp+var_110]']
mov ['[ecx+4],', 'edx']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+var_20]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+4]']
push ['edx']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_?assign@UVector32@icu_56@@QAEXABV12@AAW4UErrorCode@@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+var_20],', '0']
jz ['short', 'loc_C24']
mov ['eax,', '[ebp+var_14]']
mov ['ecx,', '[eax+4]']
mov ['[ebp+var_EC],', 'ecx']
mov ['edx,', '[ebp+var_EC]']
mov ['[ebp+var_F8],', 'edx']
cmp ['[ebp+var_F8],', '0']
jz ['short', 'loc_C06']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_F8]']
mov ['edx,', '[eax]']
mov ['ecx,', '[ebp+var_F8]']
mov ['eax,', '[edx]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_118],', 'eax']
jmp ['short', 'loc_C10']
mov ['[ebp+var_118],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['eax,', '[ebp+var_14]']
mov ['dword', 'ptr', '[eax+8],', '0FFFFFFFFh']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_14]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN14']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '118h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
dd ['offset', '$LN13']
dd ['offset', '$LN11']
align ['4']
assume ['cs:_text$x']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
__unwindfunclet$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z$0	proc near
mov ['esi,', 'esp']
mov ['ecx,', '[ebp-14h]']
call ['dword', 'ptr', 'ds:__imp_??1UObject@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
jmp ['__RTC_CheckEsp']
endp
__unwindfunclet$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z$1	proc near
mov ['esi,', 'esp']
mov ['eax,', '[ebp-104h]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp_??3UMemory@icu_56@@SAXPAX@Z']
add ['esp,', '4']
cmp ['esi,', 'esp']
jmp ['__RTC_CheckEsp']
endp
__ehhandler$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-11Ch]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z']
jmp ['___CxxFrameHandler3']
align ['4']
assume ['cs:_rdata']
dd ['offset', '??_R4UVector32@icu_56@@6B@']
public ['??_SUVector32@icu_56@@6B@']
dd ['offset', '?getDynamicClassID@UVector32@icu_56@@UBEPAXXZ']
assume ['cs:_xdata$x']
dd ['offset', '__unwindfunclet$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z$0']
align ['10h']
dd ['offset', '__unwindfunclet$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z$1']
dd ['offset', '__unwindtable$??0FieldPositionIterator@icu_56@@QAE@ABV01@@Z']
dd ['5', 'dup(0)']
dd ['1']
assume ['cs:_rdata$r']
public ['??_R4UVector32@icu_56@@6B@']
dd ['offset', '??_R0?AVUVector32@icu_56@@@8']
dd ['offset', '??_R3UVector32@icu_56@@8']
assume ['cs:_data']
public ['??_R0?AVUVector32@icu_56@@@8']
dd ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R3UVector32@icu_56@@8']
dd ['3']
dd ['offset', '??_R2UVector32@icu_56@@8']
assume ['cs:_rdata$r']
public ['??_R2UVector32@icu_56@@8']
dd ['offset', '??_R1A@?0A@EA@UObject@icu_56@@8']
dd ['offset', '??_R13?0A@EA@UMemory@icu_56@@8']
db ['0']
align ['4']
assume ['cs:_rdata$r']
public ['??_R1A@?0A@EA@UVector32@icu_56@@8']
dd ['2,', '0']
dd ['0FFFFFFFFh,', '0']
dd ['offset', '??3@YAXPAX@Z']
dd ['offset', '??_R3UVector32@icu_56@@8']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??_GUVector32@icu_56@@UAEPAXI@Z	proc near
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
call ['dword', 'ptr', 'ds:__imp_??1UVector32@icu_56@@UAE@XZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_DCB']
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
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
??8FieldPositionIterator@icu_56@@QBECABV01@@Z proc near
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
mov ['eax,', '[ebp+arg_0]']
cmp ['eax,', '[ebp+var_8]']
jnz ['short', 'loc_E13']
mov ['al,', '1']
jmp ['short', 'loc_E7A']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[eax+8]']
cmp ['edx,', '[ecx+8]']
jz ['short', 'loc_E25']
xor ['al,', 'al']
jmp ['short', 'loc_E7A']
mov ['eax,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[eax+4],', '0']
jnz ['short', 'loc_E3A']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+4],', '0']
setz ['al']
jmp ['short', 'loc_E7A']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+4],', '0']
jz ['short', 'loc_E6A']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+4]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_??8UVector32@icu_56@@QAECABV01@@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movsx ['ecx,', 'al']
mov ['[ebp+var_D0],', 'ecx']
jmp ['short', 'loc_E74']
mov ['[ebp+var_D0],', '0']
mov ['al,', 'byte', 'ptr', '[ebp+var_D0]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?setData@FieldPositionIterator@icu_56@@AAEXPAVUVector32@2@AAW4UErrorCode@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10Ch']
push ['ebx']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_10C]']
mov ['ecx,', '43h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['[ebp+var_8],', 'ecx']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['?U_SUCCESS@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['edx,', 'al']
test ['edx,', 'edx']
jz ['loc_F6A']
cmp ['[ebp+arg_0],', '0']
jz ['loc_F6A']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?size@UVector32@icu_56@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cdq
mov ['ecx,', '3']
idiv ['ecx']
test ['edx,', 'edx']
jz ['short', 'loc_EFF']
mov ['eax,', '[ebp+arg_4]']
mov ['dword', 'ptr', '[eax],', '1']
jmp ['short', 'loc_F6A']
mov ['[ebp+var_14],', '1']
jmp ['short', 'loc_F11']
mov ['eax,', '[ebp+var_14]']
add ['eax,', '3']
mov ['[ebp+var_14],', 'eax']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?size@UVector32@icu_56@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+var_14],', 'eax']
jge ['short', 'loc_F6A']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_14]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?elementAti@UVector32@icu_56@@QBEHH@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'eax']
mov ['ecx,', '[ebp+var_14]']
add ['ecx,', '1']
mov ['edi,', 'esp']
push ['ecx']
mov ['ecx,', '[ebp+arg_0]']
call ['dword', 'ptr', 'ds:__imp_?elementAti@UVector32@icu_56@@QBEHH@Z']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['esi,', 'eax']
jl ['short', 'loc_F68']
mov ['eax,', '[ebp+arg_4]']
mov ['dword', 'ptr', '[eax],', '1']
jmp ['short', 'loc_F6A']
jmp ['short', 'loc_F08']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['?U_SUCCESS@@YACW4UErrorCode@@@Z']
add ['esp,', '4']
movsx ['edx,', 'al']
test ['edx,', 'edx']
jnz ['short', 'loc_FCE']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_F8],', 'eax']
mov ['ecx,', '[ebp+var_F8]']
mov ['[ebp+var_104],', 'ecx']
cmp ['[ebp+var_104],', '0']
jz ['short', 'loc_FC2']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+var_104]']
mov ['eax,', '[edx]']
mov ['ecx,', '[ebp+var_104]']
mov ['edx,', '[eax]']
call ['edx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10C],', 'eax']
jmp ['short', 'loc_FCC']
mov ['[ebp+var_10C],', '0']
jmp ['short', 'loc_1039']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
mov ['[ebp+var_E0],', 'ecx']
mov ['edx,', '[ebp+var_E0]']
mov ['[ebp+var_EC],', 'edx']
cmp ['[ebp+var_EC],', '0']
jz ['short', 'loc_1014']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_EC]']
mov ['edx,', '[eax]']
mov ['ecx,', '[ebp+var_EC]']
mov ['eax,', '[edx]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10C],', 'eax']
jmp ['short', 'loc_101E']
mov ['[ebp+var_10C],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
neg ['eax']
sbb ['eax,', 'eax']
neg ['eax']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_8]']
mov ['[ecx+8],', 'eax']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '10Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
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
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
?next@FieldPositionIterator@icu_56@@QAECAAVFieldPosition@2@@Z proc near
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
cmp ['dword', 'ptr', '[eax+8],', '0FFFFFFFFh']
jnz ['short', 'loc_10AF']
xor ['al,', 'al']
jmp ['loc_1198']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
mov ['[ebp+var_D0],', 'ecx']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+8]']
add ['eax,', '1']
mov ['ecx,', '[ebp+var_8]']
mov ['[ecx+8],', 'eax']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+var_D0]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_?elementAti@UVector32@icu_56@@QBEHH@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?setField@FieldPosition@icu_56@@QAEXH@Z']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
mov ['[ebp+var_D0],', 'ecx']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+8]']
add ['eax,', '1']
mov ['ecx,', '[ebp+var_8]']
mov ['[ecx+8],', 'eax']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+var_D0]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_?elementAti@UVector32@icu_56@@QBEHH@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?setBeginIndex@FieldPosition@icu_56@@QAEXH@Z']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
mov ['[ebp+var_D0],', 'ecx']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[edx+8]']
add ['eax,', '1']
mov ['ecx,', '[ebp+var_8]']
mov ['[ecx+8],', 'eax']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+var_D0]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_?elementAti@UVector32@icu_56@@QBEHH@Z']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
call ['?setEndIndex@FieldPosition@icu_56@@QAEXH@Z']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+4]']
call ['dword', 'ptr', 'ds:__imp_?size@UVector32@icu_56@@QBEHXZ']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_8]']
cmp ['[ecx+8],', 'eax']
jnz ['short', 'loc_1196']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+8],', '0FFFFFFFFh']
mov ['al,', '1']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0D0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
extrn ['__imp_??0UObject@icu_56@@QAE@XZ:near']
extrn ['__RTC_CheckEsp:near']
extrn ['??_7type_info@@6B@:near']
extrn ['?getDynamicClassID@FieldPosition@icu_56@@UBEPAXXZ:near']
extrn ['__imp_??0UObject@icu_56@@QAE@ABV01@@Z:near']
extrn ['__imp_??3UMemory@icu_56@@SAXPAX@Z:near']
extrn ['??1FieldPosition@icu_56@@UAE@XZ:near']
extrn ['__imp_??_VUMemory@icu_56@@SAXPAX@Z:near']
extrn ['??_M@YGXPAXIHP6EX0@Z@Z:near']
extrn ['__imp_??4UObject@icu_56@@QAEAAV01@ABV01@@Z:near']
extrn ['__imp_??1UObject@icu_56@@UAE@XZ:near']
extrn ['___security_cookie:near']
extrn ['___CxxFrameHandler3:near']
extrn ['@__security_check_cookie@4:near']
extrn ['?getDynamicClassID@UObject@icu_56@@UBEPAXXZ:near']
extrn ['__imp_?assign@UVector32@icu_56@@QAEXABV12@AAW4UErrorCode@@@Z:near']
extrn ['__imp_??0UVector32@icu_56@@QAE@AAW4UErrorCode@@@Z:near']
extrn ['__imp_??2UMemory@icu_56@@SAPAXI@Z:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['??_GUVector32@icu_56@@UAEPAXI@Z_0:near']
extrn ['??_EUVector32@icu_56@@UAEPAXI@Z:near']
extrn ['?getDynamicClassID@UVector32@icu_56@@UBEPAXXZ:near']
extrn ['__imp_??1UVector32@icu_56@@UAE@XZ:near']
extrn ['__imp_??8UVector32@icu_56@@QAECABV01@@Z:near']
extrn ['__imp_?elementAti@UVector32@icu_56@@QBEHH@Z:near']
extrn ['__imp_?size@UVector32@icu_56@@QBEHXZ:near']
end