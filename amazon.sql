-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 20 Décembre 2015 à 12:09
-- Version du serveur :  10.1.8-MariaDB
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `amazon`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categ` int(5) NOT NULL,
  `nomCateg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categ`, `nomCateg`) VALUES
(1, 'Pour mieux nous connaître'),
(2, 'Gagnez de l''argent'),
(3, 'Moyens de paiement Amazon'),
(4, 'Besoin d''aide ?'),
(5, 'Pays'),
(6, 'Dérivés 1'),
(7, 'Dérivés 2'),
(8, 'Amazon Infos');

-- --------------------------------------------------------

--
-- Structure de la table `categorieproduit`
--

CREATE TABLE `categorieproduit` (
  `id_categorie` int(5) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorieproduit`
--

INSERT INTO `categorieproduit` (`id_categorie`, `nom`) VALUES
(1, 'En lien avec des articles que vous avez regardés'),
(2, 'Baisse de prix: console PS4 à partir de 299,99€'),
(3, 'Idées cadeaux High-Tech pour les fans de gadgets'),
(4, 'Consoles'),
(5, 'Notre sélection d''enceintes portables'),
(6, 'Idées cadeaux High-Tech pour les débutants'),
(7, 'Jeux vidéo les plus offerts'),
(8, 'Vos articles vus récemment et vos recommandations en vedette');

-- --------------------------------------------------------

--
-- Structure de la table `liens`
--

CREATE TABLE `liens` (
  `labelLien` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `legende` varchar(255) DEFAULT NULL,
  `id_categ` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `liens`
--

INSERT INTO `liens` (`labelLien`, `url`, `legende`, `id_categ`) VALUES
('', '#', '© 1996-2015, Amazon.com, Inc. ou ses filiales.', 8),
('À propos', '#', NULL, 1),
('AbeBooks', '#', 'Livres rares & manuels', 6),
('Aide', '#', NULL, 4),
('Allemagne', '#', NULL, 5),
('Amazon BuyVIP', '#', 'Ventes privées partout en Europe', 6),
('Amazon Currency Converter', '#', NULL, 3),
('Amazon ensemble', '#', NULL, 1),
('Amazon et notre planète', '#', NULL, 1),
('Amazon Premium', '#', NULL, 4),
('Amazon Web Services', '#', 'Services de Cloud Computing flexibles', 6),
('Applications Amazon Mobile', '#', NULL, 4),
('Audible', '#', 'Téléchargez des livres audio', 6),
('Australie', '#', NULL, 5),
('Auto-publiez votre livre', '#', NULL, 2),
('Book Depository', '#', 'Livres expédiés dans le monde entier', 6),
('Brésil', '#', NULL, 5),
('Canada', '#', NULL, 5),
('Carrières', '#', NULL, 1),
('Cartes de paiement', '#', NULL, 3),
('Chèques-cadeaux', '#', NULL, 3),
('Chine', '#', NULL, 5),
('Codes d''achat', '#', NULL, 3),
('Conditions générales de vente', '#', NULL, 8),
('Cookies et Publicité sur Internet', '#', NULL, 8),
('CreateSpace', '#', 'Auto-publiez facilement vos livres au format papier', 7),
('Devenez Partenaire', '#', NULL, 2),
('Espagne', '#', NULL, 5),
('États-Unis', '#', NULL, 5),
('Expédié par Amazon', '#', NULL, 2),
('Faites la promotion de vos produits', '#', NULL, 2),
('Inde', '#', NULL, 5),
('Italie', '#', NULL, 5),
('Japon', '#', NULL, 5),
('Kindle Direct Publishing', '#', 'Auto-publiez facilement vos livres au format numérique', 7),
('Les Chroniques d''Amazon', '#', NULL, 1),
('Mexique', '#', NULL, 5),
('MYHABIT', '#', 'Mode privée et designers', 7),
('Offres Reconditionnées', '#', 'Bonnes affaires', 7),
('Pays-Bas', '#', NULL, 5),
('Presse', '#', NULL, 1),
('Retours et remplacements', '#', NULL, 4),
('Royaume-Uni', '#', NULL, 5),
('Shopbop', '#', 'Vêtements de Marque & Mode', 7),
('Tarifs et options de livraison', '#', NULL, 4),
('Tous nos programmes', '#', NULL, 2),
('Vendez sur Amazon', '#', NULL, 2),
('Visualiser ou suivre vos commandes', '#', NULL, 4),
('Vos informations personnelles', '#', NULL, 8);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `refProduit` int(50) NOT NULL,
  `libelleProduit` varchar(255) DEFAULT NULL,
  `prix` double(6,2) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `note` double(2,1) DEFAULT NULL,
  `isPremium` tinyint(1) NOT NULL,
  `nbAvis` int(4) DEFAULT NULL,
  `id_categorie` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`refProduit`, `libelleProduit`, `prix`, `image`, `note`, `isPremium`, `nbAvis`, `id_categorie`) VALUES
(1, 'Détails sur le produit MyKronoz ZeBracelet 2 Montre d''activité pour Smartphone Noir', 85.00, 'img_carousel/carousel1/img1.jpg', 1.0, 1, 3, 1),
(2, 'MyKronoz ZeBracelet 2 Montre d''activité pour Smartphone Blanc', 76.00, 'img_carousel/carousel1/img2.jpg', 4.0, 0, 2, 1),
(3, 'MyKronoz ZeBracelet 2 Montre d''activité pour Smartphone Rose Gold', 86.00, 'img_carousel/carousel1/img3.jpg', 4.0, 0, 1, 1),
(4, 'Sony SmartWatch 2 Montre connectée Bluetooth 3.0 / NFC pour Smartphone - Bracelet en Silicone Noir', 129.00, 'img_carousel/carousel1/img4.jpg', 3.0, 0, 157, 1),
(5, 'Sony SmartWatch 2 Montre connectée Bluetooth 3.0', 75.00, 'img_carousel/carousel1/img5.jpg', 2.0, 0, 10, 1),
(6, 'Sony SmartWatch 7', 150.00, 'img_carousel/carousel1/img6.jpg', 3.0, 0, 15, 1),
(7, NULL, NULL, 'img_carousel/carousel1/img7.jpg', NULL, 0, NULL, 1),
(8, NULL, NULL, 'img_carousel/carousel1/img8.jpg', NULL, 0, NULL, 1),
(9, NULL, NULL, 'img_carousel/carousel1/img9.jpg', NULL, 0, NULL, 1),
(10, NULL, NULL, 'img_carousel/carousel1/img10.jpg', NULL, 0, NULL, 1),
(11, NULL, NULL, 'img_carousel/carousel1/img11.jpg', NULL, 0, NULL, 1),
(12, NULL, NULL, 'img_carousel/carousel1/img12.jpg', NULL, 0, NULL, 1),
(13, NULL, NULL, 'img_carousel/carousel1/img13.jpg', NULL, 0, NULL, 1),
(14, NULL, NULL, 'img_carousel/carousel1/img14.jpg', NULL, 0, NULL, 1),
(15, NULL, NULL, 'img_carousel/carousel1/img15.jpg', NULL, 0, NULL, 1),
(16, NULL, NULL, 'img_carousel/carousel1/img16.jpg', NULL, 0, NULL, 1),
(17, NULL, NULL, 'img_carousel/carousel1/img17.jpg', NULL, 0, NULL, 1),
(18, NULL, NULL, 'img_carousel/carousel1/img18.jpg', NULL, 0, NULL, 1),
(19, NULL, NULL, 'img_carousel/carousel1/img19.jpg', NULL, 0, NULL, 1),
(20, NULL, NULL, 'img_carousel/carousel1/img20.jpg', NULL, 0, NULL, 1),
(21, NULL, NULL, 'img_carousel/carousel1/img21.jpg', NULL, 0, NULL, 1),
(22, NULL, NULL, 'img_carousel/carousel1/img22.jpg', NULL, 0, NULL, 1),
(23, NULL, NULL, 'img_carousel/carousel2/img1.jpg', NULL, 0, NULL, 2),
(24, NULL, NULL, 'img_carousel/carousel2/img2.jpg', NULL, 0, NULL, 2),
(25, NULL, NULL, 'img_carousel/carousel2/img3.jpg', NULL, 0, NULL, 2),
(26, NULL, NULL, 'img_carousel/carousel2/img4.jpg', NULL, 0, NULL, 2),
(27, NULL, NULL, 'img_carousel/carousel2/img5.jpg', NULL, 0, NULL, 2),
(28, NULL, NULL, 'img_carousel/carousel2/img6.jpg', NULL, 0, NULL, 2),
(29, NULL, NULL, 'img_carousel/carousel2/img7.jpg', NULL, 0, NULL, 2),
(30, NULL, NULL, 'img_carousel/carousel2/img8.jpg', NULL, 0, NULL, 2),
(31, NULL, NULL, 'img_carousel/carousel2/img9.jpg', NULL, 0, NULL, 2),
(32, NULL, NULL, 'img_carousel/carousel2/img10.jpg', NULL, 0, NULL, 2),
(33, NULL, NULL, 'img_carousel/carousel2/img11.jpg', NULL, 0, NULL, 2),
(34, NULL, NULL, 'img_carousel/carousel2/img12.jpg', NULL, 0, NULL, 2),
(35, NULL, NULL, 'img_carousel/carousel2/img13.jpg', NULL, 0, NULL, 2),
(36, NULL, NULL, 'img_carousel/carousel3/img1.jpg', NULL, 0, NULL, 3),
(37, NULL, NULL, 'img_carousel/carousel3/img2.jpg', NULL, 0, NULL, 3),
(38, NULL, NULL, 'img_carousel/carousel3/img3.jpg', NULL, 0, NULL, 3),
(39, NULL, NULL, 'img_carousel/carousel3/img4.jpg', NULL, 0, NULL, 3),
(40, NULL, NULL, 'img_carousel/carousel3/img5.jpg', NULL, 0, NULL, 3),
(41, NULL, NULL, 'img_carousel/carousel3/img6.jpg', NULL, 0, NULL, 3),
(42, NULL, NULL, 'img_carousel/carousel3/img7.jpg', NULL, 0, NULL, 3),
(43, NULL, NULL, 'img_carousel/carousel3/img8.jpg', NULL, 0, NULL, 3),
(44, NULL, NULL, 'img_carousel/carousel3/img9.jpg', NULL, 0, NULL, 3),
(45, NULL, NULL, 'img_carousel/carousel3/img10.jpg', NULL, 0, NULL, 3),
(46, NULL, NULL, 'img_carousel/carousel3/img11.jpg', NULL, 0, NULL, 3),
(47, NULL, NULL, 'img_carousel/carousel3/img12.jpg', NULL, 0, NULL, 3),
(48, NULL, NULL, 'img_carousel/carousel3/img13.jpg', NULL, 0, NULL, 3),
(49, NULL, NULL, 'img_carousel/carousel3/img14.jpg', NULL, 0, NULL, 3),
(50, NULL, NULL, 'img_carousel/carousel3/img15.jpg', NULL, 0, NULL, 3),
(51, NULL, NULL, 'img_carousel/carousel3/img16.jpg', NULL, 0, NULL, 3),
(52, NULL, NULL, 'img_carousel/carousel3/img17.jpg', NULL, 0, NULL, 3),
(53, NULL, NULL, 'img_carousel/carousel3/img18.jpg', NULL, 0, NULL, 3),
(54, NULL, NULL, 'img_carousel/carousel3/img19.jpg', NULL, 0, NULL, 3),
(55, NULL, NULL, 'img_carousel/carousel3/img20.jpg', NULL, 0, NULL, 3),
(56, NULL, NULL, 'img_carousel/carousel3/img21.jpg', NULL, 0, NULL, 3),
(57, NULL, NULL, 'img_carousel/carousel3/img22.jpg', NULL, 0, NULL, 3),
(58, NULL, NULL, 'img_carousel/carousel4/img1.jpg', NULL, 0, NULL, 4),
(59, NULL, NULL, 'img_carousel/carousel4/img2.jpg', NULL, 0, NULL, 4),
(60, NULL, NULL, 'img_carousel/carousel4/img3.jpg', NULL, 0, NULL, 4),
(61, NULL, NULL, 'img_carousel/carousel4/img4.jpg', NULL, 0, NULL, 4),
(62, NULL, NULL, 'img_carousel/carousel4/img5.jpg', NULL, 0, NULL, 4),
(63, NULL, NULL, 'img_carousel/carousel4/img6.jpg', NULL, 0, NULL, 4),
(64, NULL, NULL, 'img_carousel/carousel4/img7.jpg', NULL, 0, NULL, 4),
(65, NULL, NULL, 'img_carousel/carousel4/img8.jpg', NULL, 0, NULL, 4),
(66, NULL, NULL, 'img_carousel/carousel4/img9.jpg', NULL, 0, NULL, 4),
(67, NULL, NULL, 'img_carousel/carousel4/img10.jpg', NULL, 0, NULL, 4),
(68, NULL, NULL, 'img_carousel/carousel4/img11.jpg', NULL, 0, NULL, 4),
(69, NULL, NULL, 'img_carousel/carousel4/img12.jpg', NULL, 0, NULL, 4),
(70, NULL, NULL, 'img_carousel/carousel4/img13.jpg', NULL, 0, NULL, 4),
(71, NULL, NULL, 'img_carousel/carousel4/img14.jpg', NULL, 0, NULL, 4),
(72, NULL, NULL, 'img_carousel/carousel4/img15.jpg', NULL, 0, NULL, 4),
(73, NULL, NULL, 'img_carousel/carousel4/img16.jpg', NULL, 0, NULL, 4),
(74, NULL, NULL, 'img_carousel/carousel4/img17.jpg', NULL, 0, NULL, 4),
(75, NULL, NULL, 'img_carousel/carousel4/img18.jpg', NULL, 0, NULL, 4),
(76, NULL, NULL, 'img_carousel/carousel5/img1.jpg', NULL, 0, NULL, 5),
(77, NULL, NULL, 'img_carousel/carousel5/img2.jpg', NULL, 0, NULL, 5),
(78, NULL, NULL, 'img_carousel/carousel5/img3.jpg', NULL, 0, NULL, 5),
(79, NULL, NULL, 'img_carousel/carousel5/img4.jpg', NULL, 0, NULL, 5),
(80, NULL, NULL, 'img_carousel/carousel5/img5.jpg', NULL, 0, NULL, 5),
(81, NULL, NULL, 'img_carousel/carousel5/img6.jpg', NULL, 0, NULL, 5),
(82, NULL, NULL, 'img_carousel/carousel5/img7.jpg', NULL, 0, NULL, 5),
(83, NULL, NULL, 'img_carousel/carousel5/img8.jpg', NULL, 0, NULL, 5),
(84, NULL, NULL, 'img_carousel/carousel5/img9.jpg', NULL, 0, NULL, 5),
(85, NULL, NULL, 'img_carousel/carousel5/img10.jpg', NULL, 0, NULL, 5),
(86, NULL, NULL, 'img_carousel/carousel5/img11.jpg', NULL, 0, NULL, 5),
(87, NULL, NULL, 'img_carousel/carousel5/img12.jpg', NULL, 0, NULL, 5),
(88, NULL, NULL, 'img_carousel/carousel5/img13.jpg', NULL, 0, NULL, 5),
(89, NULL, NULL, 'img_carousel/carousel5/img14.jpg', NULL, 0, NULL, 5),
(90, NULL, NULL, 'img_carousel/carousel5/img15.jpg', NULL, 0, NULL, 5),
(91, NULL, NULL, 'img_carousel/carousel5/img16.jpg', NULL, 0, NULL, 5),
(92, NULL, NULL, 'img_carousel/carousel5/img17.jpg', NULL, 0, NULL, 5),
(93, NULL, NULL, 'img_carousel/carousel5/img18.jpg', NULL, 0, NULL, 5),
(94, NULL, NULL, 'img_carousel/carousel5/img19.jpg', NULL, 0, NULL, 5),
(95, NULL, NULL, 'img_carousel/carousel5/img20.jpg', NULL, 0, NULL, 5),
(96, NULL, NULL, 'img_carousel/carousel5/img21.jpg', NULL, 0, NULL, 5),
(97, NULL, NULL, 'img_carousel/carousel5/img22.jpg', NULL, 0, NULL, 5),
(98, NULL, NULL, 'img_carousel/carousel5/img23.jpg', NULL, 0, NULL, 5),
(99, NULL, NULL, 'img_carousel/carousel5/img24.jpg', NULL, 0, NULL, 5),
(100, NULL, NULL, 'img_carousel/carousel5/img25.jpg', NULL, 0, NULL, 5),
(101, NULL, NULL, 'img_carousel/carousel5/img26.jpg', NULL, 0, NULL, 5),
(102, NULL, NULL, 'img_carousel/carousel6/img1.jpg', NULL, 0, NULL, 6),
(103, NULL, NULL, 'img_carousel/carousel6/img2.jpg', NULL, 0, NULL, 6),
(104, NULL, NULL, 'img_carousel/carousel6/img3.jpg', NULL, 0, NULL, 6),
(105, NULL, NULL, 'img_carousel/carousel6/img4.jpg', NULL, 0, NULL, 6),
(106, NULL, NULL, 'img_carousel/carousel6/img5.jpg', NULL, 0, NULL, 6),
(107, NULL, NULL, 'img_carousel/carousel6/img6.jpg', NULL, 0, NULL, 6),
(108, NULL, NULL, 'img_carousel/carousel6/img7.jpg', NULL, 0, NULL, 6),
(109, NULL, NULL, 'img_carousel/carousel6/img8.jpg', NULL, 0, NULL, 6),
(110, NULL, NULL, 'img_carousel/carousel6/img9.jpg', NULL, 0, NULL, 6),
(111, NULL, NULL, 'img_carousel/carousel6/img10.jpg', NULL, 0, NULL, 6),
(112, NULL, NULL, 'img_carousel/carousel6/img11.jpg', NULL, 0, NULL, 6),
(113, NULL, NULL, 'img_carousel/carousel6/img12.jpg', NULL, 0, NULL, 6),
(114, NULL, NULL, 'img_carousel/carousel6/img13.jpg', NULL, 0, NULL, 6),
(115, NULL, NULL, 'img_carousel/carousel6/img14.jpg', NULL, 0, NULL, 6),
(116, NULL, NULL, 'img_carousel/carousel6/img15.jpg', NULL, 0, NULL, 6),
(117, NULL, NULL, 'img_carousel/carousel6/img16.jpg', NULL, 0, NULL, 6),
(118, NULL, NULL, 'img_carousel/carousel6/img17.jpg', NULL, 0, NULL, 6),
(119, NULL, NULL, 'img_carousel/carousel6/img18.jpg', NULL, 0, NULL, 6),
(120, NULL, NULL, 'img_carousel/carousel6/img19.jpg', NULL, 0, NULL, 6),
(121, NULL, NULL, 'img_carousel/carousel6/img20.jpg', NULL, 0, NULL, 6),
(122, NULL, NULL, 'img_carousel/carousel6/img21.jpg', NULL, 0, NULL, 6),
(123, NULL, NULL, 'img_carousel/carousel7/img1.jpg', NULL, 0, NULL, 7),
(124, NULL, NULL, 'img_carousel/carousel7/img2.jpg', NULL, 0, NULL, 7),
(125, NULL, NULL, 'img_carousel/carousel7/img3.jpg', NULL, 0, NULL, 7),
(126, NULL, NULL, 'img_carousel/carousel7/img4.jpg', NULL, 0, NULL, 7),
(127, NULL, NULL, 'img_carousel/carousel7/img5.jpg', NULL, 0, NULL, 7),
(128, NULL, NULL, 'img_carousel/carousel7/img6.jpg', NULL, 0, NULL, 7),
(129, NULL, NULL, 'img_carousel/carousel7/img7.jpg', NULL, 0, NULL, 7),
(130, NULL, NULL, 'img_carousel/carousel7/img8.jpg', NULL, 0, NULL, 7),
(131, NULL, NULL, 'img_carousel/carousel7/img9.jpg', NULL, 0, NULL, 7),
(132, NULL, NULL, 'img_carousel/carousel7/img10.jpg', NULL, 0, NULL, 7),
(133, NULL, NULL, 'img_carousel/carousel7/img11.jpg', NULL, 0, NULL, 7),
(134, NULL, NULL, 'img_carousel/carousel7/img12.jpg', NULL, 0, NULL, 7),
(135, NULL, NULL, 'img_carousel/carousel7/img13.jpg', NULL, 0, NULL, 7),
(136, NULL, NULL, 'img_carousel/carousel7/img14.jpg', NULL, 0, NULL, 7),
(137, NULL, NULL, 'img_carousel/carousel7/img15.jpg', NULL, 0, NULL, 7),
(138, NULL, NULL, 'img_carousel/carousel7/img16.jpg', NULL, 0, NULL, 7),
(139, NULL, NULL, 'img_carousel/carousel7/img17.jpg', NULL, 0, NULL, 7),
(140, NULL, NULL, 'img_carousel/carousel7/img18.jpg', NULL, 0, NULL, 7),
(141, NULL, NULL, 'img_carousel/carousel7/img19.jpg', NULL, 0, NULL, 7),
(142, NULL, NULL, 'img_carousel/carousel7/img20.jpg', NULL, 0, NULL, 7),
(143, NULL, NULL, 'img_carousel/carousel7/img21.jpg', NULL, 0, NULL, 7),
(144, NULL, NULL, 'img_carousel/carousel7/img22.jpg', NULL, 0, NULL, 7),
(145, NULL, NULL, 'img_carousel/carousel7/img23.jpg', NULL, 0, NULL, 7),
(146, NULL, NULL, 'img_carousel/carousel7/img24.jpg', NULL, 0, NULL, 7),
(147, NULL, NULL, 'img_carousel/carousel7/img25.jpg', NULL, 0, NULL, 7),
(148, NULL, NULL, 'img_carousel/carousel7/img26.jpg', NULL, 0, NULL, 7),
(149, NULL, NULL, 'img_carousel/carousel7/img27.jpg', NULL, 0, NULL, 7),
(150, NULL, NULL, 'img_carousel/carousel7/img28.jpg', NULL, 0, NULL, 7),
(151, NULL, NULL, 'img_carousel/carousel7/img29.jpg', NULL, 0, NULL, 7),
(152, NULL, NULL, 'img_carousel/carousel7/img30.jpg', NULL, 0, NULL, 7),
(153, NULL, NULL, 'img_carousel/carousel7/img31.jpg', NULL, 0, NULL, 7),
(154, NULL, NULL, 'img_carousel/carousel7/img32.jpg', NULL, 0, NULL, 7),
(155, NULL, NULL, 'img_carousel/carousel7/img33.jpg', NULL, 0, NULL, 7),
(156, 'Acer H6520bd Vidéoprojecteur 3D DLP 16:9 full HD', 599.00, 'img_carousel/carousel_reco/img1.jpg', 3.5, 1, 2, 8),
(157, 'MyKronoz ZeWatch 2 Montre d''activité pour Smartphone Noir', 74.55, 'img_carousel/carousel_reco/img2.jpg', 2.5, 1, 11, 8),
(158, 'Batterie Externe Anker Astro E7 26800 mAh 3 Ports 4A - Batterie externe à capacité…', 45.99, 'img_carousel/carousel_reco/img3.jpg', 4.5, 1, 188, 8),
(159, 'Bose® Écouteurs intra-auriculaires SoundTrue - Noir', 99.00, 'img_carousel/carousel_reco/img4.jpg', 4.0, 1, 51, 8),
(160, 'Mad Catz CYBORG V.7 Clavier AZERTY Gaming pour PC - Noir mat', 62.57, 'img_carousel/carousel_reco/img5.jpg', 4.0, 1, 284, 8),
(161, 'Razer BlackWidow Chroma Clavier Mécanique Noir', 187.44, 'img_carousel/carousel_reco/img6.jpg', 4.0, 1, 84, 8),
(162, 'Razer Abyssus Souris Gaming Noir', 40.00, 'img_carousel/carousel_reco/img7.jpg', 4.0, 0, 14, 8),
(163, 'Razer Naga Hex Wraith Souris Gaming Laser - Vert', 64.95, 'img_carousel/carousel_reco/img8.jpg', 4.0, 1, 93, 8),
(164, 'Razer Goliathus Speed - Tapis de souris Gaming - Large', 31.99, 'img_carousel/carousel_reco/img9.jpg', 4.5, 1, 136, 8),
(165, 'Razer Deathstalker Clavier Gaming (AZERTY)', 98.03, 'img_carousel/carousel_reco/img10.jpg', 4.0, 0, 57, 8),
(166, 'Razer DeathAdder Chroma Souris de Jeu', 65.21, 'img_carousel/carousel_reco/img11.jpg', 4.5, 1, 51, 8),
(167, 'Razer Goliathus Speed - Tapis de souris Gaming - Extended', 43.99, 'img_carousel/carousel_reco/img12.jpg', 4.5, 1, 136, 8),
(168, 'SteelSeries QcK Tapis de souris Gaming Noir', 9.99, 'img_carousel/carousel_reco/img13.jpg', 4.5, 1, 336, 8),
(169, 'Mad Catz R.A.T.7 Souris Filaire Gaming pour PC et MAC - Noir Mat', 77.90, 'img_carousel/carousel_reco/img14.jpg', 3.5, 1, 73, 8),
(170, 'Razer Goliathus - Small (Control) Tapis de Souris Gaming', 14.39, 'img_carousel/carousel_reco/img15.jpg', 4.5, 0, 136, 8),
(171, 'Logitech G300s Souris gaming optique Noir', 33.16, 'img_carousel/carousel_reco/img16.jpg', 4.5, 1, 28, 8),
(172, 'Razer Bungee Câble Management pour Souris Gaming', 24.90, 'img_carousel/carousel_reco/img17.jpg', 3.5, 1, 15, 8),
(173, 'Sennheiser HD598 - Casque Audio Circum-Aural - Beige', 193.70, 'img_carousel/carousel_reco/img18.jpg', 4.5, 1, 146, 8),
(174, NULL, NULL, 'img_carousel/carousel_reco/img_mini1.jpg', NULL, 0, NULL, 8),
(175, NULL, NULL, 'img_carousel/carousel_reco/img_mini2.jpg', NULL, 0, NULL, 8),
(176, NULL, NULL, 'img_carousel/carousel_reco/img_mini3.jpg', NULL, 0, NULL, 8);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categ`);

--
-- Index pour la table `categorieproduit`
--
ALTER TABLE `categorieproduit`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `liens`
--
ALTER TABLE `liens`
  ADD PRIMARY KEY (`labelLien`),
  ADD KEY `id_categ` (`id_categ`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`refProduit`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categ` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `categorieproduit`
--
ALTER TABLE `categorieproduit`
  MODIFY `id_categorie` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `refProduit` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `liens`
--
ALTER TABLE `liens`
  ADD CONSTRAINT `liens_ibfk_1` FOREIGN KEY (`id_categ`) REFERENCES `categorie` (`id_categ`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorieproduit` (`id_categorie`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
