<?php 
if ( @$resultinfo != '' ) { ?>
<div class="info-notification"><?=$resultinfo?></div>
<?php 
}	?>
<?php 

if ( @$resultSuccess != '' ) { ?>
<div class="info-success"><?=$resultSuccess?></div>
<?php 
}	?>
<?php 

if ( @$resultError != '' ) { ?>
<div class="notify notify--error"><?=$resultError?></div>
<?php 
}	?>