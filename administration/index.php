<?php

require_once('include/libs/Smarty.class.php');
require_once ('include/func/utils.inc.php');
require_once('706/log.php');
$smarty = new Smarty();

$page_dispo = array (
						"autre"			=> "autre.php",
						"boisson"		=> "boisson.php",
						"desserts"		=> "dessert.php",
						"info"			=> "info.php",
						"menu"			=> "menu.php",
						"pizza"			=> "pizza.php"
						);
						
if (isset($_REQUEST['page']) && array_key_exists($_REQUEST['page'],$page_dispo)) {
	include ('include/func/'.$page_dispo[$_REQUEST['page']]);
}

///////////////////////////////////////////////
// Connexions à la base de données           //
///////////////////////////////////////////////

mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//Infos
$SQLQuery_info = "SELECT * FROM info WHERE ID=1";
$result = mysql_query($SQLQuery_info) or die(mysql_error());
$info = mysql_fetch_array($result, MYSQL_ASSOC);

//livraison
$SQLQuery_livr = "SELECT * FROM livraisons WHERE ID=1";
$result_livr = mysql_query($SQLQuery_livr) or die(mysql_error());
$livr = mysql_fetch_array($result_livr, MYSQL_ASSOC);

//fidélité
$SQLQuery_fidel = "SELECT * FROM fidelite WHERE ID=1";
$result_fidel = mysql_query($SQLQuery_fidel) or die(mysql_error());
$fidel = mysql_fetch_array($result_fidel, MYSQL_ASSOC);

//print_r($fidel);
$test_nav=explode("/",	$_SERVER["HTTP_USER_AGENT"]);
if ($test_nav[0]=="Opera")
{
	$opera=1;
}
 
$smarty->assign('info',$info);
$smarty->assign('horaire',$horaire);
$smarty->assign('livr',$livr);
$smarty->assign('fidel',$fidel);
$smarty->assign('opera',$opera);
$smarty->assign('logged',$logged);
$smarty->assign('session',$_SESSION);
$smarty->display('index.tpl');

?>