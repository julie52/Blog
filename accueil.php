 <?php
	$bdd = new PDO ('mysql:host=127.0.0.1;dbname=blog;charset=utf8', 'root', '');
	/*$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);*/
	
	if(isset($_POST['options'])){
		$options = $_POST['options'];
		$req = $bdd->prepare("SELECT * FROM articles WHERE id IN (SELECT id_articles FROM join_articles_categories WHERE id_categories = ? )");
		$req->execute(array($options));
	}
	else {
		$req = $bdd->query('SELECT * FROM articles ORDER BY date_publication DESC');
	}
	
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="style.css">
		<title>Blog</title>
	</head>

	<body>

		<h1>Liste des articles :</h1> <br>

		<ul>
			<?php while($a = $req->fetch()) { ?>
			<li><?= $a['auteurs'] ?> :<br>
			<a href="article.php?id=<?= $a['id'] ?>"><?= $a['titre'] ?></a>
			<a class="modif" href="supprimer.php?id=<?= $a['id'] ?>">Supprimer</a>
			</li><br>
			<?php } ?>	
		</ul>

		<form method="post" action="">
			
			<p>Catégorie :</p><select name="options">
				<option value="1">Chiant</option>
				<option value="2">Horrible</option>
				<option value="3">N'importe quoi</option>
				<input class="button" type="submit" value="Catégorie">
			</select><br><br>
		</form>

		<form action="redaction.php">
        	<input class="button" type="submit" name="rediger" value="Rédiger un article">
      	</form>
	
	</body>
</html>