<?php
require_once('706/log.php');
//connection
mysql_connect($host,$log,$pw);
mysql_select_db($bdd);

//////////////////////////////////
$SQLQuery_info="SELECT * FROM info";
$result_i = mysql_query($SQLQuery_info) or die(mysql_error());
$info = mysql_fetch_array($result_i, MYSQL_ASSOC);

$SQLQuery_fidel="SELECT * FROM fidelite";
$result_f = mysql_query($SQLQuery_fidel) or die(mysql_error());
$fid = mysql_fetch_array($result_f, MYSQL_ASSOC);

$SQLQuery_liv="SELECT * FROM livraisons";
$result_l = mysql_query($SQLQuery_liv) or die(mysql_error());
$liv = mysql_fetch_array($result_l, MYSQL_ASSOC);

if (isset($_GET['modif']))
{
	if ($_GET['modif']=="mag")
	{
		$SQLQuery_mag="SELECT Tel, Adresse, horaire FROM info";
		$result_mag = mysql_query($SQLQuery_mag) or die(mysql_error());
		$mag_M = mysql_fetch_array($result_mag, MYSQL_ASSOC);
	}
	if ($_GET['modif']=="fid")
	{
		$SQLQuery_fid="SELECT * FROM fidelite";
		$result_fid = mysql_query($SQLQuery_fid) or die(mysql_error());
		$fid_M = mysql_fetch_array($result_fid, MYSQL_ASSOC);
	}
	if ($_GET['modif']=="livr")
	{
		$SQLQuery_liv="SELECT * FROM livraisons";
		$result_liv = mysql_query($SQLQuery_liv) or die(mysql_error());
		$liv_M = mysql_fetch_array($result_liv, MYSQL_ASSOC);
	}
	if ($_GET['modif']=="gar")
	{
		$SQLQuery_gar="SELECT prix_sup_1p, prix_sup_2p, prix_sup_4p FROM info";
		$result_gar = mysql_query($SQLQuery_gar) or die(mysql_error());
		$gar_M = mysql_fetch_array($result_gar, MYSQL_ASSOC);
	}
	if ($_GET['modif']=="mop")
	{
		$SQLQuery_mop="SELECT mop FROM info";
		$result_mop = mysql_query($SQLQuery_mop) or die(mysql_error());
		$mop_M = mysql_fetch_array($result_mop, MYSQL_ASSOC);
	}
}

if (isset($_GET['conf_Mm']))
{
	$SQLQuery_mag_ori="SELECT Tel, Adresse, horaire FROM info";
	$result_mag_ori = mysql_query($SQLQuery_mag_ori) or die(mysql_error());
	$mag_ori = mysql_fetch_array($result_mag_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	if ($_GET['Tel']!=$mag_ori['Tel'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Tel = '".$_GET['Tel']."'";
		$set_n+=1;
	}
	//////////////
	$adress=nl2br($_GET['Adresse']);
	if ($adress!=$mag_ori['Adresse'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="Adresse = '".$adress."'";
		$set_n+=1;
	}
	//////////////////
	$hora=nl2br($_GET['horaire']);
	if ($hora!=$mag_ori['horaire'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="horaire = '".$hora."'";
		$set_n+=1;
	}
	////////////////////
	if ($set_n!=0)
	{
		$update_mag="UPDATE info SET ".$set." WHERE ID='1'";
		$result_modif=mysql_query($update_mag);
		GoToInfo();
	}
	else
	{
		GoToInfo();
	}
}

//////////////////////////////////////

if (isset($_GET['conf_Mf']))
{
	$SQLQuery_fid_ori="SELECT * FROM fidelite";
	$result_fid_ori = mysql_query($SQLQuery_fid_ori) or die(mysql_error());
	$fid_ori = mysql_fetch_array($result_fid_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	if ($_GET['p1p']!=$fid_ori['pts_1p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="pts_1p = '".$_GET['p1p']."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['p2p']!=$fid_ori['pts_2p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="pts_2p = '".$_GET['p2p']."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['p4p']!=$fid_ori['pts_4p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="pts_4p = '".$_GET['p4p']."'";
		$set_n+=1;
	}
	///////////////
	if ($_GET['nred']!=$fid_ori['pts_reduc'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="pts_reduc = '".$_GET['nred']."'";
		$set_n+=1;
	}
	///////////////
	$red=$_GET['red'];
	$exp1=explode(",",$red);
	if (isset($exp1[1]))
	{
		$red=implode(".",$exp1);
	}
	if ($red!=$fid_ori['reduc'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="reduc = '".$red."'";
		$set_n+=1;
	}
	/////////////////
	if ($set_n!=0)
	{
		$update_fid="UPDATE fidelite SET ".$set." WHERE ID='1'";
		$result_modif=mysql_query($update_fid);
		GoToInfo();
	}
	else
	{
		GoToInfo();
	}
}

//////////////////////////////////////

if (isset($_GET['conf_Ml']))
{
	$SQLQuery_liv_ori="SELECT * FROM livraisons";
	$result_liv_ori = mysql_query($SQLQuery_liv_ori) or die(mysql_error());
	$liv_ori = mysql_fetch_array($result_liv_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	$psup=$_GET['psup'];
	$exp1=explode(",",$psup);
	if (isset($exp1[1]))
	{
		$psup=implode(".",$exp1);
	}
	if ($psup!=$liv_ori['suppl'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="suppl = '".$psup."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['piz']!=$liv_ori['pizza'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="pizza = '".$_GET['piz']."'";
		$set_n+=1;
	}
	/////////////
	$supm=$_GET['supm'];
	$exp1=explode(",",$supm);
	if (isset($exp1[1]))
	{
		$supm=implode(".",$exp1);
	}
	if ($supm!=$liv_ori['suppl_max'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="suppl_max = '".$supm."'";
		$set_n+=1;
	}
	/////////////
	if ($_GET['app']!=$liv_ori['appoint'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="appoint = '".$_GET['app']."'";
		$set_n+=1;
	}
	/////////////////
	if ($set_n!=0)
	{
		$update_liv="UPDATE livraisons SET ".$set." WHERE ID='1'";
		$result_modif=mysql_query($update_liv);
		GoToInfo();
	}
	else
	{
		GoToInfo();
	}
}

//////////////////////////////////////

if (isset($_GET['conf_Mg']))
{
	$SQLQuery_gar_ori="SELECT prix_sup_1p, prix_sup_2p, prix_sup_4p FROM info";
	$result_gar_ori = mysql_query($SQLQuery_gar_ori) or die(mysql_error());
	$gar_ori = mysql_fetch_array($result_gar_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	/////////////
	$p1p=$_GET['p1p'];
	$exp1=explode(",",$p1p);
	if (isset($exp1[1]))
	{
		$p1p=implode(".",$exp1);
	}
	if ($p1p!=$gar_ori['prix_sup_1p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="prix_sup_1p = '".$p1p."'";
		$set_n+=1;
	}
	/////////////
	$p2p=$_GET['p2p'];
	$exp1=explode(",",$p2p);
	if (isset($exp1[1]))
	{
		$p2p=implode(".",$exp1);
	}
	if ($p2p!=$gar_ori['prix_sup_2p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="prix_sup_2p = '".$p2p."'";
		$set_n+=1;
	}
	/////////////
	$p4p=$_GET['p4p'];
	$exp1=explode(",",$p4p);
	if (isset($exp1[1]))
	{
		$p4p=implode(".",$exp1);
	}
	if ($p4p!=$gar_ori['prix_sup_4p'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="prix_sup_4p = '".$p4p."'";
		$set_n+=1;
	}
	/////////////////
	if ($set_n!=0)
	{
		$update_gar="UPDATE info SET ".$set." WHERE ID='1'";
		$result_modif=mysql_query($update_gar);
		GoToInfo();
	}
	else
	{
		GoToInfo();
	}
}

if (isset($_GET['conf_Mp']))
{
	$SQLQuery_mop_ori="SELECT mop FROM info";
	$result_mop_ori = mysql_query($SQLQuery_mop_ori) or die(mysql_error());
	$mop_ori = mysql_fetch_array($result_mop_ori, MYSQL_ASSOC);
	$set="";
	$set_n = 0;
	//////////////
	$mop=nl2br($_GET['mop']);
	if ($mop!=$mop_ori['mop'])
	{
		if ($set_n!=0)
		{
			$set.=", ";
		}
		$set.="mop = '".$mop."'";
		$set_n+=1;
	}
	/////////////////
	if ($set_n!=0)
	{
		$update_mop="UPDATE info SET ".$set." WHERE ID='1'";
		$result_modif=mysql_query($update_mop);
		GoToInfo();
	}
	else
	{
		GoToInfo();
	}
}

//echo "info: ";print_r($info);echo "<br />";
//echo "fid: ";print_r($fid);echo "<br />";
//echo "liv: ";print_r($liv);

$smarty->assign('info',$info);
$smarty->assign('fid',$fid);
$smarty->assign('liv',$liv);
$smarty->assign('mag_M',$mag_M);
$smarty->assign('fid_M',$fid_M);
$smarty->assign('liv_M',$liv_M);
$smarty->assign('gar_M',$gar_M);
$smarty->assign('mop_M',$mop_M);
$smarty->assign('tpl2include','info.tpl');

?>