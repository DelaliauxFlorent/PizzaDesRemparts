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
            <input type="hidden" name="page" value="desserts" />
            <input type="hidden" name="id" value="{$dess_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="13"></td>
                	<td class="fond_w transparent" align="left"><label class="large" for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" value="{$dess_M.Nom}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="13"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Info">Info : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Info" id="Info" value="{$dess_M.info}" style="background-color:transparent" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Prix1">Prix de base : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix1" id="Prix1" value="{$dess_M.Prix1}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Prix2">Prix&nbsp;suppl&eacute;mentaire : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix2" id="Prix2" value="{$dess_M.Prix2}" style="width:40px;background-color:transparent; text-align:right" />&euro; (optionnel)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
               		<td class="fond_w transparent" align="left"><label class="large" for="menu">Pour les menus : </label></td>
                    <td class="fond_w transparent" align="left"><input type="checkbox" name="menu" id="menu" value="{$dess_M.menu}" /></td>
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
            <input type="hidden" name="page" value="desserts" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="11"></td>
                	<td class="fond_w transparent" align="left"><label class="large" for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="11"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Info">Info : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Info" id="Info" style="background-color:transparent" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Prix1">Prix de base : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix1" id="Prix1" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="Prix2">Prix&nbsp;suppl&eacute;mentaire : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix2" id="Prix2" style="width:40px;background-color:transparent; text-align:right" />&euro; (optionnel)</td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label class="large" for="menu">Pour les menus : </label></td>
                    <td class="fond_w transparent" align="left"><input type="checkbox" name="menu" id="menu" /></td>
                </tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" height="3px"></td>
                </tr>
                <tr>
                    <td colspan="2" class="fond_w transparent" align="center"><input type="submit"  style="width:100px" name="conf_C" value="Cr&eacute;er" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
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
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" align="center"><div style="overflow:auto; width:100%; height:600px"> <img src="./img/dessertst.png" alt="Desserts" class="fond_r beige">&nbsp;&nbsp;&nbsp;<a href="index.php?page=desserts&func=create"><img src="./img/creer.png" alt="Cr&eacute;er" /></a><br />
            <br />
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" width="100%" align="left">Pour les menus:</td>
                <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
              </tr>
              <tr>
                      <td class="fond_w transparent" width="8px"></td>
                      <td class="fond_w transparent"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                    </tr>
                  {foreach from=$dm item=line key=k name=dessertm}
                  <tr valign="middle">
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:large"><a href="index.php?page=desserts&id={$line.ID}&func=modif">{$line.Nom}</a></span><span style="font-size:small; margin-left:25px">{$line.info}</span></td>
                    <td class="fond_w transparent" align="center" style="font-size:large">{$line.Prix1|replace:'.':","}{if $line.Prix1>0}&euro;{/if}</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  {/foreach}
                  <tr>
                    <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent" width="8px"></td>
                  
              </tr>
              <tr>
                <td colspan="4">&nbsp;</td>
              </tr>
              <tr>
                <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" align="left">D&eacute;lices</td>
                <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
              </tr>
              <tr>
                <td colspan="4"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                      <td class="fond_w transparent" width="8px"></td>
                      <td class="fond_w transparent"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                    </tr>
                  {foreach from=$deli1 item=linedel1 key=k name=delice1}
                  <tr valign="middle">
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:large"><a href="index.php?page=desserts&id={$linedel1.ID}&func=modif">{$linedel1.Nom}</a></span><span style="font-size:small; margin-left:25px">{$linedel1.info}</span></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="center" style="font-size:20px">{$linedel1.Prix1|replace:'.':","}{if $linedel1.Prix1>0}&euro;{/if}</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  {/foreach} 
                  <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="center" style="font-size:12px">100ml</td>
                    <td class="fond_w transparent" align="center" style="font-size:12px">500ml</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  {foreach from=$deli2 item=linedel2 key=k name=delice2}
                  <tr valign="middle">
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:large"><a href="index.php?page=desserts&id={$linedel2.ID}&func=modif">{$linedel2.Nom}</a></span><span style="font-size:small; margin-left:25px">{$linedel2.info}</span></td>
                    <td class="fond_w transparent" align="center" style="font-size:20px">{$linedel2.Prix1|replace:'.':","}{if $linedel2.Prix1>0}&euro;{/if}</td>
                    <td class="fond_w transparent" align="center" style="font-size:20px">{$linedel2.Prix2|replace:'.':","}{if $linedel2.Prix2>0}&euro;{/if}</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  {/foreach}                  
                  <tr>
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="center" style="font-size:14px">Autres Choix disponible, nous consulter.</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  <tr>
                    <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                </table></td>
              </tr>
              
            </table>
    </div></td>
  </tr>
</table>
{/if}