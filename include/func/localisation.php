<?php

require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace spéciaux

$string_spec= array('é','É','è','à','ï','ö','î','ô','ü','û','ù');
$string_code= array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

$SQLQuery_info = "SELECT * FROM info WHERE ID=1";
$result = mysql_query($SQLQuery_info) or die(mysql_error());
$info = mysql_fetch_array($result, MYSQL_ASSOC);
$ou = str_replace($string_spec,$string_code,$info['Adresse']);
$local = explode('\n',$ou);
$smarty->assign('local',$local);
$smarty->assign('tpl2include','localisation.tpl');

?>