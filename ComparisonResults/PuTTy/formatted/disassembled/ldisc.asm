_ldisc_create   proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
push ['34h']
push ['1']
call ['_safemalloc']
add ['esp,', '8']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+24h],', '0']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+28h],', '0']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx+2Ch],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+30h],', '0']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ebp+arg_8]']
mov ['[ecx+4],', 'edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+arg_C]']
mov ['[eax+8],', 'ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_4]']
mov ['[edx],', 'eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ebp+arg_10]']
mov ['[ecx+0Ch],', 'edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_ldisc_configure']
add ['esp,', '8']
cmp ['[ebp+arg_4],', '0']
jz ['short', 'loc_E8']
mov ['edx,', '[ebp+arg_4]']
mov ['eax,', '[ebp+var_4]']
mov ['[edx+1084h],', 'eax']
cmp ['[ebp+arg_8],', '0']
jz ['short', 'loc_10A']
mov ['esi,', 'esp']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
mov ['edx,', '[ebp+arg_C]']
push ['edx']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[eax+30h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_ldisc_configure proc near              
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_4],', 'eax']
push ['4Ch']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
call ['_conf_get_int']
add ['esp,', '8']
mov ['edx,', '[ebp+var_4]']
mov ['[edx+10h],', 'eax']
push ['4Dh']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_conf_get_int']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+14h],', 'eax']
push ['2']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_conf_get_int']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+18h],', 'eax']
push ['51h']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_conf_get_int']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+1Ch],', 'eax']
push ['52h']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_conf_get_int']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+20h],', 'eax']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_ldisc_free     proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx],', '0']
jz ['short', 'loc_1D9']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
mov ['dword', 'ptr', '[eax+1084h],', '0']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+4],', '0']
jz ['short', 'loc_202']
mov ['esi,', 'esp']
push ['0']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+30h]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+24h],', '0']
jz ['short', 'loc_21A']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
push ['eax']
call ['_safefree']
add ['esp,', '4']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_safefree']
add ['esp,', '4']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_ldisc_send     proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '28h']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_28]']
mov ['ecx,', '0Ah']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_0]']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_8],', '0']
cmp ['[ebp+arg_8],', '0']
jnz ['loc_33E']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+20h],', '0']
jz ['short', 'loc_2C1']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+20h],', '2']
jnz ['short', 'loc_2B8']
mov ['esi,', 'esp']
push ['0']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+2Ch]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_2C1']
push ['0']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
push ['eax']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_2C1']
mov ['[ebp+var_14],', '0']
jmp ['short', 'loc_2C8']
mov ['[ebp+var_14],', '1']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '0']
jz ['short', 'loc_31B']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '2']
jnz ['short', 'loc_312']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+2Ch]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_31B']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
push ['eax']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jnz ['short', 'loc_31B']
mov ['[ebp+var_18],', '0']
jmp ['short', 'loc_322']
mov ['[ebp+var_18],', '1']
mov ['ecx,', '[ebp+var_14]']
push ['ecx']
mov ['edx,', '[ebp+var_18]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+0Ch]']
push ['ecx']
call ['_ldisc_update']
add ['esp,', '0Ch']
jmp ['loc_DC7']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx],', '0']
jnz ['short', 'loc_35D']
push ['98h']
push ['offset', '$SG85904']
push ['offset', '$SG85905']
call ['__wassert']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+0Ch]']
push ['edx']
call ['_frontend_keypress']
add ['esp,', '4']
cmp ['[ebp+arg_C],', '0']
jz ['short', 'loc_380']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_term_nopaste']
add ['esp,', '4']
cmp ['[ebp+arg_8],', '0']
jge ['short', 'loc_39C']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_strlen']
add ['esp,', '4']
mov ['[ebp+arg_8],', 'eax']
mov ['[ebp+var_8],', '100h']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+20h],', '0']
jz ['short', 'loc_3EE']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+20h],', '2']
jnz ['loc_B6A']
mov ['esi,', 'esp']
push ['0']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+2Ch]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_3EE']
push ['0']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
push ['edx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['loc_B6A']
mov ['eax,', '[ebp+arg_8]']
mov ['[ebp+var_1C],', 'eax']
mov ['ecx,', '[ebp+arg_8]']
sub ['ecx,', '1']
mov ['[ebp+arg_8],', 'ecx']
cmp ['[ebp+var_1C],', '0']
jz ['loc_B65']
mov ['edx,', '[ebp+arg_4]']
movzx ['eax,', 'byte', 'ptr', '[edx]']
add ['eax,', '[ebp+var_8]']
mov ['[ebp+var_C],', 'eax']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '1']
mov ['[ebp+arg_4],', 'ecx']
cmp ['[ebp+arg_C],', '0']
jnz ['short', 'loc_434']
cmp ['[ebp+var_C],', '0Dh']
jnz ['short', 'loc_434']
mov ['edx,', '[ebp+var_C]']
add ['edx,', '100h']
mov ['[ebp+var_C],', 'edx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+30h],', '0']
jz ['short', 'loc_446']
mov ['[ebp+var_20],', '20h']
jmp ['short', 'loc_44C']
mov ['ecx,', '[ebp+var_C]']
mov ['[ebp+var_20],', 'ecx']
mov ['edx,', '[ebp+var_20]']
mov ['[ebp+var_24],', 'edx']
cmp ['[ebp+var_24],', '15h']
jg ['short', 'loc_486']
cmp ['[ebp+var_24],', '15h']
jz ['$LN61']
mov ['eax,', '[ebp+var_24]']
sub ['eax,', '3']
mov ['[ebp+var_24],', 'eax']
cmp ['[ebp+var_24],', '0Fh']
ja ['$default_case$85947']
mov ['ecx,', '[ebp+var_24]']
movzx ['edx,', 'ds:$LN104[ecx]']
jmp ['ds:$LN106[edx*4]']
cmp ['[ebp+var_24],', '108h']
jg ['short', 'loc_4B5']
cmp ['[ebp+var_24],', '108h']
jz ['short', 'loc_4D0']
mov ['eax,', '[ebp+var_24]']
sub ['eax,', '16h']
mov ['[ebp+var_24],', 'eax']
cmp ['[ebp+var_24],', '6']
ja ['$default_case$85947']
mov ['ecx,', '[ebp+var_24]']
jmp ['ds:$LN107[ecx*4]']
cmp ['[ebp+var_24],', '10Dh']
jz ['loc_973']
cmp ['[ebp+var_24],', '17Fh']
jz ['short', 'loc_4D0']
jmp ['$default_case$85947']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+28h],', '0']
jle ['loc_586']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '0']
jz ['short', 'loc_527']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '2']
jnz ['short', 'loc_552']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+2Ch]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_527']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
push ['edx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_552']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
movzx ['ecx,', 'byte', 'ptr', '[eax+ecx-1]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
push ['edx']
call ['_plen']
add ['esp,', '8']
push ['eax']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_bsb']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
sub ['edx,', '1']
mov ['eax,', '[ebp+var_4]']
mov ['[eax+28h],', 'edx']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+24h]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
movzx ['edx,', 'byte', 'ptr', '[edx+ecx]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_char_start']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['loc_4DD']
jmp ['loc_B60']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+28h],', '0']
jle ['loc_667']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '0']
jz ['short', 'loc_5E2']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '2']
jnz ['short', 'loc_60D']
mov ['esi,', 'esp']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+2Ch]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_5E2']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_60D']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+24h]']
movzx ['eax,', 'byte', 'ptr', '[edx+eax-1]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_plen']
add ['esp,', '8']
push ['eax']
mov ['edx,', '[ebp+var_4]']
push ['edx']
call ['_bsb']
add ['esp,', '8']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
sub ['ecx,', '1']
mov ['edx,', '[ebp+var_4]']
mov ['[edx+28h],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+28h],', '0']
jle ['short', 'loc_662']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+24h]']
movzx ['edx,', 'byte', 'ptr', '[ecx+edx-1]']
push ['edx']
call ['_isspace']
add ['esp,', '4']
test ['eax,', 'eax']
jz ['short', 'loc_662']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+24h]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
movzx ['ecx,', 'byte', 'ptr', '[ecx+eax]']
push ['ecx']
call ['_isspace']
add ['esp,', '4']
test ['eax,', 'eax']
jnz ['short', 'loc_662']
jmp ['short', 'loc_667']
jmp ['$LN68']
jmp ['loc_B60']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+28h],', '0']
jle ['loc_702']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '0']
jz ['short', 'loc_6C3']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '2']
jnz ['short', 'loc_6EE']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+2Ch]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_6C3']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
push ['edx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_6EE']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
movzx ['ecx,', 'byte', 'ptr', '[eax+ecx-1]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
push ['edx']
call ['_plen']
add ['esp,', '8']
push ['eax']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_bsb']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
sub ['edx,', '1']
mov ['eax,', '[ebp+var_4]']
mov ['[eax+28h],', 'edx']
jmp ['$LN61']
mov ['esi,', 'esp']
push ['4']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+18h]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+10h],', '0']
jnz ['short', 'loc_730']
jmp ['$default_case$85947']
cmp ['[ebp+var_C],', '3']
jnz ['short', 'loc_756']
mov ['esi,', 'esp']
push ['9']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+18h]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+var_C],', '1Ah']
jnz ['short', 'loc_77C']
mov ['esi,', 'esp']
push ['0Ah']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+18h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
cmp ['[ebp+var_C],', '1Ch']
jnz ['short', 'loc_7A2']
mov ['esi,', 'esp']
push ['7']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+18h]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['loc_B60']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '0']
jz ['short', 'loc_7F5']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '2']
jnz ['loc_841']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+2Ch]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_7F5']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
push ['eax']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_841']
push ['4']
push ['offset', '$SG85956']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_c_write']
add ['esp,', '0Ch']
mov ['[ebp+var_10],', '0']
jmp ['short', 'loc_81A']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '1']
mov ['[ebp+var_10],', 'edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_10]']
cmp ['ecx,', '[eax+28h]']
jge ['short', 'loc_841']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
mov ['ecx,', '[ebp+var_10]']
movzx ['edx,', 'byte', 'ptr', '[eax+ecx]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_pwrite']
add ['esp,', '8']
jmp ['short', 'loc_811']
jmp ['loc_B60']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+30h],', '1']
jmp ['loc_B60']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+28h],', '0']
jnz ['short', 'loc_880']
mov ['esi,', 'esp']
push ['0Ch']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+18h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_8B6']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+24h]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+0Ch]']
call ['ecx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx+28h],', '0']
jmp ['loc_B60']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+18h],', '0']
jnz ['$default_case$85947']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+28h],', '0']
jle ['$default_case$85947']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+24h]']
movsx ['eax,', 'byte', 'ptr', '[edx+eax-1]']
cmp ['eax,', '0Dh']
jnz ['$default_case$85947']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '0']
jz ['short', 'loc_939']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '2']
jnz ['short', 'loc_964']
mov ['esi,', 'esp']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+2Ch]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_939']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
push ['eax']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_964']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+24h]']
movzx ['edx,', 'byte', 'ptr', '[ecx+edx-1]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_plen']
add ['esp,', '8']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_bsb']
add ['esp,', '8']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+28h],', 'eax']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+28h],', '0']
jle ['short', 'loc_9A8']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+18h],', '0']
jnz ['short', 'loc_9D8']
mov ['esi,', 'esp']
push ['2']
push ['offset', '$SG85972']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_A31']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+18h],', '1']
jnz ['short', 'loc_A0C']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+14h],', '0']
jz ['short', 'loc_A0C']
mov ['esi,', 'esp']
push ['10h']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+18h]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_A31']
mov ['esi,', 'esp']
push ['1']
push ['offset', '$SG85976']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '0']
jz ['short', 'loc_A7B']
mov ['ecx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[ecx+1Ch],', '2']
jnz ['short', 'loc_A8E']
mov ['esi,', 'esp']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+2Ch]']
call ['eax']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_A7B']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
push ['edx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_A8E']
push ['2']
push ['offset', '$SG85980']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_c_write']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+28h],', '0']
jmp ['loc_B60']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[edx+28h]']
cmp ['ecx,', '[eax+2Ch]']
jl ['short', 'loc_ADA']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
add ['eax,', '100h']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+2Ch],', 'eax']
push ['1']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+2Ch]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+24h]']
push ['edx']
call ['_saferealloc']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+24h],', 'eax']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
mov ['cl,', 'byte', 'ptr', '[ebp+var_C]']
mov ['[eax+edx],', 'cl']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
add ['eax,', '1']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+28h],', 'eax']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '0']
jz ['short', 'loc_B45']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '2']
jnz ['short', 'loc_B56']
mov ['esi,', 'esp']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+2Ch]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_B45']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_B56']
movzx ['edx,', 'byte', 'ptr', '[ebp+var_C]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_pwrite']
add ['esp,', '8']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+30h],', '0']
jmp ['loc_3EE']
jmp ['loc_DC7']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+28h],', '0']
jz ['short', 'loc_BE4']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+24h]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+28h],', '0']
jle ['short', 'loc_BE4']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+28h]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+24h]']
movzx ['edx,', 'byte', 'ptr', '[ecx+edx-1]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
push ['eax']
call ['_plen']
add ['esp,', '8']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_bsb']
add ['esp,', '8']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+28h]']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+28h],', 'eax']
jmp ['short', 'loc_B9F']
cmp ['[ebp+arg_8],', '0']
jle ['loc_DC7']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+1Ch],', '0']
jz ['short', 'loc_C38']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+1Ch],', '2']
jnz ['short', 'loc_C4C']
mov ['esi,', 'esp']
push ['1']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+2Ch]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
test ['eax,', 'eax']
jnz ['short', 'loc_C38']
push ['1']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
push ['ecx']
call ['_term_ldisc']
add ['esp,', '8']
test ['eax,', 'eax']
jz ['short', 'loc_C4C']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['_c_write']
add ['esp,', '0Ch']
cmp ['[ebp+var_8],', '0']
jz ['loc_DA1']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+18h],', '1']
jnz ['loc_DA1']
cmp ['[ebp+arg_8],', '1']
jnz ['loc_DA1']
mov ['eax,', '[ebp+arg_4]']
movsx ['ecx,', 'byte', 'ptr', '[eax]']
mov ['[ebp+var_28],', 'ecx']
mov ['edx,', '[ebp+var_28]']
sub ['edx,', '3']
mov ['[ebp+var_28],', 'edx']
cmp ['[ebp+var_28],', '7Ch']
ja ['$LN2']
mov ['eax,', '[ebp+var_28]']
movzx ['ecx,', 'ds:$LN105[eax]']
jmp ['ds:$LN108[ecx*4]']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+18h],', '1']
jnz ['short', 'loc_CCE']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+14h],', '0']
jz ['short', 'loc_CCE']
mov ['esi,', 'esp']
push ['10h']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+18h]']
call ['edx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_CF3']
mov ['esi,', 'esp']
push ['1']
push ['offset', '$SG86007']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+0Ch]']
call ['ecx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['loc_D9F']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+10h],', '0']
jz ['short', '$LN6']
mov ['esi,', 'esp']
push ['3']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+18h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_D9F']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+10h],', '0']
jz ['short', '$LN4']
mov ['esi,', 'esp']
push ['9']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+18h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_D9F']
mov ['edx,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[edx+10h],', '0']
jz ['short', '$LN2']
mov ['esi,', 'esp']
push ['0Ah']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+8]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[eax+18h]']
call ['ecx']
add ['esp,', '8']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_D9F']
mov ['esi,', 'esp']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
mov ['edx,', '[ecx+0Ch]']
call ['edx']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
jmp ['short', 'loc_DC7']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+8]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+4]']
mov ['eax,', '[edx+0Ch]']
call ['eax']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['edi']
pop ['esi']
add ['esp,', '28h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_c_write        proc near               
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
push ['0']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+0Ch]']
push ['eax']
call ['_from_backend']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn
endp
_plen           proc near               
push ['ebp']
mov ['ebp,', 'esp']
movzx ['eax,', '[ebp+arg_4]']
cmp ['eax,', '20h']
jl ['short', 'loc_EF5']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '7Eh']
jle ['short', 'loc_F23']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '0A0h']
jl ['short', 'loc_F32']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
cmp ['dword', 'ptr', '[ecx+0DCh],', '0']
jnz ['short', 'loc_F32']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+1090h]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0FDE9h']
jz ['short', 'loc_F32']
mov ['eax,', '1']
jmp ['loc_FC2']
jmp ['loc_FC2']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '80h']
jge ['short', 'loc_F47']
mov ['eax,', '2']
jmp ['short', 'loc_FC2']
jmp ['short', 'loc_FC2']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
cmp ['dword', 'ptr', '[ecx+0DCh],', '0']
jnz ['short', 'loc_F69']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+1090h]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0FDE9h']
jnz ['short', 'loc_F7E']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '0C0h']
jl ['short', 'loc_F7E']
mov ['eax,', '1']
jmp ['short', 'loc_FC2']
jmp ['short', 'loc_FC2']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
cmp ['dword', 'ptr', '[ecx+0DCh],', '0']
jnz ['short', 'loc_FA0']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+1090h]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0FDE9h']
jnz ['short', 'loc_FBD']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '80h']
jl ['short', 'loc_FBD']
movzx ['eax,', '[ebp+arg_4]']
cmp ['eax,', '0C0h']
jge ['short', 'loc_FBD']
xor ['eax,', 'eax']
jmp ['short', 'loc_FC2']
jmp ['short', 'loc_FC2']
mov ['eax,', '4']
pop ['ebp']
retn
endp
_pwrite         proc near               
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '24h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_24],', 'eax']
mov ['[ebp+var_20],', 'eax']
mov ['dword', 'ptr', '[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
movzx ['eax,', '[ebp+arg_4]']
cmp ['eax,', '20h']
jl ['short', 'loc_1012']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '7Eh']
jle ['short', 'loc_106E']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+0DCh],', '0']
jnz ['short', 'loc_1040']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
mov ['eax,', '[edx+1090h]']
cmp ['dword', 'ptr', '[eax+0Ch],', '0FDE9h']
jz ['short', 'loc_1040']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '0A0h']
jge ['short', 'loc_106E']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
cmp ['dword', 'ptr', '[eax+0DCh],', '0']
jnz ['short', 'loc_1062']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
mov ['eax,', '[edx+1090h]']
cmp ['dword', 'ptr', '[eax+0Ch],', '0FDE9h']
jnz ['short', 'loc_1082']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '80h']
jl ['short', 'loc_1082']
push ['1']
lea ['edx,', '[ebp+arg_4]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_c_write']
add ['esp,', '0Ch']
jmp ['short', 'loc_10F0']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '80h']
jge ['short', 'loc_10C8']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '7Fh']
jnz ['short', 'loc_10A0']
mov ['[ebp+var_24],', '3Fh']
jmp ['short', 'loc_10AA']
movzx ['eax,', '[ebp+arg_4]']
add ['eax,', '40h']
mov ['[ebp+var_24],', 'eax']
mov ['cl,', 'byte', 'ptr', '[ebp+var_24]']
mov ['byte', 'ptr', '[ebp+var_C+1],', 'cl']
mov ['byte', 'ptr', '[ebp+var_C],', '5Eh']
push ['2']
lea ['edx,', '[ebp+var_C]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_c_write']
add ['esp,', '0Ch']
jmp ['short', 'loc_10F0']
movzx ['ecx,', '[ebp+arg_4]']
push ['ecx']
push ['offset', '$SG85836']
lea ['edx,', '[ebp+var_1C]']
push ['edx']
call ['_sprintf']
add ['esp,', '0Ch']
push ['4']
lea ['eax,', '[ebp+var_1C]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_c_write']
add ['esp,', '0Ch']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN16']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '24h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_char_start     proc near               
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
cmp ['dword', 'ptr', '[ecx+0DCh],', '0']
jnz ['short', 'loc_117D']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
mov ['ecx,', '[eax+1090h]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0FDE9h']
jnz ['short', 'loc_11AB']
movzx ['edx,', '[ebp+arg_4]']
cmp ['edx,', '80h']
jl ['short', 'loc_119D']
movzx ['eax,', '[ebp+arg_4]']
cmp ['eax,', '0C0h']
jge ['short', 'loc_119D']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_11A4']
mov ['[ebp+var_4],', '1']
mov ['eax,', '[ebp+var_4]']
jmp ['short', 'loc_11B0']
jmp ['short', 'loc_11B0']
mov ['eax,', '1']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
_bsb            proc near               
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_4]']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+arg_4]']
sub ['ecx,', '1']
mov ['[ebp+arg_4],', 'ecx']
cmp ['[ebp+var_4],', '0']
jz ['short', 'loc_11F5']
push ['3']
push ['offset', '$SG85855']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_c_write']
add ['esp,', '0Ch']
jmp ['short', 'loc_11CB']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp