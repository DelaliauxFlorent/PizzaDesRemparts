{if (isset($smarty.get.id))}
    {if ((isset($smarty.get.func)) && ($smarty.get.func == 'modif'))}
    	<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier                                 //
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
            <input type="hidden" name="page" value="menu" />
            <input type="hidden" name="id" value="{$menu_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="9"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" value="{$menu_M.Nom}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="9"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left" valign="top"><label for="Menu">Menu : </label></td>
                    <td class="fond_w transparent" align="left"><textarea name="Menu" id="Menu" rows="4" cols="40">{$menu_M.Menu|replace:'<br />':""}</textarea></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" value="{$menu_M.Prix}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="new">Nouveaut&eacute;e : </label></td>
                    <td class="fond_w transparent" align="left"><input type="checkbox" name="new" id="new"{if $menu_M.New==1} checked{/if} /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_M" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table>
    {/if}
{elseif ((isset($smarty.get.func)) && ($smarty.get.func == 'create'))}

<table border="0" cellpadding="0" cellspacing="0" width="98%" id="page"><!--[if IE]><tr>
    	<td colspan="2" height="100px"></td>
    </tr><![endif]-->
    {if $opera==1}
    	<tr>
    		<td colspan="2" height="100px"></td>
    	</tr>
    {/if}<tr><td align="center" valign="middle">
            <form method="get" action="index.php">
            <input type="hidden" name="page" value="menu" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="7"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="7"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left" valign="top"><label for="Menu">Menu : </label></td>
                    <td class="fond_w transparent" align="left"><textarea name="Menu" id="Menu" rows="4" cols="40"></textarea></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_C" value="Cr&eacute;er" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
                <tr>
                	<td><img src="./img/bord-blanc-a.png" alt="" class="transparent" width="20px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                </tr>  
            </table>
            </form></td></tr></table>

{else}
<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td style="font-size:13px">&nbsp;</td>
    </tr>
    <tr>
    	<td align="center"><div style="overflow:auto; width:100%; height:600px">
        	<img src="./img/menut.png" alt="Menus" class="fond_r beige">&nbsp;&nbsp;&nbsp;<a href="index.php?page=menu&func=create"><img src="./img/creer.png" alt="Cr&eacute;er" /></a><br /><br />
        	
            <table border="0" cellpadding="0" cellspacing="0" width="100%">{foreach from=$menu item=liste key=k}
            	<tr>
                	<td width="8px"><img src="./img/bord-beige1.png" alt="" width="8px"></td>
                    <td class="fond_b rouge" align="left"><a href="index.php?page=menu&id={$liste.ID}&func=modif" class="rouge">Menu {$liste.Nom}</a>{if $liste.New=='1'}<span style="margin-left:25px" class="vert">Nouveaut&eacute;</span>{/if}</td>
                    <td class="fond_b" align="right">{$liste.Prix|replace:'.':","}&euro;</td>
                    <td width="8px"><img src="./img/bord-beige2.png" alt="" width="8px"></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                </tr>
                <tr style="font-size:18px">
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" align="center" class="fond_w transparent">{$liste.Menu}</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td colspan="4" height="8px"></td>
                </tr>{/foreach}
            </table>
            
        </div></td>
  	</tr>
</table>{/if}