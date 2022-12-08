<?php

//////////////////////////////////////////////
// Liste des fonctions                      //
//////////////////////////////////////////////

function GoToIndex() {
	$sURIParams = "index.php";
	header("location: {$sURIParams}");
  	exit();
}

?>