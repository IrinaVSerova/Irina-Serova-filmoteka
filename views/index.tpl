<div class="title-1">Фильмотека</div>
	
	<?php 
		foreach ($films as $key => $film) { ?>
	<div class="card mb-20">
		<div class="row">
			<div class="col-auto">
				<img height="200" src="<?=HOST?>/data/films/14349.jpg" alt="<?=$film['title']?>">
			</div>
			<div class="col">
				<div class="card__header">
					<h4 class="title-4"><?=$film['title']?></h4>
					<div>
						<a href="edit.php?id=<?=$film['id']?>" class="button button--editsmall ">Редактировать</a>
						<a href="?action=delete&id=<?=$film['id']?>" class="button button--removesmall">Удалить</a>
					</div>
				</div>
				<div class="badge"><?=$film['genre']?></div>
				<div class="badge"><?=$film['year']?></div>
				<div class="mt-20"></div>
				<a href="single.php?id=<?=$film['id']?>" class="button">Подробнее</a>
			</div>
		</div>
		
	</div>
	<?php }	?>
