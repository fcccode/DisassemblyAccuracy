endp
_utf8_nextCharSafeBody_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0ECh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_EC]']
mov ['ecx,', '3Bh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
movzx ['eax,', 'byte', 'ptr', '[ebp+arg_C]']
cmp ['eax,', '0F0h']
jge ['short', 'loc_180']
movzx ['ecx,', 'byte', 'ptr', '[ebp+arg_C]']
xor ['edx,', 'edx']
cmp ['ecx,', '0C0h']
setnl ['dl']
movzx ['eax,', 'byte', 'ptr', '[ebp+arg_C]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0E0h']
setnl ['cl']
add ['edx,', 'ecx']
mov ['[ebp+var_E8],', 'edx']
jmp ['short', 'loc_1CB']
movzx ['edx,', 'byte', 'ptr', '[ebp+arg_C]']
cmp ['edx,', '0FEh']
jge ['short', 'loc_1B5']
movzx ['eax,', 'byte', 'ptr', '[ebp+arg_C]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0F8h']
setnl ['cl']
movzx ['edx,', 'byte', 'ptr', '[ebp+arg_C]']
xor ['eax,', 'eax']
cmp ['edx,', '0FCh']
setnl ['al']
lea ['ecx,', '[ecx+eax+3]']
mov ['[ebp+var_EC],', 'ecx']
jmp ['short', 'loc_1BF']
mov ['[ebp+var_EC],', '0']
mov ['edx,', '[ebp+var_EC]']
mov ['[ebp+var_E8],', 'edx']
mov ['al,', 'byte', 'ptr', '[ebp+var_E8]']
mov ['[ebp+var_11],', 'al']
movzx ['eax,', '[ebp+var_11]']
cmp ['eax,', '5']
jle ['short', 'loc_203']
mov ['ecx,', 'ds:?__LINE__Var@?1??utf8_nextCharSafeBody_56@@9@9']
add ['ecx,', '3']
mov ['esi,', 'esp']
push ['ecx']
push ['offset', '??_C@_1FK@BJPAIEHP@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAc?$AAo?$AAm?$AAm?$AAo@']
push ['offset', '??_C@_1BG@MBJJCPN@?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DM?$AA?$DN?$AA?5?$AA5?$AA?$AA@']
call ['dword', 'ptr', 'ds:__imp___wassert']
add ['esp,', '0Ch']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
movzx ['eax,', '[ebp+var_11]']
add ['eax,', '[ebp+var_8]']
cmp ['eax,', '[ebp+arg_8]']
jle ['short', 'loc_219']
cmp ['[ebp+arg_8],', '0']
jge ['loc_37D']
movzx ['eax,', '[ebp+var_11]']
mov ['ecx,', '6']
sub ['ecx,', 'eax']
mov ['edx,', '1']
shl ['edx,', 'cl']
sub ['edx,', '1']
and ['edx,', '[ebp+arg_C]']
mov ['[ebp+arg_C],', 'edx']
mov ['al,', '[ebp+var_11]']
mov ['byte', 'ptr', '[ebp+var_E8],', 'al']
cmp ['byte', 'ptr', '[ebp+var_E8],', '1']
jz ['loc_2F7']
cmp ['byte', 'ptr', '[ebp+var_E8],', '2']
jz ['short', 'loc_2A7']
cmp ['byte', 'ptr', '[ebp+var_E8],', '3']
jz ['short', 'loc_266']
jmp ['loc_37B']
jmp ['loc_37B']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
sub ['ecx,', '80h']
mov ['[ebp+var_1D],', 'cl']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
shl ['eax,', '6']
movzx ['ecx,', '[ebp+var_1D]']
or ['eax,', 'ecx']
mov ['[ebp+arg_C],', 'eax']
cmp ['[ebp+arg_C],', '110h']
jge ['short', 'loc_2A2']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '3Fh']
jle ['short', 'loc_2A7']
jmp ['loc_37B']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
sub ['ecx,', '80h']
mov ['[ebp+var_1D],', 'cl']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
shl ['eax,', '6']
movzx ['ecx,', '[ebp+var_1D]']
or ['eax,', 'ecx']
mov ['[ebp+arg_C],', 'eax']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0FFE0h']
cmp ['eax,', '360h']
jnz ['short', 'loc_2E9']
movsx ['eax,', '[ebp+arg_10]']
cmp ['eax,', '0FFFFFFFEh']
jnz ['short', 'loc_2F2']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '3Fh']
jle ['short', 'loc_2F7']
jmp ['loc_37B']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
sub ['ecx,', '80h']
mov ['[ebp+var_1D],', 'cl']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
shl ['eax,', '6']
movzx ['ecx,', '[ebp+var_1D]']
or ['eax,', 'ecx']
mov ['[ebp+arg_C],', 'eax']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '3Fh']
jle ['short', 'loc_32C']
jmp ['short', 'loc_37B']
movzx ['eax,', '[ebp+var_11]']
mov ['ecx,', '[ebp+arg_C]']
cmp ['ecx,', '_utf8_minLegal[eax*4]']
jl ['short', 'loc_37B']
movsx ['eax,', '[ebp+arg_10]']
test ['eax,', 'eax']
jle ['short', 'loc_36E']
cmp ['[ebp+arg_C],', '0FDD0h']
jl ['short', 'loc_36E']
cmp ['[ebp+arg_C],', '0FDEFh']
jbe ['short', 'loc_365']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0FFFEh']
cmp ['eax,', '0FFFEh']
jnz ['short', 'loc_36E']
cmp ['[ebp+arg_C],', '10FFFFh']
jbe ['short', 'loc_37B']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax],', 'ecx']
mov ['eax,', '[ebp+arg_C]']
jmp ['short', 'loc_3E4']
jmp ['short', 'loc_386']
mov ['eax,', '[ebp+arg_8]']
sub ['eax,', '[ebp+var_8]']
mov ['[ebp+var_11],', 'al']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
movzx ['eax,', '[ebp+var_11]']
test ['eax,', 'eax']
jle ['short', 'loc_3C0']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
movzx ['ecx,', 'byte', 'ptr', '[eax]']
and ['ecx,', '0C0h']
cmp ['ecx,', '80h']
jnz ['short', 'loc_3C0']
mov ['eax,', '[ebp+var_8]']
add ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['al,', '[ebp+var_11]']
sub ['al,', '1']
mov ['[ebp+var_11],', 'al']
jmp ['short', 'loc_38E']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
mov ['ecx,', '[ebp+arg_4]']
mov ['edx,', '[ebp+var_8]']
sub ['edx,', '[ecx]']
push ['edx']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
mov ['eax,', '[ebp+arg_4]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax],', 'ecx']
mov ['eax,', '[ebp+arg_C]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '0ECh']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_rdata']
public ['??_C@_1BG@MBJJCPN@?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DM?$AA?$DN?$AA?5?$AA5?$AA?$AA@']
unicode ['0,', '<count', '>']
dw ['3Ch']
unicode ['0,', '<=', '5>,0']
align ['10h']
assume ['cs:_rdata']
public ['??_C@_1FK@BJPAIEHP@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAc?$AAo?$AAm?$AAm?$AAo@']
unicode ['0,', '<d:\\mozilla\\intl\\icu\\source\\common\\utf_impl.c>,0']
align ['4']
assume ['cs:_data']
public ['?__LINE__Var@?1??utf8_nextCharSafeBody_56@@9@9']
assume ['cs:_rtc$TMZ']
assume ['cs:_rtc$IMZ']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_errorValue	proc near		
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
movsx ['eax,', '[ebp+arg_4]']
test ['eax,', 'eax']
jl ['short', 'loc_4AC']
mov ['eax,', '[ebp+arg_0]']
mov ['eax,', '_utf8_errorValue[eax*4]']
jmp ['short', 'loc_4C1']
jmp ['short', 'loc_4C1']
movsx ['eax,', '[ebp+arg_4]']
cmp ['eax,', '0FFFFFFFDh']
jnz ['short', 'loc_4BE']
mov ['eax,', '0FFFDh']
jmp ['short', 'loc_4C1']
jmp ['short', 'loc_4C1']
or ['eax,', '0FFFFFFFFh']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utf8_appendCharSafeBody_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0CCh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_CC]']
mov ['ecx,', '33h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
cmp ['[ebp+arg_C],', '7FFh']
ja ['short', 'loc_53F']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '1']
cmp ['eax,', '[ebp+arg_8]']
jge ['short', 'loc_53A']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '6']
or ['eax,', '0C0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_4]']
jmp ['loc_79C']
jmp ['loc_65C']
cmp ['[ebp+arg_C],', '0FFFFh']
ja ['short', 'loc_5C6']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '2']
cmp ['eax,', '[ebp+arg_8]']
jge ['short', 'loc_5C1']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0FFFFF800h']
cmp ['eax,', '0D800h']
jz ['short', 'loc_5C1']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '0Ch']
or ['eax,', '0E0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '6']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_4]']
jmp ['loc_79C']
jmp ['loc_65C']
cmp ['[ebp+arg_C],', '10FFFFh']
ja ['loc_65C']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '3']
cmp ['eax,', '[ebp+arg_8]']
jge ['short', 'loc_65C']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '12h']
or ['eax,', '0F0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '0Ch']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '6']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+arg_4]']
add ['edx,', '1']
mov ['[ebp+arg_4],', 'edx']
mov ['eax,', '[ebp+arg_4]']
jmp ['loc_79C']
cmp ['[ebp+arg_10],', '0']
jz ['short', 'loc_66D']
mov ['eax,', '[ebp+arg_10]']
mov ['byte', 'ptr', '[eax],', '1']
jmp ['loc_799']
mov ['eax,', '[ebp+arg_8]']
sub ['eax,', '[ebp+arg_4]']
mov ['[ebp+arg_8],', 'eax']
cmp ['[ebp+arg_8],', '0']
jle ['loc_799']
cmp ['[ebp+arg_8],', '3']
jle ['short', 'loc_68D']
mov ['[ebp+arg_8],', '3']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+arg_4]']
mov ['[ebp+arg_0],', 'eax']
mov ['[ebp+var_8],', '0']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', 'dword_10C[eax*4]']
mov ['[ebp+arg_C],', 'ecx']
cmp ['[ebp+arg_C],', '7Fh']
ja ['short', 'loc_6C9']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
mov ['cl,', 'byte', 'ptr', '[ebp+arg_C]']
mov ['[eax],', 'cl']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
jmp ['loc_790']
cmp ['[ebp+arg_C],', '7FFh']
ja ['short', 'loc_6F3']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '6']
or ['eax,', '0C0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
jmp ['loc_774']
cmp ['[ebp+arg_C],', '0FFFFh']
ja ['short', 'loc_71A']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '0Ch']
or ['eax,', '0E0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
jmp ['short', 'loc_755']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '12h']
or ['eax,', '0F0h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '0Ch']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
sar ['eax,', '6']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '3Fh']
or ['eax,', '80h']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['[ecx],', 'al']
mov ['edx,', '[ebp+var_8]']
add ['edx,', '1']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+arg_4]']
add ['eax,', '[ebp+var_8]']
mov ['[ebp+arg_4],', 'eax']
mov ['eax,', '[ebp+arg_4]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utf8_prevCharSafeBody_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '104h']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_104]']
mov ['ecx,', '41h']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['[ebp+var_1D],', '1']
mov ['[ebp+var_29],', '6']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0C0h']
cmp ['eax,', '80h']
jz ['short', 'loc_7F5']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
push ['0']
call ['_errorValue']
add ['esp,', '8']
jmp ['loc_A4F']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '3Fh']
mov ['[ebp+arg_C],', 'eax']
mov ['eax,', '[ebp+var_8]']
cmp ['eax,', '[ebp+arg_4]']
jg ['short', 'loc_81A']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
push ['0']
call ['_errorValue']
add ['esp,', '8']
jmp ['loc_A4F']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+arg_0]']
add ['ecx,', '[ebp+var_8]']
mov ['dl,', '[ecx]']
mov ['[ebp+var_11],', 'dl']
movzx ['eax,', '[ebp+var_11]']
sub ['eax,', '80h']
movzx ['ecx,', 'al']
cmp ['ecx,', '7Eh']
jge ['loc_A33']
movzx ['eax,', '[ebp+var_11]']
and ['eax,', '40h']
jz ['loc_9ED']
movzx ['eax,', '[ebp+var_11]']
cmp ['eax,', '0F0h']
jge ['short', 'loc_882']
movzx ['ecx,', '[ebp+var_11]']
xor ['edx,', 'edx']
cmp ['ecx,', '0C0h']
setnl ['dl']
movzx ['eax,', '[ebp+var_11]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0E0h']
setnl ['cl']
add ['edx,', 'ecx']
mov ['[ebp+var_100],', 'edx']
jmp ['short', 'loc_8CD']
movzx ['edx,', '[ebp+var_11]']
cmp ['edx,', '0FEh']
jge ['short', 'loc_8B7']
movzx ['eax,', '[ebp+var_11]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0F8h']
setnl ['cl']
movzx ['edx,', '[ebp+var_11]']
xor ['eax,', 'eax']
cmp ['edx,', '0FCh']
setnl ['al']
lea ['ecx,', '[ecx+eax+3]']
mov ['[ebp+var_104],', 'ecx']
jmp ['short', 'loc_8C1']
mov ['[ebp+var_104],', '0']
mov ['edx,', '[ebp+var_104]']
mov ['[ebp+var_100],', 'edx']
mov ['al,', 'byte', 'ptr', '[ebp+var_100]']
mov ['[ebp+var_35],', 'al']
movzx ['eax,', '[ebp+var_1D]']
movzx ['ecx,', '[ebp+var_35]']
cmp ['eax,', 'ecx']
jnz ['loc_9AC']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax],', 'ecx']
movzx ['eax,', '[ebp+var_1D]']
mov ['ecx,', '6']
sub ['ecx,', 'eax']
mov ['edx,', '1']
shl ['edx,', 'cl']
sub ['edx,', '1']
movzx ['eax,', '[ebp+var_11]']
and ['eax,', 'edx']
mov ['[ebp+var_11],', 'al']
movzx ['eax,', '[ebp+var_11]']
movzx ['ecx,', '[ebp+var_29]']
shl ['eax,', 'cl']
or ['eax,', '[ebp+arg_C]']
mov ['[ebp+arg_C],', 'eax']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '4']
jge ['short', 'loc_988']
cmp ['[ebp+arg_C],', '10FFFFh']
jg ['short', 'loc_988']
movzx ['eax,', '[ebp+var_1D]']
mov ['ecx,', '[ebp+arg_C]']
cmp ['ecx,', '_utf8_minLegal[eax*4]']
jl ['short', 'loc_988']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0FFFFF800h']
cmp ['eax,', '0D800h']
jnz ['short', 'loc_956']
movsx ['eax,', '[ebp+arg_10]']
cmp ['eax,', '0FFFFFFFEh']
jnz ['short', 'loc_988']
movsx ['eax,', '[ebp+arg_10]']
test ['eax,', 'eax']
jle ['short', 'loc_9AA']
cmp ['[ebp+arg_C],', '0FDD0h']
jl ['short', 'loc_9AA']
cmp ['[ebp+arg_C],', '0FDEFh']
jbe ['short', 'loc_97F']
mov ['eax,', '[ebp+arg_C]']
and ['eax,', '0FFFEh']
cmp ['eax,', '0FFFEh']
jnz ['short', 'loc_9AA']
cmp ['[ebp+arg_C],', '10FFFFh']
ja ['short', 'loc_9AA']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '4']
jl ['short', 'loc_995']
mov ['[ebp+var_1D],', '3']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
movzx ['ecx,', '[ebp+var_1D]']
push ['ecx']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
jmp ['short', 'loc_9E9']
movzx ['eax,', '[ebp+var_1D]']
movzx ['ecx,', '[ebp+var_35]']
cmp ['eax,', 'ecx']
jge ['short', 'loc_9D7']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[ebp+var_8]']
mov ['[eax],', 'ecx']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
movzx ['ecx,', '[ebp+var_1D]']
push ['ecx']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
jmp ['short', 'loc_9E9']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
push ['0']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
jmp ['short', 'loc_A4C']
jmp ['short', 'loc_A31']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '5']
jge ['short', 'loc_A1D']
movzx ['eax,', '[ebp+var_11]']
and ['eax,', '3Fh']
movzx ['ecx,', '[ebp+var_29]']
shl ['eax,', 'cl']
or ['eax,', '[ebp+arg_C]']
mov ['[ebp+arg_C],', 'eax']
mov ['al,', '[ebp+var_1D]']
add ['al,', '1']
mov ['[ebp+var_1D],', 'al']
movzx ['eax,', '[ebp+var_29]']
add ['eax,', '6']
mov ['[ebp+var_29],', 'al']
jmp ['short', 'loc_A31']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
push ['0']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
jmp ['short', 'loc_A4C']
jmp ['short', 'loc_A47']
movzx ['eax,', '[ebp+arg_10]']
push ['eax']
push ['0']
call ['_errorValue']
add ['esp,', '8']
mov ['[ebp+arg_C],', 'eax']
jmp ['short', 'loc_A4C']
jmp ['loc_7FE']
mov ['eax,', '[ebp+arg_C]']
pop ['edi']
pop ['esi']
pop ['ebx']
add ['esp,', '104h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
align ['4']
assume ['cs:_text']
assume ['es:nothing,', 'ss:nothing,', 'ds:_rdata,', 'fs:nothing,', 'gs:nothing']
endp
_utf8_back1SafeBody_56 proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0ECh']
push ['ebx']
push ['esi']
push ['edi']
lea ['edi,', '[ebp+var_EC]']
mov ['ecx,', '3Bh']
mov ['eax,', '0CCCCCCCCh']
rep ['stosd']
mov ['eax,', '[ebp+arg_8]']
mov ['[ebp+var_8],', 'eax']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '5']
cmp ['eax,', '[ebp+arg_4]']
jle ['short', 'loc_A9E']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '5']
mov ['[ebp+var_14],', 'eax']
jmp ['short', 'loc_AA4']
mov ['eax,', '[ebp+arg_4]']
mov ['[ebp+var_14],', 'eax']
mov ['eax,', '[ebp+arg_0]']
add ['eax,', '[ebp+var_8]']
mov ['cl,', '[eax]']
mov ['[ebp+var_1D],', 'cl']
movzx ['eax,', '[ebp+var_1D]']
sub ['eax,', '80h']
movzx ['ecx,', 'al']
cmp ['ecx,', '7Eh']
jl ['short', 'loc_ACA']
jmp ['loc_B82']
jmp ['loc_B6D']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '0C0h']
jl ['loc_B6D']
movzx ['eax,', '[ebp+var_1D]']
cmp ['eax,', '0F0h']
jge ['short', 'loc_B0B']
movzx ['ecx,', '[ebp+var_1D]']
xor ['edx,', 'edx']
cmp ['ecx,', '0C0h']
setnl ['dl']
movzx ['eax,', '[ebp+var_1D]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0E0h']
setnl ['cl']
add ['edx,', 'ecx']
mov ['[ebp+var_E8],', 'edx']
jmp ['short', 'loc_B56']
movzx ['edx,', '[ebp+var_1D]']
cmp ['edx,', '0FEh']
jge ['short', 'loc_B40']
movzx ['eax,', '[ebp+var_1D]']
xor ['ecx,', 'ecx']
cmp ['eax,', '0F8h']
setnl ['cl']
movzx ['edx,', '[ebp+var_1D]']
xor ['eax,', 'eax']
cmp ['edx,', '0FCh']
setnl ['al']
lea ['ecx,', '[ecx+eax+3]']
mov ['[ebp+var_EC],', 'ecx']
jmp ['short', 'loc_B4A']
mov ['[ebp+var_EC],', '0']
mov ['edx,', '[ebp+var_EC]']
mov ['[ebp+var_E8],', 'edx']
mov ['eax,', '[ebp+arg_8]']
sub ['eax,', '[ebp+var_8]']
cmp ['[ebp+var_E8],', 'eax']
jl ['short', 'loc_B6B']
mov ['eax,', '[ebp+var_8]']
jmp ['short', 'loc_B85']
jmp ['short', 'loc_B6D']
jmp ['short', 'loc_B82']
mov ['eax,', '[ebp+var_8]']
sub ['eax,', '1']
mov ['[ebp+var_8],', 'eax']
mov ['ecx,', '[ebp+var_14]']
cmp ['ecx,', '[ebp+var_8]']
jle ['loc_AA4']
mov ['eax,', '[ebp+arg_8]']
pop ['edi']
pop ['esi']
pop ['ebx']
mov ['esp,', 'ebp']
pop ['ebp']
retn
extrn ['__imp___wassert:near']
extrn ['__RTC_CheckEsp:near']
extrn ['__RTC_Shutdown:near']
extrn ['__RTC_InitBase:near']
end
