-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2020 at 02:01 PM
-- Server version: 5.5.62-cll
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anuwedsa_anusha`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_source` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`, `modified_date`) VALUES
(1, 'home', 'home', '', '', '', '/thumb/1.jpg', 0, 1, 1, '', '', 12, '', 1531325163);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filetype` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`, `modified_date`) VALUES
(1, 1, '9', '9', '/9.jpg', '/thumb/9.jpg', '', '9', '11 July 2018, 16:06', '247 KB', 'jpg', '1200 x 800 px', 1, 9, 1, 0, 0, 0, 0, '', 0, 0),
(2, 1, '8', '8', '/8.jpg', '/thumb/8.jpg', '', '8', '11 July 2018, 16:06', '316 KB', 'jpg', '1200 x 1200 px', 1, 8, 1, 0, 0, 0, 0, '', 0, 0),
(3, 1, '4', '4', '/4.jpg', '/thumb/4.jpg', '', '4', '11 July 2018, 16:06', '298 KB', 'jpg', '1200 x 1200 px', 1, 7, 1, 0, 0, 0, 0, '', 0, 0),
(4, 1, '2', '2', '/2.jpg', '/thumb/2.jpg', '', '2', '11 July 2018, 16:06', '171 KB', 'jpg', '1200 x 800 px', 1, 6, 1, 0, 0, 0, 0, '', 0, 0),
(5, 1, '3', '3', '/3.jpg', '/thumb/3.jpg', '', '3', '11 July 2018, 16:06', '170 KB', 'jpg', '800 x 1200 px', 1, 5, 1, 0, 0, 0, 0, '', 0, 0),
(6, 1, '7', '7', '/7.jpg', '/thumb/7.jpg', '', '7', '11 July 2018, 16:06', '245 KB', 'jpg', '800 x 1200 px', 1, 4, 1, 0, 0, 0, 0, '', 0, 0),
(7, 1, '6', '6', '/6.jpg', '/thumb/6.jpg', '', '6', '11 July 2018, 16:06', '198 KB', 'jpg', '1200 x 800 px', 1, 3, 1, 0, 0, 0, 0, '', 0, 0),
(8, 1, '5', '5', '/5.jpg', '/thumb/5.jpg', '', '5', '11 July 2018, 16:06', '106 KB', 'jpg', '800 x 1200 px', 1, 2, 1, 0, 0, 0, 0, '', 0, 0),
(9, 1, '1', '1', '/1.jpg', '/thumb/1.jpg', '', '1', '11 July 2018, 16:06', '292 KB', 'jpg', '1200 x 1200 px', 1, 1, 1, 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Light', '{\"thumb_margin\":\"4\",\"container_margin\":\"1\",\"thumb_padding\":\"0\",\"thumb_border_radius\":\"0\",\"thumb_border_width\":0,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"CCCCCC\",\"thumb_bg_color\":\"000000\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_transition\":1,\"thumb_title_margin\":\"2px\",\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_shadow\":\"\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_gal_title_font_color\":\"000000\",\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"solid\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_btn_color\":\"808080\",\"lightbox_toggle_btn_height\":20,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"FFFFFF\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":85,\"lightbox_close_btn_bg_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"0\",\"lightbox_close_btn_color\":\"808080\",\"lightbox_close_btn_size\":20,\"lightbox_close_btn_width\":30,\"lightbox_close_btn_height\":30,\"lightbox_close_btn_top\":\"-20\",\"lightbox_close_btn_right\":\"-15\",\"lightbox_close_btn_full_color\":\"000000\",\"lightbox_close_btn_transparent\":60,\"lightbox_rl_btn_bg_color\":\"FFFFFF\",\"lightbox_rl_btn_transparent\":\"60\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"ADADAD\",\"lightbox_rl_btn_height\":35,\"lightbox_rl_btn_width\":35,\"lightbox_rl_btn_size\":25,\"lightbox_close_rl_btn_hover_color\":\"808080\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":350,\"lightbox_comment_bg_color\":\"FFFFFF\",\"lightbox_comment_font_color\":\"7A7A7A\",\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"2F2F2F\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"7px\",\"lightbox_comment_button_padding\":\"10px 10px\",\"lightbox_comment_input_bg_color\":\"F7F8F9\",\"lightbox_comment_input_border_color\":\"EBEBEB\",\"lightbox_comment_input_border_width\":2,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"7px\",\"lightbox_comment_input_padding\":\"5px\",\"lightbox_comment_separator_width\":20,\"lightbox_comment_separator_style\":\"none\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"808080\",\"lightbox_filmstrip_rl_bg_color\":\"EBEBEB\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"808080\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_pos\":\"bottom\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_overlay_bg_transparent\":60,\"lightbox_bg_color\":\"FFFFFF\",\"lightbox_overlay_bg_color\":\"EEEEEE\",\"lightbox_rl_btn_style\":\"fa-angle\",\"lightbox_bg_transparent\":100,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"solid\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_transparent\":80,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"0\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":15,\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":2,\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"album_compact_title_margin\":\"2px\",\"album_compact_thumb_margin\":2,\"album_compact_back_padding\":\"0\",\"album_compact_thumb_padding\":0,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":0,\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_back_font_color\":\"000000\",\"album_compact_title_font_color\":\"FFFFFF\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_bg_color\":\"FFFFFF\",\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_font_size\":16,\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"scale\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_hover_effect_value\":\"1.08\",\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":0,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"CCCCCC\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"scale\",\"album_extended_thumb_hover_effect_value\":\"1.08\",\"album_extended_thumb_transition\":1,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":20,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0 0 0 0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":1,\"album_extended_thumb_div_border_style\":\"solid\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_padding\":\"5px\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"solid\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"F2D22E\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"F2F2F2\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"D6D6D6\",\"slideshow_rl_btn_height\":37,\"slideshow_rl_btn_size\":12,\"slideshow_rl_btn_width\":37,\"slideshow_close_rl_btn_hover_color\":\"BABABA\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":0,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0px 2px 0 0 \",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":100,\"slideshow_filmstrip_rl_bg_color\":\"F2F2F2\",\"slideshow_filmstrip_rl_btn_color\":\"BABABA\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"0 0 0 0\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":12,\"slideshow_dots_height\":12,\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_margin\":3,\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_play_pause_btn_size\":35,\"slideshow_rl_btn_style\":\"fa-chevron\",\"masonry_thumb_padding\":\"2\",\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_width\":\"0\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":\"0\",\"masonry_thumb_transparent\":\"100\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"scale\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_transition\":\"1\",\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"mosaic_thumb_padding\":\"2\",\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_width\":\"0\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":\"0\",\"mosaic_thumb_transparent\":\"100\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"scale\",\"mosaic_thumb_hover_effect_value\":\"1.08\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"lightbox_info_pos\":\"bottom\",\"lightbox_info_align\":\"left\",\"lightbox_info_bg_color\":\"FFFFFF\",\"lightbox_info_bg_transparent\":\"70\",\"lightbox_info_border_width\":\"1\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"0px\",\"lightbox_info_padding\":\"10px 7px 44px 10px\",\"lightbox_info_margin\":\"10px 10px -5px 10px\",\"lightbox_title_color\":\"808080\",\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":\"16\",\"lightbox_description_color\":\"B0B0B0\",\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"bold\",\"lightbox_description_font_size\":\"13\",\"lightbox_rate_pos\":\"top\",\"lightbox_rate_align\":\"left\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":\"20\",\"lightbox_rate_stars_count\":\"5\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":\"70\",\"lightbox_hit_border_width\":\"1\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":\"14\",\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":16,\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_margin\":0,\"album_masonry_thumb_padding\":0,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_bg_color\":\"FFFFFF\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"scale\",\"album_masonry_thumb_hover_effect_value\":\"1.08\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":50,\"carousel_rl_btn_bg_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"303030\",\"carousel_rl_btn_height\":35,\"carousel_rl_btn_size\":15,\"carousel_play_pause_btn_size\":25,\"carousel_rl_btn_width\":35,\"carousel_close_rl_btn_hover_color\":\"191919\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"arial\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"none\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":\"1\"}', 1),
(2, 'Dark', '{\"thumb_margin\":\"4\",\"container_margin\":\"1\",\"thumb_padding\":\"0\",\"thumb_border_radius\":\"0\",\"thumb_border_width\":5,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"FFFFFF\",\"thumb_bg_color\":\"000000\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_transition\":1,\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_title_shadow\":\"\",\"thumb_gal_title_font_color\":\"000000\",\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"none\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":80,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":14,\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_bg_color\":\"E8E8E8\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_transition\":1,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":16,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_padding\":\"0\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_width\":1,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":80,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"rotate\",\"masonry_thumb_hover_effect_value\":\"2deg\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":10,\"slideshow_dots_height\":10,\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_margin\":1,\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"none\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_transparent\":70,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_image_title_align\":\"top\",\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":14,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":1,\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":14,\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_bg_color\":\"E8E8E8\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"rotate\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":80,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-10 14:38:01', '2018-07-10 14:38:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-07-11 11:19:51', '2018-07-11 16:49:51'),
(2, '', '', 'email', 1, 1, '2018-07-11 11:19:51', '2018-07-11 16:49:51'),
(3, '', '', 'email', 1, 1, '2018-07-11 11:19:51', '2018-07-11 16:49:51'),
(4, '', '', 'successmessage', 1, 1, '2018-07-11 11:19:51', '2018-07-11 16:49:51'),
(5, NULL, NULL, 'successmessage', 1, 2, '2018-07-11 16:53:08', '2018-07-11 16:53:08'),
(6, NULL, NULL, 'email', 1, 2, '2018-07-11 16:53:08', '2018-07-11 16:53:08'),
(7, NULL, NULL, 'save', 1, 2, '2018-07-11 16:53:08', '2018-07-11 16:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', ''),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', ''),
(69, 4, 'tag', ''),
(70, 4, 'to', ''),
(71, 4, 'email_subject', ''),
(72, 4, 'email_message', ''),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', ''),
(83, 5, 'objectType', 'Action'),
(84, 5, 'objectDomain', 'actions'),
(85, 5, 'editActive', ''),
(86, 5, 'label', 'Success Message'),
(87, 5, 'message', 'Your form has been successfully submitted.'),
(88, 5, 'order', '1'),
(89, 5, 'payment_gateways', ''),
(90, 5, 'payment_total', '0'),
(91, 5, 'tag', ''),
(92, 5, 'to', '{wp:admin_email}'),
(93, 5, 'reply_to', ''),
(94, 5, 'email_subject', 'Ninja Forms Submission'),
(95, 5, 'email_message', '{fields_table}'),
(96, 5, 'email_message_plain', ''),
(97, 5, 'from_name', ''),
(98, 5, 'from_address', ''),
(99, 5, 'email_format', 'html'),
(100, 5, 'cc', ''),
(101, 5, 'bcc', ''),
(102, 5, 'redirect_url', ''),
(103, 5, 'submitter_email', ''),
(104, 5, 'fields-save-toggle', 'save_all'),
(105, 5, 'exception_fields', 'a:0:{}'),
(106, 5, 'set_subs_to_expire', '0'),
(107, 5, 'subs_expire_time', '90'),
(108, 5, 'success_msg', 'Your form has been successfully submitted.'),
(109, 6, 'objectType', 'Action'),
(110, 6, 'objectDomain', 'actions'),
(111, 6, 'editActive', ''),
(112, 6, 'label', 'Admin Email'),
(113, 6, 'order', '2'),
(114, 6, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(115, 6, 'payment_gateways', ''),
(116, 6, 'payment_total', '0'),
(117, 6, 'tag', ''),
(118, 6, 'to', '{wp:admin_email}'),
(119, 6, 'reply_to', ''),
(120, 6, 'email_subject', 'Ninja Forms Submission'),
(121, 6, 'email_message', '{fields_table}'),
(122, 6, 'email_message_plain', ''),
(123, 6, 'from_name', ''),
(124, 6, 'from_address', ''),
(125, 6, 'email_format', 'html'),
(126, 6, 'cc', ''),
(127, 6, 'bcc', ''),
(128, 7, 'objectType', 'Action'),
(129, 7, 'objectDomain', 'actions'),
(130, 7, 'editActive', ''),
(131, 7, 'label', 'Store Submission'),
(132, 7, 'order', '3'),
(133, 7, 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(134, 7, 'payment_gateways', ''),
(135, 7, 'payment_total', '0'),
(136, 7, 'tag', ''),
(137, 7, 'to', '{wp:admin_email}'),
(138, 7, 'reply_to', ''),
(139, 7, 'email_subject', 'Ninja Forms Submission'),
(140, 7, 'email_message', '{fields_table}'),
(141, 7, 'email_message_plain', ''),
(142, 7, 'from_name', ''),
(143, 7, 'from_address', ''),
(144, 7, 'email_format', 'html'),
(145, 7, 'cc', ''),
(146, 7, 'bcc', ''),
(147, 7, 'redirect_url', ''),
(148, 7, 'submitter_email', 'email_1531327869101'),
(149, 7, 'fields-save-toggle', 'save_all'),
(150, 7, 'exception_fields', 'a:0:{}'),
(151, 7, 'set_subs_to_expire', '0'),
(152, 7, 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2018-07-11 11:19:50', '2018-07-11 16:49:50'),
(2, 'Email', 'email', 'email', 1, '2018-07-11 11:19:50', '2018-07-11 16:49:50'),
(3, 'Message', 'message', 'textarea', 1, '2018-07-11 11:19:50', '2018-07-11 16:49:50'),
(4, 'Submit', 'submit', 'submit', 1, '2018-07-11 11:19:50', '2018-07-11 16:49:50'),
(5, 'Name', 'name_1531327926855', 'firstname', 2, '2018-07-11 16:53:08', NULL),
(6, 'Email', 'email_1531327869101', 'email', 2, '2018-07-11 16:53:08', NULL),
(7, 'Number of People', 'number_of_people_1531327956790', 'number', 2, '2018-07-11 16:53:08', NULL),
(8, 'Submit', 'submit_1531327898898', 'submit', 2, '2018-07-11 16:53:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label_pos', 'above'),
(2, 1, 'required', '1'),
(3, 1, 'order', '1'),
(4, 1, 'placeholder', ''),
(5, 1, 'default', ''),
(6, 1, 'wrapper_class', ''),
(7, 1, 'element_class', ''),
(8, 1, 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields'),
(10, 1, 'editActive', ''),
(11, 1, 'container_class', ''),
(12, 1, 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', ''),
(16, 1, 'disable_input', ''),
(17, 1, 'admin_label', ''),
(18, 1, 'help_text', ''),
(19, 1, 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', ''),
(21, 1, 'mask', ''),
(22, 1, 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', ''),
(42, 1, 'label_styles_height', ''),
(43, 1, 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', ''),
(47, 1, 'label_styles_display', ''),
(48, 1, 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', ''),
(56, 1, 'element_styles_height', ''),
(57, 1, 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', ''),
(61, 1, 'element_styles_display', ''),
(62, 1, 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above'),
(67, 2, 'required', '1'),
(68, 2, 'order', '2'),
(69, 2, 'placeholder', ''),
(70, 2, 'default', ''),
(71, 2, 'wrapper_class', ''),
(72, 2, 'element_class', ''),
(73, 2, 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields'),
(75, 2, 'editActive', ''),
(76, 2, 'container_class', ''),
(77, 2, 'admin_label', ''),
(78, 2, 'help_text', ''),
(79, 2, 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', ''),
(99, 2, 'label_styles_height', ''),
(100, 2, 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', ''),
(104, 2, 'label_styles_display', ''),
(105, 2, 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', ''),
(113, 2, 'element_styles_height', ''),
(114, 2, 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', ''),
(118, 2, 'element_styles_display', ''),
(119, 2, 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above'),
(124, 3, 'required', '1'),
(125, 3, 'order', '3'),
(126, 3, 'placeholder', ''),
(127, 3, 'default', ''),
(128, 3, 'wrapper_class', ''),
(129, 3, 'element_class', ''),
(130, 3, 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields'),
(132, 3, 'editActive', ''),
(133, 3, 'container_class', ''),
(134, 3, 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', ''),
(138, 3, 'disable_input', ''),
(139, 3, 'admin_label', ''),
(140, 3, 'help_text', ''),
(141, 3, 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', ''),
(165, 3, 'label_styles_height', ''),
(166, 3, 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', ''),
(170, 3, 'label_styles_display', ''),
(171, 3, 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', ''),
(179, 3, 'element_styles_height', ''),
(180, 3, 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', ''),
(184, 3, 'element_styles_display', ''),
(185, 3, 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing'),
(190, 4, 'order', '5'),
(191, 4, 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields'),
(193, 4, 'editActive', ''),
(194, 4, 'container_class', ''),
(195, 4, 'element_class', ''),
(196, 4, 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', ''),
(215, 4, 'label_styles_height', ''),
(216, 4, 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', ''),
(220, 4, 'label_styles_display', ''),
(221, 4, 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', ''),
(229, 4, 'element_styles_height', ''),
(230, 4, 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', ''),
(234, 4, 'element_styles_display', ''),
(235, 4, 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287'),
(253, 5, 'objectType', 'Field'),
(254, 5, 'objectDomain', 'fields'),
(255, 5, 'editActive', ''),
(256, 5, 'order', '1'),
(257, 5, 'type', 'firstname'),
(258, 5, 'label', 'Name'),
(259, 5, 'key', 'name_1531327926855'),
(260, 5, 'label_pos', 'hidden'),
(261, 5, 'required', ''),
(262, 5, 'default', ''),
(263, 5, 'placeholder', 'Name'),
(264, 5, 'container_class', ''),
(265, 5, 'element_class', ''),
(266, 5, 'admin_label', ''),
(267, 5, 'help_text', ''),
(268, 5, 'custom_name_attribute', 'fname'),
(269, 5, 'personally_identifiable', '1'),
(270, 6, 'objectType', 'Field'),
(271, 6, 'objectDomain', 'fields'),
(272, 6, 'editActive', ''),
(273, 6, 'order', '2'),
(274, 6, 'type', 'email'),
(275, 6, 'label', 'Email'),
(276, 6, 'key', 'email_1531327869101'),
(277, 6, 'label_pos', 'hidden'),
(278, 6, 'required', ''),
(279, 6, 'default', ''),
(280, 6, 'placeholder', 'Email'),
(281, 6, 'container_class', ''),
(282, 6, 'element_class', ''),
(283, 6, 'admin_label', ''),
(284, 6, 'help_text', ''),
(285, 6, 'custom_name_attribute', 'email'),
(286, 6, 'personally_identifiable', '1'),
(287, 7, 'objectType', 'Field'),
(288, 7, 'objectDomain', 'fields'),
(289, 7, 'editActive', ''),
(290, 7, 'order', '3'),
(291, 7, 'type', 'number'),
(292, 7, 'label', 'Number of People'),
(293, 7, 'key', 'number_of_people_1531327956790'),
(294, 7, 'label_pos', 'hidden'),
(295, 7, 'required', ''),
(296, 7, 'default', ''),
(297, 7, 'placeholder', 'Number of People'),
(298, 7, 'container_class', ''),
(299, 7, 'element_class', ''),
(300, 7, 'manual_key', ''),
(301, 7, 'admin_label', ''),
(302, 7, 'help_text', ''),
(303, 7, 'num_min', ''),
(304, 7, 'num_max', ''),
(305, 7, 'num_step', '1'),
(306, 8, 'objectType', 'Field'),
(307, 8, 'objectDomain', 'fields'),
(308, 8, 'editActive', ''),
(309, 8, 'order', '4'),
(310, 8, 'type', 'submit'),
(311, 8, 'label', 'Submit'),
(312, 8, 'processing_label', 'Processing'),
(313, 8, 'container_class', ''),
(314, 8, 'element_class', ''),
(315, 8, 'key', 'submit_1531327898898'),
(316, 8, 'drawerDisabled', ''),
(317, 7, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2018-07-11 11:19:50', '2018-07-11 16:49:50', NULL, NULL),
(2, 'title', '', '2018-07-11 16:53:08', '2018-07-11 16:53:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', ''),
(5, 1, 'show_title', '1'),
(6, 1, 'clear_complete', '1'),
(7, 1, 'hide_complete', '1'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', ''),
(97, 2, 'objectType', 'Form Setting'),
(98, 2, 'editActive', ''),
(99, 2, 'show_title', '1'),
(100, 2, 'clear_complete', '1'),
(101, 2, 'hide_complete', '1'),
(102, 2, 'default_label_pos', 'above'),
(103, 2, 'wrapper_class', ''),
(104, 2, 'element_class', ''),
(105, 2, 'add_submit', '0'),
(106, 2, 'currency', ''),
(107, 2, 'unique_field_error', 'A form with this value has already been submitted.'),
(108, 2, 'logged_in', ''),
(109, 2, 'not_logged_in_msg', ''),
(110, 2, 'sub_limit_msg', 'The form has reached its submission limit.'),
(111, 2, 'calculations', 'a:0:{}'),
(112, 2, 'formContentData', 'a:4:{i:0;s:18:\"name_1531327926855\";i:1;s:19:\"email_1531327869101\";i:2;s:30:\"number_of_people_1531327956790\";i:3;s:20:\"submit_1531327898898\";}'),
(113, 2, '_seq_num', '8');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`) VALUES
(1, 'a:4:{s:2:\"id\";i:1;s:6:\"fields\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:50\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:50\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:50\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:50\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}s:7:\"actions\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:25:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:51\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:26:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:51\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:24:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:51\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:27:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:51\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}}}s:8:\"settings\";a:99:{s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-07-11 16:49:50\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";}}', 0),
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:17:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:4:\"type\";s:9:\"firstname\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:18:\"name_1531327926855\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:4:\"Name\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";}s:2:\"id\";s:1:\"5\";}i:1;a:2:{s:8:\"settings\";a:17:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:4:\"type\";s:5:\"email\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:19:\"email_1531327869101\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:5:\"Email\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";}s:2:\"id\";s:1:\"6\";}i:2;a:2:{s:8:\"settings\";a:20:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:4:\"type\";s:6:\"number\";s:5:\"label\";s:16:\"Number of People\";s:3:\"key\";s:30:\"number_of_people_1531327956790\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:16:\"Number of People\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:7:\"num_min\";s:0:\"\";s:7:\"num_max\";s:0:\"\";s:8:\"num_step\";s:1:\"1\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"7\";}i:3;a:2:{s:8:\"settings\";a:11:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1531327898898\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"8\";}}s:7:\"actions\";a:3:{i:0;a:2:{s:8:\"settings\";a:29:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 22:23:08\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";s:1:\"1\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:22:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 22:23:08\";s:5:\"label\";s:11:\"Admin Email\";s:5:\"order\";s:1:\"2\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:28:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-11 22:23:08\";s:5:\"label\";s:16:\"Store Submission\";s:5:\"order\";s:1:\"3\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:19:\"email_1531327869101\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:7;}}s:8:\"settings\";a:18:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:5:\"title\";s:10:\"show_title\";i:1;s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:0;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:18:\"name_1531327926855\";i:1;s:19:\"email_1531327869101\";i:2;s:30:\"number_of_people_1531327956790\";i:3;s:20:\"submit_1531327898898\";}}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://anuwedsajay.com', 'yes'),
(2, 'home', 'https://anuwedsajay.com', 'yes'),
(3, 'blogname', 'Anusha Reddy &amp; Ajay Chandra Reddy Wedding', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kanirudhr@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(376, 'rewrite_rules', 'a:122:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"gallery/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"gallery/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"gallery/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gallery/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gallery/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"gallery/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"gallery/(.+?)/embed/?$\";s:51:\"index.php?robo_gallery_table=$matches[1]&embed=true\";s:26:\"gallery/(.+?)/trackback/?$\";s:45:\"index.php?robo_gallery_table=$matches[1]&tb=1\";s:34:\"gallery/(.+?)/page/?([0-9]{1,})/?$\";s:58:\"index.php?robo_gallery_table=$matches[1]&paged=$matches[2]\";s:41:\"gallery/(.+?)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?robo_gallery_table=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/(.+?)(?:/([0-9]+))?/?$\";s:57:\"index.php?robo_gallery_table=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:27:\"ninja-forms/ninja-forms.php\";i:1;s:28:\"robo-gallery/robogallery.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:66:\"/home/anuwedsajay/public_html/wp-content/themes/weblizar/style.css\";i:1;s:67:\"/home/anuwedsajay/public_html/wp-content/themes/weblizar/footer.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'weblizar', 'yes'),
(41, 'stylesheet', 'weblizar', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:144:\"© Copyright 2018 - 2019. All Right Reserveds. ! Powered by <a href=\"https://peopletekinc.com/\" target=\"_blank\" rel=\"noopener\">Peopletek Inc</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '16', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '134', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:1:{i:0;s:6:\"text-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:8:{i:1563367083;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1563374283;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1563374332;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563374674;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563423345;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563468843;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}i:1563966260;a:2:{s:23:\"nf_email_telemetry_push\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531233799;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"kanirudhr@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1552444830;}', 'no'),
(11703, '_site_transient_timeout_theme_roots', '1563337035', 'no'),
(11704, '_site_transient_theme_roots', 'a:6:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:8:\"weblizar\";s:7:\"/themes\";s:6:\"weblog\";s:7:\"/themes\";}', 'no'),
(11705, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1563335235;s:7:\"checked\";a:6:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:8:\"weblizar\";s:5:\"4.6.5\";s:6:\"weblog\";s:5:\"1.2.1\";}s:8:\"response\";a:6:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:8:\"weblizar\";a:6:{s:5:\"theme\";s:8:\"weblizar\";s:11:\"new_version\";s:5:\"4.7.4\";s:3:\"url\";s:38:\"https://wordpress.org/themes/weblizar/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/weblizar.4.7.4.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:6:\"weblog\";a:6:{s:5:\"theme\";s:6:\"weblog\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:36:\"https://wordpress.org/themes/weblog/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/weblog.2.0.0.zip\";s:8:\"requires\";s:3:\"4.8\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(11706, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1563335236;s:7:\"checked\";a:3:{s:27:\"ninja-forms/ninja-forms.php\";s:5:\"3.4.9\";s:28:\"robo-gallery/robogallery.php\";s:6:\"2.8.23\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"7.8\";}s:8:\"response\";a:3:{s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.4.16\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.4.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:28:\"robo-gallery/robogallery.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/robo-gallery\";s:4:\"slug\";s:12:\"robo-gallery\";s:6:\"plugin\";s:28:\"robo-gallery/robogallery.php\";s:11:\"new_version\";s:6:\"2.8.25\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/robo-gallery/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/robo-gallery.2.8.25.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/robo-gallery/assets/icon-256x256.png?rev=1198649\";s:2:\"1x\";s:65:\"https://ps.w.org/robo-gallery/assets/icon-128x128.png?rev=1198649\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/robo-gallery/assets/banner-1544x500.jpg?rev=1198649\";s:2:\"1x\";s:67:\"https://ps.w.org/robo-gallery/assets/banner-772x250.jpg?rev=1198649\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:69:\"<p>Modification of the configuration fields, fix of the shortcode</p>\";s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(5438, 'ninja_forms_zuul', '25', 'no'),
(5439, 'ninja_forms_needs_updates', '1', 'yes'),
(733, 'wpseo_sitemap_nf_sub_cache_validator', '2yM87', 'no'),
(5430, 'show_comments_cookies_opt_in', '0', 'yes'),
(5458, 'ninja_forms_memberships_feed', '<div class=\"widget widget-memberships\">\r\n<div class=\"pricing-container\">\r\n<div class=\"pricing-block widget\">\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Agency</div>\r\n<div class=\"pricing-price\">$499</div>\r\n<div class=\"pricing-savings\">Save $2000+</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=203757&utm_source=Ninja+Forms+Plugin&utm_medium=Apps+and+Integrations&utm_campaign=Dashboard+Memberships&utm_content=Agency+Buy+Now\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-users\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Unlimited Sites</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Fastest Support</span>\r\n<span>1 Year of Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-trophy\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">All add-ons included!</span>\r\n<ul>\r\n 	<li>Builder PRO Pack</li>\r\n 	<li>PDF Form Submissions</li>\r\n 	<li>Zapier</li>\r\n 	<li>Newsletters (MailChimp, etc.)</li>\r\n 	<li>CRMs (Saleforce, etc.)</li>\r\n 	<li>Payments (PayPal, etc.)</li>\r\n 	<li>And so much more...</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"pricing-block widget highlight\">\r\n\r\n<!--\r\n<div class=\"callout\">\r\n                    Most Popular</div>\r\n-->\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Professional</div>\r\n<div class=\"pricing-price\">$199</div>\r\n<div class=\"pricing-savings\">Save $197</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=471355&utm_source=Ninja+Forms+Plugin&utm_medium=Apps+and+Integrations&utm_campaign=Dashboard+Memberships&utm_content=Professional+Buy+Now\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-users\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">20 Sites</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-plane\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Faster Support</span></div>\r\n<div><i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Builder Pro Pack</span>\r\n<span>Layout &amp; Styles, Multi-Part Forms, Conditional Logic, File Uploads</span></div>\r\n<div><i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\r\n<span>Plus <strong>40% off</strong>\r\nAdditional Add-Ons</span></div>\r\n</div>\r\n</div>\r\n<div class=\"pricing-block widget\">\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Personal</div>\r\n<div class=\"pricing-price\">$99</div>\r\n<div class=\"pricing-savings\">Save $57</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=471356&utm_medium=plugin&utm_source=Ninja+Forms+Plugin&utm_medium=Apps+and+Integrations&utm_campaign=Dashboard+Memberships&utm_content=Personal+Buy+Now\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-user\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">1 Site</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-car\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Fast Support</span></div>\r\n<div><i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Builder Pro Pack</span>\r\n<span>Layout &amp; Styles, Multi-Part Forms, Conditional Logic, File Uploads</span></div>\r\n<div><i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\r\n<span>Plus <strong>20% off</strong>\r\nAdditional Add-Ons</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget widget-plan-notice\">\r\n<p class=\"widget-title\">That sounds amazing! What else comes with Ninja Forms?</p>\r\n<a class=\"nf-button primary feature-list-link\" href=\"https://ninjaforms.com/features/?utm_source=Ninja+Forms+Plugin&utm_medium=Apps+and+Integrations&utm_campaign=Dashboard+Features+Link\" target=\"_blank\" rel=\"noopener\">We\'re glad you asked! Checkout our full list of features! <i class=\"fa fa-chevron-circle-right\" aria-hidden=\"true\"></i></a>\r\n<div><em>All plans include a 14 day money back guarantee.</em></div>\r\n<div>Requires a current active license and subject to our <a href=\"https://ninjaforms.com/terms-conditions/?utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Terms+Conditions\" target=\"_blank\" rel=\"noopener\">Terms &amp; Conditions</a>.</div>\r\n</div>', 'no'),
(5446, 'nf_email_send_count', '0', 'yes'),
(5447, 'nf_email_with_attachment_count', '0', 'yes'),
(5448, 'nf_email_to_count', '0', 'yes'),
(5449, 'nf_email_to_max', '0', 'yes'),
(5450, 'nf_email_cc_count', '0', 'yes'),
(5451, 'nf_email_cc_max', '0', 'yes'),
(5452, 'nf_email_bcc_count', '0', 'yes'),
(5453, 'nf_email_bcc_max', '0', 'yes'),
(5454, 'nf_email_recipient_max', '0', 'yes'),
(5455, 'nf_email_attachment_count', '0', 'yes'),
(5456, 'nf_email_attachment_filesize_count', '0', 'yes'),
(5457, 'nf_email_attachment_filesize_max', '0', 'yes'),
(5431, 'db_upgraded', '', 'yes'),
(8376, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1563335234;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(11668, '_transient_timeout_wpseo_link_table_inaccessible', '1594770823', 'no'),
(11669, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(11670, '_transient_timeout_wpseo_meta_table_inaccessible', '1594770823', 'no'),
(11671, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(11710, '_transient_timeout_yst_sm_page_1:7YRT_3aSYe', '1563429976', 'no'),
(11711, '_transient_yst_sm_page_1:7YRT_3aSYe', 'C:24:\"WPSEO_Sitemap_Cache_Data\":1335:{a:2:{s:6:\"status\";s:2:\"ok\";s:3:\"xml\";s:1287:\"<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:image=\"http://www.google.com/schemas/sitemap-image/1.1\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd http://www.google.com/schemas/sitemap-image/1.1 http://www.google.com/schemas/sitemap-image/1.1/sitemap-image.xsd\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n	<url>\n		<loc>https://anuwedsajay.com/</loc>\n		<lastmod>2018-07-15T04:20:53+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/travel/</loc>\n		<lastmod>2018-07-10T16:16:49+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/gift-registry/</loc>\n		<lastmod>2018-07-10T16:17:05+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/photos/</loc>\n		<lastmod>2018-07-11T16:20:15+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/rsvp/</loc>\n		<lastmod>2018-07-11T17:11:05+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/events/</loc>\n		<lastmod>2018-07-14T17:41:34+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/live-stream/</loc>\n		<lastmod>2018-08-25T13:55:09+00:00</lastmod>\n	</url>\n	<url>\n		<loc>https://anuwedsajay.com/wedding-party/</loc>\n		<lastmod>2019-04-15T08:18:55+00:00</lastmod>\n	</url>\n</urlset>\";}}', 'no'),
(11718, '_transient_doing_cron', '1568490666.1059000492095947265625', 'yes'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(8379, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'Weblizar', 'yes'),
(145, 'theme_mods_weblog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531234062;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:14:\"weblog-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-top-col-one\";a:0:{}s:18:\"footer-top-col-two\";a:0:{}s:20:\"footer-top-col-three\";a:0:{}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'widget_weblog_author', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'weblizar_options', 'a:2:{s:16:\"slide_btn_text_2\";s:0:\"\";s:10:\"_frontpage\";s:0:\"\";}', 'yes'),
(157, 'theme_mods_weblizar', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"000000\";}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(198, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:843;a:3:{s:4:\"slug\";s:10:\"foogallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"foogallery/foogallery.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"foogallery\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"foogallery/foogallery.php\";}s:17:\"install_timestamp\";i:1531324543;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.0.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"1.4.31\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:24:\"anusha.apnaextension.com\";s:9:\"server_ip\";s:15:\"103.199.136.113\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1531324543;s:7:\"version\";s:6:\"1.4.31\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1531324647;s:7:\"version\";s:6:\"1.4.31\";}}}s:13:\"file_slug_map\";a:1:{s:25:\"foogallery/foogallery.php\";s:10:\"foogallery\";}s:7:\"plugins\";a:1:{s:10:\"foogallery\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"FooGallery\";s:4:\"slug\";s:10:\"foogallery\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:25:\"foogallery/foogallery.php\";s:7:\"version\";s:6:\"1.4.31\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_d87616455a835af1d0658699d0192\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"843\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"70cc5349805359e7e9f61a4e10c92e3b\";s:13:\"admin_notices\";a:1:{s:10:\"foogallery\";a:0:{}}}', 'yes'),
(199, 'fs_api_cache', 'a:0:{}', 'yes'),
(196, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:19:\"foogallery/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.0.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1531325295;s:11:\"plugin_path\";s:25:\"foogallery/foogallery.php\";}}s:7:\"abspath\";s:45:\"/home/apnaextension/anusha.apnaextension.com/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"foogallery/foogallery.php\";s:8:\"sdk_path\";s:19:\"foogallery/freemius\";s:7:\"version\";s:5:\"2.0.1\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1531325295;}}', 'yes'),
(213, 'wd_bwg_version', '1.4.15', 'no'),
(214, 'wd_bwg_theme_version', '1.0.0', 'no'),
(197, 'fs_debug_mode', '', 'yes'),
(223, 'photonic_options', 'a:1:{s:14:\"disable_editor\";s:2:\"on\";}', 'yes'),
(225, 'widget_rbs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(226, 'RoboGalleryInstallDate', '1555316017', 'yes'),
(227, 'RoboGalleryInstallVersion', '2.8.23', 'yes'),
(228, 'rbs_gallery_db_version', '2.8.23', 'yes'),
(201, 'foogallery_extensions_slugs', 'a:10:{i:0;s:17:\"default_templates\";i:1;s:6:\"albums\";i:2;s:8:\"foovideo\";i:3;s:6:\"foobox\";i:4;s:15:\"custom_branding\";i:5;s:7:\"nextgen\";i:6;s:24:\"foogallery-zoom-template\";i:7;s:21:\"foobox-image-lightbox\";i:8;s:32:\"foogallery-owl-carousel-template\";i:9;s:10:\"media_menu\";}', 'yes'),
(208, 'foogallery-version', '1.4.31', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(363, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"7.8\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1531628143;}', 'yes'),
(204, 'foogallery_extensions_activated', 'a:1:{s:17:\"default_templates\";s:38:\"FooGallery_Default_Templates_Extension\";}', 'yes'),
(205, 'foogallery_extensions_auto_activated', '1', 'yes'),
(211, 'widget_foogallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, 'foogallery-thumb-test', 'a:2:{s:3:\"key\";s:44:\"php$(5.4.40}-http://anusha.apnaextension.com\";s:7:\"results\";a:4:{s:7:\"success\";b:1;s:5:\"thumb\";s:102:\"http://anusha.apnaextension.com/wp-content/uploads/cache/plugins/foogallery/assets/logo/2257734992.png\";s:5:\"error\";s:0:\"\";s:9:\"file_info\";a:2:{s:3:\"ext\";s:3:\"png\";s:4:\"type\";s:9:\"image/png\";}}}', 'yes'),
(364, 'wpseo_titles', 'a:70:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:24:\"title-robo_gallery_table\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-robo_gallery_table\";s:0:\"\";s:26:\"noindex-robo_gallery_table\";b:0;s:27:\"showdate-robo_gallery_table\";b:0;s:37:\"display-metabox-pt-robo_gallery_table\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(233, 'ninja_forms_data_is_clean', 'true', 'yes'),
(234, 'ninja_forms_version', '3.4.9', 'yes'),
(235, 'ninja_forms_db_version', '1.0', 'no'),
(236, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(215, 'widget_bwp_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(216, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"7/25/2018\";s:3:\"int\";i:14;}}', 'yes'),
(219, 'bwg_subscribe_done', '1', 'yes'),
(220, 'wds_io_notice_status', '1', 'no'),
(242, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"7/18/2018\";s:3:\"int\";i:7;}}', 'yes'),
(243, 'nf_form_tel_data', '1,2', 'no'),
(247, 'nf_form_tel_sent', 'true', 'no'),
(239, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(245, 'ninja_forms_optin_reported', '1', 'yes'),
(246, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(365, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:66:\"https://anuwedsajay.com/wp-content/uploads/2018/07/anuwedsajay.png\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(366, 'wpseo_flush_rewrite', '1', 'yes'),
(383, 'category_children', 'a:0:{}', 'yes'),
(379, 'wpseo_sitemap_1_cache_validator', '4QuzS', 'no'),
(380, 'wpseo_sitemap_page_cache_validator', '3aSYe', 'no'),
(382, 'wpseo_sitemap_cache_validator_global', '7YRT', 'no'),
(386, 'wpseo_sitemap_category_cache_validator', '2aez9', 'no'),
(389, 'wpseo_sitemap_author_cache_validator', '2ajOD', 'no'),
(392, 'wpseo_sitemap_post_cache_validator', '4QuzV', 'no'),
(395, 'wpseo_sitemap_robo_gallery_table_cache_validator', '3aXRv', 'no'),
(457, 'wpseo_sitemap_attachment_cache_validator', '51gXi', 'no'),
(1425, 'wpseo_sitemap_nav_menu_item_cache_validator', '3qgnb', 'no'),
(5459, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build smart, dynamic, interactive WordPress forms that tailor themselves to what a user needs as they fill out the form.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.0.24\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Multi-Part Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-part-forms.png\",\"content\":\"Easily break long forms into multiple pages for a huge user experience upgrade!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Allow users to create their own public posts and pages without ever seeing the Dashboard!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Allow users to upload files and save them to your server, media library, or even Dropbox and Amazon S3!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.0.27\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Easily create multi-column form layouts and beautifully styled WordPress forms without mastering CSS.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.27\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"MailChimp\",\"image\":\"assets\\/img\\/add-ons\\/mail-chimp.png\",\"content\":\"Integrate MailChimp and WordPress with easy-to-create, fully customizable signup forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp+Docs\",\"version\":\"3.1.11\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Connect your website directly with Campaign Monitor using any of your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Collect valuable user data on form submission without the hassle of integrating with other services!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Turn any WordPress form into a beautiful, fully customizable Constant Contact signup form in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Integrate AWeber and WordPress for fully automated email marketing in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Connect WordPress with PayPal Express & start collecting payments with your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.0.14\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Supercharge your MailPoet newsletter campaigns with easy to integrate and fully customizable WordPress signup forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Sell smarter, better, and faster with total integration between Zoho CRM and WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Save time to focus on sales with direct, flawless integration with your Capsule CRM account\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Accept credit cards payments securely and efficiently from your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.0.22\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Connect your WordPress forms and Insightly CRM to build better customer relationships and accelerate sales\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Easily create standardized PDF copies of any form submission to export or email\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Sendy\",\"image\":\"assets\\/img\\/add-ons\\/sendy.png\",\"content\":\"Sendy extension for Ninja Forms lets you subscribe users using Ninja Forms.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/sendy\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Sendy\",\"plugin\":\"ninja-forms-sendy\\/ninja-forms-sendy.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/sendy\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Sendy+Docs\",\"version\":\"3.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create Trello cards from your Ninja Forms submissions.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"A simple, streamlined, and secure way to accept credit card payments in WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Integrate WordPress with virtually any service in a matter of minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Complete, effortless integration between Salesforce and WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Stay in touch with real-time notifications every time a form is submitted. Get Slack for WordPress and never miss a thing!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Connect to CleverReach and turn any of your WordPress forms into a CleverReach signup form in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Connect your WordPress forms to virtually any external service, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Flawlessly export any number of form submissions into an Excel spreadsheet with the press of a button!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"WebMerge\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Populate documents in WordPress, digital or paper! Perfect for contracts, applications, government forms, patient registration, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Bring excellent customer support home to your WordPress dashboard with Help Scout integration for Ninja Forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Add users to Emma newsletters using Ninja Forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Send a SMS when someone submits your form via ClickSend.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Send a SMS when someone submits your form via Twilio.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscribe users to Recurly plans using Ninja Forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"User registration and management made easy using your Wordpress forms. Simple. Beautiful. Efficient.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.0.11\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Stop losing conversions on longer WordPress forms! Give your users a way to save their progress for any incomplete form.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.21\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Automation, integration, analytics... EmailOctopus is the email management solution that fills every need, and it\'s now available for WordPress!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Automated, effortless integration with PipelineDeals CRM\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Combine the functional simplicity of Highrise CRM + the power to build lasting customer relationships with your WordPress website.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Integrate WordPress with ConvertKit seamlessly through your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Active Campaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Discover marketing automation that\'s intelligent, powerful, and easy to use!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]}]', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(335, 153, '_field_7', '3'),
(336, 153, '_form_id', '2'),
(337, 153, '_seq_num', '6'),
(338, 156, '_field_5', 'Om Prakash Yadav'),
(339, 156, '_field_6', ''),
(340, 156, '_field_7', ''),
(341, 156, '_form_id', '2'),
(342, 156, '_seq_num', '7'),
(343, 28, '_yoast_wpseo_content_score', '90'),
(334, 153, '_field_6', 'rcenterpriseshyderabad@gmail.com'),
(333, 153, '_field_5', 'T.Rsm chandraiah'),
(332, 152, '_seq_num', '5'),
(330, 152, '_field_7', '3'),
(331, 152, '_form_id', '2'),
(329, 152, '_field_6', 'prakash_hll@yahoo.co.in'),
(327, 151, '_seq_num', '4'),
(328, 152, '_field_5', 'I.om Prakash yadav'),
(326, 151, '_form_id', '2'),
(324, 151, '_field_6', 'prakash_hll@yahoo.co.in'),
(325, 151, '_field_7', '3'),
(300, 136, '_seq_num', '1'),
(298, 136, '_field_7', '2'),
(299, 136, '_form_id', '2'),
(297, 136, '_field_6', 'sarojanreddy@hotmail.com'),
(296, 136, '_field_5', 'Dr. Narayan and Saroja Reddy'),
(29, 14, '_menu_item_type', 'custom'),
(30, 14, '_menu_item_menu_item_parent', '0'),
(31, 14, '_menu_item_object_id', '14'),
(32, 14, '_menu_item_object', 'custom'),
(33, 14, '_menu_item_target', ''),
(34, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 14, '_menu_item_xfn', ''),
(36, 14, '_menu_item_url', 'http://anusha.apnaextension.com/'),
(37, 14, '_menu_item_orphaned', '1531233828'),
(314, 148, '_field_6', 'edgyujjii@gmaip.com'),
(313, 148, '_field_5', 'Cvg'),
(312, 138, '_yoast_wpseo_content_score', '60'),
(311, 139, '_menu_item_url', ''),
(310, 139, '_menu_item_xfn', ''),
(309, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 139, '_menu_item_object', 'page'),
(308, 139, '_menu_item_target', ''),
(48, 16, '_edit_last', '1'),
(49, 16, '_edit_lock', '1531628456:1'),
(50, 16, 'weblog_sidebar_layout', 'default-sidebar'),
(323, 151, '_field_5', 'K.omprakash yadav'),
(322, 150, '_seq_num', '3'),
(321, 150, '_form_id', '2'),
(320, 150, '_field_7', '3'),
(318, 150, '_field_5', 'K.om Prakash yadav'),
(319, 150, '_field_6', 'prakash_hll@yahoo.co.in'),
(58, 21, '_wp_attached_file', '2018/07/img.png'),
(59, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3333;s:6:\"height\";i:1250;s:4:\"file\";s:15:\"2018/07/img.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"img-768x288.png\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"img-1024x384.png\";s:5:\"width\";i:1024;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:13:\"img-54x54.png\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:15:\"img-800x400.png\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:15:\"img-350x150.png\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 22, '_edit_last', '1'),
(61, 22, '_edit_lock', '1531329068:1'),
(62, 22, '_wp_page_template', 'default'),
(63, 24, '_edit_last', '1'),
(64, 24, '_wp_page_template', 'default'),
(65, 24, '_edit_lock', '1531590201:1'),
(66, 26, '_edit_last', '1'),
(67, 26, '_edit_lock', '1531589965:1'),
(68, 26, '_wp_page_template', 'default'),
(69, 28, '_edit_last', '1'),
(70, 28, '_wp_page_template', 'default'),
(71, 28, '_edit_lock', '1555316257:1'),
(72, 30, '_edit_last', '1'),
(73, 30, '_wp_page_template', 'default'),
(74, 30, '_edit_lock', '1531239275:1'),
(75, 32, '_edit_last', '1'),
(76, 32, '_wp_page_template', 'default'),
(77, 32, '_edit_lock', '1531239289:1'),
(317, 148, '_seq_num', '2'),
(316, 148, '_form_id', '2'),
(315, 148, '_field_7', '2'),
(81, 36, '_menu_item_type', 'post_type'),
(82, 36, '_menu_item_menu_item_parent', '0'),
(83, 36, '_menu_item_object_id', '16'),
(84, 36, '_menu_item_object', 'page'),
(85, 36, '_menu_item_target', ''),
(86, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 36, '_menu_item_xfn', ''),
(88, 36, '_menu_item_url', ''),
(90, 37, '_menu_item_type', 'post_type'),
(91, 37, '_menu_item_menu_item_parent', '0'),
(92, 37, '_menu_item_object_id', '26'),
(93, 37, '_menu_item_object', 'page'),
(94, 37, '_menu_item_target', ''),
(95, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 37, '_menu_item_xfn', ''),
(97, 37, '_menu_item_url', ''),
(156, 52, '_wp_attached_file', '2018/07/root_SmallGraphic_f5d8MV7.png'),
(306, 139, '_menu_item_object_id', '138'),
(108, 39, '_menu_item_type', 'post_type'),
(109, 39, '_menu_item_menu_item_parent', '0'),
(110, 39, '_menu_item_object_id', '16'),
(111, 39, '_menu_item_object', 'page'),
(112, 39, '_menu_item_target', ''),
(113, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 39, '_menu_item_xfn', ''),
(115, 39, '_menu_item_url', ''),
(116, 39, '_menu_item_orphaned', '1531239663'),
(117, 40, '_menu_item_type', 'post_type'),
(118, 40, '_menu_item_menu_item_parent', '0'),
(119, 40, '_menu_item_object_id', '24'),
(120, 40, '_menu_item_object', 'page'),
(121, 40, '_menu_item_target', ''),
(122, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 40, '_menu_item_xfn', ''),
(124, 40, '_menu_item_url', ''),
(126, 41, '_menu_item_type', 'post_type'),
(127, 41, '_menu_item_menu_item_parent', '0'),
(128, 41, '_menu_item_object_id', '22'),
(129, 41, '_menu_item_object', 'page'),
(130, 41, '_menu_item_target', ''),
(131, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 41, '_menu_item_xfn', ''),
(133, 41, '_menu_item_url', ''),
(157, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:208;s:6:\"height\";i:208;s:4:\"file\";s:37:\"2018/07/root_SmallGraphic_f5d8MV7.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"root_SmallGraphic_f5d8MV7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:35:\"root_SmallGraphic_f5d8MV7-54x54.png\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:37:\"root_SmallGraphic_f5d8MV7-208x150.png\";s:5:\"width\";i:208;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 126, '_wp_attached_file', '2018/07/Prewedding-Pictures-53.jpg'),
(266, 125, '_wp_attached_file', '2018/07/Prewedding-Pictures-51.jpg'),
(153, 16, '_wp_page_template', 'default'),
(144, 43, '_menu_item_type', 'post_type'),
(145, 43, '_menu_item_menu_item_parent', '0'),
(146, 43, '_menu_item_object_id', '28'),
(147, 43, '_menu_item_object', 'page'),
(148, 43, '_menu_item_target', ''),
(149, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 43, '_menu_item_xfn', ''),
(151, 43, '_menu_item_url', ''),
(305, 139, '_menu_item_menu_item_parent', '0'),
(158, 62, '_edit_last', '1'),
(159, 62, 'foogallery_attachments', 'a:9:{i:0;s:2:\"63\";i:1;s:2:\"64\";i:2;s:2:\"65\";i:3;s:2:\"66\";i:4;s:2:\"67\";i:5;s:2:\"68\";i:6;s:2:\"69\";i:7;s:2:\"70\";i:8;s:2:\"71\";}'),
(160, 62, 'foogallery_template', 'default'),
(161, 62, '_foogallery_settings', 'a:23:{s:21:\"foogallery_items_view\";s:6:\"manage\";s:28:\"default_thumbnail_dimensions\";a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:22:\"default_thumbnail_link\";s:5:\"image\";s:16:\"default_lightbox\";s:4:\"none\";s:15:\"default_spacing\";s:12:\"fg-gutter-10\";s:17:\"default_alignment\";s:9:\"fg-center\";s:13:\"default_theme\";s:8:\"fg-light\";s:19:\"default_border_size\";s:14:\"fg-border-thin\";s:23:\"default_rounded_corners\";s:0:\"\";s:19:\"default_drop_shadow\";s:17:\"fg-shadow-outline\";s:20:\"default_inner_shadow\";s:0:\"\";s:20:\"default_loading_icon\";s:18:\"fg-loading-default\";s:21:\"default_loaded_effect\";s:17:\"fg-loaded-fade-in\";s:26:\"default_hover_effect_color\";s:0:\"\";s:26:\"default_hover_effect_scale\";s:0:\"\";s:39:\"default_hover_effect_caption_visibility\";s:16:\"fg-caption-hover\";s:31:\"default_hover_effect_transition\";s:13:\"fg-hover-fade\";s:25:\"default_hover_effect_icon\";s:13:\"fg-hover-zoom\";s:28:\"default_caption_title_source\";s:0:\"\";s:27:\"default_caption_desc_source\";s:0:\"\";s:29:\"default_captions_limit_length\";s:0:\"\";s:19:\"default_paging_type\";s:0:\"\";s:16:\"default_lazyload\";s:0:\"\";}'),
(162, 62, 'foogallery_sort', ''),
(163, 62, '_edit_lock', '1531324945:1'),
(164, 63, '_wp_attached_file', '2018/07/1.jpg'),
(165, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"1-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"1-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"1-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 64, '_wp_attached_file', '2018/07/2.jpg'),
(167, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2018/07/2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"2-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"2-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"2-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 65, '_wp_attached_file', '2018/07/3.jpg'),
(169, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"3-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"3-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"3-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 66, '_wp_attached_file', '2018/07/4.jpg'),
(171, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"4-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"4-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"4-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 67, '_wp_attached_file', '2018/07/5.jpg'),
(173, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/5.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"5-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"5-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"5-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"5-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"5-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 68, '_wp_attached_file', '2018/07/6.jpg'),
(175, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2018/07/6.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"6-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"6-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"6-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 69, '_wp_attached_file', '2018/07/7.jpg'),
(177, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/7.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"7-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"7-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"7-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"7-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 70, '_wp_attached_file', '2018/07/8.jpg'),
(179, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2018/07/8.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"8-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"8-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"8-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"8-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 71, '_wp_attached_file', '2018/07/9.jpg'),
(181, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2018/07/9.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:11:\"9-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:13:\"9-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:13:\"9-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 24, '_foogallery', '62'),
(183, 24, '_foogallery_css', 'a:1:{s:15:\"foogallery-core\";a:5:{s:3:\"src\";s:120:\"http://anusha.apnaextension.com/wp-content/plugins/foogallery/extensions/default-templates/shared/css/foogallery.min.css\";s:4:\"deps\";a:0:{}s:3:\"ver\";s:6:\"1.4.31\";s:5:\"media\";s:3:\"all\";s:4:\"site\";s:31:\"http://anusha.apnaextension.com\";}}'),
(184, 74, '_edit_last', '1'),
(185, 74, '_edit_lock', '1555316258:1'),
(186, 74, 'rsg_galleryImages', 'a:9:{i:0;s:3:\"122\";i:1;s:3:\"123\";i:2;s:3:\"124\";i:3;s:3:\"125\";i:4;s:3:\"126\";i:5;s:3:\"127\";i:6;s:3:\"128\";i:7;s:3:\"129\";i:8;s:3:\"130\";}'),
(189, 74, 'rsg_width-size', 'a:1:{s:5:\"width\";s:3:\"100\";}'),
(190, 74, 'rsg_thumb-size-options', 'a:4:{s:7:\"orderby\";s:9:\"categoryD\";s:6:\"source\";s:4:\"full\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:3:\"140\";}'),
(191, 74, 'rsg_colums', 'a:8:{s:9:\"autowidth\";s:4:\"auto\";s:6:\"colums\";s:1:\"3\";s:10:\"autowidth1\";s:4:\"auto\";s:7:\"colums1\";s:1:\"3\";s:10:\"autowidth2\";s:4:\"auto\";s:7:\"colums2\";s:1:\"2\";s:10:\"autowidth3\";s:4:\"auto\";s:7:\"colums3\";s:1:\"1\";}'),
(192, 74, 'rsg_radius', '5'),
(193, 74, 'rsg_horizontalSpaceBetweenBoxes', '15'),
(194, 74, 'rsg_verticalSpaceBetweenBoxes', '15'),
(195, 74, 'rsg_shadow', '1'),
(196, 74, 'rsg_shadow-options', 'a:4:{s:7:\"hshadow\";s:1:\"0\";s:7:\"vshadow\";s:1:\"5\";s:7:\"bshadow\";s:1:\"7\";s:5:\"color\";s:21:\"rgba(34, 25, 25, 0.4)\";}'),
(197, 74, 'rsg_hover-shadow-options', 'a:4:{s:7:\"hshadow\";s:1:\"1\";s:7:\"vshadow\";s:1:\"3\";s:7:\"bshadow\";s:1:\"3\";s:5:\"color\";s:21:\"rgba(34, 25, 25, 0.4)\";}'),
(198, 74, 'rsg_border-options', 'a:3:{s:5:\"width\";s:1:\"5\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:16:\"rgb(229, 64, 40)\";}'),
(199, 74, 'rsg_hover-border-options', 'a:3:{s:5:\"width\";s:1:\"5\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:16:\"rgb(229, 64, 40)\";}'),
(200, 74, 'rsg_thumbClick', '0'),
(201, 74, 'rsg_hover', '1'),
(202, 74, 'rsg_background', 'rgba(7, 7, 7, 0.5)'),
(203, 74, 'rsg_overlayEffect', 'direction-aware-fade'),
(204, 74, 'rsg_showTitle', 'a:6:{s:7:\"enabled\";s:1:\"1\";s:8:\"fontBold\";s:4:\"bold\";s:8:\"fontSize\";s:2:\"12\";s:14:\"fontLineHeight\";s:3:\"100\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";}'),
(205, 74, 'rsg_linkIcon', 'a:8:{s:10:\"iconSelect\";s:7:\"fa-link\";s:8:\"fontSize\";s:2:\"20\";s:14:\"fontLineHeight\";s:3:\"100\";s:10:\"borderSize\";s:1:\"0\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";s:7:\"colorBg\";s:16:\"rgb(229, 64, 40)\";s:12:\"colorBgHover\";s:16:\"rgb(183, 55, 37)\";}'),
(206, 74, 'rsg_zoomIcon', 'a:9:{s:7:\"enabled\";s:1:\"1\";s:10:\"iconSelect\";s:14:\"fa-search-plus\";s:8:\"fontSize\";s:2:\"16\";s:14:\"fontLineHeight\";s:3:\"100\";s:10:\"borderSize\";s:1:\"2\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";s:7:\"colorBg\";s:17:\"rgb(13, 130, 241)\";s:12:\"colorBgHover\";s:15:\"rgb(6, 70, 130)\";}'),
(207, 74, 'rsg_showDesc', 'a:4:{s:8:\"fontSize\";s:2:\"24\";s:14:\"fontLineHeight\";s:3:\"100\";s:5:\"color\";s:12:\"rgb(0, 0, 0)\";s:10:\"colorHover\";s:12:\"rgb(0, 0, 0)\";}'),
(208, 74, 'rsg_desc_template', '<div class=\"rbs-hover-title\">@TITLE@</div>\r\n<div class=\"rbs-hover-caption\">@CAPTION@</div>\r\n<div class=\"rbs-hover-text\">@DESC@</div>\r\n<div class=\"rbs-hover-more\"><a href=\"@LINK@\">Read more</a></div>'),
(209, 74, 'rsg_menu', '1'),
(210, 74, 'rsg_menuSelfImages', '1'),
(211, 74, 'rsg_menuRoot', '1'),
(212, 74, 'rsg_menuRootLabel', 'All'),
(213, 74, 'rsg_menuSelf', '1'),
(214, 74, 'rsg_buttonFill', 'border'),
(215, 74, 'rsg_buttonColor', 'red'),
(216, 74, 'rsg_buttonType', 'normal'),
(217, 74, 'rsg_buttonSize', 'normal'),
(218, 74, 'rsg_buttonAlign', 'left'),
(219, 74, 'rsg_paddingLeft', '5'),
(220, 74, 'rsg_paddingBottom', '10'),
(221, 74, 'rsg_searchColor', 'rgb(218, 139, 163)'),
(222, 74, 'rsg_searchLabel', 'search'),
(223, 74, 'rsg_lazyLoad', '1'),
(224, 74, 'rsg_boxesToLoadStart', '12'),
(225, 74, 'rsg_boxesToLoad', '8'),
(226, 74, 'rsg_waitUntilThumbLoads', '1'),
(227, 74, 'rsg_loadingBgColor', 'rgb(255, 255, 255)'),
(228, 74, 'rsg_LoadingWord', 'Loading...'),
(229, 74, 'rsg_loadMoreWord', 'Load More'),
(230, 74, 'rsg_noMoreEntriesWord', 'No More Entries'),
(231, 74, 'rsg_polaroidSource', 'desc'),
(232, 74, 'rsg_polaroidBackground', 'rgb(255, 255, 255)'),
(233, 74, 'rsg_polaroidAlign', 'center'),
(234, 74, 'rsg_lightboxTitle', '1'),
(235, 74, 'rsg_lightboxSource', 'title'),
(236, 74, 'rsg_lightboxColor', 'rgb(243, 243, 243)'),
(237, 74, 'rsg_lightboxBackground', 'rgba(11, 11, 11, 0.8)'),
(238, 74, 'rsg_lightboxCounter', '1'),
(239, 74, 'rsg_lightboxCounterText', 'of'),
(240, 74, 'rsg_lightboxSwipe', '1'),
(241, 74, 'rsg_lightboxSwipeDirection', 'left'),
(242, 74, 'rsg_lightboxClose', '1'),
(243, 74, 'rsg_lightboxArrow', '1'),
(244, 74, 'rsg_lightboxDescSource', 'title'),
(245, 74, 'rsg_lightboxDescClass', 'light'),
(246, 74, 'rsg_lightboxSocialFacebook', '1'),
(247, 74, 'rsg_lightboxSocialTwitter', '1'),
(248, 74, 'rsg_lightboxSocialGoogleplus', '1'),
(249, 74, 'rsg_lightboxSocialPinterest', '1'),
(250, 74, 'rsg_lightboxSocialVK', '1'),
(251, 74, 'gallery_views_count', '599'),
(267, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:1939;s:4:\"file\";s:34:\"2018/07/Prewedding-Pictures-51.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-51-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-51-768x496.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:496;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-51-1024x662.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:662;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:32:\"Prewedding-Pictures-51-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-51-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-51-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527429610\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 124, '_wp_attached_file', '2018/07/Prewedding-Pictures-18.jpg'),
(265, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:4500;s:4:\"file\";s:34:\"2018/07/Prewedding-Pictures-18.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-18-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-18-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-18-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:32:\"Prewedding-Pictures-18-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-18-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-18-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527427442\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 123, '_wp_attached_file', '2018/07/Prewedding-Pictures-17.jpg'),
(263, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:4202;s:4:\"file\";s:34:\"2018/07/Prewedding-Pictures-17.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-17-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-17-768x1076.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1076;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-17-731x1024.jpg\";s:5:\"width\";i:731;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:32:\"Prewedding-Pictures-17-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-17-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-17-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527427420\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 122, '_wp_attached_file', '2018/07/Prewedding-Pictures-1.jpg'),
(261, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:33:\"2018/07/Prewedding-Pictures-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:31:\"Prewedding-Pictures-1-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-1-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-1-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527427025\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:1812;s:4:\"file\";s:34:\"2018/07/Prewedding-Pictures-53.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-53-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-53-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-53-768x464.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-53-1024x618.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:618;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:32:\"Prewedding-Pictures-53-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-53-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:34:\"Prewedding-Pictures-53-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527429714\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 127, '_wp_attached_file', '2018/07/Prewedding-Pictures-124.jpg'),
(271, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:4239;s:4:\"file\";s:35:\"2018/07/Prewedding-Pictures-124.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-124-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-124-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Prewedding-Pictures-124-768x1085.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1085;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Prewedding-Pictures-124-725x1024.jpg\";s:5:\"width\";i:725;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-124-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-124-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-124-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527431948\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 128, '_wp_attached_file', '2018/07/Prewedding-Pictures-138.jpg'),
(273, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:1802;s:4:\"file\";s:35:\"2018/07/Prewedding-Pictures-138.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-138-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-138-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-138-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Prewedding-Pictures-138-1024x615.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:615;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-138-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-138-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-138-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527434129\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 129, '_wp_attached_file', '2018/07/Prewedding-Pictures-149.jpg'),
(275, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:35:\"2018/07/Prewedding-Pictures-149.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-149-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-149-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-149-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Prewedding-Pictures-149-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-149-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-149-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-149-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527434787\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 130, '_wp_attached_file', '2018/07/Prewedding-Pictures-182.jpg'),
(277, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:35:\"2018/07/Prewedding-Pictures-182.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-182-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-182-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-182-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Prewedding-Pictures-182-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:33:\"Prewedding-Pictures-182-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-182-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:35:\"Prewedding-Pictures-182-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527436388\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 74, 'rsg_options', '0'),
(344, 74, '_yoast_wpseo_content_score', '30'),
(304, 139, '_menu_item_type', 'post_type'),
(303, 138, '_wp_page_template', 'default'),
(281, 132, '_wp_attached_file', '2018/07/anuwedsajay.png'),
(282, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:686;s:6:\"height\";i:392;s:4:\"file\";s:23:\"2018/07/anuwedsajay.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"anuwedsajay-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"anuwedsajay-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:21:\"anuwedsajay-54x54.png\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:23:\"anuwedsajay-350x150.png\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 133, '_wp_attached_file', '2018/07/tempsnip.png'),
(284, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:574;s:6:\"height\";i:418;s:4:\"file\";s:20:\"2018/07/tempsnip.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tempsnip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tempsnip-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:18:\"tempsnip-54x54.png\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:20:\"tempsnip-574x400.png\";s:5:\"width\";i:574;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:20:\"tempsnip-350x150.png\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 134, '_wp_attached_file', '2018/07/cropped-Prewedding-Pictures-1.jpg'),
(286, 134, '_wp_attachment_context', 'site-icon'),
(287, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:41:\"2018/07/cropped-Prewedding-Pictures-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"wl_media_sidebar_img\";a:4:{s:4:\"file\";s:39:\"cropped-Prewedding-Pictures-1-54x54.jpg\";s:5:\"width\";i:54;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"wl_media_blog_img\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-512x400.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"wl_blog_img\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-350x150.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:41:\"cropped-Prewedding-Pictures-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:39:\"cropped-Prewedding-Pictures-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 138, '_edit_lock', '1535205314:1'),
(301, 138, '_edit_last', '1'),
(290, 16, '_yoast_wpseo_opengraph-image', 'https://anuwedsajay.com/wp-content/uploads/2018/07/anuwedsajay.png'),
(291, 16, '_yoast_wpseo_content_score', '90'),
(292, 16, '_yoast_wpseo_focuskw_text_input', 'anu weds ajay'),
(293, 16, '_yoast_wpseo_focuskw', 'anu weds ajay'),
(294, 16, '_yoast_wpseo_title', 'Anusha Reddy Weds Ajay Chandra Reddy | anu weds ajay'),
(295, 16, '_yoast_wpseo_linkdex', '28');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-10 14:38:01', '2018-07-10 14:38:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-10 14:38:01', '2018-07-10 14:38:01', '', 0, 'http://anusha.apnaextension.com/?p=1', 0, 'post', '', 1),
(147, 1, '2018-08-23 12:20:59', '2018-08-23 12:20:59', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-9\" style=\"float: none; margin: auto;\"><iframe width=\"100%\" height=\"415\"\r\nsrc=\"https://www.youtube.com/embed/0jvDjhbVXbE\">\r\n</iframe> </div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 12:20:59', '2018-08-23 12:20:59', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(148, 0, '2018-08-25 03:46:36', '2018-08-25 03:46:36', '', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2018-08-25 03:46:36', '2018-08-25 03:46:36', '', 0, 'https://anuwedsajay.com/nf_sub/148/', 0, 'nf_sub', '', 0),
(149, 1, '2018-08-25 13:55:09', '2018-08-25 13:55:09', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-9\" style=\"float: none; margin: auto;\"><iframe width=\"100%\" height=\"415\"\r\nsrc=\"https://www.youtube.com/embed/yNBwVGLTQcU\">\r\n</iframe> </div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-25 13:55:09', '2018-08-25 13:55:09', '', 138, 'https://anuwedsajay.com/2018/08/25/138-revision-v1/', 0, 'revision', '', 0),
(3, 1, '2018-07-10 14:38:01', '2018-07-10 14:38:01', '<h2>Who we are</h2><p>Our website address is: http://anusha.apnaextension.com.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-10 14:38:01', '2018-07-10 14:38:01', '', 0, 'http://anusha.apnaextension.com/?page_id=3', 0, 'page', '', 0),
(136, 0, '2018-08-03 14:30:48', '2018-08-03 14:30:48', '', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-08-03 14:30:48', '2018-08-03 14:30:48', '', 0, 'https://anuwedsajay.com/nf_sub/136/', 0, 'nf_sub', '', 0),
(14, 1, '2018-07-10 14:43:48', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-10 14:43:48', '0000-00-00 00:00:00', '', 0, 'http://anusha.apnaextension.com/?p=14', 1, 'nav_menu_item', '', 0),
(150, 0, '2018-08-29 07:49:53', '2018-08-29 07:49:53', '', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2018-08-29 07:49:53', '2018-08-29 07:49:53', '', 0, 'https://anuwedsajay.com/nf_sub/150/', 0, 'nf_sub', '', 0),
(16, 1, '2018-07-10 14:44:52', '2018-07-10 14:44:52', '<video class=\"videmnr\" autoplay=\"autoplay\" controls=\"controls\" width=\"100%\" height=\"90%\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span>\r\n<source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\" />&nbsp;\r\n\r\n</video>\r\n<p class=\"headhome\" style=\"text-align: center;\">Please join us for our wedding celebration on</p>\r\n<p class=\"hedsect\" style=\"text-align: center;\">August 25, 2018</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-15 04:20:53', '2018-07-15 04:20:53', '', 0, 'http://anusha.apnaextension.com/?page_id=16', 0, 'page', '', 0),
(114, 1, '2018-07-12 12:45:37', '2018-07-12 12:45:37', '<video class=\"videmnr\" controls autoplay width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n\r\n</video>\r\n\r\n\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 12:45:37', '2018-07-12 12:45:37', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-07-14 17:33:25', '2018-07-14 17:33:25', '<video class=\"videmnr\" autoplay=\"autoplay\" controls=\"controls\" width=\"100%\" height=\"90%\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span>\r\n<source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\" />&nbsp;\r\n\r\n</video>\r\n<p class=\"headhome\" style=\"text-align: center;\">Please join us for our wedding celebration on</p>\r\n<p class=\"hedsect\" style=\"text-align: center;\">August 25, 2018</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-14 17:33:25', '2018-07-14 17:33:25', '', 16, 'https://anuwedsajay.com/2018/07/14/16-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-07-10 14:44:52', '2018-07-10 14:44:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 14:44:52', '2018-07-10 14:44:52', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-04-15 08:19:20', '2019-04-15 08:19:20', '', 'gallery', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2019-04-15 08:19:20', '2019-04-15 08:19:20', '', 74, 'https://anuwedsajay.com/2019/04/15/74-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2018-07-10 15:07:42', '2018-07-10 15:07:42', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2018-07-10 15:07:42', '2018-07-10 15:07:42', '', 16, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/img.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-07-10 16:15:47', '2018-07-10 16:15:47', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<p style=\"text-align: center;\"><span class=\"headsectfont\" style=\"font-size: 19.2px!important; letter-spacing: -1.9px!important; line-height: 35px!important;\">Enter the name on your\r\ninvitation</span></p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'publish', 'closed', 'closed', '', 'rsvp', '', '', '2018-07-11 17:11:05', '2018-07-11 17:11:05', '', 0, 'http://anusha.apnaextension.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-07-10 16:15:47', '2018-07-10 16:15:47', '', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-10 16:15:47', '2018-07-10 16:15:47', '', 22, 'http://anusha.apnaextension.com/2018/07/10/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-07-10 16:15:59', '2018-07-10 16:15:59', '<p style=\"text-align: center;\" class=\"hedsect\">Photos</p>\r\n<div class=\"border\"></div>\r\n[robo-gallery id=\"74\"]', 'Photos', '', 'publish', 'closed', 'closed', '', 'photos', '', '', '2018-07-11 16:20:15', '2018-07-11 16:20:15', '', 0, 'http://anusha.apnaextension.com/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-07-10 16:15:59', '2018-07-10 16:15:59', '', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-10 16:15:59', '2018-07-10 16:15:59', '', 24, 'http://anusha.apnaextension.com/2018/07/10/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-10 16:16:22', '2018-07-10 16:16:22', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\">\r\n<h1><strong class=\"headhome\"><strong class=\"headhome\">Wedding Ceremony</strong></strong></h1>\r\n&nbsp;\r\n<h4 class=\"section-hero-header-title\">Sheraton Imperial Hotel Raleigh-Durham Airport at Research Triangle Park</h4>\r\n4700 Emperor Blvd I-40 at Exit 282, Page Rd, Durham, NC 27703\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.809545609555!2d-78.84089888473574!3d35.87818388014884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89acefd602f12c35%3A0xc31f72be009859c3!2sSheraton+Imperial+Hotel+Raleigh-Durham+Airport+at+Research+Triangle+Park!5e0!3m2!1sen!2sus!4v1531589725923\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-07-14 17:41:34', '2018-07-14 17:41:34', '', 0, 'http://anusha.apnaextension.com/?page_id=26', 0, 'page', '', 0),
(116, 1, '2018-07-14 17:37:13', '2018-07-14 17:37:13', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118<strong class=\"headhome\">2. Reception</strong>\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105Get Directions\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.809545609555!2d-78.84089888473574!3d35.87818388014884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89acefd602f12c35%3A0xc31f72be009859c3!2sSheraton+Imperial+Hotel+Raleigh-Durham+Airport+at+Research+Triangle+Park!5e0!3m2!1sen!2sus!4v1531589725923\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-14 17:37:13', '2018-07-14 17:37:13', '', 26, 'https://anuwedsajay.com/2018/07/14/26-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-07-10 16:16:22', '2018-07-10 16:16:22', '', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-10 16:16:22', '2018-07-10 16:16:22', '', 26, 'http://anusha.apnaextension.com/2018/07/10/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-07-10 16:16:35', '2018-07-10 16:16:35', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Data coming soon...<br></p>\n<!-- /wp:paragraph -->', 'Wedding Party', '', 'publish', 'closed', 'closed', '', 'wedding-party', '', '', '2019-04-15 08:18:55', '2019-04-15 08:18:55', '', 0, 'http://anusha.apnaextension.com/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-07-10 16:16:35', '2018-07-10 16:16:35', '', 'Wedding Party', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-07-10 16:16:35', '2018-07-10 16:16:35', '', 28, 'http://anusha.apnaextension.com/2018/07/10/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-07-10 16:16:49', '2018-07-10 16:16:49', '', 'Travel', '', 'publish', 'closed', 'closed', '', 'travel', '', '', '2018-07-10 16:16:49', '2018-07-10 16:16:49', '', 0, 'http://anusha.apnaextension.com/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-07-10 16:16:49', '2018-07-10 16:16:49', '', 'Travel', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-07-10 16:16:49', '2018-07-10 16:16:49', '', 30, 'http://anusha.apnaextension.com/2018/07/10/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-07-10 16:17:05', '2018-07-10 16:17:05', '', 'Gift Registry', '', 'publish', 'closed', 'closed', '', 'gift-registry', '', '', '2018-07-10 16:17:05', '2018-07-10 16:17:05', '', 0, 'http://anusha.apnaextension.com/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-07-10 16:17:05', '2018-07-10 16:17:05', '', 'Gift Registry', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-07-10 16:17:05', '2018-07-10 16:17:05', '', 32, 'http://anusha.apnaextension.com/2018/07/10/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-07-10 16:17:11', '2018-07-10 16:17:11', '', 'Gift Registry', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2018-07-10 16:17:11', '2018-07-10 16:17:11', '', 32, 'http://anusha.apnaextension.com/2018/07/10/32-autosave-v1/', 0, 'revision', '', 0),
(151, 0, '2018-08-29 07:51:42', '2018-08-29 07:51:42', '', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2018-08-29 07:51:42', '2018-08-29 07:51:42', '', 0, 'https://anuwedsajay.com/nf_sub/151/', 0, 'nf_sub', '', 0),
(152, 0, '2018-08-29 07:52:57', '2018-08-29 07:52:57', '', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2018-08-29 07:52:57', '2018-08-29 07:52:57', '', 0, 'https://anuwedsajay.com/nf_sub/152/', 0, 'nf_sub', '', 0),
(156, 0, '2018-12-05 05:58:31', '2018-12-05 05:58:31', '', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2018-12-05 05:58:31', '2018-12-05 05:58:31', '', 0, 'https://anuwedsajay.com/nf_sub/156/', 0, 'nf_sub', '', 0),
(159, 1, '2019-04-15 08:18:28', '2019-04-15 08:18:28', '<!-- wp:paragraph -->\n<p>Data coming soon...<br></p>\n<!-- /wp:paragraph -->', 'Wedding Party', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-04-15 08:18:28', '2019-04-15 08:18:28', '', 28, 'https://anuwedsajay.com/2019/04/15/28-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-04-15 08:18:53', '2019-04-15 08:18:53', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Data coming soon...<br></p>\n<!-- /wp:paragraph -->', 'Wedding Party', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-04-15 08:18:53', '2019-04-15 08:18:53', '', 28, 'https://anuwedsajay.com/2019/04/15/28-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-10 16:21:54', '2018-07-10 16:21:54', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-07-14 17:43:07', '2018-07-14 17:43:07', '', 0, 'http://anusha.apnaextension.com/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-07-10 16:21:54', '2018-07-10 16:21:54', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-07-14 17:43:07', '2018-07-14 17:43:07', '', 0, 'http://anusha.apnaextension.com/?p=37', 4, 'nav_menu_item', '', 0),
(125, 1, '2018-07-15 04:01:16', '2018-07-15 04:01:16', '', 'Prewedding Pictures (51)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-51', '', '', '2018-07-15 04:01:16', '2018-07-15 04:01:16', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-51.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-07-10 16:21:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-10 16:21:03', '0000-00-00 00:00:00', '', 0, 'http://anusha.apnaextension.com/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-07-10 16:21:54', '2018-07-10 16:21:54', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-07-14 17:43:07', '2018-07-14 17:43:07', '', 0, 'http://anusha.apnaextension.com/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2018-07-10 16:21:54', '2018-07-10 16:21:54', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-07-14 17:43:07', '2018-07-14 17:43:07', '', 0, 'http://anusha.apnaextension.com/?p=41', 2, 'nav_menu_item', '', 0),
(43, 1, '2018-07-10 16:21:54', '2018-07-10 16:21:54', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-07-14 17:43:07', '2018-07-14 17:43:07', '', 0, 'http://anusha.apnaextension.com/?p=43', 5, 'nav_menu_item', '', 0),
(59, 1, '2018-07-10 17:03:41', '2018-07-10 17:03:41', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"headhome hedsect\">August 1, 2019</p>\r\n<img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" />\r\n<p style=\"text-align: center;\" class=\"headhome hedsect\">Our Story\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 17:03:41', '2018-07-10 17:03:41', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-10 16:59:31', '2018-07-10 16:59:31', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time></p>\r\n<img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" />\r\n<div data-radium=\"true\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8\" style=\"text-align: center;\" data-radium=\"true\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\">\r\n<div>\r\n<div style=\"text-align: center;\" data-radium=\"true\"><span data-radium=\"true\"><span class=\"Linkify\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:59:31', '2018-07-10 16:59:31', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-10 16:36:23', '2018-07-10 16:36:23', '<div data-radium=\"true\" data-reactid=\"64\">\r\n<div data-radium=\"true\" data-reactid=\"65\">\r\n<div data-radium=\"true\" data-reactid=\"67\">\r\n<div data-radium=\"true\" data-reactid=\"68\">\r\n<h3 data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time></div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:36:23', '2018-07-10 16:36:23', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-10 16:37:43', '2018-07-10 16:37:43', '<div data-radium=\"true\" data-reactid=\"64\">\r\n<div data-radium=\"true\" data-reactid=\"65\">\r\n<div data-radium=\"true\" data-reactid=\"67\">\r\n<div data-radium=\"true\" data-reactid=\"68\">\r\n<h3 data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n</div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:37:43', '2018-07-10 16:37:43', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-08-23 12:17:41', '2018-08-23 12:17:41', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\nData coming soon...', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 12:17:41', '2018-08-23 12:17:41', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-08-23 12:18:49', '2018-08-23 12:18:49', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\n\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\"></div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-autosave-v1', '', '', '2018-08-23 12:18:49', '2018-08-23 12:18:49', '', 138, 'https://anuwedsajay.com/2018/08/23/138-autosave-v1/', 0, 'revision', '', 0),
(144, 1, '2018-08-23 12:19:41', '2018-08-23 12:19:41', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\"><iframe width=\"420\" height=\"315\"\r\nsrc=\"https://www.youtube.com/embed/0jvDjhbVXbE\">\r\n</iframe> </div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 12:19:41', '2018-08-23 12:19:41', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-08-23 12:20:18', '2018-08-23 12:20:18', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\"><iframe width=\"100%\" height=\"315\"\r\nsrc=\"https://www.youtube.com/embed/0jvDjhbVXbE\">\r\n</iframe> </div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 12:20:18', '2018-08-23 12:20:18', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-08-23 12:20:49', '2018-08-23 12:20:49', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-9\" style=\"float: none; margin: auto;\"><iframe width=\"100%\" height=\"315\"\r\nsrc=\"https://www.youtube.com/embed/0jvDjhbVXbE\">\r\n</iframe> </div>', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 12:20:49', '2018-08-23 12:20:49', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-07-10 16:46:41', '2018-07-10 16:46:41', '<iframe src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" style=\"width:100%!important\" height=\"360\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n</div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:46:41', '2018-07-10 16:46:41', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-10 16:52:37', '2018-07-10 16:52:37', '<iframe src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" style=\"width:100%!important\" height=\"360\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n</div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:52:37', '2018-07-10 16:52:37', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-07-10 16:53:58', '2018-07-10 16:53:58', '<iframe src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" style=\"width:100%!important\" height=\"360\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n</div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:53:58', '2018-07-10 16:53:58', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-10 16:54:46', '2018-07-10 16:54:46', '<iframe src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" style=\"width:100%!important\" height=\"360\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 data-radium=\"true\" class=\"headhome\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n</div>\r\n<div data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:54:46', '2018-07-10 16:54:46', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-07-10 16:55:32', '2018-07-10 16:55:32', '', 'root_SmallGraphic_f5d8MV7', '', 'inherit', 'open', 'closed', '', 'root_smallgraphic_f5d8mv7', '', '', '2018-07-10 16:55:32', '2018-07-10 16:55:32', '', 16, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-07-10 16:58:48', '2018-07-10 16:58:48', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n<img class=\"alignnone size-full wp-image-52\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n\r\n\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story August 1, 2019</h2>\r\n\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:58:48', '2018-07-10 16:58:48', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2018-07-10 16:57:58', '2018-07-10 16:57:58', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n<img class=\"alignnone size-full wp-image-52\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n\r\n\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story August 1, 2019</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:57:58', '2018-07-10 16:57:58', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-10 16:56:09', '2018-07-10 16:56:09', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time>\r\n\r\n<img class=\"alignnone size-full wp-image-52\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"71\">\r\n<div class=\"smallGraphic\" data-reactid=\"72\"></div>\r\n</div>\r\n<div class=\"introContainer\" data-radium=\"true\" data-reactid=\"73\">\r\n<div data-radium=\"true\" data-reactid=\"75\">\r\n<div class=\"rmq-c86bf1e3\" data-radium=\"true\" data-reactid=\"76\">\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"77\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8 hedsect\" data-radium=\"true\" data-reactid=\"78\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\" data-reactid=\"79\">\r\n<div data-reactid=\"80\">\r\n<div style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"81\"><span data-radium=\"true\" data-reactid=\"82\"><span class=\"Linkify\" data-reactid=\"83\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span><br data-reactid=\"84\" /></span><span data-radium=\"true\" data-reactid=\"85\"><br data-reactid=\"87\" /></span><span data-radium=\"true\" data-reactid=\"88\"><span class=\"Linkify\" data-reactid=\"89\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span><br data-reactid=\"90\" /></span><span data-radium=\"true\" data-reactid=\"91\"><br data-reactid=\"93\" /></span><span data-radium=\"true\" data-reactid=\"94\"><span class=\"Linkify\" data-reactid=\"95\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 16:56:09', '2018-07-10 16:56:09', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-07-10 17:01:40', '2018-07-10 17:01:40', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time></p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<div data-radium=\"true\">\r\n<h2 class=\" hedsect\" style=\"text-align: center;\" data-radium=\"true\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\">\r\n<div>\r\n<div style=\"text-align: center;\" data-radium=\"true\"><span data-radium=\"true\"><span class=\"Linkify\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 17:01:40', '2018-07-10 17:01:40', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-07-10 17:00:57', '2018-07-10 17:00:57', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<div data-radium=\"true\" data-reactid=\"64\">\r\n<h3 class=\"headhome\" style=\"text-align: center;\" data-radium=\"true\" data-reactid=\"69\">Please join us for our wedding celebration on</h3>\r\n</div>\r\n<p style=\"text-align: center;\"><time class=\"rmq-6457a04a rmq-2cdc64e3 rmq-60410766 hedsect\" datetime=\"2019-08-01\" data-radium=\"true\" data-reactid=\"70\">August 1, 2019</time></p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<div data-radium=\"true\">\r\n<h2 class=\"rmq-1f052247 rmq-7a14f521 rmq-dec481c8\" style=\"text-align: center;\" data-radium=\"true\">Our Story</h2>\r\n</div>\r\n<div class=\"introText\">\r\n<div>\r\n<div style=\"text-align: center;\" data-radium=\"true\"><span data-radium=\"true\"><span class=\"Linkify\">Julia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street - they were photographing the same building, just from different vantage points! - and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">In November, after dinner at Little Star (where they had their first \"real\" date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</span>\r\n</span><span data-radium=\"true\">\r\n</span><span data-radium=\"true\"><span class=\"Linkify\">They\'re so excited to start the next phase of their lives together and can\'t wait to celebrate with you in August!</span></span></div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 17:00:57', '2018-07-10 17:00:57', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-10 17:04:40', '2018-07-10 17:04:40', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" />\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 17:04:40', '2018-07-10 17:04:40', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-10 17:05:16', '2018-07-10 17:05:16', '<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-10 17:05:16', '2018-07-10 17:05:16', '', 16, 'http://anusha.apnaextension.com/2018/07/10/16-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-07-11 15:58:43', '2018-07-11 15:58:43', '', 'photo', '', 'publish', 'closed', 'closed', '', 'photo', '', '', '2018-07-11 16:03:25', '2018-07-11 16:03:25', '', 0, 'http://anusha.apnaextension.com/?post_type=foogallery&#038;p=62', 0, 'foogallery', '', 0),
(63, 1, '2018-07-11 16:02:17', '2018-07-11 16:02:17', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-07-11 16:02:17', '2018-07-11 16:02:17', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-07-11 16:02:23', '2018-07-11 16:02:23', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-07-11 16:02:23', '2018-07-11 16:02:23', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-07-11 16:02:28', '2018-07-11 16:02:28', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-07-11 16:02:28', '2018-07-11 16:02:28', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-07-11 16:02:38', '2018-07-11 16:02:38', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-07-11 16:02:38', '2018-07-11 16:02:38', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-07-11 16:02:45', '2018-07-11 16:02:45', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-07-11 16:02:45', '2018-07-11 16:02:45', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-07-11 16:02:49', '2018-07-11 16:02:49', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-07-11 16:02:49', '2018-07-11 16:02:49', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-07-11 16:02:56', '2018-07-11 16:02:56', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-07-11 16:02:56', '2018-07-11 16:02:56', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-07-11 16:03:02', '2018-07-11 16:03:02', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-07-11 16:03:02', '2018-07-11 16:03:02', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-07-11 16:03:10', '2018-07-11 16:03:10', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2018-07-11 16:03:10', '2018-07-11 16:03:10', '', 62, 'http://anusha.apnaextension.com/wp-content/uploads/2018/07/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-07-11 16:03:44', '2018-07-11 16:03:44', '[foogallery id=\"62\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-11 16:03:44', '2018-07-11 16:03:44', '', 24, 'http://anusha.apnaextension.com/2018/07/11/24-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-11 16:07:13', '2018-07-11 16:07:13', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"home\"]', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-11 16:07:13', '2018-07-11 16:07:13', '', 0, 'http://anusha.apnaextension.com/bwg_gallery/home/', 0, 'bwg_gallery', '', 0),
(74, 1, '2018-07-11 16:09:59', '2018-07-11 16:09:59', '', 'gallery', '', 'publish', 'open', 'closed', '', 'gallery', '', '', '2019-04-15 08:19:13', '2019-04-15 08:19:13', '', 0, 'http://anusha.apnaextension.com/?post_type=robo_gallery_table&#038;p=74', 0, 'robo_gallery_table', '', 0),
(75, 1, '2018-07-11 16:10:19', '2018-07-11 16:10:19', '[robo-gallery id=\"74\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-11 16:10:19', '2018-07-11 16:10:19', '', 24, 'http://anusha.apnaextension.com/2018/07/11/24-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-11 16:16:31', '2018-07-11 16:16:31', '<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\n[robo-gallery id=\"74\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2018-07-11 16:16:31', '2018-07-11 16:16:31', '', 24, 'http://anusha.apnaextension.com/2018/07/11/24-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2018-07-11 16:16:41', '2018-07-11 16:16:41', '<p style=\"text-align: center;\" class=\"hedsect\">Photos</p>\r\n[robo-gallery id=\"74\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-11 16:16:41', '2018-07-11 16:16:41', '', 24, 'http://anusha.apnaextension.com/2018/07/11/24-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-11 16:20:15', '2018-07-11 16:20:15', '<p style=\"text-align: center;\" class=\"hedsect\">Photos</p>\r\n<div class=\"border\"></div>\r\n[robo-gallery id=\"74\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-11 16:20:15', '2018-07-11 16:20:15', '', 24, 'http://anusha.apnaextension.com/2018/07/11/24-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-11 16:27:04', '2018-07-11 16:27:04', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n<div class=\"border\"></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:27:04', '2018-07-11 16:27:04', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-14 17:41:20', '2018-07-14 17:41:20', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\n\n<div class=\"border\"></div>\n<div class=\"col-md-5\">\n<h1><strong class=\"headhome\"><strong class=\"headhome\">Wedding Ceremony</strong></strong></h1>\n&nbsp;\n<h4 class=\"section-hero-header-title\">Sheraton Imperial Hotel Raleigh-Durham Airport at Research Triangle Park</h4>\n4700 Emperor Blvd I-40 at Exit 282, Page Rd, Durham, NC 27703\n\n</div>\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.809545609555!2d-78.84089888473574!3d35.87818388014884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89acefd602f12c35%3A0xc31f72be009859c3!2sSheraton+Imperial+Hotel+Raleigh-Durham+Airport+at+Research+Triangle+Park!5e0!3m2!1sen!2sus!4v1531589725923\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-07-14 17:41:20', '2018-07-14 17:41:20', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-autosave-v1/', 0, 'revision', '', 0),
(117, 1, '2018-07-14 17:41:34', '2018-07-14 17:41:34', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\">\r\n<h1><strong class=\"headhome\"><strong class=\"headhome\">Wedding Ceremony</strong></strong></h1>\r\n&nbsp;\r\n<h4 class=\"section-hero-header-title\">Sheraton Imperial Hotel Raleigh-Durham Airport at Research Triangle Park</h4>\r\n4700 Emperor Blvd I-40 at Exit 282, Page Rd, Durham, NC 27703\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.809545609555!2d-78.84089888473574!3d35.87818388014884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89acefd602f12c35%3A0xc31f72be009859c3!2sSheraton+Imperial+Hotel+Raleigh-Durham+Airport+at+Research+Triangle+Park!5e0!3m2!1sen!2sus!4v1531589725923\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-14 17:41:34', '2018-07-14 17:41:34', '', 26, 'https://anuwedsajay.com/2018/07/14/26-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-07-11 16:33:01', '2018-07-11 16:33:01', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-6\">\r\n<strong>1. Wedding Ceremony</strong>\r\n\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\nGet Directions\r\n<strong>2. Reception</strong>\r\n\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n</div>\r\n<div class=\"col-md-6\">\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n</div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:33:01', '2018-07-11 16:33:01', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-11 16:33:59', '2018-07-11 16:33:59', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-4\">\r\n<strong>1. Wedding Ceremony</strong>\r\n\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\nGet Directions\r\n<strong>2. Reception</strong>\r\n\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n</div>\r\n<div class=\"col-md-8\">\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n</div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:33:59', '2018-07-11 16:33:59', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-07-11 16:34:46', '2018-07-11 16:34:46', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-4\">\r\n<strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\nGet Directions\r\n<strong  class=\"headhome\">2. Reception</strong>\r\n\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n</div>\r\n<div class=\"col-md-8\">\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n</div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:34:46', '2018-07-11 16:34:46', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-11 16:36:27', '2018-07-11 16:36:27', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\n\r\n\r\n<strong class=\"headhome\">2. Reception</strong>\r\n\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:36:27', '2018-07-11 16:36:27', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-11 16:36:38', '2018-07-11 16:36:38', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118<strong class=\"headhome\">2. Reception</strong>\r\n\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:36:38', '2018-07-11 16:36:38', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-11 16:37:23', '2018-07-11 16:37:23', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n<strong class=\"headhome\">2. Reception</strong>\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105\r\n\r\nGet Directions\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:37:23', '2018-07-11 16:37:23', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-07-11 16:41:50', '2018-07-11 16:41:50', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\n\r\n<strong class=\"headhome\">2. Reception</strong>\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105Get Directions</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:41:50', '2018-07-11 16:41:50', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-07-11 16:40:35', '2018-07-11 16:40:35', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118</div>\r\n<div></div>\r\n<div class=\"col-md-5\">\r\n<strong class=\"headhome\">2. Reception</strong>\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105Get Directions\r\n\r\n</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:40:35', '2018-07-11 16:40:35', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-11 16:41:21', '2018-07-11 16:41:21', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n<div class=\"col-md-5\"><strong class=\"headhome\">1. Wedding Ceremony</strong>\r\n5:00 PM, August 1, 2017\r\nGolden Gate Park Rose Garden\r\n425 John F Kennedy Dr, San Francisco, CA 94118\r\n\r\n\r\n\r\n<div class=\"col-md-5\"><strong class=\"headhome\">2. Reception</strong>\r\n7:00 PM, August 1, 2017\r\nTerra Gallery\r\n511 Harrison St, San Francisco, CA 94105Get Directions</div>\r\n<div class=\"col-md-7\"><iframe style=\"border: 1px #ccc solid;\" src=\"https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d65338608.68179014!2d68.43886017426935!3d1.7524634964157282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3be7c8407284248d%3A0xf749032c51d6b66c!2sGreater+Indra+Nagar%2C+Andheri+East%2C+Mumbai%2C+Maharashtra+400047!3m2!1d19.1069045!2d72.8729633!4m5!1s0x8085876bcaff3419%3A0x9def56dc65fa232f!2s425+John+F+Kennedy+Dr%2C+San+Francisco%2C+CA+94118%2C+USA!3m2!1d37.771174099999996!2d-122.4723937!5e0!3m2!1sen!2sin!4v1531326701845\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe></div>', 'Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-07-11 16:41:21', '2018-07-11 16:41:21', '', 26, 'http://anusha.apnaextension.com/2018/07/11/26-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-07-11 16:58:37', '2018-07-11 16:58:37', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\n\n<div class=\"border\"></div>\n <div class=\"\">\n[ninja_form id=2] ', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2018-07-11 16:58:37', '2018-07-11 16:58:37', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2018-07-11 16:53:48', '2018-07-11 16:53:48', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n \r\n[ninja_form id=2] ', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 16:53:48', '2018-07-11 16:53:48', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-07-11 16:59:12', '2018-07-11 16:59:12', '<p class=\"hedsect\" style=\"text-align: center;\">Events</p>\r\n\r\n<div class=\"border\"></div>\r\n <div class=\"col-md-4\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 16:59:12', '2018-07-11 16:59:12', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-07-11 16:59:52', '2018-07-11 16:59:52', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n <div class=\"col-md-4\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 16:59:52', '2018-07-11 16:59:52', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-07-11 17:00:43', '2018-07-11 17:00:43', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:00:43', '2018-07-11 17:00:43', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-07-11 17:01:07', '2018-07-11 17:01:07', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<span class=\"headsectfont\">Ajay Chandra Reddy</span>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:01:07', '2018-07-11 17:01:07', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-07-11 17:01:22', '2018-07-11 17:01:22', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<span class=\"headsectfont\">Enter the name on your invitation</span>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:01:22', '2018-07-11 17:01:22', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-07-11 17:02:09', '2018-07-11 17:02:09', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<span class=\"headsectfont\" style=\"font-size:19.2px;\">Enter the name on your invitation</span>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:02:09', '2018-07-11 17:02:09', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-07-11 17:02:34', '2018-07-11 17:02:34', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<span class=\"headsectfont\" style=\"font-size:19.2px!important;\">Enter the name on your invitation</span>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:02:34', '2018-07-11 17:02:34', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-07-11 17:03:26', '2018-07-11 17:03:26', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<span class=\"headsectfont\" style=\"font-size:19.2px!important; letter-spacing:-1.9px!important\">Enter the name on your invitation</span>\r\n <div class=\"col-md-6\" style=\"float:none; margin:auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:03:26', '2018-07-11 17:03:26', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-07-11 17:03:58', '2018-07-11 17:03:58', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<p style=\"text-align: center;\"><span class=\"headsectfont\" style=\"font-size: 19.2px!important; letter-spacing: -1.9px!important;\">Enter the name on your invitation</span></p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:03:58', '2018-07-11 17:03:58', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-07-11 17:04:59', '2018-07-11 17:04:59', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<p style=\"text-align: center;\"><span class=\"headsectfont\" style=\"font-size: 19.2px!important; letter-spacing: -1.9px!important;\">Enter the name on your\r\ninvitation</span></p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:04:59', '2018-07-11 17:04:59', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-07-11 17:11:05', '2018-07-11 17:11:05', '<p class=\"hedsect\" style=\"text-align: center;\">You\'re Invited</p>\r\n\r\n<div class=\"border\"></div>\r\n<p style=\"text-align: center;\"><span class=\"headsectfont\" style=\"font-size: 19.2px!important; letter-spacing: -1.9px!important; line-height: 35px!important;\">Enter the name on your\r\ninvitation</span></p>\r\n\r\n<div class=\"col-md-6\" style=\"float: none; margin: auto;\">[ninja_form id=2]</div>', 'RSVP', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 17:11:05', '2018-07-11 17:11:05', '', 22, 'http://anusha.apnaextension.com/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-07-12 05:33:18', '2018-07-12 05:33:18', '<video class=\"videmnr\" controls autoplay width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n\r\n</video>\r\n\r\n\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:33:18', '2018-07-12 05:33:18', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-07-12 05:23:05', '2018-07-12 05:23:05', '<video class=\"videmnr\" autoplay=\"\" controls=\"\" width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:23:05', '2018-07-12 05:23:05', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2018-07-12 05:23:56', '2018-07-12 05:23:56', '<video class=\"videmnr\" autoplay=\"\"  width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:23:56', '2018-07-12 05:23:56', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-07-12 05:24:27', '2018-07-12 05:24:27', '<video class=\"videmnr\" autoplay=\"\" contols=\"\"  width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:24:27', '2018-07-12 05:24:27', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-07-12 05:24:49', '2018-07-12 05:24:49', '<video class=\"videmnr\" autoplay=\"\" controls=\"\"  width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:24:49', '2018-07-12 05:24:49', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-07-12 05:25:08', '2018-07-12 05:25:08', '<video class=\"videmnr\" controls=\"\" autoplay=\"\"   width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:25:08', '2018-07-12 05:25:08', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-07-12 05:25:55', '2018-07-12 05:25:55', '<video class=\"videmnr\" controls=\"\" autoplay=\"\"   width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:25:55', '2018-07-12 05:25:55', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-07-12 05:32:32', '2018-07-12 05:32:32', '<video class=\"videmnr\" controls autoplay width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n</video>\r\n\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:32:32', '2018-07-12 05:32:32', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-07-12 05:28:41', '2018-07-12 05:28:41', '<video class=\"videmnr\" autoplay=\"\" muted=\"\" loop=\"\" controls=\"\" width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n\r\n</video>\r\n<video class=\"videmnr\" controls=\"\" autoplay=\"\"   width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:28:41', '2018-07-12 05:28:41', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-07-12 05:29:52', '2018-07-12 05:29:52', '<video class=\"videmnr\" autoplay=\"\"  controls=\"\" width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n\r\n</video>\r\n<video class=\"videmnr\" controls=\"\" autoplay=\"\"   width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:29:52', '2018-07-12 05:29:52', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-07-12 05:31:42', '2018-07-12 05:31:42', '<video class=\"videmnr\" controls autoplay width=\"100%\" height=\"90%\">\r\n  <source src=\"http://aps.peopletekinc.com/wp-content/uploads/2018/06/Pexels-Videos-2821.mp4\" type=\"video/mp4\">\r\n\r\n</video>\r\n<video class=\"videmnr\" controls=\"\" autoplay=\"\"   width=\"100%\" height=\"90%\">\r\n  <source src=\"https://anuwedsajay.com/Anusha+Ajay.mp4\" type=\"video/mp4\">\r\n</video>\r\n<iframe style=\"width: 100%!important;\" src=\"https://player.vimeo.com/video/278977135\" width=\"100%\" height=\"360\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" data-mce-type=\"bookmark\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n<p style=\"text-align: center;\" class=\"headhome\">Please join us for our wedding celebration on</p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">August 1, 2019</p>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-52 aligncenter\" src=\"http://anusha.apnaextension.com/wp-content/uploads/2018/07/root_SmallGraphic_f5d8MV7.png\" alt=\"\" width=\"208\" height=\"208\" /></p>\r\n<p style=\"text-align: center;\" class=\"hedsect\">Our Story</p>\r\n\r\nJulia Wilson and Harry Logan met in 2009 during senior year of high school, during an Intro to Photography class. Students were assigned a project that required them to shoot architectural buildings throughout San Francisco. One afternoon, they ran into each other on the street – they were photographing the same building, just from different vantage points! – and decided to shoot together. The afternoon turned to evening and ended with ice cream, where they talked until the shop closed. And the rest, as they say, is history.</p>\r\n<p style=\"text-align: center;\">In November, after dinner at Little Star (where they had their first “real” date!), Harry Logan surprised Julia Wilson by proposing in Buena Vista Park, where they often take their dog Luna for walks.</p>\r\n<p style=\"text-align: center;\">They’re so excited to start the next phase of their lives together and can’t wait to celebrate with you in August!</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-12 05:31:42', '2018-07-12 05:31:42', '', 16, 'https://anuwedsajay.com/2018/07/12/16-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-07-15 04:00:59', '2018-07-15 04:00:59', '', 'Prewedding Pictures (18)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-18', '', '', '2018-07-15 04:00:59', '2018-07-15 04:00:59', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-07-15 04:00:37', '2018-07-15 04:00:37', '', 'Prewedding Pictures (17)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-17', '', '', '2018-07-15 04:00:37', '2018-07-15 04:00:37', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-07-15 04:00:24', '2018-07-15 04:00:24', '', 'Prewedding Pictures (1)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-1', '', '', '2018-07-15 04:00:24', '2018-07-15 04:00:24', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-07-15 04:01:28', '2018-07-15 04:01:28', '', 'Prewedding Pictures (53)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-53', '', '', '2018-07-15 04:01:28', '2018-07-15 04:01:28', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-53.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2018-07-15 04:01:42', '2018-07-15 04:01:42', '', 'Prewedding Pictures (124)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-124', '', '', '2018-07-15 04:01:42', '2018-07-15 04:01:42', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-124.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-07-15 04:01:58', '2018-07-15 04:01:58', '', 'Prewedding Pictures (138)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-138', '', '', '2018-07-15 04:01:58', '2018-07-15 04:01:58', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-138.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-07-15 04:02:07', '2018-07-15 04:02:07', '', 'Prewedding Pictures (149)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-149', '', '', '2018-07-15 04:02:07', '2018-07-15 04:02:07', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-149.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2018-07-15 04:02:18', '2018-07-15 04:02:18', '', 'Prewedding Pictures (182)', '', 'inherit', 'open', 'closed', '', 'prewedding-pictures-182', '', '', '2018-07-15 04:02:18', '2018-07-15 04:02:18', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/Prewedding-Pictures-182.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-08-23 09:17:03', '2018-08-23 09:17:03', '', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 09:17:03', '2018-08-23 09:17:03', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-08-23 09:46:57', '2018-08-23 09:46:57', 'Data coming soon...', 'Live Stream', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2018-08-23 09:46:57', '2018-08-23 09:46:57', '', 138, 'https://anuwedsajay.com/2018/08/23/138-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-07-15 04:08:51', '2018-07-15 04:08:51', '', 'anuwedsajay', '', 'inherit', 'open', 'closed', '', 'anuwedsajay', '', '', '2018-07-15 04:08:51', '2018-07-15 04:08:51', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/anuwedsajay.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2018-07-15 04:11:29', '2018-07-15 04:11:29', '', 'tempsnip', '', 'inherit', 'open', 'closed', '', 'tempsnip', '', '', '2018-07-15 04:11:29', '2018-07-15 04:11:29', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/tempsnip.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2018-07-15 04:12:27', '2018-07-15 04:12:27', 'https://anuwedsajay.com/wp-content/uploads/2018/07/cropped-Prewedding-Pictures-1.jpg', 'cropped-Prewedding-Pictures-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-prewedding-pictures-1-jpg', '', '', '2018-07-15 04:12:27', '2018-07-15 04:12:27', '', 0, 'https://anuwedsajay.com/wp-content/uploads/2018/07/cropped-Prewedding-Pictures-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 0, '2018-08-30 15:27:36', '2018-08-30 15:27:36', '', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2018-08-30 15:27:36', '2018-08-30 15:27:36', '', 0, 'https://anuwedsajay.com/nf_sub/153/', 0, 'nf_sub', '', 0),
(138, 1, '2018-08-23 09:17:03', '2018-08-23 09:17:03', '<p class=\"hedsect\" style=\"text-align: center;\">Live Stream</p>\r\n\r\n<div class=\"col-md-9\" style=\"float: none; margin: auto;\"><iframe width=\"100%\" height=\"415\"\r\nsrc=\"https://www.youtube.com/embed/yNBwVGLTQcU\">\r\n</iframe> </div>', 'Live Stream', '', 'publish', 'closed', 'closed', '', 'live-stream', '', '', '2018-08-25 13:55:09', '2018-08-25 13:55:09', '', 0, 'https://anuwedsajay.com/?page_id=138', 0, 'page', '', 0),
(139, 1, '2018-08-23 09:17:03', '2018-08-23 09:17:03', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2018-08-23 09:17:03', '2018-08-23 09:17:03', '', 0, 'https://anuwedsajay.com/2018/08/23/139/', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 2, 0),
(41, 2, 0),
(40, 2, 0),
(37, 2, 0),
(43, 2, 0),
(139, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'anush'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7cb3fe2efc796525843458fb2929b14b1551a0fecff60ab06edc274ab22fe584\";a:4:{s:10:\"expiration\";i:1555488715;s:2:\"ip\";s:15:\"103.199.136.215\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:66.0) Gecko/20100101 Firefox/66.0\";s:5:\"login\";i:1555315915;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '158'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"103.199.136.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1547636437'),
(23, 1, 'bwg_photo_gallery', '1'),
(24, 1, 'wp_nf_form_preview_tmp-1531327849', 'a:4:{s:2:\"id\";s:14:\"tmp-1531327849\";s:8:\"settings\";a:18:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:5:\"title\";s:10:\"show_title\";i:1;s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:0;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:18:\"name_1531327926855\";i:1;s:19:\"email_1531327869101\";i:2;s:30:\"number_of_people_1531327956790\";i:3;s:20:\"submit_1531327898898\";}}s:6:\"fields\";a:4:{s:5:\"tmp-1\";a:1:{s:8:\"settings\";a:17:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:4:\"type\";s:9:\"firstname\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:18:\"name_1531327926855\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:4:\"Name\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";}}s:5:\"tmp-2\";a:1:{s:8:\"settings\";a:17:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:4:\"type\";s:5:\"email\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:19:\"email_1531327869101\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:5:\"Email\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";}}s:5:\"tmp-3\";a:1:{s:8:\"settings\";a:19:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:4:\"type\";s:6:\"number\";s:5:\"label\";s:16:\"Number of People\";s:3:\"key\";s:30:\"number_of_people_1531327956790\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:7:\"num_min\";s:0:\"\";s:7:\"num_max\";s:0:\"\";s:8:\"num_step\";s:1:\"1\";}}s:5:\"tmp-4\";a:1:{s:8:\"settings\";a:11:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1531327898898\";s:14:\"drawerDisabled\";b:0;}}}s:7:\"actions\";a:3:{s:5:\"tmp-1\";a:1:{s:8:\"settings\";a:28:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:15:\"Success Message\";s:4:\"type\";s:14:\"successmessage\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";i:1;s:6:\"active\";b:1;s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";}}s:5:\"tmp-2\";a:1:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:11:\"Admin Email\";s:4:\"type\";s:5:\"email\";s:5:\"order\";i:2;s:6:\"active\";b:1;s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}}s:5:\"tmp-3\";a:1:{s:8:\"settings\";a:27:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:16:\"Store Submission\";s:4:\"type\";s:4:\"save\";s:5:\"order\";i:3;s:6:\"active\";b:1;s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:19:\"email_1531327869101\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}}}}'),
(26, 1, 'weblizar_notice_dismissed465', 'true'),
(28, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:1069:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?php_version=5.4.45&platform=wordpress&platform_version=5.1.1&software=free&software_version=7.8&role=administrator\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?php_version=5.4.45&platform=wordpress&platform_version=5.1.1&software=free&software_version=7.8&role=administrator\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?php_version=5.4.45&platform=wordpress&platform_version=5.1.1&software=free&software_version=7.8&role=administrator\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"https://anuwedsajay.com/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8000000000000000444089209850062616169452667236328125;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:166:\"Don\'t miss your crawl errors: <a href=\"https://anuwedsajay.com/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(27, 1, 'nav_menu_recently_edited', '2'),
(29, 1, '_yoast_wpseo_profile_updated', '1531628646');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'anush', '$P$BmRxta6coRGQn7vtvNhSHrq2Bk/RlK/', 'anush', 'kanirudhr@gmail.com', '', '2018-07-10 14:38:01', '', 0, 'anush');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, '#', 74, 0, 'internal'),
(2, '#', 74, 0, 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(47, 0, 0),
(16, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(4, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(35, 0, 0),
(15, 0, 0),
(2, 0, 0),
(46, 0, 0),
(131, 0, 0),
(135, 0, 0),
(138, 0, 0),
(137, 0, 0),
(154, 0, 0),
(155, 0, 0),
(157, 0, 0),
(28, 0, 0),
(74, 2, 0),
(158, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11719;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
