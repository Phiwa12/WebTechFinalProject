-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 12:37 AM
-- Server version: 8.0.40-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech_fall2024_phiwayinkhosi_lukhele`
--

-- --------------------------------------------------------

--
-- Table structure for table `body_measurements`
--

CREATE TABLE `body_measurements` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `shoulders` decimal(5,2) NOT NULL,
  `bust` decimal(5,2) NOT NULL,
  `waist` decimal(5,2) NOT NULL,
  `hips` decimal(5,2) NOT NULL,
  `weight_gain_pattern` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shoulder_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waist_definition` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommendations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `body_measurements`
--

INSERT INTO `body_measurements` (`id`, `user_id`, `shoulders`, `bust`, `waist`, `hips`, `weight_gain_pattern`, `shoulder_type`, `waist_definition`, `body_type`, `recommendations`, `created_at`) VALUES
(1, 22, 20.00, 20.00, 20.00, 20.00, 'upper', 'broad', 'very', 'Hourglass', '{\"description\":\"Your shoulders and hips are about the same width with a significantly smaller waist.\",\"recommendations\":\"Focus on fitted clothing that shows off your natural curves.\",\"dos\":[\"Emphasize your waist\",\"Choose fitted styles\",\"Use belts to define your middle\",\"Wear v-neck or scoop necklines\"],\"donts\":[\"Wear boxy or shapeless clothing\",\"Choose overwhelming ruffles or volume\",\"Hide your waist\",\"Wear overly loose styles\"]}', '2024-12-06 00:02:23'),
(2, 22, 30.00, 30.00, 30.00, 30.00, 'middle', 'broad', 'straight', 'Rectangle', '{\"description\":\"Your shoulders, waist, and hips are similar in width with minimal curves.\",\"recommendations\":\"Create the illusion of curves while maintaining your balanced proportions.\",\"dos\":[\"Use layers and ruffles to create curves\",\"Wear belts to define your waist\",\"Choose clothing with interesting details\",\"Try peplum tops and dresses\"],\"donts\":[\"Wear straight, shapeless clothing\",\"Choose plain, unstructured pieces\",\"Stick to one silhouette\",\"Wear oversized, boxy clothing\"]}', '2024-12-06 00:37:13'),
(3, 24, 34.00, 50.00, 30.00, 20.00, 'even', 'even', 'straight', 'Rectangle', '{\"description\":\"Your shoulders, waist, and hips are similar in width with minimal curves.\",\"recommendations\":\"Create the illusion of curves while maintaining your balanced proportions.\",\"dos\":[\"Use layers and ruffles to create curves\",\"Wear belts to define your waist\",\"Choose clothing with interesting details\",\"Try peplum tops and dresses\"],\"donts\":[\"Wear straight, shapeless clothing\",\"Choose plain, unstructured pieces\",\"Stick to one silhouette\",\"Wear oversized, boxy clothing\"]}', '2024-12-06 10:14:31'),
(5, 32, 45.00, 34.00, 23.00, 45.00, 'lower', 'even', 'very', 'Hourglass', '{\"description\":\"Your shoulders and hips are about the same width with a significantly smaller waist.\",\"recommendations\":\"Focus on fitted clothing that shows off your natural curves.\",\"dos\":[\"Emphasize your waist\",\"Choose fitted styles\",\"Use belts to define your middle\",\"Wear v-neck or scoop necklines\"],\"donts\":[\"Wear boxy or shapeless clothing\",\"Choose overwhelming ruffles or volume\",\"Hide your waist\",\"Wear overly loose styles\"]}', '2024-12-09 23:01:05'),
(6, 33, 55.00, 44.00, 33.00, 44.00, 'even', 'broad', 'somewhat', 'Apple', '{\"description\":\"Your shoulders and bust are wider than your hips with less waist definition.\",\"recommendations\":\"Create a balanced silhouette by defining your waist and elongating your figure.\",\"dos\":[\"Wear empire waist styles\",\"Choose V-neck or deep scoop necklines\",\"Opt for flowing fabrics\",\"Create vertical lines in your outfits\"],\"donts\":[\"Wear tight-fitting waistbands\",\"Choose bulky fabrics\",\"Add volume at the midsection\",\"Wear oversized tops\"]}', '2024-12-10 13:29:19'),
(8, 32, 55.00, 55.00, 44.00, 33.00, 'middle', 'narrow', 'very', 'Apple', '{\"description\":\"Your body measurements suggest you have a Apple body type.\",\"recommendations\":[],\"dos\":[],\"donts\":[]}', '2024-12-11 17:03:38'),
(9, 39, 30.00, 30.00, 34.00, 20.00, 'upper', 'broad', 'straight', 'Apple', '{\"description\":\"Your body measurements suggest you have a Apple body type.\",\"recommendations\":[],\"dos\":[],\"donts\":[]}', '2024-12-12 16:43:53'),
(10, 40, 20.00, 20.00, 20.00, 20.00, 'middle', 'even', 'straight', 'Rectangle', '{\"description\":\"Your body measurements suggest you have a Rectangle body type.\",\"recommendations\":[],\"dos\":[],\"donts\":[]}', '2024-12-14 03:01:51'),
(11, 43, 20.50, 50.00, 20.00, 60.00, 'lower', 'narrow', 'very', 'Pear', '{\"description\":\"Your body measurements suggest you have a Pear body type.\",\"recommendations\":[],\"dos\":[],\"donts\":[]}', '2024-12-15 10:13:01'),
(13, 47, 30.00, 30.00, 20.00, 50.00, 'upper', 'narrow', 'very', 'Pear', '{\"description\":\"Your body measurements suggest you have a Pear body type.\",\"recommendations\":[],\"dos\":[],\"donts\":[]}', '2024-12-16 18:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `reset_code` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `expiry` datetime NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `reset_code`, `expiry`, `used`, `created_at`) VALUES
(1, 22, '378848', '2024-12-13 19:01:36', 1, '2024-12-13 18:01:36'),
(2, 22, '632697', '2024-12-17 01:28:58', 1, '2024-12-17 00:28:58'),
(3, 22, '473743', '2024-12-17 01:30:54', 1, '2024-12-17 00:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` enum('tops','bottoms','dresses','shoes','accessories','outerwear') COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('casual','formal','business','party') COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`id`, `name`, `price`, `category`, `type`, `color`, `image_url`, `description`) VALUES
(1, 'Knit Sweater', 55.99, 'tops', 'casual', '#A0522D', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Cozy knit sweater for casual wear'),
(2, 'Silk Blouse', 89.99, 'tops', 'business', '#FFFFFF', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Elegant silk blouse perfect for office wear'),
(3, 'Floral Maxi Dress', 129.99, 'dresses', 'casual', '#FF69B4', 'https://images.pexels.com/photos/994234/pexels-photo-994234.jpeg', 'Beautiful floral print maxi dress'),
(4, 'Leather Boots', 159.99, 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Classic leather boots'),
(5, 'Designer Handbag', 199.99, 'accessories', 'formal', '#000000', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Elegant designer handbag'),
(6, 'Denim Jacket', 79.99, 'outerwear', 'casual', '#1E90FF', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Classic denim jacket'),
(7, 'High-Waisted Jeans', 69.99, 'bottoms', 'casual', '#191970', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Flattering high-waisted jeans'),
(8, 'Evening Gown', 249.99, 'dresses', 'formal', '#800000', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Stunning evening gown'),
(9, 'Statement Necklace', 45.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Eye-catching statement necklace'),
(10, 'Business Blazer', 149.99, 'outerwear', 'business', '#000000', 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg', 'Professional business blazer'),
(11, 'Summer Sandals', 49.99, 'shoes', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Comfortable summer sandals'),
(12, 'Pencil Skirt', 79.99, 'bottoms', 'business', '#808080', 'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg', 'Classic pencil skirt'),
(13, 'Graphic T-Shirt', 29.99, 'tops', 'casual', '#FFFFFF', 'https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg', 'Cool graphic t-shirt'),
(14, 'Sequin Party Dress', 159.99, 'dresses', 'party', '#FF1493', 'https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg', 'Sparkling sequin party dress'),
(15, 'Leather Crossbody Bag', 89.99, 'accessories', 'casual', '#8B4513', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Versatile leather crossbody bag'),
(16, 'Winter Coat', 199.99, 'outerwear', 'casual', '#808080', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Warm winter coat'),
(17, 'Stiletto Heels', 129.99, 'shoes', 'formal', '#FF0000', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Elegant stiletto heels'),
(18, 'Casual Shorts', 39.99, 'bottoms', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Comfortable casual shorts'),
(19, 'Silk Scarf', 35.99, 'accessories', 'formal', '#FF69B4', 'https://images.pexels.com/photos/1192609/pexels-photo-1192609.jpeg', 'Elegant silk scarf'),
(20, 'Turtleneck Sweater', 69.99, 'tops', 'casual', '#000000', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Classic turtleneck sweater'),
(21, 'Party Clutch', 59.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Elegant evening clutch'),
(22, 'Wrap Dress', 89.99, 'dresses', 'business', '#800080', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Flattering wrap dress'),
(23, 'Ankle Boots', 119.99, 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Stylish ankle boots'),
(24, 'Leather Belt', 45.99, 'accessories', 'business', '#8B4513', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Classic leather belt'),
(25, 'Cardigan', 59.99, 'tops', 'casual', '#A0522D', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Comfortable cardigan sweater'),
(26, 'Pleated Midi Skirt', 75.99, 'bottoms', 'formal', '#000080', 'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg', 'Elegant pleated midi skirt'),
(27, 'Statement Earrings', 29.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Bold statement earrings'),
(28, 'Linen Blazer', 129.99, 'outerwear', 'business', '#F5F5DC', 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg', 'Light linen blazer'),
(29, 'Floral Blouse', 49.99, 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Pretty floral print blouse'),
(30, 'Wide Leg Pants', 79.99, 'bottoms', 'business', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Elegant wide leg pants'),
(31, 'Platform Sandals', 89.99, 'shoes', 'party', '#FFD700', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Trendy platform sandals'),
(32, 'Cocktail Dress', 159.99, 'dresses', 'party', '#FF0000', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Stunning cocktail dress'),
(33, 'Slouch Boots', 139.99, 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Comfortable slouch boots'),
(34, 'Pearl Necklace', 79.99, 'accessories', 'formal', '#FFFFFF', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Classic pearl necklace'),
(35, 'Puffer Jacket', 149.99, 'outerwear', 'casual', '#000000', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Warm puffer jacket'),
(36, 'Silk Camisole', 45.99, 'tops', 'casual', '#FFB6C1', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Elegant silk camisole'),
(37, 'Leather Mini Skirt', 89.99, 'bottoms', 'party', '#000000', 'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg', 'Edgy leather mini skirt'),
(38, 'Canvas Sneakers', 59.99, 'shoes', 'casual', '#FFFFFF', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Classic canvas sneakers'),
(39, 'Formal Watch', 199.99, 'accessories', 'formal', '#C0C0C0', 'https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg', 'Elegant formal watch'),
(40, 'Trench Coat', 179.99, 'outerwear', 'business', '#F5DEB3', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Classic trench coat'),
(41, 'Off-Shoulder Top', 49.99, 'tops', 'party', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Trendy off-shoulder top'),
(42, 'Boyfriend Jeans', 69.99, 'bottoms', 'casual', '#4169E1', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Relaxed boyfriend jeans'),
(43, 'Ankle Strap Heels', 99.99, 'shoes', 'formal', '#000000', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Elegant ankle strap heels'),
(44, 'Sun Dress', 69.99, 'dresses', 'casual', '#98FB98', 'https://images.pexels.com/photos/994234/pexels-photo-994234.jpeg', 'Light summer sun dress'),
(45, 'Designer Sunglasses', 159.99, 'accessories', 'casual', '#000000', 'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg', 'Stylish designer sunglasses'),
(46, 'Wool Coat', 229.99, 'outerwear', 'formal', '#808080', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Elegant wool coat'),
(47, 'Crop Top', 34.99, 'tops', 'casual', '#FFFFFF', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Trendy crop top'),
(48, 'Palazzo Pants', 89.99, 'bottoms', 'formal', '#000080', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Flowing palazzo pants'),
(49, 'Ballet Flats', 49.99, 'shoes', 'casual', '#FFB6C1', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Comfortable ballet flats'),
(50, 'Cocktail Ring', 39.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Statement cocktail ring'),
(51, 'Leather Jacket', 199.99, 'outerwear', 'casual', '#000000', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Classic leather jacket'),
(52, 'Halter Top', 39.99, 'tops', 'party', '#FF1493', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Stylish halter top'),
(53, 'Pencil Skirt', 79.99, 'bottoms', 'business', '#000000', 'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg', 'Classic pencil skirt'),
(54, 'Wedge Sandals', 69.99, 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Comfortable wedge sandals'),
(55, 'Crossbody Bag', 79.99, 'accessories', 'casual', '#A0522D', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Practical crossbody bag'),
(56, 'Bomber Jacket', 129.99, 'outerwear', 'casual', '#000080', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Trendy bomber jacket'),
(57, 'Lace Top', 59.99, 'tops', 'formal', '#FFFFFF', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Elegant lace top'),
(58, 'Cargo Pants', 69.99, 'bottoms', 'casual', '#556B2F', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Practical cargo pants'),
(59, 'Oxford Shoes', 119.99, 'shoes', 'business', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Classic oxford shoes'),
(60, 'Hair Accessories Set', 29.99, 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Stylish hair accessories set'),
(61, 'Rain Jacket', 89.99, 'outerwear', 'casual', '#4169E1', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Waterproof rain jacket'),
(62, 'Printed Blouse', 54.99, 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Colorful printed blouse'),
(63, 'Leather Pants', 129.99, 'bottoms', 'party', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Edgy leather pants'),
(65, 'Designer Belt', 89.99, 'accessories', 'formal', '#8B4513', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Luxury designer belt'),
(66, 'Velvet Blazer', 149.99, 'outerwear', 'party', '#800080', 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg', 'Luxurious velvet blazer'),
(67, 'Ruffled Blouse', 69.99, 'tops', 'formal', '#FFFFFF', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Elegant ruffled blouse'),
(68, 'Culottes', 79.99, 'bottoms', 'business', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Modern culottes pants'),
(69, 'Loafers', 99.99, 'shoes', 'business', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Classic loafers'),
(70, 'Statement Bracelet', 49.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Bold statement bracelet'),
(71, 'Maxi Skirt', 69.99, 'bottoms', 'casual', '#4b0082', 'https://images-cdn.ubuy.co.id/65460f7bd5a278135d319fdc-lannaclothesdesign-women-39-s-cotton.jpg', 'Flowing maxi skirt'),
(72, 'Stud Earrings', 25.99, 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Classic stud earrings'),
(73, 'Denim Shirt', 49.99, 'tops', 'casual', '#1E90FF', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Versatile denim shirt'),
(74, 'Midi Dress', 89.99, 'dresses', 'business', '#800000', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Elegant midi dress'),
(75, 'Platform Boots', 149.99, 'shoes', 'casual', '#000000', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Trendy platform boots'),
(76, 'Quilted Bag', 129.99, 'accessories', 'formal', '#000000', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Elegant quilted bag'),
(77, 'Cashmere Sweater', 199.99, 'tops', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Luxury cashmere sweater'),
(78, 'Leggings', 39.99, 'bottoms', 'casual', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Comfortable leggings'),
(79, 'Hoop Earrings', 35.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Classic hoop earrings'),
(80, 'Kimono Cardigan', 79.99, 'outerwear', 'casual', '#FF69B4', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Flowing kimono cardigan'),
(81, 'Slip Dress', 89.99, 'dresses', 'party', '#FF1493', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Elegant slip dress'),
(82, 'Mule Shoes', 79.99, 'shoes', 'casual', '#DEB887', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Trendy mule shoes'),
(83, 'Tennis Bracelet', 159.99, 'accessories', 'formal', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Sparkling tennis bracelet'),
(84, 'Peplum Top', 59.99, 'tops', 'business', '#0f0f0f', 'https://tse1.mm.bing.net/th?id=OIP.YWOKs9oibQHt2pC6LlaxQgHaLz&pid=Api&P=0&h=220', 'Flattering peplum top'),
(85, 'Bermuda Shorts', 49.99, 'bottoms', 'casual', '#000080', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Classic bermuda shorts'),
(86, 'Aviator Sunglasses', 129.99, 'accessories', 'casual', '#C0C0C0', 'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg', 'Classic aviator sunglasses'),
(87, 'Poncho', 89.99, 'outerwear', 'casual', '#8B4513', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Cozy poncho'),
(89, 'Cigarette Pants', 89.99, 'bottoms', 'business', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Classic cigarette pants'),
(90, 'Ankle Bracelet', 29.99, 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Delicate ankle bracelet'),
(91, 'Sheath Dress', 129.99, 'dresses', 'business', '#000000', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Professional sheath dress'),
(92, 'Espadrilles', 69.99, 'shoes', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Comfortable espadrilles'),
(93, 'Chain Necklace', 45.99, 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Trendy chain necklace'),
(94, 'Utility Jacket', 99.99, 'outerwear', 'casual', '#556B2F', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Practical utility jacket'),
(95, 'Cowl Neck Sweater', 79.99, 'tops', 'casual', '#8B4513', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Cozy cowl neck sweater'),
(96, 'Paper Bag Pants', 69.99, 'bottoms', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Trendy paper bag pants'),
(97, 'Drop Earrings', 39.99, 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Elegant drop earrings'),
(98, 'Cape Blazer', 159.99, 'outerwear', 'business', '#000000', 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg', 'Stylish cape blazer'),
(99, 'Wrap Top', 59.99, 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Flattering wrap top'),
(100, 'Culotte Jumpsuit', 119.99, 'dresses', 'party', '#000080', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Trendy culotte jumpsuit'),
(101, 'Gladiator Sandals', 89.99, 'shoes', 'casual', '#121212', 'https://ajvoyage.co.uk/cdn/shop/products/IMMIChunkyGladiatorSandals-Black-3_f7e5c53c-2147-4bb7-aa8a-86f8f6db3c28.jpg?v=1675285376', 'Stylish gladiator sandals'),
(102, 'Bucket Bag', 69.99, 'accessories', 'casual', '#A0522D', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Trendy bucket bag'),
(105, 'Bike Shorts', 34.99, 'bottoms', 'casual', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Trendy bike shorts'),
(106, 'Charm Bracelet', 49.99, 'accessories', 'casual', '#080808', 'https://lewkin.com/cdn/shop/files/001_8e1cd1e6-5101-4cb2-9539-589fb2e0a080.jpg?pad_color=fff&v=1709596626&width=940', 'Charming bracelet'),
(107, 'Fleece Jacket', 79.99, 'outerwear', 'casual', '#808080', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Warm fleece jacket'),
(108, 'Bodysuit', 45.99, 'tops', 'party', '#000000', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Sleek bodysuit'),
(109, 'Wide-Brim Hat', 80.00, 'bottoms', 'business', '#f00f31', 'https://tse3.mm.bing.net/th?id=OIP.El3Fd8kVn6IHP2npo-IiYAHaJQ&pid=Api&P=0&h=220', 'Stylish wide-brim hatbhbuoih'),
(111, 'Jumpsuit', 1200.00, 'dresses', 'party', '#e51f93', 'https://i.pinimg.com/originals/bd/a9/2f/bda92ff1b025395051260782a5e2401b.jpg', 'beautiful'),
(112, 'jorts', 100.00, 'bottoms', 'party', '#07a5e9', 'https://lewkin.com/cdn/shop/files/001_Dark_20blue_b2c41b80-dae3-4125-b596-bae2767b5070.jpg?v=1715906164', 'New in town, everyone is wearing jorts'),
(113, 'cargo pants', 150.00, 'bottoms', 'casual', '#4c4343', 'https://lewkin.com/cdn/shop/files/002_Dark_20green_ed25df5d-7a77-4118-ba14-c717e8b3cf93.jpg?pad_color=fff&v=1730166922&width=940', 'fgvhbhj'),
(114, 'sexy underwear', 30.00, 'outerwear', 'party', '#f50505', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzrCRWjtCb83IGvLR2jfk8Qg-oibFGJQlqNg&s', 'vhvhb'),
(115, 'bjkl', 12.00, 'tops', 'business', '#5e2b2b', 'https://tse3.mm.bing.net/th?id=OIP.tmFRjJIMSYWvZFyspJlZxAHaJ4&pid=Api&P=0&h=220', 'fgvhibjkl'),
(116, ' nl', 78.00, 'bottoms', 'party', '#476af5', 'https://lewkin.com/cdn/shop/files/001_Dark_20blue_b2c41b80-dae3-4125-b596-bae2767b5070.jpg?v=1715906164', ' n njl');

-- --------------------------------------------------------

--
-- Table structure for table `style_activity_log`
--

CREATE TABLE `style_activity_log` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `activity_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `style_activity_log`
--

INSERT INTO `style_activity_log` (`id`, `user_id`, `activity_type`, `details`, `created_at`) VALUES
(1, 22, 'body_analysis_saved', '{\"body_type\":\"Hourglass\",\"saved_at\":\"2024-12-06 00:02:26\"}', '2024-12-06 00:02:26'),
(2, 22, 'body_analysis_saved', '{\"body_type\":\"Rectangle\",\"saved_at\":\"2024-12-06 00:37:22\"}', '2024-12-06 00:37:22'),
(3, 24, 'body_analysis_saved', '{\"body_type\":\"Rectangle\",\"saved_at\":\"2024-12-06 10:14:36\"}', '2024-12-06 10:14:36'),
(4, 22, 'palette_saved', '{\"palette_id\":1,\"name\":\"My Palette 12\\/6\\/2024, 10:58:34 AM\",\"colors_count\":2,\"saved_at\":\"2024-12-06 10:58:34\"}', '2024-12-06 10:58:34'),
(5, 22, 'palette_saved', '{\"palette_id\":2,\"name\":\"My Palette 12\\/6\\/2024, 10:59:10 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 10:59:10\"}', '2024-12-06 10:59:10'),
(6, 22, 'palette_saved', '{\"palette_id\":3,\"name\":\"My Palette 12\\/6\\/2024, 11:02:33 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:02:33\"}', '2024-12-06 11:02:33'),
(7, 22, 'palette_saved', '{\"palette_id\":4,\"name\":\"My Palette 12\\/6\\/2024, 11:04:04 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:04:04\"}', '2024-12-06 11:04:04'),
(8, 22, 'palette_saved', '{\"palette_id\":5,\"name\":\"My Palette 12\\/6\\/2024, 11:04:40 AM\",\"colors_count\":1,\"saved_at\":\"2024-12-06 11:04:40\"}', '2024-12-06 11:04:40'),
(9, 22, 'palette_saved', '{\"palette_id\":6,\"name\":\"My Palette 12\\/6\\/2024, 11:17:02 AM\",\"colors_count\":1,\"saved_at\":\"2024-12-06 11:17:02\"}', '2024-12-06 11:17:02'),
(10, 22, 'palette_saved', '{\"palette_id\":7,\"name\":\"My Palette 12\\/6\\/2024, 11:17:29 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:17:29\"}', '2024-12-06 11:17:29'),
(11, 22, 'palette_saved', '{\"palette_id\":8,\"name\":\"My Palette 12\\/6\\/2024, 11:18:12 AM\",\"colors_count\":4,\"saved_at\":\"2024-12-06 11:18:12\"}', '2024-12-06 11:18:12'),
(12, 22, 'palette_saved', '{\"palette_id\":9,\"name\":\"My Palette 12\\/6\\/2024, 11:28:01 AM\",\"colors_count\":1,\"saved_at\":\"2024-12-06 11:28:01\"}', '2024-12-06 11:28:01'),
(13, 22, 'palette_saved', '{\"palette_id\":10,\"name\":\"My Palette 12\\/6\\/2024, 11:28:09 AM\",\"colors_count\":4,\"saved_at\":\"2024-12-06 11:28:09\"}', '2024-12-06 11:28:09'),
(14, 22, 'palette_saved', '{\"palette_id\":11,\"name\":\"My Palette 12\\/6\\/2024, 11:28:15 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:28:15\"}', '2024-12-06 11:28:15'),
(15, 22, 'palette_saved', '{\"palette_id\":12,\"name\":\"My Palette 12\\/6\\/2024, 11:34:47 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:34:47\"}', '2024-12-06 11:34:47'),
(16, 22, 'palette_saved', '{\"palette_id\":13,\"name\":\"My Palette 12\\/6\\/2024, 11:34:56 AM\",\"colors_count\":2,\"saved_at\":\"2024-12-06 11:34:56\"}', '2024-12-06 11:34:56'),
(17, 22, 'palette_saved', '{\"palette_id\":14,\"name\":\"My Palette 12\\/6\\/2024, 11:35:06 AM\",\"colors_count\":4,\"saved_at\":\"2024-12-06 11:35:06\"}', '2024-12-06 11:35:06'),
(18, 22, 'palette_saved', '{\"palette_id\":15,\"name\":\"My Palette 12\\/6\\/2024, 11:41:11 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-06 11:41:11\"}', '2024-12-06 11:41:11'),
(19, 22, 'palette_saved', '{\"palette_id\":16,\"name\":\"My Palette 12\\/6\\/2024, 11:42:18 AM\",\"colors_count\":2,\"saved_at\":\"2024-12-06 11:42:18\"}', '2024-12-06 11:42:18'),
(20, 22, 'quiz_completed', '{\"quiz_result_id\":1,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-07 21:46:53\"}', '2024-12-07 21:46:53'),
(21, 22, 'quiz_results_saved', '{\"quiz_result_id\":2,\"saved_at\":\"2024-12-07 21:47:01\"}', '2024-12-07 21:47:01'),
(22, 22, 'quiz_completed', '{\"quiz_result_id\":3,\"dominant_style\":\"minimalist\",\"completed_at\":\"2024-12-07 22:02:45\"}', '2024-12-07 22:02:45'),
(23, 22, 'quiz_results_saved', '{\"quiz_result_id\":4,\"saved_at\":\"2024-12-07 22:03:00\"}', '2024-12-07 22:03:00'),
(24, 22, 'quiz_completed', '{\"quiz_result_id\":5,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:03:33\"}', '2024-12-07 22:03:33'),
(25, 22, 'quiz_completed', '{\"quiz_result_id\":6,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:04:25\"}', '2024-12-07 22:04:25'),
(26, 22, 'quiz_completed', '{\"quiz_result_id\":7,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-07 22:07:02\"}', '2024-12-07 22:07:02'),
(27, 22, 'quiz_results_saved', '{\"quiz_result_id\":8,\"saved_at\":\"2024-12-07 22:07:10\"}', '2024-12-07 22:07:10'),
(28, 22, 'quiz_completed', '{\"quiz_result_id\":9,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-07 22:07:24\"}', '2024-12-07 22:07:24'),
(29, 22, 'quiz_completed', '{\"quiz_result_id\":10,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:10:38\"}', '2024-12-07 22:10:38'),
(30, 22, 'quiz_results_saved', '{\"quiz_result_id\":11,\"saved_at\":\"2024-12-07 22:10:42\"}', '2024-12-07 22:10:42'),
(31, 22, 'quiz_completed', '{\"quiz_result_id\":12,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:11:05\"}', '2024-12-07 22:11:05'),
(32, 22, 'quiz_completed', '{\"quiz_result_id\":13,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:12:29\"}', '2024-12-07 22:12:29'),
(33, 22, 'quiz_completed', '{\"quiz_result_id\":14,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:12:30\"}', '2024-12-07 22:12:30'),
(34, 22, 'quiz_completed', '{\"quiz_result_id\":15,\"dominant_style\":\"romantic\",\"completed_at\":\"2024-12-07 22:14:57\"}', '2024-12-07 22:14:57'),
(35, 22, 'quiz_completed', '{\"quiz_result_id\":16,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:17:09\"}', '2024-12-07 22:17:09'),
(36, 22, 'quiz_completed', '{\"quiz_result_id\":17,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 22:17:10\"}', '2024-12-07 22:17:10'),
(37, 22, 'quiz_completed', '{\"quiz_result_id\":18,\"dominant_style\":\"romantic\",\"completed_at\":\"2024-12-07 22:18:48\"}', '2024-12-07 22:18:48'),
(38, NULL, 'body_analysis_saved', '{\"body_type\":\"Apple\",\"saved_at\":\"2024-12-07 23:49:46\"}', '2024-12-07 23:49:46'),
(39, NULL, 'palette_saved', '{\"palette_id\":17,\"name\":\"My Palette 12\\/7\\/2024, 11:50:13 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-07 23:50:14\"}', '2024-12-07 23:50:14'),
(40, NULL, 'quiz_completed', '{\"quiz_result_id\":19,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-07 23:50:49\"}', '2024-12-07 23:50:49'),
(41, NULL, 'quiz_results_saved', '{\"quiz_result_id\":20,\"saved_at\":\"2024-12-07 23:50:58\"}', '2024-12-07 23:50:58'),
(42, NULL, 'quiz_completed', '{\"quiz_result_id\":21,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-07 23:51:21\"}', '2024-12-07 23:51:21'),
(43, NULL, 'admin_created', '{\"message\":\"Admin users created\",\"created_by\":\"System\",\"timestamp\":\"2024-12-09 21:41:10\"}', '2024-12-09 21:41:10'),
(44, NULL, 'admin_created', '{\"message\":\"Admin users created\",\"created_by\":\"System\",\"timestamp\":\"2024-12-09 21:42:28\"}', '2024-12-09 21:42:28'),
(45, 32, 'admin_created', '{\"message\":\"Admin users created\",\"created_by\":\"System\",\"timestamp\":\"2024-12-09 21:48:14\"}', '2024-12-09 21:48:14'),
(46, 32, 'body_analysis_saved', '{\"body_type\":\"Hourglass\",\"saved_at\":\"2024-12-09 23:01:27\"}', '2024-12-09 23:01:27'),
(47, 32, 'quiz_completed', '{\"quiz_result_id\":22,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-09 23:06:20\"}', '2024-12-09 23:06:20'),
(48, 32, 'quiz_results_saved', '{\"quiz_result_id\":23,\"saved_at\":\"2024-12-09 23:06:33\"}', '2024-12-09 23:06:33'),
(49, 32, 'palette_saved', '{\"palette_id\":18,\"name\":\"My Palette 12\\/9\\/2024, 11:07:15 PM\",\"colors_count\":5,\"saved_at\":\"2024-12-09 23:07:15\"}', '2024-12-09 23:07:15'),
(50, 32, 'palette_saved', '{\"palette_id\":19,\"name\":\"My Palette 12\\/9\\/2024, 11:08:07 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-09 23:08:07\"}', '2024-12-09 23:08:07'),
(51, 32, 'product_deleted', '{\"product_id\":104,\"product_name\":\"Mock Neck Top\",\"action_by\":32}', '2024-12-10 12:36:28'),
(52, 32, 'product_created', '{\"product_id\":111,\"product_name\":\"Jumpsuit\",\"action_by\":32}', '2024-12-10 12:37:55'),
(53, 32, 'product_updated', '{\"product_id\":109,\"product_name\":\"Wide-Brim Hat\",\"action_by\":32}', '2024-12-10 12:43:34'),
(54, 32, 'product_updated', '{\"product_id\":84,\"product_name\":\"Peplum Top\",\"action_by\":32}', '2024-12-10 12:44:59'),
(55, 33, 'body_analysis_saved', '{\"body_type\":\"Apple\",\"saved_at\":\"2024-12-10 13:29:23\"}', '2024-12-10 13:29:23'),
(56, 33, 'quiz_completed', '{\"quiz_result_id\":24,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-10 13:31:00\"}', '2024-12-10 13:31:00'),
(57, 33, 'quiz_results_saved', '{\"quiz_result_id\":25,\"saved_at\":\"2024-12-10 13:31:03\"}', '2024-12-10 13:31:03'),
(58, 33, 'palette_saved', '{\"palette_id\":20,\"name\":\"My Palette 12\\/10\\/2024, 1:31:17 PM\",\"colors_count\":4,\"saved_at\":\"2024-12-10 13:31:17\"}', '2024-12-10 13:31:17'),
(59, NULL, 'body_analysis_saved', '{\"body_type\":\"Rectangle\",\"saved_at\":\"2024-12-11 11:17:49\"}', '2024-12-11 11:17:49'),
(60, NULL, 'palette_saved', '{\"palette_id\":21,\"name\":\"My Palette 12\\/11\\/2024, 11:21:23 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-11 11:19:35\"}', '2024-12-11 11:19:35'),
(61, NULL, 'palette_saved', '{\"palette_id\":22,\"name\":\"My Palette 12\\/11\\/2024, 11:23:09 AM\",\"colors_count\":6,\"saved_at\":\"2024-12-11 11:21:22\"}', '2024-12-11 11:21:22'),
(62, NULL, 'quiz_completed', '{\"quiz_result_id\":26,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-11 11:23:47\"}', '2024-12-11 11:23:47'),
(63, NULL, 'quiz_results_saved', '{\"quiz_result_id\":27,\"saved_at\":\"2024-12-11 11:23:57\"}', '2024-12-11 11:23:57'),
(64, NULL, 'quiz_completed', '{\"quiz_result_id\":28,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-11 11:24:10\"}', '2024-12-11 11:24:10'),
(65, NULL, 'quiz_completed', '{\"quiz_result_id\":29,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-11 11:24:10\"}', '2024-12-11 11:24:10'),
(66, NULL, 'quiz_results_saved', '{\"quiz_result_id\":30,\"saved_at\":\"2024-12-11 11:24:21\"}', '2024-12-11 11:24:21'),
(67, 32, 'product_updated', '{\"product_id\":111,\"product_name\":\"Jumpsuit\",\"action_by\":32}', '2024-12-11 16:59:13'),
(68, 32, 'product_deleted', '{\"product_id\":88,\"product_name\":\"Tie-Front Blouse\",\"action_by\":32}', '2024-12-11 17:01:53'),
(69, 32, 'body_analysis_saved', '{\"body_type\":\"Apple\",\"saved_at\":\"2024-12-11 17:03:45\"}', '2024-12-11 17:03:45'),
(70, 32, 'palette_saved', '{\"palette_id\":23,\"name\":\"My Palette 12\\/11\\/2024, 5:07:47 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-11 17:05:59\"}', '2024-12-11 17:05:59'),
(71, 32, 'palette_saved', '{\"palette_id\":24,\"name\":\"My Palette 12\\/11\\/2024, 5:08:16 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-11 17:06:28\"}', '2024-12-11 17:06:28'),
(72, 32, 'quiz_completed', '{\"quiz_result_id\":31,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-11 17:20:16\"}', '2024-12-11 17:20:16'),
(73, 32, 'quiz_results_saved', '{\"quiz_result_id\":32,\"saved_at\":\"2024-12-11 17:20:23\"}', '2024-12-11 17:20:23'),
(74, 39, 'body_analysis_saved', '{\"body_type\":\"Apple\",\"saved_at\":\"2024-12-12 16:44:04\"}', '2024-12-12 16:44:04'),
(75, 39, 'palette_saved', '{\"palette_id\":25,\"name\":\"My Palette 12\\/12\\/2024, 16:44:41\",\"colors_count\":3,\"saved_at\":\"2024-12-12 16:44:42\"}', '2024-12-12 16:44:42'),
(76, 32, 'product_created', '{\"product_id\":112,\"product_name\":\"jorts\",\"action_by\":32}', '2024-12-13 20:00:15'),
(77, 32, 'product_created', '{\"product_id\":113,\"product_name\":\"cargo pants\",\"action_by\":32}', '2024-12-13 20:02:25'),
(78, 32, 'product_updated', '{\"product_id\":106,\"product_name\":\"Charm Bracelet\",\"action_by\":32}', '2024-12-13 20:03:36'),
(79, 32, 'product_updated', '{\"product_id\":101,\"product_name\":\"Gladiator Sandals\",\"action_by\":32}', '2024-12-13 20:05:21'),
(80, 32, 'product_updated', '{\"product_id\":110,\"product_name\":\"Military Boots\",\"action_by\":32}', '2024-12-13 20:06:18'),
(81, 32, 'product_updated', '{\"product_id\":71,\"product_name\":\"Maxi Skirt\",\"action_by\":32}', '2024-12-13 20:07:24'),
(82, 32, 'product_updated', '{\"product_id\":64,\"product_name\":\"Block Heel Pumps\",\"action_by\":32}', '2024-12-13 20:08:51'),
(83, 32, 'product_created', '{\"product_id\":114,\"product_name\":\"sexy underwear\",\"action_by\":32}', '2024-12-13 20:10:07'),
(84, 40, 'body_analysis_saved', '{\"body_type\":\"Rectangle\",\"saved_at\":\"2024-12-14 03:01:54\"}', '2024-12-14 03:01:54'),
(85, 40, 'quiz_completed', '{\"quiz_result_id\":33,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-14 03:14:04\"}', '2024-12-14 03:14:04'),
(86, 40, 'quiz_results_saved', '{\"quiz_result_id\":34,\"dominant_style\":\"classic\",\"saved_at\":\"2024-12-14 03:14:09\"}', '2024-12-14 03:14:09'),
(87, 40, 'palette_saved', '{\"palette_id\":26,\"name\":\"My Palette 12\\/14\\/2024, 3:16:26 AM\",\"colors_count\":3,\"saved_at\":\"2024-12-14 03:14:38\"}', '2024-12-14 03:14:38'),
(88, 43, 'body_analysis_saved', '{\"body_type\":\"Pear\",\"saved_at\":\"2024-12-15 10:14:21\"}', '2024-12-15 10:14:21'),
(89, NULL, 'body_analysis_saved', '{\"body_type\":\"Pear\",\"saved_at\":\"2024-12-16 17:44:28\"}', '2024-12-16 17:44:28'),
(90, NULL, 'palette_saved', '{\"palette_id\":27,\"name\":\"My Palette 12\\/16\\/2024, 5:47:52 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-16 17:46:05\"}', '2024-12-16 17:46:05'),
(91, NULL, 'palette_saved', '{\"palette_id\":28,\"name\":\"My Palette 12\\/16\\/2024, 5:48:55 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-16 17:47:07\"}', '2024-12-16 17:47:07'),
(92, NULL, 'quiz_completed', '{\"quiz_result_id\":35,\"dominant_style\":\"edgy\",\"completed_at\":\"2024-12-16 17:55:12\"}', '2024-12-16 17:55:12'),
(93, NULL, 'quiz_results_saved', '{\"quiz_result_id\":36,\"dominant_style\":\"edgy\",\"saved_at\":\"2024-12-16 17:55:16\"}', '2024-12-16 17:55:16'),
(94, 32, 'product_deleted', '{\"product_id\":103,\"product_name\":\"Oversized Cardigan\",\"action_by\":32}', '2024-12-16 18:04:02'),
(95, 32, 'product_updated', '{\"product_id\":109,\"product_name\":\"Wide-Brim Hat\",\"action_by\":32}', '2024-12-16 18:04:21'),
(96, 32, 'product_updated', '{\"product_id\":112,\"product_name\":\"jorts\",\"action_by\":32}', '2024-12-16 18:04:41'),
(97, 32, 'product_created', '{\"product_id\":115,\"product_name\":\"bjkl\",\"action_by\":32}', '2024-12-16 18:05:40'),
(98, 47, 'body_analysis_saved', '{\"body_type\":\"Pear\",\"saved_at\":\"2024-12-16 18:41:12\"}', '2024-12-16 18:41:12'),
(99, 47, 'palette_saved', '{\"palette_id\":29,\"name\":\"My Palette 12\\/16\\/2024, 6:44:07 PM\",\"colors_count\":4,\"saved_at\":\"2024-12-16 18:42:19\"}', '2024-12-16 18:42:19'),
(100, 47, 'palette_saved', '{\"palette_id\":30,\"name\":\"My Palette 12\\/16\\/2024, 6:44:44 PM\",\"colors_count\":3,\"saved_at\":\"2024-12-16 18:42:56\"}', '2024-12-16 18:42:56'),
(101, 47, 'quiz_completed', '{\"quiz_result_id\":37,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-16 18:46:10\"}', '2024-12-16 18:46:10'),
(102, 47, 'quiz_completed', '{\"quiz_result_id\":38,\"dominant_style\":\"classic\",\"completed_at\":\"2024-12-16 18:46:10\"}', '2024-12-16 18:46:10'),
(103, 47, 'quiz_results_saved', '{\"quiz_result_id\":39,\"dominant_style\":\"classic\",\"saved_at\":\"2024-12-16 18:46:30\"}', '2024-12-16 18:46:30'),
(104, 32, 'product_deleted', '{\"product_id\":110,\"product_name\":\"Military Boots\",\"action_by\":32}', '2024-12-16 18:52:26'),
(105, 32, 'product_updated', '{\"product_id\":109,\"product_name\":\"Wide-Brim Hat\",\"action_by\":32}', '2024-12-16 18:52:49'),
(106, 32, 'product_created', '{\"product_id\":116,\"product_name\":\" nl\",\"action_by\":32}', '2024-12-16 18:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `style_color_palettes`
--

CREATE TABLE `style_color_palettes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `palette_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `season` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `combinations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `style_color_palettes`
--

INSERT INTO `style_color_palettes` (`id`, `user_id`, `palette_name`, `colors`, `season`, `combinations`, `created_at`, `updated_at`) VALUES
(2, 22, 'My Palette 12/6/2024, 10:59:10 AM', '[\"#c56fca\",\"#89807b\",\"#eae773\"]', NULL, '{\"#c56fca\":{\"monochromatic\":[\"#943899\",\"#c56fca\",\"#e3b8e5\"],\"complementary\":[\"#c56fca\",\"#72c96e\"],\"triadic\":[\"#c56fca\",\"#c9c56e\",\"#6ec9c5\"],\"analogous\":[\"#976ec9\",\"#c56fca\",\"#c96ea0\"],\"split-complementary\":[\"#c56fca\",\"#a0c96e\",\"#6ec997\"]},\"#89807b\":{\"monochromatic\":[\"#544e4a\",\"#89807b\",\"#b9b4b1\"],\"complementary\":[\"#89807b\",\"#7b848a\"],\"triadic\":[\"#89807b\",\"#7b8a80\",\"#807b8a\"],\"analogous\":[\"#8a7b7d\",\"#89807b\",\"#8a877b\"],\"split-complementary\":[\"#89807b\",\"#7b8a88\",\"#7b7c8a\"]},\"#eae773\":{\"monochromatic\":[\"#d5cf20\",\"#eae773\",\"#f7f6ca\"],\"complementary\":[\"#eae773\",\"#7175ea\"],\"triadic\":[\"#eae773\",\"#71eae6\",\"#e671ea\"],\"analogous\":[\"#eaa971\",\"#eae773\",\"#b1ea71\"],\"split-complementary\":[\"#eae773\",\"#71b1ea\",\"#a971ea\"]}}', '2024-12-06 10:59:10', '2024-12-06 10:59:10'),
(3, 22, 'My Palette 12/6/2024, 11:02:33 AM', '[\"#c56fca\",\"#89807b\",\"#eae773\"]', 'spring', '{\"#c56fca\":{\"monochromatic\":[\"#943899\",\"#c56fca\",\"#e3b8e5\"],\"complementary\":[\"#c56fca\",\"#72c96e\"],\"triadic\":[\"#c56fca\",\"#c9c56e\",\"#6ec9c5\"],\"analogous\":[\"#976ec9\",\"#c56fca\",\"#c96ea0\"],\"split-complementary\":[\"#c56fca\",\"#a0c96e\",\"#6ec997\"]},\"#89807b\":{\"monochromatic\":[\"#544e4a\",\"#89807b\",\"#b9b4b1\"],\"complementary\":[\"#89807b\",\"#7b848a\"],\"triadic\":[\"#89807b\",\"#7b8a80\",\"#807b8a\"],\"analogous\":[\"#8a7b7d\",\"#89807b\",\"#8a877b\"],\"split-complementary\":[\"#89807b\",\"#7b8a88\",\"#7b7c8a\"]},\"#eae773\":{\"monochromatic\":[\"#d5cf20\",\"#eae773\",\"#f7f6ca\"],\"complementary\":[\"#eae773\",\"#7175ea\"],\"triadic\":[\"#eae773\",\"#71eae6\",\"#e671ea\"],\"analogous\":[\"#eaa971\",\"#eae773\",\"#b1ea71\"],\"split-complementary\":[\"#eae773\",\"#71b1ea\",\"#a971ea\"]}}', '2024-12-06 11:02:33', '2024-12-06 11:02:33'),
(4, 22, 'My Palette 12/6/2024, 11:04:04 AM', '[\"#70bbd0\",\"#9b7778\",\"#c9d770\"]', 'summer', '{\"#70bbd0\":{\"monochromatic\":[\"#368da6\",\"#70bbd0\",\"#bee0ea\"],\"complementary\":[\"#70bbd0\",\"#d18571\"],\"triadic\":[\"#70bbd0\",\"#d171bc\",\"#bcd171\"],\"analogous\":[\"#71d1b6\",\"#70bbd0\",\"#718cd1\"],\"split-complementary\":[\"#70bbd0\",\"#d1718c\",\"#d1b671\"]},\"#9b7778\":{\"monochromatic\":[\"#644a4b\",\"#9b7778\",\"#c7b3b3\"],\"complementary\":[\"#9b7778\",\"#789b9a\"],\"triadic\":[\"#9b7778\",\"#799b78\",\"#78799b\"],\"analogous\":[\"#9b788b\",\"#9b7778\",\"#9b8978\"],\"split-complementary\":[\"#9b7778\",\"#789b89\",\"#788b9b\"]},\"#c9d770\":{\"monochromatic\":[\"#9eaf31\",\"#c9d770\",\"#e7edbf\"],\"complementary\":[\"#c9d770\",\"#7e70d7\"],\"triadic\":[\"#c9d770\",\"#70c9d7\",\"#d770c9\"],\"analogous\":[\"#d7b170\",\"#c9d770\",\"#95d770\"],\"split-complementary\":[\"#c9d770\",\"#7095d7\",\"#b170d7\"]}}', '2024-12-06 11:04:04', '2024-12-06 11:04:04'),
(5, 22, 'My Palette 12/6/2024, 11:04:40 AM', '[\"#db6f77\"]', 'autumn', '{\"#db6f77\":{\"monochromatic\":[\"#b82e37\",\"#db6f77\",\"#f0c2c5\"],\"complementary\":[\"#db6f77\",\"#70dbd4\"],\"triadic\":[\"#db6f77\",\"#77db70\",\"#7077db\"],\"analogous\":[\"#db70ad\",\"#db6f77\",\"#db9f70\"],\"split-complementary\":[\"#db6f77\",\"#70db9f\",\"#70addb\"]}}', '2024-12-06 11:04:40', '2024-12-06 11:04:40'),
(7, 22, 'My Palette 12/6/2024, 11:17:29 AM', '[\"#8d70db\",\"#c371dc\",\"#db70bf\"]', 'spring', '{\"#8d70db\":{\"monochromatic\":[\"#532eb8\",\"#8d70db\",\"#cec2f0\"],\"complementary\":[\"#8d70db\",\"#bfdb70\"],\"triadic\":[\"#8d70db\",\"#db8d70\",\"#70db8d\"],\"analogous\":[\"#7089db\",\"#8d70db\",\"#c270db\"],\"split-complementary\":[\"#8d70db\",\"#dbc270\",\"#89db70\"]},\"#c371dc\":{\"monochromatic\":[\"#972eb8\",\"#c371dc\",\"#e5c2f0\"],\"complementary\":[\"#c371dc\",\"#89db70\"],\"triadic\":[\"#c371dc\",\"#dbc270\",\"#70dbc2\"],\"analogous\":[\"#8d70db\",\"#c371dc\",\"#db70bf\"],\"split-complementary\":[\"#c371dc\",\"#bfdb70\",\"#70db8d\"]},\"#db70bf\":{\"monochromatic\":[\"#b82e93\",\"#db70bf\",\"#f0c2e3\"],\"complementary\":[\"#db70bf\",\"#70db8d\"],\"triadic\":[\"#db70bf\",\"#bfdb70\",\"#70bfdb\"],\"analogous\":[\"#c270db\",\"#db70bf\",\"#db7089\"],\"split-complementary\":[\"#db70bf\",\"#89db70\",\"#70dbc2\"]}}', '2024-12-06 11:17:29', '2024-12-06 11:17:29'),
(8, 22, 'My Palette 12/6/2024, 11:18:12 AM', '[\"#faf87b\",\"#7afaf8\",\"#f87afa\",\"#887d7f\"]', 'summer', '{\"#faf87b\":{\"monochromatic\":[\"#f7f318\",\"#faf87b\",\"#fefddd\"],\"complementary\":[\"#faf87b\",\"#7a7cfa\"],\"triadic\":[\"#faf87b\",\"#7afaf8\",\"#f87afa\"],\"analogous\":[\"#fab87a\",\"#faf87b\",\"#bcfa7a\"],\"split-complementary\":[\"#faf87b\",\"#7abcfa\",\"#b87afa\"]},\"#7afaf8\":{\"monochromatic\":[\"#18f7f3\",\"#7afaf8\",\"#ddfefd\"],\"complementary\":[\"#7afaf8\",\"#fa7a7c\"],\"triadic\":[\"#7afaf8\",\"#f87afa\",\"#faf87a\"],\"analogous\":[\"#7afab8\",\"#7afaf8\",\"#7abcfa\"],\"split-complementary\":[\"#7afaf8\",\"#fa7abc\",\"#fab87a\"]},\"#f87afa\":{\"monochromatic\":[\"#f318f7\",\"#f87afa\",\"#fdddfe\"],\"complementary\":[\"#f87afa\",\"#7cfa7a\"],\"triadic\":[\"#f87afa\",\"#faf87a\",\"#7afaf8\"],\"analogous\":[\"#b87afa\",\"#f87afa\",\"#fa7abc\"],\"split-complementary\":[\"#f87afa\",\"#bcfa7a\",\"#7afab8\"]},\"#887d7f\":{\"monochromatic\":[\"#524c4d\",\"#887d7f\",\"#b8b2b3\"],\"complementary\":[\"#887d7f\",\"#7d8785\"],\"triadic\":[\"#887d7f\",\"#7f877d\",\"#7d7f87\"],\"analogous\":[\"#877d84\",\"#887d7f\",\"#87807d\"],\"split-complementary\":[\"#887d7f\",\"#7d8780\",\"#7d8487\"]}}', '2024-12-06 11:18:12', '2024-12-06 11:18:12'),
(9, 22, 'My Palette 12/6/2024, 11:28:01 AM', '[\"#e47189\"]', NULL, '{\"#e47189\":{\"monochromatic\":[\"#c9264a\",\"#e47189\",\"#f4c7d1\"],\"complementary\":[\"#e47189\",\"#72e4cb\"],\"triadic\":[\"#e47189\",\"#8ae472\",\"#728ae4\"],\"analogous\":[\"#e472c4\",\"#e47189\",\"#e49272\"],\"split-complementary\":[\"#e47189\",\"#72e492\",\"#72c4e4\"]}}', '2024-12-06 11:28:01', '2024-12-06 11:28:01'),
(10, 22, 'My Palette 12/6/2024, 11:28:09 AM', '[\"#e47189\",\"#c4e472\",\"#72e4cb\",\"#9272e4\"]', NULL, '{\"#e47189\":{\"monochromatic\":[\"#c9264a\",\"#e47189\",\"#f4c7d1\"],\"complementary\":[\"#e47189\",\"#72e4cb\"],\"triadic\":[\"#e47189\",\"#8ae472\",\"#728ae4\"],\"analogous\":[\"#e472c4\",\"#e47189\",\"#e49272\"],\"split-complementary\":[\"#e47189\",\"#72e492\",\"#72c4e4\"]},\"#c4e472\":{\"monochromatic\":[\"#9bc926\",\"#c4e472\",\"#e8f4c7\"],\"complementary\":[\"#c4e472\",\"#9272e4\"],\"triadic\":[\"#c4e472\",\"#72c4e4\",\"#e472c4\"],\"analogous\":[\"#e4cb72\",\"#c4e472\",\"#8ae472\"],\"split-complementary\":[\"#c4e472\",\"#728ae4\",\"#cb72e4\"]},\"#72e4cb\":{\"monochromatic\":[\"#26c9a6\",\"#72e4cb\",\"#c7f4eb\"],\"complementary\":[\"#72e4cb\",\"#e4728a\"],\"triadic\":[\"#72e4cb\",\"#cb72e4\",\"#e4cb72\"],\"analogous\":[\"#72e492\",\"#72e4cb\",\"#72c4e4\"],\"split-complementary\":[\"#72e4cb\",\"#e472c4\",\"#e49272\"]},\"#9272e4\":{\"monochromatic\":[\"#5526c9\",\"#9272e4\",\"#d4c7f4\"],\"complementary\":[\"#9272e4\",\"#c4e472\"],\"triadic\":[\"#9272e4\",\"#e49272\",\"#72e492\"],\"analogous\":[\"#728ae4\",\"#9272e4\",\"#cb72e4\"],\"split-complementary\":[\"#9272e4\",\"#e4cb72\",\"#8ae472\"]}}', '2024-12-06 11:28:09', '2024-12-06 11:28:09'),
(11, 22, 'My Palette 12/6/2024, 11:28:15 AM', '[\"#e47189\",\"#c4e472\",\"#72e4cb\"]', 'spring', '{\"#e47189\":{\"monochromatic\":[\"#c9264a\",\"#e47189\",\"#f4c7d1\"],\"complementary\":[\"#e47189\",\"#72e4cb\"],\"triadic\":[\"#e47189\",\"#8ae472\",\"#728ae4\"],\"analogous\":[\"#e472c4\",\"#e47189\",\"#e49272\"],\"split-complementary\":[\"#e47189\",\"#72e492\",\"#72c4e4\"]},\"#c4e472\":{\"monochromatic\":[\"#9bc926\",\"#c4e472\",\"#e8f4c7\"],\"complementary\":[\"#c4e472\",\"#9272e4\"],\"triadic\":[\"#c4e472\",\"#72c4e4\",\"#e472c4\"],\"analogous\":[\"#e4cb72\",\"#c4e472\",\"#8ae472\"],\"split-complementary\":[\"#c4e472\",\"#728ae4\",\"#cb72e4\"]},\"#72e4cb\":{\"monochromatic\":[\"#26c9a6\",\"#72e4cb\",\"#c7f4eb\"],\"complementary\":[\"#72e4cb\",\"#e4728a\"],\"triadic\":[\"#72e4cb\",\"#cb72e4\",\"#e4cb72\"],\"analogous\":[\"#72e492\",\"#72e4cb\",\"#72c4e4\"],\"split-complementary\":[\"#72e4cb\",\"#e472c4\",\"#e49272\"]}}', '2024-12-06 11:28:15', '2024-12-06 11:28:15'),
(12, 22, 'My Palette 12/6/2024, 11:34:47 AM', '[\"#e177f3\",\"#f377c8\",\"#f3778a\"]', NULL, '{\"#e177f3\":{\"monochromatic\":[\"#cc19eb\",\"#e177f3\",\"#f6d5fb\"],\"complementary\":[\"#e177f3\",\"#8af377\"],\"triadic\":[\"#e177f3\",\"#f3e177\",\"#77f3e1\"],\"analogous\":[\"#a277f3\",\"#e177f3\",\"#f377c8\"],\"split-complementary\":[\"#e177f3\",\"#c8f377\",\"#77f3a2\"]},\"#f377c8\":{\"monochromatic\":[\"#eb19a2\",\"#f377c8\",\"#fbd5ee\"],\"complementary\":[\"#f377c8\",\"#77f3a2\"],\"triadic\":[\"#f377c8\",\"#c8f377\",\"#77c8f3\"],\"analogous\":[\"#e177f3\",\"#f377c8\",\"#f3778a\"],\"split-complementary\":[\"#f377c8\",\"#8af377\",\"#77f3e1\"]},\"#f3778a\":{\"monochromatic\":[\"#eb1939\",\"#f3778a\",\"#fbd5db\"],\"complementary\":[\"#f3778a\",\"#77f3e1\"],\"triadic\":[\"#f3778a\",\"#8af377\",\"#778af3\"],\"analogous\":[\"#f377c8\",\"#f3778a\",\"#f3a277\"],\"split-complementary\":[\"#f3778a\",\"#77f3a2\",\"#77c8f3\"]}}', '2024-12-06 11:34:47', '2024-12-06 11:34:47'),
(13, 22, 'My Palette 12/6/2024, 11:34:56 AM', '[\"#e177f3\",\"#8af377\"]', NULL, '{\"#e177f3\":{\"monochromatic\":[\"#cc19eb\",\"#e177f3\",\"#f6d5fb\"],\"complementary\":[\"#e177f3\",\"#8af377\"],\"triadic\":[\"#e177f3\",\"#f3e177\",\"#77f3e1\"],\"analogous\":[\"#a277f3\",\"#e177f3\",\"#f377c8\"],\"split-complementary\":[\"#e177f3\",\"#c8f377\",\"#77f3a2\"]},\"#8af377\":{\"monochromatic\":[\"#39eb19\",\"#8af377\",\"#dbfbd5\"],\"complementary\":[\"#8af377\",\"#e177f3\"],\"triadic\":[\"#8af377\",\"#778af3\",\"#f3778a\"],\"analogous\":[\"#c8f377\",\"#8af377\",\"#77f3a2\"],\"split-complementary\":[\"#8af377\",\"#a277f3\",\"#f377c8\"]}}', '2024-12-06 11:34:56', '2024-12-06 11:34:56'),
(14, 22, 'My Palette 12/6/2024, 11:35:06 AM', '[\"#e177f3\",\"#8af377\",\"#de70da\",\"#6f8dc4\"]', 'summer', '{\"#e177f3\":{\"monochromatic\":[\"#cc19eb\",\"#e177f3\",\"#f6d5fb\"],\"complementary\":[\"#e177f3\",\"#8af377\"],\"triadic\":[\"#e177f3\",\"#f3e177\",\"#77f3e1\"],\"analogous\":[\"#a277f3\",\"#e177f3\",\"#f377c8\"],\"split-complementary\":[\"#e177f3\",\"#c8f377\",\"#77f3a2\"]},\"#8af377\":{\"monochromatic\":[\"#39eb19\",\"#8af377\",\"#dbfbd5\"],\"complementary\":[\"#8af377\",\"#e177f3\"],\"triadic\":[\"#8af377\",\"#778af3\",\"#f3778a\"],\"analogous\":[\"#c8f377\",\"#8af377\",\"#77f3a2\"],\"split-complementary\":[\"#8af377\",\"#a277f3\",\"#f377c8\"]},\"#de70da\":{\"monochromatic\":[\"#bb2ab6\",\"#de70da\",\"#f1c1ef\"],\"complementary\":[\"#de70da\",\"#6ede71\"],\"triadic\":[\"#de70da\",\"#dade6e\",\"#6edade\"],\"analogous\":[\"#a96ede\",\"#de70da\",\"#de6ea2\"],\"split-complementary\":[\"#de70da\",\"#a2de6e\",\"#6edea9\"]},\"#6f8dc4\":{\"monochromatic\":[\"#3b5991\",\"#6f8dc4\",\"#b7c6e1\"],\"complementary\":[\"#6f8dc4\",\"#c4a66e\"],\"triadic\":[\"#6f8dc4\",\"#c46e8c\",\"#8cc46e\"],\"analogous\":[\"#6eb7c4\",\"#6f8dc4\",\"#7b6ec4\"],\"split-complementary\":[\"#6f8dc4\",\"#c47b6e\",\"#b7c46e\"]}}', '2024-12-06 11:35:06', '2024-12-06 11:35:06'),
(15, 22, 'My Palette 12/6/2024, 11:41:11 AM', '[\"#e47189\",\"#c4e472\",\"#72e4cb\"]', NULL, '{\"#e47189\":{\"monochromatic\":[\"#c9264a\",\"#e47189\",\"#f4c7d1\"],\"complementary\":[\"#e47189\",\"#72e4cb\"],\"triadic\":[\"#e47189\",\"#8ae472\",\"#728ae4\"],\"analogous\":[\"#e472c4\",\"#e47189\",\"#e49272\"],\"split-complementary\":[\"#e47189\",\"#72e492\",\"#72c4e4\"]},\"#c4e472\":{\"monochromatic\":[\"#9bc926\",\"#c4e472\",\"#e8f4c7\"],\"complementary\":[\"#c4e472\",\"#9272e4\"],\"triadic\":[\"#c4e472\",\"#72c4e4\",\"#e472c4\"],\"analogous\":[\"#e4cb72\",\"#c4e472\",\"#8ae472\"],\"split-complementary\":[\"#c4e472\",\"#728ae4\",\"#cb72e4\"]},\"#72e4cb\":{\"monochromatic\":[\"#26c9a6\",\"#72e4cb\",\"#c7f4eb\"],\"complementary\":[\"#72e4cb\",\"#e4728a\"],\"triadic\":[\"#72e4cb\",\"#cb72e4\",\"#e4cb72\"],\"analogous\":[\"#72e492\",\"#72e4cb\",\"#72c4e4\"],\"split-complementary\":[\"#72e4cb\",\"#e472c4\",\"#e49272\"]}}', '2024-12-06 11:41:11', '2024-12-06 11:41:11'),
(16, 22, 'My Palette 12/6/2024, 11:42:18 AM', '[\"#222020\",\"#f97ba7\"]', 'summer', '{\"#222020\":{\"monochromatic\":[\"#000000\",\"#222020\",\"#575252\"],\"complementary\":[\"#222020\",\"#202222\"],\"triadic\":[\"#222020\",\"#202220\",\"#202022\"],\"analogous\":[\"#222021\",\"#222020\",\"#222120\"],\"split-complementary\":[\"#222020\",\"#202221\",\"#202122\"]},\"#f97ba7\":{\"monochromatic\":[\"#f41a66\",\"#f97ba7\",\"#fddde8\"],\"complementary\":[\"#f97ba7\",\"#7bf9cd\"],\"triadic\":[\"#f97ba7\",\"#a7f97b\",\"#7ba7f9\"],\"analogous\":[\"#f97be6\",\"#f97ba7\",\"#f98e7b\"],\"split-complementary\":[\"#f97ba7\",\"#7bf98e\",\"#7be6f9\"]}}', '2024-12-06 11:42:18', '2024-12-06 11:42:18'),
(18, 32, 'LoverGirl  12/9/2024, 11:07:15 PM', '[\"#c572e5\",\"#70ced0\",\"#70d78d\",\"#adb172\",\"#400000\"]', 'summer', '{\"#c572e5\":{\"monochromatic\":[\"#9c25cb\",\"#c572e5\",\"#e8c7f5\"],\"complementary\":[\"#c572e5\",\"#92e571\"],\"triadic\":[\"#c572e5\",\"#e5c471\",\"#71e5c4\"],\"analogous\":[\"#8a71e5\",\"#c572e5\",\"#e571cc\"],\"split-complementary\":[\"#c572e5\",\"#cce571\",\"#71e58a\"]},\"#70ced0\":{\"monochromatic\":[\"#36a4a6\",\"#70ced0\",\"#bee9ea\"],\"complementary\":[\"#70ced0\",\"#d17271\"],\"triadic\":[\"#70ced0\",\"#d171cf\",\"#cfd171\"],\"analogous\":[\"#71d1a2\",\"#70ced0\",\"#719fd1\"],\"split-complementary\":[\"#70ced0\",\"#d1719f\",\"#d1a271\"]},\"#70d78d\":{\"monochromatic\":[\"#31af55\",\"#70d78d\",\"#bfedcc\"],\"complementary\":[\"#70d78d\",\"#d770b9\"],\"triadic\":[\"#70d78d\",\"#8d70d7\",\"#d78d70\"],\"analogous\":[\"#86d770\",\"#70d78d\",\"#70d7c0\"],\"split-complementary\":[\"#70d78d\",\"#c070d7\",\"#d77086\"]},\"#adb172\":{\"monochromatic\":[\"#767a43\",\"#adb172\",\"#d3d5b3\"],\"complementary\":[\"#adb172\",\"#7672b1\"],\"triadic\":[\"#adb172\",\"#72adb1\",\"#b172ad\"],\"analogous\":[\"#b19672\",\"#adb172\",\"#8db172\"],\"split-complementary\":[\"#adb172\",\"#728db1\",\"#9672b1\"]},\"#400000\":{\"monochromatic\":[\"#000000\",\"#400000\",\"#a80000\"],\"complementary\":[\"#400000\",\"#004242\"],\"triadic\":[\"#400000\",\"#004200\",\"#000042\"],\"analogous\":[\"#420021\",\"#400000\",\"#422100\"],\"split-complementary\":[\"#400000\",\"#004221\",\"#002142\"]}}', '2024-12-09 23:07:15', '2024-12-09 23:07:40'),
(19, 32, 'Dark beauty 12/9/2024, 11:08:07 PM', '[\"#400000\",\"#000000\",\"#a80000\"]', 'autumn', '{\"#400000\":{\"monochromatic\":[\"#000000\",\"#400000\",\"#a80000\"],\"complementary\":[\"#400000\",\"#004242\"],\"triadic\":[\"#400000\",\"#004200\",\"#000042\"],\"analogous\":[\"#420021\",\"#400000\",\"#422100\"],\"split-complementary\":[\"#400000\",\"#004221\",\"#002142\"]},\"#000000\":{\"monochromatic\":[\"#000000\",\"#000000\",\"#333333\"],\"complementary\":[\"#000000\",\"#000000\"],\"triadic\":[\"#000000\",\"#000000\",\"#000000\"],\"analogous\":[\"#000000\",\"#000000\",\"#000000\"],\"split-complementary\":[\"#000000\",\"#000000\",\"#000000\"]},\"#a80000\":{\"monochromatic\":[\"#420000\",\"#a80000\",\"#ff0f0f\"],\"complementary\":[\"#a80000\",\"#00a8a8\"],\"triadic\":[\"#a80000\",\"#00a800\",\"#0000a8\"],\"analogous\":[\"#a80054\",\"#a80000\",\"#a85400\"],\"split-complementary\":[\"#a80000\",\"#00a854\",\"#0054a8\"]}}', '2024-12-09 23:08:07', '2024-12-09 23:08:26'),
(20, 33, 'Love never lies 12/10/2024, 1:31:17 PM', '[\"#f578d8\",\"#f5d47a\",\"#7af597\",\"#7a9bf5\"]', 'summer', '{\"#f578d8\":{\"monochromatic\":[\"#ee1bbd\",\"#f578d8\",\"#fcd9f4\"],\"complementary\":[\"#f578d8\",\"#7af597\"],\"triadic\":[\"#f578d8\",\"#d8f57a\",\"#7ad8f5\"],\"analogous\":[\"#d47af5\",\"#f578d8\",\"#f57a9b\"],\"split-complementary\":[\"#f578d8\",\"#9bf57a\",\"#7af5d4\"]},\"#f5d47a\":{\"monochromatic\":[\"#eeb61b\",\"#f5d47a\",\"#fcf3d9\"],\"complementary\":[\"#f5d47a\",\"#7a9bf5\"],\"triadic\":[\"#f5d47a\",\"#7af5d4\",\"#d47af5\"],\"analogous\":[\"#f5977a\",\"#f5d47a\",\"#d8f57a\"],\"split-complementary\":[\"#f5d47a\",\"#7ad8f5\",\"#977af5\"]},\"#7af597\":{\"monochromatic\":[\"#1bee4c\",\"#7af597\",\"#d9fce1\"],\"complementary\":[\"#7af597\",\"#f57ad8\"],\"triadic\":[\"#7af597\",\"#977af5\",\"#f5977a\"],\"analogous\":[\"#9bf57a\",\"#7af597\",\"#7af5d4\"],\"split-complementary\":[\"#7af597\",\"#d47af5\",\"#f57a9b\"]},\"#7a9bf5\":{\"monochromatic\":[\"#1b53ee\",\"#7a9bf5\",\"#d9e2fc\"],\"complementary\":[\"#7a9bf5\",\"#f5d47a\"],\"triadic\":[\"#7a9bf5\",\"#f57a9b\",\"#9bf57a\"],\"analogous\":[\"#7ad8f5\",\"#7a9bf5\",\"#977af5\"],\"split-complementary\":[\"#7a9bf5\",\"#f5977a\",\"#d8f57a\"]}}', '2024-12-10 13:31:17', '2024-12-10 13:31:36'),
(23, 32, 'Mi amour 12/11/2024, 5:07:47 PM', '[\"#ff0000\",\"#00ff80\",\"#0080ff\"]', 'autumn', '{\"#ff0000\":{\"monochromatic\":[\"#990000\",\"#ff0000\",\"#ff6666\"],\"complementary\":[\"#ff0000\",\"#00ffff\"],\"triadic\":[\"#ff0000\",\"#00ff00\",\"#0000ff\"],\"analogous\":[\"#ff0080\",\"#ff0000\",\"#ff8000\"],\"split-complementary\":[\"#ff0000\",\"#00ff80\",\"#0080ff\"]},\"#00ff80\":{\"monochromatic\":[\"#00994d\",\"#00ff80\",\"#66ffb3\"],\"complementary\":[\"#00ff80\",\"#ff0080\"],\"triadic\":[\"#00ff80\",\"#8000ff\",\"#ff8000\"],\"analogous\":[\"#00ff00\",\"#00ff80\",\"#00ffff\"],\"split-complementary\":[\"#00ff80\",\"#ff00ff\",\"#ff0000\"]},\"#0080ff\":{\"monochromatic\":[\"#004c99\",\"#0080ff\",\"#66b3ff\"],\"complementary\":[\"#0080ff\",\"#ff8000\"],\"triadic\":[\"#0080ff\",\"#ff0080\",\"#80ff00\"],\"analogous\":[\"#00ffff\",\"#0080ff\",\"#0000ff\"],\"split-complementary\":[\"#0080ff\",\"#ff0000\",\"#ffff00\"]}}', '2024-12-11 17:05:59', '2024-12-11 17:06:16'),
(25, 39, 'Dressye 12/12/2024, 16:44:41', '[\"#ed74dd\",\"#72d6e9\",\"#71aee3\"]', 'summer', '{\"#ed74dd\":{\"monochromatic\":[\"#dd1dc4\",\"#ed74dd\",\"#f9cdf3\"],\"complementary\":[\"#ed74dd\",\"#73ed83\"],\"triadic\":[\"#ed74dd\",\"#dded73\",\"#73dded\"],\"analogous\":[\"#c073ed\",\"#ed74dd\",\"#ed73a0\"],\"split-complementary\":[\"#ed74dd\",\"#a0ed73\",\"#73edc0\"]},\"#72d6e9\":{\"monochromatic\":[\"#21b6d4\",\"#72d6e9\",\"#caeff7\"],\"complementary\":[\"#72d6e9\",\"#e98672\"],\"triadic\":[\"#72d6e9\",\"#e972d5\",\"#d5e972\"],\"analogous\":[\"#72e9c1\",\"#72d6e9\",\"#729ae9\"],\"split-complementary\":[\"#72d6e9\",\"#e9729a\",\"#e9c172\"]},\"#71aee3\":{\"monochromatic\":[\"#287dc8\",\"#71aee3\",\"#c8dff4\"],\"complementary\":[\"#71aee3\",\"#e3a772\"],\"triadic\":[\"#71aee3\",\"#e372af\",\"#afe372\"],\"analogous\":[\"#72e3df\",\"#71aee3\",\"#7276e3\"],\"split-complementary\":[\"#71aee3\",\"#e37276\",\"#e3df72\"]}}', '2024-12-12 16:44:42', '2024-12-12 16:45:12'),
(26, 40, 'Drive and disconnect 12/14/2024, 3:16:26 AM', '[\"#f577cf\",\"#a871e0\",\"#7078de\"]', 'summer', '{\"#f577cf\":{\"monochromatic\":[\"#ee17ad\",\"#f577cf\",\"#fcd4f0\"],\"complementary\":[\"#f577cf\",\"#75f59c\"],\"triadic\":[\"#f577cf\",\"#cef575\",\"#75cef5\"],\"analogous\":[\"#db75f5\",\"#f577cf\",\"#f5758f\"],\"split-complementary\":[\"#f577cf\",\"#8ff575\",\"#75f5db\"]},\"#a871e0\":{\"monochromatic\":[\"#752ac0\",\"#a871e0\",\"#dbc4f2\"],\"complementary\":[\"#a871e0\",\"#a8e071\"],\"triadic\":[\"#a871e0\",\"#e0a871\",\"#71e0a8\"],\"analogous\":[\"#7171e0\",\"#a871e0\",\"#e071e0\"],\"split-complementary\":[\"#a871e0\",\"#e0e071\",\"#71e071\"]},\"#7078de\":{\"monochromatic\":[\"#2a34bb\",\"#7078de\",\"#c1c4f1\"],\"complementary\":[\"#7078de\",\"#ded66e\"],\"triadic\":[\"#7078de\",\"#de6e75\",\"#75de6e\"],\"analogous\":[\"#6eadde\",\"#7078de\",\"#9e6ede\"],\"split-complementary\":[\"#7078de\",\"#de9e6e\",\"#adde6e\"]}}', '2024-12-14 03:14:38', '2024-12-14 03:14:57'),
(30, 47, 'My Palette 12/16/2024, 6:44:44 PM', '[\"#e1e371\",\"#72e1e3\",\"#e372e1\"]', 'summer', '{\"#e1e371\":{\"monochromatic\":[\"#c5c828\",\"#e1e371\",\"#f3f4c8\"],\"complementary\":[\"#e1e371\",\"#7472e3\"],\"triadic\":[\"#e1e371\",\"#72e1e3\",\"#e372e1\"],\"analogous\":[\"#e3ad72\",\"#e1e371\",\"#a9e372\"],\"split-complementary\":[\"#e1e371\",\"#72a9e3\",\"#ad72e3\"]},\"#72e1e3\":{\"monochromatic\":[\"#28c5c8\",\"#72e1e3\",\"#c8f3f4\"],\"complementary\":[\"#72e1e3\",\"#e37472\"],\"triadic\":[\"#72e1e3\",\"#e372e1\",\"#e1e372\"],\"analogous\":[\"#72e3ad\",\"#72e1e3\",\"#72a9e3\"],\"split-complementary\":[\"#72e1e3\",\"#e372a9\",\"#e3ad72\"]},\"#e372e1\":{\"monochromatic\":[\"#c828c5\",\"#e372e1\",\"#f4c8f3\"],\"complementary\":[\"#e372e1\",\"#72e374\"],\"triadic\":[\"#e372e1\",\"#e1e372\",\"#72e1e3\"],\"analogous\":[\"#ad72e3\",\"#e372e1\",\"#e372a9\"],\"split-complementary\":[\"#e372e1\",\"#a9e372\",\"#72e3ad\"]}}', '2024-12-16 18:42:56', '2024-12-16 18:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `style_community_comments`
--

CREATE TABLE `style_community_comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `style_community_comments`
--

INSERT INTO `style_community_comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(1, 2, 40, 'Wow, what a gorgeous dress!!', '2024-12-14 03:00:37'),
(2, 1, 40, 'What???', '2024-12-14 03:00:53'),
(3, 4, 40, 'Just tried it and boy isnt it owesome!!!', '2024-12-14 03:15:56'),
(4, 4, 32, 'Glad you like our platform Sparks!!', '2024-12-14 03:16:42'),
(5, 2, 32, 'Obrigado', '2024-12-14 03:17:09'),
(7, 3, 47, 'jhjkrhi', '2024-12-16 18:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `style_community_likes`
--

CREATE TABLE `style_community_likes` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `style_community_likes`
--

INSERT INTO `style_community_likes` (`id`, `post_id`, `user_id`, `created_at`) VALUES
(1, 3, 40, '2024-12-14 03:00:10'),
(2, 4, 32, '2024-12-14 03:16:53'),
(3, 4, 47, '2024-12-16 18:49:35'),
(4, 3, 47, '2024-12-16 18:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `style_community_posts`
--

CREATE TABLE `style_community_posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `likes` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `style_community_posts`
--

INSERT INTO `style_community_posts` (`id`, `user_id`, `title`, `content`, `image_url`, `likes`, `created_at`) VALUES
(1, 32, 'vvvv', 'vcfcg', '', 0, '2024-12-14 02:55:47'),
(2, 32, 'fgkj', 'gshagbuila', 'https://liviaandco.co.za/cdn/shop/files/IMG_3747.jpg?v=1727409815&amp;width=1445', 0, '2024-12-14 02:56:41'),
(3, 32, 'Style sense is the best', 'Style sense has changed my life', 'https://ng.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/12/4985531/1.jpg', 2, '2024-12-14 02:57:59'),
(4, 40, 'New', 'Hello guys im new here and i cant wait to try out this platform!!', '', 2, '2024-12-14 03:00:05'),
(6, 47, 'vhvkhj', 'vbljk', 'https://lewkin.com/cdn/shop/files/001_Dark_20blue_b2c41b80-dae3-4125-b596-bae2767b5070.jpg?v=1715906164', 0, '2024-12-16 18:48:09'),
(7, 47, 'bjr[ho', 'blbjk', '', 0, '2024-12-16 18:48:40'),
(8, 47, 'ghjlgi', 'lkh', 'https://lewkin.com/cdn/shop/files/001_Dark_20blue_b2c41b80-dae3-4125-b596-bae2767b5070.jpg?v=1715906164', 0, '2024-12-16 18:49:02'),
(9, 47, 'vgkh', 'vhjl', 'https://lewkin.com/cdn/shop/files/001_Dark_20blue_b2c41b80-dae3-4125-b596-bae2767b5070.jpg?v=1715906164', 0, '2024-12-16 18:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `style_outfits`
--

CREATE TABLE `style_outfits` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `category` enum('casual','formal','business','party') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `season` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_worn` timestamp NULL DEFAULT NULL,
  `times_worn` int DEFAULT '0',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Store outfit properties like color harmony',
  `style_score` decimal(3,2) DEFAULT NULL COMMENT 'AI-generated style rating',
  `color_harmony` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Color harmony type',
  `occasions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Suitable occasions for outfit',
  `weather_conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Suitable weather conditions'
) ;

--
-- Dumping data for table `style_outfits`
--

INSERT INTO `style_outfits` (`id`, `user_id`, `name`, `description`, `category`, `season`, `created_at`, `last_worn`, `times_worn`, `metadata`, `style_score`, `color_harmony`, `occasions`, `weather_conditions`) VALUES
(2, 22, 'Lover', 'Best outfit i a have so far', 'party', NULL, '2024-12-12 00:53:37', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(3, 22, 'Impossible', 'This outfit doesnt make sense but heyy', 'casual', NULL, '2024-12-12 01:05:52', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(4, 32, 'Alister', 'fghghijkljjtutydhgjk', 'casual', NULL, '2024-12-12 01:08:43', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(5, 40, 'urg', 'gghvhvhj', 'casual', NULL, '2024-12-14 03:13:09', NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `style_outfit_items`
--

CREATE TABLE `style_outfit_items` (
  `outfit_id` int NOT NULL,
  `item_id` int NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `layer_order` int DEFAULT '0' COMMENT 'For layered clothing items',
  `style_notes` text COLLATE utf8mb4_general_ci COMMENT 'Notes about item in outfit context'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `style_outfit_items`
--

INSERT INTO `style_outfit_items` (`outfit_id`, `item_id`, `position`, `layer_order`, `style_notes`) VALUES
(2, 61, NULL, 0, NULL),
(2, 63, NULL, 0, NULL),
(2, 88, NULL, 0, NULL),
(2, 90, NULL, 0, NULL),
(3, 59, NULL, 0, NULL),
(3, 61, NULL, 0, NULL),
(3, 63, NULL, 0, NULL),
(3, 64, NULL, 0, NULL),
(3, 88, NULL, 0, NULL),
(3, 90, NULL, 0, NULL),
(3, 91, NULL, 0, NULL),
(4, 68, NULL, 0, NULL),
(4, 71, NULL, 0, NULL),
(4, 74, NULL, 0, NULL),
(5, 93, NULL, 0, NULL),
(5, 95, NULL, 0, NULL),
(5, 96, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `style_quiz_questions`
--

CREATE TABLE `style_quiz_questions` (
  `id` int NOT NULL,
  `question_text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `weight` int DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `style_quiz_questions`
--

INSERT INTO `style_quiz_questions` (`id`, `question_text`, `category`, `options`, `weight`, `active`, `created_at`) VALUES
(1, 'How would you describe your personality?', 'personality', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Traditional and sophisticated\", \"style\": \"classic\", \"weight\": 2},\r\n        {\"id\": \"b\", \"text\": \"Bold and adventurous\", \"style\": \"edgy\", \"weight\": 2},\r\n        {\"id\": \"c\", \"text\": \"Practical and organized\", \"style\": \"minimalist\", \"weight\": 2},\r\n        {\"id\": \"d\", \"text\": \"Creative and expressive\", \"style\": \"romantic\", \"weight\": 2}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(2, 'What best describes your typical workday?', 'lifestyle', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Corporate office environment\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Creative or startup workspace\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Remote work/flexible environment\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Mixed environment with client meetings\", \"style\": \"classic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(3, 'Which color palette attracts you most?', 'preferences', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Navy, beige, and white\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Black with bold color accents\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Neutral tones and earth colors\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Soft pastels and romantic hues\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(4, 'What\'s your approach to accessories?', 'preferences', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Timeless pieces like pearl necklaces or classic watches\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Statement pieces and unique finds\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Minimal and functional pieces\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Delicate and decorative items\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(5, 'Where do you prefer to shop?', 'lifestyle', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"High-end department stores\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Vintage and unique boutiques\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Minimalist concept stores\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Mix of trendy and feminine shops\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(6, 'What\'s your ideal weekend outfit?', 'preferences', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Tailored casual pieces\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Edgy streetwear\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Simple, comfortable basics\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Soft, flowing pieces\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(7, 'How do you approach dressing for special events?', 'personality', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Classic elegance with a modern twist\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Stand out with unique, bold choices\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Sophisticated simplicity\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Romantic and feminine pieces\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(8, 'Which style icon resonates with you most?', 'preferences', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Audrey Hepburn - Timeless elegance\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Rihanna - Bold and daring\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Angelina Jolie - Sleek and minimal\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Taylor Swift - Feminine and sweet\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(9, 'What makes you feel most confident?', 'personality', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Looking polished and put-together\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Standing out from the crowd\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Being comfortable and effortless\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Expressing my feminine side\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(10, 'What are your style goals?', 'personality', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Build a timeless wardrobe\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Express my unique personality\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Create an efficient wardrobe\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Embrace soft, feminine style\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(11, 'What\'s your biggest style challenge?', 'lifestyle', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Finding modern ways to wear classics\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Balancing bold choices with everyday wear\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Building a versatile minimal wardrobe\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Incorporating feminine pieces appropriately\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34'),
(12, 'What do you prioritize when choosing clothes?', 'preferences', '{\r\n    \"options\": [\r\n        {\"id\": \"a\", \"text\": \"Quality and longevity\", \"style\": \"classic\"},\r\n        {\"id\": \"b\", \"text\": \"Uniqueness and personal expression\", \"style\": \"edgy\"},\r\n        {\"id\": \"c\", \"text\": \"Versatility and functionality\", \"style\": \"minimalist\"},\r\n        {\"id\": \"d\", \"text\": \"Beauty and personal style\", \"style\": \"romantic\"}\r\n    ]\r\n }', 1, 1, '2024-12-07 02:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `style_quiz_results`
--

CREATE TABLE `style_quiz_results` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `quiz_answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `style_profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `recommendations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `taken_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quiz_version` int DEFAULT '1',
  `dominant_style` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `style_scores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `style_quiz_results`
--

INSERT INTO `style_quiz_results` (`id`, `user_id`, `quiz_answers`, `style_profile`, `recommendations`, `taken_at`, `quiz_version`, `dominant_style`, `style_scores`, `created_at`) VALUES
(1, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":12,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":33,\"romantic\":33,\"edgy\":25,\"minimalist\":8},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-07 21:46:53', 1, NULL, NULL, '2024-12-07 21:46:53'),
(2, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":12,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":4,\"romantic\":4,\"edgy\":3,\"minimalist\":1}}', '{\"style_type\":\"classic\",\"created_at\":\"2024-12-07 21:47:00\"}', '2024-12-07 21:47:00', 1, NULL, NULL, '2024-12-07 21:47:00'),
(3, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":3,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":4,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":6,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":8,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":12,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"}]', '{\"dominant_style\":\"minimalist\",\"style_scores\":{\"minimalist\":83,\"classic\":8,\"edgy\":8,\"romantic\":0},\"profile_description\":\"You prefer clean lines, simple shapes, and a streamlined approach to dressing. Quality and functionality are key elements of your style.\"}', '{\"general\":[\"Build a capsule wardrobe with versatile pieces\",\"Focus on solid colors and simple patterns\",\"Choose clean lines and modern silhouettes\",\"Invest in quality basics that work well together\",\"Keep accessories subtle and functional\"],\"wardrobe_essentials\":[\"Simple t-shirts\",\"Straight-leg trousers\",\"Sleek sneakers\",\"Modern jewelry\",\"Quality basics\"],\"color_palette\":[\"White\",\"Black\",\"Gray\",\"Beige\",\"Navy\"],\"avoid\":[\"Busy patterns\",\"Excessive details\",\"Complicated silhouettes\",\"Too many accessories\"]}', '2024-12-07 22:02:45', 1, NULL, NULL, '2024-12-07 22:02:45'),
(4, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":3,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":4,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":6,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":8,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":12,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"}]', '{\"dominant_style\":\"minimalist\",\"style_scores\":{\"minimalist\":10,\"classic\":1,\"edgy\":1,\"romantic\":0}}', '{\"style_type\":\"minimalist\",\"created_at\":\"2024-12-07 22:03:00\"}', '2024-12-07 22:03:00', 1, NULL, NULL, '2024-12-07 22:03:00'),
(5, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:03:33', 1, NULL, NULL, '2024-12-07 22:03:33'),
(6, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:04:25', 1, NULL, NULL, '2024-12-07 22:04:25'),
(7, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":33,\"romantic\":33,\"edgy\":25,\"minimalist\":8},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-07 22:07:02', 1, NULL, NULL, '2024-12-07 22:07:02'),
(8, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":4,\"romantic\":4,\"edgy\":3,\"minimalist\":1}}', '{\"style_type\":\"classic\",\"created_at\":\"2024-12-07 22:07:10\"}', '2024-12-07 22:07:10', 1, NULL, NULL, '2024-12-07 22:07:10'),
(9, 22, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"3\":{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"4\":{\"questionId\":7,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"6\":{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"7\":{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"8\":{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"11\":{\"questionId\":12,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":100,\"edgy\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-07 22:07:24', 1, NULL, NULL, '2024-12-07 22:07:24'),
(10, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":3,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":33,\"minimalist\":25,\"romantic\":25,\"classic\":17},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:10:38', 1, NULL, NULL, '2024-12-07 22:10:38'),
(11, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":9,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":10,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":3,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":4,\"minimalist\":3,\"romantic\":3,\"classic\":2}}', '{\"style_type\":\"edgy\",\"created_at\":\"2024-12-07 22:10:42\"}', '2024-12-07 22:10:42', 1, NULL, NULL, '2024-12-07 22:10:42'),
(12, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":33,\"romantic\":33,\"classic\":25,\"minimalist\":8},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:11:05', 1, NULL, NULL, '2024-12-07 22:11:05'),
(13, 22, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"3\":{\"questionId\":1,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"4\":{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"6\":{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"8\":{\"questionId\":4,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"11\":{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}}', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:12:29', 1, NULL, NULL, '2024-12-07 22:12:29'),
(14, 22, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"3\":{\"questionId\":1,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"4\":{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"6\":{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"8\":{\"questionId\":4,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"11\":{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}}', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:12:30', 1, NULL, NULL, '2024-12-07 22:12:30'),
(15, 22, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":1,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":3,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}]', '{\"dominant_style\":\"romantic\",\"style_scores\":{\"romantic\":42,\"classic\":33,\"edgy\":25,\"minimalist\":0},\"profile_description\":\"Your style embraces femininity and softness. You\'re drawn to beautiful details and enjoy expressing yourself through delicate, pretty pieces.\"}', '{\"general\":[\"Look for pieces with feminine details like ruffles and lace\",\"Embrace soft, flowing fabrics and silhouettes\",\"Choose a color palette with pastels and soft hues\",\"Accessorize with delicate jewelry and romantic details\",\"Mix textures and patterns for visual interest\"],\"wardrobe_essentials\":[\"Floral dresses\",\"Silk blouses\",\"A-line skirts\",\"Delicate cardigans\",\"Pretty flats\"],\"color_palette\":[\"Pink\",\"Light Blue\",\"Lavender\",\"Cream\",\"Soft Yellow\"],\"avoid\":[\"Harsh lines\",\"Overly structured pieces\",\"Heavy materials\",\"Aggressive styling\"]}', '2024-12-07 22:14:57', 1, NULL, NULL, '2024-12-07 22:14:57'),
(16, 22, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"4\":{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"7\":{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}}', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:17:09', 1, NULL, NULL, '2024-12-07 22:17:09'),
(17, 22, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"4\":{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"7\":{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}}', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":100,\"classic\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-07 22:17:10', 1, NULL, NULL, '2024-12-07 22:17:10'),
(18, 22, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":3,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":4,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":6,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"romantic\",\"style_scores\":{\"romantic\":42,\"classic\":33,\"edgy\":17,\"minimalist\":8},\"profile_description\":\"Your style embraces femininity and softness. You\'re drawn to beautiful details and enjoy expressing yourself through delicate, pretty pieces.\"}', '{\"general\":[\"Look for pieces with feminine details like ruffles and lace\",\"Embrace soft, flowing fabrics and silhouettes\",\"Choose a color palette with pastels and soft hues\",\"Accessorize with delicate jewelry and romantic details\",\"Mix textures and patterns for visual interest\"],\"wardrobe_essentials\":[\"Floral dresses\",\"Silk blouses\",\"A-line skirts\",\"Delicate cardigans\",\"Pretty flats\"],\"color_palette\":[\"Pink\",\"Light Blue\",\"Lavender\",\"Cream\",\"Soft Yellow\"],\"avoid\":[\"Harsh lines\",\"Overly structured pieces\",\"Heavy materials\",\"Aggressive styling\"]}', '2024-12-07 22:18:48', 1, NULL, NULL, '2024-12-07 22:18:48'),
(22, 32, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":1,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":33,\"romantic\":33,\"classic\":25,\"minimalist\":8},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-09 23:06:20', 1, NULL, NULL, '2024-12-09 23:06:20'),
(23, 32, '[{\"questionId\":2,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":1,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":7,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":4,\"romantic\":4,\"classic\":3,\"minimalist\":1}}', '{\"style_type\":\"edgy\",\"created_at\":\"2024-12-09 23:06:33\"}', '2024-12-09 23:06:33', 1, NULL, NULL, '2024-12-09 23:06:33'),
(24, 33, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":33,\"classic\":25,\"romantic\":25,\"minimalist\":17},\"profile_description\":\"You have a bold, adventurous style that pushes boundaries. You\'re not afraid to make a statement and express yourself through fashion.\"}', '{\"general\":[\"Experiment with unique textures like leather and metallic materials\",\"Mix unexpected combinations of pieces\",\"Incorporate statement accessories and bold jewelry\",\"Play with asymmetrical cuts and unusual silhouettes\",\"Don\'t shy away from bold colors and patterns\"],\"wardrobe_essentials\":[\"Leather jacket\",\"Statement boots\",\"Unique denim pieces\",\"Graphic t-shirts\",\"Statement accessories\"],\"color_palette\":[\"Black\",\"White\",\"Red\",\"Metallic\",\"Deep Purple\"],\"avoid\":[\"Overly preppy pieces\",\"Traditional office wear\",\"Plain basics without interest\",\"Conventional styling\"]}', '2024-12-10 13:31:00', 1, NULL, NULL, '2024-12-10 13:31:00'),
(25, 33, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":11,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":1,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":7,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"},{\"questionId\":3,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":4,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":8,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},{\"questionId\":12,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}]', '{\"dominant_style\":\"edgy\",\"style_scores\":{\"edgy\":4,\"classic\":3,\"romantic\":3,\"minimalist\":2}}', '{\"style_type\":\"edgy\",\"created_at\":\"2024-12-10 13:31:03\"}', '2024-12-10 13:31:03', 1, NULL, NULL, '2024-12-10 13:31:03'),
(31, 32, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":100,\"edgy\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-11 17:20:16', 1, NULL, NULL, '2024-12-11 17:20:16'),
(32, 32, '[{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":7,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":10,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":3,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":4,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":8,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},{\"questionId\":12,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}]', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":12,\"edgy\":0,\"minimalist\":0,\"romantic\":0}}', '{\"style_type\":\"classic\",\"created_at\":\"2024-12-11 17:20:23\"}', '2024-12-11 17:20:23', 1, NULL, NULL, '2024-12-11 17:20:23'),
(33, 40, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"3\":{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"7\":{\"questionId\":3,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":42,\"minimalist\":25,\"edgy\":17,\"romantic\":17},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-14 03:14:04', 1, NULL, NULL, '2024-12-14 03:14:04'),
(34, 40, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"2\":{\"questionId\":11,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"3\":{\"questionId\":1,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"edgy\",\"optionId\":\"b\"},\"7\":{\"questionId\":3,\"selectedStyle\":\"minimalist\",\"optionId\":\"c\"},\"10\":{\"questionId\":8,\"selectedStyle\":\"romantic\",\"optionId\":\"d\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":41.7,\"minimalist\":25,\"edgy\":16.7,\"romantic\":16.7},\"profile_description\":\"You prefer timeless, sophisticated pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basic pieces\",\"Focus on neutral colors\",\"Choose structured silhouettes\",\"Prioritize classic patterns\",\"Select traditional accessories\"],\"taken_at\":\"2024-12-14 03:14:09\"}', '2024-12-14 03:14:09', 1, NULL, NULL, '2024-12-14 03:14:09'),
(37, 47, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":100,\"edgy\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-16 18:46:10', 1, NULL, NULL, '2024-12-16 18:46:10'),
(38, 47, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":100,\"edgy\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You appreciate timeless elegance and sophisticated style. Your wardrobe consists of well-made basics and refined pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basics like blazers, white shirts, and tailored trousers\",\"Stick to a neutral color palette with navy, black, white, and beige\",\"Choose structured silhouettes and tailored pieces\",\"Accessorize with pearls, delicate jewelry, and classic watches\",\"Focus on quality over quantity in your wardrobe\"],\"wardrobe_essentials\":[\"Tailored blazer\",\"White button-down shirt\",\"Little black dress\",\"Well-fitted trousers\",\"Quality leather pumps\"],\"color_palette\":[\"Navy\",\"Black\",\"White\",\"Beige\",\"Gray\"],\"avoid\":[\"Overly trendy pieces\",\"Fast fashion items\",\"Excessive patterns\",\"Ultra-casual items\"]}', '2024-12-16 18:46:10', 1, NULL, NULL, '2024-12-16 18:46:10'),
(39, 47, '{\"0\":{\"questionId\":2,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"1\":{\"questionId\":5,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"5\":{\"questionId\":9,\"selectedStyle\":\"classic\",\"optionId\":\"a\"},\"9\":{\"questionId\":6,\"selectedStyle\":\"classic\",\"optionId\":\"a\"}}', '{\"dominant_style\":\"classic\",\"style_scores\":{\"classic\":100,\"edgy\":0,\"minimalist\":0,\"romantic\":0},\"profile_description\":\"You prefer timeless, sophisticated pieces that never go out of style.\"}', '{\"general\":[\"Invest in high-quality basic pieces\",\"Focus on neutral colors\",\"Choose structured silhouettes\",\"Prioritize classic patterns\",\"Select traditional accessories\"],\"taken_at\":\"2024-12-16 18:46:30\"}', '2024-12-16 18:46:30', 1, NULL, NULL, '2024-12-16 18:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `style_users`
--

CREATE TABLE `style_users` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('user','moderator','admin','super_admin') COLLATE utf8mb4_general_ci DEFAULT 'user',
  `status` enum('active','inactive','suspended') COLLATE utf8mb4_general_ci DEFAULT 'active',
  `avatar_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `style_users`
--

INSERT INTO `style_users` (`id`, `email`, `password_hash`, `full_name`, `role`, `status`, `avatar_url`, `last_login`, `created_at`, `updated_at`) VALUES
(22, 'phiwalukhele551@gmail.com', '$2y$10$p39DM0G3YwNMs/hiEIsl/Okq8jIJr3HDKNHovmf9rhx67sQZIkTtS', 'Phiwa Lukhele', 'user', 'active', NULL, '2024-12-16 18:11:39', '2024-12-05 21:56:26', '2024-12-17 00:31:42'),
(24, 'kelvin@gmail.com', '$2y$10$DWGzC6E6aYcC/QiDScOc8OcwK/CDbcaP21sHdP8QQRjheGpMTM1xe', 'Miracle Jake', 'user', 'active', NULL, NULL, '2024-12-06 01:13:04', '2024-12-06 01:13:04'),
(27, 'wel@gmail.com', '$2y$10$Bz7WSc35Mn9eSVt5.7FPSeyOzyLk2RObAcEgppD.CZblwcVVTl5.a', 'Welile Dlamini', 'user', 'active', NULL, NULL, '2024-12-08 09:59:22', '2024-12-16 18:00:16'),
(32, 'phiwayinkhosi.lukhele@ashesi.edu.gh', '$2y$10$l17mlev.8LSwwX5dKH2wnOtJX7eEQ4igkDl5PibtUNH4FVrOmF2WC', 'Precious Mhlanti', 'super_admin', 'active', NULL, '2024-12-16 18:50:36', '2024-12-09 21:48:14', '2024-12-16 18:50:36'),
(33, 'admin@stylesense.com', '$2y$10$9zvzBSZmb9Kh3MQmNKfHUutIeTkUtGEYBfw9Ktvk8ks3bWA4HB6iK', 'Lungelo Mhlanga', 'admin', 'active', NULL, '2024-12-10 13:27:58', '2024-12-09 21:48:14', '2024-12-10 13:27:58'),
(37, 'babina.abban@ashesi.edu.gh', '$2y$10$/z.JGOsgB4osQu6XRLA2HOzMgMhFRyLfuSGXD.ZdcQFxzbIxHaZOe', 'Babina Lowabola', 'user', 'inactive', NULL, NULL, '2024-12-11 11:40:46', '2024-12-11 16:57:48'),
(38, 'velma.ombiuuya@ashesi.edu.gh', '$2y$10$zWXbeu/vLm3BQrqz1sog9OwwnNniazhlLRUw6AjJiRoKqYgwVap0O', 'Shasi', 'user', 'inactive', NULL, NULL, '2024-12-11 16:44:23', '2024-12-11 16:44:23'),
(39, 'drake@gmail.com', '$2y$10$MZW/cxiOmUmtT5cZz1mu5.zvxls5acTFNI8Pd2yS.OM0myQC8Vegm', 'Louis Drake', 'user', 'active', NULL, '2024-12-12 16:43:28', '2024-12-12 16:43:06', '2024-12-12 16:43:28'),
(40, 'zone@gmail.com', '$2y$10$EcoNPoRzMUM.UUEtyMpMGuVzi4at4sJSAKDr8Dok7hyQFGSb0ndja', 'Sparks Zone', 'user', 'active', NULL, '2024-12-14 02:59:20', '2024-12-14 02:58:58', '2024-12-14 02:59:20'),
(41, 'miracle@gmail.com', '$2y$10$nMeeTk6qxCvCQBKjBzsFReTP1IpzzWw4BDveyQa1/JuRzwcXSzirS', 'Miracle L', 'user', 'active', NULL, '2024-12-14 16:43:56', '2024-12-14 16:43:42', '2024-12-14 16:43:56'),
(43, 'mhiracleebenezer@gmail.com', '$2y$10$oG4p43OnoW4mpZeVthOJkOJtiBkdajUfg0YQcK.WZFM801KB.sPIS', 'Ebenezer Miracle', 'user', 'active', NULL, '2024-12-15 10:09:17', '2024-12-15 10:09:02', '2024-12-15 13:52:05'),
(44, 'monic@gmail.com', '$2y$10$G8EKyfSSexB8hFYelINcv.YrwZt8Fl8oVqAjNoaXlKbWBm83dfJdi', 'Monica Pirisi', 'admin', 'inactive', NULL, NULL, '2024-12-15 13:37:46', '2024-12-15 13:37:46'),
(46, 'vhihgoj@gmail.com', '$2y$10$kuGAUBmncgvkvH8vViy18e/frva4Hd1MsWJYETEQbUJ6waDw2YKx2', 'Vuvu Luke', 'user', 'inactive', NULL, NULL, '2024-12-16 18:01:23', '2024-12-16 18:51:20'),
(47, 'wen@gmail.com', '$2y$10$nKhcfymB9PHW0kjvygVOyuOL0yMpg9jXQ..qp2Nilwbb.p1rv56FG', 'lu lo', 'user', 'active', NULL, '2024-12-16 18:40:18', '2024-12-16 18:40:04', '2024-12-16 18:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `style_user_preferences`
--

CREATE TABLE `style_user_preferences` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `style_preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `notifications_enabled` tinyint(1) DEFAULT '1',
  `personalization_enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `learning_weights` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ;

--
-- Dumping data for table `style_user_preferences`
--

INSERT INTO `style_user_preferences` (`id`, `user_id`, `style_preferences`, `notifications_enabled`, `personalization_enabled`, `created_at`, `updated_at`, `learning_weights`) VALUES
(1, 22, '[\"casual\"]', 1, 1, '2024-12-05 21:56:26', '2024-12-05 21:56:26', NULL),
(3, 24, '[\"minimalist\"]', 1, 1, '2024-12-06 01:13:04', '2024-12-06 01:13:04', NULL),
(6, 27, '[\"casual\"]', 1, 1, '2024-12-08 09:59:22', '2024-12-08 09:59:22', NULL),
(11, 32, '{\"style\":[\"admin\"]}', 1, 1, '2024-12-09 21:48:14', '2024-12-09 21:48:14', NULL),
(12, 33, '{\"style\":[\"admin\"]}', 1, 1, '2024-12-09 21:48:14', '2024-12-09 21:48:14', NULL),
(14, 39, '[\"casual\"]', 1, 1, '2024-12-12 16:43:06', '2024-12-12 16:43:06', NULL),
(15, 40, '[\"casual\"]', 1, 1, '2024-12-14 02:58:58', '2024-12-14 02:58:58', NULL),
(16, 41, '[\"bold\"]', 1, 1, '2024-12-14 16:43:42', '2024-12-14 16:43:42', NULL),
(18, 43, '[\"casual\"]', 1, 1, '2024-12-15 10:09:02', '2024-12-15 10:09:02', NULL),
(20, 47, '[\"casual\"]', 1, 1, '2024-12-16 18:40:04', '2024-12-16 18:40:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `style_user_profiles`
--

CREATE TABLE `style_user_profiles` (
  `user_id` int NOT NULL,
  `body_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `style_preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `color_palette` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `measurements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `birthday` date DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ;

--
-- Dumping data for table `style_user_profiles`
--

INSERT INTO `style_user_profiles` (`user_id`, `body_type`, `style_preferences`, `color_palette`, `measurements`, `birthday`, `phone_number`) VALUES
(22, 'Rectangle', NULL, NULL, '{\"shoulders\":\"30.00\",\"bust\":\"30.00\",\"waist\":\"30.00\",\"hips\":\"30.00\"}', NULL, NULL),
(24, 'Rectangle', NULL, NULL, '{\"shoulders\":\"34.00\",\"bust\":\"50.00\",\"waist\":\"30.00\",\"hips\":\"20.00\"}', NULL, NULL),
(32, 'Apple', NULL, NULL, '{\"shoulders\":\"55.00\",\"bust\":\"55.00\",\"waist\":\"44.00\",\"hips\":\"33.00\"}', NULL, NULL),
(33, 'Apple', NULL, NULL, '{\"shoulders\":\"55.00\",\"bust\":\"44.00\",\"waist\":\"33.00\",\"hips\":\"44.00\"}', NULL, NULL),
(39, 'Apple', NULL, NULL, '{\"shoulders\":\"30.00\",\"bust\":\"30.00\",\"waist\":\"34.00\",\"hips\":\"20.00\"}', NULL, NULL),
(40, 'Rectangle', NULL, NULL, '{\"shoulders\":\"20.00\",\"bust\":\"20.00\",\"waist\":\"20.00\",\"hips\":\"20.00\"}', NULL, NULL),
(43, 'Pear', NULL, NULL, '{\"shoulders\":\"20.50\",\"bust\":\"50.00\",\"waist\":\"20.00\",\"hips\":\"60.00\"}', NULL, NULL),
(47, 'Pear', NULL, NULL, '{\"shoulders\":\"30.00\",\"bust\":\"30.00\",\"waist\":\"20.00\",\"hips\":\"50.00\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `style_wardrobe_items`
--

CREATE TABLE `style_wardrobe_items` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('tops','bottoms','dresses','shoes','accessories','outerwear') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('casual','formal','business','party') COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `season` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purchase_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` enum('active','archived','donated') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Store additional item properties',
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Item tags for better categorization',
  `last_worn` timestamp NULL DEFAULT NULL COMMENT 'Track when item was last used',
  `times_worn` int DEFAULT '0' COMMENT 'Track how often item is used'
) ;

--
-- Dumping data for table `style_wardrobe_items`
--

INSERT INTO `style_wardrobe_items` (`id`, `user_id`, `name`, `category`, `type`, `color`, `image_url`, `brand`, `size`, `season`, `description`, `purchase_date`, `price`, `status`, `created_at`, `updated_at`, `metadata`, `tags`, `last_worn`, `times_worn`) VALUES
(54, 22, 'Ankle Strap Heels', 'shoes', 'formal', '#000000', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Store Purchase', NULL, NULL, 'Elegant ankle strap heels', NULL, NULL, 'active', '2024-12-08 11:15:18', '2024-12-08 11:15:18', NULL, NULL, NULL, 0),
(55, 22, 'Bermuda Shorts', 'bottoms', 'casual', '#000080', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Store Purchase', NULL, NULL, 'Classic bermuda shorts', NULL, NULL, 'active', '2024-12-08 11:15:18', '2024-12-08 11:15:18', NULL, NULL, NULL, 0),
(56, 22, 'Ankle Boots', 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Store Purchase', NULL, NULL, 'Stylish ankle boots', NULL, NULL, 'active', '2024-12-08 11:15:18', '2024-12-08 11:15:18', NULL, NULL, NULL, 0),
(57, 22, 'Aviator Sunglasses', 'accessories', 'casual', '#C0C0C0', 'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg', 'Store Purchase', NULL, NULL, 'Classic aviator sunglasses', NULL, NULL, 'active', '2024-12-08 11:15:18', '2024-12-08 11:15:18', NULL, NULL, NULL, 0),
(59, 22, 'Bucket Bag', 'accessories', 'casual', '#A0522D', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bucket bag', NULL, NULL, 'active', '2024-12-08 19:21:15', '2024-12-08 19:21:15', NULL, NULL, NULL, 0),
(60, 22, 'Floral Blouse', 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Store Purchase', NULL, NULL, 'Pretty floral print blouse', NULL, NULL, 'active', '2024-12-08 19:21:15', '2024-12-08 19:21:15', NULL, NULL, NULL, 0),
(61, 22, 'Gladiator Sandals', 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Store Purchase', NULL, NULL, 'Stylish gladiator sandals', NULL, NULL, 'active', '2024-12-08 19:21:15', '2024-12-08 19:21:15', NULL, NULL, NULL, 0),
(63, 22, 'Formal Watch', 'accessories', 'formal', '#C0C0C0', 'https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg', 'Store Purchase', NULL, NULL, 'Elegant formal watch', NULL, NULL, 'active', '2024-12-08 19:21:15', '2024-12-08 19:21:15', NULL, NULL, NULL, 0),
(64, 22, 'Cocktail Dress', 'dresses', 'party', '#FF0000', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Store Purchase', NULL, NULL, 'Stunning cocktail dress', NULL, NULL, 'active', '2024-12-09 01:08:03', '2024-12-09 01:08:03', NULL, NULL, NULL, 0),
(65, 22, 'Cardigan', 'tops', 'casual', '#A0522D', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Store Purchase', NULL, NULL, 'Comfortable cardigan sweater', NULL, NULL, 'active', '2024-12-09 01:10:11', '2024-12-09 01:10:11', NULL, NULL, NULL, 0),
(67, 32, 'Ankle Bracelet', 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Store Purchase', NULL, NULL, 'Delicate ankle bracelet', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(68, 32, 'Bike Shorts', 'bottoms', 'casual', '#000000', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bike shorts', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(69, 32, 'Bomber Jacket', 'outerwear', 'casual', '#000080', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bomber jacket', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(70, 32, 'Bucket Bag', 'accessories', 'casual', '#A0522D', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bucket bag', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(71, 32, 'Wrap Top', 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Store Purchase', NULL, NULL, 'Flattering wrap top', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(72, 32, 'Wrap Dress', 'dresses', 'business', '#800080', 'https://images.pexels.com/photos/1755428/pexels-photo-1755428.jpeg', 'Store Purchase', NULL, NULL, 'Flattering wrap dress', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(73, 32, 'Slouch Boots', 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Store Purchase', NULL, NULL, 'Comfortable slouch boots', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(74, 32, 'Summer Sandals', 'shoes', 'casual', '#F5DEB3', 'https://images.pexels.com/photos/1447367/pexels-photo-1447367.jpeg', 'Store Purchase', NULL, NULL, 'Comfortable summer sandals', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(75, 32, 'Statement Earrings', 'accessories', 'party', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Store Purchase', NULL, NULL, 'Bold statement earrings', NULL, NULL, 'active', '2024-12-09 23:03:14', '2024-12-09 23:03:14', NULL, NULL, NULL, 0),
(76, 32, 'Jumpsuit', 'tops', 'party', '#e51f93', 'https://i.pinimg.com/originals/bd/a9/2f/bda92ff1b025395051260782a5e2401b.jpg', 'Store Purchase', NULL, NULL, 'ghsychufsy', NULL, NULL, 'active', '2024-12-10 12:39:36', '2024-12-10 12:39:36', NULL, NULL, NULL, 0),
(77, 33, 'Ankle Bracelet', 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Store Purchase', NULL, NULL, 'Delicate ankle bracelet', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(78, 33, 'Ankle Boots', 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Store Purchase', NULL, NULL, 'Stylish ankle boots', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(79, 33, 'Ankle Strap Heels', 'shoes', 'formal', '#000000', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Store Purchase', NULL, NULL, 'Elegant ankle strap heels', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(80, 33, 'Aviator Sunglasses', 'accessories', 'casual', '#C0C0C0', 'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg', 'Store Purchase', NULL, NULL, 'Classic aviator sunglasses', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(81, 33, 'Boyfriend Jeans', 'bottoms', 'casual', '#4169E1', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Store Purchase', NULL, NULL, 'Relaxed boyfriend jeans', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(82, 33, 'Bomber Jacket', 'outerwear', 'casual', '#000080', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bomber jacket', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(83, 33, 'Wrap Top', 'tops', 'casual', '#FF69B4', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Store Purchase', NULL, NULL, 'Flattering wrap top', NULL, NULL, 'active', '2024-12-10 13:30:01', '2024-12-10 13:30:01', NULL, NULL, NULL, 0),
(88, 22, 'Pencil Skirt', 'bottoms', 'business', '#000000', 'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg', 'Store Purchase', NULL, NULL, 'Classic pencil skirt', NULL, NULL, 'active', '2024-12-12 00:52:04', '2024-12-12 00:52:04', NULL, NULL, NULL, 0),
(89, 22, 'Graphic T-Shirt', 'tops', 'casual', '#FFFFFF', 'https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg', 'Store Purchase', NULL, NULL, 'Cool graphic t-shirt', NULL, NULL, 'active', '2024-12-12 00:52:04', '2024-12-12 00:52:04', NULL, NULL, NULL, 0),
(90, 22, 'Peplum Top', 'tops', 'business', '#0f0f0f', 'https://tse1.mm.bing.net/th?id=OIP.YWOKs9oibQHt2pC6LlaxQgHaLz&pid=Api&P=0&h=220', 'Store Purchase', NULL, NULL, 'Flattering peplum top', NULL, NULL, 'active', '2024-12-12 00:52:04', '2024-12-12 00:52:04', NULL, NULL, NULL, 0),
(91, 22, 'Puffer Jacket', 'outerwear', 'casual', '#000000', 'https://images.pexels.com/photos/2887766/pexels-photo-2887766.jpeg', 'Store Purchase', NULL, NULL, 'Warm puffer jacket', NULL, NULL, 'active', '2024-12-12 01:04:23', '2024-12-12 01:04:23', NULL, NULL, NULL, 0),
(92, 40, 'Ankle Bracelet', 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Store Purchase', NULL, NULL, 'Delicate ankle bracelet', NULL, NULL, 'active', '2024-12-14 03:10:53', '2024-12-14 03:10:53', NULL, NULL, NULL, 0),
(93, 40, 'Ankle Strap Heels', 'shoes', 'formal', '#000000', 'https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg', 'Store Purchase', NULL, NULL, 'Elegant ankle strap heels', NULL, NULL, 'active', '2024-12-14 03:10:53', '2024-12-14 03:10:53', NULL, NULL, NULL, 0),
(95, 40, 'Cardigan', 'tops', 'casual', '#A0522D', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Store Purchase', NULL, NULL, 'Comfortable cardigan sweater', NULL, NULL, 'active', '2024-12-14 03:11:22', '2024-12-14 03:11:22', NULL, NULL, NULL, 0),
(96, 40, 'cargo pants', 'bottoms', 'casual', '#4c4343', 'https://lewkin.com/cdn/shop/files/002_Dark_20green_ed25df5d-7a77-4118-ba14-c717e8b3cf93.jpg?pad_color=fff&v=1730166922&width=940', 'Store Purchase', NULL, NULL, 'fgvhbhj', NULL, NULL, 'active', '2024-12-14 03:11:58', '2024-12-14 03:11:58', NULL, NULL, NULL, 0),
(103, 47, 'Bodysuit', 'tops', 'party', '#000000', 'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg', 'Store Purchase', NULL, NULL, 'Sleek bodysuit', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(104, 47, 'Cardigan', 'tops', 'casual', '#A0522D', 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg', 'Store Purchase', NULL, NULL, 'Comfortable cardigan sweater', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(105, 47, 'bjkl', 'tops', 'business', '#5e2b2b', 'https://tse3.mm.bing.net/th?id=OIP.tmFRjJIMSYWvZFyspJlZxAHaJ4&pid=Api&P=0&h=220', 'Store Purchase', NULL, NULL, 'fgvhibjkl', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(106, 47, 'Graphic T-Shirt', 'tops', 'casual', '#FFFFFF', 'https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg', 'Store Purchase', NULL, NULL, 'Cool graphic t-shirt', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(107, 47, 'Ankle Boots', 'shoes', 'casual', '#8B4513', 'https://images.pexels.com/photos/1446521/pexels-photo-1446521.jpeg', 'Store Purchase', NULL, NULL, 'Stylish ankle boots', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(108, 47, 'Ankle Bracelet', 'accessories', 'casual', '#FFD700', 'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg', 'Store Purchase', NULL, NULL, 'Delicate ankle bracelet', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(109, 47, 'Boyfriend Jeans', 'bottoms', 'casual', '#4169E1', 'https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg', 'Store Purchase', NULL, NULL, 'Relaxed boyfriend jeans', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(110, 47, 'Bucket Bag', 'accessories', 'casual', '#A0522D', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bucket bag', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0),
(111, 47, 'Bomber Jacket', 'outerwear', 'casual', '#000080', 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg', 'Store Purchase', NULL, NULL, 'Trendy bomber jacket', NULL, NULL, 'active', '2024-12-16 18:44:11', '2024-12-16 18:44:11', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(42, 39, 23, 1, '2024-12-12 16:45:33'),
(43, 39, 90, 2, '2024-12-12 16:45:38'),
(44, 39, 43, 4, '2024-12-12 16:45:40'),
(45, 39, 49, 8, '2024-12-12 16:45:56'),
(46, 39, 85, 8, '2024-12-12 16:45:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_measurements`
--
ALTER TABLE `body_measurements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `style_activity_log`
--
ALTER TABLE `style_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activity_user` (`user_id`,`activity_type`),
  ADD KEY `idx_activity_type_date` (`activity_type`,`created_at`);

--
-- Indexes for table `style_color_palettes`
--
ALTER TABLE `style_color_palettes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_palettes` (`user_id`,`created_at`);

--
-- Indexes for table `style_community_comments`
--
ALTER TABLE `style_community_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `style_community_likes`
--
ALTER TABLE `style_community_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_like` (`post_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `style_community_posts`
--
ALTER TABLE `style_community_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `style_outfits`
--
ALTER TABLE `style_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outfits_user` (`user_id`),
  ADD KEY `idx_outfits_category` (`category`),
  ADD KEY `idx_outfits_season` (`season`);

--
-- Indexes for table `style_outfit_items`
--
ALTER TABLE `style_outfit_items`
  ADD PRIMARY KEY (`outfit_id`,`item_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `idx_outfit_items_position` (`outfit_id`,`position`);

--
-- Indexes for table `style_quiz_questions`
--
ALTER TABLE `style_quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `style_quiz_results`
--
ALTER TABLE `style_quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `style_users`
--
ALTER TABLE `style_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_email` (`email`);

--
-- Indexes for table `style_user_preferences`
--
ALTER TABLE `style_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `style_user_profiles`
--
ALTER TABLE `style_user_profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `style_wardrobe_items`
--
ALTER TABLE `style_wardrobe_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_wardrobe_category` (`category`,`type`),
  ADD KEY `idx_wardrobe_status` (`status`),
  ADD KEY `idx_wardrobe_season` (`season`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_measurements`
--
ALTER TABLE `body_measurements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `style_activity_log`
--
ALTER TABLE `style_activity_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_color_palettes`
--
ALTER TABLE `style_color_palettes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_community_comments`
--
ALTER TABLE `style_community_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `style_community_likes`
--
ALTER TABLE `style_community_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `style_community_posts`
--
ALTER TABLE `style_community_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `style_outfits`
--
ALTER TABLE `style_outfits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_quiz_questions`
--
ALTER TABLE `style_quiz_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_quiz_results`
--
ALTER TABLE `style_quiz_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_users`
--
ALTER TABLE `style_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `style_user_preferences`
--
ALTER TABLE `style_user_preferences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_wardrobe_items`
--
ALTER TABLE `style_wardrobe_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `body_measurements`
--
ALTER TABLE `body_measurements`
  ADD CONSTRAINT `body_measurements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_activity_log`
--
ALTER TABLE `style_activity_log`
  ADD CONSTRAINT `style_activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `style_color_palettes`
--
ALTER TABLE `style_color_palettes`
  ADD CONSTRAINT `style_color_palettes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_community_comments`
--
ALTER TABLE `style_community_comments`
  ADD CONSTRAINT `style_community_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `style_community_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `style_community_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_community_likes`
--
ALTER TABLE `style_community_likes`
  ADD CONSTRAINT `style_community_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `style_community_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `style_community_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_community_posts`
--
ALTER TABLE `style_community_posts`
  ADD CONSTRAINT `style_community_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_outfits`
--
ALTER TABLE `style_outfits`
  ADD CONSTRAINT `style_outfits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_outfit_items`
--
ALTER TABLE `style_outfit_items`
  ADD CONSTRAINT `style_outfit_items_ibfk_1` FOREIGN KEY (`outfit_id`) REFERENCES `style_outfits` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `style_outfit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `style_wardrobe_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_quiz_results`
--
ALTER TABLE `style_quiz_results`
  ADD CONSTRAINT `style_quiz_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_user_preferences`
--
ALTER TABLE `style_user_preferences`
  ADD CONSTRAINT `style_user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_user_profiles`
--
ALTER TABLE `style_user_profiles`
  ADD CONSTRAINT `style_user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_wardrobe_items`
--
ALTER TABLE `style_wardrobe_items`
  ADD CONSTRAINT `wardrobe_user_fk` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `cart_product_fk` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_user_fk` FOREIGN KEY (`user_id`) REFERENCES `style_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
