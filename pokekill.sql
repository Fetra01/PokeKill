-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 26 Juillet 2019 à 16:15
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pokekill`
--

-- --------------------------------------------------------

--
-- Structure de la table `attack`
--

CREATE TABLE `attack` (
  `id_attack` int(11) NOT NULL,
  `attack` varchar(50) NOT NULL,
  `damage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `attack`
--

INSERT INTO `attack` (`id_attack`, `attack`, `damage`) VALUES
(1, 'flameche', 5),
(2, 'griffe', 3),
(3, 'lanceflamme', 9),
(4, 'feudenfer', 13),
(5, 'charge', 3),
(6, 'viveattaque', 5),
(7, 'meteor', 9),
(8, 'damocles', 13),
(9, 'tunnel', 4),
(10, 'tranche', 5),
(11, 'seisme', 10),
(12, 'trempette', 0),
(13, 'ouragan', 10),
(14, 'hydrocanon', 13),
(15, 'ultralaser', 15),
(16, 'pistoleteau', 5),
(17, 'psyko', 3),
(18, 'chocmental', 5),
(19, 'telekinisie', 13),
(20, 'prescience', 10),
(21, 'crachat', 5),
(22, 'vomito', 3),
(23, 'ecrasface', 7),
(24, 'bombbeurk', 10),
(25, 'balayette', 5),
(26, 'vendetta', 9),
(27, 'dynanopoing', 14),
(28, 'petal', 10),
(29, 'seve', 8),
(30, 'pollenisator', 13),
(31, 'photosynthese', 15),
(32, 'darddard', 5),
(33, 'piqure', 8),
(34, 'punaise', 10),
(35, 'frelon', 12),
(36, 'display', 5),
(37, 'flex', 8),
(38, 'error_500', 15),
(39, 'insert', 10),
(40, 'pokapi', 1);

-- --------------------------------------------------------

--
-- Structure de la table `drespoke`
--

CREATE TABLE `drespoke` (
  `id_drespoke` int(11) NOT NULL,
  `fk_id_stockStat` int(11) DEFAULT NULL,
  `fk_id_dresseurs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dresseurs`
--

CREATE TABLE `dresseurs` (
  `id_dresseurs` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `fk_id_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pokAttack`
--

CREATE TABLE `pokAttack` (
  `id_pokAttack` int(11) NOT NULL,
  `fk_id_pokemon` int(11) DEFAULT NULL,
  `fk_id_attack` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pokAttack`
--

INSERT INTO `pokAttack` (`id_pokAttack`, `fk_id_pokemon`, `fk_id_attack`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 3, 4),
(10, 4, 3),
(11, 4, 5),
(12, 5, 5),
(13, 5, 12),
(14, 5, 7),
(15, 6, 12),
(16, 6, 6),
(17, 6, 12),
(18, 7, 5),
(19, 7, 1),
(20, 7, 4),
(21, 8, 2),
(22, 8, 9),
(23, 8, 11),
(24, 9, 2),
(25, 9, 10),
(26, 9, 11),
(27, 10, 12),
(28, 10, 16),
(29, 10, 5),
(30, 11, 6),
(31, 11, 13),
(32, 11, 14),
(33, 12, 5),
(34, 12, 11),
(35, 12, 37),
(36, 12, 40),
(37, 13, 17),
(38, 13, 18),
(39, 14, 17),
(40, 14, 18),
(41, 14, 20),
(42, 15, 18),
(43, 15, 19),
(44, 15, 20),
(45, 16, 21),
(46, 16, 22),
(47, 16, 23),
(48, 17, 21),
(49, 17, 22),
(50, 17, 23),
(51, 17, 24),
(52, 18, 25),
(53, 18, 26),
(54, 18, 39),
(55, 19, 25),
(56, 19, 26),
(57, 19, 39),
(58, 19, 37),
(59, 21, 26),
(60, 21, 39),
(61, 21, 37),
(62, 21, 27),
(63, 22, 5),
(64, 22, 29),
(65, 23, 5),
(66, 23, 29),
(67, 23, 31),
(68, 24, 35),
(69, 24, 32),
(70, 26, 7),
(71, 26, 5),
(72, 27, 23),
(73, 28, 23),
(74, 28, 38),
(75, 29, 23),
(76, 29, 38),
(77, 29, 40),
(78, 31, 2),
(79, 31, 3),
(80, 32, 2),
(81, 32, 3),
(82, 32, 4),
(83, 33, 20),
(84, 33, 15),
(85, 33, 40),
(86, 34, 18),
(87, 34, 19),
(88, 34, 31);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pokemon` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `health` int(11) NOT NULL,
  `strength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pokemon`
--

INSERT INTO `pokemon` (`id_pokemon`, `name`, `health`, `strength`) VALUES
(1, 'salameche', 20, 10),
(2, 'reptincel', 25, 15),
(3, 'dragofeu', 40, 20),
(4, 'evoli', 15, 10),
(5, 'voltali', 30, 15),
(6, 'aquali', 30, 15),
(7, 'pyroli', 30, 15),
(8, 'taupiqueur', 20, 10),
(9, 'triopiqueur', 28, 15),
(10, 'magicarpe', 10, 5),
(11, 'leviator', 50, 30),
(12, 'ronflex', 35, 15),
(13, 'abra', 15, 5),
(14, 'cadabra', 25, 10),
(15, 'alakazam', 40, 20),
(16, 'tadmorv', 25, 10),
(17, 'grotadmorv', 35, 15),
(18, 'machoc', 20, 15),
(19, 'machopeur', 30, 20),
(21, 'mackogneur', 40, 25),
(22, 'noeunoeuf', 20, 10),
(23, 'noadkoko', 35, 20),
(24, 'insecateur', 30, 15),
(26, 'elektek', 25, 15),
(27, 'minidraco', 20, 5),
(28, 'draco', 35, 15),
(29, 'dracolosse', 45, 25),
(31, 'ponyta', 20, 15),
(32, 'galopa', 20, 25),
(33, 'mewtwo', 40, 25),
(34, 'mew', 35, 20);

-- --------------------------------------------------------

--
-- Structure de la table `statPokemon`
--

CREATE TABLE `statPokemon` (
  `id_statPokemon` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `health` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stockStat`
--

CREATE TABLE `stockStat` (
  `id_stockStat` int(11) NOT NULL,
  `fk_pokemonid` int(11) DEFAULT NULL,
  `fk_statid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `attack`
--
ALTER TABLE `attack`
  ADD PRIMARY KEY (`id_attack`);

--
-- Index pour la table `drespoke`
--
ALTER TABLE `drespoke`
  ADD PRIMARY KEY (`id_drespoke`),
  ADD KEY `fk_id_stockStat` (`fk_id_stockStat`),
  ADD KEY `fk_id_dresseurs` (`fk_id_dresseurs`);

--
-- Index pour la table `dresseurs`
--
ALTER TABLE `dresseurs`
  ADD PRIMARY KEY (`id_dresseurs`),
  ADD KEY `fk_id_users` (`fk_id_users`);

--
-- Index pour la table `pokAttack`
--
ALTER TABLE `pokAttack`
  ADD PRIMARY KEY (`id_pokAttack`),
  ADD KEY `fk_id_pokemon` (`fk_id_pokemon`),
  ADD KEY `fk_id_attack` (`fk_id_attack`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pokemon`);

--
-- Index pour la table `statPokemon`
--
ALTER TABLE `statPokemon`
  ADD PRIMARY KEY (`id_statPokemon`);

--
-- Index pour la table `stockStat`
--
ALTER TABLE `stockStat`
  ADD PRIMARY KEY (`id_stockStat`),
  ADD KEY `fk_pokemonid` (`fk_pokemonid`),
  ADD KEY `fk_statid` (`fk_statid`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `attack`
--
ALTER TABLE `attack`
  MODIFY `id_attack` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `drespoke`
--
ALTER TABLE `drespoke`
  MODIFY `id_drespoke` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dresseurs`
--
ALTER TABLE `dresseurs`
  MODIFY `id_dresseurs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pokAttack`
--
ALTER TABLE `pokAttack`
  MODIFY `id_pokAttack` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_pokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `stockStat`
--
ALTER TABLE `stockStat`
  MODIFY `id_stockStat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `drespoke`
--
ALTER TABLE `drespoke`
  ADD CONSTRAINT `fk_id_dresseurs` FOREIGN KEY (`fk_id_dresseurs`) REFERENCES `dresseurs` (`id_dresseurs`),
  ADD CONSTRAINT `fk_id_stockStat` FOREIGN KEY (`fk_id_stockStat`) REFERENCES `stockStat` (`id_stockStat`);

--
-- Contraintes pour la table `dresseurs`
--
ALTER TABLE `dresseurs`
  ADD CONSTRAINT `fk_id_users` FOREIGN KEY (`fk_id_users`) REFERENCES `users` (`id_users`);

--
-- Contraintes pour la table `pokAttack`
--
ALTER TABLE `pokAttack`
  ADD CONSTRAINT `fk_id_attack` FOREIGN KEY (`fk_id_attack`) REFERENCES `attack` (`id_attack`),
  ADD CONSTRAINT `fk_id_pokemon` FOREIGN KEY (`fk_id_pokemon`) REFERENCES `pokemon` (`id_pokemon`);

--
-- Contraintes pour la table `stockStat`
--
ALTER TABLE `stockStat`
  ADD CONSTRAINT `fk_pokemonid` FOREIGN KEY (`fk_pokemonid`) REFERENCES `pokemon` (`id_pokemon`),
  ADD CONSTRAINT `fk_statid` FOREIGN KEY (`fk_statid`) REFERENCES `statPokemon` (`id_statPokemon`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
