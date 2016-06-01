endp
_ustr_init	proc near
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
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+4],', '0']
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
_ustr_initChars	proc near
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
mov ['[ebp+var_8],', '0']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_7E']
jmp ['loc_143']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+4],', '0']
cmp ['[ebp+arg_8],', '0FFFFFFFFh']
jnz ['short', 'loc_B0']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_strlen']
add ['esp,', '4']
mov ['[ebp+arg_8],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
cmp ['ecx,', '[ebp+arg_8]']
jge ['short', 'loc_104']
cmp ['[ebp+arg_8],', '80h']
jge ['short', 'loc_D0']
mov ['[ebp+var_DC],', '80h']
jmp ['short', 'loc_E3']
mov ['eax,', '[ebp+arg_8]']
lea ['ecx,', '[eax+eax+80h]']
and ['ecx,', '0FFFFFF80h']
mov ['[ebp+var_DC],', 'ecx']
mov ['edx,', '[ebp+arg_C]']
push ['edx']
mov ['eax,', '[ebp+var_DC]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_104']
jmp ['short', 'loc_143']
jmp ['short', 'loc_10F']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['eax,', '[ebp+var_8]']
cmp ['eax,', '[ebp+arg_8]']
jge ['short', 'loc_143']
push ['1']
lea ['eax,', '[ebp+var_14]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '[ebp+var_8]']
push ['ecx']
call ['_u_charsToUChars_56']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
movzx ['ecx,', '[ebp+var_14]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_ucat']
add ['esp,', '0Ch']
jmp ['short', 'loc_106']
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
add ['esp,', '0DCh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
dd ['offset', '$LN13']
dd ['offset', '$LN12']
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_deinit	proc near
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
jz ['short', 'loc_1DB']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_uprv_free_56']
add ['esp,', '4']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+4],', '0']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C0h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_cpy	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C4]']
mov ['ecx,', '31h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jg ['short', 'loc_21E']
mov ['eax,', '[ebp+arg_0]']
cmp ['eax,', '[ebp+arg_4]']
jnz ['short', 'loc_223']
jmp ['loc_2DC']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[eax+8]']
cmp ['edx,', '[ecx+4]']
jge ['short', 'loc_280']
mov ['eax,', '[ebp+arg_4]']
cmp ['dword', 'ptr', '[eax+4],', '80h']
jge ['short', 'loc_249']
mov ['[ebp+var_C4],', '80h']
jmp ['short', 'loc_25F']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ecx+4]']
lea ['eax,', '[edx+edx+80h]']
and ['eax,', '0FFFFFF80h']
mov ['[ebp+var_C4],', 'eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+var_C4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_280']
jmp ['short', 'loc_2DC']
mov ['eax,', '[ebp+arg_4]']
cmp ['dword', 'ptr', '[eax],', '0']
jz ['short', 'loc_290']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax],', '0']
jnz ['short', 'loc_292']
jmp ['short', 'loc_2DC']
push ['1']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['edx,', '[ebp+arg_4]']
mov ['eax,', '[edx+4]']
shl ['eax,', '1']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ecx]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ecx+4]']
mov ['[eax+4],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
xor ['edx,', 'edx']
mov ['[eax+ecx*2],', 'dx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_setlen	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C4]']
mov ['ecx,', '31h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_318']
jmp ['short', 'loc_386']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '1']
mov ['ecx,', '[ebp+arg_0]']
cmp ['[ecx+8],', 'eax']
jge ['short', 'loc_36F']
cmp ['[ebp+arg_4],', '80h']
jge ['short', 'loc_33B']
mov ['[ebp+var_C4],', '80h']
jmp ['short', 'loc_34E']
mov ['eax,', '[ebp+arg_4]']
lea ['ecx,', '[eax+eax+80h]']
and ['ecx,', '0FFFFFF80h']
mov ['[ebp+var_C4],', 'ecx']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', '[ebp+var_C4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_36F']
jmp ['short', 'loc_386']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
mov ['[eax+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
xor ['edx,', 'edx']
mov ['eax,', '[ebp+arg_4]']
mov ['[ecx+eax*2],', 'dx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_cat	proc near
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
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ecx+4]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_ustr_ncat']
add ['esp,', '10h']
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
_ustr_ncat	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C4]']
mov ['ecx,', '31h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jg ['short', 'loc_41A']
mov ['eax,', '[ebp+arg_0]']
cmp ['eax,', '[ebp+arg_4]']
jnz ['short', 'loc_41F']
jmp ['loc_4DD']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+arg_0]']
cmp ['[edx+8],', 'ecx']
jge ['short', 'loc_487']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '[ebp+arg_8]']
cmp ['ecx,', '80h']
jge ['short', 'loc_44D']
mov ['[ebp+var_C4],', '80h']
jmp ['short', 'loc_466']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[ebp+arg_8]']
lea ['edx,', '[ecx+eax*2+80h]']
and ['edx,', '0FFFFFF80h']
mov ['[ebp+var_C4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+var_C4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_487']
jmp ['short', 'loc_4DD']
push ['1']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['edx,', '[ebp+arg_8]']
shl ['edx,', '1']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
lea ['eax,', '[edx+eax*2]']
push ['eax']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_4]']
add ['ecx,', '[edx+4]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
xor ['edx,', 'edx']
mov ['[eax+ecx*2],', 'dx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_ucat	proc near		
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C4]']
mov ['ecx,', '31h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_51F']
jmp ['loc_5CF']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_0]']
cmp ['[edx+8],', 'ecx']
jge ['short', 'loc_584']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '1']
cmp ['ecx,', '80h']
jge ['short', 'loc_54D']
mov ['[ebp+var_C4],', '80h']
jmp ['short', 'loc_563']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+4]']
lea ['ecx,', '[eax+eax+81h]']
and ['ecx,', '0FFFFFF80h']
mov ['[ebp+var_C4],', 'ecx']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', '[ebp+var_C4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_584']
jmp ['short', 'loc_5CF']
push ['1']
lea ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
push ['2']
lea ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
lea ['eax,', '[edx+eax*2]']
push ['eax']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
xor ['edx,', 'edx']
mov ['[eax+ecx*2],', 'dx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_u32cat	proc near
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
cmp ['[ebp+arg_4],', '10FFFFh']
jle ['short', 'loc_616']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '0Ch']
jmp ['short', 'loc_673']
cmp ['[ebp+arg_4],', '0FFFFh']
jle ['short', 'loc_65E']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
sar ['ecx,', '0Ah']
add ['ecx,', '0D7C0h']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_ucat']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
and ['ecx,', '3FFh']
or ['ecx,', '0DC00h']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_ucat']
add ['esp,', '0Ch']
jmp ['short', 'loc_673']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
movzx ['ecx,', 'word', 'ptr', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_ucat']
add ['esp,', '0Ch']
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
_ustr_uscat	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0C4h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_C4]']
mov ['ecx,', '31h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_6B3']
jmp ['loc_76A']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+arg_0]']
cmp ['[edx+8],', 'ecx']
jge ['short', 'loc_71B']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '[ebp+arg_8]']
cmp ['ecx,', '80h']
jge ['short', 'loc_6E1']
mov ['[ebp+var_C4],', '80h']
jmp ['short', 'loc_6FA']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[ebp+arg_8]']
lea ['edx,', '[ecx+eax*2+80h]']
and ['edx,', '0FFFFFF80h']
mov ['[ebp+var_C4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+var_C4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_ustr_resize']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_C]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_71B']
jmp ['short', 'loc_76A']
push ['1']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_uprv_checkValidMemory']
add ['esp,', '8']
mov ['ecx,', '[ebp+arg_8]']
shl ['ecx,', '1']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
lea ['ecx,', '[eax+ecx*2]']
push ['ecx']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
xor ['edx,', 'edx']
mov ['[eax+ecx*2],', 'dx']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0C4h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['10h']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rtc$TMZ,', 'fs:nothing,', 'gs:nothing']
endp
_ustr_resize	proc near		
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
mov ['eax,', '[ebp+arg_8]']
cmp ['dword', 'ptr', '[eax],', '0']
jle ['short', 'loc_7A8']
jmp ['short', 'loc_7F3']
mov ['eax,', '[ebp+arg_4]']
lea ['ecx,', '[eax+eax+2]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
push ['eax']
call ['_uprv_realloc_56']
add ['esp,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx],', 'eax']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax],', '0']
jnz ['short', 'loc_7EA']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '7']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+8],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+4],', '0']
jmp ['short', 'loc_7F3']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_4]']
mov ['[eax+8],', 'ecx']
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
extrn ['_u_charsToUChars_56:near']
extrn ['_strlen:near']
extrn ['__RTC_CheckEsp:near']
extrn ['@_RTC_CheckStackVars@8:near']
extrn ['_uprv_free_56:near']
extrn ['_memcpy:near']
extrn ['_uprv_checkValidMemory:near']
extrn ['_uprv_realloc_56:near']
end
