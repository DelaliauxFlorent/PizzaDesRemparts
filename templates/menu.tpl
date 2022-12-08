
<table border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
    	<td style="font-size:13px">&nbsp;</td>
    </tr>
    <tr>
    	<td align="center"><div style="overflow:auto; width:100%; height:600px">
        	<img src="./img/menut.png" alt="Menus" class="fond_r beige" /><br /><br />
        	
            <table border="0" cellpadding="0" cellspacing="0" width="100%">{foreach from=$menu item=liste key=k}
            	<tr>
                	<td width="8px"><img src="./img/bord-beige1.png" alt="" width="8px" /></td>
                    <td class="fond_b rouge" align="left">Menu {$liste.Nom}{if $liste.New=='1'}<span style="margin-left:25px" class="vert">Nouveaut&eacute;</span>{/if}</td>
                    <td class="fond_b" align="right">{$liste.Prix}&euro;</td>
                    <td width="8px"><img src="./img/bord-beige2.png" alt="" width="8px" /></td>
                </tr>
                <tr>
                	<td colspan="4" height="3px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                </tr>
                <tr style="font-size:18px">
                	<td width="8px" class="fond_w transparent"></td>
                    <td colspan="2" align="center" class="fond_w transparent">{foreach from=$compo.$k key=i item=ligne}{$ligne}<br />
                      {/foreach}</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                    <td colspan="2" class="fond_w transparent"></td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td colspan="4" height="8px"></td>
                </tr>{/foreach}
            </table>
            
        </div></td>
  	</tr>
</table>