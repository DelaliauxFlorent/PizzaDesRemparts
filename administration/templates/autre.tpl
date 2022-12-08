{if (isset($smarty.get.func))}
	{if $smarty.get.func == 'modif_p'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier  plat                                     //
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
            <input type="hidden" name="page" value="autre" />
            <input type="hidden" name="id" value="{$plat_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td colspan="3" class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="17"></td>
                	<td class="fond_w transparent" align="left"><label for="Base">Type : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Base" id="Base">
                        	<option value="5" style="background-color:transparent" {if $plat_M.Base==5} selected {/if}>Salade</option>
                            <option value="6" style="background-color:transparent" {if $plat_M.Base==6} selected {/if}>Bruschetta</option>
                        </select>
                    </td>
                    <td class="fond_w transparent" rowspan="17"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" value="{$plat_M.Nom}" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Ingredient">Ingredients : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Ingredient" id="Ingredient" style="background-color:transparent; width:500px" value="{$plat_M.Ingredient}" /></td>
               </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
               <tr>
                    <td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" style="background-color:transparent; width:40px; text-align:right" value="{$plat_M.Prix_1p}" />&euro;</td>
               </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
               <tr>
        	        <td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
    	            <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" style="background-color:transparent; width:50px" value="{$plat_M.image}" /></td>
              	</tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="new">Nouveaut&eacute;e : </label></td>
                    <td class="fond_w transparent" align="left"><input type="checkbox" name="new" id="new" style="background-color:transparent" {if $plat_M.New==1} checked{/if} /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit" style="width:100px" name="conf_Mp" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset" style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Da" value="Supprimer" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" align="center">Si probl&egrave;me &agrave; l'enregistrement, v&eacute;rifier si pr&eacute;sence d'apostrophe.<br />Si oui, les doubler pour que SQL puisse traiter la commande normalement.</td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td colspan="3" class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            {elseif $smarty.get.func == 'create_p'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   Créer  plat                                        //
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
            <input type="hidden" name="page" value="autre" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td colspan="3" class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="13"></td>
                	<td class="fond_w transparent" align="left"><label for="Base">Type : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Base" id="Base">
                        	<option value="5" style="background-color:transparent">Salade</option>
                            <option value="6" style="background-color:transparent">Bruschetta</option>
                        </select>
                    </td>
                    <td rowspan="13" class="fond_w transparent">
                </td>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Ingredient">Ingredients : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Ingredient" id="Ingredient" style="background-color:transparent; width:500px" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" style="background-color:transparent; width:40px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" style="background-color:transparent; width:50px" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Cp" value="C&eacute;er" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" align="center">Si probl&egrave;me &agrave; l'enregistrement, v&eacute;rifier si pr&eacute;sence d'apostrophe.<br />Si oui, les doubler pour que SQL puisse traiter la commande normalement.</td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td colspan="3" class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            {elseif $smarty.get.func == 'modif_a'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   modifier autres                                    //
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
            <input type="hidden" name="page" value="autre" />
            <input type="hidden" name="id" value="{$autre_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td colspan="3" class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td rowspan="11" class="fond_w transparent"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" value="{$autre_M.Nom}" style="background-color:transparent" /></td>
                    <td rowspan="11" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Info">Information : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Info" id="Info" value="{$autre_M.info}" style="background-color:transparent" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" value="{$autre_M.Prix}" style="background-color:transparent; width:40px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prec">Pr&eacute;cision : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prec" id="Prec" value="{$autre_M.prec}" style="background-color:transparent" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" value="{$autre_M.image}" style="background-color:transparent; width:50px" /></td>
                    
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Ma" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td colspan="3" class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            {elseif $smarty.get.func == 'mod_ncb'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   modifier nom cowboy                                //
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
            <input type="hidden" name="page" value="autre" />
            <input type="hidden" name="id" value="{$ncb_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>
                {foreach from=$ncb_M.Nomc item=line name=ncb key=k}         	
                	<tr>
                    	<td class="fond_w transparent"></td>
                		<td class="fond_w transparent" align="left"><label for="Nom{$k}">{if $k==0}Nom{else}Pr&eacute;cision{if $k==1}{if $smarty.foreach.ncb.last}{else} {$k}{/if}{else} {$k}{/if}{/if} : </label></td>
                        <td class="fond_w transparent" align="left"><input type="text" name="Nom{$k}" id="Nom{$k}" value="{$line}" style="background-color:transparent; width:300px" /></td>
                    	<td class="fond_w transparent"></td>
                	</tr>
                	<tr>
                		<td colspan="4" class="fond_w transparent" height="5px"></td>
                	</tr>
                {/foreach}
                <tr>
                	<td class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mncb" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                    <td class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            {elseif $smarty.get.func == 'mod_cb'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   modifier cowboy                                    //
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
            <input type="hidden" name="page" value="autre" />
            <input type="hidden" name="id" value="{$cb_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="7"></td>
                	<td class="fond_w transparent" align="left"><label for="Format">Format : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Format" id="Format" value="{$cb_M.Format}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="7"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" value="{$cb_M.Prix}" style="background-color:transparent; width:40px; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" value="{$cb_M.image}" style="background-color:transparent; width:50px" /></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_Mcb" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table> 
            {elseif $smarty.get.func == 'mod_gp'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   modifier suppl p                                   //
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
            <input type="hidden" name="page" value="autre" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="2"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="2"></td>
                	<td class="fond_w transparent" align="left"><label style="width:300px" for="nom">Liste des suppl&eacute;ments payants : </label></td>
                    <td class="fond_w transparent" rowspan="2"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><textarea name="nom" id="nom" style="background-color:transparent; width:500px" rows="10" cols="40">{$gp_M.Liste}</textarea></td>
                </tr>
                <tr>
                	<td class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mgp" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                    <td class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                </tr>  
            </table>
            </form></td></tr></table>
            {elseif $smarty.get.func == 'mod_gg'}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   modifier suppl g                                   //
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
            <input type="hidden" name="page" value="autre" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td colspan="2" class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="2"></td>
                	<td class="fond_w transparent" align="left"><label style="width:300px" for="nom">Liste des suppl&eacute;ments gratuits : </label></td>
                    <td class="fond_w transparent" rowspan="2"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><textarea name="nom" id="nom" style="background-color:transparent; width:500px" rows="10" cols="40">{$gg_M.Liste}</textarea></td>
                </tr>
                <tr>
                	<td class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_Mgg" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
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
    	<td style="font-size:13px" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" width="50%" valign="top">
        	<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                	<td colspan="4" align="center"><a href="index.php?page=autre&func=create_p"><img src="./img/creer.png" alt="Cr&eacute;er" class="rouge"></a></td>
                </tr>
            	<tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td align="left" colspan="2" background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"><img src="./img/salade.png" alt="Salade" class="rouge" style="margin-left:25px"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                </tr>
                {foreach from=$sal item=salade}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="left"><a href="index.php?page=autre&func=modif_p&id={$salade.ID}" style="font-size:25px">{$salade.Nom}</a>{if $salade.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$salade.Ingredient}</span></td>                    
                    <td class="fond_w transparent" align="right" width="8%" valign="top"><span style="font-size:20px">{$salade.Prix_1p|replace:'.':","}&euro;</span></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                {/foreach}
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>                
                <tr>
                	<td colspan="4" height="8px"></td>
                </tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td colspan="2" align="right" background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"><img src="./img/brusch.png" alt="Bruschetta" class="rouge" style="margin-right:25px"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                </tr>
                {foreach from=$bru item=brusch}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="left"><a href="index.php?page=autre&func=modif_p&id={$brusch.ID}" style="font-size:25px">{$brusch.Nom}</a>{if $brusch.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$brusch.Ingredient}</span></td>                    
                    <td class="fond_w transparent" align="right" width="8%" valign="top"><span style="font-size:20px">{$brusch.Prix_1p|replace:'.':","}&euro;</span></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                {/foreach}
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                {foreach from=$aut item=autre}               
                <tr>
                	<td colspan="4" height="10px"></td>
                </tr>
                <tr>
                	<td colspan="4">
                    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        	<tr>
                            	<td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    			<td class="fond_b rouge" style="font-size:large" width="18%" align="left"><a href="index.php?page=autre&func=modif_a&id={$autre.ID}" class="rouge">{$autre.Nom}</a></td>
                                <td class="fond_b" style="font-size:small"><i>{$autre.info}</i></td>
                                <td class="fond_b" width="50%" align="right"><span style="font-size:larger">{$autre.Prix|replace:'.':","}&euro;</span>&nbsp;<span style="font-size:small"><i>{$autre.prec}</i></span></td>
                    			<td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                {/foreach}
            </table>
        </td>
    	<td align="center" width="50%">
        	<table border="0" cellpadding="0" cellspacing="0" width="350px">
            	<tr>
                	<td colspan="5"><img src="./img/cowboy.png" alt="Au coin des Cowboys"></td>
                </tr>
                <tr><td height="3px" colspan="5"></td></tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="3" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>                
                </tr>
                {assign var="i" value=0}
                {foreach from=$type_cb key=k item=element name=cow}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" rowspan="2" align="left">{foreach from=$nomcb.$k item=cb name=lg}{if $smarty.foreach.lg.first}<span style="font-size:24px">{elseif $smarty.foreach.lg.last}<span style="font-size:small"><i>{/if}<a href="index.php?page=autre&func=mod_ncb&id={$type_cb.$k.ID}">{$cb}</a>{if $smarty.foreach.lg.first}</span>{elseif $smarty.foreach.lg.last}</i></span>{/if}<br />{/foreach}</td>
                    <td class="fond_w transparent"><a href="index.php?page=autre&func=mod_cb&id={$infocb.$i.ID}">{$infocb.$i.Format}</a></td>
                    <td class="fond_w transparent">{$infocb.$i.Prix}&euro;</td>
                    <td width="8px" class="fond_w transparent"></td>                
                </tr>
                {assign var="i" value=$i+1}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent"><a href="index.php?page=autre&func=mod_cb&id={$infocb.$i.ID}">{$infocb.$i.Format}</a></td>
                    <td class="fond_w transparent">{$infocb.$i.Prix}&euro;</td>
                    <td width="8px" class="fond_w transparent"></td>     
                </tr>                
                {assign var="i" value=$i+1}
                {if $smarty.foreach.cow.last}{else}
                <tr><td class="fond_w transparent" height="3px" colspan="5"></td></tr>{/if}
                {/foreach}
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td colspan="3" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>                
                </tr>
                <tr><td height="8px" colspan="5"></td></tr>
                <tr>
                	<td width="8px"><img src="./img/bord-beige1.png" alt="" width="8px"></td>
                    <td colspan="3" class="fond_b rouge" align="left">Garnitures:</td>
                    <td width="8px"><img src="./img/bord-beige2.png" alt="" width="8px"></td>
                </tr>
                <tr>
                	<td height="3px" colspan="4"></td>
                </tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="left"><a href="index.php?page=autre&func=mod_gp" style="text-decoration:underline">Payantes:</a></td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" colspan="5" height="3px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="left">{$gar.Liste}</td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" colspan="5" height="3px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="left"><a href="index.php?page=autre&func=mod_gg" style="text-decoration:underline">Gratuites:</a></td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" colspan="5" height="3px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="left">{$garg.Liste}</td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" colspan="5" height="3px"></td>
               	</tr>
                <tr>
                  	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td class="fond_w transparent" colspan="3"></td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
            </table>
        </td>
  	</tr>
</table>{/if}