-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Janvier 2017 à 15:02
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_publication` datetime NOT NULL,
  `auteurs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date_publication`, `auteurs`) VALUES
(10, 'Ton grand frère', 'Ton grand frère, il aimerait bien dire à tonton ses quatres vérité car il a toujours été meilleur que toi de toute façon. Le PMU était fermé alors il a fini au bistro du coin !\r\n\r\nTon grand frère, il ne fait jamais rien car c\'est comme ça qu\'il a réussi lui ! Et pépé, il a bu comme un trou et il a fini la soirée chez mèmère !\r\n\r\nTon ordinateur, il aimerait bien dire à tonton ses quatres vérité car c\'est un bon moyen de gagner sa vie, non ?! Et Jano, il a fini la soirée dans les toilettes !', '2017-01-12 00:00:00', 'Carotte'),
(11, 'Sed fruatur', 'Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.\r\n\r\nEt licet quocumque oculos flexeris feminas adfatim multas spectare cirratas, quibus, si nupsissent, per aetatem ter iam nixus poterat suppetere liberorum, ad usque taedium pedibus pavimenta tergentes iactari volucriter gyris, dum exprimunt innumera simulacra, quae finxere fabulae theatrales.', '2017-01-12 11:21:26', 'Null'),
(12, 'Ex his', 'Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.', '2017-01-12 15:15:03', 'Patate Mignonne'),
(14, 'Quand tu fais', 'Quand tu fais le calcul, là on voit qu\'on a beaucoup à travailler sur nous-mêmes car on est tous capables de donner des informations à chacun puisque the final conclusion of the spirit is perfection Donc on n\'est jamais seul spirituellement !\r\n\r\nJe me souviens en fait, ce n\'est pas un simple sport car il y a de bonnes règles, de bonnes rules et je ne cherche pas ici à mettre un point ! Ça respire le meuble de Provence, hein ?', '2017-01-13 10:42:19', 'Jean-Claude'),
(13, 'Voyez', 'Voyez ce jeu exquis wallon, de graphie en kit mais bref. Portez ce vieux whisky au juge blond qui fume sur son île intérieure, à côté de l\'alcôve ovoïde, où les bûches se consument dans l\'âtre, ce qui lui permet de penser à la cænogenèse de l\'être dont il est question dans la cause ambiguë entendue à Moÿ, dans un capharnaüm qui, pense-t-il, diminue çà et là la qualité de son œuvre. Prouvez, beau juge, que le fameux sandwich au yak tue. L\'île exiguë, Où l\'obèse jury mûr Fête l\'haï volapük, Âne ex æquo au whist, Ôtez ce vœu déçu. Vieux pelage que je modifie : breitschwanz ou yak ? Dès Noël où un zéphyr haï me vêt de glaçons würmiens, je dîne d’exquis rôtis de bœuf au kir à l’aÿ d’âge mûr & cætera ! Fougueux, j\'enivre la squaw au pack de beau zythum. Ketch, yawl, jonque flambant neuve… jugez des prix ! Voyez le brick géant que j\'examine près du wharf. Portez ce vieux whisky au juge blond qui fume. Bâchez la queue du wagon-taxi avec les pyjamas du fakir. Voix ambiguë d\'un cœur qui, au zéphyr, préfère les jattes de kiwis. Mon pauvre zébu ankylosé choque deux', '2017-01-13 10:38:52', 'Carotte');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id_auteurs` int(11) NOT NULL,
  `nom_auteurs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteurs`, `nom_auteurs`) VALUES
(1, 'Patate Mignonne'),
(2, 'Null'),
(3, 'Jean-Claude'),
(4, 'Carotte');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `nom_categories` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_categories`, `nom_categories`) VALUES
(1, 'chiant'),
(2, 'horrible'),
(3, 'n\'importe quoi');

-- --------------------------------------------------------

--
-- Structure de la table `join_articles_auteurs`
--

CREATE TABLE `join_articles_auteurs` (
  `id` int(11) NOT NULL,
  `id_articles` int(11) NOT NULL,
  `id_auteurs` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_articles_categories`
--

CREATE TABLE `join_articles_categories` (
  `id` int(11) NOT NULL,
  `id_articles` int(11) NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `join_articles_categories`
--

INSERT INTO `join_articles_categories` (`id`, `id_articles`, `id_categories`) VALUES
(1, 9, 1),
(2, 10, 1),
(3, 11, 2),
(4, 12, 2),
(5, 13, 1),
(6, 14, 1),
(7, 15, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id_auteurs`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Index pour la table `join_articles_auteurs`
--
ALTER TABLE `join_articles_auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `join_articles_categories`
--
ALTER TABLE `join_articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id_auteurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `join_articles_auteurs`
--
ALTER TABLE `join_articles_auteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `join_articles_categories`
--
ALTER TABLE `join_articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
