endp
_FT_Has_PS_Glyph_Names proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_4],', '0']
cmp ['[ebp+arg_0],', '0']
jz ['short', 'loc_17E']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+60h]']
mov ['[ebp+var_C],', 'ecx']
mov ['[ebp+var_10],', '0']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+20h],', '0']
jz ['short', 'loc_14A']
mov ['esi,', 'esp']
push ['offset', '$SG7547']
mov ['ecx,', '[ebp+var_C]']
push ['ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+20h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10],', 'eax']
mov ['edx,', '[ebp+var_10]']
mov ['[ebp+var_8],', 'edx']
xor ['eax,', 'eax']
jnz ['short', 'loc_10D']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_17E']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+8],', '0']
jz ['short', 'loc_17E']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
call ['ecx']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
db ['8', 'dup(0CCh)']
endp
_FT_Get_PS_Font_Info proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+arg_0],', '0']
jnz ['short', 'loc_1CF']
push ['offset', '$SG7516']
push ['25h']
push ['23h']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '23h']
jmp ['loc_27D']
cmp ['[ebp+arg_4],', '0']
jnz ['short', 'loc_1EE']
push ['offset', '$SG7518']
push ['28h']
push ['6']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '6']
jmp ['loc_27D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+60h]']
mov ['[ebp+var_C],', 'ecx']
mov ['[ebp+var_10],', '0']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+20h],', '0']
jz ['short', 'loc_22B']
mov ['esi,', 'esp']
push ['offset', '$SG7528']
mov ['ecx,', '[ebp+var_C]']
push ['ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+20h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10],', 'eax']
mov ['edx,', '[ebp+var_10]']
mov ['[ebp+var_8],', 'edx']
xor ['eax,', 'eax']
jnz ['short', 'loc_1EE']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_263']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_263']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
jmp ['short', 'loc_27A']
push ['offset', '$SG7531']
push ['2Fh']
push ['6']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '6']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
db ['0Ch', 'dup(0CCh)']
endp
_FT_Get_PS_Font_Private	proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+arg_0],', '0']
jnz ['short', 'loc_2CF']
push ['offset', '$SG7557']
push ['55h']
push ['23h']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '23h']
jmp ['loc_37F']
cmp ['[ebp+arg_4],', '0']
jnz ['short', 'loc_2EE']
push ['offset', '$SG7559']
push ['58h']
push ['6']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '6']
jmp ['loc_37F']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+60h]']
mov ['[ebp+var_C],', 'ecx']
mov ['[ebp+var_10],', '0']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+20h],', '0']
jz ['short', 'loc_32B']
mov ['esi,', 'esp']
push ['offset', '$SG7569']
mov ['ecx,', '[ebp+var_C]']
push ['ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+20h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10],', 'eax']
mov ['edx,', '[ebp+var_10]']
mov ['[ebp+var_8],', 'edx']
xor ['eax,', 'eax']
jnz ['short', 'loc_2EE']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_365']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0']
jz ['short', 'loc_365']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
jmp ['short', 'loc_37C']
push ['offset', '$SG7572']
push ['5Fh']
push ['6']
call ['_FT_Throw']
add ['esp,', '0Ch']
or ['eax,', '6']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
db ['0Ah', 'dup(0CCh)']
endp
_FT_Get_PS_Font_Value proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_4],', '0']
mov ['[ebp+var_8],', '0']
cmp ['[ebp+arg_0],', '0']
jz ['loc_449']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+60h]']
mov ['[ebp+var_C],', 'ecx']
mov ['[ebp+var_10],', '0']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+20h],', '0']
jz ['short', 'loc_405']
mov ['esi,', 'esp']
push ['offset', '$SG7597']
mov ['ecx,', '[ebp+var_C]']
push ['ecx']
mov ['edx,', '[ebp+var_C]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+20h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_10],', 'eax']
mov ['edx,', '[ebp+var_10]']
mov ['[ebp+var_8],', 'edx']
xor ['eax,', 'eax']
jnz ['short', 'loc_3C8']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_449']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+10h],', '0']
jz ['short', 'loc_449']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_10]']
push ['edx']
mov ['eax,', '[ebp+arg_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_8]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+10h]']
call ['edx']
add ['esp,', '14h']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_rtc$IMZ']
assume ['cs:_rtc$TMZ']
extrn ['_FT_Throw:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__RTC_InitBase:near']
extrn ['__RTC_Shutdown:near']
end