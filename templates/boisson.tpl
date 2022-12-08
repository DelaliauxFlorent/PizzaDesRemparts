
<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td colspan="4">&nbsp;</td>
    </tr>
    <tr>
    	<td colspan="4" align="center"><div style="overflow:auto; width:100%; height:600px">
        <img src="./img/boissonst.png" alt="Boissons" class="fond_r beige" /><br /><br />
        	<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td align="left" class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)">Boissons (sans alcool)</td>
                    <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
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
                                    <td class="fond_w transparent" align="center">{$bsa.$k.Volume}</td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$bsa.$k.Prix|replace:'.':","}{if $bsa.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                            	<td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent" colspan="3" align="center" style="font-size:14px">Autres choix disponible, nous consulter.</td>
                            	<td class="fond_w transparent" width="8px"></td>
                            </tr>
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
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
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)" align="left">Vins ros&eacute;*</td>
                    <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
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
                                    <td class="fond_w transparent" align="center">{$rose.$k.Volume}</td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$rose.$k.Prix|replace:'.':","}{if $rose.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
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
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)" align="left">Vins rouge*</td>
                    <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
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
                                    <td class="fond_w transparent" align="center">{$rouge.$k.Volume}</td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$rouge.$k.Prix|replace:'.':","}{if $rouge.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
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
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)" align="left">Bi&egrave;res*</td>
                    <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                    <td colspan="4">                    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="fond_w transparent" width="8px"></td>
                                <td class="fond_w transparent"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td class="fond_w transparent" width="10%"></td>
                                <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
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
                                    <td class="fond_w transparent" align="center">{$biere.$k.Volume}</td>
                                    <td class="fond_w transparent" align="center" style="font-size:20px">{$biere.$k.Prix|replace:'.':","}{if $biere.$k.Prix>0}&euro;{/if}</td>
                                    <td class="fond_w transparent" width="8px"></td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
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
                	<td width="8px"><img src="./img/bord-rouge1.png" alt="" width="8px" /></td>
                    <td class="fond_r beige" colspan="2" align="center">* L'abus d'alcool est dangereux pour la sant&eacute; - &Agrave; consommer avec mod&eacute;ration.</td>
                    <td width="8px"><img src="./img/bord-rouge2.png" alt="" width="8px" /></td>
                </tr>
			</table></div>
     	</td>
  	</tr>
</table>