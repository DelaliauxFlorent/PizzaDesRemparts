{include file="header.tpl"}
<table border="0" cellpadding="0" cellspacing="0" id="page" style="table-layout: fixed">
	<tr bgcolor="#f6e7a2">
    	<td width="15px" height="100px"></td>
      <td width="200px" align="center"><a href="index.php"><img src="./img/logopizza100.png" alt="" /></a></td>
      <td width="20px"></td>
        <td align="center" width="100%"><h1>Pizza des Remparts</h1></td>
        <td width="235px" align="center">
        	<table cellpadding="0" border="0" cellspacing="0">
            	<tr>
                	<td height="12px"><img src="./img/bord-rougea.png" alt="" width="12px" /></td>
                    <td class="fond_r"></td>
                    <td class="fond_r"></td>
                </tr>
                <tr>
                	<td class="fond_r"></td>
                    <td class="beige fond_r" style="font-size:30px">{$info.Tel}</td>
                    <td class="fond_r"></td>
                </tr>                
                <tr>
                	<td class="fond_r"></td>
                    <td class="fond_r"></td>
                    <td height="12px"><img src="./img/bord-rougeb.png" alt="" width="12px" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
    	<td width="15px">&nbsp;</td>
        <td valign="top">
        	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="font-size:18px">
            	<tr>
                	<td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                	<td height="25px" width="8px"><img src="./img/bord-beige1.png" height="25px" alt="" /></td>
                    <td height="25px" class="rouge fond_b">Plan du site</td>
                    <td height="25px" width="8px"><img src="./img/bord-beige2.png" height="25px" alt="" /></td>
                </tr>
                <tr><td height="3px" colspan="3"></td></tr>
                <tr>
                	<td width="8px" class="transparent fond_w"></td>
                    <td class="transparent fond_w"><a href="index.php?page=pizza">Pizzas</a></td>
                    <td width="8px"><img src="./img/bord-blanc2.png" width="8px" class="transparent" alt="" /></td>
                </tr>
                <tr>
                	<td width="8px" class="transparent fond_w"></td>
                    <td class="transparent fond_w"><a href="index.php?page=autre">Autres</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td width="8px" bgcolor="#FFFFFF" class="transparent fond_w"></td>
                    <td class="transparent fond_w"><a href="index.php?page=menu">Menus</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td width="8px" class="transparent fond_w"></td>
                    <td class="transparent fond_w"><a href="index.php?page=desserts">Desserts</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc1.png" width="8px" class="transparent" alt="" /></td>
                    <td class="transparent fond_w"><a href="index.php?page=boisson">Boissons</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td height="25px" width="8px"><img src="./img/bord-beige1.png" height="25px" alt="" /></td>
                    <td height="25px" class="rouge fond_b">A Propos de nous</td>
                    <td height="25px" width="8px"><img src="./img/bord-beige2.png" height="25px" alt="" /></td>
                </tr>
                <tr><td height="3px" colspan="3"></td></tr>
                <tr>
                	<td width="8px" class="transparent fond_w"></td>
                    <td class="transparent fond_w"><a href="index.php?page=localisation">O&ugrave; nous trouver</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc1.png" width="8px" class="transparent" alt="" /></td>
                    <td class="transparent fond_w"><a href="index.php?page=payment">Moyens de paiement</a></td>
                    <td width="8px" class="transparent fond_w"></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-rougea.png" width="8px" alt="" /></td>
                    <td class="fond_r"></td>
	                <td class="fond_r" width="8px"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_r"></td>
                    <td class="fond_r beige" align="center" style="font-size:14px">{$info.horaire|replace:'à':'&agrave;'}</td>
                    <td width="8px" class="fond_r"></td>
                </tr>
                <tr>
                	<td class="fond_r" width="8px"></td>
                    <td class="fond_r"></td>
                    <td width="8px"><img src="./img/bord-rougeb.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_v"></td>
                    <td align="center" class="beige fond_v" style="font-size:14px">Pour toute livraisons &agrave;</td>
                    <td width="8px"><img src="./img/bord-vert4.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_v"></td>
                    <td align="center" class="beige fond_v" style="font-size:14px">domicile, pr&eacute;voir {$livr.suppl}&euro;</td>
                    <td width="8px" class="fond_v"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_v"></td>
                    <td align="center" class="beige fond_v" style="font-size:14px">suppl&eacute;mentaire par pizza livr&eacute;e.</td>
                    <td width="8px" class="fond_v"></td>
                </tr>
                <tr><td colspan="3" class="fond_v" height="5px"></td></tr>
                <tr>
                	<td width="8px" class="fond_v"></td>
                    <td align="center" class="beige fond_v" style="font-size:14px">&Agrave; partir de {$livr.pizza} pizzas</td>
                    <td width="8px" class="fond_v"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-vert3.png" width="8px" alt="" /></td>
                    <td align="center" class="beige fond_v" style="font-size:14px">le suppl&eacute;ment reste &agrave; {$livr.suppl_max}&euro;</td>
                    <td width="8px" class="fond_v"></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-blanc3.png" class="transparent" width="8px" alt="" /></td>
                    <td class="fond_w transparent" style="font-size:14px" align="center">Par mesure de s&eacute;curit&eacute;,</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" style="font-size:14px" align="center">nos livreurs n'ont pas plus de</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" style="font-size:14px" align="center">{$livr.appoint}&euro; sur eux.</td>
                    <td width="8px" class="fond_w transparent"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_w transparent"></td>
                    <td class="fond_w transparent" style="font-size:14px" align="center">Veuillez faire l'appoint. Merci.</td>
                    <td width="8px"><img src="./img/bord-blanc4.png" class="transparent" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_r"></td>
                    <td class="fond_r beige" style="font-size:14px" align="center">Point Fid&eacute;lit&eacute;:</td>
                    <td width="8px"><img src="./img/bord-rouge4.png" width="8px" alt="" /></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_r"></td>
                    <td class="fond_r beige" style="font-size:14px" align="center">1 pizza 1 pers. = {$fidel.pts_1p} point{if $fidel.pts_1p>1}s{/if}</td>
                    <td width="8px" class="fond_r"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_r"></td>
                    <td class="fond_r beige" style="font-size:14px" align="center">1 pizza 2 pers. = {$fidel.pts_2p} point{if $fidel.pts_2p>1}s{/if}</td>
                    <td width="8px" class="fond_r"></td>
                </tr>
                <tr>
                	<td width="8px" class="fond_r"></td>
                    <td class="fond_r beige" style="font-size:14px" align="center">1 pizza 4 pers. = {$fidel.pts_4p} point{if $fidel.pts_4p>1}s{/if}</td>
                    <td width="8px" class="fond_r"></td>
                </tr>
                <tr>
                	<td width="8px"><img src="./img/bord-rouge3.png" width="8px" alt="" /></td>
                    <td class="fond_r beige" style="font-size:14px" align="center">{$fidel.pts_reduc} points = {$fidel.reduc}&euro; de r&eacute;duction.</td>
                    <td width="8px" class="fond_r"></td>
                </tr>
                <tr>
                	<td height="3px" colspan="3"></td>
                </tr>
                <tr>
                <td colspan="3" align="center"><!-- AddThis Button BEGIN -->
<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-

4fb5a2c155e5b891"><img src="http://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" 

height="16" alt="Bookmark and Share" style="border:0"/></a>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-

4fb5a2c155e5b891"></script>
<!-- AddThis Button END --></td>
                </tr>
            </table>
        </td>
        <td width="20px">&nbsp;</td>
        <td valign="top" colspan="3">{include file=$tpl2include|default:'accueil.tpl'}</td>
    </tr>
    <tr class="fond_v">
    	<td colspan="5" height="40px" align="center">
        	<table border="0" cellpadding="0" cellspacing="0" width="95%">
            	<tr>
                	<td width="200px"><a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.pizza-des-remparts.fr%2Findex.php"><img src="./img/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" height="31" width="88" /></a></td>
                    <td align="center"><a href="index.php?page=legal" class="beige">Mentions L&eacute;gales</a></td>
                    <td width="200px" align="right">&nbsp;</td>
                </tr>
            </table></td>
  </tr>
</table>
{include file="footer.tpl"}
