_Ppmd7z_RangeEnc_Init@4 proc near
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['dword', 'ptr', '[eax+4],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[ecx+8],', '0FFFFFFFFh']
mov ['edx,', '[ebp+arg_0]']
mov ['byte', 'ptr', '[edx+0Ch],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+10h],', '1']
mov ['dword', 'ptr', '[eax+14h],', '0']
pop ['ebp']
retn ['4']
endp
_Ppmd7z_RangeEnc_FlushData@4 proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0']
jmp ['short', 'loc_5D']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '1']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '5']
jnb ['short', 'loc_6E']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_RangeEnc_ShiftLow@4']
jmp ['short', 'loc_54']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
_RangeEnc_ShiftLow@4 proc near          
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
push ['esi']
push ['edi']
mov ['[ebp+var_C],', '0CCCCCCCCh']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax],', '0FF000000h']
jb ['short', 'loc_BB']
mov ['ecx,', '[ebp+arg_0]']
mov ['eax,', '[ecx]']
mov ['edx,', '[ecx+4]']
mov ['cl,', '20h']
call ['__aullshr']
test ['eax,', 'eax']
jz ['short', 'loc_135']
mov ['edx,', '[ebp+arg_0]']
mov ['al,', '[edx+0Ch]']
mov ['byte', 'ptr', '[ebp+var_4+3],', 'al']
movzx ['esi,', 'byte', 'ptr', '[ebp+var_4+3]']
mov ['ecx,', '[ebp+arg_0]']
mov ['eax,', '[ecx]']
mov ['edx,', '[ecx+4]']
mov ['cl,', '20h']
call ['__aullshr']
movzx ['edx,', 'al']
add ['esi,', 'edx']
mov ['edi,', 'esp']
push ['esi']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+18h]']
push ['ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+18h]']
mov ['ecx,', '[eax]']
call ['ecx']
cmp ['edi,', 'esp']
call ['__RTC_CheckEsp']
mov ['byte', 'ptr', '[ebp+var_4+3],', '0FFh']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+10h]']
sub ['eax,', '1']
mov ['[ebp+var_C],', 'eax']
mov ['ecx,', '[edx+14h]']
sbb ['ecx,', '0']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_C]']
mov ['[edx+10h],', 'eax']
mov ['ecx,', '[ebp+var_8]']
mov ['[edx+14h],', 'ecx']
mov ['edx,', '[ebp+var_C]']
or ['edx,', '[ebp+var_8]']
jnz ['short', 'loc_C4']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
shr ['ecx,', '18h']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+0Ch],', 'cl']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+10h]']
add ['ecx,', '1']
mov ['edx,', '[eax+14h]']
adc ['edx,', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+10h],', 'ecx']
mov ['[eax+14h],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
shl ['edx,', '8']
xor ['eax,', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx],', 'edx']
mov ['[ecx+4],', 'eax']
pop ['edi']
pop ['esi']
add ['esp,', '0Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
_Ppmd7_EncodeSymbol@12 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '15Ch']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_15C]']
mov ['ecx,', '57h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
movzx ['edx,', 'word', 'ptr', '[ecx]']
cmp ['edx,', '1']
jz ['loc_411']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ecx+4]']
mov ['[ebp+var_110],', 'edx']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
cmp ['ecx,', '[ebp+arg_8]']
jnz ['short', 'loc_20E']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
movzx ['ecx,', 'word', 'ptr', '[eax+2]']
push ['ecx']
mov ['edx,', '[ebp+var_110]']
movzx ['eax,', 'byte', 'ptr', '[edx+1]']
push ['eax']
push ['0']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
call ['_RangeEnc_Encode@16']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_110]']
mov ['[edx+8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_Ppmd7_Update1_0@4']
jmp ['loc_8A3']
mov ['edx,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[edx+14h],', '0']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax+1]']
mov ['[ebp+var_114],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
sub ['ecx,', '1']
mov ['[ebp+var_118],', 'ecx']
mov ['edx,', '[ebp+var_110]']
add ['edx,', '6']
mov ['[ebp+var_110],', 'edx']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
cmp ['ecx,', '[ebp+arg_8]']
jnz ['short', 'loc_295']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
movzx ['ecx,', 'word', 'ptr', '[eax+2]']
push ['ecx']
mov ['edx,', '[ebp+var_110]']
movzx ['eax,', 'byte', 'ptr', '[edx+1]']
push ['eax']
mov ['ecx,', '[ebp+var_114]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_RangeEnc_Encode@16']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_110]']
mov ['[eax+8],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_Ppmd7_Update1@4']
jmp ['loc_8A3']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax+1]']
add ['ecx,', '[ebp+var_114]']
mov ['[ebp+var_114],', 'ecx']
mov ['edx,', '[ebp+var_118]']
sub ['edx,', '1']
mov ['[ebp+var_118],', 'edx']
jnz ['loc_239']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
mov ['eax,', '[ebp+arg_0]']
movzx ['ecx,', 'byte', 'ptr', '[eax+edx+388h]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+1Ch],', 'ecx']
mov ['[ebp+var_11C],', '0']
jmp ['short', 'loc_2F5']
mov ['eax,', '[ebp+var_11C]']
add ['eax,', '8']
mov ['[ebp+var_11C],', 'eax']
cmp ['[ebp+var_11C],', '40h']
jnb ['loc_38F']
mov ['ecx,', '[ebp+var_11C]']
mov ['[ebp+ecx*4+var_108],', '0FFFFFFFFh']
mov ['edx,', '[ebp+var_11C]']
mov ['[ebp+edx*4+var_104],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_11C]']
mov ['[ebp+eax*4+var_100],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_11C]']
mov ['[ebp+ecx*4+var_FC],', '0FFFFFFFFh']
mov ['edx,', '[ebp+var_11C]']
mov ['[ebp+edx*4+var_F8],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_11C]']
mov ['[ebp+eax*4+var_F4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_11C]']
mov ['[ebp+ecx*4+var_F0],', '0FFFFFFFFh']
mov ['edx,', '[ebp+var_11C]']
mov ['[ebp+edx*4+var_EC],', '0FFFFFFFFh']
jmp ['loc_2E6']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
mov ['byte', 'ptr', '[ebp+ecx+var_108],', '0']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
sub ['ecx,', '1']
mov ['[ebp+var_118],', 'ecx']
mov ['edx,', '[ebp+var_110]']
sub ['edx,', '6']
mov ['[ebp+var_110],', 'edx']
mov ['eax,', '[ebp+var_110]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
mov ['byte', 'ptr', '[ebp+ecx+var_108],', '0']
mov ['edx,', '[ebp+var_118]']
sub ['edx,', '1']
mov ['[ebp+var_118],', 'edx']
jnz ['short', 'loc_3B1']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
movzx ['edx,', 'word', 'ptr', '[ecx+2]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
movzx ['edx,', 'word', 'ptr', '[ecx+2]']
sub ['edx,', '[ebp+var_114]']
push ['edx']
mov ['eax,', '[ebp+var_114]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
call ['_RangeEnc_Encode@16']
jmp ['loc_638']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
mov ['edx,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[edx+ecx+388h]']
mov ['[ebp+var_158],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_158]']
mov ['[ecx+1Ch],', 'edx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+20h]']
sar ['ecx,', '1Ah']
and ['ecx,', '20h']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
movzx ['edx,', 'byte', 'ptr', '[eax+2]']
mov ['eax,', '[ebp+arg_0]']
movzx ['edx,', 'byte', 'ptr', '[eax+edx+388h]']
mov ['eax,', '[ebp+arg_0]']
mov ['eax,', '[eax]']
mov ['eax,', '[eax+8]']
movzx ['eax,', 'word', 'ptr', '[eax]']
mov ['esi,', '[ebp+arg_0]']
movzx ['eax,', 'byte', 'ptr', '[esi+eax+287h]']
mov ['esi,', '[ebp+arg_0]']
mov ['esi,', '[esi+14h]']
add ['esi,', 'eax']
add ['esi,', '[ebp+var_158]']
lea ['edx,', '[esi+edx*2]']
add ['edx,', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
movzx ['eax,', 'byte', 'ptr', '[ecx+3]']
sub ['eax,', '1']
shl ['eax,', '7']
mov ['ecx,', '[ebp+arg_0]']
lea ['eax,', '[ecx+eax+0ACCh]']
lea ['ecx,', '[eax+edx*2]']
mov ['[ebp+var_120],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx]']
add ['eax,', '2']
mov ['[ebp+var_124],', 'eax']
mov ['ecx,', '[ebp+var_124]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
cmp ['edx,', '[ebp+arg_8]']
jnz ['short', 'loc_519']
mov ['eax,', '[ebp+var_120]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_RangeEnc_EncodeBit_0@8']
mov ['eax,', '[ebp+var_120]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
add ['ecx,', '80h']
mov ['edx,', '[ebp+var_120]']
movzx ['eax,', 'word', 'ptr', '[edx]']
add ['eax,', '20h']
sar ['eax,', '7']
sub ['ecx,', 'eax']
mov ['edx,', '[ebp+var_120]']
mov ['[edx],', 'cx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_124]']
mov ['[eax+8],', 'ecx']
mov ['edx,', '[ebp+arg_0]']
push ['edx']
call ['_Ppmd7_UpdateBin@4']
jmp ['loc_8A3']
jmp ['loc_638']
mov ['eax,', '[ebp+var_120]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
push ['ecx']
mov ['edx,', '[ebp+arg_4]']
push ['edx']
call ['_RangeEnc_EncodeBit_1@8']
mov ['eax,', '[ebp+var_120]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
mov ['edx,', '[ebp+var_120]']
movzx ['eax,', 'word', 'ptr', '[edx]']
add ['eax,', '20h']
sar ['eax,', '7']
sub ['ecx,', 'eax']
mov ['edx,', '[ebp+var_120]']
mov ['[edx],', 'cx']
mov ['eax,', '[ebp+var_120]']
movzx ['ecx,', 'word', 'ptr', '[eax]']
sar ['ecx,', '0Ah']
movzx ['edx,', 'byte', 'ptr', 'ds:_PPMD7_kExpEscape[ecx]']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+10h],', 'edx']
mov ['[ebp+var_128],', '0']
jmp ['short', 'loc_583']
mov ['ecx,', '[ebp+var_128]']
add ['ecx,', '8']
mov ['[ebp+var_128],', 'ecx']
cmp ['[ebp+var_128],', '40h']
jnb ['loc_61D']
mov ['edx,', '[ebp+var_128]']
mov ['[ebp+edx*4+var_108],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_128]']
mov ['[ebp+eax*4+var_104],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_128]']
mov ['[ebp+ecx*4+var_100],', '0FFFFFFFFh']
mov ['edx,', '[ebp+var_128]']
mov ['[ebp+edx*4+var_FC],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_128]']
mov ['[ebp+eax*4+var_F8],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_128]']
mov ['[ebp+ecx*4+var_F4],', '0FFFFFFFFh']
mov ['edx,', '[ebp+var_128]']
mov ['[ebp+edx*4+var_F0],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_128]']
mov ['[ebp+eax*4+var_EC],', '0FFFFFFFFh']
jmp ['loc_574']
mov ['ecx,', '[ebp+var_124]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
mov ['byte', 'ptr', '[ebp+edx+var_108],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax+14h],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
movzx ['eax,', 'word', 'ptr', '[edx]']
mov ['[ebp+var_148],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+0Ch]']
add ['edx,', '1']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+0Ch],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
cmp ['dword', 'ptr', '[edx+8],', '0']
jnz ['short', 'loc_665']
jmp ['loc_8A3']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ecx+8]']
mov ['[edx],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
movzx ['eax,', 'word', 'ptr', '[edx]']
cmp ['eax,', '[ebp+var_148]']
jz ['short', 'loc_646']
lea ['ecx,', '[ebp+var_130]']
push ['ecx']
mov ['edx,', '[ebp+var_148]']
push ['edx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_Ppmd7_MakeEscFreq@12']
mov ['[ebp+var_138],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
mov ['eax,', '[edx+4]']
mov ['[ebp+var_13C],', 'eax']
mov ['[ebp+var_140],', '0']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx]']
movzx ['eax,', 'word', 'ptr', '[edx]']
mov ['[ebp+var_144],', 'eax']
mov ['ecx,', '[ebp+var_13C]']
movzx ['edx,', 'byte', 'ptr', '[ecx]']
mov ['[ebp+var_14C],', 'edx']
mov ['eax,', '[ebp+var_14C]']
cmp ['eax,', '[ebp+arg_8]']
jnz ['loc_804']
mov ['ecx,', '[ebp+var_140]']
mov ['[ebp+var_150],', 'ecx']
mov ['edx,', '[ebp+var_13C]']
mov ['[ebp+var_154],', 'edx']
mov ['eax,', '[ebp+var_13C]']
movzx ['ecx,', 'byte', 'ptr', '[eax+1]']
mov ['edx,', '[ebp+var_13C]']
movzx ['eax,', 'byte', 'ptr', '[edx]']
movsx ['edx,', 'byte', 'ptr', '[ebp+eax+var_108]']
and ['ecx,', 'edx']
add ['ecx,', '[ebp+var_140]']
mov ['[ebp+var_140],', 'ecx']
mov ['eax,', '[ebp+var_13C]']
add ['eax,', '6']
mov ['[ebp+var_13C],', 'eax']
mov ['ecx,', '[ebp+var_144]']
sub ['ecx,', '1']
mov ['[ebp+var_144],', 'ecx']
jnz ['short', 'loc_6FB']
mov ['edx,', '[ebp+var_140]']
add ['edx,', '[ebp+var_130]']
push ['edx']
mov ['eax,', '[ebp+var_154]']
movzx ['ecx,', 'byte', 'ptr', '[eax+1]']
push ['ecx']
mov ['edx,', '[ebp+var_150]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_RangeEnc_Encode@16']
mov ['ecx,', '[ebp+var_138]']
movzx ['edx,', 'byte', 'ptr', '[ecx+2]']
cmp ['edx,', '7']
jge ['short', 'loc_7EA']
mov ['eax,', '[ebp+var_138]']
mov ['cl,', '[eax+3]']
sub ['cl,', '1']
mov ['[ebp+var_159],', 'cl']
mov ['edx,', '[ebp+var_138]']
mov ['al,', '[ebp+var_159]']
mov ['[edx+3],', 'al']
movzx ['ecx,', '[ebp+var_159]']
test ['ecx,', 'ecx']
jnz ['short', 'loc_7EA']
mov ['edx,', '[ebp+var_138]']
mov ['ax,', '[edx]']
shl ['ax,', '1']
mov ['ecx,', '[ebp+var_138]']
mov ['[ecx],', 'ax']
mov ['edx,', '[ebp+var_138]']
movzx ['ecx,', 'byte', 'ptr', '[edx+2]']
mov ['eax,', '3']
shl ['eax,', 'cl']
mov ['ecx,', '[ebp+var_138]']
mov ['[ecx+3],', 'al']
mov ['edx,', '[ebp+var_138]']
mov ['al,', '[edx+2]']
add ['al,', '1']
mov ['ecx,', '[ebp+var_138]']
mov ['[ecx+2],', 'al']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[ebp+var_154]']
mov ['[edx+8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_Ppmd7_Update2@4']
jmp ['loc_8A3']
mov ['edx,', '[ebp+var_13C]']
movzx ['eax,', 'byte', 'ptr', '[edx+1]']
mov ['ecx,', '[ebp+var_14C]']
movsx ['edx,', 'byte', 'ptr', '[ebp+ecx+var_108]']
and ['eax,', 'edx']
add ['eax,', '[ebp+var_140]']
mov ['[ebp+var_140],', 'eax']
mov ['eax,', '[ebp+var_14C]']
mov ['byte', 'ptr', '[ebp+eax+var_108],', '0']
mov ['ecx,', '[ebp+var_13C]']
add ['ecx,', '6']
mov ['[ebp+var_13C],', 'ecx']
mov ['edx,', '[ebp+var_144]']
sub ['edx,', '1']
mov ['[ebp+var_144],', 'edx']
jnz ['loc_6C5']
mov ['eax,', '[ebp+var_140]']
add ['eax,', '[ebp+var_130]']
push ['eax']
mov ['ecx,', '[ebp+var_130]']
push ['ecx']
mov ['edx,', '[ebp+var_140]']
push ['edx']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
call ['_RangeEnc_Encode@16']
mov ['ecx,', '[ebp+var_138]']
movzx ['edx,', 'word', 'ptr', '[ecx]']
add ['edx,', '[ebp+var_140]']
add ['edx,', '[ebp+var_130]']
mov ['eax,', '[ebp+var_138]']
mov ['[eax],', 'dx']
jmp ['loc_638']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN38']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
pop ['edi']
pop ['esi']
mov ['ecx,', '[ebp+var_4]']
xor ['ecx,', 'ebp']
call ['@__security_check_cookie@4']
add ['esp,', '15Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
_RangeEnc_Encode@16 proc near           
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['eax,', '[eax+8]']
xor ['edx,', 'edx']
div ['[ebp+arg_C]']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ebp+var_4]']
mov ['[ecx+8],', 'edx']
mov ['eax,', '[ebp+arg_4]']
imul ['eax,', '[ebp+var_4]']
xor ['ecx,', 'ecx']
mov ['edx,', '[ebp+arg_0]']
add ['eax,', '[edx]']
adc ['ecx,', '[edx+4]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx],', 'eax']
mov ['[edx+4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
imul ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+8],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+8],', '1000000h']
jnb ['short', 'loc_981']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
shl ['edx,', '8']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+8],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_RangeEnc_ShiftLow@4']
jmp ['short', 'loc_95B']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['10h']
endp
_RangeEnc_EncodeBit_0@8 proc near       
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
shr ['ecx,', '0Eh']
imul ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+8],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[eax+8],', '1000000h']
jnb ['short', 'loc_9DC']
mov ['ecx,', '[ebp+arg_0]']
mov ['edx,', '[ecx+8]']
shl ['edx,', '8']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax+8],', 'edx']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
call ['_RangeEnc_ShiftLow@4']
jmp ['short', 'loc_9B6']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn ['8']
endp
_RangeEnc_EncodeBit_1@8 proc near       
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
shr ['ecx,', '0Eh']
imul ['ecx,', '[ebp+arg_4]']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+var_4]']
xor ['eax,', 'eax']
mov ['ecx,', '[ebp+arg_0]']
add ['edx,', '[ecx]']
adc ['eax,', '[ecx+4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx],', 'edx']
mov ['[ecx+4],', 'eax']
mov ['edx,', '[ebp+arg_0]']
mov ['eax,', '[edx+8]']
sub ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ecx+8],', 'eax']
mov ['edx,', '[ebp+arg_0]']
cmp ['dword', 'ptr', '[edx+8],', '1000000h']
jnb ['short', 'loc_A55']
mov ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[eax+8]']
shl ['ecx,', '8']
mov ['edx,', '[ebp+arg_0]']
mov ['[edx+8],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
call ['_RangeEnc_ShiftLow@4']
jmp ['short', 'loc_A2F']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp