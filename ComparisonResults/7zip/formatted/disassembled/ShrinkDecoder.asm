?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0DCh']
push ['esi']
push ['edi']
push ['ecx']
lea ['edi,', '[ebp+var_E8]']
mov ['ecx,', '37h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
pop ['ecx']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
lea ['ecx,', '[ebp+var_44]']
call ['??0?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??0COutBuffer@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
push ['100000h']
lea ['ecx,', '[ebp+var_44]']
call ['?Create@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE_NI@Z']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jnz ['short', 'loc_A0']
mov ['[ebp+var_CC],', '8007000Eh']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_CC]']
jmp ['loc_74E']
mov ['ecx,', '[ebp+arg_0]']
push ['ecx']
lea ['ecx,', '[ebp+var_44]']
call ['?SetStream@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXPAUISequentialInStream@@@Z']
lea ['ecx,', '[ebp+var_44]']
call ['?Init@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXXZ']
push ['100000h']
lea ['ecx,', '[ebp+var_74]']
call ['?Create@COutBuffer@@QAE_NI@Z']
movzx ['edx,', 'al']
test ['edx,', 'edx']
jnz ['short', 'loc_F8']
mov ['[ebp+var_D0],', '8007000Eh']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_D0]']
jmp ['loc_74E']
mov ['eax,', '[ebp+arg_4]']
push ['eax']
lea ['ecx,', '[ebp+var_74]']
call ['?SetStream@COutBuffer@@QAEXPAUISequentialOutStream@@@Z']
lea ['ecx,', '[ebp+var_74]']
call ['?Init@COutBuffer@@QAEXXZ']
mov ['[ebp+var_80],', '0']
mov ['[ebp+var_7C],', '0']
mov ['[ebp+var_84],', '9']
mov ['[ebp+var_88],', '101h']
mov ['[ebp+var_89],', '0']
mov ['[ebp+var_90],', '0']
mov ['[ebp+var_94],', '0']
jmp ['short', 'loc_15A']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_178']
xor ['edx,', 'edx']
mov ['eax,', '[ebp+var_94]']
mov ['ecx,', '[ebp+var_10]']
mov ['[ecx+eax*2+8],', 'dx']
jmp ['short', 'loc_14B']
mov ['[ebp+var_94],', '0']
jmp ['short', 'loc_193']
mov ['edx,', '[ebp+var_94]']
add ['edx,', '1']
mov ['[ebp+var_94],', 'edx']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_1B1']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '[ebp+var_94]']
mov ['byte', 'ptr', '[eax+4008h],', '0']
jmp ['short', 'loc_184']
mov ['[ebp+var_94],', '0']
jmp ['short', 'loc_1CC']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
cmp ['[ebp+var_94],', '101h']
jge ['short', 'loc_1EA']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_94]']
mov ['byte', 'ptr', '[edx+8008h],', '0']
jmp ['short', 'loc_1BD']
jmp ['short', 'loc_1FB']
mov ['eax,', '[ebp+var_94]']
add ['eax,', '1']
mov ['[ebp+var_94],', 'eax']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_219']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_94]']
mov ['byte', 'ptr', '[ecx+8008h],', '1']
jmp ['short', 'loc_1EC']
mov ['edx,', '[ebp+var_84]']
push ['edx']
lea ['ecx,', '[ebp+var_44]']
call ['?ReadBits@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEII@Z']
mov ['[ebp+var_98],', 'eax']
lea ['ecx,', '[ebp+var_44]']
call ['?ExtraBitsWereRead@?$CBaseDecoder@VCInBuffer@@@NBitl@@QBE_NXZ']
movzx ['eax,', 'al']
test ['eax,', 'eax']
jz ['short', 'loc_242']
jmp ['loc_71F']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_98]']
movzx ['edx,', 'byte', 'ptr', '[ecx+8008h]']
test ['edx,', 'edx']
jz ['short', 'loc_286']
mov ['[ebp+var_D4],', '1']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_D4]']
jmp ['loc_74E']
cmp ['[ebp+var_98],', '100h']
jnz ['loc_48E']
mov ['eax,', '[ebp+var_84]']
push ['eax']
lea ['ecx,', '[ebp+var_44]']
call ['?ReadBits@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEII@Z']
mov ['[ebp+var_9C],', 'eax']
cmp ['[ebp+var_9C],', '1']
jnz ['short', 'loc_2D1']
cmp ['[ebp+var_84],', '0Dh']
jge ['short', 'loc_2CC']
mov ['ecx,', '[ebp+var_84]']
add ['ecx,', '1']
mov ['[ebp+var_84],', 'ecx']
jmp ['loc_489']
cmp ['[ebp+var_9C],', '2']
jnz ['loc_459']
movzx ['edx,', '[ebp+var_89]']
test ['edx,', 'edx']
jz ['short', 'loc_2F9']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '[ebp+var_88]']
mov ['byte', 'ptr', '[eax+8007h],', '1']
mov ['[ebp+var_94],', '101h']
jmp ['short', 'loc_314']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_332']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_94]']
mov ['byte', 'ptr', '[edx+0A008h],', '0']
jmp ['short', 'loc_305']
mov ['[ebp+var_94],', '101h']
jmp ['short', 'loc_34D']
mov ['eax,', '[ebp+var_94]']
add ['eax,', '1']
mov ['[ebp+var_94],', 'eax']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_388']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_94]']
movzx ['edx,', 'byte', 'ptr', '[ecx+8008h]']
test ['edx,', 'edx']
jnz ['short', 'loc_386']
mov ['eax,', '[ebp+var_94]']
mov ['ecx,', '[ebp+var_10]']
movzx ['edx,', 'word', 'ptr', '[ecx+eax*2+8]']
mov ['eax,', '[ebp+var_10]']
mov ['byte', 'ptr', '[eax+edx+0A008h],', '1']
jmp ['short', 'loc_33E']
mov ['[ebp+var_94],', '101h']
jmp ['short', 'loc_3A3']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
cmp ['[ebp+var_94],', '2000h']
jnb ['short', 'loc_3D5']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_94]']
movzx ['eax,', 'byte', 'ptr', '[edx+0A008h]']
test ['eax,', 'eax']
jnz ['short', 'loc_3D3']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_94]']
mov ['byte', 'ptr', '[ecx+8008h],', '1']
jmp ['short', 'loc_394']
mov ['[ebp+var_88],', '101h']
cmp ['[ebp+var_88],', '2000h']
jnb ['short', 'loc_410']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_88]']
movzx ['eax,', 'byte', 'ptr', '[edx+8008h]']
test ['eax,', 'eax']
jnz ['short', 'loc_410']
mov ['ecx,', '[ebp+var_88]']
add ['ecx,', '1']
mov ['[ebp+var_88],', 'ecx']
jmp ['short', 'loc_3DF']
cmp ['[ebp+var_88],', '2000h']
jnb ['short', 'loc_457']
mov ['[ebp+var_89],', '1']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_88]']
mov ['byte', 'ptr', '[edx+8008h],', '0']
mov ['eax,', '[ebp+var_88]']
mov ['ecx,', '[ebp+var_10]']
mov ['dx,', 'word', 'ptr', '[ebp+var_90]']
mov ['[ecx+eax*2+8],', 'dx']
mov ['eax,', '[ebp+var_88]']
add ['eax,', '1']
mov ['[ebp+var_88],', 'eax']
jmp ['short', 'loc_489']
mov ['[ebp+var_D8],', '1']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_D8]']
jmp ['loc_74E']
jmp ['loc_219']
mov ['ecx,', '[ebp+var_98]']
mov ['[ebp+var_A0],', 'ecx']
mov ['[ebp+var_94],', '0']
mov ['[ebp+var_A4],', '0FFFFFFFFh']
cmp ['[ebp+var_A0],', '100h']
jb ['short', 'loc_51A']
mov ['edx,', '[ebp+var_88]']
sub ['edx,', '1']
cmp ['[ebp+var_A0],', 'edx']
jnz ['short', 'loc_4D7']
mov ['eax,', '[ebp+var_94]']
mov ['[ebp+var_A4],', 'eax']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_94]']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_A0]']
mov ['al,', '[edx+4008h]']
mov ['[ecx+6008h],', 'al']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
mov ['edx,', '[ebp+var_A0]']
mov ['eax,', '[ebp+var_10]']
movzx ['ecx,', 'word', 'ptr', '[eax+edx*2+8]']
mov ['[ebp+var_A0],', 'ecx']
jmp ['short', 'loc_4AE']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_94]']
mov ['al,', 'byte', 'ptr', '[ebp+var_A0]']
mov ['[edx+6008h],', 'al']
mov ['ecx,', '[ebp+var_94]']
add ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
movzx ['edx,', '[ebp+var_89]']
test ['edx,', 'edx']
jz ['short', 'loc_57C']
mov ['eax,', '[ebp+var_10]']
add ['eax,', '[ebp+var_88]']
mov ['cl,', 'byte', 'ptr', '[ebp+var_A0]']
mov ['[eax+4007h],', 'cl']
cmp ['[ebp+var_A4],', '0']
jl ['short', 'loc_57C']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_A4]']
mov ['al,', 'byte', 'ptr', '[ebp+var_A0]']
mov ['[edx+6008h],', 'al']
cmp ['[ebp+var_94],', '0']
jle ['short', 'loc_5AF']
mov ['ecx,', '[ebp+var_94]']
sub ['ecx,', '1']
mov ['[ebp+var_94],', 'ecx']
mov ['edx,', '[ebp+var_10]']
add ['edx,', '[ebp+var_94]']
movzx ['eax,', 'byte', 'ptr', '[edx+6008h]']
push ['eax']
lea ['ecx,', '[ebp+var_74]']
call ['?WriteByte@COutBuffer@@QAEXE@Z']
jmp ['short', 'loc_57C']
cmp ['[ebp+var_88],', '2000h']
jnb ['short', 'loc_5E0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_88]']
movzx ['edx,', 'byte', 'ptr', '[ecx+8008h]']
test ['edx,', 'edx']
jnz ['short', 'loc_5E0']
mov ['eax,', '[ebp+var_88]']
add ['eax,', '1']
mov ['[ebp+var_88],', 'eax']
jmp ['short', 'loc_5AF']
cmp ['[ebp+var_88],', '2000h']
jnb ['short', 'loc_629']
mov ['[ebp+var_89],', '1']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '[ebp+var_88]']
mov ['byte', 'ptr', '[ecx+8008h],', '0']
mov ['edx,', '[ebp+var_88]']
mov ['eax,', '[ebp+var_10]']
mov ['cx,', 'word', 'ptr', '[ebp+var_98]']
mov ['[eax+edx*2+8],', 'cx']
mov ['edx,', '[ebp+var_88]']
add ['edx,', '1']
mov ['[ebp+var_88],', 'edx']
jmp ['short', 'loc_630']
mov ['[ebp+var_89],', '0']
mov ['eax,', '[ebp+var_98]']
mov ['[ebp+var_90],', 'eax']
lea ['ecx,', '[ebp+var_74]']
call ['?GetProcessedSize@COutBuffer@@QBE_KXZ']
mov ['[ebp+var_B0],', 'eax']
mov ['[ebp+var_AC],', 'edx']
cmp ['[ebp+arg_10],', '0']
jz ['loc_71A']
mov ['ecx,', '[ebp+var_B0]']
sub ['ecx,', '[ebp+var_80]']
mov ['edx,', '[ebp+var_AC]']
sbb ['edx,', '[ebp+var_7C]']
mov ['[ebp+var_E8],', 'ecx']
mov ['[ebp+var_E4],', 'edx']
cmp ['[ebp+var_E4],', '0']
ja ['short', 'loc_691']
cmp ['[ebp+var_E8],', '40000h']
jbe ['loc_71A']
mov ['eax,', '[ebp+var_B0]']
mov ['[ebp+var_80],', 'eax']
mov ['ecx,', '[ebp+var_AC]']
mov ['[ebp+var_7C],', 'ecx']
lea ['ecx,', '[ebp+var_44]']
call ['?GetProcessedSize@?$CBaseDecoder@VCInBuffer@@@NBitl@@QBE_KXZ']
mov ['[ebp+var_C0],', 'eax']
mov ['[ebp+var_BC],', 'edx']
mov ['esi,', 'esp']
lea ['edx,', '[ebp+var_B0]']
push ['edx']
lea ['eax,', '[ebp+var_C0]']
push ['eax']
mov ['ecx,', '[ebp+arg_10]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+arg_10]']
push ['eax']
mov ['ecx,', '[edx+0Ch]']
call ['ecx']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_C8],', 'eax']
cmp ['[ebp+var_C8],', '0']
jz ['short', 'loc_71A']
mov ['edx,', '[ebp+var_C8]']
mov ['[ebp+var_DC],', 'edx']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_DC]']
jmp ['short', 'loc_74E']
jmp ['loc_219']
lea ['ecx,', '[ebp+var_74]']
call ['?Flush@COutBuffer@@QAEJXZ']
mov ['[ebp+var_E0],', 'eax']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
lea ['ecx,', '[ebp+var_74]']
call ['??1COutBuffer@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
lea ['ecx,', '[ebp+var_44]']
call ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
mov ['eax,', '[ebp+var_E0]']
push ['edx']
mov ['ecx,', 'ebp']
push ['eax']
lea ['edx,', '$LN65']
call ['@_RTC_CheckStackVars@8']
pop ['eax']
pop ['edx']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
pop ['edi']
pop ['esi']
add ['esp,', '0E8h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['14h']
endp
?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
sub ['esp,', '28h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_38]']
mov ['ecx,', '0Ah']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'esp']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+arg_14]']
push ['eax']
mov ['ecx,', '[ebp+arg_10]']
push ['ecx']
mov ['edx,', '[ebp+arg_C]']
push ['edx']
mov ['eax,', '[ebp+arg_8]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
push ['ecx']
mov ['ecx,', '[ebp+this]']
call ['?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z']
mov ['[ebp+var_38],', 'eax']
mov ['eax,', '[ebp+var_38]']
jmp ['short', 'loc_8B0']
endp
__catch$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z$0 proc near
mov ['edx,', '[ebp-18h]']
mov ['eax,', '[edx]']
mov ['[ebp-2Ch],', 'eax']
mov ['dword', 'ptr', '[ebp-4],', '0FFFFFFFFh']
mov ['eax,', 'offset', '$LN9']
retn
endp
__catch$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z$1 proc near
mov ['ecx,', '[ebp-24h]']
mov ['edx,', '[ecx]']
mov ['[ebp-30h],', 'edx']
mov ['dword', 'ptr', '[ebp-4],', '0FFFFFFFFh']
mov ['eax,', 'offset', '$LN11']
retn
endp
__catch$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z$2 proc near
mov ['dword', 'ptr', '[ebp-34h],', '1']
mov ['dword', 'ptr', '[ebp-4],', '0FFFFFFFFh']
mov ['eax,', 'offset', '$LN13']
retn
endp
__unwindfunclet$?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z$0 proc near
lea ['ecx,', '[ebp-44h]']
jmp ['??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ']
endp
__unwindfunclet$?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z$1 proc near
lea ['ecx,', '[ebp-74h]']
jmp ['??1COutBuffer@@QAE@XZ']
endp
__ehhandler$?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-0E8h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CodeReal@CDecoder@NShrink@NCompress@@QAEJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z']
jmp ['___CxxFrameHandler3']
endp
__ehhandler$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-3Ch]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?Code@CDecoder@NShrink@NCompress@@UAGJPAUISequentialInStream@@PAUISequentialOutStream@@PB_K2PAUICompressProgressInfo@@@Z']
jmp ['___CxxFrameHandler3']
endp
??0COutBuffer@@QAE@XZ proc near         
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+4],', '0']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx+14h],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+20h],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1COutBuffer@@QAE@XZ proc near         
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?Free@COutBuffer@@QAEXXZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?SetStream@COutBuffer@@QAEXPAUISequentialOutStream@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+14h],', 'ecx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?WriteByte@COutBuffer@@QAEXE@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['dl,', '[ebp+arg_0]']
mov ['[ecx+eax],', 'dl']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+4]']
add ['ecx,', '1']
mov ['edx,', '[ebp+var_4]']
mov ['[edx+4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[eax+4]']
cmp ['edx,', '[ecx+8]']
jnz ['short', 'loc_AC8']
mov ['ecx,', '[ebp+var_4]']
call ['?FlushWithCheck@COutBuffer@@QAEXXZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??0?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['??0CInBuffer@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['??1CInBuffer@@QAE@XZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1CInBuffer@@QAE@XZ proc near          
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?Free@CInBuffer@@QAEXXZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0CInBuffer@@QAE@XZ proc near          
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0CInBufferBase@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Create@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAE_NI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['?Create@CInBuffer@@QAE_NI@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?SetStream@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXPAUISequentialInStream@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+arg_0]']
push ['eax']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['?SetStream@CInBufferBase@@QAEXPAUISequentialInStream@@@Z']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?SetStream@CInBufferBase@@QAEXPAUISequentialInStream@@@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+arg_0]']
mov ['[eax+0Ch],', 'ecx']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?Init@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['?Init@CInBufferBase@@QAEXXZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '20h']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+4],', '0']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?GetProcessedSize@?$CBaseDecoder@VCInBuffer@@@NBitl@@QBE_KXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['?GetProcessedSize@CInBufferBase@@QBE_KXZ']
mov ['ecx,', '[ebp+var_4]']
mov ['esi,', '20h']
sub ['esi,', '[ecx]']
shr ['esi,', '3']
xor ['ecx,', 'ecx']
sub ['eax,', 'esi']
sbb ['edx,', 'ecx']
pop ['esi']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?GetProcessedSize@CInBufferBase@@QBE_KXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+20h]']
xor ['esi,', 'esi']
mov ['edx,', '[ebp+var_4]']
add ['ecx,', '[edx+10h]']
adc ['esi,', '[edx+14h]']
mov ['eax,', '[ebp+var_4]']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[eax]']
sub ['eax,', '[edx+8]']
cdq
add ['ecx,', 'eax']
adc ['esi,', 'edx']
mov ['eax,', 'ecx']
mov ['edx,', 'esi']
pop ['esi']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?ReadBits@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEII@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?Normalize@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXXZ']
mov ['eax,', '1']
mov ['ecx,', '[ebp+arg_0]']
shl ['eax,', 'cl']
sub ['eax,', '1']
mov ['ecx,', '[ebp+var_4]']
and ['eax,', '[ecx+4]']
mov ['[ebp+var_8],', 'eax']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx]']
add ['eax,', '[ebp+arg_0]']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx],', 'eax']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[edx+4]']
mov ['ecx,', '[ebp+arg_0]']
shr ['eax,', 'cl']
mov ['ecx,', '[ebp+var_4]']
mov ['[ecx+4],', 'eax']
mov ['eax,', '[ebp+var_8]']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?ExtraBitsWereRead@?$CBaseDecoder@VCInBuffer@@@NBitl@@QBE_NXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax+28h],', '4']
ja ['short', 'loc_D9C']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '20h']
sub ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+28h]']
shl ['ecx,', '3']
cmp ['edx,', 'ecx']
jb ['short', 'loc_D9C']
mov ['[ebp+var_8],', '0']
jmp ['short', 'loc_DA3']
mov ['[ebp+var_8],', '1']
mov ['al,', 'byte', 'ptr', '[ebp+var_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Normalize@?$CBaseDecoder@VCInBuffer@@@NBitl@@QAEXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
jmp ['short', 'loc_DC9']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
sub ['ecx,', '8']
mov ['edx,', '[ebp+var_4]']
mov ['[edx],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax],', '8']
jb ['short', 'loc_DF9']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['?ReadByte@CInBufferBase@@QAEEXZ']
movzx ['edx,', 'al']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '20h']
sub ['ecx,', '[eax]']
shl ['edx,', 'cl']
mov ['ecx,', '[ebp+var_4]']
or ['edx,', '[ecx+4]']
mov ['eax,', '[ebp+var_4]']
mov ['[eax+4],', 'edx']
jmp ['short', 'loc_DBC']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?ReadByte@CInBufferBase@@QAEEXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[eax]']
cmp ['edx,', '[ecx+4]']
jb ['short', 'loc_E36']
mov ['ecx,', '[ebp+var_4]']
call ['?ReadByte_FromNewBlock@CInBufferBase@@IAEEXZ']
jmp ['short', 'loc_E50']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['dl,', '[ecx]']
mov ['byte', 'ptr', '[ebp+var_8+3],', 'dl']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
add ['ecx,', '1']
mov ['edx,', '[ebp+var_4]']
mov ['[edx],', 'ecx']
mov ['al,', 'byte', 'ptr', '[ebp+var_8+3]']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
