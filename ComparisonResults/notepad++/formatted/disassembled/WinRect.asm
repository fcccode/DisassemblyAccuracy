??0WINRECT@@QAE@GHJ@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+Dst],', 'ecx']
push ['24h']
push ['0']
mov ['eax,', '[ebp+Dst]']
push ['eax']
call ['_memset']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+Dst]']
mov ['dx,', '[ebp+arg_0]']
mov ['[ecx+18h],', 'dx']
mov ['eax,', '[ebp+Dst]']
mov ['ecx,', '[ebp+arg_4]']
mov ['[eax+1Ch],', 'ecx']
mov ['edx,', '[ebp+Dst]']
mov ['eax,', '[ebp+arg_8]']
mov ['[edx+20h],', 'eax']
mov ['eax,', '[ebp+Dst]']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['0Ch']
endp
?InitMap@WINRECT@@SAPAV1@PAV1@0@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
cmp ['[ebp+arg_0],', '0']
jnz ['short', 'loc_318']
push ['3Ch']
push ['offset', '$SG63905']
push ['offset', '$SG63906']
call ['__wassert']
add ['esp,', '0Ch']
mov ['ecx,', '[ebp+arg_0]']
mov ['[ebp+var_4],', 'ecx']
mov ['[ebp+var_8],', '0']
mov ['ecx,', '[ebp+var_4]']
call ['?IsEndGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jnz ['short', 'loc_3A4']
mov ['edx,', '[ebp+var_4]']
mov ['eax,', '[ebp+var_8]']
mov ['[edx+4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
mov ['dword', 'ptr', '[ecx],', '0']
cmp ['[ebp+var_8],', '0']
jz ['short', 'loc_351']
mov ['edx,', '[ebp+var_8]']
mov ['eax,', '[ebp+var_4]']
mov ['[edx],', 'eax']
mov ['ecx,', '[ebp+var_4]']
mov ['[ebp+var_8],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?IsGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jz ['short', 'loc_399']
mov ['edx,', '[ebp+var_4]']
push ['edx']
mov ['eax,', '[ebp+var_4]']
add ['eax,', '24h']
push ['eax']
call ['?InitMap@WINRECT@@SAPAV1@PAV1@0@Z']
add ['esp,', '8']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
call ['?IsEndGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jnz ['short', 'loc_399']
push ['49h']
push ['offset', '$SG63915']
push ['offset', '$SG63916']
call ['__wassert']
add ['esp,', '0Ch']
mov ['edx,', '[ebp+var_4]']
add ['edx,', '24h']
mov ['[ebp+var_4],', 'edx']
jmp ['short', 'loc_325']
mov ['ecx,', '[ebp+var_4]']
call ['?IsEndGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jnz ['short', 'loc_3C4']
push ['4Eh']
push ['offset', '$SG63918']
push ['offset', '$SG63919']
call ['__wassert']
add ['esp,', '0Ch']
cmp ['[ebp+var_8],', '0']
jnz ['short', 'loc_3DE']
push ['4Fh']
push ['offset', '$SG63921']
push ['offset', '$SG63922']
call ['__wassert']
add ['esp,', '0Ch']
mov ['edx,', '[ebp+var_8]']
cmp ['dword', 'ptr', '[edx],', '0']
jz ['short', 'loc_3FA']
push ['50h']
push ['offset', '$SG63924']
push ['offset', '$SG63925']
call ['__wassert']
add ['esp,', '0Ch']
cmp ['[ebp+arg_4],', '0']
jz ['short', 'loc_408']
mov ['ecx,', '[ebp+var_4]']
mov ['[ebp+var_C],', 'ecx']
jmp ['short', 'loc_40F']
mov ['[ebp+var_C],', '0']
mov ['eax,', '[ebp+var_C]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Parent@WINRECT@@QAEPAV1@XZ proc near
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '0Ch']
mov ['[ebp+var_C],', 'ecx']
mov ['[ebp+var_4],', '0']
mov ['eax,', '[ebp+var_C]']
mov ['[ebp+var_4],', 'eax']
jmp ['short', 'loc_43B']
mov ['ecx,', '[ebp+var_4]']
call ['?Prev@WINRECT@@QAEPAV1@XZ']
mov ['[ebp+var_4],', 'eax']
mov ['ecx,', '[ebp+var_4]']
call ['?Prev@WINRECT@@QAEPAV1@XZ']
test ['eax,', 'eax']
jz ['short', 'loc_449']
jmp ['short', 'loc_430']
mov ['ecx,', '[ebp+var_4]']
sub ['ecx,', '24h']
mov ['[ebp+var_8],', 'ecx']
mov ['ecx,', '[ebp+var_8]']
call ['?IsGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jnz ['short', 'loc_472']
push ['24h']
push ['offset', '$SG63886']
push ['offset', '$SG63887']
call ['__wassert']
add ['esp,', '0Ch']
mov ['eax,', '[ebp+var_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?GetMargins@WINRECT@@QAEHAAH0@Z proc near
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?IsGroup@WINRECT@@QBEHXZ']
test ['eax,', 'eax']
jz ['short', 'loc_4CD']
mov ['eax,', '[ebp+var_4]']
mov ['ecx,', '[eax+20h]']
and ['ecx,', '0FFFFh']
movsx ['edx,', 'cx']
mov ['eax,', '[ebp+arg_0]']
mov ['[eax],', 'edx']
mov ['ecx,', '[ebp+var_4]']
mov ['edx,', '[ecx+20h]']
shr ['edx,', '10h']
and ['edx,', '0FFFFh']
movsx ['eax,', 'dx']
mov ['ecx,', '[ebp+arg_4]']
mov ['[ecx],', 'eax']
mov ['eax,', '1']
jmp ['short', 'loc_4E1']
mov ['edx,', '[ebp+arg_4]']
mov ['dword', 'ptr', '[edx],', '0']
mov ['eax,', '[ebp+arg_0]']
mov ['dword', 'ptr', '[eax],', '0']
xor ['eax,', 'eax']
mov ['esp,', 'ebp']
pop ['ebp']
retn ['8']
endp
?GroupType@WINRECT@@QBEGXZ proc near    
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
movzx ['eax,', 'word', 'ptr', '[eax+18h]']
and ['eax,', '0F0h']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?IsEndGroup@WINRECT@@QBEHXZ proc near   
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
movzx ['ecx,', 'word', 'ptr', '[eax+18h]']
test ['ecx,', 'ecx']
jz ['short', 'loc_52B']
mov ['edx,', '[ebp+var_4]']
movzx ['eax,', 'word', 'ptr', '[edx+18h]']
cmp ['eax,', '0F0h']
jz ['short', 'loc_52B']
mov ['[ebp+var_8],', '0']
jmp ['short', 'loc_532']
mov ['[ebp+var_8],', '1']
mov ['eax,', '[ebp+var_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?IsGroup@WINRECT@@QBEHXZ proc near      
push ['ebp']
mov ['ebp,', 'esp']
sub ['esp,', '8']
mov ['[ebp+var_4],', 'ecx']
mov ['ecx,', '[ebp+var_4]']
call ['?GroupType@WINRECT@@QBEGXZ']
movzx ['eax,', 'ax']
test ['eax,', 'eax']
jz ['short', 'loc_570']
mov ['ecx,', '[ebp+var_4]']
call ['?GroupType@WINRECT@@QBEGXZ']
movzx ['ecx,', 'ax']
cmp ['ecx,', '0F0h']
jz ['short', 'loc_570']
mov ['[ebp+var_8],', '1']
jmp ['short', 'loc_577']
mov ['[ebp+var_8],', '0']
mov ['eax,', '[ebp+var_8]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp
?Prev@WINRECT@@QAEPAV1@XZ proc near     
push ['ebp']
mov ['ebp,', 'esp']
push ['ecx']
mov ['[ebp+var_4],', 'ecx']
mov ['eax,', '[ebp+var_4]']
mov ['eax,', '[eax+4]']
mov ['esp,', 'ebp']
pop ['ebp']
retn
endp