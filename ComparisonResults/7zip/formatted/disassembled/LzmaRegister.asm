?CreateDec@@YGPAXXZ proc near           
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateDec@@YGPAXXZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0Ch']
mov ['[ebp+var_18],', '0CCCCCCCCh']
mov ['[ebp+var_14],', '0CCCCCCCCh']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
push ['0D8h']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_4],', '0']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_8C']
mov ['ecx,', '[ebp+var_14]']
call ['??0CDecoder@NLzma@NCompress@@QAE@XZ']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_93']
mov ['[ebp+var_18],', '0']
mov ['eax,', '[ebp+var_18]']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '18h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?CreateEnc@@YGPAXXZ proc near           
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateEnc@@YGPAXXZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '0Ch']
mov ['[ebp+var_18],', '0CCCCCCCCh']
mov ['[ebp+var_14],', '0CCCCCCCCh']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
push ['20h']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_4],', '0']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_129']
mov ['ecx,', '[ebp+var_14]']
call ['??0CEncoder@NLzma@NCompress@@QAE@XZ']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_130']
mov ['[ebp+var_18],', '0']
mov ['eax,', '[ebp+var_18]']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '18h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$?CreateDec@@YGPAXXZ$0 proc near
mov ['eax,', '[ebp-14h]']
push ['eax']
call ['??3@YAXPAX@Z']
pop ['ecx']
retn
endp
__ehhandler$?CreateDec@@YGPAXXZ proc near 
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-10h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateDec@@YGPAXXZ']
jmp ['___CxxFrameHandler3']
endp
__unwindfunclet$?CreateEnc@@YGPAXXZ$0 proc near
mov ['eax,', '[ebp-14h]']
push ['eax']
call ['??3@YAXPAX@Z']
pop ['ecx']
retn
endp
__ehhandler$?CreateEnc@@YGPAXXZ proc near 
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-10h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateEnc@@YGPAXXZ']
jmp ['___CxxFrameHandler3']
endp
??__Eg_RegisterCodec@@YAXXZ proc near   
push ['ebp']
mov ['ebp,', 'esp']
mov ['ecx,', 'offset', '_g_RegisterCodec']
call ['??0CRegisterCodecLZMA@@QAE@XZ']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn
endp
??0CRegisterCodecLZMA@@QAE@XZ proc near 
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
push ['offset', '_g_CodecInfo']
call ['?RegisterCodec@@YGXPBUCCodecInfo@@@Z']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
