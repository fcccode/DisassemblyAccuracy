.data:00000000 ;
.data:00000000 ; +-------------------------------------------------------------------------+
.data:00000000 ; |   This file has been generated by The Interactive Disassembler (IDA)    |
.data:00000000 ; |           Copyright (c) 2015 Hex-Rays, <support@hex-rays.com>           |
.data:00000000 ; |                      License info: 48-3677-7074-51                      |
.data:00000000 ; |             Michalis Polychronakis, Stony Brook University              |
.data:00000000 ; +-------------------------------------------------------------------------+
.data:00000000 ;
.data:00000000 ; Input MD5   : 2684FB165A9C16CA6053C2AE4596540F
.data:00000000 ; Input CRC32 : 86F63DD8
.data:00000000
.data:00000000 ; File Name   : C:\workspace\Putty\windows\VS2010\putty\Debug\version.obj
.data:00000000 ; Format      : COFF (X386MAGIC)
.data:00000000 ; includelib "LIBCMTD"
.data:00000000 ; includelib "OLDNAMES"
.data:00000000
.data:00000000                 .686p
.data:00000000                 .mmx
.data:00000000                 .model flat
.data:00000000
.data:00000000 ; ===========================================================================
.data:00000000
.data:00000000 ; Segment type: Pure data
.data:00000000 ; Segment permissions: Read/Write
.data:00000000 _data           segment dword public 'DATA' use32
.data:00000000                 assume cs:_data
.data:00000000                 public _ver
.data:00000000 _ver            db 'Release 0.64',0
.data:0000000D                 align 10h
.data:00000010                 public _sshver
.data:00000010 _sshver         db 'PuTTY-Release-0.64',0
.data:00000010 _data           ends
.data:00000010
.data:00000010
.data:00000010                 end