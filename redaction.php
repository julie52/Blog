<?php
	$bdd = new PDO ('mysql:host=127.0.0.1;dbname=blog;charset=utf8', 'root', '');
	$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	if(isset($_POST['articles_titre'], $_POST['articles_contenu'], $_POST['articles_auteurs'], $_POST['options'])){
		if(!empty ($_POST['articles_titre']) AND !empty($_POST['articles_contenu']) AND !empty ($_POST['articles_auteurs']) AND !empty($_POST['options'])){

	$articles_titre = $_POST['articles_titre'];
	$articles_contenu = $_POST['articles_contenu'];
	$articles_auteurs = $_POST['articles_auteurs'];
	$id = $_POST['options'];

	$ins = $bdd->prepare("INSERT INTO articles (titre, contenu, auteurs, date_publication) VALUES (?, ?, ?, NOW()) "); 
	$ins->execute(array($articles_titre, $articles_contenu, $articles_auteurs));

	$last_id = $bdd-> LastInsertId();
	$ins1 = $bdd->prepare("INSERT INTO join_articles_categories (id_articles, id_categories) VALUES (?, ?) "); 	
	$ins1->execute(array($last_id, $id ));
	
	$message = 'Votre article est publié, merci !';
	
		} else {
			$message = 'Remplissez tous les champs !';
		}
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="style.css">
		<meta charset="utf-8">
		<title>Rédaction</title>
	</head>

	<body>

		<h1>Rédaction :</h1>
		<?php if(isset($message)) {echo $message; } ?>
		
		<form method="post">
			
			<p>Catégorie :</p><select name="options">
				<option value="1">Chiant</option>
				<option value="2">Horrible</option>
				<option value="3">N'importe quoi</option>
			</select><br><br>
			
			<p>Auteur :</p><input type="text" name="articles_auteurs" placeholder="auteur"><br>
			<p>Titre : </p><input type="text" name="articles_titre" placeholder="titre"><br>
			<p>Article : </p><textarea placeholder="Contenu de l'article" name="articles_contenu" rows="15" cols="40"></textarea><br>
			<input class="button" type="submit" value="Soumettre l'article">
		</form><br>

		<form action="accueil.php">
			<input class="button" type="submit" value="Retour">
		</form>
	
	</body>
</html>