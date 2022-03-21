-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 21 Mar 2022, 12:50:35
-- Sunucu sürümü: 5.7.33
-- PHP Sürümü: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogId` int(11) NOT NULL,
  `date` date NOT NULL,
  `isShow` int(11) NOT NULL DEFAULT '0' COMMENT '0 ise aktif , 1 ise pasif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment_answers`
--

CREATE TABLE `comment_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'türkçe', 'tr', '2022-03-14 10:08:00', '2022-03-14 10:08:00'),
(2, 'english', 'en', '2022-03-14 10:08:13', '2022-03-14 10:08:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `language_contents`
--

CREATE TABLE `language_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languageId` int(11) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `chapterSub` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `dataId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `language_contents`
--

INSERT INTO `language_contents` (`id`, `languageId`, `chapter`, `chapterSub`, `value`, `dataId`, `created_at`, `updated_at`) VALUES
(81, 1, '7', '0', 'dsadas', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(82, 2, '7', '0', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(83, 1, '7', '1', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(84, 2, '7', '1', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(85, 1, '7', '8', 'sadasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(86, 2, '7', '8', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(87, 1, '7', '10', 'asdasdas', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(88, 2, '7', '10', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(89, 1, '7', '11', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(90, 2, '7', '11', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(91, 1, '7', '12', 'asdasd', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(92, 2, '7', '12', 'asdasdas', 1, '2022-03-14 10:36:56', '2022-03-14 10:36:56'),
(93, 1, '0', '0', 'erwwer', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(94, 2, '0', '0', 'werwer', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(95, 1, '0', '1', 'werwe', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(96, 2, '0', '1', 'werwer', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(97, 1, '0', '2', 'werwe', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(98, 2, '0', '2', 'werwe', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(99, 1, '0', '3', 'images/slider/1021-2994.jpg', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(100, 2, '0', '3', 'images/slider/1196-8631.jpg', 5, '2022-03-14 10:38:36', '2022-03-14 10:38:36'),
(101, 1, '1', '7', '<p>asdasdasdasd</p>', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(102, 2, '1', '7', '<p>sadasdasdasd</p>', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(103, 1, '1', '6', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(104, 2, '1', '6', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(105, 1, '1', '5', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(106, 2, '1', '5', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(107, 1, '1', '4', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(108, 2, '1', '4', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(109, 1, '1', '0', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(110, 2, '1', '0', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(111, 1, '1', '1', 'asdas', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(112, 2, '1', '1', 'asdasdas', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(113, 1, '1', '8', 'asdasd', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(114, 2, '1', '8', 'asdasda', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(115, 1, '1', '3', 'images/services/7586-1083.jpg', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(116, 2, '1', '3', 'images/services/5073-231.jpg', 1, '2022-03-14 10:40:29', '2022-03-14 10:40:29'),
(117, 1, '4', '7', '<p>adsasdasdas</p>', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(118, 2, '4', '7', '<p>sadadasdsad</p>', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(119, 1, '4', '5', 'hakkimizda', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(120, 2, '4', '5', 'about', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(121, 1, '4', '4', 'Hakkımızda', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(122, 2, '4', '4', 'About', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(123, 1, '4', '0', 'Hakkımızdda', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(124, 2, '4', '0', 'About', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(125, 1, '4', '1', 'Hakkımızdda', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(126, 2, '4', '1', 'About', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(127, 1, '4', '8', 'Hakkımızdda', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(128, 2, '4', '8', 'About', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(129, 2, '4', '3', 'images/page/6214-1460.jpg', 1, '2022-03-14 10:42:29', '2022-03-14 10:42:29'),
(134, 1, '5', '7', 'nasıl oldu', 1, '2022-03-14 10:46:29', '2022-03-14 10:46:29'),
(135, 2, '5', '7', 'How to', 1, '2022-03-14 10:46:29', '2022-03-14 10:46:29'),
(136, 1, '5', '4', 'nasıl', 1, '2022-03-14 10:46:29', '2022-03-14 10:46:29'),
(137, 2, '5', '4', 'How', 1, '2022-03-14 10:46:29', '2022-03-14 10:46:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2014_10_12_000000_create_users_table', 1),
(82, '2014_10_12_100000_create_password_resets_table', 1),
(83, '2019_04_22_144308_create_languages_table', 1),
(84, '2019_04_22_144356_create_langauge_contents_table', 1),
(85, '2019_04_22_222531_create_sliders_table', 1),
(86, '2019_04_28_132420_create_services_table', 1),
(87, '2019_04_28_220628_create_blog_categories_table', 1),
(88, '2019_04_28_222938_create_blogs_table', 1),
(89, '2019_04_29_214055_create_pages_table', 1),
(90, '2019_04_30_213249_create_projects_table', 1),
(91, '2019_04_30_221707_create_teams_table', 1),
(92, '2019_04_30_225718_create_settings_table', 1),
(93, '2019_04_30_231844_create_referans_table', 1),
(94, '2019_05_11_011058_create_comments_table', 1),
(95, '2019_05_11_013019_create_comment_answers_table', 1),
(96, '2019_05_14_010458_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isShow` int(11) NOT NULL DEFAULT '0',
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `isShow`, `orderNumber`, `created_at`, `updated_at`) VALUES
(1, 0, 0, '2022-03-14 10:42:29', '2022-03-14 10:42:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `isShow` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `image`, `url`, `orderNumber`, `isShow`, `created_at`, `updated_at`) VALUES
(1, 'images/project/2492-1349.jpg', 'proje', 0, 0, '2022-03-14 10:45:25', '2022-03-14 10:46:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referans`
--

CREATE TABLE `referans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `isHome` int(11) NOT NULL DEFAULT '0',
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `icon`, `isHome`, `orderNumber`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, '2022-03-14 10:40:29', '2022-03-14 10:40:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `year_experience` int(11) NOT NULL DEFAULT '0',
  `year_won` int(11) NOT NULL DEFAULT '0',
  `expart_stuff` int(11) NOT NULL DEFAULT '0',
  `happy_customer` int(11) NOT NULL DEFAULT '0',
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) NOT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `year_experience`, `year_won`, `expart_stuff`, `happy_customer`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'uygarsarioglu@gmail.com', '0123456789', 2022, 2022, 1231, 12132, 'sdfs', 'sdfs', 'sdf', 'fsdfs', 'sdf', 'sds', NULL, '2022-03-14 10:36:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderNumber` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `orderNumber`, `created_at`, `updated_at`) VALUES
(5, NULL, '2022-03-14 10:38:36', '2022-03-14 10:38:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a@a.com', '2022-03-01 13:06:40', '$2a$12$4A7LXc13sACC5FJhtGfqjuDAZ1upoB3wl3ywZ1rCxIKPBQXiRDZWW', NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment_answers`
--
ALTER TABLE `comment_answers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `language_contents`
--
ALTER TABLE `language_contents`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referans`
--
ALTER TABLE `referans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comment_answers`
--
ALTER TABLE `comment_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `language_contents`
--
ALTER TABLE `language_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Tablo için AUTO_INCREMENT değeri `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `referans`
--
ALTER TABLE `referans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
