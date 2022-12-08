<?php
require_once('706/log.php');
//connection
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////
// menus

$SQLQuery_menu = "SELECT * FROM menus";
$result_menu = mysql_query($SQLQuery_menu) or die(mysql_error());
while ($menu_array = mysql_fetch_array($result_menu, MYSQL_ASSOC))
{
	$menu[]=$menu_array;
}

/////////////////////////////////
// Modifier menu
/////////////////////////////////

if (isset($_GET['func']) && isset($_GET['id']))
{
	if ($_GET['func']=="modif")
	{
		$SQLQuery_dess_ori = "SELECT * FROM menus WHERE ID=".$_GET['id'];
		$result_modif = mysql_query($SQLQuery_dess_ori) or die(mysql_error());
		$menu_M = mysql_fetch_array($result_modif, MYSQL_ASSOC);
	}
}
///////////////////////////////////

if (isset($_GET['conf_M']))
{
	$SQLQuery_ori = "SELECT * FROM menus WHERE ID=".$_GET['id'];
	$result_ori = mysql_query($SQLQuery_ori) or die(mysql_error());
	$menu_ori = mysql_fetch_array($result_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	////////////////////////////////////
	if ($_GET['Nom']!=$menu_ori['Nom'])
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
	$menu=nl2br($_GET['Menu']);
	if ($menu!=$menu_ori['Menu'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Menu = '".$menu."'";
		$set_n+=1;
	}
	//////////////////////////////////
	$nprixc=$_GET['Prix'];
	$exp1=explode(",",$nprixc);
	if (isset($exp1[1]))
	{
		$nprixc=implode(".",$exp1);
	}
	if ($nprixc!=$menu_ori['Prix'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix = '".$nprixc."'";
		$set_n+=1;
	}
	//////////////////////////////////
	$new=0;
	if (isset($_GET['new']))
	{
		if ($_GET['new']=="on")
		{
			$new=1;
		}
	}
	if ($new!=$menu_ori['New'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="New = '".$new."'";
		$set_n+=1;
	}
	//////////////////////////
	if ($set_n!=0)
	{
		$update="UPDATE menus SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToMenu();
	}
	else
	{
		GoToMenu();
	}
}
////////////////////////////////
// "Créer" un menu
////////////////////////////////

if (isset($_GET['conf_C']))
{
	$create="INSERT INTO menus VALUES('', '".$_GET['Nom']."', '";
	$menu=nl2br($_GET['Menu']);
	//$menu=$_GET['Menu'];
	$nprixc=$_GET['Prix'];
	$exp1=explode(",",$nprixc);
	if (isset($exp1[1]))
	{
		$nprixc=implode(".",$exp1);
	}
	$create.=$menu."', '".$nprixc."', '1')";
	//echo $create;
	$result_create=mysql_query($create);
	GoToMenu();
}

//autres
$smarty->assign('menu',$menu);
$smarty->assign('menu_M',$menu_M);
$smarty->assign('tpl2include','menu.tpl');

?>