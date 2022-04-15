-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 15 avr. 2022 à 20:27
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kplr_afpa`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'Mimo', 'Aisha', 'admin@test.fr', 'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U='),
(3, 'Mimo', 'Aisha', 'admin@test.fr', 'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U='),
(4, 'Shabina', 'Abdoul', 'shab@test.fr', 'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U='),
(5, 'aichoucha', 'choucha', 'ben@ben.fr', 'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U='),
(7, 'test', 'test', 'test@test.fr', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(9, 'Ben', 'Lola', 'benalla@gmail.com', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(13, 'retest', 'retest', 'mi@toto.fr', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(15, 'mama', 'papa', 'moi@moi.fr', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(16, 'Doe', 'John', 'jonh@doe.fr', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(17, 'Mathieu', 'Mireille', 'mir@gmail.com', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(18, 'Lala', 'Crawft', 'lala@test.fr', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
(19, 'Abdoul', 'Shab', 'shab@bina.fr', 'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U=');

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL,
  `envoyeePar` int(11) NOT NULL,
  `recuPar` int(11) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `vue` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `dateEnvoye` datetime NOT NULL,
  `vueAdmin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`id_chat`, `envoyeePar`, `recuPar`, `text`, `vue`, `visible`, `dateEnvoye`, `vueAdmin`) VALUES
(9, 1, 0, 'salut chéri', 0, 1, '2022-03-24 19:32:44', 1),
(12, 1, 0, 'coucou', 0, 1, '2022-03-25 15:40:50', 1),
(15, 7, 0, 'allooooo', 0, 1, '2022-03-26 16:14:39', 1),
(16, 0, 1, 'que puis je faire pour toi?', 0, 1, '2022-03-26 16:37:17', 0),
(19, 0, 7, 'oui', 0, 1, '2022-03-29 10:34:34', 0);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `dateInscription` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `email`, `tel`, `password`, `image`, `visible`, `dateInscription`) VALUES
(1, 'Mimouni', 'Aicha', 'mimouni@hotmail.fr', '0609842354', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_22_19_01_3520180427_130721_18898.jpg', 1, '2022-03-22 19:01:36'),
(2, 'Benalla', 'Aisha', 'mimouni@test.fr', '0609842354', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_24_14_41_3210600553_10152658456703788_7485924323395034481_n_16952.jpg', 1, '2022-03-24 14:41:32'),
(4, 'Hussein', 'Shab', 'mo@test.fr', '0609890099', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', 'null', 1, '2022-03-25 13:04:28'),
(5, 'Camara', 'Moussa', 'moussa.rf@tf.fr', '0609899888', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', 'null', 1, '2022-03-25 13:07:47'),
(6, 'Zack', 'BenZack', 'zack@lol', '0789099833', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', 'null', 1, '2022-03-25 13:19:38'),
(7, 'Moi', 'Toi', 'mim@test.fr', '0909090909', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_25_15_47_3420180427_130721_18898.jpg', 1, '2022-03-25 15:47:35'),
(8, 'fafa', 'fifi', 'po@re.fr', '0209090909', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_25_15_50_2520180427_130721_18898.jpg', 1, '2022-03-25 15:50:26'),
(9, 'yo', 'ya', 'popo@re.fr', '0709898989', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_25_15_52_2420180427_130721_18898.jpg', 1, '2022-03-25 15:52:24'),
(10, 'chacha', 'chichi', 'moimoimoi@test.fr', '0609890909', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', '2022_03_26_16_56_1310600553_10152658456703788_7485924323395034481_n_16952.jpg', 1, '2022-03-26 16:56:13'),
(11, 'momo', 'licha', 'moi@test.fr', '0607909999', 'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', 'null', 1, '2022-04-03 22:43:38');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `montant` double NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `montant`, `id_client`) VALUES
(1, 456, 2),
(2, 123, 2),
(3, 456, 0),
(4, 2000, 4),
(5, 456, 7),
(6, 456, 7),
(7, 123, 7);

-- --------------------------------------------------------

--
-- Structure de la table `consultant`
--

CREATE TABLE `consultant` (
  `id_consultant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `specialite` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `detailsCommande`
--

CREATE TABLE `detailsCommande` (
  `id_details` int(11) NOT NULL,
  `code_formation` varchar(10) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` double NOT NULL,
  `montant_ligne` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `duree` int(11) NOT NULL,
  `tarif` double NOT NULL,
  `dateDebut` varchar(50) NOT NULL,
  `dateFin` varchar(50) NOT NULL,
  `contenu` varchar(500) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `titre`, `code`, `duree`, `tarif`, `dateDebut`, `dateFin`, `contenu`, `image`) VALUES
(3, 'Cloudera', 'BG01', 3, 123, '2022-06-12', '2022-06-15', 'mettre en oeuvre l\'administration des clusters Cloudera, configurer et monitorer le cluster avec Cloudera Manager et explorer les technologies Cloudera', 'cloudera.jpg'),
(4, 'Web Scraping', 'WS09', 3, 456, '2022-09-09', '2022-09-12', 'réaliser du scraping de données et faire les actions d\'ingestion nécessaires pour alimenter un Datalake', 'web_scraping.jpg'),
(5, 'Concepteur', '12534', 6, 2000, '2022-03-20', '2022-08-30', 'Concepteur developpeur\r\nConcepteur developpeur\r\nConcepteur developpeur', 'concepteur.jpg'),
(6, 'Data Analyst', '123', 3, 2000, '18/03/2022', '31/05/2022', 'hhhhhhhhhhhhhhhhhhhhh', 'data_analyst.jpg'),
(7, 'Piloter un projet', 'CP03', 3, 659, '28/03/2022', '30/03/2022', 'bien identifier les challenges dans lamine en place d\'un projet Big Data, Mesurer l\'impact politique et stratégique sur l\'entreprise et la pertinence d\'un reporting régulier et mettre en place une bonne gestion des conflits et de la conduite du changement.', 'piloter.jpg'),
(8, 'Data Engineering', 'KC43', 4, 1200, '2022-03-30', '2022-04-03', 'présenter les concepts fondamentaux de Spark, Cassandra et Kafka, développer une application orientée use case avec Spark,Cassandra et Kafka, définir le Data Engineering et décrire l\'architecture Big Data de manière approfondie.', 'kafka_cassandra_spark'),
(10, 'Data Visualisation', 'DV09', 5, 599, '30/05/2022', '03/06/2022', 'concevoir des modèles de documents adaptés aux besoins métiers de l\'entreprise et mettre en oeuvre différentes techniques de visualisation graphique, de mise en récit et de présentation permettant de valoriser les données', 'GitHub Desktop.app.zip'),
(11, 'Big Data', 'BG75', 2, 460, '2022-06-08', '2022-06-10', 'identifier l\'ensemble des enjeux et facteurs à prendre en compte pour réussir l\'intégration du Big Data dans la vision large du SI, évaluer et sélectionner les outils appropriés dans le cadre d\'un plan de mise en oeuvre du Big Data.', NULL),
(12, 'PySpark', 'PS09', 3, 555, '2022-07-01', '2022-07-03', 'Décrire le principe de fonctionnement de Spark, utiliser l\'API PySpark pour interagir avec Spark et Python, mettre en oeuvre les méthodes de Machine Learning avec la librairie MLlib de Spark et traiter les flux de données avec Spark Streaming.', NULL),
(13, 'Data Science', 'DS03', 3, 799, '2022-09-10', '2022-09-13', 'Utiliser Scikitlearn pour créer des modèles d\'apprentissage machine, concevoir des expériences et interpréter les résultats des tests A/B, visualiser l\'analyse de clustering et de régression en Python à l\'aide de Matlotlib, produire des recommandations automatisées de produit ou de contenu avec des techniques de filtrage collaboratif et préparer vos données avant l\'analyse.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `vueAdmin` int(1) NOT NULL DEFAULT '0',
  `repondu` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_message`, `nom`, `email`, `message`, `vueAdmin`, `repondu`) VALUES
(1, 'Mimouni', 'test@test.fr', 'frfefdfvff vfvfvf  fvfvrf', 1, 1),
(2, 'Shabina', 'shab@test.fr', 'gghbj jan, jnbjn,n,v', 1, 1),
(3, 'test', 'test@test.fr', 'Vous Ãªtes les meilleurs', 1, 1),
(4, 'moi', 'moi@test.fr', 'test', 1, 1),
(5, 'aicha', 'mim@test.fr', 'lololololoo', 1, 1),
(6, 'Karmouni', 'test@test.fr', 'test Nabil', 1, 1),
(7, 'moi', 'toi@toi.fr', 'test', 1, 1),
(8, 'moi', 'mimouni.a@hotmail.fr', 'test', 1, 1),
(9, 'papa', 'papa@hotmail.fr', 'rngjfngrrgrg', 1, 1),
(10, 'moi', 'mimouni.a@hotmail.fr', 'lol', 1, 0),
(11, 'tata', 'tata@tata.fr', 'tata', 1, 0),
(12, 'hghvhjb', 'bhvh@hbhjb.fr', 'bjhjkhjk', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `metier`
--

CREATE TABLE `metier` (
  `id_metier` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`id_consultant`);

--
-- Index pour la table `detailsCommande`
--
ALTER TABLE `detailsCommande`
  ADD PRIMARY KEY (`id_details`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `metier`
--
ALTER TABLE `metier`
  ADD PRIMARY KEY (`id_metier`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `id_consultant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detailsCommande`
--
ALTER TABLE `detailsCommande`
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `metier`
--
ALTER TABLE `metier`
  MODIFY `id_metier` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
