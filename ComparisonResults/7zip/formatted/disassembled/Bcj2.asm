_Bcj2Dec_Init@4 proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+28h],', '9']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+2Ch],', '0']
mov ['edx,', '[ebp+arg_0]']
mov ['byte', 'ptr', '[edx+33h],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+34h],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+38h],', '0']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_4C']
mov ['edx,', '[ebp+var_4]']
add ['edx,', '1']
mov ['[ebp+var_4],', 'edx']
cmp ['[ebp+var_4],', '102h']
jnb ['short', 'loc_67']
mov ['eax,', '400h']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+ecx*2+3Ch],', 'ax']
jmp ['short', 'loc_43']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
_Bcj2Dec_Decode@4 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '48h']
push ['edi']
lea ['edi,', '[ebp+var_48]']
mov ['ecx,', '12h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+34h],', '5']
ja ['loc_13C']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+28h],', '9']
jmp ['short', 'loc_AE']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+34h]']
add ['eax,', '1']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+34h],', 'eax']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+34h],', '5']
jz ['short', 'loc_11D']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+34h],', '1']
jnz ['short', 'loc_D3']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+38h],', '0']
jz ['short', 'loc_D3']
mov ['eax,', '1']
jmp ['loc_60D']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[edx+0Ch]']
cmp ['ecx,', '[eax+1Ch]']
jnz ['short', 'loc_F2']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+28h],', '3']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+38h]']
shl ['ecx,', '8']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+0Ch]']
movzx ['edx,', 'byte', 'ptr', '[eax]']
or ['ecx,', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+38h],', 'ecx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
add ['edx,', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+0Ch],', 'edx']
jmp ['short', 'loc_9F']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+38h],', '0FFFFFFFFh']
jnz ['short', 'loc_130']
mov ['eax,', '1']
jmp ['loc_60D']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+34h],', '0FFFFFFFFh']
jmp ['short', 'loc_198']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+28h],', '4']
jb ['short', 'loc_198']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+28h],', '7']
ja ['short', 'loc_198']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+20h]']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_4]']
cmp ['edx,', '[ecx+24h]']
jnz ['short', 'loc_169']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+28h]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+arg_0]']
mov ['cl,', '[eax+ecx+2Ch]']
mov ['[edx],', 'cl']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+28h]']
add ['eax,', '1']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+28h],', 'eax']
mov ['edx,', '[ebp+var_4]']
add ['edx,', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+20h],', 'edx']
jmp ['short', 'loc_145']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+28h],', '1']
jz ['short', 'loc_1AA']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+28h],', '2']
jnz ['short', 'loc_1B9']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+28h],', '9']
jmp ['loc_4B4']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+34h],', '1000000h']
jnb ['short', 'loc_21C']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[edx+0Ch]']
cmp ['ecx,', '[eax+1Ch]']
jnz ['short', 'loc_1E4']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+28h],', '3']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+34h]']
shl ['ecx,', '8']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+34h],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+38h]']
shl ['ecx,', '8']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+0Ch]']
movzx ['edx,', 'byte', 'ptr', '[eax]']
or ['ecx,', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+38h],', 'ecx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
add ['edx,', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+0Ch],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+10h]']
sub ['ecx,', '[ebp+var_8]']
mov ['[ebp+var_14],', 'ecx']
jnz ['short', 'loc_243']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+28h],', '0']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+20h]']
mov ['[ebp+var_10],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+24h]']
sub ['eax,', '[ebp+var_10]']
cmp ['[ebp+var_14],', 'eax']
jbe ['short', 'loc_279']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+24h]']
sub ['edx,', '[ebp+var_10]']
mov ['[ebp+var_14],', 'edx']
jnz ['short', 'loc_279']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+28h],', '8']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['ecx,', '[ebp+var_8]']
add ['ecx,', '[ebp+var_14]']
mov ['[ebp+var_C],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[edx+33h]']
cmp ['eax,', '0Fh']
jnz ['short', 'loc_2B1']
mov ['ecx,', '[ebp+var_8]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
and ['edx,', '0F0h']
cmp ['edx,', '80h']
jnz ['short', 'loc_2B1']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_8]']
mov ['dl,', '[ecx]']
mov ['[eax],', 'dl']
jmp ['loc_33F']
mov ['eax,', '[ebp+var_8]']
mov ['cl,', '[eax]']
mov ['[ebp+var_15],', 'cl']
mov ['edx,', '[ebp+var_10]']
mov ['al,', '[ebp+var_15]']
mov ['[edx],', 'al']
movzx ['ecx,', '[ebp+var_15]']
cmp ['ecx,', '0Fh']
jz ['short', 'loc_2FC']
movzx ['edx,', '[ebp+var_15]']
and ['edx,', '0FEh']
cmp ['edx,', '0E8h']
jnz ['short', 'loc_2DE']
jmp ['short', 'loc_33F']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '1']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_8]']
add ['ecx,', '1']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
cmp ['edx,', '[ebp+var_C]']
jz ['short', 'loc_2FA']
jmp ['short', 'loc_2B1']
jmp ['short', 'loc_33F']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '1']
mov ['[ebp+var_10],', 'eax']
mov ['ecx,', '[ebp+var_8]']
add ['ecx,', '1']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
cmp ['edx,', '[ebp+var_C]']
jnz ['short', 'loc_318']
jmp ['short', 'loc_33F']
mov ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
and ['ecx,', '0F0h']
cmp ['ecx,', '80h']
jz ['short', 'loc_32E']
jmp ['short', 'loc_2B1']
mov ['edx,', '[ebp+var_10]']
mov ['eax,', '[ebp+var_8]']
mov ['cl,', '[eax]']
mov ['[edx],', 'cl']
jmp ['short', 'loc_33F']
jmp ['loc_2B1']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '[edx]']
mov ['[ebp+var_14],', 'eax']
mov ['ecx,', '[ebp+var_8]']
cmp ['ecx,', '[ebp+var_C]']
jnz ['short', 'loc_3A3']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_8]']
mov ['cl,', '[eax-1]']
mov ['[edx+33h],', 'cl']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_8]']
mov ['[edx],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+2Ch]']
add ['edx,', '[ebp+var_14]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+2Ch],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+20h]']
add ['edx,', '[ebp+var_14]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+20h],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ecx]']
sub ['eax,', '[edx+10h]']
neg ['eax']
sbb ['eax,', 'eax']
and ['eax,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+28h],', 'eax']
xor ['eax,', 'eax']
jmp ['loc_60D']
mov ['edx,', '[ebp+var_8]']
mov ['al,', '[edx]']
mov ['[ebp+var_25],', 'al']
cmp ['[ebp+var_14],', '0']
jnz ['short', 'loc_3BD']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[ecx+33h]']
mov ['[ebp+var_44],', 'edx']
jmp ['short', 'loc_3C7']
mov ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax-1]']
mov ['[ebp+var_44],', 'ecx']
mov ['dl,', 'byte', 'ptr', '[ebp+var_44]']
mov ['[ebp+var_26],', 'dl']
mov ['eax,', '[ebp+arg_0]']
mov ['cl,', '[ebp+var_25]']
mov ['[eax+33h],', 'cl']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax],', 'edx']
mov ['ecx,', '[ebp+var_14]']
add ['ecx,', '1']
mov ['[ebp+var_14],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+2Ch]']
add ['eax,', '[ebp+var_14]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+2Ch],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+20h]']
add ['eax,', '[ebp+var_14]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+20h],', 'eax']
movzx ['edx,', '[ebp+var_25]']
cmp ['edx,', '0E8h']
jnz ['short', 'loc_420']
movzx ['eax,', '[ebp+var_26]']
add ['eax,', '2']
mov ['[ebp+var_48],', 'eax']
jmp ['short', 'loc_432']
movzx ['ecx,', '[ebp+var_25]']
xor ['edx,', 'edx']
cmp ['ecx,', '0E9h']
setz ['dl']
mov ['[ebp+var_48],', 'edx']
mov ['eax,', '[ebp+var_48]']
mov ['ecx,', '[ebp+arg_0]']
lea ['edx,', '[ecx+eax*2+3Ch]']
mov ['[ebp+var_24],', 'edx']
mov ['eax,', '[ebp+var_24]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
mov ['[ebp+var_20],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+34h]']
shr ['eax,', '0Bh']
imul ['eax,', '[ebp+var_20]']
mov ['[ebp+var_1C],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+38h]']
cmp ['edx,', '[ebp+var_1C]']
jnb ['short', 'loc_485']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_1C]']
mov ['[eax+34h],', 'ecx']
mov ['edx,', '800h']
sub ['edx,', '[ebp+var_20]']
shr ['edx,', '5']
add ['edx,', '[ebp+var_20]']
mov ['eax,', '[ebp+var_24]']
mov ['[eax],', 'dx']
jmp ['loc_198']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+34h]']
sub ['edx,', '[ebp+var_1C]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+34h],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+38h]']
sub ['edx,', '[ebp+var_1C]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+38h],', 'edx']
mov ['ecx,', '[ebp+var_20]']
shr ['ecx,', '5']
mov ['edx,', '[ebp+var_20]']
sub ['edx,', 'ecx']
mov ['eax,', '[ebp+var_24]']
mov ['[eax],', 'dx']
mov ['ecx,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[ecx+33h]']
xor ['eax,', 'eax']
cmp ['edx,', '0E8h']
setnz ['al']
add ['eax,', '1']
mov ['[ebp+var_30],', 'eax']
mov ['ecx,', '[ebp+var_30]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+ecx*4]']
mov ['[ebp+var_34],', 'eax']
mov ['ecx,', '[ebp+var_30]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_34]']
cmp ['eax,', '[edx+ecx*4+10h]']
jnz ['short', 'loc_4F5']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_30]']
mov ['[ecx+28h],', 'edx']
jmp ['loc_5B9']
mov ['eax,', '[ebp+var_34]']
mov ['ecx,', '[eax]']
bswap ['ecx']
mov ['[ebp+var_2C],', 'ecx']
mov ['edx,', '[ebp+var_34]']
add ['edx,', '4']
mov ['eax,', '[ebp+var_30]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+eax*4],', 'edx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+2Ch]']
add ['eax,', '4']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+2Ch],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_2C]']
sub ['eax,', '[edx+2Ch]']
mov ['[ebp+var_2C],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+20h]']
mov ['[ebp+var_38],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+24h]']
sub ['ecx,', '[ebp+var_38]']
mov ['[ebp+var_3C],', 'ecx']
cmp ['[ebp+var_3C],', '4']
jnb ['short', 'loc_594']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_2C]']
mov ['[edx+30h],', 'eax']
mov ['[ebp+var_40],', '0']
jmp ['short', 'loc_55F']
mov ['ecx,', '[ebp+var_40]']
add ['ecx,', '1']
mov ['[ebp+var_40],', 'ecx']
mov ['edx,', '[ebp+var_40]']
cmp ['edx,', '[ebp+var_3C]']
jnb ['short', 'loc_57A']
mov ['eax,', '[ebp+var_38]']
add ['eax,', '[ebp+var_40]']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_40]']
mov ['dl,', '[ecx+30h]']
mov ['[eax],', 'dl']
jmp ['short', 'loc_556']
mov ['eax,', '[ebp+var_38]']
add ['eax,', '[ebp+var_3C]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+20h],', 'eax']
mov ['edx,', '[ebp+var_3C]']
add ['edx,', '4']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+28h],', 'edx']
jmp ['short', 'loc_5B9']
mov ['ecx,', '[ebp+var_38]']
mov ['edx,', '[ebp+var_2C]']
mov ['[ecx],', 'edx']
mov ['eax,', '[ebp+var_2C]']
shr ['eax,', '18h']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+33h],', 'al']
mov ['edx,', '[ebp+var_38]']
add ['edx,', '4']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+20h],', 'edx']
jmp ['loc_198']
mov ['ecx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[ecx+34h],', '1000000h']
jnb ['short', 'loc_60B']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[edx+0Ch]']
cmp ['ecx,', '[eax+1Ch]']
jz ['short', 'loc_60B']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+34h]']
shl ['eax,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+34h],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+38h]']
shl ['eax,', '8']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
movzx ['ecx,', 'byte', 'ptr', '[edx]']
or ['eax,', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+38h],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+0Ch]']
add ['ecx,', '1']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+0Ch],', 'ecx']
xor ['eax,', 'eax']
pop ['edi']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
