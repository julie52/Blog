<?php
$bdd = new PDO("mysql:host=127.0.0.1;dbname=blog;charset=utf8", "root", "");
if(isset($_GET['id']) AND !empty($_GET['id'])) {
   $suppr_id = htmlspecialchars($_GET['id']);
   $suppr = $bdd->prepare('DELETE FROM articles WHERE id = ?');
   $suppr->execute(array($suppr_id));
}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Suppression</title>
		<link rel="stylesheet" href="style.css">
	</head>

	<body>
		
		<h1>Suppression</h1>

		<p>Votre article a bien été supprimé !</p>

		<form action="accueil.php">
        	<input class="button" type="submit" name="Liste" value="Liste des articles">
		</form>

	</body>
</html>