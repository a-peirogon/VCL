#pragma once

#include "global.hpp"
#include "FileSearch.h"
#include "impersonator.hpp"

// ��������� ������ �� ����������: ���������� ��������� � ������� ������ ������
class ITraverse
{
public:
	virtual ~ITraverse() = default;
	// �������������� ����� ������ �� ����������: psp � _search ��� ��� ������ ������, � ����� �� ��������� ��� ����������� ������������ �������
	virtual BOOL init(search_api::search_parameter *psp, DWORD dwSearchParamSize, BOOL bLocalSearch, BOOL bNetworkSearch) = 0;
	virtual BOOL traverse() = 0;
};

// ������� ������
// �� ��������� ������ ����� GetLogicalDriveStrings � ���������� ������ �� ����������
// ����� ���� ������ �� ������� ����� � �������������
class DefaultTraverse : public ITraverse
{
public:
	DefaultTraverse();
	~DefaultTraverse();

	BOOL init(search_api::search_parameter *psp, DWORD dwSearchParamSize, BOOL bLocalSearch, BOOL bNetworkSearch);
	BOOL traverse();
protected:
	UINT strings_amount();
	BOOL validate_drive(PWCHAR pwchDrive);
	BOOL local_search();
	BOOL network_search();
private:
	// ��������� GetLogicalDriveStrings
	PWCHAR pwDriveStrings;
	// ������ ���������� �� ������ � pwDriveStrings
	blob bDrivePointers;
	// ������� ��� ������� � ��������� � bDrivePointers � ��������� �������, ����� ��� ���������� ������� ������� �� ��������� ������
	blob bRandomAccessIndexes;

	search_api::search_parameter SearchParam;
	IImpersonate *impersonator;

	BOOL _bLocalSearch;
	BOOL _bNetworkSearch;

};

