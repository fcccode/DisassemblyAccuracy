endp
_pidgin_status_icon_theme_finalize proc	near
sub ['esp,', '1Ch']
mov ['eax,', '[esp+1Ch+arg_0]']
mov ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+1Ch+var_10],', 'edx']
xor ['edx,', 'edx']
mov ['edx,', '[esp+1Ch+var_10]']
xor ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_30']
mov ['[esp+1Ch+arg_0],', 'eax']
mov ['eax,', 'ds:_parent_class']
mov ['eax,', '[eax+18h]']
add ['esp,', '1Ch']
jmp ['eax']
call ['___stack_chk_fail']
db ['76h']
db ['0']
endp
_pidgin_status_icon_theme_class_init proc near 
push ['esi']
push ['ebx']
sub ['esp,', '24h']
mov ['ebx,', '[esp+2Ch+arg_0]']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+2Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['[esp+2Ch+var_28],', '50h']
mov ['[esp+2Ch+var_2C],', 'ebx']
call ['_g_type_check_class_cast']
mov ['esi,', 'eax']
mov ['[esp+2Ch+var_2C],', 'ebx']
call ['_g_type_class_peek_parent']
mov ['ds:_parent_class,', 'eax']
mov ['dword', 'ptr', '[esi+18h],', 'offset', '_pidgin_status_icon_theme_finalize']
mov ['eax,', '[esp+2Ch+var_10]']
xor ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_84']
add ['esp,', '24h']
pop ['ebx']
pop ['esi']
retn
call ['___stack_chk_fail']
db ['76h']
db ['0']
endp
_pidgin_status_icon_theme_get_type proc	near 
sub ['esp,', '2Ch']
mov ['eax,', 'dword', 'ptr', 'ds:___stack_chk_guard']
mov ['[esp+2Ch+var_10],', 'eax']
xor ['eax,', 'eax']
mov ['eax,', 'ds:_type_8279']
test ['eax,', 'eax']
jnz ['short', 'loc_CD']
call ['_pidgin_icon_theme_get_type']
mov ['[esp+2Ch+var_20],', '0']
mov ['[esp+2Ch+var_24],', 'offset', '_info_8280']
mov ['[esp+2Ch+var_28],', 'offset', 'aPidginstatusic']
mov ['[esp+2Ch+var_2C],', 'eax']
call ['_g_type_register_static']
mov ['ds:_type_8279,', 'eax']
mov ['edx,', '[esp+2Ch+var_10]']
xor ['edx,', 'dword', 'ptr', 'ds:___stack_chk_guard']
jnz ['short', 'loc_DD']
add ['esp,', '2Ch']
retn
call ['___stack_chk_fail']
assume ['cs:_bss']
assume ['es:nothing,', 'ss:nothing,', 'ds:_data,', 'fs:nothing,', 'gs:nothing']
assume ['cs:_rdata']
align ['10h']
dd ['2', 'dup(0)']
dd ['offset', '_pidgin_status_icon_theme_class_init']
dd ['14h,', '9', 'dup(0)']
assume ['cs:_debug_info']
db ['2,', '0']
dd ['offset', 'dword_10F8']
db ['1']
dd ['offset', '_pidgin_status_icon_theme_finalize']
dd ['offset', 'unk_E2']
dd ['offset', 'off_1438']
db ['2']
db ['4,', '5,', '69h']
db ['6Eh']
db ['74h,', '0,', '2']
db ['4']
db ['2']
db ['2']
db ['2,', '1,', '6']
dd ['726F6873h,', '6E692074h,', '67030074h,', '746E6975h,', '2003631h']
dd ['8722h,', '69670300h,', '3436746Eh,', '0E72E0200h,', '2000000h,', '6F6C0508h']
dd ['6C20676Eh,', '20676E6Fh,', '746E69h,', '69756703h,', '3436746Eh']
dd ['72F0200h,', '2000001h']
db ['3,', '67h,', '73h']
dd ['61686306h,', '8020072h,', '756F6404h,', '656C62h,', '4020404h,', '6E6F6C05h']
dd ['6E692067h']
db ['74h,', '0']
db ['3,', '2Dh,', '3Ah']
dd ['3000001h,', '6E6F6C67h,', '2F030067h,', '14Eh,', '6E696703h,', '30030074h']
dd ['70h,', '6C756703h,', '676E6Fh,', '18E3503h,', '4020000h']
db ['3']
dw ['3603h']
dd ['offset', 'loc_76+1']
db ['3']
db ['3']
db ['38h,', '0BEh,', '1']
align ['2']
dw ['402h']
db ['4']
db ['3']
db ['3']
db ['39h,', '42h,', '1']
db ['0']
align ['2']
dw ['6703h']
db ['3']
db ['2', 'dup(4Ch),', '1']
db ['0']
align ['2']
dw ['6703h']
db ['3,', '4Dh,', '0FBh']
db ['1']
db ['2', 'dup(0),', '5']
db ['4']
dd ['offset', 'dword_1FC+5']
db ['6,', '5,', '4']
db ['7']
db ['1,', '14h,', '2']
db ['0']
align ['2']
dw ['0D608h']
db ['1']
align ['4']
db ['5']
db ['4,', '1Ah,', '2']
db ['0']
align ['2']
dw ['107h']
db ['8']
dd ['offset', 'aUnsignedInt+0Dh']
db ['8,', '0D6h,', '1']
db ['0']
db ['2', 'dup(0),', '5']
db ['4']
dd ['offset', 'dword_1FC+35h']
db ['9,', '5Ah,', '1']
db ['0']
align ['2']
dw ['405h']
dd ['offset', 'word_15A']
db ['3']
db ['4']
db ['26h']
db ["'_GData',0"]
db ['1,', '3,', '47h']
dw ['2605h']
dd ['offset', 'aLongLongUnsign+8']
db ['8,', '5,', '28h']
dd ['offset', 'dword_274+1Bh']
db ['0Ch']
dw ['2A05h']
dd ['offset', 'aUnsignedInt+0Dh']
db ['2']
db ['23h,', '0,', '0Ch']
db ['5,', '2Bh,', '8Fh']
db ['2']
db ['2', 'dup(0),', '2']
db ['23h']
db ['4,', '0,', '5']
db ['4']
dd ['offset', 'dword_1FC+56h']
db ['5,', '4,', '3Ch']
db ['2']
db ['2', 'dup(0),', '2']
db ['0Ch']
db ['4,', '6Ch,', '6Fh']
db ['6,', '6Fh,', '1']
dd ['offset', 'dword_120+1']
db ['6']
db ['73h,', '1,', '0C7h']
db ['2']
db ['2', 'dup(0),', '0Bh']
db ['18h']
db ['7,', '6Ch,', '0F8h']
db ['2']
db ['2', 'dup(0),', '0Ch']
db ['7']
db ['6Fh']
dd ['offset', 'word_2AA']
db ['2,', '23h,', '0']
db ['0Ch']
db ["7,'|\xc9',7,0"]
align ['4']
db ['2']
db ['23h,', '8,', '0']
db ['6,', '74h,', '1']
dd ['offset', 'unk_30C']
db ['0Eh']
dw ['0D01h']
db ['6']
db ['76h']
db ['1,', '2Eh,', '3']
db ['0']
align ['2']
dw ['5F0Fh']
db ['4']
db ['6']
db ['87h,', '1,', '56h']
db ['3']
db ['2', 'dup(0),', '10h']
db ['6']
db ['8Ah']
db ['1,', '0AAh,', '2']
db ['0']
align ['2']
dw ['2302h']
db ['0']
align ['2']
db ['6,', '78h,', '1']
dd ['offset', 'off_36C']
db ['0Fh']
db ['4']
db ['6,', '91h,', '1']
dd ['offset', 'off_395+3']
db ['10h']
db ['6,', '94h,', '1']
dd ['offset', 'aNce_size']
dd ['2302h,', '7954470Dh,', '6E496570h,', '6006F66h,', '3AA0179h,', '5F0F0000h']
dd ['70795447h,', '666E4965h,', '624006Fh,', '4A903B7h,', '63100000h']
dd ['7373616Ch,', '7A69735Fh,', '0BA060065h,', '0CA03h,', '230200h,', '73616210h']
dd ['6E695F65h,', '6007469h,', '5A403BCh,', '23020000h,', '61621004h']
dd ['665F6573h,', '6C616E69h,', '657A69h,', '0BA03BD06h,', '2000005h']
dd ['63100823h,', '7373616Ch,', '696E695Fh,', '0C0060074h,', '5D403h']
dd ['0C230200h,', '616C6310h,', '665F7373h,', '6C616E69h,', '657A69h']
dd ['0EB03C106h,', '2000005h,', '63101023h,', '7373616Ch,', '7461645Fh']
dd ['0C2060061h,', '1E603h,', '14230200h,', '736E6910h']
db ['74h,', '61h']
db ['6']
db ['0C5h']
db ['3,', '0CAh,', '0']
db ['0']
align ['2']
dw ['2302h']
db ['18h']
db ['10h,', '6Eh,', '5Fh']
dw ['0C606h']
db ['3']
dd ['offset', 'loc_C8+2']
db ['2,', '23h,', '1Ah']
db ['10h']
db ['6']
db ['0C7h']
db ['3,', '2', 'dup(6)']
db ['0']
align ['2']
dw ['2302h']
db ['1Ch']
db ['10h,', '76h,', '61h']
dw ['0CA06h']
db ['3']
dd ['offset', 'aLlect_format']
db ['2,', '23h,', '20h']
db ['0']
dw ['7C06h']
db ['1']
dd ['offset', 'a_gtypeinstance+4']
db ['0Fh,', '5Fh,', '47h']
db ['20h']
db ['6']
db ['8Eh,', '4,', '9Eh']
db ['5']
db ['2', 'dup(0),', '10h']
db ['90h']
db ['4,', '0ABh,', '6']
db ['0']
align ['2']
dw ['2302h']
db ['0']
db ['10h,', '76h,', '61h']
db ['6,', '91h,', '4']
dd ['offset', 'aCt_value']
db ['2']
db ['23h,', '4,', '10h']
db ['6']
db ['92h']
db ['4,', '0CDh,', '6']
db ['0']
align ['2']
dw ['2302h']
db ['8']
db ['10h,', '76h,', '61h']
db ['6,', '95h,', '4']
dd ['offset', 'byte_6E3']
dd ['100C2302h']
db ['63h,', '6Fh']
db ['6']
db ['2', 'dup(6Ch),', '65h']
dd ['0E049706h,', '2000007h,', '6C101423h,', '79706F63h,', '726F665Fh']
dd ['74616Dh,', '36049B06h,', '2000002h,', '6C101823h,', '79706F63h']
dd ['6C61765Fh']
db ['75h,', '65h,', '0']
db ['9Ch']
db ['4,', '33h,', '7']
db ['0']
align ['2']
dw ['2302h']
db ['1Ch']
align ['2']
dw ['405h']
dd ['offset', 'aGdouble+3']
db ['6']
db ['0AFh']
db ['3', 'dup(2)']
db ['0']
align ['2']
db ['6,', '0BAh,', '2']
dd ['offset', 'dword_1FC+6']
db ['6']
db ['23h,', '3,', '14h']
db ['2']
db ['2', 'dup(0),', '0Dh']
db ['6']
db ['32h']
db ['3,', '14h,', '2']
db ['0']
align ['2']
db ['6,', '41h,', '3']
dd ['offset', 'aTypevaluetable+0Ch']
db ['5']
db ['4,', '26h,', '6']
db ['0']
align ['2']
dw ['107h']
dd ['offset', 'byte_637']
db ['8']
dd ['offset', 'byte_637']
db ['8,', '0D6h,', '1']
db ['0']
db ['2', 'dup(0),', '5']
db ['4']
dd ['offset', 'off_354+2']
db ['11h,', '4,', '6']
db ['95h']
db ['3,', '7Bh,', '6']
db ['0']
align ['2']
dw ['4712h']
db ['10h']
db ['12h,', '47h,', '5Fh']
db ["'", "',0"]
db ['6']
dd ['63D0398h,', '4050000h,', '694h,', '4A909h,', '0A5010700h,', '8000006h']
dd ['6A5h,', '0B8040500h,', '5000002h,', '69904h,', '0C2010700h,', '8000006h']
dd ['6C2h,', '6A508h,', '4050000h,', '6C8h,', '2B809h,', '0B1040500h,', '13000006h']
dd ['1D601h,', '6E300h,', '6C20800h,', '5000000h,', '6D304h,', '36011300h']
dd ['8000002h,', '8000007h,', '6A5h,', '1A308h,', '7080800h,', '0A3080000h']
dd ['1,', '2F80405h,', '4050000h,', '6E9h,', '2360113h,', '7330000h,', '0C2080000h']
dd ['8000006h,', '1A3h,', '70808h,', '1A30800h,', '5000000h,', '71404h']
dd ['7081400h,', '7C972h,', '5F761500h,', '746E69h,', '1747307h,', '76150000h']
dd ['6E69755Fh,', '74070074h,', '1A3h,', '6C5F7615h,', '676E6Fh,', '1677507h']
dd ['76150000h,', '6F6C755Fh,', '700676Eh,', '18076h,', '5F761500h,', '36746E69h']
dd ['77070034h,', '0D9h,', '755F7615h,', '36746E69h,', '78070034h,', '0F8h']
dd ['665F7615h,', '74616F6Ch,', '0B0790700h,', '15000001h,', '6F645F76h']
dd ['656C6275h,', '0C77A0700h,', '15000001h,', '6F705F76h,', '65746E69h']
dd ['7B070072h,', '1D6h,', '7391600h,', '7D90000h,', '2E170000h,', '1000001h']
dd ['8041800h,', '8A58Ch,', '5F471200h,', '41524150h,', '45525F4Dh,', '42414441h']
dd ['100454Ch,', '505F4712h,', '4D415241h,', '4952575Fh,', '4C424154h']
dd ['12020045h']
dw ['1204h']
db ['8']
db ['12h']
db ['10h']
db ['12h,', '47h,', '5Fh']
dw ['1220h']
db ['20h']
db ['12h,', '47h,', '5Fh']
db ["'\xc0',0"]
db ['12h']
dw ['180h']
dd ['50470300h,', '6D617261h,', '67616C46h,', '98080073h,', '7D9h,', '61504703h']
dd ['536D6172h,', '636570h,', '8CAB808h,', '5F0B0000h,', '72615047h']
dd ['70536D61h,', '28006365h,', '988C708h']
db ['2', 'dup(0),', '19h']
dd ['offset', 'aG_type_instanc']
db ['8']
dd ['356C9h,', '230200h,', '6D616E0Ch,', '0CB080065h,', '236h,', '0C042302h']
dd ['67616C66h,', '0CC080073h,', '8A5h,', '0C082302h,', '756C6176h,', '79745F65h']
dd ['8006570h,', '2AACDh,', '0C230200h,', '6E776F0Ch,', '745F7265h,', '657079h']
dd ['2AACE08h,', '23020000h,', '6E5F0C10h,', '6B6369h,', '236D108h,', '23020000h']
dd ['625F0C14h,', '6272756Ch,', '36D20800h,', '2000002h,', '710C1823h']
dd ['61746164h,', '95D30800h,', '2000002h']
db ['23h,', '1Ch,', '19h']
dd ['offset', 'aRef_count']
db ['8']
dd ['1A3D4h,', '20230200h,', '7261700Ch,', '695F6D61h,', '0D5080064h']
dd ['1A3h,', '242302h,', '8B80405h,', '0A31A0000h,', '3000001h,', '6A624F47h']
dd ['746365h,', '9A2B809h,', '5F0B0000h,', '6A624F47h,', '746365h,', '0E0F2090Ch']
dd ['19000009h']
dd ['offset', 'aG_type_instanc']
dd ['356F409h,', '23020000h']
db ['0,', '19h']
dd ['offset', 'aRef_count']
dw ['0F709h']
dd ['offset', 'aG_param_lax_va+9']
dd ['0C042302h,', '74616471h,', '0F8090061h,', '295h,', '82302h,', '624F4703h']
dd ['7463656Ah,', '73616C43h,', '0B9090073h,', '9F4h,', '4F475F0Fh,', '63656A62h']
dd ['616C4374h,', '44007373h,', '14013809h,', '1000000Bh,', '79745F67h']
dd ['635F6570h,', '7373616Ch,', '13A0900h,', '31Bh,', '10002302h']
db ['9,', '3Dh,', '1']
dd ['offset', 'dword_274+1Bh']
db ['2']
db ['23h,', '4,', '10h']
db ['9']
db ['0Bh']
db ['2', 'dup(0),', '2']
db ['23h']
db ['8,', '10h,', '73h']
db ['9']
db ['45h,', '1,', '9Bh']
db ['0Bh']
db ['2', 'dup(0),', '2']
db ['23h']
db ['0Ch,', '10h,', '67h']
db ['9']
db ['49h,', '1,', '74h']
db ['0Bh']
db ['2', 'dup(0),', '2']
db ['23h']
db ['2', 'dup(10h),', '64h']
db ['9']
db ['4Dh']
db ['1,', '0BCh,', '0Bh']
align ['2']
dw ['2302h']
db ['14h']
db ['10h,', '66h,', '69h']
db ['9']
db ['4Eh']
db ['1,', '0BCh,', '0Bh']
db ['0']
align ['2']
dw ['2302h']
db ['18h']
db ['10h,', '64h,', '69h']
dw ['5009h']
db ['1']
dd ['offset', 'aSpatch_propert+0Ch']
db ['10h']
db ['9']
db ['54h,', '1,', '27h']
db ['0Ch']
db ['2', 'dup(0),', '2']
db ['23h']
db ['20h,', '10h,', '63h']
db ['9']
db ['58h']
db ['1,', '0BCh,', '0Bh']
db ['0']
align ['2']
dw ['2302h']
db ['24h']
db ['10h,', '70h,', '64h']
db ['9,', '5Ch,', '1']
dd ['offset', 'aNotify+4']
db ['2']
db ['23h,', '28h,', '0']
db ['3']
db ['0']
db ['0Fh,', '5Fh,', '47h']
db ['8,', '9,', '67h']
db ['1']
dd ['offset', 'aConstruct_prop']
db ['10h,', '70h,', '73h']
db ['70h']
db ['65h,', '63h,', '0']
db ['9']
db ['69h,', '1,', '88h']
db ['9']
db ['2', 'dup(0),', '2']
db ['23h']
align ['2']
dw ['7610h']
db ['9,', '6Ah,', '1']
dd ['offset', 'dword_69C+9']
db ['2']
db ['23h,', '4,', '0']
db ['5']
db ['0']
align ['2']
dw ['107h']
dd ['offset', 'aConstructor+1']
db ['8']
dd ['offset', 'aConstructor+1']
db ['8,', '0A3h,', '1']
db ['0']
align ['2']
dw ['0A508h']
db ['6']
db ['2', 'dup(0),', '8']
dd ['offset', 'aG_param_lax_va+3']
db ['0']
db ['5,', '4,', '93h']
db ['9']
db ['4']
dd ['offset', 'byte_BA1']
db ['7,', '1,', '0BCh']
db ['0Bh']
db ['2', 'dup(0),', '8']
dd ['offset', 'aConstructor+1']
db ['8']
dd ['offset', 'aCWorkspacePidg+23h']
db ['8,', '0C2h,', '6']
db ['0']
align ['2']
dw ['8808h']
db ['9']
align ['4']
db ['5']
db ['4,', '0C2h,', '0Bh']
db ['0']
align ['2']
dw ['107h']
dd ['offset', 'aEt_property_0+0Ah']
db ['8']
dd ['offset', 'aConstructor+1']
align ['2']
dw ['113h']
dd ['offset', 'aConstructor+1']
dd ['offset', 'unk_BE8']
db ['8']
dd ['offset', 'word_2AA']
db ['8,', '0A3h,', '1']
db ['0']
align ['2']
dw ['0E808h']
db ['0Bh']
align ['4']
db ['5']
db ['4,', '14h,', '0Bh']
db ['0']
align ['2']
dw ['405h']
dd ['offset', 'aEt_property_0+0Ah']
db ['7']
db ['1,', '0Ah,', '0Ch']
db ['0']
align ['2']
dw ['9508h']
db ['0Bh']
db ['2', 'dup(0),', '8']
dd ['offset', 'aCWorkspacePidg+23h']
db ['8']
dd ['offset', 'aSpatch_propert+6']
align ['2']
dw ['405h']
dd ['offset', 'aG_param_lax_va+3']
db ['5']
db ['4,', '0F4h,', '0Bh']
db ['0']
align ['2']
dw ['107h']
db ['8']
dd ['offset', 'aConstructor+1']
db ['8,', '88h,', '9']
db ['0']
db ['2', 'dup(0),', '5']
db ['4']
dd ['offset', 'aSpatch_propert+12h']
db ['16h,', '0D6h,', '1']
db ['0']
align ['2']
dd ['offset', 'aOnstructed+1']
dw ['2E17h']
db ['1']
db ['2', 'dup(0),', '6']
db ['0']
db ['3,', '50h,', '75h']
db ['0Ah']
db ['28h']
dd ['offset', 'aUmmy+1']
dd ['7E370A44h,', '1900000Ch']
dd ['offset', 'aParent_class']
db ["'9\xe0',9,0"]
align ['2']
dw ['2302h']
db ['0']
align ['2']
dw ['5003h']
db ['29h,', '9Ah,', '0Ch']
db ['0']
align ['2']
db ['44h,', '0Bh,', '38h']
dd ['offset', 'byte_CC5+2']
db ['19h']
db ['0Bh,', '3Ah,', '3Dh']
dd ['200000Ch,', '3000023h']
db ['0Ch']
db ['28h']
dd ['offset', 'byte_CE9']
dw ['0C44h']
dd ['0D1C36h']
db ['0,', '19h']
dd ['offset', 'aParent_class']
dw ['380Ch']
dd ['offset', 'a1+3']
dd ['2302h']
db ['1']
db ['24h,', '1']
dd ['offset', '_pidgin_status_icon_theme_finalize']
dd ['offset', 'unk_35']
dd ['offset', 'dword_1314']
dd ['offset', 'off_D68+2']
dw ['6F1Ch']
db ['1Dh']
dd ['offset', 'unk_35']
dd ['offset', 'aCon_theme_clas']
align ['2']
dw ['701Eh']
dd ['69676469h,', '74735F6Eh,', '73757461h']
db ['5Fh,', '69h']
db ['1']
dd ['offset', '_pidgin_status_icon_theme_class_init']
dd ['offset', 'unk_89']
dd ['offset', 'off_134C']
dw ['301h']
dd ['73616C63h,', '2C010073h,', '0E09h']
dd ['offset', 'off_13B4']
db ['20h']
dd ['offset', 'loc_5C']
dd ['offset', 'byte_EE0']
dd ['offset', 'unk_DE4']
db ['21h,', '2,', '74h']
dd ['730200h,', '4740221h,', '500802h']
db ['20h']
dd ['offset', 'loc_66']
dd ['offset', 'dword_EF0+22h']
db ['21h,', '2,', '74h']
dd ['730200h']
db ['0,', '1Dh']
dd ['offset', 'unk_89']
dd ['offset', 'aCon_theme_clas']
dw ['500h']
db ['4']
dd ['offset', 'byte_CC5+2']
db ['5,', '4,', '0E0h']
db ['9']
db ['2', 'dup(0),', '22h']
db ['1']
db ['1']
dd ['2AA0134h']
db ['2', 'dup(0)']
dd ['offset', '_pidgin_status_icon_theme_get_type']
dd ['offset', 'unk_E2']
dd ['offset', 'off_13DD']
dw ['0B401h']
dd ['2300000Eh,', '65707974h']
db ['0,', '1,', '36h']
db ['5']
db ['3']
dd ['offset', '_type_8279']
db ['24h']
dd ['offset', 'loc_A3']
dd ['offset', 'loc_CD']
dd ['offset', 'dword_EA4+6']
dd ['0EB43801h,', '3050000h']
dd ['offset', '_info_8280']
db ['1Dh']
dd ['offset', 'loc_A8']
dd ['offset', 'off_F3D+3']
db ['25h']
dd ['offset', 'loc_C8']
dd ['offset', 'aPidgin_statu_0+4']
dw ['221h']
dd ['3050474h']
dd ['offset', 'aPidginstatusic']
dd ['8740221h']
db ['5,', '3']
dd ['offset', '_info_8280']
dw ['221h']
dd ['30010C74h']
db ['2', 'dup(0),', '1Dh']
dd ['offset', 'unk_E2']
dd ['offset', 'aCon_theme_clas']
align ['4']
dd ['39809h']
db ['0,', '26h']
dd ['offset', 'aParent_class']
dw ['1D01h']
dd ['offset', 'off_E09']
db ['5,', '3']
dd ['offset', '_parent_class']
dw ['127h']
db ['3', 'dup(1)']
db ['28h']
db ['1,', '67h,', '5Fh']
dw ['9B06h']
dd ['59E0105h,', '12010000h,', '800000Fh,', '59Eh,', '2AA08h,', '1280000h']
db ['6,', '88h,', '2']
db ['1']
dd ['offset', 'aUnsignedInt+0Dh']
db ['1,', '40h,', '0Fh']
db ['0']
align ['2']
dw ['0D608h']
db ['1']
align ['10h']
db ['29h']
db ['1,', '70h,', '69h']
db ['0Bh,', '46h,', '1']
dd ['offset', 'word_2AA']
db ['1']
db ['28h,', '1,', '67h']
dw ['0A106h']
dd ['2AA0104h,', '0A0010000h,', '800000Fh,', '2AAh,', '22B08h,', '0FA00800h']
dd ['7B080000h,', '6,', '0EB40405h']
db ['3', 'dup(0)']
align ['4']
assume ['cs:_debug_abbrev']
dd ['0B0B0024h,', '8030B3Eh,', '16030000h,', '3A080300h,', '490B3B0Bh']
dd ['4000013h,', '0B0B000Fh,', '0F050000h,', '490B0B00h,', '6000013h']
dd ['26h,', '27011507h,', '13010Ch,', '50800h,', '1349h,', '49002609h,', '0A000013h']
dd ['8030013h,', '0C3Ch,', '301130Bh,', '3A0B0B08h,', '10B3B0Bh,', '0C000013h']
dd ['803000Dh,', '0B3B0B3Ah,', '0A381349h,', '160D0000h,', '3A080300h']
dd ['49053B0Bh,', '0E000013h,', '8030017h,', '0C3Ch,', '301130Fh,', '3A0B0B08h']
dd ['1053B0Bh,', '10000013h,', '803000Dh,', '53B0B3Ah,', '0A381349h']
dd ['4110000h,', '3A0B0B01h,', '1053B0Bh,', '12000013h,', '8030028h']
dd ['0D1Ch,', '27011513h,', '113490Ch,', '14000013h,', '0B0B0117h,', '0B3B0B3Ah']
dd ['1301h,', '3000D15h,', '3B0B3A08h,', '13490Bh,', '1011600h,', '13011349h']
dd ['21170000h,', '2F134900h,', '1800000Bh,', '0B0B0104h,', '0B3B0B3Ah']
dd ['1301h,', '3000D19h,', '3B0B3A0Eh,', '3813490Bh,', '1A00000Ah,', '13490035h']
dd ['2E1B0000h,', '3A080301h,', '270B3B0Bh,', '1201110Ch,', '1064001h']
dd ['1C000013h,', '8030005h,', '0B3B0B3Ah,', '0A021349h,', '891D0000h']
dd ['11000182h,', '133101h,', '12E1E00h,', '0B3A0803h,', '0C270B3Bh']
dd ['1120111h,', '42970640h,', '13010Ch,', '341F00h,', '0B3A0803h,', '13490B3Bh']
dd ['602h,', '1828920h,', '31011101h,', '130113h,', '828A2100h,', '0A020001h']
dd ['0A4291h,', '12E2200h,', '8030C3Fh,', '0B3B0B3Ah,', '13490C27h,', '1120111h']
dd ['42970640h,', '13010Ch,', '342300h,', '0B3A0803h,', '13490B3Bh,', '0A02h']
dd ['11010B24h,', '1011201h,', '25000013h,', '1018289h,', '13310111h']
dd ['34260000h,', '3A0E0300h,', '490B3B0Bh,', '0A0213h,', '2E2700h,', '8030C3Fh']
dd ['0C340C27h,', '0C3Ch,', '3F012E28h,', '3A08030Ch,', '27053B0Bh,', '3C13490Ch']
dd ['13010Ch,', '2E2900h,', '8030C3Fh,', '0B3B0B3Ah,', '13490C27h,', '0C3Ch']
db ['0']
align ['4']
assume ['cs:_debug_loc']
dd ['3,', '4740002h,', '3,', '2Eh,', '20740002h,', '2Eh,', '30h,', '4740002h']
dd ['30h,', '35h,', '20740002h,', '2', 'dup(0)']
dd ['offset', 'loc_39']
dd ['4740002h,', '39h,', '3Ah,', '8740002h,', '3Ah,', '3Dh,', '0C740002h,', '3Dh']
dd ['81h,', '30740002h,', '81h,', '82h,', '0C740002h,', '82h,', '83h,', '8740002h']
dd ['83h,', '84h,', '4740002h,', '84h,', '89h,', '30740002h,', '2', 'dup(0)']
dd ['offset', 'loc_61+4']
dd ['65500001h,', '83000000h,', '1000000h,', '845600h,', '890000h,', '10000h']
dd ['56h,', '0']
db ['0']
dd ['offset', 'loc_8F']
db ['2,', '0,', '74h']
dd ['8F04h,', '0DC00h,', '74000200h,', '0DC30h,', '0DD00h,', '74000200h']
dd ['0DD04h,', '0E200h,', '74000200h,', '30h,', '0']
db ['0']
align ['4']
assume ['cs:_debug_aranges']
dd ['1Ch']
db ['2,', '0']
dd ['offset', 'off_150']
dw ['4']
dd ['0']
dd ['offset', '_pidgin_status_icon_theme_finalize']
dd ['offset', 'unk_E2']
dd ['2', 'dup(0)']
assume ['cs:_debug_line']
dd ['1730002h,', '1010000h,', '0D0EFBh,', '1010101h,', '1000000h,', '2E010000h']
dd ['2E2E2F2Eh,', '6E69772Fh,', '642D3233h,', '672F7665h,', '325F6B74h']
dd ['322D305Fh,', '2F34312Eh,', '2F62696Ch,', '62696C67h,', '302E322Dh']
dd ['636E692Fh,', '6564756Ch,', '2F2E2E00h,', '772F2E2Eh,', '32336E69h']
dd ['7665642Dh,', '6B74672Fh,', '305F325Fh,', '312E322Dh,', '6E692F34h']
dd ['64756C63h,', '6C672F65h,', '322D6269h,', '672F302Eh,', '62696Ch']
dd ['2E2F2E2Eh,', '69772F2Eh,', '2D32336Eh,', '2F766564h,', '5F6B7467h']
dd ['2D305F32h,', '34312E32h,', '636E692Fh,', '6564756Ch,', '696C672Fh']
dd ['2E322D62h,', '6F672F30h,', '63656A62h,', '2E2E0074h,', '62696C2Fh']
dd ['70727570h,', '656Ch,', '736B7467h,', '75746174h,', '63692D73h,', '742D6E6Fh']
dd ['656D6568h,', '632Eh,', '6C670000h,', '6F636269h,', '6769666Eh,', '100682Eh']
dd ['74670000h,', '73657079h,', '200682Eh,', '64670000h,', '73617461h']
dd ['682E7465h,', '200h,', '696C7367h,', '682E7473h,', '200h,', '70797467h']
dd ['682E65h,', '67000003h,', '756C6176h,', '682E65h,', '67000003h,', '61726170h']
dd ['682E6Dh,', '67000003h,', '656A626Fh,', '682E7463h,', '300h,', '6D656874h']
dd ['682E65h,', '67000004h,', '63696B74h,', '742D6E6Fh,', '656D6568h']
dd ['682Eh,', '74670000h,', '6174736Bh,', '2D737574h,', '6E6F6369h,', '6568742Dh']
dd ['682E656Dh,', '0']
dd ['2050000h']
dd ['offset', '_pidgin_status_icon_theme_finalize']
dd ['74012403h,', '3B7508BBh,', '8AD90A3h,', '875CA22h,', '3AE3C94h']
dd ['2A02900Dh,', '150216h']
db ['2', 'dup(1)']
align ['4']
assume ['cs:_debug_str']
align ['4']
assume ['cs:_eh_frame']
dd ['14h,', '0']
dd ['527A01h,', '1087C01h,', '4040C1Bh,', '188h,', '18h,', '1Ch']
dd ['offset', 'unk_E3-1707h']
dd ['offset', 'unk_35']
dd ['200E4300h,', '40E0A6Bh,', '0B42h,', '2Ch,', '38h']
dd ['offset', 'unk_E3-16EBh']
dd ['offset', 'loc_4C+5']
dd ['80E4100h,', '0E410286h,', '4303830Ch,', '4402300Eh,', '410C0E0Ah']
dd ['41080EC3h,', '41040EC6h,', '0Bh,', '18h,', '68h']
dd ['offset', 'unk_E3-16C7h']
dd ['offset', 'loc_54+2']
dd ['300E4300h,', '0E0A4D02h,', '0B4104h']
extrn ['___stack_chk_guard:near']
extrn ['___stack_chk_fail:near']
extrn ['_g_type_check_class_cast:near']
extrn ['_g_type_class_peek_parent:near']
extrn ['_pidgin_icon_theme_get_type:near']
extrn ['_g_type_register_static:near']
end