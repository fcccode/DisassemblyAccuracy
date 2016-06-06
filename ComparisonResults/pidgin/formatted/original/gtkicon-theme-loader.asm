_pidgin_icon_theme_loader_class_init PROC
push	ebx
sub	esp, 40
mov	ebx, DWORD PTR [esp+48]
mov	eax, DWORD PTR ___stack_chk_guard
mov	DWORD PTR [esp+28], eax
xor	eax, eax
call	_purple_theme_loader_get_type
mov	DWORD PTR [esp+4], eax
mov	DWORD PTR [esp], ebx
call	_g_type_check_class_cast
mov	DWORD PTR [eax+68], OFFSET FLAT:_pidgin_icon_loader_build
mov	eax, DWORD PTR [esp+28]
xor	eax, DWORD PTR ___stack_chk_guard
jne	L5
add	esp, 40
pop	ebx
ret
call	___stack_chk_fail
endproc
_pidgin_icon_loader_build PROC
push	ebp
push	edi
push	esi
push	ebx
sub	esp, 108
mov	ebx, DWORD PTR [esp+128]
mov	eax, DWORD PTR ___stack_chk_guard
mov	DWORD PTR [esp+92], eax
xor	eax, eax
test	ebx, ebx
je	L25
mov	DWORD PTR [esp+8], 0
mov	DWORD PTR [esp+4], OFFSET FLAT:LC2
mov	DWORD PTR [esp], ebx
call	_g_build_filename
mov	esi, eax
mov	DWORD PTR [esp+4], 1
mov	DWORD PTR [esp], eax
call	_g_file_test_utf8
test	eax, eax
jne	L12
mov	DWORD PTR [esp], esi
call	_g_free
xor	eax, eax
mov	edx, DWORD PTR [esp+92]
xor	edx, DWORD PTR ___stack_chk_guard
jne	L26
add	esp, 108
pop	ebx
pop	esi
pop	edi
pop	ebp
ret
mov	DWORD PTR [esp+12], OFFSET FLAT:LC0
mov	DWORD PTR [esp+8], OFFSET FLAT:LC1
mov	DWORD PTR [esp+4], OFFSET FLAT:LC2
mov	DWORD PTR [esp], ebx
call	_xmlnode_from_file
mov	edi, eax
mov	DWORD PTR [esp], esi
call	_g_free
test	edi, edi
je	L14
mov	DWORD PTR [esp+4], OFFSET FLAT:LC3
mov	DWORD PTR [esp], edi
call	_xmlnode_get_attrib
mov	esi, eax
test	eax, eax
je	L15
mov	DWORD PTR [esp+4], OFFSET FLAT:LC4
mov	DWORD PTR [esp], edi
call	_xmlnode_get_child
mov	DWORD PTR [esp], eax
call	_xmlnode_get_data
mov	DWORD PTR [esp+76], eax
mov	DWORD PTR [esp+4], OFFSET FLAT:LC3
mov	DWORD PTR [esp], edi
call	_xmlnode_get_attrib
test	eax, eax
je	L16
mov	DWORD PTR [esp+4], OFFSET FLAT:LC5
mov	DWORD PTR [esp], edi
call	_xmlnode_get_attrib
mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
mov	DWORD PTR [esp], edi
mov	DWORD PTR [esp+68], eax
call	_xmlnode_get_attrib
mov	DWORD PTR [esp+72], eax
call	_pidgin_status_icon_theme_get_type
mov	DWORD PTR [esp+52], 0
mov	ebp, DWORD PTR [esp+76]
mov	DWORD PTR [esp+48], ebp
mov	DWORD PTR [esp+44], OFFSET FLAT:LC4
mov	DWORD PTR [esp+40], ebx
mov	DWORD PTR [esp+36], OFFSET FLAT:LC7
mov	ecx, DWORD PTR [esp+68]
mov	DWORD PTR [esp+32], ecx
mov	DWORD PTR [esp+28], OFFSET FLAT:LC5
mov	edx, DWORD PTR [esp+72]
mov	DWORD PTR [esp+24], edx
mov	DWORD PTR [esp+20], OFFSET FLAT:LC6
mov	DWORD PTR [esp+16], esi
mov	DWORD PTR [esp+12], OFFSET FLAT:LC3
mov	DWORD PTR [esp+8], OFFSET FLAT:LC8
mov	DWORD PTR [esp+4], OFFSET FLAT:LC9
mov	DWORD PTR [esp], eax
call	_g_object_new
mov	esi, eax
mov	DWORD PTR [esp+4], OFFSET FLAT:LC10
mov	DWORD PTR [esp], edi
call	_xmlnode_get_child
mov	ebx, eax
test	eax, eax
je	L10
mov	DWORD PTR [esp+4], OFFSET FLAT:LC11
mov	DWORD PTR [esp], ebx
call	_xmlnode_get_attrib
mov	ebp, eax
mov	DWORD PTR [esp+4], OFFSET FLAT:LC12
mov	DWORD PTR [esp], ebx
call	_xmlnode_get_attrib
mov	DWORD PTR [esp+8], ebp
mov	DWORD PTR [esp+4], eax
mov	DWORD PTR [esp], esi
call	_pidgin_icon_theme_set_icon
mov	DWORD PTR [esp], ebx
call	_xmlnode_get_next_twin
mov	ebx, eax
test	eax, eax
jne	L19
mov	DWORD PTR [esp], edi
call	_xmlnode_free
mov	eax, DWORD PTR [esp+76]
mov	DWORD PTR [esp], eax
call	_g_free
call	_purple_theme_get_type
mov	DWORD PTR [esp+4], eax
mov	DWORD PTR [esp], esi
call	_g_type_check_instance_cast
jmp	L9
xor	esi, esi
mov	DWORD PTR [esp+76], 0
jmp	L10
xor	esi, esi
jmp	L10
mov	DWORD PTR [esp+8], OFFSET FLAT:LC13
mov	DWORD PTR [esp+4], OFFSET FLAT:___PRETTY_FUNCTION__.8472
mov	DWORD PTR [esp], 0
call	_g_return_if_fail_warning
xor	eax, eax
jmp	L9
call	___stack_chk_fail
xor	eax, eax
jmp	L9
endproc
_pidgin_icon_theme_loader_get_type PROC
sub	esp, 44
mov	eax, DWORD PTR ___stack_chk_guard
mov	DWORD PTR [esp+28], eax
xor	eax, eax
mov	eax, DWORD PTR _type.8483
test	eax, eax
jne	L28
call	_purple_theme_loader_get_type
mov	DWORD PTR [esp+12], 0
mov	DWORD PTR [esp+8], OFFSET FLAT:_info.8484
mov	DWORD PTR [esp+4], OFFSET FLAT:LC14
mov	DWORD PTR [esp], eax
call	_g_type_register_static
mov	DWORD PTR _type.8483, eax
mov	edx, DWORD PTR [esp+28]
xor	edx, DWORD PTR ___stack_chk_guard
jne	L31
add	esp, 44
ret
call	___stack_chk_fail
endproc
_info_8484 PROC
