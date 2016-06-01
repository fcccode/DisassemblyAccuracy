_Lzma2Dec_AllocateProbs@12 proc near    
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
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
lea ['eax,', '[ebp+var_10]']
push ['eax']
movzx ['ecx,', '[ebp+arg_4]']
push ['ecx']
call ['_Lzma2Dec_GetOldProps@8']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jz ['short', 'loc_43']
mov ['eax,', '[ebp+var_18]']
jmp ['short', 'loc_56']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
push ['5']
lea ['eax,', '[ebp+var_10]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_LzmaDec_AllocateProbs@16']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN6']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '18h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
_Lzma2Dec_GetOldProps@8 proc near       
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
push ['esi']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
movzx ['eax,', '[ebp+arg_0]']
cmp ['eax,', '28h']
jle ['short', 'loc_C5']
mov ['eax,', '4']
jmp ['short', 'loc_12F']
movzx ['ecx,', '[ebp+arg_0]']
cmp ['ecx,', '28h']
jnz ['short', 'loc_D7']
mov ['[ebp+var_8],', '0FFFFFFFFh']
jmp ['short', 'loc_F4']
movzx ['esi,', '[ebp+arg_0]']
and ['esi,', '1']
or ['esi,', '2']
movzx ['eax,', '[ebp+arg_0]']
cdq
sub ['eax,', 'edx']
sar ['eax,', '1']
add ['eax,', '0Bh']
mov ['ecx,', 'eax']
shl ['esi,', 'cl']
mov ['[ebp+var_8],', 'esi']
mov ['edx,', '[ebp+var_8]']
mov ['[ebp+var_4],', 'edx']
mov ['eax,', '[ebp+arg_4]']
mov ['byte', 'ptr', '[eax],', '4']
mov ['ecx,', '[ebp+arg_4]']
mov ['dl,', 'byte', 'ptr', '[ebp+var_4]']
mov ['[ecx+1],', 'dl']
mov ['eax,', '[ebp+var_4]']
shr ['eax,', '8']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx+2],', 'al']
mov ['edx,', '[ebp+var_4]']
shr ['edx,', '10h']
mov ['eax,', '[ebp+arg_4]']
mov ['[eax+3],', 'dl']
mov ['ecx,', '[ebp+var_4]']
shr ['ecx,', '18h']
mov ['edx,', '[ebp+arg_4]']
mov ['[edx+4],', 'cl']
xor ['eax,', 'eax']
pop ['esi']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
_Lzma2Dec_Allocate@12 proc near
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
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
lea ['eax,', '[ebp+var_10]']
push ['eax']
movzx ['ecx,', '[ebp+arg_4]']
push ['ecx']
call ['_Lzma2Dec_GetOldProps@8']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jz ['short', 'loc_183']
mov ['eax,', '[ebp+var_18]']
jmp ['short', 'loc_196']
mov ['edx,', '[ebp+arg_8]']
push ['edx']
push ['5']
lea ['eax,', '[ebp+var_10]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_LzmaDec_Allocate@16']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN6_0']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '18h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
_Lzma2Dec_Init@4 proc near              
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+78h],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+80h],', '1']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+84h],', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+88h],', '1']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_LzmaDec_Init@4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['4']
endp
_Lzma2Dec_DecodeToDic@24 proc near      
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '3Ch']
push ['edi']
lea ['edi,', '[ebp+var_3C]']
mov ['ecx,', '0Fh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[edx],', '0']
mov ['eax,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+78h],', '8']
jz ['loc_60D']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+24h]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+78h],', '9']
jnz ['short', 'loc_289']
mov ['eax,', '1']
jmp ['loc_618']
mov ['edx,', '[ebp+var_8]']
cmp ['edx,', '[ebp+arg_4]']
jnz ['short', 'loc_2A7']
cmp ['[ebp+arg_10],', '0']
jnz ['short', 'loc_2A7']
mov ['eax,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[eax],', '2']
xor ['eax,', 'eax']
jmp ['loc_618']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+78h],', '6']
jz ['short', 'loc_32F']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+78h],', '7']
jz ['short', 'loc_32F']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
cmp ['ecx,', '[ebp+var_4]']
jnz ['short', 'loc_2D3']
mov ['edx,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[edx],', '3']
xor ['eax,', 'eax']
jmp ['loc_618']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_C]']
mov ['[edx],', 'ecx']
mov ['eax,', '[ebp+Src]']
mov ['cl,', '[eax]']
mov ['[ebp+var_39],', 'cl']
mov ['edx,', '[ebp+Src]']
add ['edx,', '1']
mov ['[ebp+Src],', 'edx']
movzx ['eax,', '[ebp+var_39]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_Lzma2Dec_UpdateState@8']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+78h],', 'eax']
mov ['eax,', '[ebp+var_8]']
cmp ['eax,', '[ebp+arg_4]']
jnz ['short', 'loc_32A']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+78h],', '8']
jz ['short', 'loc_32A']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+78h],', '9']
mov ['eax,', '1']
jmp ['loc_618']
jmp ['loc_260']
mov ['eax,', '[ebp+arg_4]']
sub ['eax,', '[ebp+var_8]']
mov ['[ebp+var_C],', 'eax']
mov ['ecx,', '[ebp+arg_C]']
mov ['edx,', '[ebp+var_4]']
sub ['edx,', '[ecx]']
mov ['[ebp+Size],', 'edx']
mov ['[ebp+var_1C],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+74h]']
cmp ['ecx,', '[ebp+var_C]']
ja ['short', 'loc_365']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+74h]']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_1C],', '1']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[ecx+7Ch]']
and ['edx,', '80h']
jnz ['loc_47F']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
cmp ['ecx,', '[ebp+var_4]']
jnz ['short', 'loc_392']
mov ['edx,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[edx],', '3']
xor ['eax,', 'eax']
jmp ['loc_618']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+78h],', '6']
jnz ['short', 'loc_409']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[ecx+7Ch]']
sub ['edx,', '1']
neg ['edx']
sbb ['edx,', 'edx']
add ['edx,', '1']
mov ['[ebp+var_20],', 'edx']
jz ['short', 'loc_3CD']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+84h],', '1']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+88h],', '1']
jmp ['short', 'loc_3ED']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+80h],', '0']
jz ['short', 'loc_3ED']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+78h],', '9']
mov ['eax,', '1']
jmp ['loc_618']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+80h],', '0']
push ['0']
mov ['edx,', '[ebp+var_20]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_LzmaDec_InitDicAndState@12']
mov ['ecx,', '[ebp+Size]']
cmp ['ecx,', '[ebp+var_C]']
jbe ['short', 'loc_417']
mov ['edx,', '[ebp+var_C]']
mov ['[ebp+Size],', 'edx']
cmp ['[ebp+Size],', '0']
jnz ['short', 'loc_431']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+78h],', '9']
mov ['eax,', '1']
jmp ['loc_618']
mov ['ecx,', '[ebp+Size]']
push ['ecx']
mov ['edx,', '[ebp+Src]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_LzmaDec_UpdateWithUncompressed@12']
mov ['ecx,', '[ebp+Src]']
add ['ecx,', '[ebp+Size]']
mov ['[ebp+Src],', 'ecx']
mov ['edx,', '[ebp+arg_C]']
mov ['eax,', '[edx]']
add ['eax,', '[ebp+Size]']
mov ['ecx,', '[ebp+arg_C]']
mov ['[ecx],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+74h]']
sub ['eax,', '[ebp+Size]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+74h],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+74h]']
neg ['eax']
sbb ['eax,', 'eax']
and ['eax,', '7']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+78h],', 'eax']
jmp ['loc_608']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+78h],', '6']
jnz ['loc_521']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax+7Ch]']
sar ['ecx,', '5']
and ['ecx,', '3']
mov ['[ebp+var_2C],', 'ecx']
xor ['edx,', 'edx']
cmp ['[ebp+var_2C],', '3']
setz ['dl']
mov ['[ebp+var_30],', 'edx']
xor ['eax,', 'eax']
cmp ['[ebp+var_2C],', '0']
setnz ['al']
mov ['[ebp+var_34],', 'eax']
cmp ['[ebp+var_30],', '0']
jnz ['short', 'loc_4C6']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+80h],', '0']
jnz ['short', 'loc_4D8']
cmp ['[ebp+var_34],', '0']
jnz ['short', 'loc_4EC']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+84h],', '0']
jz ['short', 'loc_4EC']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+78h],', '9']
mov ['eax,', '1']
jmp ['loc_618']
mov ['ecx,', '[ebp+var_34]']
push ['ecx']
mov ['edx,', '[ebp+var_30]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_LzmaDec_InitDicAndState@12']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+80h],', '0']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+84h],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+78h],', '7']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+Size]']
cmp ['edx,', '[ecx+70h]']
jbe ['short', 'loc_535']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+70h]']
mov ['[ebp+Size],', 'ecx']
mov ['edx,', '[ebp+arg_14]']
push ['edx']
mov ['eax,', '[ebp+var_1C]']
push ['eax']
lea ['ecx,', '[ebp+Size]']
push ['ecx']
mov ['edx,', '[ebp+Src]']
push ['edx']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '[ebp+var_C]']
push ['eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_LzmaDec_DecodeToDic@24']
mov ['[ebp+var_28],', 'eax']
mov ['edx,', '[ebp+Src]']
add ['edx,', '[ebp+Size]']
mov ['[ebp+Src],', 'edx']
mov ['eax,', '[ebp+arg_C]']
mov ['ecx,', '[eax]']
add ['ecx,', '[ebp+Size]']
mov ['edx,', '[ebp+arg_C]']
mov ['[edx],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+70h]']
sub ['ecx,', '[ebp+Size]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+70h],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+24h]']
sub ['ecx,', '[ebp+var_8]']
mov ['[ebp+var_24],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+74h]']
sub ['eax,', '[ebp+var_24]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+74h],', 'eax']
mov ['edx,', '[ebp+var_28]']
mov ['[ebp+var_38],', 'edx']
cmp ['[ebp+var_38],', '0']
jz ['short', 'loc_5A9']
mov ['eax,', '[ebp+var_38]']
jmp ['short', 'loc_618']
mov ['eax,', '[ebp+arg_14]']
cmp ['dword', 'ptr', '[eax],', '3']
jnz ['short', 'loc_5B6']
mov ['eax,', '[ebp+var_28]']
jmp ['short', 'loc_618']
cmp ['[ebp+Size],', '0']
jnz ['short', 'loc_5F7']
cmp ['[ebp+var_24],', '0']
jnz ['short', 'loc_5F7']
mov ['ecx,', '[ebp+arg_14]']
cmp ['dword', 'ptr', '[ecx],', '4']
jnz ['short', 'loc_5DC']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+74h],', '0']
jnz ['short', 'loc_5DC']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+70h],', '0']
jz ['short', 'loc_5ED']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+78h],', '9']
mov ['eax,', '1']
jmp ['short', 'loc_618']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+78h],', '0']
mov ['eax,', '[ebp+arg_14]']
cmp ['dword', 'ptr', '[eax],', '4']
jnz ['short', 'loc_608']
mov ['ecx,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[ecx],', '2']
jmp ['loc_260']
mov ['edx,', '[ebp+arg_14]']
mov ['dword', 'ptr', '[edx],', '1']
xor ['eax,', 'eax']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN34']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
add ['esp,', '3Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['18h']
endp
_Lzma2Dec_UpdateState@8 proc near       
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+78h]']
mov ['[ebp+var_C],', 'ecx']
cmp ['[ebp+var_C],', '5']
ja ['loc_852']
mov ['edx,', '[ebp+var_C]']
jmp ['ds:$LN19[edx*4]']
mov ['eax,', '[ebp+arg_0]']
mov ['cl,', '[ebp+arg_4]']
mov ['[eax+7Ch],', 'cl']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[edx+7Ch]']
test ['eax,', 'eax']
jnz ['short', 'loc_6B2']
mov ['eax,', '8']
jmp ['loc_857']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[ecx+7Ch]']
and ['edx,', '80h']
jnz ['short', 'loc_6E6']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax+7Ch]']
and ['ecx,', '7Fh']
cmp ['ecx,', '2']
jle ['short', 'loc_6DA']
mov ['eax,', '9']
jmp ['loc_857']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+74h],', '0']
jmp ['short', 'loc_6F9']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax+7Ch]']
and ['ecx,', '1Fh']
shl ['ecx,', '10h']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+74h],', 'ecx']
mov ['eax,', '1']
jmp ['loc_857']
movzx ['eax,', '[ebp+arg_4]']
shl ['eax,', '8']
mov ['ecx,', '[ebp+arg_0]']
or ['eax,', '[ecx+74h]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+74h],', 'eax']
mov ['eax,', '2']
jmp ['loc_857']
movzx ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+arg_0]']
or ['eax,', '[ecx+74h]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+74h],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+74h]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+74h],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[eax+7Ch]']
and ['eax,', '80h']
neg ['eax']
sbb ['eax,', 'eax']
and ['eax,', '0FFFFFFFDh']
add ['eax,', '6']
jmp ['loc_857']
movzx ['ecx,', '[ebp+arg_4]']
shl ['ecx,', '8']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+70h],', 'ecx']
mov ['eax,', '4']
jmp ['loc_857']
movzx ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+arg_0]']
or ['eax,', '[ecx+70h]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+70h],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+70h]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+70h],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax+7Ch]']
sar ['ecx,', '5']
and ['ecx,', '3']
cmp ['ecx,', '2']
jl ['short', 'loc_7AB']
mov ['[ebp+var_10],', '5']
jmp ['short', 'loc_7C1']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+88h]']
neg ['eax']
sbb ['eax,', 'eax']
and ['eax,', '3']
add ['eax,', '6']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', '[ebp+var_10]']
jmp ['loc_857']
movzx ['ecx,', '[ebp+arg_4]']
cmp ['ecx,', '0E1h']
jl ['short', 'loc_7DC']
mov ['eax,', '9']
jmp ['short', 'loc_857']
movzx ['eax,', '[ebp+arg_4]']
cdq
mov ['ecx,', '9']
idiv ['ecx']
mov ['[ebp+var_4],', 'edx']
movzx ['eax,', '[ebp+arg_4]']
cdq
mov ['ecx,', '9']
idiv ['ecx']
mov ['[ebp+arg_4],', 'al']
movzx ['eax,', '[ebp+arg_4]']
cdq
mov ['ecx,', '5']
idiv ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+8],', 'eax']
movzx ['eax,', '[ebp+arg_4]']
cdq
mov ['ecx,', '5']
idiv ['ecx']
mov ['[ebp+var_8],', 'edx']
mov ['edx,', '[ebp+var_4]']
add ['edx,', '[ebp+var_8]']
cmp ['edx,', '4']
jbe ['short', 'loc_82D']
mov ['eax,', '9']
jmp ['short', 'loc_857']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_4]']
mov ['[eax],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_8]']
mov ['[edx+4],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+88h],', '0']
mov ['eax,', '6']
jmp ['short', 'loc_857']
mov ['eax,', '9']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
_LzmaDec_UpdateWithUncompressed@12 proc near
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+Size]']
push ['eax']
mov ['ecx,', '[ebp+Src]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+14h]']
mov ['ecx,', '[ebp+arg_0]']
add ['eax,', '[ecx+24h]']
push ['eax']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+24h]']
add ['eax,', '[ebp+Size]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+24h],', 'eax']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+30h],', '0']
jnz ['short', 'loc_8D5']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[eax+0Ch]']
sub ['edx,', '[ecx+2Ch]']
cmp ['edx,', '[ebp+Size]']
ja ['short', 'loc_8D5']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
mov ['[eax+30h],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+2Ch]']
add ['ecx,', '[ebp+Size]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+2Ch],', 'ecx']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['0Ch']
endp
_Lzma2Dec_DecodeToBuf@28 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '24h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_24],', 'eax']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+Size],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_10]']
mov ['eax,', '[edx]']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[ecx],', '0']
mov ['edx,', '[ebp+arg_10]']
mov ['dword', 'ptr', '[edx],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ecx+24h]']
cmp ['eax,', '[edx+28h]']
jnz ['short', 'loc_956']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+24h],', '0']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+24h]']
mov ['[ebp+var_1C],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+28h]']
sub ['edx,', '[ebp+var_1C]']
cmp ['[ebp+var_4],', 'edx']
jbe ['short', 'loc_97F']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+28h]']
mov ['[ebp+Size],', 'ecx']
mov ['[ebp+var_20],', '0']
jmp ['short', 'loc_98E']
mov ['edx,', '[ebp+var_1C]']
add ['edx,', '[ebp+var_4]']
mov ['[ebp+Size],', 'edx']
mov ['eax,', '[ebp+arg_14]']
mov ['[ebp+var_20],', 'eax']
mov ['ecx,', '[ebp+arg_18]']
push ['ecx']
mov ['edx,', '[ebp+var_20]']
push ['edx']
lea ['eax,', '[ebp+var_10]']
push ['eax']
mov ['ecx,', '[ebp+Src]']
push ['ecx']
mov ['edx,', '[ebp+Size]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_Lzma2Dec_DecodeToDic@24']
mov ['[ebp+var_24],', 'eax']
mov ['ecx,', '[ebp+Src]']
add ['ecx,', '[ebp+var_10]']
mov ['[ebp+Src],', 'ecx']
mov ['edx,', '[ebp+var_8]']
sub ['edx,', '[ebp+var_10]']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_10]']
mov ['ecx,', '[eax]']
add ['ecx,', '[ebp+var_10]']
mov ['edx,', '[ebp+arg_10]']
mov ['[edx],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+24h]']
sub ['ecx,', '[ebp+var_1C]']
mov ['[ebp+Size],', 'ecx']
mov ['edx,', '[ebp+Size]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+14h]']
add ['ecx,', '[ebp+var_1C]']
push ['ecx']
mov ['edx,', '[ebp+Dst]']
push ['edx']
call ['_memcpy']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+Dst]']
add ['eax,', '[ebp+Size]']
mov ['[ebp+Dst],', 'eax']
mov ['ecx,', '[ebp+var_4]']
sub ['ecx,', '[ebp+Size]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[edx]']
add ['eax,', '[ebp+Size]']
mov ['ecx,', '[ebp+arg_8]']
mov ['[ecx],', 'eax']
cmp ['[ebp+var_24],', '0']
jz ['short', 'loc_A1D']
mov ['eax,', '[ebp+var_24]']
jmp ['short', 'loc_A32']
cmp ['[ebp+Size],', '0']
jz ['short', 'loc_A29']
cmp ['[ebp+var_4],', '0']
jnz ['short', 'loc_A2D']
xor ['eax,', 'eax']
jmp ['short', 'loc_A32']
jmp ['loc_938']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN13']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
add ['esp,', '24h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['1Ch']
endp
_Lzma2Decode@32 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0A8h']
push ['edi']
lea ['edi,', '[ebp+var_A8]']
mov ['ecx,', '2Ah']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_A0],', 'ecx']
mov ['edx,', '[ebp+arg_C]']
mov ['eax,', '[edx]']
mov ['[ebp+var_A4],', 'eax']
mov ['ecx,', '[ebp+arg_C]']
mov ['dword', 'ptr', '[ecx],', '0']
mov ['edx,', '[ebp+arg_4]']
mov ['dword', 'ptr', '[edx],', '0']
mov ['eax,', '[ebp+arg_18]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['[ebp+var_80],', '0']
mov ['[ebp+var_84],', '0']
mov ['ecx,', '[ebp+arg_1C]']
push ['ecx']
movzx ['edx,', '[ebp+arg_10]']
push ['edx']
lea ['eax,', '[ebp+var_94]']
push ['eax']
call ['_Lzma2Dec_AllocateProbs@12']
mov ['[ebp+var_A8],', 'eax']
cmp ['[ebp+var_A8],', '0']
jz ['short', 'loc_B17']
mov ['eax,', '[ebp+var_A8]']
jmp ['loc_B9F']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ebp+var_80],', 'ecx']
mov ['edx,', '[ebp+var_A0]']
mov ['[ebp+var_6C],', 'edx']
lea ['eax,', '[ebp+var_94]']
push ['eax']
call ['_Lzma2Dec_Init@4']
mov ['ecx,', '[ebp+arg_C]']
mov ['edx,', '[ebp+var_A4]']
mov ['[ecx],', 'edx']
mov ['eax,', '[ebp+arg_18]']
push ['eax']
mov ['ecx,', '[ebp+arg_14]']
push ['ecx']
mov ['edx,', '[ebp+arg_C]']
push ['edx']
mov ['eax,', '[ebp+Src]']
push ['eax']
mov ['ecx,', '[ebp+var_A0]']
push ['ecx']
lea ['edx,', '[ebp+var_94]']
push ['edx']
call ['_Lzma2Dec_DecodeToDic@24']
mov ['[ebp+var_9C],', 'eax']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+var_70]']
mov ['[eax],', 'ecx']
cmp ['[ebp+var_9C],', '0']
jnz ['short', 'loc_B89']
mov ['edx,', '[ebp+arg_18]']
cmp ['dword', 'ptr', '[edx],', '3']
jnz ['short', 'loc_B89']
mov ['[ebp+var_9C],', '6']
mov ['eax,', '[ebp+arg_1C]']
push ['eax']
lea ['ecx,', '[ebp+var_94]']
push ['ecx']
call ['_LzmaDec_FreeProbs@8']
mov ['eax,', '[ebp+var_9C]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN7_0']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '0A8h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['20h']
endp
