?CreateCodec@@YGPAXXZ proc near         
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateCodec@@YGPAXXZ']
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
push ['28h']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_4],', '0']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_89']
mov ['ecx,', '[ebp+var_14]']
call ['??0CCopyCoder@NCompress@@QAE@XZ']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_90']
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
__unwindfunclet$?CreateCodec@@YGPAXXZ$0 proc near
mov ['eax,', '[ebp-14h]']
push ['eax']
call ['??3@YAXPAX@Z']
pop ['ecx']
retn
endp
__ehhandler$?CreateCodec@@YGPAXXZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-10h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateCodec@@YGPAXXZ']
jmp ['___CxxFrameHandler3']
endp
??0CCopyCoder@NCompress@@QAE@XZ proc near 
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0ICompressCoder@@QAE@XZ']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '4']
call ['??0ICompressSetInStream@@QAE@XZ']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '8']
call ['??0ISequentialInStream@@QAE@XZ']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '0Ch']
call ['??0ICompressGetInStreamProcessedSize@@QAE@XZ']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '10h']
call ['??0CMyUnknownImp@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7CCopyCoder@NCompress@@6BICompressCoder@@@']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+4],', 'offset', '??_7CCopyCoder@NCompress@@6BICompressSetInStream@@@']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx+8],', 'offset', '??_7CCopyCoder@NCompress@@6BISequentialInStream@@@']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax+0Ch],', 'offset', '??_7CCopyCoder@NCompress@@6BICompressGetInStreamProcessedSize@@@']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx+14h],', '0']
mov ['ecx,', '[ebp+var_4]']
add ['ecx,', '18h']
call ['??0?$CMyComPtr@UISequentialInStream@@@@QAE@XZ']
mov ['edx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[edx+20h],', '0']
mov ['dword', 'ptr', '[edx+24h],', '0']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0CMyUnknownImp@@QAE@XZ proc near      
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?QueryInterface@CCopyCoder@NCompress@@UAGJABU_GUID@@PAPAX@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
mov ['[ebp+var_C],', '0CCCCCCCCh']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '0']
push ['offset', '_IID_IUnknown']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_62F']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+this]']
mov ['[edx],', 'eax']
jmp ['loc_6F1']
push ['offset', '_IID_ICompressCoder']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_64E']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+this]']
mov ['[edx],', 'eax']
jmp ['loc_6F1']
push ['offset', '_IID_ICompressSetInStream']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_682']
cmp ['[ebp+this],', '0']
jz ['short', 'loc_671']
mov ['edx,', '[ebp+this]']
add ['edx,', '4']
mov ['[ebp+var_4],', 'edx']
jmp ['short', 'loc_678']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+arg_8]']
mov ['ecx,', '[ebp+var_4]']
mov ['[eax],', 'ecx']
jmp ['short', 'loc_6F1']
push ['offset', '_IID_ISequentialInStream']
mov ['edx,', '[ebp+Buf1]']
push ['edx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_6B6']
cmp ['[ebp+this],', '0']
jz ['short', 'loc_6A5']
mov ['eax,', '[ebp+this]']
add ['eax,', '8']
mov ['[ebp+var_8],', 'eax']
jmp ['short', 'loc_6AC']
mov ['[ebp+var_8],', '0']
mov ['ecx,', '[ebp+arg_8]']
mov ['edx,', '[ebp+var_8]']
mov ['[ecx],', 'edx']
jmp ['short', 'loc_6F1']
push ['offset', '_IID_ICompressGetInStreamProcessedSize']
mov ['eax,', '[ebp+Buf1]']
push ['eax']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_6EA']
cmp ['[ebp+this],', '0']
jz ['short', 'loc_6D9']
mov ['ecx,', '[ebp+this]']
add ['ecx,', '0Ch']
mov ['[ebp+var_C],', 'ecx']
jmp ['short', 'loc_6E0']
mov ['[ebp+var_C],', '0']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+var_C]']
mov ['[edx],', 'eax']
jmp ['short', 'loc_6F1']
mov ['eax,', '80004002h']
jmp ['short', 'loc_702']
mov ['ecx,', '[ebp+this]']
mov ['edx,', '[ecx+10h]']
add ['edx,', '1']
mov ['eax,', '[ebp+this]']
mov ['[eax+10h],', 'edx']
xor ['eax,', 'eax']
add ['esp,', '0Ch']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?AddRef@CCopyCoder@NCompress@@UAGKXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[eax+10h]']
add ['ecx,', '1']
mov ['[ebp+var_4],', 'ecx']
mov ['edx,', '[ebp+this]']
mov ['eax,', '[ebp+var_4]']
mov ['[edx+10h],', 'eax']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
?Release@CCopyCoder@NCompress@@UAGKXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '10h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_10],', 'eax']
mov ['[ebp+var_C],', 'eax']
mov ['[ebp+var_8],', 'eax']
mov ['[ebp+var_4],', 'eax']
mov ['eax,', '[ebp+this]']
mov ['ecx,', '[eax+10h]']
sub ['ecx,', '1']
mov ['[ebp+var_C],', 'ecx']
mov ['edx,', '[ebp+this]']
mov ['eax,', '[ebp+var_C]']
mov ['[edx+10h],', 'eax']
cmp ['[ebp+var_C],', '0']
jz ['short', 'loc_77A']
mov ['ecx,', '[ebp+this]']
mov ['eax,', '[ecx+10h]']
jmp ['short', 'loc_7A4']
mov ['edx,', '[ebp+this]']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '0']
jz ['short', 'loc_79B']
push ['1']
mov ['ecx,', '[ebp+var_4]']
call ['??_GCCopyCoder@NCompress@@QAEPAXI@Z']
mov ['[ebp+var_10],', 'eax']
jmp ['short', 'loc_7A2']
mov ['[ebp+var_10],', '0']
xor ['eax,', 'eax']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??0ICompressCoder@@QAE@XZ proc near     
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0IUnknown@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7ICompressCoder@@6B@']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0ICompressSetInStream@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0IUnknown@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7ICompressSetInStream@@6B@']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
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
??0ISequentialInStream@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0IUnknown@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7ISequentialInStream@@6B@']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0ICompressGetInStreamProcessedSize@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0IUnknown@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7ICompressGetInStreamProcessedSize@@6B@']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??_GCCopyCoder@NCompress@@QAEPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CCopyCoder@NCompress@@QAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_986']
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
??0IUnknown@@QAE@XZ proc near           
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0?$CMyComPtr@UISequentialInStream@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Release@CCopyCoder@NCompress@@W3AGKXZ proc near
sub ['[esp+arg_0],', '4']
jmp ['?Release@CCopyCoder@NCompress@@UAGKXZ']
endp
?Release@CCopyCoder@NCompress@@W7AGKXZ proc near
sub ['[esp+arg_0],', '8']
jmp ['?Release@CCopyCoder@NCompress@@UAGKXZ']
endp
?Release@CCopyCoder@NCompress@@WM@AGKXZ proc near
sub ['[esp+arg_0],', '0Ch']
jmp ['?Release@CCopyCoder@NCompress@@UAGKXZ']
endp
?AddRef@CCopyCoder@NCompress@@W3AGKXZ proc near 
sub ['[esp+arg_0],', '4']
jmp ['?AddRef@CCopyCoder@NCompress@@UAGKXZ']
endp
?AddRef@CCopyCoder@NCompress@@W7AGKXZ proc near 
sub ['[esp+arg_0],', '8']
jmp ['?AddRef@CCopyCoder@NCompress@@UAGKXZ']
endp
?QueryInterface@CCopyCoder@NCompress@@W3AGJABU_GUID@@PAPAX@Z proc near
sub ['[esp+arg_0],', '4']
jmp ['?QueryInterface@CCopyCoder@NCompress@@UAGJABU_GUID@@PAPAX@Z']
endp
?AddRef@CCopyCoder@NCompress@@WM@AGKXZ proc near
sub ['[esp+arg_0],', '0Ch']
jmp ['?AddRef@CCopyCoder@NCompress@@UAGKXZ']
endp
?QueryInterface@CCopyCoder@NCompress@@W7AGJABU_GUID@@PAPAX@Z proc near
sub ['[esp+arg_0],', '8']
jmp ['?QueryInterface@CCopyCoder@NCompress@@UAGJABU_GUID@@PAPAX@Z']
endp
?QueryInterface@CCopyCoder@NCompress@@WM@AGJABU_GUID@@PAPAX@Z proc near
sub ['[esp+arg_0],', '0Ch']
jmp ['?QueryInterface@CCopyCoder@NCompress@@UAGJABU_GUID@@PAPAX@Z']
endp
??__Eg_RegisterCodec@@YAXXZ proc near   
push ['ebp']
mov ['ebp,', 'esp']
mov ['ecx,', 'offset', '_g_RegisterCodec']
call ['??0CRegisterCodecCopy@@QAE@XZ']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn
endp
??0CRegisterCodecCopy@@QAE@XZ proc near 
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
