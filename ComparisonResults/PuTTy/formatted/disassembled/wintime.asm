_ltime          proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '4Ch']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_4C]']
mov ['ecx,', '13h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+SystemTime]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__GetLocalTime@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['ecx,', '[ebp+SystemTime.wSecond]']
mov ['[ebp+var_44],', 'ecx']
movzx ['edx,', '[ebp+SystemTime.wMinute]']
mov ['[ebp+var_40],', 'edx']
movzx ['eax,', '[ebp+SystemTime.wHour]']
mov ['[ebp+var_3C],', 'eax']
movzx ['ecx,', '[ebp+SystemTime.wDay]']
mov ['[ebp+var_38],', 'ecx']
movzx ['edx,', '[ebp+SystemTime.wMonth]']
sub ['edx,', '1']
mov ['[ebp+var_34],', 'edx']
movzx ['eax,', '[ebp+SystemTime.wYear]']
cmp ['eax,', '76Ch']
jl ['short', 'loc_74']
movzx ['ecx,', '[ebp+SystemTime.wYear]']
sub ['ecx,', '76Ch']
mov ['[ebp+var_4C],', 'ecx']
jmp ['short', 'loc_7B']
mov ['[ebp+var_4C],', '0']
mov ['edx,', '[ebp+var_4C]']
mov ['[ebp+var_30],', 'edx']
movzx ['eax,', '[ebp+SystemTime.wDayOfWeek]']
mov ['[ebp+var_2C],', 'eax']
mov ['[ebp+var_28],', '0FFFFFFFFh']
mov ['[ebp+var_24],', '0']
mov ['ecx,', '9']
lea ['esi,', '[ebp+var_44]']
mov ['edi,', '[ebp+arg_0]']
rep ['movsd']
mov ['eax,', '[ebp+arg_0]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN8']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '4Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
