<?php
$bdd = new PDO("mysql:host=127.0.0.1;dbname=blog;charset=utf8", "root", "");
if(isset($_GET['id']) AND !empty($_GET['id'])) {
   $get_id = htmlspecialchars($_GET['id']);
   $article = $bdd->prepare('SELECT * FROM articles WHERE id = ?');
   $article->execute(array($get_id));
   $id = $bdd->LastInsertId();

   if($article->rowCount() == 1) {
      $article = $article->fetch();
      $titre = $article['titre'];
      $contenu = $article['contenu'];
      $auteurs = $article['auteurs'];

   } else {
      die('Article introuvable !');
   }
} else {
   die('Erreur');
}
?>
<!DOCTYPE html>
<html>
   
   <head>
      <link rel="stylesheet" href="style.css">
      <title>Accueil</title>
      <meta charset="utf-8">
   </head>

   <body>
      
      <h1><?= $titre ?></h1>
      <p><?= $contenu ?></p>
      
      <form action="accueil.php">
         <input class="button" type="submit" name="Liste" value="Liste des articles">
      </form>
   
   </body>
</html>