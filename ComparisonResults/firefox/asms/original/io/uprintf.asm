; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\io\uprintf.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?value@?$integral_constant@_N$0A@@tr1@std@@2_NB	; std::tr1::integral_constant<bool,0>::value
PUBLIC	?value@?$integral_constant@_N$00@tr1@std@@2_NB	; std::tr1::integral_constant<bool,1>::value
PUBLIC	?value@?$integral_constant@I$0A@@tr1@std@@2IB	; std::tr1::integral_constant<unsigned int,0>::value
PUBLIC	?_Rank@?$_Arithmetic_traits@_N@std@@2HB		; std::_Arithmetic_traits<bool>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@D@std@@2HB		; std::_Arithmetic_traits<char>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@C@std@@2HB		; std::_Arithmetic_traits<signed char>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@E@std@@2HB		; std::_Arithmetic_traits<unsigned char>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@F@std@@2HB		; std::_Arithmetic_traits<short>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@G@std@@2HB		; std::_Arithmetic_traits<unsigned short>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@H@std@@2HB		; std::_Arithmetic_traits<int>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@I@std@@2HB		; std::_Arithmetic_traits<unsigned int>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@J@std@@2HB		; std::_Arithmetic_traits<long>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@K@std@@2HB		; std::_Arithmetic_traits<unsigned long>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@_J@std@@2HB		; std::_Arithmetic_traits<__int64>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@_K@std@@2HB		; std::_Arithmetic_traits<unsigned __int64>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@M@std@@2HB		; std::_Arithmetic_traits<float>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@N@std@@2HB		; std::_Arithmetic_traits<double>::_Rank
PUBLIC	?_Rank@?$_Arithmetic_traits@O@std@@2HB		; std::_Arithmetic_traits<long double>::_Rank
PUBLIC	?collate@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::collate
PUBLIC	?ctype@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::ctype
PUBLIC	?monetary@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::monetary
PUBLIC	?numeric@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::numeric
PUBLIC	?time@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::time
PUBLIC	?messages@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::messages
PUBLIC	?all@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::all
PUBLIC	?none@?$_Locbase@H@std@@2HB			; std::_Locbase<int>::none
PUBLIC	?skipws@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::skipws
PUBLIC	?unitbuf@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::unitbuf
PUBLIC	?uppercase@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::uppercase
PUBLIC	?showbase@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::showbase
PUBLIC	?showpoint@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::showpoint
PUBLIC	?showpos@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::showpos
PUBLIC	?left@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::left
PUBLIC	?right@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::right
PUBLIC	?internal@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::internal
PUBLIC	?dec@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::dec
PUBLIC	?oct@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::oct
PUBLIC	?hex@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::hex
PUBLIC	?scientific@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::scientific
PUBLIC	?fixed@?$_Iosb@H@std@@2W4_Fmtflags@12@B		; std::_Iosb<int>::fixed
PUBLIC	?hexfloat@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::hexfloat
PUBLIC	?boolalpha@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::boolalpha
PUBLIC	?_Stdio@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::_Stdio
PUBLIC	?adjustfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::adjustfield
PUBLIC	?basefield@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::basefield
PUBLIC	?floatfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B	; std::_Iosb<int>::floatfield
PUBLIC	?goodbit@?$_Iosb@H@std@@2W4_Iostate@12@B	; std::_Iosb<int>::goodbit
PUBLIC	?eofbit@?$_Iosb@H@std@@2W4_Iostate@12@B		; std::_Iosb<int>::eofbit
PUBLIC	?failbit@?$_Iosb@H@std@@2W4_Iostate@12@B	; std::_Iosb<int>::failbit
PUBLIC	?badbit@?$_Iosb@H@std@@2W4_Iostate@12@B		; std::_Iosb<int>::badbit
PUBLIC	?_Hardfail@?$_Iosb@H@std@@2W4_Iostate@12@B	; std::_Iosb<int>::_Hardfail
PUBLIC	?in@?$_Iosb@H@std@@2W4_Openmode@12@B		; std::_Iosb<int>::in
PUBLIC	?out@?$_Iosb@H@std@@2W4_Openmode@12@B		; std::_Iosb<int>::out
PUBLIC	?ate@?$_Iosb@H@std@@2W4_Openmode@12@B		; std::_Iosb<int>::ate
PUBLIC	?app@?$_Iosb@H@std@@2W4_Openmode@12@B		; std::_Iosb<int>::app
PUBLIC	?trunc@?$_Iosb@H@std@@2W4_Openmode@12@B		; std::_Iosb<int>::trunc
PUBLIC	?_Nocreate@?$_Iosb@H@std@@2W4_Openmode@12@B	; std::_Iosb<int>::_Nocreate
PUBLIC	?_Noreplace@?$_Iosb@H@std@@2W4_Openmode@12@B	; std::_Iosb<int>::_Noreplace
PUBLIC	?binary@?$_Iosb@H@std@@2W4_Openmode@12@B	; std::_Iosb<int>::binary
PUBLIC	?beg@?$_Iosb@H@std@@2W4_Seekdir@12@B		; std::_Iosb<int>::beg
PUBLIC	?cur@?$_Iosb@H@std@@2W4_Seekdir@12@B		; std::_Iosb<int>::cur
PUBLIC	?end@?$_Iosb@H@std@@2W4_Seekdir@12@B		; std::_Iosb<int>::end
_BSS	SEGMENT
_gStdOut DD	01H DUP (?)
_gStdOutInitOnce DQ 01H DUP (?)
_BSS	ENDS
CONST	SEGMENT
_g_stream_handler DD FLAT:?u_printf_write@@YAHPAXPB_WH@Z
	DD	FLAT:?u_printf_pad_and_justify@@YAHPAXPBUu_printf_spec_info@@PB_WH@Z
CONST	ENDS
;	COMDAT ?end@?$_Iosb@H@std@@2W4_Seekdir@12@B
CONST	SEGMENT
?end@?$_Iosb@H@std@@2W4_Seekdir@12@B DD 02H		; std::_Iosb<int>::end
CONST	ENDS
;	COMDAT ?cur@?$_Iosb@H@std@@2W4_Seekdir@12@B
CONST	SEGMENT
?cur@?$_Iosb@H@std@@2W4_Seekdir@12@B DD 01H		; std::_Iosb<int>::cur
CONST	ENDS
;	COMDAT ?beg@?$_Iosb@H@std@@2W4_Seekdir@12@B
CONST	SEGMENT
?beg@?$_Iosb@H@std@@2W4_Seekdir@12@B DD 00H		; std::_Iosb<int>::beg
CONST	ENDS
;	COMDAT ?binary@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?binary@?$_Iosb@H@std@@2W4_Openmode@12@B DD 020H	; std::_Iosb<int>::binary
CONST	ENDS
;	COMDAT ?_Noreplace@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?_Noreplace@?$_Iosb@H@std@@2W4_Openmode@12@B DD 080H	; std::_Iosb<int>::_Noreplace
CONST	ENDS
;	COMDAT ?_Nocreate@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?_Nocreate@?$_Iosb@H@std@@2W4_Openmode@12@B DD 040H	; std::_Iosb<int>::_Nocreate
CONST	ENDS
;	COMDAT ?trunc@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?trunc@?$_Iosb@H@std@@2W4_Openmode@12@B DD 010H		; std::_Iosb<int>::trunc
CONST	ENDS
;	COMDAT ?app@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?app@?$_Iosb@H@std@@2W4_Openmode@12@B DD 08H		; std::_Iosb<int>::app
CONST	ENDS
;	COMDAT ?ate@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?ate@?$_Iosb@H@std@@2W4_Openmode@12@B DD 04H		; std::_Iosb<int>::ate
CONST	ENDS
;	COMDAT ?out@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?out@?$_Iosb@H@std@@2W4_Openmode@12@B DD 02H		; std::_Iosb<int>::out
CONST	ENDS
;	COMDAT ?in@?$_Iosb@H@std@@2W4_Openmode@12@B
CONST	SEGMENT
?in@?$_Iosb@H@std@@2W4_Openmode@12@B DD 01H		; std::_Iosb<int>::in
CONST	ENDS
;	COMDAT ?_Hardfail@?$_Iosb@H@std@@2W4_Iostate@12@B
CONST	SEGMENT
?_Hardfail@?$_Iosb@H@std@@2W4_Iostate@12@B DD 010H	; std::_Iosb<int>::_Hardfail
CONST	ENDS
;	COMDAT ?badbit@?$_Iosb@H@std@@2W4_Iostate@12@B
CONST	SEGMENT
?badbit@?$_Iosb@H@std@@2W4_Iostate@12@B DD 04H		; std::_Iosb<int>::badbit
CONST	ENDS
;	COMDAT ?failbit@?$_Iosb@H@std@@2W4_Iostate@12@B
CONST	SEGMENT
?failbit@?$_Iosb@H@std@@2W4_Iostate@12@B DD 02H		; std::_Iosb<int>::failbit
CONST	ENDS
;	COMDAT ?eofbit@?$_Iosb@H@std@@2W4_Iostate@12@B
CONST	SEGMENT
?eofbit@?$_Iosb@H@std@@2W4_Iostate@12@B DD 01H		; std::_Iosb<int>::eofbit
CONST	ENDS
;	COMDAT ?goodbit@?$_Iosb@H@std@@2W4_Iostate@12@B
CONST	SEGMENT
?goodbit@?$_Iosb@H@std@@2W4_Iostate@12@B DD 00H		; std::_Iosb<int>::goodbit
CONST	ENDS
;	COMDAT ?floatfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?floatfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 03000H	; std::_Iosb<int>::floatfield
CONST	ENDS
;	COMDAT ?basefield@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?basefield@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 0e00H	; std::_Iosb<int>::basefield
CONST	ENDS
;	COMDAT ?adjustfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?adjustfield@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 01c0H	; std::_Iosb<int>::adjustfield
CONST	ENDS
;	COMDAT ?_Stdio@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?_Stdio@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 08000H	; std::_Iosb<int>::_Stdio
CONST	ENDS
;	COMDAT ?boolalpha@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?boolalpha@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 04000H	; std::_Iosb<int>::boolalpha
CONST	ENDS
;	COMDAT ?hexfloat@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?hexfloat@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 03000H	; std::_Iosb<int>::hexfloat
CONST	ENDS
;	COMDAT ?fixed@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?fixed@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 02000H	; std::_Iosb<int>::fixed
CONST	ENDS
;	COMDAT ?scientific@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?scientific@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 01000H	; std::_Iosb<int>::scientific
CONST	ENDS
;	COMDAT ?hex@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?hex@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 0800H		; std::_Iosb<int>::hex
CONST	ENDS
;	COMDAT ?oct@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?oct@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 0400H		; std::_Iosb<int>::oct
CONST	ENDS
;	COMDAT ?dec@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?dec@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 0200H		; std::_Iosb<int>::dec
CONST	ENDS
;	COMDAT ?internal@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?internal@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 0100H	; std::_Iosb<int>::internal
CONST	ENDS
;	COMDAT ?right@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?right@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 080H		; std::_Iosb<int>::right
CONST	ENDS
;	COMDAT ?left@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?left@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 040H		; std::_Iosb<int>::left
CONST	ENDS
;	COMDAT ?showpos@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?showpos@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 020H	; std::_Iosb<int>::showpos
CONST	ENDS
;	COMDAT ?showpoint@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?showpoint@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 010H	; std::_Iosb<int>::showpoint
CONST	ENDS
;	COMDAT ?showbase@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?showbase@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 08H	; std::_Iosb<int>::showbase
CONST	ENDS
;	COMDAT ?uppercase@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?uppercase@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 04H	; std::_Iosb<int>::uppercase
CONST	ENDS
;	COMDAT ?unitbuf@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?unitbuf@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 02H	; std::_Iosb<int>::unitbuf
CONST	ENDS
;	COMDAT ?skipws@?$_Iosb@H@std@@2W4_Fmtflags@12@B
CONST	SEGMENT
?skipws@?$_Iosb@H@std@@2W4_Fmtflags@12@B DD 01H		; std::_Iosb<int>::skipws
CONST	ENDS
;	COMDAT ?none@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?none@?$_Locbase@H@std@@2HB DD 00H			; std::_Locbase<int>::none
CONST	ENDS
;	COMDAT ?all@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?all@?$_Locbase@H@std@@2HB DD 03fH			; std::_Locbase<int>::all
CONST	ENDS
;	COMDAT ?messages@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?messages@?$_Locbase@H@std@@2HB DD 020H			; std::_Locbase<int>::messages
CONST	ENDS
;	COMDAT ?time@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?time@?$_Locbase@H@std@@2HB DD 010H			; std::_Locbase<int>::time
CONST	ENDS
;	COMDAT ?numeric@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?numeric@?$_Locbase@H@std@@2HB DD 08H			; std::_Locbase<int>::numeric
CONST	ENDS
;	COMDAT ?monetary@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?monetary@?$_Locbase@H@std@@2HB DD 04H			; std::_Locbase<int>::monetary
CONST	ENDS
;	COMDAT ?ctype@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?ctype@?$_Locbase@H@std@@2HB DD 02H			; std::_Locbase<int>::ctype
CONST	ENDS
;	COMDAT ?collate@?$_Locbase@H@std@@2HB
CONST	SEGMENT
?collate@?$_Locbase@H@std@@2HB DD 01H			; std::_Locbase<int>::collate
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@O@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@O@std@@2HB DD 09H		; std::_Arithmetic_traits<long double>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@N@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@N@std@@2HB DD 08H		; std::_Arithmetic_traits<double>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@M@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@M@std@@2HB DD 07H		; std::_Arithmetic_traits<float>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@_K@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@_K@std@@2HB DD 06H		; std::_Arithmetic_traits<unsigned __int64>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@_J@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@_J@std@@2HB DD 06H		; std::_Arithmetic_traits<__int64>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@K@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@K@std@@2HB DD 05H		; std::_Arithmetic_traits<unsigned long>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@J@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@J@std@@2HB DD 05H		; std::_Arithmetic_traits<long>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@I@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@I@std@@2HB DD 04H		; std::_Arithmetic_traits<unsigned int>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@H@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@H@std@@2HB DD 04H		; std::_Arithmetic_traits<int>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@G@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@G@std@@2HB DD 03H		; std::_Arithmetic_traits<unsigned short>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@F@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@F@std@@2HB DD 03H		; std::_Arithmetic_traits<short>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@E@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@E@std@@2HB DD 02H		; std::_Arithmetic_traits<unsigned char>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@C@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@C@std@@2HB DD 02H		; std::_Arithmetic_traits<signed char>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@D@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@D@std@@2HB DD 02H		; std::_Arithmetic_traits<char>::_Rank
CONST	ENDS
;	COMDAT ?_Rank@?$_Arithmetic_traits@_N@std@@2HB
CONST	SEGMENT
?_Rank@?$_Arithmetic_traits@_N@std@@2HB DD 01H		; std::_Arithmetic_traits<bool>::_Rank
CONST	ENDS
;	COMDAT ?value@?$integral_constant@I$0A@@tr1@std@@2IB
CONST	SEGMENT
?value@?$integral_constant@I$0A@@tr1@std@@2IB DD 00H	; std::tr1::integral_constant<unsigned int,0>::value
CONST	ENDS
;	COMDAT ?value@?$integral_constant@_N$00@tr1@std@@2_NB
CONST	SEGMENT
?value@?$integral_constant@_N$00@tr1@std@@2_NB DB 01H	; std::tr1::integral_constant<bool,1>::value
CONST	ENDS
;	COMDAT ?value@?$integral_constant@_N$0A@@tr1@std@@2_NB
CONST	SEGMENT
?value@?$integral_constant@_N$0A@@tr1@std@@2_NB DB 00H	; std::tr1::integral_constant<bool,0>::value
CONST	ENDS
PUBLIC	??2@YAPAXI@Z					; operator new
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\include\unicode\utypes.h
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ??2@YAPAXI@Z
_TEXT	SEGMENT
_q$ = -8						; size = 4
___formal$ = 8						; size = 4
??2@YAPAXI@Z PROC					; operator new, COMDAT
; Line 411
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
; Line 412
	mov	DWORD PTR _q$[ebp], 0
; Line 413
	mov	eax, DWORD PTR _q$[ebp]
	mov	BYTE PTR [eax], 5
; Line 414
	mov	eax, DWORD PTR _q$[ebp]
; Line 415
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??2@YAPAXI@Z ENDP					; operator new
_TEXT	ENDS
PUBLIC	??3@YAXPAX@Z					; operator delete
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??3@YAXPAX@Z
_TEXT	SEGMENT
_q$ = -8						; size = 4
___formal$ = 8						; size = 4
??3@YAXPAX@Z PROC					; operator delete, COMDAT
; Line 439
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
; Line 440
	mov	DWORD PTR _q$[ebp], 0
; Line 441
	mov	eax, DWORD PTR _q$[ebp]
	mov	BYTE PTR [eax], 5
; Line 442
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??3@YAXPAX@Z ENDP					; operator delete
_TEXT	ENDS
PUBLIC	?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXXZ@Z ; icu_56::umtx_initOnce
PUBLIC	_u_get_stdout_56
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_get_stdout_56
_TEXT	SEGMENT
_u_get_stdout_56 PROC					; COMDAT
; File d:\mozilla\intl\icu\source\io\uprintf.cpp
; Line 62
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
; Line 63
	push	OFFSET ?u_stdout_init@@YAXXZ		; u_stdout_init
	push	OFFSET _gStdOutInitOnce
	call	?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXXZ@Z ; icu_56::umtx_initOnce
	add	esp, 8
; Line 64
	mov	eax, DWORD PTR _gStdOut
; Line 65
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_get_stdout_56 ENDP
_TEXT	ENDS
PUBLIC	?umtx_loadAcquire@icu_56@@YAHACJ@Z		; icu_56::umtx_loadAcquire
EXTRN	__imp_?umtx_initImplPostInit@icu_56@@YAXAAUUInitOnce@1@@Z:PROC
EXTRN	__imp_?umtx_initImplPreInit@icu_56@@YACAAUUInitOnce@1@@Z:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXXZ@Z
_TEXT	SEGMENT
_uio$ = 8						; size = 4
_fp$ = 12						; size = 4
?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXXZ@Z PROC	; icu_56::umtx_initOnce, COMDAT
; File d:\mozilla\intl\icu\source\common\umutex.h
; Line 245
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
; Line 246
	mov	eax, DWORD PTR _uio$[ebp]
	push	eax
	call	?umtx_loadAcquire@icu_56@@YAHACJ@Z	; icu_56::umtx_loadAcquire
	add	esp, 4
	cmp	eax, 2
	jne	SHORT $LN2@umtx_initO
; Line 247
	jmp	SHORT $LN3@umtx_initO
$LN2@umtx_initO:
; Line 249
	mov	esi, esp
	mov	eax, DWORD PTR _uio$[ebp]
	push	eax
	call	DWORD PTR __imp_?umtx_initImplPreInit@icu_56@@YACAAUUInitOnce@1@@Z
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	movsx	ecx, al
	test	ecx, ecx
	je	SHORT $LN3@umtx_initO
; Line 250
	mov	esi, esp
	call	DWORD PTR _fp$[ebp]
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 251
	mov	esi, esp
	mov	eax, DWORD PTR _uio$[ebp]
	push	eax
	call	DWORD PTR __imp_?umtx_initImplPostInit@icu_56@@YAXAAUUInitOnce@1@@Z
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN3@umtx_initO:
; Line 253
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?umtx_initOnce@icu_56@@YAXAAUUInitOnce@1@P6AXXZ@Z ENDP	; icu_56::umtx_initOnce
_TEXT	ENDS
EXTRN	__imp__InterlockedCompareExchange@12:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?umtx_loadAcquire@icu_56@@YAHACJ@Z
_TEXT	SEGMENT
_var$ = 8						; size = 4
?umtx_loadAcquire@icu_56@@YAHACJ@Z PROC			; icu_56::umtx_loadAcquire, COMDAT
; Line 102
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
; Line 103
	mov	esi, esp
	push	0
	push	0
	mov	eax, DWORD PTR _var$[ebp]
	push	eax
	call	DWORD PTR __imp__InterlockedCompareExchange@12
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 104
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?umtx_loadAcquire@icu_56@@YAHACJ@Z ENDP			; icu_56::umtx_loadAcquire
_TEXT	ENDS
PUBLIC	??_C@_1BK@GCGFFNMK@?$AAg?$AAS?$AAt?$AAd?$AAO?$AAu?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@ ; `string'
PUBLIC	??_C@_1FE@OFCNEBCN@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAi?$AAo?$AA?2?$AAu?$AAp@ ; `string'
PUBLIC	?__LINE__Var@?1??u_stdout_init@@YAXXZ@4JA@f3b85baa ; `u_stdout_init'::`2'::__LINE__Var
EXTRN	_ucln_io_registerCleanup_56:PROC
EXTRN	_u_finit_56:PROC
EXTRN	__imp____iob_func:PROC
EXTRN	__imp___wassert:PROC
;	COMDAT ??_C@_1BK@GCGFFNMK@?$AAg?$AAS?$AAt?$AAd?$AAO?$AAu?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@
; File d:\mozilla\intl\icu\source\io\uprintf.cpp
CONST	SEGMENT
??_C@_1BK@GCGFFNMK@?$AAg?$AAS?$AAt?$AAd?$AAO?$AAu?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@ DB 'g'
	DB	00H, 'S', 00H, 't', 00H, 'd', 00H, 'O', 00H, 'u', 00H, 't', 00H
	DB	' ', 00H, '=', 00H, '=', 00H, ' ', 00H, '0', 00H, 00H, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_1FE@OFCNEBCN@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAi?$AAo?$AA?2?$AAu?$AAp@
CONST	SEGMENT
??_C@_1FE@OFCNEBCN@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAi?$AAo?$AA?2?$AAu?$AAp@ DB 'd'
	DB	00H, ':', 00H, '\', 00H, 'm', 00H, 'o', 00H, 'z', 00H, 'i', 00H
	DB	'l', 00H, 'l', 00H, 'a', 00H, '\', 00H, 'i', 00H, 'n', 00H, 't'
	DB	00H, 'l', 00H, '\', 00H, 'i', 00H, 'c', 00H, 'u', 00H, '\', 00H
	DB	's', 00H, 'o', 00H, 'u', 00H, 'r', 00H, 'c', 00H, 'e', 00H, '\'
	DB	00H, 'i', 00H, 'o', 00H, '\', 00H, 'u', 00H, 'p', 00H, 'r', 00H
	DB	'i', 00H, 'n', 00H, 't', 00H, 'f', 00H, '.', 00H, 'c', 00H, 'p'
	DB	00H, 'p', 00H, 00H, 00H			; `string'
CONST	ENDS
;	COMDAT ?__LINE__Var@?1??u_stdout_init@@YAXXZ@4JA@f3b85baa
_DATA	SEGMENT
?__LINE__Var@?1??u_stdout_init@@YAXXZ@4JA@f3b85baa DD 036H ; `u_stdout_init'::`2'::__LINE__Var
; Function compile flags: /Odtp /RTCsu /ZI
_DATA	ENDS
;	COMDAT ?u_stdout_init@@YAXXZ
_TEXT	SEGMENT
?u_stdout_init@@YAXXZ PROC				; u_stdout_init, COMDAT
; Line 54
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
; Line 55
	cmp	DWORD PTR _gStdOut, 0
	je	SHORT $LN3@u_stdout_i
	mov	eax, DWORD PTR ?__LINE__Var@?1??u_stdout_init@@YAXXZ@4JA@f3b85baa
	add	eax, 1
	mov	esi, esp
	push	eax
	push	OFFSET ??_C@_1FE@OFCNEBCN@?$AAd?$AA?3?$AA?2?$AAm?$AAo?$AAz?$AAi?$AAl?$AAl?$AAa?$AA?2?$AAi?$AAn?$AAt?$AAl?$AA?2?$AAi?$AAc?$AAu?$AA?2?$AAs?$AAo?$AAu?$AAr?$AAc?$AAe?$AA?2?$AAi?$AAo?$AA?2?$AAu?$AAp@
	push	OFFSET ??_C@_1BK@GCGFFNMK@?$AAg?$AAS?$AAt?$AAd?$AAO?$AAu?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@
	call	DWORD PTR __imp___wassert
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN3@u_stdout_i:
; Line 56
	push	0
	push	0
	mov	esi, esp
	call	DWORD PTR __imp____iob_func
	cmp	esi, esp
	call	__RTC_CheckEsp
	add	eax, 32					; 00000020H
	push	eax
	call	_u_finit_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _gStdOut, eax
; Line 57
	push	OFFSET ?uprintf_cleanup@@YACXZ		; uprintf_cleanup
	push	1
	call	_ucln_io_registerCleanup_56
	add	esp, 8
; Line 58
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?u_stdout_init@@YAXXZ ENDP				; u_stdout_init
_TEXT	ENDS
PUBLIC	?reset@UInitOnce@icu_56@@QAEXXZ			; icu_56::UInitOnce::reset
EXTRN	_u_fclose_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?uprintf_cleanup@@YACXZ
_TEXT	SEGMENT
?uprintf_cleanup@@YACXZ PROC				; uprintf_cleanup, COMDAT
; Line 45
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
; Line 46
	cmp	DWORD PTR _gStdOut, 0
	je	SHORT $LN1@uprintf_cl
; Line 47
	mov	eax, DWORD PTR _gStdOut
	push	eax
	call	_u_fclose_56
	add	esp, 4
; Line 48
	mov	DWORD PTR _gStdOut, 0
$LN1@uprintf_cl:
; Line 50
	mov	ecx, OFFSET _gStdOutInitOnce
	call	?reset@UInitOnce@icu_56@@QAEXXZ		; icu_56::UInitOnce::reset
; Line 51
	mov	al, 1
; Line 52
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?uprintf_cleanup@@YACXZ ENDP				; uprintf_cleanup
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?reset@UInitOnce@icu_56@@QAEXXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?reset@UInitOnce@icu_56@@QAEXXZ PROC			; icu_56::UInitOnce::reset, COMDAT
; _this$ = ecx
; File d:\mozilla\intl\icu\source\common\umutex.h
; Line 220
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?reset@UInitOnce@icu_56@@QAEXXZ ENDP			; icu_56::UInitOnce::reset
_TEXT	ENDS
EXTRN	_u_file_write_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?u_printf_write@@YAHPAXPB_WH@Z
_TEXT	SEGMENT
_context$ = 8						; size = 4
_str$ = 12						; size = 4
_count$ = 16						; size = 4
?u_printf_write@@YAHPAXPB_WH@Z PROC			; u_printf_write, COMDAT
; File d:\mozilla\intl\icu\source\io\uprintf.cpp
; Line 71
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
; Line 72
	mov	eax, DWORD PTR _context$[ebp]
	push	eax
	mov	ecx, DWORD PTR _count$[ebp]
	push	ecx
	mov	edx, DWORD PTR _str$[ebp]
	push	edx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
; Line 73
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?u_printf_write@@YAHPAXPB_WH@Z ENDP			; u_printf_write
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?u_printf_pad_and_justify@@YAHPAXPBUu_printf_spec_info@@PB_WH@Z
_TEXT	SEGMENT
_i$ = -32						; size = 4
_written$ = -20						; size = 4
_output$ = -8						; size = 4
_context$ = 8						; size = 4
_info$ = 12						; size = 4
_result$ = 16						; size = 4
_resultLen$ = 20					; size = 4
?u_printf_pad_and_justify@@YAHPAXPBUu_printf_spec_info@@PB_WH@Z PROC ; u_printf_pad_and_justify, COMDAT
; Line 80
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 81
	mov	eax, DWORD PTR _context$[ebp]
	mov	DWORD PTR _output$[ebp], eax
; Line 85
	mov	eax, DWORD PTR _info$[ebp]
	cmp	DWORD PTR [eax+4], -1
	je	$LN10@u_printf_p
	mov	eax, DWORD PTR _info$[ebp]
	mov	ecx, DWORD PTR _resultLen$[ebp]
	cmp	ecx, DWORD PTR [eax+4]
	jge	$LN10@u_printf_p
; Line 87
	mov	eax, DWORD PTR _info$[ebp]
	movsx	ecx, BYTE PTR [eax+16]
	test	ecx, ecx
	je	SHORT $LN9@u_printf_p
; Line 88
	mov	eax, DWORD PTR _output$[ebp]
	push	eax
	mov	ecx, DWORD PTR _resultLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _result$[ebp]
	push	edx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _written$[ebp], eax
; Line 89
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN8@u_printf_p
$LN7@u_printf_p:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN8@u_printf_p:
	mov	eax, DWORD PTR _info$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	sub	ecx, DWORD PTR _resultLen$[ebp]
	cmp	DWORD PTR _i$[ebp], ecx
	jge	SHORT $LN6@u_printf_p
; Line 90
	mov	eax, DWORD PTR _output$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _info$[ebp]
	add	ecx, 12					; 0000000cH
	push	ecx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
	add	eax, DWORD PTR _written$[ebp]
	mov	DWORD PTR _written$[ebp], eax
; Line 91
	jmp	SHORT $LN7@u_printf_p
$LN6@u_printf_p:
; Line 94
	jmp	SHORT $LN5@u_printf_p
$LN9@u_printf_p:
; Line 95
	mov	DWORD PTR _written$[ebp], 0
; Line 96
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN4@u_printf_p
$LN3@u_printf_p:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN4@u_printf_p:
	mov	eax, DWORD PTR _info$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	sub	ecx, DWORD PTR _resultLen$[ebp]
	cmp	DWORD PTR _i$[ebp], ecx
	jge	SHORT $LN2@u_printf_p
; Line 97
	mov	eax, DWORD PTR _output$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _info$[ebp]
	add	ecx, 12					; 0000000cH
	push	ecx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
	add	eax, DWORD PTR _written$[ebp]
	mov	DWORD PTR _written$[ebp], eax
; Line 98
	jmp	SHORT $LN3@u_printf_p
$LN2@u_printf_p:
; Line 99
	mov	eax, DWORD PTR _output$[ebp]
	push	eax
	mov	ecx, DWORD PTR _resultLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _result$[ebp]
	push	edx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
	add	eax, DWORD PTR _written$[ebp]
	mov	DWORD PTR _written$[ebp], eax
$LN5@u_printf_p:
; Line 103
	jmp	SHORT $LN1@u_printf_p
$LN10@u_printf_p:
; Line 104
	mov	eax, DWORD PTR _output$[ebp]
	push	eax
	mov	ecx, DWORD PTR _resultLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _result$[ebp]
	push	edx
	call	_u_file_write_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _written$[ebp], eax
$LN1@u_printf_p:
; Line 107
	mov	eax, DWORD PTR _written$[ebp]
; Line 108
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?u_printf_pad_and_justify@@YAHPAXPBUu_printf_spec_info@@PB_WH@Z ENDP ; u_printf_pad_and_justify
_TEXT	ENDS
PUBLIC	_u_vfprintf_56
PUBLIC	_u_fprintf_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_fprintf_56
_TEXT	SEGMENT
_count$ = -20						; size = 4
_ap$ = -8						; size = 4
_f$ = 8							; size = 4
_patternSpecification$ = 12				; size = 4
_u_fprintf_56 PROC					; COMDAT
; Line 114
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
; Line 118
	lea	eax, DWORD PTR _patternSpecification$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax
; Line 119
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _patternSpecification$[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$[ebp]
	push	edx
	call	_u_vfprintf_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _count$[ebp], eax
; Line 120
	mov	DWORD PTR _ap$[ebp], 0
; Line 122
	mov	eax, DWORD PTR _count$[ebp]
; Line 123
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_fprintf_56 ENDP
_TEXT	ENDS
PUBLIC	_u_printf_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_printf_56
_TEXT	SEGMENT
_count$ = -20						; size = 4
_ap$ = -8						; size = 4
_patternSpecification$ = 8				; size = 4
_u_printf_56 PROC					; COMDAT
; Line 128
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
; Line 131
	lea	eax, DWORD PTR _patternSpecification$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax
; Line 132
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _patternSpecification$[ebp]
	push	ecx
	call	_u_get_stdout_56
	push	eax
	call	_u_vfprintf_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _count$[ebp], eax
; Line 133
	mov	DWORD PTR _ap$[ebp], 0
; Line 134
	mov	eax, DWORD PTR _count$[ebp]
; Line 135
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_printf_56 ENDP
_TEXT	ENDS
PUBLIC	_u_vfprintf_u_56
PUBLIC	_u_fprintf_u_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_fprintf_u_56
_TEXT	SEGMENT
_count$ = -20						; size = 4
_ap$ = -8						; size = 4
_f$ = 8							; size = 4
_patternSpecification$ = 12				; size = 4
_u_fprintf_u_56 PROC					; COMDAT
; Line 141
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
; Line 145
	lea	eax, DWORD PTR _patternSpecification$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax
; Line 146
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _patternSpecification$[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$[ebp]
	push	edx
	call	_u_vfprintf_u_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _count$[ebp], eax
; Line 147
	mov	DWORD PTR _ap$[ebp], 0
; Line 149
	mov	eax, DWORD PTR _count$[ebp]
; Line 150
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_fprintf_u_56 ENDP
_TEXT	ENDS
PUBLIC	_u_printf_u_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_printf_u_56
_TEXT	SEGMENT
_count$ = -20						; size = 4
_ap$ = -8						; size = 4
_patternSpecification$ = 8				; size = 4
_u_printf_u_56 PROC					; COMDAT
; Line 155
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
; Line 158
	lea	eax, DWORD PTR _patternSpecification$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax
; Line 159
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _patternSpecification$[ebp]
	push	ecx
	call	_u_get_stdout_56
	push	eax
	call	_u_vfprintf_u_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _count$[ebp], eax
; Line 160
	mov	DWORD PTR _ap$[ebp], 0
; Line 161
	mov	eax, DWORD PTR _count$[ebp]
; Line 162
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_printf_u_56 ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_uprv_free_56:PROC
EXTRN	_u_charsToUChars_56:PROC
EXTRN	_uprv_malloc_56:PROC
EXTRN	_strlen:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_vfprintf_56
_TEXT	SEGMENT
_size$ = -300						; size = 4
_buffer$ = -288						; size = 256
_pattern$ = -24						; size = 4
_count$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_f$ = 8							; size = 4
_patternSpecification$ = 12				; size = 4
_ap$ = 16						; size = 4
_u_vfprintf_56 PROC					; COMDAT
; Line 168
	push	ebp
	mov	ebp, esp
	sub	esp, 496				; 000001f0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-496]
	mov	ecx, 124				; 0000007cH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 172
	mov	eax, DWORD PTR _patternSpecification$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	add	eax, 1
	mov	DWORD PTR _size$[ebp], eax
; Line 175
	cmp	DWORD PTR _size$[ebp], 64		; 00000040H
	jb	SHORT $LN4@u_vfprintf
; Line 176
	mov	eax, DWORD PTR _size$[ebp]
	shl	eax, 1
	push	eax
	call	_uprv_malloc_56
	add	esp, 4
	mov	DWORD PTR _pattern$[ebp], eax
; Line 177
	cmp	DWORD PTR _pattern$[ebp], 0
	jne	SHORT $LN3@u_vfprintf
; Line 178
	xor	eax, eax
	jmp	SHORT $LN5@u_vfprintf
$LN3@u_vfprintf:
; Line 181
	jmp	SHORT $LN2@u_vfprintf
$LN4@u_vfprintf:
; Line 182
	lea	eax, DWORD PTR _buffer$[ebp]
	mov	DWORD PTR _pattern$[ebp], eax
$LN2@u_vfprintf:
; Line 184
	mov	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pattern$[ebp]
	push	ecx
	mov	edx, DWORD PTR _patternSpecification$[ebp]
	push	edx
	call	_u_charsToUChars_56
	add	esp, 12					; 0000000cH
; Line 187
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pattern$[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$[ebp]
	push	edx
	call	_u_vfprintf_u_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _count$[ebp], eax
; Line 190
	mov	eax, DWORD PTR _pattern$[ebp]
	lea	ecx, DWORD PTR _buffer$[ebp]
	cmp	eax, ecx
	je	SHORT $LN1@u_vfprintf
; Line 191
	mov	eax, DWORD PTR _pattern$[ebp]
	push	eax
	call	_uprv_free_56
	add	esp, 4
$LN1@u_vfprintf:
; Line 194
	mov	eax, DWORD PTR _count$[ebp]
$LN5@u_vfprintf:
; Line 195
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@u_vfprintf
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 496				; 000001f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN9@u_vfprintf:
	DD	1
	DD	$LN8@u_vfprintf
$LN8@u_vfprintf:
	DD	-288					; fffffee0H
	DD	256					; 00000100H
	DD	$LN7@u_vfprintf
$LN7@u_vfprintf:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	102					; 00000066H
	DB	101					; 00000065H
	DB	114					; 00000072H
	DB	0
_u_vfprintf_56 ENDP
_TEXT	ENDS
EXTRN	_u_printf_parse_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_vfprintf_u_56
_TEXT	SEGMENT
_written$ = -8						; size = 4
_f$ = 8							; size = 4
_patternSpecification$ = 12				; size = 4
_ap$ = 16						; size = 4
_u_vfprintf_u_56 PROC					; COMDAT
; Line 206
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
; Line 207
	mov	DWORD PTR _written$[ebp], 0
; Line 210
	mov	eax, DWORD PTR _ap$[ebp]
	push	eax
	lea	ecx, DWORD PTR _written$[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$[ebp]
	add	edx, 24					; 00000018H
	push	edx
	push	0
	mov	eax, DWORD PTR _f$[ebp]
	push	eax
	mov	ecx, DWORD PTR _patternSpecification$[ebp]
	push	ecx
	push	OFFSET _g_stream_handler
	call	_u_printf_parse_56
	add	esp, 28					; 0000001cH
; Line 213
	mov	eax, DWORD PTR _written$[ebp]
; Line 214
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@u_vfprintf@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN5@u_vfprintf@2:
	DD	1
	DD	$LN4@u_vfprintf@2
$LN4@u_vfprintf@2:
	DD	-8					; fffffff8H
	DD	4
	DD	$LN3@u_vfprintf@2
$LN3@u_vfprintf@2:
	DB	119					; 00000077H
	DB	114					; 00000072H
	DB	105					; 00000069H
	DB	116					; 00000074H
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	0
_u_vfprintf_u_56 ENDP
_TEXT	ENDS
END