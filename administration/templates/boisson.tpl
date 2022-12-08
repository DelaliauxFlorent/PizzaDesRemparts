{if (isset($smarty.get.id))}
    {if ((isset($smarty.get.func)) && ($smarty.get.func == 'modif'))}
    	<!--
			
				//////////////////////////////////////////////////////////
				//   Modifier                                //
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
            <input type="hidden" name="page" value="boisson" />
            <input type="hidden" name="id" value="{$boi_M.ID}" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="11"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" value="{$boi_M.Nom}" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="11"></td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Type">Type : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Type" id="Type" style="background-color:transparent">
                        	<option value="1" {if $boi_M.Type==1} selected{/if}>Boissons (sans alcool)</option>
                        	<option value="2" {if $boi_M.Type==2} selected{/if}>Vins ros&eacute;</option>
                        	<option value="3" {if $boi_M.Type==3} selected{/if}>Vins rouge</option>
                        	<option value="4" {if $boi_M.Type==4} selected{/if}>Bi&egrave;res</option>
                        </select>
                    </td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Volume">Volume : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Volume" id="Volume" style="width:40px;background-color:transparent; text-align:right" value="{$boi_M.Volume}" /></td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" value="{$boi_M.Prix}" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                    <td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_M" value="Modifier" />&nbsp;&nbsp;&nbsp;<input type="reset"  style="width:100px" value="Annuler" /></td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" colspan="2" align="center"><input type="submit"  style="width:100px" name="conf_D" value="Supprimer" /></td>
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
            <input type="hidden" name="page" value="boisson" />
            <table border="0" cellpadding="0" cellspacing="0">  
            	<tr>
                	<td class="fond_w transparent" colspan="3"></td>
                    <td><img src="./img/bord-blanc-b.png" alt="" class="transparent" width="20px" /></td>
                </tr>          	
                <tr>
                    <td class="fond_w transparent" rowspan="9"></td>
                	<td class="fond_w transparent" align="left"><label for="Nom">Nom : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Nom" id="Nom" style="background-color:transparent" /></td>
                    <td class="fond_w transparent" rowspan="9"></td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Type">Type : </label></td>
                    <td class="fond_w transparent" align="left">
                    	<select name="Type" id="Type" style="background-color:transparent">
                        	<option value="1">Boissons (sans alcool)</option>
                        	<option value="2">Vins ros&eacute;</option>
                        	<option value="3">Vins rouge</option>
                        	<option value="4">Bi&egrave;res</option>
                        </select>
                    </td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Volume">Volume : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Volume" id="Volume" style="width:40px;background-color:transparent; text-align:right" /></td>
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
    			</tr>
                <tr>
                	<td class="fond_w transparent" align="left"><label for="Prix">Prix : </label></td>
                    <td class="fond_w transparent" align="left"><input type="text" name="Prix" id="Prix" style="width:40px;background-color:transparent; text-align:right" />&euro;</td>                    
                </tr>
    			<tr>
    				<td colspan="2" class="fond_w transparent" height="3px"></td>
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
    	<td colspan="4">&nbsp;</td>
    </tr>
    <tr>
    	<td colspan="4" align="center"><div style="overflow:auto; width:100%; height:600px">
            <img src="./img/boissonst.png" alt="Boissons" class="fond_r beige">&nbsp;&nbsp;&nbsp;<a href="index.php?page=boisson&func=create"><img src="./img/creer.png" alt="Cr&eacute;er" /></a><br /><br />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" align="left">Boissons (sans alcool)</td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$bsa item=line key=k name=bsa}
                                <tr valign="middle">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent" align="left">
                                    	{if $smarty.foreach.bsa.first}
                                        	{$bsa.$k.Nom}
                                        {else}
                                        	{assign var="prev" value=$k-1}
                                            {if $bsa.$prev.Nom ne $bsa.$k.Nom}
                                            	{$bsa.$k.Nom}
                                            {/if}
                                        {/if}
                                    </td>
                                    <td class="fond_w transparent" align="center"><a href="index.php?page=boisson&id={$bsa.$k.ID}&func=modif">{$bsa.$k.Volume}</a></td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$bsa.$k.Prix|replace:'.':","}{if $bsa.$k.Prix>0}&euro;{/if}</td>
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
                     	</table>
                 	</td>
               	</tr>
                <tr>
                	<td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt=""></td>
                    <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" align="left">Vins ros&eacute;*</td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$rose item=line key=k name=rose}
                                <tr valign="middle">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent" align="left">
                                    	{if $smarty.foreach.rose.first}
                                        	{$rose.$k.Nom}
                                        {else}
                                        	{assign var="prev" value=$k-1}
                                            {if $rose.$prev.Nom ne $rose.$k.Nom}
                                            	{$rose.$k.Nom}
                                            {/if}
                                        {/if}
                                    </td>
                                    <td class="fond_w transparent" align="center"><a href="index.php?page=boisson&id={$rose.$k.ID}&func=modif">{$rose.$k.Volume}</a></td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$rose.$k.Prix|replace:'.':","}{if $rose.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
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
                    <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" align="left">Vins rouge*</td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$rouge item=line key=k name=rouge}
                                <tr valign="middle">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent" align="left">
                                    	{if $smarty.foreach.rouge.first}
                                        	{$rouge.$k.Nom}
                                        {else}
                                        	{assign var="prev" value=$k-1}
                                            {if $rouge.$prev.Nom ne $rouge.$k.Nom}
                                            	{$rouge.$k.Nom}
                                            {/if}
                                        {/if}
                                    </td>
                                    <td class="fond_w transparent" align="center"><a href="index.php?page=boisson&id={$rouge.$k.ID}&func=modif">{$rouge.$k.Volume}</a></td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$rouge.$k.Prix|replace:'.':","}{if $rouge.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
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
                    <td background="./img/fond-beige.png" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px" align="left">Bi&egrave;res*</td>
                    <td background="./img/fond-beige.png" style="background-repeat:repeat-x; background-position:center"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt=""></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px"></td>
                            </tr>
                            {foreach from=$biere item=line key=k name=biere}
                            	<tr valign="middle">
                                    <td class="fond_w transparent" width="8px"></td>
                                    <td class="fond_w transparent" align="left">
                                    	{if $smarty.foreach.biere.first}
                                        	{$biere.$k.Nom}
                                        {else}
                                        	{assign var="prev" value=$k-1}
                                            {if $biere.$prev.Nom ne $biere.$k.Nom}
                                            	{$biere.$k.Nom}
                                            {/if}
                                        {/if}
                                    </td>
                                    <td class="fond_w transparent" align="center"><a href="index.php?page=boisson&id={$biere.$k.ID}&func=modif">{$biere.$k.Volume}</a></td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$biere.$k.Prix|replace:'.':","}{if $biere.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px"></td>
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
                	<td width="8px"><img src="./img/bord-rouge1.png" alt="" width="8px"></td>
                    <td class="fond_r beige" colspan="2" align="center">* L'abus d'alcool est dangereux pour la sant&eacute; - &Agrave; consommer avec mod&eacute;ration.</td>
                    <td width="8px"><img src="./img/bord-rouge2.png" alt="" width="8px"></td>
                </tr>
			</table></div>
   	  </td>
  	</tr>
</table>{/if}