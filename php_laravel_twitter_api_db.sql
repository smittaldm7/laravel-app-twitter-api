-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for php_laravel_twitter_api_db
CREATE DATABASE IF NOT EXISTS `php_laravel_twitter_api_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `php_laravel_twitter_api_db`;

-- Dumping structure for table php_laravel_twitter_api_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table php_laravel_twitter_api_db.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table php_laravel_twitter_api_db.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table php_laravel_twitter_api_db.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table php_laravel_twitter_api_db.tweets
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(512) DEFAULT NULL,
  `twitter_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Dumping data for table php_laravel_twitter_api_db.tweets: ~60 rows (approximately)
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` (`id`, `text`, `twitter_user_id`, `created_at`, `updated_at`) VALUES
	(1, 'this is a test tweet. This is an update ot the tweet', 1, '2019-08-08 13:37:54', '0000-00-00 00:00:00'),
	(2, 'RT @Wendys_fragranc: Paco Rabanne \nPure Xs \nHis &amp; Her Available for 43k \nGet each for 23k\n\nParis Designers Perfumes \nNationwide delivery \n#…', 1, '2019-08-08 08:13:00', '2019-08-08 08:13:00'),
	(3, 'Angie Arrieta - Perfume a Tus pies-Marcela Gandara', 1, '2019-08-08 08:13:00', '2019-08-08 08:13:00'),
	(4, '{gifted} If you like floral scents then you are going to fall in love with the new @LancomeUK Idole perfume. it has… https://t.co/ffiEOBxcci', 1, '2019-08-08 08:13:00', '2019-08-08 08:13:00'),
	(5, 'RT @STR8Philippines: Get your head in the game, and make your mark to the world. Your legacy begins with you. #GoForGreat #GoForGreatGianni…', 1, '2019-08-08 10:02:04', '2019-08-08 10:02:04'),
	(6, 'RT @GL0SSKTH: map of the soul: persona giveaway!\n\nincludes -\n- mots ver. 4\n- heart mirror\n- rose perfume\n- pink body glitter\n- butterfly cl…', 1, '2019-08-08 10:02:04', '2019-08-08 10:02:04'),
	(7, 'RT @samstein: I’m not surprised that Trump has managed to make himself the victim (of Biden, the press, Sherrod Brown, the Dayton mayor) du…', 1, '2019-08-08 10:05:33', '2019-08-08 10:05:33'),
	(8, 'RT @MrAndyNgo: I reached out to media ethics watcher @jaredlholt about why he was stealth deleting content the Dayton mass killer had promo…', 1, '2019-08-08 10:05:33', '2019-08-08 10:05:33'),
	(9, 'RT @JeffreyGuterman: Trump is exploiting El Paso and Dayton.', 1, '2019-08-08 10:05:33', '2019-08-08 10:05:33'),
	(10, 'Trump Boasts \'Amazing\' Visit To Grieving Cities. They Don\'t Seem So Thrilled. | HuffPost https://t.co/K1xkjPhFoR', 1, '2019-08-08 10:05:33', '2019-08-08 10:05:33'),
	(11, 'RT @francofontana43: Trump “persona non grata” a El Paso e Dayton\nda @marina_catucci, @ilmanifesto https://t.co/RhIhSreUiL', 1, '2019-08-08 10:05:33', '2019-08-08 10:05:33'),
	(12, 'RT @sandyhook: MISSING YOUR SIGNATURE | MIDNIGHT DEADLINE: We still need 746 more signatures calling on Sen. Mitch McConnell to bring the S…', 1, '2019-08-21 04:41:44', '2019-08-21 04:41:44'),
	(13, 'These are the top five most affordable housing markets for middle-class families:\n\n5. Pittsburgh, Pennsylvania\n\n4.… https://t.co/KHax1nMRDR', 1, '2019-08-21 04:41:44', '2019-08-21 04:41:44'),
	(14, '@wineaintsweeter @LyleRugby @lovesanimals @_TheHardWay @DonaldJTrumpJr Supporting the ideals of any supremacy be it… https://t.co/I5iufkq2Ka', 1, '2019-08-21 04:41:44', '2019-08-21 04:41:44'),
	(15, 'RT @DREDF: PERSPECTIVE: "Crazy" is not a diagnosis. And the hate, racism, bigotry and white supremacy that President Donald Trump condemned…', 1, '2019-08-21 04:41:44', '2019-08-21 04:41:44'),
	(16, '@graham_monica @wacuesta_dayton And a few kids who make more sense than anyone in the White House or Congress.', 1, '2019-08-21 04:41:44', '2019-08-21 04:41:44'),
	(17, 'RT @lokimultimcu: #SaveSpiderman Every Marvel stan at Sony right now: https://t.co/P0ThqHIoFp', 2, '2019-08-21 06:07:45', '2019-08-21 06:07:45'),
	(18, 'RT @ItsFuckenRuza: Disney going up to Sony like\n\n#SonyIsOverParty #SaveSpiderMan https://t.co/ROL5Vwy73r', 3, '2019-08-21 06:07:45', '2019-08-21 06:07:45'),
	(19, 'RT @stuartpstevens: Our Ambassador to Denmark is a grad of Life Chiropractic College &amp; an actress  “best known for her work in Deathstalker…', 5, '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(20, 'The man is insane. \nTrump postpones Denmark trip after Prime Minister refuses to discuss sale of Greenland\n\nhttps://t.co/kmvlTxYORm', 6, '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(21, 'The Denmark thing clearly shows Trump is mentally ill. \nHe is making America a worldwide joke. \n...and GOP say and do NOTHING', 7, '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(22, 'RT @realDonaldTrump: ....The Prime Minister was able to save a great deal of expense and effort for both the United States and Denmark by b…', 8, '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(23, 'RT @ChloeJappy2020: ..And the plot thickens......\n\nhttps://t.co/0Wq3M7Lxao', 9, '2019-08-21 06:10:11', '2019-08-21 06:10:11'),
	(24, 'RT @realDonaldTrump: ....The Prime Minister was able to save a great deal of expense and effort for both the United States and Denmark by b…', 10, '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(25, 'RT @realDonaldTrump: ....The Prime Minister was able to save a great deal of expense and effort for both the United States and Denmark by b…', 11, '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(26, 'RT @realDonaldTrump: ....The Prime Minister was able to save a great deal of expense and effort for both the United States and Denmark by b…', 12, '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(27, 'RT @realDonaldTrump: ....The Prime Minister was able to save a great deal of expense and effort for both the United States and Denmark by b…', 13, '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(28, 'The Denmark thing clearly shows Trump is mentally ill. \nHe is making America a worldwide joke. \n...and GOP say and do NOTHING', 7, '2019-08-21 06:24:52', '2019-08-21 06:24:52'),
	(29, 'RT @McFaul: Insane, insulting  way of conducting diplomacy. Remember Denmark is a NATO ally, whose soldiers died fighting next to us in Afg…', 7, '2019-08-21 06:24:53', '2019-08-21 06:24:53'),
	(30, 'RT @AynRandPaulRyan: @realDonaldTrump I can\'t f\'ing believe this is the President of the United States.\n\nBetween this Denmark thing and tel…', 7, '2019-08-21 06:24:53', '2019-08-21 06:24:53'),
	(31, '@realDonaldTrump Get Trump out. \nThe guy is unfit for Office. \nAn embarrassment to America. https://t.co/v0dmCeo70Q', 7, '2019-08-21 06:24:53', '2019-08-21 06:24:53'),
	(32, '@BLL1060 This guy is lowest. Believe me. https://t.co/XCD35TRohs', 7, '2019-08-21 06:24:53', '2019-08-21 06:24:53'),
	(33, 'The Denmark thing clearly shows Trump is mentally ill. \nHe is making America a worldwide joke. \n...and GOP say and do NOTHING', 7, '2019-08-21 06:30:43', '2019-08-21 06:30:43'),
	(34, 'RT @McFaul: Insane, insulting  way of conducting diplomacy. Remember Denmark is a NATO ally, whose soldiers died fighting next to us in Afg…', 7, '2019-08-21 06:30:43', '2019-08-21 06:30:43'),
	(35, 'RT @AynRandPaulRyan: @realDonaldTrump I can\'t f\'ing believe this is the President of the United States.\n\nBetween this Denmark thing and tel…', 7, '2019-08-21 06:30:43', '2019-08-21 06:30:43'),
	(36, 'RT @NewYorker: The Borowitz Report: “Denmark would be interested in purchasing the United States in its entirety, with the exception of its…', 7, '2019-08-21 06:30:43', '2019-08-21 06:30:43'),
	(37, 'RT @RepMcGovern: Trump rolls out the red carpet for North Korea. He bends over backwards for Putin. He ignores Saudi Arabia’s terrible crim…', 7, '2019-08-21 06:40:40', '2019-08-21 06:40:40'),
	(38, 'The Denmark thing clearly shows Trump is mentally ill. \nHe is making America a worldwide joke. \n...and GOP say and do NOTHING', 7, '2019-08-21 06:40:40', '2019-08-21 06:40:40'),
	(39, 'RT @McFaul: Insane, insulting  way of conducting diplomacy. Remember Denmark is a NATO ally, whose soldiers died fighting next to us in Afg…', 7, '2019-08-21 06:40:40', '2019-08-21 06:40:40'),
	(40, 'RT @AynRandPaulRyan: @realDonaldTrump I can\'t f\'ing believe this is the President of the United States.\n\nBetween this Denmark thing and tel…', 7, '2019-08-21 06:40:40', '2019-08-21 06:40:40'),
	(41, 'RT @NewYorker: The Borowitz Report: “Denmark would be interested in purchasing the United States in its entirety, with the exception of its…', 7, '2019-08-21 06:40:40', '2019-08-21 06:40:40'),
	(42, 'RT @HoarseWisperer: I feel like we aren’t talking about about how our Ambassador to Denmark, Carla Sands, was in Deathstalkers III - Warrio…', 14, '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(43, 'RT @CharlesPPierce: Denmark has lost 43 soldiers in Afghanistan.\nIf you\'re keeping score at home, that\'s 43 more people than have served in…', 15, '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(44, 'RT @mmpadellan: We laugh, mostly to stay sane.\n\nWhether he\'s trying to buy Greenland from Denmark, misspelling basic words, or sniffing his…', 16, '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(45, 'Delegation From Ghana Statistics Service in Denmark On Data Collection Study - https://t.co/F3ixR42Ndf https://t.co/UeTXAWRbMr', 17, '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(46, '@realDonaldTrump Nah I don’t see a rescheduling any time soon!! #Denmark is NOT for sale and you’re a vulture realt… https://t.co/mce5ExqcPm', 18, '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(47, 'RT @sandyhook: MISSING YOUR SIGNATURE | MIDNIGHT DEADLINE: We still need 746 more signatures calling on Sen. Mitch McConnell to bring the S…', 20, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(48, 'RT @BabeBachelor: After Dayton/El Paso shootings Trump said we needed background checks. He said #MoscowMitch wanted them too. Now today it…', 21, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(49, 'RT @DanRather: The president and his team have already turned his visit to Dayton, a city reeling with anger, bereavement, and trauma, into…', 22, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(50, 'RT @DeanObeidallah: Trump\'s "fine people" come after Dayton Mayor: The mayor of Dayton, Ohio, needed extra security after President Donald…', 23, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(51, 'RT @MollyJongFast: Some of the president’s supporters seem kind of scary.  https://t.co/yda3pLC1os', 24, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(52, 'RT @bbradsby: Two weeks after racist mass murders in El Paso, Texas; Dayton, Ohio; and Gilroy, California. \n\nThere is a pattern here. \n\nPro…', 25, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(53, 'RT @sandyhook: MISSING YOUR SIGNATURE | MIDNIGHT DEADLINE: We still need 746 more signatures calling on Sen. Mitch McConnell to bring the S…', 26, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(54, 'RT @thedailybeast: President Trump reportedly called NRA chief executive Wayne LaPierre to tell him universal background checks were off th…', 27, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(55, 'RT NWSFlashFlood: Flash Flood Warning including Bridgewater VA, Dayton VA, Mount Crawford VA until 9:30 PM EDT https://t.co/LoeZqHICY5', 28, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(56, 'RT @starsandstripes: In the days after the shootings in El Paso, Texas, and Dayton, Ohio, Trump inspired hope among gun-control advocates b…', 29, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(57, 'After Dayton/El Paso shootings Trump said we needed background checks. He said #MoscowMitch wanted them too. Now to… https://t.co/F5gE7FH1Pa', 30, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(58, 'RT @ThatKevinSmith: You did great, @BrianHezza! And the @starwars folks can rest easy: you gave out no spoilers tonight! Such a great show,…', 31, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(59, 'RT @TimOBrien: Trump is backing off of stricter gun control measures in the wake of the El Paso/Dayton shootings  — in almost exactly the s…', 32, '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(60, 'RT @DJJudd: Pete Buttigieg hit Trump tonight on reports he won’t consider background checks in gun legislation following shootings in El Pa…', 33, '2019-08-21 07:07:31', '2019-08-21 07:07:31');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;

-- Dumping structure for table php_laravel_twitter_api_db.twitter_users
CREATE TABLE IF NOT EXISTS `twitter_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `twitter_handle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table php_laravel_twitter_api_db.twitter_users: ~33 rows (approximately)
/*!40000 ALTER TABLE `twitter_users` DISABLE KEYS */;
INSERT INTO `twitter_users` (`id`, `twitter_handle`, `created_at`, `updated_at`) VALUES
	(1, 'dummy', NULL, NULL),
	(2, '_Lexliee', '2019-08-21 06:07:45', '2019-08-21 06:07:45'),
	(3, '_iingfahh_', '2019-08-21 06:07:45', '2019-08-21 06:07:45'),
	(4, 'graceritamarie', '2019-08-21 06:07:45', '2019-08-21 06:07:45'),
	(5, 'AKribbet', '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(6, 'JacygalResists', '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(7, 'ElHenderz', '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(8, 'JosepRuaix', '2019-08-21 06:10:10', '2019-08-21 06:10:10'),
	(9, 'mbees39', '2019-08-21 06:10:11', '2019-08-21 06:10:11'),
	(10, 'Mirsal_b', '2019-08-21 06:22:18', '2019-08-21 06:22:18'),
	(11, 'katbkm_b', '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(12, 'kobie_b', '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(13, 'Aristeidis_B', '2019-08-21 06:23:01', '2019-08-21 06:23:01'),
	(14, 'indyintx', '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(15, 'JerryOD', '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(16, 'ConstanceCorne9', '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(17, 'RadioTamale917', '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(18, 'jairarana', '2019-08-21 06:52:58', '2019-08-21 06:52:58'),
	(19, 'daytona_diaz', '2019-08-21 07:07:17', '2019-08-21 07:07:17'),
	(20, 'shaydee___', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(21, 'FalconCab', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(22, 'WhiteRoseVoice1', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(23, 'DanmanEllen', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(24, 'IlyaKuryakyn', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(25, 'coffsage', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(26, 'gmh8899', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(27, 'munn_dayle', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(28, 'FirstRDR_DIT', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(29, 'velox77', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(30, 'BabeBachelor', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(31, 'white_dayton', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(32, 'RONALLEN54', '2019-08-21 07:07:31', '2019-08-21 07:07:31'),
	(33, 'zkarlinn', '2019-08-21 07:07:31', '2019-08-21 07:07:31');
/*!40000 ALTER TABLE `twitter_users` ENABLE KEYS */;

-- Dumping structure for table php_laravel_twitter_api_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table php_laravel_twitter_api_db.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
