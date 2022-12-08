<?php
require_once('706/log.php');
//connection
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace spéciaux

$string_spec= array('é','É','è','à','ï','ö','î','ô','ü','û','ù');
$string_code= array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

//pizzas perso
$SQLQuery_perso = "SELECT * FROM plats WHERE Base='0' ORDER BY Prix_1P, ID";
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
$SQLQuery_tomate = "SELECT * FROM plats WHERE Base='1' ORDER BY Prix_1P, ID";
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
$SQLQuery_cf = "SELECT * FROM plats WHERE Base='2' ORDER BY Prix_1P, ID";
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
$SQLQuery_fr = "SELECT * FROM plats WHERE Base='3' ORDER BY Prix_1P, ID";
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
$SQLQuery_P = "SELECT * FROM plats WHERE Base='4' ORDER BY Prix_1P, ID";
$result_P = mysql_query($SQLQuery_P) or die(mysql_error());
while ($P_array = mysql_fetch_array($result_P, MYSQL_ASSOC))
{
	$nom=str_replace($string_spec,$string_code,$poi_array['Nom']);
	$poi_array['Nom']=$nom;
	$ing=str_replace($string_spec,$string_code,$poi_array['Ingredient']);
	$poi_array['Ingredient']=$ing;
	$poi[]=$P_array;
}

//////////////////////////////////////////////////
//  Modifier pizza
//////////////////////////////////////////////////

if (isset($_GET['id']) && isset($_GET['func']))
{
	if ($_GET['func']=='modif')
	{
		$SQLQuery_mod = "SELECT * FROM plats WHERE plats.ID=".$_GET['id'];
		$result_mod = mysql_query($SQLQuery_mod) or die(mysql_error());
		$pizza_M = mysql_fetch_array($result_mod, MYSQL_ASSOC);
		$nom_M=str_replace($string_spec,$string_code,$pizza_M['Nom']);
		$pizza_M['Nom']=$nom_M;
		$ing_M=str_replace($string_spec,$string_code,$pizza_M['Ingredient']);
		$pizza_M['Ingredient']=$ing_M;
	}
}

//////////////////////////////////
// Modifier la bdd
//////////////////////////////////

if (isset($_GET['conf_M']))
{
	$SQLQuery_ori = "SELECT * FROM plats WHERE ID=".$_GET['id'];
	$result_ori = mysql_query($SQLQuery_ori) or die(mysql_error());
	$pizza_ori = mysql_fetch_array($result_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	////////////////////////////////////
	if ($_GET['Nom']!=$pizza_ori['Nom'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$nnom=$_GET['Nom'];
		$set.="Nom = '".$nnom."'";
		$set_n+=1;
	}
	////////////////////////////////////
	if ($_GET['Base']!=$pizza_ori['Base'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Base = '".$_GET['Base']."'";
		$set_n+=1;
	}
	////////////////////////////////////
	if ($_GET['Ingredients']!=$pizza_ori['Ingredient'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$ning=$_GET['Ingredients'];
		$set.="Ingredient = '".$ning."'";
		$set_n+=1;
	}
	////////////////////////////////////
	$np1p=$_GET['P1P'];
	$exp1=explode(",",$np1p);
	if (isset($exp1[1]))
	{
		$np1p=implode(".",$exp1);
	}
	if ($np1p!=$pizza_ori['Prix_1p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix_1p = '".$np1p."'";
		$set_n+=1;
	}
	////////////////////////////////////
	$np2p=$_GET['P2P'];
	$exp2=explode(",",$np2p);
	if (isset($exp2[1]))
	{
		$np2p=implode(".",$exp2);
	}
	if ($np2p!=$pizza_ori['Prix_2p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix_2p = '".$np2p."'";
		$set_n+=1;
	}
	////////////////////////////////////
	$np4p=$_GET['P4P'];
	$exp4=explode(",",$np4p);
	if (isset($exp4[1]))
	{
		$np4p=implode(".",$exp4);
	}
	if ($np4p!=$pizza_ori['Prix_4p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix_4p = '".$np4p."'";
		$set_n+=1;
	}
	////////////////////////////////////
	if ($_GET['image']!=$pizza_ori['image'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="image = '".$_GET['image']."'";
		$set_n+=1;
	}
	////////////////////////////////////
	$isnew=0;
	if (isset($_GET['new']))
	{
		if ($_GET['new']=="on")
		{
			$isnew=1;
		}
	}
	if ($isnew!=$pizza_ori['New'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="New = '".$isnew."'";
		$set_n+=1;
	}
	/////////////////////////////////////
	if ($set_n!=0)
	{
		$update="UPDATE plats SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToPizza();
	}
	else
	{
		GoToPizza();
	}
}

////////////////////////////////
// "Créer" une pizza
////////////////////////////////

if (isset($_GET['conf_C']))
{
	$create="INSERT INTO plats VALUES('', '".$_GET['Base']."', '".$_GET['Nom']."', '".$_GET['Ingredients']."', '";
	$np1p=$_GET['P1P'];
	$exp1=explode(",",$np1p);
	if (isset($exp1[1]))
	{
		$np1p=implode(".",$exp1);
	}
	$np2p=$_GET['P2P'];
	$exp2=explode(",",$np2p);
	if (isset($exp2[1]))
	{
		$np2p=implode(".",$exp2);
	}
	$np4p=$_GET['P4P'];
	$exp4=explode(",",$np4p);
	if (isset($exp4[1]))
	{
		$np4p=implode(".",$exp4);
	}
	$create.=$np1p."', '".$np2p."', '".$np4p."', '".$_GET['image']."', '1')";
	$result_create=mysql_query($create);
	GoToPizza();
}

//autres

$smarty->assign('perso',$perso);
$smarty->assign('tomate',$tomate);
$smarty->assign('cremef',$cremef);
$smarty->assign('fr',$fr);
$smarty->assign('poi',$poi);
$smarty->assign('logged',$logged);
$smarty->assign('pizza_M',$pizza_M);
$smarty->assign('tpl2include','pizza.tpl');

?>