; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\tools\toolutil\filestrm.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD

PUBLIC	_T_FileStream_open
EXTRN	__imp__fopen:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\tools\toolutil\filestrm.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _T_FileStream_open
_TEXT	SEGMENT
_file$3769 = -8						; size = 4
_filename$ = 8						; size = 4
_mode$ = 12						; size = 4
_T_FileStream_open PROC					; COMDAT
; Line 32
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 33
	cmp	DWORD PTR _filename$[ebp], 0
	je	SHORT $LN2@T_FileStre
	mov	eax, DWORD PTR _filename$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN2@T_FileStre
	cmp	DWORD PTR _mode$[ebp], 0
	je	SHORT $LN2@T_FileStre
	mov	eax, DWORD PTR _mode$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN2@T_FileStre
; Line 34
	mov	esi, esp
	mov	eax, DWORD PTR _mode$[ebp]
	push	eax
	mov	ecx, DWORD PTR _filename$[ebp]
	push	ecx
	call	DWORD PTR __imp__fopen
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _file$3769[ebp], eax
; Line 35
	mov	eax, DWORD PTR _file$3769[ebp]
	jmp	SHORT $LN3@T_FileStre
; Line 36
	jmp	SHORT $LN3@T_FileStre
$LN2@T_FileStre:
; Line 37
	xor	eax, eax
$LN3@T_FileStre:
; Line 39
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_open ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_close
EXTRN	__imp__fclose:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_close
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_T_FileStream_close PROC				; COMDAT
; Line 74
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 75
	cmp	DWORD PTR _fileStream$[ebp], 0
	je	SHORT $LN2@T_FileStre@2
; Line 76
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__fclose
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@T_FileStre@2:
; Line 77
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_close ENDP
_TEXT	ENDS
PUBLIC	??_C@_01KDCPPGHE@r?$AA@				; `string'
PUBLIC	_T_FileStream_file_exists
;	COMDAT ??_C@_01KDCPPGHE@r?$AA@
CONST	SEGMENT
??_C@_01KDCPPGHE@r?$AA@ DB 'r', 00H			; `string'
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT _T_FileStream_file_exists
_TEXT	SEGMENT
_temp$ = -8						; size = 4
_filename$ = 8						; size = 4
_T_FileStream_file_exists PROC				; COMDAT
; Line 81
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 82
	mov	esi, esp
	push	OFFSET ??_C@_01KDCPPGHE@r?$AA@
	mov	eax, DWORD PTR _filename$[ebp]
	push	eax
	call	DWORD PTR __imp__fopen
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _temp$[ebp], eax
; Line 83
	cmp	DWORD PTR _temp$[ebp], 0
	je	SHORT $LN2@T_FileStre@3
; Line 84
	mov	esi, esp
	mov	eax, DWORD PTR _temp$[ebp]
	push	eax
	call	DWORD PTR __imp__fclose
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 85
	mov	al, 1
	jmp	SHORT $LN3@T_FileStre@3
; Line 86
	jmp	SHORT $LN3@T_FileStre@3
$LN2@T_FileStre@3:
; Line 87
	xor	al, al
$LN3@T_FileStre@3:
; Line 88
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_file_exists ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_read
EXTRN	__imp__fread:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_read
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_addr$ = 12						; size = 4
_len$ = 16						; size = 4
_T_FileStream_read PROC					; COMDAT
; Line 104
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 105
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _len$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _addr$[ebp]
	push	edx
	call	DWORD PTR __imp__fread
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 106
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_read ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_write
EXTRN	__imp__fwrite:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_write
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_addr$ = 12						; size = 4
_len$ = 16						; size = 4
_T_FileStream_write PROC				; COMDAT
; Line 110
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 112
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _len$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _addr$[ebp]
	push	edx
	call	DWORD PTR __imp__fwrite
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 113
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_write ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_rewind
EXTRN	__imp__rewind:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_rewind
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_T_FileStream_rewind PROC				; COMDAT
; Line 117
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 118
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__rewind
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 119
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_rewind ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_putc
EXTRN	__imp__fputc:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_putc
_TEXT	SEGMENT
_c$ = -8						; size = 4
_fileStream$ = 8					; size = 4
_ch$ = 12						; size = 4
_T_FileStream_putc PROC					; COMDAT
; Line 123
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 124
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ch$[ebp]
	push	ecx
	call	DWORD PTR __imp__fputc
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _c$[ebp], eax
; Line 125
	mov	eax, DWORD PTR _c$[ebp]
; Line 126
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_putc ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_getc
EXTRN	__imp__fgetc:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_getc
_TEXT	SEGMENT
_c$ = -8						; size = 4
_fileStream$ = 8					; size = 4
_T_FileStream_getc PROC					; COMDAT
; Line 130
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 131
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__fgetc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _c$[ebp], eax
; Line 132
	mov	eax, DWORD PTR _c$[ebp]
; Line 133
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_getc ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_ungetc
EXTRN	__imp__ungetc:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_ungetc
_TEXT	SEGMENT
_c$ = -8						; size = 4
_ch$ = 8						; size = 4
_fileStream$ = 12					; size = 4
_T_FileStream_ungetc PROC				; COMDAT
; Line 137
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 139
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ch$[ebp]
	push	ecx
	call	DWORD PTR __imp__ungetc
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _c$[ebp], eax
; Line 140
	mov	eax, DWORD PTR _c$[ebp]
; Line 141
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_ungetc ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_peek
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_peek
_TEXT	SEGMENT
_c$ = -8						; size = 4
_fileStream$ = 8					; size = 4
_T_FileStream_peek PROC					; COMDAT
; Line 145
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 146
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__fgetc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _c$[ebp], eax
; Line 147
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	call	DWORD PTR __imp__ungetc
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 148
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_peek ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_readLine
EXTRN	__imp__fgets:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_readLine
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_buffer$ = 12						; size = 4
_length$ = 16						; size = 4
_T_FileStream_readLine PROC				; COMDAT
; Line 152
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 153
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _length$[ebp]
	push	ecx
	mov	edx, DWORD PTR _buffer$[ebp]
	push	edx
	call	DWORD PTR __imp__fgets
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 154
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_readLine ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_writeLine
EXTRN	__imp__fputs:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_writeLine
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_buffer$ = 12						; size = 4
_T_FileStream_writeLine PROC				; COMDAT
; Line 158
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 159
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buffer$[ebp]
	push	ecx
	call	DWORD PTR __imp__fputs
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 160
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_writeLine ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_size
EXTRN	__imp__fseek:PROC
EXTRN	__imp__ftell:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_size
_TEXT	SEGMENT
_size$ = -20						; size = 4
_savedPos$ = -8						; size = 4
_fileStream$ = 8					; size = 4
_T_FileStream_size PROC					; COMDAT
; Line 164
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 165
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__ftell
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _savedPos$[ebp], eax
; Line 166
	mov	DWORD PTR _size$[ebp], 0
; Line 170
	mov	esi, esp
	push	2
	push	0
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__fseek
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 171
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__ftell
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _size$[ebp], eax
; Line 172
	mov	esi, esp
	push	0
	mov	eax, DWORD PTR _savedPos$[ebp]
	push	eax
	mov	ecx, DWORD PTR _fileStream$[ebp]
	push	ecx
	call	DWORD PTR __imp__fseek
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 173
	mov	eax, DWORD PTR _size$[ebp]
; Line 174
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_size ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_eof
EXTRN	__imp__feof:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_eof
_TEXT	SEGMENT
_fileStream$ = 8					; size = 4
_T_FileStream_eof PROC					; COMDAT
; Line 178
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 179
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__feof
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 180
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_eof ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_error
EXTRN	__imp__ferror:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_error
_TEXT	SEGMENT
tv68 = -196						; size = 4
_fileStream$ = 8					; size = 4
_T_FileStream_error PROC				; COMDAT
; Line 190
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 191
	cmp	DWORD PTR _fileStream$[ebp], 0
	je	SHORT $LN3@T_FileStre@4
	mov	esi, esp
	mov	eax, DWORD PTR _fileStream$[ebp]
	push	eax
	call	DWORD PTR __imp__ferror
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jne	SHORT $LN3@T_FileStre@4
	mov	DWORD PTR tv68[ebp], 0
	jmp	SHORT $LN4@T_FileStre@4
$LN3@T_FileStre@4:
	mov	DWORD PTR tv68[ebp], 1
$LN4@T_FileStre@4:
	mov	eax, DWORD PTR tv68[ebp]
; Line 192
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 196				; 000000c4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_error ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_stdin
EXTRN	__imp____iob_func:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_stdin
_TEXT	SEGMENT
_T_FileStream_stdin PROC				; COMDAT
; Line 205
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 206
	mov	esi, esp
	call	DWORD PTR __imp____iob_func
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 207
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_stdin ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_stdout
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_stdout
_TEXT	SEGMENT
_T_FileStream_stdout PROC				; COMDAT
; Line 211
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 212
	mov	esi, esp
	call	DWORD PTR __imp____iob_func
	cmp	esi, esp
	call	__RTC_CheckEsp
	add	eax, 32					; 00000020H
; Line 213
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_stdout ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_stderr
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_stderr
_TEXT	SEGMENT
_T_FileStream_stderr PROC				; COMDAT
; Line 218
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 219
	mov	esi, esp
	call	DWORD PTR __imp____iob_func
	cmp	esi, esp
	call	__RTC_CheckEsp
	add	eax, 64					; 00000040H
; Line 220
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_stderr ENDP
_TEXT	ENDS
PUBLIC	_T_FileStream_remove
EXTRN	__imp__remove:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _T_FileStream_remove
_TEXT	SEGMENT
_fileName$ = 8						; size = 4
_T_FileStream_remove PROC				; COMDAT
; Line 223
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 224
	mov	esi, esp
	mov	eax, DWORD PTR _fileName$[ebp]
	push	eax
	call	DWORD PTR __imp__remove
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	neg	eax
	sbb	eax, eax
	add	eax, 1
; Line 225
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_T_FileStream_remove ENDP
_TEXT	ENDS
END