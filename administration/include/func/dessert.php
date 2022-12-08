<?php
require_once('706/log.php');
//connection
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

/////////////////////////////////
// Modifier desserts
/////////////////////////////////

if (isset($_GET['func']) && isset($_GET['id']))
{
	if ($_GET['func']=="modif")
	{
		$SQLQuery_dess_ori = "SELECT * FROM dessert WHERE ID=".$_GET['id'];
		$result_modif = mysql_query($SQLQuery_dess_ori) or die(mysql_error());
		$dess_M = mysql_fetch_array($result_modif, MYSQL_ASSOC);
	}
}

///////////////////////////////////

if (isset($_GET['conf_M']))
{
	$SQLQuery_ori = "SELECT * FROM dessert WHERE ID=".$_GET['id'];
	$result_ori = mysql_query($SQLQuery_ori) or die(mysql_error());
	$dess_ori = mysql_fetch_array($result_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	////////////////////////////////////
	if ($_GET['Nom']!=$dess_ori['Nom'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$nnom=$_GET['Nom'];
		$set.="Nom = '".$nnom."'";
		$set_n+=1;
	}
	/////////////////////////////////////
	if ($_GET['Info']!=$dess_ori['info'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="info = '".$_GET['Info']."'";
		$set_n+=1;
	}
	/////////////////////////////////////
	$nprix1=$_GET['Prix1'];
	$exp1=explode(",",$nprix1);
	if (isset($exp1[1]))
	{
		$nprix1=implode(".",$exp1);
	}
	if ($nprix1!=$dess_ori['Prix1'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix1 = '".$nprix1."'";
		$ser_n+=1;
	}
	/////////////////////////////////////
	$nprix2=$_GET['Prix2'];
	$exp2=explode(",",$nprix2);
	if (isset($exp2[1]))
	{
		$nprix2=implode(".",$exp2);
	}
	if ($nprix2!=$dess_ori['Prix2'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix2 = '".$nprix2."'";
		$ser_n+=1;
	}
	/////////////////////////////////////
	$menu=0;
	if (isset($_GET['menu']))
	{
		if ($_GET['menu']=="on")
		{
			$menu=1;
		}
	}
	if ($menu!=$dess_ori['menu'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="menu = '".$menu."'";
		$ser_n+=1;
	}
	/////////////////////
	if ($set_n!=0)
	{
		$update="UPDATE desserts SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToDessert();
	}
	else
	{
		GoToDessert();
	}
}

////////////////////////////////
// "Créer" un dessert
////////////////////////////////

if (isset($_GET['conf_C']))
{
	$create="INSERT INTO dessert VALUES('', '".$_GET['Nom']."', '";
	$nprixc1=$_GET['Prix1'];
	$exp1=explode(",",$nprixc1);
	if (isset($exp1[1]))
	{
		$nprixc=implode(".",$exp1);
	}
	$nprixc2=$_GET['Prix2'];
	$exp2=explode(",",$nprixc2);
	if (isset($exp2[1]))
	{
		$nprixc2=implode(".",$exp2);
	}
	$create.=$nprixc1."', '".$nprixc2."', '".$_GET['Info'];
	$menuc=0;
	if (isset($_GET['menu']))
	{
		if ($_GET['menu']=="on")
		{
			$menuc=1;
		}
	}
	$create.="', '".$menuc."')";
	$result_create=mysql_query($create);
	GoToDessert();
}

////////////////////////////////
// "Supprimer" un dessert
////////////////////////////////

if (isset($_GET['conf_D']))
{
	$delete="DELETE FROM dessert WHERE ID='".$_GET['id']."'";
	$result_delete=mysql_query($delete);
	GoToDessert();
}

/////////////////////////
$smarty->assign('dm',$dm);
$smarty->assign('deli1',$deli1);
$smarty->assign('deli2',$deli2);
$smarty->assign('dess_M',$dess_M);
$smarty->assign('tpl2include','dessert.tpl');

?>