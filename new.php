<?php 

	require('config.php');
	require('database.php');
	$link = db_connect();

	require('models/films.php');

	if ( array_key_exists('add-film', $_POST)) {
		// film_new($link);

		if ( $_POST['title'] == '') {
			$errors[] = "Название фильма не может быть пустым";
		}
		if ( $_POST['genre'] == '') {
			$errors[] = "Название жанра не должно быть пустым";
		}
		if ( $_POST['year'] == '') {
			$errors[] = "Заполните год выпуска, пожалуйста";
		}

		if ( empty($errors)) {
			$result = film_new($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_POST['description']);

			if ($result) {
				$resultSuccess = "Фильм был успешно добавлен!";
			} else {
				$resultError = "Что-то пошло не так. Добавьте фильм еще раз!";
			}
		}
	}

	include('views/head.tpl');
	include('views/new-film.tpl');
	include('views/footer.tpl');

 ?>

 