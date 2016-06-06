; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\Putty\windows\wincfg.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_BSS	SEGMENT
$SG86302 DB	01H DUP (?)
$SG86303 DB	01H DUP (?)
$SG86304 DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG86306 DB	'About', 00H
	ORG $+2
$SG86309 DB	'Help', 00H
	ORG $+3
$SG86310 DB	'Control the scrollback in the window', 00H
	ORG $+3
$SG86311 DB	'scrollback', 00H
	ORG $+1
$SG86312 DB	'Window', 00H
	ORG $+1
$SG86313 DB	'window.scrollback:config-scrollback', 00H
$SG86314 DB	'Display scrollbar in full screen mode', 00H
	ORG $+2
$SG86322 DB	'Enable extra keyboard features:', 00H
$SG86323 DB	'features', 00H
	ORG $+3
$SG86324 DB	'Terminal/Keyboard', 00H
	ORG $+2
$SG86325 DB	'keyboard.compose:config-compose', 00H
$SG86326 DB	'AltGr acts as Compose key', 00H
	ORG $+2
$SG86327 DB	'keyboard.ctrlalt:config-ctrlalt', 00H
$SG86328 DB	'Control-Alt is different from AltGr', 00H
$SG86329 DB	'Set the style of bell', 00H
	ORG $+2
$SG86330 DB	'style', 00H
	ORG $+2
$SG86331 DB	'Terminal/Bell', 00H
	ORG $+2
$SG86338 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'c', 00H, 'f', 00H, 'g', 00H, '.'
	DB	00H, 'c', 00H, 00H, 00H
	ORG $+2
$SG86339 DB	'c', 00H, '-', 00H, '>', 00H, 'g', 00H, 'e', 00H, 'n', 00H
	DB	'e', 00H, 'r', 00H, 'i', 00H, 'c', 00H, '.', 00H, 'h', 00H, 'a'
	DB	00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H, 'r', 00H, ' ', 00H
	DB	'=', 00H, '=', 00H, ' ', 00H, 'c', 00H, 'o', 00H, 'n', 00H, 'f'
	DB	00H, '_', 00H, 'r', 00H, 'a', 00H, 'd', 00H, 'i', 00H, 'o', 00H
	DB	'b', 00H, 'u', 00H, 't', 00H, 't', 00H, 'o', 00H, 'n', 00H, '_'
	DB	00H, 'h', 00H, 'a', 00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H
	DB	'r', 00H, 00H, 00H
	ORG $+2
$SG86343 DB	'Play a custom sound file', 00H
	ORG $+3
$SG86344 DB	'Beep using the PC speaker', 00H
	ORG $+2
$SG86352 DB	'bell.style:config-bellstyle', 00H
$SG86353 DB	'Select bell sound file', 00H
	ORG $+1
$SG86354 DB	'Wave Files (*.wav)', 00H, '*.WAV', 00H, 'All Files (*.*)'
	DB	00H, '*', 00H, 00H, 00H, 00H
	ORG $+2
$SG86355 DB	'Custom sound file to play as a bell:', 00H
	ORG $+3
$SG86357 DB	'Steady', 00H
	ORG $+1
$SG86358 DB	'Flashing', 00H
	ORG $+3
$SG86359 DB	'Disabled', 00H
	ORG $+3
$SG86360 DB	'bell.taskbar:config-belltaskbar', 00H
$SG86361 DB	'Taskbar/caption indication on bell:', 00H
$SG86362 DB	'Adjust the window border', 00H
	ORG $+3
$SG86363 DB	'border', 00H
	ORG $+1
$SG86364 DB	'Window/Appearance', 00H
	ORG $+2
$SG86365 DB	'appearance.border:config-winborder', 00H
	ORG $+1
$SG86366 DB	'Sunken-edge border (slightly thicker)', 00H
	ORG $+2
$SG86367 DB	'Font settings', 00H
	ORG $+2
$SG86368 DB	'font', 00H
	ORG $+3
$SG86369 DB	'Window/Appearance', 00H
	ORG $+2
$SG86370 DB	'appearance.font:config-font', 00H
$SG86371 DB	'Allow selection of variable-pitch fonts', 00H
$SG86373 DB	'Default', 00H
$SG86374 DB	'ClearType', 00H
	ORG $+2
$SG86375 DB	'Non-Antialiased', 00H
$SG86376 DB	'Antialiased', 00H
$SG86377 DB	'appearance.font:config-font', 00H
$SG86378 DB	'Font quality:', 00H
	ORG $+2
$SG86380 DB	'tweaks', 00H
	ORG $+1
$SG86381 DB	'Window/Translation', 00H
	ORG $+1
$SG86382 DB	'translation.cyrillic:config-cyr', 00H
$SG86383 DB	'Caps Lock acts as Cyrillic switch', 00H
	ORG $+2
$SG86384 DB	'Character set translation on received data', 00H
	ORG $+1
$SG86385 DB	'trans', 00H
	ORG $+2
$SG86386 DB	'Window/Translation', 00H
	ORG $+1
$SG86387 DB	'translation.codepage:config-charset', 00H
$SG86390 DB	'linedraw', 00H
	ORG $+3
$SG86388 DB	'(Codepages supported by Windows but not listed here, suc'
	DB	'h as CP866 on many systems, can be entered manually)', 00H
	ORG $+3
$SG86389 DB	'Adjust how %s displays line drawing characters', 00H
	ORG $+1
$SG86391 DB	'Window/Translation', 00H
	ORG $+1
$SG86398 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'c', 00H, 'f', 00H, 'g', 00H, '.'
	DB	00H, 'c', 00H, 00H, 00H
	ORG $+2
$SG86403 DB	'Font has XWindows encoding', 00H
	ORG $+1
$SG86399 DB	'c', 00H, '-', 00H, '>', 00H, 'g', 00H, 'e', 00H, 'n', 00H
	DB	'e', 00H, 'r', 00H, 'i', 00H, 'c', 00H, '.', 00H, 'h', 00H, 'a'
	DB	00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H, 'r', 00H, ' ', 00H
	DB	'=', 00H, '=', 00H, ' ', 00H, 'c', 00H, 'o', 00H, 'n', 00H, 'f'
	DB	00H, '_', 00H, 'r', 00H, 'a', 00H, 'd', 00H, 'i', 00H, 'o', 00H
	DB	'b', 00H, 'u', 00H, 't', 00H, 't', 00H, 'o', 00H, 'n', 00H, '_'
	DB	00H, 'h', 00H, 'a', 00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H
	DB	'r', 00H, 00H, 00H
	ORG $+2
$SG86404 DB	'Use font in both ANSI and OEM modes', 00H
$SG86405 DB	'Use font in OEM mode only', 00H
	ORG $+2
$SG86420 DB	'Formatting of pasted characters', 00H
$SG86421 DB	'format', 00H
	ORG $+1
$SG86422 DB	'Window/Selection', 00H
	ORG $+3
$SG86423 DB	'selection.rtf:config-rtfpaste', 00H
	ORG $+2
$SG86424 DB	'Paste to clipboard in RTF as well as plain text', 00H
$SG86425 DB	'Control use of mouse', 00H
	ORG $+3
$SG86426 DB	'mouse', 00H
	ORG $+2
$SG86427 DB	'Window/Selection', 00H
	ORG $+3
$SG86429 DB	'xterm (Right extends, Middle pastes)', 00H
	ORG $+3
$SG86430 DB	'Compromise (Middle extends, Right pastes)', 00H
	ORG $+2
$SG86431 DB	'Windows (Middle extends, Right brings up menu)', 00H
	ORG $+1
$SG86432 DB	'selection.buttons:config-mouse', 00H
	ORG $+1
$SG86433 DB	'Action of mouse buttons:', 00H
	ORG $+3
$SG86435 DB	'General options for colour usage', 00H
	ORG $+3
$SG86436 DB	'general', 00H
$SG86437 DB	'Window/Colours', 00H
	ORG $+1
$SG86438 DB	'colours.logpal:config-logpalette', 00H
	ORG $+3
$SG86439 DB	'Attempt to use logical palettes', 00H
$SG86440 DB	'colours.system:config-syscolour', 00H
$SG86441 DB	'Use system colours', 00H
	ORG $+1
$SG86442 DB	'Set the size of the window', 00H
	ORG $+1
$SG86443 DB	'size', 00H
	ORG $+3
$SG86444 DB	'Window', 00H
	ORG $+1
$SG86446 DB	'Forbid resizing completely', 00H
	ORG $+1
$SG86447 DB	'Change font size only when maximised', 00H
	ORG $+3
$SG86448 DB	'Change the size of the font', 00H
$SG86449 DB	'Change the number of rows and columns', 00H
	ORG $+2
$SG86450 DB	'window.resize:config-winsizelock', 00H
	ORG $+3
$SG86451 DB	'When window is resized:', 00H
$SG86453 DB	'main', 00H
	ORG $+3
$SG86454 DB	'Window/Behaviour', 00H
	ORG $+3
$SG86455 DB	'behaviour.altf4:config-altf4', 00H
	ORG $+3
$SG86456 DB	'Window closes on ALT-F4', 00H
$SG86457 DB	'behaviour.altspace:config-altspace', 00H
	ORG $+1
$SG86458 DB	'System menu appears on ALT-Space', 00H
	ORG $+3
$SG86459 DB	'behaviour.altonly:config-altonly', 00H
	ORG $+3
$SG86460 DB	'System menu appears on ALT alone', 00H
	ORG $+3
$SG86461 DB	'behaviour.alwaysontop:config-alwaysontop', 00H
	ORG $+3
$SG86462 DB	'Ensure window is always on top', 00H
	ORG $+1
$SG86463 DB	'behaviour.altenter:config-fullscreen', 00H
	ORG $+3
$SG86464 DB	'Full screen on Alt-Enter', 00H
	ORG $+3
$SG86468 DB	'basics', 00H
	ORG $+1
$SG86469 DB	'Connection/Proxy', 00H
	ORG $+3
$SG86475 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'c', 00H, 'f', 00H, 'g', 00H, '.'
	DB	00H, 'c', 00H, 00H, 00H
	ORG $+2
$SG86491 DB	'Telnet command, or local proxy command', 00H
	ORG $+1
$SG86496 DB	'x11', 00H
$SG86476 DB	'c', 00H, '-', 00H, '>', 00H, 'g', 00H, 'e', 00H, 'n', 00H
	DB	'e', 00H, 'r', 00H, 'i', 00H, 'c', 00H, '.', 00H, 'h', 00H, 'a'
	DB	00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H, 'r', 00H, ' ', 00H
	DB	'=', 00H, '=', 00H, ' ', 00H, 'c', 00H, 'o', 00H, 'n', 00H, 'f'
	DB	00H, '_', 00H, 'r', 00H, 'a', 00H, 'd', 00H, 'i', 00H, 'o', 00H
	DB	'b', 00H, 'u', 00H, 't', 00H, 't', 00H, 'o', 00H, 'n', 00H, '_'
	DB	00H, 'h', 00H, 'a', 00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H
	DB	'r', 00H, 00H, 00H
	ORG $+2
$SG86480 DB	'Local', 00H
	ORG $+2
$SG86489 DB	'.', 00H, '.', 00H, '\', 00H, '.', 00H, '.', 00H, '\', 00H
	DB	'w', 00H, 'i', 00H, 'n', 00H, 'c', 00H, 'f', 00H, 'g', 00H, '.'
	DB	00H, 'c', 00H, 00H, 00H
	ORG $+2
$SG86490 DB	'c', 00H, '-', 00H, '>', 00H, 'g', 00H, 'e', 00H, 'n', 00H
	DB	'e', 00H, 'r', 00H, 'i', 00H, 'c', 00H, '.', 00H, 'h', 00H, 'a'
	DB	00H, 'n', 00H, 'd', 00H, 'l', 00H, 'e', 00H, 'r', 00H, ' ', 00H
	DB	'=', 00H, '=', 00H, ' ', 00H, 'c', 00H, 'o', 00H, 'n', 00H, 'f'
	DB	00H, '_', 00H, 'e', 00H, 'd', 00H, 'i', 00H, 't', 00H, 'b', 00H
	DB	'o', 00H, 'x', 00H, '_', 00H, 'h', 00H, 'a', 00H, 'n', 00H, 'd'
	DB	00H, 'l', 00H, 'e', 00H, 'r', 00H, 00H, 00H
	ORG $+2
$SG86495 DB	'X11 forwarding', 00H
	ORG $+1
$SG86497 DB	'Connection/SSH/X11', 00H
	ORG $+1
$SG86499 DB	'ssh.tunnels.xauthority:config-ssh-xauthority', 00H
	ORG $+3
$SG86500 DB	'Select X authority file', 00H
$SG86501 DB	'X authority file for local display', 00H
_DATA	ENDS
PUBLIC	_win_setup_config_box
EXTRN	_backend_from_proto:PROC
EXTRN	_ser_setup_config_box:PROC
EXTRN	_conf_editbox_handler:PROC
EXTRN	_safemalloc:PROC
EXTRN	_safefree:PROC
EXTRN	_dupprintf:PROC
EXTRN	_appname:DWORD
EXTRN	_ctrl_text:PROC
EXTRN	_ctrl_radiobuttons:PROC
EXTRN	_ctrl_filesel:PROC
EXTRN	_conf_filesel_handler:PROC
EXTRN	_dupstr:PROC
EXTRN	_saferealloc:PROC
EXTRN	__wassert:PROC
EXTRN	_conf_radiobutton_handler:PROC
EXTRN	_memmove:PROC
EXTRN	_ctrl_checkbox:PROC
EXTRN	_conf_checkbox_handler:PROC
EXTRN	_I:PROC
EXTRN	_ctrl_pushbutton:PROC
EXTRN	_P:PROC
EXTRN	_ctrl_getset:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\putty\windows\wincfg.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_i$86466 = -32						; size = 4
_j$86410 = -28						; size = 4
_i$86392 = -24						; size = 4
_i$86332 = -20						; size = 4
_i$86315 = -16						; size = 4
_str$ = -12						; size = 4
_c$ = -8						; size = 4
_s$ = -4						; size = 4
_b$ = 8							; size = 4
_hwndp$ = 12						; size = 4
_has_help$ = 16						; size = 4
_midsession$ = 20					; size = 4
_protocol$ = 24						; size = 4
_win_setup_config_box PROC
; Line 45
	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 50
	cmp	DWORD PTR _midsession$[ebp], 0
	jne	$LN33@win_setup_
; Line 54
	push	OFFSET $SG86302
	push	OFFSET $SG86303
	push	OFFSET $SG86304
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 56
	mov	ecx, DWORD PTR _hwndp$[ebp]
	push	ecx
	call	_P
	add	esp, 4
	push	eax
	push	OFFSET _about_handler
	push	0
	call	_P
	add	esp, 4
	push	eax
	push	97					; 00000061H
	push	OFFSET $SG86306
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_pushbutton
	add	esp, 24					; 00000018H
	mov	DWORD PTR _c$[ebp], eax
; Line 57
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR [eax+12], 0
; Line 58
	cmp	DWORD PTR _has_help$[ebp], 0
	je	SHORT $LN33@win_setup_
; Line 60
	mov	ecx, DWORD PTR _hwndp$[ebp]
	push	ecx
	call	_P
	add	esp, 4
	push	eax
	push	OFFSET _help_handler
	push	0
	call	_P
	add	esp, 4
	push	eax
	push	104					; 00000068H
	push	OFFSET $SG86309
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_pushbutton
	add	esp, 24					; 00000018H
	mov	DWORD PTR _c$[ebp], eax
; Line 61
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR [eax+12], 1
$LN33@win_setup_:
; Line 70
	push	OFFSET $SG86310
	push	OFFSET $SG86311
	push	OFFSET $SG86312
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 74
	push	105					; 00000069H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86313
	call	_P
	add	esp, 4
	push	eax
	push	105					; 00000069H
	push	OFFSET $SG86314
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 81
	mov	DWORD PTR _i$86315[ebp], 0
	jmp	SHORT $LN31@win_setup_
$LN30@win_setup_:
	mov	eax, DWORD PTR _i$86315[ebp]
	add	eax, 1
	mov	DWORD PTR _i$86315[ebp], eax
$LN31@win_setup_:
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR _i$86315[ebp]
	cmp	edx, DWORD PTR [ecx+16]
	jge	$LN29@win_setup_
; Line 82
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR _i$86315[ebp]
	mov	eax, DWORD PTR [ecx+edx*4]
	mov	DWORD PTR _c$[ebp], eax
; Line 84
	mov	ecx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [ecx], 3
	jne	SHORT $LN28@win_setup_
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx+20], 104			; 00000068H
	jne	SHORT $LN28@win_setup_
; Line 89
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	sub	ecx, 2
	cmp	DWORD PTR _i$86315[ebp], ecx
	jge	SHORT $LN27@win_setup_
; Line 90
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+16]
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	mov	eax, DWORD PTR [edx+eax*4-4]
	mov	DWORD PTR _c$[ebp], eax
; Line 92
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	sub	edx, DWORD PTR _i$86315[ebp]
	lea	eax, DWORD PTR [edx*4-8]
	push	eax
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	mov	eax, DWORD PTR _i$86315[ebp]
	lea	ecx, DWORD PTR [edx+eax*4+4]
	push	ecx
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+24]
	mov	ecx, DWORD PTR _i$86315[ebp]
	lea	edx, DWORD PTR [eax+ecx*4+8]
	push	edx
	call	_memmove
	add	esp, 12					; 0000000cH
; Line 93
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR _i$86315[ebp]
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+edx*4+4], eax
$LN27@win_setup_:
; Line 95
	jmp	SHORT $LN29@win_setup_
$LN28@win_setup_:
; Line 97
	jmp	$LN30@win_setup_
$LN29@win_setup_:
; Line 105
	push	OFFSET $SG86322
	push	OFFSET $SG86323
	push	OFFSET $SG86324
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 108
	push	88					; 00000058H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86325
	call	_P
	add	esp, 4
	push	eax
	push	116					; 00000074H
	push	OFFSET $SG86326
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 111
	push	89					; 00000059H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86327
	call	_P
	add	esp, 4
	push	eax
	push	100					; 00000064H
	push	OFFSET $SG86328
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 130
	push	OFFSET $SG86329
	push	OFFSET $SG86330
	push	OFFSET $SG86331
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 133
	mov	DWORD PTR _i$86332[ebp], 0
	jmp	SHORT $LN26@win_setup_
$LN25@win_setup_:
	mov	edx, DWORD PTR _i$86332[ebp]
	add	edx, 1
	mov	DWORD PTR _i$86332[ebp], edx
$LN26@win_setup_:
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR _i$86332[ebp]
	cmp	ecx, DWORD PTR [eax+16]
	jge	$LN24@win_setup_
; Line 134
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+24]
	mov	ecx, DWORD PTR _i$86332[ebp]
	mov	edx, DWORD PTR [eax+ecx*4]
	mov	DWORD PTR _c$[ebp], edx
; Line 136
	mov	eax, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [eax], 2
	jne	$LN23@win_setup_
	mov	ecx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [ecx+20], 97			; 00000061H
	jne	$LN23@win_setup_
; Line 137
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx+16], OFFSET _conf_radiobutton_handler
	je	SHORT $LN36@win_setup_
	push	137					; 00000089H
	push	OFFSET $SG86338
	push	OFFSET $SG86339
	call	__wassert
	add	esp, 12					; 0000000cH
$LN36@win_setup_:
; Line 138
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	add	edx, 2
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR [eax+36], edx
; Line 140
	push	4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	push	edx
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	push	ecx
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	edx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [edx+40], eax
; Line 142
	push	OFFSET $SG86343
	call	_dupstr
	add	esp, 4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [ecx+40]
	mov	DWORD PTR [ecx+edx*4-4], eax
; Line 144
	push	OFFSET $SG86344
	call	_dupstr
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+40]
	mov	DWORD PTR [edx+ecx*4-8], eax
; Line 146
	push	4
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+48]
	push	eax
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+48], eax
; Line 147
	push	3
	call	_I
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+48]
	mov	DWORD PTR [edx+ecx*4-4], eax
; Line 148
	push	4
	call	_I
	add	esp, 4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [ecx+48]
	mov	DWORD PTR [ecx+edx*4-8], eax
; Line 149
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx+44], 0
	je	SHORT $LN22@win_setup_
; Line 151
	push	1
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+44]
	push	eax
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+44], eax
; Line 152
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+44]
	mov	BYTE PTR [eax+edx-1], 0
; Line 153
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+44]
	mov	BYTE PTR [ecx+eax-2], 0
$LN22@win_setup_:
; Line 155
	jmp	SHORT $LN24@win_setup_
$LN23@win_setup_:
; Line 157
	jmp	$LN25@win_setup_
$LN24@win_setup_:
; Line 162
	push	103					; 00000067H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_filesel_handler
	push	OFFSET $SG86352
	call	_P
	add	esp, 4
	push	eax
	push	OFFSET $SG86353
	push	0
	push	OFFSET $SG86354
	push	0
	push	OFFSET $SG86355
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_filesel
	add	esp, 36					; 00000024H
; Line 174
	push	0
	push	2
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86357
	push	1
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86358
	push	0
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86359
	push	98					; 00000062H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_radiobutton_handler
	push	OFFSET $SG86360
	call	_P
	add	esp, 4
	push	eax
	push	3
	push	105					; 00000069H
	push	OFFSET $SG86361
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_radiobuttons
	add	esp, 56					; 00000038H
; Line 180
	push	OFFSET $SG86362
	push	OFFSET $SG86363
	push	OFFSET $SG86364
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 183
	push	121					; 00000079H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86365
	call	_P
	add	esp, 4
	push	eax
	push	115					; 00000073H
	push	OFFSET $SG86366
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 189
	push	OFFSET $SG86367
	push	OFFSET $SG86368
	push	OFFSET $SG86369
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 191
	push	0
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _variable_pitch_handler
	push	OFFSET $SG86370
	call	_P
	add	esp, 4
	push	eax
	push	0
	push	OFFSET $SG86371
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 199
	push	0
	push	0
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86373
	push	3
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86374
	push	2
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86375
	push	1
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86376
	push	113					; 00000071H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_radiobutton_handler
	push	OFFSET $SG86377
	call	_P
	add	esp, 4
	push	eax
	push	2
	push	113					; 00000071H
	push	OFFSET $SG86378
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_radiobuttons
	add	esp, 64					; 00000040H
; Line 206
	push	0
	push	OFFSET $SG86380
	push	OFFSET $SG86381
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 210
	push	143					; 0000008fH
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86382
	call	_P
	add	esp, 4
	push	eax
	push	115					; 00000073H
	push	OFFSET $SG86383
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 217
	push	OFFSET $SG86384
	push	OFFSET $SG86385
	push	OFFSET $SG86386
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 220
	push	OFFSET $SG86387
	call	_P
	add	esp, 4
	push	eax
	push	OFFSET $SG86388
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_text
	add	esp, 12					; 0000000cH
; Line 227
	mov	eax, DWORD PTR _appname
	push	eax
	push	OFFSET $SG86389
	call	_dupprintf
	add	esp, 8
	mov	DWORD PTR _str$[ebp], eax
; Line 228
	mov	ecx, DWORD PTR _str$[ebp]
	push	ecx
	push	OFFSET $SG86390
	push	OFFSET $SG86391
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 229
	mov	eax, DWORD PTR _str$[ebp]
	push	eax
	call	_safefree
	add	esp, 4
; Line 232
	mov	DWORD PTR _i$86392[ebp], 0
	jmp	SHORT $LN21@win_setup_
$LN20@win_setup_:
	mov	ecx, DWORD PTR _i$86392[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$86392[ebp], ecx
$LN21@win_setup_:
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR _i$86392[ebp]
	cmp	eax, DWORD PTR [edx+16]
	jge	$LN19@win_setup_
; Line 233
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	mov	eax, DWORD PTR _i$86392[ebp]
	mov	ecx, DWORD PTR [edx+eax*4]
	mov	DWORD PTR _c$[ebp], ecx
; Line 235
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx], 2
	jne	$LN18@win_setup_
	mov	eax, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [eax+20], 139			; 0000008bH
	jne	$LN18@win_setup_
; Line 236
	mov	ecx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [ecx+16], OFFSET _conf_radiobutton_handler
	je	SHORT $LN37@win_setup_
	push	236					; 000000ecH
	push	OFFSET $SG86398
	push	OFFSET $SG86399
	call	__wassert
	add	esp, 12					; 0000000cH
$LN37@win_setup_:
; Line 237
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	add	ecx, 3
	mov	edx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [edx+36], ecx
; Line 239
	push	4
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+40]
	push	eax
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+40], eax
; Line 241
	push	OFFSET $SG86403
	call	_dupstr
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+40]
	mov	DWORD PTR [edx+ecx*4-12], eax
; Line 243
	push	OFFSET $SG86404
	call	_dupstr
	add	esp, 4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [ecx+40]
	mov	DWORD PTR [ecx+edx*4-8], eax
; Line 245
	push	OFFSET $SG86405
	call	_dupstr
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+40]
	mov	DWORD PTR [edx+ecx*4-4], eax
; Line 247
	push	4
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+48]
	push	eax
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+48], eax
; Line 248
	push	0
	call	_I
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+48]
	mov	DWORD PTR [edx+ecx*4-12], eax
; Line 249
	push	1
	call	_I
	add	esp, 4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [ecx+48]
	mov	DWORD PTR [ecx+edx*4-8], eax
; Line 250
	push	2
	call	_I
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+48]
	mov	DWORD PTR [edx+ecx*4-4], eax
; Line 251
	mov	eax, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [eax+44], 0
	jne	SHORT $LN17@win_setup_
; Line 253
	push	1
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	push	edx
	call	_safemalloc
	add	esp, 8
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+44], eax
; Line 254
	mov	DWORD PTR _j$86410[ebp], 0
	jmp	SHORT $LN16@win_setup_
$LN15@win_setup_:
	mov	edx, DWORD PTR _j$86410[ebp]
	add	edx, 1
	mov	DWORD PTR _j$86410[ebp], edx
$LN16@win_setup_:
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _j$86410[ebp]
	cmp	ecx, DWORD PTR [eax+36]
	jge	SHORT $LN14@win_setup_
; Line 255
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+44]
	mov	ecx, DWORD PTR _j$86410[ebp]
	mov	BYTE PTR [eax+ecx], 0
	jmp	SHORT $LN15@win_setup_
$LN14@win_setup_:
; Line 256
	jmp	SHORT $LN13@win_setup_
$LN17@win_setup_:
; Line 258
	push	1
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+36]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+44]
	push	edx
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+44], eax
$LN13@win_setup_:
; Line 260
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+36]
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+44]
	mov	BYTE PTR [eax+edx-3], 120		; 00000078H
; Line 261
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+44]
	mov	BYTE PTR [ecx+eax-2], 98		; 00000062H
; Line 262
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+44]
	mov	BYTE PTR [edx+ecx-1], 101		; 00000065H
; Line 263
	jmp	SHORT $LN19@win_setup_
$LN18@win_setup_:
; Line 265
	jmp	$LN20@win_setup_
$LN19@win_setup_:
; Line 272
	push	OFFSET $SG86420
	push	OFFSET $SG86421
	push	OFFSET $SG86422
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 275
	push	136					; 00000088H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86423
	call	_P
	add	esp, 4
	push	eax
	push	102					; 00000066H
	push	OFFSET $SG86424
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 283
	push	OFFSET $SG86425
	push	OFFSET $SG86426
	push	OFFSET $SG86427
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 290
	push	0
	push	1
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86429
	push	0
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86430
	push	2
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86431
	push	133					; 00000085H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_radiobutton_handler
	push	OFFSET $SG86432
	call	_P
	add	esp, 4
	push	eax
	push	1
	push	109					; 0000006dH
	push	OFFSET $SG86433
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_radiobuttons
	add	esp, 56					; 00000038H
; Line 296
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+24]
	mov	ecx, DWORD PTR [eax+ecx*4-4]
	mov	DWORD PTR _c$[ebp], ecx
; Line 297
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+16]
	lea	ecx, DWORD PTR [eax*4-4]
	push	ecx
	mov	edx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [edx+24]
	push	eax
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	add	edx, 4
	push	edx
	call	_memmove
	add	esp, 12					; 0000000cH
; Line 298
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx], edx
; Line 304
	push	OFFSET $SG86435
	push	OFFSET $SG86436
	push	OFFSET $SG86437
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 307
	push	130					; 00000082H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86438
	call	_P
	add	esp, 4
	push	eax
	push	108					; 0000006cH
	push	OFFSET $SG86439
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 310
	push	129					; 00000081H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86440
	call	_P
	add	esp, 4
	push	eax
	push	115					; 00000073H
	push	OFFSET $SG86441
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 316
	push	OFFSET $SG86442
	push	OFFSET $SG86443
	push	OFFSET $SG86444
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 324
	push	0
	push	1
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86446
	push	3
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86447
	push	2
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86448
	push	0
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET $SG86449
	push	106					; 0000006aH
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_radiobutton_handler
	push	OFFSET $SG86450
	call	_P
	add	esp, 4
	push	eax
	push	1
	push	122					; 0000007aH
	push	OFFSET $SG86451
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_radiobuttons
	add	esp, 64					; 00000040H
; Line 331
	push	0
	push	OFFSET $SG86453
	push	OFFSET $SG86454
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 334
	push	78					; 0000004eH
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86455
	call	_P
	add	esp, 4
	push	eax
	push	52					; 00000034H
	push	OFFSET $SG86456
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 337
	push	79					; 0000004fH
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86457
	call	_P
	add	esp, 4
	push	eax
	push	121					; 00000079H
	push	OFFSET $SG86458
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 340
	push	80					; 00000050H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86459
	call	_P
	add	esp, 4
	push	eax
	push	108					; 0000006cH
	push	OFFSET $SG86460
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 343
	push	83					; 00000053H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86461
	call	_P
	add	esp, 4
	push	eax
	push	101					; 00000065H
	push	OFFSET $SG86462
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 347
	push	84					; 00000054H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_checkbox_handler
	push	OFFSET $SG86463
	call	_P
	add	esp, 4
	push	eax
	push	102					; 00000066H
	push	OFFSET $SG86464
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_ctrl_checkbox
	add	esp, 24					; 00000018H
; Line 353
	cmp	DWORD PTR _midsession$[ebp], 0
	jne	$LN12@win_setup_
; Line 355
	push	0
	push	OFFSET $SG86468
	push	OFFSET $SG86469
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 356
	mov	DWORD PTR _i$86466[ebp], 0
	jmp	SHORT $LN11@win_setup_
$LN10@win_setup_:
	mov	eax, DWORD PTR _i$86466[ebp]
	add	eax, 1
	mov	DWORD PTR _i$86466[ebp], eax
$LN11@win_setup_:
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR _i$86466[ebp]
	cmp	edx, DWORD PTR [ecx+16]
	jge	$LN9@win_setup_
; Line 357
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR _i$86466[ebp]
	mov	eax, DWORD PTR [ecx+edx*4]
	mov	DWORD PTR _c$[ebp], eax
; Line 359
	mov	ecx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [ecx], 2
	jne	$LN8@win_setup_
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx+20], 13			; 0000000dH
	jne	$LN8@win_setup_
; Line 360
	mov	eax, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [eax+16], OFFSET _conf_radiobutton_handler
	je	SHORT $LN38@win_setup_
	push	360					; 00000168H
	push	OFFSET $SG86475
	push	OFFSET $SG86476
	call	__wassert
	add	esp, 12					; 0000000cH
$LN38@win_setup_:
; Line 361
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+36]
	add	eax, 1
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+36], eax
; Line 363
	push	4
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+36]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [ecx+40]
	push	edx
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+40], eax
; Line 365
	push	OFFSET $SG86480
	call	_dupstr
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+40]
	mov	DWORD PTR [edx+ecx*4-4], eax
; Line 367
	push	4
	mov	eax, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+48]
	push	eax
	call	_saferealloc
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+48], eax
; Line 368
	push	5
	call	_I
	add	esp, 4
	mov	edx, DWORD PTR _c$[ebp]
	mov	ecx, DWORD PTR [edx+36]
	mov	edx, DWORD PTR _c$[ebp]
	mov	edx, DWORD PTR [edx+48]
	mov	DWORD PTR [edx+ecx*4-4], eax
; Line 369
	jmp	SHORT $LN9@win_setup_
$LN8@win_setup_:
; Line 371
	jmp	$LN10@win_setup_
$LN9@win_setup_:
; Line 373
	mov	DWORD PTR _i$86466[ebp], 0
	jmp	SHORT $LN7@win_setup_
$LN6@win_setup_:
	mov	eax, DWORD PTR _i$86466[ebp]
	add	eax, 1
	mov	DWORD PTR _i$86466[ebp], eax
$LN7@win_setup_:
	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR _i$86466[ebp]
	cmp	edx, DWORD PTR [ecx+16]
	jge	SHORT $LN12@win_setup_
; Line 374
	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR _i$86466[ebp]
	mov	eax, DWORD PTR [ecx+edx*4]
	mov	DWORD PTR _c$[ebp], eax
; Line 376
	mov	ecx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [ecx], 1
	jne	SHORT $LN4@win_setup_
	mov	edx, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [edx+20], 18			; 00000012H
	jne	SHORT $LN4@win_setup_
; Line 377
	mov	eax, DWORD PTR _c$[ebp]
	cmp	DWORD PTR [eax+16], OFFSET _conf_editbox_handler
	je	SHORT $LN39@win_setup_
	push	377					; 00000179H
	push	OFFSET $SG86489
	push	OFFSET $SG86490
	call	__wassert
	add	esp, 12					; 0000000cH
$LN39@win_setup_:
; Line 378
	mov	edx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_safefree
	add	esp, 4
; Line 380
	push	OFFSET $SG86491
	call	_dupstr
	add	esp, 4
	mov	ecx, DWORD PTR _c$[ebp]
	mov	DWORD PTR [ecx+4], eax
; Line 381
	jmp	SHORT $LN12@win_setup_
$LN4@win_setup_:
; Line 383
	jmp	SHORT $LN6@win_setup_
$LN12@win_setup_:
; Line 389
	cmp	DWORD PTR _midsession$[ebp], 0
	je	SHORT $LN2@win_setup_
	cmp	DWORD PTR _protocol$[ebp], 4
	jne	SHORT $LN3@win_setup_
$LN2@win_setup_:
; Line 390
	push	15					; 0000000fH
	push	31					; 0000001fH
	mov	edx, DWORD PTR _midsession$[ebp]
	push	edx
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_ser_setup_config_box
	add	esp, 16					; 00000010H
$LN3@win_setup_:
; Line 396
	cmp	DWORD PTR _midsession$[ebp], 0
	jne	SHORT $LN34@win_setup_
	push	3
	call	_backend_from_proto
	add	esp, 4
	test	eax, eax
	je	SHORT $LN34@win_setup_
; Line 397
	push	OFFSET $SG86495
	push	OFFSET $SG86496
	push	OFFSET $SG86497
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	call	_ctrl_getset
	add	esp, 16					; 00000010H
	mov	DWORD PTR _s$[ebp], eax
; Line 401
	push	147					; 00000093H
	call	_I
	add	esp, 4
	push	eax
	push	OFFSET _conf_filesel_handler
	push	OFFSET $SG86499
	call	_P
	add	esp, 4
	push	eax
	push	OFFSET $SG86500
	push	0
	push	0
	push	116					; 00000074H
	push	OFFSET $SG86501
	mov	edx, DWORD PTR _s$[ebp]
	push	edx
	call	_ctrl_filesel
	add	esp, 36					; 00000024H
$LN34@win_setup_:
; Line 403
	add	esp, 32					; 00000020H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_win_setup_config_box ENDP
_TEXT	ENDS
EXTRN	_modal_about_box:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_hwndp$ = -4						; size = 4
_ctrl$ = 8						; size = 4
_dlg$ = 12						; size = 4
_data$ = 16						; size = 4
_event$ = 20						; size = 4
_about_handler PROC
; Line 15
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 16
	mov	eax, DWORD PTR _ctrl$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _hwndp$[ebp], ecx
; Line 18
	cmp	DWORD PTR _event$[ebp], 1
	jne	SHORT $LN2@about_hand
; Line 19
	mov	edx, DWORD PTR _hwndp$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	_modal_about_box
	add	esp, 4
$LN2@about_hand:
; Line 21
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_about_handler ENDP
_TEXT	ENDS
EXTRN	_show_help:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_hwndp$ = -4						; size = 4
_ctrl$ = 8						; size = 4
_dlg$ = 12						; size = 4
_data$ = 16						; size = 4
_event$ = 20						; size = 4
_help_handler PROC
; Line 25
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 26
	mov	eax, DWORD PTR _ctrl$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _hwndp$[ebp], ecx
; Line 28
	cmp	DWORD PTR _event$[ebp], 1
	jne	SHORT $LN2@help_handl
; Line 29
	mov	edx, DWORD PTR _hwndp$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	_show_help
	add	esp, 4
$LN2@help_handl:
; Line 31
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_help_handler ENDP
_TEXT	ENDS
EXTRN	_dlg_set_fixed_pitch_flag:PROC
EXTRN	_dlg_checkbox_get:PROC
EXTRN	_dlg_checkbox_set:PROC
EXTRN	_dlg_get_fixed_pitch_flag:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_ctrl$ = 8						; size = 4
_dlg$ = 12						; size = 4
_data$ = 16						; size = 4
_event$ = 20						; size = 4
_variable_pitch_handler PROC
; Line 35
	push	ebp
	mov	ebp, esp
; Line 36
	cmp	DWORD PTR _event$[ebp], 0
	jne	SHORT $LN3@variable_p
; Line 37
	mov	eax, DWORD PTR _dlg$[ebp]
	push	eax
	call	_dlg_get_fixed_pitch_flag
	add	esp, 4
	neg	eax
	sbb	eax, eax
	add	eax, 1
	push	eax
	mov	ecx, DWORD PTR _dlg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ctrl$[ebp]
	push	edx
	call	_dlg_checkbox_set
	add	esp, 12					; 0000000cH
	jmp	SHORT $LN4@variable_p
$LN3@variable_p:
; Line 38
	cmp	DWORD PTR _event$[ebp], 2
	jne	SHORT $LN4@variable_p
; Line 39
	mov	eax, DWORD PTR _dlg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ctrl$[ebp]
	push	ecx
	call	_dlg_checkbox_get
	add	esp, 8
	neg	eax
	sbb	eax, eax
	add	eax, 1
	push	eax
	mov	edx, DWORD PTR _dlg$[ebp]
	push	edx
	call	_dlg_set_fixed_pitch_flag
	add	esp, 8
$LN4@variable_p:
; Line 41
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_variable_pitch_handler ENDP
_TEXT	ENDS
END
