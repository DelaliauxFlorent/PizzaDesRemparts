<table border="0" cellpadding="0" cellspacing="0" width="98%">
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" align="center"><div style="overflow:auto; width:100%; height:600px"><img src="./img/dessertst.png" alt="Desserts" class="fond_r beige" /><br />
            <br />
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                <td class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)" width="100%" align="left">Pour les menus:</td>
                <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
              </tr>
              <tr>
                      <td class="fond_w transparent" width="8px"></td>
                      <td class="fond_w transparent"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                    </tr>
                  {foreach from=$dm item=line key=k name=dessertm}
                  <tr valign="middle">
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:large">{$line.Nom}</span><span style="font-size:small; margin-left:25px">{$line.info}</span></td>
                    <td class="fond_w transparent" align="center" style="font-size:large">{$line.Prix1|replace:'.':","}{if $line.Prix1>0}&euro;{/if}</td>
                    <td class="fond_w transparent" width="8px"></td>
                  </tr>
                  {/foreach}
                  <tr>
                    <td width="8px"><img src="./img/bord-blanc-a.png" class="transparent" alt="" width="8px" /></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent"></td>
                    <td class="fond_w transparent" width="8px"></td>
                  
              </tr>
              <tr>
                <td colspan="4">&nbsp;</td>
              </tr>
              <tr>
                <td width="8px"><img src="./img/bord-beige1.png" width="8px" alt="" /></td>
                <td class="rouge" style="background-repeat:repeat-x; background-position:center; font-size:24px;background-image:url(./img/fond-beige.png)" align="left">D&eacute;lices</td>
                <td style="background-repeat:repeat-x; background-position:center;background-image:url(./img/fond-beige.png)"></td>
                <td width="8px"><img src="./img/bord-beige2.png" width="8px" alt="" /></td>
              </tr>
              <tr>
                <td colspan="4"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                      <td class="fond_w transparent" width="8px"></td>
                      <td class="fond_w transparent"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td class="fond_w transparent" width="10%"></td>
                      <td width="8px"><img src="./img/bord-blanc-b.png" class="transparent" alt="" width="8px" /></td>
                    </tr>
                  {foreach from=$deli1 item=linedel1 key=k name=delice1}
                  <tr valign="middle">
                    <td class="fond_w transparent" width="8px"></td>
                    <td class="fond_w transparent" align="left"><span style="font-size:large">{$linedel1.Nom}</span><span style="font-size:small; margin-left:25px">{$linedel1.info}</span></td>
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
                    <td class="fond_w transparent" align="left"><span style="font-size:large">{$linedel2.Nom}</span><span style="font-size:small; margin-left:25px">{$linedel2.info}</span></td>
                    <td class="fond_w transparent" align="center" style="font-size:20px">{$linedel2.Prix1|replace:'.':","}{if $linedel2.Prix1>0}&euro;{/if}</td>
                    <td class="fond_w transparent" align="center" style="font-size:20px">{$linedel2.Prix2|replace:'.':","}{if $linedel2.Prix2>0}&euro;{/if}</td>
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
                </table></td>
              </tr>
              
            </table>
    </div></td>
  </tr>
</table>
