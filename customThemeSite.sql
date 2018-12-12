-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2018 at 10:04 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customThemeSite`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-24 19:47:02', '2018-10-24 19:47:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'sumitramanga@gmail.com', '', '192.168.33.1', '2018-11-19 20:34:44', '2018-11-19 20:34:44', 'This is a comment', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.33.10/customThemeSite', 'yes'),
(2, 'home', 'http://192.168.33.10/customThemeSite', 'yes'),
(3, 'blogname', 'Custom Theme Site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sumitramanga@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:123:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"index.php/staff/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"index.php/staff/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"index.php/staff/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/staff/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/staff/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"index.php/staff/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"index.php/staff/([^/]+)/embed/?$";s:38:"index.php?staff=$matches[1]&embed=true";s:36:"index.php/staff/([^/]+)/trackback/?$";s:32:"index.php?staff=$matches[1]&tb=1";s:44:"index.php/staff/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?staff=$matches[1]&paged=$matches[2]";s:51:"index.php/staff/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?staff=$matches[1]&cpage=$matches[2]";s:40:"index.php/staff/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?staff=$matches[1]&page=$matches[2]";s:32:"index.php/staff/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"index.php/staff/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"index.php/staff/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"index.php/staff/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"index.php/staff/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"index.php/staff/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"index.php/enquiries/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"index.php/enquiries/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"index.php/enquiries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/enquiries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/enquiries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"index.php/enquiries/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"index.php/enquiries/([^/]+)/embed/?$";s:42:"index.php?enquiries=$matches[1]&embed=true";s:40:"index.php/enquiries/([^/]+)/trackback/?$";s:36:"index.php?enquiries=$matches[1]&tb=1";s:48:"index.php/enquiries/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?enquiries=$matches[1]&paged=$matches[2]";s:55:"index.php/enquiries/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?enquiries=$matches[1]&cpage=$matches[2]";s:44:"index.php/enquiries/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?enquiries=$matches[1]&page=$matches[2]";s:36:"index.php/enquiries/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"index.php/enquiries/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"index.php/enquiries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/enquiries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/enquiries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"index.php/enquiries/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:71:"/var/www/html/customThemeSite/wp-content/themes/18WDWU02Theme/style.css";i:1;s:86:"/var/www/html/customThemeSite/wp-content/plugins/all-in-one-wp-migration/constants.php";i:2;s:100:"/var/www/html/customThemeSite/wp-content/plugins/all-in-one-wp-migration/all-in-one-wp-migration.php";i:3;s:68:"/var/www/html/customThemeSite/wp-content/plugins/akismet/akismet.php";i:4;s:0:"";}', 'no'),
(40, 'template', '18WDWU02Theme', 'yes'),
(41, 'stylesheet', '18WDWU02Theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:4:{s:5:"title";s:6:"Widget";s:4:"text";s:48:"This is a text widget coming from front-page.php";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:6:"Widget";s:4:"text";s:25:"This is a widget side bar";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_NZ', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:12:"home_right_1";a:2:{i:0;s:10:"calendar-3";i:1;s:6:"text-3";}s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"front_page_sidebar";a:3:{i:0;s:10:"calendar-4";i:1;s:6:"text-5";i:2;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:3:{i:3;a:0:{}i:4;a:1:{s:5:"title";s:8:"Calendar";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1544651222;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1544652101;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1544687222;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1544730454;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1544732383;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1540412198;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '0', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'ai1wm_secret_key', '7fjHe2SHjK6B', 'yes'),
(152, 'current_theme', '18WDWU02 Custom Theme', 'yes'),
(153, 'theme_mods_18WDWU02Theme', 'a:14:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:10:"header_nav";i:2;s:10:"footer_nav";i:3;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:90;s:16:"background_image";s:80:"http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/triangleLogo.png";s:17:"background_preset";s:6:"custom";s:21:"background_position_x";s:4:"left";s:21:"background_position_y";s:3:"top";s:15:"background_size";s:7:"contain";s:17:"background_repeat";s:6:"repeat";s:21:"background_attachment";s:5:"fixed";s:26:"header_link_colour_setting";s:7:"#0a0a0a";s:23:"featured_post_1_setting";s:1:"1";s:23:"featured_post_2_setting";s:2:"45";}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(166, 'ai1wm_status', 'a:2:{s:4:"type";s:8:"download";s:7:"message";s:231:"<a href="http://192.168.33.10/customThemeSite/wp-content/ai1wm-backups/192.168.33.10-customthemesite-20181024-225121-528.wpress" class="ai1wm-button-green ai1wm-emphasize"><span>Download 192.168.33.10</span><em>Size: 11 MB</em></a>";}', 'yes'),
(171, 'ai1wm_updater', 'a:0:{}', 'yes'),
(196, 'category_children', 'a:0:{}', 'yes'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(325, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"http://downloads.wordpress.org/release/en_NZ/wordpress-5.0.zip";s:6:"locale";s:5:"en_NZ";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"http://downloads.wordpress.org/release/en_NZ/wordpress-5.0.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.0";s:7:"version";s:3:"5.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-5.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-5.0.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-5.0-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.0";s:7:"version";s:3:"5.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1544648501;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(724, '_site_transient_timeout_theme_roots', '1544650323', 'no'),
(725, '_site_transient_theme_roots', 'a:5:{s:13:"18WDWU02Theme";s:7:"/themes";s:13:"mycustomtheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(726, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1544648577;s:7:"checked";a:5:{s:13:"18WDWU02Theme";s:5:"0.0.1";s:13:"mycustomtheme";s:5:"0.0.1";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.1.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.8";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.8.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.6.zip";}}s:12:"translations";a:0:{}}', 'no'),
(727, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1544648574;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"4.0.8";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:4:"6.77";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":12:{s:2:"id";s:37:"w.org/plugins/all-in-one-wp-migration";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"6.81";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.81.zip";s:5:"icons";a:2:{s:2:"2x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1985064";s:2:"1x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1985064";}s:7:"banners";a:2:{s:2:"2x";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1985064";s:2:"1x";s:78:"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1985064";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";s:6:"5.2.17";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1543185353:1'),
(5, 8, '_edit_last', '1'),
(6, 8, '_edit_lock', '1540506807:1'),
(8, 2, '_edit_lock', '1540844189:1'),
(9, 2, '_edit_last', '1'),
(10, 1, '_edit_lock', '1542658880:1'),
(11, 11, '_wp_attached_file', '2018/10/leaf-bush.png'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:21:"2018/10/leaf-bush.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"leaf-bush-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"leaf-bush-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:21:"leaf-bush-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 1, '_edit_last', '1'),
(14, 1, '_thumbnail_id', '11'),
(16, 13, '_edit_last', '1'),
(17, 13, '_edit_lock', '1540928635:1'),
(20, 16, '_edit_last', '1'),
(21, 16, '_edit_lock', '1540932385:1'),
(24, 19, '_wp_attached_file', '2018/10/Time-Board.jpeg'),
(25, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:900;s:4:"file";s:23:"2018/10/Time-Board.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Time-Board-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Time-Board-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Time-Board-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"Time-Board-1024x683.jpeg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:4:"icon";a:4:{s:4:"file";s:21:"Time-Board-50x50.jpeg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 8, '_thumbnail_id', '19'),
(33, 23, '_wp_attached_file', '2018/10/rata.png'),
(34, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:16:"2018/10/rata.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"rata-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"rata-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"rata-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:14:"rata-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 13, '_thumbnail_id', '23'),
(36, 25, '_menu_item_type', 'custom'),
(37, 25, '_menu_item_menu_item_parent', '0'),
(38, 25, '_menu_item_object_id', '25'),
(39, 25, '_menu_item_object', 'custom'),
(40, 25, '_menu_item_target', ''),
(41, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 25, '_menu_item_xfn', ''),
(43, 25, '_menu_item_url', 'http://192.168.33.10/customThemeSite/'),
(44, 25, '_menu_item_orphaned', '1540757686'),
(45, 26, '_menu_item_type', 'post_type'),
(46, 26, '_menu_item_menu_item_parent', '0'),
(47, 26, '_menu_item_object_id', '5'),
(48, 26, '_menu_item_object', 'page'),
(49, 26, '_menu_item_target', ''),
(50, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 26, '_menu_item_xfn', ''),
(52, 26, '_menu_item_url', ''),
(53, 26, '_menu_item_orphaned', '1540757686'),
(54, 27, '_menu_item_type', 'post_type'),
(55, 27, '_menu_item_menu_item_parent', '0'),
(56, 27, '_menu_item_object_id', '2'),
(57, 27, '_menu_item_object', 'page'),
(58, 27, '_menu_item_target', ''),
(59, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 27, '_menu_item_xfn', ''),
(61, 27, '_menu_item_url', ''),
(62, 27, '_menu_item_orphaned', '1540757686'),
(63, 28, '_menu_item_type', 'custom'),
(64, 28, '_menu_item_menu_item_parent', '0'),
(65, 28, '_menu_item_object_id', '28'),
(66, 28, '_menu_item_object', 'custom'),
(67, 28, '_menu_item_target', ''),
(68, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 28, '_menu_item_xfn', ''),
(70, 28, '_menu_item_url', 'http://192.168.33.10/customThemeSite/'),
(71, 28, '_menu_item_orphaned', '1540758535'),
(72, 29, '_menu_item_type', 'post_type'),
(73, 29, '_menu_item_menu_item_parent', '0'),
(74, 29, '_menu_item_object_id', '5'),
(75, 29, '_menu_item_object', 'page'),
(76, 29, '_menu_item_target', ''),
(77, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 29, '_menu_item_xfn', ''),
(79, 29, '_menu_item_url', ''),
(80, 29, '_menu_item_orphaned', '1540758535'),
(81, 30, '_menu_item_type', 'post_type'),
(82, 30, '_menu_item_menu_item_parent', '0'),
(83, 30, '_menu_item_object_id', '2'),
(84, 30, '_menu_item_object', 'page'),
(85, 30, '_menu_item_target', ''),
(86, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 30, '_menu_item_xfn', ''),
(88, 30, '_menu_item_url', ''),
(89, 30, '_menu_item_orphaned', '1540758535'),
(90, 31, '_menu_item_type', 'post_type'),
(91, 31, '_menu_item_menu_item_parent', '0'),
(92, 31, '_menu_item_object_id', '5'),
(93, 31, '_menu_item_object', 'page'),
(94, 31, '_menu_item_target', ''),
(95, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 31, '_menu_item_xfn', ''),
(97, 31, '_menu_item_url', ''),
(99, 32, '_menu_item_type', 'post_type'),
(100, 32, '_menu_item_menu_item_parent', '0'),
(101, 32, '_menu_item_object_id', '2'),
(102, 32, '_menu_item_object', 'page'),
(103, 32, '_menu_item_target', ''),
(104, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 32, '_menu_item_xfn', ''),
(106, 32, '_menu_item_url', ''),
(108, 33, '_menu_item_type', 'custom'),
(109, 33, '_menu_item_menu_item_parent', '0'),
(110, 33, '_menu_item_object_id', '33'),
(111, 33, '_menu_item_object', 'custom'),
(112, 33, '_menu_item_target', ''),
(113, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 33, '_menu_item_xfn', ''),
(115, 33, '_menu_item_url', 'http://192.168.33.10/customThemeSite/wp-admin/'),
(117, 34, '_menu_item_type', 'taxonomy'),
(118, 34, '_menu_item_menu_item_parent', '0'),
(119, 34, '_menu_item_object_id', '1'),
(120, 34, '_menu_item_object', 'category'),
(121, 34, '_menu_item_target', ''),
(122, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 34, '_menu_item_xfn', ''),
(124, 34, '_menu_item_url', ''),
(126, 35, '_menu_item_type', 'custom'),
(127, 35, '_menu_item_menu_item_parent', '0'),
(128, 35, '_menu_item_object_id', '35'),
(129, 35, '_menu_item_object', 'custom'),
(130, 35, '_menu_item_target', ''),
(131, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 35, '_menu_item_xfn', ''),
(133, 35, '_menu_item_url', 'http://192.168.33.10/customThemeSite/'),
(135, 36, '_menu_item_type', 'post_type'),
(136, 36, '_menu_item_menu_item_parent', '0'),
(137, 36, '_menu_item_object_id', '5'),
(138, 36, '_menu_item_object', 'page'),
(139, 36, '_menu_item_target', ''),
(140, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 36, '_menu_item_xfn', ''),
(142, 36, '_menu_item_url', ''),
(144, 37, '_menu_item_type', 'post_type'),
(145, 37, '_menu_item_menu_item_parent', '0'),
(146, 37, '_menu_item_object_id', '2'),
(147, 37, '_menu_item_object', 'page'),
(148, 37, '_menu_item_target', ''),
(149, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 37, '_menu_item_xfn', ''),
(151, 37, '_menu_item_url', ''),
(153, 38, '_menu_item_type', 'custom'),
(154, 38, '_menu_item_menu_item_parent', '0'),
(155, 38, '_menu_item_object_id', '38'),
(156, 38, '_menu_item_object', 'custom'),
(157, 38, '_menu_item_target', ''),
(158, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 38, '_menu_item_xfn', ''),
(160, 38, '_menu_item_url', 'http://192.168.33.10/customThemeSite/'),
(162, 39, '_menu_item_type', 'post_type'),
(163, 39, '_menu_item_menu_item_parent', '0'),
(164, 39, '_menu_item_object_id', '5'),
(165, 39, '_menu_item_object', 'page'),
(166, 39, '_menu_item_target', ''),
(167, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 39, '_menu_item_xfn', ''),
(169, 39, '_menu_item_url', ''),
(171, 40, '_menu_item_type', 'post_type'),
(172, 40, '_menu_item_menu_item_parent', '0'),
(173, 40, '_menu_item_object_id', '2'),
(174, 40, '_menu_item_object', 'page'),
(175, 40, '_menu_item_target', ''),
(176, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 40, '_menu_item_xfn', ''),
(178, 40, '_menu_item_url', ''),
(179, 41, '_edit_last', '1'),
(180, 41, '_edit_lock', '1540844527:1'),
(181, 41, '_wp_page_template', 'full-width.php'),
(182, 43, '_edit_last', '1'),
(183, 43, '_edit_lock', '1543260626:1'),
(184, 43, '_wp_page_template', 'default'),
(186, 45, '_edit_last', '1'),
(187, 45, '_edit_lock', '1540929250:1'),
(188, 45, '_wp_page_template', 'default'),
(190, 47, '_edit_last', '1'),
(191, 47, '_edit_lock', '1540929241:1'),
(192, 47, '_wp_page_template', 'default'),
(194, 49, '_edit_last', '1'),
(195, 49, '_edit_lock', '1540929233:1'),
(196, 50, '_wp_attached_file', '2018/10/shridhar-gupta-678685-unsplash.jpg'),
(197, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4267;s:6:"height";i:2845;s:4:"file";s:42:"2018/10/shridhar-gupta-678685-unsplash.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"shridhar-gupta-678685-unsplash-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"shridhar-gupta-678685-unsplash-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"shridhar-gupta-678685-unsplash-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"shridhar-gupta-678685-unsplash-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:4:"icon";a:4:{s:4:"file";s:40:"shridhar-gupta-678685-unsplash-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 49, '_thumbnail_id', '50'),
(199, 49, '_wp_page_template', 'default'),
(201, 52, '_edit_last', '1'),
(202, 52, '_edit_lock', '1540930423:1'),
(203, 52, '_wp_page_template', 'default'),
(214, 52, '_oembed_93d5acfa5d3c2de7d0a3f2a03ab9e20c', '<iframe width="500" height="281" src="https://www.youtube.com/embed/-6h65t2MOfU?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
(215, 52, '_oembed_time_93d5acfa5d3c2de7d0a3f2a03ab9e20c', '1540929908'),
(216, 52, '_oembed_f9fe9b7b459c6076b27156cb95f08a71', '<iframe width="1381" height="777" src="https://www.youtube.com/embed/-6h65t2MOfU?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
(217, 52, '_oembed_time_f9fe9b7b459c6076b27156cb95f08a71', '1540929909'),
(219, 52, '_oembed_db63dc6f47143672536722555857cba3', '<iframe width="1385" height="779" src="https://www.youtube.com/embed/-6h65t2MOfU?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
(220, 52, '_oembed_time_db63dc6f47143672536722555857cba3', '1540929912'),
(222, 60, '_edit_last', '1'),
(223, 60, '_edit_lock', '1542925152:1'),
(224, 60, '_wp_page_template', 'default'),
(230, 60, '_wp_old_slug', 'video__trashed'),
(232, 16, '_wp_page_template', 'default'),
(234, 68, '_edit_last', '1'),
(235, 68, '_edit_lock', '1540937643:1'),
(236, 68, '_thumbnail_id', '23'),
(237, 69, '_edit_last', '1'),
(238, 69, '_edit_lock', '1543875303:1'),
(239, 69, '_thumbnail_id', '11'),
(240, 70, '_edit_last', '1'),
(241, 70, '_edit_lock', '1543720852:1'),
(242, 77, '_edit_last', '1'),
(243, 77, '_edit_lock', '1543720858:1'),
(244, 77, '_wp_page_template', 'staff-template.php'),
(245, 79, '_menu_item_type', 'post_type'),
(246, 79, '_menu_item_menu_item_parent', '0'),
(247, 79, '_menu_item_object_id', '77'),
(248, 79, '_menu_item_object', 'page'),
(249, 79, '_menu_item_target', ''),
(250, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 79, '_menu_item_xfn', ''),
(252, 79, '_menu_item_url', ''),
(253, 89, '_wp_attached_file', '2018/11/triangleLogo.png'),
(254, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:530;s:6:"height";i:330;s:4:"file";s:24:"2018/11/triangleLogo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"triangleLogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"triangleLogo-300x187.png";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:22:"triangleLogo-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(255, 90, '_wp_attached_file', '2018/11/cropped-triangleLogo.png'),
(256, 90, '_wp_attachment_context', 'custom-logo'),
(257, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:261;s:6:"height";i:159;s:4:"file";s:32:"2018/11/cropped-triangleLogo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"cropped-triangleLogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:30:"cropped-triangleLogo-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(260, 92, '_wp_attached_file', '2018/10/cropped-rata.png'),
(261, 92, '_wp_attachment_context', 'custom-logo'),
(262, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:24:"2018/10/cropped-rata.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-rata-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"cropped-rata-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:22:"cropped-rata-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 93, '_wp_attached_file', '2018/11/cropped-triangleLogo-1.png'),
(264, 93, '_wp_attachment_context', 'custom-logo'),
(265, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:264;s:6:"height";i:162;s:4:"file";s:34:"2018/11/cropped-triangleLogo-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"cropped-triangleLogo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:32:"cropped-triangleLogo-1-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(268, 95, '_wp_attached_file', '2018/11/cropped-triangleLogo-2.png'),
(269, 95, '_wp_attachment_context', 'custom-logo'),
(270, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:268;s:6:"height";i:176;s:4:"file";s:34:"2018/11/cropped-triangleLogo-2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"cropped-triangleLogo-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:32:"cropped-triangleLogo-2-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(283, 89, '_wp_attachment_is_custom_background', '18WDWU02Theme'),
(286, 102, '_wp_attached_file', '2018/10/cropped-rata-1.png'),
(287, 102, '_wp_attachment_context', 'custom-header'),
(288, 102, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-1-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-1-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-1-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-1-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(292, 104, '_wp_attached_file', '2018/10/cropped-shridhar-gupta-678685-unsplash.jpg'),
(293, 104, '_wp_attachment_context', 'custom-header'),
(294, 104, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:50:"2018/10/cropped-shridhar-gupta-678685-unsplash.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"cropped-shridhar-gupta-678685-unsplash-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"cropped-shridhar-gupta-678685-unsplash-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:50:"cropped-shridhar-gupta-678685-unsplash-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:51:"cropped-shridhar-gupta-678685-unsplash-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:4:"icon";a:4:{s:4:"file";s:48:"cropped-shridhar-gupta-678685-unsplash-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:50;}'),
(300, 106, '_wp_attached_file', '2018/10/cropped-rata-2.png'),
(301, 106, '_wp_attachment_context', 'custom-header'),
(302, 106, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-2-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-2-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-2-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-2-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(306, 108, '_wp_attached_file', '2018/10/cropped-rata-3.png'),
(307, 108, '_wp_attachment_context', 'custom-header'),
(308, 108, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-3.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-3-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-3-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-3-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-3-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(314, 110, '_wp_attached_file', '2018/10/cropped-rata-4.png'),
(315, 110, '_wp_attachment_context', 'custom-header'),
(316, 110, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-4.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-4-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-4-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-4-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-4-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(321, 112, '_wp_attached_file', '2018/10/cropped-rata-5.png'),
(322, 112, '_wp_attachment_context', 'custom-header'),
(323, 112, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-5.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-5-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-5-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-5-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-5-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(330, 116, '_menu_item_type', 'custom'),
(331, 116, '_menu_item_menu_item_parent', '0'),
(332, 116, '_menu_item_object_id', '116'),
(333, 116, '_menu_item_object', 'custom'),
(334, 116, '_menu_item_target', ''),
(335, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(336, 116, '_menu_item_xfn', ''),
(337, 116, '_menu_item_url', 'http://192.168.33.10/customThemeSite'),
(340, 117, '_wp_attached_file', '2018/10/cropped-rata-6.png'),
(341, 117, '_wp_attachment_context', 'custom-header'),
(342, 117, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-6.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-6-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-6-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-6-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-6-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(345, 118, '_wp_attached_file', '2018/10/cropped-rata-7.png'),
(346, 118, '_wp_attachment_context', 'custom-header'),
(347, 118, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:26:"2018/10/cropped-rata-7.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-rata-7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-rata-7-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-rata-7-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-rata-7-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:4:"icon";a:4:{s:4:"file";s:24:"cropped-rata-7-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:23;}'),
(357, 50, '_wp_attachment_is_custom_background', '18WDWU02Theme'),
(371, 69, 'staffRole', 'The role'),
(372, 69, 'yearStarted', '2018'),
(373, 159, '_wp_trash_meta_status', 'publish'),
(374, 159, '_wp_trash_meta_time', '1542142200'),
(375, 160, '_edit_last', '1'),
(376, 160, '_edit_lock', '1542228312:1'),
(377, 160, '_wp_page_template', 'registration-template.php'),
(378, 162, '_menu_item_type', 'post_type'),
(379, 162, '_menu_item_menu_item_parent', '0'),
(380, 162, '_menu_item_object_id', '160'),
(381, 162, '_menu_item_object', 'page'),
(382, 162, '_menu_item_target', ''),
(383, 162, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(384, 162, '_menu_item_xfn', ''),
(385, 162, '_menu_item_url', ''),
(386, 163, '_edit_last', '1'),
(387, 163, '_edit_lock', '1542312935:1'),
(388, 163, '_wp_page_template', 'enquiries-template.php'),
(389, 186, '_menu_item_type', 'post_type'),
(390, 186, '_menu_item_menu_item_parent', '0'),
(391, 186, '_menu_item_object_id', '163'),
(392, 186, '_menu_item_object', 'page'),
(393, 186, '_menu_item_target', ''),
(394, 186, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(395, 186, '_menu_item_xfn', ''),
(396, 186, '_menu_item_url', ''),
(398, 189, 'email', 'jolly@gmail.com'),
(399, 189, 'courseInterest', 'Option1'),
(400, 189, '_edit_lock', '1543786696:1'),
(401, 190, 'email', 'Sammy@gmail.com'),
(402, 190, 'courseInterest', 'Option2'),
(403, 190, '_edit_lock', '1543186029:1'),
(404, 191, '_edit_last', '1'),
(405, 191, '_edit_lock', '1543723352:1'),
(406, 191, '_wp_page_template', 'default'),
(408, 193, '_edit_last', '1'),
(409, 193, '_edit_lock', '1543185948:1'),
(410, 193, '_wp_page_template', 'default'),
(412, 193, '_thumbnail_id', '89'),
(415, 197, '_edit_last', '1'),
(416, 197, '_edit_lock', '1542569973:1'),
(417, 197, '_wp_page_template', 'default'),
(419, 199, '_edit_last', '1'),
(420, 199, '_edit_lock', '1542570433:1'),
(421, 199, '_wp_page_template', 'default'),
(423, 199, '_wp_trash_meta_status', 'publish'),
(424, 199, '_wp_trash_meta_time', '1542570355'),
(425, 199, '_wp_desired_post_slug', 'post-2'),
(426, 197, '_wp_trash_meta_status', 'publish'),
(427, 197, '_wp_trash_meta_time', '1542570359'),
(428, 197, '_wp_desired_post_slug', 'post'),
(429, 201, '_edit_last', '1'),
(430, 201, '_edit_lock', '1543788835:1'),
(431, 201, 'staffRole', 'The role'),
(432, 201, 'yearStarted', '2019'),
(433, 202, '_edit_last', '1'),
(434, 202, '_edit_lock', '1544053524:1'),
(435, 202, 'staffRole', 'Yoooo'),
(436, 202, 'yearStarted', '2014'),
(437, 209, 'email', 'jolly@gmail.com'),
(438, 209, 'courseInterest', 'Option1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-24 19:47:02', '2018-10-24 19:47:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-10-25 20:23:11', '2018-10-25 20:23:11', '', 0, 'http://192.168.33.10/customThemeSite/?p=1', 0, 'post', '', 2),
(2, 1, '2018-10-24 19:47:02', '2018-10-24 19:47:02', '<ul>\r\n 	<li>Item 1</li>\r\n 	<li>Item 2</li>\r\n 	<li>Item 3</li>\r\n</ul>\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://192.168.33.10/customThemeSite/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-24 21:44:25', '2018-10-24 21:44:25', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-24 19:47:02', '2018-10-24 19:47:02', '<h2>Who we are</h2><p>Our website address is: http://192.168.33.10/customThemeSite.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-24 19:47:02', '2018-10-24 19:47:02', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-10-24 20:19:54', '2018-10-24 20:19:54', 'This is the about page', 'About page', '', 'publish', 'closed', 'closed', '', 'about-page', '', '', '2018-10-24 20:19:54', '2018-10-24 20:19:54', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-10-24 20:19:54', '2018-10-24 20:19:54', 'This is the about page', 'About page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-10-24 20:19:54', '2018-10-24 20:19:54', '', 5, 'http://192.168.33.10/customThemeSite/index.php/2018/10/24/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-10-24 21:42:21', '2018-10-24 21:42:21', 'This is a post', 'Hi there', '', 'publish', 'open', 'open', '', 'hi-there', '', '', '2018-10-25 22:35:49', '2018-10-25 22:35:49', '', 0, 'http://192.168.33.10/customThemeSite/?p=8', 0, 'post', '', 0),
(9, 1, '2018-10-24 21:42:21', '2018-10-24 21:42:21', 'This is a post', 'Hi there', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-24 21:42:21', '2018-10-24 21:42:21', '', 8, 'http://192.168.33.10/customThemeSite/index.php/2018/10/24/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-10-24 21:44:25', '2018-10-24 21:44:25', '<ul>\r\n 	<li>Item 1</li>\r\n 	<li>Item 2</li>\r\n 	<li>Item 3</li>\r\n</ul>\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://192.168.33.10/customThemeSite/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-24 21:44:25', '2018-10-24 21:44:25', '', 2, 'http://192.168.33.10/customThemeSite/index.php/2018/10/24/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-10-25 20:22:56', '2018-10-25 20:22:56', '', 'leaf-bush', '', 'inherit', 'open', 'closed', '', 'leaf-bush', '', '', '2018-10-25 20:22:56', '2018-10-25 20:22:56', '', 1, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/leaf-bush.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-10-25 20:23:11', '2018-10-25 20:23:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-25 20:23:11', '2018-10-25 20:23:11', '', 1, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-10-25 20:38:21', '2018-10-25 20:38:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. jbjgglygglg', 'Lorum Ipsum', '', 'publish', 'open', 'open', '', 'lorum', '', '', '2018-10-25 22:42:06', '2018-10-25 22:42:06', '', 0, 'http://192.168.33.10/customThemeSite/?p=13', 0, 'post', '', 0),
(14, 1, '2018-10-25 20:38:21', '2018-10-25 20:38:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorum', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-10-25 20:38:21', '2018-10-25 20:38:21', '', 13, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-10-25 20:38:35', '2018-10-25 20:38:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorum Ipsum', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-10-25 20:38:35', '2018-10-25 20:38:35', '', 13, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-10-25 22:14:15', '2018-10-25 22:14:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed purus urna, eleifend eu sollicitudin eget, porttitor nec velit. Morbi eu sapien vitae lorem viverra tincidunt sed ut ligula. Nulla facilisi. Cras accumsan urna viverra nunc semper, vel tincidunt ipsum convallis.', 'This is a new post', '', 'publish', 'open', 'open', '', 'this-is-a-new-post', '', '', '2018-10-30 20:17:54', '2018-10-30 20:17:54', '', 0, 'http://192.168.33.10/customThemeSite/?p=16', 0, 'post', '', 0),
(17, 1, '2018-10-25 22:14:15', '2018-10-25 22:14:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed purus urna, eleifend eu sollicitudin eget, porttitor nec velit. Morbi eu sapien vitae lorem viverra tincidunt sed ut ligula. Nulla facilisi. Cras accumsan urna viverra nunc semper, vel tincidunt ipsum convallis. Integer ultrices eu dui quis varius. Nullam in faucibus turpis, in convallis ex. Morbi vel magna eu leo tempus dapibus. Integer fringilla velit sed tellus dictum mattis. Pellentesque sit amet ligula eu mauris ornare rutrum id sit amet purus. Sed sodales interdum elementum. Pellentesque vel elit suscipit, lacinia metus nec, eleifend ipsum. Quisque suscipit ligula malesuada maximus aliquam. Praesent quis sollicitudin ex. Praesent a nulla et leo consequat sollicitudin. In malesuada congue ornare. Morbi eu ligula quis nisi condimentum lobortis.', 'This is a new post', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-10-25 22:14:15', '2018-10-25 22:14:15', '', 16, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-10-25 22:14:52', '2018-10-25 22:14:52', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. jbjgglygglg', 'Lorum Ipsum', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-10-25 22:14:52', '2018-10-25 22:14:52', '', 13, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-10-25 22:35:09', '2018-10-25 22:35:09', '', 'Time-Board', '', 'inherit', 'open', 'closed', '', 'time-board', '', '', '2018-10-25 22:35:09', '2018-10-25 22:35:09', '', 8, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/Time-Board.jpeg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-10-25 22:35:50', '2018-10-25 22:35:50', 'This is a post', 'Hi there', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-10-25 22:35:50', '2018-10-25 22:35:50', '', 8, 'http://192.168.33.10/customThemeSite/index.php/2018/10/25/8-autosave-v1/', 0, 'revision', '', 0),
(23, 1, '2018-10-25 22:42:03', '2018-10-25 22:42:03', '', 'rata', '', 'inherit', 'open', 'closed', '', 'rata', '', '', '2018-10-25 22:42:03', '2018-10-25 22:42:03', '', 13, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/rata.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-10-28 20:14:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:14:46', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-10-28 20:14:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:14:46', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-10-28 20:14:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:14:46', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-10-28 20:28:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:28:55', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2018-10-28 20:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:28:55', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-10-28 20:28:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-28 20:28:55', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-10-28 20:40:57', '2018-10-28 20:40:57', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2018-10-28 20:40:57', '2018-10-28 20:40:57', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2018-10-28 20:40:57', '2018-10-28 20:40:57', '', 'admin', '', 'publish', 'closed', 'closed', '', 'admin', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=33', 7, 'nav_menu_item', '', 0),
(34, 1, '2018-10-28 21:54:15', '2018-10-28 21:54:15', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-10-28 21:54:15', '2018-10-28 21:54:15', '', 0, 'http://192.168.33.10/customThemeSite/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2018-10-28 21:54:15', '2018-10-28 21:54:15', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-28 21:54:15', '2018-10-28 21:54:15', '', 0, 'http://192.168.33.10/customThemeSite/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-10-28 21:54:15', '2018-10-28 21:54:15', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-10-28 21:54:15', '2018-10-28 21:54:15', '', 0, 'http://192.168.33.10/customThemeSite/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-10-28 21:54:15', '2018-10-28 21:54:15', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-10-28 21:54:15', '2018-10-28 21:54:15', '', 0, 'http://192.168.33.10/customThemeSite/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2018-10-28 22:23:21', '2018-10-28 22:23:21', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-10-28 22:23:49', '2018-10-28 22:23:49', '', 0, 'http://192.168.33.10/customThemeSite/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-10-28 22:23:21', '2018-10-28 22:23:21', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-10-28 22:23:49', '2018-10-28 22:23:49', '', 0, 'http://192.168.33.10/customThemeSite/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2018-10-28 22:23:21', '2018-10-28 22:23:21', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-10-28 22:23:49', '2018-10-28 22:23:49', '', 0, 'http://192.168.33.10/customThemeSite/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2018-10-29 20:19:04', '2018-10-29 20:19:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce purus urna, finibus at bibendum ac, molestie ut dolor. Morbi lobortis, risus eget porta luctus, mauris est ultricies dolor, quis ultrices risus lorem in nisi. Vestibulum eget ex non turpis semper ultricies. Ut interdum, ex sed vehicula malesuada, neque sapien rutrum lacus, eget dictum massa mi at felis. Pellentesque lacinia posuere odio vel porttitor. Proin sollicitudin tincidunt eros ut condimentum. Morbi enim orci, sollicitudin eu efficitur at, ultrices vitae mi. Sed at euismod eros. Nullam facilisis orci eleifend viverra sagittis. Ut semper vel nisl id convallis.', 'Full Width Page', '', 'publish', 'closed', 'closed', '', 'full-width-page', '', '', '2018-10-29 20:19:04', '2018-10-29 20:19:04', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-10-29 20:19:04', '2018-10-29 20:19:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce purus urna, finibus at bibendum ac, molestie ut dolor. Morbi lobortis, risus eget porta luctus, mauris est ultricies dolor, quis ultrices risus lorem in nisi. Vestibulum eget ex non turpis semper ultricies. Ut interdum, ex sed vehicula malesuada, neque sapien rutrum lacus, eget dictum massa mi at felis. Pellentesque lacinia posuere odio vel porttitor. Proin sollicitudin tincidunt eros ut condimentum. Morbi enim orci, sollicitudin eu efficitur at, ultrices vitae mi. Sed at euismod eros. Nullam facilisis orci eleifend viverra sagittis. Ut semper vel nisl id convallis.', 'Full Width Page', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-10-29 20:19:04', '2018-10-29 20:19:04', '', 41, 'http://192.168.33.10/customThemeSite/index.php/2018/10/29/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-10-30 19:52:55', '2018-10-30 19:52:55', 'This is a standard format blog post', 'Standard Format Post', '', 'publish', 'open', 'open', '', 'standard-format', '', '', '2018-10-30 19:56:08', '2018-10-30 19:56:08', '', 0, 'http://192.168.33.10/customThemeSite/?p=43', 0, 'post', '', 0),
(44, 1, '2018-10-30 19:52:55', '2018-10-30 19:52:55', 'This is a standard format blog post', 'Standard format', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-10-30 19:52:55', '2018-10-30 19:52:55', '', 43, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-10-30 19:53:17', '2018-10-30 19:53:17', 'This is an aside format blog post', 'Aside Format Post', '', 'publish', 'open', 'open', '', 'aside-format', '', '', '2018-10-30 19:56:34', '2018-10-30 19:56:34', '', 0, 'http://192.168.33.10/customThemeSite/?p=45', 0, 'post', '', 0),
(46, 1, '2018-10-30 19:53:17', '2018-10-30 19:53:17', 'This is an aside format blog post', 'Aside Format', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-30 19:53:17', '2018-10-30 19:53:17', '', 45, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-10-30 19:53:37', '2018-10-30 19:53:37', 'This is a gallery format blog post', 'Gallery Format Post', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2018-10-30 19:56:24', '2018-10-30 19:56:24', '', 0, 'http://192.168.33.10/customThemeSite/?p=47', 0, 'post', '', 0),
(48, 1, '2018-10-30 19:53:37', '2018-10-30 19:53:37', 'This is a gallery format blog post', 'Gallery', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-10-30 19:53:37', '2018-10-30 19:53:37', '', 47, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-10-30 19:54:15', '2018-10-30 19:54:15', 'This is a image format blog post', 'Image Format Post', '', 'publish', 'open', 'open', '', 'image-format', '', '', '2018-10-30 19:56:16', '2018-10-30 19:56:16', '', 0, 'http://192.168.33.10/customThemeSite/?p=49', 0, 'post', '', 0),
(50, 1, '2018-10-30 19:54:08', '2018-10-30 19:54:08', '', 'shridhar-gupta-678685-unsplash', '', 'inherit', 'open', 'closed', '', 'shridhar-gupta-678685-unsplash', '', '', '2018-10-30 19:54:08', '2018-10-30 19:54:08', '', 49, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/shridhar-gupta-678685-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-10-30 19:54:15', '2018-10-30 19:54:15', 'This is a image format blog post', 'Image Format', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-10-30 19:54:15', '2018-10-30 19:54:15', '', 49, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-10-30 19:54:58', '2018-10-30 19:54:58', '[embed]https://www.youtube.com/watch?v=-6h65t2MOfU[/embed]\r\n\r\nThis is a video format blog post.', 'Video format post', '', 'publish', 'open', 'open', '', 'video-format-post', '', '', '2018-10-30 20:16:06', '2018-10-30 20:16:06', '', 0, 'http://192.168.33.10/customThemeSite/?p=52', 0, 'post', '', 0),
(53, 1, '2018-10-30 19:54:58', '2018-10-30 19:54:58', 'This is a video format blog post.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis sem non suscipit pretium. Suspendisse eu fringilla urna. Donec tristique rutrum leo, in lacinia orci facilisis sagittis. Duis iaculis, neque lobortis vehicula blandit, nulla dui bibendum est, at venenatis ante quam et magna. Ut at nunc id nibh tempor dapibus vitae non ex. Nam pretium, enim nec interdum euismod, sapien dui varius neque, nec aliquam elit ante quis erat. Nullam pulvinar vestibulum nunc, et convallis augue tempor vitae. Donec pellentesque feugiat purus id aliquet. Suspendisse non lobortis elit. Nulla consequat risus eget commodo porta. Ut mi purus, pulvinar vel velit vitae, efficitur lobortis odio. Nullam arcu justo, vehicula auctor enim sed, tristique egestas ex. Nulla consequat enim nulla. Quisque laoreet scelerisque mi, at interdum felis.', 'Video format post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-10-30 19:54:58', '2018-10-30 19:54:58', '', 52, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-10-30 19:56:08', '2018-10-30 19:56:08', 'This is a standard format blog post', 'Standard Format Post', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-10-30 19:56:08', '2018-10-30 19:56:08', '', 43, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/43-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-10-30 19:56:16', '2018-10-30 19:56:16', 'This is a image format blog post', 'Image Format Post', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-10-30 19:56:16', '2018-10-30 19:56:16', '', 49, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/49-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-10-30 19:56:24', '2018-10-30 19:56:24', 'This is a gallery format blog post', 'Gallery Format Post', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-10-30 19:56:24', '2018-10-30 19:56:24', '', 47, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/47-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-10-30 19:56:34', '2018-10-30 19:56:34', 'This is an aside format blog post', 'Aside Format Post', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-30 19:56:34', '2018-10-30 19:56:34', '', 45, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/45-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-10-30 20:05:11', '2018-10-30 20:05:11', '[embed]https://www.youtube.com/watch?v=-6h65t2MOfU[/embed]\r\n\r\nThis is a video format blog post.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis sem non suscipit pretium. Suspendisse eu fringilla urna. Donec tristique rutrum leo, in lacinia orci facilisis sagittis. Duis iaculis, neque lobortis vehicula blandit, nulla dui bibendum est, at venenatis ante quam et magna. Ut at nunc id nibh tempor dapibus vitae non ex. Nam pretium, enim nec interdum euismod, sapien dui varius neque, nec aliquam elit ante quis erat. Nullam pulvinar vestibulum nunc, et convallis augue tempor vitae. Donec pellentesque feugiat purus id aliquet. Suspendisse non lobortis elit. Nulla consequat risus eget commodo porta. Ut mi purus, pulvinar vel velit vitae, efficitur lobortis odio. Nullam arcu justo, vehicula auctor enim sed, tristique egestas ex. Nulla consequat enim nulla. Quisque laoreet scelerisque mi, at interdum felis.', 'Video format post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-10-30 20:05:11', '2018-10-30 20:05:11', '', 52, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/52-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-10-30 20:06:56', '2018-10-30 20:06:56', 'Video Post Format', 'Video', '', 'publish', 'open', 'open', '', 'video', '', '', '2018-10-30 20:07:11', '2018-10-30 20:07:11', '', 0, 'http://192.168.33.10/customThemeSite/?p=60', 0, 'post', '', 0),
(61, 1, '2018-10-30 20:06:56', '2018-10-30 20:06:56', 'Video Post Format', 'Video', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-10-30 20:06:56', '2018-10-30 20:06:56', '', 60, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-10-30 20:16:06', '2018-10-30 20:16:06', '[embed]https://www.youtube.com/watch?v=-6h65t2MOfU[/embed]\r\n\r\nThis is a video format blog post.', 'Video format post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-10-30 20:16:06', '2018-10-30 20:16:06', '', 52, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/52-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-10-30 20:17:54', '2018-10-30 20:17:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed purus urna, eleifend eu sollicitudin eget, porttitor nec velit. Morbi eu sapien vitae lorem viverra tincidunt sed ut ligula. Nulla facilisi. Cras accumsan urna viverra nunc semper, vel tincidunt ipsum convallis.', 'This is a new post', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-10-30 20:17:54', '2018-10-30 20:17:54', '', 16, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/16-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-10-30 22:11:13', '2018-10-30 22:11:13', '', 'Plant 1', '', 'publish', 'closed', 'closed', '', 'plant-1', '', '', '2018-10-30 22:11:13', '2018-10-30 22:11:13', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=staff&#038;p=68', 0, 'staff', '', 0),
(69, 1, '2018-10-30 22:11:18', '2018-10-30 22:11:18', '', 'Plant 2', '', 'publish', 'closed', 'closed', '', 'plant-2', '', '', '2018-11-08 22:04:54', '2018-11-08 22:04:54', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=staff&#038;p=69', 0, 'staff', '', 0),
(70, 1, '2018-10-30 22:16:34', '0000-00-00 00:00:00', '', 'Staff', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-30 22:16:34', '2018-10-30 22:16:34', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=70', 0, 'page', '', 0),
(77, 1, '2018-10-30 22:28:13', '2018-10-30 22:28:13', 'This is the staff', 'Staff', '', 'publish', 'closed', 'closed', '', 'staff', '', '', '2018-10-30 22:28:13', '2018-10-30 22:28:13', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=77', 0, 'page', '', 0),
(78, 1, '2018-10-30 22:28:13', '2018-10-30 22:28:13', 'This is the staff', 'Staff', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-10-30 22:28:13', '2018-10-30 22:28:13', '', 77, 'http://192.168.33.10/customThemeSite/index.php/2018/10/30/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-10-30 22:32:50', '2018-10-30 22:32:50', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=79', 4, 'nav_menu_item', '', 0),
(89, 1, '2018-11-01 19:49:35', '2018-11-01 19:49:35', '', 'triangleLogo', '', 'inherit', 'open', 'closed', '', 'trianglelogo', '', '', '2018-11-01 19:49:35', '2018-11-01 19:49:35', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/triangleLogo.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2018-11-01 19:49:52', '2018-11-01 19:49:52', 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo.png', 'cropped-triangleLogo.png', '', 'inherit', 'open', 'closed', '', 'cropped-trianglelogo-png', '', '', '2018-11-01 19:49:52', '2018-11-01 19:49:52', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-11-01 19:53:09', '2018-11-01 19:53:09', 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata.png', 'cropped-rata.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-png', '', '', '2018-11-01 19:53:09', '2018-11-01 19:53:09', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2018-11-01 19:53:30', '2018-11-01 19:53:30', 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo-1.png', 'cropped-triangleLogo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-trianglelogo-1-png', '', '', '2018-11-01 19:53:30', '2018-11-01 19:53:30', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo-1.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2018-11-01 20:31:43', '2018-11-01 20:31:43', 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo-2.png', 'cropped-triangleLogo-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-trianglelogo-2-png', '', '', '2018-11-01 20:31:43', '2018-11-01 20:31:43', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/11/cropped-triangleLogo-2.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2018-11-05 20:29:17', '2018-11-05 20:29:17', '', 'cropped-rata-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-1-png', '', '', '2018-11-05 20:29:17', '2018-11-05 20:29:17', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-1.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2018-11-05 20:30:27', '2018-11-05 20:30:27', '', 'cropped-shridhar-gupta-678685-unsplash.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-shridhar-gupta-678685-unsplash-jpg', '', '', '2018-11-05 20:30:27', '2018-11-05 20:30:27', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-shridhar-gupta-678685-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-11-05 20:33:37', '2018-11-05 20:33:37', '', 'cropped-rata-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-2-png', '', '', '2018-11-05 20:33:37', '2018-11-05 20:33:37', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-2.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2018-11-05 20:37:39', '2018-11-05 20:37:39', '', 'cropped-rata-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-3-png', '', '', '2018-11-05 20:37:39', '2018-11-05 20:37:39', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-3.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2018-11-05 20:39:22', '2018-11-05 20:39:22', '', 'cropped-rata-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-4-png', '', '', '2018-11-05 20:39:22', '2018-11-05 20:39:22', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-4.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-11-05 20:41:59', '2018-11-05 20:41:59', '', 'cropped-rata-5.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-5-png', '', '', '2018-11-05 20:41:59', '2018-11-05 20:41:59', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-5.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-11-05 20:47:55', '2018-11-05 20:47:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/index.php/2018/11/05/home-3/', 1, 'nav_menu_item', '', 0),
(117, 1, '2018-11-05 20:48:47', '2018-11-05 20:48:47', '', 'cropped-rata-6.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-6-png', '', '', '2018-11-05 20:48:47', '2018-11-05 20:48:47', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-6.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-11-05 20:49:10', '2018-11-05 20:49:10', '', 'cropped-rata-7.png', '', 'inherit', 'open', 'closed', '', 'cropped-rata-7-png', '', '', '2018-11-05 20:49:10', '2018-11-05 20:49:10', '', 0, 'http://192.168.33.10/customThemeSite/wp-content/uploads/2018/10/cropped-rata-7.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2018-11-13 20:50:00', '2018-11-13 20:50:00', '{\n    "18WDWU02Theme::featured_post_1_setting": {\n        "value": "1",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-11-13 20:50:00"\n    },\n    "18WDWU02Theme::featured_post_2_setting": {\n        "value": "45",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-11-13 20:50:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6d5e7194-ac84-409b-8f36-5063ae96df51', '', '', '2018-11-13 20:50:00', '2018-11-13 20:50:00', '', 0, 'http://192.168.33.10/customThemeSite/index.php/2018/11/13/6d5e7194-ac84-409b-8f36-5063ae96df51/', 0, 'customize_changeset', '', 0),
(160, 1, '2018-11-14 20:45:41', '2018-11-14 20:45:41', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2018-11-14 20:46:51', '2018-11-14 20:46:51', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=160', 0, 'page', '', 0),
(161, 1, '2018-11-14 20:45:41', '2018-11-14 20:45:41', '', 'Register', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2018-11-14 20:45:41', '2018-11-14 20:45:41', '', 160, 'http://192.168.33.10/customThemeSite/index.php/2018/11/14/160-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-11-14 20:47:50', '2018-11-14 20:47:50', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=162', 5, 'nav_menu_item', '', 0),
(163, 1, '2018-11-15 19:42:08', '2018-11-15 19:42:08', 'Send through your enquiry to us. We will get back to you when we can', 'Enquiries', '', 'publish', 'closed', 'closed', '', 'enquiries', '', '', '2018-11-15 20:17:59', '2018-11-15 20:17:59', '', 0, 'http://192.168.33.10/customThemeSite/?page_id=163', 0, 'page', '', 0),
(164, 1, '2018-11-15 19:42:08', '2018-11-15 19:42:08', '', 'Enquiries', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-11-15 19:42:08', '2018-11-15 19:42:08', '', 163, 'http://192.168.33.10/customThemeSite/index.php/2018/11/15/163-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-11-15 20:16:31', '2018-11-15 20:16:31', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2018-11-15 20:16:31', '2018-11-15 20:16:31', '', 0, 'http://192.168.33.10/customThemeSite/?p=186', 6, 'nav_menu_item', '', 0),
(187, 1, '2018-11-15 20:17:59', '2018-11-15 20:17:59', 'Send through your enquiry to us. We will get back to you when we can', 'Enquiries', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-11-15 20:17:59', '2018-11-15 20:17:59', '', 163, 'http://192.168.33.10/customThemeSite/index.php/2018/11/15/163-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2018-11-15 22:22:36', '0000-00-00 00:00:00', 'sfsfsdfsdfs', 'Jolly', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-15 22:22:36', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=enquiries&p=189', 0, 'enquiries', '', 0),
(190, 1, '2018-11-15 22:27:05', '0000-00-00 00:00:00', 'fseiufhe8f9s8f9sf', 'Sammy', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-15 22:27:05', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=enquiries&p=190', 0, 'enquiries', '', 0),
(191, 1, '2018-11-18 19:36:06', '2018-11-18 19:36:06', 'Here\'s some Lorum\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget sodales nibh. Donec eget elit neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce a molestie nisl. Donec auctor erat at ligula laoreet aliquet. Nullam sit amet tortor suscipit ex facilisis efficitur vitae vel mi. Ut maximus, diam sit amet auctor dignissim, purus justo lobortis eros, id euismod massa eros a dui. Fusce porttitor varius dui, semper ullamcorper elit. Donec congue nec elit sed tincidunt. Ut nisi tellus, varius eget orci sit amet, suscipit sollicitudin sapien. Aenean placerat augue risus, sed sollicitudin sem rutrum quis. Pellentesque tempor eu ex a efficitur. Vivamus nunc elit, aliquam vitae molestie eu, tempor ac diam. Nunc ac elementum leo. Aliquam ut quam sit amet odio imperdiet aliquet in faucibus nisi.\r\n\r\nAenean ac convallis leo, a pretium orci. Aliquam vel eleifend nulla. Mauris eget commodo magna. Cras vehicula hendrerit elit non consectetur. Sed nisl quam, dapibus ac porttitor a, mattis vehicula ex. Mauris et blandit arcu, et accumsan tortor. Etiam finibus nisi eget mi hendrerit, eu volutpat turpis tempor. Suspendisse sem lectus, pretium at finibus nec, ultricies sed leo. Proin porttitor eros orci, at aliquam lacus elementum id. Fusce nec orci fermentum, volutpat urna et, semper orci. ', 'This is a blog post', '', 'publish', 'open', 'open', '', 'this-is-a-blog-post', '', '', '2018-11-18 19:36:06', '2018-11-18 19:36:06', '', 0, 'http://192.168.33.10/customThemeSite/?p=191', 0, 'post', '', 0),
(192, 1, '2018-11-18 19:36:06', '2018-11-18 19:36:06', 'Here\'s some Lorum\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget sodales nibh. Donec eget elit neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce a molestie nisl. Donec auctor erat at ligula laoreet aliquet. Nullam sit amet tortor suscipit ex facilisis efficitur vitae vel mi. Ut maximus, diam sit amet auctor dignissim, purus justo lobortis eros, id euismod massa eros a dui. Fusce porttitor varius dui, semper ullamcorper elit. Donec congue nec elit sed tincidunt. Ut nisi tellus, varius eget orci sit amet, suscipit sollicitudin sapien. Aenean placerat augue risus, sed sollicitudin sem rutrum quis. Pellentesque tempor eu ex a efficitur. Vivamus nunc elit, aliquam vitae molestie eu, tempor ac diam. Nunc ac elementum leo. Aliquam ut quam sit amet odio imperdiet aliquet in faucibus nisi.\r\n\r\nAenean ac convallis leo, a pretium orci. Aliquam vel eleifend nulla. Mauris eget commodo magna. Cras vehicula hendrerit elit non consectetur. Sed nisl quam, dapibus ac porttitor a, mattis vehicula ex. Mauris et blandit arcu, et accumsan tortor. Etiam finibus nisi eget mi hendrerit, eu volutpat turpis tempor. Suspendisse sem lectus, pretium at finibus nec, ultricies sed leo. Proin porttitor eros orci, at aliquam lacus elementum id. Fusce nec orci fermentum, volutpat urna et, semper orci. ', 'This is a blog post', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2018-11-18 19:36:06', '2018-11-18 19:36:06', '', 191, 'http://192.168.33.10/customThemeSite/index.php/2018/11/18/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2018-11-18 19:36:36', '2018-11-18 19:36:36', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Another Blog Post!', '', 'publish', 'open', 'open', '', 'another-blog-post', '', '', '2018-11-18 19:38:43', '2018-11-18 19:38:43', '', 0, 'http://192.168.33.10/customThemeSite/?p=193', 0, 'post', '', 0),
(194, 1, '2018-11-18 19:36:36', '2018-11-18 19:36:36', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Another Blog Post!', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-11-18 19:36:36', '2018-11-18 19:36:36', '', 193, 'http://192.168.33.10/customThemeSite/index.php/2018/11/18/193-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2018-11-18 19:41:56', '2018-11-18 19:41:56', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Post', '', 'trash', 'open', 'open', '', 'post__trashed', '', '', '2018-11-18 19:45:59', '2018-11-18 19:45:59', '', 0, 'http://192.168.33.10/customThemeSite/?p=197', 0, 'post', '', 0),
(198, 1, '2018-11-18 19:41:56', '2018-11-18 19:41:56', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Post', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-11-18 19:41:56', '2018-11-18 19:41:56', '', 197, 'http://192.168.33.10/customThemeSite/index.php/2018/11/18/197-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2018-11-18 19:42:26', '2018-11-18 19:42:26', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Post 2', '', 'trash', 'open', 'open', '', 'post-2__trashed', '', '', '2018-11-18 19:45:55', '2018-11-18 19:45:55', '', 0, 'http://192.168.33.10/customThemeSite/?p=199', 0, 'post', '', 0),
(200, 1, '2018-11-18 19:42:26', '2018-11-18 19:42:26', 'Etiam auctor ante ex, et porttitor magna venenatis et. Mauris vehicula mi et ex volutpat, vel accumsan odio mattis. Nullam ut sem augue. Curabitur pulvinar metus elementum justo semper tincidunt. Ut eu mauris faucibus, dignissim odio vel, facilisis ex. Curabitur dui ex, viverra rhoncus tellus in, facilisis bibendum nibh. Curabitur at mauris lectus. Maecenas nec fermentum justo. Pellentesque pretium leo et tellus sodales, eu dictum nisi pulvinar. Donec a tortor eu sapien dictum aliquam a nec enim. Quisque at dignissim tortor, sed suscipit orci. Nullam fringilla cursus nibh at pharetra.\r\n\r\nDuis pharetra laoreet felis, quis viverra neque volutpat cursus. Aenean porta sapien et turpis fermentum ornare. Donec et leo id libero euismod accumsan eu vitae erat. Nullam at lacus et mi euismod pretium. Nunc eu tellus est.', 'Post 2', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2018-11-18 19:42:26', '2018-11-18 19:42:26', '', 199, 'http://192.168.33.10/customThemeSite/index.php/2018/11/18/199-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2018-11-19 19:44:12', '2018-11-19 19:44:12', '', 'Plant 3', '', 'publish', 'closed', 'closed', '', 'plant-3', '', '', '2018-11-19 19:44:12', '2018-11-19 19:44:12', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=staff&#038;p=201', 0, 'staff', '', 0),
(202, 1, '2018-11-19 19:44:31', '2018-11-19 19:44:31', '', 'Plant 4', '', 'publish', 'closed', 'closed', '', 'plant-4', '', '', '2018-11-19 19:44:31', '2018-11-19 19:44:31', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=staff&#038;p=202', 0, 'staff', '', 0),
(209, 1, '2018-12-05 22:26:05', '0000-00-00 00:00:00', '241313131', '2451', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-12-05 22:26:05', '0000-00-00 00:00:00', '', 0, 'http://192.168.33.10/customThemeSite/?post_type=enquiries&p=209', 0, 'enquiries', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'menu1', 'menu1', 0),
(3, 'footer-menu', 'footer-menu', 0),
(4, 'Another top menu', 'another-top-menu', 0),
(5, 'post-format-video', 'post-format-video', 0),
(6, 'post-format-image', 'post-format-image', 0),
(7, 'post-format-gallery', 'post-format-gallery', 0),
(8, 'post-format-aside', 'post-format-aside', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 1, 0),
(13, 1, 0),
(16, 1, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 4, 0),
(39, 4, 0),
(40, 4, 0),
(43, 1, 0),
(45, 1, 0),
(45, 8, 0),
(47, 1, 0),
(47, 7, 0),
(49, 1, 0),
(49, 6, 0),
(52, 1, 0),
(52, 5, 0),
(60, 1, 0),
(60, 5, 0),
(79, 2, 0),
(116, 2, 0),
(162, 2, 0),
(186, 2, 0),
(191, 1, 0),
(193, 1, 0),
(193, 6, 0),
(197, 1, 0),
(199, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 12),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'post_format', '', 0, 2),
(6, 6, 'post_format', '', 0, 2),
(7, 7, 'post_format', '', 0, 1),
(8, 8, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'coffee'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '204'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"192.168.33.0";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=html'),
(21, 1, 'wp_user-settings-time', '1541457921'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(28, 1, 'closedpostboxes_staff', 'a:0:{}'),
(29, 1, 'metaboxhidden_staff', 'a:1:{i:0;s:7:"slugdiv";}'),
(30, 1, 'closedpostboxes_enquiries', 'a:0:{}'),
(31, 1, 'metaboxhidden_enquiries', 'a:1:{i:0;s:7:"slugdiv";}'),
(32, 1, 'session_tokens', 'a:3:{s:64:"1999d7b3c3c7a4f72050e2b410604c9ef7546ee6ac30a64774992a6c818671dd";a:4:{s:10:"expiration";i:1544124417;s:2:"ip";s:12:"192.168.33.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1543951617;}s:64:"3d98379805745f46962997dedacf6c466dd7f3fcf6d2c82fd6657868683f2a27";a:4:{s:10:"expiration";i:1544213472;s:2:"ip";s:12:"192.168.33.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1544040672;}s:64:"9d0f2dd1e523b7683e80c0262b2e55a3dc5daf36e64c64e2f63ad13a067d6358";a:4:{s:10:"expiration";i:1544226457;s:2:"ip";s:12:"192.168.33.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1544053657;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BErvve9FN4qm39w5mrzSTsz3U8/c8o1', 'admin', 'sumitramanga@gmail.com', '', '2018-10-24 19:47:02', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
