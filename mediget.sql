-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 09:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediget`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_bg` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `section_sub_title` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `section_description` longtext DEFAULT NULL,
  `btn_icon_class` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `btn_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `banner_bg`, `image`, `section_sub_title`, `section_title`, `section_description`, `btn_icon_class`, `btn_text`, `btn_link`, `created_at`, `updated_at`) VALUES
(1, NULL, 'uploads/about_us/bWgoq1705831028.png', 'Why Choose us', 'We do not buy from the open market & traders.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit illo, est repellendus are quia voluptate neque reiciendis ea placeat labore maiores cum, hic ducimus ad a dolorem soluta consectetur adipisci. Perspiciatis quas ab quibusdam is. Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit illo, est repellendus are quia voluptate neque reiciendis ea placeat labore maiores cum, hic ducimus ad a dolorem soluta consectetur adipisci. Perspiciatis quas ab quibusdam is.</p>\r\n\r\n<p>Itaque accusantium eveniet a laboriosam dolorem? Magni suscipit est corrupti explicabo non perspiciatis, excepturi ut asperiores assumenda rerum? Provident ab corrupti sequi, voluptates repudiandae eius odit aut Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit illo, est repellendus are quia voluptate neque reiciendis ea placeat labore maiores cum, hic ducimus ad a dolorem soluta consectetur adipisci. Perspiciatis quas ab quibusdam is.</p>', NULL, NULL, NULL, NULL, '2024-01-21 10:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Sliders; 2=>Banners',
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sub_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `btn_link` varchar(255) DEFAULT NULL,
  `text_position` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `image`, `link`, `position`, `status`, `sub_title`, `title`, `description`, `btn_text`, `btn_link`, `text_position`, `slug`, `serial`, `created_at`, `updated_at`) VALUES
(35, 1, 'banner/E27ZP1707714772.jpg', 'http://127.0.0.1:8000', NULL, 1, 'Perfect Solutions for Your Mind', 'Your Gateway to Comprehensive Medical', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Show More', 'http://127.0.0.1:8000', 'left', 'yGpql1707714772', 1, '2024-02-12 05:12:52', '2024-02-18 11:59:36'),
(36, 1, 'banner/W2avR1707714823.jpg', 'http://127.0.0.1:8000', NULL, 1, 'Perfect Solutions for Your Mind', 'Explore a World of Medical Expertise', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Visit Now', 'http://127.0.0.1:8000', 'right', '1pjC71707714823', 2, '2024-02-12 05:13:43', '2024-02-18 11:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `order_id`, `address`, `post_code`, `thana`, `city`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, 'Flat No: B4, House No: 71 Road No: 27, Dhaka 1212', '1229', 'Khilkhet', 'Dhaka', 'Bangladesh', '2024-02-01 11:00:41', NULL),
(2, 2, 'Flat-B, Road No 27', '1225', 'Gulshan', 'Dhaka', 'Bangladesh', '2024-02-04 06:19:44', NULL),
(3, 2, 'Road No 27', '52858', 'Barguna Sadar', 'Barguna', 'Bangladesh', '2024-02-18 05:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `image`, `title`, `short_description`, `description`, `tags`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'blogImages/JRl7i1697623059.png', 'Fashion Trends In 2021 Styles, Colors, Accessories', 'If this sounds like an impossible tick-boxing exercise, there will be overarching themes at play at the Golden Globes, SAG Awards and Oscars, as stylists fall for the same buzzy designers, directional silhouettes and whimsical embellishments that chime with the current mood, but have lasting impact. Vogue picked the brains of three heavyweight dressers to find out what we can expect from the nominees and guests on film’s big nights in 2024.', '<p>If red carpet stylists had their way, awards season 2024 would be a joyous celebration of emerging designers, diverse talent and archival looks with an underlining note of thoughtfulness regarding the state of fashion. But, there are brand partnerships at play, new collections to promote and sponsors to keep happy. Hollywood&rsquo;s wardrobes become Tetris puzzles, as celebrity dressers navigate samples, alterations and custom commissions, while keeping in mind both the couture and ready-to-wear trends and incorporating some semblance of sustainability in line with the industry&rsquo;s commitment to do better for our planet. A dress is never just a dress during awards season.</p>\r\n\r\n<p>If this sounds like an impossible tick-boxing exercise, there will be overarching themes at play at the <a href=\"https://www.vogue.com/article/whats-going-on-with-the-golden-globes\">Golden Globes</a>, SAG Awards and <a href=\"https://www.vogue.co.uk/article/oscars\">Oscars</a>, as stylists fall for the same buzzy designers, directional silhouettes and whimsical embellishments that chime with the current mood, but have lasting impact. <em>Vogue</em> picked the brains of three heavyweight dressers to find out what we can expect from the nominees and guests on film&rsquo;s big nights in 2024.</p>\r\n\r\n<blockquote>\r\n<p>Bridal was a major trend at last year&rsquo;s Oscars, but all-white looks also proliferated on the spring 2024 runways, thanks to the likes of Stella McCartney, Prada, Valentino and Acne Studios. &ldquo;It showed that white isn&rsquo;t just for weddings,&rdquo; opines Holly. &ldquo;The laser-cuts, the sheer details, the neck lines&hellip; these looks are red-carpet worthy and I&rsquo;m excited to see who walks in them.&rdquo; We can imagine the British contingency &ndash; including Rosamund Pike and Emily Blunt &ndash; channelling this undone angelic look.</p>\r\n</blockquote>\r\n\r\n<h2>Disco 2024</h2>\r\n\r\n<p>&ldquo;If there is a time to shine, it&rsquo;s on the red carpet,&rdquo; asserts White. &ldquo;Metallics will reign and spring 2024 brought some modern silhouettes to the runway that will give this somewhat consistent trend a contemporary and updated look.&rdquo; Watch out, she says, for Paco Rabanne, Alexander McQueen and Ralph Lauren.</p>', 'health,beauty,fashion', 'fashion-trends-in-2021-styles-colors-accessories1705821920', 1, '2023-10-18 07:57:39', '2024-01-21 09:23:17'),
(3, 2, 'blogImages/qje301697623144.png', 'Lauryn Hill Could Make Tulle Skirt and Cowboy', 'If this sounds like an impossible tick-boxing exercise, there will be overarching themes at play at the Golden Globes, SAG Awards and Oscars, as stylists fall for the same buzzy designers, directional silhouettes and whimsical embellishments that chime with the current mood, but have lasting impact. Vogue picked the brains of three heavyweight dressers to find out what we can expect from the nominees and guests on film’s big nights in 2024.', '<p>If red carpet stylists had their way, awards season 2024 would be a joyous celebration of emerging designers, diverse talent and archival looks with an underlining note of thoughtfulness regarding the state of fashion. But, there are brand partnerships at play, new collections to promote and sponsors to keep happy. Hollywood&rsquo;s wardrobes become Tetris puzzles, as celebrity dressers navigate samples, alterations and custom commissions, while keeping in mind both the couture and ready-to-wear trends and incorporating some semblance of sustainability in line with the industry&rsquo;s commitment to do better for our planet. A dress is never just a dress during awards season.</p>\r\n\r\n<p>If this sounds like an impossible tick-boxing exercise, there will be overarching themes at play at the <a href=\"https://www.vogue.com/article/whats-going-on-with-the-golden-globes\">Golden Globes</a>, SAG Awards and <a href=\"https://www.vogue.co.uk/article/oscars\">Oscars</a>, as stylists fall for the same buzzy designers, directional silhouettes and whimsical embellishments that chime with the current mood, but have lasting impact. <em>Vogue</em> picked the brains of three heavyweight dressers to find out what we can expect from the nominees and guests on film&rsquo;s big nights in 2024.</p>\r\n\r\n<blockquote>\r\n<p>Bridal was a major trend at last year&rsquo;s Oscars, but all-white looks also proliferated on the spring 2024 runways, thanks to the likes of Stella McCartney, Prada, Valentino and Acne Studios. &ldquo;It showed that white isn&rsquo;t just for weddings,&rdquo; opines Holly. &ldquo;The laser-cuts, the sheer details, the neck lines&hellip; these looks are red-carpet worthy and I&rsquo;m excited to see who walks in them.&rdquo; We can imagine the British contingency &ndash; including Rosamund Pike and Emily Blunt &ndash; channelling this undone angelic look.</p>\r\n</blockquote>\r\n\r\n<h2>Disco 2024</h2>\r\n\r\n<p>&ldquo;If there is a time to shine, it&rsquo;s on the red carpet,&rdquo; asserts White. &ldquo;Metallics will reign and spring 2024 brought some modern silhouettes to the runway that will give this somewhat consistent trend a contemporary and updated look.&rdquo; Watch out, she says, for Paco Rabanne, Alexander McQueen and Ralph Lauren.</p>', 'fashion,blog,tech', 'lauryn-hill-could-make-tulle-skirt-and-cowboy1705821898', 1, '2023-10-18 07:59:04', '2024-01-21 09:23:26'),
(4, 2, 'blogImages/HIFbw1697623177.png', 'Fewer Bow Ties, More Fringe: What to Expect on the Red Carpets During Awards Season 2024', NULL, '<p>If red carpet stylists had their way, awards season 2024 would be a joyous celebration of emerging designers, diverse talent and archival looks with an underlining note of thoughtfulness regarding the state of fashion. But, there are brand partnerships at play, new collections to promote and sponsors to keep happy. Hollywood&rsquo;s wardrobes become Tetris puzzles, as celebrity dressers navigate samples, alterations and custom commissions, while keeping in mind both the couture and ready-to-wear trends and incorporating some semblance of sustainability in line with the industry&rsquo;s commitment to do better for our planet. A dress is never just a dress during awards season.</p>\r\n\r\n<p>If this sounds like an impossible tick-boxing exercise, there will be overarching themes at play at the <a href=\"https://www.vogue.com/article/whats-going-on-with-the-golden-globes\">Golden Globes</a>, SAG Awards and <a href=\"https://www.vogue.co.uk/article/oscars\">Oscars</a>, as stylists fall for the same buzzy designers, directional silhouettes and whimsical embellishments that chime with the current mood, but have lasting impact. <em>Vogue</em> picked the brains of three heavyweight dressers to find out what we can expect from the nominees and guests on film&rsquo;s big nights in 2024.</p>\r\n\r\n<blockquote>\r\n<p>Bridal was a major trend at last year&rsquo;s Oscars, but all-white looks also proliferated on the spring 2024 runways, thanks to the likes of Stella McCartney, Prada, Valentino and Acne Studios. &ldquo;It showed that white isn&rsquo;t just for weddings,&rdquo; opines Holly. &ldquo;The laser-cuts, the sheer details, the neck lines&hellip; these looks are red-carpet worthy and I&rsquo;m excited to see who walks in them.&rdquo; We can imagine the British contingency &ndash; including Rosamund Pike and Emily Blunt &ndash; channelling this undone angelic look.</p>\r\n</blockquote>\r\n\r\n<h2>Disco 2024</h2>\r\n\r\n<p>&ldquo;If there is a time to shine, it&rsquo;s on the red carpet,&rdquo; asserts White. &ldquo;Metallics will reign and spring 2024 brought some modern silhouettes to the runway that will give this somewhat consistent trend a contemporary and updated look.&rdquo; Watch out, she says, for Paco Rabanne, Alexander McQueen and Ralph Lauren.</p>\r\n\r\n<p><a href=\"https://www.vogue.com/v2/offers/vog224?source=Site_0_VOG_JNY_DESKTOP_CM_IN_CONTENT_0_MARTECH_US_INTL_TOTE_CONTROL\" target=\"_blank\"><img alt=\"Never Miss a Vogue Moment &lt;br&gt; Get 1 year of Vogue. Plus, get a limited-edition tote &lt;br&gt; SUBSCRIBE NOW\" src=\"https://assets.vogue.com/photos/65822b5f981b93570340822c/original/pass/VOG_DT_In_Content_ControlTote_450x140_2x.png?format=original\" /></a></p>', 'fashion,tech,jewellry', 'fewer-bow-ties-more-fringe-what-to-expect-on-the-red-carpets-during-awards-season-20241705828505', 1, '2023-10-18 07:59:37', '2024-01-21 09:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Not Featured; 1=>Featured',
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `featured`, `serial`, `created_at`, `updated_at`) VALUES
(2, 'Fashion Blogs', 'fashion-blogs1705819778', 1, 1, 1, '2023-10-18 07:51:08', '2024-01-21 06:49:38'),
(3, 'Health & Beauti Tips', 'health-beauti-tips1705819790', 1, 1, 1, '2023-10-18 07:51:16', '2024-01-21 06:49:50'),
(4, 'Groomimg Blogs', 'groomimg-blogs1705819813', 1, 1, 1, '2023-10-18 07:51:22', '2024-01-21 06:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `subcategories` varchar(255) DEFAULT NULL,
  `childcategories` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=> Not Featured; 1=> Featured',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=> Inactive; 1=> Active',
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `banner`, `categories`, `subcategories`, `childcategories`, `featured`, `status`, `serial`, `slug`, `created_at`, `updated_at`) VALUES
(44, 'Square Pharmaceuticals', 'brand_images/2PGnx1707291362.png', NULL, NULL, NULL, NULL, 0, 1, 1, 'square-pharmaceuticals', '2024-02-07 07:36:02', '2024-02-07 07:39:43'),
(45, 'Beximco Pharmaceuticals', 'brand_images/aMQFx1707291406.png', NULL, NULL, NULL, NULL, 0, 1, 2, 'beximco-pharmaceuticals', '2024-02-07 07:36:46', '2024-02-07 07:39:43'),
(46, 'Incepta Pharmaceuticals', 'brand_images/L6d661707291491.png', NULL, NULL, NULL, NULL, 0, 1, 3, 'incepta-pharmaceuticals', '2024-02-07 07:38:12', '2024-02-07 07:39:43'),
(47, 'Radiant Pharmaceuticals', 'brand_images/5LAE61707291529.png', NULL, NULL, NULL, NULL, 0, 1, 5, 'radiant-pharmaceuticals', '2024-02-07 07:38:49', '2024-02-07 07:39:43'),
(48, 'SKF Pharmaceuticals', 'brand_images/6b8oC1707291572.png', NULL, NULL, NULL, NULL, 0, 1, 4, 'skf-pharmaceuticals', '2024-02-07 07:39:32', '2024-02-07 07:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_unique_cart_no` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `size_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `sim_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `storage_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `warrenty_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `device_condition_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_unique_cart_no`, `product_id`, `color_id`, `size_id`, `region_id`, `sim_id`, `storage_id`, `warrenty_id`, `device_condition_id`, `unit_id`, `qty`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(52, '1681588608321', 1, 2, NULL, 2, 2, 2, 2, 2, 1, 2, 200, 400, '2023-08-02 04:09:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Not Featured; 1=>Featured',
  `show_on_navbar` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Yes; 0=>No',
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `banner_image`, `slug`, `status`, `featured`, `show_on_navbar`, `serial`, `created_at`, `updated_at`) VALUES
(38, 'Healthcare products', NULL, NULL, 'healthcare-products', 1, 0, 1, 1, '2024-02-08 12:01:14', '2024-02-11 09:46:34'),
(39, 'Prescription medicines', NULL, NULL, 'prescription-medicines', 1, 0, 1, 2, '2024-02-11 09:29:17', '2024-02-11 09:46:34'),
(40, 'Baby Care', NULL, NULL, 'baby-care', 1, 0, 1, 3, '2024-02-11 09:29:27', '2024-02-11 09:46:34'),
(41, 'Device & Equipment', NULL, NULL, 'device-equipment', 1, 0, 1, 4, '2024-02-11 09:29:38', '2024-02-11 09:46:34'),
(42, 'Men’s Products', NULL, NULL, 'men’s-products', 1, 0, 1, 5, '2024-02-11 09:29:46', '2024-02-11 09:46:34'),
(43, 'Women’s Products', NULL, NULL, 'women’s-products', 1, 0, 1, 6, '2024-02-11 09:29:56', '2024-02-11 09:46:34'),
(44, 'COVID Essentials', 'category_images/nnuTU1707801745.webp', NULL, 'covid-essentials', 1, 1, 0, 7, '2024-02-11 09:30:09', '2024-02-13 05:22:25'),
(45, 'Sexual Wellness', 'category_images/2JT2a1707801753.webp', NULL, 'sexual-wellness', 1, 1, 0, 8, '2024-02-11 09:30:16', '2024-02-13 05:22:33'),
(46, 'Diabetes Care', 'category_images/KSIgm1707801759.webp', NULL, 'diabetes-care', 1, 1, 0, 9, '2024-02-11 09:30:26', '2024-02-13 05:22:39'),
(47, 'Womens Care', 'category_images/e7ncH1707801767.webp', NULL, 'womens-care', 1, 1, 0, 10, '2024-02-11 09:30:34', '2024-02-13 05:22:47'),
(48, 'Natural Food', 'category_images/ULLb31707801776.webp', NULL, 'natural-food', 1, 1, 0, 11, '2024-02-11 09:30:45', '2024-02-13 05:22:56'),
(49, 'Men\'s Products', 'category_images/PcoeK1707801783.webp', NULL, 'mens-products', 1, 1, 0, 12, '2024-02-11 09:31:14', '2024-02-13 05:23:03'),
(50, 'Surgical', 'category_images/BP1OV1707801798.webp', NULL, 'surgical', 1, 1, 0, 13, '2024-02-11 09:31:25', '2024-02-13 05:23:18'),
(51, 'Laundry & Household', 'category_images/xf1Ed1707801805.webp', NULL, 'laundry-household', 1, 1, 0, 14, '2024-02-11 09:31:38', '2024-02-13 05:23:25'),
(52, 'Health & Beauty', 'category_images/eoT8L1707801812.webp', NULL, 'health-beauty', 1, 1, 0, 15, '2024-02-11 09:31:47', '2024-02-13 05:23:32'),
(53, 'Family Nutation', 'category_images/qk6vD1707801823.webp', NULL, 'family-nutation', 1, 1, 0, 16, '2024-02-11 09:31:54', '2024-02-13 05:23:43'),
(54, 'Herbal', 'category_images/uYCvE1707801836.webp', NULL, 'herbal', 1, 1, 0, 17, '2024-02-11 09:32:04', '2024-02-13 05:23:56'),
(55, 'Devices & Equipment', 'category_images/ST6731707801845.webp', NULL, 'devices-equipment', 1, 1, 0, 18, '2024-02-11 09:32:14', '2024-02-13 05:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `subcategory_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 55, 'Lenovo', 'lenovo-1704003717-Ebzrd', 1, '2023-12-31 06:21:57', NULL),
(2, 17, 55, 'HP', 'hp-1704003726-TsxVx', 1, '2023-12-31 06:22:06', NULL),
(3, 17, 55, 'Asus', 'asus-1704003732-3gPYA', 1, '2023-12-31 06:22:12', NULL),
(4, 17, 55, 'Acer', 'acer-1704003737-MU1Sx', 1, '2023-12-31 06:22:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Pure White', '#ffffff', '2023-06-05 04:21:56', NULL),
(2, 'Dark Black', '#000000', '2023-06-05 04:22:10', NULL),
(3, 'Navy Blue', '#000080', '2023-06-05 04:22:33', NULL),
(4, 'Silver', '#c0c0c0', '2023-06-05 04:22:53', NULL),
(5, 'Yellow', '#ffff00', '2023-06-05 04:23:03', NULL),
(6, 'Red', '#ff0000', '2023-06-05 04:23:11', NULL),
(7, 'Deep Green', '#008040', '2023-06-05 04:23:39', NULL),
(8, 'Sky Blue', '#00ffff', '2023-06-05 04:24:01', NULL),
(9, 'Orange', '#ff8040', '2023-06-07 15:00:45', NULL),
(10, 'off-white', '#fdfdfd', '2023-06-14 14:02:56', NULL),
(11, 'Rock blue', '#9bb5ce', '2023-06-14 14:05:13', NULL),
(12, 'Cream', '#f9e5c9', '2023-06-14 14:07:01', '2023-11-24 04:21:23'),
(13, 'Dusty Pink', '#c27ba0', '2023-07-09 18:26:57', NULL),
(14, 'LightGreen', '#b6d7a8', '2023-07-25 10:05:10', '2023-07-25 10:16:12'),
(15, 'Light Purple', '#cbc3e3', '2023-07-25 10:08:46', NULL),
(16, 'Dark purple', '#6a329f', '2023-11-17 03:55:16', '2023-11-24 04:17:04'),
(17, 'peach', '#ea9999', '2023-11-24 04:15:41', NULL),
(18, 'Hot pink', '#c90076', '2023-11-24 04:18:23', '2023-12-03 08:54:24'),
(19, 'Blue', '#2986cc', '2023-11-24 04:20:30', NULL),
(20, 'Nevi blue', '#0b5394', '2023-11-24 04:20:56', NULL),
(21, 'green', '#38761d', '2023-11-24 04:22:09', NULL),
(22, 'Bottle green', '#274e13', '2023-11-24 04:22:32', NULL),
(23, 'Parrot green', '#8fce00', '2023-11-24 04:22:58', NULL),
(24, 'Maroon', '#660000', '2023-11-24 04:23:28', NULL),
(25, 'Jet black', '#444444', '2023-11-24 04:24:51', NULL),
(26, 'Mustard yellow', '#bf9000', '2023-11-24 05:49:21', NULL),
(27, 'Sea Green', '#1b7e95', '2023-12-27 16:57:08', NULL),
(28, 'Brown', '#c69f61', '2024-01-02 04:18:54', NULL),
(29, 'Pink', '#e369b0', '2024-01-02 04:19:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `config_setups`
--

CREATE TABLE `config_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_setups`
--

INSERT INTO `config_setups` (`id`, `icon`, `name`, `code`, `industry`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Product Size', 'product_size', 'Fashion', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(2, NULL, 'Storage', 'storage', 'Tech', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(3, NULL, 'Sim Type', 'sim', 'Tech', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(4, NULL, 'Device Condition', 'device_condition', 'Tech', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(5, NULL, 'Product Warranty', 'product_warranty', 'Tech', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(6, NULL, 'Region', 'region', 'Common', 0, '2023-12-17 06:53:00', '2024-02-06 11:06:16'),
(7, NULL, 'Product Color', 'color', 'Common', 0, '2024-01-29 09:12:58', '2024-02-06 11:06:16'),
(8, NULL, 'Measurement Unit', 'measurement_unit', 'Common', 1, '2024-01-29 09:14:23', '2024-02-06 11:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_requests`
--

CREATE TABLE `contact_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Not Served; 1=>Served',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_requests`
--

INSERT INTO `contact_requests` (`id`, `name`, `email`, `phone`, `company_name`, `message`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Chava Burt', 'qonymexisu@mailinator.com', '+1 (712) 751-4684', NULL, 'Omnis numquam eu fac', 0, '2024-02-18 10:43:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UAE', 'UAE', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_conditions`
--

CREATE TABLE `device_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_conditions`
--

INSERT INTO `device_conditions` (`id`, `name`, `serial`, `created_at`, `updated_at`) VALUES
(1, 'Brand New (Official)', 1, '2023-06-05 04:34:14', '2023-07-16 21:50:27'),
(3, 'Used (Fresh Condition)', 2, '2023-06-05 04:34:27', '2023-07-16 21:50:15'),
(4, 'Refurbished', 4, '2023-06-05 04:34:33', '2023-07-10 22:22:55'),
(6, 'Brand New (Unofficial)', 1, '2023-07-16 21:50:39', NULL),
(7, 'Used (Few Scratches)', 1, '2023-07-16 21:52:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scientific_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `serial` double NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `image`, `name`, `scientific_name`, `description`, `status`, `serial`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'diseases_images/uNIbu1707802382.jpg', 'Asthma', NULL, NULL, 1, 4, 'asthma', '2024-02-07 07:14:52', '2024-02-13 05:54:17'),
(3, 'diseases_images/ctVRn1707802679.jpg', 'Acne', NULL, NULL, 1, 6, 'acne', '2024-02-11 12:14:56', '2024-02-13 05:48:54'),
(6, 'diseases_images/5jvLk1707802737.jpg', 'Bone Cancer', NULL, NULL, 1, 1, 'bone-cancer', '2024-02-11 12:15:53', '2024-02-13 05:48:54'),
(7, 'diseases_images/J7own1707803213.jpg', 'Brain Tumours', NULL, NULL, 1, 2, 'brain-tumours', '2024-02-11 12:16:13', '2024-02-13 05:48:54'),
(8, 'diseases_images/CHjpN1707803314.jpg', 'Chest Infection', NULL, NULL, 1, 3, 'chest-infection', '2024-02-11 12:16:25', '2024-02-13 05:48:54'),
(9, 'diseases_images/cG59Y1707803353.png', 'Chest Pain', NULL, NULL, 1, 7, 'chest-pain', '2024-02-11 12:16:35', '2024-02-13 05:49:13'),
(10, 'diseases_images/uLggF1707803400.jpg', 'Depression', NULL, NULL, 1, 8, 'depression', '2024-02-11 12:16:44', '2024-02-13 05:50:00'),
(11, 'diseases_images/erZYz1707802633.jpg', 'Diabetes', NULL, NULL, 1, 5, 'diabetes', '2024-02-11 12:28:22', '2024-02-13 05:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `division_id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `delivery_charge` double NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`, `delivery_charge`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', 100),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', 100),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', 100),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', 100),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', 100),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', 100),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', 100),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', 100),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', 100),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', 100),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', 100),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', 100),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', 100),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', 100),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', 100),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', 100),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', 100),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', 100),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', 100),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', 100),
(21, 3, 'Satkhira', 'সাতক্ষীরা', '22.7180905', '89.0687033', 'www.satkhira.gov.bd', 100),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', 100),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', 100),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', 100),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', 100),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', 100),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', 100),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', 100),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', 100),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', '22.6422689', '90.2003932', 'www.jhalakathi.gov.bd', 100),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', 100),
(32, 4, 'Pirojpur', 'পিরোজপুর', '22.5781398', '89.9983909', 'www.pirojpur.gov.bd', 100),
(33, 4, 'Barisal', 'বরিশাল', '22.7004179', '90.3731568', 'www.barisal.gov.bd', 100),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', 100),
(35, 4, 'Barguna', 'বরগুনা', '22.159182', '90.125581', 'www.barguna.gov.bd', 100),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', 100),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', 100),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', 100),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', 100),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', 100),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', 100),
(42, 6, 'Shariatpur', 'শরীয়তপুর', '23.2060195', '90.3477725', 'www.shariatpur.gov.bd', 100),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', 100),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.264145', '89.918029', 'www.tangail.gov.bd', 100),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', 100),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', '23.8602262', '90.0018293', 'www.manikganj.gov.bd', 100),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', 70),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5435742', '90.5354327', 'www.munshiganj.gov.bd', 100),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', 100),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', 100),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', 100),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', 100),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', 100),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', 100),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', '25.9165451', '89.4532409', 'www.lalmonirhat.gov.bd', 100),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', 100),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', 100),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', 100),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', 100),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', 100),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', 100),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', 100),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', 100),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', 100);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `visiting_charge` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `available_time` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `education` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Inactive; 1=>Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `image`, `visiting_charge`, `name`, `degree`, `institution`, `available_time`, `contact`, `location`, `biography`, `education`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'doctors_image/Rj8Ri1709026282.jpg', '500', 'Dr. Khalid Abbed', 'MBBS, BCS(Helth)', 'Square Hospital (Professor Neuromedicine)', 'Wednesday to Friday 03:03 PM - 04:04 PM', '+8801969005035', 'Commodi rem aspernat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 'Master of Neoro Surgery at University of Mediserv (2002),Higher Secondary Certificate at Mediserv collage (1991)', '6jT651709026282', 1, '2024-02-27 09:31:22', '2024-02-27 10:33:32'),
(2, 'doctors_image/P4SvZ1709026865.webp', '750', 'Dr. Jihadul Islam', 'MBBS, FCPS', 'Specialized Medical Hospital', 'Monday to Friday 03:03 PM - 04:04 PM', '+8801969005999', 'Duis do nemo animi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 'MBBS degree in Neurosciences at University of Mediserv (2002),Higher Secondary Certificate at Mediserv collage (1991)', 'hS97R1709026865', 1, '2024-02-27 09:41:05', '2024-02-27 10:33:14'),
(3, 'doctors_image/CtDst1709026870.png', '1200', 'Dr. Sagor Khan', 'MBBS, BCS(Nurology)', 'Alfa Hospital', 'Sunday to Friday 03:03 PM - 04:04 PM', '+8801969008596', 'Dolore suscipit qui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 'PHD degree in Neorology at University of Mediserv (2006),Master of Neoro Surgery at University of Mediserv (2002)', 'BFlVW1709026870', 1, '2024-02-27 09:41:10', '2024-02-27 10:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_visit_requests`
--

CREATE TABLE `doctor_visit_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `visit_date_time` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Pending; 1=>Approved; 2=>Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_visit_requests`
--

INSERT INTO `doctor_visit_requests` (`id`, `doctor_id`, `user_id`, `serial_no`, `name`, `phone`, `age`, `weight`, `visit_date_time`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 64, '2Mediget00003', 'Noelle Hubbard', '+1 (643) 774-8966', '28 years', '81 KG', '24-03-03 21:08', 'GS2Xr1709478028', 2, '2024-03-03 18:17:35', NULL),
(3, 2, 64, '3Mediget00004', 'Slade Baker', '+1 (518) 633-1493', '30 years', '68 KG', '24-03-04 21:08', 'z1xxj1709478037', 1, '2024-03-03 18:15:47', '2024-03-03 15:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `email_configures`
--

CREATE TABLE `email_configures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail_from_name` varchar(255) DEFAULT NULL,
  `mail_from_email` varchar(255) DEFAULT NULL,
  `encryption` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>None; 1=>TLS; 2=>SSL',
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configures`
--

INSERT INTO `email_configures` (`id`, `host`, `port`, `email`, `password`, `mail_from_name`, `mail_from_email`, `encryption`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6, 'smtp.gmail.com', 587, 'getupadgency@gmail.com', 'qrRFO6vSKj6Otuq3XBPp1do=', 'Getup', 'sales@fejmo.com', 1, '1697948605aqOMD', 1, '2023-10-22 04:23:25', '2024-01-28 05:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `template_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `template_image`, `title`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 'order_placed', 'email_templates/order_successfull_1.png', 'Regular', 1, 1, '2023-11-08 08:45:06', '2023-11-09 04:33:06'),
(2, 'order_placed', 'email_templates/order_successfull_1.png', 'Classic', 0, 2, '2023-11-08 08:45:06', '2023-11-09 04:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'How can I place an order on Bestu?', 'To place an order, simply browse through our product listings, select the items you wish to purchase, and add them to your cart. Proceed to the checkout page, enter your shipping and payment information, and confirm your order. you can buy directly single product also.', 1, 'YNNLM1689485446', '2023-07-16 15:30:46', '2023-07-16 15:30:46'),
(2, 'What payment methods do you accept?', 'We accept various payment methods, including credit cards, debit cards, and online payment services such as SSLCommerez. The available payment options will be displayed during the checkout process.', 1, 'wj67c1689485485', '2023-07-16 15:31:25', '2023-07-16 15:31:25'),
(3, 'How long does it take to process and ship an order?', 'We typically process and ship orders within 1-2 business days. However, processing times may vary during peak seasons or promotional periods. Once your order is shipped, you will receive a shipping confirmation email with tracking information.', 1, '8QsEn1689486367', '2023-07-16 15:46:07', '2023-07-16 15:46:07'),
(4, 'What are your shipping options and delivery times?', 'We offer a range of shipping options, including standard and expedited shipping. The delivery time will depend on your location, the selected shipping method, and other factors beyond our control. During the checkout process, you will be provided with estimated delivery times for each shipping option.', 1, 'q9BXl1689486385', '2023-07-16 15:46:25', '2023-07-16 15:46:25'),
(5, 'Can I track the status of my order?', 'Yes, once your order is shipped, you will receive a shipping confirmation email containing a tracking number. You can use this tracking number to monitor the progress of your shipment on the respective courier\'s website.', 1, '4nWcO1689486403', '2023-07-16 15:46:43', '2023-07-16 15:46:43'),
(6, 'What is your return policy?', 'We have a flexible return policy. If you are not satisfied with your purchase, you may be eligible for a return within the specified return period. Please refer to our Return Policy for detailed information on the return process, eligibility criteria, and other important details.', 1, 'lihMH1689486418', '2023-07-16 15:46:58', '2023-07-16 15:46:58'),
(7, 'How do I contact customer support?', 'You can contact our customer support team by [insert contact information]. Our dedicated team is available to assist you with any questions, concerns, or inquiries you may have. We strive to provide prompt and helpful assistance to ensure your satisfaction.', 1, 'GQAPS1689486430', '2023-07-16 15:47:10', '2023-07-16 15:47:10'),
(10, 'Is my personal information secure?', 'We take the security and privacy of your personal information seriously. We implement industry-standard security measures to protect your data and use it only in accordance with our Privacy Policy. For more information on how we handle your personal information, please refer to our Privacy Policy.', 1, 'BC3RU1689486487', '2023-07-16 15:48:07', '2023-07-16 15:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Not Featured; 1=>Featured',
  `slug` varchar(255) DEFAULT NULL,
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`id`, `icon`, `name`, `status`, `featured`, `slug`, `serial`, `created_at`, `updated_at`) VALUES
(13, 'flag_icons/w3nrr1707299772.svg', 'Prescription Medicines', 1, 1, 'prescription-medicines-8GgsU-1707299772', 1, '2024-02-07 09:41:51', '2024-02-11 10:24:03'),
(14, 'flag_icons/rFxSB1707733469.svg', 'Women’s Care', 1, 0, 'womens-care-jphTY-1707733469', 2, '2024-02-07 09:54:54', '2024-02-12 10:24:29'),
(16, 'flag_icons/9szaE1707299733.svg', 'Men’s Care', 1, 0, 'mens-care-FDFAK-1707299733', 4, '2024-02-07 09:55:33', '2024-02-07 10:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `general_infos`
--

CREATE TABLE `general_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_dark` varchar(255) DEFAULT NULL,
  `fav_icon` varchar(255) DEFAULT NULL,
  `tab_title` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `google_map_link` longtext DEFAULT NULL,
  `play_store_link` varchar(255) DEFAULT NULL,
  `app_store_link` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `trade_license` varchar(255) DEFAULT NULL,
  `footer_copyright_text` varchar(255) DEFAULT NULL,
  `payment_banner` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `tertiary_color` varchar(255) DEFAULT NULL,
  `title_color` varchar(255) DEFAULT NULL,
  `paragraph_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_og_title` varchar(255) DEFAULT NULL,
  `meta_og_image` varchar(255) DEFAULT NULL,
  `meta_og_description` varchar(255) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL,
  `header_script` longtext DEFAULT NULL,
  `footer_script` longtext DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `messenger` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `viber` varchar(255) DEFAULT NULL,
  `google_analytic_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `google_analytic_tracking_id` varchar(255) DEFAULT NULL,
  `google_tag_manager_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `google_tag_manager_id` varchar(255) DEFAULT NULL,
  `fb_pixel_status` tinyint(4) NOT NULL DEFAULT 0,
  `fb_pixel_app_id` varchar(255) DEFAULT NULL,
  `messenger_chat_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `fb_page_id` varchar(255) DEFAULT NULL,
  `tawk_chat_status` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_chat_link` varchar(255) DEFAULT NULL,
  `crisp_chat_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `crisp_website_id` varchar(255) DEFAULT NULL,
  `about_us` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_infos`
--

INSERT INTO `general_infos` (`id`, `logo`, `logo_dark`, `fav_icon`, `tab_title`, `company_name`, `short_description`, `contact`, `email`, `address`, `google_map_link`, `play_store_link`, `app_store_link`, `tin`, `trade_license`, `footer_copyright_text`, `payment_banner`, `primary_color`, `secondary_color`, `tertiary_color`, `title_color`, `paragraph_color`, `border_color`, `meta_title`, `meta_keywords`, `meta_description`, `meta_og_title`, `meta_og_image`, `meta_og_description`, `custom_css`, `custom_js`, `header_script`, `footer_script`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `messenger`, `whatsapp`, `telegram`, `tiktok`, `pinterest`, `viber`, `google_analytic_status`, `google_analytic_tracking_id`, `google_tag_manager_status`, `google_tag_manager_id`, `fb_pixel_status`, `fb_pixel_app_id`, `messenger_chat_status`, `fb_page_id`, `tawk_chat_status`, `tawk_chat_link`, `crisp_chat_status`, `crisp_website_id`, `about_us`, `created_at`, `updated_at`) VALUES
(1, 'company_logo/SQe5Y1707216770.svg', 'company_logo/BAsBE1709490926.svg', 'company_logo/j9WMx1707216775.png', 'TechShop - Ecommerce', 'epharma24.com', 'Pharmacy ecommerce refers to the online retailing of pharmaceutical products and healthcare items. It allows customers to conveniently purchase prescription medications, over-the-counter drugs, supplements and other health-related products.', '0125487996,+8801235979845', 'epharma24@gmail.com,info@epharma-24.com', 'Flat B4, House No 71, Road 27, Gulshan-1, Dhaka-1212, Bangladesh.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7887.465355142307!2d-0.13384360843222626!3d51.4876034467734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48760532743b90e1%3A0x790260718555a20c!2sU.S.%20Embassy%2C%20London!5e0!3m2!1sen!2sbd!4v1632035375945!5m2!1sen!2sbd', 'https://play.google.com/store', NULL, '987987654', 'ERWWR987320321', 'Copyright © 2024 Epharma-24. All Rights Reserved.', 'company_logo/O0Ffu1708255777.png', '#070a52', '#2d9596', '#f3f6f4', '#000000', '#00070c', '#e7e7e7', 'Epharma-24', 'ecommerce,shopping,online', 'Epharma', 'Epharma', 'company_logo/cvqJR1707217537.png', 'Fashionable Dress Man\'s Fashion', NULL, '<script>\r\n	var meDev = \"Code Sleep Eat\";\r\n	console.log(data);\r\n</script>', NULL, NULL, 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', NULL, NULL, 'https://www.messenger.com', 'https://web.whatsapp.com', NULL, NULL, NULL, NULL, 0, 'UA-842191520-669T', 0, 'GTM-546FMKZS', 0, NULL, 0, NULL, 0, 'https://embed.tawk.to/5a7c31ed7591465c7077c48/default', 0, NULL, NULL, NULL, '2024-03-03 18:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `captcha_site_key` varchar(255) DEFAULT NULL,
  `captcha_secret_key` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `captcha_site_key`, `captcha_secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, '6LcVO6cbAAAAOzIEwPlU66nL1rxD4VAS38tjp45', '6LcVO6cbAAAALVNrpZfNRfd0Gy_9a_fJRLiMV', 0, NULL, '2023-10-05 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_generics`
--

CREATE TABLE `medicine_generics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_generics`
--

INSERT INTO `medicine_generics` (`id`, `name`, `brand_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alendronate Tablet', 'Fosamax', 'For Cough related disease', 1, '2024-02-07 06:08:46', '2024-02-07 06:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_requests`
--

CREATE TABLE `medicine_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Just Uploaded; 1=>Checking; 2=>In Transit; 3=>Delivered; 4=>Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_requests`
--

INSERT INTO `medicine_requests` (`id`, `serial_no`, `user_id`, `name`, `phone`, `address`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '1Mediget00004', 64, 'Richard Ortiz', '+1 (295) 219-8345', 'Proident reprehende', '98O7E1708849775', 0, '2024-02-25 08:29:35', NULL),
(4, '4Mediget00004', 64, 'Adele Stone', '+1 (533) 835-7953', 'Harum veritatis nemo', 'L70eJ1709013375', 0, '2024-02-27 05:56:15', NULL),
(5, '5Mediget00004', 64, 'Georgia Barrera', '+1 (468) 517-3229', 'Iure lorem lorem rer', '8CxCo1709013456', 0, '2024-02-27 05:57:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_request_items`
--

CREATE TABLE `medicine_request_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicine_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meicine_name` varchar(255) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_request_items`
--

INSERT INTO `medicine_request_items` (`id`, `medicine_request_id`, `meicine_name`, `qty`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lionel Carrillo 50MG', 1, 'zNQLV1708849775', '2024-02-25 08:29:35', NULL),
(2, 1, 'Lionel Carrillo 100MG', 2, 'jkzl51708849775', '2024-02-25 08:29:35', NULL),
(3, 1, 'Lionel Carrillo 200MG', 3, 'SPeol1708849775', '2024-02-25 08:29:35', NULL),
(8, 4, 'Dominic Mann', 100, 'CgzpY1709013375', '2024-02-27 05:56:15', NULL),
(9, 4, 'Dominic Mann 20 mg', 150, 'XJDVO1709013375', '2024-02-27 05:56:15', NULL),
(10, 5, 'Slade Glenn 200 mg', 50, 'V0I1x1709013456', '2024-02-27 05:57:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_types`
--

CREATE TABLE `medicine_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_types`
--

INSERT INTO `medicine_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Capsul', 1, '2024-02-08 08:51:27', NULL),
(2, 'Tablet', 1, '2024-02-08 08:51:36', NULL),
(3, 'Syrup', 1, '2024-02-08 08:51:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_03_29_160138_create_categories_table', 2),
(19, '2023_04_05_180729_create_child_categories_table', 4),
(21, '2023_04_06_174647_create_product_images_table', 6),
(22, '2023_04_07_060940_create_units_table', 7),
(26, '2023_04_08_190018_create_flags_table', 9),
(27, '2023_04_11_193941_create_terms_and_policies_table', 10),
(29, '2023_04_12_213408_create_faqs_table', 12),
(30, '2023_04_12_205032_create_general_infos_table', 13),
(33, '2023_04_13_014055_create_contact_requests_table', 15),
(39, '2023_04_15_042355_create_shipping_infos_table', 17),
(40, '2023_04_15_042838_create_billing_addresses_table', 18),
(41, '2023_04_15_042952_create_order_progress_table', 19),
(43, '2023_04_14_220155_create_orders_table', 20),
(44, '2023_04_15_041941_create_order_details_table', 20),
(45, '2023_04_24_104941_create_carts_table', 21),
(48, '2023_04_25_023105_create_user_cards_table', 22),
(49, '2023_04_25_112208_create_user_addresses_table', 23),
(50, '2023_04_25_164433_create_wish_lists_table', 24),
(54, '2023_04_26_124004_create_promo_codes_table', 25),
(55, '2023_05_01_230425_create_order_payments_table', 12),
(56, '2023_05_04_235947_create_support_tickets_table', 12),
(57, '2023_05_06_121329_create_support_messages_table', 13),
(58, '2023_05_14_224344_create_product_reviews_table', 26),
(59, '2023_05_19_103848_create_testimonials_table', 27),
(63, '2023_05_30_130611_create_brands_table', 28),
(64, '2023_05_31_152752_create_models_table', 29),
(65, '2023_05_31_161724_create_product_models_table', 30),
(67, '2023_06_01_085646_create_colors_table', 31),
(68, '2023_06_01_102605_create_storage_types_table', 32),
(69, '2023_06_01_143737_create_sims_table', 33),
(70, '2023_06_01_152249_create_device_conditions_table', 34),
(71, '2023_04_06_173024_create_products_table', 35),
(72, '2023_06_04_091502_create_subscribed_users_table', 0),
(73, '2023_06_04_123251_create_product_variants_table', 36),
(74, '2023_04_01_232755_create_subcategories_table', 37),
(75, '2023_06_05_153507_create_product_warrenties_table', 38),
(76, '2023_06_11_115427_create_product_question_answers_table', 12),
(77, '2023_06_11_162544_create_email_configures_table', 39),
(78, '2023_06_12_142348_create_sms_gateways_table', 1),
(79, '2023_06_13_160256_create_promotional_banners_table', 1),
(80, '2023_06_18_163118_create_payment_gateways_table', 1),
(81, '2023_06_20_111106_create_notifications_table', 1),
(82, '2023_06_22_130744_create_sms_templates_table', 1),
(83, '2023_06_25_104544_create_sms_histories_table', 1),
(84, '2023_07_03_093759_create_blog_categories_table', 40),
(85, '2023_07_03_113558_create_blogs_table', 41),
(86, '2023_07_17_212431_create_permission_routes_table', 1),
(87, '2023_07_17_222638_create_user_roles_table', 1),
(88, '2023_07_18_010659_create_role_permissions_table', 1),
(89, '2023_07_18_014657_create_user_role_permissions_table', 1),
(90, '2023_10_05_111305_create_google_recaptchas_table', 42),
(92, '2023_10_05_114505_create_social_logins_table', 43),
(93, '2023_04_13_002226_create_banners_table', 44),
(94, '2023_10_18_135527_create_about_us_table', 45),
(95, '2023_10_22_122627_create_product_sizes_table', 46),
(96, '2023_11_08_144020_create_email_templates_table', 47),
(97, '2023_12_17_125055_create_config_setups_table', 48),
(98, '2024_01_16_155239_create_custom_pages_table', 49),
(100, '2024_02_07_105306_create_medicine_generics_table', 50),
(101, '2024_02_07_123714_create_diseases_table', 51),
(102, '2024_02_08_113326_create_medicine_types_table', 52),
(103, '2024_02_19_095015_create_mobile_apps_table', 53),
(104, '2024_02_19_162344_create_services_table', 54),
(105, '2024_02_20_095324_create_nursing_services_table', 55),
(107, '2024_02_20_104759_create_nursing_service_requests_table', 56),
(109, '2024_02_20_142642_create_prescriptions_table', 57),
(110, '2024_02_25_125636_create_medicine_requests_table', 58),
(111, '2024_02_25_130225_create_medicine_request_items_table', 59),
(114, '2024_02_27_120609_create_doctors_table', 60),
(117, '2024_02_27_164811_create_doctor_visit_requests_table', 61);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_apps`
--

CREATE TABLE `mobile_apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `play_store_link` varchar(255) DEFAULT NULL,
  `app_store_link` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_apps`
--

INSERT INTO `mobile_apps` (`id`, `image`, `title`, `description`, `play_store_link`, `app_store_link`, `btn_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'company_logo/YtD8U1708335254.avif', 'Download the Mediget mobile app', 'Order medicine from the mobile app. Enter your mobile number to receive the app download link.', 'https://play.google.com/store/apps', 'https://www.apple.com/app-store', 'Send Link', 1, '2024-02-19 04:14:35', '2024-02-19 09:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `server_key` varchar(255) NOT NULL,
  `fcm_url` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nursing_services`
--

CREATE TABLE `nursing_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nursing_services`
--

INSERT INTO `nursing_services` (`id`, `name`, `price`, `slug`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(3, 'Dressing & Injection', '550 BDT', 'OHY251708402702', 1, 1, '2024-02-20 04:18:22', '2024-02-20 04:40:43'),
(4, 'Injection', '250 BDT', 'fMlxt1708402948', 1, 1, '2024-02-20 04:22:28', '2024-02-20 04:40:40'),
(5, 'Dressing', '300 BDT', 'rZoJe1708402957', 1, 1, '2024-02-20 04:22:37', '2024-02-20 04:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `nursing_service_requests`
--

CREATE TABLE `nursing_service_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_date_time` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Pending; 1=>In Progress; 2=>Complete; 3=>Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nursing_service_requests`
--

INSERT INTO `nursing_service_requests` (`id`, `serial_no`, `user_id`, `service_id`, `service_date_time`, `patient_name`, `patient_phone`, `remarks`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '1Mediget00002', 64, 3, '24-02-25 10:18', 'Wilma York', '+1 (678) 803-9192', 'Sed qui eum perferen', 'qxIq81708834732', 0, '2024-02-25 04:18:52', '2024-02-25 07:13:25'),
(3, '3Mediget00004', 64, 4, '24-02-25 10:18', 'Tamekah Rocha', '+1 (114) 793-5236', 'Voluptas nobis non s', 'ZfKHu1708834739', 0, '2024-02-25 04:18:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `estimated_dd` date DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivery_method` varchar(255) DEFAULT NULL COMMENT '1=>Home Delivery; 2=>Store Pickup',
  `payment_method` tinyint(4) DEFAULT NULL COMMENT '1=>cash_on_delivery; 2=>bkash; 3=>nagad; 4=>Card',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Unpaid; 1=>Payment Success; 2=>Payment Failed',
  `trx_id` varchar(255) DEFAULT NULL COMMENT 'Created By SodaiNagar',
  `bank_tran_id` varchar(255) DEFAULT NULL COMMENT 'KEEP THIS bank_tran_id FOR REFUNDING ISSUE',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>pending/processing; 1=>confirmed; 2=>intransit; 3=>delivered; 4=>cancel',
  `sub_total` double NOT NULL DEFAULT 0,
  `coupon_code` varchar(255) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `delivery_fee` double NOT NULL DEFAULT 0,
  `vat` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `order_note` longtext DEFAULT NULL COMMENT 'Order Note By Customer',
  `order_remarks` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `complete_order` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Incomplete Order (Address Missing); 1=>Complete Order (Address Given)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `user_id`, `order_date`, `estimated_dd`, `delivery_date`, `delivery_method`, `payment_method`, `payment_status`, `trx_id`, `bank_tran_id`, `order_status`, `sub_total`, `coupon_code`, `discount`, `delivery_fee`, `vat`, `tax`, `total`, `order_note`, `order_remarks`, `slug`, `complete_order`, `created_at`, `updated_at`) VALUES
(1, '1708235460987', 64, '2024-02-18 11:51:00', '2024-02-25', NULL, '1', 1, 1, '1708235460uyXB4', NULL, 1, 1718, '0', 0, 100, 0, 0, 1818, 'Urgent Need', NULL, 'Z7sfV1708235460', 1, '2024-02-18 05:51:00', '2024-02-18 08:59:55'),
(2, '1708235549697', 64, '2024-02-18 11:52:29', '2024-02-25', NULL, '1', 1, 1, '1708235549z4cU4', NULL, 1, 1718, '0', 0, 100, 0, 0, 1818, 'Urgent Need', NULL, 'zDxNK1708235549', 1, '2024-02-18 05:52:29', '2024-02-18 08:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `size_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `region_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `sim_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `storage_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `warrenty_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `device_condition_id` int(11) DEFAULT NULL COMMENT 'Variant',
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `region_id`, `sim_id`, `storage_id`, `warrenty_id`, `device_condition_id`, `unit_id`, `qty`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 2, 1847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, 859, 1718, '2024-02-18 05:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_through` varchar(255) NOT NULL DEFAULT 'SSL COMMERZ',
  `tran_id` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `val_id` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `amount` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_type` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `store_amount` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_no` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `bank_tran_id` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `status` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `tran_date` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `currency` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_issuer` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_brand` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_sub_brand` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `card_issuer_country` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `store_id` varchar(255) DEFAULT NULL COMMENT 'Response From Payment Gateway',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `payment_through`, `tran_id`, `val_id`, `amount`, `card_type`, `store_amount`, `card_no`, `bank_tran_id`, `status`, `tran_date`, `currency`, `card_issuer`, `card_brand`, `card_sub_brand`, `card_issuer_country`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'COD', '1708235549z4cU4', NULL, '1818', NULL, '1818', NULL, NULL, 'VALID', '2024-02-18 11:52:29', 'BDT', NULL, NULL, NULL, NULL, NULL, '2024-02-18 05:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_progress`
--

CREATE TABLE `order_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>pending/processing; 1=>confirmed; 2=>intransit; 3=>delivered; 4=>cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_progress`
--

INSERT INTO `order_progress` (`id`, `order_id`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2024-02-18 05:51:00', NULL),
(2, 2, 0, '2024-02-18 05:52:29', NULL),
(3, 2, 1, '2024-02-18 08:59:54', NULL),
(4, 1, 1, '2024-02-18 08:59:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL COMMENT 'StoreID/ApiKey',
  `secret_key` varchar(255) DEFAULT NULL COMMENT 'StorePassword/SecretKey',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `live` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Test/Sandbox; 1=>Product/Live',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `provider_name`, `api_key`, `secret_key`, `username`, `password`, `live`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ssl_commerz', 'sodai644d7015e8eb1', 'sodai644d7015e8eb1@ssl', 'alifhossain174', '12345678', 1, 1, NULL, '2023-10-18 08:16:01'),
(2, 'stripe', '98798796546', 'ASDFGHJKLERTYUI', 'test_username', 'test_password', 1, 0, NULL, '2023-06-19 05:19:05'),
(3, 'bkash', '654654654', 'ZWvNGXXPHOYhR', 'bkash_test_user', '85747bkash', 1, 1, NULL, '2024-01-28 05:21:15'),
(4, 'amar_pay', '654654654', 'ZWvNGXXPHOYhR', 'amar_pay_test_user', '85747amar_pay', 1, 0, NULL, '2024-01-28 05:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_routes`
--

CREATE TABLE `permission_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_routes`
--

INSERT INTO `permission_routes` (`id`, `route`, `name`, `method`, `created_at`, `updated_at`) VALUES
(1, 'filemanager', 'unisharp.lfm.show', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(2, 'filemanager/errors', 'unisharp.lfm.getErrors', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(3, 'filemanager/upload', 'unisharp.lfm.upload', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(4, 'filemanager/jsonitems', 'unisharp.lfm.getItems', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(5, 'filemanager/move', 'unisharp.lfm.move', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(6, 'filemanager/domove', 'unisharp.lfm.domove', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(7, 'filemanager/newfolder', 'unisharp.lfm.getAddfolder', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(8, 'filemanager/folders', 'unisharp.lfm.getFolders', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(9, 'filemanager/crop', 'unisharp.lfm.getCrop', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(10, 'filemanager/cropimage', 'unisharp.lfm.getCropimage', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(11, 'filemanager/cropnewimage', 'unisharp.lfm.getCropnewimage', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(12, 'filemanager/rename', 'unisharp.lfm.getRename', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(13, 'filemanager/resize', 'unisharp.lfm.getResize', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(14, 'filemanager/doresize', 'unisharp.lfm.performResize', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(15, 'filemanager/download', 'unisharp.lfm.getDownload', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(16, 'filemanager/delete', 'unisharp.lfm.getDelete', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(17, 'filemanager/demo', 'unisharp.lfm.', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(18, '/', NULL, 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(19, 'clear', NULL, 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(20, 'login', NULL, 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(21, 'logout', 'logout', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(22, 'password/confirm', NULL, 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(23, 'home', 'home', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(24, 'change/password/page', 'changePasswordPage', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(25, 'change/password', 'changePassword', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(26, 'ckeditor', NULL, 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(27, 'ckeditor/upload', 'ckeditor.upload', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(28, 'sslcommerz/order/payment', 'order.payment', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(29, 'sslcommerz/success', 'payment.success', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(30, 'sslcommerz/failure', 'failure', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(31, 'sslcommerz/cancel', 'cancel', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(32, 'sslcommerz/ipn', 'payment.ipn', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(33, 'file-manager', NULL, 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(34, 'laravel-filemanager', 'unisharp.lfm.show', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(35, 'laravel-filemanager/errors', 'unisharp.lfm.getErrors', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(36, 'laravel-filemanager/upload', 'unisharp.lfm.upload', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(37, 'laravel-filemanager/jsonitems', 'unisharp.lfm.getItems', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(38, 'laravel-filemanager/move', 'unisharp.lfm.move', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(39, 'laravel-filemanager/domove', 'unisharp.lfm.domove', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(40, 'laravel-filemanager/newfolder', 'unisharp.lfm.getAddfolder', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(41, 'laravel-filemanager/folders', 'unisharp.lfm.getFolders', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(42, 'laravel-filemanager/crop', 'unisharp.lfm.getCrop', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(43, 'laravel-filemanager/cropimage', 'unisharp.lfm.getCropimage', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(44, 'laravel-filemanager/cropnewimage', 'unisharp.lfm.getCropnewimage', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(45, 'laravel-filemanager/rename', 'unisharp.lfm.getRename', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(46, 'laravel-filemanager/resize', 'unisharp.lfm.getResize', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(47, 'laravel-filemanager/doresize', 'unisharp.lfm.performResize', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(48, 'laravel-filemanager/download', 'unisharp.lfm.getDownload', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(49, 'laravel-filemanager/delete', 'unisharp.lfm.getDelete', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(50, 'laravel-filemanager/demo', 'unisharp.lfm.', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(51, 'view/all/flags', 'ViewAllFlags', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(52, 'delete/flag/{slug}', 'DeleteFlag', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(53, 'feature/flag/{id}', 'FeatureFlag', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(54, 'get/flag/info/{slug}', 'GetFlagInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(55, 'update/flag', 'UpdateFlagInfo', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(56, 'create/new/flag', 'SendSupportMessage', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(57, 'view/all/units', 'ViewAllUnits', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(58, 'delete/unit/{id}', 'DeleteUnit', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(59, 'get/unit/info/{id}', 'GetUnitInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(60, 'update/unit', 'UpdateUnitInfo', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(61, 'create/new/unit', 'CreateNewUnit', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(62, 'view/all/sims', 'ViewAllSims', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(63, 'delete/sim/{id}', 'DeleteSim', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(64, 'get/sim/info/{id}', 'GetSimInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(65, 'update/sim', 'UpdateSimInfo', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(66, 'create/new/sim', 'CreateNewSim', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(67, 'create/new/device/condition', 'AddNewDeviceCondition', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(68, 'view/all/device/conditions', 'ViewAllDeviceConditions', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(69, 'delete/device/condition/{id}', 'DeleteDeviceCondition', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(70, 'get/device/condition/info/{id}', 'GetDeviceConditionInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(71, 'update/device/condition', 'UpdateDeviceCondition', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(72, 'rearrange/device/condition', 'RearrangeDeviceCondition', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(73, 'save/rearranged/device/condition', 'SaveRearrangeDeviceCondition', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(74, 'create/new/warrenty', 'AddNewProductWarrenty', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(75, 'view/all/warrenties', 'ViewAllProductWarrenties', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(76, 'delete/warrenty/{id}', 'DeleteProductWarrenty', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(77, 'get/warrenty/info/{id}', 'GetProductWarrentyInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(78, 'update/warrenty', 'UpdateProductWarrenty', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(79, 'rearrange/warrenty', 'RearrangeWarrenty', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(80, 'save/rearranged/warrenty', 'SaveRearrangeWarrenties', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(81, 'add/new/brand', 'AddNewBrand', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(82, 'save/new/brand', 'SaveNewBrand', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(83, 'view/all/brands', 'ViewAllBrands', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(84, 'feature/brand/{id}', 'FeatureBrand', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(85, 'edit/brand/{slug}', 'EditBrand', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(86, 'update/brand', 'UpdateBrand', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(87, 'add/new/model', 'AddNewModel', 'GET', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(88, 'save/new/model', 'SaveNewModel', 'POST', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(89, 'view/all/models', 'ViewAllModels', 'GET', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(90, 'delete/model/{id}', 'DeleteModel', 'GET', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(91, 'edit/model/{slug}', 'EditModel', 'GET', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(92, 'update/model', 'UpdateModel', 'POST', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(93, 'brand/wise/model', 'BrandWiseModel', 'POST', '2023-07-17 18:05:22', '2023-12-18 10:58:32'),
(94, 'create/new/color', 'AddNewColor', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(95, 'view/all/colors', 'ViewAllColors', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(96, 'delete/color/{id}', 'DeleteColor', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(97, 'get/color/info/{id}', 'GetColorInfo', 'GET', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(98, 'update/color', 'UpdateColor', 'POST', '2023-07-17 18:05:22', '2024-02-18 11:41:57'),
(99, 'create/new/storage', 'AddNewStorage', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(100, 'view/all/storages', 'ViewAllStorages', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(101, 'delete/storage/{id}', 'DeleteStorage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(102, 'get/storage/info/{id}', 'GetStorageInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(103, 'update/storage', 'UpdateStorage', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(104, 'rearrange/storage/types', 'RearrangeStorage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(105, 'save/rearranged/storages', 'SaveRearrangeStorage', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:57'),
(106, 'view/email/credential', 'ViewEmailCredentials', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(107, 'save/new/email/configure', 'SaveEmailCredential', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(108, 'delete/email/config/{slug}', 'DeleteEmailCredential', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(109, 'get/email/config/info/{slug}', 'GetEmailCredentialInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(110, 'update/email/config', 'UpdateEmailCredentialInfo', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(111, 'setup/sms/gateways', 'ViewSmsGateways', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(112, 'update/sms/gateway/info', 'UpdateSmsGatewayInfo', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(113, 'change/gateway/status/{provider}', 'ChangeGatewayStatus', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(114, 'setup/payment/gateways', 'ViewPaymentGateways', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(115, 'update/payment/gateway/info', 'UpdatePaymentGatewayInfo', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(116, 'change/payment/gateway/status/{provider}', 'ChangePaymentGatewayStatus', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(117, 'add/new/category', 'AddNewCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(118, 'save/new/category', 'SaveNewCategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(119, 'view/all/category', 'ViewAllCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(120, 'delete/category/{slug}', 'DeleteCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(121, 'feature/category/{slug}', 'FeatureCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(122, 'edit/category/{slug}', 'EditCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(123, 'update/category', 'UpdateCategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(124, 'rearrange/category', 'RearrangeCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(125, 'save/rearranged/order', 'SaveRearrangeCategoryOrder', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(126, 'add/new/subcategory', 'AddNewSubcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(127, 'save/new/subcategory', 'SaveNewSubcategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(128, 'view/all/subcategory', 'ViewAllSubcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(129, 'delete/subcategory/{slug}', 'DeleteSubcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(130, 'feature/subcategory/{id}', 'FeatureSubcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(131, 'edit/subcategory/{slug}', 'EditSubcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(132, 'update/subcategory', 'UpdateSubcategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(133, 'add/new/childcategory', 'AddNewChildcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(134, 'category/wise/subcategory', 'SubcategoryCategoryWise', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(135, 'save/new/childcategory', 'SaveNewChildcategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(136, 'view/all/childcategory', 'ViewAllChildcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(137, 'delete/childcategory/{slug}', 'DeleteChildcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(138, 'edit/childcategory/{slug}', 'EditChildcategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(139, 'update/childcategory', 'UpdateChildcategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(140, 'add/new/product', 'AddNewProduct', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(141, 'subcategory/wise/childcategory', 'ChildcategorySubcategoryWise', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(142, 'save/new/product', 'SaveNewProduct', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(143, 'view/all/product', 'ViewAllProducts', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(144, 'delete/product/{slug}', 'DeleteProduct', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(145, 'edit/product/{slug}', 'EditProduct', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(146, 'update/product', 'UpdateProduct', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(147, 'add/another/variant', 'AddAnotherVariant', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(148, 'delete/product/variant/{id}', 'DeleteProductVariant', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(149, 'view/product/reviews', 'ViewAllProductReviews', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(150, 'approve/product/review/{slug}', 'ApproveProductReview', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(151, 'delete/product/review/{slug}', 'DeleteProductReview', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(152, 'get/product/review/info/{id}', 'GetProductReviewInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(153, 'submit/reply/product/review', 'SubmitReplyOfProductReview', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(154, 'view/product/question/answer', 'ViewAllQuestionAnswer', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(155, 'delete/question/answer/{id}', 'DeleteQuestionAnswer', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(156, 'get/question/answer/info/{id}', 'GetQuestionAnswerInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(157, 'submit/question/answer', 'SubmitAnswerOfQuestion', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(158, 'terms/and/condition', 'ViewTermsAndCondition', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(159, 'update/terms', 'UpdateTermsAndCondition', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(160, 'view/privacy/policy', 'ViewPrivacyPolicy', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(161, 'update/privacy/policy', 'UpdatePrivacyPolicy', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(162, 'view/shipping/policy', 'ViewShippingPolicy', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(163, 'update/shipping/policy', 'UpdateShippingPolicy', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(164, 'view/return/policy', 'ViewReturnPolicy', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(165, 'update/return/policy', 'UpdateReturnPolicy', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(166, 'view/all/customers', 'ViewAllCustomers', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(167, 'view/system/users', 'ViewAllSystemUsers', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(168, 'add/new/system/user', 'AddNewSystemUsers', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(169, 'create/system/user', 'CreateSystemUsers', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(170, 'edit/system/user/{id}', 'EditSystemUser', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(171, 'delete/system/user/{id}', 'DeleteSystemUser', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(172, 'update/system/user', 'UpdateSystemUser', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(173, 'change/user/status/{id}', 'ChangeUserStatus', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(174, 'delete/customer/{id}', 'DeleteCustomer', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(175, 'download/customer/excel', 'DownloadCustomerExcel', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(176, 'about/us/page', 'AboutUsPage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(177, 'update/about/us', 'UpdateAboutUsPage', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(178, 'general/info', 'GeneralInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(179, 'update/general/info', 'UpdateGeneralInfo', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(180, 'view/all/faqs', 'ViewAllFaqs', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(181, 'add/new/faq', 'AddNewFaq', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(182, 'save/faq', 'SaveFaq', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(183, 'delete/faq/{slug}', 'DeleteFaq', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(184, 'edit/faq/{slug}', 'EditFaq', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(185, 'update/faq', 'UpdateFaq', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(186, 'view/all/sliders', 'ViewAllSliders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(187, 'add/new/slider', 'AddNewSlider', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(188, 'save/new/slider', 'SaveNewSlider', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(189, 'edit/slider/{slug}', 'EditSlider', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(190, 'update/slider', 'UpdateSlider', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(191, 'delete/data/{slug}', 'DeleteSliderBanner', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(192, 'view/all/banners', 'ViewAllBanners', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(193, 'add/new/banner', 'AddNewBanner', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(194, 'save/new/banner', 'SaveNewBanner', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(195, 'edit/banner/{slug}', 'EditBanner', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(196, 'update/banner', 'UpdateBanner', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(197, 'view/promotional/banner', 'ViewPromotionalBanner', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(198, 'update/promotional/banner', 'UpdatePromotionalBanner', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:58'),
(199, 'view/all/contact/requests', 'ViewAllContactRequests', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(200, 'delete/contact/request/{id}', 'DeleteContactRequests', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(201, 'change/request/status/{id}', 'ChangeRequestStatus', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(202, 'view/orders', 'ViewAllOrders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(203, 'view/pending/orders', 'ViewPendigOrders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(204, 'view/approved/orders', 'ViewApprovedOrders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(205, 'view/delivered/orders', 'ViewDeliveredOrders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(206, 'view/cancelled/orders', 'ViewCancelledOrders', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(207, 'order/details/{slug}', 'OrderDetails', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(208, 'cancel/order/{slug}', 'CancelOrder', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(209, 'approve/order/{slug}', 'ApproveOrder', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(210, 'intransit/order/{slug}', 'IntransitOrder', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(211, 'deliver/order/{slug}', 'DeliverOrder', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(212, 'order/info/update', 'OrderInfoUpdate', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(213, 'order/edit/{slug}', 'OrderEdit', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(214, 'order/update', 'OrderUpdate', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(215, 'add/more/product', 'AddMoreProduct', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(216, 'get/product/variants', 'GetProductVariants', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(217, 'add/new/code', 'AddPromoCode', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(218, 'save/promo/code', 'SavePromoCode', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(219, 'view/all/promo/codes', 'ViewAllPromoCodes', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(220, 'edit/promo/code/{slug}', 'EditPromoCode', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(221, 'update/promo/code', 'UpdatePromoCode', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(222, 'view/customers/wishlist', 'CustomersWishlist', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(223, 'pending/support/tickets', 'PendingSupportTickets', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(224, 'solved/support/tickets', 'SolvedSupportTickets', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(225, 'on/hold/support/tickets', 'OnHoldSupportTickets', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(226, 'rejected/support/tickets', 'RejectedSupportTickets', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(227, 'delete/support/ticket/{slug}', 'DeleteSupportTicket', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(228, 'support/status/change/{slug}', 'ChangeStatusSupport', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(229, 'support/status/on/hold/{slug}', 'ChangeStatusSupportOnHold', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(230, 'support/status/in/progress/{slug}', 'ChangeStatusSupportInProgress', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(231, 'support/status/rejected/{slug}', 'ChangeStatusSupportRejected', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(232, 'view/support/messages/{slug}', 'ViewSupportMessage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(233, 'send/support/message', 'SendSupportMessage', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(234, 'view/testimonials', 'ViewTestimonials', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(235, 'add/testimonial', 'AddTestimonial', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(236, 'save/testimonial', 'SaveTestimonial', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(237, 'delete/testimonial/{slug}', 'DeleteTestimonial', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(238, 'edit/testimonial/{slug}', 'EditTestimonial', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(239, 'update/testimonial', 'UpdateTestimonial', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(240, 'view/all/subscribed/users', 'ViewAllSubscribedUsers', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(241, 'delete/subcribed/users/{id}', 'DeleteSubscribedUsers', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(242, 'download/subscribed/users/excel', 'DownloadSubscribedUsersExcel', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(243, 'download/database/backup', 'DownloadDBBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(244, 'download/product/files/backup', 'DownloadProductFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(245, 'download/user/files/backup', 'DownloadUserFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(246, 'download/banner/files/backup', 'DownloadBannerFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(247, 'download/category/files/backup', 'DownloadCategoryFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(248, 'download/subcategory/files/backup', 'DownloadSubcategoryFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(249, 'download/flag/files/backup', 'DownloadFlagFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(250, 'download/ticket/files/backup', 'DownloadTicketFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(251, 'download/blog/files/backup', 'DownloadBlogFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(252, 'download/other/files/backup', 'DownloadOtherFilesBackup', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(253, 'send/notification/page', 'SendNotificationPage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(254, 'view/all/notifications', 'ViewAllNotifications', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(255, 'delete/notification/{id}', 'DeleteNotification', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(256, 'delete/notification/with/range', 'DeleteNotificationRangeWise', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(257, 'send/push/notification', 'SendPushNotification', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(258, 'view/sms/templates', 'ViewSmsTemplates', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(259, 'create/sms/template', 'CreateSmsTemplate', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(260, 'save/sms/template', 'SaveSmsTemplate', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(261, 'get/sms/template/info/{id}', 'GetSmsTemplateInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(262, 'delete/sms/template/{id}', 'DeleteSmsTemplate', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(263, 'send/sms/page', 'SendSmsPage', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(264, 'get/template/description', 'GetTemplateDescription', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(265, 'update/sms/template', 'UpdateSmsTemplate', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(266, 'send/sms', 'SendSms', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(267, 'view/sms/history', 'ViewSmsHistory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(268, 'delete/sms/with/range', 'DeleteSmsHistoryRange', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(269, 'delete/sms/{id}', 'DeleteSmsHistory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(270, 'blog/categories', 'BlogCategories', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(271, 'save/blog/category', 'SaveBlogCategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(272, 'delete/blog/category/{slug}', 'DeleteBlogCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(273, 'feature/blog/category/{slug}', 'FeatureBlogCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(274, 'get/blog/category/info/{slug}', 'GetBlogCategoryInfo', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(275, 'update/blog/category', 'UpdateBlogCategoryInfo', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(276, 'rearrange/blog/category', 'RearrangeBlogCategory', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(277, 'save/rearranged/blog/categories', 'SaveRearrangeCategory', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(278, 'add/new/blog', 'AddNewBlog', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(279, 'save/new/blog', 'SaveNewBlog', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(280, 'view/all/blogs', 'ViewAllBlogs', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(281, 'delete/blog/{slug}', 'DeleteBlog', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(282, 'edit/blog/{slug}', 'EditBlog', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(283, 'update/blog', 'UpdateBlog', 'POST', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(284, 'view/permission/routes', 'ViewAllPermissionRoutes', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(285, 'regenerate/permission/routes', 'RegeneratePermissionRoutes', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(286, 'view/user/roles', 'ViewAllUserRoles', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(287, 'new/user/role', 'NewUserRole', 'GET', '2023-07-17 18:05:23', '2024-02-18 11:41:59'),
(288, 'make/user/superadmin/{id}', 'MakeSuperAdmin', 'GET', '2023-07-17 18:52:16', '2024-02-18 11:41:58'),
(289, 'revoke/user/superadmin/{id}', 'RevokeSuperAdmin', 'GET', '2023-07-17 18:52:16', '2024-02-18 11:41:58'),
(290, 'save/user/role', 'SaveUserRole', 'POST', '2023-07-17 19:01:45', '2024-02-18 11:41:59'),
(291, 'delete/user/role/{id}', 'DeleteUserRole', 'GET', '2023-07-17 19:23:13', '2024-02-18 11:41:59'),
(292, 'edit/user/role/{id}', 'EditUserRole', 'GET', '2023-07-17 20:17:08', '2024-02-18 11:41:59'),
(293, 'update/user/role', 'UpdateUserRole', 'POST', '2023-07-17 20:17:08', '2024-02-18 11:41:59'),
(294, 'view/user/role/permission', 'ViewUserRolePermission', 'GET', '2023-07-17 20:17:08', '2024-02-18 11:41:59'),
(295, 'assign/role/permission/{id}', 'AssignRolePermission', 'GET', '2023-07-17 20:17:08', '2024-02-18 11:41:59'),
(296, 'save/assigned/role/permission', 'SaveAssignedRolePermission', 'POST', '2023-07-18 03:05:15', '2024-02-18 11:41:59'),
(297, 'rearrange/brands', 'RearrangeBrands', 'GET', '2023-07-23 05:52:12', '2024-02-18 11:41:57'),
(298, 'save/rearranged/brands', 'saveRearrangeBrands', 'POST', '2023-07-23 05:55:04', '2024-02-18 11:41:57'),
(299, 'clear/cache', 'ClearCache', 'GET', '2023-08-03 08:23:00', '2024-02-18 11:41:57'),
(300, 'sales/report', 'SalesReport', 'GET', '2023-08-06 08:52:51', '2024-02-18 11:41:59'),
(301, 'generate/sales/report', 'GenerateSalesReport', 'POST', '2023-08-06 08:52:52', '2024-02-18 11:41:59'),
(302, '_debugbar/open', 'debugbar.openhandler', 'GET', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(303, '_debugbar/clockwork/{id}', 'debugbar.clockwork', 'GET', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(304, '_debugbar/assets/stylesheets', 'debugbar.assets.css', 'GET', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(305, '_debugbar/assets/javascript', 'debugbar.assets.js', 'GET', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(306, '_debugbar/cache/{key}/{tags?}', 'debugbar.cache.delete', 'DELETE', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(307, 'makesulg', NULL, 'POST', '2023-12-18 10:58:31', '2024-02-18 11:41:57'),
(308, 'config/setup', 'ConfigSetup', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(309, 'update/config/setup', 'UpdateConfigSetup', 'POST', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(310, 'delete/brand/{slug}', 'DeleteBrand', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(311, 'view/all/sizes', 'ViewAllSizes', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(312, 'delete/size/{id}', 'DeleteSize', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(313, 'get/size/info/{id}', 'GetSizeInfo', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(314, 'update/size', 'UpdateSizeInfo', 'POST', '2023-12-18 10:58:32', '2024-02-18 11:41:57'),
(315, 'create/new/size', 'CreateNewSize', 'POST', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(316, 'rearrange/size', 'RearrangeSize', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(317, 'save/rearranged/sizes', 'SaveRearrangedSizes', 'POST', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(318, 'view/email/templates', 'ViewEmailTemplates', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(319, 'change/mail/template/status/{templateId}', 'ChangeMailTemplateStatus', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(320, 'generate/demo/products', 'GenerateDemoProducts', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(321, 'save/generated/demo/products', 'SaveGeneratedDemoProducts', 'POST', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(322, 'remove/demo/products/page', 'RemoveDemoProductsPage', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(323, 'remove/demo/products', 'RemoveDemoProducts', 'GET', '2023-12-18 10:58:32', '2024-02-18 11:41:58'),
(324, 'website/theme/page', 'WebsiteThemePage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(325, 'update/website/theme/color', 'UpdateWebsiteThemeColor', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(326, 'social/media/page', 'SocialMediaPage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(327, 'update/social/media/link', 'UpdateSocialMediaLinks', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(328, 'seo/homepage', 'SeoHomePage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(329, 'update/seo/homepage', 'UpdateSeoHomePage', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(330, 'custom/css/js', 'CustomCssJs', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(331, 'update/custom/css/js', 'UpdateCustomCssJs', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(332, 'social/chat/script/page', 'SocialChatScriptPage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(333, 'update/google/recaptcha', 'UpdateGoogleRecaptcha', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(334, 'update/google/analytic', 'UpdateGoogleAnalytic', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(335, 'update/google/tag/manager', 'updateGoogleTagManager', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(336, 'update/social/login/info', 'UpdateSocialLogin', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(337, 'update/facebook/pixel', 'UpdateFacebookPixel', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(338, 'update/tawk/chat/info', 'UpdateTawkChat', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(339, 'update/crisp/chat/info', 'UpdateCrispChat', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(340, 'rearrange/slider', 'RearrangeSlider', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(341, 'update/slider/rearranged/order', 'UpdateRearrangedSliders', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(342, 'rearrange/banners', 'RearrangeBanners', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(343, 'update/banners/rearranged/order', 'UpdateRearrangedBanners', 'POST', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(344, 'remove/promotional/banner/header/icon', 'RemovePromotionalHeaderIcon', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:58'),
(345, 'remove/promotional/banner/product/image', 'RemovePromotionalProductImage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:59'),
(346, 'remove/promotional/banner/bg/image', 'RemovePromotionalBackgroundImage', 'GET', '2023-12-18 10:58:33', '2024-02-18 11:41:59'),
(347, 'view/delivery/charges', 'ViewAllDeliveryCharges', 'GET', '2023-12-18 10:58:34', '2024-02-18 11:41:59'),
(348, 'get/delivery/charge/{id}', 'GetDeliveryCharge', 'GET', '2023-12-18 10:58:34', '2024-02-18 11:41:59'),
(349, 'update/delivery/charge', 'UpdateDeliveryCharge', 'POST', '2023-12-18 10:58:34', '2024-02-18 11:41:59'),
(350, 'rearrange/flags', 'RearrangeFlags', 'GET', '2024-02-18 11:41:57', NULL),
(351, 'save/rearranged/flags', 'SaveRearrangedFlags', 'POST', '2024-02-18 11:41:57', NULL),
(352, 'view/medicine/generics', 'ViewMeidicineGenerics', 'GET', '2024-02-18 11:41:58', NULL),
(353, 'save/medicine/generic', 'SaveMeidicineGeneric', 'POST', '2024-02-18 11:41:58', NULL),
(354, 'delete/medicine/generic/{id}', 'DeleteMedicineGeneric', 'GET', '2024-02-18 11:41:58', NULL),
(355, 'get/medicine/generic/info/{id}', 'GetMedicineGenericInfo', 'GET', '2024-02-18 11:41:58', NULL),
(356, 'update/medicine/generic', 'UpdateMedicineGeneric', 'POST', '2024-02-18 11:41:58', NULL),
(357, 'view/all/diseases', 'ViewDiseases', 'GET', '2024-02-18 11:41:58', NULL),
(358, 'save/disease', 'SaveDisease', 'POST', '2024-02-18 11:41:58', NULL),
(359, 'delete/disease/{id}', 'DeleteDisease', 'GET', '2024-02-18 11:41:58', NULL),
(360, 'get/disease/info/{id}', 'GetDiseaseInfo', 'GET', '2024-02-18 11:41:58', NULL),
(361, 'update/disease', 'UpdateDisease', 'POST', '2024-02-18 11:41:58', NULL),
(362, 'rearrange/diseases', 'RearrangeDiseases', 'GET', '2024-02-18 11:41:58', NULL),
(363, 'save/rearranged/diseases', 'SaveRearrangedDiseases', 'POST', '2024-02-18 11:41:58', NULL),
(364, 'view/medicine/types', 'ViewMeidicineTypes', 'GET', '2024-02-18 11:41:58', NULL),
(365, 'save/medicine/type', 'SaveMeidicineType', 'POST', '2024-02-18 11:41:58', NULL),
(366, 'delete/medicine/type/{id}', 'DeleteMedicineType', 'GET', '2024-02-18 11:41:58', NULL),
(367, 'get/medicine/type/info/{id}', 'GetMedicineTypeInfo', 'GET', '2024-02-18 11:41:58', NULL),
(368, 'update/medicine/type', 'UpdateMedicineType', 'POST', '2024-02-18 11:41:58', NULL),
(369, 'view/payment/history', 'ViewPaymentHistory', 'GET', '2024-02-18 11:41:58', NULL),
(370, 'update/messenger/chat/info', 'UpdateMessengerChat', 'POST', '2024-02-18 11:41:58', NULL),
(371, 'delete/order/{slug}', 'DeleteOrder', 'GET', '2024-02-18 11:41:59', NULL),
(372, 'remove/promo/code/{slug}', 'RemovePromoCode', 'GET', '2024-02-18 11:41:59', NULL),
(373, 'view/upazila/thana', 'ViewUpazilaThana', 'GET', '2024-02-18 11:41:59', NULL),
(374, 'get/upazila/info/{id}', 'getUpazilaInfo', 'GET', '2024-02-18 11:41:59', NULL),
(375, 'update/upazila/info', 'UpdateUpazilaInfo', 'POST', '2024-02-18 11:41:59', NULL),
(376, 'save/new/upazila', 'SaveNewUpazila', 'POST', '2024-02-18 11:41:59', NULL),
(377, 'delete/upazila/{id}', 'DeleteUpazila', 'GET', '2024-02-18 11:41:59', NULL),
(378, 'create/new/page', 'CreateNewPage', 'GET', '2024-02-18 11:41:59', NULL),
(379, 'save/custom/page', 'SaveCustomPage', 'POST', '2024-02-18 11:41:59', NULL),
(380, 'view/all/pages', 'ViewCustomPages', 'GET', '2024-02-18 11:41:59', NULL),
(381, 'delete/custom/page/{slug}', 'DeleteCustomPage', 'GET', '2024-02-18 11:41:59', NULL),
(382, 'edit/custom/page/{slug}', 'EditCustomPage', 'GET', '2024-02-18 11:41:59', NULL),
(383, 'update/custom/page', 'UpdateCustomPage', 'POST', '2024-02-18 11:41:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 45, 'GenericCommerceV1', '5f622f837408e3b7751d5294eba7e2501f361b861f1de040cb87acd546225d9a', '[\"*\"]', NULL, '2023-10-22 05:26:44', '2023-10-22 05:26:44'),
(2, 'App\\Models\\User', 45, 'GenericCommerceV1', '3a5417e30d83a07253267e1b0fd98f703eecdf6ae7335af04a0942fa69a9dc02', '[\"*\"]', NULL, '2023-10-22 05:36:17', '2023-10-22 05:36:17'),
(3, 'App\\Models\\User', 45, 'GenericCommerceV1', 'a784342214375711e75696778877abba05335936f13e535f3d2cc884bcb1016d', '[\"*\"]', NULL, '2023-10-22 05:36:20', '2023-10-22 05:36:20'),
(4, 'App\\Models\\User', 45, 'GenericCommerceV1', '5fc644144334ee3969fc639e92d92dc40b541fa00a8ffd1551aeaaa34d4145a4', '[\"*\"]', NULL, '2023-10-22 05:36:21', '2023-10-22 05:36:21'),
(5, 'App\\Models\\User', 45, 'GenericCommerceV1', '705c5e3baea430b64b630b2e88166214217a77028e25cbe47525d85c711ebbfb', '[\"*\"]', NULL, '2023-10-22 05:47:07', '2023-10-22 05:47:07'),
(6, 'App\\Models\\User', 47, 'GenericCommerceV1', '2388a53dd887103a43a847b66b124c45023240b16ce638d5ed047ab2ff8da253', '[\"*\"]', NULL, '2023-10-22 06:11:03', '2023-10-22 06:11:03'),
(7, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e696aa4794f7c7d7d0eb368ff94a1fb40ead43ea4627d6eb0cc0169b0d8b2ace', '[\"*\"]', NULL, '2023-10-22 06:22:06', '2023-10-22 06:22:06'),
(8, 'App\\Models\\User', 45, 'GenericCommerceV1', '7f6f721a59c5cd621339967c1cf839ffeda8fd726433337e034b7b3cd58342b6', '[\"*\"]', NULL, '2023-10-22 06:22:25', '2023-10-22 06:22:25'),
(9, 'App\\Models\\User', 45, 'GenericCommerceV1', '8481956bea6bddc09dfff4f5ff49ef4657feed8ee5df0e2fa265710361328798', '[\"*\"]', NULL, '2023-10-22 06:22:40', '2023-10-22 06:22:40'),
(10, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e41b762ed9153d989b361911717c2f8f8edb8bfee6f293096ed444c7d1b55a5a', '[\"*\"]', NULL, '2023-10-23 04:20:05', '2023-10-23 04:20:05'),
(11, 'App\\Models\\User', 45, 'GenericCommerceV1', '6f0cd41da7378f3cfbaaefe73ad3cfcc8f9c49c9f3e208497e594f320eafe249', '[\"*\"]', NULL, '2023-10-23 04:35:56', '2023-10-23 04:35:56'),
(12, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd121c7e34e276d2e964b5fb7dd07870cbf5b16c142676e3474b6a2bd919086be', '[\"*\"]', NULL, '2023-10-23 04:47:34', '2023-10-23 04:47:34'),
(13, 'App\\Models\\User', 45, 'GenericCommerceV1', '95aa989c2e6d5b09e9642d2eef3a2a168f5f2733f8bdd7d4b3a67e9838804730', '[\"*\"]', NULL, '2023-10-23 06:38:35', '2023-10-23 06:38:35'),
(14, 'App\\Models\\User', 45, 'GenericCommerceV1', '68fe5ed63d3e66b6f75dcfbe8517c7e6390272dbf4308e0c40f06b9ee82fc33a', '[\"*\"]', NULL, '2023-10-23 06:38:54', '2023-10-23 06:38:54'),
(15, 'App\\Models\\User', 45, 'GenericCommerceV1', 'af231b972593f4ba67288e7b93fa01c77dcb6ee8365ac4e12e5e8b6a6211cccf', '[\"*\"]', NULL, '2023-10-23 06:40:09', '2023-10-23 06:40:09'),
(16, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd0071869a685c9f90ae548a091e240d3de8f3f26e72e4c926707b49c65ed73ce', '[\"*\"]', NULL, '2023-10-23 08:32:55', '2023-10-23 08:32:55'),
(17, 'App\\Models\\User', 45, 'GenericCommerceV1', 'c0cd27c6ea6ba817851700b51d518b811474bc860120c2d147b5e4057e10e873', '[\"*\"]', NULL, '2023-10-23 09:09:32', '2023-10-23 09:09:32'),
(18, 'App\\Models\\User', 45, 'GenericCommerceV1', 'c3047b96f3bc19739d050e2c6b4c13f09894edc0be070fa017c7045f0fc8fd0c', '[\"*\"]', NULL, '2023-10-23 09:25:31', '2023-10-23 09:25:31'),
(19, 'App\\Models\\User', 45, 'GenericCommerceV1', 'a479acbec466649f17da51ad331b8f11b36e7ebd5ef80f4a26bb85c6f73aa137', '[\"*\"]', NULL, '2023-10-23 09:28:37', '2023-10-23 09:28:37'),
(20, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e4a3bcd422038984c618ccd6bd472fa98fadd37ac5c8cfc12a7542917c6b435f', '[\"*\"]', NULL, '2023-10-23 09:35:44', '2023-10-23 09:35:44'),
(21, 'App\\Models\\User', 45, 'GenericCommerceV1', 'b06b9853e4893af16eb9920fa341f5983951a95ca82266d530abef97815bb56c', '[\"*\"]', NULL, '2023-10-23 09:36:07', '2023-10-23 09:36:07'),
(22, 'App\\Models\\User', 45, 'GenericCommerceV1', 'bf45877044565542a1d4750292e5398dbc59f6e9ec4c8ad86f05805a8530fe85', '[\"*\"]', NULL, '2023-10-23 09:37:51', '2023-10-23 09:37:51'),
(23, 'App\\Models\\User', 45, 'GenericCommerceV1', 'fd0c83844dc98300ce8f0d6792c7f39ec766422e68cddd82dc69529e533cc9d6', '[\"*\"]', NULL, '2023-10-23 09:38:15', '2023-10-23 09:38:15'),
(24, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e6c86a6fcc9dc59acee1cc6d7f43dc953bc30668a7f4b98ef645b390f8c0ea9d', '[\"*\"]', NULL, '2023-10-23 09:38:35', '2023-10-23 09:38:35'),
(25, 'App\\Models\\User', 45, 'GenericCommerceV1', '2f92ae6b1ddc367fafdb6efeda07e5ff3b1de0ac137a47f99d5d6ea6302b7cb3', '[\"*\"]', NULL, '2023-10-23 09:43:42', '2023-10-23 09:43:42'),
(26, 'App\\Models\\User', 45, 'GenericCommerceV1', '0b6e109e3d9492a5c6ae9bf4cefe4c056cda23cad4077e047656b16325bb6733', '[\"*\"]', NULL, '2023-10-23 09:50:43', '2023-10-23 09:50:43'),
(27, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd5344ce88f8d6d7a9b2bc020c69777061682c776e3d15d88845731851355e076', '[\"*\"]', NULL, '2023-10-23 09:54:37', '2023-10-23 09:54:37'),
(28, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e21b1eda89d3a3d39fb483a3ea91ead6bf719d5721270c08b84d2c4b34aa921f', '[\"*\"]', NULL, '2023-10-23 09:57:39', '2023-10-23 09:57:39'),
(29, 'App\\Models\\User', 45, 'GenericCommerceV1', '22f9ab57329d754d4df61dfe023be3db9d21050726ee2976cf915d01294f3f31', '[\"*\"]', NULL, '2023-10-23 10:07:09', '2023-10-23 10:07:09'),
(30, 'App\\Models\\User', 45, 'GenericCommerceV1', '2adb7f360a7371351322b3fde7a8cdbdb6c7c304bb0e89b6c9a20c65a669f78f', '[\"*\"]', NULL, '2023-10-23 10:11:00', '2023-10-23 10:11:00'),
(31, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd511440574564dba5ebc81e46be3d0205c04b6f94537be1dca9c065d1f9d193c', '[\"*\"]', NULL, '2023-10-23 10:12:33', '2023-10-23 10:12:33'),
(32, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e50464b8536e832e7f2d95d9547d29aef59b4ecfe668bdb25a25c702e90ea9ae', '[\"*\"]', NULL, '2023-10-23 10:38:37', '2023-10-23 10:38:37'),
(33, 'App\\Models\\User', 55, 'GenericCommerceV1', '272548637ba2bb77556a7053a4b5dcefc4db2f47defd0be343fe90501b8e7bdd', '[\"*\"]', NULL, '2023-10-25 02:00:12', '2023-10-25 02:00:12'),
(34, 'App\\Models\\User', 55, 'GenericCommerceV1', 'cd8a8171cb4f47570e2e7dc9368373a38710722e0447a7e486445e5f6cdb3d8d', '[\"*\"]', NULL, '2023-10-25 02:16:50', '2023-10-25 02:16:50'),
(35, 'App\\Models\\User', 55, 'GenericCommerceV1', '48e2bd04a01d8217faf69b0d0033b47cb55d622ddfa4f6d637149d8dfe7c6587', '[\"*\"]', NULL, '2023-10-25 02:49:03', '2023-10-25 02:49:03'),
(36, 'App\\Models\\User', 55, 'GenericCommerceV1', '17e3532105c6a7e5d3b672f03cbb7ea2a1562bff53856b905018d443cf30a116', '[\"*\"]', '2023-10-25 04:09:51', '2023-10-25 03:03:23', '2023-10-25 04:09:51'),
(37, 'App\\Models\\User', 55, 'GenericCommerceV1', '8299d08d3ed071059fedc28f65e5318b6db08b3f6af7049dbe75138cf758c10a', '[\"*\"]', '2023-10-25 03:08:04', '2023-10-25 03:07:35', '2023-10-25 03:08:04'),
(38, 'App\\Models\\User', 55, 'GenericCommerceV1', 'ed9be3661b9874688dc66bd1c530392bc519b28620524e79c046973e57fd2e43', '[\"*\"]', '2023-10-25 04:21:21', '2023-10-25 04:10:16', '2023-10-25 04:21:21'),
(39, 'App\\Models\\User', 45, 'GenericCommerceV1', '3dbfce91ab523774683f5caa491c78b52840697dd22e91f56d7dc3d043383c1a', '[\"*\"]', NULL, '2023-10-25 04:21:09', '2023-10-25 04:21:09'),
(40, 'App\\Models\\User', 45, 'GenericCommerceV1', '4ec7d4c30481526a12dee61265e892b635a5af051441c27c2f0617e8ed7b88d1', '[\"*\"]', NULL, '2023-10-25 04:22:43', '2023-10-25 04:22:43'),
(41, 'App\\Models\\User', 45, 'GenericCommerceV1', '36aefc3f061a57cd2fd76bf88b8aad6a5fd7976057825b73f27e6d0a51e8be9a', '[\"*\"]', NULL, '2023-10-25 04:23:53', '2023-10-25 04:23:53'),
(42, 'App\\Models\\User', 45, 'GenericCommerceV1', '0b0baf35d5c1ec371c39a0299ba5a1a2ab31c4185ea229434b918c476935e169', '[\"*\"]', NULL, '2023-10-25 04:26:31', '2023-10-25 04:26:31'),
(43, 'App\\Models\\User', 45, 'GenericCommerceV1', '5cd9c60a889fbe01bd596f5bf590013c6fefa7adfcd37c849bea8ae5e22d56ee', '[\"*\"]', NULL, '2023-10-25 04:28:40', '2023-10-25 04:28:40'),
(44, 'App\\Models\\User', 45, 'GenericCommerceV1', '23c803e23fc08ad4d12348e7d9e4b63125742156989941a7f630f48b56d29f15', '[\"*\"]', NULL, '2023-10-25 04:29:17', '2023-10-25 04:29:17'),
(45, 'App\\Models\\User', 45, 'GenericCommerceV1', '70ac0543f32f1c4ed63210d95b4d61af2555049208b3b81d801a1ab1f31f713a', '[\"*\"]', NULL, '2023-10-25 04:32:48', '2023-10-25 04:32:48'),
(46, 'App\\Models\\User', 55, 'GenericCommerceV1', '4b3e83bb93fce480f9b1accaae652172c49a386b5a18eec71be4a7e3394c855c', '[\"*\"]', NULL, '2023-10-25 04:33:08', '2023-10-25 04:33:08'),
(47, 'App\\Models\\User', 45, 'GenericCommerceV1', '2ad59a41a9aed3dc35e0c30bba71da177c573bc6b0d3b85ebd6c4a785d32d7bf', '[\"*\"]', NULL, '2023-10-25 04:33:50', '2023-10-25 04:33:50'),
(48, 'App\\Models\\User', 45, 'GenericCommerceV1', 'ae11615775290b3f3c2b882f9972b3b35ef38bff6ba236b26c236d7502e976cc', '[\"*\"]', NULL, '2023-10-25 04:35:34', '2023-10-25 04:35:34'),
(49, 'App\\Models\\User', 55, 'GenericCommerceV1', '286e10cb80304d9d537f566a24061331bc6cab878c70ead75991e6a42b092894', '[\"*\"]', NULL, '2023-10-25 04:37:26', '2023-10-25 04:37:26'),
(50, 'App\\Models\\User', 55, 'GenericCommerceV1', 'aef60e51422dd7ab9e53bddefb755a429dcc0f7739edcc265bcb3696f6c51202', '[\"*\"]', NULL, '2023-10-25 04:41:01', '2023-10-25 04:41:01'),
(51, 'App\\Models\\User', 55, 'GenericCommerceV1', 'b912bc531f4f01dbbf660f851eecbde7f6456a4ea52ae91b127385d6799b087c', '[\"*\"]', NULL, '2023-10-25 04:43:54', '2023-10-25 04:43:54'),
(52, 'App\\Models\\User', 45, 'GenericCommerceV1', '912f35c8df3d0b85ed0d6e33bfbbfe404be0074d3a67b3bfd2b0b944179e5bf1', '[\"*\"]', NULL, '2023-10-25 04:45:08', '2023-10-25 04:45:08'),
(53, 'App\\Models\\User', 45, 'GenericCommerceV1', '876e48f670f83d57e3506f65473a32184c4176ab359cad2fc73ec002157dcbcd', '[\"*\"]', NULL, '2023-10-25 04:46:30', '2023-10-25 04:46:30'),
(54, 'App\\Models\\User', 55, 'GenericCommerceV1', '781403189c2f726e4e3d8e4d1afeafd6da5dff007f6b943151582ed30a13a93b', '[\"*\"]', '2023-10-25 06:37:50', '2023-10-25 04:47:23', '2023-10-25 06:37:50'),
(55, 'App\\Models\\User', 45, 'GenericCommerceV1', 'cea64887a3a44729638d9886edb283e6dcd77d4041aa7035b6035361f37f02b6', '[\"*\"]', NULL, '2023-10-25 04:55:10', '2023-10-25 04:55:10'),
(56, 'App\\Models\\User', 45, 'GenericCommerceV1', 'ecaae5d264a2c52f3a50a6771cb561f004d78e2852029576793de91151227287', '[\"*\"]', NULL, '2023-10-25 04:56:51', '2023-10-25 04:56:51'),
(57, 'App\\Models\\User', 45, 'GenericCommerceV1', '0d456d3354130d3db91e79ac027a3cb583dfe1d0a126631217967b408ebae349', '[\"*\"]', NULL, '2023-10-25 04:57:42', '2023-10-25 04:57:42'),
(58, 'App\\Models\\User', 45, 'GenericCommerceV1', '3cbdb577356b2c6952e55afe10ff1420c09ce91bcc6b2958673e9aeb12dec3ea', '[\"*\"]', NULL, '2023-10-25 04:59:00', '2023-10-25 04:59:00'),
(59, 'App\\Models\\User', 45, 'GenericCommerceV1', '586ec35334bf08cf910dda235363d86952a914b3acd31296eccc4fb59a14f048', '[\"*\"]', NULL, '2023-10-25 04:59:29', '2023-10-25 04:59:29'),
(60, 'App\\Models\\User', 45, 'GenericCommerceV1', '25edd058dd2b8a037c5842138bdf27576cb9127532ac4892b79a070a136017cc', '[\"*\"]', NULL, '2023-10-25 05:00:16', '2023-10-25 05:00:16'),
(61, 'App\\Models\\User', 45, 'GenericCommerceV1', '31fd4aa7aacec2de74746149b1cd696d9cc2ba8e815f5ab0f5c38f0941fa8e94', '[\"*\"]', NULL, '2023-10-25 05:01:35', '2023-10-25 05:01:35'),
(62, 'App\\Models\\User', 45, 'GenericCommerceV1', '62312372290ea24ea52c94ed9a327e3423c53c322bc669d776452bf7eb0c1af5', '[\"*\"]', NULL, '2023-10-25 05:03:02', '2023-10-25 05:03:02'),
(63, 'App\\Models\\User', 45, 'GenericCommerceV1', '2ea1cfdeed3fa6ba6cb38c15806cef720425b4e287a7fad60ebc0e045963f464', '[\"*\"]', NULL, '2023-10-25 05:04:56', '2023-10-25 05:04:56'),
(64, 'App\\Models\\User', 45, 'GenericCommerceV1', 'cf99b72b7974aa68ef04644c0304d59da4a7b772cff720e3709ed551e5f66a4d', '[\"*\"]', NULL, '2023-10-25 05:05:18', '2023-10-25 05:05:18'),
(65, 'App\\Models\\User', 45, 'GenericCommerceV1', '14189e48adc86bfa970d5668a55e6041b67c3a1ee1daaac31835856bd34cd5f3', '[\"*\"]', NULL, '2023-10-25 05:15:56', '2023-10-25 05:15:56'),
(66, 'App\\Models\\User', 45, 'GenericCommerceV1', 'c2f85546cd587d996521485a33bbca2d26bcba690b4459afdee3afffb0ad59b8', '[\"*\"]', NULL, '2023-10-25 05:26:43', '2023-10-25 05:26:43'),
(67, 'App\\Models\\User', 45, 'GenericCommerceV1', '0101b5e70e7e1e84afa36b7c3c00afe117bc9d77a0df4cc59752425d3b4dd1e0', '[\"*\"]', NULL, '2023-10-25 05:27:12', '2023-10-25 05:27:12'),
(68, 'App\\Models\\User', 45, 'GenericCommerceV1', '63df89bc70d1a41cca3e6486bcb4263b38b0f9631d709711a08c07f33d02bd5c', '[\"*\"]', NULL, '2023-10-25 05:29:26', '2023-10-25 05:29:26'),
(69, 'App\\Models\\User', 45, 'GenericCommerceV1', '8724faf90466374c124798566ae9d44640225144fcce7aae9ad30357d0dec7b4', '[\"*\"]', NULL, '2023-10-25 05:31:51', '2023-10-25 05:31:51'),
(70, 'App\\Models\\User', 45, 'GenericCommerceV1', 'a81f43718b47234b651605e9479d893d6ace999355d92fad812c0b47cb07f95a', '[\"*\"]', '2023-10-26 04:38:30', '2023-10-25 05:46:28', '2023-10-26 04:38:30'),
(71, 'App\\Models\\User', 45, 'GenericCommerceV1', 'f1d8f44ab51199d9e1a697b00b7b9a3947b1a06f156632992c9f99b6712b4e79', '[\"*\"]', NULL, '2023-10-25 06:05:22', '2023-10-25 06:05:22'),
(72, 'App\\Models\\User', 55, 'GenericCommerceV1', '183562a6754689a6a1aa7c12f2c2c0e8e9db2098280d41762ddee663c96d869a', '[\"*\"]', '2023-10-26 04:41:12', '2023-10-25 06:39:48', '2023-10-26 04:41:12'),
(73, 'App\\Models\\User', 45, 'GenericCommerceV1', '7363d64b17d23840e1ce98865c29f86755278390b7e0ec585f56955355950bc7', '[\"*\"]', '2023-10-25 08:36:13', '2023-10-25 08:21:44', '2023-10-25 08:36:13'),
(74, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e614e6a3f893a857e93880034c7bf1d46f6872509be7238f921fdf933053a615', '[\"*\"]', '2023-10-25 09:12:06', '2023-10-25 08:42:24', '2023-10-25 09:12:06'),
(75, 'App\\Models\\User', 45, 'GenericCommerceV1', '28e537da1ceec6328c00a68f43a7ca574d52ef787983f964704e6e37fd605450', '[\"*\"]', '2023-10-25 09:12:47', '2023-10-25 09:12:27', '2023-10-25 09:12:47'),
(76, 'App\\Models\\User', 45, 'GenericCommerceV1', '67de33fac8224cef05e1e33551e54de9a3aa0b827a2cfc7310832ce3252f2e0a', '[\"*\"]', '2023-10-25 09:13:28', '2023-10-25 09:12:58', '2023-10-25 09:13:28'),
(77, 'App\\Models\\User', 45, 'GenericCommerceV1', '0b32faca29202be691f838ab939d42b090433cd25cec09ca6f83c891a2b510a6', '[\"*\"]', '2023-10-25 09:27:15', '2023-10-25 09:13:48', '2023-10-25 09:27:15'),
(78, 'App\\Models\\User', 45, 'GenericCommerceV1', '6c66b1b2209c4c125f20e2b2bf2fc7124507db661ddf5000caf7ce5a95d8eac1', '[\"*\"]', '2023-10-25 09:28:50', '2023-10-25 09:28:46', '2023-10-25 09:28:50'),
(79, 'App\\Models\\User', 45, 'GenericCommerceV1', '4d43e9c7eb7e02cd6557736ff11c2bd1d489547f77bfc619a87904d0138943a9', '[\"*\"]', '2023-10-25 09:30:17', '2023-10-25 09:30:07', '2023-10-25 09:30:17'),
(80, 'App\\Models\\User', 45, 'GenericCommerceV1', '358b3f8a24286ff800832e8e62cd0c575cc8273e06d2959b922a5cffed39f050', '[\"*\"]', '2023-10-25 09:31:21', '2023-10-25 09:31:14', '2023-10-25 09:31:21'),
(81, 'App\\Models\\User', 45, 'GenericCommerceV1', '28d6df44ca1961c115954523248a38f3316d95a57159bb3e3e4e8df86442024e', '[\"*\"]', '2023-10-25 09:33:03', '2023-10-25 09:32:53', '2023-10-25 09:33:03'),
(82, 'App\\Models\\User', 45, 'GenericCommerceV1', '46727d262692803bfcfd9fb749f1baae34e7d180ca902e01c8c74a29b1e80a5b', '[\"*\"]', '2023-10-25 09:37:53', '2023-10-25 09:36:08', '2023-10-25 09:37:53'),
(83, 'App\\Models\\User', 45, 'GenericCommerceV1', '8be31eff5f20c8ac497aa21e2a265dfd170473befa1c79d13b783f6fa681e5fb', '[\"*\"]', '2023-10-26 04:22:15', '2023-10-26 02:57:18', '2023-10-26 04:22:15'),
(84, 'App\\Models\\User', 45, 'GenericCommerceV1', '248b9102132eb03d89dc624665c9adb1610a3a94e5cf359f49ac947c90098525', '[\"*\"]', '2023-10-26 04:48:10', '2023-10-26 04:22:21', '2023-10-26 04:48:10'),
(85, 'App\\Models\\User', 45, 'GenericCommerceV1', 'a35a62b357e110c90350a0f3070b090c457e32b0a165a450bf91f1a534b6f3d0', '[\"*\"]', NULL, '2023-10-26 04:22:22', '2023-10-26 04:22:22'),
(86, 'App\\Models\\User', 45, 'GenericCommerceV1', '994a1174ebe4e0a19a9072dba394402ab1aac54de4fe05500a72e8358ab2a68c', '[\"*\"]', NULL, '2023-10-26 11:23:52', '2023-10-26 11:23:52'),
(87, 'App\\Models\\User', 45, 'GenericCommerceV1', 'e3bd135da1ee0c23ebf8530a82b52ca619ce32779225731a30dc58a3fb69ae2f', '[\"*\"]', NULL, '2023-10-26 11:23:56', '2023-10-26 11:23:56'),
(88, 'App\\Models\\User', 45, 'GenericCommerceV1', '9c2d54246cb99eae893c0ec92f99877c3cc1ab4389361143a9000a6547261e30', '[\"*\"]', NULL, '2023-10-26 11:24:10', '2023-10-26 11:24:10'),
(89, 'App\\Models\\User', 45, 'GenericCommerceV1', 'b36572bc34f9c3bf564000cff3a2724820ff0afdd3139f06f3b17eb52f94a96c', '[\"*\"]', NULL, '2023-10-26 11:24:11', '2023-10-26 11:24:11'),
(90, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd11d3080463d864ed0a4725646f20990f84702f1f13fa6d9915b2de6d8a27208', '[\"*\"]', NULL, '2023-10-26 11:24:11', '2023-10-26 11:24:11'),
(91, 'App\\Models\\User', 45, 'GenericCommerceV1', '88d6944accff99c0f1b0c32adc2ef8305c20bc43066dcb931aa3b8b78240bf41', '[\"*\"]', NULL, '2023-10-26 11:25:20', '2023-10-26 11:25:20'),
(92, 'App\\Models\\User', 45, 'GenericCommerceV1', 'b4ce8757cf1db2140c8791f32d1065b8aa805cb1eb2967048642010b128311a1', '[\"*\"]', NULL, '2023-10-26 11:25:21', '2023-10-26 11:25:21'),
(93, 'App\\Models\\User', 45, 'GenericCommerceV1', '253870807dd4f64d4c8bf48f889775d56b2f165cacf45eba262de7b297251936', '[\"*\"]', NULL, '2023-10-26 11:25:22', '2023-10-26 11:25:22'),
(94, 'App\\Models\\User', 45, 'GenericCommerceV1', '177e1000127c6ac1363a361d64d485ae4770c7c035b3550967bab9d052eb8dc7', '[\"*\"]', NULL, '2023-10-26 11:25:22', '2023-10-26 11:25:22'),
(95, 'App\\Models\\User', 45, 'GenericCommerceV1', '0d972a50bd53ab615235d3c67bf42001eef1e68e0c587aa38aef34d0b419c14f', '[\"*\"]', NULL, '2023-10-26 11:25:23', '2023-10-26 11:25:23'),
(96, 'App\\Models\\User', 45, 'GenericCommerceV1', '9d96a1c4d5481d1a18da50b7a4ee9ebbe043f6c0934ab6a783b71a5cf38f7487', '[\"*\"]', NULL, '2023-10-26 11:25:24', '2023-10-26 11:25:24'),
(97, 'App\\Models\\User', 45, 'GenericCommerceV1', '8a2c828f3047f160491c5bad10a8514f7c30b535783f46fa95d8352c8eeaef26', '[\"*\"]', NULL, '2023-10-26 11:25:25', '2023-10-26 11:25:25'),
(98, 'App\\Models\\User', 45, 'GenericCommerceV1', 'f4044fbbb8b50fed3e0ee3e85038f8b8d6d297afaaf2f989b6f25e08ba9a465a', '[\"*\"]', NULL, '2023-10-26 11:25:26', '2023-10-26 11:25:26'),
(99, 'App\\Models\\User', 45, 'GenericCommerceV1', 'd4e8409f25184e006812982e22fa630054180a065bb87ba6df59df2f5affb17d', '[\"*\"]', NULL, '2023-10-26 11:25:26', '2023-10-26 11:25:26'),
(100, 'App\\Models\\User', 45, 'GenericCommerceV1', '50ac7494f898d7080ef2cc99db780a0812c55c662ffa6918aeedeea31227d279', '[\"*\"]', NULL, '2023-10-26 11:25:27', '2023-10-26 11:25:27'),
(101, 'App\\Models\\User', 45, 'GenericCommerceV1', 'fb019988ce6546f2d871dccaf6a1699584c2bfed3890d935abb4f4228c394ea3', '[\"*\"]', NULL, '2023-10-26 11:38:54', '2023-10-26 11:38:54'),
(102, 'App\\Models\\User', 45, 'GenericCommerceV1', 'a84b18d6bd3cf1977d5e6c72edd5fbbab8143ab437b5ed7ef876190ff72e7806', '[\"*\"]', '2023-11-07 09:03:17', '2023-11-07 05:48:16', '2023-11-07 09:03:17'),
(103, 'App\\Models\\User', 45, 'GenericCommerceV1', '1367baa5b2ce8f17a0c485a66aca158e18bbe4b16edb804715643b270bb8ce7d', '[\"*\"]', NULL, '2023-11-12 10:51:38', '2023-11-12 10:51:38'),
(104, 'App\\Models\\User', 45, 'GenericCommerceV1', '495ae91f603d1d4408e72221e58598332b95c158e57805be5ade629e13dcffb4', '[\"*\"]', '2023-12-18 11:56:47', '2023-12-18 11:56:15', '2023-12-18 11:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Just Uploaded; 1=>Checking; 2=>In Transit; 3=>Delivered; 4=>Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `serial_no`, `user_id`, `patient_name`, `patient_phone`, `address`, `attachment`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '1Mediget00002', 64, 'Keith Mcpherson', '+1 (677) 605-8261', 'In dolor anim quidem', 'prescriptions/NWHYU1708838129.png', 'EVneW1708838129', 0, '2024-02-25 05:15:29', NULL),
(2, '2Mediget00003', 64, 'Md Fahim Hossain', '+8801969005035', 'Itaque rem reprehend', 'prescriptions/4szMO1708840634.jpg', 'oJSke1708838137', 1, '2024-02-25 05:15:37', '2024-02-25 08:58:37'),
(4, '4Mediget00004', 64, 'Amity Wong', '+1 (705) 552-5276', 'Dolores facilis dolo', 'prescriptions/UL57h1708846605.png', 'kxLXo1708846605', 0, '2024-02-25 07:36:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `generic_id` int(11) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `medicine_type_id` int(11) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `childcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `strength` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `multiple_images` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `specification` longtext DEFAULT NULL,
  `warrenty_policy` longtext DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `discount_price` double NOT NULL DEFAULT 0,
  `stock` double NOT NULL DEFAULT 0,
  `piece_per_leaf` double DEFAULT NULL,
  `leaf_per_box` double DEFAULT NULL,
  `is_otc` tinyint(4) NOT NULL DEFAULT 0,
  `is_antibiotic` tinyint(4) NOT NULL DEFAULT 0,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `warrenty_id` tinyint(4) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `flag_id` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `has_variant` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>No Variant; 1=>Product Has variant based on Colors, Region etc.',
  `points` double NOT NULL DEFAULT 0,
  `is_demo` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>original; 1=>Demo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `generic_id`, `disease_id`, `medicine_type_id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `model_id`, `name`, `strength`, `code`, `image`, `multiple_images`, `short_description`, `description`, `specification`, `warrenty_policy`, `price`, `discount_price`, `stock`, `piece_per_leaf`, `leaf_per_box`, `is_otc`, `is_antibiotic`, `unit_id`, `tags`, `video_url`, `warrenty_id`, `slug`, `flag_id`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `has_variant`, `points`, `is_demo`, `created_at`, `updated_at`) VALUES
(2304, 1, 10, 2, 47, NULL, NULL, 44, NULL, 'Elmo Evans', 'Error nemo tempor si', 'Corporis quisquam te', 'productImages/tBquE1709490606.png', '[\"1709490607D3VWy.jpg\",\"1709490607vrC3a.jpg\"]', 'Laboris ut officia q', NULL, NULL, NULL, 15, 295, 0, 0, 0, 0, 0, 10, 'Labore dolor suscipi', NULL, NULL, 'elmo-evans-1709490607a1xsv', 16, 'Quis odio recusandae', 'Dolore dolores repud', 'Officiis porro deser', 1, 0, 0, 0, '2024-03-03 18:30:07', '2024-03-03 18:30:07'),
(2305, 1, 9, 3, 47, NULL, NULL, 46, NULL, 'Exclusive systemic toolset-1', 'Accusamus.', '424', 'productImages/4.webp', '[\"9.webp\",\"15.webp\",\"1.webp\",\"21.webp\"]', 'Fugiat laudantium nihil et incidunt pariatur dolores. Possimus quibusdam inventore sit quis aliquid sed. Sint veniam excepturi atque eligendi et rerum. Iusto illum quasi eos laborum unde soluta.', 'Molestiae perspiciatis incidunt facilis quibusdam consectetur molestias. Alias et praesentium voluptatem labore. Voluptas voluptatum eius dolores minus. Repellendus et ducimus excepturi modi quia ad. Excepturi ipsa dolor ea at blanditiis omnis. Dignissimos est esse rerum nostrum molestiae perspiciatis. In qui natus velit ut nam accusantium repellendus.', 'At et nostrum quae cupiditate vero eum quo. Maxime unde ipsam perspiciatis nisi eaque excepturi et. Eaque sunt ut voluptatem.', 'Sunt doloribus ipsam eaque aut cum. Culpa aspernatur quia autem consequatur aliquam aut. Dolor itaque minima ad sunt omnis blanditiis.', 835, 825, 1000, 10, 15, 0, 0, 10, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549686ieaH5', 14, 'Exclusive systemic toolset-1', 'product,demo', NULL, 1, 0, 50, 1, '2024-03-04 10:54:46', NULL),
(2306, 1, 1, 1, 51, NULL, NULL, 47, NULL, 'Secured dynamic collaboration-2', 'Eos quia.', '602', 'productImages/4.webp', NULL, 'At dolores quo id perspiciatis delectus. Quo dignissimos ipsa error quibusdam sed sit saepe. Quia esse omnis quos et est sunt non officia. Debitis sint quo ab impedit et sint architecto consectetur.', 'Corrupti sequi nam iste qui odit adipisci. Dolorem sunt non dolores deserunt consequatur illo sapiente. Eos laudantium non eligendi sit velit. Sint sed quibusdam atque ducimus. Molestiae aut quo ut error est aspernatur quia. Minus quia autem ipsum optio iste animi enim. Omnis ex omnis ut est qui. Adipisci delectus sed et consequuntur beatae molestias alias vitae.', 'Soluta laboriosam quia nobis ipsam nulla esse. Illo voluptatibus est officia consequatur.', 'Fugiat totam commodi nisi occaecati et. A quasi enim id. Officia aliquid adipisci qui enim culpa et cumque sapiente.', 939, 929, 1000, 10, 15, 1, 1, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549686f9leR', 13, 'Secured dynamic collaboration-2', 'product,demo', NULL, 1, 1, 16, 1, '2024-03-04 10:54:46', NULL),
(2307, 1, 7, 1, 45, NULL, NULL, 45, NULL, 'Devolved dedicated encoding-3', 'Odio sunt.', '348', 'productImages/1.webp', '[\"8.webp\",\"5.webp\",\"10.webp\",\"10.webp\"]', 'Dignissimos praesentium sequi tempora provident. Quidem quidem doloremque aspernatur ipsa. Non nam quisquam iste cupiditate.', 'Harum rerum nihil voluptas aliquam esse hic. Omnis voluptatibus sint sint dolorem impedit repellat recusandae. Est ipsum est totam id aspernatur et maxime. Laborum itaque ab eos aut. Architecto eius minus reprehenderit. Sunt consequatur distinctio neque fugiat itaque consequatur quis. Exercitationem aut quisquam et aut.', 'Dolorem reprehenderit sapiente hic sint. In perferendis atque illum ad quo repellendus nulla doloribus. Ipsam iusto maxime hic recusandae doloribus qui.', 'Labore sit aut non aliquam et natus doloremque. Enim veritatis maiores sapiente beatae sunt aperiam ut. Reiciendis consectetur temporibus accusamus ut aperiam.', 749, 739, 1000, 10, 15, 0, 0, 9, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '17095496874ZvAA', 13, 'Devolved dedicated encoding-3', 'product,demo', NULL, 1, 0, 41, 1, '2024-03-04 10:54:47', NULL),
(2308, 1, 8, 1, 55, NULL, NULL, 48, NULL, 'Configurable bottom-line core-4', 'Id sequi.', '720', 'productImages/2.webp', NULL, 'Voluptas velit enim animi qui quia numquam a. Veritatis doloremque facere distinctio distinctio. Rerum blanditiis commodi eligendi qui ipsum et placeat.', 'Velit impedit et est fuga optio quo. Autem voluptatem eaque sed tempore. Illum veritatis amet dolore ut eius est quae. Sit suscipit quia ipsum velit officiis. Nihil amet vero in vero dolor delectus. Commodi voluptates explicabo iusto omnis officia aut magni. Consequatur minima sapiente velit. Aut ducimus accusantium aut aut commodi velit neque.', 'Et autem fugit non asperiores quam harum fuga et. Illo quidem sed non et. Officiis in aut reprehenderit aperiam nostrum ullam.', 'Et provident est enim voluptatibus animi ipsa. Eaque voluptas nesciunt occaecati. Voluptas nobis enim laboriosam sit in. Iste iste qui qui ex in accusamus vero.', 247, 237, 1000, 10, 15, 1, 1, 9, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '17095496879ShJv', 16, 'Configurable bottom-line core-4', 'product,demo', NULL, 1, 1, 42, 1, '2024-03-04 10:54:47', NULL),
(2309, 1, 3, 1, 44, NULL, NULL, 45, NULL, 'Self-enabling user-facing array-5', 'Error.', '985', 'productImages/14.webp', '[\"8.webp\",\"8.webp\",\"4.webp\",\"5.webp\"]', 'Blanditiis dolores ea aliquid vel. Sit quia dolores molestiae. Nostrum a iste voluptates sed nam porro. Assumenda fugit aut repellat autem ut.', 'Beatae ea quis accusamus ipsum officiis aperiam. Distinctio itaque aut delectus error officia voluptatum quos. Illum tempora est dignissimos rem corporis exercitationem est. Deleniti aut voluptatem eos. Harum sed minima odio eaque eos sit ipsam. Quis et beatae molestiae et. Et unde facere saepe suscipit deserunt repellat porro.', 'Et enim enim voluptates cupiditate. Praesentium ut et ab voluptates dolorum eaque doloribus. Ut hic ipsam molestiae quia omnis at quod.', 'Dolorum minus eius corporis. Temporibus est et dolorem iste enim. Quo sed et necessitatibus quo et.', 678, 668, 1000, 10, 15, 0, 0, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '17095496876wugp', 16, 'Self-enabling user-facing array-5', 'product,demo', NULL, 1, 0, 2, 1, '2024-03-04 10:54:47', NULL),
(2310, 1, 8, 1, 50, NULL, NULL, 45, NULL, 'Organized empowering internetsolution-6', 'Qui.', '283', 'productImages/8.webp', NULL, 'At vitae ut incidunt sed consequatur adipisci. Molestias assumenda fugiat omnis. Sint nulla aut non doloremque saepe laboriosam cumque quae.', 'Odit repellendus sunt et et alias atque laudantium. Non error est id vero facilis. Nulla aspernatur eligendi omnis autem dicta. Dolores qui impedit et aliquam nostrum ex fugit eligendi. Nam dicta dolor illo. Quia et quo in ex et. Facere nam velit qui officiis est.', 'Perferendis qui dignissimos animi maxime ut consequatur et. Et nostrum aut reiciendis assumenda autem. Qui temporibus autem perspiciatis vel.', 'Est eum explicabo libero numquam et nihil nulla. Nesciunt est dignissimos hic voluptatem. Est dolorum adipisci reprehenderit quo.', 852, 842, 1000, 10, 15, 1, 1, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687PLrHY', 13, 'Organized empowering internetsolution-6', 'product,demo', NULL, 1, 1, 44, 1, '2024-03-04 10:54:47', NULL),
(2311, 1, 10, 1, 39, NULL, NULL, 44, NULL, 'Versatile interactive leverage-7', 'Magni.', '620', 'productImages/16.webp', '[\"2.webp\",\"17.webp\",\"17.webp\",\"9.webp\"]', 'Eos enim dolores quo molestiae. Incidunt eos enim aperiam praesentium. Qui et eaque et.', 'Repellendus iste molestiae pariatur doloremque quod eaque et. Doloribus magnam tenetur molestiae. Iure quos illum amet quia. Vel maxime similique est odit et alias. Dolorum doloribus autem vero aut neque delectus quia. Ea enim velit saepe voluptatibus. Cum laborum sunt sunt voluptatem quo perferendis. Atque ut dolorem consequatur hic cumque qui qui aut.', 'Nulla mollitia quis omnis corporis asperiores error soluta. Enim ut voluptas libero facilis ducimus cum. Pariatur aliquid velit sint quos.', 'Iure sint laudantium illum quo quam quo. Quaerat facere accusantium ex. Vero voluptatibus vel repudiandae est sunt. Hic rerum sapiente hic commodi.', 910, 900, 1000, 10, 15, 0, 0, 9, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687R5VYA', 16, 'Versatile interactive leverage-7', 'product,demo', NULL, 1, 0, 50, 1, '2024-03-04 10:54:47', NULL),
(2312, 1, 3, 3, 48, NULL, NULL, 47, NULL, 'Total object-oriented ability-8', 'Quas.', '532', 'productImages/2.webp', NULL, 'Consectetur necessitatibus et laborum qui perspiciatis exercitationem et. Quia consequatur rerum exercitationem ipsam aut rerum voluptate. Sunt aut vero laudantium quas quia id.', 'Sit expedita dolorem voluptas temporibus et optio. Enim fugiat nisi architecto repudiandae. Laboriosam eum doloremque ducimus et labore possimus et. Dolores suscipit ipsa voluptas maiores amet quia perferendis nostrum. Aut autem veritatis excepturi omnis.', 'Animi est ad nihil iure maiores sunt harum. Illum amet eveniet minima rem. Rerum ullam et architecto rerum mollitia.', 'Consequuntur incidunt quasi eum nulla. Ut earum esse debitis. Similique rerum omnis inventore ipsam. Aut voluptatem quia illo accusamus cum dolorum et.', 695, 685, 1000, 10, 15, 1, 1, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687RQsaB', 16, 'Total object-oriented ability-8', 'product,demo', NULL, 1, 1, 13, 1, '2024-03-04 10:54:47', NULL),
(2313, 1, 7, 3, 39, NULL, NULL, 44, NULL, 'Mandatory explicit data-warehouse-9', 'Eum.', '655', 'productImages/10.webp', '[\"17.webp\",\"20.webp\",\"8.webp\",\"5.webp\"]', 'Nesciunt earum porro magni voluptas. Unde ipsa accusamus veniam at nostrum non. Non a officia omnis mollitia ut distinctio. Consequatur qui reprehenderit sint est eius.', 'Consequatur eos nostrum quia ut pariatur harum dicta. Ut in id officiis quasi. Dolor aut autem numquam dolor ut magni. Nostrum repellat enim eaque quis rerum minima. Quia et sequi et. Libero eligendi perferendis error exercitationem ea. Tenetur enim itaque consequatur. Est consequatur est dolores repudiandae placeat illum sint.', 'Dolorem sunt ut reiciendis consequatur. Beatae laborum dolore dolorem autem. Ex neque accusamus est odio. Cupiditate perspiciatis sunt rem. Tempore fugiat pariatur quasi qui eaque in laboriosam.', 'Inventore consequuntur esse qui sint ut illum nam. Iste quia laborum non occaecati ut voluptas delectus similique.', 981, 971, 1000, 10, 15, 0, 0, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687LF6KD', 14, 'Mandatory explicit data-warehouse-9', 'product,demo', NULL, 1, 0, 22, 1, '2024-03-04 10:54:47', NULL),
(2314, 1, 10, 1, 51, NULL, NULL, 48, NULL, 'Polarised multi-state middleware-10', 'Velit.', '898', 'productImages/18.webp', NULL, 'Consectetur corrupti vel porro enim maiores eum provident. Laborum eum laboriosam sed aliquid dolore sunt sequi. Saepe unde consequatur aut blanditiis. Eos rerum assumenda et aut nam.', 'Omnis et eligendi odit velit et similique modi. Laudantium minus asperiores tenetur veritatis. Sunt debitis necessitatibus corrupti rerum amet velit aliquam. Quia autem perferendis laborum autem veritatis necessitatibus molestias. Qui temporibus cum odio aliquam in. Cumque aut aut culpa. Mollitia dolor tempora impedit minus nesciunt illo iusto.', 'Ut iure voluptatibus qui saepe. Consequatur magnam soluta quasi et. Saepe aut ut est facere. Ut laudantium sunt nihil perspiciatis dolor consequuntur.', 'Omnis excepturi eaque voluptate praesentium adipisci omnis. Sunt sit est pariatur quaerat quo explicabo. Enim eaque ut dignissimos delectus qui. Quasi quia omnis dolorem incidunt nisi dolorem.', 378, 368, 1000, 10, 15, 1, 1, 11, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687wag85', 14, 'Polarised multi-state middleware-10', 'product,demo', NULL, 1, 1, 34, 1, '2024-03-04 10:54:47', NULL),
(2315, 1, 3, 2, 54, NULL, NULL, 44, NULL, 'Customer-focused foreground core-11', 'Optio.', '913', 'productImages/5.webp', '[\"4.webp\",\"3.webp\",\"14.webp\",\"5.webp\"]', 'Voluptas nisi cum fugit facilis dolor itaque. Atque itaque qui aut temporibus et ipsum. Quisquam perspiciatis mollitia at aut delectus aut impedit.', 'Ut optio neque veritatis rerum et voluptas numquam. Aliquam aperiam minima consequatur. Consequatur similique voluptatum blanditiis maxime cupiditate eligendi. Aut nemo aut qui. Et et voluptas odio. Quis omnis corporis harum voluptate omnis. Nisi est vel illo expedita vel qui.', 'Laborum et dicta impedit qui. Suscipit cupiditate nostrum magni officia. Quia magnam tempora quia laboriosam aliquid unde.', 'Laborum dolores commodi ex temporibus quos itaque. Et dolorem illum omnis animi. Aut omnis sit ea id quae sint natus aliquid. Deleniti eveniet nihil quod a neque.', 258, 248, 1000, 10, 15, 0, 0, 10, 'product,demo', 'https://www.youtube.com/watch?v=2tirsYI5D2M', NULL, '1709549687l5MFU', 14, 'Customer-focused foreground core-11', 'product,demo', NULL, 1, 0, 41, 1, '2024-03-04 10:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(41, 22, '1698573346nLUO8.png', '2023-10-29 07:55:46', NULL),
(42, 26, '1698637443sHaYu.png', '2023-10-30 01:44:03', NULL),
(43, 28, '1698637555DPkAw.png', '2023-10-30 01:45:55', NULL),
(46, 2, '1698637800SYuIk.png', '2023-10-30 01:50:00', NULL),
(48, 28, '1698729029FBRwU.jpg', '2023-10-31 03:10:29', NULL),
(50, 26, '1698729087k7kRd.png', '2023-10-31 03:11:27', NULL),
(52, 26, '1698729087WyRpN.jpg', '2023-10-31 03:11:27', NULL),
(57, 22, '16987292712Waym.jpg', '2023-10-31 03:14:31', NULL),
(60, 2, '1698729390KecXE.png', '2023-10-31 03:16:30', NULL),
(62, 28, '1698731956i58uE.png', '2023-10-31 03:59:16', NULL),
(63, 26, '1698731985UieAW.png', '2023-10-31 03:59:45', NULL),
(64, 2, '1698732149epL0Z.png', '2023-10-31 04:02:29', NULL),
(67, 28, '1698809964wyoEb.png', '2023-11-01 01:39:24', NULL),
(372, 139, '15.png', '2023-11-13 02:01:13', NULL),
(373, 139, '13.png', '2023-11-13 02:01:13', NULL),
(374, 139, '10.png', '2023-11-13 02:01:13', NULL),
(375, 139, '9.png', '2023-11-13 02:01:13', NULL),
(384, 145, '1.png', '2023-11-13 02:01:13', NULL),
(385, 145, '13.png', '2023-11-13 02:01:13', NULL),
(386, 145, '19.png', '2023-11-13 02:01:13', NULL),
(387, 145, '9.png', '2023-11-13 02:01:13', NULL),
(388, 147, '16.png', '2023-11-13 02:01:13', NULL),
(389, 147, '15.png', '2023-11-13 02:01:13', NULL),
(390, 147, '18.png', '2023-11-13 02:01:13', NULL),
(391, 147, '17.png', '2023-11-13 02:01:13', NULL),
(392, 149, '12.png', '2023-11-13 02:01:13', NULL),
(393, 149, '11.png', '2023-11-13 02:01:13', NULL),
(394, 149, '12.png', '2023-11-13 02:01:13', NULL),
(395, 149, '10.png', '2023-11-13 02:01:13', NULL),
(396, 151, '15.png', '2023-11-13 02:01:13', NULL),
(397, 151, '18.png', '2023-11-13 02:01:13', NULL),
(398, 151, '3.png', '2023-11-13 02:01:13', NULL),
(399, 151, '17.png', '2023-11-13 02:01:13', NULL),
(400, 152, '16998603086xBEx.jpg', '2023-11-13 05:25:08', NULL),
(401, 152, '16998603081Yvaj.jpg', '2023-11-13 05:25:08', NULL),
(402, 152, '1699860308fpA3z.jpg', '2023-11-13 05:25:08', NULL),
(403, 152, '16998603084tobx.jpg', '2023-11-13 05:25:08', NULL),
(404, 152, '1699860308koDAW.jpg', '2023-11-13 05:25:08', NULL),
(405, 152, '169986030896dwT.jpg', '2023-11-13 05:25:08', NULL),
(419, 157, '10.png', '2023-11-20 06:49:46', NULL),
(420, 157, '10.png', '2023-11-20 06:49:46', NULL),
(421, 157, '20.png', '2023-11-20 06:49:46', NULL),
(422, 157, '17.png', '2023-11-20 06:49:46', NULL),
(423, 159, '5.png', '2023-11-20 06:49:46', NULL),
(424, 159, '4.png', '2023-11-20 06:49:46', NULL),
(425, 159, '13.png', '2023-11-20 06:49:46', NULL),
(426, 159, '19.png', '2023-11-20 06:49:46', NULL),
(427, 161, '18.png', '2023-11-20 06:49:46', NULL),
(428, 161, '10.png', '2023-11-20 06:49:46', NULL),
(429, 161, '5.png', '2023-11-20 06:49:46', NULL),
(430, 161, '14.png', '2023-11-20 06:49:46', NULL),
(431, 163, '9.png', '2023-11-20 06:49:46', NULL),
(432, 163, '17.png', '2023-11-20 06:49:46', NULL),
(433, 163, '14.png', '2023-11-20 06:49:46', NULL),
(434, 163, '9.png', '2023-11-20 06:49:46', NULL),
(435, 165, '9.png', '2023-11-20 06:49:46', NULL),
(436, 165, '13.png', '2023-11-20 06:49:46', NULL),
(437, 165, '9.png', '2023-11-20 06:49:46', NULL),
(438, 165, '9.png', '2023-11-20 06:49:46', NULL),
(439, 167, '18.png', '2023-11-20 06:49:46', NULL),
(440, 167, '14.png', '2023-11-20 06:49:46', NULL),
(441, 167, '11.png', '2023-11-20 06:49:46', NULL),
(442, 167, '2.png', '2023-11-20 06:49:46', NULL),
(443, 169, '13.png', '2023-11-20 06:49:46', NULL),
(444, 169, '8.png', '2023-11-20 06:49:46', NULL),
(445, 169, '2.png', '2023-11-20 06:49:46', NULL),
(446, 169, '3.png', '2023-11-20 06:49:46', NULL),
(447, 171, '3.png', '2023-11-20 06:49:46', NULL),
(448, 171, '9.png', '2023-11-20 06:49:46', NULL),
(449, 171, '13.png', '2023-11-20 06:49:46', NULL),
(450, 171, '19.png', '2023-11-20 06:49:46', NULL),
(451, 173, '8.png', '2023-11-20 06:49:46', NULL),
(452, 173, '16.png', '2023-11-20 06:49:46', NULL),
(453, 173, '6.png', '2023-11-20 06:49:46', NULL),
(454, 173, '2.png', '2023-11-20 06:49:46', NULL),
(455, 175, '13.png', '2023-11-20 06:49:46', NULL),
(456, 175, '20.png', '2023-11-20 06:49:46', NULL),
(457, 175, '12.png', '2023-11-20 06:49:46', NULL),
(458, 175, '5.png', '2023-11-20 06:49:46', NULL),
(459, 177, '15.png', '2023-11-20 06:49:46', NULL),
(460, 177, '5.png', '2023-11-20 06:49:46', NULL),
(461, 177, '1.png', '2023-11-20 06:49:46', NULL),
(462, 177, '7.png', '2023-11-20 06:49:46', NULL),
(463, 179, '13.png', '2023-11-20 06:49:46', NULL),
(464, 179, '18.png', '2023-11-20 06:49:46', NULL),
(465, 179, '13.png', '2023-11-20 06:49:46', NULL),
(466, 179, '9.png', '2023-11-20 06:49:46', NULL),
(467, 181, '9.png', '2023-11-20 06:49:46', NULL),
(468, 181, '12.png', '2023-11-20 06:49:46', NULL),
(469, 181, '13.png', '2023-11-20 06:49:46', NULL),
(470, 181, '9.png', '2023-11-20 06:49:46', NULL),
(471, 183, '10.png', '2023-11-20 06:49:46', NULL),
(472, 183, '18.png', '2023-11-20 06:49:46', NULL),
(473, 183, '15.png', '2023-11-20 06:49:46', NULL),
(474, 183, '18.png', '2023-11-20 06:49:46', NULL),
(475, 185, '14.png', '2023-11-20 06:49:46', NULL),
(476, 185, '14.png', '2023-11-20 06:49:46', NULL),
(477, 185, '3.png', '2023-11-20 06:49:46', NULL),
(478, 185, '15.png', '2023-11-20 06:49:46', NULL),
(479, 187, '12.png', '2023-11-20 06:49:46', NULL),
(480, 187, '13.png', '2023-11-20 06:49:46', NULL),
(481, 187, '8.png', '2023-11-20 06:49:46', NULL),
(482, 187, '19.png', '2023-11-20 06:49:46', NULL),
(483, 189, '9.png', '2023-11-20 06:49:46', NULL),
(484, 189, '20.png', '2023-11-20 06:49:46', NULL),
(485, 189, '19.png', '2023-11-20 06:49:46', NULL),
(486, 189, '5.png', '2023-11-20 06:49:46', NULL),
(487, 191, '9.png', '2023-11-20 06:49:46', NULL),
(488, 191, '16.png', '2023-11-20 06:49:46', NULL),
(489, 191, '9.png', '2023-11-20 06:49:46', NULL),
(490, 191, '14.png', '2023-11-20 06:49:46', NULL),
(491, 193, '4.png', '2023-11-20 06:49:46', NULL),
(492, 193, '16.png', '2023-11-20 06:49:46', NULL),
(493, 193, '11.png', '2023-11-20 06:49:46', NULL),
(494, 193, '20.png', '2023-11-20 06:49:46', NULL),
(495, 195, '4.png', '2023-11-20 06:49:46', NULL),
(496, 195, '11.png', '2023-11-20 06:49:46', NULL),
(497, 195, '9.png', '2023-11-20 06:49:46', NULL),
(498, 195, '20.png', '2023-11-20 06:49:46', NULL),
(503, 199, '7.png', '2023-11-20 06:49:46', NULL),
(504, 199, '9.png', '2023-11-20 06:49:46', NULL),
(505, 199, '10.png', '2023-11-20 06:49:46', NULL),
(506, 199, '20.png', '2023-11-20 06:49:46', NULL),
(507, 201, '9.png', '2023-11-20 06:49:46', NULL),
(508, 201, '16.png', '2023-11-20 06:49:46', NULL),
(509, 201, '9.png', '2023-11-20 06:49:46', NULL),
(510, 201, '16.png', '2023-11-20 06:49:46', NULL),
(511, 203, '18.png', '2023-11-20 06:49:46', NULL),
(512, 203, '6.png', '2023-11-20 06:49:46', NULL),
(513, 203, '2.png', '2023-11-20 06:49:46', NULL),
(514, 203, '13.png', '2023-11-20 06:49:46', NULL),
(515, 205, '19.png', '2023-11-20 06:49:46', NULL),
(516, 205, '9.png', '2023-11-20 06:49:46', NULL),
(517, 205, '19.png', '2023-11-20 06:49:46', NULL),
(518, 205, '16.png', '2023-11-20 06:49:46', NULL),
(522, 197, '17009763473szi2.png', '2023-11-26 03:25:47', NULL),
(523, 197, '1700976347J1iiM.png', '2023-11-26 03:25:47', NULL),
(524, 197, '17009763470mgGD.png', '2023-11-26 03:25:47', NULL),
(4656, 2304, '1709490607D3VWy.jpg', '2024-03-03 18:30:07', NULL),
(4657, 2304, '1709490607vrC3a.jpg', '2024-03-03 18:30:07', NULL),
(4658, 2305, '9.webp', '2024-03-04 10:54:46', NULL),
(4659, 2305, '15.webp', '2024-03-04 10:54:46', NULL),
(4660, 2305, '1.webp', '2024-03-04 10:54:46', NULL),
(4661, 2305, '21.webp', '2024-03-04 10:54:46', NULL),
(4662, 2307, '8.webp', '2024-03-04 10:54:47', NULL),
(4663, 2307, '5.webp', '2024-03-04 10:54:47', NULL),
(4664, 2307, '10.webp', '2024-03-04 10:54:47', NULL),
(4665, 2307, '10.webp', '2024-03-04 10:54:47', NULL),
(4666, 2309, '8.webp', '2024-03-04 10:54:47', NULL),
(4667, 2309, '8.webp', '2024-03-04 10:54:47', NULL),
(4668, 2309, '4.webp', '2024-03-04 10:54:47', NULL),
(4669, 2309, '5.webp', '2024-03-04 10:54:47', NULL),
(4670, 2311, '2.webp', '2024-03-04 10:54:47', NULL),
(4671, 2311, '17.webp', '2024-03-04 10:54:47', NULL),
(4672, 2311, '17.webp', '2024-03-04 10:54:47', NULL),
(4673, 2311, '9.webp', '2024-03-04 10:54:47', NULL),
(4674, 2313, '17.webp', '2024-03-04 10:54:47', NULL),
(4675, 2313, '20.webp', '2024-03-04 10:54:47', NULL),
(4676, 2313, '8.webp', '2024-03-04 10:54:47', NULL),
(4677, 2313, '5.webp', '2024-03-04 10:54:47', NULL),
(4678, 2315, '4.webp', '2024-03-04 10:54:47', NULL),
(4679, 2315, '3.webp', '2024-03-04 10:54:47', NULL),
(4680, 2315, '14.webp', '2024-03-04 10:54:47', NULL),
(4681, 2315, '5.webp', '2024-03-04 10:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_models`
--

CREATE TABLE `product_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_question_answers`
--

CREATE TABLE `product_question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_question_answers`
--

INSERT INTO `product_question_answers` (`id`, `product_id`, `full_name`, `email`, `question`, `answer`, `slug`, `created_at`, `updated_at`) VALUES
(1, 149, 'Md Fahim Hossain', 'alifhossain174@gmail.com', 'Can i purchase this product using EMI facilities of One Bank ?', 'Yes sir you can purchase this product using One bank\'s EMI facilities', '2jSOq1704192958', '2024-01-02 10:55:58', '2024-01-02 10:56:48'),
(2, 136, 'asdasd', 'asdasd', 'asdasd', 'asdasdsd', 'IXgZa1704361924', '2024-01-04 09:52:04', '2024-01-04 09:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `review` longtext DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Pending; 1=>Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `review`, `reply`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6063, 2306, 1, 1, 'Mandatory executive interface', 'thanks', '1709549686MCRMO', 1, '2024-03-04 10:54:46', NULL),
(6064, 2306, 1, 4, 'Organized intermediate initiative', 'thanks', '1709549687E5eNE', 1, '2024-03-04 10:54:47', NULL),
(6065, 2306, 1, 2, 'Virtual zerotolerance conglomeration', 'thanks', '1709549687TxLba', 1, '2024-03-04 10:54:47', NULL),
(6066, 2306, 1, 4, 'Intuitive incremental approach', 'thanks', '1709549687XCjUd', 1, '2024-03-04 10:54:47', NULL),
(6067, 2308, 1, 1, 'Persistent optimal approach', 'thanks', '1709549687oiZ2e', 1, '2024-03-04 10:54:47', NULL),
(6068, 2308, 1, 2, 'Advanced radical frame', 'thanks', '1709549687yDG8r', 1, '2024-03-04 10:54:47', NULL),
(6069, 2308, 1, 5, 'Operative user-facing support', 'thanks', '1709549687XRwPD', 1, '2024-03-04 10:54:47', NULL),
(6070, 2308, 1, 3, 'Open-source non-volatile data-warehouse', 'thanks', '1709549687sRLp9', 1, '2024-03-04 10:54:47', NULL),
(6071, 2310, 1, 3, 'Sharable content-based definition', 'thanks', '1709549687F935O', 1, '2024-03-04 10:54:47', NULL),
(6072, 2310, 1, 5, 'Facetoface analyzing extranet', 'thanks', '1709549687v2f88', 1, '2024-03-04 10:54:47', NULL),
(6073, 2310, 1, 2, 'Profound uniform customerloyalty', 'thanks', '1709549687H8dvA', 1, '2024-03-04 10:54:47', NULL),
(6074, 2310, 1, 2, 'Implemented motivating productivity', 'thanks', '1709549687lF2iG', 1, '2024-03-04 10:54:47', NULL),
(6075, 2312, 1, 2, 'Cross-platform logistical application', 'thanks', '1709549687yJQ2R', 1, '2024-03-04 10:54:47', NULL),
(6076, 2312, 1, 4, 'Synergistic scalable installation', 'thanks', '1709549687KCVUJ', 1, '2024-03-04 10:54:47', NULL),
(6077, 2312, 1, 3, 'Profit-focused zerotolerance paradigm', 'thanks', '1709549687Ug1zu', 1, '2024-03-04 10:54:47', NULL),
(6078, 2312, 1, 5, 'Self-enabling well-modulated help-desk', 'thanks', '1709549687h9ve5', 1, '2024-03-04 10:54:47', NULL),
(6079, 2314, 1, 4, 'Down-sized zerodefect database', 'thanks', '1709549687rHDag', 1, '2024-03-04 10:54:47', NULL),
(6080, 2314, 1, 1, 'Quality-focused value-added neural-net', 'thanks', '1709549687apaQj', 1, '2024-03-04 10:54:47', NULL),
(6081, 2314, 1, 5, 'Expanded coherent forecast', 'thanks', '1709549687N0qRv', 1, '2024-03-04 10:54:47', NULL),
(6082, 2314, 1, 5, 'Focused eco-centric synergy', 'thanks', '1709549687W1GF1', 1, '2024-03-04 10:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `name`, `status`, `slug`, `serial`, `created_at`, `updated_at`) VALUES
(8, 'S', 1, '1700808383yzAFn', 1, '2023-11-24 04:46:23', NULL),
(9, 'M', 1, '17008083935TRqN', 1, '2023-11-24 04:46:33', NULL),
(10, 'L', 1, '17008084016WJJL', 1, '2023-11-24 04:46:41', NULL),
(11, 'XL', 1, '1700808417y0LKw', 1, '2023-11-24 04:46:57', NULL),
(12, 'XXL', 1, '1700808438wbIAv', 1, '2023-11-24 04:47:18', NULL),
(13, 'S-XXL', 1, '1700808466v1NCd', 1, '2023-11-24 04:47:46', NULL),
(14, 'S-L', 1, '17008084924bMYf', 1, '2023-11-24 04:48:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sim_id` bigint(20) UNSIGNED DEFAULT NULL,
  `storage_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `discounted_price` double NOT NULL DEFAULT 0,
  `warrenty_id` tinyint(4) DEFAULT NULL,
  `device_condition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `image`, `color_id`, `unit_id`, `size_id`, `region_id`, `sim_id`, `storage_type_id`, `stock`, `price`, `discounted_price`, `warrenty_id`, `device_condition_id`, `created_at`, `updated_at`) VALUES
(29, 23, '1698732114Cs1XY.jpg', 2, NULL, 5, NULL, NULL, NULL, 99, 1289, 1000, 1, NULL, '2023-10-18 09:13:28', '2023-10-31 04:01:54'),
(30, 24, '1698732056BVBQ4.png', 10, NULL, 6, NULL, NULL, NULL, 100, 100, 90, 1, NULL, '2023-10-22 08:02:52', '2023-10-31 04:00:56'),
(31, 24, '1698732056kGL0Z.png', 6, NULL, 5, NULL, NULL, NULL, 200, 120, 100, 1, NULL, '2023-10-22 08:02:52', '2023-10-31 04:00:56'),
(32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-10-25 04:59:51', '2023-10-31 03:10:48'),
(37, 27, '1698220649T4kIh.png', 1, NULL, 4, NULL, NULL, NULL, 100, 800, 700, 7, NULL, '2023-10-25 05:57:29', '2023-10-30 03:49:35'),
(38, 27, '1698220649mYEaQ.png', 1, NULL, 3, NULL, NULL, NULL, 140, 750, 600, 8, NULL, '2023-10-25 05:57:29', '2023-10-30 03:49:35'),
(39, 27, '1698220649T2jK0.png', 1, NULL, 5, NULL, NULL, NULL, 200, 750, 690, 8, NULL, '2023-10-25 05:57:29', '2023-10-30 03:49:35'),
(40, 27, '1698220649CwkcU.png', 2, NULL, 5, NULL, NULL, NULL, 500, 900, 800, 8, NULL, '2023-10-25 05:57:29', '2023-10-30 03:49:35'),
(41, 27, '1698220649S40Zf.png', 2, NULL, 3, NULL, NULL, NULL, 90, 900, 780, 7, NULL, '2023-10-25 05:57:29', '2023-10-30 03:49:35'),
(42, 23, '1698732114ixupl.jpg', 10, NULL, 5, NULL, NULL, NULL, 120, 1300, 1200, 8, NULL, '2023-10-31 03:13:18', '2023-10-31 04:01:54'),
(250, 144, '9.png', 3, NULL, 5, 129, NULL, NULL, 1000, 254, 244, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(251, 144, '4.png', 3, NULL, 5, 129, NULL, NULL, 1000, 254, 244, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(252, 144, '4.png', 3, NULL, 5, 129, NULL, NULL, 1000, 254, 244, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(253, 144, '10.png', 3, NULL, 5, 129, NULL, NULL, 1000, 254, 244, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(254, 146, '9.png', 6, NULL, 5, 17, NULL, NULL, 1000, 920, 910, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(255, 146, '14.png', 6, NULL, 5, 17, NULL, NULL, 1000, 920, 910, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(256, 146, '9.png', 6, NULL, 5, 17, NULL, NULL, 1000, 920, 910, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(257, 146, '11.png', 6, NULL, 5, 17, NULL, NULL, 1000, 920, 910, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(258, 148, '14.png', 8, NULL, 5, 127, NULL, NULL, 1000, 902, 892, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(259, 148, '11.png', 8, NULL, 5, 127, NULL, NULL, 1000, 902, 892, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(260, 148, '20.png', 8, NULL, 5, 127, NULL, NULL, 1000, 902, 892, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(261, 148, '3.png', 8, NULL, 5, 127, NULL, NULL, 1000, 902, 892, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(262, 150, '18.png', 14, NULL, 3, 120, NULL, NULL, 1000, 940, 930, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(263, 150, '9.png', 14, NULL, 3, 120, NULL, NULL, 1000, 940, 930, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(264, 150, '2.png', 14, NULL, 3, 120, NULL, NULL, 1000, 940, 930, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(265, 150, '11.png', 14, NULL, 3, 120, NULL, NULL, 1000, 940, 930, NULL, NULL, '2023-11-13 02:01:13', '2023-11-13 02:01:13'),
(280, 158, '9.png', 16, NULL, 7, 186, NULL, NULL, 1000, 807, 797, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(281, 158, '20.png', 16, NULL, 7, 186, NULL, NULL, 1000, 807, 797, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(282, 158, '1.png', 16, NULL, 7, 186, NULL, NULL, 1000, 807, 797, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(283, 158, '12.png', 16, NULL, 7, 186, NULL, NULL, 1000, 807, 797, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(284, 160, '12.png', 4, NULL, 3, 94, NULL, NULL, 1000, 986, 976, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(285, 160, '5.png', 4, NULL, 3, 94, NULL, NULL, 1000, 986, 976, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(286, 160, '15.png', 4, NULL, 3, 94, NULL, NULL, 1000, 986, 976, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(287, 160, '18.png', 4, NULL, 3, 94, NULL, NULL, 1000, 986, 976, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(288, 162, '18.png', 15, NULL, 6, 30, NULL, NULL, 1000, 136, 126, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(289, 162, '18.png', 15, NULL, 6, 30, NULL, NULL, 1000, 136, 126, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(290, 162, '20.png', 15, NULL, 6, 30, NULL, NULL, 1000, 136, 126, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(291, 162, '17.png', 15, NULL, 6, 30, NULL, NULL, 1000, 136, 126, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(292, 164, '14.png', 9, NULL, 6, 55, NULL, NULL, 1000, 575, 565, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(293, 164, '1.png', 9, NULL, 6, 55, NULL, NULL, 1000, 575, 565, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(294, 164, '19.png', 9, NULL, 6, 55, NULL, NULL, 1000, 575, 565, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(295, 164, '6.png', 9, NULL, 6, 55, NULL, NULL, 1000, 575, 565, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(296, 166, '3.png', 14, NULL, 5, 54, NULL, NULL, 1000, 574, 564, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(297, 166, '3.png', 14, NULL, 5, 54, NULL, NULL, 1000, 574, 564, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(298, 166, '18.png', 14, NULL, 5, 54, NULL, NULL, 1000, 574, 564, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(299, 166, '15.png', 14, NULL, 5, 54, NULL, NULL, 1000, 574, 564, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(300, 168, '6.png', 15, NULL, 7, 97, NULL, NULL, 1000, 712, 702, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(301, 168, '1.png', 15, NULL, 7, 97, NULL, NULL, 1000, 712, 702, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(302, 168, '12.png', 15, NULL, 7, 97, NULL, NULL, 1000, 712, 702, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(303, 168, '18.png', 15, NULL, 7, 97, NULL, NULL, 1000, 712, 702, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(304, 170, '11.png', 11, NULL, 4, 140, NULL, NULL, 1000, 520, 510, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(305, 170, '18.png', 11, NULL, 4, 140, NULL, NULL, 1000, 520, 510, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(306, 170, '10.png', 11, NULL, 4, 140, NULL, NULL, 1000, 520, 510, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(307, 170, '19.png', 11, NULL, 4, 140, NULL, NULL, 1000, 520, 510, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(308, 172, '14.png', 14, NULL, 4, 218, NULL, NULL, 1000, 335, 325, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(309, 172, '9.png', 14, NULL, 4, 218, NULL, NULL, 1000, 335, 325, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(310, 172, '18.png', 14, NULL, 4, 218, NULL, NULL, 1000, 335, 325, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(311, 172, '12.png', 14, NULL, 4, 218, NULL, NULL, 1000, 335, 325, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(312, 174, '7.png', 3, NULL, 4, 89, NULL, NULL, 1000, 955, 945, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(313, 174, '12.png', 3, NULL, 4, 89, NULL, NULL, 1000, 955, 945, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(314, 174, '3.png', 3, NULL, 4, 89, NULL, NULL, 1000, 955, 945, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(315, 174, '3.png', 3, NULL, 4, 89, NULL, NULL, 1000, 955, 945, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(316, 176, '6.png', 7, NULL, 5, 170, NULL, NULL, 1000, 251, 241, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(317, 176, '18.png', 7, NULL, 5, 170, NULL, NULL, 1000, 251, 241, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(318, 176, '9.png', 7, NULL, 5, 170, NULL, NULL, 1000, 251, 241, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(319, 176, '15.png', 7, NULL, 5, 170, NULL, NULL, 1000, 251, 241, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(320, 178, '5.png', 14, NULL, 6, 184, NULL, NULL, 1000, 393, 383, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(321, 178, '2.png', 14, NULL, 6, 184, NULL, NULL, 1000, 393, 383, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(322, 178, '13.png', 14, NULL, 6, 184, NULL, NULL, 1000, 393, 383, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(323, 178, '3.png', 14, NULL, 6, 184, NULL, NULL, 1000, 393, 383, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(324, 180, '13.png', 15, NULL, 5, 135, NULL, NULL, 1000, 331, 321, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(325, 180, '14.png', 15, NULL, 5, 135, NULL, NULL, 1000, 331, 321, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(326, 180, '7.png', 15, NULL, 5, 135, NULL, NULL, 1000, 331, 321, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(327, 180, '12.png', 15, NULL, 5, 135, NULL, NULL, 1000, 331, 321, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(328, 182, '4.png', 6, NULL, 7, 124, NULL, NULL, 1000, 607, 597, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(329, 182, '2.png', 6, NULL, 7, 124, NULL, NULL, 1000, 607, 597, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(330, 182, '6.png', 6, NULL, 7, 124, NULL, NULL, 1000, 607, 597, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(331, 182, '19.png', 6, NULL, 7, 124, NULL, NULL, 1000, 607, 597, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(332, 184, '17.png', 10, NULL, 3, 166, NULL, NULL, 1000, 112, 102, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(333, 184, '9.png', 10, NULL, 3, 166, NULL, NULL, 1000, 112, 102, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(334, 184, '4.png', 10, NULL, 3, 166, NULL, NULL, 1000, 112, 102, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(335, 184, '7.png', 10, NULL, 3, 166, NULL, NULL, 1000, 112, 102, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(336, 186, '19.png', 15, NULL, 5, 236, NULL, NULL, 1000, 260, 250, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(337, 186, '20.png', 15, NULL, 5, 236, NULL, NULL, 1000, 260, 250, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(338, 186, '9.png', 15, NULL, 5, 236, NULL, NULL, 1000, 260, 250, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(339, 186, '15.png', 15, NULL, 5, 236, NULL, NULL, 1000, 260, 250, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(340, 188, '12.png', 15, NULL, 4, 177, NULL, NULL, 1000, 566, 556, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(341, 188, '19.png', 15, NULL, 4, 177, NULL, NULL, 1000, 566, 556, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(342, 188, '14.png', 15, NULL, 4, 177, NULL, NULL, 1000, 566, 556, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(343, 188, '1.png', 15, NULL, 4, 177, NULL, NULL, 1000, 566, 556, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(344, 190, '1.png', 14, NULL, 7, 89, NULL, NULL, 1000, 173, 163, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(345, 190, '17.png', 14, NULL, 7, 89, NULL, NULL, 1000, 173, 163, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(346, 190, '16.png', 14, NULL, 7, 89, NULL, NULL, 1000, 173, 163, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(347, 190, '19.png', 14, NULL, 7, 89, NULL, NULL, 1000, 173, 163, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(348, 192, '16.png', 5, NULL, 3, 159, NULL, NULL, 1000, 814, 804, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(349, 192, '14.png', 5, NULL, 3, 159, NULL, NULL, 1000, 814, 804, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(350, 192, '19.png', 5, NULL, 3, 159, NULL, NULL, 1000, 814, 804, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(351, 192, '17.png', 5, NULL, 3, 159, NULL, NULL, 1000, 814, 804, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(352, 194, '1.png', 3, NULL, 3, 50, NULL, NULL, 1000, 380, 370, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(353, 194, '17.png', 3, NULL, 3, 50, NULL, NULL, 1000, 380, 370, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(354, 194, '10.png', 3, NULL, 3, 50, NULL, NULL, 1000, 380, 370, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(355, 194, '8.png', 3, NULL, 3, 50, NULL, NULL, 1000, 380, 370, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(356, 196, '15.png', 15, NULL, 7, 73, NULL, NULL, 1000, 165, 155, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(357, 196, '8.png', 15, NULL, 7, 73, NULL, NULL, 1000, 165, 155, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(358, 196, '9.png', 15, NULL, 7, 73, NULL, NULL, 1000, 165, 155, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(359, 196, '17.png', 15, NULL, 7, 73, NULL, NULL, 1000, 165, 155, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(360, 198, '19.png', 9, NULL, 3, 2, NULL, NULL, 1000, 745, 735, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(361, 198, '8.png', 9, NULL, 3, 2, NULL, NULL, 1000, 745, 735, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(362, 198, '14.png', 9, NULL, 3, 2, NULL, NULL, 1000, 745, 735, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(363, 198, '7.png', 9, NULL, 3, 2, NULL, NULL, 1000, 745, 735, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(364, 200, '2.png', 3, NULL, 7, NULL, NULL, NULL, 1000, 657, 647, NULL, NULL, '2023-11-20 06:49:46', '2023-11-23 07:44:38'),
(365, 200, '14.png', 14, NULL, 7, NULL, NULL, NULL, 1000, 657, 647, NULL, NULL, '2023-11-20 06:49:46', '2023-11-23 07:44:38'),
(366, 200, '2.png', 15, NULL, 7, NULL, NULL, NULL, 1000, 657, 647, NULL, NULL, '2023-11-20 06:49:46', '2023-11-23 07:44:38'),
(367, 200, '17.png', 9, NULL, 7, NULL, NULL, NULL, 1000, 657, 647, NULL, NULL, '2023-11-20 06:49:46', '2023-11-23 07:44:38'),
(368, 202, '17008044506Fkah.jpg', 9, NULL, 9, NULL, NULL, NULL, 1000, 200, 222, NULL, NULL, '2023-11-20 06:49:46', '2023-11-24 13:26:04'),
(369, 202, '1700790224OXW8P.png', 6, NULL, 10, NULL, NULL, NULL, 1000, 300, 222, NULL, NULL, '2023-11-20 06:49:46', '2023-11-24 13:26:04'),
(370, 202, '1700790224B8lc5.png', 4, NULL, 10, NULL, NULL, NULL, 1000, 400, 222, NULL, NULL, '2023-11-20 06:49:46', '2023-11-24 13:26:04'),
(371, 202, '1700790224NKQoT.png', 4, NULL, 11, NULL, NULL, NULL, 1000, 500, 222, NULL, NULL, '2023-11-20 06:49:46', '2023-11-24 13:26:04'),
(372, 204, '11.png', 13, NULL, 4, 50, NULL, NULL, 1000, 455, 445, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(373, 204, '2.png', 13, NULL, 4, 50, NULL, NULL, 1000, 455, 445, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(374, 204, '17.png', 13, NULL, 4, 50, NULL, NULL, 1000, 455, 445, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(375, 204, '10.png', 13, NULL, 4, 50, NULL, NULL, 1000, 455, 445, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(376, 206, '17.png', 5, NULL, 6, 78, NULL, NULL, 1000, 708, 698, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(377, 206, '13.png', 5, NULL, 6, 78, NULL, NULL, 1000, 708, 698, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(378, 206, '10.png', 5, NULL, 6, 78, NULL, NULL, 1000, 708, 698, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(379, 206, '19.png', 5, NULL, 6, 78, NULL, NULL, 1000, 708, 698, NULL, NULL, '2023-11-20 06:49:46', '2023-11-20 06:49:46'),
(4562, 2306, '3.webp', 4, 10, 11, 238, 2, 5, 1000, 939, 929, NULL, 6, '2024-03-04 10:54:46', '2024-03-04 10:54:46'),
(4563, 2306, '24.webp', 4, 11, 11, 238, 2, 5, 1000, 939, 929, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4564, 2306, '21.webp', 4, 10, 11, 238, 2, 5, 1000, 939, 929, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4565, 2306, '13.webp', 4, 9, 11, 238, 2, 5, 1000, 939, 929, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4566, 2308, '16.webp', 6, 11, 8, 145, 2, 2, 1000, 247, 237, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4567, 2308, '13.webp', 6, 9, 8, 145, 2, 2, 1000, 247, 237, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4568, 2308, '23.webp', 6, 9, 8, 145, 2, 2, 1000, 247, 237, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4569, 2308, '2.webp', 6, 10, 8, 145, 2, 2, 1000, 247, 237, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4570, 2310, '24.webp', 16, 9, 13, 191, 2, 3, 1000, 852, 842, NULL, 7, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4571, 2310, '15.webp', 16, 11, 13, 191, 2, 3, 1000, 852, 842, NULL, 7, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4572, 2310, '24.webp', 16, 11, 13, 191, 2, 3, 1000, 852, 842, NULL, 7, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4573, 2310, '25.webp', 16, 10, 13, 191, 2, 3, 1000, 852, 842, NULL, 7, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4574, 2312, '12.webp', 6, 11, 11, 65, 4, 2, 1000, 695, 685, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4575, 2312, '12.webp', 6, 9, 11, 65, 4, 2, 1000, 695, 685, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4576, 2312, '4.webp', 6, 11, 11, 65, 4, 2, 1000, 695, 685, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4577, 2312, '15.webp', 6, 11, 11, 65, 4, 2, 1000, 695, 685, NULL, 6, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4578, 2314, '13.webp', 8, 11, 14, 166, 4, 1, 1000, 378, 368, NULL, 4, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4579, 2314, '6.webp', 8, 10, 14, 166, 4, 1, 1000, 378, 368, NULL, 4, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4580, 2314, '6.webp', 8, 11, 14, 166, 4, 1, 1000, 378, 368, NULL, 4, '2024-03-04 10:54:47', '2024-03-04 10:54:47'),
(4581, 2314, '3.webp', 8, 9, 14, 166, 4, 1, 1000, 378, 368, NULL, 4, '2024-03-04 10:54:47', '2024-03-04 10:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_warrenties`
--

CREATE TABLE `product_warrenties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warrenties`
--

INSERT INTO `product_warrenties` (`id`, `name`, `serial`, `created_at`, `updated_at`) VALUES
(1, '1 Year Replacement Warrenty', 3, '2023-06-05 09:51:41', '2023-07-10 22:44:53'),
(2, '2 Years Service Warrenty', 5, '2023-06-05 09:52:00', '2023-07-10 22:44:53'),
(3, '1 Yr Replacement & 2 Yr Service Warrenty', 4, '2023-06-05 09:52:26', '2023-07-10 22:44:53'),
(7, '10 Days Replacement Guarentee', 1, '2023-06-07 17:16:37', '2023-07-16 21:53:37'),
(8, '10 Days Cashback Guarantee', 1, '2023-07-16 21:53:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotional_banners`
--

CREATE TABLE `promotional_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `heading_color` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `description_color` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `btn_text_color` varchar(255) DEFAULT NULL,
  `btn_bg_color` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `time_bg_color` varchar(255) DEFAULT NULL,
  `time_font_color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotional_banners`
--

INSERT INTO `promotional_banners` (`id`, `icon`, `heading`, `heading_color`, `title`, `title_color`, `description`, `description_color`, `url`, `btn_text`, `btn_text_color`, `btn_bg_color`, `background_color`, `product_image`, `background_image`, `video_url`, `started_at`, `end_at`, `time_bg_color`, `time_font_color`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Hurry up and Get 25% Discount', '#000000', 'Deals Of The Day', '#000000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '#606060', 'http://127.0.0.1:8000/shop', 'View Collection', '#ffffff', '#000000', '#d7d7d7', NULL, 'banner/XSzUi1707115899.png', 'https://www.youtube.com/watch?v=aIuyCblh3DI', '2024-02-05 12:50:33', '2024-02-29 23:00:00', '#ffffff', '#000000', '2023-06-13 10:08:55', '2024-02-05 07:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `effective_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=>Amount; 2=>Percentage',
  `value` double NOT NULL DEFAULT 0,
  `minimum_order_amount` double DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `route` varchar(255) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `role_name`, `permission_id`, `route`, `route_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Category Management', 125, 'save/rearranged/order', 'SaveRearrangeCategoryOrder', '2023-07-18 16:22:38', NULL),
(2, 1, 'Category Management', 124, 'rearrange/category', 'RearrangeCategory', '2023-07-18 16:22:38', NULL),
(3, 1, 'Category Management', 123, 'update/category', 'UpdateCategory', '2023-07-18 16:22:38', NULL),
(4, 1, 'Category Management', 122, 'edit/category/{slug}', 'EditCategory', '2023-07-18 16:22:38', NULL),
(5, 1, 'Category Management', 121, 'feature/category/{slug}', 'FeatureCategory', '2023-07-18 16:22:38', NULL),
(6, 1, 'Category Management', 120, 'delete/category/{slug}', 'DeleteCategory', '2023-07-18 16:22:38', NULL),
(7, 1, 'Category Management', 119, 'view/all/category', 'ViewAllCategory', '2023-07-18 16:22:38', NULL),
(8, 1, 'Category Management', 118, 'save/new/category', 'SaveNewCategory', '2023-07-18 16:22:38', NULL),
(9, 1, 'Category Management', 117, 'add/new/category', 'AddNewCategory', '2023-07-18 16:22:38', NULL),
(10, 2, 'Subcategory Management', 134, 'category/wise/subcategory', 'SubcategoryCategoryWise', '2023-07-18 16:24:12', NULL),
(11, 2, 'Subcategory Management', 132, 'update/subcategory', 'UpdateSubcategory', '2023-07-18 16:24:12', NULL),
(12, 2, 'Subcategory Management', 131, 'edit/subcategory/{slug}', 'EditSubcategory', '2023-07-18 16:24:12', NULL),
(13, 2, 'Subcategory Management', 130, 'feature/subcategory/{id}', 'FeatureSubcategory', '2023-07-18 16:24:12', NULL),
(14, 2, 'Subcategory Management', 129, 'delete/subcategory/{slug}', 'DeleteSubcategory', '2023-07-18 16:24:12', NULL),
(15, 2, 'Subcategory Management', 128, 'view/all/subcategory', 'ViewAllSubcategory', '2023-07-18 16:24:12', NULL),
(16, 2, 'Subcategory Management', 127, 'save/new/subcategory', 'SaveNewSubcategory', '2023-07-18 16:24:12', NULL),
(17, 2, 'Subcategory Management', 126, 'add/new/subcategory', 'AddNewSubcategory', '2023-07-18 16:24:12', NULL),
(18, 3, 'Dashboard', 23, 'home', 'home', '2023-07-20 04:31:05', NULL),
(19, 4, 'ChildCategory Management', 141, 'subcategory/wise/childcategory', 'ChildcategorySubcategoryWise', '2023-07-20 04:36:56', NULL),
(20, 4, 'ChildCategory Management', 139, 'update/childcategory', 'UpdateChildcategory', '2023-07-20 04:36:56', NULL),
(21, 4, 'ChildCategory Management', 138, 'edit/childcategory/{slug}', 'EditChildcategory', '2023-07-20 04:36:56', NULL),
(22, 4, 'ChildCategory Management', 137, 'delete/childcategory/{slug}', 'DeleteChildcategory', '2023-07-20 04:36:56', NULL),
(23, 4, 'ChildCategory Management', 136, 'view/all/childcategory', 'ViewAllChildcategory', '2023-07-20 04:36:56', NULL),
(24, 4, 'ChildCategory Management', 135, 'save/new/childcategory', 'SaveNewChildcategory', '2023-07-20 04:36:56', NULL),
(25, 4, 'ChildCategory Management', 134, 'category/wise/subcategory', 'SubcategoryCategoryWise', '2023-07-20 04:36:56', NULL),
(26, 4, 'ChildCategory Management', 133, 'add/new/childcategory', 'AddNewChildcategory', '2023-07-20 04:36:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `serial` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `banner`, `title`, `description`, `button_text`, `slug`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 'service/5zxCh1708346362.png', 'service/Iqo5v1709491293.jpg', 'Nursing Service', 'We Provide Best Service', NULL, '', 1, 1, NULL, '2024-03-03 18:41:33'),
(2, 'service/SuHYk1708345861.png', NULL, 'Doctor Appointment', 'We Provide Best Service', NULL, '', 1, 1, NULL, '2024-02-20 03:48:25'),
(3, 'service/3o3Zc1708346074.png', NULL, 'Ambulance Service', 'Coming Soon', NULL, '', 1, 1, NULL, '2024-02-25 06:03:15'),
(4, 'service/qcVra1708346124.png', NULL, 'Pharmacist Service', 'Coming Soon', NULL, '', 1, 1, NULL, '2024-02-19 12:35:24'),
(5, 'service/BUjbX1708346277.png', NULL, 'Diagonistic Service', 'Coming Soon', NULL, '', 1, 1, NULL, '2024-02-19 12:37:57'),
(6, 'service/fQyvm1708343669.png', 'service/kNxaJ1708343867.png', 'Upload your prescription', NULL, 'Upload Prescription', '', 1, 1, NULL, '2024-02-27 10:04:34'),
(8, 'service/8vtMN1708344139.png', 'service/f0Q5o1708344088.jpg', 'Looking for medicine from abroad?', NULL, 'Request for Medicine', '', 1, 1, NULL, '2024-02-25 09:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_infos`
--

CREATE TABLE `shipping_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_infos`
--

INSERT INTO `shipping_infos` (`id`, `order_id`, `full_name`, `phone`, `email`, `gender`, `address`, `thana`, `post_code`, `city`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, 'Md. Fahim Hossain', '01969005035', 'alifhossain174@gmail.com', NULL, 'Flat No: B4, House No: 71 Road No: 27, Dhaka 1212', 'Khilkhet', '1229', 'Dhaka', 'Bangladesh', '2024-02-01 11:00:41', NULL),
(2, 2, 'Md. Fahim Hossain', '01969005035', 'alifhossain174@gmail.com', NULL, 'Flat-B, Road No 27', 'Gulshan', '1225', 'Dhaka', 'Bangladesh', '2024-02-04 06:19:44', NULL),
(3, 2, 'Md. Fahim Hossain', '01969005035', 'alifhossain174@gmail.com', NULL, 'Road No 27', 'Barguna Sadar', '52858', 'Barguna', 'Bangladesh', '2024-02-18 05:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sims`
--

CREATE TABLE `sims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sims`
--

INSERT INTO `sims` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Single SIM', '2023-06-05 04:25:24', NULL),
(2, 'Single e-SIM', '2023-06-05 04:25:30', NULL),
(3, 'Dual SIM', '2023-06-05 04:25:36', '2023-06-07 16:30:32'),
(4, 'Dual e-SIM', '2023-06-05 04:25:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) NOT NULL,
  `api_endpoint` varchar(255) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Inactive; 1=>Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `image`, `provider_name`, `api_endpoint`, `api_key`, `secret_key`, `sender_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ElitBuzz', 'https://880sms.com/smsapi', 'C20095786bf436075.858353215', NULL, 'GenericCommerceV1', 0, '2023-06-13 03:43:26', '2024-02-19 09:44:21'),
(2, NULL, 'Reve', 'https://smpp.ajuratech.com:7790/sendtext', '69cff06995a4a85', '20cdf1d28', 'GenericCommerceV1', 1, '2023-06-13 03:43:26', '2024-02-19 09:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `sms_histories`
--

CREATE TABLE `sms_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_title` varchar(255) DEFAULT NULL,
  `template_description` longtext DEFAULT NULL,
  `sending_type` tinyint(4) DEFAULT NULL COMMENT '1=>Individual; 2=>Everyone',
  `individual_contact` varchar(255) DEFAULT NULL,
  `sms_receivers` tinyint(4) DEFAULT NULL COMMENT '1=>Having No Order; 2=>Having Orders',
  `min_order` double DEFAULT NULL,
  `max_order` double DEFAULT NULL,
  `min_order_value` double DEFAULT NULL,
  `max_order_value` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fb_login_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Inactive; 1=>Active',
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fb_app_secret` varchar(255) DEFAULT NULL,
  `fb_redirect_url` varchar(255) DEFAULT NULL,
  `gmail_login_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Inactive; 1=>Active',
  `gmail_client_id` varchar(255) DEFAULT NULL,
  `gmail_secret_id` varchar(255) DEFAULT NULL,
  `gmail_redirect_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_logins`
--

INSERT INTO `social_logins` (`id`, `fb_login_status`, `fb_app_id`, `fb_app_secret`, `fb_redirect_url`, `gmail_login_status`, `gmail_client_id`, `gmail_secret_id`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, NULL, 1, '47644860851-8flm737mrrivhjfr987r07qgs20auttt.apps.googleusercontent.com', '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', '/auth/google/callback', '2023-10-05 06:00:25', '2024-02-15 12:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `storage_types`
--

CREATE TABLE `storage_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '0=>Inactive; 1=>Active',
  `slug` varchar(255) NOT NULL,
  `serial` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storage_types`
--

INSERT INTO `storage_types` (`id`, `ram`, `rom`, `status`, `slug`, `serial`, `created_at`, `updated_at`) VALUES
(1, '4', '64 GB', '1', 'MjG8L1685939055', 2, '2023-06-05 04:24:15', '2023-07-10 21:56:55'),
(2, '6', '64 GB', '1', 'EFTdp1685939066', 6, '2023-06-05 04:24:26', '2023-07-10 21:56:55'),
(3, '4', '128 GB', '1', 'XcLTt1685939084', 3, '2023-06-05 04:24:44', '2023-07-10 21:56:55'),
(4, '6', '128 GB', '1', 'jiKP61685939094', 7, '2023-06-05 04:24:54', '2023-07-10 21:56:55'),
(5, '8', '128 GB', '1', 'VDL441685939104', 8, '2023-06-05 04:25:04', '2023-07-10 21:56:55'),
(6, '8', '256 GB', '1', 'HddfS1685939113', 9, '2023-06-05 04:25:13', '2023-07-10 21:56:55'),
(7, '2', '64 GB', '1', 'LAyCw1686119343', 1, '2023-06-07 16:29:03', '2023-07-10 21:56:55'),
(8, '2', '32 GB', '0', 'D0lJZ1686119390', 1, '2023-06-07 16:29:50', '2023-06-21 14:31:15'),
(9, '4', '256 GB', '1', 'D8g4L1686823094', 4, '2023-06-15 19:58:14', '2023-07-10 21:56:55'),
(10, '4', '512 GB', '1', 'KdCb71686823101', 5, '2023-06-15 19:58:21', '2023-07-10 21:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Not Featured; 1=>Featured',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_users`
--

CREATE TABLE `subscribed_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribed_users`
--

INSERT INTO `subscribed_users` (`id`, `email`, `created_at`, `updated_at`) VALUES
(25, 'alifhossain174@gmail.com', '2024-02-18 05:52:29', NULL),
(26, 'test123@gmail.com', '2024-02-18 11:26:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `sender_type` tinyint(4) NOT NULL COMMENT '1=>Support Agent; 2=>Customer',
  `message` longtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `support_ticket_id`, `sender_id`, `sender_type`, `message`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 2, 64, 2, 'hi... are u there ?', NULL, '2024-02-18 09:12:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `support_taken_by` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `subject` varchar(255) NOT NULL,
  `message` longtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Pending;1=>In Progress;2=>Solved;3=>Rejected;4=>On Hold',
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `ticket_no`, `support_taken_by`, `subject`, `message`, `attachment`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1707197765', 77, 'General Support : Officiis quibusdam n', 'Voluptate cumque sun', NULL, 0, '170719776529EVi', '2024-02-06 05:36:05', NULL),
(2, '1708247489', 64, 'Technical Issue : Test Support for testing', 'Flat #B4, House No: 71, Road: 27, Gulshan-1, Dhaka 1212', NULL, 0, '1708247489DR44j', '2024-02-18 09:11:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_policies`
--

CREATE TABLE `terms_and_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms` longtext DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `shipping_policy` longtext DEFAULT NULL,
  `return_policy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_policies`
--

INSERT INTO `terms_and_policies` (`id`, `terms`, `privacy_policy`, `shipping_policy`, `return_policy`, `created_at`, `updated_at`) VALUES
(1, '<h2>Terms &amp; Condition</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the United States, California&#39;s Electronic Commerce Act (1984), enacted by the Legislature, the more recent <a href=\"https://en.wikipedia.org/wiki/California_Privacy_Rights_Act\">California Privacy Rights Act</a> (2020), enacted through a popular election proposition and to control specifically how electronic commerce may be conducted in California. In the US in its entirety, electronic commerce activities are regulated more broadly by the <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission\">Federal Trade Commission</a> (FTC). These activities include the use of commercial e-mails, online advertising and <a href=\"https://en.wikipedia.org/wiki/Consumer_privacy\">consumer privacy</a>. The <a href=\"https://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003\">CAN-SPAM Act of 2003</a> establishes national standards for direct marketing over e-mail. The <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission_Act\">Federal Trade Commission Act</a> regulates all forms of advertising, including online advertising, and states that advertising must be truthful and non-deceptive.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-9\">[9]</a> Using its authority under Section 5 of the FTC Act, which prohibits unfair or deceptive practices, the FTC has brought a number of cases to enforce the promises in corporate privacy statements, including promises about the security of consumers&#39; personal information.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-10\">[10]</a> As a result, any corporate privacy policy related to e-commerce activity may be subject to enforcement by the FTC.</p>\r\n\r\n<p>The Ryan Haight Online Pharmacy Consumer Protection Act of 2008, which came into law in 2008, amends the <a href=\"https://en.wikipedia.org/wiki/Controlled_Substances_Act\">Controlled Substances Act</a> to address <a href=\"https://en.wikipedia.org/wiki/Online_pharmacy\">online pharmacies</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-11\">[11]</a></p>\r\n\r\n<p>Conflict of laws in cyberspace is a major hurdle for harmonization of legal framework for e-commerce around the world. In order to give a uniformity to e-commerce law around the world, many countries adopted the UNCITRAL Model Law on Electronic Commerce (1996).<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-http://www.uncitral.org/uncitral/en/uncitral_texts/electronic_commerce/1996Model.html-12\">[12]</a></p>\r\n\r\n<p><strong>Internationally</strong> there is the International Consumer Protection and Enforcement Network (ICPEN), which was formed in 1991 from an informal network of government customer fair trade organisations. The purpose was stated as being to find ways of co-operating on tackling consumer problems connected with cross-border transactions in both goods and services, and to help ensure exchanges of information among the participants for mutual benefit and understanding. From this came Econsumer.gov, an ICPEN initiative since April 2001. It is a portal to report complaints about online and related transactions with foreign companies.</p>\r\n\r\n<p>There is also <strong>Asia Pacific Economic Cooperation</strong>. APEC was established in 1989 with the vision of achieving stability, security and prosperity for the region through free and open trade and investment. APEC has an Electronic Commerce Steering Group as well as working on common privacy regulations throughout the APEC region.</p>\r\n\r\n<p>In <strong>Australia</strong>, trade is covered under Australian Treasury Guidelines for electronic commerce and the <a href=\"https://en.wikipedia.org/wiki/Australian_Competition_%26_Consumer_Commission\">Australian Competition &amp; Consumer Commission</a><a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-13\">[13]</a> regulates and offers advice on how to deal with businesses online,<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-14\">[14]</a> and offers specific advice on what happens if things go wrong.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-15\">[15]</a></p>\r\n\r\n<p>The <strong>European Union</strong> undertook an extensive enquiry into e-commerce in 2015-16 which observed significant growth in the development of e-commerce, along with some developments which raised concerns, such as increased use of selective distribution systems, which allow manufacturers to control routes to market, and &quot;increased use of contractual restrictions to better control product distribution&quot;. The <a href=\"https://en.wikipedia.org/wiki/European_Commission\">European Commission</a> felt that some emerging practices might be justified if they could improve the quality of product distribution, but &quot;others may unduly prevent consumers from benefiting from greater product choice and lower prices in e-commerce and therefore warrant Commission action&quot; in order to promote compliance with <a href=\"https://en.wikipedia.org/wiki/European_Union_competition_law\">EU competition rules</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-16\">[16]</a></p>\r\n\r\n<p>&nbsp;</p>', '<h2>Privacy Policy</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the United States, California&#39;s Electronic Commerce Act (1984), enacted by the Legislature, the more recent <a href=\"https://en.wikipedia.org/wiki/California_Privacy_Rights_Act\">California Privacy Rights Act</a> (2020), enacted through a popular election proposition and to control specifically how electronic commerce may be conducted in California. In the US in its entirety, electronic commerce activities are regulated more broadly by the <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission\">Federal Trade Commission</a> (FTC). These activities include the use of commercial e-mails, online advertising and <a href=\"https://en.wikipedia.org/wiki/Consumer_privacy\">consumer privacy</a>. The <a href=\"https://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003\">CAN-SPAM Act of 2003</a> establishes national standards for direct marketing over e-mail. The <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission_Act\">Federal Trade Commission Act</a> regulates all forms of advertising, including online advertising, and states that advertising must be truthful and non-deceptive.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-9\">[9]</a> Using its authority under Section 5 of the FTC Act, which prohibits unfair or deceptive practices, the FTC has brought a number of cases to enforce the promises in corporate privacy statements, including promises about the security of consumers&#39; personal information.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-10\">[10]</a> As a result, any corporate privacy policy related to e-commerce activity may be subject to enforcement by the FTC.</p>\r\n\r\n<p>The Ryan Haight Online Pharmacy Consumer Protection Act of 2008, which came into law in 2008, amends the <a href=\"https://en.wikipedia.org/wiki/Controlled_Substances_Act\">Controlled Substances Act</a> to address <a href=\"https://en.wikipedia.org/wiki/Online_pharmacy\">online pharmacies</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-11\">[11]</a></p>\r\n\r\n<p>Conflict of laws in cyberspace is a major hurdle for harmonization of legal framework for e-commerce around the world. In order to give a uniformity to e-commerce law around the world, many countries adopted the UNCITRAL Model Law on Electronic Commerce (1996).<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-http://www.uncitral.org/uncitral/en/uncitral_texts/electronic_commerce/1996Model.html-12\">[12]</a></p>\r\n\r\n<p><strong>Internationally</strong> there is the International Consumer Protection and Enforcement Network (ICPEN), which was formed in 1991 from an informal network of government customer fair trade organisations. The purpose was stated as being to find ways of co-operating on tackling consumer problems connected with cross-border transactions in both goods and services, and to help ensure exchanges of information among the participants for mutual benefit and understanding. From this came Econsumer.gov, an ICPEN initiative since April 2001. It is a portal to report complaints about online and related transactions with foreign companies.</p>\r\n\r\n<p>There is also <strong>Asia Pacific Economic Cooperation</strong>. APEC was established in 1989 with the vision of achieving stability, security and prosperity for the region through free and open trade and investment. APEC has an Electronic Commerce Steering Group as well as working on common privacy regulations throughout the APEC region.</p>\r\n\r\n<p>In <strong>Australia</strong>, trade is covered under Australian Treasury Guidelines for electronic commerce and the <a href=\"https://en.wikipedia.org/wiki/Australian_Competition_%26_Consumer_Commission\">Australian Competition &amp; Consumer Commission</a><a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-13\">[13]</a> regulates and offers advice on how to deal with businesses online,<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-14\">[14]</a> and offers specific advice on what happens if things go wrong.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-15\">[15]</a></p>\r\n\r\n<p>The <strong>European Union</strong> undertook an extensive enquiry into e-commerce in 2015-16 which observed significant growth in the development of e-commerce, along with some developments which raised concerns, such as increased use of selective distribution systems, which allow manufacturers to control routes to market, and &quot;increased use of contractual restrictions to better control product distribution&quot;. The <a href=\"https://en.wikipedia.org/wiki/European_Commission\">European Commission</a> felt that some emerging practices might be justified if they could improve the quality of product distribution, but &quot;others may unduly prevent consumers from benefiting from greater product choice and lower prices in e-commerce and therefore warrant Commission action&quot; in order to promote compliance with <a href=\"https://en.wikipedia.org/wiki/European_Union_competition_law\">EU competition rules</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-16\">[16]</a></p>\r\n\r\n<p>&nbsp;</p>', '<h2>Shipping Policy</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the United States, California&#39;s Electronic Commerce Act (1984), enacted by the Legislature, the more recent <a href=\"https://en.wikipedia.org/wiki/California_Privacy_Rights_Act\">California Privacy Rights Act</a> (2020), enacted through a popular election proposition and to control specifically how electronic commerce may be conducted in California. In the US in its entirety, electronic commerce activities are regulated more broadly by the <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission\">Federal Trade Commission</a> (FTC). These activities include the use of commercial e-mails, online advertising and <a href=\"https://en.wikipedia.org/wiki/Consumer_privacy\">consumer privacy</a>. The <a href=\"https://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003\">CAN-SPAM Act of 2003</a> establishes national standards for direct marketing over e-mail. The <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission_Act\">Federal Trade Commission Act</a> regulates all forms of advertising, including online advertising, and states that advertising must be truthful and non-deceptive.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-9\">[9]</a> Using its authority under Section 5 of the FTC Act, which prohibits unfair or deceptive practices, the FTC has brought a number of cases to enforce the promises in corporate privacy statements, including promises about the security of consumers&#39; personal information.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-10\">[10]</a> As a result, any corporate privacy policy related to e-commerce activity may be subject to enforcement by the FTC.</p>\r\n\r\n<p>The Ryan Haight Online Pharmacy Consumer Protection Act of 2008, which came into law in 2008, amends the <a href=\"https://en.wikipedia.org/wiki/Controlled_Substances_Act\">Controlled Substances Act</a> to address <a href=\"https://en.wikipedia.org/wiki/Online_pharmacy\">online pharmacies</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-11\">[11]</a></p>\r\n\r\n<p>Conflict of laws in cyberspace is a major hurdle for harmonization of legal framework for e-commerce around the world. In order to give a uniformity to e-commerce law around the world, many countries adopted the UNCITRAL Model Law on Electronic Commerce (1996).<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-http://www.uncitral.org/uncitral/en/uncitral_texts/electronic_commerce/1996Model.html-12\">[12]</a></p>\r\n\r\n<p><strong>Internationally</strong> there is the International Consumer Protection and Enforcement Network (ICPEN), which was formed in 1991 from an informal network of government customer fair trade organisations. The purpose was stated as being to find ways of co-operating on tackling consumer problems connected with cross-border transactions in both goods and services, and to help ensure exchanges of information among the participants for mutual benefit and understanding. From this came Econsumer.gov, an ICPEN initiative since April 2001. It is a portal to report complaints about online and related transactions with foreign companies.</p>\r\n\r\n<p>There is also <strong>Asia Pacific Economic Cooperation</strong>. APEC was established in 1989 with the vision of achieving stability, security and prosperity for the region through free and open trade and investment. APEC has an Electronic Commerce Steering Group as well as working on common privacy regulations throughout the APEC region.</p>\r\n\r\n<p>In <strong>Australia</strong>, trade is covered under Australian Treasury Guidelines for electronic commerce and the <a href=\"https://en.wikipedia.org/wiki/Australian_Competition_%26_Consumer_Commission\">Australian Competition &amp; Consumer Commission</a><a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-13\">[13]</a> regulates and offers advice on how to deal with businesses online,<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-14\">[14]</a> and offers specific advice on what happens if things go wrong.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-15\">[15]</a></p>\r\n\r\n<p>The <strong>European Union</strong> undertook an extensive enquiry into e-commerce in 2015-16 which observed significant growth in the development of e-commerce, along with some developments which raised concerns, such as increased use of selective distribution systems, which allow manufacturers to control routes to market, and &quot;increased use of contractual restrictions to better control product distribution&quot;. The <a href=\"https://en.wikipedia.org/wiki/European_Commission\">European Commission</a> felt that some emerging practices might be justified if they could improve the quality of product distribution, but &quot;others may unduly prevent consumers from benefiting from greater product choice and lower prices in e-commerce and therefore warrant Commission action&quot; in order to promote compliance with <a href=\"https://en.wikipedia.org/wiki/European_Union_competition_law\">EU competition rules</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-16\">[16]</a></p>\r\n\r\n<p><strong>Shipping Policy</strong></p>\r\n\r\n<p>Thank you for choosing Fejmo for your mobile devices and accessories. We want to ensure that your order is delivered to you in a timely and efficient manner. This Shipping Policy outlines important information regarding our shipping processes, including delivery options, timelines, and other relevant details.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Order Processing:</p>\r\n\r\n	<ul>\r\n		<li>Once you place an order with us, our team will carefully process and prepare it for shipment.</li>\r\n		<li>We aim to process and ship orders as quickly as possible, typically within 1-2 business days. However, please note that processing times may vary during peak seasons or promotional periods.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Shipping Methods and Delivery Options:</p>\r\n\r\n	<ul>\r\n		<li>We offer a variety of shipping methods to cater to your needs. The available options will be presented to you during the checkout process.</li>\r\n		<li>Our shipping partners may include reputable courier services to ensure reliable and secure delivery.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Shipping Destinations:</p>\r\n\r\n	<ul>\r\n		<li>We currently offer shipping within [insert applicable countries or regions].</li>\r\n		<li>Please note that certain products or brands may have shipping restrictions due to legal or logistical reasons. Any such restrictions will be communicated during the checkout process.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Shipping Fees:</p>\r\n\r\n	<ul>\r\n		<li>Shipping fees are calculated based on various factors, including the shipping method selected, the weight and dimensions of the package, and the destination.</li>\r\n		<li>The shipping fee will be displayed to you during the checkout process before you finalize your order.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Estimated Delivery Time:</p>\r\n\r\n	<ul>\r\n		<li>The estimated delivery time will depend on your location, the selected shipping method, and other factors beyond our control.</li>\r\n		<li>We strive to provide accurate delivery estimates, but please note that these are estimates only and actual delivery times may vary.</li>\r\n		<li>Once your order has been shipped, you will receive a shipping confirmation email with tracking information, allowing you to track the progress of your package.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Customs and Duties:</p>\r\n\r\n	<ul>\r\n		<li>For international orders, please note that customs fees, import duties, and taxes may be applicable according to your country&#39;s regulations.</li>\r\n		<li>Any additional charges related to customs clearance are the responsibility of the recipient and may need to be paid upon delivery.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Order Tracking:</p>\r\n\r\n	<ul>\r\n		<li>Once your order has been shipped, you will receive a tracking number and instructions on how to track your package.</li>\r\n		<li>You can use the provided tracking information to monitor the progress of your shipment on the respective courier&#39;s website.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Delivery Issues:</p>\r\n\r\n	<ul>\r\n		<li>In the rare event that your package is delayed, lost, or damaged during transit, please contact our customer support team as soon as possible. We will work diligently to resolve the issue and ensure your satisfaction.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Change of Shipping Address:</p>\r\n\r\n	<ul>\r\n		<li>If you need to change the shipping address after placing an order, please contact our customer support team immediately. We will do our best to accommodate your request if the order has not yet been shipped.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Shipping Policy Updates:</p>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>We reserve the right to update or modify this Shipping Policy at any time without prior notice. Any changes will be effective immediately upon posting on our website.</li>\r\n</ul>\r\n\r\n<p>If you have any questions or need further assistance regarding our shipping policy, please don&#39;t hesitate to contact our customer support team. We are here to provide you with the best possible shopping experience.</p>\r\n\r\n<p>Thank you for choosing Fejmo. We appreciate your business!</p>\r\n\r\n<p>&nbsp;</p>', '<h2>Return Policy</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the United States, California&#39;s Electronic Commerce Act (1984), enacted by the Legislature, the more recent <a href=\"https://en.wikipedia.org/wiki/California_Privacy_Rights_Act\">California Privacy Rights Act</a> (2020), enacted through a popular election proposition and to control specifically how electronic commerce may be conducted in California. In the US in its entirety, electronic commerce activities are regulated more broadly by the <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission\">Federal Trade Commission</a> (FTC). These activities include the use of commercial e-mails, online advertising and <a href=\"https://en.wikipedia.org/wiki/Consumer_privacy\">consumer privacy</a>. The <a href=\"https://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003\">CAN-SPAM Act of 2003</a> establishes national standards for direct marketing over e-mail. The <a href=\"https://en.wikipedia.org/wiki/Federal_Trade_Commission_Act\">Federal Trade Commission Act</a> regulates all forms of advertising, including online advertising, and states that advertising must be truthful and non-deceptive.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-9\">[9]</a> Using its authority under Section 5 of the FTC Act, which prohibits unfair or deceptive practices, the FTC has brought a number of cases to enforce the promises in corporate privacy statements, including promises about the security of consumers&#39; personal information.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-10\">[10]</a> As a result, any corporate privacy policy related to e-commerce activity may be subject to enforcement by the FTC.</p>\r\n\r\n<p>The Ryan Haight Online Pharmacy Consumer Protection Act of 2008, which came into law in 2008, amends the <a href=\"https://en.wikipedia.org/wiki/Controlled_Substances_Act\">Controlled Substances Act</a> to address <a href=\"https://en.wikipedia.org/wiki/Online_pharmacy\">online pharmacies</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-11\">[11]</a></p>\r\n\r\n<p>Conflict of laws in cyberspace is a major hurdle for harmonization of legal framework for e-commerce around the world. In order to give a uniformity to e-commerce law around the world, many countries adopted the UNCITRAL Model Law on Electronic Commerce (1996).<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-http://www.uncitral.org/uncitral/en/uncitral_texts/electronic_commerce/1996Model.html-12\">[12]</a></p>\r\n\r\n<p><strong>Internationally</strong> there is the International Consumer Protection and Enforcement Network (ICPEN), which was formed in 1991 from an informal network of government customer fair trade organisations. The purpose was stated as being to find ways of co-operating on tackling consumer problems connected with cross-border transactions in both goods and services, and to help ensure exchanges of information among the participants for mutual benefit and understanding. From this came Econsumer.gov, an ICPEN initiative since April 2001. It is a portal to report complaints about online and related transactions with foreign companies.</p>\r\n\r\n<p>There is also <strong>Asia Pacific Economic Cooperation</strong>. APEC was established in 1989 with the vision of achieving stability, security and prosperity for the region through free and open trade and investment. APEC has an Electronic Commerce Steering Group as well as working on common privacy regulations throughout the APEC region.</p>\r\n\r\n<p>In <strong>Australia</strong>, trade is covered under Australian Treasury Guidelines for electronic commerce and the <a href=\"https://en.wikipedia.org/wiki/Australian_Competition_%26_Consumer_Commission\">Australian Competition &amp; Consumer Commission</a><a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-13\">[13]</a> regulates and offers advice on how to deal with businesses online,<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-14\">[14]</a> and offers specific advice on what happens if things go wrong.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-15\">[15]</a></p>\r\n\r\n<p>The <strong>European Union</strong> undertook an extensive enquiry into e-commerce in 2015-16 which observed significant growth in the development of e-commerce, along with some developments which raised concerns, such as increased use of selective distribution systems, which allow manufacturers to control routes to market, and &quot;increased use of contractual restrictions to better control product distribution&quot;. The <a href=\"https://en.wikipedia.org/wiki/European_Commission\">European Commission</a> felt that some emerging practices might be justified if they could improve the quality of product distribution, but &quot;others may unduly prevent consumers from benefiting from greater product choice and lower prices in e-commerce and therefore warrant Commission action&quot; in order to promote compliance with <a href=\"https://en.wikipedia.org/wiki/European_Union_competition_law\">EU competition rules</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-16\">[16]</a></p>\r\n\r\n<p>&nbsp;</p>', '2023-04-11 13:41:20', '2024-02-05 10:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `rating` double NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `customer_image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `description`, `rating`, `customer_name`, `designation`, `customer_image`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita in recusandae sit officia ipsa, natus ad voluptatem doloribus dolorum placeat, rem deleniti est accusamus ipsum corporis voluptates soluta totam maiores nostrum reprehenderit quasi? Laboriosam itaque ab odit harum sed aut voluptates', 5, 'Hialry Duff', 'Founder & CEO', 'testimonial/myyTv1697621055.png', 'ld8fi1697621055', '2023-10-18 07:24:15', '2024-02-05 09:23:00'),
(3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita in recusandae sit officia ipsa, natus ad voluptatem doloribus dolorum placeat, rem deleniti est accusamus ipsum corporis voluptates soluta totam maiores nostrum reprehenderit quasi? Laboriosam itaque ab odit harum sed aut voluptates', 5, 'Selina Gomez', 'Software Engineer', 'testimonial/K1r3U1697621099.png', 'cMTul1697621099', '2023-10-18 07:24:59', '2024-02-05 09:22:54'),
(4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita in recusandae sit officia ipsa, natus ad voluptatem doloribus dolorum placeat, rem deleniti est accusamus ipsum corporis voluptates soluta totam maiores nostrum reprehenderit quasi? Laboriosam itaque ab odit harum sed aut voluptates', 3, 'Nike Mardson', 'Web Developer', 'testimonial/eJ2bC1697621239.png', 'PmDVG1697621239', '2023-10-18 07:27:19', '2024-02-05 09:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` int(4) NOT NULL,
  `upazilla_id` int(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(1, 1, 'Subil', 'সুবিল', 'subilup.comilla.gov.bd'),
(2, 1, 'North Gunaighor', 'উত্তর গুনাইঘর', 'gunaighornorthup.comilla.gov.bd'),
(3, 1, 'South Gunaighor', 'দক্ষিণ গুনাইঘর', 'gunaighorsouth.comilla.gov.bd'),
(4, 1, 'Boroshalghor', 'বড়শালঘর', 'boroshalghorup.comilla.gov.bd'),
(5, 1, 'Rajameher', 'রাজামেহার', 'rajameherup.comila.gov.bd'),
(6, 1, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.comilla.gov.bd'),
(7, 1, 'Rasulpur', 'রসুলপুর', 'rasulpurup.comilla.gov.bd'),
(8, 1, 'Fatehabad', 'ফতেহাবাদ', 'fatehabadup.comilla.gov.bd'),
(9, 1, 'Elahabad', 'এলাহাবাদ', 'elahabadup.comilla.gov.bd'),
(10, 1, 'Jafargonj', 'জাফরগঞ্জ', 'jafargonjup.comilla.gov.bd'),
(11, 1, 'Dhampti', 'ধামতী', 'dhamptiup.comilla.gov.bd'),
(12, 1, 'Mohanpur', 'মোহনপুর', 'mohanpurup.comilla.gov.bd'),
(13, 1, 'Vani', 'ভানী', 'vaniup.comilla.gov.bd'),
(14, 1, 'Barkamta', 'বরকামতা', 'barkamtaup.comilla.gov.bd'),
(15, 1, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.comilla.gov.bd'),
(16, 2, 'Aganagar', 'আগানগর', 'aganagarup.comilla.gov.bd'),
(17, 2, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.comilla.gov.bd'),
(18, 2, 'North Khoshbas', 'উত্তর খোশবাস', 'khoshbasnorthup.comilla.gov.bd'),
(19, 2, 'South Khoshbas', 'দক্ষিন খোশবাস', 'khoshbassouthup.comilla.gov.bd'),
(20, 2, 'Jhalam', 'ঝলম', 'jhalamup.comilla.gov.bd'),
(21, 2, 'Chitodda', 'চিতড্ডা', 'chitoddaup.comilla.gov.bd'),
(22, 2, 'North Shilmuri', 'উত্তর শিলমুড়ি', 'shilmurinorthup.comilla.gov.bd'),
(23, 2, 'South Shilmuri', 'দক্ষিন শিলমুড়ি', 'shilmurisouthup.comilla.gov.bd'),
(24, 2, 'Galimpur', 'গালিমপুর', 'galimpurup.comilla.gov.bd'),
(25, 2, 'Shakpur', 'শাকপুর', 'shakpurup.comilla.gov.bd'),
(26, 2, 'Bhaukshar', 'ভাউকসার', 'bhauksharup.comilla.gov.bd'),
(27, 2, 'Adda', 'আড্ডা', 'addaup.comilla.gov.bd'),
(28, 2, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd'),
(29, 2, 'Payalgacha', 'পয়ালগাছা', 'payalgachaup.comilla.gov.bd'),
(30, 2, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.comilla.gov.bd'),
(31, 3, 'Shidli', 'শিদলাই', 'shidliup.comilla.gov.bd'),
(32, 3, 'Chandla', 'চান্দলা', 'chandlaup.comilla.gov.bd'),
(33, 3, 'Shashidal', 'শশীদল', 'shashidalup.comilla.gov.bd'),
(34, 3, 'Dulalpur', 'দুলালপুর', 'dulalpurup2.comilla.gov.bd'),
(35, 3, 'Brahmanpara Sadar', 'ব্রাহ্মনপাড়া সদর', 'brahmanparasadarup.comilla.gov.bd'),
(36, 3, 'Shahebabad', 'সাহেবাবাদ', 'shahebabadup.comilla.gov.bd'),
(37, 3, 'Malapara', 'মালাপাড়া', 'malaparaup.comilla.gov.bd'),
(38, 3, 'Madhabpur', 'মাধবপুর', 'madhabpurup.comilla.gov.bd'),
(39, 4, 'Shuhilpur', 'সুহিলপুর', 'shuhilpurup.comilla.gov.bd'),
(40, 4, 'Bataghashi', 'বাতাঘাসি', 'bataghashiup.comilla.gov.bd'),
(41, 4, 'Joag', 'জোয়াগ', 'joagup.comilla.gov.bd'),
(42, 4, 'Borcarai', 'বরকরই', 'borcaraiup.comilla.gov.bd'),
(43, 4, 'Madhaiya', 'মাধাইয়া', 'madhaiyaup.comilla.gov.bd'),
(44, 4, 'Dollai Nowabpur', 'দোল্লাই নবাবপুর', 'dollainowabpurup.comilla.gov.bd'),
(45, 4, 'Mohichial', 'মহিচাইল', 'mohichialup.comilla.gov.bd'),
(46, 4, 'Gollai', 'গল্লাই', 'gollaiup.comilla.gov.bd'),
(47, 4, 'Keronkhal', 'কেরণখাল', 'keronkhalup.comilla.gov.bd'),
(48, 4, 'Maijkhar', 'মাইজখার', 'maijkharup.comilla.gov.bd'),
(49, 4, 'Etberpur', 'এতবারপুর', 'etberpurup.comilla.gov.bd'),
(50, 4, 'Barera', 'বাড়েরা', 'bareraup.comilla.gov.bd'),
(51, 4, 'Borcoit', 'বরকইট', 'borcoitup.comilla.gov.bd'),
(52, 5, 'Sreepur', 'শ্রীপুর', 'sreepurup.comilla.gov.bd'),
(53, 5, 'Kashinagar', 'কাশিনগর', 'kashinagarup.comilla.gov.bd'),
(54, 5, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.comilla.gov.bd'),
(55, 5, 'Shuvapur', 'শুভপুর', 'shuvapurup.comilla.gov.bd'),
(56, 5, 'Ghulpasha', 'ঘোলপাশা', 'ghulpashaup.comilla.gov.bd'),
(57, 5, 'Moonshirhat', 'মুন্সীরহাট', 'moonshirhatup.comilla.gov.bd'),
(58, 5, 'Batisha', 'বাতিসা', 'batishaup.comilla.gov.bd'),
(59, 5, 'Kankapait', 'কনকাপৈত', 'kankapaitup.comilla.gov.bd'),
(60, 5, 'Cheora', 'চিওড়া', 'cheoraup.comilla.gov.bd'),
(61, 5, 'Jagannatdighi', 'জগন্নাথদিঘী', 'jagannatdighiup.comilla.gov.bd'),
(62, 5, 'Goonabati', 'গুনবতী', 'goonabatiup.comilla.gov.bd'),
(63, 5, 'Alkara', 'আলকরা', 'alkaraup.comilla.gov.bd'),
(64, 6, 'Doulotpur', 'দৌলতপুর', 'doulotpurup.comilla.gov.bd'),
(65, 6, 'Daudkandi', 'দাউদকান্দি', 'daudkandinorthup.comilla.gov.bd'),
(66, 6, 'North Eliotgonj', 'উত্তর ইলিয়টগঞ্জ', 'eliotgonjnorthup.comilla.gov.bd'),
(67, 6, 'South Eliotgonj', 'দক্ষিন ইলিয়টগঞ্জ', 'eliotgonjsouthup.comilla.gov.bd'),
(68, 6, 'Zinglatoli', 'জিংলাতলী', 'zinglatoliup.comilla.gov.bd'),
(69, 6, 'Sundolpur', 'সুন্দলপুর', 'sundolpurup.comilla.gov.bd'),
(70, 6, 'Gouripur', 'গৌরীপুর', 'gouripurup.comilla.gov.bd'),
(71, 6, 'East Mohammadpur', 'পুর্ব মোহাম্মদপুর', 'mohammadpureastup.comilla.gov.bd'),
(72, 6, 'West Mohammadpur', 'পশ্চিম মোহাম্মদপুর', 'mohammadpurwestup.comilla.gov.bd'),
(73, 6, 'Goalmari', 'গোয়ালমারী', 'goalmariup.comilla.gov.bd'),
(74, 6, 'Maruka', 'মারুকা', 'marukaup.comilla.gov.bd'),
(75, 6, 'Betessor', 'বিটেশ্বর', 'betessorup.comilla.gov.bd'),
(76, 6, 'Podua', 'পদুয়া', 'poduaup.comilla.gov.bd'),
(77, 6, 'West Passgacia', 'পশ্চিম পাচঁগাছিয়া', 'passgaciawestup.comilla.gov.bd'),
(78, 6, 'Baropara', 'বারপাড়া', 'baroparaup2.comilla.gov.bd'),
(79, 7, 'Mathabanga', 'মাথাভাঙ্গা', 'mathabangaup.comilla.gov.bd'),
(80, 7, 'Gagutiea', 'ঘাগুটিয়া', 'gagutieaup.comilla.gov.bd'),
(81, 7, 'Asadpur', 'আছাদপুর', 'asadpurup.comilla.gov.bd'),
(82, 7, 'Chanderchor', 'চান্দেরচর', 'chanderchorup.comilla.gov.bd'),
(83, 7, 'Vashania', 'ভাষানিয়া', 'vashaniaup.comilla.gov.bd'),
(84, 7, 'Nilokhi', 'নিলখী', 'nilokhiup.comilla.gov.bd'),
(85, 7, 'Garmora', 'ঘারমোড়া', 'garmoraup.comilla.gov.bd'),
(86, 7, 'Joypur', 'জয়পুর', 'joypurup.comilla.gov.bd'),
(87, 7, 'Dulalpur', 'দুলালপুর', 'dulalpurup1.comilla.gov.bd'),
(88, 8, 'Bakoi', 'বাকই', 'bakoiup.comilla.gov.bd'),
(89, 8, 'Mudafargonj', 'মুদাফফর গঞ্জ', 'mudafargonjup.comilla.gov.bd'),
(90, 8, 'Kandirpar', 'কান্দিরপাড়', 'kandirparup.comilla.gov.bd'),
(91, 8, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.comilla.gov.bd'),
(92, 8, 'Uttarda', 'উত্তরদা', 'uttardaup.comilla.gov.bd'),
(93, 8, 'Laksam Purba', 'লাকসাম পুর্ব', 'laksampurbaup.comilla.gov.bd'),
(94, 8, 'Azgora', 'আজগরা', 'azgoraup.comilla.gov.bd'),
(95, 9, 'Sreekil', 'শ্রীকাইল', 'sreekilup.comilla.gov.bd'),
(96, 9, 'Akubpur', 'আকুবপুর', 'akubpurup.comilla.gov.bd'),
(97, 9, 'Andicot', 'আন্দিকোট', 'andicotup.comilla.gov.bd'),
(98, 9, 'Purbadair (East)', 'পুর্বধৈইর (পুর্ব)', 'purbadaireastup.comilla.gov.bd'),
(99, 9, 'Purbadair (West)', 'পুর্বধৈইর (পশ্চিম)', 'purbadairwestup.comilla.gov.bd'),
(100, 9, 'Bangara (East)', 'বাঙ্গরা (পূর্ব)', 'bangaraeastup.comilla.gov.bd'),
(101, 9, 'Bangara (West)', 'বাঙ্গরা (পশ্চিম)', 'bangarawestup.comilla.gov.bd'),
(102, 9, 'Chapitala', 'চাপিতলা', 'chapitalaup.comilla.gov.bd'),
(103, 9, 'Camalla', 'কামাল্লা', 'camallaup.comilla.gov.bd'),
(104, 9, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.comilla.gov.bd'),
(105, 9, 'Ramachandrapur (North)', 'রামচন্দ্রপুর (উত্তর)', 'ramachandrapurnorthup.comilla.gov.bd'),
(106, 9, 'Ramachandrapur (South)', 'রামচন্দ্রপুর (দক্ষিন)', 'ramachandrapursouthup.comilla.gov.bd'),
(107, 9, 'Muradnagar Sadar', 'মুরাদনগর সদর', 'muradnagarsadarup.comilla.gov.bd'),
(108, 9, 'Nobipur (East)', 'নবীপুর (পুর্ব)', 'nobipureastup.comilla.gov.bd'),
(109, 9, 'Nobipur (West)', 'নবীপুর (পশ্চিম)', 'nobipurwestup.comilla.gov.bd'),
(110, 9, 'Damgar', 'ধামঘর', 'damgarup.comilla.gov.bd'),
(111, 9, 'Jahapur', 'জাহাপুর', 'jahapurup.comilla.gov.bd'),
(112, 9, 'Salikandi', 'ছালিয়াকান্দি', 'salikandiup.comilla.gov.bd'),
(113, 9, 'Darura', 'দারোরা', 'daruraup.comilla.gov.bd'),
(114, 9, 'Paharpur', 'পাহাড়পুর', 'paharpurup.comilla.gov.bd'),
(115, 9, 'Babutipara', 'বাবুটিপাড়া', 'babutiparaup.comilla.gov.bd'),
(116, 9, 'Tanki', 'টনকী', 'tankiup.comilla.gov.bd'),
(117, 10, 'Bangadda', 'বাঙ্গড্ডা', 'bangadda.comilla.gov.bd'),
(118, 10, 'Paria', 'পেরিয়া', 'pariaup.comilla.gov.bd'),
(119, 10, 'Raykot', 'রায়কোট', 'raykotup.comilla.gov.bd'),
(120, 10, 'Mokara', 'মোকরা', 'mokaraup.comilla.gov.bd'),
(121, 10, 'Makrabpur', 'মক্রবপুর', 'makrabpurup.comilla.gov.bd'),
(122, 10, 'Heshakhal', 'হেসাখাল', 'heshakhalup.comilla.gov.bd'),
(123, 10, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd'),
(124, 10, 'Judda', 'জোড্ডা', 'juddaup.comilla.gov.bd'),
(125, 10, 'Dhalua', 'ঢালুয়া', 'dhaluaup.comilla.gov.bd'),
(126, 10, 'Doulkha', 'দৌলখাঁড়', 'doulkhaup.comilla.gov.bd'),
(127, 10, 'Boxgonj', 'বক্সগঞ্জ', 'boxgonjup.comilla.gov.bd'),
(128, 10, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.comilla.gov.bd'),
(129, 11, 'Kalirbazer', 'কালীর বাজার', 'kalirbazerup.comilla.gov.bd'),
(130, 11, 'North Durgapur', 'উত্তর দুর্গাপুর', 'durgapurnorthup.comilla.gov.bd'),
(131, 11, 'South Durgapur', 'দক্ষিন দুর্গাপুর', 'durgapursouthup.comilla.gov.bd'),
(132, 11, 'Amratoli', 'আমড়াতলী', 'amratoliup.comilla.gov.bd'),
(133, 11, 'Panchthubi', 'পাঁচথুবী', 'panchthubiup.comilla.gov.bd'),
(134, 11, 'Jagannatpur', 'জগন্নাথপুর', 'jagannatpurup.comilla.gov.bd'),
(135, 12, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.comilla.gov.bd'),
(136, 12, 'Chalibanga', 'চালিভাঙ্গা', 'chalibangaup.comilla.gov.bd'),
(137, 12, 'Radanagar', 'রাধানগর', 'radanagarup.comilla.gov.bd'),
(138, 12, 'Manikarchar', 'মানিকারচর', 'manikarcharup.comilla.gov.bd'),
(139, 12, 'Barakanda', 'বড়কান্দা', 'barakandaup.comilla.gov.bd'),
(140, 12, 'Govindapur', 'গোবিন্দপুর', 'govindapurup1.comilla.gov.bd'),
(141, 12, 'Luterchar', 'লুটেরচর', 'lutercharup.comilla.gov.bd'),
(142, 12, 'Vaorkhola', 'ভাওরখোলা', 'vaorkholaup.comilla.gov.bd'),
(143, 13, 'Baishgaon', 'বাইশগাঁও', 'baishgaonup.comilla.gov.bd'),
(144, 13, 'Shoroshpur', 'সরসপুর', 'shoroshpurup.comilla.gov.bd'),
(145, 13, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.comilla.gov.bd'),
(146, 13, 'Jholam (North)', 'ঝলম (উত্তর)', 'jholamnorthup.comilla.gov.bd'),
(147, 13, 'Jholam (South)', 'ঝলম (দক্ষিন)', 'jholamsouthup.comilla.gov.bd'),
(148, 13, 'Moishatua', 'মৈশাতুয়া', 'moishatuaup.comilla.gov.bd'),
(149, 13, 'Lokkhanpur', 'লক্ষনপুর', 'lokkhanpurup.comilla.gov.bd'),
(150, 13, 'Khela', 'খিলা', 'khelaup.comilla.gov.bd'),
(151, 13, 'Uttarhowla', 'উত্তর হাওলা', 'uttarhowlaup.comilla.gov.bd'),
(152, 13, 'Natherpetua', 'নাথেরপেটুয়া', 'natherpetuaup.comilla.gov.bd'),
(153, 13, 'Bipulashar', 'বিপুলাসার', 'bipulasharup.comilla.gov.bd'),
(154, 14, 'Chuwara', 'চৌয়ারা', 'chuwaraup.comilla.gov.bd'),
(155, 14, 'Baropara', 'বারপাড়া', 'baroparaup1.comilla.gov.bd'),
(156, 14, 'Jorkanoneast', 'জোড়কানন (পুর্ব)', 'jorkanoneastup.comilla.gov.bd'),
(157, 14, 'Goliara', 'গলিয়ারা', 'goliaraup.comilla.gov.bd'),
(158, 14, 'Jorkanonwest', 'জোড়কানন (পশ্চিম)', 'jorkanonwestup.comilla.gov.bd'),
(159, 14, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd'),
(160, 14, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd'),
(161, 14, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd'),
(162, 14, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd'),
(163, 14, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd'),
(164, 14, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd'),
(165, 14, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd'),
(166, 14, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd'),
(167, 14, 'Bijoypur', 'বিজয়পুর', 'bijoypurup.comilla.gov.bd'),
(168, 15, 'Satani', 'সাতানী', 'sataniup.comilla.gov.bd'),
(169, 15, 'Jagatpur', 'জগতপুর', 'jagatpurup.comilla.gov.bd'),
(170, 15, 'Balorampur', 'বলরামপুর', 'balorampurup.comilla.gov.bd'),
(171, 15, 'Karikandi', 'কড়িকান্দি', 'karikandiup.comilla.gov.bd'),
(172, 15, 'Kalakandi', 'কলাকান্দি', 'kalakandiup.comilla.gov.bd'),
(173, 15, 'Vitikandi', 'ভিটিকান্দি', 'vitikandiup.comilla.gov.bd'),
(174, 15, 'Narayandia', 'নারান্দিয়া', 'narayandiaup.comilla.gov.bd'),
(175, 15, 'Zearkandi', 'জিয়ারকান্দি', 'zearkandiup.comilla.gov.bd'),
(176, 15, 'Majidpur', 'মজিদপুর', 'majidpurup.comilla.gov.bd'),
(177, 16, 'Moynamoti', 'ময়নামতি', 'moynamotiup.comilla.gov.bd'),
(178, 16, 'Varella', 'ভারেল্লা', 'varellaup.comilla.gov.bd'),
(179, 16, 'Mokam', 'মোকাম', 'mokamup.comilla.gov.bd'),
(180, 16, 'Burichang Sadar', 'বুড়িচং সদর', 'burichangsadarup.comilla.gov.bd'),
(181, 16, 'Bakshimul', 'বাকশীমূল', 'bakshimulup.comilla.gov.bd'),
(182, 16, 'Pirjatrapur', 'পীরযাত্রাপুর', 'pirjatrapurup.comilla.gov.bd'),
(183, 16, 'Sholonal', 'ষোলনল', 'sholonalup.comilla.gov.bd'),
(184, 16, 'Rajapur', 'রাজাপুর', 'rajapurup.comilla.gov.bd'),
(185, 17, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd'),
(186, 17, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd'),
(187, 17, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd'),
(188, 17, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd'),
(189, 17, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd'),
(190, 17, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd'),
(191, 17, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd'),
(192, 17, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd'),
(193, 18, 'Mohamaya', 'মহামায়া', 'mohamayaup.feni.gov.bd'),
(194, 18, 'Pathannagar', 'পাঠাননগর', 'pathannagarup.feni.gov.bd'),
(195, 18, 'Subhapur', 'শুভপুর', 'subhapurup.feni.gov.bd'),
(196, 18, 'Radhanagar', 'রাধানগর', 'radhanagarup.feni.gov.bd'),
(197, 18, 'Gopal', 'ঘোপাল', 'gopalup.feni.gov.bd'),
(198, 19, 'Sarishadi', 'শর্শদি', 'sarishadiup.feni.gov.bd'),
(199, 19, 'Panchgachia', 'পাঁচগাছিয়া', 'panchgachiaup.feni.gov.bd'),
(200, 19, 'Dhormapur', 'ধর্মপুর', 'dhormapurup.feni.gov.bd'),
(201, 19, 'Kazirbag', 'কাজিরবাগ', 'kazirbagup.feni.gov.bd'),
(202, 19, 'Kalidah', 'কালিদহ', 'kalidahup.feni.gov.bd'),
(203, 19, 'Baligaon', 'বালিগাঁও', 'baligaonup.feni.gov.bd'),
(204, 19, 'Dholia', 'ধলিয়া', 'dholiaup.feni.gov.bd'),
(205, 19, 'Lemua', 'লেমুয়া', 'lemuaup.feni.gov.bd'),
(206, 19, 'Chonua', 'ছনুয়া', 'chonuaup.feni.gov.bd'),
(207, 19, 'Motobi', 'মোটবী', 'motobiup.feni.gov.bd'),
(208, 19, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.feni.gov.bd'),
(209, 19, 'Forhadnogor', 'ফরহাদনগর', 'forhadnogorup.feni.gov.bd'),
(210, 20, 'Charmozlishpur', 'চরমজলিশপুর', 'charmozlishpurup.feni.gov.bd'),
(211, 20, 'Bogadana', 'বগাদানা', 'bogadanaup.feni.gov.bd'),
(212, 20, 'Motigonj', 'মতিগঞ্জ', 'motigonjup.feni.gov.bd'),
(213, 20, 'Mongolkandi', 'মঙ্গলকান্দি', 'mongolkandiup.feni.gov.bd'),
(214, 20, 'Chardorbesh', 'চরদরবেশ', 'chardorbeshup.feni.gov.bd'),
(215, 20, 'Chorchandia', 'চরচান্দিয়া', 'chorchandiaup.feni.gov.bd'),
(216, 20, 'Sonagazi', 'সোনাগাজী', 'sonagaziup.feni.gov.bd'),
(217, 20, 'Amirabad', 'আমিরাবাদ', 'amirabadup.feni.gov.bd'),
(218, 20, 'Nababpur', 'নবাবপুর', 'nababpurup.feni.gov.bd'),
(219, 21, 'Fulgazi', 'ফুলগাজী', 'fulgaziup.feni.gov.bd'),
(220, 21, 'Munshirhat', 'মুন্সিরহাট', 'munshirhatup.feni.gov.bd'),
(221, 21, 'Dorbarpur', 'দরবারপুর', 'dorbarpurup.feni.gov.bd'),
(222, 21, 'Anandopur', 'আনন্দপুর', 'anandopurup.feni.gov.bd'),
(223, 21, 'Amzadhat', 'আমজাদহাট', 'amzadhatup.feni.gov.bd'),
(224, 21, 'Gmhat', 'জি,এম, হাট', 'gmhatup.feni.gov.bd'),
(225, 22, 'Mizanagar', 'মির্জানগর', 'mizanagarup.feni.gov.bd'),
(226, 22, 'Ctholia', 'চিথলিয়া', 'ctholiaup.feni.gov.bd'),
(227, 22, 'Boxmahmmud', 'বক্সমাহমুদ', 'boxmahmmudup.feni.gov.bd'),
(228, 23, 'Sindurpur', 'সিন্দুরপুর', 'sindurpurup.feni.gov.bd'),
(229, 23, 'Rajapur', 'রাজাপুর', 'rajapurup.feni.gov.bd'),
(230, 23, 'Purbachandrapur', 'পূর্বচন্দ্রপুর', 'purbachandrapurup.feni.gov.bd'),
(231, 23, 'Ramnagar', 'রামনগর', 'ramnagarup.feni.gov.bd'),
(232, 23, 'Yeakubpur', 'ইয়াকুবপুর', 'yeakubpur.feni.gov.bd'),
(233, 23, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyanup.feni.gov.bd'),
(234, 23, 'Matubhuiyan', 'মাতুভূঞা', 'matubhuiyanup.feni.gov.bd'),
(235, 23, 'Jayloskor', 'জায়লস্কর', 'jayloskorup.feni.gov.bd'),
(236, 24, 'Basudeb', 'বাসুদেব', 'basudeb.brahmanbaria.gov.bd'),
(237, 24, 'Machihata', 'মাছিহাতা', 'machihata.brahmanbaria.gov.bd'),
(238, 24, 'Sultanpur', 'সুলতানপুর', 'sultanpur.brahmanbaria.gov.bd'),
(239, 24, 'Ramrail', 'রামরাইল', 'ramrail.brahmanbaria.gov.bd'),
(240, 24, 'Sadekpur', 'সাদেকপুর', 'sadekpur.brahmanbaria.gov.bd'),
(241, 24, 'Talsahar', 'তালশহর', 'talsahar.brahmanbaria.gov.bd'),
(242, 24, 'Natai', 'নাটাই (দক্ষিন)', 'natais.brahmanbaria.gov.bd'),
(243, 24, 'Natai', 'নাটাই (উত্তর)', 'natain.brahmanbaria.gov.bd'),
(244, 24, 'Shuhilpur', 'সুহিলপুর', 'shuhilpur.brahmanbaria.gov.bd'),
(245, 24, 'Bodhal', 'বুধল', 'bodhal.brahmanbaria.gov.bd'),
(246, 24, 'Majlishpur', 'মজলিশপুর', 'majlishpur.brahmanbaria.gov.bd'),
(247, 25, 'Mulagram', 'মূলগ্রাম', 'mulagramup.brahmanbaria.gov.bd'),
(248, 25, 'Mehari', 'মেহারী', 'mehariup.brahmanbaria.gov.bd'),
(249, 25, 'Badair', 'বাদৈর', 'badairup.brahmanbaria.gov.bd'),
(250, 25, 'Kharera', 'খাড়েরা', 'khareraup.brahmanbaria.gov.bd'),
(251, 25, 'Benauty', 'বিনাউটি', 'benautyup.brahmanbaria.gov.bd'),
(252, 25, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.brahmanbaria.gov.bd'),
(253, 25, 'Kasbaw', 'কসবা', 'kasbawup.brahmanbaria.gov.bd'),
(254, 25, 'Kuti', 'কুটি', 'kutiup.brahmanbaria.gov.bd'),
(255, 25, 'Kayempur', 'কাইমপুর', 'kayempurup.brahmanbaria.gov.bd'),
(256, 25, 'Bayek', 'বায়েক', 'bayekup.brahmanbaria.gov.bd'),
(257, 26, 'Chatalpar', 'চাতলপাড়', 'chatalparup.brahmanbaria.gov.bd'),
(258, 26, 'Bhalakut', 'ভলাকুট', 'bhalakutup.brahmanbaria.gov.bd '),
(259, 26, 'Kunda', 'কুন্ডা', 'kundaup.brahmanbaria.gov.bd'),
(260, 26, 'Goalnagar', 'গোয়ালনগর', 'goalnagarup.brahmanbaria.gov.bd'),
(261, 26, 'Nasirnagar', 'নাসিরনগর', 'nasirnagarup.brahmanbaria.gov.bd'),
(262, 26, 'Burishwar', 'বুড়িশ্বর', 'burishwarup.brahmanbaria.gov.bd'),
(263, 26, 'Fandauk', 'ফান্দাউক', 'fandaukup.brahmanbaria.gov.bd'),
(264, 26, 'Goniauk', 'গুনিয়াউক', 'goniaukup.brahmanbaria.gov.bd'),
(265, 26, 'Chapartala', 'চাপৈরতলা', 'chapartalaup.brahmanbaria.gov.bd'),
(266, 26, 'Dharnondol', 'ধরমন্ডল', 'dharnondolup.brahmanbaria.gov.bd'),
(267, 26, 'Haripur', 'হরিপুর', 'haripurup.brahmanbaria.gov.bd'),
(268, 26, 'Purbabhag', 'পূর্বভাগ', 'purbabhagup.brahmanbaria.gov.bd'),
(269, 26, 'Gokarna', 'গোকর্ণ', 'gokarnaup.brahmanbaria.gov.bd'),
(270, 27, 'Auraol', 'অরুয়াইল', 'auraolup.brahmanbaria.gov.bd'),
(271, 27, 'Pakshimuul', 'পাকশিমুল', 'pakshimuulup.brahmanbaria.gov.bd'),
(272, 27, 'Chunta', 'চুন্টা', 'chuntaup.brahmanbaria.gov.bd'),
(273, 27, 'Kalikaccha', 'কালীকচ্ছ', 'kalikacchaup.brahmanbaria.gov.bd'),
(274, 27, 'Panishor', 'পানিশ্বর', 'panishorup.brahmanbaria.gov.bd'),
(275, 27, 'Sarail', 'সরাইল সদর', 'sarailup.brahmanbaria.gov.bd'),
(276, 27, 'Noagoun', 'নোয়াগাঁও', 'noagounup.brahmanbaria.gov.bd'),
(277, 27, 'Shahajadapur', 'শাহজাদাপুর', 'shahajadapurup.brahmanbaria.gov.bd'),
(278, 27, 'Shahbazpur', 'শাহবাজপুর', 'shahbazpurup.brahmanbaria.gov.bd'),
(279, 28, 'Ashuganj', 'আশুগঞ্জ সদর', 'ashuganjup.brahmanbaria.gov.bd'),
(280, 28, 'Charchartala', 'চরচারতলা', 'charchartalaup.brahmanbaria.gov.bd'),
(281, 28, 'Durgapur', 'দুর্গাপুর', 'durgapurup.brahmanbaria.gov.bd'),
(282, 28, 'Araishidha', 'আড়াইসিধা', 'araishidhaup.brahmanbaria.gov.bd'),
(283, 28, 'Talshaharw', 'তালশহর(পঃ)', 'talshaharwup.brahmanbaria.gov.bd'),
(284, 28, 'Sarifpur', 'শরীফপুর', 'sarifpurup.brahmanbaria.gov.bd'),
(285, 28, 'Lalpur', 'লালপুর', 'lalpurup.brahmanbaria.gov.bd'),
(286, 28, 'Tarua', 'তারুয়া', 'taruaup.brahmanbaria.gov.bd'),
(287, 29, 'Monionda', 'মনিয়ন্দ', 'moniondaup.brahmanbaria.gov.bd'),
(288, 29, 'Dharkhar', 'ধরখার', 'dharkharup.brahmanbaria.gov.bd'),
(289, 29, 'Mogra', 'মোগড়া', 'mograup.brahmanbaria.gov.bd'),
(290, 29, 'Akhauran', 'আখাউড়া (উঃ)', 'akhauranup.brahmanbaria.gov.bd'),
(291, 29, 'Akhauras', 'আখাউড়া (দঃ)', 'akhaurasup.brahmanbaria.gov.bd'),
(292, 30, 'Barail', 'বড়াইল', 'barailup.brahmanbaria.gov.bd'),
(293, 30, 'Birgaon', 'বীরগাঁও', 'birgaonup.brahmanbaria.gov.bd'),
(294, 30, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.brahmanbaria.gov.bd'),
(295, 30, 'Nathghar', 'নাটঘর', 'nathgharup.brahmanbaria.gov.bd'),
(296, 30, 'Biddayakut', 'বিদ্যাকুট', 'biddayakutup.brahmanbaria.gov.bd'),
(297, 30, 'Nabinagare', 'নবীনগর (পূর্ব)', 'nabinagareup.brahmanbaria.gov.bd'),
(298, 30, 'Nabinagarw', 'নবীনগর(পশ্চিম)', 'nabinagarwup.brahmanbaria.gov.bd'),
(299, 30, 'Bitghar', 'বিটঘর', 'bitgharup.brahmanbaria.gov.bd'),
(300, 30, 'Shibpur', 'শিবপুর', 'shibpurup.brahmanbaria.gov.bd'),
(301, 30, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.brahmanbaria.gov.bd'),
(302, 30, 'Jinudpur', 'জিনোদপুর', 'jinudpurup.brahmanbaria.gov.bd'),
(303, 30, 'Laurfatehpur', 'লাউরফতেপুর', 'laurfatehpurup.brahmanbaria.gov.bd'),
(304, 30, 'Ibrahimpur', 'ইব্রাহিমপুর', 'ibrahimpurup.brahmanbaria.gov.bd'),
(305, 30, 'Satmura', 'সাতমোড়া', 'satmuraup.brahmanbaria.gov.bd'),
(306, 30, 'Shamogram', 'শ্যামগ্রাম', 'shamogramup.brahmanbaria.gov.bd'),
(307, 30, 'Rasullabad', 'রসুল্লাবাদ', 'rasullabadup.brahmanbaria.gov.bd'),
(308, 30, 'Barikandi', 'বড়িকান্দি', 'barikandiup.brahmanbaria.gov.bd'),
(309, 30, 'Salimganj', 'ছলিমগঞ্জ', 'salimganjup.brahmanbaria.gov.bd'),
(310, 30, 'Ratanpur', 'রতনপুর', 'ratanpurup.brahmanbaria.gov.bd'),
(311, 30, 'Kaitala (North)', 'কাইতলা (উত্তর)', 'kaitalanup.brahmanbaria.gov.bd'),
(312, 30, 'Kaitala (South)', 'কাইতলা (দক্ষিন)', 'kaitalasup.brahmanbaria.gov.bd'),
(313, 31, 'Tazkhali', 'তেজখালী', 'tazkhaliup.brahmanbaria.gov.bd'),
(314, 31, 'Pahariya Kandi', 'পাহাড়িয়া কান্দি', 'pahariyakandiup.brahmanbaria.gov.bd'),
(315, 31, 'Dariadulat', 'দরিয়াদৌলত', 'dariadulatup.brahmanbaria.gov.bd'),
(316, 31, 'Sonarampur', 'সোনারামপুর', 'sonarampurup.brahmanbaria.gov.bd'),
(317, 31, 'Darikandi', 'দড়িকান্দি', 'darikandiup.brahmanbaria.gov.bd'),
(318, 31, 'Saifullyakandi', 'ছয়ফুল্লাকান্দি', 'saifullyakandiup.brahmanbaria.gov.bd'),
(319, 31, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampurup.brahmanbaria.gov.bd'),
(320, 31, 'Ayabpur', 'আইয়ুবপুর', 'ayabpurup.brahmanbaria.gov.bd'),
(321, 31, 'Fardabad', 'ফরদাবাদ', 'fardabadup.brahmanbaria.gov.bd'),
(322, 31, 'Rupushdi', 'রুপসদী পশ্চিম', 'rupushdiup.brahmanbaria.gov.bd'),
(323, 31, 'Salimabad', 'ছলিমাবাদ', 'salimabadup.brahmanbaria.gov.bd'),
(324, 31, 'Ujanchar', 'উজানচর পূর্ব', 'ujancharup.brahmanbaria.gov.bd'),
(325, 31, 'Manikpur', 'মানিকপুর', 'manikpurup.brahmanbaria.gov.bd'),
(326, 32, 'Bhudanty', 'বুধন্তি', 'bhudantyup.brahmanbaria.gov.bd'),
(327, 32, 'Chandura', 'চান্দুরা', 'chanduraup.brahmanbaria.gov.bd'),
(328, 32, 'Ichapura', 'ইছাপুরা', 'ichapuraup.brahmanbaria.gov.bd'),
(329, 32, 'Champaknagar', 'চম্পকনগর', 'champaknagarup.brahmanbaria.gov.bd'),
(330, 32, 'Harashpur', 'হরষপুর', 'harashpurup.brahmanbaria.gov.bd'),
(331, 32, 'Pattan', 'পত্তন', 'pattanup.brahmanbaria.gov.bd'),
(332, 32, 'Singerbil', 'সিংগারবিল', 'singerbilup.brahmanbaria.gov.bd'),
(333, 32, 'Bishupor', 'বিষ্ণুপুর', 'bishuporup.brahmanbaria.gov.bd'),
(334, 32, 'Charislampur', 'চর-ইসলামপুর', 'charislampurup.brahmanbaria.gov.bd'),
(335, 32, 'Paharpur', 'পাহাড়পুর', 'paharpurup.brahmanbaria.gov.bd'),
(336, 33, 'Jibtali', 'জীবতলি', 'jibtaliup.rangamati.gov.bd'),
(337, 33, 'Sapchari', 'সাপছড়ি', 'sapchariup.rangamati.gov.bd'),
(338, 33, 'Kutukchari', 'কুতুকছড়ি', 'kutukchariup.rangamati.gov.bd'),
(339, 33, 'Bandukbhanga', 'বন্দুকভাঙ্গা', 'bandukbhangaup.rangamati.gov.bd'),
(340, 33, 'Balukhali', 'বালুখালী', 'balukhaliup.rangamati.gov.bd'),
(341, 33, 'Mogban', 'মগবান', 'mogbanup.rangamati.gov.bd'),
(342, 34, 'Raikhali', 'রাইখালী', 'raikhaliup.rangamati.gov.bd'),
(343, 34, 'Kaptai', 'কাপ্তাই', 'kaptaiup.rangamati.gov.bd'),
(344, 34, 'Wagga', 'ওয়াজ্ঞা', 'waggaup.rangamati.gov.bd'),
(345, 34, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.rangamati.gov.bd'),
(346, 34, 'Chitmorom', 'চিৎমরম', 'chitmoromup.rangamati.gov.bd'),
(347, 35, 'Ghagra', 'ঘাগড়া', 'ghagraup.rangamati.gov.bd'),
(348, 35, 'Fatikchari', 'ফটিকছড়ি', 'fatikchariup.rangamati.gov.bd'),
(349, 35, 'Betbunia', 'বেতবুনিয়া', 'betbuniaup.rangamati.gov.bd'),
(350, 35, 'Kalampati', 'কলমপতি', 'kalampatiup.rangamati.gov.bd'),
(351, 36, 'Sajek', 'সাজেক', 'sajekup.rangamati.gov.bd'),
(352, 36, 'Amtali', 'আমতলী', 'amtaliup.rangamati.gov.bd'),
(353, 36, 'Bongoltali', 'বঙ্গলতলী', 'bongoltaliup.rangamati.gov.bd'),
(354, 36, 'Rupokari', 'রুপকারী', 'rupokariup.rangamati.gov.bd'),
(355, 36, 'Marisha', 'মারিশ্যা', 'marishaup.rangamati.gov.bd'),
(356, 36, 'Khedarmara', 'খেদারমারা', 'khedarmaraup.rangamati.gov.bd'),
(357, 36, 'Sharoyatali', 'সারোয়াতলী', 'sharoyataliup.rangamati.gov.bd'),
(358, 36, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichariup.rangamati.gov.bd'),
(359, 37, 'Subalong', 'সুবলং', 'subalongup.rangamati.gov.bd'),
(360, 37, 'Barkal', 'বরকল', 'barkalup.rangamati.gov.bd'),
(361, 37, 'Bushanchara', 'ভূষনছড়া', 'bushancharaup.rangamati.gov.bd'),
(362, 37, 'Aimachara', 'আইমাছড়া', 'aimacharaup.rangamati.gov.bd'),
(363, 37, 'Borohorina', 'বড় হরিণা', 'borohorinaup.rangamati.gov.bd'),
(364, 38, 'Langad', 'লংগদু', 'langaduup.rangamati.gov.bd'),
(365, 38, 'Maeinimukh', 'মাইনীমুখ', 'maeinimukhup.rangamati.gov.bd'),
(366, 38, 'Vasannadam', 'ভাসান্যাদম', 'vasannadamup.rangamati.gov.bd'),
(367, 38, 'Bogachattar', 'বগাচতর', 'bogachattarup.rangamati.gov.bd'),
(368, 38, 'Gulshakhali', 'গুলশাখালী', 'gulshakhaliup.rangamati.gov.bd'),
(369, 38, 'Kalapakujja', 'কালাপাকুজ্যা', 'kalapakujjaup.rangamati.gov.bd'),
(370, 38, 'Atarakchara', 'আটারকছড়া', 'atarakcharaup.rangamati.gov.bd'),
(371, 39, 'Ghilachari', 'ঘিলাছড়ি', 'ghilachariup.rangamati.gov.bd'),
(372, 39, 'Gaindya', 'গাইন্দ্যা', 'gaindyaup.rangamati.gov.bd'),
(373, 39, 'Bangalhalia', 'বাঙ্গালহালিয়া', 'bangalhaliaup.rangamati.gov.bd'),
(374, 40, 'Kengrachari', 'কেংড়াছড়ি', 'kengrachariup.rangamati.gov.bd'),
(375, 40, 'Belaichari', 'বিলাইছড়ি', 'belaichariup.rangamati.gov.bd'),
(376, 40, 'Farua', 'ফারুয়া', 'faruaup.rangamati.gov.bd'),
(377, 41, 'Juraichari', 'জুরাছড়ি', 'juraichariup.rangamati.gov.bd'),
(378, 41, 'Banajogichara', 'বনযোগীছড়া', 'banajogicharaup.rangamati.gov.bd'),
(379, 41, 'Moidong', 'মৈদং', 'moidongup.rangamati.gov.bd'),
(380, 41, 'Dumdumya', 'দুমদুম্যা', 'dumdumyaup.rangamati.gov.bd'),
(381, 42, 'Sabekkhong', 'সাবেক্ষ্যং', 'sabekkhongup.rangamati.gov.bd'),
(382, 42, 'Naniarchar', 'নানিয়ারচর', 'naniarcharup.rangamati.gov.bd'),
(383, 42, 'Burighat', 'বুড়িঘাট', 'burighatup.rangamati.gov.bd'),
(384, 42, 'Ghilachhari', 'ঘিলাছড়ি', 'ghilachhariup.rangamati.gov.bd'),
(385, 43, 'Charmatua', 'চরমটুয়া', 'charmatuaup.noakhali.gov.bd'),
(386, 43, 'Dadpur', 'দাদপুর', 'dadpurup.noakhali.gov.bd'),
(387, 43, 'Noannoi', 'নোয়ান্নই', 'noannoiup.noakhali.gov.bd'),
(388, 43, 'Kadirhanif', 'কাদির হানিফ', 'kadirhanifup.noakhali.gov.bd'),
(389, 43, 'Binodpur', 'বিনোদপুর', 'binodpurup.noakhali.gov.bd'),
(390, 43, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.noakhali.gov.bd'),
(391, 43, 'Aujbalia', 'এওজবালিয়া', 'aujbaliaup.noakhali.gov.bd'),
(392, 43, 'Kaladara', 'কালাদরপ', 'kaladarapup.noakhali.gov.bd'),
(393, 43, 'Ashwadia', 'অশ্বদিয়া', 'ashwadiaup.noakhali.gov.bd'),
(394, 43, 'Newajpur', 'নিয়াজপুর', 'newajpurup.noakhali.gov.bd'),
(395, 43, 'East Charmatua', 'পূর্ব চরমটুয়া', 'eastcharmatuap.noakhali.gov.bd'),
(396, 43, 'Andarchar', 'আন্ডারচর', 'andarcharup.noakhali.gov.bd'),
(397, 43, 'Noakhali', 'নোয়াখালী', 'noakhaliup.noakhali.gov.bd'),
(398, 44, 'Sirajpur', 'সিরাজপুর', 'sirajpurup.noakhali.gov.bd'),
(399, 44, 'Charparboti', 'চরপার্বতী', 'charparbotiup.noakhali.gov.bd'),
(400, 44, 'Charhazari', 'চরহাজারী', 'charhazariup.noakhali.gov.bd'),
(401, 44, 'Charkakra', 'চরকাঁকড়া', 'charkakraup.noakhali.gov.bd'),
(402, 44, 'Charfakira', 'চরফকিরা', 'charfakiraup.noakhali.gov.bd'),
(403, 44, 'Musapur', 'মুসাপুর', 'musapurup.noakhali.gov.bd'),
(404, 44, 'Charelahi', 'চরএলাহী', 'charelahiup.noakhali.gov.bd'),
(405, 44, 'Rampur', 'রামপুর', 'rampurup.noakhali.gov.bd'),
(406, 45, 'Amanullapur', 'আমানউল্ল্যাপুর', 'amanullapurup.noakhali.gov.bd'),
(407, 45, 'Gopalpur', 'গোপালপুর', 'gopalpurup.noakhali.gov.bd'),
(408, 45, 'Jirtali', 'জিরতলী', 'jirtaliup.noakhali.gov.bd'),
(409, 45, 'Kutubpur', 'কুতবপুর', 'kutubpurup.noakhali.gov.bd'),
(410, 45, 'Alyearpur', 'আলাইয়ারপুর', 'alyearpurup.noakhali.gov.bd'),
(411, 45, 'Chayani', 'ছয়ানী', 'chayaniup.noakhali.gov.bd'),
(412, 45, 'Rajganj', 'রাজগঞ্জ', 'rajganjup.noakhali.gov.bd'),
(413, 45, 'Eklashpur', 'একলাশপুর', 'eklashpurup.noakhali.gov.bd'),
(414, 45, 'Begumganj', 'বেগমগঞ্জ', 'begumganjup.noakhali.gov.bd'),
(415, 45, 'Mirwarishpur', 'মিরওয়ারিশপুর', 'mirwarishpurup.noakhali.gov.bd'),
(416, 45, 'Narottampur', 'নরোত্তমপুর', 'narottampurup.noakhali.gov.bd'),
(417, 45, 'Durgapur', 'দূর্গাপুর', 'durgapurup.noakhali.gov.bd'),
(418, 45, 'Rasulpur', 'রসুলপুর', 'rasulpurup.noakhali.gov.bd'),
(419, 45, 'Hajipur', 'হাজীপুর', 'hajipurup.noakhali.gov.bd'),
(420, 45, 'Sharifpur', 'শরীফপুর', 'sharifpurup.noakhali.gov.bd'),
(421, 45, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.noakhali.gov.bd'),
(422, 46, 'Sukhchar', 'সুখচর', 'sukhcharup.noakhali.gov.bd'),
(423, 46, 'Nolchira', 'নলচিরা', 'nolchiraup.noakhali.gov.bd'),
(424, 46, 'Charishwar', 'চরঈশ্বর', 'charishwarup.noakhali.gov.bd'),
(425, 46, 'Charking', 'চরকিং', 'charkingup.noakhali.gov.bd'),
(426, 46, 'Tomoroddi', 'তমরদ্দি', 'tomoroddiup.noakhali.gov.bd'),
(427, 46, 'Sonadiya', 'সোনাদিয়া', 'sonadiyaup.noakhali.gov.bd'),
(428, 46, 'Burirchar', 'বুড়িরচর', 'burircharup.noakhali.gov.bd'),
(429, 46, 'Jahajmara', 'জাহাজমারা', 'jahajmaraup.noakhali.gov.bd'),
(430, 46, 'Nijhumdwi', 'নিঝুমদ্বীপ', 'nijhumdwipup.noakhali.gov.bd'),
(431, 47, 'Charjabbar', 'চরজাব্বার', 'charjabbarup.noakhali.gov.bd'),
(432, 47, 'Charbata', 'চরবাটা', 'charbataup.noakhali.gov.bd'),
(433, 47, 'Charclerk', 'চরক্লার্ক', 'charclerkup.noakhali.gov.bd'),
(434, 47, 'Charwapda', 'চরওয়াপদা', 'charwapdaup.noakhali.gov.bd'),
(435, 47, 'Charjubilee', 'চরজুবলী', 'charjubileeup.noakhali.gov.bd'),
(436, 47, 'Charaman Ullah', 'চরআমান উল্যা', 'charamanullahup.noakhali.gov.bd'),
(437, 47, 'East Charbata', 'পূর্ব চরবাটা', 'eastcharbataup.noakhali.gov.bd'),
(438, 47, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.noakhali.gov.bd'),
(439, 48, 'Narottampur', 'নরোত্তমপুর', 'narottampurup1.noakhali.gov.bd'),
(440, 48, 'Dhanshiri', 'ধানসিঁড়ি', 'dhanshiriup.noakhali.gov.bd'),
(441, 48, 'Sundalpur', 'সুন্দলপুর', 'sundalpurup.noakhali.gov.bd'),
(442, 48, 'Ghoshbag', 'ঘোষবাগ', 'ghoshbagup.noakhali.gov.bd'),
(443, 48, 'Chaprashirhat', 'চাপরাশিরহাট', 'chaprashirhatup.noakhali.gov.bd'),
(444, 48, 'Dhanshalik', 'ধানশালিক', 'dhanshalikup.noakhali.gov.bd'),
(445, 48, 'Batoiya', 'বাটইয়া', 'batoiyaup.noakhali.gov.bd'),
(446, 49, 'Chhatarpaia', 'ছাতারপাইয়া', 'chhatarpaiaup.noakhali.gov.bd'),
(447, 49, 'Kesharpar', 'কেশরপাড়া', 'kesharparup.noakhali.gov.bd'),
(448, 49, 'Dumurua', 'ডুমুরুয়া', 'dumuruaup.noakhali.gov.bd'),
(449, 49, 'Kadra', 'কাদরা', 'kadraup.noakhali.gov.bd'),
(450, 49, 'Arjuntala', 'অর্জুনতলা', 'arjuntalaup.noakhali.gov.bd'),
(451, 49, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.noakhali.gov.bd'),
(452, 49, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup7.noakhali.gov.bd'),
(453, 49, 'Nabipur', 'নবীপুর', 'nabipurup.noakhali.gov.bd'),
(454, 49, 'Bejbagh', 'বিজবাগ', 'bejbaghup.noakhali.gov.bd'),
(455, 50, 'Sahapur', 'সাহাপুর', 'sahapurup.noakhali.gov.bd'),
(456, 50, 'Ramnarayanpur', 'রামনারায়নপুর', 'ramnarayanpurup.noakhali.gov.bd'),
(457, 50, 'Porokote', 'পরকোট', 'porokoteup.noakhali.gov.bd'),
(458, 50, 'Badalkot', 'বাদলকোট', 'badalkotup.noakhali.gov.bd'),
(459, 50, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.noakhali.gov.bd'),
(460, 50, 'Hat-Pukuria Ghatlabag', 'হাট-পুকুরিয়া ঘাটলাবাগ', 'hatpukuriaghatlabagup.noakhali.gov.bd'),
(461, 50, 'Noakhala', 'নোয়াখলা', 'noakhalaup.noakhali.gov.bd'),
(462, 50, 'Khilpara', 'খিলপাড়া', 'khilparaup.noakhali.gov.bd'),
(463, 50, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpuru5p.noakhali.gov.bd'),
(464, 51, 'Joyag', 'জয়াগ', 'joyagup.noakhali.gov.bd'),
(465, 51, 'Nodona', 'নদনা', 'nodonaup.noakhali.gov.bd'),
(466, 51, 'Chashirhat', 'চাষীরহাট', 'chashirhatup.noakhali.gov.bd'),
(467, 51, 'Barogaon', 'বারগাঁও', 'barogaonup.noakhali.gov.bd'),
(468, 51, 'Ambarnagor', 'অম্বরনগর', 'ambarnagorup.noakhali.gov.bd'),
(469, 51, 'Nateshwar', 'নাটেশ্বর', 'nateshwarup.noakhali.gov.bd'),
(470, 51, 'Bajra', 'বজরা', 'bajraup.noakhali.gov.bd'),
(471, 51, 'Sonapur', 'সোনাপুর', 'sonapurup.noakhali.gov.bd'),
(472, 51, 'Deoti', 'দেওটি', 'deotiup.noakhali.gov.bd'),
(473, 51, 'Amishapara', 'আমিশাপাড়া', 'amishaparaup.noakhali.gov.bd'),
(474, 52, 'Gazipur', 'গাজীপুর', 'gazipurup.chandpur.gov.bd'),
(475, 52, 'Algidurgapur (North)', 'আলগী দুর্গাপুর (উত্তর)', 'algidurgapurnorthup.chandpur.gov.bd'),
(476, 52, 'Algidurgapur (South)', 'আলগী দুর্গাপুর (দক্ষিণ)', 'algidurgapursouth.chandpur.gov.bd'),
(477, 52, 'Nilkamal', 'নীলকমল', 'nilkamalup.chandpur.gov.bd'),
(478, 52, 'Haimchar', 'হাইমচর', 'haimcharup.chandpur.gov.bd'),
(479, 52, 'Charbhairabi', 'চরভৈরবী', 'charbhairabiup.chandpur.gov.bd'),
(480, 53, 'Pathair', 'পাথৈর', 'pathairup.chandpur.gov.bd'),
(481, 53, 'Bitara', 'বিতারা', 'bitaraup.chandpur.gov.bd'),
(482, 53, 'Shohodebpur (East)', 'সহদেবপুর (পূর্ব)', 'shohodebpureastup.chandpur.gov.bd'),
(483, 53, 'Shohodebpur (West)', 'সহদেবপুর (পশ্চিম)', 'shohodebpurwestup.chandpur.gov.bd'),
(484, 53, 'Kachua (North)', 'কচুয়া (উত্তর)', 'kachuanorthup.chandpur.gov.bd'),
(485, 53, 'Kachua (South)', 'কচুয়া (দক্ষিণ)', 'kachuasouthup.chandpur.gov.bd'),
(486, 53, 'Gohat (North)', 'গোহাট (উত্তর)', 'gohatnorthup.chandpur.gov.bd'),
(487, 53, 'Kadla', 'কাদলা', 'kadlaup.chandpur.gov.bd'),
(488, 53, 'Ashrafpur', 'আসরাফপুর', 'ashrafpurup.chandpur.gov.bd'),
(489, 53, 'Gohat (South)', 'গোহাট (দক্ষিণ)', 'gohatsouthup.chandpur.gov.bd'),
(490, 53, 'Sachar', 'সাচার', 'sacharup.chandpur.gov.bd'),
(491, 53, 'Koroia', 'কড়ইয়া', 'koroiaup.chandpur.gov.bd'),
(492, 54, 'Tamta (South)', 'টামটা (দক্ষিণ)', 'tamtasouthup.chandpur.gov.bd'),
(493, 54, 'Tamta (North)', 'টামটা (উত্তর)', 'tamtanorthup.chandpur.gov.bd'),
(494, 54, 'Meher (North)', 'মেহের (উত্তর)', 'mehernorthup.chandpur.gov.bd'),
(495, 54, 'Meher (South)', 'মেহের (দক্ষিণ)', 'mehersouthup.chandpur.gov.bd'),
(496, 54, 'Suchipara (North)', 'সুচিপাড়া (উত্তর)', 'suchiparanorthup.chandpur.gov.bd'),
(497, 54, 'Suchipara (South)', 'সুচিপাড়া (দক্ষিণ)', 'suchiparasouthup.chandpur.gov.bd'),
(498, 54, 'Chitoshi (East)', 'চিতষী (পূর্ব)', 'chitoshieastup.chandpur.gov.bd'),
(499, 54, 'Raysree (South)', 'রায়শ্রী (দক্ষিন)', 'raysreesouthup.chandpur.gov.bd'),
(500, 54, 'Raysree (North)', 'রায়শ্রী (উত্তর)', 'raysreenorthup.chandpur.gov.bd'),
(501, 54, 'Chitoshiwest', 'চিতষী (পশ্চিম)', 'chitoshiwestup.chandpur.gov.bd'),
(502, 55, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.chandpur.gov.bd'),
(503, 55, 'Ashikati', 'আশিকাটি', 'ashikatiup.chandpur.gov.bd'),
(504, 55, 'Shahmahmudpur', 'শাহ্‌ মাহমুদপুর', 'shahmahmudpurup.chandpur.gov.bd'),
(505, 55, 'Kalyanpur', 'কল্যাণপুর', 'kalyanpurup.chandpur.gov.bd'),
(506, 55, 'Rampur', 'রামপুর', 'rampurup.chandpur.gov.bd'),
(507, 55, 'Maishadi', 'মৈশাদী', 'maishadiup.chandpur.gov.bd'),
(508, 55, 'Tarpurchandi', 'তরপুচন্ডী', 'tarpurchandiup.chandpur.gov.bd'),
(509, 55, 'Baghadi', 'বাগাদী', 'baghadiup.chandpur.gov.bd'),
(510, 55, 'Laxmipur Model', 'লক্ষীপুর মডেল', 'laxmipurmodelup.chandpur.gov.bd'),
(511, 55, 'Hanarchar', 'হানারচর', 'hanarcharup.chandpur.gov.bd'),
(512, 55, 'Chandra', 'চান্দ্রা', 'chandraup.chandpur.gov.bd'),
(513, 55, 'Rajrajeshwar', 'রাজরাজেশ্বর', 'rajrajeshwarup.chandpur.gov.bd'),
(514, 55, 'Ibrahimpur', 'ইব্রাহীমপুর', 'ibrahimpurup.chandpur.gov.bd'),
(515, 55, 'Balia', 'বালিয়া', 'baliaup.chandpur.gov.bd'),
(516, 56, 'Nayergaon (North)', 'নায়েরগাঁও (উত্তর)', 'nayergaonnorthup.chandpur.gov.bd'),
(517, 56, 'Nayergaon (South)', 'নায়েরগাঁও (দক্ষিন)', 'nayergaonsouthup.chandpur.gov.bd'),
(518, 56, 'Khadergaon', 'খাদেরগাঁও', 'khadergaonup.chandpur.gov.bd'),
(519, 56, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chandpur.gov.bd'),
(520, 56, 'Upadi (South)', 'উপাদী (দক্ষিণ)', 'upadisouthup.chandpur.gov.bd'),
(521, 56, 'Upadi (North)', 'উপাদী (উত্তর)', 'upadinorthup.chandpur.gov.bd'),
(522, 57, 'Rajargaon (North)', 'রাজারগাঁও (উত্তর)', 'rajargaonnorthup.chandpur.gov.bd'),
(523, 57, 'Bakila', 'বাকিলা', 'bakilaup.chandpur.gov.bd'),
(524, 57, 'Kalocho (North)', 'কালচোঁ (উত্তর)', 'kalochonorthup.chandpur.gov.bd'),
(525, 57, 'Hajiganj Sadar', 'হাজীগঞ্জ সদর', 'hajiganjsadarup.chandpur.gov.bd'),
(526, 57, 'Kalocho (South)', 'কালচোঁ (দক্ষিণ)', 'kalochosouthup.chandpur.gov.bd'),
(527, 57, 'Barkul (East)', 'বড়কুল (পূর্ব)', 'barkuleastup.chandpur.gov.bd'),
(528, 57, 'Barkul (West)', 'বড়কুল (পশ্চিম)', 'barkulwestup.chandpur.gov.bd'),
(529, 57, 'Hatila (East)', 'হাটিলা (পূর্ব)', 'hatilaeastup.chandpur.gov.bd'),
(530, 57, 'Hatila (West)', 'হাটিলা (পশ্চিম)', 'hatilawestup.chandpur.gov.bd'),
(531, 57, 'Gandharbapur (North)', 'গন্ধর্ব্যপুর (উত্তর)', 'gandharbapurnorthup.chandpur.gov.bd'),
(532, 57, 'Gandharbapur (South)', 'গন্ধর্ব্যপুর (দক্ষিণ)', 'gandharbapursouthup.chandpur.gov.bd'),
(533, 58, 'Satnal', 'ষাটনল', 'satnalup.chandpur.gov.bd'),
(534, 58, 'Banganbari', 'বাগানবাড়ী', 'banganbariup.chandpur.gov.bd'),
(535, 58, 'Sadullapur', 'সাদুল্ল্যাপুর', 'sadullapurup.chandpur.gov.bd'),
(536, 58, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chandpur.gov.bd'),
(537, 58, 'Kalakanda', 'কালাকান্দা', 'kalakandaup.chandpur.gov.bd'),
(538, 58, 'Mohanpur', 'মোহনপুর', 'mohanpurup.chandpur.gov.bd'),
(539, 58, 'Eklaspur', 'এখলাছপুর', 'eklaspurup.chandpur.gov.bd'),
(540, 58, 'Jahirabad', 'জহিরাবাদ', 'jahirabadup.chandpur.gov.bd'),
(541, 58, 'Fatehpur (East)', 'ফতেহপুর (পূর্ব)', 'eastfatehpur.chandpur.gov.bd'),
(542, 58, 'Fatehpur (West)', 'ফতেহপুর (পশ্চিম)', 'westfatehpurup.chandpur.gov.bd'),
(543, 58, 'Farajikandi', 'ফরাজীকান্দি', 'farajikandiup.chandpur.gov.bd'),
(544, 58, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.chandpur.gov.bd'),
(545, 58, 'Sultanabad', 'সুলতানাবাদ', 'sultanabadup.chandpur.gov.bd'),
(546, 58, 'Gazra', 'গজরা', 'gazraup.chandpur.gov.bd'),
(547, 59, 'Balithuba (West)', 'বালিথুবা (পশ্চিম)', 'balithubawestup.chandpur.gov.bd'),
(548, 59, 'Balithuba (East)', 'বালিথুবা (পূর্ব)', 'balithubaeastup.chandpur.gov.bd'),
(549, 59, 'Subidpur (East)', 'সুবিদপুর (পূর্ব)', 'subidpureastup.chandpur.gov.bd'),
(550, 59, 'Subidpur (West)', 'সুবিদপুর (পশ্চিম)', 'subidpurwestup.chandpur.gov.bd'),
(551, 59, 'Gupti (West)', 'গুপ্তি (পশ্চিম)', 'guptiwestup.chandpur.gov.bd'),
(552, 59, 'Gupti (East)', 'গুপ্তি (পূর্ব)', 'guptieastup.chandpur.gov.bd'),
(553, 59, 'Paikpara (North)', 'পাইকপাড়া (উত্তর)', 'paikparanorthup.chandpur.gov.bd'),
(554, 59, 'Paikpara (South)', 'পাইকপাড়া (দক্ষিণ)', 'paikparasouthup.chandpur.gov.bd'),
(555, 59, 'Gobindapur (North)', 'গবিন্দপুর (উত্তর)', 'gobindapurnorthup.chandpur.gov.bd'),
(556, 59, 'Gobindapur (South)', 'গবিন্দপুর (দক্ষিণ)', 'gobindapursouthup.chandpur.gov.bd'),
(557, 59, 'Chardukhia (East)', 'চরদুখিয়া (পূর্ব)', 'chardukhiaeastup.chandpur.gov.bd'),
(558, 59, 'Chardukhia (West)', 'চরদুঃখিয়া (পশ্চিম)', 'chardukhiawestup.chandpur.gov.bd'),
(559, 59, 'Faridgonj (South)', 'ফরিদ্গঞ্জ (দক্ষিণ)', 'faridgonjsouthup.chandpur.gov.bd'),
(560, 59, 'Rupsha (South)', 'রুপসা (দক্ষিণ)', 'rupshasouthup.chandpur.gov.bd'),
(561, 59, 'Rupsha (North)', 'রুপসা (উত্তর)', 'rupshanorthup.chandpur.gov.bd'),
(562, 60, 'Hamsadi (North)', 'হামছাদী (উত্তর)', 'northhamsadiup.lakshmipur.gov.bd'),
(563, 60, 'Hamsadi (South)', 'হামছাদী (দক্ষিন)', 'southhamsadiup.lakshmipur.gov.bd'),
(564, 60, 'Dalalbazar', 'দালাল বাজার', 'dalalbazarup.lakshmipur.gov.bd'),
(565, 60, 'Charruhita', 'চররুহিতা', 'charruhitaup.lakshmipur.gov.bd'),
(566, 60, 'Parbotinagar', 'পার্বতীনগর', 'parbotinagarup.lakshmipur.gov.bd'),
(567, 60, 'Bangakha', 'বাঙ্গাখাঁ', 'bangakhaup.lakshmipur.gov.bd'),
(568, 60, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.lakshmipur.gov.bd'),
(569, 60, 'Basikpur', 'বশিকপুর', 'basikpurup.lakshmipur.gov.bd'),
(570, 60, 'Chandrogonj', 'চন্দ্রগঞ্জ', 'chandrogonjup.lakshmipur.gov.bd'),
(571, 60, 'Nourthjoypur', 'উত্তর জয়পুর', 'nourthjoypurup.lakshmipur.gov.bd'),
(572, 60, 'Hazirpara', 'হাজিরপাড়া', 'hazirparaup.lakshmipur.gov.bd'),
(573, 60, 'Charshahi', 'চরশাহী', 'charshahiup.lakshmipur.gov.bd'),
(574, 60, 'Digli', 'দিঘলী', 'digliup.lakshmipur.gov.bd'),
(575, 60, 'Laharkandi', 'লাহারকান্দি', 'laharkandiup.lakshmipur.gov.bd'),
(576, 60, 'Vobanigonj', 'ভবানীগঞ্জ', 'vobanigonjup.lakshmipur.gov.bd'),
(577, 60, 'Kusakhali', 'কুশাখালী', 'kusakhaliup.lakshmipur.gov.bd'),
(578, 60, 'Sakchor', 'শাকচর', 'sakchorup.lakshmipur.gov.bd'),
(579, 60, 'Tearigonj', 'তেয়ারীগঞ্জ', 'tearigonjup.lakshmipur.gov.bd'),
(580, 60, 'Tumchor', 'টুমচর', 'tumchorup.lakshmipur.gov.bd'),
(581, 60, 'Charramoni Mohon', 'চররমনী মোহন', 'charramonimohonup.lakshmipur.gov.bd'),
(582, 61, 'Charkalkini', 'চর কালকিনি', 'charkalkiniup.lakshmipur.gov.bd'),
(583, 61, 'Shaheberhat', 'সাহেবেরহাট', 'shaheberhatup.lakshmipur.gov.bd'),
(584, 61, 'Char Martin', 'চর মার্টিন', 'charmartinup.lakshmipur.gov.bd'),
(585, 61, 'Char Folcon', 'চর ফলকন', 'charfolconup.lakshmipur.gov.bd'),
(586, 61, 'Patarirhat', 'পাটারীরহাট', 'patarirhatup.lakshmipur.gov.bd'),
(587, 61, 'Hajirhat', 'হাজিরহাট', 'hajirhatup.lakshmipur.gov.bd'),
(588, 61, 'Char Kadira', 'চর কাদিরা', 'charkadiraup.lakshmipur.gov.bd'),
(589, 61, 'Torabgonj', 'তোরাবগঞ্জ', 'torabgonjup.lakshmipur.gov.bd'),
(590, 61, 'Charlorench', 'চর লরেঞ্চ', 'charlorenchup.lakshmipur.gov.bd'),
(591, 62, 'North Char Ababil', 'উত্তর চর আবাবিল', 'northcharababilup.lakshmipur.gov.bd'),
(592, 62, 'North Char Bangshi', 'উত্তর চর বংশী', 'northcharbangshiup.lakshmipur.gov.bd'),
(593, 62, 'Char Mohana', 'চর মোহনা', 'charmohanaup.lakshmipur.gov.bd'),
(594, 62, 'Sonapur', 'সোনাপুর', 'sonapurup.lakshmipur.gov.bd'),
(595, 62, 'Charpata', 'চর পাতা', 'charpataup.lakshmipur.gov.bd'),
(596, 62, 'Bamni', 'বামনী', 'bamniup.lakshmipur.gov.bd'),
(597, 62, 'South Char Bangshi', 'দক্ষিন চর বংশী', 'southcharbangshiup.lakshmipur.gov.bd'),
(598, 62, 'South Char Ababil', 'দক্ষিন চর আবাবিল', 'southcharababilup.lakshmipur.gov.bd'),
(599, 62, 'Raipur', 'রায়পুর', 'raipurup.lakshmipur.gov.bd'),
(600, 62, 'Keora', 'কেরোয়া', 'keoraup.lakshmipur.gov.bd'),
(601, 63, 'Char Poragacha', 'চর পোড়াগাছা', 'charporagachaup.lakshmipur.gov.bd'),
(602, 63, 'Charbadam', 'চর বাদাম', 'charbadamup.lakshmipur.gov.bd'),
(603, 63, 'Char Abdullah', 'চর আবদুল্যাহ', 'charabdullahup.lakshmipur.gov.bd'),
(604, 63, 'Alxendar', 'আলেকজান্ডার', 'alxendarup.lakshmipur.gov.bd'),
(605, 63, 'Char Algi', 'চর আলগী', 'charalgiup.lakshmipur.gov.bd'),
(606, 63, 'Char Ramiz', 'চর রমিজ', 'charramizup.lakshmipur.gov.bd'),
(607, 63, 'Borokheri', 'বড়খেড়ী', 'borokheriup.lakshmipur.gov.bd'),
(608, 63, 'Chargazi', 'চরগাজী', 'chargaziup.lakshmipur.gov.bd'),
(609, 64, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.lakshmipur.gov.bd'),
(610, 64, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.lakshmipur.gov.bd'),
(611, 64, 'Bhadur', 'ভাদুর', 'bhadurup.lakshmipur.gov.bd'),
(612, 64, 'Ichhapur', 'ইছাপুর', 'ichhapurup.lakshmipur.gov.bd'),
(613, 64, 'Chandipur', 'চন্ডিপুর', 'chandipurup.lakshmipur.gov.bd'),
(614, 64, 'Lamchar', 'লামচর', 'lamcharup.lakshmipur.gov.bd'),
(615, 64, 'Darbeshpur', 'দরবেশপুর', 'darbeshpurup.lakshmipur.gov.bd'),
(616, 64, 'Karpara', 'করপাড়া', 'karparaup.lakshmipur.gov.bd'),
(617, 64, 'Bholakot', 'ভোলাকোট', 'bholakotup.lakshmipur.gov.bd'),
(618, 64, 'Bhatra', 'ভাটরা', 'bhatraup.lakshmipur.gov.bd'),
(619, 65, 'Rajanagar', 'রাজানগর', 'rajanagarup.chittagong.gov.bd'),
(620, 65, 'Hosnabad', 'হোছনাবাদ', 'hosnabadup.chittagong.gov.bd'),
(621, 65, 'Swanirbor Rangunia', 'স্বনির্ভর রাঙ্গুনিয়া', 'swanirborranguniaup.chittagong.gov.bd'),
(622, 65, 'Mariumnagar', 'মরিয়মনগর', 'mariumnagarup.chittagong.gov.bd'),
(623, 65, 'Parua', 'পারুয়া', 'paruaup.chittagong.gov.bd'),
(624, 65, 'Pomra', 'পোমরা', 'pomraup.chittagong.gov.bd'),
(625, 65, 'Betagi', 'বেতাগী', 'betagiup.chittagong.gov.bd'),
(626, 65, 'Sharafbhata', 'সরফভাটা', 'sharafbhataup.chittagong.gov.bd'),
(627, 65, 'Shilok', 'শিলক', 'shilokup.chittagong.gov.bd'),
(628, 65, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.chittagong.gov.bd'),
(629, 65, 'Kodala', 'কোদালা', 'kodalaup.chittagong.gov.bd'),
(630, 65, 'Islampur', 'ইসলামপুর', 'islampurup.chittagong.gov.bd'),
(631, 65, 'South Rajanagar', 'দক্ষিণ রাজানগর', 'southrajanagarup.chittagong.gov.bd'),
(632, 65, 'Lalanagar', 'লালানগর', 'lalanagarup.chittagong.gov.bd'),
(633, 66, 'Kumira', 'কুমিরা', 'kumiraup.chittagong.gov.bd'),
(634, 66, 'Banshbaria', 'বাঁশবারীয়া', 'banshbariaup.chittagong.gov.bd'),
(635, 66, 'Barabkunda', 'বারবকুন্ড', 'barabkundaup.chittagong.gov.bd'),
(636, 66, 'Bariadyala', 'বাড়িয়াডিয়ালা', 'bariadyalaup.chittagong.gov.bd'),
(637, 66, 'Muradpur', 'মুরাদপুর', 'muradpurup.chittagong.gov.bd'),
(638, 66, 'Saidpur', 'সাঈদপুর', 'saidpurup.chittagong.gov.bd'),
(639, 66, 'Salimpur', 'সালিমপুর', 'salimpurup.chittagong.gov.bd'),
(640, 66, 'Sonaichhari', 'সোনাইছড়ি', 'sonaichhariup.chittagong.gov.bd'),
(641, 66, 'Bhatiari', 'ভাটিয়ারী', 'bhatiariup.chittagong.gov.bd'),
(642, 67, 'Korerhat', 'করেরহাট', 'korerhatup.chittagong.gov.bd'),
(643, 67, 'Hinguli', 'হিংগুলি', 'hinguliup.chittagong.gov.bd'),
(644, 67, 'Jorarganj', 'জোরারগঞ্জ', 'jorarganjup.chittagong.gov.bd'),
(645, 67, 'Dhoom', 'ধুম', 'dhoomup.chittagong.gov.bd'),
(646, 67, 'Osmanpur', 'ওসমানপুর', 'osmanpurup.chittagong.gov.bd'),
(647, 67, 'Ichakhali', 'ইছাখালী', 'ichakhaliup.chittagong.gov.bd'),
(648, 67, 'Katachhara', 'কাটাছরা', 'katachharaup.chittagong.gov.bd'),
(649, 67, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chittagong.gov.bd'),
(650, 67, 'Mirsharai', 'মীরসরাই', 'mirsharaiup.chittagong.gov.bd'),
(651, 67, 'Mithanala', 'মিঠানালা', 'mithanalaup.chittagong.gov.bd'),
(652, 67, 'Maghadia', 'মঘাদিয়া', 'maghadiaup.chittagong.gov.bd'),
(653, 67, 'Khaiyachhara', 'খৈয়াছরা', 'khaiyachharaup.chittagong.gov.bd'),
(654, 67, 'Mayani', 'মায়ানী', 'mayaniup.chittagong.gov.bd'),
(655, 67, 'Haitkandi', 'হাইতকান্দি', 'haitkandiup.chittagong.gov.bd'),
(656, 67, 'Wahedpur', 'ওয়াহেদপুর', 'wahedpurup.chittagong.gov.bd'),
(657, 67, 'Saherkhali', 'সাহেরখালী', 'saherkhaliup.chittagong.gov.bd'),
(658, 68, 'Asia', 'আশিয়া', 'asiaup.chittagong.gov.bd'),
(659, 68, 'Kachuai', 'কাচুয়াই', 'kachuaiup.chittagong.gov.bd'),
(660, 68, 'Kasiais', 'কাশিয়াইশ', 'kasiaisup.chittagong.gov.bd'),
(661, 68, 'Kusumpura', 'কুসুমপুরা', 'kusumpuraup.chittagong.gov.bd'),
(662, 68, 'Kelishahar', 'কেলিশহর', 'kelishaharup.chittagong.gov.bd'),
(663, 68, 'Kolagaon', 'কোলাগাঁও', 'kolagaonup.chittagong.gov.bd'),
(664, 68, 'Kharana', 'খরনা', 'kharanaup.chittagong.gov.bd'),
(665, 68, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd'),
(666, 68, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd'),
(667, 68, 'Chanhara', 'ছনহরা', 'chanharaup.chittagong.gov.bd'),
(668, 68, 'Janglukhain', 'জঙ্গলখাইন', 'janglukhainup.chittagong.gov.bd'),
(669, 68, 'Jiri', 'জিরি', 'jiriup.chittagong.gov.bd'),
(670, 68, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd'),
(671, 68, 'Dakkhin Bhurshi', 'দক্ষিণ ভূর্ষি', 'dakhinbhurshiup.chittagong.gov.bd'),
(672, 68, 'Dhalghat', 'ধলঘাট', 'dhalghatup.chittagong.gov.bd'),
(673, 68, 'Bara Uthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd'),
(674, 68, 'Baralia', 'বরলিয়া', 'baraliaup.chittagong.gov.bd'),
(675, 68, 'Bhatikhain', 'ভাটিখাইন', 'bhatikhainup.chittagong.gov.bd'),
(676, 68, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd'),
(677, 68, 'Sobhandandi', 'শোভনদন্ডী', 'sobhandandiup.chittagong.gov.bd'),
(678, 68, 'Habilasdwi', 'হাবিলাসদ্বীপ', 'habilasdwipup.chittagong.gov.bd'),
(679, 68, 'Haidgaon', 'হাইদগাঁও', 'haidgaonup.chittagong.gov.bd'),
(680, 69, 'Rahmatpur', 'রহমতপুর', 'rahmatpurup.chittagong.gov.bd'),
(681, 69, 'Harispur', 'হরিশপুর', 'harispurup.chittagong.gov.bd'),
(682, 69, 'Kalapania', 'কালাপানিয়া', 'kalapaniaup.chittagong.gov.bd'),
(683, 69, 'Amanullah', 'আমানউল্যা', 'amanullahup.chittagong.gov.bd'),
(684, 69, 'Santoshpur', 'সন্তোষপুর', 'santoshpurup.chittagong.gov.bd'),
(685, 69, 'Gachhua', 'গাছুয়া', 'gachhuaup.chittagong.gov.bd'),
(686, 69, 'Bauria', 'বাউরিয়া', 'bauriaup.chittagong.gov.bd'),
(687, 69, 'Haramia', 'হারামিয়া', 'haramiaup.chittagong.gov.bd'),
(688, 69, 'Magdhara', 'মগধরা', 'magdharaup.chittagong.gov.bd'),
(689, 69, 'Maitbhanga', 'মাইটভাঙ্গা', 'maitbhangaup.chittagong.gov.bd'),
(690, 69, 'Sarikait', 'সারিকাইত', 'sarikaitup.chittagong.gov.bd'),
(691, 69, 'Musapur', 'মুছাপুর', 'musapurup.chittagong.gov.bd'),
(692, 69, 'Azimpur', 'আজিমপুর', 'azimpurup.chittagong.gov.bd'),
(693, 69, 'Urirchar', 'উড়িরচর', 'urircharup.chittagong.gov.bd'),
(694, 70, 'Pukuria', 'পুকুরিয়া', 'pukuriaup.chittagong.gov.bd'),
(695, 70, 'Sadhanpur', 'সাধনপুর', 'sadhanpurup.chittagong.gov.bd'),
(696, 70, 'Khankhanabad', 'খানখানাবাদ', 'khankhanabadup.chittagong.gov.bd'),
(697, 70, 'Baharchhara', 'বাহারছড়া', 'baharchharaup.chittagong.gov.bd'),
(698, 70, 'Kalipur', 'কালীপুর', 'kalipurup.chittagong.gov.bd'),
(699, 70, 'Bailchhari', 'বৈলছড়ি', 'bailchhariup.chittagong.gov.bd'),
(700, 70, 'Katharia', 'কাথরিয়া', 'kathariaup.chittagong.gov.bd'),
(701, 70, 'Saral', 'সরল', 'saralup.chittagong.gov.bd'),
(702, 70, 'Silk', 'শীলকুপ', 'silkupup.chittagong.gov.bd'),
(703, 70, 'Chambal', 'চাম্বল', 'chambalup.chittagong.gov.bd'),
(704, 70, 'Gandamara', 'গন্ডামারা', 'gandamaraup.chittagong.gov.bd'),
(705, 70, 'Sekherkhil', 'শেখেরখীল', 'sekherkhilup.chittagong.gov.bd'),
(706, 70, 'Puichhari', 'পুঁইছড়ি', 'puichhariup.chittagong.gov.bd'),
(707, 70, 'Chhanua', 'ছনুয়া', 'chhanuaup.chittagong.gov.bd'),
(708, 71, 'Kandhurkhil', 'কধুরখীল', 'kandhurkhilup.chittagong.gov.bd'),
(709, 71, 'Pashchim Gamdandi', 'পশ্চিম গোমদন্ডী', 'pashchimgamdandiup.chittagong.gov.bd'),
(710, 71, 'Purba Gomdandi', 'পুর্ব গোমদন্ডী', 'purbagomdandiup.chittagong.gov.bd'),
(711, 71, 'Sakpura', 'শাকপুরা', 'sakpuraup.chittagong.gov.bd'),
(712, 71, 'Saroatali', 'সারোয়াতলী', 'saroataliup.chittagong.gov.bd'),
(713, 71, 'Popadia', 'পোপাদিয়া', 'popadiaup.chittagong.gov.bd'),
(714, 71, 'Charandwi', 'চরনদ্বীপ', 'charandwipup.chittagong.gov.bd'),
(715, 71, 'Sreepur-Kharandwi', 'শ্রীপুর-খরন্দীপ', 'sreepurkharandwipup.chittagong.gov.bd'),
(716, 71, 'Amuchia', 'আমুচিয়া', 'amuchiaup.chittagong.gov.bd'),
(717, 71, 'Ahla Karaldenga', 'আহল্লা করলডেঙ্গা', 'ahlakaraldengaup.chittagong.gov.bd'),
(718, 72, 'Boirag', 'বৈরাগ', 'boiragup.chittagong.gov.bd'),
(719, 72, 'Barasat', 'বারশত', 'barasatup.chittagong.gov.bd'),
(720, 72, 'Raipur', 'রায়পুর', 'raipurup.chittagong.gov.bd'),
(721, 72, 'Battali', 'বটতলী', 'battaliup.chittagong.gov.bd'),
(722, 72, 'Barumchara', 'বরম্নমচড়া', 'barumcharaup.chittagong.gov.bd'),
(723, 72, 'Baroakhan', 'বারখাইন', 'baroakhanup.chittagong.gov.bd'),
(724, 72, 'Anwara', 'আনোয়ারা', 'anwaraup.chittagong.gov.bd'),
(725, 72, 'Chatari', 'চাতরী', 'chatariup.chittagong.gov.bd'),
(726, 72, 'Paraikora', 'পরৈকোড়া', 'paraikoraup.chittagong.gov.bd'),
(727, 72, 'Haildhar', 'হাইলধর', 'haildharup.chittagong.gov.bd'),
(728, 72, 'Juidandi', 'জুঁইদন্ডী', 'juidandiup.chittagong.gov.bd'),
(729, 73, 'Kanchanabad', 'কাঞ্চনাবাদ', 'kanchanabadup.chittagong.gov.bd'),
(730, 73, 'Joara', 'জোয়ারা', 'joaraup.chittagong.gov.bd'),
(731, 73, 'Barkal', 'বরকল', 'barkalup.chittagong.gov.bd'),
(732, 73, 'Barama', 'বরমা', 'baramaup.chittagong.gov.bd'),
(733, 73, 'Bailtali', 'বৈলতলী', 'bailtaliup.chittagong.gov.bd'),
(734, 73, 'Satbaria', 'সাতবাড়িয়া', 'satbariaup.chittagong.gov.bd'),
(735, 73, 'Hashimpur', 'হাশিমপুর', 'hashimpurup.chittagong.gov.bd'),
(736, 73, 'Dohazari', 'দোহাজারী', 'dohazariup.chittagong.gov.bd'),
(737, 73, 'Dhopachhari', 'ধোপাছড়ী', 'dhopachhariup.chittagong.gov.bd'),
(738, 74, 'Charati', 'চরতী', 'charatiup.chittagong.gov.bd'),
(739, 74, 'Khagaria', 'খাগরিয়া', 'khagariaup.chittagong.gov.bd'),
(740, 74, 'Nalua', 'নলুয়া', 'naluaup.chittagong.gov.bd'),
(741, 74, 'Kanchana', 'কাঞ্চনা', 'kanchanaup.chittagong.gov.bd'),
(742, 74, 'Amilaisi', 'আমিলাইশ', 'amilaisiup.chittagong.gov.bd'),
(743, 74, 'Eochiai', 'এওচিয়া', 'eochiaiup.chittagong.gov.bd'),
(744, 74, 'Madarsa', 'মাদার্শা', 'madarsaup.chittagong.gov.bd'),
(745, 74, 'Dhemsa', 'ঢেমশা', 'dhemsaup.chittagong.gov.bd'),
(746, 74, 'Paschim Dhemsa', 'পশ্চিম ঢেমশা', 'paschimdhemsaup.chittagong.gov.bd'),
(747, 74, 'Keochia', 'কেঁওচিয়া', 'keochiaup.chittagong.gov.bd'),
(748, 74, 'Kaliais', 'কালিয়াইশ', 'kaliaisup.chittagong.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(749, 74, 'Bazalia', 'বাজালিয়া', 'bazaliaup.chittagong.gov.bd'),
(750, 74, 'Puranagar', 'পুরানগড়', 'puranagarup.chittagong.gov.bd'),
(751, 74, 'Sadaha', 'ছদাহা', 'sadahaup.chittagong.gov.bd'),
(752, 74, 'Satkania', 'সাতকানিয়া', 'satkaniaup.chittagong.gov.bd'),
(753, 74, 'Sonakania', 'সোনাকানিয়া', 'sonakaniaup.chittagong.gov.bd'),
(754, 75, 'Padua', 'পদুয়া', 'paduaup.chittagong.gov.bd'),
(755, 75, 'Barahatia', 'বড়হাতিয়া', 'barahatiaup.chittagong.gov.bd'),
(756, 75, 'Amirabad', 'আমিরাবাদ', 'amirabadup.chittagong.gov.bd'),
(757, 75, 'Charamba', 'চরম্বা', 'charambaup.chittagong.gov.bd'),
(758, 75, 'Kalauzan', 'কলাউজান', 'kalauzanup.chittagong.gov.bd'),
(759, 75, 'Lohagara', 'লোহাগাড়া', 'lohagaraup.chittagong.gov.bd'),
(760, 75, 'Putibila', 'পুটিবিলা', 'putibilaup.chittagong.gov.bd'),
(761, 75, 'Chunati', 'চুনতি', 'chunatiup.chittagong.gov.bd'),
(762, 75, 'Adhunagar', 'আধুনগর', 'adhunagarup.chittagong.gov.bd'),
(763, 76, 'Farhadabad', 'ফরহাদাবাদ', 'farhadabadup.chittagong.gov.bd'),
(764, 76, 'Dhalai', 'ধলই', 'dhalaiup.chittagong.gov.bd'),
(765, 76, 'Mirjapur', 'মির্জাপুর', 'mirjapurup.chittagong.gov.bd'),
(766, 76, 'Nangolmora', 'নাঙ্গলমোরা', 'nangolmoraup.chittagong.gov.bd'),
(767, 76, 'Gomanmordan', 'গুমানমর্দ্দন', 'gomanmordanup.chittagong.gov.bd'),
(768, 76, 'Chipatali', 'ছিপাতলী', 'chipataliup.chittagong.gov.bd'),
(769, 76, 'Mekhal', 'মেখল', 'mekhalup.chittagong.gov.bd'),
(770, 76, 'Garduara', 'গড়দুয়ারা', 'garduaraup.chittagong.gov.bd'),
(771, 76, 'Fathepur', 'ফতেপুর', 'fathepurup.chittagong.gov.bd'),
(772, 76, 'Chikondandi', 'চিকনদন্ডী', 'chikondandiup.chittagong.gov.bd'),
(773, 76, 'Uttar Madrasha', 'উত্তর মাদার্শা', 'uttarmadrashaup.chittagong.gov.bd'),
(774, 76, 'Dakkin Madrasha', 'দক্ষিন মাদার্শা', 'dakkinmadrashaup.chittagong.gov.bd'),
(775, 76, 'Sikarpur', 'শিকারপুর', 'sikarpurup.chittagong.gov.bd'),
(776, 76, 'Budirchar', 'বুডিরশ্চর', 'budircharup.chittagong.gov.bd'),
(777, 76, 'Hathazari', 'হাটহাজারী', 'hathazariup.chittagong.gov.bd'),
(778, 77, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.chittagong.gov.bd'),
(779, 77, 'Baganbazar', 'বাগান বাজার', 'baganbazarup.chittagong.gov.bd'),
(780, 77, 'Dantmara', 'দাঁতমারা', 'dantmaraup.chittagong.gov.bd'),
(781, 77, 'Narayanhat', 'নারায়নহাট', 'narayanhatup.chittagong.gov.bd'),
(782, 77, 'Bhujpur', 'ভূজপুর', 'bhujpurup.chittagong.gov.bd'),
(783, 77, 'Harualchari', 'হারুয়ালছড়ি', 'harualchariup.chittagong.gov.bd'),
(784, 77, 'Paindong', 'পাইনদং', 'paindongup.chittagong.gov.bd'),
(785, 77, 'Kanchannagor', 'কাঞ্চনগর', 'kanchannagorup.chittagong.gov.bd'),
(786, 77, 'Sunderpur', 'সুনদরপুর', 'sunderpurup.chittagong.gov.bd'),
(787, 77, 'Suabil', 'সুয়াবিল', 'Suabilup.chittagong.gov.bd'),
(788, 77, 'Abdullapur', 'আবদুল্লাপুর', 'abdullapurup.chittagong.gov.bd'),
(789, 77, 'Samitirhat', 'সমিতির হাট', 'samitirhatup.chittagong.gov.bd'),
(790, 77, 'Jafathagar', 'জাফতনগর', 'jafathagarup.chittagong.gov.bd'),
(791, 77, 'Bokhtapur', 'বক্তপুর', 'bokhtapurup.chittagong.gov.bd'),
(792, 77, 'Roshangiri', 'রোসাংগিরী', 'roshangiriup.chittagong.gov.bd'),
(793, 77, 'Nanupur', 'নানুপুর', 'nanupurup.chittagong.gov.bd'),
(794, 77, 'Lelang', 'লেলাং', 'lelangup.chittagong.gov.bd'),
(795, 77, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.chittagong.gov.bd'),
(796, 78, 'Raozan', 'রাউজান', 'raozanup.chittagong.gov.bd'),
(797, 78, 'Bagoan', 'বাগোয়ান', 'bagoanup.chittagong.gov.bd'),
(798, 78, 'Binajuri', 'বিনাজুরী', 'binajuriup.chittagong.gov.bd'),
(799, 78, 'Chikdair', 'চিকদাইর', 'chikdairup.chittagong.gov.bd'),
(800, 78, 'Dabua', 'ডাবুয়া', 'dabuaup.chittagong.gov.bd'),
(801, 78, 'Purbagujra', 'পূর্ব গুজরা', 'purbagujraup.chittagong.gov.bd'),
(802, 78, 'Paschim Gujra', 'পশ্চিম গুজরা', 'paschimgujraup.chittagong.gov.bd'),
(803, 78, 'Gohira', 'গহিরা', 'gohiraup.chittagong.gov.bd'),
(804, 78, 'Holdia', 'হলদিয়া', 'holdiaup.chittagong.gov.bd'),
(805, 78, 'Kodolpur', 'কদলপূর', 'kodolpurup.chittagong.gov.bd'),
(806, 78, 'Noapara', 'নোয়াপাড়া', 'noaparaup.chittagong.gov.bd'),
(807, 78, 'Pahartali', 'পাহাড়তলী', 'pahartaliup.chittagong.gov.bd'),
(808, 78, 'Urkirchar', 'উড়কিরচর', 'urkircharup.chittagong.gov.bd'),
(809, 78, 'Nowajushpur', 'নওয়াজিশপুর', 'nowajushpurup.chittagong.gov.bd'),
(810, 79, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd'),
(811, 79, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd'),
(812, 79, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd'),
(813, 79, 'Barauthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd'),
(814, 79, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd'),
(815, 80, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.coxsbazar.gov.bd'),
(816, 80, 'Islampur', 'ইসলামপুর', 'islampurup.coxsbazar.gov.bd'),
(817, 80, 'Pokkhali', 'পোকখালী', 'pokkhaliup.coxsbazar.gov.bd'),
(818, 80, 'Eidgaon', 'ঈদগাঁও', 'eidgaonup.coxsbazar.gov.bd'),
(819, 80, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.coxsbazar.gov.bd'),
(820, 80, 'Chowfaldandi', 'চৌফলদন্ডী', 'chowfaldandi.coxsbazar.gov.bd'),
(821, 80, 'Varuakhali', 'ভারুয়াখালী', 'varuakhaliup.coxsbazar.gov.bd'),
(822, 80, 'Pmkhali', 'পিএমখালী', 'pmkhaliup.coxsbazar.gov.bd'),
(823, 80, 'Khurushkhul', 'খুরুশকুল', 'khurushkhulup.coxsbazar.gov.bd'),
(824, 80, 'Jhilongjha', 'ঝিলংঝা', 'jhilongjhaup.coxsbazar.gov.bd'),
(825, 81, 'Kakhara', 'কাকারা', 'Kakharaup.coxsbazar.gov.bd'),
(826, 81, 'Kaiar Bil', 'কাইয়ার বিল', 'kaiarbilup.coxsbazar.gov.bd'),
(827, 81, 'Konakhali', 'কোনাখালী', 'konakhaliup.coxsbazar.gov.bd'),
(828, 81, 'Khuntakhali', 'খুটাখালী', 'khuntakhaliup.coxsbazar.gov.bd'),
(829, 81, 'Chiringa', 'চিরিঙ্গা', 'chiringaup.coxsbazar.gov.bd'),
(830, 81, 'Demusia', 'ঢেমুশিয়া', 'demusiaup.coxsbazar.gov.bd'),
(831, 81, 'Dulahazara', 'ডুলাহাজারা', 'dulahazaraup.coxsbazar.gov.bd'),
(832, 81, 'Paschim Bara Bheola', 'পশ্চিম বড় ভেওলা', 'paschimbarabheolaup.coxsbazar.gov.bd'),
(833, 81, 'Badarkhali', 'বদরখালী', 'badarkhaliup.coxsbazar.gov.bd'),
(834, 81, 'Bamobil Chari', 'বামু বিলছড়ি', 'bamobilchariup.coxsbazar.gov.bd'),
(835, 81, 'Baraitali', 'বড়ইতলী', 'baraitaliup.coxsbazar.gov.bd'),
(836, 81, 'Bheola Manik Char', 'ভেওলা মানিক চর', 'bheolamanikcharup.coxsbazar.gov.bd'),
(837, 81, 'Saharbil', 'শাহারবিল', 'saharbilup.coxsbazar.gov.bd'),
(838, 81, 'Surajpur Manikpur', 'সুরজপুর মানিকপুর', 'surajpurmanikpurup.coxsbazar.gov.bd'),
(839, 81, 'Harbang', 'হারবাঙ্গ', 'harbangup.coxsbazar.gov.bd'),
(840, 81, 'Fashiakhali', 'ফাঁসিয়াখালী', 'fashiakhaliup.coxsbazar.gov.bd'),
(841, 82, 'Ali Akbar Deil', 'আলি আকবর ডেইল', 'aliakbardeilup.coxsbazar.gov.bd'),
(842, 82, 'Uttar Dhurung', 'উত্তর ধুরুং', 'uttardhurungup.coxsbazar.gov.bd'),
(843, 82, 'Kaiyarbil', 'কৈয়ারবিল', 'kaiyarbilup.coxsbazar.gov.bd'),
(844, 82, 'Dakshi Dhurung', 'দক্ষিণ ধুরুং', 'dakshidhurungup.coxsbazar.gov.bd'),
(845, 82, 'Baragho', 'বড়ঘোপ', 'baraghopup.coxsbazar.gov.bd'),
(846, 82, 'Lemsikhali', 'লেমসিখালী', 'lemsikhaliup.coxsbazar.gov.bd'),
(847, 83, 'Rajapalong', 'রাজাপালং', 'rajapalongup.coxsbazar.gov.bd'),
(848, 83, 'Jaliapalong', 'জালিয়াপালং', 'jaliapalongup.coxsbazar.gov.bd'),
(849, 83, 'Holdiapalong', 'হলদিয়াপালং', 'holdiapalongup.coxsbazar.gov.bd'),
(850, 83, 'Ratnapalong', 'রত্নাপালং', 'ratnapalongup.coxsbazar.gov.bd'),
(851, 83, 'Palongkhali', 'পালংখালী', 'palongkhali.coxsbazar.gov.bd'),
(852, 84, 'Boro Moheshkhali', 'বড় মহেশখালী', 'boramoheshkhaliup.coxsbazar.gov.bd'),
(853, 84, 'Choto Moheshkhali', 'ছোট মহেশখালী', 'chotamoheshkhaliup.coxsbazar.gov.bd'),
(854, 84, 'Shaplapur', 'শাপলাপুর', 'shaplapurup.coxsbazar.gov.bd'),
(855, 84, 'Kutubjum', 'কুতুবজোম', 'kutubjumup.coxsbazar.gov.bd'),
(856, 84, 'Hoanak', 'হোয়ানক', 'hoanakup.coxsbazar.gov.bd'),
(857, 84, 'Kalarmarchhara', 'কালারমারছড়া', 'kalarmarchharaup.coxsbazar.gov.bd'),
(858, 84, 'Matarbari', 'মাতারবাড়ী', 'matarbariup.coxsbazar.gov.bd'),
(859, 84, 'Dhalghata', 'ধলঘাটা', 'dhalghataup.coxsbazar.gov.bd'),
(860, 85, 'Ujantia', 'উজানটিয়া', 'ujantiaup.coxsbazar.gov.bd'),
(861, 85, 'Taitong', 'টাইটং', 'taitongup.coxsbazar.gov.bd'),
(862, 85, 'Pekua', 'পেকুয়া', 'pekuaup.coxsbazar.gov.bd'),
(863, 85, 'Barabakia', 'বড় বাকিয়া', 'barabakiaup.coxsbazar.gov.bd'),
(864, 85, 'Magnama', 'মগনামা', 'magnamaup.coxsbazar.gov.bd'),
(865, 85, 'Rajakhali', 'রাজাখালী', 'rajakhaliup.coxsbazar.gov.bd'),
(866, 85, 'Shilkhali', 'শীলখালী', 'shilkhaliup.coxsbazar.gov.bd'),
(867, 86, 'Fotekharkul', 'ফতেখাঁরকুল', 'fotekharkulup.coxsbazar.gov.bd'),
(868, 86, 'Rajarkul', 'রাজারকুল', 'rajarkulup.coxsbazar.gov.bd'),
(869, 86, 'Rashidnagar', 'রশীদনগর', 'rashidnagarup.coxsbazar.gov.bd'),
(870, 86, 'Khuniapalong', 'খুনিয়াপালং', 'khuniapalongup.coxsbazar.gov.bd'),
(871, 86, 'Eidghar', 'ঈদগড়', 'eidgharup.coxsbazar.gov.bd'),
(872, 86, 'Chakmarkul', 'চাকমারকুল', 'chakmarkulup.coxsbazar.gov.bd'),
(873, 86, 'Kacchapia', 'কচ্ছপিয়া', 'kacchapiaup.coxsbazar.gov.bd'),
(874, 86, 'Kauwarkho', 'কাউয়ারখোপ', 'kauwarkhopup.coxsbazar.gov.bd'),
(875, 86, 'Dakkhin Mithachhari', 'দক্ষিণ মিঠাছড়ি', 'dakkhinmithachhariup.coxsbazar.gov.bd'),
(876, 86, 'Jouarianala', 'জোয়ারিয়া নালা', 'jouarianalaup.coxsbazar.gov.bd'),
(877, 86, 'Garjoniya', 'গর্জনিয়া', 'garjoniyaup.coxsbazar.gov.bd'),
(878, 87, 'Subrang', 'সাবরাং', 'subrangup.coxsbazar.gov.bd'),
(879, 87, 'Baharchara', 'বাহারছড়া', 'baharcharaup.coxsbazar.gov.bd'),
(880, 87, 'Hnila', 'হ্নীলা', 'hnilaup.coxsbazar.gov.bd'),
(881, 87, 'Whykong', 'হোয়াইক্যং', 'whykongup.coxsbazar.gov.bd'),
(882, 87, 'Saintmartin', 'সেন্ট মার্টিন', 'saintmartinup.coxsbazar.gov.bd'),
(883, 87, 'Teknaf Sadar', 'টেকনাফ সদর', 'teknafsadarup.coxsbazar.gov.bd'),
(884, 88, 'Khagrachhari Sadar', 'খাগরাছড়ি সদর', 'sadarup.khagrachhari.gov.bd'),
(885, 88, 'Golabari', 'গোলাবাড়ী', 'golabariup.khagrachhari.gov.bd'),
(886, 88, 'Parachara', 'পেরাছড়া', 'paracharaup.khagrachhari.gov.bd'),
(887, 88, 'Kamalchari', 'কমলছড়ি', 'kamalchariup.khagrachhari.gov.bd'),
(888, 89, 'Merung', 'মেরুং', 'merungup.khagrachhari.gov.bd'),
(889, 89, 'Boalkhali', 'বোয়ালখালী', 'boalkhaliup.khagrachhari.gov.bd'),
(890, 89, 'Kabakhali', 'কবাখালী', 'kabakhaliup.khagrachhari.gov.bd'),
(891, 89, 'Dighinala', 'দিঘীনালা', 'dighinalaup.khagrachhari.gov.bd'),
(892, 89, 'Babuchara', 'বাবুছড়া', 'babucharaup.khagrachhari.gov.bd'),
(893, 90, 'Logang', 'লোগাং', 'logangup.khagrachhari.gov.bd'),
(894, 90, 'Changi', 'চেংগী', 'changiup.khagrachhari.gov.bd'),
(895, 90, 'Panchari', 'পানছড়ি', 'panchariup.khagrachhari.gov.bd'),
(896, 90, 'Latiban', 'লতিবান', 'latibanup.khagrachhari.gov.bd'),
(897, 91, 'Dullyatali', 'দুল্যাতলী', 'dullyataliup.khagrachhari.gov.bd'),
(898, 91, 'Barmachari', 'বর্মাছড়ি', 'barmachariup.khagrachhari.gov.bd'),
(899, 91, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhariup.khagrachhari.gov.bd'),
(900, 92, 'Bhaibonchara', 'ভাইবোনছড়া', 'bhaiboncharaup.khagrachhari.gov.bd'),
(901, 92, 'Mahalchari', 'মহালছড়ি', 'mahalchariup.khagrachhari.gov.bd'),
(902, 92, 'Mobachari', 'মুবাছড়ি', 'mobachariup.khagrachhari.gov.bd'),
(903, 92, 'Kayanghat', 'ক্যায়াংঘাট', 'kayanghatup.khagrachhari.gov.bd'),
(904, 92, 'Maischari', 'মাইসছড়ি', 'maischariup.khagrachhari.gov.bd'),
(905, 93, 'Manikchari', 'মানিকছড়ি', 'manikchariup.khagrachhari.gov.bd'),
(906, 93, 'Batnatali', 'বাটনাতলী', 'batnataliup.khagrachhari.gov.bd'),
(907, 93, 'Jogyachola', 'যোগ্যছোলা', 'jogyacholaup.khagrachhari.gov.bd'),
(908, 93, 'Tintahari', 'তিনটহরী', 'tintahariup.khagrachhari.gov.bd'),
(909, 94, 'Ramgarh', 'রামগড়', 'ramgarhup.khagrachhari.gov.bd'),
(910, 94, 'Patachara', 'পাতাছড়া', 'patacharaup.khagrachhari.gov.bd'),
(911, 94, 'Hafchari', 'হাফছড়ি', 'hafchariup.khagrachhari.gov.bd'),
(912, 95, 'Taindong', 'তাইন্দং', 'taindongup.khagrachhari.gov.bd'),
(913, 95, 'Tabalchari', 'তবলছড়ি', 'tabalchariup.khagrachhari.gov.bd'),
(914, 95, 'Barnal', 'বর্ণাল', 'barnalup.khagrachhari.gov.bd'),
(915, 95, 'Gomti', 'গোমতি', 'gomtiup.khagrachhari.gov.bd'),
(916, 95, 'Balchari', 'বেলছড়ি', 'balchariup.khagrachhari.gov.bd'),
(917, 95, 'Matiranga', 'মাটিরাঙ্গা', 'matirangaup.khagrachhari.gov.bd'),
(918, 95, 'Guimara', 'গুইমারা', 'guimaraup.khagrachhari.gov.bd'),
(919, 95, 'Amtali', 'আমতলি', 'amtaliup.khagrachhari.gov.bd'),
(920, 97, 'Rajbila', 'রাজবিলা', 'rajbilaup.bandarban.gov.bd'),
(921, 97, 'Tongkaboty', 'টংকাবতী', 'tongkabotyup.bandarban.gov.bd'),
(922, 97, 'Suwalok', 'সুয়ালক', 'suwalokup.bandarban.gov.bd'),
(923, 97, 'Bandarban Sadar', 'বান্দরবান সদর', 'bandarbansadarup.bandarban.gov.bd'),
(924, 97, 'Kuhalong', 'কুহালং', 'kuhalongup.bandarban.gov.bd'),
(925, 98, 'Alikadam Sadar', 'আলীকদম সদর', 'alikadamsadarup.bandarban.gov.bd'),
(926, 98, 'Chwekhyong', 'চৈক্ষ্যং', 'chwekhyongup.bandarban.gov.bd'),
(927, 99, 'Naikhyongchari Sadar', 'নাইক্ষ্যংছড়ি সদর', 'naikhyongcharisadarup.bandarban.gov.bd'),
(928, 99, 'Gumdhum', 'ঘুমধুম', 'gumdhumup.bandarban.gov.bd'),
(929, 99, 'Baishari', 'বাইশারী', 'baishariup.bandarban.gov.bd'),
(930, 99, 'Sonaychari', 'সোনাইছড়ি', 'sonaychariup.bandarban.gov.bd'),
(931, 99, 'Duwchari', 'দোছড়ি', 'duwchariup.bandarban.gov.bd'),
(932, 100, 'Rowangchari Sadar', 'রোয়াংছড়ি সদর', 'rowangcharisadarup.bandarban.gov.bd'),
(933, 100, 'Taracha', 'তারাছা', 'tarachaup.bandarban.gov.bd'),
(934, 100, 'Alekyong', 'আলেক্ষ্যং', 'alekyongup.bandarban.gov.bd'),
(935, 100, 'Nawapotong', 'নোয়াপতং', 'nawapotongup.bandarban.gov.bd'),
(936, 101, 'Gajalia', 'গজালিয়া', 'gajaliaup.bandarban.gov.bd'),
(937, 101, 'Lama Sadar', 'লামা সদর', 'lamasadarup.bandarban.gov.bd'),
(938, 101, 'Fasiakhali', 'ফাসিয়াখালী', 'fasiakhaliup.bandarban.gov.bd'),
(939, 101, 'Fythong', 'ফাইতং', 'fythongup.bandarban.gov.bd'),
(940, 101, 'Rupushipara', 'রূপসীপাড়া', 'rupushiparaup.bandarban.gov.bd'),
(941, 101, 'Sarai', 'সরই', 'saraiup.bandarban.gov.bd'),
(942, 101, 'Aziznagar', 'আজিজনগর', 'aziznagarup.bandarban.gov.bd'),
(943, 102, 'Paind', 'পাইন্দু', 'painduup.bandarban.gov.bd'),
(944, 102, 'Ruma Sadar', 'রুমা সদর', 'rumasadarup.bandarban.gov.bd'),
(945, 102, 'Ramakreprangsa', 'রেমাক্রীপ্রাংসা', 'ramakreprangsaup.bandarban.gov.bd'),
(946, 102, 'Galanggya', 'গ্যালেংগ্যা', 'galanggyaup.bandarban.gov.bd'),
(947, 103, 'Remakre', 'রেমাক্রী', 'remakreup.bandarban.gov.bd'),
(948, 103, 'Tind', 'তিন্দু', 'tinduup.bandarban.gov.bd'),
(949, 103, 'Thanchi Sadar', 'থানচি সদর', 'thanchisadarup.bandarban.gov.bd'),
(950, 103, 'Balipara', 'বলিপাড়া', 'baliparaup.bandarban.gov.bd'),
(951, 104, 'Rajapur', 'রাজাপুর', 'rajapurup.sirajganj.gov.bd'),
(952, 104, 'Baradhul', 'বড়ধুল', 'baradhulup.sirajganj.gov.bd'),
(953, 104, 'Belkuchi Sadar', 'বেলকুচি সদর', 'belkuchisadarup.sirajganj.gov.bd'),
(954, 104, 'Dhukuriabera', 'ধুকুরিয়া বেড়া', 'dhukuriaberaup.sirajganj.gov.bd'),
(955, 104, 'Doulatpur', 'দৌলতপুর', 'doulatpurup.sirajganj.gov.bd'),
(956, 104, 'Bhangabari', 'ভাঙ্গাবাড়ী', 'bhangabariup.sirajganj.gov.bd'),
(957, 105, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.sirajganj.gov.bd'),
(958, 105, 'Gharjan', 'ঘোরজান', 'gharjanup.sirajganj.gov.bd'),
(959, 105, 'Khaskaulia', 'খাসকাউলিয়া', 'khaskauliaup.sirajganj.gov.bd'),
(960, 105, 'Khaspukuria', 'খাসপুকুরিয়া', 'khaspukuriaup.sirajganj.gov.bd'),
(961, 105, 'Omarpur', 'উমারপুর', 'omarpurup.sirajganj.gov.bd'),
(962, 105, 'Sadia Chandpur', 'সদিয়া চাঁদপুর', 'sadiachandpurup.sirajganj.gov.bd'),
(963, 105, 'Sthal', 'স্থল', 'sthalup.sirajganj.gov.bd'),
(964, 106, 'Bhadraghat', 'ভদ্রঘাট', 'bhadraghatup.sirajganj.gov.bd'),
(965, 106, 'Jamtail', 'জামতৈল', 'jamtailup.sirajganj.gov.bd'),
(966, 106, 'Jhawail', 'ঝাঐল', 'jhawailup.sirajganj.gov.bd'),
(967, 106, 'Roydaulatpur', 'রায়দৌলতপুর', 'roydaulatpurup.sirajganj.gov.bd'),
(968, 107, 'Chalitadangha', 'চালিতাডাঙ্গা', 'chalitadanghaup.sirajganj.gov.bd'),
(969, 107, 'Chargirish', 'চরগিরিশ', 'chargirishup.sirajganj.gov.bd'),
(970, 107, 'Gandail', 'গান্ধাইল', 'gandailup.sirajganj.gov.bd'),
(971, 107, 'Kazipur Sadar', 'কাজিপুর সদর', 'kazipursadarup.sirajganj.gov.bd'),
(972, 107, 'Khasrajbari', 'খাসরাজবাড়ী', 'khasrajbariup.sirajganj.gov.bd'),
(973, 107, 'Maijbari', 'মাইজবাড়ী', 'maijbariup.sirajganj.gov.bd'),
(974, 107, 'Monsur Nagar', 'মনসুর নগর', 'monsurnagarup.sirajganj.gov.bd'),
(975, 107, 'Natuarpara', 'নাটুয়ারপাড়া', 'natuarparaup.sirajganj.gov.bd'),
(976, 107, 'Nishchintapur', 'নিশ্চিন্তপুর', 'nishchintapurup.sirajganj.gov.bd'),
(977, 107, 'Sonamukhi', 'সোনামুখী', 'sonamukhiup.sirajganj.gov.bd'),
(978, 107, 'Subhagacha', 'শুভগাছা', 'subhagachaup.sirajganj.gov.bd'),
(979, 107, 'Tekani', 'তেকানী', 'tekaniup.sirajganj.gov.bd'),
(980, 108, 'Brommogacha', 'ব্রহ্মগাছা', 'brommogachaup.sirajganj.gov.bd'),
(981, 108, 'Chandaikona', 'চান্দাইকোনা', 'chandaikonaup.sirajganj.gov.bd'),
(982, 108, 'Dhamainagar', 'ধামাইনগর', 'dhamainagarup.sirajganj.gov.bd'),
(983, 108, 'Dhangora', 'ধানগড়া', 'dhangoraup.sirajganj.gov.bd'),
(984, 108, 'Dhubil', 'ধুবিল', 'dhubilup.sirajganj.gov.bd'),
(985, 108, 'Ghurka', 'ঘুড়কা', 'ghurkaup.sirajganj.gov.bd'),
(986, 108, 'Nalka', 'নলকা', 'nalkaup.sirajganj.gov.bd'),
(987, 108, 'Pangashi', 'পাঙ্গাসী', 'pangashiup.sirajganj.gov.bd'),
(988, 108, 'Sonakhara', 'সোনাখাড়া', 'sonakharaup.sirajganj.gov.bd'),
(989, 109, 'Beltail', 'বেলতৈল', 'beltailup.sirajganj.gov.bd'),
(990, 109, 'Jalalpur', 'জালালপুর', 'jalalpurup.sirajganj.gov.bd'),
(991, 109, 'Kayempure', 'কায়েমপুর', 'kayempureup.sirajganj.gov.bd'),
(992, 109, 'Garadah', 'গাড়াদহ', 'garadahup.sirajganj.gov.bd'),
(993, 109, 'Potazia', 'পোতাজিয়া', 'potaziaup.sirajganj.gov.bd'),
(994, 109, 'Rupbati', 'রূপবাটি', 'rupbatiup.sirajganj.gov.bd'),
(995, 109, 'Gala', 'গালা', 'galaup.sirajganj.gov.bd'),
(996, 109, 'Porzona', 'পোরজনা', 'porzonaup.sirajganj.gov.bd'),
(997, 109, 'Habibullah Nagar', 'হাবিবুল্লাহ নগর', 'habibullahnagarup.sirajganj.gov.bd'),
(998, 109, 'Khukni', 'খুকনী', 'khukniup.sirajganj.gov.bd'),
(999, 109, 'Koizuri', 'কৈজুরী', 'koizuriup.sirajganj.gov.bd'),
(1000, 109, 'Sonatoni', 'সোনাতনী', 'sonatoniup.sirajganj.gov.bd'),
(1001, 109, 'Narina', 'নরিনা', 'narinaup.sirajganj.gov.bd'),
(1002, 110, 'Bagbati', 'বাগবাটি', 'bagbatiup.sirajganj.gov.bd'),
(1003, 110, 'Ratankandi', 'রতনকান্দি', 'ratankandiup.sirajganj.gov.bd'),
(1004, 110, 'Bohuli', 'বহুলী', 'bohuliup.sirajganj.gov.bd'),
(1005, 110, 'Sheyalkol', 'শিয়ালকোল', 'sheyalkolup.sirajganj.gov.bd'),
(1006, 110, 'Khokshabari', 'খোকশাবাড়ী', 'khokshabariup.nilphamari.gov.bd'),
(1007, 110, 'Songacha', 'ছোনগাছা', 'songachaup.sirajganj.gov.bd'),
(1008, 110, 'Mesra', 'মেছড়া', 'mesraup.sirajganj.gov.bd'),
(1009, 110, 'Kowakhola', 'কাওয়াখোলা', 'kowakholaup.sirajganj.gov.bd'),
(1010, 110, 'Kaliahoripur', 'কালিয়াহরিপুর', 'kaliahoripurup.sirajganj.gov.bd'),
(1011, 110, 'Soydabad', 'সয়দাবাদ', 'soydabadup.sirajganj.gov.bd'),
(1012, 111, 'Baruhas', 'বারুহাস', 'baruhasup.sirajganj.gov.bd'),
(1013, 111, 'Talam', 'তালম', 'talamup.sirajganj.gov.bd'),
(1014, 111, 'Soguna', 'সগুনা', 'sogunaup.sirajganj.gov.bd'),
(1015, 111, 'Magura Binod', 'মাগুড়া বিনোদ', 'magurabinodup.sirajganj.gov.bd'),
(1016, 111, 'Naogaon', 'নওগাঁ', 'naogaonup.sirajganj.gov.bd'),
(1017, 111, 'Tarash Sadar', 'তাড়াশ সদর', 'tarashsadarup.sirajganj.gov.bd'),
(1018, 111, 'Madhainagar', 'মাধাইনগর', 'madhainagarup.sirajganj.gov.bd'),
(1019, 111, 'Deshigram', 'দেশীগ্রাম', 'deshigramup.sirajganj.gov.bd'),
(1020, 112, 'Ullapara Sadar', 'উল্লাপাড়া সদর', 'ullaparasadarup.sirajganj.gov.bd'),
(1021, 112, 'Ramkrisnopur', 'রামকৃষ্ণপুর', 'ramkrisnopurup.sirajganj.gov.bd'),
(1022, 112, 'Bangala', 'বাঙ্গালা', 'bangalaup.sirajganj.gov.bd'),
(1023, 112, 'Udhunia', 'উধুনিয়া', 'udhuniaup.sirajganj.gov.bd'),
(1024, 112, 'Boropangashi', 'বড়পাঙ্গাসী', 'boropangashiup.sirajganj.gov.bd'),
(1025, 112, 'Durga Nagar', 'দুর্গা নগর', 'durganagarup.sirajganj.gov.bd'),
(1026, 112, 'Purnimagati', 'পূর্ণিমাগাতী', 'purnimagatiup.sirajganj.gov.bd'),
(1027, 112, 'Salanga', 'সলঙ্গা', 'salangaup.sirajganj.gov.bd'),
(1028, 112, 'Hatikumrul', 'হটিকুমরুল', 'hatikumrulup.sirajganj.gov.bd'),
(1029, 112, 'Borohor', 'বড়হর', 'borohorup.sirajganj.gov.bd'),
(1030, 112, 'Ponchocroshi', 'পঞ্চক্রোশী', 'ponchocroshiup.sirajganj.gov.bd'),
(1031, 112, 'Salo', 'সলপ', 'salopup.sirajganj.gov.bd'),
(1032, 112, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sirajganj.gov.bd'),
(1033, 113, 'Vaina', 'ভায়না', 'vainaup.pabna.gov.bd'),
(1034, 113, 'Tantibonda', 'তাঁতিবন্দ', 'tantibondaup.pabna.gov.bd'),
(1035, 113, 'Manikhat', 'মানিকহাট', 'manikhatup.pabna.gov.bd'),
(1036, 113, 'Dulai', 'দুলাই', 'dulaiup.pabna.gov.bd'),
(1037, 113, 'Ahammadpur', 'আহম্মদপুর', 'ahammadpurup.pabna.gov.bd'),
(1038, 113, 'Raninagar', 'রাণীনগর', 'raninagarup.pabna.gov.bd'),
(1039, 113, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.pabna.gov.bd'),
(1040, 113, 'Hatkhali', 'হাটখালী', 'hatkhaliup.pabna.gov.bd'),
(1041, 113, 'Nazirganj', 'নাজিরগঞ্জ', 'nazirganjup.pabna.gov.bd'),
(1042, 113, 'Sagorkandi', 'সাগরকান্দি', 'sagorkandiup.pabna.gov.bd'),
(1043, 114, 'Sara', 'সাঁড়া', 'saraup.pabna.gov.bd'),
(1044, 114, 'Pakshi', 'পাকশী', 'pakshiup.pabna.gov.bd'),
(1045, 114, 'Muladuli', 'মুলাডুলি', 'muladuliup.pabna.gov.bd'),
(1046, 114, 'Dashuria', 'দাশুরিয়া', 'dashuriaup.pabna.gov.bd'),
(1047, 114, 'Silimpur', 'ছলিমপুর', 'silimpurup.pabna.gov.bd'),
(1048, 114, 'Sahapur', 'সাহাপুর', 'sahapurup.pabna.gov.bd'),
(1049, 114, 'Luxmikunda', 'লক্ষীকুন্ডা', 'luxmikundaup.pabna.gov.bd'),
(1050, 115, 'Bhangura', 'ভাঙ্গুড়া', 'bhanguraup.pabna.gov.bd'),
(1051, 115, 'Khanmarich', 'খানমরিচ', 'khanmarichup.pabna.gov.bd'),
(1052, 115, 'Ashtamanisha', 'অষ্টমণিষা', 'ashtamanishaup.pabna.gov.bd'),
(1053, 115, 'Dilpasar', 'দিলপাশার', 'dilpasarup.pabna.gov.bd'),
(1054, 115, 'Parbhangura', 'পারভাঙ্গুড়া', 'parbhanguraup.pabna.gov.bd'),
(1055, 116, 'Maligachha', 'মালিগাছা', 'maligachhaup.pabna.gov.bd'),
(1056, 116, 'Malanchi', 'মালঞ্চি', 'malanchiup.pabna.gov.bd'),
(1057, 116, 'Gayeshpur', 'গয়েশপুর', 'gayeshpurup.pabna.gov.bd'),
(1058, 116, 'Ataikula', 'আতাইকুলা', 'ataikulaup.pabna.gov.bd'),
(1059, 116, 'Chartarapur', 'চরতারাপুর', 'chartarapurup.pabna.gov.bd'),
(1060, 116, 'Sadullahpur', 'সাদুল্লাপুর', 'sadullahpurup.pabna.gov.bd'),
(1061, 116, 'Bharara', 'ভাঁড়ারা', 'bhararaup.pabna.gov.bd'),
(1062, 116, 'Dogachi', 'দোগাছী', 'dogachiup.pabna.gov.bd'),
(1063, 116, 'Hemayetpur', 'হেমায়েতপুর', 'hemayetpurup.pabna.gov.bd'),
(1064, 116, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.pabna.gov.bd'),
(1065, 117, 'Haturia Nakalia', 'হাটুরিয়া নাকালিয়া', 'haturianakaliaup.pabna.gov.bd'),
(1066, 117, 'Notun Varenga', 'নতুন ভারেঙ্গা', 'notunvarengaup.pabna.gov.bd'),
(1067, 117, 'Koitola', 'কৈটোলা', 'koitolaup.pabna.gov.bd'),
(1068, 117, 'Chakla', 'চাকলা', 'chaklaup.pabna.gov.bd'),
(1069, 117, 'Jatsakhini', 'জাতসাখিনি', 'jatsakhiniup.pabna.gov.bd'),
(1070, 117, 'Puran Varenga', 'পুরান ভারেঙ্গা', 'puranvarengaup.pabna.gov.bd'),
(1071, 117, 'Ruppur', 'রূপপুর', 'ruppurup.pabna.gov.bd'),
(1072, 117, 'Masumdia', 'মাসুমদিয়া', 'masumdiaup.pabna.gov.bd'),
(1073, 117, 'Dhalar Char', 'ঢালার চর', 'dhalarcharup.pabna.gov.bd'),
(1074, 118, 'Majhpara', 'মাজপাড়া', 'majhparaup.pabna.gov.bd'),
(1075, 118, 'Chandba', 'চাঁদভা', 'chandbaup.pabna.gov.bd'),
(1076, 118, 'Debottar', 'দেবোত্তর', 'debottarup.pabna.gov.bd'),
(1077, 118, 'Ekdanta', 'একদন্ত', 'ekdantaup.pabna.gov.bd'),
(1078, 118, 'Laxshmipur', 'লক্ষীপুর', 'laxshmipurup.pabna.gov.bd'),
(1079, 119, 'Handial', 'হান্ডিয়াল', 'handialup.pabna.gov.bd'),
(1080, 119, 'Chhaikola', 'ছাইকোলা', 'chhaikolaup.pabna.gov.bd'),
(1081, 119, 'Nimaichara', 'নিমাইচড়া', 'nimaicharaup.pabna.gov.bd'),
(1082, 119, 'Gunaigachha', 'গুনাইগাছা', 'gunaigachhaup.pabna.gov.bd'),
(1083, 119, 'Parshadanga', 'পার্শ্বডাঙ্গা', 'parshadangaup.pabna.gov.bd'),
(1084, 119, 'Failjana', 'ফৈলজানা', 'failjanaup.pabna.gov.bd'),
(1085, 119, 'Mulgram', 'মুলগ্রাম', 'mulgramup.pabna.gov.bd'),
(1086, 119, 'Haripur', 'হরিপুর', 'haripurup.pabna.gov.bd'),
(1087, 119, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.pabna.gov.bd'),
(1088, 119, 'Bilchalan', 'বিলচলন', 'bilchalanup.pabna.gov.bd'),
(1089, 119, 'Danthia Bamangram', 'দাতিয়া বামনগ্রাম', 'danthiabamangramup.pabna.gov.bd'),
(1090, 120, 'Nagdemra', 'নাগডেমড়া', 'nagdemraup.pabna.gov.bd'),
(1091, 120, 'Dhulauri', 'ধুলাউড়ি', 'dhulauriup.pabna.gov.bd'),
(1092, 120, 'Bhulbaria', 'ভুলবাড়ীয়া', 'bhulbariaup.pabna.gov.bd'),
(1093, 120, 'Dhopadaha', 'ধোপাদহ', 'dhopadahaup.pabna.gov.bd'),
(1094, 120, 'Karamja', 'করমজা', 'karamjaup.pabna.gov.bd'),
(1095, 120, 'Kashinathpur', 'কাশিনাথপুর', 'kashinathpurup.pabna.gov.bd'),
(1096, 120, 'Gaurigram', 'গৌরীগ্রাম', 'gaurigramup.pabna.gov.bd'),
(1097, 120, 'Nandanpur', 'নন্দনপুর', 'nandanpurup.pabna.gov.bd'),
(1098, 120, 'Khetupara', 'ক্ষেতুপাড়া', 'khetuparaup.pabna.gov.bd'),
(1099, 120, 'Ar-Ataikula', 'আর-আতাইকুলা', 'rataiqulaup.pabna.gov.bd'),
(1100, 121, 'Brilahiribari', 'বৃলাহিড়ীবাড়ী', 'brilahiribariup.pabna.gov.bd'),
(1101, 121, 'Pungali', 'পুঙ্গুলি', 'pungaliup.pabna.gov.bd'),
(1102, 121, 'Faridpur', 'ফরিদপুর', 'faridpurup.pabna.gov.bd'),
(1103, 121, 'Hadal', 'হাদল', 'hadalup.pabna.gov.bd'),
(1104, 121, 'Banwarinagar', 'বনওয়ারীনগর', 'banwarinagarup.pabna.gov.bd'),
(1105, 121, 'Demra', 'ডেমড়া', 'demraup.pabna.gov.bd'),
(1106, 122, 'Birkedar', 'বীরকেদার', 'birkedarup.bogra.gov.bd'),
(1107, 122, 'Kalai', 'কালাই', 'kalaiup.bogra.gov.bd'),
(1108, 122, 'Paikar', 'পাইকড়', 'paikarup.bogra.gov.bd'),
(1109, 122, 'Narhatta', 'নারহট্ট', 'narhattaup.bogra.gov.bd'),
(1110, 122, 'Murail', 'মুরইল', 'murailup.bogra.gov.bd'),
(1111, 122, 'Kahaloo', 'কাহালু', 'kahalooup.bogra.gov.bd'),
(1112, 122, 'Durgapur', 'দূর্গাপুর', 'durgapurup.bogra.gov.bd'),
(1113, 122, 'Jamgaon', 'জামগ্রাম', 'jamgaonup.bogra.gov.bd'),
(1114, 122, 'Malancha', 'মালঞ্চা', 'malanchaup.bogra.gov.bd'),
(1115, 123, 'Fapore', 'ফাঁপোর', 'faporeup.bogra.gov.bd'),
(1116, 123, 'Shabgram', 'সাবগ্রাম', 'shabgramup.bogra.gov.bd'),
(1117, 123, 'Nishindara', 'নিশিন্দারা', 'nishindaraup.bogra.gov.bd'),
(1118, 123, 'Erulia', 'এরুলিয়া', 'eruliaup.bogra.gov.bd'),
(1119, 123, 'Rajapur', 'রাজাপুর', 'rajapurup.bogra.gov.bd'),
(1120, 123, 'Shakharia', 'শাখারিয়া', 'shakhariaup.bogra.gov.bd'),
(1121, 123, 'Sekherkola', 'শেখেরকোলা', 'sekherkolaup.bogra.gov.bd'),
(1122, 123, 'Gokul', 'গোকুল', 'gokulup.bogra.gov.bd'),
(1123, 123, 'Noongola', 'নুনগোলা', 'noongolaup.bogra.gov.bd'),
(1124, 123, 'Lahiripara', 'লাহিড়ীপাড়া', 'lahiriparaup.bogra.gov.bd'),
(1125, 123, 'Namuja', 'নামুজা', 'namujaup.bogra.gov.bd'),
(1126, 124, 'Sariakandi Sadar', 'সারিয়াকান্দি সদর', 'sariakandisadarup.bogra.gov.bd'),
(1127, 124, 'Narchi', 'নারচী', 'narchiup.bogra.gov.bd'),
(1128, 124, 'Bohail', 'বোহাইল', 'bohailup.bogra.gov.bd'),
(1129, 124, 'Chaluabari', 'চালুয়াবাড়ী', 'chaluabariup.bogra.gov.bd'),
(1130, 124, 'Chandanbaisha', 'চন্দনবাইশা', 'chandanbaishaup.bogra.gov.bd'),
(1131, 124, 'Hatfulbari', 'হাটফুলবাড়ী', 'hatfulbariup.bogra.gov.bd'),
(1132, 124, 'Hatsherpur', 'হাটশেরপুর', 'hatsherpurup.bogra.gov.bd'),
(1133, 124, 'Karnibari', 'কর্ণিবাড়ী', 'karnibariup.bogra.gov.bd'),
(1134, 124, 'Kazla', 'কাজলা', 'kazlaup.bogra.gov.bd'),
(1135, 124, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.bogra.gov.bd'),
(1136, 124, 'Kamalpur', 'কামালপুর', 'kamalpur.bogra.gov.bd'),
(1137, 124, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabari.bogra.gov.bd'),
(1138, 125, 'Asekpur', 'আশেকপুর', 'asekpurup.bogra.gov.bd'),
(1139, 125, 'Madla', 'মাদলা', 'madlaup.bogra.gov.bd'),
(1140, 125, 'Majhira', 'মাঝিড়া', 'majhiraup.bogra.gov.bd'),
(1141, 125, 'Aria', 'আড়িয়া', 'ariaup.bogra.gov.bd'),
(1142, 125, 'Kharna', 'খরনা', 'kharnaup.bogra.gov.bd'),
(1143, 125, 'Khottapara', 'খোট্টাপাড়া', 'Khottaparaup.bogra.gov.bd'),
(1144, 125, 'Chopinagar', 'চোপিনগর', 'chopinagarup.bogra.gov.bd'),
(1145, 125, 'Amrul', 'আমরুল', 'amrulup.bogra.gov.bd'),
(1146, 125, 'Gohail', 'গোহাইল', 'gohailup.bogra.gov.bd'),
(1147, 126, 'Zianagar', 'জিয়ানগর', 'zianagarup.bogra.gov.bd'),
(1148, 126, 'Chamrul', 'চামরুল', 'chamrulup.bogra.gov.bd'),
(1149, 126, 'Dupchanchia', 'দুপচাঁচিয়া', 'dupchanchiaup.bogra.gov.bd'),
(1150, 126, 'Gunahar', 'গুনাহার', 'gunaharup.bogra.gov.bd'),
(1151, 126, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.bogra.gov.bd'),
(1152, 126, 'Talora', 'তালোড়া', 'taloraup.bogra.gov.bd'),
(1153, 127, 'Chhatiangram', 'ছাতিয়ানগ্রাম', 'chhatiangramup.bogra.gov.bd'),
(1154, 127, 'Nasaratpur', 'নশরতপুর', 'nasaratpurup.bogra.gov.bd'),
(1155, 127, 'Adamdighi', 'আদমদিঘি', 'adamdighiup.bogra.gov.bd'),
(1156, 127, 'Kundagram', 'কুন্দগ্রাম', 'kundagramup.bogra.gov.bd'),
(1157, 127, 'Chapapur', 'চাঁপাপুর', 'chapapurup.bogra.gov.bd'),
(1158, 127, 'Shantahar', 'সান্তাহার', 'shantaharup.bogra.gov.bd'),
(1159, 128, 'Burail', 'বুড়ইল', 'burailup.bogra.gov.bd'),
(1160, 128, 'Nandigram', 'নন্দিগ্রাম', 'nandigramup.bogra.gov.bd'),
(1161, 128, 'Bhatra', 'ভাটরা', 'bhatraup.bogra.gov.bd'),
(1162, 128, 'Thalta Majhgram', 'থালতা মাঝগ্রাম', 'thaltamajhgramup.bogra.gov.bd'),
(1163, 128, 'Bhatgram', 'ভাটগ্রাম', 'bhatgramup.bogra.gov.bd'),
(1164, 129, 'Sonatala', 'সোনাতলা', 'sonatalaup.bogra.gov.bd'),
(1165, 129, 'Balua', 'বালুয়া', 'baluaup.bogra.gov.bd'),
(1166, 129, 'Zorgacha', 'জোড়গাছা', 'zorgachaup.bogra.gov.bd'),
(1167, 129, 'Digdair', 'দিগদাইড়', 'digdairup.bogra.gov.bd'),
(1168, 129, 'Madhupur', 'মধুপুর', 'madhupurup.bogra.gov.bd'),
(1169, 129, 'Pakulla', 'পাকুল্ল্যা', 'pakullaup.bogra.gov.bd'),
(1170, 129, 'Tekani Chukinagar', 'তেকানী চুকাইনগর', 'tekanichukinagarup.bogra.gov.bd'),
(1171, 130, 'Nimgachi', 'নিমগাছি', 'nimgachiup.bogra.gov.bd'),
(1172, 130, 'Kalerpara', 'কালেরপাড়া', 'kalerparaup.bogra.gov.bd'),
(1173, 130, 'Chikashi', 'চিকাশী', 'chikashiup.bogra.gov.bd'),
(1174, 130, 'Gossainbari', 'গোসাইবাড়ী', 'gossainbariup.bogra.gov.bd'),
(1175, 130, 'Bhandarbari', 'ভান্ডারবাড়ী', 'bhandarbariup.bogra.gov.bd'),
(1176, 130, 'Gopalnagar', '১গোপালনগর', 'gopalnagarup.bogra.gov.bd'),
(1177, 130, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.bogra.gov.bd'),
(1178, 130, 'Chowkibari', 'চৌকিবাড়ী', 'chowkibariup.bogra.gov.bd'),
(1179, 130, 'Elangi', 'এলাঙ্গী', 'elangiup.bogra.gov.bd'),
(1180, 130, 'Dhunat Sadar', 'ধুনট সদর', 'dhunatsadarup.bogra.gov.bd'),
(1181, 131, 'Baliadighi', 'বালিয়া দিঘী', 'baliadighiup.bogra.gov.bd'),
(1182, 131, 'Dakshinpara', 'দক্ষিণপাড়া', 'dakshinparaup.bogra.gov.bd'),
(1183, 131, 'Durgahata', 'দুর্গাহাটা', 'durgahataup.bogra.gov.bd'),
(1184, 131, 'Kagail', 'কাগইল', 'kagailup.bogra.gov.bd'),
(1185, 131, 'Sonarai', 'সোনারায়', 'sonaraiup.bogra.gov.bd'),
(1186, 131, 'Rameshwarpur', 'রামেশ্বরপুর', 'rameshwarpurup.bogra.gov.bd'),
(1187, 131, 'Naruamala', 'নাড়ুয়ামালা', 'naruamalaup.bogra.gov.bd'),
(1188, 131, 'Nepaltali', 'নেপালতলী', 'nepaltaliup.bogra.gov.bd'),
(1189, 131, 'Gabtali', 'গাবতলি', 'gabtaliup.bogra.gov.bd'),
(1190, 131, 'Mahishaban', 'মহিষাবান', 'mahishabanup.bogra.gov.bd'),
(1191, 131, 'Nasipur', 'নশিপুর', 'nasipurup.bogra.gov.bd'),
(1192, 132, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.bogra.gov.bd'),
(1193, 132, 'Khamarkandi', 'খামারকান্দি', 'khamarkandiup.bogra.gov.bd'),
(1194, 132, 'Garidaha', 'গাড়িদহ', 'garidahaup.bogra.gov.bd'),
(1195, 132, 'Kusumbi', 'কুসুম্বী', 'kusumbiup.bogra.gov.bd'),
(1196, 132, 'Bishalpur', 'বিশালপুর', 'bishalpurup.bogra.gov.bd'),
(1197, 132, 'Shimabari', 'সীমাবাড়ি', 'shimabariup.bogra.gov.bd'),
(1198, 132, 'Shahbondegi', 'শাহবন্দেগী', 'shahbondegiup.bogra.gov.bd'),
(1199, 132, 'Sughat', 'সুঘাট', 'sughatup.bogra.gov.bd'),
(1200, 132, 'Khanpur', 'খানপুর', 'khanpurup.bogra.gov.bd'),
(1201, 132, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.bogra.gov.bd'),
(1202, 133, 'Moidanhatta', 'ময়দানহাট্টা', 'moidanhattaup.bogra.gov.bd'),
(1203, 133, 'Kichok', 'কিচক', 'kichokup.bogra.gov.bd'),
(1204, 133, 'Atmul', 'আটমূল', 'atmulup.bogra.gov.bd'),
(1205, 133, 'Pirob', 'পিরব', 'pirobup.bogra.gov.bd'),
(1206, 133, 'Majhihatta', 'মাঝিহট্ট', 'majhihattaup.bogra.gov.bd'),
(1207, 133, 'Buriganj', 'বুড়িগঞ্জ', 'buriganjup.bogra.gov.bd'),
(1208, 133, 'Bihar', 'বিহার', 'biharup.bogra.gov.bd'),
(1209, 133, 'Shibganj', 'শিবগঞ্জ', 'shibganjup.bogra.gov.bd'),
(1210, 133, 'Deuly', 'দেউলি', 'deulyup.bogra.gov.bd'),
(1211, 133, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bogra.gov.bd'),
(1212, 133, 'Mokamtala', 'মোকামতলা', 'mokamtalaup.bogra.gov.bd'),
(1213, 133, 'Raynagar', 'রায়নগর', 'raynagarup.bogra.gov.bd'),
(1214, 134, 'Darsanpara', 'দর্শনপাড়া', 'darsanparaup.rajshahi.gov.bd'),
(1215, 134, 'Hujuripara', 'হুজুরী পাড়া', 'hujuriparaup.rajshahi.gov.bd'),
(1216, 134, 'Damkura', 'দামকুড়া', 'damkuraup.rajshahi.gov.bd'),
(1217, 134, 'Horipur', 'হরিপুর', 'horipurup.rajshahi.gov.bd'),
(1218, 134, 'Horogram', 'হড়গ্রাম', 'horogramup.rajshahi.gov.bd'),
(1219, 134, 'Harian', 'হরিয়ান', 'harianup.rajshahi.gov.bd'),
(1220, 134, 'Borgachi', 'বড়্গাছি', 'borgachiup.rajshahi.gov.bd'),
(1221, 134, 'Parila', 'পারিলা', 'parilaup.rajshahi.gov.bd'),
(1222, 135, 'Naopara', 'নওপাড়া', 'naoparaup.rajshahi.gov.bd'),
(1223, 135, 'Kismatgankoir', 'কিসমতগণকৈড়', 'kismatgankoirup.rajshahi.gov.bd'),
(1224, 135, 'Pananagar', 'পানানগর', 'pananagarup.rajshahi.gov.bd'),
(1225, 135, 'Deluabari', 'দেলুয়াবাড়ী', 'deluabariup.rajshahi.gov.bd'),
(1226, 135, 'Jhaluka', 'ঝালুকা', 'jhalukaup.rajshahi.gov.bd'),
(1227, 135, 'Maria', 'মাড়িয়া', 'mariaup.rajshahi.gov.bd'),
(1228, 135, 'Joynogor', 'জয়নগর', 'joynogorup.rajshahi.gov.bd'),
(1229, 136, 'Dhuroil', 'ধুরইল', 'dhuroilup.rajshahi.gov.bd'),
(1230, 136, 'Ghasigram', 'ঘষিগ্রাম', 'ghasigramup.rajshahi.gov.bd'),
(1231, 136, 'Raighati', 'রায়ঘাটি', 'raighatiup.rajshahi.gov.bd'),
(1232, 136, 'Mougachi', 'মৌগাছি', 'mougachiup.rajshahi.gov.bd'),
(1233, 136, 'Baksimoil', 'বাকশিমইল', 'baksimoilup.rajshahi.gov.bd'),
(1234, 136, 'Jahanabad', 'জাহানাবাদ', 'jahanabadup.rajshahi.gov.bd'),
(1235, 137, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.rajshahi.gov.bd'),
(1236, 137, 'Solua', 'শলুয়া', 'soluaup.rajshahi.gov.bd'),
(1237, 137, 'Sardah', 'সরদহ', 'sardahup.rajshahi.gov.bd'),
(1238, 137, 'Nimpara', 'নিমপাড়া', 'nimparaup.rajshahi.gov.bd'),
(1239, 137, 'Charghat', 'চারঘাট', 'charghatup.rajshahi.gov.bd'),
(1240, 137, 'Vialuxmipur', 'ভায়ালক্ষ্মীপুর', 'vialuxmipurup.rajshahi.gov.bd'),
(1241, 138, 'Puthia', 'পুঠিয়া', 'puthiaup.rajshahi.gov.bd'),
(1242, 138, 'Belpukuria', 'বেলপুকুরিয়া', 'belpukuriaup.rajshahi.gov.bd'),
(1243, 138, 'Baneswar', 'বানেশ্বর', 'baneswarup.rajshahi.gov.bd'),
(1244, 138, 'Valukgachi', 'ভালুক গাছি', 'valukgachiup.rajshahi.gov.bd'),
(1245, 138, 'Shilmaria', 'শিলমাড়িয়া', 'shilmariaup.rajshahi.gov.bd'),
(1246, 138, 'Jewpara', 'জিউপাড়া', 'jewparaup.rajshahi.gov.bd'),
(1247, 139, 'Bajubagha', 'বাজুবাঘা', 'bajubaghaup.rajshahi.gov.bd'),
(1248, 139, 'Gorgori', 'গড়গড়ি', 'gorgoriup.rajshahi.gov.bd'),
(1249, 139, 'Pakuria', 'পাকুড়িয়া', 'pakuriaup.rajshahi.gov.bd'),
(1250, 139, 'Monigram', 'মনিগ্রাম', 'monigramup.rajshahi.gov.bd'),
(1251, 139, 'Bausa', 'বাউসা', 'bausaup.rajshahi.gov.bd'),
(1252, 139, 'Arani', 'আড়ানী', 'araniup.rajshahi.gov.bd'),
(1253, 140, 'Godagari', 'গোদাগাড়ী', 'godagariup.rajshahi.gov.bd'),
(1254, 140, 'Mohonpur', 'মোহনপুর', 'mohonpurup.rajshahi.gov.bd'),
(1255, 140, 'Pakri', 'পাকড়ী', 'pakriup.rajshahi.gov.bd'),
(1256, 140, 'Risikul', 'রিশিকুল', 'risikulup.rajshahi.gov.bd'),
(1257, 140, 'Gogram', 'গোগ্রাম', 'gogramup.rajshahi.gov.bd'),
(1258, 140, 'Matikata', 'মাটিকাটা', 'matikataup.rajshahi.gov.bd'),
(1259, 140, 'Dewpara', 'দেওপাড়া', 'dewparaup.rajshahi.gov.bd'),
(1260, 140, 'Basudebpur', 'বাসুদেবপুর', 'basudebpurup.rajshahi.gov.bd'),
(1261, 140, 'Asariadaha', 'আষাড়িয়াদহ', 'asariadahaup.rajshahi.gov.bd'),
(1262, 141, 'Kalma', 'কলমা', 'kalmaup.rajshahi.gov.bd'),
(1263, 141, 'Badhair', 'বাধাইড়', 'badhairup.rajshahi.gov.bd'),
(1264, 141, 'Panchandar', 'পাঁচন্দর', 'panchandarup.rajshahi.gov.bd'),
(1265, 141, 'Saranjai', 'সরঞ্জাই', 'saranjaiup.rajshahi.gov.bd'),
(1266, 141, 'Talondo', 'তালন্দ', 'talondoup.rajshahi.gov.bd'),
(1267, 141, 'Kamargaon', 'কামারগাঁ', 'kamargaonup.rajshahi.gov.bd'),
(1268, 141, 'Chanduria', 'চান্দুড়িয়া', 'chanduriaup.rajshahi.gov.bd'),
(1269, 142, 'Gobindopara', 'গোবিন্দপাড়া', 'gobindoparaup.rajshahi.gov.bd'),
(1270, 142, 'Nordas', 'নরদাস', 'nordasup.rajshahi.gov.bd'),
(1271, 142, 'Dippur', 'দ্বীপপুর', 'dippurup.rajshahi.gov.bd'),
(1272, 142, 'Borobihanoli', 'বড়বিহানলী', 'borobihanoliup.rajshahi.gov.bd'),
(1273, 142, 'Auchpara', 'আউচপাড়া', 'auchparaup.rajshahi.gov.bd'),
(1274, 142, 'Sreepur', 'শ্রীপুর', 'sreepurup.rajshahi.gov.bd'),
(1275, 142, 'Basupara', 'বাসুপাড়া', 'basuparaup.rajshahi.gov.bd'),
(1276, 142, 'Kacharikoalipara', 'কাচাড়ী কোয়লিপাড়া', 'kacharikoaliparaup.rajshahi.gov.bd'),
(1277, 142, 'Suvodanga', 'শুভডাঙ্গা', 'suvodangaup.rajshahi.gov.bd'),
(1278, 142, 'Mariaup', 'মাড়িয়া', 'mariaup10.rajshahi.gov.bd'),
(1279, 142, 'Ganipur', 'গণিপুর', 'ganipurup.rajshahi.gov.bd'),
(1280, 142, 'Zhikara', 'ঝিকড়া', 'zhikaraup.rajshahi.gov.bd'),
(1281, 142, 'Gualkandi', 'গোয়ালকান্দি', 'gualkandiup.rajshahi.gov.bd'),
(1282, 142, 'Hamirkutsa', 'হামিরকুৎসা', 'hamirkutsaup.rajshahi.gov.bd'),
(1283, 142, 'Jogipara', 'যোগিপাড়া', 'jogiparaup.rajshahi.gov.bd'),
(1284, 142, 'Sonadanga', 'সোনাডাঙ্গা', 'sonadangaup.rajshahi.gov.bd'),
(1285, 143, 'Brahmapur', 'ব্রহ্মপুর', 'brahmapurup.natore.gov.bd'),
(1286, 143, 'Madhnagar', 'মাধনগর', 'madhnagar.natore.gov.bd'),
(1287, 143, 'Khajura', 'খাজুরা', 'khajura.bdgovportal.com'),
(1288, 143, 'Piprul', 'পিপরুল', 'piprulup.natore.gov.bd'),
(1289, 143, 'Biprobelghoria', 'বিপ্রবেলঘড়িয়া', 'biprobelghoria.bdgovportal.com'),
(1290, 143, 'Chhatni', 'ছাতনী', 'chhatni.bdgovportal.com'),
(1291, 143, 'Tebaria', 'তেবাড়িয়া', 'tebariaup.natore.gov.bd'),
(1292, 143, 'Dighapatia', 'দিঘাপতিয়া', 'dighapatiaup.natore.gov.bd'),
(1293, 143, 'Luxmipurkholabaria', 'লক্ষীপুর খোলাবাড়িয়া', 'luxmipurkholabariaup.natore.gov.bd'),
(1294, 143, 'Barahorispur', 'বড়হরিশপুর', 'barahorispur.bdgovportal.com'),
(1295, 143, 'Kaphuria', 'কাফুরিয়া', 'kaphuria.bdgovportal.com'),
(1296, 143, 'Halsa', 'হালসা', 'halsa.natore.gov.bd'),
(1297, 144, 'Sukash', 'শুকাশ', 'sukashup.natore.gov.bd'),
(1298, 144, 'Dahia', 'ডাহিয়া', 'dahiaup.natore.gov.bd'),
(1299, 144, 'Italy', 'ইটালী', 'italyup.natore.gov.bd'),
(1300, 144, 'Kalam', 'কলম', 'kalamup.natore.gov.bd'),
(1301, 144, 'Chamari', 'চামারী', 'chamariup.natore.gov.bd'),
(1302, 144, 'Hatiandaha', 'হাতিয়ানদহ', 'hatiandahaup.natore.gov.bd'),
(1303, 144, 'Lalore', 'লালোর', 'laloreup.natore.gov.bd'),
(1304, 144, 'Sherkole', 'শেরকোল', 'sherkoleup.natore.gov.bd'),
(1305, 144, 'Tajpur', 'তাজপুর', 'tajpurup.natore.gov.bd'),
(1306, 144, 'Chaugram', 'চৌগ্রাম', 'chaugramup.natore.gov.bd'),
(1307, 144, 'Chhatardighi', 'ছাতারদিঘী', 'chhatardighiup.natore.gov.bd'),
(1308, 144, 'Ramanandakhajura', 'রামান্দখাজুরা', 'ramanandakhajuraup.natore.gov.bd'),
(1309, 145, 'Joari', 'জোয়াড়ী', 'joariup.natore.gov.bd'),
(1310, 145, 'Baraigram', 'বড়াইগ্রাম', 'baraigramup.natore.gov.bd'),
(1311, 145, 'Zonail', 'জোনাইল', 'zonailup.natore.gov.bd'),
(1312, 145, 'Nagor', 'নগর', 'nagorup.natore.gov.bd'),
(1313, 145, 'Majgoan', 'মাঝগাও', 'majgoanup.natore.gov.bd'),
(1314, 145, 'Gopalpur', 'গোপালপুর', 'gopalpurup.natore.gov.bd'),
(1315, 145, 'Chandai', 'চান্দাই', 'chandai.bdgovportal.com'),
(1316, 146, 'Panka', 'পাঁকা', 'pankaup.natore.gov.bd'),
(1317, 146, 'Jamnagor', 'জামনগর', 'jamnagorup.natore.gov.bd'),
(1318, 146, 'Bagatipara', 'বাগাতিপাড়া', 'bagatiparaup.natore.gov.bd'),
(1319, 146, 'Dayarampur', 'দয়ারামপুর', 'dayarampurup.natore.gov.bd'),
(1320, 146, 'Faguardiar', 'ফাগুয়ারদিয়াড়', 'faguardiarup.natore.gov.bd'),
(1321, 147, 'Lalpur', 'লালপুর', 'lalpurup.natore.gov.bd'),
(1322, 147, 'Iswardi', 'ঈশ্বরদী', 'iswardiup.natore.gov.bd'),
(1323, 147, 'Chongdhupoil', 'চংধুপইল', 'chongdhupoilup.natore.gov.bd'),
(1324, 147, 'Arbab', 'আড়বাব', 'arbabup.natore.gov.bd'),
(1325, 147, 'Bilmaria', 'বিলমাড়িয়া', 'bilmariaup.natore.gov.bd'),
(1326, 147, 'Duaria', 'দুয়ারিয়া', 'duariaup.natore.gov.bd'),
(1327, 147, 'Oalia', 'ওয়ালিয়া', 'oaliaup.natore.gov.bd'),
(1328, 147, 'Durduria', 'দুড়দুরিয়া', 'durduriaup.natore.gov.bd'),
(1329, 147, 'Arjunpur', 'অর্জুনপুর বরমহাটী', 'arjunpurup.natore.gov.bd'),
(1330, 147, 'Kadimchilan', 'কদিমচিলান', 'kadimchilanup.natore.gov.bd'),
(1331, 148, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.natore.gov.bd'),
(1332, 148, 'Biaghat', 'বিয়াঘাট', 'biaghatup.natore.gov.bd'),
(1333, 148, 'Khubjipur', 'খুবজীপুর', 'khubjipurup.natore.gov.bd'),
(1334, 148, 'Dharabarisha', 'ধারাবারিষা', 'dharabarishaup.natore.gov.bd'),
(1335, 148, 'Moshindha', 'মসিন্দা', 'moshindhaup.natore.gov.bd'),
(1336, 148, 'Chapila', 'চাপিলা', 'chapilaup.natore.gov.bd'),
(1337, 150, 'Rukindipur', 'রুকিন্দীপুর', 'rukindipurup.joypurhat.gov.bd'),
(1338, 150, 'Sonamukhi', 'সোনামূখী', 'sonamukhiup.joypurhat.gov.bd'),
(1339, 150, 'Tilakpur', 'তিলকপুর', 'tilakpurup.joypurhat.gov.bd'),
(1340, 150, 'Raikali', 'রায়কালী', 'raikaliup.joypurhat.gov.bd'),
(1341, 150, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.joypurhat.gov.bd'),
(1342, 151, 'Matrai', 'মাত্রাই', 'matraiup.joypurhat.gov.bd'),
(1343, 151, 'Ahammedabad', 'আহম্মেদাবাদ', 'ahammedabadup.joypurhat.gov.bd'),
(1344, 151, 'Punot', 'পুনট', 'punotup.joypurhat.gov.bd'),
(1345, 151, 'Zindarpur', 'জিন্দারপুর', 'zindarpurup.joypurhat.gov.bd'),
(1346, 151, 'Udaipur', 'উদয়পুর', 'udaipurup.joypurhat.gov.bd'),
(1347, 152, 'Alampur', 'আলমপুর', 'alampurup.joypurhat.gov.bd'),
(1348, 152, 'Borail', 'বড়াইল', 'borailup.joypurhat.gov.bd'),
(1349, 152, 'Tulshiganga', ' তুলশীগংগা', 'tulshigangaup.joypurhat.gov.bd'),
(1350, 152, 'Mamudpur', 'মামুদপুর', 'mamudpurup.joypurhat.gov.bd'),
(1351, 152, 'Boratara', 'বড়তারা', 'borataraup.joypurhat.gov.bd'),
(1352, 153, 'Bagjana', 'বাগজানা', 'bagjanaup.joypurhat.gov.bd'),
(1353, 153, 'Dharanji', 'ধরঞ্জি', 'dharanjiup.joypurhat.gov.bd'),
(1354, 153, 'Aymarasulpur', 'আয়মারসুলপুর', 'aymarasulpurup.joypurhat.gov.bd'),
(1355, 153, 'Balighata', 'বালিঘাটা', 'balighataup.joypurhat.gov.bd'),
(1356, 153, 'Atapur', 'আটাপুর', 'atapurup.joypurhat.gov.bd'),
(1357, 153, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.joypurhat.gov.bd'),
(1358, 153, 'Aolai', 'আওলাই', 'aolaiup.joypurhat.gov.bd'),
(1359, 153, 'Kusumba', 'কুসুম্বা', 'kusumbaup.joypurhat.gov.bd'),
(1360, 154, 'Amdai', 'আমদই', 'amdaiup.joypurhat.gov.bd'),
(1361, 154, 'Bamb', 'বম্বু', 'bambuup.joypurhat.gov.bd'),
(1362, 154, 'Dogachi', 'দোগাছি', 'dogachiup.joypurhat.gov.bd'),
(1363, 154, 'Puranapail', 'পুরানাপৈল', 'puranapailup.joypurhat.gov.bd'),
(1364, 154, 'Jamalpur', 'জামালপুর', 'jamalpurup.joypurhat.gov.bd'),
(1365, 154, 'Chakborkat', 'চকবরকত', 'chakborkatup.joypurhat.gov.bd'),
(1366, 154, 'Mohammadabad', 'মোহাম্মদাবাদ', 'mohammadabadup.joypurhat.gov.bd'),
(1367, 154, 'Dhalahar', 'ধলাহার', 'dhalaharup.joypurhat.gov.bd'),
(1368, 154, 'Bhadsha', 'ভাদসা', 'bhadshaup.joypurhat.gov.bd'),
(1369, 155, 'Alatuli', 'আলাতুলী', 'alatuliup.chapainawabganj.gov.bd'),
(1370, 155, 'Baroghoria', 'বারঘরিয়া', 'baroghoriaup.chapainawabganj.gov.bd'),
(1371, 155, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.chapainawabganj.gov.bd'),
(1372, 155, 'Ranihati', 'রানীহাটি', 'ranihatiup.chapainawabganj.gov.bd'),
(1373, 155, 'Baliadanga', 'বালিয়াডাঙ্গা', 'baliadangaup.chapainawabganj.gov.bd'),
(1374, 155, 'Gobratola', 'গোবরাতলা', 'gobratolaup.chapainawabganj.gov.bd'),
(1375, 155, 'Jhilim', 'ঝিলিম', 'jhilimup.chapainawabganj.gov.bd'),
(1376, 155, 'Char Anupnagar', 'চর অনুপনগর', 'charaunupnagarup.chapainawabganj.gov.bd'),
(1377, 155, 'Debinagar', 'দেবীনগর', 'debinagarup.chapainawabganj.gov.bd'),
(1378, 155, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.chapainawabganj.gov.bd'),
(1379, 155, 'Islampur', 'ইসলামপুর', 'islampurup.chapainawabganj.gov.bd'),
(1380, 155, 'Charbagdanga', 'চরবাগডাঙ্গা', 'charbagdangaup.chapainawabganj.gov.bd'),
(1381, 155, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chapainawabganj.gov.bd'),
(1382, 155, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.chapainawabganj.gov.bd'),
(1383, 156, 'Radhanagar', 'রাধানগর', 'radhanagarup.chapainawabganj.gov.bd'),
(1384, 156, 'Rahanpur', 'রহনপুর', 'rahanpurup.chapainawabganj.gov.bd'),
(1385, 156, 'Boalia', 'বোয়ালিয়া', 'boaliaup.chapainawabganj.gov.bd'),
(1386, 156, 'Bangabari', 'বাঙ্গাবাড়ী', 'bangabariup.chapainawabganj.gov.bd'),
(1387, 156, 'Parbotipur', 'পার্বতীপুর', 'parbotipurup.chapainawabganj.gov.bd'),
(1388, 156, 'Chowdala', 'চৌডালা', 'chowdalaup.chapainawabganj.gov.bd'),
(1389, 156, 'Gomostapur', 'গোমস্তাপুর', 'gomostapurup.chapainawabganj.gov.bd'),
(1390, 156, 'Alinagar', 'আলীনগর', 'alinagarup.chapainawabganj.gov.bd'),
(1391, 157, 'Fhotepur', 'ফতেপুর', 'fhotepurup.chapainawabganj.gov.bd'),
(1392, 157, 'Kosba', 'কসবা', 'kosbaup.chapainawabganj.gov.bd'),
(1393, 157, 'Nezampur', 'নেজামপুর', 'nezampurup.chapainawabganj.gov.bd'),
(1394, 157, 'Nachol', 'নাচোল', 'nacholup.chapainawabganj.gov.bd'),
(1395, 158, 'Bholahat', 'ভোলাহাট', 'bholahatup.chapainawabganj.gov.bd'),
(1396, 158, 'Jambaria', 'জামবাড়িয়া', 'jambariaup.chapainawabganj.gov.bd'),
(1397, 158, 'Gohalbari', 'গোহালবাড়ী', 'gohalbariup.chapainawabganj.gov.bd'),
(1398, 158, 'Daldoli', 'দলদলী', 'daldoliup.chapainawabganj.gov.bd'),
(1399, 159, 'Binodpur', 'বিনোদপুর', 'binodpurup.chapainawabganj.gov.bd'),
(1400, 159, 'Chakkirti', 'চককির্তী', 'chakkirtiup.chapainawabganj.gov.bd'),
(1401, 159, 'Daipukuria', 'দাইপুকুরিয়া', 'daipukuriaup.chapainawabganj.gov.bd'),
(1402, 159, 'Dhainagar', 'ধাইনগর', 'dhainagarup.chapainawabganj.gov.bd'),
(1403, 159, 'Durlovpur', 'দুর্লভপুর', 'durlovpurup.chapainawabganj.gov.bd'),
(1404, 159, 'Ghorapakhia', 'ঘোড়াপাখিয়া', 'ghorapakhiaup.chapainawabganj.gov.bd'),
(1405, 159, 'Mobarakpur', 'মোবারকপুর', 'mobarakpurup.chapainawabganj.gov.bd'),
(1406, 159, 'Monakasha', 'মনাকষা', 'monakashaup.chapainawabganj.gov.bd'),
(1407, 159, 'Noyalavanga', 'নয়ালাভাঙ্গা', 'noyalavangaup.chapainawabganj.gov.bd'),
(1408, 159, 'Panka', 'পাঁকা', 'pankaup.chapainawabganj.gov.bd'),
(1409, 159, 'Chatrajitpur', 'ছত্রাজিতপুর', 'chhatrajitpurup.chapainawabganj.gov.bd'),
(1410, 159, 'Shahabajpur', 'শাহাবাজপুর', 'shahabajpurup.chapainawabganj.gov.bd'),
(1411, 159, 'Shyampur', 'শ্যামপুর', 'shyampurup.chapainawabganj.gov.bd'),
(1412, 159, 'Kansat', 'কানসাট', 'kansatup.bdgovportal.com'),
(1413, 159, 'Ujirpur', 'উজিরপুর', 'ujirpurup.chapainawabganj.gov.bd'),
(1414, 160, '1nomohadevpur', 'মহাদেবপুর', '1nomohadevpurup.naogaon.gov.bd'),
(1415, 160, 'Hatur', 'হাতুড়', '2nohaturup.naogaon.gov.bd'),
(1416, 160, 'Khajur', 'খাজুর', '3nokhajurup.naogaon.gov.bd'),
(1417, 160, 'Chandas', 'চাঁন্দাশ', '4nochandasup.naogaon.gov.bd'),
(1418, 160, 'Enayetpur', 'এনায়েতপুর', '6noenayetpurup.naogaon.gov.bd'),
(1419, 160, 'Sofapur', 'সফাপুর', '7nosofapurup.naogaon.gov.bd'),
(1420, 160, 'Uttargram', 'উত্তরগ্রাম', '8nouttargramup.naogaon.gov.bd'),
(1421, 160, 'Cheragpur', 'চেরাগপুর', '9nocheragpurup.naogaon.gov.bd'),
(1422, 160, 'Vimpur', 'ভীমপুর', '10novimpurup.naogaon.gov.bd'),
(1423, 160, 'Roygon', 'রাইগাঁ', 'roygonup.naogaon.gov.bd'),
(1424, 161, 'Badalgachi', 'বদলগাছী', '1nobadalgachiup.naogaon.gov.bd'),
(1425, 161, 'Mothurapur', 'মথুরাপুর', '2nomothurapurup.naogaon.gov.bd'),
(1426, 161, 'Paharpur', 'পাহারপুর', '3nopaharpurup.naogaon.gov.bd'),
(1427, 161, 'Mithapur', 'মিঠাপুর', '4nomithapurup.naogaon.gov.bd'),
(1428, 161, 'Kola', 'কোলা', '5nokolaup.naogaon.gov.bd'),
(1429, 161, 'Bilashbari', 'বিলাশবাড়ী', '6nobilashbariup.naogaon.gov.bd'),
(1430, 161, 'Adhaipur', 'আধাইপুর', '7noadhaipurup.naogaon.gov.bd'),
(1431, 161, 'Balubhara', 'বালুভরা', '8nobalubharaup.naogaon.gov.bd'),
(1432, 162, 'Patnitala', 'পত্নীতলা', '1nopatnitalaup.naogaon.gov.bd'),
(1433, 162, 'Nirmail', 'নিমইল', '2nonirmailup.naogaon.gov.bd'),
(1434, 162, 'Dibar', 'দিবর', '3nodibarup.naogaon.gov.bd'),
(1435, 162, 'Akbarpur', 'আকবরপুর', '4noakbarpurup.naogaon.gov.bd'),
(1436, 162, 'Matindar', 'মাটিন্দর', '5nomatindarup.naogaon.gov.bd'),
(1437, 162, 'Krishnapur', 'কৃষ্ণপুর', '6nokrishnapurup.naogaon.gov.bd'),
(1438, 162, 'Patichrara', 'পাটিচড়া', '7nopatichraraup.naogaon.gov.bd'),
(1439, 162, 'Nazipur', 'নজিপুর', '8nonazipurup.naogaon.gov.bd'),
(1440, 162, 'Ghasnagar', 'ঘষনগর', '9noghasnagarup.naogaon.gov.bd'),
(1441, 162, 'Amair', 'আমাইড়', '10noamairup.naogaon.gov.bd'),
(1442, 162, 'Shihara', 'শিহারা', '11noahiharaup.naogaon.gov.bd'),
(1443, 163, 'Dhamoirhat', 'ধামইরহাট', '1nodhamoirhatup.naogaon.gov.bd'),
(1444, 163, 'Alampur', 'আলমপুর', '3noalampurup.naogaon.gov.bd'),
(1445, 163, 'Umar', 'উমার', '4noumarup.naogaon.gov.bd'),
(1446, 163, 'Aranagar', 'আড়ানগর', '5noaranagarup.naogaon.gov.bd'),
(1447, 163, 'Jahanpur', 'জাহানপুর', '6nojahanpurup.naogaon.gov.bd'),
(1448, 163, 'Isabpur', 'ইসবপুর', '7noisabpurup.naogaon.gov.bd'),
(1449, 163, 'Khelna', 'খেলনা', '8nokhelnaup.naogaon.gov.bd'),
(1450, 163, 'Agradigun', 'আগ্রাদ্বিগুন', '2noagradigunup.naogaon.gov.bd'),
(1451, 164, 'Hajinagar', 'হাজীনগর', '1nohajinagarup.naogaon.gov.bd'),
(1452, 164, 'Chandannagar', 'চন্দননগর', '2nochandannagarup.naogaon.gov.bd'),
(1453, 164, 'Bhabicha', 'ভাবিচা', '3nobhabichaup.naogaon.gov.bd'),
(1454, 164, 'Niamatpur', 'নিয়ামতপুর', '4noniamatpurup.naogaon.gov.bd'),
(1455, 164, 'Rasulpur', 'রসুলপুর', '5norasulpurup.naogaon.gov.bd'),
(1456, 164, 'Paroil', 'পাড়ইল', '6noparoilup.naogaon.gov.bd'),
(1457, 164, 'Sremantapur', 'শ্রীমন্তপুর', '7nosremantapurup.naogaon.gov.bd'),
(1458, 164, 'Bahadurpur', 'বাহাদুরপুর', '8nobahadurpurup.naogaon.gov.bd'),
(1459, 165, 'Varsho', 'ভারশো', '1novarshoup.naogaon.gov.bd'),
(1460, 165, 'Valain', 'ভালাইন', '2novalainup.naogaon.gov.bd'),
(1461, 165, 'Paranpur', 'পরানপুর', '3noparanpurup.naogaon.gov.bd'),
(1462, 165, 'Manda', 'মান্দা', '4nomandaup.naogaon.gov.bd'),
(1463, 165, 'Goneshpur', 'গনেশপুর', '5nogoneshpurup.naogaon.gov.bd'),
(1464, 165, 'Moinom', 'মৈনম', '6nomoinomup.naogaon.gov.bd'),
(1465, 165, 'Proshadpur', 'প্রসাদপুর', '7noproshadpurup.naogaon.gov.bd'),
(1466, 165, 'Kosomba', 'কুসুম্বা', '8nokosombaup.naogaon.gov.bd'),
(1467, 165, 'Tetulia', 'তেঁতুলিয়া', '9notetuliaup.naogaon.gov.bd'),
(1468, 165, 'Nurullabad', 'নূরুল্যাবাদ', '10nonurullabadup.naogaon.gov.bd'),
(1469, 165, 'Kalikapur', 'কালিকাপুর', '11nokalikapurup.naogaon.gov.bd'),
(1470, 165, 'Kashopara', 'কাঁশোকাপুর', '12nokashoparaup.naogaon.gov.bd'),
(1471, 165, 'Koshob', 'কশব', '13nokoshobup.naogaon.gov.bd'),
(1472, 165, 'Bisnopur', 'বিষ্ণপুর', '14nobisnopurup.naogaon.gov.bd'),
(1473, 166, 'Shahagola', 'শাহাগোলা', '1noshahagolaup.naogaon.gov.bd'),
(1474, 166, 'Bhonpara', 'ভোঁপড়া', '2nobhonparaup.naogaon.gov.bd'),
(1475, 166, 'Ahsanganj', 'আহসানগঞ্জ', '3noahsanganjup.naogaon.gov.bd'),
(1476, 166, 'Panchupur', 'পাঁচুপুর', '4nopanchupurup.naogaon.gov.bd'),
(1477, 166, 'Bisha', 'বিশা', '5nobishaup.naogaon.gov.bd'),
(1478, 166, 'Maniary', 'মনিয়ারী', '6nomaniaryup.naogaon.gov.bd'),
(1479, 166, 'Kalikapur', 'কালিকাপুর', '7nokalikapurup.naogaon.gov.bd'),
(1480, 166, 'Hatkalupara', 'হাটকালুপাড়া', '8nohatkaluparaup.naogaon.gov.bd'),
(1481, 167, 'Khatteshawr', 'খট্টেশ্বর রাণীনগর', '1nokhatteshawrup.naogaon.gov.bd'),
(1482, 167, 'Kashimpur', 'কাশিমপুর', '2nokashimpurup.naogaon.gov.bd'),
(1483, 167, 'Gona', 'গোনা', '3nogonaup.naogaon.gov.bd'),
(1484, 167, 'Paroil', 'পারইল', '4noparoilup.naogaon.gov.bd'),
(1485, 167, 'Borgoca', 'বরগাছা', '5noborgocaup.naogaon.gov.bd'),
(1486, 167, 'Kaligram', 'কালিগ্রাম', '6nokaligramup.naogaon.gov.bd'),
(1487, 167, 'Ekdala', 'একডালা', '7noekdalaup.naogaon.gov.bd'),
(1488, 167, 'Mirat', 'মিরাট', '8nomiratup.naogaon.gov.bd'),
(1489, 168, 'Barshail', 'বর্ষাইল', '1nobarshailup.naogaon.gov.bd'),
(1490, 168, 'Kritipur', 'কির্ত্তিপুর', '2nokritipurup.naogaon.gov.bd'),
(1491, 168, 'Baktiarpur', 'বক্তারপুর', '3nobaktiarpurup.naogaon.gov.bd'),
(1492, 168, 'Tilakpur', 'তিলোকপুর', '4notilakpurup.naogaon.gov.bd'),
(1493, 168, 'Hapaniya', 'হাপানিয়া', '5nohapaniyaup.naogaon.gov.bd'),
(1494, 168, 'Dubalhati', 'দুবলহাটী', '6nodubalhatiup.naogaon.gov.bd'),
(1495, 168, 'Boalia', 'বোয়ালিয়া', '7noboaliaup.naogaon.gov.bd'),
(1496, 168, 'Hashaigari', 'হাঁসাইগাড়ী', '8nohashaigariup.naogaon.gov.bd'),
(1497, 168, 'Chandipur', 'চন্ডিপুর', '9nochandipurup.naogaon.gov.bd'),
(1498, 168, 'Bolihar', 'বলিহার', '10noboliharup.naogaon.gov.bd'),
(1499, 168, 'Shekerpur', 'শিকারপুর', '11noshekerpurup.naogaon.gov.bd'),
(1500, 168, 'Shailgachhi', 'শৈলগাছী', '12noshailgachhiup.naogaon.gov.bd'),
(1501, 169, 'Nitpur', 'নিতপুর', 'nitpurup.naogaon.gov.bd'),
(1502, 169, 'Tetulia', 'তেঁতুলিয়া', '2notetuliaup.naogaon.gov.bd'),
(1503, 169, 'Chhaor', 'ছাওড়', '3nochhaorup.naogaon.gov.bd'),
(1504, 169, 'Ganguria', 'গাঙ্গুরিয়া', '4noganguriaup.naogaon.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(1505, 169, 'Ghatnagar', 'ঘাটনগর', '5noghatnagarup.naogaon.gov.bd'),
(1506, 169, 'Moshidpur', 'মশিদপুর', '6nomoshidpurup.naogaon.gov.bd'),
(1507, 170, 'Sapahar', 'সাপাহার', '1nosapaharup.naogaon.gov.bd'),
(1508, 170, 'Tilna', 'তিলনা', '3notilnaup.naogaon.gov.bd'),
(1509, 170, 'Aihai', 'আইহাই', '4noaihaiup.naogaon.gov.bd'),
(1510, 170, 'Shironti', 'শিরন্টী', '6noshirontiup.naogaon.gov.bd'),
(1511, 170, 'Goala', 'গোয়ালা', 'goalaup.naogaon.gov.bd'),
(1512, 170, 'Patari', 'পাতাড়ী', 'patariup.naogaon.gov.bd'),
(1513, 171, 'Nehalpur', 'নেহালপুর', 'nehalpurup.jessore.gov.bd'),
(1514, 171, 'Hariharnagar', 'হরিহরনগর', 'hariharnagarup.jessore.gov.bd'),
(1515, 171, 'Haridaskati', 'হরিদাসকাটি', 'haridaskatiup.jessore.gov.bd'),
(1516, 171, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jessore.gov.bd'),
(1517, 171, 'Rohita', 'রোহিতা', 'rohitaup.jessore.gov.bd'),
(1518, 171, 'Maswimnagar', 'মশ্মিমনগর', 'maswimnagarup.jessore.gov.bd'),
(1519, 171, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jessore.gov.bd'),
(1520, 171, 'Manirampur', 'মনিরামপুর', 'manirampurup.jessore.gov.bd'),
(1521, 171, 'Bhojgati', 'ভোজগাতি', 'bhojgatiup.jessore.gov.bd'),
(1522, 171, 'Durbadanga', 'দুর্বাডাংগা', 'durbadangaup.jessore.gov.bd'),
(1523, 171, 'Dhakuria', 'ঢাকুরিয়া', 'dhakuriaup.jessore.gov.bd'),
(1524, 171, 'Jhanpa', 'ঝাঁপা', 'jhanpaup.jessore.gov.bd'),
(1525, 171, 'Chaluahati', 'চালুয়াহাটি', 'chaluahatiup.jessore.gov.bd'),
(1526, 171, 'Khedapara', 'খেদাপাড়া', 'khedaparaup.jessore.gov.bd'),
(1527, 171, 'Khanpur', 'খানপুর', 'khanpurup.jessore.gov.bd'),
(1528, 171, 'Kultia', 'কুলটিয়া', 'kultiaup.jessore.gov.bd'),
(1529, 171, 'Kashimnagar', 'কাশিমনগর', 'kashimnagarup.jessore.gov.bd'),
(1530, 172, 'Baghutia', 'বাঘুটিয়া', 'baghutia.jessore.gov.bd'),
(1531, 172, 'Chalishia', 'চলিশিয়া', 'chalishiaup.jessore.gov.bd'),
(1532, 172, 'Sundoli', 'সুন্দলী', 'sundoliup.jessore.gov.bd'),
(1533, 172, 'Siddhipasha', 'সিদ্দিপাশা', 'siddhipashaup.jessore.gov.bd'),
(1534, 172, 'Sreedharpur', 'শ্রীধরপুর', 'sreedharpurup.jessore.gov.bd'),
(1535, 172, 'Subharara', 'শুভরাড়া', 'subhararaup.jessore.gov.bd'),
(1536, 172, 'Prambag', 'প্রেমবাগ', 'prambagup.jessore.gov.bd'),
(1537, 172, 'Payra', 'পায়রা', 'payraup.jessore.gov.bd'),
(1538, 173, 'Jaharpur', 'জহুরপুর', 'jaharpurup.jessore.gov.bd'),
(1539, 173, 'Jamdia', 'জামদিয়া', 'jamdiaup.jessore.gov.bd'),
(1540, 173, 'Darajhat', 'দরাজহাট', 'darajhatup.jessore.gov.bd'),
(1541, 173, 'Dhalgram', 'ধলগ্রাম', 'dhalgramup.jessore.gov.bd'),
(1542, 173, 'Narikelbaria', 'নারিকেলবাড়ীয়া', 'narikelbariaup.jessore.gov.bd'),
(1543, 173, 'Bandabilla', 'বন্দবিলা', 'bandabillaup.jessore.gov.bd'),
(1544, 173, 'Basuari', 'বাসুয়াড়ী', 'basuariup.jessore.gov.bd'),
(1545, 173, 'Roypur', 'রায়পুর', 'roypurup.jessore.gov.bd'),
(1546, 173, 'Dohakula', 'দোহাকুলা', 'dohakulaup.jessore.gov.bd'),
(1547, 174, 'Chougachha', 'চৌগাছা', 'chougachhaup5.jessore.gov.bd'),
(1548, 174, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup6.jessore.gov.bd'),
(1549, 174, 'Dhuliani', 'ধুলিয়ানী', 'dhulianiup4.jessore.gov.bd'),
(1550, 174, 'Narayanpur', 'নারায়নপুর', 'narayanpurup10.jessore.gov.bd'),
(1551, 174, 'Patibila', 'পাতিবিলা', 'patibilaup7.jessore.gov.bd'),
(1552, 174, 'Pashapole', 'পাশাপোল', 'pashapoleup2.jessore.gov.bd'),
(1553, 174, 'Fulsara', 'ফুলসারা', 'fulsaraup1.jessore.gov.bd'),
(1554, 174, 'Singhajhuli', 'সিংহঝুলি', 'singhajhuliup3.jessore.gov.bd'),
(1555, 174, 'Sukpukhuria', 'সুখপুকুরিয়া', 'sukpukhuriaup11.jessore.gov.bd'),
(1556, 174, 'Swarupdaha', 'সরুপদাহ', 'swarupdahaup9.jessore.gov.bd'),
(1557, 174, 'Hakimpur', 'হাকিমপুর', 'hakimpurup8.jessore.gov.bd'),
(1558, 175, 'Gangananda', 'গংগানন্দপুর', 'ganganandapurup.jessore.gov.bd'),
(1559, 175, 'Gadkhali', 'গদখালী', 'gadkhaliup.jessore.gov.bd'),
(1560, 175, 'Jhikargachha', 'ঝিকরগাছা', 'jhikargachhaup.jessore.gov.bd'),
(1561, 175, 'Nabharan', 'নাভারন', 'nabharanup.jessore.gov.bd'),
(1562, 175, 'Nibaskhola', 'নির্বাসখোলা', 'nibaskholaup.jessore.gov.bd'),
(1563, 175, 'Panisara', 'পানিসারা', 'panisaraup.jessore.gov.bd'),
(1564, 175, 'Bankra', 'বাঁকড়া', 'bankraup.jessore.gov.bd'),
(1565, 175, 'Shankarpur', 'শংকরপুর', 'shankarpurup10.jessore.gov.bd'),
(1566, 175, 'Shimulia', 'শিমুলিয়া', 'shimuliaup3.jessore.gov.bd'),
(1567, 175, 'Hajirbagh', 'হাজিরবাগ', 'hajirbaghup9.jessore.gov.bd'),
(1568, 175, 'Magura', 'মাগুরা', 'maguraup.jessore.gov.bd'),
(1569, 176, 'Sufalakati', 'সুফলাকাটি', 'sufalakatiup8.jessore.gov.bd'),
(1570, 176, 'Sagardari', 'সাগরদাড়ী', 'sagardariup2.jessore.gov.bd'),
(1571, 176, 'Majidpur', 'মজিদপুর', 'majidpurup3.jessore.gov.bd'),
(1572, 176, 'Mongolkot', 'মঙ্গলকোর্ট', 'mongolkotup5.jessore.gov.bd'),
(1573, 176, 'Bidyanandakati', 'বিদ্যানন্দকাটি', 'bidyanandakatiup4.jessore.gov.bd'),
(1574, 176, 'Panjia', 'পাজিয়া', 'panjiaup7.jessore.gov.bd'),
(1575, 176, 'Trimohini', 'ত্রিমোহিনী', 'trimohiniup1.jessore.gov.bd'),
(1576, 176, 'Gaurighona', 'গৌরিঘোনা', 'gaurighonaup9.jessore.gov.bd'),
(1577, 176, 'Keshabpur', 'কেশবপুর', 'keshabpurup6.jessore.gov.bd'),
(1578, 177, 'Lebutala', 'লেবুতলা', 'lebutalaup.jessore.gov.bd'),
(1579, 177, 'Ichhali', 'ইছালী', 'ichhaliup.jessore.gov.bd'),
(1580, 177, 'Arabpur', 'আরবপুর', 'arabpurup9.jessore.gov.bd'),
(1581, 177, 'Upasahar', 'উপশহর', 'upasaharup.jessore.gov.bd'),
(1582, 177, 'Kachua', 'কচুয়া', 'kachuaup13.jessore.gov.bd'),
(1583, 177, 'Kashimpur', 'কাশিমপুর', 'kashimpurup6.jessore.gov.bd'),
(1584, 177, 'Chanchra', 'চাঁচড়া', 'chanchraup.jessore.gov.bd'),
(1585, 177, 'Churamankati', 'চূড়ামনকাটি', 'churamankatiup.jessore.gov.bd'),
(1586, 177, 'Narendrapur', 'নরেন্দ্রপুর', 'narendrapurup.jessore.gov.bd'),
(1587, 177, 'Noapara', 'নওয়াপাড়া', 'noaparaup4.jessore.gov.bd'),
(1588, 177, 'Fathehpur', 'ফতেপুর', 'fathehpurup.jessore.gov.bd'),
(1589, 177, 'Basundia', 'বসুন্দিয়া', 'basundiaup.jessore.gov.bd'),
(1590, 177, 'Ramnagar', 'রামনগর', 'ramnagarup.jessore.gov.bd'),
(1591, 177, 'Haibatpur', 'হৈবতপুর', 'haibatpurup.jessore.gov.bd'),
(1592, 177, 'Dearamodel', 'দেয়ারা মডেল', 'dearamodelup.jessore.gov.bd'),
(1593, 178, 'Ulshi', 'উলশী', 'ulshiup9.jessore.gov.bd'),
(1594, 178, 'Sharsha', 'শার্শা', 'sharshaup10.jessore.gov.bd'),
(1595, 178, 'Lakshmanpur', 'লক্ষণপুর', 'lakshmanpurup2.jessore.gov.bd'),
(1596, 178, 'Benapole', 'বেনাপোল', 'benapoleup4.jessore.gov.bd'),
(1597, 178, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup3.jessore.gov.bd'),
(1598, 178, 'Bagachra', 'বাগআচড়া', 'bagachraup8.jessore.gov.bd'),
(1599, 178, 'Putkhali', 'পুটখালী', 'putkhaliup5.jessore.gov.bd'),
(1600, 178, 'Nizampur', 'নিজামপুর', 'nizampurup11.jessore.gov.bd'),
(1601, 178, 'Dihi', 'ডিহি', 'dihiup1.jessore.gov.bd'),
(1602, 178, 'Goga', 'গোগা', 'gogaup6.jessore.gov.bd'),
(1603, 178, 'Kayba', 'কায়বা', 'kaybaup7.jessore.gov.bd'),
(1604, 179, 'Anulia', 'আনুলিয়া', 'anuliaup.satkhira.gov.bd'),
(1605, 179, 'Assasuni', 'আশাশুনি', 'assasuniup.satkhira.gov.bd'),
(1606, 179, 'Kadakati', 'কাদাকাটি', 'kadakatiup.satkhira.gov.bd'),
(1607, 179, 'Kulla', 'কুল্যা', 'kullaup.satkhira.gov.bd'),
(1608, 179, 'Khajra', 'খাজরা', 'khajraup.satkhira.gov.bd'),
(1609, 179, 'Durgapur', 'দরগাহপুর', 'durgapurup.satkhira.gov.bd'),
(1610, 179, 'Pratapnagar', 'প্রতাপনগর', 'pratapnagarup.satkhira.gov.bd'),
(1611, 179, 'Budhhata', 'বুধহাটা', 'budhhataup.satkhira.gov.bd'),
(1612, 179, 'Baradal', 'বড়দল', 'baradalup.satkhira.gov.bd'),
(1613, 179, 'Sreeula', 'শ্রীউলা', 'sreeulaup.satkhira.gov.bd'),
(1614, 179, 'Sobhnali', 'শোভনালী', 'sobhnaliup.satkhira.gov.bd'),
(1615, 180, 'Kulia', 'কুলিয়া', 'kuliaup.satkhira.gov.bd'),
(1616, 180, 'Debhata', 'দেবহাটা', 'debhataup.satkhira.gov.bd'),
(1617, 180, 'Noapara', 'নওয়াপাড়া', 'noaparaup.satkhira.gov.bd'),
(1618, 180, 'Parulia', 'পারুলিয়া', 'paruliaup.satkhira.gov.bd'),
(1619, 180, 'Sakhipur', 'সখিপুর', 'sakhipurup.satkhira.gov.bd'),
(1620, 181, 'Kushadanga', 'কুশোডাংগা', 'kushadangaup.satkhira.gov.bd'),
(1621, 181, 'Keralkata', 'কেরালকাতা', 'keralkataup.satkhira.gov.bd'),
(1622, 181, 'Keragachhi', 'কেঁড়াগাছি', 'keragachhiup.satkhira.gov.bd'),
(1623, 181, 'Kaila', 'কয়লা', 'kailaup.satkhira.gov.bd'),
(1624, 181, 'Jallabad', 'জালালাবাদ', 'jallabadup.satkhira.gov.bd'),
(1625, 181, 'Jogikhali', 'যুগিখালী', 'jogikhaliup.satkhira.gov.bd'),
(1626, 181, 'Langaljhara', 'লাঙ্গলঝাড়া', 'langaljharaup.satkhira.gov.bd'),
(1627, 181, 'Sonabaria', 'সোনাবাড়িয়া', 'sonabariaup.satkhira.gov.bd'),
(1628, 181, 'Helatala', 'হেলাতলা', 'helatalaup.satkhira.gov.bd'),
(1629, 181, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.satkhira.gov.bd'),
(1630, 181, 'Deara', 'দেয়ারা', 'dearaup.satkhira.gov.bd'),
(1631, 181, 'Joynagar', 'জয়নগর', 'joynagarup.satkhira.gov.bd'),
(1632, 182, 'Shibpur', 'শিবপুর', 'shibpurup.satkhira.gov.bd'),
(1633, 182, 'Labsa', 'লাবসা', 'labsaup.satkhira.gov.bd'),
(1634, 182, 'Bhomra', 'ভোমরা', 'bhomraup.satkhira.gov.bd'),
(1635, 182, 'Brahmarajpur', 'ব্রক্ষ্মরাজপুর', 'brahmarajpurup.satkhira.gov.bd'),
(1636, 182, 'Balli', 'বল্লী', 'balliup.satkhira.gov.bd'),
(1637, 182, 'Banshdaha', 'বাঁশদহ', 'banshdahaup.satkhira.gov.bd'),
(1638, 182, 'Baikari', 'বৈকারী', 'baikariup.satkhira.gov.bd'),
(1639, 182, 'Fingri', 'ফিংড়ি', 'fingriup.satkhira.gov.bd'),
(1640, 182, 'Dhulihar', 'ধুলিহর', 'dhuliharup.satkhira.gov.bd'),
(1641, 182, 'Jhaudanga', 'ঝাউডাঙ্গা', 'jhaudangaup.satkhira.gov.bd'),
(1642, 182, 'Ghona', 'ঘোনা', 'ghonaup.satkhira.gov.bd'),
(1643, 182, 'Kuskhali', 'কুশখালী', 'kuskhaliup.satkhira.gov.bd'),
(1644, 182, 'Alipur', 'আলিপুর', 'alipurup.satkhira.gov.bd'),
(1645, 182, 'Agardari', 'আগরদাড়ী', 'agardariup.satkhira.gov.bd'),
(1646, 183, 'Atulia', 'আটুলিয়া', 'atuliaup.satkhira.gov.bd'),
(1647, 183, 'Ishwaripur', 'ঈশ্বরীপুর', 'ishwaripurup.satkhira.gov.bd'),
(1648, 183, 'Kaikhali', 'কৈখালী', 'kaikhaliup.satkhira.gov.bd'),
(1649, 183, 'Kashimari', 'কাশিমাড়ী', 'kashimariup.satkhira.gov.bd'),
(1650, 183, 'Nurnagar', 'নুরনগর', 'nurnagarup.satkhira.gov.bd'),
(1651, 183, 'Padmapukur', 'পদ্মপুকুর', 'padmapukurup.satkhira.gov.bd'),
(1652, 183, 'Burigoalini', 'বুড়িগোয়ালিনী', 'burigoaliniup.satkhira.gov.bd'),
(1653, 183, 'Bhurulia', 'ভুরুলিয়া', 'bhuruliaup.satkhira.gov.bd'),
(1654, 183, 'Munshiganj', 'মুন্সীগজ্ঞ', 'munshiganjup.satkhira.gov.bd'),
(1655, 183, 'Ramjannagar', 'রমজাননগর', 'ramjannagarup.satkhira.gov.bd'),
(1656, 183, 'Shyamnagar', 'শ্যামনগর', 'shyamnagarup.satkhira.gov.bd'),
(1657, 183, 'Gabura', 'গাবুরা', 'gaburaup.satkhira.gov.bd'),
(1658, 184, 'Sarulia', 'সরুলিয়া', 'saruliaup3.satkhira.gov.bd'),
(1659, 184, 'Magura', 'মাগুরা', 'maguraup8.satkhira.gov.bd'),
(1660, 184, 'Nagarghata', 'নগরঘাটা', 'nagarghataup1.satkhira.gov.bd'),
(1661, 184, 'Dhandia', 'ধানদিয়া', 'dhandiaup1.satkhira.gov.bd'),
(1662, 184, 'Tentulia', 'তেতুলিয়া', 'tentuliaup5.satkhira.gov.bd'),
(1663, 184, 'Tala', 'তালা', 'talaup6.satkhira.gov.bd'),
(1664, 184, 'Jalalpur', 'জালালপুর', 'jalalpurup11.satkhira.gov.bd'),
(1665, 184, 'Khesra', 'খেশরা', 'khesraup10.satkhira.gov.bd'),
(1666, 184, 'Khalishkhali', 'খলিশখালী', 'khalishkhaliup9.satkhira.gov.bd'),
(1667, 184, 'Khalilnagar', 'খলিলনগর', 'khalilnagarup12.satkhira.gov.bd'),
(1668, 184, 'Kumira', 'কুমিরা', 'kumiraup4.satkhira.gov.bd'),
(1669, 184, 'Islamkati', 'ইসলামকাটি', 'islamkatiup7.satkhira.gov.bd'),
(1670, 185, 'Kushlia', 'কুশুলিয়া', 'kushliaup.satkhira.gov.bd'),
(1671, 185, 'Champaphul', 'চাম্পাফুল', 'champaphulup.satkhira.gov.bd'),
(1672, 185, 'Tarali', 'তারালী', 'taraliup.satkhira.gov.bd'),
(1673, 185, 'Dakshin Sreepur', 'দক্ষিণ শ্রীপুর', 'dakshinsreepurup.satkhira.gov.bd'),
(1674, 185, 'Dhalbaria', 'ধলবাড়িয়া', 'dhalbariaup.satkhira.gov.bd'),
(1675, 185, 'Nalta', 'নলতা', 'naltaup.satkhira.gov.bd'),
(1676, 185, 'Bishnupur', 'বিষ্ণুপুর', 'bishnupurup.satkhira.gov.bd'),
(1677, 185, 'Bharasimla', 'ভাড়াশিমলা', 'bharasimlaup.satkhira.gov.bd'),
(1678, 185, 'Mathureshpur', 'মথুরেশপুর', 'mathureshpurup.satkhira.gov.bd'),
(1679, 185, 'Ratanpur', 'রতনপুর', 'ratanpurup.satkhira.gov.bd'),
(1680, 185, 'Mautala', 'মৌতলা', 'mautalaup.satkhira.gov.bd'),
(1681, 185, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.satkhira.gov.bd'),
(1682, 186, 'Dariapur', 'দারিয়াপুর', 'dariapurup.meherpur.gov.bd'),
(1683, 186, 'Monakhali', 'মোনাখালী', 'monakhali.meherpur.gov.bd'),
(1684, 186, 'Bagowan', 'বাগোয়ান', 'bagowanup.meherpur.gov.bd'),
(1685, 186, 'Mohajanpur', 'মহাজনপুর', 'mohajanpurup.meherpur.gov.bd'),
(1686, 187, 'Amjhupi', 'আমঝুপি', 'amjhupi.meherpur.gov.bd'),
(1687, 187, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.meherpur.gov.bd'),
(1688, 187, 'Kutubpur', 'কতুবপুর', 'kutubpurup.meherpur.gov.bd'),
(1689, 187, 'Amdah', 'আমদহ', 'amdahup.meherpur.gov.bd'),
(1690, 187, 'Buripota', 'বুড়িপোতা', 'buripotaup.meherpur.gov.bd'),
(1691, 188, 'Tentulbaria', 'তেঁতুলবাড়ীয়া', 'tentulbaria.meherpur.gov.bd'),
(1692, 188, 'Kazipur', 'কাজিপুর', 'kazipurup.meherpur.gov.bd'),
(1693, 188, 'Bamondi', 'বামন্দী', 'bamondiup.meherpur.gov.bd'),
(1694, 188, 'Motmura', 'মটমুড়া', 'motmuraup.meherpur.gov.bd'),
(1695, 188, 'Sholotaka', 'ষোলটাকা', 'sholotakaup.meherpur.gov.bd'),
(1696, 188, 'Shaharbati', 'সাহারবাটী', 'shaharbatiup.meherpur.gov.bd'),
(1697, 188, 'Dhankolla', 'ধানখোলা', 'dhankollaup.meherpur.gov.bd'),
(1698, 188, 'Raipur', 'রায়পুর', 'raipurup.meherpur.gov.bd'),
(1699, 188, 'Kathuli', 'কাথুলী', 'kathuli.meherpur.gov.bd'),
(1700, 189, 'Sheikhati', 'সেখহাটী', 'sheikhatiup.narail.gov.bd'),
(1701, 189, 'Tularampur', 'তুলারামপুর', 'tularampurup.narail.gov.bd'),
(1702, 189, 'Kalora', 'কলোড়া', 'kaloraup.narail.gov.bd'),
(1703, 189, 'Shahabad', 'শাহাবাদ', 'shahabadup.narail.gov.bd'),
(1704, 189, 'Bashgram', 'বাশগ্রাম', 'bashgramup.narail.gov.bd'),
(1705, 189, 'Habokhali', 'হবখালী', 'habokhaliup.narail.gov.bd'),
(1706, 189, 'Maijpara', 'মাইজপাড়া', 'maijparaup.narail.gov.bd'),
(1707, 189, 'Bisali', 'বিছালী', 'bisaliup.narail.gov.bd'),
(1708, 189, 'Chandiborpur', 'চন্ডিবরপুর', 'chandiborpurup.narail.gov.bd'),
(1709, 189, 'Bhadrabila', 'ভদ্রবিলা', 'bhadrabilaup.narail.gov.bd'),
(1710, 189, 'Auria', 'আউড়িয়া', 'auriaup.narail.gov.bd'),
(1711, 189, 'Singasholpur', 'সিঙ্গাশোলপুর', 'singasholpurup.narail.gov.bd'),
(1712, 189, 'Mulia', 'মুলিয়া', 'muliaup.narail.gov.bd'),
(1713, 190, 'Lohagora', 'লোহাগড়া', 'lohagoraup.narail.gov.bd'),
(1714, 190, 'Kashipur', 'কাশিপুর', 'kashipurup.narail.gov.bd'),
(1715, 190, 'Naldi', 'নলদী', 'naldiup.narail.gov.bd'),
(1716, 190, 'Noagram', 'নোয়াগ্রাম', 'noagramup.narail.gov.bd'),
(1717, 190, 'Lahuria', 'লাহুড়িয়া', 'lahuriaup.narail.gov.bd'),
(1718, 190, 'Mallikpur', 'মল্লিকপুর', 'mallikpurup.narail.gov.bd'),
(1719, 190, 'Salnagar', 'শালনগর', 'salnagarup.narail.gov.bd'),
(1720, 190, 'Lakshmipasha', 'লক্ষীপাশা', 'lakshmipashaup.narail.gov.bd'),
(1721, 190, 'Joypur', 'জয়পুর', 'joypurup.narail.gov.bd'),
(1722, 190, 'Kotakol', 'কোটাকোল', 'kotakolup.narail.gov.bd'),
(1723, 190, 'Digholia', 'দিঘলিয়া', 'digholiaup1.narail.gov.bd'),
(1724, 190, 'Itna', 'ইতনা', 'itnaup.narail.gov.bd'),
(1725, 191, 'Jaynagor', 'জয়নগর', 'jaynagorup.narail.gov.bd'),
(1726, 191, 'Pahordanga', 'পহরডাঙ্গা', 'pahordangaup.narail.gov.bd'),
(1727, 191, 'Babrahasla', 'বাবরা-হাচলা', 'babrahaslaup.narail.gov.bd'),
(1728, 191, 'Salamabad', 'সালামাবাদ', 'salamabadup.narail.gov.bd'),
(1729, 191, 'Baioshona', 'বাঐসোনা', 'baioshonaup.narail.gov.bd'),
(1730, 191, 'Chacuri', 'চাচুড়ী', 'chacuriup.narail.gov.bd'),
(1731, 191, 'Hamidpur', 'হামিদপুর', 'hamidpurup.narail.gov.bd'),
(1732, 191, 'Peroli', 'পেড়লী', 'peroliup.narail.gov.bd'),
(1733, 191, 'Khashial', 'খাসিয়াল', 'khashialup.narail.gov.bd'),
(1734, 191, 'Purulia', 'পুরুলিয়া', 'puruliaup.narail.gov.bd'),
(1735, 191, 'Kalabaria', 'কলাবাড়ীয়া', 'kalabariaup.narail.gov.bd'),
(1736, 191, 'Mauli', 'মাউলী', 'mauliup.narail.gov.bd'),
(1737, 191, 'Boronaleliasabad', 'বড়নাল-ইলিয়াছাবাদ', 'boronaleliasabadup.narail.gov.bd'),
(1738, 191, 'Panchgram', 'পাঁচগ্রাম', 'panchgramup.narail.gov.bd'),
(1739, 192, 'Alukdia', 'আলুকদিয়া', 'alukdia.chuadanga.gov.bd'),
(1740, 192, 'Mominpur', 'মোমিনপুর', 'mominpur.chuadanga.gov.bd'),
(1741, 192, 'Titudah', 'তিতুদাহ', 'titudah.chuadanga.gov.bd'),
(1742, 192, 'Shankarchandra', 'শংকরচন্দ্র', 'shankarchandra.chuadanga.gov.bd'),
(1743, 192, 'Begumpur', 'বেগমপুর', 'begumpur.chuadanga.gov.bd'),
(1744, 192, 'Kutubpur', 'কুতুবপুর', 'kutubpur.chuadanga.gov.bd'),
(1745, 192, 'Padmabila', 'পদ্মবিলা', 'padmabila.chuadanga.gov.bd'),
(1746, 193, 'Bhangbaria', 'ভাংবাড়ীয়া', 'bhangbaria.chuadanga.gov.bd'),
(1747, 193, 'Baradi', 'বাড়াদী', 'baradiup.chuadanga.gov.bd'),
(1748, 193, 'Gangni', 'গাংনী', 'gangniup.chuadanga.gov.bd'),
(1749, 193, 'Khadimpur', 'খাদিমপুর', 'khadimpurup.chuadanga.gov.bd'),
(1750, 193, 'Jehala', 'জেহালা', 'jehalaup.chuadanga.gov.bd'),
(1751, 193, 'Belgachi', 'বেলগাছি', 'belgachiup.chuadanga.gov.bd'),
(1752, 193, 'Dauki', 'ডাউকী', 'daukiup.chuadanga.gov.bd'),
(1753, 193, 'Jamjami', 'জামজামি', 'jamjamiup.chuadanga.gov.bd'),
(1754, 193, 'Nagdah', 'নাগদাহ', 'nagdahup.chuadanga.gov.bd'),
(1755, 193, 'Kashkorara', 'খাসকররা', 'kashkoraraup.chuadanga.gov.bd'),
(1756, 193, 'Chitla', 'চিৎলা', 'chitlaup.chuadanga.gov.bd'),
(1757, 193, 'Kalidashpur', 'কালিদাসপুর', 'kalidashpurup.chuadanga.gov.bd'),
(1758, 193, 'Kumari', 'কুমারী', 'kumariup.chuadanga.gov.bd'),
(1759, 193, 'Hardi', 'হারদী', 'hardiup.chuadanga.gov.bd'),
(1760, 193, 'Ailhash', 'আইলহাঁস', 'ailhashup.chuadanga.gov.bd'),
(1761, 194, 'Damurhuda', 'দামুড়হুদা', 'damurhudaup.chuadanga.gov.bd'),
(1762, 194, 'Karpashdanga', 'কার্পাসডাঙ্গা', 'karpashdanga.chuadanga.gov.bd'),
(1763, 194, 'Natipota', 'নতিপোতা', 'natipota.chuadanga.gov.bd'),
(1764, 194, 'Hawli', 'হাওলী', 'hawli.chuadanga.gov.bd'),
(1765, 194, 'Kurulgachhi', 'কুড়ালগাছী', 'kurulgachhi.chuadanga.gov.bd'),
(1766, 194, 'Perkrishnopur Madna', 'পারকৃষ্ণপুর মদনা', 'perkrishnopurmadna.chuadanga.gov.bd'),
(1767, 194, 'Juranpur', 'জুড়ানপুর', 'juranpurup.chuadanga.gov.bd'),
(1768, 195, 'Uthali', 'উথলী', 'uthaliup.chuadanga.gov.bd'),
(1769, 195, 'Andulbaria', 'আন্দুলবাড়ীয়া', 'andulbaria.chuadanga.gov.bd'),
(1770, 195, 'Banka', 'বাঁকা', 'bankaup.chuadanga.gov.bd'),
(1771, 195, 'Shimanto', 'সীমান্ত', 'shimanto.chuadanga.gov.bd'),
(1772, 195, 'Raypur', 'রায়পুর', 'raypurup.chuadanga.gov.bd'),
(1773, 195, 'Hasadah', 'হাসাদাহ', 'hasadahup.chuadanga.gov.bd'),
(1774, 196, 'Hatash Haripur', 'হাটশ হরিপুর', '1nohatashharipurup.kushtia.gov.bd'),
(1775, 196, 'Barkhada', 'বারখাদা', '2nobarkhadaup.kushtia.gov.bd'),
(1776, 196, 'Mazampur', 'মজমপুর', '3nomazampurup.kushtia.gov.bd'),
(1777, 196, 'Bottail', 'বটতৈল', '4nobottailup.kushtia.gov.bd'),
(1778, 196, 'Alampur', 'আলামপুর', '5noalampurup.kushtia.gov.bd'),
(1779, 196, 'Ziaraakhi', 'জিয়ারাখী', '6noziaraakhiup.kushtia.gov.bd'),
(1780, 196, 'Ailchara', 'আইলচারা', '7noailcharaup.kushtia.gov.bd'),
(1781, 196, 'Patikabari', 'পাটিকাবাড়ী', '8nopatikabariup.kushtia.gov.bd'),
(1782, 196, 'Jhaudia', 'ঝাউদিয়া', '9nojhaudiaup.kushtia.gov.bd'),
(1783, 196, 'Ujangram', 'উজানগ্রাম', '10noujangramup.kushtia.gov.bd'),
(1784, 196, 'Abdulpur', 'আব্দালপুর', '11noabdulpurup.kushtia.gov.bd'),
(1785, 196, 'Harinarayanpur', 'হরিনারায়নপুর', '12noharinarayanpurup.kushtia.gov.bd'),
(1786, 196, 'Monohardia', 'মনোহরদিয়া', '13nomonohardiaup.kushtia.gov.bd'),
(1787, 196, 'Goswami Durgapur', 'গোস্বামী দুর্গাপুর', '14nogoswamidurgapurup.kushtia.gov.bd'),
(1788, 197, 'Kaya', 'কয়া', '1nokayaup.kushtia.gov.bd'),
(1789, 197, 'Jagonnathpur', 'জগন্নাথপুর', '3nojagonnathpurup.kushtia.gov.bd'),
(1790, 197, 'Sadki', 'সদকী', '4nosadkiup.kushtia.gov.bd'),
(1791, 197, 'Shelaidah', 'শিলাইদহ', '2noshelaidahup.kushtia.gov.bd'),
(1792, 197, 'Nandolalpur', 'নন্দলালপুর', '5nonandolalpurup.kushtia.gov.bd'),
(1793, 197, 'Chapra', 'চাপড়া', '6nochapraup.kushtia.gov.bd'),
(1794, 197, 'Bagulat', 'বাগুলাট', '7nobagulatup.kushtia.gov.bd'),
(1795, 197, 'Jaduboyra', 'যদুবয়রা', '8nojaduboyraup.kushtia.gov.bd'),
(1796, 197, 'Chadpur', 'চাঁদপুর', '9nochadpurup.kushtia.gov.bd'),
(1797, 197, 'Panti', 'পান্টি', '10nopantiup.kushtia.gov.bd'),
(1798, 197, 'Charsadipur', 'চরসাদীপুর', '11nocharsadipurup.kushtia.gov.bd'),
(1799, 198, 'Khoksa', 'খোকসা', '1nokhoksaup.kushtia.gov.bd'),
(1800, 198, 'Osmanpur', 'ওসমানপুর', '2noosmanpurup.kushtia.gov.bd'),
(1801, 198, 'Janipur', 'জানিপুর', '4nojanipurup.kushtia.gov.bd'),
(1802, 198, 'Shimulia', 'শিমুলিয়া', '5noshimuliaup.kushtia.gov.bd'),
(1803, 198, 'Joyntihazra', 'জয়ন্তীহাজরা', '8nojoyntihazraup.kushtia.gov.bd'),
(1804, 198, 'Ambaria', 'আমবাড়ীয়া', '9noambariaup.kushtia.gov.bd'),
(1805, 198, 'Bethbaria', 'বেতবাড়ীয়া', '3nobethbariaup.kushtia.gov.bd'),
(1806, 198, 'Shomospur', 'শোমসপুর', '6noshomospurup.kushtia.gov.bd'),
(1807, 198, 'Gopgram', 'গোপগ্রাম', 'gopgram7up.kushtia.gov.bd'),
(1808, 199, 'Chithalia', 'চিথলিয়া', 'chithaliaup.kushtia.gov.bd'),
(1809, 199, 'Bahalbaria', 'বহলবাড়ীয়া', 'bahalbariaup.kushtia.gov.bd'),
(1810, 199, 'Talbaria', 'তালবাড়ীয়া', 'talbariaup.kushtia.gov.bd'),
(1811, 199, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.kushtia.gov.bd'),
(1812, 199, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.kushtia.gov.bd'),
(1813, 199, 'Amla', 'আমলা', 'amlaup.kushtia.gov.bd'),
(1814, 199, 'Sadarpur', 'সদরপুর', 'sadarpurup.kushtia.gov.bd'),
(1815, 199, 'Chhatian', 'ছাতিয়ান', 'chhatianup.kushtia.gov.bd'),
(1816, 199, 'Poradaha', 'পোড়াদহ', 'poradahaup.kushtia.gov.bd'),
(1817, 199, 'Kursha', 'কুর্শা', 'kurshaup.kushtia.gov.bd'),
(1818, 199, 'Ambaria', 'আমবাড়ীয়া', 'ambariaup.kushtia.gov.bd'),
(1819, 199, 'Dhubail', 'ধূবইল', 'dhubailup.kushtia.gov.bd'),
(1820, 199, 'Malihad', 'মালিহাদ', '11nomalihadup.kushtia.gov.bd'),
(1821, 200, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.kushtia.gov.bd'),
(1822, 200, 'Adabaria', 'ড়ীয়া', 'adabariaup.kushtia.gov.bd'),
(1823, 200, 'Hogolbaria', 'হোগলবাড়ীয়া', 'hogolbariaup.kushtia.gov.bd'),
(1824, 200, 'Boalia', 'বোয়ালি', 'boaliaup.kushtia.gov.bd'),
(1825, 200, 'Philipnagor', 'ফিলিপনগর', 'philipnagorup.kushtia.gov.bd'),
(1826, 200, 'Aria', 'আড়িয়া', 'ariaup.kushtia.gov.bd'),
(1827, 200, 'Khalishakundi', 'খলিশাকুন্ডি', 'khalishakundiup.kushtia.gov.bd'),
(1828, 200, 'Chilmary', 'চিলমারী', 'chilmaryup.kushtia.gov.bd'),
(1829, 200, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.kushtia.gov.bd'),
(1830, 200, 'Pragpur', 'প্রাগপুর', 'pragpurup.kushtia.gov.bd'),
(1831, 200, 'Piarpur', 'পিয়ারপুর', 'piarpurup.kushtia.gov.bd'),
(1832, 200, 'Moricha', 'মরিচা', 'morichaup.kushtia.gov.bd'),
(1833, 200, 'Refaitpur', 'রিফাইতপুর', '9norefaitpurup.kushtia.gov.bd'),
(1834, 200, 'Ramkrishnopur', 'রামকৃষ্ণপুর', '5noramkrishnopurup.kushtia.gov.bd'),
(1835, 201, 'Dharampur', 'ধরমপুর', '5nodharampurup.kushtia.gov.bd'),
(1836, 201, 'Bahirchar', 'বাহিরচর', '3nobahircharup.kushtia.gov.bd'),
(1837, 201, 'Mukarimpur', 'মোকারিমপুর', '2nomukarimpurup.kushtia.gov.bd'),
(1838, 201, 'Juniadah', 'জুনিয়াদহ', '6nojuniadahup.kushtia.gov.bd'),
(1839, 201, 'Chandgram', 'চাঁদগ্রাম', '4nochandgramup.kushtia.gov.bd'),
(1840, 201, 'Bahadurpur', 'বাহাদুরপুর', '1nobahadurpurup.kushtia.gov.bd'),
(1841, 202, 'Dhaneshwargati', 'ধনেশ্বরগাতী', 'dhaneshwargatiup.magura.gov.bd'),
(1842, 202, 'Talkhari', 'তালখড়ি', 'talkhariup.magura.gov.bd'),
(1843, 202, 'Arpara', 'আড়পাড়া', 'arparaup.magura.gov.bd'),
(1844, 202, 'Shatakhali', 'শতখালী', 'shatakhaliup.magura.gov.bd'),
(1845, 202, 'Shalikha', 'শালিখা', 'shalikhaup.magura.gov.bd'),
(1846, 202, 'Bunagati', 'বুনাগাতী', 'bunagatiup.magura.gov.bd'),
(1847, 202, 'Gongarampur', 'গঙ্গারামপুর', 'gongarampurup.magura.gov.bd'),
(1848, 203, 'Goyespur', 'গয়েশপুর', 'goyespurup.magura.gov.bd'),
(1849, 203, 'Sreekol', 'শ্রীকোল', 'sreekolup.magura.gov.bd'),
(1850, 203, 'Dariapur', 'দ্বারিয়াপুর', 'dariapurup.magura.gov.bd'),
(1851, 203, 'Kadirpara', 'কাদিরপাড়া', 'kadirparaup.magura.gov.bd'),
(1852, 203, 'Shobdalpur', 'সব্দালপুর', 'shobdalpurup.magura.gov.bd'),
(1853, 203, 'Sreepur', 'শ্রীপুর', 'sreepurup.magura.gov.bd'),
(1854, 203, 'Nakol', 'নাকোল', 'nakolup.magura.gov.bd'),
(1855, 203, 'Amalshar', 'আমলসার', 'amalsharup.magura.gov.bd'),
(1856, 204, 'Hazipur', 'হাজীপুর', 'hazipurup.magura.gov.bd'),
(1857, 204, 'Atharokhada', 'আঠারখাদা', 'atharokhadaup.magura.gov.bd'),
(1858, 204, 'Kosundi', 'কছুন্দী', 'kosundiup.magura.gov.bd'),
(1859, 204, 'Bogia', 'বগিয়া', 'bogiaup.magura.gov.bd'),
(1860, 204, 'Hazrapur', 'হাজরাপুর', 'hazrapurup.magura.gov.bd'),
(1861, 204, 'Raghobdair', 'রাঘবদাইড়', 'raghobdairup.magura.gov.bd'),
(1862, 204, 'Jagdal', 'জগদল', 'jagdalup.magura.gov.bd'),
(1863, 204, 'Chawlia', 'চাউলিয়া', 'chawliaup.magura.gov.bd'),
(1864, 204, 'Satrijitpur', 'শত্রুজিৎপুর', 'satrijitpurup.magura.gov.bd'),
(1865, 204, 'Baroilpolita', 'বেরইল পলিতা', 'baroilpolitaup.magura.gov.bd'),
(1866, 204, 'Kuchiamora', 'কুচিয়ামো', 'kuchiamoraup.magura.gov.bd'),
(1867, 204, 'Gopalgram', 'গোপালগ্রাম', 'gopalgramup.magura.gov.bd'),
(1868, 204, 'Moghi', 'মঘী', 'moghiup.magura.gov.bd'),
(1869, 205, 'Digha', 'দীঘা', 'dighaup.magura.gov.bd'),
(1870, 205, 'Nohata', 'নহাটা', 'nohataup.magura.gov.bd'),
(1871, 205, 'Palashbaria', 'পলাশবাড়ীয়া', 'palashbariaup.magura.gov.bd'),
(1872, 205, 'Babukhali', 'বাবুখালী', 'babukhaliup.magura.gov.bd'),
(1873, 205, 'Balidia', 'বালিদিয়া', 'balidiaup.magura.gov.bd'),
(1874, 205, 'Binodpur', 'বিনোদপুর', 'binodpurup.magura.gov.bd'),
(1875, 205, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpurup.magura.gov.bd'),
(1876, 205, 'Rajapur', 'রাজাপুর', 'rajapurup.magura.gov.bd'),
(1877, 206, 'Horidhali', 'হরিঢালী', 'horidhaliup.khulna.gov.bd'),
(1878, 206, 'Goroikhali', 'গড়ইখালী', 'goroikhaliup.khulna.gov.bd'),
(1879, 206, 'Kopilmuni', 'কপিলমুনি', 'kopilmuniup.khulna.gov.bd'),
(1880, 206, 'Lota', 'লতা', 'lotaup.khulna.gov.bd'),
(1881, 206, 'Deluti', 'দেলুটি', 'delutiup.khulna.gov.bd'),
(1882, 206, 'Loskor', 'লস্কর', 'loskorup.khulna.gov.bd'),
(1883, 206, 'Godaipur', 'গদাইপুর', 'godaipurup.khulna.gov.bd'),
(1884, 206, 'Raruli', 'রাড়ুলী', 'www.raruliup.khulna.gov.bd'),
(1885, 206, 'Chandkhali', 'চাঁদখালী', 'chandkhaliup.khulna.gov.bd'),
(1886, 206, 'Soladana', 'সোলাদানা', 'soladanaup.khulna.gov.bd'),
(1887, 207, 'Fultola', 'ফুলতলা', 'www.fultolaup.khulna.gov.bd'),
(1888, 207, 'Damodar', 'দামোদর', 'www.damodarup.khulna.gov.bd'),
(1889, 207, 'Atra Gilatola', 'আটরা গিলাতলা', 'www.atragilatolaup.khulna.gov.bd'),
(1890, 207, 'Jamira', 'জামিরা', 'www.jamiraup.khulna.gov.bd'),
(1891, 208, 'Senhati', 'সেনহাটি', 'www.senhatiup.khulna.gov.bd'),
(1892, 208, 'Gajirhat', 'গাজীরহাট', 'www.gajirhatup.khulna.gov.bd'),
(1893, 208, 'Barakpur', 'বারাকপুর', 'www.barakpurup.khulna.gov.bd'),
(1894, 208, 'Aronghata', 'আড়ংঘাটা', 'www.aronghataup.khulna.gov.bd'),
(1895, 208, 'Jogipol', 'যোগীপোল', 'www.jogipolup.khulna.gov.bd'),
(1896, 208, 'Digholia', 'দিঘলিয়া', 'www.digholiaup.khulna.gov.bd'),
(1897, 209, 'Aichgati', 'আইচগাতী', 'aichgatiup.khulna.gov.bd'),
(1898, 209, 'Srifoltola', 'শ্রীফলতলা', 'srifoltolaup.khulna.gov.bd'),
(1899, 209, 'Noihati', 'নৈহাটি', 'noihatiup.khulna.gov.bd'),
(1900, 209, 'Tsb', 'টিএসবি', 'tsbup.khulna.gov.bd'),
(1901, 209, 'Ghatvog', 'ঘাটভোগ', 'ghatvogup.khulna.gov.bd'),
(1902, 210, 'Terokhada', 'তেরখাদা', 'terokhadaup.khulna.gov.bd'),
(1903, 210, 'Chagladoho', 'ছাগলাদহ', 'chagladohoup.khulna.gov.bd'),
(1904, 210, 'Barasat', 'বারাসাত', 'www.barasatup.khulna.gov.bd'),
(1905, 210, 'Sochiadaho', 'সাচিয়াদাহ', 'www.sochiadahoup.khulna.gov.bd'),
(1906, 210, 'Modhupur', 'মধুপুর', 'www.modhupurup.khulna.gov.bd'),
(1907, 210, 'Ajgora', 'আজগড়া', 'www.ajgoraup.khulna.gov.bd'),
(1908, 211, 'Dumuria', 'ডুমুরিয়া', 'dumuriaup.khulna.gov.bd'),
(1909, 211, 'Magurghona', 'মাগুরাঘোনা', 'magurghonaup.khulna.gov.bd'),
(1910, 211, 'Vandarpara', 'ভান্ডারপাড়া', 'vandarparaup.khulna.gov.bd'),
(1911, 211, 'Sahos', 'সাহস', 'sahosup.khulna.gov.bd'),
(1912, 211, 'Rudaghora', 'রুদাঘরা', 'rudaghoraup.khulna.gov.bd'),
(1913, 211, 'Ghutudia', 'গুটুদিয়া', 'ghutudiaup.khulna.gov.bd'),
(1914, 211, 'Shovna', 'শোভনা', 'shovnaup.khulna.gov.bd'),
(1915, 211, 'Khornia', 'খর্ণিয়া', 'khorniaup.khulna.gov.bd'),
(1916, 211, 'Atlia', 'আটলিয়া', 'atliaup.khulna.gov.bd'),
(1917, 211, 'Dhamalia', 'ধামালিয়া', 'dhamaliaup.khulna.gov.bd'),
(1918, 211, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.khulna.gov.bd'),
(1919, 211, 'Rongpur', 'রংপুর', 'rongpurup.khulna.gov.bd'),
(1920, 211, 'Shorafpur', 'শরাফপুর', 'shorafpurup.khulna.gov.bd'),
(1921, 211, 'Magurkhali', 'মাগুরখালি', 'magurkhaliup.khulna.gov.bd'),
(1922, 212, 'Botiaghata', 'বটিয়াঘাটা', 'www.botiaghataup.khulna.gov.bd'),
(1923, 212, 'Amirpur', 'আমিরপুর', 'www.amirpurup.khulna.gov.bd'),
(1924, 212, 'Gongarampur', 'গঙ্গারামপুর', 'www.gongarampurup.khulna.gov.bd'),
(1925, 212, 'Surkhali', 'সুরখালী', 'www.surkhaliup.khulna.gov.bd'),
(1926, 212, 'Vandarkot', 'ভান্ডারকোট', 'www.vandarkotup.khulna.gov.bd'),
(1927, 212, 'Baliadanga', 'বালিয়াডাঙ্গা', 'www.baliadangaup.khulna.gov.bd'),
(1928, 212, 'Jolma', 'জলমা', 'www.jolmaup.khulna.gov.bd'),
(1929, 213, 'Dakop', 'দাকোপ', 'www.dakopup.khulna.gov.bd'),
(1930, 213, 'Bajua', 'বাজুয়া', 'bajuaup.khulna.gov.bd'),
(1931, 213, 'Kamarkhola', 'কামারখোলা', 'www.kamarkholaup.khulna.gov.bd'),
(1932, 213, 'Tildanga', 'তিলডাঙ্গা', 'www.tildangaup.khulna.gov.bd'),
(1933, 213, 'Sutarkhali', 'সুতারখালী', 'www.sutarkhaliup.khulna.gov.bd'),
(1934, 213, 'Laudoba', 'লাউডোব', 'laudobaup.khulna.gov.bd'),
(1935, 213, 'Pankhali', 'পানখালী', 'pankhaliup.khulna.gov.bd'),
(1936, 213, 'Banishanta', 'বানিশান্তা', 'banishantaup.khulna.gov.bd'),
(1937, 213, 'Koilashgonj', 'কৈলাশগঞ্জ', 'koilashgonjup.khulna.gov.bd'),
(1938, 214, 'Koyra', 'কয়রা', 'koyraup.khulna.gov.bd'),
(1939, 214, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.khulna.gov.bd'),
(1940, 214, 'Moheswaripur', 'মহেশ্বরীপুর', 'moheswaripurup.khulna.gov.bd'),
(1941, 214, 'North Bedkashi', 'উত্তর বেদকাশী', 'northbedkashiup.khulna.gov.bd'),
(1942, 214, 'South Bedkashi', 'দক্ষিণ বেদকাশী', 'southbedkashiup.khulna.gov.bd'),
(1943, 214, 'Amadi', 'আমাদি', 'amadiup.khulna.gov.bd'),
(1944, 214, 'Bagali', 'বাগালী', 'bagaliup.khulna.gov.bd'),
(1945, 215, 'Betaga', 'বেতাগা', 'betagaup.bagerhat.gov.bd'),
(1946, 215, 'Lakhpur', 'লখপুর', 'lakhpurup.bagerhat.gov.bd'),
(1947, 215, 'Fakirhat', 'ফকিরহাট', 'fakirhatup.bagerhat.gov.bd'),
(1948, 215, 'Bahirdia-Mansa', 'বাহিরদিয়া-মানসা', 'bahirdiamansaup.bagerhat.gov.bd'),
(1949, 215, 'Piljanga', 'পিলজংগ', 'piljangaup.bagerhat.gov.bd'),
(1950, 215, 'Naldha-Mouvhog', 'নলধা-মৌভোগ', 'naldhamauvhogup.bagerhat.gov.bd'),
(1951, 215, 'Mulghar', 'মূলঘর', 'mulgharup.bagerhat.gov.bd'),
(1952, 215, 'Suvhadia', 'শুভদিয়া', 'suvhadiaup.bagerhat.gov.bd'),
(1953, 216, 'Karapara', 'কাড়াপাড়া', 'karaparaup.bagerhat.gov.bd'),
(1954, 216, 'Bamorta', 'বেমরতা', 'bamortaup.bagerhat.gov.bd'),
(1955, 216, 'Gotapara', 'গোটাপাড়া', 'gotaparaup.bagerhat.gov.bd'),
(1956, 216, 'Bishnapur', 'বিষ্ণুপুর', 'bishnapurup.bagerhat.gov.bd'),
(1957, 216, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.bagerhat.gov.bd'),
(1958, 216, 'Jatharapur', 'যাত্রাপুর', 'jatharapurup.bagerhat.gov.bd'),
(1959, 216, 'Shaitgomboj', 'ষাটগুম্বজ', 'shaitgombojup.bagerhat.gov.bd'),
(1960, 216, 'Khanpur', 'খানপুর', 'khanpurup.bagerhat.gov.bd'),
(1961, 216, 'Rakhalgachi', 'রাখালগাছি', 'rakhalgachiup.bagerhat.gov.bd'),
(1962, 216, 'Dema', 'ডেমা', 'demaup.bagerhat.gov.bd'),
(1963, 217, 'Udoypur', 'উদয়পুর', 'udoypurup.bagerhat.gov.bd'),
(1964, 217, 'Chunkhola', 'চুনখোলা', 'chunkholaup.bagerhat.gov.bd'),
(1965, 217, 'Gangni', 'গাংনী', 'gangniup.bagerhat.gov.bd'),
(1966, 217, 'Kulia', 'কুলিয়া', 'kuliaup.bagerhat.gov.bd'),
(1967, 217, 'Gaola', 'গাওলা', 'gaolaup.bagerhat.gov.bd'),
(1968, 217, 'Kodalia', 'কোদালিয়া', 'kodaliaup.bagerhat.gov.bd'),
(1969, 217, 'Atjuri', 'আটজুড়ী', 'atjuriup.bagerhat.gov.bd'),
(1970, 218, 'Dhanshagor', 'ধানসাগর', 'dhanshagorup.bagerhat.gov.bd'),
(1971, 218, 'Khontakata', 'খোন্তাকাটা', 'khontakataup.bagerhat.gov.bd'),
(1972, 218, 'Rayenda', 'রায়েন্দা', 'rayendaup.bagerhat.gov.bd'),
(1973, 218, 'Southkhali', 'সাউথখালী', 'southkhaliup.bagerhat.gov.bd'),
(1974, 219, 'Gouramva', 'গৌরম্ভা', 'gouramvaup.bagerhat.gov.bd'),
(1975, 219, 'Uzzalkur', 'উজলকুড়', 'uzzalkurup.bagerhat.gov.bd'),
(1976, 219, 'Baintala', 'বাইনতলা', 'baintalaup.bagerhat.gov.bd'),
(1977, 219, 'Rampal', 'রামপাল', 'rampalup.bagerhat.gov.bd'),
(1978, 219, 'Rajnagar', 'রাজনগর', 'rajnagarup.bagerhat.gov.bd'),
(1979, 219, 'Hurka', 'হুড়কা', 'hurkaup.bagerhat.gov.bd'),
(1980, 219, 'Perikhali', 'পেড়িখালী', 'perikhaliup.bagerhat.gov.bd'),
(1981, 219, 'Vospatia', 'ভোজপাতিয়া', 'vospatiaup.bagerhat.gov.bd'),
(1982, 219, 'Mollikerbar', 'মল্লিকেরবেড়', 'mollikerbarup.bagerhat.gov.bd'),
(1983, 219, 'Bastoli', 'বাঁশতলী', 'bastoliup.bagerhat.gov.bd'),
(1984, 220, 'Teligati', 'তেলিগাতী', 'teligatiup.bagerhat.gov.bd'),
(1985, 220, 'Panchakaran', 'পঞ্চকরণ', 'panchakaranup.bagerhat.gov.bd'),
(1986, 220, 'Putikhali', 'পুটিখালী', 'putikhaliup.bagerhat.gov.bd'),
(1987, 220, 'Daibagnyahati', 'দৈবজ্ঞহাটি', 'daibagnyahatiup.bagerhat.gov.bd'),
(1988, 220, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.bagerhat.gov.bd'),
(1989, 220, 'Chingrakhali', 'চিংড়াখালী', 'chingrakhaliup.bagerhat.gov.bd'),
(1990, 220, 'Jiudhara', 'জিউধরা', 'jiudharaup.bagerhat.gov.bd'),
(1991, 220, 'Hoglapasha', 'হোগলাপাশা', 'hoglapashaup.bagerhat.gov.bd'),
(1992, 220, 'Banagram', 'বনগ্রাম', 'banagramup.bagerhat.gov.bd'),
(1993, 220, 'Balaibunia', 'বলইবুনিয়া', 'balaibuniaup.bagerhat.gov.bd'),
(1994, 220, 'Hoglabunia', 'হোগলাবুনিয়া', 'hoglabuniaup.bagerhat.gov.bd'),
(1995, 220, 'Baharbunia', 'বহরবুনিয়া', 'baharbuniaup.bagerhat.gov.bd'),
(1996, 220, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganjup.bagerhat.gov.bd'),
(1997, 220, 'Khaulia', 'খাউলিয়া', 'khauliaup.bagerhat.gov.bd'),
(1998, 220, 'Nishanbaria', 'নিশানবাড়িয়া', 'nishanbariaup.bagerhat.gov.bd'),
(1999, 220, 'Baraikhali', 'বারইখালী', 'baraikhaliup.bagerhat.gov.bd'),
(2000, 221, 'Gojalia', 'গজালিয়া', 'gojaliaup.bagerhat.gov.bd'),
(2001, 221, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.bagerhat.gov.bd'),
(2002, 221, 'Moghia', 'মঘিয়া', 'moghiaup.bagerhat.gov.bd'),
(2003, 221, 'Kachua', 'কচুয়া', 'kachuaup.bagerhat.gov.bd'),
(2004, 221, 'Gopalpur', 'গোপালপুর', 'gopalpurup.bagerhat.gov.bd'),
(2005, 221, 'Raripara', 'রাড়ীপাড়া', 'rariparaup.bagerhat.gov.bd'),
(2006, 221, 'Badhal', 'বাধাল', 'badhalup.bagerhat.gov.bd'),
(2007, 222, 'Burrirdangga', 'বুড়িরডাঙ্গা', 'burrirdanggaup.bagerhat.gov.bd'),
(2008, 222, 'Mithakhali', 'মিঠাখালী', 'mithakhaliup.bagerhat.gov.bd'),
(2009, 222, 'Sonailtala', 'সোনাইলতলা', 'sonailtalaup.bagerhat.gov.bd'),
(2010, 222, 'Chadpai', 'চাঁদপাই', 'chadpaiup.bagerhat.gov.bd'),
(2011, 222, 'Chila', 'চিলা', 'chilaup.bagerhat.gov.bd'),
(2012, 222, 'Sundarban', 'সুন্দরবন', 'sundarbanup.bagerhat.gov.bd'),
(2013, 223, 'Barobaria', 'বড়বাড়িয়া', 'barobariaup.bagerhat.gov.bd'),
(2014, 223, 'Kalatala', 'কলাতলা', 'kalatalaup.bagerhat.gov.bd'),
(2015, 223, 'Hizla', 'হিজলা', 'hizlaup.bagerhat.gov.bd'),
(2016, 223, 'Shibpur', 'শিবপুর', 'shibpurup.bagerhat.gov.bd'),
(2017, 223, 'Chitalmari', 'চিতলমারী', 'chitalmariup.bagerhat.gov.bd'),
(2018, 223, 'Charbaniri', 'চরবানিয়ারী', 'charbaniriup.bagerhat.gov.bd'),
(2019, 223, 'Shantoshpur', 'সন্তোষপুর', 'shantoshpurup.bagerhat.gov.bd'),
(2020, 224, 'Sadhuhati', 'সাধুহাটী', 'sadhuhatiup.jhenaidah.gov.bd'),
(2021, 224, 'Modhuhati', 'মধুহাটী', 'modhuhatiup.jhenaidah.gov.bd'),
(2022, 224, 'Saganna', 'সাগান্না', 'sagannaup.jhenaidah.gov.bd'),
(2023, 224, 'Halidhani', 'হলিধানী', 'halidhaniup.jhenaidah.gov.bd'),
(2024, 224, 'Kumrabaria', 'কুমড়াবাড়ীয়া', 'kumrabariaup.jhenaidah.gov.bd'),
(2025, 224, 'Ganna', 'গান্না', 'gannaup.jhenaidah.gov.bd'),
(2026, 224, 'Maharazpur', 'মহারাজপুর', 'maharazpurup.jhenaidah.gov.bd'),
(2027, 224, 'Paglakanai', 'পাগলাকানাই', 'paglakanaiup.jhenaidah.gov.bd'),
(2028, 224, 'Porahati', 'পোড়াহাটী', 'porahatiup.jhenaidah.gov.bd'),
(2029, 224, 'Harishongkorpur', 'হরিশংকরপুর', 'harishongkorpurup.jhenaidah.gov.bd'),
(2030, 224, 'Padmakar', 'পদ্মাকর', 'padmakarup.jhenaidah.gov.bd'),
(2031, 224, 'Dogachhi', 'দোগাছি', 'dogachhiup.jhenaidah.gov.bd'),
(2032, 224, 'Furshondi', 'ফুরসন্দি', 'furshondiup.jhenaidah.gov.bd'),
(2033, 224, 'Ghorshal', 'ঘোড়শাল', 'ghorshalup.jhenaidah.gov.bd'),
(2034, 224, 'Kalicharanpur', 'কালীচরণপুর', 'kalicharanpurup.jhenaidah.gov.bd'),
(2035, 224, 'Surat', 'সুরাট', 'suratup.jhenaidah.gov.bd'),
(2036, 224, 'Naldanga', 'নলডাঙ্গা', 'naldangaup.jhenaidah.gov.bd'),
(2037, 225, 'Tribeni', 'ত্রিবেনী', 'tribeniup.jhenaidah.gov.bd'),
(2038, 225, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.jhenaidah.gov.bd'),
(2039, 225, 'Dignagore', 'দিগনগর', 'dignagoreup.jhenaidah.gov.bd'),
(2040, 225, 'Kancherkol', 'কাঁচেরকোল', 'kancherkolup.jhenaidah.gov.bd'),
(2041, 225, 'Sarutia', 'সারুটিয়া', 'sarutiaup.jhenaidah.gov.bd'),
(2042, 225, 'Hakimpur', 'হাকিমপুর', 'hakimpurup.jhenaidah.gov.bd'),
(2043, 225, 'Dhaloharachandra', 'ধলহরাচন্দ্র', 'dhaloharachandraup.jhenaidah.gov.bd'),
(2044, 225, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jhenaidah.gov.bd'),
(2045, 225, 'Bogura', 'বগুড়া', 'boguraup.jhenaidah.gov.bd'),
(2046, 225, 'Abaipur', 'আবাইপুর', 'abaipurup.jhenaidah.gov.bd'),
(2047, 225, 'Nityanandapur', 'নিত্যানন্দপুর', 'nityanandapurup.jhenaidah.gov.bd'),
(2048, 225, 'Umedpur', 'উমেদপুর', 'umedpurup.jhenaidah.gov.bd'),
(2049, 225, 'Dudshar', 'দুধসর', 'dudsharup.jhenaidah.gov.bd'),
(2050, 225, 'Fulhari', 'ফুলহরি', 'fulhariup.jhenaidah.gov.bd'),
(2051, 226, 'Bhayna', 'ভায়না', 'bhaynaup.jhenaidah.gov.bd'),
(2052, 226, 'Joradah', 'জোড়াদহ', 'joradahup.jhenaidah.gov.bd'),
(2053, 226, 'Taherhuda', 'তাহেরহুদা', 'taherhudaup.jhenaidah.gov.bd'),
(2054, 226, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.jhenaidah.gov.bd'),
(2055, 226, 'Kapashatia', 'কাপাশহাটিয়া', 'kapashatiaup.jhenaidah.gov.bd'),
(2056, 226, 'Falsi', 'ফলসী', 'falsiup.jhenaidah.gov.bd'),
(2057, 226, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.jhenaidah.gov.bd'),
(2058, 226, 'Chandpur', 'চাঁদপুর', 'chandpurup.jhenaidah.gov.bd'),
(2059, 227, 'Sundarpurdurgapur', 'সুন্দরপুর-দূর্গাপুর', 'sundarpurdurgapurup.jhenaidah.gov.bd'),
(2060, 227, 'Jamal', 'জামাল', 'jamalup.jhenaidah.gov.bd'),
(2061, 227, 'Kola', 'কোলা', 'kolaup.jhenaidah.gov.bd'),
(2062, 227, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.jhenaidah.gov.bd'),
(2063, 227, 'Simla-Rokonpur', 'শিমলা-রোকনপুর', 'simlarokonpurup.jhenaidah.gov.bd'),
(2064, 227, 'Trilochanpur', 'ত্রিলোচনপুর', 'trilochanpurup.jhenaidah.gov.bd'),
(2065, 227, 'Raygram', 'রায়গ্রাম', 'raygramup.jhenaidah.gov.bd'),
(2066, 227, 'Maliat', 'মালিয়াট', 'maliatup.jhenaidah.gov.bd'),
(2067, 227, 'Barabazar', 'বারবাজার', 'barabazarup.jhenaidah.gov.bd'),
(2068, 227, 'Kashtabhanga', 'কাষ্টভাঙ্গা', 'kashtabhangaup.jhenaidah.gov.bd'),
(2069, 227, 'Rakhalgachhi', 'রাখালগাছি', 'rakhalgachhiup.jhenaidah.gov.bd'),
(2070, 228, 'Sabdalpur', 'সাবদালপুর', 'sabdalpurup.jhenaidah.gov.bd'),
(2071, 228, 'Dora', 'দোড়া', 'doraup.jhenaidah.gov.bd'),
(2072, 228, 'Kushna', 'কুশনা', 'kushnaup.jhenaidah.gov.bd'),
(2073, 228, 'Baluhar', 'বলুহর', 'baluharup.jhenaidah.gov.bd'),
(2074, 228, 'Elangi', 'এলাঙ্গী', 'elangiup.jhenaidah.gov.bd'),
(2075, 229, 'Sbk', 'এস, বি, কে', 'sbkup.jhenaidah.gov.bd'),
(2076, 229, 'Fatepur', 'ফতেপুর', 'fatepurup.jhenaidah.gov.bd'),
(2077, 229, 'Panthapara', 'পান্থপাড়া', 'panthaparaup.jhenaidah.gov.bd'),
(2078, 229, 'Swaruppur', 'স্বরুপপুর', 'swaruppurup.jhenaidah.gov.bd'),
(2079, 229, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jhenaidah.gov.bd'),
(2080, 229, 'Nepa', 'নেপা', 'nepaup.jhenaidah.gov.bd'),
(2081, 229, 'Kazirber', 'কাজীরবেড়', 'kazirberup.jhenaidah.gov.bd'),
(2082, 229, 'Banshbaria', 'বাঁশবাড়ীয়া', 'banshbariaup.jhenaidah.gov.bd'),
(2083, 229, 'Jadabpur', 'যাদবপুর', 'jadabpurup.jhenaidah.gov.bd'),
(2084, 229, 'Natima', 'নাটিমা', 'natimaup.jhenaidah.gov.bd'),
(2085, 229, 'Manderbaria', 'মান্দারবাড়ীয়া', 'manderbariaup.jhenaidah.gov.bd'),
(2086, 229, 'Azampur', 'আজমপুর', 'azampurup.jhenaidah.gov.bd'),
(2087, 230, 'Basanda', 'বাসন্ডা', 'basandaup.jhalakathi.gov.bd'),
(2088, 230, 'Binoykati', 'বিনয়কাঠী', 'binoykatiup.jhalakathi.gov.bd'),
(2089, 230, 'Gabharamchandrapur', 'গাভারামচন্দ্রপুর', 'gabharamchandrapurup.jhalakathi.gov.bd'),
(2090, 230, 'Keora', 'কেওড়া', 'keoraup.jhalakathi.gov.bd'),
(2091, 230, 'Kirtipasha', 'কীর্তিপাশা', 'kirtipashaup.jhalakathi.gov.bd'),
(2092, 230, 'Nabagram', 'নবগ্রাম', 'nabagramup.jhalakathi.gov.bd'),
(2093, 230, 'Nathullabad', 'নথুলল্লাবাদ', 'nathullabadup.jhalakathi.gov.bd'),
(2094, 230, 'Ponabalia', 'পোনাবালিয়া', 'ponabaliaup.jhalakathi.gov.bd'),
(2095, 230, 'Sekherhat', 'শেখেরহাট', 'sekherhatup.jhalakathi.gov.bd'),
(2096, 230, 'Gabkhandhansiri', 'গাবখান ধানসিঁড়ি', 'gabkhandhansiriup.jhalakathi.gov.bd'),
(2097, 231, 'Amua', 'আমুয়া', 'amuaup.jhalakathi.gov.bd'),
(2098, 231, 'Awrabunia', 'আওরাবুনিয়া', 'awrabuniaup.jhalakathi.gov.bd'),
(2099, 231, 'Chenchrirampur', 'চেঁচরীরামপুর', 'chenchrirampurup.jhalakathi.gov.bd'),
(2100, 231, 'Kanthalia', 'কাঠালিয়া', 'kanthaliaup.jhalakathi.gov.bd'),
(2101, 231, 'Patikhalghata', 'পাটিখালঘাটা', 'patikhalghataup.jhalakathi.gov.bd'),
(2102, 231, 'Shaulajalia', 'শৌলজালিয়া', 'shaulajaliaup.jhalakathi.gov.bd'),
(2103, 232, 'Subidpur', 'সুবিদপুর', 'subidpurup.jhalakathi.gov.bd'),
(2104, 232, 'Siddhakati', 'সিদ্ধকাঠী', 'siddhakatiup.jhalakathi.gov.bd'),
(2105, 232, 'Ranapasha', 'রানাপাশা', 'ranapashaup.jhalakathi.gov.bd'),
(2106, 232, 'Nachanmohal', 'নাচনমহল', 'nachanmohalup.jhalakathi.gov.bd'),
(2107, 232, 'Mollahat', 'মোল্লারহাট', 'mollahatup.jhalakathi.gov.bd'),
(2108, 232, 'Magar', 'মগর', 'magarup.jhalakathi.gov.bd'),
(2109, 232, 'Kusanghal', 'কুশঙ্গল', 'kusanghalup.jhalakathi.gov.bd'),
(2110, 232, 'Kulkathi', 'কুলকাঠী', 'kulkathiup.jhalakathi.gov.bd'),
(2111, 232, 'Dapdapia', 'দপদপিয়া', 'dapdapiaup.jhalakathi.gov.bd'),
(2112, 232, 'Bharabpasha', 'ভৈরবপাশা', 'bharabpashaup.jhalakathi.gov.bd'),
(2113, 233, 'Suktagarh', 'শুক্তাগড়', 'suktagarhup.jhalakathi.gov.bd'),
(2114, 233, 'Saturia', 'সাতুরিয়া', 'saturiaup.jhalakathi.gov.bd'),
(2115, 233, 'Mathbari', 'মঠবাড়ী', 'mathbariup.jhalakathi.gov.bd'),
(2116, 233, 'Galua', 'গালুয়া', 'galuaup.jhalakathi.gov.bd'),
(2117, 233, 'Baraia', 'বড়ইয়া', 'baraiaup.jhalakathi.gov.bd'),
(2118, 233, 'Rajapur', 'রাজাপুর', 'rajapurup.jhalakathi.gov.bd'),
(2119, 234, 'Adabaria', 'আদাবারিয়া', 'adabariaup.gazipur.gov.bd'),
(2120, 234, 'Bauphal', 'বাউফল', 'bauphalup.patuakhali.gov.bd'),
(2121, 234, 'Daspara', 'দাস পাড়া', 'dasparaup.gazipur.gov.bd'),
(2122, 234, 'Kalaiya', 'কালাইয়া', 'kalaiyaup.gazipur.gov.bd'),
(2123, 234, 'Nawmala', 'নওমালা', 'nawmalaup.patuakhali.gov.bd'),
(2124, 234, 'Najirpur', 'নাজিরপুর', 'najirpurup.patuakhali.gov.bd'),
(2125, 234, 'Madanpura', 'মদনপুরা', 'madanpuraup.patuakhali.gov.bd'),
(2126, 234, 'Boga', 'বগা', 'bogaup.patuakhali.gov.bd'),
(2127, 234, 'Kanakdia', 'কনকদিয়া', 'kanakdiaup.patuakhali.gov.bd'),
(2128, 234, 'Shurjamoni', 'সূর্য্যমনি', 'shurjamoniup.patuakhali.gov.bd'),
(2129, 234, 'Keshabpur', 'কেশবপুর', 'keshabpurup.patuakhali.gov.bd'),
(2130, 234, 'Dhulia', 'ধুলিয়া', 'dhuliaup.patuakhali.gov.bd'),
(2131, 234, 'Kalisuri', 'কালিশুরী', 'kalisuriup.patuakhali.gov.bd'),
(2132, 234, 'Kachipara', 'কাছিপাড়া', 'kachiparaup.patuakhali.gov.bd'),
(2133, 235, 'Laukathi', 'লাউকাঠী', 'laukathiup.patuakhali.gov.bd'),
(2134, 235, 'Lohalia', 'লোহালিয়া', 'lohaliaup.patuakhali.gov.bd'),
(2135, 235, 'Kamalapur', 'কমলাপুর', 'kamalapurup.patuakhali.gov.bd'),
(2136, 235, 'Jainkathi', 'জৈনকাঠী', 'jainkathiup.patuakhali.gov.bd'),
(2137, 235, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.patuakhali.gov.bd'),
(2138, 235, 'Badarpur', 'বদরপুর', 'badarpurup.patuakhali.gov.bd '),
(2139, 235, 'Itbaria', 'ইটবাড়ীয়া', 'itbariaup.patuakhali.gov.bd '),
(2140, 235, 'Marichbunia', 'মরিচবুনিয়া', 'marichbuniaup.patuakhali.gov.bd '),
(2141, 235, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.patuakhali.gov.bd'),
(2142, 235, 'Chotobighai', 'ছোট বিঘাই', 'chotobighaiup.patuakhali.gov.bd'),
(2143, 235, 'Borobighai', 'বড় বিঘাই', 'borobighaiup.patuakhali.gov.bd'),
(2144, 235, 'Madarbunia', 'মাদারবুনিয়া', 'madarbuniaup.patuakhali.gov.bd'),
(2145, 236, 'Pangasia', 'পাংগাশিয়া', 'pangasiaup.patuakhali.gov.bd'),
(2146, 236, 'Muradia', 'মুরাদিয়া', 'muradiaup.patuakhali.gov.bd'),
(2147, 236, 'Labukhali', 'লেবুখালী', 'labukhaliup.patuakhali.gov.bd'),
(2148, 236, 'Angaria', 'আংগারিয়া', 'angariaup.patuakhali.gov.bd'),
(2149, 236, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.patuakhali.gov.bd'),
(2150, 237, 'Bashbaria', 'বাঁশবাড়ীয়া', 'bashbariaup.patuakhali.gov.bd'),
(2151, 237, 'Rangopaldi', 'রণগোপালদী', 'rangopaldiup.patuakhali.gov.bd'),
(2152, 237, 'Alipur', 'আলীপুর', 'alipurup.patuakhali.gov.bd'),
(2153, 237, 'Betagi Shankipur', 'বেতাগী সানকিপুর', 'betagishankipurup.patuakhali.gov.bd'),
(2154, 237, 'Dashmina', 'দশমিনা', 'dashminaup.patuakhali.gov.bd'),
(2155, 237, 'Baharampur', 'বহরমপুর', 'baharampurup.patuakhali.gov.bd'),
(2156, 238, 'Chakamaia', 'চাকামইয়া', 'chakamaiaup.patuakhali.gov.bd'),
(2157, 238, 'Tiakhali', 'টিয়াখালী', 'tiakhaliup.patuakhali.gov.bd'),
(2158, 238, 'Lalua', 'লালুয়া', 'laluaup.patuakhali.gov.bd'),
(2159, 238, 'Dhankhali', 'ধানখালী', 'dhankhaliup.patuakhali.gov.bd'),
(2160, 238, 'Mithagonj', 'মিঠাগঞ্জ', 'mithagonjup.patuakhali.gov.bd'),
(2161, 238, 'Nilgonj', 'নীলগঞ্জ', 'nilgonjup.patuakhali.gov.bd'),
(2162, 238, 'Dulaser', 'ধুলাসার', 'dulaserup.patuakhali.gov.bd'),
(2163, 238, 'Latachapli', 'লতাচাপলী', 'latachapliup.patuakhali.gov.bd'),
(2164, 238, 'Mahipur', 'মহিপুর', 'mahipurup.patuakhali.gov.bd'),
(2165, 238, 'Dalbugonj', 'ডালবুগঞ্জ', 'dalbugonjup.patuakhali.gov.bd'),
(2166, 238, 'Baliatali', 'বালিয়াতলী', 'baliataliup.patuakhali.gov.bd'),
(2167, 238, 'Champapur', 'চম্পাপুর', 'champapurup.patuakhali.gov.bd'),
(2168, 239, 'Madhabkhali', 'মাধবখালী', 'madhabkhaliup.patuakhali.gov.bd'),
(2169, 239, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganjup.patuakhali.gov.bd'),
(2170, 239, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.patuakhali.gov.bd'),
(2171, 239, 'Deuli Subidkhali', 'দেউলী সুবিদখালী', 'deulisubidkhaliup.patuakhali.gov.bd'),
(2172, 239, 'Kakrabunia', 'কাকড়াবুনিয়া', 'kakrabuniaup.patuakhali.gov.bd'),
(2173, 239, 'Majidbaria', 'মজিদবাড়িয়া', 'majidbariaup.patuakhali.gov.bd'),
(2174, 240, 'Amkhola', 'আমখোলা', 'amkholaup.patuakhali.gov.bd'),
(2175, 240, 'Golkhali', 'গোলখালী', 'golkhaliup.patuakhali.gov.bd'),
(2176, 240, 'Galachipa', 'গলাচিপা', 'galachipaup.patuakhali.gov.bd'),
(2177, 240, 'Panpatty', 'পানপট্টি', 'panpattyup.patuakhali.gov.bd'),
(2178, 240, 'Ratandi Taltali', 'রতনদী তালতলী', 'ratanditaltaliup.patuakhali.gov.bd'),
(2179, 240, 'Dakua', 'ডাকুয়া', 'dakuaup.patuakhali.gov.bd'),
(2180, 240, 'Chiknikandi', 'চিকনিকান্দী', 'chiknikandiup.patuakhali.gov.bd'),
(2181, 240, 'Gazalia', 'গজালিয়া', 'gazaliaup.patuakhali.gov.bd'),
(2182, 240, 'Charkajol', 'চরকাজল', 'charkajolup.patuakhali.gov.bd'),
(2183, 240, 'Charbiswas', 'চরবিশ্বাস', 'charbiswasup.patuakhali.gov.bd'),
(2184, 240, 'Bakulbaria', 'বকুলবাড়ীয়া', 'bakulbariaup.patuakhali.gov.bd'),
(2185, 240, 'Kalagachhia', 'কলাগাছিয়া', 'kalagachhiaup.patuakhali.gov.bd'),
(2186, 241, 'Rangabali', 'রাঙ্গাবালী', 'rangabaliup.patuakhali.gov.bd'),
(2187, 241, 'Barobaisdia', 'বড়বাইশদিয়া', 'barobaisdiaup.patuakhali.gov.bd'),
(2188, 241, 'Chattobaisdia', 'ছোটবাইশদিয়া', 'chattobaisdiaup.patuakhali.gov.bd'),
(2189, 241, 'Charmontaz', 'চরমোন্তাজ', 'charmontaz.patuakhali.gov.bd'),
(2190, 241, 'Chalitabunia', 'চালিতাবুনিয়া', 'chalitabuniaup.patuakhali.gov.bd'),
(2191, 242, 'Shikder Mallik', 'শিকদার মল্লিক', 'shikdermallikup.pirojpur.gov.bd'),
(2192, 242, 'Kodomtala', 'কদমতলা', 'kodomtalaup.pirojpur.gov.bd'),
(2193, 242, 'Durgapur', 'দূর্গাপুর', 'durgapurup.pirojpur.gov.bd'),
(2194, 242, 'Kolakhali', 'কলাখালী', 'kolakhaliup.pirojpur.gov.bd'),
(2195, 242, 'Tona', 'টোনা', 'tonaup.pirojpur.gov.bd'),
(2196, 242, 'Shariktola', 'শরিকতলা', 'shariktolaup.pirojpur.gov.bd'),
(2197, 242, 'Shankorpasa', 'শংকরপাশা', 'shankorpasaup.pirojpur.gov.bd'),
(2198, 243, 'Mativangga', 'মাটিভাংগা', 'mativanggaup.pirojpur.gov.bd'),
(2199, 243, 'Malikhali', 'মালিখালী', 'malikhaliup.pirojpur.gov.bd'),
(2200, 243, 'Daulbari Dobra', 'দেউলবাড়ী দোবড়া', 'daulbaridobraup.pirojpur.gov.bd'),
(2201, 243, 'Dirgha', 'দীর্ঘা', 'dirghaup.pirojpur.gov.bd'),
(2202, 243, 'Kolardoania', 'কলারদোয়ানিয়া', 'kolardoaniaup.pirojpur.gov.bd'),
(2203, 243, 'Sriramkathi', 'শ্রীরামকাঠী', 'sriramkathiup.pirojpur.gov.bd'),
(2204, 243, 'Shakhmatia', 'সেখমাটিয়া', 'shakhmatiaup.pirojpur.gov.bd'),
(2205, 243, 'Nazirpur Sadar', 'নাজিরপুর সদর', 'nazirpursadarup.pirojpur.gov.bd'),
(2206, 243, 'Shakharikathi', 'শাখারীকাঠী', 'shakharikathiup.pirojpur.gov.bd'),
(2207, 244, 'Sayna Rogunathpur', 'সয়না রঘুনাথপুর', 'saynarogunathpurup.pirojpur.gov.bd'),
(2208, 244, 'Amrazuri', 'আমড়াজুড়ি', 'amrazuriup.pirojpur.gov.bd'),
(2209, 244, 'Kawkhali Sadar', 'কাউখালি সদর', 'kawkhalisadarup.pirojpur.gov.bd'),
(2210, 244, 'Chirapara', 'চিরাপাড়া', 'chiraparaup.pirojpur.gov.bd'),
(2211, 244, 'Shialkhathi', 'শিয়ালকাঠী', 'shialkhathiup.pirojpur.gov.bd'),
(2212, 245, 'Balipara', 'বালিপাড়া', 'baliparaup.pirojpur.gov.bd'),
(2213, 245, 'Pattashi', 'পত্তাশি', 'pattashiup.pirojpur.gov.bd'),
(2214, 245, 'Parerhat', 'পাড়েরহাট', 'parerhatup.pirojpur.gov.bd'),
(2215, 246, 'Vitabaria', 'ভিটাবাড়িয়া', 'vitabariaup.pirojpur.gov.bd'),
(2216, 246, 'Nodmulla', 'নদমূলা শিয়ালকাঠী', 'nodmullaup.pirojpur.gov.bd'),
(2217, 246, 'Telikhali', 'তেলিখালী', 'telikhaliup.pirojpur.gov.bd'),
(2218, 246, 'Ekree', 'ইকড়ী', 'ekreeup.pirojpur.gov.bd'),
(2219, 246, 'Dhaoa', 'ধাওয়া', 'dhaoaup.pirojpur.gov.bd'),
(2220, 246, 'Vandaria Sadar', 'ভান্ডারিয়া সদর', 'vandariasadarup.pirojpur.gov.bd'),
(2221, 246, 'Gouripur', 'গৌরীপুর', 'gouripurup.pirojpur.gov.bd'),
(2222, 247, 'Tuskhali', 'তুষখালী', 'tuskhaliup.pirojpur.gov.bd'),
(2223, 247, 'Dhanisafa', 'ধানীসাফা', 'dhanisafaup.pirojpur.gov.bd'),
(2224, 247, 'Mirukhali', 'মিরুখালী', 'mirukhaliup.pirojpur.gov.bd'),
(2225, 247, 'Tikikata', 'টিকিকাটা', 'tikikataup.pirojpur.gov.bd'),
(2226, 247, 'Betmor Rajpara', 'বেতমোর রাজপাড়া', 'betmorrajparaup.pirojpur.gov.bd'),
(2227, 247, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.pirojpur.gov.bd'),
(2228, 247, 'Shapleza', 'শাপলেজা', 'shaplezaup.pirojpur.gov.bd'),
(2229, 247, 'Daudkhali', 'দাউদখালী', 'daudkhaliup.pirojpur.gov.bd'),
(2230, 247, 'Mathbaria', 'মঠবাড়িয়া', 'mathbariaup.pirojpur.gov.bd'),
(2231, 247, 'Baramasua', 'বড়মাছুয়া', 'baramasuaup.pirojpur.gov.bd'),
(2232, 247, 'Haltagulishakhali', 'হলতাগুলিশাখালী', 'haltagulishakhaliup.pirojpur.gov.bd'),
(2233, 248, 'Boldia', 'বলদিয়া', 'boldiaup.pirojpur.gov.bd'),
(2234, 248, 'Sohagdal', 'সোহাগদল', 'sohagdalup.pirojpur.gov.bd'),
(2235, 248, 'Atghorkuriana', 'আটঘর কুড়িয়ানা', 'atghorkurianaup.pirojpur.gov.bd'),
(2236, 248, 'Jolabari', 'জলাবাড়ী', 'jolabariup.pirojpur.gov.bd'),
(2237, 248, 'Doyhary', 'দৈহারী', 'doyharyup.pirojpur.gov.bd'),
(2238, 248, 'Guarekha', 'গুয়ারেখা', 'guarekhaup.pirojpur.gov.bd'),
(2239, 248, 'Somudoykathi', 'সমুদয়কাঠী', 'somudoykathiup.pirojpur.gov.bd'),
(2240, 248, 'Sutiakathi', 'সুটিয়াকাঠী', 'sutiakathiup.pirojpur.gov.bd'),
(2241, 248, 'Sarengkathi', 'সারেংকাঠী', 'sarengkathiup.pirojpur.gov.bd'),
(2242, 248, 'Shorupkathi', 'স্বরুপকাঠী', 'shorupkathiup.pirojpur.gov.bd'),
(2243, 249, 'Raipasha Karapur', 'রায়পাশা কড়াপুর', 'raipashakarapurup.barisal.gov.bd'),
(2244, 249, 'Kashipur', 'কাশীপুর', 'kashipurup.barisal.gov.bd'),
(2245, 249, 'Charbaria', 'চরবাড়িয়া', 'charbariaup.barisal.gov.bd'),
(2246, 249, 'Shyastabad', 'সায়েস্তাবাদ', 'shyastabadup.barisal.gov.bd'),
(2247, 249, 'Charmonai', 'চরমোনাই', 'charmonaiup.barisal.gov.bd'),
(2248, 249, 'Zagua', 'জাগুয়া', 'zaguaup.barisal.gov.bd'),
(2249, 249, 'Charcowa', 'চরকাউয়া', 'charcowaup.barisal.gov.bd'),
(2250, 249, 'Chandpura', 'চাঁদপুরা', 'chandpuraup.barisal.gov.bd'),
(2251, 249, 'Tungibaria', 'টুঙ্গীবাড়িয়া', 'tungibariaup.barisal.gov.bd'),
(2252, 249, 'Chandramohan', 'চন্দ্রমোহন', 'chandramohanup.barisal.gov.bd'),
(2253, 250, 'Charamaddi', 'চরামদ্দি', 'charamaddiup.barisal.gov.bd'),
(2254, 250, 'Charade', 'চরাদি', 'charadeup.barisal.gov.bd'),
(2255, 250, 'Darial', 'দাড়িয়াল', 'darialup.barisal.gov.bd'),
(2256, 250, 'Dudhal', 'দুধল', 'dudhalup.barisal.gov.bd'),
(2257, 250, 'Durgapasha', 'দুর্গাপাশা', 'durgapashaup.barisal.gov.bd'),
(2258, 250, 'Faridpur', 'ফরিদপুর', 'faridpurup.barisal.gov.bd'),
(2259, 250, 'Kabai', 'কবাই', 'kabaiup.barisal.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(2260, 250, 'Nalua', 'নলুয়া', 'naluaup.barisal.gov.bd'),
(2261, 250, 'Kalashkathi', 'কলসকাঠী', 'kalashkathiup.barisal.gov.bd'),
(2262, 250, 'Garuria', 'গারুরিয়া', 'garuriaup.barisal.gov.bd'),
(2263, 250, 'Bharpasha', 'ভরপাশা', 'bharpashaup.barisal.gov.bd'),
(2264, 250, 'Rangasree', 'রঙ্গশ্রী', 'rangasreeup.barisal.gov.bd'),
(2265, 250, 'Padreeshibpur', 'পাদ্রিশিবপুর', 'padreeshibpurup.barisal.gov.bd'),
(2266, 250, 'Niamoti', 'নিয়ামতি', 'niamotiup.barisal.gov.bd'),
(2267, 251, 'Jahangir Nagar', 'জাহাঙ্গীর নগর', 'jahangirnagorup.barisal.gov.bd'),
(2268, 251, 'Kaderpur', 'কেদারপুর', 'kaderpurup.barisal.gov.bd'),
(2269, 251, 'Deherhoti', 'দেহেরগতি', 'deherhotiup.barisal.gov.bd'),
(2270, 251, 'Chandpasha', 'চাঁদপাশা', 'chandpashaup.barisal.gov.bd'),
(2271, 251, 'Rahamtpur', 'রহমতপুর', 'rahamtpurup.barisal.gov.bd'),
(2272, 251, 'Madhbpasha', 'মাধবপাশা', 'madhbpashaup.barisal.gov.bd'),
(2273, 252, 'Shatla', 'সাতলা', 'shatlaup.barisal.gov.bd'),
(2274, 252, 'Harta', 'হারতা', 'hartaup.barisal.gov.bd'),
(2275, 252, 'Jalla', 'জল্লা', 'jallaup.barisal.gov.bd'),
(2276, 252, 'Otra', 'ওটরা', 'otraup.barisal.gov.bd'),
(2277, 252, 'Sholok', 'শোলক', 'sholokup.barisal.gov.bd'),
(2278, 252, 'Barakhota', 'বরাকোঠা', 'barakhotaup.barisal.gov.bd'),
(2279, 252, 'Bamrail', 'বামরাইল', 'bamrailup.barisal.gov.bd'),
(2280, 252, 'Shikerpur Wazirpur', 'শিকারপুর উজিরপুর', 'shikerpurwazirpurup.barisal.gov.bd'),
(2281, 252, 'Gouthia', 'গুঠিয়া', 'gouthiaup.barisal.gov.bd'),
(2282, 253, 'Bisharkandi', 'বিশারকান্দি', 'bisharkandiup.barisal.gov.bd'),
(2283, 253, 'Illuhar', 'ইলুহার', 'illuharup.barisal.gov.bd'),
(2284, 253, 'Sayedkathi', 'সৈয়দকাঠী', 'sayedkathiup.barisal.gov.bd'),
(2285, 253, 'Chakhar', 'চাখার', 'chakharup.barisal.gov.bd'),
(2286, 253, 'Saliabakpur', 'সলিয়াবাকপুর', 'saliabakpurup.barisal.gov.bd'),
(2287, 253, 'Baishari', 'বাইশারী', 'baishariup.barisal.gov.bd'),
(2288, 253, 'Banaripara', 'বানারিপাড়া', 'banariparaup.barisal.gov.bd'),
(2289, 253, 'Udykhati', 'উদয়কাঠী', 'udykhatiup.barisal.gov.bd'),
(2290, 254, 'Khanjapur', 'খাঞ্জাপুর', 'khanjapurup.barisal.gov.bd'),
(2291, 254, 'Barthi', 'বার্থী', 'barthiup.barisal.gov.bd'),
(2292, 254, 'Chandshi', 'চাঁদশী', 'chandshiup.barisal.gov.bd'),
(2293, 254, 'Mahilara', 'মাহিলারা', 'mahilaraup.barisal.gov.bd'),
(2294, 254, 'Nalchira', 'নলচিড়া', 'nalchiraup.barisal.gov.bd'),
(2295, 254, 'Batajore', 'বাটাজোর', 'batajoreup.barisal.gov.bd'),
(2296, 254, 'Sarikal', 'সরিকল', 'sarikalup.barisal.gov.bd'),
(2297, 255, 'Rajihar', 'রাজিহার', 'rajiharup.barisal.gov.bd'),
(2298, 255, 'Bakal', 'বাকাল', 'bakalup.barisal.gov.bd'),
(2299, 255, 'Bagdha', 'বাগধা', 'bagdhaup.barisal.gov.bd'),
(2300, 255, 'Goila', 'গৈলা', 'goilaup.barisal.gov.bd'),
(2301, 255, 'Ratnapur', 'রত্নপুর', 'ratnapurup.barisal.gov.bd'),
(2302, 256, 'Andarmanik', 'আন্দারমানিক', 'andarmanikup.barisal.gov.bd'),
(2303, 256, 'Lata', 'লতা', 'lataup.barisal.gov.bd'),
(2304, 256, 'Charakkorea', 'চরএককরিয়া', 'charakkoreaup.barisal.gov.bd'),
(2305, 256, 'Ulania', 'উলানিয়া', 'ulaniaup.barisal.gov.bd'),
(2306, 256, 'Mehendigong', 'মেহেন্দিগঞ্জ', 'mehendigongup.barisal.gov.bd'),
(2307, 256, 'Biddanandapur', 'বিদ্যানন্দনপুর', 'biddanandapurup.barisal.gov.bd'),
(2308, 256, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.barisal.gov.bd'),
(2309, 256, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.barisal.gov.bd'),
(2310, 256, 'Alimabad', 'আলিমাবাদ', 'alimabadup.barisal.gov.bd'),
(2311, 256, 'Chandpur', 'চানপুর', 'chandpurup.barisal.gov.bd'),
(2312, 256, 'Darirchar Khajuria', 'দড়িরচর খাজুরিয়া', 'darircharkhajuriaup.barisal.gov.bd'),
(2313, 256, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.barisal.gov.bd'),
(2314, 256, 'Chargopalpur', 'চরগোপালপুর', 'chargopalpurup.barisal.gov.bd'),
(2315, 257, 'Batamara', 'বাটামারা', 'batamaraup.barisal.gov.bd'),
(2316, 257, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.barisal.gov.bd'),
(2317, 257, 'Safipur', 'সফিপুর', 'safipurup.barisal.gov.bd'),
(2318, 257, 'Gaschua', 'গাছুয়া', 'gaschuaup.barisal.gov.bd'),
(2319, 257, 'Charkalekha', 'চরকালেখা', 'charkalekhaup.barisal.gov.bd'),
(2320, 257, 'Muladi', 'মুলাদী', 'muladiup.barisal.gov.bd'),
(2321, 257, 'Kazirchar', 'কাজিরচর', 'kazircharup.barisal.gov.bd'),
(2322, 258, 'Harinathpur', 'হরিনাথপুর', 'harinathpurup.barisal.gov.bd'),
(2323, 258, 'Memania', 'মেমানিয়া', 'memaniaup.barisal.gov.bd'),
(2324, 258, 'Guabaria', 'গুয়াবাড়িয়া', 'guabariaup.barisal.gov.bd'),
(2325, 258, 'Barjalia', 'বড়জালিয়া', 'barjaliaup.barisal.gov.bd'),
(2326, 258, 'Hizla Gourabdi', 'হিজলা গৌরাব্দি', 'hizlagourabdiup.barisal.gov.bd'),
(2327, 258, 'Dhulkhola', 'ধুলখোলা', 'dhulkholaup.barisal.gov.bd'),
(2328, 259, 'Razapur', 'রাজাপুর', 'razapurup.bhola.gov.bd'),
(2329, 259, 'Ilisha', 'ইলিশা', 'ilishaup.bhola.gov.bd'),
(2330, 259, 'Westilisa', 'পশ্চিম ইলিশা', 'westilisaup.bhola.gov.bd'),
(2331, 259, 'Kachia', 'কাচিয়া', 'kachiaup.bhola.gov.bd'),
(2332, 259, 'Bapta', 'বাপ্তা', 'baptaup.bhola.gov.bd'),
(2333, 259, 'Dhania', 'ধনিয়া', 'dhaniaup.bhola.gov.bd'),
(2334, 259, 'Shibpur', 'শিবপুর', 'shibpurup.bhola.gov.bd'),
(2335, 259, 'Alinagor', 'আলীনগর', 'alinagorup.bhola.gov.bd'),
(2336, 259, 'Charshamya', 'চরসামাইয়া', 'charshamyaup.bhola.gov.bd'),
(2337, 259, 'Vhelumia', ' ভেলুমিয়া', 'vhelumiaup.bhola.gov.bd'),
(2338, 259, 'Vheduria', 'ভেদুরিয়া', 'vheduriaup.bhola.gov.bd'),
(2339, 259, 'North Digholdi', 'উত্তর দিঘলদী', 'northdigholdiup.bhola.gov.bd'),
(2340, 259, 'South Digholdi', 'দক্ষিণ দিঘলদী', 'southdigholdiup.bhola.gov.bd'),
(2341, 260, 'Boromanika', 'বড় মানিকা', 'boromanikaup.bhola.gov.bd'),
(2342, 260, 'Deula', 'দেউলা', 'deulaup.bhola.gov.bd'),
(2343, 260, 'Kutuba', 'কুতুবা', 'kutubaup.bhola.gov.bd'),
(2344, 260, 'Pakshia', 'পক্ষিয়া', 'pakshiaup.bhola.gov.bd'),
(2345, 260, 'Kachia', 'কাচিয়া', 'kachiaup4.bhola.gov.bd'),
(2346, 261, 'Osmangonj', 'ওসমানগঞ্জ', 'osmangonjup.bhola.gov.bd'),
(2347, 261, 'Aslampur', 'আছলামপুর', 'aslampurup.bhola.gov.bd'),
(2348, 261, 'Zinnagor', 'জিন্নাগড়', 'zinnagorup.bhola.gov.bd'),
(2349, 261, 'Aminabad', 'আমিনাবাদ', 'aminabadup.bhola.gov.bd'),
(2350, 261, 'Nilkomol', 'নীলকমল', 'nilkomolup.bhola.gov.bd'),
(2351, 261, 'Charmadraj', 'চরমাদ্রাজ', 'charmadrajup.bhola.gov.bd'),
(2352, 261, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd'),
(2353, 261, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd'),
(2354, 261, 'Charkolmi', 'চরকলমী', 'charkolmiup.bhola.gov.bd'),
(2355, 261, 'Charmanika', 'চরমানিকা', 'charmanikaup.bhola.gov.bd'),
(2356, 261, 'Hazarigonj', 'হাজারীগঞ্জ', 'hazarigonjup.bhola.gov.bd'),
(2357, 261, 'Jahanpur', 'জাহানপুর', 'jahanpurup.bhola.gov.bd'),
(2358, 261, 'Nurabad', 'নুরাবাদ', 'nurabadup.bhola.gov.bd'),
(2359, 261, 'Rasulpur', 'রসুলপুর', 'rasulpurup.bhola.gov.bd'),
(2360, 261, 'Kukrimukri', 'কুকরীমূকরী', 'kukrimukriup.bhola.gov.bd'),
(2361, 261, 'Abubakarpur', 'আবুবকরপুর', 'abubakarpurup.bhola.gov.bd'),
(2362, 261, 'Abdullahpur', 'আবদুল্লাহ', 'abdullahpurup.bhola.gov.bd'),
(2363, 261, 'Nazrulnagar', 'নজরুল নগর', 'nazrulnagarup.bhola.gov.bd'),
(2364, 261, 'Mujibnagar', 'মুজিব নগর', 'mujibnagarup.bhola.gov.bd'),
(2365, 261, 'Dalchar', 'ঢালচর', 'dalcharup.bhola.gov.bd'),
(2366, 262, 'Madanpur', 'মদনপুর', 'madanpurup.bhola.gov.bd'),
(2367, 262, 'Madua', 'মেদুয়া', 'maduaup.bhola.gov.bd'),
(2368, 262, 'Charpata', 'চরপাতা', 'charpataup.bhola.gov.bd'),
(2369, 262, 'North Joy Nagar', 'উত্তর জয়নগর', 'northjoynagarup.bhola.gov.bd'),
(2370, 262, 'South Joy Nagar', 'দক্ষিন জয়নগর', 'southjoynagarup.bhola.gov.bd'),
(2371, 262, 'Char Khalipa', 'চর খলিফা', 'charkhalipaup.bhola.gov.bd'),
(2372, 262, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bhola.gov.bd'),
(2373, 262, 'Hazipur', 'হাজীপুর', 'hazipurup.bhola.gov.bd'),
(2374, 262, 'Vhovanipur', 'ভবানীপুর', 'vhovanipurup.bhola.gov.bd'),
(2375, 263, 'Hazirhat', 'হাজীর হাট', 'hazirhatup.bhola.gov.bd'),
(2376, 263, 'Monpura', 'মনপুরা', 'monpuraup.bhola.gov.bd'),
(2377, 263, 'North Sakuchia', 'উত্তর সাকুচিয়া', 'sakuchianorthup.bhola.gov.bd'),
(2378, 263, 'South Sakuchia', 'দক্ষিন সাকুচিয়া', 'sakuchiasouthup.bhola.gov.bd'),
(2379, 264, 'Chanchra', 'চাচঁড়া', 'chanchraup.bhola.gov.bd'),
(2380, 264, 'Shambupur', 'শম্ভুপুর', 'shambupurup.bhola.gov.bd'),
(2381, 264, 'Sonapur', 'সোনাপুর', 'sonapurup.bhola.gov.bd'),
(2382, 264, 'Chadpur', 'চাঁদপুর', 'chadpurup.bhola.gov.bd'),
(2383, 264, 'Baro Molongchora', 'বড় মলংচড়া', 'baromolongchoraup.bhola.gov.bd'),
(2384, 265, 'Badarpur', 'বদরপুর', 'badarpurup.bhola.gov.bd'),
(2385, 265, 'Charbhuta', 'চরভূতা', 'charbhutaup.bhola.gov.bd'),
(2386, 265, 'Kalma', ' কালমা', 'kalmaup.bhola.gov.bd'),
(2387, 265, 'Dholigour Nagar', 'ধলীগৌর নগর', 'dholigournagarup.bhola.gov.bd'),
(2388, 265, 'Lalmohan', 'লালমোহন', 'lalmohanup.bhola.gov.bd'),
(2389, 265, 'Lord Hardinge', 'লর্ড হার্ডিঞ্জ', 'lordhardingeup.bhola.gov.bd'),
(2390, 265, 'Ramagonj', 'রমাগঞ্জ', 'ramagonjup.bhola.gov.bd'),
(2391, 265, 'Paschim Char Umed', 'পশ্চিম চর উমেদ', 'paschimcharumedup.bhola.gov.bd'),
(2392, 265, 'Farajgonj', 'ফরাজগঞ্জ', 'farajgonjup.bhola.gov.bd'),
(2393, 266, 'Amtali', 'আমতলী', 'amtaliup.barguna.gov.bd'),
(2394, 266, 'Gulishakhali', 'গুলিশাখালী', 'gulishakhaliup.barguna.gov.bd'),
(2395, 266, 'Athrogasia', 'আঠারগাছিয়া', 'athrogasiaup.barguna.gov.bd'),
(2396, 266, 'Kukua', 'কুকুয়া', 'kukuaup.barguna.gov.bd'),
(2397, 266, 'Haldia', 'হলদিয়া', 'haldiaup.barguna.gov.bd'),
(2398, 266, 'Chotobogi', 'ছোটবগী', 'chotobogiup.barguna.gov.bd'),
(2399, 266, 'Arpangasia', 'আড়পাঙ্গাশিয়া', 'arpangasiaup.barguna.gov.bd'),
(2400, 266, 'Chowra', 'চাওড়া', 'chowraup.barguna.gov.bd'),
(2401, 267, 'M. Baliatali', 'এম. বালিয়াতলী', 'm.baliataliup.barguna.gov.bd'),
(2402, 267, 'Noltona', 'নলটোনা', 'noltonaup.barguna.gov.bd'),
(2403, 267, 'Bodorkhali', 'বদরখালী', 'bodorkhaliup.barguna.gov.bd'),
(2404, 267, 'Gowrichanna', 'গৌরিচন্না', 'gowrichannaup.barguna.gov.bd'),
(2405, 267, 'Fuljhuri', 'ফুলঝুড়ি', 'fuljhuriup.barguna.gov.bd'),
(2406, 267, 'Keorabunia', 'কেওড়াবুনিয়া', 'keorabuniaup.barguna.gov.bd'),
(2407, 267, 'Ayla Patakata', 'আয়লা পাতাকাটা', 'aylaPatakataup.barguna.gov.bd'),
(2408, 267, 'Burirchor', 'বুড়িরচর', 'burirchorup.barguna.gov.bd'),
(2409, 267, 'Dhalua', 'ঢলুয়া', 'dhaluaup.barguna.gov.bd'),
(2410, 267, 'Barguna', 'বরগুনা', 'bargunaup.barguna.gov.bd'),
(2411, 268, 'Bibichini', 'বিবিচিন', 'bibichiniup.barguna.gov.bd'),
(2412, 268, 'Betagi', 'বেতাগী', 'betagiup.barguna.gov.bd'),
(2413, 268, 'Hosnabad', 'হোসনাবাদ', 'hosnabadup.barguna.gov.bd'),
(2414, 268, 'Mokamia', 'মোকামিয়া', 'mokamiaup.barguna.gov.bd'),
(2415, 268, 'Buramajumder', 'বুড়ামজুমদার', 'buramajumderup.barguna.gov.bd'),
(2416, 268, 'Kazirabad', 'কাজীরাবাদ', 'kazirabadup.barguna.gov.bd'),
(2417, 268, 'Sarisamuri', 'সরিষামুড়ী', 'sarisamuriup.barguna.gov.bd'),
(2418, 269, 'Bukabunia', 'বুকাবুনিয়া', 'bukabuniaup.barguna.gov.bd'),
(2419, 269, 'Bamna', 'বামনা', 'bamnaup.barguna.gov.bd'),
(2420, 269, 'Ramna', 'রামনা', 'ramnaup.barguna.gov.bd'),
(2421, 269, 'Doutola', 'ডৌয়াতলা', 'doutolaup.barguna.gov.bd'),
(2422, 270, 'Raihanpur', 'রায়হানপুর', 'raihanpurup.barguna.gov.bd'),
(2423, 270, 'Nachnapara', 'নাচনাপাড়া', 'nachnaparaup.barguna.gov.bd'),
(2424, 270, 'Charduany', 'চরদুয়ানী', 'charduanyup.barguna.gov.bd'),
(2425, 270, 'Patharghata', 'পাথরঘাটা', 'patharghataup.barguna.gov.bd'),
(2426, 270, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.barguna.gov.bd'),
(2427, 270, 'Kakchira', 'কাকচিঢ়া', 'kakchiraup.barguna.gov.bd'),
(2428, 270, 'Kathaltali', 'কাঠালতলী', 'kathaltaliup.barguna.gov.bd'),
(2429, 271, 'Karibaria', 'কড়ইবাড়ীয়া', 'karibariaup.barguna.gov.bd'),
(2430, 271, 'Panchakoralia', 'পচাকোড়ালিয়া', 'panchakoraliaup.barguna.gov.bd'),
(2431, 271, 'Barabagi', 'বড়বগি', 'barabagiup.barguna.gov.bd'),
(2432, 271, 'Chhotabagi', 'ছোটবগি', 'chhotabagiup.barguna.gov.bd'),
(2433, 271, 'Nishanbaria', 'নিশানবাড়ীয়া', 'nishanbariaup.barguna.gov.bd'),
(2434, 271, 'Sarikkhali', 'শারিকখালি', 'sarikkhaliup.barguna.gov.bd'),
(2435, 271, 'Sonakata', 'সোনাকাটা', 'sonakataup.barguna.gov.bd'),
(2436, 284, 'Tazpur', 'তাজপুর', 'tazpurup.sylhet.gov.bd'),
(2437, 284, 'Umorpur', 'উমরপুর', 'umorpurup.sylhet.gov.bd'),
(2438, 284, 'West Poilanpur', 'পশ্চিম পৈলনপুর', 'westpoilanpurup.sylhet.gov.bd'),
(2439, 272, 'East Poilanpur', 'পূর্ব পৈলনপুর', 'eastpoilanpurup.sylhet.gov.bd'),
(2440, 272, 'Boaljur', 'বোয়ালজুর', 'boaljurup.sylhet.gov.bd'),
(2441, 284, 'Burungabazar', 'বুরুঙ্গাবাজার', 'burungabazarup.sylhet.gov.bd'),
(2442, 284, 'Goalabazar', 'গোয়ালাবাজার', 'goalabazarup.sylhet.gov.bd'),
(2443, 284, 'Doyamir', 'দয়ামীর', 'doyamirup.sylhet.gov.bd'),
(2444, 284, 'Usmanpur', 'উসমানপুর', 'usmanpurup.sylhet.gov.bd'),
(2445, 272, 'Dewanbazar', 'দেওয়ান বাজার', 'dewanbazarup.sylhet.gov.bd'),
(2446, 272, 'West Gouripur', 'পশ্চিম গৌরীপুর', 'westgouripurup.sylhet.gov.bd'),
(2447, 272, 'East Gouripur', 'পূর্ব গৌরীপুর', 'eastgouripurup.sylhet.gov.bd'),
(2448, 272, 'Balaganj', 'বালাগঞ্জ', 'balaganjup.sylhet.gov.bd'),
(2449, 284, 'Sadipur', 'সাদিরপুর', 'sadipurup.sylhet.gov.bd'),
(2450, 273, 'Tilpara', 'তিলপাড়া', 'tilparaup.sylhet.gov.bd'),
(2451, 273, 'Alinagar', 'আলীনগর', 'alinagarup.sylhet.gov.bd'),
(2452, 273, 'Charkhai', 'চরখাই', 'charkhaiup.sylhet.gov.bd'),
(2453, 273, 'Dubag', 'দুবাগ', 'dubagup.sylhet.gov.bd'),
(2454, 273, 'Sheola', 'শেওলা', 'sheolaup.sylhet.gov.bd'),
(2455, 273, 'Kurarbazar', 'কুড়ারবাজার', 'kurarbazarup.sylhet.gov.bd'),
(2456, 273, 'Mathiura', 'মাথিউরা', 'mathiuraup.sylhet.gov.bd'),
(2457, 273, 'Mullapur', 'মোল্লাপুর', 'mullapurup.sylhet.gov.bd'),
(2458, 273, 'Muria', 'মুড়িয়া', 'muriaup.sylhet.gov.bd'),
(2459, 273, 'Lauta', 'লাউতা', 'lautaup.sylhet.gov.bd'),
(2460, 274, 'Rampasha', 'রামপাশা', 'rampashaup.sylhet.gov.bd'),
(2461, 274, 'Lamakazi', 'লামাকাজী', 'lamakaziup.sylhet.gov.bd'),
(2462, 274, 'Khajanchi', 'খাজাঞ্চী', 'khajanchiup.sylhet.gov.bd'),
(2463, 274, 'Alankari', 'অলংকারী', 'alankariup.sylhet.gov.bd'),
(2464, 274, 'Dewkalash', 'দেওকলস', 'dewkalashup.sylhet.gov.bd'),
(2465, 274, 'Bishwanath', 'বিশ্বনাথ', 'bishwanathup.sylhet.gov.bd'),
(2466, 274, 'Doshghar', 'দশঘর', 'doshgharup.sylhet.gov.bd'),
(2467, 274, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.sylhet.gov.bd'),
(2468, 275, 'Telikhal', 'তেলিখাল', 'telikhalup.sylhet.gov.bd'),
(2469, 275, 'Islampur Paschim', 'ইসলামপুর পশ্চিম', 'islampurpaschimup.sylhet.gov.bd'),
(2470, 275, 'Islampur Purba', 'ইসলামপুর পূর্ব', 'islampurpurbaup.sylhet.gov.bd'),
(2471, 275, 'Isakalas', 'ইসাকলস', 'isakalasup.sylhet.gov.bd'),
(2472, 275, 'Uttor Ronikhai', 'উত্তর রনিখাই', 'uttorronikhaiup.sylhet.gov.bd'),
(2473, 275, 'Dakkin Ronikhai', 'দক্ষিন রনিখাই', 'dakkinronikhaiup.sylhet.gov.bd'),
(2474, 276, 'Ghilachora', 'ঘিলাছড়া', 'ghilachoraup.sylhet.gov.bd'),
(2475, 276, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '1nofenchuganjup.sylhet.gov.bd'),
(2476, 276, 'Uttar Kushiara', 'উত্তর কুশিয়ারা', 'uttarkushiaraup.sylhet.gov.bd'),
(2477, 276, 'Uttar Fenchuganj', 'উত্তর ফেঞ্চুগঞ্জ', 'uttarfenchuganjup.sylhet.gov.bd'),
(2478, 276, 'Maijgaon', 'মাইজগাঁও', 'maijgaonup.sylhet.gov.bd'),
(2479, 277, 'Golapganj', 'গোলাপগঞ্জ', 'golapganjup.sylhet.gov.bd'),
(2480, 277, 'Fulbari', 'ফুলবাড়ী', 'fulbariup.sylhet.gov.bd'),
(2481, 277, 'Lakshmipasha', 'লক্ষ্মীপাশা', 'lakshmipashaup.sylhet.gov.bd'),
(2482, 277, 'Budhbaribazar', 'বুধবারীবাজার', 'budhbaribazarup.sylhet.gov.bd'),
(2483, 277, 'Dhakadakshin', 'ঢাকাদক্ষিন', 'dhakadakshinup.sylhet.gov.bd'),
(2484, 277, 'Sharifganj', 'শরিফগঞ্জ', 'sharifganjup.sylhet.gov.bd'),
(2485, 277, 'Uttar Badepasha', 'উত্তর বাদেপাশা', 'uttarbadepashaup.sylhet.gov.bd'),
(2486, 277, 'Lakshanaband', 'লক্ষনাবন্দ', 'lakshanabandup.sylhet.gov.bd'),
(2487, 277, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.sylhet.gov.bd'),
(2488, 277, 'West Amura', 'পশ্চিম আমুরা', 'westamuraup.sylhet.gov.bd'),
(2489, 278, 'Fothepur', 'ফতেপুর', 'fothepurup.sylhet.gov.bd'),
(2490, 278, 'Rustampur', 'রুস্তমপুর', 'rustampurup.sylhet.gov.bd'),
(2491, 278, 'Paschim Jaflong', 'পশ্চিম জাফলং', 'paschimjaflongup.sylhet.gov.bd'),
(2492, 278, 'Purba Jaflong', 'পূর্ব জাফলং', 'purbajaflongup.sylhet.gov.bd'),
(2493, 278, 'Lengura', 'লেঙ্গুড়া', 'lenguraup.sylhet.gov.bd'),
(2494, 278, 'Alirgaon', 'আলীরগাঁও', 'alirgaonup.sylhet.gov.bd'),
(2495, 278, 'Nandirgaon', 'নন্দিরগাঁও', 'nandirgaonup.sylhet.gov.bd'),
(2496, 278, 'Towakul', 'তোয়াকুল', 'towakulup.sylhet.gov.bd'),
(2497, 278, 'Daubari', 'ডৌবাড়ী', 'daubariup.sylhet.gov.bd'),
(2498, 279, 'Nijpat', 'নিজপাট', 'nijpatup.sylhet.gov.bd'),
(2499, 279, 'Jaintapur', 'জৈন্তাপুর', 'jaintapurup.sylhet.gov.bd'),
(2500, 279, 'Charikatha', 'চারিকাটা', 'charikathaup.sylhet.gov.bd'),
(2501, 279, 'Darbast', 'দরবস্ত', 'darbastup.sylhet.gov.bd'),
(2502, 279, 'Fatehpur', 'ফতেপুর', 'fatehpurup.sylhet.gov.bd'),
(2503, 279, 'Chiknagul', 'চিকনাগুল', 'chiknagulup.sylhet.gov.bd'),
(2504, 280, 'Rajagonj', 'রাজাগঞ্জ', 'rajagonjup.sylhet.gov.bd'),
(2505, 280, 'Lakshiprashad Purbo', 'লক্ষীপ্রাসাদ পূর্ব', 'lakshiprashadpurboup.sylhet.gov.bd'),
(2506, 280, 'Lakshiprashad Pashim', 'লক্ষীপ্রাসাদ পশ্চিম', 'lakshiprashadpashimup.sylhet.gov.bd'),
(2507, 280, 'Digirpar Purbo', 'দিঘিরপার পূর্ব', 'digirparpurboup.sylhet.gov.bd'),
(2508, 280, 'Satbakh', 'সাতবাক', 'satbakhup.sylhet.gov.bd'),
(2509, 280, 'Barachotul', 'বড়চতুল', 'barachotulup.sylhet.gov.bd'),
(2510, 280, 'Kanaighat', 'কানাইঘাট', 'kanaighatup.sylhet.gov.bd'),
(2511, 280, 'Dakhin Banigram', 'দক্ষিন বানিগ্রাম', 'dakhinbanigramup.sylhet.gov.bd'),
(2512, 280, 'Jinghabari', 'ঝিঙ্গাবাড়ী', 'jinghabariup.sylhet.gov.bd'),
(2513, 281, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.sylhet.gov.bd'),
(2514, 281, 'Hatkhula', 'হাটখোলা', 'hatkhulaup.sylhet.gov.bd'),
(2515, 281, 'Khadimnagar', 'খাদিমনগর', 'khadimnagarup.sylhet.gov.bd'),
(2516, 281, 'Khadimpara', 'খাদিমপাড়া', 'khadimparaup.sylhet.gov.bd'),
(2517, 281, 'Tultikor', 'টুলটিকর', 'tultikorup.sylhet.gov.bd'),
(2518, 281, 'Tukerbazar', 'টুকেরবাজার', 'tukerbazarup.sylhet.gov.bd'),
(2519, 281, 'Mugolgaon', 'মোগলগাও', 'mugolgaonup.sylhet.gov.bd'),
(2520, 281, 'Kandigaon', 'কান্দিগাও', 'kandigaonup.sylhet.gov.bd'),
(2521, 282, 'Manikpur', 'মানিকপুর', 'manikpurup.sylhet.gov.bd'),
(2522, 282, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.sylhet.gov.bd'),
(2523, 282, 'Barohal', 'বারহাল', 'barohalup.sylhet.gov.bd'),
(2524, 282, 'Birorsri', 'বিরশ্রী', 'birorsriup.sylhet.gov.bd'),
(2525, 282, 'Kajalshah', 'কাজলশার', 'kajalshahup.sylhet.gov.bd'),
(2526, 282, 'Kolachora', 'কলাছড়া', 'kolachora.sylhet.gov.bd'),
(2527, 282, 'Zakiganj', 'জকিগঞ্জ', 'zakiganjup.sylhet.gov.bd'),
(2528, 282, 'Barothakuri', 'বারঠাকুরী', 'barothakuriup.sylhet.gov.bd'),
(2529, 282, 'Kaskanakpur', 'কসকনকপুর', 'kaskanakpurup.sylhet.gov.bd'),
(2530, 283, 'Lalabazar', 'লালাবাজার', 'lalabazarup.sylhet.gov.bd'),
(2531, 283, 'Moglabazar', 'মোগলাবাজার', 'moglabazarup.sylhet.gov.bd'),
(2532, 283, 'Boroikandi', 'বড়ইকান্দি', 'boroikandiup.sylhet.gov.bd'),
(2533, 283, 'Silam', 'সিলাম', 'silamup.sylhet.gov.bd'),
(2534, 283, 'Daudpur', 'দাউদপুর', 'daudpurup.sylhet.gov.bd'),
(2535, 283, 'Mollargaon', 'মোল্লারগাঁও', 'mollargaonup.sylhet.gov.bd'),
(2536, 283, 'Kuchai', 'কুচাই', 'kuchaiup.sylhet.gov.bd'),
(2537, 283, 'Kamalbazar', 'কামালবাজার', 'kamalbazarup.sylhet.gov.bd'),
(2538, 283, 'Jalalpur', 'জালালপুর', 'jalalpurup.sylhet.gov.bd'),
(2539, 283, 'Tetli', 'তেতলী', 'tetliup.sylhet.gov.bd'),
(2540, 285, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd'),
(2541, 285, 'Borni', 'বর্ণি', 'borniup.moulvibazar.gov.bd'),
(2542, 285, 'Dasherbazar', 'দাসেরবাজার', 'dasherbazarup.moulvibazar.gov.bd'),
(2543, 285, 'Nizbahadurpur', 'নিজবাহাদুরপুর', 'nizbahadurpurup.moulvibazar.gov.bd'),
(2544, 285, 'Uttar Shahbajpur', 'উত্তর শাহবাজপুর', 'shahbajpuruttarup.moulvibazar.gov.bd'),
(2545, 285, 'Dakkhin Shahbajpur', 'দক্ষিণ শাহবাজপুর', 'shahbajpurdakshinup.moulvibazar.gov.bd'),
(2546, 285, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd'),
(2547, 285, 'Baralekha', 'বড়লেখা', 'baralekhaup.moulvibazar.gov.bd'),
(2548, 285, 'Dakshinbhag Uttar', 'দক্ষিণভাগ (উত্তর)', 'dakshinbhaguttarup.moulvibazar.gov.bd'),
(2549, 285, 'Dakshinbhag Dakkhin', 'দক্ষিণভাগ (দক্ষিণ)', 'dakshinbhagdakshinup.moulvibazar.gov.bd'),
(2550, 285, 'Sujanagar', 'সুজানগর', 'sujanagarup.moulvibazar.gov.bd'),
(2551, 286, 'Adampur', 'আদমপুর', 'adampurup.moulvibazar.gov.bd'),
(2552, 286, 'Patanushar', 'পতনঊষার', 'patanusharup.moulvibazar.gov.bd'),
(2553, 286, 'Madhabpur', 'মাধবপুর', 'madhabpurup.moulvibazar.gov.bd'),
(2554, 286, 'Rahimpur', 'রহিমপুর', 'rahimpurup.moulvibazar.gov.bd'),
(2555, 286, 'Shamshernagar', 'শমশেরনগর', 'shamshernagarup.moulvibazar.gov.bd'),
(2556, 286, 'Kamalgonj', 'কমলগঞ্জ', 'kamalgonjup.moulvibazar.gov.bd'),
(2557, 286, 'Islampur', 'ইসলামপুর', 'islampurup.moulvibazar.gov.bd'),
(2558, 286, 'Munshibazar', 'মুন্সিবাজার', 'munshibazarup3.moulvibazar.gov.bd'),
(2559, 286, 'Alinagar', 'আলী নগর', 'alinagarup.moulvibazar.gov.bd'),
(2560, 287, 'Baramchal', 'বরমচাল', 'baramchalup.moulvibazar.gov.bd'),
(2561, 287, 'Bhukshimail', 'ভূকশিমইল', 'bhukshimailup.moulvibazar.gov.bd'),
(2562, 287, 'Joychandi', 'জয়চন্ডি', 'joychandiup.moulvibazar.gov.bd'),
(2563, 287, 'Brammanbazar', 'ব্রাহ্মণবাজার', 'brammanbazarup.moulvibazar.gov.bd'),
(2564, 287, 'Kadipur', 'কাদিপুর', 'kadipurup.moulvibazar.gov.bd'),
(2565, 287, 'Kulaura', 'কুলাউড়া', 'kulauraup.moulvibazar.gov.bd'),
(2566, 287, 'Rauthgaon', 'রাউৎগাঁও', 'rauthgaonup.moulvibazar.gov.bd'),
(2567, 287, 'Tilagaon', 'টিলাগাঁও', 'tilagaonup.moulvibazar.gov.bd'),
(2568, 287, 'Sharifpur', 'শরীফপুর', 'sharifpurup.moulvibazar.gov.bd'),
(2569, 287, 'Prithimpassa', 'পৃথিমপাশা', 'prithimpassaup.moulvibazar.gov.bd'),
(2570, 287, 'Kormodha', 'কর্মধা', 'kormodhaup.moulvibazar.gov.bd'),
(2571, 287, 'Bhatera', 'ভাটেরা', 'bhateraup.moulvibazar.gov.bd'),
(2572, 287, 'Hazipur', 'হাজীপুর', 'hazipurup.moulvibazar.gov.bd'),
(2573, 288, 'Amtail', 'আমতৈল', 'amtailup.moulvibazar.gov.bd'),
(2574, 288, 'Khalilpur', 'খলিলপুর', 'khalilpurup.moulvibazar.gov.bd'),
(2575, 288, 'Monumukh', 'মনুমুখ', 'monumukhup.moulvibazar.gov.bd'),
(2576, 288, 'Kamalpur', 'কামালপুর', 'kamalpurup.moulvibazar.gov.bd'),
(2577, 288, 'Apar Kagabala', 'আপার কাগাবলা', 'uparkagabalaup.moulvibazar.gov.bd'),
(2578, 288, 'Akhailkura', 'আখাইলকুড়া', 'akhailkuraup.moulvibazar.gov.bd'),
(2579, 288, 'Ekatuna', 'একাটুনা', 'ekatunaup.moulvibazar.gov.bd'),
(2580, 288, 'Chadnighat', 'চাঁদনীঘাট', 'chadnighatup.moulvibazar.gov.bd'),
(2581, 288, 'Konokpur', 'কনকপুর', 'konokpurup.moulvibazar.gov.bd'),
(2582, 288, 'Nazirabad', 'নাজিরাবাদ', 'nazirabadup.moulvibazar.gov.bd'),
(2583, 288, 'Mostafapur', 'মোস্তফাপুর', 'mostafapurup.moulvibazar.gov.bd'),
(2584, 288, 'Giasnagar', 'গিয়াসনগর', 'giasnagarup.moulvibazar.gov.bd'),
(2585, 289, 'Fotepur', 'ফতেপুর', 'fotepurup.moulvibazar.gov.bd'),
(2586, 289, 'Uttorbhag', 'উত্তরভাগ', 'uttorbhagup.moulvibazar.gov.bd'),
(2587, 289, 'Munsibazar', 'মুন্সিবাজার', 'munsibazarup.moulvibazar.gov.bd'),
(2588, 289, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.moulvibazar.gov.bd'),
(2589, 289, 'Rajnagar', 'রাজনগর', 'rajnagarup.moulvibazar.gov.bd'),
(2590, 289, 'Tengra', 'টেংরা', 'tengraup.moulvibazar.gov.bd'),
(2591, 289, 'Kamarchak', 'কামারচাক', 'kamarchakup.moulvibazar.gov.bd'),
(2592, 289, 'Munsurnagar', 'মনসুরনগর', 'munsurnagarup.moulvibazar.gov.bd'),
(2593, 290, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.moulvibazar.gov.bd'),
(2594, 290, 'Bhunabir', 'ভূনবীর', 'bhunabirup.moulvibazar.gov.bd'),
(2595, 290, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangalup.moulvibazar.gov.bd'),
(2596, 290, 'Sindurkhan', 'সিন্দুরখান', 'sindurkhanup.moulvibazar.gov.bd'),
(2597, 290, 'Kalapur', 'কালাপুর', 'kalapurup.moulvibazar.gov.bd'),
(2598, 290, 'Ashidron', 'আশিদ্রোন', 'ashidronup.moulvibazar.gov.bd'),
(2599, 290, 'Rajghat', 'রাজঘাট', 'rajghatup.moulvibazar.gov.bd'),
(2600, 290, 'Kalighat', 'কালীঘাট', 'kalighatup.moulvibazar.gov.bd'),
(2601, 290, 'Satgaon', 'সাতগাঁও', 'satgaonup.moulvibazar.gov.bd'),
(2602, 291, 'Jafornagar', 'জায়ফরনগর', 'jafornagarup.moulvibazar.gov.bd'),
(2603, 291, 'West Juri', 'পশ্চিম জুড়ী', 'westjuriup.moulvibazar.gov.bd'),
(2604, 291, 'Gualbari', 'গোয়ালবাড়ী', 'gualbariup.moulvibazar.gov.bd'),
(2605, 291, 'Sagornal', 'সাগরনাল', 'sagornalup.moulvibazar.gov.bd'),
(2606, 291, 'Fultola', 'ফুলতলা', 'fultolaup.moulvibazar.gov.bd'),
(2607, 291, 'Eastjuri', 'পুর্ব জুড়ী', 'eastjuriup.moulvibazar.gov.bd'),
(2608, 292, 'Barabhakoir Paschim', 'বড় ভাকৈর (পশ্চিম)', 'barabhakoirpaschimup.habiganj.gov.bd'),
(2609, 292, 'Barabhakoir Purba', 'বড় ভাকৈর (পূর্ব)', 'barabhakoirpurbaup.habiganj.gov.bd'),
(2610, 292, 'Inatganj', 'ইনাতগঞ্জ', 'inatganjup.habiganj.gov.bd'),
(2611, 292, 'Digholbak', 'দীঘলবাক', 'digholbakup.habiganj.gov.bd'),
(2612, 292, 'Aushkandi', 'আউশকান্দি', 'aushkandiup.habiganj.gov.bd'),
(2613, 292, 'Kurshi', 'কুর্শি', 'kurshiup.habiganj.gov.bd'),
(2614, 292, 'Kargoan', 'করগাঁও', 'kargoanup.habiganj.gov.bd'),
(2615, 292, 'Nabiganj Sadar', 'নবীগঞ্জ সদর', 'nabiganjsadarup.habiganj.gov.bd'),
(2616, 292, 'Bausha', 'বাউসা', 'baushaup.habiganj.gov.bd'),
(2617, 292, 'Debparra', 'দেবপাড়া', 'debparraup.habiganj.gov.bd'),
(2618, 292, 'Gaznaipur', 'গজনাইপুর', 'gaznaipurup.habiganj.gov.bd'),
(2619, 292, 'Kaliarbhanga', 'কালিয়ারভাংগা', 'kaliarbhangaup.habiganj.gov.bd'),
(2620, 292, 'Paniumda', 'পানিউমদা', 'paniumdaup.habiganj.gov.bd'),
(2621, 293, 'Snanghat', 'স্নানঘাট', 'snanghatup.habiganj.gov.bd'),
(2622, 293, 'Putijuri', 'পুটিজুরী', 'putijuriup.habiganj.gov.bd'),
(2623, 293, 'Satkapon', 'সাতকাপন', 'satkaponup.habiganj.gov.bd'),
(2624, 293, 'Bahubal Sadar', 'বাহুবল সদর', 'bahubalsadarup.habiganj.gov.bd'),
(2625, 293, 'Lamatashi', 'লামাতাশী', 'lamatashiup.habiganj.gov.bd'),
(2626, 293, 'Mirpur', 'মিরপুর', 'mirpurup.habiganj.gov.bd'),
(2627, 293, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.habiganj.gov.bd'),
(2628, 294, 'Shibpasha', 'শিবপাশা', 'shibpashaup.habiganj.gov.bd'),
(2629, 294, 'Kakailsao', 'কাকাইলছেও', 'kakailsaoup.habiganj.gov.bd'),
(2630, 294, 'Ajmiriganj Sadar', 'আজমিরীগঞ্জ সদর', 'ajmiriganjsadarup.habiganj.gov.bd'),
(2631, 294, 'Badolpur', 'বদলপুর', 'badolpurup.habiganj.gov.bd'),
(2632, 294, 'Jolsuka', 'জলসুখা', 'jolsukaup.habiganj.gov.bd'),
(2633, 295, 'Baniachong North East', 'বানিয়াচং উত্তর পূর্ব', 'baniachongnortheastup.habiganj.gov.bd'),
(2634, 295, 'Baniachong North West', 'বানিয়াচং উত্তর পশ্চিম', 'baniachongnorthwestup.habiganj.gov.bd'),
(2635, 295, 'Baniachong South East', 'বানিয়াচং দক্ষিণ পূর্ব', 'baniachongsoutheastup.habiganj.gov.bd'),
(2636, 295, 'Baniachong South West', 'বানিয়াচং দক্ষিণ পশ্চিম', 'baniachongsouthwestup.habiganj.gov.bd'),
(2637, 295, 'Daulatpur', 'দৌলতপুর', 'daulatpur.habiganj.gov.bd'),
(2638, 295, 'Khagaura', 'খাগাউড়া', 'khagauraup.habiganj.gov.bd'),
(2639, 295, 'Baraiuri', 'বড়ইউড়ি', 'baraiuriup.habiganj.gov.bd'),
(2640, 295, 'Kagapasha', 'কাগাপাশা', 'kagapashaup.habiganj.gov.bd'),
(2641, 295, 'Pukra', 'পুকড়া', 'pukraup.habiganj.gov.bd'),
(2642, 295, 'Subidpur', 'সুবিদপুর', 'subidpurup.habiganj.gov.bd'),
(2643, 295, 'Makrampur', 'মক্রমপুর', 'makrampurup.habiganj.gov.bd'),
(2644, 295, 'Sujatpur', 'সুজাতপুর', 'sujatpurup.habiganj.gov.bd'),
(2645, 295, 'Mandari', 'মন্দরী', 'mandariup.habiganj.gov.bd'),
(2646, 295, 'Muradpur', 'মুরাদপুর', 'muradpurup.habiganj.gov.bd'),
(2647, 295, 'Pailarkandi', 'পৈলারকান্দি', 'pailarkandiup.habiganj.gov.bd'),
(2648, 296, 'Lakhai', 'লাখাই', 'lakhaiup.habiganj.gov.bd'),
(2649, 296, 'Murakari', 'মোড়াকরি', 'murakariup.habiganj.gov.bd'),
(2650, 296, 'Muriauk', 'মুড়িয়াউক', 'muriaukup.habiganj.gov.bd'),
(2651, 296, 'Bamoi', 'বামৈ', 'bamoiup.habiganj.gov.bd'),
(2652, 296, 'Karab', 'করাব', 'karabup.habiganj.gov.bd'),
(2653, 296, 'Bulla', 'বুল্লা', 'bullaup6.habiganj.gov.bd'),
(2654, 297, 'Gazipur', 'গাজীপুর', 'gazipurup.habiganj.gov.bd'),
(2655, 297, 'Ahammadabad', 'আহম্মদাবাদ', 'ahammadabadup.habiganj.gov.bd'),
(2656, 297, 'Deorgach', 'দেওরগাছ', 'deorgachup.habiganj.gov.bd'),
(2657, 297, 'Paikpara', 'পাইকপাড়া', 'paikparaup.habiganj.gov.bd'),
(2658, 297, 'Shankhala', 'শানখলা', 'shankhalaup.habiganj.gov.bd'),
(2659, 297, 'Chunarughat', 'চুনারুঘাট', 'chunarughatup.habiganj.gov.bd'),
(2660, 297, 'Ubahata', 'উবাহাটা', 'ubahataup.habiganj.gov.bd'),
(2661, 297, 'Shatiajuri', 'সাটিয়াজুরী', 'shatiajuriup.habiganj.gov.bd'),
(2662, 297, 'Ranigaon', 'রাণীগাঁও', 'ranigaonup.habiganj.gov.bd'),
(2663, 297, 'Mirashi', 'মিরাশী', 'mirashiup.habiganj.gov.bd'),
(2664, 298, 'Lukra', 'লুকড়া', 'lukraup.habiganj.gov.bd'),
(2665, 298, 'Richi', 'রিচি', 'richiup.habiganj.gov.bd'),
(2666, 298, 'Teghoria', 'তেঘরিয়া', 'teghoriaup.habiganj.gov.bd'),
(2667, 298, 'Poil', 'পইল', 'poilup.habiganj.gov.bd'),
(2668, 298, 'Gopaya', 'গোপায়া', 'gopayaup.habiganj.gov.bd'),
(2669, 298, 'Rajiura', 'রাজিউড়া', 'rajiuraup.habiganj.gov.bd'),
(2670, 298, 'Nurpur', 'নুরপুর', 'nurpurup.habiganj.gov.bd'),
(2671, 298, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 'shayestaganjup.habiganj.gov.bd'),
(2672, 298, 'Nijampur', 'নিজামপুর', 'nijampurup.habiganj.gov.bd'),
(2673, 298, 'Laskerpur', 'লস্করপুর', 'laskerpurup.habiganj.gov.bd'),
(2674, 299, 'Dharmaghar', 'ধর্মঘর', 'dharmagharup.habiganj.gov.bd'),
(2675, 299, 'Choumohani', 'চৌমুহনী', 'choumohaniup.habiganj.gov.bd'),
(2676, 299, 'Bahara', 'বহরা', 'baharaup.habiganj.gov.bd'),
(2677, 299, 'Adaoir', 'আদাঐর', 'adaoirup.habiganj.gov.bd'),
(2678, 299, 'Andiura', 'আন্দিউড়া', 'andiuraup.habiganj.gov.bd'),
(2679, 299, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.habiganj.gov.bd'),
(2680, 299, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup.habiganj.gov.bd'),
(2681, 299, 'Bulla', 'বুল্লা', 'bullaup.habiganj.gov.bd'),
(2682, 299, 'Noapara', 'নোয়াপাড়া', 'noaparaup.habiganj.gov.bd'),
(2683, 299, 'Chhatiain', 'ছাতিয়াইন', 'chhatiainup.habiganj.gov.bd'),
(2684, 299, 'Bagashura', 'বাঘাসুরা', 'bagashuraup.habiganj.gov.bd'),
(2685, 300, 'Jahangirnagar', 'জাহাঙ্গীরনগর', 'jahangirnagarup.sunamganj.gov.bd'),
(2686, 300, 'Rangarchar', 'রংগারচর', 'rangarcharup.sunamganj.gov.bd'),
(2687, 300, 'Aptabnagar', 'আপ্তাবনগর', 'aptabnagarup.sunamganj.gov.bd'),
(2688, 300, 'Gourarang', 'গৌরারং', 'gourarang.sunamganj.gov.bd'),
(2689, 300, 'Mollapara', 'মোল্লাপাড়া', 'mollaparaup.sunamganj.gov.bd'),
(2690, 300, 'Laxmansree', 'লক্ষণশ্রী', 'laxmansreeup.sunamganj.gov.bd'),
(2691, 300, 'Kathair', 'কাঠইর', 'kathairup.sunamganj.gov.bd'),
(2692, 300, 'Surma', 'সুরমা', 'surmaup.sunamganj.gov.bd'),
(2693, 300, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sunamganj.gov.bd'),
(2694, 301, 'Shimulbak', 'শিমুলবাক', 'shimulbak.sunamganj.gov.bd'),
(2695, 301, 'Paschim Pagla', 'পশ্চিম পাগলা', 'paschimpagla.sunamganj.gov.bd'),
(2696, 301, 'Joykalash', 'জয়কলস', 'joykalashup.sunamganj.gov.bd'),
(2697, 301, 'Purba Pagla', 'পূর্ব পাগলা', 'purbapaglaup.sunamganj.gov.bd'),
(2698, 301, 'Patharia', 'পাথারিয়া', 'pathariaup.sunamganj.gov.bd'),
(2699, 301, 'Purba Birgaon', 'পূর্ব বীরগাঁও', 'purbabirgaonup.sunamganj.gov.bd'),
(2700, 301, 'Dargapasha', 'দরগাপাশা', 'dargapashaup.sunamganj.gov.bd'),
(2701, 301, 'Paschim Birgaon', 'পশ্চিম বীরগাঁও', 'paschimbirgaonup.sunamganj.gov.bd'),
(2702, 302, 'Palash', 'পলাশ', 'palashup.sunamganj.gov.bd'),
(2703, 302, 'Solukabad', 'সলুকাবাদ', 'solukabadup.sunamganj.gov.bd'),
(2704, 302, 'Dhanpur', 'ধনপুর', 'dhanpurup.sunamganj.gov.bd'),
(2705, 302, 'Badaghat South', 'বাদাঘাট দক্ষিণ', 'badaghatsouthup.sunamganj.gov.bd'),
(2706, 302, 'Fatepur', 'ফতেপুর', 'fatepurup.sunamganj.gov.bd'),
(2707, 303, 'Islampur', 'ইসলামপুর', 'islampurup.sunamganj.gov.bd'),
(2708, 303, 'Noarai', 'নোয়ারাই', 'noaraiup.sunamganj.gov.bd'),
(2709, 303, 'Chhatak Sadar', 'ছাতক সদর', 'chhataksadarup.sunamganj.gov.bd'),
(2710, 303, 'Kalaruka', 'কালারুকা', 'kalarukaup.sunamganj.gov.bd'),
(2711, 303, 'Gobindganj-Syedergaon', 'গোবিন্দগঞ্জ-সৈদেরগাঁও', 'gobindganjsyedergaonup.sunamganj.gov.bd'),
(2712, 303, 'Chhaila Afjalabad', 'ছৈলা আফজলাবাদ', 'chhailaafjalabadup.sunamganj.gov.bd'),
(2713, 303, 'Khurma North', 'খুরমা উত্তর', 'khurmanorthup.sunamganj.gov.bd'),
(2714, 303, 'Khurma South', 'খুরমা দক্ষিণ', 'khurmasouthup.sunamganj.gov.bd'),
(2715, 303, 'Chormohalla', 'চরমহল্লা', 'chormohallaup.sunamganj.gov.bd'),
(2716, 303, 'Jauwabazar', 'জাউয়া বাজার', 'jauwabazarup.sunamganj.gov.bd'),
(2717, 303, 'Singchapair', 'সিংচাপইড়', 'singchapairup.sunamganj.gov.bd'),
(2718, 303, 'Dolarbazar', 'দোলারবাজার', 'dolarbazarup.sunamganj.gov.bd'),
(2719, 303, 'Bhatgaon', 'ভাতগাঁও', 'bhatgaonup.sunamganj.gov.bd'),
(2720, 304, 'Kolkolia', 'কলকলিয়া', 'kolkoliaup.sunamganj.gov.bd'),
(2721, 304, 'Patli', 'পাটলী', 'patliup.sunamganj.gov.bd'),
(2722, 304, 'Mirpur', 'মীরপুর', 'mirpurup.sunamganj.gov.bd'),
(2723, 304, 'Chilaura Holdipur', 'চিলাউড়া হলদিপুর', 'chilauraholdipurup.sunamganj.gov.bd'),
(2724, 304, 'Raniganj', 'রানীগঞ্জ', 'raniganjup.sunamganj.gov.bd'),
(2725, 304, 'Syedpur Shaharpara', 'সৈয়দপুর শাহাড়পাড়া', 'syedpurshaharparaup.sunamganj.gov.bd'),
(2726, 304, 'Asharkandi', 'আশারকান্দি', 'asharkandiup.sunamganj.gov.bd'),
(2727, 304, 'Pailgaon', 'পাইলগাঁও', 'pailgaonup.sunamganj.gov.bd'),
(2728, 305, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.sunamganj.gov.bd'),
(2729, 305, 'Norsingpur', 'নরসিংহপুর', 'norsingpurup.sunamganj.gov.bd'),
(2730, 305, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazarup.sunamganj.gov.bd'),
(2731, 305, 'Mannargaon', 'মান্নারগাঁও', 'mannargaonup.sunamganj.gov.bd'),
(2732, 305, 'Pandargaon', 'পান্ডারগাঁও', 'pandargaonup.sunamganj.gov.bd'),
(2733, 305, 'Dohalia', 'দোহালিয়া', 'dohaliaup.sunamganj.gov.bd'),
(2734, 305, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.sunamganj.gov.bd'),
(2735, 305, 'Boglabazar', 'বোগলাবাজার', 'boglabazarup.sunamganj.gov.bd'),
(2736, 305, 'Surma', 'সুরমা', 'surma2up.sunamganj.gov.bd'),
(2737, 306, 'Sreepur North', 'শ্রীপুর উত্তর', 'sreepurnorthup.sunamganj.gov.bd'),
(2738, 306, 'Sreepur South', 'শ্রীপুর দক্ষিণ', 'sreepursouthup.sunamganj.gov.bd'),
(2739, 306, 'Bordal South', 'বড়দল দক্ষিণ', 'bordalsouthup.sunamganj.gov.bd'),
(2740, 306, 'Bordal North', 'বড়দল উত্তর', 'bordalnorthup.sunamganj.gov.bd'),
(2741, 306, 'Badaghat', 'বাদাঘাট', 'badaghatup.sunamganj.gov.bd'),
(2742, 306, 'Tahirpur Sadar', 'তাহিরপুর সদর', 'tahirpursadarup.sunamganj.gov.bd'),
(2743, 306, 'Balijuri', 'বালিজুরী', 'balijuriup.sunamganj.gov.bd'),
(2744, 307, 'Bongshikunda North', 'বংশীকুন্ডা উত্তর', 'bongshikundanorthup.sunamganj.gov.bd'),
(2745, 307, 'Bongshikunda South', 'বংশীকুন্ডা দক্ষিণ', 'bongshikundasouthup.sunamganj.gov.bd'),
(2746, 307, 'Chamordani', 'চামরদানী', 'chamordaniup.sunamganj.gov.bd'),
(2747, 307, 'Madhyanagar', 'মধ্যনগর', 'madhyanagarup.sunamganj.gov.bd'),
(2748, 307, 'Paikurati', 'পাইকুরাটী', 'paikuratiup.sunamganj.gov.bd'),
(2749, 307, 'Selbarash', 'সেলবরষ', 'selbarashup.sunamganj.gov.bd'),
(2750, 307, 'Dharmapasha Sadar', 'ধর্মপাশা সদর', 'dharmapashasadarup.sunamganj.gov.bd'),
(2751, 307, 'Joyasree', 'জয়শ্রী', 'joyasreeup.sunamganj.gov.bd'),
(2752, 307, 'Sukhair Rajapur North', 'সুখাইড় রাজাপুর উত্তর', 'sukhairrajapurnorthup.sunamganj.gov.bd'),
(2753, 307, 'Sukhair Rajapur South', 'সুখাইড় রাজাপুর দক্ষিণ', 'sukhairrajapursouthup.sunamganj.gov.bd'),
(2754, 308, 'Beheli', 'বেহেলী', 'beheliup.sunamganj.gov.bd'),
(2755, 308, 'Sachnabazar', 'সাচনাবাজার', 'sachnabazarup.sunamganj.gov.bd'),
(2756, 308, 'Bhimkhali', 'ভীমখালী', 'bhimkhaliup.sunamganj.gov.bd'),
(2757, 308, 'Fenerbak', 'ফেনারবাক', 'fenerbakup.sunamganj.gov.bd'),
(2758, 308, 'Jamalganj Sadar', 'জামালগঞ্জ সদর', 'jamalganjsadarup.sunamganj.gov.bd'),
(2759, 309, 'Atgaon', 'আটগাঁও', 'atgaonup.sunamganj.gov.bd'),
(2760, 309, 'Habibpur', 'হবিবপুর', 'habibpurup.sunamganj.gov.bd'),
(2761, 309, 'Bahara', 'বাহারা', 'baharaup.sunamganj.gov.bd'),
(2762, 309, 'Shalla Sadar', 'শাল্লা সদর', 'shallasadarup.sunamganj.gov.bd'),
(2763, 310, 'Rafinagar', 'রফিনগর', 'rafinagarup.sunamganj.gov.bd'),
(2764, 310, 'Bhatipara', 'ভাটিপাড়া', 'bhatiparaup.sunamganj.gov.bd'),
(2765, 310, 'Rajanagar', 'রাজানগর', 'rajanagarup.sunamganj.gov.bd'),
(2766, 310, 'Charnarchar', 'চরনারচর', 'charnarcharup.sunamganj.gov.bd'),
(2767, 310, 'Derai Sarmangal', 'দিরাই সরমঙ্গল', 'deraisarmangalup.sunamganj.gov.bd'),
(2768, 310, 'Karimpur', 'করিমপুর', 'karimpurup.sunamganj.gov.bd'),
(2769, 310, 'Jagddol', 'জগদল', 'jagddolup.sunamganj.gov.bd'),
(2770, 310, 'Taral', 'তাড়ল', 'taralup.sunamganj.gov.bd'),
(2771, 310, 'Kulanj', 'কুলঞ্জ', 'kulanjup.sunamganj.gov.bd'),
(2772, 311, 'Amlaba', 'আমলাব', 'amlabaup.narsingdi.gov.bd'),
(2773, 311, 'Bajnaba', 'বাজনাব', 'bajnabaup.narsingdi.gov.bd'),
(2774, 311, 'Belabo', 'বেলাব', 'belaboup.narsingdi.gov.bd'),
(2775, 311, 'Binnabayd', 'বিন্নাবাইদ', 'binnabaydup.narsingdi.gov.bd'),
(2776, 311, 'Charuzilab', 'চরউজিলাব', 'charuzilabup.narsingdi.gov.bd'),
(2777, 311, 'Naraynpur', 'নারায়নপুর', 'naraynpurup.narsingdi.gov.bd'),
(2778, 311, 'Sallabad', 'সল্লাবাদ', 'sallabadup.narsingdi.gov.bd'),
(2779, 311, 'Patuli', 'পাটুলী', 'patuliup.narsingdi.gov.bd'),
(2780, 311, 'Diara', 'দেয়ারা মডেল', 'diaraup.narsingdi.gov.bd'),
(2781, 312, 'Barachapa', 'বড়চাপা', 'barachapaup.narsingdi.gov.bd'),
(2782, 312, 'Chalakchar', 'চালাকচর', 'chalakcharup.narsingdi.gov.bd'),
(2783, 312, 'Charmandalia', 'চরমান্দালিয়া', 'charmandaliaup.narsingdi.gov.bd'),
(2784, 312, 'Ekduaria', 'একদুয়ারিয়া', 'ekduariaup.narsingdi.gov.bd'),
(2785, 312, 'Gotashia', 'গোতাশিয়া', 'gotashiaup.narsingdi.gov.bd'),
(2786, 312, 'Kanchikata', 'কাচিকাটা', 'kanchikataup.narsingdi.gov.bd'),
(2787, 312, 'Khidirpur', 'খিদিরপুর', 'khidirpurup.narsingdi.gov.bd'),
(2788, 312, 'Shukundi', 'শুকুন্দি', 'shukundiup.narsingdi.gov.bd'),
(2789, 312, 'Dawlatpur', 'দৌলতপুর', 'dawlatpurup.narsingdi.gov.bd'),
(2790, 312, 'Krisnopur', 'কৃষ্ণপুর', 'krisnopurup.narsingdi.gov.bd'),
(2791, 312, 'Labutala', 'লেবুতলা', 'labutalaup.narsingdi.gov.bd'),
(2792, 312, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.narsingdi.gov.bd'),
(2793, 313, 'Alokbali', 'আলোকবালী', 'alokbaliup.narsingdi.gov.bd'),
(2794, 313, 'Chardighaldi', 'চরদিঘলদী', 'chardighaldiup.narsingdi.gov.bd'),
(2795, 313, 'Chinishpur', 'চিনিশপুর', 'chinishpurup.narsingdi.gov.bd'),
(2796, 313, 'Hajipur', 'হাজীপুর', 'hajipurup.narsingdi.gov.bd'),
(2797, 313, 'Karimpur', 'করিমপুর', 'karimpurup.narsingdi.gov.bd'),
(2798, 313, 'Khathalia', 'কাঠালিয়া', 'khathaliaup.narsingdi.gov.bd'),
(2799, 313, 'Nuralapur', 'নূরালাপুর', 'nuralapurup.narsingdi.gov.bd'),
(2800, 313, 'Mahishasura', 'মহিষাশুড়া', 'mahishasuraup.narsingdi.gov.bd'),
(2801, 313, 'Meherpara', 'মেহেড়পাড়া', 'meherparaup.narsingdi.gov.bd'),
(2802, 313, 'Nazarpur', 'নজরপুর', 'nazarpurup.narsingdi.gov.bd'),
(2803, 313, 'Paikarchar', 'পাইকারচর', 'paikarcharup.narsingdi.gov.bd'),
(2804, 313, 'Panchdona', 'পাঁচদোনা', 'panchdonaup.narsingdi.gov.bd'),
(2805, 313, 'Silmandi', 'শিলমান্দী', 'silmandiup.narsingdi.gov.bd'),
(2806, 313, 'Amdia', 'আমদিয়া ২', 'amdiaup.narsingdi.gov.bd'),
(2807, 314, 'Danga', 'ডাংঙ্গা', 'dangaup.narsingdi.gov.bd'),
(2808, 314, 'Charsindur', 'চরসিন্দুর', 'charsindurup.narsingdi.gov.bd'),
(2809, 314, 'Jinardi', 'জিনারদী', 'jinardiup.narsingdi.gov.bd'),
(2810, 314, 'Gazaria', 'গজারিয়া', 'gazariaup.narsingdi.gov.bd'),
(2811, 315, 'Chanpur', 'চানপুর', 'chanpurup.narsingdi.gov.bd'),
(2812, 315, 'Alipura', 'অলিপুরা', 'alipuraup.narsingdi.gov.bd'),
(2813, 315, 'Amirganj', 'আমিরগঞ্জ', 'amirganjup.narsingdi.gov.bd'),
(2814, 315, 'Adiabad', 'আদিয়াবাদ', 'adiabadup.narsingdi.gov.bd'),
(2815, 315, 'Banshgari', 'বাঁশগাড়ী', 'banshgariup.narsingdi.gov.bd'),
(2816, 315, 'Chanderkandi', 'চান্দেরকান্দি', 'chanderkandiup.narsingdi.gov.bd'),
(2817, 315, 'Chararalia', 'চরআড়ালিয়া', 'chararaliaup.narsingdi.gov.bd'),
(2818, 315, 'Charmadhua', 'চরমধুয়া', 'charmadhuaup.narsingdi.gov.bd'),
(2819, 315, 'Charsubuddi', 'চরসুবুদ্দি', 'charsubuddiup.narsingdi.gov.bd'),
(2820, 315, 'Daukarchar', 'ডৌকারচর', 'daukarcharup.narsingdi.gov.bd'),
(2821, 315, 'Hairmara', 'হাইরমারা', 'hairmaraup.narsingdi.gov.bd'),
(2822, 315, 'Maheshpur', 'মহেষপুর', 'maheshpurup.narsingdi.gov.bd'),
(2823, 315, 'Mirzanagar', 'মির্জানগর', 'mirzanagarup.narsingdi.gov.bd'),
(2824, 315, 'Mirzarchar', 'মির্জারচর', 'mirzarcharup.narsingdi.gov.bd'),
(2825, 315, 'Nilakhya', 'নিলক্ষ্যা', 'nilakhyaup.narsingdi.gov.bd'),
(2826, 315, 'Palashtali', 'পলাশতলী', 'palashtaliup.narsingdi.gov.bd'),
(2827, 315, 'Paratali', 'পাড়াতলী', 'parataliup.narsingdi.gov.bd'),
(2828, 315, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.narsingdi.gov.bd'),
(2829, 315, 'Roypura', 'রায়পুরা', 'roypuraup.narsingdi.gov.bd'),
(2830, 315, 'Musapur', 'মুছাপুর', 'musapurup.narsingdi.gov.bd'),
(2831, 315, 'Uttar Bakharnagar', 'উত্তর বাখরনগর', 'uttarbakharnagarup.narsingdi.gov.bd'),
(2832, 315, 'Marjal', 'মরজাল', 'marjal2up.narsingdi.gov.bd'),
(2833, 316, 'Dulalpur', 'দুলালপুর', 'dulalpurup.narsingdi.gov.bd'),
(2834, 316, 'Joynagar', 'জয়নগর', 'joynagarup.narsingdi.gov.bd'),
(2835, 316, 'Sadharchar', 'সাধারচর', 'sadharcharup.narsingdi.gov.bd'),
(2836, 316, 'Masimpur', 'মাছিমপুর', 'masimpurup.narsingdi.gov.bd'),
(2837, 316, 'Chakradha', 'চক্রধা', 'chakradhaup.narsingdi.gov.bd'),
(2838, 316, 'Joshar', 'যোশর', 'josharup.narsingdi.gov.bd'),
(2839, 316, 'Baghabo', 'বাঘাব', 'baghaboup.narsingdi.gov.bd'),
(2840, 316, 'Ayubpur', 'আয়ুবপুর', 'ayubpurup.narsingdi.gov.bd'),
(2841, 316, 'Putia', 'পুটিয়া', 'putiaup.narsingdi.gov.bd'),
(2842, 317, 'Bahadursadi', 'বাহাদুরশাদী', 'bahadursadi.gazipur.gov.bd'),
(2843, 317, 'Baktarpur', 'বক্তারপুর', 'baktarpur.gazipur.gov.bd'),
(2844, 317, 'Jamalpurnew', 'জামালপুর', 'jamalpurnew.gazipur.gov.bd'),
(2845, 317, 'Jangalia', 'জাঙ্গালিয়া', 'jangalia.gazipur.gov.bd'),
(2846, 317, 'Moktarpur', 'মোক্তারপুর', 'moktarpur.gazipur.gov.bd'),
(2847, 317, 'Nagari', 'নাগরী', 'nagari.gazipur.gov.bd'),
(2848, 317, 'Tumulia', 'তুমুলিয়া', 'tumulia.gazipur.gov.bd'),
(2849, 318, 'Atabaha', 'আটাবহ', 'atabahaup.gazipur.gov.bd'),
(2850, 318, 'Boali', 'বোয়ালী', 'boaliup.gazipur.gov.bd'),
(2851, 318, 'Chapair', 'চাপাইর', 'chapairup.gazipur.gov.bd'),
(2852, 318, 'Dhaliora', 'ঢালজোড়া', 'dhalioraup.gazipur.gov.bd'),
(2853, 318, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.gazipur.gov.bd'),
(2854, 318, 'Madhyapara', 'মধ্যপাড়া', 'madhyapara.gazipur.gov.bd'),
(2855, 318, 'Mouchak', 'মৌচাক', 'mouchakup.gazipur.gov.bd'),
(2856, 318, 'Sutrapur', 'সূত্রাপুর', 'sutrapurup.gazipur.gov.bd'),
(2857, 318, 'Srifaltali', 'শ্রীফলতলী', 'srifaltaliup.gazipur.gov.bd'),
(2858, 319, 'Barishaba', 'বারিষাব', 'barishabaup.gazipur.gov.bd'),
(2859, 319, 'Ghagotia', 'ঘাগটিয়া', 'ghagotiaup.gazipur.gov.bd'),
(2860, 319, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gazipur.gov.bd'),
(2861, 319, 'Chandpur', 'চাঁদপুর', 'chandpur.gazipur.gov.bd'),
(2862, 319, 'Targoan', 'তরগাঁও', 'targoan.gazipur.gov.bd'),
(2863, 319, 'Karihata', 'কড়িহাতা', 'karihata.gazipur.gov.bd'),
(2864, 319, 'Tokh', 'টোক', 'tokh.gazipur.gov.bd'),
(2865, 319, 'Sinhasree', 'সিংহশ্রী', 'sinhasree.gazipur.gov.bd'),
(2866, 319, 'Durgapur', 'দূর্গাপুর', 'durgapurup.gazipur.gov.bd'),
(2867, 319, 'Sonmania', 'সনমানিয়া', 'sonmaniaup.gazipur.gov.bd'),
(2868, 319, 'Rayed', 'রায়েদ', 'rayedup.gazipur.gov.bd'),
(2869, 320, 'Baria', 'বাড়ীয়া', 'bariaup.gazipur.gov.bd'),
(2870, 320, 'Basan', 'বাসন', 'basanup.gazipur.gov.bd'),
(2871, 320, 'Gachha', 'গাছা', 'gachhaup.gazipur.gov.bd'),
(2872, 320, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.gazipur.gov.bd'),
(2873, 320, 'Kayaltia', 'কাউলতিয়া', 'kayaltiaup.gazipur.gov.bd'),
(2874, 320, 'Konabari', 'কোনাবাড়ী', 'konabariup.gazipur.gov.bd'),
(2875, 320, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.gazipur.gov.bd'),
(2876, 320, 'Pubail', 'পূবাইল', 'pubailup.gazipur.gov.bd'),
(2877, 321, 'Barmi', 'বরমী', 'barmiup.gazipur.gov.bd'),
(2878, 321, 'Gazipur', 'গাজীপুর', 'gazipurup.gazipur.gov.bd'),
(2879, 321, 'Gosinga', 'গোসিংগা', 'gosingaup.gazipur.gov.bd'),
(2880, 321, 'Maona', 'মাওনা', 'maonaup.gazipur.gov.bd'),
(2881, 321, 'Kaoraid', 'কাওরাইদ', 'kaoraidup.gazipur.gov.bd'),
(2882, 321, 'Prahladpur', 'প্রহলাদপুর', 'prahladpurup.gazipur.gov.bd'),
(2883, 321, 'Rajabari', 'রাজাবাড়ী', 'rajabariup.gazipur.gov.bd'),
(2884, 321, 'Telihati', 'তেলিহাটী', 'telihatiup.gazipur.gov.bd'),
(2885, 322, 'Binodpur', 'বিনোদপুর', 'binodpurup.shariatpur.gov.bd'),
(2886, 322, 'Tulasar', 'তুলাসার', 'tulasarup.shariatpur.gov.bd'),
(2887, 322, 'Palong', 'পালং', 'palongup.shariatpur.gov.bd'),
(2888, 322, 'Domshar', 'ডোমসার', 'domsharup.shariatpur.gov.bd'),
(2889, 322, 'Rudrakar', 'রুদ্রকর', 'rudrakarup.shariatpur.gov.bd'),
(2890, 322, 'Angaria', 'আংগারিয়া', 'angariaup.shariatpur.gov.bd'),
(2891, 322, 'Chitolia', 'চিতলয়া', 'chitoliaup.shariatpur.gov.bd'),
(2892, 322, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.shariatpur.gov.bd'),
(2893, 322, 'Chikondi', 'চিকন্দি', 'chikondiup.shariatpur.gov.bd'),
(2894, 322, 'Chandrapur', 'চন্দ্রপুর', 'chandrapurup.shariatpur.gov.bd'),
(2895, 322, 'Shulpara', 'শৌলপাড়া', 'shulparaup.shariatpur.gov.bd'),
(2896, 323, 'Kedarpur', 'কেদারপুর', 'kedarpurup.shariatpur.gov.bd'),
(2897, 323, 'Dingamanik', 'ডিংগামানিক', 'dingamanikup.shariatpur.gov.bd'),
(2898, 323, 'Garishar', 'ঘড়িষার', 'garisharup.shariatpur.gov.bd'),
(2899, 323, 'Nowpara', 'নওপাড়া', 'nowparaup.shariatpur.gov.bd'),
(2900, 323, 'Moktererchar', 'মোত্তারেরচর', 'mokterercharup.shariatpur.gov.bd'),
(2901, 323, 'Charatra', 'চরআত্রা', 'charatraup.shariatpur.gov.bd'),
(2902, 323, 'Rajnagar', 'রাজনগর', 'rajnagarup.shariatpur.gov.bd'),
(2903, 323, 'Japsa', 'জপসা', 'japsaup.shariatpur.gov.bd'),
(2904, 323, 'Vojeshwar', 'ভোজেশ্বর', 'vojeshwarup.shariatpur.gov.bd'),
(2905, 323, 'Fategongpur', 'ফতেজংপুর', 'fategongpurup.shariatpur.gov.bd'),
(2906, 323, 'Bijari', 'বিঝারি', 'bijariup.shariatpur.gov.bd'),
(2907, 323, 'Vumkhara', 'ভূমখাড়া', 'vumkharaup.shariatpur.gov.bd'),
(2908, 323, 'Nashason', 'নশাসন', 'nashasonup.shariatpur.gov.bd'),
(2909, 324, 'Zajira Sadar', 'জাজিরা সদর', 'zajirasadarup.shariatpur.gov.bd'),
(2910, 324, 'Mulna', 'মূলনা', 'mulnaup.shariatpur.gov.bd'),
(2911, 324, 'Barokandi', 'বড়কান্দি', 'barokandiup.shariatpur.gov.bd'),
(2912, 324, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.shariatpur.gov.bd'),
(2913, 324, 'Kundarchar', 'কুন্ডেরচর', 'kundarcharup.shariatpur.gov.bd'),
(2914, 324, 'Palerchar', 'পালেরচর', 'palercharup.shariatpur.gov.bd'),
(2915, 324, 'Purba Nawdoba', 'পুর্ব নাওডোবা', 'purbanawdobaup.shariatpur.gov.bd'),
(2916, 324, 'Nawdoba', 'নাওডোবা', 'nawdobaup.shariatpur.gov.bd'),
(2917, 324, 'Shenerchar', 'সেনেরচর', 'shenercharup.shariatpur.gov.bd'),
(2918, 324, 'Bknagar', 'বি. কে. নগর', 'bknagarup.shariatpur.gov.bd'),
(2919, 324, 'Barogopalpur', 'বড়গোপালপুর', 'barogopalpurup.shariatpur.gov.bd'),
(2920, 324, 'Jaynagor', 'জয়নগর', 'jaynagorup.shariatpur.gov.bd'),
(2921, 325, 'Nager Para', 'নাগের পাড়া', 'nagerparaup.shariatpur.gov.bd'),
(2922, 325, 'Alaolpur', 'আলাওলপুর', 'alaolpurup.shariatpur.gov.bd'),
(2923, 325, 'Kodalpur', 'কোদালপুর', 'kodalpurup.shariatpur.gov.bd'),
(2924, 325, 'Goshairhat', 'গোসাইরহাট', 'goshairhatup.shariatpur.gov.bd'),
(2925, 325, 'Edilpur', 'ইদিলপুর', 'edilpurup.shariatpur.gov.bd'),
(2926, 325, 'Nalmuri', 'নলমুড়ি', 'nalmuriup.shariatpur.gov.bd'),
(2927, 325, 'Samontasar', 'সামন্তসার', 'samontasarup.shariatpur.gov.bd'),
(2928, 325, 'Kuchipatti', 'কুচাইপট্টি', 'kuchipattiup.shariatpur.gov.bd'),
(2929, 326, 'Ramvadrapur', 'রামভদ্রপুর', 'ramvadrapurup.shariatpur.gov.bd'),
(2930, 326, 'Mahisar', 'মহিষার', 'mahisarup.shariatpur.gov.bd'),
(2931, 326, 'Saygaon', 'ছয়গাঁও', 'saygaonup.shariatpur.gov.bd'),
(2932, 326, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.shariatpur.gov.bd'),
(2933, 326, 'D.M Khali', 'ডি.এম খালি', 'dmkhaliup.shariatpur.gov.bd'),
(2934, 326, 'Charkumaria', 'চরকুমারিয়া', 'charkumariaup.shariatpur.gov.bd'),
(2935, 326, 'Sakhipur', 'সখিপুর', 'sakhipurup.shariatpur.gov.bd'),
(2936, 326, 'Kachikata', 'কাচিকাঁটা', 'kachikataup.shariatpur.gov.bd'),
(2937, 326, 'North Tarabunia', 'উত্তর তারাবুনিয়া', 'northtarabuniaup.shariatpur.gov.bd'),
(2938, 326, 'Charvaga', 'চরভাগা', 'charvagaup.shariatpur.gov.bd'),
(2939, 326, 'Arsinagar', 'আরশিনগর', 'arsinagarup.shariatpur.gov.bd'),
(2940, 326, 'South Tarabunia', 'দক্ষিন তারাবুনিয়া', 'southtarabuniaup.shariatpur.gov.bd'),
(2941, 326, 'Charsensas', 'চরসেনসাস', 'charsensasup.shariatpur.gov.bd'),
(2942, 327, 'Shidulkura', 'শিধলকুড়া', 'shidulkuraup.shariatpur.gov.bd'),
(2943, 327, 'Kaneshar', 'কনেস্বর', 'kanesharup.shariatpur.gov.bd'),
(2944, 327, 'Purba Damudya', 'পুর্ব ডামুড্যা', 'purbadamudyaup.shariatpur.gov.bd'),
(2945, 327, 'Islampur', 'ইসলামপুর', 'islampurup.shariatpur.gov.bd'),
(2946, 327, 'Dankati', 'ধানকাটি', 'dankatiup.shariatpur.gov.bd'),
(2947, 327, 'Sidya', 'সিড্যা', 'sidyaup.shariatpur.gov.bd'),
(2948, 327, 'Darulaman', 'দারুল আমান', 'darulamanup.shariatpur.gov.bd'),
(2949, 328, 'Satgram', 'সাতগ্রাম', 'satgramup.narayanganj.gov.bd'),
(2950, 328, 'Duptara', 'দুপ্তারা', 'duptaraup.narayanganj.gov.bd'),
(2951, 328, 'Brahammandi', 'ব্রা‏হ্মন্দী', 'brahammandiup.narayanganj.gov.bd'),
(2952, 328, 'Fatepur', 'ফতেপুর', 'fatepurup.narayanganj.gov.bd'),
(2953, 328, 'Bishnandi', 'বিশনন্দী', 'bishnandiup.narayanganj.gov.bd'),
(2954, 328, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.narayanganj.gov.bd'),
(2955, 328, 'Highjadi', 'হাইজাদী', 'highjadiup.narayanganj.gov.bd'),
(2956, 328, 'Uchitpura', 'উচিৎপুরা', 'uchitpuraup.narayanganj.gov.bd'),
(2957, 328, 'Kalapaharia', 'কালাপাহাড়িয়া', 'kalapahariaup.narayanganj.gov.bd'),
(2958, 328, 'Kagkanda', 'খাগকান্দা', 'kagkandaUP.narayanganj.gov.bd'),
(2959, 329, 'Musapur', 'মুছাপুর', 'musapurup.narayanganj.gov.bd'),
(2960, 329, 'Modonpur', 'মদনপুর', 'modonpurup.narayanganj.gov.bd'),
(2961, 329, 'Bandar', 'বন্দর', 'bandarup.narayanganj.gov.bd'),
(2962, 329, 'Dhamgar', 'ধামগর', 'dhamgar.narayanganj.gov.bd'),
(2963, 329, 'Kolagathia', ' কলাগাছিয়া', 'kolagathiaup.narayanganj.gov.bd'),
(2964, 330, 'Alirtek', 'আলিরটেক', 'alirtekup.narayanganj.gov.bd'),
(2965, 330, 'Kashipur', 'কাশীপুর', 'kashipurup.narayanganj.gov.bd'),
(2966, 330, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.narayanganj.gov.bd'),
(2967, 330, 'Gognagar', 'গোগনগর', 'gognagarup.narayanganj.gov.bd'),
(2968, 330, 'Baktaboli', 'বক্তাবলী', 'baktaboliup.narayanganj.gov.bd'),
(2969, 330, 'Enayetnagor', 'এনায়েত নগর', 'enayetnagorup.narayanganj.gov.bd'),
(2970, 331, 'Murapara', 'মুড়াপাড়া', 'muraparaup.narayanganj.gov.bd'),
(2971, 331, 'Bhulta', 'ভূলতা', 'bhultaup.narayanganj.gov.bd'),
(2972, 331, 'Golakandail', 'গোলাকান্দাইল', 'golakandailup.narayanganj.gov.bd'),
(2973, 331, 'Daudpur', 'দাউদপুর', 'daudpurup.narayanganj.gov.bd'),
(2974, 331, 'Rupganj', 'রূপগঞ্জ', 'rupganjup.narayanganj.gov.bd'),
(2975, 331, 'Kayetpara', 'কায়েতপাড়া', 'kayetparaup.narayanganj.gov.bd'),
(2976, 331, 'Bholobo', 'ভোলাব', 'bholoboup.narayanganj.gov.bd'),
(2977, 332, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.narayanganj.gov.bd'),
(2978, 332, 'Shambhupura', 'শম্ভুপুরা', 'shambhupura.narayanganj.gov.bd'),
(2979, 332, 'Mograpara', 'মোগরাপাড়া', 'mograpara.narayanganj.gov.bd'),
(2980, 332, 'Baidyerbazar', 'বৈদ্যেরবাজার', 'baidyerbazar.narayanganj.gov.bd'),
(2981, 332, 'Baradi', 'বারদী', 'baradiup.narayanganj.gov.bd'),
(2982, 332, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.narayanganj.gov.bd'),
(2983, 332, 'Jampur', 'জামপুর', 'jampurup.narayanganj.gov.bd'),
(2984, 332, 'Sadipur', 'সাদীপুর', 'sadipurup.narayanganj.gov.bd'),
(2985, 332, 'Sonmandi', 'সনমান্দি', 'sonmandiup.narayanganj.gov.bd'),
(2986, 332, 'Kanchpur', 'কাচপুর', 'kanchpurup.narayanganj.gov.bd'),
(2987, 333, 'Basail', 'বাসাইল', 'basailup.tangail.gov.bd'),
(2988, 333, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.tangail.gov.bd'),
(2989, 333, 'Habla', 'হাবলা', 'hablaup.tangail.gov.bd'),
(2990, 333, 'Kashil', 'কাশিল', 'kashilup.tangail.gov.bd'),
(2991, 333, 'Fulki', 'ফুলকি', 'fulkiup.tangail.gov.bd'),
(2992, 333, 'Kauljani', 'কাউলজানী', 'kauljaniup.tangail.gov.bd'),
(2993, 334, 'Arjuna', 'অর্জুনা', 'arjunaup.tangail.gov.bd'),
(2994, 334, 'Gabshara', 'গাবসারা', 'gabsharaup.tangail.gov.bd'),
(2995, 334, 'Falda', 'ফলদা', 'faldaup.tangail.gov.bd'),
(2996, 334, 'Gobindashi', 'গোবিন্দাসী', 'gobindashiup.tangail.gov.bd'),
(2997, 334, 'Aloa', 'আলোয়া', 'aloaup.tangail.gov.bd'),
(2998, 334, 'Nikrail', 'নিকরাইল', 'nikrailup.tangail.gov.bd'),
(2999, 335, 'Deuli', 'দেউলী', 'deuliup.tangail.gov.bd'),
(3000, 335, 'Lauhati', 'লাউহাটি', 'lauhatiup.tangail.gov.bd'),
(3001, 335, 'Patharail', 'পাথরাইল', 'patharailup.tangail.gov.bd'),
(3002, 335, 'Delduar', 'দেলদুয়ার', 'delduarup.tangail.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(3003, 335, 'Fazilhati', 'ফাজিলহাটি', 'fazilhatiup.tangail.gov.bd'),
(3004, 335, 'Elasin', 'এলাসিন', 'elasinup.tangail.gov.bd'),
(3005, 335, 'Atia', 'আটিয়া', 'atiaup.tangail.gov.bd'),
(3006, 335, 'Dubail', 'ডুবাইল', 'dubailup.tangail.gov.bd'),
(3007, 336, 'Deulabari', 'দেউলাবাড়ী', 'deulabariup.tangail.gov.bd'),
(3008, 336, 'Ghatail', 'ঘাটাইল', 'ghatailup.tangail.gov.bd'),
(3009, 336, 'Jamuria', 'জামুরিয়া', 'jamuriaup.tangail.gov.bd'),
(3010, 336, 'Lokerpara', 'লোকেরপাড়া', 'lokerparaup.tangail.gov.bd'),
(3011, 336, 'Anehola', 'আনেহলা', 'aneholaup.tangail.gov.bd'),
(3012, 336, 'Dighalkandia', 'দিঘলকান্দি', 'dighalkandiaup.tangail.gov.bd'),
(3013, 336, 'Digar', 'দিগড়', 'digarup.tangail.gov.bd'),
(3014, 336, 'Deopara', 'দেওপাড়া', 'deoparaup.tangail.gov.bd'),
(3015, 336, 'Sandhanpur', 'সন্ধানপুর', 'sandhanpurup.tangail.gov.bd'),
(3016, 336, 'Rasulpur', 'রসুলপুর', 'rasulpurup.tangail.gov.bd'),
(3017, 336, 'Dhalapara', 'ধলাপাড়া', 'dhalaparaup.tangail.gov.bd'),
(3018, 337, 'Hadera', 'হাদিরা', 'haderaup.tangail.gov.bd'),
(3019, 337, 'Jhawail', 'ঝাওয়াইল', 'jhawailup.tangail.gov.bd'),
(3020, 337, 'Nagdashimla', 'নগদাশিমলা', 'nagdashimlaup.tangail.gov.bd'),
(3021, 337, 'Dhopakandi', 'ধোপাকান্দি', 'dhopakandiup.tangail.gov.bd'),
(3022, 337, 'Alamnagor', 'আলমনগর', 'alamnagorup.tangail.gov.bd'),
(3023, 337, 'Hemnagor', 'হেমনগর', 'hemnagorup.tangail.gov.bd'),
(3024, 337, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.tangail.gov.bd'),
(3025, 338, 'Alokdia', 'আলোকদিয়া', 'alokdiaup.tangail.gov.bd'),
(3026, 338, 'Aushnara', 'আউশনারা', 'aushnaraup.tangail.gov.bd'),
(3027, 338, 'Aronkhola', 'অরণখোলা', 'aronkholaup.tangail.gov.bd'),
(3028, 338, 'Sholakuri', 'শোলাকুড়ি', 'sholakuriup.tangail.gov.bd'),
(3029, 338, 'Golabari', 'গোলাবাড়ী', 'golabariup.tangail.gov.bd'),
(3030, 338, 'Mirjabari', 'মির্জাবাড়ী', 'mirjabariup.tangail.gov.bd'),
(3031, 339, 'Mahera', 'মহেড়া', 'maheraup.tangail.gov.bd'),
(3032, 339, 'Jamurki', 'জামুর্কী', 'jamurkiup.tangail.gov.bd'),
(3033, 339, 'Fatepur', 'ফতেপুর', 'fatepurup.tangail.gov.bd'),
(3034, 339, 'Banail', 'বানাইল', 'banailup.tangail.gov.bd'),
(3035, 339, 'Anaitara', 'আনাইতারা', 'anaitaraup.tangail.gov.bd'),
(3036, 339, 'Warshi', 'ওয়ার্শী', 'warshiup.tangail.gov.bd'),
(3037, 339, 'Bhatram', 'ভাতগ্রাম', 'bhatramup.tangail.gov.bd'),
(3038, 339, 'Bahuria', 'বহুরিয়া', 'bahuriaup.tangail.gov.bd'),
(3039, 339, 'Gorai', 'গোড়াই', 'goraiup.tangail.gov.bd'),
(3040, 339, 'Ajgana', 'আজগানা', 'ajganaup.tangail.gov.bd'),
(3041, 339, 'Tarafpur', 'তরফপুর', 'tarafpurup.tangail.gov.bd'),
(3042, 339, 'Bastail', 'বাঁশতৈল', 'bastailup.tangail.gov.bd'),
(3043, 339, 'Baora', 'ভাওড়া', 'baoraup.tangail.gov.bd'),
(3044, 339, 'Latifpur', 'লতিফপুর', 'latifpurup.tangail.gov.bd'),
(3045, 340, 'Bharra', 'ভারড়া', 'bharraup.tangail.gov.bd'),
(3046, 340, 'Sahabathpur', 'সহবতপুর', 'sahabathpurup.tangail.gov.bd'),
(3047, 340, 'Goyhata', 'গয়হাটা', 'goyhataup.tangail.gov.bd'),
(3048, 340, 'Solimabad', 'সলিমাবাদ', 'solimabadup.tangail.gov.bd'),
(3049, 340, 'Nagorpur', 'নাগরপুর', 'nagorpurup.tangail.gov.bd'),
(3050, 340, 'Mamudnagor', 'মামুদনগর', 'mamudnagorup.tangail.gov.bd'),
(3051, 340, 'Mokna', 'মোকনা', 'moknaup.tangail.gov.bd'),
(3052, 340, 'Pakutia', 'পাকুটিয়া', 'pakutiaup.tangail.gov.bd'),
(3053, 340, 'Bekrah Atgram', 'বেকরা আটগ্রাম', 'bekrahatgramup.tangail.gov.bd'),
(3054, 340, 'Dhuburia', 'ধুবড়িয়া', 'dhuburiaup.tangail.gov.bd'),
(3055, 340, 'Bhadra', 'ভাদ্রা', 'bhadraup.tangail.gov.bd'),
(3056, 340, 'Doptior', 'দপ্তিয়র', 'doptiorup.tangail.gov.bd'),
(3057, 341, 'Kakrajan', 'কাকড়াজান', 'kakrajanup.tangail.gov.bd'),
(3058, 341, 'Gajaria', 'গজারিয়া', 'gajariaup.tangail.gov.bd'),
(3059, 341, 'Jaduppur', 'যাদবপুর', 'jaduppurup.tangail.gov.bd'),
(3060, 341, 'Hatibandha', 'হাতীবান্ধা', 'hatibandhaup.tangail.gov.bd'),
(3061, 341, 'Kalia', 'কালিয়া', 'kaliaup.tangail.gov.bd'),
(3062, 341, 'Dariapur', 'দরিয়াপুর', 'dariapurup.tangail.gov.bd'),
(3063, 341, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.tangail.gov.bd'),
(3064, 341, 'Baharatoil', 'বহেড়াতৈল', 'baharatoilup.tangail.gov.bd'),
(3065, 342, 'Mogra', 'মগড়া', 'mograup.tangail.gov.bd'),
(3066, 342, 'Gala', 'গালা', 'galaup.tangail.gov.bd'),
(3067, 342, 'Gharinda', 'ঘারিন্দা', 'gharindaup.tangail.gov.bd'),
(3068, 342, 'Karatia', 'করটিয়া', 'karatiaup.tangail.gov.bd'),
(3069, 342, 'Silimpur', 'ছিলিমপুর', 'silimpurup.tangail.gov.bd'),
(3070, 342, 'Porabari', 'পোড়াবাড়ী', 'porabariup.tangail.gov.bd'),
(3071, 342, 'Dyenna', 'দাইন্যা', 'dyennaup.tangail.gov.bd'),
(3072, 342, 'Baghil', 'বাঘিল', 'baghilup.tangail.gov.bd'),
(3073, 342, 'Kakua', 'কাকুয়া', 'kakuaup.tangail.gov.bd'),
(3074, 342, 'Hugra', 'হুগড়া', 'hugraup.tangail.gov.bd'),
(3075, 342, 'Katuli', 'কাতুলী', 'katuliup.tangail.gov.bd'),
(3076, 342, 'Mahamudnagar', 'মাহমুদনগর', 'mahamudnagarup.tangail.gov.bd'),
(3077, 343, 'Durgapur', 'দুর্গাপুর', 'durgapurup.tangail.gov.bd'),
(3078, 343, 'Birbashinda', 'বীরবাসিন্দা', 'birbashindaup.tangail.gov.bd'),
(3079, 343, 'Narandia', 'নারান্দিয়া', 'narandiaup.tangail.gov.bd'),
(3080, 343, 'Shahadebpur', 'সহদেবপুর', 'shahadebpurup.tangail.gov.bd'),
(3081, 343, 'Kokdahara', 'কোকডহরা', 'kokdaharaup.tangail.gov.bd'),
(3082, 343, 'Balla', 'বল্লা', 'ballaup.tangail.gov.bd'),
(3083, 343, 'Salla', 'সল্লা', 'sallaup.tangail.gov.bd'),
(3084, 343, 'Nagbari', 'নাগবাড়ী', 'nagbariup.tangail.gov.bd'),
(3085, 343, 'Bangra', 'বাংড়া', 'bangraup.tangail.gov.bd'),
(3086, 343, 'Paikora', 'পাইকড়া', 'paikoraup.tangail.gov.bd'),
(3087, 343, 'Dashokia', 'দশকিয়া', 'dashokiaup.tangail.gov.bd'),
(3088, 343, 'Parkhi', 'পারখী', 'parkhiup.tangail.gov.bd'),
(3089, 343, 'Gohaliabari', 'গোহালিয়াবাড়ী', 'gohaliabariup.tangail.gov.bd'),
(3090, 344, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.tangail.gov.bd'),
(3091, 344, 'Paiska', 'পাইস্কা', 'paiskaup.tangail.gov.bd'),
(3092, 344, 'Mushuddi', 'মুশুদ্দি', 'mushuddiup.tangail.gov.bd'),
(3093, 344, 'Bolibodrow', 'বলিভদ্র', 'bolibodrowup.tangail.gov.bd'),
(3094, 344, 'Birtara', 'বীরতারা', 'birtaraup.tangail.gov.bd'),
(3095, 344, 'Baniajan', 'বানিয়াজান', 'baniajanup.tangail.gov.bd'),
(3096, 344, 'Jadunathpur', 'যদুনাথপুর', 'jadunathpurup.tangail.gov.bd'),
(3097, 345, 'Chawganga', 'চৌগাংগা', 'chawgangaup.kishoreganj.gov.bd      '),
(3098, 345, 'Joysiddi', 'জয়সিদ্ধি', 'joysiddiup.kishoreganj.gov.bd'),
(3099, 345, 'Alonjori', 'এলংজুরী', 'alonjoriup.kishoreganj.gov.bd'),
(3100, 345, 'Badla', 'বাদলা', 'badlaup.kishoreganj.gov.bd'),
(3101, 345, 'Boribari', 'বড়িবাড়ি', 'boribariup.kishoreganj.gov.bd'),
(3102, 345, 'Itna', 'ইটনা', 'itnaup.kishoreganj.gov.bd'),
(3103, 345, 'Mriga', 'মৃগা', 'mrigaup.kishoreganj.gov.bd'),
(3104, 345, 'Dhonpur', 'ধনপুর', 'dhonpurup.kishoreganj.gov.bd'),
(3105, 345, 'Raytoti', 'রায়টুটি', 'raytotiup.kishoreganj.gov.bd'),
(3106, 346, 'Banagram', 'বনগ্রাম', 'banagramup.kishoreganj.gov.bd'),
(3107, 346, 'Shahasram Dhuldia', 'সহশ্রাম ধুলদিয়া', 'shahasramdhuldiaup.kishoreganj.gov.bd'),
(3108, 346, 'Kargaon', 'কারগাঁও', 'kargaonup.kishoreganj.gov.bd'),
(3109, 346, 'Chandpur', 'চান্দপুর', 'chandpurup.kishoreganj.gov.bd'),
(3110, 346, 'Mumurdia', 'মুমুরদিয়া', 'mumurdiaup.kishoreganj.gov.bd'),
(3111, 346, 'Acmita', 'আচমিতা', 'acmitaup.kishoreganj.gov.bd'),
(3112, 346, 'Mosua', 'মসূয়া', 'mosuaup.kishoreganj.gov.bd'),
(3113, 346, 'Lohajuree', 'লোহাজুরী', 'lohajureeup.kishoreganj.gov.bd'),
(3114, 346, 'Jalalpur', 'জালালপুর', 'jalalpurup.kishoreganj.gov.bd'),
(3115, 347, 'Sadekpur', 'সাদেকপুর', 'sadekpurup.kishoreganj.gov.bd'),
(3116, 347, 'Aganagar', 'আগানগর', 'aganagarup.kishoreganj.gov.bd'),
(3117, 347, 'Shimulkandi', 'শিমুলকান্দি', 'shimulkandiup.kishoreganj.gov.bd'),
(3118, 347, 'Gajaria', 'গজারিয়া', 'gajariaup.kishoreganj.gov.bd'),
(3119, 347, 'Kalika Prashad', 'কালিকা প্রসাদ', 'kalikaprashadup.kishoreganj.gov.bd'),
(3120, 347, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.kishoreganj.gov.bd'),
(3121, 347, 'Shibpur', 'শিবপুর', 'shibpurup.kishoreganj.gov.bd'),
(3122, 348, 'Taljanga', 'তালজাঙ্গা', 'taljangaup.kishoreganj.gov.bd'),
(3123, 348, 'Rauti', 'রাউতি', 'rautiup.kishoreganj.gov.bd'),
(3124, 348, 'Dhola', 'ধলা', 'dholaup.kishoreganj.gov.bd'),
(3125, 348, 'Jawar', 'জাওয়ার', 'jawarup.kishoreganj.gov.bd'),
(3126, 348, 'Damiha', 'দামিহা', 'damihaup.kishoreganj.gov.bd'),
(3127, 348, 'Digdair', 'দিগদাইর', 'digdairup.kishoreganj.gov.bd'),
(3128, 348, 'Tarail-Sachail', 'তাড়াইল-সাচাইল', 'tarailsachailup.kishoreganj.gov.bd'),
(3129, 349, 'Jinari', 'জিনারী', 'jinariup.kishoreganj.gov.bd'),
(3130, 349, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.kishoreganj.gov.bd'),
(3131, 349, 'Sidhla', 'সিদলা', 'sidhlaup.kishoreganj.gov.bd'),
(3132, 349, 'Araibaria', 'আড়াইবাড়িয়া', 'araibariaup.kishoreganj.gov.bd'),
(3133, 349, 'Sahedal', 'সাহেদল', 'sahedalup.kishoreganj.gov.bd'),
(3134, 349, 'Pumdi', 'পুমদি', 'pumdiup.kishoreganj.gov.bd'),
(3135, 350, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.kishoreganj.gov.bd'),
(3136, 350, 'Hosendi', 'হোসেনদি', 'hosendiup.kishoreganj.gov.bd'),
(3137, 350, 'Narandi', 'নারান্দি', 'narandiup.kishoreganj.gov.bd'),
(3138, 350, 'Shukhia', 'সুখিয়া', 'shukhiaup.kishoreganj.gov.bd'),
(3139, 350, 'Patuavabga', 'পটুয়াভাঙ্গা', 'patuavabgaup.kishoreganj.gov.bd'),
(3140, 350, 'Chandipasha', 'চান্দিপাশা', 'chandipashaup.kishoreganj.gov.bd'),
(3141, 350, 'Charfaradi', 'চারফারাদি', 'charfaradiup.kishoreganj.gov.bd'),
(3142, 350, 'Burudia', 'বুড়ুদিয়া', 'burudiaup.kishoreganj.gov.bd'),
(3143, 350, 'Egarasindur', 'ইজারাসিন্দুর', 'egarasindurup.kishoreganj.gov.bd'),
(3144, 350, 'Pakundia', 'পাকন্দিয়া', 'pakundiaup.kishoreganj.gov.bd'),
(3145, 351, 'Ramdi', 'রামদী', 'ramdiup.kishoreganj.gov.bd'),
(3146, 351, 'Osmanpur', 'উছমানপুর', 'osmanpurup.kishoreganj.gov.bd'),
(3147, 351, 'Chhaysuti', 'ছয়সূতী', 'chhaysutiup.kishoreganj.gov.bd'),
(3148, 351, 'Salua', 'সালুয়া', 'saluaup.kishoreganj.gov.bd'),
(3149, 351, 'Gobaria Abdullahpur', 'গোবরিয়া আব্দুল্লাহপুর', 'gobariaabdullahpurup.kishoreganj.gov.bd'),
(3150, 351, 'Faridpur', 'ফরিদপুর', 'faridpurup.kishoreganj.gov.bd'),
(3151, 352, 'Rashidabad', 'রশিদাবাদ', 'rashidabadup.kishoreganj.gov.bd'),
(3152, 352, 'Latibabad', 'লতিবাবাদ', 'latibabadup.kishoreganj.gov.bd'),
(3153, 352, 'Maizkhapan', 'মাইজখাপন', 'maizkhapanup.kishoreganj.gov.bd'),
(3154, 352, 'Mohinanda', 'মহিনন্দ', 'mohinandaup.kishoreganj.gov.bd'),
(3155, 352, 'Joshodal', 'যশোদল', 'joshodalup.kishoreganj.gov.bd'),
(3156, 352, 'Bowlai', 'বৌলাই', 'bowlaiup.kishoreganj.gov.bd'),
(3157, 352, 'Binnati', 'বিন্নাটি', 'binnatiup.kishoreganj.gov.bd'),
(3158, 352, 'Maria', 'মারিয়া', 'mariaup.kishoreganj.gov.bd'),
(3159, 352, 'Chowddoshata', 'চৌদ্দশত', 'chowddoshataup.kishoreganj.gov.bd'),
(3160, 352, 'Karshakarial', 'কর্শাকড়িয়াইল', 'karshakarialup.kishoreganj.gov.bd'),
(3161, 352, 'Danapatuli', 'দানাপাটুলী', 'danapatuliup.kishoreganj.gov.bd'),
(3162, 353, 'Kadirjangal', 'কাদিরজঙ্গল', 'kadirjangalup.kishoreganj.gov.bd'),
(3163, 353, 'Gujadia', 'গুজাদিয়া', 'gujadiaup.kishoreganj.gov.bd'),
(3164, 353, 'Kiraton', 'কিরাটন', 'kiratonup.kishoreganj.gov.bd'),
(3165, 353, 'Barogharia', 'বারঘড়িয়া', 'baroghariaup.kishoreganj.gov.bd'),
(3166, 353, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.kishoreganj.gov.bd'),
(3167, 353, 'Dehunda', 'দেহুন্দা', 'dehundaup.kishoreganj.gov.bd'),
(3168, 353, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.kishoreganj.gov.bd'),
(3169, 353, 'Gunodhar', 'গুনধর', 'gunodharup.kishoreganj.gov.bd'),
(3170, 353, 'Joyka', 'জয়কা', 'joykaup.kishoreganj.gov.bd'),
(3171, 353, 'Zafrabad', 'জাফরাবাদ', 'zafrabadup.kishoreganj.gov.bd'),
(3172, 353, 'Noabad', 'নোয়াবাদ', 'noabadup.kishoreganj.gov.bd'),
(3173, 354, 'Kailag', 'কৈলাগ', 'kailagup.kishoreganj.gov.bd'),
(3174, 354, 'Pirijpur', 'পিরিজপুর', 'pirijpurup.kishoreganj.gov.bd'),
(3175, 354, 'Gazirchar', 'গাজীরচর', 'gazircharup.kishoreganj.gov.bd'),
(3176, 354, 'Hilochia', 'হিলচিয়া', 'hilochiaup.kishoreganj.gov.bd'),
(3177, 354, 'Maijchar9', 'মাইজচর', 'maijchar9up.kishoreganj.gov.bd'),
(3178, 354, 'Homypur', 'হুমাইপর', 'homypurup.kishoreganj.gov.bd'),
(3179, 354, 'Halimpur', 'হালিমপুর', 'halimpurup.kishoreganj.gov.bd'),
(3180, 354, 'Sararchar', 'সরারচর', 'sararcharup.kishoreganj.gov.bd'),
(3181, 354, 'Dilalpur', 'দিলালপুর', 'dilalpurup.kishoreganj.gov.bd'),
(3182, 354, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.kishoreganj.gov.bd'),
(3183, 354, 'Boliardi', 'বলিয়ার্দী', 'boliardiup.kishoreganj.gov.bd'),
(3184, 355, 'Dewghar', 'দেওঘর', 'dewgharup.kishoreganj.gov.bd'),
(3185, 355, 'Kastul', 'কাস্তুল', 'kastulup.kishoreganj.gov.bd'),
(3186, 355, 'Austagram Sadar', 'অষ্টগ্রাম সদর', 'austagramsadarup.kishoreganj.gov.bd'),
(3187, 355, 'Bangalpara', 'বাঙ্গালপাড়া', 'bangalparaup.kishoreganj.gov.bd'),
(3188, 355, 'Kalma', 'কলমা', 'kalmaup.kishoreganj.gov.bd'),
(3189, 355, 'Adampur', 'আদমপুর', 'adampurup.kishoreganj.gov.bd'),
(3190, 355, 'Khyerpur-Abdullahpur', 'খয়েরপুর-আব্দুল্লাপুর', 'khyerpurabdullahpurup.kishoreganj.gov.bd'),
(3191, 355, 'Purba Austagram', 'পূর্ব অষ্টগ্রাম', 'purbaaustagramup.kishoreganj.gov.bd'),
(3192, 356, 'Gopdighi', 'গোপদিঘী', 'gopdighiup.kishoreganj.gov.bd'),
(3193, 356, 'Mithamoin', 'মিঠামইন', 'mithamoinup.kishoreganj.gov.bd'),
(3194, 356, 'Dhaki', 'ঢাকী', 'dhakiup.kishoreganj.gov.bd'),
(3195, 356, 'Ghagra', 'ঘাগড়া', 'ghagraup.kishoreganj.gov.bd'),
(3196, 356, 'Keoarjore', 'কেওয়ারজোর', 'keoarjoreup.kishoreganj.gov.bd'),
(3197, 356, 'Katkhal', 'কাটখাল', 'katkhalup.kishoreganj.gov.bd'),
(3198, 356, 'Bairati', 'বৈরাটি', 'bairatiup.kishoreganj.gov.bd'),
(3199, 357, 'Chatirchar', 'ছাতিরচর', 'chatircharup.kishoreganj.gov.bd'),
(3200, 357, 'Guroi', 'গুরই', 'guroiup.kishoreganj.gov.bd'),
(3201, 357, 'Jaraitala', 'জারইতলা', 'jaraitalaup.kishoreganj.gov.bd'),
(3202, 357, 'Nikli Sadar', 'নিকলী সদর', 'niklisadarup.kishoreganj.gov.bd'),
(3203, 357, 'Karpasa', 'কারপাশা', 'karpasaup.kishoreganj.gov.bd'),
(3204, 357, 'Dampara', 'দামপাড়া', 'damparaup.kishoreganj.gov.bd'),
(3205, 357, 'Singpur', 'সিংপুর', 'singpurup.kishoreganj.gov.bd'),
(3206, 358, 'Balla', 'বাল্লা', 'ballaup.manikganj.gov.bd'),
(3207, 358, 'Gala', 'গালা', 'galaup.manikganj.gov.bd'),
(3208, 358, 'Chala', 'চালা', 'chalaup.manikganj.gov.bd'),
(3209, 358, 'Blara', 'বলড়া', 'blaraup.manikganj.gov.bd'),
(3210, 358, 'Harukandi', 'হারুকান্দি', 'harukandiup.manikganj.gov.bd'),
(3211, 358, 'Baira', 'বয়রা', 'bairaup.manikganj.gov.bd'),
(3212, 358, 'Ramkrishnapur', 'রামকৃঞ্চপুর', 'ramkrishnapurup.manikganj.gov.bd'),
(3213, 358, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.manikganj.gov.bd'),
(3214, 358, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.manikganj.gov.bd'),
(3215, 358, 'Lacharagonj', 'লেছড়াগঞ্জ', 'lacharagonjup.manikganj.gov.bd'),
(3216, 358, 'Sutalorie', 'সুতালড়ী', 'sutalorieup.manikganj.gov.bd'),
(3217, 358, 'Dhulsura', 'ধূলশুড়া', 'dhulsuraup.manikganj.gov.bd'),
(3218, 358, 'Azimnagar', 'আজিমনগর', 'azimnagarup.manikganj.gov.bd'),
(3219, 359, 'Baried', 'বরাইদ', 'bariedup.manikganj.gov.bd'),
(3220, 359, 'Dighulia', 'দিঘুলিয়া', 'dighuliaup.manikganj.gov.bd'),
(3221, 359, 'Baliyati', 'বালিয়াটি', 'baliyatiup.manikganj.gov.bd'),
(3222, 359, 'Dargram', 'দড়গ্রাম', 'dargramup.manikganj.gov.bd'),
(3223, 359, 'Tilli', 'তিল্লী', 'tilliup.manikganj.gov.bd'),
(3224, 359, 'Hargaj', 'হরগজ', 'hargajup.manikganj.gov.bd'),
(3225, 359, 'Saturia', 'সাটুরিয়া', 'saturiaup.manikganj.gov.bd'),
(3226, 359, 'Dhankora', 'ধানকোড়া', 'dhankoraup.manikganj.gov.bd'),
(3227, 359, 'Fukurhati', 'ফুকুরহাটি', 'fukurhatiup.manikganj.gov.bd'),
(3228, 360, 'Betila-Mitara', 'বেতিলা-মিতরা', 'betilamitaraup.manikganj.gov.bd'),
(3229, 360, 'Jagir', 'জাগীর', 'jagirup.manikganj.gov.bd'),
(3230, 360, 'Atigram', 'আটিগ্রাম', 'atigramup.manikganj.gov.bd'),
(3231, 360, 'Dighi', 'দিঘী', 'dighiup.manikganj.gov.bd'),
(3232, 360, 'Putile', 'পুটাইল', 'putileup.manikganj.gov.bd'),
(3233, 360, 'Hatipara', 'হাটিপাড়া', 'hatiparaup.manikganj.gov.bd'),
(3234, 360, 'Vararia', 'ভাড়ারিয়া', 'varariaup.manikganj.gov.bd'),
(3235, 360, 'Nbogram', 'নবগ্রাম', 'nbogramup.manikganj.gov.bd'),
(3236, 360, 'Garpara', 'গড়পাড়া', 'garparaup.manikganj.gov.bd'),
(3237, 360, 'Krishnapur', 'কৃঞ্চপুর', 'krishnapurup.manikganj.gov.bd'),
(3238, 361, 'Paila', 'পয়লা', 'pailaup.manikganj.gov.bd'),
(3239, 361, 'Shingzuri', 'সিংজুড়ী', 'shingzuriup.manikganj.gov.bd'),
(3240, 361, 'Baliyakhora', 'বালিয়াখোড়া', 'baliyakhoraup.manikganj.gov.bd'),
(3241, 361, 'Gior', 'ঘিওর', 'giorup.manikganj.gov.bd'),
(3242, 361, 'Bartia', 'বড়টিয়া', 'bartiaup.manikganj.gov.bd'),
(3243, 361, 'Baniazuri', 'বানিয়াজুড়ী', 'baniazuriup.manikganj.gov.bd'),
(3244, 361, 'Nalee', 'নালী', 'naleeup.manikganj.gov.bd'),
(3245, 362, 'Teota', 'তেওতা', 'teotaup.manikganj.gov.bd'),
(3246, 362, 'Utholi', 'উথলী', 'utholiup.manikganj.gov.bd'),
(3247, 362, 'Shibaloy', 'শিবালয়', 'shibaloyup.manikganj.gov.bd'),
(3248, 362, 'Ulayel', 'উলাইল', 'ulayelup.manikganj.gov.bd'),
(3249, 362, 'Aruoa', 'আরুয়া', 'aruoaup.manikganj.gov.bd'),
(3250, 362, 'Mohadebpur', 'মহাদেবপুর', 'mohadebpurup.manikganj.gov.bd'),
(3251, 362, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.manikganj.gov.bd'),
(3252, 363, 'Charkataree', 'চরকাটারী', 'charkatareeup.manikganj.gov.bd'),
(3253, 363, 'Bachamara', 'বাচামারা', 'bachamaraup.manikganj.gov.bd'),
(3254, 363, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.manikganj.gov.bd'),
(3255, 363, 'Zionpur', 'জিয়নপুর', 'zionpurup.manikganj.gov.bd'),
(3256, 363, 'Khalshi', 'খলশী', 'khalshiup.manikganj.gov.bd'),
(3257, 363, 'Chakmirpur', 'চকমিরপুর', 'chakmirpurup.manikganj.gov.bd'),
(3258, 363, 'Klia', 'কলিয়া', 'kliaup.manikganj.gov.bd'),
(3259, 363, 'Dhamswar', 'ধামশ্বর', 'dhamswarup.manikganj.gov.bd'),
(3260, 364, 'Buyra', 'বায়রা', 'buyraup.manikganj.gov.bd'),
(3261, 364, 'Talebpur', 'তালেবপুর', 'talebpurup.manikganj.gov.bd'),
(3262, 364, 'Singiar', 'সিংগাইর', 'singiarup.manikganj.gov.bd'),
(3263, 364, 'Baldhara', 'বলধারা', 'baldharaup.manikganj.gov.bd'),
(3264, 364, 'Zamsha', 'জামশা', 'zamshaup.manikganj.gov.bd'),
(3265, 364, 'Charigram', 'চারিগ্রাম', 'charigramup.manikganj.gov.bd'),
(3266, 364, 'Shayesta', 'শায়েস্তা', 'shayestaup.manikganj.gov.bd'),
(3267, 364, 'Joymonto', 'জয়মন্টপ', 'joymontopup.manikganj.gov.bd'),
(3268, 364, 'Dhalla', 'ধল্লা', 'dhallaup.manikganj.gov.bd'),
(3269, 364, 'Jamirta', 'জার্মিতা', 'jamirtaup.manikganj.gov.bd'),
(3270, 364, 'Chandhar', 'চান্দহর', 'chandharup.manikganj.gov.bd'),
(3271, 365, 'Savar', 'সাভার', 'savarup.dhaka.gov.bd'),
(3272, 365, 'Birulia', 'বিরুলিয়া', 'birulia.dhaka.gov.bd'),
(3273, 365, 'Dhamsona', 'ধামসোনা', 'dhamsonaup.dhaka.gov.bd'),
(3274, 365, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.dhaka.gov.bd'),
(3275, 365, 'Ashulia', 'আশুলিয়া', 'ashuliaup.dhaka.gov.bd'),
(3276, 365, 'Yearpur', 'ইয়ারপুর', 'yearpurup.dhaka.gov.bd'),
(3277, 365, 'Vakurta', 'ভাকুর্তা', 'vakurtaup.dhaka.gov.bd'),
(3278, 365, 'Pathalia', 'পাথালিয়া', 'pathaliaup.dhaka.gov.bd'),
(3279, 365, 'Bongaon', 'বনগাঁও', 'bongaonup.dhaka.gov.bd'),
(3280, 365, 'Kaundia', 'কাউন্দিয়া', 'kaundiaup.dhaka.gov.bd'),
(3281, 365, 'Tetuljhora', 'তেঁতুলঝোড়া', 'tetuljhora.dhaka.gov.bd'),
(3282, 365, 'Aminbazar', 'আমিনবাজার', 'aminbazar.dhaka.gov.bd'),
(3283, 366, 'Chauhat', 'চৌহাট', 'chauhatup.dhaka.gov.bd'),
(3284, 366, 'Amta', 'আমতা', 'amtaup.dhaka.gov.bd'),
(3285, 366, 'Balia', 'বালিয়া', 'baliaup.dhaka.gov.bd'),
(3286, 366, 'Jadabpur', 'যাদবপুর', 'jadabpurup.dhaka.gov.bd'),
(3287, 366, 'Baisakanda', 'বাইশাকান্দা', 'baisakandaup.dhaka.gov.bd'),
(3288, 366, 'Kushura', 'কুশুরা', 'kushuraup.dhaka.gov.bd'),
(3289, 366, 'Gangutia', 'গাংগুটিয়া', 'gangutiaup.dhaka.gov.bd'),
(3290, 366, 'Sanora', 'সানোড়া', 'sanoraup.dhaka.gov.bd'),
(3291, 366, 'Sutipara', 'সূতিপাড়া', 'sutiparaup.dhaka.gov.bd'),
(3292, 366, 'Sombhag', 'সোমভাগ', 'sombhagup.dhaka.gov.bd'),
(3293, 366, 'Vararia', 'ভাড়ারিয়া', 'varariaup.dhaka.gov.bd'),
(3294, 366, 'Dhamrai', 'ধামরাই', 'dhamraiup.dhaka.gov.bd'),
(3295, 366, 'Kulla', 'কুল্লা', 'kullaup.dhaka.gov.bd'),
(3296, 366, 'Rowail', 'রোয়াইল', 'rowailup.dhaka.gov.bd'),
(3297, 366, 'Suapur', 'সুয়াপুর', 'suapurup.dhaka.gov.bd'),
(3298, 366, 'Nannar', 'নান্নার', 'nannarup.dhaka.gov.bd'),
(3299, 367, 'Hazratpur', 'হযরতপুর', 'hazratpurup.dhaka.gov.bd'),
(3300, 367, 'Kalatia', 'কলাতিয়া', 'kalatiaup.dhaka.gov.bd'),
(3301, 367, 'Taranagar', 'তারানগর', 'taranagarup.dhaka.gov.bd'),
(3302, 367, 'Sakta', 'শাক্তা', 'saktaup.dhaka.gov.bd'),
(3303, 367, 'Ruhitpur', 'রোহিতপুর', 'ruhitpurup.dhaka.gov.bd'),
(3304, 367, 'Basta', 'বাস্তা', 'bastaup.dhaka.gov.bd'),
(3305, 367, 'Kalindi', 'কালিন্দি', 'kalindiup.dhaka.gov.bd'),
(3306, 367, 'Zinzira', 'জিনজিরা', 'zinziraup.dhaka.gov.bd'),
(3307, 367, 'Suvadda', 'শুভাঢ্যা', 'suvaddaup.dhaka.gov.bd'),
(3308, 367, 'Taghoria', 'তেঘরিয়া', 'taghoriaup.dhaka.gov.bd'),
(3309, 367, 'Konda', 'কোন্ডা', 'kondaup.dhaka.gov.bd'),
(3310, 367, 'Aganagar', 'আগানগর', 'aganagarup.dhaka.gov.bd'),
(3311, 368, 'Shikaripara', 'শিকারীপাড়া', 'shikariparaup.dhaka.gov.bd'),
(3312, 368, 'Joykrishnapur', 'জয়কৃষ্ণপুর', 'joykrishnapurup.dhaka.gov.bd'),
(3313, 368, 'Baruakhali', 'বারুয়াখালী', 'baruakhaliup.dhaka.gov.bd'),
(3314, 368, 'Nayansree', 'নয়নশ্রী', 'nayansreeup.dhaka.gov.bd'),
(3315, 368, 'Sholla', 'শোল্লা', 'shollaup.dhaka.gov.bd'),
(3316, 368, 'Jantrail', 'যন্ত্রাইল', 'jantrailup.dhaka.gov.bd'),
(3317, 368, 'Bandura', 'বান্দুরা', 'banduraup.dhaka.gov.bd'),
(3318, 368, 'Kalakopa', 'কলাকোপা', 'kalakopaup.dhaka.gov.bd'),
(3319, 368, 'Bakshanagar', 'বক্সনগর', 'bakshanagarup.dhaka.gov.bd'),
(3320, 368, 'Barrah', 'বাহ্রা', 'barrahup.dhaka.gov.bd'),
(3321, 368, 'Kailail', 'কৈলাইল', 'kailailup.dhaka.gov.bd'),
(3322, 368, 'Agla', 'আগলা', 'aglaup.dhaka.gov.bd'),
(3323, 368, 'Galimpur', 'গালিমপুর', 'galimpurup.dhaka.gov.bd'),
(3324, 368, 'Churain', 'চুড়াইন', 'churainup.dhaka.gov.bd'),
(3325, 369, 'Nayabari', 'নয়াবাড়ী', 'nayabariup.dhaka.gov.bd'),
(3326, 369, 'Kusumhathi', 'কুসুমহাটি', 'kusumhathiup.dhaka.gov.bd'),
(3327, 369, 'Raipara', 'রাইপাড়া', 'raiparaup.dhaka.gov.bd'),
(3328, 369, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.dhaka.gov.bd'),
(3329, 369, 'Narisha', 'নারিশা', 'narishaup.dhaka.gov.bd'),
(3330, 369, 'Muksudpur', 'মুকসুদপুর', 'muksudpurup.dhaka.gov.bd'),
(3331, 369, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.dhaka.gov.bd'),
(3332, 369, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.dhaka.gov.bd'),
(3333, 370, 'Rampal', 'রামপাল', 'rampalup.munshiganj.gov.bd'),
(3334, 370, 'Panchashar', 'পঞ্চসার', 'panchasharup.munshiganj.gov.bd'),
(3335, 370, 'Bajrajogini', 'বজ্রযোগিনী', 'bajrajoginiup.munshiganj.gov.bd'),
(3336, 370, 'Mohakali', 'মহাকালী', 'mohakaliup.munshiganj.gov.bd'),
(3337, 370, 'Charkewar', 'চরকেওয়ার', 'charkewarup.munshiganj.gov.bd'),
(3338, 370, 'Mollakandi', 'মোল্লাকান্দি', 'mollakandiup.munshiganj.gov.bd'),
(3339, 370, 'Adhara', 'আধারা', 'adharaup.munshiganj.gov.bd'),
(3340, 370, 'Shiloy', 'শিলই', 'shiloyup.munshiganj.gov.bd'),
(3341, 370, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.munshiganj.gov.bd'),
(3342, 371, 'Baraikhali', 'বাড়েখাল', 'baraikhaliup.munshiganj.gov.bd'),
(3343, 371, 'Hashara', 'হাসাড়া', 'hasharaup.munshiganj.gov.bd'),
(3344, 371, 'Birtara', 'বাড়তারা', 'birtaraup.munshiganj.gov.bd'),
(3345, 371, 'Shologhor', 'ষোলঘর', 'shologhorup.munshiganj.gov.bd'),
(3346, 371, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.munshiganj.gov.bd'),
(3347, 371, 'Patabhog', 'পাঢাভোগ', 'patabhogup.munshiganj.gov.bd'),
(3348, 371, 'Shamshiddi', 'শ্যামসিদ্দি', 'shamshiddiup.munshiganj.gov.bd'),
(3349, 371, 'Kolapara', 'কুলাপাড়া', 'kolaparaup.munshiganj.gov.bd'),
(3350, 371, 'Vaggakol', 'ভাগ্যকুল', 'vaggakolup.munshiganj.gov.bd'),
(3351, 371, 'Bagra', 'বাঘড়া', 'bagraup.munshiganj.gov.bd'),
(3352, 371, 'Rarikhal', 'রাঢ়ীখাল', 'rarikhalup.munshiganj.gov.bd'),
(3353, 371, 'Kukutia', 'কুকুটিয়া', 'kukutiaup.munshiganj.gov.bd'),
(3354, 371, 'Atpara', 'আটপাড়া', 'atparaup.munshiganj.gov.bd'),
(3355, 371, 'Tantor', 'তন্তর', 'tantorup.munshiganj.gov.bd'),
(3356, 372, 'Chitracoat', 'চিত্রকোট', 'chitracoatup.munshiganj.gov.bd'),
(3357, 372, 'Sekhornagar', 'শেখরনগার', 'sekhornagarup.munshiganj.gov.bd'),
(3358, 372, 'Rajanagar', 'রাজানগর', 'rajanagarup.munshiganj.gov.bd'),
(3359, 372, 'Keyain', 'কেয়াইন', 'keyainup.munshiganj.gov.bd'),
(3360, 372, 'Basail', 'বাসাইল', 'basailup.munshiganj.gov.bd'),
(3361, 372, 'Baluchar', 'বালুচর', 'balucharup.munshiganj.gov.bd'),
(3362, 372, 'Latabdi', 'লতাব্দী', 'latabdiup.munshiganj.gov.bd'),
(3363, 372, 'Rasunia', 'রশুনিয়া', 'rasuniaup.munshiganj.gov.bd'),
(3364, 372, 'Ichhapura', 'ইছাপুরা', 'ichhapuraup.munshiganj.gov.bd'),
(3365, 372, 'Bairagadi', 'বয়রাগাদি', 'bairagadiup.munshiganj.gov.bd'),
(3366, 372, 'Malkhanagar', 'মালখানগর', 'malkhanagarup.munshiganj.gov.bd'),
(3367, 372, 'Madhypara', 'মধ্যপাড়া', 'madhyparaup.munshiganj.gov.bd'),
(3368, 372, 'Kola', 'কোলা', 'kolaup.munshiganj.gov.bd'),
(3369, 372, 'Joyinshar', 'জৈনসার', 'joyinsharup.munshiganj.gov.bd'),
(3370, 373, 'Medinimandal', 'মেদিনীমন্ডল', 'medinimandalup.munshiganj.gov.bd'),
(3371, 373, 'Kumarbhog', 'কুমারভোগ', 'kumarbhogup.munshiganj.gov.bd'),
(3372, 373, 'Haldia', 'হলদিয়া', 'haldiaup.munshiganj.gov.bd'),
(3373, 373, 'Kanaksar', 'কনকসার', 'kanaksarup.munshiganj.gov.bd'),
(3374, 373, 'Lohajang-Teotia', 'লৌহজং-তেওটিয়া', 'lohajangteotiaup.munshiganj.gov.bd'),
(3375, 373, 'Bejgaon', 'বেজগাঁও', 'bejgaonup.munshiganj.gov.bd'),
(3376, 373, 'Baultoli', 'বৌলতলী', 'baultoliup.munshiganj.gov.bd'),
(3377, 373, 'Khidirpara', 'খিদিরপাড়া', 'khidirparaup.munshiganj.gov.bd'),
(3378, 373, 'Gaodia', 'গাওদিয়া', 'gaodiaup.munshiganj.gov.bd'),
(3379, 373, 'Kalma', 'কলমা', 'kalmaup.munshiganj.gov.bd'),
(3380, 374, 'Gajaria', 'গজারিয়া', 'gajariaup.munshiganj.gov.bd'),
(3381, 374, 'Baushia', 'বাউশিয়া', 'baushiaup.munshiganj.gov.bd'),
(3382, 374, 'Vaberchar', 'ভবেরচর', 'vabercharup.munshiganj.gov.bd'),
(3383, 374, 'Baluakandi', 'বালুয়াকান্দী', 'baluakandiup.munshiganj.gov.bd'),
(3384, 374, 'Tengarchar', 'টেংগারচর', 'tengarcharup.munshiganj.gov.bd'),
(3385, 374, 'Hosendee', 'হোসেন্দী', 'hosendeeup.munshiganj.gov.bd'),
(3386, 374, 'Guagachia', 'গুয়াগাছিয়া', 'guagachiaup.munshiganj.gov.bd'),
(3387, 374, 'Imampur', 'ইমামপুর', 'imampurup.munshiganj.gov.bd'),
(3388, 375, 'Betka', 'বেতকা', 'betkaup.munshiganj.gov.bd'),
(3389, 375, 'Abdullapur', 'আব্দুল্লাপুর', 'abdullapurup.munshiganj.gov.bd'),
(3390, 375, 'Sonarong Tongibari', 'সোনারং টংগীবাড়ী', 'sonarongtongibariup.munshiganj.gov.bd'),
(3391, 375, 'Autshahi', 'আউটশাহী', 'autshahiup.munshiganj.gov.bd'),
(3392, 375, 'Arial Baligaon', 'আড়িয়ল বালিগাঁও', 'arialbaligaonup.munshiganj.gov.bd'),
(3393, 375, 'Dhipur', 'ধীপুর', 'dhipurup.munshiganj.gov.bd'),
(3394, 375, 'Kathadia Shimolia', 'কাঠাদিয়া শিমুলিয়া', 'kathadiashimoliaup.munshiganj.gov.bd'),
(3395, 375, 'Joslong', 'যশলং', 'joslongup.munshiganj.gov.bd'),
(3396, 375, 'Panchgaon', 'পাঁচগাও', 'panchgaonup.munshiganj.gov.bd'),
(3397, 375, 'Kamarkhara', 'কামারখাড়া', 'kamarkharaup.munshiganj.gov.bd'),
(3398, 375, 'Hasailbanari', 'হাসাইল বানারী', 'hasailbanariup.munshiganj.gov.bd'),
(3399, 375, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.munshiganj.gov.bd'),
(3400, 376, 'Mijanpur', 'মিজানপুর', 'mijanpurup.rajbari.gov.bd'),
(3401, 376, 'Borat', 'বরাট', 'boratup.rajbari.gov.bd'),
(3402, 376, 'Chandoni', 'চন্দনী', 'chandoniup.rajbari.gov.bd'),
(3403, 376, 'Khangonj', 'খানগঞ্জ', 'khangonjup.rajbari.gov.bd'),
(3404, 376, 'Banibaha', 'বানীবহ', 'banibahaup.rajbari.gov.bd'),
(3405, 376, 'Dadshee', 'দাদশী', 'dadsheeup.rajbari.gov.bd'),
(3406, 376, 'Mulghar', 'মুলঘর', 'mulgharup.rajbari.gov.bd'),
(3407, 376, 'Basantapur', 'বসন্তপুর', 'basantapurup.rajbari.gov.bd'),
(3408, 376, 'Khankhanapur', 'খানখানাপুর', 'khankhanapurup.rajbari.gov.bd'),
(3409, 376, 'Alipur', 'আলীপুর', 'alipurup.rajbari.gov.bd'),
(3410, 376, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.rajbari.gov.bd'),
(3411, 376, 'Shahidwahabpur', 'শহীদওহাবপুর', 'shahidwahabpurup.rajbari.gov.bd'),
(3412, 376, 'Panchuria', 'পাঁচুরিয়া', 'panchuriaup.rajbari.gov.bd'),
(3413, 376, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.rajbari.gov.bd'),
(3414, 377, 'Doulatdia', 'দৌলতদিয়া', 'doulatdiaup.rajbari.gov.bd'),
(3415, 377, 'Debugram', 'দেবগ্রাম', 'debugramup.rajbari.gov.bd'),
(3416, 377, 'Uzancar', 'উজানচর', 'uzancarup.rajbari.gov.bd'),
(3417, 377, 'Chotovakla', 'ছোটভাকলা', 'chotovaklaup.rajbari.gov.bd'),
(3418, 378, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.rajbari.gov.bd'),
(3419, 378, 'Habashpur', 'হাবাসপুর', 'habashpurup.rajbari.gov.bd'),
(3420, 378, 'Jashai', 'যশাই', 'jashaiup.rajbari.gov.bd'),
(3421, 378, 'Babupara', 'বাবুপাড়া', 'babuparaup.rajbari.gov.bd'),
(3422, 378, 'Mourat', 'মৌরাট', 'mouratup.rajbari.gov.bd'),
(3423, 378, 'Patta', 'পাট্টা', 'pattaup.rajbari.gov.bd'),
(3424, 378, 'Sarisha', 'সরিষা', 'sarishaup.rajbari.gov.bd'),
(3425, 378, 'Kalimahar', 'কলিমহর', 'kalimaharup.rajbari.gov.bd'),
(3426, 378, 'Kasbamajhail', 'কসবামাজাইল', 'kasbamajhailup.rajbari.gov.bd'),
(3427, 378, 'Machhpara', 'মাছপাড়া', 'machhparaup.rajbari.gov.bd'),
(3428, 379, 'Islampur', 'ইসলামপুর', 'islampurup.rajbari.gov.bd'),
(3429, 379, 'Baharpur', 'বহরপুর', 'baharpurup.rajbari.gov.bd'),
(3430, 379, 'Nawabpur', 'নবাবপুর', 'nawabpurup.rajbari.gov.bd'),
(3431, 379, 'Narua', 'নারুয়া', 'naruaup.rajbari.gov.bd'),
(3432, 379, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandiup.rajbari.gov.bd'),
(3433, 379, 'Janjal', 'জঙ্গল', 'janjalup.rajbari.gov.bd'),
(3434, 379, 'Jamalpur', 'জামালপুর', 'jamalpurup.rajbari.gov.bd'),
(3435, 380, 'Kalukhali', 'কালুখালী', 'kalukhaliup.rajbari.gov.bd'),
(3436, 380, 'Ratandia', 'রতনদিয়া', 'ratandiaup.rajbari.gov.bd'),
(3437, 380, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.rajbari.gov.bd'),
(3438, 380, 'Boalia', 'বোয়ালিয়া', 'boaliaup.rajbari.gov.bd'),
(3439, 380, 'Majbari', 'মাজবাড়ী', 'majbariup.rajbari.gov.bd'),
(3440, 380, 'Madapur', 'মদাপুর', 'madapurup.rajbari.gov.bd'),
(3441, 380, 'Shawrail', 'সাওরাইল', 'shawrailup.rajbari.gov.bd'),
(3442, 380, 'Mrigi', 'মৃগী', 'mrigiup.rajbari.gov.bd'),
(3443, 381, 'Sirkhara', 'শিড়খাড়া', 'sirkharaup.madaripur.gov.bd'),
(3444, 381, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.madaripur.gov.bd'),
(3445, 381, 'Kunia', 'কুনিয়া', 'kuniaup.madaripur.gov.bd'),
(3446, 381, 'Peyarpur', 'পেয়ারপুর', 'peyarpurup.madaripur.gov.bd'),
(3447, 381, 'Kandua', 'কেন্দুয়া', 'kanduaup.madaripur.gov.bd'),
(3448, 381, 'Mastofapur', 'মস্তফাপুর', 'mastofapurup.madaripur.gov.bd'),
(3449, 381, 'Dudkhali', 'দুধখালী', 'dudkhaliup.madaripur.gov.bd'),
(3450, 381, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.madaripur.gov.bd'),
(3451, 381, 'Chilarchar', 'ছিলারচর', 'chilarcharup.madaripur.gov.bd'),
(3452, 381, 'Panchkhola', 'পাঁচখোলা', 'panchkholaup.madaripur.gov.bd'),
(3453, 381, 'Ghatmajhi', 'ঘটমাঝি', 'ghatmajhiup.madaripur.gov.bd'),
(3454, 381, 'Jhaoudi', 'ঝাউদী', 'jhaoudiup.madaripur.gov.bd'),
(3455, 381, 'Khoajpur', 'খোয়াজপুর', 'khoajpurup.madaripur.gov.bd'),
(3456, 381, 'Rasti', 'রাস্তি', 'rastiup.madaripur.gov.bd'),
(3457, 381, 'Dhurail', 'ধুরাইল', 'dhurailup.madaripur.gov.bd'),
(3458, 382, 'Shibchar', 'শিবচর', 'shibcharup.madaripur.gov.bd'),
(3459, 382, 'Ditiyakhando', 'দ্বিতীয়খন্ড', 'ditiyakhandoup.madaripur.gov.bd'),
(3460, 382, 'Nilokhe', 'নিলখি', 'nilokheup.madaripur.gov.bd'),
(3461, 382, 'Bandarkhola', 'বন্দরখোলা', 'bandarkholaup.madaripur.gov.bd'),
(3462, 382, 'Charjanazat', 'চরজানাজাত', 'charjanazatup.madaripur.gov.bd'),
(3463, 382, 'Madbarerchar', 'মাদবরেরচর', 'madbarercharup.madaripur.gov.bd'),
(3464, 382, 'Panchar', 'পাঁচচর', 'pancharup.madaripur.gov.bd'),
(3465, 382, 'Sannasirchar', 'সন্যাসিরচর', 'sannasircharup.madaripur.gov.bd'),
(3466, 382, 'Kathalbari', 'কাঁঠালবাড়ী', 'kathalbariup.madaripur.gov.bd'),
(3467, 382, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.madaripur.gov.bd'),
(3468, 382, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.madaripur.gov.bd'),
(3469, 382, 'Vhandarikandi', 'ভান্ডারীকান্দি', 'vhandarikandiup.madaripur.gov.bd'),
(3470, 382, 'Bahertala South', 'বহেরাতলা দক্ষিণ', 'bahertalasouthup.madaripur.gov.bd'),
(3471, 382, 'Baheratala North', 'বহেরাতলা উত্তর', 'baheratalanorthup.madaripur.gov.bd'),
(3472, 382, 'Baskandi', 'বাঁশকান্দি', 'baskandiup.madaripur.gov.bd'),
(3473, 382, 'Umedpur', 'উমেদপুর', 'umedpurup.madaripur.gov.bd'),
(3474, 382, 'Vhadrasion', 'ভদ্রাসন', 'vhadrasionup.madaripur.gov.bd'),
(3475, 382, 'Shiruail', 'শিরুয়াইল', 'shiruailup.madaripur.gov.bd'),
(3476, 382, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.madaripur.gov.bd'),
(3477, 383, 'Alinagar', 'আলীনগর', 'alinagarup.madaripur.gov.bd'),
(3478, 383, 'Baligram', 'বালীগ্রাম', 'baligramup.madaripur.gov.bd'),
(3479, 383, 'Basgari', 'বাঁশগাড়ী', 'basgariup.madaripur.gov.bd'),
(3480, 383, 'Chardoulatkhan', 'চরদৌলতখান', 'chardoulatkhanup.madaripur.gov.bd'),
(3481, 383, 'Dashar', 'ডাসার', 'dasharup.madaripur.gov.bd'),
(3482, 383, 'Enayetnagor', 'এনায়েতনগর', 'enayetnagorup.madaripur.gov.bd'),
(3483, 383, 'Gopalpur', 'গোপালপুর', 'gopalpurup.madaripur.gov.bd'),
(3484, 383, 'Koyaria', 'কয়ারিয়া', 'koyariaup.madaripur.gov.bd'),
(3485, 383, 'Kazibakai', 'কাজীবাকাই', 'kazibakaiup.madaripur.gov.bd'),
(3486, 383, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.madaripur.gov.bd'),
(3487, 383, 'Nabogram', 'নবগ্রাম', 'nabogramup.madaripur.gov.bd'),
(3488, 383, 'Ramjanpur', 'রমজানপুর', 'ramjanpurup.madaripur.gov.bd'),
(3489, 383, 'Shahebrampur', 'সাহেবরামপুর', 'shahebrampurup.madaripur.gov.bd'),
(3490, 383, 'Shikarmongol', 'শিকারমঙ্গল', 'shikarmongolup.madaripur.gov.bd'),
(3491, 384, 'Haridasdi-Mahendrodi', 'হরিদাসদী-মহেন্দ্রদী', 'haridasdi-mahendrodiup.madaripur.gov.bd'),
(3492, 384, 'Kadambari', 'কদমবাড়ী', 'kadambariup.madaripur.gov.bd'),
(3493, 384, 'Bajitpur', 'বাজিতপুর', 'bajitpurup.madaripur.gov.bd'),
(3494, 384, 'Amgram', 'আমগ্রাম', 'amgramup.madaripur.gov.bd'),
(3495, 384, 'Rajoir', 'রাজৈর', 'rajoirup.madaripur.gov.bd'),
(3496, 384, 'Khaliya', 'খালিয়া', 'khaliyaup.madaripur.gov.bd'),
(3497, 384, 'Ishibpur', 'ইশিবপুর', 'ishibpurup.madaripur.gov.bd'),
(3498, 384, 'Badarpasa', 'বদরপাশা', 'badarpasaup.madaripur.gov.bd'),
(3499, 384, 'Kabirajpur', 'কবিরাজপুর', 'kabirajpurup.madaripur.gov.bd'),
(3500, 384, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.madaripur.gov.bd'),
(3501, 384, 'Paikpara', 'পাইকপাড়া', 'paikparaup.madaripur.gov.bd'),
(3502, 385, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.gopalganj.gov.bd'),
(3503, 385, 'Shuktail', 'শুকতাইল', 'shuktailup.gopalganj.gov.bd'),
(3504, 385, 'Chandradighalia', 'চন্দ্রদিঘলিয়া', 'chandradighaliaup.gopalganj.gov.bd'),
(3505, 385, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.gopalganj.gov.bd'),
(3506, 385, 'Paikkandi', 'পাইককান্দি', 'paikkandiup.gopalganj.gov.bd'),
(3507, 385, 'Urfi', 'উরফি', 'urfiup.gopalganj.gov.bd'),
(3508, 385, 'Lotifpur', 'লতিফপুর', 'lotifpurup.gopalganj.gov.bd'),
(3509, 385, 'Satpar', 'সাতপাড়', 'satparup.gopalganj.gov.bd'),
(3510, 385, 'Sahapur', 'সাহাপুর', 'sahapurup.gopalganj.gov.bd'),
(3511, 385, 'Horidaspur', 'হরিদাসপুর', 'horidaspurup.gopalganj.gov.bd'),
(3512, 385, 'Ulpur', 'উলপুর', 'ulpurup.gopalganj.gov.bd'),
(3513, 385, 'Nizra', 'নিজড়া', 'nizraup.gopalganj.gov.bd'),
(3514, 385, 'Karpara', 'করপাড়া', 'karparaup.gopalganj.gov.bd'),
(3515, 385, 'Durgapur', 'দুর্গাপুর', 'durgapurup.gopalganj.gov.bd'),
(3516, 385, 'Kajulia', 'কাজুলিয়া', 'kajuliaup.gopalganj.gov.bd'),
(3517, 385, 'Majhigati', 'মাঝিগাতী', 'majhigatiup.gopalganj.gov.bd'),
(3518, 385, 'Roghunathpur', 'রঘুনাথপুর', 'roghunathpurup.gopalganj.gov.bd'),
(3519, 385, 'Gobra', 'গোবরা', 'gobraup.gopalganj.gov.bd'),
(3520, 385, 'Borashi', 'বোড়াশী', 'borashiup.gopalganj.gov.bd'),
(3521, 385, 'Kati', 'কাঠি', 'katiup.gopalganj.gov.bd'),
(3522, 385, 'Boultali', 'বৌলতলী', 'boultaliup.gopalganj.gov.bd'),
(3523, 386, 'Kashiani', 'কাশিয়ানী', 'kashianiup.gopalganj.gov.bd'),
(3524, 386, 'Hatiara', 'হাতিয়াড়া', 'hatiaraup.gopalganj.gov.bd'),
(3525, 386, 'Fukura', 'ফুকরা', 'fukuraup.gopalganj.gov.bd'),
(3526, 386, 'Rajpat', 'রাজপাট', 'rajpatup.gopalganj.gov.bd'),
(3527, 386, 'Bethuri', 'বেথুড়ী', 'bethuriup.gopalganj.gov.bd'),
(3528, 386, 'Nijamkandi', 'নিজামকান্দি', 'nijamkandiup.gopalganj.gov.bd'),
(3529, 386, 'Sajail', 'সাজাইল', 'sajailup.gopalganj.gov.bd'),
(3530, 386, 'Mamudpur', 'মাহমুদপুর', 'mamudpurup.gopalganj.gov.bd'),
(3531, 386, 'Maheshpur', 'মহেশপুর', 'maheshpurup.gopalganj.gov.bd'),
(3532, 386, 'Orakandia', 'ওড়াকান্দি', 'orakandiaup.gopalganj.gov.bd'),
(3533, 386, 'Parulia', 'পারুলিয়া', 'paruliaup.gopalganj.gov.bd'),
(3534, 386, 'Ratail', 'রাতইল', 'ratailup.gopalganj.gov.bd'),
(3535, 386, 'Puisur', 'পুইশুর', 'puisurup.gopalganj.gov.bd'),
(3536, 386, 'Singa', 'সিংগা', 'singaup.gopalganj.gov.bd'),
(3537, 387, 'Kushli', 'কুশলী', 'kushliup.gopalganj.gov.bd'),
(3538, 387, 'Gopalpur', 'গোপালপুর', 'gopalpurup.gopalganj.gov.bd'),
(3539, 387, 'Patgati', 'পাটগাতী', 'patgatiup.gopalganj.gov.bd'),
(3540, 387, 'Borni', 'বর্ণি', 'borniup.gopalganj.gov.bd'),
(3541, 387, 'Dumaria', 'ডুমরিয়া', 'dumariaup.gopalganj.gov.bd'),
(3542, 388, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapurup.gopalganj.gov.bd'),
(3543, 388, 'Ramshil', 'রামশীল', 'ramshilup.gopalganj.gov.bd'),
(3544, 388, 'Bandhabari', 'বান্ধাবাড়ী', 'bandhabariup.gopalganj.gov.bd'),
(3545, 388, 'Kolabari', 'কলাবাড়ী', 'kolabariup.gopalganj.gov.bd'),
(3546, 388, 'Kushla', 'কুশলা', 'kushlaup.gopalganj.gov.bd'),
(3547, 388, 'Amtoli', 'আমতলী', 'amtoliup.gopalganj.gov.bd'),
(3548, 388, 'Pinjuri', 'পিঞ্জুরী', 'pinjuriup.gopalganj.gov.bd'),
(3549, 388, 'Ghaghor', 'ঘাঘর', 'ghaghorup.gopalganj.gov.bd'),
(3550, 388, 'Radhaganj', 'রাধাগঞ্জ', 'radhaganjup.gopalganj.gov.bd'),
(3551, 388, 'Hiron', 'হিরণ', 'hironup.gopalganj.gov.bd'),
(3552, 388, 'Kandi', 'কান্দি', 'kandiup.gopalganj.gov.bd'),
(3553, 389, 'Ujani', 'উজানী', 'ujaniup.gopalganj.gov.bd'),
(3554, 389, 'Nanikhir', 'ননীক্ষীর', 'nanikhirup.gopalganj.gov.bd'),
(3555, 389, 'Dignagar', 'দিগনগর', 'dignagarup.gopalganj.gov.bd'),
(3556, 389, 'Poshargati', 'পশারগাতি', 'poshargatiup.gopalganj.gov.bd'),
(3557, 389, 'Gobindopur', 'গোবিন্দপুর', 'gobindopurup.gopalganj.gov.bd'),
(3558, 389, 'Khandarpara', 'খান্দারপাড়া', 'khandarparaup.gopalganj.gov.bd'),
(3559, 389, 'Bohugram', 'বহুগ্রাম', 'bohugramup.gopalganj.gov.bd'),
(3560, 389, 'Banshbaria', 'বাশঁবাড়িয়া', 'banshbariaup.gopalganj.gov.bd'),
(3561, 389, 'Vabrashur', 'ভাবড়াশুর', 'vabrashurup.gopalganj.gov.bd'),
(3562, 389, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.gopalganj.gov.bd'),
(3563, 389, 'Batikamari', 'বাটিকামারী', 'batikamariup.gopalganj.gov.bd'),
(3564, 389, 'Jalirpar', 'জলিরপাড়', 'jalirparup.gopalganj.gov.bd'),
(3565, 389, 'Raghdi', 'রাঘদী', 'raghdiup.gopalganj.gov.bd'),
(3566, 389, 'Gohala', 'গোহালা', 'gohalaup.gopalganj.gov.bd'),
(3567, 389, 'Mochna', 'মোচনা', 'mochnaup.gopalganj.gov.bd'),
(3568, 389, 'Kashalia', 'কাশালিয়া', 'kashaliaup.gopalganj.gov.bd'),
(3569, 390, 'Ishangopalpur', 'ঈশানগোপালপুর', 'ishangopalpurup.faridpur.gov.bd'),
(3570, 390, 'Charmadbdia', 'চরমাধবদিয়া', 'charmadbdiaup.faridpur.gov.bd'),
(3571, 390, 'Aliabad', 'আলিয়াবাদ', 'aliabadup.faridpur.gov.bd'),
(3572, 390, 'Uttarchannel', 'নর্থচ্যানেল', 'uttarchannelup.faridpur.gov.bd'),
(3573, 390, 'Decreerchar', 'ডিক্রিরচর', 'decreercharup.faridpur.gov.bd'),
(3574, 390, 'Majchar', 'মাচ্চর', 'majcharup.faridpur.gov.bd'),
(3575, 390, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.faridpur.gov.bd'),
(3576, 390, 'Ambikapur', 'অম্বিকাপুর', 'ambikapurup.faridpur.gov.bd'),
(3577, 390, 'Kanaipur', 'কানাইপুর', 'kanaipurup.faridpur.gov.bd'),
(3578, 390, 'Kaijuri', 'কৈজুরী', 'kaijuriup.faridpur.gov.bd'),
(3579, 390, 'Greda', 'গেরদা', 'gredaup.faridpur.gov.bd'),
(3580, 391, 'Buraich', 'বুড়াইচ', 'buraichup.faridpur.gov.bd'),
(3581, 391, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadangaup.faridpur.gov.bd'),
(3582, 391, 'Tagarbanda', 'টগরবন্দ', 'tagarbandaup.faridpur.gov.bd'),
(3583, 391, 'Bana', 'বানা', 'banaup.faridpur.gov.bd'),
(3584, 391, 'Panchuria', 'পাঁচুড়িয়া', 'panchuriaup.faridpur.gov.bd'),
(3585, 391, 'Gopalpur', 'গোপালপুর', 'gopalpurup.faridpur.gov.bd'),
(3586, 392, 'Boalmari', 'বোয়ালমারী', 'boalmariup.faridpur.gov.bd'),
(3587, 392, 'Dadpur', 'দাদপুর', 'dadpurup.faridpur.gov.bd'),
(3588, 392, 'Chatul', 'চতুল', 'chatulup.faridpur.gov.bd'),
(3589, 392, 'Ghoshpur', 'ঘোষপুর', 'ghoshpurup.faridpur.gov.bd'),
(3590, 392, 'Gunbaha', 'গুনবহা', 'gunbahaup.faridpur.gov.bd'),
(3591, 392, 'Chandpur', 'চাঁদপুর', 'chandpurup.faridpur.gov.bd'),
(3592, 392, 'Parameshwardi', 'পরমেশ্বরদী', 'parameshwardiup.faridpur.gov.bd'),
(3593, 392, 'Satair', 'সাতৈর', 'satairup.faridpur.gov.bd'),
(3594, 392, 'Rupapat', 'রূপাপাত', 'rupapatup.faridpur.gov.bd'),
(3595, 392, 'Shekhar', 'শেখর', 'shekharup.faridpur.gov.bd'),
(3596, 392, 'Moyna', 'ময়না', 'moynaup.faridpur.gov.bd'),
(3597, 393, 'Char Bisnopur', 'চর বিষ্ণুপুর', 'charbisnopurup.faridpur.gov.bd'),
(3598, 393, 'Akoter Char', 'আকোটের চর', 'akotercharup.faridpur.gov.bd'),
(3599, 393, 'Char Nasirpur', 'চর নাসিরপুর', 'charnasirpurup.faridpur.gov.bd'),
(3600, 393, 'Narikel Bariya', 'নারিকেল বাড়িয়া', 'narikelbariyaup.faridpur.gov.bd'),
(3601, 393, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.faridpur.gov.bd'),
(3602, 393, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.faridpur.gov.bd'),
(3603, 393, 'Sadarpur', 'সদরপুর', 'sadarpurup.faridpur.gov.bd'),
(3604, 393, 'Char Manair', 'চর মানাইর', 'charmanairup.faridpur.gov.bd'),
(3605, 393, 'Dhaukhali', 'ঢেউখালী', 'dhaukhaliup.faridpur.gov.bd'),
(3606, 394, 'Charjashordi', 'চরযশোরদী', 'charjashordiup.faridpur.gov.bd'),
(3607, 394, 'Purapara', 'পুরাপাড়া', 'puraparaup.faridpur.gov.bd'),
(3608, 394, 'Laskardia', 'লস্করদিয়া', 'laskardiaup.faridpur.gov.bd'),
(3609, 394, 'Ramnagar', 'রামনগর', 'ramnagarup.faridpur.gov.bd'),
(3610, 394, 'Kaichail', 'কাইচাইল', 'kaichailup.faridpur.gov.bd'),
(3611, 394, 'Talma', 'তালমা', 'talmaup.faridpur.gov.bd'),
(3612, 394, 'Fulsuti', 'ফুলসুতি', 'fulsutiup.faridpur.gov.bd'),
(3613, 394, 'Dangi', 'ডাঙ্গী', 'dangiup.faridpur.gov.bd'),
(3614, 394, 'Kodalia Shohidnagar', 'কোদালিয়া শহিদনগর', 'kodaliashohidnagarup.faridpur.gov.bd'),
(3615, 395, 'Gharua', 'ঘারুয়া', 'gharuaup.faridpur.gov.bd'),
(3616, 395, 'Nurullagonj', 'নুরুল্যাগঞ্জ', 'nurullagonjup.faridpur.gov.bd'),
(3617, 395, 'Manikdha', 'মানিকদহ', 'manikdhaup.faridpur.gov.bd'),
(3618, 395, 'Kawlibera', 'কাউলিবেড়া', 'kawliberaup.faridpur.gov.bd'),
(3619, 395, 'Nasirabad', 'নাছিরাবাদ', 'nasirabadup.faridpur.gov.bd'),
(3620, 395, 'Tujerpur', 'তুজারপুর', 'tujerpurup.faridpur.gov.bd'),
(3621, 395, 'Algi', 'আলগী', 'algiup.faridpur.gov.bd'),
(3622, 395, 'Chumurdi', 'চুমুরদী', 'chumurdiup.faridpur.gov.bd'),
(3623, 395, 'Kalamridha', 'কালামৃধা', 'kalamridhaup.faridpur.gov.bd'),
(3624, 395, 'Azimnagor', 'আজিমনগর', 'azimnagorup.faridpur.gov.bd'),
(3625, 395, 'Chandra', 'চান্দ্রা', 'chandraup.faridpur.gov.bd'),
(3626, 395, 'Hamirdi', 'হামিরদী', 'hamirdiup.faridpur.gov.bd'),
(3627, 396, 'Gazirtek', 'গাজীরটেক', 'gazirtekup.faridpur.gov.bd'),
(3628, 396, 'Char Bhadrasan', 'চর ভদ্রাসন', 'charbhadrasanup.faridpur.gov.bd'),
(3629, 396, 'Char Harirampur', 'চর হরিরামপুর', 'charharirampurup.faridpur.gov.bd'),
(3630, 396, 'Char Jahukanda', 'চর ঝাউকান্দা', 'charjahukandaup.faridpur.gov.bd'),
(3631, 397, 'Madhukhali', 'মধুখালী', 'madhukhaliup.faridpur.gov.bd'),
(3632, 397, 'Jahapur', 'জাহাপুর', 'jahapurup.faridpur.gov.bd'),
(3633, 397, 'Gazna', 'গাজনা', 'gaznaup.faridpur.gov.bd'),
(3634, 397, 'Megchami', 'মেগচামী', 'megchamiup.faridpur.gov.bd'),
(3635, 397, 'Raipur', 'রায়পুর', 'raipurup.faridpur.gov.bd'),
(3636, 397, 'Bagat', 'বাগাট', 'bagatup.faridpur.gov.bd'),
(3637, 397, 'Dumain', 'ডুমাইন', 'dumainup.faridpur.gov.bd'),
(3638, 397, 'Nowpara', 'নওপাড়া', 'nowparaup.faridpur.gov.bd'),
(3639, 397, 'Kamarkhali', 'কামারখালী', 'kamarkhaliup.faridpur.gov.bd'),
(3640, 398, 'Bhawal', 'ভাওয়াল', 'bhawalup.faridpur.gov.bd'),
(3641, 398, 'Atghar', 'আটঘর', 'atgharup.faridpur.gov.bd'),
(3642, 398, 'Mazadia', 'মাঝারদিয়া', 'mazadiaup.faridpur.gov.bd'),
(3643, 398, 'Ballabhdi', 'বল্লভদী', 'ballabhdiup.faridpur.gov.bd'),
(3644, 398, 'Gatti', 'গট্টি', 'gattiup.faridpur.gov.bd'),
(3645, 398, 'Jadunandi', 'যদুনন্দী', 'jadunandiup.faridpur.gov.bd'),
(3646, 398, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.faridpur.gov.bd'),
(3647, 398, 'Sonapur', 'সোনাপুর', 'sonapurup.faridpur.gov.bd'),
(3648, 399, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadarup.panchagarh.gov.bd'),
(3649, 399, 'Satmara', 'সাতমেরা', 'satmaraup.panchagarh.gov.bd'),
(3650, 399, 'Amarkhana', 'অমরখানা', 'amarkhanaup.panchagarh.gov.bd'),
(3651, 399, 'Haribhasa', 'হাড়িভাসা', 'haribhasaup.panchagarh.gov.bd'),
(3652, 399, 'Chaklahat', 'চাকলাহাট', 'chaklahatup.panchagarh.gov.bd'),
(3653, 399, 'Hafizabad', 'হাফিজাবাদ', 'hafizabadup.panchagarh.gov.bd'),
(3654, 399, 'Kamat Kajol Dighi', 'কামাত কাজল দীঘি', 'kamatkajoldighiup.panchagarh.gov.bd'),
(3655, 399, 'Dhakkamara', 'ধাক্কামারা', 'dhakkamaraup.panchagarh.gov.bd'),
(3656, 399, 'Magura', 'মাগুরা', 'maguraup.panchagarh.gov.bd'),
(3657, 399, 'Garinabari', 'গরিনাবাড়ী', 'garinabariup.panchagarh.gov.bd'),
(3658, 400, 'Chilahati', 'চিলাহাটি', 'chilahatiup.panchagarh.gov.bd'),
(3659, 400, 'Shaldanga', 'শালডাঙ্গা', 'shaldangaup.panchagarh.gov.bd'),
(3660, 400, 'Debiganj Sadar', 'দেবীগঞ্জ সদর', 'debiganjsadarup.panchagarh.gov.bd'),
(3661, 400, 'Pamuli', 'পামুলী', 'pamuliup.panchagarh.gov.bd'),
(3662, 400, 'Sundardighi', 'সুন্দরদিঘী', 'sundardighiup.panchagarh.gov.bd'),
(3663, 400, 'Sonahar Mollikadaha', 'সোনাহার মল্লিকাদহ', 'sonaharmollikadahaup.panchagarh.gov.bd'),
(3664, 400, 'Tepriganj', 'টেপ্রীগঞ্জ', 'tepriganjup.panchagarh.gov.bd'),
(3665, 400, 'Dandopal', 'দন্ডপাল', 'dandopalup.panchagarh.gov.bd'),
(3666, 400, 'Debiduba', 'দেবীডুবা', 'debidubaup.panchagarh.gov.bd'),
(3667, 400, 'Chengthi Hazra Danga', 'চেংঠী হাজরা ডাঙ্গা', 'chengthihazradangaup.panchagarh.gov.bd'),
(3668, 401, 'Jholaishal Shiri', 'ঝলইশাল শিরি', 'jholaishalshiriup.panchagarh.gov.bd'),
(3669, 401, 'Moidandighi', 'ময়দান দীঘি', 'moidandighiup.panchagarh.gov.bd'),
(3670, 401, 'Banghari', 'বেংহারী', 'banghariup.panchagarh.gov.bd'),
(3671, 401, 'Kajoldighi Kaligonj', 'কাজলদীঘি কালিগঞ্জ', 'kajoldighikaligonjup.panchagarh.gov.bd'),
(3672, 401, 'Boroshoshi', 'বড়শশী', 'boroshoshiup.panchagarh.gov.bd'),
(3673, 401, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.panchagarh.gov.bd'),
(3674, 401, 'Marea Bamonhat', 'মাড়েয়া বামনহাট', 'mareabamonhatup.panchagarh.gov.bd'),
(3675, 401, 'Boda', 'বোদা', 'bodaup.panchagarh.gov.bd'),
(3676, 401, 'Sakoa', 'সাকোয়া', 'sakoaup.panchagarh.gov.bd'),
(3677, 401, 'Pachpir', 'পাচপীর', 'pachpirup.panchagarh.gov.bd'),
(3678, 402, 'Mirgapur', 'মির্জাপুর', 'mirgapurup.panchagarh.gov.bd'),
(3679, 402, 'Radhanagar', 'রাধানগর', 'radhanagarup.panchagarh.gov.bd'),
(3680, 402, 'Toria', 'তোড়িয়া', 'toriaup.panchagarh.gov.bd'),
(3681, 402, 'Balarampur', 'বলরামপুর', 'balarampurup.panchagarh.gov.bd'),
(3682, 402, 'Alowakhowa', 'আলোয়াখোয়া', 'alowakhowaup.panchagarh.gov.bd'),
(3683, 402, 'Dhamor', 'ধামোর', 'dhamorup.panchagarh.gov.bd'),
(3684, 403, 'Banglabandha', 'বাংলাবান্ধা', 'banglabandhaup.panchagarh.gov.bd'),
(3685, 403, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpurup.panchagarh.gov.bd'),
(3686, 403, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpur.gazipur.gov.bd'),
(3687, 403, 'Buraburi', 'বুড়াবুড়ী', 'buraburi.panchagarh.gov.bd'),
(3688, 403, 'Debnagar', 'দেবনগর', 'debnagarup.panchagarh.gov.bd'),
(3689, 403, 'Salbahan', 'শালবাহান', 'salbahanup.panchagarh.gov.bd'),
(3690, 403, 'Tentulia', 'তেতুলিয়া', 'tentuliaup.panchagarh.gov.bd'),
(3691, 403, 'Timaihat', 'তিমাইহাট', 'timaihat.panchagarh.gov.bd'),
(3692, 404, 'Joypur', 'জয়পুর', 'joypurup.dinajpur.gov.bd'),
(3693, 404, 'Binodnagar', 'বিনোদনগর', 'binodnagarup.dinajpur.gov.bd'),
(3694, 404, 'Golapgonj', 'গোলাপগঞ্জ', 'golapgonjup.dinajpur.gov.bd'),
(3695, 404, 'Shalkhuria', 'শালখুরিয়া', 'shalkhuriaup.dinajpur.gov.bd'),
(3696, 404, 'Putimara', 'পুটিমারা', 'putimaraup.dinajpur.gov.bd'),
(3697, 404, 'Bhaduria', 'ভাদুরিয়া', 'bhaduriaup.dinajpur.gov.bd'),
(3698, 404, 'Daudpur', 'দাউদপুর', 'daudpurup.dinajpur.gov.bd'),
(3699, 404, 'Mahmudpur', 'মাহামুদপুর', 'mahmudpurup.dinajpur.gov.bd'),
(3700, 404, 'Kushdaha', 'কুশদহ', 'kushdahaup.dinajpur.gov.bd'),
(3701, 405, 'Shibrampur', 'শিবরামপুর', 'shibrampurup.dinajpur.gov.bd'),
(3702, 405, 'Polashbari', 'পলাশবাড়ী', 'polashbariup2.dinajpur.gov.bd'),
(3703, 405, 'Shatagram', 'শতগ্রাম', 'shatagramup.dinajpur.gov.bd'),
(3704, 405, 'Paltapur', 'পাল্টাপুর', 'paltapurup.dinajpur.gov.bd'),
(3705, 405, 'Sujalpur', 'সুজালপুর', 'sujalpurup.dinajpur.gov.bd'),
(3706, 405, 'Nijpara', 'নিজপাড়া', 'nijparaup.dinajpur.gov.bd'),
(3707, 405, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.dinajpur.gov.bd'),
(3708, 405, 'Bhognagar', 'ভোগনগর', 'bhognagarup.dinajpur.gov.bd'),
(3709, 405, 'Sator', 'সাতোর', 'satorup.dinajpur.gov.bd'),
(3710, 405, 'Mohonpur', 'মোহনপুর', 'mohonpurup.dinajpur.gov.bd'),
(3711, 405, 'Moricha', 'মরিচা', 'morichaup.dinajpur.gov.bd'),
(3712, 406, 'Bulakipur', 'বুলাকীপুর', 'bulakipurup.dinajpur.gov.bd'),
(3713, 406, 'Palsha', 'পালশা', 'palshaup.dinajpur.gov.bd'),
(3714, 406, 'Singra', 'সিংড়া', 'singraup.dinajpur.gov.bd'),
(3715, 406, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghatup.dinajpur.gov.bd'),
(3716, 407, 'Mukundopur', 'মুকুন্দপুর', 'mukundopurup.dinajpur.gov.bd'),
(3717, 407, 'Katla', 'কাটলা', 'katlaup.dinajpur.gov.bd'),
(3718, 407, 'Khanpur', 'খানপুর', 'khanpurup.dinajpur.gov.bd'),
(3719, 407, 'Dior', 'দিওড়', 'diorup.dinajpur.gov.bd'),
(3720, 407, 'Binail', 'বিনাইল', 'binailup.dinajpur.gov.bd'),
(3721, 407, 'Jatbani', 'জোতবানী', 'jatbaniup.dinajpur.gov.bd'),
(3722, 407, 'Poliproyagpur', 'পলিপ্রয়াগপুর', 'poliproyagpurup.dinajpur.gov.bd'),
(3723, 408, 'Belaichandi', 'বেলাইচন্ডি', 'belaichandiup.dinajpur.gov.bd'),
(3724, 408, 'Monmothopur', 'মন্মথপুর', 'monmothopurup.dinajpur.gov.bd'),
(3725, 408, 'Rampur', 'রামপুর', 'rampurup.dinajpur.gov.bd'),
(3726, 408, 'Polashbari', 'পলাশবাড়ী', 'polashbariup4.dinajpur.gov.bd'),
(3727, 408, 'Chandipur', 'চন্ডীপুর', 'chandipurup.dinajpur.gov.bd'),
(3728, 408, 'Mominpur', 'মোমিনপুর', 'mominpurup.dinajpur.gov.bd'),
(3729, 408, 'Mostofapur', 'মোস্তফাপুর', 'mostofapurup.dinajpur.gov.bd'),
(3730, 408, 'Habra', 'হাবড়া', 'habraup.dinajpur.gov.bd'),
(3731, 408, 'Hamidpur', 'হামিদপুর', 'hamidpurup.dinajpur.gov.bd'),
(3732, 408, 'Harirampur', 'হরিরামপুর', 'harirampurup.dinajpur.gov.bd'),
(3733, 409, 'Nafanagar', 'নাফানগর', 'nafanagarup.dinajpur.gov.bd'),
(3734, 409, 'Eshania', 'ঈশানিয়া', 'eshaniaup.dinajpur.gov.bd'),
(3735, 409, 'Atgaon', 'আটগাঁও', 'atgaonup.dinajpur.gov.bd'),
(3736, 409, 'Shatail', 'ছাতইল', 'shatailup.dinajpur.gov.bd'),
(3737, 409, 'Rongaon', 'রনগাঁও', 'rongaonup.dinajpur.gov.bd'),
(3738, 409, 'Murshidhat', 'মুর্শিদহাট', 'murshidhatup.dinajpur.gov.bd'),
(3739, 410, 'Dabor', 'ডাবোর', 'daborup.dinajpur.gov.bd'),
(3740, 410, 'Rasulpur', 'রসুলপুর', 'rasulpurup.dinajpur.gov.bd'),
(3741, 410, 'Mukundapur', 'মুকুন্দপুর', 'mukundapurup.dinajpur.gov.bd'),
(3742, 410, 'Targao', 'তারগাঁও', 'targaoup.dinajpur.gov.bd'),
(3743, 410, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.dinajpur.gov.bd'),
(3744, 410, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.dinajpur.gov.bd'),
(3745, 411, 'Aloary', 'এলুয়াড়ী', 'aloaryup.dinajpur.gov.bd'),
(3746, 411, 'Aladipur', 'আলাদিপুর', 'aladipurup.dinajpur.gov.bd'),
(3747, 411, 'Kagihal', 'কাজীহাল', 'kagihalup.dinajpur.gov.bd'),
(3748, 411, 'Bethdighi', 'বেতদিঘী', 'bethdighiup.dinajpur.gov.bd'),
(3749, 411, 'Khairbari', 'খয়েরবাড়ী', 'khairbariup.dinajpur.gov.bd'),
(3750, 411, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.dinajpur.gov.bd'),
(3751, 411, 'Shibnagor', 'শিবনগর', 'shibnagorup.dinajpur.gov.bd'),
(3752, 412, 'Chealgazi', 'চেহেলগাজী', 'chealgaziup.dinajpur.gov.bd'),
(3753, 412, 'Sundorbon', 'সুন্দরবন', 'sundorbonup.dinajpur.gov.bd'),
(3754, 412, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.dinajpur.gov.bd'),
(3755, 412, 'Shekpura', 'শেখপুরা', 'shekpuraup.dinajpur.gov.bd'),
(3756, 412, 'Shashora', 'শশরা', 'shashoraup.dinajpur.gov.bd'),
(3757, 412, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.dinajpur.gov.bd'),
(3758, 412, 'Uthrail', 'উথরাইল', 'uthrailup.dinajpur.gov.bd'),
(3759, 412, 'Sankarpur', 'শংকরপুর', 'sankarpurup.dinajpur.gov.bd'),
(3760, 412, 'Askorpur', 'আস্করপুর', 'askorpurup.dinajpur.gov.bd'),
(3761, 412, 'Kamalpur', 'কমলপুর', 'kamalpurup.dinajpur.gov.bd'),
(3762, 413, 'Alihat', 'আলীহাট', 'alihatup.dinajpur.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(3763, 413, 'Khattamadobpara', 'খট্টামাধবপাড়া', 'khattamadobparaup.dinajpur.gov.bd'),
(3764, 413, 'Boalder', 'বোয়ালদার', 'boalderup.dinajpur.gov.bd'),
(3765, 414, 'Alokjhari', 'আলোকঝাড়ী', 'alokjhariup.dinajpur.gov.bd'),
(3766, 414, 'Bherbheri', 'ভেড়ভেড়ী', 'bherbheriup.dinajpur.gov.bd'),
(3767, 414, 'Angarpara', 'আঙ্গারপাড়া', 'angarparaup.dinajpur.gov.bd'),
(3768, 414, 'Goaldihi', 'গোয়ালডিহি', 'goaldihiup.dinajpur.gov.bd'),
(3769, 414, 'Bhabki', 'ভাবকী', 'bhabkiup.dinajpur.gov.bd'),
(3770, 414, 'Khamarpara', 'খামারপাড়া', 'khamarparaup.dinajpur.gov.bd'),
(3771, 415, 'Azimpur', 'আজিমপুর', 'azimpurup.dinajpur.gov.bd'),
(3772, 415, 'Farakkabad', 'ফরাক্কাবাদ', 'farakkabadup.dinajpur.gov.bd'),
(3773, 415, 'Dhamoir', 'ধামইর', 'dhamoirup.dinajpur.gov.bd'),
(3774, 415, 'Shohorgram', 'শহরগ্রাম', 'shohorgramup.dinajpur.gov.bd'),
(3775, 415, 'Birol', 'বিরল', 'birolup.dinajpur.gov.bd'),
(3776, 415, 'Bhandra', 'ভান্ডারা', 'bhandraup.dinajpur.gov.bd'),
(3777, 415, 'Bijora', 'বিজোড়া', 'bijoraup.dinajpur.gov.bd'),
(3778, 415, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.dinajpur.gov.bd'),
(3779, 415, 'Mongalpur', 'মঙ্গলপুর', 'mongalpurup.dinajpur.gov.bd'),
(3780, 415, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.dinajpur.gov.bd'),
(3781, 415, 'Rajarampur', 'রাজারামপুর', 'rajarampurup.dinajpur.gov.bd'),
(3782, 416, 'Nashratpur', 'নশরতপুর', 'nashratpurup.dinajpur.gov.bd'),
(3783, 416, 'Satnala', 'সাতনালা', 'satnalaup.dinajpur.gov.bd'),
(3784, 416, 'Fatejangpur', 'ফতেজংপুর', 'fatejangpurup.dinajpur.gov.bd'),
(3785, 416, 'Isobpur', 'ইসবপুর', 'isobpurup.dinajpur.gov.bd'),
(3786, 416, 'Abdulpur', 'আব্দুলপুর', 'abdulpurup.dinajpur.gov.bd'),
(3787, 416, 'Amarpur', 'অমরপুর', 'amarpurup.dinajpur.gov.bd'),
(3788, 416, 'Auliapukur', 'আউলিয়াপুকুর', 'auliapukurup.dinajpur.gov.bd'),
(3789, 416, 'Saitara', 'সাইতারা', 'saitaraup.dinajpur.gov.bd'),
(3790, 416, 'Viail', 'ভিয়াইল', 'viailup.dinajpur.gov.bd'),
(3791, 416, 'Punotti', 'পুনট্টি', 'punottiup.dinajpur.gov.bd'),
(3792, 416, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.dinajpur.gov.bd'),
(3793, 416, 'Alokdihi', 'আলোকডিহি', 'alokdihiup.dinajpur.gov.bd'),
(3794, 417, 'Rajpur', 'রাজপুর', 'rajpurup.lalmonirhat.gov.bd'),
(3795, 417, 'Harati', 'হারাটি', 'haratiup.lalmonirhat.gov.bd'),
(3796, 417, 'Mogolhat', 'মোগলহাট', 'mogolhatup.lalmonirhat.gov.bd'),
(3797, 417, 'Gokunda', 'গোকুন্ডা', 'gokundaup.lalmonirhat.gov.bd'),
(3798, 417, 'Barobari', 'বড়বাড়ী', 'barobariup.lalmonirhat.gov.bd'),
(3799, 417, 'Kulaghat', 'কুলাঘাট', 'kulaghatup.lalmonirhat.gov.bd'),
(3800, 417, 'Mohendranagar', 'মহেন্দ্রনগর', 'mohendranagarup.lalmonirhat.gov.bd'),
(3801, 417, 'Khuniagachh', 'খুনিয়াগাছ', 'khuniagachhup.lalmonirhat.gov.bd'),
(3802, 417, 'Panchagram', 'পঞ্চগ্রাম', 'panchagramup.lalmonirhat.gov.bd'),
(3803, 418, 'Bhotmari', 'ভোটমারী', 'bhotmariup.lalmonirhat.gov.bd'),
(3804, 418, 'Modati', 'মদাতী', 'modatiup.lalmonirhat.gov.bd'),
(3805, 418, 'Dologram', 'দলগ্রাম', 'dologramup.lalmonirhat.gov.bd'),
(3806, 418, 'Tushbhandar', 'তুষভান্ডার', 'tushbhandarup.lalmonirhat.gov.bd'),
(3807, 418, 'Goral', 'গোড়ল', 'goralup.lalmonirhat.gov.bd'),
(3808, 418, 'Chondropur', 'চন্দ্রপুর', 'chondropurup.lalmonirhat.gov.bd'),
(3809, 418, 'Cholbola', 'চলবলা', 'cholbolaup.lalmonirhat.gov.bd'),
(3810, 418, 'Kakina', 'কাকিনা', 'kakinaup.lalmonirhat.gov.bd'),
(3811, 419, 'Barokhata', 'বড়খাতা', 'barokhataup.lalmonirhat.gov.bd'),
(3812, 419, 'Goddimari', 'গড্ডিমারী', 'goddimariup.lalmonirhat.gov.bd'),
(3813, 419, 'Singimari', 'সিংগীমারী', 'singimariup.lalmonirhat.gov.bd'),
(3814, 419, 'Tongvhanga', 'টংভাঙ্গা', 'tongvhangaup.lalmonirhat.gov.bd'),
(3815, 419, 'Sindurna', 'সিন্দুর্ণা', 'sindurnaup.lalmonirhat.gov.bd'),
(3816, 419, 'Paticapara', 'পাটিকাপাড়া', 'paticaparaup.lalmonirhat.gov.bd'),
(3817, 419, 'Nowdabas', 'নওদাবাস', 'nowdabasup.lalmonirhat.gov.bd'),
(3818, 419, 'Gotamari', 'গোতামারী', 'gotamariup.lalmonirhat.gov.bd'),
(3819, 419, 'Vhelaguri', 'ভেলাগুড়ি', 'vhelaguriup.lalmonirhat.gov.bd'),
(3820, 419, 'Shaniajan', 'সানিয়াজান', 'shaniajanup.lalmonirhat.gov.bd'),
(3821, 419, 'Fakirpara', 'ফকিরপাড়া', 'fakirparaup.lalmonirhat.gov.bd'),
(3822, 419, 'Dawabari', 'ডাউয়াবাড়ী', 'dawabariup.lalmonirhat.gov.bd'),
(3823, 420, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.lalmonirhat.gov.bd'),
(3824, 420, 'Patgram', 'পাটগ্রাম', 'patgramup.lalmonirhat.gov.bd'),
(3825, 420, 'Jagatber', 'জগতবেড়', 'jagatberup.lalmonirhat.gov.bd'),
(3826, 420, 'Kuchlibari', 'কুচলিবাড়ী', 'kuchlibariup.lalmonirhat.gov.bd'),
(3827, 420, 'Jongra', 'জোংড়া', 'jongraup.lalmonirhat.gov.bd'),
(3828, 420, 'Baura', 'বাউড়া', 'bauraup.lalmonirhat.gov.bd'),
(3829, 420, 'Dahagram', 'দহগ্রাম', 'dahagramup.lalmonirhat.gov.bd'),
(3830, 420, 'Burimari', 'বুড়িমারী', 'burimariup.lalmonirhat.gov.bd'),
(3831, 421, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabariup.lalmonirhat.gov.bd'),
(3832, 421, 'Bhadai', 'ভাদাই', 'bhadaiup.lalmonirhat.gov.bd'),
(3833, 421, 'Kamlabari', 'কমলাবাড়ী', 'kamlabariup.lalmonirhat.gov.bd'),
(3834, 421, 'Durgapur', 'দূর্গাপুর', 'durgapurup.lalmonirhat.gov.bd'),
(3835, 421, 'Sarpukur', 'সারপুকুর', 'sarpukurup.lalmonirhat.gov.bd'),
(3836, 421, 'Saptibari', 'সাপ্টিবাড়ী', 'saptibariup.lalmonirhat.gov.bd'),
(3837, 421, 'Palashi', 'পলাশী', 'palashiup.lalmonirhat.gov.bd'),
(3838, 421, 'Mohishkhocha', 'মহিষখোচা', 'mohishkhochaup.lalmonirhat.gov.bd'),
(3839, 422, 'Kamarpukur', 'কামারপুকুর', 'kamarpukurup.nilphamari.gov.bd'),
(3840, 422, 'Kasiram Belpukur', 'কাশিরাম বেলপুকুর', 'kasirambelpukurup.nilphamari.gov.bd'),
(3841, 422, 'Bangalipur', 'বাঙ্গালীপুর', 'bangalipur.nilphamari.gov.bd'),
(3842, 422, 'Botlagari', 'বোতলাগাড়ী', 'botlagariup.nilphamari.gov.bd'),
(3843, 422, 'Khata Madhupur', 'খাতা মধুপুর', 'khatamadhupurup.nilphamari.gov.bd'),
(3844, 423, 'Gomnati', 'গোমনাতি', 'gomnati.nilphamari.gov.bd'),
(3845, 423, 'Bhogdaburi', 'ভোগডাবুড়ী', 'bhogdaburiup.nilphamari.gov.bd'),
(3846, 423, 'Ketkibari', 'কেতকীবাড়ী', 'ketkibariup.nilphamari.gov.bd'),
(3847, 423, 'Jorabari', 'জোড়াবাড়ী', 'jorabariup.nilphamari.gov.bd'),
(3848, 423, 'Bamunia', 'বামুনীয়া', 'bamuniaup.nilphamari.gov.bd'),
(3849, 423, 'Panga Motukpur', 'পাংগা মটকপুর', 'pangamotukpurup.nilphamari.gov.bd'),
(3850, 423, 'Boragari', 'বোড়াগাড়ী', 'boragariup.nilphamari.gov.bd'),
(3851, 423, 'Domar', 'ডোমার', 'domarup.nilphamari.gov.bd'),
(3852, 423, 'Sonaray', 'সোনারায়', 'sonarayup2.nilphamari.gov.bd'),
(3853, 423, 'Harinchara', 'হরিণচরা', 'harincharaup.nilphamari.gov.bd'),
(3854, 424, 'Paschim Chhatnay', 'পশ্চিম ছাতনাই', 'paschimchhatnayup.nilphamari.gov.bd'),
(3855, 424, 'Balapara', 'বালাপাড়া', 'balaparaup.nilphamari.gov.bd'),
(3856, 424, 'Dimla Sadar', 'ডিমলা সদর', 'dimlasadarup.nilphamari.gov.bd'),
(3857, 424, 'Khogakharibari', 'খগা খড়িবাড়ী', 'khogakharibariup.nilphamari.gov.bd'),
(3858, 424, 'Gayabari', 'গয়াবাড়ী', 'gayabariup.nilphamari.gov.bd'),
(3859, 424, 'Noutara', 'নাউতারা', 'noutaraup.nilphamari.gov.bd'),
(3860, 424, 'Khalisha Chapani', 'খালিশা চাপানী', 'khalishachapaniup.nilphamari.gov.bd'),
(3861, 424, 'Jhunagach Chapani', 'ঝুনাগাছ চাপানী', 'jhunagachhchapaniup.nilphamari.gov.bd'),
(3862, 424, 'Tepa Khribari', 'টেপা খরীবাড়ী', 'tepakhribariup.nilphamari.gov.bd'),
(3863, 424, 'Purba Chhatnay', 'পুর্ব ছাতনাই', 'purbachhatnayup.nilphamari.gov.bd'),
(3864, 425, 'Douabari', 'ডাউয়াবাড়ী', 'douabariup.nilphamari.gov.bd'),
(3865, 425, 'Golmunda', 'গোলমুন্ডা', 'golmunda.nilphamari.gov.bd'),
(3866, 425, 'Balagram', 'বালাগ্রাম', 'balagram.nilphamari.gov.bd'),
(3867, 425, 'Golna', 'গোলনা', 'golna.nilphamari.gov.bd'),
(3868, 425, 'Dharmapal', 'ধর্মপাল', 'dharmapal.nilphamari.gov.bd'),
(3869, 425, 'Simulbari', 'শিমুলবাড়ী', 'simulbari.nilphamari.gov.bd'),
(3870, 425, 'Mirganj', 'মীরগঞ্জ', 'mirganj.nilphamari.gov.bd'),
(3871, 425, 'Kathali', 'কাঠালী', 'kathaliup.nilphamari.gov.bd'),
(3872, 425, 'Khutamara', 'খুটামারা', 'khutamaraup.nilphamari.gov.bd'),
(3873, 425, 'Shaulmari', 'শৌলমারী', 'shaulmariup.nilphamari.gov.bd'),
(3874, 425, 'Kaimari', 'কৈমারী', 'kaimariup.nilphamari.gov.bd'),
(3875, 426, 'Barabhita', 'বড়ভিটা', 'barabhitaup.nilphamari.gov.bd'),
(3876, 426, 'Putimari', 'পুটিমারী', 'putimariup.nilphamari.gov.bd'),
(3877, 426, 'Nitai', 'নিতাই', 'nitaiup.nilphamari.gov.bd'),
(3878, 426, 'Bahagili', 'বাহাগিলি', 'bahagiliup.nilphamari.gov.bd'),
(3879, 426, 'Chandkhana', 'চাঁদখানা', 'chandkhanaup.nilphamari.gov.bd'),
(3880, 426, 'Kishoreganj', 'কিশোরগঞ্জ', 'kishoreganjup.nilphamari.gov.bd'),
(3881, 426, 'Ranachandi', 'রনচন্ডি', 'ranachandiup.nilphamari.gov.bd'),
(3882, 426, 'Garagram', 'গাড়াগ্রাম', 'garagramup.nilphamari.gov.bd'),
(3883, 426, 'Magura', 'মাগুরা', 'maguraup.nilphamari.gov.bd'),
(3884, 427, 'Chaora Bargacha', 'চওড়া বড়গাছা', 'chaorabargachaup.nilphamari.gov.bd'),
(3885, 427, 'Gorgram', 'গোড়গ্রাম', 'gorgramup.nilphamari.gov.bd'),
(3886, 427, 'Khoksabari', 'খোকসাবাড়ী', 'khoksabariup.nilphamari.gov.bd'),
(3887, 427, 'Palasbari', 'পলাশবাড়ী', 'palasbariup.nilphamari.gov.bd'),
(3888, 427, 'Ramnagar', 'রামনগর', 'ramnagarup.nilphamari.gov.bd'),
(3889, 427, 'Kachukata', 'কচুকাটা', 'kachukataup.nilphamari.gov.bd'),
(3890, 427, 'Panchapukur', 'পঞ্চপুকুর', 'panchapukurup.nilphamari.gov.bd'),
(3891, 427, 'Itakhola', 'ইটাখোলা', 'itakholaup.nilphamari.gov.bd'),
(3892, 427, 'Kundapukur', 'কুন্দপুকুর', 'kundapukur.nilphamari.gov.bd'),
(3893, 427, 'Sonaray', 'সোনারায়', 'sonaray.nilphamari.gov.bd'),
(3894, 427, 'Songalsi', 'সংগলশী', 'songalsiup.nilphamari.gov.bd'),
(3895, 427, 'Charaikhola', 'চড়াইখোলা', 'charaikhola.nilphamari.gov.bd'),
(3896, 427, 'Chapra Sarnjami', 'চাপড়া সরঞ্জানী', 'chaprasarnjami.nilphamari.gov.bd'),
(3897, 427, 'Lakshmicha', 'লক্ষ্মীচাপ', 'lakshmichapup.nilphamari.gov.bd'),
(3898, 427, 'Tupamari', 'টুপামারী', 'tupamariup.nilphamari.gov.bd'),
(3899, 428, 'Rasulpur', 'রসুলপুর', 'rasulpurup.gaibandha.gov.bd'),
(3900, 428, 'Noldanga', 'নলডাঙ্গা', 'noldangaup.gaibandha.gov.bd'),
(3901, 428, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.gaibandha.gov.bd'),
(3902, 428, 'Jamalpur', 'জামালপুর', 'jamalpurup.gaibandha.gov.bd'),
(3903, 428, 'Faridpur', 'ফরিদপুর', 'faridpurup.gaibandha.gov.bd'),
(3904, 428, 'Dhaperhat', 'ধাপেরহাট', 'dhaperhatup.gaibandha.gov.bd'),
(3905, 428, 'Idilpur', 'ইদিলপুর', 'idilpurup.gaibandha.gov.bd'),
(3906, 428, 'Vatgram', 'ভাতগ্রাম', 'vatgramup.gaibandha.gov.bd'),
(3907, 428, 'Bongram', 'বনগ্রাম', 'bongramup.gaibandha.gov.bd'),
(3908, 428, 'Kamarpara', 'কামারপাড়া', 'kamarparaup.gaibandha.gov.bd'),
(3909, 428, 'Khodkomor', 'খোদকোমরপুর', 'khodkomorup.gaibandha.gov.bd'),
(3910, 429, 'Laxmipur', 'লক্ষ্মীপুর', 'laxmipurup.gaibandha.gov.bd'),
(3911, 429, 'Malibari', 'মালীবাড়ী', 'malibariup.gaibandha.gov.bd'),
(3912, 429, 'Kuptola', 'কুপতলা', 'kuptolaup.gaibandha.gov.bd'),
(3913, 429, 'Shahapara', 'সাহাপাড়া', 'shahaparaup.gaibandha.gov.bd'),
(3914, 429, 'Ballamjhar', 'বল্লমঝাড়', 'ballamjharup.gaibandha.gov.bd'),
(3915, 429, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.gaibandha.gov.bd'),
(3916, 429, 'Badiakhali', 'বাদিয়াখালী', 'badiakhaliup.gaibandha.gov.bd'),
(3917, 429, 'Boali', 'বোয়ালী', 'boaliup.gaibandha.gov.bd'),
(3918, 429, 'Ghagoa', 'ঘাগোয়া', 'ghagoaup.gaibandha.gov.bd'),
(3919, 429, 'Gidari', 'গিদারী', 'gidariup.gaibandha.gov.bd'),
(3920, 429, 'Kholahati', 'খোলাহাটী', 'kholahatiup.gaibandha.gov.bd'),
(3921, 429, 'Mollarchar', 'মোল্লারচর', 'mollarcharup.gaibandha.gov.bd'),
(3922, 429, 'Kamarjani', 'কামারজানি', 'kamarjaniup.gaibandha.gov.bd'),
(3923, 430, 'Kishoregari', 'কিশোরগাড়ী', 'kishoregariup.gaibandha.gov.bd'),
(3924, 430, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.gaibandha.gov.bd'),
(3925, 430, 'Palashbari', 'পলাশবাড়ী', 'palashbariup.gaibandha.gov.bd'),
(3926, 430, 'Barisal', 'বরিশাল', 'barisalup.gaibandha.gov.bd'),
(3927, 430, 'Mohdipur', 'মহদীপুর', 'mohdipurup.gaibandha.gov.bd'),
(3928, 430, 'Betkapa', 'বেতকাপা', 'betkapaup.gaibandha.gov.bd'),
(3929, 430, 'Pobnapur', 'পবনাপুর', 'pobnapurup.gaibandha.gov.bd'),
(3930, 430, 'Monohorpur', 'মনোহরপুর', 'monohorpurup.gaibandha.gov.bd'),
(3931, 430, 'Harinathpur', 'হরিণাথপুর', 'harinathpurup.gaibandha.gov.bd'),
(3932, 431, 'Padumsahar', 'পদুমশহর', 'padumsaharup.gaibandha.gov.bd'),
(3933, 431, 'Varotkhali', 'ভরতখালী', 'varotkhaliup.gaibandha.gov.bd'),
(3934, 431, 'Saghata', 'সাঘাটা', 'saghataup.gaibandha.gov.bd'),
(3935, 431, 'Muktinagar', 'মুক্তিনগর', 'muktinagarup.gaibandha.gov.bd'),
(3936, 431, 'Kachua', 'কচুয়া', 'kachuaup.gaibandha.gov.bd'),
(3937, 431, 'Ghuridah', 'ঘুরিদহ', 'ghuridahup.gaibandha.gov.bd'),
(3938, 431, 'Holdia', 'হলদিয়া', 'holdiaup.gaibandha.gov.bd'),
(3939, 431, 'Jumarbari', 'জুমারবাড়ী', 'jumarbariup.gaibandha.gov.bd'),
(3940, 431, 'Kamalerpara', 'কামালেরপাড়া', 'kamalerparaup.gaibandha.gov.bd'),
(3941, 431, 'Bonarpara', 'বোনারপাড়া', 'bonarparaup.gaibandha.gov.bd'),
(3942, 432, 'Kamdia', 'কামদিয়া', 'kamdiaup.gaibandha.gov.bd'),
(3943, 432, 'Katabari', 'কাটাবাড়ী', 'katabariup.gaibandha.gov.bd'),
(3944, 432, 'Shakhahar', 'শাখাহার', 'shakhaharup.gaibandha.gov.bd'),
(3945, 432, 'Rajahar', 'রাজাহার', 'rajaharup.gaibandha.gov.bd'),
(3946, 432, 'Sapmara', 'সাপমারা', 'sapmaraup.gaibandha.gov.bd'),
(3947, 432, 'Dorbosto', 'দরবস্ত ইয়নিয়ন', 'dorbostoup.gaibandha.gov.bd'),
(3948, 432, 'Talukkanupur', 'তালুককানুপুর', 'talukkanupurup.gaibandha.gov.bd'),
(3949, 432, 'Nakai', 'নাকাই', 'nakaiup.gaibandha.gov.bd'),
(3950, 432, 'Harirampur', 'হরিরামপুর', 'harirampurup.gaibandha.gov.bd'),
(3951, 432, 'Rakhalburuj', 'রাখালবুরুজ', 'rakhalburujup.gaibandha.gov.bd'),
(3952, 432, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.gaibandha.gov.bd'),
(3953, 432, 'Gumaniganj', 'গুমানীগঞ্জ', 'gumaniganjup.gaibandha.gov.bd'),
(3954, 432, 'Kamardoho', 'কামারদহ', 'kamardohoup.gaibandha.gov.bd'),
(3955, 432, 'Kochasahar', 'কোচাশহর', 'kochasaharup.gaibandha.gov.bd'),
(3956, 432, 'Shibpur', 'শিবপুর', 'shibpurup.gaibandha.gov.bd'),
(3957, 432, 'Mahimaganj', 'মহিমাগঞ্জ', 'mahimaganjup.gaibandha.gov.bd'),
(3958, 432, 'Shalmara', 'শালমারা', 'shalmaraup.gaibandha.gov.bd'),
(3959, 433, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.gaibandha.gov.bd'),
(3960, 433, 'Sonaroy', 'সোনারায়', 'sonaroyup.gaibandha.gov.bd'),
(3961, 433, 'Tarapur', 'তারাপুর', 'tarapurup.gaibandha.gov.bd'),
(3962, 433, 'Belka', 'বেলকা', 'belkaup.gaibandha.gov.bd'),
(3963, 433, 'Dohbond', 'দহবন্দ', 'dohbondup.gaibandha.gov.bd'),
(3964, 433, 'Sorbanondo', 'সর্বানন্দ', 'sorbanondoup.gaibandha.gov.bd'),
(3965, 433, 'Ramjibon', 'রামজীবন', 'ramjibonup.gaibandha.gov.bd'),
(3966, 433, 'Dhopadanga', 'ধোপাডাঙ্গা', 'dhopadangaup.gaibandha.gov.bd'),
(3967, 433, 'Chaporhati', 'ছাপরহাটী', 'chaporhatiup.gaibandha.gov.bd'),
(3968, 433, 'Shantiram', 'শান্তিরাম', 'shantiramup.gaibandha.gov.bd'),
(3969, 433, 'Konchibari', 'কঞ্চিবাড়ী', 'konchibariup.gaibandha.gov.bd'),
(3970, 433, 'Sreepur', 'শ্রীপুর', 'sreepurup.gaibandha.gov.bd'),
(3971, 433, 'Chandipur', 'চন্ডিপুর', 'chandipurup.gaibandha.gov.bd'),
(3972, 433, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gaibandha.gov.bd'),
(3973, 433, 'Haripur', 'হরিপুর', 'haripurup.gaibandha.gov.bd'),
(3974, 434, 'Kanchipara', 'কঞ্চিপাড়া', 'kanchiparaup.gaibandha.gov.bd'),
(3975, 434, 'Uria', 'উড়িয়া', 'uriaup.gaibandha.gov.bd'),
(3976, 434, 'Udakhali', 'উদাখালী', 'udakhaliup.gaibandha.gov.bd'),
(3977, 434, 'Gazaria', 'গজারিয়া', 'gazariaup.gaibandha.gov.bd'),
(3978, 434, 'Phulchari', 'ফুলছড়ি', 'phulchariup.gaibandha.gov.bd'),
(3979, 434, 'Erendabari', 'এরেন্ডাবাড়ী', 'erendabariup.gaibandha.gov.bd'),
(3980, 434, 'Fazlupur', 'ফজলুপুর', 'fazlupurup.gaibandha.gov.bd'),
(3981, 435, 'Ruhea', 'রুহিয়া', 'ruheaup.thakurgaon.gov.bd'),
(3982, 435, 'Akhanagar', 'আখানগর', 'akhanagarup.thakurgaon.gov.bd'),
(3983, 435, 'Ahcha', 'আকচা', 'ahchaup.thakurgaon.gov.bd'),
(3984, 435, 'Baragaon', 'বড়গাঁও', 'baragaonup.thakurgaon.gov.bd'),
(3985, 435, 'Balia', 'বালিয়া', 'baliaup.thakurgaon.gov.bd'),
(3986, 435, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.thakurgaon.gov.bd'),
(3987, 435, 'Chilarang', 'চিলারং', 'chilarangup.thakurgaon.gov.bd'),
(3988, 435, 'Rahimanpur', 'রহিমানপুর', 'rahimanpurup.thakurgaon.gov.bd'),
(3989, 435, 'Roypur', 'রায়পুর', 'roypurup.thakurgaon.gov.bd'),
(3990, 435, 'Jamalpur', 'জামালপুর', 'jamalpurup.thakurgaon.gov.bd'),
(3991, 435, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.thakurgaon.gov.bd'),
(3992, 435, 'Salandar', 'সালন্দর', 'salandarup.thakurgaon.gov.bd'),
(3993, 435, 'Gareya', 'গড়েয়া', 'gareyaup.thakurgaon.gov.bd'),
(3994, 435, 'Rajagaon', 'রাজাগাঁও', 'rajagaonup.thakurgaon.gov.bd'),
(3995, 435, 'Debipur', 'দেবীপুর', 'debipurup.thakurgaon.gov.bd'),
(3996, 435, 'Nargun', 'নারগুন', 'nargunup.thakurgaon.gov.bd'),
(3997, 435, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpurup.thakurgaon.gov.bd'),
(3998, 435, 'Sukhanpukhari', 'শুখানপুকুরী', 'sukhanpukhariup.thakurgaon.gov.bd'),
(3999, 435, 'Begunbari', 'বেগুনবাড়ী', 'begunbariup.thakurgaon.gov.bd'),
(4000, 435, 'Ruhia Pashchim', 'রুহিয়া পশ্চিম', 'ruhiapashchimup.thakurgaon.gov.bd'),
(4001, 435, 'Dholarhat', 'ঢোলারহাট', 'dholarhatup.thakurgaon.gov.bd'),
(4002, 436, 'Bhomradaha', 'ভোমরাদহ', 'bhomradahaup.thakurgaon.gov.bd'),
(4003, 436, 'Kosharaniganj', 'কোষারাণীগঞ্জ', 'kosharaniganjup.thakurgaon.gov.bd'),
(4004, 436, 'Khangaon', 'খনগাঁও', 'khangaonup.thakurgaon.gov.bd'),
(4005, 436, 'Saidpur', 'সৈয়দপুর', 'saidpurup.thakurgaon.gov.bd'),
(4006, 436, 'Pirganj', 'পীরগঞ্জ', 'pirganjup.thakurgaon.gov.bd'),
(4007, 436, 'Hajipur', 'হাজীপুর', 'hajipurup.thakurgaon.gov.bd'),
(4008, 436, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.thakurgaon.gov.bd'),
(4009, 436, 'Sengaon', 'সেনগাঁও', 'sengaonup.thakurgaon.gov.bd'),
(4010, 436, 'Jabarhat', 'জাবরহাট', 'jabarhatup.thakurgaon.gov.bd'),
(4011, 436, 'Bairchuna', 'বৈরচুনা', 'bairchunaup.thakurgaon.gov.bd'),
(4012, 437, 'Dhormogarh', 'ধর্মগড়', 'dhormogarhup.thakurgaon.gov.bd'),
(4013, 437, 'Nekmorod', 'নেকমরদ', 'nekmorodup.thakurgaon.gov.bd'),
(4014, 437, 'Hosengaon', 'হোসেনগাঁও', 'hosengaonup.thakurgaon.gov.bd'),
(4015, 437, 'Lehemba', 'লেহেম্বা', 'lehembaup.thakurgaon.gov.bd'),
(4016, 437, 'Bachor', 'বাচোর', 'bachorup.thakurgaon.gov.bd'),
(4017, 437, 'Kashipur', 'কাশিপুর', 'kashipurup.thakurgaon.gov.bd'),
(4018, 437, 'Ratore', 'রাতোর', 'ratoreup.thakurgaon.gov.bd'),
(4019, 437, 'Nonduar', 'নন্দুয়ার', 'nonduarup.thakurgaon.gov.bd'),
(4020, 438, 'Gedura', 'গেদুড়া', 'geduraup.thakurgaon.gov.bd'),
(4021, 438, 'Amgaon', 'আমগাঁও', 'amgaonup.thakurgaon.gov.bd'),
(4022, 438, 'Bakua', 'বকুয়া', 'bakuaup.thakurgaon.gov.bd'),
(4023, 438, 'Dangipara', 'ডাঙ্গীপাড়া', 'dangiparaup.thakurgaon.gov.bd'),
(4024, 438, 'Haripur', 'হরিপুর', 'haripurup.thakurgaon.gov.bd'),
(4025, 438, 'Bhaturia', 'ভাতুরিয়া', 'bhaturiaup.thakurgaon.gov.bd'),
(4026, 439, 'Paria', 'পাড়িয়া', 'pariaup.thakurgaon.gov.bd'),
(4027, 439, 'Charol', 'চারোল', 'charolup.thakurgaon.gov.bd'),
(4028, 439, 'Dhontola', 'ধনতলা', 'dhontolaup.thakurgaon.gov.bd'),
(4029, 439, 'Boropalashbari', 'বড়পলাশবাড়ী', 'boropalashbariup.thakurgaon.gov.bd'),
(4030, 439, 'Duosuo', 'দুওসুও', 'duosuoup.thakurgaon.gov.bd'),
(4031, 439, 'Vanor', 'ভানোর', 'vanorup.thakurgaon.gov.bd'),
(4032, 439, 'Amjankhore', 'আমজানখোর', 'amjankhoreup.thakurgaon.gov.bd'),
(4033, 439, 'Borobari', 'বড়বাড়ী', 'borobariup.thakurgaon.gov.bd'),
(4034, 440, 'Mominpur', 'মমিনপুর', 'mominpurup.rangpur.gov.bd'),
(4035, 440, 'Horidebpur', 'হরিদেবপুর', 'horidebpurup.rangpur.gov.bd'),
(4036, 440, 'Uttam', 'উত্তম', 'uttamup.rangpur.gov.bd'),
(4037, 440, 'Porshuram', 'পরশুরাম', 'porshuramup.rangpur.gov.bd'),
(4038, 440, 'Topodhan', 'তপোধন', 'topodhanup.rangpur.gov.bd'),
(4039, 440, 'Satgara', 'সাতগারা', 'satgaraup.rangpur.gov.bd'),
(4040, 440, 'Rajendrapur', 'রাজেন্দ্রপুর', 'rajendrapurup.rangpur.gov.bd'),
(4041, 440, 'Sadwapuskoroni', 'সদ্যপুস্করনী', 'sadwapuskoroniup.rangpur.gov.bd'),
(4042, 440, 'Chandanpat', 'চন্দনপাট', 'chandanpatup.rangpur.gov.bd'),
(4043, 440, 'Dorshona', 'দর্শানা', 'dorshonaup.rangpur.gov.bd'),
(4044, 440, 'Tampat', 'তামপাট', 'tampatup.rangpur.gov.bd'),
(4045, 441, 'Betgari', 'বেতগাড়ী', 'betgariup.rangpur.gov.bd'),
(4046, 441, 'Kholeya', 'খলেয়া', 'kholeyaup.rangpur.gov.bd'),
(4047, 441, 'Borobil', 'বড়বিল', 'borobilup.rangpur.gov.bd'),
(4048, 441, 'Kolcondo', 'কোলকোন্দ', 'kolcondoup.rangpur.gov.bd'),
(4049, 441, 'Gongachora', 'গংগাচড়া', 'gongachoraup.rangpur.gov.bd'),
(4050, 441, 'Gojoghonta', 'গজঘন্টা', 'gojoghontaup.rangpur.gov.bd'),
(4051, 441, 'Morneya', 'মর্ণেয়া', 'morneyaup.rangpur.gov.bd'),
(4052, 441, 'Alambiditor', 'আলমবিদিতর', 'alambiditorup.rangpur.gov.bd'),
(4053, 441, 'Lakkhitari', 'লক্ষীটারী', 'lakkhitariup.rangpur.gov.bd'),
(4054, 441, 'Nohali', 'নোহালী', 'nohaliup.rangpur.gov.bd'),
(4055, 442, 'Kurshatara', 'কুর্শা', 'kurshataraup.rangpur.gov.bd'),
(4056, 442, 'Alampur', 'আলমপুর', 'alampurup.rangpur.gov.bd'),
(4057, 442, 'Soyar', 'সয়ার', 'soyarup.rangpur.gov.bd'),
(4058, 442, 'Ikorchali', 'ইকরচালী', 'ikorchaliup.rangpur.gov.bd'),
(4059, 442, 'Hariarkuthi', 'হাড়িয়ারকুঠি', 'hariarkuthiup.rangpur.gov.bd'),
(4060, 443, 'Radhanagar', 'রাধানগর', 'radhanagarup.rangpur.gov.bd'),
(4061, 443, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.rangpur.gov.bd'),
(4062, 443, 'Modhupur', 'মধুপুর', 'modhupurup.rangpur.gov.bd'),
(4063, 443, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.ranpur.gov.bd'),
(4064, 443, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.rangpur.gov.bd'),
(4065, 443, 'Kalupara', 'কালুপাড়া', 'kaluparaup.rangpur.gov.bd'),
(4066, 443, 'Lohanipara', 'লোহানীপাড়া', 'lohaniparaup.rangpur.gov.bd'),
(4067, 443, 'Gopalpur', 'গোপালপুর', 'gopalpurup.rangpur.gov.bd'),
(4068, 443, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.rangpur.gov.bd'),
(4069, 443, 'Ramnathpurupb', 'রামনাথপুর', 'ramnathpurupb.rangpur.gov.bd'),
(4070, 444, 'Khoragach', 'খোরাগাছ', 'khoragachup.rangpur.gov.bd'),
(4071, 444, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.rangpur.gov.bd'),
(4072, 444, 'Payrabond', 'পায়রাবন্দ', 'payrabondup.rangpur.gov.bd'),
(4073, 444, 'Vangni', 'ভাংনী', 'vangniup.rangpur.gov.bd'),
(4074, 444, 'Balarhat', 'বালারহাট', 'balarhatup.rangpur.gov.bd'),
(4075, 444, 'Kafrikhal', 'কাফ্রিখাল', 'kafrikhalup.rangpur.gov.bd'),
(4076, 444, 'Latibpur', 'লতিবপুর', 'latibpurup.rangpur.gov.bd'),
(4077, 444, 'Chengmari', 'চেংমারী', 'chengmariup.rangpur.gov.bd'),
(4078, 444, 'Moyenpur', 'ময়েনপুর', 'moyenpurup.rangpur.gov.bd'),
(4079, 444, 'Baluya Masimpur', 'বালুয়া মাসিমপুর', 'baluyamasimpurup.rangpur.gov.bd'),
(4080, 444, 'Borobala', 'বড়বালা', 'borobalaup.rangpur.gov.bd'),
(4081, 444, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.rangpur.gov.bd'),
(4082, 444, 'Imadpur', 'ইমাদপুর', 'imadpurup.rangpur.gov.bd'),
(4083, 444, 'Milonpur', 'মিলনপুর', 'milonpurup.rangpur.gov.bd'),
(4084, 444, 'Mgopalpur', 'গোপালপুর', 'mgopalpurup.rangpur.gov.bd'),
(4085, 444, 'Durgapur', 'দূর্গাপুর', 'durgapurup.rangpur.gov.bd'),
(4086, 444, 'Boro Hazratpur', 'বড় হযরতপুর', 'borohazratpurup.rangpur.gov.bd'),
(4087, 445, 'Chattracol', 'চৈত্রকোল', 'chattracolup.rangpur.gov.bd'),
(4088, 445, 'Vendabari', 'ভেন্ডাবাড়ী', 'vendabariup.rangpur.gov.bd'),
(4089, 445, 'Borodargah', 'বড়দরগাহ', 'borodargahup.rangpur.gov.bd'),
(4090, 445, 'Kumedpur', 'কুমেদপুর', 'kumedpurup.rangpur.gov.bd'),
(4091, 445, 'Modankhali', 'মদনখালী', 'modankhaliup.rangpur.gov.bd'),
(4092, 445, 'Tukuria', 'টুকুরিয়া', 'tukuriaup.rangpur.gov.bd'),
(4093, 445, 'Boro Alampur', 'বড় আলমপুর', 'boroalampurup.rangpur.gov.bd'),
(4094, 445, 'Raypur', 'রায়পুর', 'raypurup.rangpur.gov.bd'),
(4095, 445, 'Pirgonj', 'পীরগঞ্জ', 'pirgonjup.rangpur.gov.bd'),
(4096, 445, 'Shanerhat', 'শানেরহাট', 'shanerhatup.rangpur.gov.bd'),
(4097, 445, 'Mithipur', 'মিঠিপুর', 'mithipurup.rangpur.gov.bd'),
(4098, 445, 'Ramnathpur', 'রামনাথপুর', 'ramnathpurup1.rangpur.gov.bd'),
(4099, 445, 'Chattra', 'চতরা', 'chattraup.rangpur.gov.bd'),
(4100, 445, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.rangpur.gov.bd'),
(4101, 445, 'Pachgachi', 'পাঁচগাছী', 'pachgachiup.rangpur.gov.bd'),
(4102, 446, 'Sarai', 'সারাই', 'saraiup.rangpur.gov.bd'),
(4103, 446, 'Balapara', 'বালাপাড়া', 'balaparaup.rangpur.gov.bd'),
(4104, 446, 'Shahidbag', 'শহীদবাগ', 'shahidbagup.rangpur.gov.bd'),
(4105, 446, 'Haragach', 'হারাগাছ', 'haragachup.rangpur.gov.bd'),
(4106, 446, 'Tepamodhupur', 'টেপামধুপুর', 'tepamodhupurup.rangpur.gov.bd'),
(4107, 446, 'Kurshaupk', 'কুর্শা', 'kurshaupk.rangpur.gov.bd'),
(4108, 447, 'Kollyani', 'কল্যাণী', 'kollyaniup.rangpur.gov.bd'),
(4109, 447, 'Parul', 'পারুল', 'parulup.rangpur.gov.bd'),
(4110, 447, 'Itakumari', 'ইটাকুমারী', 'itakumariup.rangpur.gov.bd'),
(4111, 447, 'Saula', 'ছাওলা', 'saulaup.rangpur.gov.bd'),
(4112, 447, 'Kandi', 'কান্দি', 'kandiup.rangpur.gov.bd'),
(4113, 447, 'Pirgacha', 'পীরগাছা', 'pirgachaup.rangpur.gov.bd'),
(4114, 447, 'Annodanagar', 'অন্নদানগর', 'annodanagarup.rangpur.gov.bd'),
(4115, 447, 'Tambulpur', 'তাম্বুলপুর', 'tambulpurup.rangpur.gov.bd'),
(4116, 447, 'Koikuri', 'কৈকুড়ী', 'koikuriup.rangpur.gov.bd'),
(4117, 448, 'Holokhana', 'হলোখানা', 'holokhanaup.kurigram.gov.bd'),
(4118, 448, 'Ghogadhoh', 'ঘোগাদহ', 'ghogadhohup.kurigram.gov.bd'),
(4119, 448, 'Belgacha', 'বেলগাছা', 'belgachaup.kurigram.gov.bd'),
(4120, 448, 'Mogolbasa', 'মোগলবাসা', 'mogolbasaup.kurigram.gov.bd'),
(4121, 448, 'Panchgachi', 'পাঁচগাছি', 'panchgachiup.kurigram.gov.bd'),
(4122, 448, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.kurigram.gov.bd'),
(4123, 448, 'Kanthalbari', 'কাঁঠালবাড়ী', 'kanthalbariup.kurigram.gov.bd'),
(4124, 448, 'Bhogdanga', 'ভোগডাঙ্গা', 'bhogdangaup.kurigram.gov.bd'),
(4125, 449, 'Ramkhana', 'রামখানা', 'ramkhanaup.kurigram.gov.bd'),
(4126, 449, 'Raigonj', 'রায়গঞ্জ', 'raigonjup.kurigram.gov.bd'),
(4127, 449, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.kurigram.gov.bd'),
(4128, 449, 'Berubari', 'বেরুবাড়ী', 'berubariup.kurigram.gov.bd'),
(4129, 449, 'Sontaspur', 'সন্তোষপুর', 'sontaspurup.kurigram.gov.bd'),
(4130, 449, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.kurigram.gov.bd'),
(4131, 449, 'Newyashi', 'নেওয়াশী', 'newyashiup.kurigram.gov.bd'),
(4132, 449, 'Bhitorbond', 'ভিতরবন্দ', 'bhitorbondup.kurigram.gov.bd'),
(4133, 449, 'Kaligonj', 'কালীগঞ্জ', 'kaligonjup.kurigram.gov.bd'),
(4134, 449, 'Noonkhawa', 'নুনখাওয়া', 'noonkhawaup.kurigram.gov.bd'),
(4135, 449, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.kurigram.gov.bd'),
(4136, 449, 'Kedar', 'কেদার', 'kedarup.kurigram.gov.bd'),
(4137, 449, 'Kachakata', 'কঁচাকাঁটা', 'kachakataup.kurigram.gov.bd'),
(4138, 449, 'Bollobherkhas', 'বল্লভেরখাস', 'bollobherkhasup.kurigram.gov.bd'),
(4139, 450, 'Pathordubi', 'পাথরডুবি', 'pathordubiup.kurigram.gov.bd'),
(4140, 450, 'Shilkhuri', 'শিলখুড়ি', 'shilkhuriup.kurigram.gov.bd'),
(4141, 450, 'Tilai', 'তিলাই', 'tilaiup.kurigram.gov.bd'),
(4142, 450, 'Paikarchara', 'পাইকেরছড়া', 'paikarcharaup.kurigram.gov.bd'),
(4143, 450, 'Bhurungamari', 'ভূরুঙ্গামারী', 'bhurungamariup.kurigram.gov.bd'),
(4144, 450, 'Joymonirhat', 'জয়মনিরহাট', 'joymonirhatup.kurigram.gov.bd'),
(4145, 450, 'Andharirjhar', 'আন্ধারীরঝাড়', 'andharirjharup.kurigram.gov.bd'),
(4146, 450, 'Char-Bhurungamari', 'চর-ভূরুঙ্গামারী', 'charbhurungamariup.kurigram.gov.bd'),
(4147, 450, 'Bangasonahat', 'বঙ্গসোনাহাট', 'bangasonahatup.kurigram.gov.bd'),
(4148, 450, 'Boldia', 'বলদিয়া', 'boldiaup.kurigram.gov.bd'),
(4149, 451, 'Nawdanga', 'নাওডাঙ্গা', 'nawdangaup.kurigram.gov.bd'),
(4150, 451, 'Shimulbari', 'শিমুলবাড়ী', 'shimulbariup.kurigram.gov.bd'),
(4151, 451, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.kurigram.gov.bd'),
(4152, 451, 'Baravita', 'বড়ভিটা', 'baravitaup.kurigram.gov.bd'),
(4153, 451, 'Bhangamor', 'ভাঙ্গামোড়', 'bhangamorup.kurigram.gov.bd'),
(4154, 451, 'Kashipur', 'কাশিপুর', 'kashipurup.kurigram.gov.bd'),
(4155, 452, 'Chinai', 'ছিনাই', 'chinaiup.kurigram.gov.bd'),
(4156, 452, 'Rajarhat', 'রাজারহাট', 'rajarhatup.kurigram.gov.bd'),
(4157, 452, 'Nazimkhan', 'নাজিমখাঁন', 'nazimkhanup.kurigram.gov.bd'),
(4158, 452, 'Gharialdanga', 'ঘড়িয়ালডাঙ্গা', 'gharialdangaup.kurigram.gov.bd'),
(4159, 452, 'Chakirpashar', 'চাকিরপশার', 'chakirpasharup.kurigram.gov.bd'),
(4160, 452, 'Biddanondo', 'বিদ্যানন্দ', 'biddanondoup.kurigram.gov.bd'),
(4161, 452, 'Umarmajid', 'উমর মজিদ', 'umarmajidup.kurigram.gov.bd'),
(4162, 453, 'Daldalia', 'দলদলিয়া', 'daldaliaup.kurigram.gov.bd'),
(4163, 453, 'Durgapur', 'দুর্গাপুর', 'durgapurup.kurigram.gov.bd'),
(4164, 453, 'Pandul', 'পান্ডুল', 'pandulup.kurigram.gov.bd'),
(4165, 453, 'Buraburi', 'বুড়াবুড়ী', 'buraburiup.kurigram.gov.bd'),
(4166, 453, 'Dharanibari', 'ধরণীবাড়ী', 'dharanibariup.kurigram.gov.bd'),
(4167, 453, 'Dhamsreni', 'ধামশ্রেণী', 'dhamsreniup.kurigram.gov.bd'),
(4168, 453, 'Gunaigas', 'গুনাইগাছ', 'gunaigasup.kurigram.gov.bd'),
(4169, 453, 'Bazra', 'বজরা', 'bazraup.kurigram.gov.bd'),
(4170, 453, 'Tobockpur', 'তবকপুর', 'tobockpurup.kurigram.gov.bd'),
(4171, 453, 'Hatia', 'হাতিয়া', 'hatiaup.kurigram.gov.bd'),
(4172, 453, 'Begumgonj', 'বেগমগঞ্জ', 'begumgonjup.kurigram.gov.bd'),
(4173, 453, 'Shahabiar Alga', 'সাহেবের আলগা', 'shahabiaralgaup.kurigram.gov.bd'),
(4174, 453, 'Thetrai', 'থেতরাই', 'thetraiup.kurigram.gov.bd'),
(4175, 454, 'Ranigonj', 'রাণীগঞ্জ', 'ranigonjup.kurigram.gov.bd'),
(4176, 454, 'Nayarhat', 'নয়ারহাট', 'nayarhatup.kurigram.gov.bd'),
(4177, 454, 'Thanahat', 'থানাহাট', 'thanahatup.kurigram.gov.bd'),
(4178, 454, 'Ramna', 'রমনা', 'ramnaup.kurigram.gov.bd'),
(4179, 454, 'Chilmari', 'চিলমারী', 'chilmariup.kurigram.gov.bd'),
(4180, 454, 'Austomirchar', 'অষ্টমীর চর', 'austomircharup.kurigram.gov.bd'),
(4181, 455, 'Dadevanga', 'দাঁতভাঙ্গা', 'dadevangaup.kurigram.gov.bd'),
(4182, 455, 'Shoulemari', 'শৌলমারী', 'shoulemariup.kurigram.gov.bd'),
(4183, 455, 'Bondober', 'বন্দবেড়', 'bondoberup.kurigram.gov.bd'),
(4184, 455, 'Rowmari', 'রৌমারী', 'rowmariup.kurigram.gov.bd'),
(4185, 455, 'Jadurchar', 'যাদুরচর', 'jadurcharup.kurigram.gov.bd'),
(4186, 456, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.kurigram.gov.bd'),
(4187, 456, 'Kodalkati', 'কোদালকাটি', 'kodalkatiup.kurigram.gov.bd'),
(4188, 456, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonjup.kurigram.gov.bd'),
(4189, 457, 'Kamararchor', 'কামারের চর', 'kamararchorup.sherpur.gov.bd'),
(4190, 457, 'Chorsherpur', 'চরশেরপুর', 'chorsherpurup.sherpur.gov.bd'),
(4191, 457, 'Bajitkhila', 'বাজিতখিলা', 'bajitkhilaup.sherpur.gov.bd'),
(4192, 457, 'Gajir Khamar', 'গাজির খামার', 'gajirkhamarup.sherpur.gov.bd'),
(4193, 457, 'Dhola', 'ধলা', 'dholaup.sherpur.gov.bd'),
(4194, 457, 'Pakuriya', 'পাকুরিয়া', 'pakuriyaup.sherpur.gov.bd'),
(4195, 457, 'Vatshala', 'ভাতশালা', 'vatshalaup.sherpur.gov.bd'),
(4196, 457, 'Losmonpur', 'লছমনপুর', 'losmonpurup.sherpur.gov.bd'),
(4197, 457, 'Rouha', 'রৌহা', 'rouhaup.sherpur.gov.bd'),
(4198, 457, 'Kamariya', 'কামারিয়া', 'kamariyaup.sherpur.gov.bd'),
(4199, 457, 'Chor Mochoriya', 'চর মোচারিয়া', 'chormochoriyaup.sherpur.gov.bd'),
(4200, 457, 'Chorpokhimari', 'চর পক্ষীমারি', 'chorpokhimariup.sherpur.gov.bd'),
(4201, 457, 'Betmari Ghughurakandi', 'বেতমারি ঘুঘুরাকান্দি', 'betmarighughurakandiup.sherpur.gov.bd'),
(4202, 457, 'Balairchar', 'বলাইরচর', 'balaircharup.sherpur.gov.bd'),
(4203, 458, 'Puraga', 'পোড়াগাও', 'puragauup.sherpur.gov.bd'),
(4204, 458, 'Nonni', 'নন্নী', 'nonniup.sherpur.gov.bd'),
(4205, 458, 'Morichpuran', 'মরিচপুরাণ', 'morichpuranup.sherpur.gov.bd'),
(4206, 458, 'Rajnogor', 'রাজনগর', 'rajnogorup.sherpur.gov.bd'),
(4207, 458, 'Nayabil', 'নয়াবীল', 'nayabilup.sherpur.gov.bd'),
(4208, 458, 'Ramchondrokura', 'রামচন্দ্রকুড়া', 'ramchondrokuraup.sherpur.gov.bd'),
(4209, 458, 'Kakorkandhi', 'কাকরকান্দি', 'kakorkandhiup.sherpur.gov.bd'),
(4210, 458, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabariup.sherpur.gov.bd'),
(4211, 458, 'Juganiya', 'যোগনীয়া', 'juganiyaup.sherpur.gov.bd'),
(4212, 458, 'Bagber', 'বাঘবেড়', 'bagberup.sherpur.gov.bd'),
(4213, 458, 'Koloshpar', 'কলসপাড়', 'koloshparup.sherpur.gov.bd'),
(4214, 458, 'Rupnarayankura', 'রূপনারায়নকুড়া', 'rupnarayankuraup.sherpur.gov.bd'),
(4215, 459, 'Ranishimul', 'রানীশিমুল', 'ranishimulup.sherpur.gov.bd'),
(4216, 459, 'Singabaruna', 'সিংগাবরুনা', 'singabarunaup.sherpur.gov.bd'),
(4217, 459, 'Kakilakura', 'কাকিলাকুড়া', 'kakilakuraup.sherpur.gov.bd'),
(4218, 459, 'Tatihati', 'তাতীহাটি', 'tatihatiup.sherpur.gov.bd'),
(4219, 459, 'Gosaipur', 'গোশাইপুর', 'gosaipurup.sherpur.gov.bd'),
(4220, 459, 'Sreebordi', 'শ্রীবরদী', 'sreebordiup.sherpur.gov.bd'),
(4221, 459, 'Bhelua', 'ভেলুয়া', 'bheluaup.sherpur.gov.bd'),
(4222, 459, 'Kharia Kazirchar', 'খড়িয়া কাজিরচর', 'khariakazircharup.sherpur.gov.bd'),
(4223, 459, 'Kurikahonia', 'কুড়িকাহনিয়া', 'kurikahoniaup.sherpur.gov.bd'),
(4224, 459, 'Garjaripa', 'গড়জরিপা', 'garjaripaup.sherpur.gov.bd'),
(4225, 460, 'Gonopoddi', 'গণপদ্দী', 'gonopoddiup.sherpur.gov.bd'),
(4226, 460, 'Nokla', 'নকলা', 'noklaup.sherpur.gov.bd'),
(4227, 460, 'Urpha', 'উরফা', 'urphaup.sherpur.gov.bd'),
(4228, 460, 'Gourdwar', 'গৌড়দ্বার', 'gourdwarup.sherpur.gov.bd'),
(4229, 460, 'Baneshwardi', 'বানেশ্বর্দী', 'baneshwardiup.sherpur.gov.bd'),
(4230, 460, 'Pathakata', 'পাঠাকাটা', 'pathakataup.sherpur.gov.bd'),
(4231, 460, 'Talki', 'টালকী', 'talkiup.sherpur.gov.bd'),
(4232, 460, 'Choraustadhar', 'চরঅষ্টধর', 'choraustadharup.sherpur.gov.bd'),
(4233, 460, 'Chandrakona', 'চন্দ্রকোনা', 'chandrakonaup.sherpur.gov.bd'),
(4234, 461, 'Kansa', 'কাংশা', 'kansaup.sherpur.gov.bd'),
(4235, 461, 'Dansail', 'ধানশাইল', 'dansailup.sherpur.gov.bd'),
(4236, 461, 'Nolkura', 'নলকুড়া', 'nolkuraup.sherpur.gov.bd'),
(4237, 461, 'Gouripur', 'গৌরিপুর', 'gouripurup.sherpur.gov.bd'),
(4238, 461, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigatiup.sherpur.gov.bd'),
(4239, 461, 'Hatibandha', 'হাতিবান্দা', 'hatibandhaup.sherpur.gov.bd'),
(4240, 461, 'Malijhikanda', 'মালিঝিকান্দা', 'malijhikandaup.sherpur.gov.bd'),
(4241, 462, 'Deukhola', 'দেওখোলা', 'deukholaup.mymensingh.gov.bd'),
(4242, 462, 'Naogaon', 'নাওগাঁও', 'naogaonup.mymensingh.gov.bd'),
(4243, 462, 'Putijana', 'পুটিজানা', 'putijanaup.mymensingh.gov.bd'),
(4244, 462, 'Kushmail', 'কুশমাইল', 'kushmailup.mymensingh.gov.bd'),
(4245, 462, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.mymensingh.gov.bd'),
(4246, 462, 'Bakta', 'বাক্তা', 'baktaup.mymensingh.gov.bd'),
(4247, 462, 'Rangamatia', 'রাঙ্গামাটিয়া', 'rangamatiaup.mymensingh.gov.bd'),
(4248, 462, 'Enayetpur', 'এনায়েতপুর', 'enayetpurup.mymensingh.gov.bd'),
(4249, 462, 'Kaladaha', 'কালাদহ', 'kaladahaup.mymensingh.gov.bd'),
(4250, 462, 'Radhakanai', 'রাধাকানাই', 'radhakanaiup.mymensingh.gov.bd'),
(4251, 462, 'Asimpatuli', 'আছিমপাটুলী', 'asimpatuliup.mymensingh.gov.bd'),
(4252, 462, 'Vobanipur', 'ভবানীপুর', 'vobanipurup.mymensingh.gov.bd'),
(4253, 462, 'Balian', 'বালিয়ান', 'balianup.mymensingh.gov.bd'),
(4254, 463, 'Dhanikhola', 'ধানীখোলা', 'dhanikholaup.mymensingh.gov.bd'),
(4255, 463, 'Bailor', 'বৈলর', 'bailorup.mymensingh.gov.bd'),
(4256, 463, 'Kanthal', 'কাঁঠাল', 'kanthalup.mymensingh.gov.bd'),
(4257, 463, 'Kanihari', 'কানিহারী', 'kanihariup.mymensingh.gov.bd'),
(4258, 463, 'Trishal', 'ত্রিশাল', 'trishalup.mymensingh.gov.bd'),
(4259, 463, 'Harirampur', 'হরিরামপুর', 'harirampurup.mymensingh.gov.bd'),
(4260, 463, 'Sakhua', 'সাখুয়া', 'www.sakhuaup.mymensingh.gov.bd'),
(4261, 463, 'Balipara', 'বালিপাড়া', 'baliparaup.mymensingh.gov.bd'),
(4262, 463, 'Mokshapur', 'মোক্ষপুর', 'mokshapurup.mymensingh.gov.bd'),
(4263, 463, 'Mathbari', 'মঠবাড়ী', 'mathbariup.mymensingh.gov.bd'),
(4264, 463, 'Amirabari', 'আমিরাবাড়ী', 'amirabariup.mymensingh.gov.bd'),
(4265, 463, 'Rampur', 'রামপুর', 'rampurup.mymensingh.gov.bd'),
(4266, 464, 'Uthura', 'উথুরা', 'uthuraup.mymensingh.gov.bd'),
(4267, 464, 'Meduari', 'মেদুয়ারী', 'meduariup.mymensingh.gov.bd'),
(4268, 464, 'Varadoba', 'ভরাডোবা', 'varadobaup.mymensingh.gov.bd'),
(4269, 464, 'Dhitpur', 'ধীতপুর', 'dhitpurup.mymensingh.gov.bd'),
(4270, 464, 'Dakatia', 'ডাকাতিয়া', 'dakatiaup.mymensingh.gov.bd'),
(4271, 464, 'Birunia', 'বিরুনিয়া', 'biruniaup.mymensingh.gov.bd'),
(4272, 464, 'Bhaluka', 'ভালুকা', 'bhalukaup.mymensingh.gov.bd'),
(4273, 464, 'Mallikbari', 'মল্লিকবাড়ী', 'mallikbariup.mymensingh.gov.bd'),
(4274, 464, 'Kachina', 'কাচিনা', 'kachinaup.mymensingh.gov.bd'),
(4275, 464, 'Habirbari', 'হবিরবাড়ী', 'habirbariup.mymensingh.gov.bd'),
(4276, 464, 'Rajoi', 'রাজৈ', 'rajoiup.mymensingh.gov.bd'),
(4277, 465, 'Dulla', 'দুল্লা', 'dullaup.mymensingh.gov.bd'),
(4278, 465, 'Borogram', 'বড়গ্রাম', 'borogramup.mymensingh.gov.bd'),
(4279, 465, 'Tarati', 'তারাটি', 'taratiup.mymensingh.gov.bd'),
(4280, 465, 'Kumargata', 'কুমারগাতা', 'kumargataup.mymensingh.gov.bd'),
(4281, 465, 'Basati', 'বাশাটি', 'basatiup.mymensingh.gov.bd'),
(4282, 465, 'Mankon', 'মানকোন', 'mankonup.mymensingh.gov.bd'),
(4283, 465, 'Ghoga', 'ঘোগা', 'ghogaup.mymensingh.gov.bd'),
(4284, 465, 'Daogaon', 'দাওগাঁও', 'daogaonup.mymensingh.gov.bd'),
(4285, 465, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.mymensingh.gov.bd'),
(4286, 465, 'Kheruajani', 'খেরুয়াজানী', 'kheruajaniup.mymensingh.gov.bd'),
(4287, 466, 'Austadhar', 'অষ্টধার', 'austadharup.mymensingh.gov.bd'),
(4288, 466, 'Bororchar', 'বোররচর', 'bororcharup.mymensingh.gov.bd'),
(4289, 466, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.mymensingh.gov.bd'),
(4290, 466, 'Aqua', 'আকুয়া', 'aquaup.mymensingh.gov.bd'),
(4291, 466, 'Khagdohor', 'খাগডহর', 'khagdohorup.mymensingh.gov.bd'),
(4292, 466, 'Charnilaxmia', 'চরনিলক্ষিয়া', 'charnilaxmiaup.mymensingh.gov.bd'),
(4293, 466, 'Kushtia', 'কুষ্টিয়া', 'kushtiaup.mymensingh.gov.bd'),
(4294, 466, 'Paranganj', 'পরানগঞ্জ', 'paranganjup.mymensingh.gov.bd'),
(4295, 466, 'Sirta', 'সিরতা', 'sirtaup.mymensingh.gov.bd'),
(4296, 466, 'Char Ishwardia', 'চর ঈশ্বরদিয়া', 'charishwardiaup.mymensingh.gov.bd'),
(4297, 466, 'Ghagra', 'ঘাগড়া', 'ghagraup.mymensingh.gov.bd'),
(4298, 466, 'Vabokhali', 'ভাবখালী', 'vabokhaliup.mymensingh.gov.bd'),
(4299, 466, 'Boyra', 'বয়ড়া', 'boyraup.mymensingh.gov.bd'),
(4300, 467, 'Dakshin Maijpara', 'দক্ষিণ মাইজপাড়া', 'dakshinmaijparaup.mymensingh.gov.bd'),
(4301, 467, 'Gamaritola', 'গামারীতলা', 'gamaritolaup.mymensingh.gov.bd'),
(4302, 467, 'Dhobaura', 'ধোবাউড়া', 'dhobauraup.mymensingh.gov.bd'),
(4303, 467, 'Porakandulia', 'পোড়াকান্দুলিয়া', 'porakanduliaup.mymensingh.gov.bd'),
(4304, 467, 'Goatala', 'গোয়াতলা', 'goatalaup.mymensingh.gov.bd'),
(4305, 467, 'Ghoshgaon', 'ঘোষগাঁও', 'ghoshgaonup.mymensingh.gov.bd'),
(4306, 467, 'Baghber', 'বাঘবেড়', 'baghberup.mymensingh.gov.bd'),
(4307, 468, 'Rambhadrapur', 'রামভদ্রপুর', 'rambhadrapurup.mymensingh.gov.bd'),
(4308, 468, 'Sondhara', 'ছনধরা', 'sondharaup.mymensingh.gov.bd'),
(4309, 468, 'Vaitkandi', 'ভাইটকান্দি', 'vaitkandiup.mymensingh.gov.bd'),
(4310, 468, 'Singheshwar', 'সিংহেশ্বর', 'singheshwarup.mymensingh.gov.bd'),
(4311, 468, 'Phulpur', 'ফুলপুর', 'phulpurup.mymensingh.gov.bd'),
(4312, 474, 'Banihala', 'বানিহালা', 'banihalaup.mymensingh.gov.bd'),
(4313, 474, 'Biska', 'বিস্কা', 'biskaup.mymensingh.gov.bd'),
(4314, 468, 'Baola', 'বওলা', 'baolaup.mymensingh.gov.bd'),
(4315, 468, 'Payari', 'পয়ারী', 'payariup.mymensingh.gov.bd'),
(4316, 468, 'Balia', 'বালিয়া', 'baliaup.mymensingh.gov.bd'),
(4317, 468, 'Rahimganj', 'রহিমগঞ্জ', 'rahimganjup.mymensingh.gov.bd'),
(4318, 474, 'Balikha', 'বালিখা', 'balikhaup.mymensingh.gov.bd'),
(4319, 474, 'Kakni', 'কাকনী', 'kakniup.mymensingh.gov.bd'),
(4320, 474, 'Dhakua', 'ঢাকুয়া', 'dhakuaup.mymensingh.gov.bd'),
(4321, 468, 'Rupasi', 'রূপসী', 'rupasiup.mymensingh.gov.bd'),
(4322, 474, 'Tarakanda', 'তারাকান্দা', 'tarakandaup.mymensingh.gov.bd'),
(4323, 474, 'Galagaon', 'গালাগাঁও', 'galagaonup.mymensingh.gov.bd'),
(4324, 474, 'Kamargaon', 'কামারগাঁও', 'kamargaonup.mymensingh.gov.bd'),
(4325, 474, 'Kamaria', 'কামারিয়া', 'kamariaup.mymensingh.gov.bd'),
(4326, 474, 'Rampur', 'রামপুর', 'rampurup2.mymensingh.gov.bd'),
(4327, 469, 'Bhubankura', 'ভূবনকুড়া', 'bhubankuraup.mymensingh.gov.bd'),
(4328, 469, 'Jugli', 'জুগলী', 'jugliup.mymensingh.gov.bd'),
(4329, 469, 'Kaichapur', 'কৈচাপুর', 'kaichapurup.mymensingh.gov.bd'),
(4330, 469, 'Haluaghat', 'হালুয়াঘাট', 'haluaghatup.mymensingh.gov.bd'),
(4331, 469, 'Gazirbhita', 'গাজিরভিটা', 'gazirbhitaup.mymensingh.gov.bd'),
(4332, 469, 'Bildora', 'বিলডোরা', 'bildoraup.mymensingh.gov.bd'),
(4333, 469, 'Sakuai', 'শাকুয়াই', 'sakuaiup.mymensingh.gov.bd'),
(4334, 469, 'Narail', 'নড়াইল', 'narailup.mymensingh.gov.bd'),
(4335, 469, 'Dhara', 'ধারা', 'dharaup.mymensingh.gov.bd'),
(4336, 469, 'Dhurail', 'ধুরাইল', 'dhurailup.mymensingh.gov.bd'),
(4337, 469, 'Amtoil', 'আমতৈল', 'amtoilup.mymensingh.gov.bd'),
(4338, 469, 'Swadeshi', 'স্বদেশী', 'swadeshiup.mymensingh.gov.bd'),
(4339, 470, 'Sahanati', 'সহনাটি', 'sahanatiup.mymensingh.gov.bd'),
(4340, 470, 'Achintapur', 'অচিন্তপুর', 'achintapurup.mymensingh.gov.bd'),
(4341, 470, 'Mailakanda', 'মইলাকান্দা', 'mailakandaup.mymensingh.gov.bd'),
(4342, 470, 'Bokainagar', 'বোকাইনগর', 'bokainagarup.mymensingh.gov.bd'),
(4343, 470, 'Gouripur', 'গৌরীপুর', 'gouripurup.mymensingh.gov.bd'),
(4344, 470, 'Maoha', 'মাওহা', 'maohaup.mymensingh.gov.bd'),
(4345, 470, 'Ramgopalpur', 'রামগোপালপুর', 'ramgopalpurup.mymensingh.gov.bd'),
(4346, 470, 'Douhakhola', 'ডৌহাখলা', 'douhakholaup.mymensingh.gov.bd'),
(4347, 470, 'Bhangnamari', 'ভাংনামারী', 'bhangnamariup.mymensingh.gov.bd'),
(4348, 470, 'Sidhla', 'সিধলা', 'sidhlaup.mymensingh.gov.bd'),
(4349, 471, 'Rasulpur', 'রসুলপুর', 'rasulpurup.mymensingh.gov.bd'),
(4350, 471, 'Barobaria', 'বারবারিয়া', 'barobariaup.mymensingh.gov.bd'),
(4351, 471, 'Charalgi', 'চরআলগী', 'charalgiup.mymensingh.gov.bd'),
(4352, 471, 'Saltia', 'সালটিয়া', 'saltiaup.mymensingh.gov.bd'),
(4353, 471, 'Raona', 'রাওনা', 'raonaup.mymensingh.gov.bd'),
(4354, 471, 'Longair', 'লংগাইর', 'longairup.mymensingh.gov.bd'),
(4355, 471, 'Paithol', 'পাইথল', 'paitholup.mymensingh.gov.bd'),
(4356, 471, 'Gafargaon', 'গফরগাঁও', 'gafargaonup.mymensingh.gov.bd'),
(4357, 471, 'Josora', 'যশরা', 'josoraup.mymensingh.gov.bd'),
(4358, 471, 'Moshakhali', 'মশাখালী', 'moshakhaliup.mymensingh.gov.bd'),
(4359, 471, 'Panchbagh', 'পাঁচবাগ', 'panchbaghup.mymensingh.gov.bd'),
(4360, 471, 'Usthi', 'উস্থি', 'usthiup.mymensingh.gov.bd'),
(4361, 471, 'Dotterbazar', 'দত্তেরবাজার', 'dotterbazarup.mymensingh.gov.bd'),
(4362, 471, 'Niguari', 'নিগুয়ারী', 'niguariup.mymensingh.gov.bd'),
(4363, 471, 'Tangabo', 'টাংগাব', 'tangaboup.mymensingh.gov.bd'),
(4364, 472, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganjup.mymensingh.gov.bd'),
(4365, 472, 'Sarisha', 'সরিষা', 'sarishaup.mymensingh.gov.bd'),
(4366, 472, 'Sohagi', 'সোহাগী', 'sohagiup.mymensingh.gov.bd'),
(4367, 472, 'Atharabari', 'আঠারবাড়ী', 'atharabariup.mymensingh.gov.bd'),
(4368, 472, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.mymensingh.gov.bd'),
(4369, 472, 'Maijbagh', 'মাইজবাগ', 'maijbaghup.mymensingh.gov.bd'),
(4370, 472, 'Magtula', 'মগটুলা', 'magtulaup.mymensingh.gov.bd'),
(4371, 472, 'Jatia', 'জাটিয়া', 'jatiaup.mymensingh.gov.bd'),
(4372, 472, 'Uchakhila', 'উচাখিলা', 'uchakhilaup.mymensingh.gov.bd'),
(4373, 472, 'Tarundia', 'তারুন্দিয়া', 'tarundiaup.mymensingh.gov.bd'),
(4374, 472, 'Barahit', 'বড়হিত', 'barahitup.mymensingh.gov.bd'),
(4375, 473, 'Batagoir', 'বেতাগৈর', 'batagoirup.mymensingh.gov.bd'),
(4376, 473, 'Nandail', 'নান্দাইল', 'nandailup.mymensingh.gov.bd'),
(4377, 473, 'Chandipasha', 'চন্ডীপাশা', 'chandipashaup.mymensingh.gov.bd'),
(4378, 473, 'Gangail', 'গাংগাইল', 'gangailup.mymensingh.gov.bd'),
(4379, 473, 'Rajgati', 'রাজগাতী', 'rajgatiup.mymensingh.gov.bd'),
(4380, 473, 'Muajjempur', 'মোয়াজ্জেমপুর', 'muajjempurup.mymensingh.gov.bd'),
(4381, 473, 'Sherpur', 'শেরপুর', 'sherpurup.mymensingh.gov.bd'),
(4382, 473, 'Singroil', 'সিংরইল', 'singroilup.mymensingh.gov.bd'),
(4383, 473, 'Achargaon', 'আচারগাঁও', 'achargaonup.mymensingh.gov.bd'),
(4384, 473, 'Mushulli', 'মুশুল্লী', 'mushulliup.mymensingh.gov.bd'),
(4385, 473, 'Kharua', 'খারুয়া', 'kharuaup.mymensingh.gov.bd'),
(4386, 473, 'Jahangirpur', 'জাহাঙ্গীরপুর', 'jahangirpurup.mymensingh.gov.bd'),
(4387, 475, 'Kendua', 'কেন্দুয়া', 'kenduaup.jamalpur.gov.bd'),
(4388, 475, 'Sharifpur', 'শরিফপুর', 'sharifpurup.jamalpur.gov.bd'),
(4389, 475, 'Laxirchar', 'লক্ষীরচর', 'laxircharup.jamalpur.gov.bd'),
(4390, 475, 'Tolshirchar', 'তুলশীরচর', 'tolshircharup.jamalpur.gov.bd'),
(4391, 475, 'Itail', 'ইটাইল', 'itailup.jamalpur.gov.bd'),
(4392, 475, 'Narundi', 'নরুন্দী', 'narundiup.jamalpur.gov.bd'),
(4393, 475, 'Ghorada', 'ঘোড়াধাপ', 'ghoradapup.jamalpur.gov.bd'),
(4394, 475, 'Bashchara', 'বাশঁচড়া', 'bashcharaup.jamalpur.gov.bd'),
(4395, 475, 'Ranagacha', 'রানাগাছা', 'ranagachaup.jamalpur.gov.bd'),
(4396, 475, 'Sheepur', 'শ্রীপুর', 'sheepurup.jamalpur.gov.bd'),
(4397, 475, 'Shahbajpur', 'শাহবাজপুর', 'shahbajpurup.jamalpur.gov.bd'),
(4398, 475, 'Titpalla', 'তিতপল্লা', 'titpallaup.jamalpur.gov.bd'),
(4399, 475, 'Mesta', 'মেষ্টা', 'mestaup.jamalpur.gov.bd'),
(4400, 475, 'Digpait', 'দিগপাইত', 'digpaitup.jamalpur.gov.bd'),
(4401, 475, 'Rashidpur', 'রশিদপুর', 'rashidpurup.jamalpur.gov.bd'),
(4402, 476, 'Durmot', 'দুরমুট', 'durmotup.jamalpur.gov.bd'),
(4403, 476, 'Kulia', 'কুলিয়া', 'kuliaup.jamalpur.gov.bd'),
(4404, 476, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.jamalpur.gov.bd'),
(4405, 476, 'Nangla', 'নাংলা', 'nanglaup.jamalpur.gov.bd'),
(4406, 476, 'Nayanagar', 'নয়ানগর', 'nayanagarup.jamalpur.gov.bd'),
(4407, 476, 'Adra', 'আদ্রা', 'adraup.jamalpur.gov.bd'),
(4408, 476, 'Charbani Pakuria', 'চরবানী পাকুরিয়া', 'charbanipakuriaup.jamalpur.gov.bd'),
(4409, 476, 'Fulkucha', 'ফুলকোচা', 'fulkuchaup.jamalpur.gov.bd'),
(4410, 476, 'Ghuserpara', 'ঘোষেরপাড়া', 'ghuserparaup.jamalpur.gov.bd'),
(4411, 476, 'Jhaugara', 'ঝাউগড়া', 'jhaugaraup.jamalpur.gov.bd'),
(4412, 476, 'Shuampur', 'শ্যামপুর', 'shuampurup.jamalpur.gov.bd'),
(4413, 477, 'Kulkandi', 'কুলকান্দি', 'kulkandiup.jamalpur.gov.bd'),
(4414, 477, 'Belghacha', 'বেলগাছা', 'belghachaup.jamalpur.gov.bd'),
(4415, 477, 'Chinaduli', 'চিনাডুলী', 'chinaduliup.jamalpur.gov.bd'),
(4416, 477, 'Shapdari', 'সাপধরী', 'shapdariup.jamalpur.gov.bd'),
(4417, 477, 'Noarpara', 'নোয়ারপাড়া', 'noarparaup.jamalpur.gov.bd'),
(4418, 477, 'Islampur', 'ইসলামপুর', 'islampurup.jamalpur.gov.bd'),
(4419, 477, 'Partharshi', 'পাথশী', 'partharshiup.jamalpur.gov.bd'),
(4420, 477, 'Palabandha', 'পলবান্ধা', 'palabandhaup.jamalpur.gov.bd'),
(4421, 477, 'Gualerchar', 'গোয়ালেরচর', 'gualercharup.jamalpur.gov.bd'),
(4422, 477, 'Gaibandha', 'গাইবান্ধা', 'gaibandhaup.jamalpur.gov.bd'),
(4423, 477, 'Charputimari', 'চরপুটিমারী', 'charputimariup.jamalpur.gov.bd'),
(4424, 477, 'Chargualini', 'চরগোয়ালীনি', 'chargualiniup.jamalpur.gov.bd'),
(4425, 478, 'Dungdhara', 'ডাংধরা', 'dungdharaup.jamalpur.gov.bd'),
(4426, 478, 'Char Amkhawa', 'চর আমখাওয়া', 'charamkhawaup.jamalpur.gov.bd'),
(4427, 478, 'Parram Rampur', 'পাররাম রামপুর', 'parramrampurup.jamalpur.gov.bd'),
(4428, 478, 'Hatibanga', 'হাতীভাঙ্গা', 'hatibangaup.jamalpur.gov.bd'),
(4429, 478, 'Bahadurabad', 'বাহাদুরাবাদ', 'bahadurabadup.jamalpur.gov.bd'),
(4430, 478, 'Chikajani', 'চিকাজানী', 'chikajaniup.jamalpur.gov.bd'),
(4431, 478, 'Chukaibari', 'চুকাইবাড়ী', 'chukaibariup.jamalpur.gov.bd'),
(4432, 478, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonjup.jamalpur.gov.bd'),
(4433, 479, 'Satpoa', 'সাতপোয়া', 'satpoaup.jamalpur.gov.bd'),
(4434, 479, 'Pogaldigha', 'পোগলদিঘা', 'pogaldighaup.jamalpur.gov.bd'),
(4435, 479, 'Doail', 'ডোয়াইল', 'doailup.jamalpur.gov.bd'),
(4436, 479, 'Aona', 'আওনা', 'aonaup.jamalpur.gov.bd'),
(4437, 479, 'Pingna', 'পিংনা', 'pingnaup.jamalpur.gov.bd'),
(4438, 479, 'Bhatara', 'ভাটারা', 'bhataraup.jamalpur.gov.bd'),
(4439, 479, 'Kamrabad', 'কামরাবাদ', 'kamrabadup.jamalpur.gov.bd'),
(4440, 479, 'Mahadan', 'মহাদান', 'mahadanup.jamalpur.gov.bd'),
(4441, 480, 'Char Pakerdah', 'চর পাকেরদহ', 'charpakerdahup.jamalpur.gov.bd'),
(4442, 480, 'Karaichara', 'কড়ইচড়া', 'karaicharaup.jamalpur.gov.bd'),
(4443, 480, 'Gunaritala', 'গুনারীতলা', 'gunaritalaup.jamalpur.gov.bd'),
(4444, 480, 'Balijuri', 'বালিজুড়ী', 'balijuriup.jamalpur.gov.bd'),
(4445, 480, 'Jorekhali', 'জোড়খালী', 'jorekhaliup.jamalpur.gov.bd'),
(4446, 480, 'Adarvita', 'আদারভিটা', 'adarvitaup.jamalpur.gov.bd'),
(4447, 480, 'Sidhuli', 'সিধুলী', 'sidhuliup.jamalpur.gov.bd'),
(4448, 481, 'Danua', 'ধানুয়া', 'danuaup.jamalpur.gov.bd'),
(4449, 481, 'Bagarchar', 'বগারচর', 'bagarcharup.jamalpur.gov.bd'),
(4450, 481, 'Battajore', 'বাট্রাজোড়', 'battajoreup.jamalpur.gov.bd'),
(4451, 481, 'Shadurpara', 'সাধুরপাড়া', 'shadurparaup.jamalpur.gov.bd'),
(4452, 481, 'Bakshigonj', 'বকসীগঞ্জ', 'bakshigonjup.jamalpur.gov.bd'),
(4453, 481, 'Nilakhia', 'নিলক্ষিয়া', 'nilakhiaup.jamalpur.gov.bd'),
(4454, 481, 'Merurchar', 'মেরুরচর', 'merurcharup.jamalpur.gov.bd'),
(4455, 482, 'Asma', 'আসমা', 'asma.netrokona.gov.bd'),
(4456, 482, 'Chhiram', 'চিরাম', 'chhiram.netrokona.gov.bd'),
(4457, 482, 'Baushi', 'বাউশী', 'baushiup.netrokona.gov.bd'),
(4458, 482, 'Barhatta', 'বারহাট্টা', 'barhattaup.netrokona.gov.bd'),
(4459, 482, 'Raypur', 'রায়পুর', 'raypurup.netrokona.gov.bd'),
(4460, 482, 'Sahata', 'সাহতা', 'sahataup.netrokona.gov.bd'),
(4461, 482, 'Singdha', 'সিংধা', 'singdhaup.netrokona.gov.bd'),
(4462, 483, 'Durgapur', 'দূর্গাপুর', 'durgapurup.netrokona.gov.bd'),
(4463, 483, 'Kakoirgora', 'কাকৈরগড়া', 'kakoirgoraup.netrokona.gov.bd'),
(4464, 483, 'Kullagora', 'কুল্লাগড়া', 'kullagoraup.netrokona.gov.bd'),
(4465, 483, 'Chandigarh', 'চণ্ডিগড়', 'chandigarhup.netrokona.gov.bd'),
(4466, 483, 'Birisiri', 'বিরিশিরি', 'birisiriup.netrokona.gov.bd'),
(4467, 483, 'Bakaljora', 'বাকলজোড়া', 'bakaljoraup.netrokona.gov.bd'),
(4468, 483, 'Gawkandia', 'গাঁওকান্দিয়া', 'gawkandiaup.netrokona.gov.bd'),
(4469, 484, 'Asujia', 'আশুজিয়া', 'asujiaup.netrokona.gov.bd'),
(4470, 484, 'Dalpa', 'দলপা', 'dalpaup.netrokona.gov.bd'),
(4471, 484, 'Goraduba', 'গড়াডোবা', 'goradubaup.netrokona.gov.bd'),
(4472, 484, 'Gonda', 'গণ্ডা', 'gondaup.netrokona.gov.bd'),
(4473, 484, 'Sandikona', 'সান্দিকোনা', 'sandikonaup.netrokona.gov.bd'),
(4474, 484, 'Maska', 'মাসকা', 'maskaup.netrokona.gov.bd'),
(4475, 484, 'Bolaishimul', 'বলাইশিমুল', 'bolaishimulup.netrokona.gov.bd'),
(4476, 484, 'Noapara', 'নওপাড়া', 'noaparaup.netrokona.gov.bd'),
(4477, 484, 'Kandiura', 'কান্দিউড়া', 'kandiuraup.netrokona.gov.bd'),
(4478, 484, 'Chirang', 'চিরাং', 'chirangup.netrokona.gov.bd'),
(4479, 484, 'Roailbari Amtala', 'রোয়াইলবাড়ী আমতলা', 'roailbariamtalaup.netrokona.gov.bd'),
(4480, 484, 'Paikura', 'পাইকুড়া', 'paikuraup.netrokona.gov.bd'),
(4481, 484, 'Muzafarpur', 'মোজাফরপুর', 'muzafarpurup.netrokona.gov.bd'),
(4482, 485, 'Shormushia', 'স্বরমুশিয়া', 'shormushiaup.netrokona.gov.bd'),
(4483, 485, 'Shunoi', 'শুনই', 'shunoiup.netrokona.gov.bd'),
(4484, 485, 'Lunesshor', 'লুনেশ্বর', 'lunesshorup.netrokona.gov.bd'),
(4485, 485, 'Baniyajan', 'বানিয়াজান', 'baniyajanup.netrokona.gov.bd'),
(4486, 485, 'Teligati', 'তেলিগাতী', 'teligatiup.netrokona.gov.bd'),
(4487, 485, 'Duoj', 'দুওজ', 'duojup.netrokona.gov.bd'),
(4488, 485, 'Sukhari', 'সুখারী', 'sukhariup.netrokona.gov.bd'),
(4489, 486, 'Fathepur', 'ফতেপুর', 'fathepurup.netrokona.gov.bd'),
(4490, 486, 'Nayekpur', 'নায়েকপুর', 'nayekpurup.netrokona.gov.bd'),
(4491, 486, 'Teosree', 'তিয়শ্রী', 'teosreeup.netrokona.gov.bd'),
(4492, 486, 'Magan', 'মাঘান', 'maganup.netrokona.gov.bd'),
(4493, 486, 'Gobindasree', 'গেবিন্দশ্রী', 'gobindasreeup.netrokona.gov.bd'),
(4494, 486, 'Madan', 'মদন', 'madanup.netrokona.gov.bd'),
(4495, 486, 'Chandgaw', 'চানগাঁও', 'chandgawup.netrokona.gov.bd'),
(4496, 486, 'Kytail', 'কাইটাল', 'kytailup.netrokona.gov.bd'),
(4497, 487, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.netrokona.gov.bd'),
(4498, 487, 'Nogor', 'নগর', 'nogorup.netrokona.gov.bd'),
(4499, 487, 'Chakua', 'চাকুয়া', 'chakuaup.netrokona.gov.bd'),
(4500, 487, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuriup.netrokona.gov.bd'),
(4501, 487, 'Mendipur', 'মেন্দিপুর', 'mendipurup.netrokona.gov.bd'),
(4502, 487, 'Gazipur', 'গাজীপুর', 'gazipurup.netrokona.gov.bd'),
(4503, 488, 'Koilati', 'কৈলাটী', 'koilatiup.netrokona.gov.bd'),
(4504, 488, 'Najirpur', 'নাজিরপুর', 'najirpurup.netrokona.gov.bd'),
(4505, 488, 'Pogla', 'পোগলা', 'poglaup.netrokona.gov.bd'),
(4506, 488, 'Kolmakanda', 'কলমাকান্দা', 'kolmakandaup.netrokona.gov.bd'),
(4507, 488, 'Rongchati', 'রংছাতি', 'rongchatiup.netrokona.gov.bd'),
(4508, 488, 'Lengura', 'লেংগুরা', 'lenguraup.netrokona.gov.bd'),
(4509, 488, 'Borokhapon', 'বড়খাপন', 'borokhaponup.netrokona.gov.bd'),
(4510, 488, 'Kharnoi', 'খারনৈ', 'kharnoiup.netrokona.gov.bd'),
(4511, 489, 'Borokashia Birampur', 'বড়কাশিয়া বিরামপুর', 'borokashiabirampurup.netrokona.gov.bd');
INSERT INTO `unions` (`id`, `upazilla_id`, `name`, `bn_name`, `url`) VALUES
(4512, 489, 'Borotoli Banihari', 'বড়তলী বানিহারী', 'borotolibanihariup.netrokona.gov.bd'),
(4513, 489, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.netrokona.gov.bd'),
(4514, 489, 'Maghan Siadar', 'মাঘান সিয়াদার', 'maghansiadarup.netrokona.gov.bd'),
(4515, 489, 'Somaj Sohildeo', 'সমাজ সহিলদেও', 'somajsohildeoup.netrokona.gov.bd'),
(4516, 489, 'Suair', 'সুয়াইর', 'suairup.netrokona.gov.bd'),
(4517, 489, 'Gaglajur', 'গাগলাজুর', 'gaglajurup.netrokona.gov.bd'),
(4518, 490, 'Khalishaur', 'খলিশাউড়', 'khalishaurup.netrokona.gov.bd'),
(4519, 490, 'Ghagra', 'ঘাগড়া', 'ghagraup.netrokona.gov.bd'),
(4520, 490, 'Jaria', 'জারিয়া', 'jariaup.netrokona.gov.bd'),
(4521, 490, 'Narandia', 'নারান্দিয়া', 'narandiaup.netrokona.gov.bd'),
(4522, 490, 'Bishkakuni', 'বিশকাকুনী', 'bishkakuniup.netrokona.gov.bd'),
(4523, 490, 'Bairaty', 'বৈরাটী', 'bairaty.netrokona.gov.bd'),
(4524, 490, 'Hogla', 'হোগলা', 'hoglaup.netrokona.gov.bd'),
(4525, 490, 'Gohalakanda', 'গোহালাকান্দা', 'gohalakandaup.netrokona.gov.bd'),
(4526, 490, 'Dhalamulgaon', 'ধলামুলগাঁও', 'dhalamulgaonup.netrokona.gov.bd'),
(4527, 490, 'Agia', 'আগিয়া', 'agia.netrokona.gov.bd'),
(4528, 490, 'Purbadhala', 'পূর্বধলা', 'purbadhalaup.netrokona.gov.bd'),
(4529, 491, 'Chollisha', 'চল্লিশা', 'chollishaup.netrokona.gov.bd'),
(4530, 491, 'Kailati', 'কাইলাটি', 'kailatiup.netrokona.gov.bd'),
(4531, 491, 'Dokkhin Bishiura', 'দক্ষিণ বিশিউড়া', 'dokkhinbishiuraup.netrokona.gov.bd'),
(4532, 491, 'Modonpur', 'মদনপুর', 'modonpurup.netrokona.gov.bd'),
(4533, 491, 'Amtola', 'আমতলা', 'amtolaup.netrokona.gov.bd'),
(4534, 491, 'Lokkhiganj', 'লক্ষীগঞ্জ', 'lokkhiganj.netrokona.gov.bd'),
(4535, 491, 'Singher Bangla', 'সিংহের বাংলা', 'singherbanglaup.netrokona.gov.bd'),
(4536, 491, 'Thakurakona', 'ঠাকুরাকোণা', 'thakurakonaup.netrokona.gov.bd'),
(4537, 491, 'Mougati', 'মৌগাতি', 'mougatiup.netrokona.gov.bd'),
(4538, 491, 'Rouha', 'রৌহা', 'rouhaup.netrokona.gov.bd'),
(4539, 491, 'Medni', 'মেদনী', 'medniup.netrokona.gov.bd'),
(4540, 491, 'Kaliara Babragati', 'কালিয়ারা গাবরাগাতি', 'kaliaragabragatiup.netrokona.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Piece', 1, '2024-02-07 07:25:54', NULL),
(10, 'Stripe', 1, '2024-02-07 07:25:59', NULL),
(11, 'Box', 1, '2024-02-07 07:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(3) NOT NULL,
  `district_id` int(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `url`) VALUES
(1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd'),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd'),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd'),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd'),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd'),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd'),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd'),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd'),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd'),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd'),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd'),
(12, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd'),
(13, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd'),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd'),
(15, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd'),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd'),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd'),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd'),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd'),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd'),
(21, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd'),
(22, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd'),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd'),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd'),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd'),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd'),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd'),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd'),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd'),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd'),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd'),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    '),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd'),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd'),
(35, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd'),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd'),
(37, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd'),
(38, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd'),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd'),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd'),
(41, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd'),
(42, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd'),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd'),
(44, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd'),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd'),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd'),
(47, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd'),
(48, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd'),
(49, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd'),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd'),
(51, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd'),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd'),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd'),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd'),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd'),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd'),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd'),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd'),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd'),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd'),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd'),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd'),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd'),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd'),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd'),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd'),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd'),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd'),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd'),
(70, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd'),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd'),
(72, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd'),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd'),
(74, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd'),
(75, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd'),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd'),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd'),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd'),
(79, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd'),
(80, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd'),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd'),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd'),
(83, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd'),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd'),
(85, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd'),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd'),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd'),
(88, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd'),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd'),
(90, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd'),
(91, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd'),
(92, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd'),
(93, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd'),
(94, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd'),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd'),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd'),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd'),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd'),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd'),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd'),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd'),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd'),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd'),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd'),
(105, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd'),
(106, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd'),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd'),
(108, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd'),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd'),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd'),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd'),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd'),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd'),
(114, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd'),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd'),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd'),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd'),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd'),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd'),
(120, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd'),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd'),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd'),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd'),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd'),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd'),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd'),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd'),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd'),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd'),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd'),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd'),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd'),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd'),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd'),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd'),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd'),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd'),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd'),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd'),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd'),
(141, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd'),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd'),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd'),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd'),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd'),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd'),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd'),
(148, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd'),
(149, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd'),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd'),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd'),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd'),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd'),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd'),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd'),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd'),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd'),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd'),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd'),
(160, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd'),
(161, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd'),
(162, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd'),
(163, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd'),
(164, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd'),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd'),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd'),
(167, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd'),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd'),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd'),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd'),
(171, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd'),
(172, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd'),
(173, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd'),
(174, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd'),
(175, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd'),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd'),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd'),
(178, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd'),
(179, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd'),
(180, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd'),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd'),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd'),
(183, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd'),
(184, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd'),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd'),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd'),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd'),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd'),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd'),
(190, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd'),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd'),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd'),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd'),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd'),
(195, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd'),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd'),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd'),
(198, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd'),
(199, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd'),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd'),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd'),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd'),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd'),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd'),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd'),
(206, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd'),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd'),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd'),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd'),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd'),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd'),
(212, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd'),
(213, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd'),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd'),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd'),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd'),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd'),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd'),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd'),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd'),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd'),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd'),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd'),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd'),
(225, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd'),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd'),
(227, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd'),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd'),
(229, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd'),
(230, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd'),
(231, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd'),
(232, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd'),
(233, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd'),
(234, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd'),
(235, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd'),
(236, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd'),
(237, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd'),
(238, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd'),
(239, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd'),
(240, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd'),
(241, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd'),
(242, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd'),
(243, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd'),
(244, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd'),
(245, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd'),
(246, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd'),
(247, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd'),
(248, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd'),
(249, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd'),
(250, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd'),
(251, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd'),
(252, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd'),
(253, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd'),
(254, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd'),
(255, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd'),
(256, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd'),
(257, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd'),
(258, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd'),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd'),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd'),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd'),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd'),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd'),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd'),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd'),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd'),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd'),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd'),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd'),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd'),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd'),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd'),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd'),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd'),
(275, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd'),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd'),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd'),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd'),
(279, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd'),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd'),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd'),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd'),
(283, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd'),
(284, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd'),
(285, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd'),
(286, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd'),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd'),
(288, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd'),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd'),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd'),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd'),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd'),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd'),
(294, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd'),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd'),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd'),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd'),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd'),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd'),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd'),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd'),
(302, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd'),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd'),
(304, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd'),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd'),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd'),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd'),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd'),
(309, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd'),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd'),
(311, 40, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd'),
(312, 40, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd'),
(313, 40, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd'),
(314, 40, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd'),
(315, 40, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd'),
(316, 40, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd'),
(317, 41, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd'),
(318, 41, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd'),
(319, 41, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd'),
(320, 41, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd'),
(321, 41, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd'),
(322, 42, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd'),
(323, 42, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd'),
(324, 42, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd'),
(325, 42, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd'),
(326, 42, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd'),
(327, 42, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd'),
(328, 43, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd'),
(329, 43, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd'),
(330, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd'),
(331, 43, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd'),
(332, 43, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd'),
(333, 44, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd'),
(334, 44, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd'),
(335, 44, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd'),
(336, 44, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd'),
(337, 44, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd'),
(338, 44, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd'),
(339, 44, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd'),
(340, 44, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd'),
(341, 44, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd'),
(342, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd'),
(343, 44, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd'),
(344, 44, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd'),
(345, 45, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd'),
(346, 45, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd'),
(347, 45, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd'),
(348, 45, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd'),
(349, 45, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd'),
(350, 45, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd'),
(351, 45, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd'),
(352, 45, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd'),
(353, 45, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd'),
(354, 45, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd'),
(355, 45, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd'),
(356, 45, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd'),
(357, 45, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd'),
(358, 46, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd'),
(359, 46, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd'),
(360, 46, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd'),
(361, 46, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd'),
(362, 46, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd'),
(363, 46, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd'),
(364, 46, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd'),
(365, 47, 'Savar', 'সাভার', 'savar.dhaka.gov.bd'),
(366, 47, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd'),
(367, 47, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd'),
(368, 47, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd'),
(369, 47, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd'),
(370, 48, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd'),
(371, 48, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd'),
(372, 48, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd'),
(373, 48, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd'),
(374, 48, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd'),
(375, 48, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd'),
(376, 49, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd'),
(377, 49, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd'),
(378, 49, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd'),
(379, 49, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd'),
(380, 49, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd'),
(381, 50, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd'),
(382, 50, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd'),
(383, 50, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd'),
(384, 50, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd'),
(385, 51, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd'),
(386, 51, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd'),
(387, 51, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd'),
(388, 51, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd'),
(389, 51, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd'),
(390, 52, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd'),
(391, 52, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd'),
(392, 52, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd'),
(393, 52, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd'),
(394, 52, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd'),
(395, 52, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd'),
(396, 52, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd'),
(397, 52, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd'),
(398, 52, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd'),
(399, 53, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd'),
(400, 53, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd'),
(401, 53, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd'),
(402, 53, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd'),
(403, 53, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd'),
(404, 54, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd'),
(405, 54, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd'),
(406, 54, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd'),
(407, 54, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd'),
(408, 54, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd'),
(409, 54, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd'),
(410, 54, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd'),
(411, 54, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd'),
(412, 54, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd'),
(413, 54, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd'),
(414, 54, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd'),
(415, 54, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd'),
(416, 54, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd'),
(417, 55, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd'),
(418, 55, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd'),
(419, 55, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd'),
(420, 55, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd'),
(421, 55, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd'),
(422, 56, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd'),
(423, 56, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd'),
(424, 56, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd'),
(425, 56, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd'),
(426, 56, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd'),
(427, 56, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd'),
(428, 57, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd'),
(429, 57, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd'),
(430, 57, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd'),
(431, 57, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd'),
(432, 57, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd'),
(433, 57, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd'),
(434, 57, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd'),
(435, 58, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd'),
(436, 58, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd'),
(437, 58, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd'),
(438, 58, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd'),
(439, 58, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd'),
(440, 59, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd'),
(441, 59, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd'),
(442, 59, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd'),
(443, 59, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd'),
(444, 59, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd'),
(445, 59, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd'),
(446, 59, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd'),
(447, 59, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd'),
(448, 60, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd'),
(449, 60, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd'),
(450, 60, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd'),
(451, 60, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd'),
(452, 60, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd'),
(453, 60, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd'),
(454, 60, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd'),
(455, 60, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd'),
(456, 60, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd'),
(457, 61, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd'),
(458, 61, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd'),
(459, 61, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd'),
(460, 61, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd'),
(461, 61, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd'),
(462, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd'),
(463, 62, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd'),
(464, 62, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd'),
(465, 62, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd'),
(466, 62, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd'),
(467, 62, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd'),
(468, 62, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd'),
(469, 62, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd'),
(470, 62, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd'),
(471, 62, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd'),
(472, 62, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd'),
(473, 62, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd'),
(474, 62, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd'),
(475, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd'),
(476, 63, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd'),
(477, 63, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd'),
(478, 63, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd'),
(479, 63, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd'),
(480, 63, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd'),
(481, 63, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd'),
(482, 64, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd'),
(483, 64, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd'),
(484, 64, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd'),
(485, 64, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd'),
(486, 64, 'Madan', 'মদন', 'madan.netrokona.gov.bd'),
(487, 64, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd'),
(488, 64, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd'),
(489, 64, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd'),
(490, 64, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd'),
(491, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd'),
(492, 9, 'Eidgaon', 'ঈদগাঁও', 'null'),
(493, 39, 'Madhyanagar', 'মধ্যনগর', 'null'),
(494, 50, 'Dasar', 'ডাসার', 'null'),
(495, 15, 'Rajpara Thana', 'রাজপাড়া থানা', ''),
(496, 15, 'Boalia Thana', 'বোয়ালিয়া থানা', ''),
(497, 15, 'Shah Mokhdum Thana', 'শাহ মখদুম থানা', ''),
(498, 15, 'Motihar Thana', 'মতিহার থানা', ''),
(500, 47, 'Khilkhet', 'খিলক্ষেত', NULL),
(501, 47, 'Kafrul Thana', 'কাফরুল', NULL),
(502, 47, 'Dhanmondi', 'ধানমন্ডি', NULL),
(503, 47, 'Mohammadpur', 'মোহাম্মদপুর', NULL),
(504, 47, 'Sutrapur', 'সূত্রাপুর', NULL),
(505, 47, 'Jatrabari', 'যাত্রাবাড়ী', NULL),
(506, 47, 'Airport Thana', 'বিমানবন্দর', NULL),
(507, 47, 'Gulshan', 'গুলশান', NULL),
(508, 47, 'Uttara', 'উত্তারা', NULL),
(509, 47, 'Mugda', 'মুগদা', NULL),
(510, 47, 'Rupnagar', 'রূপনগর', NULL),
(511, 47, 'Bhasantek', 'ভাষানটেক', NULL),
(512, 47, 'Vatara', 'ভাটারা', NULL),
(513, 47, 'Banani', 'বনানী', NULL),
(514, 47, 'Wari', 'ওয়ারী', NULL),
(515, 47, 'Shahjahanpur', 'শাহজাহানপুর', NULL),
(516, 47, 'Sher-e-bangla', 'শেরেবাংলা', NULL),
(517, 47, 'Mirpur', 'মিরপুর', NULL),
(518, 47, 'Darus Salam', 'দারুস সালাম', NULL),
(519, 47, 'Dakkhinkhan', 'দক্ষিণখান', NULL),
(520, 47, 'Uttarkhan', 'উত্তরখান', NULL),
(521, 47, 'Turag', 'তুরাগ', NULL),
(522, 47, 'Uttara Model Thana', 'উত্তরা মডেল থানা', NULL),
(523, 47, 'Cantonment', 'ক্যান্টনমেন্ট', NULL),
(524, 47, 'Badda', 'বাড্ডা', NULL),
(525, 47, 'Pallabi', 'পল্লবী', NULL),
(526, 47, 'Shah Ali', 'শাহআলী', NULL),
(527, 47, 'Tejgaon Industrial Area', 'তেজঁগাও শিল্পাঞ্চল থানা', NULL),
(528, 47, 'Tejgaon', 'তেজঁগাও', NULL),
(529, 47, 'Rampura', 'রামপুরা', NULL),
(530, 47, 'Sabujbag', 'সবুজবাগ', NULL),
(531, 47, 'Kodomtoli', 'কদমতলী', NULL),
(532, 47, 'Chawkbazar', 'চকবাজার', NULL),
(533, 47, 'Kamrangirchor', 'কামরাঙ্গীরচর', NULL),
(534, 47, 'Kotwali', 'কোতয়ালী', NULL),
(535, 47, 'Laalbag', 'লালবাগ', NULL),
(536, 47, 'Kolabagan', 'কলাবাগান', NULL),
(537, 47, 'Shahbag', 'শাহবাগ', NULL),
(538, 47, 'Motijheel', 'মতিঝিল', NULL),
(539, 47, 'khilgaon', 'খিলগাঁও', NULL),
(540, 47, 'Hajaribaag', 'হাজারীবাগ', NULL),
(541, 47, 'Romna Model Thana', 'রমনা মডেল থানা', NULL),
(542, 47, 'Demra', 'ডেমরা', NULL),
(543, 47, 'Paltan Model Thana', 'পল্টন মডেল থানা', NULL),
(544, 47, 'Bongshal', 'বংশাল', NULL),
(545, 47, 'New Market', 'নিউমার্কেট', NULL),
(546, 47, 'Shampur', 'শ্যামপুর', NULL),
(547, 47, 'Gendaria', 'গেন্ডারিয়া', NULL),
(548, 47, 'Adabor', 'আদাবর', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL COMMENT 'Used for Forget Password Verification',
  `password` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1=>Admin; 2=>User/Shop; 3=>Customer',
  `address` longtext DEFAULT NULL,
  `balance` double NOT NULL DEFAULT 0 COMMENT 'In BDT',
  `delete_request_submitted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>No; 1=>Yes',
  `delete_request_submitted_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Active; 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `name`, `phone`, `email`, `email_verified_at`, `verification_code`, `password`, `provider_name`, `provider_id`, `remember_token`, `user_type`, `address`, `balance`, `delete_request_submitted`, `delete_request_submitted_at`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'Admin', '01969005036', 'admin@gmail.com', NULL, '33200', '$2y$10$JtmbfwKyLz4moqNiYTHnNudFYY5sSxhozz.jyo4gwdbGOpfjlW5tq', NULL, NULL, NULL, 1, NULL, 0, 0, NULL, 1, '2023-03-28 10:20:00', '2023-10-02 08:23:57'),
(64, 'userProfileImages/z8ODg1706785422.jpg', 'Md. Fahim Hossain', '01969005035', 'alifhossain174@gmail.com', '2024-02-18 04:42:26', '524823', '$2y$12$CR6NEYeHzdFWzf7AyslQZuhmr5yJGQ.knB2KAkKhChbGaKBYWrJgi', NULL, NULL, NULL, 3, 'Dhaka Bangladesh', 0, 0, NULL, 1, NULL, '2024-02-18 04:42:26'),
(77, NULL, 'Roth Cleveland', NULL, 'finen@mailinator.com', '2024-02-06 05:07:09', '663129', '$2y$12$lovkfUBonnNy0Q9E2D7N2uz53NmyIF7arJg/l88euTjhUBtd82lii', NULL, NULL, NULL, 3, 'Ut et odio occaecat', 0, 0, NULL, 0, '2024-02-06 05:06:46', '2024-02-06 05:07:09'),
(78, NULL, 'Samantha Conley', NULL, 'myhokub@mailinator.com', '2024-02-18 04:59:33', '340448', '$2y$12$uQmf1TTRDvnTY4avrB042OxgCblR8vdL7cbJsl4qL0IAmhnO6BbSS', NULL, NULL, NULL, 3, NULL, 0, 0, NULL, 1, '2024-02-18 04:54:24', '2024-02-18 04:59:33'),
(79, NULL, 'Donna Warner', NULL, 'rinywehyx@mailinator.com', '2024-02-18 05:02:04', '821908', '$2y$12$NAif9J9Jx0jFetVKkfYuYOgL4fu7wtDwlYxW82Jxv2wTcGXpAPm0a', NULL, NULL, NULL, 3, NULL, 0, 0, NULL, 1, '2024-02-18 05:01:34', '2024-02-18 05:02:04'),
(80, NULL, 'Kim Kelly', NULL, 'nozeveq@mailinator.com', NULL, '707328', '$2y$12$/2uJtH5Sb7bFrJ0Fg77cG.F8NHwcT7GV6I1QSWfTnvUaY3vYv5udO', NULL, NULL, NULL, 3, NULL, 0, 0, NULL, 1, '2024-02-18 10:39:06', '2024-02-18 10:39:06'),
(81, NULL, 'Olivia Ballard', NULL, 'lufyrejof@mailinator.com', '2024-02-20 10:27:15', '556426', '$2y$12$lQQ.Js0KbllnpcifNC0yYOGbd5jBWSRtY7McEj6MKlYi6ag8HY6zm', NULL, NULL, NULL, 3, NULL, 0, 0, NULL, 1, '2024-02-20 10:26:50', '2024-02-20 10:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `address_type`, `name`, `address`, `country`, `city`, `state`, `post_code`, `phone`, `slug`, `created_at`, `updated_at`) VALUES
(28, 77, 'Home', 'Roth Cleveland', 'Flat-B, Road No 27', 'Bangladesh', 'Bagerhat', 'Fakirhat', '6100', NULL, 'lNS031707196094', '2024-02-06 05:08:14', NULL),
(30, 64, 'Office', 'Md. Fahim Hossain', 'Fugit amet eligend', 'Bangladesh', 'Faridpur', 'Bhanga', 'Est non non et ullam', '01969005035', 'CVtlD1708241129', '2024-02-18 07:25:29', '2024-02-18 07:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1=>Visa; 2=>Master',
  `card_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Default; 0=>Not',
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Category Management', 'Manage All Category Related Operations', '2023-07-18 16:22:38', NULL),
(2, 'Subcategory Management', 'Manage All Subcategory Related Operations', '2023-07-18 16:24:12', NULL),
(3, 'Dashboard', 'Can Access Dashboard', '2023-07-20 04:31:05', NULL),
(4, 'ChildCategory Management', 'Can Manage ChildCategory Related Operation', '2023-07-20 04:36:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_permissions`
--

CREATE TABLE `user_role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `route` varchar(255) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role_permissions`
--

INSERT INTO `user_role_permissions` (`id`, `user_id`, `role_id`, `role_name`, `permission_id`, `route`, `route_name`, `created_at`, `updated_at`) VALUES
(21, 36, 3, 'Dashboard', 23, 'home', 'home', '2023-07-20 04:31:34', NULL),
(22, 36, 2, 'Subcategory Management', 134, 'category/wise/subcategory', 'SubcategoryCategoryWise', '2023-07-20 04:31:34', NULL),
(23, 36, 2, 'Subcategory Management', 132, 'update/subcategory', 'UpdateSubcategory', '2023-07-20 04:31:34', NULL),
(24, 36, 2, 'Subcategory Management', 131, 'edit/subcategory/{slug}', 'EditSubcategory', '2023-07-20 04:31:34', NULL),
(25, 36, 2, 'Subcategory Management', 130, 'feature/subcategory/{id}', 'FeatureSubcategory', '2023-07-20 04:31:34', NULL),
(26, 36, 2, 'Subcategory Management', 129, 'delete/subcategory/{slug}', 'DeleteSubcategory', '2023-07-20 04:31:34', NULL),
(27, 36, 2, 'Subcategory Management', 128, 'view/all/subcategory', 'ViewAllSubcategory', '2023-07-20 04:31:34', NULL),
(28, 36, 2, 'Subcategory Management', 127, 'save/new/subcategory', 'SaveNewSubcategory', '2023-07-20 04:31:34', NULL),
(29, 36, 2, 'Subcategory Management', 126, 'add/new/subcategory', 'AddNewSubcategory', '2023-07-20 04:31:34', NULL),
(30, 36, 1, 'Category Management', 125, 'save/rearranged/order', 'SaveRearrangeCategoryOrder', '2023-07-20 04:31:34', NULL),
(31, 36, 1, 'Category Management', 124, 'rearrange/category', 'RearrangeCategory', '2023-07-20 04:31:34', NULL),
(32, 36, 1, 'Category Management', 123, 'update/category', 'UpdateCategory', '2023-07-20 04:31:34', NULL),
(33, 36, 1, 'Category Management', 122, 'edit/category/{slug}', 'EditCategory', '2023-07-20 04:31:34', NULL),
(34, 36, 1, 'Category Management', 121, 'feature/category/{slug}', 'FeatureCategory', '2023-07-20 04:31:34', NULL),
(35, 36, 1, 'Category Management', 120, 'delete/category/{slug}', 'DeleteCategory', '2023-07-20 04:31:34', NULL),
(36, 36, 1, 'Category Management', 119, 'view/all/category', 'ViewAllCategory', '2023-07-20 04:31:34', NULL),
(37, 36, 1, 'Category Management', 118, 'save/new/category', 'SaveNewCategory', '2023-07-20 04:31:34', NULL),
(38, 36, 1, 'Category Management', 117, 'add/new/category', 'AddNewCategory', '2023-07-20 04:31:34', NULL),
(39, 36, NULL, NULL, 134, 'category/wise/subcategory', 'SubcategoryCategoryWise', '2023-07-20 04:31:34', NULL),
(40, 36, NULL, NULL, 132, 'update/subcategory', 'UpdateSubcategory', '2023-07-20 04:31:34', NULL),
(41, 36, NULL, NULL, 131, 'edit/subcategory/{slug}', 'EditSubcategory', '2023-07-20 04:31:34', NULL),
(42, 36, NULL, NULL, 130, 'feature/subcategory/{id}', 'FeatureSubcategory', '2023-07-20 04:31:34', NULL),
(43, 36, NULL, NULL, 129, 'delete/subcategory/{slug}', 'DeleteSubcategory', '2023-07-20 04:31:34', NULL),
(44, 36, NULL, NULL, 128, 'view/all/subcategory', 'ViewAllSubcategory', '2023-07-20 04:31:34', NULL),
(45, 36, NULL, NULL, 127, 'save/new/subcategory', 'SaveNewSubcategory', '2023-07-20 04:31:34', NULL),
(46, 36, NULL, NULL, 126, 'add/new/subcategory', 'AddNewSubcategory', '2023-07-20 04:31:34', NULL),
(47, 36, NULL, NULL, 125, 'save/rearranged/order', 'SaveRearrangeCategoryOrder', '2023-07-20 04:31:34', NULL),
(48, 36, NULL, NULL, 124, 'rearrange/category', 'RearrangeCategory', '2023-07-20 04:31:34', NULL),
(49, 36, NULL, NULL, 123, 'update/category', 'UpdateCategory', '2023-07-20 04:31:34', NULL),
(50, 36, NULL, NULL, 122, 'edit/category/{slug}', 'EditCategory', '2023-07-20 04:31:34', NULL),
(51, 36, NULL, NULL, 121, 'feature/category/{slug}', 'FeatureCategory', '2023-07-20 04:31:34', NULL),
(52, 36, NULL, NULL, 120, 'delete/category/{slug}', 'DeleteCategory', '2023-07-20 04:31:34', NULL),
(53, 36, NULL, NULL, 119, 'view/all/category', 'ViewAllCategory', '2023-07-20 04:31:34', NULL),
(54, 36, NULL, NULL, 118, 'save/new/category', 'SaveNewCategory', '2023-07-20 04:31:34', NULL),
(55, 36, NULL, NULL, 117, 'add/new/category', 'AddNewCategory', '2023-07-20 04:31:34', NULL),
(56, 36, NULL, NULL, 23, 'home', 'home', '2023-07-20 04:31:34', NULL),
(63, 34, NULL, NULL, 23, 'home', 'home', '2023-12-24 04:00:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `product_id`, `slug`, `created_at`, `updated_at`) VALUES
(8, 64, 2240, 'tD3HM1708238486', '2024-02-18 06:41:26', NULL),
(9, 64, 2235, 'DQDOW1708238490', '2024-02-18 06:41:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `config_setups`
--
ALTER TABLE `config_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_conditions`
--
ALTER TABLE `device_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_visit_requests`
--
ALTER TABLE `doctor_visit_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configures`
--
ALTER TABLE `email_configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_infos`
--
ALTER TABLE `general_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_generics`
--
ALTER TABLE `medicine_generics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_requests`
--
ALTER TABLE `medicine_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_request_items`
--
ALTER TABLE `medicine_request_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_apps`
--
ALTER TABLE `mobile_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursing_services`
--
ALTER TABLE `nursing_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursing_service_requests`
--
ALTER TABLE `nursing_service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_no_unique` (`order_no`),
  ADD UNIQUE KEY `orders_slug_unique` (`slug`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_progress`
--
ALTER TABLE `order_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_routes`
--
ALTER TABLE `permission_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_models`
--
ALTER TABLE `product_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_question_answers`
--
ALTER TABLE `product_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warrenties`
--
ALTER TABLE `product_warrenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotional_banners`
--
ALTER TABLE `promotional_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_infos`
--
ALTER TABLE `shipping_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sims`
--
ALTER TABLE `sims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_histories`
--
ALTER TABLE `sms_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_types`
--
ALTER TABLE `storage_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed_users`
--
ALTER TABLE `subscribed_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_policies`
--
ALTER TABLE `terms_and_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazilla_id` (`upazilla_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `config_setups`
--
ALTER TABLE `config_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_requests`
--
ALTER TABLE `contact_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device_conditions`
--
ALTER TABLE `device_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor_visit_requests`
--
ALTER TABLE `doctor_visit_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_configures`
--
ALTER TABLE `email_configures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `general_infos`
--
ALTER TABLE `general_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine_generics`
--
ALTER TABLE `medicine_generics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_requests`
--
ALTER TABLE `medicine_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine_request_items`
--
ALTER TABLE `medicine_request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicine_types`
--
ALTER TABLE `medicine_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `mobile_apps`
--
ALTER TABLE `mobile_apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nursing_services`
--
ALTER TABLE `nursing_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nursing_service_requests`
--
ALTER TABLE `nursing_service_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_progress`
--
ALTER TABLE `order_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_routes`
--
ALTER TABLE `permission_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2316;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4682;

--
-- AUTO_INCREMENT for table `product_models`
--
ALTER TABLE `product_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_question_answers`
--
ALTER TABLE `product_question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6083;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4582;

--
-- AUTO_INCREMENT for table `product_warrenties`
--
ALTER TABLE `product_warrenties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotional_banners`
--
ALTER TABLE `promotional_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shipping_infos`
--
ALTER TABLE `shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sims`
--
ALTER TABLE `sims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_histories`
--
ALTER TABLE `sms_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storage_types`
--
ALTER TABLE `storage_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `subscribed_users`
--
ALTER TABLE `subscribed_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_and_policies`
--
ALTER TABLE `terms_and_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4541;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `unions`
--
ALTER TABLE `unions`
  ADD CONSTRAINT `unions_ibfk_2` FOREIGN KEY (`upazilla_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
