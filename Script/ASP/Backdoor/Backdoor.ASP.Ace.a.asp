<%@ LANGUAGE = VBScript %>
<%Server.ScriptTimeout=5000%>
<html>

<head>
<style TYPE="text/css">
          /* Outline Style Sheet */
          UL UL {display: none; 
                 margin-left: 20pt}
      </style>
<script LANGUAGE="JavaScript">
         function checkParent(src, dest) {
           // Search for a specific parent of the current element
           while (src!=null) {
             if (src.tagName == dest) return src;
             src = src.parentElement;
           }
           return null;
        }
        function outline() {     
           // Expand or collapse if a list item is clicked.
           var open = event.srcElement;
           // Make sure clicked inside an LI. This test allows rich HTML inside lists.
           var el = checkParent(open, "LI");
           if (null!=el) {
             var pos = 0;
             // Search for a nested list
             for (var pos=0; pos<el.children.length; pos++) {
               if ("UL"==el.children[pos].tagName) break;
            }
            if (pos==el.children.length) return;
          } else return;
          el = el.children[pos];
          if ("UL"==el.tagName) {
            // Expand or Collapse nested list
            if (""==el.style.display) {
              el.style.display = "block"; 
              el.style.listStyleImage = "url(images/folder.gif)";
              el.parentElement.style.listStyleImage = "url(images/ofolder.gif)";
            }
          else
          {
              el.style.display = "";
              el.parentElement.style.listStyleImage = "url(images/folder.gif)";
          }
        }
          event.cancelBubble = true;
        }
        document.onclick = outline;
       </script>

<base target="main">
<title>Folders</title>
<link rel="stylesheet" type="text/css" href="ase.css">
</head>

<body topmargin="0" leftmargin="0">

<SCRIPT LANGUAGE=vbscript RUNAT = Server>
    Dim fs, folderpara, folderArray    
    Set fs = CreateObject("Scripting.FileSystemObject")
	if not isempty(request("txtRelative")) then
		folderpara=server.mappath(request("txtRelative"))
	else
		folderpara=request("txtAbsolute")
	end if
    Response.write "<UL>"
    Response.write "<LI STYLE='list-style-image: url(images/folder.gif)'><a href='files.asp?sPath=" & folderpara & "'>" & folderpara & "</a></LI>"
    Call ShowFolderList(folderpara)
    Response.write "</UL>"
    set fs = Nothing

Sub ShowFolderList(folderspec)
    Dim f, f1, fc, s
    Set f = fs.GetFolder(folderspec)
    Set fc = f.SubFolders
    if (not (fc.count = 0)) then
       Response.write "<UL>"
       For Each f1 in fc
       s = f1.name
       If (not ((left (s, 1)) = "_")) then
        Response.write "<li>"
        Response.write "<a href='files.asp?sPath=" & f1 & "'>"
        Response.write s & "</LI>"
        Response.write "</a>"
        Call ShowFolderList((folderspec & "/" & s))
       end if
       Next
       Response.write "</UL>"
    end if
end sub
</SCRIPT>

</body>
</html>