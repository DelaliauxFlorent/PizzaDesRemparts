<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);


//////////////
// menus

$SQLQuery_menu = "SELECT * FROM menus ORDER BY Prix";
$result_menu = mysql_query($SQLQuery_menu) or die(mysql_error());
while ($menu_array = mysql_fetch_array($result_menu, MYSQL_ASSOC))
{
	$compo[] = explode('\n',$menu_array[Menu]);
	$menu[]=$menu_array;
}

//autres
$smarty->assign('menu',$menu);
$smarty->assign('compo',$compo);
$smarty->assign('tpl2include','menu.tpl');

?>