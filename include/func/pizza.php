<?php
//connection
require_once('./706/log.php');
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace spéciaux

$string_spec= array('é','É','è','à','ï','ö','î','ô','ü','û','ù');
$string_code= array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

//pizzas perso
$SQLQuery_perso = "SELECT * FROM plats WHERE Base='0'";
$result_perso = mysql_query($SQLQuery_perso) or die(mysql_error());
while ($perso_array = mysql_fetch_array($result_perso, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$perso_array['Nom']);
	$perso_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$perso_array['Ingredient']);
	$perso_array['Ingredient']=$ing;
	$perso[]=$perso_array;
}

//pizzas tomate
$SQLQuery_tomate = "SELECT * FROM plats WHERE Base='1' ORDER BY Prix_1p";
$result_tomate = mysql_query($SQLQuery_tomate) or die(mysql_error());
while ($tomate_array = mysql_fetch_array($result_tomate, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$tomate_array['Nom']);
	$tomate_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$tomate_array['Ingredient']);
	$tomate_array['Ingredient']=$ing;
	$tomate[]=$tomate_array;
}

//pizzas crême fraiche
$SQLQuery_cf = "SELECT * FROM plats WHERE Base='2' ORDER BY Prix_1p";
$result_cf = mysql_query($SQLQuery_cf) or die(mysql_error());
while ($cremef_array = mysql_fetch_array($result_cf, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$cremef_array['Nom']);
	$cremef_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$cremef_array['Ingredient']);
	$cremef_array['Ingredient']=$ing;
	$cremef[]=$cremef_array;
}

//pizzas fromage
$SQLQuery_fr = "SELECT * FROM plats WHERE Base='3' ORDER BY Prix_1p";
$result_fr = mysql_query($SQLQuery_fr) or die(mysql_error());
while ($fr_array = mysql_fetch_array($result_fr, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$fr_array['Nom']);
	$fr_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$fr_array['Ingredient']);
	$fr_array['Ingredient']=$ing;
	$fr[]=$fr_array;
}

//pizzas poisson
$SQLQuery_P = "SELECT * FROM plats WHERE Base='4' ORDER BY Prix_1p";
$result_P = mysql_query($SQLQuery_P) or die(mysql_error());
while ($P_array = mysql_fetch_array($result_P, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$poi_array['Nom']);
	$poi_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$poi_array['Ingredient']);
	$poi_array['Ingredient']=$ing;
	$poi[]=$P_array;
}

// Suppléments
//// Prix

$SQLQuery_psup = "SELECT prix_sup_1p, prix_sup_2p, prix_sup_4p FROM info";
$result_psup = mysql_query($SQLQuery_psup) or die(mysql_error());
$psup = mysql_fetch_array($result_psup, MYSQL_ASSOC);

//// Payants

$SQLQuery_sup = "SELECT * FROM supplements WHERE prix='1'";
$result_sup = mysql_query($SQLQuery_sup) or die(mysql_error());
$sup = str_replace($string_spec,$string_code,mysql_fetch_array($result_sup, MYSQL_ASSOC));

//// Gratuits

$SQLQuery_supg = "SELECT * FROM supplements WHERE prix='0'";
$result_supg = mysql_query($SQLQuery_supg) or die(mysql_error());
$supg = str_replace($string_spec,$string_code,mysql_fetch_array($result_supg, MYSQL_ASSOC));

//print_r($sup);
//autres

$smarty->assign('perso',$perso);
$smarty->assign('tomate',$tomate);
$smarty->assign('cremef',$cremef);
$smarty->assign('fr',$fr);
$smarty->assign('poi',$poi);
$smarty->assign('psup',$psup);
$smarty->assign('sup',$sup);
$smarty->assign('supg',$supg);
$smarty->assign('tpl2include','pizza.tpl');

?>