#pragma once

#include "global.hpp"


class IImpersonate
{
public:
	virtual ~IImpersonate() = default;
	// �������� ������� �� ���������� �������������
	virtual BOOL initialize(LPBYTE lpParameter, SIZE_T dwParamSize) = 0;
	virtual BOOL impersonate() = 0;
	virtual BOOL revert() = 0;
};

namespace sessionimpersonator
{
	struct thrImpersonateParam
	{
		// � ������� ���������� ������ ��� ��� ��������� ������������ ���������� &callbackParam
		blob callbackParam;
		// ����� ������� ��� ������ ����� ������ ������������
		LPTHREAD_START_ROUTINE fnCallback;
		// ���� ������ � TRUE, �� fnCallback ����� ������ ����� �� ���� �������� �� ������������ �� �������� ������
		BOOL bInvokeNoImp;
	};
	

	// ������� ����� �����, ������� ��������������� 
	class ThreadSessionImpersonator : public ::IImpersonate
	{
	public:
		ThreadSessionImpersonator();
		~ThreadSessionImpersonator();

		// lpParameter ���� � thImpersonateParam
		BOOL initialize(LPBYTE lpParameter, SIZE_T dwParamSize);
		// ���� ����� bInvokeNoImp, �� �������� ����� �� fnCallback
		// ����� ���� ��� ����������� �� bInvokeNoImp ������� ����� ����� � ������� ��� ����������
		// ����� ����� ��������� ������������ �� ����� explorer.exe �� ������ ������ � �������� fnCallback ����� �������� ������������
		BOOL impersonate();
		// �� �����������, ��� ��� ��� ������������ ���������� � ����� ������
		BOOL revert();
	private:
		thrImpersonateParam *imParameter;
	};
}