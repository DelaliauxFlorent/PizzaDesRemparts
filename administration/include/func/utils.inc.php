<?php
//////////////////////////////////////////////
// Liste des fonctions                      //
//////////////////////////////////////////////

function GoToIndex() {
	$sURIParams = "index.php";
	header("location: {$sURIParams}");
  	exit();
}

function GoToPizza() {
	$sURIParams = "index.php?page=pizza";
	header("location: {$sURIParams}");
  	exit();
}

function GoToBoisson() {
	$sURIParams = "index.php?page=boisson";
	header("location: {$sURIParams}");
  	exit();
}

function GoToDessert() {
	$sURIParams = "index.php?page=desserts";
	header("location: {$sURIParams}");
  	exit();
}

function GoToMenu() {
	$sURIParams = "index.php?page=menu";
	header("location: {$sURIParams}");
  	exit();
}

function GoToInfo() {
	$sURIParams = "index.php?page=info";
	header("location: {$sURIParams}");
  	exit();
}

function GoToAutre() {
	$sURIParams = "index.php?page=autre";
	header("location: {$sURIParams}");
  	exit();
}

?>