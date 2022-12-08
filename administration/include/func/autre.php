<?php
require_once('706/log.php');
//connection
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////
// Replace spéciaux

$string_spec= array('é','É','è','à','ï','ö','î','ô','ü','û','ù');
$string_code= array('&eacute;','&Eacute;','&egrave;','&agrave;','&iuml;','&ouml;','&icirc;','&ocirc','&uuml;','&ucirc;','&ugrave;');

//////////////
// cowboys

$SQLQuery_type_cb = "SELECT * FROM types_cb";
$result_type_cb = mysql_query($SQLQuery_type_cb) or die(mysql_error());
while ($type_cb_array = mysql_fetch_array($result_type_cb, MYSQL_ASSOC))
{
	$nomcb[] = explode('***',$type_cb_array['Nom']);
	$type_cb[]=$type_cb_array;
	$SQLQuery_infocb = "SELECT * FROM cowboys WHERE Type='".$type_cb_array['ID']."'";
	$result_infocb = mysql_query($SQLQuery_infocb) or die(mysql_error());
	while ($infocb_array = mysql_fetch_array($result_infocb, MYSQL_ASSOC))
	{
		$infocb[]=$infocb_array;
	}
}

//// garniture

$SQLQuery_gar = "SELECT * FROM supplements WHERE prix='1'";
$result_gar = mysql_query($SQLQuery_gar) or die(mysql_error());
$gar = mysql_fetch_array($result_gar, MYSQL_ASSOC);

//// garniture gratuite

$SQLQuery_garg = "SELECT * FROM supplements WHERE prix='0'";
$result_garg = mysql_query($SQLQuery_garg) or die(mysql_error());
$garg = mysql_fetch_array($result_garg, MYSQL_ASSOC);

///////////////
// Salades

$SQLQuery_sal = "SELECT * FROM plats WHERE Base='5'";
$result_sal = mysql_query($SQLQuery_sal) or die(mysql_error());
while ($sal_array = mysql_fetch_array($result_sal, MYSQL_ASSOC))
{
	$sal[]=$sal_array;
}

///////////////
// Bruschetta

$SQLQuery_bru = "SELECT * FROM plats WHERE Base='6'";
$result_bru = mysql_query($SQLQuery_bru) or die(mysql_error());
while ($bru_array = mysql_fetch_array($result_bru, MYSQL_ASSOC))
{
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

///////////////////
// Modifier

if (isset($_GET['func']))
{
	if ($_GET['func']=="modif_p")
	{
		$SQLQuery_modif_p = "SELECT * FROM plats WHERE ID='".$_GET['id']."'";
		$result_modif_p = mysql_query($SQLQuery_modif_p) or die(mysql_error());
		$plat_M = mysql_fetch_array($result_modif_p, MYSQL_ASSOC);
	}
	if ($_GET['func']=="modif_a")
	{
		$SQLQuery_modif_a = "SELECT * FROM autres WHERE ID='".$_GET['id']."'";
		$result_modif_a = mysql_query($SQLQuery_modif_a) or die(mysql_error());
		$autre_M = mysql_fetch_array($result_modif_a, MYSQL_ASSOC);
	}
	if ($_GET['func']=="mod_ncb")
	{
		$SQLQuery_modif_ncb = "SELECT * FROM types_cb WHERE ID='".$_GET['id']."'";
		$result_modif_ncb = mysql_query($SQLQuery_modif_ncb) or die(mysql_error());
		$ncb_M = mysql_fetch_array($result_modif_ncb, MYSQL_ASSOC);
		$ncb_M['Nomc']=explode('***', $ncb_M['Nom']);
	}
	if ($_GET['func']=="mod_cb")
	{
		$SQLQuery_modif_cb = "SELECT * FROM cowboys WHERE ID='".$_GET['id']."'";
		$result_modif_cb = mysql_query($SQLQuery_modif_cb) or die(mysql_error());
		$cb_M = mysql_fetch_array($result_modif_cb, MYSQL_ASSOC);
	}
	if ($_GET['func']=="mod_gp")
	{
		$SQLQuery_modif_gp = "SELECT * FROM supplements WHERE prix='1'";
		$result_modif_gp = mysql_query($SQLQuery_modif_gp) or die(mysql_error());
		$gp_M = mysql_fetch_array($result_modif_gp, MYSQL_ASSOC);
	}
	if ($_GET['func']=="mod_gg")
	{
		$SQLQuery_modif_gg = "SELECT * FROM supplements WHERE prix='0'";
		$result_modif_gg = mysql_query($SQLQuery_modif_gg) or die(mysql_error());
		$gg_M = mysql_fetch_array($result_modif_gg, MYSQL_ASSOC);
	}
}

//////////////////////
// Modifier plat

if (isset($_GET['conf_Mp']))
{
	$SQLQuery_plat_ori="SELECT * FROM plats WHERE ID='".$_GET['id']."'";
	$result_plat_ori = mysql_query($SQLQuery_plat_ori) or die(mysql_error());
	$plat_ori = mysql_fetch_array($result_plat_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	if ($_GET['Base']!=$plat_ori['Base'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Base = '".$_GET['Base']."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['Nom']!=$plat_ori['Nom'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Nom = '".$_GET['Nom']."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['Ingredient']!=$plat_ori['Ingredient'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Ingredient = '".$_GET['Ingredient']."'";
		$set_n+=1;
	}
	/////////////
	$prixm=$_GET['Prix'];
	$exp1=explode(",",$prixm);
	if (isset($exp1[1]))
	{
		$prixm=implode(".",$exp1);
	}
	if ($prixm!=$plat_ori['Prix_1p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix_1p = '".$prixm."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['image']!=$plat_ori['image'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="image = '".$_GET['image']."'";
		$set_n+=1;
	}
	////////////////
	$isnew=0;
	if (isset($_GET['new']))
	{
		if ($_GET['new']=="on")
		{
			$isnew=1;
		}
	}
	if ($isnew!=$plat_ori['New'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="New = '".$isnew."'";
		$set_n+=1;
	}
	//////////////////
	if ($set_n!=0)
	{
		$update="UPDATE plats SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}

///////////////////
// Créer plat

if(isset($_GET['conf_Cp']))
{
	
	///////////////////////
	//Laissé pour mémo si encore problème d'enregistrement
	///////////////////////
	//$chevre_sql="INSERT INTO plats SET Base=5, Nom='Chèvre', Ingredient='Salade, bacon, tomates fraîches, chèvre, miel', Prix_1p='5.50', New=1";
	///////////////////////
	
	$create="INSERT INTO plats VALUES ('', ".$_GET['Base'].", '".$_GET['Nom']."', '".$_GET['Ingredient']."', '";
	$cprix=$_GET['Prix'];
	$exp1=explode(",",$cprix);
	if (isset($exp1[1]))
	{
		$cprix=implode(".",$exp1);
	}
	$create.=$cprix."', '', '', ".$_GET['image']."', '1')";
	$result_create=mysql_query($create);
	GoToAutre();
}



//////////////////////
// Modifier autre

if (isset($_GET['conf_Ma']))
{
	$SQLQuery_autre_ori="SELECT * FROM autres WHERE ID='".$_GET['id']."'";
	$result_autre_ori = mysql_query($SQLQuery_autre_ori) or die(mysql_error());
	$autre_ori = mysql_fetch_array($result_autre_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////////
	if ($_GET['Nom']!=$autre_ori['Nom'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Nom = '".$_GET['Nom']."'";
		$set_n+=1;
	}
	/////////////////
	if ($_GET['Info']!=$autre_ori['info'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="info = '".$_GET['Info']."'";
		$set_n+=1;
	}
	////////////////////
	$prixa=$_GET['Prix'];
	$exp1=explode(",",$prixa);
	if (isset($exp1[1]))
	{
		$prixa=implode(".",$exp1);
	}
	if ($prixa!=$autre_ori['Prix'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix = '".$prixa."'";
		$set_n+=1;
	}
	//////////////////////
	if ($_GET['Prec']!=$autre_ori['prec'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="prec = '".$_GET['Prec']."'";
		$set_n+=1;
	}	
	//////////////////////
	if ($_GET['image']!=$autre_ori['image'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="image = '".$_GET['image']."'";
		$set_n+=1;
	}
	///////////////////////
	if ($set_n!=0)
	{
		$update="UPDATE autres SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}

//////////////////////
// Supprimer autre

if (isset($_GET['conf_Da']))
{
	$delete="DELETE FROM autres WHERE ID='".$_GET['id']."'";
	$result_delete=mysql_query($delete);
	GoToAutre();
}

//////////////////////
// Modifier ncb

if (isset($_GET['conf_Mncb']))
{
	$SQLQuery_ncb_ori = "SELECT * FROM types_cb WHERE ID='".$_GET['id']."'";
	$result_ncb_ori = mysql_query($SQLQuery_ncb_ori) or die(mysql_error());
	$ncb_ori = mysql_fetch_array($result_ncb_ori, MYSQL_ASSOC);
	$ncb_ori['Nomc']=explode('***', $ncb_ori['Nom']);
	$new_ncb_nom=$ncb_ori['Nomc'];
	$set_n = 0;
	/////////////
	if (isset($_GET['Nom0']) && ($_GET['Nom0']!=$ncb_ori['Nomc'][0]))
	{
		$new_ncb_nom[0]=$_GET['Nom0'];
		$set_n+=1;
	}
	/////////////
	if (isset($_GET['Nom1']))
	{
		if (isset($ncb_ori['Nomc'][1]) && ($_GET['Nom1']!=$ncb_ori['Nomc'][1]))
		{
			$new_ncb_nom[1]=$_GET['Nom1'];
			$set_n+=1;
		}
		else
		{
			$new_ncb_nom[1]=$_GET['Nom1'];
			$set_n+=1;
		}
	}
	/////////////
	if (isset($_GET['Nom2']) && ($_GET['Nom2']!=$ncb_ori['Nomc'][2]))
	{
		if (isset($ncb_ori['Nomc'][2]) && ($_GET['Nom2']!=$ncb_ori['Nomc'][2]))
		{
			$new_ncb_nom[2]=$_GET['Nom2'];
			$set_n+=1;
		}
		else
		{
			$new_ncb_nom[2]=$_GET['Nom2'];
			$set_n+=1;
		}
	}
	////////////////////
	if ($set_n!=0)
	{
		$new_ncb=implode('***', $new_ncb_nom);
		$update="UPDATE types_cb SET Nom='".$new_ncb."' WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}

//////////////////////
// Modifier cb

if (isset($_GET['conf_Mcb']))
{
	$SQLQuery_cb_ori = "SELECT * FROM cowboys WHERE ID='".$_GET['id']."'";
	$result_cb_ori = mysql_query($SQLQuery_cb_ori) or die(mysql_error());
	$cb_ori = mysql_fetch_array($result_cb_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	if ($_GET['Format']!=$cb_ori['Format'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Format = '".$_GET['Format']."'";
		$set_n+=1;
	}
	////////////////////
	$prixcb=$_GET['Prix'];
	$exp1=explode(",",$prixcb);
	if (isset($exp1[1]))
	{
		$prixcb=implode(".",$exp1);
	}
	if ($prixcb!=$cb_ori['Prix'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Prix = '".$prixcb."'";
		$set_n+=1;
	}
	///////////////////////
	if ($_GET['image']!=$cb_ori['image'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="image = '".$_GET['image']."'";
		$set_n+=1;
	}
	/////////////////////
	if ($set_n!=0)
	{
		$update="UPDATE cowboys SET ".$set." WHERE ID='".$_GET['id']."'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}

//////////////////////
// Modifier gp

if (isset($_GET['conf_Mgp']))
{
	$SQLQuery_gp_ori = "SELECT * FROM supplements WHERE prix='1'";
	$result_gp_ori = mysql_query($SQLQuery_gp_ori) or die(mysql_error());
	$gp_ori = mysql_fetch_array($result_gp_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	$nlistep=nl2br($_GET['nom']);
	if ($nlistep!=$gp_ori['Liste'])
	{
		$set_n=1;
		$set="Liste = '".$nlistep."'";
	}
	/////////////
	if ($set_n!=0)
	{
		$update="UPDATE supplements SET ".$set." WHERE prix='1'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}

//////////////////////
// Modifier gg

if (isset($_GET['conf_Mgg']))
{
	$SQLQuery_gg_ori = "SELECT * FROM supplements WHERE prix='0'";
	$result_gg_ori = mysql_query($SQLQuery_gg_ori) or die(mysql_error());
	$gg_ori = mysql_fetch_array($result_gg_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	$nlisteg=nl2br($_GET['nom']);
	if ($nlisteg!=$gp_ori['Liste'])
	{
		$set_n=1;
		$set="Liste = '".$nlisteg."'";
	}
	/////////////
	if ($set_n!=0)
	{
		$update="UPDATE supplements SET ".$set." WHERE prix='0'";
		$result_modif=mysql_query($update);
		GoToAutre();
	}
	else
	{
		GoToAutre();
	}
}
//print_r($type_cb);
//autres
//print_r($nomcb);
$smarty->assign('type_cb',$type_cb);
$smarty->assign('nomcb',$nomcb);
$smarty->assign('gar',$gar);
$smarty->assign('garg',$garg);
$smarty->assign('infocb',$infocb);
$smarty->assign('sal',$sal);
$smarty->assign('bru',$bru);
$smarty->assign('aut',$aut);
$smarty->assign('plat_M',$plat_M);
$smarty->assign('autre_M',$autre_M);
$smarty->assign('ncb_M',$ncb_M);
$smarty->assign('cb_M',$cb_M);
$smarty->assign('gp_M',$gp_M);
$smarty->assign('gg_M',$gg_M);
$smarty->assign('tpl2include','autre.tpl');

?>