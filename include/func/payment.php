<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace sp�ciaux

$string_spec= array('�','�','�','�','�','�','�','�','�','�','�');
$string_code= array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

//////////////
// Modes de Paiement

$SQLQuery_mop = "SELECT mop FROM info";
$result_mop = mysql_query($SQLQuery_mop) or die(mysql_error());
$mop = str_replace($string_spec,$string_code,mysql_fetch_array($result_mop, MYSQL_ASSOC));

//////////////

$smarty->assign('mop',$mop);
$smarty->assign('tpl2include','payment.tpl');

?>