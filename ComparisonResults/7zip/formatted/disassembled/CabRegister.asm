?CreateArc@NCab@NArchive@@YGPAUIInArchive@@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$?CreateArc@NCab@NArchive@@YGPAUIInArchive@@XZ']
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
push ['58h']
call ['??2@YAPAXI@Z']
add ['esp,', '4']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_4],', '0']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_8D']
mov ['ecx,', '[ebp+var_14]']
call ['??0CHandler@NCab@NArchive@@QAE@XZ']
mov ['[ebp+var_18],', 'eax']
jmp ['short', 'loc_94']
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
__unwindfunclet$?CreateArc@NCab@NArchive@@YGPAUIInArchive@@XZ$0 proc near
mov ['eax,', '[ebp-14h]']
push ['eax']
call ['??3@YAXPAX@Z']
pop ['ecx']
retn
endp
__ehhandler$?CreateArc@NCab@NArchive@@YGPAUIInArchive@@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-10h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$?CreateArc@NCab@NArchive@@YGPAUIInArchive@@XZ']
jmp ['___CxxFrameHandler3']
endp
??0CHandler@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??0CHandler@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['ecx,', '[ebp+var_10]']
call ['??0IInArchive@@QAE@XZ']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '4']
call ['??0CMyUnknownImp@@QAE@XZ']
mov ['eax,', '[ebp+var_10]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7CHandler@NCab@NArchive@@6B@']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '8']
call ['??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '38h']
call ['??0UString@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??0CHandler@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '8']
jmp ['??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
endp
__ehhandler$??0CHandler@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??0CHandler@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
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
?QueryInterface@CHandler@NCab@NArchive@@UAGJABU_GUID@@PAPAX@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
mov ['eax,', '[ebp+arg_8]']
mov ['dword', 'ptr', '[eax],', '0']
push ['offset', '_IID_IUnknown']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_404']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+this]']
mov ['[edx],', 'eax']
jmp ['short', 'loc_427']
push ['offset', '_IID_IInArchive']
mov ['ecx,', '[ebp+Buf1]']
push ['ecx']
call ['___@8']
test ['eax,', 'eax']
jz ['short', 'loc_420']
mov ['edx,', '[ebp+arg_8]']
mov ['eax,', '[ebp+this]']
mov ['[edx],', 'eax']
jmp ['short', 'loc_427']
mov ['eax,', '80004002h']
jmp ['short', 'loc_438']
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
?AddRef@CHandler@NCab@NArchive@@UAGKXZ proc near
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
?Release@CHandler@NCab@NArchive@@UAGKXZ proc near
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
jz ['short', 'loc_4EE']
mov ['ecx,', '[ebp+this]']
mov ['eax,', '[ecx+4]']
jmp ['short', 'loc_518']
mov ['edx,', '[ebp+this]']
mov ['[ebp+var_8],', 'edx']
mov ['eax,', '[ebp+var_8]']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '0']
jz ['short', 'loc_50F']
push ['1']
mov ['ecx,', '[ebp+var_4]']
call ['??_GCHandler@NCab@NArchive@@QAEPAXI@Z']
mov ['[ebp+var_10],', 'eax']
jmp ['short', 'loc_516']
mov ['[ebp+var_10],', '0']
xor ['eax,', 'eax']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??_GCHandler@NCab@NArchive@@QAEPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CHandler@NCab@NArchive@@QAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_552']
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
??1CHandler@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CHandler@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '38h']
call ['??1UString@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '8']
call ['??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CHandler@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '8']
jmp ['??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
endp
__ehhandler$??1CHandler@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CHandler@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1UString@@QAE@XZ proc near            
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '2']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '24h']
call ['??1?$CRecordVector@I@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '18h']
call ['??1?$CRecordVector@H@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '0Ch']
call ['??1?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
endp
__unwindfunclet$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ$1 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '0Ch']
jmp ['??1?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ']
endp
__unwindfunclet$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ$2 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '18h']
jmp ['??1?$CRecordVector@H@@QAE@XZ']
endp
__ehhandler$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??0IInArchive@@QAE@XZ proc near         
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0IUnknown@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
mov ['dword', 'ptr', '[eax],', 'offset', '??_7IInArchive@@6B@']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['ecx,', '[ebp+var_10]']
call ['??0?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '0Ch']
call ['??0?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '1']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '18h']
call ['??0?$CRecordVector@H@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '2']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '24h']
call ['??0?$CRecordVector@I@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['eax,', '[ebp+var_10]']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
endp
__unwindfunclet$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ$1 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '0Ch']
jmp ['??1?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ']
endp
__unwindfunclet$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ$2 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '18h']
jmp ['??1?$CRecordVector@H@@QAE@XZ']
endp
__ehhandler$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??0CMvDatabaseEx@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
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
??0?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??0?$CRecordVector@PAX@@QAE@XZ']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '14h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
call ['?Size@?$CRecordVector@PAX@@QBEIXZ']
mov ['[ebp+var_14],', 'eax']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_9B2']
mov ['eax,', '[ebp+var_14]']
sub ['eax,', '1']
mov ['[ebp+var_14],', 'eax']
mov ['ecx,', '[ebp+var_14]']
push ['ecx']
mov ['ecx,', '[ebp+var_10]']
call ['??A?$CRecordVector@PAX@@QAEAAPAXI@Z']
mov ['edx,', '[eax]']
mov ['[ebp+var_1C],', 'edx']
mov ['eax,', '[ebp+var_1C]']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jz ['short', 'loc_9A9']
push ['1']
mov ['ecx,', '[ebp+var_18]']
call ['??_GCDatabaseEx@NCab@NArchive@@QAEPAXI@Z']
mov ['[ebp+var_20],', 'eax']
jmp ['short', 'loc_9B0']
mov ['[ebp+var_20],', '0']
jmp ['short', 'loc_96E']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1?$CRecordVector@PAX@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '20h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CRecordVector@PAX@@QAE@XZ']
endp
__ehhandler$??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-18h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1?$CObjectVector@UCDatabaseEx@NCab@NArchive@@@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??0?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ proc near
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
mov ['dword', 'ptr', '[edx+8],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CRecordVector@UCMvItem@NCab@NArchive@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0?$CRecordVector@H@@QAE@XZ proc near  
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
mov ['dword', 'ptr', '[edx+8],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CRecordVector@H@@QAE@XZ proc near  
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0?$CRecordVector@I@@QAE@XZ proc near  
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
mov ['dword', 'ptr', '[edx+8],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CRecordVector@I@@QAE@XZ proc near  
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??_GCDatabaseEx@NCab@NArchive@@QAEPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_BA6']
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
??1CDatabaseEx@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CDatabaseEx@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '78h']
call ['??1?$CMyComPtr@UIInStream@@@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1CDatabase@NCab@NArchive@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CDatabaseEx@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1CDatabase@NCab@NArchive@@QAE@XZ']
endp
__ehhandler$??1CDatabaseEx@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CDatabaseEx@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1CDatabase@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CDatabase@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '1']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '20h']
call ['??1CInArcInfo@NCab@NArchive@@QAE@XZ']
mov ['byte', 'ptr', '[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '0Ch']
call ['??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1?$CRecordVector@UCFolder@NCab@NArchive@@@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CDatabase@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CRecordVector@UCFolder@NCab@NArchive@@@@QAE@XZ']
endp
__unwindfunclet$??1CDatabase@NCab@NArchive@@QAE@XZ$1 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '0Ch']
jmp ['??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ']
endp
__ehhandler$??1CDatabase@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CDatabase@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1CInArcInfo@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CArchInfo@NCab@NArchive@@QAE@XZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1CArchInfo@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1CArchInfo@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '34h']
call ['??1COtherArc@NCab@NArchive@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '1Ch']
call ['??1COtherArc@NCab@NArchive@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1CArchInfo@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
add ['ecx,', '1Ch']
jmp ['??1COtherArc@NCab@NArchive@@QAE@XZ']
endp
__ehhandler$??1CArchInfo@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1CArchInfo@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1COtherArc@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1COtherArc@NCab@NArchive@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
push ['ecx']
mov ['[ebp+var_10],', '0CCCCCCCCh']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
add ['ecx,', '0Ch']
call ['??1AString@@QAE@XZ']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1AString@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '10h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1COtherArc@NCab@NArchive@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1AString@@QAE@XZ']
endp
__ehhandler$??1COtherArc@NCab@NArchive@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-8]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1COtherArc@NCab@NArchive@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??1AString@@QAE@XZ proc near            
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??0?$CRecordVector@PAX@@QAE@XZ proc near
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
mov ['dword', 'ptr', '[edx+8],', '0']
mov ['eax,', '[ebp+var_4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Size@?$CRecordVector@PAX@@QBEIXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['eax,', '[eax+4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CRecordVector@PAX@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??A?$CRecordVector@PAX@@QAEAAPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[ebp+arg_0]']
lea ['eax,', '[ecx+edx*4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['4']
endp
??1?$CRecordVector@UCFolder@NCab@NArchive@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['[ebp+var_8],', 'ecx']
mov ['edx,', '[ebp+var_8]']
push ['edx']
call ['??3@YAXPAX@Z']
add ['esp,', '4']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['0FFFFFFFFh']
push ['offset', '__ehhandler$??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ']
mov ['eax,', 'large', 'fs:0']
push ['eax']
sub ['esp,', '14h']
mov ['eax,', '0CCCCCCCCh']
mov ['[ebp+var_20],', 'eax']
mov ['[ebp+var_1C],', 'eax']
mov ['[ebp+var_18],', 'eax']
mov ['[ebp+var_14],', 'eax']
mov ['[ebp+var_10],', 'eax']
mov ['eax,', 'dword', 'ptr', 'ds:___security_cookie']
xor ['eax,', 'ebp']
push ['eax']
lea ['eax,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'eax']
mov ['[ebp+var_10],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['ecx,', '[ebp+var_10]']
call ['?Size@?$CRecordVector@PAX@@QBEIXZ']
mov ['[ebp+var_14],', 'eax']
cmp ['[ebp+var_14],', '0']
jz ['short', 'loc_109E']
mov ['eax,', '[ebp+var_14]']
sub ['eax,', '1']
mov ['[ebp+var_14],', 'eax']
mov ['ecx,', '[ebp+var_14]']
push ['ecx']
mov ['ecx,', '[ebp+var_10]']
call ['??A?$CRecordVector@PAX@@QAEAAPAXI@Z']
mov ['edx,', '[eax]']
mov ['[ebp+var_1C],', 'edx']
mov ['eax,', '[ebp+var_1C]']
mov ['[ebp+var_18],', 'eax']
cmp ['[ebp+var_18],', '0']
jz ['short', 'loc_1095']
push ['1']
mov ['ecx,', '[ebp+var_18]']
call ['??_GCItem@NCab@NArchive@@QAEPAXI@Z']
mov ['[ebp+var_20],', 'eax']
jmp ['short', 'loc_109C']
mov ['[ebp+var_20],', '0']
jmp ['short', 'loc_105A']
mov ['[ebp+var_4],', '0FFFFFFFFh']
mov ['ecx,', '[ebp+var_10]']
call ['??1?$CRecordVector@PAX@@QAE@XZ']
mov ['ecx,', '[ebp+var_C]']
mov ['large', 'fs:0,', 'ecx']
pop ['ecx']
add ['esp,', '20h']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
__unwindfunclet$??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ$0 proc near
mov ['ecx,', '[ebp-10h]']
jmp ['??1?$CRecordVector@PAX@@QAE@XZ']
endp
__ehhandler$??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ proc near
mov ['edx,', '[esp+arg_4]']
lea ['eax,', '[edx+0Ch]']
mov ['ecx,', '[edx-18h]']
xor ['ecx,', 'eax']
call ['@__security_check_cookie@4']
mov ['eax,', 'offset', '__ehfuncinfo$??1?$CObjectVector@UCItem@NCab@NArchive@@@@QAE@XZ']
jmp ['___CxxFrameHandler3']
endp
??_GCItem@NCab@NArchive@@QAEPAXI@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1CItem@NCab@NArchive@@QAE@XZ']
mov ['eax,', '[ebp+arg_0]']
and ['eax,', '1']
jz ['short', 'loc_1142']
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
??1CItem@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['??1AString@@QAE@XZ']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??1?$CMyComPtr@UIInStream@@@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
push ['esi']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
cmp ['dword', 'ptr', '[eax],', '0']
jz ['short', 'loc_11AE']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx]']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax]']
mov ['edx,', '[edx]']
mov ['esi,', 'esp']
push ['ecx']
mov ['eax,', '[edx+8]']
call ['eax']
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
??__Eg_RegisterArc@NCab@NArchive@@YAXXZ proc near
push ['ebp']
mov ['ebp,', 'esp']
mov ['ecx,', 'offset', '_g_RegisterArc']
call ['??0CRegisterArc@NCab@NArchive@@QAE@XZ']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn
endp
??0CRegisterArc@NCab@NArchive@@QAE@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['[ebp+var_4],', 'ecx']
push ['offset', '_g_ArcInfo']
call ['?RegisterArc@@YGXPBUCArcInfo@@@Z']
mov ['eax,', '[ebp+var_4]']
add ['esp,', '4']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
