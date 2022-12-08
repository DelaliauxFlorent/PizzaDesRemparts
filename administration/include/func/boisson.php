<?php
require_once('706/log.php');
//connection
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

/////////////////////////////////
// Modifier boisson
/////////////////////////////////

if (isset($_GET['func']) && isset($_GET['id']))
{
	if ($_GET['func']=="modif")
	{
		$SQLQuery_boi_ori = "SELECT * FROM boissons WHERE ID=".$_GET['id'];
		$result_modif = mysql_query($SQLQuery_boi_ori) or die(mysql_error());
		$boi_M = mysql_fetch_array($result_modif, MYSQL_ASSOC);
	}
}

///////////////////////////////////

if (isset($_GET['conf_M']))
{
	$SQLQuery_ori = "SELECT * FROM boissons WHERE ID=".$_GET['id'];
	$result_ori = mysql_query($SQLQuery_ori) or die(mysql_error());
	$boi_ori = mysql_fetch_array($result_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	////////////////////////////////////
	if ($_GET['Type']!=$boi_ori['Type'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$ntype=$_GET['Type'];
		$set.="Type = '".$ntype."'";
		$set_n+=1;
	}
	////////////////////////////////////
	if ($_GET['Nom']!=$boi_ori['Nom'])
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
	if ($_GET['Volume']!=$boi_ori['Volume'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$nvol=$_GET['Volume'];
		$set.="Volume = '".$nvol."'";
		$set_n+=1;
	}
	////////////////////////////////////
	$nprix=$_GET['Prix'];
	$exp1=explode(",",$nprix);
	if (isset($exp1[1]))
	{
		$nprix=implode(".",$exp1);
	}
	if ($nprix!=$boi_ori['Prix'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix = '".$nprix."'";
		$set_n+=1;
	}
	//////
	if ($set_n!=0)
	{
		$update="UPDATE boissons SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToBoisson();
	}
	else
	{
		GoToBoisson();
	}
}
//////////////

////////////////////////////////
// "Créer" une boisson
////////////////////////////////

if (isset($_GET['conf_C']))
{
	$create="INSERT INTO boissons VALUES('', '".$_GET['Type']."', '".$_GET['Nom']."', '".$_GET['Volume']."', '";
	$nprixc=$_GET['Prix'];
	$exp1=explode(",",$nprixc);
	if (isset($exp1[1]))
	{
		$nprixc=implode(".",$exp1);
	}
	$create.=$nprixc."')";
	$result_create=mysql_query($create);
	GoToBoisson();
}

////////////////////////////////
// "Supprimer" une boisson
////////////////////////////////

if (isset($_GET['conf_D']))
{
	$delete="DELETE FROM boissons WHERE ID='".$_GET['id']."'";
	$result_delete=mysql_query($delete);
	GoToBoisson();
}

//////////////

$smarty->assign('bsa',$bsa);
$smarty->assign('rose',$rose);
$smarty->assign('rouge',$rouge);
$smarty->assign('biere',$biere);
$smarty->assign('boi_M',$boi_M);
$smarty->assign('tpl2include','boisson.tpl');

?>