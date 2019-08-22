-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Août 2019 à 01:15
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `miniprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `cartable`
--

CREATE TABLE `cartable` (
  `matricule` int(11) DEFAULT NULL,
  `userid` varchar(25) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `datec` varchar(35) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cartable`
--

INSERT INTO `cartable` (`matricule`, `userid`, `nom`, `prix`, `datec`, `qte`) VALUES
(18700, 'j58552', 'HTC ZX10', 6599, 'Fri Mar 15 15:08:47 CAT 2019', 1),
(18700, 'j58552', 'HTC ZX10', 6599, 'Fri Mar 15 15:08:51 CAT 2019', 1),
(18700, 'j58552', 'HTC ZX10', 6599, 'Fri Mar 15 15:08:52 CAT 2019', 1),
(1855266, '0', 'IPhoneX', 18000, 'Thu Mar 21 18:01:41 CAT 2019', 4),
(5562, 'J58220', 'cable usb type-c', 120, 'Thu Mar 28 01:20:18 CAT 2019', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `label` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`label`) VALUES
('bbbbbbbbbbbb'),
('smart phone'),
('Apelle'),
('PC'),
('Kites'),
('bbbbbbbbbbbb');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idcommande` int(11) NOT NULL,
  `userid` varchar(25) DEFAULT NULL,
  `datec` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`idcommande`, `userid`, `datec`) VALUES
(17, 'J58220', 'Thu Mar 28 01:18:27 CAT 2019'),
(15, 'A', 'Sat Mar 16 14:31:40 CAT 2019'),
(16, 'A', 'Sat Mar 16 14:38:47 CAT 2019');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`) VALUES
('158853', 'Huawi'),
('18200', 'Apelle'),
('Samsang', '18300'),
('18300', 'samsang');

-- --------------------------------------------------------

--
-- Structure de la table `linedecommande`
--

CREATE TABLE `linedecommande` (
  `idcommande` int(11) DEFAULT NULL,
  `matricule` varchar(25) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `linedecommande`
--

INSERT INTO `linedecommande` (`idcommande`, `matricule`, `qte`) VALUES
(11, 'A', 1),
(11, 'A', 5),
(11, 'A', 1),
(11, 'A', 1),
(12, 'A', 1),
(12, 'A', 5),
(12, 'A', 1),
(12, 'A', 1),
(13, 'A', 1),
(13, 'A', 5),
(13, 'A', 1),
(13, 'A', 1),
(15, 'A', 1),
(15, 'A', 1),
(17, 'J58220', 1),
(17, 'J58220', 3);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `matricule` int(11) DEFAULT NULL,
  `nomProduit` varchar(30) DEFAULT NULL,
  `idFournisseur` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `datep` varchar(30) DEFAULT NULL,
  `categorie` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`matricule`, `nomProduit`, `idFournisseur`, `prix`, `datep`, `categorie`, `description`, `image`) VALUES
(18700, 'HTC ZX10', 18200, 6599, 'Tue Mar 12 23:43:40 CAT 2019', 'smart phone', 'voici le nouvel HTC ', '/MiniProject_Ecomerce_V0.1/resources/images/details_1.jpg'),
(1855266, 'IPhoneX', 158853, 18000, 'Sat Mar 16 17:37:50 CAT 2019', 'Apelle', 'nouvelle iphone chez nous !!', '/MiniProject_Ecomerce_V0.1/resources/images/details_4.jpg'),
(158550, 'Iphone 8 plus', 18200, 18500, 'Thu Mar 28 01:03:47 CAT 2019', 'Apelle', 'voici le nouvelle produit de apelle 2018', '/MiniProject_Ecomerce_V0.1/resources/images/details_3.jpg'),
(18855, 'Casque samsang', 18300, 800, 'Thu Mar 28 01:06:00 CAT 2019', 'Kites', 'casque avec base 800GHz', '/MiniProject_Ecomerce_V0.1/resources/images/details_2.jpg'),
(15882, 'Sourie Apelle', 18200, 500, 'Thu Mar 28 01:07:28 CAT 2019', 'Apelle', 'nouvelle Sourie de appele', '/MiniProject_Ecomerce_V0.1/resources/images/home_slider_1.jpg'),
(18544, 'MAC pro 800d5', 18200, 25999, 'Thu Mar 28 01:12:07 CAT 2019', 'PC', 'nouvel mac de Apelle avec un solde de 10%', '/MiniProject_Ecomerce_V0.1/resources/images/product_4.jpg'),
(8555, 'tablete A5 2016', 15858, 5000, 'Thu Mar 28 01:13:10 CAT 2019', 'smart phone', 'nouvel tablete de samsang avec 4 GO ram', '/MiniProject_Ecomerce_V0.1/resources/images/product_6.jpg'),
(5442, 'clavier appele', 18200, 600, 'Thu Mar 28 01:14:45 CAT 2019', 'Apelle', 'nouvel clavier sans file', '/MiniProject_Ecomerce_V0.1/resources/images/product_8.jpg'),
(5562, 'cable usb type-c', 5882, 120, 'Thu Mar 28 01:15:46 CAT 2019', 'Kites', 'cable suport Faste charge ', '/MiniProject_Ecomerce_V0.1/resources/images/product_3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`) VALUES
(1, 'dd@gmail'),
(2, 'aboujaafar@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `ville` varchar(25) DEFAULT NULL,
  `codepostal` varchar(25) DEFAULT NULL,
  `cin` varchar(25) DEFAULT NULL,
  `cartecode` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `motPass` varchar(25) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `ville`, `codepostal`, `cin`, `cartecode`, `telephone`, `adresse`, `motPass`, `role`) VALUES
(5, 'othmane', 'aboujaafar', 'aboujaafar@gmail.com', 'agadir', '8000', '0', '87922000253338', '0615885422', 'res itri app 2 imm 13', '123456', 'admin'),
(12, 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'user'),
(13, 'ayoub', 'hammadou', 'ayoub@gmail.com', '123456', '58522', 'J58220', '8854220002', '0615885422', 'agadir', '123456', 'user'),
(14, 'ayoub', 'hammadou', 'ayoub@gmail.com', '123456', '58522', 'J58220', '8854220002', '0615885422', 'agadir', '123456', 'user'),
(15, 'ayoub', 'hammadou', 'ayoub@gmail.com', '123456', '58522', 'J58220', '8854220002', '0615885422', 'agadir', '123456', 'user'),
(16, 'ayoub', 'hammadou', 'ayoub@gmail.com', '123456', '58522', 'J58220', '8854220002', '0615885422', 'agadir', '123456', 'user');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idcommande`);

--
-- Index pour la table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idcommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
