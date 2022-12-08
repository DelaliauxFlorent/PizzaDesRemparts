<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

$mailWebM="webmaster@pizza-des-remparts.fr";

$smarty->assign('mailWebM',$mailWebM);
$smarty->assign('tpl2include','legal.tpl');

?>