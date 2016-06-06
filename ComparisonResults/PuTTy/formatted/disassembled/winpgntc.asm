_agent_exists   proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['esi,', 'esp']
push ['offset', '$SG86394']
push ['offset', '$SG86395']
call ['dword', 'ptr', 'ds:__imp__FindWindowA@8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '0']
jnz ['short', 'loc_68']
xor ['eax,', 'eax']
jmp ['short', 'loc_6D']
jmp ['short', 'loc_6D']
mov ['eax,', '1']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_agent_query    proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '50h']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_50]']
mov ['ecx,', '14h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['[ebp+hMem],', '0']
mov ['[ebp+var_50],', '0']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['ecx,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[ecx],', '0']
mov ['esi,', 'esp']
push ['offset', '$SG86429']
push ['offset', '$SG86430']
call ['dword', 'ptr', 'ds:__imp__FindWindowA@8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+hWnd],', 'eax']
cmp ['[ebp+hWnd],', '0']
jnz ['short', 'loc_E7']
mov ['eax,', '1']
jmp ['loc_338']
mov ['esi,', 'esp']
call ['dword', 'ptr', 'ds:__imp__GetCurrentThreadId@0']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
push ['offset', '$SG86433']
call ['_dupprintf']
add ['esp,', '8']
mov ['[ebp+lpName],', 'eax']
mov ['[ebp+lpFileMappingAttributes],', '0']
call ['_got_advapi']
test ['eax,', 'eax']
jz ['loc_1B5']
call ['_get_user_sid']
mov ['[ebp+var_50],', 'eax']
cmp ['[ebp+var_50],', '0']
jz ['loc_1B5']
mov ['esi,', 'esp']
push ['14h']
push ['40h']
call ['dword', 'ptr', 'ds:__imp__LocalAlloc@8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+hMem],', 'eax']
cmp ['[ebp+hMem],', '0']
jz ['short', 'loc_1B5']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+hMem]']
push ['edx']
call ['dword', 'ptr', 'ds:_p_InitializeSecurityDescriptor']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jz ['short', 'loc_19B']
mov ['esi,', 'esp']
push ['0']
mov ['eax,', '[ebp+var_50]']
push ['eax']
mov ['ecx,', '[ebp+hMem]']
push ['ecx']
call ['dword', 'ptr', 'ds:_p_SetSecurityDescriptorOwner']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jz ['short', 'loc_19B']
mov ['[ebp+var_40],', '0Ch']
mov ['[ebp+var_38],', '1']
mov ['edx,', '[ebp+hMem]']
mov ['[ebp+var_3C],', 'edx']
lea ['eax,', '[ebp+var_40]']
mov ['[ebp+lpFileMappingAttributes],', 'eax']
jmp ['short', 'loc_1B5']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+hMem]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__LocalFree@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+hMem],', '0']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+lpName]']
push ['edx']
push ['2000h']
push ['0']
push ['4']
mov ['eax,', '[ebp+lpFileMappingAttributes]']
push ['eax']
push ['0FFFFFFFFh']
call ['dword', 'ptr', 'ds:__imp__CreateFileMappingA@24']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+hFileMappingObject],', 'eax']
cmp ['[ebp+hFileMappingObject],', '0']
jz ['short', 'loc_1E6']
cmp ['[ebp+hFileMappingObject],', '0FFFFFFFFh']
jnz ['short', 'loc_1FC']
mov ['ecx,', '[ebp+lpName]']
push ['ecx']
call ['_safefree']
add ['esp,', '4']
mov ['eax,', '1']
jmp ['loc_338']
mov ['esi,', 'esp']
push ['0']
push ['0']
push ['0']
push ['2']
mov ['edx,', '[ebp+hFileMappingObject]']
push ['edx']
call ['dword', 'ptr', 'ds:__imp__MapViewOfFile@20']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+Dst],', 'eax']
mov ['eax,', '[ebp+Size]']
push ['eax']
mov ['ecx,', '[ebp+Src]']
push ['ecx']
mov ['edx,', '[ebp+Dst]']
push ['edx']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['[ebp+lParam],', '804E50BAh']
mov ['eax,', '[ebp+lpName]']
push ['eax']
call ['_strlen']
add ['esp,', '4']
add ['eax,', '1']
mov ['[ebp+var_28],', 'eax']
mov ['ecx,', '[ebp+lpName]']
mov ['[ebp+var_24],', 'ecx']
mov ['esi,', 'esp']
lea ['edx,', '[ebp+lParam]']
push ['edx']
push ['0']
push ['4Ah']
mov ['eax,', '[ebp+hWnd]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__SendMessageA@16']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jle ['short', 'loc_2DC']
mov ['ecx,', '[ebp+Dst]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
shl ['edx,', '18h']
mov ['eax,', '[ebp+Dst]']
movzx ['ecx,', 'byte', 'ptr', '[eax+1]']
shl ['ecx,', '10h']
or ['edx,', 'ecx']
mov ['eax,', '[ebp+Dst]']
movzx ['ecx,', 'byte', 'ptr', '[eax+2]']
shl ['ecx,', '8']
or ['edx,', 'ecx']
mov ['eax,', '[ebp+Dst]']
movzx ['ecx,', 'byte', 'ptr', '[eax+3]']
or ['edx,', 'ecx']
add ['edx,', '4']
mov ['[ebp+var_1C],', 'edx']
push ['1']
mov ['edx,', '[ebp+var_1C]']
push ['edx']
call ['_safemalloc']
add ['esp,', '8']
mov ['[ebp+var_14],', 'eax']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_2DC']
mov ['eax,', '[ebp+var_1C]']
push ['eax']
mov ['ecx,', '[ebp+Dst]']
push ['ecx']
mov ['edx,', '[ebp+var_14]']
push ['edx']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[ebp+var_14]']
mov ['[eax],', 'ecx']
mov ['edx,', '[ebp+arg_C]']
mov ['eax,', '[ebp+var_1C]']
mov ['[edx],', 'eax']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+Dst]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__UnmapViewOfFile@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+hFileMappingObject]']
push ['edx']
call ['dword', 'ptr', 'ds:__imp__CloseHandle@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+lpName]']
push ['eax']
call ['_safefree']
add ['esp,', '4']
cmp ['[ebp+hMem],', '0']
jz ['short', 'loc_327']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+hMem]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__LocalFree@4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_50]']
push ['edx']
call ['_safefree']
add ['esp,', '4']
mov ['eax,', '1']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN17']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
add ['esp,', '50h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
