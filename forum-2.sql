-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table test. comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.comments : ~8 rows (environ)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `user_id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
	(1, 1, 'pas mal', 1, 'App\\Thread', '2021-07-31 17:00:34', '2021-07-31 17:00:34'),
	(2, 1, 'creer le referentiel du projet', 1, 'App\\Thread', '2021-07-31 17:01:38', '2021-07-31 17:01:38'),
	(3, 1, 'je suis pas super fort en java, disons que je me debrouille', 2, 'App\\Thread', '2021-08-01 05:21:36', '2021-08-01 05:21:36'),
	(4, 2, 'il faut plutot ecrit ; Scanner sc = new Scanner(System.in);', 2, 'App\\Thread', '2021-08-01 05:33:22', '2021-08-01 05:33:22'),
	(5, 2, 'bah je crois faudra voir la doc apres !', 4, 'App\\Comment', '2021-08-01 05:39:02', '2021-08-01 05:40:20'),
	(6, 2, 'sans oublier d\'importer Scanner biensur :)', 4, 'App\\Comment', '2021-08-01 05:40:50', '2021-08-01 05:40:50'),
	(7, 1, 'merci bien kimi de poy', 2, 'App\\Thread', '2021-08-01 05:46:17', '2021-08-01 05:46:17'),
	(8, 2, 'de rien, bonne suite', 7, 'App\\Comment', '2021-08-01 05:47:51', '2021-08-01 05:47:51');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Listage de la structure de la table test. likes
DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `likable_id` int(11) NOT NULL,
  `likable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.likes : ~0 rows (environ)
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` (`id`, `user_id`, `likable_id`, `likable_type`, `created_at`, `updated_at`) VALUES
	(1, 2, 4, 'App\\Comment', '2021-08-01 05:34:49', '2021-08-01 05:34:49');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

-- Listage de la structure de la table test. migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.migrations : ~10 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_04_13_012507_create_threads_table', 1),
	(4, '2017_04_17_080216_add_user_id_to_threads', 1),
	(5, '2017_04_22_123222_create_comments_table', 1),
	(6, '2017_05_06_161732_add_solution_column_in_threads_table', 1),
	(7, '2017_05_08_032932_create_likes_table', 1),
	(8, '2017_05_20_132643_create_notifications_table', 1),
	(9, '2017_07_03_004159_create_tags_table', 1),
	(10, '2017_07_03_004815_create_tags_thread_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table test. notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.notifications : ~4 rows (environ)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('542263f1-25eb-4c63-a59b-9cfc1d1bf9a1', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{"thread":{"id":2,"subject":"erreur de lecture avec scanner","thread":"Scanner sc = new Scanner(System.poto);\\r\\nne marche pas, or pourtant je suis sur d\'avoir correctement ecrit \\r\\nbesoin d\'aide svp","type":null,"created_at":"2021-08-01 05:11:34","updated_at":"2021-08-01 05:43:17","user_id":1,"solution":4,"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-08-01 04:37:55"}},"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-08-01 04:37:55"}}', '2021-08-01 05:48:00', '2021-08-01 05:46:17', '2021-08-01 05:48:00'),
	('671875d4-a18f-4377-af56-f1f923f94e19', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{"thread":{"id":1,"subject":"langage php","thread":"what php about ?","type":null,"created_at":"2021-07-31 16:54:04","updated_at":"2021-07-31 17:01:01","user_id":1,"solution":1,"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-07-31 16:51:29"}},"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-07-31 16:51:29"}}', '2021-07-31 17:06:59', '2021-07-31 17:01:38', '2021-07-31 17:06:59'),
	('74374c9b-e19c-4f00-915f-c3df886d10a8', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{"thread":{"id":2,"subject":"erreur de lecture avec scanner","thread":"Scanner sc = new Scanner(System.poto);\\r\\nne marche pas, or pourtant je suis sur d\'avoir correctement ecrit \\r\\nbesoin d\'aide svp","type":null,"created_at":"2021-08-01 05:11:34","updated_at":"2021-08-01 05:20:55","user_id":1,"solution":null,"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-08-01 04:37:55"}},"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-08-01 04:37:55"}}', '2021-08-01 05:43:29', '2021-08-01 05:21:36', '2021-08-01 05:43:29'),
	('edf54fe6-858c-4ef2-9a50-32294f61de51', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{"thread":{"id":1,"subject":"langage php","thread":"what php about ?","type":null,"created_at":"2021-07-31 16:54:04","updated_at":"2021-07-31 16:54:04","user_id":1,"solution":null,"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-07-31 16:51:29"}},"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-07-31 16:51:29"}}', '2021-07-31 17:06:59', '2021-07-31 17:00:34', '2021-07-31 17:06:59'),
	('f6baf93e-a939-4416-a7e2-94d170b876eb', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{"thread":{"id":2,"subject":"erreur de lecture avec scanner","thread":"Scanner sc = new Scanner(System.poto);\\r\\nne marche pas, or pourtant je suis sur d\'avoir correctement ecrit \\r\\nbesoin d\'aide svp","type":null,"created_at":"2021-08-01 05:11:34","updated_at":"2021-08-01 05:20:55","user_id":1,"solution":null,"user":{"id":1,"name":"lolipop sminth","email":"virtus225one@gmail.com","created_at":"2021-07-31 16:51:29","updated_at":"2021-08-01 04:37:55"}},"user":{"id":2,"name":"kimi de poy","email":"kimidepoy@gmail.com","created_at":"2021-08-01 05:32:24","updated_at":"2021-08-01 05:32:24"}}', '2021-08-01 05:43:29', '2021-08-01 05:33:22', '2021-08-01 05:43:29');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Listage de la structure de la table test. password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table test. tags
DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.tags : ~8 rows (environ)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'programmation php', '2021-07-31 16:53:09', NULL),
	(2, 'programmation java', '2021-08-01 05:02:36', NULL),
	(3, 'programmation python', '2021-08-01 05:02:36', NULL),
	(4, 'mathematique', '2021-08-01 05:02:37', NULL),
	(5, 'theorie des langages', '2021-08-01 05:03:07', NULL),
	(6, 'informatique generale', '2021-08-01 05:02:15', NULL),
	(7, 'Miage', '2021-08-01 05:03:22', NULL),
	(8, 'Iot', '2021-08-01 05:03:15', NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Listage de la structure de la table test. tag_thread
DROP TABLE IF EXISTS `tag_thread`;
CREATE TABLE IF NOT EXISTS `tag_thread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.tag_thread : ~5 rows (environ)
/*!40000 ALTER TABLE `tag_thread` DISABLE KEYS */;
INSERT INTO `tag_thread` (`id`, `thread_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-08-01 05:04:22', NULL),
	(2, 2, 2, NULL, NULL),
	(3, 2, 6, NULL, NULL),
	(4, 3, 7, NULL, NULL),
	(5, 3, 4, NULL, NULL);
/*!40000 ALTER TABLE `tag_thread` ENABLE KEYS */;

-- Listage de la structure de la table test. threads
DROP TABLE IF EXISTS `threads`;
CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `solution` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.threads : ~3 rows (environ)
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;
INSERT INTO `threads` (`id`, `subject`, `thread`, `type`, `created_at`, `updated_at`, `user_id`, `solution`) VALUES
	(1, 'langage php', 'comment créé un projet php', NULL, '2021-07-31 16:54:04', '2021-07-31 17:01:01', 1, 1),
	(2, 'erreur de lecture avec scanner', 'Scanner sc = new Scanner(System.poto);\r\nne marche pas, or pourtant je suis sur d\'avoir correctement ecrit \r\nbesoin d\'aide svp', NULL, '2021-08-01 05:11:34', '2021-08-01 05:43:17', 1, 4),
	(3, 'comment valider proba', 'c\'est compliqué hein, je sais pas trop quoi bosser,\r\ndes astuces, des docs et autres svp ?', NULL, '2021-08-01 05:57:11', '2021-08-01 05:57:11', 2, NULL);
/*!40000 ALTER TABLE `threads` ENABLE KEYS */;

-- Listage de la structure de la table test. users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table test.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'lolipop sminth', 'virtus225one@gmail.com', '$2y$10$Ibf.7hx4FY19bwLfggqYEunCjTt2ZB3Kz//C7mz7o/YUjD4UIdIOK', 'lEWgHQlMyZgqPr4kY5hdbugsct6HI9ZcDh4WAZ39QM8FDC77EKGDK76FDWec', '2021-07-31 16:51:29', '2021-08-01 04:37:55'),
	(2, 'kimi de poy', 'kimidepoy@gmail.com', '$2y$10$dx6TsAfeB5mIZCkX7CBYzOwqdXQQryigkclcd6EVQVxLMYqlXp6Vu', NULL, '2021-08-01 05:32:24', '2021-08-01 05:32:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
