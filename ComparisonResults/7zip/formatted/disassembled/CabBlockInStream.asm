?Create@CCabBlockInStream@NCab@NArchive@@QAE_NXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+8],', '0']
jnz ['short', 'loc_27']
push ['10000h']
call ['_MyAlloc@4']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+8],', 'eax']
mov ['edx,', '[ebp+var_4]']
xor ['eax,', 'eax']
cmp ['dword', 'ptr', '[edx+8],', '0']
setnz ['al']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1CCabBlockInStream@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7CCabBlockInStream@NCab@NArchive@@6B@']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+8]']
push ['edx']
call ['_MyFree@4']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?PreRead@CCabBlockInStream@NCab@NArchive@@QAEJPAUISequentialInStream@@AAI1@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '128h']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_128]']
mov ['ecx,', '4Ah']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_8],', 'ecx']
mov ['[ebp+var_C],', '8']
mov ['[ebp+var_10],', '100h']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+14h]']
add ['ecx,', '8']
push ['ecx']
lea ['edx,', '[ebp+var_11C]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['?ReadStream_FALSE@@YGJPAUISequentialInStream@@PAXI@Z']
mov ['[ebp+var_124],', 'eax']
cmp ['[ebp+var_124],', '0']
jz ['short', 'loc_FE']
mov ['eax,', '[ebp+var_124]']
jmp ['loc_223']
movzx ['ecx,', '[ebp+var_118]']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx],', 'ecx']
movzx ['eax,', '[ebp+var_116]']
mov ['ecx,', '[ebp+arg_8]']
mov ['[ecx],', 'eax']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '10000h']
sub ['eax,', '[edx+0Ch]']
mov ['ecx,', '[ebp+arg_4]']
cmp ['[ecx],', 'eax']
jbe ['short', 'loc_132']
mov ['eax,', '1']
jmp ['loc_223']
mov ['edx,', '[ebp+arg_4]']
mov ['eax,', '[edx]']
push ['eax']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+8]']
mov ['eax,', '[ebp+var_8]']
add ['edx,', '[eax+0Ch]']
push ['edx']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['?ReadStream_FALSE@@YGJPAUISequentialInStream@@PAXI@Z']
mov ['[ebp+var_128],', 'eax']
cmp ['[ebp+var_128],', '0']
jz ['short', 'loc_168']
mov ['eax,', '[ebp+var_128]']
jmp ['loc_223']
mov ['edx,', '[ebp+var_8]']
movzx ['eax,', 'byte', 'ptr', '[edx+18h]']
test ['eax,', 'eax']
jz ['short', 'loc_1CC']
mov ['ecx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[ecx+0Ch],', '0']
jnz ['short', 'loc_1B2']
mov ['edx,', '[ebp+arg_4]']
cmp ['dword', 'ptr', '[edx],', '2']
jb ['short', 'loc_1A1']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
cmp ['edx,', '43h']
jnz ['short', 'loc_1A1']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
movzx ['edx,', 'byte', 'ptr', '[ecx+1]']
cmp ['edx,', '4Bh']
jz ['short', 'loc_1A8']
mov ['eax,', '1']
jmp ['short', 'loc_223']
mov ['eax,', '[ebp+var_8]']
mov ['dword', 'ptr', '[eax+10h],', '2']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+0Ch]']
mov ['eax,', '[ebp+arg_4]']
add ['edx,', '[eax]']
cmp ['edx,', '800Ch']
jbe ['short', 'loc_1CC']
mov ['eax,', '1']
jmp ['short', 'loc_223']
cmp ['[ebp+var_11C],', '0']
jz ['short', 'loc_210']
mov ['ecx,', '[ebp+var_8]']
mov ['edx,', '[ecx+14h]']
add ['edx,', '8']
push ['edx']
lea ['eax,', '[ebp+var_11C]']
push ['eax']
call ['?CheckSum@NCab@NArchive@@YGIPBEI@Z']
mov ['esi,', 'eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ecx]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+8]']
mov ['edx,', '[ebp+var_8]']
add ['ecx,', '[edx+0Ch]']
push ['ecx']
call ['?CheckSum@NCab@NArchive@@YGIPBEI@Z']
cmp ['esi,', 'eax']
jz ['short', 'loc_210']
mov ['eax,', '1']
jmp ['short', 'loc_223']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax+0Ch]']
mov ['edx,', '[ebp+arg_4]']
add ['ecx,', '[edx]']
mov ['eax,', '[ebp+var_8]']
mov ['[eax+0Ch],', 'ecx']
xor ['eax,', 'eax']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN15']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '128h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?CheckSum@NCab@NArchive@@YGIPBEI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+arg_4]']
shr ['eax,', '2']
mov ['[ebp+var_8],', 'eax']
jmp ['short', 'loc_29F']
mov ['ecx,', '[ebp+var_8]']
sub ['ecx,', '1']
mov ['[ebp+var_8],', 'ecx']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_2BB']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_4]']
xor ['eax,', '[edx]']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '4']
mov ['[ebp+arg_0],', 'ecx']
jmp ['short', 'loc_296']
mov ['edx,', '[ebp+arg_4]']
and ['edx,', '3']
mov ['[ebp+arg_4],', 'edx']
cmp ['[ebp+arg_4],', '2']
jbe ['short', 'loc_2E2']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
shl ['ecx,', '10h']
xor ['ecx,', '[ebp+var_4]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '1']
mov ['[ebp+arg_0],', 'edx']
cmp ['[ebp+arg_4],', '1']
jbe ['short', 'loc_300']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
shl ['ecx,', '8']
xor ['ecx,', '[ebp+var_4]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '1']
mov ['[ebp+arg_0],', 'edx']
cmp ['[ebp+arg_4],', '0']
jbe ['short', 'loc_31B']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
xor ['ecx,', '[ebp+var_4]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
add ['edx,', '1']
mov ['[ebp+arg_0],', 'edx']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?Read@CCabBlockInStream@NCab@NArchive@@UAGJPAXIPAI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
cmp ['[ebp+Size],', '0']
jz ['short', 'loc_38A']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[ebp+this]']
mov ['edx,', '[eax+0Ch]']
sub ['edx,', '[ecx+10h]']
mov ['[ebp+var_4],', 'edx']
mov ['eax,', '[ebp+Size]']
cmp ['eax,', '[ebp+var_4]']
jbe ['short', 'loc_35E']
mov ['ecx,', '[ebp+var_4]']
mov ['[ebp+Size],', 'ecx']
mov ['edx,', '[ebp+Size]']
push ['edx']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[eax+8]']
mov ['edx,', '[ebp+this]']
add ['ecx,', '[edx+10h]']
push ['ecx']
mov ['eax,', '[ebp+Dst]']
push ['eax']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+this]']
mov ['edx,', '[ecx+10h]']
add ['edx,', '[ebp+Size]']
mov ['eax,', '[ebp+this]']
mov ['[eax+10h],', 'edx']
cmp ['[ebp+arg_C],', '0']
jz ['short', 'loc_398']
mov ['ecx,', '[ebp+arg_C]']
mov ['edx,', '[ebp+Size]']
mov ['[ecx],', 'edx']
xor ['eax,', 'eax']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
?QueryInterface@CCabBlockInStream@NCab@NArchive@@UAGJABU_GUID@@PAPAX@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '0']
push ['offset', '_IID_IUnknown']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_588']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+this]']
mov ['[edx],', 'eax']
jmp ['short', 'loc_58F']
mov ['eax,', '80004002h']
jmp ['short', 'loc_5A0']
mov ['ecx,', '[ebp+this]']
mov ['edx,', '[ecx+4]']
add ['edx,', '1']
mov ['eax,', '[ebp+this]']
mov ['[eax+4],', 'edx']
xor ['eax,', 'eax']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['0Ch']
endp
?AddRef@CCabBlockInStream@NCab@NArchive@@UAGKXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '1']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+this]']
mov ['eax,', '[ebp+var_4]']
mov ['[edx+4],', 'eax']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?Release@CCabBlockInStream@NCab@NArchive@@UAGKXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[eax+4]']
sub ['ecx,', '1']
mov ['[ebp+var_C],', 'ecx']
mov ['edx,', '[ebp+this]']
mov ['eax,', '[ebp+var_C]']
mov ['[edx+4],', 'eax']
cmp ['[ebp+var_C],', '0']
jz ['short', 'loc_612']
mov ['ecx,', '[ebp+this]']
mov ['eax,', '[ecx+4]']
jmp ['short', 'loc_63C']
mov ['edx,', '[ebp+this]']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '0']
jz ['short', 'loc_633']
push ['1']
mov ['ecx,', '[ebp+var_4]']
call ['??_GCCabBlockInStream@NCab@NArchive@@QAEPAXI@Z']
mov ['[ebp+var_10],', 'eax']
jmp ['short', 'loc_63A']
mov ['[ebp+var_10],', '0']
xor ['eax,', 'eax']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??_GCCabBlockInStream@NCab@NArchive@@QAEPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CCabBlockInStream@NCab@NArchive@@QAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_676']
mov ['ecx,', '[ebp+var_4]']
push ['ecx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
___@8           proc near               
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+Buf2]']
push ['eax']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['_IsEqualGUID@8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['8']
endp
_IsEqualGUID@8  proc near               
push ['ebp']
mov ['ebp,', 'esp']
push ['10h']
mov ['eax,', '[ebp+Buf2]']
push ['eax']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['_memcmp']
add ['esp,', '0Ch']
neg ['eax']
sbb ['eax,', 'eax']
add ['eax,', '1']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['8']
endp
