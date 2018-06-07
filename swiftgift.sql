-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 12:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swiftgift`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_user`
--

CREATE TABLE IF NOT EXISTS `announcement_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `announcement_user_announcement_id_foreign` (`announcement_id`),
  KEY `announcement_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parent_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Airport', 'description about Airport', 1, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(2, 'Automotive', 'description about Automotive', 2, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(3, 'Bank/Financial Services', 'description about Bank/Financial Services', 3, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(4, 'Bar', 'description about Bar', 4, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(5, 'Book Store', 'description about Book Store', 5, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(6, 'Business Services', 'description about Business Services', 6, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(7, 'Church/Religious Organization', 'description about Church/Religious Organization', 7, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(8, 'Club', 'description about Club', 8, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(9, 'Concert Venue', 'description about Concert Venue', 9, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(10, 'Doctor', 'description about Doctor', 10, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(11, 'Education', 'description about Education', 11, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(12, 'Event Planning/Event Services', 'description about Event Planning/Event Services', 12, 1, '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(13, 'Home Improvement', 'description about Home Improvement', 13, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(14, 'Hotel', 'description about Hotel', 14, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(15, 'Landmark', 'description about Landmark', 15, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(16, 'category1', 'description about category1', 16, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(17, 'category2', 'description about category2', 17, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(18, 'category3', 'description about category3', 18, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(19, 'category4', 'description about category4', 19, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(20, 'category5', 'description about category5', 20, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(21, 'category6', 'description about category6', 21, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(22, 'category7', 'description about category7', 22, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(23, 'category8', 'description about category8', 23, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(24, 'category9', 'description about category9', 24, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(25, 'category10', 'description about category10', 25, 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE IF NOT EXISTS `comment_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `comment_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_likes_user_id_foreign` (`user_id`),
  KEY `comment_likes_comment_id_foreign` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `follower_id` int(10) unsigned NOT NULL,
  `leader_id` int(10) unsigned NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `followers_follower_id_foreign` (`follower_id`),
  KEY `followers_leader_id_foreign` (`leader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeline_id` int(10) unsigned NOT NULL,
  `type` enum('open','closed','secret') COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `member_privacy` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `post_privacy` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_timeline_id_foreign` (`timeline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE IF NOT EXISTS `group_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_user_group_id_foreign` (`group_id`),
  KEY `group_user_user_id_foreign` (`user_id`),
  KEY `group_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE IF NOT EXISTS `hashtags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_trend_time` timestamp NOT NULL,
  `count` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_12_100000_create_settings_table', 1),
('2014_10_28_175635_create_threads_table', 1),
('2014_10_28_175710_create_messages_table', 1),
('2014_10_28_180224_create_participants_table', 1),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 1),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 1),
('2014_11_20_131739_alter_last_read_in_participants_table', 1),
('2014_12_04_124531_add_softdeletes_to_threads_table', 1),
('2016_05_11_102459_create_categories_table', 1),
('2016_05_11_102459_create_followers_table', 1),
('2016_05_11_102459_create_group_user_table', 1),
('2016_05_11_102459_create_groups_table', 1),
('2016_05_11_102459_create_languages_table', 1),
('2016_05_11_102459_create_media_table', 1),
('2016_05_11_102459_create_page_likes_table', 1),
('2016_05_11_102459_create_page_user_table', 1),
('2016_05_11_102459_create_pages_table', 1),
('2016_05_11_102459_create_post_follows_table', 1),
('2016_05_11_102459_create_post_likes_table', 1),
('2016_05_11_102459_create_post_media_table', 1),
('2016_05_11_102459_create_post_shares_table', 1),
('2016_05_11_102459_create_posts_table', 1),
('2016_05_11_102459_create_timelines_table', 1),
('2016_05_11_102459_create_user_settings_table', 1),
('2016_05_11_102459_create_users_table', 1),
('2016_05_11_102460_create_timeline_reports_table', 1),
('2016_05_11_102500_create_announcement_user_table', 1),
('2016_05_11_102500_create_announcements_table', 1),
('2016_05_11_102500_create_comment_likes_table', 1),
('2016_05_11_102500_create_comments_table', 1),
('2016_05_11_102500_create_hashtags_table', 1),
('2016_05_11_102500_create_notifications_table', 1),
('2016_05_11_102500_create_post_reports_table', 1),
('2016_07_08_170940_create_post_tags_table', 1),
('2016_08_01_123157_entrust_setup_tables', 1),
('2016_08_02_123157_create_foreign_keys', 1),
('2016_08_03_103604_create_static_pages_table', 1),
('2016_08_28_194209_alter_users', 1),
('2016_08_31_174439_insert_settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `timeline_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `notified_by` int(10) unsigned NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_post_id_foreign` (`post_id`),
  KEY `notifications_timeline_id_foreign` (`timeline_id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  KEY `notifications_notified_by_foreign` (`notified_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeline_id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(10) unsigned NOT NULL,
  `message_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `member_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `timeline_post_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_timeline_id_foreign` (`timeline_id`),
  KEY `pages_category_id_foreign` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_likes`
--

CREATE TABLE IF NOT EXISTS `page_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_likes_page_id_foreign` (`page_id`),
  KEY `page_likes_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_user`
--

CREATE TABLE IF NOT EXISTS `page_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_user_page_id_foreign` (`page_id`),
  KEY `page_user_user_id_foreign` (`user_id`),
  KEY `page_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `timeline_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `soundcloud_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `soundcloud_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_video_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_timeline_id_foreign` (`timeline_id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `description`, `timeline_id`, `user_id`, `active`, `soundcloud_title`, `soundcloud_id`, `youtube_title`, `youtube_video_id`, `location`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dsa', 1, 1, 1, '', '', '', '', '', '', '2018-06-04 10:48:05', '2018-06-04 10:48:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_follows`
--

CREATE TABLE IF NOT EXISTS `post_follows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_follows_post_id_foreign` (`post_id`),
  KEY `post_follows_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `post_follows`
--

INSERT INTO `post_follows` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_likes_post_id_foreign` (`post_id`),
  KEY `post_likes_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE IF NOT EXISTS `post_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_media_post_id_foreign` (`post_id`),
  KEY `post_media_media_id_foreign` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_reports`
--

CREATE TABLE IF NOT EXISTS `post_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `reporter_id` int(10) unsigned NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_reports_post_id_foreign` (`post_id`),
  KEY `post_reports_reporter_id_foreign` (`reporter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_shares`
--

CREATE TABLE IF NOT EXISTS `post_shares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_shares_post_id_foreign` (`post_id`),
  KEY `post_shares_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE IF NOT EXISTS `post_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_post_id_foreign` (`post_id`),
  KEY `post_tags_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Admin', 'Access to everything', '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(2, 'user', 'User', 'Access limited to user', '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(3, 'moderator', 'Moderator', 'Access limited to moderator', '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(4, 'editor', 'Editor', 'Access limited to editor', '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_key_index` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'noreply_email', '', '2018-06-04 10:47:03', '2018-06-04 10:47:03', NULL),
(2, 'language', '', '2018-06-04 10:47:03', '2018-06-04 10:47:03', NULL),
(3, 'logo', '', '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(4, 'favicon', '', '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(5, 'enable_browse', '', '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(6, 'meta_description', '', '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(7, 'meta_keywords', '', '2018-06-04 10:47:04', '2018-06-04 10:47:04', NULL),
(8, 'comment_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(9, 'confirm_follow', 'no', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(10, 'follow_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(11, 'user_timeline_post_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(12, 'post_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(13, 'page_message_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(14, 'page_timeline_post_privacy', 'everyone', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(15, 'page_member_privacy', 'only_admins', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(16, 'member_privacy', 'only_admins', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(17, 'group_timeline_post_privacy', 'members', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(18, 'group_member_privacy', 'only_admins', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(19, 'site_name', 'Socialite', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(20, 'site_title', 'Socialite', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(21, 'site_url', 'socialite.dev', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(22, 'twitter_link', 'http://twitter.com/', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(23, 'facebook_link', 'http://facebook.com/', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(24, 'youtube_link', 'http://youtube.com/', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(25, 'support_email', 'admin@socialite.com', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(26, 'mail_verification', 'on', '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(27, 'captcha', 'on', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(28, 'censored_words', '', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(29, 'birthday', '0', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(30, 'city', '0', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(31, 'about', '0', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(32, 'contact_text', 'Contact page description can be here', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(33, 'address_on_mail', 'Socialite,<br> Socialite street,<br> India', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(34, 'items_page', '10', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL),
(35, 'min_items_page', '5', '2018-06-04 10:47:07', '2018-06-04 10:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE IF NOT EXISTS `static_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `slug`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'about', 'about', 'Natus sunt dolorem deserunt ea. Eveniet aspernatur molestiae voluptas tempore consequatur adipisci ullam autem. Cupiditate non commodi sed quia maiores necessitatibus voluptatem. Molestiae doloremque sed distinctio quasi fuga.', 1, '2018-06-04 10:47:05', '2018-06-04 10:47:05', NULL),
(2, 'privacy', 'privacy', 'Explicabo voluptatem rerum reprehenderit minus consequatur est. Enim eligendi dignissimos ex placeat autem. Eius explicabo sequi iusto minus facere occaecati.', 1, '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(3, 'disclaimer', 'disclaimer', 'Debitis quam voluptas officiis molestias ex perferendis est nihil. Ex sequi nostrum nisi aliquam aut. Ut molestiae minus iusto molestiae iusto consectetur accusamus odio. Sed fugiat laborum velit quis qui alias.', 1, '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL),
(4, 'terms', 'terms', 'Mollitia tempora id placeat aut. Rerum soluta fugit aut nobis sit nam. Alias aliquid officia et repellat ut ex.', 1, '2018-06-04 10:47:06', '2018-06-04 10:47:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE IF NOT EXISTS `timelines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `cover_id` int(10) unsigned DEFAULT NULL,
  `cover_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('user','page','group') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `timelines_username_unique` (`username`),
  KEY `timelines_avatar_id_foreign` (`avatar_id`),
  KEY `timelines_cover_id_foreign` (`cover_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `username`, `name`, `about`, `avatar_id`, `cover_id`, `cover_position`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Admin', 'Some text about me', NULL, NULL, '', 'user', '2018-06-04 10:47:06', '2018-06-04 10:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timeline_reports`
--

CREATE TABLE IF NOT EXISTS `timeline_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeline_id` int(10) unsigned NOT NULL,
  `reporter_id` int(10) unsigned NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timeline_reports_timeline_id_foreign` (`timeline_id`),
  KEY `timeline_reports_reporter_id_foreign` (`reporter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeline_id` int(10) unsigned NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified` tinyint(1) NOT NULL,
  `remember_token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `birthday` date NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `last_logged` timestamp NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `affiliate_id` int(10) unsigned DEFAULT NULL,
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_timeline_id_foreign` (`timeline_id`),
  KEY `users_affiliate_id_foreign` (`affiliate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `timeline_id`, `email`, `verification_code`, `verified`, `email_verified`, `remember_token`, `password`, `balance`, `birthday`, `city`, `country`, `gender`, `active`, `last_logged`, `timezone`, `affiliate_id`, `language`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'krishnasingh@websinfotech.com', 'uGdFhDDtCdkVCI4igL', 0, 1, 'Fg3PaT7bqJ', '$2y$10$DFNLQbKWEZVqNfh0752p1u6ajOgX7OF46OhZD1tTmU2eu/Le4PkOq', 0.00, '1970-01-01', 'Hyderabad', 'India', 'male', 1, '0000-00-00 00:00:00', '', NULL, NULL, '2018-06-04 10:47:06', '2018-06-04 10:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `comment_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `follow_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `post_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `confirm_follow` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `timeline_post_privacy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email_follow` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_like_post` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_post_share` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_comment_post` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_like_comment` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_reply_comment` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_join_group` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `email_like_page` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `user_settings_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `comment_privacy`, `follow_privacy`, `post_privacy`, `confirm_follow`, `timeline_post_privacy`, `email_follow`, `email_like_post`, `email_post_share`, `email_comment_post`, `email_like_comment`, `email_reply_comment`, `email_join_group`, `email_like_page`) VALUES
(1, 1, 'everyone', 'everyone', 'everyone', 'no', 'everyone', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement_user`
--
ALTER TABLE `announcement_user`
  ADD CONSTRAINT `announcement_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `announcement_user_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comment_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`);

--
-- Constraints for table `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `group_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_notified_by_foreign` FOREIGN KEY (`notified_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `notifications_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`),
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `pages_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`);

--
-- Constraints for table `page_likes`
--
ALTER TABLE `page_likes`
  ADD CONSTRAINT `page_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `page_likes_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `page_user`
--
ALTER TABLE `page_user`
  ADD CONSTRAINT `page_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `page_user_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `page_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`);

--
-- Constraints for table `post_follows`
--
ALTER TABLE `post_follows`
  ADD CONSTRAINT `post_follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_follows_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `post_media`
--
ALTER TABLE `post_media`
  ADD CONSTRAINT `post_media_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `post_media_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `post_reports`
--
ALTER TABLE `post_reports`
  ADD CONSTRAINT `post_reports_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `post_shares`
--
ALTER TABLE `post_shares`
  ADD CONSTRAINT `post_shares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_shares_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timelines`
--
ALTER TABLE `timelines`
  ADD CONSTRAINT `timelines_cover_id_foreign` FOREIGN KEY (`cover_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `timelines_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `timeline_reports`
--
ALTER TABLE `timeline_reports`
  ADD CONSTRAINT `timeline_reports_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `timeline_reports_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_affiliate_id_foreign` FOREIGN KEY (`affiliate_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_timeline_id_foreign` FOREIGN KEY (`timeline_id`) REFERENCES `timelines` (`id`);

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
