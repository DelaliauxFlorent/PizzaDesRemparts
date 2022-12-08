{if (isset($smarty.get.id))}
    
    
    {if ((isset($smarty.get.func)) && ($smarty.get.func == 'modif'))}
			
			<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier une pizza                                 //
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
            <input type="hidden" name="page" value="pizza" />
            <input type="hidden" name="id" value="{$pizza_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="21"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" value="{$pizza_M.Nom}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="21"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Base">Base : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Base" id="Base" style="background-color:transparent"> 
                        	<option value="0" {if $pizza_M.Base==0} selected{/if}>Pizza &agrave; composer</option>
                        	<option value="1" {if $pizza_M.Base==1} selected{/if}>Pizza Base Tomate</option>
                        	<option value="2" {if $pizza_M.Base==2} selected{/if}>Pizza Base Cr&egrave;me Fra&icirc;che</option>
                        	<option value="3" {if $pizza_M.Base==3} selected{/if}>Pizza Fromage</option>
                        	<option value="4" {if $pizza_M.Base==4} selected{/if}>Pizza Poisson</option>
                        </select>
                    </td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Ingredients">Ingr&eacute;dients : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Ingredients" id="Ingredients" style="width:500px;background-color:transparent" value="{$pizza_M.Ingredient}" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P1P">Prix 1 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P1P" id="P1P" value="{$pizza_M.Prix_1p}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P2P">Prix 2 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P2P" id="P2P" value="{$pizza_M.Prix_2p}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P4P">Prix 4 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P4P" id="P4P" value="{$pizza_M.Prix_4p}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" value="{$pizza_M.image}" style="width:40px;background-color:transparent" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="new">Nouveaut&eacute;e : </label></td>
                    <td class="fond_w transparent" align="left"><input type="checkbox" name="new" id="new" {if $pizza_M.New==1} checked="checked"{/if} /></td>                    
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_M" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_D" value="Supprimer" /></td>
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
            
     {else}
     	{include file='accueil.tpl'}       
     {/if}
{elseif ((isset($smarty.get.func)) && ($smarty.get.func == create))}

<!--
			
				//////////////////////////////////////////////////////////
				//   Créer une pizza                                    //
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
            <input type="hidden" name="page" value="pizza" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td colspan="3" class="fond_w transparent"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="17"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="17"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Base">Base : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Base" id="Base" style="background-color:transparent">
                        	<option value="0">Pizza &agrave; composer</option>
                        	<option value="1" selected>Pizza Base Tomate</option>
                        	<option value="2">Pizza Base Cr&egrave;me Fra&icirc;che</option>
                        	<option value="3">Pizza Fromage</option>
                        	<option value="4">Pizza Poisson</option>
                        </select>
                    </td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Ingredients">Ingr&eacute;dients : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Ingredients" id="Ingredients" style="width:500px;background-color:transparent" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P1P">Prix 1 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P1P" id="P1P" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P2P">Prix 2 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P2P" id="P2P" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="P4P">Prix 4 pers. : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="P4P" id="P4P" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="image">Image : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="image" id="image" style="width:40px;background-color:transparent" /></td>
               </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
               <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_C" value="Cr&eacute;er" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
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

{else}
<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td colspan="4" style="font-size:13px">&nbsp;</td>
    </tr>
    <tr>
    	<td colspan="4"><div style="overflow:auto; width:100%; height:600px">
        	<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center">
                        <img src="./img/pizzat.png" alt="Pizza" style="margin-left:25px">
                        <a href="index.php?page=pizza&func=create"><img src="./img/creer.png" alt="Cr&eacute;er" align="right" style="margin-right:25%; margin-top:5px" width="100px"></a>
                    </td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center" align="right">
                        <img src="./img/tomatet.png" alt="Base Tomate" class="rouge" style="margin-right:25px">
                    </td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">
                    	<table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr class="rouge" style="font-size:12px">
                                <td width="8px"></td>
                                <td></td>
                                <td width="8%" align="center">
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">1 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">2 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">4 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8px"></td>
                            </tr>
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$tomate item=line key=k}
                                <tr valign="top" class="thumb" onclick="document.location.href='index.php?page=pizza&id={$line.ID}&func=modif">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td background="./img/fond_wh.png"><a href="index.php?page=pizza&id={$line.ID}&func=modif">{if $line.image}<img src="./img/photos/{$line.image}.jpg" alt="" class="grand" />{/if}<span style="font-size:25px">{$tomate.$k.Nom}</span>{if $line.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute; {$image}</span>{/if}<br /><span style="font-size:12px">{$tomate.$k.Ingredient}</span></a></td>
                                    <td class="fond_w transparent" align="center">{$tomate.$k.Prix_1p|replace:'.':","}{if $tomate.$k.Prix_1p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$tomate.$k.Prix_2p|replace:'.':","}{if $tomate.$k.Prix_2p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$tomate.$k.Prix_4p|replace:'.':","}{if $tomate.$k.Prix_4p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="8px"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td colspan="4">&nbsp;</td></tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center">
                        <img src="./img/cft.png" alt="Base Cr&egrave;me Fra&icirc;che" class="rouge" style="margin-left:25px">
                    </td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center" align="right"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">
                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr class="rouge" style="font-size:12px">
                                <td width="8px"></td>
                                <td></td>
                                <td width="8%" align="center">
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">1 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">2 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">4 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8px"></td>
                            </tr>
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$cremef item=line key=k}
                                <tr valign="top">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent"><a href="index.php?page=pizza&id={$line.ID}&func=modif">{if $line.image}<img src="./img/photos/{$line.image}.jpg" alt="" class="grand" />{/if}<span style="font-size:25px">{$cremef.$k.Nom}</span>{if $line.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$cremef.$k.Ingredient}</span></a></td>
                                    <td class="fond_w transparent" align="center">{$cremef.$k.Prix_1p|replace:'.':","}{if $cremef.$k.Prix_1p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$cremef.$k.Prix_2p|replace:'.':","}{if $cremef.$k.Prix_2p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$cremef.$k.Prix_4p|replace:'.':","}{if $cremef.$k.Prix_4p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="8px"></td>
                            </tr>
                     	</table>
                 	</td>
               	</tr>
                <tr>
                	<td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center" align="right"><img src="./img/fromaget.png" alt="Fromage" class="rouge" style="margin-right:25px"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">
                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr class="rouge" style="font-size:12px">
                                <td width="8px"></td>
                                <td></td>
                                <td width="8%" align="center">
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">1 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">2 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">4 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8px"></td>
                            </tr>
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$fr item=line key=k}
                                <tr valign="top">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent"><a href="index.php?page=pizza&id={$line.ID}&func=modif">{if $line.image}<img src="./img/photos/{$line.image}.jpg" alt="" class="grand" />{/if}<span style="font-size:25px">{$fr.$k.Nom}</span>{if $line.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$fr.$k.Ingredient}</span></a></td>
                                    <td class="fond_w transparent" align="center">{$fr.$k.Prix_1p|replace:'.':","}{if $fr.$k.Prix_1p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$fr.$k.Prix_2p|replace:'.':","}{if $fr.$k.Prix_2p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$fr.$k.Prix_4p|replace:'.':","}{if $fr.$k.Prix_4p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="8px"></td>
                            </tr>
                     	</table>
                 	</td>
               	</tr> <tr><td colspan="4">&nbsp;</td></tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center">
                        <img src="./img/poissont.png" alt="Poisson" class="rouge" style="margin-left:25px">
                    </td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center" align="right"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">
                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr class="rouge" style="font-size:12px">
                                <td width="8px"></td>
                                <td></td>
                                <td width="8%" align="center">
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">1 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">2 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">4 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8px"></td>
                            </tr>
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$poi item=line key=k}
                                <tr valign="top">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent"><a href="index.php?page=pizza&id={$line.ID}&func=modif">{if $line.image}<img src="./img/photos/{$line.image}.jpg" alt="" class="grand" />{/if}<span style="font-size:25px">{$poi.$k.Nom}</span>{if $line.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$poi.$k.Ingredient}</span></a></td>
                                    <td class="fond_w transparent" align="center">{$poi.$k.Prix_1p|replace:'.':","}{if $poi.$k.Prix_1p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$poi.$k.Prix_2p|replace:'.':","}{if $poi.$k.Prix_2p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$poi.$k.Prix_4p|replace:'.':","}{if $poi.$k.Prix_4p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="8px"></td>
                            </tr>
                     	</table>
                 	</td>
               	</tr>
                
                <tr>
                	<td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center" align="right"><img src="./img/persot.png" alt="&Agrave; composer vous-m&ecirc;me" class="rouge" style="margin-right:25px"></td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">
                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr class="rouge" style="font-size:12px">
                                <td width="8px"></td>
                                <td></td>
                                <td width="8%" align="center">
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">1 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">2 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8%" align="center">                    	
                                    <table cellpadding="0" cellspacing="0" width="90%">
                                        <tr>
                                            <td><img src="./img/bord-blanc3.png" class="transparent" alt="" height="15px"></td>
                                            <td class="fond_w transparent" width="100%" align="center">4 pers.</td>
                                            <td><img src="./img/bord-blanc2.png" class="transparent" alt="" height="15px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="8px"></td>
                            </tr>
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$perso item=line key=k}
                                <tr valign="top">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent"><a href="index.php?page=pizza&id={$line.ID}&func=modif">{if $line.image}<img src="./img/photos/{$line.image}.jpg" alt="" class="grand" />{/if}<span style="font-size:25px">{$perso.$k.Nom}</span>{if $line.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$perso.$k.Ingredient}</span></a></td>
                                    <td class="fond_w transparent" align="center">{$perso.$k.Prix_1p|replace:'.':","}{if $perso.$k.Prix_1p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$perso.$k.Prix_2p|replace:'.':","}{if $perso.$k.Prix_2p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" align="center">{$perso.$k.Prix_4p|replace:'.':","}{if $perso.$k.Prix_4p>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                            	<td class="fond_w transparent" colspan="6" align="center">Tomate, fromage, plus 3 garnitures au choix.</td>
                            </tr>
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                                <td class="fond_w transparent" colspan="4" width="100%"></td>
                                <td class="fond_w transparent" width="8px"></td>
                            </tr>
                     	</table>
                 	</td>
               	</tr>
            </table></div>
     	</td>
  	</tr>
</table>{/if}