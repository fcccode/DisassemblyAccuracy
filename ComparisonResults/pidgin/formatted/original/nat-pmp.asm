endp
_purple_pmp_get_public_ip proc near	
sub ['esp,', '1Ch']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+1Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['edx,', '[esp+1Ch+var_10]']
xor ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_1E']
add ['esp,', '1Ch']
retn
call ['___stack_chk_fail']
endp
_purple_pmp_create_map proc near	
sub ['esp,', '1Ch']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+1Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['edx,', '[esp+1Ch+var_10]']
xor ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_42']
add ['esp,', '1Ch']
retn
call ['___stack_chk_fail']
endp
_purple_pmp_destroy_map	proc near	
sub ['esp,', '1Ch']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+1Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['edx,', '[esp+1Ch+var_10]']
xor ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_66']
add ['esp,', '1Ch']
retn
call ['___stack_chk_fail']
endp
_purple_pmp_init proc near		
sub ['esp,', '1Ch']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+1Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['eax,', '[esp+1Ch+var_10]']
xor ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_8A']
add ['esp,', '1Ch']
retn
call ['___stack_chk_fail']
assume ['cs:_debug_info']
db ['2,', '0']
dd ['offset', 'dword_494']
dw ['104h']
dd ['65636170h,', '69705C5Ch,', '6E696764h,', '7665642Dh,', '5C5C6C65h']
dd ['67646970h,', '322D6E69h,', '2E30312Eh,', '5C5C3131h,', '7062696Ch']
dd ['6C707275h']
db ['65h,', '0']
dd ['offset', '_purple_pmp_get_public_ip']
dd ['offset', 'unk_8F']
dd ['offset', 'off_68C']
dw ['402h']
dd ['offset', '_purple_pmp_init']
db ['3,', '1,', '6']
db ['3']
db ['2,', '7,', '73h']
dw ['403h']
dw ['5F04h']
dw ['220h']
dd ['13181h,', '705F0500h,', '2007274h,', '6683h,', '230200h,', '6E635F05h']
dd ['84020074h,', '131h,', '5042302h,', '7361625Fh,', '85020065h,', '66h']
dd ['5082302h,', '616C665Fh,', '86020067h,', '131h,', '50C2302h,', '6C69665Fh']
dd ['87020065h,', '131h,', '5102302h,', '6168635Fh,', '66756272h,', '31880200h']
dd ['2000001h,', '5F051423h,', '73667562h,', '2007A69h,', '13189h,', '18230200h']
dd ['6D745F05h,', '616E6670h,', '200656Dh,', '668Ah,', '1C230200h,', '5040300h']
dd ['746E69h,', '4C494606h,', '8B020045h,', '9Ah,', '6C050803h,', '20676E6Fh']
dd ['676E6F6Ch,', '746E6920h,', '5040300h,', '676E6F6Ch,', '746E6920h']
dd ['5020300h,', '726F6873h,', '6E692074h,', '4030074h']
db ['3']
db ['4']
db ['3']
db ['8']
db ['4,', '64h,', '6Fh']
db ['3,', '0Ch,', '4']
db ['3']
db ['3']
db ['1']
db ['3']
dw ['6706h']
db ['69h']
db ['6Eh,', '74h,', '0']
db ['3']
db ['30h,', '31h,', '1']
db ['0']
align ['2']
dw ['6706h']
db ['3']
db ['31h,', '0E2h,', '1']
db ['0']
align ['2']
dw ['403h']
db ['4']
db ['2']
db ['4']
dd ['offset', 'loc_74']
db ['7,', '2', 'dup(4)']
db ['27h']
dd ['offset', 'byte_241+1']
dw ['800h']
db ['1']
align ['2']
dw ['5006h']
db ['4,', '2Ah,', '0Dh']
db ['2']
db ['2', 'dup(0),', '9']
db ['1']
dw ['2201h']
dd ['660102h']
db ['2', 'dup(0)']
dd ['offset', '_purple_pmp_get_public_ip']
dd ['offset', 'unk_23']
dd ['offset', 'dword_58C']
dw ['9501h']
dd ['0A000002h']
dd ['offset', 'unk_23']
dd ['offset', 'aType+1']
db ['0']
db ['9,', '1,', '70h']
db ['1,', '28h,', '2']
dd ['1EE01h']
db ['0']
dd ['offset', '_purple_pmp_create_map']
dd ['offset', 'unk_47']
dd ['offset', 'off_5C4']
db ['1,', '19h,', '3']
dd ['740B0000h,', '657079h,', '42022801h,', '2000002h']
db ['91h,', '0,', '0Ch']
dd ['offset', 'aPrivateport']
db ['1']
dd ['740228h,', '91020000h,', '75700B04h,', '63696C62h,', '74726F70h']
dd ['2280100h,', '74h,', '0B089102h,', '6566696Ch,', '656D6974h,', '2280100h']
dd ['131h,', '0A0C9102h']
dd ['offset', 'unk_47']
dd ['offset', 'aType+1']
db ['0']
db ['9,', '1,', '70h']
dw ['2E01h']
dd ['1EE0102h']
db ['2', 'dup(0)']
dd ['offset', '_purple_pmp_destroy_map']
dd ['offset', 'unk_6B']
dd ['offset', 'off_5FC']
dw ['7401h']
dd ['0B000003h']
db ['1,', '2Eh,', '2']
dd ['offset', 'byte_241+1']
dd ['0C009102h']
dd ['offset', 'aPrivateport']
db ['91h,', '4,', '0Ah']
dd ['offset', 'unk_6B']
dd ['offset', 'aType+1']
align ['4']
dd ['7570010Dh,', '656C7072h,', '706D705Fh,', '696E695Fh,', '34010074h']
db ['2,', '1']
dd ['offset', '_purple_pmp_init']
dd ['offset', 'unk_8F']
dd ['offset', 'off_634']
dw ['0A501h']
dd ['0A000003h']
dd ['offset', 'unk_8F']
dd ['offset', 'aType+1']
dd ['1380E00h,', '3B00000h,', '0F0000h,', '6F695F10h,', '9A020062h,', '3A5h']
dd ['5F100101h,', '5F626D5Fh,', '5F727563h,', '78616Dh,', '1315C05h']
dd ['1010000h,', '63705F10h,', '65707974h,', '7730500h,', '1000002h']
dd ['5F011101h,', '6174735Fh,', '635F6B63h,', '665F6B68h,', '6C6961h']
dd ['10101h']
assume ['cs:_debug_abbrev']
dd ['0B0B000Fh,', '1349h,', '0B002403h,', '30B3E0Bh,', '4000008h,', '8030113h']
dd ['0B3A0B0Bh,', '13010B3Bh,', '0D050000h,', '3A080300h,', '490B3B0Bh']
dd ['0A3813h,', '160600h,', '0B3A0803h,', '13490B3Bh,', '4070000h,', '3A0B0B01h']
dd ['10B3B0Bh,', '8000013h,', '8030028h,', '0D1Ch,', '3F012E09h,', '3A08030Ch']
dd ['27053B0Bh,', '1113490Ch,', '40011201h,', '0C429706h,', '1301h,', '182890Ah']
dd ['31011100h,', '0B000013h,', '8030005h,', '53B0B3Ah,', '0A021349h']
dd ['50C0000h,', '3A0E0300h,', '49053B0Bh,', '0A0213h,', '12E0D00h,', '8030C3Fh']
dd ['53B0B3Ah,', '1110C27h,', '6400112h,', '10C4297h,', '0E000013h,', '13490101h']
dd ['1301h,', '210Fh,', '341000h,', '0B3A0803h,', '13490B3Bh,', '0C3C0C3Fh']
dd ['2E110000h,', '30C3F00h,', '340C2708h,', '0C3C0Ch']
db ['2', 'dup(0)']
align ['4']
assume ['cs:_debug_loc']
dd ['3,', '4740002h,', '3,', '1Dh,', '20740002h,', '1Dh,', '1Eh,', '4740002h']
dd ['1Eh,', '23h,', '20740002h,', '2', 'dup(0)']
dd ['offset', 'loc_27']
dd ['4740002h,', '27h,', '41h,', '20740002h,', '41h,', '42h,', '4740002h,', '42h']
dd ['47h,', '20740002h,', '2', 'dup(0)']
dd ['offset', 'loc_4B']
dd ['4740002h,', '4Bh,', '65h,', '20740002h,', '65h,', '66h,', '4740002h,', '66h']
dd ['6Bh,', '20740002h,', '2', 'dup(0)']
dd ['offset', 'loc_6F']
dd ['4740002h,', '6Fh,', '89h,', '20740002h,', '89h,', '8Ah,', '4740002h,', '8Ah']
dd ['8Fh,', '20740002h,', '2', 'dup(0)']
assume ['cs:_debug_aranges']
dd ['1Ch']
db ['2,', '0']
dd ['offset', 'off_98']
dw ['4']
dd ['0']
dd ['offset', '_purple_pmp_get_public_ip']
dd ['offset', 'unk_8F']
dd ['2', 'dup(0)']
assume ['cs:_debug_line']
db ['2']
align ['2']
dd ['offset', 'dword_B0+33h']
dw ['101h']
db ['0FBh']
db ['0Eh,', '0Dh,', '0']
db ['1']
db ['3', 'dup(1)']
db ['0']
db ['2', 'dup(0),', '1']
db ['0']
align ['2']
dw ['6301h']
db ["'gw32/4.7.2/../../../../include',0"]
align ['4']
align ['4']
dd ['64747300h,', '682E6F69h,', '100h,', '70797467h,', '682E7365h,', '200h']
dd ['2D74616Eh,', '2E706D70h,', '68h,', '79746300h,', '682E6570h,', '100h']
dd ['2050000h']
dd ['offset', '_purple_pmp_get_public_ip']
dd ['104A203h,', '3', 'dup(5C08AE3Ch),', '1502AE3Ch']
db ['0,', '2', 'dup(1)']
align ['4']
assume ['cs:_debug_str']
assume ['cs:_eh_frame']
dd ['14h,', '0']
dd ['527A01h,', '1087C01h,', '4040C1Bh,', '188h,', '18h,', '1Ch']
dd ['offset', 'unk_8F-853h']
dd ['offset', 'unk_23']
dd ['200E4300h,', '40E0A5Ah,', '0B41h,', '18h,', '38h']
dd ['offset', 'unk_8F-84Bh']
dd ['offset', 'unk_23']
dd ['200E4300h,', '40E0A5Ah,', '0B41h,', '18h,', '54h']
dd ['offset', 'unk_8F-843h']
dd ['offset', 'unk_23']
dd ['200E4300h,', '40E0A5Ah,', '0B41h,', '18h,', '70h']
dd ['offset', 'unk_8F-83Bh']
dd ['offset', 'unk_23']
dd ['200E4300h,', '40E0A5Ah,', '0B41h']
extrn ['___stack_chk_guard:near']
extrn ['___stack_chk_fail:near']
end