<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace spéciaux

$string_spec=array('é','É','è','à','ï','ö','î','ô','ü','û','ù');
$string_code=array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

//////////////
// cowboys

$SQLQuery_type_cb = "SELECT * FROM types_cb";
$result_type_cb = mysql_query($SQLQuery_type_cb) or die(mysql_error());
while ($type_cb_array = mysql_fetch_array($result_type_cb, MYSQL_ASSOC))
{
	$nomcb[] = explode('***',$type_cb_array[Nom]);
	$type_cb[]=$type_cb_array;
	$SQLQuery_infocb = "SELECT * FROM cowboys WHERE Type='".$type_cb_array['ID']."'";
	$result_infocb = mysql_query($SQLQuery_infocb) or die(mysql_error());
	while ($infocb_array = mysql_fetch_array($result_infocb, MYSQL_ASSOC))
	{
		$infocb[]=$infocb_array;
	}
}

//// garniture

$SQLQuery_sup = "SELECT * FROM supplements WHERE prix='1'";
$result_sup = mysql_query($SQLQuery_sup) or die(mysql_error());
$sup = mysql_fetch_array($result_sup, MYSQL_ASSOC);

///////////////
// Salades

$SQLQuery_sal = "SELECT * FROM plats WHERE base='5'";
$result_sal = mysql_query($SQLQuery_sal) or die(mysql_error());
while ($sal_array = mysql_fetch_array($result_sal, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$sal_array['Nom']);
	$sal_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$sal_array['Ingredient']);
	$sal_array['Ingredient']=$ing;
	$sal[]=$sal_array;
}

///////////////
// Bruschetta

$SQLQuery_bru = "SELECT * FROM plats WHERE base='6'";
$result_bru = mysql_query($SQLQuery_bru) or die(mysql_error());
while ($bru_array = mysql_fetch_array($result_bru, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$bru_array['Nom']);
	$bru_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$bru_array['Ingredient']);
	$bru_array['Ingredient']=$ing;
	$bru[]=$bru_array;
}

///////////////
// lasagne et canapé

$SQLQuery_aut = "SELECT * FROM autres";
$result_aut = mysql_query($SQLQuery_aut) or die(mysql_error());
while ($aut_array = mysql_fetch_array($result_aut, MYSQL_ASSOC))
{
	$aut[]=$aut_array;
}

//autres
//print_r($nomcb);
$smarty->assign('type_cb',$type_cb);
$smarty->assign('nomcb',$nomcb);
$smarty->assign('sup',$sup);
$smarty->assign('infocb',$infocb);
$smarty->assign('sal',$sal);
$smarty->assign('bru',$bru);
$smarty->assign('aut',$aut);
$smarty->assign('tpl2include','autre.tpl');

?>