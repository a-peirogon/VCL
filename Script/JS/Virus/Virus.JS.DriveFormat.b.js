<?xml version="1.0" encoding="Windows-1251"?>
<AVX VERSION="1.1">
  <VIRUS NAME="Trojan.Script.JS.DriveFormat.B" WILD="0" COMPLETE="0" SIZE="0">
    <COMMON>
      <FAMILY>Trojan.Script.JS.DriveFormat</FAMILY>
      <VIRUS_TYPE>SCRIPT</VIRUS_TYPE>
      <VIRUS_TYPE>DROPPER</VIRUS_TYPE>
      <VIRUS_AUTHOR />
      <EXTRA_INFO />
    </COMMON>
    <INFECT>
      <EXECUTE_TYPE>JS</EXECUTE_TYPE>
      <OS_FAMILY>WINDOWS 9x</OS_FAMILY>
      <OS_FAMILY>WINDOWS NT</OS_FAMILY>
      <EFFECTS_INFO>����� � ������� ������� COM (HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{06290BD5-48AA-11D2-8432-006008C3FBFC}) ��� ��������������� ��������� ����� �������� ������� �� ����� ������-���� "C:\WINDOWS\Start Menu\Programs\�Ұ�\test.hta", � ������� ���������� ��� ������������ � COM-������� (F935DC22-1CF0-11D0-ADB9-00C04FD58A0B - ������ ��������� �������), � ����������� �������������� �������, ����������� �� ������-������.</EFFECTS_INFO>
    </INFECT>
    <CURE />
    <RESEARCH RESEARCHER="Oleg Y. Zykov" DATE_CREATE="02.04.2006" />
    <DETECTION>
      <SIGNATURE TYPE="SCRIPT" GROUP="0" FILE="JS.DriveFormat.b" OFFSET="0" LEVEL="0">
        <PART NUMBER="0"><![CDATA[[PID=3];ID {0};ID "Reset";ID {0};ID "Path";OP SET;STR "C:\\WINDOWS\\Start Menu\\Programs\\�Ұ�\\test.hta";ID {0};ID "Doc";OP SET;STR "<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object><SCRIPT>wsh.Run('start /m format a: /autotest /u');alert('IMPORTANT : Windows is removing unused temporary files.');</";OP PLUS;STR "SCRIPT>";ID {0};ID "write";]]></PART>
      </SIGNATURE>
    </DETECTION>
  </VIRUS>
</AVX>
