.text:00000000 ;
.text:00000000 ; +-------------------------------------------------------------------------+
.text:00000000 ; |   This file has been generated by The Interactive Disassembler (IDA)    |
.text:00000000 ; |           Copyright (c) 2015 Hex-Rays, <support@hex-rays.com>           |
.text:00000000 ; |                      License info: 48-3677-7074-51                      |
.text:00000000 ; |             Michalis Polychronakis, Stony Brook University              |
.text:00000000 ; +-------------------------------------------------------------------------+
.text:00000000 ;
.text:00000000 ; Input MD5   : 4B094E506DD5DF8A2F79DA1B8C40A82E
.text:00000000 ; Input CRC32 : A0CC037A
.text:00000000
.text:00000000 ; File Name   : C:\workspace\7z1505-src\CPP\7zip\Bundles\Alone\Debug\Bra.obj
.text:00000000 ; Format      : COFF (X386MAGIC)
.text:00000000 ; includelib "MSVCRTD"
.text:00000000 ; includelib "OLDNAMES"
.text:00000000
.text:00000000                 .686p
.text:00000000                 .mmx
.text:00000000                 .model flat
.text:00000000
.text:00000000 ; ===========================================================================
.text:00000000
.text:00000000 ; Segment type: Pure code
.text:00000000 ; Segment permissions: Read/Execute
.text:00000000 _text           segment para public 'CODE' use32
.text:00000000                 assume cs:_text
.text:00000000                 assume es:nothing, ss:nothing, ds:_rtc$TMZ, fs:nothing, gs:nothing
.text:00000000
.text:00000000 ; =============== S U B R O U T I N E =======================================
.text:00000000
.text:00000000 ; Attributes: bp-based frame
.text:00000000
.text:00000000 ; __stdcall ARM_Convert(x, x, x, x)
.text:00000000                 public _ARM_Convert@16
.text:00000000 _ARM_Convert@16 proc near
.text:00000000
.text:00000000 var_C           = dword ptr -0Ch
.text:00000000 var_8           = dword ptr -8
.text:00000000 var_4           = dword ptr -4
.text:00000000 arg_0           = dword ptr  8
.text:00000000 arg_4           = dword ptr  0Ch
.text:00000000 arg_8           = dword ptr  10h
.text:00000000 arg_C           = dword ptr  14h
.text:00000000
.text:00000000                 push    ebp
.text:00000001                 mov     ebp, esp
.text:00000003                 sub     esp, 0Ch
.text:00000006                 mov     [ebp+var_C], 0CCCCCCCCh
.text:0000000D                 mov     [ebp+var_8], 0CCCCCCCCh
.text:00000014                 mov     [ebp+var_4], 0CCCCCCCCh
.text:0000001B                 cmp     [ebp+arg_4], 4
.text:0000001F                 jnb     short loc_28
.text:00000021                 xor     eax, eax
.text:00000023                 jmp     loc_FD
.text:00000028 ; ---------------------------------------------------------------------------
.text:00000028
.text:00000028 loc_28:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+1Fj
.text:00000028                 mov     eax, [ebp+arg_4]
.text:0000002B                 sub     eax, 4
.text:0000002E                 mov     [ebp+arg_4], eax
.text:00000031                 mov     ecx, [ebp+arg_8]
.text:00000034                 add     ecx, 8
.text:00000037                 mov     [ebp+arg_8], ecx
.text:0000003A                 mov     [ebp+var_4], 0
.text:00000041                 jmp     short loc_4C
.text:00000043 ; ---------------------------------------------------------------------------
.text:00000043
.text:00000043 loc_43:                                 ; CODE XREF: ARM_Convert(x,x,x,x):loc_F5j
.text:00000043                 mov     edx, [ebp+var_4]
.text:00000046                 add     edx, 4
.text:00000049                 mov     [ebp+var_4], edx
.text:0000004C
.text:0000004C loc_4C:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+41j
.text:0000004C                 mov     eax, [ebp+var_4]
.text:0000004F                 cmp     eax, [ebp+arg_4]
.text:00000052                 ja      loc_FA
.text:00000058                 mov     ecx, [ebp+arg_0]
.text:0000005B                 add     ecx, [ebp+var_4]
.text:0000005E                 movzx   edx, byte ptr [ecx+3]
.text:00000062                 cmp     edx, 0EBh ; 'd'
.text:00000068                 jnz     loc_F5
.text:0000006E                 mov     eax, [ebp+arg_0]
.text:00000071                 add     eax, [ebp+var_4]
.text:00000074                 movzx   ecx, byte ptr [eax+2]
.text:00000078                 shl     ecx, 10h
.text:0000007B                 mov     edx, [ebp+arg_0]
.text:0000007E                 add     edx, [ebp+var_4]
.text:00000081                 movzx   eax, byte ptr [edx+1]
.text:00000085                 shl     eax, 8
.text:00000088                 or      ecx, eax
.text:0000008A                 mov     edx, [ebp+arg_0]
.text:0000008D                 add     edx, [ebp+var_4]
.text:00000090                 movzx   eax, byte ptr [edx]
.text:00000093                 or      ecx, eax
.text:00000095                 mov     [ebp+var_C], ecx
.text:00000098                 mov     ecx, [ebp+var_C]
.text:0000009B                 shl     ecx, 2
.text:0000009E                 mov     [ebp+var_C], ecx
.text:000000A1                 cmp     [ebp+arg_C], 0
.text:000000A5                 jz      short loc_B5
.text:000000A7                 mov     edx, [ebp+arg_8]
.text:000000AA                 add     edx, [ebp+var_4]
.text:000000AD                 add     edx, [ebp+var_C]
.text:000000B0                 mov     [ebp+var_8], edx
.text:000000B3                 jmp     short loc_C3
.text:000000B5 ; ---------------------------------------------------------------------------
.text:000000B5
.text:000000B5 loc_B5:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+A5j
.text:000000B5                 mov     eax, [ebp+arg_8]
.text:000000B8                 add     eax, [ebp+var_4]
.text:000000BB                 mov     ecx, [ebp+var_C]
.text:000000BE                 sub     ecx, eax
.text:000000C0                 mov     [ebp+var_8], ecx
.text:000000C3
.text:000000C3 loc_C3:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+B3j
.text:000000C3                 mov     edx, [ebp+var_8]
.text:000000C6                 shr     edx, 2
.text:000000C9                 mov     [ebp+var_8], edx
.text:000000CC                 mov     eax, [ebp+var_8]
.text:000000CF                 shr     eax, 10h
.text:000000D2                 mov     ecx, [ebp+arg_0]
.text:000000D5                 add     ecx, [ebp+var_4]
.text:000000D8                 mov     [ecx+2], al
.text:000000DB                 mov     edx, [ebp+var_8]
.text:000000DE                 shr     edx, 8
.text:000000E1                 mov     eax, [ebp+arg_0]
.text:000000E4                 add     eax, [ebp+var_4]
.text:000000E7                 mov     [eax+1], dl
.text:000000EA                 mov     ecx, [ebp+arg_0]
.text:000000ED                 add     ecx, [ebp+var_4]
.text:000000F0                 mov     dl, byte ptr [ebp+var_8]
.text:000000F3                 mov     [ecx], dl
.text:000000F5
.text:000000F5 loc_F5:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+68j
.text:000000F5                 jmp     loc_43
.text:000000FA ; ---------------------------------------------------------------------------
.text:000000FA
.text:000000FA loc_FA:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+52j
.text:000000FA                 mov     eax, [ebp+var_4]
.text:000000FD
.text:000000FD loc_FD:                                 ; CODE XREF: ARM_Convert(x,x,x,x)+23j
.text:000000FD                 mov     esp, ebp
.text:000000FF                 pop     ebp
.text:00000100                 retn    10h
.text:00000100 _ARM_Convert@16 endp
.text:00000100
.text:00000100 ; ---------------------------------------------------------------------------
.text:00000103                 align 10h
.text:00000110
.text:00000110 ; =============== S U B R O U T I N E =======================================
.text:00000110
.text:00000110 ; Attributes: bp-based frame
.text:00000110
.text:00000110 ; __stdcall ARMT_Convert(x, x, x, x)
.text:00000110                 public _ARMT_Convert@16
.text:00000110 _ARMT_Convert@16 proc near
.text:00000110
.text:00000110 var_C           = dword ptr -0Ch
.text:00000110 var_8           = dword ptr -8
.text:00000110 var_4           = dword ptr -4
.text:00000110 arg_0           = dword ptr  8
.text:00000110 arg_4           = dword ptr  0Ch
.text:00000110 arg_8           = dword ptr  10h
.text:00000110 arg_C           = dword ptr  14h
.text:00000110
.text:00000110                 push    ebp
.text:00000111                 mov     ebp, esp
.text:00000113                 sub     esp, 0Ch
.text:00000116                 mov     [ebp+var_C], 0CCCCCCCCh
.text:0000011D                 mov     [ebp+var_8], 0CCCCCCCCh
.text:00000124                 mov     [ebp+var_4], 0CCCCCCCCh
.text:0000012B                 cmp     [ebp+arg_4], 4
.text:0000012F                 jnb     short loc_138
.text:00000131                 xor     eax, eax
.text:00000133                 jmp     loc_26B
.text:00000138 ; ---------------------------------------------------------------------------
.text:00000138
.text:00000138 loc_138:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+1Fj
.text:00000138                 mov     eax, [ebp+arg_4]
.text:0000013B                 sub     eax, 4
.text:0000013E                 mov     [ebp+arg_4], eax
.text:00000141                 mov     ecx, [ebp+arg_8]
.text:00000144                 add     ecx, 4
.text:00000147                 mov     [ebp+arg_8], ecx
.text:0000014A                 mov     [ebp+var_4], 0
.text:00000151                 jmp     short loc_15C
.text:00000153 ; ---------------------------------------------------------------------------
.text:00000153
.text:00000153 loc_153:                                ; CODE XREF: ARMT_Convert(x,x,x,x):loc_263j
.text:00000153                 mov     edx, [ebp+var_4]
.text:00000156                 add     edx, 2
.text:00000159                 mov     [ebp+var_4], edx
.text:0000015C
.text:0000015C loc_15C:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+41j
.text:0000015C                 mov     eax, [ebp+var_4]
.text:0000015F                 cmp     eax, [ebp+arg_4]
.text:00000162                 ja      loc_268
.text:00000168                 mov     ecx, [ebp+arg_0]
.text:0000016B                 add     ecx, [ebp+var_4]
.text:0000016E                 movzx   edx, byte ptr [ecx+1]
.text:00000172                 and     edx, 0F8h
.text:00000178                 cmp     edx, 0F0h ; '='
.text:0000017E                 jnz     loc_263
.text:00000184                 mov     eax, [ebp+arg_0]
.text:00000187                 add     eax, [ebp+var_4]
.text:0000018A                 movzx   ecx, byte ptr [eax+3]
.text:0000018E                 and     ecx, 0F8h
.text:00000194                 cmp     ecx, 0F8h ; '°'
.text:0000019A                 jnz     loc_263
.text:000001A0                 mov     edx, [ebp+arg_0]
.text:000001A3                 add     edx, [ebp+var_4]
.text:000001A6                 movzx   eax, byte ptr [edx+1]
.text:000001AA                 and     eax, 7
.text:000001AD                 shl     eax, 13h
.text:000001B0                 mov     ecx, [ebp+arg_0]
.text:000001B3                 add     ecx, [ebp+var_4]
.text:000001B6                 movzx   edx, byte ptr [ecx]
.text:000001B9                 shl     edx, 0Bh
.text:000001BC                 or      eax, edx
.text:000001BE                 mov     ecx, [ebp+arg_0]
.text:000001C1                 add     ecx, [ebp+var_4]
.text:000001C4                 movzx   edx, byte ptr [ecx+3]
.text:000001C8                 and     edx, 7
.text:000001CB                 shl     edx, 8
.text:000001CE                 or      eax, edx
.text:000001D0                 mov     ecx, [ebp+arg_0]
.text:000001D3                 add     ecx, [ebp+var_4]
.text:000001D6                 movzx   edx, byte ptr [ecx+2]
.text:000001DA                 or      eax, edx
.text:000001DC                 mov     [ebp+var_C], eax
.text:000001DF                 mov     eax, [ebp+var_C]
.text:000001E2                 shl     eax, 1
.text:000001E4                 mov     [ebp+var_C], eax
.text:000001E7                 cmp     [ebp+arg_C], 0
.text:000001EB                 jz      short loc_1FB
.text:000001ED                 mov     ecx, [ebp+arg_8]
.text:000001F0                 add     ecx, [ebp+var_4]
.text:000001F3                 add     ecx, [ebp+var_C]
.text:000001F6                 mov     [ebp+var_8], ecx
.text:000001F9                 jmp     short loc_209
.text:000001FB ; ---------------------------------------------------------------------------
.text:000001FB
.text:000001FB loc_1FB:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+DBj
.text:000001FB                 mov     edx, [ebp+arg_8]
.text:000001FE                 add     edx, [ebp+var_4]
.text:00000201                 mov     eax, [ebp+var_C]
.text:00000204                 sub     eax, edx
.text:00000206                 mov     [ebp+var_8], eax
.text:00000209
.text:00000209 loc_209:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+E9j
.text:00000209                 mov     ecx, [ebp+var_8]
.text:0000020C                 shr     ecx, 1
.text:0000020E                 mov     [ebp+var_8], ecx
.text:00000211                 mov     edx, [ebp+var_8]
.text:00000214                 shr     edx, 13h
.text:00000217                 and     edx, 7
.text:0000021A                 or      edx, 0F0h
.text:00000220                 mov     eax, [ebp+arg_0]
.text:00000223                 add     eax, [ebp+var_4]
.text:00000226                 mov     [eax+1], dl
.text:00000229                 mov     ecx, [ebp+var_8]
.text:0000022C                 shr     ecx, 0Bh
.text:0000022F                 mov     edx, [ebp+arg_0]
.text:00000232                 add     edx, [ebp+var_4]
.text:00000235                 mov     [edx], cl
.text:00000237                 mov     eax, [ebp+var_8]
.text:0000023A                 shr     eax, 8
.text:0000023D                 and     eax, 7
.text:00000240                 or      eax, 0F8h
.text:00000245                 mov     ecx, [ebp+arg_0]
.text:00000248                 add     ecx, [ebp+var_4]
.text:0000024B                 mov     [ecx+3], al
.text:0000024E                 mov     edx, [ebp+arg_0]
.text:00000251                 add     edx, [ebp+var_4]
.text:00000254                 mov     al, byte ptr [ebp+var_8]
.text:00000257                 mov     [edx+2], al
.text:0000025A                 mov     ecx, [ebp+var_4]
.text:0000025D                 add     ecx, 2
.text:00000260                 mov     [ebp+var_4], ecx
.text:00000263
.text:00000263 loc_263:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+6Ej
.text:00000263                                         ; ARMT_Convert(x,x,x,x)+8Aj
.text:00000263                 jmp     loc_153
.text:00000268 ; ---------------------------------------------------------------------------
.text:00000268
.text:00000268 loc_268:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+52j
.text:00000268                 mov     eax, [ebp+var_4]
.text:0000026B
.text:0000026B loc_26B:                                ; CODE XREF: ARMT_Convert(x,x,x,x)+23j
.text:0000026B                 mov     esp, ebp
.text:0000026D                 pop     ebp
.text:0000026E                 retn    10h
.text:0000026E _ARMT_Convert@16 endp
.text:0000026E
.text:0000026E ; ---------------------------------------------------------------------------
.text:00000271                 align 10h
.text:00000280
.text:00000280 ; =============== S U B R O U T I N E =======================================
.text:00000280
.text:00000280 ; Attributes: bp-based frame
.text:00000280
.text:00000280 ; __stdcall PPC_Convert(x, x, x, x)
.text:00000280                 public _PPC_Convert@16
.text:00000280 _PPC_Convert@16 proc near
.text:00000280
.text:00000280 var_C           = dword ptr -0Ch
.text:00000280 var_8           = dword ptr -8
.text:00000280 var_4           = dword ptr -4
.text:00000280 arg_0           = dword ptr  8
.text:00000280 arg_4           = dword ptr  0Ch
.text:00000280 arg_8           = dword ptr  10h
.text:00000280 arg_C           = dword ptr  14h
.text:00000280
.text:00000280                 push    ebp
.text:00000281                 mov     ebp, esp
.text:00000283                 sub     esp, 0Ch
.text:00000286                 mov     [ebp+var_C], 0CCCCCCCCh
.text:0000028D                 mov     [ebp+var_8], 0CCCCCCCCh
.text:00000294                 mov     [ebp+var_4], 0CCCCCCCCh
.text:0000029B                 cmp     [ebp+arg_4], 4
.text:0000029F                 jnb     short loc_2A8
.text:000002A1                 xor     eax, eax
.text:000002A3                 jmp     loc_3C1
.text:000002A8 ; ---------------------------------------------------------------------------
.text:000002A8
.text:000002A8 loc_2A8:                                ; CODE XREF: PPC_Convert(x,x,x,x)+1Fj
.text:000002A8                 mov     eax, [ebp+arg_4]
.text:000002AB                 sub     eax, 4
.text:000002AE                 mov     [ebp+arg_4], eax
.text:000002B1                 mov     [ebp+var_4], 0
.text:000002B8                 jmp     short loc_2C3
.text:000002BA ; ---------------------------------------------------------------------------
.text:000002BA
.text:000002BA loc_2BA:                                ; CODE XREF: PPC_Convert(x,x,x,x):loc_3B9j
.text:000002BA                 mov     ecx, [ebp+var_4]
.text:000002BD                 add     ecx, 4
.text:000002C0                 mov     [ebp+var_4], ecx
.text:000002C3
.text:000002C3 loc_2C3:                                ; CODE XREF: PPC_Convert(x,x,x,x)+38j
.text:000002C3                 mov     edx, [ebp+var_4]
.text:000002C6                 cmp     edx, [ebp+arg_4]
.text:000002C9                 ja      loc_3BE
.text:000002CF                 mov     eax, [ebp+arg_0]
.text:000002D2                 add     eax, [ebp+var_4]
.text:000002D5                 movzx   ecx, byte ptr [eax]
.text:000002D8                 sar     ecx, 2
.text:000002DB                 cmp     ecx, 12h
.text:000002DE                 jnz     loc_3B9
.text:000002E4                 mov     edx, [ebp+arg_0]
.text:000002E7                 add     edx, [ebp+var_4]
.text:000002EA                 movzx   eax, byte ptr [edx+3]
.text:000002EE                 and     eax, 3
.text:000002F1                 cmp     eax, 1
.text:000002F4                 jnz     loc_3B9
.text:000002FA                 mov     ecx, [ebp+arg_0]
.text:000002FD                 add     ecx, [ebp+var_4]
.text:00000300                 movzx   edx, byte ptr [ecx]
.text:00000303                 and     edx, 3
.text:00000306                 shl     edx, 18h
.text:00000309                 mov     eax, [ebp+arg_0]
.text:0000030C                 add     eax, [ebp+var_4]
.text:0000030F                 movzx   ecx, byte ptr [eax+1]
.text:00000313                 shl     ecx, 10h
.text:00000316                 or      edx, ecx
.text:00000318                 mov     eax, [ebp+arg_0]
.text:0000031B                 add     eax, [ebp+var_4]
.text:0000031E                 movzx   ecx, byte ptr [eax+2]
.text:00000322                 shl     ecx, 8
.text:00000325                 or      edx, ecx
.text:00000327                 mov     eax, [ebp+arg_0]
.text:0000032A                 add     eax, [ebp+var_4]
.text:0000032D                 movzx   ecx, byte ptr [eax+3]
.text:00000331                 and     ecx, 0FFFFFFFCh
.text:00000334                 or      edx, ecx
.text:00000336                 mov     [ebp+var_8], edx
.text:00000339                 cmp     [ebp+arg_C], 0
.text:0000033D                 jz      short loc_34D
.text:0000033F                 mov     edx, [ebp+arg_8]
.text:00000342                 add     edx, [ebp+var_4]
.text:00000345                 add     edx, [ebp+var_8]
.text:00000348                 mov     [ebp+var_C], edx
.text:0000034B                 jmp     short loc_35B
.text:0000034D ; ---------------------------------------------------------------------------
.text:0000034D
.text:0000034D loc_34D:                                ; CODE XREF: PPC_Convert(x,x,x,x)+BDj
.text:0000034D                 mov     eax, [ebp+arg_8]
.text:00000350                 add     eax, [ebp+var_4]
.text:00000353                 mov     ecx, [ebp+var_8]
.text:00000356                 sub     ecx, eax
.text:00000358                 mov     [ebp+var_C], ecx
.text:0000035B
.text:0000035B loc_35B:                                ; CODE XREF: PPC_Convert(x,x,x,x)+CBj
.text:0000035B                 mov     edx, [ebp+var_C]
.text:0000035E                 shr     edx, 18h
.text:00000361                 and     edx, 3
.text:00000364                 or      edx, 48h
.text:00000367                 mov     eax, [ebp+arg_0]
.text:0000036A                 add     eax, [ebp+var_4]
.text:0000036D                 mov     [eax], dl
.text:0000036F                 mov     ecx, [ebp+var_C]
.text:00000372                 shr     ecx, 10h
.text:00000375                 mov     edx, [ebp+arg_0]
.text:00000378                 add     edx, [ebp+var_4]
.text:0000037B                 mov     [edx+1], cl
.text:0000037E                 mov     eax, [ebp+var_C]
.text:00000381                 shr     eax, 8
.text:00000384                 mov     ecx, [ebp+arg_0]
.text:00000387                 add     ecx, [ebp+var_4]
.text:0000038A                 mov     [ecx+2], al
.text:0000038D                 mov     edx, [ebp+arg_0]
.text:00000390                 add     edx, [ebp+var_4]
.text:00000393                 movzx   eax, byte ptr [edx+3]
.text:00000397                 and     eax, 3
.text:0000039A                 mov     ecx, [ebp+arg_0]
.text:0000039D                 add     ecx, [ebp+var_4]
.text:000003A0                 mov     [ecx+3], al
.text:000003A3                 mov     edx, [ebp+arg_0]
.text:000003A6                 add     edx, [ebp+var_4]
.text:000003A9                 movzx   eax, byte ptr [edx+3]
.text:000003AD                 or      eax, [ebp+var_C]
.text:000003B0                 mov     ecx, [ebp+arg_0]
.text:000003B3                 add     ecx, [ebp+var_4]
.text:000003B6                 mov     [ecx+3], al
.text:000003B9
.text:000003B9 loc_3B9:                                ; CODE XREF: PPC_Convert(x,x,x,x)+5Ej
.text:000003B9                                         ; PPC_Convert(x,x,x,x)+74j
.text:000003B9                 jmp     loc_2BA
.text:000003BE ; ---------------------------------------------------------------------------
.text:000003BE
.text:000003BE loc_3BE:                                ; CODE XREF: PPC_Convert(x,x,x,x)+49j
.text:000003BE                 mov     eax, [ebp+var_4]
.text:000003C1
.text:000003C1 loc_3C1:                                ; CODE XREF: PPC_Convert(x,x,x,x)+23j
.text:000003C1                 mov     esp, ebp
.text:000003C3                 pop     ebp
.text:000003C4                 retn    10h
.text:000003C4 _PPC_Convert@16 endp
.text:000003C4
.text:000003C4 ; ---------------------------------------------------------------------------
.text:000003C7                 align 10h
.text:000003D0
.text:000003D0 ; =============== S U B R O U T I N E =======================================
.text:000003D0
.text:000003D0 ; Attributes: bp-based frame
.text:000003D0
.text:000003D0 ; __stdcall SPARC_Convert(x, x, x, x)
.text:000003D0                 public _SPARC_Convert@16
.text:000003D0 _SPARC_Convert@16 proc near
.text:000003D0
.text:000003D0 var_C           = dword ptr -0Ch
.text:000003D0 var_8           = dword ptr -8
.text:000003D0 var_4           = dword ptr -4
.text:000003D0 arg_0           = dword ptr  8
.text:000003D0 arg_4           = dword ptr  0Ch
.text:000003D0 arg_8           = dword ptr  10h
.text:000003D0 arg_C           = dword ptr  14h
.text:000003D0
.text:000003D0                 push    ebp
.text:000003D1                 mov     ebp, esp
.text:000003D3                 sub     esp, 0Ch
.text:000003D6                 mov     [ebp+var_C], 0CCCCCCCCh
.text:000003DD                 mov     [ebp+var_8], 0CCCCCCCCh
.text:000003E4                 mov     [ebp+var_4], 0CCCCCCCCh
.text:000003EB                 cmp     [ebp+arg_4], 4
.text:000003EF                 jnb     short loc_3F8
.text:000003F1                 xor     eax, eax
.text:000003F3                 jmp     loc_541
.text:000003F8 ; ---------------------------------------------------------------------------
.text:000003F8
.text:000003F8 loc_3F8:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+1Fj
.text:000003F8                 mov     eax, [ebp+arg_4]
.text:000003FB                 sub     eax, 4
.text:000003FE                 mov     [ebp+arg_4], eax
.text:00000401                 mov     [ebp+var_4], 0
.text:00000408                 jmp     short loc_413
.text:0000040A ; ---------------------------------------------------------------------------
.text:0000040A
.text:0000040A loc_40A:                                ; CODE XREF: SPARC_Convert(x,x,x,x):loc_539j
.text:0000040A                 mov     ecx, [ebp+var_4]
.text:0000040D                 add     ecx, 4
.text:00000410                 mov     [ebp+var_4], ecx
.text:00000413
.text:00000413 loc_413:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+38j
.text:00000413                 mov     edx, [ebp+var_4]
.text:00000416                 cmp     edx, [ebp+arg_4]
.text:00000419                 ja      loc_53E
.text:0000041F                 mov     eax, [ebp+arg_0]
.text:00000422                 add     eax, [ebp+var_4]
.text:00000425                 movzx   ecx, byte ptr [eax]
.text:00000428                 cmp     ecx, 40h ; '@'
.text:0000042B                 jnz     short loc_43E
.text:0000042D                 mov     edx, [ebp+arg_0]
.text:00000430                 add     edx, [ebp+var_4]
.text:00000433                 movzx   eax, byte ptr [edx+1]
.text:00000437                 and     eax, 0C0h
.text:0000043C                 jz      short loc_46C
.text:0000043E
.text:0000043E loc_43E:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+5Bj
.text:0000043E                 mov     ecx, [ebp+arg_0]
.text:00000441                 add     ecx, [ebp+var_4]
.text:00000444                 movzx   edx, byte ptr [ecx]
.text:00000447                 cmp     edx, 7Fh ; ''
.text:0000044A                 jnz     loc_539
.text:00000450                 mov     eax, [ebp+arg_0]
.text:00000453                 add     eax, [ebp+var_4]
.text:00000456                 movzx   ecx, byte ptr [eax+1]
.text:0000045A                 and     ecx, 0C0h
.text:00000460                 cmp     ecx, 0C0h ; '+'
.text:00000466                 jnz     loc_539
.text:0000046C
.text:0000046C loc_46C:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+6Cj
.text:0000046C                 mov     edx, [ebp+arg_0]
.text:0000046F                 add     edx, [ebp+var_4]
.text:00000472                 movzx   eax, byte ptr [edx]
.text:00000475                 shl     eax, 18h
.text:00000478                 mov     ecx, [ebp+arg_0]
.text:0000047B                 add     ecx, [ebp+var_4]
.text:0000047E                 movzx   edx, byte ptr [ecx+1]
.text:00000482                 shl     edx, 10h
.text:00000485                 or      eax, edx
.text:00000487                 mov     ecx, [ebp+arg_0]
.text:0000048A                 add     ecx, [ebp+var_4]
.text:0000048D                 movzx   edx, byte ptr [ecx+2]
.text:00000491                 shl     edx, 8
.text:00000494                 or      eax, edx
.text:00000496                 mov     ecx, [ebp+arg_0]
.text:00000499                 add     ecx, [ebp+var_4]
.text:0000049C                 movzx   edx, byte ptr [ecx+3]
.text:000004A0                 or      eax, edx
.text:000004A2                 mov     [ebp+var_8], eax
.text:000004A5                 mov     eax, [ebp+var_8]
.text:000004A8                 shl     eax, 2
.text:000004AB                 mov     [ebp+var_8], eax
.text:000004AE                 cmp     [ebp+arg_C], 0
.text:000004B2                 jz      short loc_4C2
.text:000004B4                 mov     ecx, [ebp+arg_8]
.text:000004B7                 add     ecx, [ebp+var_4]
.text:000004BA                 add     ecx, [ebp+var_8]
.text:000004BD                 mov     [ebp+var_C], ecx
.text:000004C0                 jmp     short loc_4D0
.text:000004C2 ; ---------------------------------------------------------------------------
.text:000004C2
.text:000004C2 loc_4C2:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+E2j
.text:000004C2                 mov     edx, [ebp+arg_8]
.text:000004C5                 add     edx, [ebp+var_4]
.text:000004C8                 mov     eax, [ebp+var_8]
.text:000004CB                 sub     eax, edx
.text:000004CD                 mov     [ebp+var_C], eax
.text:000004D0
.text:000004D0 loc_4D0:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+F0j
.text:000004D0                 mov     ecx, [ebp+var_C]
.text:000004D3                 shr     ecx, 2
.text:000004D6                 mov     [ebp+var_C], ecx
.text:000004D9                 mov     edx, [ebp+var_C]
.text:000004DC                 shr     edx, 16h
.text:000004DF                 and     edx, 1
.text:000004E2                 xor     eax, eax
.text:000004E4                 sub     eax, edx
.text:000004E6                 shl     eax, 16h
.text:000004E9                 and     eax, 3FFFFFFFh
.text:000004EE                 mov     ecx, [ebp+var_C]
.text:000004F1                 and     ecx, 3FFFFFh
.text:000004F7                 or      eax, ecx
.text:000004F9                 or      eax, 40000000h
.text:000004FE                 mov     [ebp+var_C], eax
.text:00000501                 mov     edx, [ebp+var_C]
.text:00000504                 shr     edx, 18h
.text:00000507                 mov     eax, [ebp+arg_0]
.text:0000050A                 add     eax, [ebp+var_4]
.text:0000050D                 mov     [eax], dl
.text:0000050F                 mov     ecx, [ebp+var_C]
.text:00000512                 shr     ecx, 10h
.text:00000515                 mov     edx, [ebp+arg_0]
.text:00000518                 add     edx, [ebp+var_4]
.text:0000051B                 mov     [edx+1], cl
.text:0000051E                 mov     eax, [ebp+var_C]
.text:00000521                 shr     eax, 8
.text:00000524                 mov     ecx, [ebp+arg_0]
.text:00000527                 add     ecx, [ebp+var_4]
.text:0000052A                 mov     [ecx+2], al
.text:0000052D                 mov     edx, [ebp+arg_0]
.text:00000530                 add     edx, [ebp+var_4]
.text:00000533                 mov     al, byte ptr [ebp+var_C]
.text:00000536                 mov     [edx+3], al
.text:00000539
.text:00000539 loc_539:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+7Aj
.text:00000539                                         ; SPARC_Convert(x,x,x,x)+96j
.text:00000539                 jmp     loc_40A
.text:0000053E ; ---------------------------------------------------------------------------
.text:0000053E
.text:0000053E loc_53E:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+49j
.text:0000053E                 mov     eax, [ebp+var_4]
.text:00000541
.text:00000541 loc_541:                                ; CODE XREF: SPARC_Convert(x,x,x,x)+23j
.text:00000541                 mov     esp, ebp
.text:00000543                 pop     ebp
.text:00000544                 retn    10h
.text:00000544 _SPARC_Convert@16 endp
.text:00000544
.text:00000544 ; ---------------------------------------------------------------------------
.text:00000547                 align 4
.text:00000547 _text           ends
.text:00000547
.rtc$TMZ:00000548 ; ===========================================================================
.rtc$TMZ:00000548
.rtc$TMZ:00000548 ; Segment type: Pure data
.rtc$TMZ:00000548 ; Segment permissions: Read
.rtc$TMZ:00000548 _rtc$TMZ        segment dword public 'DATA' use32
.rtc$TMZ:00000548                 assume cs:_rtc$TMZ
.rtc$TMZ:00000548                 ;org 548h
.rtc$TMZ:00000548 ; COMDAT (pick any)
.rtc$TMZ:00000548 __RTC_Shutdown_rtc$TMZ dd offset __RTC_Shutdown
.rtc$TMZ:00000548 _rtc$TMZ        ends
.rtc$TMZ:00000548
.rtc$IMZ:0000054C ; ===========================================================================
.rtc$IMZ:0000054C
.rtc$IMZ:0000054C ; Segment type: Pure data
.rtc$IMZ:0000054C ; Segment permissions: Read
.rtc$IMZ:0000054C _rtc$IMZ        segment dword public 'DATA' use32
.rtc$IMZ:0000054C                 assume cs:_rtc$IMZ
.rtc$IMZ:0000054C                 ;org 54Ch
.rtc$IMZ:0000054C ; COMDAT (pick any)
.rtc$IMZ:0000054C __RTC_InitBase_rtc$IMZ dd offset __RTC_InitBase
.rtc$IMZ:0000054C _rtc$IMZ        ends
.rtc$IMZ:0000054C
UNDEF:00000550 ; ===========================================================================
UNDEF:00000550
UNDEF:00000550 ; Segment type: Externs
UNDEF:00000550 ; UNDEF
UNDEF:00000550                 extrn __RTC_Shutdown:near
UNDEF:00000550                                         ; DATA XREF: .rtc$TMZ:__RTC_Shutdown_rtc$TMZo
UNDEF:00000554                 extrn __RTC_InitBase:near
UNDEF:00000554                                         ; DATA XREF: .rtc$IMZ:__RTC_InitBase_rtc$IMZo
UNDEF:00000554
UNDEF:00000554
UNDEF:00000554                 end