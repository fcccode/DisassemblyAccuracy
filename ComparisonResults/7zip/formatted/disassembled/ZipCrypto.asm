?CryptoSetPassword@CCipher@NZip@NCrypto@@UAGJPBEI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_4],', '12345678h']
mov ['[ebp+var_8],', '23456789h']
mov ['[ebp+var_C],', '34567890h']
mov ['[ebp+var_10],', '0']
jmp ['short', 'loc_3E']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '1']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_10]']
cmp ['ecx,', '[ebp+arg_8]']
jnb ['short', 'loc_A3']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '[ebp+var_10]']
movzx ['eax,', 'byte', 'ptr', '[edx]']
xor ['eax,', '[ebp+var_4]']
and ['eax,', '0FFh']
mov ['ecx,', '[ebp+var_4]']
shr ['ecx,', '8']
xor ['ecx,', 'dword', 'ptr', 'ds:_g_CrcTable[eax*4]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+var_4]']
and ['edx,', '0FFh']
add ['edx,', '[ebp+var_8]']
imul ['edx,', '8088405h']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+var_8]']
shr ['eax,', '18h']
movzx ['ecx,', 'al']
xor ['ecx,', '[ebp+var_C]']
and ['ecx,', '0FFh']
mov ['edx,', '[ebp+var_C]']
shr ['edx,', '8']
xor ['edx,', 'dword', 'ptr', 'ds:_g_CrcTable[ecx*4]']
mov ['[ebp+var_C],', 'edx']
jmp ['short', 'loc_35']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[ebp+var_4]']
mov ['[eax+14h],', 'ecx']
mov ['edx,', '[ebp+this]']
mov ['eax,', '[ebp+var_8]']
mov ['[edx+18h],', 'eax']
mov ['ecx,', '[ebp+this]']
mov ['edx,', '[ebp+var_C]']
mov ['[ecx+1Ch],', 'edx']
xor ['eax,', 'eax']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?Init@CCipher@NZip@NCrypto@@UAGJXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
xor ['eax,', 'eax']
pop ['ebp']
retn ['4']
endp
?WriteHeader_Check16@CEncoder@NZip@NCrypto@@QAEJPAUISequentialOutStream@@G@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '1Ch']
push ['esi']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_1C],', 'eax']
mov ['dword', 'ptr', '[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['[ebp+var_8],', 'ecx']
push ['0Bh']
lea ['eax,', '[ebp+var_18]']
push ['eax']
mov ['ecx,', 'offset', '?g_RandomGenerator@@3VCRandomGenerator@@A']
call ['?Generate@CRandomGenerator@@QAEXPAEI@Z']
movzx ['ecx,', '[ebp+arg_4]']
sar ['ecx,', '8']
mov ['byte', 'ptr', '[ebp+var_10+3],', 'cl']
mov ['ecx,', '[ebp+var_8]']
call ['?RestoreKeys@CCipher@NZip@NCrypto@@IAEXXZ']
mov ['esi,', 'esp']
push ['0Ch']
lea ['edx,', '[ebp+var_18]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+var_8]']
push ['edx']
mov ['eax,', '[ecx+10h]']
call ['eax']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
push ['0Ch']
lea ['ecx,', '[ebp+var_18]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN5']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['esi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '1Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?Filter@CEncoder@NZip@NCrypto@@UAGIPAEI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '18h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+0Ch]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+10h]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+14h]']
mov ['[ebp+var_C],', 'edx']
mov ['[ebp+var_10],', '0']
jmp ['short', 'loc_1EA']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '1']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_10]']
cmp ['ecx,', '[ebp+arg_8]']
jnb ['loc_283']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '[ebp+var_10]']
mov ['al,', '[edx]']
mov ['byte', 'ptr', '[ebp+var_14+3],', 'al']
mov ['ecx,', '[ebp+var_C]']
or ['ecx,', '2']
mov ['[ebp+var_18],', 'ecx']
movzx ['edx,', 'byte', 'ptr', '[ebp+var_14+3]']
mov ['eax,', '[ebp+var_18]']
xor ['eax,', '1']
imul ['eax,', '[ebp+var_18]']
shr ['eax,', '8']
movzx ['ecx,', 'al']
xor ['edx,', 'ecx']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '[ebp+var_10]']
mov ['[eax],', 'dl']
movzx ['ecx,', 'byte', 'ptr', '[ebp+var_14+3]']
xor ['ecx,', '[ebp+var_4]']
and ['ecx,', '0FFh']
mov ['edx,', '[ebp+var_4]']
shr ['edx,', '8']
xor ['edx,', 'dword', 'ptr', 'ds:_g_CrcTable[ecx*4]']
mov ['[ebp+var_4],', 'edx']
mov ['eax,', '[ebp+var_4]']
and ['eax,', '0FFh']
add ['eax,', '[ebp+var_8]']
imul ['eax,', '8088405h']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
shr ['ecx,', '18h']
movzx ['edx,', 'cl']
xor ['edx,', '[ebp+var_C]']
and ['edx,', '0FFh']
mov ['eax,', '[ebp+var_C]']
shr ['eax,', '8']
xor ['eax,', 'dword', 'ptr', 'ds:_g_CrcTable[edx*4]']
mov ['[ebp+var_C],', 'eax']
jmp ['loc_1E1']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_4]']
mov ['[ecx+0Ch],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax+10h],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_C]']
mov ['[edx+14h],', 'eax']
mov ['eax,', '[ebp+arg_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?ReadHeader@CDecoder@NZip@NCrypto@@QAEJPAUISequentialInStream@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
push ['0Ch']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '24h']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?Init_BeforeDecode@CDecoder@NZip@NCrypto@@QAEXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?RestoreKeys@CCipher@NZip@NCrypto@@IAEXXZ']
mov ['esi,', 'esp']
push ['0Ch']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '24h']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
push ['eax']
mov ['ecx,', '[edx+10h]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Filter@CDecoder@NZip@NCrypto@@UAGIPAEI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '18h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+0Ch]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+10h]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+14h]']
mov ['[ebp+var_C],', 'edx']
mov ['[ebp+var_10],', '0']
jmp ['short', 'loc_37A']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '1']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_10]']
cmp ['ecx,', '[ebp+arg_8]']
jnb ['loc_413']
mov ['edx,', '[ebp+var_C]']
or ['edx,', '2']
mov ['[ebp+var_14],', 'edx']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '[ebp+var_10]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
mov ['edx,', '[ebp+var_14]']
xor ['edx,', '1']
imul ['edx,', '[ebp+var_14]']
shr ['edx,', '8']
movzx ['eax,', 'dl']
xor ['ecx,', 'eax']
mov ['byte', 'ptr', '[ebp+var_18+3],', 'cl']
movzx ['ecx,', 'byte', 'ptr', '[ebp+var_18+3]']
xor ['ecx,', '[ebp+var_4]']
and ['ecx,', '0FFh']
mov ['edx,', '[ebp+var_4]']
shr ['edx,', '8']
xor ['edx,', 'dword', 'ptr', 'ds:_g_CrcTable[ecx*4]']
mov ['[ebp+var_4],', 'edx']
mov ['eax,', '[ebp+var_4]']
and ['eax,', '0FFh']
add ['eax,', '[ebp+var_8]']
imul ['eax,', '8088405h']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_8]']
shr ['ecx,', '18h']
movzx ['edx,', 'cl']
xor ['edx,', '[ebp+var_C]']
and ['edx,', '0FFh']
mov ['eax,', '[ebp+var_C]']
shr ['eax,', '8']
xor ['eax,', 'dword', 'ptr', 'ds:_g_CrcTable[edx*4]']
mov ['[ebp+var_C],', 'eax']
mov ['ecx,', '[ebp+arg_4]']
add ['ecx,', '[ebp+var_10]']
mov ['dl,', 'byte', 'ptr', '[ebp+var_18+3]']
mov ['[ecx],', 'dl']
jmp ['loc_371']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_4]']
mov ['[eax+0Ch],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_8]']
mov ['[edx+10h],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_C]']
mov ['[ecx+14h],', 'edx']
mov ['eax,', '[ebp+arg_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?RestoreKeys@CCipher@NZip@NCrypto@@IAEXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+18h]']
mov ['[eax+0Ch],', 'edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+1Ch]']
mov ['[eax+10h],', 'edx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+20h]']
mov ['[eax+14h],', 'edx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp