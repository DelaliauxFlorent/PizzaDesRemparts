<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);


//////////////
// Boissons sans alcool

$SQLQuery_bsa = "SELECT * FROM boissons WHERE Type='1'";// ORDER BY Nom, Volume";
$result_bsa = mysql_query($SQLQuery_bsa) or die(mysql_error());
while ($bsa_array = mysql_fetch_array($result_bsa, MYSQL_ASSOC))
{
	$bsa[]=$bsa_array;
}

//////////////
// Vin rosé

$SQLQuery_rose = "SELECT * FROM boissons WHERE Type='2' ORDER BY Nom, Volume";
$result_rose = mysql_query($SQLQuery_rose) or die(mysql_error());
while ($rose_array = mysql_fetch_array($result_rose, MYSQL_ASSOC))
{
	$rose[]=$rose_array;
}

//////////////
// Vin rouge

$SQLQuery_rouge = "SELECT * FROM boissons WHERE Type='3' ORDER BY Nom, Volume";
$result_rouge = mysql_query($SQLQuery_rouge) or die(mysql_error());
while ($rouge_array = mysql_fetch_array($result_rouge, MYSQL_ASSOC))
{
	$rouge[]=$rouge_array;
}

//////////////
// Bières
$SQLQuery_biere = "SELECT * FROM boissons WHERE Type='4' ORDER BY Nom, Volume";
$result_biere = mysql_query($SQLQuery_biere) or die(mysql_error());
while ($biere_array = mysql_fetch_array($result_biere, MYSQL_ASSOC))
{
	$biere[]=$biere_array;
}

//////////////

$smarty->assign('bsa',$bsa);
$smarty->assign('rose',$rose);
$smarty->assign('rouge',$rouge);
$smarty->assign('biere',$biere);
$smarty->assign('tpl2include','boisson.tpl');

?>