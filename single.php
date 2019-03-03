<?php 

	require('config.php');
	require('database.php');
	$link = db_connect();
	require('models/films.php');

	// $errors = array();

	if ( @$_GET['action'] == 'delete' ) {

		$result = film_delete($link, $_GET['id']);

		if ( $result) {
			$resultinfo = "Фильм был удален!";
		} 
	}

	$film = get_film($link, $_GET['id']);

	include('views/head.tpl');
	include('views/notifications.tpl');
	include('views/film-single.tpl');
	include('views/footer.tpl');
?>