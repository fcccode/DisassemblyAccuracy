?ConvertFileTimeToString@@YG_NABU_FILETIME@@PAD_N2@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '20h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['dword', 'ptr', '[ebp+SystemTime.wYear],', 'eax']
mov ['dword', 'ptr', '[ebp+SystemTime.wDayOfWeek],', 'eax']
mov ['dword', 'ptr', '[ebp+SystemTime.wHour],', 'eax']
mov ['dword', 'ptr', '[ebp+SystemTime.wSecond],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['esi,', 'esp']
lea ['eax,', '[ebp+SystemTime]']
push ['eax']
mov ['ecx,', '[ebp+lpFileTime]']
push ['ecx']
call ['dword', 'ptr', 'ds:__imp__FileTimeToSystemTime@8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['eax']
call ['?BOOLToBool@@YG_NH@Z']
movzx ['edx,', 'al']
test ['edx,', 'edx']
jnz ['short', 'loc_5F']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '0']
xor ['al,', 'al']
jmp ['loc_24E']
movzx ['ecx,', '[ebp+SystemTime.wYear]']
mov ['[ebp+var_20],', 'ecx']
cmp ['[ebp+var_20],', '2710h']
jb ['short', 'loc_9B']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '2710h']
div ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx],', 'al']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '1']
mov ['[ebp+arg_4],', 'eax']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '2710h']
div ['ecx']
mov ['[ebp+var_20],', 'edx']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+3],', 'dl']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
mov ['[ebp+var_20],', 'eax']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
mov ['[ebp+var_20],', 'eax']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+1],', 'dl']
mov ['eax,', '[ebp+var_20]']
xor ['edx,', 'edx']
mov ['ecx,', '0Ah']
div ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx],', 'al']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '4']
mov ['[ebp+arg_4],', 'eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[ecx],', '2Dh']
movzx ['eax,', '[ebp+SystemTime.wMonth]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+1],', 'al']
movzx ['eax,', '[ebp+SystemTime.wMonth]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '3']
mov ['[ebp+arg_4],', 'ecx']
mov ['edx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[edx],', '2Dh']
movzx ['eax,', '[ebp+SystemTime.wDay]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+1],', 'al']
movzx ['eax,', '[ebp+SystemTime.wDay]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '3']
mov ['[ebp+arg_4],', 'ecx']
movzx ['edx,', '[ebp+arg_8]']
test ['edx,', 'edx']
jz ['loc_246']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '20h']
movzx ['eax,', '[ebp+SystemTime.wHour]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+1],', 'al']
movzx ['eax,', '[ebp+SystemTime.wHour]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '3']
mov ['[ebp+arg_4],', 'ecx']
mov ['edx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[edx],', '3Ah']
movzx ['eax,', '[ebp+SystemTime.wMinute]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+1],', 'al']
movzx ['eax,', '[ebp+SystemTime.wMinute]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '3']
mov ['[ebp+arg_4],', 'ecx']
movzx ['edx,', '[ebp+arg_C]']
test ['edx,', 'edx']
jz ['short', 'loc_246']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '3Ah']
movzx ['eax,', '[ebp+SystemTime.wSecond]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['eax,', '30h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+1],', 'al']
movzx ['eax,', '[ebp+SystemTime.wSecond]']
cdq
mov ['ecx,', '0Ah']
idiv ['ecx']
add ['edx,', '30h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dl']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '3']
mov ['[ebp+arg_4],', 'ecx']
mov ['edx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[edx],', '0']
mov ['al,', '1']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN9']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['esi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '20h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?ConvertFileTimeToString@@YGXABU_FILETIME@@PA_W_N2@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '34h']
push ['edi']
lea ['edi,', '[ebp+var_34]']
mov ['ecx,', '0Dh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
movzx ['eax,', '[ebp+arg_C]']
push ['eax']
movzx ['ecx,', '[ebp+arg_8]']
push ['ecx']
lea ['edx,', '[ebp+var_28]']
push ['edx']
mov ['eax,', '[ebp+lpFileTime]']
push ['eax']
call ['?ConvertFileTimeToString@@YG_NABU_FILETIME@@PAD_N2@Z']
mov ['[ebp+var_30],', '0']
jmp ['short', 'loc_2E9']
mov ['ecx,', '[ebp+var_30]']
add ['ecx,', '1']
mov ['[ebp+var_30],', 'ecx']
mov ['edx,', '[ebp+var_30]']
mov ['al,', '[ebp+edx+var_28]']
mov ['[ebp+var_31],', 'al']
movzx ['cx,', '[ebp+var_31]']
mov ['edx,', '[ebp+var_30]']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+edx*2],', 'cx']
movzx ['ecx,', '[ebp+var_31]']
test ['ecx,', 'ecx']
jnz ['short', 'loc_30C']
jmp ['short', 'loc_30E']
jmp ['short', 'loc_2E0']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN9_0']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '34h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?ConvertPropVariantToShortString@@YGXABUtagPROPVARIANT@@PAD@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '0']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'word', 'ptr', '[ecx]']
mov ['[ebp+var_4],', 'edx']
cmp ['[ebp+var_4],', '40h']
ja ['$LN1']
mov ['eax,', '[ebp+var_4]']
movzx ['ecx,', 'ds:$LN17[eax]']
jmp ['ds:$LN18[ecx*4]']
jmp ['loc_4A7']
mov ['edx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[edx],', '3Fh']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax+1],', '0']
jmp ['loc_4A7']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPAD@Z']
jmp ['loc_4A7']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'word', 'ptr', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPAD@Z']
jmp ['loc_4A7']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPAD@Z']
jmp ['loc_4A7']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+0Ch]']
push ['eax']
mov ['ecx,', '[edx+8]']
push ['ecx']
call ['?ConvertUInt64ToString@@YGX_KPAD@Z']
jmp ['loc_4A7']
push ['1']
push ['1']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '8']
push ['eax']
call ['?ConvertFileTimeToString@@YG_NABU_FILETIME@@PAD_N2@Z']
jmp ['loc_4A7']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movsx ['eax,', 'word', 'ptr', '[edx+8]']
cdq
push ['edx']
push ['eax']
call ['?ConvertInt64ToString@@YGX_JPAD@Z']
jmp ['short', 'loc_4A7']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['eax,', '[ecx+8]']
cdq
push ['edx']
push ['eax']
call ['?ConvertInt64ToString@@YGX_JPAD@Z']
jmp ['short', 'loc_4A7']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+0Ch]']
push ['ecx']
mov ['edx,', '[eax+8]']
push ['edx']
call ['?ConvertInt64ToString@@YGX_JPAD@Z']
jmp ['short', 'loc_4A7']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'word', 'ptr', '[eax+8]']
push ['ecx']
call ['?VARIANT_BOOLToBool@@YG_NF@Z']
movzx ['edx,', 'al']
test ['edx,', 'edx']
setz ['al']
lea ['eax,', '[eax+eax+2Bh]']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[edx+1],', '0']
jmp ['short', 'loc_4A7']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '3Fh']
mov ['ecx,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[ecx+1],', '3Ah']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '2']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
movzx ['eax,', 'word', 'ptr', '[eax]']
cdq
push ['edx']
push ['eax']
call ['?ConvertUInt64ToString@@YGX_KPAD@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?ConvertPropVariantToShortString@@YGXABUtagPROPVARIANT@@PA_W@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
xor ['eax,', 'eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'ax']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'word', 'ptr', '[edx]']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '40h']
ja ['$LN1_0']
mov ['ecx,', '[ebp+var_4]']
movzx ['edx,', 'ds:$LN17_0[ecx]']
jmp ['ds:$LN18_0[edx*4]']
jmp ['loc_68C']
mov ['eax,', '3Fh']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'ax']
xor ['edx,', 'edx']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dx']
jmp ['loc_68C']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPA_W@Z']
jmp ['loc_68C']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'word', 'ptr', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPA_W@Z']
jmp ['loc_68C']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+8]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPA_W@Z']
jmp ['loc_68C']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+0Ch]']
push ['eax']
mov ['ecx,', '[edx+8]']
push ['ecx']
call ['?ConvertUInt64ToString@@YGX_KPA_W@Z']
jmp ['loc_68C']
push ['1']
push ['1']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '8']
push ['eax']
call ['?ConvertFileTimeToString@@YGXABU_FILETIME@@PA_W_N2@Z']
jmp ['loc_68C']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movsx ['eax,', 'word', 'ptr', '[edx+8]']
cdq
push ['edx']
push ['eax']
call ['?ConvertInt64ToString@@YGX_JPA_W@Z']
jmp ['short', 'loc_68C']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['eax,', '[ecx+8]']
cdq
push ['edx']
push ['eax']
call ['?ConvertInt64ToString@@YGX_JPA_W@Z']
jmp ['short', 'loc_68C']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+0Ch]']
push ['ecx']
mov ['edx,', '[eax+8]']
push ['edx']
call ['?ConvertInt64ToString@@YGX_JPA_W@Z']
jmp ['short', 'loc_68C']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'word', 'ptr', '[eax+8]']
push ['ecx']
call ['?VARIANT_BOOLToBool@@YG_NF@Z']
movzx ['edx,', 'al']
neg ['edx']
sbb ['edx,', 'edx']
and ['edx,', '0FFFFFFFEh']
add ['edx,', '2Dh']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax],', 'dx']
xor ['ecx,', 'ecx']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+2],', 'cx']
jmp ['short', 'loc_68C']
mov ['eax,', '3Fh']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'ax']
mov ['edx,', '3Ah']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+2],', 'dx']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '4']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'word', 'ptr', '[edx]']
push ['eax']
call ['?ConvertUInt32ToString@@YGXIPA_W@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?BOOLToBool@@YG_NH@Z proc near          
push ['ebp']
mov ['ebp,', 'esp']
xor ['eax,', 'eax']
cmp ['[ebp+arg_0],', '0']
setnz ['al']
pop ['ebp']
retn ['4']
endp
?VARIANT_BOOLToBool@@YG_NF@Z proc near  
push ['ebp']
mov ['ebp,', 'esp']
movsx ['eax,', '[ebp+arg_0]']
neg ['eax']
sbb ['eax,', 'eax']
neg ['eax']
pop ['ebp']
retn ['4']
endp
