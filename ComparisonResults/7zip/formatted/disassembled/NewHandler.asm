??2@YAPAXI@Z    proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
push ['esi']
mov ['[ebp+var_8],', '0CCCCCCCCh']
mov ['[ebp+var_4],', '0CCCCCCCCh']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+Size]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__malloc']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
mov ['[ebp+var_4],', 'eax']
cmp ['[ebp+var_4],', '0']
jnz ['short', 'loc_4D']
xor ['ecx,', 'ecx']
mov ['byte', 'ptr', '[ebp+var_8+2],', 'cl']
mov ['dl,', 'byte', 'ptr', '[ebp+var_8+2]']
mov ['byte', 'ptr', '[ebp+var_8+3],', 'dl']
push ['offset', '__TI1?AVCNewException@@']
lea ['eax,', '[ebp+var_8+3]']
push ['eax']
call ['__CxxThrowException@8']
mov ['eax,', '[ebp+var_4]']
pop ['esi']
add ['esp,', '8']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
??3@YAXPAX@Z    proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['esi']
mov ['esi,', 'esp']
mov ['eax,', '[ebp+Memory]']
push ['eax']
call ['dword', 'ptr', 'ds:__imp__free']
add ['esp,', '4']
cmp ['esi,', 'esp']
call ['__RTC_CheckEsp']
pop ['esi']
cmp ['ebp,', 'esp']
call ['__RTC_CheckEsp']
pop ['ebp']
retn
endp
