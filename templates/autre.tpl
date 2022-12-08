<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td style="font-size:13px" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" width="50%" valign="top">
        	<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td align="left" style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"><img src="./img/salade.png" alt="Salade" class="rouge" style="margin-left:25px" /></td>
                    <td align="right" style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)">De Mai à Septembre</td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                </tr>
                {foreach from=$sal item=salade}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:25px">{$salade.Nom}</span>{if $salade.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$salade.Ingredient}</span></td>                    
                    <td class="fond_w transparent" align="center" width="8%" valign="top"><span style="font-size:20px">{$salade.Prix_1p|replace:'.':","}&euro;</span></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                {/foreach}
                <tr>
                	<td colspan="4" class="fond_w transparent" height="10px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent" style="font-size:20px">Sauce salade en accompagnement</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>                
                <tr>
                	<td colspan="4" height="8px"></td>
                </tr>
                <tr>
                    <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    <td colspan="2" align="right" style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"><img src="./img/brusch.png" alt="Bruschetta" class="rouge" style="margin-right:25px" /></td>
                    <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                </tr>
                {foreach from=$bru item=brusch}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:25px">{$brusch.Nom}</span>{if $brusch.New=='1'}<span style="margin-left:25px" class="rouge">Nouveaut&eacute;</span>{/if}<br /><span style="font-size:12px">{$brusch.Ingredient}</span></td>                    
                    <td class="fond_w transparent" align="center" width="8%" valign="top"><span style="font-size:20px">{$brusch.Prix_1p|replace:'.':","}&euro;</span></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                {/foreach}
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
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
                            	<td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                    			<td class="fond_b rouge" style="font-size:large" width="18%" align="left">{$autre.Nom}</td>
                                <td class="fond_b" style="font-size:small"><i>{$autre.info}</i></td>
                                <td class="fond_b" width="50%" align="right"><span style="font-size:larger">{$autre.Prix|replace:'.':","}&euro;</span>&nbsp;<span style="font-size:small"><i>{$autre.prec}</i></span></td>
                                <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
                            </tr>
                            {if $autre.ID==2}
                            	<tr>
                					<td colspan="5" height="3px"></td>
               					</tr>
                				<tr>
                					<td width="8px" class="fond_w transparent"></td>
                               	    <td colspan="3" class="fond_w transparent"></td>
                                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                                </tr>
                                <tr>
                                	<td width="8px" class="fond_w transparent"></td>
                                    <td class="fond_w transparent" align="left">Pour vos ap&eacute;ritifs:</td>
                                    <td colspan="2" class="fond_w transparent" align="left">&Eacute;paule, olives, chorizo, ch&egrave;vre, tomates fra&icirc;ches, merguez, saumon.</td>
                                    <td width="8px" class="fond_w transparent"></td>
                                </tr>
                                <tr>
                                    <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                                    <td colspan="3" class="fond_w transparent"></td>
                                    <td width="8px" class="fond_w transparent"></td>
                                </tr>
                            {/if}
                        </table>
                        
                        
                    </td>
                </tr>
                {/foreach}
            </table>
        </td>
    	<td align="center" width="50%">
        	<table border="0" cellpadding="0" cellspacing="0" width="350px">
            	<tr>
                	<td colspan="5"><img src="./img/cowboy.png" alt="Au coin des Cowboys" /></td>
                </tr>
                <tr><td height="3px" colspan="5"></td></tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="3" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>                
                </tr>
                {assign var="i" value=0}
                {foreach from=$type_cb key=k item=element name=cow}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" rowspan="2" align="left">{foreach from=$nomcb.$k item=cb name=lg}{if $smarty.foreach.lg.first}<span style="font-size:24px">{elseif $smarty.foreach.lg.last}<span style="font-size:small"><i>{/if}{$cb}{if $smarty.foreach.lg.first}</span>{elseif $smarty.foreach.lg.last}</i></span>{/if}<br />{/foreach}</td>
                    <td class="fond_w transparent">{$infocb.$i.Format}</td>
                    <td class="fond_w transparent">{$infocb.$i.Prix}&euro;</td>
                    <td width="8px" class="fond_w transparent"></td>                
                </tr>
                {assign var="i" value=$i+1}
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent">{$infocb.$i.Format}</td>
                    <td class="fond_w transparent">{$infocb.$i.Prix}&euro;</td>
                    <td width="8px" class="fond_w transparent"></td>     
                </tr>                
                {assign var="i" value=$i+1}
                {if $smarty.foreach.cow.last}{else}
                <tr><td class="fond_w transparent" height="3px" colspan="5"></td></tr>{/if}
                {/foreach}
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                    <td colspan="3" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>                
                </tr>
                <tr><td height="8px" colspan="5"></td></tr>
                <tr>
                	<td width="8px"><img src="./img/bord-beige1.png" alt="" width="8px" /></td>
                    <td colspan="3" class="fond_b rouge" align="left">Garnitures:</td>
                    <td width="8px"><img src="./img/bord-beige2.png" alt="" width="8px" /></td>
                </tr>
                <tr>
                	<td height="3px" colspan="4"></td>
                </tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
               	</tr>
                <tr>
                  	<td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" colspan="3" align="left">{$sup.Liste}</td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
                <tr>
                  	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                    <td class="fond_w transparent" colspan="3"></td>
                    <td class="fond_w transparent" width="8px"></td>
               	</tr>
            </table>
        </td>
  	</tr>
</table>