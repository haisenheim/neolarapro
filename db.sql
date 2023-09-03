-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 03 sep. 2023 à 13:53
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `neolarapro_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `jour` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `secteur_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `activites`
--

INSERT INTO `activites` (`id`, `nom`, `jour`, `description`, `secteur_id`) VALUES
(1, 'Jonglage', '2023-08-01', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repudiandae saepe veniam cum soluta ea, ipsa natus reiciendis, minus eos tenetur recusandae tempore expedita unde, nisi praesentium est libero alias omnis.\r\nMaiores saepe veritatis autem quis sequi assumenda repellendus et molestiae excepturi quo enim eligendi, ut, nulla similique harum vel tempora culpa officia facilis? Voluptatum quam quisquam voluptate, nisi dicta sapiente.\r\nLaboriosam omnis quos odit culpa voluptates, autem, animi rem in repellendus, ipsam consequatur id. Natus quia saepe consectetur in officia voluptates quis, hic, eos quo officiis, possimus iste dolore tenetur.\r\nSoluta sint placeat neque sequi esse error rem accusamus totam, corporis facilis doloribus doloremque aut tempora voluptas voluptatibus iure earum consectetur corrupti est ipsa. Sunt unde ipsum doloremque neque dolores.', 2),
(2, 'Apprentissage au codage modif', '2023-06-14', 'Modif Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, maxime. Et autem unde architecto sit deleniti alias blanditiis sed in ex. Atque cupiditate corporis in beatae perferendis. Et, minus sunt!\r\nMolestiae atque tempora ut quidem assumenda consectetur, nihil veritatis voluptas, aspernatur unde eius! Quia quis iste ea quos, laboriosam velit sint vitae repellat quam iure eum modi, aut voluptas nam.\r\nQuia, sequi illo. Nesciunt totam porro velit voluptates, veniam reprehenderit error commodi quia eos, dignissimos cupiditate molestias neque unde nihil facere! Hic, qui nisi! Accusantium libero sint delectus impedit consequuntur!\r\nSimilique officiis ipsum aperiam eius quibusdam, eos minima ratione illum nulla tenetur neque doloribus vitae velit quasi iusto delectus labore deleniti et eaque dolor voluptatibus. Sit neque ab illo ea.\r\nExpedita dicta saepe vitae beatae illo unde harum nihil. Neque dolorem autem doloribus quas veniam odit voluptatum atque culpa fugiat corporis enim, aliquam veritatis ratione adipisci nesciunt possimus, doloremque blanditiis?', 3),
(3, 'Seance de codage', '2023-08-16', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `uuid`, `name`, `body`) VALUES
(1, 'sdhjdsksd', 'Nouvelle Seance', 'jdsjkjdskjdks hdishkdhskhsd');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secteur_id` int(11) NOT NULL DEFAULT 0,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `secteur_id`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Nya Champlin', 'bzboncak@yundt.biz', '(860) 947-2900', 2, 'Thu-01-70', NULL, NULL),
(2, 'Alanis Pagac DDS', 'charles83@gmail.com', '713.337.9534', 3, 'Thu-01-70', NULL, NULL),
(3, 'Ransom Larson IV', 'qbaumbach@heathcote.biz', '1-907-718-7323', 1, 'Thu-01-70', NULL, NULL),
(4, 'Dr. Jaeden Marvin Sr.', 'genoveva30@yahoo.com', '+1.432.838.4560', 2, 'Thu-01-70', NULL, NULL),
(5, 'Mr. Elmo Wuckert', 'hoppe.maximilian@ledner.com', '1-463-493-4849', 3, 'Thu-01-70', NULL, NULL),
(6, 'Prof. Rodger Shields', 'ortiz.emmanuel@gmail.com', '+1-878-838-7657', 1, 'Thu-01-70', NULL, NULL),
(7, 'Avis Jacobi', 'ayana96@gmail.com', '+1-806-453-5666', 2, 'Thu-01-70', NULL, NULL),
(8, 'Irving Beatty', 'viva99@gmail.com', '+1-828-585-1833', 3, 'Thu-01-70', NULL, NULL),
(9, 'Ferne Bartoletti DDS', 'xnicolas@gmail.com', '+1.534.468.7403', 1, 'Thu-01-70', NULL, NULL),
(10, 'Torey Jerde', 'nbogan@hotmail.com', '650-643-7827', 2, 'Thu-01-70', NULL, NULL),
(11, 'Miss Elsie Graham III', 'madisen38@hotmail.com', '+1.858.679.7589', 3, 'Thu-01-70', NULL, NULL),
(12, 'Ms. Jennie Roob', 'ddouglas@wolff.com', '+17406262700', 1, 'Thu-01-70', NULL, NULL),
(13, 'Miss Sydni Skiles', 'larkin.leatha@koelpin.com', '+1-534-561-7348', 2, 'Thu-01-70', NULL, NULL),
(14, 'Emelia Kessler', 'wlabadie@gmail.com', '(520) 801-8566', 3, 'Thu-01-70', NULL, NULL),
(15, 'Dr. Graciela Pouros Sr.', 'gdare@hotmail.com', '+1.479.520.6366', 1, 'Thu-01-70', NULL, NULL),
(16, 'Mr. Trevor Rosenbaum IV', 'citlalli.terry@rowe.com', '510-679-0326', 2, 'Thu-01-70', NULL, NULL),
(17, 'Prof. Ethan Collins', 'jacinto.doyle@hotmail.com', '240-442-4667', 3, 'Thu-01-70', NULL, NULL),
(18, 'Nat Howe', 'julio.gusikowski@gmail.com', '+1 (337) 453-2760', 1, 'Thu-01-70', NULL, NULL),
(19, 'Timmy Welch', 'upadberg@yahoo.com', '+19718174445', 2, 'Thu-01-70', NULL, NULL),
(20, 'Ms. Aracely Gulgowski III', 'ohara.pearlie@klocko.biz', '+17752185024', 3, 'Thu-01-70', NULL, NULL),
(21, 'Ashley Bruen', 'betsy.stark@yahoo.com', '(407) 553-0722', 1, 'Thu-01-70', NULL, NULL),
(22, 'Evelyn Gutmann DDS', 'mlesch@abbott.com', '+1.254.518.6298', 2, 'Thu-01-70', NULL, NULL),
(23, 'Brook Maggio', 'lonny.abernathy@blanda.com', '573.914.1471', 3, 'Thu-01-70', NULL, NULL),
(24, 'Elda Kutch', 'agaylord@gmail.com', '1-248-914-3632', 1, 'Thu-01-70', NULL, NULL),
(25, 'Prof. Brenda Friesen', 'london98@torp.com', '1-534-644-3202', 2, 'Thu-01-70', NULL, NULL),
(26, 'Junior Herman DVM', 'zhowe@hotmail.com', '1-941-243-7575', 3, 'Thu-01-70', NULL, NULL),
(27, 'Krystal Luettgen', 'haleigh.bartoletti@tromp.biz', '+1.364.491.1858', 1, 'Thu-01-70', NULL, NULL),
(28, 'Dr. Brionna McKenzie I', 'romaguera.mac@beier.com', '(843) 297-0085', 2, 'Thu-01-70', NULL, NULL),
(29, 'Celine Heidenreich', 'corwin.domenica@yahoo.com', '1-479-247-9672', 3, 'Thu-01-70', NULL, NULL),
(30, 'Roger Koch', 'kdenesik@yahoo.com', '469.293.8196', 1, 'Thu-01-70', NULL, NULL),
(31, 'Leora Rippin V', 'monahan.cletus@gmail.com', '740-931-8233', 2, 'Thu-01-70', NULL, NULL),
(32, 'Roxanne Hane', 'cathrine.beer@bartoletti.biz', '(262) 620-7466', 3, 'Thu-01-70', NULL, NULL),
(33, 'Dr. Carter Willms Jr.', 'casper.cheyanne@yahoo.com', '(903) 862-5123', 1, 'Thu-01-70', NULL, NULL),
(34, 'Mr. Ryann Zieme', 'jaydon.greenfelder@hotmail.com', '1-919-309-2356', 2, 'Thu-01-70', NULL, NULL),
(35, 'Dr. Pat Schiller', 'janessa78@yahoo.com', '574.838.0763', 3, 'Thu-01-70', NULL, NULL),
(36, 'Jude Schmeler', 'bayer.joannie@gmail.com', '480.850.3402', 1, 'Thu-01-70', NULL, NULL),
(37, 'Prof. Dexter Wisozk DVM', 'grady.rowland@wiza.com', '+1.727.623.3255', 2, 'Thu-01-70', NULL, NULL),
(38, 'Sister Auer Sr.', 'hettinger.fabian@gmail.com', '810.579.4139', 3, 'Thu-01-70', NULL, NULL),
(39, 'Hermann Mayer', 'wiza.jayson@hermann.info', '+1-231-925-0611', 1, 'Thu-01-70', NULL, NULL),
(40, 'Ardith Rice', 'hassie.borer@eichmann.com', '+15744194406', 2, 'Thu-01-70', NULL, NULL),
(41, 'Araceli Brown Sr.', 'marcos71@yahoo.com', '+1-240-866-1462', 3, 'Thu-01-70', NULL, NULL),
(42, 'Augusta Rutherford', 'beahan.brain@runte.com', '1-734-993-7353', 1, 'Thu-01-70', NULL, NULL),
(43, 'Roselyn Stamm', 'ckuhic@gmail.com', '1-850-675-6866', 2, 'Thu-01-70', NULL, NULL),
(44, 'Kattie Ebert', 'lkirlin@hotmail.com', '+1-509-210-0239', 3, 'Thu-01-70', NULL, NULL),
(45, 'Bobbie Rice', 'konopelski.emma@gmail.com', '938.396.0653', 1, 'Thu-01-70', NULL, NULL),
(46, 'Barton Morar', 'will67@yahoo.com', '(801) 695-2796', 2, 'Thu-01-70', NULL, NULL),
(47, 'Dee Lakin', 'hirthe.marilyne@reichert.org', '463.885.6771', 3, 'Thu-01-70', NULL, NULL),
(48, 'Evelyn Collins', 'gislason.sherman@hermiston.com', '+1 (463) 556-8000', 1, 'Thu-01-70', NULL, NULL),
(49, 'Ms. Agustina Lehner III', 'qmitchell@stehr.info', '(360) 408-3603', 2, 'Thu-01-70', NULL, NULL),
(50, 'Callie Parker Jr.', 'smitham.monty@brown.info', '469.595.9210', 3, 'Thu-01-70', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `prenom` varchar(200) DEFAULT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `actif`) VALUES
(1, 'MAKAYA', 'REMY', 0),
(2, 'NGOMA', 'ALAIN', 0);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_01_120229_post', 1),
(6, '2023_07_31_172007_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Administrateur'),
(2, 'Responsable finance'),
(3, 'Responsable de stocl'),
(4, 'Vendeur');

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `nom`) VALUES
(1, 'Agriculture'),
(2, 'Peinture'),
(3, 'Technologie');

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `duree` int(11) NOT NULL DEFAULT 1,
  `activite_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(1, 'admin neo', 1, 'admin@neolaravel.com', NULL, '$2y$10$X0c94uLW2/TVZnlGke3aFu/i4mkuoIAEiNTBWduzAlS9RtxDiFbzm', NULL, '2023-07-15 10:29:39', '2023-07-15 10:29:39', 1),
(2, 'noe user', 2, 'user@noelara.com', NULL, '$2y$10$cpXWuXqi0K8aTQN83LS72.1L1iU9T/SUVuo7H09kx9Ffcr57G/ygy', NULL, '2023-07-15 10:38:36', '2023-07-15 10:38:36', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_uuid_unique` (`uuid`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
