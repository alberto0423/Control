-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-09-2020 a las 04:19:25
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `post`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `social_media`) VALUES
(1, 'Jorge alberto Lucio', 'alberto@fake.com', NULL, '$2y$10$f1dYnfAz9w4kQx3EMkQH0eSuKT1.9touJie8I1w0U6fZUD8/Ee956', NULL, '2020-09-16 14:35:30', '2020-09-17 03:01:09', '5523555215', 'Springfild', NULL),
(3, 'Jose Arturo Perez', 'antonio@mailinator.com', NULL, '12345', NULL, '2020-09-16 23:13:55', '2020-09-17 01:14:11', '555555555', 'plazas', 'hi5.com'),
(5, 'Prof. Deanna Schultz', 'lonzo03@example.com', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iezybTVDvh', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+1 (651) 280-8259', '7277 Napoleon Parks Apt. 784\nEast Lizzie, NM 96204', 'runte.biz'),
(6, 'Alejandrin Lehner', 'powlowski.hollie@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UsJafHffIG', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+15906948122', '309 Hyatt Drives Suite 728\nPort Leonardofurt, MN 11129', 'schmeler.com'),
(7, 'Tierra Marvin', 'bailey.gislason@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zqj9SPckYB', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '285.321.3286 x15316', '5330 Mante Knoll Suite 996\nEast Vaughnshire, ME 63439-7971', 'padberg.com'),
(8, 'Jensen Daugherty', 'jamaal55@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E1uBiptmJP', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+17204360675', '8273 Schultz Island Apt. 361\nWest Brandtmouth, MI 48780', 'ledner.com'),
(9, 'Prof. Ricardo Powlowski Sr.', 'zwilderman@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0CTW0uL011', '2020-09-16 23:55:51', '2020-09-17 02:45:59', '(997) 464-6271 x243', '519 Afton Plaza Suite 532Imeldaside, HI 53483-1578', 'sanford.info'),
(10, 'Jerad Graham', 'mertz.isaac@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fhuCXNn4CF', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-696-307-0909 x9034', '6539 Derrick Forks\nNew Titus, KY 94045', 'rolfson.org'),
(11, 'Scot Hayes', 'bailey.lang@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MUohstPsJ9', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '595-676-4192 x38163', '7488 Gorczany Circle Apt. 071\nClaudhaven, TX 10993-3323', 'mertz.com'),
(12, 'Mr. Kieran West', 'danika.lakin@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZOz9ycz71T', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-268-322-5092 x6169', '937 Zelda Pike\nWest Ella, OR 24652-2522', 'rempel.org'),
(13, 'Meta Stiedemann V', 'thiel.kayden@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L3IDasQZtd', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '864-463-7005', '49833 Greenfelder Ford\nAbbottbury, IL 88711-8684', 'oconnell.com'),
(14, 'Prof. Verla Hill DDS', 'alize46@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Avb5r2E7pf', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(881) 941-8463 x705', '271 Ashly Vista\nPort Creolahaven, MA 68622', 'beahan.info'),
(15, 'Michelle Cronin', 'cecilia00@example.com', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SRZOx0pGII', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(421) 809-0894', '5101 Vinnie Views Apt. 691\nEast Cordeliaside, NY 90698', 'bahringer.biz'),
(16, 'Eve Miller', 'klynch@example.com', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uD7ViFvDT5', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '912-790-0311 x1550', '52734 Hilma Gardens Apt. 975\nEvelinemouth, PA 87106-6296', 'brekke.org'),
(17, 'Lou Gleichner', 'cristian.lakin@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U6Q94GyyfZ', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+1-284-302-6058', '70232 Webster Corners\nBrettchester, WA 89489', 'littel.info'),
(18, 'Juwan Mraz V', 'alice.hagenes@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sx10o6MTad', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(767) 299-7670 x8540', '333 Labadie Overpass Apt. 047\nDickinsonstad, MA 10726-4952', 'stark.com'),
(19, 'Prof. Bernadette Koepp MD', 'koch.armani@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ygkFWN3Ql8', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '446-540-5384 x727', '87773 Ernestina Meadow\nRodriguezport, NH 60316-0288', 'oconner.biz'),
(20, 'Austen Conroy I', 'mertz.ima@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ckNQ5mINv8', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-423-739-4808 x04187', '13933 Mireille Mews Suite 632\nLilafort, OH 29518', 'kuphal.com'),
(21, 'Dr. Alexandre Nitzsche', 'lucy.kuhn@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EGSN9qO00y', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-298-684-0520', '641 Noe Hollow\nNorth Kristy, WY 54629', 'torphy.net'),
(22, 'Mr. Llewellyn Schulist I', 'hbatz@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eMgcsPLWX6', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(721) 904-3222', '41349 Elton Haven\nNorth Shannychester, MA 80328-4437', 'jakubowski.com'),
(23, 'Roma Huel', 'yhintz@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ck6ThRiJ6q', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-631-647-9853 x2880', '102 Lenora Forest\nBrendonmouth, WA 45437', 'witting.info'),
(24, 'Liana Veum', 'johnathan.mills@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a68cCUGYBy', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '959-254-5997 x974', '741 Hammes Course\nNew Oleshire, VA 42729-7199', 'morissette.org'),
(25, 'Lucious Ziemann', 'luther52@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YlfWCoH4K8', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+1-209-267-5808', '36313 Carroll Ridges\nLake Imeldaview, MN 29868', 'towne.com'),
(26, 'Elise Hilpert III', 'predovic.vern@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9hHjYZ6Y1l', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(212) 393-8407', '821 Harris Roads Apt. 554\nHayeschester, DE 58645', 'sipes.com'),
(27, 'Mrs. Alene Koch DVM', 'constantin.feil@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H8PQp5wSnN', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(628) 732-8798 x186', '856 Trystan Causeway Suite 341\nNorth Ariane, MD 12334-9312', 'ritchie.org'),
(28, 'Mathew Murray', 'loyce14@example.com', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rl7mTRzvSC', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '(779) 574-0112', '89427 Hayes Shore Suite 801\nLabadiestad, AR 35208', 'quitzon.com'),
(29, 'Dr. Maria Schinner', 'randy.metz@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YIImm69lM6', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '279-291-0042', '78564 Will Inlet\nBlandaton, CO 92441', 'johnson.com'),
(30, 'Nicolas DuBuque', 'kellie06@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CgmFbhocK9', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '898.488.8780 x0750', '263 Gilbert Parkways\nPort Trystanbury, AL 16343-8182', 'mckenzie.biz'),
(31, 'Buford Kessler', 'lehner.otis@example.com', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D1echO6b2u', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '+1.773.655.0053', '85612 Jamir Points Apt. 001\nHesselmouth, IA 24431-2553', 'herman.info'),
(32, 'Hipolito Dooley', 'sasha65@example.net', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm9G34jFxqE', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '1-591-628-8241', '59614 Jillian Ville\nWest Chloeberg, IL 83218', 'zulauf.com'),
(33, 'Dorcas Flatley MD', 'ndickens@example.org', '2020-09-16 23:55:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ly6Evtd4Ow', '2020-09-16 23:55:51', '2020-09-16 23:55:51', '783.968.6614', '46174 Elvie Hills\nSouth Kingfort, VT 97670-1563', 'cummings.com'),
(53, 'Jorge alberto', 'lucio_crack@fake.com', NULL, '$2y$10$Fcv2TleehfStX1BzsrTzi.LMpv5t3yTh8LOCyf8DFN8HjY1dGfWPu', NULL, '2020-09-17 01:50:26', '2020-09-17 01:51:53', '5523555215', 'plazas', 'facebok.com'),
(54, 'Jose Arturo Perez', 'albertosantes21@hotmail.com', NULL, '$2y$10$VecCpsn3yEqZDtPj49wg8e6RQ6K3qrCNq0ZD.WUIuVTB7G./u6GTi', NULL, '2020-09-17 03:35:27', '2020-09-17 03:35:27', NULL, NULL, NULL),
(55, 'Jose Arturo', 'albertosantes24@hotmail.com', NULL, '$2y$10$eqD0nPDARIBL6FCM4oLOBu4nVbHxUaa6UGPCfbLV/FVZCbrAUtyba', NULL, '2020-09-17 03:38:45', '2020-09-17 03:38:45', NULL, NULL, NULL),
(56, 'Adminsitador', 'admin@fake.com', NULL, '$2y$10$QAsO.2ekOmclVVwehlOiwu0oghwYQszHZ7U/dxtUWtEghm6VhMNne', NULL, '2020-09-17 03:59:59', '2020-09-17 03:59:59', NULL, NULL, NULL),
(57, 'Admin', 'admin1@fake.com', NULL, '$2y$10$tbnzpbxKq3VpI5tJjQ24UOtvIEGVuh1ZNGi.vezJpf1uWmvVNs.Fe', NULL, '2020-09-17 04:02:33', '2020-09-17 04:02:33', NULL, NULL, NULL),
(58, 'Jose fer', 'albertofake1@gmail.com', NULL, '$2y$10$d6enPImbk7AmjXSUbOZwZ.cEIEPoD9Rh/BJgVlBEPWzVu7I4NKeX.', NULL, '2020-09-17 04:03:32', '2020-09-17 04:03:51', '5523555215', 'plazas', 'hi5.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
