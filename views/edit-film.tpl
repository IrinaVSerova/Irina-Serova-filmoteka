<body class="index-page">
	<div class="container user-content section-page">
		<div class="title-1">Фильм <?=$film['title']?></div>
		<div class="panel-holder mt-40 mb-40">
			<div class="title-3 mt-0">Редактировать фильм</div>
			<form enctype="multipart/form-data" action="edit.php?id=<?=$film['id']?>" method="POST">
			<?php 
				if ( !empty($errors)) {
					foreach ($errors as $key => $value) {
						echo "<div class='notify notify--error mb-20'>$value</div>";
					}
				}
			?>
				<div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Название фильма" value="<?=$film['title']?>"/></label></div>
					<div class="row">
						<div class="col">
							<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="Жанр" value="<?=$film['genre']?>" /></label></div>
						</div>
						<div class="col">
							<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="Год" value="<?=$film['year']?>" /></label></div>
					</div>				
				</div>
				<textarea class="textarea mb-20" name="description" placeholder="Введите описание фильма"></textarea>
				<div class="mb-20">
					<label class="label-title">Изображение</label>
					<p>Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400рх и более, вес до 2Мб.</p>
					<input type="file" name="photo">
					
				</div>
				<input class="button" type="submit" name="update-film" value="Обновить информацию"/>
				<a href="index.php" class="button button--edit">Вернуться на главную</a>
			</form>
		</div>
	</div><!-- build:jsLibs js/libs.js -->
	<script src="libs/jquery/jquery.min.js"></script><!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA"></script><!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="js/main.js"></script><!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>