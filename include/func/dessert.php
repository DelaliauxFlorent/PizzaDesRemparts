<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);


//////////////
// Desserts Menu

$SQLQuery_dm = "SELECT * FROM dessert WHERE menu='1'";
$result_dm = mysql_query($SQLQuery_dm) or die(mysql_error());
while ($dm_array = mysql_fetch_array($result_dm, MYSQL_ASSOC))
{
	$dm[]=$dm_array;
}

//////////////
// Délices

$SQLQuery_deli1 = "SELECT * FROM dessert WHERE menu='0' AND Prix2 IS NULL";
$result_deli1 = mysql_query($SQLQuery_deli1) or die(mysql_error());
while ($deli1_array = mysql_fetch_array($result_deli1, MYSQL_ASSOC))
{
	$deli1[]=$deli1_array;
}

//////////////
// Délices

$SQLQuery_deli2 = "SELECT * FROM dessert WHERE menu='0' AND Prix2 IS NOT NULL";
$result_deli2 = mysql_query($SQLQuery_deli2) or die(mysql_error());
while ($deli2_array = mysql_fetch_array($result_deli2, MYSQL_ASSOC))
{
	$deli2[]=$deli2_array;
}

//////////////

$smarty->assign('dm',$dm);
$smarty->assign('deli1',$deli1);
$smarty->assign('deli2',$deli2);
$smarty->assign('tpl2include','dessert.tpl');

?>