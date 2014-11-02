<?php
session_start();
session_destroy();
echo 'Ha terminado la session';
?>
<script>
	location.href = "../view/Login.php";
</script>