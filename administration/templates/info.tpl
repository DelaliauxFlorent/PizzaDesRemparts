{if (isset($smarty.get.modif))}
	{if $smarty.get.modif == 'mag'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  magasin                                  //
				//////////////////////////////////////////////////////////
			
			-->
            <table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="info" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="7"></td>
                	<td class="fond_w transparent" align="left"><label for="Tel">T&eacute;l&eacute;phone : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Tel" id="Tel" value="{$mag_M.Tel}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="7"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left" valign="top"><label for="Adresse">Adresse : </label></td>
                    <td class="fond_w transparent" align="left"><textarea name="Adresse" id="Adresse" rows="4" cols="40">{$mag_M.Adresse|replace:'<br />':""}</textarea></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left" valign="top"><label for="horaire">Horaires : </label></td>
                    <td class="fond_w transparent" align="left"><textarea name="horaire" id="horaire" rows="4" cols="40">{$mag_M.horaire|replace:'<br />':""}</textarea></td>                    
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mm" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td colspan="3" class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            
     {elseif $smarty.get.modif == 'fid'}
     
     <!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  fidélité                                 //
				//////////////////////////////////////////////////////////
			
			-->
            <table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="info" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="11"></td>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p1p">Une pizza 1 pers. vaut : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p1p" id="p1p" value="{$fid_M.pts_1p}" style="background-color:transparent; width:30px; text-align:center" /> point(s)</td>
                    <td class="fond_w transparent" rowspan="11"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p2p">Une pizza 2 pers. vaut : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p2p" id="p2p" value="{$fid_M.pts_2p}" style="background-color:transparent; width:30px; text-align:center" /> point(s)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p4p">Une pizza 4 pers. vaut : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p4p" id="p4p" value="{$fid_M.pts_4p}" style="background-color:transparent; width:30px; text-align:center" /> point(s)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="nred">Et il faut : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="nred" id="nred" value="{$fid_M.pts_reduc}" style="background-color:transparent; width:30px; text-align:center" /> point(s)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="red" style="width:190px">pour obtenir une r&eacute;duction de : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="red" id="red" value="{$fid_M.reduc}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>                    
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_Mf" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
     {elseif $smarty.get.modif == 'livr'}
     
     <!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  livraison                                //
				//////////////////////////////////////////////////////////
			
			-->
            <table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="info" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="9"></td>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="psup">Suppl&eacute;ment par pizza livr&eacute;e : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="psup" id="psup" value="{$liv_M.suppl}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>
                    <td class="fond_w transparent" rowspan="9"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="piz">&Agrave; partir de : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="piz" id="piz" value="{$liv_M.pizza}" style="background-color:transparent; width:30px; text-align:center" /> pizza(s)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="supm">le suppl&eacute;ment reste &agrave; : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="supm" id="supm" value="{$liv_M.suppl_max}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
               		<td class="fond_w transparent" align="left"><label style="width:190px" for="app">Les livreurs n'ont que : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="app" id="app" value="{$liv_M.appoint}" style="background-color:transparent; width:30px; text-align:right" />&euro; sur eux</td>                    
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_Ml" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table>
      {elseif $smarty.get.modif == 'gar'}
     
     <!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  garniture                                //
				//////////////////////////////////////////////////////////
			
			-->
            <table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="info" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                    <td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="7"></td>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p1p">Prix pour une pizza 1 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p1p" id="p1p" value="{$gar_M.prix_sup_1p}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>
                    <td class="fond_w transparent" rowspan="7"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p2p">Prix pour une pizza 2 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p2p" id="p2p" value="{$gar_M.prix_sup_2p}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label style="width:190px" for="p4p">Prix pour une pizza 4 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="p4p" id="p4p" value="{$gar_M.prix_sup_4p}" style="background-color:transparent; width:30px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mg" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table>
            
      
      {elseif $smarty.get.modif == 'mop'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  méthode de payment                       //
				//////////////////////////////////////////////////////////
			
			-->
            <table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="info" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent"></td>
                	<td align="left" valign="top" class="fond_w transparent">
                    	<p><label style="width:200px" for="mop">Les clients peuvent payer par : </label><br /><textarea name="mop" id="mop" rows="4" cols="40">{$mop_M.mop|replace:'<br />':""}</textarea></p>
                    </td>
                    <td class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mp" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                    <td class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
     {/if}
{else}
<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td style="font-size:13px">&nbsp;</td>
    </tr>
    <tr>
    	<td><div style="overflow:auto; width:100%; height:600px">
        	<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                	<td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                	<td width="100%" class="fond_b rouge">Informations</td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td colspan="3" align="right">
                	<table border="0" cellpadding="0" cellspacing="0" width="95%">
                    	<tr>
                    		<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt=""></td>
                    		<td class="fond_v" width="100%" align="left"><a href="index.php?page=info&modif=mag" class="beige">Magasin</a></td>
                    		<td width="8px"><img src="./img/bord-vert4.png" width="8px" alt=""></td>
                		</tr>
                        <tr>
                            <td height="3px" colspan="4"></td>
                        </tr>                
                        <tr>
                            <td width="8px"><img src="./img/bord-blanc-c.png" class="transparent" width="8px" alt=""></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%"><span style="text-decoration:underline">T&eacute;l&eacute;phone :</span> {$info.Tel}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>   
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left"><span style="text-decoration:underline">Adresse :</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                       
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">{$info.Adresse|replace:'\n':"<br />"}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>     
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left"><span style="text-decoration:underline">Horaires :</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                       
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">{$info.horaire|replace:'\n':"<br />"}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>         
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td width="8px"><img src="./img/bord-blanc-d.png" class="transparent" width="8px" alt=""></td>
                        </tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>
                        <tr>
                    		<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt=""></td>
                    		<td class="fond_v" width="100%" align="left"><a href="index.php?page=info&modif=fid" class="beige">Fid&eacute;lit&eacute;</a></td>
                    		<td width="8px"><img src="./img/bord-vert4.png" width="8px" alt=""></td>
                		</tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>                
                        <tr>
                            <td width="8px"><img src="./img/bord-blanc-c.png" class="transparent" width="8px" alt=""></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%"><span style="text-decoration:underline">Valeur en point des pizzas :</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                 
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%"><span style="margin-left:50px">- 1 pizza 1 pers. : {$fid.pts_1p} pt{if $fid.pts_1p>1}s{/if}</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                   
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%"><span style="margin-left:50px">- 1 pizza 2 pers. : {$fid.pts_2p} pt{if $fid.pts_2p>1}s{/if}</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>              
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%"><span style="margin-left:50px">- 1 pizza 4 pers. : {$fid.pts_4p} pt{if $fid.pts_4p>1}s{/if}</span></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>       
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                 
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%">Nombre de points pour obtenir la réduction : {$fid.pts_reduc} pt{if $fid.pts_reduc>1}s{/if}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>      
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%">Valeur de la réduction : {$fid.reduc|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>     
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td width="8px"><img src="./img/bord-blanc-d.png" class="transparent" width="8px" alt=""></td>
                        </tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>
                        <tr>
                    		<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt=""></td>
                    		<td class="fond_v" width="100%" align="left"><a href="index.php?page=info&modif=livr" class="beige">Livraisons</a></td>
                    		<td width="8px"><img src="./img/bord-vert4.png" width="8px" alt=""></td>
                		</tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>                 
                        <tr>
                            <td width="8px"><img src="./img/bord-blanc-c.png" class="transparent" width="8px" alt=""></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">Suppl&eacute;ment par pizza : {$liv.suppl|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>        
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                    
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">Suppl&eacute;ment n'augmente plus apr&egrave;s : {$liv.pizza} pizza{if $liv.pizza>1}s{/if}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>        
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                   
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">Suppl&eacute;ment final : {$liv.suppl_max|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>        
                        <tr>
                            <td class="fond_w transparent" height="3px" colspan="3"></td>
                        </tr>                      
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">Les livreurs n'ont, sur eux, pas plus de : {$liv.appoint|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td width="8px"><img src="./img/bord-blanc-d.png" class="transparent" width="8px" alt=""></td>
                        </tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>
                        <tr>
                    		<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt=""></td>
                    		<td class="fond_v" width="100%" align="left"><a href="index.php?page=info&modif=gar" class="beige">Garnitures</a></td>
                    		<td width="8px"><img src="./img/bord-vert4.png" width="8px" alt=""></td>
                		</tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>                 
                        <tr>
                            <td width="8px"><img src="./img/bord-blanc-c.png" class="transparent" width="8px" alt=""></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%">Prix pour une pizza 1 pers. : {$info.prix_sup_1p|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                    
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%">Prix pour une pizza 2 pers. : {$info.prix_sup_2p|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                    
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" align="left" width="100%">Prix pour une pizza 4 pers. : {$info.prix_sup_4p|replace:'.':","}&euro;</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td width="8px"><img src="./img/bord-blanc-d.png" class="transparent" width="8px" alt=""></td>
                        </tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>
                        <tr>
                    		<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt=""></td>
                    		<td class="fond_v" width="100%" align="left"><a href="index.php?page=info&modif=mop" class="beige">Modes de paiments</a></td>
                    		<td width="8px"><img src="./img/bord-vert4.png" width="8px" alt=""></td>
                		</tr>
                        <tr>
                            <td height="3px" colspan="3"></td>
                        </tr>                 
                        <tr>
                            <td width="8px"><img src="./img/bord-blanc-c.png" class="transparent" width="8px" alt=""></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>                  
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%" align="left">Les clients peuvent payer par: {$info.mop}</td>
                            <td class="fond_w transparent" width="8px"></td>
                        </tr>       
                        <tr>
                            <td class="fond_w transparent" width="8px"></td>
                            <td class="fond_w transparent" width="100%"></td>
                            <td width="8px"><img src="./img/bord-blanc-d.png" class="transparent" width="8px" alt=""></td>
                        </tr>
                    </table>
                    </td>
                </div></tr>
            </table>
        </td>
    </tr>
</table>{/if}
