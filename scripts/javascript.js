// JavaScript Document

window.onload=montre;
function montre(id) {
var d = document.getElementById(id);
	for (var i = 1; i<=10; i++) {
		if (document.getElementById('smenu'+i)) {document.getElementById('smenu'+i).style.display='none';}
	}
if (d) {d.style.display='block';}
}

///////////////////////////////

function modif(n_value, n_id)
{
	var id=document.getElementById(n_id);
	id.value = n_value;
}

///////////////////////////////

function check(nbre)
{
	for (var i=1; i<=nbre; i++)
	{
		var nid='chkbx'+i;
		var a=document.getElementById(nid);
		if (a.checked == true)
		{
			a.checked = false;	
		}
		else if (a.checked == false)
		{
			a.checked = true;	
		}
	}
}

//////////////////////////////////

function closepopup(val)
{
	for (var i=0; i<=100; i++)
	{
		if (i!= val)
		{
			var nom = "maFenetre"+i;
			var popup = window.document.title;
			if (popup == nom)
			{
				maFenetre+i.close();
			}
		}
	}
}

//////////////////////////////////////
